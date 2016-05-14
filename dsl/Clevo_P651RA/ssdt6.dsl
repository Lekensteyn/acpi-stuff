/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.dat, Sat May 14 22:16:15 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000009F (159)
 *     Revision         0x02
 *     Checksum         0xED
 *     OEM ID           "SgRef"
 *     OEM Table ID     "SgPeg"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("ssdt6.aml", "SSDT", 2, "SgRef", "SgPeg", 0x00001000)
{

    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.PVID, FieldUnitObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (SGGP, FieldUnitObj)
    External (SGMD, FieldUnitObj)

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (SGPO, 4, Serialized)
        {
            If ((Arg2 == Zero))
            {
                Arg3 = ~Arg3
                Arg3 &= One
            }

            If ((SGGP == One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (SGST, 0, Serialized)
        {
            If ((SGMD & 0x0F))
            {
                If ((SGGP != One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((PVID != 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }
    }
}

