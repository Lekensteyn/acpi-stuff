/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120620-64 [Jun 24 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of dsdt.dat, Wed Jun 27 18:56:27 2012
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00011E96 (73366)
 *     Revision         0x02
 *     Checksum         0x89
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "Notebook"
 *     OEM Revision     0x00000013 (19)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */

DefinitionBlock ("dsdt.aml", "DSDT", 2, "_ASUS_", "Notebook", 0x00000013)
{
    External (\_SB_.IFFS.FFSS)
    External (\_SB_.IFFS.SFTV, MethodObj)    // 1 Arguments
    External (HNOT, MethodObj)    // 1 Arguments
    External (PDC0)
    External (PDC1)
    External (PDC2)
    External (PDC3)
    External (PDC4)
    External (PDC5)
    External (PDC6)
    External (PDC7)

    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SMCR, 0x0430)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (FLSZ, 0x00600000)
    Name (SRCB, 0xFED1C000)
    Name (RCLN, 0x4000)
    Name (TCBR, 0xFED08000)
    Name (TCLT, 0x1000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (LAPB, 0xFEE00000)
    Name (EGPB, 0xFED19000)
    Name (MCHB, 0xFED10000)
    Name (VTBS, 0xFED90000)
    Name (VTLN, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, Zero)
    Name (SHPC, Zero)
    Name (PEPM, Zero)
    Name (PEER, Zero)
    Name (PECS, Zero)
    Name (ITKE, Zero)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FUWS, 0x04)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELC, 0x09)
    Name (BRHP, 0x0A)
    Name (BTFC, 0x0B)
    Name (BEHP, 0x0C)
    Name (BPHS, 0x0D)
    Name (BELP, 0x0E)
    Name (BTL, 0x10)
    Name (BTFP, 0x11)
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
    Name (TRTP, One)
    Name (WDTE, One)
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
    Name (SRSI, 0xB2)
    Name (CSMI, 0x61)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (SMIT, 0xB2)
    Name (OFST, 0x35)
    Name (TPMF, Zero)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (TRST, 0x02)
    Name (MBEC, Zero)
    Name (MBLF, 0x0A)
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x4400)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (GNVS, SystemMemory, 0xDA8C6E18, 0x01CD)
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
        RES3,   8, 
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
        PLID,   8, 
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
        ECON,   8, 
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
        SGGP,   8, 
        PXFX,   8, 
        PXDY,   8, 
        PXFD,   8, 
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
        Offset (0x1B2), 
        XHCI,   8, 
        XHPM,   8, 
        Offset (0x1B7), 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        Offset (0x1C4), 
        LPMV,   8, 
        Offset (0x1C6), 
        DDRF,   8, 
        MM64,   8, 
        AOAC,   8, 
        SLDR,   32
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x23)
        {
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
                0x0014FFFF, 
                Zero, 
                LNKA, 
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
                0x001DFFFF, 
                Zero, 
                LNKH, 
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
                0x001FFFFF, 
                Zero, 
                LNKF, 
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
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x23)
        {
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
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
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
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
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
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
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
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
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
        Name (PR01, Package (0x10)
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
            }
        })
        Name (AR01, Package (0x10)
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
        Name (PR0A, Package (0x04)
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
        Name (AR0A, Package (0x04)
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
        Name (PR0B, Package (0x04)
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
        Name (AR0B, Package (0x04)
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
        Name (PR0C, Package (0x04)
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
        Name (AR0C, Package (0x04)
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
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12}
        })
        Name (PRSB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,12}
        })
        Alias (PRSB, PRSC)
        Alias (PRSB, PRSD)
        Alias (PRSB, PRSE)
        Alias (PRSB, PRSF)
        Alias (PRSB, PRSG)
        Alias (PRSB, PRSH)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
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
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000010000, // Range Minimum
                    0x000000000001FFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000010000, // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
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
                If (LOr (LEqual (MM64, Zero), LLessEqual (OSYS, 0x07D3)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0F._LEN, MSLN)  // _LEN: Length
                    Store (Zero, MSLN)
                }
                Else
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, M2LN)  // _LEN: Length
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MIN, M2MN)  // _MIN: Minimum Base Address
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MAX, M2MX)  // _MAX: Maximum Base Address
                    Store (0x0000000400000000, M2LN)
                    If (LGreaterEqual (TUUD, 0x1000))
                    {
                        ShiftLeft (TUUD, 0x14, M2MN)
                    }
                    Else
                    {
                        Store (0x0000000100000000, M2MN)
                    }

                    Subtract (Add (M2MN, M2LN), One, M2MX)
                }

                Return (BUF0)
            }

            Name (GUID, Buffer (0x10)
            {
                /* 0000 */   0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40,
                /* 0008 */   0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                Else
                {
                    If (_OSI ("Windows 2012"))
                    {
                        If (LEqual (XCNT, Zero))
                        {
                            ^XHC.XSEL ()
                            Increment (XCNT)
                        }
                    }
                }

                If (LEqual (Arg0, GUID))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (LEqual (NEXP, Zero))
                    {
                        And (CTRL, 0xFFFFFFF8, CTRL)
                    }

                    If (NEXP)
                    {
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

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00)
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00)
                }

                Method (AR01, 0, NotSerialized)
                {
                    Return (^^AR01)
                }

                Method (PR01, 0, NotSerialized)
                {
                    Return (^^PR01)
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02)
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02)
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (^^AR04)
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (^^PR04)
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05)
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05)
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (^^AR06)
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (^^PR06)
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07)
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07)
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (^^AR08)
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (^^PR08)
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09)
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09)
                }

                Method (AR0E, 0, NotSerialized)
                {
                    Return (^^AR0E)
                }

                Method (PR0E, 0, NotSerialized)
                {
                    Return (^^PR0E)
                }

                Method (AR0F, 0, NotSerialized)
                {
                    Return (^^AR0F)
                }

                Method (PR0F, 0, NotSerialized)
                {
                    Return (^^PR0F)
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (^^AR0A)
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (^^PR0A)
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B)
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B)
                }

                Method (AR0C, 0, NotSerialized)
                {
                    Return (^^AR0C)
                }

                Method (PR0C, 0, NotSerialized)
                {
                    Return (^^PR0C)
                }
            }

            Device (TPMX)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0xFED40000,         // Address Base
                        0x00005000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (CRS)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (TPMF)
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01 ())
                    }

                    Return (PR01 ())
                }
            }

            Device (B0D4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
            }

            Device (PEG0)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
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
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A ())
                    }

                    Return (PR0A ())
                }
            }

            Device (PEG2)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B ())
                    }

                    Return (PR0B ())
                }
            }

            Device (PEG3)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C ())
                    }

                    Return (PR0C ())
                }
            }

            Device (XHC1)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, 0x03))
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x04, 0x03))
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0C, 0x03))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0E, 0x03))
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x05, 0x03))
                }
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x20, 0x03))
                }
            }

            Device (USB7)
            {
                Name (_ADR, 0x001A0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x25, 0x03))
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

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }

                Device (WLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    OperationRegion (MINP, PCI_Config, Zero, 0x68)
                    Field (MINP, ByteAcc, NoLock, Preserve)
                    {
                        VNUM,   32, 
                        Offset (0x09), 
                        PINF,   8, 
                        SBCC,   8, 
                        BSCC,   8, 
                        Offset (0x2C), 
                        SNUM,   32, 
                        Offset (0x34)
                    }

                    Method (MPDP, 0, NotSerialized)
                    {
                        If (LEqual (SNUM, 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If (LNotEqual (BSCC, 0x02))
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x03))
                    }
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
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
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
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
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
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
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09 ())
                    }

                    Return (PR09 ())
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E ())
                    }

                    Return (PR0E ())
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (LCTL, PCI_Config, 0x50, 0x04)
                Field (LCTL, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PELD,   1, 
                    PERL,   1
                }

                OperationRegion (SLOT, PCI_Config, 0x54, 0x10)
                Field (SLOT, ByteAcc, NoLock, Preserve)
                {
                    SCAP,   32, 
                    SCTL,   16, 
                    ABP1,   1, 
                    PFD1,   1, 
                    MSC1,   1, 
                    PDC1,   1, 
                    CC10,   1, 
                    MS10,   1, 
                    PDS1,   1, 
                    RSV0,   1, 
                    LASC,   1, 
                    RSV1,   7
                }

                OperationRegion (RHUB, PCI_Config, 0x60, 0x10)
                Field (RHUB, ByteAcc, NoLock, Preserve)
                {
                    PMID,   16, 
                    PMES,   1, 
                    PMEP,   1, 
                    RSV2,   14
                }

                OperationRegion (MISC, PCI_Config, 0xD8, 0x08)
                Field (MISC, ByteAcc, NoLock, Preserve)
                {
                    RSV4,   30, 
                    PMCE,   1, 
                    HPCE,   1, 
                    PMMS,   1, 
                    HPPD,   1, 
                    HPAB,   1, 
                    HPCC,   1, 
                    HPLA,   1, 
                    RSV3,   25, 
                    HPCS,   1, 
                    PMCS,   1
                }

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

                Method (HPHK, 0, NotSerialized)
                {
                    Store (One, PDC1)
                    Store (One, HPCS)
                    Store (Zero, PELD)
                    Sleep (0xFA)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F ())
                    }

                    Return (PR0F ())
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
                        PHRC,   8, 
                        Offset (0x6C), 
                        Offset (0x6D), 
                        Offset (0x6E), 
                        XUSB,   1
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
                            _Y10)
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
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y10._BAS, HPT0)  // _BAS: Base Address
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
                            0x0200,             // Range Minimum
                            0x0200,             // Range Maximum
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
                        If (LEqual (WDTE, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (MBEC, 0xFFFF))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (SYNA)
                        {
                            Return (0x190A2E4F)
                        }

                        If (ALPS)
                        {
                            Return (0x0713A906)
                        }

                        If (ELAN)
                        {
                            Return (0x05018416)
                        }

                        If (STLC)
                        {
                            Return (0x41C18C4E)
                        }

                        Return (0x060A2E4F)
                    }

                    Name (CID0, Package (0x05)
                    {
                        0x000A2E4F, 
                        0x02002E4F, 
                        0x030FD041, 
                        0x130FD041, 
                        0x120FD041
                    })
                    Name (CID1, Package (0x03)
                    {
                        0x000A2E4F, 
                        0x02002E4F, 
                        0x130FD041
                    })
                    Name (CID2, Package (0x01)
                    {
                        0x130FD041
                    })
                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        If (SYNA)
                        {
                            Return (CID1)
                        }

                        If (STLC)
                        {
                            Return (CID2)
                        }

                        Return (CID0)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ShiftLeft (One, 0x0E, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }
            }

            Device (IDE0)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF)
                    }
                }

                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91
                })
                Name (AT05, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5
                })
                Name (AT06, Buffer (0x07)
                {
                     0x10, 0x03, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT07, Buffer (0x07)
                {
                     0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT08, Buffer (0x07)
                {
                     0x41, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT81, Buffer (0x07)
                {
                     0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT09, Buffer (0x07)
                {
                     0x90, 0x05, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (ATA0, Buffer (0x32) {})
                Name (ATA1, Buffer (0x32) {})
                Name (ATA2, Buffer (0x32) {})
                Name (ATA3, Buffer (0x32) {})
                Name (ATAB, Buffer (0x32) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX)
                    Store (Arg1, A001)
                    Store (Arg2, A005)
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC)
                    Name (ID00, Zero)
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (ID78, Zero)
                    Name (W128, Zero)
                    Name (W119, Zero)
                    Name (W120, Zero)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, Zero, IW00)
                        Store (IW00, ID00)
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49)
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53)
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63)
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59)
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88)
                        CreateWordField (Arg1, 0x9C, IW78)
                        Store (IW78, ID78)
                        CreateWordField (Arg1, 0x0100, I128)
                        Store (I128, W128)
                        CreateWordField (Arg1, 0xEE, I119)
                        Store (I119, W119)
                        CreateWordField (Arg1, 0xF0, I120)
                        Store (I120, W120)
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    If (LEqual (Local7, 0xA0))
                    {
                        If (And (W128, One))
                        {
                            GTFB (AT05, Zero, Local7)
                        }

                        If (And (ID78, 0x40))
                        {
                            GTFB (AT07, 0x06, Local7)
                        }

                        If (And (ID78, 0x08))
                        {
                            GTFB (AT06, 0x03, Local7)
                        }

                        If (And (W119, 0x20))
                        {
                            If (And (HDDF, One))
                            {
                                GTFB (AT08, Zero, Local7)
                            }
                            Else
                            {
                                GTFB (AT81, Zero, Local7)
                            }
                        }
                    }

                    Store (ATAB, Debug)
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (RETB)
                }

                Name (ATP0, Buffer (0x32) {})
                Device (PRT0)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                    Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                    {
                        Store (AGTF (Zero, Arg0), ATP0)
                    }

                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (RATA (ATP0))
                    }
                }

                Method (AGTF, 2, Serialized)
                {
                    Store (0xA0, Local0)
                    Store (Zero, CMDC)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, Zero, IW00)
                        CreateWordField (Arg1, 0x0100, I128)
                        If (And (I128, One))
                        {
                            GTFB (AT05, Zero, Local0)
                        }

                        CreateWordField (Arg1, 0x9C, IW78)
                        If (And (IW78, 0x40))
                        {
                            GTFB (AT07, 0x06, Local0)
                        }

                        If (And (IW78, 0x08))
                        {
                            GTFB (AT06, 0x03, Local0)
                        }

                        CreateWordField (Arg1, 0xEE, I119)
                        If (And (I119, 0x20))
                        {
                            If (And (HDDF, One))
                            {
                                GTFB (AT08, Zero, Local0)
                            }
                            Else
                            {
                                GTFB (AT81, Zero, Local0)
                            }
                        }
                    }

                    Return (ATAB)
                }
            }

            Device (IDE1)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF)
                    }
                }

                OperationRegion (BAR0, PCI_Config, Zero, 0x0100)
                Field (BAR0, DWordAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x0A), 
                    SCCR,   8, 
                    BCCR,   8, 
                    Offset (0x90), 
                    MAPV,   2, 
                        ,   4, 
                    SMS,    2, 
                    Offset (0x92), 
                    P0EN,   1, 
                    P1EN,   1, 
                    P2EN,   1, 
                    P3EN,   1, 
                    P4EN,   1, 
                    P5EN,   1, 
                        ,   1, 
                    Offset (0x93), 
                    P0PF,   1, 
                    P1PF,   1, 
                    P2PF,   1, 
                    P3PF,   1, 
                    P4PF,   1, 
                    P5PF,   1, 
                        ,   1, 
                    Offset (0x94)
                }

                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91
                })
                Name (AT05, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5
                })
                Name (AT06, Buffer (0x07)
                {
                     0x10, 0x03, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT07, Buffer (0x07)
                {
                     0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT08, Buffer (0x07)
                {
                     0x41, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT81, Buffer (0x07)
                {
                     0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT09, Buffer (0x07)
                {
                     0x90, 0x05, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (ATA0, Buffer (0x32) {})
                Name (ATA1, Buffer (0x32) {})
                Name (ATA2, Buffer (0x32) {})
                Name (ATA3, Buffer (0x32) {})
                Name (ATAB, Buffer (0x32) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX)
                    Store (Arg1, A001)
                    Store (Arg2, A005)
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC)
                    Name (ID00, Zero)
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (ID78, Zero)
                    Name (W128, Zero)
                    Name (W119, Zero)
                    Name (W120, Zero)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, Zero, IW00)
                        Store (IW00, ID00)
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49)
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53)
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63)
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59)
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88)
                        CreateWordField (Arg1, 0x9C, IW78)
                        Store (IW78, ID78)
                        CreateWordField (Arg1, 0x0100, I128)
                        Store (I128, W128)
                        CreateWordField (Arg1, 0xEE, I119)
                        Store (I119, W119)
                        CreateWordField (Arg1, 0xF0, I120)
                        Store (I120, W120)
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    If (LEqual (Local7, 0xA0))
                    {
                        If (And (W128, One))
                        {
                            GTFB (AT05, Zero, Local7)
                        }

                        If (And (ID78, 0x40))
                        {
                            GTFB (AT07, 0x06, Local7)
                        }

                        If (And (ID78, 0x08))
                        {
                            GTFB (AT06, 0x03, Local7)
                        }

                        If (And (W119, 0x20))
                        {
                            If (And (HDDF, One))
                            {
                                GTFB (AT08, Zero, Local7)
                            }
                            Else
                            {
                                GTFB (AT81, Zero, Local7)
                            }
                        }
                    }

                    Store (ATAB, Debug)
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (RETB)
                }

                Method (AGTF, 2, Serialized)
                {
                    Store (0xA0, Local0)
                    Store (Zero, CMDC)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, Zero, IW00)
                        CreateWordField (Arg1, 0x0100, I128)
                        If (And (I128, One))
                        {
                            GTFB (AT05, Zero, Local0)
                        }

                        CreateWordField (Arg1, 0x9C, IW78)
                        If (And (IW78, 0x40))
                        {
                            GTFB (AT07, 0x06, Local0)
                        }

                        If (And (IW78, 0x08))
                        {
                            GTFB (AT06, 0x03, Local0)
                        }

                        CreateWordField (Arg1, 0xEE, I119)
                        If (And (I119, 0x20))
                        {
                            If (And (HDDF, One))
                            {
                                GTFB (AT08, Zero, Local0)
                            }
                            Else
                            {
                                GTFB (AT81, Zero, Local0)
                            }
                        }
                    }

                    Return (ATAB)
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

                    Return (0xFFFFFFFF)
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

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                OperationRegion (VSID, PCI_Config, Zero, 0x04)
                Field (VSID, ByteAcc, NoLock, Preserve)
                {
                    REG0,   32
                }

                Name (PCTG, Package (0x0B) {})
                Name (GPSP, Buffer (0x24) {})
                Name (NLIM, Zero)
                Name (RET1, Zero)
                Name (PSAP, Zero)
                CreateDWordField (GPSP, Zero, RETN)
                CreateDWordField (GPSP, 0x04, VRV1)
                CreateDWordField (GPSP, 0x08, TMGP)
                CreateDWordField (GPSP, 0x0C, PDTS)
                CreateDWordField (GPSP, 0x10, SFAN)
                CreateDWordField (GPSP, 0x14, SKNT)
                CreateDWordField (GPSP, 0x18, CPUE)
                CreateDWordField (GPSP, 0x1C, TM01)
                CreateDWordField (GPSP, 0x20, TM02)
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

                Name (OPBS, 0xFFFFFF00)
                Method (OPTS, 1, NotSerialized)
                {
                    If (And (VGAF, One))
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (ASLS, OPBS)
                        }
                    }
                }

                Method (OWAK, 1, NotSerialized)
                {
                    If (And (VGAF, One))
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (OPBS, ASLS)
                            Store (One, GSES)
                        }

                        Store (One, CLID)
                    }
                }

                Method (OGCD, 0, NotSerialized)
                {
                    If (LEqual (CADL, Zero))
                    {
                        Store (LCDM, CSTE)
                        Return (Zero)
                    }

                    Store (OA2D (CADL), CSTE)
                    If (LEqual (CAL2, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL2), CSTE, CSTE)
                    If (LEqual (CAL3, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL3), CSTE, CSTE)
                    If (LEqual (CAL4, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL4), CSTE, CSTE)
                    If (LEqual (CAL5, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL5), CSTE, CSTE)
                    If (LEqual (CAL6, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL6), CSTE, CSTE)
                    If (LEqual (CAL7, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL7), CSTE, CSTE)
                    If (LEqual (CAL8, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL8), CSTE, CSTE)
                    Return (Zero)
                }

                Method (OGND, 0, NotSerialized)
                {
                    If (LEqual (NADL, Zero))
                    {
                        Store (LCDM, NSTE)
                        Return (Zero)
                    }

                    Store (OA2D (NADL), NSTE)
                    If (LEqual (NDL2, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL2), NSTE, NSTE)
                    If (LEqual (NDL3, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL3), NSTE, NSTE)
                    If (LEqual (NDL4, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL4), NSTE, NSTE)
                    If (LEqual (NDL5, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL5), NSTE, NSTE)
                    If (LEqual (NDL6, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL6), NSTE, NSTE)
                    If (LEqual (NDL7, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL7), NSTE, NSTE)
                    If (LEqual (NDL8, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (NDL8), NSTE, NSTE)
                    Return (Zero)
                }

                Method (OGCA, 0, NotSerialized)
                {
                    SOID ()
                    If (LEqual (CPDL, Zero))
                    {
                        Store (LCDM, OCAD)
                        Return (Zero)
                    }

                    Store (OA2D (CPDL), OCAD)
                    If (LEqual (CPL2, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL2), OCAD, OCAD)
                    If (LEqual (CPL3, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL3), OCAD, OCAD)
                    If (LEqual (CPL4, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL4), OCAD, OCAD)
                    If (LEqual (CPL5, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL5), OCAD, OCAD)
                    If (LEqual (CPL6, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL6), OCAD, OCAD)
                    If (LEqual (CPL7, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL7), OCAD, OCAD)
                    If (LEqual (CPL8, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL8), OCAD, OCAD)
                    Return (Zero)
                }

                Method (OA2D, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (Arg0, LFID))
                    {
                        Or (Local0, LCDM, Local0)
                    }

                    If (LEqual (Arg0, CRID))
                    {
                        Or (Local0, CRTM, Local0)
                    }

                    If (LEqual (Arg0, TVID))
                    {
                        Or (Local0, TVOM, Local0)
                    }

                    If (LEqual (Arg0, HDID))
                    {
                        Or (Local0, HDMM, Local0)
                    }

                    If (LEqual (Arg0, DVID))
                    {
                        Or (Local0, DVIM, Local0)
                    }

                    If (LEqual (Arg0, DPID))
                    {
                        Or (Local0, DPOM, Local0)
                    }

                    Return (Local0)
                }

                Method (D2OA, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (And (Arg0, LCDM))
                    {
                        Return (LFID)
                    }

                    If (And (Arg0, CRTM))
                    {
                        Return (CRID)
                    }

                    If (And (Arg0, TVOM))
                    {
                        Return (TVID)
                    }

                    If (And (Arg0, HDMM))
                    {
                        Return (HDID)
                    }

                    If (And (Arg0, DVIM))
                    {
                        Return (DVID)
                    }

                    If (And (Arg0, DPOM))
                    {
                        Return (DPID)
                    }

                    Return (Local0)
                }

                Name (DDID, Zero)
                Method (WNDD, 1, NotSerialized)
                {
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NADL)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL2)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL3)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL4)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL5)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL6)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL7)
                    Store (GDOA (Arg0), DDID)
                    Store (DDID, NDL8)
                    Store (Zero, CONT)
                }

                Name (CONT, Zero)
                Method (GDOA, 1, NotSerialized)
                {
                    While (LLess (CONT, 0x08))
                    {
                        Store (One, Local0)
                        ShiftLeft (Local0, CONT, Local0)
                        And (NSTE, Local0, Local1)
                        Increment (CONT)
                        Store (D2OA (Local1), Local1)
                        If (LNotEqual (Local1, Zero))
                        {
                            Return (Local1)
                        }
                    }

                    Return (Zero)
                }

                Name (LFID, 0xFFFFFFFF)
                Name (CRID, 0xFFFFFFFF)
                Name (TVID, 0xFFFFFFFF)
                Name (DPID, 0xFFFFFFFF)
                Name (HDID, 0xFFFFFFFF)
                Name (DVID, 0xFFFFFFFF)
                Method (GOID, 1, NotSerialized)
                {
                    And (Arg0, 0x0F00, Local0)
                    If (LEqual (Local0, 0x0100))
                    {
                        Store (Arg0, CRID)
                    }

                    If (LEqual (Local0, 0x0200))
                    {
                        Store (Arg0, TVID)
                    }

                    If (LEqual (Local0, 0x0400))
                    {
                        Store (Arg0, LFID)
                    }

                    If (LEqual (Arg0, 0x0300))
                    {
                        Store (Arg0, HDID)
                    }
                }

                Method (SOID, 0, NotSerialized)
                {
                    GOID (CPDL)
                    GOID (CPL2)
                    GOID (CPL3)
                    GOID (CPL4)
                    GOID (CPL5)
                    GOID (CPL6)
                    GOID (CPL7)
                    GOID (CPL8)
                }

                Method (PRST, 0, NotSerialized)
                {
                    If (LEqual (REG0, 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }

                Name (LCDM, 0x0808)
                Name (CRTM, 0x0101)
                Name (TVOM, 0x0202)
                Name (HDMM, 0x0404)
                Name (DVIM, 0x4040)
                Name (DPOM, 0x8080)
                Name (DOSF, One)
                Name (BRNC, Zero)
                Name (UPDN, One)
                Name (NXTD, One)
                Method (D2AF, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (And (Arg0, LCDM))
                    {
                        Or (Local0, One, Local0)
                    }

                    If (And (Arg0, CRTM))
                    {
                        Or (Local0, 0x02, Local0)
                    }

                    If (And (Arg0, TVOM))
                    {
                        Or (Local0, 0x04, Local0)
                    }

                    If (And (Arg0, DVIM))
                    {
                        Or (Local0, 0x08, Local0)
                    }

                    If (And (Arg0, HDMM))
                    {
                        Or (Local0, 0x10, Local0)
                    }

                    If (And (Arg0, DPOM))
                    {
                        Or (Local0, 0x20, Local0)
                    }

                    If (LNot (Local0))
                    {
                        Return (NXTD)
                    }

                    Return (Local0)
                }

                Method (AF2D, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (And (Arg0, One))
                    {
                        Or (Local0, LCDM, Local0)
                    }

                    If (And (Arg0, 0x02))
                    {
                        Or (Local0, CRTM, Local0)
                    }

                    If (And (Arg0, 0x04))
                    {
                        Or (Local0, TVOM, Local0)
                    }

                    If (And (Arg0, 0x08))
                    {
                        Or (Local0, DVIM, Local0)
                    }

                    If (And (Arg0, 0x10))
                    {
                        Or (Local0, HDMM, Local0)
                    }

                    If (And (Arg0, 0x20))
                    {
                        Or (Local0, DPOM, Local0)
                    }

                    If (LNot (Local0))
                    {
                        Return (LCDM)
                    }

                    Return (Local0)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    If (DRDY)
                    {
                        And (Arg0, 0x03, DOSF)
                        Store (ShiftRight (Arg0, 0x02), BRNC)
                        And (BRNC, One, BRNC)
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
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

                    If (LEqual (NDID, One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                        Return (TMP1)
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP2, One))
                        Return (TMP2)
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
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
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP4, One))
                        Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                        Return (TMP4)
                    }

                    If (LGreater (NDID, 0x04))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP5, One))
                        Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                        Return (TMP5)
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

                Device (LCDD)
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
                        Return (CDDS (DID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }

                    Method (MINB, 0, NotSerialized)
                    {
                        If (ARDY)
                        {
                            Store (BRTI, Local1)
                            ShiftLeft (Local1, 0x04, Local1)
                            Store (DerefOf (Index (^^^LPCB.EC0.PWAC, Local1)), Local0)
                            Or (TCHE, 0x08, TCHE)
                            Or (ASLC, 0x08, ASLC)
                            Store (Local0, PFMB)
                            Or (PFMB, 0x0100, PFMB)
                            Store (One, ASLE)
                        }
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Store (Zero, Local0)
                        Store (BRTI, Local4)
                        ShiftLeft (Local4, 0x04, Local4)
                        While (LLess (Local0, 0x0B))
                        {
                            Subtract (0x0B, Local0, Local3)
                            Subtract (Local3, One, Local3)
                            Store (Add (Local4, Local3), Local3)
                            Store (DerefOf (Index (^^^LPCB.EC0.PWAC, Local3)), Local1)
                            Store (Divide (Multiply (Local1, 0x64), 0xFF, ), Local2)
                            Store (Local2, Index (PCTG, Local0))
                            Increment (Local0)
                        }

                        MINB ()
                        Return (PCTG)
                    }

                    Name (BCBH, Zero)
                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        Store (One, BCMD)
                        Store (GCBL (Arg0), Local0)
                        Subtract (0x0A, Local0, LBTN)
                        If (BRNC)
                        {
                            AINT (One, Arg0)
                        }
                        Else
                        {
                            ^^^LPCB.EC0.STBR ()
                        }
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Return (LBTN)
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

                Method (SWHD, 1, Serialized)
                {
                    Store (One, UPDN)
                    If (LEqual (DOSF, One))
                    {
                        If (\NATK ())
                        {
                            Store (Zero, SFUN)
                        }
                        Else
                        {
                            Store (0x04, SFUN)
                        }

                        Store (Arg0, SSTE)
                        If (\NATK ())
                        {
                            Store (AF2D (Arg0), NSTE)
                            Store (NSTE, SSTE)
                        }

                        ISMI (0x94)
                        Notify (GFX0, 0x81)
                    }
                    Else
                    {
                        Store (One, CEVT)
                        Store (0x03, CSTS)
                        If (LNotEqual (OCAD, OPAD))
                        {
                            Store (OCAD, OPAD)
                            If (LEqual (OSFG, OSXP))
                            {
                                Notify (PCI0, Zero)
                            }
                            Else
                            {
                                Notify (GFX0, Zero)
                            }

                            Sleep (0x03E8)
                        }

                        Store (AF2D (Arg0), NSTE)
                        WNDD (NSTE)
                        Notify (GFX0, 0x80)
                    }

                    Return (Zero)
                }

                Method (GCDD, 0, NotSerialized)
                {
                    OGCD ()
                    Return (CSTE)
                }

                Method (GNDD, 0, NotSerialized)
                {
                    OGND ()
                    Return (NSTE)
                }

                Method (GCAD, 0, NotSerialized)
                {
                    OGCA ()
                    Return (OCAD)
                }

                Method (GVIF, 0, NotSerialized)
                {
                    Store (0x67, VBIF)
                    Store (Zero, SFUN)
                    ISMI (0x95)
                    Return (VBIF)
                }

                Method (GNAD, 0, NotSerialized)
                {
                    Increment (NXTD)
                    If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x03)))
                    {
                        Increment (NXTD)
                    }

                    If (And (DOSF, 0x03))
                    {
                        If (LEqual (NXTD, 0x05))
                        {
                            Increment (NXTD)
                        }

                        If (LEqual (NXTD, 0x06))
                        {
                            Increment (NXTD)
                        }
                    }

                    If (LEqual (NXTD, 0x07))
                    {
                        Increment (NXTD)
                    }

                    If (And (DOSF, 0x03))
                    {
                        If (LEqual (NXTD, 0x09))
                        {
                            Increment (NXTD)
                        }
                    }

                    If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x0A)))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (NXTD, 0x0B))
                    {
                        Increment (NXTD)
                    }

                    If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x0C)))
                    {
                        Increment (NXTD)
                    }

                    While (LAnd (LGreater (NXTD, 0x0C), LLess (NXTD, 0x10)))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (DOSF, One))
                    {
                        If (LEqual (NXTD, 0x11))
                        {
                            Increment (NXTD)
                        }

                        If (LEqual (NXTD, 0x12))
                        {
                            Increment (NXTD)
                        }
                    }

                    If (LEqual (NXTD, 0x13))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (DOSF, One))
                    {
                        While (LAnd (LGreaterEqual (NXTD, 0x14), LLess (NXTD, 0x20)))
                        {
                            Increment (NXTD)
                        }

                        If (LEqual (NXTD, 0x21))
                        {
                            Increment (NXTD)
                        }

                        If (LEqual (NXTD, 0x22))
                        {
                            Increment (NXTD)
                        }
                    }

                    If (LEqual (NXTD, 0x23))
                    {
                        Increment (NXTD)
                    }

                    If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x24)))
                    {
                        Increment (NXTD)
                    }

                    While (LAnd (LGreater (NXTD, 0x24), LLess (NXTD, 0x28)))
                    {
                        Increment (NXTD)
                    }

                    If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x28)))
                    {
                        Increment (NXTD)
                    }

                    While (LAnd (LGreater (NXTD, 0x28), LLess (NXTD, 0x30)))
                    {
                        Increment (NXTD)
                    }

                    If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x30)))
                    {
                        Increment (NXTD)
                    }

                    If (LGreater (NXTD, 0x30))
                    {
                        Store (One, NXTD)
                    }

                    Return (Zero)
                }

                Method (ADVD, 0, NotSerialized)
                {
                    If (And (DOSF, 0x03))
                    {
                        GCDD ()
                        GCAD ()
                        GVIF ()
                    }
                    Else
                    {
                        OGCA ()
                        OGCD ()
                    }

                    If (\NATK ())
                    {
                        If (UPDN)
                        {
                            Store (D2AF (CSTE), NXTD)
                            Store (Zero, UPDN)
                        }

                        Store (Zero, Local0)
                        Store (D2AF (OCAD), Local1)
                        Store (Zero, Local2)
                        If (And (VGAF, One))
                        {
                            And (VBIF, 0x08, Local2)
                        }

                        If (And (LEqual (Local2, 0x08), And (VGAF, One)))
                        {
                            And (NXTD, Local1, NXTD)
                            Store (NXTD, Local0)
                        }

                        While (LNotEqual (NXTD, Local0))
                        {
                            GNAD ()
                            And (NXTD, Local1, Local0)
                        }

                        Return (NXTD)
                    }

                    Return (GNDD ())
                }

                Method (GCDS, 0, NotSerialized)
                {
                    If (And (DOSF, 0x03))
                    {
                        GCDD ()
                        GCAD ()
                        GVIF ()
                    }
                    Else
                    {
                        OGCA ()
                        OGCD ()
                    }

                    Return (D2AF (CSTE))
                }

                Method (NATK, 0, NotSerialized)
                {
                    Return (One)
                }

                Name (BCMD, Zero)
                Method (UPBL, 0, NotSerialized)
                {
                    If (BRNC)
                    {
                        GCDD ()
                        Store (And (D2AF (CSTE), One), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }

                        Store (CBLV, Local0)
                        Store (Zero, BCMD)
                        Notify (LCDD, 0x86)
                        Store (0x0BB8, Local2)
                        And (Local0, 0x7FFFFFFF, Local1)
                        If (LGreaterEqual (Local1, DerefOf (Index (PCTG, One))))
                        {
                            Store (Zero, Local2)
                            Store (One, Local1)
                        }

                        While (LAnd (LNot (BCMD), Local2))
                        {
                            Store (CBLV, Local1)
                            If (LNot (And (Local1, 0x80000000)))
                            {
                                Store (Local0, Local1)
                            }

                            If (LEqual (Local0, Local1))
                            {
                                Sleep (0x0A)
                                Decrement (Local2)
                                Store (Zero, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                                Store (One, Local1)
                            }
                        }

                        If (LAnd (LNot (BCMD), Local1))
                        {
                            Store (GCBL (CBLV), Local3)
                            Subtract (0x0A, Local3, Local3)
                            Store (Local3, LBTN)
                        }
                    }
                    Else
                    {
                        If (LLess (LBTN, 0x0F))
                        {
                            Increment (LBTN)
                        }
                        Else
                        {
                            Store (0x0F, LBTN)
                        }

                        ^^LPCB.EC0.STBR ()
                    }

                    Return (Zero)
                }

                Method (DWBL, 0, NotSerialized)
                {
                    If (BRNC)
                    {
                        GCDD ()
                        Store (And (D2AF (CSTE), One), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }

                        Store (CBLV, Local0)
                        Store (Zero, BCMD)
                        Notify (LCDD, 0x87)
                        Store (0x0BB8, Local2)
                        And (Local0, 0x7FFFFFFF, Local1)
                        If (LLessEqual (Local1, DerefOf (Index (PCTG, 0x0A))))
                        {
                            Store (Zero, Local2)
                            Store (One, Local1)
                        }

                        While (LAnd (LNot (BCMD), Local2))
                        {
                            Store (CBLV, Local1)
                            If (LNot (And (Local1, 0x80000000)))
                            {
                                Store (Local0, Local1)
                            }

                            If (LEqual (Local0, Local1))
                            {
                                Sleep (0x0A)
                                Decrement (Local2)
                                Store (Zero, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                                Store (One, Local1)
                            }
                        }

                        If (LAnd (LNot (BCMD), Local1))
                        {
                            Store (GCBL (CBLV), Local3)
                            Subtract (0x0A, Local3, Local3)
                            Store (Local3, LBTN)
                        }
                    }
                    Else
                    {
                        If (LGreater (LBTN, Zero))
                        {
                            Decrement (LBTN)
                        }

                        If (LGreater (LBTN, 0x0F))
                        {
                            Store (0x0F, LBTN)
                        }

                        ^^LPCB.EC0.STBR ()
                    }

                    Return (Zero)
                }

                Method (GCBL, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    And (Arg0, 0x7FFFFFFF, Arg0)
                    While (LLess (Local0, 0x0A))
                    {
                        Store (DerefOf (Index (PCTG, Local0)), Local1)
                        Store (DerefOf (Index (PCTG, Add (Local0, One))), Local2)
                        If (LAnd (LLessEqual (Arg0, Local1), LGreater (Arg0, Local2)))
                        {
                            Break
                        }

                        Increment (Local0)
                    }

                    Return (Local0)
                }

                Device (^^MEM2)
                {
                    Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
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
                    Name (CRS2, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x20000000,         // Address Base
                            0x00200000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x40004000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (IGDS)
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LOr (LEqual (And (PNHM, 0x0FFF0FF0), 0x000206A0), LEqual (And (
                            PNHM, 0x0FFF0FFF), 0x000306A0)))
                        {
                            Return (CRS1)
                        }

                        Return (CRS2)
                    }
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0200, 0x10)
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
            Offset (0x359E)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            OperationRegion (XPRT, PCI_Config, 0xD0, 0x10)
            Field (XPRT, DWordAcc, NoLock, Preserve)
            {
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            Method (CUID, 1, Serialized)
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xA9, 0x12, 0x95, 0x7C, 0x05, 0x17, 0xB4, 0x4C,
                            /* 0008 */   0xAF, 0x7D, 0x50, 0x6A, 0x24, 0x23, 0xAB, 0x71
                        }))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                CreateDWordField (Arg2, 0x08, CDW3)
                If (LNotEqual (Arg1, One))
                {
                    Or (CDW1, 0x08, CDW1)
                }

                If (LEqual (XHCI, Zero))
                {
                    Or (CDW1, 0x02, CDW1)
                }

                If (LNot (And (CDW1, One)))
                {
                    If (And (CDW3, One))
                    {
                        ESEL ()
                    }
                    Else
                    {
                        XSEL ()
                    }
                }

                Return (Arg2)
            }

            Method (XSEL, 0, Serialized)
            {
                If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                {
                    Store (Zero, Local0)
                    And (PR3, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    And (Local0, PR3M, PR3)
                    Store (Zero, Local0)
                    And (PR2, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    And (Local0, PR2M, PR2)
                    Store (One, XUSB)
                }
            }

            Method (ESEL, 0, Serialized)
            {
                If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                {
                    And (PR3, 0xFFFFFFF0, PR3)
                    And (PR2, 0xFFFFFFF0, PR2)
                    Store (Zero, XUSB)
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

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HSP1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, One)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, Zero)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, Zero)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, One)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (HSP2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, 0x02)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, One)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, One)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x02)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (HSP3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, 0x04)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, 0x02)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, 0x02)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x04)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (HSP4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, 0x08)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, 0x03)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, 0x03)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x08)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, One)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, Zero)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, Zero)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, One)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, 0x02)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, One)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, One)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x02)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP3)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, 0x04)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, 0x02)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, 0x02)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x04)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP4)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, 0x08)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Store (DerefOf (Index (CNTB, 0x03)), Local0)
                        Store (Local0, Index (UPCP, Zero))
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Device Location
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Store (DerefOf (Index (VISB, 0x03)), Local0)
                        Store (DerefOf (Index (PLDP, 0x08)), Local1)
                        And (Local1, 0xFE, Local1)
                        Or (Local1, Local0, Local1)
                        Store (Local1, Index (PLDP, 0x08))
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x08)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }
    }

    OperationRegion (_SB.PCI0.LPCB.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.LPCB.LPCR, ByteAcc, NoLock, Preserve)
    {
        CADR,   3, 
            ,   1, 
        CBDR,   3, 
        Offset (0x01), 
        LTDR,   2, 
            ,   2, 
        FDDR,   1, 
        Offset (0x02), 
        CALE,   1, 
        CBLE,   1, 
        LTLE,   1, 
        FDLE,   1, 
        Offset (0x03), 
        GLLE,   1, 
        GHLE,   1, 
        KCLE,   1, 
        MCLE,   1, 
        C1LE,   1, 
        C2LE,   1, 
        Offset (0x04)
    }

    Method (UXDV, 1, Serialized)
    {
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (0xFF, Local0)
        While (One)
        {
            Store (Add (Arg0, Zero), _T_0)
            If (LEqual (_T_0, 0x03F8))
            {
                Store (Zero, Local0)
            }
            Else
            {
                If (LEqual (_T_0, 0x02F8))
                {
                    Store (One, Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x0220))
                    {
                        Store (0x02, Local0)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x0228))
                        {
                            Store (0x03, Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x0238))
                            {
                                Store (0x04, Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02E8))
                                {
                                    Store (0x05, Local0)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x0338))
                                    {
                                        Store (0x06, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x03E8))
                                        {
                                            Store (0x07, Local0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Break
        }

        Return (Local0)
    }

    Method (RRIO, 4, Serialized)
    {
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        While (One)
        {
            Store (Add (Arg0, Zero), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (Zero, CALE)
                Store (UXDV (Arg2), Local0)
                If (LNotEqual (Local0, 0xFF))
                {
                    Store (Local0, CADR)
                }

                If (Arg1)
                {
                    Store (One, CALE)
                }
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    Store (Zero, CBLE)
                    Store (UXDV (Arg2), Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Store (Local0, CBDR)
                    }

                    If (Arg1)
                    {
                        Store (One, CBLE)
                    }
                }
                Else
                {
                    If (LEqual (_T_0, 0x02))
                    {
                        Store (Zero, LTLE)
                        If (LEqual (Arg2, 0x0378))
                        {
                            Store (Zero, LTDR)
                        }

                        If (LEqual (Arg2, 0x0278))
                        {
                            Store (One, LTDR)
                        }

                        If (LEqual (Arg2, 0x03BC))
                        {
                            Store (0x02, LTDR)
                        }

                        If (Arg1)
                        {
                            Store (One, LTLE)
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x03))
                        {
                            Store (Zero, FDLE)
                            If (LEqual (Arg2, 0x03F0))
                            {
                                Store (Zero, FDDR)
                            }

                            If (LEqual (Arg2, 0x0370))
                            {
                                Store (One, FDDR)
                            }

                            If (Arg1)
                            {
                                Store (One, FDLE)
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x08))
                            {
                                If (LEqual (Arg2, 0x0200))
                                {
                                    If (Arg1)
                                    {
                                        Store (One, GLLE)
                                    }
                                    Else
                                    {
                                        Store (Zero, GLLE)
                                    }
                                }

                                If (LEqual (Arg2, 0x0208))
                                {
                                    If (Arg1)
                                    {
                                        Store (One, GHLE)
                                    }
                                    Else
                                    {
                                        Store (Zero, GHLE)
                                    }
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x09))
                                {
                                    If (LEqual (Arg2, 0x0200))
                                    {
                                        If (Arg1)
                                        {
                                            Store (One, GLLE)
                                        }
                                        Else
                                        {
                                            Store (Zero, GLLE)
                                        }
                                    }

                                    If (LEqual (Arg2, 0x0208))
                                    {
                                        If (Arg1)
                                        {
                                            Store (One, GHLE)
                                        }
                                        Else
                                        {
                                            Store (Zero, GHLE)
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x0A))
                                    {
                                        If (LOr (LEqual (Arg2, 0x60), LEqual (Arg2, 0x64)))
                                        {
                                            If (Arg1)
                                            {
                                                Store (One, KCLE)
                                            }
                                            Else
                                            {
                                                Store (Zero, KCLE)
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x0B))
                                        {
                                            If (LOr (LEqual (Arg2, 0x62), LEqual (Arg2, 0x66)))
                                            {
                                                If (Arg1)
                                                {
                                                    Store (One, MCLE)
                                                }
                                                Else
                                                {
                                                    Store (Zero, MCLE)
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x0C))
                                            {
                                                If (LEqual (Arg2, 0x2E))
                                                {
                                                    If (Arg1)
                                                    {
                                                        Store (One, C1LE)
                                                    }
                                                    Else
                                                    {
                                                        Store (Zero, C1LE)
                                                    }
                                                }

                                                If (LEqual (Arg2, 0x4E))
                                                {
                                                    If (Arg1)
                                                    {
                                                        Store (One, C2LE)
                                                    }
                                                    Else
                                                    {
                                                        Store (Zero, C2LE)
                                                    }
                                                }
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x0D))
                                                {
                                                    If (LEqual (Arg2, 0x2E))
                                                    {
                                                        If (Arg1)
                                                        {
                                                            Store (One, C1LE)
                                                        }
                                                        Else
                                                        {
                                                            Store (Zero, C1LE)
                                                        }
                                                    }

                                                    If (LEqual (Arg2, 0x4E))
                                                    {
                                                        If (Arg1)
                                                        {
                                                            Store (One, C2LE)
                                                        }
                                                        Else
                                                        {
                                                            Store (Zero, C2LE)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Break
        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB.PCI0)
    {
        Method (NPTS, 1, NotSerialized)
        {
        }

        Method (NWAK, 1, NotSerialized)
        {
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

    Mutex (MUTX, 0x00)
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
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

        Store (P80D, P80H)
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
        PTS (Arg0)
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        WAK (Arg0)
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

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
            {
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
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP06.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP06.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            Store (Arg0, Index (PRWP, Zero))
            Store (ShiftLeft (SS1, One), Local0)
            Or (Local0, ShiftLeft (SS2, 0x02), Local0)
            Or (Local0, ShiftLeft (SS3, 0x03), Local0)
            Or (Local0, ShiftLeft (SS4, 0x04), Local0)
            If (And (ShiftLeft (One, Arg1), Local0))
            {
                Store (Arg1, Index (PRWP, One))
            }
            Else
            {
                ShiftRight (Local0, One, Local0)
                FindSetLeftBit (Local0, Index (PRWP, One))
            }

            Return (PRWP)
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
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
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
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Device (_SB.PCI0.LPCB.TPM)
    {
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACCS,   8, 
            Offset (0x18), 
            TSTA,   8, 
            TBCA,   8, 
            Offset (0xF00), 
            TVID,   16, 
            TDID,   16
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (VIDT, 0x8086))
            {
                Return (Zero)
            }
            Else
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.LPCB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E,
                        /* 0008 */   0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                    }))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01
                        })
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            Return ("1.2")
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x02))
                            {
                                ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                                Store (0x12, TMF1)
                                Store (TMF1, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                Store (TMF2, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                If (LEqual (DAT, 0xF1))
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    Name (PPI1, Package (0x02)
                                    {
                                        Zero, 
                                        Zero
                                    })
                                    Store (0x11, DAT)
                                    Store (OFST, INQ)
                                    If (LEqual (DAT, 0xFF))
                                    {
                                        Return (One)
                                    }

                                    Store (DAT, Index (PPI1, One))
                                    Return (PPI1)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x04))
                                    {
                                        Return (TRST)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x05))
                                        {
                                            Name (PPI2, Package (0x03)
                                            {
                                                Zero, 
                                                Zero, 
                                                Zero
                                            })
                                            Store (0x21, DAT)
                                            Store (OFST, INQ)
                                            Store (DAT, Index (PPI2, One))
                                            If (LEqual (DAT, 0xFF))
                                            {
                                                Return (0x02)
                                            }

                                            Store (DAT, Index (PPI2, One))
                                            Store (0x31, DAT)
                                            Store (OFST, INQ)
                                            If (LEqual (DAT, 0xFF))
                                            {
                                                Return (0x02)
                                            }

                                            If (LEqual (DAT, 0xFFF0))
                                            {
                                                Store (0xFFFFFFF0, Index (PPI2, 0x02))
                                            }
                                            Else
                                            {
                                                If (LEqual (DAT, 0xFFF1))
                                                {
                                                    Store (0xFFFFFFF1, Index (PPI2, 0x02))
                                                }
                                                Else
                                                {
                                                    Store (DAT, Index (PPI2, 0x02))
                                                }
                                            }

                                            Return (PPI2)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x06))
                                            {
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x07))
                                                {
                                                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                                                    Store (0x12, TMF1)
                                                    Store (TMF1, DAT)
                                                    Store (OFST, INQ)
                                                    If (LEqual (DAT, 0xFF))
                                                    {
                                                        Return (0x02)
                                                    }

                                                    Store (TMF2, DAT)
                                                    Store (OFST, INQ)
                                                    If (LEqual (DAT, 0xFF))
                                                    {
                                                        Return (0x02)
                                                    }

                                                    If (LEqual (DAT, 0xF1))
                                                    {
                                                        Return (One)
                                                    }

                                                    Return (Zero)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x08))
                                                    {
                                                        ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                                                        Store (0x43, TMF1)
                                                        Store (TMF1, DAT)
                                                        Store (OFST, INQ)
                                                        Store (TMF2, DAT)
                                                        Store (OFST, INQ)
                                                        Return (DAT)
                                                    }
                                                    Else
                                                    {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Break
                }
            }
            Else
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46,
                            /* 0008 */   0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                        }))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_1)
                        If (LEqual (_T_1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03
                            })
                        }
                        Else
                        {
                            If (LEqual (_T_1, One))
                            {
                                Store (0x22, TMF1)
                                Store (TMF1, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                ToInteger (DerefOf (Index (Arg3, Zero)), TMF1)
                                Store (TMF1, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                Return (Zero)
                            }
                            Else
                            {
                            }
                        }

                        Break
                    }
                }
            }

            Return (Buffer (One)
            {
                 0x00
            })
        }
    }

    Scope (_SB.PCI0)
    {
        OperationRegion (ITPD, PCI_Config, 0xE8, 0x04)
        Field (ITPD, DWordAcc, NoLock, Preserve)
        {
                ,   15, 
            TPDI,   1
        }

        OperationRegion (TVID, SystemMemory, 0xFED40F00, 0x02)
        Field (TVID, WordAcc, NoLock, Preserve)
        {
            VIDT,   16
        }
    }

    Device (_SB.PCI0.ITPM)
    {
        Name (_HID, "INTC0102")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
        Field (TPMR, AnyAcc, NoLock, Preserve)
        {
            ACC0,   8
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LNotEqual (ACC0, 0xFF))
            {
                If (LEqual (VIDT, 0x8086))
                {
                    If (TPMF)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E,
                        /* 0008 */   0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                    }))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x7F
                        })
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            Return ("1.0")
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x02))
                            {
                                ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                                Store (0x12, TMF1)
                                Store (TMF1, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                Store (TMF2, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                Return (Zero)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    Name (PPI1, Package (0x02)
                                    {
                                        Zero, 
                                        Zero
                                    })
                                    Store (0x11, DAT)
                                    Store (OFST, INQ)
                                    If (LEqual (DAT, 0xFF))
                                    {
                                        Return (One)
                                    }

                                    Store (DAT, Index (PPI1, One))
                                    Return (PPI1)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x04))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x05))
                                        {
                                            Name (PPI2, Package (0x03)
                                            {
                                                Zero, 
                                                Zero, 
                                                Zero
                                            })
                                            Store (0x21, DAT)
                                            Store (OFST, INQ)
                                            Store (DAT, Index (PPI2, One))
                                            If (LEqual (DAT, 0xFF))
                                            {
                                                Return (0x02)
                                            }

                                            Store (DAT, Index (PPI2, One))
                                            Store (0x31, DAT)
                                            Store (OFST, INQ)
                                            If (LEqual (DAT, 0xFF))
                                            {
                                                Return (0x02)
                                            }

                                            If (LEqual (DAT, 0xFFF0))
                                            {
                                                Store (0xFFFFFFF0, Index (PPI2, 0x02))
                                            }
                                            Else
                                            {
                                                If (LEqual (DAT, 0xFFF1))
                                                {
                                                    Store (0xFFFFFFF1, Index (PPI2, 0x02))
                                                }
                                                Else
                                                {
                                                    Store (DAT, Index (PPI2, 0x02))
                                                }
                                            }

                                            Return (PPI2)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x06))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Break
                }
            }
            Else
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46,
                            /* 0008 */   0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                        }))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_1)
                        If (LEqual (_T_1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03
                            })
                        }
                        Else
                        {
                            If (LEqual (_T_1, One))
                            {
                                Store (0x22, TMF1)
                                Store (TMF1, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                ToInteger (DerefOf (Index (Arg3, Zero)), TMF1)
                                Store (TMF1, DAT)
                                Store (OFST, INQ)
                                If (LEqual (DAT, 0xFF))
                                {
                                    Return (0x02)
                                }

                                Return (Zero)
                            }
                            Else
                            {
                            }
                        }

                        Break
                    }
                }
            }

            Return (Buffer (One)
            {
                 0x00
            })
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
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
            Name (_GPE, 0x19)  // _GPE: General Purpose Events
            Mutex (MUEC, 0x00)
            Mutex (MU4T, 0x00)
            Name (ECFL, Ones)
            Method (ECAV, 0, NotSerialized)
            {
                If (LGreaterEqual (SLPT, 0x04))
                {
                    Return (Zero)
                }

                If (LEqual (NVLK, One))
                {
                    Return (Zero)
                }

                If (LEqual (ECFL, Ones))
                {
                    If (LGreaterEqual (_REV, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (ECFL)
            }

            OperationRegion (PECO, SystemIO, 0x0260, 0x08)
            Field (PECO, ByteAcc, Lock, Preserve)
            {
                HSTS,   8, 
                HCTL,   8, 
                HCMD,   8, 
                HTAR,   8, 
                HWLR,   8, 
                HRLR,   8, 
                HWDR,   8, 
                HRDR,   8
            }

            Method (PECI, 7, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (LEqual (And (PBSY, 0x02), 0x02))
                {
                    If (LGreater (Arg6, 0x1000))
                    {
                        Return (Zero)
                    }

                    Add (Arg6, One, Arg6)
                    Sleep (0x0A)
                }

                And (PBSY, 0xFD, PBSY)
                Store (Arg0, HTAR)
                Store (Arg1, HWLR)
                Store (Arg2, HRLR)
                Store (Arg3, HCMD)
                Name (TEMP, Zero)
                Store (Zero, TEMP)
                If (LNotEqual (Arg1, Zero))
                {
                    While (One)
                    {
                        Store (ToInteger (HCMD), _T_0)
                        If (LEqual (_T_0, 0xF7))
                        {
                            Store (Zero, TEMP)
                            Break
                        }
                        Else
                        {
                            If (LEqual (_T_0, One))
                            {
                                Store (Zero, TEMP)
                                Break
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02))
                                {
                                    Store (Zero, TEMP)
                                    Break
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0xA1))
                                    {
                                        Store (Subtract (Arg1, One), TEMP)
                                        Break
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0xA2))
                                        {
                                            Store (Subtract (Arg1, One), TEMP)
                                            Break
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0xB1))
                                            {
                                                Store (Subtract (Arg1, One), TEMP)
                                                Break
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0xB2))
                                                {
                                                    Store (Subtract (Arg1, One), TEMP)
                                                    Break
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x61))
                                                    {
                                                        Store (Subtract (Arg1, One), TEMP)
                                                        Break
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x62))
                                                        {
                                                            Store (Subtract (Arg1, One), TEMP)
                                                            Break
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0xE1))
                                                            {
                                                                Store (Subtract (Arg1, One), TEMP)
                                                                Break
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0xE2))
                                                                {
                                                                    Store (Subtract (Arg1, One), TEMP)
                                                                    Break
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0xA5))
                                                                    {
                                                                        Or (HCTL, 0x40, HCTL)
                                                                        Store (Subtract (Arg1, 0x02), TEMP)
                                                                        Break
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0xA6))
                                                                        {
                                                                            Or (HCTL, 0x40, HCTL)
                                                                            Store (Subtract (Arg1, 0x02), TEMP)
                                                                            Break
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0xB5))
                                                                            {
                                                                                Or (HCTL, 0x40, HCTL)
                                                                                Store (Subtract (Arg1, 0x02), TEMP)
                                                                                Break
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0xB6))
                                                                                {
                                                                                    Or (HCTL, 0x40, HCTL)
                                                                                    Store (Subtract (Arg1, 0x02), TEMP)
                                                                                    Break
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0x65))
                                                                                    {
                                                                                        Or (HCTL, 0x40, HCTL)
                                                                                        Store (Subtract (Arg1, 0x02), TEMP)
                                                                                        Break
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_0, 0x66))
                                                                                        {
                                                                                            Or (HCTL, 0x40, HCTL)
                                                                                            Store (Subtract (Arg1, 0x02), TEMP)
                                                                                            Break
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If (LEqual (_T_0, 0xE5))
                                                                                            {
                                                                                                Or (HCTL, 0x40, HCTL)
                                                                                                Store (Subtract (Arg1, 0x02), TEMP)
                                                                                                Break
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If (LEqual (_T_0, 0xE6))
                                                                                                {
                                                                                                    Or (HCTL, 0x40, HCTL)
                                                                                                    Store (Subtract (Arg1, 0x02), TEMP)
                                                                                                    Break
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    And (PBSY, 0xFE, PBSY)
                                                                                                    Return (Zero)
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }
                }

                If (LGreater (TEMP, Zero))
                {
                    Store (Zero, Local0)
                    While (LLess (Local0, TEMP))
                    {
                        Store (DerefOf (Index (Arg4, Local0)), HWDR)
                        Add (Local0, One, Local0)
                    }
                }

                Or (HCTL, One, HCTL)
                Name (TIME, 0x5000)
                Store (Zero, Local0)
                While (LLess (Local0, TIME))
                {
                    If (And (HSTS, 0x80))
                    {
                        Store (0x80, HSTS)
                        And (PBSY, 0xFE, PBSY)
                        Return (Zero)
                    }

                    If (And (HSTS, 0x40))
                    {
                        Store (0x40, HSTS)
                        And (PBSY, 0xFE, PBSY)
                        Return (Zero)
                    }

                    If (And (HSTS, 0x20))
                    {
                        Store (0x20, HSTS)
                        And (PBSY, 0xFE, PBSY)
                        Return (Zero)
                    }

                    If (And (HSTS, 0x08))
                    {
                        Store (0x08, HSTS)
                        And (PBSY, 0xFE, PBSY)
                        Return (Zero)
                    }

                    If (And (HSTS, 0x04))
                    {
                        Store (0x04, HSTS)
                        And (PBSY, 0xFE, PBSY)
                        Return (Zero)
                    }

                    If (And (HSTS, 0x02))
                    {
                        Store (0x02, HSTS)
                        Break
                    }
                }

                If (LEqual (Local0, TIME))
                {
                    And (PBSY, 0xFE, PBSY)
                    Return (Zero)
                }
                Else
                {
                    Store (Zero, Local0)
                    While (LLess (Local0, HRLR))
                    {
                        Store (HRDR, Local1)
                        Store (Local1, Index (Arg5, Local0))
                        Add (Local0, One, Local0)
                    }

                    And (PBSY, 0xFE, PBSY)
                    Return (One)
                }

                And (PBSY, 0xFE, PBSY)
            }

            OperationRegion (ECOR, EmbeddedControl, Zero, 0xFF)
            Field (ECOR, ByteAcc, Lock, Preserve)
            {
                Offset (0x04), 
                CMD1,   8, 
                CDT1,   8, 
                CDT2,   8, 
                CDT3,   8, 
                Offset (0x80), 
                Offset (0x81), 
                Offset (0x82), 
                Offset (0x83), 
                EB0R,   8, 
                EB1R,   8, 
                EPWF,   8, 
                Offset (0x87), 
                Offset (0x88), 
                Offset (0x89), 
                Offset (0x8A), 
                HKEN,   1, 
                Offset (0x93), 
                TAH0,   16, 
                TAH1,   16, 
                TSTP,   8, 
                Offset (0x9C), 
                CDT4,   8, 
                CDT5,   8, 
                Offset (0xA0), 
                Offset (0xA1), 
                Offset (0xA2), 
                Offset (0xA3), 
                EACT,   8, 
                TH1R,   8, 
                TH1L,   8, 
                TH0R,   8, 
                TH0L,   8, 
                Offset (0xB0), 
                B0PN,   16, 
                Offset (0xB4), 
                Offset (0xB6), 
                Offset (0xB8), 
                Offset (0xBA), 
                Offset (0xBC), 
                Offset (0xBE), 
                B0TM,   16, 
                B0C1,   16, 
                B0C2,   16, 
                B0C3,   16, 
                B0C4,   16, 
                Offset (0xD0), 
                B1PN,   16, 
                Offset (0xD4), 
                Offset (0xD6), 
                Offset (0xD8), 
                Offset (0xDA), 
                Offset (0xDC), 
                Offset (0xDE), 
                B1TM,   16, 
                B1C1,   16, 
                B1C2,   16, 
                B1C3,   16, 
                B1C4,   16, 
                Offset (0xF0), 
                Offset (0xF2), 
                Offset (0xF4), 
                B0SN,   16, 
                Offset (0xF8), 
                Offset (0xFA), 
                Offset (0xFC), 
                B1SN,   16
            }

            Name (SMBF, Zero)
            OperationRegion (SMBX, EmbeddedControl, 0x18, 0x28)
            Field (SMBX, ByteAcc, NoLock, Preserve)
            {
                PRTC,   8, 
                SSTS,   5, 
                    ,   1, 
                ALFG,   1, 
                CDFG,   1, 
                ADDR,   8, 
                CMDB,   8, 
                BDAT,   256, 
                BCNT,   8, 
                    ,   1, 
                ALAD,   7, 
                ALD0,   8, 
                ALD1,   8
            }

            OperationRegion (SMB2, EmbeddedControl, 0x40, 0x28)
            Field (SMB2, ByteAcc, NoLock, Preserve)
            {
                PRT2,   8, 
                SST2,   5, 
                    ,   1, 
                ALF2,   1, 
                CDF2,   1, 
                ADD2,   8, 
                CMD2,   8, 
                BDA2,   256, 
                BCN2,   8, 
                    ,   1, 
                ALA2,   7, 
                ALR0,   8, 
                ALR1,   8
            }

            Field (SMB2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                DA20,   8, 
                DA21,   8
            }

            Field (SMBX, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                DAT0,   8, 
                DAT1,   8
            }

            Field (SMBX, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                DT2B,   16
            }

            OperationRegion (NSBS, EmbeddedControl, 0x40, 0x04)
            Field (NSBS, ByteAcc, NoLock, Preserve)
            {
                A2AD,   8, 
                A2D0,   8, 
                A2D1,   8, 
                A3AD,   8
            }

            OperationRegion (BRAM, SystemIO, 0x025A, 0x02)
            Field (BRAM, ByteAcc, Lock, Preserve)
            {
                BRAI,   8, 
                BRAD,   8
            }

            IndexField (BRAI, BRAD, ByteAcc, NoLock, Preserve)
            {
                Offset (0x8F), 
                PBSY,   8, 
                EPWS,   8, 
                EB0S,   8, 
                EB1S,   8, 
                EB0T,   8, 
                EB1T,   8, 
                Offset (0x98), 
                ECPU,   8, 
                ECRT,   8, 
                EPSV,   8, 
                Offset (0xA0), 
                B0VL,   16, 
                B0RC,   16, 
                B0FC,   16, 
                B0MD,   16, 
                B0ST,   16, 
                B0CC,   16, 
                B0DC,   16, 
                B0DV,   16, 
                B1VL,   16, 
                B1RC,   16, 
                B1FC,   16, 
                B1MD,   16, 
                B1ST,   16, 
                B1CC,   16, 
                B1DC,   16, 
                B1DV,   16
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LLessEqual (MSOS (), OSME))
                {
                    Store (One, ECFL)
                }
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, ECFL)
                }
            }
        }
    }

    Scope (\)
    {
        Method (DIAG, 1, NotSerialized)
        {
            P8XH (Zero, Arg0)
        }

        OperationRegion (GPSC, SystemIO, 0xB2, 0x02)
        Field (GPSC, ByteAcc, NoLock, Preserve)
        {
            SMCM,   8, 
            SMST,   8
        }

        Method (ISMI, 1, Serialized)
        {
            Store (Arg0, SMCM)
        }

        Method (ASMI, 1, Serialized)
        {
            Store (Arg0, \_SB.ALPR)
            Store (0xA3, SMCM)
            Return (\_SB.ALPR)
        }

        Scope (_SB)
        {
            OperationRegion (ECMS, SystemIO, 0x72, 0x02)
            Field (ECMS, ByteAcc, Lock, Preserve)
            {
                EIND,   8, 
                EDAT,   8
            }

            IndexField (EIND, EDAT, ByteAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                IKFG,   8, 
                Offset (0x43), 
                RAMB,   32, 
                AVOL,   8, 
                LBTN,   8, 
                ERRF,   8, 
                OCLK,   8, 
                WIDE,   1, 
                OVCK,   2, 
                SLPN,   3, 
                ACRD,   1, 
                VGAS,   1, 
                CPUR,   6, 
                CPUF,   2, 
                LBT2,   8, 
                PCMS,   8, 
                ALSL,   8, 
                ALAE,   1, 
                ALDE,   1, 
                ALSP,   1, 
                Offset (0x51), 
                WLDP,   1, 
                BTDP,   1, 
                WRST,   1, 
                BRST,   1, 
                WRPS,   1, 
                BRPS,   1, 
                Offset (0x52), 
                SYNA,   1, 
                ALPS,   1, 
                ELAN,   1, 
                STLC,   1, 
                Offset (0x53), 
                IKF2,   8, 
                UHDB,   8, 
                OSPM,   8, 
                TCGF,   8, 
                PPIS,   8, 
                PPIR,   8, 
                SIDE,   1, 
                PWBS,   1, 
                WFFG,   1, 
                OCST,   3, 
                SMTT,   1, 
                Offset (0x5A), 
                SP80,   1, 
                Offset (0x5B), 
                SWD2,   1, 
                F9KP,   1, 
                HACF,   6, 
                UWDP,   1, 
                WMDP,   1, 
                GPDP,   1, 
                TGDP,   1, 
                UWST,   1, 
                WMST,   1, 
                GPST,   1, 
                TGST,   1, 
                UWPS,   1, 
                WMPS,   1, 
                GPPS,   1, 
                TGPS,   1, 
                Offset (0x5E), 
                SPDC,   8, 
                DROK,   1, 
                SPDG,   1, 
                Offset (0x60), 
                KBLV,   8, 
                FVGA,   1, 
                P4HN,   1, 
                USSC,   1, 
                MFTM,   1, 
                APBM,   4, 
                EGCP,   8, 
                EGC2,   2, 
                Offset (0x64), 
                VHDA,   1, 
                DP3S,   1, 
                LTCL,   2, 
                LOLK,   2, 
                U3WA,   2, 
                GSDT,   1, 
                Offset (0x66), 
                PA3D,   1, 
                Offset (0x67), 
                S4TF,   1, 
                BECF,   1, 
                Offset (0x68), 
                LLBA,   32
            }

            OperationRegion (RAMW, SystemMemory, RAMB, 0x0100)
            Field (RAMW, AnyAcc, NoLock, Preserve)
            {
                TRTY,   8, 
                FSFN,   8, 
                FSTA,   16, 
                FADR,   32, 
                FSIZ,   16, 
                ACTD,   8, 
                AVLD,   8, 
                SETD,   8, 
                ACPF,   8, 
                DCPF,   8, 
                DCP2,   8, 
                DCTP,   8, 
                CTPY,   8, 
                OPAD,   16, 
                OCAD,   16, 
                CSTE,   16, 
                NSTE,   16, 
                SSTE,   16, 
                SFUN,   8, 
                TPSV,   8, 
                TAC0,   8, 
                TCRT,   8, 
                TDO1,   8, 
                TDO2,   8, 
                PPSV,   8, 
                PAC0,   8, 
                T0HL,   8, 
                T0LL,   8, 
                T0F1,   8, 
                T0F2,   8, 
                T1HL,   8, 
                T1LL,   8, 
                T1F1,   8, 
                T1F2,   8, 
                T2HL,   8, 
                T2LL,   8, 
                T2F1,   8, 
                T2F2,   8, 
                T3HL,   8, 
                T3LL,   8, 
                T3F1,   8, 
                T3F2,   8, 
                T4HL,   8, 
                T4LL,   8, 
                T4F1,   8, 
                T4F2,   8, 
                T5HL,   8, 
                T5LL,   8, 
                T5F1,   8, 
                T5F2,   8, 
                T6HL,   8, 
                T6LL,   8, 
                T6F1,   8, 
                T6F2,   8, 
                T7HL,   8, 
                T7LL,   8, 
                T7F1,   8, 
                T7F2,   8, 
                SLPT,   8, 
                AIBF,   8, 
                IDES,   8, 
                VGAF,   16, 
                C4CP,   8, 
                LUXS,   8, 
                LUXL,   8, 
                LUXH,   8, 
                LUXF,   8, 
                MNAM,   64, 
                LCDV,   32, 
                LCDR,   8, 
                PTIM,   8, 
                PTMP,   8, 
                SMIF,   8, 
                DTSE,   8, 
                DTS1,   8, 
                DTS2,   8, 
                MPEN,   8, 
                QFAN,   8, 
                VBIF,   16, 
                BIPA,   32, 
                RTCW,   16, 
                CPUN,   8, 
                ALPR,   32, 
                CIST,   8, 
                GNBF,   32, 
                CPUP,   16, 
                SLMT,   16, 
                LDES,   8, 
                HDDF,   8, 
                GCDF,   16, 
                SMBB,   32, 
                FEBL,   32, 
                TMPB,   8, 
                DSYN,   8, 
                LDFT,   8, 
                TBOT,   16, 
                RTC1,   8, 
                RTC2,   8, 
                RTC3,   8, 
                BRTI,   8, 
                SGEN,   8, 
                RBUF,   32, 
                RVBS,   32, 
                EXTS,   8, 
                USBT,   8, 
                SCMA,   32, 
                CTBO,   8, 
                DOSF,   8, 
                PTAB,   32, 
                CPCH,   32, 
                HTPT,   32, 
                CPUH,   8, 
                XHCB,   32, 
                USBC,   8, 
                VBOF,   16, 
                RSKY,   8, 
                WOLO,   8, 
                INSK,   8, 
                FPBA,   32, 
                FPTR,   32, 
                NVLK,   8, 
                NVLP,   64, 
                ACPI,   8, 
                NRS3,   16, 
                DPS3,   16, 
                S4FG,   8, 
                MODE,   8, 
                S4TM,   32
            }
        }

        OperationRegion (DBGM, SystemMemory, 0x000D0000, 0x04)
        Field (DBGM, DWordAcc, NoLock, Preserve)
        {
            DBGG,   32
        }

        Name (OSFG, Zero)
        Name (OS9X, One)
        Name (OS98, 0x02)
        Name (OSME, 0x04)
        Name (OS2K, 0x08)
        Name (OSXP, 0x10)
        Name (OSEG, 0x20)
        Name (OSVT, 0x40)
        Name (OSW7, 0x80)
        Method (MCTH, 2, NotSerialized)
        {
            If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Add (SizeOf (Arg0), One, Local0)
            Name (BUF0, Buffer (Local0) {})
            Name (BUF1, Buffer (Local0) {})
            Store (Arg0, BUF0)
            Store (Arg1, BUF1)
            While (Local0)
            {
                Decrement (Local0)
                If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (
                    BUF1, Local0))))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (MSOS, 0, NotSerialized)
        {
            If (LNotEqual (OSFG, Zero))
            {
                Return (OSFG)
            }

            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    Store (OSXP, OSFG)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (OSXP, OSFG)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (OSXP, OSFG)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (OSVT, OSFG)
                }

                If (_OSI ("Linux"))
                {
                    Store (OSEG, OSFG)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (OSW7, OSFG)
                }

                If (_OSI ("Windows 2009 SP1"))
                {
                    Store (OSW7, OSFG)
                }

                Return (OSFG)
            }
            Else
            {
                If (MCTH (_OS, "Microsoft Windows"))
                {
                    Store (OS98, OSFG)
                }
                Else
                {
                    If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
                    {
                        Store (OSME, OSFG)
                    }
                    Else
                    {
                        If (MCTH (_OS, "Microsoft Windows NT"))
                        {
                            Store (OS2K, OSFG)
                        }
                        Else
                        {
                            Store (OSXP, OSFG)
                        }
                    }
                }
            }

            Return (OSFG)
        }

        Name (ONAM, "ASUSTeK")
        Method (ADVG, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.ADVD ())
            }

            Return (0x03)
        }

        Method (GCDM, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.GCDS ())
            }

            Return (One)
        }

        Method (SWHG, 1, Serialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                \_SB.PCI0.GFX0.SWHD (Arg0)
                Return (One)
            }

            Return (Zero)
        }

        Method (NATK, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.NATK ())
            }

            Return (One)
        }
    }

    Scope (_SB)
    {
        Name (ATKP, Zero)
        Name (AITM, Zero)
        Name (PLMD, Zero)
        Name (MUTX, One)
        Name (LEDS, Zero)
        Name (PWKY, Zero)
        Device (ATKD)
        {
            Name (_HID, "pnp0c14")  // _HID: Hardware ID
            Name (_UID, "ATK")  // _UID: Unique ID
            Name (ATKQ, Package (0x10)
            {
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (AQHI, Zero)
            Name (AQTI, 0x0F)
            Name (AQNO, Zero)
            Method (IANQ, 1, Serialized)
            {
                If (LGreaterEqual (AQNO, 0x10))
                {
                    Store (0x64, Local0)
                    While (LAnd (Local0, LGreaterEqual (AQNO, 0x10)))
                    {
                        Decrement (Local0)
                        Sleep (0x0A)
                    }

                    If (LAnd (LNot (Local0), LGreaterEqual (AQNO, 0x10)))
                    {
                        Return (Zero)
                    }
                }

                Increment (AQTI)
                And (AQTI, 0x0F, AQTI)
                Store (Arg0, Index (ATKQ, AQTI))
                Increment (AQNO)
                Return (One)
            }

            Method (GANQ, 0, Serialized)
            {
                If (AQNO)
                {
                    Decrement (AQNO)
                    Store (DerefOf (Index (ATKQ, AQHI)), Local0)
                    Increment (AQHI)
                    And (AQHI, 0x0F, AQHI)
                    Return (Local0)
                }

                Return (Ones)
            }

            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */   0xD0, 0x5E, 0x84, 0x97, 0x6D, 0x4E, 0xDE, 0x11,
                /* 0008 */   0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66,
                /* 0010 */   0x4E, 0x42, 0x01, 0x02, 0x35, 0xBB, 0x3C, 0x0B,
                /* 0018 */   0xC2, 0xE3, 0xED, 0x45, 0x91, 0xC2, 0x4C, 0x5A,
                /* 0020 */   0x6D, 0x19, 0x5D, 0x1C, 0xFF, 0x00, 0x01, 0x08
            })
            Method (WMNB, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, IIA0)
                CreateDWordField (Arg2, 0x04, IIA1)
                And (Arg1, 0xFFFFFFFF, Local0)
                If (LEqual (Local0, 0x54494E49))
                {
                    INIT (IIA0)
                    Return (One)
                }

                If (LEqual (Local0, 0x53545342))
                {
                    Return (BSTS ())
                }

                If (LEqual (Local0, 0x4E554653))
                {
                    Return (SFUN ())
                }

                If (LEqual (Local0, 0x43455053))
                {
                    Return (SPEC (IIA0))
                }

                If (LEqual (Local0, 0x494E424B))
                {
                    Return (KBNI ())
                }

                If (LEqual (Local0, 0x5256534F))
                {
                    OSVR (IIA0)
                    Return (Zero)
                }

                If (LEqual (Local0, 0x53545344))
                {
                    If (LEqual (IIA0, 0x00020017))
                    {
                        Return (Zero)
                    }

                    If (LEqual (IIA0, 0x00060023))
                    {
                        Name (LASV, Zero)
                        If (LEqual (NVLK, One))
                        {
                            Return (LASV)
                        }

                        Store (Zero, Local0)
                        Store (0xFFFF, FSTA)
                        Store (0x55534243, FADR)
                        FSMI (0x05)
                        If (LEqual (FSTA, 0x02))
                        {
                            Store (USBC, Local0)
                        }

                        If (Ones)
                        {
                            Or (0x04, Local0, Local0)
                        }

                        Store (Local0, LASV)
                        Return (Local0)
                    }

                    If (LEqual (IIA0, 0x00060024))
                    {
                        Return (Package (0x03)
                        {
                            0x1E318086, 
                            One, 
                            0xFFFFFFFF
                        })
                    }

                    If (LEqual (IIA0, 0x00010002))
                    {
                        Return (0x00050002)
                    }

                    If (LEqual (IIA0, 0x00020011))
                    {
                        Return (Or (GALE (One), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00020012))
                    {
                        Return (Or (GALE (0x02), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00020013))
                    {
                        Return (Or (GALE (0x04), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00040015))
                    {
                        Return (Or (GALE (0x08), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00020014))
                    {
                        Return (Or (GALE (0x10), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00020015))
                    {
                        Return (Or (GALE (0x20), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00020016))
                    {
                        Return (Or (GALE (0x40), 0x00050000))
                    }

                    If (LEqual (IIA0, 0x00110011))
                    {
                        Return (And (TMPR (), 0xFFFF))
                    }

                    If (LEqual (IIA0, 0x00110012))
                    {
                        Store (TMPR (), Local0)
                        Store (Local0, Local1)
                        ShiftRight (And (Local0, 0xF0000000), 0x1C, Local0)
                        ShiftRight (And (Local1, 0x0F000000), 0x18, Local1)
                        ShiftLeft (Local1, 0x08, Local1)
                        Return (Add (Local0, Local1))
                    }

                    If (LEqual (IIA0, 0x00050012))
                    {
                        Store (0x0A, Local0)
                        ShiftLeft (Local0, 0x08, Local0)
                        Store (Add (GPLV (), Local0), Local1)
                        Return (Local1)
                    }

                    If (LEqual (IIA0, 0x00050001))
                    {
                        If (LNot (ALSP))
                        {
                            Return (0x02)
                        }

                        And (GALS (), 0x10, Local0)
                        If (Local0)
                        {
                            Return (0x00050001)
                        }
                        Else
                        {
                            Return (0x00050000)
                        }
                    }

                    If (LEqual (IIA0, 0x00050013))
                    {
                        And (GALS (), 0x0F0F, Local0)
                        Return (Local0)
                    }

                    If (LEqual (IIA0, 0x00010011))
                    {
                        If (WLDP)
                        {
                            Return (Add (WRST, 0x00030000))
                        }
                    }

                    If (LEqual (IIA0, 0x00010013))
                    {
                        If (BTDP)
                        {
                            Return (Add (BRST, 0x00050000))
                        }
                    }

                    If (LEqual (IIA0, 0x00010021))
                    {
                        If (UWDP)
                        {
                            Return (Add (UWST, 0x00050000))
                        }
                    }

                    If (LEqual (IIA0, 0x00010017))
                    {
                        If (WMDP)
                        {
                            Return (Add (WMST, 0x00050000))
                        }
                    }

                    If (LEqual (IIA0, 0x00010015))
                    {
                        If (GPDP)
                        {
                            Return (Add (GPST, 0x00050000))
                        }
                    }

                    If (LEqual (IIA0, 0x00010019))
                    {
                        If (TGDP)
                        {
                            Return (Add (TGST, 0x00050000))
                        }
                    }

                    If (LEqual (IIA0, 0x00010001))
                    {
                        Return (0x00040000)
                    }

                    If (LEqual (IIA0, 0x00120012))
                    {
                        Return (PSTC (Zero))
                    }

                    If (LEqual (IIA0, 0x00120014))
                    {
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00050021))
                    {
                        If (GLKB (One))
                        {
                            Store (GLKB (0x03), Local0)
                            ShiftLeft (Local0, 0x08, Local0)
                            Add (GLKB (0x02), Local0, Local0)
                            Or (Local0, 0x00050000, Local0)
                            Return (Local0)
                        }

                        Return (0x8000)
                    }

                    If (LEqual (IIA0, 0x00120031))
                    {
                        If (DP3S)
                        {
                            Return (0x00010001)
                        }
                        Else
                        {
                            Return (0x00010000)
                        }
                    }

                    If (LEqual (IIA0, 0x00120032))
                    {
                        Return (Zero)
                    }

                    If (LEqual (IIA0, 0x00120037))
                    {
                        Return (0x00010000)
                    }

                    If (LEqual (IIA0, 0x00120038))
                    {
                        Return (0x00010000)
                    }

                    If (LEqual (IIA0, 0x00120041))
                    {
                        Store (^^PCI0.LPCB.EC0.ST8E (0x16, Zero), Local0)
                        Store (^^PCI0.LPCB.EC0.ST8E (0x17, Zero), Local1)
                        ShiftLeft (Local1, 0x08, Local1)
                        If (LEqual (And (Local1, 0x8000), 0x8000))
                        {
                            Return (Add (Local1, Local0))
                        }
                        Else
                        {
                            Subtract (0x00010000, 0x22, Local2)
                            And (Local2, 0xFFFF, Local2)
                            Return (Local2)
                        }
                    }

                    If (LEqual (IIA0, 0x00120042))
                    {
                        Store (^^PCI0.LPCB.EC0.ST8E (0x18, Zero), Local0)
                        Store (^^PCI0.LPCB.EC0.ST8E (0x19, Zero), Local1)
                        ShiftLeft (Local1, 0x08, Local1)
                        If (LEqual (And (Local1, 0x8000), 0x8000))
                        {
                            Return (Add (Local1, Local0))
                        }
                        Else
                        {
                            Subtract (0x00010000, 0x13, Local2)
                            And (Local2, 0xFFFF, Local2)
                            Return (Local2)
                        }
                    }

                    If (LEqual (IIA0, 0x00120043))
                    {
                        Store (^^PCI0.LPCB.EC0.BIFW (0x13), Local0)
                        Return (Local0)
                    }

                    If (LEqual (IIA0, 0x00120044))
                    {
                        If (And (^^PCI0.LPCB.EC0.EPWS, 0x06))
                        {
                            And (^^PCI0.LPCB.EC0.EPWS, 0x06, Local0)
                            Store (Zero, Local1)
                            If (LEqual (Local0, 0x02))
                            {
                                Store (^^PCI0.LPCB.EC0.B0RC, Local1)
                            }
                            Else
                            {
                                If (LEqual (Local0, 0x04))
                                {
                                    Store (^^PCI0.LPCB.EC0.B1RC, Local1)
                                }
                                Else
                                {
                                    Store (Add (^^PCI0.LPCB.EC0.B0RC, ^^PCI0.LPCB.EC0.B1RC), Local1)
                                }
                            }

                            Return (Add (Local1, 0x00010000))
                        }

                        Return (0x0001FFFF)
                    }

                    If (LEqual (IIA0, 0x00120045))
                    {
                        If (And (^^PCI0.LPCB.EC0.EPWS, 0x02))
                        {
                            Store (^^PCI0.LPCB.EC0.ST8E (0x24, Zero), Local0)
                            Store (^^PCI0.LPCB.EC0.ST8E (0x25, Zero), Local1)
                            ShiftLeft (Local1, 0x08, Local1)
                            Store (Add (Local1, Local0), Local2)
                            If (LEqual (Local2, Zero))
                            {
                                Store (0x1E02, Local2)
                            }

                            Return (Add (Local2, 0x00010000))
                        }

                        Return (0x0001FFFF)
                    }

                    If (LEqual (IIA0, 0x00120046))
                    {
                        If (And (^^PCI0.LPCB.EC0.EPWS, 0x02))
                        {
                            Store (^^PCI0.LPCB.EC0.ST8E (0x26, Zero), Local0)
                            Store (^^PCI0.LPCB.EC0.ST8E (0x27, Zero), Local1)
                            ShiftLeft (Local1, 0x08, Local1)
                            Store (Add (Local1, Local0), Local2)
                            If (LEqual (Local2, Zero))
                            {
                                Store (0x1E2C, Local2)
                            }

                            Return (Add (Local2, 0x00010000))
                        }

                        Return (0x0001FFFF)
                    }

                    If (LEqual (IIA0, 0x00120047))
                    {
                        If (And (^^PCI0.LPCB.EC0.EPWS, 0x06))
                        {
                            Store (Zero, Local1)
                            If (LEqual (Local0, 0x02))
                            {
                                Store (^^PCI0.LPCB.EC0.B0DV, Local1)
                            }
                            Else
                            {
                                If (LEqual (Local0, 0x04))
                                {
                                    Store (^^PCI0.LPCB.EC0.B1DV, Local1)
                                }
                                Else
                                {
                                    Store (Add (^^PCI0.LPCB.EC0.B0DV, ^^PCI0.LPCB.EC0.B1DV), Local1)
                                }
                            }

                            Return (Add (Local1, 0x00010000))
                        }

                        Return (0x0001FFFF)
                    }

                    If (LEqual (IIA0, 0x00120049))
                    {
                        If (And (^^PCI0.LPCB.EC0.EPWS, 0x06))
                        {
                            Store (Zero, Local1)
                            If (LEqual (Local0, 0x02))
                            {
                                Store (^^PCI0.LPCB.EC0.B0FC, Local1)
                            }
                            Else
                            {
                                If (LEqual (Local0, 0x04))
                                {
                                    Store (^^PCI0.LPCB.EC0.B1FC, Local1)
                                }
                                Else
                                {
                                    Store (Add (^^PCI0.LPCB.EC0.B0FC, ^^PCI0.LPCB.EC0.B1FC), Local1)
                                }
                            }

                            Return (Add (Local1, 0x00010000))
                        }

                        Return (0x0001FFFF)
                    }

                    If (LEqual (IIA0, 0x00080041))
                    {
                        Return (0x00010000)
                    }

                    If (LEqual (IIA0, 0x00120048))
                    {
                        Store (0x0A, Local1)
                        Return (Add (Local1, 0x00010000))
                    }
                }

                If (LEqual (Local0, 0x53564544))
                {
                    If (LEqual (IIA0, 0x00020018))
                    {
                        If (LEqual (IIA1, One))
                        {
                            Or (EGC2, One, EGC2)
                            Return (One)
                        }

                        If (LEqual (IIA1, 0x02))
                        {
                            Or (EGC2, 0x02, EGC2)
                            Return (One)
                        }

                        Return (Zero)
                    }

                    If (LEqual (IIA0, 0x00060023))
                    {
                        If (LEqual (NVLK, One))
                        {
                            Return (Zero)
                        }

                        Store (Zero, Local0)
                        Store (0xFFFF, FSTA)
                        Store (0x55534243, FADR)
                        FSMI (0x05)
                        ShiftRight (IIA1, 0x09, Local0)
                        If (LEqual (And (Local0, One), One))
                        {
                            Store (One, VBOF)
                            ShiftRight (IIA1, 0x18, Local0)
                            Multiply (Local0, 0x0100, Local0)
                            Or (Local0, VBOF, VBOF)
                        }
                        Else
                        {
                            Store (Zero, VBOF)
                        }

                        And (IIA1, 0xFF, Local0)
                        ^^PCI0.LPCB.EC0.STA9 (One, Local0)
                        ShiftRight (IIA1, 0x08, Local0)
                        Store (^^PCI0.LPCB.EC0.STA8 (Zero), Local1)
                        If (LEqual (And (Local0, One), One))
                        {
                            Store (One, USBC)
                            Or (Local1, 0x02, Local1)
                            ^^PCI0.LPCB.EC0.STA9 (Zero, Local1)
                        }
                        Else
                        {
                            Store (Zero, USBC)
                            And (Local1, 0xFD, Local1)
                            ^^PCI0.LPCB.EC0.STA9 (Zero, Local1)
                        }

                        Store (0xFFFF, FSTA)
                        Store (0x55534243, FADR)
                        FSMI (0x04)
                        If (LEqual (FSTA, 0x02))
                        {
                            Store (0xFFFF, FSTA)
                            FSMI (0x06)
                            If (LNotEqual (FSTA, Zero))
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00020011))
                    {
                        Return (SALE (Add (IIA1, 0x02)))
                    }

                    If (LEqual (IIA0, 0x00020012))
                    {
                        Return (SALE (Add (IIA1, 0x04)))
                    }

                    If (LEqual (IIA0, 0x00020013))
                    {
                        Return (SALE (Add (IIA1, 0x08)))
                    }

                    If (LEqual (IIA0, 0x00040015))
                    {
                        Return (SALE (Add (IIA1, 0x10)))
                    }

                    If (LEqual (IIA0, 0x00020014))
                    {
                        Return (SALE (Add (IIA1, 0x20)))
                    }

                    If (LEqual (IIA0, 0x00020015))
                    {
                        Return (SALE (Add (IIA1, 0x40)))
                    }

                    If (LEqual (IIA0, 0x00020016))
                    {
                        Return (SALE (Add (IIA1, 0x80)))
                    }

                    If (LEqual (IIA0, 0x00020021))
                    {
                        Return (SPRK (IIA1))
                    }

                    If (LEqual (IIA0, 0x00050011))
                    {
                        If (LEqual (IIA1, 0x02))
                        {
                            ^^PCI0.LPCB.EC0.SPIN (0x72, One)
                            Store (One, ^^PCI0.LPCB.EC0.BLCT)
                        }

                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00050012))
                    {
                        SPLV (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00050001))
                    {
                        Return (ALSC (IIA1))
                    }

                    If (LEqual (IIA0, 0x00050013))
                    {
                        Return (ALSL (IIA1))
                    }

                    If (LEqual (IIA0, 0x00010002))
                    {
                        OWGD (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00010012))
                    {
                        WLED (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00010013))
                    {
                        BLED (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00010003))
                    {
                        Return (CWAP (IIA1))
                    }

                    If (LEqual (IIA0, 0x00010015))
                    {
                        GPSC (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00010019))
                    {
                        GSMC (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00010017))
                    {
                        WMXC (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00010021))
                    {
                        UWBC (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00120012))
                    {
                        Return (PSTC (Add (IIA1, One)))
                    }

                    If (LEqual (IIA0, 0x00050021))
                    {
                        SLKB (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00120031))
                    {
                        DESP (IIA1)
                        Return (One)
                    }

                    If (LEqual (IIA0, 0x00120037))
                    {
                        Store (S4FG, Local0)
                        If (LEqual (IIA1, One))
                        {
                            Store (One, MODE)
                            If (LEqual (Local0, Zero))
                            {
                                If (CondRefOf (\_SB.IFFS.FFSS))
                                {
                                    Store (0x03, ^^IFFS.FFSS)
                                }
                            }
                            Else
                            {
                                Return (0x00010000)
                            }
                        }
                        Else
                        {
                            Store (Zero, MODE)
                            If (LEqual (Local0, Zero))
                            {
                                If (CondRefOf (\_SB.IFFS.FFSS))
                                {
                                    Store (0x02, ^^IFFS.FFSS)
                                }
                            }
                            Else
                            {
                                Return (0x00010000)
                            }
                        }

                        Return (0x00010000)
                    }

                    If (LEqual (IIA0, 0x00120038))
                    {
                        Store (S4FG, Local0)
                        If (LEqual (Local0, Zero))
                        {
                            If (CondRefOf (\_SB.IFFS.SFTV))
                            {
                                ^^IFFS.SFTV (IIA1)
                            }
                        }

                        Store (IIA1, S4TM)
                        Return (0x00010000)
                    }
                }

                If (LEqual (Local0, 0x48534C46))
                {
                    FLSH (IIA0)
                    Return (One)
                }

                If (LEqual (Local0, 0x494E4946))
                {
                    Return (FINI (IIA0))
                }

                If (LEqual (Local0, 0x53524546))
                {
                    Return (FERS (IIA0))
                }

                If (LEqual (Local0, 0x49525746))
                {
                    Return (FWRI (IIA0))
                }

                If (LEqual (Local0, 0x57504346))
                {
                    Return (FCPW (IIA0))
                }

                If (LEqual (Local0, 0x50504346))
                {
                    Return (FCPP ())
                }

                If (LEqual (Local0, 0x50525746))
                {
                    Return (FWRP ())
                }

                If (LEqual (Local0, 0x52534345))
                {
                    Return (ECSR (IIA0))
                }

                If (LEqual (Local0, 0x43534C46))
                {
                    Return (FLSC (IIA0))
                }

                If (LEqual (Local0, 0x43455246))
                {
                    Return (FREC (IIA0))
                }

                If (LEqual (Local0, 0x454D4946))
                {
                    Return (FIME (IIA0))
                }

                If (LEqual (Local0, 0x4C425053))
                {
                    If (LEqual (IIA0, 0x80))
                    {
                        If (LGreaterEqual (MSOS (), OSVT))
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }

                    If (LGreater (IIA0, 0x0F))
                    {
                        Return (Zero)
                    }

                    If (LLess (IIA0, Zero))
                    {
                        Return (Zero)
                    }

                    SPLV (IIA0)
                    Return (One)
                }

                If (LEqual (Local0, 0x50534453))
                {
                    SDSP (IIA0)
                    Return (One)
                }

                If (LEqual (Local0, 0x50534447))
                {
                    Return (GDSP (IIA0))
                }

                If (LEqual (Local0, 0x44495047))
                {
                    Return (GPID ())
                }

                If (LEqual (Local0, 0x44434C47))
                {
                    Return (GLCD ())
                }

                If (LEqual (Local0, 0x444F4D51))
                {
                    Return (QMOD (IIA0))
                }

                If (LEqual (Local0, 0x49564E41))
                {
                    Return (ANVI (IIA0))
                }

                If (LEqual (Local0, 0x46494243))
                {
                    Return (CBIF (IIA0))
                }

                If (LEqual (Local0, 0x4E464741))
                {
                    Return (AGFN (IIA0))
                }

                If (LEqual (Local0, 0x46494643))
                {
                    CFIF (IIA0)
                    Return (One)
                }

                If (LEqual (Local0, 0x44495046))
                {
                    Return (0x0118)
                }

                If (LEqual (Local0, 0x59454B48))
                {
                    Store (^^PCI0.LPCB.EC0.CDT1, Local0)
                    Return (One)
                }

                If (LEqual (Local0, 0x5446424B))
                {
                    Store (IIA0, ^^PCI0.LPCB.EC0.HKEN)
                    Return (One)
                }

                Return (0xFFFFFFFE)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                If (LEqual (Arg0, 0xFF))
                {
                    Return (GANQ ())
                }

                Return (Ones)
            }

            Method (IANE, 1, Serialized)
            {
                IANQ (Arg0)
                Notify (ATKD, 0xFF)
            }

            Method (INIT, 1, NotSerialized)
            {
                Store (One, ATKP)
                Return (MNAM)
            }

            Method (BSTS, 0, NotSerialized)
            {
                Store (IKFG, Local0)
                Or (Local0, ShiftLeft (IKF2, 0x08), Local0)
                Store (^^PCI0.LPCB.EC0.RRAM (0x04FE), Local1)
                Store (Zero, Local2)
                If (LEqual (Local1, 0x35))
                {
                    Store (One, Local2)
                }
                Else
                {
                    If (LEqual (Local1, 0x37))
                    {
                        Store (One, Local2)
                    }
                }

                If (LEqual (Local2, One))
                {
                    If (LAnd (S4FG, S4TF))
                    {
                        If (LEqual (MODE, One))
                        {
                            Store (0x08, Local1)
                            Return (Local1)
                        }
                    }
                }

                If (ACPF)
                {
                    Store (Zero, Local0)
                    Return (Local0)
                }
                Else
                {
                    Store (^^PCI0.LPCB.EC0.RRAM (0x04FE), Local0)
                    If (LEqual (And (Local0, 0xFF), 0x34))
                    {
                        Store (0x05, Local0)
                        Return (Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                        Return (Local0)
                    }
                }

                And (Local0, 0xFFDF, Local0)
                Return (Local0)
            }

            Method (TMPR, 0, NotSerialized)
            {
                Store (\_TZ.RTMP (), Local0)
                Store (\_TZ.RFAN (Zero), Local1)
                ShiftLeft (Local1, 0x10, Local1)
                Add (\_TZ.KELV (Local0), Local1, Local0)
                Store (Zero, Local2)
                If (TENA)
                {
                    Store (TDTY, Local2)
                }
                Else
                {
                    Store (HKTH (), Local3)
                    If (LNotEqual (Local3, 0xFFFF))
                    {
                        Store (Local3, Local2)
                    }
                }

                ShiftLeft (Local2, 0x18, Local2)
                Add (Local0, Local2, Local0)
                Store (\_TZ.RFSE (), Local3)
                ShiftLeft (Local3, 0x1C, Local3)
                Add (Local0, Local3, Local0)
                Return (Local0)
            }

            Method (SFUN, 0, NotSerialized)
            {
                Store (0x37, Local0)
                Or (Local0, 0x40, Local0)
                Or (Local0, 0x0800, Local0)
                If (ALSP)
                {
                    Or (Local0, 0x2000, Local0)
                }

                Or (Local0, 0x00020000, Local0)
                Or (Local0, 0x00080000, Local0)
                Or (Local0, 0x00400000, Local0)
                Return (Local0)
            }

            Method (SPEC, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Return (0x00070009)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        Return (One)
                    }
                }

                Return (0xFFFFFFFE)
            }

            Method (OSVR, 1, NotSerialized)
            {
                Store (Arg0, OSFG)
            }

            Method (GPLV, 0, NotSerialized)
            {
                Return (LBTN)
            }

            Method (SPLV, 1, NotSerialized)
            {
                Store (Arg0, LBTN)
                ^^PCI0.LPCB.EC0.STBR ()
                Return (One)
            }

            Method (SPBL, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x0100))
                {
                    Subtract (0x0B, One, Local0)
                    Return (Local0)
                }

                If (LEqual (Arg0, 0x80))
                {
                    Return (One)
                }

                If (LGreater (Arg0, 0x0F))
                {
                    Return (Zero)
                }

                If (LLess (Arg0, Zero))
                {
                    Return (Zero)
                }

                SPLV (Arg0)
                Return (One)
            }

            Method (WLED, 1, NotSerialized)
            {
                OWLD (Arg0)
                Return (One)
            }

            Method (DESP, 1, NotSerialized)
            {
                ODSP (Arg0)
                Return (One)
            }

            Method (KBNI, 0, NotSerialized)
            {
                Return (One)
            }

            Method (GALE, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x04))
                {
                    If (LAnd (LEDS, 0x04))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x08))
                {
                    If (LAnd (LEDS, 0x08))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x10))
                {
                    If (LAnd (LEDS, 0x10))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (0x02)
            }

            Method (SALE, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x10)) {}
                If (LEqual (Arg0, 0x11)) {}
                Return (One)
            }

            Method (GPRK, 0, NotSerialized)
            {
                If (LEqual (PWKY, Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (SPRK, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (Zero, PWKY)
                    Return (One)
                }

                If (LEqual (Arg0, One))
                {
                    Store (One, PWKY)
                    Return (One)
                }

                Return (Zero)
            }

            Method (BLED, 1, NotSerialized)
            {
                OBTD (Arg0)
                Return (One)
            }

            Method (UWBC, 1, NotSerialized)
            {
                OUWD (Arg0)
                Return (One)
            }

            Method (WMXC, 1, NotSerialized)
            {
                OWMD (Arg0)
                Return (One)
            }

            Method (GPSC, 1, NotSerialized)
            {
                OGPD (Arg0)
                Return (One)
            }

            Method (GSMC, 1, NotSerialized)
            {
                OTGD (Arg0)
                Return (One)
            }

            Method (RSTS, 0, NotSerialized)
            {
                Return (ORST ())
            }

            Method (SDSP, 1, NotSerialized)
            {
                If (NATK ())
                {
                    Return (SWHG (Arg0))
                }

                Return (Zero)
            }

            Method (GPID, 0, NotSerialized)
            {
                Return (LCDR)
            }

            Method (ALSC, 1, NotSerialized)
            {
                If (Arg0)
                {
                    ^^PCI0.LPCB.EC0.TALS (One)
                    Store (^^PCI0.LPCB.EC0.RALS (), Local0)
                }
                Else
                {
                    ^^PCI0.LPCB.EC0.TALS (Zero)
                    Store (0x0190, Local0)
                }

                ^^PCI0.GFX0.AINT (Zero, Local0)
                Store (Arg0, ALAE)
                Return (One)
            }

            Method (ALSL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GALS, 0, NotSerialized)
            {
                And (LBTN, 0x0F, Local0)
                Or (Local0, 0x20, Local0)
                If (ALAE)
                {
                    Or (Local0, 0x10, Local0)
                }

                Subtract (0x0B, One, Local1)
                ShiftLeft (Local1, 0x08, Local1)
                Or (Local0, Local1, Local0)
                Return (Local0)
            }

            Method (HWRS, 0, NotSerialized)
            {
                Return (OHWR ())
            }

            Method (GLCD, 0, NotSerialized)
            {
                Return (LCDV)
            }

            Name (WAPF, Zero)
            Method (CWAP, 1, NotSerialized)
            {
                Or (Arg0, WAPF, WAPF)
                Return (One)
            }

            Method (QMOD, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Return (One)
                }

                If (LEqual (Arg0, One))
                {
                    ^^PCI0.LPCB.EC0.ST98 (QFAN)
                }

                If (LEqual (Arg0, 0x02))
                {
                    ^^PCI0.LPCB.EC0.ST98 (0xFF)
                }

                Return (One)
            }

            Method (ANVI, 1, Serialized)
            {
                Store (ASMI (Arg0), Local0)
                Return (Local0)
            }

            Method (PSTC, 1, Serialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (CPUP, Local0)
                    ShiftLeft (Local0, 0x08, Local0)
                    Add (CPUP, Local0, Local0)
                    Return (Local0)
                }

                If (LGreater (Arg0, CPUP))
                {
                    Return (Ones)
                }

                Store (Arg0, SLMT)
                OLPM ()
                If (CIST)
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                    Notify (\_PR.CPU2, 0x80)
                    Notify (\_PR.CPU3, 0x80)
                    Notify (\_PR.CPU4, 0x80)
                    Notify (\_PR.CPU5, 0x80)
                    Notify (\_PR.CPU6, 0x80)
                    Notify (\_PR.CPU7, 0x80)
                }

                Return (Zero)
            }

            Method (SMBB, 1, Serialized)
            {
                ShiftRight (Arg0, 0x10, Local0)
                And (Local0, 0xFF, Local0)
                ShiftRight (Arg0, 0x18, Local1)
                And (Arg0, 0xFF, Local2)
                If (And (Local1, One))
                {
                    Return (RBYT (Local1, Local0))
                }
                Else
                {
                    Return (WBYT (Local1, Local0, Local2))
                }
            }

            Method (SMBW, 1, Serialized)
            {
                ShiftRight (Arg0, 0x10, Local0)
                And (Local0, 0xFF, Local0)
                ShiftRight (Arg0, 0x18, Local1)
                And (Arg0, 0xFF, Local2)
                If (And (Local1, One))
                {
                    Return (RWRD (Local1, Local0))
                }
                Else
                {
                    Return (WWRD (Local1, Local0, Local2))
                }
            }

            Method (SMBK, 1, Serialized)
            {
                ShiftRight (Arg0, 0x08, Local0)
                And (Local0, 0xFF, Local0)
                If (Local0)
                {
                    ShiftRight (Arg0, 0x10, Local0)
                    And (Local0, 0xFF, Local0)
                    ShiftRight (Arg0, 0x18, Local1)
                    And (Local1, 0xFF, Local1)
                    And (Arg0, 0x0F, Local3)
                    If (And (Local1, One))
                    {
                        RBLK (Local1, Local0, Local3)
                    }
                    Else
                    {
                        WBLK (Local1, Local0, Local3)
                    }

                    Return (Zero)
                }
                Else
                {
                    ShiftRight (Arg0, 0x10, Local2)
                    And (Local2, 0xFF, Local2)
                    ShiftRight (Arg0, 0x18, Local1)
                    If (And (Local1, One))
                    {
                        Return (DerefOf (Index (RBUF, Local2)))
                    }
                    Else
                    {
                        And (Arg0, 0xFF, Local1)
                        Store (Local1, Index (RBUF, Local2))
                        Return (Zero)
                    }
                }
            }

            Method (ECRW, 1, Serialized)
            {
                ShiftRight (Arg0, 0x18, Local0)
                And (Local0, 0xFF, Local0)
                ShiftRight (Arg0, 0x10, Local1)
                And (Local1, 0xFF, Local1)
                ShiftRight (Arg0, 0x08, Local2)
                And (Local2, 0xFF, Local2)
                And (Arg0, 0xFF, Local3)
                Acquire (^^PCI0.LPCB.EC0.MUEC, 0xFFFF)
                Store (Local0, ^^PCI0.LPCB.EC0.CDT3)
                Store (Local1, ^^PCI0.LPCB.EC0.CDT2)
                Store (Local2, ^^PCI0.LPCB.EC0.CDT1)
                Store (Local3, ^^PCI0.LPCB.EC0.CMD1)
                Store (0x05, Local0)
                While (LAnd (Local0, ^^PCI0.LPCB.EC0.CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                Store (^^PCI0.LPCB.EC0.CDT3, Local0)
                Store (^^PCI0.LPCB.EC0.CDT2, Local1)
                Store (^^PCI0.LPCB.EC0.CDT1, Local2)
                Store (^^PCI0.LPCB.EC0.CMD1, Local3)
                Release (^^PCI0.LPCB.EC0.MUEC)
                ShiftLeft (Local0, 0x08, Local0)
                Or (Local0, Local1, Local0)
                ShiftLeft (Local0, 0x08, Local0)
                Or (Local0, Local2, Local0)
                ShiftLeft (Local0, 0x08, Local0)
                Or (Local0, Local3, Local0)
                Return (Local0)
            }

            Method (CBIF, 1, Serialized)
            {
                Store (Arg0, TMPB)
                Store (0x03, ALPR)
                ISMI (0xA3)
                Return (One)
            }

            Method (CFIF, 1, Serialized)
            {
                Store (Arg0, TMPB)
                ISMI (0xA6)
                Return (One)
            }

            Method (GLKB, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (^^PCI0.LPCB.EC0.RRAM (0x0449), Local0)
                    And (Local0, 0x02, Local0)
                    If (Local0)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Return (KBLV)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            If (ALAE)
                            {
                                Store (^^PCI0.LPCB.EC0.RRAM (0x04C9), Local0)
                                If (LLessEqual (Local0, One))
                                {
                                    Return (Zero)
                                }
                                Else
                                {
                                    If (LAnd (LLessEqual (Local0, 0x06), LGreater (Local0, One)))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LGreater (Local0, 0x06))
                                        {
                                            Return (0x02)
                                        }
                                        Else
                                        {
                                            Return (0x80)
                                        }
                                    }
                                }
                            }

                            Return (0x80)
                        }
                    }
                }

                Return (Ones)
            }

            Name (PWKB, Buffer (0x04)
            {
                 0x00, 0x55, 0xAA, 0xFF
            })
            Method (SLKB, 1, NotSerialized)
            {
                Store (And (Arg0, 0x7F), KBLV)
                If (And (Arg0, 0x80))
                {
                    Store (DerefOf (Index (PWKB, KBLV)), Local0)
                }
                Else
                {
                    Store (Zero, Local0)
                }

                ^^PCI0.LPCB.EC0.WRAM (0x044B, Local0)
                Return (One)
            }

            Method (GDSP, 1, NotSerialized)
            {
                If (NATK ())
                {
                    If (LEqual (Arg0, 0x80))
                    {
                        Return (One)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Return (GCDM ())
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (AC0)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Return (^^LPCB.EC0.ACAP ())
            }

            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (ACAP, 0, Serialized)
        {
            Return (ACPF)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (^^LPCB.EC0.BATP (Zero))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (LOW2, 0x012C)
            Name (DVOT, 0x0E)
            Name (PUNT, One)
            Name (LFCC, 0x1770)
            Name (NBIF, Package (0x0D)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                "", 
                "", 
                "", 
                ""
            })
            Name (PBIF, Package (0x0D)
            {
                One, 
                0x1770, 
                0x1770, 
                One, 
                0x39D0, 
                0x0258, 
                0x012C, 
                0x3C, 
                0x3C, 
                "M3N", 
                " ", 
                "LIon", 
                "ASUSTeK"
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (FBIF, 5, NotSerialized)
            {
                Store (Arg0, PUNT)
                Store (Arg1, Local1)
                Store (Arg2, Local2)
                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local1, 0x0A, Local1)
                    Multiply (Local2, 0x0A, Local2)
                }

                Store (Arg0, Index (PBIF, Zero))
                Store (Local1, Index (PBIF, One))
                Store (Local2, Index (PBIF, 0x02))
                Store (Local2, LFCC)
                Store (Arg3, Index (PBIF, 0x03))
                Store (Arg4, Index (PBIF, 0x04))
                Divide (Local1, 0x0A, Local3, Local5)
                Store (Local5, Index (PBIF, 0x05))
                Divide (Local1, 0x64, Local3, Local6)
                Store (Local6, Index (PBIF, 0x06))
                Store (Local6, LOW2)
                Divide (Local1, 0x64, Local3, Local7)
                Store (Local7, Index (PBIF, 0x07))
                Store (Local7, Index (PBIF, 0x08))
            }

            Method (CBIF, 0, NotSerialized)
            {
                If (PUNT)
                {
                    Store (DerefOf (Index (PBIF, 0x04)), Local0)
                    Add (Local0, 0x01F4, Local0)
                    Divide (Local0, 0x03E8, Local1, DVOT)
                    Store (Zero, Index (PBIF, Zero))
                    Multiply (DerefOf (Index (PBIF, One)), DVOT, Index (PBIF, One
                        ))
                    Multiply (DerefOf (Index (PBIF, 0x02)), DVOT, Index (PBIF, 0x02
                        ))
                    Multiply (DerefOf (Index (PBIF, 0x05)), DVOT, Index (PBIF, 0x05
                        ))
                    Multiply (DerefOf (Index (PBIF, 0x06)), DVOT, Index (PBIF, 0x06
                        ))
                    Multiply (DerefOf (Index (PBIF, 0x07)), DVOT, Index (PBIF, 0x07
                        ))
                    Multiply (DerefOf (Index (PBIF, 0x08)), DVOT, Index (PBIF, 0x08
                        ))
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (LNot (^^LPCB.EC0.BATP (Zero)))
                {
                    Return (NBIF)
                }

                If (LEqual (^^LPCB.EC0.GBTT (Zero), 0xFF))
                {
                    Return (NBIF)
                }

                BATO ()
                BATS (Zero)
                Store (^^LPCB.EC0.BIF9 (), Index (PBIF, 0x09))
                Store (ONAM, Index (PBIF, 0x0C))
                Store (^^LPCB.EC0.BIF0 (), Local0)
                Store (^^LPCB.EC0.BIF1 (), Local1)
                Store (^^LPCB.EC0.BIF2 (), Local2)
                Store (^^LPCB.EC0.BIF3 (), Local3)
                Store (^^LPCB.EC0.BIF4 (), Local4)
                If (LNotEqual (Local0, Ones))
                {
                    If (LNotEqual (Local1, Ones))
                    {
                        If (LNotEqual (Local2, Ones))
                        {
                            If (LNotEqual (Local3, Ones))
                            {
                                If (LNotEqual (Local4, Ones))
                                {
                                    FBIF (Local0, Local1, Local2, Local3, Local4)
                                    CBIF ()
                                }
                            }
                        }
                    }
                }

                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local2, 0x0A, Local2)
                }

                Store (Local2, LFCC)
                BATR ()
                Return (PBIF)
            }

            Method (FBST, 4, NotSerialized)
            {
                And (Arg1, 0xFFFF, Local1)
                Store (Zero, Local0)
                If (^^LPCB.EC0.ACAP ())
                {
                    Store (One, Local0)
                }

                If (Local0)
                {
                    If (CHGS (Zero))
                    {
                        Store (0x02, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (One, Local0)
                }

                If (BLLO)
                {
                    ShiftLeft (One, 0x02, Local2)
                    Or (Local0, Local2, Local0)
                }

                If (LLessEqual (^^LPCB.EC0.RRAM (0x03B0), One))
                {
                    ShiftLeft (One, 0x02, Local2)
                    Or (Local0, Local2, Local0)
                }

                If (LGreaterEqual (Local1, 0x8000))
                {
                    Subtract (0xFFFF, Local1, Local1)
                }

                Store (Arg2, Local2)
                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local1, DVOT, Local1)
                    Multiply (Local2, 0x0A, Local2)
                }

                And (Local0, 0x02, Local3)
                If (LNot (Local3))
                {
                    Subtract (LFCC, Local2, Local3)
                    Divide (LFCC, 0xC8, Local4, Local5)
                    If (LLess (Local3, Local5))
                    {
                        Store (LFCC, Local2)
                    }
                }
                Else
                {
                    Divide (LFCC, 0xC8, Local4, Local5)
                    Subtract (LFCC, Local5, Local4)
                    If (LGreater (Local2, Local4))
                    {
                        Store (Local4, Local2)
                    }
                }

                If (LNot (^^LPCB.EC0.ACAP ()))
                {
                    Divide (Local2, MBLF, Local3, Local4)
                    If (LLess (Local1, Local4))
                    {
                        Store (Local4, Local1)
                    }
                }

                Store (Local0, Index (PBST, Zero))
                Store (Local1, Index (PBST, One))
                Store (Local2, Index (PBST, 0x02))
                Store (Arg3, Index (PBST, 0x03))
            }

            Method (CBST, 0, NotSerialized)
            {
                If (PUNT)
                {
                    Multiply (DerefOf (Index (PBST, One)), DVOT, Index (PBST, One
                        ))
                    Multiply (DerefOf (Index (PBST, 0x02)), DVOT, Index (PBST, 0x02
                        ))
                }
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Store (Zero, Index (PBST, Zero))
                Store (Ones, Index (PBST, One))
                Store (Ones, Index (PBST, 0x02))
                Store (Ones, Index (PBST, 0x03))
                If (LNot (^^LPCB.EC0.BATP (Zero)))
                {
                    Return (PBST)
                }

                If (LEqual (^^LPCB.EC0.GBTT (Zero), 0xFF))
                {
                    Return (PBST)
                }

                If (MES4)
                {
                    Decrement (MES4)
                    Return (PBST)
                }

                BATO ()
                BATS (Zero)
                Store (^^LPCB.EC0.BSTS (), Local0)
                Store (^^LPCB.EC0.BCRT (), Local1)
                Store (^^LPCB.EC0.BRCP (), Local2)
                Store (^^LPCB.EC0.BVOT (), Local3)
                If (LNotEqual (Local0, Ones))
                {
                    If (LNotEqual (Local1, Ones))
                    {
                        If (LNotEqual (Local2, Ones))
                        {
                            If (LNotEqual (Local3, Ones))
                            {
                                FBST (Local0, Local1, Local2, Local3)
                                CBST ()
                            }
                        }
                    }
                }

                BATR ()
                Return (PBST)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (B0CR, Zero)
        Name (B1CR, Zero)
        Method (GGCC, 1, Serialized)
        {
            BATO ()
            BATS (Arg0)
            Store (^LPCB.EC0.BCRT (), Local0)
            BATR ()
            If (LEqual (Local0, Ones))
            {
                If (Arg0)
                {
                    Store (B1CR, Local0)
                }
                Else
                {
                    Store (B0CR, Local0)
                }
            }

            And (Local0, 0x8000, Local1)
            If (Local1)
            {
                Store (Zero, Local0)
            }

            If (Arg0)
            {
                Store (Local0, B1CR)
            }
            Else
            {
                Store (Local0, B0CR)
            }

            Return (Local0)
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Name (BADR, 0x0B)
        Name (CADR, 0x09)
        Name (SADR, 0x0A)
        Method (ALMH, 1, NotSerialized)
        {
            If (LEqual (Arg0, BADR))
            {
                NBAT (0x80)
            }
        }

        Method (BIFW, 1, NotSerialized)
        {
            Store (SMBR (RDWD, BADR, Arg0), Local0)
            Store (DerefOf (Index (Local0, Zero)), Local1)
            If (Local1)
            {
                Return (Ones)
            }
            Else
            {
                Return (DerefOf (Index (Local0, 0x02)))
            }
        }

        Method (BIF0, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1MD, Local0)
                }
                Else
                {
                    Store (B0MD, Local0)
                }

                If (LNotEqual (Local0, 0xFFFF))
                {
                    ShiftRight (Local0, 0x0F, Local1)
                    And (Local1, One, Local1)
                    XOr (Local1, One, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF1, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1DC, Local0)
                }
                Else
                {
                    Store (B0DC, Local0)
                }

                And (Local0, 0xFFFF, Local0)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF2, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1FC, Local0)
                }
                Else
                {
                    Store (B0FC, Local0)
                }

                And (Local0, 0xFFFF, Local0)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF3, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1MD, Local0)
                }
                Else
                {
                    Store (B0MD, Local0)
                }

                If (LNotEqual (Local0, 0xFFFF))
                {
                    ShiftRight (Local0, 0x09, Local0)
                    And (Local0, One, Local0)
                    XOr (Local0, One, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF4, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1DV, Local0)
                }
                Else
                {
                    Store (B0DV, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF9, 0, NotSerialized)
        {
            Name (BSTR, Buffer (0x20) {})
            Store (SMBR (RDBL, BADR, 0x21), Local0)
            If (LNotEqual (DerefOf (Index (Local0, Zero)), Zero))
            {
                Store (MNAM, BSTR)
                Store (Zero, Index (BSTR, 0x04))
            }
            Else
            {
                Store (DerefOf (Index (Local0, 0x02)), BSTR)
                Store (Zero, Index (BSTR, DerefOf (Index (Local0, One))))
            }

            Return (BSTR)
        }

        Method (BIFA, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1SN, Local0)
                }
                Else
                {
                    Store (B0SN, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BSTS, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1ST, Local0)
                }
                Else
                {
                    Store (B0ST, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BCRT, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1CC, Local0)
                }
                Else
                {
                    Store (B0CC, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BRCP, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1RC, Local0)
                }
                Else
                {
                    Store (B0RC, Local0)
                }

                If (LEqual (Local0, 0xFFFF))
                {
                    Store (Ones, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BVOT, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1VL, Local0)
                }
                Else
                {
                    Store (B0VL, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }
    }

    Scope (\)
    {
        Method (CHGS, 1, Serialized)
        {
            Store (\_SB.PCI0.LPCB.EC0.BCHG (Arg0), Local0)
            Return (Local0)
        }

        Name (BSLF, Zero)
        Method (BATS, 1, Serialized)
        {
            If (Arg0)
            {
                Store (One, BSLF)
            }
            Else
            {
                Store (Zero, BSLF)
            }
        }

        Mutex (MMPX, 0x00)
        Method (BATO, 0, Serialized)
        {
            Acquire (MMPX, 0xFFFF)
        }

        Method (BATR, 0, Serialized)
        {
            Release (MMPX)
        }

        Name (BLLO, Zero)
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (DCPS (Zero), DCPF)
            If (DCPF)
            {
                Sleep (0x07D0)
            }

            Notify (BAT0, 0x80)
            Notify (BAT0, 0x81)
        }

        Method (_QA5, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (One, BLLO)
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x6E)
            }
            Else
            {
                If (BATP (Zero))
                {
                    Notify (BAT0, 0x80)
                }
            }
        }

        Method (_QA3, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (BATP (Zero))
            {
                Store (BCLE (Zero), Local0)
                If (LEqual (Local0, Zero))
                {
                    Notify (BAT0, 0x80)
                }
                Else
                {
                    Notify (BAT0, 0x81)
                    Notify (AC0, 0x80)
                }
            }
        }

        Method (BATP, 1, Serialized)
        {
            If (Arg0)
            {
                Return (DCP2)
            }
            Else
            {
                Return (DCPF)
            }
        }

        Method (NBAT, 1, NotSerialized)
        {
            If (BATP (Zero))
            {
                Notify (BAT0, Arg0)
            }
        }
    }

    Scope (\)
    {
        Name (MES4, Zero)
        Method (OEMS, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03))
            {
                If (LLessEqual (MSOS (), OSME))
                {
                    Store (One, \_SB.WIDE)
                }
                Else
                {
                    Store (Zero, \_SB.WIDE)
                }
            }

            SBRS (Arg0)
            \_SB.PCI0.LPCB.EC0.EC0S (Arg0)
            Store (Arg0, \_SB.SLPN)
            DIAG (Add (Arg0, 0xD0))
            PPRJ (Arg0)
            Store (Arg0, \_SB.SLPT)
            If (Arg0)
            {
                STRP (One)
            }

            PRJS (Arg0)
            If (LEqual (Arg0, 0x03))
            {
                \_SB.PCI0.LPCB.EC0.ST8E (0x12, 0xFF)
                \_SB.PCI0.LPCB.EC0.ST9E (0x12, 0x05, One)
                If (LEqual (\_SB.DP3S, One))
                {
                    \_SB.PCI0.LPCB.EC0.ST9E (Zero, 0x08, One)
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC0.ST8E (Zero, 0x08)
                }
            }

            ISMI (0x9D)
        }

        Method (OEMW, 1, NotSerialized)
        {
            ISMI (0x9E)
            Store (Zero, \_SB.SLPT)
            \_SB.PCI0.LPCB.EC0.EC0W (Arg0)
            If (LEqual (Arg0, 0x04))
            {
                If (LLessEqual (MSOS (), OSME))
                {
                    Store (0x02, MES4)
                }
                Else
                {
                    Store (Zero, MES4)
                }
            }

            SBRW (Arg0)
            If (LEqual (Arg0, 0x04))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            PRJW (Arg0)
            DIAG (Add (Arg0, 0xF0))
        }
    }

    Scope (_SB.PCI0.LPCB.TPM)
    {
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            Return (OTID ())
        }

        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        OperationRegion (\TCMM, SystemMemory, 0xFED40000, 0x5000)
        Field (TCMM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF00), 
            VDID,   32
        }

        Method (OTID, 0, Serialized)
        {
            Store (ACCS, Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                If (LEqual (VDID, 0x687119FA))
                {
                    Return (0x0435CF4D)
                }
                Else
                {
                    If (LEqual (VDID, 0x000B15D1))
                    {
                        Return (0x0201D824)
                    }
                    Else
                    {
                        Return (0x310CD041)
                    }
                }
            }
            Else
            {
                Return (0x310CD041)
            }
        }
    }

    Scope (_SB)
    {
        Device (PTID)
        {
            Name (CADR, Zero)
            Name (WLEN, Zero)
            Name (RLEN, Zero)
            Name (CAMD, Zero)
            Name (OBUF, Buffer (0x10) {})
            Name (IBUF, Buffer (0x0F) {})
            Name (ERRN, Zero)
            Name (_HID, EisaId ("INT340E"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (TSDL, Package (0x04)
            {
                Zero, 
                "CPU Temperature", 
                0x05, 
                "PCH Temperature"
            })
            Name (TMPV, Package (0x02)
            {
                0x80000000, 
                0x80000000
            })
            Name (PSDL, Package (0x04)
            {
                Zero, 
                "CPU Power", 
                One, 
                "Gfx Power"
            })
            Name (PWRV, Package (0x02)
            {
                0x80000000, 
                0x80000000
            })
            Name (OSDL, Package (0x06)
            {
                0x04, 
                "Fan RPM", 
                "RPM", 
                0x0C, 
                "Battery Capaciy", 
                "mAh"
            })
            Name (OSDV, Package (0x02)
            {
                0x80000000, 
                0x80000000
            })
            Method (TSDD, 0, NotSerialized)
            {
                Name (TMPC, Zero)
                Store (^^PCI0.LPCB.EC0.ECPU, TMPC)
                Store (TMPC, Index (TMPV, Zero))
                Store (^^PCI0.LPCB.EC0.ECPU, TMPC)
                Store (TMPC, Index (TMPV, One))
                Return (TMPV)
            }

            Method (PWRG, 0, NotSerialized)
            {
                Return (Ones)
            }

            Method (PSDD, 0, NotSerialized)
            {
                Name (PWRC, Zero)
                Store (PWRG (), PWRC)
                Store (PWRC, Index (PWRV, Zero))
                Store (PWRG (), PWRC)
                Store (PWRC, Index (PWRV, One))
                Return (PWRV)
            }

            Method (OSDG, 0, NotSerialized)
            {
                Return (Ones)
            }

            Method (OSDD, 0, NotSerialized)
            {
                Name (OSDC, Zero)
                Store (OSDG (), OSDC)
                Store (OSDC, Index (OSDV, Zero))
                Store (OSDG (), OSDC)
                Store (OSDC, Index (OSDV, One))
                Return (OSDV)
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (MBOX, Buffer (0x1A) {})
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
                0x0271, 
                0x0270, 
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
                And (^^PCI0.LPCB.EC0.PBSY, 0x80, Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (PADD)
                }

                Return (PADA)
            }

            Method (RPMD, 0, NotSerialized)
            {
                Store (Zero, Local0)
                Store (0x0A, Local1)
                Add (WLEN, Local1, Local1)
                While (LLess (Local0, RLEN))
                {
                    Store (DerefOf (Index (IBUF, Local0)), Index (MBOX, Local1))
                    Add (One, Local0, Local0)
                    Add (One, Local1, Local1)
                }

                Return (MBOX)
            }

            Method (WPMD, 1, NotSerialized)
            {
                If (LNotEqual (SizeOf (Arg0), 0x1A))
                {
                    Return (0xFFFFFFFF)
                }

                Store (Zero, Local0)
                While (LLess (Local0, 0x1A))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Index (MBOX, Local0))
                    Add (One, Local0, Local0)
                }

                Store (DerefOf (Index (Arg0, 0x06)), CADR)
                Store (DerefOf (Index (Arg0, 0x07)), WLEN)
                Store (DerefOf (Index (Arg0, 0x08)), RLEN)
                Store (DerefOf (Index (Arg0, 0x09)), CAMD)
                Name (CUNT, Zero)
                Store (Zero, CUNT)
                Store (0x0A, Local0)
                While (LLess (CUNT, WLEN))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Index (OBUF, CUNT))
                    Add (CUNT, One, CUNT)
                    Add (Local0, One, Local0)
                }

                Return (Zero)
            }

            Name (CYCT, Zero)
            Method (ISPC, 0, NotSerialized)
            {
                Store (DerefOf (Index (MBOX, 0x03)), CYCT)
                ShiftLeft (CYCT, 0x08, CYCT)
                Add (CYCT, DerefOf (Index (MBOX, 0x02)), CYCT)
                ShiftLeft (CYCT, 0x08, CYCT)
                Add (CYCT, DerefOf (Index (MBOX, One)), CYCT)
                ShiftLeft (CYCT, 0x08, CYCT)
                Add (CYCT, DerefOf (Index (MBOX, Zero)), CYCT)
                If (LGreaterEqual (CYCT, One))
                {
                    Store (DerefOf (Index (MBOX, 0x04)), Local0)
                    Multiply (Local0, 0x0A, Local0)
                    Sleep (Local0)
                }

                Store (^^PCI0.LPCB.EC0.PECI (CADR, WLEN, RLEN, CAMD, OBUF, IBUF, ERRN), Local0)
                If (LEqual (Local0, One))
                {
                    If (LGreater (CYCT, Zero))
                    {
                        Subtract (CYCT, One, CYCT)
                        And (CYCT, 0xFF, Index (MBOX, Zero))
                        And (CYCT, 0xFF00, Local0)
                        ShiftRight (Local0, 0x08, Index (MBOX, One))
                        And (CYCT, 0x00FF0000, Local0)
                        ShiftRight (Local0, 0x10, Index (MBOX, 0x02))
                        And (CYCT, 0xFF000000, Local0)
                        ShiftRight (Local0, 0x18, Index (MBOX, 0x03))
                    }
                }
            }

            Method (ENPC, 0, NotSerialized)
            {
                Store (Zero, CYCT)
            }

            Method (RPCS, 0, NotSerialized)
            {
                Name (TPCS, Zero)
                If (LGreater (CYCT, Zero))
                {
                    Store (One, TPCS)
                    ISPC ()
                }
                Else
                {
                    Store (Zero, TPCS)
                }

                Return (TPCS)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Name (TPEC, Zero)
                Store (ERRN, TPEC)
                Return (TPEC)
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (AGFN, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (GNBF)
            }

            Store (Zero, Local0)
            OperationRegion (\PARM, SystemMemory, Arg0, 0x08)
            Field (PARM, DWordAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                LEN,    16, 
                STAS,   8, 
                EROR,   8
            }

            Store (Zero, EROR)
            Store (One, STAS)
            If (LEqual (MFUN, 0x02))
            {
                BSMI (Arg0)
                And (STAS, 0xFE, STAS)
            }

            And (MFUN, 0xF0, Local0)
            If (LEqual (Local0, 0x10))
            {
                MF1X (Arg0, LEN, MFUN, SFUN)
            }

            If (LEqual (MFUN, 0x42))
            {
                MF42 (Arg0, SFUN, LEN)
                And (STAS, 0xFE, STAS)
            }

            If (LEqual (MFUN, One))
            {
                GVER (Arg0, LEN)
                And (STAS, 0xFE, STAS)
            }

            If (LEqual (MFUN, 0x30))
            {
                MF30 (Arg0, SFUN, LEN)
                And (STAS, 0xFE, STAS)
            }

            AGLN (Arg0, MFUN, SFUN, LEN)
            If (LEqual (STAS, One))
            {
                Store (One, EROR)
                Or (STAS, 0x02, STAS)
            }

            And (STAS, 0xFE, STAS)
            Or (STAS, 0x80, STAS)
            Return (Zero)
        }

        Method (GVER, 2, NotSerialized)
        {
            OperationRegion (\FGVR, SystemMemory, Arg0, Arg1)
            Field (FGVR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                APID,   16, 
                APRV,   32
            }

            Return (Zero)
        }

        Method (MF30, 3, NotSerialized)
        {
            OperationRegion (FM30, SystemMemory, Arg0, 0x08)
            Field (FM30, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM30,   8, 
                EM30,   8
            }

            Store (One, Local0)
            If (LEqual (Arg1, Zero))
            {
                Store (G30V (Arg0, Arg2), Local0)
            }

            If (LEqual (Arg1, One))
            {
                Store (EC01 (Arg0, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x02))
            {
                Store (EC02 (Arg0, Arg2), Local0)
            }

            If (Local0)
            {
                Store (Local0, EM30)
                Or (SM30, 0x02, SM30)
            }

            Or (SM30, 0x80, SM30)
            Return (Zero)
        }

        Method (G30V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F300, SystemMemory, Arg0, Arg1)
            Field (F300, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (EC01, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (FEC1, SystemMemory, Arg0, Arg1)
            Field (FEC1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ECMD,   8, 
                EDA1,   8, 
                EDA2,   8, 
                EDA3,   8, 
                EDA4,   8, 
                EDA5,   8
            }

            Store (^^PCI0.LPCB.EC0.ECXT (ECMD, EDA1, EDA2, EDA3, EDA4, EDA5), Local0)
            Store (DerefOf (Index (Local0, One)), EDA1)
            Store (DerefOf (Index (Local0, 0x02)), EDA2)
            Store (DerefOf (Index (Local0, 0x03)), EDA3)
            Store (DerefOf (Index (Local0, 0x04)), EDA4)
            Store (DerefOf (Index (Local0, 0x05)), EDA5)
            Return (DerefOf (Index (Local0, Zero)))
        }

        Method (EC02, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x30))
            {
                Return (0x02)
            }

            OperationRegion (FEC2, SystemMemory, Arg0, Arg1)
            Field (FEC2, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BUSN,   8, 
                PROT,   8, 
                DADD,   8, 
                DREG,   8, 
                DAT0,   8, 
                DAT1,   8, 
                BLEN,   8, 
                REVB,   8, 
                BLKK,   256
            }

            Store (Package (0x02)
                {
                    Zero, 
                    Buffer (0x20) {}
                }, Local1)
            Store (BLEN, Index (Local1, Zero))
            Store (BLKK, Index (Local1, One))
            Store (^^PCI0.LPCB.EC0.ECSB (BUSN, PROT, DADD, DREG, DAT0, DAT1, Local1), Local0)
            If (LEqual (DerefOf (Index (Local0, Zero)), Zero))
            {
                Store (DerefOf (Index (Local0, One)), DAT0)
                Store (DerefOf (Index (Local0, 0x02)), DAT1)
                Store (DerefOf (Index (Local0, 0x03)), BLEN)
                Store (DerefOf (Index (Local0, 0x04)), BLKK)
            }

            Store (DerefOf (Index (Local0, Zero)), Local2)
            And (Local2, 0x3F, Local2)
            Return (Local2)
        }

        Method (GENW, 1, NotSerialized)
        {
            Store (Zero, RTCW)
        }

        Method (BSMI, 1, Serialized)
        {
            Store (Arg0, BIPA)
            ISMI (0xA1)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (MF1X, 4, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            Store (One, Local0)
            If (LEqual (Arg2, 0x10))
            {
                Store (MF10 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x11))
            {
                Store (MF11 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x12))
            {
                Store (MF12 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x13))
            {
                Store (MF13 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x14))
            {
                Store (MF14 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x15))
            {
                Store (MF15 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x16))
            {
                Store (MF16 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x17))
            {
                Store (MF17 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x18))
            {
                Store (MF18 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x19))
            {
                Store (MF19 (Arg0, Arg1, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x1F))
            {
                Store (MF1F (Arg0, Arg1, Arg3), Local0)
            }

            And (SM1X, 0xFE, SM1X)
            If (Local0)
            {
                Store (Local0, EM1X)
                Or (SM1X, 0x02, SM1X)
            }

            Or (SM1X, 0x80, SM1X)
        }

        Method (MF10, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G10V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (SRTC (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G10V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F100, SystemMemory, Arg0, Arg1)
            Field (F100, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (SRTC, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F101, SystemMemory, Arg0, Arg1)
            Field (F101, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DLTM,   16
            }

            Store (DLTM, RTCW)
            Return (Zero)
        }

        Method (MF11, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G11V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GBAT (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (ASBR (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (ASBE (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (BTCR (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G11V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F110, SystemMemory, Arg0, Arg1)
            Field (F100, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GBAT, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F111, SystemMemory, Arg0, Arg1)
            Field (F111, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BTNM,   8, 
                BTTP,   8
            }

            Store (One, BTNM)
            Store (Zero, BTTP)
            Return (Zero)
        }

        Method (ASBR, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x30))
            {
                Return (0x02)
            }

            OperationRegion (\F112, SystemMemory, Arg0, Arg1)
            Field (F112, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BATN,   8, 
                BATA,   8, 
                REGS,   8, 
                BDAT,   16, 
                BLEN,   8, 
                BREV,   16, 
                BLK1,   32, 
                BLK2,   32, 
                BLK3,   32, 
                BLK4,   32, 
                BLK5,   32, 
                BLK6,   32, 
                BLK7,   32, 
                BLK8,   32
            }

            If (LGreaterEqual (BATN, One))
            {
                Return (0x11)
            }

            If (LEqual (BATA, Zero))
            {
                Store (^^PCI0.LPCB.EC0.SMBR (^^PCI0.LPCB.EC0.RDWD, ^^PCI0.LPCB.EC0.BADR, REGS), Local0)
                Store (DerefOf (Index (Local0, 0x02)), BDAT)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            If (LEqual (BATA, One))
            {
                Store (^^PCI0.LPCB.EC0.SMBW (^^PCI0.LPCB.EC0.WRWD, ^^PCI0.LPCB.EC0.BADR, REGS, 0x02, BDAT), Local0)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            If (LEqual (BATA, 0x02))
            {
                Store (^^PCI0.LPCB.EC0.SMBR (^^PCI0.LPCB.EC0.RDBL, ^^PCI0.LPCB.EC0.BADR, REGS), Local0)
                Name (BKUF, Buffer (0x20) {})
                CreateDWordField (BKUF, Zero, DAT1)
                CreateDWordField (BKUF, 0x04, DAT2)
                CreateDWordField (BKUF, 0x08, DAT3)
                CreateDWordField (BKUF, 0x0C, DAT4)
                CreateDWordField (BKUF, 0x10, DAT5)
                CreateDWordField (BKUF, 0x14, DAT6)
                CreateDWordField (BKUF, 0x18, DAT7)
                CreateDWordField (BKUF, 0x1C, DAT8)
                Store (DerefOf (Index (Local0, 0x02)), BKUF)
                Store (DAT1, BLK1)
                Store (DAT2, BLK2)
                Store (DAT3, BLK3)
                Store (DAT4, BLK4)
                Store (DAT5, BLK5)
                Store (DAT6, BLK6)
                Store (DAT7, BLK7)
                Store (DAT8, BLK8)
                Store (DerefOf (Index (Local0, One)), BLEN)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            Return (0x10)
        }

        Method (ASBE, 2, Serialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F113, SystemMemory, Arg0, Arg1)
            Field (F113, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BATN,   8, 
                BATA,   8, 
                REGS,   8, 
                BDAT,   8
            }

            If (LGreater (BATN, One))
            {
                Return (0x11)
            }

            If (LEqual (BATA, Zero))
            {
                Store (^^PCI0.LPCB.EC0.RBEP (REGS), Local2)
                And (Local2, 0xFF, Local3)
                Store (Local3, BDAT)
                ShiftRight (Local2, 0x08, Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            If (LEqual (BATA, One))
            {
                Store (^^PCI0.LPCB.EC0.WBEP (REGS, BDAT), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            Return (0x10)
        }

        Method (BTCR, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F114, SystemMemory, Arg0, Arg1)
            Field (F114, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BCDC,   8
            }

            SBTL (BCDC)
            Return (Zero)
        }

        Method (MF12, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G12V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GLDI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (LDCR (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G12V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F120, SystemMemory, Arg0, Arg1)
            Field (F120, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GLDI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F121, SystemMemory, Arg0, Arg1)
            Field (F121, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LDI0,   32, 
                LDI1,   32
            }

            Store (Zero, Local0)
            Or (Local0, 0x10, Local0)
            Or (Local0, 0x20, Local0)
            Store (Local0, LDI0)
            Return (Zero)
        }

        Method (LDCR, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F122, SystemMemory, Arg0, Arg1)
            Field (F122, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LDNM,   8, 
                LCRT,   8
            }

            If (LEqual (LDNM, 0x04))
            {
                WLED (LCRT)
                Return (Zero)
            }

            Return (0x10)
        }

        Method (MF13, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G13V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GTSI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GTSV (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (GVSN (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (GVSV (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x05))
            {
                Store (GFNN (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x06))
            {
                Store (GFNS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x07))
            {
                Store (SFNS (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G13V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F130, SystemMemory, Arg0, Arg1)
            Field (F130, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GTSI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F131, SystemMemory, Arg0, Arg1)
            Field (F131, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                THRI,   32
            }

            Store (Zero, Local0)
            Or (Local0, One, Local0)
            If (LGreaterEqual (CPUN, One))
            {
                Or (Local0, 0x0100, Local0)
            }

            If (LGreaterEqual (CPUN, 0x02))
            {
                Or (Local0, 0x0200, Local0)
            }

            If (LGreaterEqual (CPUN, 0x03))
            {
                Or (Local0, 0x0400, Local0)
            }

            If (LGreaterEqual (CPUN, 0x04))
            {
                Or (Local0, 0x0800, Local0)
            }

            Store (Local0, THRI)
            Return (Zero)
        }

        Method (GTSV, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F132, SystemMemory, Arg0, Arg1)
            Field (F132, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                TSNM,   8, 
                TSVL,   8, 
                TSST,   8
            }

            Store (Zero, TSST)
            If (LEqual (TSNM, Zero))
            {
                Store (\_TZ.RTMP (), TSVL)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x08))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x09))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x0A))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x0B))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            Return (0x10)
        }

        Method (GVSN, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F133, SystemMemory, Arg0, Arg1)
            Field (F133, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NMVS,   8
            }

            Store (Zero, NMVS)
            Return (Zero)
        }

        Method (GVSV, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0B))
            {
                Return (0x02)
            }

            OperationRegion (\F134, SystemMemory, Arg0, Arg1)
            Field (F134, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VSNM,   8, 
                VSVL,   16
            }

            If (LGreater (VSNM, Zero))
            {
                Return (0x10)
            }

            Return (Zero)
        }

        Method (GFNN, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F135, SystemMemory, Arg0, Arg1)
            Field (F135, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NMFN,   32
            }

            Store (One, NMFN)
            Return (Zero)
        }

        Method (GFNS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0D))
            {
                Return (0x02)
            }

            OperationRegion (\F136, SystemMemory, Arg0, Arg1)
            Field (F136, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                FNNM,   8, 
                GFNS,   32
            }

            If (Or (LEqual (FNNM, Zero), LGreater (FNNM, One)))
            {
                Return (0x10)
            }

            Store (FNNM, Local0)
            Store (\_TZ.RFAN (Decrement (Local0)), GFNS)
            Return (Zero)
        }

        Method (SFNS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F137, SystemMemory, Arg0, Arg1)
            Field (F137, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                FNNB,   8, 
                FNSP,   8
            }

            If (LGreater (FNNB, One))
            {
                Return (0x10)
            }

            ^^PCI0.LPCB.EC0.SFNV (FNNB, FNSP)
            Return (Zero)
        }

        Method (MF14, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G14V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GNBT (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GBTS (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G14V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F140, SystemMemory, Arg0, Arg1)
            Field (F140, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GNBT, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F141, SystemMemory, Arg0, Arg1)
            Field (F141, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NBBT,   8
            }

            Store (0x05, NBBT)
            Return (Zero)
        }

        Method (GBTS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F142, SystemMemory, Arg0, Arg1)
            Field (F142, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BTNM,   8, 
                BTST,   8
            }

            Name (BTTB, Package (0x05)
            {
                Package (0x03)
                {
                    0x0C, 
                    Zero, 
                    Zero
                }, 

                Package (0x03)
                {
                    0x0D, 
                    Zero, 
                    Zero
                }, 

                Package (0x03)
                {
                    0x0E, 
                    Zero, 
                    Zero
                }, 

                Package (0x03)
                {
                    0x0F, 
                    Zero, 
                    Zero
                }, 

                Package (0x03)
                {
                    0x15, 
                    Zero, 
                    Zero
                }
            })
            If (LGreater (BTNM, 0x05))
            {
                Return (0x10)
            }

            Store (BTNM, Local0)
            Decrement (Local0)
            Store (DerefOf (Index (BTTB, Local0)), Local1)
            If (LEqual (DerefOf (Index (Local1, One)), Zero))
            {
                Store (^^PCI0.LPCB.EC0.RPIN (DerefOf (Index (Local1, Zero))), Local2)
            }

            If (LEqual (DerefOf (Index (Local1, One)), One))
            {
                Store (RGPL (DerefOf (Index (Local1, Zero)), One), Local2)
            }

            If (LEqual (DerefOf (Index (Local1, One)), 0x03)) {}
            If (LEqual (DerefOf (Index (Local1, 0x02)), Local2))
            {
                Store (Zero, BTST)
            }
            Else
            {
                Store (One, BTST)
            }

            Return (Zero)
        }

        Method (MF15, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G15V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GLDB (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (SLDB (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (GDPI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (SODP (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G15V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F150, SystemMemory, Arg0, Arg1)
            Field (F150, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GLDB, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F151, SystemMemory, Arg0, Arg1)
            Field (F151, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LCDB,   8, 
                MLDB,   8
            }

            Store (GPLV (), LCDB)
            Store (0x0B, MLDB)
            Return (Zero)
        }

        Method (SLDB, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F152, SystemMemory, Arg0, Arg1)
            Field (F152, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LCDL,   8, 
                LTPE,   8
            }

            If (LEqual (LTPE, Zero))
            {
                If (LGreater (LCDL, 0x0B))
                {
                    Return (0x10)
                }

                SPLV (LCDL)
                Return (Zero)
            }

            If (LEqual (LTPE, One))
            {
                ^^PCI0.LPCB.EC0.SBRV (LCDL)
                Return (Zero)
            }

            Return (0x11)
        }

        Method (GDPI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F153, SystemMemory, Arg0, Arg1)
            Field (F153, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ODPI,   32, 
                ODPC,   8
            }

            Store (Zero, Local0)
            Or (Local0, One, Local0)
            Or (Local0, 0x02, Local0)
            Store (Local0, ODPI)
            BSMI (Arg0)
            Return (Zero)
        }

        Method (SODP, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F154, SystemMemory, Arg0, Arg1)
            Field (F154, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ODPM,   32
            }

            Store (Zero, Local0)
            Or (Local0, One, Local0)
            Or (Local0, 0x02, Local0)
            And (ODPM, Local0, Local0)
            If (LEqual (Local0, ODPM))
            {
                SDSP (ODPM)
                Return (Zero)
            }

            Return (0x10)
        }

        Method (MF16, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G16V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (SFBD (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (LCMD (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G16V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F160, SystemMemory, Arg0, Arg1)
            Field (F160, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (SFBD, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F161, SystemMemory, Arg0, Arg1)
            Field (F161, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NXBD,   8
            }

            If (OFBD (NXBD))
            {
                Store (NXBD, UHDB)
                Return (Zero)
            }
            Else
            {
                Return (0x10)
            }
        }

        Method (LCMD, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            BSMI (Arg0)
            Return (Zero)
        }

        Method (MF17, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G17V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GMDL (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GBSI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (GECI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (GFII (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G17V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F170, SystemMemory, Arg0, Arg1)
            Field (F170, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GMDL, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x19))
            {
                Return (0x02)
            }

            OperationRegion (\F171, SystemMemory, Arg0, Arg1)
            Field (F171, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                MLEN,   8, 
                MDL1,   32, 
                MDL2,   32, 
                MDL3,   32, 
                MDL4,   32
            }

            Store (Zero, MDL1)
            Store (Zero, MDL2)
            Store (Zero, MDL3)
            Store (Zero, MDL4)
            Name (BBUF, Buffer (0x10) {})
            CreateDWordField (BBUF, Zero, DAT1)
            CreateDWordField (BBUF, 0x04, DAT2)
            CreateDWordField (BBUF, 0x08, DAT3)
            CreateDWordField (BBUF, 0x0C, DAT4)
            Store (GBMN (), Local0)
            Store (SizeOf (Local0), MLEN)
            Store (GBMN (), BBUF)
            Store (DAT1, MDL1)
            Store (DAT2, MDL2)
            Store (DAT3, MDL3)
            Store (DAT4, MDL4)
            Return (Zero)
        }

        Method (GBSI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x19))
            {
                Return (0x02)
            }

            OperationRegion (\F172, SystemMemory, Arg0, Arg1)
            Field (F172, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BLEN,   8, 
                BDL1,   32, 
                BDL2,   32, 
                BDL3,   32, 
                BDL4,   32
            }

            Store (Zero, BDL1)
            Store (Zero, BDL2)
            Store (Zero, BDL3)
            Store (Zero, BDL4)
            Name (BBUF, Buffer (0x10) {})
            CreateDWordField (BBUF, Zero, DAT1)
            CreateDWordField (BBUF, 0x04, DAT2)
            CreateDWordField (BBUF, 0x08, DAT3)
            CreateDWordField (BBUF, 0x0C, DAT4)
            Store (GBRV (), Local0)
            Store (SizeOf (Local0), BLEN)
            Store (GBRV (), BBUF)
            Store (DAT1, BDL1)
            Store (DAT2, BDL2)
            Store (DAT3, BDL3)
            Store (DAT4, BDL4)
            Return (Zero)
        }

        Method (GECI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x19))
            {
                Return (0x02)
            }

            OperationRegion (\F173, SystemMemory, Arg0, Arg1)
            Field (F173, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ELEN,   8, 
                EDL1,   32, 
                EDL2,   32, 
                EDL3,   32, 
                EDL4,   32
            }

            Store (Zero, EDL1)
            Store (Zero, EDL2)
            Store (Zero, EDL3)
            Store (Zero, EDL4)
            BSMI (Arg0)
            Return (Zero)
        }

        Method (GFII, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F174, SystemMemory, Arg0, Arg1)
            Field (F174, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SFII,   8
            }

            Store (BECF, SFII)
            Return (Zero)
        }

        Method (MF18, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G18V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GDVI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GDVS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (SDPW (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G18V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F180, SystemMemory, Arg0, Arg1)
            Field (F180, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GDVI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x18))
            {
                Return (0x02)
            }

            OperationRegion (\F181, SystemMemory, Arg0, Arg1)
            Field (F181, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LDI0,   32, 
                LDI1,   32
            }

            Store (FEBL, LDI0)
            Return (Zero)
        }

        Method (GDVS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F182, SystemMemory, Arg0, Arg1)
            Field (F182, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DNUM,   8, 
                DSTS,   8
            }

            ShiftLeft (One, DNUM, Local0)
            If (LEqual (And (Local0, FEBL), Zero))
            {
                Return (0x10)
            }

            Return (Zero)
        }

        Method (SDPW, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F183, SystemMemory, Arg0, Arg1)
            Field (F183, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DNUM,   8, 
                DCTR,   8
            }

            ShiftLeft (One, DNUM, Local0)
            If (LEqual (And (Local0, FEBL), Zero))
            {
                Return (0x10)
            }

            If (LGreater (DCTR, One))
            {
                Return (0x11)
            }

            Return (Zero)
        }

        Method (MF19, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G19V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (ACMS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (CSIN (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G19V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F190, SystemMemory, Arg0, Arg1)
            Field (F190, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (ACMS, 2, NotSerialized)
        {
            BSMI (Arg0)
            Return (Zero)
        }

        Method (CSIN, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F192, SystemMemory, Arg0, Arg1)
            Field (F192, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                CMAX,   16
            }

            Store (0xFF, CMAX)
            Return (Zero)
        }

        Method (NVIN, 2, NotSerialized)
        {
            OperationRegion (FM1F, SystemMemory, Arg0, Arg1)
            Field (FM1F, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                AM1F,   32
            }

            Return (ANVI (AM1F))
        }

        Method (MF1F, 3, NotSerialized)
        {
            If (LEqual (Arg2, 0x11))
            {
                Return (NVIN (Arg0, Arg1))
            }

            BSMI (Arg0)
            Return (Zero)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (AGLN, 4, NotSerialized)
        {
        }
    }

    Scope (_SB.ATKD)
    {
        Method (OFBD, 1, NotSerialized)
        {
            Name (FBDT, Package (0x52)
            {
                0x88, 
                0x89, 
                0x8A, 
                0x8B, 
                0x8C, 
                0x8D, 
                0x8E, 
                0x8F, 
                0x70, 
                0x71, 
                0x72, 
                0x73, 
                0x74, 
                0x75, 
                0x76, 
                0x77, 
                0x78, 
                0x79, 
                0x7A, 
                0x7B, 
                0x7C, 
                0x7D, 
                0x7E, 
                0x7F, 
                0x60, 
                0x61, 
                0x62, 
                0x63, 
                0x64, 
                0x65, 
                0x66, 
                0x67, 
                0x91, 
                0x92, 
                0x93, 
                0x96, 
                0xE0, 
                0xE1, 
                0xE2, 
                0xE3, 
                0xE4, 
                0xE5, 
                0xE6, 
                0xE7, 
                0xE8, 
                0xE9, 
                0xEA, 
                0xEB, 
                0xEC, 
                0xED, 
                0xEE, 
                0xEF, 
                0xD0, 
                0xD1, 
                0xD2, 
                0xD3, 
                0xD4, 
                0xD5, 
                0xD6, 
                0xD7, 
                0xD8, 
                0xD9, 
                0xDA, 
                0xDB, 
                0xDC, 
                0xDD, 
                0xDE, 
                0xDF, 
                0xC0, 
                0xC1, 
                0xC2, 
                0xC3, 
                0xC4, 
                0xC5, 
                0xC6, 
                0xC7, 
                0xF1, 
                0xF2, 
                0xF3, 
                0xF6, 
                0xF7, 
                0xFA
            })
            Store (Match (FBDT, MEQ, Arg0, MTR, Zero, Zero), Local0)
            Increment (Local0)
            Return (Local0)
        }

        Method (GBRV, 0, NotSerialized)
        {
            Store ("204", Local0)
            Return (Local0)
        }

        Method (GBMN, 0, NotSerialized)
        {
            Store ("UX31A", Local0)
            Return (Local0)
        }

        Method (OGDP, 1, NotSerialized)
        {
            Store (Arg0, Local0)
            Store (0x02, Local1)
            Return (Local1)
        }

        Method (RSID, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (OSDP, 2, NotSerialized)
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
        }

        Method (MF42, 3, NotSerialized)
        {
            OperationRegion (FM42, SystemMemory, Arg0, 0x08)
            Field (FM42, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM42,   8, 
                EM42,   8
            }

            Store (One, Local0)
            If (LEqual (Arg1, One))
            {
                Store (SFBO (Arg0, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x02))
            {
                Store (SAOC (Arg0, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x03))
            {
                Store (GBST (Arg0, Arg2), Local0)
            }

            If (Local0)
            {
                Store (Local0, EM42)
                Or (SM42, 0x02, SM42)
            }

            Or (SM42, 0x80, SM42)
            Return (Zero)
        }

        Method (SFBO, 2, NotSerialized)
        {
            OperationRegion (\F421, SystemMemory, Arg0, Arg1)
            Field (F421, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SOPT,   8
            }

            Return (Zero)
        }

        Method (SAOC, 2, NotSerialized)
        {
            OperationRegion (\F422, SystemMemory, Arg0, Arg1)
            Field (F422, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                CNTF,   8
            }

            Return (Zero)
        }

        Method (GBST, 2, NotSerialized)
        {
            OperationRegion (\F423, SystemMemory, Arg0, Arg1)
            Field (F423, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BOT1,   64, 
                BOT2,   64
            }

            Store (TBOT, BOT1)
            Store (RTC3, Local0)
            ShiftLeft (Local0, 0x08, Local0)
            Add (RTC2, Local0, Local0)
            ShiftLeft (Local0, 0x08, Local0)
            Add (RTC1, Local0, Local0)
            Store (Local0, BOT2)
            Return (Zero)
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        OperationRegion (ECID, SystemIO, 0x0257, One)
        Field (ECID, ByteAcc, NoLock, Preserve)
        {
            EC4D,   8
        }

        OperationRegion (ECIC, SystemIO, 0x0258, One)
        Field (ECIC, ByteAcc, NoLock, Preserve)
        {
            EC4C,   8
        }

        Method (WEIE, 0, Serialized)
        {
            Store (0xFFFF, Local0)
            While (LEqual (And (EC4C, 0x02), 0x02))
            {
                If (LEqual (Local0, Zero))
                {
                    Return (Ones)
                }

                Decrement (Local0)
                Sleep (0x05)
            }

            Return (Zero)
        }

        Method (WEOF, 0, Serialized)
        {
            Store (0xFFFF, Local0)
            While (LNotEqual (And (EC4C, One), One))
            {
                If (LEqual (Local0, Zero))
                {
                    Return (Ones)
                }

                Decrement (Local0)
                Sleep (0x05)
            }

            Return (Zero)
        }

        Method (WEOE, 0, NotSerialized)
        {
            Store (0xFFFF, Local0)
            While (LEqual (And (EC4C, One), One))
            {
                If (LEqual (Local0, Zero))
                {
                    Return (Ones)
                }

                Decrement (Local0)
                Sleep (0x05)
                Store (EC4D, Local1)
            }

            Return (Zero)
        }

        Method (ST83, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x83, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEOF (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (EC4D, Local0)
                Release (MU4T)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (ST84, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x84, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (ST85, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x85, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEOF (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (EC4D, Local0)
                Release (MU4T)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (ST86, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x86, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (ST87, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x87, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LEqual (Arg0, Zero))
                {
                    If (LNotEqual (WEOF (), Zero))
                    {
                        Release (MU4T)
                        Return (Ones)
                    }

                    Store (EC4D, Local0)
                }

                Release (MU4T)
                If (LEqual (Arg0, Zero))
                {
                    Return (Local0)
                }

                Return (Zero)
            }

            Return (Ones)
        }

        Method (ST8E, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x8E, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEOF (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (EC4D, Local0)
                Release (MU4T)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (ST95, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x95, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LEqual (Arg0, Zero))
                {
                    If (LNotEqual (WEOF (), Zero))
                    {
                        Release (MU4T)
                        Return (Ones)
                    }

                    Store (EC4D, Local0)
                }

                Release (MU4T)
                If (LEqual (Arg0, Zero))
                {
                    Return (Local0)
                }

                Return (Zero)
            }

            Return (Ones)
        }

        Method (ST98, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x98, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (ST9E, 3, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x9E, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg2, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (STA8, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xA8, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEOF (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (EC4D, Local0)
                Release (MU4T)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (ST9F, 3, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x9F, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg2, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (STA9, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xA9, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (GBTT, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (EB0T, Local0)
                }
                Else
                {
                    Store (EB1T, Local0)
                }
            }
            Else
            {
                Store (0xFF, Local0)
            }

            Return (Local0)
        }

        Method (WCMD, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                Store (Arg0, CMD1)
                Release (MUEC)
            }
        }

        Method (DLY0, 1, Serialized)
        {
            If (LNot (ECAV ()))
            {
                Return (Ones)
            }

            Store (Ones, Local0)
            Acquire (MUEC, 0xFFFF)
            Store (Arg0, CDT1)
            Store (0x6B, CDT2)
            Store (Zero, CDT3)
            Store (0xBB, CMD1)
            Store (0x7F, Local1)
            While (LAnd (Local1, CMD1))
            {
                Sleep (One)
                Decrement (Local1)
            }

            If (LEqual (CMD1, Zero))
            {
                Store (CDT1, Local0)
            }

            Release (MUEC)
            Return (Local0)
        }

        Method (RRAM, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, Local0)
                And (Local0, 0xFF, Local1)
                ShiftRight (Local0, 0x08, Local0)
                And (Local0, 0xFF, Local0)
                Store (0x80, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Local0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Local1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEOF (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (EC4D, Local0)
                Release (MU4T)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (WRAM, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, Local0)
                And (Local0, 0xFF, Local1)
                ShiftRight (Local0, 0x08, Local0)
                And (Local0, 0xFF, Local0)
                Store (0x81, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Local0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Local1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg1, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (One, Local0)
                Release (MU4T)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (STBR, 0, Serialized)
        {
            Store (Zero, Local0)
            Store (Zero, Local1)
            Store (Zero, Local2)
            If (And (VGAF, One))
            {
                Store (One, Local0)
            }

            If (LAnd (Local0, ALDE))
            {
                Store (One, Local1)
            }

            If (Local0)
            {
                Store (One, Local2)
            }

            If (Local1)
            {
                ISMI (0x9A)
            }
            Else
            {
                If (LEqual (Local2, One))
                {
                    If (LNotEqual (MSOS (), OSEG))
                    {
                        Store (BRTI, Local4)
                        ShiftLeft (Local4, 0x04, Local4)
                        Store (LBTN, Local3)
                        Store (Add (Local4, Local3), Local3)
                        ^^^GFX0.AINT (One, Divide (Multiply (DerefOf (Index (PWAC, Local3)), 0x64
                            ), 0xFF, ))
                    }
                    Else
                    {
                        ISMI (0x9A)
                    }
                }
                Else
                {
                    If (LEqual (Local2, Zero))
                    {
                        If (LNot (ALAE))
                        {
                            ECCB ()
                        }
                    }
                    Else
                    {
                        If (LEqual (Local2, 0x02))
                        {
                            ISMI (0x9A)
                        }
                        Else
                        {
                        }
                    }
                }
            }
        }

        Method (ECCB, 0, Serialized)
        {
            If (LOr (ACAP (), LEqual (MSOS (), OSVT)))
            {
                Store (LBTN, Local0)
            }
            Else
            {
                Store (LBTN, Local0)
            }

            Store (BRTI, Local1)
            ShiftLeft (Local1, 0x04, Local1)
            Add (Local0, Local1, Local1)
            Store (DerefOf (Index (PWAC, Local1)), Local0)
            SADC (Local0)
        }

        Method (SBRV, 1, Serialized)
        {
            ST86 (Zero, Arg0)
        }

        Name (DECF, Zero)
        Method (SFNV, 2, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                If (And (DECF, One))
                {
                    Store (RRAM (0x0521), Local0)
                    Or (Local0, 0x80, Local0)
                    WRAM (0x0521, Local0)
                }

                If (And (DECF, 0x02))
                {
                    Store (RRAM (0x0522), Local0)
                    Or (Local0, 0x80, Local0)
                    WRAM (0x0522, Local0)
                }

                Store (Zero, DECF)
                Return (Zero)
            }

            If (LEqual (Arg0, One))
            {
                Store (RRAM (0x0521), Local0)
                And (Local0, 0x7F, Local0)
                WRAM (0x0521, Local0)
                Or (DECF, One, DECF)
                ST84 (Zero, Arg1)
                Return (Zero)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (RRAM (0x0522), Local0)
                And (Local0, 0x7F, Local0)
                WRAM (0x0522, Local0)
                Or (DECF, 0x02, DECF)
                ST84 (One, Arg1)
                Return (Zero)
            }

            Return (Zero)
        }

        Method (SADC, 1, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MU4T, 0xFFFF)
                If (LNotEqual (WEOE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0xFF, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (0x86, EC4C)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Zero, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Store (Arg0, EC4D)
                If (LNotEqual (WEIE (), Zero))
                {
                    Release (MU4T)
                    Return (Ones)
                }

                Release (MU4T)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (SPIN, 2, Serialized)
        {
            If (Arg1)
            {
                ST87 (0x20, Arg0)
            }
            Else
            {
                ST87 (0x40, Arg0)
            }

            Return (One)
        }

        Method (RPIN, 1, Serialized)
        {
            Store (ST87 (Zero, Arg0), Local1)
            Return (Local1)
        }

        Method (RBAT, 2, Serialized)
        {
            If (LNot (ECAV ()))
            {
                Return (Ones)
            }

            Acquire (MUEC, 0xFFFF)
            Store (0x03, Local0)
            While (Local0)
            {
                Store (Arg0, CDT2)
                Store (Arg1, Local1)
                ShiftLeft (Local1, One, Local1)
                Add (Local1, 0xDA, Local1)
                Store (Local1, CMD1)
                Store (0x7F, Local1)
                While (LAnd (CMD1, Local1))
                {
                    Decrement (Local1)
                    Sleep (One)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (CDT1, Local1)
                    Store (Zero, Local0)
                }
                Else
                {
                    Store (Ones, Local1)
                    Decrement (Local0)
                }
            }

            Release (MUEC)
            Return (Local1)
            Return (Ones)
        }

        Method (WBAT, 3, Serialized)
        {
            Or (Arg0, 0x80, Local3)
            If (LNot (ECAV ()))
            {
                Return (Ones)
            }

            Acquire (MUEC, 0xFFFF)
            Store (0x03, Local0)
            While (Local0)
            {
                Store (Arg2, CDT1)
                Store (Local3, CDT2)
                Store (Arg1, Local1)
                ShiftLeft (Local1, One, Local1)
                Add (Local1, 0xDA, Local1)
                Store (Local1, CMD1)
                Store (0x7F, Local1)
                While (LAnd (CMD1, Local1))
                {
                    Decrement (Local1)
                    Sleep (One)
                }
            }

            Release (MUEC)
            Return (Local1)
            Return (Ones)
        }

        Method (FNCT, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                Store (Arg0, CDT2)
                Store (Arg1, CDT1)
                Store (0xC4, CMD1)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                Release (MUEC)
            }
        }

        Name (WRQK, 0x02)
        Name (RDQK, 0x03)
        Name (SDBT, 0x04)
        Name (RCBT, 0x05)
        Name (WRBT, 0x06)
        Name (RDBT, 0x07)
        Name (WRWD, 0x08)
        Name (RDWD, 0x09)
        Name (WRBL, 0x0A)
        Name (RDBL, 0x0B)
        Name (PCLL, 0x0C)
        Name (GOOD, Zero)
        Name (UKER, 0x07)
        Name (DAER, 0x10)
        Name (CMDN, 0x12)
        Name (UKE2, 0x13)
        Name (DADN, 0x17)
        Name (SBTO, 0x18)
        Name (USPT, 0x19)
        Name (SBBY, 0x1A)
        Method (SWTC, 1, Serialized)
        {
            Store (UKER, Local0)
            Store (0x03, Local1)
            While (LAnd (Local0, Local1))
            {
                Store (0x23, Local2)
                While (Local2)
                {
                    If (PRTC)
                    {
                        Sleep (One)
                        Decrement (Local2)
                    }
                    Else
                    {
                        Store (Zero, Local2)
                        Store (SSTS, Local0)
                    }
                }

                If (Local0)
                {
                    Store (Zero, PRTC)
                    Decrement (Local1)
                    If (Local1)
                    {
                        Sleep (One)
                        Store (Arg0, PRTC)
                    }
                }
            }

            Return (Local0)
        }

        Method (SMBR, 3, Serialized)
        {
            Store (Package (0x03)
                {
                    0x07, 
                    Zero, 
                    Zero
                }, Local0)
            If (LNot (ECAV ()))
            {
                Return (Local0)
            }

            If (LNotEqual (Arg0, RDBL))
            {
                If (LNotEqual (Arg0, RDWD))
                {
                    If (LNotEqual (Arg0, RDBT))
                    {
                        If (LNotEqual (Arg0, RCBT))
                        {
                            If (LNotEqual (Arg0, RDQK))
                            {
                                Return (Local0)
                            }
                        }
                    }
                }
            }

            Acquire (MUEC, 0xFFFF)
            Store (PRTC, Local1)
            Store (Zero, Local2)
            While (LNotEqual (Local1, Zero))
            {
                Stall (0x0A)
                Increment (Local2)
                If (LGreater (Local2, 0x03E8))
                {
                    Store (SBBY, Index (Local0, Zero))
                    Store (Zero, Local1)
                }
                Else
                {
                    Store (PRTC, Local1)
                }
            }

            If (LLessEqual (Local2, 0x03E8))
            {
                ShiftLeft (Arg1, One, Local3)
                Or (Local3, One, Local3)
                Store (Local3, ADDR)
                If (LNotEqual (Arg0, RDQK))
                {
                    If (LNotEqual (Arg0, RCBT))
                    {
                        Store (Arg2, CMDB)
                    }
                }

                Store (Zero, BDAT)
                Store (Arg0, PRTC)
                Store (SWTC (Arg0), Index (Local0, Zero))
                If (LEqual (DerefOf (Index (Local0, Zero)), Zero))
                {
                    If (LEqual (Arg0, RDBL))
                    {
                        Store (BCNT, Index (Local0, One))
                        Store (BDAT, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RDWD))
                    {
                        Store (0x02, Index (Local0, One))
                        Store (DT2B, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RDBT))
                    {
                        Store (One, Index (Local0, One))
                        Store (DAT0, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RCBT))
                    {
                        Store (One, Index (Local0, One))
                        Store (DAT0, Index (Local0, 0x02))
                    }
                }
            }

            Release (MUEC)
            Return (Local0)
        }

        Method (SMBW, 5, Serialized)
        {
            Store (Package (0x01)
                {
                    0x07
                }, Local0)
            If (LNot (ECAV ()))
            {
                Return (Local0)
            }

            If (LNotEqual (Arg0, WRBL))
            {
                If (LNotEqual (Arg0, WRWD))
                {
                    If (LNotEqual (Arg0, WRBT))
                    {
                        If (LNotEqual (Arg0, SDBT))
                        {
                            If (LNotEqual (Arg0, WRQK))
                            {
                                Return (Local0)
                            }
                        }
                    }
                }
            }

            Acquire (MUEC, 0xFFFF)
            Store (PRTC, Local1)
            Store (Zero, Local2)
            While (LNotEqual (Local1, Zero))
            {
                Stall (0x0A)
                Increment (Local2)
                If (LGreater (Local2, 0x03E8))
                {
                    Store (SBBY, Index (Local0, Zero))
                    Store (Zero, Local1)
                }
                Else
                {
                    Store (PRTC, Local1)
                }
            }

            If (LLessEqual (Local2, 0x03E8))
            {
                Store (Zero, BDAT)
                ShiftLeft (Arg1, One, Local3)
                Store (Local3, ADDR)
                If (LNotEqual (Arg0, WRQK))
                {
                    If (LNotEqual (Arg0, SDBT))
                    {
                        Store (Arg2, CMDB)
                    }
                }

                If (LEqual (Arg0, WRBL))
                {
                    Store (Arg3, BCNT)
                    Store (Arg4, BDAT)
                }

                If (LEqual (Arg0, WRWD))
                {
                    Store (Arg4, DT2B)
                }

                If (LEqual (Arg0, WRBT))
                {
                    Store (Arg4, DAT0)
                }

                If (LEqual (Arg0, SDBT))
                {
                    Store (Arg4, DAT0)
                }

                Store (Arg0, PRTC)
                Store (SWTC (Arg0), Index (Local0, Zero))
            }

            Release (MUEC)
            Return (Local0)
        }

        Mutex (MUEP, 0x00)
        Method (RBEP, 1, NotSerialized)
        {
            Store (0xFFFF, Local1)
            Acquire (MUEP, 0xFFFF)
            Store (RRAM (0x0620), Local3)
            And (Local3, 0x7F, Local4)
            WRAM (0x0620, Local4)
            Store (0x10, Local2)
            Store (0x10, Local1)
            While (And (LEqual (Local1, 0x10), LNotEqual (Local2, Zero)))
            {
                SMBW (WRWD, BADR, Zero, 0x02, 0x0635)
                SMBW (WRWD, BADR, Zero, 0x02, 0x0606)
                Store (SMBR (RDBT, 0x50, Arg0), Local0)
                Store (DerefOf (Index (Local0, Zero)), Local1)
                Decrement (Local2)
            }

            WRAM (0x0620, Local3)
            ShiftLeft (Local1, 0x08, Local1)
            Or (Local1, DerefOf (Index (Local0, 0x02)), Local1)
            Release (MUEP)
            Return (Local1)
        }

        Method (WBEP, 2, NotSerialized)
        {
            Store (0xFFFF, Local1)
            Acquire (MUEP, 0xFFFF)
            Store (RRAM (0x0620), Local3)
            And (Local3, 0x7F, Local4)
            WRAM (0x0620, Local4)
            Store (0x10, Local2)
            Store (0x10, Local1)
            While (And (LEqual (Local1, 0x10), LNotEqual (Local2, Zero)))
            {
                SMBW (WRWD, BADR, Zero, 0x02, 0x0635)
                SMBW (WRWD, BADR, Zero, 0x02, 0x0606)
                Store (SMBW (WRBT, 0x50, Arg0, One, Arg1), Local0)
                Store (DerefOf (Index (Local0, Zero)), Local1)
                Decrement (Local2)
            }

            WRAM (0x0620, Local3)
            Release (MUEP)
            Return (Local1)
        }

        Method (ECXT, 6, NotSerialized)
        {
            Store (Package (0x06)
                {
                    0x10, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, Local1)
            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                Store (Arg1, CDT1)
                Store (Arg2, CDT2)
                Store (Arg3, CDT3)
                Store (Arg4, CDT4)
                Store (Arg5, CDT5)
                Store (Arg0, CMD1)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (Local0)
                {
                    Store (Zero, Index (Local1, Zero))
                    Store (CDT1, Index (Local1, One))
                    Store (CDT2, Index (Local1, 0x02))
                    Store (CDT3, Index (Local1, 0x03))
                    Store (CDT4, Index (Local1, 0x04))
                    Store (CDT5, Index (Local1, 0x05))
                }
                Else
                {
                    Store (0x10, Index (Local1, Zero))
                }

                Release (MUEC)
            }

            Return (Local1)
        }

        Method (ECSB, 7, NotSerialized)
        {
            Store (Package (0x05)
                {
                    0x11, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Buffer (0x20) {}
                }, Local1)
            If (LGreater (Arg0, One))
            {
                Return (Local1)
            }

            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                If (LEqual (Arg0, Zero))
                {
                    Store (PRTC, Local0)
                }
                Else
                {
                    Store (PRT2, Local0)
                }

                Store (Zero, Local2)
                While (LNotEqual (Local0, Zero))
                {
                    Stall (0x0A)
                    Increment (Local2)
                    If (LGreater (Local2, 0x03E8))
                    {
                        Store (SBBY, Index (Local1, Zero))
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (PRTC, Local0)
                        }
                        Else
                        {
                            Store (PRT2, Local0)
                        }
                    }
                }

                If (LLessEqual (Local2, 0x03E8))
                {
                    If (LEqual (Arg0, Zero))
                    {
                        Store (Arg2, ADDR)
                        Store (Arg3, CMDB)
                        If (LOr (LEqual (Arg1, 0x0A), LEqual (Arg1, 0x0B)))
                        {
                            Store (DerefOf (Index (Arg6, Zero)), BCNT)
                            Store (DerefOf (Index (Arg6, One)), BDAT)
                        }
                        Else
                        {
                            Store (Arg4, DAT0)
                            Store (Arg5, DAT1)
                        }

                        Store (Arg1, PRTC)
                    }
                    Else
                    {
                        Store (Arg2, ADD2)
                        Store (Arg3, CMD2)
                        If (LOr (LEqual (Arg1, 0x0A), LEqual (Arg1, 0x0B)))
                        {
                            Store (DerefOf (Index (Arg6, Zero)), BCN2)
                            Store (DerefOf (Index (Arg6, One)), BDA2)
                        }
                        Else
                        {
                            Store (Arg4, DA20)
                            Store (Arg5, DA21)
                        }

                        Store (Arg1, PRT2)
                    }

                    Store (0x7F, Local0)
                    If (LEqual (Arg0, Zero))
                    {
                        While (PRTC)
                        {
                            Sleep (One)
                            Decrement (Local0)
                        }
                    }
                    Else
                    {
                        While (PRT2)
                        {
                            Sleep (One)
                            Decrement (Local0)
                        }
                    }

                    If (Local0)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (SSTS, Local0)
                            Store (DAT0, Index (Local1, One))
                            Store (DAT1, Index (Local1, 0x02))
                            Store (BCNT, Index (Local1, 0x03))
                            Store (BDAT, Index (Local1, 0x04))
                        }
                        Else
                        {
                            Store (SST2, Local0)
                            Store (DA20, Index (Local1, One))
                            Store (DA21, Index (Local1, 0x02))
                            Store (BCN2, Index (Local1, 0x03))
                            Store (BDA2, Index (Local1, 0x04))
                        }

                        And (Local0, 0x1F, Local0)
                        If (Local0)
                        {
                            Add (Local0, 0x10, Local0)
                        }

                        Store (Local0, Index (Local1, Zero))
                    }
                    Else
                    {
                        Store (0x10, Index (Local1, Zero))
                    }
                }

                Release (MUEC)
            }

            Return (Local1)
        }

        Method (TPSW, 1, NotSerialized)
        {
            And (Arg0, One, Local0)
            If (Local0)
            {
                ECXT (0xB6, 0xB8, One, One, Zero, Zero)
            }
            Else
            {
                ECXT (0xB6, 0xB8, One, 0x02, Zero, Zero)
            }
        }

        Method (TPST, 0, NotSerialized)
        {
            Store (ECXT (0xB6, 0xB8, 0x02, Zero, Zero, Zero), Local0)
            Store (DerefOf (Index (Local0, One)), Local1)
            If (LEqual (Local1, Zero))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (LBSW, 1, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                ECXT (0xB6, 0xB9, One, Zero, Zero, Zero)
            }
            Else
            {
                ECXT (0xB6, 0xB9, 0x02, Zero, Zero, Zero)
            }
        }

        Method (LBST, 0, NotSerialized)
        {
            Store (RRAM (0x044A), Local0)
            And (Local0, 0x03, Local0)
            Return (Local0)
        }

        Method (TALS, 1, NotSerialized)
        {
            If (Arg0)
            {
                Store (RRAM (0x04CD), Local0)
                And (Local0, 0xF1, Local0)
                Or (Local0, 0x02, Local0)
                WRAM (0x04CD, Local0)
            }
            Else
            {
                Store (RRAM (0x04CD), Local0)
                And (Local0, 0xFD, Local0)
                WRAM (0x04CD, Local0)
            }
        }

        Method (RALS, 0, NotSerialized)
        {
            Store (RRAM (0x04C9), Local0)
            If (LLessEqual (Local0, One))
            {
                Store (0x32, Local1)
            }
            Else
            {
                If (LLessEqual (Local0, 0x06))
                {
                    Store (0xC8, Local1)
                }
                Else
                {
                    If (LLessEqual (Local0, 0x09))
                    {
                        Store (0x0190, Local1)
                    }
                    Else
                    {
                        If (LLessEqual (Local0, 0x0E))
                        {
                            Store (0x0258, Local1)
                        }
                        Else
                        {
                            Store (0x0320, Local1)
                        }
                    }
                }
            }

            Return (Local1)
        }
    }

    Scope (\)
    {
        Name (TSP, 0x0A)
        Name (TC1, 0x02)
        Name (TC2, 0x0A)
    }

    Scope (_TZ)
    {
        Method (KELV, 1, NotSerialized)
        {
            And (Arg0, 0xFF, Local0)
            If (LGreaterEqual (Local0, 0x80))
            {
                Subtract (0x0100, Local0, Local0)
                Multiply (Local0, 0x0A, Local0)
                Subtract (0x0AAC, Local0, Local0)
                Return (Local0)
            }

            Multiply (Local0, 0x0A, Local0)
            Add (Local0, 0x0AAC, Local0)
            Return (Local0)
        }

        Method (CELC, 1, NotSerialized)
        {
            Subtract (Arg0, 0x0AAC, Local0)
            Divide (Local0, 0x0A, Local1, Local0)
            Return (Local0)
        }

        Name (PLCY, Zero)
        ThermalZone (THRM)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                RCRT ()
                Return (KELV (\_SB.TCRT))
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Store (0x05, Local1)
                While (Local1)
                {
                    Store (RTMP (), Local0)
                    If (LGreater (Local0, \_SB.TCRT))
                    {
                        Decrement (Local1)
                    }
                    Else
                    {
                        Store (Zero, Local1)
                    }
                }

                Return (KELV (Local0))
            }

            Name (_PSL, Package (0x04)  // _PSL: Passive List
            {
                \_PR.CPU0, 
                \_PR.CPU1, 
                \_PR.CPU2, 
                \_PR.CPU3
            })
            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Multiply (TSP, 0x0A, Local0)
                Return (Local0)
            }

            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1)
            }

            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2)
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                RPSV ()
                If (PLCY)
                {
                    Return (KELV (\_SB.PPSV))
                }
                Else
                {
                    Return (KELV (\_SB.TPSV))
                }
            }

            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                Store (Zero, PLCY)
                Notify (THRM, 0x81)
            }
        }
    }

    Scope (_TZ)
    {
        Name (ATMP, 0x3C)
        Name (LTMP, 0x3C)
        Name (FANS, Zero)
        Method (RTMP, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.EC0.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.EC0.ECPU, Local0)
                If (LLess (Local0, 0x80))
                {
                    Store (Local0, LTMP)
                }
            }

            Return (LTMP)
        }

        Method (RCRT, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.EC0.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.EC0.ECRT, Local0)
                If (LLess (Local0, 0x80))
                {
                    Store (Local0, \_SB.TCRT)
                }
            }
        }

        Method (RPSV, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.EC0.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.EC0.EPSV, Local0)
                If (LLess (Local0, 0x80))
                {
                    Store (Local0, \_SB.TPSV)
                }
            }
        }

        Method (RFAN, 1, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.EC0.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.EC0.ST83 (Arg0), Local0)
                If (LEqual (Local0, 0xFF))
                {
                    Return (Local0)
                }

                Store (\_SB.PCI0.LPCB.EC0.TACH (Arg0), Local0)
                Divide (Local0, 0x64, Local1, Local0)
                Add (Local0, One, Local0)
                If (LLessEqual (Local0, 0x3C))
                {
                    Store (Local0, FANS)
                }
                Else
                {
                    Store (FANS, Local0)
                }
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (RFSE, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.EC0.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.EC0.ST83 (Zero), Local1)
                If (LLess (Local1, 0x80))
                {
                    If (LLess (Local1, 0x0A))
                    {
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        Store (One, Local0)
                    }
                }
                Else
                {
                    If (LLess (Local1, 0xF5))
                    {
                        Store (0x02, Local0)
                    }
                    Else
                    {
                        Store (0x03, Local0)
                    }
                }
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (TCHG, 0, NotSerialized)
        {
        }

        Method (THDL, 0, NotSerialized)
        {
        }

        Method (TMSS, 1, NotSerialized)
        {
        }

        Method (TMSW, 1, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Name (PWAC, Buffer (0x40)
        {
            /* 0000 */   0x1D, 0x2E, 0x3B, 0x48, 0x55, 0x61, 0x6E, 0x7B,
            /* 0008 */   0x9A, 0xC5, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0010 */   0x21, 0x2E, 0x3B, 0x48, 0x55, 0x61, 0x6E, 0x7B,
            /* 0018 */   0x9A, 0xC5, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0020 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0028 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0030 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0038 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        })
        Name (BLCT, Zero)
        Method (ACPS, 0, Serialized)
        {
            Return (And (GPWS (), One))
        }

        Method (DCPS, 1, Serialized)
        {
            Store (GPWS (), Local0)
            If (Arg0)
            {
                And (Local0, 0x04, Local0)
            }
            Else
            {
                And (Local0, 0x02, Local0)
            }

            If (Local0)
            {
                Store (One, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (GPWS, 0, Serialized)
        {
            Store (EPWS, Local0)
            Return (Local0)
        }

        Method (BCHG, 1, Serialized)
        {
            If (Arg0)
            {
                If (ECAV ())
                {
                    Store (EB1S, Local0)
                    And (Local0, 0xFF, Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        And (Local0, 0x02, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (Zero, Local0)
                }

                Return (Local0)
            }
            Else
            {
                If (ECAV ())
                {
                    Store (EB0S, Local0)
                    And (Local0, 0xFF, Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        And (Local0, 0x02, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (Zero, Local0)
                }

                Return (Local0)
            }
        }

        Method (BCLE, 1, Serialized)
        {
            If (Arg0)
            {
                If (ECAV ())
                {
                    Store (Ones, Local0)
                    Store (EB1S, Local1)
                    And (Local1, 0xFFFF, Local1)
                    If (LNotEqual (Local1, 0xFFFF))
                    {
                        And (Local1, 0x16, Local1)
                        If (LEqual (Local1, 0x04))
                        {
                            Store (Zero, Local0)
                        }
                        Else
                        {
                            If (LEqual (Local1, 0x02))
                            {
                                Store (One, Local0)
                            }
                            Else
                            {
                                If (LEqual (Local1, 0x10))
                                {
                                    Store (One, Local0)
                                }
                            }
                        }
                    }
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }
            Else
            {
                If (ECAV ())
                {
                    Store (Ones, Local0)
                    Store (EB0S, Local1)
                    And (Local1, 0xFFFF, Local1)
                    If (LNotEqual (Local1, 0xFFFF))
                    {
                        And (Local1, 0x16, Local1)
                        If (LEqual (Local1, 0x04))
                        {
                            Store (Zero, Local0)
                        }
                        Else
                        {
                            If (LEqual (Local1, 0x02))
                            {
                                Store (One, Local0)
                            }
                            Else
                            {
                                If (LEqual (Local1, 0x10))
                                {
                                    Store (One, Local0)
                                }
                            }
                        }
                    }
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }
        }

        Method (CHBT, 1, Serialized)
        {
            If (ECAV ())
            {
                Store (GBTT (Arg0), Local1)
                If (LEqual (Local1, 0xFF))
                {
                    Store (Zero, Local0)
                }
                Else
                {
                    And (Local1, 0x10, Local0)
                    If (Local0)
                    {
                        Store (One, Local0)
                    }
                }
            }
            Else
            {
                Store (DCTP, Local0)
            }

            Return (Local0)
        }

        Method (TACH, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (ECAV ())
            {
                While (One)
                {
                    Store (Arg0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (TAH0, Local0)
                        Break
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            Store (TAH1, Local0)
                            Break
                        }
                        Else
                        {
                            Return (Ones)
                        }
                    }

                    Break
                }

                Multiply (Local0, 0x02, Local0)
                If (LNotEqual (Local0, Zero))
                {
                    Divide (0x0041CDB4, Local0, Local1, Local0)
                    Return (Local0)
                }
                Else
                {
                    Return (Ones)
                }
            }
            Else
            {
                Return (Ones)
            }
        }

        Name (HKFG, Zero)
        Name (KBST, Zero)
        Name (KBBR, Zero)
        Name (ALST, Zero)
        Method (EC0S, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03))
            {
                Store (RRAM (0x0449), KBST)
                Store (RRAM (0x044B), KBBR)
                Store (RRAM (0x04CD), ALST)
            }

            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                Store (RRAM (0x0449), Local0)
                And (Local0, 0x02, Local1)
                If (Local1)
                {
                    WRAM (0x044B, Zero)
                    And (Local0, 0xFA, Local1)
                    WRAM (0x0449, Local1)
                }
            }

            If (LEqual (Arg0, 0x05))
            {
                Store (RRAM (0x0449), Local0)
                And (Local0, 0x02, Local1)
                If (Local1)
                {
                    WRAM (0x044B, Zero)
                }
            }

            If (LGreater (Arg0, 0x04)) {}
            Store (HKEN, HKFG)
        }

        Method (EC0W, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03))
            {
                WRAM (0x0449, KBST)
                WRAM (0x044B, KBBR)
                WRAM (0x04CD, ALST)
                Store (ST8E (0x05, Zero), Local0)
                And (Local0, 0xFF, Local1)
                Store (ST8E (Zero, Zero), Local0)
                And (Local0, 0x40, Local2)
                If (LEqual (Local1, 0x31))
                {
                    Notify (PWRB, 0x02)
                }
                Else
                {
                    If (LEqual (Local1, 0x32))
                    {
                        Notify (PWRB, 0x02)
                    }
                    Else
                    {
                        If (LEqual (Local1, 0x33))
                        {
                            Notify (PWRB, 0x02)
                        }
                        Else
                        {
                            If (LEqual (Local1, 0x3D))
                            {
                                Notify (PWRB, 0x02)
                            }
                            Else
                            {
                                If (LEqual (Local1, 0x3E))
                                {
                                    Notify (PWRB, 0x02)
                                }
                                Else
                                {
                                    If (LEqual (Local2, 0x40))
                                    {
                                        Notify (PWRB, 0x02)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            If (LLessEqual (Arg0, 0x04))
            {
                Store (DCPS (Zero), DCPF)
                Store (ACPS (), Local0)
                If (LNotEqual (Local0, ACPF))
                {
                    Store (ACPS (), ACPF)
                    PNOT ()
                }
            }

            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                Store (RRAM (0x04CD), Local0)
                And (Local0, 0xFE, Local0)
                WRAM (0x04CD, Local0)
                Store (RRAM (0x0449), Local0)
                And (Local0, 0x02, Local1)
                If (Local1)
                {
                    Or (Local0, One, Local0)
                    WRAM (0x0449, Local0)
                }
            }

            If (LEqual (Arg0, 0x05)) {}
            If (LGreaterEqual (Arg0, 0x04))
            {
                Store (HKFG, HKEN)
            }

            If (And (WOLO, One))
            {
                Store (0x0580, Local0)
                Add (Local0, 0x03, Local0)
                Store (RRAM (Local0), Local1)
                Or (Local1, 0x05, Local1)
                WRAM (Local0, Local1)
            }

            If (And (DSYN, One))
            {
                ST9F (0x2B, 0x20, 0x20)
            }
        }

        Name (FHKM, One)
        Method (FHKW, 0, Serialized)
        {
            While (LNot (FHKM))
            {
                Sleep (0x0A)
            }

            Store (Zero, FHKM)
        }

        Method (FHKS, 0, Serialized)
        {
            Store (One, FHKM)
        }

        Method (_Q01, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x52)
            }
        }

        Method (_Q02, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x53)
            }
        }

        Method (_Q03, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x54)
            }
        }

        Method (_Q04, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x55)
            }
        }

        Method (_Q05, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x56)
            }
        }

        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (SLPB, 0x80)
        }

        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (And (^^^^ATKD.WAPF, 0x04))
            {
                If (ATKP)
                {
                    ^^^^ATKD.IANE (0x88)
                }
            }
            Else
            {
                Store (OHWR (), Local0)
                If (And (Local0, 0x02))
                {
                    If (And (Local0, One))
                    {
                        Store (One, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (One, Local0)
                }

                If (Local0)
                {
                    If (And (^^^^ATKD.WAPF, One))
                    {
                        If (LAnd (WLDP, BTDP))
                        {
                            Store (WRST, Local0)
                            Or (ShiftLeft (BRST, One), Local0, Local0)
                            Increment (Local0)
                            If (LGreater (Local0, 0x03))
                            {
                                Store (Zero, Local0)
                            }

                            Store (DerefOf (Index (WBTL, Local0)), Local1)
                            If (LEqual (Local1, Zero))
                            {
                                ^^^^ATKD.IANE (0x74)
                                OWLD (Zero)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                            }

                            If (LEqual (Local1, One))
                            {
                                ^^^^ATKD.IANE (0x73)
                                OWLD (One)
                                Sleep (0x0DAC)
                                OBTD (One)
                            }

                            If (LEqual (Local1, 0x02))
                            {
                                ^^^^ATKD.IANE (0x74)
                                OWLD (Zero)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                            }

                            If (LEqual (Local1, 0x03))
                            {
                                ^^^^ATKD.IANE (0x74)
                                OWLD (Zero)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                            }
                        }
                        Else
                        {
                            If (WLDP)
                            {
                                ^^^^ATKD.IANE (0x5D)
                            }
                            Else
                            {
                                If (BTDP)
                                {
                                    If (BRST)
                                    {
                                        OBTD (Zero)
                                        ^^^^ATKD.IANE (0x7E)
                                    }
                                    Else
                                    {
                                        OBTD (One)
                                        ^^^^ATKD.IANE (0x7D)
                                    }
                                }
                            }
                        }
                    }
                    Else
                    {
                        If (LAnd (WLDP, BTDP))
                        {
                            Store (WRST, Local0)
                            Or (ShiftLeft (BRST, One), Local0, Local0)
                            Increment (Local0)
                            If (LGreater (Local0, 0x03))
                            {
                                Store (Zero, Local0)
                            }

                            Store (DerefOf (Index (WBTL, Local0)), Local1)
                            If (LEqual (Local1, Zero))
                            {
                                OWLD (Zero)
                                ^^^^ATKD.IANE (0x5F)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                                ^^^^ATKD.IANE (0x7E)
                            }

                            If (LEqual (Local1, One))
                            {
                                OWLD (One)
                                ^^^^ATKD.IANE (0x5E)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                                ^^^^ATKD.IANE (0x7E)
                            }

                            If (LEqual (Local1, 0x02))
                            {
                                OWLD (Zero)
                                ^^^^ATKD.IANE (0x5F)
                                Sleep (0x0DAC)
                                OBTD (One)
                                ^^^^ATKD.IANE (0x7D)
                            }

                            If (LEqual (Local1, 0x03))
                            {
                                OWLD (One)
                                ^^^^ATKD.IANE (0x5E)
                                Sleep (0x0DAC)
                                OBTD (One)
                                ^^^^ATKD.IANE (0x7D)
                            }
                        }
                        Else
                        {
                            If (WLDP)
                            {
                                If (WRST)
                                {
                                    OWLD (Zero)
                                    ^^^^ATKD.IANE (0x5F)
                                }
                                Else
                                {
                                    OWLD (One)
                                    ^^^^ATKD.IANE (0x5E)
                                }
                            }
                            Else
                            {
                                If (BTDP)
                                {
                                    If (BRST)
                                    {
                                        OBTD (Zero)
                                        ^^^^ATKD.IANE (0x7E)
                                    }
                                    Else
                                    {
                                        OBTD (One)
                                        ^^^^ATKD.IANE (0x7D)
                                    }
                                }
                            }
                        }
                    }
                }
                Else
                {
                    If (WLDP) {}
                    If (LAnd (WLDP, BTDP))
                    {
                        Sleep (0x0DAC)
                    }

                    If (BTDP)
                    {
                        ^^^^ATKD.IANE (0x7E)
                    }
                }
            }
        }

        Name (WBTL, Package (0x04)
        {
            Zero, 
            One, 
            0x02, 
            0x03
        })
        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
        {
            ^^^^ATKD.IANE (0xC5)
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
        {
            ^^^^ATKD.IANE (0xC4)
        }

        Name (ASBN, Zero)
        Method (SBRN, 0, Serialized)
        {
            If (^^^GFX0.PRST ())
            {
                Store (^^^GFX0.GCBL (^^^GFX0.CBLV), Local0)
                Subtract (0x0A, Local0, Local1)
                If (LNotEqual (Local1, LBTN))
                {
                    Store (Local1, LBTN)
                }
            }
        }

        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
        {
            SBRN ()
            If (LGreaterEqual (MSOS (), OSVT))
            {
                Store (LBTN, Local0)
                If (^^^GFX0.PRST ())
                {
                    If (LNotEqual (^^^GFX0.LCDD._DCS (), 0x1F))
                    {
                        Return (One)
                    }

                    ^^^GFX0.DWBL ()
                    Store (One, ASBN)
                }

                Store (Zero, ASBN)
                If (ATKP)
                {
                    If (LGreater (Local0, Zero))
                    {
                        Decrement (Local0)
                    }

                    If (LGreater (Local0, 0x0A))
                    {
                        Store (0x0A, Local0)
                    }

                    Store (Local0, LBTN)
                    ^^^^ATKD.IANE (Add (Local0, 0x20))
                }
            }
            Else
            {
                If (LGreater (LBTN, Zero))
                {
                    Decrement (LBTN)
                }

                If (LGreater (LBTN, 0x0A))
                {
                    Store (0x0A, LBTN)
                }

                STBR ()
                If (ATKP)
                {
                    ^^^^ATKD.IANE (Add (LBTN, 0x20))
                }
            }

            Return (One)
        }

        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
        {
            SBRN ()
            If (LGreaterEqual (MSOS (), OSVT))
            {
                Store (LBTN, Local0)
                If (^^^GFX0.PRST ())
                {
                    If (LNotEqual (^^^GFX0.LCDD._DCS (), 0x1F))
                    {
                        Return (One)
                    }

                    ^^^GFX0.UPBL ()
                    Store (One, ASBN)
                }

                Store (Zero, ASBN)
                If (ATKP)
                {
                    If (LLess (Local0, 0x0A))
                    {
                        Increment (Local0)
                    }
                    Else
                    {
                        Store (0x0A, Local0)
                    }

                    Store (Local0, LBTN)
                    ^^^^ATKD.IANE (Add (Local0, 0x10))
                }
            }
            Else
            {
                If (LLess (LBTN, 0x0A))
                {
                    Increment (LBTN)
                }
                Else
                {
                    Store (0x0A, LBTN)
                }

                STBR ()
                If (ATKP)
                {
                    ^^^^ATKD.IANE (Add (LBTN, 0x10))
                }
            }

            Return (One)
        }

        Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LEqual (BLCT, Zero))
            {
                Store (One, Local0)
                Store (RPIN (0x72), Local0)
                XOr (Local0, One, Local0)
                SPIN (0x72, Local0)
                If (ATKP)
                {
                    Subtract (0x34, Local0, Local0)
                    ^^^^ATKD.IANE (Local0)
                }
            }
            Else
            {
                If (LEqual (BLCT, One))
                {
                    If (ATKP)
                    {
                        ^^^^ATKD.IANE (0x35)
                    }
                }
            }
        }

        Method (_Q11, 0, Serialized)  // _Qxx: EC Query
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            FHKW ()
            Store (ADVG (), Local0)
            If (NATK ())
            {
                If (LLess (Local0, 0x08))
                {
                    Add (Local0, 0x60, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x10))
                    {
                        Subtract (Local0, 0x08, Local1)
                        Add (Local1, 0x8C, Local1)
                    }
                    Else
                    {
                        If (LLess (Local0, 0x20))
                        {
                            And (Local0, 0x07, Local1)
                            Add (Local1, 0xA0, Local1)
                        }
                        Else
                        {
                            If (LLess (Local0, 0x40))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Local0), _T_0)
                                    If (LEqual (_T_0, 0x20))
                                    {
                                        Store (0xD0, Local1)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x21))
                                        {
                                            Store (0xD1, Local1)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x22))
                                            {
                                                Store (0xD2, Local1)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x24))
                                                {
                                                    Store (0xD3, Local1)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x28))
                                                    {
                                                        Store (0xD4, Local1)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x30))
                                                        {
                                                            Store (0xD5, Local1)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                        }
                    }
                }

                If (ATKP)
                {
                    If (LNotEqual (Local1, 0x60))
                    {
                        ^^^^ATKD.IANE (Local1)
                    }
                }
                Else
                {
                    SWHG (Local0)
                }
            }
            Else
            {
                SWHG (Local0)
            }

            FHKS ()
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LNot (And (DSYN, One)))
            {
                If (ATKP)
                {
                    ^^^^ATKD.IANE (0x6B)
                }
            }
            Else
            {
                If (ATKP)
                {
                    ^^^^ATKD.IANE (0x6F)
                }
            }
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x32)
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LLess (AVOL, 0x0F))
            {
                Increment (AVOL)
            }

            If (ATKP)
            {
                ^^^^ATKD.IANE (0x31)
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreater (AVOL, Zero))
            {
                Decrement (AVOL)
            }

            If (ATKP)
            {
                ^^^^ATKD.IANE (0x30)
            }
        }

        Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x45)
            }
        }

        Method (_Q6E, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x43)
            }
        }

        Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x40)
            }
        }

        Method (_Q6D, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x41)
            }
        }

        Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x5C)
            }
        }

        Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x8A)
            }
        }

        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x82)
            }
        }

        Method (_Q76, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x7A)
            }
        }

        Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0xB5)
            }
        }

        Method (_Q78, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x84)
            }
        }

        Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x5C)
            }
        }

        Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (OHWR (), Local0)
            If (And (Local0, 0x02))
            {
                If (And (^^^^ATKD.WAPF, 0x04))
                {
                    If (ATKP)
                    {
                        If (And (Local0, One))
                        {
                            ^^^^ATKD.IANE (0x80)
                        }
                        Else
                        {
                            ^^^^ATKD.IANE (0x81)
                        }
                    }
                }
                Else
                {
                    If (And (^^^^ATKD.WAPF, One))
                    {
                        If (And (Local0, One))
                        {
                            If (WLDP)
                            {
                                If (LEqual (And (^^^RP02.WLAN.VNUM, 0xFFFF), 0x8086))
                                {
                                    Sleep (0x09C4)
                                }

                                If (LEqual (WRPS, One))
                                {
                                    ^^^^ATKD.IANE (0x5E)
                                }
                                Else
                                {
                                    ^^^^ATKD.IANE (0x5F)
                                }
                            }

                            If (LAnd (WLDP, BTDP))
                            {
                                Sleep (0x0DAC)
                            }

                            If (BTDP)
                            {
                                If (BRPS)
                                {
                                    OBTD (One)
                                    ^^^^ATKD.IANE (0x7D)
                                }
                                Else
                                {
                                    OBTD (Zero)
                                    ^^^^ATKD.IANE (0x7E)
                                }
                            }
                        }
                        Else
                        {
                            If (WLDP)
                            {
                                Store (WRST, WRPS)
                                ^^^^ATKD.IANE (0x5F)
                            }

                            If (LAnd (WLDP, BTDP))
                            {
                                Sleep (0x0DAC)
                            }

                            If (BTDP)
                            {
                                Store (BRST, BRPS)
                                OBTD (Zero)
                                ^^^^ATKD.IANE (0x7E)
                            }
                        }
                    }
                    Else
                    {
                        If (And (Local0, One))
                        {
                            If (WLDP)
                            {
                                If (WRPS)
                                {
                                    OWLD (One)
                                    ^^^^ATKD.IANE (0x5E)
                                }
                                Else
                                {
                                    OWLD (Zero)
                                    ^^^^ATKD.IANE (0x5F)
                                }
                            }

                            If (LAnd (WLDP, BTDP))
                            {
                                Sleep (0x0DAC)
                            }

                            If (BTDP)
                            {
                                If (BRPS)
                                {
                                    OBTD (One)
                                    ^^^^ATKD.IANE (0x7D)
                                }
                                Else
                                {
                                    OBTD (Zero)
                                    ^^^^ATKD.IANE (0x7E)
                                }
                            }
                        }
                        Else
                        {
                            If (WLDP)
                            {
                                Store (WRST, WRPS)
                                OWLD (Zero)
                                ^^^^ATKD.IANE (0x5F)
                            }

                            If (LAnd (WLDP, BTDP))
                            {
                                Sleep (0x0DAC)
                            }

                            If (BTDP)
                            {
                                Store (BRST, BRPS)
                                OBTD (Zero)
                                ^^^^ATKD.IANE (0x7E)
                            }
                        }
                    }
                }
            }
        }

        Name (OLUX, 0xFF)
        Method (_QDD, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (RALS (), Local0)
            Store (RRAM (0x04C9), Local1)
            If (LNotEqual (OLUX, Local1))
            {
                ^^^GFX0.AINT (Zero, Local0)
                If (ATKP)
                {
                    Store (Zero, Local2)
                    If (LAnd (LLessEqual (OLUX, One), LGreater (Local1, One)))
                    {
                        Store (One, Local2)
                    }
                    Else
                    {
                        If (LAnd (LLessEqual (OLUX, 0x06), LGreater (Local1, 0x06)))
                        {
                            Store (One, Local2)
                        }
                        Else
                        {
                            If (LAnd (LGreaterEqual (OLUX, 0x06), LLess (Local1, 0x06)))
                            {
                                Store (One, Local2)
                            }
                            Else
                            {
                                If (LAnd (LGreaterEqual (OLUX, One), LLess (Local1, One)))
                                {
                                    Store (One, Local2)
                                }
                            }
                        }
                    }

                    If (Local2)
                    {
                        ^^^^ATKD.IANE (0xC6)
                    }
                }
            }

            Store (Local1, OLUX)
        }

        Method (_QB0, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_TZ.THRM, 0x80)
        }

        Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                If (LEqual (PWKY, One))
                {
                    ^^^^ATKD.IANE (0xAC)
                }
                Else
                {
                    Notify (PWRB, 0x80)
                }
            }
            Else
            {
                Notify (PWRB, 0x80)
            }
        }

        Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ACPS ())
            {
                Store (One, ACPF)
                Store (0x58, Local0)
            }
            Else
            {
                Store (Zero, ACPF)
                Store (0x57, Local0)
            }

            If (LNotEqual (MSOS (), OSVT))
            {
                STBR ()
            }

            Notify (AC0, 0x80)
            If (ATKP)
            {
                ^^^^ATKD.IANE (Local0)
            }

            Sleep (0x64)
            PNOT ()
            Sleep (0x0A)
            NBAT (0x80)
        }

        Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (CDFG)
            {
                Store (One, SMBF)
                Store (Zero, CDFG)
            }

            If (ALFG)
            {
                Store (Zero, ALFG)
            }
        }

        Method (_QB3, 0, NotSerialized)  // _Qxx: EC Query
        {
            ^^^^ATKD.IANE (0x6D)
        }

        Method (ECRS, 2, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                Store (Arg0, ADD2)
                Store (Arg1, CMD2)
                Store (0x07, PRT2)
                Store (0x7F, Local0)
                While (PRT2)
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (Local0)
                {
                    Store (DA20, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
            }

            Return (Local0)
        }

        Method (ECWS, 3, Serialized)
        {
            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                Store (Arg0, ADD2)
                Store (Arg1, CMD2)
                Store (Arg2, DA20)
                Store (0x06, PRT2)
                Store (0x07FF, Local0)
                While (PRT2)
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                Release (MUEC)
            }

            Return (Local0)
        }
    }

    Scope (_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Store (One, Local0)
                Store (^^PCI0.LPCB.EC0.RPIN (0x46), Local0)
                If (LEqual (Local0, Ones))
                {
                    Store (One, Local0)
                }

                If (And (VGAF, One))
                {
                    Store (One, ^^PCI0.GFX0.CLID)
                }

                Return (Local0)
            }
        }
    }

    Scope (_GPE)
    {
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Name (KLDT, Zero)
        Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (GLID ())
            {
                WRAM (0x044B, KLDT)
            }
            Else
            {
                Store (RRAM (0x044B), KLDT)
                WRAM (0x044B, Zero)
            }

            Notify (LID, 0x80)
            If (And (VGAF, One))
            {
                Store (GLID (), Local0)
                Store (Local0, LIDS)
                If (CondRefOf (\_SB.PCI0.GFX0.GLID))
                {
                    ^^^GFX0.GLID (LIDS)
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0B, 
                    0x04
                })
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (FSMI, 1, NotSerialized)
        {
            Store (Arg0, FSFN)
            Or (Arg0, 0xA0, Local0)
            ISMI (0x90)
            Return (FSTA)
        }

        Method (FLSH, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            FSMI (Zero)
        }

        Method (FINI, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Return (FSMI (One))
        }

        Method (FERS, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x02))
        }

        Method (FWRI, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Store (0x1000, FSIZ)
            Return (Subtract (0x1000, FSMI (0x03)))
        }

        Method (FCPW, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Store (0x1000, FSIZ)
            Return (FSMI (0x0D))
        }

        Method (FCPP, 0, NotSerialized)
        {
            Store (Zero, FSIZ)
            Return (FSMI (0x0D))
        }

        Method (FWRP, 0, NotSerialized)
        {
            Store (Zero, FSIZ)
            Return (Subtract (0x1000, FSMI (0x03)))
        }

        Method (FEBW, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Return (FSMI (0x04))
        }

        Method (FEBR, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Return (FSMI (0x05))
        }

        Method (FEDW, 0, NotSerialized)
        {
            Return (FSMI (0x06))
        }

        Method (ECSR, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x07))
        }

        Method (FLSC, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x08))
        }

        Method (FIME, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            If (Or (LEqual (Arg0, 0x04), LEqual (Arg0, 0x05)))
            {
                FSMI (0x09)
                If (LEqual (Arg0, 0x04))
                {
                    Store (FADR, ULCK)
                }

                Store (Zero, FSTA)
                Return (FSTA)
            }

            If (LEqual (Arg0, 0x8000))
            {
                Store (0x1000, FSIZ)
                FSMI (0x09)
                Return (FSTA)
            }

            Return (FSMI (0x09))
        }

        Method (FREC, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x8000))
            {
                Store (Arg0, FSTA)
                FSMI (0x0A)
                Store (0x1000, FSIZ)
                Return (FSTA)
            }

            Store (Arg0, FSTA)
            Return (FSMI (0x0A))
        }

        Name (ULCK, Zero)
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (BDFR, 4, NotSerialized)
        {
            ShiftLeft (Arg0, 0x14, Arg0)
            ShiftLeft (Arg1, 0x0F, Arg1)
            ShiftLeft (Arg2, 0x0C, Arg2)
            Add (Arg0, Zero, Local0)
            Add (Arg1, Local0, Local0)
            Add (Arg2, Local0, Local0)
            Add (Arg3, Local0, Local0)
            Return (Local0)
        }

        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            And (XCFG, Arg2, Local1)
            Or (Local1, Arg1, XCFG)
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Add (Arg0, 0x84, Local0)
            Store (RDPE (Local0), Local1)
            If (LEqual (Local1, 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                If (LAnd (Local1, 0x00010000))
                {
                    WDPE (Local0, And (Local1, 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (RESC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x09)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.RESC._Y17._BAS, PTB0)  // _BAS: Base Address
                Store (PTAB, PTB0)
                CreateDWordField (BUF0, \_SB.PCI0.RESC._Y17._LEN, PTLN)  // _LEN: Length
                If (LEqual (PTAB, Zero))
                {
                    Store (Zero, PTLN)
                }

                Return (BUF0)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            TDTY,   3, 
            TENA,   1, 
            TTDT,   3, 
            FRCT,   1, 
                ,   8, 
            THLS,   1, 
            Offset (0x13), 
            Offset (0x20), 
                ,   1, 
            PEHS,   1, 
                ,   7, 
            PEPS,   1, 
            BLST,   1, 
            SBPS,   1, 
            Offset (0x22), 
            G00S,   1, 
            G01S,   1, 
            G02S,   1, 
            GPS3,   1, 
            G04S,   1, 
            G05S,   1, 
            G06S,   1, 
            G07S,   1, 
            G08S,   1, 
            G09S,   1, 
            G0AS,   1, 
            G0BS,   1, 
            G0CS,   1, 
            G0DS,   1, 
            G0ES,   1, 
            G0FS,   1, 
            Offset (0x28), 
                ,   1, 
            PEHE,   1, 
                ,   7, 
            PEPE,   1, 
            BLEN,   1, 
            SBPE,   1, 
            Offset (0x2A), 
            G00E,   1, 
            G01E,   1, 
            G02E,   1, 
            GPE3,   1, 
            G04E,   1, 
            G05E,   1, 
            G06E,   1, 
            G07E,   1, 
            G08E,   1, 
            G09E,   1, 
            G0AE,   1, 
            G0BE,   1, 
            G0CE,   1, 
            G0DE,   1, 
            G0EE,   1, 
            G0FE,   1, 
            Offset (0x30), 
                ,   4, 
            SLPE,   1, 
            APME,   1, 
                ,   5, 
            MCSE,   1, 
                ,   1, 
            TCOE,   1, 
            PERE,   1, 
            Offset (0x32), 
            Offset (0x34), 
                ,   4, 
            SLPS,   1, 
            APMS,   1, 
                ,   5, 
            MCSS,   1, 
                ,   1, 
            TCOS,   1, 
            PERS,   1, 
            Offset (0x36), 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIS, SystemIO, PMBS, 0x50)
        Field (GPIS, ByteAcc, NoLock, Preserve)
        {
            Offset (0x22), 
            GS00,   16
        }

        OperationRegion (GP01, SystemIO, GPBS, 0x64)
        Field (GP01, ByteAcc, NoLock, Preserve)
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
            GL01,   8, 
            GL02,   8, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            Offset (0x19), 
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
                ,   5, 
                ,   1, 
            Offset (0x39), 
            GL05,   8, 
            GL06,   8, 
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
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x80)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            GL00,   16, 
            GL10,   16, 
            Offset (0x18), 
            GB00,   32, 
            Offset (0x2C), 
            GP00,   16, 
            Offset (0x38), 
            GL20,   32, 
            Offset (0x48), 
            GL40,   32
        }

        OperationRegion (RCBA, SystemMemory, 0xFED1C000, 0x4000)
        Field (RCBA, ByteAcc, NoLock, Preserve)
        {
            Offset (0x3418), 
            FDRT,   32
        }

        Method (RGPI, 2, Serialized)
        {
            Store (Arg1, Local0)
            Store (Zero, Local1)
            While (Local0)
            {
                ShiftLeft (Local1, One, Local1)
                Or (Local1, One, Local1)
                Decrement (Local0)
            }

            If (LLess (Arg0, 0x10))
            {
                ShiftLeft (Local1, Arg0, Local1)
                Store (GP00, Local0)
                And (Local0, Local1, Local0)
                ShiftRight (Local0, Arg0, Local0)
            }

            Return (Local0)
        }

        Method (RGPL, 2, Serialized)
        {
            Store (Arg1, Local0)
            Store (Zero, Local1)
            While (Local0)
            {
                ShiftLeft (Local1, One, Local1)
                Or (Local1, One, Local1)
                Decrement (Local0)
            }

            If (LLess (Arg0, 0x10))
            {
                ShiftLeft (Local1, Arg0, Local1)
                Store (GL00, Local0)
                And (Local0, Local1, Local0)
                ShiftRight (Local0, Arg0, Local0)
            }
            Else
            {
                If (LLess (Arg0, 0x20))
                {
                    Store (GL10, Local0)
                    Subtract (Arg0, 0x10, Local2)
                }
                Else
                {
                    If (LLess (Arg0, 0x40))
                    {
                        Store (GL20, Local0)
                        Subtract (Arg0, 0x20, Local2)
                    }
                    Else
                    {
                        Store (GL40, Local0)
                        Subtract (Arg0, 0x40, Local2)
                    }
                }

                ShiftLeft (Local1, Local2, Local1)
                And (Local0, Local1, Local0)
                ShiftRight (Local0, Local2, Local0)
            }

            Return (Local0)
        }

        Method (SGPL, 3, Serialized)
        {
            Store (\_SB.PCI0.LPCB.GPLK, Local7)
            Store (Zero, \_SB.PCI0.LPCB.GPLK)
            Store (Arg1, Local0)
            Store (Zero, Local1)
            While (Local0)
            {
                ShiftLeft (Local1, One, Local1)
                Or (Local1, One, Local1)
                Decrement (Local0)
            }

            If (LGreaterEqual (Arg0, 0x10))
            {
                If (LLess (Arg0, 0x20))
                {
                    Store (GL10, Local0)
                    Subtract (Arg0, 0x10, Local2)
                }
                Else
                {
                    If (LLess (Arg0, 0x40))
                    {
                        Store (GL20, Local0)
                        Subtract (Arg0, 0x20, Local2)
                    }
                    Else
                    {
                        Store (GL40, Local0)
                        Subtract (Arg0, 0x40, Local2)
                    }
                }

                ShiftLeft (Local1, Local2, Local1)
                Not (Local1, Local3)
                And (Local0, Local3, Local0)
                ShiftLeft (Arg2, Local2, Local4)
                Or (Local0, Local4, Local0)
                If (LLess (Arg0, 0x20))
                {
                    Store (Local0, GL10)
                }
                Else
                {
                    If (LLess (Arg0, 0x40))
                    {
                        Store (Local0, GL20)
                    }
                    Else
                    {
                        Store (Local0, GL40)
                    }
                }
            }
            Else
            {
                ShiftLeft (Local1, Arg0, Local1)
                Not (Local1, Local3)
                And (GL00, Local3, Local0)
                ShiftLeft (Arg2, Arg0, Local4)
                Or (Local0, Local4, Local0)
                Store (Local0, GL00)
            }

            Store (Local7, \_SB.PCI0.LPCB.GPLK)
        }

        Method (RGPP, 1, Serialized)
        {
            ShiftRight (GP00, Arg0, Local0)
            And (Local0, One, Local0)
            Return (Local0)
        }

        Method (TGPP, 1, Serialized)
        {
            Store (\_SB.PCI0.LPCB.GPLK, Local7)
            Store (Zero, \_SB.PCI0.LPCB.GPLK)
            ShiftLeft (One, Arg0, Local0)
            XOr (GP00, Local0, GP00)
            Store (Local7, \_SB.PCI0.LPCB.GPLK)
        }

        Method (SGPP, 2, Serialized)
        {
            Store (\_SB.PCI0.LPCB.GPLK, Local7)
            Store (Zero, \_SB.PCI0.LPCB.GPLK)
            ShiftLeft (One, Arg0, Local0)
            If (Arg1)
            {
                Or (GP00, Local0, GP00)
            }
            Else
            {
                Not (Local0, Local1)
                And (GP00, Local1, GP00)
            }

            Store (Local7, \_SB.PCI0.LPCB.GPLK)
        }

        Name (PMEW, Zero)
        Method (SBRS, 1, NotSerialized)
        {
            CPXS ()
        }

        Method (SBRW, 1, NotSerialized)
        {
            Store (SBPS, PMEW)
        }

        Method (STRP, 1, NotSerialized)
        {
            If (Arg0)
            {
                Store (One, SLPS)
                Store (One, SLPE)
            }
            Else
            {
                Store (Zero, SLPE)
                Store (One, SLPS)
            }
        }

        Method (HKTH, 0, Serialized)
        {
            If (THLS)
            {
                Return (TTDT)
            }
            Else
            {
                Return (0xFFFF)
            }
        }

        Method (CPXS, 0, NotSerialized)
        {
            Store (Zero, Local0)
            Store (0x00010000, Local1)
            Store (0x000E0060, Local2)
            Store (0x000E00DC, Local3)
            While (LLess (Local0, 0x04))
            {
                If (LNot (And (FDRT, Local1)))
                {
                    While (And (\_SB.RDPE (Local2), 0x00010000))
                    {
                        Or (\_SB.RDPE (Local2), 0x00010000, Local4)
                        \_SB.WDPE (Local2, Local4)
                    }

                    While (And (\_SB.RDPE (Local3), 0x80000000))
                    {
                        Or (\_SB.RDPE (Local3), 0x80000000, Local4)
                        \_SB.WDPE (Local3, Local4)
                    }
                }

                Add (Local2, 0x1000, Local2)
                Add (Local3, 0x1000, Local3)
                ShiftLeft (Local1, One, Local1)
                Increment (Local0)
            }

            While (And (PEPS, One))
            {
                Or (PEPS, One, PEPS)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.RP01.PMES)
            {
                While (\_SB.PCI0.RP01.PMES)
                {
                    Store (One, \_SB.PCI0.RP01.PMES)
                    Store (One, \_SB.PCI0.RP01.PMCS)
                }

                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If (\_SB.PCI0.RP02.PMES)
            {
                While (\_SB.PCI0.RP02.PMES)
                {
                    Store (One, \_SB.PCI0.RP02.PMES)
                    Store (One, \_SB.PCI0.RP02.PMCS)
                }

                Notify (\_SB.PCI0.RP02, 0x02)
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            OperationRegion (PCHT, SystemMemory, \_SB.PTAB, 0x1000)
            Field (PCHT, ByteAcc, NoLock, Preserve)
            {
                Offset (0x03), 
                TSTR,   8, 
                Offset (0x06), 
                AUX1,   8, 
                AUX2,   8, 
                Offset (0x0C), 
                TSES,   8, 
                TSGN,   8, 
                Offset (0xD8), 
                TITV,   8
            }

            Name (HP01, Zero)
            Name (LP01, Zero)
            Name (HP02, Zero)
            Name (LP02, Zero)
            Name (ECH1, Zero)
            Name (ECL1, Zero)
            Name (ECH2, Zero)
            Name (ECL2, Zero)
            Name (EVNT, Zero)
            Name (CUTP, Zero)
            If (LNotEqual (\_SB.PTAB, Zero))
            {
                And (TSES, 0x99, EVNT)
                If (LNotEqual (EVNT, Zero))
                {
                    And (TSTR, 0x7F, CUTP)
                    Multiply (CUTP, 0x0C, Local0)
                    Multiply (Local0, CUTP, Local0)
                    Add (0x00147A30, Local0, Local0)
                    Multiply (CUTP, 0x21DB, Local1)
                    Subtract (Local0, Local1, CUTP)
                    Store (Divide (CUTP, 0x2710, ), CUTP)
                    And (\_SB.HTPT, 0xFF000000, ECH2)
                    And (\_SB.HTPT, 0x00FF0000, ECL2)
                    And (\_SB.HTPT, 0xFF00, ECH1)
                    And (\_SB.HTPT, 0xFF, ECL1)
                    ShiftRight (ECH2, 0x18, ECH2)
                    ShiftRight (ECL2, 0x10, ECL2)
                    ShiftRight (ECH1, 0x08, ECH1)
                    And (\_SB.CPCH, 0xFF000000, HP02)
                    And (\_SB.CPCH, 0x00FF0000, LP02)
                    And (\_SB.CPCH, 0xFF00, HP01)
                    And (\_SB.CPCH, 0xFF, LP01)
                    ShiftRight (HP02, 0x18, HP02)
                    ShiftRight (LP02, 0x10, LP02)
                    ShiftRight (HP01, 0x08, HP01)
                    If (LNotEqual (ECH2, Zero))
                    {
                        If (LEqual (EVNT, One))
                        {
                            \_SB.PCI0.LPCB.EC0.ST95 (0x7F, One)
                            Store (HP02, AUX2)
                            Store (LP01, AUX1)
                        }

                        If (LEqual (EVNT, 0x10))
                        {
                            \_SB.PCI0.LPCB.EC0.ST95 (0x7F, Zero)
                            Store (HP02, AUX2)
                            Store (HP01, AUX1)
                        }

                        If (LEqual (EVNT, 0x08))
                        {
                            \_SB.PCI0.LPCB.EC0.ST95 (0x7F, 0x02)
                            Store (LP02, AUX2)
                            Store (LP01, AUX1)
                        }

                        If (LEqual (EVNT, 0x80))
                        {
                            \_SB.PCI0.LPCB.EC0.ST95 (0x7F, One)
                            Store (HP02, AUX2)
                            Store (LP01, AUX1)
                        }

                        Store (Zero, Local0)
                        While (LNotEqual (TSES, Zero))
                        {
                            If (LEqual (Local0, 0x1000))
                            {
                                Break
                            }

                            Store (0x99, TSES)
                            Sleep (0x32)
                        }
                    }
                }
            }

            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RX40, PCI_Config, 0x40, 0x10)
        Field (RX40, ByteAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            GPLK,   1
        }

        OperationRegion (RXA0, PCI_Config, 0xA0, 0x20)
        Field (RXA0, ByteAcc, NoLock, Preserve)
        {
                ,   9, 
            PBLV,   1, 
            BCPE,   1, 
            Offset (0x10), 
                ,   1, 
            PBMS,   1, 
                ,   1, 
            PMCS,   1, 
            ECNS,   1, 
            Offset (0x11), 
            ECT1,   16, 
            ELEN,   1, 
            Offset (0x14)
        }
    }

    Scope (\)
    {
        OperationRegion (SMB0, SystemIO, \_SB.SMBB, 0x10)
        Field (SMB0, ByteAcc, NoLock, Preserve)
        {
            HSTS,   8, 
            SSTS,   8, 
            HSTC,   8, 
            HCMD,   8, 
            HADR,   8, 
            HDT0,   8, 
            HDT1,   8, 
            BLKD,   8, 
            SPEC,   8, 
            SRCV,   8, 
            SLVD,   16, 
            AUXS,   8, 
            AUXC,   8
        }

        Name (RBUF, Buffer (0x20) {})
        Method (HBSY, 0, NotSerialized)
        {
            Store (0x000FFFFF, Local0)
            While (Local0)
            {
                And (HSTS, One, Local1)
                If (LNot (Local1))
                {
                    Return (Zero)
                }

                Decrement (Local0)
            }

            Return (One)
        }

        Method (WTSB, 0, NotSerialized)
        {
            Store (0x000FFFFF, Local0)
            While (Local0)
            {
                Decrement (Local0)
                And (HSTS, 0x1E, Local1)
                If (LEqual (Local1, 0x02))
                {
                    Return (One)
                }

                If (Local1)
                {
                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Mutex (P4SM, 0x00)
        Method (SBYT, 2, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (AUXC, Local0)
            Store (Zero, AUXC)
            Store (Arg0, HADR)
            Store (Arg1, HCMD)
            Store (0xFF, HSTS)
            Store (0x44, HSTC)
            If (WTSB ())
            {
                Store (Local0, AUXC)
                Release (P4SM)
                Return (One)
            }
            Else
            {
                Store (Local0, AUXC)
                Release (P4SM)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (WBYT, 3, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Store (Arg0, HADR)
                    Store (Arg1, HCMD)
                    Store (Arg2, HDT0)
                    Store (0xFF, HSTS)
                    Store (0x48, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (WWRD, 3, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Store (Arg0, HADR)
                    Store (Arg1, HCMD)
                    And (Arg2, 0xFF, Local1)
                    ShiftRight (Arg2, 0x08, Local2)
                    And (Local2, 0xFF, Local2)
                    Store (Local2, HDT0)
                    Store (Local1, HDT1)
                    Store (0xFF, HSTS)
                    Store (0x4C, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (WBLK, 3, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (AUXC, 0x02, AUXC)
                    Store (Arg0, HADR)
                    Store (Arg1, HCMD)
                    Store (HSTC, Local1)
                    Store (Arg2, Local2)
                    Store (Zero, Local1)
                    While (Local2)
                    {
                        Store (DerefOf (Index (RBUF, Local1)), BLKD)
                        Decrement (Local2)
                        Increment (Local1)
                    }

                    Store (Arg2, HDT0)
                    Store (HSTC, Local1)
                    Store (0xFF, HSTS)
                    Store (0x54, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RSBT, 2, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x44, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (HDT0)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RBYT, 2, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x48, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (HDT0)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RWRD, 2, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x4C, HSTC)
                    If (WTSB ())
                    {
                        Store (HDT0, Local1)
                        ShiftLeft (Local1, 0x08, Local1)
                        Store (HDT1, Local2)
                        Add (Local1, Local2, Local1)
                        Release (P4SM)
                        Return (Local1)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RBLK, 3, Serialized)
        {
            Acquire (P4SM, 0xFFFF)
            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (AUXC, 0x02, AUXC)
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x54, HSTC)
                    If (WTSB ())
                    {
                        Store (HSTC, Local1)
                        Store (HDT0, Local2)
                        Store (Local2, Local3)
                        Store (Zero, RBUF)
                        Store (Zero, Local1)
                        While (Local2)
                        {
                            Store (BLKD, Index (RBUF, Local1))
                            Decrement (Local2)
                            Increment (Local1)
                        }

                        Release (P4SM)
                        Return (Local3)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }
    }

    Scope (_GPE)
    {
        Method (_L03, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB1, 0x02)
        }

        Method (_L04, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB2, 0x02)
        }

        Method (_L0C, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB3, 0x02)
        }

        Method (_L0E, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB4, 0x02)
        }

        Method (_L05, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB5, 0x02)
        }

        Method (_L20, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB6, 0x02)
            Notify (\_SB.PCI0.USB7, 0x02)
        }

        Method (_L0D, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
        }

        Method (_L08, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.HDEF, 0x02)
        }

        Method (_L0B, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            If (PMEW)
            {
                Notify (\_SB.PCI0, 0x02)
                Notify (\_SB.PCI0.RP02, 0x02)
                Store (Zero, PMEW)
            }
            Else
            {
            }
        }
    }

    Scope (_SB.PCI0.EHC1)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (Zero)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (Zero)
                        Return (BPLD)
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (One)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (One)
                        Return (BPLD)
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x02)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x02)
                        Return (BPLD)
                    }
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x03)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x03)
                        Return (BPLD)
                    }
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x04)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x04)
                        Return (BPLD)
                    }
                }

                Device (PRT6)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x05)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x05)
                        Return (BPLD)
                    }
                }

                Device (PRT7)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x06)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x06)
                        Return (BPLD)
                    }
                }

                Device (PRT8)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x07)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x07)
                        Return (BPLD)
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.EHC2)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x08)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x08)
                        Return (BPLD)
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x09)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x09)
                        Return (BPLD)
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x0A)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x0A)
                        Return (BPLD)
                    }
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x0B)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x0B)
                        Return (BPLD)
                    }
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x0C)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x0C)
                        Return (BPLD)
                    }
                }

                Device (PRT6)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        OUPC (0x0D)
                        Return (BUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Device Location
                    {
                        OPLD (0x0D)
                        Return (BPLD)
                    }
                }
            }
        }
    }

    Scope (\)
    {
        Name (CNTB, Buffer (0x0E)
        {
            /* 0000 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (VISB, Buffer (0x0E)
        {
            /* 0000 */   0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (SHPB, Buffer (0x0E)
        {
            /* 0000 */   0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
            /* 0008 */   0x07, 0x07, 0x07, 0x07, 0x07, 0x07
        })
        Name (BUPC, Package (0x04)
        {
            0xFF, 
            Zero, 
            Zero, 
            Zero
        })
        Name (BPLD, Buffer (0x10)
        {
             0x81, 0x00, 0x31, 0x00
        })
        Method (OUPC, 1, Serialized)
        {
            Store (DerefOf (Index (CNTB, Arg0)), Local0)
            Store (Local0, Index (BUPC, Zero))
        }

        Method (OPLD, 1, Serialized)
        {
            Store (DerefOf (Index (VISB, Arg0)), Local0)
            Store (DerefOf (Index (BPLD, 0x08)), Local1)
            And (Local1, 0xFE, Local1)
            Or (Local1, Local0, Local1)
            Store (Local1, Index (BPLD, 0x08))
            Store (DerefOf (Index (SHPB, Arg0)), Local0)
            Store (DerefOf (Index (BPLD, 0x09)), Local1)
            And (Local1, 0xC3, Local1)
            Or (Local1, Local0, Local1)
            Store (Local1, Index (BPLD, 0x09))
        }
    }

    Scope (\)
    {
        Method (LIMT, 0, NotSerialized)
        {
            Subtract (\_SB.CPUP, \_SB.SLMT, Local0)
            Return (Local0)
        }

        Method (NCPS, 1, Serialized)
        {
            Notify (\_PR.CPU0, Arg0)
            Notify (\_PR.CPU1, Arg0)
            If (LGreaterEqual (\_SB.CPUN, 0x04))
            {
                Notify (\_PR.CPU2, Arg0)
                Notify (\_PR.CPU3, Arg0)
            }

            If (LGreaterEqual (\_SB.CPUN, 0x08))
            {
                Notify (\_PR.CPU4, Arg0)
                Notify (\_PR.CPU5, Arg0)
                Notify (\_PR.CPU6, Arg0)
                Notify (\_PR.CPU7, Arg0)
            }
        }

        Name (LCDB, Zero)
        Method (PPRJ, 1, Serialized)
        {
        }

        Method (PRJS, 1, Serialized)
        {
            SGPL (0x0F, One, Zero)
            \_SB.PCI0.LPCB.EC0.SPIN (0x95, Zero)
        }

        Method (PRJW, 1, Serialized)
        {
            If (LAnd (LEqual (Arg0, 0x03), \_SB.DP3S))
            {
                \_SB.PCI0.LPCB.EC0.SPIN (0x35, One)
            }

            \_SB.PCI0.LPCB.EC0.STBR ()
        }

        Method (GLID, 0, Serialized)
        {
            Return (\_SB.PCI0.LPCB.EC0.RPIN (0x46))
        }

        Method (TLID, 0, Serialized)
        {
        }

        Method (TGAC, 0, Serialized)
        {
        }

        Method (TGDC, 1, Serialized)
        {
        }

        Method (FCTR, 3, Serialized)
        {
        }

        Method (OWGD, 1, Serialized)
        {
            SGPL (0x0F, One, Arg0)
        }

        Method (OWLD, 1, Serialized)
        {
            Store (Arg0, \_SB.WRST)
            XOr (Arg0, One, Arg0)
            If (LEqual (LAnd (\_SB.ATKD.WAPF, 0x05), Zero))
            {
                SGPL (0x1C, One, Arg0)
            }
        }

        Method (OBTD, 1, Serialized)
        {
            Store (Arg0, \_SB.BRST)
            SGPL (0x39, One, Arg0)
            SGPL (0x0F, One, Arg0)
        }

        Method (ODSP, 1, Serialized)
        {
            Store (Arg0, \_SB.DP3S)
        }

        Method (OUWD, 1, Serialized)
        {
            Store (Arg0, \_SB.UWST)
            If (Arg0)
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x40, 0xFF), Local0)
            }
            Else
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x20, 0xFF), Local0)
            }

            Return (One)
        }

        Method (OWMD, 1, Serialized)
        {
            Store (Arg0, \_SB.WMST)
            If (Arg0)
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x40, 0xFF), Local0)
            }
            Else
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x20, 0xFF), Local0)
            }

            Return (One)
        }

        Method (OGPD, 1, Serialized)
        {
            Store (Arg0, \_SB.GPST)
            If (Arg0)
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x40, 0xFF), Local0)
            }
            Else
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x20, 0xFF), Local0)
            }

            Return (One)
        }

        Method (OTGD, 1, Serialized)
        {
            Store (Arg0, \_SB.TGST)
            If (Arg0)
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x40, 0xFF), Local0)
            }
            Else
            {
                Store (\_SB.PCI0.LPCB.EC0.ST87 (0x20, 0xFF), Local0)
            }

            Return (One)
        }

        Method (OHWR, 0, Serialized)
        {
            Store (Zero, Local0)
            Store (\_SB.PCI0.LPCB.EC0.RPIN (0x27), Local1)
            If (Local1)
            {
                And (Local0, 0xFFFE, Local0)
            }
            Else
            {
                Or (Local0, One, Local0)
            }

            If (\_SB.PCI0.RP02.WLAN.MPDP ())
            {
                Or (Local0, 0x80, Local0)
            }

            If (\_SB.BTDP)
            {
                Or (Local0, 0x0100, Local0)
            }

            If (\_SB.UWDP)
            {
                Or (Local0, 0x08, Local0)
            }

            If (\_SB.WMDP)
            {
                Or (Local0, 0x10, Local0)
            }

            If (\_SB.GPDP)
            {
                Or (Local0, 0x20, Local0)
            }

            If (\_SB.TGDP)
            {
                Or (Local0, 0x40, Local0)
            }

            Return (Local0)
        }

        Method (ORST, 0, Serialized)
        {
            Store (Zero, Local0)
            If (\_SB.WRST)
            {
                Or (Local0, One, Local0)
            }

            If (\_SB.BRST)
            {
                Or (Local0, 0x02, Local0)
            }

            If (\_SB.UWST)
            {
                Or (Local0, 0x04, Local0)
            }

            If (\_SB.WMST)
            {
                Or (Local0, 0x08, Local0)
            }

            If (\_SB.GPST)
            {
                Or (Local0, 0x10, Local0)
            }

            If (\_SB.TGST)
            {
                Or (Local0, 0x20, Local0)
            }

            Return (Local0)
        }

        Method (GBTL, 0, Serialized)
        {
            Return (\_SB.PCI0.LPCB.EC0.RPIN (0x73))
        }

        Method (SBTL, 1, Serialized)
        {
            \_SB.PCI0.LPCB.EC0.SPIN (0x73, Arg0)
        }

        Method (BL2C, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (STCF, 1, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                \_SB.PCI0.LPCB.EC0.FNCT (0x84, Zero)
            }
        }

        Method (OTGB, 0, Serialized)
        {
            Store (One, Local0)
            Return (Local0)
        }

        Method (DCPS, 1, Serialized)
        {
            Store (\_SB.PCI0.LPCB.EC0.RPIN (0x26), Local0)
            XOr (Local0, One, Local0)
            Return (Local0)
        }

        Method (ACPS, 0, Serialized)
        {
            Store (\_SB.PCI0.LPCB.EC0.RPIN (0x24), Local0)
            XOr (Local0, One, Local0)
            Return (Local0)
        }

        Method (OLPM, 0, Serialized)
        {
            If (LEqual (\_SB.ACPF, Zero))
            {
                If (LLessEqual (\_SB.PCI0.LPCB.EC0.B0DC, 0x0BB8))
                {
                    Store (One, \_SB.SLMT)
                }
            }
        }
    }

    Scope (_GPE)
    {
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
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
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.GFX0.OPTS (Arg0)
            OEMS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.ATKD.GENW (Arg0)
        \_SB.PCI0.GFX0.OWAK (Arg0)
        OEMW (Arg0)
    }
}

