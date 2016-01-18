/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Mon Jan 18 23:32:36 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001100 (4352)
 *     Revision         0x01
 *     Checksum         0x0A
 *     OEM ID           "INTEL "
 *     OEM Table ID     "PtidDevc"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("ssdt2.aml", "SSDT", 1, "INTEL ", "PtidDevc", 0x00001000)
{

    External (_PR_.DTS1, UnknownObj)
    External (_PR_.DTS2, UnknownObj)
    External (_PR_.DTS3, UnknownObj)
    External (_PR_.DTS4, UnknownObj)
    External (_PR_.PDTS, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.AMBT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.CVRT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.DIM0, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.DIM1, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.ECOK, IntObj)
    External (_SB_.PCI0.LPCB.EC__.FANT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.FCMD, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PCAD, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PDT0, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PDT1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PDT2, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PDT3, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEC0, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEC1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEC2, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEC3, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PECC, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PECD, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PECH, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PECI, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEHI, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEPL, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEPM, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PEWL, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PMAX, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PMDT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PPDT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PRC0, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRC1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRCL, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRCM, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRCS, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRFC, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRIN, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRS0, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRS1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRS2, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRS3, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PRS4, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PSTE, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PWFC, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PWRL, IntObj)
    External (_SB_.PCI0.LPCB.EC__.SKNT, UnknownObj)
    External (_TZ_.TZ0_._TMP, IntObj)

    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (_STA, 0x0F)  // _STA: Status
            Name (TSDL, Package (0x24)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "CPU Core VR (IMVP) Temperature", 
                0x03, 
                "Heat Exchanger Fan Temperature", 
                0x03, 
                "Skin Temperature", 
                0x03, 
                "Ambient Temperature", 
                0x02, 
                "Sensor 5 Not used.", 
                0x02, 
                "Channel 0 DIMM Temperature", 
                0x02, 
                "Channel 1 DIMM Temperature", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP"
            })
            Name (PSDL, Package (0x26)
            {
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Brick Power cW(100ths)", 
                0x0B, 
                "Battery Discharge Power cW(100ths)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0B, 
                "Brick Average Power cW(0.01)", 
                0x0B, 
                "Battery Discharge Average Power cW(0.01)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })
            Name (OSDL, Package (0x09)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW"
            })
            Method (TSDD, 0, Serialized)
            {
                Name (TMPV, Package (0x16)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Index (TMPV, Zero) = ((\_PR.DTS1 * 0x0A) + 0x0AAC)
                Index (TMPV, One) = ((\_PR.DTS2 * 0x0A) + 0x0AAC)
                Index (TMPV, 0x02) = ((\_PR.DTS3 * 0x0A) + 0x0AAC)
                Index (TMPV, 0x03) = ((\_PR.DTS4 * 0x0A) + 0x0AAC)
                Index (TMPV, 0x04) = ((\_PR.PDTS * 0x0A) + 0x0AAC)
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Index (TMPV, 0x05) = ((\_SB.PCI0.LPCB.EC.CVRT * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x06) = ((\_SB.PCI0.LPCB.EC.FANT * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x07) = ((\_SB.PCI0.LPCB.EC.SKNT * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x08) = ((\_SB.PCI0.LPCB.EC.AMBT * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x0A) = ((\_SB.PCI0.LPCB.EC.DIM0 * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x0B) = ((\_SB.PCI0.LPCB.EC.DIM1 * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x0C) = ((\_SB.PCI0.LPCB.EC.PMAX * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x0D) = ((\_SB.PCI0.LPCB.EC.PPDT * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x0E) = ((\_SB.PCI0.LPCB.EC.PECH * 0x0A) + 0x0AAC)
                    Index (TMPV, 0x0F) = ((\_SB.PCI0.LPCB.EC.PMDT * 0x0A) + 0x0AAC)
                }

                Index (TMPV, 0x10) = \_TZ.TZ0._TMP /* External reference */
                Index (TMPV, 0x11) = \_TZ.TZ0._TMP /* External reference */
                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }

            Method (PSDD, 0, Serialized)
            {
                Name (PWRV, Package (0x13)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }

            Method (OSDD, 0, Serialized)
            {
                Name (OSDV, Package (0x03)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Return (OSDV) /* \_SB_.PTID.OSDD.OSDV */
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })
            Method (PADT, 0, NotSerialized)
            {
                Return (PADA) /* \_SB_.PTID.PADA */
            }

            Method (RPMD, 0, Serialized)
            {
                Name (MTMP, Buffer (0x1A) {})
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Index (MTMP, Zero) = \_SB.PCI0.LPCB.EC.PRCL /* External reference */
                    Index (MTMP, One) = \_SB.PCI0.LPCB.EC.PRC0 /* External reference */
                    Index (MTMP, 0x02) = \_SB.PCI0.LPCB.EC.PRC1 /* External reference */
                    Index (MTMP, 0x03) = \_SB.PCI0.LPCB.EC.PRCM /* External reference */
                    Index (MTMP, 0x04) = \_SB.PCI0.LPCB.EC.PRIN /* External reference */
                    Index (MTMP, 0x05) = \_SB.PCI0.LPCB.EC.PSTE /* External reference */
                    Index (MTMP, 0x06) = \_SB.PCI0.LPCB.EC.PCAD /* External reference */
                    Index (MTMP, 0x07) = \_SB.PCI0.LPCB.EC.PEWL /* External reference */
                    Index (MTMP, 0x08) = \_SB.PCI0.LPCB.EC.PWRL /* External reference */
                    Index (MTMP, 0x09) = \_SB.PCI0.LPCB.EC.PECD /* External reference */
                    Index (MTMP, 0x0A) = \_SB.PCI0.LPCB.EC.PEHI /* External reference */
                    Index (MTMP, 0x0B) = \_SB.PCI0.LPCB.EC.PECI /* External reference */
                    Index (MTMP, 0x0C) = \_SB.PCI0.LPCB.EC.PEPL /* External reference */
                    Index (MTMP, 0x0D) = \_SB.PCI0.LPCB.EC.PEPM /* External reference */
                    Index (MTMP, 0x0E) = \_SB.PCI0.LPCB.EC.PWFC /* External reference */
                    Index (MTMP, 0x0F) = \_SB.PCI0.LPCB.EC.PECC /* External reference */
                    Index (MTMP, 0x10) = \_SB.PCI0.LPCB.EC.PDT0 /* External reference */
                    Index (MTMP, 0x11) = \_SB.PCI0.LPCB.EC.PDT1 /* External reference */
                    Index (MTMP, 0x12) = \_SB.PCI0.LPCB.EC.PDT2 /* External reference */
                    Index (MTMP, 0x13) = \_SB.PCI0.LPCB.EC.PDT3 /* External reference */
                    Index (MTMP, 0x14) = \_SB.PCI0.LPCB.EC.PRFC /* External reference */
                    Index (MTMP, 0x15) = \_SB.PCI0.LPCB.EC.PRS0 /* External reference */
                    Index (MTMP, 0x16) = \_SB.PCI0.LPCB.EC.PRS1 /* External reference */
                    Index (MTMP, 0x17) = \_SB.PCI0.LPCB.EC.PRS2 /* External reference */
                    Index (MTMP, 0x18) = \_SB.PCI0.LPCB.EC.PRS3 /* External reference */
                    Index (MTMP, 0x19) = \_SB.PCI0.LPCB.EC.PRS4 /* External reference */
                }

                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }

            Method (WPMD, 1, NotSerialized)
            {
                If ((SizeOf (Arg0) != 0x1A))
                {
                    Return (Ones)
                }

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    \_SB.PCI0.LPCB.EC.PRCL = DerefOf (Index (Arg0, Zero))
                    \_SB.PCI0.LPCB.EC.PRC0 = DerefOf (Index (Arg0, One))
                    \_SB.PCI0.LPCB.EC.PRC1 = DerefOf (Index (Arg0, 0x02))
                    \_SB.PCI0.LPCB.EC.PRCM = DerefOf (Index (Arg0, 0x03))
                    \_SB.PCI0.LPCB.EC.PRIN = DerefOf (Index (Arg0, 0x04))
                    \_SB.PCI0.LPCB.EC.PSTE = DerefOf (Index (Arg0, 0x05))
                    \_SB.PCI0.LPCB.EC.PCAD = DerefOf (Index (Arg0, 0x06))
                    \_SB.PCI0.LPCB.EC.PEWL = DerefOf (Index (Arg0, 0x07))
                    \_SB.PCI0.LPCB.EC.PWRL = DerefOf (Index (Arg0, 0x08))
                    \_SB.PCI0.LPCB.EC.PECD = DerefOf (Index (Arg0, 0x09))
                    \_SB.PCI0.LPCB.EC.PEHI = DerefOf (Index (Arg0, 0x0A))
                    \_SB.PCI0.LPCB.EC.PECI = DerefOf (Index (Arg0, 0x0B))
                    \_SB.PCI0.LPCB.EC.PEPL = DerefOf (Index (Arg0, 0x0C))
                    \_SB.PCI0.LPCB.EC.PEPM = DerefOf (Index (Arg0, 0x0D))
                    \_SB.PCI0.LPCB.EC.PWFC = DerefOf (Index (Arg0, 0x0E))
                    \_SB.PCI0.LPCB.EC.PECC = DerefOf (Index (Arg0, 0x0F))
                    \_SB.PCI0.LPCB.EC.PDT0 = DerefOf (Index (Arg0, 0x10))
                    \_SB.PCI0.LPCB.EC.PDT1 = DerefOf (Index (Arg0, 0x11))
                    \_SB.PCI0.LPCB.EC.PDT2 = DerefOf (Index (Arg0, 0x12))
                    \_SB.PCI0.LPCB.EC.PDT3 = DerefOf (Index (Arg0, 0x13))
                    \_SB.PCI0.LPCB.EC.PRFC = DerefOf (Index (Arg0, 0x14))
                    \_SB.PCI0.LPCB.EC.PRS0 = DerefOf (Index (Arg0, 0x15))
                    \_SB.PCI0.LPCB.EC.PRS1 = DerefOf (Index (Arg0, 0x16))
                    \_SB.PCI0.LPCB.EC.PRS2 = DerefOf (Index (Arg0, 0x17))
                    \_SB.PCI0.LPCB.EC.PRS3 = DerefOf (Index (Arg0, 0x18))
                    \_SB.PCI0.LPCB.EC.PRS4 = DerefOf (Index (Arg0, 0x19))
                    \_SB.PCI0.LPCB.EC.FCMD = 0xB4
                }

                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK) {}
                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK) {}
                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Local0 = \_SB.PCI0.LPCB.EC.PRCS /* External reference */
                }

                Return (Local0)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Local0 = Zero
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Local1 = \_SB.PCI0.LPCB.EC.PEC0 /* External reference */
                    Local0 |= Local1
                    Local1 = \_SB.PCI0.LPCB.EC.PEC1 /* External reference */
                    Local0 |= (Local1 << 0x08)
                    Local1 = \_SB.PCI0.LPCB.EC.PEC2 /* External reference */
                    Local0 |= (Local1 << 0x10)
                    Local1 = \_SB.PCI0.LPCB.EC.PEC3 /* External reference */
                    Local0 |= (Local1 << 0x18)
                }

                Return (Local0)
            }
        }
    }
}

