/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.dat, Mon Jan 18 23:32:36 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000778 (1912)
 *     Revision         0x02
 *     Checksum         0x26
 *     OEM ID           "Intel"
 *     OEM Table ID     "PerfTune"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("ssdt5.aml", "SSDT", 2, "Intel", "PerfTune", 0x00001000)
{
    /*
     * iASL Warning: There were 5 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (ADBG, MethodObj)    // Warning: Unresolved method, guessing 7 arguments
    External (XMPB, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (XTUB, MethodObj)    // Warning: Unresolved method, guessing 7 arguments
    External (XTUS, MethodObj)    // Warning: Unresolved method, guessing 3 arguments

    External (_SB_.PCI0.LPCB.H_EC.CFSP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CVRT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSD0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSD1, UnknownObj)
    External (_TZ_.TZ01._TMP, IntObj)
    External (DDRF, UnknownObj)
    External (ECON, IntObj)
    External (PFTU, IntObj)
    External (TSOD, IntObj)

    Scope (\_SB)
    {
        Device (PTMD)
        {
            Name (_HID, EisaId ("INT3394") /* ACPI System Fan */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00010000)
            Name (SIZE, 0x055C)
            Method (GACI, 0, NotSerialized)
            {
                Name (RPKG, Package (0x02) {})
                Index (RPKG, Zero) = Zero
                If ((XTUB (Zero, ADBG ("XTUB", ADBG (XTUB (ADBG ("XTUS", ADBG (
                    XTUS (OperationRegion (XNVS, SystemMemory, XTUB (SIZE, Field (XNVS, ByteAcc, NoLock, Preserve)
                                                                {
                                                                    XBUF,   10976
                                                                }, Name (TEMP, Buffer (XTUS ()) {}), TEMP = XBUF /* \_SB_.PTMD.GACI.XBUF */, Index (RPKG, One) = 
                                                                        TEMP /* \_SB_.PTMD.GACI.TEMP */, Else
                                                                {
                                                                    ADBG ("XTUB ZERO", Index (RPKG, One) = Zero, Return (RPKG) /* \_SB_.PTMD.GACI.RPKG */)
                                                                }))))))))) != )) {}
            }

            Method (GDSV, 1, Serialized)
            {
                If ((Arg0 == 0x05))
                {
                    Return (Package (0x02)
                    {
                        Zero, 
                        Buffer (0x50)
                        {
                            /* 0000 */  0xB0, 0x04, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  /* ........ */
                            /* 0008 */  0xE2, 0x04, 0x00, 0x00, 0xE2, 0x04, 0x00, 0x00,  /* ........ */
                            /* 0010 */  0x14, 0x05, 0x00, 0x00, 0x14, 0x05, 0x00, 0x00,  /* ........ */
                            /* 0018 */  0x46, 0x05, 0x00, 0x00, 0x46, 0x05, 0x00, 0x00,  /* F...F... */
                            /* 0020 */  0x78, 0x05, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  /* x...x... */
                            /* 0028 */  0xAA, 0x05, 0x00, 0x00, 0xAA, 0x05, 0x00, 0x00,  /* ........ */
                            /* 0030 */  0xDC, 0x05, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00,  /* ........ */
                            /* 0038 */  0x0E, 0x06, 0x00, 0x00, 0x0E, 0x06, 0x00, 0x00,  /* ........ */
                            /* 0040 */  0x40, 0x06, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  /* @...@... */
                            /* 0048 */  0x72, 0x06, 0x00, 0x00, 0x72, 0x06, 0x00, 0x00   /* r...r... */
                        }
                    })
                }

                If ((Arg0 == 0x13))
                {
                    Return (Package (0x02)
                    {
                        Zero, 
                        Buffer (0xC0)
                        {
                            /* 0000 */  0x04, 0x00, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00,  /* .... ... */
                            /* 0008 */  0x05, 0x00, 0x00, 0x00, 0x84, 0x03, 0x00, 0x00,  /* ........ */
                            /* 0010 */  0x06, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  /* ........ */
                            /* 0018 */  0x07, 0x00, 0x00, 0x00, 0x4C, 0x04, 0x00, 0x00,  /* ....L... */
                            /* 0020 */  0x08, 0x00, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  /* ........ */
                            /* 0028 */  0x09, 0x00, 0x00, 0x00, 0x14, 0x05, 0x00, 0x00,  /* ........ */
                            /* 0030 */  0x0A, 0x00, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  /* ....x... */
                            /* 0038 */  0x0B, 0x00, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00,  /* ........ */
                            /* 0040 */  0x0C, 0x00, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  /* ....@... */
                            /* 0048 */  0x0D, 0x00, 0x00, 0x00, 0xA4, 0x06, 0x00, 0x00,  /* ........ */
                            /* 0050 */  0x0E, 0x00, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  /* ........ */
                            /* 0058 */  0x0F, 0x00, 0x00, 0x00, 0x6C, 0x07, 0x00, 0x00,  /* ....l... */
                            /* 0060 */  0x10, 0x00, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00,  /* ........ */
                            /* 0068 */  0x11, 0x00, 0x00, 0x00, 0x34, 0x08, 0x00, 0x00,  /* ....4... */
                            /* 0070 */  0x12, 0x00, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00,  /* ........ */
                            /* 0078 */  0x13, 0x00, 0x00, 0x00, 0xFC, 0x08, 0x00, 0x00,  /* ........ */
                            /* 0080 */  0x14, 0x00, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00,  /* ....`... */
                            /* 0088 */  0x15, 0x00, 0x00, 0x00, 0xC4, 0x09, 0x00, 0x00,  /* ........ */
                            /* 0090 */  0x16, 0x00, 0x00, 0x00, 0x28, 0x0A, 0x00, 0x00,  /* ....(... */
                            /* 0098 */  0x17, 0x00, 0x00, 0x00, 0x8C, 0x0A, 0x00, 0x00,  /* ........ */
                            /* 00A0 */  0x18, 0x00, 0x00, 0x00, 0xF0, 0x0A, 0x00, 0x00,  /* ........ */
                            /* 00A8 */  0x19, 0x00, 0x00, 0x00, 0x54, 0x0B, 0x00, 0x00,  /* ....T... */
                            /* 00B0 */  0x1A, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x00, 0x00,  /* ........ */
                            /* 00B8 */  0x1B, 0x00, 0x00, 0x00, 0x1C, 0x0C, 0x00, 0x00   /* ........ */
                        }
                    })
                }

                If ((Arg0 == 0x13))
                {
                    ADBG ("DDR MULT", If ((DDRF == One))
                        {
                            ADBG ("DDR 1", Return (Package (0x02)
                                {
                                    Zero, 
                                    Buffer (0x40)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                        /* 0008 */  0x04, 0x00, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00,  /* .... ... */
                                        /* 0010 */  0x05, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  /* ........ */
                                        /* 0018 */  0x06, 0x00, 0x00, 0x00, 0xB0, 0x04, 0x00, 0x00,  /* ........ */
                                        /* 0020 */  0x07, 0x00, 0x00, 0x00, 0x78, 0x05, 0x00, 0x00,  /* ....x... */
                                        /* 0028 */  0x08, 0x00, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  /* ....@... */
                                        /* 0030 */  0x09, 0x00, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00,  /* ........ */
                                        /* 0038 */  0x0A, 0x00, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00   /* ........ */
                                    }
                                }), Else
                                {
                                    ADBG ("DDR ELSE", Return (Package (0x02)
                                        {
                                            Zero, 
                                            Buffer (0x40)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                /* 0008 */  0x04, 0x00, 0x00, 0x00, 0x2B, 0x04, 0x00, 0x00,  /* ....+... */
                                                /* 0010 */  0x05, 0x00, 0x00, 0x00, 0x35, 0x05, 0x00, 0x00,  /* ....5... */
                                                /* 0018 */  0x06, 0x00, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00,  /* ....@... */
                                                /* 0020 */  0x07, 0x00, 0x00, 0x00, 0x4B, 0x07, 0x00, 0x00,  /* ....K... */
                                                /* 0028 */  0x08, 0x00, 0x00, 0x00, 0x55, 0x08, 0x00, 0x00,  /* ....U... */
                                                /* 0030 */  0x09, 0x00, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00,  /* ....`... */
                                                /* 0038 */  0x0A, 0x00, 0x00, 0x00, 0x6B, 0x0A, 0x00, 0x00   /* ....k... */
                                            }
                                        }), ADBG ("DDR EXIT", If ((Arg0 == 0x0B))
                                            {
                                                Return (Package (0x02)
                                                {
                                                    Zero, 
                                                    Buffer (0x40)
                                                    {
                                                        /* 0000 */  0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0008 */  0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0010 */  0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0018 */  0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0020 */  0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0028 */  0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0030 */  0x0E, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0038 */  0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00   /* ........ */
                                                    }
                                                })
                                            }, If ((Arg0 == 0x42))
                                            {
                                                Return (Package (0x02)
                                                {
                                                    Zero, 
                                                    Buffer (0xC0)
                                                    {
                                                        /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0008 */  0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0010 */  0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0018 */  0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0020 */  0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0028 */  0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0030 */  0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0038 */  0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0040 */  0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0048 */  0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0050 */  0x0E, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0058 */  0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0060 */  0x14, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0068 */  0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0070 */  0x1C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00,  /* ........ */
                                                        /* 0078 */  0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00,  /*  ... ... */
                                                        /* 0080 */  0x28, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00,  /* (...(... */
                                                        /* 0088 */  0x30, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00,  /* 0...0... */
                                                        /* 0090 */  0x38, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00,  /* 8...8... */
                                                        /* 0098 */  0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,  /* @...@... */
                                                        /* 00A0 */  0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00,  /* P...P... */
                                                        /* 00A8 */  0x60, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00,  /* `...`... */
                                                        /* 00B0 */  0x70, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00,  /* p...p... */
                                                        /* 00B8 */  0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00   /* ........ */
                                                    }
                                                })
                                            }, Return (Package (0x01)
                                            {
                                                One
                                            })))
                                })
                        })
                }
            }

            Method (GXDV, 1, Serialized)
            {
                If ((XMPB (Zero) != OperationRegion (XMPN, SystemMemory, XMPB (SIZE), Field (XMPN, ByteAcc, NoLock, Preserve)
                                {
                                    XMP1,   704, 
                                    XMP2,   704
                                })))
                {
                    If ((Arg0 == One))
                    {
                        Name (XP_1, Package (0x02) {})
                        Index (XP_1, Zero) = Zero
                        Index (XP_1, One) = XMP1 /* \_SB_.PTMD.GXDV.XMP1 */
                        Return (XP_1) /* \_SB_.PTMD.GXDV.XP_1 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        Name (XP_2, Package (0x02) {})
                        Index (XP_2, Zero) = Zero
                        Index (XP_2, One) = XMP2 /* \_SB_.PTMD.GXDV.XMP2 */
                        Return (XP_2) /* \_SB_.PTMD.GXDV.XP_2 */
                    }

                    Return (Package (0x01)
                    {
                        One
                    })
                }
            }

            Method (GSCV, 0, NotSerialized)
            {
                Return (PFTU) /* External reference */
            }

            Method (CDRD, 1, Serialized)
            {
                Return (Package (0x01)
                {
                    One
                })
            }

            Method (CDWR, 2, Serialized)
            {
                Return (One)
            }

            Name (RPMV, Package (0x04)
            {
                One, 
                0x07, 
                Zero, 
                Zero
            })
            Name (TMP1, Package (0x0C)
            {
                One, 
                0x02, 
                Zero, 
                Zero, 
                0x05, 
                0x04, 
                Zero, 
                Zero, 
                0x06, 
                0x05, 
                Zero, 
                Zero
            })
            Name (TMP2, Package (0x08)
            {
                One, 
                0x02, 
                Zero, 
                Zero, 
                0x05, 
                0x04, 
                Zero, 
                Zero
            })
            Name (TMP3, Package (0x04)
            {
                One, 
                0x02, 
                Zero, 
                Zero
            })
            Method (TSDD, 0, NotSerialized)
            {
                If ((XTUS (Zero, Return (Zero), If (\ECON)
                            {
                                If (\TSOD)
                                {
                                    Index (TMP1, 0x02) = \_TZ.TZ01._TMP /* External reference */
                                     = 0x0AAC = ((0x0A = (\_SB.PCI0.LPCB.H_EC.ECRD () * RefOf (\_SB.PCI0.LPCB.H_EC.CVRT))) + Zero)
                                    Index (TMP1, 0x06)
                                    If ((\_SB.PCI0.LPCB.H_EC.ECRD () > RefOf (\_SB.PCI0.LPCB.H_EC.TSD0)))
                                    {
                                        \_SB.PCI0.LPCB.H_EC.ECRD ()
                                        RefOf (\_SB.PCI0.LPCB.H_EC.TSD1)
                                         = 0x0AAC = ((0x0A = (\_SB.PCI0.LPCB.H_EC.ECRD () * RefOf (\_SB.PCI0.LPCB.H_EC.TSD0))) + Zero)
                                        Index (TMP1, 0x0A)
                                    }
                                    Else
                                    {
                                         = 0x0AAC = ((0x0A = (\_SB.PCI0.LPCB.H_EC.ECRD () * RefOf (\_SB.PCI0.LPCB.H_EC.TSD1))) + Zero)
                                        Index (TMP1, 0x0A)
                                    }

                                    Return (TMP1) /* \_SB_.PTMD.TMP1 */
                                }
                                Else
                                {
                                    Index (TMP2, 0x02) = \_TZ.TZ01._TMP /* External reference */
                                     = 0x0AAC = ((0x0A = (\_SB.PCI0.LPCB.H_EC.ECRD () * RefOf (\_SB.PCI0.LPCB.H_EC.CVRT))) + Zero)
                                    Index (TMP2, 0x06)
                                    Return (TMP2) /* \_SB_.PTMD.TMP2 */
                                }
                            }) == Else
                        {
                            Index (TMP3, 0x02) = \_TZ.TZ01._TMP /* External reference */
                            Return (TMP3) /* \_SB_.PTMD.TMP3 */
                        })) {}
            }

            Method (FSDD, 0, NotSerialized)
            {
                If ((XTUS (Zero, Return (Zero), If (\ECON)
                            {
                                RefOf (\_SB.PCI0.LPCB.H_EC.CFSP) = \_SB.PCI0.LPCB.H_EC.ECRD ()
                                Index (RPMV, 0x02)
                            }) == Return (RPMV) /* \_SB_.PTMD.RPMV */)) {}
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }
        }
    }
}

