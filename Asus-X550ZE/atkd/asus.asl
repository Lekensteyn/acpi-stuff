/*
 * Derived from dsdt.dsl, attempt to create a fake device for use in QEMU and
 * play against the driver.
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
DefinitionBlock ("asus.asl", "SSDT", 2, "_ASUSx", "Notebook", 0x00000206)
{
    // Compat
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }
    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }


    // global
    // ...
    Name (OSFG, Zero)
    Name (SOAO, 0x91)
    Name (FUIF, 0xA5)
    Name (PICM, Zero)

    // OperationRegion (EXBU, SystemMemory, 0x6DF74018, 0x101A)
    // Field (EXBU, AnyAcc, Lock, Preserve) {
    //Name (XID,  Zero) // 8
    Name (FADR, Zero) // 32
    Name (FSIZ, Zero) // 16
    Name (FSTA, Zero) // 16
    Name (FSFN, Zero) // 8
    //Name (BAML, Zero) // 8
    Name (BIPA, Zero) // 32
    Name (AMLA, Zero) // 32
    Name (RTCW, Zero) // 16
    Name (CCNM, Zero) // 8
    //Name (EDID, Zero) // 32
    //Name (AMBF, Zero) // 4096
    // }

    // OperationRegion (RAMW, SystemMemory, RAMB, 0x1000)
    // Field (RAMW, AnyAcc, NoLock, Preserve) {
    // ...
    Name (AIST, Zero) // 8
    Name (AICD, Zero) // 32
    // ...
    Name (D3AG, Zero) // 8
    // }


    // Debug in QEMU
    //External (DBUG, MethodObj)  // 1 Arguments (strings, integers, buffers)
    Scope (\)
    {
        // Use different port number to avoid other debug spam.
        OperationRegion (DBGL, SystemIO, 0x0404, One)
        Field (DBGL, ByteAcc, NoLock, Preserve)
        {
            DBGP,   8
        }

        Method (LOGM, 1, NotSerialized)
        {
            ToHexString (Arg0, Local0)
            ToBuffer (Local0, Local0)
            Local1 = (SizeOf (Local0) - One)
            Local2 = Zero
            While ((Local2 < Local1))
            {
                DBGP = DerefOf (Local0 [Local2])
                Local2++
            }

            DBGP = 0x0A
        }
        // Reference time since first call.
        Name (LOGR, Zero)
        Method (LOGT, 0)
        {
            // 100ns -> 1ms
            Local0 = Timer() / 10000
            if (LOGR == Zero) {
                LOGR = Local0
            }
            LOGM (ToDecimalString(Local0 - LOGR))
        }
    }
    // End debug in QEMU


    // Fake partial EC device. _HID methods exist to avoid BSOD in Win10
    Device (\_SB.PCI0.SBRG) {
        Name (_HID, "NUT0001")
        Device (EC0) {
            Name (_HID, "NUT0002")
            Name (BADR, 0x0B)

            Name (WRWD, 0x08)
            Name (RDWD, 0x09)
            Name (RDBL, 0x0B)
            Method (SMBR, 3, Serialized) { Return (Ones) } // STUB
            Method (SMBW, 5, Serialized) { Return (Ones) } // STUB
            Method (RRAM, 1, Serialized) { Return (Ones) } // STUB
        }
    }
    Device (\_SB.PCI0.AC0) {
        Name (_HID, "NUT0003")
    }

    Method (MCTH, 2, NotSerialized) { Return (Zero) } // STUB
    Method (SGPL, 3, Serialized) { } // STUB


    // Taken from DSDT with no further changes

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

    // Begin chunk from DSDT (exactly the same, but some numeric constants have
    // a comment with their ASCII name)
    // Note that the original author probably made a mistake in the block
    // following "If ((IIA0 == Zero))", the three additions must be stored in
    // Local0. Do not bother changing this, just compile with 'iasl -ve -f'.
    // HERE BE DRAGONS

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
                If ((Local0 == 0x57504346 /* FCPW */))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x0D
                    FSIZ = 0x1000
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x50504346 /* FCPP */))
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

                If ((Local0 == 0x54494E49 /* INIT */))
                {
                    INIT (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x53545342 /* BSTS */))
                {
                    Return (BSTS ())
                }

                If ((Local0 == 0x4E554653 /* SFUN */))
                {
                    Return (SFUN ())
                }

                If ((Local0 == 0x474F4457 /* WDOG */))
                {
                    Return (WDOG (IIA0))
                }

                If ((Local0 == 0x494E424B /* KBNI */))
                {
                    Return (KBNI ())
                }

                If ((Local0 == 0x43455053 /* SPEC */))
                {
                    Return (SPEC (IIA0))
                }

                If ((Local0 == 0x5256534F /* OSVR */))
                {
                    OSVR (IIA0)
                    Return (Zero)
                }

                If ((Local0 == 0x47444353 /* SCDG */))
                {
                    Return (SCDG (IIA0))
                }

                If ((Local0 == 0x53545344 /* DSTS */))
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

                If ((Local0 == 0x53564544 /* DEVS */))
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

                If ((Local0 == 0x48534C46 /* FLSH */))
                {
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = Zero
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x494E4946 /* FINI */))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = One
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x53524546 /* FERS */))
                {
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x02
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x49525746 /* FWRI */))
                {
                    FADR = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x03
                    FSIZ = 0x1000
                    WISM (FUIF)
                    Return ((0x1000 - FSTA))
                }

                If ((Local0 == 0x50525746 /* FWRP */))
                {
                    FSFN = 0x03
                    FSIZ = Zero
                    WISM (FUIF)
                    Return ((0x1000 - FSTA))
                }

                If ((Local0 == 0x52534345 /* ECSR */))
                {
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    FSFN = 0x07
                    FSIZ = Zero
                    WISM (FUIF)
                    Return (FSTA) /* \FSTA */
                }

                If ((Local0 == 0x43534C46 /* FLSC */))
                {
                    Return (Zero)
                }

                If ((Local0 == 0x43455246 /* FREC */))
                {
                    FSFN = 0x0A
                    FSIZ = 0x1000
                    FSTA = IIA0 /* \_SB_.ATKD.WMNB.IIA0 */
                    WISM (FUIF)
                    Return (Zero)
                }

                If ((Local0 == 0x454D4946 /* FIME */))
                {
                    Return (Zero)
                }

                If ((Local0 == 0x4C425053 /* SPBL */))
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

                If ((Local0 == 0x50534453 /* SDSP */))
                {
                    SDSP (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x50534447 /* GDSP */))
                {
                    Return (GDSP (IIA0))
                }

                If ((Local0 == 0x44495047 /* GPID */))
                {
                    Return (GPID ())
                }

                If ((Local0 == 0x44434C47 /* GLCD */))
                {
                    Return (GLCD ())
                }

                If ((Local0 == 0x444F4D51 /* QMOD */))
                {
                    Return (QMOD (IIA0))
                }

                If ((Local0 == 0x49564E41 /* ANVI */))
                {
                    Return (ANVI (IIA0))
                }

                If ((Local0 == 0x46494243 /* CBIF */))
                {
                    Return (CBIF (IIA0))
                }

                If ((Local0 == 0x4E464741 /* AGFN */))
                {
                    Return (AGFN (IIA0))
                }

                If ((Local0 == 0x56454443 /* CDEV */))
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

                If ((Local0 == 0x59454B48 /* HKEY */))
                {
                    Return (One)
                }

                If ((Local0 == 0x5446424B /* KBFT */))
                {
                    Return (One)
                }

                If ((Local0 == 0x50564544 /* DEVP */))
                {
                    Return (One)
                }

                If ((Local0 == 0x424D5352 /* RSMB */))
                {
                    Return (RSMB (IIA0))
                }

                If ((Local0 == 0x424D5357 /* WSMB */))
                {
                    Return (WSMB (IIA0))
                }

                If ((Local0 == 0x574D5352 /* RSMW */))
                {
                    Return (RSMW (IIA0))
                }

                If ((Local0 == 0x574D5357 /* WSMW */))
                {
                    Return (WSMW (IIA0))
                }

                If ((Local0 == 0x4B4D5352 /* RSMK */))
                {
                    Return (RSMK (IIA0))
                }

                If ((Local0 == 0x4B4D5357 /* WSMK */))
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
}
