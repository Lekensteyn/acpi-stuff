/**
 * Dumps the contents of the PCI dev struct
 */
#include <linux/pci.h>
#include <linux/acpi.h>
#include <linux/module.h>
#include <asm/uaccess.h>

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Dumps contents of struct pci_dev");
MODULE_AUTHOR("Lekensteyn <lekensteyn@gmail.com>");

extern struct proc_dir_entry *acpi_root_dir;

#define BUFSIZE 10240
static char buf[BUFSIZE];

static void get_info(void) {
    struct pci_dev *pdev = NULL;
    int class = PCI_CLASS_DISPLAY_VGA << 8;

    while ((pdev = pci_get_class(class, pdev)) != NULL) {
        if (pdev->vendor != PCI_VENDOR_ID_INTEL) {
            u32 cfg_word;
            // read first config word which contains Vendor and Device ID
            pci_read_config_dword(pdev, 0, &cfg_word);
            snprintf(buf, BUFSIZE,
"pdev information from PCI device %s:\n"
// begin
"               devfn: %02X\n"
"              vendor: %02X\n"
"              device: %02X\n"
"    subsystem_vendor: %02X\n"
"    subsystem_device: %02X\n"
"               class: %02X\n"
"            revision: %02X\n"
"            hdr_type: %02X\n"
"            pcie_cap: %02X\n"
"           pcie_type: %02X\n"
"           pcie_mpss: %02X\n"
"        rom_base_reg: %02X\n"
"                 pin: %02X\n"
"       current_state: %02X\n"
"              pm_cap: %02X\n"
"         pme_support: %02X\n"
"       pme_interrupt: %02X\n"
"          d1_support: %02X\n"
"          d2_support: %02X\n"
"             no_d1d2: %02X\n"
"      mmio_always_on: %02X\n"
"     wakeup_prepared: %02X\n"
"            d3_delay: %02X\n"
"         error_state: %02X\n"
"            cfg_size: %02X\n"
"                 irq: %02X\n"
"         transparent: %02X\n"
"       multifunction: %02X\n"
"            is_added: %02X\n"
"        is_busmaster: %02X\n"
"              no_msi: %02X\n"
"   block_ucfg_access: %02X\n"
"broken_parity_status: %02X\n"
" irq_reroute_variant: %02X\n"
"         msi_enabled: %02X\n"
"        msix_enabled: %02X\n"
"         ari_enabled: %02X\n"
"          is_managed: %02X\n"
"             is_pcie: %02X\n"
"        needs_freset: %02X\n"
"         state_saved: %02X\n"
"           is_physfn: %02X\n"
"           is_virtfn: %02X\n"
"            reset_fn: %02X\n"
"   is_hotplug_bridge: %02X\n"
"           dev_flags: %02X\n"

"Config word at pos 1: %04X\n",

dev_name(&pdev->dev),

pdev->devfn, pdev->vendor, pdev->device,
pdev->subsystem_vendor, pdev->subsystem_device, pdev->class,
pdev->revision, pdev->hdr_type, pdev->pcie_cap,
pdev->pcie_type, pdev->pcie_mpss, pdev->rom_base_reg,
pdev->pin, pdev->current_state, pdev->pm_cap,
pdev->pme_support, pdev->pme_interrupt, pdev->d1_support,
pdev->d2_support, pdev->no_d1d2, pdev->mmio_always_on,
pdev->wakeup_prepared, pdev->d3_delay, pdev->error_state,
pdev->cfg_size, pdev->irq, pdev->transparent,
pdev->multifunction, pdev->is_added, pdev->is_busmaster,
pdev->no_msi, pdev->block_ucfg_access, pdev->broken_parity_status,
pdev->irq_reroute_variant, pdev->msi_enabled, pdev->msix_enabled,
pdev->ari_enabled, pdev->is_managed, pdev->is_pcie,
pdev->needs_freset, pdev->state_saved, pdev->is_physfn,
pdev->is_virtfn, pdev->reset_fn, pdev->is_hotplug_bridge,
pdev->dev_flags
// end
, cfg_word
);
            break;
        }
    }
}

static int pdev_read(char *page, char **start, off_t off,
    int count, int *eof, void *data) {
    int len = 0;

    if (!off) {
        get_info();
    }
    if (strlen(buf) >= off) {
        len = strlen(strncpy(page, buf, count));
    } else {
        *eof = 1;
    }
    return len;
}

static int __init pcidev_init(void) {
    struct proc_dir_entry *acpi_entry;
//    printk(KERN_INFO "pcidev: Module loaded");
    acpi_entry = create_proc_entry("pcidev", 0444, acpi_root_dir);
    acpi_entry->read_proc = pdev_read;
    return 0;
}

static void __exit pcidev_exit(void) {
    remove_proc_entry("pcidev", acpi_root_dir);
//    printk(KERN_INFO "pcidev: Module unloaded");
}

module_init(pcidev_init);
module_exit(pcidev_exit);
