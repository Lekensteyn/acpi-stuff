/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20121018-64 [Oct 26 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of ssdt4.dat, Fri Nov  9 23:48:38 2012
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00004B06 (19206)
 *     Revision         0x01
 *     Checksum         0xEA
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "HR CRB  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */

DefinitionBlock ("ssdt4.aml", "SSDT", 1, "INSYDE", "HR CRB  ", 0x00001000)
{
    External (\_SB_.PCI0, DeviceObj)
    External (\_SB_.PCI0.GFX0, DeviceObj)
    External (\_SB_.PCI0.GFX0.AINT, MethodObj)    // 2 Arguments
    External (\_SB_.PCI0.GFX0.CADL)
    External (\_SB_.PCI0.GFX0.CAL2)
    External (\_SB_.PCI0.GFX0.CAL3)
    External (\_SB_.PCI0.GFX0.CAL4)
    External (\_SB_.PCI0.GFX0.CAL5)
    External (\_SB_.PCI0.GFX0.CAL6)
    External (\_SB_.PCI0.GFX0.CAL7)
    External (\_SB_.PCI0.GFX0.CAL8)
    External (\_SB_.PCI0.GFX0.CLID)
    External (\_SB_.PCI0.GFX0.CPDL)
    External (\_SB_.PCI0.GFX0.CPL2)
    External (\_SB_.PCI0.GFX0.CPL3)
    External (\_SB_.PCI0.GFX0.CPL4)
    External (\_SB_.PCI0.GFX0.CPL5)
    External (\_SB_.PCI0.GFX0.CPL6)
    External (\_SB_.PCI0.GFX0.CPL7)
    External (\_SB_.PCI0.GFX0.CPL8)
    External (\_SB_.PCI0.GFX0.DD01._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD02._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD02._BCL, IntObj)
    External (\_SB_.PCI0.GFX0.DD02._BCM, IntObj)
    External (\_SB_.PCI0.GFX0.DD02._BQC, IntObj)
    External (\_SB_.PCI0.GFX0.DD03._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD04._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD05._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD06._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD07._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.DD08._ADR, IntObj)
    External (\_SB_.PCI0.GFX0.GLID, MethodObj)    // 1 Arguments
    External (\_SB_.PCI0.GFX0.NADL)
    External (\_SB_.PCI0.GFX0.NDL2)
    External (\_SB_.PCI0.GFX0.NDL3)
    External (\_SB_.PCI0.GFX0.NDL4)
    External (\_SB_.PCI0.GFX0.NDL5)
    External (\_SB_.PCI0.GFX0.NDL6)
    External (\_SB_.PCI0.GFX0.NDL7)
    External (\_SB_.PCI0.GFX0.NDL8)
    External (\_SB_.PCI0.GFX0.SPB_, IntObj)
    External (\_SB_.PCI0.LPCB.EC0_.E0B2)
    External (\_SB_.PCI0.LPCB.EC0_.HKTF, IntObj)
    External (\_SB_.PCI0.LPCB.EC0_.HYMS, IntObj)
    External (\_SB_.PCI0.LPCB.H_EC.LSTE)
    External (\_SB_.PCI0.LPCB.H_EC.SCAN)
    External (\_SB_.PCI0.PEG0, DeviceObj)
    External (\_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (\_SB_.PCI0.PEG0.PEGP._ADR)
    External (ASLB, MethodObj)    // 1 Arguments
    External (CMSR, MethodObj)    // 5 Arguments
    External (CMSW, MethodObj)    // 2 Arguments
    External (DID1)
    External (DID2)
    External (DID3)
    External (DID4)
    External (DID5)
    External (DID6)
    External (DID7)
    External (DID8)
    External (DSEN)
    External (EBAS, MethodObj)    // 1 Arguments
    External (LIDS, IntObj)
    External (NDID)
    External (NVGA, MethodObj)    // 1 Arguments
    External (NVHA, MethodObj)    // 1 Arguments
    External (OPTF, IntObj)
    External (P8XH, MethodObj)    // 5 Arguments
    External (PEBS)

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (GPIO, SystemIO, 0x0500, 0x60)
        Field (GPIO, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
                ,   1, 
            PO01,   1, 
                ,   4, 
            PI06,   1, 
                ,   10, 
            PI17,   1, 
            Offset (0x30), 
                ,   15, 
            GS47,   1, 
            Offset (0x38), 
                ,   18, 
            PO50,   1, 
                ,   1, 
            PO52,   1, 
            PO53,   1, 
            PO54,   1, 
            Offset (0x48), 
                ,   3, 
            PI67,   1
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (PWRE, 0, Serialized)
        {
            If (Ones)
            {
                Store (Zero, \_SB.PCI0.PEG0.PEGP.PO50)
            }
            Else
            {
                Store (One, \_SB.PCI0.PEG0.PEGP.PO50)
            }

            If (Zero)
            {
                Store (Zero, \_SB.PCI0.PEG0.PEGP.PO54)
            }
            Else
            {
                Store (One, \_SB.PCI0.PEG0.PEGP.PO54)
            }

            Sleep (0x32)
            Store (One, GS47)
            Sleep (0x32)
            If (Zero)
            {
                Store (Zero, \_SB.PCI0.PEG0.PEGP.PO50)
            }
            Else
            {
                Store (One, \_SB.PCI0.PEG0.PEGP.PO50)
            }

            Sleep (0x32)
            Store (Zero, GS47)
            Sleep (0x32)
        }

        Method (PWRD, 0, Serialized)
        {
            If (Ones)
            {
                Store (Zero, \_SB.PCI0.PEG0.PEGP.PO50)
            }
            Else
            {
                Store (One, \_SB.PCI0.PEG0.PEGP.PO50)
            }

            If (Ones)
            {
                Store (Zero, \_SB.PCI0.PEG0.PEGP.PO54)
            }
            Else
            {
                Store (One, \_SB.PCI0.PEG0.PEGP.PO54)
            }
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (B0D1, Zero)
        OperationRegion (RPCI, SystemMemory, Or (PEBS, 0x8000, B0D1), 0x1000)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0x1FC), 
                ,   9, 
            SGL1,   1, 
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
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (PCIS, SystemMemory, EBAS (0x0100), Field (PCIS, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                CMDR,   8, 
                VGAR,   2008
            })
        Name (VGAB, Buffer (0xFB)
        {
            /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0018 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0020 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0028 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0030 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0038 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0040 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0048 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0050 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0058 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0060 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0068 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0070 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0078 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0080 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0088 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0090 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0098 */   0x00, 0x00, 0x00
        })
        OperationRegion (NVHM, SystemMemory, NVHA (0x00010400), Field (NVHM, AnyAcc, NoLock, Preserve)
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
            })
        Name (BDFR, 0x00100488)
        OperationRegion (PCNV, SystemMemory, Or (PEBS, BDFR, BDFR), 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }

        Name (OMPR, 0x02)
        Name (DGOS, Zero)
        Name (CTOI, One)
        Name (NTOI, One)
        Name (MADL, Zero)
        Name (MSTE, Zero)
        Method (VSTS, 0, NotSerialized)
        {
            If (LNotEqual (\_SB.PCI0.GFX0.CPDL, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPDL, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPDL, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL2, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL2, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL2, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL3, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL3, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL3, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL4, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL4, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL4, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL5, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL5, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL5, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL6, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL6, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL6, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL7, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL7, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL7, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CPL8, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CPL8, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GATD, 0x02, \_SB.PCI0.GFX0.GATD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CPL8, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GATD, One, \_SB.PCI0.GFX0.GATD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CADL, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CADL, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CADL, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL2, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL2, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL2, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL3, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL3, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL3, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL4, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL4, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL4, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL5, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL5, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL5, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL6, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL6, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL6, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL7, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL7, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL7, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.GFX0.CAL8, Zero))
            {
                If (LEqual (\_SB.PCI0.GFX0.CAL8, And (\_SB.PCI0.GFX0.IDI1, 0xFFFF)))
                {
                    Or (\_SB.PCI0.GFX0.GACD, 0x02, \_SB.PCI0.GFX0.GACD)
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.GFX0.CAL8, And (\_SB.PCI0.GFX0.IDI2, 0xFFFF)))
                    {
                        Or (\_SB.PCI0.GFX0.GACD, One, \_SB.PCI0.GFX0.GACD)
                    }
                }
            }

            Store (\_SB.PCI0.GFX0.GATD, \_SB.PCI0.PEG0.PEGP.MADL)
            Store (\_SB.PCI0.GFX0.GACD, \_SB.PCI0.PEG0.PEGP.MSTE)
            Store (Zero, \_SB.PCI0.GFX0.GATD)
            Store (Zero, \_SB.PCI0.GFX0.GACD)
        }

        Method (GETD, 2, Serialized)
        {
            Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            VSTS ()
            Or (\_SB.PCI0.PEG0.PEGP.MADL, Arg0, \_SB.PCI0.PEG0.PEGP.MADL)
            Or (\_SB.PCI0.PEG0.PEGP.MSTE, Arg1, \_SB.PCI0.PEG0.PEGP.MSTE)
            While (One)
            {
                Store (ToInteger (\_SB.PCI0.PEG0.PEGP.MADL), _T_0)
                If (LEqual (_T_0, 0x07))
                {
                    While (One)
                    {
                        Store (ToInteger (\_SB.PCI0.PEG0.PEGP.MSTE), _T_1)
                        If (LEqual (_T_1, One))
                        {
                            Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                            Store (0x02, \_SB.PCI0.PEG0.PEGP.NTOI)
                        }
                        Else
                        {
                            If (LEqual (_T_1, 0x02))
                            {
                                Store (0x02, \_SB.PCI0.PEG0.PEGP.CTOI)
                                Store (0x03, \_SB.PCI0.PEG0.PEGP.NTOI)
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    Store (0x03, \_SB.PCI0.PEG0.PEGP.CTOI)
                                    Store (0x04, \_SB.PCI0.PEG0.PEGP.NTOI)
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x03))
                                    {
                                        Store (0x04, \_SB.PCI0.PEG0.PEGP.CTOI)
                                        Store (0x05, \_SB.PCI0.PEG0.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x05))
                                        {
                                            Store (0x05, \_SB.PCI0.PEG0.PEGP.CTOI)
                                            Store (0x06, \_SB.PCI0.PEG0.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x06))
                                            {
                                                Store (0x06, \_SB.PCI0.PEG0.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                            }
                                            Else
                                            {
                                                Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    If (LEqual (_T_0, 0x06))
                    {
                        While (One)
                        {
                            Store (ToInteger (\_SB.PCI0.PEG0.PEGP.MSTE), _T_2)
                            If (LEqual (_T_2, 0x02))
                            {
                                Store (0x02, \_SB.PCI0.PEG0.PEGP.CTOI)
                                Store (0x03, \_SB.PCI0.PEG0.PEGP.NTOI)
                            }
                            Else
                            {
                                If (LEqual (_T_2, 0x04))
                                {
                                    Store (0x03, \_SB.PCI0.PEG0.PEGP.CTOI)
                                    Store (0x06, \_SB.PCI0.PEG0.PEGP.NTOI)
                                }
                                Else
                                {
                                    If (LEqual (_T_2, 0x06))
                                    {
                                        Store (0x06, \_SB.PCI0.PEG0.PEGP.CTOI)
                                        Store (0x02, \_SB.PCI0.PEG0.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        Store (0x02, \_SB.PCI0.PEG0.PEGP.CTOI)
                                        Store (0x02, \_SB.PCI0.PEG0.PEGP.NTOI)
                                    }
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x05))
                        {
                            While (One)
                            {
                                Store (ToInteger (\_SB.PCI0.PEG0.PEGP.MSTE), _T_3)
                                If (LEqual (_T_3, One))
                                {
                                    Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                                    Store (0x03, \_SB.PCI0.PEG0.PEGP.NTOI)
                                }
                                Else
                                {
                                    If (LEqual (_T_3, 0x04))
                                    {
                                        Store (0x03, \_SB.PCI0.PEG0.PEGP.CTOI)
                                        Store (0x05, \_SB.PCI0.PEG0.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_3, 0x05))
                                        {
                                            Store (0x05, \_SB.PCI0.PEG0.PEGP.CTOI)
                                            Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                                            Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                        }
                                    }
                                }

                                Break
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x03))
                            {
                                While (One)
                                {
                                    Store (ToInteger (\_SB.PCI0.PEG0.PEGP.MSTE), _T_4)
                                    If (LEqual (_T_4, One))
                                    {
                                        Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                                        Store (0x02, \_SB.PCI0.PEG0.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_4, 0x02))
                                        {
                                            Store (0x02, \_SB.PCI0.PEG0.PEGP.CTOI)
                                            Store (0x04, \_SB.PCI0.PEG0.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_4, 0x03))
                                            {
                                                Store (0x04, \_SB.PCI0.PEG0.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                            }
                                            Else
                                            {
                                                Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                While (One)
                                {
                                    Store (ToInteger (\_SB.PCI0.PEG0.PEGP.MSTE), _T_5)
                                    If (LEqual (_T_5, One))
                                    {
                                        Store (One, \_SB.PCI0.PEG0.PEGP.CTOI)
                                        Store (One, \_SB.PCI0.PEG0.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_5, 0x02))
                                        {
                                            Store (0x02, \_SB.PCI0.PEG0.PEGP.CTOI)
                                            Store (0x02, \_SB.PCI0.PEG0.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_5, 0x04))
                                            {
                                                Store (0x03, \_SB.PCI0.PEG0.PEGP.CTOI)
                                                Store (0x03, \_SB.PCI0.PEG0.PEGP.NTOI)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

        Method (NVOP, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- NV OPTIMUS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x04)
                        {
                             0x61, 0x00, 0x01, 0x0C
                        }, Local0)
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x05))
                    {
                        Name (TMP5, Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00
                        })
                        CreateField (TMP5, Zero, 0x04, DAVF)
                        CreateField (TMP5, 0x04, One, LIDF)
                        CreateField (TMP5, 0x08, 0x06, TOGN)
                        CreateField (Arg3, 0x1F, One, NCSM)
                        CreateField (Arg3, 0x19, 0x05, NCSN)
                        CreateField (Arg3, 0x18, One, DIMK)
                        CreateField (Arg3, 0x0C, 0x0C, ACTD)
                        CreateField (Arg3, Zero, 0x0C, ATTD)
                        If (ToInteger (NCSM))
                        {
                            Store (ToInteger (NCSN), TOGN)
                        }
                        Else
                        {
                            If (ToInteger (DIMK))
                            {
                                GETD (ToInteger (ATTD), ToInteger (ACTD))
                                Store (\_SB.PCI0.PEG0.PEGP.NTOI, TOGN)
                                Store (One, DAVF)
                            }
                        }

                        Return (TMP5)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x06))
                        {
                            Name (TMP6, Package (0x0F)
                            {
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
                                0x2C
                            })
                            Store (\_SB.PCI0.GFX0.IDI2, Index (TMP6, Zero))
                            Store (\_SB.PCI0.GFX0.IDI1, Index (TMP6, 0x02))
                            Store (\_SB.PCI0.GFX0.IDI4, Index (TMP6, 0x04))
                            Store (\_SB.PCI0.GFX0.IDI2, Index (TMP6, 0x06))
                            Store (\_SB.PCI0.GFX0.IDI1, Index (TMP6, 0x07))
                            Store (\_SB.PCI0.GFX0.IDI2, Index (TMP6, 0x09))
                            Store (\_SB.PCI0.GFX0.IDI4, Index (TMP6, 0x0A))
                            Store (\_SB.PCI0.GFX0.IDI1, Index (TMP6, 0x0C))
                            Store (\_SB.PCI0.GFX0.IDI4, Index (TMP6, 0x0D))
                            Return (TMP6)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x10))
                            {
                                Return (\_SB.PCI0.PEG0.PEGP.GOBT (Arg3))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x1A))
                                {
                                    CreateField (Arg3, 0x18, 0x02, OPCE)
                                    CreateField (Arg3, Zero, One, FLCH)
                                    If (ToInteger (FLCH))
                                    {
                                        Store (ToInteger (OPCE), OMPR)
                                    }

                                    Name (RBUF, Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00
                                    })
                                    CreateField (RBUF, Zero, One, OPEN)
                                    CreateField (RBUF, 0x03, 0x02, CGCS)
                                    CreateField (RBUF, 0x06, One, SHPC)
                                    CreateField (RBUF, 0x18, 0x03, DGPC)
                                    CreateField (RBUF, 0x1B, 0x02, HDAC)
                                    Store (One, OPEN)
                                    Store (One, SHPC)
                                    Store (0x02, HDAC)
                                    Store (One, DGPC)
                                    If (\_SB.PCI0.PEG0.PEGP.GSTA ())
                                    {
                                        Store (0x03, CGCS)
                                    }
                                    Else
                                    {
                                        Store (Zero, CGCS)
                                    }

                                    Return (RBUF)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x1B))
                                    {
                                        Store (Arg3, Local0)
                                        CreateField (Local0, Zero, One, OPFL)
                                        CreateField (Local0, One, One, OPVL)
                                        If (ToInteger (OPVL))
                                        {
                                            Store (Zero, OPTF)
                                            If (ToInteger (OPFL))
                                            {
                                                Store (One, OPTF)
                                            }
                                        }

                                        Store (OPTF, Local0)
                                        If (\_SB.PCI0.LPCB.EC0.HKTF)
                                        {
                                            Not (\_SB.PCI0.LPCB.EC0.HYMS, \_SB.PCI0.LPCB.EC0.HYMS)
                                            If (\_SB.PCI0.LPCB.EC0.HYMS)
                                            {
                                                Or (Local0, 0x80, Local0)
                                            }
                                            Else
                                            {
                                                Or (Local0, 0xA0, Local0)
                                            }

                                            Store (Zero, \_SB.PCI0.LPCB.EC0.HKTF)
                                            Store (CMSR (0x53, Local4, Add (Local4, One, Local4), CMSW (0x53, 
                                                Local4), Else
                                                    {
                                                        If (\_SB.PCI0.LPCB.EC0.HYMS)
                                                        {
                                                            Or (Local0, 0x80, Local0)
                                                        }
                                                        Else
                                                        {
                                                            Or (Local0, 0xA0, Local0)
                                                        }
                                                    }), Return (Local0))
                                        }
                                    }
                                    Else
                                    {
                                        Return (0x80000002)
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0080 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0088 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0090 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0098 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00E0 */   0x00, 0x00
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK)
            }

            Return (Zero)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.PEG0.PEGP._ADR)
        }

        Method (GSTA, 0, Serialized)
        {
            If (LEqual (\_SB.PCI0.PEG0.PEGP.PO54, One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            \_SB.PCI0.PEG0.PEGP.PWRE ()
            Sleep (0x64)
            Store (Zero, LNKD)
            Sleep (0x64)
            Store (Zero, Local0)
            While (LAnd (LLess (LNKS, 0x07), LLess (Local0, 0x1F40)))
            {
                Sleep (One)
                Add (Local0, One, Local0)
            }

            Sleep (0x64)
            Store (Zero, CMDR)
            Store (VGAB, VGAR)
            Store (0x06, CMDR)
            Store (One, \_SB.PCI0.LPCB.EC0.E0B2)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            Store (Zero, \_SB.PCI0.LPCB.EC0.E0B2)
            Store (VGAR, VGAB)
            Store (One, LNKD)
            Sleep (0x64)
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            Sleep (0x64)
            \_SB.PCI0.PEG0.PEGP.PWRD ()
        }

        Name (_IRC, Zero)  // _IRC: Inrush Current
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                \_SB.PCI0.PEG0.PEGP._ON ()
                Store (Zero, DGOS)
                Store (Zero, MLTF)
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            Store (MLTF, OPTF)
            If (LEqual (\_SB.PCI0.PEG0.PEGP.OMPR, 0x03))
            {
                \_SB.PCI0.PEG0.PEGP._OFF ()
                Store (One, DGOS)
                Store (0x02, \_SB.PCI0.PEG0.PEGP.OMPR)
            }
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00
                })
            }

            If (LGreater (Local0, RVBS))
            {
                Return (Buffer (Local1)
                {
                     0x00
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }

        Method (MXMX, 1, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                P8XH (One, 0x99, P8XH (Zero, One, Return (One), Return (Zero)))
            }
        }

        Name (MXM3, Buffer (0x45)
        {
            /* 0000 */   0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x3D, 0x00,
            /* 0008 */   0x30, 0x10, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0010 */   0x00, 0x01, 0x8A, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0018 */   0x60, 0x79, 0xD0, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0020 */   0x20, 0x2B, 0xE2, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0028 */   0x60, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,
            /* 0030 */   0x01, 0x90, 0x01, 0x00, 0x03, 0x00, 0x90, 0x01,
            /* 0038 */   0x13, 0x00, 0x90, 0x01, 0xE5, 0x0D, 0x01, 0x01,
            /* 0040 */   0x01, 0x00, 0x00, 0x00, 0x96
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xFD, 0x88, 0xDB, 0x95, 0x0A, 0x94, 0x53, 0x42,
                        /* 0008 */   0xA4, 0x46, 0x70, 0xCE, 0x05, 0x04, 0xAE, 0xDF
                    }))
            {
                Store ("<<< SPB DSM - dGPU >>>", Debug)
                Return (\_SB.PCI0.GFX0.SPB)
                Arg0
                Arg1
                Arg2
                Arg3
            }

            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47,
                        /* 0008 */   0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                    }))
            {
                Return (\_SB.PCI0.PEG0.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0x00, 0xA4, 0x04, 0x40, 0x7D, 0x91, 0xF2, 0x4C,
                        /* 0008 */   0xB8, 0x9C, 0x79, 0xB6, 0x2F, 0xD5, 0x56, 0x65
                    }))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (0x04)
                        {
                             0x01, 0x00, 0x01, 0x01
                        })
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x18))
                        {
                            Return (Buffer (0x04)
                            {
                                 0x00, 0x03, 0x00, 0x00
                            })
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x10))
                            {
                                If (LEqual (Arg1, 0x0300))
                                {
                                    Return (MXM3)
                                }
                            }
                        }
                    }

                    Break
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD01._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI1, Zero))
                {
                    If (LEqual (DCA1, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI1))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI1))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI1, Zero))
                {
                    If (LEqual (DNA1, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI1))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI1))
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
                Return (\_SB.PCI0.GFX0.DD02._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI2, Zero))
                {
                    If (LEqual (\_SB.PCI0.LPCB.H_EC.LSTE, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        If (LEqual (DCA1, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA2, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA3, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA4, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA5, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA6, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA7, DDI2))
                        {
                            Return (0x1F)
                        }

                        If (LEqual (DCA8, DDI2))
                        {
                            Return (0x1F)
                        }
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI2, Zero))
                {
                    If (LEqual (DNA1, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI2))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI2))
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
                Return (\_SB.PCI0.GFX0.DD02._BCL)
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.DD02._BQC)
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                Return (\_SB.PCI0.GFX0.DD02._BCM)
                Arg0
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD03._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI3, Zero))
                {
                    If (LEqual (DCA1, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI3))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI3))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI3, Zero))
                {
                    If (LEqual (DNA1, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI3))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI3))
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
                Return (\_SB.PCI0.GFX0.DD04._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI4, Zero))
                {
                    If (LEqual (DCA1, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI4))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI4))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI4, Zero))
                {
                    If (LEqual (DNA1, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI4))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI4))
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
                Return (\_SB.PCI0.GFX0.DD05._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI5, Zero))
                {
                    If (LEqual (DCA1, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI5))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI5))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI5, Zero))
                {
                    If (LEqual (DNA1, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI5))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI5))
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
                Return (\_SB.PCI0.GFX0.DD06._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI6, Zero))
                {
                    If (LEqual (DCA1, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI6))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI6))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI6, Zero))
                {
                    If (LEqual (DNA1, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI6))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI6))
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
                Return (\_SB.PCI0.GFX0.DD07._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI7, Zero))
                {
                    If (LEqual (DCA1, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI7))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI7))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI7, Zero))
                {
                    If (LEqual (DNA1, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI7))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI7))
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
                Return (\_SB.PCI0.GFX0.DD08._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LNotEqual (DDI8, Zero))
                {
                    If (LEqual (DCA1, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA2, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA3, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA4, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA5, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA6, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA7, DDI8))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (DCA8, DDI8))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LNotEqual (DDI8, Zero))
                {
                    If (LEqual (DNA1, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA2, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA3, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA4, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA5, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA6, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA7, DDI8))
                    {
                        Return (One)
                    }

                    If (LEqual (DNA8, DDI8))
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
            Store (IDI1, Index (TLPK, Zero))
            Store (IDI2, Index (TLPK, 0x02))
            Store (IDI3, Index (TLPK, 0x04))
            Store (IDI4, Index (TLPK, 0x06))
            Store (IDI5, Index (TLPK, 0x08))
            Store (IDI6, Index (TLPK, 0x0A))
            Store (IDI7, Index (TLPK, 0x0C))
            Store (IDI8, Index (TLPK, 0x0E))
            Store (IDI1, Index (TLPK, 0x10))
            Store (IDI2, Index (TLPK, 0x11))
            Store (IDI1, Index (TLPK, 0x13))
            Store (IDI3, Index (TLPK, 0x14))
            Store (IDI1, Index (TLPK, 0x16))
            Store (IDI4, Index (TLPK, 0x17))
            Store (IDI1, Index (TLPK, 0x19))
            Store (IDI5, Index (TLPK, 0x1A))
            Store (IDI2, Index (TLPK, 0x1C))
            Store (IDI6, Index (TLPK, 0x1D))
        }

        Method (MXMX, 1, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                P8XH (One, 0x77, P8XH (Zero, One, Return (One), Return (Zero)))
            }
        }

        Method (MXDS, 1, Serialized)
        {
        }

        OperationRegion (NVIG, SystemMemory, NVGA (0x0400), Field (NVIG, AnyAcc, NoLock, Preserve)
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
            })
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
        Method (NBCI, 4, Serialized)
        {
            If (LEqual (Arg2, 0x04))
            {
                Name (TMP3, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                CreateDWordField (TMP3, Zero, STS3)
                Store (Zero, STS3)
                Store (And (DerefOf (Index (Arg3, Zero)), 0xFF), Local0)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x0C), 
                    One), UBDM)
                If (LNotEqual (Local0, GBDP))
                {
                    If (LEqual (UBDM, One))
                    {
                        Store (Local0, GBDP)
                    }
                    Else
                    {
                        Store (GBDP, Local0)
                        Or (STS3, 0x1000, STS3)
                    }
                }

                Or (STS3, Local0, STS3)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x0D), 
                    0x03), Local1)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x10), 
                    One), USPM)
                If (LNotEqual (Local1, GPSP))
                {
                    If (LEqual (USPM, One))
                    {
                        Store (Local1, GPSP)
                    }
                    Else
                    {
                        Store (GPSP, Local1)
                        Or (STS3, 0x8000, STS3)
                    }
                }

                Or (STS3, ShiftLeft (Local1, 0x0D), STS3)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x11), 
                    0x0F), Local2)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x15), 
                    One), UTCM)
                If (LNotEqual (Local2, PTVC))
                {
                    If (LEqual (UTCM, One))
                    {
                        Store (Local2, PTVC)
                    }
                    Else
                    {
                        Store (PTVC, Local2)
                        Or (STS3, 0x00100000, STS3)
                    }
                }

                Or (STS3, ShiftLeft (Local2, 0x10), STS3)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x16), 
                    0x1F), Local3)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x1B), 
                    One), UTPM)
                If (LNotEqual (Local3, PTVF))
                {
                    If (LEqual (UTPM, One))
                    {
                        Store (Local3, PTVF)
                    }
                    Else
                    {
                        Store (PTVF, Local3)
                        Or (STS3, 0x04000000, STS3)
                    }
                }

                Or (STS3, ShiftLeft (Local3, 0x15), STS3)
                Store (ELPT, Local4)
                Or (STS3, ShiftLeft (Local4, 0x1B), STS3)
                Store (STS3, TMP3)
                Return (TMP3)
            }

            If (LEqual (Arg2, 0x05))
            {
                Name (TMP4, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                CreateDWordField (TMP4, Zero, STS4)
                Store (Zero, STS4)
                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x1F), 
                    One), Local1)
                If (LEqual (Local1, One))
                {
                    Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x19), 
                        0x1F), TLSN)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA1)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA2)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA3)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA4)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA5)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA6)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA7)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DNA8)
                    If (LLess (TLSN, 0x09))
                    {
                        Store (DerefOf (Index (TLPK, Multiply (Subtract (TLSN, One), 0x02
                            ))), \_SB.PCI0.PEG0.PEGP.DNA1)
                    }
                    Else
                    {
                        Store (DerefOf (Index (TLPK, Add (Multiply (Subtract (TLSN, 0x09), 
                            0x03), 0x10))), \_SB.PCI0.PEG0.PEGP.DNA1)
                        Store (DerefOf (Index (TLPK, Add (Multiply (Subtract (TLSN, 0x09), 
                            0x03), 0x11))), \_SB.PCI0.PEG0.PEGP.DNA2)
                    }

                    Store (Zero, \_SB.PCI0.GFX0.NADL)
                    Store (Zero, \_SB.PCI0.GFX0.NDL2)
                    Store (Zero, \_SB.PCI0.GFX0.NDL3)
                    Store (Zero, \_SB.PCI0.GFX0.NDL4)
                    Store (Zero, \_SB.PCI0.GFX0.NDL5)
                    Store (Zero, \_SB.PCI0.GFX0.NDL6)
                    Store (Zero, \_SB.PCI0.GFX0.NDL7)
                    Store (Zero, \_SB.PCI0.GFX0.NDL8)
                    If (LLess (TLSN, 0x09))
                    {
                        Store (DerefOf (Index (TLPK, Multiply (Subtract (TLSN, One), 0x02
                            ))), \_SB.PCI0.GFX0.NADL)
                    }
                    Else
                    {
                        Store (DerefOf (Index (TLPK, Add (Multiply (Subtract (TLSN, 0x09), 
                            0x03), 0x10))), \_SB.PCI0.GFX0.NADL)
                        Store (DerefOf (Index (TLPK, Add (Multiply (Subtract (TLSN, 0x09), 
                            0x03), 0x11))), \_SB.PCI0.GFX0.NDL2)
                    }

                    If (LEqual (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x1E
                        ), One), One))
                    {
                        Store (One, GPPO)
                        Store (0x03, HGNC)
                        If (LEqual (CGPU, One))
                        {
                            Store (0x02, GPSS)
                        }

                        If (LEqual (CGPU, 0x02))
                        {
                            Store (One, GPSS)
                        }

                        Notify (\_SB.PCI0.GFX0, 0xD0)
                        Notify (\_SB.PCI0.WMI1, 0xD0)
                    }
                }

                Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x18), 
                    One), Local2)
                If (LEqual (Local2, One))
                {
                    Store (And (ShiftRight (DerefOf (Index (Arg3, Zero)), 0x0C), 
                        0x0FFF), GACD)
                    Store (And (DerefOf (Index (Arg3, Zero)), 0x0FFF), GATD)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA1)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA2)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA3)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA4)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA5)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA6)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA7)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCA8)
                    If (LEqual (And (GACD, One), One))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI7, \_SB.PCI0.PEG0.PEGP.DCA7)
                    }

                    If (LEqual (And (GACD, 0x02), 0x02))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI8, \_SB.PCI0.PEG0.PEGP.DCA8)
                    }

                    If (LEqual (And (GACD, 0x04), 0x04))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI1, \_SB.PCI0.PEG0.PEGP.DCA1)
                    }

                    If (LEqual (And (GACD, 0x08), 0x08))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI2, \_SB.PCI0.PEG0.PEGP.DCA2)
                    }

                    If (LEqual (And (GACD, 0x10), 0x10))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI3, \_SB.PCI0.PEG0.PEGP.DCA3)
                    }

                    If (LEqual (And (GACD, 0x20), 0x20))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI4, \_SB.PCI0.PEG0.PEGP.DCA4)
                    }

                    If (LEqual (And (GACD, 0x40), 0x40))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI5, \_SB.PCI0.PEG0.PEGP.DCA5)
                    }

                    If (LEqual (And (GACD, 0x80), 0x80))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI6, \_SB.PCI0.PEG0.PEGP.DCA6)
                    }

                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP1)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP2)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP3)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP4)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP5)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP6)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP7)
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.DCP8)
                    If (LEqual (And (GATD, One), One))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI7, \_SB.PCI0.PEG0.PEGP.DCP7)
                    }

                    If (LEqual (And (GATD, 0x02), 0x02))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI8, \_SB.PCI0.PEG0.PEGP.DCP8)
                    }

                    If (LEqual (And (GATD, 0x04), 0x04))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI1, \_SB.PCI0.PEG0.PEGP.DCP1)
                    }

                    If (LEqual (And (GATD, 0x08), 0x08))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI2, \_SB.PCI0.PEG0.PEGP.DCP2)
                    }

                    If (LEqual (And (GATD, 0x10), 0x10))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI3, \_SB.PCI0.PEG0.PEGP.DCP3)
                    }

                    If (LEqual (And (GATD, 0x20), 0x20))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI4, \_SB.PCI0.PEG0.PEGP.DCP4)
                    }

                    If (LEqual (And (GATD, 0x40), 0x40))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI5, \_SB.PCI0.PEG0.PEGP.DCP5)
                    }

                    If (LEqual (And (GATD, 0x80), 0x80))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.DDI6, \_SB.PCI0.PEG0.PEGP.DCP6)
                    }

                    Store (Zero, \_SB.PCI0.GFX0.CADL)
                    Store (Zero, \_SB.PCI0.GFX0.CAL2)
                    Store (Zero, \_SB.PCI0.GFX0.CAL3)
                    Store (Zero, \_SB.PCI0.GFX0.CAL4)
                    Store (Zero, \_SB.PCI0.GFX0.CAL5)
                    Store (Zero, \_SB.PCI0.GFX0.CAL6)
                    Store (Zero, \_SB.PCI0.GFX0.CAL7)
                    Store (Zero, \_SB.PCI0.GFX0.CAL8)
                    If (LEqual (And (GACD, One), One))
                    {
                        Store (\_SB.PCI0.GFX0.IDI1, \_SB.PCI0.GFX0.CADL)
                    }

                    If (LEqual (And (GACD, 0x02), 0x02))
                    {
                        Store (\_SB.PCI0.GFX0.IDI2, \_SB.PCI0.GFX0.CAL2)
                    }

                    If (LEqual (And (GACD, 0x04), 0x04))
                    {
                        Store (\_SB.PCI0.GFX0.IDI3, \_SB.PCI0.GFX0.CAL3)
                    }

                    If (LEqual (And (GACD, 0x08), 0x08))
                    {
                        Store (\_SB.PCI0.GFX0.IDI4, \_SB.PCI0.GFX0.CAL4)
                    }

                    If (LEqual (And (GACD, 0x10), 0x10))
                    {
                        Store (\_SB.PCI0.GFX0.IDI5, \_SB.PCI0.GFX0.CAL5)
                    }

                    If (LEqual (And (GACD, 0x20), 0x20))
                    {
                        Store (\_SB.PCI0.GFX0.IDI6, \_SB.PCI0.GFX0.CAL6)
                    }

                    If (LEqual (And (GACD, 0x40), 0x40))
                    {
                        Store (\_SB.PCI0.GFX0.IDI7, \_SB.PCI0.GFX0.CAL7)
                    }

                    If (LEqual (And (GACD, 0x80), 0x80))
                    {
                        Store (\_SB.PCI0.GFX0.IDI8, \_SB.PCI0.GFX0.CAL8)
                    }

                    Store (Zero, \_SB.PCI0.GFX0.CPDL)
                    Store (Zero, \_SB.PCI0.GFX0.CPL2)
                    Store (Zero, \_SB.PCI0.GFX0.CPL3)
                    Store (Zero, \_SB.PCI0.GFX0.CPL4)
                    Store (Zero, \_SB.PCI0.GFX0.CPL5)
                    Store (Zero, \_SB.PCI0.GFX0.CPL6)
                    Store (Zero, \_SB.PCI0.GFX0.CPL7)
                    Store (Zero, \_SB.PCI0.GFX0.CPL8)
                    If (LEqual (And (GATD, One), One))
                    {
                        Store (\_SB.PCI0.GFX0.IDI1, \_SB.PCI0.GFX0.CPDL)
                    }

                    If (LEqual (And (GATD, 0x02), 0x02))
                    {
                        Store (\_SB.PCI0.GFX0.IDI2, \_SB.PCI0.GFX0.CPL2)
                    }

                    If (LEqual (And (GATD, 0x04), 0x04))
                    {
                        Store (\_SB.PCI0.GFX0.IDI3, \_SB.PCI0.GFX0.CPL3)
                    }

                    If (LEqual (And (GATD, 0x08), 0x08))
                    {
                        Store (\_SB.PCI0.GFX0.IDI4, \_SB.PCI0.GFX0.CPL4)
                    }

                    If (LEqual (And (GATD, 0x10), 0x10))
                    {
                        Store (\_SB.PCI0.GFX0.IDI5, \_SB.PCI0.GFX0.CPL5)
                    }

                    If (LEqual (And (GATD, 0x20), 0x20))
                    {
                        Store (\_SB.PCI0.GFX0.IDI6, \_SB.PCI0.GFX0.CPL6)
                    }

                    If (LEqual (And (GATD, 0x40), 0x40))
                    {
                        Store (\_SB.PCI0.GFX0.IDI7, \_SB.PCI0.GFX0.CPL7)
                    }

                    If (LEqual (And (GATD, 0x80), 0x80))
                    {
                        Store (\_SB.PCI0.GFX0.IDI8, \_SB.PCI0.GFX0.CPL8)
                    }
                }

                Store (DHPE, Local4)
                Or (STS4, ShiftLeft (Local4, 0x15), STS4)
                Store (DHPS, Local4)
                Or (STS4, ShiftLeft (Local4, 0x14), STS4)
                Store (TLSN, Local5)
                Or (STS4, ShiftLeft (Local5, 0x08), STS4)
                Store (DKST, Local5)
                Or (STS4, ShiftLeft (Local5, 0x05), STS4)
                Store (LDES, Local5)
                Or (STS4, ShiftLeft (Local5, 0x04), STS4)
                Store (DACE, Local5)
                Or (STS4, Local5, STS4)
                Store (Zero, LDES)
                Store (Zero, DHPS)
                Store (Zero, DHPE)
                Store (Zero, DACE)
                Store (STS4, TMP4)
                Return (TMP4)
            }

            If (LEqual (Arg2, 0x06))
            {
                Return (TLPK)
            }
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Store (And (Arg2, 0xFF), Local0)
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xFD, 0x88, 0xDB, 0x95, 0x0A, 0x94, 0x53, 0x42,
                        /* 0008 */   0xA4, 0x46, 0x70, 0xCE, 0x05, 0x04, 0xAE, 0xDF
                    }))
            {
                Store ("<<< SPB DSM - iGPU >>>", Debug)
                Return (\_SB.PCI0.GFX0.SPB)
                Arg0
                Arg1
                Arg2
                Arg3
            }

            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47,
                        /* 0008 */   0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                    }))
            {
                Return (\_SB.PCI0.PEG0.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xD3, 0x73, 0xD8, 0x7E, 0xD0, 0xC2, 0x4F, 0x4E,
                        /* 0008 */   0xA8, 0x54, 0x0F, 0x13, 0x17, 0xB0, 0x1C, 0x2C
                    }))
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00
                    })
                }

                If (LEqual (Arg2, One))
                {
                    Return (Package (0x08)
                    {
                        0x07, 
                        Package (0x02)
                        {
                            0x80010100, 
                            Buffer (0x04)
                            {
                                 0x01, 0x03, 0x03, 0x00
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80010400, 
                            Buffer (0x04)
                            {
                                 0x02, 0x03, 0x03, 0x00
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80016300, 
                            Buffer (0x04)
                            {
                                 0x08, 0x03, 0x03, 0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80017301, 
                            Buffer (0x04)
                            {
                                 0x04, 0x03, 0x03, 0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80017302, 
                            Buffer (0x04)
                            {
                                 0x05, 0x03, 0x03, 0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80016303, 
                            Buffer (0x04)
                            {
                                 0x0A, 0x03, 0x03, 0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            0x80017304, 
                            Buffer (0x04)
                            {
                                 0x06, 0x03, 0x03, 0x03
                            }
                        }
                    })
                }

                Return (One)
            }

            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xA0, 0xA0, 0x95, 0x9D, 0x60, 0x00, 0x48, 0x4D,
                        /* 0008 */   0xB3, 0x4D, 0x7E, 0x5F, 0xEA, 0x12, 0x9F, 0xD4
                    }))
            {
                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80
                })
            }

            Return (0x80000001)
        }
    }

    Method (IDAB, 0, Serialized)
    {
        Store (Zero, NDID)
        If (LNotEqual (\_SB.PCI0.GFX0.IDI1, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI1, DID1)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI2, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI2, DID2)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI3, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI3, DID3)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI4, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI4, DID4)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI5, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI5, DID5)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI6, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI6, DID6)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI7, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI7, DID7)
        }

        If (LNotEqual (\_SB.PCI0.GFX0.IDI8, Zero))
        {
            Increment (NDID)
            Or (0x80000000, \_SB.PCI0.GFX0.IDI8, DID8)
        }
    }

    Method (HGAS, 0, Serialized)
    {
    }

    Method (HBRT, 1, Serialized)
    {
        Store (Arg0, \_SB.PCI0.GFX0.DACE)
        If (And (0x04, DSEN))
        {
            If (LEqual (Arg0, 0x04))
            {
                Notify (\_SB.PCI0.PEG0.PEGP.DD02, 0x87)
            }

            If (LEqual (Arg0, 0x03))
            {
                Notify (\_SB.PCI0.PEG0.PEGP.DD02, 0x86)
            }
        }
    }

    Method (HLSE, 0, Serialized)
    {
        Store (0x02, \_SB.PCI0.GFX0.DACE)
        Store (One, \_SB.PCI0.GFX0.LDES)
        Store (0x02, \_SB.PCI0.GFX0.DHPE)
        Store (LIDS, \_SB.PCI0.GFX0.DHPS)
        If (LEqual (\_SB.PCI0.GFX0.CGPU, One))
        {
            \_SB.PCI0.GFX0.GLID (LIDS)
        }
        Else
        {
            Notify (\_SB.PCI0.GFX0, 0xDB)
            Notify (\_SB.PCI0.WMI1, 0xDB)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x81)
        }
    }

    Method (HDSE, 1, Serialized)
    {
        Store (One, \_SB.PCI0.GFX0.DACE)
        Subtract (\_SB.PCI0.LPCB.H_EC.SCAN, 0x3A, \_SB.PCI0.GFX0.TLST)
        If (LEqual (\_SB.PCI0.GFX0.TLSN, 0x0D))
        {
            Store (One, \_SB.PCI0.GFX0.TLSN)
        }
        Else
        {
            Increment (\_SB.PCI0.GFX0.TLSN)
        }

        Notify (\_SB.PCI0.GFX0, 0x80)
        Notify (\_SB.PCI0.WMI1, 0x80)
    }

    Method (HPFS, 0, Serialized)
    {
        If (LEqual (\_SB.PCI0.GFX0.CGPU, One))
        {
            \_SB.PCI0.GFX0.AINT (0x02, Zero)
        }
        Else
        {
            Store (0x05, \_SB.PCI0.GFX0.DACE)
            If (LEqual (\_SB.PCI0.GFX0.GPSP, 0x02))
            {
                Store (Zero, \_SB.PCI0.GFX0.GPSP)
            }
            Else
            {
                Increment (\_SB.PCI0.GFX0.GPSP)
            }

            Notify (\_SB.PCI0.GFX0, 0xE1)
        }
    }

    Method (HGLS, 0, Serialized)
    {
        Store (0x02, \_SB.PCI0.GFX0.DACE)
        Store (One, \_SB.PCI0.GFX0.LDES)
        Store (0x02, \_SB.PCI0.GFX0.DHPE)
        Store (LIDS, \_SB.PCI0.GFX0.DHPS)
        If (LEqual (\_SB.PCI0.GFX0.CGPU, One))
        {
            If (\_SB.PCI0.GFX0.GLID (LIDS))
            {
                Or (0x80000000, \_SB.PCI0.GFX0.CLID, \_SB.PCI0.GFX0.CLID)
            }
        }
        Else
        {
            Notify (\_SB.PCI0.GFX0, 0xDB)
            Notify (\_SB.PCI0.WMI1, 0xDB)
        }
    }

    Method (FPED, 0, NotSerialized)
    {
        OperationRegion (IGDM, SystemMemory, ASLB (0x2000), Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x1C04), 
                DDCH,   1024
            })
    }

    Method (PDCC, 0, NotSerialized)
    {
        Increment (\_SB.PCI0.GFX0.GPSS)
        Mod (\_SB.PCI0.GFX0.GPSS, 0x03, \_SB.PCI0.GFX0.GPSS)
        Store (One, \_SB.PCI0.GFX0.GPPO)
        Store (One, \_SB.PCI0.GFX0.HGNC)
        Notify (\_SB.PCI0.GFX0, 0xD0)
        Notify (\_SB.PCI0.WMI1, 0xD0)
    }

    Method (WMAB, 1, Serialized)
    {
        If (LEqual (Arg0, 0x02))
        {
            Notify (\_SB.PCI0.GFX0, 0xDB)
            Notify (\_SB.PCI0.WMI1, 0xDB)
        }
        Else
        {
            Notify (\_SB.PCI0.GFX0, 0x80)
            Notify (\_SB.PCI0.WMI1, 0x80)
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
        Device (WMI1)
        {
            Name (_HID, "pnp0c14")  // _HID: Hardware ID
            Name (_UID, "MXM2")  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */   0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */   0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */   0x4D, 0x58, 0x01, 0x02, 0x40, 0x2F, 0x1A, 0x92,
                /* 0018 */   0xC4, 0x0D, 0x2D, 0x40, 0xAC, 0x18, 0xB4, 0x84,
                /* 0020 */   0x44, 0xEF, 0x9E, 0xD2, 0xD0, 0x00, 0x01, 0x08,
                /* 0028 */   0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C,
                /* 0030 */   0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E,
                /* 0038 */   0xD9, 0x00, 0x01, 0x08, 0x06, 0x80, 0x84, 0x42,
                /* 0040 */   0x86, 0x88, 0x0E, 0x49, 0x8C, 0x72, 0x2B, 0xDC,
                /* 0048 */   0xA9, 0x3A, 0x8A, 0x09, 0xDB, 0x00, 0x01, 0x08,
                /* 0050 */   0x62, 0xDE, 0x6B, 0xE0, 0x75, 0xEE, 0xF4, 0x48,
                /* 0058 */   0xA5, 0x83, 0xB2, 0x3E, 0x69, 0xAB, 0xF8, 0x91,
                /* 0060 */   0x80, 0x00, 0x01, 0x08, 0x0F, 0xBD, 0xDE, 0x3A,
                /* 0068 */   0x5F, 0x0C, 0xED, 0x46, 0xAB, 0x2E, 0x04, 0x96,
                /* 0070 */   0x2B, 0x4F, 0xDC, 0xBC, 0x81, 0x00, 0x01, 0x08,
                /* 0078 */   0x11, 0x93, 0x51, 0x1E, 0x75, 0x3E, 0x08, 0x42,
                /* 0080 */   0xB0, 0x5E, 0xEB, 0xE1, 0x7E, 0x3F, 0xF4, 0x1F,
                /* 0088 */   0x86, 0x00, 0x01, 0x08, 0x41, 0x53, 0xF8, 0x37,
                /* 0090 */   0x18, 0x44, 0x24, 0x4F, 0x85, 0x33, 0x38, 0xFF,
                /* 0098 */   0xC7, 0x29, 0x55, 0x42, 0x87, 0x00, 0x01, 0x08,
                /* 00A0 */   0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 00A8 */   0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 00B0 */   0x58, 0x4D, 0x01, 0x00
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If (LEqual (FUNC, 0x4D53445F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {
                        CreateField (Arg2, 0x20, 0x80, MUID)
                        CreateDWordField (Arg2, 0x14, REVI)
                        CreateDWordField (Arg2, 0x18, SFNC)
                        CreateDWordField (Arg2, 0x1C, ARGD)
                        If (LEqual (And (Arg1, 0xFF), One))
                        {
                            Return (\_SB.PCI0.PEG0.PEGP._DSM (MUID, REVI, SFNC, ARGD))
                        }
                    }
                }

                If (LGreaterEqual (SizeOf (Arg2), 0x04))
                {
                    CreateDWordField (Arg2, 0x04, ARGS)
                    If (LEqual (FUNC, 0x494D584D)) {}
                    Else
                    {
                        If (LEqual (FUNC, 0x534D584D)) {}
                        Else
                        {
                            If (LEqual (FUNC, 0x584D584D))
                            {
                                If (LGreaterEqual (SizeOf (Arg2), 0x08))
                                {
                                    CreateDWordField (Arg2, 0x08, SARG)
                                    Return (\_SB.PCI0.PEG0.PEGP.MXMX (SARG))
                                }
                            }
                        }
                    }
                }

                Return (Zero)
            }

            Name (WQXM, Buffer (0x029C)
            {
                /* 0000 */   0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */   0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,
                /* 0010 */   0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */   0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */   0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04,
                /* 0028 */   0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20,
                /* 0030 */   0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84,
                /* 0038 */   0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA,
                /* 0040 */   0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42,
                /* 0048 */   0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61,
                /* 0050 */   0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92,
                /* 0058 */   0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1,
                /* 0060 */   0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2,
                /* 0068 */   0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82,
                /* 0070 */   0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C,
                /* 0078 */   0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC,
                /* 0080 */   0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78,
                /* 0088 */   0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63,
                /* 0090 */   0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0,
                /* 0098 */   0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4,
                /* 00A0 */   0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18,
                /* 00A8 */   0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50,
                /* 00B0 */   0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E,
                /* 00B8 */   0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C,
                /* 00C0 */   0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21,
                /* 00C8 */   0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10,
                /* 00D0 */   0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8,
                /* 00D8 */   0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B,
                /* 00E0 */   0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3,
                /* 00E8 */   0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1,
                /* 00F0 */   0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A,
                /* 00F8 */   0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A,
                /* 0100 */   0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41,
                /* 0108 */   0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07,
                /* 0110 */   0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E,
                /* 0118 */   0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3,
                /* 0120 */   0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9,
                /* 0128 */   0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90,
                /* 0130 */   0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8,
                /* 0138 */   0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0,
                /* 0140 */   0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39,
                /* 0148 */   0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25,
                /* 0150 */   0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46,
                /* 0158 */   0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC,
                /* 0160 */   0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3,
                /* 0168 */   0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3,
                /* 0170 */   0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42,
                /* 0178 */   0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F,
                /* 0180 */   0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20,
                /* 0188 */   0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06,
                /* 0190 */   0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B,
                /* 0198 */   0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB,
                /* 01A0 */   0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68,
                /* 01A8 */   0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2,
                /* 01B0 */   0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39,
                /* 01B8 */   0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A,
                /* 01C0 */   0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83,
                /* 01C8 */   0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89,
                /* 01D0 */   0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02,
                /* 01D8 */   0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49,
                /* 01E0 */   0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5,
                /* 01E8 */   0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C,
                /* 01F0 */   0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27,
                /* 01F8 */   0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80,
                /* 0200 */   0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2,
                /* 0208 */   0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50,
                /* 0210 */   0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74,
                /* 0218 */   0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03,
                /* 0220 */   0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78,
                /* 0228 */   0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F,
                /* 0230 */   0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C,
                /* 0238 */   0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB,
                /* 0240 */   0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1,
                /* 0248 */   0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13,
                /* 0250 */   0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0,
                /* 0258 */   0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14,
                /* 0260 */   0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0,
                /* 0268 */   0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,
                /* 0270 */   0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,
                /* 0278 */   0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0,
                /* 0280 */   0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C,
                /* 0288 */   0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E,
                /* 0290 */   0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A,
                /* 0298 */   0xC4, 0xFF, 0x7F, 0x7F
            })
        }
    }
}

