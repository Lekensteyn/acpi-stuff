/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Wed May 18 11:48:39 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003361 (13153)
 *     Revision         0x01
 *     Checksum         0xF1
 *     OEM ID           "NvdRef"
 *     OEM Table ID     "NvdTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("ssdt2.aml", "SSDT", 1, "NvdRef", "NvdTabl", 0x00001000)
{

    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GFX0.CLID, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCL, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.DD02._BQC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.GLID, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GPUS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.HHS_, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.IORD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LID2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.PSBB, FieldUnitObj)
    External (_SB_.PCI0.P0P2, DeviceObj)
    External (_SB_.PCI0.P0P2.PEGP, DeviceObj)
    External (_SB_.PCI0.P0P2.PEGP._ADR, IntObj)
    External (_SB_.PCI0.WMID.BAEF, IntObj)
    External (ASLB, FieldUnitObj)
    External (CMSD, FieldUnitObj)
    External (CMSI, FieldUnitObj)
    External (CMSR, MethodObj)    // 1 Arguments
    External (DID1, FieldUnitObj)
    External (DID2, FieldUnitObj)
    External (DID3, FieldUnitObj)
    External (DID4, FieldUnitObj)
    External (DID5, FieldUnitObj)
    External (DID6, FieldUnitObj)
    External (DID7, FieldUnitObj)
    External (DID8, FieldUnitObj)
    External (DSEN, FieldUnitObj)
    External (EBAS, FieldUnitObj)
    External (LIDS, FieldUnitObj)
    External (NDID, FieldUnitObj)
    External (NVGA, FieldUnitObj)
    External (NVHA, FieldUnitObj)
    External (OTMS, FieldUnitObj)
    External (P8XH, MethodObj)    // 3 Arguments
    External (PEBS, IntObj)
    External (PWRS, FieldUnitObj)

    Scope (\_SB.PCI0.P0P2.PEGP)
    {
        OperationRegion (GPIO, SystemIO, 0x0500, 0x60)
        Field (GPIO, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
            Offset (0x0E), 
            PO16,   1, 
            PI17,   1, 
            Offset (0x38), 
                ,   3, 
            PO35,   1, 
            PO36,   1, 
            PI37,   1, 
                ,   14, 
            PO52,   1, 
            PO53,   1, 
            Offset (0x48), 
                ,   3, 
            PO67,   1
        }
    }

    Scope (\_SB.PCI0.P0P2)
    {
        Name (B0D1, Zero)
        OperationRegion (RPCI, SystemMemory, B0D1 = (PEBS | 0x8000), 0x1000)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0x1FC), 
                ,   9, 
            UDAP,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x224), 
            Offset (0x225), 
            DQDA,   1, 
            Offset (0xC28), 
            HCLQ,   1, 
            Offset (0xC34), 
                ,   30, 
            PEDQ,   1, 
            PIDQ,   1, 
            Offset (0xDFC), 
            PEPO,   3, 
            Offset (0xE08), 
                ,   31, 
            ROE0,   1, 
            Offset (0xE28), 
                ,   31, 
            ROE1,   1, 
            Offset (0xE48), 
                ,   31, 
            ROE2,   1, 
            Offset (0xE68), 
                ,   31, 
            ROE3,   1, 
            Offset (0xE88), 
                ,   31, 
            ROE4,   1, 
            Offset (0xEA8), 
                ,   31, 
            ROE5,   1, 
            Offset (0xEC8), 
                ,   31, 
            ROE6,   1, 
            Offset (0xEE8), 
                ,   31, 
            ROE7,   1, 
            Offset (0xF08), 
                ,   31, 
            ROE8,   1, 
            Offset (0xF28), 
                ,   31, 
            ROE9,   1, 
            Offset (0xF48), 
                ,   31, 
            ROEA,   1, 
            Offset (0xF68), 
                ,   31, 
            ROEB,   1, 
            Offset (0xF88), 
                ,   31, 
            ROEC,   1, 
            Offset (0xFA8), 
                ,   31, 
            ROED,   1, 
            Offset (0xFC8), 
                ,   31, 
            ROEE,   1, 
            Offset (0xFE8), 
                ,   31, 
            ROEF,   1
        }

        OperationRegion (DMIB, SystemMemory, 0xFED18000, 0x1000)
        Field (DMIB, DWordAcc, Lock, Preserve)
        {
            Offset (0xC34), 
            LLGE,   1, 
                ,   28, 
            PCGE,   1, 
                ,   1, 
            LGGE,   1
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            OperationRegion (PEAU, PCI_Config, Zero, 0xFF)
            Field (PEAU, ByteAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                SSID,   32
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (RPCI, SystemMemory, PEBS, 0x0100)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0x54), 
                ,   1, 
            D1EN,   1
        }
    }

    Scope (\_SB.PCI0.P0P2.PEGP)
    {
        OperationRegion (PCIS, SystemMemory, EBAS, 0x0100)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            X000,   32, 
            X004,   8, 
            Offset (0x40), 
            SSID,   32
        }

        OperationRegion (NVHM, SystemMemory, NVHA, 0x00010400)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            Offset (0x100), 
            NVHO,   32, 
            RVBS,   32, 
            Offset (0x180), 
            TNDI,   8, 
            DGND,   8, 
            IGND,   8, 
            Offset (0x190), 
            Offset (0x1B0), 
            DDI1,   32, 
            DDI2,   32, 
            DDI3,   32, 
            DDI4,   32, 
            DDI5,   32, 
            DDI6,   32, 
            DDI7,   32, 
            DDI8,   32, 
            Offset (0x200), 
            Offset (0x220), 
            Offset (0x240), 
            Offset (0x260), 
            DCP1,   32, 
            DCP2,   32, 
            DCP3,   32, 
            DCP4,   32, 
            DCP5,   32, 
            DCP6,   32, 
            DCP7,   32, 
            DCP8,   32, 
            DCA1,   32, 
            DCA2,   32, 
            DCA3,   32, 
            DCA4,   32, 
            DCA5,   32, 
            DCA6,   32, 
            DCA7,   32, 
            DCA8,   32, 
            DNA1,   32, 
            DNA2,   32, 
            DNA3,   32, 
            DNA4,   32, 
            DNA5,   32, 
            DNA6,   32, 
            DNA7,   32, 
            DNA8,   32, 
            Offset (0x3C0), 
            RAPM,   8, 
            EAPM,   8, 
            TSLC,   16, 
            DNDI,   8, 
            Offset (0x400), 
            RBF1,   262144, 
            RBF2,   262144
        }

        OperationRegion (NVIA, SystemMemory, 0xF0101000, 0xFF)
        Field (NVIA, DWordAcc, Lock, Preserve)
        {
            Offset (0x40), 
            ASID,   32
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            X004 = 0x06
            \_SB.PCI0.P0P2.PEGP._ADR = Zero
        }

        Name (VSID, Zero)
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            If ((\_SB.PCI0.D1EN == Zero))
            {
                D1EN = One
                Sleep (0xC8)
                Notify (\_SB.PCI0, Zero) // Bus Check
            }

            If (Ones)
            {
                \_SB.PCI0.P0P2.PEGP.PO16 = Zero
            }
            Else
            {
                \_SB.PCI0.P0P2.PEGP.PO16 = One
            }

            Sleep (0x64)
            If (Zero)
            {
                \_SB.PCI0.P0P2.PEGP.PO36 = Zero
            }
            Else
            {
                \_SB.PCI0.P0P2.PEGP.PO36 = One
            }

            Sleep (0x64)
            PO35 = One
            Sleep (0x012C)
            If (Zero)
            {
                \_SB.PCI0.P0P2.PEGP.PO16 = Zero
            }
            Else
            {
                \_SB.PCI0.P0P2.PEGP.PO16 = One
            }

            Sleep (0x64)
            LLGE = Zero
            LGGE = Zero
            PEPO = Zero
            ROE0 = Zero
            ROE1 = Zero
            ROE2 = Zero
            ROE3 = Zero
            ROE4 = Zero
            ROE5 = Zero
            ROE6 = Zero
            ROE7 = Zero
            ROE8 = Zero
            ROE9 = Zero
            ROEA = Zero
            ROEB = Zero
            ROEC = Zero
            ROED = Zero
            ROEE = Zero
            ROEF = Zero
            HCLQ = Zero
            UDAP = Zero
            PEDQ = Zero
            LNKD = Zero
            LLGE = One
            LGGE = One
            While ((LNKS < 0x07))
            {
                Sleep (One)
            }

            Local0 = CMSR (0x79)
            If ((Local0 == 0x02))
            {
                ASID = 0x04651025
                SSID = 0x04651025
            }
            Else
            {
                ASID = 0x035B1025
                SSID = 0x035B1025
            }

            \_SB.PCI0.P0P2.PEGA.SSID = VSID /* \_SB_.PCI0.P0P2.PEGP.VSID */
            \_SB.PCI0.LPCB.EC0.GPUS = Zero
            Notify (\_SB.PCI0.P0P2, Zero) // Bus Check
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            \_SB.PCI0.LPCB.EC0.GPUS = One
            VSID = SSID /* \_SB_.PCI0.P0P2.PEGP.SSID */
            LLGE = Zero
            LGGE = Zero
            LNKD = One
            While ((LNKS != Zero))
            {
                Sleep (One)
            }

            PEDQ = One
            LNKD = Zero
            While ((PIDQ != One))
            {
                Sleep (One)
            }

            HCLQ = One
            UDAP = One
            PEPO = 0x07
            ROE0 = One
            ROE1 = One
            ROE2 = One
            ROE3 = One
            ROE4 = One
            ROE5 = One
            ROE6 = One
            ROE7 = One
            ROE8 = One
            ROE9 = One
            ROEA = One
            ROEB = One
            ROEC = One
            ROED = One
            ROEE = One
            ROEF = One
            LLGE = One
            LGGE = One
            If (Ones)
            {
                \_SB.PCI0.P0P2.PEGP.PO16 = Zero
            }
            Else
            {
                \_SB.PCI0.P0P2.PEGP.PO16 = One
            }

            PO35 = Zero
            If (Ones)
            {
                \_SB.PCI0.P0P2.PEGP.PO36 = Zero
            }
            Else
            {
                \_SB.PCI0.P0P2.PEGP.PO36 = One
            }

            If ((\_SB.PCI0.D1EN == One))
            {
                D1EN = Zero
                Sleep (0xC8)
                Notify (\_SB.PCI0, Zero) // Bus Check
            }

            Notify (\_SB.PCI0.P0P2, Zero) // Bus Check
        }

        Name (_IRC, Zero)  // _IRC: Inrush Current
        Method (_STA, 0, Serialized)  // _STA: Status
        {
            If ((OTMS == One))
            {
                HDAB = Zero
                Return (0x0F)
            }
            ElseIf (Zero)
            {
                If ((\_SB.PCI0.P0P2.PEGP.PO36 == Zero))
                {
                    Return (0x0F)
                }
            }
            ElseIf ((\_SB.PCI0.P0P2.PEGP.PO36 == One))
            {
                Return (0x0F)
            }
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Local0 = Arg0
            Local1 = Arg1
            If ((Local1 > 0x1000))
            {
                Local1 = 0x1000
            }

            If ((Local0 > 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                             /* . */
                })
            }

            If ((Local0 > RVBS))
            {
                Return (Buffer (Local1)
                {
                     0x00                                             /* . */
                })
            }

            Local3 = (Local1 * 0x08)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                             /* . */
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                             /* . */
            })
            If ((Local0 < 0x8000))
            {
                ROM1 = RBF1 /* \_SB_.PCI0.P0P2.PEGP.RBF1 */
            }
            Else
            {
                Local0 -= 0x8000
                ROM1 = RBF2 /* \_SB_.PCI0.P0P2.PEGP.RBF2 */
            }

            Local2 = (Local0 * 0x08)
            CreateField (ROM1, Local2, Local3, TMPB)
            ROM2 = TMPB /* \_SB_.PCI0.P0P2.PEGP._ROM.TMPB */
            Return (ROM2) /* \_SB_.PCI0.P0P2.PEGP._ROM.ROM2 */
        }

        Method (MXMX, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                If (Ones)
                {
                    \_SB.PCI0.P0P2.PEGP.PO67 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO67 = One
                }

                P8XH (One, 0x99, P8XH (Zero, Zero, Return (One)))
            }

            If ((Arg0 == One))
            {
                P8XH (One, 0x99, P8XH (Zero, One, Return (One)))
            }

            If ((Arg0 == 0x02))
            {
                P8XH (One, 0x99, P8XH (Zero, 0x02, Return (!\_SB.PCI0.P0P2.PEGP.PO67)))
            }

            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (!\_SB.PCI0.P0P2.PEGP.PO52)
            }

            If ((Arg0 == One))
            {
                If (Ones)
                {
                    \_SB.PCI0.P0P2.PEGP.PO52 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO52 = One
                }
            }

            Return (Zero)
        }

        Name (MXM3, Buffer (0x45)
        {
            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x3D, 0x00,  /* MXM_..=. */
            /* 0008 */  0x30, 0x10, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* 0....>.. */
            /* 0010 */  0x00, 0x01, 0x8A, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* .....>.. */
            /* 0018 */  0x60, 0x79, 0xD0, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  /* `y...>.. */
            /* 0020 */  0x20, 0x2B, 0xE2, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  /*  +...>.. */
            /* 0028 */  0x60, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  /* `l...>.. */
            /* 0030 */  0x01, 0x90, 0x01, 0x00, 0x03, 0x00, 0x90, 0x01,  /* ........ */
            /* 0038 */  0x13, 0x00, 0x90, 0x01, 0xE5, 0x0D, 0x01, 0x01,  /* ........ */
            /* 0040 */  0x01, 0x00, 0x00, 0x00, 0x96                     /* ..... */
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((OTMS == One))
            {
                Return (\_SB.PCI0.GFX0._DSM (Arg0, Arg1, Arg2, Arg3))
            }
            ElseIf ((Arg0 == ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x01                           /* .... */
                    })
                }
                ElseIf ((_T_0 == 0x18))
                {
                    Return (Buffer (0x04)
                    {
                         0x00, 0x03, 0x00, 0x00                           /* .... */
                    })
                }
                ElseIf ((_T_0 == 0x10))
                {
                    If ((Arg1 == 0x0300))
                    {
                        Return (MXM3) /* \_SB_.PCI0.P0P2.PEGP.MXM3 */
                    }
                }

                Return (0x80000002)
            }
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (Package (0x03)
            {
                0x0110, 
                0x80000100, 
                0x80087330
            })
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD01._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI1 != Zero))
                {
                    If ((DCA1 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI1))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI1))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI1 != Zero))
                {
                    If ((DNA1 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI1))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI1))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD02._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI2 != Zero))
                {
                    If ((\_SB.PCI0.LPCB.EC0.LID2 == One))
                    {
                        Return (Zero)
                    }
                    ElseIf ((DCA1 == DDI2))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI2 != Zero))
                {
                    If ((DNA1 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI2))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI2))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (\_SB.PCI0.GFX0.DD02._BCL ())
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.DD02._BQC ())
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                Return (\_SB.PCI0.GFX0.DD02._BCM (Arg0))
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD03._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI3 != Zero))
                {
                    If ((DCA1 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI3))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI3))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI3 != Zero))
                {
                    If ((DNA1 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI3))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI3))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD04._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI4 != Zero))
                {
                    If ((DCA1 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI4))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI4))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI4 != Zero))
                {
                    If ((DNA1 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI4))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI4))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD05._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI5 != Zero))
                {
                    If ((DCA1 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI5))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI5))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI5 != Zero))
                {
                    If ((DNA1 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI5))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI5))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD06._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI6 != Zero))
                {
                    If ((DCA1 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI6))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI6))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI6 != Zero))
                {
                    If ((DNA1 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI6))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI6))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD07._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI7 != Zero))
                {
                    If ((DCA1 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI7))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI7))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI7 != Zero))
                {
                    If ((DNA1 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI7))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI7))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD08._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If ((DDI8 != Zero))
                {
                    If ((DCA1 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA2 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA3 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA4 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA5 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA6 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA7 == DDI8))
                    {
                        Return (0x1F)
                    }

                    If ((DCA8 == DDI8))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((DDI8 != Zero))
                {
                    If ((DNA1 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA2 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA3 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA4 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA5 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA6 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA7 == DDI8))
                    {
                        Return (One)
                    }

                    If ((DNA8 == DDI8))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            TLPK [Zero] = IDI1 /* \_SB_.PCI0.GFX0.IDI1 */
            TLPK [0x02] = IDI2 /* \_SB_.PCI0.GFX0.IDI2 */
            TLPK [0x04] = IDI3 /* \_SB_.PCI0.GFX0.IDI3 */
            TLPK [0x06] = IDI4 /* \_SB_.PCI0.GFX0.IDI4 */
            TLPK [0x08] = IDI5 /* \_SB_.PCI0.GFX0.IDI5 */
            TLPK [0x0A] = IDI6 /* \_SB_.PCI0.GFX0.IDI6 */
            TLPK [0x0C] = IDI7 /* \_SB_.PCI0.GFX0.IDI7 */
            TLPK [0x0E] = IDI8 /* \_SB_.PCI0.GFX0.IDI8 */
            TLPK [0x10] = IDI1 /* \_SB_.PCI0.GFX0.IDI1 */
            TLPK [0x11] = IDI2 /* \_SB_.PCI0.GFX0.IDI2 */
            TLPK [0x13] = IDI1 /* \_SB_.PCI0.GFX0.IDI1 */
            TLPK [0x14] = IDI3 /* \_SB_.PCI0.GFX0.IDI3 */
            TLPK [0x16] = IDI1 /* \_SB_.PCI0.GFX0.IDI1 */
            TLPK [0x17] = IDI4 /* \_SB_.PCI0.GFX0.IDI4 */
            TLPK [0x19] = IDI1 /* \_SB_.PCI0.GFX0.IDI1 */
            TLPK [0x1A] = IDI5 /* \_SB_.PCI0.GFX0.IDI5 */
            TLPK [0x1C] = IDI2 /* \_SB_.PCI0.GFX0.IDI2 */
            TLPK [0x1D] = IDI6 /* \_SB_.PCI0.GFX0.IDI6 */
        }

        Method (MXMX, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                If (Zero)
                {
                    \_SB.PCI0.P0P2.PEGP.PO67 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO67 = One
                }

                P8XH (One, 0x77, P8XH (Zero, Zero, Return (One)))
            }

            If ((Arg0 == One))
            {
                P8XH (One, 0x77, P8XH (Zero, One, Return (One)))
            }

            If ((Arg0 == 0x02))
            {
                P8XH (One, 0x77, P8XH (Zero, 0x02, Return (\_SB.PCI0.P0P2.PEGP.PO67)))
            }

            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (\_SB.PCI0.P0P2.PEGP.PO52)
            }

            If ((Arg0 == One))
            {
                If (Zero)
                {
                    \_SB.PCI0.P0P2.PEGP.PO52 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO52 = One
                }
            }

            Return (Zero)
        }

        OperationRegion (NVIG, SystemMemory, NVGA, 0x0400)
        Field (NVIG, AnyAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            Offset (0x100), 
            HGEN,   8, 
            GOMC,   8, 
            GPSC,   8, 
            GPCS,   8, 
            GPRC,   8, 
            MHPC,   8, 
            MDAC,   8, 
            EJCA,   8, 
            Offset (0x180), 
            IDI1,   32, 
            IDI2,   32, 
            IDI3,   32, 
            IDI4,   32, 
            IDI5,   32, 
            IDI6,   32, 
            IDI7,   32, 
            IDI8,   32, 
            INDI,   8, 
            DGPN,   8, 
            Offset (0x1B0), 
            GPSS,   32, 
            CGPU,   32, 
            Offset (0x200), 
            GACD,   16, 
            GATD,   16, 
            GNAD,   16, 
            TLST,   8, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            PDHS,   8, 
            Offset (0x2E0), 
            HGNC,   8, 
            HENC,   8, 
            Offset (0x300), 
            GUPM,   8, 
            GPPO,   8, 
            Offset (0x310), 
            UBDM,   8, 
            USPM,   8, 
            UTCM,   8, 
            UTPM,   8, 
            Offset (0x3C0), 
            GBDP,   8, 
            GPSP,   8, 
            PTVC,   8, 
            PTVF,   8, 
            ELPT,   8, 
            TLSN,   8
        }

        Name (TLPK, Package (0x1F)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Local0 = (Arg2 & 0xFF)
            If ((Arg0 == ToUUID ("7ed873d3-c2d0-4e4f-a854-0f1317b01c2c")))
            {
                If ((Arg2 == Zero))
                {
                    Return (Unicode ("\x03"))
                }

                If ((Arg2 == One))
                {
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x02)
                        {
                            0x0110, 
                            Buffer (0x04)
                            {
                                 0x02, 0x03, 0x03, 0x00                           /* .... */
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80000100, 
                            Buffer (0x04)
                            {
                                 0x01, 0x03, 0x03, 0x00                           /* .... */
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80007330, 
                            Buffer (0x04)
                            {
                                 0x04, 0x03, 0x03, 0x03                           /* .... */
                            }
                        }
                    })
                }

                Return (One)
            }

            If ((Arg0 == ToUUID ("9d95a0a0-0060-4d48-b34d-7e5fea129fd4")))
            {
                If ((Arg2 == Zero))
                {
                    Return (Unicode ("\x7F"))
                }

                If ((Arg2 == One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    STS0 = Zero
                    STS0 |= HGEN /* \_SB_.PCI0.GFX0.HGEN */
                    STS0 |= (GOMC << One)
                    STS0 |= (GPSC << 0x02)
                    STS0 |= (GPCS << 0x03)
                    STS0 |= (GPRC << 0x05)
                    STS0 |= (MHPC << 0x06)
                    STS0 |= (MDAC << 0x07)
                    STS0 |= HGNC <<= 0x08
                    STS0 |= HENC <<= 0x0B
                    STS0 |= EJCA <<= 0x0E
                    STS0 |= 0x08000000
                    TEMP = STS0 /* \_SB_.PCI0.GFX0._DSM.STS0 */
                    Return (TEMP) /* \_SB_.PCI0.GFX0._DSM.TEMP */
                }

                If ((Arg2 == 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    STS1 = Zero
                    Local0 = (DerefOf (Arg3 [Zero]) & 0x7F)
                    Local2 = (Local0 & 0x60)
                    If (((Local2 & 0x40) == 0x40))
                    {
                        HGEN = ((Local2 & 0x20) >> 0x05)
                    }

                    Local0 &= 0x1F
                    If (((Local0 & 0x10) == 0x10))
                    {
                        Local0 &= 0x0F
                        If ((Local0 == One))
                        {
                            \_SB.PCI0.LPCB.EC0.IORD = Zero
                            CMSI = 0x40
                            Local1 = CMSD /* External reference */
                            Local1 &= 0x02
                            If (((\_SB.PCI0.WMID.BAEF == Zero) && (Local1 == Zero)))
                            {
                                \_SB.PCI0.LPCB.EC0.PSBB = One
                            }

                            CGPU = Local0
                        }

                        If ((Local0 == 0x02))
                        {
                            \_SB.PCI0.LPCB.EC0.IORD = One
                            CMSI = 0x40
                            Local1 = CMSD /* External reference */
                            Local1 &= 0x02
                            If (((\_SB.PCI0.WMID.BAEF == Zero) && (Local1 == Zero)))
                            {
                                \_SB.PCI0.LPCB.EC0.PSBB = Zero
                            }

                            CGPU = Local0
                        }

                        If ((Local0 == Zero))
                        {
                            If (PWRS)
                            {
                                CGPU = 0x02
                            }
                            Else
                            {
                                CGPU = One
                            }
                        }

                        GPSS = Local0
                        Notify (\_SB.PCI0.GFX0, 0xD9) // Hardware-Specific
                        Notify (\_SB.PCI0.WMI1, 0xD9) // Hardware-Specific
                    }
                    Else
                    {
                        Local0 &= 0x0F
                        If ((\_SB.PCI0.LPCB.EC0.HHS == One))
                        {
                            If ((GPSS == One))
                            {
                                \_SB.PCI0.LPCB.EC0.HHS = Zero
                                Return (One)
                            }

                            If ((GPSS == 0x02))
                            {
                                \_SB.PCI0.LPCB.EC0.HHS = Zero
                                Return (One)
                            }
                        }

                        If ((\_SB.PCI0.LPCB.EC0.HHS == 0x02))
                        {
                            If ((GPSS == One))
                            {
                                \_SB.PCI0.LPCB.EC0.HHS = Zero
                                Return (0x02)
                            }

                            If ((GPSS == 0x02))
                            {
                                \_SB.PCI0.LPCB.EC0.HHS = Zero
                                Return (0x02)
                            }
                        }

                        If ((GPPO == One))
                        {
                            Local0 = GPSS /* \_SB_.PCI0.GFX0.GPSS */
                            Local0 |= 0x10
                            GPPO = Zero
                        }
                    }

                    STS1 |= Local0
                    TMP1 = STS1 /* \_SB_.PCI0.GFX0._DSM.STS1 */
                    Return (TMP1) /* \_SB_.PCI0.GFX0._DSM.TMP1 */
                }

                If ((Arg2 == 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    STS2 = Zero
                    Local0 = (DerefOf (Arg3 [Zero]) & 0x03)
                    If ((Local0 == Zero))
                    {
                        \_SB.PCI0.P0P2.PEGP._STA ()
                    }

                    If ((Local0 == One))
                    {
                        \_SB.PCI0.P0P2.PEGP._ON ()
                    }

                    If ((Local0 == 0x02))
                    {
                        \_SB.PCI0.P0P2.PEGP._OFF ()
                    }

                    STS2 |= \_SB.PCI0.P0P2.PEGP.PI17
                    TMP2 = STS2 /* \_SB_.PCI0.GFX0._DSM.STS2 */
                    Return (TMP2) /* \_SB_.PCI0.GFX0._DSM.TMP2 */
                }

                If ((Arg2 == 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    STS3 = Zero
                    Local0 = (DerefOf (Arg3 [Zero]) & 0xFF)
                    UBDM = ((DerefOf (Arg3 [Zero]) >> 0x0C) & One
                        )
                    If ((Local0 != GBDP))
                    {
                        If ((UBDM == One))
                        {
                            GBDP = Local0
                        }
                        Else
                        {
                            Local0 = GBDP /* \_SB_.PCI0.GFX0.GBDP */
                            STS3 |= 0x1000
                        }
                    }

                    STS3 |= Local0
                    Local1 = ((DerefOf (Arg3 [Zero]) >> 0x0D) & 0x03
                        )
                    USPM = ((DerefOf (Arg3 [Zero]) >> 0x10) & One
                        )
                    If ((Local1 != GPSP))
                    {
                        If ((USPM == One))
                        {
                            GPSP = Local1
                        }
                        Else
                        {
                            Local1 = GPSP /* \_SB_.PCI0.GFX0.GPSP */
                            STS3 |= 0x8000
                        }
                    }

                    STS3 |= (Local1 << 0x0D)
                    Local2 = ((DerefOf (Arg3 [Zero]) >> 0x11) & 0x0F
                        )
                    UTCM = ((DerefOf (Arg3 [Zero]) >> 0x15) & One
                        )
                    If ((Local2 != PTVC))
                    {
                        If ((UTCM == One))
                        {
                            PTVC = Local2
                        }
                        Else
                        {
                            Local2 = PTVC /* \_SB_.PCI0.GFX0.PTVC */
                            STS3 |= 0x00100000
                        }
                    }

                    STS3 |= (Local2 << 0x10)
                    Local3 = ((DerefOf (Arg3 [Zero]) >> 0x16) & 0x1F
                        )
                    UTPM = ((DerefOf (Arg3 [Zero]) >> 0x1B) & One
                        )
                    If ((Local3 != PTVF))
                    {
                        If ((UTPM == One))
                        {
                            PTVF = Local3
                        }
                        Else
                        {
                            Local3 = PTVF /* \_SB_.PCI0.GFX0.PTVF */
                            STS3 |= 0x04000000
                        }
                    }

                    STS3 |= (Local3 << 0x15)
                    Local4 = ELPT /* \_SB_.PCI0.GFX0.ELPT */
                    STS3 |= (Local4 << 0x1B)
                    TMP3 = STS3 /* \_SB_.PCI0.GFX0._DSM.STS3 */
                    Return (TMP3) /* \_SB_.PCI0.GFX0._DSM.TMP3 */
                }

                If ((Arg2 == 0x05))
                {
                    If ((DerefOf (Arg3 [0x03]) & One))
                    {
                        Local0 = DerefOf (Arg3 [One])
                        Local0 >>= 0x04
                        Local1 = DerefOf (Arg3 [0x02])
                        Local1 <<= 0x04
                        Local0 |= Local1
                        Local2 = DerefOf (Arg3 [Zero])
                        Local1 = DerefOf (Arg3 [One])
                        Local1 &= 0x0F
                        Local1 <<= 0x04
                        Local2 |= Local1
                        Local1 = GATT (Local2, Local0)
                        Local1 <<= 0x08
                        Local3 = 0x00F00021
                        Local3 |= Local1
                        Return (Local3)
                    }
                }

                If ((Arg2 == 0x06))
                {
                    Return (Package (0x0C)
                    {
                        0x0110, 
                        0x2C, 
                        0x80000100, 
                        0x2C, 
                        0x80087330, 
                        0x2C, 
                        0x0110, 
                        0x80000100, 
                        0x2C, 
                        0x0110, 
                        0x80087330, 
                        0x2C
                    })
                }

                Return (0x80000002)
            }

            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Return (\_SB.PCI0.P0P2.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            Return (0x80000001)
        }

        Method (GATT, 2, NotSerialized)
        {
            If ((Arg0 == 0x06))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = Arg1
                If ((_T_0 == 0x02))
                {
                    Return (0x04)
                }
                ElseIf ((_T_0 == 0x06))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (One)
                }
            }
            ElseIf ((Arg0 == 0x0A))
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                _T_1 = Arg1
                If ((_T_1 == 0x02))
                {
                    Return (0x05)
                }
                ElseIf ((_T_1 == 0x0A))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (One)
                }
            }
            ElseIf ((Arg0 == 0x0E))
            {
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                _T_2 = Arg1
                If ((_T_2 == 0x02))
                {
                    Return (0x02)
                }
                ElseIf ((_T_2 == 0x04))
                {
                    Return (0x03)
                }
                ElseIf ((_T_2 == 0x08))
                {
                    Return (0x04)
                }
                ElseIf ((_T_2 == 0x06))
                {
                    Return (0x05)
                }
                Else
                {
                    Return (One)
                }
            }
            ElseIf ((Arg0 == 0x03))
            {
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                _T_3 = Arg1
                If ((_T_3 == One))
                {
                    Return (0x04)
                }
                ElseIf ((_T_3 == 0x03))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (One)
                }
            }
            ElseIf ((Arg0 == 0x05))
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                _T_4 = Arg1
                If ((_T_4 == One))
                {
                    Return (0x05)
                }
                ElseIf ((_T_4 == 0x05))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (One)
                }
            }
            ElseIf ((Arg0 == 0x07))
            {
                Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler
                _T_5 = Arg1
                If ((_T_5 == One))
                {
                    Return (0x02)
                }
                ElseIf ((_T_5 == 0x02))
                {
                    Return (0x03)
                }
                ElseIf ((_T_5 == 0x04))
                {
                    Return (0x04)
                }
                ElseIf ((_T_5 == 0x03))
                {
                    Return (0x05)
                }
                Else
                {
                    Return (One)
                }
            }
            Else
            {
                Return (One)
            }
        }
    }

    Method (IDAB, 0, Serialized)
    {
        If ((\_SB.PCI0.GFX0.IDI1 != Zero))
        {
            NDID++
            DID1 = (0x80000000 | \_SB.PCI0.GFX0.IDI1)
        }

        If ((\_SB.PCI0.GFX0.IDI2 != Zero))
        {
            NDID++
            DID2 = (0x80000000 | \_SB.PCI0.GFX0.IDI2)
        }

        If ((\_SB.PCI0.GFX0.IDI3 != Zero))
        {
            NDID++
            DID3 = (0x80000000 | \_SB.PCI0.GFX0.IDI3)
        }

        If ((\_SB.PCI0.GFX0.IDI4 != Zero))
        {
            NDID++
            DID4 = (0x80000000 | \_SB.PCI0.GFX0.IDI4)
        }

        If ((\_SB.PCI0.GFX0.IDI5 != Zero))
        {
            NDID++
            DID5 = (0x80000000 | \_SB.PCI0.GFX0.IDI5)
        }

        If ((\_SB.PCI0.GFX0.IDI6 != Zero))
        {
            NDID++
            DID6 = (0x80000000 | \_SB.PCI0.GFX0.IDI6)
        }

        If ((\_SB.PCI0.GFX0.IDI7 != Zero))
        {
            NDID++
            DID7 = (0x80000000 | \_SB.PCI0.GFX0.IDI7)
        }

        If ((\_SB.PCI0.GFX0.IDI8 != Zero))
        {
            NDID++
            DID8 = (0x80000000 | \_SB.PCI0.GFX0.IDI8)
        }
    }

    Method (HGAS, 0, Serialized)
    {
    }

    Method (HBRT, 1, Serialized)
    {
        \_SB.PCI0.GFX0.DACE = Arg0
        If ((0x04 & DSEN))
        {
            If ((Arg0 == 0x04))
            {
                Notify (\_SB.PCI0.P0P2.PEGP.DD02, 0x87) // Device-Specific
            }

            If ((Arg0 == 0x03))
            {
                Notify (\_SB.PCI0.P0P2.PEGP.DD02, 0x86) // Device-Specific
            }
        }
    }

    Method (HLSE, 0, Serialized)
    {
        \_SB.PCI0.GFX0.DACE = 0x02
        \_SB.PCI0.GFX0.LDES = One
        \_SB.PCI0.GFX0.DHPE = 0x02
        \_SB.PCI0.GFX0.DHPS = LIDS /* External reference */
        If ((\_SB.PCI0.GFX0.CGPU == One))
        {
            \_SB.PCI0.GFX0.GLID (LIDS)
        }
        Else
        {
            Notify (\_SB.PCI0.GFX0, 0xDB) // Hardware-Specific
            Notify (\_SB.PCI0.WMI1, 0xDB) // Hardware-Specific
            Notify (\_SB.PCI0.P0P2.PEGP, 0x81) // Information Change
        }
    }

    Method (HDSE, 1, Serialized)
    {
        \_SB.PCI0.GFX0.DACE = One
        If ((\_SB.PCI0.GFX0.TLSN == 0x0D))
        {
            \_SB.PCI0.GFX0.TLSN = One
        }
        Else
        {
            \_SB.PCI0.GFX0.TLSN++
        }

        Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
        Notify (\_SB.PCI0.WMI1, 0x80) // Status Change
    }

    Method (HPFS, 0, Serialized)
    {
        If ((\_SB.PCI0.GFX0.CGPU == One))
        {
            \_SB.PCI0.GFX0.AINT (0x02, Zero)
        }
        Else
        {
            \_SB.PCI0.GFX0.DACE = 0x05
            If ((\_SB.PCI0.GFX0.GPSP == 0x02))
            {
                \_SB.PCI0.GFX0.GPSP = Zero
            }
            Else
            {
                \_SB.PCI0.GFX0.GPSP++
            }

            Notify (\_SB.PCI0.GFX0, 0xE1) // Hardware-Specific
        }
    }

    Method (HGLS, 0, Serialized)
    {
        \_SB.PCI0.GFX0.DACE = 0x02
        \_SB.PCI0.GFX0.LDES = One
        \_SB.PCI0.GFX0.DHPE = 0x02
        \_SB.PCI0.GFX0.DHPS = LIDS /* External reference */
        If ((\_SB.PCI0.GFX0.CGPU == One))
        {
            If (\_SB.PCI0.GFX0.GLID (LIDS))
            {
                \_SB.PCI0.GFX0.CLID |= 0x80000000 /* External reference */
            }
        }
        Else
        {
            Notify (\_SB.PCI0.GFX0, 0xDB) // Hardware-Specific
            Notify (\_SB.PCI0.WMI1, 0xDB) // Hardware-Specific
        }
    }

    Method (FPED, 0, NotSerialized)
    {
        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            Offset (0x1C04), 
            DDCH,   1024
        }
    }

    Method (PDCC, 0, NotSerialized)
    {
        \_SB.PCI0.GFX0.GPSS++
        \_SB.PCI0.GFX0.GPSS %= 0x03
        \_SB.PCI0.GFX0.GPPO = One
        \_SB.PCI0.GFX0.HGNC = One
        Notify (\_SB.PCI0.GFX0, 0xD0) // Hardware-Specific
        Notify (\_SB.PCI0.WMI1, 0xD0) // Hardware-Specific
    }

    Method (WMAB, 1, Serialized)
    {
        If ((Arg0 == 0x02))
        {
            Notify (\_SB.PCI0.GFX0, 0xDB) // Hardware-Specific
            Notify (\_SB.PCI0.WMI1, 0xDB) // Hardware-Specific
        }
        Else
        {
            Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
            Notify (\_SB.PCI0.WMI1, 0x80) // Status Change
        }
    }

    Scope (\_SB.PCI0.P0P2.PEGP)
    {
        OperationRegion (PCIO, SystemMemory, EBAS, 0x0100)
        Field (PCIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            VGAR,   2008
        }

        Name (VGAB, Buffer (0xFB)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0098 */  0x00, 0x00, 0x00                                 /* ... */
        })
        Name (NHDO, Zero)
        OperationRegion (RPCI, SystemMemory, NHDO = (EBAS | 0x048B), 0x02)
        Field (RPCI, ByteAcc, NoLock, Preserve)
        {
                ,   1, 
            HDAB,   1
        }

        Name (OMPR, 0x02)
        Name (DGOS, Zero)
        Method (NVOP, 4, NotSerialized)
        {
            Debug = "------- NV OPTIMUS DSM --------"
            If ((Arg1 != 0x0100))
            {
                Return (0x80000001)
            }

            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            _T_0 = ToInteger (Arg2)
            If ((_T_0 == Zero))
            {
                Local0 = Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x04                           /* .... */
                    }
                Return (Local0)
            }
            ElseIf ((_T_0 == 0x05))
            {
                If ((DerefOf (Arg3 [0x03]) & One))
                {
                    Local0 = DerefOf (Arg3 [One])
                    Local0 >>= 0x04
                    Local1 = DerefOf (Arg3 [0x02])
                    Local1 <<= 0x04
                    Local0 |= Local1
                    Local2 = DerefOf (Arg3 [Zero])
                    Local1 = DerefOf (Arg3 [One])
                    Local1 &= 0x0F
                    Local1 <<= 0x04
                    Local2 |= Local1
                    Local1 = \_SB.PCI0.GFX0.GATT (Local2, Local0)
                    Local1 <<= 0x08
                    Local3 = 0x00F00021
                    Local3 |= Local1
                    Return (Local3)
                }
            }
            ElseIf ((_T_0 == 0x06))
            {
                Return (Package (0x0C)
                {
                    0x0110, 
                    0x2C, 
                    0x80000100, 
                    0x2C, 
                    0x80087330, 
                    0x2C, 
                    0x0110, 
                    0x80000100, 
                    0x2C, 
                    0x0110, 
                    0x80087330, 
                    0x2C
                })
            }
            ElseIf ((_T_0 == 0x10))
            {
                Return (\_SB.PCI0.P0P2.PEGP.GOBT (Arg3))
            }
            ElseIf ((_T_0 == 0x1A))
            {
                CreateField (Arg3, 0x18, 0x02, OPCE)
                CreateField (Arg3, Zero, One, FLCH)
                If (ToInteger (FLCH))
                {
                    OMPR = ToInteger (OPCE)
                }

                Name (RBUF, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (RBUF, Zero, One, OPEN)
                CreateField (RBUF, 0x03, 0x02, CGCS)
                CreateField (RBUF, 0x06, One, SHPC)
                CreateField (RBUF, 0x18, 0x03, DGPC)
                OPEN = One
                SHPC = One
                DGPC = One
                If (\_SB.PCI0.P0P2.PEGP.GSTA ())
                {
                    CGCS = 0x03
                }
                Else
                {
                    CGCS = Zero
                }

                Return (RBUF) /* \_SB_.PCI0.P0P2.PEGP.NVOP.RBUF */
            }
            Else
            {
                Return (0x80000002)
            }
        }

        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE6)
            {
                /* 0000 */  0xF8, 0x27, 0x46, 0x4F, 0x2A, 0x49, 0x0F, 0xF9,  /* .'FO*I.. */
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,  /* KV...... */
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,  /* 14859745 */
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,  /* 6985Genu */
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  /* ine NVID */
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  /* IA Certi */
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  /* fied Opt */
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  /* imus Rea */
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  /* dy Mothe */
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  /* rboard f */
                /* 0050 */  0x6F, 0x72, 0x20, 0x61, 0x63, 0x65, 0x72, 0x20,  /* or acer  */
                /* 0058 */  0x6A, 0x76, 0x35, 0x31, 0x20, 0x62, 0x75, 0x67,  /* jv51 bug */
                /* 0060 */  0x20, 0x37, 0x30, 0x37, 0x32, 0x34, 0x33, 0x20,  /*  707243  */
                /* 0068 */  0x2D, 0x20, 0x40, 0x32, 0x5E, 0x51, 0x32, 0x4A,  /* - @2^Q2J */
                /* 0070 */  0x27, 0x3C, 0x2F, 0x27, 0x5D, 0x59, 0x3B, 0x23,  /* '</']Y;# */
                /* 0078 */  0x49, 0x4C, 0x31, 0x5A, 0x4F, 0x47, 0x25, 0x57,  /* IL1ZOG%W */
                /* 0080 */  0x51, 0x22, 0x41, 0x30, 0x31, 0x43, 0x50, 0x4F,  /* Q"A01CPO */
                /* 0088 */  0x24, 0x58, 0x2C, 0x27, 0x49, 0x3E, 0x58, 0x54,  /* $X,'I>XT */
                /* 0090 */  0x31, 0x2D, 0x32, 0x58, 0x20, 0x49, 0x5D, 0x55,  /* 1-2X I]U */
                /* 0098 */  0x24, 0x27, 0x59, 0x4B, 0x2A, 0x3A, 0x20, 0x2D,  /* $'YK*: - */
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  /*  Copyrig */
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,  /* ht 2010  */
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  /* NVIDIA C */
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  /* orporati */
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  /* on All R */
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  /* ights Re */
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  /* served-1 */
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,  /* 48597456 */
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29               /* 985(R) */
            })
            Name (OPVL, Buffer (0xE6)
            {
                /* 0000 */  0x6E, 0xF2, 0x0B, 0x88, 0x4E, 0xF7, 0xFB, 0xD2,  /* n...N... */
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,  /* KV...... */
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,  /* 14859745 */
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,  /* 6985Genu */
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  /* ine NVID */
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  /* IA Certi */
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  /* fied Opt */
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  /* imus Rea */
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  /* dy Mothe */
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  /* rboard f */
                /* 0050 */  0x6F, 0x72, 0x20, 0x61, 0x63, 0x65, 0x72, 0x20,  /* or acer  */
                /* 0058 */  0x6A, 0x76, 0x35, 0x33, 0x20, 0x62, 0x75, 0x67,  /* jv53 bug */
                /* 0060 */  0x20, 0x37, 0x30, 0x37, 0x32, 0x34, 0x33, 0x20,  /*  707243  */
                /* 0068 */  0x2D, 0x20, 0x42, 0x34, 0x50, 0x5F, 0x34, 0x4C,  /* - B4P_4L */
                /* 0070 */  0x21, 0x3E, 0x51, 0x29, 0x43, 0x5B, 0x3D, 0x26,  /* !>Q)C[=& */
                /* 0078 */  0x48, 0x25, 0x33, 0x5C, 0x41, 0x45, 0x27, 0x59,  /* H%3\AE'Y */
                /* 0080 */  0x53, 0x20, 0x43, 0x32, 0x37, 0x4D, 0x52, 0x4A,  /* S C27MRJ */
                /* 0088 */  0x25, 0x29, 0x2E, 0x29, 0x4B, 0x38, 0x5A, 0x56,  /* %).)K8ZV */
                /* 0090 */  0x3F, 0x2F, 0x34, 0x5A, 0x26, 0x4B, 0x5F, 0x57,  /* ?/4Z&K_W */
                /* 0098 */  0x26, 0x21, 0x5B, 0x4D, 0x2C, 0x3C, 0x20, 0x2D,  /* &![M,< - */
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  /*  Copyrig */
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,  /* ht 2010  */
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  /* NVIDIA C */
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  /* orporati */
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  /* on All R */
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  /* ights Re */
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  /* served-1 */
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,  /* 48597456 */
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29               /* 985(R) */
            })
            CreateWordField (Arg0, 0x02, USRG)
            If ((USRG == 0x564B))
            {
                Local0 = CMSR (0x79)
                If ((Local0 == 0x02))
                {
                    Return (OPVL) /* \_SB_.PCI0.P0P2.PEGP.GOBT.OPVL */
                }
                Else
                {
                    Return (OPVK) /* \_SB_.PCI0.P0P2.PEGP.GOBT.OPVK */
                }
            }

            Return (Zero)
        }

        Method (GSTA, 0, Serialized)
        {
            If ((\_SB.PCI0.P0P2.PEGP.PI17 == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                If (Ones)
                {
                    \_SB.PCI0.P0P2.PEGP.PO16 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO16 = One
                }

                Sleep (0x64)
                If (Zero)
                {
                    \_SB.PCI0.P0P2.PEGP.PO36 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO36 = One
                }

                Sleep (0x64)
                PO35 = One
                Sleep (0x012C)
                If (Zero)
                {
                    \_SB.PCI0.P0P2.PEGP.PO16 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO16 = One
                }

                Sleep (0x64)
                LLGE = Zero
                LGGE = Zero
                PEPO = Zero
                ROE0 = Zero
                ROE1 = Zero
                ROE2 = Zero
                ROE3 = Zero
                ROE4 = Zero
                ROE5 = Zero
                ROE6 = Zero
                ROE7 = Zero
                ROE8 = Zero
                ROE9 = Zero
                ROEA = Zero
                ROEB = Zero
                ROEC = Zero
                ROED = Zero
                ROEE = Zero
                ROEF = Zero
                HCLQ = Zero
                UDAP = Zero
                PEDQ = Zero
                LNKD = Zero
                LLGE = One
                LGGE = One
                While ((LNKS < 0x07))
                {
                    Sleep (One)
                }

                CMDR = Zero
                VGAR = VGAB /* \_SB_.PCI0.P0P2.PEGP.VGAB */
                CMDR = 0x06
                HDAB = Zero
                Notify (\_SB.PCI0.P0P2, Zero) // Bus Check
                DGOS = Zero
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((\_SB.PCI0.P0P2.PEGP.OMPR == 0x03))
            {
                VGAB = VGAR /* \_SB_.PCI0.P0P2.PEGP.VGAR */
                LLGE = Zero
                LGGE = Zero
                LNKD = One
                While ((LNKS != Zero))
                {
                    Sleep (One)
                }

                PEDQ = One
                LNKD = Zero
                While ((PIDQ != One))
                {
                    Sleep (One)
                }

                HCLQ = One
                UDAP = One
                PEPO = 0x07
                ROE0 = One
                ROE1 = One
                ROE2 = One
                ROE3 = One
                ROE4 = One
                ROE5 = One
                ROE6 = One
                ROE7 = One
                ROE8 = One
                ROE9 = One
                ROEA = One
                ROEB = One
                ROEC = One
                ROED = One
                ROEE = One
                ROEF = One
                LLGE = One
                LGGE = One
                If (Ones)
                {
                    \_SB.PCI0.P0P2.PEGP.PO16 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO16 = One
                }

                PO35 = Zero
                If (Ones)
                {
                    \_SB.PCI0.P0P2.PEGP.PO36 = Zero
                }
                Else
                {
                    \_SB.PCI0.P0P2.PEGP.PO36 = One
                    Notify (\_SB.PCI0.P0P2, Zero) // Bus Check
                }

                DGOS = One
                \_SB.PCI0.P0P2.PEGP.OMPR = 0x02
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (WMI1)
        {
            Name (_HID, "pnp0c14")  // _HID: Hardware ID
            Name (_UID, "MXM2")  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,  /* <\.....N */
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,  /* .w...*,. */
                /* 0010 */  0x4D, 0x58, 0x01, 0x02, 0x40, 0x2F, 0x1A, 0x92,  /* MX..@/.. */
                /* 0018 */  0xC4, 0x0D, 0x2D, 0x40, 0xAC, 0x18, 0xB4, 0x84,  /* ..-@.... */
                /* 0020 */  0x44, 0xEF, 0x9E, 0xD2, 0xD0, 0x00, 0x01, 0x08,  /* D....... */
                /* 0028 */  0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C,  /* a.*...tL */
                /* 0030 */  0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E,  /* .....E.> */
                /* 0038 */  0xD9, 0x00, 0x01, 0x08, 0x06, 0x80, 0x84, 0x42,  /* .......B */
                /* 0040 */  0x86, 0x88, 0x0E, 0x49, 0x8C, 0x72, 0x2B, 0xDC,  /* ...I.r+. */
                /* 0048 */  0xA9, 0x3A, 0x8A, 0x09, 0xDB, 0x00, 0x01, 0x08,  /* .:...... */
                /* 0050 */  0x62, 0xDE, 0x6B, 0xE0, 0x75, 0xEE, 0xF4, 0x48,  /* b.k.u..H */
                /* 0058 */  0xA5, 0x83, 0xB2, 0x3E, 0x69, 0xAB, 0xF8, 0x91,  /* ...>i... */
                /* 0060 */  0x80, 0x00, 0x01, 0x08, 0x0F, 0xBD, 0xDE, 0x3A,  /* .......: */
                /* 0068 */  0x5F, 0x0C, 0xED, 0x46, 0xAB, 0x2E, 0x04, 0x96,  /* _..F.... */
                /* 0070 */  0x2B, 0x4F, 0xDC, 0xBC, 0x81, 0x00, 0x01, 0x08,  /* +O...... */
                /* 0078 */  0x11, 0x93, 0x51, 0x1E, 0x75, 0x3E, 0x08, 0x42,  /* ..Q.u>.B */
                /* 0080 */  0xB0, 0x5E, 0xEB, 0xE1, 0x7E, 0x3F, 0xF4, 0x1F,  /* .^..~?.. */
                /* 0088 */  0x86, 0x00, 0x01, 0x08, 0x41, 0x53, 0xF8, 0x37,  /* ....AS.7 */
                /* 0090 */  0x18, 0x44, 0x24, 0x4F, 0x85, 0x33, 0x38, 0xFF,  /* .D$O.38. */
                /* 0098 */  0xC7, 0x29, 0x55, 0x42, 0x87, 0x00, 0x01, 0x08,  /* .)UB.... */
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                /* 00B0 */  0x58, 0x4D, 0x01, 0x00                           /* XM.. */
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If ((FUNC == 0x4D53445F))
                {
                    If ((SizeOf (Arg2) >= 0x1C))
                    {
                        CreateField (Arg2, 0x20, 0x80, MUID)
                        CreateDWordField (Arg2, 0x14, REVI)
                        CreateDWordField (Arg2, 0x18, SFNC)
                        CreateDWordField (Arg2, 0x1C, ARGD)
                        If (((Arg1 & 0xFF) == One))
                        {
                            Return (\_SB.PCI0.P0P2.PEGP._DSM (MUID, REVI, SFNC, ARGD))
                        }
                    }
                }

                If ((SizeOf (Arg2) >= 0x04))
                {
                    CreateDWordField (Arg2, 0x04, ARGS)
                    If ((FUNC == 0x494D584D)) {}
                    ElseIf ((FUNC == 0x534D584D)) {}
                    ElseIf ((FUNC == 0x584D584D))
                    {
                        If ((SizeOf (Arg2) >= 0x08))
                        {
                            CreateDWordField (Arg2, 0x08, SARG)
                            Return (\_SB.PCI0.P0P2.PEGP.MXMX (SARG))
                        }
                    }
                }

                Return (Zero)
            }

            Name (WQXM, Buffer (0x029C)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  /* ........ */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04,  /* ......B. */
                /* 0028 */  0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20,  /* .C.00(.  */
                /* 0030 */  0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84,  /* ...&&@.. */
                /* 0038 */  0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA,  /* ...).$.. */
                /* 0040 */  0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42,  /* ..(..%.B */
                /* 0048 */  0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61,  /* .....[.a */
                /* 0050 */  0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92,  /* ........ */
                /* 0058 */  0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1,  /* J.....!. */
                /* 0060 */  0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2,  /* ....-@;. */
                /* 0068 */  0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82,  /* $...#... */
                /* 0070 */  0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C,  /* .qh.0,.L */
                /* 0078 */  0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC,  /* .8...E`. */
                /* 0080 */  0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78,  /* N... L.x */
                /* 0088 */  0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63,  /* Ta4.E.Bc */
                /* 0090 */  0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0,  /* d@...... */
                /* 0098 */  0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4,  /* ........ */
                /* 00A0 */  0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18,  /* .p(@..k. */
                /* 00A8 */  0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50,  /* r.![..hP */
                /* 00B0 */  0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E,  /* .E...,*. */
                /* 00B8 */  0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C,  /* .P...... */
                /* 00C0 */  0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21,  /* .....T.! */
                /* 00C8 */  0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10,  /* ......A. */
                /* 00D0 */  0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8,  /* .....i4. */
                /* 00D8 */  0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B,  /* .&8v...; */
                /* 00E0 */  0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3,  /* . }n.9.. */
                /* 00E8 */  0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1,  /* .s.dx.+. */
                /* 00F0 */  0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A,  /* ..O.x... */
                /* 00F8 */  0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A,  /* ..3Ap.!z */
                /* 0100 */  0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41,  /* ..N....A */
                /* 0108 */  0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07,  /* ..qcgu2. */
                /* 0110 */  0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E,  /* ]....... */
                /* 0118 */  0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3,  /* .i.I.... */
                /* 0120 */  0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9,  /* .yll.... */
                /* 0128 */  0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90,  /* ...A.V.. */
                /* 0130 */  0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8,  /* ........ */
                /* 0138 */  0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0,  /* x...x4.. */
                /* 0140 */  0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39,  /* f...`P.9 */
                /* 0148 */  0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25,  /* ..J....% */
                /* 0150 */  0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46,  /* .C.1..zF */
                /* 0158 */  0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC,  /* E#k">.x. */
                /* 0160 */  0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3,  /* ..B...s. */
                /* 0168 */  0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3,  /* ;.aq.... */
                /* 0170 */  0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42,  /* .......B */
                /* 0178 */  0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F,  /* ....<`.. */
                /* 0180 */  0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20,  /* (.>$...  */
                /* 0188 */  0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06,  /* .[?...'. */
                /* 0190 */  0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B,  /* .X.0z..+ */
                /* 0198 */  0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB,  /* .!...S.. */
                /* 01A0 */  0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68,  /* @.c.)rlh */
                /* 01A8 */  0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2,  /* x~p...\. */
                /* 01B0 */  0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39,  /* .M.S8..9 */
                /* 01B8 */  0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A,  /* ...I.... */
                /* 01C0 */  0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83,  /* ....[... */
                /* 01C8 */  0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89,  /* G.. .h.. */
                /* 01D0 */  0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02,  /* |:....t. */
                /* 01D8 */  0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49,  /* ....7j.I */
                /* 01E0 */  0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5,  /* |,....C. */
                /* 01E8 */  0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C,  /* ..x:.4.L */
                /* 01F0 */  0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27,  /* BD..!..' */
                /* 01F8 */  0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80,  /* F..1l.7. */
                /* 0200 */  0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2,  /* ......t. */
                /* 0208 */  0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50,  /* B>4..t.P */
                /* 0210 */  0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74,  /* ...:...t */
                /* 0218 */  0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03,  /* ...O.... */
                /* 0220 */  0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78,  /* .......x */
                /* 0228 */  0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F,  /* .E.OP... */
                /* 0230 */  0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C,  /* O...,..| */
                /* 0238 */  0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB,  /* :...|:.. */
                /* 0240 */  0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1,  /* h`.O.wt. */
                /* 0248 */  0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13,  /* .O.0.... */
                /* 0250 */  0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0,  /* .1^.1.C. */
                /* 0258 */  0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14,  /* .x.8=+.. */
                /* 0260 */  0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0,  /* .$...9.. */
                /* 0268 */  0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,  /* ......U. */
                /* 0270 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,  /* 25.4...R */
                /* 0278 */  0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0,  /* c....... */
                /* 0280 */  0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C,  /* ........ */
                /* 0288 */  0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E,  /* ..X..E . */
                /* 0290 */  0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A,  /* ...?.#.. */
                /* 0298 */  0xC4, 0xFF, 0x7F, 0x7F                           /* .... */
            })
        }
    }
}

