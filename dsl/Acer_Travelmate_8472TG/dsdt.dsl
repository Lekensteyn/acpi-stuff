/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Sat May 28 16:43:05 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000DD4E (56654)
 *     Revision         0x02
 *     Checksum         0xFF
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "CALPELLA"
 *     OEM Revision     0x06040000 (100925440)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060912 (537266450)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 2, "ACRSYS", "CALPELLA", 0x06040000)
{

    External (_PR_.CPU0._PPC, UnknownObj)
    External (_PR_.CPU1._PPC, UnknownObj)
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.P0P2.PEGP.DD02, UnknownObj)
    External (_SB_.PCI0.P0P2.PEGP.DDMI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.P0P2.PEGP.VSAV, MethodObj)    // 0 Arguments
    External (CFGD, IntObj)
    External (HDOS, MethodObj)    // 0 Arguments
    External (IDAB, MethodObj)    // 0 Arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)
    External (TNOT, MethodObj)    // 0 Arguments
    External (WMAB, MethodObj)    // 1 Arguments

    Name (SP1O, 0x164E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0680)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x1180)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, Zero)
    Name (SHPC, One)
    Name (PEPM, Zero)
    Name (PEER, Zero)
    Name (PECS, Zero)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (BRF, One)
    Name (BPH, 0x02)
    Name (BLC, 0x03)
    Name (BRFS, 0x04)
    Name (BPHS, 0x05)
    Name (BLCT, 0x06)
    Name (BRF4, 0x07)
    Name (BEP, 0x08)
    Name (BBF, 0x09)
    Name (BOF, 0x0A)
    Name (BPT, 0x0B)
    Name (TRTP, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (SMBL, 0x10)
    Name (ECOK, Zero)
    OperationRegion (GNVS, SystemMemory, 0x9378B9BC, 0x0200)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        Offset (0x82), 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SDGV,   8, 
        SDDV,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x15B), 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        IPSE,   8, 
        Offset (0x16B), 
        PFLV,   8, 
        BREV,   8, 
        DPBM,   8, 
        DPCM,   8, 
        DPDM,   8, 
        ALFP,   8
    }

    Name (BRTN, Zero)
    Name (BOWN, Zero)
    Name (S34R, Zero)
    Name (NLID, Zero)
    OperationRegion (NV1, SystemIO, 0x72, 0x02)
    Field (NV1, ByteAcc, NoLock, Preserve)
    {
        INDX,   8, 
        DATA,   8
    }

    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
    {
        Offset (0x60), 
        SGST,   2, 
        VGAD,   2, 
            ,   2, 
        EPMF,   1, 
        IOAR,   1, 
        Offset (0x66), 
        BLCV,   8, 
        Offset (0x6E), 
        INS4,   1, 
        FL03,   1, 
        FL04,   1, 
        FL05,   1, 
        Offset (0x70), 
        WDDD,   1, 
        GDDD,   1, 
        BDDD,   1
    }

    Scope (_SB)
    {
        Method (VTOB, 1, NotSerialized)
        {
            Local0 = One
            Local0 <<= Arg0
            Return (Local0)
        }

        Method (BTOV, 1, NotSerialized)
        {
            Local0 = (Arg0 >> One)
            Local1 = Zero
            While (Local0)
            {
                Local1++
                Local0 >>= One
            }

            Return (Local1)
        }

        Method (MKWD, 2, NotSerialized)
        {
            If ((Arg1 & 0x80))
            {
                Local0 = 0xFFFF0000
            }
            Else
            {
                Local0 = Zero
            }

            Local0 |= Arg0
            Local0 |= (Arg1 << 0x08)
            Return (Local0)
        }

        Method (POSW, 1, NotSerialized)
        {
            If ((Arg0 & 0x8000))
            {
                If ((Arg0 == 0xFFFF))
                {
                    Return (0xFFFFFFFF)
                }
                Else
                {
                    Local0 = ~Arg0
                    Local0++
                    Local0 &= 0xFFFF
                    Return (Local0)
                }
            }
            Else
            {
                Return (Arg0)
            }
        }

        Method (GBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Arg2 = TIDX /* \_SB_.GBFE.TIDX */
        }

        Method (PBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            TIDX = Arg2
        }

        Method (ITOS, 1, NotSerialized)
        {
            Local0 = Buffer (0x09)
                {
                    /* 0000 */  0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                    /* 0008 */  0x00                                             /* . */
                }
            Local7 = Buffer (0x11)
                {
                    "0123456789ABCDEF"
                }
            Local1 = 0x08
            Local2 = Zero
            Local3 = Zero
            While (Local1)
            {
                Local1--
                Local4 = ((Arg0 >> (Local1 << 0x02)) & 0x0F)
                If (Local4)
                {
                    Local3 = Ones
                }

                If (Local3)
                {
                    GBFE (Local7, Local4, RefOf (Local5))
                    PBFE (Local0, Local2, Local5)
                    Local2++
                }
            }

            Return (Local0)
        }

        OperationRegion (SMI0, SystemIO, 0x0000FE00, 0x00000002)
        Field (SMI0, AnyAcc, NoLock, Preserve)
        {
            SMIC,   8
        }

        OperationRegion (SMI1, SystemMemory, 0x9378BBD5, 0x00000378)
        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
            BCMD,   8, 
            DID,    32, 
            INF,    8
        }

        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
            Offset (0x50), 
            BLK0,   64, 
            BLK1,   64, 
            BLK2,   64, 
            BLK3,   64, 
            BLK4,   64, 
            Offset (0x110), 
            BTEN,   1, 
            WLAN,   1, 
            DOCK,   1, 
            IDEC,   1, 
            TPMS,   1, 
            EX3G,   1, 
            CIRI,   1, 
            CPUT,   1, 
            MODL,   8
        }

        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
            Offset (0x50), 
            PAR0,   16, 
            Offset (0x60), 
            BLK6,   16, 
            Offset (0x78), 
            BLK5,   320, 
            Offset (0x114), 
            TTT0,   16, 
            TTT1,   64, 
            TTT2,   16, 
            BIOL,   16, 
            BIOS,   2048
        }

        Mutex (PSMX, 0x00)
        Name (SMIQ, Zero)
        Method (PHSR, 2, NotSerialized)
        {
            Acquire (PSMX, 0xFFFF)
            BCMD = 0x90
            DID = Arg0
            INF = Arg1
            SMIQ = SMIC /* \_SB_.SMIC */
            Local0 = INF /* \_SB_.INF_ */
            Release (PSMX)
            Return (Local0)
        }

        Device (ACAD)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (ACST, Zero)
            Name (ACWT, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((^^PCI0.LPCB.EC0.SIMU == 0x53))
                {
                    ACST = Zero
                }
                ElseIf (ECOK)
                {
                    ACST = ^^PCI0.LPCB.EC0.ACDF /* \_SB_.PCI0.LPCB.EC0_.ACDF */
                }
                Else
                {
                    ACST = One
                }

                PWRS = ACST /* \_SB_.ACAD.ACST */
            }

            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                ACWT = ACST /* \_SB_.ACAD.ACST */
                If ((^^PCI0.LPCB.EC0.SIMU == 0x53))
                {
                    ACST = Zero
                }
                ElseIf (ECOK)
                {
                    ACST = ^^PCI0.LPCB.EC0.ACDF /* \_SB_.PCI0.LPCB.EC0_.ACDF */
                }
                Else
                {
                    ACST = One
                }

                If (ACST)
                {
                    Local0 = One
                    ^^BAT1.BCRI = Zero
                }
                Else
                {
                    Local0 = Zero
                }

                PWRS = ACST /* \_SB_.ACAD.ACST */
                If ((ACWT != ACST))
                {
                    PNOT ()
                }

                Return (Local0)
            }
        }

        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CBTI, Zero)
            Name (PBTI, Zero)
            Name (BTIN, Zero)
            Name (BTCH, Zero)
            Name (BIFI, Zero)
            Name (SEL0, Zero)
            Name (BCRI, Zero)
            Name (PBIF, Package (0x0D)
            {
                One, 
                0x1130, 
                0x1130, 
                One, 
                0x2B5C, 
                0x012C, 
                0x84, 
                0x20, 
                0x20, 
                "BAT1      ", 
                "11        ", 
                "11        ", 
                "11        "
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x2710
            })
            Name (ERRC, Zero)
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (BTPF, Zero)
            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                BTPF = Arg0
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (ECOK)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (ECOK)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UBIF ()
                    }
                }

                Return (PBIF) /* \_SB_.BAT1.PBIF */
            }

            Name (LFCC, 0x1130)
            Method (UBIF, 0, NotSerialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (ECOK)
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Local0 = ^^PCI0.LPCB.EC0.BTDC /* \_SB_.PCI0.LPCB.EC0_.BTDC */
                    Local1 = ^^PCI0.LPCB.EC0.LFCC /* \_SB_.PCI0.LPCB.EC0_.LFCC */
                    Local2 = ^^PCI0.LPCB.EC0.BTDV /* \_SB_.PCI0.LPCB.EC0_.BTDV */
                    Local3 = ^^PCI0.LPCB.EC0.BTMD /* \_SB_.PCI0.LPCB.EC0_.BTMD */
                    Local4 = ^^PCI0.LPCB.EC0.BTMN /* \_SB_.PCI0.LPCB.EC0_.BTMN */
                    Local5 = ^^PCI0.LPCB.EC0.BTSN /* \_SB_.PCI0.LPCB.EC0_.BTSN */
                    Local6 = ^^PCI0.LPCB.EC0.LION /* \_SB_.PCI0.LPCB.EC0_.LION */
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    PBIF [One] = Local0
                    PBIF [0x02] = Local1
                    PBIF [0x04] = Local2
                    LFCC = Local1
                    If ((^^PCI0.LPCB.EC0.BTMD == 0x0A))
                    {
                        Local7 = (Local1 * 0x03)
                    }
                    Else
                    {
                        Local7 = (Local1 * 0x04)
                    }

                    Local7 /= 0x64
                    PBIF [0x06] = Local7
                    If (Local6)
                    {
                        PBIF [0x0B] = "NiMH"
                    }
                    Else
                    {
                        PBIF [0x0B] = "LION"
                    }

                    Local3 &= 0x0F
                    _T_0 = Local3
                    If ((_T_0 == One))
                    {
                        PBIF [0x09] = "AS10D71"
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        PBIF [0x09] = "AS10D73"
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        PBIF [0x09] = "AS10D75"
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        PBIF [0x09] = "AS10D7E"
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        PBIF [0x09] = "AS10D31"
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        PBIF [0x09] = "AS10D3E"
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        PBIF [0x09] = "AS10G3E"
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        PBIF [0x09] = "AS10D41"
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        PBIF [0x09] = "AS10D51"
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        PBIF [0x09] = "AS10D5E"
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        PBIF [0x09] = "AS10B7E"
                    }
                    ElseIf ((_T_0 == 0x0C))
                    {
                        PBIF [0x09] = "UM09B7C"
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        PBIF [0x09] = "AS09C31"
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        PBIF [0x09] = "AS10B75"
                    }
                    Else
                    {
                        PBIF [0x09] = "AS097C1"
                    }

                    _T_1 = Local4
                    If ((_T_1 == 0x03))
                    {
                        PBIF [0x0C] = "SANYO"
                    }
                    ElseIf ((_T_1 == 0x04))
                    {
                        PBIF [0x0C] = "SONY"
                    }
                    ElseIf ((_T_1 == 0x05))
                    {
                        PBIF [0x0C] = "PANASONIC"
                    }
                    ElseIf ((_T_1 == 0x06))
                    {
                        PBIF [0x0C] = "SAMSUNG"
                    }
                    ElseIf ((_T_1 == 0x07))
                    {
                        PBIF [0x0C] = "SIMPLO"
                    }
                    ElseIf ((_T_1 == 0x08))
                    {
                        PBIF [0x0C] = "MOTOROLA"
                    }
                    ElseIf ((_T_1 == 0x09))
                    {
                        PBIF [0x0C] = "CELXPERT"
                    }
                    ElseIf ((_T_1 == 0x0A))
                    {
                        PBIF [0x0C] = "LGC"
                    }
                    Else
                    {
                        PBIF [0x0C] = "UNKNOWN"
                    }

                    PBIF [0x0A] = ITOS (ToBCD (Local5))
                }
            }

            Name (RCAP, Zero)
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (ECOK)
                {
                    Local0 = ^^PCI0.LPCB.EC0.MBTS /* \_SB_.PCI0.LPCB.EC0_.MBTS */
                    If ((Local0 == Zero))
                    {
                        PBST [Zero] = Zero
                        PBST [One] = 0xFFFFFFFF
                        PBST [0x02] = 0xFFFFFFFF
                        PBST [0x03] = 0xFFFFFFFF
                        RCAP = Zero
                        Return (PBST) /* \_SB_.BAT1.PBST */
                    }

                    Local1 = ^^PCI0.LPCB.EC0.MBRM /* \_SB_.PCI0.LPCB.EC0_.MBRM */
                    PBST [0x02] = Local1
                    RCAP = Local1
                    Local3 = ^^PCI0.LPCB.EC0.MCUR /* \_SB_.PCI0.LPCB.EC0_.MCUR */
                    PBST [One] = POSW (Local3)
                    If ((Local3 != Zero))
                    {
                        If (^^PCI0.LPCB.EC0.MBPC)
                        {
                            PBST [Zero] = 0x02
                        }
                        Else
                        {
                            PBST [Zero] = One
                        }
                    }
                    Else
                    {
                        PBST [Zero] = Zero
                    }

                    PBST [0x03] = ^^PCI0.LPCB.EC0.MBVG /* \_SB_.PCI0.LPCB.EC0_.MBVG */
                }
                Else
                {
                    PBST [Zero] = Zero
                    PBST [One] = 0xFFFFFFFF
                    PBST [0x02] = 0xFFFFFFFF
                    PBST [0x03] = 0xFFFFFFFF
                    RCAP = Zero
                }

                Return (PBST) /* \_SB_.BAT1.PBST */
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (NLID)
                {
                    Return (One)
                }

                If (ECOK)
                {
                    If (^^PCI0.LPCB.EC0.LIDT)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
                Else
                {
                    Return (One)
                }
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
        }

        Scope (\_SB)
        {
            Device (WMID)
            {
                Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                Name (_UID, "APGe")  // _UID: Unique ID
                Name (WMIQ, Zero)
                Name (ERRD, 0x00010000)
                Name (BUFF, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateByteField (BUFF, Zero, BF00)
                CreateByteField (BUFF, One, BF01)
                CreateByteField (BUFF, 0x02, BF02)
                CreateByteField (BUFF, 0x03, BF03)
                Name (AADS, Buffer (0x04)
                {
                     0x00                                             /* . */
                })
                CreateField (AADS, Zero, 0x04, AS00)
                CreateField (AADS, 0x04, One, AS01)
                CreateField (AADS, 0x05, One, AS02)
                CreateField (AADS, 0x10, 0x10, AS03)
                CreateField (AADS, Zero, 0x10, AS04)
                CreateField (AADS, 0x06, One, AS06)
                CreateField (AADS, 0x07, One, AS07)
                CreateField (AADS, 0x08, One, AS08)
                Name (BAEF, Zero)
                Name (ODDP, Zero)
                Name (BADF, Zero)
                Name (BADG, Package (0x03)
                {
                    0x00010000, 
                    0x00010000, 
                    0x00010000
                })
                Name (BADS, Package (0x04)
                {
                    One, 
                    One, 
                    One, 
                    One
                })
                Name (WLDS, Zero)
                Name (WLED, Zero)
                Name (BTDS, Zero)
                Name (BTED, Zero)
                Name (BLDS, Zero)
                Name (BLED, Zero)
                Name (NTDC, Zero)
                Name (WLSD, 0x0100)
                Name (WLSE, 0x0101)
                Name (BLTD, 0x0200)
                Name (BLTE, 0x0201)
                Name (LBL0, 0x0300)
                Name (LBL1, 0x0301)
                Name (LBL2, 0x0302)
                Name (LBL3, 0x0303)
                Name (LBL4, 0x0304)
                Name (LBL5, 0x0305)
                Name (LBL6, 0x0306)
                Name (LBL7, 0x0307)
                Name (LBL8, 0x0308)
                Name (LBL9, 0x0309)
                Name (LBLA, 0x030A)
                Name (LBLB, 0x030B)
                Name (LBLC, 0x030C)
                Name (LBLD, 0x030D)
                Name (LBLE, 0x030E)
                Name (LBLF, 0x030F)
                Name (CADI, 0x0401)
                Name (CADO, 0x0400)
                Name (LOWG, 0x0501)
                Name (HIHG, 0x0502)
                Name (VAPO, 0x0600)
                Name (VAPI, 0x0601)
                Name (WBAT, 0x0700)
                Name (WADA, 0x0701)
                Name (DS3G, 0x0800)
                Name (EN3G, 0x0801)
                Name (LANI, 0x0900)
                Name (LANO, 0x0901)
                Name (MNOF, 0x0A00)
                Name (MNON, 0x0A01)
                Name (BBOF, 0x0B00)
                Name (BBON, 0x0B01)
                Name (ODDJ, 0x0C00)
                Name (BBSB, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (BBSB, Zero, 0x10, BBD0)
                CreateField (BBSB, 0x10, 0x10, BBD1)
                Name (TLS0, Zero)
                Name (TLS1, One)
                Name (TLS2, 0x02)
                Name (TLS3, 0x03)
                Name (TLS4, 0x04)
                Name (TLS5, 0x05)
                Name (TLS6, 0x06)
                Name (TLS7, 0x07)
                Name (BBPD, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateByteField (BBPD, Zero, BBP0)
                CreateByteField (BBPD, 0x04, BBP1)
                CreateByteField (BBPD, 0x08, BBP2)
                CreateByteField (BBPD, 0x0C, BBP3)
                CreateByteField (BBPD, 0x10, BBP4)
                Name (BBAR, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateByteField (BBAR, Zero, BBA0)
                CreateByteField (BBAR, 0x04, BBA1)
                Name (BCDS, Package (0x0D)
                {
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000
                })
                Name (BDDS, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (BDDS, Zero, 0x10, BDD0)
                CreateField (BDDS, 0x10, 0x10, BDD1)
                Name (DSY0, Buffer (0x28)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                Name (DSY1, Buffer (0x18)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                Name (DSY2, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                Name (DSY3, Buffer (0x18)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                Name (DSY4, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                Name (DSY5, Buffer (0x28)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateField (DSY0, Zero, 0x40, DY00)
                CreateField (DSY0, 0x40, 0x40, DY01)
                CreateField (DSY0, 0x80, 0x40, DY02)
                CreateField (DSY0, 0xC0, 0x40, DY03)
                CreateField (DSY0, 0x0100, 0x40, DY04)
                CreateField (DSY1, Zero, 0x40, DY10)
                CreateField (DSY1, 0x40, 0x40, DY11)
                CreateField (DSY1, 0x80, 0x40, DY12)
                CreateField (DSY2, Zero, 0x40, DY20)
                CreateField (DSY2, 0x40, 0x10, DY21)
                CreateField (DSY2, 0x50, 0x10, DY22)
                CreateField (DSY0, Zero, 0xC0, DSX4)
                Name (BEDS, Package (0x10)
                {
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000
                })
                Name (WIT0, Zero)
                Name (DSY6, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (DSY6, Zero, 0x20, DY60)
                CreateField (DSY6, 0x20, 0x20, DY61)
                CreateField (DSY6, 0x40, 0x20, DY62)
                CreateField (DSY6, 0x60, 0x20, DY63)
                CreateField (DSY6, 0x80, 0x20, DY64)
                Name (WPRW, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (WPRW, Zero, 0x08, WWD0)
                CreateField (WPRW, 0x08, 0x08, WWD1)
                CreateField (WPRW, 0x10, 0x08, WWD2)
                CreateField (WPRW, 0x18, 0x08, WWD3)
                CreateField (WPRW, 0x20, 0x08, WWD4)
                CreateField (WPRW, 0x28, 0x20, WWD5)
                Name (WPCI, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (WPCI, Zero, 0x08, WPIR)
                CreateField (WPCI, 0x08, 0x03, WPIF)
                CreateField (WPCI, 0x0B, 0x05, WPID)
                CreateField (WPCI, 0x10, 0x08, WPIB)
                Name (BFDS, Package (0x04)
                {
                    0x02, 
                    0x02, 
                    0x02, 
                    0x02
                })
                Name (GSTS, Zero)
                Name (BFEF, Zero)
                Name (BGEF, Zero)
                Name (BGDS, Package (0x01)
                {
                    One
                })
                Name (WERC, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (WERC, Zero, 0x40, WER0)
                CreateField (WERC, 0x40, 0x40, WER1)
                CreateWordField (WERC, 0x10, WER2)
                CreateWordField (WERC, 0x12, WER3)
                Name (SBSQ, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateField (SBSQ, Zero, 0x40, SBS0)
                CreateField (SBSQ, 0x40, 0x40, SBS1)
                Name (PRDT, Buffer (0x46)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00               /* ...... */
                })
                CreateWordField (PRDT, Zero, PRD0)
                CreateWordField (PRDT, 0x02, PRD1)
                CreateWordField (PRDT, 0x04, PRD2)
                CreateField (PRDT, 0x30, 0x40, PRD3)
                CreateField (PRDT, 0x70, 0x40, PRD4)
                CreateField (PRDT, 0xB0, 0x40, PRD5)
                CreateField (PRDT, 0xF0, 0x40, PRD6)
                Name (PSWD, Buffer (0x28)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateField (PSWD, Zero, 0x08, PWD0)
                CreateField (PSWD, 0x20, 0x40, PWD1)
                CreateField (PSWD, 0x40, 0x40, PWD2)
                CreateField (PSWD, 0x80, 0x40, PWD3)
                CreateField (PSWD, 0xC0, 0x40, PWD4)
                CreateField (PSWD, 0x0100, 0x40, PWD5)
                Method (PHSR, 2, NotSerialized)
                {
                    Acquire (PSMX, 0xFFFF)
                    BCMD = 0x91
                    DID = Arg0
                    INF = Arg1
                    SMIQ = SMIC /* \_SB_.SMIC */
                    Local0 = DID /* \_SB_.DID_ */
                    Release (PSMX)
                    Return (Local0)
                }

                Method (AAF1, 0, NotSerialized)
                {
                    AS04 = PHSR (Zero, Zero)
                    AS03 = Zero
                }

                Method (Z000, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg0 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        BUFF = PHSR (One, Zero)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BUFF = PHSR (One, One)
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Local0 = BRTN /* \BRTN */
                        BUFF = Local0
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        BUFF = PHSR (One, 0x03)
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        BUFF = PHSR (One, 0x04)
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        BUFF = PHSR (One, 0x05)
                    }
                    ElseIf ((_T_0 == 0x0C))
                    {
                        Local0 = Zero
                        If (ECOK)
                        {
                            Local0 = ^^PCI0.LPCB.EC0.LANC /* \_SB_.PCI0.LPCB.EC0_.LANC */
                        }

                        BUFF = (Local0 & One)
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        If (ECOK)
                        {
                            Local0 = ^^PCI0.LPCB.EC0.MNST /* \_SB_.PCI0.LPCB.EC0_.MNST */
                        }

                        BUFF = (Local0 & One)
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        If (ECOK)
                        {
                            Local0 = ^^PCI0.LPCB.EC0.BBST /* \_SB_.PCI0.LPCB.EC0_.BBST */
                        }
                        Else
                        {
                            Local0 = Zero
                        }

                        BUFF = (Local0 & One)
                    }
                    Else
                    {
                        BUFF = 0x00010000
                    }
                }

                Method (Z001, 2, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    BUFF = Arg1
                    If ((BF00 == Zero))
                    {
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 = One
                    }

                    Local1 = (Arg0 & 0x00FFFFFF)
                    _T_0 = Local1
                    If ((_T_0 == 0x04))
                    {
                        Local0 |= 0x10
                        PHSR (0x02, Local0)
                        BUFF = Zero
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Local0 |= 0x20
                        PHSR (0x02, Local0)
                        BUFF = Zero
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        If ((OSYS < 0x07D6))
                        {
                            Local0 = BF00 /* \_SB_.WMID.BF00 */
                            ^^PCI0.LPCB.EC0.BLVL = Local0
                            BRTN = Local0
                        }
                        ElseIf ((BOWN == Zero))
                        {
                            Local1 = BF00 /* \_SB_.WMID.BF00 */
                            Local0 = (BF00 | 0x40)
                            BUFF = PHSR (0x02, Local0)
                            BOWN = 0x02
                            Local0 = Local1
                            Sleep (0x01F4)
                            Z002 (Local0)
                            BRTN = Local0
                        }
                        Else
                        {
                            BOWN = Zero
                        }

                        BUFF = Zero
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        Local0 |= 0x80
                        PHSR (0x02, Local0)
                        BUFF = Zero
                    }
                    ElseIf ((_T_0 == 0x0F))
                    {
                        Local0 |= 0x08
                        PHSR (0x02, Local0)
                        BUFF = Zero
                    }
                    Else
                    {
                        BUFF = 0x00010000
                    }
                }

                Method (Z003, 0, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = WMIQ /* \_SB_.WMID.WMIQ */
                    WMIQ = Zero
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Return (WLSE) /* \_SB_.WMID.WLSE */
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Return (WLSD) /* \_SB_.WMID.WLSD */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Return (BLTE) /* \_SB_.WMID.BLTE */
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Return (BLTD) /* \_SB_.WMID.BLTD */
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Local1 = PHSR (One, 0x02)
                        Local1 &= 0x0F
                        LBL0 &= 0x0F00
                        LBL0 |= Local1 /* \_SB_.WMID.LBL0 */
                        Return (LBL0) /* \_SB_.WMID.LBL0 */
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        BUFF = LOWG /* \_SB_.WMID.LOWG */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        BUFF = HIHG /* \_SB_.WMID.HIHG */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        Return (VAPO) /* \_SB_.WMID.VAPO */
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        Return (VAPI) /* \_SB_.WMID.VAPI */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        BUFF = LOWG /* \_SB_.WMID.LOWG */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        BUFF = LANI /* \_SB_.WMID.LANI */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0C))
                    {
                        BUFF = LANO /* \_SB_.WMID.LANO */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        BUFF = EN3G /* \_SB_.WMID.EN3G */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        BUFF = DS3G /* \_SB_.WMID.DS3G */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0F))
                    {
                        BUFF = MNON /* \_SB_.WMID.MNON */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        BUFF = MNOF /* \_SB_.WMID.MNOF */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x11))
                    {
                        BUFF = BBON /* \_SB_.WMID.BBON */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x12))
                    {
                        BUFF = BBOF /* \_SB_.WMID.BBOF */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x13))
                    {
                        BUFF = ODDJ /* \_SB_.WMID.ODDJ */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    Else
                    {
                        Return (0xFFFF)
                    }
                }

                Method (Z004, 2, NotSerialized)
                {
                    BUFF = Arg1
                    Local0 = (BF00 & 0x0F)
                    If ((Arg0 == 0x02))
                    {
                        Local0 <<= One
                        Local0 |= 0x10
                    }

                    BBSB = PHSR (0x03, Local0)
                }

                Method (Z005, 1, NotSerialized)
                {
                    BUFF = PHSR (0x10, Arg0)
                    BBP0 = BF00 /* \_SB_.WMID.BF00 */
                    BBP1 = BF01 /* \_SB_.WMID.BF01 */
                    BBP2 = BF02 /* \_SB_.WMID.BF02 */
                    BBP3 = (BF03 & 0x0F)
                    BBP4 = ((BF03 & 0xF0) >> 0x04)
                }

                Method (Z006, 2, NotSerialized)
                {
                }

                Method (Z007, 1, NotSerialized)
                {
                    PHSR (0x04, Arg0)
                    DY00 = BLK0 /* \_SB_.BLK0 */
                    DY01 = BLK1 /* \_SB_.BLK1 */
                    DY02 = BLK2 /* \_SB_.BLK2 */
                    DY03 = BLK3 /* \_SB_.BLK3 */
                    DY04 = Zero
                }

                Method (Z008, 1, NotSerialized)
                {
                    BLK0 = DY10 /* \_SB_.WMID.DY10 */
                    If ((Arg0 == 0x03))
                    {
                        BLK1 = DY11 /* \_SB_.WMID.DY11 */
                        BLK2 = DY12 /* \_SB_.WMID.DY12 */
                    }

                    Local0 = PHSR (0x05, Arg0)
                    DY10 = BLK0 /* \_SB_.BLK0 */
                    DY11 = BLK1 /* \_SB_.BLK1 */
                    If (Local0)
                    {
                        DY12 = One
                    }
                    Else
                    {
                        DY12 = Zero
                    }
                }

                Method (Z009, 1, NotSerialized)
                {
                    BUFF = PHSR (0x06, Arg0)
                }

                Method (Z00A, 0, NotSerialized)
                {
                }

                Method (Z00B, 2, NotSerialized)
                {
                    DSY2 = DSY4 /* \_SB_.WMID.DSY4 */
                    DY22 = One
                    If ((Arg0 == 0x08)) {}
                    Else
                    {
                    }
                }

                Method (Z00C, 0, NotSerialized)
                {
                    BUFF = PHSR (0x07, Zero)
                }

                Method (Z00D, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = Arg0
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Local0 = ^^BAT1._STA ()
                        If ((Local0 & 0x10))
                        {
                            BUFF = Zero
                        }
                        Else
                        {
                            BUFF = 0x00020000
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BUFF = 0x00010000
                    }
                    Else
                    {
                        BUFF = 0x00010000
                    }
                }

                Method (Z00E, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.MTMP /* \_SB_.PCI0.LPCB.EC0_.MTMP */
                        Local1 = ^^PCI0.LPCB.EC0.ATMP /* \_SB_.PCI0.LPCB.EC0_.ATMP */
                    }
                    Else
                    {
                        Local0 = 0x1388
                        Local1 = 0x1388
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00G, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.MCUR /* \_SB_.PCI0.LPCB.EC0_.MCUR */
                        Local1 = ^^PCI0.LPCB.EC0.ABCR /* \_SB_.PCI0.LPCB.EC0_.ABCR */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00H, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.MBVG /* \_SB_.PCI0.LPCB.EC0_.MBVG */
                        Local1 = ^^PCI0.LPCB.EC0.ABVG /* \_SB_.PCI0.LPCB.EC0_.ABVG */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00I, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.MBRM /* \_SB_.PCI0.LPCB.EC0_.MBRM */
                        Local1 = ^^PCI0.LPCB.EC0.ABRM /* \_SB_.PCI0.LPCB.EC0_.ABRM */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00J, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.LFCC /* \_SB_.PCI0.LPCB.EC0_.LFCC */
                        Local1 = ^^PCI0.LPCB.EC0.AFCC /* \_SB_.PCI0.LPCB.EC0_.AFCC */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00K, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.MCYC /* \_SB_.PCI0.LPCB.EC0_.MCYC */
                        Local1 = ^^PCI0.LPCB.EC0.ACYC /* \_SB_.PCI0.LPCB.EC0_.ACYC */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00L, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.BTDC /* \_SB_.PCI0.LPCB.EC0_.BTDC */
                        Local1 = ^^PCI0.LPCB.EC0.ABDC /* \_SB_.PCI0.LPCB.EC0_.ABDC */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00M, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.BTDV /* \_SB_.PCI0.LPCB.EC0_.BTDV */
                        Local1 = ^^PCI0.LPCB.EC0.ABDV /* \_SB_.PCI0.LPCB.EC0_.ABDV */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00N, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.MDAT /* \_SB_.PCI0.LPCB.EC0_.MDAT */
                        Local1 = ^^PCI0.LPCB.EC0.ADAT /* \_SB_.PCI0.LPCB.EC0_.ADAT */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00O, 1, NotSerialized)
                {
                    If (ECOK)
                    {
                        Local0 = ^^PCI0.LPCB.EC0.BTSN /* \_SB_.PCI0.LPCB.EC0_.BTSN */
                        Local1 = ^^PCI0.LPCB.EC0.ABSN /* \_SB_.PCI0.LPCB.EC0_.ABSN */
                    }
                    Else
                    {
                        Local0 = Zero
                        Local1 = Zero
                    }

                    Z00F (Arg0, Local0, Local1)
                }

                Method (Z00P, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    BBAR = Arg0
                    Local0 = (BBA1 & 0xFF)
                    Local1 = (BBA0 & 0xFF)
                    _T_0 = Local1
                    If ((_T_0 == 0x03))
                    {
                        BUFF = 0x02
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        Z00E (Local0)
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        Z00H (Local0)
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        Z00G (Local0)
                    }
                    ElseIf ((_T_0 == 0x0F))
                    {
                        Z00I (Local0)
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        Z00J (Local0)
                    }
                    ElseIf ((_T_0 == 0x17))
                    {
                        Z00K (Local0)
                    }
                    ElseIf ((_T_0 == 0x18))
                    {
                        Z00L (Local0)
                    }
                    ElseIf ((_T_0 == 0x19))
                    {
                        Z00M (Local0)
                    }
                    ElseIf ((_T_0 == 0x1B))
                    {
                        Z00N (Local0)
                    }
                    ElseIf ((_T_0 == 0x1C))
                    {
                        Z00O (Local0)
                    }
                    Else
                    {
                        BUFF = 0x00010000
                    }
                }

                Method (Z00F, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = Arg0
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Local2 = ^^BAT1._STA ()
                        If ((Local2 & 0x10))
                        {
                            Local3 = Arg1
                        }
                        Else
                        {
                            Local3 = 0xFFFF
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Local2 = ^^BAT1._STA ()
                        If ((Local2 & 0x10))
                        {
                            Local3 = Arg2
                        }
                        Else
                        {
                            Local3 = 0xFFFF
                        }
                    }
                    Else
                    {
                        Local3 = Arg1
                    }

                    If ((Local3 == 0xFFFF))
                    {
                        BUFF = 0x00020000
                    }
                    Else
                    {
                        BEDS [One] = Local3
                        BUFF = DerefOf (BEDS [One])
                    }
                }

                Method (Z00Q, 1, NotSerialized)
                {
                    Local0 = (Arg0 & One)
                    If ((Local0 <= One))
                    {
                        BUFF = PHSR (0x08, Arg0)
                    }
                    Else
                    {
                        BUFF = 0x02
                    }
                }

                Method (Z00R, 1, NotSerialized)
                {
                    BUFF = PHSR (0x09, Arg0)
                }

                Method (Z00S, 1, NotSerialized)
                {
                    Local0 = (Arg0 & One)
                    If ((Local0 <= One))
                    {
                        BUFF = PHSR (0x0A, Arg0)
                    }
                    Else
                    {
                        BUFF = 0x02
                    }
                }

                Method (Z00T, 1, NotSerialized)
                {
                    BUFF = PHSR (0x0B, Arg0)
                }

                Method (Z00U, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 == One))
                    {
                        PHSR (0x0D, Local0)
                    }

                    BUFF = Zero
                }

                Method (Z00V, 1, NotSerialized)
                {
                    BUFF = PHSR (0x0E, Arg0)
                }

                Method (Z00W, 0, NotSerialized)
                {
                    BUFF = PHSR (0x0F, Zero)
                }

                Method (Z002, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 > BRTN))
                    {
                        If (((SGST == 0x02) || (SGST == Zero)))
                        {
                            Notify (^^PCI0.GFX0.DD02, 0x86) // Device-Specific
                        }
                        Else
                        {
                            Notify (^^PCI0.P0P2.VGA.LCD, 0x86) // Device-Specific
                        }
                    }
                    ElseIf ((Local0 < BRTN))
                    {
                        If (((SGST == 0x02) || (SGST == Zero)))
                        {
                            Notify (^^PCI0.GFX0.DD02, 0x87) // Device-Specific
                        }
                        Else
                        {
                            Notify (^^PCI0.P0P2.VGA.LCD, 0x87) // Device-Specific
                        }
                    }
                }

                Name (_WDG, Buffer (0x0168)
                {
                    /* 0000 */  0x09, 0x4E, 0x76, 0x95, 0x56, 0xFB, 0x83, 0x4E,  /* .Nv.V..N */
                    /* 0008 */  0xB3, 0x1A, 0x37, 0x76, 0x1F, 0x60, 0x99, 0x4A,  /* ..7v.`.J */
                    /* 0010 */  0x41, 0x41, 0x01, 0x01, 0x58, 0xF2, 0xF4, 0x6A,  /* AA..X..j */
                    /* 0018 */  0x01, 0xB4, 0xFD, 0x42, 0xBE, 0x91, 0x3D, 0x4A,  /* ...B..=J */
                    /* 0020 */  0xC2, 0xD7, 0xC0, 0xD3, 0x42, 0x41, 0x01, 0x02,  /* ....BA.. */
                    /* 0028 */  0xAC, 0x61, 0x1A, 0xCC, 0x56, 0x42, 0xA3, 0x41,  /* .a..VB.A */
                    /* 0030 */  0xB9, 0xE0, 0x05, 0xA4, 0x45, 0xAD, 0xE2, 0xF5,  /* ....E... */
                    /* 0038 */  0x80, 0x00, 0x01, 0x08, 0x53, 0x44, 0x8C, 0xE7,  /* ....SD.. */
                    /* 0040 */  0x27, 0x02, 0x61, 0x48, 0x9E, 0xDE, 0xF5, 0x60,  /* '.aH...` */
                    /* 0048 */  0x0B, 0x4A, 0x3D, 0x39, 0x42, 0x42, 0x01, 0x02,  /* .J=9BB.. */
                    /* 0050 */  0x7B, 0x4F, 0xE0, 0xAA, 0xC5, 0xB3, 0x65, 0x48,  /* {O....eH */
                    /* 0058 */  0x95, 0xD6, 0x9F, 0xAC, 0x7F, 0xF3, 0xE9, 0x2B,  /* .......+ */
                    /* 0060 */  0x42, 0x43, 0x01, 0x02, 0x79, 0x4C, 0xF9, 0xCF,  /* BC..yL.. */
                    /* 0068 */  0x77, 0x6C, 0xF7, 0x4A, 0xAC, 0x56, 0x7D, 0xD0,  /* wl.J.V}. */
                    /* 0070 */  0xCE, 0x01, 0xC9, 0x97, 0x42, 0x44, 0x01, 0x02,  /* ....BD.. */
                    /* 0078 */  0xC5, 0x2E, 0x77, 0x79, 0xB1, 0x04, 0xFD, 0x4B,  /* ..wy...K */
                    /* 0080 */  0x84, 0x3C, 0x61, 0xE7, 0xF7, 0x7B, 0x6C, 0xC9,  /* .<a..{l. */
                    /* 0088 */  0x42, 0x45, 0x01, 0x02, 0xB7, 0xA0, 0xC9, 0xA7,  /* BE...... */
                    /* 0090 */  0x9D, 0x4C, 0x72, 0x4C, 0x83, 0xBB, 0x53, 0xA3,  /* .LrL..S. */
                    /* 0098 */  0x45, 0x91, 0x71, 0xDF, 0x42, 0x46, 0x01, 0x02,  /* E.q.BF.. */
                    /* 00A0 */  0x4F, 0x06, 0x3A, 0x65, 0x3A, 0xA2, 0x5F, 0x48,  /* O.:e:._H */
                    /* 00A8 */  0xB3, 0xD9, 0x13, 0xF6, 0x53, 0x2A, 0x01, 0x82,  /* ....S*.. */
                    /* 00B0 */  0x42, 0x47, 0x01, 0x02, 0xA7, 0xB1, 0x85, 0xDB,  /* BG...... */
                    /* 00B8 */  0x9A, 0x06, 0xBB, 0x4A, 0xA2, 0xB5, 0xD1, 0x86,  /* ...J.... */
                    /* 00C0 */  0xA2, 0x1B, 0x80, 0xF1, 0x81, 0x00, 0x01, 0x08,  /* ........ */
                    /* 00C8 */  0x91, 0x6B, 0x91, 0x36, 0x64, 0x1A, 0x83, 0x45,  /* .k.6d..E */
                    /* 00D0 */  0x84, 0xD0, 0x53, 0x83, 0x0F, 0xB9, 0x10, 0x8D,  /* ..S..... */
                    /* 00D8 */  0x82, 0x00, 0x01, 0x08, 0x45, 0xDD, 0x23, 0x59,  /* ....E.#Y */
                    /* 00E0 */  0x80, 0x04, 0xD5, 0x4E, 0xB6, 0x1A, 0xC9, 0xEC,  /* ...N.... */
                    /* 00E8 */  0x6C, 0x90, 0xE2, 0x6A, 0x42, 0x48, 0x01, 0x02,  /* l..jBH.. */
                    /* 00F0 */  0x97, 0x13, 0xAA, 0xFA, 0x88, 0x11, 0x8F, 0x44,  /* .......D */
                    /* 00F8 */  0x85, 0x16, 0x9A, 0x07, 0x98, 0x7D, 0xD3, 0x8A,  /* .....}.. */
                    /* 0100 */  0x42, 0x49, 0x01, 0x02, 0x66, 0x56, 0x5F, 0xF7,  /* BI..fV_. */
                    /* 0108 */  0xB3, 0xB8, 0x5D, 0x4A, 0xA9, 0x1C, 0x74, 0x88,  /* ..]J..t. */
                    /* 0110 */  0xF6, 0x2E, 0x56, 0x37, 0x42, 0x4B, 0x01, 0x02,  /* ..V7BK.. */
                    /* 0118 */  0xDA, 0xBB, 0x1D, 0xFE, 0x14, 0x30, 0x56, 0x48,  /* .....0VH */
                    /* 0120 */  0x87, 0x0C, 0x5B, 0x3A, 0x74, 0x4B, 0xF3, 0x41,  /* ..[:tK.A */
                    /* 0128 */  0x42, 0x4C, 0x01, 0x02, 0x5E, 0xA1, 0x6A, 0x67,  /* BL..^.jg */
                    /* 0130 */  0x47, 0x6A, 0x9F, 0x4D, 0xA2, 0xCC, 0x1E, 0x6D,  /* Gj.M...m */
                    /* 0138 */  0x18, 0xD1, 0x40, 0x26, 0xBC, 0x00, 0x01, 0x08,  /* ..@&.... */
                    /* 0140 */  0xEA, 0x69, 0xEF, 0x61, 0x5C, 0x86, 0xC3, 0x4B,  /* .i.a\..K */
                    /* 0148 */  0xA5, 0x02, 0xA0, 0xDE, 0xBA, 0x0C, 0xB5, 0x31,  /* .......1 */
                    /* 0150 */  0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  /* AA..!... */
                    /* 0158 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  /* f....... */
                    /* 0160 */  0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00   /* ..).AB.. */
                })
                Method (WQAA, 1, NotSerialized)
                {
                    AAF1 ()
                    BUFF = AADS /* \_SB_.WMID.AADS */
                    Return (BUFF) /* \_SB_.WMID.BUFF */
                }

                Method (WMBA, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Z001 (Arg1, Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Z001 (Arg1, Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        Z001 (Arg1, Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        BUFF = Arg2
                        If (BF00)
                        {
                            BAEF = One
                        }
                        Else
                        {
                            BAEF = Zero
                        }

                        BUFF = Zero
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        Z001 (Arg1, Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        Z000 (Arg1)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0F))
                    {
                        Z001 (Arg1, Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        BUFF = Arg2
                        If (BF00)
                        {
                            ODDP = One
                        }
                        Else
                        {
                            ODDP = Zero
                        }

                        BUFF = Zero
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x11))
                    {
                        BUFF = Zero
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                {
                    If ((Arg0 == 0xBC))
                    {
                        Return (WEDR) /* \_SB_.WMID.WEDR */
                    }
                    ElseIf ((Arg0 == 0x81))
                    {
                        Return (Z003 ())
                    }
                    ElseIf (((BAEF == One) || (ODDP == One)))
                    {
                        If (((Arg0 == 0x80) || (Arg0 == 0x82)))
                        {
                            Return (Z003 ())
                        }
                    }

                    Return (0xFFFF)
                }

                Method (WMBB, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((Match (Package (0x02)
                                    {
                                        One, 
                                        0x02
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        Z004 (Arg1, Arg2)
                        BUFF = BBSB /* \_SB_.WMID.BBSB */
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    Else
                    {
                        BUFF = 0x1000
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                }

                Method (WMBC, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Z006 (Arg1, Arg2)
                    If ((Arg1 == 0x05))
                    {
                        BUFF = PHSR (One, 0xD0)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }

                    If ((Arg1 == 0x0E))
                    {
                        _T_0 = Arg2
                        If ((_T_0 == Zero))
                        {
                            PHSR (0x1D, Zero)
                        }
                        ElseIf ((_T_0 == One))
                        {
                            PHSR (0x1D, One)
                        }

                        BUFF = Zero
                        Sleep (0x012C)
                        Notify (^^PCI0.SAT0, One) // Device Check
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }

                    If ((Arg1 < 0x0A))
                    {
                        Local0 = (Arg1 - One)
                        BUFF = DerefOf (BCDS [(Arg1 - One)])
                    }
                    Else
                    {
                        BUFF = (DerefOf (BCDS [(Arg1 - 0x0A)]) >> 0x10)
                    }

                    Return (BUFF) /* \_SB_.WMID.BUFF */
                }

                Method (WMBD, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        BUFF = Arg2
                        Z007 (BF00)
                        Return (DSY0) /* \_SB_.WMID.DSY0 */
                    }
                    ElseIf ((Match (Package (0x02)
                                    {
                                        0x02, 
                                        0x03
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        If ((Arg1 == 0x02))
                        {
                            DY10 = Arg2
                        }
                        Else
                        {
                            DSY1 = Arg2
                        }

                        Z008 (Arg1)
                        Return (DSY1) /* \_SB_.WMID.DSY1 */
                    }
                    ElseIf ((Match (Package (0x02)
                                    {
                                        0x04, 
                                        0x05
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        Local0 = Arg1
                        If ((Local0 == 0x04))
                        {
                            BUFF = Arg2
                            If ((BF00 == One))
                            {
                                Local0 |= 0x10
                            }
                        }

                        Z009 (Local0)
                        If ((BF01 != Zero))
                        {
                            If ((Arg1 == 0x04))
                            {
                                BUFF = One
                            }
                        }

                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        Local0 = \_TZ.THRM._TMP ()
                        Local0 /= 0x0A
                        BCDS [0x0B] = Local0
                        BUFF = DerefOf (BCDS [0x0B])
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        Z00C ()
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        BBAR = Arg2
                        Local1 = ((BBA1 & 0x0F) << 0x04)
                        Local1 |= (BBA0 & 0x0F)
                        Z005 (Local1)
                        Return (BBPD) /* \_SB_.WMID.BBPD */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (WMBE, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Z00D (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Z00E (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Z00H (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Z00G (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Z00I (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        Z00J (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        Z00K (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        Z00L (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        Z00M (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        Z00N (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        Z00O (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x11))
                    {
                        BUFF = PHSR (0x0C, Zero)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x12))
                    {
                        BUFF = PHSR (0x0C, One)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x13))
                    {
                        Z00P (Arg2)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    Else
                    {
                        BUFF = 0x00010000
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                }

                Method (WMBF, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    BUFF = Arg2
                    Local0 = ToInteger (Arg1)
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Z00Q (BF00)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Z00R (BF00)
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Z00S (BF00)
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Z00U (BF00)
                    }
                    Else
                    {
                        BF00 = 0x02
                    }

                    BF01 = Zero
                    BF02 = Zero
                    BF03 = Zero
                    Return (BUFF) /* \_SB_.WMID.BUFF */
                }

                Method (WMBG, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        BUFF = Arg2
                        Z00V (BF00)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Z00W ()
                    }
                    Else
                    {
                        BUFF = 0x00010000
                    }

                    BF01 = Zero
                    BF02 = Zero
                    BF03 = Zero
                    Return (BUFF) /* \_SB_.WMID.BUFF */
                }

                Method (WMBH, 3, NotSerialized)
                {
                    Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        BUFF = Arg2
                        Local1 = (BF00 & 0x0F)
                        _T_1 = Local1
                        If ((_T_1 == Zero))
                        {
                            BUFF = PHSR (0x1A, One)
                        }
                        ElseIf ((_T_1 == One))
                        {
                            BUFF = PHSR (0x1B, One)
                        }
                        Else
                        {
                            BUFF = 0x00010000
                        }

                        BF00 = ((BF00 & One) ^ One)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        PSWD = Arg2
                        Local1 = PWD0 /* \_SB_.WMID.PWD0 */
                        BLK0 = PWD1 /* \_SB_.WMID.PWD1 */
                        BLK1 = PWD2 /* \_SB_.WMID.PWD2 */
                        CreateByteField (PSWD, 0x08, PSB1)
                        _T_2 = Local1
                        If ((_T_2 == Zero))
                        {
                            If (PSB1)
                            {
                                BUFF = PHSR (0x1A, 0x02)
                            }
                            Else
                            {
                                BUFF = PHSR (0x1A, Zero)
                            }
                        }
                        ElseIf ((_T_2 == One))
                        {
                            If (PSB1)
                            {
                                BUFF = PHSR (0x1B, 0x02)
                            }
                            Else
                            {
                                BUFF = PHSR (0x1B, Zero)
                            }
                        }
                        Else
                        {
                            BUFF = 0x00010000
                        }

                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        PSWD = Arg2
                        Local1 = PWD0 /* \_SB_.WMID.PWD0 */
                        BLK0 = PWD1 /* \_SB_.WMID.PWD1 */
                        BLK1 = PWD2 /* \_SB_.WMID.PWD2 */
                        _T_3 = Local1
                        If ((_T_3 == Zero))
                        {
                            BUFF = PHSR (0x1A, 0x03)
                        }
                        ElseIf ((_T_3 == One))
                        {
                            BUFF = PHSR (0x1B, 0x03)
                        }
                        Else
                        {
                            BUFF = 0x00010000
                        }

                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        PHSR (0x11, Zero)
                        WER0 = BLK0 /* \_SB_.BLK0 */
                        WER1 = BLK1 /* \_SB_.BLK1 */
                        WER3 = Zero
                        Return (WERC) /* \_SB_.WMID.WERC */
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        SBSQ = Arg2
                        BLK0 = SBS0 /* \_SB_.WMID.SBS0 */
                        BLK1 = SBS1 /* \_SB_.WMID.SBS1 */
                        PHSR (0x11, One)
                        BUFF = Zero
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        BUFF = PHSR (0x11, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    Else
                    {
                        BUFF = 0x00010000
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                }

                Name (RBUF, Buffer (0x0408)
                {
                     0x00, 0x00                                       /* .. */
                })
                CreateByteField (RBUF, Zero, RB00)
                CreateByteField (RBUF, One, RB01)
                CreateByteField (RBUF, 0x02, RB02)
                CreateByteField (RBUF, 0x03, RB03)
                CreateByteField (RBUF, 0x04, RB04)
                CreateByteField (RBUF, 0x05, RB05)
                CreateByteField (RBUF, 0x06, RB06)
                CreateByteField (RBUF, 0x07, RB07)
                CreateWordField (RBUF, 0x04, RBW0)
                CreateDWordField (RBUF, Zero, RBD0)
                CreateDWordField (RBUF, 0x04, RBD1)
                CreateField (RBUF, Zero, 0x40, RBQ0)
                CreateField (RBUF, Zero, 0xC0, RB24)
                CreateField (RBUF, Zero, 0x0180, RB48)
                CreateField (RBUF, Zero, 0x0240, RB72)
                CreateField (RBUF, 0x20, 0x10, RBS0)
                CreateField (RBUF, 0x30, 0x40, RBS1)
                CreateField (RBUF, 0x70, 0x40, RBS2)
                CreateField (RBUF, 0xB0, 0x40, RBS3)
                CreateField (RBUF, 0xF0, 0x40, RBS4)
                CreateField (RBUF, 0x0130, 0x40, RBS5)
                CreateField (RBUF, 0x0170, 0x0140, RBS6)
                CreateField (RBUF, 0x30, 0x0800, RBT0)
                CreateField (RBUF, 0x20, 0x40, RBU0)
                CreateField (RBUF, 0x60, 0x40, RBU1)
                CreateField (RBUF, Zero, 0x02C0, RB88)
                CreateField (RBUF, Zero, 0x1040, R520)
                CreateField (RBUF, Zero, 0x2040, R132)
                Name (IBUF, Buffer (0x020E)
                {
                     0x00, 0x00                                       /* .. */
                })
                CreateByteField (IBUF, Zero, IB00)
                CreateByteField (IBUF, One, IB01)
                CreateByteField (IBUF, 0x02, IB02)
                CreateByteField (IBUF, 0x03, IB03)
                CreateByteField (IBUF, 0x04, IB04)
                CreateByteField (IBUF, 0x05, IB05)
                CreateByteField (IBUF, 0x06, IB06)
                CreateByteField (IBUF, 0x07, IB07)
                CreateWordField (IBUF, Zero, IBW0)
                CreateWordField (IBUF, 0x08, IBW8)
                CreateWordField (IBUF, 0x0A, IBWA)
                CreateWordField (IBUF, 0x0C, IBWB)
                CreateWordField (IBUF, 0x14, IBWC)
                CreateDWordField (IBUF, Zero, IBD0)
                CreateDWordField (IBUF, 0x04, IBD1)
                CreateField (IBUF, Zero, 0x70, IBS0)
                CreateField (IBUF, 0x10, 0x60, IBS1)
                CreateField (IBUF, 0x10, 0x30, IBS2)
                CreateField (IBUF, 0x40, 0x20, IBS3)
                CreateField (IBUF, Zero, 0x60, IBT0)
                CreateField (IBUF, 0x10, 0x30, IBTX)
                CreateField (IBUF, 0x10, 0x40, IBT1)
                CreateField (IBUF, 0x50, 0x10, IBT2)
                CreateField (IBUF, 0x50, 0x08, IBT3)
                CreateField (IBUF, 0x10, 0x30, IBU0)
                CreateField (IBUF, 0x60, 0x40, IBTT)
                CreateField (IBUF, 0x98, 0x10, IBTU)
                CreateField (IBUF, 0x60, 0x30, IBV0)
                CreateField (IBUF, 0x60, 0x60, IBV1)
                CreateField (IBUF, 0x60, 0x30, IBVA)
                CreateField (IBUF, 0x90, 0x20, IBVB)
                CreateField (IBUF, 0x60, 0x40, IBV2)
                CreateField (IBUF, 0xB0, 0x60, IBV3)
                CreateField (IBUF, 0xB0, 0x30, IBVC)
                CreateField (IBUF, 0xE0, 0x20, IBVD)
                CreateField (IBUF, 0xB0, 0x40, IBVE)
                CreateField (IBUF, 0xB0, 0x40, IBVF)
                CreateField (IBUF, 0xA0, 0x08, IBVG)
                CreateField (IBUF, 0x70, 0x0800, IBV4)
                CreateField (IBUF, 0x90, 0x40, IBX0)
                CreateField (IBUF, 0xD0, 0x40, IBX1)
                CreateField (IBUF, Zero, 0xC0, IB24)
                CreateField (IBUF, Zero, 0x0100, IB32)
                CreateField (IBUF, Zero, 0x0118, IB35)
                CreateField (IBUF, Zero, 0x0180, IB48)
                CreateField (IBUF, Zero, 0x0240, IB72)
                CreateField (IBUF, Zero, 0x02C0, IB88)
                CreateField (IBUF, Zero, 0x1040, I520)
                Name (UBUF, Buffer (0x0C)
                {
                     0x00, 0x00                                       /* .. */
                })
                CreateField (UBUF, Zero, 0x30, UBU0)
                CreateField (UBUF, 0x30, 0x20, UBU1)
                Name (VBUF, Buffer (0x08)
                {
                     0x00, 0x00                                       /* .. */
                })
                CreateField (VBUF, Zero, 0x40, VBU0)
                Name (UHDD, Buffer (0x06)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (UODD, Buffer (0x06)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (ULAN, Buffer (0x06)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (URMV, Buffer (0x06)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (WBUF, Buffer (0x20)
                {
                     0x00, 0x00                                       /* .. */
                })
                CreateDWordField (WBUF, Zero, WBD0)
                CreateField (WBUF, Zero, 0x40, WBQ0)
                CreateField (WBUF, 0x40, 0x40, WBQ1)
                CreateField (WBUF, 0x80, 0x40, WBQ2)
                CreateField (WBUF, 0xC0, 0x40, WBQ3)
                Name (R004, Buffer (0x04)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R008, Buffer (0x08)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R024, Buffer (0x18)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R034, Buffer (0x22)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R048, Buffer (0x30)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R072, Buffer (0x48)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R088, Buffer (0x58)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R500, Buffer (0x0208)
                {
                     0x00, 0x00                                       /* .. */
                })
                Name (R100, Buffer (0x0408)
                {
                     0x00, 0x00                                       /* .. */
                })
                Method (WMBK, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    RBUF = Zero
                    IBUF = Zero
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Sleep (0xC8)
                        Debug = "WMBK Arg1=1"
                        IBUF = Arg2
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        BLK6 = IBT2 /* \_SB_.WMID.IBT2 */
                        PHSR (0x1E, IB00)
                        If ((INF == Zero))
                        {
                            RBD1 = PHSR (0x1A, One)
                            RBD1 = ((RBD1 & One) ^ One)
                            R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                            Return (R008) /* \_SB_.WMID.R008 */
                        }
                        ElseIf ((INF == One))
                        {
                            RBD1 = PHSR (0x1B, One)
                            RBD1 = ((RBD1 & One) ^ One)
                            R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                            Return (R008) /* \_SB_.WMID.R008 */
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                            Return (R008) /* \_SB_.WMID.R008 */
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=2"
                        RBD1 = PHSR (0x1F, Zero)
                        RBD0 = Zero
                        R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                        Return (R008) /* \_SB_.WMID.R008 */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=3"
                        BLK0 = Zero
                        BLK1 = Zero
                        IBUF = Arg2
                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 == Zero))
                        {
                            If ((IBWA == Zero))
                            {
                                PHSR (0x1F, One)
                                RBD0 = Zero
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                            ElseIf ((IBWA == One))
                            {
                                PHSR (0x1F, 0x02)
                                RBD0 = Zero
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                            Else
                            {
                                RBD0 = 0x03
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                        }
                        Else
                        {
                            RBD0 = 0x02
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=4"
                        PHSR (0x20, Zero)
                        WER0 = BLK0 /* \_SB_.BLK0 */
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = One
                        Local3 = Zero
                        While ((Local0 != 0x08))
                        {
                            Local1 = DerefOf (WERC [Local0])
                            If ((Local1 == Zero))
                            {
                                RBUF [0x04] = Local2
                                Local2++
                            }
                            ElseIf ((Local1 == One))
                            {
                                RBUF [0x05] = Local2
                                Local2++
                            }
                            ElseIf ((Local1 == 0x02))
                            {
                                RBUF [0x06] = Local2
                                Local2++
                            }
                            ElseIf (((Local1 >= 0x03) & (Local1 <= 0x0F)))
                            {
                                If ((Local3 == Zero))
                                {
                                    RBUF [0x07] = Local2
                                    Local2++
                                    Local3 = One
                                }
                            }
                            ElseIf ((Local1 == 0xFF))
                            {
                                Break
                            }

                            Local0++
                        }

                        R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                        Return (R008) /* \_SB_.WMID.R008 */
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=5"
                        IBUF = Arg2
                        Local0 = One
                        Local1 = 0x0A
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = 0x0A
                        Local1 = 0x0A
                        While ((Local1 != 0x0E))
                        {
                            Local3 = DerefOf (IBUF [Local1])
                            If ((Local3 < One))
                            {
                                RBD0 = 0x03
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                            ElseIf ((Local3 > 0x04))
                            {
                                RBD0 = 0x03
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }

                            Local4 = 0x0A
                            While ((Local4 != 0x0E))
                            {
                                If ((Local4 == Local1))
                                {
                                    Noop
                                }
                                ElseIf ((DerefOf (IBUF [Local4]) == Local3))
                                {
                                    RBD0 = 0x03
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }

                                Local4++
                            }

                            Local1++
                        }

                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 != Zero))
                        {
                            RBD0 = 0x02
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }

                        BLK0 = Zero
                        PHSR (0x20, Zero)
                        WER0 = BLK0 /* \_SB_.BLK0 */
                        Local0 = One
                        Local1 = 0x0A
                        Local2 = Zero
                        SBSQ = Zero
                        Local3 = Zero
                        While ((Local0 != 0x05))
                        {
                            Local1 = 0x0A
                            While ((Local1 != 0x0E))
                            {
                                If ((DerefOf (IBUF [Local1]) == Local0))
                                {
                                    Local3 = Zero
                                    If ((Local1 == 0x0A))
                                    {
                                        While ((Local3 != 0x08))
                                        {
                                            If ((DerefOf (WERC [Local3]) == Zero))
                                            {
                                                SBSQ [Local2] = DerefOf (WERC [Local3])
                                                Local2++
                                            }

                                            Local3++
                                        }
                                    }
                                    ElseIf ((Local1 == 0x0B))
                                    {
                                        While ((Local3 != 0x08))
                                        {
                                            If ((DerefOf (WERC [Local3]) == One))
                                            {
                                                SBSQ [Local2] = DerefOf (WERC [Local3])
                                                Local2++
                                            }

                                            Local3++
                                        }
                                    }
                                    ElseIf ((Local1 == 0x0C))
                                    {
                                        While ((Local3 != 0x08))
                                        {
                                            If ((DerefOf (WERC [Local3]) == 0x02))
                                            {
                                                SBSQ [Local2] = DerefOf (WERC [Local3])
                                                Local2++
                                            }

                                            Local3++
                                        }
                                    }
                                    ElseIf ((Local1 == 0x0D))
                                    {
                                        While ((Local3 != 0x08))
                                        {
                                            If (((DerefOf (WERC [Local3]) >= 0x03) & (
                                                DerefOf (WERC [Local3]) <= 0x0F)))
                                            {
                                                SBSQ [Local2] = DerefOf (WERC [Local3])
                                                Local2++
                                            }

                                            Local3++
                                        }
                                    }

                                    Local1 = 0x0E
                                }
                                Else
                                {
                                    Local1++
                                }
                            }

                            Local0++
                        }

                        If ((Local2 == 0x07))
                        {
                            SBSQ [Local2] = 0x3F
                        }

                        BLK0 = SBS0 /* \_SB_.WMID.SBS0 */
                        PHSR (0x20, One)
                        RBD0 = Zero
                        R004 = RBD0 /* \_SB_.WMID.RBD0 */
                        Return (R004) /* \_SB_.WMID.R004 */
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=6"
                        IBUF = Arg2
                        Local0 = 0x04
                        BLK0 = Zero
                        PHSR (0x20, Zero)
                        WER0 = BLK0 /* \_SB_.BLK0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        PHSR (0x1E, IB00)
                        If ((INF == 0x02))
                        {
                            Local1 = Zero
                            While ((Local1 != 0x08))
                            {
                                If ((DerefOf (WERC [Local1]) == Zero))
                                {
                                    RBUF [Local0] = One
                                    Local0++
                                }

                                Local1++
                            }

                            RBUF [Local0] = 0xFF
                            RBD0 = Zero
                        }
                        ElseIf ((INF == 0x03))
                        {
                            Local1 = Zero
                            While ((Local1 != 0x08))
                            {
                                If ((DerefOf (WERC [Local1]) == One))
                                {
                                    RBUF [Local0] = One
                                    Local0++
                                }

                                Local1++
                            }

                            RBUF [Local0] = 0xFF
                            RBD0 = Zero
                        }
                        ElseIf ((INF == 0x04))
                        {
                            Local1 = Zero
                            While ((Local1 != 0x08))
                            {
                                If ((DerefOf (WERC [Local1]) == 0x02))
                                {
                                    RBUF [Local0] = One
                                    Local0++
                                }

                                Local1++
                            }

                            RBUF [Local0] = 0xFF
                            RBD0 = Zero
                        }
                        ElseIf ((INF == 0x05))
                        {
                            Local1 = Zero
                            Local2 = Zero
                            SBSQ = Zero
                            While ((Local1 != 0x08))
                            {
                                If (((DerefOf (WERC [Local1]) >= 0x03) & (
                                    DerefOf (WERC [Local1]) <= 0x0F)))
                                {
                                    SBSQ [Local2] = DerefOf (WERC [Local1])
                                    Local2++
                                }

                                Local1++
                            }

                            SBSQ [Local2] = 0xFF
                            BLK0 = SBS0 /* \_SB_.WMID.SBS0 */
                            BLK1 = Zero
                            PHSR (0x21, Zero)
                            RBU0 = BLK1 /* \_SB_.BLK1 */
                            RBD0 = Zero
                        }
                        Else
                        {
                            RBD0 = 0x03
                        }

                        R024 = RB24 /* \_SB_.WMID.RB24 */
                        Return (R024) /* \_SB_.WMID.R024 */
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=7"
                        IBUF = Arg2
                        Local0 = 0x12
                        Local1 = 0xFF
                        Local2 = 0xFF
                        Local3 = Zero
                        Local4 = Zero
                        Local5 = Zero
                        Local0 = 0x12
                        Local5 = 0x12
                        While ((DerefOf (IBUF [Local0]) != 0xFF))
                        {
                            Local5 = 0x12
                            While ((Local5 != 0x23))
                            {
                                If ((Local5 == Local0))
                                {
                                    Noop
                                }
                                ElseIf ((DerefOf (IBUF [Local5]) == DerefOf (IBUF [Local0]
                                    )))
                                {
                                    RBD0 = 0x03
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }

                                Local5++
                            }

                            Local0++
                        }

                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 != Zero))
                        {
                            RBD0 = 0x02
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }

                        BLK1 = IBTT /* \_SB_.WMID.IBTT */
                        PHSR (0x1E, IBT3)
                        If ((INF == 0x02))
                        {
                            If ((DerefOf (IBUF [0x12]) == One))
                            {
                                If ((DerefOf (IBUF [0x13]) == 0xFF))
                                {
                                    RBD0 = Zero
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                                Else
                                {
                                    RBD0 = 0x03
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                            }
                            Else
                            {
                                RBD0 = 0x03
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                        }
                        ElseIf ((INF == 0x03))
                        {
                            If ((DerefOf (IBUF [0x12]) == One))
                            {
                                If ((DerefOf (IBUF [0x13]) == 0xFF))
                                {
                                    RBD0 = Zero
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                                Else
                                {
                                    RBD0 = 0x03
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                            }
                            Else
                            {
                                RBD0 = 0x03
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                        }
                        ElseIf ((INF == 0x04))
                        {
                            If ((DerefOf (IBUF [0x12]) == One))
                            {
                                If ((DerefOf (IBUF [0x13]) == 0xFF))
                                {
                                    RBD0 = Zero
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                                Else
                                {
                                    RBD0 = 0x03
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                            }
                            Else
                            {
                                RBD0 = 0x03
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                        }
                        ElseIf ((INF == 0x05))
                        {
                            BLK0 = IBX0 /* \_SB_.WMID.IBX0 */
                            PHSR (0x22, Zero)
                            RBD0 = Zero
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=8"
                        IBUF = Arg2
                        BLK0 = Zero
                        BLK1 = Zero
                        BLK2 = Zero
                        BLK3 = Zero
                        BLK4 = Zero
                        BLK5 = Zero
                        RB00 = IBW8 /* \_SB_.WMID.IBW8 */
                        IBW8 = Zero
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        PHSR (0x1E, IB00)
                        If ((INF == 0x02))
                        {
                            PHSR (0x23, RB00)
                            If ((INF == One))
                            {
                                RBD0 = 0x03
                                R088 = RB88 /* \_SB_.WMID.RB88 */
                                Return (R088) /* \_SB_.WMID.R088 */
                            }
                        }
                        ElseIf ((INF == 0x03))
                        {
                            RB00 |= 0x10
                            PHSR (0x23, RB00)
                            If ((INF == One))
                            {
                                RBD0 = 0x03
                                R088 = RB88 /* \_SB_.WMID.RB88 */
                                Return (R088) /* \_SB_.WMID.R088 */
                            }
                        }
                        ElseIf ((INF == 0x05))
                        {
                            RB00 |= 0x20
                            PHSR (0x23, RB00)
                            If ((INF == One))
                            {
                                RBD0 = 0x03
                                R088 = RB88 /* \_SB_.WMID.RB88 */
                                Return (R088) /* \_SB_.WMID.R088 */
                            }
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R088 = RB88 /* \_SB_.WMID.RB88 */
                            Return (R088) /* \_SB_.WMID.R088 */
                        }

                        RBUF = Zero
                        RBS1 = BLK0 /* \_SB_.BLK0 */
                        RBS2 = BLK1 /* \_SB_.BLK1 */
                        RBS3 = BLK2 /* \_SB_.BLK2 */
                        RBS4 = BLK3 /* \_SB_.BLK3 */
                        RBS5 = BLK4 /* \_SB_.BLK4 */
                        RBS6 = BLK5 /* \_SB_.BLK5 */
                        RBD0 = Zero
                        RBW0 = 0x50
                        R088 = RB88 /* \_SB_.WMID.RB88 */
                        Return (R088) /* \_SB_.WMID.R088 */
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=9"
                        IBUF = Arg2
                        BLK0 = Zero
                        BLK1 = Zero
                        BLK2 = Zero
                        BLK3 = Zero
                        BLK4 = Zero
                        RB00 = IBW8 /* \_SB_.WMID.IBW8 */
                        IBW8 = Zero
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        PHSR (0x1E, IB00)
                        If ((INF == 0x02))
                        {
                            PHSR (0x24, RB00)
                            If ((INF == One))
                            {
                                RBD0 = 0x03
                                R048 = RB48 /* \_SB_.WMID.RB48 */
                                Return (R048) /* \_SB_.WMID.R048 */
                            }
                        }
                        ElseIf ((INF == 0x03))
                        {
                            RB00 |= 0x10
                            PHSR (0x24, RB00)
                            If ((INF == One))
                            {
                                RBD0 = 0x03
                                R048 = RB48 /* \_SB_.WMID.RB48 */
                                Return (R048) /* \_SB_.WMID.R048 */
                            }
                        }
                        ElseIf ((INF == 0x05))
                        {
                            RB00 |= 0x20
                            PHSR (0x24, RB00)
                            If ((INF == One))
                            {
                                RBD0 = 0x03
                                R048 = RB48 /* \_SB_.WMID.RB48 */
                                Return (R048) /* \_SB_.WMID.R048 */
                            }
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R048 = RB48 /* \_SB_.WMID.RB48 */
                            Return (R048) /* \_SB_.WMID.R048 */
                        }

                        RBUF = Zero
                        RBS1 = BLK0 /* \_SB_.BLK0 */
                        RBS2 = BLK1 /* \_SB_.BLK1 */
                        RBS3 = BLK2 /* \_SB_.BLK2 */
                        RBS4 = BLK3 /* \_SB_.BLK3 */
                        RBS5 = BLK4 /* \_SB_.BLK4 */
                        RBD0 = Zero
                        RBW0 = 0x28
                        R048 = RB48 /* \_SB_.WMID.RB48 */
                        Return (R048) /* \_SB_.WMID.R048 */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=10"
                        Local0 = Zero
                        Local1 = 0x04
                        IB32 = ^^PCI0.LPCB.EC0.ATAG /* \_SB_.PCI0.LPCB.EC0_.ATAG */
                        If (((DerefOf (IBUF [Local0]) == Zero) || (DerefOf (
                            IBUF [Local0]) == 0xFF)))
                        {
                            RBUF [Local1] = Zero
                            RBD0 = Zero
                            R072 = RB72 /* \_SB_.WMID.RB72 */
                            Return (R072) /* \_SB_.WMID.R072 */
                        }

                        RBUF [Local1] = 0x40
                        Local1 = 0x06
                        While ((Local0 != 0x20))
                        {
                            RBUF [Local1] = DerefOf (IBUF [Local0])
                            Local1++
                            RBUF [Local1] = Zero
                            Local1++
                            Local0++
                        }

                        RBD0 = Zero
                        R072 = RB72 /* \_SB_.WMID.RB72 */
                        Return (R072) /* \_SB_.WMID.R072 */
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=11"
                        IBUF = Arg2
                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 != Zero))
                        {
                            RBD0 = 0x02
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }

                        WBUF = Zero
                        Local0 = Zero
                        Local1 = 0x0C
                        Local2 = Zero
                        While ((Local0 != IBWA))
                        {
                            WBUF [Local2] = DerefOf (IBUF [Local1])
                            Local1++
                            Local1++
                            Local2++
                            Local0++
                            Local0++
                        }

                        While ((Local2 != 0x20))
                        {
                            WBUF [Local2] = Zero
                            Local2++
                        }

                        BLK0 = WBQ0 /* \_SB_.WMID.WBQ0 */
                        BLK1 = WBQ1 /* \_SB_.WMID.WBQ1 */
                        BLK2 = WBQ2 /* \_SB_.WMID.WBQ2 */
                        BLK3 = WBQ3 /* \_SB_.WMID.WBQ3 */
                        PHSR (0x25, Zero)
                        RBD0 = Zero
                        R004 = RBD0 /* \_SB_.WMID.RBD0 */
                        Return (R004) /* \_SB_.WMID.R004 */
                    }
                    ElseIf ((_T_0 == 0x0C))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=12"
                        RBD1 = PHSR (0x11, 0x02)
                        R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                        Return (R008) /* \_SB_.WMID.R008 */
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=13"
                        IBUF = Arg2
                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 != Zero))
                        {
                            RBD0 = 0x02
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }

                        PHSR (0x26, Zero)
                        RBD0 = Zero
                        R004 = RBD0 /* \_SB_.WMID.RBD0 */
                        Return (R004) /* \_SB_.WMID.R004 */
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        Sleep (0xC8)
                        Debug = "WMBI Arg1=14"
                        RBD0 = One
                        R004 = RBD0 /* \_SB_.WMID.RBD0 */
                        Return (R004) /* \_SB_.WMID.R004 */
                    }
                }

                Method (WMBL, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    RBUF = Zero
                    IBUF = Zero
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Sleep (0xC8)
                        Debug = "WMBL Arg1=1"
                        IBUF = Arg2
                        BLK1 = IBTT /* \_SB_.WMID.IBTT */
                        BLK6 = IBTU /* \_SB_.WMID.IBTU */
                        PHSR (0x1E, IBT3)
                        BLK0 = Zero
                        BLK1 = Zero
                        BLK0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        If ((INF == Zero))
                        {
                            RBD1 = PHSR (0x1A, 0x03)
                            RBD0 = Zero
                            R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                            Return (R008) /* \_SB_.WMID.R008 */
                        }
                        ElseIf ((INF == One))
                        {
                            RBD1 = PHSR (0x1B, 0x03)
                            RBD0 = Zero
                            R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                            Return (R008) /* \_SB_.WMID.R008 */
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R008 = RBQ0 /* \_SB_.WMID.RBQ0 */
                            Return (R008) /* \_SB_.WMID.R008 */
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Sleep (0xC8)
                        Debug = "WMBJ Arg1=2"
                        IBUF = Arg2
                        BLK1 = IBVE /* \_SB_.WMID.IBVE */
                        BLK6 = IBVF /* \_SB_.WMID.IBVF */
                        PHSR (0x1E, IBVG)
                        If ((INF == Zero))
                        {
                            PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                            BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                            Local0 = PHSR (0x1A, 0x03)
                            If ((Local0 != Zero))
                            {
                                RBD0 = 0x02
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }

                            BLK0 = Zero
                            BLK1 = Zero
                            BLK0 = IBWA /* \_SB_.WMID.IBWA */
                            BLK1 = IBV2 /* \_SB_.WMID.IBV2 */
                            If ((IBWA == Zero))
                            {
                                PHSR (0x1A, Zero)
                            }
                            Else
                            {
                                RBD0 = PHSR (0x1A, 0x02)
                                If (RBD0)
                                {
                                    RBD0 = One
                                    R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                    Return (R004) /* \_SB_.WMID.R004 */
                                }
                            }

                            RBD0 = Zero
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                        ElseIf ((INF == One))
                        {
                            PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                            BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                            Local0 = PHSR (0x1B, 0x03)
                            If ((Local0 != Zero))
                            {
                                RBD0 = 0x02
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }

                            BLK0 = Zero
                            BLK1 = Zero
                            BLK0 = IBWA /* \_SB_.WMID.IBWA */
                            BLK1 = IBV2 /* \_SB_.WMID.IBV2 */
                            If ((IBWA == Zero))
                            {
                                PHSR (0x1B, Zero)
                                RBD0 = Zero
                                R004 = RBD0 /* \_SB_.WMID.RBD0 */
                                Return (R004) /* \_SB_.WMID.R004 */
                            }
                            Else
                            {
                                PHSR (0x1B, 0x02)
                            }

                            RBD0 = Zero
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Sleep (0xC8)
                        Debug = "WMBJ Arg1=3"
                        IBUF = Arg2
                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 != Zero))
                        {
                            RBD0 = 0x02
                            R100 = R132 /* \_SB_.WMID.R132 */
                            Return (R100) /* \_SB_.WMID.R100 */
                        }

                        If ((IBWA == Zero))
                        {
                            BIOL = Zero
                            BIOS = Zero
                            PHSR (0x27, Zero)
                            RBW0 = BIOL /* \_SB_.BIOL */
                            RBT0 = BIOS /* \_SB_.BIOS */
                            RBD0 = Zero
                            R100 = R132 /* \_SB_.WMID.R132 */
                            Return (R100) /* \_SB_.WMID.R100 */
                        }
                        ElseIf ((IBWA == One))
                        {
                            RBD0 = 0x04
                            R100 = R132 /* \_SB_.WMID.R132 */
                            Return (R100) /* \_SB_.WMID.R100 */
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R100 = R132 /* \_SB_.WMID.R132 */
                            Return (R100) /* \_SB_.WMID.R100 */
                        }
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Sleep (0xC8)
                        Debug = "WMBJ Arg1=4"
                        IBUF = Arg2
                        PAR0 = IBW0 /* \_SB_.WMID.IBW0 */
                        BLK1 = IBT1 /* \_SB_.WMID.IBT1 */
                        Local0 = PHSR (0x1B, 0x03)
                        If ((Local0 != Zero))
                        {
                            RBD0 = 0x02
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }

                        If ((IBWA == Zero))
                        {
                            BIOL = IBWB /* \_SB_.WMID.IBWB */
                            BIOS = IBV4 /* \_SB_.WMID.IBV4 */
                            PHSR (0x27, One)
                            RBD0 = Zero
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                        ElseIf ((IBWA == One))
                        {
                            RBD0 = 0x04
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }
                        Else
                        {
                            RBD0 = 0x03
                            R004 = RBD0 /* \_SB_.WMID.RBD0 */
                            Return (R004) /* \_SB_.WMID.R004 */
                        }

                        RBD0 = 0x04
                        R004 = RBD0 /* \_SB_.WMID.RBD0 */
                        Return (R004) /* \_SB_.WMID.R004 */
                    }
                }

                Method (WMBI, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = (Arg1 & 0x00FFFFFF)
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        BUFF = PHSR (0x12, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BLK0 = Zero
                        BLK1 = Zero
                        BLK2 = Zero
                        BLK3 = Zero
                        PHSR (0x13, 0x02)
                        PRD3 = BLK0 /* \_SB_.BLK0 */
                        PRD4 = BLK1 /* \_SB_.BLK1 */
                        PRD5 = BLK2 /* \_SB_.BLK2 */
                        PRD6 = BLK3 /* \_SB_.BLK3 */
                        PRD2 = 0x20
                        PRD0 = Zero
                        PRD1 = Zero
                        Return (PRDT) /* \_SB_.WMID.PRDT */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        BUFF = PHSR (0x14, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        BUFF = PHSR (0x15, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        BUFF = PHSR (0x16, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        BUFF = PHSR (0x17, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        BUFF = PHSR (0x18, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        BUFF = PHSR (0x19, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        BUFF = PHSR (0x1C, 0x02)
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                    Else
                    {
                        BUFF = 0x00010000
                        Return (BUFF) /* \_SB_.WMID.BUFF */
                    }
                }

                Name (WEDR, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateByteField (WEDR, Zero, WED0)
                CreateByteField (WEDR, One, WED1)
                CreateWordField (WEDR, 0x02, WED2)
                CreateByteField (WEDR, 0x04, WED4)
                CreateByteField (WEDR, 0x05, WED5)
                CreateByteField (WEDR, 0x06, WED6)
                CreateByteField (WEDR, 0x07, WED7)
                Name (WAAS, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateByteField (WAAS, Zero, WAS0)
                CreateWordField (WAAS, One, WAS1)
                CreateWordField (WAAS, 0x03, WAS3)
                CreateByteField (WAAS, 0x05, WAS5)
                CreateByteField (WAAS, 0x06, WAS6)
                CreateByteField (WAAS, 0x07, WAS7)
                CreateByteField (WAAS, Zero, WAA0)
                CreateByteField (WAAS, One, WAA1)
                CreateWordField (WAAS, 0x02, WAA2)
                CreateByteField (WAAS, 0x04, WAA4)
                Name (WASR, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateByteField (WASR, Zero, ASR0)
                CreateByteField (WASR, One, ASR1)
                CreateByteField (WASR, 0x02, ASR2)
                CreateByteField (WASR, 0x03, ASR3)
                Name (WAAG, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateByteField (WAAG, Zero, WAG0)
                CreateByteField (WAAG, One, WAG1)
                CreateWordField (WAAG, 0x02, WAG2)
                Name (WAGR, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                CreateByteField (WAGR, Zero, AGR0)
                CreateByteField (WAGR, One, AGR1)
                CreateWordField (WAGR, 0x02, AGR2)
                CreateByteField (WAGR, 0x04, AGR4)
                CreateByteField (WAGR, 0x05, AGR5)
                CreateByteField (WAGR, 0x06, AGR6)
                CreateByteField (WAGR, 0x07, AGR7)
                Name (WQAB, Buffer (0x042A)
                {
                    /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                    /* 0008 */  0x1A, 0x04, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00,  /* ....8... */
                    /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                    /* 0018 */  0x18, 0xCF, 0x87, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                    /* 0020 */  0x10, 0x07, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,  /* ..."!... */
                    /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,  /* ..,...8. */
                    /* 0030 */  0x24, 0x15, 0x07, 0x85, 0x12, 0x02, 0xA1, 0xFE,  /* $....... */
                    /* 0038 */  0x04, 0xF2, 0x2B, 0x00, 0xA1, 0x43, 0x01, 0x32,  /* ..+..C.2 */
                    /* 0040 */  0x05, 0x18, 0x14, 0xE0, 0x14, 0x41, 0x04, 0xBD,  /* .....A.. */
                    /* 0048 */  0x0A, 0xB0, 0x29, 0xC0, 0xA4, 0x00, 0x8B, 0x02,  /* ..)..... */
                    /* 0050 */  0xB4, 0x0B, 0xB0, 0x2C, 0x40, 0xB7, 0x00, 0xE9,  /* ...,@... */
                    /* 0058 */  0xB0, 0x44, 0x24, 0x38, 0x4A, 0x0C, 0x38, 0x4A,  /* .D$8J.8J */
                    /* 0060 */  0x27, 0xB6, 0x70, 0xC3, 0x06, 0x2F, 0x14, 0x45,  /* '.p../.E */
                    /* 0068 */  0x33, 0x88, 0x92, 0xA0, 0x72, 0x01, 0xBE, 0x11,  /* 3...r... */
                    /* 0070 */  0x04, 0x5E, 0xAE, 0x00, 0xC9, 0x13, 0x90, 0x66,  /* .^.....f */
                    /* 0078 */  0x01, 0x86, 0x05, 0x58, 0x17, 0x20, 0x7B, 0x08,  /* ...X. {. */
                    /* 0080 */  0x54, 0xEA, 0x10, 0x50, 0x72, 0x86, 0x80, 0x1A,  /* T..Pr... */
                    /* 0088 */  0x40, 0xAB, 0x13, 0x10, 0x7E, 0xA5, 0x53, 0x42,  /* @...~.SB */
                    /* 0090 */  0x12, 0x84, 0x33, 0x56, 0xF1, 0xF8, 0x9A, 0x45,  /* ..3V...E */
                    /* 0098 */  0xD3, 0x73, 0x92, 0x73, 0x0C, 0x39, 0x1E, 0x17,  /* .s.s.9.. */
                    /* 00A0 */  0x7A, 0x10, 0x3C, 0xAA, 0x04, 0x10, 0x26, 0x7F,  /* z.<...&. */
                    /* 00A8 */  0xC8, 0x0A, 0x07, 0x83, 0xD2, 0x30, 0x16, 0xEA,  /* .....0.. */
                    /* 00B0 */  0x62, 0xD4, 0xA8, 0x91, 0xB2, 0x01, 0x19, 0xA2,  /* b....... */
                    /* 00B8 */  0x24, 0x38, 0xD4, 0xA8, 0x2D, 0x51, 0x80, 0xF9,  /* $8..-Q.. */
                    /* 00C0 */  0x71, 0x68, 0x76, 0x6D, 0x8F, 0x85, 0x40, 0x32,  /* qhvm..@2 */
                    /* 00C8 */  0x69, 0x43, 0x41, 0x49, 0x81, 0xD0, 0xD8, 0xCE,  /* iCAI.... */
                    /* 00D0 */  0xD4, 0x33, 0x8A, 0x78, 0xA4, 0x86, 0x49, 0xE0,  /* .3.x..I. */
                    /* 00D8 */  0x51, 0x44, 0x36, 0x1A, 0x87, 0xC6, 0x0E, 0xC3,  /* QD6..... */
                    /* 00E0 */  0xC3, 0x0C, 0x76, 0x10, 0x87, 0x71, 0xCC, 0x91,  /* ..v..q.. */
                    /* 00E8 */  0x13, 0x78, 0x42, 0x47, 0x7A, 0xE4, 0x85, 0xCD,  /* .xBGz... */
                    /* 00F0 */  0x53, 0xA8, 0x31, 0x9A, 0x83, 0x22, 0x82, 0x8F,  /* S.1..".. */
                    /* 00F8 */  0x02, 0xE8, 0x31, 0x85, 0x3D, 0xDA, 0xD8, 0xE7,  /* ..1.=... */
                    /* 0100 */  0x6B, 0xE1, 0x83, 0x15, 0xC6, 0x11, 0x1C, 0x57,  /* k......W */
                    /* 0108 */  0x82, 0xFF, 0xFF, 0x89, 0x1F, 0x4A, 0x8F, 0x70,  /* .....J.p */
                    /* 0110 */  0x12, 0x34, 0x45, 0x0A, 0x72, 0xD4, 0x18, 0x59,  /* .4E.r..Y */
                    /* 0118 */  0x38, 0xD2, 0x3A, 0x2B, 0x32, 0x77, 0x03, 0x1B,  /* 8.:+2w.. */
                    /* 0120 */  0xA8, 0x31, 0x01, 0xBA, 0x46, 0x22, 0x82, 0xE3,  /* .1..F".. */
                    /* 0128 */  0x39, 0x10, 0x8C, 0x0C, 0x08, 0x79, 0x3E, 0x17,  /* 9....y>. */
                    /* 0130 */  0x68, 0x84, 0x26, 0xB0, 0x7B, 0x01, 0xDA, 0x04,  /* h.&.{... */
                    /* 0138 */  0x78, 0x83, 0xD0, 0x38, 0x22, 0x04, 0x6E, 0x6D,  /* x..8".nm */
                    /* 0140 */  0x12, 0xB2, 0x85, 0x43, 0xE6, 0x15, 0x2B, 0x4A,  /* ...C..+J */
                    /* 0148 */  0x8C, 0x63, 0x3A, 0xB2, 0x1A, 0x51, 0x84, 0x54,  /* .c:..Q.T */
                    /* 0150 */  0xD9, 0xCD, 0x40, 0x08, 0x51, 0x62, 0x86, 0x8C,  /* ..@.Qb.. */
                    /* 0158 */  0x18, 0x2C, 0xC8, 0x63, 0x44, 0x0C, 0x0F, 0xD1,  /* .,.cD... */
                    /* 0160 */  0x70, 0x91, 0xDA, 0x1F, 0x04, 0x91, 0xF7, 0x98,  /* p....... */
                    /* 0168 */  0xD0, 0x79, 0xC0, 0x91, 0x46, 0x83, 0x3A, 0x2C,  /* .y..F.:, */
                    /* 0170 */  0xF8, 0x4C, 0xE0, 0xC9, 0x3D, 0x23, 0x78, 0x6C,  /* .L..=#xl */
                    /* 0178 */  0xE7, 0x1C, 0xE4, 0x3C, 0x8F, 0xED, 0x11, 0xE2,  /* ...<.... */
                    /* 0180 */  0x61, 0xC0, 0xC3, 0x66, 0xB7, 0x04, 0x9F, 0x2D,  /* a..f...- */
                    /* 0188 */  0x7C, 0x3A, 0xC0, 0xBB, 0x06, 0xD4, 0xB5, 0xE0,  /* |:...... */
                    /* 0190 */  0xA1, 0x80, 0x4D, 0x32, 0x1C, 0x66, 0x88, 0x1E,  /* ..M2.f.. */
                    /* 0198 */  0x6B, 0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0xB1,  /* k..8D... */
                    /* 01A0 */  0xFA, 0x3C, 0x80, 0x9B, 0xDB, 0xC9, 0x1C, 0xFA,  /* .<...... */
                    /* 01A8 */  0xFB, 0x44, 0xB3, 0x37, 0x09, 0x42, 0x70, 0x3C,  /* .D.7.Bp< */
                    /* 01B0 */  0xBE, 0x44, 0xB0, 0x09, 0x3F, 0x3A, 0x90, 0x41,  /* .D..?:.A */
                    /* 01B8 */  0xA0, 0x46, 0x66, 0x68, 0x0F, 0xF5, 0xB4, 0x5E,  /* .Ffh...^ */
                    /* 01C0 */  0x06, 0x7C, 0x0C, 0x30, 0x81, 0xC5, 0x42, 0x48,  /* .|.0..BH */
                    /* 01C8 */  0x01, 0x84, 0xC6, 0x03, 0x7E, 0xC5, 0x07, 0x0F,  /* ....~... */
                    /* 01D0 */  0x72, 0x63, 0xF0, 0x7C, 0x7D, 0x86, 0xD0, 0xC9,  /* rc.|}... */
                    /* 01D8 */  0x42, 0x46, 0x56, 0xE1, 0xF1, 0xD0, 0xE3, 0x82,  /* BFV..... */
                    /* 01E0 */  0xEF, 0x08, 0x98, 0x0B, 0x83, 0x87, 0xEE, 0x21,  /* .......! */
                    /* 01E8 */  0x3D, 0x1F, 0x58, 0xD2, 0x21, 0x83, 0xFE, 0xFF,  /* =.X.!... */
                    /* 01F0 */  0x45, 0x9D, 0x56, 0xF8, 0xA1, 0x82, 0x9E, 0x27,  /* E.V....' */
                    /* 01F8 */  0x18, 0x6C, 0xD0, 0xB0, 0x1E, 0xCC, 0x39, 0xF9,  /* .l....9. */
                    /* 0200 */  0xCF, 0xE2, 0xB1, 0xC1, 0x07, 0xC4, 0x7B, 0x9F,  /* ......{. */
                    /* 0208 */  0x35, 0x19, 0xC1, 0xC9, 0x1A, 0xD0, 0x87, 0x07,  /* 5....... */
                    /* 0210 */  0xDC, 0xA1, 0x02, 0xBC, 0x30, 0x87, 0xC5, 0xAF,  /* ....0... */
                    /* 0218 */  0x15, 0x70, 0x0F, 0x0B, 0x6C, 0x94, 0x7C, 0x34,  /* .p..l.|4 */
                    /* 0220 */  0x1E, 0xC2, 0x59, 0x3C, 0x0D, 0x18, 0xC6, 0xE8,  /* ..Y<.... */
                    /* 0228 */  0x4F, 0x01, 0xB0, 0x6F, 0x18, 0x1E, 0x8B, 0x0F,  /* O..o.... */
                    /* 0230 */  0x3A, 0x3E, 0xE9, 0x80, 0x63, 0x70, 0xFC, 0x0A,  /* :>..cp.. */
                    /* 0238 */  0x83, 0x3B, 0xE9, 0x00, 0x8F, 0xB9, 0x3E, 0xE9,  /* .;....>. */
                    /* 0240 */  0x80, 0xED, 0x7C, 0xC0, 0x4E, 0x39, 0xD0, 0x4C,  /* ..|.N9.L */
                    /* 0248 */  0x80, 0xB0, 0x00, 0x6F, 0x04, 0xC9, 0x5A, 0x37,  /* ...o..Z7 */
                    /* 0250 */  0x85, 0xF1, 0xFF, 0xFF, 0x94, 0x03, 0xB8, 0xBA,  /* ........ */
                    /* 0258 */  0x4B, 0xF8, 0x04, 0x01, 0x56, 0x8C, 0xE7, 0x0D,  /* K...V... */
                    /* 0260 */  0x8B, 0x06, 0xD4, 0x08, 0x9E, 0x1F, 0x60, 0x1F,  /* ......`. */
                    /* 0268 */  0x73, 0xE0, 0x5F, 0x6D, 0x7C, 0xBE, 0x09, 0x72,  /* s._m|..r */
                    /* 0270 */  0x52, 0x41, 0x0E, 0xE5, 0xF5, 0xE6, 0xC9, 0x21,  /* RA.....! */
                    /* 0278 */  0xCC, 0x8B, 0xCE, 0x13, 0x8E, 0x87, 0x56, 0x21,  /* ......V! */
                    /* 0280 */  0x88, 0x9C, 0x1D, 0x73, 0x08, 0xD2, 0x03, 0x8E,  /* ...s.... */
                    /* 0288 */  0x51, 0x0C, 0x72, 0x66, 0x51, 0xA3, 0x45, 0x31,  /* Q.rfQ.E1 */
                    /* 0290 */  0x5E, 0x90, 0x68, 0x11, 0x8F, 0xE0, 0x31, 0x87,  /* ^.h...1. */
                    /* 0298 */  0xC5, 0x3A, 0x10, 0xE8, 0x1F, 0xE5, 0x63, 0x0E,  /* .:....c. */
                    /* 02A0 */  0x70, 0xFF, 0xFF, 0x1F, 0x73, 0x00, 0x47, 0xF2,  /* p...s.G. */
                    /* 02A8 */  0x8E, 0x24, 0xA0, 0x1A, 0x15, 0xBF, 0x32, 0xB0,  /* .$....2. */
                    /* 02B0 */  0x33, 0x09, 0x30, 0x89, 0xF2, 0xF4, 0xD0, 0x38,  /* 3.0....8 */
                    /* 02B8 */  0xAD, 0xF1, 0x39, 0x20, 0x1B, 0x27, 0x21, 0x3A,  /* ..9 .'!: */
                    /* 02C0 */  0x08, 0x2B, 0xA1, 0xD2, 0x08, 0xDE, 0x23, 0x7C,  /* .+....#| */
                    /* 02C8 */  0x6B, 0x88, 0xFB, 0x6C, 0xE0, 0xF9, 0x60, 0xD2,  /* k..l..`. */
                    /* 02D0 */  0x1F, 0x14, 0x74, 0xFE, 0x31, 0xB8, 0x73, 0x93,  /* ..t.1.s. */
                    /* 02D8 */  0x28, 0xF7, 0x80, 0x28, 0xBC, 0x93, 0x1E, 0x83,  /* (..(.... */
                    /* 02E0 */  0x28, 0x88, 0x01, 0x1D, 0x03, 0x42, 0x56, 0x0E,  /* (....BV. */
                    /* 02E8 */  0x02, 0xE8, 0xEB, 0x84, 0x8F, 0x0C, 0x3E, 0x67,  /* ......>g */
                    /* 02F0 */  0x44, 0x39, 0x23, 0x1F, 0x30, 0x1E, 0x17, 0xD8,  /* D9#.0... */
                    /* 02F8 */  0x70, 0x7C, 0x10, 0xE0, 0x07, 0x14, 0xDF, 0x0C,  /* p|...... */
                    /* 0300 */  0x8C, 0x6D, 0x35, 0xC7, 0x1D, 0x14, 0x98, 0xE1,  /* .m5..... */
                    /* 0308 */  0x5F, 0x60, 0x4C, 0xE0, 0x7B, 0xC6, 0xCB, 0x00,  /* _`L.{... */
                    /* 0310 */  0xBC, 0xFF, 0xFF, 0x6D, 0x07, 0x7B, 0xC6, 0x78,  /* ...m.{.x */
                    /* 0318 */  0x2C, 0xB1, 0xBE, 0xC3, 0x00, 0x28, 0x80, 0x3C,  /* ,....(.< */
                    /* 0320 */  0x7D, 0x9F, 0x68, 0x1E, 0x01, 0xD8, 0x18, 0x1E,  /* }.h..... */
                    /* 0328 */  0x6A, 0x8C, 0x66, 0x74, 0x1E, 0x7F, 0xAE, 0xA8,  /* j.ft.... */
                    /* 0330 */  0xC0, 0x73, 0xA5, 0x20, 0x9E, 0xAB, 0xC3, 0x40,  /* .s. ...@ */
                    /* 0338 */  0xC8, 0xC9, 0x5C, 0x51, 0xB7, 0x17, 0x8F, 0xC8,  /* ..\Q.... */
                    /* 0340 */  0x3E, 0xA7, 0x4A, 0x06, 0xCB, 0x09, 0xA2, 0xBC,  /* >.J..... */
                    /* 0348 */  0x6A, 0xC0, 0x3A, 0x08, 0x44, 0x64, 0xF3, 0xF0,  /* j.:.Dd.. */
                    /* 0350 */  0x5D, 0x09, 0x3F, 0x5B, 0x3E, 0x18, 0x5F, 0x25,  /* ].?[>._% */
                    /* 0358 */  0xE0, 0x0F, 0x97, 0x9F, 0x4A, 0xDE, 0x4D, 0x12,  /* ....J.M. */
                    /* 0360 */  0x58, 0xE0, 0x74, 0x41, 0x0E, 0x8F, 0x11, 0xB4,  /* X.tA.... */
                    /* 0368 */  0x1E, 0x59, 0xB8, 0x4B, 0xD1, 0x71, 0xF1, 0xDB,  /* .Y.K.q.. */
                    /* 0370 */  0x81, 0x6F, 0x3C, 0xEC, 0x4E, 0x83, 0xBB, 0x88,  /* .o<.N... */
                    /* 0378 */  0x61, 0x60, 0x3D, 0x52, 0x0E, 0x6B, 0xB4, 0xB0,  /* a`=R.k.. */
                    /* 0380 */  0x07, 0xFC, 0xC6, 0xE1, 0xE3, 0x8A, 0x67, 0x66,  /* ......gf */
                    /* 0388 */  0x8C, 0xB0, 0xBE, 0xA7, 0x80, 0xE3, 0x4E, 0x06,  /* ......N. */
                    /* 0390 */  0x3F, 0xC0, 0xD8, 0x10, 0xFF, 0xFF, 0x2B, 0x10,  /* ?.....+. */
                    /* 0398 */  0xF8, 0xCE, 0x1A, 0xEC, 0x4A, 0x66, 0x90, 0x17,  /* ....Jf.. */
                    /* 03A0 */  0x25, 0x9F, 0x6B, 0x8C, 0x1E, 0xE8, 0x7D, 0x03,  /* %.k...}. */
                    /* 03A8 */  0x7F, 0x13, 0x82, 0x7D, 0x03, 0x81, 0x33, 0x14,  /* ...}..3. */
                    /* 03B0 */  0xDF, 0x40, 0x80, 0xC3, 0x31, 0x02, 0x77, 0x03,  /* .@..1.w. */
                    /* 03B8 */  0x01, 0xD6, 0x77, 0x08, 0x76, 0x03, 0x01, 0x96,  /* ..w.v... */
                    /* 03C0 */  0xA7, 0x17, 0xDC, 0x0D, 0x04, 0x9C, 0xFF, 0xFF,  /* ........ */
                    /* 03C8 */  0x1B, 0x08, 0x70, 0xB9, 0xBF, 0xB0, 0x1B, 0x08,  /* ..p..... */
                    /* 03D0 */  0x30, 0x1F, 0xB5, 0x6F, 0x20, 0x80, 0xA5, 0xB3,  /* 0..o ... */
                    /* 03D8 */  0x06, 0xBB, 0x81, 0x80, 0x5F, 0xA1, 0x4D, 0x9F,  /* ...._.M. */
                    /* 03E0 */  0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53, 0xA3, 0x4C,  /* ..Z5(S.L */
                    /* 03E8 */  0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66, 0xCC, 0xC6,  /* .Z}*5f.. */
                    /* 03F0 */  0xE8, 0xBD, 0x74, 0x8D, 0xDD, 0x71, 0x40, 0x68,  /* ..t..q@h */
                    /* 03F8 */  0xF0, 0x87, 0x9C, 0x40, 0x1C, 0xDE, 0x03, 0x08,  /* ...@.... */
                    /* 0400 */  0x93, 0xBE, 0x38, 0x81, 0x38, 0xE6, 0xA1, 0x51,  /* ..8.8..Q */
                    /* 0408 */  0x46, 0x40, 0xF4, 0xFF, 0xCF, 0x0C, 0x22, 0x20,  /* F@...."  */
                    /* 0410 */  0x27, 0x54, 0x01, 0xC4, 0xF2, 0x82, 0x08, 0xC8,  /* 'T...... */
                    /* 0418 */  0x4A, 0xD6, 0x20, 0x20, 0xCB, 0x02, 0x11, 0x90,  /* J.  .... */
                    /* 0420 */  0x45, 0xE8, 0x00, 0x62, 0x92, 0x40, 0x04, 0xE4,  /* E..b.@.. */
                    /* 0428 */  0xFF, 0x3F                                       /* .? */
                })
                Method (WMAA, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Arg1
                    If ((_T_0 == One))
                    {
                        WAAS = Arg2
                        If ((WAS0 == One))
                        {
                            Z00X ()
                            WASR = Zero
                            Return (WASR) /* \_SB_.WMID.WASR */
                        }
                        ElseIf ((WAS0 == 0x02))
                        {
                            WASR = Zero
                            Z00Y ()
                            Return (WASR) /* \_SB_.WMID.WASR */
                        }
                        Else
                        {
                            WASR = Zero
                            ASR0 = 0xE1
                            Return (WASR) /* \_SB_.WMID.WASR */
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        WAAG = Arg2
                        If ((WAG0 == One))
                        {
                            WAGR = Zero
                            Z00Z ()
                            Return (WAGR) /* \_SB_.WMID.WAGR */
                        }
                        ElseIf ((WAG0 == 0x03))
                        {
                            WAGR = Zero
                            AGR1 |= WDDD /* \WDDD */
                            AGR1 |= (WDDD << 0x07)
                            AGR1 |= (GDDD << 0x06)
                            AGR2 |= (BDDD << 0x03)
                            Return (WAGR) /* \_SB_.WMID.WAGR */
                        }
                        Else
                        {
                            WAGR = Zero
                            AGR0 = 0xE1
                            Return (WAGR) /* \_SB_.WMID.WAGR */
                        }
                    }
                }

                Method (Z00X, 0, NotSerialized)
                {
                    If ((WAS5 & One))
                    {
                        ^^PCI0.LPCB.EC0.LMAT = One
                    }
                    Else
                    {
                        ^^PCI0.LPCB.EC0.LMAT = Zero
                    }
                }

                Method (Z00Y, 0, NotSerialized)
                {
                    If ((WAA1 == One))
                    {
                        If ((WAA2 & One))
                        {
                            ^^PCI0.LPCB.EC0.WLST = One
                        }
                        Else
                        {
                            ^^PCI0.LPCB.EC0.WLST = Zero
                        }

                        If ((WAA2 & 0x40))
                        {
                            ^^PCI0.LPCB.EC0.ED3G = One
                        }
                        Else
                        {
                            ^^PCI0.LPCB.EC0.ED3G = Zero
                        }

                        If ((WAA2 & 0x0800))
                        {
                            ^^PCI0.LPCB.EC0.BLTS = One
                        }
                        Else
                        {
                            ^^PCI0.LPCB.EC0.BLTS = Zero
                        }

                        ASR0 = Zero
                    }
                    ElseIf ((WAA1 == 0x02))
                    {
                        If ((WAA2 & One))
                        {
                            ^^PCI0.LPCB.EC0.WLST = One
                        }
                        Else
                        {
                            ^^PCI0.LPCB.EC0.WLST = Zero
                        }

                        ASR0 = Zero
                    }
                    ElseIf ((WAA1 == 0x82))
                    {
                        If ((WAA2 & 0x02))
                        {
                            ^^PCI0.LPCB.EC0.TOHP = Zero
                        }
                        Else
                        {
                            ^^PCI0.LPCB.EC0.TOHP = One
                        }

                        ASR0 = Zero
                    }
                    ElseIf ((WAA1 == 0x85))
                    {
                        If ((WAA2 & 0x10))
                        {
                            ^^PCI0.LPCB.EC0.BBST = One
                        }
                        Else
                        {
                            ^^PCI0.LPCB.EC0.BBST = Zero
                        }

                        ASR0 = Zero
                    }
                    Else
                    {
                        ASR0 = 0xE1
                    }
                }

                Method (Z00Z, 0, NotSerialized)
                {
                    If ((WAG1 == One))
                    {
                        If ((^^PCI0.LPCB.EC0.WLST == One))
                        {
                            AGR2 |= One
                        }

                        If ((^^PCI0.LPCB.EC0.ED3G == One))
                        {
                            AGR2 |= 0x40
                        }

                        If ((^^PCI0.LPCB.EC0.BLTS == One))
                        {
                            AGR2 |= 0x0800
                        }

                        AGR0 = Zero
                    }
                    ElseIf ((WAG1 == 0x02))
                    {
                        If ((^^PCI0.LPCB.EC0.WLST == One))
                        {
                            AGR2 |= One
                        }

                        AGR0 = Zero
                    }
                    ElseIf ((WAG1 == 0x82))
                    {
                        If ((^^PCI0.LPCB.EC0.TOHP == Zero))
                        {
                            AGR2 |= 0x02
                        }

                        AGR0 = Zero
                    }
                    ElseIf ((WAG1 == 0x85))
                    {
                        If ((^^PCI0.LPCB.EC0.BBST == One))
                        {
                            AGR2 |= 0x10
                        }

                        AGR0 = Zero
                    }
                    Else
                    {
                        AGR0 = 0xE1
                    }
                }
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (THRM)
        {
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\_SB.ECOK)
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.CTMP
                    Return (((Local0 * 0x0A) + 0x0AAC))
                }
                Else
                {
                    Return (0x0C3C)
                }
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                If ((\_SB.PCI0.LPCB.EC0.TJMX == Zero))
                {
                    Return (0x0DCC)
                }
                ElseIf ((\_SB.PCI0.LPCB.EC0.TJMX == One))
                {
                    Return (0x0DFE)
                }
                ElseIf ((\_SB.PCI0.LPCB.EC0.TJMX == 0x02))
                {
                    Return (0x0E62)
                }
                Else
                {
                    Return (0x0E94)
                }
            }

            Name (_PSL, Package (0x01)  // _PSL: Passive List
            {
                \_PR.CPU0
            })
            Name (_TSP, 0x28)  // _TSP: Thermal Sampling Period
            Name (_TC1, 0x02)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                If ((\_SB.PCI0.LPCB.EC0.TJMX == Zero))
                {
                    Return (0x0DFE)
                }
                ElseIf ((\_SB.PCI0.LPCB.EC0.TJMX == One))
                {
                    Return (0x0E30)
                }
                ElseIf ((\_SB.PCI0.LPCB.EC0.TJMX == 0x02))
                {
                    Return (0x0E94)
                }
                Else
                {
                    Return (0x0EC6)
                }
            }
        }
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x2B)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x2B)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x14)
        {
            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR01, Package (0x14)
        {
            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR80, Package (0x2A)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR80, Package (0x2A)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR82, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR82, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR8A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR8A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR8C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR8C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR84, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR84, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR85, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR85, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR86, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR86, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR87, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR87, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR88, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR88, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR8E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR8E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR8F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR8F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR81, Package (0x14)
        {
            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR81, Package (0x14)
        {
            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Name (ECOK, Zero)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, 0x40, 0xC0)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x08), 
                MHEN,   1, 
                    ,   13, 
                MHBR,   18, 
                Offset (0x10), 
                IIEN,   1, 
                    ,   11, 
                DIBI,   20, 
                Offset (0x28), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x30), 
                IPEN,   1, 
                    ,   11, 
                IPBR,   20, 
                Offset (0x62), 
                TUUD,   16, 
                Offset (0x70), 
                    ,   4, 
                TLUD,   12, 
                Offset (0x89), 
                    ,   3, 
                GTSE,   1, 
                Offset (0x8A)
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
                Offset (0xD40), 
                ADVE,   1, 
                    ,   11, 
                ADVT,   20, 
                Offset (0x101E), 
                T0IS,   16, 
                Offset (0x105E), 
                T1IS,   16, 
                Offset (0x10EF), 
                ESCS,   8
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FE,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x00FF,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (^^CPBG.IMCH.PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y00._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((^^CPBG.IMCH.PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y00._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (^^CPBG.IMCH.PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((^^CPBG.IMCH.PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (^^CPBG.IMCH.PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((^^CPBG.IMCH.PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (^^CPBG.IMCH.PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((^^CPBG.IMCH.PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (^^CPBG.IMCH.PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((^^CPBG.IMCH.PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (^^CPBG.IMCH.PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((^^CPBG.IMCH.PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (^^CPBG.IMCH.PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((^^CPBG.IMCH.PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (^^CPBG.IMCH.PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((^^CPBG.IMCH.PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (^^CPBG.IMCH.PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((^^CPBG.IMCH.PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (^^CPBG.IMCH.PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((^^CPBG.IMCH.PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (^^CPBG.IMCH.PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((^^CPBG.IMCH.PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (^^CPBG.IMCH.PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((^^CPBG.IMCH.PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (^^CPBG.IMCH.PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((^^CPBG.IMCH.PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, M1LN)  // _LEN: Length
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    If ((PNHM >= 0x000106E1))
                    {
                        Local0 = ^IO10.TOLM /* \_SB_.PCI0.IO10.TOLM */
                        M1MN = (Local0++ << 0x1A)
                    }
                    Else
                    {
                        Local0 = ^IIO0.TOLM /* \_SB_.PCI0.IIO0.TOLM */
                        M1MN = (Local0++ << 0x1A)
                    }
                }
                Else
                {
                    M1MN = (TLUD << 0x14)
                }

                M1LN = ((M1MX - M1MN) + One)
                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & 0x02))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR80) /* \_SB_.AR80 */
                    }
                    Else
                    {
                        Return (^^AR00) /* \_SB_.AR00 */
                    }
                }

                Method (PR00, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR80) /* \_SB_.PR80 */
                    }
                    Else
                    {
                        Return (^^PR00) /* \_SB_.PR00 */
                    }
                }

                Method (AR01, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR81) /* \_SB_.AR81 */
                    }
                    Else
                    {
                        Return (^^AR01) /* \_SB_.AR01 */
                    }
                }

                Method (PR01, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR81) /* \_SB_.PR81 */
                    }
                    Else
                    {
                        Return (^^PR01) /* \_SB_.PR01 */
                    }
                }

                Method (AR02, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR82) /* \_SB_.AR82 */
                    }
                    Else
                    {
                        Return (^^AR02) /* \_SB_.AR02 */
                    }
                }

                Method (PR02, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR82) /* \_SB_.PR82 */
                    }
                    Else
                    {
                        Return (^^PR02) /* \_SB_.PR02 */
                    }
                }

                Method (AR04, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR84) /* \_SB_.AR84 */
                    }
                    Else
                    {
                        Return (^^AR04) /* \_SB_.AR04 */
                    }
                }

                Method (PR04, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR84) /* \_SB_.PR84 */
                    }
                    Else
                    {
                        Return (^^PR04) /* \_SB_.PR04 */
                    }
                }

                Method (AR05, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR85) /* \_SB_.AR85 */
                    }
                    Else
                    {
                        Return (^^AR05) /* \_SB_.AR05 */
                    }
                }

                Method (PR05, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR85) /* \_SB_.PR85 */
                    }
                    Else
                    {
                        Return (^^PR05) /* \_SB_.PR05 */
                    }
                }

                Method (AR06, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR86) /* \_SB_.AR86 */
                    }
                    Else
                    {
                        Return (^^AR06) /* \_SB_.AR06 */
                    }
                }

                Method (PR06, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR86) /* \_SB_.PR86 */
                    }
                    Else
                    {
                        Return (^^PR06) /* \_SB_.PR06 */
                    }
                }

                Method (AR07, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR87) /* \_SB_.AR87 */
                    }
                    Else
                    {
                        Return (^^AR07) /* \_SB_.AR07 */
                    }
                }

                Method (PR07, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR87) /* \_SB_.PR87 */
                    }
                    Else
                    {
                        Return (^^PR07) /* \_SB_.PR07 */
                    }
                }

                Method (AR08, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR88) /* \_SB_.AR88 */
                    }
                    Else
                    {
                        Return (^^AR08) /* \_SB_.AR08 */
                    }
                }

                Method (PR08, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR88) /* \_SB_.PR88 */
                    }
                    Else
                    {
                        Return (^^PR08) /* \_SB_.PR08 */
                    }
                }

                Method (AR0A, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (AR8A) /* \_SB_.AR8A */
                    }
                    Else
                    {
                        Return (^^AR0A) /* \_SB_.AR0A */
                    }
                }

                Method (PR0A, 0, NotSerialized)
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (PR8A) /* \_SB_.PR8A */
                    }
                    Else
                    {
                        Return (^^PR0A) /* \_SB_.PR0A */
                    }
                }
            }

            Device (P0P2)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        Return (0x00030000)
                    }
                    Else
                    {
                        Return (0x00010000)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }

                Device (VGA)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((OSYS < 0x07D6))
                        {
                            If (((SGST == One) || (SGST == 0x02)))
                            {
                                Return (Zero)
                            }
                        }

                        If ((SGST == One))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0xFFFF)
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((SGST == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_PSC, Zero)  // _PSC: Power State Current
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        Debug = "VGA _PS0"
                        _PSC = Zero
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Debug = "VGA _PS3"
                        _PSC = 0x03
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        Debug = "VGA _DOS"
                        SWIT = (Arg0 & 0x03)
                        DISW = Arg0
                        Local0 = ((DISW & 0x04) >> 0x02)
                        PHSR (0x04, Local0)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Debug = "Nvidia VGA _DOD"
                        Return (Package (0x04)
                        {
                            0x0110, 
                            0x0100, 
                            0x0111, 
                            0x0112
                        })
                    }

                    Device (LCD)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (LCDA)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (LCDA)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            Debug = "LCD -- _DSS"
                        }

                        Method (XBCL, 0, NotSerialized)
                        {
                            Return (OBCL) /* \_SB_.PCI0.OBCL */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            OBCM (Arg0)
                        }

                        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                        {
                            Return (OBQC ())
                        }
                    }

                    Device (CRT)
                    {
                        Name (_ADR, 0x0100)  // _ADR: Address
                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (CRTA)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (CRTA)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            Debug = "CRT -- _DSS"
                        }
                    }

                    Device (HDMI)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0111)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (HDMA)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (HDMA)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            Debug = "HDMI -- _DSS"
                        }
                    }

                    Device (DP)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0112)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (DP0A)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (DP0A)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            Debug = "DP -- _DSS"
                        }
                    }
                }
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (GFXI, 0, NotSerialized)
                {
                    CLID = One
                    CRBL ()
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    DSEN = (Arg0 & 0x07)
                    If (((Arg0 & 0x03) == Zero))
                    {
                        If (CondRefOf (HDOS))
                        {
                            HDOS ()
                        }
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    If ((SGST == Zero))
                    {
                        If (CondRefOf (IDAB))
                        {
                            NDID = Zero
                            IDAB ()
                        }
                        Else
                        {
                            NDID = Zero
                            If ((DIDL != Zero))
                            {
                                DID1 = SDDL (DIDL)
                            }

                            If ((DDL2 != Zero))
                            {
                                DID2 = SDDL (DDL2)
                            }

                            If ((DDL3 != Zero))
                            {
                                DID3 = SDDL (DDL3)
                            }

                            If ((DDL4 != Zero))
                            {
                                DID4 = SDDL (DDL4)
                            }

                            If ((DDL5 != Zero))
                            {
                                DID5 = SDDL (DDL5)
                            }

                            If ((DDL6 != Zero))
                            {
                                DID6 = SDDL (DDL6)
                            }

                            If ((DDL7 != Zero))
                            {
                                DID7 = SDDL (DDL7)
                            }

                            If ((DDL8 != Zero))
                            {
                                DID8 = SDDL (DDL8)
                            }
                        }

                        If ((NDID == One))
                        {
                            Name (TMP1, Package (0x01)
                            {
                                0xFFFFFFFF
                            })
                            TMP1 [Zero] = (0x00010000 | DID1)
                            Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                        }

                        If ((NDID == 0x02))
                        {
                            Name (TMP2, Package (0x02)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP2 [Zero] = (0x00010000 | DID1)
                            TMP2 [One] = (0x00010000 | DID2)
                            Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                        }

                        If ((NDID == 0x03))
                        {
                            Name (TMP3, Package (0x03)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP3 [Zero] = (0x00010000 | DID1)
                            TMP3 [One] = (0x00010000 | DID2)
                            TMP3 [0x02] = (0x00010000 | DID3)
                            Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                        }

                        If ((NDID == 0x04))
                        {
                            Name (TMP4, Package (0x04)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP4 [Zero] = (0x00010000 | DID1)
                            TMP4 [One] = (0x00010000 | DID2)
                            TMP4 [0x02] = (0x00010000 | DID3)
                            TMP4 [0x03] = (0x00010000 | DID4)
                            Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                        }

                        If ((NDID == 0x05))
                        {
                            Name (TMP5, Package (0x05)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP5 [Zero] = (0x00010000 | DID1)
                            TMP5 [One] = (0x00010000 | DID2)
                            TMP5 [0x02] = (0x00010000 | DID3)
                            TMP5 [0x03] = (0x00010000 | DID4)
                            TMP5 [0x04] = (0x00010000 | DID5)
                            Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                        }

                        If ((NDID == 0x06))
                        {
                            Name (TMP6, Package (0x06)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP6 [Zero] = (0x00010000 | DID1)
                            TMP6 [One] = (0x00010000 | DID2)
                            TMP6 [0x02] = (0x00010000 | DID3)
                            TMP6 [0x03] = (0x00010000 | DID4)
                            TMP6 [0x04] = (0x00010000 | DID5)
                            TMP6 [0x05] = (0x00010000 | DID6)
                            Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
                        }

                        If ((NDID == 0x07))
                        {
                            Name (TMP7, Package (0x07)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP7 [Zero] = (0x00010000 | DID1)
                            TMP7 [One] = (0x00010000 | DID2)
                            TMP7 [0x02] = (0x00010000 | DID3)
                            TMP7 [0x03] = (0x00010000 | DID4)
                            TMP7 [0x04] = (0x00010000 | DID5)
                            TMP7 [0x05] = (0x00010000 | DID6)
                            TMP7 [0x06] = (0x00010000 | DID7)
                            Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
                        }

                        If ((NDID == 0x08))
                        {
                            Name (TMP8, Package (0x08)
                            {
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF
                            })
                            TMP8 [Zero] = (0x00010000 | DID1)
                            TMP8 [One] = (0x00010000 | DID2)
                            TMP8 [0x02] = (0x00010000 | DID3)
                            TMP8 [0x03] = (0x00010000 | DID4)
                            TMP8 [0x04] = (0x00010000 | DID5)
                            TMP8 [0x05] = (0x00010000 | DID6)
                            TMP8 [0x06] = (0x00010000 | DID7)
                            TMP8 [0x07] = (0x00010000 | DID8)
                            Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
                        }

                        Return (Package (0x01)
                        {
                            0x0400
                        })
                    }
                    Else
                    {
                        DID1 = Zero
                        DID2 = 0x0110
                        DID3 = 0x80000100
                        DID4 = 0x80087320
                        Return (Package (0x03)
                        {
                            0x0110, 
                            0x80000100, 
                            0x80087320
                        })
                    }
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID1 == Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID1))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD1) /* \NXD1 */
                        }

                        Return (NDDS (DID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((SGST == Zero))
                        {
                            If ((DID2 == Zero))
                            {
                                Return (0x02)
                            }
                            Else
                            {
                                Return ((0xFFFF & DID2))
                            }
                        }
                        Else
                        {
                            Return (0x0110)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD2) /* \NXD2 */
                        }

                        Return (NDDS (DID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (Package (0x0C)
                        {
                            0x64, 
                            0x1E, 
                            0x0A, 
                            0x14, 
                            0x1E, 
                            0x28, 
                            0x32, 
                            0x3C, 
                            0x46, 
                            0x50, 
                            0x5A, 
                            0x64
                        })
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                        {
                            AINT (One, Arg0)
                            BRTL = Arg0
                        }
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Return (BRTL) /* \BRTL */
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((SGST == Zero))
                        {
                            If ((DID3 == Zero))
                            {
                                Return (0x02)
                            }
                            Else
                            {
                                Return ((0xFFFF & DID3))
                            }
                        }
                        Else
                        {
                            Return (0x80000100)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID3 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID3))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD3) /* \NXD3 */
                        }

                        Return (NDDS (DID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((SGST == Zero))
                        {
                            If ((DID4 == Zero))
                            {
                                Return (0x02)
                            }
                            Else
                            {
                                Return ((0xFFFF & DID4))
                            }
                        }
                        Else
                        {
                            Return (0x80087320)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID4 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID4))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD4) /* \NXD4 */
                        }

                        Return (NDDS (DID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID5 == Zero))
                        {
                            Return (0x05)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID5))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID5 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID5))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD5) /* \NXD5 */
                        }

                        Return (NDDS (DID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD06)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID6 == Zero))
                        {
                            Return (0x06)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID6))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID6 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID6))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD6) /* \NXD6 */
                        }

                        Return (NDDS (DID6))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD07)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID7 == Zero))
                        {
                            Return (0x07)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID7))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID7 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID7))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD7) /* \NXD7 */
                        }

                        Return (NDDS (DID7))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD08)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID8 == Zero))
                        {
                            Return (0x08)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID8))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID8 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID8))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD8) /* \NXD8 */
                        }

                        Return (NDDS (DID8))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Method (SDDL, 1, NotSerialized)
                {
                    NDID++
                    Local0 = (Arg0 & 0x0F0F)
                    Local1 = (0x80000000 | Local0)
                    If ((DIDL == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL2 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL3 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL4 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL5 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL6 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL7 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL8 == Local0))
                    {
                        Return (Local1)
                    }

                    Return (Zero)
                }

                Method (CDDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0x0F0F)
                    If ((Zero == Local0))
                    {
                        Return (0x1D)
                    }

                    If ((CADL == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL2 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL3 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL4 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL5 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL6 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL7 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL8 == Local0))
                    {
                        Return (0x1F)
                    }

                    Return (0x1D)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0x0F0F)
                    If ((Zero == Local0))
                    {
                        Return (Zero)
                    }

                    If ((NADL == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL2 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL3 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL4 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL5 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL6 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL7 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL8 == Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Scope (^^PCI0)
                {
                    OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                    Field (MCHP, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x60), 
                        TASM,   10, 
                        Offset (0x62)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                    Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                    Offset (0x18), 
                    Offset (0xA4), 
                    ASLE,   8, 
                    Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                    Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                    Offset (0xB2), 
                    Offset (0xB5), 
                    LBPC,   8, 
                    Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                    Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                    Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                    Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                    Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                    Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BLM0,   16, 
                    BLM1,   16, 
                    BLM2,   16, 
                    BLM3,   16, 
                    BLM4,   16, 
                    BLM5,   16, 
                    BLM6,   16, 
                    BLM7,   16, 
                    BLM8,   16, 
                    BLM9,   16, 
                    BLMX,   160, 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                    Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    Zero, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    Method (GBDA, 0, Serialized)
                    {
                        If ((GESF == Zero))
                        {
                            PARM = 0x0679
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == One))
                        {
                            PARM = 0x0240
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x04))
                        {
                            PARM &= 0xEFFF0000
                            PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                            PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x05))
                        {
                            PARM = IPSC /* \IPSC */
                            PARM |= (IPAT << 0x08)
                            PARM += 0x0100
                            PARM |= (LIDS << 0x10)
                            PARM += 0x00010000
                            PARM |= (IBIA << 0x14)
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x06))
                        {
                            PARM = ITVF /* \ITVF */
                            PARM |= (ITVM << 0x04)
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x07))
                        {
                            PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                            PARM ^= One
                            PARM |= (GMFN << One)
                            PARM |= 0x1800
                            PARM |= (IDMS << 0x11)
                            PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                                0x15) /* \_SB_.PCI0.GFX0.PARM */
                            GESF = One
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0A))
                        {
                            PARM = Zero
                            If (ISSC)
                            {
                                PARM |= 0x03
                            }

                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0B))
                        {
                            PARM = KSV0 /* \KSV0 */
                            GESF = KSV1 /* \KSV1 */
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        GESF = Zero
                        Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                    }

                    Method (SBCB, 0, Serialized)
                    {
                        If ((GESF == Zero))
                        {
                            PARM = Zero
                            PARM = 0x000F87FD
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == One))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x03))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x04))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x05))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x06))
                        {
                            ITVF = (PARM & 0x0F)
                            ITVM = ((PARM & 0xF0) >> 0x04)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x07))
                        {
                            If ((PARM == Zero))
                            {
                                Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                                If ((0x80000000 & Local0))
                                {
                                    CLID &= 0x0F
                                    GLID (CLID)
                                }
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x08))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x09))
                        {
                            IBTT = (PARM & 0xFF)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0A))
                        {
                            IPSC = (PARM & 0xFF)
                            If (((PARM >> 0x08) & 0xFF))
                            {
                                IPAT = ((PARM >> 0x08) & 0xFF)
                                IPAT--
                            }

                            IBIA = ((PARM >> 0x14) & 0x07)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0B))
                        {
                            IF1E = ((PARM >> One) & One)
                            If ((PARM & 0x0001E000))
                            {
                                IDMS = ((PARM >> 0x0D) & 0x0F)
                            }
                            Else
                            {
                                IDMS = ((PARM >> 0x11) & 0x0F)
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x10))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x11))
                        {
                            PARM = (LIDS << 0x08)
                            PARM += 0x0100
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x12))
                        {
                            If ((PARM & One))
                            {
                                If (((PARM >> One) == One))
                                {
                                    ISSC = One
                                }
                                Else
                                {
                                    GESF = Zero
                                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                                }
                            }
                            Else
                            {
                                ISSC = Zero
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x13))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x14))
                        {
                            PAVP = (PARM & 0x0F)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GEFC == 0x04))
                    {
                        GXFC = GBDA ()
                    }

                    If ((GEFC == 0x06))
                    {
                        GXFC = SBCB ()
                    }

                    GEFC = Zero
                    SCIS = One
                    GSSE = Zero
                    SCIE = Zero
                    Return (Zero)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (!DRDY)
                    {
                        Sleep (ASLP)
                    }

                    Return (!DRDY)
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If ((CSTS > 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return ((CSTS == 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (One)
                    }

                    CEVT = Arg0
                    CSTS = 0x03
                    If (((CHPD == Zero) && (Arg1 == Zero)))
                    {
                        If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                        {
                            Notify (PCI0, Arg1)
                        }
                        Else
                        {
                            Notify (GFX0, Arg1)
                        }
                    }

                    If (CondRefOf (WMAB))
                    {
                        WMAB (Arg0)
                    }
                    Else
                    {
                        Notify (GFX0, 0x80) // Status Change
                    }

                    Return (Zero)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    TIDX = Arg0
                    Return (GNOT (One, Zero))
                }

                Method (GLID, 1, NotSerialized)
                {
                    CLID = Arg0
                    Return (GNOT (0x02, Zero))
                }

                Method (GDCK, 1, NotSerialized)
                {
                    CDCK = Arg0
                    Return (GNOT (0x04, Zero))
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (!ARDY)
                    {
                        Sleep (ASLP)
                    }

                    Return (!ARDY)
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (!(TCHE & (One << Arg0)))
                    {
                        Return (One)
                    }

                    If (PARD ())
                    {
                        Return (One)
                    }

                    If ((Arg0 == 0x02))
                    {
                        If (CPFM)
                        {
                            Local0 = (CPFM & 0x0F)
                            Local1 = (EPFM & 0x0F)
                            If ((Local0 == One))
                            {
                                If ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                ElseIf ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                Else
                                {
                                    PFIT = One
                                }
                            }

                            If ((Local0 == 0x06))
                            {
                                If ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                ElseIf ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                Else
                                {
                                    PFIT = 0x06
                                }
                            }

                            If ((Local0 == 0x08))
                            {
                                If ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                ElseIf ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                Else
                                {
                                    PFIT = 0x08
                                }
                            }
                        }
                        Else
                        {
                            PFIT ^= 0x07
                        }

                        PFIT |= 0x80000000
                        ASLC = 0x04
                    }
                    ElseIf ((Arg0 == One))
                    {
                        BCLP = ((Arg1 * 0xFF) / 0x64)
                        BCLP |= 0x80000000
                        ASLC = 0x02
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        ALSI = Arg1
                        ASLC = One
                    }
                    Else
                    {
                        Return (One)
                    }

                    ASLE = One
                    Return (Zero)
                }

                Method (SCIP, 0, NotSerialized)
                {
                    If ((OVER != Zero))
                    {
                        Return (!GSMI)
                    }

                    Return (Zero)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0B, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01 ())
                    }

                    Return (PR01 ())
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0x48), 
                    Z010,   1, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0E)
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0E._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED01000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED02000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED03000
                            }

                            Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                        }
                        Else
                        {
                            Return (BUF1) /* \_SB_.PCI0.LPCB.HPET.BUF1 */
                        }
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0xFE00,             // Range Minimum
                            0xFE00,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (CDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x50,               // Length
                            )
                    })
                    Name (BUF2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06A0,             // Range Minimum
                            0x06A0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                    })
                    Name (BUF3, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06A0,             // Range Minimum
                            0x06A0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x50,               // Length
                            )
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (EMAE)
                        {
                            If ((SMSC && CIRP))
                            {
                                Return (BUF0) /* \_SB_.PCI0.LPCB.CDRC.BUF0 */
                            }

                            Return (BUF1) /* \_SB_.PCI0.LPCB.CDRC.BUF1 */
                        }
                        ElseIf ((SMSC && CIRP))
                        {
                            Return (BUF2) /* \_SB_.PCI0.LPCB.CDRC.BUF2 */
                        }
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (BUF1) /* \_SB_.PCI0.LPCB.RTC_.BUF1 */
                            }
                            Else
                            {
                                Return (BUF0) /* \_SB_.PCI0.LPCB.RTC_.BUF0 */
                            }
                        }
                        Else
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPCB.RTC_.BUF0 */
                        }
                    }
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (BUF1) /* \_SB_.PCI0.LPCB.TIMR.BUF1 */
                            }
                            Else
                            {
                                Return (BUF0) /* \_SB_.PCI0.LPCB.TIMR.BUF0 */
                            }
                        }
                        Else
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPCB.TIMR.BUF0 */
                        }
                    }
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("SYN1B20"))  // _HID: Hardware ID
                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1B00"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13") /* PS/2 Mouse */
                    })
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Name (_GPE, 0x16)  // _GPE: General Purpose Events
                    Name (SEL0, 0xF0)
                    Name (BFLG, Zero)
                    Name (RDBT, Zero)
                    Name (RDWL, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            Local0 = Arg1
                            If (Local0)
                            {
                                ECOK = One
                            }
                            Else
                            {
                                ECOK = Zero
                            }
                        }

                        If (ECOK)
                        {
                            RG59 = 0x03
                            BLTH = BTEN /* \_SB_.BTEN */
                            WLAN = ^^^^WLAN /* \_SB_.WLAN */
                            ST3G = EX3G /* \_SB_.EX3G */
                            If ((SGST == Zero))
                            {
                                VGAF = Zero
                                PKEY = One
                            }
                            Else
                            {
                                PKEY = Zero
                            }

                            CPLE = One
                            DOFF = PHSR (Zero, Zero)
                        }
                    }

                    OperationRegion (VERM, EmbeddedControl, Zero, 0xFF)
                    Field (VERM, ByteAcc, NoLock, Preserve)
                    {
                        LNPS,   8
                    }

                    OperationRegion (ERAM, SystemMemory, 0xFF808201, 0x0100)
                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        CMCM,   8, 
                        CMD1,   8, 
                        CMD2,   8, 
                        CMD3,   8, 
                        Offset (0x18), 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   256, 
                        BCNT,   8, 
                        SMAA,   8, 
                        BATD,   16, 
                        ACDF,   1, 
                        Offset (0x41), 
                            ,   5, 
                        FLS4,   1, 
                        Offset (0x42), 
                        Offset (0x43), 
                            ,   1, 
                        LMAT,   1, 
                        Offset (0x46), 
                            ,   4, 
                        Offset (0x48), 
                            ,   1, 
                        PKEY,   1, 
                        Offset (0x4B), 
                        TBLV,   8, 
                        ARCD,   1, 
                            ,   3, 
                        DOCK,   1, 
                        LANC,   1, 
                        LIDT,   1, 
                        CRTS,   1, 
                        Offset (0x4E), 
                        TJMX,   4, 
                        VGAF,   1, 
                        EDTS,   1, 
                        Offset (0x51), 
                        BLVL,   8, 
                        Offset (0x53), 
                        DOFF,   8, 
                        Offset (0x58), 
                        CTMP,   8, 
                        RG59,   8, 
                        Offset (0x60), 
                        WLAN,   1, 
                        BLTH,   1, 
                        CPLE,   1, 
                            ,   3, 
                        WLST,   1, 
                        BLTS,   1, 
                            ,   1, 
                            ,   1, 
                        ST3G,   1, 
                        MNST,   1, 
                            ,   1, 
                        ED3G,   1, 
                        WIMX,   1, 
                        TOHP,   1, 
                        Offset (0x63), 
                            ,   1, 
                        BBST,   1, 
                            ,   5, 
                        Offset (0x64), 
                        Offset (0x70), 
                        BTMD,   8, 
                        MBTS,   1, 
                        MBTF,   1, 
                        BATF,   1, 
                            ,   3, 
                        MBDX,   1, 
                        MBAD,   1, 
                        MBTC,   1, 
                            ,   2, 
                        LION,   1, 
                            ,   1, 
                        MBPC,   1, 
                        Offset (0x77), 
                        BA1C,   8, 
                        MCYC,   16, 
                        MTMP,   16, 
                        MDAT,   16, 
                        MCUR,   16, 
                        MBRM,   16, 
                        MBVG,   16, 
                        MRTF,   16, 
                        MMER,   8, 
                        BA2C,   8, 
                        LFCC,   16, 
                        BTSN,   16, 
                        BTDC,   16, 
                        BTDV,   16, 
                        BTMN,   8, 
                        Offset (0x93), 
                        BTST,   8, 
                        Offset (0x9D), 
                        OSTP,   1, 
                        Offset (0xA0), 
                        ABMD,   8, 
                        ABTS,   1, 
                        ABFC,   1, 
                            ,   4, 
                        ABDX,   1, 
                        ABAD,   1, 
                        ABCG,   1, 
                            ,   2, 
                        ABTP,   1, 
                        Offset (0xA8), 
                        ACYC,   16, 
                        ATMP,   16, 
                        ADAT,   16, 
                        ABCR,   16, 
                        ABRM,   16, 
                        ABVG,   16, 
                        ARTF,   16, 
                        AMER,   8, 
                        Offset (0xB8), 
                        AFCC,   16, 
                        ABSN,   16, 
                        ABDC,   16, 
                        ABDV,   16, 
                        ABMN,   8, 
                        Offset (0xD0), 
                        EBPL,   1, 
                        Offset (0xD1), 
                        PWRE,   1, 
                        Offset (0xD2), 
                            ,   6, 
                        VAUX,   1, 
                        Offset (0xD5), 
                        ECDY,   8, 
                        DBPL,   8, 
                        Offset (0xE0), 
                        DESP,   8, 
                        DTST,   8, 
                        DE0L,   8, 
                        DE0H,   8, 
                        DE1L,   8, 
                        DE1H,   8, 
                        DE2L,   8, 
                        DE2H,   8, 
                        DE3L,   8, 
                        DE3H,   8, 
                        DE4L,   8, 
                        DE4H,   8
                    }

                    OperationRegion (EROM, SystemMemory, 0xFF808001, 0x0100)
                    Field (EROM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x80), 
                        ATAG,   256, 
                        Offset (0xF6), 
                        C6SW,   8, 
                        Offset (0xFA), 
                        C6S2,   8, 
                        Offset (0xFD), 
                        SIMU,   8
                    }

                    Mutex (MUT1, 0x00)
                    Mutex (MUT0, 0x00)
                    Method (APOL, 1, NotSerialized)
                    {
                        DBPL = Arg0
                        EBPL = One
                    }

                    Name (PSTA, Zero)
                    Method (CPOL, 1, NotSerialized)
                    {
                        If ((PSTA == Zero))
                        {
                            If ((ECOK != Zero))
                            {
                                APOL (Arg0)
                                PSTA = One
                            }
                        }
                    }

                    Name (BATO, 0x80)
                    Name (BATN, Zero)
                    Name (ECEV, 0xC0)
                    Name (SMB, Zero)
                    Name (HHS, Zero)
                    Name (Q29F, Zero)
                    Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((SMST & 0x40))
                        {
                            Local0 = SMAA /* \_SB_.PCI0.LPCB.EC0_.SMAA */
                            If ((Local0 == 0x14))
                            {
                                SELE ()
                                If ((0x40 & ECEV))
                                {
                                    Notify (BAT1, 0x81) // Information Change
                                }

                                If ((0x02 & ECEV))
                                {
                                    If ((SGST != Zero))
                                    {
                                        If ((Q29F == Zero))
                                        {
                                            If ((One & ECEV))
                                            {
                                                QQA8 ()
                                            }
                                            Else
                                            {
                                                QQA7 ()
                                            }
                                        }
                                    }

                                    Notify (ACAD, Zero) // Bus Check
                                }

                                ^^^^BAT1.RCAP = Zero
                                Notify (BAT1, 0x80) // Status Change
                                BATO = BATD /* \_SB_.PCI0.LPCB.EC0_.BATD */
                                SMST &= 0xBF
                            }
                        }
                    }

                    Method (SELE, 0, NotSerialized)
                    {
                        BATN = BATD /* \_SB_.PCI0.LPCB.EC0_.BATD */
                        ECEV = Zero
                        If ((0xC0 & BATN))
                        {
                            ECEV |= One
                            If ((0x0300 & BATN))
                            {
                                ECEV |= 0x04
                            }
                        }

                        Local0 = (BATN & One)
                        Local1 = (BATO & One)
                        If (Local0)
                        {
                            ECEV |= 0x0100
                        }
                        Else
                        {
                            ECEV &= 0xFEFF
                        }

                        If (~(Local0 == Local1))
                        {
                            ECEV |= 0x40
                        }

                        Local0 = (BATN & 0x02)
                        Local1 = (BATO & 0x02)
                        If (Local0)
                        {
                            ECEV |= 0x0200
                        }
                        Else
                        {
                            ECEV &= 0xFDFF
                        }

                        If (~(Local0 == Local1))
                        {
                            ECEV |= 0x80
                        }

                        Local0 = (BATN & 0xC0)
                        Local1 = (BATO & 0xC0)
                        If (~(Local0 == Local1))
                        {
                            ECEV |= 0x02
                        }

                        If ((One & ECEV))
                        {
                            If ((0x04 & ECEV))
                            {
                                If ((BATN & 0x20))
                                {
                                    ECEV |= 0x10
                                }
                                Else
                                {
                                    ECEV |= 0x20
                                }
                            }
                        }
                    }

                    Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (BAT1, 0x81) // Information Change
                    }

                    Method (_Q8C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        TDTY = 0x05
                        DTYE = One
                        Notify (\_TZ.THRM, 0x80) // Thermal Status Change
                    }

                    Method (_Q8D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        DTYE = Zero
                        Notify (\_TZ.THRM, 0x80) // Thermal Status Change
                    }

                    Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.THRM, 0x80) // Thermal Status Change
                    }

                    Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.THRM, 0x80) // Thermal Status Change
                    }

                    Method (_Q9B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (LID, 0x80) // Status Change
                    }

                    Method (_Q9C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (LID, 0x80) // Status Change
                    }

                    Name (DGFL, Zero)
                    Method (_QA3, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Debug = "DisplayPort Plug Out"
                    }

                    Method (_QA4, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Debug = "DisplayPort Plug In"
                        _QA6 ()
                    }

                    Method (_QA5, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Debug = "HDMI Plug Out"
                    }

                    Method (_QA6, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Debug = "HDMI Plug In"
                        If ((SGST == 0x02))
                        {
                            If ((SGST == 0x02))
                            {
                                HHS = 0x02
                                Notify (GFX0, 0xD0) // Hardware-Specific
                            }
                        }
                    }

                    Method (_Q29, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (NLID)
                        {
                            NLID = Zero
                            If (LIDT)
                            {
                                Notify (LID, 0x80) // Status Change
                            }
                        }
                        ElseIf ((Q29F == One))
                        {
                            Q29F = Zero
                            AJBC ()
                        }
                        ElseIf ((Q29F == 0x02))
                        {
                            Q29F = Zero
                            If ((SGST != Zero))
                            {
                                If (ACDF)
                                {
                                    BBST = Zero
                                    _QA8 ()
                                }
                                Else
                                {
                                    _QA7 ()
                                }
                            }
                            ElseIf ((OSYS < 0x07D6))
                            {
                                AJBC ()
                            }
                        }
                    }

                    Method (Z011, 0, NotSerialized)
                    {
                        If ((SGST == 0x02))
                        {
                            If ((GO36 == One))
                            {
                                Notify (GFX0, 0x80) // Status Change
                            }
                            Else
                            {
                                Notify (GFX0, 0x80) // Status Change
                            }
                        }
                        ElseIf ((SGST == One))
                        {
                            DRUL ()
                        }
                        Else
                        {
                            ^^^GFX0.GHDS (Zero)
                        }
                    }

                    Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x0B
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q8B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x0C
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q8E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((OSYS < 0x07D6))
                        {
                            If ((^^^^WMID.BAEF == One))
                            {
                                ^^^^WMID.WMIQ = 0x05
                                Notify (WMID, 0x80) // Status Change
                                Sleep (0xC8)
                            }

                            Local0 = (^^^GFX0.BCLP & 0xFF)
                            Local1 = Zero
                            While ((Local0 > DerefOf (PNLT [Local1])))
                            {
                                Local1++
                                If ((Local1 == 0x09))
                                {
                                    Break
                                }
                            }

                            BLCV = DerefOf (PNLT [Local1])
                            ISBC (DerefOf (PNLT [Local1]))
                        }

                        BOWN = 0x03
                        Local0 = BLVL /* \_SB_.PCI0.LPCB.EC0_.BLVL */
                        BRTN = Local0
                        If (((SGST == 0x02) || (SGST == Zero)))
                        {
                            Notify (^^^GFX0.DD02, 0x86) // Device-Specific
                            If ((OSYS == 0x07D9))
                            {
                                Notify (^^^P0P2.PEGP.DD02, 0x86) // Device-Specific
                            }

                            If (((OSYS < 0x07D6) || !(0x04 && DSEN)))
                            {
                                Local0 = (^^^GFX0.BCLP & 0xFF)
                                Local1 = Zero
                                While ((Local0 > DerefOf (PNLT [Local1])))
                                {
                                    Local1++
                                }

                                If ((Local1 < 0x09))
                                {
                                    Local1++
                                }

                                BLCV = DerefOf (PNLT [Local1])
                                ISBC (DerefOf (PNLT [Local1]))
                            }
                        }
                        Else
                        {
                            Notify (^^^P0P2.VGA.LCD, 0x86) // Device-Specific
                        }

                        HKGE (0x61, Zero)
                    }

                    Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((OSYS < 0x07D6))
                        {
                            If ((^^^^WMID.BAEF == One))
                            {
                                ^^^^WMID.WMIQ = 0x05
                                Notify (WMID, 0x80) // Status Change
                                Sleep (0xC8)
                            }

                            Local0 = (^^^GFX0.BCLP & 0xFF)
                            Local1 = Zero
                            While ((Local0 > DerefOf (PNLT [Local1])))
                            {
                                Local1++
                                If ((Local1 == 0x09))
                                {
                                    Break
                                }
                            }

                            BLCV = DerefOf (PNLT [Local1])
                            ISBC (DerefOf (PNLT [Local1]))
                        }

                        BOWN = 0x03
                        Local0 = BLVL /* \_SB_.PCI0.LPCB.EC0_.BLVL */
                        BRTN = Local0
                        If (((SGST == 0x02) || (SGST == Zero)))
                        {
                            Notify (^^^GFX0.DD02, 0x87) // Device-Specific
                            If ((OSYS == 0x07D9))
                            {
                                Notify (^^^P0P2.PEGP.DD02, 0x87) // Device-Specific
                            }

                            If (((OSYS < 0x07D6) || !(0x04 && DSEN)))
                            {
                                Local0 = (^^^GFX0.BCLP & 0xFF)
                                Local1 = Zero
                                While ((Local0 > DerefOf (PNLT [Local1])))
                                {
                                    Local1++
                                }

                                If ((Local0 > Zero))
                                {
                                    Local1--
                                }

                                BLCV = DerefOf (PNLT [Local1])
                                ISBC (DerefOf (PNLT [Local1]))
                            }
                        }
                        Else
                        {
                            Notify (^^^P0P2.VGA.LCD, 0x87) // Device-Specific
                        }

                        HKGE (0x62, Zero)
                    }

                    Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = One
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q91, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x02
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q92, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x03
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q93, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x04
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x0D
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x0E
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q94, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x09
                            Notify (WMID, 0x82) // Device-Specific Change
                        }
                    }

                    Method (_Q95, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x08
                            Notify (WMID, 0x82) // Device-Specific Change
                        }
                    }

                    Method (_Q9D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x0F
                            Notify (WMID, 0x80) // Status Change
                        }

                        HKGE (0x63, Zero)
                    }

                    Method (_Q9E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.BAEF == One))
                        {
                            ^^^^WMID.WMIQ = 0x10
                            Notify (WMID, 0x80) // Status Change
                        }

                        HKGE (0x63, Zero)
                    }

                    Method (_QA7, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        QQA7 ()
                        If ((OSYS == 0x07D9))
                        {
                            If ((^^^^WMID.BAEF == One))
                            {
                                ^^^^WMID.WMIQ = 0x11
                                Notify (WMID, 0x80) // Status Change
                                HKGE (0x85, 0x10)
                            }
                        }
                    }

                    Method (QQA7, 0, NotSerialized)
                    {
                        FL04 = One
                        If ((OSYS == 0x07D9))
                        {
                            If ((^^^^WMID.BAEF == One))
                            {
                                If ((ACDF == Zero))
                                {
                                    BBST = One
                                }
                            }
                            ElseIf ((ACDF == Zero))
                            {
                                If ((SGST == 0x02))
                                {
                                    If ((FL05 != One))
                                    {
                                        SMB = 0x02
                                        HHS = One
                                        Notify (GFX0, 0xD0) // Hardware-Specific
                                    }

                                    FL05 = Zero
                                    Q29F = One
                                    ECDY = 0x32
                                }
                                Else
                                {
                                    BBST = One
                                    AJBC ()
                                }
                            }
                        }
                        ElseIf ((ACDF == Zero))
                        {
                            BBST = One
                            AJBC ()
                        }
                    }

                    Method (_QA8, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        QQA8 ()
                        If ((OSYS == 0x07D9))
                        {
                            If ((^^^^WMID.BAEF == One))
                            {
                                ^^^^WMID.WMIQ = 0x12
                                Notify (WMID, 0x80) // Status Change
                                HKGE (0x85, Zero)
                            }
                        }
                    }

                    Method (QQA8, 0, NotSerialized)
                    {
                        FL04 = Zero
                        If ((OSYS == 0x07D9))
                        {
                            If ((^^^^WMID.BAEF == One))
                            {
                                BBST = Zero
                            }
                            ElseIf ((SGST == 0x02))
                            {
                                SMB = One
                                HHS = 0x02
                                Notify (GFX0, 0xD0) // Hardware-Specific
                                Q29F = One
                                ECDY = 0x32
                            }
                            Else
                            {
                                BBST = Zero
                                AJBC ()
                            }
                        }
                        Else
                        {
                            BBST = Zero
                            AJBC ()
                        }
                    }

                    Method (_QA9, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((^^^^WMID.ODDP == One))
                        {
                            ^^^^WMID.WMIQ = 0x13
                            Notify (WMID, 0x80) // Status Change
                        }
                        ElseIf (((OSYS < 0x07D6) && LMAT))
                        {
                            HKGE (0x81, Zero)
                        }
                        Else
                        {
                            PHSR (0x0A, Zero)
                        }
                    }

                    Method (_QAA, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Local1 = PPCM /* \PPCM */
                        Local1--
                        \_PR.CPU0._PPC = Local1
                        Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                        Sleep (0x64)
                        \_PR.CPU1._PPC = Local1
                        Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                        Sleep (0x64)
                    }

                    Method (_Q01, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Local0 = Zero
                        If ((WLST == One))
                        {
                            Local0 |= One
                        }

                        If ((ED3G == One))
                        {
                            Local0 |= 0x40
                        }

                        If ((BLTS == One))
                        {
                            Local0 |= 0x0800
                        }

                        HKGE (One, Local0)
                    }

                    Method (_Q02, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKBE (One)
                    }

                    Method (_Q04, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x83, Zero)
                    }

                    Method (_Q05, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x82, Zero)
                    }

                    Method (_Q06, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x82, 0x02)
                    }

                    Method (_Q07, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x84, 0x08)
                    }

                    Method (_Q08, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x84, Zero)
                    }

                    Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x21, Zero)
                    }

                    Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x22, Zero)
                    }

                    Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x24, Zero)
                    }

                    Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x23, Zero)
                    }

                    Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If ((LMAT == One))
                        {
                            HKGE (0x64, Zero)
                        }
                        Else
                        {
                            Z011 ()
                        }
                    }

                    Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKBE (0x64)
                    }

                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x25, Zero)
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        HKGE (0x26, Zero)
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Local0 = Zero
                        If ((WLST == One))
                        {
                            Local0 |= One
                        }

                        HKGE (0x02, Local0)
                    }

                    Method (HKGE, 2, NotSerialized)
                    {
                        ^^^^WMID.WEDR = Zero
                        ^^^^WMID.WED0 = One
                        ^^^^WMID.WED1 = Arg0
                        ^^^^WMID.WED2 = Arg1
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (HKBE, 1, NotSerialized)
                    {
                        ^^^^WMID.WEDR = Zero
                        ^^^^WMID.WED0 = 0x02
                        ^^^^WMID.WED1 = Arg0
                        Notify (WMID, 0xBC) // Device-Specific
                    }
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((OSYS < 0x07D6))
                        {
                            Return (0xFFFF)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (HBP0)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBP1)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                        }

                        Device (HBP2)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                        }

                        Device (HBP3)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                        }

                        Device (HBP4)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                        }

                        Device (HBP5)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBP6)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBP7)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((OSYS < 0x07D6))
                        {
                            Return (0xFFFF)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (HBP8)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBP9)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBPA)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                            {
                                Return (0x03)
                            }

                            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                            {
                                Return (0x03)
                            }
                        }

                        Device (HBPB)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBPC)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBPD)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((OSYS < 0x07D6))
                    {
                        Return (Package (0x02)
                        {
                            0x0D, 
                            Zero
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0D, 
                            0x03
                        })
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
                Field (HDAR, WordAcc, NoLock, Preserve)
                {
                    DCKA,   1, 
                    Offset (0x01), 
                    DCKM,   1, 
                        ,   6, 
                    DCKS,   1, 
                    Offset (0x08), 
                        ,   15, 
                    PMES,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x04
                })
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }

                Device (GLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06 ())
                    }

                    Return (PR06 ())
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08 ())
                    }

                    Return (PR08 ())
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09) /* \_SB_.AR09 */
                    }

                    Return (PR09) /* \_SB_.PR09 */
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E) /* \_SB_.AR0E */
                    }

                    Return (PR0E) /* \_SB_.PR0E */
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F) /* \_SB_.AR0F */
                    }

                    Return (PR0F) /* \_SB_.PR0F */
                }
            }

            Device (IO10)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
                Field (IBUS, DWordAcc, NoLock, Preserve)
                {
                        ,   26, 
                    TOLM,   6, 
                        ,   26, 
                    TOHM,   38, 
                    Offset (0xB0), 
                    VTEN,   1, 
                        ,   11, 
                    VTBA,   20
                }
            }

            Device (IO1X)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
                Field (PBIC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x7C), 
                    SR0,    32, 
                    SR1,    32, 
                    SR2,    32, 
                    SR3,    32, 
                    SR4,    32, 
                    SR5,    32, 
                    SR6,    32, 
                    SR7,    32, 
                    SR8,    32, 
                    SR9,    32
                }
            }

            Device (IIO0)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
                Field (IBUS, DWordAcc, NoLock, Preserve)
                {
                        ,   26, 
                    TOLM,   6, 
                        ,   26, 
                    TOHM,   38, 
                    Offset (0xB0), 
                    VTEN,   1, 
                        ,   11, 
                    VTBA,   20
                }
            }

            Device (IIOX)
            {
                Name (_ADR, 0x00140001)  // _ADR: Address
                OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
                Field (PBIC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x7C), 
                    SR0,    32, 
                    SR1,    32, 
                    SR2,    32, 
                    SR3,    32, 
                    SR4,    32, 
                    SR5,    32, 
                    SR6,    32, 
                    SR7,    32, 
                    SR8,    32, 
                    SR9,    32
                }
            }

            Device (PEG4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Device (PEG5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C) /* \_SB_.AR0C */
                    }

                    Return (PR0C) /* \_SB_.PR0C */
                }
            }

            Device (PEG6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00000410, 0x06) {}
        Processor (CPU1, 0x01, 0x00000410, 0x06) {}
        Processor (CPU2, 0x02, 0x00000410, 0x06) {}
        Processor (CPU3, 0x03, 0x00000410, 0x06) {}
        Processor (CPU4, 0x04, 0x00000410, 0x06) {}
        Processor (CPU5, 0x05, 0x00000410, 0x06) {}
        Processor (CPU6, 0x06, 0x00000410, 0x06) {}
        Processor (CPU7, 0x07, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        APMC,   8
    }

    OperationRegion (PJNA, SystemMemory, 0xFFF2E000, 0x04)
    Field (PJNA, DWordAcc, Lock, Preserve)
    {
        PRJN,   32
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        If ((Arg0 == 0x03))
        {
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If ((Arg0 == 0x04))
        {
            INS4 = One
            \_SB.PCI0.LPCB.EC0.FLS4 = One
        }

        If ((Arg0 == 0x05))
        {
            EPMF = \_SB.WMID.BAEF
        }

        FL05 = Zero
        FL04 = \_SB.PCI0.LPCB.EC0.BBST
        If (((Arg0 == 0x05) | (Arg0 == 0x04)))
        {
            \_SB.PCI0.LPCB.EC0.BBST = Zero
        }

        FL03 = \_SB.PCI0.LPCB.EC0.ACDF
        If (((Arg0 == 0x04) || (Arg0 == 0x03)))
        {
            \_SB.PCI0.LPCB.EC0.RDBT = \_SB.PCI0.LPCB.EC0.BLTS
            \_SB.PCI0.LPCB.EC0.RDWL = \_SB.PCI0.LPCB.EC0.WLST
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x14)
            }

            If ((OSYS == 0x07D2))
            {
                If ((CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }
        }

        If (((Arg0 == 0x04) || (Arg0 == 0x03)))
        {
            \_SB.PCI0.LPCB.EC0.BLTH = \_SB.BTEN
            \_SB.PCI0.LPCB.EC0.WLAN = \_SB.WLAN
            \_SB.PCI0.LPCB.EC0.ST3G = \_SB.EX3G
            \_SB.PCI0.LPCB.EC0.EDTS = One
            \_SB.PCI0.LPCB.EC0.BLTS = \_SB.PCI0.LPCB.EC0.RDBT
            \_SB.PCI0.LPCB.EC0.WLST = \_SB.PCI0.LPCB.EC0.RDWL
            \_SB.PCI0.LPCB.EC0.CPLE = One
            \_SB.PHSR (One, One)
            Notify (\_SB.BAT1, 0x80) // Status Change
            S34R = One
        }

        If ((Arg0 == 0x04))
        {
            \_SB.PCI0.LPCB.EC0.BATO = \_SB.PCI0.LPCB.EC0.BATD
            INS4 = Zero
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x03))
        {
            If ((SGST == 0x02))
            {
                \_SB.PCI0.P0P2.PEGP.DDMI ()
            }

            \_SB.PHSR (0x02, One)
        }

        NLID = Zero
        If (((Arg0 == 0x03) && (\_SB.PCI0.LPCB.EC0.LIDT == One)))
        {
            NLID = One
            \_SB.PCI0.LPCB.EC0.ECDY = 0x64
        }

        If ((SGST != Zero))
        {
            If (\_SB.PCI0.LPCB.EC0.ACDF)
            {
                \_SB.PCI0.LPCB.EC0.BBST = Zero
            }
            ElseIf (FL03)
            {
                \_SB.PCI0.LPCB.EC0.BBST = One
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.BBST = FL04 /* \FL04 */
                FL05 = One
            }
        }

        If ((SGST != Zero))
        {
            If ((OSYS == 0x07D9))
            {
                If ((\_SB.WMID.BAEF != One))
                {
                    If ((SGST == 0x02))
                    {
                        \_SB.PCI0.LPCB.EC0.Q29F = 0x02
                        \_SB.PCI0.LPCB.EC0.ECDY = 0x64
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.Q29F = One
                        \_SB.PCI0.LPCB.EC0.ECDY = 0x64
                    }
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.Q29F = One
                \_SB.PCI0.LPCB.EC0.ECDY = 0x32
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (PNOT, 0, Serialized)
    {
        If ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                If ((PDC4 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81) // C-State Change
                }
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                If ((PDC5 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81) // C-State Change
                }
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                If ((PDC6 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81) // C-State Change
                }
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
                If ((PDC7 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == TRTP))
        {
            TRP0 = Zero
        }

        If ((Arg0 == TRTD))
        {
            DTSF = Arg1
            TRPD = Zero
            Return (DTSF) /* \DTSF */
        }

        If ((Arg0 == TRTI))
        {
            TRPH = Zero
        }

        Return (SMIF) /* \SMIF */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSYS = 0x07D0
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                }

                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }
            }

            If ((OSYS >= 0x07D6))
            {
                If ((SGST == 0x02))
                {
                    ^P0P2.PEGP.VSAV ()
                }
            }

            ^GFX0.GFXI ()
            If ((SGST != Zero))
            {
                If (^LPCB.EC0.ACDF)
                {
                    ^LPCB.EC0.BBST = Zero
                }
                Else
                {
                    ^LPCB.EC0.BBST = One
                }
            }

            ^LPCB.EC0.Q29F = 0x02
            ^LPCB.EC0.ECDY = 0xF0
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP04.PMEX = Zero
            ^RP05.PMEX = Zero
            ^RP07.PMEX = Zero
            ^RP08.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
            ^RP04.PMSX = One
            ^RP05.PMSX = One
            ^RP07.PMSX = One
            ^RP08.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y0F._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                If ((^^TMRP.TRID == 0x3B32))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._LEN, TMRL)  // _LEN: Length
                    TMRL = Zero
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TMB0)  // _BAS: Base Address
                    TMB0 = (^^TMRP.TARB << 0x0C)
                }
                Else
                {
                    TTDR = Zero
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, TMR1)  // _BAS: Base Address
                    TMR1 = (^^TMRP.TBAR << 0x0C)
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TMB1)  // _BAS: Base Address
                    TMB1 = (^^TMRP.TARB << 0x0C)
                    TTDR = One
                }

                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._LEN, MBLN)  // _LEN: Length
                    MBLN = Zero
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, MBR0)  // _BAS: Base Address
                    MBR0 = (MHBR << 0x0E)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, DBR0)  // _BAS: Base Address
                DBR0 = (DIBR << 0x0C)
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    DBR0 = (DIBI << 0x0C)
                }

                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._LEN, EBLN)  // _LEN: Length
                    EBLN = Zero
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, EBR0)  // _BAS: Base Address
                    EBR0 = (EPBR << 0x0C)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, XBR0)  // _BAS: Base Address
                XBR0 = (^^^CPBG.IMCH.PXBR << 0x14)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, XSZ0)  // _LEN: Length
                XSZ0 = (0x10000000 >> ^^^CPBG.IMCH.PXSZ) /* \_SB_.CPBG.IMCH.PXSZ */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, VTB0)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, VTLN)  // _LEN: Length
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    If ((PNHM >= 0x000106E1))
                    {
                        If (^^IO10.VTEN)
                        {
                            VTB0 = (^^IO10.VTBA << 0x0C)
                        }
                        Else
                        {
                            VTLN = Zero
                        }
                    }
                    ElseIf (^^IIO0.VTEN)
                    {
                        VTB0 = (^^IIO0.VTBA << 0x0C)
                    }
                    Else
                    {
                        VTLN = Zero
                    }
                }
                ElseIf (ADVE)
                {
                    VTB0 = (ADVT << 0x0C)
                }
                Else
                {
                    VTLN = Zero
                }

                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0500, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            TDTY,   3, 
            DTYE,   1, 
            Offset (0x20), 
                ,   2, 
            SPST,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            GO16,   1, 
            GI17,   1, 
            Offset (0x0F), 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
                ,   3, 
            GO35,   1, 
            GO36,   1, 
            GI37,   1, 
                ,   1, 
            GO39,   1, 
                ,   6, 
            GO46,   1, 
            Offset (0x3A), 
                ,   4, 
            GO52,   1, 
            GO53,   1, 
            Offset (0x3B), 
            Offset (0x3C), 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
                ,   3, 
            GO67,   1, 
            Offset (0x49), 
            Offset (0x4A), 
            Offset (0x4B), 
            Offset (0x4C)
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            TTDR,   1
        }

        OperationRegion (PTBA, SystemMemory, TBAB, 0x1000)
        Field (PTBA, AnyAcc, NoLock, Preserve)
        {
            Offset (0x12), 
            PCTA,   16, 
            Offset (0x1A), 
            PTRC,   16, 
            Offset (0x30), 
            CTV1,   16, 
            CTV2,   16, 
            Offset (0x60), 
            PMCP,   16
        }

        Method (GETP, 1, Serialized)
        {
            If (((Arg0 & 0x09) == Zero))
            {
                Return (0xFFFFFFFF)
            }

            If (((Arg0 & 0x09) == 0x08))
            {
                Return (0x0384)
            }

            Local0 = ((Arg0 & 0x0300) >> 0x08)
            Local1 = ((Arg0 & 0x3000) >> 0x0C)
            Return ((0x1E * (0x09 - (Local0 + Local1))))
        }

        Method (GDMA, 5, Serialized)
        {
            If (Arg0)
            {
                If ((Arg1 && Arg4))
                {
                    Return (0x14)
                }

                If ((Arg2 && Arg4))
                {
                    Return (((0x04 - Arg3) * 0x0F))
                }

                Return (((0x04 - Arg3) * 0x1E))
            }

            Return (0xFFFFFFFF)
        }

        Method (GETT, 1, Serialized)
        {
            Return ((0x1E * (0x09 - (((Arg0 >> 0x02) & 0x03
                ) + (Arg0 & 0x03)))))
        }

        Method (GETF, 3, Serialized)
        {
            Name (TMPF, Zero)
            If (Arg0)
            {
                TMPF |= One
            }

            If ((Arg2 & 0x02))
            {
                TMPF |= 0x02
            }

            If (Arg1)
            {
                TMPF |= 0x04
            }

            If ((Arg2 & 0x20))
            {
                TMPF |= 0x08
            }

            If ((Arg2 & 0x4000))
            {
                TMPF |= 0x10
            }

            Return (TMPF) /* \GETF.TMPF */
        }

        Method (SETP, 3, Serialized)
        {
            If ((Arg0 > 0xF0))
            {
                Return (0x08)
            }
            ElseIf ((Arg1 & 0x02))
            {
                If (((Arg0 <= 0x78) && (Arg2 & 0x02)))
                {
                    Return (0x2301)
                }

                If (((Arg0 <= 0xB4) && (Arg2 & One)))
                {
                    Return (0x2101)
                }
            }
        }

        Method (SDMA, 1, Serialized)
        {
            If ((Arg0 <= 0x14))
            {
                Return (One)
            }

            If ((Arg0 <= 0x1E))
            {
                Return (0x02)
            }

            If ((Arg0 <= 0x2D))
            {
                Return (One)
            }

            If ((Arg0 <= 0x3C))
            {
                Return (0x02)
            }

            If ((Arg0 <= 0x5A))
            {
                Return (One)
            }

            Return (Zero)
        }

        Method (SETT, 3, Serialized)
        {
            If ((Arg1 & 0x02))
            {
                If (((Arg0 <= 0x78) && (Arg2 & 0x02)))
                {
                    Return (0x0B)
                }

                If (((Arg0 <= 0xB4) && (Arg2 & One)))
                {
                    Return (0x09)
                }
            }

            Return (0x04)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
            Field (SACS, DWordAcc, NoLock, Preserve)
            {
                PRIT,   16, 
                SECT,   16, 
                PSIT,   4, 
                SSIT,   4, 
                Offset (0x08), 
                SYNC,   4, 
                Offset (0x0A), 
                SDT0,   2, 
                    ,   2, 
                SDT1,   2, 
                Offset (0x0B), 
                SDT2,   2, 
                    ,   2, 
                SDT3,   2, 
                Offset (0x14), 
                ICR0,   4, 
                ICR1,   4, 
                ICR2,   4, 
                ICR3,   4, 
                ICR4,   4, 
                ICR5,   4, 
                Offset (0x50), 
                MAPV,   2
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
            OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
            Field (SACS, DWordAcc, NoLock, Preserve)
            {
                PRIT,   16, 
                SECT,   16, 
                PSIT,   4, 
                SSIT,   4, 
                Offset (0x08), 
                SYNC,   4, 
                Offset (0x0A), 
                SDT0,   2, 
                    ,   2, 
                SDT1,   2, 
                Offset (0x0B), 
                SDT2,   2, 
                    ,   2, 
                SDT3,   2, 
                Offset (0x14), 
                ICR0,   4, 
                ICR1,   4, 
                ICR2,   4, 
                ICR3,   4, 
                ICR4,   4, 
                ICR5,   4, 
                Offset (0x50), 
                MAPV,   2
            }
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                TBUF [Zero] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (TBUF [Zero])))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }

        Device (TMRP)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address
            OperationRegion (TRCS, PCI_Config, Zero, 0x50)
            Field (TRCS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                TRID,   16, 
                Offset (0x10), 
                SPTP,   1, 
                    ,   11, 
                TBAR,   20, 
                Offset (0x40), 
                SPEN,   1, 
                    ,   11, 
                TARB,   20
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            P8XH (Zero, One)
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If (((RP4D == Zero) && \_SB.PCI0.RP04.HPSX))
            {
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }

            If (((RP5D == Zero) && \_SB.PCI0.RP05.HPSX))
            {
                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = One
                    \_SB.PCI0.RP05.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = One
                }
            }

            If (((RP6D == Zero) && \_SB.PCI0.RP06.HPSX))
            {
                If (\_SB.PCI0.RP06.PDCX)
                {
                    \_SB.PCI0.RP06.PDCX = One
                    \_SB.PCI0.RP06.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP06.HPSX = One
                }
            }

            If (((RP7D == Zero) && \_SB.PCI0.RP07.HPSX))
            {
                If (\_SB.PCI0.RP07.PDCX)
                {
                    \_SB.PCI0.RP07.PDCX = One
                    \_SB.PCI0.RP07.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP07.HPSX = One
                }
            }

            If (((RP8D == Zero) && \_SB.PCI0.RP08.HPSX))
            {
                If (\_SB.PCI0.RP08.PDCX)
                {
                    \_SB.PCI0.RP08.PDCX = One
                    \_SB.PCI0.RP08.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP08.HPSX = One
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GPEC = Zero
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            If (CondRefOf (TNOT))
            {
                TNOT ()
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P2, 0x02) // Device Wake
            Notify (\_SB.PCI0.P0P2.PEGP, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP07, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP08, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG4, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG5, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG6, 0x02) // Device Wake
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02) // Device Wake
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
            Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
            Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }
    }

    OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
    Field (PBIC, DWordAcc, NoLock, Preserve)
    {
        Offset (0x7C), 
        SR0,    32, 
        SR1,    32, 
        SR2,    32, 
        SR3,    32, 
        SR4,    32, 
        SR5,    32, 
        SR6,    32, 
        SR7,    32, 
        SR8,    32, 
        SR9,    32
    }

    OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
    Field (IBUS, DWordAcc, NoLock, Preserve)
    {
            ,   26, 
        TOLM,   6, 
            ,   26, 
        TOHM,   38, 
        Offset (0xB0), 
        VTEN,   1, 
            ,   11, 
        VTBA,   20
    }

    Scope (_SB)
    {
        Device (CPBG)
        {
            Name (_HID, EisaId ("PNP0A03") /* PCI Bus */)  // _HID: Hardware ID
            Name (_UID, 0xFF)  // _UID: Unique ID
            Name (_BBN, 0xFF)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x00FF,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, )
            })
            Device (IMCH)
            {
                Name (_ADR, One)  // _ADR: Address
                OperationRegion (PBUS, PCI_Config, Zero, 0xC0)
                Field (PBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                        ,   4, 
                    PM0H,   2, 
                    Offset (0x41), 
                    PM1L,   2, 
                        ,   2, 
                    PM1H,   2, 
                    Offset (0x42), 
                    PM2L,   2, 
                        ,   2, 
                    PM2H,   2, 
                    Offset (0x43), 
                    PM3L,   2, 
                        ,   2, 
                    PM3H,   2, 
                    Offset (0x44), 
                    PM4L,   2, 
                        ,   2, 
                    PM4H,   2, 
                    Offset (0x45), 
                    PM5L,   2, 
                        ,   2, 
                    PM5H,   2, 
                    Offset (0x46), 
                    PM6L,   2, 
                        ,   2, 
                    PM6H,   2, 
                    Offset (0x47), 
                    Offset (0x48), 
                        ,   7, 
                    HENA,   1, 
                    Offset (0x50), 
                    PXEN,   1, 
                    PXSZ,   2, 
                        ,   17, 
                    PXBR,   12
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (DISW, One)
        Name (SWIT, One)
        Name (LCDA, One)
        Name (CRTA, One)
        Name (HDMA, One)
        Name (DP0A, One)
        Name (PDSP, Zero)
        Name (CDSP, Zero)
        Method (DRUL, 0, NotSerialized)
        {
            CDSP = PHSR (0x06, Zero)
            UNDS (CDSP)
            Sleep (0xC8)
            Notify (^P0P2.VGA, 0x80) // Status Change
            Sleep (0xC8)
        }

        Name (TGLT, Package (0x08)
        {
            Package (0x0A)
            {
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One
            }, 

            Package (0x0A)
            {
                One, 
                0x03, 
                One, 
                0x02, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One
            }, 

            Package (0x0A)
            {
                One, 
                0x05, 
                One, 
                One, 
                One, 
                0x04, 
                One, 
                One, 
                One, 
                One
            }, 

            Package (0x0A)
            {
                One, 
                0x09, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                0x08
            }, 

            Package (0x0A)
            {
                One, 
                0x03, 
                0x05, 
                0x02, 
                One, 
                0x04, 
                One, 
                One, 
                One, 
                One
            }, 

            Package (0x0A)
            {
                One, 
                0x03, 
                0x09, 
                0x02, 
                One, 
                One, 
                One, 
                One, 
                One, 
                0x08
            }, 

            Package (0x0A)
            {
                One, 
                0x05, 
                One, 
                One, 
                0x09, 
                0x04, 
                One, 
                One, 
                One, 
                0x08
            }, 

            Package (0x0A)
            {
                One, 
                0x03, 
                0x05, 
                0x02, 
                0x09, 
                0x04, 
                One, 
                One, 
                One, 
                0x08
            }
        })
        Name (TGLP, Zero)
        Method (UNDS, 1, NotSerialized)
        {
            Local0 = ((Arg0 & 0xF0) >> 0x04)
            Local1 = (Arg0 & 0x0F)
            If ((Local1 == One))
            {
                TGLP = Zero
            }
            ElseIf ((Local1 == 0x03))
            {
                TGLP = One
            }
            ElseIf ((Local1 == 0x05))
            {
                TGLP = 0x02
            }
            ElseIf ((Local1 == 0x09))
            {
                TGLP = 0x03
            }
            ElseIf ((Local1 == 0x07))
            {
                TGLP = 0x04
            }
            ElseIf ((Local1 == 0x0B))
            {
                TGLP = 0x05
            }
            ElseIf ((Local1 == 0x0D))
            {
                TGLP = 0x06
            }
            ElseIf ((Local1 == 0x0F))
            {
                TGLP = 0x07
            }

            Local2 = DerefOf (DerefOf (TGLT [TGLP]) [Local0])
            LCDA = ((Local2 & One) >> Zero)
            CRTA = ((Local2 & 0x02) >> One)
            HDMA = ((Local2 & 0x04) >> 0x02)
            DP0A = ((Local2 & 0x08) >> 0x03)
            Return (Local2)
        }
    }

    Scope (_SB.PCI0)
    {
        Name (PNLT, Buffer (0x0A)
        {
            /* 0000 */  0x19, 0x34, 0x3A, 0x62, 0x69, 0x93, 0xAA, 0xC3,  /* .4:bi... */
            /* 0008 */  0xD2, 0xFF                                       /* .. */
        })
        Method (CRBL, 0, NotSerialized)
        {
            ^GFX0.BLM0 = (DerefOf (PNLT [Zero]) | ((DerefOf (
                OBCL [0x02]) | 0x80) << 0x08))
            ^GFX0.BLM1 = (DerefOf (PNLT [One]) | ((DerefOf (
                OBCL [0x03]) | 0x80) << 0x08))
            ^GFX0.BLM2 = (DerefOf (PNLT [0x02]) | ((DerefOf (
                OBCL [0x04]) | 0x80) << 0x08))
            ^GFX0.BLM3 = (DerefOf (PNLT [0x03]) | ((DerefOf (
                OBCL [0x05]) | 0x80) << 0x08))
            ^GFX0.BLM4 = (DerefOf (PNLT [0x04]) | ((DerefOf (
                OBCL [0x06]) | 0x80) << 0x08))
            ^GFX0.BLM5 = (DerefOf (PNLT [0x05]) | ((DerefOf (
                OBCL [0x07]) | 0x80) << 0x08))
            ^GFX0.BLM6 = (DerefOf (PNLT [0x06]) | ((DerefOf (
                OBCL [0x08]) | 0x80) << 0x08))
            ^GFX0.BLM7 = (DerefOf (PNLT [0x07]) | ((DerefOf (
                OBCL [0x09]) | 0x80) << 0x08))
            ^GFX0.BLM8 = (DerefOf (PNLT [0x08]) | ((DerefOf (
                OBCL [0x0A]) | 0x80) << 0x08))
            ^GFX0.BLM9 = (DerefOf (PNLT [0x09]) | ((DerefOf (
                OBCL [0x0B]) | 0x80) << 0x08))
            ^GFX0.BLMX = Zero
        }

        Name (OBCL, Package (0x0C)
        {
            0x64, 
            0x1E, 
            0x0A, 
            0x14, 
            0x1E, 
            0x28, 
            0x32, 
            0x3C, 
            0x46, 
            0x50, 
            0x5A, 
            0x64
        })
        Method (OBCM, 1, NotSerialized)
        {
            Debug = "_BCM : Arg0 = "
            Debug = Arg0
            If ((BOWN == Zero))
            {
                Local0 = ((Arg0 / 0x0A) - One)
                BRTN = Local0
                ^LPCB.EC0.BLVL = Local0
                If ((OSYS < 0x07D6))
                {
                    If ((^^WMID.BAEF == One))
                    {
                        Sleep (0xC8)
                        ^^WMID.WMIQ = 0x05
                        Notify (WMID, 0x80) // Status Change
                    }
                }
            }
            Else
            {
                BOWN = Zero
            }
        }

        Method (OBQC, 0, NotSerialized)
        {
            Local0 = BRTN /* \BRTN */
            Return (((Local0 + One) * 0x0A))
        }

        Method (NBTP, 1, NotSerialized)
        {
            Local0 = ((Arg0 / 0x0A) - One)
            If (((SGST == 0x02) || (SGST == Zero)))
            {
                While (((^GFX0.CBLV & 0xFF) > ((DerefOf (PNLT [Local0]
                    ) * 0x64) / 0xFF)))
                {
                    Local1 = ^GFX0.CBLV /* \_SB_.PCI0.GFX0.CBLV */
                    Notify (^GFX0.DD02, 0x87) // Device-Specific
                    If ((OSYS == 0x07D9))
                    {
                        Notify (^P0P2.PEGP.DD02, 0x87) // Device-Specific
                    }

                    Local2 = 0x64
                    While (((^GFX0.CBLV == Local1) && Local2))
                    {
                        Sleep (0x0A)
                        Local2--
                    }

                    If ((Local2 == Zero))
                    {
                        Return (Zero)
                    }
                }

                While (((^GFX0.CBLV & 0xFF) < ((DerefOf (PNLT [Local0]
                    ) * 0x64) / 0xFF)))
                {
                    Local1 = ^GFX0.CBLV /* \_SB_.PCI0.GFX0.CBLV */
                    Notify (^GFX0.DD02, 0x86) // Device-Specific
                    If ((OSYS == 0x07D9))
                    {
                        Notify (^P0P2.PEGP.DD02, 0x86) // Device-Specific
                    }

                    Local2 = 0x64
                    While (((^GFX0.CBLV == Local1) && Local2))
                    {
                        Sleep (0x0A)
                        Local2--
                    }

                    If ((Local2 == Zero))
                    {
                        Return (Zero)
                    }
                }
            }
            Else
            {
                While ((^LPCB.EC0.BLVL > Local0))
                {
                    Local1 = ^LPCB.EC0.BLVL /* \_SB_.PCI0.LPCB.EC0_.BLVL */
                    Notify (^P0P2.VGA.LCD, 0x87) // Device-Specific
                    Local2 = 0x64
                    While (((^LPCB.EC0.BLVL == Local1) && Local2))
                    {
                        Sleep (0x0A)
                        Local2--
                    }

                    If ((Local2 == Zero))
                    {
                        Return (Zero)
                    }
                }

                While ((^LPCB.EC0.BLVL < Local0))
                {
                    Local1 = ^LPCB.EC0.BLVL /* \_SB_.PCI0.LPCB.EC0_.BLVL */
                    Notify (^P0P2.VGA.LCD, 0x86) // Device-Specific
                    Local2 = 0x64
                    While (((^LPCB.EC0.BLVL == Local1) && Local2))
                    {
                        Sleep (0x0A)
                        Local2--
                    }

                    If ((Local2 == Zero))
                    {
                        Return (Zero)
                    }
                }
            }
        }

        Method (ISBC, 1, NotSerialized)
        {
            ^GFX0.PARD ()
            ^GFX0.BCLP = Arg0
            ^GFX0.BCLP |= 0x80000000
            ^GFX0.ASLC = 0x02
            Local2 = 0x05
            While ((^GFX0.ASLC && Local2))
            {
                ^GFX0.ASLE = One
                Local2--
            }
        }

        Method (AJBC, 0, NotSerialized)
        {
            If ((SGST != Zero))
            {
                If ((OSYS == 0x07D9))
                {
                    If (^LPCB.EC0.ACDF)
                    {
                        If (^LPCB.EC0.BBST)
                        {
                            NBTP (0x1E)
                        }
                        Else
                        {
                            NBTP (0x64)
                        }
                    }
                    ElseIf (^LPCB.EC0.BBST)
                    {
                        NBTP (0x1E)
                    }
                    Else
                    {
                        NBTP (0x32)
                    }
                }
                ElseIf (^LPCB.EC0.ACDF)
                {
                    If (^LPCB.EC0.BBST)
                    {
                        ^LPCB.EC0.BLVL = 0x02
                        If ((SGST == 0x02))
                        {
                            BLCV = DerefOf (PNLT [0x02])
                            ISBC (BLCV)
                        }
                    }
                    Else
                    {
                        ^LPCB.EC0.BLVL = 0x09
                        If ((SGST == 0x02))
                        {
                            BLCV = DerefOf (PNLT [0x09])
                            ISBC (BLCV)
                        }
                    }
                }
                ElseIf (^LPCB.EC0.BBST)
                {
                    ^LPCB.EC0.BLVL = 0x02
                    If ((SGST == 0x02))
                    {
                        BLCV = DerefOf (PNLT [0x02])
                        ISBC (BLCV)
                    }
                }
                Else
                {
                    ^LPCB.EC0.BLVL = 0x04
                    If ((SGST == 0x02))
                    {
                        BLCV = DerefOf (PNLT [0x04])
                        ISBC (BLCV)
                    }
                }
            }
            ElseIf ((OSYS < 0x07D6))
            {
                ISBC (BLCV)
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

