/**
 * WMI driver for Clevo B7130.
 */

#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/acpi.h>
#include <linux/suspend.h> /* for pm notifier */
#include <linux/input.h>
#include <linux/leds.h>
/* TODO: remove workqueue when it gets implemented in leds API
 * http://lkml.org/lkml/2012/9/14/101 */
#include <linux/workqueue.h>

#define CLEVO_WMI_VERSION "0.1"

MODULE_AUTHOR("Peter Wu <lekensteyn@gmail.com>");
MODULE_DESCRIPTION("WMI driver for Clevo B7130.");
MODULE_LICENSE("GPL");
MODULE_VERSION(CLEVO_WMI_VERSION);

/* this ID seems to be used in example documents, not just Clevo ACPI */
/* GUID for method BB */
#define CLEVO_WMI_WMBB_GUID	"ABBC0F6D-8EA1-11D1-00A0-C90629100000"
/* GUID for event D0 */
#define CLEVO_WMI_EVD0_GUID	"ABBC0F6B-8EA1-11D1-00A0-C90629100000"

#define CLEVO_WMI_FUNC_GET_EVENT		0x01
#define CLEVO_WMI_FUNC_ENABLE_NOTIFICATIONS	0x46
#define CLEVO_WMI_FUNC_SET_LED			0x56

//MODULE_ALIAS("wmi:" CLEVO_WMI_GUID);

#define CLEVO_WMI_KEY_VGA KEY_PROG1

static int vga_hotkey_action = 1;
module_param(vga_hotkey_action, int, 0644);
MODULE_PARM_DESC(vga_hotkey_action, "Actions for VGA Hotkey (bitwise "
	"combination, bit 0: toggle LED, bit 1: send key event)");


enum {
	CLEVO_VGA_LED_ORANGE,
	CLEVO_VGA_LED_GREEN,
};

struct clevo_wmi {
	struct input_dev *input_dev;
	struct led_classdev led_dev;
	struct work_struct led_work;
	int new_brightness;
	/* used for enabling WMI again on resume from suspend */
	struct notifier_block pm_notifier;
};

static struct clevo_wmi clevo_priv;

/**
 * call_wmbb - Calls the WMBB method.
 * @func: Function number in WMBB.
 * @args: arguments to be passed to WMBB
 * &result: if the WMBB call succeeds, the return value will be stored here.
 *
 * Returns 0 on success and non-zero on failure.
 */
static int call_wmbb(int func, u8 args, u32 *result) {
	struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, NULL };
	struct acpi_buffer input = { sizeof(args), &args };
	union acpi_object *obj;
	acpi_status status;
	int ret = 0;

	status = wmi_evaluate_method(CLEVO_WMI_WMBB_GUID,
		0 /* ignored by WMBB method */, func, &input, &output);
	if (ACPI_FAILURE(status)) {
		pr_warn("Failed to execute function %#02x: %s\n", func,
			acpi_format_exception(status));
		return -1;
	}
	obj = (union acpi_object *)output.pointer;
	if (obj->type == ACPI_TYPE_INTEGER) {
		u32 val = obj->integer.value;
		if (val == 0xFFFFFFFF) {
			pr_warn("Invalid function: %#02x\n", func);
			ret = -1;
		}
		if (result)
			*result = val;
	} else {
		pr_warn("Unexpected output type: %i\n", obj->type);
		ret = -1;
	}
	kfree(output.pointer);
	return ret;
}

/* send and release a key */
static void clevo_wmi_send_key(unsigned int code) {
	input_report_key(clevo_priv.input_dev, code, 1);
	input_sync(clevo_priv.input_dev);
	input_report_key(clevo_priv.input_dev, code, 0);
	input_sync(clevo_priv.input_dev);
}

static void clevo_vga_led_set(struct led_classdev *led_cdev,
				enum led_brightness brightness);

static void clevo_wmi_notify(u32 value, void *context) {
	u32 event = 0;
	if (call_wmbb(CLEVO_WMI_FUNC_GET_EVENT,
		0 /* args are ignored */, &event)) {
		pr_warn("Could not get WMI event number.\n");
		return;
	}
	pr_debug("Event number: %#02x\n", event);
	switch (event) {
	case 0xA3: /* on VGA hotkey press */
		if (vga_hotkey_action & 1)
			clevo_wmi_send_key(CLEVO_WMI_KEY_VGA);
		if (vga_hotkey_action & 2)
			clevo_vga_led_set(&clevo_priv.led_dev,
				!clevo_priv.new_brightness);
		break;
	}
}

/**
 * Make the firmware generate WMI events.
 */
static int clevo_wmi_enable(void) {
	u32 result = 0;
	if (call_wmbb(CLEVO_WMI_FUNC_ENABLE_NOTIFICATIONS,
		0 /* args are ignored */, &result)) {
		pr_err("Unable to enable WMI notifications\n");
		return -ENODEV;
	}
	pr_debug("Enabling WMI notifications yields: %#04x\n", result);
	return 0;
}

static int clevo_wmi_pm_handler(struct notifier_block *nbp,
	unsigned long event_type, void *p) {
	switch (event_type) {
	case PM_POST_HIBERNATION:
	case PM_POST_SUSPEND:
	case PM_POST_RESTORE:
		clevo_wmi_enable();
		break;
	}
	return 0;
}

static void clevo_vga_led_set(struct led_classdev *led_cdev,
				enum led_brightness brightness) {
	clevo_priv.new_brightness = brightness;

	/* put on global workqueue if not already */
	schedule_work(&clevo_priv.led_work);
}

static void clevo_vga_led_work(struct work_struct *work) {
	u8 args = 0;

	if (clevo_priv.new_brightness == CLEVO_VGA_LED_GREEN)
		args |= 1;
	/* If bit 7 in OEMF is disabled: if ARGS & 2, EC.DLED=1, else
	 * EC.DLED=0.  if ARGS & 4, EC.MUTE=1, else EC.MUTE=0.
	 * Translated: I guess that if there is a special LED on the machine
	 * for showing the discrete video card state (field OEMF of embedded
	 * controller has bit 7 unset), then the DLED field of the EC will be
	 * set to 0 or 1 depending on args & 4. As for the mute field, I do not
	 * know what that is used for. Maybe HDMI audio? */

	call_wmbb(CLEVO_WMI_FUNC_SET_LED, args, NULL);
}

static int __init clevo_vga_led_init(void) {
	int error;
	struct led_classdev *ldev = &clevo_priv.led_dev;

	/* deliberately leave color empty, the light can ONLY be orange OR
	 * green, not both! */
	ldev->name		= "clevo::vga";

	ldev->max_brightness	= 1;
	ldev->brightness_set	= clevo_vga_led_set;
	ldev->flags		= LED_CORE_SUSPENDRESUME;

	INIT_WORK(&clevo_priv.led_work, clevo_vga_led_work);

	error = led_classdev_register(NULL, ldev);
	if (error)
		return error;

	/* make sure that we have a correct initial brightness field */
	clevo_vga_led_set(ldev, ldev->brightness);

	return 0;
}

static int __init clevo_wmi_input_setup(void) {
	int error;
	struct input_dev *input_dev = input_allocate_device();
	if (!input_dev) {
		pr_err("Not enough memory for input device.\n");
		return -ENOMEM;
	}

	input_dev->name = "Clevo WMI hotkeys";
	set_bit(EV_KEY, input_dev->evbit);
	set_bit(CLEVO_WMI_KEY_VGA, input_dev->keybit);

	error = input_register_device(input_dev);
	if (error) {
		pr_err("Failed to register input device.\n");
		input_free_device(input_dev);
		return error;
	}
	clevo_priv.input_dev = input_dev;
	return 0;
}

static int __init clevo_wmi_init(void) {
	int ret, error;
	if (!wmi_has_guid(CLEVO_WMI_WMBB_GUID)) {
		pr_err("Clevo WMI GUID not found\n");
		return -ENODEV;
	}

	error = clevo_wmi_input_setup();
	if (error)
		return error;

	if ((error = clevo_wmi_enable()))
		goto err_unregister_input_dev;

	ret = wmi_install_notify_handler(CLEVO_WMI_EVD0_GUID, clevo_wmi_notify,
		NULL);
	if (ACPI_FAILURE(ret)) {
		pr_err("Could not register WMI notifier for Clevo: %s.\n",
			acpi_format_exception(ret));
		error = -EINVAL;
		goto err_unregister_input_dev;
	}

	error = clevo_vga_led_init();
	if (error)
		goto err_remove_wmi_notifier;

	clevo_priv.pm_notifier.notifier_call = &clevo_wmi_pm_handler;
	error = register_pm_notifier(&clevo_priv.pm_notifier);
	if (error)
		goto err_remove_wmi_notifier;

	pr_info("Clevo WMI driver loaded.\n");
	return 0;

err_remove_wmi_notifier:
	wmi_remove_notify_handler(CLEVO_WMI_EVD0_GUID);
err_unregister_input_dev:
	input_unregister_device(clevo_priv.input_dev);
	return error;
}

static void __exit clevo_wmi_exit(void) {
	unregister_pm_notifier(&clevo_priv.pm_notifier);

	/* remove from global workqueue */
	led_classdev_unregister(&clevo_priv.led_dev);
	cancel_work_sync(&clevo_priv.led_work);

	wmi_remove_notify_handler(CLEVO_WMI_EVD0_GUID);
	input_unregister_device(clevo_priv.input_dev);
	pr_info("Clevo WMI driver unloaded.\n");
}

module_init(clevo_wmi_init);
module_exit(clevo_wmi_exit);
