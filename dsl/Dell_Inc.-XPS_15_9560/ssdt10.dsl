/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180629 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt10.dat, Mon Aug 27 00:28:33 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003002 (12290)
 *     Revision         0x02
 *     Checksum         0xD4
 *     OEM ID           "INTEL "
 *     OEM Table ID     "PtidDevc"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "PtidDevc", 0x00001000)
{
    External (_PR_.DTS1, UnknownObj)
    External (_PR_.DTS2, UnknownObj)
    External (_PR_.DTS3, UnknownObj)
    External (_PR_.DTS4, UnknownObj)
    External (_PR_.PDTS, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1CI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1DC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1DI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1FC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1FV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1RC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2CI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2DI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2FC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2FV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2MH, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2ML, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2RC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.BMAX, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CFS2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CFSP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CMDR, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CPAP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CPUP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.H_EC.GTVR, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MCPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MCTD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MDT0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MFSP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MGPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MGTD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MMPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MMTL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.MPOL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.NCPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.NCTD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.NGPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.NGTD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.NMTL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.NPOL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PCAD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECH, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEHI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PENV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEPM, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEWL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PLAP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PMAX, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PPDT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PPWR, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRCS, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRFC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS4, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PWFC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PWRL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER4, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER5, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER6, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TMPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR4, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR5, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR6, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSR7, UnknownObj)
    External (_TZ_.TZ00._TMP, UnknownObj)
    External (_TZ_.TZ01._TMP, UnknownObj)
    External (PAMT, UnknownObj)
    External (TSDB, UnknownObj)

    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (_STA, 0x0F)  // _STA: Status
            Method (TSDL, 0, NotSerialized)
            {
                If ((TSDB == One))
                {
                    Return (TSD2) /* \_SB_.PTID.TSD2 */
                }

                Return (TSD1) /* \_SB_.PTID.TSD1 */
            }

            Name (TSD1, Package (0x28)
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
                "DIMM0_hotspot_U4C1", 
                0x03, 
                "DIMM1_hotspot_Q4D1", 
                0x03, 
                "IMVP_conn_Q7C1", 
                0x03, 
                "board_hotspot1_U3G3", 
                0x03, 
                "board_hotspot2_Q3G1", 
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
                "TZ01 _TMP", 
                0x03, 
                "SDRAM_hotspot_RT5B1", 
                0x03, 
                "NGFF_slot_RT6G1", 
                0x03, 
                "IMVP_conn_RT7D1", 
                0x03, 
                "board_hotspot3_RT8F1"
            })
            Name (TSD2, Package (0x26)
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
                "A-Skin Hotspot U21", 
                0x03, 
                "A-Skin Hotspot U21 IR", 
                0x03, 
                "B-Skin Hotspot U1", 
                0x03, 
                "B-Skin Hotspot U1 IR", 
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
                0x03, 
                "SoC VR Thermsitor RT11", 
                0x03, 
                "Memory Thermistor RT9", 
                0x03, 
                "GNSS Board Ambient Thermistor R4", 
                0x03, 
                "System VR Thermistor RT10", 
                0x03, 
                "A-Skin Skycam Thermistor RT8"
            })
            Name (PSDL, Package (0x22)
            {
                0x0B, 
                "Cpu Power (mW)", 
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Cpu Average Power (mW)", 
                0x0B, 
                "Platform Average Power (mW)", 
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
            Method (OSDL, 0, NotSerialized)
            {
                If ((TSDB == One))
                {
                    Return (OSD2) /* \_SB_.PTID.OSD2 */
                }

                Return (OSD1) /* \_SB_.PTID.OSD1 */
            }

            Name (OSD1, Package (0x15)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW"
            })
            Name (OSD2, Package (0x18)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW", 
                0x03, 
                "Thermistor 5 ", 
                "RAW"
            })
            Method (XLAT, 1, Serialized)
            {
                If ((Arg0 >= 0x03AC))
                {
                    Return (0x0A47)
                }

                If ((Arg0 >= 0x0394))
                {
                    Return (0x0A79)
                }

                If ((Arg0 >= 0x0374))
                {
                    Return (0x0AAB)
                }

                If ((Arg0 >= 0x0354))
                {
                    Return (0x0ADD)
                }

                If ((Arg0 >= 0x032C))
                {
                    Return (0x0B0F)
                }

                If ((Arg0 >= 0x0300))
                {
                    Return (0x0B41)
                }

                If ((Arg0 >= 0x02D0))
                {
                    Return (0x0B73)
                }

                If ((Arg0 >= 0x029C))
                {
                    Return (0x0BA5)
                }

                If ((Arg0 >= 0x0264))
                {
                    Return (0x0BD7)
                }

                If ((Arg0 >= 0x0230))
                {
                    Return (0x0C09)
                }

                If ((Arg0 >= 0x01FC))
                {
                    Return (0x0C3B)
                }

                If ((Arg0 >= 0x01C8))
                {
                    Return (0x0C6D)
                }

                If ((Arg0 >= 0x0194))
                {
                    Return (0x0C9F)
                }

                If ((Arg0 >= 0x0164))
                {
                    Return (0x0CD1)
                }

                If ((Arg0 >= 0x0138))
                {
                    Return (0x0D03)
                }

                If ((Arg0 >= 0x0114))
                {
                    Return (0x0D35)
                }

                If ((Arg0 >= 0xF0))
                {
                    Return (0x0D67)
                }

                If ((Arg0 >= 0xD4))
                {
                    Return (0x0D99)
                }

                If ((Arg0 >= 0xB8))
                {
                    Return (0x0DCB)
                }

                If ((Arg0 >= 0xA0))
                {
                    Return (0x0DFD)
                }

                If ((Arg0 >= 0x8C))
                {
                    Return (0x0E2F)
                }

                If ((Arg0 >= 0x7C))
                {
                    Return (0x0E61)
                }

                If ((Arg0 >= 0x68))
                {
                    Return (0x0E93)
                }

                If ((Arg0 >= 0x58))
                {
                    Return (0x0EC5)
                }

                Return (0x0EC5)
            }

            Method (XSDS, 1, Serialized)
            {
                If ((Arg0 >= 0x02F0))
                {
                    Return (0x0A47)
                }

                If ((Arg0 >= 0x02DC))
                {
                    Return (0x0A79)
                }

                If ((Arg0 >= 0x02C4))
                {
                    Return (0x0AAB)
                }

                If ((Arg0 >= 0x02A8))
                {
                    Return (0x0ADD)
                }

                If ((Arg0 >= 0x0288))
                {
                    Return (0x0B0F)
                }

                If ((Arg0 >= 0x0264))
                {
                    Return (0x0B41)
                }

                If ((Arg0 >= 0x0240))
                {
                    Return (0x0B73)
                }

                If ((Arg0 >= 0x0214))
                {
                    Return (0x0BA5)
                }

                If ((Arg0 >= 0x01EC))
                {
                    Return (0x0BD7)
                }

                If ((Arg0 >= 0x01C0))
                {
                    Return (0x0C09)
                }

                If ((Arg0 >= 0x0194))
                {
                    Return (0x0C3B)
                }

                If ((Arg0 >= 0x016C))
                {
                    Return (0x0C6D)
                }

                If ((Arg0 >= 0x0144))
                {
                    Return (0x0C9F)
                }

                If ((Arg0 >= 0x011C))
                {
                    Return (0x0CD1)
                }

                If ((Arg0 >= 0xFC))
                {
                    Return (0x0D03)
                }

                If ((Arg0 >= 0xDC))
                {
                    Return (0x0D35)
                }

                If ((Arg0 >= 0xC0))
                {
                    Return (0x0D67)
                }

                If ((Arg0 >= 0xA8))
                {
                    Return (0x0D99)
                }

                If ((Arg0 >= 0x94))
                {
                    Return (0x0DCB)
                }

                If ((Arg0 >= 0x80))
                {
                    Return (0x0DFD)
                }

                If ((Arg0 >= 0x70))
                {
                    Return (0x0E2F)
                }

                If ((Arg0 >= 0x60))
                {
                    Return (0x0E61)
                }

                If ((Arg0 >= 0x54))
                {
                    Return (0x0E93)
                }

                If ((Arg0 >= 0x48))
                {
                    Return (0x0EC5)
                }

                Return (0x0EC5)
            }

            Method (TSDD, 0, Serialized)
            {
                If ((TSDB == One))
                {
                    Name (TMPX, Package (0x13)
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
                    TMPX [Zero] = ((\_PR.DTS1 * 0x0A) + 0x0AAC)
                    TMPX [One] = ((\_PR.DTS2 * 0x0A) + 0x0AAC)
                    TMPX [0x02] = ((\_PR.DTS3 * 0x0A) + 0x0AAC)
                    TMPX [0x03] = ((\_PR.DTS4 * 0x0A) + 0x0AAC)
                    TMPX [0x04] = ((\_PR.PDTS * 0x0A) + 0x0AAC)
                    If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                    {
                        TMPX [0x05] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR1)) * 0x0A) + 
                            0x0AAC)
                        TMPX [0x06] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR2)) * 0x0A) + 
                            0x0AAC)
                        TMPX [0x07] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR3)) * 0x0A) + 
                            0x0AAC)
                        TMPX [0x08] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR4)) * 0x0A) + 
                            0x0AAC)
                        TMPX [0x09] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PMAX)) * 0x0A) + 
                            0x0AAC)
                        TMPX [0x0A] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PPDT)) * 0x0A) + 
                            0x0AAC)
                        TMPX [0x0B] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECH)) * 0x0A) + 
                            0x0AAC)
                    }

                    TMPX [0x0D] = \_TZ.TZ00._TMP /* External reference */
                    If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                    {
                        TMPX [0x0E] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER1)) << 0x02))
                        TMPX [0x0F] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER2)) << 0x02))
                        TMPX [0x10] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER3)) << 0x02))
                        TMPX [0x11] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER4)) << 0x02))
                        TMPX [0x12] = XSDS ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER5)) << 0x02))
                    }

                    Return (TMPX) /* \_SB_.PTID.TSDD.TMPX */
                }

                Name (TMPV, Package (0x14)
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
                    0x80000000
                })
                TMPV [Zero] = ((\_PR.DTS1 * 0x0A) + 0x0AAC)
                TMPV [One] = ((\_PR.DTS2 * 0x0A) + 0x0AAC)
                TMPV [0x02] = ((\_PR.DTS3 * 0x0A) + 0x0AAC)
                TMPV [0x03] = ((\_PR.DTS4 * 0x0A) + 0x0AAC)
                TMPV [0x04] = ((\_PR.PDTS * 0x0A) + 0x0AAC)
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    TMPV [0x05] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR1)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x06] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR2)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x07] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR3)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x08] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR4)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x09] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR5)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x0A] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PMAX)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x0B] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PPDT)) * 0x0A) + 
                        0x0AAC)
                    TMPV [0x0C] = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECH)) * 0x0A) + 
                        0x0AAC)
                }

                TMPV [0x0E] = \_TZ.TZ00._TMP /* External reference */
                TMPV [0x0F] = \_TZ.TZ01._TMP /* External reference */
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    TMPV [0x10] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER1)) << 0x02))
                    TMPV [0x11] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER2)) << 0x02))
                    TMPV [0x12] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER3)) << 0x02))
                    TMPV [0x13] = XLAT ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER4)) << 0x02))
                }

                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }

            Method (PSDD, 0, Serialized)
            {
                Name (PWRV, Package (0x11)
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
                    0x80000000
                })
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    PWRV [Zero] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CPUP))
                    PWRV [One] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PPWR)) * 0x0A)
                    PWRV [0x02] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CPAP))
                    PWRV [0x03] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PLAP)) * 0x0A)
                    PWRV [0x04] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1DC))
                    PWRV [0x05] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1RC))
                    PWRV [0x06] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1FC))
                    PWRV [0x07] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1FV))
                    PWRV [0x08] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1DI))
                    PWRV [0x09] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1CI))
                    PWRV [0x0A] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2RC))
                    PWRV [0x0B] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2FC))
                    PWRV [0x0C] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2FV))
                    PWRV [0x0D] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2DI))
                    PWRV [0x0E] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2CI))
                    Local0 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.BMAX))
                    If (Local0)
                    {
                        Local0 = ~Local0 |= 0xFFFF0000
                        Local0 = (Local0 += One * 0x0A)
                    }

                    PWRV [0x0F] = Local0
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2MH)) << 0x08) + \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2ML)))
                    If (Local0)
                    {
                        Local0 = ~Local0 |= 0xFFFF0000
                        Local0 = (Local0 += One * 0x0A)
                    }

                    PWRV [0x10] = Local0
                }

                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }

            Method (OSDD, 0, Serialized)
            {
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    If ((TSDB == One))
                    {
                        Name (OSD2, Package (0x08)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        })
                        OSD2 [Zero] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                        OSD2 [One] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CFSP))
                        OSD2 [0x02] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR3))
                        OSD2 [0x03] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER1)) << 0x02)
                        OSD2 [0x04] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER2)) << 0x02)
                        OSD2 [0x05] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER3)) << 0x02)
                        OSD2 [0x06] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER4)) << 0x02)
                        OSD2 [0x07] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER5)) << 0x02)
                        Return (OSD2) /* \_SB_.PTID.OSDD.OSD2 */
                    }

                    Name (OSD1, Package (0x07)
                    {
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000
                    })
                    OSD1 [Zero] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                    OSD1 [One] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CFSP))
                    OSD1 [0x02] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSR3))
                    OSD1 [0x03] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER1)) << 0x02)
                    OSD1 [0x04] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER2)) << 0x02)
                    OSD1 [0x05] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER3)) << 0x02)
                    OSD1 [0x06] = (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER4)) << 0x02)
                    Return (OSD1) /* \_SB_.PTID.OSDD.OSD1 */
                }

                Return (Package (0x00){})
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x1A, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
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
                If (PAMT)
                {
                    Return (PADA) /* \_SB_.PTID.PADA */
                }

                Return (PADD) /* \_SB_.PTID.PADD */
            }

            Method (RPMD, 0, Serialized)
            {
                Name (MTMP, Buffer (0x1A){})
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    MTMP [0x06] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PCAD))
                    MTMP [0x07] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEWL))
                    MTMP [0x08] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PWRL))
                    MTMP [0x09] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECD))
                    MTMP [0x0A] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEHI))
                    MTMP [0x0B] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECI))
                    MTMP [0x0C] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEPL))
                    MTMP [0x0D] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEPM))
                    MTMP [0x0E] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PWFC))
                    MTMP [0x0F] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECC))
                    MTMP [0x10] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT0))
                    MTMP [0x11] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT1))
                    MTMP [0x12] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT2))
                    MTMP [0x13] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT3))
                    MTMP [0x14] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRFC))
                    MTMP [0x15] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS0))
                    MTMP [0x16] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS1))
                    MTMP [0x17] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS2))
                    MTMP [0x18] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS3))
                    MTMP [0x19] = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS4))
                }

                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }

            Method (WPMD, 1, NotSerialized)
            {
                If ((SizeOf (Arg0) != 0x1A))
                {
                    Return (0xFFFFFFFF)
                }

                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x06]), RefOf (\_SB.PCI0.LPCB.H_EC.PCAD))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x07]), RefOf (\_SB.PCI0.LPCB.H_EC.PEWL))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x08]), RefOf (\_SB.PCI0.LPCB.H_EC.PWRL))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x09]), RefOf (\_SB.PCI0.LPCB.H_EC.PECD))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x0A]), RefOf (\_SB.PCI0.LPCB.H_EC.PEHI))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x0B]), RefOf (\_SB.PCI0.LPCB.H_EC.PECI))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x0C]), RefOf (\_SB.PCI0.LPCB.H_EC.PEPL))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x0D]), RefOf (\_SB.PCI0.LPCB.H_EC.PEPM))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x0E]), RefOf (\_SB.PCI0.LPCB.H_EC.PWFC))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x0F]), RefOf (\_SB.PCI0.LPCB.H_EC.PECC))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x10]), RefOf (\_SB.PCI0.LPCB.H_EC.PDT0))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x11]), RefOf (\_SB.PCI0.LPCB.H_EC.PDT1))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x12]), RefOf (\_SB.PCI0.LPCB.H_EC.PDT2))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x13]), RefOf (\_SB.PCI0.LPCB.H_EC.PDT3))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x14]), RefOf (\_SB.PCI0.LPCB.H_EC.PRFC))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x15]), RefOf (\_SB.PCI0.LPCB.H_EC.PRS0))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x16]), RefOf (\_SB.PCI0.LPCB.H_EC.PRS1))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x17]), RefOf (\_SB.PCI0.LPCB.H_EC.PRS2))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x18]), RefOf (\_SB.PCI0.LPCB.H_EC.PRS3))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Arg0 [0x19]), RefOf (\_SB.PCI0.LPCB.H_EC.PRS4))
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x67)
                }

                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x65)
                }

                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x66)
                }

                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    Local0 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRCS))
                }

                Return (Local0)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Local0 = Zero
                If ((\_SB.PCI0.LPCB.H_EC.ECAV == One))
                {
                    Local1 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC0))
                    Local0 |= Local1
                    Local1 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC1))
                    Local0 |= (Local1 << 0x08)
                    Local1 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC2))
                    Local0 |= (Local1 << 0x10)
                    Local1 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC3))
                    Local0 |= (Local1 << 0x18)
                }

                Return (Local0)
            }
        }
    }
}

