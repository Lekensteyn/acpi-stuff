#!/bin/sh
# Converts PCI dumps from RWEverything to the lspci format.
#
# Usage: ./rwe2pci.sh PciAll.rw [lspci options]
#
# Verbose output:
#   ./rwe2pci.sh PciAll.rw -nnvvv > lspci.txt
# Lossless conversion between RWE and lspci:
#   ./rwe2pci.sh PciAll.rw -xxxx > lspci-xxxx.txt
# Tree view with names and IDs:
#   ./rwe2pci.sh PciAll.rw -tvnn

file=$1
shift

sed -r -n '
# "Type:PCI   Bus 00   Device 00   Function 00" -> "00:00.0 "
/^Type/ {
    s/.*Bus //;
    s/ *Device /:/;
    s/ *Function 0/./;
    s/[^0-7]*$/ /;
    p
}

# "00=86 01=80 02=10 03=19 04=06 05=00 06=90 07=20 " ->
# "00: 86 80 10 19 06 00 90 20" (for PCI)
# "0000=86 0001=80 0002=01 0003=19 0004=07 0005=04 0006=10 0007=00 " ->
# "000: 86 80 01 19 07 04 10 00 07 00 04 06 00 00 81 00" (for PCI Express)
/^[0-9A-F]{2}{1,2}=/ {
    s/=/: /;
    /^0.{3}:/ s/^0//;
    s/[0-9A-F]+=//g;
    p
}' -- "$file" | lspci -F /dev/stdin "$@"
