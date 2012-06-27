/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120620-64 [Jun 24 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of ssdt1.dat, Wed Jun 27 18:56:27 2012
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000A3C (2620)
 *     Revision         0x01
 *     Checksum         0x83
 *     OEM ID           "DptfTa"
 *     OEM Table ID     "DptfTab"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */

DefinitionBlock ("ssdt1.aml", "SSDT", 1, "DptfTa", "DptfTab", 0x00001000)
{
    External (\_PR_.AAC0, IntObj)
    External (\_PR_.ACRT, IntObj)
    External (\_PR_.APSV, IntObj)
    External (\_SB_.PCI0, DeviceObj)
    External (\_SB_.PCI0.B0D4, DeviceObj)
    External (\_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (\_SB_.PCI0.MHBR, IntObj)
    External (\_TZ_.THRM)
    External (CTSP)
    External (DASP)
    External (DCSP)
    External (DMSP)
    External (DPSP)
    External (LPSP)
    External (MHBR)

    Scope (\)
    {
        Method (TNOT, 0, NotSerialized)
        {
            Notify (\_TZ.THRM, 0x80)
        }
    }

    Scope (\_SB)
    {
        Device (IETM)
        {
            Name (_HID, EisaId ("INT3400"))  // _HID: Hardware ID
            Name (TMPP, Package (0x06)
            {
                Buffer (0x10)
                {
                    /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }, 

                Buffer (0x10)
                {
                    /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }, 

                Buffer (0x10)
                {
                    /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }, 

                Buffer (0x10)
                {
                    /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }, 

                Buffer (0x10)
                {
                    /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }, 

                Buffer (0x10)
                {
                    /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }
            })
            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Method (IDSP, 0, Serialized)
            {
                Name (TMPI, Zero)
                If (CondRefOf (DPSP))
                {
                    Store (DerefOf (Index (DPSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (CondRefOf (DASP))
                {
                    Store (DerefOf (Index (DASP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (CondRefOf (DCSP))
                {
                    Store (DerefOf (Index (DCSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (CondRefOf (DMSP))
                {
                    Store (DerefOf (Index (DMSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (CondRefOf (LPSP))
                {
                    Store (DerefOf (Index (LPSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (CondRefOf (CTSP))
                {
                    Store (DerefOf (Index (CTSP, Zero)), Index (TMPP, TMPI))
                }

                Return (TMPP)
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (NUMP, Zero)
                Name (UID2, Buffer (0x10)
                {
                    /* 0000 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                    /* 0008 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
                })
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                IDSP ()
                Store (SizeOf (TMPP), NUMP)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, Zero, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                While (NUMP)
                {
                    Store (DerefOf (Index (TMPP, Subtract (NUMP, One))), UID2)
                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (
                        LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        Break
                    }

                    Decrement (NUMP)
                }

                If (LEqual (NUMP, Zero))
                {
                    And (STS1, 0xFFFFFF00, STS1)
                    Or (STS1, 0x06, STS1)
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    And (STS1, 0xFFFFFF00, STS1)
                    Or (STS1, 0x0A, STS1)
                    Return (Arg3)
                }

                If (LNotEqual (Arg2, 0x02))
                {
                    And (STS1, 0xFFFFFF00, STS1)
                    Or (STS1, 0x02, STS1)
                    Return (Arg3)
                }

                If (LAnd (CondRefOf (DPSP), CondRefOf (\_PR.APSV)))
                {
                    If (LEqual (PSEM, Zero))
                    {
                        Store (One, PSEM)
                        Store (\_PR.APSV, PTRP)
                    }

                    Store (DerefOf (Index (DPSP, Zero)), UID2)
                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (
                        LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        If (Not (And (STS1, One)))
                        {
                            If (And (CAP1, One))
                            {
                                Store (0x6E, \_PR.APSV)
                            }
                            Else
                            {
                                Store (PTRP, \_PR.APSV)
                            }

                            Notify (\_TZ.THRM, 0x80)
                        }

                        Return (Arg3)
                    }
                }

                If (LAnd (CondRefOf (DASP), CondRefOf (\_PR.AAC0)))
                {
                    If (LEqual (ASEM, Zero))
                    {
                        Store (One, ASEM)
                        Store (\_PR.AAC0, ATRP)
                    }

                    Store (DerefOf (Index (DASP, Zero)), UID2)
                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (
                        LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        If (Not (And (STS1, One)))
                        {
                            If (And (CAP1, One))
                            {
                                Store (0x6E, \_PR.AAC0)
                            }
                            Else
                            {
                                Store (ATRP, \_PR.AAC0)
                            }

                            Notify (\_TZ.THRM, 0x80)
                        }

                        Return (Arg3)
                    }
                }

                If (LAnd (CondRefOf (DCSP), CondRefOf (\_PR.ACRT)))
                {
                    If (LEqual (YSEM, Zero))
                    {
                        Store (One, YSEM)
                        Store (\_PR.ACRT, YTRP)
                    }

                    Store (DerefOf (Index (DCSP, Zero)), UID2)
                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (
                        LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        If (Not (And (STS1, One)))
                        {
                            If (And (CAP1, One))
                            {
                                Store (0xD2, \_PR.ACRT)
                            }
                            Else
                            {
                                Store (YTRP, \_PR.ACRT)
                            }

                            Notify (\_TZ.THRM, 0x80)
                        }

                        Return (Arg3)
                    }
                }

                Return (Arg3)
            }

            Method (KTOC, 1, NotSerialized)
            {
                Subtract (Arg0, 0x0AAC, Local1)
                If (LGreater (Local1, Zero))
                {
                    Return (Divide (Local1, 0x0A, ))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (CTOK, 1, NotSerialized)
            {
                If (And (Arg0, 0x1000))
                {
                    Return (0x0944)
                }

                Multiply (Arg0, 0x0A, Local0)
                And (Local0, 0x0FFF, Local1)
                Add (Local1, 0x0AAC, Local2)
                Return (Local2)
            }
        }
    }

    Scope (\_SB.PCI0.B0D4)
    {
        OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x5000), 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            MNTR,   8
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (TMEM)
        {
            Name (_HID, EisaId ("INT3402"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (SAUX, 0x10)
            Name (LSTM, Zero)
            Name (_STA, 0x0F)  // _STA: Status
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (0x0BB8)
            }

            Name (PATC, 0x02)
            Name (AT0, Ones)
            Method (PAT0, 1, NotSerialized)
            {
            }

            Name (AT1, Ones)
            Method (PAT1, 1, NotSerialized)
            {
            }

            Name (GTSH, 0x14)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM)
                Notify (TMEM, 0x91)
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (PGMB, 0, NotSerialized)
            {
                Return (\_SB.PCI0.MHBR)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Device (TFN1)
        {
            Name (_HID, EisaId ("INT3404"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (FON, One)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_FIF, 0, NotSerialized)  // _FIF: Fan Information
            {
                Return (Package (0x04)
                {
                    Zero, 
                    One, 
                    0x02, 
                    Zero
                })
            }

            Method (_FPS, 0, NotSerialized)  // _FPS: Fan Performance States
            {
                Return (Package (0x0D)
                {
                    Zero, 
                    Package (0x05)
                    {
                        0x64, 
                        Ones, 
                        0x1B58, 
                        0x01F4, 
                        0x1388
                    }, 

                    Package (0x05)
                    {
                        0x5F, 
                        Ones, 
                        0x19FA, 
                        0x01DB, 
                        0x128E
                    }, 

                    Package (0x05)
                    {
                        0x5A, 
                        Ones, 
                        0x189C, 
                        0x01C2, 
                        0x1194
                    }, 

                    Package (0x05)
                    {
                        0x55, 
                        Ones, 
                        0x173E, 
                        0x01A9, 
                        0x109A
                    }, 

                    Package (0x05)
                    {
                        0x50, 
                        Ones, 
                        0x15E0, 
                        0x0190, 
                        0x0FA0
                    }, 

                    Package (0x05)
                    {
                        0x4B, 
                        Ones, 
                        0x1482, 
                        0x0177, 
                        0x0EA6
                    }, 

                    Package (0x05)
                    {
                        0x46, 
                        Ones, 
                        0x1324, 
                        0x015E, 
                        0x0DAC
                    }, 

                    Package (0x05)
                    {
                        0x3C, 
                        Ones, 
                        0x1068, 
                        0x012C, 
                        0x0BB8
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        Ones, 
                        0x0DAC, 
                        0xFA, 
                        0x09C4
                    }, 

                    Package (0x05)
                    {
                        0x28, 
                        Ones, 
                        0x0AF0, 
                        0xC8, 
                        0x07D0
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        Ones, 
                        0x06D6, 
                        0x7D, 
                        0x04E2
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        Ones, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }

            Method (_FSL, 1, Serialized)  // _FSL: Fan Set Level
            {
                Notify (\_SB.IETM, 0x83)
            }

            Name (TFST, Package (0x03)
            {
                Zero, 
                Ones, 
                Ones
            })
            Method (_FST, 0, NotSerialized)  // _FST: Fan Status
            {
                Return (TFST)
            }
        }

        Device (TSKN)
        {
            Name (_HID, EisaId ("INT3403"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (HITP, 0x64)
            Name (SAUX, 0x10)
            Name (_STR, Unicode ("Skin Temperature Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0BB8)
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x14)
        }

        Device (TAMB)
        {
            Name (_HID, EisaId ("INT3403"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (HITP, 0x64)
            Name (AAUX, 0x10)
            Name (_STR, Unicode ("Ambience Temperature Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0BB8)
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x14)
        }

        Device (T_VR)
        {
            Name (_HID, EisaId ("INT3403"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (HITP, 0x64)
            Name (VAUX, 0x10)
            Name (_STR, Unicode ("VR Temperature Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0BB8)
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x14)
        }

        Device (TEFN)
        {
            Name (_HID, EisaId ("INT3403"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (HITP, 0x64)
            Name (EAUX, 0x10)
            Name (_STR, Unicode ("Exhaust Fan Temperature Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0BB8)
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x14)
        }
    }
}

