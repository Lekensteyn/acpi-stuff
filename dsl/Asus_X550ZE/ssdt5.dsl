/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001087 (4231)
 *     Revision         0x01
 *     Checksum         0xD3
 *     OEM ID           "AMD"
 *     OEM Table ID     "CPMZPODD"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("ssdt5.aml", "SSDT", 1, "AMD", "CPMZPODD", 0x00000001)
{

    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SATA._ADR, IntObj)
    External (M000, MethodObj)    // 1 Arguments
    External (M013, MethodObj)    // 4 Arguments
    External (M014, MethodObj)    // 5 Arguments
    External (M017, MethodObj)    // 6 Arguments
    External (M018, MethodObj)    // 7 Arguments
    External (M019, MethodObj)    // 4 Arguments
    External (M029, MethodObj)    // 1 Arguments
    External (M031, MethodObj)    // 1 Arguments
    External (M032, MethodObj)    // 2 Arguments
    External (M044, MethodObj)    // 0 Arguments
    External (M045, MethodObj)    // 0 Arguments
    External (M049, MethodObj)    // 2 Arguments
    External (M111, MethodObj)    // 2 Arguments
    External (M128, FieldUnitObj)
    External (M134, FieldUnitObj)

    Scope (\_SB.PCI0.SATA)
    {
        Name (M048, 0x01)
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((XCMP (Arg0, ToUUID ("e4db149b-fcfe-425b-a6d8-92357d78fc7f") /* SATA Controller */) == 0x01))
            {
                If ((Arg2 == 0x00))
                {
                    Return (Buffer (0x01)
                    {
                         0x03                                             /* . */
                    })
                }
                ElseIf ((Arg2 == 0x01))
                {
                    Name (ADDR, Package (0x01)
                    {
                        0x0001FFFF
                    })
                    ADDR [0x00] = ((M049 (M134, 0x15) * 0x00010000) + 
                        0xFFFF)
                    Return (Package (0x01)
                    {
                        ADDR
                    })
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = DerefOf (Arg3 [0x00])
                    If (((Local0 == ((M049 (M134, 0x15) * 0x00010000) + 0xFFFF
                        )) || (Local0 == Ones)))
                    {
                        Local1 = DerefOf (Arg3 [0x01])
                        If ((Local1 == 0x00))
                        {
                            STPT (0x00)
                            Return (0x00)
                        }
                        ElseIf ((Local1 == 0x01))
                        {
                            If (M045 ())
                            {
                                \_SB.PCI0.SATA.ODD8._PS0 ()
                            }
                            ElseIf (M044 ())
                            {
                                \_SB.PCI0.SATA.ODDL._PS0 ()
                            }
                            Else
                            {
                                \_SB.PCI0.SATA.ODDZ._PS0 ()
                            }

                            Return (0x00)
                        }
                    }
                }
            }

            Return (0x01)
        }

        Method (XCMP, 2, NotSerialized)
        {
            If ((0x10 != SizeOf (Arg0)))
            {
                Return (0x00)
            }

            If ((0x10 != SizeOf (Arg1)))
            {
                Return (0x00)
            }

            Local0 = 0x00
            While ((Local0 < 0x10))
            {
                If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                    )))
                {
                    Return (0x00)
                }

                Local0++
            }

            Return (0x01)
        }

        Method (STDV, 0, Serialized)
        {
            Local0 = _ADR /* External reference */
            Return ((Local0 >> 0x10))
        }

        Method (STFN, 0, Serialized)
        {
            Local0 = _ADR /* External reference */
            Return ((Local0 & 0xFFFF))
        }

        Method (PBAA, 0, Serialized)
        {
            Local0 = M019 (0x00, STDV (), STFN (), 0x24)
            If ((Local0 == 0xFFFFFFFF))
            {
                Local0 = 0x00
            }

            Return (Local0)
        }

        Method (STPT, 1, Serialized)
        {
            M018 (0x00, STDV (), STFN (), 0x42, M049 (M134, 0x15), 0x01, (Arg0 ^ 0x01
                ))
        }

        Method (STPP, 1, Serialized)
        {
            M018 (0x00, STDV (), STFN (), 0x42, M049 (M134, 0x15), 0x01, (Arg0 ^ 0x01
                ))
            If ((M017 (0x00, STDV (), STFN (), 0x0A, 0x00, 0x10) == 0x0106))
            {
                If ((PBAA () != 0x00))
                {
                    M018 (0x00, STDV (), STFN (), 0x40, 0x00, 0x01, 0x01)
                    M014 (PBAA (), 0x0C, M049 (M134, 0x15), 0x01, Arg0)
                    Local0 = M017 (0x00, STDV (), STFN (), 0x42, 0x00, 0x06)
                    If ((Local0 == 0x3F))
                    {
                        M014 (PBAA (), 0x0C, 0x00, 0x01, 0x01)
                    }
                    ElseIf ((M017 (0x00, STDV (), STFN (), 0x42, 0x00, 0x01) && ((
                        Local0 & 0x3E) ^ 0x3E)))
                    {
                        M014 (PBAA (), 0x0C, 0x00, 0x01, 0x00)
                    }

                    Local1 = M013 (PBAA (), 0x0C, 0x00, 0x06)
                    Local2 = 0x00
                    While (Local1)
                    {
                        If ((Local1 & 0x01))
                        {
                            Local2++
                        }

                        Local1 >>= 0x01
                    }

                    M014 (PBAA (), 0x00, 0x00, 0x05, Local2--)
                    M018 (0x00, STDV (), STFN (), 0x40, 0x00, 0x01, 0x00)
                }
            }
        }

        Method (STPM, 0, Serialized)
        {
            Local1 = 0x00
            If ((PBAA () != 0x00))
            {
                Local0 = (0x0118 + (0x80 * M049 (M134, 0x15)))
                Local0 = M013 (PBAA (), Local0, 0x00, 0x01)
            }

            Return (Local1)
        }

        Method (STPR, 0, Serialized)
        {
            If ((M017 (0x00, STDV (), STFN (), 0x0A, 0x00, 0x10) == 0x0106))
            {
                If ((PBAA () != 0x00))
                {
                    Local0 = (0x0118 + (0x80 * M049 (M134, 0x15)))
                    M014 (PBAA (), Local0, 0x00, 0x01, 0x00)
                    Sleep (0x01)
                    Local0 = (0x012C + (0x80 * M049 (M134, 0x15)))
                    M014 (PBAA (), Local0, 0x00, 0x04, 0x01)
                    Sleep (0x02)
                    M014 (PBAA (), Local0, 0x00, 0x04, 0x00)
                }
            }
        }

        Device (PRT2)
        {
            Name (_ADR, 0x01)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((M049 (M128, 0x67) & 0x01))
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Device (ODD)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (M049 (M134, 0x15))
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (0x00)
                }
            }
        }

        Device (ODD8)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (M049 (M128, 0x67) & 0x01)))
                {
                    Return (((M049 (M134, 0x15) * 0x00010000) + 0xFFFF))
                }
                Else
                {
                    Return (M049 (M134, 0x15))
                }
            }

            Name (ODPS, 0x00)
            Name (ODDB, 0x00)
            Name (WDSW, 0x01)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != 0x00))
                {
                    If ((M013 (PBAA (), (0x0129 + (M049 (M134, 0x15) * 0x80
                        )), 0x00, 0x04) != 0x00))
                    {
                        ODDB = 0x01
                    }
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
                If ((M049 (M128, 0x67) & 0x01))
                {
                    If ((M049 (M128, 0x67) & 0x02))
                    {
                        If (M029 (M049 (M134, 0x12)))
                        {
                            Return (0x00)
                        }
                        ElseIf ((M049 (M128, 0x67) & 0x04))
                        {
                            ODDB = 0x01
                        }
                    }
                    ElseIf ((M049 (M128, 0x67) & 0x04))
                    {
                        ODDB = 0x01
                    }
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((M049 (M128, 0x67) & 0x02) && M029 (M049 (M134, 
                    0x12))))
                {
                    M000 (0xDF00)
                    If ((M049 (M128, 0x67) & 0x01))
                    {
                        If (((ODDB == 0x01) || ((ODDB == 0x00) && (STPM () != 
                            0x00))))
                        {
                            STPT (0x01)
                            Sleep (0x28)
                            M111 (M049 (M134, 0x10), 0x01)
                            M048 = 0x01
                            Sleep (0x28)
                        }
                    }

                    ODDB = 0x01
                    ODPS = 0x00
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0xDF03)
                If ((M049 (M128, 0x67) & 0x01))
                {
                    If ((WDSW == 0x01))
                    {
                        Sleep (0x28)
                        M111 (M049 (M134, 0x10), 0x00)
                        M048 = 0x00
                        Sleep (0x28)
                        STPT (0x00)
                        M032 (M049 (M134, 0x11), (M029 (M049 (M134, 0x11)) ^ 0x01))
                    }
                }

                ODDB = 0x01
                ODPS = 0x03
            }

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (0x00)
            }

            Device (ODD)
            {
                Name (_ADR, 0x00)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (0x01)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (M134, 0x10), 0x00)
                    M048 = 0x00
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (M045 ())
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (0x00)
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, Serialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0)
                {
                    WDSW = 0x01
                }
                Else
                {
                    WDSW = 0x00
                }
            }

            Name (ZPRW, Package (0x02)
            {
                0x0F, 
                0x03
            })
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (!M045 ())
                {
                    ZPRW [0x00] = M049 (M134, 0x13)
                }

                Return (ZPRW) /* \_SB_.PCI0.SATA.ODD8.ZPRW */
            }
        }

        Device (ODDZ)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (M049 (M128, 0x67) & 0x01)))
                {
                    Return (((M049 (M134, 0x15) * 0x00010000) + 0xFFFF))
                }
                Else
                {
                    Return (M049 (M134, 0x15))
                }
            }

            Name (ODPS, 0x00)
            Name (ODDB, 0x00)
            Name (WDSW, 0x01)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != 0x00))
                {
                    If ((M013 (PBAA (), (0x0129 + (M049 (M134, 0x15) * 0x80
                        )), 0x00, 0x04) != 0x00))
                    {
                        ODDB = 0x01
                    }
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
                If ((M049 (M128, 0x67) & 0x01))
                {
                    If ((M049 (M128, 0x67) & 0x02))
                    {
                        If (M029 (M049 (M134, 0x12)))
                        {
                            Return (0x00)
                        }
                        ElseIf ((M049 (M128, 0x67) & 0x04))
                        {
                            ODDB = 0x01
                        }
                    }
                    ElseIf ((M049 (M128, 0x67) & 0x04))
                    {
                        ODDB = 0x01
                    }
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((M049 (M128, 0x67) & 0x02) && M029 (M049 (M134, 
                    0x12))))
                {
                    M000 (0xDF00)
                    If ((M049 (M128, 0x67) & 0x01))
                    {
                        If (((ODDB == 0x01) || ((ODDB == 0x00) && (STPM () != 
                            0x00))))
                        {
                            STPT (0x01)
                            Sleep (0x28)
                            M111 (M049 (M134, 0x10), 0x01)
                            M048 = 0x01
                            Sleep (0x28)
                        }
                    }

                    ODDB = 0x01
                    ODPS = 0x00
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0xDF03)
                If ((M049 (M128, 0x67) & 0x01))
                {
                    If ((WDSW == 0x01))
                    {
                        Sleep (0x28)
                        M111 (M049 (M134, 0x10), 0x00)
                        M048 = 0x00
                        Sleep (0x28)
                        STPT (0x00)
                        M032 (M049 (M134, 0x11), (M029 (M049 (M134, 0x11)) ^ 0x01))
                    }
                }

                ODDB = 0x01
                ODPS = 0x03
            }

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (0x00)
            }

            Device (ODD)
            {
                Name (_ADR, 0x00)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (0x01)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (M134, 0x10), 0x00)
                    M048 = 0x00
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!(M045 () || M044 ()))
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (0x00)
                }
            }
        }

        Device (ODDL)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (M049 (M128, 0x67) & 0x01)))
                {
                    Return (((M049 (M134, 0x15) * 0x00010000) + 0xFFFF))
                }
                Else
                {
                    Return (M049 (M134, 0x15))
                }
            }

            Name (ODPS, 0x00)
            Name (ODDB, 0x00)
            Name (WDSW, 0x01)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != 0x00))
                {
                    If ((M013 (PBAA (), (0x0129 + (M049 (M134, 0x15) * 0x80
                        )), 0x00, 0x04) != 0x00))
                    {
                        ODDB = 0x01
                    }
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
                If ((M049 (M128, 0x67) & 0x01))
                {
                    If ((M049 (M128, 0x67) & 0x02))
                    {
                        If (M029 (M049 (M134, 0x12)))
                        {
                            Return (0x00)
                        }
                        ElseIf ((M049 (M128, 0x67) & 0x04))
                        {
                            ODDB = 0x01
                        }
                    }
                    ElseIf ((M049 (M128, 0x67) & 0x04))
                    {
                        ODDB = 0x01
                    }
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((M049 (M128, 0x67) & 0x02) && M029 (M049 (M134, 
                    0x12))))
                {
                    M000 (0xDF00)
                    If ((M049 (M128, 0x67) & 0x01))
                    {
                        If (((ODDB == 0x01) || ((ODDB == 0x00) && (STPM () != 
                            0x00))))
                        {
                            STPT (0x01)
                            Sleep (0x28)
                            M111 (M049 (M134, 0x10), 0x01)
                            M048 = 0x01
                            Sleep (0x28)
                        }
                    }

                    ODDB = 0x01
                    ODPS = 0x00
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0xDF03)
                If ((M049 (M128, 0x67) & 0x01))
                {
                    If ((WDSW == 0x01))
                    {
                        Sleep (0x28)
                        M111 (M049 (M134, 0x10), 0x00)
                        M048 = 0x00
                        Sleep (0x28)
                        STPT (0x00)
                        M032 (M049 (M134, 0x11), (M029 (M049 (M134, 0x11)) ^ 0x01))
                    }
                }

                ODDB = 0x01
                ODPS = 0x03
            }

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (0x00)
            }

            Device (ODD)
            {
                Name (_ADR, 0x00)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (0x01)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (M134, 0x10), 0x00)
                    M048 = 0x00
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (M044 ())
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (0x00)
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, Serialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0)
                {
                    WDSW = 0x01
                }
                Else
                {
                    WDSW = 0x00
                }
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L0F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (((M049 (M128, 0x67) & 0x01) && (M029 (M049 (M134, 
                0x12)) == 0x00)))
            {
                If (M031 (M049 (M134, 0x11)))
                {
                    Sleep (0x14)
                    If (M029 (M049 (M134, 0x11)))
                    {
                        If ((M049 (M128, 0x67) & 0x10))
                        {
                            \_SB.PCI0.SATA.STPR ()
                        }

                        If (M045 ())
                        {
                            Notify (\_SB.PCI0.SATA.ODD8, 0x02) // Device Wake
                        }
                        ElseIf (M044 ())
                        {
                            Notify (\_SB.PCI0.SATA.ODDL, 0x02) // Device Wake
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SATA.ODDZ, 0x80) // Status Change
                        }

                        Sleep (0x01F4)
                        M000 (0xDF15)
                    }
                }
                Else
                {
                    Sleep (0x14)
                    If (!M029 (M049 (M134, 0x11)))
                    {
                        If (M045 ())
                        {
                            Notify (\_SB.PCI0.SATA.ODD8, 0x02) // Device Wake
                        }
                        ElseIf (M044 ())
                        {
                            Notify (\_SB.PCI0.SATA.ODDL, 0x02) // Device Wake
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SATA.ODDZ, 0x80) // Status Change
                        }

                        Sleep (0x01F4)
                        M000 (0xDF14)
                    }
                }
            }

            M032 (M049 (M134, 0x11), (M029 (M049 (M134, 0x11)) ^ 0x01))
        }

        Method (XL10, 0, NotSerialized)
        {
            Sleep (0xC8)
            If (M031 (M049 (M134, 0x12)))
            {
                If (M029 (M049 (M134, 0x12)))
                {
                    M000 (0xDF17)
                    M111 (M049 (M134, 0x10), 0x00)
                    \_SB.PCI0.SATA.M048 = 0x00
                    Sleep (0x28)
                    \_SB.PCI0.SATA.STPP (0x00)
                    If (M045 ())
                    {
                        \_SB.PCI0.SATA.ODD8.ODPS = 0x03
                    }
                    ElseIf (M044 ())
                    {
                        \_SB.PCI0.SATA.ODDL.ODPS = 0x03
                    }
                    Else
                    {
                        \_SB.PCI0.SATA.ODDZ.ODPS = 0x03
                    }

                    M032 (M049 (M134, 0x12), (M029 (M049 (M134, 0x12)) ^ 0x01))
                }
            }
            Else
            {
                Sleep (0x14)
                If (!M029 (M049 (M134, 0x12)))
                {
                    M000 (0xDF16)
                    \_SB.PCI0.SATA.STPP (0x01)
                    Sleep (0x28)
                    M111 (M049 (M134, 0x10), 0x01)
                    \_SB.PCI0.SATA.M048 = 0x01
                    Sleep (0x28)
                    If (M045 ())
                    {
                        \_SB.PCI0.SATA.ODD8.ODPS = 0x00
                    }
                    ElseIf (M044 ())
                    {
                        \_SB.PCI0.SATA.ODDL.ODPS = 0x00
                    }
                    Else
                    {
                        \_SB.PCI0.SATA.ODDZ.ODPS = 0x00
                    }

                    M032 (M049 (M134, 0x12), (M029 (M049 (M134, 0x12)) ^ 0x01))
                }
            }

            Sleep (0x28)
            If ((M049 (M128, 0x67) & 0x01))
            {
                If (M045 ())
                {
                    Notify (\_SB.PCI0.SATA.ODD8, 0x01) // Device Check
                }
                ElseIf (M044 ())
                {
                    Notify (\_SB.PCI0.SATA.ODDL, 0x01) // Device Check
                }
                Else
                {
                    Notify (\_SB.PCI0.SATA.ODDZ, 0x01) // Device Check
                    Notify (\_SB.PCI0.SATA.ODDZ, 0x81) // Information Change
                }
            }
            Else
            {
                Notify (\_SB.PCI0.SATA.PRT2, 0x01) // Device Check
                If (!(M045 () || M044 ()))
                {
                    Notify (\_SB.PCI0.SATA.PRT2, 0x81) // Information Change
                }
            }
        }
    }
}

