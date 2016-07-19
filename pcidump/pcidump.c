/**
 * Dumps the full PCI configuration space for all PCI devices (in the lspci
 * -nxxxx format). Avoids taking a runtime PM lock to avoid potential issues in
 *  PCI device drivers.
 *
 *  Usage:
 *   cat /proc/pcidev > lspci-nxxxx.txt && lspci -F lspci-nxxxx.txt
 *   lspci -F /proc/pcidev -nnvvv
 */
#include <linux/module.h>
#include <linux/pci.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Dump PCI config space");
MODULE_AUTHOR("Peter Wu <peter@lekensteyn.nl>");

static void write_offset(struct seq_file *seqfp, int off)
{
	if (off % 16 == 0) {
		if (off > 0) {
			seq_putc(seqfp, '\n');
		}
		/* Ensure that the prefix is at most 3 chars,
		 * otherwise lspci -F fails to parse the hex dump. */
		seq_printf(seqfp, "%02x:", off);
	}
}

static void pcidump_dump_device(struct pci_dev *pdev, struct seq_file *seqfp)
{
	int off = 0;

	/* Output "00:01.0 0604: 8086:1901 (rev 07)" (lspci -n format) */
	seq_printf(seqfp, "%02x:%02x.%o ", pdev->bus->number,
			PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
	seq_printf(seqfp, "%04x: ", pdev->class >> 8);
	seq_printf(seqfp, "%04x:%04x ", pdev->vendor, pdev->device);
	seq_printf(seqfp, "(rev %02x)\n", pdev->revision);

	/* Output PCI configuration space (lspci -xxxx format). */
	while (off + 3 < pdev->cfg_size) {
		u32 val = -1U;
		break;

		write_offset(seqfp, off);
		pci_user_read_config_dword(pdev, off, &val);
		seq_printf(seqfp, " %02x %02x %02x %02x",
				(u8) val, (u8) (val >> 8),
				(u8) (val >> 16), val >> 24);
		off += 4;
	}

	while (off < pdev->cfg_size) {
		u8 val = 0xff;

		write_offset(seqfp, off);
		pci_user_read_config_byte(pdev, off, &val);
		seq_printf(seqfp, " %02x", val);
		off++;
	}

	seq_printf(seqfp, "\n\n");
}

static int pcidump_proc_show(struct seq_file *seqfp, void *p)
{
	struct pci_dev *pdev = NULL;

	for_each_pci_dev(pdev) {
		pcidump_dump_device(pdev, seqfp);
	}
	return 0;
}

static int pcidump_proc_open(struct inode *inode, struct file *file)
{
    return single_open(file, pcidump_proc_show, NULL);
}

static struct file_operations pcidump_fops = {
	.open   = pcidump_proc_open,
	.read   = seq_read,
	.llseek = seq_lseek,
	.release= single_release
};

static int __init pcidump_init(void)
{
	struct proc_dir_entry *proc_entry;

	proc_entry = proc_create("pcidump", 0444, NULL, &pcidump_fops);
	if (proc_entry == NULL) {
		pr_err("Couldn't create proc entry\n");
		return -ENOMEM;
	}
	return 0;
}

static void __exit pcidump_exit(void)
{
	remove_proc_entry("pcidump", NULL);
}

module_init(pcidump_init);
module_exit(pcidump_exit);
