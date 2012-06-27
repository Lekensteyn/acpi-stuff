/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120620-64 [Jun 24 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of ssdt2.dat, Wed Jun 27 18:56:27 2012
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000CA5 (3237)
 *     Revision         0x01
 *     Checksum         0xD5
 *     OEM ID           "SADptf"
 *     OEM Table ID     "SADptf_"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */

DefinitionBlock ("ssdt2.aml", "SSDT", 1, "SADptf", "SADptf_", 0x00001000)
{
    External (\_PR_.CBMI, IntObj)
    External (\_PR_.CLVL, IntObj)
    External (\_PR_.CPU0)
    External (\_PR_.CPU0._PSS, IntObj)
    External (\_PR_.CPU0._PTC, IntObj)
    External (\_PR_.CPU0._TPC, IntObj)
    External (\_PR_.CPU0._TSD, IntObj)
    External (\_PR_.CPU0._TSS, IntObj)
    External (\_PR_.CPU1)
    External (\_PR_.CPU2)
    External (\_PR_.CPU3)
    External (\_PR_.CPU4)
    External (\_PR_.CPU5)
    External (\_PR_.CPU6)
    External (\_PR_.CPU7)
    External (\_PR_.PL10)
    External (\_PR_.PL11)
    External (\_PR_.PL12)
    External (\_PR_.PL20)
    External (\_PR_.PL21)
    External (\_PR_.PL22)
    External (\_PR_.PLW0, IntObj)
    External (\_PR_.PLW1, IntObj)
    External (\_PR_.PLW2, IntObj)
    External (\_SB_.CPUP)
    External (\_SB_.PCI0.B0D4, DeviceObj)
    External (\_SB_.PCI0.B0D4.MAXT)
    External (\_SB_.PCI0.LPCB.EC0_.RRAM, IntObj)
    External (\_SB_.PCI0.MHBR, IntObj)
    External (\_SB_.SLMT)
    External (\LIMT, IntObj)
    External (B0D4)
    External (PWRU)
    External (TCNT, IntObj)

    Scope (\_SB.PCI0.B0D4)
    {
        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            Name (_T_6, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LAnd (LEqual (XPCC, Zero), CondRefOf (\_PR.CBMI)))
            {
                Store (\_SB.PCI0.LPCB.EC0.RRAM, 0x01AD)
                Local0
                While (One)
                {
                    Store (Local0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Zero, \_PR.CBMI)
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            While (One)
                            {
                                Store (\_PR.CLVL, _T_1)
                                If (LEqual (_T_1, 0x03))
                                {
                                    Store (One, \_PR.CBMI)
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x02))
                                    {
                                        Store (Zero, \_PR.CBMI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, One))
                                        {
                                            Store (Zero, \_PR.CBMI)
                                        }
                                    }
                                }

                                Break
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x02))
                            {
                                While (One)
                                {
                                    Store (\_PR.CLVL, _T_2)
                                    If (LEqual (_T_2, 0x03))
                                    {
                                        Store (0x02, \_PR.CBMI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_2, 0x02))
                                        {
                                            Store (One, \_PR.CBMI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_2, One))
                                            {
                                                Store (Zero, \_PR.CBMI)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                        }
                    }

                    Break
                }

                While (One)
                {
                    Store (\_PR.CBMI, _T_3)
                    If (LEqual (_T_3, Zero))
                    {
                        If (LAnd (LGreaterEqual (\_PR.CLVL, One), LLessEqual (\_PR.CLVL, 0x03)))
                        {
                            CPL0 ()
                            Store (One, XPCC)
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_3, One))
                        {
                            If (LOr (LEqual (\_PR.CLVL, 0x02), LEqual (\_PR.CLVL, 0x03)))
                            {
                                CPL1 ()
                                Store (One, XPCC)
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_3, 0x02))
                            {
                                If (LEqual (\_PR.CLVL, 0x03))
                                {
                                    CPL2 ()
                                    Store (One, XPCC)
                                }
                            }
                        }
                    }

                    Break
                }

                While (One)
                {
                    Store (Local0, _T_4)
                    If (LEqual (_T_4, Zero))
                    {
                        Store (Zero, \_SB.PCI0.B0D4.MAXT)
                        Notify (\_SB.PCI0.B0D4, 0x84)
                    }
                    Else
                    {
                        If (LEqual (_T_4, One))
                        {
                            While (One)
                            {
                                Store (\_PR.CLVL, _T_5)
                                If (LEqual (_T_5, 0x03))
                                {
                                    Store (One, \_SB.PCI0.B0D4.MAXT)
                                }
                                Else
                                {
                                    If (LEqual (_T_5, 0x02))
                                    {
                                        Store (Zero, \_SB.PCI0.B0D4.MAXT)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_5, One))
                                        {
                                            Store (Zero, \_SB.PCI0.B0D4.MAXT)
                                        }
                                    }
                                }

                                Break
                            }

                            Notify (\_SB.PCI0.B0D4, 0x84)
                        }
                        Else
                        {
                            If (LEqual (_T_4, 0x02))
                            {
                                While (One)
                                {
                                    Store (\_PR.CLVL, _T_6)
                                    If (LEqual (_T_6, 0x03))
                                    {
                                        Store (0x02, \_SB.PCI0.B0D4.MAXT)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_6, 0x02))
                                        {
                                            Store (One, \_SB.PCI0.B0D4.MAXT)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_6, One))
                                            {
                                                Store (Zero, \_SB.PCI0.B0D4.MAXT)
                                            }
                                        }
                                    }

                                    Break
                                }

                                Notify (\_SB.PCI0.B0D4, 0x84)
                            }
                        }
                    }

                    Break
                }
            }

            Return (NPCC)
        }

        Name (NPCC, Package (0x03)
        {
            One, 
            Package (0x05)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x1C, 
                0x20
            }, 

            Package (0x05)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If (LEqual (PWRU, Zero))
            {
                Store (One, PPUU)
            }
            Else
            {
                ShiftLeft (Decrement (PWRU), 0x02, PPUU)
            }

            Divide (Arg0, PPUU, RMDR, CNVT)
            If (LEqual (Arg1, Zero))
            {
                Return (CNVT)
            }
            Else
            {
                Multiply (CNVT, 0x03E8, CNVT)
                Multiply (RMDR, 0x03E8, RMDR)
                Divide (RMDR, PPUU, Local0, RMDR)
                Add (CNVT, RMDR, CNVT)
                Return (CNVT)
            }
        }

        Method (MIN4, 1, Serialized)
        {
            Name (RMDR, Zero)
            Name (DIVD, Zero)
            Store (CPNU (Arg0, Zero), DIVD)
            Subtract (DIVD, One, DIVD)
            If (LOr (LLess (DIVD, 0x04), LEqual (DIVD, Zero)))
            {
                Return (One)
            }
            Else
            {
                Divide (DIVD, 0x04, RMDR)
            }

            While (LNotEqual (RMDR, Zero))
            {
                Subtract (DIVD, One, DIVD)
                If (LNotEqual (DIVD, Zero))
                {
                    Divide (DIVD, 0x04, RMDR)
                }
            }

            Return (Multiply (DIVD, 0x03E8))
        }

        Method (MAX4, 1, Serialized)
        {
            Name (RMDR, Zero)
            Name (DIVD, Zero)
            Store (CPNU (Arg0, Zero), DIVD)
            Add (DIVD, One, DIVD)
            Divide (DIVD, 0x04, RMDR)
            While (LNotEqual (RMDR, Zero))
            {
                Add (DIVD, One, DIVD)
                Divide (DIVD, 0x04, RMDR)
            }

            Return (Multiply (DIVD, 0x03E8))
        }

        Method (CPL0, 0, NotSerialized)
        {
            Store (One, Index (\_SB.PCI0.B0D4.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), Zero))
            Store (MIN4 (\_PR.PL10), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), One
                ))
            Store (CPNU (\_PR.PL10, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 
                0x02))
            Store (\_PR.PLW0, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x03))
            Store (\_PR.PLW0, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x04))
            Store (One, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), Zero))
            Store (CPNU (\_PR.PL20, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 
                One))
            Store (CPNU (\_PR.PL20, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 
                0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x04))
        }

        Method (CPL1, 0, NotSerialized)
        {
            Store (One, Index (\_SB.PCI0.B0D4.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), Zero))
            Store (MIN4 (\_PR.PL11), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), One
                ))
            Store (CPNU (\_PR.PL11, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 
                0x02))
            Store (\_PR.PLW1, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x03))
            Store (\_PR.PLW1, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x04))
            Store (One, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), Zero))
            Store (CPNU (\_PR.PL21, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 
                One))
            Store (CPNU (\_PR.PL21, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 
                0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x04))
        }

        Method (CPL2, 0, NotSerialized)
        {
            Store (One, Index (\_SB.PCI0.B0D4.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), Zero))
            Store (MIN4 (\_PR.PL12), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), One
                ))
            Store (CPNU (\_PR.PL12, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 
                0x02))
            Store (\_PR.PLW2, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x03))
            Store (\_PR.PLW2, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x04))
            Store (One, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), Zero))
            Store (CPNU (\_PR.PL22, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 
                One))
            Store (CPNU (\_PR.PL22, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 
                0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x04))
        }

        Name (LSTM, Zero)
        Method (PGMB, 0, NotSerialized)
        {
            Return (\_SB.PCI0.MHBR)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilites
        {
            Return (\LIMT)
        }

        Method (SPPC, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LLessEqual (Arg0, \_SB.CPUP))
            {
                Store (Subtract (\_SB.CPUP, Arg0), \_SB.SLMT)
            }

            While (One)
            {
                Store (TCNT, _T_0)
                If (LEqual (_T_0, 0x08))
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                    Notify (\_PR.CPU2, 0x80)
                    Notify (\_PR.CPU3, 0x80)
                    Notify (\_PR.CPU4, 0x80)
                    Notify (\_PR.CPU5, 0x80)
                    Notify (\_PR.CPU6, 0x80)
                    Notify (\_PR.CPU7, 0x80)
                }
                Else
                {
                    If (LEqual (_T_0, 0x04))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x02))
                        {
                            Notify (\_PR.CPU0, 0x80)
                            Notify (\_PR.CPU1, 0x80)
                        }
                        Else
                        {
                            Notify (\_PR.CPU0, 0x80)
                        }
                    }
                }

                Break
            }
        }

        Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
        {
            Return (0x0BB8)
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            Store (Arg0, LSTM)
            Notify (B0D4, 0x91)
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                Return (\_PR.CPU0._PSS)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_PR.CPU0._TSS))
            {
                Return (\_PR.CPU0._TSS)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_PR.CPU0._TPC))
            {
                Return (\_PR.CPU0._TPC)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (CondRefOf (\_PR.CPU0._PTC))
            {
                Return (\_PR.CPU0._PTC)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_PR.CPU0._TSD))
            {
                Return (\_PR.CPU0._TSD)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            Name (LFMI, Zero)
            If (CondRefOf (\_PR.CPU0._TSS))
            {
                Store (SizeOf (\_PR.CPU0._TSS), LFMI)
                Decrement (LFMI)
                Return (LFMI)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            Name (LFMI, Zero)
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                Store (SizeOf (\_PR.CPU0._PSS), LFMI)
                Decrement (LFMI)
                Return (LFMI)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

