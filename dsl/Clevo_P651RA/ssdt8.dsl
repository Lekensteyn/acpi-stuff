/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.dat, Mon Jan 18 23:32:36 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000037F (895)
 *     Revision         0x02
 *     Checksum         0x65
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("ssdt8.aml", "SSDT", 2, "PmRef", "Cpu0Cst", 0x00003001)
{

    External (_PR_.CPU0, DeviceObj)
    External (C3LT, IntObj)
    External (C3MW, IntObj)
    External (C6LT, IntObj)
    External (C6MW, IntObj)
    External (C7LT, IntObj)
    External (C7MW, IntObj)
    External (CDLT, IntObj)
    External (CDLV, IntObj)
    External (CDMW, IntObj)
    External (CDPW, IntObj)
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU0)
    {
        Name (C1TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            One, 
            One, 
            0x03E8
        })
        Name (C3TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001814, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x01F4
        })
        Name (C6TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001815, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x015E
        })
        Name (C7TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0xC8
        })
        Name (CDTM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x03, 
            Zero, 
            Zero
        })
        Name (MWES, ResourceTemplate ()
        {
            Register (FFixedHW, 
                0x01,               // Bit Width
                0x02,               // Bit Offset
                0x0000000000000000, // Address
                0x01,               // Access Size
                )
        })
        Name (AC2V, Zero)
        Name (AC3V, Zero)
        Name (C3ST, Package (0x04)
        {
            0x03, 
            Package (0x00) {}, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C2ST, Package (0x03)
        {
            0x02, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C1ST, Package (0x02)
        {
            One, 
            Package (0x00) {}
        })
        Name (CSTF, Zero)
        Method (_CST, 0, Serialized)  // _CST: C-States
        {
            If (!CSTF)
            {
                Index (C3TM, 0x02) = C3LT /* External reference */
                Index (C6TM, 0x02) = C6LT /* External reference */
                Index (C7TM, 0x02) = C7LT /* External reference */
                Index (CDTM, 0x02) = CDLT /* External reference */
                Index (CDTM, 0x03) = CDPW /* External reference */
                Index (DerefOf (Index (CDTM, Zero)), 0x07) = CDLV /* External reference */
                If (((CFGD & 0x0800) && (PDC0 & 0x0200)))
                {
                    Index (C1TM, Zero) = MWES /* \_PR_.CPU0.MWES */
                    Index (C3TM, Zero) = MWES /* \_PR_.CPU0.MWES */
                    Index (C6TM, Zero) = MWES /* \_PR_.CPU0.MWES */
                    Index (C7TM, Zero) = MWES /* \_PR_.CPU0.MWES */
                    Index (CDTM, Zero) = MWES /* \_PR_.CPU0.MWES */
                    Index (DerefOf (Index (C3TM, Zero)), 0x07) = C3MW /* External reference */
                    Index (DerefOf (Index (C6TM, Zero)), 0x07) = C6MW /* External reference */
                    Index (DerefOf (Index (C7TM, Zero)), 0x07) = C7MW /* External reference */
                    Index (DerefOf (Index (CDTM, Zero)), 0x07) = CDMW /* External reference */
                }
                Else
                {
                    If (((CFGD & 0x0800) && (PDC0 & 0x0100)))
                    {
                        Index (C1TM, Zero) = MWES /* \_PR_.CPU0.MWES */
                    }
                }

                CSTF = Ones
            }

            AC2V = Zero
            AC3V = Zero
            Index (C3ST, One) = C1TM /* \_PR_.CPU0.C1TM */
            If ((CFGD & 0x20))
            {
                Index (C3ST, 0x02) = C7TM /* \_PR_.CPU0.C7TM */
                AC2V = Ones
            }
            Else
            {
                If ((CFGD & 0x10))
                {
                    Index (C3ST, 0x02) = C6TM /* \_PR_.CPU0.C6TM */
                    AC2V = Ones
                }
                Else
                {
                    If ((CFGD & 0x08))
                    {
                        Index (C3ST, 0x02) = C3TM /* \_PR_.CPU0.C3TM */
                        AC2V = Ones
                    }
                }
            }

            If ((CFGD & 0x4000))
            {
                Index (C3ST, 0x03) = CDTM /* \_PR_.CPU0.CDTM */
                AC3V = Ones
            }

            If ((AC2V && AC3V))
            {
                Return (C3ST) /* \_PR_.CPU0.C3ST */
            }
            Else
            {
                If (AC2V)
                {
                    Index (C2ST, One) = DerefOf (Index (C3ST, One))
                    Index (C2ST, 0x02) = DerefOf (Index (C3ST, 0x02))
                    Return (C2ST) /* \_PR_.CPU0.C2ST */
                }
                Else
                {
                    If (AC3V)
                    {
                        Index (C2ST, One) = DerefOf (Index (C3ST, One))
                        Index (C2ST, 0x02) = DerefOf (Index (C3ST, 0x03))
                        Index (DerefOf (Index (C2ST, 0x02)), One) = 0x02
                        Return (C2ST) /* \_PR_.CPU0.C2ST */
                    }
                    Else
                    {
                        Index (C1ST, One) = DerefOf (Index (C3ST, One))
                        Return (C1ST) /* \_PR_.CPU0.C1ST */
                    }
                }
            }
        }
    }
}

