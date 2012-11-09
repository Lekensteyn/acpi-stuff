/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20121018-64 [Oct 26 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of dsdt.dat, Fri Nov  9 23:48:38 2012
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000B648 (46664)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x8F
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */

DefinitionBlock ("dsdt.aml", "DSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{
    External (\_PR_.CPU0._PPC, IntObj)
    External (\_PR_.CPU0._PSS, IntObj)
    External (\_SB_.PCI0.IEIT.EITV, MethodObj)    // 0 Arguments
    External (\TNOT)
    External (CFGD)
    External (HDOS, MethodObj)    // 0 Arguments
    External (HNOT, MethodObj)    // 1 Arguments
    External (HWID, IntObj)
    External (IDAB, MethodObj)    // 0 Arguments
    External (PDC0)
    External (PDC1)
    External (PDC2)
    External (PDC3)
    External (PDC4)
    External (PDC5)
    External (PDC6)
    External (PDC7)
    External (SNXD)
    External (TNOT, MethodObj)    // 0 Arguments

    Name (ECDY, Zero)
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x8000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELS, 0x09)
    Name (BRHS, 0x0A)
    Name (BTFS, 0x0B)
    Name (BEHS, 0x0C)
    Name (BPHS, 0x0D)
    Name (BTL, 0x10)
    Name (BSR, 0x14)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (PDBR, 0x4D)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    OperationRegion (GNVS, SystemMemory, 0xBCFBCE18, 0x000001C2)
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
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
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
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
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
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        Offset (0xED), 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
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
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        CCMD,   8, 
        COMD,   8, 
        LPT1,   8, 
        PSTP,   8, 
        TPMM,   8, 
        TPCC,   8, 
        TPLC,   8, 
        TPLR,   32, 
        WKMD,   8, 
        IDER,   8, 
        PIE0,   8, 
        PIE1,   8, 
        CSTS,   8, 
        S3DS,   8, 
        PMEE,   8, 
        WOLE,   8, 
        NVAD,   32, 
        NVSZ,   32, 
        OPTF,   8
    }

    OperationRegion (OGNS, SystemMemory, 0xBCFBEF18, 0x00000015)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8, 
        BGU1,   8, 
        BST1,   8, 
        BFC1,   16, 
        TPDF,   8, 
        CMPS,   8, 
        ODTY,   8, 
        ODST,   8, 
        VTST,   8
    }

    OperationRegion (SMIO, SystemIO, 0xB2, 0x02)
    Field (SMIO, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    Method (OSMI, 1, NotSerialized)
    {
        Store (Arg0, APMD)
        Store (0xB2, APMC)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
    }

    Mutex (SMIX, 0x00)
    Method (SMID, 2, NotSerialized)
    {
        Acquire (SMIX, 0xFFFF)
        Store (Arg1, APMD)
        Store (Arg0, APMC)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Release (SMIX)
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    IndexField (CMSI, CMSD, ByteAcc, NoLock, Preserve)
    {
        Offset (0xF6), 
        BADC,   1, 
        BAEC,   1, 
        Offset (0xF8), 
        SDLC,   32
    }

    Method (CMSR, 1, NotSerialized)
    {
        Store (Arg0, CMSI)
        Store (CMSD, Local0)
        Return (Local0)
    }

    Method (CMSW, 2, NotSerialized)
    {
        Store (Arg0, CMSI)
        Store (Arg1, CMSD)
    }

    If (LNotEqual (TBAB, Zero))
    {
        OperationRegion (TBLK, SystemMemory, TBAB, 0x4000)
        Field (TBLK, AnyAcc, NoLock, Preserve)
        {
            Offset (0x24), 
            MMCH,   1, 
            MCPU,   1, 
            MBUD,   2, 
            Offset (0x26), 
            Offset (0x50), 
                ,   1, 
            MMTL,   7, 
            MGTD,   1, 
            MCTD,   1, 
            MPOL,   2, 
            MGPL,   9, 
            MCPL,   10, 
            Offset (0x54), 
            MMPL,   10, 
            Offset (0x56), 
            MTL,    16, 
            Offset (0x64), 
            MMPC,   16, 
            MPPC,   16, 
            MCPC,   16, 
            Offset (0x98), 
                ,   1, 
            NMTL,   7, 
            NGTD,   1, 
            NCTD,   1, 
            NPOL,   2, 
            NGPL,   9, 
            NCPL,   10, 
            Offset (0x9C), 
            Offset (0xA8), 
            Offset (0xAA), 
            TMPL,   10, 
            Offset (0xAC)
        }
    }

    OperationRegion (COMP, SystemMemory, 0xBCFBEF98, 0x00000014)
    Field (COMP, AnyAcc, Lock, Preserve)
    {
        IDMN,   16, 
        IDPC,   16, 
        BDID,   8, 
        CPFB,   8, 
        PBTI,   8, 
        BRLV,   8, 
        CG08,   8, 
        CG09,   8, 
        CG10,   8, 
        CG11,   8, 
        CG12,   8, 
        CG13,   8, 
        CG14,   8, 
        CG15,   8, 
        CG16,   8, 
        CG17,   8, 
        CG18,   8, 
        CG19,   8
    }

    Scope (_SB)
    {
        Device (WMI0)
        {
            Name (_HID, "pnp0c14")  // _HID: Hardware ID
            Name (_UID, "NVIF")  // _UID: Unique ID
            Name (_WDG, Buffer (0x78)
            {
                /* 0000 */   0xF2, 0x9A, 0x79, 0xA1, 0x29, 0x94, 0x29, 0x45,
                /* 0008 */   0x92, 0x7E, 0xDF, 0xE1, 0x37, 0x36, 0xEE, 0xBA,
                /* 0010 */   0x41, 0x42, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,
                /* 0018 */   0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                /* 0020 */   0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00,
                /* 0028 */   0xC3, 0x9A, 0x79, 0xA1, 0x29, 0x94, 0x29, 0x45,
                /* 0030 */   0x92, 0x7E, 0xDF, 0xE1, 0x37, 0x36, 0xEE, 0xBA,
                /* 0038 */   0xC3, 0x00, 0x00, 0x08, 0xC5, 0x9A, 0x79, 0xA1,
                /* 0040 */   0x29, 0x94, 0x29, 0x45, 0x92, 0x7E, 0xDF, 0xE1,
                /* 0048 */   0x37, 0x36, 0xEE, 0xBA, 0xC5, 0x00, 0x00, 0x08,
                /* 0050 */   0xCA, 0x9A, 0x79, 0xA1, 0x29, 0x94, 0x29, 0x45,
                /* 0058 */   0x92, 0x7E, 0xDF, 0xE1, 0x37, 0x36, 0xEE, 0xBA,
                /* 0060 */   0xCA, 0x00, 0x00, 0x08, 0xCB, 0x9A, 0x79, 0xA1,
                /* 0068 */   0x29, 0x94, 0x29, 0x45, 0x92, 0x7E, 0xDF, 0xE1,
                /* 0070 */   0x37, 0x36, 0xEE, 0xBA, 0xCB, 0x00, 0x00, 0x08
            })
            Name (WQBA, Buffer (0x1036)
            {
                /* 0000 */   0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */   0x26, 0x10, 0x00, 0x00, 0xC4, 0x58, 0x00, 0x00,
                /* 0010 */   0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */   0x28, 0xC4, 0xAB, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */   0x10, 0x3F, 0x10, 0x12, 0x46, 0x62, 0x02, 0xC9,
                /* 0028 */   0x82, 0x90, 0x14, 0x18, 0xF1, 0x18, 0xC6, 0x20,
                /* 0030 */   0x96, 0x04, 0x21, 0x07, 0x7C, 0x4C, 0x80, 0x10,
                /* 0038 */   0x08, 0xC9, 0x14, 0xE0, 0x5B, 0x80, 0x63, 0x01,
                /* 0040 */   0x86, 0x05, 0xC8, 0x16, 0x60, 0x19, 0x8A, 0x98,
                /* 0048 */   0x90, 0x00, 0x31, 0x34, 0x88, 0x38, 0x34, 0x84,
                /* 0050 */   0x10, 0x12, 0x01, 0x4B, 0x65, 0x8C, 0xC1, 0x10,
                /* 0058 */   0xD2, 0x09, 0x2B, 0xDB, 0xB0, 0x74, 0x37, 0x6D,
                /* 0060 */   0x0A, 0x30, 0x09, 0x89, 0x92, 0x07, 0x83, 0x1A,
                /* 0068 */   0x87, 0xFB, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
                /* 0070 */   0x67, 0x22, 0x83, 0x02, 0x9C, 0x22, 0x88, 0x20,
                /* 0078 */   0x90, 0x47, 0xC0, 0x9D, 0x0B, 0x10, 0x8E, 0xA2,
                /* 0080 */   0xF9, 0x9C, 0x83, 0x05, 0xC2, 0xA3, 0xC4, 0xC0,
                /* 0088 */   0xA3, 0x60, 0xA3, 0x9F, 0x49, 0x8B, 0xF0, 0x12,
                /* 0090 */   0x8A, 0xA2, 0x29, 0x44, 0x49, 0x50, 0x2E, 0x82,
                /* 0098 */   0x74, 0x41, 0x48, 0xE9, 0xF8, 0x84, 0x50, 0x3A,
                /* 00A0 */   0x34, 0x91, 0x36, 0x4C, 0x94, 0x9C, 0xF1, 0x40,
                /* 00A8 */   0xD2, 0x88, 0x42, 0x3C, 0xCE, 0x88, 0x0C, 0x06,
                /* 00B0 */   0x2B, 0x97, 0x9C, 0x8E, 0xDC, 0x02, 0x61, 0x50,
                /* 00B8 */   0x83, 0x07, 0x8F, 0x14, 0x42, 0x79, 0x80, 0x51,
                /* 00C0 */   0x94, 0x51, 0xA0, 0x06, 0xE4, 0xD1, 0x7B, 0xF0,
                /* 00C8 */   0xB8, 0xA9, 0x79, 0x0C, 0x16, 0x04, 0x21, 0x17,
                /* 00D0 */   0xC7, 0x00, 0x94, 0x72, 0x40, 0x61, 0x96, 0x0C,
                /* 00D8 */   0x4E, 0x07, 0xC8, 0x00, 0xF9, 0x20, 0xEC, 0x1A,
                /* 00E0 */   0x50, 0xE6, 0xE1, 0xE8, 0xA9, 0x00, 0x37, 0x28,
                /* 00E8 */   0xFF, 0xFF, 0x07, 0xFA, 0x42, 0x70, 0xE0, 0xA5,
                /* 00F0 */   0x0A, 0x30, 0x3B, 0x70, 0x8D, 0xDB, 0xA7, 0x80,
                /* 00F8 */   0x33, 0x39, 0x88, 0xA6, 0x05, 0xE8, 0x16, 0xE0,
                /* 0100 */   0x19, 0x92, 0x04, 0x82, 0x90, 0x93, 0x51, 0xA1,
                /* 0108 */   0xCE, 0x01, 0x1E, 0xA1, 0xBD, 0x0B, 0x90, 0x38,
                /* 0110 */   0x1A, 0xC1, 0x9E, 0x46, 0xF8, 0xB8, 0x27, 0xC6,
                /* 0118 */   0x06, 0x06, 0x1C, 0xAD, 0x8F, 0x8B, 0x4C, 0xA5,
                /* 0120 */   0x33, 0x01, 0xCA, 0x20, 0x49, 0xA4, 0x81, 0xA1,
                /* 0128 */   0xC7, 0x61, 0x91, 0x90, 0x9A, 0x5F, 0xD1, 0x13,
                /* 0130 */   0x83, 0x32, 0x32, 0x60, 0x3D, 0xA5, 0x63, 0xC0,
                /* 0138 */   0x8C, 0x8C, 0x03, 0x3F, 0x01, 0xD4, 0x0C, 0xAC,
                /* 0140 */   0xE1, 0x3C, 0x34, 0xF8, 0x8C, 0x61, 0x84, 0x18,
                /* 0148 */   0x07, 0xC4, 0xC4, 0x9D, 0x1F, 0xE8, 0x50, 0xE0,
                /* 0150 */   0x2B, 0x3E, 0x60, 0x90, 0x2B, 0x84, 0xA7, 0x77,
                /* 0158 */   0x30, 0x09, 0x62, 0x3D, 0x80, 0x80, 0xE1, 0x34,
                /* 0160 */   0xC2, 0x14, 0x4E, 0x8C, 0x60, 0x9F, 0xCF, 0xFF,
                /* 0168 */   0xFF, 0x28, 0x4F, 0x89, 0x9D, 0x39, 0x8E, 0xC8,
                /* 0170 */   0x28, 0xC7, 0x17, 0xEA, 0x25, 0x84, 0x1D, 0x01,
                /* 0178 */   0x7C, 0x0A, 0x01, 0x33, 0xCA, 0x7B, 0x0A, 0x3F,
                /* 0180 */   0x87, 0x80, 0x3D, 0xC8, 0x21, 0x04, 0x25, 0xFD,
                /* 0188 */   0x1C, 0x02, 0x4A, 0x91, 0xE7, 0x10, 0x1A, 0xE6,
                /* 0190 */   0x1C, 0x82, 0x06, 0xF6, 0xC1, 0xE1, 0x55, 0xC3,
                /* 0198 */   0xDA, 0x71, 0x05, 0xF2, 0x20, 0x02, 0x78, 0xFF,
                /* 01A0 */   0xFF, 0x1F, 0x44, 0x00, 0x87, 0x71, 0xCE, 0x09,
                /* 01A8 */   0xE8, 0xA3, 0x94, 0xA1, 0xDF, 0x18, 0x0E, 0xE6,
                /* 01B0 */   0x2D, 0xC4, 0x17, 0x20, 0xCC, 0x41, 0x01, 0x38,
                /* 01B8 */   0x9F, 0x11, 0x9E, 0x4A, 0xC0, 0x71, 0x05, 0x38,
                /* 01C0 */   0x82, 0x93, 0xC3, 0x5C, 0x49, 0xEC, 0xF3, 0x54,
                /* 01C8 */   0xA2, 0x83, 0x05, 0xFE, 0x50, 0x02, 0x9C, 0xFE,
                /* 01D0 */   0xFF, 0x87, 0x12, 0xF0, 0x09, 0x27, 0xA7, 0x40,
                /* 01D8 */   0x96, 0x0A, 0xA3, 0x23, 0x89, 0xE1, 0xB8, 0x4C,
                /* 01E0 */   0x20, 0xA9, 0x38, 0xE0, 0xD0, 0xE3, 0x1A, 0x6E,
                /* 01E8 */   0x24, 0x3E, 0xAE, 0xC1, 0x38, 0xEF, 0xB0, 0x79,
                /* 01F0 */   0x86, 0xC5, 0x88, 0x07, 0x47, 0x8F, 0xEE, 0x11,
                /* 01F8 */   0x81, 0xCD, 0x39, 0xEE, 0x7B, 0x81, 0xDD, 0x4F,
                /* 0200 */   0x5A, 0x97, 0x85, 0x10, 0xAD, 0x4D, 0x44, 0x08,
                /* 0208 */   0x4F, 0x38, 0x41, 0xDA, 0xC2, 0xD1, 0xA5, 0x20,
                /* 0210 */   0x4C, 0x63, 0x28, 0x82, 0x88, 0x10, 0x33, 0x4E,
                /* 0218 */   0x94, 0xE6, 0x10, 0x34, 0xE2, 0x28, 0x86, 0x88,
                /* 0220 */   0x70, 0x02, 0x21, 0x4E, 0xF6, 0x24, 0x83, 0x84,
                /* 0228 */   0x8F, 0x11, 0x36, 0x5A, 0x94, 0xF6, 0x47, 0x88,
                /* 0230 */   0x20, 0xF0, 0x71, 0x0C, 0x27, 0x6A, 0x48, 0x74,
                /* 0238 */   0x38, 0x3E, 0x0F, 0x1C, 0xDC, 0xA3, 0x84, 0x0F,
                /* 0240 */   0x25, 0x3E, 0x38, 0x18, 0xE2, 0x65, 0xE8, 0x39,
                /* 0248 */   0xC6, 0x43, 0xF7, 0xB4, 0x8F, 0xEA, 0x78, 0x8E,
                /* 0250 */   0xCA, 0x37, 0x8A, 0x43, 0x3A, 0xA6, 0xDE, 0xA6,
                /* 0258 */   0xA1, 0x79, 0xC4, 0x38, 0x9D, 0xB3, 0x89, 0x13,
                /* 0260 */   0x23, 0x4A, 0xB0, 0x28, 0x87, 0x13, 0xEB, 0xA5,
                /* 0268 */   0x26, 0x44, 0x94, 0x77, 0x80, 0x33, 0xF2, 0xE4,
                /* 0270 */   0x8C, 0x1F, 0xE6, 0x88, 0x8C, 0xE8, 0x49, 0x85,
                /* 0278 */   0x39, 0x00, 0x8F, 0xD2, 0xA3, 0xC2, 0x5E, 0x22,
                /* 0280 */   0xC2, 0x60, 0x0E, 0x3B, 0x3E, 0x05, 0x78, 0xF2,
                /* 0288 */   0xAF, 0x0C, 0xB6, 0x7A, 0x71, 0x20, 0x20, 0x07,
                /* 0290 */   0x74, 0x5C, 0x27, 0x76, 0x5E, 0x21, 0x5E, 0x76,
                /* 0298 */   0x8C, 0x51, 0xFD, 0x9D, 0x84, 0x80, 0x1C, 0xDB,
                /* 02A0 */   0x33, 0x93, 0x07, 0xF0, 0xBA, 0x10, 0xF5, 0x95,
                /* 02A8 */   0xC1, 0x43, 0xC0, 0x60, 0x86, 0xC1, 0x9C, 0x0A,
                /* 02B0 */   0x7C, 0x78, 0xF2, 0xFF, 0x1F, 0x32, 0x6E, 0xB0,
                /* 02B8 */   0x03, 0x65, 0x47, 0x14, 0x7E, 0x9E, 0x78, 0x11,
                /* 02C0 */   0x79, 0xF6, 0xF0, 0xFC, 0x8D, 0x00, 0x63, 0x6A,
                /* 02C8 */   0x31, 0x7C, 0x8E, 0x08, 0x85, 0x53, 0x07, 0x42,
                /* 02D0 */   0x07, 0x82, 0x11, 0x3B, 0x16, 0xF4, 0x39, 0xD1,
                /* 02D8 */   0x07, 0x8C, 0x43, 0x79, 0xF0, 0xF0, 0xBD, 0x83,
                /* 02E0 */   0x1D, 0xA7, 0x3C, 0x9A, 0x73, 0x39, 0x2B, 0x9F,
                /* 02E8 */   0x8F, 0x70, 0xD7, 0x80, 0x67, 0x91, 0x98, 0x46,
                /* 02F0 */   0x3B, 0xA6, 0xC8, 0x7C, 0x0C, 0x98, 0xD3, 0x80,
                /* 02F8 */   0x4F, 0x8E, 0xE0, 0x38, 0x49, 0x9C, 0x89, 0x2F,
                /* 0300 */   0x02, 0x3E, 0x4A, 0x70, 0xA0, 0x73, 0xF1, 0x15,
                /* 0308 */   0xC4, 0x47, 0x10, 0xE0, 0x7E, 0x90, 0xF0, 0x00,
                /* 0310 */   0xE1, 0x60, 0x46, 0x3D, 0x8B, 0xD8, 0x3E, 0xA2,
                /* 0318 */   0x61, 0xC5, 0x2A, 0x38, 0x8C, 0x60, 0xE4, 0xC1,
                /* 0320 */   0xE8, 0x30, 0x82, 0x93, 0x06, 0x24, 0x18, 0x0F,
                /* 0328 */   0xC9, 0x22, 0xD6, 0xE1, 0x93, 0x28, 0x1D, 0xA5,
                /* 0330 */   0x67, 0x0B, 0x63, 0x18, 0xD8, 0x53, 0x0A, 0xFF,
                /* 0338 */   0xFF, 0x8F, 0x98, 0x9F, 0xC1, 0x3C, 0x9E, 0xC7,
                /* 0340 */   0x85, 0x97, 0xD0, 0x08, 0xC1, 0x03, 0x9F, 0xEA,
                /* 0348 */   0xE3, 0xC0, 0xE1, 0x45, 0x7F, 0x1E, 0xF0, 0x19,
                /* 0350 */   0x02, 0xCE, 0x00, 0xC0, 0x31, 0x98, 0x47, 0x08,
                /* 0358 */   0x36, 0x00, 0x38, 0x63, 0xC2, 0x8D, 0xDA, 0x23,
                /* 0360 */   0xF4, 0x00, 0xF0, 0xC8, 0x2F, 0x08, 0x91, 0x5E,
                /* 0368 */   0x2A, 0x0C, 0xF4, 0x9C, 0x01, 0xFF, 0x94, 0x80,
                /* 0370 */   0x3B, 0x28, 0xF9, 0xF4, 0xE1, 0x41, 0xE0, 0xCF,
                /* 0378 */   0x0F, 0xEF, 0x12, 0x1E, 0xA5, 0x8F, 0x34, 0xEC,
                /* 0380 */   0x5E, 0xF0, 0x36, 0x60, 0xCC, 0x53, 0x30, 0x3C,
                /* 0388 */   0x3F, 0xCA, 0xF8, 0x20, 0x01, 0x8E, 0xFB, 0x88,
                /* 0390 */   0xAF, 0x15, 0xBE, 0x0E, 0xFA, 0xF0, 0xE7, 0xC3,
                /* 0398 */   0x00, 0xFE, 0x10, 0xE8, 0x93, 0x46, 0x9C, 0x87,
                /* 03A0 */   0x26, 0x36, 0x3F, 0xDC, 0x11, 0x09, 0xB0, 0x20,
                /* 03A8 */   0xEF, 0xA4, 0x4C, 0xFF, 0xFF, 0x40, 0x16, 0x74,
                /* 03B0 */   0x52, 0xA6, 0xA3, 0x42, 0xD0, 0xE8, 0x80, 0xEC,
                /* 03B8 */   0x63, 0x04, 0x38, 0x05, 0x1F, 0x00, 0x40, 0x33,
                /* 03C0 */   0xC2, 0x47, 0x02, 0x9F, 0xE0, 0x9E, 0x58, 0x3C,
                /* 03C8 */   0x7E, 0xC0, 0x57, 0xC8, 0x53, 0x09, 0x2A, 0xD6,
                /* 03D0 */   0xA9, 0x04, 0x1D, 0x09, 0x48, 0x26, 0x8E, 0x36,
                /* 03D8 */   0xE8, 0x33, 0x96, 0x4F, 0x1A, 0x3E, 0x71, 0xC1,
                /* 03E0 */   0x98, 0xD9, 0x7B, 0x9A, 0x4F, 0x52, 0xBE, 0x73,
                /* 03E8 */   0x61, 0x0E, 0x5D, 0xE0, 0xBA, 0x0C, 0xBD, 0x41,
                /* 03F0 */   0xBD, 0xE8, 0xBC, 0x14, 0xC5, 0x7A, 0xD5, 0x09,
                /* 03F8 */   0xF1, 0x38, 0xF5, 0x1E, 0x75, 0x76, 0x47, 0x11,
                /* 0400 */   0x22, 0x8A, 0x0F, 0x5D, 0x58, 0xA8, 0xD7, 0x2A,
                /* 0408 */   0x1F, 0xBA, 0x60, 0xFC, 0xFF, 0x0F, 0x5D, 0x70,
                /* 0410 */   0x4E, 0x02, 0x1E, 0x37, 0x1F, 0x9E, 0xCF, 0x20,
                /* 0418 */   0x9E, 0xCC, 0xE9, 0xBD, 0x82, 0xBC, 0x17, 0xF8,
                /* 0420 */   0xE6, 0xEA, 0xF3, 0xAB, 0x6F, 0x05, 0x7C, 0xE6,
                /* 0428 */   0xB1, 0xCE, 0xD0, 0x47, 0x24, 0x36, 0x66, 0xDC,
                /* 0430 */   0x09, 0x0B, 0x38, 0x1D, 0xA3, 0x00, 0x5E, 0x1C,
                /* 0438 */   0x04, 0x7C, 0x8C, 0x02, 0xC3, 0xA5, 0xE1, 0x19,
                /* 0440 */   0x00, 0xF9, 0x36, 0xD0, 0xFF, 0xFF, 0x5C, 0xC0,
                /* 0448 */   0x0F, 0x2D, 0xFC, 0x1C, 0x0C, 0x2E, 0x21, 0x47,
                /* 0450 */   0x17, 0x7A, 0x58, 0xC4, 0x1D, 0xA7, 0x61, 0x1F,
                /* 0458 */   0x36, 0x30, 0x67, 0x14, 0xE0, 0x7F, 0xAE, 0xC0,
                /* 0460 */   0x41, 0xE3, 0x10, 0x5F, 0x26, 0x5E, 0x51, 0x3D,
                /* 0468 */   0x94, 0xF3, 0xC3, 0x9D, 0x17, 0x18, 0xD6, 0x4B,
                /* 0470 */   0xC9, 0x7B, 0x2A, 0xBF, 0x3F, 0xC4, 0x38, 0xE8,
                /* 0478 */   0x83, 0xC4, 0x0E, 0x82, 0x87, 0x3B, 0x07, 0xA1,
                /* 0480 */   0xE2, 0x9C, 0x83, 0xD0, 0x51, 0x68, 0x64, 0x61,
                /* 0488 */   0xF4, 0xFC, 0x1C, 0x84, 0x3A, 0x14, 0xB2, 0x73,
                /* 0490 */   0x10, 0x9C, 0xD3, 0x01, 0x56, 0x3E, 0x8C, 0x1F,
                /* 0498 */   0x5A, 0x3E, 0x6A, 0xD1, 0xC3, 0x90, 0x67, 0x84,
                /* 04A0 */   0x31, 0x7A, 0xD9, 0x12, 0xBA, 0xAF, 0x1A, 0xC7,
                /* 04A8 */   0xF7, 0x00, 0xC4, 0x06, 0xCB, 0x47, 0x64, 0x08,
                /* 04B0 */   0x8F, 0xDD, 0xE7, 0x11, 0x1F, 0x11, 0x3C, 0xC0,
                /* 04B8 */   0x80, 0xFF, 0xFF, 0x23, 0xA8, 0x0A, 0x42, 0x67,
                /* 04C0 */   0xD9, 0xD3, 0xF1, 0xB1, 0x23, 0xCA, 0xA3, 0x01,
                /* 04C8 */   0x9C, 0xF1, 0xF0, 0x03, 0x8D, 0x4F, 0x1E, 0xE0,
                /* 04D0 */   0xB8, 0xE5, 0xC0, 0xB8, 0x26, 0x81, 0xE1, 0x98,
                /* 04D8 */   0x04, 0x38, 0x08, 0x73, 0x4C, 0x42, 0xC9, 0x3F,
                /* 04E0 */   0x26, 0xA1, 0xA5, 0x03, 0xE9, 0x08, 0xEF, 0xB3,
                /* 04E8 */   0x2B, 0xD8, 0x8F, 0x45, 0xCF, 0x43, 0xC7, 0xF3,
                /* 04F0 */   0xB6, 0x6A, 0x94, 0x53, 0xAB, 0xED, 0x70, 0x44,
                /* 04F8 */   0x30, 0x5E, 0x14, 0x22, 0x3D, 0xBB, 0x1A, 0xC9,
                /* 0500 */   0x07, 0x58, 0x76, 0x2A, 0x32, 0x4E, 0x94, 0xF7,
                /* 0508 */   0xA4, 0xA8, 0x86, 0x7E, 0x98, 0x79, 0xD8, 0x35,
                /* 0510 */   0x94, 0x91, 0x42, 0x3E, 0x1C, 0xE1, 0x8F, 0x4E,
                /* 0518 */   0xB0, 0x86, 0x03, 0x96, 0xFF, 0xFF, 0x70, 0xC0,
                /* 0520 */   0x7D, 0x3A, 0xC0, 0x0D, 0xC7, 0xE7, 0x17, 0x9F,
                /* 0528 */   0xB4, 0x70, 0x47, 0x77, 0x1F, 0x96, 0xD8, 0x41,
                /* 0530 */   0x22, 0xFC, 0xB3, 0x81, 0xAF, 0xE0, 0xC6, 0x79,
                /* 0538 */   0x27, 0x78, 0x69, 0x78, 0xCB, 0xF0, 0x29, 0x09,
                /* 0540 */   0xE0, 0xC7, 0x70, 0xB8, 0xA4, 0x63, 0x05, 0x4A,
                /* 0548 */   0xC4, 0xB1, 0x02, 0x2D, 0x00, 0x48, 0x1A, 0xCE,
                /* 0550 */   0x17, 0x86, 0x42, 0x1D, 0x62, 0x7C, 0x74, 0xF1,
                /* 0558 */   0xE1, 0xEC, 0x21, 0x06, 0xC6, 0xC8, 0x38, 0x9A,
                /* 0560 */   0x47, 0xE6, 0xFF, 0x3F, 0x4A, 0xEF, 0xE3, 0x17,
                /* 0568 */   0xE2, 0x0B, 0xF2, 0x29, 0xC3, 0x86, 0x7E, 0x4D,
                /* 0570 */   0xE0, 0xF6, 0x04, 0x28, 0xBA, 0x26, 0x40, 0x07,
                /* 0578 */   0x7C, 0x72, 0xC0, 0xBA, 0x38, 0xC3, 0xA1, 0x8F,
                /* 0580 */   0xAA, 0xE0, 0x99, 0xF8, 0x21, 0x60, 0x0E, 0x3F,
                /* 0588 */   0x1E, 0x02, 0x3F, 0x12, 0xF8, 0x04, 0xE0, 0xC3,
                /* 0590 */   0x2D, 0x3C, 0x70, 0xDC, 0x21, 0x15, 0xF0, 0x2C,
                /* 0598 */   0x81, 0x9C, 0x1E, 0x19, 0x1C, 0xFA, 0xF0, 0x40,
                /* 05A0 */   0x61, 0xCC, 0xE2, 0x33, 0x1A, 0xDC, 0xFF, 0xFF,
                /* 05A8 */   0x19, 0x8D, 0x9F, 0xDB, 0x71, 0x67, 0x14, 0xDF,
                /* 05B0 */   0xB8, 0x22, 0xBC, 0xBF, 0xB0, 0x03, 0x0C, 0x1B,
                /* 05B8 */   0xDF, 0x9B, 0x8B, 0x81, 0x9E, 0x5A, 0x62, 0x3C,
                /* 05C0 */   0x45, 0xFA, 0xE2, 0x62, 0x88, 0xD3, 0x7A, 0x94,
                /* 05C8 */   0xE4, 0x57, 0x18, 0x5F, 0x5D, 0x7C, 0x34, 0x78,
                /* 05D0 */   0xD2, 0xF7, 0x51, 0xD2, 0x58, 0x8F, 0x92, 0x86,
                /* 05D8 */   0x8A, 0x16, 0xEB, 0xB5, 0xDF, 0x40, 0x0F, 0x30,
                /* 05E0 */   0x5C, 0xE8, 0xE9, 0x82, 0x06, 0x39, 0x63, 0xA1,
                /* 05E8 */   0xC6, 0xEA, 0xA1, 0xF9, 0x38, 0xE0, 0x6B, 0xC0,
                /* 05F0 */   0xE3, 0x80, 0xE7, 0xE5, 0xCB, 0x40, 0x88, 0x97,
                /* 05F8 */   0x81, 0x47, 0x80, 0x53, 0xF7, 0x4D, 0xE0, 0x81,
                /* 0600 */   0xC5, 0x87, 0x04, 0x1F, 0x5E, 0x3C, 0x4C, 0xB3,
                /* 0608 */   0xFB, 0xD4, 0xC0, 0x47, 0x67, 0xF4, 0x88, 0xCF,
                /* 0610 */   0x43, 0x1E, 0x04, 0x3B, 0xE0, 0xFB, 0xBC, 0x80,
                /* 0618 */   0x1D, 0xD0, 0x49, 0x3E, 0x0B, 0xBC, 0xAE, 0x35,
                /* 0620 */   0x7B, 0x51, 0x23, 0x47, 0x2E, 0xDF, 0xD1, 0xF8,
                /* 0628 */   0x50, 0x9E, 0xCB, 0xC8, 0xA0, 0xD0, 0x87, 0x0B,
                /* 0630 */   0x0F, 0x0A, 0xCE, 0x99, 0xC1, 0xC6, 0xCF, 0x13,
                /* 0638 */   0x82, 0x3A, 0x19, 0x0F, 0x86, 0x8D, 0x0A, 0x78,
                /* 0640 */   0x1D, 0xED, 0x70, 0xE7, 0x40, 0x98, 0xB7, 0x13,
                /* 0648 */   0x0E, 0x76, 0x70, 0x70, 0x20, 0x1F, 0x33, 0x0C,
                /* 0650 */   0x71, 0x72, 0x61, 0x1E, 0x2E, 0xF0, 0xFF, 0xFF,
                /* 0658 */   0xE3, 0x20, 0x60, 0xEA, 0x20, 0xE6, 0x33, 0x89,
                /* 0660 */   0x21, 0x0E, 0x12, 0x3F, 0x08, 0x1E, 0x64, 0x4D,
                /* 0668 */   0x34, 0xEA, 0xE1, 0xCC, 0x30, 0x28, 0x16, 0x9F,
                /* 0670 */   0x11, 0x7C, 0x2C, 0xE0, 0x07, 0x1F, 0x4F, 0xE4,
                /* 0678 */   0xC1, 0xEC, 0x19, 0x85, 0x1F, 0xF9, 0x7C, 0x30,
                /* 0680 */   0xE0, 0x67, 0x0F, 0x70, 0x04, 0x38, 0x7B, 0x40,
                /* 0688 */   0xBE, 0x82, 0xBD, 0x70, 0x3C, 0x79, 0x84, 0x08,
                /* 0690 */   0xF2, 0xE4, 0xE1, 0xDB, 0xC6, 0xB3, 0x87, 0xE1,
                /* 0698 */   0x1E, 0x3B, 0xDE, 0x3E, 0x7C, 0xF6, 0x30, 0xCC,
                /* 06A0 */   0xB3, 0x87, 0xD1, 0x22, 0x44, 0x79, 0x3A, 0x78,
                /* 06A8 */   0xF6, 0x60, 0xA7, 0x10, 0x23, 0x84, 0x3C, 0xDE,
                /* 06B0 */   0xB0, 0x2F, 0x63, 0x0C, 0xE4, 0xD9, 0xE3, 0xA9,
                /* 06B8 */   0xE8, 0xDC, 0xCF, 0xE7, 0xB5, 0x06, 0x4F, 0x30,
                /* 06C0 */   0xD0, 0x01, 0x84, 0xC6, 0x19, 0x12, 0xEA, 0x08,
                /* 06C8 */   0xE0, 0x31, 0xF9, 0x40, 0x86, 0x3B, 0x31, 0x79,
                /* 06D0 */   0x8C, 0x3E, 0x55, 0xC0, 0xFD, 0xFF, 0x8F, 0x16,
                /* 06D8 */   0xCE, 0x41, 0x21, 0xDE, 0xCB, 0xC0, 0x63, 0xB2,
                /* 06E0 */   0x0F, 0x3A, 0xEC, 0x31, 0xE5, 0xE3, 0x05, 0xF8,
                /* 06E8 */   0x22, 0x8C, 0x0B, 0x7D, 0x94, 0xF0, 0x60, 0xDF,
                /* 06F0 */   0x29, 0x3C, 0xC2, 0xA0, 0xBE, 0x1D, 0xBD, 0x00,
                /* 06F8 */   0x61, 0xCE, 0x1F, 0xC0, 0x2B, 0xD0, 0x88, 0xD0,
                /* 0700 */   0xD0, 0x6C, 0x12, 0xC7, 0x83, 0x1B, 0x39, 0xF0,
                /* 0708 */   0x38, 0x67, 0x78, 0x60, 0xE0, 0x3B, 0x84, 0x82,
                /* 0710 */   0x63, 0x04, 0xEC, 0xE0, 0xE1, 0xD3, 0x06, 0xBB,
                /* 0718 */   0x50, 0xB1, 0xF3, 0xAC, 0x4F, 0x15, 0x3E, 0x37,
                /* 0720 */   0xF8, 0x42, 0xF6, 0xC0, 0xE5, 0xD3, 0xC2, 0x53,
                /* 0728 */   0x15, 0x58, 0xFF, 0xFF, 0xA7, 0x2A, 0xE0, 0x26,
                /* 0730 */   0xF2, 0xDD, 0xEC, 0xD3, 0x0A, 0x95, 0x05, 0x83,
                /* 0738 */   0x3A, 0x2B, 0xF8, 0x50, 0x82, 0x3F, 0x7C, 0xFA,
                /* 0740 */   0x50, 0x02, 0xDE, 0xB0, 0x84, 0x52, 0x71, 0x5A,
                /* 0748 */   0x31, 0x84, 0xAC, 0x1C, 0x16, 0x50, 0x23, 0xF1,
                /* 0750 */   0xBC, 0x5E, 0x11, 0x7C, 0x37, 0xF2, 0xD5, 0xC0,
                /* 0758 */   0xE8, 0x0F, 0x8F, 0x4F, 0x3E, 0xBE, 0xDE, 0xB1,
                /* 0760 */   0x31, 0x1D, 0xFC, 0xB3, 0x07, 0x3F, 0xC8, 0xF9,
                /* 0768 */   0x18, 0xE8, 0x13, 0x02, 0xFC, 0xDB, 0x92, 0x8F,
                /* 0770 */   0xAA, 0xBE, 0x9C, 0x9C, 0xB6, 0x47, 0x03, 0x6B,
                /* 0778 */   0x18, 0xFC, 0x76, 0xC2, 0x8E, 0xFF, 0x1E, 0x0D,
                /* 0780 */   0xB0, 0xBE, 0x77, 0xB2, 0x23, 0x99, 0x11, 0x1E,
                /* 0788 */   0x17, 0x1E, 0x0C, 0xD8, 0x68, 0xF0, 0xFF, 0xFF,
                /* 0790 */   0xD1, 0x80, 0xFB, 0x1C, 0x00, 0x67, 0x34, 0xC0,
                /* 0798 */   0x65, 0x84, 0x47, 0x83, 0x3D, 0x33, 0x78, 0x34,
                /* 07A0 */   0x70, 0x7C, 0x9E, 0x1F, 0xA4, 0xFA, 0x90, 0x4D,
                /* 07A8 */   0x07, 0x03, 0x7C, 0x8E, 0x01, 0x70, 0x06, 0x03,
                /* 07B0 */   0x3C, 0x8E, 0xBA, 0x3E, 0xA7, 0x81, 0xED, 0x04,
                /* 07B8 */   0xC1, 0x0E, 0x2A, 0xC0, 0xE5, 0xFF, 0x7F, 0x50,
                /* 07C0 */   0x01, 0xA7, 0xE8, 0x13, 0x1A, 0xE8, 0x4E, 0x38,
                /* 07C8 */   0xE0, 0x1D, 0x09, 0x8F, 0xF0, 0x0E, 0xF0, 0xF9,
                /* 07D0 */   0x85, 0x8A, 0x86, 0x41, 0x1D, 0x61, 0x80, 0x8F,
                /* 07D8 */   0x94, 0x71, 0xE8, 0x67, 0xE3, 0x73, 0x00, 0xEE,
                /* 07E0 */   0x58, 0x00, 0xAE, 0xE1, 0x1E, 0xC4, 0x3B, 0xF0,
                /* 07E8 */   0x9B, 0xD6, 0x19, 0x1A, 0xE2, 0xC9, 0x00, 0xD8,
                /* 07F0 */   0x8F, 0x07, 0x77, 0x32, 0x80, 0xFB, 0xFF, 0x3F,
                /* 07F8 */   0x19, 0xF0, 0xA3, 0x04, 0xBC, 0x73, 0x20, 0xE2,
                /* 0800 */   0x38, 0x80, 0x92, 0x7E, 0x22, 0x00, 0x6A, 0x82,
                /* 0808 */   0x4E, 0x04, 0xF4, 0xB8, 0x09, 0xC6, 0xD1, 0xB1,
                /* 0810 */   0x29, 0xBF, 0x42, 0x60, 0x4E, 0x8F, 0xBE, 0xA0,
                /* 0818 */   0x3D, 0x14, 0x00, 0x56, 0x23, 0x2F, 0x88, 0x02,
                /* 0820 */   0x39, 0x24, 0x8C, 0x4E, 0xED, 0xB8, 0x80, 0x40,
                /* 0828 */   0x3A, 0xE1, 0x79, 0x68, 0x16, 0xB1, 0x1E, 0x1F,
                /* 0830 */   0x0B, 0xE8, 0x68, 0x7D, 0xCC, 0xC6, 0xFF, 0xFF,
                /* 0838 */   0x0F, 0xC5, 0x04, 0x1E, 0xC5, 0xEB, 0x71, 0xF2,
                /* 0840 */   0x53, 0x9F, 0x4F, 0x07, 0xBE, 0x98, 0xF8, 0x0C,
                /* 0848 */   0xE0, 0x43, 0x02, 0xBF, 0x98, 0xB0, 0x8B, 0xC1,
                /* 0850 */   0xF3, 0xD0, 0x3B, 0xCF, 0xEB, 0x81, 0xC7, 0x83,
                /* 0858 */   0x3B, 0x2E, 0x92, 0x13, 0x30, 0x85, 0xF7, 0xD9,
                /* 0860 */   0xC5, 0x87, 0x5F, 0x1F, 0x1A, 0xDE, 0x77, 0x1E,
                /* 0868 */   0x15, 0xC2, 0x9F, 0xE7, 0x93, 0xB9, 0x8D, 0x1E,
                /* 0870 */   0x90, 0xC8, 0x99, 0xCF, 0x68, 0x26, 0xF0, 0xFD,
                /* 0878 */   0xD3, 0x43, 0x30, 0x84, 0x0F, 0x41, 0xC6, 0x7A,
                /* 0880 */   0x57, 0xF6, 0x49, 0x88, 0xED, 0xA1, 0x2A, 0x08,
                /* 0888 */   0x0D, 0xF8, 0xF4, 0x7C, 0x4D, 0x88, 0xF2, 0x50,
                /* 0890 */   0xE4, 0x4B, 0x82, 0xA7, 0x1D, 0x2F, 0x64, 0x90,
                /* 0898 */   0xB0, 0x8F, 0xAC, 0xD8, 0x18, 0x23, 0x42, 0x1D,
                /* 08A0 */   0xE6, 0x7D, 0x4C, 0xF2, 0x88, 0x3C, 0x81, 0xA3,
                /* 08A8 */   0xF1, 0xF1, 0x89, 0x1D, 0x61, 0xD9, 0x98, 0x80,
                /* 08B0 */   0xE1, 0x18, 0x7C, 0xA2, 0xC4, 0x9D, 0x3D, 0x7C,
                /* 08B8 */   0x59, 0x78, 0x49, 0xF5, 0xF9, 0x1E, 0x37, 0x27,
                /* 08C0 */   0x0F, 0x09, 0xC6, 0xA9, 0x00, 0x77, 0xBC, 0xC0,
                /* 08C8 */   0x1D, 0x03, 0x7C, 0xDE, 0x87, 0x77, 0x2B, 0x38,
                /* 08D0 */   0xD5, 0x03, 0x79, 0xC1, 0xF0, 0x00, 0xC0, 0xF2,
                /* 08D8 */   0xFF, 0x1F, 0x00, 0x3F, 0x31, 0x04, 0x3A, 0x00,
                /* 08E0 */   0x5F, 0x2F, 0x9E, 0x28, 0x1E, 0x29, 0xE2, 0x9D,
                /* 08E8 */   0x80, 0xA1, 0xF9, 0xC1, 0x01, 0x37, 0x40, 0x1F,
                /* 08F0 */   0x23, 0x3C, 0x00, 0x3C, 0xF0, 0x51, 0x46, 0x3A,
                /* 08F8 */   0x67, 0xDF, 0xFB, 0xB1, 0x83, 0x82, 0x73, 0xE6,
                /* 0900 */   0xC0, 0xFD, 0x0C, 0x7C, 0x32, 0xF0, 0x20, 0xF0,
                /* 0908 */   0x67, 0x57, 0x9F, 0x06, 0x3C, 0x6E, 0x13, 0x78,
                /* 0910 */   0x58, 0x70, 0x0E, 0xA0, 0xE0, 0x00, 0x62, 0xD7,
                /* 0918 */   0x02, 0x7E, 0xDF, 0xC0, 0xDF, 0x1A, 0x7C, 0x26,
                /* 0920 */   0x7D, 0xA8, 0x62, 0xC3, 0xC3, 0x1E, 0x40, 0x01,
                /* 0928 */   0x07, 0x72, 0x8E, 0x42, 0x14, 0x88, 0xC0, 0xE8,
                /* 0930 */   0x28, 0x82, 0x0B, 0x0F, 0xA1, 0xA3, 0x8F, 0x0F,
                /* 0938 */   0x16, 0x3E, 0x53, 0xE3, 0x46, 0xE2, 0x01, 0x3E,
                /* 0940 */   0x31, 0x63, 0x40, 0x8E, 0xF3, 0x5C, 0xCE, 0xE8,
                /* 0948 */   0xB9, 0xEE, 0xA1, 0xFA, 0x89, 0x00, 0x77, 0x9E,
                /* 0950 */   0xE3, 0xFF, 0xFF, 0xF1, 0xC3, 0x1F, 0x03, 0x9F,
                /* 0958 */   0xC1, 0x73, 0xC1, 0xFB, 0x8A, 0x67, 0xE1, 0x71,
                /* 0960 */   0x03, 0x0E, 0xA2, 0x8D, 0x9B, 0x86, 0x83, 0x50,
                /* 0968 */   0x18, 0x18, 0xD4, 0x20, 0x7C, 0x3B, 0xF6, 0xC0,
                /* 0970 */   0x70, 0xC7, 0x69, 0x78, 0x53, 0x8A, 0x76, 0x4C,
                /* 0978 */   0x2F, 0x14, 0x6F, 0x0D, 0x78, 0xA4, 0x97, 0x1D,
                /* 0980 */   0xCC, 0x80, 0x7D, 0x7F, 0x88, 0xF4, 0x9E, 0x82,
                /* 0988 */   0x99, 0xE3, 0x23, 0x07, 0x3F, 0xC4, 0x63, 0xA7,
                /* 0990 */   0xEB, 0x09, 0x9F, 0x84, 0x41, 0x7C, 0xC0, 0xF2,
                /* 0998 */   0x69, 0x0B, 0xD6, 0xFD, 0xF1, 0x40, 0x9F, 0x31,
                /* 09A0 */   0x7C, 0xEA, 0x60, 0xA7, 0x2D, 0x07, 0x86, 0xA4,
                /* 09A8 */   0x47, 0x11, 0xDC, 0x69, 0x0B, 0xE6, 0xFC, 0x7D,
                /* 09B0 */   0x71, 0x7F, 0x6F, 0xF2, 0xA0, 0x0E, 0xEC, 0x89,
                /* 09B8 */   0x28, 0xD0, 0xF1, 0x3D, 0xCF, 0x79, 0xA4, 0x46,
                /* 09C0 */   0x79, 0x03, 0x09, 0xF5, 0x66, 0xC0, 0x4E, 0x60,
                /* 09C8 */   0xD8, 0xA3, 0x01, 0xBC, 0xFF, 0xFF, 0xD1, 0x00,
                /* 09D0 */   0x3E, 0xC8, 0x0B, 0x04, 0xF6, 0x74, 0x00, 0xEE,
                /* 09D8 */   0x60, 0x47, 0x03, 0x54, 0x94, 0xD3, 0x01, 0xA0,
                /* 09E0 */   0x2F, 0x2E, 0x24, 0x85, 0x7A, 0x3A, 0x00, 0xC7,
                /* 09E8 */   0x44, 0x7C, 0xA3, 0xC1, 0x4C, 0xD3, 0x93, 0x78,
                /* 09F0 */   0x3A, 0x88, 0x75, 0x9E, 0x1E, 0xE1, 0x23, 0x19,
                /* 09F8 */   0x3F, 0x1C, 0x00, 0xE7, 0xFF, 0xFF, 0x81, 0x06,
                /* 0A00 */   0xF2, 0x3B, 0xD1, 0x67, 0x39, 0x53, 0x18, 0x06,
                /* 0A08 */   0x35, 0x08, 0x07, 0x39, 0x1C, 0x80, 0x66, 0x94,
                /* 0A10 */   0x2F, 0x6C, 0x0F, 0x42, 0xBE, 0x13, 0x04, 0x3C,
                /* 0A18 */   0x55, 0x9F, 0x0C, 0x7C, 0x2D, 0xC0, 0xC1, 0xBC,
                /* 0A20 */   0x94, 0x19, 0x39, 0x86, 0xA7, 0x6D, 0x40, 0xE3,
                /* 0A28 */   0x62, 0x71, 0x7C, 0x70, 0x65, 0x20, 0x71, 0xCE,
                /* 0A30 */   0x21, 0x56, 0x90, 0xC0, 0xBE, 0xE1, 0x61, 0xCF,
                /* 0A38 */   0x09, 0xC0, 0xE5, 0x38, 0xE4, 0x73, 0x10, 0xFE,
                /* 0A40 */   0x50, 0x02, 0x1B, 0xFE, 0xDC, 0xF8, 0x11, 0x01,
                /* 0A48 */   0x70, 0x31, 0x24, 0xDC, 0x69, 0x12, 0xDE, 0xFF,
                /* 0A50 */   0xFF, 0x34, 0x89, 0x83, 0x33, 0x56, 0xF1, 0x67,
                /* 0A58 */   0x2E, 0x72, 0x90, 0xF1, 0x80, 0x9E, 0x8C, 0x3D,
                /* 0A60 */   0x4E, 0xEC, 0x20, 0xB8, 0x74, 0x0F, 0x67, 0x01,
                /* 0A68 */   0x7A, 0x6C, 0x90, 0x58, 0x18, 0xD4, 0xC8, 0x1C,
                /* 0A70 */   0xF0, 0x00, 0xA0, 0x73, 0x03, 0x78, 0xEE, 0x08,
                /* 0A78 */   0x3E, 0xA3, 0xF8, 0xC8, 0x61, 0x88, 0x97, 0x35,
                /* 0A80 */   0x1F, 0xCA, 0xE2, 0xFA, 0xEC, 0xCC, 0x0F, 0x39,
                /* 0A88 */   0x0F, 0x0C, 0x3E, 0x3C, 0xC0, 0x38, 0xBA, 0x71,
                /* 0A90 */   0xA0, 0x53, 0xF3, 0x01, 0x1A, 0x06, 0xD8, 0x1B,
                /* 0A98 */   0xAD, 0x0F, 0x3D, 0x3E, 0x4C, 0xF8, 0xF0, 0xE0,
                /* 0AA0 */   0x89, 0xE0, 0xA7, 0xC0, 0xAE, 0xF0, 0xC6, 0x8A,
                /* 0AA8 */   0xE2, 0x2B, 0xC4, 0x83, 0x84, 0x91, 0xCF, 0xC5,
                /* 0AB0 */   0xE7, 0x44, 0x43, 0x3F, 0xD0, 0xF1, 0x31, 0x78,
                /* 0AB8 */   0x12, 0xC6, 0x7A, 0xD8, 0xF4, 0xD1, 0x0D, 0x77,
                /* 0AC0 */   0x3D, 0x88, 0xF5, 0x3A, 0xE3, 0x91, 0x78, 0x3E,
                /* 0AC8 */   0xBE, 0x13, 0x05, 0x39, 0x9B, 0xC8, 0x9E, 0x84,
                /* 0AD0 */   0xE7, 0xE7, 0x3B, 0x8D, 0xC7, 0xC1, 0xAE, 0xCD,
                /* 0AD8 */   0xE7, 0xEA, 0x69, 0xB1, 0x39, 0xC0, 0x3A, 0x6A,
                /* 0AE0 */   0x18, 0xE7, 0xC8, 0x18, 0xF2, 0x5B, 0x5F, 0x48,
                /* 0AE8 */   0xDF, 0x36, 0x8C, 0x8E, 0x1B, 0xA3, 0x8F, 0x4B,
                /* 0AF0 */   0x86, 0xF6, 0x4D, 0xC7, 0x08, 0x47, 0xE3, 0x41,
                /* 0AF8 */   0x1B, 0xE2, 0x45, 0xD4, 0x73, 0xF0, 0x60, 0xD8,
                /* 0B00 */   0x05, 0x81, 0xDD, 0x00, 0x7C, 0xD8, 0x64, 0x48,
                /* 0B08 */   0x67, 0xF0, 0x04, 0xE0, 0x89, 0xB1, 0x41, 0xB0,
                /* 0B10 */   0x21, 0xFC, 0xFF, 0xCF, 0x0C, 0x7B, 0xF4, 0x01,
                /* 0B18 */   0x46, 0x12, 0x2D, 0x40, 0xD4, 0x70, 0x32, 0xA3,
                /* 0B20 */   0xA7, 0x52, 0x7E, 0xA4, 0x30, 0xBC, 0x8F, 0x0B,
                /* 0B28 */   0x70, 0xE6, 0xF1, 0xC6, 0xE1, 0x8B, 0xDC, 0xFB,
                /* 0B30 */   0xA2, 0x4F, 0x4D, 0x16, 0x0C, 0xAE, 0x93, 0x34,
                /* 0B38 */   0x39, 0x45, 0x80, 0x66, 0x14, 0x30, 0xE6, 0x18,
                /* 0B40 */   0xB4, 0xA9, 0xF3, 0x0B, 0x9D, 0xB7, 0x6F, 0x00,
                /* 0B48 */   0x1E, 0xAE, 0x8F, 0x0A, 0x9E, 0xAE, 0x2F, 0xAD,
                /* 0B50 */   0x0C, 0xEC, 0x15, 0x80, 0xB9, 0x86, 0xD1, 0x14,
                /* 0B58 */   0x5E, 0x06, 0xCE, 0xDB, 0x77, 0x06, 0x76, 0x48,
                /* 0B60 */   0xC0, 0x9C, 0x1D, 0xB0, 0xC7, 0x00, 0x83, 0xB0,
                /* 0B68 */   0x39, 0x30, 0x70, 0xCF, 0xC3, 0x67, 0x03, 0x8F,
                /* 0B70 */   0xCF, 0x03, 0x31, 0xDC, 0x03, 0x86, 0xAF, 0x04,
                /* 0B78 */   0x9E, 0xD2, 0xFB, 0x0D, 0xE6, 0xBA, 0x00, 0x67,
                /* 0B80 */   0x2C, 0xEC, 0xC0, 0xC0, 0x8F, 0x11, 0xBE, 0x92,
                /* 0B88 */   0xF8, 0x3C, 0xE8, 0x23, 0x05, 0x53, 0x87, 0xA4,
                /* 0B90 */   0xFB, 0xA6, 0xEF, 0x27, 0x9E, 0xF7, 0x03, 0xCA,
                /* 0B98 */   0x13, 0xC1, 0x09, 0xBF, 0x0B, 0x3C, 0xBB, 0x1C,
                /* 0BA0 */   0xFC, 0x63, 0x0C, 0x86, 0xC0, 0x77, 0x97, 0xA7,
                /* 0BA8 */   0x1B, 0xEC, 0xA1, 0xE0, 0xBD, 0x22, 0x5C, 0xDC,
                /* 0BB0 */   0x66, 0x2F, 0x2B, 0xE4, 0x8C, 0xEB, 0x7B, 0x0A,
                /* 0BB8 */   0x9F, 0x54, 0x02, 0xFF, 0xFF, 0xA5, 0xBF, 0x03,
                /* 0BC0 */   0x74, 0x2C, 0xC0, 0x9D, 0x17, 0x7C, 0x2C, 0x80,
                /* 0BC8 */   0x73, 0x90, 0xF3, 0x80, 0x71, 0x04, 0x16, 0x07,
                /* 0BD0 */   0xAF, 0x5F, 0x13, 0x19, 0x81, 0xCF, 0x05, 0xA0,
                /* 0BD8 */   0x98, 0xD9, 0xC3, 0x85, 0xEF, 0x24, 0xF0, 0x0E,
                /* 0BE0 */   0x06, 0x98, 0x2B, 0x08, 0x8C, 0x9B, 0x09, 0x9C,
                /* 0BE8 */   0x13, 0x00, 0xBB, 0xAE, 0xF0, 0x7B, 0x00, 0xEC,
                /* 0BF0 */   0x0B, 0x08, 0x43, 0x64, 0x97, 0x10, 0x5F, 0x17,
                /* 0BF8 */   0xE0, 0x1C, 0x0F, 0x30, 0xB7, 0x11, 0x76, 0x48,
                /* 0C00 */   0x60, 0x57, 0x02, 0x9F, 0xB0, 0x30, 0xD3, 0xC2,
                /* 0C08 */   0xDE, 0x49, 0x7C, 0x44, 0xF6, 0x5D, 0xDF, 0xF3,
                /* 0C10 */   0x30, 0x3A, 0x3F, 0x96, 0x30, 0x1C, 0xCF, 0xEB,
                /* 0C18 */   0xE9, 0x0A, 0x3B, 0x5B, 0x0E, 0x71, 0xB6, 0xFC,
                /* 0C20 */   0x20, 0xCA, 0x2F, 0x27, 0x1C, 0x18, 0x73, 0x01,
                /* 0C28 */   0x30, 0x8A, 0x47, 0xE3, 0xD1, 0xC3, 0x81, 0x3A,
                /* 0C30 */   0x6B, 0x8F, 0xC5, 0x50, 0x87, 0xF2, 0xF6, 0x6C,
                /* 0C38 */   0xC4, 0x93, 0xF0, 0xB1, 0x02, 0x33, 0x2F, 0x36,
                /* 0C40 */   0x67, 0x36, 0x31, 0xCC, 0xA8, 0x70, 0x57, 0x85,
                /* 0C48 */   0xFF, 0xFF, 0x0B, 0x09, 0xFC, 0x83, 0x06, 0xBB,
                /* 0C50 */   0x03, 0xF8, 0x28, 0xC3, 0x8E, 0x63, 0x9E, 0x04,
                /* 0C58 */   0x83, 0x8C, 0xF4, 0xF0, 0xC2, 0x4E, 0x13, 0xE0,
                /* 0C60 */   0x3B, 0x56, 0xE1, 0x8E, 0x61, 0x30, 0x0F, 0xFC,
                /* 0C68 */   0xB8, 0x83, 0x13, 0xEC, 0xD3, 0x18, 0x60, 0xF1,
                /* 0C70 */   0x4C, 0xE1, 0x3B, 0x9E, 0x8F, 0xF5, 0x1E, 0x27,
                /* 0C78 */   0x76, 0x10, 0x3C, 0xF6, 0xE9, 0x93, 0x9E, 0x08,
                /* 0C80 */   0x1D, 0x14, 0x06, 0x75, 0x28, 0x04, 0x2B, 0x06,
                /* 0C88 */   0xFB, 0xFF, 0x9F, 0xA9, 0xD8, 0xD9, 0xCB, 0x27,
                /* 0C90 */   0x6E, 0x7E, 0xD3, 0x67, 0x40, 0xCF, 0x4E, 0xBE,
                /* 0C98 */   0xF9, 0xB0, 0xF3, 0x18, 0xE6, 0x48, 0xC8, 0xEF,
                /* 0CA0 */   0x0D, 0x67, 0xE1, 0x03, 0x09, 0xBB, 0x13, 0xC2,
                /* 0CA8 */   0x39, 0x41, 0x01, 0x9B, 0xD8, 0x90, 0xF4, 0xB0,
                /* 0CB0 */   0x0E, 0x8E, 0xF3, 0x04, 0x3B, 0x0C, 0xF8, 0x04,
                /* 0CB8 */   0xC0, 0xCE, 0xE9, 0xEC, 0x88, 0xE7, 0xAB, 0x87,
                /* 0CC0 */   0x4F, 0xAE, 0x3E, 0xBB, 0xC1, 0x38, 0x8F, 0x02,
                /* 0CC8 */   0x4E, 0xA4, 0x1D, 0x46, 0x51, 0x62, 0xCE, 0xA3,
                /* 0CD0 */   0x40, 0xE0, 0xAC, 0x00, 0xF3, 0xFF, 0x7F, 0x56,
                /* 0CD8 */   0x00, 0x7C, 0x48, 0x3B, 0x8F, 0xD2, 0x83, 0x3D,
                /* 0CE0 */   0x38, 0x4E, 0x2E, 0xD8, 0x89, 0xB1, 0x33, 0x02,
                /* 0CE8 */   0xE0, 0xE2, 0x3E, 0xF0, 0xCC, 0x02, 0xB6, 0xF3,
                /* 0CF0 */   0x05, 0x78, 0x47, 0xC2, 0x05, 0x1D, 0x1D, 0x50,
                /* 0CF8 */   0x12, 0x4E, 0x0F, 0xA0, 0xF9, 0xFF, 0x9F, 0x1E,
                /* 0D00 */   0x00, 0x87, 0x82, 0x4E, 0x0F, 0x74, 0x36, 0x4F,
                /* 0D08 */   0x0F, 0x60, 0x3D, 0x12, 0x1C, 0xE0, 0x8B, 0xDB,
                /* 0D10 */   0xE9, 0xBC, 0x05, 0x18, 0xE2, 0x01, 0x02, 0x30,
                /* 0D18 */   0x31, 0x48, 0xDC, 0x01, 0x02, 0x1C, 0x87, 0x0E,
                /* 0D20 */   0x78, 0x23, 0xE0, 0x82, 0x4F, 0x0D, 0x54, 0xCC,
                /* 0D28 */   0xE0, 0x25, 0x11, 0x86, 0xFE, 0xFF, 0x61, 0x3C,
                /* 0D30 */   0x2C, 0x47, 0x3C, 0x38, 0x00, 0x2A, 0x90, 0xFA,
                /* 0D38 */   0xBA, 0x11, 0x53, 0x84, 0x87, 0xD2, 0xE7, 0x3E,
                /* 0D40 */   0x86, 0xE3, 0x43, 0xD7, 0xBB, 0xA1, 0x11, 0xD9,
                /* 0D48 */   0x29, 0x02, 0xF8, 0xC9, 0x3A, 0x45, 0xD0, 0xB3,
                /* 0D50 */   0x1D, 0x18, 0x67, 0xC9, 0xEE, 0x08, 0xAF, 0x26,
                /* 0D58 */   0x98, 0x4B, 0x31, 0x3B, 0x48, 0x00, 0x56, 0xFE,
                /* 0D60 */   0xFF, 0x07, 0x09, 0xE0, 0x12, 0x7D, 0x41, 0x54,
                /* 0D68 */   0xCE, 0xF8, 0x15, 0x16, 0x06, 0xF5, 0x61, 0xD6,
                /* 0D70 */   0x40, 0xC8, 0xB9, 0x80, 0x03, 0x7B, 0x86, 0xEC,
                /* 0D78 */   0x50, 0x80, 0x81, 0xE3, 0x27, 0x01, 0x4F, 0xFD,
                /* 0D80 */   0x35, 0xF2, 0xB1, 0x93, 0x9D, 0x77, 0x0C, 0xC9,
                /* 0D88 */   0x06, 0xEA, 0xA1, 0xF0, 0x73, 0x82, 0x4F, 0x8D,
                /* 0D90 */   0x3E, 0x30, 0xE0, 0x47, 0xC1, 0xD0, 0x38, 0x34,
                /* 0D98 */   0xF6, 0xA8, 0xC0, 0xC0, 0x9E, 0x81, 0x18, 0x72,
                /* 0DA0 */   0x02, 0xE3, 0x1E, 0xE6, 0x23, 0xC0, 0x03, 0xC0,
                /* 0DA8 */   0xFB, 0xE0, 0x1B, 0x00, 0x27, 0x08, 0x17, 0x1A,
                /* 0DB0 */   0x23, 0x03, 0x42, 0x83, 0x3F, 0xE6, 0xA3, 0x38,
                /* 0DB8 */   0xA9, 0x04, 0x76, 0x3F, 0x66, 0x19, 0x13, 0xE0,
                /* 0DC0 */   0x0D, 0x55, 0x08, 0x51, 0x1E, 0x02, 0x0E, 0xB9,
                /* 0DC8 */   0x2D, 0x14, 0xC1, 0x07, 0x89, 0x11, 0x25, 0x48,
                /* 0DD0 */   0x6B, 0x28, 0x14, 0x22, 0x48, 0xCC, 0x07, 0x80,
                /* 0DD8 */   0x28, 0xC1, 0x63, 0x06, 0x09, 0x7D, 0xF4, 0x81,
                /* 0DE0 */   0x42, 0xD4, 0x06, 0x23, 0x84, 0x0A, 0xE1, 0x65,
                /* 0DE8 */   0x7F, 0x10, 0x24, 0xDE, 0x89, 0x44, 0xE7, 0x6E,
                /* 0DF0 */   0x47, 0x1A, 0x0D, 0xEA, 0x44, 0xE0, 0xB1, 0xFB,
                /* 0DF8 */   0xAE, 0xE4, 0xFB, 0x39, 0xEE, 0xDC, 0xF0, 0xE8,
                /* 0E00 */   0xCA, 0x4E, 0xC7, 0xE4, 0xAC, 0x40, 0x4F, 0x01,
                /* 0E08 */   0xF8, 0xB3, 0x87, 0xA7, 0x7F, 0xF0, 0xEC, 0x93,
                /* 0E10 */   0x6C, 0x38, 0x3E, 0x44, 0x9F, 0x75, 0x3D, 0x81,
                /* 0E18 */   0xC7, 0x63, 0x06, 0xE8, 0xD3, 0x29, 0xFF, 0xFF,
                /* 0E20 */   0x9F, 0x4E, 0xE1, 0x9D, 0xA8, 0x7C, 0x3A, 0xC5,
                /* 0E28 */   0xC9, 0x1F, 0x04, 0x6A, 0x64, 0x86, 0xF6, 0x10,
                /* 0E30 */   0x9F, 0x55, 0x7C, 0x2D, 0xF5, 0xB0, 0x98, 0xD8,
                /* 0E38 */   0x2F, 0x33, 0x1B, 0x0F, 0x10, 0x98, 0xF8, 0xB3,
                /* 0E40 */   0x86, 0x6F, 0x06, 0x9E, 0xAF, 0xCF, 0x9A, 0x82,
                /* 0E48 */   0x90, 0x93, 0xF1, 0xA0, 0x4E, 0x1F, 0x1E, 0x74,
                /* 0E50 */   0xAD, 0xD8, 0xBA, 0x07, 0x04, 0x7F, 0x4C, 0x66,
                /* 0E58 */   0xC0, 0x07, 0xC2, 0xCE, 0x00, 0x1E, 0xB7, 0xEF,
                /* 0E60 */   0xFF, 0x0F, 0x1D, 0x18, 0x60, 0x9F, 0x1B, 0xDE,
                /* 0E68 */   0x21, 0x8C, 0x8B, 0xC3, 0x8F, 0xEC, 0x1F, 0xA8,
                /* 0E70 */   0x8F, 0x83, 0xB8, 0xF3, 0x0E, 0xDC, 0xD1, 0xC0,
                /* 0E78 */   0x1B, 0x24, 0xFC, 0xF3, 0xB5, 0xAF, 0x37, 0xBE,
                /* 0E80 */   0x7E, 0x98, 0xC0, 0xE7, 0x3C, 0x70, 0x8C, 0x05,
                /* 0E88 */   0xDE, 0xF9, 0x05, 0xF8, 0xFC, 0xFF, 0x8F, 0x96,
                /* 0E90 */   0x40, 0xE0, 0xE5, 0xE3, 0xA3, 0x0A, 0x15, 0x03,
                /* 0E98 */   0x83, 0x3A, 0xAD, 0x00, 0x56, 0x27, 0xFD, 0x84,
                /* 0EA0 */   0xF0, 0xB4, 0x02, 0xF6, 0xF8, 0x0F, 0x0F, 0x79,
                /* 0EA8 */   0x38, 0xAD, 0x00, 0x2A, 0xFE, 0xFF, 0xA7, 0x15,
                /* 0EB0 */   0xC0, 0x4B, 0xCC, 0xD3, 0x0A, 0x54, 0xE0, 0xF3,
                /* 0EB8 */   0xF1, 0x25, 0xC4, 0x87, 0x02, 0x13, 0x0C, 0x34,
                /* 0EC0 */   0x6E, 0x7A, 0x60, 0xF3, 0x11, 0x83, 0x1F, 0x1E,
                /* 0EC8 */   0x7C, 0x5A, 0x61, 0xC7, 0x31, 0x7E, 0x58, 0x01,
                /* 0ED0 */   0xF3, 0x60, 0xF0, 0x87, 0x15, 0xE0, 0x36, 0x16,
                /* 0ED8 */   0xFC, 0x61, 0x05, 0xF8, 0xFD, 0xFF, 0x0F, 0x2B,
                /* 0EE0 */   0xE0, 0xB9, 0x73, 0xF8, 0xEC, 0x06, 0xB6, 0xE9,
                /* 0EE8 */   0x78, 0x8E, 0x98, 0xA3, 0x1B, 0xEE, 0xF4, 0x02,
                /* 0EF0 */   0xF8, 0x3E, 0xB9, 0x3C, 0xBD, 0x00, 0x66, 0xFE,
                /* 0EF8 */   0xFF, 0xA7, 0x17, 0xC0, 0xF9, 0x81, 0xE0, 0xE9,
                /* 0F00 */   0x05, 0xD8, 0x0E, 0xC6, 0xA7, 0x17, 0xE0, 0x39,
                /* 0F08 */   0x16, 0x9F, 0x5E, 0xC0, 0xF5, 0xFF, 0x3F, 0xBD,
                /* 0F10 */   0x00, 0xBC, 0x84, 0x78, 0x7A, 0x01, 0x96, 0xFF,
                /* 0F18 */   0xFF, 0xD3, 0x0B, 0xC0, 0x93, 0x41, 0x3D, 0xBD,
                /* 0F20 */   0x00, 0xDB, 0xC1, 0xF8, 0xF4, 0x02, 0x1C, 0xFF,
                /* 0F28 */   0xFF, 0x63, 0xE1, 0xA7, 0x17, 0x80, 0xC3, 0xE7,
                /* 0F30 */   0x8C, 0xA7, 0x17, 0x30, 0xFE, 0xFF, 0x4F, 0x2F,
                /* 0F38 */   0x00, 0xB7, 0xC0, 0x9F, 0x5E, 0x80, 0xED, 0x60,
                /* 0F40 */   0x7C, 0x7A, 0x01, 0xDF, 0xFF, 0xFF, 0xF4, 0x02,
                /* 0F48 */   0xDE, 0xB1, 0xF8, 0xF4, 0x02, 0x38, 0x55, 0x68,
                /* 0F50 */   0xD3, 0xA7, 0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4,
                /* 0F58 */   0x28, 0xD3, 0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19,
                /* 0F60 */   0x1B, 0x94, 0x83, 0x3F, 0x0B, 0x34, 0x2A, 0x07,
                /* 0F68 */   0x79, 0x43, 0x08, 0xC4, 0xD2, 0x28, 0x04, 0xE2,
                /* 0F70 */   0x38, 0x20, 0x54, 0xE8, 0x23, 0x46, 0x20, 0x0E,
                /* 0F78 */   0x0E, 0x42, 0xA3, 0x68, 0x00, 0x61, 0xC2, 0xDE,
                /* 0F80 */   0x20, 0x02, 0x71, 0x5C, 0x35, 0x20, 0x4C, 0xB8,
                /* 0F88 */   0x1B, 0x10, 0x26, 0xC4, 0xCE, 0x59, 0x81, 0x45,
                /* 0F90 */   0x06, 0xD1, 0xC1, 0xC2, 0x12, 0xF4, 0x80, 0x30,
                /* 0F98 */   0x51, 0x20, 0x02, 0x74, 0x0C, 0x20, 0x1A, 0x0B,
                /* 0FA0 */   0x88, 0x8A, 0xF0, 0x03, 0x48, 0x41, 0xA8, 0x4C,
                /* 0FA8 */   0x10, 0x0D, 0x81, 0x18, 0x02, 0x61, 0x11, 0x40,
                /* 0FB0 */   0x68, 0x78, 0x10, 0x2A, 0x5B, 0xD1, 0x70, 0x28,
                /* 0FB8 */   0x08, 0x95, 0xE9, 0x08, 0x84, 0x45, 0x95, 0x05,
                /* 0FC0 */   0x31, 0x01, 0x88, 0x42, 0x3C, 0x09, 0x82, 0x10,
                /* 0FC8 */   0x71, 0x6F, 0x07, 0xFD, 0xFF, 0x41, 0x2C, 0xF5,
                /* 0FD0 */   0xCB, 0x20, 0x10, 0x87, 0x5A, 0xAB, 0x40, 0x1C,
                /* 0FD8 */   0xF4, 0x05, 0x29, 0x60, 0x4B, 0x7C, 0xB8, 0x04,
                /* 0FE0 */   0x22, 0x12, 0xC5, 0x01, 0xB1, 0x90, 0x0F, 0x03,
                /* 0FE8 */   0x01, 0x39, 0x9A, 0x3B, 0x10, 0x16, 0xDA, 0x1E,
                /* 0FF0 */   0x08, 0x13, 0xF1, 0x22, 0x10, 0x88, 0xC3, 0xFF,
                /* 0FF8 */   0x04, 0x82, 0x12, 0xE9, 0x8F, 0x02, 0x0D, 0x80,
                /* 1000 */   0x3C, 0x17, 0x04, 0xE2, 0xD8, 0x6F, 0x83, 0x20,
                /* 1008 */   0x44, 0xB4, 0xC8, 0x03, 0x00, 0x7D, 0x0A, 0x09,
                /* 1010 */   0xC4, 0x82, 0x5E, 0x05, 0x8F, 0x00, 0x0C, 0x84,
                /* 1018 */   0x8A, 0xFE, 0x15, 0x04, 0x21, 0x52, 0x5F, 0x07,
                /* 1020 */   0x41, 0x48, 0x50, 0x10, 0x1A, 0xC7, 0x28, 0x08,
                /* 1028 */   0x0B, 0xF1, 0x98, 0x10, 0x88, 0x25, 0xFC, 0x12,
                /* 1030 */   0x02, 0x32, 0x10, 0xFA, 0xFF, 0x07
            })
            Method (WMAB, 3, NotSerialized)
            {
                If (LGreaterEqual (SizeOf (Arg2), 0x04))
                {
                    CreateDWordField (Arg2, Zero, FUNC)
                    CreateDWordField (Arg2, 0x04, SUBF)
                    Store (Zero, Local2)
                    If (LGreater (SizeOf (Arg2), 0x08))
                    {
                        Subtract (SizeOf (Arg2), 0x08, Local2)
                        ShiftLeft (Local2, 0x03, Local2)
                    }

                    CreateField (Arg2, 0x40, Local2, ARGS)
                    Store (FUNC, Debug)
                    Store (SUBF, Debug)
                    Store (ARGS, Debug)
                    Return (^^PCI0.PEG0.VGA.NVIF (FUNC, SUBF, ARGS))
                }
            }
        }

        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {1,3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
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
            Name (PR00, Package (0x24)
            {
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
                    LNKB, 
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
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    LNKC, 
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
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKA, 
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
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
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
                    LNKD, 
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
                    0x0006FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }
            })
            Name (AR00, Package (0x24)
            {
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
                    0x11
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
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    Zero, 
                    0x12
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
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x10
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
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
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
                    0x13
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
                    0x0006FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
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
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, Buffer (0x10)
            {
                /* 0000 */   0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40,
                /* 0008 */   0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, One))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (PMEE)
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            Zero
                        })
                    }
                }

                Name (PR01, Package (0x0C)
                {
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
                Name (AR01, Package (0x0C)
                {
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
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
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
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
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
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
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
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
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
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
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
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
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
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
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
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1010,             // Range Minimum
                            0x1010,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
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
                            0x54,               // Length
                            )
                        IO (Decode16,
                            0x0458,             // Range Minimum
                            0x0458,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
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
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
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
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                Method (ECOK, 0, NotSerialized)
                {
                    If (LEqual (^EC0.OKEC, One))
                    {
                        Store (CMPS, ^EC0.NPST)
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Name (OKEC, Zero)
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, OKEC)
                            If (And (GL01, 0x20))
                            {
                                Store (One, KLSW)
                            }
                            Else
                            {
                                Store (Zero, KLSW)
                            }

                            If (KLSW)
                            {
                                If (And (LEqual (WLEX, One), LEqual (WLAT, One)))
                                {
                                    Store (One, GP55)
                                }
                                Else
                                {
                                    Store (Zero, GP55)
                                }

                                If (And (LEqual (BTEX, One), LEqual (BTAT, One)))
                                {
                                    B_ON ()
                                }
                                Else
                                {
                                    B_OF ()
                                }
                            }
                            Else
                            {
                                Store (Zero, GP55)
                                B_OF ()
                            }
                        }

                        If (LAnd (LGreaterEqual (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                        {
                            Store (0x0A, BRTS)
                        }
                    }

                    OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
                    Field (ERAM, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x01), 
                        S3S5,   1, 
                        Offset (0x5A), 
                        Offset (0x5B), 
                        Offset (0x5C), 
                        Offset (0x5D), 
                        ENIB,   16, 
                        ENDD,   8, 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   256, 
                        BCNT,   8, 
                        SMAA,   24, 
                        Offset (0x90), 
                        BMFN,   72, 
                        BATD,   56, 
                        DKSP,   1, 
                        DKIN,   1, 
                        DKID,   1, 
                        DKOK,   1, 
                        DKPW,   1, 
                        Offset (0xA1), 
                        VIDO,   1, 
                        TOUP,   1, 
                        Offset (0xA2), 
                        ODTS,   8, 
                        OSTY,   3, 
                            ,   4, 
                        ADPT,   1, 
                        PWAK,   1, 
                        MWAK,   1, 
                        LWAK,   1, 
                        RWAK,   1, 
                        WWAK,   1, 
                        UWAK,   1, 
                        KWAK,   1, 
                        TWAK,   1, 
                        CCAC,   1, 
                        AOAC,   1, 
                        BLAC,   1, 
                        PSRC,   1, 
                        BOAC,   1, 
                        LCAC,   1, 
                        AAAC,   1, 
                        ACAC,   1, 
                        Offset (0xA7), 
                        OSTT,   8, 
                        OSST,   8, 
                        THLT,   8, 
                        TCNL,   8, 
                        MODE,   1, 
                            ,   2, 
                        INIT,   1, 
                        FAN1,   1, 
                        FAN2,   1, 
                        FANT,   1, 
                        SKNM,   1, 
                        SDTM,   8, 
                        FSSN,   4, 
                        FANU,   4, 
                        PCVL,   4, 
                            ,   2, 
                        SWTO,   1, 
                        TTHR,   1, 
                        TTHM,   1, 
                        THTL,   1, 
                            ,   2, 
                        NPST,   4, 
                        CTMP,   8, 
                        CTML,   8, 
                        SKTA,   8, 
                        SKTB,   8, 
                        SKTC,   8, 
                        Offset (0xB6), 
                        NTMP,   8, 
                        S4ST,   1, 
                        SKEY,   1, 
                        DIGM,   1, 
                        CDLE,   1, 
                        Offset (0xB8), 
                            ,   1, 
                        LIDF,   1, 
                        PMEE,   1, 
                        PWBE,   1, 
                        RNGE,   1, 
                        BTWE,   1, 
                        Offset (0xB9), 
                        BRTS,   8, 
                        CNTS,   8, 
                        WLAT,   1, 
                        BTAT,   1, 
                        WLEX,   1, 
                        BTEX,   1, 
                        KLSW,   1, 
                        WLOK,   1, 
                        AT3G,   1, 
                        EX3G,   1, 
                        PJID,   8, 
                        CPUN,   8, 
                        BOL0,   1, 
                        BOL1,   1, 
                            ,   2, 
                        BCC0,   1, 
                        BCC1,   1, 
                        Offset (0xBF), 
                        BPU0,   1, 
                        BPU1,   1, 
                            ,   2, 
                        BOS0,   1, 
                        BOS1,   1, 
                        Offset (0xC0), 
                        BTY0,   1, 
                        BAM0,   1, 
                        BAL0,   1, 
                            ,   1, 
                        BMF0,   3, 
                        Offset (0xC1), 
                        BST0,   8, 
                        BRC0,   16, 
                        BSN0,   16, 
                        BPV0,   16, 
                        BDV0,   16, 
                        BDC0,   16, 
                        BFC0,   16, 
                        GAU0,   8, 
                        CYC0,   8, 
                        BPC0,   16, 
                        BAC0,   16, 
                        BTW0,   8, 
                        BVL0,   8, 
                        BTM0,   8, 
                        BAT0,   8, 
                        BCG0,   16, 
                        BCT0,   8, 
                        BCI0,   8, 
                        BCM0,   8, 
                        BOT0,   8, 
                        BSSB,   16, 
                        BOV0,   8, 
                        BCF0,   8, 
                        BAD0,   8, 
                        BCV1,   16, 
                        BCV2,   16, 
                        BCV3,   16, 
                        BCV4,   16, 
                        Offset (0xF4), 
                        BMD0,   16, 
                        BACV,   16, 
                        BDN0,   8
                    }

                    Name (HKTF, Zero)
                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x11, P80H)
                        If (LGreaterEqual (OSYS, 0x07D6))
                        {
                            If (IGDS)
                            {
                                Notify (^^^GFX0.DD02, 0x87)
                            }
                            Else
                            {
                                Notify (^^^PEG0.VGA.LCD, 0x87)
                            }
                        }
                        Else
                        {
                            Store (BRTS, Local0)
                            Add (Local0, 0x02, Local0)
                            If (IGDS)
                            {
                                ^^^GFX0.AINT (One, DerefOf (Index (^^^GFX0.DD02.PLVL, Local0)))
                            }
                            Else
                            {
                                ^^^PEG0.VGA.NINT (0x02, DerefOf (Index (^^^PEG0.VGA.LCD.PLVL, Local0)))
                            }
                        }

                        Notify (VPC0, 0x80)
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x12, P80H)
                        If (LGreaterEqual (OSYS, 0x07D6))
                        {
                            If (IGDS)
                            {
                                Notify (^^^GFX0.DD02, 0x86)
                            }
                            Else
                            {
                                Notify (^^^PEG0.VGA.LCD, 0x86)
                            }
                        }
                        Else
                        {
                            Store (BRTS, Local0)
                            Add (Local0, 0x02, Local0)
                            If (IGDS)
                            {
                                ^^^GFX0.AINT (One, DerefOf (Index (^^^GFX0.DD02.PLVL, Local0)))
                            }
                            Else
                            {
                                ^^^PEG0.VGA.NINT (0x02, DerefOf (Index (^^^PEG0.VGA.LCD.PLVL, Local0)))
                            }
                        }

                        Notify (VPC0, 0x80)
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x13, P80H)
                        If (ECON)
                        {
                            Notify (\_TZ.TZ00, 0x80)
                        }
                    }

                    Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x14, P80H)
                        If (ECON)
                        {
                            Notify (\_TZ.TZ00, 0x80)
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LAnd (ECOK (), LEqual (ECDY, Zero)))
                        {
                            If (LEqual (Zero, APTG))
                            {
                                If (IGDS)
                                {
                                    ^^^GFX0.GHDS (Zero)
                                }
                                Else
                                {
                                    ^^^PEG0.VGA.DSSW ()
                                }
                            }

                            Sleep (0x01F4)
                            Notify (VPC0, 0x80)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x1D, P80H)
                        PCLK ()
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x25, P80H)
                        Store ("=====QUERY_25=====", Debug)
                        Sleep (0x03E8)
                        Notify (BAT1, 0x81)
                        Sleep (0x03E8)
                        Notify (BAT1, 0x80)
                    }

                    Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x34, P80H)
                        Store ("=====QUERY_34=====", Debug)
                        Store (GP2, Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (One, GP2)
                            Store (One, GP5)
                        }
                        Else
                        {
                            Store (Zero, GP2)
                            Store (Zero, GP5)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x60, P80H)
                        Store ("=====QUERY_60=====", Debug)
                        Store (GP55, Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (One, GP55)
                        }
                        Else
                        {
                            Store (Zero, GP55)
                        }
                    }

                    Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x37, P80H)
                        Store ("=====QUERY_37=====", Debug)
                        Notify (ACAD, 0x80)
                        Sleep (0x03E8)
                        Notify (BAT1, 0x80)
                        Store (Zero, ^^^RP05.J380.D3EF)
                        Store (One, PWRS)
                        PNOT ()
                    }

                    Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x38, P80H)
                        Store ("=====QUERY_38=====", Debug)
                        Notify (ACAD, 0x80)
                        Sleep (0x03E8)
                        Notify (BAT1, 0x80)
                        Store (Zero, PWRS)
                        Store (One, ^^^RP05.J380.D3EF)
                        PNOT ()
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x65, P80H)
                        Store ("=====QUERY_65=====", Debug)
                        If (KLSW)
                        {
                            If (And (LEqual (WLEX, One), LEqual (WLAT, One)))
                            {
                                Store (One, GP55)
                            }
                            Else
                            {
                                Store (Zero, GP55)
                            }

                            If (And (LEqual (BTEX, One), LEqual (BTAT, One)))
                            {
                                B_ON ()
                            }
                            Else
                            {
                                B_OF ()
                            }
                        }
                        Else
                        {
                            Store (Zero, GP55)
                            B_OF ()
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (IGDS)
                        {
                            Store (0x61, P80H)
                            Store (One, HKTF)
                            Notify (^^^PEG0.PEGP, 0xDF)
                            Store (CMSR (0x52), Local4)
                            Add (Local4, One, Local4)
                            CMSW (0x52, Local4)
                        }
                    }

                    OperationRegion (CCLK, SystemIO, 0x0410, 0x04)
                    Field (CCLK, DWordAcc, NoLock, Preserve)
                    {
                            ,   1, 
                        DUTY,   3, 
                        THEN,   1, 
                        Offset (0x01), 
                        FTT,    1, 
                            ,   8, 
                        TSTS,   1
                    }

                    OperationRegion (ECRM, EmbeddedControl, Zero, 0xFF)
                    Field (ECRM, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x94), 
                        ERIB,   16, 
                        ERBD,   8, 
                        Offset (0xAC), 
                        Offset (0xAD), 
                            ,   4, 
                        Offset (0xAE), 
                        PTVL,   3, 
                            ,   4, 
                        Offset (0xAF), 
                        Offset (0xBC), 
                        Offset (0xBD), 
                        Offset (0xBE), 
                        Offset (0xF9), 
                        RFRD,   16
                    }

                    Mutex (FAMX, 0x00)
                    Method (FANG, 1, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        Store (Arg0, ERIB)
                        Store (ERBD, Local0)
                        Release (FAMX)
                        Return (Local0)
                    }

                    Method (FANW, 2, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        Store (Arg0, ERIB)
                        Store (Arg1, ERBD)
                        Release (FAMX)
                        Return (Arg1)
                    }

                    Method (TUVR, 1, NotSerialized)
                    {
                        Return (0x03)
                    }

                    Method (THRO, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (THEN)
                        }
                        Else
                        {
                            If (LEqual (Arg0, One))
                            {
                                Return (DUTY)
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x02))
                                {
                                    Return (TTHR)
                                }
                                Else
                                {
                                    Return (0xFF)
                                }
                            }
                        }
                    }

                    Method (CLCK, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Zero, THEN)
                            Store (Zero, FTT)
                        }
                        Else
                        {
                            Store (Arg0, DUTY)
                            Store (One, THEN)
                        }

                        Return (THEN)
                    }

                    Method (CMFC, 4, Serialized)
                    {
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (RTVL, Package (0x04)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        While (One)
                        {
                            Store (ToInteger (Arg0), _T_0)
                            If (LEqual (_T_0, 0xFE00))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        While (One)
                                        {
                                            Store (ToInteger (Arg2), _T_2)
                                            If (LEqual (_T_2, Zero))
                                            {
                                                If (LNotEqual (ToInteger (Arg3), Zero))
                                                {
                                                    Store (0x8300, Index (RTVL, Zero))
                                                }
                                                Else
                                                {
                                                    Store (Zero, Index (RTVL, Zero))
                                                    Store (IDMN, Index (RTVL, One))
                                                    Store (IDPC, Index (RTVL, 0x02))
                                                }
                                            }
                                            Else
                                            {
                                                Store (0x8300, Index (RTVL, Zero))
                                            }

                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        Store (0x8000, Index (RTVL, Zero))
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                Store (0x8000, Index (RTVL, Zero))
                            }

                            Break
                        }

                        Return (RTVL)
                    }

                    Method (PCLK, 0, NotSerialized)
                    {
                        Store (PCVL, Local0)
                        Store (Local0, P80H)
                        Sleep (0x01F4)
                        Store (CMPS, Local1)
                        If (LLessEqual (Local0, Local1))
                        {
                            Store (Local0, \_PR.CPU0._PPC)
                        }
                        Else
                        {
                            Store (Local1, \_PR.CPU0._PPC)
                        }

                        PNOT ()
                    }

                    OperationRegion (ECAM, EmbeddedControl, Zero, 0xFF)
                    Field (ECAM, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x06), 
                        E06X,   8, 
                        E070,   1, 
                        E071,   1, 
                        E072,   1, 
                        E073,   1, 
                        E074,   1, 
                        E075,   1, 
                        E076,   1, 
                        E077,   1, 
                        E08X,   8, 
                        E09X,   8, 
                        EDCC,   1, 
                        ALSC,   1, 
                        CDMB,   1, 
                        CCSB,   1, 
                        BTSM,   1, 
                        BTCM,   1, 
                        LBTM,   1, 
                        CSBM,   1, 
                        HYMS,   1, 
                        HDME,   1, 
                        E0B2,   1, 
                        SWCS,   1, 
                        IPEN,   1, 
                        DCRC,   1, 
                        CREC,   1, 
                        E0B7,   1, 
                        E0C0,   1, 
                        EODD,   1, 
                        E0C2,   1, 
                            ,   2, 
                        E0C5,   1, 
                        E0C6,   1, 
                        EODS,   1, 
                        Offset (0x0F), 
                        FNCM,   8, 
                        Offset (0xB8), 
                            ,   7, 
                        CMEX,   1
                    }

                    OperationRegion (ECF2, EmbeddedControl, Zero, 0xFF)
                    Field (ECF2, ByteAcc, Lock, Preserve)
                    {
                        VCMD,   8, 
                        VDAT,   8, 
                        VSTA,   8
                    }

                    Device (VPC0)
                    {
                        Name (_HID, "VPC2004")  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Name (_VPC, 0x0140)
                        Name (VPCD, Zero)
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_CFG, 0, NotSerialized)
                        {
                            If (LEqual (CATO, Zero))
                            {
                                Store (SizeOf (\_PR.CPU0._PSS), Local0)
                                Store (DerefOf (Index (\_PR.CPU0._PSS, One)), Local1)
                                Store (DerefOf (Index (Local1, Zero)), Local1)
                                Divide (Local1, 0x0A, Local2, Local1)
                                Multiply (Local1, 0x07, Local1)
                                Store (Zero, Local2)
                                While (LGreater (Local0, Local2))
                                {
                                    Store (DerefOf (Index (\_PR.CPU0._PSS, Local2)), Local3)
                                    Store (DerefOf (Index (Local3, Zero)), Local3)
                                    If (LGreaterEqual (Local1, Local3))
                                    {
                                        Break
                                    }

                                    Increment (Local2)
                                }

                                Store (Local2, CATO)
                            }

                            Store (_VPC, Local0)
                            And (Local0, 0xFFFF, Local0)
                            Or (Local0, 0xE000, Local0)
                            And (Local0, 0xFFFFE8FF, Local0)
                            If (LNotEqual (^^^^PEG0.PEGP.VID, 0xFFFF))
                            {
                                If (LEqual (^^^^GFX0.VID, 0x8086))
                                {
                                    If (LEqual (^^^^PEG0.PEGP.VID, 0x10DE))
                                    {
                                        Or (Local0, 0x1500, Local0)
                                    }

                                    If (LEqual (^^^^PEG0.PEGP.VID, 0x1002))
                                    {
                                        Or (Local0, 0x1400, Local0)
                                    }
                                }
                                Else
                                {
                                    If (LEqual (^^^^PEG0.PEGP.VID, 0x10DE))
                                    {
                                        Or (Local0, 0x0300, Local0)
                                    }

                                    If (LEqual (^^^^PEG0.PEGP.VID, 0x1002))
                                    {
                                        Or (Local0, 0x0200, Local0)
                                    }
                                }
                            }
                            Else
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (HYMS)
                            {
                                Or (Local0, 0x1000, Local0)
                            }
                            Else
                            {
                                And (Local0, 0xEFFF, Local0)
                            }

                            Or (Local0, 0x04, Local0)
                            Or (Local0, 0x02, Local0)
                            Store (BTEX, Local1)
                            If (EX3G)
                            {
                                Or (Local1, 0x02, Local1)
                            }

                            If (WLEX)
                            {
                                Or (Local1, 0x04, Local1)
                            }

                            If (CMEX)
                            {
                                Or (Local1, 0x08, Local1)
                            }

                            Or (Local1, 0x70, Local1)
                            If (LEqual (GP69, Zero))
                            {
                                Or (Local1, 0x80, Local1)
                            }

                            Multiply (Local1, 0x00010000, Local1)
                            Add (Local1, Local0, Local0)
                            Store (Local0, _VPC)
                            Return (_VPC)
                        }

                        Method (VPCR, 1, Serialized)
                        {
                            If (LEqual (Arg0, One))
                            {
                                Store (VCMD, VPCD)
                            }
                            Else
                            {
                                Store (VDAT, VPCD)
                            }

                            Return (VPCD)
                        }

                        Method (VPCW, 2, Serialized)
                        {
                            If (LEqual (Arg0, One))
                            {
                                Store (Arg1, VCMD)
                                If (LEqual (Arg1, 0x13))
                                {
                                    If (LLess (OSYS, 0x07D6))
                                    {
                                        Store (VDAT, Local0)
                                        Add (Local0, 0x02, Local0)
                                        If (IGDS)
                                        {
                                            ^^^^GFX0.AINT (One, DerefOf (Index (^^^^GFX0.DD02.PLVL, Local0)))
                                        }
                                        Else
                                        {
                                            ^^^^PEG0.VGA.NINT (0x02, DerefOf (Index (^^^^PEG0.VGA.LCD.PLVL, Local0)))
                                        }

                                        Return (Zero)
                                    }
                                }
                            }
                            Else
                            {
                                Store (Arg1, VDAT)
                            }

                            Return (Zero)
                        }

                        Method (APPC, 1, Serialized)
                        {
                            Store (Arg0, APTG)
                            Store (Arg0, APEJ)
                            Return (Zero)
                        }

                        Method (DBSL, 0, NotSerialized)
                        {
                            Return (TBCL ())
                        }

                        Name (TBSL, Package (0x0B) {})
                        Name (RBSL, One)
                        Method (TBCL, 0, NotSerialized)
                        {
                            If (RBSL)
                            {
                                Store (Zero, Local0)
                                Store (0x0A, Local1)
                                While (One)
                                {
                                    Store (DerefOf (Index (TBSL, Local0)), Local2)
                                    Store (DerefOf (Index (TBSL, Local1)), Index (TBSL, Local0))
                                    Store (Local2, Index (TBSL, Local1))
                                    Increment (Local0)
                                    Decrement (Local1)
                                    If (LEqual (Local0, Local1))
                                    {
                                        Break
                                    }
                                }

                                Store (Zero, RBSL)
                            }

                            Return (TBSL)
                        }

                        Method (HALS, 0, NotSerialized)
                        {
                            Store (Zero, Local0)
                            Return (Local0)
                        }

                        Method (SALS, 1, Serialized)
                        {
                            If (LEqual (Arg0, Zero)) {}
                            If (LEqual (Arg0, One)) {}
                            If (LEqual (Arg0, 0x04))
                            {
                                If (LEqual (GP69, Zero))
                                {
                                    Store (One, CREC)
                                }
                            }

                            If (LEqual (Arg0, 0x05))
                            {
                                If (LEqual (GP69, Zero))
                                {
                                    Store (Zero, CREC)
                                }
                            }

                            If (LEqual (Arg0, 0x06)) {}
                            If (LEqual (Arg0, 0x07)) {}
                            Return (Zero)
                        }

                        Method (HODD, 0, NotSerialized)
                        {
                            Return (0xFF)
                        }

                        Method (SODD, 1, Serialized)
                        {
                        }

                        Method (GBMD, 0, NotSerialized)
                        {
                            Store (0x10000000, Local0)
                            If (LEqual (One, CDMB))
                            {
                                Or (Local0, One, Local0)
                            }

                            If (LEqual (One, BTSM))
                            {
                                Or (Local0, 0x02, Local0)
                            }

                            If (LEqual (One, BTCM))
                            {
                                Or (Local0, 0x04, Local0)
                            }

                            If (LEqual (One, E075))
                            {
                                Or (Local0, 0x08, Local0)
                            }

                            If (LEqual (One, BTCM))
                            {
                                Or (Local0, 0x20, Local0)
                            }

                            If (LEqual (One, E071))
                            {
                                Or (Local0, 0x80, Local0)
                            }

                            If (LEqual (One, E072))
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (LEqual (One, E073))
                            {
                                Or (Local0, 0x0200, Local0)
                            }

                            If (LEqual (One, E070))
                            {
                                Or (Local0, 0x0800, Local0)
                            }

                            Return (Local0)
                        }

                        Method (SBMC, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                Store (Zero, CDMB)
                                Store (One, EDCC)
                                Return (Zero)
                            }

                            If (LEqual (Arg0, One))
                            {
                                Store (Zero, EDCC)
                                Store (One, CDMB)
                                Return (Zero)
                            }

                            If (LEqual (Arg0, 0x02))
                            {
                                Store (One, CCSB)
                                Return (Zero)
                            }

                            If (LEqual (Arg0, 0x03))
                            {
                                Store (One, BTSM)
                                Return (Zero)
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                Store (One, BTCM)
                                Store (Zero, LBTM)
                                Return (Zero)
                            }

                            If (LEqual (Arg0, 0x05))
                            {
                                Store (One, LBTM)
                                Store (Zero, BTCM)
                                Return (Zero)
                            }

                            If (LEqual (Arg0, 0x06))
                            {
                                Store (One, CSBM)
                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Method (SHDC, 1, Serialized)
                        {
                            Store (Arg0, IPEN)
                            Return (Zero)
                        }

                        Method (SVCR, 1, Serialized)
                        {
                            Store (Zero, Local0)
                            If (LEqual (Arg0, 0x02))
                            {
                                Store (Zero, E076)
                            }

                            If (LEqual (Arg0, 0x03))
                            {
                                Store (One, E076)
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                Store (One, E074)
                            }
                        }

                        Method (MHST, 1, NotSerialized)
                        {
                            Store (Zero, Local0)
                            If (LEqual (Arg0, Zero))
                            {
                                Store (E06X, Local0)
                                Multiply (Local0, 0x64, Local0)
                                Or (Local0, 0x01010000, Local0)
                                Return (Local0)
                            }

                            If (LEqual (Arg0, 0x40))
                            {
                                Store (0x01010001, Local0)
                            }

                            Return (Local0)
                        }

                        Method (MHTT, 1, NotSerialized)
                        {
                            Store (Zero, Local0)
                            If (LEqual (Arg0, Zero))
                            {
                                Store (CTMP, Local0)
                            }

                            If (LEqual (Arg0, One))
                            {
                                Store (CTMP, Local0)
                            }

                            If (LEqual (Arg0, 0x02))
                            {
                                Store (SKTC, Local0)
                            }

                            Return (Local0)
                        }

                        Method (MHBT, 1, NotSerialized)
                        {
                            Name (MHB0, Buffer (0x10)
                            {
                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                            CreateByteField (MHB0, Zero, BT0)
                            CreateByteField (MHB0, One, BT1)
                            CreateByteField (MHB0, 0x02, BT2)
                            CreateByteField (MHB0, 0x03, BT3)
                            CreateByteField (MHB0, 0x04, BT4)
                            CreateByteField (MHB0, 0x05, BT5)
                            CreateByteField (MHB0, 0x06, BT6)
                            CreateByteField (MHB0, 0x07, BT7)
                            CreateByteField (MHB0, 0x08, BT8)
                            CreateByteField (MHB0, 0x09, BT9)
                            CreateByteField (MHB0, 0x0A, BTA)
                            CreateByteField (MHB0, 0x0B, BTB)
                            CreateByteField (MHB0, 0x0C, BTC)
                            CreateByteField (MHB0, 0x0D, BTD)
                            CreateByteField (MHB0, 0x0E, BTE)
                            CreateByteField (MHB0, 0x0F, BTF)
                            If (LEqual (Arg0, Zero))
                            {
                                Store (0x34, BT0)
                                Store (0x2D, BT1)
                                Store (0x3C, BT2)
                                Store (0x3C, BT3)
                                Store (0x46, BT4)
                                Store (0x46, BT5)
                                Store (Zero, BT6)
                                Store (Zero, BT7)
                                Store (Zero, BT8)
                                Store (Zero, BT9)
                                Store (0x3C, BTA)
                                Store (0x3C, BTB)
                                Store (0x46, BTC)
                                Store (0x46, BTD)
                                Store (Zero, BTE)
                                Store (Zero, BTF)
                            }

                            If (LEqual (Arg0, One))
                            {
                                Store (0x04, BT0)
                                Store (0x34, BT1)
                                Store (0x3C, BT2)
                                Store (0x46, BT3)
                                Store (0x4E, BT4)
                                Store (Zero, BT5)
                                Store (Zero, BT6)
                                Store (Zero, BT7)
                                Store (Zero, BT8)
                                Store (Zero, BT9)
                                Store (Zero, BTA)
                                Store (Zero, BTB)
                                Store (Zero, BTC)
                                Store (Zero, BTD)
                                Store (Zero, BTE)
                                Store (Zero, BTF)
                            }

                            If (LEqual (Arg0, 0x02))
                            {
                                Store (0x05, BT0)
                                Store (0x34, BT1)
                                Store (0x3C, BT2)
                                Store (0x46, BT3)
                                Store (0x4B, BT4)
                                Store (Zero, BT5)
                                Store (Zero, BT6)
                                Store (Zero, BT7)
                                Store (Zero, BT8)
                                Store (Zero, BT9)
                                Store (Zero, BTA)
                                Store (Zero, BTB)
                                Store (Zero, BTC)
                                Store (Zero, BTD)
                                Store (Zero, BTE)
                                Store (Zero, BTF)
                            }

                            Return (MHB0)
                        }

                        Method (MHFT, 1, NotSerialized)
                        {
                            Store (Arg0, Local0)
                            Store (Arg0, Local1)
                            Store (Zero, Local2)
                            And (Local0, 0xFF, Local0)
                            And (Local1, 0xFF00, Local1)
                            If (LEqual (Local1, Zero))
                            {
                                If (LEqual (Local0, One))
                                {
                                    Store (One, FNCM)
                                    Store (One, Local2)
                                }
                                Else
                                {
                                    If (LEqual (Local1, 0x80))
                                    {
                                        Store (0x80, FNCM)
                                        Store (One, Local2)
                                    }
                                    Else
                                    {
                                        Store (0xFF, FNCM)
                                        Store (One, Local2)
                                    }
                                }
                            }
                            Else
                            {
                                Return (Ones)
                            }

                            Return (Local2)
                        }

                        Method (MHCT, 1, Serialized)
                        {
                            Store (Zero, Local0)
                            If (LEqual (Arg0, Ones))
                            {
                                Or (Local0, SizeOf (\_PR.CPU0._PSS), Local0)
                                ShiftLeft (Local0, 0x08, Local0)
                                Or (Local0, \_PR.CPU0._PPC, Local0)
                                ShiftLeft (Local0, 0x08, Local0)
                                Or (Local0, Zero, Local0)
                                ShiftLeft (Local0, 0x08, Local0)
                            }
                            Else
                            {
                                Store (Arg0, Local0)
                                And (Local0, 0x1F, Local0)
                                Store (Arg0, Local1)
                                ShiftRight (Local1, 0x10, Local1)
                                And (Local1, 0xFF, Local1)
                                If (LEqual (Local0, Zero)) {}
                                Else
                                {
                                }

                                Store (Local1, \_PR.CPU0._PPC)
                                PNOT ()
                            }

                            Return (Local0)
                        }

                        Method (UDPC, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, One)) {}
                            If (LEqual (Arg0, 0x02)) {}
                            If (LEqual (Arg0, 0x03))
                            {
                                B_ON ()
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                B_OF ()
                            }

                            If (LEqual (Arg0, 0x05)) {}
                            If (LEqual (Arg0, 0x05)) {}
                        }

                        Method (SDPC, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, One)) {}
                            If (LEqual (Arg0, 0x02)) {}
                            If (LEqual (Arg0, 0x03)) {}
                            If (LEqual (Arg0, 0x04)) {}
                        }

                        Method (PDPC, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, One)) {}
                            If (LEqual (Arg0, 0x02)) {}
                            If (LEqual (Arg0, 0x03))
                            {
                                Store (One, GP6)
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                Store (Zero, GP6)
                            }

                            If (LEqual (Arg0, 0x05)) {}
                            If (LEqual (Arg0, 0x06)) {}
                            If (LEqual (Arg0, 0x07)) {}
                            If (LEqual (Arg0, 0x08)) {}
                        }
                    }

                    Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (ECOK (), One))
                        {
                            P8XH (0x04, 0x44, Zero)
                            P8XH (0x04, 0x44, One)
                            Notify (VPC0, 0x80)
                        }
                    }

                    Name (AMOD, Zero)
                    Name (CATO, Zero)
                    Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (\_PR.CPU0._PPC, AMOD)
                        Store (CATO, \_PR.CPU0._PPC)
                        PNOT ()
                    }

                    Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (AMOD, \_PR.CPU0._PPC)
                        PNOT ()
                    }

                    Method (LVCK, 0, NotSerialized)
                    {
                        Return (0x38)
                    }

                    Method (AITL, 2, NotSerialized)
                    {
                        Store (Arg1, Local0)
                        If (LEqual (Zero, APSD))
                        {
                            Store (One, APSD)
                            If (LEqual (Arg0, 0x10))
                            {
                                OSMI (0x8A)
                                Return (0xF0)
                            }

                            If (LEqual (Arg0, 0x11))
                            {
                                OSMI (0x8B)
                                Return (0xF0)
                            }

                            If (LEqual (Arg0, 0x12))
                            {
                                OSMI (0x8C)
                                Return (0xF0)
                            }

                            If (LEqual (Arg0, 0x13))
                            {
                                OSMI (0x8D)
                                Return (0xF0)
                            }
                        }
                        Else
                        {
                            Return (0xFE)
                        }

                        Return (0xFF)
                    }
                }

                Device (PWRB)
                {
                    Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                }

                Device (SLPB)
                {
                    Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
                }

                Device (BAT1)
                {
                    Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Name (BMDL, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ECOK ())
                        {
                            Store (One, Local1)
                            If (LEqual (OSYS, 0x07D1))
                            {
                                Store (Zero, Local1)
                            }

                            If (LEqual (OSYS, 0x07D2))
                            {
                                Store (Zero, Local1)
                            }

                            If (LEqual (OSYS, 0x07D6))
                            {
                                Store (One, Local1)
                            }

                            If (LEqual (OSYS, 0x03E8))
                            {
                                Store (0x02, Local1)
                            }

                            If (LEqual (OSYS, 0x07D9))
                            {
                                Store (0x03, Local1)
                            }

                            Sleep (0x14)
                            Store (Local1, ^^EC0.OSTY)
                            Sleep (0x14)
                            If (^^EC0.BOL0)
                            {
                                Sleep (0x14)
                                Return (0x1F)
                            }
                            Else
                            {
                                Sleep (0x14)
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            Sleep (0x14)
                            Return (0x1F)
                        }
                    }

                    Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                    {
                        Name (STAT, Package (0x0D)
                        {
                            One, 
                            0x1770, 
                            0x1770, 
                            One, 
                            0x2A30, 
                            0x0258, 
                            0xB4, 
                            0x0108, 
                            0x0EC4, 
                            "PABAS024", 
                            "41167", 
                            "Li-Ion", 
                            "COMPAL "
                        })
                        Store (^^EC0.BAM0, Index (STAT, Zero))
                        Store (GUBI (), Index (STAT, 0x0C))
                        If (ECOK ())
                        {
                            Store (^^EC0.BDN0, Local0)
                            Store (Local0, BMDL)
                            Store (^^EC0.BDC0, Index (STAT, One))
                            Sleep (0x14)
                            Store (^^EC0.BDV0, Index (STAT, 0x04))
                            Sleep (0x14)
                            Store (^^EC0.BFC0, Local2)
                            Sleep (0x14)
                            Store (Local2, Index (STAT, 0x02))
                            Divide (Local2, 0x64, Local0, Local1)
                            Multiply (Local1, 0x0A, Local1)
                            Store (Local1, Index (STAT, 0x05))
                            Divide (Local2, 0x64, Local0, Local1)
                            Multiply (Local1, 0x03, Local1)
                            Store (Local1, Index (STAT, 0x06))
                        }

                        Return (STAT)
                    }

                    Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                    {
                        Name (PBST, Package (0x04)
                        {
                            Zero, 
                            Ones, 
                            Ones, 
                            0x1770
                        })
                        If (ECOK ())
                        {
                            Store (^^EC0.BST0, Index (PBST, Zero))
                            Sleep (0x14)
                            Store (^^EC0.BAC0, Local4)
                            Subtract (0xFFFF, Local4, Local4)
                            Store (Local4, Index (PBST, One))
                            Sleep (0x14)
                            Store (^^EC0.BRC0, Index (PBST, 0x02))
                            Sleep (0x14)
                            Store (^^EC0.BPV0, Index (PBST, 0x03))
                            Sleep (0x14)
                            If (LNotEqual (^^EC0.BDN0, BMDL))
                            {
                                Notify (BAT1, 0x81)
                            }
                        }

                        Return (PBST)
                    }
                }

                Method (GUBI, 0, NotSerialized)
                {
                    If (ECOK ())
                    {
                        Store (^EC0.BMF0, Local0)
                        If (LEqual (Local0, One))
                        {
                            Return ("SANYO ")
                        }
                        Else
                        {
                            If (LEqual (Local0, 0x02))
                            {
                                Return ("SONY ")
                            }
                            Else
                            {
                                If (LEqual (Local0, 0x03))
                                {
                                    Return ("LG ")
                                }
                                Else
                                {
                                    If (LEqual (Local0, 0x04))
                                    {
                                        Return ("PANASONIC ")
                                    }
                                    Else
                                    {
                                        If (LEqual (Local0, 0x05))
                                        {
                                            Return ("SAMSUNG ")
                                        }
                                        Else
                                        {
                                            If (LEqual (Local0, 0x06))
                                            {
                                                Return ("CPT ")
                                            }
                                            Else
                                            {
                                                If (LEqual (Local0, 0x07))
                                                {
                                                    Return ("SIMPLO ")
                                                }
                                                Else
                                                {
                                                    Return ("COMPAL ")
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Else
                    {
                        Return ("COMPAL ")
                    }
                }

                Device (ACAD)
                {
                    Name (_HID, "ACPI0003")  // _HID: Hardware ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        If (LAnd (ECOK (), LEqual (ECDY, Zero)))
                        {
                            Sleep (0x14)
                            Store (^^EC0.ADPT, Local0)
                            Sleep (0x14)
                            If (LEqual (Local0, One))
                            {
                                Sleep (0x14)
                                Return (One)
                            }

                            Sleep (0x14)
                            Return (Zero)
                        }

                        Sleep (0x14)
                        Return (One)
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
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

                Device (MSS0)
                {
                    Name (_HID, EisaId ("SYN0733"))  // _HID: Hardware ID
                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN0700"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13")
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LOr (LEqual (TPDF, Zero), LEqual (TPDF, One)))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }

                Device (MSS1)
                {
                    Name (_HID, EisaId ("PNP0F13"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LAnd (LGreater (TPDF, One), LNotEqual (TPDF, 0xFF)))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }

                Device (MSS3)
                {
                    Name (_HID, EisaId ("PNP0F13"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (TPDF, 0xFF))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Method (FBPS, 1, NotSerialized)
    {
        If (LEqual (Arg0, 0x03))
        {
            Store (Zero, \_SB.PCI0.LPCB.EC0.S3S5)
            If (LEqual (CPFB, One))
            {
                Store (Zero, \_SB.PCI0.LPCB.EC0.S3S5)
                OSMI (0xA0)
            }
        }

        If (LOr (LEqual (Arg0, 0x05), LEqual (Arg0, 0x04)))
        {
            If (LEqual (CPFB, One))
            {
                Store (One, \_SB.PCI0.LPCB.EC0.S3S5)
                OSMI (0xA1)
            }
            Else
            {
                Store (Zero, \_SB.PCI0.LPCB.EC0.S3S5)
                OSMI (0xA0)
            }
        }
    }

    Method (UDSX, 0, NotSerialized)
    {
        If (LEqual (CPFB, One))
        {
            Store (0x05, Index (_S5, Zero))
            Store (0x05, Index (_S5, One))
            Store (0x05, Index (_S4, Zero))
            Store (0x05, Index (_S4, One))
        }
    }

    Mutex (MUTX, 0x00)
    Name (SLID, Zero)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)
                ), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)
                ), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)
                ), P80D)
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (Or (And (P80D, Zero), Arg1), P80D)
        }

        If (LEqual (Arg2, Zero)) {}
        If (LEqual (Arg2, One))
        {
            Store (P80D, P80H)
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0, Zero)
        If (LEqual (Arg0, 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            Store (SLID, \_SB.PCI0.LPCB.EC0.LIDF)
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (SLID, \_SB.PCI0.LPCB.EC0.LIDF)
            OSMI (0xBB)
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
        }

        If (LOr (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)), LEqual (
            Arg0, 0x05)))
        {
            If (LEqual (PFLV, FDTP))
            {
                Store (One, GP27)
            }
        }
    }

    Method (B_ON, 0, NotSerialized)
    {
        Store (One, GP34)
        If (And (OG10, One))
        {
            Store (One, GP22)
        }
        Else
        {
            If (And (OG10, 0x02))
            {
                Store (One, GP22)
            }
            Else
            {
                Store (Zero, GP22)
            }
        }
    }

    Method (B_OF, 0, NotSerialized)
    {
        Store (Zero, GP34)
        If (And (OG10, One))
        {
            Store (Zero, GP22)
        }
        Else
        {
            If (And (OG10, 0x02))
            {
                Store (One, GP22)
            }
            Else
            {
                Store (Zero, GP22)
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        Store (Zero, P80D)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            DOFF ()
            Notify (\_SB.PCI0.RP05, Zero)
        }

        If (And (GL01, 0x20))
        {
            Store (One, \_SB.PCI0.LPCB.EC0.KLSW)
        }
        Else
        {
            Store (Zero, \_SB.PCI0.LPCB.EC0.KLSW)
        }

        If (\_SB.PCI0.LPCB.EC0.KLSW)
        {
            If (And (LEqual (\_SB.PCI0.LPCB.EC0.WLEX, One), LEqual (\_SB.PCI0.LPCB.EC0.WLAT, One)))
            {
                Store (One, GP55)
            }
            Else
            {
                Store (Zero, GP55)
            }

            If (And (LEqual (\_SB.PCI0.LPCB.EC0.BTEX, One), LEqual (\_SB.PCI0.LPCB.EC0.BTAT, One)))
            {
                B_ON ()
            }
            Else
            {
                B_OF ()
            }
        }
        Else
        {
            Store (Zero, GP55)
            B_OF ()
        }

        If (LEqual (Arg0, 0x03))
        {
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (LEqual (PMEE, One))
            {
                Store (One, PMEN)
            }

            Notify (\_SB.LID0, 0x80)
            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }

            If (LEqual (ECON, One)) {}
            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If (LEqual (RP4D, Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If (LEqual (RP5D, Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If (LEqual (RP7D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If (LEqual (RP8D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
            OSMI (0xBC)
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }

        If (LEqual (ECON, One)) {}
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Method (DOFF, 0, NotSerialized)
    {
        If (LAnd (LGreaterEqual (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
        {
            Store (Zero, GP50)
            Store (Zero, GP54)
        }
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (One, ^GFX0.CLID)
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }
            }

            DOFF ()
            If (LEqual (^PEG0.VGA.DVI0, 0x1002))
            {
                Store (One, ^PEG0.VGA.DVFG)
            }

            If (LEqual (^PEG0.VGA.DVI0, 0x10DE))
            {
                Store (0x02, ^PEG0.VGA.DVFG)
            }

            If (LGreaterEqual (OSYS, 0x07D6))
            {
                Name (BBCL, Buffer (0x16) {})
                Name (INDX, Zero)
                ToBuffer (^GFX0.BCLM, BBCL)
                Store (Zero, INDX)
                While (LLess (INDX, 0x0B))
                {
                    Add (Multiply (INDX, 0x02), One, Local2)
                    Add (INDX, 0x02, Local1)
                    If (IGDS)
                    {
                        And (DerefOf (Index (BBCL, Local2)), 0x7F, Index (^GFX0.DD02.PLVL, Local1
                            ))
                    }
                    Else
                    {
                        And (DerefOf (Index (BBCL, Local2)), 0x7F, Index (^PEG0.VGA.LCD.PLVL, Local1
                            ))
                    }

                    And (DerefOf (Index (BBCL, Local2)), 0x7F, Index (^LPCB.EC0.VPC0.TBSL, INDX
                        ))
                    If (LEqual (INDX, 0x03))
                    {
                        Add (Multiply (INDX, 0x02), One, Local3)
                        If (IGDS)
                        {
                            And (DerefOf (Index (BBCL, Local3)), 0x7F, Index (^GFX0.DD02.PLVL, One
                                ))
                        }
                        Else
                        {
                            And (DerefOf (Index (BBCL, Local3)), 0x7F, Index (^PEG0.VGA.LCD.PLVL, One
                                ))
                        }
                    }

                    If (LEqual (INDX, 0x07))
                    {
                        Add (Multiply (INDX, 0x02), One, Local3)
                        If (IGDS)
                        {
                            And (DerefOf (Index (BBCL, Local3)), 0x7F, Index (^GFX0.DD02.PLVL, Zero
                                ))
                        }
                        Else
                        {
                            And (DerefOf (Index (BBCL, Local3)), 0x7F, Index (^PEG0.VGA.LCD.PLVL, Zero
                                ))
                        }
                    }

                    Increment (INDX)
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (Zero, ^RP05.HPEX)
            Store (Zero, ^RP07.HPEX)
            Store (Zero, ^RP08.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
            Store (One, ^RP05.HPSX)
            Store (One, ^RP07.HPSX)
            Store (One, ^RP08.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_TZ)
    {
        Name (ETMD, One)
        Name (THLD, 0x78)
        Name (YBT4, 0x37)
        Name (YBT3, 0x40)
        Name (YBT2, 0x49)
        Name (YBT1, 0x50)
        Name (YBT0, 0x5B)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN0)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN0)
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN0)
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN1)
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN1)
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Name (REGN, "Processor Thermal Zone")
            Name (FMAX, 0x10CC)
            Name (FMIN, 0x0A8C)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0FA2)
            }

            Method (_HOT, 0, NotSerialized)  // _HOT: Hot Temperature
            {
                Return (0x0FA2)
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (0x0FA2)
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT0, 0x0A)))
                }
                Else
                {
                    Return (Add (0x0AAC, Multiply (ACTT, 0x0A)))
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT1, 0x0A)))
                }
                Else
                {
                    Return (Add (0x0AAC, Multiply (ACT1, 0x0A)))
                }
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN1
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List
            {
                FAN0
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.ECOK ())
                {
                    Store (0x8400, \_SB.PCI0.LPCB.EC0.ENIB)
                    Store (\_SB.PCI0.LPCB.EC0.ENDD, Local0)
                }
                Else
                {
                    Store (PTMP, Local0)
                }

                If (LGreaterEqual (Local0, THLD))
                {
                    Return (PTMP)
                }
                Else
                {
                    Add (0x0AAC, Multiply (Local0, 0x0A), Local0)
                    Store (Local0, PTMP)
                    Return (Local0)
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If (LEqual (TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1V)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2V)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPV)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
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
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (LEqual (And (DID6, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD06, Arg0)
        }

        If (LEqual (And (DID7, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD07, Arg0)
        }

        If (LEqual (And (DID8, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD08, Arg0)
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
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

        OperationRegion (IO_D, SystemIO, 0x1010, 0x04)
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
            Offset (0x20), 
                ,   2, 
            SPST,   1, 
                ,   16, 
            GPS3,   1, 
            Offset (0x23), 
                ,   5, 
            GS13,   1, 
            Offset (0x24), 
            Offset (0x28), 
                ,   19, 
            GPE3,   1, 
            Offset (0x2B), 
                ,   5, 
            GE13,   1, 
            Offset (0x2C), 
            Offset (0x3C), 
            PMEN,   1, 
            UPRW,   1, 
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
                ,   3, 
            GSO3,   1, 
            Offset (0x05), 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GLO0,   2, 
            GP2,    1, 
                ,   2, 
            GP5,    1, 
            GP6,    1, 
            Offset (0x0D), 
            GL01,   8, 
            GL02,   6, 
            GP22,   1, 
            Offset (0x0F), 
            GP24,   1, 
                ,   2, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
                ,   1, 
            GV01,   1, 
                ,   1, 
            GV03,   1, 
            Offset (0x2D), 
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
                ,   2, 
            GP34,   1, 
                ,   3, 
            GP38,   1, 
            Offset (0x39), 
            GL05,   8, 
                ,   2, 
            GP50,   1, 
            GP51,   1, 
                ,   2, 
            GP54,   1, 
            GP55,   1, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
                ,   4, 
            GP68,   1, 
            GP69,   1, 
            GP70,   1, 
            GP71,   1
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
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E), 
            Offset (0x35B0), 
            RMR1,   4, 
            RMR2,   4, 
            RCS1,   1, 
            RCS2,   1, 
            Offset (0x35B4)
        }

        Method (GPI0, 4, NotSerialized)
        {
            If (LEqual (Or (Arg0, Arg1), Zero))
            {
                Return (Ones)
            }
            Else
            {
                If (And (LEqual (Arg0, Zero), LEqual (Arg1, One)))
                {
                    Return (0x0384)
                }
            }

            Return (Multiply (0x1E, Subtract (0x09, Add (Arg2, Arg3))
                ))
        }

        Method (GDMA, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                If (LEqual (Arg1, One))
                {
                    Return (0x0F)
                }
            }

            Return (Ones)
        }

        Method (SFLG, 5, NotSerialized)
        {
            Store (Zero, Local0)
            Or (Arg1, Local0, Local0)
            Or (ShiftLeft (Arg0, One), Local0, Local0)
            Or (ShiftLeft (Arg2, 0x03), Local0, Local0)
            Or (ShiftLeft (Arg3, 0x02), Local0, Local0)
            Or (ShiftLeft (Arg4, 0x04), Local0, Local0)
            Return (Local0)
        }

        Method (SPIO, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (PBUF, Zero, RCT)
            CreateByteField (PBUF, One, ISP)
            CreateByteField (PBUF, 0x02, FAST)
            CreateByteField (PBUF, 0x03, DMAE)
            CreateByteField (PBUF, 0x04, PIOT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, Ones)))
            {
                Return (PBUF)
            }

            If (LGreater (Arg0, 0xF0))
            {
                Store (One, DMAE)
                Store (Zero, PIOT)
            }
            Else
            {
                Store (One, FAST)
                If (And (Arg1, 0x02))
                {
                    If (And (LEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Store (0x03, RCT)
                        Store (0x02, ISP)
                        Store (0x04, PIOT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0xB4), And (Arg2, One)
                        ))
                    {
                        Store (One, RCT)
                        Store (0x02, ISP)
                        Store (0x03, PIOT)
                        Return (PBUF)
                    }
                    Else
                    {
                        Store (Zero, RCT)
                        Store (One, ISP)
                        Store (0x02, PIOT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SDMA, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (PBUF, Zero, PCT)
            CreateByteField (PBUF, One, PCB)
            CreateByteField (PBUF, 0x02, UDMT)
            CreateByteField (PBUF, 0x03, UDME)
            CreateByteField (PBUF, 0x04, DMAT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, Ones)))
            {
                Return (PBUF)
            }

            If (LLessEqual (Arg0, 0x78))
            {
                If (And (Arg1, 0x04))
                {
                    Store (One, UDME)
                    If (And (LLessEqual (Arg0, 0x0F), And (Arg2, 0x40)
                        ))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x06, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x14), And (Arg2, 0x20)
                        ))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x05, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x1E), And (Arg2, 0x10)
                        ))
                    {
                        Store (One, PCB)
                        Store (0x02, PCT)
                        Store (0x04, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x2D), And (Arg2, 0x08)
                        ))
                    {
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x03, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x3C), And (Arg2, 0x04)
                        ))
                    {
                        Store (0x02, PCT)
                        Store (0x02, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x5A), And (Arg2, 0x02)
                        ))
                    {
                        Store (One, PCT)
                        Store (One, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x78), And (Arg2, One)
                        ))
                    {
                        Store (Zero, DMAT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SETT, 3, Serialized)
        {
            If (And (Arg1, 0x02))
            {
                If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                {
                    Return (0x0B)
                }

                If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                {
                    Return (0x09)
                }
            }

            Return (0x04)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    If (LAnd (LEqual (^^LPCB.EC0.ADPT, One), ^^LPCB.ECOK ()))
                    {
                        Store (Zero, RMR2)
                        Store (Ones, PWUC)
                        Store (One, ^^LPCB.EC0.UWAK)
                    }
                    Else
                    {
                        Store (0x0F, RMR2)
                        Store (Zero, PWUC)
                    }
                }
                Else
                {
                    Store (0x0F, RMR2)
                    Store (Zero, PWUC)
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
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            /*           Revision : 01     */
                            /*        IgnoreColor : 01     */
                            /*              Color : 000000 */
                            /*              Width : 0000   */
                            /*             Height : 0000   */
                            /*        UserVisible : 00     */
                            /*               Dock : 00     */
                            /*                Lid : 00     */
                            /*              Panel : 06     */
                            /*   VerticalPosition : 00     */
                            /* HorizontalPosition : 00     */
                            /*              Shape : 07     */
                            /*   GroupOrientation : 00     */
                            /*         GroupToken : 00     */
                            /*      GroupPosition : 00     */
                            /*                Bay : 00     */
                            /*          Ejectable : 00     */
                            /*  OspmEjectRequired : 00     */
                            /*      CabinetNumber : 00     */
                            /*     CardCageNumber : 00     */
                            /*          Reference : 00     */
                            /*           Rotation : 00     */
                            /*              Order : 00     */
                            /*     VerticalOffset : 0000   */
                            /*   HorizontalOffset : 0000   */
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
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
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
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
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
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
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
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
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
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
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   6
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    If (LAnd (LEqual (^^LPCB.EC0.ADPT, One), ^^LPCB.ECOK ()))
                    {
                        Store (Zero, RMR1)
                        Store (Ones, PWUC)
                        Store (One, ^^LPCB.EC0.UWAK)
                    }
                    Else
                    {
                        Store (0x0F, RMR1)
                        Store (Zero, PWUC)
                    }
                }
                Else
                {
                    Store (0x0F, RMR1)
                    Store (Zero, PWUC)
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
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            /*           Revision : 01     */
                            /*        IgnoreColor : 01     */
                            /*              Color : 000000 */
                            /*              Width : 0000   */
                            /*             Height : 0000   */
                            /*        UserVisible : 00     */
                            /*               Dock : 00     */
                            /*                Lid : 00     */
                            /*              Panel : 06     */
                            /*   VerticalPosition : 00     */
                            /* HorizontalPosition : 00     */
                            /*              Shape : 07     */
                            /*   GroupOrientation : 00     */
                            /*         GroupToken : 00     */
                            /*      GroupPosition : 00     */
                            /*                Bay : 00     */
                            /*          Ejectable : 00     */
                            /*  OspmEjectRequired : 00     */
                            /*      CabinetNumber : 00     */
                            /*     CardCageNumber : 00     */
                            /*          Reference : 00     */
                            /*           Rotation : 00     */
                            /*              Order : 00     */
                            /*     VerticalOffset : 0000   */
                            /*   HorizontalOffset : 0000   */
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
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
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
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
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR14)
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

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (WKMD)
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        Zero
                    })
                }
            }
        }

        Device (RP01)
        {
            Name (_ADR, 0x001C0000)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            Store (One, ^^^LPCB.EC0.PWAK)
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.PWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR05, Package (0x04)
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
            Name (AR05, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05)
                }

                Return (PR05)
            }
        }

        Device (RP02)
        {
            Name (_ADR, 0x001C0001)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            If (LEqual (^^^LPCB.EC0.ADPT, One))
                            {
                                Store (One, ^^^LPCB.EC0.UWAK)
                            }
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.UWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR06, Package (0x04)
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
            Name (AR06, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06)
                }

                Return (PR06)
            }
        }

        Device (RP03)
        {
            Name (_ADR, 0x001C0002)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            If (LEqual (^^^LPCB.EC0.ADPT, One))
                            {
                                Store (One, ^^^LPCB.EC0.UWAK)
                            }
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.UWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR07, Package (0x04)
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
            Name (AR07, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07)
                }

                Return (PR07)
            }
        }

        Device (RP04)
        {
            Name (_ADR, 0x001C0003)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            If (LEqual (^^^LPCB.EC0.ADPT, One))
                            {
                                Store (One, ^^^LPCB.EC0.UWAK)
                            }
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.UWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x03
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR08, Package (0x04)
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
            Name (AR08, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR08)
                }

                Return (PR08)
            }
        }

        Device (RP05)
        {
            Name (_ADR, 0x001C0004)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, Zero, 0xFF)
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x5A), 
                    ,   3, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                    ,   2, 
                Offset (0xAC), 
                    ,   6, 
                D3EF,   1, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x05
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            Store (One, ^^^LPCB.EC0.LWAK)
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.LWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Device (J380)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (PCFG, PCI_Config, Zero, 0xFF)
                Field (PCFG, ByteAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    Offset (0x2C), 
                    SSID,   32, 
                    Offset (0xAC), 
                        ,   6, 
                    D3EF,   1
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    If (LEqual (OSYS, 0x07D9))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
            }

            Device (J382)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    If (LEqual (OSYS, 0x07D9))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
            }

            Device (J383)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    If (LEqual (OSYS, 0x07D9))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
            }

            Device (J384)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    If (LEqual (OSYS, 0x07D9))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
            }

            Name (PR09, Package (0x04)
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
            Name (AR09, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR09)
                }

                Return (PR09)
            }
        }

        Device (RP06)
        {
            Name (_ADR, 0x001C0005)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            If (LEqual (^^^LPCB.EC0.ADPT, One))
                            {
                                Store (One, ^^^LPCB.EC0.UWAK)
                            }
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.UWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR0C, Package (0x04)
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
            Name (AR0C, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0C)
                }

                Return (PR0C)
            }
        }

        Device (RP07)
        {
            Name (_ADR, 0x001C0006)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            If (LEqual (^^^LPCB.EC0.ADPT, One))
                            {
                                Store (One, ^^^LPCB.EC0.UWAK)
                            }
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.UWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR0D, Package (0x04)
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
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKF, 
                    Zero
                }
            })
            Name (AR0D, Package (0x04)
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
                    0x14
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x15
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0D)
                }

                Return (PR0D)
            }
        }

        Device (RP08)
        {
            Name (_ADR, 0x001C0007)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                    ,   5, 
                CCCX,   1, 
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

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (^^^LPCB.ECOK ())
                    {
                        If (Arg0)
                        {
                            If (LEqual (^^^LPCB.EC0.ADPT, One))
                            {
                                Store (One, ^^^LPCB.EC0.UWAK)
                            }
                        }
                        Else
                        {
                            Store (Zero, ^^^LPCB.EC0.UWAK)
                        }
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR0E, Package (0x04)
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
            Name (AR0E, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0E)
                }

                Return (PR0E)
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
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

            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
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

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
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

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
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

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
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

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (Ones)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
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

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
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
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (RP1D, Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            Notify (\_SB.PCI0.RP02, 0x02)
            Notify (\_SB.PCI0.RP03, 0x02)
            If (LEqual (RP4D, Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            If (LEqual (RP5D, Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02)
            }

            Notify (\_SB.PCI0.RP07, 0x02)
            Notify (\_SB.PCI0.RP08, 0x02)
            Notify (\_SB.PCI0.PEG0, 0x02)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
            Notify (\_SB.PCI0.PEG1, 0x02)
            Notify (\_SB.PCI0.PEG2, 0x02)
            Notify (\_SB.PCI0.PEG3, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                P8XH (One, One, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                P8XH (One, 0x02, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (LNot (\_SB.PCI0.RP02.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP02.L0SE)
                    }

                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                P8XH (One, 0x03, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                P8XH (One, 0x04, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    If (LNot (\_SB.PCI0.RP04.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP04.L0SE)
                    }

                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }

            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                P8XH (One, 0x05, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    Sleep (0x64)
                    If (\_SB.PCI0.RP05.PDSX)
                    {
                        Store (0x5A, APMC)
                    }

                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }

            If (LAnd (LEqual (RP7D, Zero), \_SB.PCI0.RP07.HPSX))
            {
                P8XH (One, 0x07, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    Store (One, \_SB.PCI0.RP07.PDCX)
                    Store (One, \_SB.PCI0.RP07.HPSX)
                    If (LNot (\_SB.PCI0.RP07.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP07.L0SE)
                    }

                    If (ECON) {}
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP07.HPSX)
                }
            }

            If (LAnd (LEqual (RP8D, Zero), \_SB.PCI0.RP08.HPSX))
            {
                P8XH (One, 0x08, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    Store (One, \_SB.PCI0.RP08.PDCX)
                    Store (One, \_SB.PCI0.RP08.HPSX)
                    If (LNot (\_SB.PCI0.RP08.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP08.L0SE)
                    }

                    If (ECON) {}
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP08.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            If (CondRefOf (\TNOT))
            {
                TNOT
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }

        Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (And (GL01, 0x08))
            {
                Or (GIV1, 0x08, GIV1)
            }
            Else
            {
                And (GIV1, 0xF7, GIV1)
            }

            If (IGDS)
            {
                If (\_SB.PCI0.GFX0.SCIP ())
                {
                    \_SB.PCI0.GFX0.GLID (LAnd (GIV1, 0x08))
                }
                Else
                {
                }
            }

            Notify (\_SB.LID0, 0x80)
        }

        Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            P8XH (0x04, 0x11, Zero)
            If (GV01)
            {
                OSMI (0x88)
            }
            Else
            {
                OSMI (0x89)
            }

            Not (GV01, GV01)
        }

        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GE13)
            Store (One, GS13)
            If (And (GL01, 0x20))
            {
                Store (One, \_SB.PCI0.LPCB.EC0.KLSW)
                Or (GIV1, 0x20, GIV1)
            }
            Else
            {
                Store (Zero, \_SB.PCI0.LPCB.EC0.KLSW)
                And (GIV1, 0xDF, GIV1)
            }

            Store (One, GE13)
        }
    }

    Scope (_SB)
    {
        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (And (GL01, 0x08))
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x1B, 
                0x03
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                Store (Arg0, SLID)
            }
        }
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0xBCF6C018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        SHOW (Arg0)
        MDGC (0x20)
    }

    Method (DW2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x08, Local1)
        And (Local0, 0xFF, Local0)
        And (Local1, 0xFF, Local1)
        DB2H (Local1)
        Decrement (BUFN)
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x10, Local1)
        And (Local0, 0xFFFF, Local0)
        And (Local1, 0xFFFF, Local1)
        DW2H (Local1)
        Decrement (BUFN)
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (BUFS, Buffer (Local0) {})
        Store (Arg0, BUFS)
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (Index (BUFS, Subtract (SizeOf (Arg0), Local0))))
            Decrement (Local0)
        }
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC (ShiftRight (Arg0, 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Store (BUFN, Local0)
        And (Local0, 0x0F, Local0)
        While (Local0)
        {
            MDGC (Zero)
            Increment (Local0)
            And (Local0, 0x0F, Local0)
        }
    }

    Method (MDGC, 1, Serialized)
    {
        Store (Arg0, Index (MBUF, BUFN))
        Add (BUFN, One, BUFN)
        If (LGreater (BUFN, 0x0FFF))
        {
            And (BUFN, 0x0FFF, BUFN)
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Store (Arg0, Local2)
        ShiftLeft (Local2, 0x04, Local2)
        MOVE (Local2)
        Subtract (0x1000, Local2, Local3)
        While (Local2)
        {
            Store (Zero, Index (MBUF, Local3))
            Increment (Local3)
            Decrement (Local2)
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Store (Arg0, Local4)
        Store (Zero, BUFN)
        Subtract (0x1000, Local4, Local5)
        While (Local5)
        {
            Decrement (Local5)
            Store (DerefOf (Index (MBUF, Local4)), Index (MBUF, BUFN))
            Increment (BUFN)
            Increment (Local4)
        }
    }

    Method (NTOC, 1, Serialized)
    {
        And (Arg0, 0x0F, Local0)
        If (LLess (Local0, 0x0A))
        {
            Add (Local0, 0x30, Local0)
        }
        Else
        {
            Add (Local0, 0x37, Local0)
        }

        Return (Local0)
    }

    Scope (_SB.PCI0)
    {
        Device (PEG0)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0A)
                }

                Return (PR0A)
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Device (PEGP)
            {
                OperationRegion (PCRG, PCI_Config, Zero, 0x3F)
                Field (PCRG, AnyAcc, NoLock, Preserve)
                {
                    VID,    16, 
                    DID,    16
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Device (VGA1)
            {
                Name (_ADR, One)  // _ADR: Address
                OperationRegion (PSID, PCI_Config, 0x40, 0xC0)
                Field (PSID, AnyAcc, NoLock, Preserve)
                {
                    NVID,   32, 
                    Offset (0x0C), 
                    SVID,   16, 
                    SSID,   16, 
                    Offset (0x28), 
                    D1LX,   8
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (GP71)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Device (VGA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (GP71)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                OperationRegion (GPPB, PCI_Config, 0xB4, 0x14)
                Field (GPPB, ByteAcc, NoLock, Preserve)
                {
                    PBCI,   8, 
                    PBNP,   8, 
                    PBLS,   8, 
                    PBCC,   8, 
                    PBCM,   32, 
                    PBDI,   32, 
                    PBDO,   32, 
                    PBMX,   32
                }

                Method (NINT, 2, NotSerialized)
                {
                    If (LEqual (PBCC, One))
                    {
                        If (LEqual (Arg0, One))
                        {
                            Store (One, PBMX)
                            Store (Zero, Local0)
                            While (LLess (Local0, 0x03E8))
                            {
                                Store (0xC5100000, PBCM)
                                Stall (0x64)
                                And (PBCM, 0xFF, Local1)
                                Increment (Local0)
                                If (LEqual (Local1, One))
                                {
                                    Store (0x03E8, Local0)
                                }
                            }

                            Store (Zero, PBCM)
                            Store (Zero, PBMX)
                            Store (PBDO, Local2)
                            Return (Local2)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            If (LEqual (PBMX, Zero))
                            {
                                If (LEqual (And (PBCM, 0x02), Zero))
                                {
                                    Store (0x02, PBMX)
                                    Store (Arg1, Local1)
                                    Store (Zero, Local0)
                                    Multiply (Local1, 0x0A, Local3)
                                    ShiftLeft (Local3, 0x08, Local3)
                                    Store (Local3, PBDI)
                                    While (LLess (Local0, 0x03E8))
                                    {
                                        Store (0x86100000, PBCM)
                                        Stall (0x64)
                                        And (PBCM, 0xFF, Local2)
                                        Increment (Local0)
                                        If (LEqual (Local2, One))
                                        {
                                            Store (0x03E8, Local0)
                                        }
                                    }

                                    Store (Zero, PBCM)
                                    Store (Zero, PBMX)
                                    Return (One)
                                }
                            }
                        }
                    }

                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x75, 0x0B, 0xA5, 0xD4, 0xC7, 0x65, 0xF7, 0x46,
                                /* 0008 */   0xBF, 0xB7, 0x41, 0x51, 0x4C, 0xEA, 0x02, 0x44
                            }))
                    {
                        If (LNotEqual (Arg1, 0x0102))
                        {
                            Return (0x80000002)
                        }

                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (0x04)
                            {
                                 0x01, 0x00, 0x50, 0x00
                            })
                            Return (Buffer (0x04)
                            {
                                 0x01, 0x00, 0x40, 0x00
                            })
                        }

                        If (LEqual (Arg2, 0x14))
                        {
                            Return (Package (0x0C)
                            {
                                0x0110, 
                                0x0100, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                0x0190, 
                                Zero, 
                                0x03E8, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                        }

                        If (LEqual (Arg2, 0x16))
                        {
                            Name (NBL1, Package (0x09)
                            {
                                0x04, 
                                0x157D140E, 
                                Package (0x10)
                                {
                                    0x4D, 
                                    0x54, 
                                    0xF4, 
                                    0xEA, 
                                    0x9E, 
                                    0x27, 
                                    0xD2, 
                                    0xCD, 
                                    0xC9, 
                                    0xEA, 
                                    0xAB, 
                                    0x5B, 
                                    0xA8, 
                                    0x31, 
                                    0xA4, 
                                    0x78
                                }, 

                                0x1598AF0D, 
                                Package (0x10)
                                {
                                    0x0A, 
                                    0xCC, 
                                    0x39, 
                                    0xE4, 
                                    0x58, 
                                    0x11, 
                                    0xE1, 
                                    0x21, 
                                    0xF7, 
                                    0xC1, 
                                    0x41, 
                                    0xC9, 
                                    0x19, 
                                    0x84, 
                                    0x71, 
                                    0x87
                                }, 

                                0x14B6140E, 
                                Package (0x10)
                                {
                                    0x25, 
                                    0x1B, 
                                    0xA2, 
                                    0x44, 
                                    0x17, 
                                    0x62, 
                                    0x17, 
                                    0x46, 
                                    0xBF, 
                                    0xB7, 
                                    0x41, 
                                    0x51, 
                                    0x4C, 
                                    0xEA, 
                                    0xC2, 
                                    0x41
                                }, 

                                0x15A8AF0D, 
                                Package (0x10)
                                {
                                    0x25, 
                                    0x1B, 
                                    0xA2, 
                                    0x44, 
                                    0x17, 
                                    0x62, 
                                    0x17, 
                                    0x46, 
                                    0xBF, 
                                    0xB7, 
                                    0x41, 
                                    0x51, 
                                    0x4C, 
                                    0xEA, 
                                    0xC2, 
                                    0x41
                                }
                            })
                            If (LEqual (ToInteger (Arg3), One))
                            {
                                Return (NBL1)
                            }
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xFD, 0x88, 0xDB, 0x95, 0x0A, 0x94, 0x53, 0x42,
                                /* 0008 */   0xA4, 0x46, 0x70, 0xCE, 0x05, 0x04, 0xAE, 0xDF
                            }))
                    {
                        Store ("<<< SPB DSM - dGPU >>>", Debug)
                        Return (^^^GFX0.SPB (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (0x80000001)
                }

                OperationRegion (PVID, PCI_Config, Zero, 0x04)
                Field (PVID, AnyAcc, NoLock, Preserve)
                {
                    DVI0,   16, 
                    DVI1,   16
                }

                OperationRegion (PSID, PCI_Config, 0x40, 0xC0)
                Field (PSID, AnyAcc, NoLock, Preserve)
                {
                    SVD2,   16, 
                    SSD2,   16, 
                    Offset (0x0C), 
                    SVID,   16, 
                    SSID,   16, 
                    Offset (0x28), 
                    D0LX,   8, 
                    Offset (0x48), 
                    LNKS,   2
                }

                Name (SWIT, One)
                Name (CRTA, One)
                Name (LCDA, One)
                Name (TVAA, One)
                Name (DVIA, One)
                Name (VLDF, One)
                Name (DVFG, One)
                Name (NDFG, Zero)
                Name (BKEY, Zero)
                Name (FKEY, Zero)
                Name (_PSC, Zero)  // _PSC: Power State Current
                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Store (Zero, _PSC)
                }

                Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                {
                    Store (One, _PSC)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Store (0x03, _PSC)
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    Store (And (Arg0, 0x07), DSEN)
                }

                Name (DOD0, Package (0x03)
                {
                    0x0110, 
                    0x0100, 
                    0x80007330
                })
                Name (DOD1, Package (0x03)
                {
                    0x80000400, 
                    0x80000100, 
                    0x80007330
                })
                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Return (DOD0)
                }

                Device (CRT)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0100)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LOr (_OSI ("Windows 2006"), _OSI ("Windows 2009")))
                        {
                            Notify (VGA, 0xCB)
                        }
                        Else
                        {
                            Notify (WMI0, 0xCB)
                        }

                        Store (CADL, Local0)
                        Store (CSTE, Local1)
                        And (Local0, 0x02, Local0)
                        And (Local1, 0x02, Local1)
                        If (Local0)
                        {
                            Store (One, CRTA)
                        }
                        Else
                        {
                            Store (Zero, CRTA)
                        }

                        If (CRTA)
                        {
                            If (LEqual (Local1, 0x02))
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }
                        Else
                        {
                            If (LEqual (Local1, 0x02))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
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
                    }
                }

                Device (LCD)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0110)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LOr (_OSI ("Windows 2006"), _OSI ("Windows 2009")))
                        {
                            Notify (VGA, 0xCB)
                        }
                        Else
                        {
                            Notify (WMI0, 0xCB)
                        }

                        Store (CADL, Local0)
                        Store (CSTE, Local1)
                        And (Local0, One, Local0)
                        And (Local1, One, Local1)
                        If (Local0)
                        {
                            Store (One, LCDA)
                        }
                        Else
                        {
                            Store (Zero, LCDA)
                        }

                        If (LCDA)
                        {
                            If (LEqual (Local1, One))
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }
                        Else
                        {
                            If (LEqual (Local1, One))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
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
                    }

                    Name (PLVL, Package (0x0D)
                    {
                        0x46, 
                        0x1E, 
                        0x0A, 
                        0x11, 
                        0x17, 
                        0x1E, 
                        0x28, 
                        0x32, 
                        0x3C, 
                        0x46, 
                        0x50, 
                        0x5A, 
                        0x64
                    })
                    Method (LVLS, 1, NotSerialized)
                    {
                        Store (One, Local0)
                        Store (Zero, Local1)
                        While (Local0)
                        {
                            Add (Local1, 0x02, Local2)
                            Store (DerefOf (Index (PLVL, Local2)), Local3)
                            And (Arg0, 0xFF, Local4)
                            If (LEqual (Local4, Local3))
                            {
                                Store (Zero, Local0)
                            }

                            Subtract (Local3, One, Local3)
                            If (LEqual (Local4, Local3))
                            {
                                Store (Zero, Local0)
                            }

                            If (LGreaterEqual (Local1, 0x0A))
                            {
                                Store (Zero, Local0)
                            }

                            If (Local0)
                            {
                                Add (One, Local1, Local1)
                            }
                        }

                        Return (Local1)
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (PLVL)
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        If (IGDS)
                        {
                            Store (^^^^GFX0.DD02.LVLS (Arg0), Local1)
                            Store (Local1, ^^^^LPCB.EC0.BRTS)
                            ^^^^GFX0.AINT (One, Arg0)
                        }
                        Else
                        {
                            Store (LVLS (Arg0), Local1)
                            Store (Local1, ^^^^LPCB.EC0.BRTS)
                        }

                        Store (Arg0, BRTL)
                        NINT (0x02, Arg0)
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Return (NINT (One, Zero))
                        Return (BRTL)
                    }
                }

                Device (HDV0)
                {
                    Name (_ADR, 0x7330)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LOr (_OSI ("Windows 2006"), _OSI ("Windows 2009")))
                        {
                            Notify (VGA, 0xCB)
                        }
                        Else
                        {
                            Notify (WMI0, 0xCB)
                        }

                        Store (CADL, Local0)
                        Store (CSTE, Local1)
                        And (Local0, 0x08, Local0)
                        And (Local1, 0x08, Local1)
                        If (Local0)
                        {
                            Store (One, DVIA)
                        }
                        Else
                        {
                            Store (Zero, DVIA)
                        }

                        If (DVIA)
                        {
                            If (LEqual (Local1, 0x08))
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }
                        Else
                        {
                            If (LEqual (Local1, 0x08))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (DVIA)
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
                    }
                }

                Method (BRGT, 1, NotSerialized)
                {
                    Store (Arg0, BRLV)
                }

                Method (DSSW, 0, NotSerialized)
                {
                    If (LOr (_OSI ("Windows 2006"), _OSI ("Windows 2009")))
                    {
                        Notify (VGA, 0xCB)
                    }
                    Else
                    {
                        Notify (WMI0, 0xCB)
                    }

                    Sleep (0x01F4)
                    Store (CADL, Local0)
                    Store (CSTE, Local1)
                    Store (Zero, Local2)
                    If (LGreater (Local1, One))
                    {
                        And (Local0, Local1, VLDF)
                        And (VLDF, 0xFE, VLDF)
                    }

                    If (VLDF)
                    {
                        If (LEqual (Local0, 0x09))
                        {
                            If (LEqual (Local1, 0x08))
                            {
                                STBL (0x03)
                            }

                            If (LEqual (Local1, One))
                            {
                                STBL (One)
                            }

                            If (LEqual (Local1, 0x09))
                            {
                                STBL (0x02)
                            }
                        }

                        If (LEqual (Local0, 0x0C))
                        {
                            If (LEqual (Local1, 0x08))
                            {
                                STBL (0x09)
                            }

                            If (LEqual (Local1, 0x04))
                            {
                                STBL (One)
                            }

                            If (LEqual (Local1, 0x0C))
                            {
                                STBL (0x08)
                            }
                        }

                        If (LEqual (Local0, 0x0D))
                        {
                            If (LEqual (Local1, 0x08))
                            {
                                STBL (0x03)
                            }

                            If (LEqual (Local1, 0x09))
                            {
                                STBL (0x02)
                            }

                            If (LEqual (Local1, One))
                            {
                                STBL (0x09)
                            }

                            If (LEqual (Local1, 0x0C))
                            {
                                STBL (0x08)
                            }

                            If (LEqual (Local1, 0x04))
                            {
                                STBL (One)
                            }

                            If (LEqual (Local1, 0x0D))
                            {
                                STBL (One)
                            }
                        }
                    }
                    Else
                    {
                        Store (One, VLDF)
                        STBL (One)
                    }
                }

                Method (STBL, 1, NotSerialized)
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (Zero, CRTA)
                        Store (One, LCDA)
                        Store (Zero, TVAA)
                        Store (Zero, DVIA)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        Store (One, CRTA)
                        Store (Zero, LCDA)
                        Store (Zero, TVAA)
                        Store (Zero, DVIA)
                    }

                    If (LEqual (Arg0, 0x03))
                    {
                        Store (One, CRTA)
                        Store (One, LCDA)
                        Store (Zero, TVAA)
                        Store (Zero, DVIA)
                    }

                    If (LEqual (Arg0, 0x08))
                    {
                        Store (Zero, CRTA)
                        Store (Zero, LCDA)
                        Store (Zero, TVAA)
                        Store (One, DVIA)
                    }

                    If (LEqual (Arg0, 0x09))
                    {
                        Store (Zero, CRTA)
                        Store (One, LCDA)
                        Store (Zero, TVAA)
                        Store (One, DVIA)
                    }

                    Notify (VGA, 0x80)
                    Store (Arg0, NSTE)
                }

                Method (NVIF, 3, NotSerialized)
                {
                    Store (Buffer (0x04) {}, Local0)
                    CreateDWordField (Local0, Zero, STA0)
                    Store (Buffer (0x04) {}, Local1)
                    CreateDWordField (Local1, Zero, DAT0)
                    Store (0x80000002, STA0)
                    Store (Zero, DAT0)
                    Concatenate (Local0, Local1, Local2)
                    If (LEqual (Arg0, One))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Store (Zero, STA0)
                            Store (One, DAT0)
                            Concatenate (Local0, Local1, Local2)
                        }

                        Return (Local2)
                    }

                    If (LEqual (Arg0, 0x09))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Store (Zero, STA0)
                            Concatenate (Local0, Local1, Local2)
                        }
                        Else
                        {
                            If (LEqual (Arg1, One))
                            {
                                Store (Zero, STA0)
                                CreateDWordField (Arg2, Zero, INDX)
                                If (LEqual (INDX, Zero))
                                {
                                    Store (Buffer (0x0C)
                                        {
                                            /* 0000 */   0x00, 0x00, 0x64, 0x00, 0xE8, 0x03, 0x00, 0x00,
                                            /* 0008 */   0x00, 0x00, 0xE8, 0x03
                                        }, Local1)
                                    Concatenate (Local0, Local1, Local2)
                                }
                            }
                            Else
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (Zero, STA0)
                                    Store ("NVIF(9, 2):", Debug)
                                    Store (Arg2, Debug)
                                }
                                Else
                                {
                                    If (LEqual (Arg1, 0x03))
                                    {
                                        Store (Zero, STA0)
                                        Store (Buffer (0x0D)
                                            {
                                                /* 0000 */   0x46, 0x1E, 0x09, 0x0E, 0x13, 0x19, 0x23, 0x2D,
                                                /* 0008 */   0x37, 0x42, 0x4D, 0x58, 0x64
                                            }, Local1)
                                        Concatenate (Local0, Local1, Local2)
                                    }
                                }
                            }
                        }

                        Return (Local2)
                    }

                    If (LEqual (Arg0, 0x0B))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Store (Zero, STA0)
                            Concatenate (Local0, Local1, Local2)
                        }
                        Else
                        {
                            If (LEqual (Arg1, One))
                            {
                                Store (Zero, STA0)
                                Concatenate (Local0, Local1, Local2)
                            }
                            Else
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (Zero, STA0)
                                    Concatenate (Local0, Local1, Local2)
                                }
                                Else
                                {
                                    If (LEqual (Arg1, 0x03))
                                    {
                                        Store (Zero, STA0)
                                        Concatenate (Local0, Local1, Local2)
                                        Store (Zero, Local3)
                                        Store (Zero, Local4)
                                        CreateByteField (Arg2, 0x02, CRT0)
                                        If (LEqual (And (CRT0, 0x04), 0x04))
                                        {
                                            Or (One, Local3, Local3)
                                        }

                                        CreateByteField (Arg2, 0x02, CRT1)
                                        If (LEqual (And (CRT1, 0x10), 0x10))
                                        {
                                            Or (One, Local4, Local4)
                                        }

                                        CreateByteField (Arg2, 0x06, LCD0)
                                        If (LEqual (And (LCD0, 0x04), 0x04))
                                        {
                                            Or (0x08, Local3, Local3)
                                        }

                                        CreateByteField (Arg2, 0x06, LCD1)
                                        If (LEqual (And (LCD1, 0x10), 0x10))
                                        {
                                            Or (0x08, Local4, Local4)
                                        }

                                        CreateByteField (Arg2, 0x0A, DVI0)
                                        If (LEqual (And (DVI0, 0x04), 0x04))
                                        {
                                            Or (0x04, Local3, Local3)
                                        }

                                        CreateByteField (Arg2, 0x0A, DVI1)
                                        If (LEqual (And (DVI1, 0x10), 0x10))
                                        {
                                            Or (0x04, Local4, Local4)
                                        }

                                        Store (Local3, CSTE)
                                        Store (Local4, CADL)
                                    }
                                }
                            }
                        }

                        Return (Local2)
                    }

                    If (LEqual (Arg0, 0xAAAAEEEE))
                    {
                        Store (Zero, STA0)
                        Store (Arg1, DAT0)
                        CreateDWordField (Arg2, Zero, DISP)
                        If (LEqual (DISP, Zero))
                        {
                            Store ("VGA : NOTIFY", Debug)
                            Store (Arg1, Debug)
                        }
                        Else
                        {
                            If (LEqual (DISP, 0x0110))
                            {
                                Notify (LCD, Arg1)
                                Store ("LCD : NOTIFY", Debug)
                                Store (Arg1, Debug)
                            }
                        }

                        Concatenate (Local0, Local1, Local2)
                    }

                    Return (Local2)
                }
            }
        }

        Device (PEG1)
        {
            Name (_ADR, 0x00010001)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR02, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR02)
                }

                Return (PR02)
            }
        }

        Device (PEG2)
        {
            Name (_ADR, 0x00010002)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR03, Package (0x04)
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
            Name (AR03, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR03)
                }

                Return (PR03)
            }
        }

        Device (PEG3)
        {
            Name (_ADR, 0x00060000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR0B, Package (0x04)
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
            Name (AR0B, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0B)
                }

                Return (PR0B)
            }
        }

        Device (B0D4)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
        }

        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            OperationRegion (PCRG, PCI_Config, Zero, 0x3F)
            Field (PCRG, AnyAcc, NoLock, Preserve)
            {
                VID,    16, 
                DID,    16
            }

            Name (SBHS, Buffer (0x08) {})
            CreateDWordField (SBHS, Zero, VERV)
            CreateDWordField (SBHS, 0x04, NUMS)
            Name (SSCP, Buffer (0x2C) {})
            CreateDWordField (SSCP, 0x04, CSNT)
            CreateDWordField (SSCP, 0x08, CPTI)
            CreateDWordField (SSCP, 0x0C, CICA)
            CreateDWordField (SSCP, 0x10, CIRC)
            CreateDWordField (SSCP, 0x14, CICV)
            CreateDWordField (SSCP, 0x18, CIRA)
            CreateDWordField (SSCP, 0x1C, CIAV)
            CreateDWordField (SSCP, 0x20, CIEP)
            CreateDWordField (SSCP, 0x24, CPPF)
            CreateDWordField (SSCP, 0x28, CSNR)
            Name (SSGP, Buffer (0x2C) {})
            CreateDWordField (SSGP, 0x04, GSNT)
            CreateDWordField (SSGP, 0x08, GPTI)
            CreateDWordField (SSGP, 0x0C, GICA)
            CreateDWordField (SSGP, 0x10, GIRC)
            CreateDWordField (SSGP, 0x14, GICV)
            CreateDWordField (SSGP, 0x18, GIRA)
            CreateDWordField (SSGP, 0x1C, GIAV)
            CreateDWordField (SSGP, 0x20, GIEP)
            CreateDWordField (SSGP, 0x24, GPPF)
            CreateDWordField (SSGP, 0x28, GSNR)
            Name (SCPP, Buffer (0x4C) {})
            CreateDWordField (SCPP, Zero, VRV1)
            CreateDWordField (SCPP, 0x04, VCAP)
            CreateDWordField (SCPP, 0x08, VCCP)
            CreateDWordField (SCPP, 0x0C, VCDP)
            CreateDWordField (SCPP, 0x10, VCEP)
            CreateDWordField (SCPP, 0x14, VCGP)
            CreateDWordField (SCPP, 0x18, VCHP)
            CreateDWordField (SCPP, 0x1C, VCXP)
            CreateDWordField (SCPP, 0x20, VCYP)
            CreateDWordField (SCPP, 0x24, VCZP)
            CreateDWordField (SCPP, 0x28, VCKP)
            CreateDWordField (SCPP, 0x2C, VCMP)
            CreateDWordField (SCPP, 0x30, VCNP)
            CreateDWordField (SCPP, 0x34, VCOP)
            CreateDWordField (SCPP, 0x38, VCAL)
            CreateDWordField (SCPP, 0x3C, VCBE)
            CreateDWordField (SCPP, 0x40, VCGA)
            CreateDWordField (SCPP, 0x44, VCPP)
            CreateDWordField (SCPP, 0x48, VCDE)
            Name (SGPP, Buffer (0x28) {})
            CreateDWordField (SGPP, Zero, VRV2)
            CreateDWordField (SGPP, 0x04, VGWP)
            CreateDWordField (SGPP, 0x08, VGPP)
            CreateDWordField (SGPP, 0x0C, VGQP)
            CreateDWordField (SGPP, 0x10, VGRP)
            CreateDWordField (SGPP, 0x14, VGAP)
            CreateDWordField (SGPP, 0x18, VGBP)
            CreateDWordField (SGPP, 0x1C, VGCP)
            CreateDWordField (SGPP, 0x20, VGDP)
            CreateDWordField (SGPP, 0x24, VGDE)
            Method (SSNR, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (0x00010000, VERV)
                        Store (0x02, NUMS)
                        Return (SBHS)
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            If (GP69)
                            {
                                If (GP71)
                                {
                                    Store (0x00010001, VRV1)
                                    Store (0x03E8, VCAP)
                                    Store (0xFA, VCCP)
                                    Store (0x02EE, VCDP)
                                    Store (0x0A, VCEP)
                                    Store (0x01F4, VCGP)
                                    Store (0x02BC, VCHP)
                                    Store (0x02BC, VCXP)
                                    Store (0xFA, VCYP)
                                    Store (0x32, VCZP)
                                    Store (Zero, VCKP)
                                    Store (One, VCMP)
                                    Store (Zero, VCNP)
                                    Store (Zero, VCOP)
                                    Store (0x0A, VCPP)
                                    Store (0x047E, VCAL)
                                    Store (0x0BB0, VCBE)
                                    Store (0x1E, VCGA)
                                    Store (One, VCDE)
                                    Return (SCPP)
                                }
                                Else
                                {
                                    Store (0x00010001, VRV1)
                                    Store (0x03E8, VCAP)
                                    Store (0xFA, VCCP)
                                    Store (0x02EE, VCDP)
                                    Store (0x0A, VCEP)
                                    Store (0x01F4, VCGP)
                                    Store (0x02BC, VCHP)
                                    Store (0x02BC, VCXP)
                                    Store (0xFA, VCYP)
                                    Store (0x32, VCZP)
                                    Store (Zero, VCKP)
                                    Store (One, VCMP)
                                    Store (Zero, VCNP)
                                    Store (Zero, VCOP)
                                    Store (0x0A, VCPP)
                                    Store (0x047E, VCAL)
                                    Store (0x0BB0, VCBE)
                                    Store (0x1E, VCGA)
                                    Store (One, VCDE)
                                    Return (SCPP)
                                }
                            }
                            Else
                            {
                                Store (0x00010001, VRV1)
                                Store (0x03E8, VCAP)
                                Store (0xFA, VCCP)
                                Store (0x02EE, VCDP)
                                Store (0x0A, VCEP)
                                Store (0x01F4, VCGP)
                                Store (0x02BC, VCHP)
                                Store (0x02BC, VCXP)
                                Store (0xFA, VCYP)
                                Store (0x32, VCZP)
                                Store (Zero, VCKP)
                                Store (One, VCMP)
                                Store (Zero, VCNP)
                                Store (Zero, VCOP)
                                Store (0x0A, VCPP)
                                Store (0x047E, VCAL)
                                Store (0x0BB0, VCBE)
                                Store (0x1E, VCGA)
                                Store (One, VCDE)
                                Return (SCPP)
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x02))
                            {
                                If (GP69)
                                {
                                    If (GP71)
                                    {
                                        Store (0x00010000, VRV2)
                                        Store (0x0320, VGWP)
                                        Store (0xFA, VGPP)
                                        Store (0x0A, VGQP)
                                        Store (0x02EE, VGRP)
                                        Store (One, VGAP)
                                        Store (0x01F4, VGBP)
                                        Store (Zero, VGCP)
                                        Store (One, VGDP)
                                        Store (One, VGDE)
                                        Return (SGPP)
                                    }
                                    Else
                                    {
                                        Store (0x00010000, VRV2)
                                        Store (0x0320, VGWP)
                                        Store (0xFA, VGPP)
                                        Store (0x0A, VGQP)
                                        Store (0x02EE, VGRP)
                                        Store (One, VGAP)
                                        Store (0x01F4, VGBP)
                                        Store (Zero, VGCP)
                                        Store (One, VGDP)
                                        Store (One, VGDE)
                                        Return (SGPP)
                                    }
                                }
                                Else
                                {
                                    Store (0x00010000, VRV2)
                                    Store (0x0320, VGWP)
                                    Store (0xFA, VGPP)
                                    Store (0x0A, VGQP)
                                    Store (0x02EE, VGRP)
                                    Store (One, VGAP)
                                    Store (0x01F4, VGBP)
                                    Store (Zero, VGCP)
                                    Store (One, VGDP)
                                    Store (One, VGDE)
                                    Return (SGPP)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    If (GP69)
                                    {
                                        If (GP71)
                                        {
                                            Store (Zero, Index (SSCP, Zero))
                                            Store (Zero, CSNT)
                                            Store (One, CPTI)
                                            Store (0x84, CICA)
                                            Store (Zero, CIRC)
                                            Store (0x27FF, CICV)
                                            Store (0x05, CIRA)
                                            Store (0xA000, CIAV)
                                            Store (0x03, CIEP)
                                            Store (0x0F, CPPF)
                                            Store (0x04, CSNR)
                                            Store (One, Index (SSGP, Zero))
                                            Store (Zero, GSNT)
                                            Store (One, GPTI)
                                            Store (0x8C, GICA)
                                            Store (Zero, GIRC)
                                            Store (0x27FF, GICV)
                                            Store (0x05, GIRA)
                                            Store (0xA000, GIAV)
                                            Store (0x03, GIEP)
                                            Store (0x0F, GPPF)
                                            Store (0x04, GSNR)
                                            Return (Concatenate (SSCP, SSGP))
                                        }
                                        Else
                                        {
                                            Store (Zero, Index (SSCP, Zero))
                                            Store (Zero, CSNT)
                                            Store (One, CPTI)
                                            Store (0x84, CICA)
                                            Store (Zero, CIRC)
                                            Store (0x27FF, CICV)
                                            Store (0x05, CIRA)
                                            Store (0xA000, CIAV)
                                            Store (0x03, CIEP)
                                            Store (0x0F, CPPF)
                                            Store (0x04, CSNR)
                                            Store (One, Index (SSGP, Zero))
                                            Store (Zero, GSNT)
                                            Store (One, GPTI)
                                            Store (0x8C, GICA)
                                            Store (Zero, GIRC)
                                            Store (0x27FF, GICV)
                                            Store (0x05, GIRA)
                                            Store (0xA000, GIAV)
                                            Store (0x03, GIEP)
                                            Store (0x0F, GPPF)
                                            Store (0x04, GSNR)
                                            Return (Concatenate (SSCP, SSGP))
                                        }
                                    }
                                    Else
                                    {
                                        Store (Zero, Index (SSCP, Zero))
                                        Store (Zero, CSNT)
                                        Store (One, CPTI)
                                        Store (0x84, CICA)
                                        Store (Zero, CIRC)
                                        Store (0x27FF, CICV)
                                        Store (0x05, CIRA)
                                        Store (0xA000, CIAV)
                                        Store (0x03, CIEP)
                                        Store (0x0F, CPPF)
                                        Store (0x04, CSNR)
                                        Store (One, Index (SSGP, Zero))
                                        Store (Zero, GSNT)
                                        Store (One, GPTI)
                                        Store (0x8C, GICA)
                                        Store (Zero, GIRC)
                                        Store (0x27FF, GICV)
                                        Store (0x05, GIRA)
                                        Store (0xA000, GIAV)
                                        Store (0x03, GIEP)
                                        Store (0x0F, GPPF)
                                        Store (0x04, GSNR)
                                        Return (Concatenate (SSCP, SSGP))
                                    }
                                }
                            }
                        }
                    }

                    Break
                }

                Return (0x80000002)
            }

            Name (VSTS, One)
            Name (TBUD, 0x00011170)
            Name (PSCP, Zero)
            Method (SPB, 4, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("-Arg1-", Debug)
                Store (Arg1, Debug)
                Store ("-Arg2-", Debug)
                Store (Arg2, Debug)
                If (LOr (LNotEqual (VTST, One), LNotEqual (Arg1, 0x0101)))
                {
                    Return (0x80000002)
                }

                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Buffer (0x08)
                            {
                                 0x01, 0x00, 0x00, 0x00, 0x0F, 0x04, 0x00, 0x00
                            }, Local0)
                        Store ("== SPB: SUPPORT ==", Debug)
                        Store (Local0, Debug)
                        Return (Local0)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x20))
                        {
                            Store (TBUD, Local1)
                            And (Local1, 0x000FFFFF, Local1)
                            Or (Local1, 0x40000000, Local1)
                            Store ("== SPB: VENTURASTATUS ==", Debug)
                            Store (Local1, Debug)
                            Return (Local1)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x21))
                            {
                                Store (\_PR.CPU0._PSS, Local0)
                                Store ("== SPB: GETPSS ==", Debug)
                                Store (Local0, Debug)
                                Return (\_PR.CPU0._PSS)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x22))
                                {
                                    Store ("== SPB: SETPPC ==", Debug)
                                    CreateByteField (Arg3, Zero, PCAP)
                                    Store (PCAP, PSCP)
                                    Name (MCHH, Zero)
                                    If (LNotEqual (PCAP, \_PR.CPU0._PPC))
                                    {
                                        If (LEqual (\_PR.CPU0._PPC, Zero))
                                        {
                                            Store (MMCH, MCHH)
                                            Store (One, MMCH)
                                        }
                                        Else
                                        {
                                            If (LEqual (PCAP, Zero))
                                            {
                                                Store (MCHH, MMCH)
                                            }
                                        }
                                    }

                                    Store ("[ _PR.CPU0._PPC ]", Debug)
                                    Store ("[PCAP]", Debug)
                                    Store (PCAP, Debug)
                                    Store (PCAP, \_PR.CPU0._PPC)
                                    PNOT ()
                                    Return (PCAP)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x23))
                                    {
                                        Store ("== SPB: GETPPC ==", Debug)
                                        Store (PSCP, Debug)
                                        Return (PSCP)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x2A))
                                        {
                                            Store (SSNR (Arg3), Local0)
                                            Store ("== SPB: SYSPARAMS ==", Debug)
                                            Store ("-Arg-", Debug)
                                            Store (Arg3, Debug)
                                            Store ("-Return-", Debug)
                                            Store (Local0, Debug)
                                            Return (Local0)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Break
                }

                Store ("<< SPB: Unsuported >>", Debug)
                Return (0x80000002)
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (LAnd (CondRefOf (IDAB), LGreaterEqual (OSYS, 0x07D6)))
                {
                    IDAB ()
                }
                Else
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Store (SDDL (DIDL), DID1)
                    }

                    If (LNotEqual (DDL2, Zero))
                    {
                        Store (SDDL (DDL2), DID2)
                    }

                    If (LNotEqual (DDL3, Zero))
                    {
                        Store (SDDL (DDL3), DID3)
                    }

                    If (LNotEqual (DDL4, Zero))
                    {
                        Store (SDDL (DDL4), DID4)
                    }

                    If (LNotEqual (DDL5, Zero))
                    {
                        Store (SDDL (DDL5), DID5)
                    }

                    If (LNotEqual (DDL6, Zero))
                    {
                        Store (SDDL (DDL6), DID6)
                    }

                    If (LNotEqual (DDL7, Zero))
                    {
                        Store (SDDL (DDL7), DID7)
                    }

                    If (LNotEqual (DDL8, Zero))
                    {
                        Store (SDDL (DDL8), DID8)
                    }
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }

                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP6, One))
                    Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                    Return (TMP6)
                }

                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP7, One))
                    Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                    Return (TMP7)
                }

                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP8, One))
                    Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                    Return (TMP8)
                }

                If (LEqual (NDID, 0x09))
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID)
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Name (PLVL, Package (0x0D)
                {
                    0x46, 
                    0x1E, 
                    0x0A, 
                    0x11, 
                    0x17, 
                    0x1E, 
                    0x28, 
                    0x32, 
                    0x3C, 
                    0x46, 
                    0x50, 
                    0x5A, 
                    0x64
                })
                Method (LVLS, 1, NotSerialized)
                {
                    Store (One, Local0)
                    Store (Zero, Local1)
                    While (Local0)
                    {
                        Add (Local1, 0x02, Local2)
                        Store (DerefOf (Index (PLVL, Local2)), Local3)
                        And (Arg0, 0xFF, Local4)
                        If (LEqual (Local4, Local3))
                        {
                            Store (Zero, Local0)
                        }

                        Subtract (Local3, One, Local3)
                        If (LEqual (Local4, Local3))
                        {
                            Store (Zero, Local0)
                        }

                        If (LGreaterEqual (Local1, 0x0A))
                        {
                            Store (Zero, Local0)
                        }

                        If (Local0)
                        {
                            Add (One, Local1, Local1)
                        }
                    }

                    Return (Local1)
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (PLVL)
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (IGDS)
                    {
                        Store (LVLS (Arg0), Local1)
                        Store (Local1, ^^^LPCB.EC0.BRTS)
                        AINT (One, Arg0)
                    }
                    Else
                    {
                        Store (^^^PEG0.VGA.LCD.LVLS (Arg0), Local1)
                        Store (Local1, ^^^LPCB.EC0.BRTS)
                    }

                    Store (Arg0, BRTL)
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL)
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
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
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
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
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
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
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD5)
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
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
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD6)
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
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
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD7)
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
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
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
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
                BCLM,   320, 
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
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0679, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                            PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL
                            )), 0x15), PARM, PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87FD, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (GFX0, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }

                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x02, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, ALSI)
                            Store (One, ASLC)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (^^MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (IGDS)
                    {
                        Return (CRS)
                    }
                }
            }
        }
    }

    Name (APTG, Zero)
    Name (APEJ, Zero)
    Name (APSD, Zero)
    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

