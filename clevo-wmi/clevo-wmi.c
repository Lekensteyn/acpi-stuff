/**
 * WMI driver for Clevo B7130.
 */

#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/acpi.h>
#include <linux/suspend.h> /* for pm notifier */

MODULE_AUTHOR("Peter Wu");
MODULE_DESCRIPTION("WMI driver for Clevo B7130.");
MODULE_LICENSE("GPL");

/* this ID seems to be used in example documents, not just Clevo ACPI */
/* GUID for method BB */
#define CLEVO_WMI_WMBB_GUID	"ABBC0F6D-8EA1-11D1-00A0-C90629100000"
/* GUID for event D0 */
#define CLEVO_WMI_EVD0_GUID	"ABBC0F6B-8EA1-11D1-00A0-C90629100000"

#define CLEVO_WMI_FUNC_GET_EVENT		0x01
#define CLEVO_WMI_FUNC_ENABLE_NOTIFICATIONS	0x46

//MODULE_ALIAS("wmi:" CLEVO_WMI_GUID);

/* used for enabling WMI again on resume from suspend */
static struct notifier_block nb;

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

static void clevo_wmi_notify(u32 value, void *context) {
	u32 event = 0;
	if (call_wmbb(CLEVO_WMI_FUNC_GET_EVENT,
		0 /* args are ignored */, &event)) {
		pr_warn("Could not get WMI event number.\n");
		return;
	}
	pr_debug("Event number: %#02x\n", event);
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

static int __init clevo_wmi_init(void) {
	int ret, error;
	if (!wmi_has_guid(CLEVO_WMI_WMBB_GUID)) {
		pr_err("Clevo WMI GUID not found\n");
		return -ENODEV;
	}
	if ((ret = clevo_wmi_enable()))
		return ret;
	ret = wmi_install_notify_handler(CLEVO_WMI_EVD0_GUID, clevo_wmi_notify,
		NULL);
	if (ACPI_FAILURE(ret)) {
		pr_err("Could not register WMI notifier for Clevo: %s.\n",
			acpi_format_exception(ret));
		return -EINVAL;
	}

	nb.notifier_call = &clevo_wmi_pm_handler;
	error = register_pm_notifier(&nb);
	if (error)
		goto err_remove_wmi_notifier;

	pr_info("Clevo WMI driver loaded.\n");
	return 0;

err_remove_wmi_notifier:
	wmi_remove_notify_handler(CLEVO_WMI_EVD0_GUID);
	return error;
}

static void __exit clevo_wmi_exit(void) {
	unregister_pm_notifier(&nb);
	wmi_remove_notify_handler(CLEVO_WMI_EVD0_GUID);
	pr_info("Clevo WMI driver unloaded.\n");
}

module_init(clevo_wmi_init);
module_exit(clevo_wmi_exit);
