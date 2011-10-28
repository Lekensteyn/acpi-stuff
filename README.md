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
