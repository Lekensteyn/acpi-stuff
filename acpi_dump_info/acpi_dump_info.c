/**
 * Dumps information of the ACPI handles for devices
 */
#include <linux/pci.h>
#include <linux/acpi.h>
#include <linux/module.h>
#include <asm/uaccess.h>
#include <linux/seq_file.h>

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Dumps information of the ACPI handles for devices");
MODULE_AUTHOR("Lekensteyn <lekensteyn@gmail.com>");

#define DEVNAME "dump_info"

extern struct proc_dir_entry *acpi_root_dir;

static int meh_show(struct seq_file *seqfp, void *p) {
	struct pci_dev *pdev = NULL;

	while ((pdev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pdev)) != NULL) {
		struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };
		acpi_handle handle;

		handle = DEVICE_ACPI_HANDLE(&pdev->dev);
		seq_printf(seqfp, "%s ", dev_name(&pdev->dev));
		seq_printf(seqfp, "%06x ", pdev->class);
		if (handle) {
			acpi_get_name(handle, ACPI_FULL_PATHNAME, &buf);
			seq_printf(seqfp, "%s\n", (char *)buf.pointer);
		} else {
			seq_printf(seqfp, "\n");
		}
	}
	return 0;
}

static int meh_open(struct inode *inode, struct file *file) {
	return single_open(file, meh_show, NULL);
}

static struct file_operations fops = {
	.open    = meh_open,
	.read    = seq_read,
	.llseek  = seq_lseek,
	.release = single_release,
};

static int __init meh_init(void) {
	struct proc_dir_entry *acpi_entry;
	acpi_entry = proc_create(DEVNAME, 0444, acpi_root_dir, &fops);
	if (acpi_entry == NULL) {
		printk(KERN_ERR DEVNAME ": could not create proc/acpi entry\n");
		return -ENOMEM;
	}
	printk(KERN_INFO DEVNAME ": succesfully loaded in /proc/acpi/" DEVNAME);
	return 0;
}

static void __exit meh_exit(void) {
	remove_proc_entry(DEVNAME, acpi_root_dir);
}

module_init(meh_init);
module_exit(meh_exit);
