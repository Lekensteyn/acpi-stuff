/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Wed May 18 11:48:39 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000B236 (45622)
 *     Revision         0x02
 *     Checksum         0xE2
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "1025"
 *     Compiler Version 0x01000013 (16777235)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 2, "ACRSYS", "ACRPRDCT", 0x00000001)
{

    External (_PR_.CPU0._PPC, IntObj)
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.P0P2.PEGP.DD02, UnknownObj)
    External (CFGD, IntObj)
    External (HDOS, MethodObj)    // 0 Arguments
    External (HNOT, MethodObj)    // 1 Arguments
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
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED1B000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xF0000000)
    Name (PELN, 0x04000000)
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
    Name (GPBS, 0x0500)
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
    Name (FHPP, One)
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
    Name (TCGM, One)
    OperationRegion (GNVS, SystemMemory, 0x937AE018, 0x0000FD78)
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
        SROM,   32, 
        VROM,   516096, 
        S3DS,   8, 
        PMEE,   8
    }

    OperationRegion (OGNS, SystemMemory, 0x937ADF98, 0x00000052)
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
        PRMW,   8, 
        DI00,   560
    }

    OperationRegion (MBOX, SystemMemory, 0x937BEA98, 0x00000320)
    Field (MBOX, AnyAcc, NoLock, Preserve)
    {
        PCI1,   8, 
        PCI2,   8, 
        PCI3,   8, 
        PCI4,   8, 
        PCI5,   8, 
        PCI6,   8, 
        PCI7,   8, 
        PCI8,   8, 
        NLCK,   8, 
        ZIPE,   8, 
        COA1,   8, 
        CAIO,   8, 
        CAIP,   8, 
        CAMD,   8, 
        CADA,   8, 
        COB1,   8, 
        CBIO,   8, 
        CBIP,   8, 
        CBMD,   8, 
        CBDA,   8, 
        FHSD,   8, 
        COMC,   8, 
        CCIO,   8, 
        CCIP,   8, 
        CCMD,   8, 
        CCDA,   8, 
        COMD,   8, 
        CDIO,   8, 
        CDIP,   8, 
        CDMD,   8, 
        CDDA,   8, 
        LPT1,   8, 
        L1IO,   8, 
        L1IP,   8, 
        L1MD,   8, 
        L1DA,   8, 
        LPT2,   8, 
        L2IO,   8, 
        L2IP,   8, 
        L2MD,   8, 
        L2DA,   8, 
        LPT3,   8, 
        L3IO,   8, 
        L3IP,   8, 
        L3MD,   8, 
        L3DA,   8, 
        FDDC,   8, 
        FDWP,   8, 
        HGMP,   8, 
        LGMP,   8, 
        MIDI,   8, 
        AZLA,   8, 
        AUDO,   8, 
        MODM,   8, 
        IDEC,   8, 
        SSED,   8, 
        PACT,   8, 
        SCFG,   8, 
        AMOD,   8, 
        IMOD,   8, 
        LCFG,   8, 
        IDLY,   8, 
        PMTP,   8, 
        PM32,   8, 
        PMBM,   8, 
        PMTM,   8, 
        PSTP,   8, 
        PSIO,   8, 
        PSBM,   8, 
        PSTM,   8, 
        IDE0,   8, 
        IDE1,   8, 
        IDE2,   8, 
        IDE3,   8, 
        IDE4,   8, 
        IDE5,   8, 
        IDE6,   8, 
        IDE7,   8, 
        HIUB,   8, 
        LUBS,   8, 
        PLYT,   8, 
        EDCG,   8, 
        SDFY,   8, 
        SDTC,   8, 
        SDRP,   8, 
        SDCL,   8, 
        SDRC,   8, 
        SDRE,   8, 
        FC2L,   8, 
        FC3L,   8, 
        FCS4,   8, 
        APIM,   8, 
        HPTS,   8, 
        HPTA,   8, 
        EMAS,   8, 
        VGAO,   8, 
        SOFF,   8, 
        KBPO,   8, 
        MSPO,   8, 
        USBB,   8, 
        EVTL,   8, 
        SYBE,   8, 
        ETLC,   8, 
        ACPV,   8, 
        TPMD,   8, 
        TPMO,   8, 
        TPMC,   8, 
        TPMM,   8, 
        TPCC,   8, 
        TPLC,   8, 
        TPLR,   32, 
        QBOT,   8, 
        BOTQ,   8, 
        PBOT,   8, 
        M256,   8, 
        PEGF,   8, 
        OSY1,   16, 
        BMTP,   8, 
        BNPT,   8, 
        LNMT,   8, 
        NBTO,   8, 
        NABD,   8, 
        NEBD,   8, 
        NLBD,   8, 
        DFBT,   16, 
        NPSP,   16, 
        LANG,   8, 
        UACL,   8, 
        SUPS,   8, 
        DVET,   8, 
        S3RS,   8, 
        DAS1,   8, 
        DAS3,   8, 
        WKPM,   8, 
        WKMD,   8, 
        WKS5,   8, 
        HOUR,   8, 
        MINS,   8, 
        SECS,   8, 
        DOFM,   8, 
        NBTV,   64, 
        BTOD,   64, 
        SPVP,   16, 
        POPW,   16, 
        USPW,   16, 
        HDPW,   16, 
        SAHP,   16, 
        SAHF,   8, 
        SUVF,   8, 
        USRF,   8, 
        UMPW,   8, 
        SMHP,   16, 
        SAMP,   16, 
        SAMF,   8, 
        SPFA,   8, 
        SPFB,   8, 
        SPFC,   8, 
        SPFD,   8, 
        SPFE,   8, 
        SPFF,   8, 
        SPFG,   8, 
        SPFH,   8, 
        SPFI,   8, 
        SPFJ,   8, 
        SPFK,   8, 
        SPFL,   8, 
        SPFM,   8, 
        SPFN,   8, 
        SPFO,   8, 
        SPFP,   8, 
        SPFQ,   8, 
        SPFR,   8, 
        SPFS,   8, 
        SPFT,   8, 
        SPFU,   8, 
        SPFV,   8, 
        SPFW,   8, 
        SPFX,   8, 
        SPFY,   8, 
        SPFZ,   8, 
        SPF0,   8, 
        SPF1,   8, 
        SPF2,   8, 
        SPF3,   8, 
        SPF4,   8, 
        SPF5,   8, 
        KRSV,   136, 
        LANE,   8, 
        AORS,   8, 
        P0HP,   8, 
        P1HP,   8, 
        P2HP,   8, 
        P3HP,   8, 
        P4HP,   8, 
        P5HP,   8, 
        P0IL,   8, 
        P1IL,   8, 
        P2IL,   8, 
        D2F1,   8, 
        DVPA,   8, 
        DTGM,   8, 
        Offset (0xF5), 
        Offset (0xF6), 
        BOTT,   8, 
        PANT,   8, 
        TVTP,   8, 
        U201,   8, 
        U202,   8, 
        U111,   8, 
        U112,   8, 
        U113,   8, 
        U114,   8, 
        U115,   8, 
        UPPC,   8, 
        UP00,   8, 
        UP01,   8, 
        UP02,   8, 
        UP03,   8, 
        UP04,   8, 
        UP05,   8, 
        UP06,   8, 
        UP07,   8, 
        UP08,   8, 
        UP09,   8, 
        UP10,   8, 
        UP11,   8, 
        P80R,   8, 
        WDOG,   8, 
        WDTO,   16, 
        WDTB,   16, 
        MASF,   8, 
        MAMT,   8, 
        ABXP,   8, 
        SPIL,   8, 
        PWDW,   8, 
        HETO,   8, 
        AWTR,   16, 
        EOPT,   8, 
        ASFB,   8, 
        MBTX,   8, 
        IDER,   8, 
        SOLE,   8, 
        UCME,   8, 
        MEDM,   8, 
        PPDA,   8, 
        PPCG,   8, 
        PPBV,   8, 
        PPV1,   8, 
        PPPV,   8, 
        PPMV,   8, 
        PRE0,   8, 
        PRE1,   8, 
        PRE2,   8, 
        PRE3,   8, 
        PRE4,   8, 
        PRE5,   8, 
        PRE6,   8, 
        PRE7,   8, 
        PRA0,   8, 
        PRA1,   8, 
        PRA2,   8, 
        PRA3,   8, 
        PRA4,   8, 
        PRA5,   8, 
        PRA6,   8, 
        PRA7,   8, 
        PRU0,   8, 
        PRU1,   8, 
        PRU2,   8, 
        PRU3,   8, 
        PRU4,   8, 
        PRU5,   8, 
        PRU6,   8, 
        PRU7,   8, 
        PRF0,   8, 
        PRF1,   8, 
        PRF2,   8, 
        PRF3,   8, 
        PRF4,   8, 
        PRF5,   8, 
        PRF6,   8, 
        PRF7,   8, 
        PRN0,   8, 
        PRN1,   8, 
        PRN2,   8, 
        PRN3,   8, 
        PRN4,   8, 
        PRN5,   8, 
        PRN6,   8, 
        PRN7,   8, 
        PRC0,   8, 
        PRC1,   8, 
        PRC2,   8, 
        PRC3,   8, 
        PRC4,   8, 
        PRC5,   8, 
        PRC6,   8, 
        PRC7,   8, 
        CTD0,   8, 
        CTD1,   8, 
        CTD2,   8, 
        CTD3,   8, 
        CTD4,   8, 
        CTD5,   8, 
        CTD6,   8, 
        CTD7,   8, 
        PIE0,   8, 
        PIE1,   8, 
        PIE2,   8, 
        PIE3,   8, 
        PIE4,   8, 
        PIE5,   8, 
        PIE6,   8, 
        PIE7,   8, 
        SFE0,   8, 
        SFE1,   8, 
        SFE2,   8, 
        SFE3,   8, 
        SFE4,   8, 
        SFE5,   8, 
        SFE6,   8, 
        SFE7,   8, 
        SNE0,   8, 
        SNE1,   8, 
        SNE2,   8, 
        SNE3,   8, 
        SNE4,   8, 
        SNE5,   8, 
        SNE6,   8, 
        SNE7,   8, 
        SCE0,   8, 
        SCE1,   8, 
        SCE2,   8, 
        SCE3,   8, 
        SCE4,   8, 
        SCE5,   8, 
        SCE6,   8, 
        SCE7,   8, 
        PPS0,   8, 
        PPS1,   8, 
        PPS2,   8, 
        PPS3,   8, 
        PPS4,   8, 
        PPS5,   8, 
        PPS6,   8, 
        PPS7,   8, 
        PHP0,   8, 
        PHP1,   8, 
        PHP2,   8, 
        PHP3,   8, 
        PHP4,   8, 
        PHP5,   8, 
        PHP6,   8, 
        PHP7,   8, 
        PEGA,   8, 
        PGAA,   8, 
        PGL0,   8, 
        PL0A,   8, 
        PGL1,   8, 
        Offset (0x196), 
        PAV1,   8, 
        ISTC,   8, 
        TRML,   8, 
        ATHF,   8, 
        PTTP,   8, 
        XDMD,   8, 
        PCRR,   8, 
        PROH,   8, 
        TUBM,   8, 
        TSTE,   8, 
        BPST,   8, 
        VTST,   8, 
        CSTS,   8, 
        ENCS,   8, 
        ENC6,   8, 
        CMPE,   8, 
        MDST,   8, 
        EXBR,   8, 
        TXTS,   8, 
        VTDE,   8, 
        CART,   8, 
        CATT,   8, 
        STBE,   8, 
        PEBE,   8, 
        PCBE,   8, 
        EHBE,   8, 
        UHBE,   8, 
        HABE,   8, 
        ERS2,   8, 
        GLPM,   8, 
        GRTT,   8, 
        CRID,   8, 
        ATLF,   8, 
        PTC1,   8, 
        PTC2,   8, 
        PTSP,   8, 
        CTTP,   8, 
        HTSP,   8, 
        U116,   8, 
        U117,   8, 
        UP12,   8, 
        UP13,   8, 
        DALC,   8, 
        ENC7,   8, 
        CSIT,   8, 
        CSIF,   8, 
        CSL1,   8, 
        MIRP,   8, 
        MEMF,   8, 
        CHIL,   8, 
        RKIL,   8, 
        QPIF,   8, 
        DLMF,   8, 
        GPPS,   8, 
        AGLP,   8, 
        EIPS,   8, 
        MTUB,   8, 
        CPEC,   8, 
        IPSP,   8, 
        CTLT,   8, 
        CTLV,   16, 
        MPLT,   8, 
        MPLV,   16, 
        PPLT,   8, 
        PPLV,   16, 
        CPLT,   8, 
        CPLV,   16, 
        RTIF,   8, 
        DPPM,   8, 
        RELT,   8, 
        INTR,   8, 
        PATD,   8, 
        COHE,   8, 
        CTBO,   8, 
        FBOT,   8, 
        CTRD,   8, 
        CERD,   8, 
        MTRD,   8, 
        PTRD,   8, 
        ALEL,   8, 
        CALE,   8, 
        MALE,   8, 
        PALE,   8, 
        DALE,   8, 
        TODM,   8, 
        D1TR,   8, 
        D2TR,   8, 
        D3TR,   8, 
        D4TR,   8, 
        LFPC,   8, 
        RMHM,   8, 
        METR,   8, 
        ECML,   8, 
        MPEC,   8, 
        TRTS,   8, 
        M30A,   64, 
        M30S,   16, 
        PPOL,   8, 
        HPSP,   8, 
        TVCC,   8, 
        PFLG,   8, 
        HYCM,   8, 
        HBDP,   8, 
        TVFC,   8, 
        DPMD,   8, 
        CACK,   8, 
        AZHI,   8, 
        IMEP,   8, 
        IMFE,   8, 
        SAG3,   8, 
        CRSV,   16, 
        WMDT,   16, 
        WPWT,   16, 
        PSW0,   8, 
        PSW1,   8, 
        D2DF,   8, 
        F12F,   8, 
        TWOH,   8, 
        HDF1,   8, 
        HDF2,   8, 
        ORSV,   472, 
        DRSV,   800, 
        MEFD,   8, 
        FWVB,   8, 
        USBP,   8, 
        FWPR,   8, 
        MELF,   8, 
        MEFQ,   8, 
        HP0S,   8, 
        HP1S,   8, 
        HP2S,   8, 
        HP3S,   8, 
        HP4S,   8, 
        HP5S,   8, 
        PEG1,   8, 
        CPMD,   8, 
        ENIF,   8, 
        HTFL,   8, 
        PFFL,   8, 
        PFSF,   8, 
        OTMS,   8, 
        PRSV,   648
    }

    Name (CPTY, Zero)
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
        Name (PR0A, Package (0x04)
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
        Name (AR0A, Package (0x04)
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
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
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
                    0x003E,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x003F,             // Length
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
                PBMX = ((PELN >> 0x14) - 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = ((PELN >> 0x14) - One)
                If (^^CPBG.IMCH.PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((^^CPBG.IMCH.PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (^^CPBG.IMCH.PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((^^CPBG.IMCH.PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (^^CPBG.IMCH.PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((^^CPBG.IMCH.PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (^^CPBG.IMCH.PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((^^CPBG.IMCH.PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (^^CPBG.IMCH.PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((^^CPBG.IMCH.PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (^^CPBG.IMCH.PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((^^CPBG.IMCH.PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (^^CPBG.IMCH.PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((^^CPBG.IMCH.PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (^^CPBG.IMCH.PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((^^CPBG.IMCH.PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (^^CPBG.IMCH.PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((^^CPBG.IMCH.PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (^^CPBG.IMCH.PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((^^CPBG.IMCH.PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (^^CPBG.IMCH.PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((^^CPBG.IMCH.PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (^^CPBG.IMCH.PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((^^CPBG.IMCH.PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (^^CPBG.IMCH.PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((^^CPBG.IMCH.PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
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

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (PCPC, 0, NotSerialized)
                {
                }

                Method (PAPR, 0, NotSerialized)
                {
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
                    If (((DPMD == Zero) || (OTMS == One)))
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
                        DID4 = 0x80087330
                        Return (Package (0x03)
                        {
                            0x0110, 
                            0x80000100, 
                            0x80087330
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
                        If (((DPMD == Zero) || (OTMS == One)))
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
                        If (((DPMD == Zero) || (OTMS == One)))
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
                        If (((DPMD == Zero) || (OTMS == One)))
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
                            Return (0x80087330)
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

                    If (CondRefOf (HNOT))
                    {
                        HNOT (Arg0)
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

            Device (P0P2)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        CPTY = 0x00030000
                    }
                    Else
                    {
                        CPTY = 0x00010000
                    }

                    Return (CPTY) /* \CPTY */
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02) /* \_SB_.AR02 */
                    }

                    Return (PR02) /* \_SB_.PR02 */
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }

                Device (VGA)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DPMD == 0x02))
                        {
                            Return (0xFFFF)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (SWIT, One)
                    Name (CRTA, One)
                    Name (LCDA, One)
                    Name (HDTV, One)
                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x03)
                        {
                            0x0110, 
                            0x80000100, 
                            0x80087330
                        })
                    }

                    Device (CRT)
                    {
                        Name (_ADR, 0x80000100)  // _ADR: Address
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
                        }
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
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

                        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                        {
                            Local0 = ^^^^LPCB.EC0.BLVL /* \_SB_.PCI0.LPCB.EC0_.BLVL */
                            Local0++
                            Local0 *= 0x0A
                            Return (Local0)
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                            {
                                Arg0 /= 0x0A
                                Arg0 -= One
                                ^^^^LPCB.EC0.BLVL = Arg0
                            }

                            Return (One)
                        }
                    }

                    Device (HDV0)
                    {
                        Name (_ADR, 0x80087330)  // _ADR: Address
                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (HDTV)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (HDTV)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }
                    }
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01) /* \_SB_.AR01 */
                    }

                    Return (PR01) /* \_SB_.PR01 */
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
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
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
                    Name (PSTA, Zero)
                    Name (HHS, Zero)
                    Name (BEAC, Zero)
                    Name (RDBT, Zero)
                    Name (RDWL, Zero)
                    Name (RD3G, Zero)
                    Name (RBTA, Zero)
                    Name (RWLA, Zero)
                    Name (R3GA, Zero)
                    Name (OEBL, Zero)
                    Name (BPPS, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            Local0 = Arg1
                            If (Local0)
                            {
                                ECON = One
                            }
                            Else
                            {
                                ECON = Zero
                            }
                        }
                    }

                    OperationRegion (ECIO, SystemIO, 0x60, 0x10)
                    Field (ECIO, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x02), 
                        EDAT,   8, 
                        Offset (0x06), 
                        CMDS,   8, 
                        Offset (0x08), 
                        EC68,   8, 
                        Offset (0x0C), 
                        EC6C,   8
                    }

                    Method (IBE2, 0, Serialized)
                    {
                        While ((EC6C & 0x02))
                        {
                            Sleep (0x50)
                        }
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
                            ,   7, 
                        GPUS,   1, 
                        SMD0,   248, 
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
                        Offset (0x4C), 
                        ARCD,   1, 
                            ,   3, 
                        DOCK,   1, 
                        LANC,   1, 
                        LID2,   1, 
                        CRTS,   1, 
                        Offset (0x4E), 
                        TJMX,   2, 
                            ,   2, 
                        IORD,   1, 
                        DTSE,   1, 
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
                        WLA2,   1, 
                            ,   2, 
                        WLST,   1, 
                        BLTS,   1, 
                            ,   2, 
                        ST3G,   1, 
                        MNST,   1, 
                            ,   1, 
                        ED3G,   1, 
                            ,   1, 
                        TPDB,   1, 
                            ,   7, 
                        ODST,   1, 
                        TJ85,   1, 
                        PSBB,   1, 
                            ,   5, 
                        VGAF,   1, 
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
                        LFC2,   16, 
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
                        Q29T,   8, 
                        DBPL,   8, 
                        Offset (0xE0), 
                        DESP,   8, 
                        DTS3,   8, 
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
                        Offset (0xFA), 
                        C6SW,   8, 
                        Offset (0xFD), 
                        SIMU,   8, 
                        Offset (0xFF), 
                        SKU,    8
                    }

                    OperationRegion (DUMM, EmbeddedControl, Zero, 0xFF)
                    Field (DUMM, ByteAcc, NoLock, Preserve)
                    {
                        NOPP,   8
                    }

                    Method (APOL, 1, NotSerialized)
                    {
                        DBPL = Arg0
                        EBPL = One
                    }

                    Method (CPOL, 1, NotSerialized)
                    {
                        If ((PSTA == Zero))
                        {
                            If ((ECON != Zero))
                            {
                                APOL (Arg0)
                                PSTA = One
                            }
                        }
                    }

                    Method (CLNC, 0, NotSerialized)
                    {
                        CMSW (Zero, 0xFF)
                        CMSW (One, 0xFF)
                        CMSW (0x02, 0xFF)
                        CMSW (0x03, 0xFF)
                        CMSW (0x04, 0xFF)
                        CMSW (0x05, 0xFF)
                        CMSW (0x06, 0xFF)
                        CMSW (0x07, 0xFF)
                        CMSW (0x08, 0xFF)
                        CMSW (0x09, 0xFF)
                        CMSW (0x0A, 0xFF)
                        CMSW (0x0B, 0xFF)
                        CMSW (0x0C, 0xFF)
                        CMSW (0x0D, 0xFF)
                        CMSW (0x0E, 0xFF)
                        CMSW (0x0F, 0xFF)
                    }

                    Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x0E)
                        If (^^^WMID.LMST)
                        {
                            ^^^WMID.FEBC [Zero] = One
                            ^^^WMID.FEBC [One] = 0x61
                            Notify (WMID, 0xBC) // Device-Specific
                            Return (Zero)
                        }

                        P80H = 0x0E
                        If ((DPMD == One))
                        {
                            SSMP = 0xC1
                            Local3 = NSTE /* \NSTE */
                            ^^^P0P2.VGA.LCDA = (Local3 & One)
                            ^^^P0P2.VGA.CRTA = ((Local3 & 0x02) >> One)
                            ^^^P0P2.VGA.HDTV = ((Local3 & 0x10) >> 0x04)
                            Sleep (0xC8)
                            Notify (^^^P0P2.VGA, 0x80) // Status Change
                            Sleep (0xC8)
                        }
                        Else
                        {
                            ^^^GFX0.GHDS (One)
                        }
                    }

                    Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x20)
                        P80H = 0x20
                        If (ECON)
                        {
                            If ((SMST & 0x40))
                            {
                                Local0 = SMAA /* \_SB_.PCI0.LPCB.EC0_.SMAA */
                                If ((Local0 == 0x14))
                                {
                                    If (ECON)
                                    {
                                        ^^^BAT1.BATS ()
                                        Notify (ACAD, 0x80) // Status Change
                                        Sleep (0x01F4)
                                        Notify (BAT1, 0x80) // Status Change
                                        If (^^^BAT1.BTCH)
                                        {
                                            ^^^BAT1.UBIF ()
                                            Notify (BAT1, 0x81) // Information Change
                                            ^^^BAT1.BTCH = Zero
                                        }
                                    }

                                    SMST &= 0xBF
                                    Local1 = PWRE /* \_SB_.PCI0.LPCB.EC0_.PWRE */
                                    If (Local1)
                                    {
                                        PWRE = Zero
                                        BFLG = 0x12
                                    }
                                }

                                If ((Local0 == 0x16))
                                {
                                    SMST &= 0xBF
                                    ^^^BAT1.BCRI = 0x04
                                    Notify (BAT1, 0x80) // Status Change
                                }
                                Else
                                {
                                    ^^^BAT1.BCRI = Zero
                                }
                            }
                        }
                    }

                    Method (_Q8E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x8E)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x63
                        Notify (WMID, 0xBC) // Device-Specific
                        P80H = 0x8E
                        If ((DPMD == One))
                        {
                            Notify (^^^P0P2.VGA.LCD, 0x86) // Device-Specific
                        }
                        Else
                        {
                            Notify (^^^GFX0.DD02, 0x86) // Device-Specific
                            Notify (^^^P0P2.PEGP.DD02, 0x86) // Device-Specific
                        }
                    }

                    Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x8F)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x64
                        Notify (WMID, 0xBC) // Device-Specific
                        P80H = 0x8F
                        If ((DPMD == One))
                        {
                            Notify (^^^P0P2.VGA.LCD, 0x87) // Device-Specific
                        }
                        Else
                        {
                            Notify (^^^GFX0.DD02, 0x87) // Device-Specific
                            Notify (^^^P0P2.PEGP.DD02, 0x87) // Device-Specific
                        }
                    }

                    Method (_Q9B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x9B)
                        P80H = 0x9B
                        Sleep (0x32)
                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_Q9C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x9C)
                        P80H = 0x9C
                        Sleep (0x32)
                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x90)
                        ^^^WMID.BF00 = Zero
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_Q91, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x91)
                        ^^^WMID.BF00 = Zero
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_Q92, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x92)
                        ^^^WMID.BF00 = One
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_Q93, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x93)
                        ^^^WMID.BF00 = One
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_Q9D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x9D)
                        ^^^WMID.BF00 = 0x02
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_Q9E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x9E)
                        ^^^WMID.BF00 = 0x02
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0xA0)
                        ^^^WMID.BF00 = 0x03
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0xA1)
                        ^^^WMID.BF00 = 0x03
                        Notify (WMID, 0x80) // Status Change
                    }

                    Method (_QA7, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        PSBB = One
                        CLNC ()
                        CMSW (Zero, 0xA7)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x83
                        ^^^WMID.FEBC [0x02] = 0x10
                        Notify (WMID, 0xBC) // Device-Specific
                        P80H = 0xA7
                        ^^^WMID.BF00 = 0x05
                        Notify (WMID, 0x80) // Status Change
                        If (((DPMD == 0x02) && (^^^WMID.BAEF == Zero)))
                        {
                            BRCL (BCM3)
                            HHS = One
                            Notify (GFX0, 0xD0) // Hardware-Specific
                        }
                    }

                    Method (_QA8, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        PSBB = Zero
                        CLNC ()
                        CMSW (Zero, 0xA8)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x83
                        ^^^WMID.FEBC [0x02] = Zero
                        Notify (WMID, 0xBC) // Device-Specific
                        P80H = 0xA8
                        ^^^WMID.BF00 = 0x05
                        Notify (WMID, 0x80) // Status Change
                        If (((DPMD == 0x02) && (^^^WMID.BAEF == Zero)))
                        {
                            BRCL (BCM5)
                            HHS = 0x02
                            Notify (GFX0, 0xD0) // Hardware-Specific
                        }
                    }

                    OperationRegion (BCMD, SystemMemory, ASLB, 0x2000)
                    Field (BCMD, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x31C), 
                        Offset (0x322), 
                        Offset (0x323), 
                        BCM3,   8, 
                        Offset (0x326), 
                        Offset (0x327), 
                        BCM5,   8
                    }

                    Method (BRCL, 1, NotSerialized)
                    {
                        If ((ACDF == Zero))
                        {
                            Local3 = Zero
                            Local2 = (^^^GFX0.CBLV & 0x7C)
                            Local1 = (Arg0 & 0x7C)
                            While (((Local2 != Local1) && (Local3 < 0x0A)))
                            {
                                If ((Local2 < Local1))
                                {
                                    Local0 = ^^^GFX0.CBLV /* \_SB_.PCI0.GFX0.CBLV */
                                    Notify (^^^GFX0.DD02, 0x86) // Device-Specific
                                    Notify (^^^P0P2.PEGP.DD02, 0x86) // Device-Specific
                                    Local4 = Zero
                                    While (((^^^GFX0.CBLV == Local0) && (Local4 < 0x64)))
                                    {
                                        Sleep (0x0A)
                                        Local4++
                                    }
                                }
                                ElseIf ((Local2 > Local1))
                                {
                                    Local0 = ^^^GFX0.CBLV /* \_SB_.PCI0.GFX0.CBLV */
                                    Notify (^^^GFX0.DD02, 0x87) // Device-Specific
                                    Notify (^^^P0P2.PEGP.DD02, 0x87) // Device-Specific
                                    Local4 = Zero
                                    While (((^^^GFX0.CBLV == Local0) && (Local4 < 0x64)))
                                    {
                                        Sleep (0x0A)
                                        Local4++
                                    }
                                }

                                Local2 = (^^^GFX0.CBLV & 0x7C)
                                Local3 += One
                            }
                        }
                    }

                    Method (_QA6, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0xA6)
                        If (((DPMD == 0x02) && (OTMS != One)))
                        {
                            HHS = 0x02
                            Notify (GFX0, 0xD0) // Hardware-Specific
                        }
                    }

                    Method (_QA9, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0xA9)
                        If (^^^WMID.ODAP)
                        {
                            ^^^WMID.BF00 = 0x04
                            Notify (WMID, 0x80) // Status Change
                        }

                        If ((OEBL == 0xFF))
                        {
                            If ((^^^WMID.ODAP == Zero))
                            {
                                SSMP = 0xCD
                                Sleep (0x64)
                            }
                        }
                    }

                    Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x85)
                        P80H = 0x85
                        Debug = "_Q85 : Battery FCC change"
                        Notify (BAT1, 0x81) // Information Change
                    }

                    Method (_Q01, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, One)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = One
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q02, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x02)
                        ^^^WMID.FEBC [Zero] = 0x02
                        ^^^WMID.FEBC [One] = One
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q04, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x04)
                    }

                    Method (_Q05, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x05)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x82
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q06, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x06)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x82
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q07, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x07)
                    }

                    Method (_Q08, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x08)
                    }

                    Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x09)
                        PSTA = Zero
                        If ((OEBL == One))
                        {
                            OEBL = 0xFF
                        }

                        If ((OEBL == Zero))
                        {
                            If ((PSTA == One))
                            {
                                PSTA = Zero
                            }

                            CPOL (0x0C)
                            OEBL = One
                        }

                        If ((OEBL == 0x04))
                        {
                            If ((PSTA == One))
                            {
                                PSTA = Zero
                            }

                            CPOL (0x05)
                            OEBL = One
                        }
                    }

                    Method (_Q29, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x29)
                        If ((LID2 == One))
                        {
                            Notify (LID0, 0x80) // Status Change
                        }
                    }

                    Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x0A)
                    }

                    Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x0B)
                    }

                    Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x0C)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x21
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x0F)
                        ^^^WMID.FEBC [Zero] = 0x02
                        ^^^WMID.FEBC [One] = 0x61
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x10)
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CMSW (Zero, 0x11)
                    }

                    Method (_Q30, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x30)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x41
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q31, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x31)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x42
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q32, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x32)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x43
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x34)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x44
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q35, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x35)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x46
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x36)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x47
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x38)
                        ^^^WMID.FEBC [Zero] = One
                        ^^^WMID.FEBC [One] = 0x45
                        Notify (WMID, 0xBC) // Device-Specific
                    }

                    Method (_Q8C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x8C)
                        If ((CFGD & One))
                        {
                            BPPS = \_PR.CPU0._PPC /* External reference */
                            Local0 = CMSR (0x70)
                            \_PR.CPU0._PPC = Local0--
                            PNOT ()
                        }
                    }

                    Method (_Q8D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLNC ()
                        CMSW (Zero, 0x8D)
                        If ((\_PR.CPU0._PPC > Zero))
                        {
                            \_PR.CPU0._PPC = Zero
                            PNOT ()
                        }
                    }
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
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
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
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
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
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
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
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
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
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
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
                    Name (_ADR, Zero)  // _ADR: Address
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
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (HBP3)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                        }

                        Device (HBP4)
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
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
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
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
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
                    Name (_ADR, Zero)  // _ADR: Address
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
                        }

                        Device (HBPB)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
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
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
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
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
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
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
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

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04) /* \_SB_.AR04 */
                    }

                    Return (PR04) /* \_SB_.PR04 */
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

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05) /* \_SB_.AR05 */
                    }

                    Return (PR05) /* \_SB_.PR05 */
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
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06) /* \_SB_.AR06 */
                    }

                    Return (PR06) /* \_SB_.PR06 */
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
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07) /* \_SB_.AR07 */
                    }

                    Return (PR07) /* \_SB_.PR07 */
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
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08) /* \_SB_.AR08 */
                    }

                    Return (PR08) /* \_SB_.PR08 */
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
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A) /* \_SB_.AR0A */
                    }

                    Return (PR0A) /* \_SB_.PR0A */
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
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B) /* \_SB_.AR0B */
                    }

                    Return (PR0B) /* \_SB_.PR0B */
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
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C) /* \_SB_.AR0C */
                    }

                    Return (PR0C) /* \_SB_.PR0C */
                }
            }

            Device (PEG5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
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
            }

            Device (AHCI)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, 0x0001FFFF)  // _ADR: Address
                }
            }

            Device (WMID)
            {
                Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                Name (_UID, "APGe")  // _UID: Unique ID
                Name (ERRD, 0x00010000)
                Name (BUFF, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateByteField (BUFF, Zero, BF00)
                CreateByteField (BUFF, One, BF01)
                CreateByteField (BUFF, 0x02, BF02)
                CreateByteField (BUFF, 0x03, BF03)
                CreateWordField (BUFF, Zero, BFW0)
                CreateWordField (BUFF, 0x02, BFW1)
                Name (BUF1, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Name (AADS, Buffer (0x04)
                {
                     0x00                                             /* . */
                })
                CreateField (AADS, Zero, 0x04, AS00)
                CreateField (AADS, 0x04, One, AS04)
                CreateField (AADS, 0x05, One, AS05)
                CreateField (AADS, 0x06, One, AS06)
                CreateField (AADS, 0x07, One, AS07)
                CreateField (AADS, 0x08, One, AS08)
                CreateField (AADS, 0x09, One, AS09)
                CreateField (AADS, 0x10, 0x10, AS0X)
                Name (BAEF, Zero)
                Name (BADF, Zero)
                Name (BADG, Package (0x11)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    Zero, 
                    0x00010000, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Name (WLDS, Zero)
                Name (WLED, Zero)
                Name (BTDS, Zero)
                Name (BTED, Zero)
                Name (BLDS, Zero)
                Name (BLED, Zero)
                Name (NTDC, Zero)
                Name (NTDV, Zero)
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
                Name (GSEE, 0x0501)
                Name (GSED, 0x0502)
                Name (VAPI, 0x0601)
                Name (VAPO, 0x0600)
                Name (WBBO, 0x0701)
                Name (WBBI, 0x0700)
                Name (G3MD, 0x0800)
                Name (G3ME, 0x0801)
                Name (LANI, 0x0900)
                Name (LANO, 0x0901)
                Name (LDOF, 0x0A00)
                Name (LDON, 0x0A01)
                Name (PSOF, 0x0B00)
                Name (PSON, 0x0B01)
                Name (ODDE, 0x0C00)
                Name (FNKE, 0x00010002)
                Name (FNF5, 0x00015001)
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
                Name (BEDS, Package (0x12)
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
                Name (BOOT, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                CreateField (BOOT, Zero, 0x80, BO01)
                CreateField (BOOT, 0x80, 0x10, BO02)
                CreateField (BOOT, 0x90, 0x08, BO03)
                CreateField (BOOT, 0x98, 0x08, BO04)
                Name (LMST, Zero)
                Name (FEBC, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                })
                Name (ODAP, Zero)
                Method (AAF1, 0, NotSerialized)
                {
                    AADS = IHWM (0x13, Zero)
                    If (ECON)
                    {
                        AS04 = ^^LPCB.EC0.BLTH /* \_SB_.PCI0.LPCB.EC0_.BLTH */
                        AS06 = ^^LPCB.EC0.ST3G /* \_SB_.PCI0.LPCB.EC0_.ST3G */
                        Local0 = CMSR (0x7F)
                        If ((DPMD == Zero))
                        {
                            AS07 = Zero
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            AS07 = Zero
                        }
                        ElseIf ((OTMS == One))
                        {
                            AS07 = Zero
                        }
                        Else
                        {
                            AS07 = One
                        }
                    }

                    AS08 = Zero
                    AS09 = Zero
                }

                Method (WGDS, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Arg0
                    If ((_T_0 == One))
                    {
                        If (ECON)
                        {
                            BADG [Zero] = ^^LPCB.EC0.WLST /* \_SB_.PCI0.LPCB.EC0_.WLST */
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        If (ECON)
                        {
                            BADG [One] = ^^LPCB.EC0.BLTS /* \_SB_.PCI0.LPCB.EC0_.BLTS */
                        }
                    }
                    ElseIf ((_T_0 == 0x03)) {}
                    ElseIf ((_T_0 == 0x08))
                    {
                        BADG [0x07] = IHWM (0x16, Zero)
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        BADG [0x08] = Zero
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        If (ECON)
                        {
                            BADG [0x0A] = ^^LPCB.EC0.ED3G /* \_SB_.PCI0.LPCB.EC0_.ED3G */
                        }
                    }
                    ElseIf ((_T_0 == 0x0C)) {}
                    ElseIf ((_T_0 == 0x0D))
                    {
                        If (ECON)
                        {
                            BADG [0x0C] = ^^LPCB.EC0.MNST /* \_SB_.PCI0.LPCB.EC0_.MNST */
                        }
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        If (ECON)
                        {
                            If (^^LPCB.EC0.PSBB)
                            {
                                BADG [0x0D] = One
                            }
                            Else
                            {
                                BADG [0x0D] = Zero
                            }
                        }
                    }
                    ElseIf ((_T_0 == 0x11))
                    {
                        BADG [0x10] = IHWM (0x17, Zero)
                    }
                }

                Method (WSDS, 2, NotSerialized)
                {
                    BUFF = Arg1
                    Local0 = Arg0
                    Local1 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                    BADG [(Local0 - One)] = Zero
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Local1
                    If ((_T_0 == Zero))
                    {
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        _T_1 = Local0
                        If ((_T_1 == 0x04))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.IBE2 ()
                                ^^LPCB.EC0.EC6C = 0x24
                                ^^LPCB.EC0.IBE2 ()
                            }
                        }
                        ElseIf ((_T_1 == 0x05))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.IBE2 ()
                                ^^LPCB.EC0.EC6C = 0x26
                                ^^LPCB.EC0.IBE2 ()
                            }
                        }
                        ElseIf ((_T_1 == 0x06)) {}
                        ElseIf ((_T_1 == 0x07))
                        {
                            BAEF = Zero
                        }
                        ElseIf ((_T_1 == 0x0B))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.IBE2 ()
                                ^^LPCB.EC0.EC6C = 0xAA
                                ^^LPCB.EC0.IBE2 ()
                            }
                        }
                        ElseIf ((_T_1 == 0x0F))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.PSBB = Zero
                            }
                        }
                        ElseIf ((_T_1 == 0x10))
                        {
                            ODAP = Zero
                        }
                        Else
                        {
                            BADG [(Local0 - One)] = 0x0100
                        }
                    }
                    Else
                    {
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        _T_2 = Local0
                        If ((_T_2 == 0x04))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.IBE2 ()
                                ^^LPCB.EC0.EC6C = 0x23
                                ^^LPCB.EC0.IBE2 ()
                            }
                        }
                        ElseIf ((_T_2 == 0x05))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.IBE2 ()
                                ^^LPCB.EC0.EC6C = 0x25
                                ^^LPCB.EC0.IBE2 ()
                            }
                        }
                        ElseIf ((_T_2 == 0x06)) {}
                        ElseIf ((_T_2 == 0x07))
                        {
                            BAEF = One
                        }
                        ElseIf ((_T_2 == 0x0B))
                        {
                            If (ECON)
                            {
                                ^^LPCB.EC0.IBE2 ()
                                ^^LPCB.EC0.EC6C = 0xA9
                                ^^LPCB.EC0.IBE2 ()
                            }
                        }
                        ElseIf ((_T_2 == 0x0F))
                        {
                            ^^LPCB.EC0.PSBB = One
                        }
                        ElseIf ((_T_2 == 0x10))
                        {
                            ODAP = One
                        }
                        Else
                        {
                            BADG [(Local0 - One)] = 0x0100
                        }
                    }
                }

                Method (OEMN, 0, NotSerialized)
                {
                    If ((BGEF == One))
                    {
                        Local0 = NTDV /* \_SB_.PCI0.WMID.NTDV */
                        If ((Local0 != Zero))
                        {
                            NTDV = Zero
                            Return (Local0)
                        }
                    }

                    If ((BAEF == One))
                    {
                        Local0 = NTDC /* \_SB_.PCI0.WMID.NTDC */
                        If ((Local0 != Zero))
                        {
                            NTDC = Zero
                            Return (Local0)
                        }
                    }

                    If ((BFEF == One)) {}
                    If (ECON)
                    {
                        If ((BF00 == Zero))
                        {
                            If (^^LPCB.EC0.WLST)
                            {
                                Return (WLSE) /* \_SB_.PCI0.WMID.WLSE */
                            }
                            Else
                            {
                                Return (WLSD) /* \_SB_.PCI0.WMID.WLSD */
                            }
                        }

                        If ((BF00 == One))
                        {
                            If (^^LPCB.EC0.BLTS)
                            {
                                Return (BLTE) /* \_SB_.PCI0.WMID.BLTE */
                            }
                            Else
                            {
                                Return (BLTD) /* \_SB_.PCI0.WMID.BLTD */
                            }
                        }

                        If ((BF00 == 0x02))
                        {
                            If (^^LPCB.EC0.MNST)
                            {
                                Return (LDON) /* \_SB_.PCI0.WMID.LDON */
                            }
                            Else
                            {
                                Return (LDOF) /* \_SB_.PCI0.WMID.LDOF */
                            }
                        }

                        If ((BF00 == 0x03))
                        {
                            If (^^LPCB.EC0.ED3G)
                            {
                                Return (G3ME) /* \_SB_.PCI0.WMID.G3ME */
                            }
                            Else
                            {
                                Return (G3MD) /* \_SB_.PCI0.WMID.G3MD */
                            }
                        }

                        If ((BF00 == 0x04))
                        {
                            Return (ODDE) /* \_SB_.PCI0.WMID.ODDE */
                        }

                        If ((BF00 == 0x05))
                        {
                            If (^^LPCB.EC0.PSBB)
                            {
                                Return (PSON) /* \_SB_.PCI0.WMID.PSON */
                            }
                            Else
                            {
                                Return (PSOF) /* \_SB_.PCI0.WMID.PSOF */
                            }
                        }
                    }
                }

                Method (STRL, 2, NotSerialized)
                {
                    Local0 = Arg0
                    BUFF = Arg1
                    BBSB = Zero
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Local1 = IHWM (One, 0x019A)
                        CreateDWordField (Local1, Zero, TMP)
                        TMP /= 0x02
                        If ((TMP & 0x08))
                        {
                            BBD0 = (TMP - 0x08)
                        }
                        Else
                        {
                            BBD0 = Zero
                        }

                        BBD1 = Zero
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        DI00 = Zero
                        DSY1 = Zero
                        DY10 = 0x019A
                        If ((BF00 == Zero))
                        {
                            DY11 = Zero
                        }
                        Else
                        {
                            DY11 = ((BF00 * 0x02) | 0x10)
                        }

                        DY12 = Zero
                        IHWM (0x02, DSY1)
                        BBSB = Zero
                    }
                    Else
                    {
                        BBSB = 0x00010000
                    }
                }

                Method (WODP, 2, NotSerialized)
                {
                    CreateDWordField (Arg1, Zero, SETP)
                    If ((Arg0 == 0x05))
                    {
                        If (ECON)
                        {
                            If (^^LPCB.EC0.ODST)
                            {
                                BFW0 = One
                            }
                            Else
                            {
                                BFW0 = Zero
                            }
                        }
                    }

                    If ((Arg0 == 0x0E))
                    {
                        If (ECON)
                        {
                            ^^LPCB.EC0.IBE2 ()
                            If (SETP)
                            {
                                ^^LPCB.EC0.EC6C = 0x65
                            }
                            Else
                            {
                                ^^LPCB.EC0.EC6C = 0x66
                            }

                            ^^LPCB.EC0.IBE2 ()
                            Sleep (0x07D0)
                            Notify (^^AHCI.PRT1, One) // Device Check
                        }
                    }
                }

                Method (GCPU, 1, NotSerialized)
                {
                    DSY0 = DSY5 /* \_SB_.PCI0.WMID.DSY5 */
                    Local0 = Arg0
                    Local2 = IHWM (Zero, Arg0)
                    DSY6 = Local2
                    DY00 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                    DY01 = DY61 /* \_SB_.PCI0.WMID.DY61 */
                    DY02 = DY62 /* \_SB_.PCI0.WMID.DY62 */
                    DY03 = DY63 /* \_SB_.PCI0.WMID.DY63 */
                }

                Method (MSRR, 1, NotSerialized)
                {
                    DSY1 = DSY3 /* \_SB_.PCI0.WMID.DSY3 */
                    DY00 = Arg0
                    Local2 = IHWM (One, Arg0)
                    DSY6 = Local2
                    DY10 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                    DY11 = DY61 /* \_SB_.PCI0.WMID.DY61 */
                    WIT0 = Zero
                    DY12 = WIT0 /* \_SB_.PCI0.WMID.WIT0 */
                }

                Method (MSRW, 1, NotSerialized)
                {
                    DSY1 = DSY3 /* \_SB_.PCI0.WMID.DSY3 */
                    Local2 = IHWM (0x02, Arg0)
                    DSY6 = Local2
                    DY10 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                    DY11 = DY61 /* \_SB_.PCI0.WMID.DY61 */
                    WIT0 = Zero
                    DY12 = WIT0 /* \_SB_.PCI0.WMID.WIT0 */
                }

                Method (C4C3, 2, NotSerialized)
                {
                    BUFF = Arg1
                    If ((Arg0 == 0x04))
                    {
                        BCDS [0x09] = BF00 /* \_SB_.PCI0.WMID.BF00 */
                    }
                    Else
                    {
                    }
                }

                Method (CPUF, 0, NotSerialized)
                {
                }

                Method (CPUT, 0, NotSerialized)
                {
                }

                Method (PCIR, 1, NotSerialized)
                {
                    Local0 = Arg0
                    Local2 = IHWM (0x03, Arg0)
                    DY20 = Local2
                    DSY6 = Local2
                    DSY2 = DSY4 /* \_SB_.PCI0.WMID.DSY4 */
                    DY20 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                }

                Method (PCIW, 1, NotSerialized)
                {
                    Local0 = Arg0
                    DY20 = Arg0
                    Local2 = IHWM (0x04, Arg0)
                    DSY6 = Local2
                    BUFF = DY61 /* \_SB_.PCI0.WMID.DY61 */
                }

                Method (CPUS, 0, NotSerialized)
                {
                    Local2 = IHWM (0x05, Zero)
                    BUFF = Local2
                    BCDS [0x0C] = BUFF /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (PCID, 1, NotSerialized)
                {
                    Local2 = IHWM (0x06, Arg0)
                    DSY6 = Local2
                }

                Method (BTIF, 2, NotSerialized)
                {
                    Local0 = Arg0
                    BUFF = Arg1
                    If ((Local0 == 0x0D))
                    {
                        BF00 = BF02 /* \_SB_.PCI0.WMID.BF02 */
                        Local1 = BF01 /* \_SB_.PCI0.WMID.BF01 */
                        BF00 = BF02 /* \_SB_.PCI0.WMID.BF02 */
                        Local1 = BF01 /* \_SB_.PCI0.WMID.BF01 */
                    }

                    If ((Local0 == 0x0E))
                    {
                        If ((BF00 == Zero))
                        {
                            BF00 = 0xFF
                        }
                        Else
                        {
                            Local1 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                            BF00 = One
                        }
                    }

                    If ((Local0 == 0x13))
                    {
                        If ((BF00 == 0x03))
                        {
                            BFW0 = 0x1111
                            BFW1 = Zero
                        }

                        If ((BF00 == 0x08))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.MTMP /* \_SB_.PCI0.LPCB.EC0_.MTMP */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x09))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.MBVG /* \_SB_.PCI0.LPCB.EC0_.MBVG */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x0A))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.MCUR /* \_SB_.PCI0.LPCB.EC0_.MCUR */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x0F))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.MBRM /* \_SB_.PCI0.LPCB.EC0_.MBRM */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x17))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.MCYC /* \_SB_.PCI0.LPCB.EC0_.MCYC */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x18))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.BTDC /* \_SB_.PCI0.LPCB.EC0_.BTDC */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x19))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.BTDV /* \_SB_.PCI0.LPCB.EC0_.BTDV */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x1B))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.MDAT /* \_SB_.PCI0.LPCB.EC0_.MDAT */
                                BFW1 = Zero
                            }
                        }

                        If ((BF00 == 0x1C))
                        {
                            If (ECON)
                            {
                                BFW0 = ^^LPCB.EC0.BTSN /* \_SB_.PCI0.LPCB.EC0_.BTSN */
                                BFW1 = Zero
                            }
                        }
                    }
                }

                Method (CKGS, 0, NotSerialized)
                {
                    GSTS = One
                    Return (GSTS) /* \_SB_.PCI0.WMID.GSTS */
                }

                Method (WSHP, 1, NotSerialized)
                {
                }

                Method (WSSL, 1, NotSerialized)
                {
                }

                Method (WSSP, 1, NotSerialized)
                {
                }

                Method (WSSE, 1, NotSerialized)
                {
                }

                Method (WSVE, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 == One))
                    {
                        BGEF = One
                    }
                    Else
                    {
                        BGEF = Zero
                    }

                    BGDS [Zero] = Zero
                }

                Method (GBDS, 0, NotSerialized)
                {
                    IHWM (0x07, Zero)
                    DSY4 = DI00 /* \DI00 */
                    BO01 = DSY4 /* \_SB_.PCI0.WMID.DSY4 */
                    BO02 = Zero
                    BO03 = Zero
                    BO04 = Zero
                }

                Method (SBDS, 1, NotSerialized)
                {
                    IHWM (0x08, Arg0)
                }

                Method (LMON, 0, NotSerialized)
                {
                    LMST = One
                    ^^LPCB.EC0.LMAT = One
                    Return (Zero)
                }

                Method (LMOF, 0, NotSerialized)
                {
                    LMST = Zero
                    ^^LPCB.EC0.LMAT = Zero
                    Return (Zero)
                }

                Method (GCMS, 1, NotSerialized)
                {
                    Local0 = Zero
                    If (^^LPCB.EC0.WLST)
                    {
                        Local0 |= One
                    }

                    If (^^LPCB.EC0.ED3G)
                    {
                        Local0 |= 0x40
                    }

                    If (^^LPCB.EC0.BLTS)
                    {
                        Local0 |= 0x0800
                    }

                    Arg0 = Local0
                    Return (Zero)
                }

                Method (SCMS, 2, NotSerialized)
                {
                    If ((Arg0 & One))
                    {
                        If ((Arg1 & One))
                        {
                            ^^LPCB.EC0.WLST = One
                        }
                        Else
                        {
                            ^^LPCB.EC0.WLST = Zero
                        }
                    }

                    If ((Arg0 & 0x40))
                    {
                        If ((Arg1 & 0x40))
                        {
                            ^^LPCB.EC0.ED3G = One
                        }
                        Else
                        {
                            ^^LPCB.EC0.ED3G = Zero
                        }
                    }

                    If ((Arg0 & 0x0800))
                    {
                        If ((Arg1 & 0x0800))
                        {
                            ^^LPCB.EC0.BLTS = One
                        }
                        Else
                        {
                            ^^LPCB.EC0.BLTS = Zero
                        }
                    }

                    Return (Zero)
                }

                Method (GAPS, 1, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (SAPS, 2, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (GMES, 1, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (SMES, 2, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (GDSS, 1, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (SDSS, 2, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (GOTS, 1, NotSerialized)
                {
                    Local0 = Zero
                    If ((^^LPCB.EC0.TPDB == Zero))
                    {
                        Local0 |= 0x02
                    }

                    If (^^LPCB.EC0.PSBB)
                    {
                        Local0 |= 0x10
                    }

                    Arg0 = Local0
                    Return (Zero)
                }

                Method (SOTS, 2, NotSerialized)
                {
                    If ((Arg0 & 0x02))
                    {
                        If ((Arg1 & 0x02))
                        {
                            ^^LPCB.EC0.TPDB = Zero
                        }
                        Else
                        {
                            ^^LPCB.EC0.TPDB = One
                        }
                    }

                    If ((Arg0 & 0x10))
                    {
                        If ((Arg1 & 0x10))
                        {
                            ^^LPCB.EC0.PSBB = One
                        }
                        Else
                        {
                            ^^LPCB.EC0.PSBB = Zero
                        }
                    }

                    Return (Zero)
                }

                Name (_WDG, Buffer (0x0140)
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
                    /* 00B0 */  0x42, 0x47, 0x01, 0x02, 0x45, 0xDD, 0x23, 0x59,  /* BG..E.#Y */
                    /* 00B8 */  0x80, 0x04, 0xD5, 0x4E, 0xB6, 0x1A, 0xC9, 0xEC,  /* ...N.... */
                    /* 00C0 */  0x6C, 0x90, 0xE2, 0x6A, 0x42, 0x48, 0x01, 0x02,  /* l..jBH.. */
                    /* 00C8 */  0xA7, 0xB1, 0x85, 0xDB, 0x9A, 0x06, 0xBB, 0x4A,  /* .......J */
                    /* 00D0 */  0xA2, 0xB5, 0xD1, 0x86, 0xA2, 0x1B, 0x80, 0xF1,  /* ........ */
                    /* 00D8 */  0x81, 0x00, 0x01, 0x08, 0x91, 0x6B, 0x91, 0x36,  /* .....k.6 */
                    /* 00E0 */  0x64, 0x1A, 0x83, 0x45, 0x84, 0xD0, 0x53, 0x83,  /* d..E..S. */
                    /* 00E8 */  0x0F, 0xB9, 0x10, 0x8D, 0x82, 0x00, 0x01, 0x08,  /* ........ */
                    /* 00F0 */  0x97, 0x13, 0xAA, 0xFA, 0x88, 0x11, 0x8F, 0x44,  /* .......D */
                    /* 00F8 */  0x85, 0x16, 0x9A, 0x07, 0x98, 0x7D, 0xD3, 0x8A,  /* .....}.. */
                    /* 0100 */  0x42, 0x49, 0x01, 0x02, 0x5E, 0xA1, 0x6A, 0x67,  /* BI..^.jg */
                    /* 0108 */  0x47, 0x6A, 0x9F, 0x4D, 0xA2, 0xCC, 0x1E, 0x6D,  /* Gj.M...m */
                    /* 0110 */  0x18, 0xD1, 0x40, 0x26, 0xBC, 0x00, 0x01, 0x08,  /* ..@&.... */
                    /* 0118 */  0xEA, 0x69, 0xEF, 0x61, 0x5C, 0x86, 0xC3, 0x4B,  /* .i.a\..K */
                    /* 0120 */  0xA5, 0x02, 0xA0, 0xDE, 0xBA, 0x0C, 0xB5, 0x31,  /* .......1 */
                    /* 0128 */  0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  /* AA..!... */
                    /* 0130 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  /* f....... */
                    /* 0138 */  0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00   /* ..).AB.. */
                })
                Method (WQAA, 1, NotSerialized)
                {
                    AAF1 ()
                    BUFF = AADS /* \_SB_.PCI0.WMID.AADS */
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

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
                OperationRegion (SBAA, SystemMemory, 0x000EA858, 0x0100)
                Field (SBAA, AnyAcc, NoLock, Preserve)
                {
                    TPAA,   8, 
                    LNTH,   8, 
                    Offset (0x04), 
                    CDPB,   16, 
                    Offset (0x0E), 
                    BTND,   1928
                }

                Method (FBFS, 2, NotSerialized)
                {
                    If ((TPAA != 0xAA))
                    {
                        Return (0xFF)
                    }

                    If ((LNTH < 0x12))
                    {
                        Return (0xFF)
                    }

                    Local0 = (LNTH - 0x0E)
                    Local1 = Zero
                    Local2 = BTND /* \_SB_.PCI0.WMID.BTND */
                    While ((Local1 < Local0))
                    {
                        If ((Arg0 == DerefOf (Local2 [Local1])))
                        {
                            If (((Local0 - Local1) >= 0x04))
                            {
                                Arg1 = DerefOf (Local2 [(Local1 + 0x02)])
                                Local3 = DerefOf (Local2 [(Local1 + 0x03)])
                                Arg1 = ((Local3 << 0x08) | DerefOf (Arg1))
                                Return (Zero)
                            }
                        }

                        Local1 += 0x04
                    }

                    Return (0xFF)
                }

                Method (EVBC, 0, NotSerialized)
                {
                    CMSW (One, 0xFF)
                    CMSW (0x02, 0xFF)
                    CMSW (0x03, 0xFF)
                    CMSW (0x04, 0xFF)
                    Local0 = DerefOf (FEBC [Zero])
                    If (((Local0 == Zero) || (Local0 > 0x02)))
                    {
                        FEBC [Zero] = Zero
                        FEBC [One] = Zero
                        CMSW (One, DerefOf (FEBC [Zero]))
                        CMSW (0x02, DerefOf (FEBC [One]))
                        CMSW (0x03, DerefOf (FEBC [0x02]))
                        CMSW (0x04, DerefOf (FEBC [0x03]))
                        Return (FEBC) /* \_SB_.PCI0.WMID.FEBC */
                    }

                    If ((Local0 == One))
                    {
                        Local1 = DerefOf (FEBC [One])
                        Local2 = Zero
                        Local3 = Zero
                        If (((Local1 > Zero) && (Local1 < 0x20)))
                        {
                            Local3 = GCMS (RefOf (Local2))
                            If ((Local3 == Zero))
                            {
                                If (((TPAA == 0xAA) && (LNTH >= 0x0E)))
                                {
                                    Local2 &= CDPB /* \_SB_.PCI0.WMID.CDPB */
                                }
                            }
                        }
                        ElseIf (((Local1 > 0x80) && (Local1 < 0xFF)))
                        {
                            Local3 = GOTS (RefOf (Local2))
                        }

                        If ((Local3 != Zero))
                        {
                            FEBC [Zero] = Zero
                            FEBC [One] = Zero
                            CMSW (One, DerefOf (FEBC [Zero]))
                            CMSW (0x02, DerefOf (FEBC [One]))
                            CMSW (0x03, DerefOf (FEBC [0x02]))
                            CMSW (0x04, DerefOf (FEBC [0x03]))
                            Return (FEBC) /* \_SB_.PCI0.WMID.FEBC */
                        }

                        FEBC [0x02] = (Local2 & 0xFF)
                        Local2 >>= 0x08
                        FEBC [0x03] = (Local2 & 0xFF)
                    }
                    Else
                    {
                        FEBC [0x02] = Zero
                        FEBC [0x03] = Zero
                    }

                    FEBC [0x04] = Zero
                    FEBC [0x05] = Zero
                    FEBC [0x06] = Zero
                    FEBC [0x07] = Zero
                    CMSW (One, DerefOf (FEBC [Zero]))
                    CMSW (0x02, DerefOf (FEBC [One]))
                    CMSW (0x03, DerefOf (FEBC [0x02]))
                    CMSW (0x04, DerefOf (FEBC [0x03]))
                    Return (FEBC) /* \_SB_.PCI0.WMID.FEBC */
                }

                Method (SDDV, 1, NotSerialized)
                {
                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    Local1 = (DerefOf (Arg0 [0x05]) & One)
                    Local2 = (DerefOf (Arg0 [0x05]) >> 0x06)
                    Local2 &= 0x03
                    If ((Local1 == One))
                    {
                        LMON ()
                    }

                    If ((Local2 == One))
                    {
                        Local3 = 0xFFFF
                        If (((TPAA == 0xAA) && (LNTH >= 0x0E)))
                        {
                            Local3 &= CDPB /* \_SB_.PCI0.WMID.CDPB */
                        }

                        If ((Local3 != Zero))
                        {
                            Local4 = Zero
                            Local4 = DerefOf (Arg0 [One])
                            Local4 |= (DerefOf (Arg0 [0x02]) << 0x08)
                            Local5 = SCMS (Local3, Local4)
                            If ((Local5 != Zero))
                            {
                                Local0 [Zero] = Local5
                                Return (Local0)
                            }
                        }

                        Local4 = Zero
                        Local4 = DerefOf (Arg0 [0x03])
                        Local4 |= (DerefOf (Arg0 [0x04]) << 0x08)
                        Local5 = SOTS (0xFFFF, Local4)
                        If ((Local5 != Zero))
                        {
                            Local0 [Zero] = Local5
                            Return (Local0)
                        }
                    }

                    If ((Local1 == Zero))
                    {
                        LMOF ()
                    }

                    Return (Local0)
                }

                Method (SNDE, 1, NotSerialized)
                {
                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    Local1 = DerefOf (Arg0 [One])
                    Local2 = Zero
                    Local2 = DerefOf (Arg0 [0x02])
                    Local2 |= (DerefOf (Arg0 [0x03]) << 0x08)
                    Local3 = Zero
                    Local4 = FBFS (Local1, RefOf (Local3))
                    If ((Local4 != Zero))
                    {
                        Local3 = 0xFFFF
                    }

                    If (((Local1 > Zero) && (Local1 < 0x20)))
                    {
                        If (((TPAA == 0xAA) && (LNTH >= 0x0E)))
                        {
                            Local3 &= CDPB /* \_SB_.PCI0.WMID.CDPB */
                        }

                        If ((Local3 == Zero))
                        {
                            Local4 = 0xE2
                        }
                        Else
                        {
                            Local4 = SCMS (Local3, Local2)
                        }
                    }
                    ElseIf (((Local1 > 0x20) && (Local1 < 0x40)))
                    {
                        Local4 = SAPS (Local3, Local2)
                    }
                    ElseIf (((Local1 > 0x40) && (Local1 < 0x60)))
                    {
                        Local4 = SMES (Local3, Local2)
                    }
                    ElseIf (((Local1 > 0x60) && (Local1 < 0x80)))
                    {
                        Local4 = SDSS (Local3, Local2)
                    }
                    ElseIf (((Local1 > 0x80) && (Local1 < 0xFF)))
                    {
                        Local4 = SOTS (Local3, Local2)
                    }
                    Else
                    {
                        Local4 = 0xE4
                    }

                    Local0 [Zero] = Local4
                    If ((Local4 != Zero))
                    {
                        Local0 [0x02] = Local1
                    }

                    Return (Local0)
                }

                Method (GDST, 1, NotSerialized)
                {
                    Local0 = Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    Local1 = DerefOf (Arg0 [One])
                    Local2 = DerefOf (Arg0 [0x02])
                    Local2 |= (DerefOf (Arg0 [0x03]) << 0x08)
                    Local3 = Zero
                    If (((Local1 > Zero) && (Local1 < 0x20)))
                    {
                        If (((TPAA == 0xAA) && (LNTH >= 0x0E)))
                        {
                            If (((Local2 & CDPB) == Zero))
                            {
                                Local0 [Zero] = 0xE2
                                Return (Local0)
                            }
                        }

                        Local4 = GCMS (RefOf (Local3))
                    }
                    ElseIf (((Local1 > 0x20) && (Local1 < 0x40)))
                    {
                        Local4 = GAPS (RefOf (Local3))
                    }
                    ElseIf (((Local1 > 0x40) && (Local1 < 0x60)))
                    {
                        Local4 = GMES (RefOf (Local3))
                    }
                    ElseIf (((Local1 > 0x60) && (Local1 < 0x80)))
                    {
                        Local4 = GDSS (RefOf (Local3))
                    }
                    ElseIf (((Local1 > 0x80) && (Local1 < 0xFF)))
                    {
                        Local4 = GOTS (RefOf (Local3))
                    }
                    Else
                    {
                        Local0 [Zero] = 0xE4
                        Return (Local0)
                    }

                    If ((Local2 == Zero))
                    {
                        Local4 = 0xE2
                    }

                    Local0 [Zero] = Local4
                    Local3 &= Local2
                    Local0 [0x02] = (Local3 & 0xFF)
                    Local0 [0x03] = (Local3 >> 0x08)
                    Return (Local0)
                }

                Method (WMAA, 3, NotSerialized)
                {
                    CMSW (0x05, Arg1)
                    CMSW (0x06, DerefOf (Arg2 [Zero]))
                    CMSW (0x07, DerefOf (Arg2 [One]))
                    CMSW (0x08, DerefOf (Arg2 [0x02]))
                    CMSW (0x09, DerefOf (Arg2 [0x03]))
                    CMSW (0x0A, 0xFF)
                    CMSW (0x0B, 0xFF)
                    CMSW (0x0C, 0xFF)
                    CMSW (0x0D, 0xFF)
                    CMSW (0x0E, 0xFF)
                    CMSW (0x0F, 0xFF)
                    If ((Arg1 == One))
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           /* .... */
                            }
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        _T_0 = DerefOf (Arg2 [Zero])
                        If ((_T_0 == One))
                        {
                            CMSW (0x0E, DerefOf (Arg2 [0x04]))
                            CMSW (0x0F, DerefOf (Arg2 [0x05]))
                            Local0 = SDDV (Arg2)
                        }
                        ElseIf ((_T_0 == 0x02))
                        {
                            Local0 = SNDE (Arg2)
                        }
                        Else
                        {
                            Local0 [Zero] = 0xE4
                        }
                    }
                    ElseIf ((Arg1 == 0x02))
                    {
                        Local0 = Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                            }
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        _T_1 = DerefOf (Arg2 [Zero])
                        If ((_T_1 == One))
                        {
                            Local0 = GDST (Arg2)
                        }
                        Else
                        {
                            Local0 [Zero] = 0xE4
                        }
                    }
                    Else
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0xE4, 0x00, 0x00, 0x00                           /* .... */
                            }
                    }

                    CMSW (0x0A, DerefOf (Local0 [Zero]))
                    CMSW (0x0B, DerefOf (Local0 [One]))
                    CMSW (0x0C, DerefOf (Local0 [0x02]))
                    CMSW (0x0D, DerefOf (Local0 [0x03]))
                    Return (Local0)
                }

                Method (WMBA, 3, NotSerialized)
                {
                    BUFF = Zero
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Arg1
                    If ((Match (Package (0x0A)
                                    {
                                        One, 
                                        0x02, 
                                        0x03, 
                                        0x08, 
                                        0x09, 
                                        0x0A, 
                                        0x0C, 
                                        0x0D, 
                                        0x0E, 
                                        0x11
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        Local0 = Zero
                    }
                    ElseIf ((Match (Package (0x07)
                                    {
                                        0x04, 
                                        0x05, 
                                        0x06, 
                                        0x07, 
                                        0x0B, 
                                        0x0F, 
                                        0x10
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        If ((Arg1 == 0x07))
                        {
                            BUFF = Arg2
                            If (BF00)
                            {
                                BAEF = One
                            }
                        }

                        If ((Arg1 == 0x10))
                        {
                            BUFF = Arg2
                            If (BF00)
                            {
                                ODAP = One
                            }
                        }

                        Local0 = One
                    }

                    If (Local0)
                    {
                        WSDS (Arg1, Arg2)
                    }
                    Else
                    {
                        WGDS (Arg1)
                    }

                    BUFF = DerefOf (BADG [(Arg1 - One)])
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                {
                    If ((Arg0 >= 0x80))
                    {
                        If ((Arg0 < 0x83))
                        {
                            Return (OEMN ())
                        }
                    }

                    If ((Arg0 == 0xBC))
                    {
                        Return (EVBC ())
                    }
                }

                Method (WMBB, 3, NotSerialized)
                {
                    STRL (Arg1, Arg2)
                    BUFF = BBSB /* \_SB_.PCI0.WMID.BBSB */
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBC, 3, NotSerialized)
                {
                    BUFF = Zero
                    WODP (Arg1, Arg2)
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBD, 3, NotSerialized)
                {
                    If ((Arg1 == One))
                    {
                        BUFF = Arg2
                        Local0 = BUFF /* \_SB_.PCI0.WMID.BUFF */
                        WIT0 = Arg2
                        GCPU (WIT0)
                        Return (DSY0) /* \_SB_.PCI0.WMID.DSY0 */
                    }

                    If ((Arg1 == 0x02))
                    {
                        Local0 = Arg2
                        MSRR (Arg2)
                        Return (DSY1) /* \_SB_.PCI0.WMID.DSY1 */
                    }

                    If ((Arg1 == 0x03))
                    {
                        Local0 = Arg2
                        MSRW (Arg2)
                        Return (DSY1) /* \_SB_.PCI0.WMID.DSY1 */
                    }

                    If ((Arg1 == 0x04))
                    {
                        C4C3 (Arg1, Arg2)
                        BUFF = (DerefOf (BCDS [(Arg1 + 0x05)]) >> 0x10)
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x05))
                    {
                        C4C3 (Arg1, Arg2)
                        BUFF = DerefOf (BCDS [(Arg1 + 0x04)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x06))
                    {
                        CPUF ()
                        BUFF = DerefOf (BCDS [(Arg1 + 0x04)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x07))
                    {
                        CPUT ()
                        BUFF = DerefOf (BCDS [(Arg1 + 0x04)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x08))
                    {
                        WPRW = Arg2
                        WPIR = WWD1 /* \_SB_.PCI0.WMID.WWD1 */
                        WPIF = WWD2 /* \_SB_.PCI0.WMID.WWD2 */
                        WPID = WWD3 /* \_SB_.PCI0.WMID.WWD3 */
                        WPIB = WWD4 /* \_SB_.PCI0.WMID.WWD4 */
                        Concatenate (WPCI, WWD0, Local0)
                        PCIR (Local0)
                        Return (DSY2) /* \_SB_.PCI0.WMID.DSY2 */
                    }

                    If ((Arg1 == 0x09))
                    {
                        DSY6 = Arg2
                        Local0 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                        DSY0 = Arg2
                        WPRW = DY01 /* \_SB_.PCI0.WMID.DY01 */
                        WPIR = WWD1 /* \_SB_.PCI0.WMID.WWD1 */
                        WPIF = WWD2 /* \_SB_.PCI0.WMID.WWD2 */
                        WPID = WWD3 /* \_SB_.PCI0.WMID.WWD3 */
                        WPIB = WWD4 /* \_SB_.PCI0.WMID.WWD4 */
                        Local1 = WPCI /* \_SB_.PCI0.WMID.WPCI */
                        Concatenate (DY60, WPCI, Local0)
                        Concatenate (Local0, WWD0, Local1)
                        PCIW (Local1)
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x0A))
                    {
                        CPUS ()
                        BUFF = DerefOf (BCDS [(Arg1 + 0x02)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x0B))
                    {
                        PCID (Arg2)
                        Return (DSY6) /* \_SB_.PCI0.WMID.DSY6 */
                    }

                    Return (Zero)
                }

                Method (WMBE, 3, NotSerialized)
                {
                    BTIF (Arg1, Arg2)
                    Debug = BUFF /* \_SB_.PCI0.WMID.BUFF */
                    Debug = BEDS /* \_SB_.PCI0.WMID.BEDS */
                    Debug = BUFF /* \_SB_.PCI0.WMID.BUFF */
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBF, 3, NotSerialized)
                {
                }

                Method (WMBG, 3, NotSerialized)
                {
                    BUFF = Arg2
                    WSVE (BF00)
                    BUFF = DerefOf (BGDS [(Arg1 - One)])
                    Debug = BUFF /* \_SB_.PCI0.WMID.BUFF */
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBH, 3, NotSerialized)
                {
                    P80H = 0x44
                    If ((Arg1 == One))
                    {
                        IHWM (0x10, Arg2)
                        BUF1 = DI00 /* \DI00 */
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x02))
                    {
                        IHWM (0x11, Arg2)
                        BUF1 = DI00 /* \DI00 */
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x03))
                    {
                        IHWM (0x12, Arg2)
                        BUF1 = DI00 /* \DI00 */
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x04))
                    {
                        GBDS ()
                        Return (BOOT) /* \_SB_.PCI0.WMID.BOOT */
                    }

                    If ((Arg1 == 0x05))
                    {
                        SBDS (Arg2)
                        BUF1 [Zero] = Zero
                        BUF1 [One] = Zero
                        BUF1 [0x02] = Zero
                        BUF1 [0x03] = Zero
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x0A))
                    {
                        If ((D2DF == Zero))
                        {
                            BUF1 [Zero] = One
                        }
                        Else
                        {
                            BUF1 [Zero] = Zero
                        }

                        BUF1 [0x02] = Zero
                        BUF1 [0x03] = Zero
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }
                }

                Method (WMBI, 3, NotSerialized)
                {
                    If ((Arg1 == One))
                    {
                        BUF1 = IHWM (0x09, Zero)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x02))
                    {
                        IHWM (0x0A, Zero)
                        Return (DI00) /* \DI00 */
                    }

                    If ((Arg1 == 0x03))
                    {
                        BUF1 = IHWM (0x0B, Zero)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x06))
                    {
                        If ((DPMD == Zero))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    If ((Arg1 == 0x07))
                    {
                        BUF1 = IHWM (0x14, Zero)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x08))
                    {
                        BUF1 = IHWM (0x0E, Zero)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x09))
                    {
                        BUF1 = IHWM (0x0F, Zero)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x0A))
                    {
                        BUF1 = IHWM (0x15, Zero)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x0B))
                    {
                        Return (Zero)
                    }
                }

                Method (WMBJ, 3, NotSerialized)
                {
                    If ((Arg1 == One))
                    {
                        If ((OSYS > 0x03E8))
                        {
                            BUF1 [Zero] = 0x02
                            BUF1 [One] = Zero
                            BUF1 [0x02] = Zero
                            BUF1 [0x03] = Zero
                        }
                        Else
                        {
                            BUF1 [Zero] = One
                            BUF1 [One] = Zero
                            BUF1 [0x02] = Zero
                            BUF1 [0x03] = Zero
                        }

                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x02))
                    {
                        Return (Zero)
                    }
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

    Device (_SB.PCI0.LPCB.TPM)
    {
        Name (_HID, EisaId ("PNP0C31"))  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (CMOS, SystemIO, 0x70, 0x04)
        Field (CMOS, ByteAcc, NoLock, Preserve)
        {
            IDX0,   7, 
            Offset (0x01), 
            DAT0,   8, 
            IDX1,   7, 
            Offset (0x03), 
            DAT1,   8
        }

        IndexField (IDX1, DAT1, ByteAcc, NoLock, Preserve)
        {
            Offset (0x60), 
            CCMD,   8, 
            LCMD,   8, 
            LRET,   32, 
            EXST,   8
        }

        OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
        Field (TPMR, AnyAcc, NoLock, Preserve)
        {
            ACC0,   8
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            EXST = _STA ()
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((ACC0 != 0xFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (HINF, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            _T_0 = ToInteger (Arg1)
            If ((_T_0 == Zero))
            {
                Return (Buffer (One)
                {
                     0x01                                             /* . */
                })
            }
            ElseIf ((_T_0 == One))
            {
                If ((_STA () == Zero))
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }

                Return (Package (0x02)
                {
                    One, 
                    Package (0x02)
                    {
                        One, 
                        0x20
                    }
                })
            }
            Else
            {
                BreakPoint
            }

            Return (Buffer (One)
            {
                 0x00                                             /* . */
            })
        }

        Method (TPPI, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            _T_0 = ToInteger (Arg1)
            If ((_T_0 == Zero))
            {
                Return (Buffer (One)
                {
                     0x3F                                             /* ? */
                })
            }
            ElseIf ((_T_0 == One))
            {
                Return ("1.0")
            }
            ElseIf ((_T_0 == 0x02))
            {
                Local0 = DerefOf (Arg2 [Zero])
                If ((Local0 > 0x0E))
                {
                    Return (One)
                }

                CCMD = Local0
                Return (Zero)
            }
            ElseIf ((_T_0 == 0x03))
            {
                Name (TMP0, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                TMP0 [One] = CCMD /* \_SB_.PCI0.LPCB.TPM_.CCMD */
                Return (TMP0) /* \_SB_.PCI0.LPCB.TPM_.TPPI.TMP0 */
            }
            ElseIf ((_T_0 == 0x04))
            {
                Return (0x02)
            }
            ElseIf ((_T_0 == 0x05))
            {
                Name (TMP1, Package (0x03)
                {
                    Zero, 
                    Zero, 
                    Zero
                })
                TMP1 [One] = LCMD /* \_SB_.PCI0.LPCB.TPM_.LCMD */
                TMP1 [0x02] = LRET /* \_SB_.PCI0.LPCB.TPM_.LRET */
                Return (TMP1) /* \_SB_.PCI0.LPCB.TPM_.TPPI.TMP1 */
            }
            ElseIf ((_T_0 == 0x06))
            {
                Return (Zero)
            }
            Else
            {
                BreakPoint
            }

            Return (One)
        }

        Method (SMBS, 3, NotSerialized)
        {
            Return (Zero)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
            {
                Return (HINF (Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Return (TPPI (Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Return (SMBS (Arg1, Arg2, Arg3))
            }

            Return (Buffer (One)
            {
                 0x00                                             /* . */
            })
        }

        Method (PTS, 1, NotSerialized)
        {
            Return (Zero)
        }
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
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

        If ((Arg0 == 0x04))
        {
            P80D = ((P80D & Zero) | Arg1)
        }

        If ((Arg2 == Zero)) {}
        If ((Arg2 == One))
        {
            P80H = P80D /* \P80D */
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    Method (CMSW, 2, NotSerialized)
    {
        CMSI = Arg0
        CMSD = Arg1
    }

    Method (CMSR, 1, NotSerialized)
    {
        CMSI = Arg0
        Return (CMSD) /* \CMSD */
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0, Zero)
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.LPCB.EC0.RBTA = \_SB.PCI0.LPCB.EC0.BLTH
            \_SB.PCI0.LPCB.EC0.RWLA = \_SB.PCI0.LPCB.EC0.WLAN
            \_SB.PCI0.LPCB.EC0.R3GA = \_SB.PCI0.LPCB.EC0.ST3G
            \_SB.PCI0.LPCB.EC0.RDBT = \_SB.PCI0.LPCB.EC0.BLTS
            \_SB.PCI0.LPCB.EC0.RDWL = \_SB.PCI0.LPCB.EC0.WLST
            \_SB.PCI0.LPCB.EC0.RD3G = \_SB.PCI0.LPCB.EC0.ED3G
        }

        Local0 = Zero
        If ((\_SB.PCI0.WMID.BAEF == One))
        {
            Local0 |= 0x02
        }

        If ((\_SB.PCI0.LPCB.EC0.PSBB == One))
        {
            Local0 |= One
        }

        CMSW (0x40, Local0)
        Sleep (0x64)
        \_SB.PCI0.LPCB.EC0.PSBB = Zero
        Sleep (0x64)
        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            If (ECON)
            {
                If ((\_SB.PCI0.LPCB.EC0.LID2 == One))
                {
                    USBW = One
                    USW2 = One
                }
            }
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            If (ECON)
            {
                \_SB.PCI0.LPCB.EC0.FLS4 = One
            }

            \_SB.PCI0.LPCB.EC0.OEBL = 0x04
        }

        If ((TCGM == One))
        {
            \_SB.PCI0.LPCB.TPM.PTS (Arg0)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P80D = Zero
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
            \_SB.PCI0.LPCB.EC0.BLTH = \_SB.PCI0.LPCB.EC0.RBTA
            \_SB.PCI0.LPCB.EC0.WLAN = \_SB.PCI0.LPCB.EC0.RWLA
            \_SB.PCI0.LPCB.EC0.ST3G = \_SB.PCI0.LPCB.EC0.R3GA
            \_SB.PCI0.LPCB.EC0.BLTS = \_SB.PCI0.LPCB.EC0.RDBT
            \_SB.PCI0.LPCB.EC0.WLST = \_SB.PCI0.LPCB.EC0.RDWL
            \_SB.PCI0.LPCB.EC0.ED3G = \_SB.PCI0.LPCB.EC0.RD3G
            \_SB.PCI0.LPCB.EC0.CPLE = One
        }

        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            CMSI = 0x40
            Local1 = CMSD /* \CMSD */
            Local1 &= One
            If (Local1)
            {
                \_SB.PCI0.LPCB.EC0.PSBB = One
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.PSBB = Zero
            }

            If ((PMEE == One))
            {
                PMEN = One
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

            If ((RP1D == Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero) // Bus Check
            }

            If ((RP2D == Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero) // Bus Check
            }

            If ((RP3D == Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero) // Bus Check
            }

            If ((RP4D == Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero) // Bus Check
            }

            If ((RP5D == Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero) // Bus Check
            }

            If ((RP7D == Zero))
            {
                Notify (\_SB.PCI0.RP07, Zero) // Bus Check
            }

            If ((RP8D == Zero))
            {
                Notify (\_SB.PCI0.RP08, Zero) // Bus Check
            }
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
        }

        If ((PFLV == FMBL)) {}
        If ((Arg0 == 0x03))
        {
            If ((\_SB.PCI0.LPCB.EC0.LID2 == One))
            {
                \_SB.PCI0.LPCB.EC0.Q29T = 0x32
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

    Mutex (PSMX, 0x00)
    Method (IHWM, 2, NotSerialized)
    {
        Acquire (PSMX, 0xFFFF)
        PRMW = Arg0
        DI00 = Arg1
        SSMP = 0xD1
        Local0 = DI00 /* \DI00 */
        Release (PSMX)
        Return (Local0)
    }

    Scope (_SB.PCI0)
    {
        Device (BAT1)
        {
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
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^LPCB.EC0.MBTS & One))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (BTPV, 0xFFFFFFFF)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ^^LPCB.EC0.BEAC = ^^LPCB.EC0.ACDF /* \_SB_.PCI0.LPCB.EC0_.ACDF */
                If ((DPMD == 0x02))
                {
                    CMSI = 0x40
                    Local1 = CMSD /* \CMSD */
                    Local1 &= One
                    If (Local1)
                    {
                        ^^LPCB.EC0.PSBB = One
                    }
                    Else
                    {
                        ^^LPCB.EC0.PSBB = Zero
                    }
                }
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                BTPV = Arg0
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If ((BIFI == Zero))
                {
                    UBIF ()
                    BIFI = One
                }

                Return (PBIF) /* \_SB_.PCI0.BAT1.PBIF */
            }

            Name (LFCC, 0x1130)
            Method (UBIF, 0, NotSerialized)
            {
                If (ECON)
                {
                    Local0 = ^^LPCB.EC0.BTDC /* \_SB_.PCI0.LPCB.EC0_.BTDC */
                    Local1 = ^^LPCB.EC0.LFC2 /* \_SB_.PCI0.LPCB.EC0_.LFC2 */
                    Local2 = ^^LPCB.EC0.BTDV /* \_SB_.PCI0.LPCB.EC0_.BTDV */
                    Local3 = ^^LPCB.EC0.BTMD /* \_SB_.PCI0.LPCB.EC0_.BTMD */
                    Local4 = ^^LPCB.EC0.BTMN /* \_SB_.PCI0.LPCB.EC0_.BTMN */
                    Local5 = ^^LPCB.EC0.BTSN /* \_SB_.PCI0.LPCB.EC0_.BTSN */
                    Local6 = ^^LPCB.EC0.LION /* \_SB_.PCI0.LPCB.EC0_.LION */
                    PBIF [One] = Local0
                    PBIF [0x02] = Local1
                    PBIF [0x04] = Local2
                    LFCC = Local1
                    PBIF [0x06] = Zero
                    If (Local6)
                    {
                        PBIF [0x0B] = "NiMH"
                    }
                    Else
                    {
                        PBIF [0x0B] = "LION"
                    }

                    Local3 &= 0x1F
                    If ((Local3 == One))
                    {
                        PBIF [0x09] = "AS10B71"
                    }
                    ElseIf ((Local3 == 0x02))
                    {
                        PBIF [0x09] = "AS10B73"
                    }
                    ElseIf ((Local3 == 0x03))
                    {
                        PBIF [0x09] = "AS10B75"
                    }
                    ElseIf ((Local3 == 0x04))
                    {
                        PBIF [0x09] = "AS10B7E"
                    }
                    ElseIf ((Local3 == 0x05))
                    {
                        PBIF [0x09] = "AS10B31"
                    }
                    ElseIf ((Local3 == 0x06))
                    {
                        PBIF [0x09] = "AS10B41"
                    }
                    ElseIf ((Local3 == 0x07))
                    {
                        PBIF [0x09] = "AS10B51"
                    }
                    ElseIf ((Local3 == 0x08))
                    {
                        PBIF [0x09] = "AS10B61"
                    }
                    ElseIf ((Local3 == 0x09))
                    {
                        PBIF [0x09] = "AS10B6E"
                    }
                    ElseIf ((Local3 == 0x0A))
                    {
                        PBIF [0x09] = "AS10E7E"
                    }
                    ElseIf ((Local3 == 0x0B))
                    {
                        PBIF [0x09] = "AS10C7E"
                    }
                    ElseIf ((Local3 == 0x0C))
                    {
                        PBIF [0x09] = "AS10B5E"
                    }
                    ElseIf ((Local3 == 0x0D))
                    {
                        PBIF [0x09] = "AS10B3E"
                    }
                    ElseIf ((Local3 == 0x0E))
                    {
                        PBIF [0x09] = "AS10E76"
                    }
                    ElseIf ((Local3 == 0x0F))
                    {
                        PBIF [0x09] = "AS10E36"
                    }

                    If ((Local4 == 0x03))
                    {
                        PBIF [0x0C] = "SANYO"
                    }
                    ElseIf ((Local4 == 0x04))
                    {
                        PBIF [0x0C] = "SONY"
                    }
                    ElseIf ((Local4 == 0x05))
                    {
                        PBIF [0x0C] = "PANASONIC"
                    }
                    ElseIf ((Local4 == 0x06))
                    {
                        PBIF [0x0C] = "SAMSUNG"
                    }
                    ElseIf ((Local4 == 0x07))
                    {
                        PBIF [0x0C] = "SIMPLO"
                    }
                    ElseIf ((Local4 == 0x08))
                    {
                        PBIF [0x0C] = "MOTOROLA"
                    }
                    ElseIf ((Local4 == 0x09))
                    {
                        PBIF [0x0C] = "CELXPERT"
                    }
                    ElseIf ((Local4 == 0x0A))
                    {
                        PBIF [0x0C] = "LGC"
                    }
                    Else
                    {
                        PBIF [0x0C] = "UNKNOWN"
                    }

                    PBIF [0x0A] = ITOS (Local5)
                }
            }

            Name (RCAP, Zero)
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If ((^^LPCB.EC0.MBTS == Zero))
                {
                    PBST [Zero] = Zero
                    PBST [One] = 0xFFFFFFFF
                    PBST [0x02] = 0xFFFFFFFF
                    PBST [0x03] = 0xFFFFFFFF
                    Return (PBST) /* \_SB_.PCI0.BAT1.PBST */
                }

                If (ECON)
                {
                    Local0 = ^^LPCB.EC0.MBTC /* \_SB_.PCI0.LPCB.EC0_.MBTC */
                    Local1 = ^^LPCB.EC0.MBRM /* \_SB_.PCI0.LPCB.EC0_.MBRM */
                    Local2 = ^^LPCB.EC0.MBVG /* \_SB_.PCI0.LPCB.EC0_.MBVG */
                    Local3 = ^^LPCB.EC0.MCUR /* \_SB_.PCI0.LPCB.EC0_.MCUR */
                    Local4 = ^^LPCB.EC0.BTST /* \_SB_.PCI0.LPCB.EC0_.BTST */
                    Local5 = ^^LPCB.EC0.MBTF /* \_SB_.PCI0.LPCB.EC0_.MBTF */
                    Local6 = ^^LPCB.EC0.ACDF /* \_SB_.PCI0.LPCB.EC0_.ACDF */
                    If (Local6)
                    {
                        If ((Local5 == One))
                        {
                            Local7 = Zero
                            Local1 = LFCC /* \_SB_.PCI0.BAT1.LFCC */
                        }
                        ElseIf ((Local0 == One))
                        {
                            Local7 = 0x02
                        }
                        Else
                        {
                            Local7 = Zero
                        }
                    }
                    ElseIf ((Local4 && One))
                    {
                        Local7 = One
                    }
                    Else
                    {
                        Local7 = Zero
                    }

                    Local4 &= 0x04
                    If ((Local4 == 0x04))
                    {
                        Local7 |= Local4
                    }

                    PBST [Zero] = Local7
                    If (!(Local1 & 0x8000))
                    {
                        PBST [0x02] = Local1
                    }

                    If (!(Local2 & 0x8000))
                    {
                        PBST [0x03] = Local2
                    }

                    If ((Local3 && 0x8000))
                    {
                        If ((Local3 != 0xFFFF))
                        {
                            Local3 = ~Local3
                            Local3++
                            Local3 &= 0xFFFF
                        }
                    }

                    PBST [One] = Local3
                }

                Return (PBST) /* \_SB_.PCI0.BAT1.PBST */
            }

            Method (ITOS, 1, NotSerialized)
            {
                Local0 = ""
                Local1 = 0x04
                While (Local1)
                {
                    Local1--
                    Local4 = ((Arg0 >> (Local1 << 0x02)) & 0x0F)
                    Local2 = DerefOf (CHAR [Local4])
                    Concatenate (Local0, Local2, Local5)
                    Local0 = Local5
                }

                Return (Local0)
            }

            Name (CHAR, Package (0x10)
            {
                "0", 
                "1", 
                "2", 
                "3", 
                "4", 
                "5", 
                "6", 
                "7", 
                "8", 
                "9", 
                "A", 
                "B", 
                "C", 
                "D", 
                "E", 
                "F"
            })
            Method (BATS, 0, NotSerialized)
            {
                If (ECON)
                {
                    Local0 = ^^LPCB.EC0.MBTS /* \_SB_.PCI0.LPCB.EC0_.MBTS */
                    If ((Local0 == One))
                    {
                        If ((BTIN == Zero))
                        {
                            BTCH = One
                            BIFI = Zero
                        }

                        BTIN = One
                    }
                    ElseIf ((BTIN == One))
                    {
                        BTCH = One
                        BIFI = Zero
                    }
                }
            }
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
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                ACWT = ACST /* \_SB_.PCI0.ACAD.ACST */
                If ((^^LPCB.EC0.SIMU == 0x53))
                {
                    ACST = Zero
                }
                ElseIf (ECON)
                {
                    ACST = ^^LPCB.EC0.ACDF /* \_SB_.PCI0.LPCB.EC0_.ACDF */
                }
                Else
                {
                    ACST = One
                }

                If (ACST)
                {
                    Local0 = One
                    ^^BAT1.BCRI = Zero
                    PWRS = One
                    If (ECON)
                    {
                        If ((^^LPCB.EC0.GPUS == One)) {}
                    }
                }
                Else
                {
                    Local0 = Zero
                    PWRS = Zero
                    If (ECON)
                    {
                        If ((^^LPCB.EC0.GPUS == Zero)) {}
                    }
                }

                If ((ACWT != ACST))
                {
                    PNOT ()
                }

                Return (Local0)
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
        }

        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (ECON)
                {
                    If ((^^LPCB.EC0.LID2 == Zero))
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
                    Return (One)
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            RLBM = One
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
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP05.HPEX = Zero
            ^RP07.HPEX = Zero
            ^RP08.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
            ^RP05.HPSX = One
            ^RP07.HPSX = One
            ^RP08.HPSX = One
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

    Scope (_TZ)
    {
        ThermalZone (THRM)
        {
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (ECON)
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
                If (ECON)
                {
                    Local1 = \_SB.PCI0.LPCB.EC0.TJMX
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Local1
                    If ((_T_0 == Zero))
                    {
                        Return (0x0DCC)
                    }
                    ElseIf ((_T_0 == One))
                    {
                        Return (0x0DFE)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Return (0x0E62)
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Return (0x0E94)
                    }
                }
                Else
                {
                    Return (0x0E80)
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
                If (ECON)
                {
                    Local1 = \_SB.PCI0.LPCB.EC0.TJMX
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = Local1
                    If ((_T_0 == Zero))
                    {
                        Return (0x0DFE)
                    }
                    ElseIf ((_T_0 == One))
                    {
                        Return (0x0E30)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Return (0x0E94)
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Return (0x0EC6)
                    }
                }
                Else
                {
                    Return (0x0EC6)
                }
            }
        }
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
                    _Y10)
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
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    _Y16)
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
                    _Y11)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                TBR0 = TBAB /* \TBAB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If ((TBAB == Zero))
                {
                    TBLN = Zero
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

    Method (BRTN, 1, Serialized)
    {
        If (((DID1 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (((DID2 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (((DID3 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (((DID4 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (((DID5 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (((DID6 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD06, Arg0)
        }

        If (((DID7 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD07, Arg0)
        }

        If (((DID8 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD08, Arg0)
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
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
            Offset (0x04), 
                ,   1, 
            RLBM,   1, 
            Offset (0x20), 
                ,   2, 
            SPST,   1, 
            Offset (0x28), 
                ,   11, 
            PMEN,   1, 
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
            Offset (0x35B0), 
                ,   3, 
            USBW,   1, 
                ,   3, 
            USW2,   1
        }

        Method (GPI0, 4, NotSerialized)
        {
            If (((Arg0 | Arg1) == Zero))
            {
                Return (0xFFFFFFFF)
            }
            ElseIf (((Arg0 == Zero) & (Arg1 == One)))
            {
                Return (0x0384)
            }

            Return ((0x1E * (0x09 - (Arg2 + Arg3))))
        }

        Method (GDMA, 2, NotSerialized)
        {
            If ((Arg0 == One))
            {
                If ((Arg1 == One))
                {
                    Return (0x0F)
                }
            }

            Return (0xFFFFFFFF)
        }

        Method (SFLG, 5, NotSerialized)
        {
            Local0 = Zero
            Local0 |= Arg1
            Local0 |= (Arg0 << One)
            Local0 |= (Arg2 << 0x03)
            Local0 |= (Arg3 << 0x02)
            Local0 |= (Arg4 << 0x04)
            Return (Local0)
        }

        Method (SPIO, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
            })
            CreateByteField (PBUF, Zero, RCT)
            CreateByteField (PBUF, One, ISP)
            CreateByteField (PBUF, 0x02, FAST)
            CreateByteField (PBUF, 0x03, DMAE)
            CreateByteField (PBUF, 0x04, PIOT)
            If (((Arg0 == Zero) || (Arg0 == 0xFFFFFFFF)))
            {
                Return (PBUF) /* \SPIO.PBUF */
            }

            If ((Arg0 > 0xF0))
            {
                DMAE = One
                PIOT = Zero
            }
            Else
            {
                FAST = One
                If ((Arg1 & 0x02))
                {
                    If (((Arg0 == 0x78) & (Arg2 & 0x02)))
                    {
                        RCT = 0x03
                        ISP = 0x02
                        PIOT = 0x04
                        Return (PBUF) /* \SPIO.PBUF */
                    }

                    If (((Arg0 <= 0xB4) & (Arg2 & One)))
                    {
                        RCT = One
                        ISP = 0x02
                        PIOT = 0x03
                        Return (PBUF) /* \SPIO.PBUF */
                    }
                    Else
                    {
                        RCT = Zero
                        ISP = One
                        PIOT = 0x02
                    }
                }
            }

            Return (PBUF) /* \SPIO.PBUF */
        }

        Method (SDMA, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00                           /* .... */
            })
            CreateByteField (PBUF, Zero, PCT)
            CreateByteField (PBUF, One, PCB)
            CreateByteField (PBUF, 0x02, UDMT)
            CreateByteField (PBUF, 0x03, UDME)
            CreateByteField (PBUF, 0x04, DMAT)
            If (((Arg0 == Zero) || (Arg0 == 0xFFFFFFFF)))
            {
                Return (PBUF) /* \SDMA.PBUF */
            }

            If ((Arg0 <= 0x78))
            {
                If ((Arg1 & 0x04))
                {
                    UDME = One
                    If (((Arg0 <= 0x0F) & (Arg2 & 0x40)))
                    {
                        UDMT = One
                        PCB = One
                        PCT = One
                        DMAT = 0x06
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x14) & (Arg2 & 0x20)))
                    {
                        UDMT = One
                        PCB = One
                        PCT = One
                        DMAT = 0x05
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x1E) & (Arg2 & 0x10)))
                    {
                        PCB = One
                        PCT = 0x02
                        DMAT = 0x04
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x2D) & (Arg2 & 0x08)))
                    {
                        PCB = One
                        PCT = One
                        DMAT = 0x03
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x3C) & (Arg2 & 0x04)))
                    {
                        PCT = 0x02
                        DMAT = 0x02
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x5A) & (Arg2 & 0x02)))
                    {
                        PCT = One
                        DMAT = One
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x78) & (Arg2 & One)))
                    {
                        DMAT = Zero
                    }
                }
            }

            Return (PBUF) /* \SDMA.PBUF */
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
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            L01C += One
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                    Notify (\_SB.PCI0.RP01, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                    Notify (\_SB.PCI0.RP02, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If (((RP4D == Zero) && \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                    Notify (\_SB.PCI0.RP04, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }

            If (((RP5D == Zero) && \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = One
                    \_SB.PCI0.RP05.HPSX = One
                    Notify (\_SB.PCI0.RP05, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = One
                }
            }

            If (((RP7D == Zero) && \_SB.PCI0.RP07.HPSX))
            {
                Sleep (0x64)
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
                Sleep (0x64)
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
            Notify (\_SB.PCI0.PEG3, 0x02) // Device Wake
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
            Notify (\_SB.PCI0.GLAN, 0x02) // Device Wake
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
            Name (_BBN, 0x3F)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x003F,             // Range Minimum
                    0x003F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, _Y17)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.CPBG._Y17._MIN, PBMN)  // _MIN: Minimum Base Address
                PBMN = ((PELN >> 0x14) - One)
                CreateWordField (BUF0, \_SB.CPBG._Y17._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = ((PELN >> 0x14) - One)
                Return (BUF0) /* \_SB_.CPBG.BUF0 */
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
    If ((S3DS == One))
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

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

