<#
.SYNOPSIS
    Invokes RWEverything and dumps the PCI config space for all PCI devices in
    a format that can be consumed by lspci -F (lspci -xxxx format).

.PARAMETER output
    Path to the output file.

.EXAMPLE
    C:\> pcidump.ps1 lspci.txt
    C:\> lspci -F lspci.txt -nnvvv

.NOTES
    lspci is typically invoked on Linux, but there are also Windows builds
    (https://eternallybored.org/misc/pciutils/). Note that lspci on Windows is
    limited to the first 256 bytes of the PCI configuration space since it uses
    IO ports for access. (This is still true for pciutils 3.5.1).

    For a tool that can convert the PCI dumps from the GUI, see
    https://github.com/Lekensteyn/acpi-stuff/tree/master/rwe
#>

Param(
    [Parameter(Mandatory=$True, HelpMessage="Path to output file.")]
    [string]$output
)

# Assume some location if not found.
$Env:PATH += ";C:\RWEPortable"

function RWE {
    Param ([string]$command)
    & rw /Nologo /Stdout /Command=$command | Write-Output
}

function pcitree {
    # Converts "Bus 00, Device 01, Function 02 - ..." to "00 01 2"
    RWE pcitree | Select-String -Pattern '^Bus' | % {
        $_ -replace 'Bus (\w+), Device (\w+), Function 0(\d+) .*', '$1 $2 $3'
    }
}

$commands = pcitree | % {
    $bus, $dev, $fn = $_.Split(' ')
    "cout $bus`:$dev.$fn PCI device;"
    "save nul pci 0x$bus 0x$dev $fn;"
}
# Strip the column headers (00 01 ... 0E 0F) and "Save PCI: ..." lines.
# Converts the RWE hexdump of the form "00 86 80 ... 00 00(tab)..7..."
# to the form accepted by lspci ("00: 86 80 ... 00 00"). RWE outputs a
# three-digit prefix for PCI extended configuration space (as required).
RWE $commands | Select-String -Pattern '^[0-9A-F]' | %{
    $_ -replace '^([0-9A-F]+) ([^\t]+)\t.*', '$1: $2'
} | Out-File -Encoding ASCII -FilePath $output
