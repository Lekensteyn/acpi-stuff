/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt7.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000852 (2130)
 *     Revision         0x01
 *     Checksum         0x21
 *     OEM ID           "AMD"
 *     OEM Table ID     "CPMDFDGP"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("ssdt7.aml", "SSDT", 1, "AMD", "CPMDFDGP", 0x00000001)
{

    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PB21.HDAU, DeviceObj)
    External (_SB_.PCI0.PB21.VGA_, DeviceObj)
    External (M013, MethodObj)    // 4 Arguments
    External (M043, MethodObj)    // 3 Arguments
    External (M049, MethodObj)    // 2 Arguments
    External (M097, FieldUnitObj)
    External (M101, FieldUnitObj)
    External (M102, FieldUnitObj)
    External (M103, FieldUnitObj)
    External (M104, FieldUnitObj)
    External (M133, FieldUnitObj)

    Scope (\_SB.PCI0.PB21.VGA)
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
                Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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
            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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

            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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
            M174 = M164 /* \_SB_.PCI0.PB21.VGA_.M164 */
            If (M165)
            {
                M165 = Zero
            }

            If (M166)
            {
                M175 = M210 /* \_SB_.PCI0.PB21.VGA_.M210 */
                M210 = Zero
                M166 = Zero
            }

            If (M167)
            {
                M176 = M211 /* \_SB_.PCI0.PB21.VGA_.M211 */
                M177 = M212 /* \_SB_.PCI0.PB21.VGA_.M212 */
                M211 = Zero
                M212 = Zero
                M167 = Zero
            }

            If (M168)
            {
                M178 = M213 /* \_SB_.PCI0.PB21.VGA_.M213 */
                M179 = M214 /* \_SB_.PCI0.PB21.VGA_.M214 */
                M213 = Zero
                M214 = Zero
                M168 = Zero
            }

            If (M169)
            {
                M180 = M215 /* \_SB_.PCI0.PB21.VGA_.M215 */
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

            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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

            Local1 = M182 /* \_SB_.PCI0.PB21.VGA_.AF03.M182 */
            Local1 &= 0x8B
            Local2 = M183 /* \_SB_.PCI0.PB21.VGA_.AF03.M183 */
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
                    Local0 = M187 /* \_SB_.PCI0.PB21.VGA_.AF03.M187 */
                }
                Else
                {
                    Local0++
                }
            }

            Local0 = M185 /* \_SB_.PCI0.PB21.VGA_.AF03.M185 */
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
                    Local0 = M187 /* \_SB_.PCI0.PB21.VGA_.AF03.M187 */
                }
            }

            If ((M184 == M187))
            {
                M182 = Zero
            }
            Else
            {
                Local0 = M184 /* \_SB_.PCI0.PB21.VGA_.AF03.M184 */
                Local3 = DerefOf (M186 [Local0])
                M182 &= ~0x0B
                M182 |= Local3
            }

            M157 = 0x04
            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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
            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
        }

        Method (AF15, 0, NotSerialized)
        {
            ATIB = M104 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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
                Local3 = M043 (0x00, Arg0, 0x01)
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

            Return (ATIB) /* \_SB_.PCI0.PB21.VGA_.ATIB */
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
                Local1 = M215 /* \_SB_.PCI0.PB21.VGA_.M215 */
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
    }

    Scope (\_SB.PCI0.PB21.HDAU)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((M097 != 0x00))
            {
                Return (0x00)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
}

