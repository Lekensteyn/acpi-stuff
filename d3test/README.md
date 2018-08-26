# d3test
Files used to investigate [Bug 156341 - Nvidia fails to power on again,
resulting in AML_INFINITE_LOOP/lockups (multiple laptops affected)][1].

See the commit messages for more information.

## run-vm.sh
Used for developing a DSDT which tries to emulate a "modern" laptop with the
following properties:
- Uses power resources (PowerResource objects, `_PR3`, etc.)
- Has bridge device (00:1c.0) and downstream device (01:00.0).

Tested with Arch Linux (2018-07-01), requires `PCI_EXP_SLTCAP_HPC` to be
disabled in QEMU hw/pci/pcie.c in order to pass the "bridge supports D3" test
that allows the PCIe bridge to enter a lower power state using runtime PM. See
the patches/qemu-trace.diff patch.

Tested with Windows 10 and confirmed that the PMCSR state register is written
(D3) before calling the corresponding `PG00._OFF` ACPI methods.

## XPS9560/boot-vm
Used with an actual XPS 9560 test target over SSH with no X server (just plain
text console). Uses QEMU with the patches/qemu-trace.diff patch and Linux 4.18.1
with various patches. Mainly patches/linux-nouveau-dont-die.diff (to enable
partial recovery when runtime resume fails).

The vbios.rom file was extracted via the ACPI `_ROM` method via nouveau:

    sudo modprobe -v nouveau runpm=0
    sudo cat /sys/kernel/debug/dri/1/vbios.rom > vbios.rom

If nouveau was loaded, either rmmod it or unbind it (as done below). Prepare
vfio-pci such that it can be used by an unprivileged user:

    sudo sh -c 'echo > /sys/bus/pci/devices/0000:01:00.0/driver/unbind 0000:01:00.0'
    sudo modprobe -v vfio-pci
    sudo sh -c 'echo 10de 1c8d > /sys/bus/pci/drivers/vfio-pci/new_id'
    sudo setfacl -m g:kvm:rw /dev/vfio/1

Further files in the XPS9560 subdirectory:
- slogs/ - output from the ACPI calls and PCI config traces.
- lspci-bare-metal.txt - `lspci -nnxxxxvvv` output
- lspci-vm-vfio.txt - `lspci -nnxxxxvvv` output from within the QEMU VM

See `dsl/Dell_Inc.-XPS_15_9560` in the acpi-stuff root directory for an acpidump
for BIOS 1.7.1. The Windows images were not connected to a network (`set_link
e1000.0 off` via QEMU monitor) and use the 398.82 driver version.


 [1]: https://bugzilla.kernel.org/show_bug.cgi?id=156341
