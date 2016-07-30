/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000FC53 (64595)
 *     Revision         0x02
 *     Checksum         0x0D
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "Notebook"
 *     OEM Revision     0x00000206 (518)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 2, "_ASUS_", "Notebook", 0x00000206)
{

    External (_SB_.ALIB, MethodObj)    // 2 Arguments
    External (_SB_.APTS, MethodObj)    // 1 Arguments
    External (_SB_.AWAK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.CADL, UnknownObj)
    External (_SB_.PCI0.GFX0.CAL2, UnknownObj)
    External (_SB_.PCI0.GFX0.CPDL, UnknownObj)
    External (_SB_.PCI0.GFX0.CPL2, UnknownObj)
    External (_SB_.PCI0.GFX0.CPL3, UnknownObj)
    External (_SB_.PCI0.GFX0.GNOT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GFX0.NXTD, UnknownObj)
    External (_SB_.PCI0.VGA_.AFN7, MethodObj)    // 1 Arguments
    External (AFN4, MethodObj)    // 1 Arguments

    Name (PEBS, 0xE0000000)
    Name (PEBL, 0x10000000)
    Name (SMBB, 0x0B20)
    Name (SMBL, 0x20)
    Name (SMB0, 0x0B00)
    Name (SMBM, 0x10)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (SMIO, 0xB2)
    Name (GPBS, Zero)
    Name (GPLN, Zero)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SPIB, 0xFEC10000)
    Name (SPIL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (HPTL, 0x0400)
    Name (GIOB, 0xFED80100)
    Name (IOMB, 0xFED80D00)
    Name (SSMB, 0xFED80200)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (SRSI, 0xB2)
    Name (CSMI, 0x61)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (PEPM, One)
    Name (CPVD, One)
    Name (MBEC, Zero)
    Name (HIDK, "ATK3001")
    Name (HIDM, "ETD0108")
    Name (CIDK, 0x0303D041)
    Name (CIDM, 0x130FD041)
    Name (OSFG, Zero)
    Name (SOAO, 0x91)
    Name (FUIF, 0xA5)
    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            DBG8 = 0xAA
        }
        Else
        {
            DBG8 = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If ((OSVR != Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        If ((PICM == Zero))
        {
            DBG8 = 0xAC
        }

        OSVR = 0x03
        If (CondRefOf (_OSI, Local0))
        {
            If (_OSI ("Windows 2001"))
            {
                OSVR = 0x04
            }

            If (_OSI ("Windows 2001.1"))
            {
                OSVR = 0x05
            }

            If (_OSI ("FreeBSD"))
            {
                OSVR = 0x06
            }

            If (_OSI ("HP-UX"))
            {
                OSVR = 0x07
            }

            If (_OSI ("OpenVMS"))
            {
                OSVR = 0x08
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                OSVR = 0x09
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                OSVR = 0x0A
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                OSVR = 0x0B
            }

            If (_OSI ("Windows 2006"))
            {
                OSVR = 0x0C
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                OSVR = 0x0D
            }

            If (_OSI ("Windows 2009"))
            {
                OSVR = 0x0E
            }

            If (_OSI ("Windows 2012"))
            {
                OSVR = 0x0F
            }

            If (_OSI ("Windows 2013"))
            {
                OSVR = 0x10
            }
        }
        ElseIf (MCTH (_OS, "Microsoft Windows NT"))
        {
            OSVR = Zero
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If ((SizeOf (Arg0) < SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                )))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If (((One << Arg1) & Local0))
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If (((OSFL () == One) || (OSFL () == 0x02)))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
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

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x4400)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x10)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ICMS,   8, 
        DCMS,   8, 
        Offset (0x0E), 
        P80,    8
    }

    Name (PCIE, 0xE0000000)
    Name (OSCF, Zero)
    Name (GGN2, One)
    OperationRegion (CMPT, SystemIO, 0x0C50, 0x03)
    Field (CMPT, ByteAcc, NoLock, Preserve)
    {
        CMID,   8, 
            ,   6, 
        GPCT,   2, 
        GP0I,   1, 
        GP1I,   1, 
        GP2I,   1, 
        GP3I,   1, 
        GP4I,   1, 
        GP5I,   1, 
        GP6I,   1, 
        GP7I,   1
    }

    OperationRegion (PCFG, SystemMemory, PCIE, 0x02000000)
    Field (PCFG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x20078), 
        Offset (0x2007A), 
        PMSA,   1, 
        Offset (0x28078), 
        Offset (0x2807A), 
        PMSB,   1, 
        Offset (0x48078), 
        Offset (0x4807A), 
        PMSC,   1, 
        Offset (0x8800A), 
        STCL,   16, 
        Offset (0x880FC), 
        RMBA,   32, 
        Offset (0xA0004), 
        SMIE,   1, 
        SMME,   1, 
        Offset (0xA0008), 
        RVID,   8, 
        Offset (0xA0014), 
        SMB1,   32, 
        Offset (0xA0082), 
            ,   2, 
        G31O,   1, 
        Offset (0xA00E1), 
            ,   6, 
        ACIR,   1, 
        Offset (0xA4004), 
        PCMD,   2, 
        Offset (0xA807A), 
        PMS0,   1, 
        Offset (0xA8088), 
        TLS0,   4, 
        Offset (0xA907A), 
        PMS1,   1, 
        Offset (0xA9088), 
        TLS1,   4, 
        Offset (0xAA07A), 
        PMS2,   1, 
        Offset (0xAA088), 
        TLS2,   4, 
        Offset (0xAB07A), 
        PMS3,   1, 
        Offset (0xAB088), 
        TLS3,   4
    }

    OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        INPM,   8, 
        DAPM,   8
    }

    IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
    {
        Offset (0x24), 
        MMSO,   32, 
        Offset (0x50), 
        HPAD,   32, 
        Offset (0x60), 
        P1EB,   16
    }

    OperationRegion (ERMM, SystemMemory, MMSO, 0x1000)
    Field (ERMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x105), 
            ,   5, 
        G06E,   1, 
        G06O,   1, 
        G06I,   1, 
        G07B,   8, 
        Offset (0x10A), 
        G0BB,   8, 
        Offset (0x10D), 
        G0EB,   8, 
        Offset (0x113), 
            ,   5, 
        G14E,   1, 
        G14O,   1, 
        G14I,   1, 
            ,   5, 
        G15E,   1, 
        G15O,   1, 
        G15I,   1, 
        Offset (0x11B), 
            ,   7, 
        G1CI,   1, 
        Offset (0x11F), 
            ,   7, 
        G20I,   1, 
        Offset (0x122), 
            ,   5, 
        G23E,   1, 
        G23O,   1, 
        G23I,   1, 
        Offset (0x12B), 
            ,   5, 
        G2CE,   1, 
        G2CO,   1, 
        G2CI,   1, 
            ,   5, 
        G2DE,   1, 
        G2DO,   1, 
        G2DI,   1, 
        Offset (0x132), 
            ,   5, 
        G33E,   1, 
        G33O,   1, 
        G33I,   1, 
        Offset (0x134), 
            ,   5, 
        G35E,   1, 
        G35O,   1, 
        Offset (0x136), 
            ,   5, 
        G37E,   1, 
        G37O,   1, 
        G37I,   1, 
        Offset (0x13F), 
            ,   7, 
        G40I,   1, 
        Offset (0x164), 
            ,   7, 
        GE05,   1, 
            ,   7, 
        GE06,   1, 
        Offset (0x16C), 
            ,   7, 
        GE13,   1, 
            ,   7, 
        GE14,   1, 
            ,   7, 
        GE15,   1, 
            ,   7, 
        GE16,   1, 
        Offset (0x175), 
            ,   7, 
        GE22,   1, 
        Offset (0x1A9), 
            ,   5, 
        GAAE,   1, 
        GAAO,   1, 
        GAAI,   1, 
            ,   5, 
        GABE,   1, 
        GABO,   1, 
        Offset (0x1AE), 
        GAFB,   8, 
        GB0B,   8, 
        Offset (0x1B8), 
            ,   5, 
        GB8E,   1, 
        GB8O,   1, 
        GB8I,   1, 
        Offset (0x1FF), 
            ,   9, 
        GESA,   1, 
        Offset (0x207), 
            ,   5, 
        E05C,   1, 
        E06C,   1, 
        Offset (0x208), 
        E08C,   1, 
        E09C,   1, 
        E0AC,   1, 
        E0BC,   1, 
        E0CC,   1, 
        E0DC,   1, 
        E0EC,   1, 
        E0FC,   1, 
        E10C,   1, 
        Offset (0x20A), 
            ,   5, 
        E1DC,   1, 
        Offset (0x2AF), 
            ,   2, 
        SLPS,   2, 
        Offset (0x376), 
        EPNM,   1, 
        DPPF,   1, 
        Offset (0x3BA), 
            ,   6, 
        PWDE,   1, 
        Offset (0x3BD), 
            ,   5, 
        ALLS,   1, 
        Offset (0x3EF), 
        PHYD,   1, 
            ,   1, 
            ,   1, 
        US5R,   1, 
        Offset (0x3F5), 
        GECD,   1, 
        Offset (0xD05), 
        G06M,   8, 
        G07M,   8, 
        Offset (0xD0A), 
        G0BM,   8, 
        Offset (0xD0D), 
        G0EM,   8, 
        Offset (0xD13), 
        G14M,   8, 
        Offset (0xD1B), 
        G1CM,   8, 
        Offset (0xD1F), 
        G20M,   8, 
        Offset (0xD22), 
        G23M,   8, 
        Offset (0xD2C), 
        G2DM,   8, 
        Offset (0xD36), 
        G37M,   8, 
        Offset (0xD6F), 
        G70M,   8, 
        Offset (0xD75), 
        G76M,   8, 
        Offset (0xDA9), 
        GAAM,   8, 
        Offset (0xDAE), 
        GAFM,   8, 
        GB0M,   8, 
        Offset (0xE7F), 
            ,   2, 
        IMCS,   1
    }

    OperationRegion (ABIO, SystemIO, 0x0CD8, 0x08)
    Field (ABIO, DWordAcc, NoLock, Preserve)
    {
        INAB,   32, 
        DAAB,   32
    }

    Method (RDAB, 1, NotSerialized)
    {
        INAB = Arg0
        Return (DAAB) /* \DAAB */
    }

    Method (WTAB, 2, NotSerialized)
    {
        INAB = Arg0
        DAAB = Arg1
    }

    Method (RWAB, 3, NotSerialized)
    {
        Local0 = (RDAB (Arg0) & Arg1)
        Local1 = (Local0 | Arg2)
        WTAB (Arg0, Local1)
    }

    Method (CABR, 3, NotSerialized)
    {
        Local0 = (Arg0 << 0x05)
        Local1 = (Local0 + Arg1)
        Local2 = (Local1 << 0x18)
        Local3 = (Local2 + Arg2)
        Return (Local3)
    }

    Method (GHPS, 2, NotSerialized)
    {
        If ((Arg0 == Zero))
        {
            RWAB (CABR (0x06, Zero, 0xC0), 0xFFFFBFFF, Zero)
            RWAB (CABR (One, Zero, 0x65), 0xFFFFFBFB, Zero)
            Stall (0xC8)
        }

        If ((Arg0 == One))
        {
            RWAB (CABR (0x06, Zero, 0xC0), 0xFFFFBFFF, 0x4000)
            RWAB (CABR (One, Zero, 0x65), 0xFFFFFBFB, 0x0404)
            Stall (0xC8)
        }

        If (GGN2)
        {
            If ((Arg0 == Zero))
            {
                GEN2 ()
                Local0 = RDAB (CABR (0x03, 0x02, 0xA5))
                Local0 &= 0xFF
                Local1 = 0x01F4
                While (((Local1 > Zero) && (Local0 != 0x10)))
                {
                    Local0 = RDAB (CABR (0x03, 0x02, 0xA5))
                    Local0 &= 0xFF
                    Local1--
                    Stall (0xC8)
                    Stall (0xC8)
                }

                If ((Local0 != 0x10))
                {
                    GEN1 ()
                }
            }
        }
    }

    Method (GEN2, 0, NotSerialized)
    {
        TLS2 = 0x02
        RWAB (CABR (0x03, 0x02, 0xA4), 0xFFFFFFFE, One)
        RWAB (CABR (0x03, 0x02, 0xA2), 0xFFFFDFFF, 0x2000)
        RWAB (CABR (0x03, 0x02, 0xC0), 0xFFFF7FFF, 0x8000)
        RWAB (CABR (0x03, 0x02, 0xA4), 0xDFFFFFFF, 0x20000000)
        Stall (0xC8)
        Stall (0xC8)
    }

    Method (GEN1, 0, NotSerialized)
    {
        TLS2 = One
        RWAB (CABR (0x03, 0x02, 0xA4), 0xFFFFFFFE, Zero)
        RWAB (CABR (0x03, 0x02, 0xA2), 0xFFFFDFFF, 0x2000)
        Stall (0xC8)
        Stall (0xC8)
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
            ,   14, 
        PEWS,   1, 
        WSTA,   1, 
            ,   14, 
        PEWD,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        PCMD = One
        P80 = Arg0
        If (IMCS)
        {
            IBSE ()
        }

        CPMS ()
        CPMS ()
        PEWS = One
    }

    Method (SWAK, 1, NotSerialized)
    {
        If (PICM)
        {
            \_SB.IRQC ()
        }

        CPMS ()
        CPMS ()
        PEWS = One
        If (IMCS)
        {
            IBWE ()
        }
    }

    Method (TRMD, 1, NotSerialized)
    {
    }

    Method (CPMS, 0, NotSerialized)
    {
        If ((EPNM == Zero))
        {
            PMSA = One
            PMSB = One
            PMSC = One
            PMS0 = One
            PMS1 = One
            PMS2 = One
            PMS3 = One
        }
    }

    Scope (_GPE)
    {
    }

    OperationRegion (IMIO, SystemIO, 0x3E, 0x02)
    Field (IMIO, ByteAcc, NoLock, Preserve)
    {
        IMCX,   8, 
        IMCA,   8
    }

    IndexField (IMCX, IMCA, ByteAcc, NoLock, Preserve)
    {
        Offset (0x80), 
        MSTI,   8, 
        MITS,   8, 
        MRG0,   8, 
        MRG1,   8, 
        MRG2,   8, 
        MRG3,   8
    }

    Method (WACK, 0, NotSerialized)
    {
        Local0 = Zero
        While ((Local0 != 0xFA))
        {
            Local0 = MRG0 /* \MRG0 */
            Sleep (0x0A)
        }
    }

    Method (IBSE, 0, NotSerialized)
    {
        MRG0 = Zero
        MRG1 = 0xB5
        MRG2 = Zero
        MSTI = 0x96
        WACK ()
        MRG0 = Zero
        MRG1 = Zero
        MRG2 = Zero
        MSTI = 0x80
        WACK ()
        Local0 = MRG2 /* \MRG2 */
        Local0 &= 0xFE
        MRG0 = Zero
        MRG1 = Zero
        MRG2 = Local0
        MSTI = 0x81
        WACK ()
        MRG0 = Zero
        MRG1 = One
        MRG2 = Zero
        MSTI = 0x98
        WACK ()
        MRG0 = Zero
        MRG1 = 0xB4
        MRG2 = Zero
        MSTI = 0x96
        WACK ()
    }

    Method (IBWE, 0, NotSerialized)
    {
        MRG0 = Zero
        MRG1 = 0xB5
        MRG2 = Zero
        MSTI = 0x96
        WACK ()
        MRG0 = Zero
        MRG1 = Zero
        MRG2 = Zero
        MSTI = 0x80
        WACK ()
        Local0 = MRG2 /* \MRG2 */
        Local0 |= One
        MRG0 = Zero
        MRG1 = Zero
        MRG2 = Local0
        MSTI = 0x81
        WACK ()
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x1B)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKB, 
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
                0x0002FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKF, 
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
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKC, 
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
                0x0010FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x1B)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x19
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
                0x0002FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x15
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
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x12
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
                0x0010FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR30, Package (0x04)
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
        Name (AR30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1B
            }
        })
        Name (PR31, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR31, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1F
            }
        })
        Name (PR32, Package (0x04)
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
        Name (AR32, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x23
            }
        })
        Name (PR33, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR33, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PR34, Package (0x04)
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
        Name (AR34, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2B
            }
        })
        Name (PR35, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR35, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PR20, Package (0x04)
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
        Name (AR20, Package (0x04)
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
        Name (PR21, Package (0x04)
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
        Name (AR21, Package (0x04)
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
        Name (PR23, Package (0x04)
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
        Name (AR23, Package (0x04)
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
        Name (PR22, Package (0x01)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }
        })
        Name (AR22, Package (0x01)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,5,7,10,11,14,15}
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
            Name (_HID, EisaId ("PNP0A03") /* PCI Bus */)  // _HID: Hardware ID
            Name (_ADR, 0x00180000)  // _ADR: Address
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

            Name (CPRB, One)
            Name (LVGA, 0x01)
            Name (STAV, 0x0F)
            Name (BRB, 0x0000)
            Name (BRL, 0x0100)
            Name (IOB, 0x1000)
            Name (IOL, 0xF000)
            Name (MBB, 0xB0000000)
            Name (MBL, 0x50000000)
            Name (MABL, 0x00000000)
            Name (MABH, 0x00000000)
            Name (MALL, 0x00000000)
            Name (MALH, 0x00000000)
            Name (MAML, 0x00000000)
            Name (MAMH, 0x00000000)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y00)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y02, TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y01, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDFC0000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y06)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y08, TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y07, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV) /* \_SB_.PCI0.STAV */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y00._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y00._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y00._LEN, LEN0)  // _LEN: Length
                    MIN0 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN0 = BRL /* \_SB_.PCI0.BRL_ */
                    Local0 = LEN0 /* \_SB_.PCI0._CRS.LEN0 */
                    MAX0 = (MIN0 + Local0--)
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._LEN, LEN1)  // _LEN: Length
                    If ((IOB == 0x1000))
                    {
                        Local0 = IOL /* \_SB_.PCI0.IOL_ */
                        MAX1 = (IOB + Local0--)
                        Local0 = (MAX1 - MIN1) /* \_SB_.PCI0._CRS.MIN1 */
                        LEN1 = (Local0 + One)
                    }
                    Else
                    {
                        MIN1 = IOB /* \_SB_.PCI0.IOB_ */
                        LEN1 = IOL /* \_SB_.PCI0.IOL_ */
                        Local0 = LEN1 /* \_SB_.PCI0._CRS.LEN1 */
                        MAX1 = (MIN1 + Local0--)
                    }

                    If (((LVGA == One) || (LVGA == 0x55)))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, ILN1)  // _LEN: Length
                            IMN1 = 0x03B0
                            IMX1 = 0x03DF
                            ILN1 = 0x30
                            CreateDWordField (CRS1, \_SB.PCI0._Y03._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y03._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y03._LEN, VLN1)  // _LEN: Length
                            VMN1 = 0x000A0000
                            VMX1 = 0x000BFFFF
                            VLN1 = 0x00020000
                            VGAF = Zero
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y04._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y04._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y04._LEN, LEN3)  // _LEN: Length
                    MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                    LEN3 = MBL /* \_SB_.PCI0.MBL_ */
                    Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                    MAX3 = (MIN3 + Local0--)
                    If ((MALH || MALL))
                    {
                        CreateDWordField (CRS1, \_SB.PCI0._Y05._MIN, MN8L)  // _MIN: Minimum Base Address
                        Local0 = (0xB4 + 0x04)
                        CreateDWordField (CRS1, Local0, MN8H)
                        MN8L = MABL /* \_SB_.PCI0.MABL */
                        MN8H = MABH /* \_SB_.PCI0.MABH */
                        CreateDWordField (CRS1, \_SB.PCI0._Y05._MAX, MX8L)  // _MAX: Maximum Base Address
                        Local1 = (0xBC + 0x04)
                        CreateDWordField (CRS1, Local1, MX8H)
                        CreateDWordField (CRS1, \_SB.PCI0._Y05._LEN, LN8L)  // _LEN: Length
                        Local2 = (0xCC + 0x04)
                        CreateDWordField (CRS1, Local2, LN8H)
                        MN8L = MABL /* \_SB_.PCI0.MABL */
                        MN8H = MABH /* \_SB_.PCI0.MABH */
                        LN8L = MALL /* \_SB_.PCI0.MALL */
                        LN8H = MALH /* \_SB_.PCI0.MALH */
                        MX8L = MAML /* \_SB_.PCI0.MAML */
                        MX8H = MAMH /* \_SB_.PCI0.MAMH */
                    }

                    Return (CRS1) /* \_SB_.PCI0.CRS1 */
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y06._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y06._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y06._LEN, LEN2)  // _LEN: Length
                    MIN2 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN2 = BRL /* \_SB_.PCI0.BRL_ */
                    Local1 = LEN2 /* \_SB_.PCI0._CRS.LEN2 */
                    MAX2 = (MIN2 + Local1--)
                    CreateWordField (CRS2, \_SB.PCI0._Y07._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y07._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y07._LEN, LEN4)  // _LEN: Length
                    MIN4 = IOB /* \_SB_.PCI0.IOB_ */
                    LEN4 = IOL /* \_SB_.PCI0.IOL_ */
                    Local1 = LEN4 /* \_SB_.PCI0._CRS.LEN4 */
                    MAX4 = (MIN4 + Local1--)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y08._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y08._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y08._LEN, ILN2)  // _LEN: Length
                        IMN2 = 0x03B0
                        IMX2 = 0x03DF
                        ILN2 = 0x30
                        CreateDWordField (CRS2, \_SB.PCI0._Y09._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y09._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y09._LEN, VLN2)  // _LEN: Length
                        VMN2 = 0x000A0000
                        VMX2 = 0x000BFFFF
                        VLN2 = 0x00020000
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0A._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0A._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0A._LEN, LEN5)  // _LEN: Length
                    MIN5 = MBB /* \_SB_.PCI0.MBB_ */
                    LEN5 = MBL /* \_SB_.PCI0.MBL_ */
                    Local1 = LEN5 /* \_SB_.PCI0._CRS.LEN5 */
                    MAX5 = (MIN5 + Local1--)
                    If ((MALH || MALL))
                    {
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MIN, MN9L)  // _MIN: Minimum Base Address
                        Local0 = (0x72 + 0x04)
                        CreateDWordField (CRS2, Local0, MN9H)
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MAX, MX9L)  // _MAX: Maximum Base Address
                        Local1 = (0x7A + 0x04)
                        CreateDWordField (CRS2, Local1, MX9H)
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._LEN, LN9L)  // _LEN: Length
                        Local2 = (0x8A + 0x04)
                        CreateDWordField (CRS2, Local2, LN9H)
                        MN9L = MABL /* \_SB_.PCI0.MABL */
                        MN9H = MABH /* \_SB_.PCI0.MABH */
                        LN9L = MALL /* \_SB_.PCI0.MALL */
                        LN9H = MALH /* \_SB_.PCI0.MALH */
                        MX9L = MAML /* \_SB_.PCI0.MAML */
                        MX9H = MAMH /* \_SB_.PCI0.MAMH */
                    }

                    Return (CRS2) /* \_SB_.PCI0.CRS2 */
                }
            }

            Scope (\_SB)
            {
                Scope (PCI0)
                {
                    Device (AMDN)
                    {
                        Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                        Name (_UID, 0xC8)  // _UID: Unique ID
                        Name (_STA, 0x0F)  // _STA: Status
                        Name (NPTR, ResourceTemplate ()
                        {
                            Memory32Fixed (ReadWrite,
                                0x00000000,         // Address Base
                                0x00000000,         // Address Length
                                _Y0C)
                        })
                        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                        {
                            CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y0C._LEN, PL)  // _LEN: Length
                            CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y0C._BAS, PB)  // _BAS: Base Address
                            PB = PEBS /* \PEBS */
                            PL = PEBL /* \PEBL */
                            Return (NPTR) /* \_SB_.PCI0.AMDN.NPTR */
                        }
                    }
                }
            }

            Method (NPTS, 1, NotSerialized)
            {
                APTS (Arg0)
            }

            Method (NWAK, 1, NotSerialized)
            {
                AWAK (Arg0)
            }

            Device (GNBD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (NAPC, PCI_Config, 0xF8, 0x08)
                Field (NAPC, DWordAcc, NoLock, Preserve)
                {
                    NAPX,   32, 
                    NAPD,   32
                }

                Mutex (NAPM, 0x00)
                Method (NAPE, 0, NotSerialized)
                {
                    Acquire (NAPM, 0xFFFF)
                    NAPX = Zero
                    Local0 = NAPD /* \_SB_.PCI0.GNBD.NAPD */
                    Local0 &= 0xFFFFFFEF
                    NAPD = Local0
                    Release (NAPM)
                }

                Method (GINI, 0, NotSerialized)
                {
                    NAPE ()
                }

                OperationRegion (NBRV, PCI_Config, 0x08, One)
                Field (NBRV, ByteAcc, NoLock, Preserve)
                {
                    PREV,   8
                }

                OperationRegion (NBBR, PCI_Config, 0x1C, 0x08)
                Field (NBBR, DWordAcc, NoLock, Preserve)
                {
                    BR3L,   32, 
                    BR3H,   32
                }

                OperationRegion (NBBI, PCI_Config, 0x84, 0x04)
                Field (NBBI, DWordAcc, NoLock, Preserve)
                {
                    PARB,   32
                }

                OperationRegion (NBMS, PCI_Config, 0x60, 0x08)
                Field (NBMS, DWordAcc, NoLock, Preserve)
                {
                    MIDX,   32, 
                    MIDR,   32
                }

                Mutex (NBMM, 0x00)
                Method (NBMR, 1, NotSerialized)
                {
                    Acquire (NBMM, 0xFFFF)
                    Local0 = (Arg0 & 0x7F)
                    MIDX = Local0
                    Local0 = MIDR /* \_SB_.PCI0.GNBD.MIDR */
                    MIDX = 0x7F
                    Release (NBMM)
                    Return (Local0)
                }

                Method (NBMW, 2, NotSerialized)
                {
                    Acquire (NBMM, 0xFFFF)
                    Local0 = (Arg0 & 0x7F)
                    Local0 |= 0x80
                    MIDX = Local0
                    MIDR = Arg1
                    MIDX = Local0 &= 0x7F
                    Release (NBMM)
                }

                OperationRegion (NBXP, PCI_Config, 0xE0, 0x08)
                Field (NBXP, DWordAcc, NoLock, Preserve)
                {
                    NBXI,   32, 
                    NBXD,   32
                }

                Mutex (NBXM, 0x00)
                Method (NBXR, 1, NotSerialized)
                {
                    Acquire (NBXM, 0xFFFF)
                    NBXI = Arg0
                    Local0 = NBXD /* \_SB_.PCI0.GNBD.NBXD */
                    NBXI = Zero
                    Release (NBXM)
                    Return (Local0)
                }

                Method (NBXW, 2, NotSerialized)
                {
                    Acquire (NBXM, 0xFFFF)
                    NBXI = Arg0
                    NBXD = Arg1
                    NBXI = Zero
                    Release (NBXM)
                }

                Method (GFXM, 0, NotSerialized)
                {
                    Local0 = NBMR (0x08)
                    Local0 &= 0x0F
                    Return (Local0)
                }

                Method (GPPM, 0, NotSerialized)
                {
                    Local0 = NBMR (0x67)
                    Local0 &= 0xF0
                    Return (Local0)
                }

                Method (GPPX, 0, NotSerialized)
                {
                    Local0 = NBMR (0x2D)
                    Local0 >>= 0x07
                    Local0 &= 0x0F
                    Return (Local0)
                }

                Method (XPTR, 2, NotSerialized)
                {
                    If (((Arg0 < 0x02) && (Arg0 > 0x07)))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Local0 = GPPM ()
                        Local1 = GPPX ()
                        Local0 = One
                        If ((Arg0 < 0x04))
                        {
                            Local1 = (Arg0 + 0x02)
                        }
                        Else
                        {
                            Local1 = (Arg0 + 0x11)
                        }

                        Local0 <<= Local1
                        Local2 = NBMR (0x08)
                        If (Arg1)
                        {
                            Local2 &= ~Local0
                        }
                        Else
                        {
                            Local2 |= Local0
                        }

                        NBMW (0x08, Local2)
                        Return (Ones)
                    }
                }

                Name (PX3L, 0x80000000)
                Name (PX3H, 0x80000000)
                Name (PX3S, 0x10000000)
                Name (PX3K, 0xF0000000)
                Mutex (BR3X, 0x00)
                Method (BR3M, 0, NotSerialized)
                {
                    Local0 = PARB /* \_SB_.PCI0.GNBD.PARB */
                    Local0 >>= 0x10
                    Local0 &= 0x07
                    If (Local0)
                    {
                        Local1 = (One << Local0)
                        Local1 = (0x1000 - Local1)
                        Local1 <<= 0x14
                        PX3K = Local1
                        Local0 = (0x00100000 >> Local0)
                        PX3S = Local0
                    }

                    Acquire (BR3X, 0xFFFF)
                    Local0 = NBMR (Zero)
                    Local0 &= 0xFFFFFFF7
                    NBMW (Zero, Local0)
                    Local0 = BR3L /* \_SB_.PCI0.GNBD.BR3L */
                    Local0 &= PX3K /* \_SB_.PCI0.GNBD.PX3K */
                    PX3L = Local0
                    Local0 = BR3H /* \_SB_.PCI0.GNBD.BR3H */
                    Local0 &= 0xFF
                    PX3H = Local0
                    Local0 = NBMR (Zero)
                    Local0 |= 0x08
                    NBMW (Zero, Local0)
                    Release (BR3X)
                    Return (PX3L) /* \_SB_.PCI0.GNBD.PX3L */
                }

                OperationRegion (NB2, PCI_Config, Zero, 0x0100)
                Field (NB2, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    MI,     32, 
                    MD,     32, 
                    Offset (0x90), 
                    TOM,    32, 
                    OI,     32, 
                    OD,     32, 
                    Offset (0xE0), 
                    LI,     32, 
                    LD,     32
                }

                Device (BROD)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x14)  // _UID: Unique ID
                    Name (UMAS, 0x40000000)
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0D)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.GNBD.BROD._Y0D._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.GNBD.BROD._Y0D._LEN, LEN1)  // _LEN: Length
                        LEN1 = UMAS /* \_SB_.PCI0.GNBD.BROD.UMAS */
                        BAS1 = (TOM - LEN1) /* \_SB_.PCI0.GNBD.BROD._CRS.LEN1 */
                        Return (CRS) /* \_SB_.PCI0.GNBD.BROD.CRS_ */
                    }
                }
            }

            Device (IOMA)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                OperationRegion (NBF2, PCI_Config, Zero, 0x0100)
                Field (NBF2, AnyAcc, NoLock, Preserve)
                {
                    DID,    32, 
                    Offset (0x44), 
                    MBAS,   32
                }

                Device (^UMEM)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x15)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0E)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.UMEM._Y0E._BAS, BAS3)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.UMEM._Y0E._LEN, LEN3)  // _LEN: Length
                        If ((^^IOMA.DID != 0xFFFFFFFF))
                        {
                            LEN3 = 0x00080000
                            BAS3 = (^^IOMA.MBAS & 0xFFFFC000)
                        }

                        Return (CRS) /* \_SB_.PCI0.UMEM.CRS_ */
                    }
                }
            }

            Device (VGA)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (AF7E, 0x80000001)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Name (BCLB, Package (0x35)
                {
                    0x5A, 
                    0x3C, 
                    Zero, 
                    0x02, 
                    0x04, 
                    0x06, 
                    0x08, 
                    0x0A, 
                    0x0C, 
                    0x0E, 
                    0x10, 
                    0x12, 
                    0x14, 
                    0x16, 
                    0x18, 
                    0x1A, 
                    0x1C, 
                    0x1E, 
                    0x20, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x32, 
                    0x34, 
                    0x36, 
                    0x38, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x44, 
                    0x46, 
                    0x48, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x50, 
                    0x52, 
                    0x54, 
                    0x56, 
                    0x58, 
                    0x5A, 
                    0x5C, 
                    0x5E, 
                    0x60, 
                    0x62, 
                    0x64
                })
                Name (DOSA, Zero)
                Scope (\)
                {
                    Mutex (PXPX, 0x00)
                }

                Name (PCTG, Package (0x0D)
                {
                    0x64, 
                    0x28, 
                    0x06, 
                    0x14, 
                    0x1E, 
                    0x28, 
                    0x37, 
                    0x41, 
                    0x4B, 
                    0x50, 
                    0x55, 
                    0x5A, 
                    0x64
                })
                Name (PCW8, Package (0x67)
                {
                    0x64, 
                    0x28, 
                    0x06, 
                    0x06, 
                    0x06, 
                    0x06, 
                    0x06, 
                    0x06, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x5A, 
                    0x64
                })
                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Name (ADOD, Package (0x03)
                    {
                        0x00010110, 
                        0x00010100, 
                        0x0210
                    })
                    Name (NDOD, Package (0x03)
                    {
                        0x00010110, 
                        0x00010100, 
                        0x0121
                    })
                    If ((VGAF == 0x02))
                    {
                        Return (ADOD) /* \_SB_.PCI0.VGA_._DOD.ADOD */
                    }
                    Else
                    {
                        Return (NDOD) /* \_SB_.PCI0.VGA_._DOD.NDOD */
                    }
                }

                Method (GCBL, 1, NotSerialized)
                {
                    Local0 = Zero
                    Arg0 &= 0x7FFFFFFF
                    While ((Local0 < 0x0B))
                    {
                        Local1 = DerefOf (PCTG [(Local0 + 0x02)])
                        If ((Local1 >= Arg0))
                        {
                            Break
                        }

                        Local0++
                    }

                    If ((Local0 >= 0x0B))
                    {
                        Local2 = 0x0A
                    }
                    Else
                    {
                        Local2 = Local0
                    }

                    Return (Local2)
                }

                Device (LCDD)
                {
                    Name (_ADR, 0x0110)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (0x1F)
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        If ((OSFL () >= 0x0F))
                        {
                            Return (PCW8) /* \_SB_.PCI0.VGA_.PCW8 */
                        }
                        Else
                        {
                            Return (PCTG) /* \_SB_.PCI0.VGA_.PCTG */
                        }
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        Local0 = GCBL (Arg0)
                        LBTN = Local0
                        If ((OSFL () >= 0x0F))
                        {
                            Local1 = ((Local0 * 0xFF) / 0x64)
                            If ((AF7E == 0x80000001))
                            {
                                AFN7 (Local1)
                            }
                        }
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Local0 = LBTN /* \_SB_.LBTN */
                        If ((OSFL () >= 0x0F))
                        {
                            Return (DerefOf (PCW8 [(Local0 + 0x02)]))
                        }
                        Else
                        {
                            Return (DerefOf (PCTG [(Local0 + 0x02)]))
                        }
                    }
                }

                Method (UPBL, 1, Serialized)
                {
                    Notify (LCDD, Arg0)
                }

                Method (DWBL, 1, Serialized)
                {
                    Notify (LCDD, Arg0)
                }
            }

            Device (PB21)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                OperationRegion (NAPC, PCI_Config, 0xF8, 0x08)
                Field (NAPC, DWordAcc, NoLock, Preserve)
                {
                    NAPX,   32, 
                    NAPD,   32
                }

                Name (BCLB, Package (0x35)
                {
                    0x5A, 
                    0x3C, 
                    Zero, 
                    0x02, 
                    0x04, 
                    0x06, 
                    0x08, 
                    0x0A, 
                    0x0C, 
                    0x0E, 
                    0x10, 
                    0x12, 
                    0x14, 
                    0x16, 
                    0x18, 
                    0x1A, 
                    0x1C, 
                    0x1E, 
                    0x20, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x32, 
                    0x34, 
                    0x36, 
                    0x38, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x44, 
                    0x46, 
                    0x48, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x50, 
                    0x52, 
                    0x54, 
                    0x56, 
                    0x58, 
                    0x5A, 
                    0x5C, 
                    0x5E, 
                    0x60, 
                    0x62, 
                    0x64
                })
                Name (PR21, Package (0x04)
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
                Name (AR21, Package (0x04)
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
                Name (NR21, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x18
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x19
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1B
                    }
                })
                OperationRegion (XPEX, SystemMemory, 0xF8011100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, Zero, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, Zero, 0x50)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        Offset (0x2C), 
                        SVID,   32, 
                        Offset (0x4C), 
                        SMID,   32
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, Zero, 0x50)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        Offset (0x2C), 
                        SVID,   32, 
                        Offset (0x4C), 
                        SMID,   32
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR30) /* \_SB_.AR30 */
                    }

                    Return (PR30) /* \_SB_.PR30 */
                }
            }

            Device (PB22)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                OperationRegion (NAPC, PCI_Config, 0xF8, 0x08)
                Field (NAPC, DWordAcc, NoLock, Preserve)
                {
                    NAPX,   32, 
                    NAPD,   32
                }

                Name (BCLB, Package (0x35)
                {
                    0x5A, 
                    0x3C, 
                    Zero, 
                    0x02, 
                    0x04, 
                    0x06, 
                    0x08, 
                    0x0A, 
                    0x0C, 
                    0x0E, 
                    0x10, 
                    0x12, 
                    0x14, 
                    0x16, 
                    0x18, 
                    0x1A, 
                    0x1C, 
                    0x1E, 
                    0x20, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x32, 
                    0x34, 
                    0x36, 
                    0x38, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x44, 
                    0x46, 
                    0x48, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x50, 
                    0x52, 
                    0x54, 
                    0x56, 
                    0x58, 
                    0x5A, 
                    0x5C, 
                    0x5E, 
                    0x60, 
                    0x62, 
                    0x64
                })
                Name (PR21, Package (0x04)
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
                Name (AR21, Package (0x04)
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
                Name (NR21, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x18
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x19
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1B
                    }
                })
                OperationRegion (XPEX, SystemMemory, 0xF8011100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, Zero, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, Zero, 0x50)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        Offset (0x2C), 
                        SVID,   32, 
                        Offset (0x4C), 
                        SMID,   32
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, Zero, 0x50)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        Offset (0x2C), 
                        SVID,   32, 
                        Offset (0x4C), 
                        SMID,   32
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR31) /* \_SB_.AR31 */
                    }

                    Return (PR31) /* \_SB_.PR31 */
                }
            }

            Device (PB31)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR32) /* \_SB_.AR32 */
                    }

                    Return (PR32) /* \_SB_.PR32 */
                }

                Device (LOM)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                }
            }

            Device (PB32)
            {
                Name (_ADR, 0x00030002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR33) /* \_SB_.AR33 */
                    }

                    Return (PR33) /* \_SB_.PR33 */
                }
            }

            Device (PB33)
            {
                Name (_ADR, 0x00030003)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR34) /* \_SB_.AR34 */
                    }

                    Return (PR34) /* \_SB_.PR34 */
                }
            }

            Device (PB34)
            {
                Name (_ADR, 0x00030004)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR35) /* \_SB_.AR35 */
                    }

                    Return (PR35) /* \_SB_.PR35 */
                }
            }

            Device (IDEC)
            {
                Name (_ADR, 0x00140001)  // _ADR: Address
                Name (UDMT, Package (0x08)
                {
                    0x78, 
                    0x5A, 
                    0x3C, 
                    0x2D, 
                    0x1E, 
                    0x14, 
                    0x0F, 
                    Zero
                })
                Name (PIOT, Package (0x06)
                {
                    0x0258, 
                    0x0186, 
                    0x010E, 
                    0xB4, 
                    0x78, 
                    Zero
                })
                Name (PITR, Package (0x06)
                {
                    0x99, 
                    0x47, 
                    0x34, 
                    0x22, 
                    0x20, 
                    0x99
                })
                Name (MDMT, Package (0x04)
                {
                    0x01E0, 
                    0x96, 
                    0x78, 
                    Zero
                })
                Name (MDTR, Package (0x04)
                {
                    0x77, 
                    0x21, 
                    0x20, 
                    0xFF
                })
                OperationRegion (IDE, PCI_Config, 0x40, 0x20)
                Field (IDE, AnyAcc, NoLock, Preserve)
                {
                    PPIT,   16, 
                    SPIT,   16, 
                    PMDT,   16, 
                    SMDT,   16, 
                    PPIC,   8, 
                    SPIC,   8, 
                    PPIM,   8, 
                    SPIM,   8, 
                    Offset (0x14), 
                    PUDC,   2, 
                    SUDC,   2, 
                    Offset (0x16), 
                    PUDM,   8, 
                    SUDM,   8
                }

                Method (GETT, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0x0F)
                    Local1 = (Arg0 >> 0x04)
                    Return ((0x1E * ((Local0 + One) + (Local1 + One)
                        )))
                }

                Method (GTM, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, PIT1)
                    CreateByteField (Arg0, One, PIT0)
                    CreateByteField (Arg0, 0x02, MDT1)
                    CreateByteField (Arg0, 0x03, MDT0)
                    CreateByteField (Arg0, 0x04, PICX)
                    CreateByteField (Arg0, 0x05, UDCX)
                    CreateByteField (Arg0, 0x06, UDMX)
                    Name (BUF, Buffer (0x14)
                    {
                        /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  /* ........ */
                        /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  /* ........ */
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (BUF, Zero, PIO0)
                    CreateDWordField (BUF, 0x04, DMA0)
                    CreateDWordField (BUF, 0x08, PIO1)
                    CreateDWordField (BUF, 0x0C, DMA1)
                    CreateDWordField (BUF, 0x10, FLAG)
                    If ((PICX & One))
                    {
                        Return (BUF) /* \_SB_.PCI0.IDEC.GTM_.BUF_ */
                    }

                    PIO0 = GETT (PIT0)
                    PIO1 = GETT (PIT1)
                    If ((UDCX & One))
                    {
                        FLAG |= One
                        DMA0 = DerefOf (UDMT [(UDMX & 0x0F)])
                    }
                    Else
                    {
                        DMA0 = GETT (MDT0)
                    }

                    If ((UDCX & 0x02))
                    {
                        FLAG |= 0x04
                        DMA1 = DerefOf (UDMT [(UDMX >> 0x04)])
                    }
                    Else
                    {
                        DMA1 = GETT (MDT1)
                    }

                    FLAG |= 0x1A
                    Return (BUF) /* \_SB_.PCI0.IDEC.GTM_.BUF_ */
                }

                Method (STM, 3, NotSerialized)
                {
                    CreateDWordField (Arg0, Zero, PIO0)
                    CreateDWordField (Arg0, 0x04, DMA0)
                    CreateDWordField (Arg0, 0x08, PIO1)
                    CreateDWordField (Arg0, 0x0C, DMA1)
                    CreateDWordField (Arg0, 0x10, FLAG)
                    Name (BUF, Buffer (0x07)
                    {
                         0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00         /* ....... */
                    })
                    CreateByteField (BUF, Zero, PIT1)
                    CreateByteField (BUF, One, PIT0)
                    CreateByteField (BUF, 0x02, MDT1)
                    CreateByteField (BUF, 0x03, MDT0)
                    CreateByteField (BUF, 0x04, PIMX)
                    CreateByteField (BUF, 0x05, UDCX)
                    CreateByteField (BUF, 0x06, UDMX)
                    Local0 = Match (PIOT, MLE, PIO0, MTR, Zero, Zero)
                    Divide (Local0, 0x05, Local0)
                    Local1 = Match (PIOT, MLE, PIO1, MTR, Zero, Zero)
                    Divide (Local1, 0x05, Local1)
                    PIMX = ((Local1 << 0x04) | Local0)
                    PIT0 = DerefOf (PITR [Local0])
                    PIT1 = DerefOf (PITR [Local1])
                    If ((FLAG & One))
                    {
                        Local0 = Match (UDMT, MLE, DMA0, MTR, Zero, Zero)
                        Divide (Local0, 0x07, Local0)
                        UDMX |= Local0
                        UDCX |= One
                    }
                    ElseIf ((DMA0 != 0xFFFFFFFF))
                    {
                        Local0 = Match (MDMT, MLE, DMA0, MTR, Zero, Zero)
                        MDT0 = DerefOf (MDTR [Local0])
                    }

                    If ((FLAG & 0x04))
                    {
                        Local0 = Match (UDMT, MLE, DMA1, MTR, Zero, Zero)
                        Divide (Local0, 0x07, Local0)
                        UDMX |= (Local0 << 0x04)
                        UDCX |= 0x02
                    }
                    ElseIf ((DMA1 != 0xFFFFFFFF))
                    {
                        Local0 = Match (MDMT, MLE, DMA1, MTR, Zero, Zero)
                        MDT1 = DerefOf (MDTR [Local0])
                    }

                    Return (BUF) /* \_SB_.PCI0.IDEC.STM_.BUF_ */
                }

                Method (GTF, 2, NotSerialized)
                {
                    CreateByteField (Arg1, Zero, MDT1)
                    CreateByteField (Arg1, One, MDT0)
                    CreateByteField (Arg1, 0x02, PIMX)
                    CreateByteField (Arg1, 0x03, UDCX)
                    CreateByteField (Arg1, 0x04, UDMX)
                    If ((Arg0 == 0xA0))
                    {
                        Local0 = (PIMX & 0x0F)
                        Local1 = MDT0 /* \_SB_.PCI0.IDEC.GTF_.MDT0 */
                        Local2 = (UDCX & One)
                        Local3 = (UDMX & 0x0F)
                    }
                    Else
                    {
                        Local0 = (PIMX >> 0x04)
                        Local1 = MDT1 /* \_SB_.PCI0.IDEC.GTF_.MDT1 */
                        Local2 = (UDCX & 0x02)
                        Local3 = (UDMX >> 0x04)
                    }

                    Name (BUF, Buffer (0x15)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x03,  /* ........ */
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x00, 0x00,  /* ........ */
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0xF5                     /* ..... */
                    })
                    CreateByteField (BUF, One, PMOD)
                    CreateByteField (BUF, 0x08, DMOD)
                    CreateByteField (BUF, 0x05, CMDA)
                    CreateByteField (BUF, 0x0C, CMDB)
                    CreateByteField (BUF, 0x13, CMDC)
                    CMDA = Arg0
                    CMDB = Arg0
                    CMDC = Arg0
                    PMOD = (Local0 | 0x08)
                    If (Local2)
                    {
                        DMOD = (Local3 | 0x40)
                    }
                    Else
                    {
                        Local4 = Match (MDMT, MLE, GETT (Local1), MTR, Zero, Zero)
                        If ((Local4 < 0x03))
                        {
                            DMOD = (0x20 | Local4)
                        }
                    }

                    Return (BUF) /* \_SB_.PCI0.IDEC.GTF_.BUF_ */
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00         /* ....... */
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        VPIT = PPIT /* \_SB_.PCI0.IDEC.PPIT */
                        VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                        VPIC = PPIC /* \_SB_.PCI0.IDEC.PPIC */
                        VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                        VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         /* ....... */
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        BUF = STM (Arg0, Arg1, Arg2)
                        PPIT = VPIT /* \_SB_.PCI0.IDEC.PRID._STM.VPIT */
                        PMDT = VMDT /* \_SB_.PCI0.IDEC.PRID._STM.VMDT */
                        PPIM = VPIM /* \_SB_.PCI0.IDEC.PRID._STM.VPIM */
                        PUDC = VUDC /* \_SB_.PCI0.IDEC.PRID._STM.VUDC */
                        PUDM = VUDM /* \_SB_.PCI0.IDEC.PRID._STM.VUDM */
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                            VPIM = PPIM /* \_SB_.PCI0.IDEC.PPIM */
                            VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                            VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                            Return (GTF (0xA0, BUF))
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                            VPIM = PPIM /* \_SB_.PCI0.IDEC.PPIM */
                            VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                            VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                            Return (GTF (0xB0, BUF))
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00         /* ....... */
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        VPIT = SPIT /* \_SB_.PCI0.IDEC.SPIT */
                        VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                        VPIC = SPIC /* \_SB_.PCI0.IDEC.SPIC */
                        VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                        VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         /* ....... */
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        BUF = STM (Arg0, Arg1, Arg2)
                        SPIT = VPIT /* \_SB_.PCI0.IDEC.SECD._STM.VPIT */
                        SMDT = VMDT /* \_SB_.PCI0.IDEC.SECD._STM.VMDT */
                        SPIM = VPIM /* \_SB_.PCI0.IDEC.SECD._STM.VPIM */
                        SUDC = VUDC /* \_SB_.PCI0.IDEC.SECD._STM.VUDC */
                        SUDM = VUDM /* \_SB_.PCI0.IDEC.SECD._STM.VUDM */
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                            VPIM = SPIM /* \_SB_.PCI0.IDEC.SPIM */
                            VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                            VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                            Return (GTF (0xA0, BUF))
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                            VPIM = SPIM /* \_SB_.PCI0.IDEC.SPIM */
                            VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                            VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                            Return (GTF (0xB0, BUF))
                        }
                    }
                }
            }

            Device (SBAZ)
            {
                Name (_ADR, 0x00140002)  // _ADR: Address
                OperationRegion (PCI, PCI_Config, Zero, 0x0100)
                Field (PCI, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x42), 
                    DNSP,   1, 
                    DNSO,   1, 
                    ENSR,   1
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                OperationRegion (RMBS, PCI_Config, Zero, 0x0100)
                Field (RMBS, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x6C), 
                    LR2S,   16, 
                    LR2E,   16
                }

                Method (SPTS, 1, NotSerialized)
                {
                }

                Method (SWAK, 1, NotSerialized)
                {
                    If (PICM)
                    {
                        IRQC ()
                    }
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
                }

                OperationRegion (SMI0, SystemIO, SMIO, One)
                Field (SMI0, ByteAcc, NoLock, Preserve)
                {
                    SMIC,   8
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (S900)
                        {
                            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                            Name (_UID, 0x0700)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (CRS, ResourceTemplate ()
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
                                    0x0063,             // Range Minimum
                                    0x0063,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0065,             // Range Minimum
                                    0x0065,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0067,             // Range Minimum
                                    0x0067,             // Range Maximum
                                    0x00,               // Alignment
                                    0x09,               // Length
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
                                    0x00B1,             // Range Minimum
                                    0x00B1,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
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
                                IO (Decode16,
                                    0x040B,             // Range Minimum
                                    0x040B,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x04D6,             // Range Minimum
                                    0x04D6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C00,             // Range Minimum
                                    0x0C00,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C14,             // Range Minimum
                                    0x0C14,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C50,             // Range Minimum
                                    0x0C50,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C52,             // Range Minimum
                                    0x0C52,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6C,             // Range Minimum
                                    0x0C6C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6F,             // Range Minimum
                                    0x0C6F,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD0,             // Range Minimum
                                    0x0CD0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD2,             // Range Minimum
                                    0x0CD2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD4,             // Range Minimum
                                    0x0CD4,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD6,             // Range Minimum
                                    0x0CD6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD8,             // Range Minimum
                                    0x0CD8,             // Range Maximum
                                    0x00,               // Alignment
                                    0x08,               // Length
                                    )
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y0F)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y12)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y11)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y10)
                                IO (Decode16,
                                    0x0900,             // Range Minimum
                                    0x0900,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0910,             // Range Minimum
                                    0x0910,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0xFE00,             // Range Minimum
                                    0xFE00,             // Range Maximum
                                    0x00,               // Alignment
                                    0xFF,               // Length
                                    )
                                IO (Decode16,
                                    0x0060,             // Range Minimum
                                    0x0060,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                IO (Decode16,
                                    0x0064,             // Range Minimum
                                    0x0064,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y13)
                                Memory32Fixed (ReadWrite,
                                    0xFEE00000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFED80000,         // Address Base
                                    0x00010000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFED61000,         // Address Base
                                    0x00010000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y14)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y15)
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (CRS, \_SB.PCI0.S900._Y0F._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (CRS, \_SB.PCI0.S900._Y0F._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (CRS, \_SB.PCI0.S900._Y0F._LEN, PML)  // _LEN: Length
                                PBB = PMBS /* \PMBS */
                                PBH = PMBS /* \PMBS */
                                PML = PMLN /* \PMLN */
                                If (SMBB)
                                {
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y10._MIN, SMB1)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y10._MAX, SMH1)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y10._LEN, SML1)  // _LEN: Length
                                    SMB1 = SMBB /* \SMBB */
                                    SMH1 = SMBB /* \SMBB */
                                    SML1 = SMBL /* \SMBL */
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y11._MIN, SMB0)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y11._MAX, SMH0)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y11._LEN, SML0)  // _LEN: Length
                                    SMB0 = SMB0 /* \_SB_.PCI0.S900._CRS.SMB0 */
                                    SMH0 = SMB0 /* \_SB_.PCI0.S900._CRS.SMB0 */
                                    SML0 = SMBM /* \SMBM */
                                }

                                If (GPBS)
                                {
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MIN, IGB)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MAX, IGH)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y12._LEN, IGL)  // _LEN: Length
                                    IGB = GPBS /* \GPBS */
                                    IGH = GPBS /* \GPBS */
                                    IGL = GPLN /* \GPLN */
                                }

                                If (APCB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y13._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y13._LEN, APL)  // _LEN: Length
                                    APB = APCB /* \APCB */
                                    APL = APCL /* \APCL */
                                }

                                If (SPIB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y14._BAS, SPIB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y14._LEN, SPIL)  // _LEN: Length
                                    SPIB = \SPIB
                                    SPIL = \SPIL
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y15._BAS, ROMB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y15._LEN, ROML)  // _LEN: Length
                                If (^^SBRG.LR2S)
                                {
                                    ROMB = (^^SBRG.LR2S << 0x10)
                                    ROML = (((^^SBRG.LR2E - ^^SBRG.LR2S) + One) << 0x10)
                                }
                                Else
                                {
                                    ROMB = ROMS /* \ROMS */
                                    ROML = (Zero - ROMS) /* \ROMS */
                                }

                                Return (CRS) /* \_SB_.PCI0.S900.CRS_ */
                            }
                        }
                    }
                }

                Device (NBRM)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x99)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (CRS) /* \_SB_.PCI0.SBRG.NBRM.CRS_ */
                    }
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (((HPAD & 0x03) == 0x03))
                        {
                            Return (BUF0) /* \_SB_.PCI0.SBRG.RTC0.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.SBRG.RTC0.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (ECIR)
                {
                    Name (_HID, EisaId ("AMDC003"))  // _HID: Hardware ID
                    Name (IRWF, One)
                    OperationRegion (LPCS, PCI_Config, Zero, 0x0100)
                    Field (LPCS, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0xA4), 
                        IMCP,   16
                    }

                    OperationRegion (ECIO, SystemIO, (IMCP & 0xFFFE), 0x02)
                    Field (ECIO, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07), 
                        LDNM,   8, 
                        Offset (0x30), 
                        ACT,    1, 
                        Offset (0x60), 
                        IOBH,   8, 
                        IOBL,   8, 
                        Offset (0x70), 
                        INT,    4
                    }

                    Method (CFG, 1, NotSerialized)
                    {
                        INDX = 0x5A
                        INDX = 0x5A
                        LDNM = Arg0
                    }

                    Method (XCFG, 0, NotSerialized)
                    {
                        INDX = 0xA5
                    }

                    Mutex (ECMU, 0x00)
                    Method (STA, 1, NotSerialized)
                    {
                        Local0 = Zero
                        Acquire (ECMU, 0x5000)
                        CFG (Arg0)
                        If (ACT)
                        {
                            Local0 = 0x0F
                        }

                        If ((INDX == 0xFF))
                        {
                            Local0 = Zero
                        }

                        XCFG ()
                        Release (ECMU)
                        Return (Local0)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = Zero
                        If ((OSVR >= 0x0C))
                        {
                            Local0 = STA (0x05)
                        }

                        Return (Local0)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0550,             // Range Minimum
                            0x0550,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQ (Level, ActiveLow, Shared, )
                            {5}
                    })
                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x1C, 0x04))
                    }

                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        IRWF = Arg0
                    }

                    Method (IRCF, 2, NotSerialized)
                    {
                        Local0 = Zero
                        If ((Arg0 == One))
                        {
                            Local0 |= RVID
                            Local0 |= 0x00013200
                        }

                        If ((Arg0 == 0x02))
                        {
                            If ((G33I == Zero))
                            {
                                Local0 |= 0x02
                            }

                            If ((G40I == Zero))
                            {
                                Local0 |= One
                            }
                        }

                        If ((Arg0 == 0x03))
                        {
                            If ((Arg1 == Zero))
                            {
                                GB8O = One
                            }
                            Else
                            {
                                GB8O = Zero
                                Sleep (0x64)
                                GB8O = One
                            }
                        }

                        If ((Arg0 == 0x04))
                        {
                            If ((Arg1 == Zero))
                            {
                                ACIR = Zero
                            }
                            Else
                            {
                                ACIR = One
                            }
                        }

                        If (((Arg0 == Zero) || (Arg0 > 0x05)))
                        {
                            Local0 = 0xFFFFFFFF
                        }

                        Return (Local0)
                    }
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
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
                        If ((MBEC & 0xFFFF))
                        {
                            Return (CRS1) /* \_SB_.PCI0.SBRG.RMSC.CRS1 */
                        }
                        Else
                        {
                            Return (CRS2) /* \_SB_.PCI0.SBRG.RMSC.CRS2 */
                        }
                    }
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
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

                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (HIDK) /* \HIDK */
                    }

                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        Return (CIDK) /* \CIDK */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((IOST & 0x0400))
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
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        KBFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (KBFG, One)
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (FOCT)
                        {
                            Return (0x01019419)
                        }

                        Return (HIDM) /* \HIDM */
                    }

                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        Return (CIDM) /* \CIDM */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((IOST & 0x4000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
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
                        If ((IOST & 0x0400))
                        {
                            Return (CRS1) /* \_SB_.PCI0.SBRG.PS2M.CRS1 */
                        }
                        Else
                        {
                            Return (CRS2) /* \_SB_.PCI0.SBRG.PS2M.CRS2 */
                        }
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        MSFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (MSFG, One)
                }
            }

            Device (OHC1)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x00120002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (OHC2)
            {
                Name (_ADR, 0x00130000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x00130002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (OHC3)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (EHC3)
            {
                Name (_ADR, 0x00160002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (OHC4)
            {
                Name (_ADR, 0x00140005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (XHC0)
            {
                Name (_ADR, 0x00100000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (XHC1)
            {
                Name (_ADR, 0x00100001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x00110000)  // _ADR: Address
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                }

                OperationRegion (SACS, PCI_Config, Zero, 0x40)
                Field (SACS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x24), 
                    STB5,   32
                }

                Name (SPTM, Buffer (0x14)
                {
                    /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  /* x....... */
                    /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  /* x....... */
                    /* 0010 */  0x1F, 0x00, 0x00, 0x00                           /* .... */
                })
                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((STCL == 0x0101))
                        {
                            Local1 = 0x0F
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Name (PRIS, Zero)
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                        Field (BAR, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x120), 
                                ,   7, 
                            PMBY,   1, 
                            Offset (0x128), 
                            PMS0,   4, 
                            Offset (0x129), 
                            PMS1,   4, 
                            Offset (0x220), 
                                ,   7, 
                            PSBY,   1, 
                            Offset (0x228), 
                            PSS0,   4, 
                            Offset (0x229), 
                            PSS1,   4, 
                            Offset (0x2A0), 
                                ,   7
                        }

                        If (((OSVR == 0x06) || (OSVR == 0x04)))
                        {
                            If (PMS1)
                            {
                                Local0 = 0x32
                                While (((PMBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (PSS1)
                            {
                                Local0 = 0x32
                                While (((PSBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        PRIS = Zero
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        PRIS = 0x03
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        Return (PRIS) /* \_SB_.PCI0.SATA.PRID.PRIS */
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x128), 
                                PMS0,   4, 
                                Offset (0x129), 
                                PMS1,   4
                            }

                            If (~(PMS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x120), 
                                    ,   7, 
                                PMBY,   1
                            }

                            Local0 = 0x32
                            While (((PMBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.PRID.P_D0.S12P */
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x228), 
                                PSS0,   4, 
                                Offset (0x229), 
                                PSS1,   4
                            }

                            If (~(PSS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x220), 
                                    ,   7, 
                                PSBY,   1
                            }

                            Local0 = 0x32
                            While (((PSBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.PRID.P_D1.S12P */
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                    }

                    Name (SECS, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((STCL == 0x0101))
                        {
                            Local1 = 0x0F
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                        Field (BAR, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x1A0), 
                                ,   7, 
                            SMBY,   1, 
                            Offset (0x1A8), 
                            SMS0,   4, 
                            Offset (0x1A9), 
                            SMS1,   4, 
                            Offset (0x2A0), 
                                ,   7, 
                            SSBY,   1, 
                            Offset (0x2A8), 
                            SSS0,   4, 
                            Offset (0x2A9), 
                            SSS1,   4, 
                            Offset (0x2AC)
                        }

                        If (((OSVR == 0x06) || (OSVR == 0x04)))
                        {
                            If (SMS1)
                            {
                                Local0 = 0x32
                                While (((SMBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (SSS1)
                            {
                                Local0 = 0x32
                                While (((SSBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        SECS = Zero
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        SECS = 0x03
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        Return (SECS) /* \_SB_.PCI0.SATA.SECD.SECS */
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x1A8), 
                                SMS0,   4, 
                                Offset (0x1A9), 
                                SMS1,   4
                            }

                            If (~(SMS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x1000)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x1A0), 
                                    ,   7, 
                                SMBY,   1
                            }

                            Local0 = 0x32
                            While (((SMBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.SECD.S_D0.S12P */
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x2A8), 
                                SSS0,   4, 
                                Offset (0x2A9), 
                                SSS1,   4
                            }

                            If (~(SSS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x2A0), 
                                    ,   7, 
                                SSBY,   1
                            }

                            Local0 = 0x32
                            While (((SSBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.SECD.S_D1.S12P */
                        }
                    }
                }
            }

            Device (PE20)
            {
                Name (_ADR, 0x00150000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR20) /* \_SB_.AR20 */
                    }

                    Return (PR20) /* \_SB_.PR20 */
                }
            }

            Device (PE21)
            {
                Name (_ADR, 0x00150001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR21) /* \_SB_.AR21 */
                    }

                    Return (PR21) /* \_SB_.PR21 */
                }
            }

            Device (PE22)
            {
                Name (_ADR, 0x00150002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR22) /* \_SB_.AR22 */
                    }

                    Return (PR22) /* \_SB_.PR22 */
                }

                Device (GLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (LANR, PCI_Config, Zero, 0x0100)
                    Field (LANR, ByteAcc, NoLock, Preserve)
                    {
                        VID,    16, 
                        Offset (0xE0), 
                            ,   15, 
                        PMES,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }
                }
            }

            Device (PE23)
            {
                Name (_ADR, 0x00150003)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR23) /* \_SB_.AR23 */
                    }

                    Return (PR23) /* \_SB_.PR23 */
                }
            }

            Device (P0PC)
            {
                Name (_ADR, 0x00140004)  // _ADR: Address
            }
        }

        Scope (\_GPE)
        {
            Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.PB31.LOM, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.SBAZ, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.OHC1, 0x02) // Device Wake
                Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
                Notify (\_SB.PCI0.OHC2, 0x02) // Device Wake
                Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
                Notify (\_SB.PCI0.OHC3, 0x02) // Device Wake
                Notify (\_SB.PCI0.EHC3, 0x02) // Device Wake
                Notify (\_SB.PCI0.OHC4, 0x02) // Device Wake
                Notify (\_SB.PCI0.XHC0, 0x02) // Device Wake
                Notify (\_SB.PCI0.XHC1, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.PE22.GLAN, 0x02) // Device Wake
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x10), 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x15), 
            GEC,    8, 
            Offset (0x30), 
            USB1,   8, 
            USB2,   8, 
            USB3,   8, 
            USB4,   8, 
            USB5,   8, 
            USB6,   8, 
            USB7,   8, 
            Offset (0x40), 
            IDE,    8, 
            SATA,   8, 
            Offset (0x50), 
            GPP0,   8, 
            GPP1,   8, 
            GPP2,   8, 
            GPP3,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (IRQC, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            Local1 = PD64 /* \_SB_.PD64 */
            PIRE = 0x1F
            PIRF = 0x1F
            PIRG = 0x1F
            PIRH = 0x1F
        }

        Method (INTA, 1, NotSerialized)
        {
            PIRA = Arg0
            HDAD = Arg0
            GEC = Arg0
            GPP0 = Arg0
            GPP0 = Arg0
        }

        Method (INTB, 1, NotSerialized)
        {
            PIRB = Arg0
            USB2 = Arg0
            USB4 = Arg0
            USB6 = Arg0
            GPP1 = Arg0
            IDE = Arg0
        }

        Method (INTC, 1, NotSerialized)
        {
            PIRC = Arg0
            USB1 = Arg0
            USB3 = Arg0
            USB5 = Arg0
            USB7 = Arg0
            GPP2 = Arg0
        }

        Method (INTD, 1, NotSerialized)
        {
            PIRD = Arg0
            SATA = Arg0
            GPP3 = Arg0
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTA (Local0)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTB (Local0)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTC (Local0)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTD (Local0)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    OperationRegion (EXBU, SystemMemory, 0x6DF74018, 0x101A)
    Field (EXBU, AnyAcc, Lock, Preserve)
    {
        XID,    8, 
        FADR,   32, 
        FSIZ,   16, 
        FSTA,   16, 
        FSFN,   8, 
        BAML,   8, 
        BIPA,   32, 
        AMLA,   32, 
        RTCW,   16, 
        CCNM,   8, 
        EDID,   32, 
        AMBF,   4096
    }

    OperationRegion (ECMS, SystemIO, 0x72, 0x02)
    Field (ECMS, ByteAcc, Lock, Preserve)
    {
        EIND,   8, 
        EDAT,   8
    }

    IndexField (EIND, EDAT, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA0), 
        RAMB,   32
    }

    OperationRegion (RAMW, SystemMemory, RAMB, 0x1000)
    Field (RAMW, AnyAcc, NoLock, Preserve)
    {
        TRTY,   8, 
        PFSF,   8, 
        PFST,   16, 
        PFAD,   32, 
        PFSZ,   16, 
        ACPF,   8, 
        DCPF,   8, 
        DCP2,   8, 
        SLPT,   8, 
        MNAM,   64, 
        PTIM,   8, 
        PBAD,   32, 
        RTWT,   16, 
        GNBF,   32, 
        RDYB,   8, 
        WMIM,   32, 
        WMIS,   8, 
        IKFG,   8, 
        BATP,   8, 
        ALPR,   32, 
        DBR1,   32, 
        DBR2,   32, 
        DBR3,   32, 
        DBR4,   32, 
        LDST,   8, 
        AIST,   8, 
        AICD,   32, 
        TJMX,   16, 
        S4CT,   8, 
        D3AG,   8
    }

    Scope (\)
    {
        OperationRegion (GPSC, SystemIO, 0xB2, 0x02)
        Field (GPSC, ByteAcc, NoLock, Preserve)
        {
            SMCM,   8, 
            SMST,   8
        }

        Method (ISMI, 1, Serialized)
        {
            SMCM = Arg0
        }

        Method (ASMI, 1, Serialized)
        {
            ALPR = Arg0
            SMCM = 0xD6
            Return (ALPR) /* \ALPR */
        }

        Method (DBGR, 4, NotSerialized)
        {
            DBR1 = Arg0
            DBR2 = Arg1
            DBR3 = Arg2
            DBR4 = Arg3
            ASMI (0x80)
        }
    }

    Scope (_GPE)
    {
        Method (XL06, 0, NotSerialized)
        {
        }

        Method (XL09, 0, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.SBRG)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (CRS, ResourceTemplate ()
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
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS) /* \_SB_.PCI0.SBRG.EC0_.CRS_ */
            }

            Name (_GPE, 0x15)  // _GPE: General Purpose Events
            OperationRegion (TRDP, SystemIO, 0x025C, 0x02)
            Field (TRDP, ByteAcc, NoLock, Preserve)
            {
                AEIC,   8, 
                AEID,   8
            }

            Mutex (MUEC, 0x00)
            Name (ECFL, Ones)
            Method (ECAV, 0, NotSerialized)
            {
                If ((_REV >= 0x02))
                {
                    Return (One)
                }

                If ((SLPT >= 0x04))
                {
                    Return (Zero)
                }

                If ((ECFL == Ones))
                {
                    Return (Zero)
                }

                Return (ECFL) /* \_SB_.PCI0.SBRG.EC0_.ECFL */
            }

            OperationRegion (ECW1, SystemMemory, 0xFE000380, 0x80)
            Field (ECW1, ByteAcc, Lock, Preserve)
            {
                Offset (0x01), 
                EPWS,   8, 
                EB0S,   8, 
                EB1S,   8, 
                EB0R,   8, 
                EB1R,   8, 
                EB0T,   8, 
                EB1T,   8, 
                Offset (0x10), 
                B0PN,   16, 
                B0VL,   16, 
                B0RC,   16, 
                B0FC,   16, 
                B0ST,   16, 
                B0CC,   16, 
                B0TM,   16, 
                B0C1,   16, 
                B0CV,   16, 
                Offset (0x30), 
                B1PN,   16, 
                B1VL,   16, 
                B1RC,   16, 
                B1FC,   16, 
                B1ST,   16, 
                B1CC,   16, 
                B1TM,   16, 
                B1C1,   16, 
                B1CV,   16, 
                Offset (0x50), 
                B0DC,   16, 
                B0DV,   16, 
                B0SN,   16, 
                B0MD,   16, 
                B1DC,   16, 
                B1DV,   8, 
                B1SN,   8, 
                B1MD,   8, 
                Offset (0x60), 
                TH1R,   8, 
                TH1L,   8, 
                TH0R,   8, 
                TH0L,   8, 
                ECRT,   8, 
                EPSV,   8, 
                EACT,   8, 
                TERR,   8, 
                F0TS,   16, 
                F1TS,   16, 
                F0CS,   8, 
                F1CS,   8, 
                PCPT,   16
            }

            OperationRegion (ECW2, SystemMemory, 0xFE000700, 0x80)
            Field (ECW2, ByteAcc, Lock, Preserve)
            {
                ESEM,   8, 
                CMD1,   8, 
                CDT1,   8, 
                CDT2,   8, 
                CDT3,   8, 
                CDT4,   8, 
                CDT5,   8, 
                CDT6,   8, 
                CDT7,   8, 
                CDT8,   8, 
                CDT9,   8, 
                CD10,   8, 
                CD11,   8, 
                CD12,   8, 
                Offset (0x40), 
                EDA1,   8, 
                EDA2,   8, 
                EDA3,   8, 
                EDA4,   8, 
                EDA5,   8, 
                EDA6,   8, 
                EDA7,   8, 
                EDA8,   8, 
                EDA9,   8, 
                ED10,   8, 
                ED11,   8, 
                ED12,   8
            }

            OperationRegion (PHM0, SystemMemory, 0xFE000380, 0x80)
            Field (PHM0, ByteAcc, Lock, Preserve)
            {
                Offset (0x12), 
                BD25,   8, 
                BD26,   8, 
                BD27,   8, 
                BD28,   8, 
                BD29,   8, 
                BD2A,   8, 
                BD2D,   8, 
                BD2E,   8, 
                BD2F,   8, 
                BD30,   8, 
                BD31,   8, 
                BD32,   8, 
                Offset (0x22), 
                BD33,   8, 
                BD34,   8, 
                BD35,   8, 
                BD36,   8, 
                BD37,   8, 
                BD38,   8, 
                BD39,   8, 
                BD3A,   8, 
                Offset (0x50), 
                BD3B,   8, 
                BD3C,   8, 
                BD3D,   8, 
                BD3E,   8, 
                Offset (0x60), 
                BD20,   8, 
                Offset (0x62), 
                BD22,   8, 
                Offset (0x68), 
                BD23,   8, 
                BD24,   8, 
                Offset (0x6E), 
                BD21,   8
            }

            OperationRegion (PHM1, SystemMemory, 0xFE000700, 0xFF)
            Field (PHM1, ByteAcc, Lock, Preserve)
            {
                Offset (0xB7), 
                BD1E,   8, 
                BD1F,   8, 
                Offset (0xBA), 
                BD1C,   8, 
                BD1D,   8, 
                Offset (0xBE), 
                BD1A,   8, 
                BD1B,   8, 
                Offset (0xC5), 
                PECR,   8, 
                Offset (0xC8), 
                CR01,   8, 
                CR02,   8, 
                CR03,   8, 
                CR04,   8, 
                CR05,   8
            }

            OperationRegion (ECWB, SystemMemory, 0xFE000700, 0x80)
            Field (ECWB, ByteAcc, Lock, Preserve)
            {
                ESEB,   8, 
                CMDB,   8, 
                CDTB,   496, 
                EDAB,   512
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
            }

            Name (BADR, 0x0B)
            Name (CADR, 0x09)
            Name (SADR, 0x0A)
            Name (ISHE, Zero)
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                ECFL = One
                Local1 = RRAM (0x04A0)
                Local1 |= 0x08
                WRAM (0x04A0, Local1)
            }

            Method (ALMH, 1, NotSerialized)
            {
                If ((Arg0 == BADR))
                {
                    NBAT (0x80)
                }
            }

            Method (BIFW, 1, NotSerialized)
            {
                Local0 = SMBR (RDWD, BADR, Arg0)
                Local1 = DerefOf (Local0 [Zero])
                If (Local1)
                {
                    Return (Ones)
                }
                Else
                {
                    Return (DerefOf (Local0 [0x02]))
                }
            }

            Name (BSLF, Zero)
            Method (BATS, 1, Serialized)
            {
                If (Arg0)
                {
                    BSLF = One
                }
                Else
                {
                    BSLF = Zero
                }
            }

            Method (BIF0, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1MD /* \_SB_.PCI0.SBRG.EC0_.B1MD */
                }
                Else
                {
                    Local0 = B0MD /* \_SB_.PCI0.SBRG.EC0_.B0MD */
                }

                If ((Local0 != 0xFFFF))
                {
                    Local1 = (Local0 >> 0x0F)
                    Local1 &= One
                    Local0 = (Local1 ^ One)
                }

                Return (Local0)
            }

            Method (BIF1, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1DC /* \_SB_.PCI0.SBRG.EC0_.B1DC */
                }
                Else
                {
                    Local0 = B0DC /* \_SB_.PCI0.SBRG.EC0_.B0DC */
                }

                Local0 &= 0xFFFF
                Return (Local0)
            }

            Method (BIF2, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1FC /* \_SB_.PCI0.SBRG.EC0_.B1FC */
                }
                Else
                {
                    Local0 = B0FC /* \_SB_.PCI0.SBRG.EC0_.B0FC */
                }

                Local0 &= 0xFFFF
                Return (Local0)
            }

            Method (BIF3, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1MD /* \_SB_.PCI0.SBRG.EC0_.B1MD */
                }
                Else
                {
                    Local0 = B0MD /* \_SB_.PCI0.SBRG.EC0_.B0MD */
                }

                If ((Local0 != 0xFFFF))
                {
                    Local0 >>= 0x09
                    Local0 &= One
                    Local0 ^= One
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (BIF4, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1DV /* \_SB_.PCI0.SBRG.EC0_.B1DV */
                }
                Else
                {
                    Local0 = B0DV /* \_SB_.PCI0.SBRG.EC0_.B0DV */
                }

                Return (Local0)
            }

            Method (BIF9, 0, NotSerialized)
            {
                Name (BSTR, Buffer (0x20) {})
                Local0 = SMBR (RDBL, BADR, 0x21)
                If ((DerefOf (Local0 [Zero]) != Zero))
                {
                    BSTR = MNAM /* \MNAM */
                    BSTR [0x04] = Zero
                }
                Else
                {
                    BSTR = DerefOf (Local0 [0x02])
                    BSTR [DerefOf (Local0 [One])] = Zero
                }

                Return (BSTR) /* \_SB_.PCI0.SBRG.EC0_.BIF9.BSTR */
            }

            Method (BIFA, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1SN /* \_SB_.PCI0.SBRG.EC0_.B1SN */
                }
                Else
                {
                    Local0 = B0SN /* \_SB_.PCI0.SBRG.EC0_.B0SN */
                }

                Return (Local0)
            }

            Method (BSTS, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1ST /* \_SB_.PCI0.SBRG.EC0_.B1ST */
                }
                Else
                {
                    Local0 = B0ST /* \_SB_.PCI0.SBRG.EC0_.B0ST */
                }

                Return (Local0)
            }

            Method (BCRT, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1CC /* \_SB_.PCI0.SBRG.EC0_.B1CC */
                }
                Else
                {
                    Local0 = B0CC /* \_SB_.PCI0.SBRG.EC0_.B0CC */
                }

                Return (Local0)
            }

            Method (BRCP, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1RC /* \_SB_.PCI0.SBRG.EC0_.B1RC */
                }
                Else
                {
                    Local0 = B0RC /* \_SB_.PCI0.SBRG.EC0_.B0RC */
                }

                Return (Local0)
            }

            Method (BVOT, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1VL /* \_SB_.PCI0.SBRG.EC0_.B1VL */
                }
                Else
                {
                    Local0 = B0VL /* \_SB_.PCI0.SBRG.EC0_.B0VL */
                }

                Return (Local0)
            }

            Method (BATP, 1, Serialized)
            {
                Local0 = (EPWS & 0x02)
                If (Local0)
                {
                    DCPF = One
                }
                Else
                {
                    DCPF = Zero
                }

                Local0 = (EPWS & 0x04)
                If (Local0)
                {
                    DCP2 = One
                }
                Else
                {
                    DCP2 = Zero
                }

                If (Arg0)
                {
                    Return (DCP2) /* \DCP2 */
                }
                Else
                {
                    Return (DCPF) /* \DCPF */
                }
            }

            Method (ACAP, 0, Serialized)
            {
                Local0 = (EPWS & One)
                If (Local0)
                {
                    ACPF = One
                }
                Else
                {
                    ACPF = Zero
                }

                If ((BBAT == 0xAA))
                {
                    ACPF = Zero
                }

                Return (ACPF) /* \ACPF */
            }

            Method (GBTT, 1, Serialized)
            {
                If ((Arg0 == Zero))
                {
                    Local0 = EB0T /* \_SB_.PCI0.SBRG.EC0_.EB0T */
                }
                Else
                {
                    Local0 = EB1T /* \_SB_.PCI0.SBRG.EC0_.EB1T */
                }

                Return (Local0)
            }

            Method (BCHG, 1, Serialized)
            {
                If (Arg0)
                {
                    Local0 = EB1S /* \_SB_.PCI0.SBRG.EC0_.EB1S */
                }
                Else
                {
                    Local0 = EB0S /* \_SB_.PCI0.SBRG.EC0_.EB0S */
                }

                Local0 &= 0xFF
                If ((Local0 != 0xFF))
                {
                    Local0 &= 0x02
                    Local0 >>= One
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (CHBT, 1, Serialized)
            {
                Local1 = GBTT (Arg0)
                If ((Local1 == 0xFF))
                {
                    Local0 = Zero
                }
                Else
                {
                    Local0 = (Local1 & 0x10)
                    If (Local0)
                    {
                        Local0 = One
                    }
                }

                Return (Local0)
            }

            Method (TACH, 1, Serialized)
            {
                If (Arg0)
                {
                    Local0 = F1TS /* \_SB_.PCI0.SBRG.EC0_.F1TS */
                }
                Else
                {
                    Local0 = F0TS /* \_SB_.PCI0.SBRG.EC0_.F0TS */
                }

                Local0 = ~Local0
                Local0 &= 0xFFFF
                If ((Local0 != Zero))
                {
                    If ((Local0 == 0xFFFF))
                    {
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 *= 0x02
                        Local1 = 0x001C8402
                        Divide (Local1, Local0, Local2, Local0)
                    }
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (RTMP, 0, NotSerialized)
            {
                Local0 = TH0R /* \_SB_.PCI0.SBRG.EC0_.TH0R */
                Return (Local0)
            }

            Method (RCRT, 0, NotSerialized)
            {
                Local0 = ECRT /* \_SB_.PCI0.SBRG.EC0_.ECRT */
                If ((Local0 > 0x80))
                {
                    Local0 = 0x7F
                }

                Return (Local0)
            }

            Method (SDS3, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Local0 = RRAM (0x02FA)
                    Local0 |= One
                    WRAM (0x02FA, Local0)
                }
                Else
                {
                    Local0 = RRAM (0x02FA)
                    Local0 &= 0xFE
                    WRAM (0x02FA, Local0)
                }
            }

            Method (RPSV, 0, NotSerialized)
            {
                Local0 = EPSV /* \_SB_.PCI0.SBRG.EC0_.EPSV */
                If ((Local0 > 0x80))
                {
                    Local0 = 0x7F
                }

                Return (Local0)
            }

            Method (EC0S, 1, NotSerialized)
            {
                If ((BBAT == 0xAA))
                {
                    Local0 = RRAM (0x02FA)
                    Local0 &= 0xBE
                    WRAM (0x02FA, Local0)
                    AEID = 0xC2
                    Sleep (0x0A)
                    AEIC = One
                    Sleep (0x0A)
                    AEIC = One
                    Sleep (0x0A)
                    AEIC = One
                    Sleep (0x0A)
                    AEIC = One
                    Sleep (0x0A)
                    WRAM (0x0C20, One)
                    WRAM (0x0C21, One)
                    WRAM (0x0C22, 0x02)
                    WRAM (0x0C23, One)
                    Local0 = RRAM (0x02FA)
                    Local0 |= 0x41
                    WRAM (0x02FA, Local0)
                }
            }

            Method (EC0W, 1, NotSerialized)
            {
                If ((RRAM (0x04FE) == 0x37))
                {
                    Local0 = RRAM (0x02FA)
                    Local0 &= 0xBF
                    WRAM (0x02FA, Local0)
                }

                If ((Arg0 == 0x03))
                {
                    PTPT ()
                }

                If ((Arg0 <= 0x04))
                {
                    ACPF = ACPS ()
                    DCPF = DCPS (Zero)
                }

                If ((Arg0 == 0x04))
                {
                    If ((OSFL () >= 0x0F))
                    {
                        WRAM (0x0C0C, 0x80)
                        WRAM (0x038A, Zero)
                    }
                }
            }

            Method (RRAM, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    Local1 = (Local0 & 0xFF)
                    Local0 >>= 0x08
                    Local0 &= 0xFF
                    CDT2 = Local1
                    CDT1 = Local0
                    CMD1 = 0x80
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WRAM, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    Local1 = (Local0 & 0xFF)
                    Local0 >>= 0x08
                    Local0 &= 0xFF
                    CDT2 = Local1
                    CDT1 = Local0
                    CDT3 = Arg1
                    CMD1 = 0x81
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (SBRV, 1, Serialized)
            {
                WBOV (Zero, Arg0)
            }

            Name (DECF, Zero)
            Method (SFNV, 2, Serialized)
            {
                Local1 = RRAM (0x0521)
                Local2 = RRAM (0x0522)
                Local3 = RRAM (0x0523)
                Local4 = RRAM (0x0524)
                If ((Arg0 == Zero))
                {
                    Local3 |= 0x80
                    Local4 |= 0x80
                    If ((Local1 & 0x80))
                    {
                        Local0 = (Local1 >> 0x04)
                        Local0 &= 0x03
                        If ((Local0 == Zero))
                        {
                            WRAM (0x0523, Local3)
                        }
                        ElseIf ((Local0 == One))
                        {
                            WRAM (0x0524, Local4)
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            WRAM (0x0523, Local3)
                            WRAM (0x0524, Local4)
                        }
                    }

                    If ((Local2 & 0x80))
                    {
                        Local0 = (Local2 >> 0x04)
                        Local0 &= 0x03
                        If ((Local0 == Zero))
                        {
                            WRAM (0x0523, Local3)
                        }
                        ElseIf ((Local0 == One))
                        {
                            WRAM (0x0524, Local4)
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            WRAM (0x0523, Local3)
                            WRAM (0x0524, Local4)
                        }
                    }

                    Return (Zero)
                }

                Local3 &= 0x7F
                Local4 &= 0x7F
                WRAM (0x0523, Local3)
                WRAM (0x0524, Local4)
                WFOV (Arg0--, Arg1)
                Return (Zero)
            }

            Method (SMTC, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    If ((Local0 >= 0x41))
                    {
                        Local0 -= 0x41
                    }

                    CDT2 = Arg0
                    CDT1 = Zero
                    CMD1 = 0xA7
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (SPIN, 3, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    Local1 = Arg1
                    If ((Local0 >= 0x41))
                    {
                        Local0 -= 0x41
                    }

                    Local0 <<= 0x04
                    Local0 |= Local1
                    CDT2 = Local0
                    If ((Arg2 == One))
                    {
                        Local2 = 0x20
                    }
                    Else
                    {
                        Local2 = 0x40
                    }

                    CDT1 = Local2
                    CMD1 = 0x87
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RPIN, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    If ((Local0 >= 0x41))
                    {
                        Local0 -= 0x41
                    }

                    Local0 <<= 0x04
                    Local0 |= Arg1
                    CDT2 = Local0
                    CDT1 = Zero
                    CMD1 = 0x87
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
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
            Name (WBLP, 0x8A)
            Name (RBLP, 0x8B)
            Name (PCLL, 0x0C)
            Name (GOOD, Zero)
            Name (UKER, 0x07)
            Name (DAER, 0x10)
            Name (DERR, 0x11)
            Name (CMDN, 0x12)
            Name (UKE2, 0x13)
            Name (DADN, 0x17)
            Name (SBTO, 0x18)
            Name (USPT, 0x19)
            Name (SBBY, 0x1A)
            Method (SMBR, 3, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        0x07, 
                        Zero, 
                        Zero
                    }
                OperationRegion (ECBD, SystemMemory, 0xFE000700, 0x80)
                Field (ECBD, ByteAcc, Lock, Preserve)
                {
                    Offset (0x40), 
                    BCNT,   8, 
                    BDAT,   256
                }

                If ((Arg0 != RDBL))
                {
                    If ((Arg0 != RDWD))
                    {
                        If ((Arg0 != RDBT))
                        {
                            If ((Arg0 != RCBT))
                            {
                                If ((Arg0 != RDQK))
                                {
                                    If ((Arg0 != RBLP))
                                    {
                                        Return (Local0)
                                    }
                                }
                            }
                        }
                    }
                }

                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local6 = 0x7F
                    Local7 = 0x0F
                    While ((Local6 && (Local7 & ESEM)))
                    {
                        Sleep (0x02)
                        Local6--
                    }

                    CDT1 = Zero
                    CDT2 = Arg0
                    Local1 = (Arg1 << One)
                    CDT3 = Local1
                    CDT4 = Arg2
                    CDT5 = Zero
                    CMD1 = 0x9A
                    ESEM = 0x0F
                    Local2 = 0x7F
                    While ((Local2 && CMD1))
                    {
                        Sleep (One)
                        Local2--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 [Zero] = GOOD /* \_SB_.PCI0.SBRG.EC0_.GOOD */
                        If ((Arg0 == RDBL))
                        {
                            Local0 [One] = BCNT /* \_SB_.PCI0.SBRG.EC0_.SMBR.BCNT */
                            Local0 [0x02] = BDAT /* \_SB_.PCI0.SBRG.EC0_.SMBR.BDAT */
                        }

                        If ((Arg0 == RBLP))
                        {
                            Local0 [One] = BCNT /* \_SB_.PCI0.SBRG.EC0_.SMBR.BCNT */
                            Local0 [0x02] = BDAT /* \_SB_.PCI0.SBRG.EC0_.SMBR.BDAT */
                        }

                        If ((Arg0 == RDWD))
                        {
                            Local0 [One] = 0x02
                            Local1 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                            Local1 <<= 0x08
                            Local1 |= EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                            Local0 [0x02] = Local1
                        }

                        If ((Arg0 == RDBT))
                        {
                            Local0 [One] = One
                            Local0 [0x02] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        }

                        If ((Arg0 == RCBT))
                        {
                            Local0 [One] = One
                            Local0 [0x02] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        }
                    }

                    Release (MUEC)
                }

                Return (Local0)
            }

            Method (SMBW, 5, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        0x07, 
                        Zero, 
                        Zero
                    }
                OperationRegion (ECBD, SystemMemory, 0xFE000700, 0x80)
                Field (ECBD, ByteAcc, Lock, Preserve)
                {
                    Offset (0x07), 
                    BDAT,   256
                }

                If ((Arg0 != WRBL))
                {
                    If ((Arg0 != WRWD))
                    {
                        If ((Arg0 != WRBT))
                        {
                            If ((Arg0 != SDBT))
                            {
                                If ((Arg0 != WRQK))
                                {
                                    If ((Arg0 != WBLP))
                                    {
                                        Return (Local0)
                                    }
                                }
                            }
                        }
                    }
                }

                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local6 = 0x7F
                    Local7 = 0x0F
                    While ((Local6 && (Local7 & ESEM)))
                    {
                        Sleep (0x02)
                        Local6--
                    }

                    CDT1 = Zero
                    CDT2 = Arg0
                    Local1 = (Arg1 << One)
                    CDT3 = Local1
                    CDT4 = Arg2
                    If ((Arg0 == WRBL))
                    {
                        CDT5 = Arg3
                        BDAT = Arg4
                    }

                    If ((Arg0 == WBLP))
                    {
                        CDT5 = Arg3
                        BDAT = Arg4
                    }

                    If ((Arg0 == WRWD))
                    {
                        CDT5 = 0x02
                        Local1 = Arg4
                        Local1 >>= 0x08
                        CDT6 = Local1
                        Local1 = (Arg4 & 0x0F)
                        CDT7 = Local1
                    }

                    If ((Arg0 == WRBT))
                    {
                        CDT5 = Zero
                        CDT6 = Arg4
                    }

                    If ((Arg0 == SDBT))
                    {
                        CDT5 = Zero
                        CDT6 = Arg4
                    }

                    CMD1 = 0x9A
                    ESEM = 0x0F
                    Local2 = 0x7F
                    While ((Local2 && CMD1))
                    {
                        Sleep (One)
                        Local2--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 [Zero] = Zero
                    }
                    Else
                    {
                        Local0 [Zero] = UKER /* \_SB_.PCI0.SBRG.EC0_.UKER */
                    }

                    Release (MUEC)
                }

                Return (Local0)
            }

            Method (RBEP, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (WBEP, 2, NotSerialized)
            {
                Return (Zero)
            }

            Method (SDAC, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CMD1 = 0x86
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (ECXT, 6, NotSerialized)
            {
                Local1 = Package (0x06)
                    {
                        0x10, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg1
                    CDT2 = Arg2
                    CDT3 = Arg3
                    CDT4 = Arg4
                    CDT5 = Arg5
                    CMD1 = Arg0
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local1 [Zero] = Zero
                        Local1 [One] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        Local1 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                        Local1 [0x03] = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                        Local1 [0x04] = EDA4 /* \_SB_.PCI0.SBRG.EC0_.EDA4 */
                        Local1 [0x05] = EDA5 /* \_SB_.PCI0.SBRG.EC0_.EDA5 */
                    }
                    Else
                    {
                        Local1 [Zero] = 0x10
                    }

                    Release (MUEC)
                }

                Return (Local1)
            }

            Method (ECX1, 1, Serialized)
            {
                Local1 = Package (0x0D)
                    {
                        0x10, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = DerefOf (Arg0 [One])
                    CDT2 = DerefOf (Arg0 [0x02])
                    CDT3 = DerefOf (Arg0 [0x03])
                    CDT4 = DerefOf (Arg0 [0x04])
                    CDT5 = DerefOf (Arg0 [0x05])
                    CDT6 = DerefOf (Arg0 [0x06])
                    CDT7 = DerefOf (Arg0 [0x07])
                    CDT8 = DerefOf (Arg0 [0x08])
                    CDT9 = DerefOf (Arg0 [0x09])
                    CD10 = DerefOf (Arg0 [0x0A])
                    CD11 = DerefOf (Arg0 [0x0B])
                    CD12 = DerefOf (Arg0 [0x0C])
                    CMD1 = DerefOf (Arg0 [Zero])
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local1 [Zero] = Zero
                        Local1 [One] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        Local1 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                        Local1 [0x03] = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                        Local1 [0x04] = EDA4 /* \_SB_.PCI0.SBRG.EC0_.EDA4 */
                        Local1 [0x05] = EDA5 /* \_SB_.PCI0.SBRG.EC0_.EDA5 */
                        Local1 [0x06] = EDA6 /* \_SB_.PCI0.SBRG.EC0_.EDA6 */
                        Local1 [0x07] = EDA7 /* \_SB_.PCI0.SBRG.EC0_.EDA7 */
                        Local1 [0x08] = EDA8 /* \_SB_.PCI0.SBRG.EC0_.EDA8 */
                        Local1 [0x09] = EDA9 /* \_SB_.PCI0.SBRG.EC0_.EDA9 */
                        Local1 [0x0A] = ED10 /* \_SB_.PCI0.SBRG.EC0_.ED10 */
                        Local1 [0x0B] = ED11 /* \_SB_.PCI0.SBRG.EC0_.ED11 */
                        Local1 [0x0C] = ED12 /* \_SB_.PCI0.SBRG.EC0_.ED12 */
                    }
                    Else
                    {
                        Local1 [Zero] = 0x10
                    }

                    Release (MUEC)
                }

                Return (Local1)
            }

            Method (ECSB, 6, NotSerialized)
            {
                Local1 = Package (0x05)
                    {
                        0x11, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                If ((Arg0 > One))
                {
                    Return (Local1)
                }

                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CDT3 = Arg2
                    CDT4 = Arg3
                    CDT5 = Zero
                    CDT6 = Arg4
                    CDT7 = Arg5
                    CMD1 = 0x9A
                    ESEM = 0x0F
                    Local2 = 0x7F
                    While ((Local2 && CMD1))
                    {
                        Sleep (One)
                        Local2--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local1 [Zero] = Zero
                        Local1 [One] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        Local1 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                        Local1 [0x03] = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                        Local1 [0x04] = EDA4 /* \_SB_.PCI0.SBRG.EC0_.EDA4 */
                    }
                    Else
                    {
                        Local1 [Zero] = 0x10
                    }

                    Release (MUEC)
                }

                Return (Local1)
            }

            Method (WEIE, 0, Serialized)
            {
                Local0 = 0x4000
                Local1 = (AEIC & 0x02)
                While (((Local0 != Zero) && (Local1 == 0x02)))
                {
                    Local1 = (AEIC & 0x02)
                    Local0--
                }
            }

            Method (WEOF, 0, Serialized)
            {
                Local0 = 0x4000
                Local1 = (AEIC & One)
                While (((Local0 != Zero) && (Local1 == Zero)))
                {
                    Local1 = (AEIC & One)
                    Local0--
                }
            }

            Method (RFOV, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0x83
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WFOV, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CMD1 = 0x84
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RBOV, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0x85
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WBOV, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CMD1 = 0x86
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PKEN, 1, NotSerialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0xB1
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (FNLK, 1, NotSerialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0xB0
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PTHP, 1, NotSerialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CreateField (Arg0, Zero, 0x01F0, CDB0)
                    CDTB = CDB0 /* \_SB_.PCI0.SBRG.EC0_.PTHP.CDB0 */
                    CMDB = 0x97
                    ESEB = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PTPP, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local6 = 0x7F
                    Local7 = 0x0F
                    While ((Local6 && (Local7 & ESEB)))
                    {
                        Sleep (0x02)
                        Local6--
                    }

                    CMDB = 0x97
                    CDTB = Arg0
                    ESEB = 0x0F
                    Local0 = 0x7F
                    Local1 = 0x0F
                    While (((Local0 && CMDB) && (Local1 & ESEB)))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If (((CMDB == Zero) && (ESEB == 0xF0)))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PTPT, 0, Serialized)
            {
                If (RGPL (0x02, One))
                {
                    Name (AAUM, Buffer (0x32)
                    {
                        /* 0000 */  0x00, 0x9D, 0x68, 0x67, 0x66, 0x67, 0x55, 0x3A,  /* ..hgfgU: */
                        /* 0008 */  0x73, 0x23, 0x36, 0x3A, 0x3F, 0x45, 0x50, 0x50,  /* s#6:?EPP */
                        /* 0010 */  0x50, 0x82, 0x05, 0x06, 0x05, 0x05, 0x04, 0x0A,  /* P....... */
                        /* 0018 */  0x0A, 0x0A, 0x66, 0x7C, 0x95, 0xA9, 0xB7, 0xD0,  /* ..f|.... */
                        /* 0020 */  0xD0, 0xD0, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  /* ........ */
                        /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  /* ........ */
                        /* 0030 */  0x04, 0x06                                       /* .. */
                    })
                    Name (F0UM, Buffer (0x11)
                    {
                        /* 0000 */  0x02, 0x5E, 0x03, 0xE7, 0x02, 0x8D, 0x02, 0x56,  /* .^.....V */
                        /* 0008 */  0x02, 0x37, 0x02, 0x0D, 0x02, 0x00, 0x00, 0x00,  /* .7...... */
                        /* 0010 */  0x00                                             /* . */
                    })
                    WRAM (0x0520, 0x81)
                    WRAM (0x0521, 0x85)
                    WRAM (0x0522, Zero)
                    WRAM (0x0524, Zero)
                    WRAM (0x03E4, 0x67)
                    WRAM (0x03E5, 0x66)
                    PTPP (AAUM)
                    PTPP (F0UM)
                }
                Else
                {
                    Name (AADG, Buffer (0x32)
                    {
                        /* 0000 */  0x00, 0x9D, 0x68, 0x67, 0x66, 0x67, 0x55, 0x3A,  /* ..hgfgU: */
                        /* 0008 */  0x73, 0x23, 0x36, 0x3A, 0x42, 0x57, 0x5B, 0x5B,  /* s#6:BW[[ */
                        /* 0010 */  0x5B, 0x82, 0x05, 0x09, 0x08, 0x06, 0x0A, 0x08,  /* [....... */
                        /* 0018 */  0x08, 0x08, 0x66, 0x7C, 0x95, 0xA9, 0xB7, 0xD0,  /* ..f|.... */
                        /* 0020 */  0xD0, 0xD0, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  /* ........ */
                        /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  /* ........ */
                        /* 0030 */  0x04, 0x06                                       /* .. */
                    })
                    Name (F0DG, Buffer (0x11)
                    {
                        /* 0000 */  0x02, 0x5E, 0x03, 0xE7, 0x02, 0x8D, 0x02, 0x56,  /* .^.....V */
                        /* 0008 */  0x02, 0x37, 0x02, 0x0D, 0x02, 0x00, 0x00, 0x00,  /* .7...... */
                        /* 0010 */  0x00                                             /* . */
                    })
                    Name (ABDG, Buffer (0x32)
                    {
                        /* 0000 */  0x01, 0x9D, 0x68, 0x67, 0x66, 0x67, 0x55, 0x3A,  /* ..hgfgU: */
                        /* 0008 */  0x73, 0x23, 0x36, 0x3A, 0x42, 0x57, 0x5B, 0x5B,  /* s#6:BW[[ */
                        /* 0010 */  0x5B, 0x82, 0x05, 0x09, 0x08, 0x06, 0x0A, 0x08,  /* [....... */
                        /* 0018 */  0x08, 0x08, 0x66, 0x7C, 0x95, 0xA9, 0xB7, 0xD0,  /* ..f|.... */
                        /* 0020 */  0xD0, 0xD0, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  /* ........ */
                        /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  /* ........ */
                        /* 0030 */  0x04, 0x06                                       /* .. */
                    })
                    Name (F1DG, Buffer (0x11)
                    {
                        /* 0000 */  0x03, 0x5E, 0x03, 0xE7, 0x02, 0x8D, 0x02, 0x56,  /* .^.....V */
                        /* 0008 */  0x02, 0x37, 0x02, 0x0D, 0x02, 0x00, 0x00, 0x00,  /* .7...... */
                        /* 0010 */  0x00                                             /* . */
                    })
                    PTPP (AADG)
                    PTPP (F0DG)
                    PTPP (ABDG)
                    PTPP (F1DG)
                    WRAM (0x0520, 0xB2)
                    WRAM (0x0521, 0xA5)
                    WRAM (0x0522, 0x25)
                    WRAM (0x03E4, 0x67)
                    WRAM (0x03E5, 0x66)
                }
            }

            Method (ACPS, 0, Serialized)
            {
                Return ((GPWS () & One))
            }

            Method (DCPS, 1, Serialized)
            {
                Local0 = GPWS ()
                If (Arg0)
                {
                    Local0 &= 0x04
                }
                Else
                {
                    Local0 &= 0x02
                }

                If (Local0)
                {
                    Local0 = One
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (GPWS, 0, Serialized)
            {
                Local0 = EPWS /* \_SB_.PCI0.SBRG.EC0_.EPWS */
                Return (Local0)
            }

            Method (BCLE, 1, Serialized)
            {
                If (Arg0)
                {
                    If (ECAV ())
                    {
                        Local1 = EB1S /* \_SB_.PCI0.SBRG.EC0_.EB1S */
                        Local1 &= 0xFFFF
                        If ((Local1 != 0xFFFF))
                        {
                            Local1 &= 0x16
                            If ((Local1 == 0x04))
                            {
                                Local0 = Zero
                            }
                            ElseIf ((Local1 == 0x02))
                            {
                                Local0 = One
                            }
                            ElseIf ((Local1 == 0x10))
                            {
                                Local0 = One
                            }
                        }

                        Local0 = Ones
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }
                ElseIf (ECAV ())
                {
                    Local1 = EB0S /* \_SB_.PCI0.SBRG.EC0_.EB0S */
                    Local1 &= 0xFFFF
                    If ((Local1 != 0xFFFF))
                    {
                        Local1 &= 0x16
                        If ((Local1 == 0x04))
                        {
                            Local0 = Zero
                        }
                        ElseIf ((Local1 == 0x02))
                        {
                            Local0 = One
                        }
                        ElseIf ((Local1 == 0x10))
                        {
                            Local0 = One
                        }
                    }

                    Local0 = Ones
                }
                Else
                {
                    Local0 = Ones
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }
    }

    Name (ATKP, Zero)
    Scope (\)
    {
        Device (WMI0)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WAPF, Zero)
            Name (_WDG, Buffer (0x01B8)
            {
                /* 0000 */  0x00, 0x24, 0x14, 0x39, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.9...@ */
                /* 0008 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0010 */  0x30, 0x30, 0x01, 0x01, 0x00, 0x24, 0x14, 0x49,  /* 00...$.I */
                /* 0018 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0020 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x31, 0x01, 0x01,  /* R.A.01.. */
                /* 0028 */  0x00, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 0030 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0038 */  0x30, 0x32, 0x01, 0x01, 0x01, 0x24, 0x14, 0x49,  /* 02...$.I */
                /* 0040 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0048 */  0x52, 0x83, 0x41, 0x00, 0x31, 0x31, 0x01, 0x01,  /* R.A.11.. */
                /* 0050 */  0x01, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 0058 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0060 */  0x31, 0x32, 0x01, 0x01, 0x02, 0x24, 0x14, 0x49,  /* 12...$.I */
                /* 0068 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0070 */  0x52, 0x83, 0x41, 0x00, 0x32, 0x31, 0x01, 0x01,  /* R.A.21.. */
                /* 0078 */  0x02, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 0080 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0088 */  0x32, 0x32, 0x01, 0x01, 0x03, 0x24, 0x14, 0x49,  /* 22...$.I */
                /* 0090 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0098 */  0x52, 0x83, 0x41, 0x00, 0x33, 0x31, 0x01, 0x01,  /* R.A.31.. */
                /* 00A0 */  0x03, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 00A8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 00B0 */  0x33, 0x32, 0x01, 0x01, 0x04, 0x24, 0x14, 0x49,  /* 32...$.I */
                /* 00B8 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 00C0 */  0x52, 0x83, 0x41, 0x00, 0x34, 0x31, 0x01, 0x01,  /* R.A.41.. */
                /* 00C8 */  0x04, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 00D0 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 00D8 */  0x34, 0x32, 0x01, 0x01, 0x05, 0x24, 0x14, 0x49,  /* 42...$.I */
                /* 00E0 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 00E8 */  0x52, 0x83, 0x41, 0x00, 0x35, 0x31, 0x01, 0x01,  /* R.A.51.. */
                /* 00F0 */  0x05, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 00F8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0100 */  0x35, 0x32, 0x01, 0x01, 0x06, 0x24, 0x14, 0x49,  /* 52...$.I */
                /* 0108 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0110 */  0x52, 0x83, 0x41, 0x00, 0x36, 0x31, 0x01, 0x01,  /* R.A.61.. */
                /* 0118 */  0x06, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 0120 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0128 */  0x36, 0x32, 0x01, 0x01, 0x07, 0x24, 0x14, 0x49,  /* 62...$.I */
                /* 0130 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0138 */  0x52, 0x83, 0x41, 0x00, 0x37, 0x31, 0x01, 0x01,  /* R.A.71.. */
                /* 0140 */  0x07, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.J...@ */
                /* 0148 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0150 */  0x37, 0x32, 0x01, 0x01, 0x00, 0x24, 0x14, 0x59,  /* 72...$.Y */
                /* 0158 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0160 */  0x52, 0x83, 0x41, 0x00, 0x80, 0x00, 0x01, 0x08,  /* R.A..... */
                /* 0168 */  0x00, 0x24, 0x14, 0x69, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.i...@ */
                /* 0170 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 0178 */  0x30, 0x35, 0x01, 0x02, 0x00, 0x24, 0x14, 0x79,  /* 05...$.y */
                /* 0180 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  /* ...@...& */
                /* 0188 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x36, 0x01, 0x02,  /* R.A.06.. */
                /* 0190 */  0x00, 0x24, 0x14, 0x89, 0xA3, 0xC6, 0xFA, 0x40,  /* .$.....@ */
                /* 0198 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  /* ...&R.A. */
                /* 01A0 */  0x30, 0x37, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  /* 07..!... */
                /* 01A8 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  /* f....... */
                /* 01B0 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x01   /* ..).BA.. */
            })
            Name (XVCD, Zero)
            Method (WQ00, 1, NotSerialized)
            {
                Return (XVCD) /* \WMI0.XVCD */
            }

            OperationRegion (\WMIA, SystemMemory, WMIM, 0x9000)
            Field (WMIA, AnyAcc, NoLock, Preserve)
            {
                WAG1,   2048, 
                WAG2,   2048, 
                WAG3,   2048, 
                WAG4,   2048, 
                WAG5,   2048, 
                WAG6,   2048, 
                WAG7,   2048, 
                WAG8,   2048, 
                Offset (0x1000), 
                WPD1,   32768, 
                WPD2,   32768, 
                WPD3,   32768, 
                WPD4,   32768, 
                WPD5,   32768, 
                WPD6,   32768, 
                WPD7,   32768, 
                WPD8,   32768
            }

            Method (WQ01, 1, NotSerialized)
            {
                Return (WAG1) /* \WMI0.WAG1 */
            }

            Method (WS01, 2, NotSerialized)
            {
                WAG1 = Arg1
                Return (Zero)
            }

            Method (WQ02, 1, NotSerialized)
            {
                Return (WPD1) /* \WMI0.WPD1 */
            }

            Method (WS02, 2, NotSerialized)
            {
                WPD1 = Arg1
                Return (Zero)
            }

            Method (WQ11, 1, NotSerialized)
            {
                Return (WAG2) /* \WMI0.WAG2 */
            }

            Method (WS11, 2, NotSerialized)
            {
                WAG2 = Arg1
                Return (Zero)
            }

            Method (WQ12, 1, NotSerialized)
            {
                Return (WPD2) /* \WMI0.WPD2 */
            }

            Method (WS12, 2, NotSerialized)
            {
                WPD2 = Arg1
                Return (Zero)
            }

            Method (WQ21, 1, NotSerialized)
            {
                Return (WAG3) /* \WMI0.WAG3 */
            }

            Method (WS21, 2, NotSerialized)
            {
                WAG3 = Arg1
                Return (Zero)
            }

            Method (WQ22, 1, NotSerialized)
            {
                Return (WPD3) /* \WMI0.WPD3 */
            }

            Method (WS22, 2, NotSerialized)
            {
                WPD3 = Arg1
                Return (Zero)
            }

            Method (WQ31, 1, NotSerialized)
            {
                Return (WAG4) /* \WMI0.WAG4 */
            }

            Method (WS31, 2, NotSerialized)
            {
                WAG4 = Arg1
                Return (Zero)
            }

            Method (WQ32, 1, NotSerialized)
            {
                Return (WPD4) /* \WMI0.WPD4 */
            }

            Method (WS32, 2, NotSerialized)
            {
                WPD4 = Arg1
                Return (Zero)
            }

            Method (WQ41, 1, NotSerialized)
            {
                Return (WAG5) /* \WMI0.WAG5 */
            }

            Method (WS41, 2, NotSerialized)
            {
                WAG5 = Arg1
                Return (Zero)
            }

            Method (WQ42, 1, NotSerialized)
            {
                Return (WPD5) /* \WMI0.WPD5 */
            }

            Method (WS42, 2, NotSerialized)
            {
                WPD5 = Arg1
                Return (Zero)
            }

            Method (WQ51, 1, NotSerialized)
            {
                Return (WAG6) /* \WMI0.WAG6 */
            }

            Method (WS51, 2, NotSerialized)
            {
                WAG6 = Arg1
                Return (Zero)
            }

            Method (WQ52, 1, NotSerialized)
            {
                Return (WPD6) /* \WMI0.WPD6 */
            }

            Method (WS52, 2, NotSerialized)
            {
                WPD6 = Arg1
                Return (Zero)
            }

            Method (WQ61, 1, NotSerialized)
            {
                Return (WAG7) /* \WMI0.WAG7 */
            }

            Method (WS61, 2, NotSerialized)
            {
                WAG7 = Arg1
                Return (Zero)
            }

            Method (WQ62, 1, NotSerialized)
            {
                Return (WPD7) /* \WMI0.WPD7 */
            }

            Method (WS62, 2, NotSerialized)
            {
                WPD7 = Arg1
                Return (Zero)
            }

            Method (WQ71, 1, NotSerialized)
            {
                Return (WAG8) /* \WMI0.WAG8 */
            }

            Method (WS71, 2, NotSerialized)
            {
                WAG8 = Arg1
                Return (Zero)
            }

            Method (WQ72, 1, NotSerialized)
            {
                Return (WPD8) /* \WMI0.WPD8 */
            }

            Method (WS72, 2, NotSerialized)
            {
                WPD8 = Arg1
                Return (Zero)
            }

            Method (WM05, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, WMA5)
                If ((WMA5 == One))
                {
                    WMIG (WMIM, (WMIM + 0x1000), One)
                    Return (Zero)
                }

                If ((WMA5 == 0x02))
                {
                    WMIG ((WMIM + 0x0100), (WMIM + 0x2000), 0x02)
                    Return (Zero)
                }

                If ((WMA5 == 0x03))
                {
                    WMIG ((WMIM + 0x0200), (WMIM + 0x3000), 0x03)
                    Return (Zero)
                }

                If ((WMA5 == 0x04))
                {
                    WMIG ((WMIM + 0x0300), (WMIM + 0x4000), 0x04)
                    Return (Zero)
                }

                If ((WMA5 == 0x05))
                {
                    WMIG ((WMIM + 0x0400), (WMIM + 0x5000), 0x05)
                    Return (Zero)
                }

                If ((WMA5 == 0x06))
                {
                    WMIG ((WMIM + 0x0500), (WMIM + 0x6000), 0x06)
                    Return (Zero)
                }

                If ((WMA5 == 0x07))
                {
                    WMIG ((WMIM + 0x0600), (WMIM + 0x7000), 0x07)
                    Return (Zero)
                }

                If ((WMA5 == 0x08))
                {
                    WMIG ((WMIM + 0x0700), (WMIM + 0x8000), 0x08)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (WM06, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, WM6A)
                Local0 = INIT (WM6A)
                Return (Local0)
            }

            Method (WM07, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, WM7A)
                Local0 = WDOG (WM7A)
                Return (Local0)
            }

            Method (NTFY, 1, Serialized)
            {
                XVCD = Arg0
                Notify (WMI0, 0x80) // Status Change
            }

            Method (WSMI, 1, Serialized)
            {
                WMIS = Arg0
                ISMI (0xDF)
                Stall (0xFF)
            }

            Name (WQBA, Buffer (0x0914)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0x04, 0x09, 0x00, 0x00, 0x50, 0x67, 0x00, 0x00,  /* ....Pg.. */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0x28, 0xC7, 0xB2, 0x00, 0x01, 0x06, 0x18, 0x42,  /* (......B */
                /* 0020 */  0x10, 0x2B, 0x10, 0x92, 0x2B, 0x81, 0x42, 0x04,  /* .+..+.B. */
                /* 0028 */  0x0A, 0x44, 0x24, 0x81, 0x30, 0x28, 0x0D, 0x20,  /* .D$.0(.  */
                /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,  /* ..!.LL.. */
                /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,  /* .y.`S.I. */
                /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,  /* ...Q..J. */
                /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,  /* .$.0/@.. */
                /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,  /* ..l.0-.1 */
                /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,  /* $..N.,.B */
                /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,  /* B.(..[.v */
                /* 0068 */  0x44, 0x49, 0x16, 0xB0, 0xA3, 0x30, 0x09, 0x3C,  /* DI...0.< */
                /* 0070 */  0x8A, 0xC8, 0x46, 0xE3, 0xD0, 0xD8, 0x61, 0x58,  /* ..F...aX */
                /* 0078 */  0x26, 0x98, 0x06, 0x71, 0x18, 0x65, 0x23, 0x8B,  /* &..q.e#. */
                /* 0080 */  0xC0, 0x13, 0xEA, 0x74, 0x74, 0x05, 0x08, 0x13,  /* ...tt... */
                /* 0088 */  0x20, 0x1E, 0x55, 0x18, 0xCD, 0x41, 0x91, 0x08,  /*  .U..A.. */
                /* 0090 */  0xD0, 0x28, 0x31, 0x63, 0x22, 0xB0, 0x9D, 0x63,  /* .(1c"..c */
                /* 0098 */  0x6B, 0x14, 0xA7, 0x51, 0xB8, 0x00, 0xE9, 0x18,  /* k..Q.... */
                /* 00A0 */  0x1A, 0xC1, 0x71, 0x85, 0xF7, 0xC8, 0x8E, 0x90,  /* ..q..... */
                /* 00A8 */  0x59, 0x1C, 0x8B, 0x20, 0x43, 0x85, 0xEB, 0x10,  /* Y.. C... */
                /* 00B0 */  0x4E, 0x73, 0x32, 0xC8, 0x89, 0x9C, 0x49, 0xEC,  /* Ns2...I. */
                /* 00B8 */  0x08, 0x05, 0x09, 0xB0, 0x8E, 0x21, 0xA4, 0x58,  /* .....!.X */
                /* 00C0 */  0x51, 0x6A, 0xC6, 0xD3, 0x0C, 0x82, 0x34, 0x0A,  /* Qj....4. */
                /* 00C8 */  0xA5, 0xC9, 0x79, 0x00, 0x61, 0xC2, 0xC3, 0x20,  /* ..y.a..  */
                /* 00D0 */  0x30, 0xFE, 0x11, 0x61, 0x64, 0x40, 0xC8, 0x33,  /* 0..ad@.3 */
                /* 00D8 */  0xB2, 0x86, 0x6A, 0x02, 0xBB, 0x17, 0xE0, 0x6C,  /* ..j....l */
                /* 00E0 */  0x6A, 0x32, 0x36, 0x39, 0x29, 0x9B, 0x1D, 0x41,  /* j269)..A */
                /* 00E8 */  0x68, 0x0B, 0x5E, 0xDA, 0x04, 0x18, 0x04, 0x13,  /* h.^..... */
                /* 00F0 */  0x4A, 0x24, 0x0F, 0xE5, 0x78, 0xA2, 0x54, 0x88,  /* J$..x.T. */
                /* 00F8 */  0xA4, 0xF1, 0xC5, 0x88, 0x52, 0x1C, 0x8A, 0x60,  /* ....R..` */
                /* 0100 */  0x23, 0xB6, 0x86, 0x21, 0x98, 0x98, 0x21, 0xE3,  /* #..!..!. */
                /* 0108 */  0x07, 0xB7, 0xFD, 0x83, 0x01, 0x53, 0x00, 0xD1,  /* .....S.. */
                /* 0110 */  0x02, 0x88, 0x22, 0x8D, 0x06, 0x75, 0x18, 0x48,  /* .."..u.H */
                /* 0118 */  0xF0, 0x70, 0xE0, 0x71, 0x9E, 0xD6, 0xF9, 0x1D,  /* .p.q.... */
                /* 0120 */  0xD7, 0x41, 0x04, 0x39, 0xE1, 0xE3, 0xAA, 0xF3,  /* .A.9.... */
                /* 0128 */  0x54, 0x40, 0x46, 0xC6, 0xFE, 0xFF, 0x58, 0x09,  /* T@F...X. */
                /* 0130 */  0x3A, 0x38, 0x26, 0x40, 0x71, 0x0D, 0xA8, 0x69,  /* :8&@q..i */
                /* 0138 */  0x3E, 0x1D, 0xB0, 0x81, 0x86, 0xC3, 0x0C, 0xD1,  /* >....... */
                /* 0140 */  0xA3, 0x0D, 0x77, 0x02, 0x87, 0xC8, 0x00, 0x3D,  /* ..w....= */
                /* 0148 */  0xA2, 0x07, 0x03, 0xEC, 0x10, 0x4F, 0xE6, 0x25,  /* .....O.% */
                /* 0150 */  0xA0, 0x54, 0x01, 0x66, 0x4F, 0x08, 0x9A, 0x76,  /* .T.fO..v */
                /* 0158 */  0x82, 0xE3, 0xF1, 0x71, 0xC0, 0xF3, 0x39, 0xE1,  /* ...q..9. */
                /* 0160 */  0x04, 0x96, 0x3F, 0x08, 0xD4, 0xC8, 0x0C, 0xED,  /* ..?..... */
                /* 0168 */  0x71, 0x9E, 0xD6, 0x5B, 0x81, 0x8F, 0x00, 0x26,  /* q..[...& */
                /* 0170 */  0xB0, 0x58, 0x08, 0x6D, 0x52, 0xE3, 0x01, 0x02,  /* .X.mR... */
                /* 0178 */  0x8A, 0x0F, 0x05, 0x42, 0x78, 0x75, 0xF0, 0x7C,  /* ...Bxu.| */
                /* 0180 */  0x4D, 0x30, 0x32, 0x84, 0x9C, 0x8C, 0x07, 0x35,  /* M02....5 */
                /* 0188 */  0x0A, 0x83, 0xD6, 0x0A, 0xAE, 0x9B, 0x40, 0x02,  /* ......@. */
                /* 0190 */  0x47, 0x84, 0xD0, 0x67, 0xC3, 0xA2, 0x86, 0x4D,  /* G..g...M */
                /* 0198 */  0x8F, 0x16, 0xFC, 0x54, 0xC1, 0x20, 0xCF, 0xE0,  /* ...T. .. */
                /* 01A0 */  0x11, 0xC0, 0x23, 0x39, 0x21, 0x1F, 0x3E, 0x3C,  /* ..#9!.>< */
                /* 01A8 */  0x30, 0xF8, 0xB3, 0xF0, 0x91, 0x02, 0x1C, 0x1E,  /* 0....... */
                /* 01B0 */  0xC1, 0x84, 0xF3, 0x0A, 0x01, 0x6B, 0xA4, 0xF0,  /* .....k.. */
                /* 01B8 */  0x6F, 0x11, 0x46, 0xF6, 0xA9, 0xE1, 0xB5, 0x21,  /* o.F....! */
                /* 01C0 */  0x81, 0x0F, 0x1E, 0x81, 0xB1, 0x43, 0xB5, 0x5F,  /* .....C._ */
                /* 01C8 */  0x01, 0x08, 0xC1, 0xA3, 0x3D, 0x0A, 0x3C, 0x7B,  /* ....=.<{ */
                /* 01D0 */  0x44, 0x78, 0xDC, 0xC0, 0xFC, 0xFF, 0x8F, 0x1B,  /* Dx...... */
                /* 01D8 */  0xB0, 0x09, 0x8A, 0x1C, 0x20, 0x7A, 0x0C, 0xFC,  /* .... z.. */
                /* 01E0 */  0x04, 0x71, 0x0A, 0xF1, 0xC3, 0x1F, 0xC3, 0x11,  /* .q...... */
                /* 01E8 */  0x45, 0x89, 0x7C, 0x48, 0x3E, 0x9C, 0x18, 0xE1,  /* E.|H>... */
                /* 01F0 */  0x10, 0x9E, 0x49, 0xCE, 0xC0, 0x07, 0x0C, 0x4F,  /* ..I....O */
                /* 01F8 */  0xEB, 0x14, 0x5E, 0x24, 0x3C, 0x02, 0x4C, 0xA0,  /* ..^$<.L. */
                /* 0200 */  0x43, 0x0C, 0x8D, 0xB2, 0x7E, 0x45, 0x80, 0x41,  /* C...~E.A */
                /* 0208 */  0x9D, 0x63, 0x00, 0x57, 0x30, 0xCF, 0x31, 0xE0,  /* .c.W0.1. */
                /* 0210 */  0x3B, 0x3E, 0xF0, 0x6B, 0x00, 0xE6, 0x7C, 0xF2,  /* ;>.k..|. */
                /* 0218 */  0x14, 0x03, 0x07, 0x97, 0x81, 0xBC, 0x04, 0xC4,  /* ........ */
                /* 0220 */  0x79, 0x77, 0xF1, 0xCD, 0xC4, 0xD7, 0x02, 0xE3,  /* yw...... */
                /* 0228 */  0x3E, 0xC4, 0x80, 0x61, 0x60, 0x0F, 0x31, 0xE0,  /* >..a`.1. */
                /* 0230 */  0xFC, 0xFF, 0x1F, 0x62, 0xE0, 0x05, 0x3F, 0xC4,  /* ...b..?. */
                /* 0238 */  0x00, 0x34, 0x91, 0x77, 0xBE, 0x90, 0x91, 0x55,  /* .4.w...U */
                /* 0240 */  0xF8, 0x10, 0x83, 0xBA, 0x21, 0x9C, 0xCF, 0x43,  /* ....!..C */
                /* 0248 */  0xCA, 0xD3, 0x01, 0x93, 0x73, 0xCE, 0xA0, 0x87,  /* ....s... */
                /* 0250 */  0x18, 0xE0, 0x01, 0x88, 0xF7, 0x3E, 0x65, 0x32,  /* .....>e2 */
                /* 0258 */  0x82, 0x33, 0x35, 0xA0, 0x51, 0x7D, 0xAE, 0x00,  /* .35.Q}.. */
                /* 0260 */  0xC7, 0x79, 0x82, 0xFF, 0xFF, 0xCF, 0x13, 0x18,  /* .y...... */
                /* 0268 */  0xBC, 0xD7, 0x0A, 0x76, 0x0C, 0x60, 0x67, 0x0A,  /* ...v.`g. */
                /* 0270 */  0x38, 0x57, 0x0A, 0x9F, 0x5A, 0x7C, 0x4E, 0xF0,  /* 8W..Z|N. */
                /* 0278 */  0x18, 0xF9, 0x58, 0x0C, 0x1A, 0xF2, 0x41, 0xC0,  /* ..X...A. */
                /* 0280 */  0x0B, 0xB4, 0xAC, 0xB3, 0x0D, 0x68, 0x2E, 0x13,  /* .....h.. */
                /* 0288 */  0xCF, 0x3D, 0xD8, 0xA3, 0x0D, 0x18, 0x90, 0x2A,  /* .=.....* */
                /* 0290 */  0xBD, 0x05, 0xE8, 0x02, 0x82, 0x23, 0xF0, 0xC1,  /* .....#.. */
                /* 0298 */  0x06, 0xF8, 0xC4, 0x3A, 0xD5, 0xD0, 0x30, 0x63,  /* ...:..0c */
                /* 02A0 */  0x54, 0x10, 0x18, 0xD4, 0xC1, 0x06, 0x70, 0x75,  /* T.....pu */
                /* 02A8 */  0xE8, 0xF0, 0xC1, 0x06, 0x3C, 0xFF, 0xFF, 0x11,  /* ....<... */
                /* 02B0 */  0xB2, 0xC1, 0x9C, 0x44, 0x98, 0xA3, 0x08, 0xF6,  /* ...D.... */
                /* 02B8 */  0x2C, 0xE1, 0x9B, 0x0D, 0x78, 0xB0, 0xB1, 0x27,  /* ,...x..' */
                /* 02C0 */  0x1B, 0xB0, 0x9C, 0x09, 0x9E, 0x6C, 0x80, 0x49,  /* .....l.I */
                /* 02C8 */  0xF8, 0x93, 0x0D, 0x40, 0x1E, 0xD8, 0x27, 0x81,  /* ...@..'. */
                /* 02D0 */  0x77, 0x80, 0xFF, 0xFF, 0x93, 0x0D, 0x60, 0xF1,  /* w.....`. */
                /* 02D8 */  0x4A, 0x81, 0x3D, 0xD9, 0x40, 0x5E, 0xBC, 0x4E,  /* J.=.@^.N */
                /* 02E0 */  0x36, 0xE0, 0x3A, 0x03, 0x82, 0xED, 0x08, 0x02,  /* 6.:..... */
                /* 02E8 */  0xF3, 0x6C, 0x03, 0x9C, 0xCE, 0x80, 0xC0, 0xE1,  /* .l...... */
                /* 02F0 */  0xFF, 0x7F, 0x06, 0x04, 0x1C, 0x9E, 0x5B, 0x9E,  /* ......[. */
                /* 02F8 */  0x01, 0xC1, 0x75, 0xF2, 0x64, 0x67, 0x40, 0x70,  /* ..u.dg@p */
                /* 0300 */  0xA1, 0x3C, 0x03, 0x02, 0x66, 0xFF, 0xFF, 0x67,  /* .<..f..g */
                /* 0308 */  0x40, 0xC0, 0xD2, 0xE9, 0x80, 0x9D, 0x01, 0x01,  /* @....... */
                /* 0310 */  0x4E, 0xFD, 0xFF, 0x2F, 0x20, 0xFC, 0x0C, 0x08,  /* N../ ... */
                /* 0318 */  0x30, 0xEC, 0x66, 0x03, 0x1B, 0x1B, 0x7B, 0xB2,  /* 0.f...{. */
                /* 0320 */  0x01, 0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xEF,  /* ....w... */
                /* 0328 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE9, 0x64, 0x03,  /* ....0.d. */
                /* 0330 */  0x58, 0xFB, 0xFF, 0x9F, 0x01, 0x01, 0x63, 0x67,  /* X.....cg */
                /* 0338 */  0x1B, 0x60, 0x75, 0x06, 0x04, 0xBC, 0xFF, 0xFF,  /* .`u..... */
                /* 0340 */  0xCF, 0x80, 0xF8, 0x63, 0xCB, 0x33, 0x20, 0xB8,  /* ...c.3 . */
                /* 0348 */  0x70, 0x9F, 0x01, 0xC1, 0x87, 0xF1, 0x0C, 0x08,  /* p....... */
                /* 0350 */  0xF0, 0xEF, 0x74, 0xC0, 0x8E, 0x36, 0xFC, 0xFF,  /* ..t..6.. */
                /* 0358 */  0x7F, 0x06, 0x04, 0x18, 0x75, 0x10, 0x60, 0x67,  /* ....u.`g */
                /* 0360 */  0x40, 0xC0, 0xD3, 0xFF, 0xFF, 0x0C, 0x08, 0x58,  /* @......X */
                /* 0368 */  0xBB, 0xD9, 0xC0, 0xC6, 0xC6, 0x9E, 0x6C, 0xC0,  /* ......l. */
                /* 0370 */  0x72, 0x06, 0xC4, 0x9D, 0x6C, 0xC0, 0x7F, 0x06,  /* r...l... */
                /* 0378 */  0x04, 0x5C, 0xFD, 0xFF, 0xCF, 0x80, 0x80, 0x95,  /* .\...... */
                /* 0380 */  0x93, 0x0D, 0xE0, 0xF1, 0x0C, 0x08, 0xF8, 0x39,  /* .......9 */
                /* 0388 */  0x0A, 0xFC, 0xFF, 0x9F, 0x01, 0x01, 0x6E, 0xCD,  /* ......n. */
                /* 0390 */  0xE1, 0x19, 0x10, 0x5C, 0x33, 0xF3, 0x19, 0x10,  /* ...\3... */
                /* 0398 */  0x6C, 0xF7, 0x1A, 0x9F, 0x01, 0xC1, 0xFF, 0xFF,  /* l....... */
                /* 03A0 */  0x3F, 0x03, 0x02, 0xEC, 0x39, 0x1D, 0xB0, 0xA3,  /* ?...9... */
                /* 03A8 */  0x0D, 0xE0, 0xEE, 0xFF, 0x7F, 0x06, 0x04, 0xEC,  /* ........ */
                /* 03B0 */  0x1C, 0x04, 0xD8, 0x19, 0x10, 0xE0, 0xD6, 0xFF,  /* ........ */
                /* 03B8 */  0xFF, 0x66, 0x03, 0x1F, 0x1B, 0x7B, 0xB2, 0x01,  /* .f...{.. */
                /* 03C0 */  0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xFF, 0x19,  /* ...w.... */
                /* 03C8 */  0x10, 0x60, 0xD0, 0xC9, 0x06, 0xF6, 0xFF, 0xFF,  /* .`...... */
                /* 03D0 */  0x0C, 0x08, 0x30, 0xE9, 0x6C, 0x03, 0xAC, 0xCE,  /* ..0.l... */
                /* 03D8 */  0x80, 0xC0, 0xEF, 0xFF, 0x7F, 0x06, 0x04, 0x3C,  /* .......< */
                /* 03E0 */  0xDD, 0x5B, 0x9E, 0x01, 0xC1, 0x85, 0xFB, 0x0C,  /* .[...... */
                /* 03E8 */  0x08, 0x3E, 0x88, 0x67, 0x40, 0xC0, 0xFA, 0xFF,  /* .>.g@... */
                /* 03F0 */  0xFF, 0x0C, 0x08, 0x98, 0x38, 0x1D, 0xB0, 0x33,  /* ....8..3 */
                /* 03F8 */  0x20, 0xC0, 0xAC, 0x83, 0x00, 0x3B, 0xD8, 0xE0,  /*  ....;.. */
                /* 0400 */  0xFF, 0xFF, 0x67, 0x40, 0x80, 0x4D, 0x37, 0x1B,  /* ..g@.M7. */
                /* 0408 */  0xD8, 0xD8, 0xD8, 0x93, 0x0D, 0x58, 0xCE, 0x80,  /* .....X.. */
                /* 0410 */  0xB8, 0x93, 0x0D, 0xF8, 0xCF, 0x80, 0x70, 0xFE,  /* ......p. */
                /* 0418 */  0xFF, 0x67, 0x40, 0x80, 0x2D, 0x27, 0x1B, 0xC0,  /* .g@.-'.. */
                /* 0420 */  0xE3, 0x95, 0x02, 0xF3, 0xFF, 0x3F, 0x03, 0x02,  /* .....?.. */
                /* 0428 */  0x56, 0xCE, 0x36, 0xC0, 0xEA, 0x0C, 0x08, 0xF0,  /* V.6..... */
                /* 0430 */  0xE0, 0xE0, 0xF2, 0x66, 0x83, 0xF9, 0xFF, 0x9F,  /* ...f.... */
                /* 0438 */  0x01, 0xC1, 0x80, 0xFB, 0x0C, 0x08, 0xBE, 0xFB,  /* ........ */
                /* 0440 */  0xC1, 0x33, 0x20, 0xC0, 0xBF, 0xD3, 0x01, 0x3B,  /* .3 ....; */
                /* 0448 */  0xDA, 0x80, 0xE3, 0xFF, 0x7F, 0x06, 0x04, 0x58,  /* .......X */
                /* 0450 */  0x73, 0x10, 0x60, 0x67, 0x40, 0xC0, 0xE1, 0xFF,  /* s.`g@... */
                /* 0458 */  0xFF, 0x0C, 0x08, 0x98, 0xB9, 0xD9, 0xC0, 0xC6,  /* ........ */
                /* 0460 */  0xC6, 0x9E, 0x6C, 0xC0, 0x72, 0x06, 0xC4, 0x9D,  /* ..l.r... */
                /* 0468 */  0x6C, 0xC0, 0x7F, 0x06, 0x04, 0x3C, 0xFE, 0xFF,  /* l....<.. */
                /* 0470 */  0xCF, 0x80, 0xC0, 0xFC, 0x64, 0x03, 0x78, 0x3C,  /* ....d.x< */
                /* 0478 */  0x03, 0x02, 0x7E, 0xCE, 0x36, 0xB0, 0xFF, 0xFF,  /* ..~.6... */
                /* 0480 */  0x67, 0x40, 0x80, 0x3F, 0xDE, 0xCE, 0x80, 0x20,  /* g@.?...  */
                /* 0488 */  0xC3, 0x7D, 0x06, 0x04, 0xDF, 0xFD, 0xE0, 0x19,  /* .}...... */
                /* 0490 */  0x10, 0xD8, 0xFD, 0xFF, 0xCF, 0x80, 0x00, 0x43,  /* .......C */
                /* 0498 */  0x4E, 0x07, 0xEC, 0x0C, 0x08, 0x78, 0xFD, 0xFF,  /* N....x.. */
                /* 04A0 */  0x9F, 0x01, 0x01, 0x03, 0x07, 0x01, 0x76, 0x06,  /* ......v. */
                /* 04A8 */  0x04, 0xD8, 0x75, 0xB3, 0x81, 0xF9, 0xFF, 0xBF,  /* ..u..... */
                /* 04B0 */  0x60, 0xC1, 0x38, 0xD9, 0x80, 0xE5, 0x0C, 0x88,  /* `.8..... */
                /* 04B8 */  0x3B, 0xD9, 0x80, 0xFF, 0x0C, 0x08, 0x30, 0xE8,  /* ;.....0. */
                /* 04C0 */  0x64, 0x03, 0xE6, 0xFF, 0xFF, 0x19, 0x10, 0x60,  /* d......` */
                /* 04C8 */  0xCB, 0xD9, 0x06, 0x58, 0x9D, 0x01, 0x81, 0xFB,  /* ...X.... */
                /* 04D0 */  0xFF, 0xFF, 0x0C, 0x08, 0xB8, 0x38, 0x1A, 0x3C,  /* .....8.< */
                /* 04D8 */  0x03, 0x82, 0xEB, 0x96, 0xE0, 0x33, 0x20, 0xD8,  /* .....3 . */
                /* 04E0 */  0xEE, 0x07, 0xCF, 0x80, 0x00, 0x23, 0xFE, 0xFF,  /* .....#.. */
                /* 04E8 */  0x67, 0x40, 0x60, 0x7B, 0x3A, 0x60, 0x67, 0x40,  /* g@`{:`g@ */
                /* 04F0 */  0x80, 0x59, 0x07, 0x01, 0x76, 0xB0, 0x01, 0xD7,  /* .Y..v... */
                /* 04F8 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE6, 0x66, 0x03,  /* ....0.f. */
                /* 0500 */  0x1B, 0x1B, 0x7B, 0xB2, 0x01, 0xCB, 0x19, 0x10,  /* ..{..... */
                /* 0508 */  0x77, 0xB2, 0x01, 0xFF, 0x19, 0x10, 0x7C, 0xFF,  /* w.....|. */
                /* 0510 */  0xFF, 0x33, 0x20, 0xC0, 0x88, 0x93, 0x0D, 0xE0,  /* .3 ..... */
                /* 0518 */  0xF1, 0x0C, 0x08, 0x96, 0xFF, 0xFF, 0x19, 0x10,  /* ........ */
                /* 0520 */  0x98, 0x9F, 0x6D, 0x80, 0x55, 0xB4, 0x83, 0x0D,  /* ..m.U... */
                /* 0528 */  0x2A, 0xCC, 0xD9, 0x06, 0x10, 0x3D, 0xEF, 0x87,  /* *....=.. */
                /* 0530 */  0x0F, 0x1F, 0x0C, 0x7C, 0x10, 0xC0, 0xDC, 0x6C,  /* ...|...l */
                /* 0538 */  0xE0, 0xDC, 0x2A, 0x7C, 0x5D, 0xF1, 0x41, 0xC4,  /* ..*|].A. */
                /* 0540 */  0x87, 0x07, 0xF6, 0xFF, 0x87, 0x8A, 0x13, 0x9E,  /* ........ */
                /* 0548 */  0x9F, 0x1C, 0x7C, 0xB6, 0x81, 0x7D, 0x9A, 0x79,  /* ..|..}.y */
                /* 0550 */  0x08, 0xC4, 0x21, 0x3C, 0xDB, 0x80, 0xFD, 0x4D,  /* ..!<...M */
                /* 0558 */  0xE1, 0x63, 0x81, 0xCF, 0x36, 0x00, 0x3F, 0x44,  /* .c..6.?D */
                /* 0560 */  0x1C, 0x30, 0xE4, 0x64, 0x3C, 0xA8, 0x51, 0x58,  /* .0.d<.QX */
                /* 0568 */  0xE3, 0x25, 0x81, 0x4C, 0xDB, 0x04, 0x43, 0x43,  /* .%.L..CC */
                /* 0570 */  0xE8, 0xB4, 0xE4, 0xB3, 0x0D, 0x38, 0xFF, 0xFF,  /* .....8.. */
                /* 0578 */  0x67, 0x1B, 0x70, 0x9E, 0x4E, 0xF0, 0x67, 0x1B,  /* g.p.N.g. */
                /* 0580 */  0x30, 0x9D, 0x25, 0x30, 0x04, 0x1E, 0x32, 0xFC,  /* 0.%0..2. */
                /* 0588 */  0xD3, 0x0C, 0x3F, 0x3E, 0xBC, 0x3F, 0x24, 0xF0,  /* ..?>.?$. */
                /* 0590 */  0xB9, 0x0F, 0x6C, 0xA7, 0x0E, 0x38, 0x87, 0x19,  /* ..l..8.. */
                /* 0598 */  0x60, 0x32, 0x26, 0xDC, 0x91, 0xC2, 0x43, 0xE0,  /* `2&...C. */
                /* 05A0 */  0x03, 0x68, 0x75, 0x7E, 0xE4, 0x58, 0x78, 0x56,  /* .hu~.XxV */
                /* 05A8 */  0xB8, 0xB3, 0x0C, 0x1F, 0x15, 0xE6, 0x74, 0x83,  /* ......t. */
                /* 05B0 */  0x8B, 0xF2, 0x3E, 0x30, 0x81, 0x82, 0xBC, 0x0B,  /* ..>0.... */
                /* 05B8 */  0x24, 0xF2, 0x81, 0x40, 0x61, 0x7C, 0xBA, 0x01,  /* $..@a|.. */
                /* 05C0 */  0x8E, 0xFF, 0xFF, 0xD3, 0x0D, 0xF0, 0x98, 0xA4,  /* ........ */
                /* 05C8 */  0x4F, 0x37, 0x60, 0x83, 0x88, 0x18, 0xAC, 0x68,  /* O7`....h */
                /* 05D0 */  0x30, 0xDD, 0x9A, 0x70, 0xB7, 0x1B, 0x1C, 0x5E,  /* 0..p...^ */
                /* 05D8 */  0xB8, 0x18, 0xA7, 0xC3, 0x10, 0xA2, 0x3C, 0xB0,  /* ......<. */
                /* 05E0 */  0x18, 0x99, 0x1F, 0x03, 0xC1, 0x70, 0x9B, 0x79,  /* .....p.y */
                /* 05E8 */  0xB6, 0x01, 0x2E, 0xE1, 0x0E, 0x05, 0xFA, 0x43,  /* .......C */
                /* 05F0 */  0xF9, 0x6C, 0x03, 0xF8, 0xFC, 0xFF, 0x9F, 0x6D,  /* .l.....m */
                /* 05F8 */  0x80, 0xCF, 0x41, 0x04, 0x77, 0x32, 0x01, 0xC3,  /* ..A.w2.. */
                /* 0600 */  0x89, 0x01, 0xD6, 0xB1, 0x0D, 0xB8, 0x88, 0x5B,  /* .......[ */
                /* 0608 */  0xA9, 0x4E, 0x3B, 0x16, 0x06, 0x22, 0x1B, 0x87,  /* .N;..".. */
                /* 0610 */  0x45, 0x3A, 0x54, 0x0B, 0xA1, 0xD2, 0x90, 0x7C,  /* E:T....| */
                /* 0618 */  0x04, 0x3A, 0xBB, 0x47, 0x85, 0xE7, 0x04, 0x01,  /* .:.G.... */
                /* 0620 */  0x09, 0xD4, 0x10, 0x0E, 0x0F, 0xA1, 0xE8, 0xA3,  /* ........ */
                /* 0628 */  0xA1, 0xC0, 0x0E, 0x0B, 0x46, 0x41, 0x3C, 0x7A,  /* ....FA<z */
                /* 0630 */  0x07, 0x81, 0xD0, 0xA1, 0x08, 0x7F, 0x62, 0xF0,  /* ......b. */
                /* 0638 */  0x7C, 0xDE, 0xF8, 0x4D, 0xF0, 0xB0, 0xF1, 0xB4,  /* |..M.... */
                /* 0640 */  0x00, 0xEB, 0x62, 0xE0, 0x63, 0x00, 0x3F, 0x13,  /* ..b.c.?. */
                /* 0648 */  0xE2, 0x0F, 0xFD, 0x26, 0xE0, 0xC7, 0x1E, 0xF0,  /* ...&.... */
                /* 0650 */  0x09, 0x3C, 0x0D, 0x80, 0x02, 0xC8, 0x93, 0xF7,  /* .<...... */
                /* 0658 */  0xB1, 0xE6, 0x01, 0x80, 0xCD, 0xE1, 0xC9, 0xC6,  /* ........ */
                /* 0660 */  0x68, 0xFF, 0xFF, 0x47, 0x1A, 0x9C, 0x8C, 0x95,  /* h..G.... */
                /* 0668 */  0xEA, 0x4B, 0xE3, 0x33, 0xA3, 0xC7, 0xC5, 0xCF,  /* .K.3.... */
                /* 0670 */  0x03, 0x3E, 0xB8, 0xB0, 0xB3, 0x01, 0xEE, 0x0C,  /* .>...... */
                /* 0678 */  0x85, 0x81, 0xF5, 0x48, 0x39, 0xAC, 0xD1, 0xC2,  /* ...H9... */
                /* 0680 */  0x1E, 0xF0, 0x43, 0x83, 0x2F, 0x1C, 0x9E, 0x99,  /* ..C./... */
                /* 0688 */  0xCF, 0x28, 0x3E, 0x6A, 0x80, 0xE5, 0x38, 0x05,  /* .(>j..8. */
                /* 0690 */  0xFF, 0xB0, 0x82, 0x3B, 0xC9, 0xC0, 0x9D, 0xE6,  /* ...;.... */
                /* 0698 */  0x23, 0xC1, 0xA3, 0x9E, 0x87, 0x1E, 0xDE, 0x47,  /* #......G */
                /* 06A0 */  0x18, 0xCF, 0x2E, 0x88, 0xAF, 0x9D, 0xFC, 0xF2,  /* ........ */
                /* 06A8 */  0x7D, 0x5A, 0xBE, 0xEF, 0xF8, 0xE8, 0x63, 0xA0,  /* }Z....c. */
                /* 06B0 */  0x27, 0x86, 0xA8, 0xAF, 0x27, 0x9E, 0x00, 0xBF,  /* '...'... */
                /* 06B8 */  0x50, 0x38, 0xC6, 0xA9, 0x88, 0x06, 0x5A, 0xA9,  /* P8....Z. */
                /* 06C0 */  0xA4, 0xAE, 0x99, 0xC2, 0xF8, 0x54, 0x04, 0xB8,  /* .....T.. */
                /* 06C8 */  0x8A, 0x30, 0x78, 0x50, 0xFC, 0xFF, 0x4F, 0x45,  /* .0xP..OE */
                /* 06D0 */  0xD8, 0x1B, 0x86, 0x2F, 0x03, 0x3E, 0x14, 0x81,  /* .../.>.. */
                /* 06D8 */  0xE5, 0x40, 0xE2, 0x89, 0xBD, 0x04, 0xF8, 0xDC,  /* .@...... */
                /* 06E0 */  0x80, 0xC3, 0x39, 0x03, 0x7E, 0x32, 0x02, 0xC3,  /* ..9.~2.. */
                /* 06E8 */  0x5D, 0xFB, 0xC9, 0x08, 0xB8, 0x44, 0x3B, 0x19,  /* ]....D;. */
                /* 06F0 */  0x01, 0x34, 0x39, 0xDF, 0xE1, 0xFE, 0xFF, 0x27,  /* .49....' */
                /* 06F8 */  0x23, 0x30, 0x9C, 0x1A, 0x60, 0x1C, 0x8C, 0x80,  /* #0..`... */
                /* 0700 */  0x8B, 0xA4, 0x83, 0x11, 0x95, 0x73, 0x30, 0x82,  /* .....s0. */
                /* 0708 */  0x72, 0x84, 0xC0, 0x1D, 0x8C, 0xC0, 0x3F, 0xA6,  /* r.....?. */
                /* 0710 */  0x33, 0x7A, 0x1D, 0x38, 0x75, 0x1F, 0x8C, 0x00,  /* 3z.8u... */
                /* 0718 */  0x73, 0xC3, 0xF5, 0xC1, 0x08, 0xF8, 0xFC, 0xFF,  /* s....... */
                /* 0720 */  0x0F, 0x46, 0xC0, 0xE5, 0x70, 0xE1, 0x83, 0x11,  /* .F..p... */
                /* 0728 */  0xB8, 0x0F, 0x0B, 0xFC, 0x10, 0x83, 0x25, 0x28,  /* ......%( */
                /* 0730 */  0xFE, 0x35, 0x64, 0x02, 0x85, 0x5A, 0xA4, 0x24,  /* .5d..Z.$ */
                /* 0738 */  0x2F, 0x97, 0xC2, 0xF8, 0x4C, 0x04, 0xB8, 0x8A,  /* /...L... */
                /* 0740 */  0x71, 0x26, 0x02, 0x21, 0xC6, 0xE3, 0xB1, 0x11,  /* q&.!.... */
                /* 0748 */  0xCF, 0x38, 0x6C, 0xB8, 0xE7, 0x8B, 0xA7, 0x22,  /* .8l...." */
                /* 0750 */  0xB0, 0xCF, 0xE1, 0x0C, 0xFA, 0xBC, 0x6E, 0xE9,  /* ......n. */
                /* 0758 */  0x54, 0x84, 0xFF, 0xFF, 0x9F, 0x8A, 0x60, 0x1C,  /* T.....`. */
                /* 0760 */  0x83, 0x9E, 0x8A, 0x80, 0x4B, 0xBC, 0x53, 0x11,  /* ....K.S. */
                /* 0768 */  0x40, 0x93, 0x13, 0xC4, 0x53, 0x11, 0xB8, 0xCE,  /* @...S... */
                /* 0770 */  0x0D, 0x30, 0xCF, 0x45, 0xE0, 0xFB, 0xFF, 0x9F,  /* .0.E.... */
                /* 0778 */  0x8B, 0xE0, 0x3E, 0x08, 0x7C, 0x18, 0x22, 0xE7,  /* ..>.|.". */
                /* 0780 */  0x22, 0x74, 0x78, 0x2A, 0x1D, 0x22, 0x70, 0xB1,  /* "tx*."p. */
                /* 0788 */  0xCF, 0x45, 0x74, 0xD8, 0x0E, 0x4C, 0xA2, 0x43,  /* .Et..L.C */
                /* 0790 */  0xBD, 0xCF, 0x45, 0x3C, 0xE6, 0x91, 0x86, 0x82,  /* ..E<.... */
                /* 0798 */  0x18, 0xD0, 0x19, 0xCE, 0x45, 0x68, 0x15, 0xE7,  /* ....Eh.. */
                /* 07A0 */  0x22, 0xE4, 0x20, 0xDF, 0x16, 0xD8, 0xEC, 0x7C,  /* ". ....| */
                /* 07A8 */  0x0F, 0xE0, 0x37, 0x15, 0x5F, 0x8B, 0x18, 0x6E,  /* ..7._..n */
                /* 07B0 */  0x35, 0xD7, 0x1D, 0x14, 0x98, 0x6F, 0x45, 0x18,  /* 5....oE. */
                /* 07B8 */  0x5D, 0xA7, 0x22, 0x90, 0xE9, 0xBB, 0x14, 0x81,  /* ]."..... */
                /* 07C0 */  0x1C, 0x9D, 0x9F, 0xA8, 0xC0, 0x87, 0xFF, 0x3C,  /* .......< */
                /* 07C8 */  0xE0, 0x21, 0x3C, 0x51, 0xC1, 0x3D, 0x13, 0xBC,  /* .!<Q.=.. */
                /* 07D0 */  0xF5, 0xF8, 0x44, 0x05, 0xFB, 0x90, 0x4B, 0x4E,  /* ..D...KN */
                /* 07D8 */  0x54, 0x40, 0xE3, 0xFF, 0x7F, 0xA2, 0x02, 0x5F,  /* T@....._ */
                /* 07E0 */  0xEC, 0x13, 0x15, 0xA0, 0xE7, 0x08, 0x82, 0x3B,  /* .......; */
                /* 07E8 */  0xB9, 0x82, 0xF5, 0x98, 0x81, 0x51, 0x68, 0xD3,  /* .....Qh. */
                /* 07F0 */  0xA7, 0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28,  /* .F.V...( */
                /* 07F8 */  0xD3, 0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0xBB,  /* ..V.J... */
                /* 0800 */  0x0F, 0x58, 0xE2, 0x3B, 0x41, 0xC3, 0x75, 0x40,  /* .X.;A.u@ */
                /* 0808 */  0x10, 0x1A, 0x89, 0x42, 0x20, 0x8E, 0xF2, 0xA7,  /* ...B ... */
                /* 0810 */  0x10, 0x88, 0x85, 0x78, 0x00, 0x61, 0x42, 0x57,  /* ...x.aBW */
                /* 0818 */  0x24, 0x10, 0x8B, 0x5B, 0x9B, 0x40, 0x1C, 0x0D,  /* $..[.@.. */
                /* 0820 */  0x84, 0x46, 0x5F, 0x9D, 0x40, 0x1C, 0xD8, 0x07,  /* .F_.@... */
                /* 0828 */  0x08, 0x93, 0xFB, 0x26, 0x10, 0x88, 0xE3, 0x18,  /* ...&.... */
                /* 0830 */  0x01, 0x61, 0x11, 0x5E, 0x54, 0x3A, 0x06, 0x10,  /* .a.^T:.. */
                /* 0838 */  0x2B, 0x20, 0x4C, 0xA0, 0x16, 0x10, 0x26, 0xCB,  /* + L...&. */
                /* 0840 */  0x0C, 0x08, 0x0B, 0x05, 0x42, 0x43, 0x7F, 0x39,  /* ....BC.9 */
                /* 0848 */  0x04, 0xE2, 0xA0, 0x76, 0x40, 0x98, 0x4C, 0x3D,  /* ...v@.L= */
                /* 0850 */  0x20, 0x2C, 0x86, 0x1F, 0x10, 0x26, 0x5E, 0xD1,  /*  ,...&^. */
                /* 0858 */  0x60, 0x28, 0x08, 0x95, 0xF6, 0xE6, 0xD2, 0x61,  /* `(.....a */
                /* 0860 */  0x82, 0x78, 0x02, 0x61, 0x61, 0x40, 0xE8, 0xFF,  /* .x.aa@.. */
                /* 0868 */  0x3F, 0xAC, 0x28, 0x10, 0x16, 0xD1, 0xD5, 0x60,  /* ?.(....` */
                /* 0870 */  0xE8, 0xDB, 0x40, 0x20, 0x0E, 0xF0, 0x4C, 0x0A,  /* ..@ ..L. */
                /* 0878 */  0x42, 0x44, 0x3F, 0x25, 0x04, 0xE2, 0xC8, 0x20,  /* BD?%...  */
                /* 0880 */  0x54, 0xD2, 0x1F, 0x42, 0x43, 0x25, 0x7F, 0xA5,  /* T..BC%.. */
                /* 0888 */  0x83, 0x61, 0x20, 0x34, 0xE6, 0x83, 0xE9, 0x50,  /* .a 4...P */
                /* 0890 */  0xD9, 0x5F, 0x4B, 0x20, 0x16, 0xA6, 0x0E, 0x84,  /* ._K .... */
                /* 0898 */  0x09, 0x77, 0x37, 0x54, 0xFA, 0x19, 0xD1, 0x60,  /* .w7T...` */
                /* 08A0 */  0x08, 0x08, 0x15, 0xF3, 0xA8, 0xD0, 0x50, 0xC9,  /* ......P. */
                /* 08A8 */  0x83, 0x22, 0x08, 0x91, 0x0F, 0x42, 0xE3, 0xBD,  /* ."...B.. */
                /* 08B0 */  0x04, 0x34, 0x54, 0xF2, 0x21, 0xD0, 0x60, 0xC8,  /* .4T.!.`. */
                /* 08B8 */  0x1B, 0x47, 0x20, 0x96, 0xFC, 0x4A, 0xD3, 0x50,  /* .G ..J.P */
                /* 08C0 */  0xC9, 0x43, 0x41, 0x20, 0x0E, 0x09, 0x42, 0x45,  /* .CA ..BE */
                /* 08C8 */  0xBC, 0x72, 0x82, 0x90, 0xF0, 0xCF, 0x8B, 0x20,  /* .r.....  */
                /* 08D0 */  0x44, 0xBA, 0xD1, 0x41, 0xD0, 0xE7, 0xC5, 0x83,  /* D..A.... */
                /* 08D8 */  0x01, 0xB3, 0x0A, 0xC2, 0x04, 0x69, 0x1D, 0x36,  /* .....i.6 */
                /* 08E0 */  0x7D, 0x28, 0x14, 0xF0, 0x15, 0xD0, 0xE1, 0x20,  /* }(.....  */
                /* 08E8 */  0x88, 0x80, 0x2C, 0xD2, 0xED, 0x80, 0x29, 0x08,  /* ..,...). */
                /* 08F0 */  0x15, 0x63, 0x17, 0x90, 0x49, 0x03, 0x11, 0x90,  /* .c..I... */
                /* 08F8 */  0xE3, 0x0A, 0x06, 0x61, 0x62, 0x5F, 0x14, 0x41,  /* ...ab_.A */
                /* 0900 */  0x48, 0xAE, 0xE7, 0x51, 0x40, 0x12, 0x12, 0x44,  /* H..Q@..D */
                /* 0908 */  0xC7, 0x03, 0xF2, 0x84, 0x13, 0x90, 0xC3, 0x81,  /* ........ */
                /* 0910 */  0x08, 0xC8, 0xFF, 0x7F                           /* .... */
            })
        }
    }

    Scope (WMI0)
    {
        Name (WMIP, Zero)
        Method (INIT, 1, NotSerialized)
        {
            WMIP = One
            Return (Zero)
        }

        Name (PCDV, Zero)
        Method (WDOG, 1, NotSerialized)
        {
            Return (Zero)
        }

        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
        {
            Return (Arg0)
        }

        Method (WMIG, 3, Serialized)
        {
            Local0 = WGFN (Arg0)
            Local1 = ((Local0 >> 0x10) & 0xFFFF)
            Local0 &= 0xFFFF
            If (CWAC (Arg0, Local0, Local1, Arg2))
            {
                Return (Zero)
            }

            WGLN (Arg0, Arg1, Local0, Local1, Arg2)
            OperationRegion (\WMIF, SystemMemory, Arg0, 0x0100)
            Field (WMIF, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                STAS,   8, 
                REST,   8
            }

            If (((STAS && One) != One))
            {
                Return (Zero)
            }

            STAS = 0x82
            REST = One
            Return (Zero)
        }

        Method (WGFN, 1, NotSerialized)
        {
            OperationRegion (\PAR, SystemMemory, Arg0, 0x08)
            Field (PAR, DWordAcc, NoLock, Preserve)
            {
                FUNC,   32, 
                Offset (0x06), 
                STAS,   8, 
                EROR,   8
            }

            EROR = Zero
            STAS = One
            Return (FUNC) /* \WMI0.WGFN.FUNC */
        }

        Name (WGSL, Package (0x05)
        {
            0x66, 
            One, 
            0x6A, 
            One, 
            0xFFFFFFFF
        })
        Method (CWAC, 4, NotSerialized)
        {
            Local0 = Zero
            While (One)
            {
                Local1 = DerefOf (WGSL [Local0])
                If ((Local1 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Local0 += One
                Local2 = DerefOf (WGSL [Local0])
                If ((Local1 == Arg1))
                {
                    If ((Local2 == Arg2))
                    {
                        Break
                    }
                }

                Local0 += One
            }

            OperationRegion (\WMIC, SystemMemory, Arg0, 0x0100)
            Field (WMIC, DWordAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                REST,   8
            }

            WMIS = Arg3
            ISMI (0xDE)
            Return (REST) /* \WMI0.CWAC.REST */
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Name (DVOT, 0x0E)
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
            "Model", 
            "  ", 
            "LIon", 
            "OEM"
        })
        Name (PBST, Package (0x04)
        {
            Zero, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF
        })
        Mutex (MUBT, 0x00)
        Method (FBIF, 5, NotSerialized)
        {
            Local1 = Arg1
            Local2 = Arg2
            If ((Arg0 == Zero))
            {
                Local1 *= 0x0A
                Local2 *= 0x0A
            }

            PBIF [Zero] = Arg0
            PBIF [One] = Local1
            PBIF [0x02] = Local2
            PBIF [0x03] = Arg3
            PBIF [0x04] = Arg4
            Divide (Local2, 0x64, Local3, Local5)
            Local6 = (Local5 * 0x0A)
            PBIF [0x05] = Local6
            Local6 = (Local5 * One)
            PBIF [0x06] = Local6
            Divide (Local1, 0x64, Local3, Local7)
            PBIF [0x07] = Local7
            PBIF [0x08] = Local7
            If (Arg0)
            {
                Local0 = DerefOf (PBIF [0x04])
                Local0 += 0x01F4
                Divide (Local0, 0x03E8, Local1, DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBIF [Zero] = Zero
                PBIF [One] = (DerefOf (PBIF [One]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBIF [0x02] = (DerefOf (PBIF [0x02]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBIF [0x05] = (DerefOf (PBIF [0x05]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBIF [0x06] = (DerefOf (PBIF [0x06]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBIF [0x07] = (DerefOf (PBIF [0x07]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBIF [0x08] = (DerefOf (PBIF [0x08]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
            }
        }

        Method (BIFP, 1, Serialized)
        {
            If (!BATP (Arg0))
            {
                Return (NBIF) /* \_SB_.PCI0.SBRG.EC0_.NBIF */
            }

            If ((GBTT (Arg0) == 0xFF))
            {
                Return (NBIF) /* \_SB_.PCI0.SBRG.EC0_.NBIF */
            }

            If ((Acquire (MUBT, 0xFFFF) == Zero))
            {
                BATS (Arg0)
                PBIF [0x09] = BIF9 ()
                Local0 = BIF0 ()
                Local1 = BIF1 ()
                Local2 = BIF2 ()
                Local3 = BIF3 ()
                Local4 = BIF4 ()
                If ((Local0 != Ones))
                {
                    If ((Local1 != Ones))
                    {
                        If ((Local2 != Ones))
                        {
                            If ((Local3 != Ones))
                            {
                                If ((Local4 != Ones))
                                {
                                    FBIF (Local0, Local1, Local2, Local3, Local4)
                                }
                            }
                        }
                    }
                }

                Release (MUBT)
            }

            Return (PBIF) /* \_SB_.PCI0.SBRG.EC0_.PBIF */
        }

        Method (FBST, 5, NotSerialized)
        {
            Local1 = (Arg1 & 0xFFFF)
            Local0 = Zero
            If (ACAP ())
            {
                Local0 = One
            }

            If (Local0)
            {
                If (BCHG (Arg4))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = Zero
                }
            }
            Else
            {
                Local0 = One
            }

            Local2 = (Arg0 & 0x0300)
            If (Local2)
            {
                Local2 = (One << 0x02)
                Local0 |= Local2
            }

            If ((Local1 >= 0x8000))
            {
                Local1 = (0xFFFF - Local1)
            }

            Local6 = BIF0 ()
            Local7 = BIF2 ()
            Local2 = Arg2
            If ((Local6 == Zero))
            {
                Local1 *= DVOT /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                Local2 *= 0x0A
                Local7 *= 0x0A
            }

            Local3 = (Local0 & 0x02)
            If (!Local3)
            {
                Local3 = (Local7 - Local2)
                Divide (Local7, 0xC8, Local4, Local5)
                If ((Local3 < Local5))
                {
                    Local2 = Local7
                }
            }
            Else
            {
                Divide (Local7, 0xC8, Local4, Local5)
                Local4 = (Local7 - Local5)
                If ((Local2 > Local4))
                {
                    Local2 = Local4
                }
            }

            If (!ACAP ())
            {
                Divide (Local2, 0x0A, Local3, Local4)
                If ((Local1 < Local4))
                {
                    Local1 = Local4
                }
            }

            PBST [Zero] = Local0
            PBST [One] = Local1
            PBST [0x02] = Local2
            PBST [0x03] = Arg3
            If (Local6)
            {
                PBST [One] = (DerefOf (PBST [One]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBST [0x02] = (DerefOf (PBST [0x02]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
            }
        }

        Method (BSTP, 1, Serialized)
        {
            PBST [Zero] = Zero
            PBST [One] = Ones
            PBST [0x02] = Ones
            PBST [0x03] = Ones
            If (!BATP (Arg0))
            {
                Return (PBST) /* \_SB_.PCI0.SBRG.EC0_.PBST */
            }

            If ((GBTT (Arg0) == 0xFF))
            {
                Return (PBST) /* \_SB_.PCI0.SBRG.EC0_.PBST */
            }

            If ((Acquire (MUBT, 0xFFFF) == Zero))
            {
                BATS (Arg0)
                Local0 = BSTS ()
                Local1 = BCRT ()
                Local2 = BRCP ()
                Local3 = BVOT ()
                If ((Local0 != Ones))
                {
                    If ((Local1 != Ones))
                    {
                        If ((Local2 != Ones))
                        {
                            If ((Local3 != Ones))
                            {
                                FBST (Local0, Local1, Local2, Local3, Arg0)
                            }
                        }
                    }
                }

                Release (MUBT)
            }

            Return (PBST) /* \_SB_.PCI0.SBRG.EC0_.PBST */
        }
    }

    Scope (_SB.PCI0)
    {
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (^^SBRG.EC0.BATP (Zero))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, Serialized)  // _BIF: Battery Information
            {
                Return (^^SBRG.EC0.BIFP (Zero))
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (ATKP)
                {
                    ^^SBRG.EC0.ACAP ()
                    If (ACPF)
                    {
                        S4CT = One
                    }
                    ElseIf (((^^SBRG.EC0.B0PN <= One) && (ACPF == Zero)))
                    {
                        ^^^ATKD.IANE (0x6D)
                    }
                }

                Return (^^SBRG.EC0.BSTP (Zero))
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query
        {
            DCPF = DCPS (Zero)
            If (DCPF)
            {
                Sleep (0x07D0)
            }

            Notify (BAT0, 0x80) // Status Change
            Notify (BAT0, 0x81) // Information Change
        }

        Method (NBAT, 1, NotSerialized)
        {
            If (BATP (Zero))
            {
                Notify (BAT0, Arg0)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (AC0)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (XX00, Buffer (0x03) {})
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                CreateWordField (XX00, Zero, SSZE)
                CreateByteField (XX00, 0x02, ACST)
                SSZE = 0x03
                Local0 = ^^SBRG.EC0.ACAP ()
                If (Local0)
                {
                    AFN4 (One)
                    ACST = Zero
                }
                Else
                {
                    AFN4 (0x02)
                    ACST = One
                }

                ALIB (One, XX00)
                Return (^^SBRG.EC0.ACAP ())
            }

            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x03
            If (ACPS ())
            {
                ACPF = One
                Local0 = 0x58
            }
            Else
            {
                ACPF = Zero
                Local0 = 0x57
            }

            NBAT (0x80)
            ^^^^ATKD.IANE (Local0)
        }

        Method (_QB0, 0, NotSerialized)  // _Qxx: EC Query
        {
            Local0 = RRAM (0x051C)
            If ((Local0 & 0x02))
            {
                CRTF = One
                PSVF = Zero
            }
            ElseIf ((Local0 & One))
            {
                PSVF = One
                CRTF = Zero
            }
            Else
            {
                PSVF = Zero
                CRTF = Zero
            }

            Notify (\_TZ.THRM, 0x80) // Thermal Status Change
        }

        Method (_QCC, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x6D)
            }
            Else
            {
                Notify (SLPB, 0x80) // Status Change
            }
        }
    }

    Scope (WMI0)
    {
        Method (WGLN, 5, NotSerialized)
        {
            MF63 (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF64 (Arg0, Arg1, Arg2, Arg3, Arg4)
            WFLH (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF30 (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF1F (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF1X (Arg0, Arg1, Arg2, Arg3, Arg4)
        }
    }

    Scope (WMI0)
    {
        Method (MF63, 5, NotSerialized)
        {
            If ((Arg2 != 0x63))
            {
                Return (Zero)
            }

            OperationRegion (FM63, SystemMemory, Arg0, 0x08)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8
            }

            If ((Arg3 == One))
            {
                M631 (Arg0)
            }
            ElseIf ((Arg3 == 0x02))
            {
                M632 (Arg0, Arg4)
            }
            ElseIf ((Arg3 == 0x03))
            {
                M633 (Arg0)
            }
            ElseIf ((Arg3 == 0x04))
            {
                M634 (Arg0)
            }
            ElseIf ((Arg3 == 0x05))
            {
                M635 (Arg0)
            }
            ElseIf ((Arg3 == 0x06))
            {
                M636 (Arg0)
            }
            ElseIf ((Arg3 == 0x07))
            {
                M637 (Arg0)
            }
            ElseIf ((Arg3 == 0x08))
            {
                M638 (Arg0)
            }
            ElseIf ((Arg3 == 0x09))
            {
                M639 (Arg0)
            }
            ElseIf ((Arg3 == 0x0A))
            {
                M63A (Arg0)
            }
            ElseIf ((Arg3 == 0x0B))
            {
                M63B (Arg0)
            }
            ElseIf ((Arg3 == 0x0C))
            {
                M63C (Arg0)
            }
            ElseIf ((Arg3 == 0x0D))
            {
                M63D (Arg0)
            }
            ElseIf ((Arg3 == 0x0E))
            {
                M63E (Arg0)
            }
            ElseIf ((Arg2 == 0x0F))
            {
                M63F (Arg0)
            }
            Else
            {
                EM63 = One
            }

            If ((EM63 == Zero))
            {
                SM63 = 0x80
            }
            Else
            {
                SM63 = 0x82
            }

            Return (Zero)
        }

        Method (M631, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                TSXR,   8, 
                TSXL,   8
            }

            If ((FUNC == Zero))
            {
                TSXR = \_SB.PCI0.SBRG.EC0.RRAM (0x03E2)
            }
            ElseIf ((FUNC == One))
            {
                TSXR = \_SB.PCI0.SBRG.EC0.RRAM (0x03E0)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M632, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                DEVS,   8, 
                DEVT,   16
            }

            SM63 = 0x80
            EM63 = Zero
            If ((DEVS == Zero))
            {
                DEVT = TJMX /* \TJMX */
            }
            ElseIf ((DEVS == One))
            {
                DEVT = \_SB.PCI0.SBRG.EC0.TH0R
            }
            ElseIf ((DEVS == 0x02)) {}
            ElseIf ((DEVS == 0x03))
            {
                DEVT = \_SB.PCI0.SBRG.EC0.RRAM (0x03E0)
            }
            Else
            {
                SM63 = 0x80
                EM63 = One
            }

            Return (Zero)
        }

        Method (M633, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FANX,   8, 
                FANS,   8, 
                FANT,   16, 
                TRGG,   8
            }

            If ((FANX == Zero))
            {
                FANS = \_SB.PCI0.SBRG.EC0.F0CS
                FANT = \_SB.PCI0.SBRG.EC0.F0TS
                TRGG = \_SB.PCI0.SBRG.EC0.RRAM (0x0576)
            }
            ElseIf ((FANX == One))
            {
                FANS = \_SB.PCI0.SBRG.EC0.F1CS
                FANT = \_SB.PCI0.SBRG.EC0.F1TS
                TRGG = \_SB.PCI0.SBRG.EC0.RRAM (0x0577)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M634, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                PARA,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = ToInteger (PARA)
                If ((_T_0 == Zero))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0521)
                }
                ElseIf ((_T_0 == One))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0522)
                }
                ElseIf ((_T_0 == 0x02))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0523)
                }
                ElseIf ((_T_0 == 0x03))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0524)
                }
                ElseIf ((_T_0 == 0x04))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0518)
                }
                ElseIf ((_T_0 == 0x05))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0519)
                }
                ElseIf ((_T_0 == 0x06))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0568)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                _T_1 = ToInteger (PARA)
                If ((_T_1 == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0521, DATA)
                }
                ElseIf ((_T_1 == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0522, DATA)
                }
                ElseIf ((_T_1 == 0x02))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0523, DATA)
                }
                ElseIf ((_T_1 == 0x03))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0524, DATA)
                }
                ElseIf ((_T_1 == 0x04))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0518, DATA)
                }
                ElseIf ((_T_1 == 0x05))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0519, DATA)
                }
                ElseIf ((_T_1 == 0x06))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0568, DATA)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M635, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ECSD,   8, 
                OSSD,   8, 
                OSPV,   8, 
                THON,   8, 
                THOF,   8, 
                FNER,   8, 
                VGSD,   8
            }

            If ((FUNC == Zero))
            {
                ECSD = \_SB.PCI0.SBRG.EC0.RRAM (0x0530)
                OSSD = \_SB.PCI0.SBRG.EC0.RRAM (0x03E4)
                OSPV = \_SB.PCI0.SBRG.EC0.RRAM (0x03E5)
                THON = \_SB.PCI0.SBRG.EC0.RRAM (0x0533)
                THOF = \_SB.PCI0.SBRG.EC0.RRAM (0x0534)
                FNER = \_SB.PCI0.SBRG.EC0.RRAM (0x0535)
                VGSD = \_SB.PCI0.SBRG.EC0.RRAM (0x0536)
            }
            ElseIf ((FUNC == One))
            {
                \_SB.PCI0.SBRG.EC0.WRAM (0x0530, ECSD)
                \_SB.PCI0.SBRG.EC0.WRAM (0x03E4, OSSD)
                \_SB.PCI0.SBRG.EC0.WRAM (0x03E5, OSPV)
                \_SB.PCI0.SBRG.EC0.WRAM (0x0533, THON)
                \_SB.PCI0.SBRG.EC0.WRAM (0x0534, THOF)
                \_SB.PCI0.SBRG.EC0.WRAM (0x0535, FNER)
                \_SB.PCI0.SBRG.EC0.WRAM (0x0536, VGSD)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M636, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                TTS1,   8, 
                TTS2,   8, 
                TTS3,   8, 
                TTS4,   8, 
                TTS5,   8, 
                TTS6,   8, 
                TTS7,   8, 
                TTS8,   8, 
                TFFP,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    TTS1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0537)
                    TTS2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0538)
                    TTS3 = \_SB.PCI0.SBRG.EC0.RRAM (0x0539)
                    TTS4 = \_SB.PCI0.SBRG.EC0.RRAM (0x053A)
                    TTS5 = \_SB.PCI0.SBRG.EC0.RRAM (0x053B)
                    TTS6 = \_SB.PCI0.SBRG.EC0.RRAM (0x053C)
                    TTS7 = \_SB.PCI0.SBRG.EC0.RRAM (0x053D)
                    TTS8 = \_SB.PCI0.SBRG.EC0.RRAM (0x053E)
                    TFFP = \_SB.PCI0.SBRG.EC0.RRAM (0x053F)
                }
                ElseIf ((ALGM == One))
                {
                    TTS1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0597)
                    TTS2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0598)
                    TTS3 = \_SB.PCI0.SBRG.EC0.RRAM (0x0599)
                    TTS4 = \_SB.PCI0.SBRG.EC0.RRAM (0x059A)
                    TTS5 = \_SB.PCI0.SBRG.EC0.RRAM (0x059B)
                    TTS6 = \_SB.PCI0.SBRG.EC0.RRAM (0x059C)
                    TTS7 = \_SB.PCI0.SBRG.EC0.RRAM (0x059D)
                    TTS8 = \_SB.PCI0.SBRG.EC0.RRAM (0x059E)
                    TFFP = \_SB.PCI0.SBRG.EC0.RRAM (0x059F)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0537, TTS1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0538, TTS2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0539, TTS3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x053A, TTS4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x053B, TTS5)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x053C, TTS6)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x053D, TTS7)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x053E, TTS8)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x053F, TFFP)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0597, TTS1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0598, TTS2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0599, TTS3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x059A, TTS4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x059B, TTS5)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x059C, TTS6)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x059D, TTS7)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x059E, TTS8)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x059F, TFFP)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M637, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                TDA1,   8, 
                TDA2,   8, 
                TDA3,   8, 
                TDA4,   8, 
                TDA5,   8, 
                TDA6,   8, 
                TDA7,   8, 
                TDA8,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    TDA1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0548)
                    TDA2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0549)
                    TDA3 = \_SB.PCI0.SBRG.EC0.RRAM (0x054A)
                    TDA4 = \_SB.PCI0.SBRG.EC0.RRAM (0x054B)
                    TDA5 = \_SB.PCI0.SBRG.EC0.RRAM (0x054C)
                    TDA6 = \_SB.PCI0.SBRG.EC0.RRAM (0x054D)
                    TDA7 = \_SB.PCI0.SBRG.EC0.RRAM (0x054E)
                    TDA8 = \_SB.PCI0.SBRG.EC0.RRAM (0x054F)
                }
                ElseIf ((ALGM == One))
                {
                    TDA1 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A8)
                    TDA2 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A9)
                    TDA3 = \_SB.PCI0.SBRG.EC0.RRAM (0x05AA)
                    TDA4 = \_SB.PCI0.SBRG.EC0.RRAM (0x05AB)
                    TDA5 = \_SB.PCI0.SBRG.EC0.RRAM (0x05AC)
                    TDA6 = \_SB.PCI0.SBRG.EC0.RRAM (0x05AD)
                    TDA7 = \_SB.PCI0.SBRG.EC0.RRAM (0x05AE)
                    TDA8 = \_SB.PCI0.SBRG.EC0.RRAM (0x05AF)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0548, TDA1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0549, TDA2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x054A, TDA3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x054B, TDA4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x054C, TDA5)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x054D, TDA6)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x054E, TDA7)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x054F, TDA8)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A8, TDA1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A9, TDA2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05AA, TDA3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05AB, TDA4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05AC, TDA5)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05AD, TDA6)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05AE, TDA7)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05AF, TDA8)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M638, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                ASC1,   8, 
                ASC2,   8, 
                ASC3,   8, 
                ASC4,   8, 
                ADA1,   8, 
                ADA2,   8, 
                ADA3,   8, 
                ADA4,   8, 
                DSC1,   8, 
                DSC2,   8, 
                DSC3,   8, 
                DSC4,   8, 
                DDA1,   8, 
                DDA2,   8, 
                DDA3,   8, 
                DDA4,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    ASC1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0550)
                    ASC2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0551)
                    ASC3 = \_SB.PCI0.SBRG.EC0.RRAM (0x0552)
                    ASC4 = \_SB.PCI0.SBRG.EC0.RRAM (0x0553)
                    ADA1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0554)
                    ADA2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0555)
                    ADA3 = \_SB.PCI0.SBRG.EC0.RRAM (0x0556)
                    ADA4 = \_SB.PCI0.SBRG.EC0.RRAM (0x0557)
                    DSC1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0558)
                    DSC2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0559)
                    DSC3 = \_SB.PCI0.SBRG.EC0.RRAM (0x055A)
                    DSC4 = \_SB.PCI0.SBRG.EC0.RRAM (0x055B)
                    DDA1 = \_SB.PCI0.SBRG.EC0.RRAM (0x055C)
                    DDA2 = \_SB.PCI0.SBRG.EC0.RRAM (0x055D)
                    DDA3 = \_SB.PCI0.SBRG.EC0.RRAM (0x055E)
                    DDA4 = \_SB.PCI0.SBRG.EC0.RRAM (0x055F)
                }
                ElseIf ((ALGM == One))
                {
                    ASC1 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B0)
                    ASC2 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B1)
                    ASC3 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B2)
                    ASC4 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B3)
                    ADA1 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B4)
                    ADA2 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B5)
                    ADA3 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B6)
                    ADA4 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B7)
                    DSC1 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B8)
                    DSC2 = \_SB.PCI0.SBRG.EC0.RRAM (0x05B9)
                    DSC3 = \_SB.PCI0.SBRG.EC0.RRAM (0x05BA)
                    DSC4 = \_SB.PCI0.SBRG.EC0.RRAM (0x05BB)
                    DDA1 = \_SB.PCI0.SBRG.EC0.RRAM (0x05BC)
                    DDA2 = \_SB.PCI0.SBRG.EC0.RRAM (0x05BD)
                    DDA3 = \_SB.PCI0.SBRG.EC0.RRAM (0x05BE)
                    DDA4 = \_SB.PCI0.SBRG.EC0.RRAM (0x05BF)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0550, ASC1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0551, ASC2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0552, ASC3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0553, ASC4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0554, ADA1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0555, ADA2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0556, ADA3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0557, ADA4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0558, DSC1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0559, DSC2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x055A, DSC3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x055B, DSC4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x055C, DDA1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x055D, DDA2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x055E, DDA3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x055F, DDA4)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B0, ASC1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B1, ASC2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B2, ASC3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B3, ASC4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B4, ADA1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B5, ADA2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B6, ADA3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B7, ADA4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B8, DSC1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05B9, DSC2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05BA, DSC3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05BB, DSC4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05BC, DDA1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05BD, DDA2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05BE, DDA3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05BF, DDA4)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M639, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                HYS1,   8, 
                HYS2,   8, 
                HYS3,   8, 
                HYS4,   8, 
                HYS5,   8, 
                HYS6,   8, 
                HYS7,   8, 
                HYS8,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    HYS1 = \_SB.PCI0.SBRG.EC0.RRAM (0x0540)
                    HYS2 = \_SB.PCI0.SBRG.EC0.RRAM (0x0541)
                    HYS3 = \_SB.PCI0.SBRG.EC0.RRAM (0x0542)
                    HYS4 = \_SB.PCI0.SBRG.EC0.RRAM (0x0543)
                    HYS5 = \_SB.PCI0.SBRG.EC0.RRAM (0x0544)
                    HYS6 = \_SB.PCI0.SBRG.EC0.RRAM (0x0545)
                    HYS7 = \_SB.PCI0.SBRG.EC0.RRAM (0x0546)
                    HYS8 = \_SB.PCI0.SBRG.EC0.RRAM (0x0547)
                }
                ElseIf ((ALGM == One))
                {
                    HYS1 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A0)
                    HYS2 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A1)
                    HYS3 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A2)
                    HYS4 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A3)
                    HYS5 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A4)
                    HYS6 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A5)
                    HYS7 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A6)
                    HYS8 = \_SB.PCI0.SBRG.EC0.RRAM (0x05A7)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0540, HYS1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0541, HYS2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0542, HYS3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0543, HYS4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0544, HYS5)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0545, HYS6)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0546, HYS7)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0547, HYS8)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A0, HYS1)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A1, HYS2)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A2, HYS3)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A3, HYS4)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A4, HYS5)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A5, HYS6)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A6, HYS7)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05A7, HYS8)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M63A, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                TA1L,   8, 
                TA1H,   8, 
                TA2L,   8, 
                TA2H,   8, 
                TA3L,   8, 
                TA3H,   8, 
                TA4L,   8, 
                TA4H,   8, 
                TA5L,   8, 
                TA5H,   8, 
                TA6L,   8, 
                TA6H,   8, 
                TA7L,   8, 
                TA7H,   8, 
                TA8L,   8, 
                TA8H,   8
            }

            If ((FUNC == Zero))
            {
                If ((FANX == Zero))
                {
                    TA1L = \_SB.PCI0.SBRG.EC0.RRAM (0x05C0)
                    TA1H = \_SB.PCI0.SBRG.EC0.RRAM (0x05C1)
                    TA2L = \_SB.PCI0.SBRG.EC0.RRAM (0x05C2)
                    TA2H = \_SB.PCI0.SBRG.EC0.RRAM (0x05C3)
                    TA3L = \_SB.PCI0.SBRG.EC0.RRAM (0x05C4)
                    TA3H = \_SB.PCI0.SBRG.EC0.RRAM (0x05C5)
                    TA4L = \_SB.PCI0.SBRG.EC0.RRAM (0x05C6)
                    TA4H = \_SB.PCI0.SBRG.EC0.RRAM (0x05C7)
                    TA5L = \_SB.PCI0.SBRG.EC0.RRAM (0x05C8)
                    TA5H = \_SB.PCI0.SBRG.EC0.RRAM (0x05C9)
                    TA6L = \_SB.PCI0.SBRG.EC0.RRAM (0x05CA)
                    TA6H = \_SB.PCI0.SBRG.EC0.RRAM (0x05CB)
                    TA7L = \_SB.PCI0.SBRG.EC0.RRAM (0x05CC)
                    TA7H = \_SB.PCI0.SBRG.EC0.RRAM (0x05CD)
                    TA8L = \_SB.PCI0.SBRG.EC0.RRAM (0x05CE)
                    TA8H = \_SB.PCI0.SBRG.EC0.RRAM (0x05CF)
                }
                ElseIf ((FANX == One))
                {
                    TA1L = \_SB.PCI0.SBRG.EC0.RRAM (0x05D0)
                    TA1H = \_SB.PCI0.SBRG.EC0.RRAM (0x05D1)
                    TA2L = \_SB.PCI0.SBRG.EC0.RRAM (0x05D2)
                    TA2H = \_SB.PCI0.SBRG.EC0.RRAM (0x05D3)
                    TA3L = \_SB.PCI0.SBRG.EC0.RRAM (0x05D4)
                    TA3H = \_SB.PCI0.SBRG.EC0.RRAM (0x05D5)
                    TA4L = \_SB.PCI0.SBRG.EC0.RRAM (0x05D6)
                    TA4H = \_SB.PCI0.SBRG.EC0.RRAM (0x05D7)
                    TA5L = \_SB.PCI0.SBRG.EC0.RRAM (0x05D8)
                    TA5H = \_SB.PCI0.SBRG.EC0.RRAM (0x05D9)
                    TA6L = \_SB.PCI0.SBRG.EC0.RRAM (0x05DA)
                    TA6H = \_SB.PCI0.SBRG.EC0.RRAM (0x05DB)
                    TA7L = \_SB.PCI0.SBRG.EC0.RRAM (0x05DC)
                    TA7H = \_SB.PCI0.SBRG.EC0.RRAM (0x05DD)
                    TA8L = \_SB.PCI0.SBRG.EC0.RRAM (0x05DE)
                    TA8H = \_SB.PCI0.SBRG.EC0.RRAM (0x05DF)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((FANX == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C0, TA1L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C1, TA1H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C2, TA2L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C3, TA2H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C4, TA3L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C5, TA3H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C6, TA4L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C7, TA4H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C8, TA5L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05C9, TA5H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05CA, TA6L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05CB, TA6H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05CC, TA7L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05CD, TA7H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05CE, TA8L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05CF, TA8H)
                }
                ElseIf ((FANX == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D0, TA1L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D1, TA1H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D2, TA2L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D3, TA2H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D4, TA3L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D5, TA3H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D6, TA4L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D7, TA4H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D8, TA5L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05D9, TA5H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05DA, TA6L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05DB, TA6H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05DC, TA7L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05DD, TA7H)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05DE, TA8L)
                    \_SB.PCI0.SBRG.EC0.WRAM (0x05DF, TA8H)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M63B, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                PARA,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                If ((PARA == Zero))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0569)
                }
                ElseIf ((PARA == One))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x056A)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((PARA == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0569, DATA)
                }
                ElseIf ((PARA == One))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x056A, DATA)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M63C, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0511)
            }
            ElseIf ((FUNC == One))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0512)
            }
            ElseIf ((FUNC == 0x02))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RRAM (0x0513)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M63D, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FREQ,   16
            }

            If ((FUNC == Zero))
            {
                Local0 = 0x017D7840
                Local1 = \_SB.PCI0.SBRG.EC0.RRAM (0xF4A0)
                Local1 += One
                Local2 = \_SB.PCI0.SBRG.EC0.RRAM (0xF4A2)
                Local2 += One
                Local2 *= Local1
                Divide (Local0, Local2, Local3, Local1)
                FREQ = Local1
            }
            ElseIf ((FUNC == One))
            {
                FREQ = Zero
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M63E, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                FAND,   8
            }

            If ((FUNC == Zero))
            {
                If ((FANX == Zero))
                {
                    FAND = \_SB.PCI0.SBRG.EC0.RFOV (Zero)
                }
                ElseIf ((FANX == One))
                {
                    FAND = \_SB.PCI0.SBRG.EC0.RFOV (One)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((FANX == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WFOV (Zero, FAND)
                }
                ElseIf ((FANX == One))
                {
                    \_SB.PCI0.SBRG.EC0.WFOV (One, FAND)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (M63F, 1, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                DIFF,   8
            }

            If ((FUNC == Zero))
            {
                If ((FANX == Zero))
                {
                    DIFF = \_SB.PCI0.SBRG.EC0.RRAM (0x0564)
                }
                ElseIf ((FANX == One))
                {
                    DIFF = 0xFF
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((FANX == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WRAM (0x0564, DIFF)
                }
                ElseIf ((FANX == One)) {}
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }
    }

    Scope (WMI0)
    {
        Method (MF64, 5, NotSerialized)
        {
            If ((Arg2 != 0x64))
            {
                Return (Zero)
            }

            WSMI (Arg4)
            Return (Zero)
        }
    }

    Scope (WMI0)
    {
        Method (MF30, 5, NotSerialized)
        {
            If ((Arg2 != 0x30))
            {
                Return (Zero)
            }

            OperationRegion (FM30, SystemMemory, Arg0, 0x08)
            Field (FM30, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM30,   8, 
                EM30,   8
            }

            If ((Arg3 == One))
            {
                EM30 = EC01 (Arg0)
            }
            ElseIf ((Arg3 == 0x02))
            {
                EM30 = EC02 (Arg0)
            }
            ElseIf ((Arg3 == 0x80))
            {
                EM30 = EC80 (Arg0)
            }
            ElseIf ((Arg3 == 0x81))
            {
                EM30 = EC81 (Arg0)
            }
            ElseIf ((Arg3 == 0x83))
            {
                EM30 = EC83 (Arg0)
            }
            ElseIf ((Arg3 == 0x84))
            {
                EM30 = EC84 (Arg0)
            }
            ElseIf (((Arg3 >= 0x80) & (Arg3 < 0x83)))
            {
                WSMI (Arg4)
            }
            Else
            {
                EM30 = One
            }

            If ((EM30 == Zero))
            {
                SM30 = 0x80
            }
            Else
            {
                SM30 = 0x82
            }

            Return (Zero)
        }

        Method (EC01, 1, NotSerialized)
        {
            OperationRegion (FEC1, SystemMemory, Arg0, 0x10)
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

            Local0 = \_SB.PCI0.SBRG.EC0.ECXT (ECMD, EDA1, EDA2, EDA3, EDA4, EDA5)
            EDA1 = DerefOf (Local0 [One])
            EDA2 = DerefOf (Local0 [0x02])
            EDA3 = DerefOf (Local0 [0x03])
            EDA4 = DerefOf (Local0 [0x04])
            EDA5 = DerefOf (Local0 [0x05])
            Return (DerefOf (Local0 [Zero]))
        }

        Method (EC02, 1, NotSerialized)
        {
            OperationRegion (FEC2, SystemMemory, Arg0, 0x30)
            Field (FEC2, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM30,   8, 
                EM30,   8, 
                BUSN,   8, 
                PROT,   8, 
                DADD,   8, 
                DREG,   8, 
                DAT0,   8, 
                DAT1,   8, 
                BLEN,   8, 
                REVB,   8, 
                BLK1,   32, 
                BLK2,   32, 
                BLK3,   32, 
                BLK4,   32, 
                BLK5,   32, 
                BLK6,   32, 
                BLK7,   32, 
                BLK8,   32
            }

            Local0 = \_SB.PCI0.SBRG.EC0.ECSB (BUSN, PROT, DADD, DREG, DAT0, DAT1)
            DAT0 = DerefOf (Local0 [One])
            DAT1 = DerefOf (Local0 [0x02])
            BLEN = DerefOf (Local0 [0x03])
            Name (BKUF, Buffer (0x20) {})
            CreateDWordField (BKUF, Zero, DD01)
            CreateDWordField (BKUF, 0x04, DD02)
            CreateDWordField (BKUF, 0x08, DD03)
            CreateDWordField (BKUF, 0x0C, DD04)
            CreateDWordField (BKUF, 0x10, DD05)
            CreateDWordField (BKUF, 0x14, DD06)
            CreateDWordField (BKUF, 0x18, DD07)
            CreateDWordField (BKUF, 0x1C, DD08)
            BKUF = DerefOf (Local0 [0x04])
            BLK1 = DD01 /* \WMI0.EC02.DD01 */
            BLK2 = DD02 /* \WMI0.EC02.DD02 */
            BLK3 = DD03 /* \WMI0.EC02.DD03 */
            BLK4 = DD04 /* \WMI0.EC02.DD04 */
            BLK5 = DD05 /* \WMI0.EC02.DD05 */
            BLK6 = DD06 /* \WMI0.EC02.DD06 */
            BLK7 = DD07 /* \WMI0.EC02.DD07 */
            BLK8 = DD08 /* \WMI0.EC02.DD08 */
            Local2 = DerefOf (Local0 [Zero])
            Local2 &= 0x3F
            Return (Local2)
        }

        Method (EC80, 1, NotSerialized)
        {
            Local0 = \_SB.PCI0.SBRG.EC0.SMTC (Zero)
            Return (Zero)
        }

        Method (EC81, 1, NotSerialized)
        {
            OperationRegion (CRGS, SystemMemory, Arg0, 0x10)
            Field (CRGS, ByteAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                FUNC,   8, 
                BATT,   8
            }

            Local0 = \_SB.PCI0.SBRG.EC0.RRAM (0x0620)
            If ((FUNC == Zero))
            {
                Local0 &= 0x7F
            }
            ElseIf ((FUNC == One))
            {
                Local0 |= 0x80
            }

            \_SB.PCI0.SBRG.EC0.WRAM (0x0620, Local0)
            Return (Zero)
        }

        Method (EC84, 1, NotSerialized)
        {
            OperationRegion (ECEG, SystemMemory, Arg0, 0x10)
            Field (ECEG, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EVTP,   8, 
                EVID,   8
            }

            \_SB.PCI0.SBRG.EC0.ECXT (0xAE, EVTP, EVID, Zero, Zero, Zero)
            Return (Zero)
        }

        Method (EC83, 1, NotSerialized)
        {
            Name (FBDT, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               /* ...... */
            })
            OperationRegion (ECGC, SystemMemory, Arg0, 0x10)
            Field (ECGC, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8, 
                FUNC,   8, 
                PORT,   8, 
                PIND,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RPIN (PORT, PIND)
            }
            ElseIf ((FUNC == One))
            {
                \_SB.PCI0.SBRG.EC0.SMTC (One)
                \_SB.PCI0.SBRG.EC0.SPIN (PORT, PIND, DATA)
            }
            Else
            {
                Return (One)
            }

            Return (Zero)
        }
    }

    Scope (WMI0)
    {
        Method (MF1F, 5, NotSerialized)
        {
            If ((Arg2 == 0x1F))
            {
                OperationRegion (F01F, SystemMemory, Arg0, 0x08)
                Field (F01F, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                WSMI (Arg4)
                STAS &= 0xFE
            }

            If ((Arg3 == One)) {}
            If ((Arg3 == 0x02))
            {
                OperationRegion (F1F2, SystemMemory, Arg0, 0x0A)
                Field (F1F2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    DEV1,   4, 
                    DEV2,   4, 
                    DEV3,   4, 
                    DEV4,   4
                }

                If ((DEV1 == 0x03))
                {
                    ISMI (0xC8)
                }
            }

            If ((Arg3 == 0x06))
            {
                P80H = 0x61
                ISMI (0xC5)
            }

            If ((Arg3 == 0x90))
            {
                ISMI (0xC7)
            }
        }
    }

    Scope (WMI0)
    {
        Method (MF1X, 5, NotSerialized)
        {
            If (((Arg2 & 0xF0) != 0x10))
            {
                Return (Zero)
            }

            If ((Arg2 == 0x1F))
            {
                Return (Zero)
            }

            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If ((Arg2 == 0x10))
            {
                MF10 (Arg0, Arg3)
            }
            ElseIf ((Arg2 == 0x11))
            {
                MF11 (Arg0, Arg3)
            }
            ElseIf ((Arg2 == 0x17))
            {
                MF17 (Arg0, Arg3, Arg4)
            }
            Else
            {
                EM1X = One
            }

            If ((EM1X == Zero))
            {
                SM1X = 0x80
            }
            Else
            {
                SM1X = 0x82
            }

            Return (Zero)
        }

        Method (MF10, 2, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If ((Arg1 == Zero))
            {
                G10V (Arg0)
            }
            ElseIf ((Arg1 == One))
            {
                SRTC (Arg0)
            }
            Else
            {
                EM1X = One
            }
        }

        Method (G10V, 1, NotSerialized)
        {
            OperationRegion (\F100, SystemMemory, Arg0, 0x10)
            Field (F100, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            MVER = Zero
            SVER = Zero
        }

        Method (SRTC, 1, NotSerialized)
        {
            OperationRegion (\F0A1, SystemMemory, Arg0, 0x10)
            Field (F0A1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DLTM,   16
            }

            RTWT = DLTM /* \WMI0.SRTC.DLTM */
        }

        Method (MF11, 2, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If ((Arg1 == Zero))
            {
                Local0 = G11V (Arg0)
            }
            ElseIf ((Arg1 == One))
            {
                Local0 = GBAT (Arg0)
            }
            ElseIf ((Arg1 == 0x02))
            {
                Local0 = ASBR (Arg0)
            }
            ElseIf ((Arg1 == 0x03))
            {
                Local0 = ASBE (Arg0)
            }
            ElseIf ((Arg1 == 0x04))
            {
                Local0 = BTCR (Arg0)
            }
            ElseIf ((Arg1 == 0x05))
            {
                OperationRegion (M115, SystemMemory, Arg0, 0x0B)
                Field (M115, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    ACT1,   8, 
                    WDOG,   16
                }

                If ((ACT1 == Zero)) {}
                Else
                {
                }

                Local0 = Zero
            }
            ElseIf ((Arg1 == 0x80))
            {
                Local0 = GTSB (Arg0, Arg1)
            }
            ElseIf ((Arg1 == 0x81))
            {
                Local0 = GPST (Arg0, Arg1)
            }
            ElseIf ((Arg1 == 0x82))
            {
                Local0 = SBSM (Arg0)
            }
            Else
            {
                EM1X = One
            }

            Return (Local0)
        }

        Method (G11V, 1, NotSerialized)
        {
            OperationRegion (\M410, SystemMemory, Arg0, 0x10)
            Field (M410, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            MVER = Zero
            SVER = Zero
            Return (Zero)
        }

        Method (GBAT, 1, NotSerialized)
        {
            OperationRegion (\M411, SystemMemory, Arg0, 0x10)
            Field (M411, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BTNM,   8, 
                BTTP,   8
            }

            BTNM = One
            BTTP = Zero
            Return (Zero)
        }

        Method (ASBR, 1, NotSerialized)
        {
            OperationRegion (\M412, SystemMemory, Arg0, 0x30)
            Field (M412, DWordAcc, NoLock, Preserve)
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

            If ((BATN >= One))
            {
                Return (0x11)
            }

            If ((BATA == Zero))
            {
                Local0 = \_SB.PCI0.SBRG.EC0.SMBR (\_SB.PCI0.SBRG.EC0.RDWD, \_SB.PCI0.SBRG.EC0.BADR, REGS)
                BDAT = DerefOf (Local0 [0x02])
                Local2 = DerefOf (Local0 [Zero])
                Local2 &= 0x1F
                If (Local2)
                {
                    Local2 += 0x10
                }

                Return (Local2)
            }

            If ((BATA == One))
            {
                Local0 = \_SB.PCI0.SBRG.EC0.SMBW (\_SB.PCI0.SBRG.EC0.WRWD, \_SB.PCI0.SBRG.EC0.BADR, REGS, 0x02, BDAT)
                Local2 = DerefOf (Local0 [Zero])
                Local2 &= 0x1F
                If (Local2)
                {
                    Local2 += 0x10
                }

                Return (Local2)
            }

            If ((BATA == 0x02))
            {
                Name (BKUF, Buffer (0x20) {})
                Local0 = \_SB.PCI0.SBRG.EC0.SMBR (\_SB.PCI0.SBRG.EC0.RDBL, \_SB.PCI0.SBRG.EC0.BADR, REGS)
                BKUF = DerefOf (Local0 [0x02])
                BLEN = DerefOf (Local0 [One])
                Local2 = DerefOf (Local0 [Zero])
                CreateDWordField (BKUF, Zero, DAT1)
                CreateDWordField (BKUF, 0x04, DAT2)
                CreateDWordField (BKUF, 0x08, DAT3)
                CreateDWordField (BKUF, 0x0C, DAT4)
                CreateDWordField (BKUF, 0x10, DAT5)
                CreateDWordField (BKUF, 0x14, DAT6)
                CreateDWordField (BKUF, 0x18, DAT7)
                CreateDWordField (BKUF, 0x1C, DAT8)
                BKUF = DerefOf (Local0 [0x02])
                BLK1 = DAT1 /* \WMI0.ASBR.DAT1 */
                BLK2 = DAT2 /* \WMI0.ASBR.DAT2 */
                BLK3 = DAT3 /* \WMI0.ASBR.DAT3 */
                BLK4 = DAT4 /* \WMI0.ASBR.DAT4 */
                BLK5 = DAT5 /* \WMI0.ASBR.DAT5 */
                BLK6 = DAT6 /* \WMI0.ASBR.DAT6 */
                BLK7 = DAT7 /* \WMI0.ASBR.DAT7 */
                BLK8 = DAT8 /* \WMI0.ASBR.DAT8 */
                BLEN = DerefOf (Local0 [One])
                Local2 = DerefOf (Local0 [Zero])
                Local2 &= 0x1F
                If (Local2)
                {
                    Local2 += 0x10
                }

                Return (Local2)
            }

            Return (0x10)
        }

        Method (ASBE, 1, Serialized)
        {
            OperationRegion (\M413, SystemMemory, Arg0, 0x10)
            Field (M413, ByteAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BATN,   8, 
                BATA,   8, 
                REGS,   8, 
                BDAT,   8
            }

            If ((BATN > One))
            {
                Return (0x11)
            }

            Return (0x10)
        }

        Method (BTCR, 1, NotSerialized)
        {
            OperationRegion (\M414, SystemMemory, Arg0, 0x10)
            Field (M414, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BCDC,   8
            }

            Return (Zero)
        }

        Method (GTSB, 2, NotSerialized)
        {
            OperationRegion (\M418, SystemMemory, Arg0, Arg1)
            Field (M418, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BAST,   16
            }

            Local0 = \_SB.PCI0.SBRG.EC0.SMBR (\_SB.PCI0.SBRG.EC0.RDWD, 0x16, Zero)
            BAST = DerefOf (Local0 [0x02])
            Local1 = DerefOf (Local0 [Zero])
            Local1 &= 0x1F
            If (Local1)
            {
                Local1 += 0x10
            }

            Return (Local1)
        }

        Method (GPST, 2, NotSerialized)
        {
            OperationRegion (\M419, SystemMemory, Arg0, Arg1)
            Field (M419, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SORC,   8, 
                GPCT,   8
            }

            If (((SORC == Zero) | (SORC > 0x03)))
            {
                Return (One)
            }

            If ((SORC == One))
            {
                GPCT = \_SB.PCI0.SBRG.EC0.RPIN (0x02, 0x04)
            }
            ElseIf ((SORC == 0x02))
            {
                Local0 = \_SB.PCI0.SBRG.EC0.RPIN (0x02, 0x06)
                If (Local0)
                {
                    GPCT = Zero
                }
                Else
                {
                    GPCT = One
                }
            }
            ElseIf ((SORC == 0x03))
            {
                Local0 = \_SB.PCI0.SBRG.EC0.RPIN (0x09, 0x09)
                If (Local0)
                {
                    GPCT = Zero
                }
                Else
                {
                    GPCT = One
                }
            }

            Return (Zero)
        }

        Method (SBSM, 1, NotSerialized)
        {
            OperationRegion (\F1A3, SystemMemory, Arg0, 0x10)
            Field (F1A3, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EABL,   8
            }

            If ((EABL == One))
            {
                \_SB.PCI0.SBRG.EC0.WRAM (0x07FE, 0x80)
                \_SB.PCI0.SBRG.EC0.SMBW (\_SB.PCI0.SBRG.EC0.WRWD, \_SB.PCI0.SBRG.EC0.BADR, Zero, Zero, 0x1000)
                \_SB.PCI0.SBRG.EC0.WRAM (0x07FE, 0x80)
                \_SB.PCI0.SBRG.EC0.SMBW (\_SB.PCI0.SBRG.EC0.WRWD, \_SB.PCI0.SBRG.EC0.BADR, Zero, Zero, 0x1000)
            }

            Return (Zero)
        }

        Method (MF17, 3, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If ((Arg1 == Zero))
            {
                G17V (Arg0)
            }
            ElseIf ((Arg1 == 0x03))
            {
                GECI (Arg0)
            }
            Else
            {
                EM1X = One
            }
        }

        Method (G17V, 1, NotSerialized)
        {
            OperationRegion (\F170, SystemMemory, Arg0, 0x10)
            Field (F170, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            MVER = Zero
            SVER = Zero
        }

        Method (GECI, 1, NotSerialized)
        {
            OperationRegion (\M173, SystemMemory, Arg0, 0x20)
            Field (M173, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ELEN,   8, 
                EDL1,   8, 
                EDL2,   8, 
                EDL3,   8, 
                EDL4,   8, 
                EDL5,   8, 
                EDL6,   8, 
                EDL7,   8, 
                EDL8,   8, 
                EDL9,   8, 
                EDLA,   8, 
                EDLB,   8
            }

            EDL1 = Zero
            EDL2 = Zero
            EDL3 = Zero
            EDL4 = Zero
            ELEN = 0x0B
            EDL1 = 0x32
            EDL2 = 0x33
            EDL3 = 0x30
            EDL4 = 0x30
            EDL5 = 0x30
            EDL6 = 0x30
            EDL7 = 0x30
            EDL8 = 0x46
            EDL9 = 0x31
            EDLA = 0x30
            Return (One)
        }
    }

    Scope (WMI0)
    {
        Method (FSMI, 1, NotSerialized)
        {
            PFSF = Arg0
            Local0 = (Arg0 | 0xA0)
            ISMI (0xDC)
            Return (PFST) /* \PFST */
        }

        Method (WFLH, 5, Serialized)
        {
            If ((Arg2 == 0x66))
            {
                If ((Arg3 == One))
                {
                    OperationRegion (WFLS, SystemMemory, Arg0, 0x0100)
                    Field (WFLS, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x06), 
                        STAS,   8, 
                        REST,   8, 
                        PFSF,   8, 
                        PFST,   16, 
                        PFAD,   32, 
                        PFSZ,   16
                    }

                    STAS &= 0xFE
                    STAS |= 0x80
                    TRTY = 0xDC
                    \PFSF = PFSF /* \WMI0.WFLH.PFSF */
                    \PFST = PFST /* \WMI0.WFLH.PFST */
                    \PFAD = PFAD /* \WMI0.WFLH.PFAD */
                    \PFSZ = PFSZ /* \WMI0.WFLH.PFSZ */
                    If ((PFSF == One))
                    {
                        \PFAD = Arg1
                    }
                    ElseIf ((PFSF == 0x80))
                    {
                        PFAD = Arg1
                        Local0 = 0x012C
                        While ((Local0 && TRTY))
                        {
                            Sleep (One)
                            Local0--
                        }
                    }

                    ISMI (0xDC)
                    PFSF = \PFSF
                    PFST = \PFST
                    PFAD = \PFAD
                    PFSZ = \PFSZ
                    STAS &= 0xFE
                    STAS |= 0x80
                }
                Else
                {
                    WSMI (Arg4)
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x10, 
                0x05
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                LDST = Arg0
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Local0 = One
                Local0 = ^^PCI0.SBRG.EC0.RPIN (0x04, 0x06)
                If ((Local0 == Ones))
                {
                    Local0 = One
                }

                LDST = Local0
                Return (Local0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (LID, 0x80) // Status Change
        }
    }

    Scope (\)
    {
        Name (TSP, 0x0A)
        Name (TC1, 0x02)
        Name (TC2, 0x0A)
        Name (PSVF, Zero)
        Name (CRTF, Zero)
        Name (TCRT, 0x7F)
        Name (TPSV, 0x7F)
    }

    Scope (_TZ)
    {
        Method (KELV, 2, NotSerialized)
        {
            Local0 = (Arg0 & 0xFF)
            If ((Local0 >= 0x80))
            {
                Local0 = (0x0100 - Local0)
                Local0 *= 0x0A
                Local0 = (0x0AAC - Local0)
                Return (Local0)
            }

            Local0 *= 0x0A
            Local0 += 0x0AAC
            If ((Arg1 == One))
            {
                Local0 += 0x09
            }

            Return (Local0)
        }

        Method (CELC, 1, NotSerialized)
        {
            Local0 = (Arg0 - 0x0AAC)
            Divide (Local0, 0x0A, Local1, Local0)
            Return (Local0)
        }

        Name (PLCY, Zero)
        ThermalZone (THRM)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                TCRT = \_SB.PCI0.SBRG.EC0.RCRT ()
                Return (KELV (TCRT, Zero))
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Local1 = 0x05
                While (Local1)
                {
                    Local0 = \_SB.PCI0.SBRG.EC0.RTMP ()
                    If ((Local0 >= TPSV))
                    {
                        Local1--
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }

                If ((PSVF == One))
                {
                    If ((Local0 >= \_SB.PCI0.SBRG.EC0.RPSV ()))
                    {
                        P80H = 0x11
                        Local2 = TPSV /* \TPSV */
                        Return (KELV (Local2, One))
                    }
                    Else
                    {
                        Local2 = (\_SB.PCI0.SBRG.EC0.RPSV () - 0x03)
                        If ((Local2 >= Local0))
                        {
                            P80H = 0x33
                            PSVF = Zero
                        }
                    }
                }

                If ((CRTF == One))
                {
                    If ((Local0 >= \_SB.PCI0.SBRG.EC0.RCRT ()))
                    {
                        P80H = 0x22
                        Local2 = TCRT /* \TCRT */
                        Return (KELV (Local2, Zero))
                    }
                }

                Local0 = (TPSV - One)
                Return (KELV (Local0, Zero))
            }

            Method (_PSL, 0, NotSerialized)  // _PSL: Passive List
            {
                Return (Package (0x04)
                {
                    \_PR.P000, 
                    \_PR.P001, 
                    \_PR.P002, 
                    \_PR.P003
                })
            }

            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Local0 = (TSP * 0x0A)
                Return (Local0)
            }

            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1) /* \TC1_ */
            }

            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2) /* \TC2_ */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                TPSV = \_SB.PCI0.SBRG.EC0.RPSV ()
                Return (KELV (TPSV, Zero))
            }

            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                PLCY = Arg0
                Notify (THRM, 0x81) // Thermal Trip Point Change
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
            {
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                If (((SUPP & 0x16) != 0x16))
                {
                    (CTRL & 0x1E)
                }

                If (!PEHP)
                {
                    CTRL &= 0x1E
                }

                If (!SHPC)
                {
                    CTRL &= 0x1D
                }

                If (!PEPM)
                {
                    CTRL &= 0x1B
                }

                If (!PEER)
                {
                    CTRL &= 0x15
                }

                If (!PECS)
                {
                    CTRL &= 0x0F
                }

                If (OSCF)
                {
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One)) {}
                        If ((CTRL & 0x04))
                        {
                            EPNM = One
                        }
                        Else
                        {
                            EPNM = Zero
                        }

                        If ((CTRL & 0x10)) {}
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

                CDW3 = CTRL /* \_SB_.PCI0._OSC.CTRL */
                Return (Arg3)
            }
            Else
            {
                CDW1 |= 0x04
                Return (Arg3)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSFL ()
            ^GNBD.GINI ()
            If ((RVID <= 0x13)) {}
            If (IMCS)
            {
                IBWE ()
            }

            If ((OSFL () >= 0x0F))
            {
                ^SBRG.EC0.WRAM (0x0C0C, 0x80)
            }

            ^SBRG.EC0.WRAM (0x038A, Zero)
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Scope (SBRG)
            {
                Method (RRIO, 4, NotSerialized)
                {
                    Debug = "RRIO"
                }

                Method (RDMA, 3, NotSerialized)
                {
                    Debug = "rDMA"
                }
            }
        }
    }

    Device (HPET)
    {
        Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
        Name (CRS, ResourceTemplate ()
        {
            Memory32Fixed (ReadOnly,
                0x00000000,         // Address Base
                0x00000000,         // Address Length
                _Y16)
            IRQNoFlags ()
                {0}
            IRQNoFlags ()
                {8}
        })
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (((HPAD & 0x03) == 0x03))
            {
                If ((OSVR >= 0x0C))
                {
                    Return (0x0F)
                }

                HPAD = (HPAD & 0xFFFFFFE0)
                Return (One)
            }

            Return (One)
        }

        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            CreateDWordField (CRS, \HPET._Y16._BAS, HPTX)  // _BAS: Base Address
            CreateDWordField (CRS, \HPET._Y16._LEN, HPTY)  // _LEN: Length
            HPTX = HPTB /* \HPTB */
            HPTY = HPTL /* \HPTL */
            Return (CRS) /* \HPET.CRS_ */
        }
    }

    Scope (_PR)
    {
        OperationRegion (SSDT, SystemMemory, 0xFFFF0000, 0xFFFF)
        Name (DCOR, 0x02)
        Name (TBLD, 0x04)
        Name (NPSS, 0x05)
        Name (HNDL, 0x80000000)
        Name (APSS, Package (0x0A)
        {
            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }
        })
        Processor (P000, 0x01, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P000._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P001, 0x02, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P001._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P002, 0x03, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P002._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P003, 0x04, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P003._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        DBG8 = Arg0
        If (((Arg0 == 0x04) && (OSFL () == 0x02)))
        {
            Sleep (0x0BB8)
        }

        PTS (Arg0)
        WAKP [Zero] = Zero
        WAKP [One] = Zero
        WSSB = ASSB /* \ASSB */
        WOTB = AOTB /* \AOTB */
        WAXB = AAXB /* \AAXB */
        ASSB = Arg0
        AOTB = OSFL ()
        AAXB = Zero
        \_SB.SLPS = One
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        DBG8 = (Arg0 << 0x04)
        WAK (Arg0)
        If (ASSB)
        {
            ASSB = WSSB /* \WSSB */
            AOTB = WOTB /* \WOTB */
            AAXB = WAXB /* \WAXB */
        }

        Notify (\_SB.PWRB, 0x02) // Device Wake
        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }

        Return (WAKP) /* \WAKP */
    }

    Device (OMSC)
    {
        Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
        Name (_UID, 0x0E11)  // _UID: Unique ID
    }

    Device (_SB.RMEM)
    {
        Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
    }

    Scope (_SB.PCI0.OHC2)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT5)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        Zero, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.OHC2.RHUB.PRT5._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Name (PLDP, Package (0x01)
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    })
                    Return (PLDP) /* \_SB_.PCI0.OHC2.RHUB.PRT5._PLD.PLDP */
                }
            }
        }
    }

    Scope (_SB.PCI0.EHC2)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT4)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        Zero, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.EHC2.RHUB.PRT4._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Name (PLDP, Package (0x01)
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0008 */  0xA1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    })
                    Return (PLDP) /* \_SB_.PCI0.EHC2.RHUB.PRT4._PLD.PLDP */
                }
            }

            Device (PRT5)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        Zero, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.EHC2.RHUB.PRT5._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Name (PLDP, Package (0x01)
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    })
                    Return (PLDP) /* \_SB_.PCI0.EHC2.RHUB.PRT5._PLD.PLDP */
                }
            }
        }
    }

    Scope (_SB.PCI0.EHC2.RHUB.PRT4)
    {
        Device (CAM0)
        {
            Name (_ADR, 0x04)  // _ADR: Address
            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
            {
                ToPLD (
                    PLD_Revision       = 0x2,
                    PLD_IgnoreColor    = 0x1,
                    PLD_Red            = 0x0,
                    PLD_Green          = 0x0,
                    PLD_Blue           = 0x0,
                    PLD_Width          = 0x0,
                    PLD_Height         = 0x0,
                    PLD_UserVisible    = 0x1,
                    PLD_Dock           = 0x0,
                    PLD_Lid            = 0x0,
                    PLD_Panel          = "FRONT",
                    PLD_VerticalPosition = "LOWER",
                    PLD_HorizontalPosition = "RIGHT",
                    PLD_Shape          = "UNKNOWN",
                    PLD_GroupOrientation = 0x0,
                    PLD_GroupToken     = 0x0,
                    PLD_GroupPosition  = 0x0,
                    PLD_Bay            = 0x0,
                    PLD_Ejectable      = 0x0,
                    PLD_EjectRequired  = 0x0,
                    PLD_CabinetNumber  = 0x0,
                    PLD_CardCageNumber = 0x0,
                    PLD_Reference      = 0x0,
                    PLD_Rotation       = 0x0,
                    PLD_Order          = 0x0,
                    PLD_VerticalOffset = 0xFFFF,
                    PLD_HorizontalOffset = 0xFFFF)

            })
        }
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
            Offset (0xC0), 
            IKFG,   8, 
            Offset (0xC3), 
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
            Offset (0xD1), 
            WLEX,   1, 
            BTEX,   1, 
            WLST,   1, 
            BTST,   1, 
            WRPS,   1, 
            BRPS,   1, 
            Offset (0xD2), 
            SYNA,   1, 
            ALPS,   1, 
            ELAN,   1, 
            FOCT,   1, 
                ,   3, 
            TPME,   1, 
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
            PBAF,   1, 
            SP80,   1, 
            Offset (0xDB), 
            SWD2,   1, 
            F9KP,   1, 
            HACF,   6, 
            UWDP,   1, 
            EX3G,   1, 
            GPDP,   1, 
            TGDP,   1, 
            UWST,   1, 
            WIST,   1, 
            GPST,   1, 
            TGST,   1, 
            UWPS,   1, 
            WMPS,   1, 
            GPSP,   1, 
            TGPS,   1, 
            Offset (0xDE), 
            SPDC,   8, 
            DROK,   1, 
            SPDG,   1, 
            Offset (0xE0), 
            KBLV,   8, 
            FVGA,   1, 
            P4HN,   1, 
            USSC,   1, 
            MFTM,   1, 
            PCBD,   2, 
            Offset (0xE2), 
            EGCP,   7, 
            PA3D,   1, 
            ISS5,   8, 
            ISON,   8, 
            MPDR,   8, 
            AWC3,   8, 
                ,   1, 
                ,   1, 
                ,   1, 
            RSST,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            RSEX,   1, 
            WAKT,   15, 
            DS3W,   1, 
            S4RE,   8, 
            DPSB,   8, 
            DPSD,   8, 
            ECD3,   8, 
            Offset (0xEF), 
            EDPC,   8
        }

        OperationRegion (SCMS, SystemIO, 0x70, 0x02)
        Field (SCMS, ByteAcc, Lock, Preserve)
        {
            CB1I,   8, 
            CB1D,   8
        }

        IndexField (CB1I, CB1D, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            MCMS,   8, 
            YCMS,   8
        }
    }

    Scope (_SB)
    {
        Name (ATKP, Zero)
        Name (AITM, Zero)
        Name (PLMD, Zero)
        Name (MUTX, One)
        Name (LEDS, Zero)
        Name (BBAT, Zero)
        Name (BLCT, Zero)
        OperationRegion (WSMI, SystemIO, 0xB2, 0x02)
        Field (WSMI, ByteAcc, NoLock, Preserve)
        {
            WSCP,   8, 
            WSSP,   8
        }

        Mutex (MMTX, 0x00)
        Method (WISM, 1, NotSerialized)
        {
            Acquire (MMTX, 0xFFFF)
            WSCP = Arg0
            Release (MMTX)
        }

        Device (ASHS)
        {
            Name (_HID, "ATK4001" /* Asus Radio Control Button */)  // _HID: Hardware ID
            Method (HSWC, 1, Serialized)
            {
                If ((Arg0 < 0x02))
                {
                    OWGD (Arg0)
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Return (OWGS ())
                }

                If ((Arg0 == 0x03))
                {
                    Return (OHWS ())
                }

                If ((Arg0 == 0x80))
                {
                    Return (One)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSFL () >= 0x0F))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (OWGD, 1, NotSerialized)
            {
                ^^ATKD.WLED (Arg0)
                ^^ATKD.BLED (Arg0)
            }

            Method (OWGS, 0, NotSerialized)
            {
                Local0 = Zero
                If (^^ATKD.RSTS ())
                {
                    Local0 = One
                }

                Return (Local0)
            }

            Method (OHWS, 0, NotSerialized)
            {
                Return (0xFF)
            }
        }

        Device (ATKD)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
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
            Name (WAPF, Zero)
            Name (PCDV, Zero)
            Method (IANQ, 1, Serialized)
            {
                If ((AQNO >= 0x10))
                {
                    Local0 = 0x64
                    While ((Local0 && (AQNO >= 0x10)))
                    {
                        Local0--
                        Sleep (0x0A)
                    }

                    If ((Local0 && (AQNO >= 0x10)))
                    {
                        Return (Zero)
                    }
                }

                AQTI++
                AQTI &= 0x0F
                ATKQ [AQTI] = Arg0
                AQNO++
                Return (One)
            }

            Method (GANQ, 0, Serialized)
            {
                If (AQNO)
                {
                    AQNO--
                    Local0 = DerefOf (ATKQ [AQHI])
                    AQHI++
                    AQHI &= 0x0F
                    Return (Local0)
                }

                Return (One)
            }

            Method (IANE, 1, Serialized)
            {
                IANQ (Arg0)
                Notify (ATKD, 0xFF) // Hardware-Specific
            }

            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xD0, 0x5E, 0x84, 0x97, 0x6D, 0x4E, 0xDE, 0x11,  /* .^..mN.. */
                /* 0008 */  0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66,  /* .9.. ..f */
                /* 0010 */  0x4E, 0x42, 0x01, 0x02, 0x35, 0xBB, 0x3C, 0x0B,  /* NB..5.<. */
                /* 0018 */  0xC2, 0xE3, 0xED, 0x45, 0x91, 0xC2, 0x4C, 0x5A,  /* ...E..LZ */
                /* 0020 */  0x6D, 0x19, 0x5D, 0x1C, 0xFF, 0x00, 0x01, 0x08   /* m.]..... */
            })
            Method (WMNB, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, IIA0)
                CreateDWordField (Arg2, 0x04, IIA1)
                Local0 = (Arg1 & 0xFFFFFFFF)
                If ((Local0 == 0x57504346))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x0D
                    FSIZ = 0x1000
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x50504346))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x0D
                    FSIZ = Zero
                    WISM (FUIF)
                    P80H = 0xE3
                    Sleep (0xC8)
                    P80H = FSTA /* \FSTA */
                    Sleep (0x01F4)
                    P80H = 0xE3
                    Sleep (0xC8)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x54494E49))
                {
                    INIT (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x53545342))
                {
                    Return (BSTS ())
                }

                If ((Local0 == 0x4E554653))
                {
                    Return (SFUN ())
                }

                If ((Local0 == 0x474F4457))
                {
                    Return (WDOG (IIA0))
                }

                If ((Local0 == 0x494E424B))
                {
                    Return (KBNI ())
                }

                If ((Local0 == 0x43455053))
                {
                    Return (SPEC (IIA0))
                }

                If ((Local0 == 0x5256534F))
                {
                    OSVR (IIA0)
                    Return (Zero)
                }

                If ((Local0 == 0x47444353))
                {
                    Return (SCDG (IIA0))
                }

                If ((Local0 == 0x53545344))
                {
                    If ((IIA0 == 0x00020011))
                    {
                        Return ((GALE (One) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020012))
                    {
                        Return ((GALE (0x02) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020013))
                    {
                        Return ((GALE (0x04) | 0x00050000))
                    }

                    If ((IIA0 == 0x00040015))
                    {
                        Return ((GALE (0x08) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020014))
                    {
                        Return ((GALE (0x10) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020015))
                    {
                        Return ((GALE (0x20) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020016))
                    {
                        Return ((GALE (0x40) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020019)) {}
                    If ((IIA0 == 0x00020020)) {}
                    If ((IIA0 == 0x00030001))
                    {
                        Return ((GMLE (One) + 0x00050000))
                    }

                    If ((IIA0 == 0x00030011)) {}
                    If ((IIA0 == 0x00030012)) {}
                    If ((IIA0 == 0x00040016))
                    {
                        Return ((GMLE (0x03) + 0x00050000))
                    }

                    If ((IIA0 == 0x00110011))
                    {
                        Return ((TMPR () & 0xFFFF))
                    }

                    If ((IIA0 == 0x00110012))
                    {
                        Local0 = TMPR ()
                        Local1 = Local0
                        Local0 = ((Local0 & 0xF0000000) >> 0x1C)
                        Local1 = ((Local1 & 0x0F000000) >> 0x18)
                        Local1 <<= 0x08
                        Return ((Local0 + Local1))
                    }

                    If ((IIA0 == 0x00050012))
                    {
                        Local0 = 0x0A
                        Local0 <<= 0x08
                        Local1 = (GPLV () + Local0)
                        Return (Local1)
                    }

                    If ((IIA0 == 0x00050022)) {}
                    If ((IIA0 == 0x00050001)) {}
                    If ((IIA0 == 0x00050013)) {}
                    If ((IIA0 == 0x00010011))
                    {
                        If (WLEX)
                        {
                            Return ((WLST + 0x00030000))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((IIA0 == 0x00010013))
                    {
                        If (BTEX)
                        {
                            Return ((BTST + 0x00050000))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((IIA0 == 0x00010021))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010017))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010015))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010019))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010001))
                    {
                        Return (0x00050001)
                    }

                    If ((IIA0 == 0x00120012))
                    {
                        Return (PSTC (Zero))
                    }

                    If ((IIA0 == 0x00120037))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00120038))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00120041))
                    {
                        If (ISON)
                        {
                            Return (0x00080000)
                        }
                    }

                    If ((IIA0 == 0x00120042))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120043)) {}
                    If ((IIA0 == 0x00120044)) {}
                    If ((IIA0 == 0x00120045))
                    {
                        If (ISON)
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x00080000)
                        }
                    }

                    If ((IIA0 == 0x00120046))
                    {
                        If (ISON)
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x00080000)
                        }
                    }

                    If ((IIA0 == 0x00120047)) {}
                    If ((IIA0 == 0x00120048)) {}
                    If ((IIA0 == 0x00120049)) {}
                    If ((IIA0 == 0x0012004A)) {}
                    If ((IIA0 == 0x00130001)) {}
                    If ((IIA0 == 0x00050021))
                    {
                        Return (0x8000)
                    }

                    If ((IIA0 == 0x00050023))
                    {
                        Return (RLKB (IIA1))
                    }

                    If ((IIA0 == 0x00060023))
                    {
                        Return (AICH ())
                    }

                    If ((IIA0 == 0x00060024))
                    {
                        Name (BBUF, Buffer (0x14) {})
                        CreateDWordField (BBUF, Zero, DAT1)
                        CreateDWordField (BBUF, 0x04, DAT2)
                        CreateDWordField (BBUF, 0x08, DAT3)
                        CreateDWordField (BBUF, 0x0C, DAT4)
                        CreateDWordField (BBUF, 0x10, DAT5)
                        DAT1 = 0x78141022
                        DAT2 = 0x03
                        DAT3 = 0x78141022
                        DAT4 = 0x04
                        DAT5 = 0xFFFFFFFF
                        Return (BBUF) /* \_SB_.ATKD.WMNB.BBUF */
                    }

                    If ((IIA0 == 0x00060025))
                    {
                        Name (INFO, Buffer (0x08) {})
                        CreateDWordField (INFO, Zero, INF1)
                        CreateDWordField (INFO, 0x04, INF2)
                        INF1 = 0x1000
                        INF2 = 0xFFFFFFFF
                        Return (INFO) /* \_SB_.ATKD.WMNB.INFO */
                    }

                    If ((IIA0 == 0x00060026))
                    {
                        Return (One)
                    }

                    Return (0x02)
                }

                If ((Local0 == 0x53564544))
                {
                    If ((IIA0 == 0x00020011))
                    {
                        Return (SALE ((IIA1 + 0x02)))
                    }

                    If ((IIA0 == 0x00020012))
                    {
                        Return (SALE ((IIA1 + 0x04)))
                    }

                    If ((IIA0 == 0x00020013))
                    {
                        Return (SALE ((IIA1 + 0x08)))
                    }

                    If ((IIA0 == 0x00040015))
                    {
                        Return (SALE ((IIA1 + 0x10)))
                    }

                    If ((IIA0 == 0x00020014))
                    {
                        Return (SALE ((IIA1 + 0x20)))
                    }

                    If ((IIA0 == 0x00020015))
                    {
                        Return (SALE ((IIA1 + 0x40)))
                    }

                    If ((IIA0 == 0x00020016))
                    {
                        Return (SALE ((IIA1 + 0x80)))
                    }

                    If ((IIA0 == 0x00020019))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00020020))
                    {
                        CPCS (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00030001))
                    {
                        Return (SMLE ((IIA1 + 0x02)))
                    }

                    If ((IIA0 == 0x00030011))
                    {
                        If ((IIA1 == Zero))
                        {
                            Return (SMLE (0x04))
                        }

                        Return (SMLE (0x05))
                    }

                    If ((IIA0 == 0x00030012))
                    {
                        If ((IIA1 == Zero))
                        {
                            Return (SMLE (0x04))
                        }

                        Return (SMLE (0x09))
                    }

                    If ((IIA0 == 0x00040016))
                    {
                        Return (SMLE ((IIA1 + 0x80)))
                    }

                    If ((IIA0 == 0x00050012))
                    {
                        SPLV (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050001))
                    {
                        Return (ALSC (IIA1))
                    }

                    If ((IIA0 == 0x00050013))
                    {
                        Return (ALSL (IIA1))
                    }

                    If ((IIA0 == 0x00010011))
                    {
                        WLLC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010012))
                    {
                        WLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010013))
                    {
                        BLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010003))
                    {
                        Return (CWAP (IIA1))
                    }

                    If ((IIA0 == 0x00010015))
                    {
                        GPSC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010019))
                    {
                        GSMC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010017))
                    {
                        WMXC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010021))
                    {
                        UWBC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00120012))
                    {
                        Return (PSTC ((IIA1 + One)))
                    }

                    If ((IIA0 == 0x00120032))
                    {
                        Return (PSTC ((IIA1 + One)))
                    }

                    If ((IIA0 == 0x00120037))
                    {
                        DS3W = IIA1 /* \_SB_.ATKD.WMNB.IIA1 */
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00120038))
                    {
                        Local0 = (IIA1 * 0x3C)
                        WAKT = Local0
                    }

                    If ((IIA0 == 0x00120053))
                    {
                        Local0 = (IIA1 & One)
                        ABOF (Local0)
                        Return (One)
                    }

                    If ((IIA0 == 0x00130001))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100012))
                    {
                        TLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050011))
                    {
                        If ((IIA1 == 0x02))
                        {
                            BLCT = One
                        }
                        Else
                        {
                            BLCT = Zero
                        }
                    }

                    If ((IIA0 == 0x00050021))
                    {
                        SLKB (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050022))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00050023))
                    {
                        RLKB (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00060023))
                    {
                        AICG (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00060026))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                If ((Local0 == 0x48534C46))
                {
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = Zero
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x494E4946))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = One
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x53524546))
                {
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x02
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x49525746))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x03
                    FSIZ = 0x1000
                    WISM (FUIF)
                    Return ((0x1000 - FSTA))
                }

                If ((Local0 == 0x50525746))
                {
                    FSFN = 0x03
                    FSIZ = Zero
                    WISM (FUIF)
                    Return ((0x1000 - FSTA))
                }

                If ((Local0 == 0x52534345))
                {
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x07
                    FSIZ = Zero
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x43534C46))
                {
                    Return (Zero)
                }

                If ((Local0 == 0x43455246))
                {
                    FSFN = 0x0A
                    FSIZ = 0x1000
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    WISM (FUIF)
                    Return (Zero)
                }

                If ((Local0 == 0x454D4946))
                {
                    Return (Zero)
                }

                If ((Local0 == 0x4C425053))
                {
                    If ((IIA0 == 0x80))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 > 0x0B))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 < Zero))
                    {
                        Return (Zero)
                    }

                    SPLV (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x50534453))
                {
                    SDSP (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x50534447))
                {
                    Return (GDSP (IIA0))
                }

                If ((Local0 == 0x44495047))
                {
                    Return (GPID ())
                }

                If ((Local0 == 0x44434C47))
                {
                    Return (GLCD ())
                }

                If ((Local0 == 0x444F4D51))
                {
                    Return (QMOD (IIA0))
                }

                If ((Local0 == 0x49564E41))
                {
                    Return (ANVI (IIA0))
                }

                If ((Local0 == 0x46494243))
                {
                    Return (CBIF (IIA0))
                }

                If ((Local0 == 0x4E464741))
                {
                    Return (AGFN (IIA0))
                }

                If ((Local0 == 0x56454443))
                {
                    If ((IIA0 == One))
                    {
                        Local0 = DPWR (IIA0)
                        Local1 = Zero
                        If ((Local0 && One))
                        {
                            Local1 |= One
                        }

                        If ((Local0 && 0x02))
                        {
                            Local1 |= 0x04
                        }

                        If ((Local0 && 0x04))
                        {
                            Local1 |= 0x10
                        }

                        If ((Local0 && 0x08))
                        {
                            Local1 |= 0x40
                        }

                        Return (Local1)
                    }

                    If ((IIA0 == Zero))
                    {
                        Local0 = QDEV (One)
                        ((QDEV (0x02) << 0x02) + Local0)
                        ((QDEV (0x04) << 0x04) + Local0)
                        ((QDEV (0x08) << 0x06) + Local0)
                        Return (Local0)
                    }

                    If ((IIA0 == 0x83))
                    {
                        Return (SDON (One))
                    }

                    If ((IIA0 == 0x85))
                    {
                        Return (SDON (0x02))
                    }

                    If ((IIA0 == 0x89))
                    {
                        Return (SDON (0x04))
                    }

                    If ((IIA0 == 0x91))
                    {
                        Return (SDON (0x08))
                    }

                    If ((IIA0 == 0x82))
                    {
                        Return (SDOF (One))
                    }

                    If ((IIA0 == 0x84))
                    {
                        Return (SDOF (0x02))
                    }

                    If ((IIA0 == 0x88))
                    {
                        Return (SDOF (0x04))
                    }

                    If ((IIA0 == 0x90))
                    {
                        Return (SDOF (0x08))
                    }
                }

                If ((Local0 == 0x59454B48))
                {
                    Return (One)
                }

                If ((Local0 == 0x5446424B))
                {
                    Return (One)
                }

                If ((Local0 == 0x50564544))
                {
                    Return (One)
                }

                If ((Local0 == 0x424D5352))
                {
                    Return (RSMB (IIA0))
                }

                If ((Local0 == 0x424D5357))
                {
                    Return (WSMB (IIA0))
                }

                If ((Local0 == 0x574D5352))
                {
                    Return (RSMW (IIA0))
                }

                If ((Local0 == 0x574D5357))
                {
                    Return (WSMW (IIA0))
                }

                If ((Local0 == 0x4B4D5352))
                {
                    Return (RSMK (IIA0))
                }

                If ((Local0 == 0x4B4D5357))
                {
                    Return (WSMK (IIA0))
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                If ((Arg0 == 0xFF))
                {
                    Return (GANQ ())
                }

                Return (One)
            }

            Method (INIT, 1, NotSerialized)
            {
                ATKP = One
            }

            Method (BSTS, 0, NotSerialized)
            {
                If (((^^PCI0.SBRG.EC0.RRAM (0x04FE) == 0x34) || (^^PCI0.SBRG.EC0.RRAM (0x04FE) == 0x39)))
                {
                    Return (0x05)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TMPR, 0, NotSerialized)
            {
                Return (One)
            }

            Method (SFUN, 0, NotSerialized)
            {
                Local0 = 0x004A0855
                Local0 |= 0x20
                Return (Local0)
            }

            Method (OSVR, 1, NotSerialized)
            {
                OSFG = Arg0
            }

            Method (GPLV, 0, NotSerialized)
            {
                Return (LBTN) /* \_SB_.LBTN */
            }

            Method (SPLV, 1, NotSerialized)
            {
                Local0 = Arg0
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = Local0
                If ((_T_0 == Zero))
                {
                    Local1 = 0x33
                }
                ElseIf ((_T_0 == One))
                {
                    Local1 = 0x40
                }
                ElseIf ((_T_0 == 0x02))
                {
                    Local1 = 0x4D
                }
                ElseIf ((_T_0 == 0x03))
                {
                    Local1 = 0x59
                }
                ElseIf ((_T_0 == 0x04))
                {
                    Local1 = 0x66
                }
                ElseIf ((_T_0 == 0x05))
                {
                    Local1 = 0x73
                }
                ElseIf ((_T_0 == 0x06))
                {
                    Local1 = 0x80
                }
                ElseIf ((_T_0 == 0x07))
                {
                    Local1 = 0x8C
                }
                ElseIf ((_T_0 == 0x08))
                {
                    Local1 = 0xA6
                }
                ElseIf ((_T_0 == 0x09))
                {
                    Local1 = 0xCC
                }
                ElseIf ((_T_0 == 0x0A))
                {
                    Local1 = 0xFF
                }

                LBTN = Local0
                Return (Local1)
            }

            Method (SPBL, 1, NotSerialized)
            {
                If ((Arg0 == 0x0100))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x80))
                {
                    Return (Zero)
                }

                If ((Arg0 > 0x0F))
                {
                    Return (Zero)
                }

                If ((Arg0 < Zero))
                {
                    Return (Zero)
                }

                Return (One)
            }

            Method (WLED, 1, NotSerialized)
            {
                If (WLEX)
                {
                    WLST = Arg0
                    SGPL (0xBB, One, Arg0)
                    SGPL (0xBD, One, Arg0)
                    WLST = Arg0
                }

                Return (One)
            }

            Method (KBNI, 0, NotSerialized)
            {
                Return (One)
            }

            Method (GALE, 1, NotSerialized)
            {
                If ((Arg0 == 0x04))
                {
                    If ((LEDS && 0x04))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == 0x08))
                {
                    If ((LEDS && 0x08))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == 0x10))
                {
                    If ((LEDS && 0x10))
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
                Return (One)
            }

            Method (GMLE, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Return (One)
                }

                If ((Arg0 == 0x03))
                {
                    Return (One)
                }

                If ((Arg0 == 0x04))
                {
                    Return (One)
                }

                Return (One)
            }

            Method (SMLE, 1, NotSerialized)
            {
                Return (One)
            }

            Method (BLED, 1, NotSerialized)
            {
                If (BTEX)
                {
                    BTST = Arg0
                    SGPL (0xBD, One, Arg0)
                    BTST = Arg0
                }

                Return (One)
            }

            Method (WLLC, 1, NotSerialized)
            {
                If (WLEX)
                {
                    If ((Arg0 <= One))
                    {
                        WLED (Arg0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        If ((OSFL () >= 0x0F))
                        {
                            Return (Zero)
                        }
                        ElseIf ((WAPF & 0x04))
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (One)
            }

            Method (UWBC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WMXC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GPSC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GSMC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (SDSP, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GPID, 0, NotSerialized)
            {
                Return (0x03)
            }

            Method (ALSC, 1, NotSerialized)
            {
                If (Arg0) {}
                Else
                {
                }

                Return (One)
            }

            Method (ALSL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (RSTS, 0, NotSerialized)
            {
                Local0 = Zero
                If (WLST)
                {
                    Local0 |= One
                }

                If (BTST)
                {
                    Local0 |= 0x02
                }

                Return (Local0)
            }

            Method (HWRS, 0, NotSerialized)
            {
                Local0 = Zero
                If ((WLEX == One))
                {
                    Local0 |= 0x80
                }

                If ((BTEX == One))
                {
                    Local0 |= 0x0100
                }

                If ((EX3G == One))
                {
                    Local0 |= 0x40
                }

                Return (Local0)
            }

            Method (GLCD, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (CWAP, 1, NotSerialized)
            {
                WAPF |= Arg0 /* \_SB_.ATKD.WAPF */
                Return (One)
            }

            Method (WDOG, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (DPWR, 1, NotSerialized)
            {
                Return (One)
            }

            Method (QDEV, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (0x02)
                }

                If ((Arg0 == 0x02))
                {
                    Return (0x02)
                }

                If ((Arg0 == 0x04))
                {
                    Return (0x02)
                }

                If ((Arg0 == 0x08))
                {
                    Return (0x02)
                }

                Return (0x02)
            }

            Method (SDON, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x02))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x04))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x08))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (SDOF, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x02))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x04))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x08))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (QMOD, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (Zero)
                }

                If ((Arg0 == One)) {}
                If ((Arg0 == 0x02)) {}
                Return (One)
            }

            Method (ANVI, 1, Serialized)
            {
                Local0 = AGFN (Zero)
                Local0 += 0x0100
                OperationRegion (\DBUF, SystemMemory, Local0, 0x1000)
                Field (DBUF, AnyAcc, NoLock, Preserve)
                {
                    Offset (0xD2), 
                    PJIC,   8, 
                    Offset (0xD4), 
                    SLPD,   8, 
                    Offset (0xDE), 
                    SLMK,   8
                }

                Field (DBUF, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x27), 
                    OSTE,   8
                }

                FADR = Local0
                FSFN = One
                WISM (FUIF)
                FADR = 0x434E4647
                FSFN = 0x05
                WISM (FUIF)
                PJIC = SOAO /* \SOAO */
                SLPD = 0xFF
                Local0 = Arg0
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = Local0
                If ((_T_0 == One))
                {
                    SLMK = One
                    Local1 = Zero
                }
                ElseIf ((_T_0 == 0x02))
                {
                    FADR = 0x4D464730
                    FSFN = 0x05
                    WISM (FUIF)
                    Return (OSTE) /* \_SB_.ATKD.ANVI.OSTE */
                }
                ElseIf ((_T_0 == 0x05))
                {
                    SLMK = 0x05
                    Local1 = Zero
                }
                ElseIf ((_T_0 == 0x0101))
                {
                    SLMK = One
                    SLPD = GSEC ()
                    Local1 = One
                }
                ElseIf ((_T_0 == 0x0105))
                {
                    SLMK = 0x05
                    SLPD = GSEC ()
                    Local1 = One
                }
                Else
                {
                    Return (0xFFFF)
                }

                FADR = 0x434E4647
                FSFN = 0x04
                WISM (FUIF)
                FSTA = Zero
                FSFN = Zero
                WISM (FUIF)
                FSFN = 0x06
                WISM (FUIF)
                FSTA = One
                FSFN = Zero
                WISM (FUIF)
                Return (Local1)
            }

            Method (GSEC, 0, NotSerialized)
            {
                Local1 = ((YCMS >> 0x04) * 0x0A)
                Local1 += (YCMS & 0x0F)
                Local1 *= 0x0C
                Local0 = ((MCMS >> 0x04) * 0x0A)
                Local0 += (MCMS & 0x0F)
                Local0 += 0x03
                Local1 += Local0
                Return (Local1)
            }

            Method (PSTC, 1, Serialized)
            {
                Return (Zero)
            }

            Method (SMBB, 1, Serialized)
            {
                Return (One)
            }

            Method (SMBW, 1, Serialized)
            {
                Return (One)
            }

            Method (SMBK, 1, Serialized)
            {
                Return (One)
            }

            Method (ECRW, 1, Serialized)
            {
                Return (One)
            }

            Method (CBIF, 1, Serialized)
            {
                Return (One)
            }

            Method (TLED, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GLED, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GLKB, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Return (0x80)
                }

                Return (One)
            }

            Method (SLKB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (FREC, 1, NotSerialized)
            {
                If ((Arg0 == 0x8000))
                {
                    FSTA = Arg0
                    WISM (FUIF)
                    FSIZ = 0x1000
                    Return (FSTA) /* \FSTA */
                }

                Return (Zero)
            }

            Method (RLKB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (CPCS, 1, NotSerialized)
            {
                Return (One)
            }

            Method (RSMB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WSMB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (RSMW, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WSMW, 1, NotSerialized)
            {
                Return (One)
            }

            Method (RSMK, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WSMK, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GDSP, 1, NotSerialized)
            {
                If ((Arg0 == Zero)) {}
                If ((Arg0 == One)) {}
                If ((Arg0 == 0x02)) {}
                If ((Arg0 == 0x03)) {}
                If ((Arg0 == 0x04)) {}
                If ((Arg0 == 0x05)) {}
                If ((Arg0 == 0x06)) {}
                If ((Arg0 == 0x80))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (SPEC, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (0x00080001)
                }

                If ((Arg0 == One))
                {
                    Return (One)
                }

                Return (One)
            }

            Method (SCDG, 1, Serialized)
            {
                Name (CALB, Buffer (0x0100)
                {
                     0xFF                                             /* . */
                })
                Local0 = AGFN (Zero)
                Local0 += 0x5000
                OperationRegion (\CALD, SystemMemory, Local0, 0x1000)
                Field (CALD, AnyAcc, NoLock, Preserve)
                {
                    CBD0,   256, 
                    Offset (0x100), 
                    CBD1,   256, 
                    Offset (0x200), 
                    CBD2,   256, 
                    Offset (0x300), 
                    CBD3,   256, 
                    Offset (0x400), 
                    CBD4,   256, 
                    Offset (0x500), 
                    CBD5,   256, 
                    Offset (0x600), 
                    CBD6,   256, 
                    Offset (0x700), 
                    CBD7,   256, 
                    Offset (0x800), 
                    CBD8,   256, 
                    Offset (0x900), 
                    CBD9,   256
                }

                If ((Arg0 == Zero))
                {
                    CALB = CBD0 /* \_SB_.ATKD.SCDG.CBD0 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == One))
                {
                    CALB = CBD1 /* \_SB_.ATKD.SCDG.CBD1 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x02))
                {
                    CALB = CBD2 /* \_SB_.ATKD.SCDG.CBD2 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x03))
                {
                    CALB = CBD3 /* \_SB_.ATKD.SCDG.CBD3 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x04))
                {
                    CALB = CBD4 /* \_SB_.ATKD.SCDG.CBD4 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x05))
                {
                    CALB = CBD5 /* \_SB_.ATKD.SCDG.CBD5 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x06))
                {
                    CALB = CBD6 /* \_SB_.ATKD.SCDG.CBD6 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x07))
                {
                    CALB = CBD7 /* \_SB_.ATKD.SCDG.CBD7 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x08))
                {
                    CALB = CBD8 /* \_SB_.ATKD.SCDG.CBD8 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }

                If ((Arg0 == 0x09))
                {
                    CALB = CBD9 /* \_SB_.ATKD.SCDG.CBD9 */
                    Return (CALB) /* \_SB_.ATKD.SCDG.CALB */
                }
            }

            Method (AGFN, 1, Serialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (AMLA) /* \AMLA */
                }

                P80H = 0xAA
                Local0 = Zero
                OperationRegion (\PARM, SystemMemory, Arg0, 0x08)
                Field (PARM, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                EROR = Zero
                STAS = One
                BIPA = Arg0
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = MFUN /* \_SB_.ATKD.AGFN.MFUN */
                If ((_T_0 == One))
                {
                    P80H = 0x30
                    GVER (Arg0, LEN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    Return (One)
                }
                ElseIf ((_T_0 == 0x02))
                {
                    P80H = 0x31
                    WISM (0xA1)
                    STAS &= 0xFE
                    STAS |= 0x80
                    Return (One)
                }
                ElseIf ((_T_0 == 0x10))
                {
                    P80H = 0x32
                    Local0 = MF10 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x11))
                {
                    P80H = 0x33
                    Local0 = MF11 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x12))
                {
                    P80H = 0x34
                    Local0 = MF12 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x13))
                {
                    P80H = 0x35
                    Local0 = MF13 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x14))
                {
                    P80H = 0x36
                    Local0 = MF14 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x15))
                {
                    P80H = 0x37
                    Local0 = MF15 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x16))
                {
                    P80H = 0x38
                    Local0 = MF16 (Arg0, LEN, MFUN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    Return (One)
                }
                ElseIf ((_T_0 == 0x17))
                {
                    P80H = 0x39
                    Local0 = MF17 (Arg0, LEN, MFUN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x18))
                {
                    P80H = 0x3A
                    Local0 = MF18 (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    P80H = 0x50
                    Return (One)
                }
                ElseIf ((_T_0 == 0x19))
                {
                    P80H = 0x3B
                    Local0 = MF19 (Arg0, LEN, MFUN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x1F))
                {
                    P80H = 0x3C
                    WISM (0xA1)
                    Local0 = MF1F (Arg0, LEN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    Return (One)
                }
                ElseIf ((_T_0 == 0x20))
                {
                    P80H = 0x3D
                    WISM (0xA1)
                    STAS &= 0xFE
                    STAS |= 0x80
                    Return (One)
                }
                ElseIf ((_T_0 == 0x30))
                {
                    P80H = 0x3E
                    Local0 = MF30 (Arg0, LEN, MFUN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                ElseIf ((_T_0 == 0x32))
                {
                    P80H = 0x3F
                    Local0 = MF32 (Arg0, LEN, MFUN, SFUN)
                    STAS &= 0xFE
                    STAS |= 0x80
                    EROR |= Local0
                    Return (One)
                }
                Else
                {
                    P80H = 0x40
                    STAS &= 0xFE
                    STAS |= 0x80
                    Return (One)
                }

                If ((STAS == One))
                {
                    P80H = 0x41
                    EROR = One
                    STAS |= 0x02
                }

                P80H = 0x42
                STAS &= 0xFE
                STAS |= 0x80
                P80H = 0x43
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

            Method (MF10, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == One))
                {
                    Local0 = SRTC (Arg0, Arg1)
                }

                If ((Arg2 == 0x02)) {}
                Return (Local0)
            }

            Method (SRTC, 2, NotSerialized)
            {
                If ((Arg1 < 0x0C))
                {
                    Return (0x02)
                }

                OperationRegion (\F101, SystemMemory, Arg0, Arg1)
                Field (F101, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    DLTM,   16
                }

                RTCW = DLTM /* \_SB_.ATKD.SRTC.DLTM */
                Return (Zero)
            }

            Method (MF11, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == One))
                {
                    Local0 = GBAT (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = ASBR (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x03))
                {
                    Local0 = ASBE (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x04))
                {
                    Local0 = BTCR (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x05))
                {
                    If ((Arg1 < 0x0B))
                    {
                        Local0 = 0x02
                    }
                    Else
                    {
                        OperationRegion (F115, SystemMemory, Arg0, Arg1)
                        Field (F115, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x08), 
                            ACT1,   8, 
                            WDOG,   16
                        }

                        Local0 = Zero
                    }
                }

                Return (Local0)
            }

            Method (GBAT, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F111, SystemMemory, Arg0, Arg1)
                Field (F111, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    BTNM,   8, 
                    BTTP,   8
                }

                Return (One)
            }

            Method (ASBR, 2, NotSerialized)
            {
                If ((Arg1 < 0x30))
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

                If ((BATN >= One))
                {
                    Return (0x11)
                }

                If ((BATA == Zero))
                {
                    Local0 = ^^PCI0.SBRG.EC0.SMBR (^^PCI0.SBRG.EC0.RDWD, ^^PCI0.SBRG.EC0.BADR, REGS)
                    BDAT = DerefOf (Local0 [0x02])
                    Local2 = DerefOf (Local0 [Zero])
                    Local2 &= 0x1F
                    If (Local2)
                    {
                        Local2 += 0x10
                    }

                    Return (Local2)
                }

                If ((BATA == One))
                {
                    Local0 = ^^PCI0.SBRG.EC0.SMBW (^^PCI0.SBRG.EC0.WRWD, ^^PCI0.SBRG.EC0.BADR, REGS, 0x02, BDAT)
                    Local2 = DerefOf (Local0 [Zero])
                    Local2 &= 0x1F
                    If (Local2)
                    {
                        Local2 += 0x10
                    }

                    Return (Local2)
                }

                If ((BATA == 0x02))
                {
                    Local0 = ^^PCI0.SBRG.EC0.SMBR (^^PCI0.SBRG.EC0.RDBL, ^^PCI0.SBRG.EC0.BADR, REGS)
                    BKUF = DerefOf (Local0 [0x02])
                    BLEN = DerefOf (Local0 [One])
                    Local2 = DerefOf (Local0 [Zero])
                    Name (BKUF, Buffer (0x20) {})
                    CreateDWordField (BKUF, Zero, DAT1)
                    CreateDWordField (BKUF, 0x04, DAT2)
                    CreateDWordField (BKUF, 0x08, DAT3)
                    CreateDWordField (BKUF, 0x0C, DAT4)
                    CreateDWordField (BKUF, 0x10, DAT5)
                    CreateDWordField (BKUF, 0x14, DAT6)
                    CreateDWordField (BKUF, 0x18, DAT7)
                    CreateDWordField (BKUF, 0x1C, DAT8)
                    BLK1 = DAT1 /* \_SB_.ATKD.ASBR.DAT1 */
                    BLK2 = DAT2 /* \_SB_.ATKD.ASBR.DAT2 */
                    BLK3 = DAT3 /* \_SB_.ATKD.ASBR.DAT3 */
                    BLK4 = DAT4 /* \_SB_.ATKD.ASBR.DAT4 */
                    BLK5 = DAT5 /* \_SB_.ATKD.ASBR.DAT5 */
                    BLK6 = DAT6 /* \_SB_.ATKD.ASBR.DAT6 */
                    BLK7 = DAT7 /* \_SB_.ATKD.ASBR.DAT7 */
                    BLK8 = DAT8 /* \_SB_.ATKD.ASBR.DAT8 */
                    Local2 &= 0x1F
                    If (Local2)
                    {
                        Local2 += 0x10
                    }

                    Return (Local2)
                }

                Return (0x10)
            }

            Method (ASBE, 2, Serialized)
            {
                If ((Arg1 < 0x0C))
                {
                    Return (0x02)
                }

                OperationRegion (\F113, SystemMemory, Arg0, Arg1)
                Field (F113, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    BATN,   8, 
                    BATA,   8, 
                    REGS,   8, 
                    BDAT,   8
                }

                If ((BATN > One))
                {
                    Return (0x11)
                }

                Return (0x10)
            }

            Method (BTCR, 2, NotSerialized)
            {
                If ((Arg1 < 0x09))
                {
                    Return (0x02)
                }

                OperationRegion (\F114, SystemMemory, Arg0, Arg1)
                Field (F114, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    DCHR,   8
                }

                If ((DCHR == One)) {}
                Return (Zero)
            }

            Method (MF12, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == One))
                {
                    Local0 = GLDI (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = LDCR (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GLDI, 2, NotSerialized)
            {
                If ((Arg1 < 0x10))
                {
                    Return (0x02)
                }

                OperationRegion (\F121, SystemMemory, Arg0, Arg1)
                Field (F121, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    LEDI,   64
                }

                LEDI = Zero
                Return (Zero)
            }

            Method (LDCR, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                Return (0x10)
            }

            Method (MF13, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == One))
                {
                    Local0 = GTSI (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = GTSV (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x03))
                {
                    Local0 = GNVX (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x04))
                {
                    Local0 = GVSV (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x05))
                {
                    Local0 = GFNN (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x06))
                {
                    Local0 = GFNS (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x07))
                {
                    Local0 = SFNS (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x08))
                {
                    Local0 = GGSV (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GTSI, 2, NotSerialized)
            {
                If ((Arg1 < 0x18))
                {
                    Return (0x02)
                }

                OperationRegion (\F131, SystemMemory, Arg0, Arg1)
                Field (F131, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    Offset (0x09), 
                    C0SE,   1, 
                    C1SE,   1, 
                    C2SE,   1, 
                    C3SE,   1, 
                    Offset (0x0A), 
                    VGSE,   1
                }

                C0SE = One
                If ((CCNM == 0x02))
                {
                    C1SE = One
                }

                If ((CCNM == 0x04))
                {
                    C1SE = One
                    C2SE = One
                    C3SE = One
                }

                VGSE = One
                Return (Zero)
            }

            Method (GTSV, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F132, SystemMemory, Arg0, Arg1)
                Field (F132, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    SNUM,   8, 
                    TEMC,   8
                }
            }

            Method (GNVX, 2, NotSerialized)
            {
                If ((Arg1 < 0x09))
                {
                    Return (0x02)
                }

                OperationRegion (\F133, SystemMemory, Arg0, Arg1)
                Field (F133, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    FNUM,   8
                }

                FNUM = Zero
                Return (Zero)
            }

            Method (GVSV, 2, NotSerialized)
            {
                If ((Arg1 < 0x0B))
                {
                    Return (0x02)
                }

                Return (0x10)
            }

            Method (GFNN, 2, NotSerialized)
            {
                If ((Arg1 < 0x09))
                {
                    Return (0x02)
                }

                OperationRegion (\F135, SystemMemory, Arg0, Arg1)
                Field (F135, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    FNUM,   8
                }

                Return (Zero)
            }

            Method (GFNS, 2, NotSerialized)
            {
                If ((Arg1 < 0x0D))
                {
                    Return (0x02)
                }

                OperationRegion (\F136, SystemMemory, Arg0, Arg1)
                Field (F136, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    FNUM,   8, 
                    FSRM,   32
                }

                Return (Zero)
            }

            Method (SFNS, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                Return (0x10)
            }

            Method (GGSV, 2, NotSerialized)
            {
                If ((Arg1 < 0x0B))
                {
                    Return (0x02)
                }

                Return (0x10)
            }

            Method (MF1F, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == 0x08))
                {
                    WISM (0xA1)
                }
                ElseIf ((Arg2 == 0x09))
                {
                    WISM (0xA1)
                }
                ElseIf ((Arg2 == 0x0A))
                {
                    WISM (0xA1)
                }
                ElseIf ((Arg2 == 0x10))
                {
                    F1FH (Arg0)
                }
                ElseIf ((Arg2 == 0x11))
                {
                    F1FI (Arg0)
                }
                ElseIf ((Arg2 == 0x12))
                {
                    F1FJ (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x14))
                {
                    F1FK (Arg0)
                }
                Else
                {
                    WISM (0xA1)
                }

                Return (Local0)
            }

            Method (MF14, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == One))
                {
                    Local0 = GNBT (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = GBTS (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GNBT, 2, NotSerialized)
            {
                If ((Arg1 < 0x09))
                {
                    Return (0x02)
                }

                OperationRegion (\F141, SystemMemory, Arg0, Arg1)
                Field (F141, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    BNUM,   8
                }

                BNUM = One
                Return (Zero)
            }

            Method (GBTS, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                Return (0x10)
            }

            Method (MF15, 3, NotSerialized)
            {
                Local0 = Zero
                If ((Arg2 == One))
                {
                    Local0 = GLDB (Arg0, Arg1)
                }

                If ((Arg2 == 0x02))
                {
                    Local0 = SLDB (Arg0, Arg1)
                }

                If ((Arg2 == 0x03))
                {
                    Local0 = GDPI (Arg0, Arg1)
                }

                If ((Arg2 == 0x04))
                {
                    Local0 = SODP (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GLDB, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F151, SystemMemory, Arg0, Arg1)
                Field (F151, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    CRLV,   8, 
                    MXLV,   8
                }

                MXLV = 0x0A
                CRLV = GPLV ()
                Return (Zero)
            }

            Method (SLDB, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F152, SystemMemory, Arg0, Arg1)
                Field (F152, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    BVAL,   8, 
                    BTPE,   8
                }

                If ((Zero == BTPE))
                {
                    If ((BVAL <= 0x0A))
                    {
                        If ((BVAL >= Zero))
                        {
                            BVAL = SPLV (BVAL)
                            WISM (0xA1)
                            Return (Zero)
                        }
                    }
                    Else
                    {
                        Return (0x10)
                    }
                }

                If ((One == BTPE))
                {
                    If ((BVAL <= 0xFF))
                    {
                        If ((BVAL >= Zero))
                        {
                            WISM (0xA1)
                            Return (Zero)
                        }
                    }
                    Else
                    {
                        Return (0x10)
                    }
                }
                Else
                {
                    Return (0x11)
                }

                Return (0x11)
            }

            Method (GDPI, 2, NotSerialized)
            {
                If ((Arg1 < 0x10))
                {
                    Return (0x02)
                }

                OperationRegion (\F153, SystemMemory, Arg0, Arg1)
                Field (F153, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    ODDI,   32, 
                    CTCS,   32
                }

                Return (Zero)
            }

            Method (SODP, 2, NotSerialized)
            {
                If ((Arg1 < 0x0C))
                {
                    Return (0x02)
                }

                OperationRegion (\F154, SystemMemory, Arg0, Arg1)
                Field (F154, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    ODDM,   32
                }

                Return (Zero)
            }

            Method (MF16, 4, NotSerialized)
            {
                Local0 = One
                If ((Arg3 == One))
                {
                    Local0 = SFBD (Arg0, Arg1)
                }

                If ((Arg3 == 0x02))
                {
                    Local0 = LCMD (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (SFBD, 2, NotSerialized)
            {
                If ((Arg1 < 0x09))
                {
                    Return (0x02)
                }

                OperationRegion (\F161, SystemMemory, Arg0, Arg1)
                Field (F161, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    NXBD,   8
                }

                If (OFBD (NXBD))
                {
                    UHDB = NXBD /* \_SB_.ATKD.SFBD.NXBD */
                    Return (Zero)
                }
                Else
                {
                    Return (0x10)
                }
            }

            Method (OFBD, 1, NotSerialized)
            {
                Name (FBDT, Package (0x16)
                {
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
                    0xF0, 
                    0xF1, 
                    0xF2, 
                    0xF3, 
                    0xF6, 
                    0xFA
                })
                Local0 = Match (FBDT, MEQ, Arg0, MTR, Zero, Zero)
                Local0++
                Return (Local0)
            }

            Method (LCMD, 2, NotSerialized)
            {
                If ((Arg1 < 0x0B))
                {
                    Return (0x02)
                }

                WISM (0xA1)
                Return (Zero)
            }

            Method (MF17, 4, NotSerialized)
            {
                Local0 = One
                If ((Arg3 == One))
                {
                    Local0 = GMDL (Arg0, Arg1)
                }
                ElseIf ((Arg3 == 0x02))
                {
                    Local0 = GBSI (Arg0, Arg1)
                }
                ElseIf ((Arg3 == 0x03))
                {
                    Local0 = GECI (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GMDL, 2, NotSerialized)
            {
                If ((Arg1 < 0x19))
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

                MDL1 = Zero
                MDL2 = Zero
                MDL3 = Zero
                MDL4 = Zero
                Name (BBUF, Buffer (0x10) {})
                CreateDWordField (BBUF, Zero, DAT1)
                CreateDWordField (BBUF, 0x04, DAT2)
                CreateDWordField (BBUF, 0x08, DAT3)
                CreateDWordField (BBUF, 0x0C, DAT4)
                Local0 = GBMN ()
                MLEN = SizeOf (Local0)
                BBUF = GBMN ()
                MDL1 = DAT1 /* \_SB_.ATKD.GMDL.DAT1 */
                MDL2 = DAT2 /* \_SB_.ATKD.GMDL.DAT2 */
                MDL3 = DAT3 /* \_SB_.ATKD.GMDL.DAT3 */
                MDL4 = DAT4 /* \_SB_.ATKD.GMDL.DAT4 */
                Return (Zero)
            }

            Method (GBMN, 0, NotSerialized)
            {
                Local0 = "X550ZE"
                Return (Local0)
            }

            Method (GBSI, 2, NotSerialized)
            {
                If ((Arg1 < 0x19))
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

                BDL1 = Zero
                BDL2 = Zero
                BDL3 = Zero
                BDL4 = Zero
                Name (BBUF, Buffer (0x10) {})
                CreateDWordField (BBUF, Zero, DAT1)
                CreateDWordField (BBUF, 0x04, DAT2)
                CreateDWordField (BBUF, 0x08, DAT3)
                CreateDWordField (BBUF, 0x0C, DAT4)
                Local0 = GBRV ()
                BLEN = SizeOf (Local0)
                BBUF = GBRV ()
                BDL1 = DAT1 /* \_SB_.ATKD.GBSI.DAT1 */
                BDL2 = DAT2 /* \_SB_.ATKD.GBSI.DAT2 */
                BDL3 = DAT3 /* \_SB_.ATKD.GBSI.DAT3 */
                BDL4 = DAT4 /* \_SB_.ATKD.GBSI.DAT4 */
                Return (Zero)
            }

            Method (GBRV, 0, NotSerialized)
            {
                Local0 = "206"
                Return (Local0)
            }

            Method (GECI, 2, NotSerialized)
            {
                OperationRegion (\F173, SystemMemory, Arg0, 0x20)
                Field (F173, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    ELEN,   8, 
                    EDL1,   8, 
                    EDL2,   8, 
                    EDL3,   8, 
                    EDL4,   8, 
                    EDL5,   8, 
                    EDL6,   8, 
                    EDL7,   8, 
                    EDL8,   8, 
                    EDL9,   8, 
                    EDLA,   8, 
                    EDLB,   8
                }

                EDL1 = Zero
                EDL2 = Zero
                EDL3 = Zero
                EDL4 = Zero
                ELEN = 0x0B
                EDL1 = 0x32
                EDL2 = 0x33
                EDL3 = 0x30
                EDL4 = 0x30
                EDL5 = 0x30
                EDL6 = 0x30
                EDL7 = 0x30
                EDL8 = 0x46
                EDL9 = 0x31
                EDLA = 0x30
                Return (One)
            }

            Method (MF18, 3, NotSerialized)
            {
                Local0 = One
                If ((Arg2 == One))
                {
                    Local0 = GDVI (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = GDVS (Arg0, Arg1)
                }
                ElseIf ((Arg2 == 0x03))
                {
                    Local0 = SDPW (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GDVI, 2, NotSerialized)
            {
                P80H = 0x44
                If ((Arg1 < 0x18))
                {
                    Return (0x02)
                }

                OperationRegion (\F181, SystemMemory, Arg0, Arg1)
                Field (F181, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                        ,   1, 
                        ,   1, 
                        ,   1, 
                        ,   1, 
                        ,   1, 
                        ,   1, 
                        ,   1, 
                    Offset (0x09), 
                    BTCT,   1, 
                        ,   1, 
                        ,   1, 
                        ,   1
                }

                P80H = 0x45
                Return (Zero)
            }

            Method (GDVS, 2, NotSerialized)
            {
                P80H = 0x46
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F182, SystemMemory, Arg0, Arg1)
                Field (F182, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    DNUM,   8, 
                    DSTS,   8
                }

                If ((DNUM == 0x08)) {}
                Return (Zero)
            }

            Method (SDPW, 2, NotSerialized)
            {
                P80H = 0x49
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F183, SystemMemory, Arg0, Arg1)
                Field (F183, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    DNUM,   8, 
                    DSTS,   8
                }

                If ((DNUM == 0x08)) {}
                Return (Zero)
            }

            Method (MF19, 4, NotSerialized)
            {
                Local0 = One
                If ((Arg3 == One))
                {
                    Local0 = ACMS (Arg0, Arg1)
                }

                If ((Arg3 == 0x02))
                {
                    Local0 = CSIN (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (ACMS, 2, NotSerialized)
            {
                WISM (0xA1)
                Return (Zero)
            }

            Method (CSIN, 2, NotSerialized)
            {
                If ((Arg1 < 0x0A))
                {
                    Return (0x02)
                }

                OperationRegion (\F192, SystemMemory, Arg0, Arg1)
                Field (F192, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    CMAX,   16
                }

                CMAX = 0xFF
                Return (Zero)
            }

            Method (MF30, 4, NotSerialized)
            {
                Local0 = One
                If ((Arg3 == One))
                {
                    If ((Arg1 < 0x10))
                    {
                        Local0 = 0x02
                    }
                    Else
                    {
                        WISM (0xA1)
                        Local0 = Zero
                    }
                }
                ElseIf ((Arg3 == 0x02))
                {
                    Local0 = EC02 (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (EC02, 2, NotSerialized)
            {
                If ((Arg1 < 0x30))
                {
                    Return (0x02)
                }

                OperationRegion (\F302, SystemMemory, Arg0, Arg1)
                Field (F302, ByteAcc, NoLock, Preserve)
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
            }

            Method (MF32, 4, NotSerialized)
            {
                Local0 = One
                If ((Arg3 == One)) {}
                If ((Arg3 == 0x02)) {}
                If ((Arg3 == 0x03))
                {
                    Local0 = GPBA (Arg0, Arg1)
                }

                If ((Arg3 == 0x04))
                {
                    Local0 = SPBA (Arg0, Arg1)
                }

                Return (Local0)
            }

            Method (GPBA, 2, NotSerialized)
            {
                If ((Arg1 < 0x10))
                {
                    Return (0x02)
                }

                OperationRegion (\F323, SystemMemory, Arg0, Arg1)
                Field (F323, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    Offset (0x09), 
                    GPBX,   8
                }

                GPBX = Zero
                Return (Zero)
            }

            Method (SPBA, 2, NotSerialized)
            {
                If ((Arg1 < 0x18))
                {
                    Return (0x02)
                }

                OperationRegion (\F324, SystemMemory, Arg0, Arg1)
                Field (F324, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    Offset (0x09), 
                    SPBS,   8, 
                    SPBD,   8, 
                    SDAT,   64
                }

                Return (One)
            }
        }

        Method (USBC, 1, NotSerialized)
        {
            Local0 = ^ATKD.AGFN (Zero)
            OperationRegion (\CP50, SystemMemory, Local0, 0x09)
            Field (CP50, ByteAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                BLEN,   16, 
                STAS,   8, 
                EROR,   8, 
                UCOF,   8
            }

            MFUN = 0x1F
            SFUN = 0x08
            UCOF = Arg0
            BIPA = Local0
            WISM (0xA1)
        }

        Method (F1FH, 1, NotSerialized)
        {
            OperationRegion (\CP51, SystemMemory, Arg0, 0x09)
            Field (CP51, ByteAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                BLEN,   16, 
                STAS,   8, 
                EROR,   8, 
                SKEY,   8
            }

            If ((SKEY == One))
            {
                WV2C (0xD5, Zero)
            }
            ElseIf ((SKEY == 0x02))
            {
                WV2C (0xD5, 0xFF)
            }
        }

        Method (F1FI, 1, NotSerialized)
        {
            WV2C (0xDE, 0x06)
        }

        Method (F1FJ, 2, NotSerialized)
        {
            OperationRegion (\F12C, SystemMemory, Arg0, Arg1)
            Field (F12C, AnyAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LAN0,   40
            }

            WV2C (0x70, LAN0)
        }

        Method (F1FK, 1, NotSerialized)
        {
            If (Arg0)
            {
                ^ATKD.ABOF (Arg0)
            }
            Else
            {
                ^ATKD.ABOF (Arg0)
            }
        }

        Method (WV2C, 2, NotSerialized)
        {
            Local0 = (BIPA + 0x10)
            OperationRegion (\CNBA, SystemMemory, Local0, 0x1000)
            Field (CNBA, AnyAcc, NoLock, Preserve)
            {
                Offset (0x70), 
                LG70,   40, 
                Offset (0xD5), 
                FLW8,   8, 
                Offset (0xDE), 
                SLP2,   8
            }

            FSTA = Zero
            FSFN = Zero
            WISM (FUIF)
            FADR = Local0
            FSFN = One
            WISM (FUIF)
            FADR = 0x434E4647
            FSFN = 0x05
            WISM (FUIF)
            If ((Arg0 == 0xD5))
            {
                FLW8 = Arg1
            }
            ElseIf ((Arg0 == 0xDE))
            {
                SLP2 = Arg1
            }
            ElseIf ((Arg0 == 0x70))
            {
                LG70 = Arg1
            }

            FADR = 0x434E4647
            FSFN = 0x04
            WISM (FUIF)
            FSFN = 0x06
            WISM (FUIF)
            FSTA = One
            FSFN = Zero
            WISM (FUIF)
        }

        Method (AICH, 0, NotSerialized)
        {
            Local0 = (AIST | 0x04)
            Return (Local0)
        }

        Method (AICG, 1, Serialized)
        {
            AICD = Arg0
            Return (Zero)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (GAC3, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (GAC4, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (GAC5, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (GUC6, 0, NotSerialized)
        {
            Return (One)
        }

        Method (SAC3, 1, NotSerialized)
        {
            Return (Zero)
        }

        Method (SUC6, 1, NotSerialized)
        {
            Return (One)
        }

        Method (SDSF, 1, NotSerialized)
        {
            Return (One)
        }

        Method (PCNS, 0, NotSerialized)
        {
            Return (0x00080000)
        }

        Method (PCDS, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (FCT3, 0, NotSerialized)
        {
            Return (0x00010000)
        }

        Method (BRC4, 0, NotSerialized)
        {
            Return (0x0001FFFF)
        }

        Method (MVNS, 0, NotSerialized)
        {
            Return (0x00080000)
        }

        Method (MVDS, 0, NotSerialized)
        {
            Return (0x00080000)
        }

        Method (DV47, 0, NotSerialized)
        {
            Return (0x0001FFFF)
        }

        Method (PCS4, 0, NotSerialized)
        {
            Return (0x00010000)
        }

        Method (FCC9, 0, NotSerialized)
        {
            Return (0x0001FFFF)
        }

        Method (IOMB, 1, NotSerialized)
        {
            Return (0x0001FFFF)
        }

        Method (AOB3, 1, NotSerialized)
        {
            Return (One)
        }

        Method (ABOF, 1, Serialized)
        {
            If (Arg0)
            {
                BBAT = 0xAA
                D3AG = 0xAA
            }
            Else
            {
                BBAT = Zero
            }

            Notify (^^PCI0.AC0, 0x80) // Status Change
            Return (One)
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMB0, SystemIO, 0x0B00, 0x80)
        Field (SMB0, ByteAcc, NoLock, Preserve)
        {
            SHST,   8, 
            Offset (0x02), 
            SHTC,   8, 
            SCMD,   8, 
            SADR,   8, 
            Offset (0x0D), 
            SMAC,   8
        }

        Method (DIAG, 1, NotSerialized)
        {
            SMAC = Zero
            SADR = Zero
            SCMD = Arg0
            SHST = 0xFF
            SHTC = 0x44
        }

        Method (SPTS, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                DBG8 = 0xD3
                DIAG (0xD3)
            }

            If ((Arg0 == 0x04))
            {
                DBG8 = 0xD4
                DIAG (0xD4)
            }

            If ((Arg0 == 0x05))
            {
                DBG8 = 0xD5
                DIAG (0xD5)
            }
        }

        Method (SWAK, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                DBG8 = 0xF3
                DIAG (0xF3)
            }

            If ((Arg0 == 0x04))
            {
                DBG8 = 0xF4
                DIAG (0xF4)
            }

            If ((Arg0 == 0x05))
            {
                DBG8 = 0xAE
                DIAG (0xAE)
            }
        }
    }

    Name (FNF8, Zero)
    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x0A
            Notify (SLPB, 0x80) // Status Change
        }

        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x0B
            If ((OSFL () >= 0x0F))
            {
                Notify (ASHS, 0x88) // Device-Specific
            }
            ElseIf ((^^^^ATKD.WAPF & 0x04))
            {
                If (ATKP)
                {
                    ^^^^ATKD.IANE (0x88)
                }
            }
            ElseIf ((!WLEX && !BTEX))
            {
                If (!EX3G)
                {
                    ^^^^ATKD.IANE (0x74)
                }
            }
            ElseIf ((^^^^ATKD.RSTS () > Zero))
            {
                If (WLEX)
                {
                    ^^^^ATKD.WLED (Zero)
                }

                If (BTEX)
                {
                    ^^^^ATKD.BLED (Zero)
                }

                If (EX3G)
                {
                    ^^^^ATKD.WMXC (Zero)
                }

                ^^^^ATKD.IANE (0x74)
            }
            ElseIf (WLEX)
            {
                ^^^^ATKD.WLED (One)
            }
        }

        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x0E
            Local0 = ^^^^ATKD.GPLV ()
            If ((Local0 > 0x0A))
            {
                Local0 = 0x0A
            }

            If ((Local0 != Zero))
            {
                Local0--
            }

            LBTN = Local0
            If ((OSFL () < 0x0F))
            {
                ^^^^ATKD.IANE ((Local0 + 0x20))
            }

            ^^^VGA.DWBL (0x87)
        }

        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x0F
            Local0 = ^^^^ATKD.GPLV ()
            Local0++
            If ((Local0 > 0x0A))
            {
                Local0 = 0x0A
            }

            LBTN = Local0
            If ((OSFL () < 0x0F))
            {
                ^^^^ATKD.IANE ((Local0 + 0x10))
            }

            ^^^VGA.UPBL (0x86)
        }

        Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x10
            If (BLCT)
            {
                Local0 = RPIN (0x05, 0x07)
                If (Local0)
                {
                    If (ATKP)
                    {
                        ^^^^ATKD.IANE (0x35)
                    }
                }
                Else
                {
                    Local0 ^= One
                    SPIN (0x05, 0x07, Local0)
                }
            }
            Else
            {
                Local0 = One
                Local0 = RPIN (0x05, 0x07)
                Local0 ^= One
                SPIN (0x05, 0x07, Local0)
            }
        }

        Name (HDMI, Zero)
        Method (_QD7, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0xD7
            If ((OSFL () >= 0x0F))
            {
                If (FNF8)
                {
                    ECXT (0xB8, 0x02, Zero, Zero, Zero, Zero)
                    FNF8 = Zero
                }
            }
        }

        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x11
            If ((OSFL () >= 0x0F))
            {
                If ((FNF8 == Zero))
                {
                    ECXT (0xB8, Zero, Zero, Zero, Zero, Zero)
                    Sleep (0x01F4)
                    ECXT (0xB8, One, Zero, Zero, Zero, Zero)
                    Sleep (0x01F4)
                    FNF8 = One
                }
                Else
                {
                    ECXT (0xB8, One, Zero, Zero, Zero, Zero)
                }
            }
            ElseIf ((FNF8 == Zero))
            {
                Local0 = (^^^GFX0.CADL | ^^^GFX0.CAL2) /* External reference */
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = Local0
                If ((_T_0 == 0x0100))
                {
                    ^^^GFX0.NXTD = 0x02
                }
                ElseIf ((_T_0 == 0x0300))
                {
                    If ((^^^GFX0.CADL == 0x0100))
                    {
                        ^^^GFX0.NXTD = Zero
                    }
                    Else
                    {
                        ^^^GFX0.NXTD = 0x04
                    }
                }
                ElseIf ((_T_0 == 0x0400))
                {
                    ^^^GFX0.NXTD = One
                }
                ElseIf ((_T_0 == 0x0500))
                {
                    ^^^GFX0.NXTD = 0x03
                }
                ElseIf ((_T_0 == 0x0700))
                {
                    ^^^GFX0.NXTD = 0x05
                }
            }
        }

        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x0C
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x50)
            }
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x0D
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x51)
            }
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x12
            If (ATKP)
            {
                If (TPME)
                {
                    ^^^^ATKD.IANE (0x6B)
                }
                Else
                {
                    ^^^^ATKD.IANE (0x6F)
                }
            }
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x13
            If ((OSFL () >= 0x0F))
            {
                ECXT (0xB8, 0x03, Zero, Zero, Zero, Zero)
            }
            ElseIf (ATKP)
            {
                ^^^^ATKD.IANE (0x32)
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x14
            If ((OSFL () >= 0x0F))
            {
                ECXT (0xB8, 0x04, Zero, Zero, Zero, Zero)
            }
            ElseIf ((AVOL < 0x0F))
            {
                AVOL++
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x15
            If ((OSFL () >= 0x0F))
            {
                ECXT (0xB8, 0x05, Zero, Zero, Zero, Zero)
            }
            ElseIf ((AVOL > Zero))
            {
                AVOL--
            }
        }

        Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x73
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x84)
            }
        }

        Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x72
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x5C)
            }
        }

        Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x71
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x8A)
            }
        }

        Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x70
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x82)
            }
        }

        Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x6B
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x43)
            }
        }

        Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x6C
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x45)
            }
        }

        Method (_Q6D, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x6D
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x40)
            }
        }

        Method (_Q6E, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x6E
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x41)
            }
        }

        Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x6F
            If (ATKP)
            {
                ^^^^ATKD.IANE (0xB5)
            }
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0B, 
                    0x04
                })
            }
        }

        Method (RGLV, 1, Serialized)
        {
            Local0 = (Arg0 + GIOB) /* \GIOB */
            OperationRegion (GLVX, SystemMemory, Local0, 0x08)
            Field (GLVX, ByteAcc, Lock, Preserve)
            {
                GPXX,   8
            }

            If ((GPXX & 0x80))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (SGLV, 2, Serialized)
        {
            Local0 = (Arg0 + GIOB) /* \GIOB */
            OperationRegion (GLVX, SystemMemory, Local0, 0x08)
            Field (GLVX, ByteAcc, Lock, Preserve)
            {
                GPXX,   8
            }

            If (Arg1)
            {
                GPXX |= 0x40
            }
            Else
            {
                GPXX &= 0xBF
            }
        }

        Method (RGPL, 2, Serialized)
        {
            Local0 = Arg0
            Local1 = Arg1
            Local3 = Zero
            Local4 = Zero
            While (Local1)
            {
                If (RGLV (Local0))
                {
                    Local3 |= (One << Local4)
                }

                Local0++
                Local1--
                Local4++
            }

            Return (Local3)
        }

        Method (SGPL, 3, Serialized)
        {
            Local0 = Arg0
            Local1 = Arg1
            Local3 = Arg2
            Local4 = Zero
            While (Local1)
            {
                Local2 = (One << Local4)
                If ((Local2 & Local3))
                {
                    SGLV (Local0, One)
                }
                Else
                {
                    SGLV (Local0, Zero)
                }

                Local0++
                Local1--
                Local4++
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
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x03, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x04, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
            \_SB.SPTS (Arg0)
            \_SB.PCI0.SBRG.EC0.EC0S (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.SWAK (Arg0)
        \_SB.PCI0.SBRG.EC0.EC0W (Arg0)
    }

    Method (_SB._OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
    {
        Return (Arg3)
    }
}

