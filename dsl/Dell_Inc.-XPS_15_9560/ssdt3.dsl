/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180629 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Mon Aug 27 00:28:34 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000050D (1293)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "INTEL "
 *     OEM Table ID     "TbtTypeC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "TbtTypeC", 0x00000000)
{
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (TBSE, IntObj)
    External (TBTS, IntObj)
    External (UPT1, IntObj)
    External (UPT2, IntObj)
    External (USME, IntObj)

    If (((TBTS == One) && (TBSE == One)))
    {
        Scope (\_SB.PCI0.RP01.PXSX)
        {
            Name (TUSB, Package (0x02)
            {
                One, 
                0x04
            })
            Device (TBDU)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Device (XHC)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (TPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10){}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = One
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One
                            CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08
                            CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03
                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                        }

                        Method (TUPC, 2, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            PCKG [One] = Arg1
                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                        }

                        Device (HS01)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                If ((USME == Zero))
                                {
                                    Return (TUPC (One, 0x08))
                                }
                                Else
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, One))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }
                        }

                        Device (HS02)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                If ((USME == Zero))
                                {
                                    Return (TUPC (One, 0x08))
                                }
                                Else
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, 0x02))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }
                        }

                        Device (SS01)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (One, 0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, One))
                                }
                                Else
                                {
                                    Return (TPLD (One, One))
                                }
                            }
                        }

                        Device (SS02)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (One, 0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, 0x02))
                                }
                                Else
                                {
                                    Return (TPLD (One, 0x02))
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    If (((TBTS == One) && (TBSE == 0x09)))
    {
        Scope (\_SB.PCI0.RP09.PXSX)
        {
            Name (TUSB, Package (0x02)
            {
                One, 
                0x02
            })
            Device (TBDU)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Device (XHC)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (TPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10){}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = One
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One
                            CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08
                            CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03
                            Return (PCKG) /* \_SB_.PCI0.RP09.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                        }

                        Method (TUPC, 2, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            PCKG [One] = Arg1
                            Return (PCKG) /* \_SB_.PCI0.RP09.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                        }

                        Device (HS01)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                If ((USME == Zero))
                                {
                                    Return (TUPC (One, 0x08))
                                }
                                Else
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, One))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }
                        }

                        Device (HS02)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                If ((USME == Zero))
                                {
                                    Return (TUPC (One, 0x08))
                                }
                                Else
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, 0x02))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }
                        }

                        Device (SS01)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (One, 0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, One))
                                }
                                Else
                                {
                                    Return (TPLD (One, One))
                                }
                            }
                        }

                        Device (SS02)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (One, 0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                If ((USME == Zero))
                                {
                                    Return (TPLD (One, 0x02))
                                }
                                Else
                                {
                                    Return (TPLD (One, 0x02))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

