## About
This repository contains ACPI related stuff for analysis of DSDT / SSDT tables
which the goal to find calls to toggle nVidia (r) Optimus (tm) cards.

### view.html
It's name is actually FoldedViewer (no trademark infrignment intended if any)
and the JS/ HTML5 program is useful for speeding up analys of DSDT/ SSDT tables
by providing folding capabilities. If you're using a recent browser, especially
if it's open-source like Firefox or Chromium, you'll be able to select files
through a file picker.

### fieldsize.c
Compile with `gcc -Wall fieldsize.c -o fieldsize`.  
Run ./fieldsize and paste the contents from `Field`s in it and it'll display
the fields with the offset on the end of the line. Whitespace is ignored.
Only lines starting with `NAME, [numeric value],`, `AccessAs` and
`Offset ([numeric/hex value]),` are recognized, all other input will cause
the program halt with a fatal error. Parsing stops on EOF (Ctrl + D)

Example input (stdin):

    Offset (0x8C),
    SVID, 16,
    SSID, 16,

Example output (stdout):

    Offset (0x8C), // byte 0x8C  bit 0
    SVID,   16,    // byte 0x8C  bit 0
    SSID,   16,    // byte 0x8E  bit 0

### get_methods
Retrieve the ACPI methods from an AML file (e.g. from acpidump). Usage:

    get_methods DSDT.dat SSDT.dat more.dat etc...

### methods_tree
A PHP script for converting the output of `get_methods` to a HTML document.

Example usage:

    ./get_methods {DSDT,SSDT*}.dat | ./methods_tree > out.html


### acer_ec.pl
Retrieved from http://aceracpi.googlecode.com/svn/trunk/acer_ec/acer_ec.pl
Used for dumping the contents of an Embedded Controller which can be done with:

    ./acer_ec.pl regs
Getting the register value at a certain position:

    ./acer_ec.pl ?= [hexadecimal index of register]

### bbswitch/bbswitch.c
bbswitch is a kernel module which automatically detects the required ACPI calls
for two kinds of Optimus laptops. It has been verified to work with "real"
Optimus and "legacy" Optimus laptops (at least, that is how I call them). The
machines on which these tests has performed are:

- Clevo B7130 - GT 425M ("real" Optimus, Lekensteyns laptop)
- Dell Vostro 3500 - GT 310M ("legacy" Optimus, Samsagax' laptop)

(note: there is no need to add more supported laptops here as the universal
calls should work for every laptop model supporting either Optimus calls)

It's preferred over manually hacking with the acpi_call module because it can
detect the correct handle preceding _DSM and has some built-in safeguards:

- You're not allowed to disable a card if a driver (nouveau, nvidia) is loaded.
- Before suspend, the card is automatically enabled. When resuming, it's
  disabled again if that was the case before suspending. Hibernation should
  work, but it not tested.

To use it, build the module first (kernel headers are required):

    make
Then load it (requires root privileges, i.e. `sudo`):

    make load
If your card is supported, there should be no error. Otherwise, you get a "No
such device" (ENODEV) error. Check your kernel log (dmesg) for more
information.

Usage (`#` means "run with root privileges, i.e. run it prefixed with `sudo `):

Get the status:

    # cat /proc/acpi/bbswitch  
    0000:01:00.0 ON

Turn the card off, respectively on:

    # tee /proc/acpi/bbswitch <<<OFF
    # tee /proc/acpi/bbswitch <<<ON
If the card stays on when trying to disable it, you've probably forgotten to
unload the driver,

    $ dmesg |tail -1
    bbswitch: device 0000:01:00.0 is in use by driver 'nouveau', refusing OFF
This module will shortly be integrated in Bumblebee. Please report any issues
on this module in the issue tracker and provide the following details:

- The output of `dmesg | grep -C 10 bbswitch:`
- The kernel version `uname -a`
- Your distribution and version (if applicable)
- The output of `lspci -d10de: -vvv`
- The version of your Xorg and the driver
