/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000474 (1140)
 *     Revision         0x01
 *     Checksum         0xFC
 *     OEM ID           "AMD"
 *     OEM Table ID     "CPMXPRES"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("ssdt3.aml", "SSDT", 1, "AMD", "CPMXPRES", 0x00000001)
{

    External (_SB_.PCI0.M125, UnknownObj)
    External (_SB_.PCI0.M126, UnknownObj)
    External (_SB_.PCI0.PB32, UnknownObj)
    External (_SB_.PCI0.PB33, UnknownObj)
    External (_SB_.PCI0.PB34, UnknownObj)
    External (M000, MethodObj)    // 1 Arguments
    External (M011, MethodObj)    // 4 Arguments
    External (M012, MethodObj)    // 5 Arguments
    External (M013, MethodObj)    // 4 Arguments
    External (M029, MethodObj)    // 1 Arguments
    External (M032, MethodObj)    // 2 Arguments
    External (M049, MethodObj)    // 2 Arguments
    External (M084, FieldUnitObj)
    External (M111, MethodObj)    // 2 Arguments
    External (M113, MethodObj)    // 1 Arguments
    External (M114, MethodObj)    // 3 Arguments
    External (M122, FieldUnitObj)
    External (M128, FieldUnitObj)
    External (M131, FieldUnitObj)
    External (M132, FieldUnitObj)

    Scope (\_GPE)
    {
        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Local0 = M049 (M132, 0x10)
            Local1 = M049 (M132, 0x11)
            Local2 = M049 (M132, 0x12)
            Local3 = M049 (M132, 0x13)
            If (M029 (Local2))
            {
                M032 (Local2, 0x00)
                M000 (0x0F04)
                M114 (Local0, Local1, 0x00)
                M000 (0x0F05)
            }
            Else
            {
                M032 (Local2, 0x01)
                Local4 = M113 (Local3)
                If (Local4)
                {
                    M000 (0x0204)
                    M114 (Local0, Local1, 0x01)
                    M000 (0x0205)
                }
            }

            If (CondRefOf (\_SB.PCI0.PB34))
            {
                Notify (\_SB.PCI0.PB34, 0x00) // Bus Check
            }
        }

        Name (M127, 0x00)
        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Local7 = 0x00
            Local0 = M131 /* External reference */
            If (Local0)
            {
                Local0 = M049 (M131, 0x10)
                Local1 = M049 (M131, 0x11)
                Local1 = (M084 + ((Local0 * 0x0100) + Local1))
                M012 (Local1, 0x08, 0x00, 0x08, M127)
            }

            M127 ^= 0x01
            Local1 = M122 /* External reference */
            Local2 = M049 (M128, 0x6C)
            If ((Local1 && Local2))
            {
                If (M127)
                {
                    M000 (0x4401)
                    M111 (M013 (M122, 0x15, 0x00, 0x08), 0x00)
                    M111 (M013 (M122, 0x17, 0x00, 0x08), 0x00)
                    If ((Local2 == 0x02))
                    {
                        Local0 = M011 (M122, 0x10, 0x00, 0x05)
                        Local1 = M011 (M122, 0x10, 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x00)
                            Local7 |= 0x01
                        }

                        Local0 = M011 (M122, (0x10 + 0x01), 0x00, 0x05)
                        Local1 = M011 (M122, (0x10 + 0x01), 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x00)
                            Local7 |= 0x02
                        }

                        Local0 = M011 (M122, (0x10 + 0x02), 0x00, 0x05)
                        Local1 = M011 (M122, (0x10 + 0x02), 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x00)
                            Local7 |= 0x04
                        }

                        Local0 = M011 (M122, (0x10 + 0x03), 0x00, 0x05)
                        Local1 = M011 (M122, (0x10 + 0x03), 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x00)
                            Local7 |= 0x08
                        }

                        M111 (M013 (M122, 0x16, 0x00, 0x08), 0x00)
                        M000 (0x4402)
                    }
                }
                Else
                {
                    M000 (0x4403)
                    If ((Local2 == 0x02))
                    {
                        M111 (M013 (M122, 0x16, 0x00, 0x08), 0x01)
                        Sleep (0x64)
                        Sleep (0x64)
                        Local0 = M011 (M122, 0x10, 0x00, 0x05)
                        Local1 = M011 (M122, 0x10, 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x01)
                            Local7 |= 0x01
                        }

                        Local0 = M011 (M122, (0x10 + 0x01), 0x00, 0x05)
                        Local1 = M011 (M122, (0x10 + 0x01), 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x01)
                            Local7 |= 0x02
                        }

                        Local0 = M011 (M122, (0x10 + 0x02), 0x00, 0x05)
                        Local1 = M011 (M122, (0x10 + 0x02), 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x01)
                            Local7 |= 0x04
                        }

                        Local0 = M011 (M122, (0x10 + 0x03), 0x00, 0x05)
                        Local1 = M011 (M122, (0x10 + 0x03), 0x05, 0x03)
                        If ((Local0 || Local1))
                        {
                            M114 (Local0, Local1, 0x01)
                            Local7 |= 0x08
                        }

                        M000 (0x4404)
                    }

                    M111 (M013 (M122, 0x15, 0x00, 0x08), 0x01)
                    M111 (M013 (M122, 0x17, 0x00, 0x08), 0x01)
                }

                If ((Local7 & 0x01))
                {
                    If (CondRefOf (\_SB.PCI0.PB32))
                    {
                        Notify (\_SB.PCI0.PB32, 0x00) // Bus Check
                    }
                }

                If ((Local7 & 0x02))
                {
                    If (CondRefOf (\_SB.PCI0.PB33))
                    {
                        Notify (\_SB.PCI0.PB33, 0x00) // Bus Check
                    }
                }

                If ((Local7 & 0x04))
                {
                    If (CondRefOf (\_SB.PCI0.M125))
                    {
                        Notify (\_SB.PCI0.M125, 0x00) // Bus Check
                    }
                }

                If ((Local7 & 0x08))
                {
                    If (CondRefOf (\_SB.PCI0.M126))
                    {
                        Notify (\_SB.PCI0.M126, 0x00) // Bus Check
                    }
                }
            }
        }
    }
}

