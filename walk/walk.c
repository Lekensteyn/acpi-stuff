/*
 * Quick & dirty debug print of what "acpi_pci_find_device" is supposed to find
 * for the first non-Intel video card (e.g. nvidia)
 */
#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

#include <linux/pci.h>
#include <linux/acpi.h>
#include <linux/module.h>
#include <asm/uaccess.h>
#include <acpi/acpixf.h>

MODULE_LICENSE("GPL");

static acpi_status
find_child(acpi_handle handle, u32 lvl, void *context, void **rv) {
	acpi_status status;
	struct acpi_device_info *info;
	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };
	char *name;

	acpi_get_name(handle, ACPI_FULL_PATHNAME, &buf);
	name = buf.pointer ? buf.pointer : "(nil)";

	status = acpi_get_object_info(handle, &info);
	if (ACPI_SUCCESS(status)) {
		pr_info("Address: %08llx (%s); handle: %s\n", info->address,
				(info->valid & ACPI_VALID_ADR) ? "valid" :
				"invalid", name);
		kfree(info);
	} else {
		pr_warn("Handle %s has no info: %s\n", name,
				acpi_format_exception(status));
	}
	kfree(buf.pointer);
	return AE_OK;
}

static struct pci_dev __init *get_discrete_device(void) {
	struct pci_dev *pdev = NULL;
	while ((pdev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pdev)) != NULL) {
		int pci_class = pdev->class >> 8;

		if (pci_class != PCI_CLASS_DISPLAY_VGA &&
				pci_class != PCI_CLASS_DISPLAY_3D)
			continue;

		if (pdev->vendor != PCI_VENDOR_ID_INTEL) {
			return pdev;
		}   
	}   
	return NULL;
}


static int __init ptest_init(void) {
	struct pci_dev *pdev = get_discrete_device();
	acpi_handle parent;
	struct device *dev;
	if (!pdev) {
		pr_err("No discrete dev found\n");
		return -ENODEV;
	}
	dev = &pdev->dev;
	if (!(dev = dev->parent)) {
		pr_err("No parent dev found\n");
		goto put_dev;
	}
	parent = DEVICE_ACPI_HANDLE(dev);
	if (!parent) {
		pr_err("No ACPI handle found\n");
		goto put_dev;
	}

	pr_info("Walking through all handles...\n");
	acpi_walk_namespace(ACPI_TYPE_DEVICE, parent, 1, find_child,
			NULL, NULL, NULL);
	pr_info("Walked through all handles\n");
put_dev:
	pci_dev_put(pdev);
	/* abort loading, so we do not have to unload */
	return -ENODEV;
}

module_init(ptest_init);
