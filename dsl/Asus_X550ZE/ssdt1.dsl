/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000B9C (2972)
 *     Revision         0x01
 *     Checksum         0x71
 *     OEM ID           "AMD"
 *     OEM Table ID     "BALLINA "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "AMD "
 *     Compiler Version 0x00000001 (1)
 */
DefinitionBlock ("ssdt1.aml", "SSDT", 1, "AMD", "BALLINA ", 0x00000001)
{

    External (_PR_.P000, ProcessorObj)
    External (_PR_.P001, ProcessorObj)
    External (_PR_.P002, ProcessorObj)
    External (_PR_.P003, ProcessorObj)

    Scope (\_PR.P000)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x05)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                0x00000003, 
                0x00000003
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                0x00000004, 
                0x00000004
            }
        })
        Name (XPSS, Package (0x05)
        {
            Package (0x08)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.P000.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001771, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000000, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }

    Scope (\_PR.P001)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x05)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                0x00000003, 
                0x00000003
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                0x00000004, 
                0x00000004
            }
        })
        Name (XPSS, Package (0x05)
        {
            Package (0x08)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.P001.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001771, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000000, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }

    Scope (\_PR.P002)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x05)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                0x00000003, 
                0x00000003
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                0x00000004, 
                0x00000004
            }
        })
        Name (XPSS, Package (0x05)
        {
            Package (0x08)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.P002.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001771, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000001, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }

    Scope (\_PR.P003)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x05)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                0x00000003, 
                0x00000003
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                0x00000004, 
                0x00000004
            }
        })
        Name (XPSS, Package (0x05)
        {
            Package (0x08)
            {
                0x000009C4, 
                0x00002134, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000008FC, 
                0x00001D2E, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000834, 
                0x0000168F, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x000006A4, 
                0x0000100A, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000578, 
                0x00000B73, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.P003.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001771, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000001, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }
}

