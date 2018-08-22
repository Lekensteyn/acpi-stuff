#!/bin/bash
# Boot a QEMU VM, simulating a modern Nvidia hybrid graphics laptop in order to
# test PCI config space changes and interaction with ACPI.
# Connects a device at 01:00.0 to a root port (00:1c.0).

if [ fakedev.asl -nt fakedev.aml ]; then
    iasl -ve -f fakedev.asl || exit 1
fi

args=(
-acpitable file=fakedev.aml

-device isa-debugcon,iobase=0x404,chardev=dbug
#-chardev file,id=dbug,path=dbug.txt
-chardev file,id=dbug,path=/dev/stdout

#-M pc,accel=kvm
-M q35,accel=kvm
-m 1G
#-nographic
-no-quit
-vga std

#-qmp tcp:127.0.0.1:4444,server,nowait

-smbios type=0,date=01/01/2018

-device ioh3420,id=rp1,bus=pcie.0,addr=1c.0,port=1
-device nec-usb-xhci,bus=rp1

-device e1000e,netdev=net0 #,bus=rp1
-netdev "user${SMB:+,smb=$SMB}${USERNET:+,$USERNET}",id=net0

# -display gtk

"$@"
)

case "$*" in
*-cdrom*|*-drive*) ;;
*)
    args+=(
    -cdrom /data/iso/archlinux-2018.07.01-x86_64.iso
    )
    ;;
esac


trap 'stty intr ^C' EXIT
stty intr ^]
echo qemu-system-x86_64 "${args[@]}"
qemu-system-x86_64 "${args[@]}"
