/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20121018-64 [Oct 26 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of DSDT.dat, Sat Nov 10 15:53:41 2012
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000090EB (37099)
 *     Revision         0x02
 *     Checksum         0x8F
 *     OEM ID           "Intel "
 *     OEM Table ID     "CALPELLA"
 *     OEM Revision     0x06040000 (100925440)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060912 (537266450)
 */

DefinitionBlock ("DSDT.aml", "DSDT", 2, "Intel ", "CALPELLA", 0x06040000)
{
    External (\_PR_.CPU0._PPC)
    External (\_PR_.CPU0._PSS, IntObj)
    External (\_SB_.PCI0.IEIT.EITV, MethodObj)    // 0 Arguments
    External (CFGD)
    External (PDC0)
    External (PDC1)
    External (PDC2)
    External (PDC3)
    External (PDC4)
    External (PDC5)
    External (PDC6)
    External (PDC7)
    External (TNOT, MethodObj)    // 0 Arguments

    Name (SP2O, 0x4E)
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
    Name (FHPP, One)
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
    Name (SRAF, 0x0C)
    Name (WWP, 0x0D)
    Name (SDOE, 0x0E)
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
    OperationRegion (PNVS, SystemMemory, 0xB379BDA4, 0x0100)
    Field (PNVS, AnyAcc, Lock, Preserve)
    {
        SLEP,   8
    }

    OperationRegion (GNVS, SystemMemory, 0xB379BBA4, 0x0200)
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
        Offset (0x7A), 
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
        DPBM,   8, 
        DPCM,   8, 
        DPDM,   8, 
        ALFP,   8, 
        IMON,   8, 
        Offset (0x17C), 
        OEMF,   8, 
        NVID,   16, 
        FLG1,   8
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
                    0x00000000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
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
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (^^CPBG.IMCH.PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (^^CPBG.IMCH.PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (^^CPBG.IMCH.PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (^^CPBG.IMCH.PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (^^CPBG.IMCH.PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (^^CPBG.IMCH.PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (^^CPBG.IMCH.PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (^^CPBG.IMCH.PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (^^CPBG.IMCH.PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (^^CPBG.IMCH.PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (^^CPBG.IMCH.PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (^^CPBG.IMCH.PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (^^CPBG.IMCH.PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (^^CPBG.IMCH.PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (^^CPBG.IMCH.PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (^^CPBG.IMCH.PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (^^CPBG.IMCH.PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (^^CPBG.IMCH.PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (^^CPBG.IMCH.PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (^^CPBG.IMCH.PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (^^CPBG.IMCH.PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (^^CPBG.IMCH.PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                    PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    If (LGreaterEqual (PNHM, 0x000106E1))
                    {
                        Store (^IO10.TOLM, Local0)
                        ShiftLeft (Increment (Local0), 0x1A, M1MN)
                    }
                    Else
                    {
                        Store (^IIO0.TOLM, Local0)
                        ShiftLeft (Increment (Local0), 0x1A, M1MN)
                    }
                }
                Else
                {
                    ShiftLeft (TLUD, 0x14, M1MN)
                }

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
                        If (And (CTRL, 0x02))
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

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR80)
                    }
                    Else
                    {
                        Return (^^AR00)
                    }
                }

                Method (PR00, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR80)
                    }
                    Else
                    {
                        Return (^^PR00)
                    }
                }

                Method (AR01, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR81)
                    }
                    Else
                    {
                        Return (^^AR01)
                    }
                }

                Method (PR01, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR81)
                    }
                    Else
                    {
                        Return (^^PR01)
                    }
                }

                Method (AR02, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR82)
                    }
                    Else
                    {
                        Return (^^AR02)
                    }
                }

                Method (PR02, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR82)
                    }
                    Else
                    {
                        Return (^^PR02)
                    }
                }

                Method (AR04, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR84)
                    }
                    Else
                    {
                        Return (^^AR04)
                    }
                }

                Method (PR04, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR84)
                    }
                    Else
                    {
                        Return (^^PR04)
                    }
                }

                Method (AR05, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR85)
                    }
                    Else
                    {
                        Return (^^AR05)
                    }
                }

                Method (PR05, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR85)
                    }
                    Else
                    {
                        Return (^^PR05)
                    }
                }

                Method (AR06, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR86)
                    }
                    Else
                    {
                        Return (^^AR06)
                    }
                }

                Method (PR06, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR86)
                    }
                    Else
                    {
                        Return (^^PR06)
                    }
                }

                Method (AR07, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR87)
                    }
                    Else
                    {
                        Return (^^AR07)
                    }
                }

                Method (PR07, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR87)
                    }
                    Else
                    {
                        Return (^^PR07)
                    }
                }

                Method (AR08, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR88)
                    }
                    Else
                    {
                        Return (^^AR08)
                    }
                }

                Method (PR08, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR88)
                    }
                    Else
                    {
                        Return (^^PR08)
                    }
                }

                Method (AR0A, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (AR8A)
                    }
                    Else
                    {
                        Return (^^AR0A)
                    }
                }

                Method (PR0A, 0, NotSerialized)
                {
                    If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                        PNHM, 0x000FFFF0), 0x000106A0)))
                    {
                        Return (PR8A)
                    }
                    Else
                    {
                        Return (^^PR0A)
                    }
                }
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0B, 
                    0x03
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
                    Device (TPM)
                    {
                        Name (TMPV, Zero)
                        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                        {
                            If (LEqual (TPMV, One))
                            {
                                Return (0x0201D824)
                            }

                            If (LEqual (TPMV, 0x02))
                            {
                                Return (0x0435CF4D)
                            }

                            If (LEqual (TPMV, 0x03))
                            {
                                Return (0x02016D08)
                            }

                            If (LEqual (TPMV, 0x04))
                            {
                                Return (0x01016D08)
                            }

                            If (LOr (LEqual (TPMV, 0x05), LEqual (TPMV, 0x06)))
                            {
                                Return (0x0010A35C)
                            }

                            If (LEqual (TPMV, 0x08))
                            {
                                Return (0x00128D06)
                            }

                            If (LEqual (TPMV, 0x09))
                            {
                                Return ("INTC0102")
                            }

                            Return (0x310CD041)
                        }

                        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            Store (TPP3, TMPV)
                            If (And (TMPV, TPRS))
                            {
                                Return (0x0F)
                            }

                            Return (Zero)
                        }

                        Name (BUF1, ResourceTemplate ()
                        {
                            Memory32Fixed (ReadOnly,
                                0xFED40000,         // Address Base
                                0x00005000,         // Address Length
                                )
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Return (BUF1)
                        }

                        Method (UCMP, 2, NotSerialized)
                        {
                            If (LNotEqual (0x10, SizeOf (Arg0)))
                            {
                                Return (Zero)
                            }

                            If (LNotEqual (0x10, SizeOf (Arg1)))
                            {
                                Return (Zero)
                            }

                            Store (Zero, Local0)
                            While (LLess (Local0, 0x10))
                            {
                                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (
                                    Arg1, Local0))))
                                {
                                    Return (Zero)
                                }

                                Increment (Local0)
                            }

                            Return (One)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (TTMP, Buffer (One)
                            {
                                 0x00
                            })
                            CreateByteField (TTMP, Zero, TMPV)
                            If (LEqual (UCMP (Arg0, Buffer (0x10)
                                        {
                                            /* 0000 */   0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E,
                                            /* 0008 */   0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                                        }), One))
                            {
                                If (LEqual (Arg2, Zero))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x7F
                                    })
                                }

                                If (LEqual (Arg2, One))
                                {
                                    Return (Buffer (0x04)
                                    {
                                        "1.0"
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    If (TPRS)
                                    {
                                        If (LEqual (DerefOf (Index (Arg3, Zero)), Zero))
                                        {
                                            Store (Zero, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), One))
                                        {
                                            Store (One, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x02))
                                        {
                                            Store (0x02, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x03))
                                        {
                                            Store (0x03, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x04))
                                        {
                                            Store (0x04, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x05))
                                        {
                                            Store (0x05, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x06))
                                        {
                                            Store (0x06, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x07))
                                        {
                                            Store (0x07, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x08))
                                        {
                                            Store (0x08, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x09))
                                        {
                                            Store (0x09, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x0A))
                                        {
                                            Store (0x0A, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x0B))
                                        {
                                            Store (0x0B, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x0C))
                                        {
                                            Store (0x0C, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x0D))
                                        {
                                            Store (0x0D, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, Zero)), 0x0E))
                                        {
                                            Store (0x0E, TPP1)
                                            Return (Zero)
                                        }

                                        Return (One)
                                    }

                                    Return (One)
                                }

                                If (LEqual (Arg2, 0x03))
                                {
                                    Name (TMP1, Package (0x02)
                                    {
                                        Zero, 
                                        0xFFFFFFFF
                                    })
                                    Store (TPP1, TMPV)
                                    Store (And (TMPV, PPRQ, TMPV), Index (TMP1, One))
                                    Return (TMP1)
                                }

                                If (LEqual (Arg2, 0x04))
                                {
                                    Return (One)
                                }

                                If (LEqual (Arg2, 0x05))
                                {
                                    Name (TMP2, Package (0x03)
                                    {
                                        Zero, 
                                        0xFFFFFFFF, 
                                        0xFFFFFFFF
                                    })
                                    Store (PPLO, Index (TMP2, One))
                                    If (LGreater (PPLO, 0x0E))
                                    {
                                        Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                        Return (TMP2)
                                    }

                                    Store (TPP1, TMPV)
                                    And (TMPV, PPRQ, TMPV)
                                    If (LEqual (TMPV, PPRQ))
                                    {
                                        Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                        Return (TMP2)
                                    }

                                    Store (TPP3, TMPV)
                                    If (And (TMPV, PPOR))
                                    {
                                        Store (0xFFFFFFF0, Index (TMP2, 0x02))
                                        Return (TMP2)
                                    }

                                    Store (Zero, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                If (LEqual (Arg2, 0x06))
                                {
                                    CreateByteField (Arg3, 0x04, LAN0)
                                    CreateByteField (Arg3, 0x05, LAN1)
                                    Or (ShiftLeft (LAN1, 0x08), LAN0, P80H)
                                    If (LOr (LEqual (LAN0, 0x65), LEqual (LAN0, 0x45)))
                                    {
                                        If (LOr (LEqual (LAN1, 0x6E), LEqual (LAN1, 0x4E)))
                                        {
                                            Return (Zero)
                                        }
                                    }

                                    Return (One)
                                }

                                If (LEqual (Arg2, 0x07))
                                {
                                    If (TPRS)
                                    {
                                        If (LEqual (Arg3, Zero))
                                        {
                                            Store (Zero, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, One))
                                        {
                                            Store (One, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x02))
                                        {
                                            Store (0x02, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x03))
                                        {
                                            Store (0x03, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x04))
                                        {
                                            Store (0x04, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x05))
                                        {
                                            Store (0x05, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x06))
                                        {
                                            Store (0x06, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x07))
                                        {
                                            Store (0x07, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x08))
                                        {
                                            Store (0x08, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x09))
                                        {
                                            Store (0x09, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x0A))
                                        {
                                            Store (0x0A, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x0B))
                                        {
                                            Store (0x0B, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x0C))
                                        {
                                            Store (0x0C, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x0D))
                                        {
                                            Store (0x0D, TPP1)
                                            Return (Zero)
                                        }

                                        If (LEqual (Arg3, 0x0E))
                                        {
                                            Store (0x0E, TPP1)
                                            Return (Zero)
                                        }

                                        Return (One)
                                    }

                                    Return (One)
                                }

                                Return (One)
                            }

                            If (LEqual (UCMP (Arg0, Buffer (0x10)
                                        {
                                            /* 0000 */   0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46,
                                            /* 0008 */   0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                                        }), One))
                            {
                                If (LEqual (Arg2, Zero))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x01
                                    })
                                }

                                If (LEqual (Arg2, One))
                                {
                                    If (LEqual (And (DerefOf (Index (Arg3, Zero)), 0x10), 
                                        Zero))
                                    {
                                        Not (TMRD, TMPV)
                                        And (TMPV, TPP3, TMPV)
                                        Store (TMPV, TPP3)
                                        Return (Zero)
                                    }

                                    If (LEqual (And (DerefOf (Index (Arg3, Zero)), 0x10), 
                                        One))
                                    {
                                        Store (TPP3, TMPV)
                                        Or (TMRD, TMPV)
                                        Store (TMPV, TPP3)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, Zero)), Zero))
                                    {
                                        Not (TMOR, TMPV)
                                        And (TMPV, TPP3, TMPV)
                                        Store (TMPV, TPP3)
                                        Return (Zero)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, Zero)), One))
                                    {
                                        Store (TPP3, TMPV)
                                        Or (TMOR, TMPV)
                                        Store (TMPV, TPP3)
                                        Return (Zero)
                                    }
                                }

                                Return (One)
                            }

                            Return (Buffer (One)
                            {
                                 0x00
                            })
                        }
                    }

                    Scope (\_SB)
                    {
                        OperationRegion (TCG1, SystemMemory, 0xB379BB9D, 0x00000007)
                        Field (TCG1, AnyAcc, NoLock, Preserve)
                        {
                            SSS1,   8, 
                            SSS2,   8, 
                            SSS3,   8, 
                            SSS4,   8, 
                            SSS5,   8, 
                            TPMV,   8, 
                            MOR,    8
                        }

                        Name (TCGP, Buffer (0x08)
                        {
                             0x1F, 0xE0, 0x1F, 0x01, 0x02, 0x04, 0x08, 0x10
                        })
                        CreateByteField (TCGP, Zero, PPRQ)
                        CreateByteField (TCGP, One, PPL1)
                        CreateByteField (TCGP, 0x02, PPRP)
                        CreateByteField (TCGP, 0x03, TPRS)
                        CreateByteField (TCGP, 0x04, PPOR)
                        CreateByteField (TCGP, 0x06, TMOR)
                        CreateByteField (TCGP, 0x07, TMRD)
                        OperationRegion (TCGC, SystemIO, 0x72, 0x02)
                        Field (TCGC, ByteAcc, Lock, Preserve)
                        {
                            TIDX,   8, 
                            TPDA,   8
                        }

                        IndexField (TIDX, TPDA, ByteAcc, Lock, Preserve)
                        {
                            Offset (0x70), 
                            TPP1,   8, 
                            PPLO,   8, 
                            TPP3,   8
                        }

                        Method (PHSR, 1, Serialized)
                        {
                            Store (Arg0, BCMD)
                            Store (Zero, DID)
                            Store (Zero, SMIC)
                            If (LEqual (BCMD, Arg0)) {}
                            Store (Zero, BCMD)
                            Store (Zero, DID)
                            Return (Zero)
                        }

                        OperationRegion (SMI0, SystemIO, 0x0000FE00, 0x00000002)
                        Field (SMI0, AnyAcc, NoLock, Preserve)
                        {
                            SMIC,   8
                        }

                        OperationRegion (SMI1, SystemMemory, 0xB379BEBD, 0x00000090)
                        Field (SMI1, AnyAcc, NoLock, Preserve)
                        {
                            BCMD,   8, 
                            DID,    32, 
                            INFO,   1024
                        }

                        Field (SMI1, AnyAcc, NoLock, Preserve)
                        {
                            AccessAs (ByteAcc, 0x00), 
                            Offset (0x05), 
                            INF,    8
                        }
                    }

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
                    Offset (0x6B), 
                    BMBK,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Scope (^P0P2)
                {
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Scope (^^PCI0)
                {
                    Device (GFX0)
                    {
                        Name (_ADR, 0x00020000)  // _ADR: Address
                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            Store (LIDS, CLID)
                        }

                        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                        {
                            Store (And (Arg0, 0x07), DSEN)
                        }

                        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                        {
                            Return (Package (0x03)
                            {
                                0x80010100, 
                                0x80010300, 
                                0x80010410
                            })
                        }

                        Device (CRT0)
                        {
                            Name (_ADR, 0x0100)  // _ADR: Address
                            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                            {
                                Return (CDDS (0x0100))
                            }

                            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                            {
                                If (And (NSTE, 0x0101))
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                            {
                                If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                                {
                                    Store (NSTE, CSTE)
                                }
                            }
                        }

                        Device (HDMI)
                        {
                            Name (_ADR, 0x0300)  // _ADR: Address
                            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                            {
                                Return (CDDS (0x0300))
                            }

                            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                            {
                                If (And (NSTE, 0x0202))
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                            {
                                If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                                {
                                    Store (NSTE, CSTE)
                                }
                            }
                        }

                        Device (LCD0)
                        {
                            Name (_ADR, 0x0410)  // _ADR: Address
                            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                            {
                                Return (CDDS (0x0400))
                            }

                            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                            {
                                If (And (NSTE, 0x0808))
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                            {
                                If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                                {
                                    Store (NSTE, CSTE)
                                }
                            }

                            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                            {
                                Return (Package (0x0A)
                                {
                                    0x54, 
                                    0x1C, 
                                    Zero, 
                                    0x0E, 
                                    0x1C, 
                                    0x2A, 
                                    0x38, 
                                    0x46, 
                                    0x54, 
                                    0x64
                                })
                            }

                            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                            {
                                If (LEqual (Arg0, Zero))
                                {
                                    Store (Arg0, BRTL)
                                }
                                Else
                                {
                                    Divide (Arg0, 0x0E, Local0, BRTL)
                                }

                                If (^^^LPCB.EC.ECOK)
                                {
                                    If (And (^^^LPCB.EC.WINF, One))
                                    {
                                        Store (BRTL, ^^^LPCB.EC.OEM2)
                                    }

                                    If (^^^^WMI.HKDR)
                                    {
                                        Add (^^^LPCB.EC.OEM2, 0xE0, ^^^^WMI.EVNT)
                                        Notify (WMI, 0xD0)
                                    }
                                }

                                Store (BRTL, P80H)
                            }

                            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                            {
                                If (^^^LPCB.EC.ECOK)
                                {
                                    If (LEqual (^^^LPCB.EC.OEM2, 0x07))
                                    {
                                        Return (0x64)
                                    }

                                    Multiply (^^^LPCB.EC.OEM2, 0x0E, Local0)
                                    Return (Local0)
                                }
                                Else
                                {
                                    Return (0x64)
                                }
                            }
                        }

                        Method (CDDS, 1, NotSerialized)
                        {
                            Store (And (Arg0, 0x0F0F), Local0)
                            If (LEqual (Zero, Local0))
                            {
                                Return (0x1D)
                            }

                            If (LEqual (And (CADL, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL2, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL3, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL4, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL5, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL6, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL7, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            If (LEqual (And (CAL8, 0x0F0F), Local0))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }

                        Method (PDDS, 1, NotSerialized)
                        {
                            Store (And (Arg0, 0x0F0F), Local0)
                            If (LEqual (Zero, Local0))
                            {
                                Return (Zero)
                            }

                            If (LEqual (And (CPDL, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL2, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL3, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL4, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL5, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL6, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL7, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            If (LEqual (And (CPL8, 0x0F0F), Local0))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (SWIT, 0, NotSerialized)
                        {
                            Store (Zero, Local0)
                            Store (Zero, Local1)
                            Store (0x08, Local2)
                            If (LEqual (CDDS (0x0100), 0x1F))
                            {
                                Or (One, Local0, Local0)
                            }

                            If (LEqual (CDDS (0x0300), 0x1F))
                            {
                                Or (0x02, Local0, Local0)
                            }

                            If (LEqual (CDDS (0x0410), 0x1F))
                            {
                                Or (0x08, Local0, Local0)
                            }

                            If (PDDS (0x0100))
                            {
                                Or (One, Local2, Local2)
                            }

                            If (PDDS (0x0300))
                            {
                                Or (0x02, Local2, Local2)
                            }

                            And (Local0, Local2, Local1)
                            Store (Local0, CSTE)
                            Store (GNAD (Local1, Local2), Local1)
                            Store (Local1, NSTE)
                            Store (Or (Local0, ShiftLeft (Local1, 0x04)), P80H)
                        }

                        Method (GNAD, 2, NotSerialized)
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            Store (Arg0, Local0)
                            Store (Arg1, Local1)
                            While (Local1)
                            {
                                Store (Local0, _T_0)
                                If (LEqual (_T_0, One))
                                {
                                    If (And (FLG1, 0x80))
                                    {
                                        Store (0x09, Local0)
                                    }
                                    Else
                                    {
                                        Store (0x02, Local0)
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x02))
                                    {
                                        If (And (FLG1, 0x80))
                                        {
                                            Store (0x0A, Local0)
                                        }
                                        Else
                                        {
                                            Store (0x08, Local0)
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x03))
                                        {
                                            Store (0x08, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x08))
                                            {
                                                Store (One, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x09))
                                                {
                                                    Store (0x02, Local0)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0A))
                                                    {
                                                        If (And (FLG1, 0x80))
                                                        {
                                                            Store (0x03, Local0)
                                                        }
                                                        Else
                                                        {
                                                            Store (0x08, Local0)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        Store (0x08, Local0)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                If (LEqual (And (Local0, Local1), Local0))
                                {
                                    Store (Zero, Local1)
                                }
                            }

                            Return (Local0)
                        }

                        Scope (^^PCI0)
                        {
                            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                            Field (MCHP, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x14), 
                                    ,   1, 
                                D1EN,   1, 
                                    ,   1, 
                                D2F0,   1, 
                                Offset (0x60), 
                                TASM,   10, 
                                Offset (0x62)
                            }
                        }

                        OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
                        Field (IGDP, AnyAcc, NoLock, Preserve)
                        {
                            VID,    16, 
                            DID,    16, 
                            Offset (0x52), 
                                ,   1, 
                            GIVD,   1, 
                                ,   2, 
                            GUMA,   3, 
                            Offset (0x54), 
                                ,   4, 
                            GMFN,   1, 
                            Offset (0x58), 
                            Offset (0xE4), 
                            ASLE,   8, 
                            Offset (0xE8), 
                            GSSE,   1, 
                            GSSB,   14, 
                            GSES,   1, 
                            Offset (0xF0), 
                                ,   12, 
                            CDVL,   1, 
                            Offset (0xF2), 
                            Offset (0xF5), 
                            LBPC,   8, 
                            Offset (0xFC), 
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
                                    If (LEqual (PARM, Zero)) {}
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
                    }
                }

                Scope (\_SB.PCI0.LPCB)
                {
                    Device (EC)
                    {
                        Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                        Name (_GPE, 0x17)  // _GPE: General Purpose Events
                        Name (ECOK, Zero)
                        Name (SFEC, Zero)
                        Method (SILF, 0, NotSerialized)
                        {
                            Return (LOr (SFEC, LEqual (And (OEMF, 0x06), 0x02)))
                        }

                        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                        {
                            If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                            {
                                Store (Arg1, ECOK)
                                If (LGreaterEqual (OSYS, 0x07D6))
                                {
                                    Or (WINF, One, WINF)
                                }
                                Else
                                {
                                    If (LEqual (OSYS, 0x03E8))
                                    {
                                        Or (WINF, One, WINF)
                                    }
                                }

                                If (And (FLG1, 0x40))
                                {
                                    Or (INF2, One, INF2)
                                }
                                Else
                                {
                                    And (INF2, 0xFE, INF2)
                                }

                                PNOT ()
                            }
                        }

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
                        OperationRegion (RAM, EmbeddedControl, Zero, 0xFF)
                        Field (RAM, ByteAcc, Lock, Preserve)
                        {
                            NMSG,   8, 
                            SLED,   4, 
                            Offset (0x02), 
                            MODE,   1, 
                            FAN0,   1, 
                            TME0,   1, 
                            TME1,   1, 
                            FAN1,   1, 
                                ,   2, 
                            Offset (0x03), 
                            LIDS,   1, 
                            LSW0,   1, 
                            LWKE,   1, 
                            WAKF,   1, 
                                ,   2, 
                            PWKE,   1, 
                            MWKE,   1, 
                            AC0,    16, 
                            PSV,    16, 
                            CRT,    16, 
                            TMP,    16, 
                            AC1,    16, 
                            SLPT,   8, 
                            SWEJ,   1, 
                            SWCH,   1, 
                            Offset (0x10), 
                            ADP,    1, 
                            AFLT,   1, 
                            BAT0,   1, 
                            BAT1,   1, 
                                ,   3, 
                            PWOF,   1, 
                            WFNO,   8, 
                            BPU0,   32, 
                            BDC0,   32, 
                            BFC0,   32, 
                            BTC0,   32, 
                            BDV0,   32, 
                            BST0,   32, 
                            BPR0,   32, 
                            BRC0,   32, 
                            BPV0,   32, 
                            BTP0,   16, 
                            BRS0,   16, 
                            BCW0,   32, 
                            BCL0,   32, 
                            BCG0,   32, 
                            BG20,   32, 
                            BMO0,   64, 
                            BIF0,   64, 
                            BSN0,   32, 
                            BTY0,   64, 
                            BCC0,   16, 
                            ECOS,   8, 
                            REV0,   8, 
                            REV1,   32, 
                            BAE0,   16, 
                            BAF0,   16, 
                            BPU1,   32, 
                            BDC1,   32, 
                            BFC1,   32, 
                            BTC1,   32, 
                            BDV1,   32, 
                            BST1,   32, 
                            BPR1,   32, 
                            BRC1,   32, 
                            BPV1,   32, 
                            BTP1,   16, 
                            BRS1,   16, 
                            BCW1,   32, 
                            BCL1,   32, 
                            BCG1,   32, 
                            BG21,   32, 
                            BMO1,   64, 
                            BIF1,   64, 
                            BSN1,   32, 
                            BTY1,   64, 
                            BCC1,   16, 
                            OEM1,   8, 
                            OEM2,   8, 
                            OEM3,   16, 
                            OEM4,   8, 
                            Offset (0xD4), 
                            HDDT,   8, 
                            Offset (0xD7), 
                            DTHL,   8, 
                            BRTS,   8, 
                            Offset (0xDA), 
                            WINF,   8, 
                            RINF,   8, 
                            Offset (0xDD), 
                            INF2,   8, 
                            MUTE,   1, 
                            DLED,   1, 
                            Offset (0xF8), 
                            FCMD,   8, 
                            FDAT,   8
                        }

                        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x0A, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (OEM4, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x0B, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (OEM4, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x0C, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (0xFB, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x0D, P80H)
                            If (^^^^LID0.LIDF)
                            {
                                If (^^^^WMI.HKDR)
                                {
                                    Store (0xC2, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }
                            Else
                            {
                                Notify (SLPB, 0x80)
                            }
                        }

                        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x0E, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (0xFA, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x0F, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (0xFA, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x10, P80H)
                            If (LEqual (OSYS, 0x03E8))
                            {
                                If (D2F0)
                                {
                                    Notify (GFX0, 0x80)
                                }
                            }
                            Else
                            {
                                If (D2F0)
                                {
                                    If (LEqual (Zero, And (0x03, DSEN)))
                                    {
                                        ^^^GFX0.SWIT ()
                                        If (LNotEqual (CSTE, NSTE))
                                        {
                                            Store (One, ^^^GFX0.CEVT)
                                            Store (0x03, ^^^GFX0.CSTS)
                                            If (LGreater (OSYS, 0x07D0)) {}
                                            Else
                                            {
                                                Notify (GFX0, Zero)
                                            }

                                            Sleep (0x02EE)
                                            Notify (GFX0, 0x80)
                                        }
                                    }
                                }
                            }
                        }

                        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x11, P80H)
                            If (And (WINF, One))
                            {
                                If (LEqual (OSYS, 0x03E8))
                                {
                                    Notify (^^^GFX0.LCD0, 0x87)
                                }
                                Else
                                {
                                    If (LEqual (^^^GFX0.CDDS (0x0410), 0x1F))
                                    {
                                        If (LEqual (OEM2, Zero))
                                        {
                                            If (^^^^WMI.HKDR)
                                            {
                                                Store (0xE0, ^^^^WMI.EVNT)
                                                Notify (WMI, 0xD0)
                                            }
                                        }
                                        Else
                                        {
                                            Notify (^^^GFX0.LCD0, 0x87)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                If (^^^^WMI.HKDR)
                                {
                                    Add (OEM2, 0xE0, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }
                        }

                        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x12, P80H)
                            If (And (WINF, One))
                            {
                                If (LEqual (OSYS, 0x03E8))
                                {
                                    Notify (^^^GFX0.LCD0, 0x86)
                                }
                                Else
                                {
                                    If (LEqual (^^^GFX0.CDDS (0x0410), 0x1F))
                                    {
                                        If (LEqual (OEM2, 0x07))
                                        {
                                            If (^^^^WMI.HKDR)
                                            {
                                                Store (0xE7, ^^^^WMI.EVNT)
                                                Notify (WMI, 0xD0)
                                            }
                                        }
                                        Else
                                        {
                                            Notify (^^^GFX0.LCD0, 0x86)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                If (^^^^WMI.HKDR)
                                {
                                    Add (OEM2, 0xE0, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }
                        }

                        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x13, P80H)
                            If (LEqual (OSYS, 0x03E8))
                            {
                                Store (0xB1, SSMP)
                            }

                            If (^^^^WMI.HKDR)
                            {
                                Store (OEM4, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x14, P80H)
                            If (LEqual (OSYS, 0x03E8))
                            {
                                Store (0xB1, SSMP)
                            }

                            If (^^^^WMI.HKDR)
                            {
                                Store (OEM4, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x15, P80H)
                            If (LEqual (OSYS, 0x03E8))
                            {
                                Store (0xB1, SSMP)
                            }

                            If (^^^^WMI.HKDR)
                            {
                                Store (OEM4, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x16, P80H)
                            Notify (AC, 0x80)
                            Sleep (0x01F4)
                            If (BAT0)
                            {
                                Notify (^^^^BAT0, 0x81)
                                Sleep (0x32)
                                Notify (^^^^BAT0, 0x80)
                                Sleep (0x32)
                            }
                        }

                        Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x17, P80H)
                            Notify (^^^^BAT0, 0x81)
                        }

                        Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x19, P80H)
                            Notify (^^^^BAT0, 0x81)
                            If (^^^^WMI.HKDR)
                            {
                                Store (0xB7, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x1B, P80H)
                            If (^^^^LID0.LIDF)
                            {
                                If (LIDS)
                                {
                                    Notify (LID0, 0x80)
                                }
                                Else
                                {
                                    If (^^^^WMI.HKDR)
                                    {
                                        Store (0xC0, ^^^^WMI.EVNT)
                                        Notify (WMI, 0xD0)
                                    }
                                }
                            }
                            Else
                            {
                                Notify (LID0, 0x80)
                            }
                        }

                        Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x1C, P80H)
                            Notify (\_TZ.TZ0, 0x81)
                            Notify (\_TZ.TZ0, 0x80)
                        }

                        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x1D, P80H)
                            Notify (PWRB, 0x80)
                        }

                        Method (_Q1E, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x1E, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (0xB7, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x24, P80H)
                        }

                        Method (_Q35, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x35, P80H)
                            If (And (OEM3, 0x8000))
                            {
                                Store (One, SFEC)
                                If (^^^^WMI.HKDR)
                                {
                                    Store (0xDE, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }
                            Else
                            {
                                Store (Zero, SFEC)
                                If (^^^^WMI.HKDR)
                                {
                                    Store (0xDF, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }

                            If (LEqual (\_TZ.TZ0.PPFG, Zero))
                            {
                                If (LNotEqual (And (OEMF, 0x06), 0x02))
                                {
                                    If (SFEC)
                                    {
                                        ^^^^AC.ADJP (Zero)
                                    }
                                    Else
                                    {
                                        If (^^^^AC.B15C ())
                                        {
                                            ^^^^AC.ADJP (One)
                                        }
                                        Else
                                        {
                                            ^^^^AC.ADJP (ADP)
                                        }
                                    }
                                }
                            }
                        }

                        Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x36, P80H)
                        }

                        Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x37, P80H)
                            If (^^^^AC.B15C ())
                            {
                                If (LEqual (\_TZ.TZ0.PPFG, Zero))
                                {
                                    If (And (OEM3, 0x2000))
                                    {
                                        If (And (CFGD, One))
                                        {
                                            Store (\_PR.CPU0._PSS, Local1)
                                            Store (SizeOf (Local1), Local2)
                                            Decrement (Local2)
                                            Store (Local2, \_PR.CPU0._PPC)
                                            PNOT ()
                                        }
                                        Else
                                        {
                                            Store (0xB3, SSMP)
                                        }
                                    }
                                    Else
                                    {
                                        If (SILF ())
                                        {
                                            ^^^^AC.ADJP (Zero)
                                        }
                                        Else
                                        {
                                            ^^^^AC.ADJP (One)
                                        }
                                    }
                                }
                            }
                        }

                        Method (_Q39, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x39, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (OEM4, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x40, P80H)
                            If (^^^^WMI.HKDR)
                            {
                                Store (0xFE, ^^^^WMI.EVNT)
                                Notify (WMI, 0xD0)
                            }
                        }

                        Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x41, P80H)
                        }

                        Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x46, P80H)
                        }

                        Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            Store (0x4A, P80H)
                            Store (OEM4, Local0)
                            Store (Local0, _T_0)
                            If (LEqual (_T_0, 0xCC))
                            {
                                If (^^^^WMI.HKDR)
                                {
                                    Store (0xBA, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0xCB))
                                {
                                    If (^^^^WMI.HKDR)
                                    {
                                        Store (0xBB, ^^^^WMI.EVNT)
                                        Notify (WMI, 0xD0)
                                    }
                                }
                            }
                        }

                        Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            Store (0x50, P80H)
                            Store (OEM4, Local0)
                            If (LEqual (Local0, 0xDB))
                            {
                                If (^^^^WMI.HKDR)
                                {
                                    Store (0xA3, ^^^^WMI.EVNT)
                                    Notify (WMI, 0xD0)
                                }
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Device (PWRB)
                    {
                        Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x08, 
                            0x03
                        })
                    }

                    Device (SLPB)
                    {
                        Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x08, 
                            0x03
                        })
                    }

                    Device (LID0)
                    {
                        Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                        Name (LIDF, Zero)
                        Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                        {
                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                Return (^^PCI0.LPCB.EC.LIDS)
                            }
                            Else
                            {
                                Return (One)
                            }
                        }

                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x08, 
                            0x03
                        })
                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                Store (Arg0, ^^PCI0.LPCB.EC.LWKE)
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003")  // _HID: Hardware ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Method (B15C, 0, NotSerialized)
                        {
                            If (And (OEMF, 0x06))
                            {
                                Return (Zero)
                            }

                            Return (One)
                        }

                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                If (And (OEMF, 0x06))
                                {
                                    If (LEqual (And (OEMF, 0x06), 0x02)) {}
                                    Else
                                    {
                                        If (LEqual (And (OEMF, 0x06), 0x04)) {}
                                    }

                                    If (LEqual (\_TZ.TZ0.PPFG, Zero))
                                    {
                                        If (^^PCI0.LPCB.EC.SILF ())
                                        {
                                            ADJP (Zero)
                                        }
                                        Else
                                        {
                                            If (B15C ())
                                            {
                                                ADJP (One)
                                            }
                                            Else
                                            {
                                                ADJP (^^PCI0.LPCB.EC.ADP)
                                            }
                                        }
                                    }
                                }

                                Return (^^PCI0.LPCB.EC.ADP)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (ADJP, 1, NotSerialized)
                        {
                            If (And (CFGD, One))
                            {
                                If (Arg0)
                                {
                                    Store (Zero, Local0)
                                }
                                Else
                                {
                                    Store (\_PR.CPU0._PSS, Local1)
                                    Store (SizeOf (Local1), Local2)
                                    If (LGreater (Local2, 0x02))
                                    {
                                        If (LAnd (CFGD, 0x02000000))
                                        {
                                            Decrement (Local2)
                                        }

                                        If (LGreater (Local2, 0x02))
                                        {
                                            Store (Local2, Local3)
                                            ShiftRight (Local2, One, Local0)
                                            Increment (Local0)
                                            Decrement (Local3)
                                            If (LEqual (Local3, Local0))
                                            {
                                                Decrement (Local0)
                                            }

                                            If (LAnd (CFGD, 0x02000000))
                                            {
                                                Increment (Local0)
                                            }
                                        }
                                        Else
                                        {
                                            Store (Local2, Local0)
                                        }
                                    }
                                    Else
                                    {
                                        If (Local2)
                                        {
                                            Decrement (Local2)
                                            Store (Local2, Local0)
                                        }
                                        Else
                                        {
                                            Store (Zero, Local0)
                                        }
                                    }
                                }

                                Store (Local0, \_PR.CPU0._PPC)
                                PNOT ()
                            }
                            Else
                            {
                                If (Arg0)
                                {
                                    Store (0xB4, SSMP)
                                }
                                Else
                                {
                                    Store (0xB3, SSMP)
                                }
                            }
                        }
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Name (BFCC, Zero)
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                If (^^PCI0.LPCB.EC.BAT0)
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

                        Name (PBIF, Package (0x0D)
                        {
                            One, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            One, 
                            0x39D0, 
                            Zero, 
                            Zero, 
                            0x40, 
                            0x40, 
                            "BAT", 
                            "0001", 
                            "LION", 
                            "NOTEBOOK"
                        })
                        Method (IVBI, 0, NotSerialized)
                        {
                            Store (0xFFFFFFFF, Index (PBIF, One))
                            Store (0xFFFFFFFF, Index (PBIF, 0x02))
                            Store (0xFFFFFFFF, Index (PBIF, 0x04))
                            Store (" ", Index (PBIF, 0x09))
                            Store (" ", Index (PBIF, 0x0A))
                            Store (" ", Index (PBIF, 0x0B))
                            Store (" ", Index (PBIF, 0x0C))
                            Store (Zero, BFCC)
                        }

                        Method (UPBI, 0, NotSerialized)
                        {
                            If (^^PCI0.LPCB.EC.BAT0)
                            {
                                And (^^PCI0.LPCB.EC.BDC0, 0xFFFF, Local0)
                                Store (Local0, Index (PBIF, One))
                                And (^^PCI0.LPCB.EC.BFC0, 0xFFFF, Local0)
                                Store (Local0, Index (PBIF, 0x02))
                                Store (Local0, BFCC)
                                And (^^PCI0.LPCB.EC.BDV0, 0xFFFF, Local0)
                                Store (Local0, Index (PBIF, 0x04))
                                And (^^PCI0.LPCB.EC.BCW0, 0xFFFF, Local0)
                                Store (Local0, Index (PBIF, 0x05))
                                And (^^PCI0.LPCB.EC.BCL0, 0xFFFF, Local0)
                                Store (Local0, Index (PBIF, 0x06))
                                Store ("BAT", Index (PBIF, 0x09))
                                Store ("0001", Index (PBIF, 0x0A))
                                Store ("LION", Index (PBIF, 0x0B))
                                Store ("NOTEBOOK", Index (PBIF, 0x0C))
                            }
                            Else
                            {
                                IVBI ()
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                UPBI ()
                            }
                            Else
                            {
                                IVBI ()
                            }

                            Return (PBIF)
                        }

                        Name (PBST, Package (0x04)
                        {
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x3D90
                        })
                        Method (IVBS, 0, NotSerialized)
                        {
                            Store (Zero, Index (PBST, Zero))
                            Store (0xFFFFFFFF, Index (PBST, One))
                            Store (0xFFFFFFFF, Index (PBST, 0x02))
                            Store (0x2710, Index (PBST, 0x03))
                        }

                        Method (UPBS, 0, NotSerialized)
                        {
                            If (^^PCI0.LPCB.EC.BAT0)
                            {
                                Store (Zero, Local0)
                                Store (Zero, Local1)
                                If (^^PCI0.LPCB.EC.ADP)
                                {
                                    If (LEqual (And (^^PCI0.LPCB.EC.BST0, 0x02), 0x02))
                                    {
                                        Or (Local0, 0x02, Local0)
                                        And (^^PCI0.LPCB.EC.BPR0, 0xFFFF, Local1)
                                    }
                                }
                                Else
                                {
                                    Or (Local0, One, Local0)
                                    And (^^PCI0.LPCB.EC.BPR0, 0xFFFF, Local1)
                                }

                                And (Local1, 0x8000, Local7)
                                If (LEqual (Local7, 0x8000))
                                {
                                    Store (0xFFFFFFFF, Local1)
                                }

                                And (^^PCI0.LPCB.EC.BRC0, 0xFFFF, Local2)
                                And (^^PCI0.LPCB.EC.BPV0, 0xFFFF, Local3)
                                Store (Local0, Index (PBST, Zero))
                                Store (Local1, Index (PBST, One))
                                Store (Local2, Index (PBST, 0x02))
                                Store (Local3, Index (PBST, 0x03))
                                If (LNotEqual (BFCC, ^^PCI0.LPCB.EC.BFC0))
                                {
                                    Notify (BAT0, 0x81)
                                }
                            }
                            Else
                            {
                                IVBS ()
                            }
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                UPBS ()
                            }
                            Else
                            {
                                IVBS ()
                            }

                            Return (PBST)
                        }
                    }

                    Device (WMI)
                    {
                        Name (_HID, "PNP0C14")  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Name (_WDG, Buffer (0x3C)
                        {
                            /* 0000 */   0x6D, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                            /* 0008 */   0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                            /* 0010 */   0x42, 0x42, 0x01, 0x02, 0x6B, 0x0F, 0xBC, 0xAB,
                            /* 0018 */   0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,
                            /* 0020 */   0x29, 0x10, 0x00, 0x00, 0xD0, 0x00, 0x01, 0x08,
                            /* 0028 */   0x6C, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                            /* 0030 */   0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                            /* 0038 */   0xD1, 0x00, 0x01, 0x08
                        })
                        Name (EVNT, Zero)
                        Name (EVID, Zero)
                        Name (HKDR, Zero)
                        Method (WMBB, 3, NotSerialized)
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            P8XH (Zero, Arg1)
                            If (SizeOf (Arg2))
                            {
                                CreateByteField (Arg2, Zero, ARGS)
                            }

                            Store (Zero, Local0)
                            Store (Arg1, _T_0)
                            If (LEqual (_T_0, One))
                            {
                                If (HKDR)
                                {
                                    Store (EVNT, Local0)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x10))
                                {
                                    If (^^PCI0.LPCB.EC.SFEC)
                                    {
                                        Or (Local0, One, Local0)
                                    }

                                    If (\_TZ.TZ0.PPFG)
                                    {
                                        Or (Local0, 0x02, Local0)
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x11))
                                    {
                                        If (^^PCI0.LPCB.EC.ECOK)
                                        {
                                            If (And (^^PCI0.LPCB.EC.OEM3, 0x1000))
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
                                            Store (0xFFFF, Local0)
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x12))
                                        {
                                            If (^^PCI0.LPCB.EC.ECOK)
                                            {
                                                If (And (^^PCI0.LPCB.EC.OEM3, 0x0800))
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
                                                Store (0xFFFF, Local0)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x13))
                                            {
                                                If (^^PCI0.LPCB.EC.ECOK)
                                                {
                                                    Store (^^PCI0.LPCB.EC.BFC0, Local0)
                                                }
                                                Else
                                                {
                                                    Store (0xFFFF, Local0)
                                                }
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x32))
                                                {
                                                    If (^^PCI0.LPCB.EC.ECOK)
                                                    {
                                                        Store (^^PCI0.LPCB.EC.BDC0, Local0)
                                                    }
                                                    Else
                                                    {
                                                        Store (0xFFFF, Local0)
                                                    }
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x33))
                                                    {
                                                        If (^^PCI0.LPCB.EC.ECOK)
                                                        {
                                                            Store (^^PCI0.LPCB.EC.BAF0, Local0)
                                                        }
                                                        Else
                                                        {
                                                            Store (0xFFFF, Local0)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x34))
                                                        {
                                                            If (^^PCI0.LPCB.EC.ECOK)
                                                            {
                                                                Store (^^PCI0.LPCB.EC.BAE0, Local0)
                                                            }
                                                            Else
                                                            {
                                                                Store (0xFFFF, Local0)
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x3B))
                                                            {
                                                                Noop
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x3C))
                                                                {
                                                                    If (^^PCI0.GFX0.PDDS (0x0300))
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
                                                                    If (LEqual (_T_0, 0x3F))
                                                                    {
                                                                        Store (Zero, Local0)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0x51))
                                                                        {
                                                                            Noop
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0x52))
                                                                            {
                                                                                Store (0x25, Local0)
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0x1D))
                                                                                {
                                                                                    If (^^PCI0.LPCB.EC.ECOK)
                                                                                    {
                                                                                        If (ARGS)
                                                                                        {
                                                                                            Store (One, ^^PCI0.LPCB.EC.SFEC)
                                                                                            Store (0xDD, P80H)
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            Store (Zero, ^^PCI0.LPCB.EC.SFEC)
                                                                                            Store (0x5D, P80H)
                                                                                        }

                                                                                        If (LEqual (\_TZ.TZ0.PPFG, Zero))
                                                                                        {
                                                                                            If (LNotEqual (And (OEMF, 0x06), 0x02))
                                                                                            {
                                                                                                If (^^PCI0.LPCB.EC.SFEC)
                                                                                                {
                                                                                                    ^^AC.ADJP (Zero)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If (^^AC.B15C ())
                                                                                                    {
                                                                                                        ^^AC.ADJP (One)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        ^^AC.ADJP (^^PCI0.LPCB.EC.ADP)
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0x1E))
                                                                                    {
                                                                                        If (^^PCI0.LPCB.EC.ECOK)
                                                                                        {
                                                                                            If (ARGS)
                                                                                            {
                                                                                                Store (Zero, ^^PCI0.LPCB.EC.FDAT)
                                                                                                Store (0xDE, P80H)
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                Store (One, ^^PCI0.LPCB.EC.FDAT)
                                                                                                Store (0x5E, P80H)
                                                                                            }

                                                                                            Store (0xA1, ^^PCI0.LPCB.EC.FCMD)
                                                                                        }
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_0, 0x1F))
                                                                                        {
                                                                                            If (^^PCI0.LPCB.EC.ECOK)
                                                                                            {
                                                                                                If (ARGS)
                                                                                                {
                                                                                                    Store (One, ^^PCI0.LPCB.EC.FDAT)
                                                                                                    Store (0xDF, P80H)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    Store (Zero, ^^PCI0.LPCB.EC.FDAT)
                                                                                                    Store (0x5F, P80H)
                                                                                                }

                                                                                                Store (0xA4, ^^PCI0.LPCB.EC.FCMD)
                                                                                            }
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If (LEqual (_T_0, 0x26))
                                                                                            {
                                                                                                Noop
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If (LEqual (_T_0, 0x2A))
                                                                                                {
                                                                                                    Noop
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If (LEqual (_T_0, 0x2C))
                                                                                                    {
                                                                                                        If (^^PCI0.LPCB.EC.ECOK)
                                                                                                        {
                                                                                                            Store (ARGS, ^^PCI0.LPCB.EC.HDDT)
                                                                                                        }
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If (LEqual (_T_0, 0x46))
                                                                                                        {
                                                                                                            Store (One, HKDR)
                                                                                                            If (And (OEMF, 0x20))
                                                                                                            {
                                                                                                                Store (0x05, Local0)
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                Store (One, Local0)
                                                                                                            }
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If (LEqual (_T_0, 0x47))
                                                                                                            {
                                                                                                                Noop
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If (LEqual (_T_0, 0x4E))
                                                                                                                {
                                                                                                                    Noop
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If (LEqual (_T_0, 0x4F))
                                                                                                                    {
                                                                                                                        Store (ARGS, _T_1)
                                                                                                                        If (LEqual (_T_1, Zero))
                                                                                                                        {
                                                                                                                            Store (0x4F, P80H)
                                                                                                                            If (^^PCI0.LPCB.EC.ECOK)
                                                                                                                            {
                                                                                                                                And (OEMF, 0xF9, OEMF)
                                                                                                                                If (And (CFGD, 0x80)) {}
                                                                                                                                If (LAnd (LEqual (\_TZ.TZ0.PPFG, Zero), LEqual (^^PCI0.LPCB.EC.SFEC, Zero)))
                                                                                                                                {
                                                                                                                                    ^^AC.ADJP (One)
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If (LEqual (_T_1, One))
                                                                                                                            {
                                                                                                                                Store (0x5F, P80H)
                                                                                                                                If (^^PCI0.LPCB.EC.ECOK)
                                                                                                                                {
                                                                                                                                    Or (And (OEMF, 0xF9), 0x02, OEMF)
                                                                                                                                    If (And (CFGD, 0x80)) {}
                                                                                                                                    If (LAnd (LEqual (\_TZ.TZ0.PPFG, Zero), LEqual (^^PCI0.LPCB.EC.SFEC, Zero)))
                                                                                                                                    {
                                                                                                                                        ^^AC.ADJP (Zero)
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If (LEqual (_T_1, 0x02))
                                                                                                                                {
                                                                                                                                    Store (0x6F, P80H)
                                                                                                                                    If (^^PCI0.LPCB.EC.ECOK)
                                                                                                                                    {
                                                                                                                                        Or (And (OEMF, 0xF9), 0x04, OEMF)
                                                                                                                                        If (And (CFGD, 0x80))
                                                                                                                                        {
                                                                                                                                            If (^^PCI0.LPCB.EC.ADP) {}
                                                                                                                                            Else
                                                                                                                                            {
                                                                                                                                            }
                                                                                                                                        }

                                                                                                                                        If (LAnd (LEqual (\_TZ.TZ0.PPFG, Zero), LEqual (^^PCI0.LPCB.EC.SFEC, Zero)))
                                                                                                                                        {
                                                                                                                                            ^^AC.ADJP (^^PCI0.LPCB.EC.ADP)
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If (LEqual (_T_0, 0x55))
                                                                                                                        {
                                                                                                                            Store (0x55, P80H)
                                                                                                                            If (^^PCI0.LPCB.EC.ECOK)
                                                                                                                            {
                                                                                                                                Or (^^PCI0.LPCB.EC.INF2, 0x02, ^^PCI0.LPCB.EC.INF2)
                                                                                                                            }
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If (LEqual (_T_0, 0x56))
                                                                                                                            {
                                                                                                                                If (^^PCI0.LPCB.EC.ECOK)
                                                                                                                                {
                                                                                                                                    If (And (ARGS, One))
                                                                                                                                    {
                                                                                                                                        Store (Zero, ^^PCI0.LPCB.EC.FDAT)
                                                                                                                                        Store (0xBE, ^^PCI0.LPCB.EC.FCMD)
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        Store (One, ^^PCI0.LPCB.EC.FDAT)
                                                                                                                                        Store (0xBE, ^^PCI0.LPCB.EC.FCMD)
                                                                                                                                    }

                                                                                                                                    If (LEqual (And (OEMF, 0x40), Zero))
                                                                                                                                    {
                                                                                                                                        If (And (ARGS, 0x02))
                                                                                                                                        {
                                                                                                                                            Store (One, ^^PCI0.LPCB.EC.DLED)
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            Store (Zero, ^^PCI0.LPCB.EC.DLED)
                                                                                                                                        }
                                                                                                                                    }

                                                                                                                                    If (And (ARGS, 0x04))
                                                                                                                                    {
                                                                                                                                        Store (One, ^^PCI0.LPCB.EC.MUTE)
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        Store (Zero, ^^PCI0.LPCB.EC.MUTE)
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If (LEqual (_T_0, 0x57))
                                                                                                                                {
                                                                                                                                    If (^^PCI0.LPCB.EC.ECOK)
                                                                                                                                    {
                                                                                                                                        If (ARGS)
                                                                                                                                        {
                                                                                                                                            Store (0x57, P80H)
                                                                                                                                            Store (One, ^^PCI0.LPCB.EC.MUTE)
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            Store (0xD7, P80H)
                                                                                                                                            Store (Zero, ^^PCI0.LPCB.EC.MUTE)
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    Store (0xFFFFFFFF, Local0)
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
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (Local0)
                        }

                        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                        {
                            Return (Zero)
                        }
                    }
                }

                Scope (\_TZ)
                {
                    Name (DETP, 0x37)
                    Name (PATP, 0x5A)
                    Name (CRTP, 0x9B)
                    ThermalZone (TZ0)
                    {
                        Name (PPFG, Zero)
                        Method (_TMP, 0, Serialized)  // _TMP: Temperature
                        {
                            If (\_SB.PCI0.LPCB.EC.ECOK)
                            {
                                Store (\_SB.PCI0.LPCB.EC.TMP, Local0)
                                Divide (Local0, 0x0A, Local6, Local7)
                                If (LEqual (Local6, Zero))
                                {
                                    Add (Local0, 0x02, Local0)
                                }

                                Store (Zero, Local6)
                                If (PPFG)
                                {
                                    If (LLessEqual (Local0, Subtract (\_SB.PCI0.LPCB.EC.PSV, Multiply (\_SB.PCI0.LPCB.EC.DTHL, 0x0A)
                                        )))
                                    {
                                        If (\_SB.AC.B15C ())
                                        {
                                            If (And (\_SB.PCI0.LPCB.EC.OEM3, 0x2000)) {}
                                            Else
                                            {
                                                If (\_SB.PCI0.LPCB.EC.SILF ())
                                                {
                                                    \_SB.AC.ADJP (Zero)
                                                }
                                                Else
                                                {
                                                    \_SB.AC.ADJP (One)
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If (\_SB.PCI0.LPCB.EC.SILF ())
                                            {
                                                \_SB.AC.ADJP (Zero)
                                            }
                                            Else
                                            {
                                                \_SB.AC.ADJP (\_SB.PCI0.LPCB.EC.ADP)
                                            }
                                        }

                                        Store (Zero, PPFG)
                                        Store (One, Local6)
                                    }
                                }
                                Else
                                {
                                    If (LGreaterEqual (Local0, \_SB.PCI0.LPCB.EC.PSV))
                                    {
                                        Store (One, PPFG)
                                        If (And (CFGD, One))
                                        {
                                            Store (\_PR.CPU0._PSS, Local1)
                                            Store (SizeOf (Local1), Local2)
                                            Decrement (Local2)
                                            Store (Local2, \_PR.CPU0._PPC)
                                            PNOT ()
                                        }
                                        Else
                                        {
                                            Store (0xB3, SSMP)
                                        }

                                        Store (One, Local6)
                                    }
                                }

                                If (Local6)
                                {
                                    Store (\_SB.PCI0.LPCB.EC.TMP, Local0)
                                    Divide (Local0, 0x0A, Local6, Local7)
                                    If (LEqual (Local6, Zero))
                                    {
                                        Add (Local0, 0x02, Local0)
                                    }
                                }

                                Return (Local0)
                            }
                            Else
                            {
                                Return (Add (Multiply (DETP, 0x0A), 0x0AAC))
                            }
                        }

                        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
                        {
                            If (\_SB.PCI0.LPCB.EC.ECOK)
                            {
                                Return (\_SB.PCI0.LPCB.EC.CRT)
                            }
                            Else
                            {
                                Return (Add (Multiply (CRTP, 0x0A), 0x0AAC))
                            }
                        }
                    }
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
                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
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

                            Return (BUF0)
                        }
                        Else
                        {
                            Return (BUF1)
                        }
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
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
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
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0600,             // Range Minimum
                            0x0600,             // Range Maximum
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
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0xFE00,             // Range Minimum
                            0xFE00,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
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
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (BUF1)
                            }
                            Else
                            {
                                Return (BUF0)
                            }
                        }
                        Else
                        {
                            Return (BUF0)
                        }
                    }
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
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
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (BUF1)
                            }
                            Else
                            {
                                Return (BUF0)
                            }
                        }
                        Else
                        {
                            Return (BUF0)
                        }
                    }
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

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
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
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LOr (And (OEMF, 0x80), And (FLG1, One)))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                }

                Device (SENM)
                {
                    Name (_HID, EisaId ("STLC033"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Name (_UID, One)  // _UID: Unique ID
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
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (OEMF, 0x80))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (ELNM)
                {
                    Name (_HID, EisaId ("ETD0100"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Name (_UID, 0x02)  // _UID: Unique ID
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
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (FLG1, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0x62, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                        ,   1, 
                    E1EN,   8
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (Ones, E1EN)
                    }
                    Else
                    {
                        Store (Zero, E1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
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
                        })
                    }
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x03, 
                    0x03
                })
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x04, 
                    0x03
                })
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0C, 
                    0x03
                })
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0004)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0E, 
                    0x03
                })
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0x62, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                        ,   1, 
                    E2EN,   6
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (Ones, E2EN)
                    }
                    Else
                    {
                        Store (Zero, E2EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
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
                        })
                    }
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x05, 
                    0x03
                })
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x20, 
                    0x03
                })
            }

            Device (USB7)
            {
                Name (_ADR, 0x001A0003)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x25, 
                    0x03
                })
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
                    0x03
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Scope (PXSX)
                {
                    Name (_1MV, One)
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

                Device (J380)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, Zero, 0xFF)
                    Field (PCFG, ByteAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        Offset (0x2C), 
                        SSID,   32, 
                        Offset (0x89), 
                        CACH,   8, 
                        Offset (0xAC), 
                            ,   6, 
                        D3EF,   1, 
                        Offset (0xAD), 
                        Offset (0xAE), 
                        PMOS,   8, 
                        Offset (0xB2), 
                        LAT0,   8, 
                        Offset (0xCD), 
                        XDNO,   8, 
                        INTL,   8, 
                        ATRB,   8, 
                        Offset (0xD3), 
                        PMC0,   8, 
                            ,   4, 
                        PMT0,   1, 
                        Offset (0xDE), 
                        TEMP,   8, 
                        Offset (0xEC), 
                        D3ET,   8, 
                        Offset (0xF5), 
                            ,   5, 
                        D3EL,   1
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LNotEqual (DVID, 0xFFFFFFFF))
                        {
                            Return (0x0A)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08 ())
                    }

                    Return (PR08 ())
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F)
                    }

                    Return (PR0F)
                }
            }

            Device (GLAN)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
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

            Device (PEG3)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A ())
                    }

                    Return (PR0A ())
                }
            }

            Device (PEG4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
                })
            }

            Device (PEG5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
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

            Device (PEG6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x03
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
        Store (Zero, P80D)
        P8XH (Zero, Arg0)
        Store (Arg0, SLEP)
        If (LEqual (Arg0, 0x03))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        Store (Zero, \_SB.WMI.HKDR)
        Store (0xB1, SSMP)
        Store (0xB4, SSMP)
        If (LEqual (Arg0, 0x04))
        {
            Store (0xB0, SSMP)
            Sleep (One)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (Zero, ShiftLeft (Arg0, 0x04))
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

        If (LEqual (Arg0, 0x03)) {}
        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (And (OEMF, 0x20))
            {
                Notify (\_SB.PCI0, Zero)
                Notify (\_SB.PCI0.EHC1, 0x02)
                Notify (\_SB.PCI0.EHC2, 0x02)
            }

            If (\_SB.PCI0.D2F0)
            {
                Store (LIDS, \_SB.PCI0.GFX0.CLID)
            }

            If (\_SB.PCI0.LPCB.EC.ECOK)
            {
                \_SB.BAT0.UPBI ()
                \_SB.BAT0.UPBS ()
                Notify (\_SB.BAT0, Zero)
                Notify (\_SB.AC, Zero)
                If (LEqual (Arg0, 0x04))
                {
                    If (LGreaterEqual (OSYS, 0x07D6))
                    {
                        Or (\_SB.PCI0.LPCB.EC.WINF, One, \_SB.PCI0.LPCB.EC.WINF)
                    }
                    Else
                    {
                        If (LEqual (OSYS, 0x03E8))
                        {
                            Or (\_SB.PCI0.LPCB.EC.WINF, One, \_SB.PCI0.LPCB.EC.WINF)
                        }
                    }

                    If (And (FLG1, 0x40))
                    {
                        Or (\_SB.PCI0.LPCB.EC.INF2, One, \_SB.PCI0.LPCB.EC.INF2)
                    }
                    Else
                    {
                        And (\_SB.PCI0.LPCB.EC.INF2, 0xFE, \_SB.PCI0.LPCB.EC.INF2)
                    }
                }

                Store (Zero, \_TZ.TZ0.PPFG)
                Store (Zero, \_SB.PCI0.LPCB.EC.SFEC)
                If (\_SB.PCI0.LPCB.EC.ADP)
                {
                    If (And (CFGD, One))
                    {
                        Store (Zero, \_PR.CPU0._PPC)
                    }
                }
            }

            Store (Zero, Local0)
            If (LEqual (Arg0, 0x03))
            {
                Store (0xB5, SSMP)
                Store (SMIF, Local0)
            }

            If (LAnd (LEqual (Arg0, 0x03), LEqual (Local0, One))) {}
            Else
            {
                Notify (\_SB.PWRB, 0x02)
            }

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

            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
                Store (One, \_SB.PCI0.RP01.PMSX)
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

        P8XH (Zero, 0xAB)
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

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (_OSI, Local0))
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

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }
            }
            Else
            {
                If (MCTH (_OS, "Linux"))
                {
                    Store (0x03E8, OSYS)
                }
            }
        }

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
                    0x00004000,         // Address Length
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
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    _Y17)
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
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                If (LEqual (^^TMRP.TRID, 0x3B32))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TMRL)  // _LEN: Length
                    Store (Zero, TMRL)
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, TMB0)  // _BAS: Base Address
                    ShiftLeft (^^TMRP.TARB, 0x0C, TMB0)
                }
                Else
                {
                    Store (Zero, TTDR)
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TMR1)  // _BAS: Base Address
                    ShiftLeft (^^TMRP.TBAR, 0x0C, TMR1)
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, TMB1)  // _BAS: Base Address
                    ShiftLeft (^^TMRP.TARB, 0x0C, TMB1)
                    Store (One, TTDR)
                }

                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                    PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._LEN, MBLN)  // _LEN: Length
                    Store (Zero, MBLN)
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, MBR0)  // _BAS: Base Address
                    ShiftLeft (MHBR, 0x0E, MBR0)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                    PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    ShiftLeft (DIBI, 0x0C, DBR0)
                }

                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                    PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, EBLN)  // _LEN: Length
                    Store (Zero, EBLN)
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, EBR0)  // _BAS: Base Address
                    ShiftLeft (EPBR, 0x0C, EBR0)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (^^^CPBG.IMCH.PXBR, 0x14, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, ^^^CPBG.IMCH.PXSZ, XSZ0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y17._BAS, VTB0)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y17._LEN, VTLN)  // _LEN: Length
                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (
                    PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    If (LGreaterEqual (PNHM, 0x000106E1))
                    {
                        If (^^IO10.VTEN)
                        {
                            ShiftLeft (^^IO10.VTBA, 0x0C, VTB0)
                        }
                        Else
                        {
                            Store (Zero, VTLN)
                        }
                    }
                    Else
                    {
                        If (^^IIO0.VTEN)
                        {
                            ShiftLeft (^^IIO0.VTBA, 0x0C, VTB0)
                        }
                        Else
                        {
                            Store (Zero, VTLN)
                        }
                    }
                }
                Else
                {
                    If (ADVE)
                    {
                        ShiftLeft (ADVT, 0x0C, VTB0)
                    }
                    Else
                    {
                        Store (Zero, VTLN)
                    }
                }

                Return (BUF0)
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

        OperationRegion (IO_D, SystemIO, 0x0600, 0x04)
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
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
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
            If (LEqual (And (Arg0, 0x09), Zero))
            {
                Return (0xFFFFFFFF)
            }

            If (LEqual (And (Arg0, 0x09), 0x08))
            {
                Return (0x0384)
            }

            ShiftRight (And (Arg0, 0x0300), 0x08, Local0)
            ShiftRight (And (Arg0, 0x3000), 0x0C, Local1)
            Return (Multiply (0x1E, Subtract (0x09, Add (Local0, Local1))
                ))
        }

        Method (GDMA, 5, Serialized)
        {
            If (Arg0)
            {
                If (LAnd (Arg1, Arg4))
                {
                    Return (0x14)
                }

                If (LAnd (Arg2, Arg4))
                {
                    Return (Multiply (Subtract (0x04, Arg3), 0x0F))
                }

                Return (Multiply (Subtract (0x04, Arg3), 0x1E))
            }

            Return (0xFFFFFFFF)
        }

        Method (GETT, 1, Serialized)
        {
            Return (Multiply (0x1E, Subtract (0x09, Add (And (ShiftRight (Arg0, 0x02
                ), 0x03), And (Arg0, 0x03)))))
        }

        Method (GETF, 3, Serialized)
        {
            Name (TMPF, Zero)
            If (Arg0)
            {
                Or (TMPF, One, TMPF)
            }

            If (And (Arg2, 0x02))
            {
                Or (TMPF, 0x02, TMPF)
            }

            If (Arg1)
            {
                Or (TMPF, 0x04, TMPF)
            }

            If (And (Arg2, 0x20))
            {
                Or (TMPF, 0x08, TMPF)
            }

            If (And (Arg2, 0x4000))
            {
                Or (TMPF, 0x10, TMPF)
            }

            Return (TMPF)
        }

        Method (SETP, 3, Serialized)
        {
            If (LGreater (Arg0, 0xF0))
            {
                Return (0x08)
            }
            Else
            {
                If (And (Arg1, 0x02))
                {
                    If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Return (0x2301)
                    }

                    If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                    {
                        Return (0x2101)
                    }
                }

                Return (0x1001)
            }
        }

        Method (SDMA, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x14))
            {
                Return (One)
            }

            If (LLessEqual (Arg0, 0x1E))
            {
                Return (0x02)
            }

            If (LLessEqual (Arg0, 0x2D))
            {
                Return (One)
            }

            If (LLessEqual (Arg0, 0x3C))
            {
                Return (0x02)
            }

            If (LLessEqual (Arg0, 0x5A))
            {
                Return (One)
            }

            Return (Zero)
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
            Add (L01C, One, L01C)
            P8XH (Zero, One)
            P8XH (One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x01F4)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (\_SB.PCI0.RP01.PDSX)
                    {
                        Store (0xB6, SSMP)
                        Or (\_SB.PCI0.LPCB.BMBK, 0x40, \_SB.PCI0.LPCB.BMBK)
                    }
                    Else
                    {
                        And (\_SB.PCI0.LPCB.BMBK, 0xBF, \_SB.PCI0.LPCB.BMBK)
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
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (And (OEMF, 0x08))
                    {
                        If (\_SB.PCI0.RP02.PDSX)
                        {
                            Store (0x0A, Local2)
                            While (LGreater (Local2, Zero))
                            {
                                P8XH (Zero, 0xD1)
                                Sleep (0x64)
                                And (\_SB.PCI0.RP02.J380.DVID, 0xFFF0FFFF, Local1)
                                If (LEqual (Local1, 0x2380197B))
                                {
                                    Store (And (\_SB.PCI0.RP02.J380.LAT0, 0x88), \_SB.PCI0.RP02.J380.LAT0)
                                    Store (0x80, \_SB.PCI0.RP02.J380.PMC0)
                                    Store (0x47, \_SB.PCI0.RP02.J380.PMOS)
                                    Store (0x10, \_SB.PCI0.RP02.J380.XDNO)
                                    Store (0xA0, \_SB.PCI0.RP02.J380.TEMP)
                                    Store (And (\_SB.PCI0.RP02.J380.CACH, 0x8F), \_SB.PCI0.RP02.J380.CACH)
                                    Store (Zero, Local2)
                                }
                                Else
                                {
                                    Decrement (Local2)
                                }
                            }
                        }
                        Else
                        {
                            P8XH (Zero, 0xD2)
                            Sleep (0x64)
                        }
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
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }

            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }

            If (LAnd (LEqual (RP7D, Zero), \_SB.PCI0.RP07.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    Store (One, \_SB.PCI0.RP07.PDCX)
                    Store (One, \_SB.PCI0.RP07.HPSX)
                    Notify (\_SB.PCI0.RP07, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP07.HPSX)
                }
            }

            If (LAnd (LEqual (RP8D, Zero), \_SB.PCI0.RP08.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    Store (One, \_SB.PCI0.RP08.PDCX)
                    Store (One, \_SB.PCI0.RP08.HPSX)
                    Notify (\_SB.PCI0.RP08, Zero)
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

            If (CondRefOf (TNOT))
            {
                TNOT ()
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

        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P2, 0x02)
            Notify (\_SB.PCI0.P0P2.PEGP, 0x02)
            Notify (\_SB.PCI0.RP01, 0x02)
            Notify (\_SB.PCI0.RP02, 0x02)
            Notify (\_SB.PCI0.RP03, 0x02)
            Notify (\_SB.PCI0.RP04, 0x02)
            Notify (\_SB.PCI0.RP05, 0x02)
            Notify (\_SB.PCI0.RP07, 0x02)
            Notify (\_SB.PCI0.RP08, 0x02)
            Notify (\_SB.PCI0.PEG3, 0x02)
            Notify (\_SB.PCI0.PEG4, 0x02)
            Notify (\_SB.PCI0.PEG5, 0x02)
            Notify (\_SB.PCI0.PEG6, 0x02)
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
            Notify (\_SB.PCI0.GLAN, 0x02)
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB1, 0x02)
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB2, 0x02)
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB3, 0x02)
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB4, 0x02)
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB5, 0x02)
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB6, 0x02)
        }

        Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB7, 0x02)
        }
    }

    Scope (_SB)
    {
        Device (CPBG)
        {
            Name (_HID, EisaId ("PNP0A03"))  // _HID: Hardware ID
            Name (_UID, 0xFF)  // _UID: Unique ID
            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (Subtract (ShiftRight (PELN, 0x14), One))
            }

            Name (_ADR, Zero)  // _ADR: Address
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x00FF,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, _Y18)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.CPBG._Y18._MIN, PBMN)  // _MIN: Minimum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBMN)
                CreateWordField (BUF0, \_SB.CPBG._Y18._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBMX)
                Return (BUF0)
            }

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

