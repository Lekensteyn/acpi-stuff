#!/bin/bash
# Extract DSDT and SSDT tables from a firmware image.
# Tested with P650SE.09 from B0309.zip and others (Clevo N1xxRF, P6xxRx, ...).
# Using binwalk v2.1.1 (with 730cdb5f02b2d43d3beb5f9573fbceda0502a4b5) and
# custom signature magic.
#
# For deterministic timestamps (for easier comparison between images), use:
#
#   export SOURCE_DATE_EPOCH=$(date +%s);

fwimage=$1
outputdir=${2:-extracted}

# DSDT/SSDT signatures for binwalk
magicfile="$HOME/.binwalk/magic/acpi"
if [ ! -e "$magicfile" ]; then
    echo "Writing $magicfile"
    mkdir -p "${magicfile%/*}"
    cat >"$magicfile" <<EOF
# Match DSDT/SSDT, presumably smaller than 16 MiB (avoids false positives)
0       regex   [SD]SDT ACPI {name:%.4s}%.4s,
>4      ulelong x       Length: 0x%08X,{size:%d}
>7      ubyte   !0      {invalid}
>8      ubyte   x       Rev: 0x%02X,
#>9      ubyte   x       Checksum: 0x%02X,
>10     string  x       OemId: "%-6.6s",
>16     string  x       OemTableId: "%-8.8s",
>24     ulelong x       OemRev: 0x%08X,
>28     string  x       CreatorId: "%-4.4s",
>32     ulelong x       CreatorRev: 0x%08X
EOF
fi


# Obtain AML (ACPI Machine Language) files from firmware image
tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT
binwalk -C "$tmpdir" -y lzma -y acpi -M -e -D acpi:aml "$fwimage" || exit 1
files=$(find "$tmpdir" -type f -name "*.aml")
if [ -z "$files" ]; then
    echo "No AML files found!"
    exit 1
fi
ssdt_counter=0
dsdt_counter=0
mkdir -p "$outputdir"
for file in $files; do
    name=$(basename "$file" | cut -c1-4)
    case "$name" in
    SSDT)
        name+=$((++ssdt_counter))
        ;;
    DSDT)
        # Not expected to have multiple DSDT, but just in case...
        [ $((++dsdt_counter)) -gt 1 ] || name+=$dsdt_counter
        ;;
    *) echo "Unrecognized name $name!"; exit 1 ;;
    esac
    name+=.aml
    mv -vi "$file" "$outputdir/$name"
done


# Disassembly AML to ASL
cd "$outputdir"
echo "Invoking iasl (#1)..."
if ! iasl -e *.aml -d *.aml; then
    # Some possibly failed due to AE_ALREADY_EXISTS, retry with just DSDT for
    # external symbol resolution and finally fallback to none.
    echo "Invoking iasl (#2)..."
    for i in *.aml; do
        [ -e "${i%.aml}.dsl" ] || iasl -e DSDT.aml -d "$i"
    done
    echo "Invoking iasl (#3)..."
    for i in *.aml; do
        [ -e "${i%.aml}.dsl" ] || iasl -d "$i"
    done
fi
# iasl calls ctime() that changes every time, override this with a fixed time.
dt=$(LC_ALL=C date +%c ${SOURCE_DATE_EPOCH:+-d@$SOURCE_DATE_EPOCH})
sed -r -e "s/^( \\* Disassembly of [DST0-9-]*\\.aml, ).*/\\1 $dt/" -i *.dsl


# Get list of methods (taken from get_methods)
echo "Dumping list of methods..."
acpiexec -b methods *.aml |
awk '/^$/{s=0};s==1{print $1};/^Objects of type \[Method\]/{s=1}' > methods.txt


# Clean up for easier directory listings
mkdir -p aml && mv *.aml aml/
