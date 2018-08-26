/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180629 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt13.dat, Mon Aug 27 00:28:34 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AE (174)
 *     Revision         0x02
 *     Checksum         0x80
 *     OEM ID           "SgRef"
 *     OEM Table ID     "SgPeg"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "SgRef", "SgPeg", 0x00001000)
{
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (GBAS, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)

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
    }
}

