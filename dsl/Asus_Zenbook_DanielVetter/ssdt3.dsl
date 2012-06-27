/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120620-64 [Jun 24 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of ssdt3.dat, Wed Jun 27 18:56:27 2012
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000098 (152)
 *     Revision         0x01
 *     Checksum         0xB3
 *     OEM ID           "PchDpt"
 *     OEM Table ID     "PchDptf"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */

DefinitionBlock ("ssdt3.aml", "SSDT", 1, "PchDpt", "PchDptf", 0x00001000)
{
    External (\_SB_.PCI0, DeviceObj)

    Scope (\_SB.PCI0)
    {
        Device (TPCH)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address
            Name (LSTM, Zero)
            OperationRegion (PCHT, PCI_Config, 0x10, 0x08)
            Field (PCHT, DWordAcc, NoLock, Preserve)
            {
                STYP,   1, 
                ADRG,   2, 
                PREF,   1, 
                    ,   8, 
                TBAR,   52
            }

            Name (GTSH, 0x1E)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM)
                Notify (TPCH, 0x91)
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }
        }
    }
}

