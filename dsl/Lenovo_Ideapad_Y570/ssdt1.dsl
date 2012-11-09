/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20121018-64 [Oct 26 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of ssdt1.dat, Fri Nov  9 23:48:38 2012
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000006FE (1790)
 *     Revision         0x01
 *     Checksum         0x7B
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "HR CRB  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */

DefinitionBlock ("ssdt1.aml", "SSDT", 1, "INSYDE", "HR CRB  ", 0x00001000)
{
    External (DTS1)
    External (DTS2)
    External (DTS3)
    External (DTS4)
    External (PAMT, IntObj)
    External (PDTS)

    Scope (\_SB)
    {
        OperationRegion (MAIO, SystemIO, 0xFF2D, 0x03)
        Field (MAIO, ByteAcc, NoLock, Preserve)
        {
            MAIN,   16, 
            MADT,   8
        }

        Method (AMBX, 3, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (Arg1, MAIN)
                Store (MADT, Local2)
                Return (Local2)
            }
            Else
            {
                Store (Arg1, MAIN)
                Store (Arg2, MADT)
                Store (Zero, Local2)
                Return (Local2)
            }
        }

        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (TSDL, Package (0x0A)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS"
            })
            Name (TMPV, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (PSDL, Package (0x04)
            {
                Zero, 
                "Power 0", 
                Zero, 
                "Power 1"
            })
            Name (PWRV, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (OSDL, Package (0x06)
            {
                0x04, 
                "Fan RPM", 
                "RPM", 
                0x0C, 
                "Battery Capacity", 
                "mAh"
            })
            Name (OSDV, Package (0x02)
            {
                Zero, 
                Zero
            })
            Method (TSDD, 0, NotSerialized)
            {
                Store (Add (Multiply (DTS1, 0x0A), 0x0AAC), Index (TMPV, 
                    Zero))
                Store (Add (Multiply (DTS2, 0x0A), 0x0AAC), Index (TMPV, 
                    One))
                Store (Add (Multiply (DTS3, 0x0A), 0x0AAC), Index (TMPV, 
                    0x02))
                Store (Add (Multiply (DTS4, 0x0A), 0x0AAC), Index (TMPV, 
                    0x03))
                Store (Add (Multiply (PDTS, 0x0A), 0x0AAC), Index (TMPV, 
                    0x04))
                Return (TMPV)
            }

            Method (PSDD, 0, NotSerialized)
            {
                Return (PWRV)
            }

            Method (OSDD, 0, NotSerialized)
            {
                Return (OSDV)
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x6C, 
                0x68, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })
            Method (PADT, 0, NotSerialized)
            {
                If (PAMT)
                {
                    Return (PADA)
                }

                Return (PADD)
            }

            Method (RPMD, 0, NotSerialized)
            {
                Name (MTMP, Buffer (0x1A) {})
                Store ("RPMD", Debug)
                Store (AMBX (Zero, 0x8AFB, Zero), Local0)
                Store (Local0, Debug)
                Store (AMBX (Zero, 0x8BFB, Zero), Index (MTMP, 0x05))
                Store (AMBX (Zero, 0x8CFB, Zero), Index (MTMP, 0x06))
                Store (AMBX (Zero, 0x8DFB, Zero), Index (MTMP, 0x07))
                Store (AMBX (Zero, 0x8EFB, Zero), Index (MTMP, 0x08))
                Store (AMBX (Zero, 0x8FFB, Zero), Index (MTMP, 0x09))
                Store (AMBX (Zero, 0x90FB, Zero), Index (MTMP, 0x0A))
                Store (AMBX (Zero, 0x91FB, Zero), Index (MTMP, 0x0B))
                Store (AMBX (Zero, 0x92FB, Zero), Index (MTMP, 0x0C))
                Store (AMBX (Zero, 0x93FB, Zero), Index (MTMP, 0x0D))
                Store (AMBX (Zero, 0x94FB, Zero), Index (MTMP, 0x0E))
                Store (AMBX (Zero, 0x95FB, Zero), Index (MTMP, 0x0F))
                Store (AMBX (Zero, 0x96FB, Zero), Index (MTMP, 0x10))
                Store (AMBX (Zero, 0x97FB, Zero), Index (MTMP, 0x11))
                Store (AMBX (Zero, 0x98FB, Zero), Index (MTMP, 0x12))
                Store (AMBX (Zero, 0x99FB, Zero), Index (MTMP, 0x13))
                Store (AMBX (Zero, 0x9AFB, Zero), Index (MTMP, 0x14))
                Store (AMBX (Zero, 0x9BFB, Zero), Index (MTMP, 0x15))
                Store (AMBX (Zero, 0x9CFB, Zero), Index (MTMP, 0x16))
                Store (AMBX (Zero, 0x9DFB, Zero), Index (MTMP, 0x17))
                Store (AMBX (Zero, 0x9EFB, Zero), Index (MTMP, 0x18))
                Store (AMBX (Zero, 0x9FFB, Zero), Index (MTMP, 0x19))
                Store (AMBX (Zero, 0x86FB, Zero), Index (MTMP, Zero))
                Store (AMBX (Zero, 0x87FB, Zero), Index (MTMP, One))
                Store (AMBX (Zero, 0x88FB, Zero), Index (MTMP, 0x02))
                Store (AMBX (Zero, 0x89FB, Zero), Index (MTMP, 0x03))
                Store (MTMP, Debug)
                Return (MTMP)
            }

            Method (WPMD, 1, NotSerialized)
            {
                If (LNotEqual (SizeOf (Arg0), 0x1A))
                {
                    Store (SizeOf (Arg0), Debug)
                    Store (Arg0, Debug)
                    Return (Ones)
                }

                Store ("WPMD", Debug)
                Store (Arg0, Debug)
                AMBX (One, 0x8AFB, DerefOf (Index (Arg0, 0x04)))
                AMBX (One, 0x8BFB, DerefOf (Index (Arg0, 0x05)))
                AMBX (One, 0x8CFB, DerefOf (Index (Arg0, 0x06)))
                AMBX (One, 0x8DFB, DerefOf (Index (Arg0, 0x07)))
                AMBX (One, 0x8EFB, DerefOf (Index (Arg0, 0x08)))
                AMBX (One, 0x8FFB, DerefOf (Index (Arg0, 0x09)))
                AMBX (One, 0x90FB, DerefOf (Index (Arg0, 0x0A)))
                AMBX (One, 0x91FB, DerefOf (Index (Arg0, 0x0B)))
                AMBX (One, 0x92FB, DerefOf (Index (Arg0, 0x0C)))
                AMBX (One, 0x93FB, DerefOf (Index (Arg0, 0x0D)))
                AMBX (One, 0x94FB, DerefOf (Index (Arg0, 0x0E)))
                AMBX (One, 0x95FB, DerefOf (Index (Arg0, 0x0F)))
                AMBX (One, 0x96FB, DerefOf (Index (Arg0, 0x10)))
                AMBX (One, 0x97FB, DerefOf (Index (Arg0, 0x11)))
                AMBX (One, 0x98FB, DerefOf (Index (Arg0, 0x12)))
                AMBX (One, 0x99FB, DerefOf (Index (Arg0, 0x13)))
                AMBX (One, 0x9AFB, DerefOf (Index (Arg0, 0x14)))
                AMBX (One, 0x9BFB, DerefOf (Index (Arg0, 0x15)))
                AMBX (One, 0x9CFB, DerefOf (Index (Arg0, 0x16)))
                AMBX (One, 0x9DFB, DerefOf (Index (Arg0, 0x17)))
                AMBX (One, 0x9EFB, DerefOf (Index (Arg0, 0x18)))
                AMBX (One, 0x9FFB, DerefOf (Index (Arg0, 0x19)))
                AMBX (One, 0x86FB, DerefOf (Index (Arg0, Zero)))
                AMBX (One, 0x87FB, DerefOf (Index (Arg0, One)))
                AMBX (One, 0x88FB, DerefOf (Index (Arg0, 0x02)))
                AMBX (One, 0x89FB, DerefOf (Index (Arg0, 0x03)))
                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                Store ("ISPC", Debug)
                AMBX (One, 0x10FF, 0x60)
                Store (AMBX (Zero, 0x10FF, Zero), Local0)
                While (Local0)
                {
                    Store (AMBX (Zero, 0x10FF, Zero), Local0)
                }

                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                AMBX (One, 0x10FF, 0x61)
                Store (AMBX (Zero, 0x10FF, Zero), Local0)
                While (Local0)
                {
                    Store (AMBX (Zero, 0x10FF, Zero), Local0)
                }

                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                Store ("RPCS", Debug)
                AMBX (One, 0x10FF, 0x65)
                Store (AMBX (Zero, 0x10FF, Zero), Local0)
                While (Local0)
                {
                    Store (AMBX (Zero, 0x10FF, Zero), Local0)
                }

                Store (AMBX (Zero, 0x80FB, Zero), Local0)
                Store (Local0, Debug)
                Return (Local0)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)
                AMBX (One, 0x10FF, 0x64)
                Store (AMBX (Zero, 0x10FF, Zero), Local0)
                While (Local0)
                {
                    Store (AMBX (Zero, 0x10FF, Zero), Local0)
                }

                Store (AMBX (Zero, 0x82FB, Zero), Local1)
                Or (Local0, Local1, Local0)
                Store (AMBX (Zero, 0x83FB, Zero), Local1)
                Or (Local0, ShiftLeft (Local1, 0x08), Local0)
                Store (AMBX (Zero, 0x84FB, Zero), Local1)
                Or (Local0, ShiftLeft (Local1, 0x10), Local0)
                Store (AMBX (Zero, 0x85FB, Zero), Local1)
                Or (Local0, ShiftLeft (Local1, 0x18), Local0)
                Return (Local0)
            }
        }
    }
}

