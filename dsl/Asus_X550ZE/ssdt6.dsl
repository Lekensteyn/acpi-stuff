/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001434 (5172)
 *     Revision         0x01
 *     Checksum         0x0A
 *     OEM ID           "AMD"
 *     OEM Table ID     "CPMDFIGP"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("ssdt6.aml", "SSDT", 1, "AMD", "CPMDFIGP", 0x00000001)
{

    External (_SB_.ALIB, MethodObj)    // 2 Arguments
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN1, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN2, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN3, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN4, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN5, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN6, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN7, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PB21.VGA_.AFN8, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.VGA_, DeviceObj)
    External (ISMI, MethodObj)    // 1 Arguments
    External (M013, MethodObj)    // 4 Arguments
    External (M019, MethodObj)    // 4 Arguments
    External (M020, MethodObj)    // 5 Arguments
    External (M021, MethodObj)    // 4 Arguments
    External (M023, MethodObj)    // 3 Arguments
    External (M024, MethodObj)    // 3 Arguments
    External (M025, MethodObj)    // 3 Arguments
    External (M026, MethodObj)    // 3 Arguments
    External (M043, MethodObj)    // 3 Arguments
    External (M049, MethodObj)    // 2 Arguments
    External (M087, FieldUnitObj)
    External (M090, FieldUnitObj)
    External (M091, FieldUnitObj)
    External (M093, FieldUnitObj)
    External (M094, FieldUnitObj)
    External (M095, FieldUnitObj)
    External (M098, FieldUnitObj)
    External (M099, FieldUnitObj)
    External (M100, FieldUnitObj)
    External (M101, FieldUnitObj)
    External (M102, FieldUnitObj)
    External (M103, FieldUnitObj)
    External (M104, FieldUnitObj)
    External (M105, FieldUnitObj)
    External (M106, FieldUnitObj)
    External (M111, MethodObj)    // 2 Arguments
    External (M112, MethodObj)    // 2 Arguments
    External (M113, MethodObj)    // 1 Arguments
    External (M133, FieldUnitObj)

    Scope (\_SB.PCI0.VGA)
    {
        Name (ATIB, Buffer (0x0100) {})
        Method (ATIF, 2, Serialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (AF00 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (AF01 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (AF02 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (AF03 (DerefOf (Arg1 [0x02]), DerefOf (Arg1 [0x04])))
            }

            If ((Arg0 == 0x04))
            {
                Return (AF04 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (AF15 ())
            }

            If ((Arg0 == 0x10))
            {
                Return (AF16 (DerefOf (Arg1 [0x02])))
            }
            Else
            {
                CreateWordField (ATIB, 0x00, M157)
                CreateWordField (ATIB, 0x02, M158)
                CreateDWordField (ATIB, 0x04, M159)
                CreateDWordField (ATIB, 0x08, M160)
                M157 = 0x00
                M158 = 0x00
                M159 = 0x00
                M160 = 0x00
                Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
            }
        }

        Method (AF00, 0, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, M157)
            CreateWordField (ATIB, 0x02, M158)
            CreateDWordField (ATIB, 0x04, M159)
            CreateDWordField (ATIB, 0x08, M160)
            M157 = 0x0C
            M158 = 0x01
            M159 = M101 /* External reference */
            If (!CondRefOf (\_SB.LID._LID, Local1))
            {
                M102 &= 0xFFFFFFF7
            }

            M160 = M102 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF01, 0, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, M157)
            CreateDWordField (ATIB, 0x02, M161)
            CreateDWordField (ATIB, 0x06, M162)
            CreateByteField (ATIB, 0x0A, M163)
            Local0 = (M103 & 0xFF000000)
            Local1 = (M103 & 0x03)
            If ((Local1 == 0x02))
            {
                M157 = 0x0B
                M161 = 0x03
                M162 = Local1
                M163 = Local0
            }
            Else
            {
                M157 = 0x0A
                M161 = 0x03
                M162 = M103 /* External reference */
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Name (M164, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           /* .... */
        })
        Name (M210, 0x00)
        Name (M211, 0x00)
        Name (M212, 0x00)
        Name (M213, 0x00)
        Name (M214, 0x00)
        Name (M215, 0x00)
        Name (SSDM, 0x0A)
        Name (SCDY, 0x00)
        Method (AF02, 0, NotSerialized)
        {
            CreateBitField (M164, 0x00, M165)
            CreateBitField (M164, 0x01, M166)
            CreateBitField (M164, 0x02, M167)
            CreateBitField (M164, 0x03, M168)
            CreateBitField (M164, 0x04, M169)
            CreateBitField (M164, 0x05, M170)
            CreateBitField (M164, 0x06, M171)
            CreateBitField (M164, 0x07, M172)
            CreateBitField (M164, 0x08, M173)
            CreateWordField (ATIB, 0x00, M157)
            CreateDWordField (ATIB, 0x02, M174)
            CreateByteField (ATIB, 0x06, M175)
            CreateByteField (ATIB, 0x07, M176)
            CreateByteField (ATIB, 0x08, M177)
            CreateByteField (ATIB, 0x09, M178)
            CreateByteField (ATIB, 0x0A, M179)
            CreateByteField (ATIB, 0x0B, M180)
            CreateByteField (ATIB, 0x0C, M181)
            M157 = 0x0D
            M174 = M164 /* \_SB_.PCI0.VGA_.M164 */
            If (M165)
            {
                M165 = Zero
            }

            If (M166)
            {
                M175 = M210 /* \_SB_.PCI0.VGA_.M210 */
                M210 = Zero
                M166 = Zero
            }

            If (M167)
            {
                M176 = M211 /* \_SB_.PCI0.VGA_.M211 */
                M177 = M212 /* \_SB_.PCI0.VGA_.M212 */
                M211 = Zero
                M212 = Zero
                M167 = Zero
            }

            If (M168)
            {
                M178 = M213 /* \_SB_.PCI0.VGA_.M213 */
                M179 = M214 /* \_SB_.PCI0.VGA_.M214 */
                M213 = Zero
                M214 = Zero
                M168 = Zero
            }

            If (M169)
            {
                M180 = M215 /* \_SB_.PCI0.VGA_.M215 */
                M169 = Zero
            }

            If (M171)
            {
                M171 = Zero
            }

            If (M172)
            {
                M172 = Zero
            }

            If (M173)
            {
                M173 = Zero
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF03, 2, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, M157)
            CreateWordField (ATIB, 0x02, M182)
            CreateWordField (ATIB, 0x04, M183)
            M182 = Arg0
            M183 = Arg1
            Name (M184, 0x06)
            Name (M185, 0x06)
            Name (M186, Buffer (0x14)
            {
                 0x00                                             /* . */
            })
            Name (M187, 0x00)
            M187 = M049 (M133, 0xBF)
            Local1 = 0x00
            While ((Local1 < M187))
            {
                Local2 = M049 (M133, (0xC0 + Local1))
                M186 [Local1] = Local2
                Local1++
            }

            Local1 = M182 /* \_SB_.PCI0.VGA_.AF03.M182 */
            Local1 &= 0x8B
            Local2 = M183 /* \_SB_.PCI0.VGA_.AF03.M183 */
            If (CondRefOf (\_SB.LID._LID, Local4))
            {
                Local0 = \_SB.LID._LID ()
                Local2 &= ~0x01
                Local2 |= Local0
            }

            Local0 = Zero
            While ((Local0 < M187))
            {
                Local3 = DerefOf (M186 [Local0])
                If ((Local3 == Local1))
                {
                    M185 = Local0
                    Local0 = M187 /* \_SB_.PCI0.VGA_.AF03.M187 */
                }
                Else
                {
                    Local0++
                }
            }

            Local0 = M185 /* \_SB_.PCI0.VGA_.AF03.M185 */
            While ((Local0 < M187))
            {
                Local0++
                If ((Local0 == M187))
                {
                    Local0 = 0x00
                }

                Local3 = DerefOf (M186 [Local0])
                If (((Local3 & Local2) == Local3))
                {
                    M184 = Local0
                    Local0 = M187 /* \_SB_.PCI0.VGA_.AF03.M187 */
                }
            }

            If ((M184 == M187))
            {
                M182 = Zero
            }
            Else
            {
                Local0 = M184 /* \_SB_.PCI0.VGA_.AF03.M184 */
                Local3 = DerefOf (M186 [Local0])
                M182 &= ~0x0B
                M182 |= Local3
            }

            M157 = 0x04
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF04, 0, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, M157)
            CreateByteField (ATIB, 0x02, M188)
            M157 = 0x03
            Local1 = 0x00
            If (CondRefOf (\_SB.LID._LID, Local4))
            {
                Local0 = \_SB.LID._LID ()
                Local1 = (Local0 ^ 0x01)
            }

            M188 = Local1
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF15, 0, NotSerialized)
        {
            ATIB = M104 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF16, 1, NotSerialized)
        {
            Local0 = M013 (M133, 0xD4, 0x00, 0x10)
            If (Local0)
            {
                Local1 = 0x00
                While ((Local1 < Local0))
                {
                    Local2 = M049 (M133, (0xD4 + Local1))
                    ATIB [Local1] = Local2
                    Local1++
                }
            }
            Else
            {
                Local3 = M043 (0x00, Arg0, 0x00)
                If ((ObjectType (Local3) == 0x03))
                {
                    ATIB = Local3
                }
                Else
                {
                    ATIB [0x00] = 0x05
                    ATIB [0x01] = 0x00
                    ATIB [0x02] = 0x00
                    ATIB [0x03] = 0x00
                    ATIB [0x04] = 0x02
                }
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AFN0, 0, Serialized)
        {
            If ((M101 & 0x01))
            {
                CreateBitField (M164, 0x00, M165)
                M165 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN1, 1, Serialized)
        {
            If ((M101 & 0x02))
            {
                Local0 = Arg0
                M210 = Local0
                CreateBitField (M164, 0x01, M166)
                M166 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN2, 2, Serialized)
        {
            If ((M101 & 0x04))
            {
                Local0 = Arg0
                M212 = Local0
                Local0 = Arg1
                M211 = Local0 &= 0x03
                CreateBitField (M164, 0x02, M167)
                M167 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN3, 2, Serialized)
        {
            If ((M101 & 0x08))
            {
                Local0 = Arg0
                M214 = Local0
                Local0 = Arg1
                M213 = Local0 &= 0x03
                CreateBitField (M164, 0x03, M168)
                M168 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN4, 1, Serialized)
        {
            If ((M101 & 0x10))
            {
                Local0 = Arg0
                Local1 = M215 /* \_SB_.PCI0.VGA_.M215 */
                M215 = Local0
                If ((Local0 == Local1)) {}
                Else
                {
                    CreateBitField (M164, 0x04, M169)
                    M169 = One
                    Notify (VGA, 0x81) // Information Change
                }
            }
        }

        Method (AFN5, 0, Serialized)
        {
            If ((M101 & 0x20))
            {
                CreateBitField (M164, 0x05, M170)
                M170 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN6, 0, Serialized)
        {
            If ((M101 & 0x40))
            {
                CreateBitField (M164, 0x06, M171)
                M171 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN7, 1, Serialized)
        {
            If ((M101 & 0x80))
            {
                CreateBitField (M164, 0x07, M172)
                M172 = One
                CreateByteField (ATIB, 0x0C, M181)
                M181 = Arg0
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN8, 0, Serialized)
        {
            If ((M101 & 0x0100))
            {
                CreateBitField (M164, 0x08, M173)
                M173 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Name (M189, Buffer (0x0100) {})
        Name (M190, 0xFFFFFFFF)
        Name (M191, 0xFFFFFFFF)
        Method (ATPX, 2, Serialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (PX00 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (PX01 ())
            }

            If ((Arg0 == 0x02))
            {
                PX02 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x03))
            {
                PX03 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x04))
            {
                PX04 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x08))
            {
                Return (PX08 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (PX09 ())
            }

            CreateWordField (M189, 0x00, M157)
            CreateWordField (M189, 0x02, M158)
            CreateDWordField (M189, 0x04, M160)
            M157 = 0x00
            M158 = 0x00
            M160 = 0x00
            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX00, 0, NotSerialized)
        {
            CreateWordField (M189, 0x00, M157)
            CreateWordField (M189, 0x02, M158)
            CreateDWordField (M189, 0x04, M160)
            M157 = 0x08
            M158 = 0x01
            M160 = M098 /* External reference */
            If (M098)
            {
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local0 = M019 (M095, M094, M093, 0x2C)
                Local1 = M019 (M095, M094, (M093 + 0x01), 0x2C)
                If ((Local0 != Local5))
                {
                    M190 = Local0
                }

                If ((Local1 != Local5))
                {
                    M191 = Local1
                }
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX01, 0, NotSerialized)
        {
            CreateWordField (M189, 0x00, M157)
            CreateDWordField (M189, 0x02, M161)
            CreateDWordField (M189, 0x06, M162)
            M157 = 0x0A
            M161 = 0x1FFF
            M162 = M099 /* External reference */
            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX02, 1, NotSerialized)
        {
            CreateWordField (M189, 0x00, M157)
            CreateByteField (M189, 0x02, M192)
            M157 = 0x03
            M192 = (Arg0 & 0x01)
            Local7 = Buffer (0x05) {}
            CreateWordField (Local7, 0x00, M197)
            CreateField (Local7, 0x10, 0x03, M200)
            CreateField (Local7, 0x13, 0x05, M199)
            CreateByteField (Local7, 0x03, M198)
            CreateByteField (Local7, 0x04, M201)
            M197 = 0x05
            M198 = 0x00
            M199 = M091 /* External reference */
            M200 = M090 /* External reference */
            Name (HPOK, 0x00)
            Local0 = M049 (M133, 0x11)
            Local6 = M113 (Local0)
            M023 (0x00, M091, M090)
            If ((M192 && Local6))
            {
                M112 (Local0, 0x00)
                M111 (Local0, 0x01)
                Sleep (0x0A)
                M112 (Local0, 0x02)
                M112 (Local0, 0x01)
                HPOK = 0x00
                Sleep (0x14)
                M201 = 0x01
                Local6 = \_SB.ALIB (0x06, Local7)
                Local2 = 0x00
                While ((Local2 < 0x0F))
                {
                    M023 (0x00, M091, M090)
                    Local4 = 0x01
                    Local5 = 0xC8
                    While ((Local4 && Local5))
                    {
                        Local0 = M021 (0x00, M091, M090, 0xA5)
                        Local0 &= 0x7F
                        If (((Local0 >= 0x10) && (Local0 != 0x7F)))
                        {
                            Local4 = 0x00
                        }
                        Else
                        {
                            Sleep (0x05)
                            Local5--
                        }
                    }

                    If (!Local4)
                    {
                        Local5 = M024 (0x00, M091, M090)
                        If (Local5)
                        {
                            M026 (0x00, M091, M090)
                            Sleep (0x05)
                            Local2++
                        }
                        Else
                        {
                            Local0 = 0x00
                            If ((M025 (0x00, M091, M090) == Ones))
                            {
                                Local0 = 0x01
                            }

                            If (Local0)
                            {
                                M111 (M049 (M133, 0x17), 0x01)
                                M111 (M049 (M133, 0x18), 0x01)
                                HPOK = 0x01
                                Local2 = 0x10
                            }
                            Else
                            {
                                HPOK = 0x00
                                Local2 = 0x10
                            }
                        }
                    }
                    Else
                    {
                        Local2 = 0x10
                    }
                }

                If (!HPOK)
                {
                    Local1 = M019 (M095, M094, M093, 0x00)
                    Sleep (0x0A)
                    Local4 = 0x01
                    Local5 = 0x05
                    While ((Local4 && Local5))
                    {
                        Local0 = M021 (0x00, M091, M090, 0xA5)
                        Local0 &= 0x7F
                        If (((Local0 <= 0x04) || (Local0 == 0x1F)))
                        {
                            Local4 = 0x00
                        }
                        Else
                        {
                            Local0 = M019 (M095, M094, M093, 0x00)
                            Sleep (0x05)
                            Local5--
                        }
                    }

                    M201 = 0x00
                    \_SB.ALIB (0x06, Local7)
                }

                \ISMI (0xE6)
            }
            Else
            {
                M201 = 0x00
                \_SB.ALIB (0x06, Local7)
                M111 (M049 (M133, 0x17), 0x00)
                M111 (M049 (M133, 0x18), 0x00)
                M112 (Local0, 0x00)
                Sleep (0x0A)
                M111 (Local0, 0x00)
                M023 (0x00, M091, M090)
                Local1 = M019 (M095, M094, M093, 0x00)
                Sleep (0x0A)
                Local4 = 0x01
                Local5 = 0x05
                While ((Local4 && Local5))
                {
                    Local0 = M021 (0x00, M091, M090, 0xA5)
                    Local0 &= 0x7F
                    If (((Local0 <= 0x04) || (Local0 == 0x1F)))
                    {
                        Local4 = 0x00
                    }
                    Else
                    {
                        Local1 = M019 (M095, M094, M093, 0x00)
                        Sleep (0x05)
                        Local5--
                    }
                }

                HPOK = 0x02
                \ISMI (0xE5)
            }

            If (HPOK)
            {
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local0 = M019 (M095, M094, M093, 0x00)
                If (((HPOK == 0x01) && (Local0 != Local5)))
                {
                    M020 (M095, M094, M093, 0x4C, M190)
                    Sleep (0x0A)
                    If ((M191 != Local5))
                    {
                        M020 (M095, M094, (M093 + 0x01), 0x4C, M191)
                    }

                    Sleep (0x0A)
                }
            }
        }

        Method (PX03, 1, NotSerialized)
        {
            CreateWordField (M189, 0x00, M157)
            CreateWordField (M189, 0x02, M195)
            M157 = 0x04
            M195 = (Arg0 & 0x01)
            If (M195)
            {
                M111 (M049 (M133, 0x17), 0x01)
            }
            Else
            {
                M111 (M049 (M133, 0x17), 0x00)
            }
        }

        Method (PX04, 1, NotSerialized)
        {
            CreateWordField (M189, 0x00, M157)
            CreateWordField (M189, 0x02, M196)
            M157 = 0x04
            M196 = (Arg0 & 0x01)
            If (M196)
            {
                M111 (M049 (M133, 0x18), 0x01)
            }
            Else
            {
                M111 (M049 (M133, 0x18), 0x00)
            }
        }

        Method (PX08, 0, NotSerialized)
        {
            CreateWordField (M189, 0x00, M193)
            CreateWordField (M189, 0x02, M157)
            Local0 = M049 (M133, 0x19)
            M193 = Local0
            M157 = 0x05
            Local0 *= M157 /* \_SB_.PCI0.VGA_.PX08.M157 */
            Local1 = 0x00
            While ((Local1 < Local0))
            {
                Local2 = M049 (M133, (0x1A + Local1))
                M189 [(0x04 + Local1)] = Local2
                Local1++
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX09, 0, NotSerialized)
        {
            CreateWordField (M189, 0x00, M193)
            CreateWordField (M189, 0x02, M157)
            Local0 = M049 (M133, 0x7E)
            M193 = Local0
            M157 = 0x03
            Local0 *= M157 /* \_SB_.PCI0.VGA_.PX09.M157 */
            Local1 = 0x00
            While ((Local1 < Local0))
            {
                Local2 = M049 (M133, (0x7F + Local1))
                M189 [(0x04 + Local1)] = Local2
                Local1++
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Name (M207, Buffer (0xFF) {})
        Name (M208, Buffer (0x03) {})
        Name (M204, 0x01)
        Method (ATCS, 2, Serialized)
        {
            If ((Arg0 == 0x00))
            {
                ATC0 ()
            }

            If ((Arg0 == 0x01))
            {
                ATC1 ()
            }

            If ((Arg0 == 0x02))
            {
                ATC2 (Arg1)
            }

            If ((Arg0 == 0x03))
            {
                ATC3 ()
            }

            If ((Arg0 == 0x04))
            {
                ATC4 (Arg1)
            }

            Return (M207) /* \_SB_.PCI0.VGA_.M207 */
        }

        Method (ATC0, 0, NotSerialized)
        {
            CreateWordField (M207, 0x00, M157)
            CreateWordField (M207, 0x02, M158)
            CreateDWordField (M207, 0x04, M160)
            M157 = 0x08
            M158 = 0x01
            M160 = 0x0F
            M207 = \_SB.ALIB (0x00, M208)
        }

        Method (ATC1, 0, Serialized)
        {
            CreateWordField (M207, 0x00, M157)
            CreateDWordField (M207, 0x02, M161)
            CreateDWordField (M207, 0x06, M162)
            CreateField (M207, 0x30, 0x01, M203)
            M157 = 0x0A
            M161 = 0x01
            M162 = M100 /* External reference */
            Local0 = M049 (M133, 0x15)
            If ((Local0 & 0x80))
            {
                M204 = (Local0 & 0x01)
            }
            ElseIf ((Local0 & 0x7F))
            {
                M204 = M113 (Local0)
            }

            M203 = M204 /* \_SB_.PCI0.VGA_.M204 */
        }

        Method (ATC2, 1, Serialized)
        {
            CreateWordField (M207, 0x00, M157)
            CreateByteField (M207, 0x02, M205)
            M157 = 0x03
            M205 = 0x01
            M207 = \_SB.ALIB (0x02, Arg0)
        }

        Method (ATC3, 0, Serialized)
        {
            CreateWordField (M207, 0x00, M157)
            CreateByteField (M207, 0x02, M205)
            CreateWordField (M208, 0x00, M197)
            CreateByteField (M208, 0x02, M206)
            M157 = 0x03
            M205 = 0x01
            M197 = 0x03
            M206 = 0x01
            M207 = \_SB.ALIB (0x03, M208)
        }

        Method (ATC4, 1, Serialized)
        {
            CreateWordField (M207, 0x00, M157)
            CreateByteField (M207, 0x02, M209)
            M157 = 0x03
            M209 = 0x01
            M207 = \_SB.ALIB (0x04, Arg0)
        }

        Name (M202, Buffer (0xFF00)
        {
             0x00                                             /* . */
        })
        Method (ATRM, 2, Serialized)
        {
            Local0 = (Arg0 + Arg1)
            Local4 = M105 /* External reference */
            If ((Local4 > 0xFF00))
            {
                Local4 = 0xFF00
            }

            If ((Local0 <= Local4))
            {
                Local1 = (Arg1 * 0x08)
                Local2 = (Arg0 * 0x08)
                M202 = M106 /* External reference */
                CreateField (M202, Local2, Local1, TEMP)
                Name (RETB, Buffer (Arg1) {})
                RETB = TEMP /* \_SB_.PCI0.VGA_.ATRM.TEMP */
                Return (RETB) /* \_SB_.PCI0.VGA_.ATRM.RETB */
            }
            ElseIf ((Arg0 < Local4))
            {
                Local3 = (M105 - Arg0)
                Local1 = (Local3 * 0x08)
                Local2 = (Arg0 * 0x08)
                M202 = M106 /* External reference */
                CreateField (M202, Local2, Local1, TEM)
                Name (RETC, Buffer (Local3) {})
                RETC = TEM /* \_SB_.PCI0.VGA_.ATRM.TEM_ */
                Return (RETC) /* \_SB_.PCI0.VGA_.ATRM.RETC */
            }
            Else
            {
                Name (RETD, Buffer (0x01) {})
                Return (RETD) /* \_SB_.PCI0.VGA_.ATRM.RETD */
            }
        }
    }

    Method (AFN0, 0, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN0 ()
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN0 ()
        }
    }

    Method (AFN1, 1, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN1 (Arg0)
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN1 (Arg0)
        }
    }

    Method (AFN2, 2, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN2 (Arg0, Arg1)
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN2 (Arg0, Arg1)
        }
    }

    Method (AFN3, 2, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN3 (Arg0, Arg1)
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN3 (Arg0, Arg1)
        }
    }

    Method (AFN4, 1, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN4 (Arg0)
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN4 (Arg0)
        }
    }

    Method (AFN5, 0, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN5 ()
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN5 ()
        }
    }

    Method (AFN6, 0, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN6 ()
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN6 ()
        }
    }

    Method (AFN7, 1, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN7 (Arg0)
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN7 (Arg0)
        }
    }

    Method (AFN8, 0, Serialized)
    {
        If ((M087 == 0x00))
        {
            \_SB.PCI0.VGA.AFN8 ()
        }

        If ((M087 == 0x01))
        {
            \_SB.PCI0.PB21.VGA.AFN8 ()
        }
    }
}

