#!/bin/sh
# Boot a QEMU VM, loading the modified ACPI table and with the debug port
# writing to "dbug.txt".

args=(
-acpitable file=asus-dbg.aml

-device isa-debugcon,iobase=0x404,chardev=dbug
-chardev file,id=dbug,path=dbug.txt

-M pc,accel=kvm
-m 1G
-nographic
-no-quit
-vga std

-qmp tcp:127.0.0.1:4444,server,nowait

-net nic,model=e1000
-net "user${SMB:+,smb=$SMB}${USERNET:+,$USERNET}"

# -display gtk

"$@"
)

if [ -z "${1:-}" ]; then
    args+=(
    -cdrom ~/qemu/iso/archlinux-2016.07.01-dual.iso
    )
fi


trap 'stty intr ^C' EXIT
stty intr ^]
qemu-system-x86_64 "${args[@]}"
