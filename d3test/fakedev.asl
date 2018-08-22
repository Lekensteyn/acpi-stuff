DefinitionBlock("", "SSDT", 2, "OemId", "OemTblId", 0x00000001)
{
    External (\_SB.PCI0, DeviceObj)
    External (\_SB.PCI0.SE0, DeviceObj)

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

    Scope (\_SB.PCI0)
    {
        PowerResource (PG00, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)
            {
                LOGM("PG00._ON")
                _STA = One
            }

            Method (_OFF, 0, Serialized)
            {
                LOGM("PG00._OFF")
                _STA = Zero
            }
        }
    }

    Scope (\_SB.PCI0.SE0)
    {
        //Name (_ADR, 0x001C0000)  // _ADR: Address (RP at 00:1c.0)
        Name (_PSC, 0)

        Method (_PS0, 0, Serialized) {
            LOGM("_PS0")
            _PSC = 0
        }

        Method (_PS3, 0, Serialized) {
            LOGM("_PS3")
            _PSC = 3
        }

        Name (_PR0, Package (0x01)  // _PR2: Power Resources for D0
        {
            PG00
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG00
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG00
        })

/*
        Name(PRWP, Package(2) { 69, 4 })
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (PRWP)
        }
    */

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            LOGM("_DSW")
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            LOGM("_S0W")
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.SE0)
    {
        Device (NET)
        {
            Name (_ADR, 0x00000000)  // _ADR: Address (dev+fn only, 01:00.0)

            Name (_PSC, 0)

            Method (_PS0, 0, Serialized) {
                LOGM("NET._PS0")
                _PSC = 0
            }

            Method (_PS1, 0, Serialized) {
                LOGM("NET._PS1")
                _PSC = 1
            }

            Method (_PS3, 0, Serialized) {
                LOGM("NET._PS3")
                _PSC = 3
            }
        }
    }

    Scope (\_SB.PCI0.SE0.NET)
    {
        OperationRegion (PCI8, PCI_Config, 0x04, 0x2)
        Field (PCI8, WordAcc, Lock, Preserve)
        {
            CMDR,   8,  // Command register (low)
        }
        OperationRegion (PCIC, PCI_Config, 0x30, 0x4)
        Field (PCIC, DWordAcc, Lock, Preserve)
        {
            XADR,   32, // Expansion ROM Address
        }

        Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
        {
            LOGM("_ROM")
            LOGM(ToHexString(Arg0))
            LOGM(ToHexString(Arg1))
            // Arg0: offset in ROM, Arg1: size to read (max 4K)
            if (Arg1 > 0x1000) {
                // nouveau cheats and tries to fetch more. Disallow that.
                Return (Buffer(0x1000) {})
            }

            // Can read only if memory space bit is set per spec.
            Local0 = CMDR
            if (Not (Local0 & 2)) {
                CMDR = Local0 | 2
            }

            // Expansion ROM Base Address
            Local1 = XADR
            LOGM(ToHexString(Local1))
            If ((XADR & 1) == 0) {
                // Set Expansion ROM Enable
                XADR = Local1 | 1
            }
            Local1 &= 0xfffff800

            // max 4k
            Local0 = Arg0 & 0xfff

            // XXX Hopefully Arg0 alignment is ok...
            OperationRegion (XROM, SystemMemory, Local1 + Arg0 - Local0, 0x2000)
            Field (XROM, DWORDAcc, NoLock, Preserve)
            {
                ROM4,   65536
            }

            CreateField(ROM4, 8 * Local0, 8 * Arg1, TMPB)
            Name (ROMD, Buffer (Arg1) {} )
            ROMD = TMPB

            // Reset Expansion ROM Enable
            XADR = Local1
            Return (ROMD)
        }

        Method (_DSM, 4, Serialized)
        {
            LOGM("_DSM")
            LOGM(Arg0)
            LOGM(ToHexString(Arg1))
            LOGM(ToHexString(Arg2))
            Name (SGCI, Zero)
            Name (NBCI, Zero)
            Name (OPCI, Zero)
            Name (BUFF, Zero)
            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                OPCI = One
            }

            If ((OPCI || (SGCI || NBCI)))
            {
                If (OPCI)
                {
                    If ((Arg1 != 0x0100))
                    {
                        Return (0x80000002)
                    }
                }
                ElseIf ((Arg1 != 0x0102))
                {
                    Return (0x80000002)
                }

                // Nvidia bug: spec defines Package, but Nvidia uses Buffer...
                LOGM(ToHexString(ToInteger(Arg3)))

                If ((Arg2 == Zero))
                {
                    If (SGCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x7F, 0x00, 0x04, 0x00                           // ....
                        })
                    }
                    ElseIf (NBCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x73, 0x00, 0x04, 0x00                           // s...
                        })
                    }
                    ElseIf (OPCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x61, 0x18, 0x03, 0x04                           // a...
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    If (SGCI)
                    {
                        STS0 |= 0x0B0000BF
                        //STS0 |= SGNC <<= 0x08
                    }
                    Else
                    {
                        STS0 |= Zero
                    }

                    Return (TEMP) /* \_SB_.PCI0.GFX0.HDSM.TEMP */
                }

                // whether to prefer iGPU or dGPU
                If ((Arg2 == 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    Local0 &= 0x1F
                    // XXX removed junk here

                    STS1 |= Local0
                    Return (TMP1) /* \_SB_.PCI0.GFX0.HDSM.TMP1 */
                }

                // toggle power (arg3: 0 status, 1 on, 2 off)
                If ((Arg2 == 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    Local0 &= 0x03
                    If ((Local0 == One))
                    {
                        // \_SB.PCI0.PGON (Zero)
                    }

                    If ((Local0 == 0x02))
                    {
                        // \_SB.PCI0.PGOF (Zero)
                    }

                    //If ((\_SB.PCI0.PEG0.PEGP.SGST () == 0x0F))
                    if (One)
                    {
                        STS2 |= One
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0.HDSM.TMP2 */
                }

                // query stuff
                If ((Arg2 == 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Local1 = Local0
                    Local0 >>= 0x10
                    // whatever

                    STS3 |= (Local1 << 0x0D)
                    Return (TMP3) /* \_SB_.PCI0.GFX0.HDSM.TMP3 */
                }

                // display detection
                If ((Arg2 == 0x05))
                {
                    Name (TMP4, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP4, Zero, STS4)
                    ToInteger (Arg3, Local0)

                    // XXX dummy
                    Name (DHPE, 0)
                    Name (DHPS, 0)
                    Name (TLSN, 0)
                    Name (DKST, 0)
                    Name (LDES, 0)
                    Name (DACE, 0)

                    STS4 |= (DHPE << 0x15)
                    STS4 |= (DHPS << 0x14)
                    STS4 |= (TLSN << 0x08)
                    STS4 |= (DKST << 0x05)
                    STS4 |= (LDES << 0x04)
                    STS4 |= DACE /* \_SB_.PCI0.GFX0.DACE */
                    LDES = Zero
                    DHPS = Zero
                    DHPE = Zero
                    DACE = Zero
                    Return (TMP4) /* \_SB_.PCI0.GFX0.HDSM.TMP4 */
                }

                // display switch hotkey
                If ((Arg2 == 0x06))
                {
                    Return (0x0)
                    // Return (TLPK) /* \_SB_.PCI0.GFX0.TLPK */
                }

                If ((Arg2 == 0x10))
                {
                    CreateWordField (Arg3, 0x02, USRG)
                    Name (OPVK, Buffer (0x96)
                    { // fix syntax in vim: {
                        /* 0000 */  0xE4, 0x57, 0x31, 0x0D, 0xD1, 0x7D, 0x49, 0x60,  // .W1..}I`
                        /* 0008 */  0x4B, 0x56, 0x96, 0x00, 0x00, 0x00, 0x01, 0x00,  // KV......
                        /* 0010 */  0x31, 0x35, 0x36, 0x32, 0x37, 0x33, 0x34, 0x36,  // 15627346
                        /* 0018 */  0x38, 0x37, 0x33, 0x39, 0x47, 0x65, 0x6E, 0x75,  // 8739Genu
                        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  // ine NVID
                        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  // IA Certi
                        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  // fied Opt
                        /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  // imus Rea
                        /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  // dy Mothe
                        /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x2D,  // rboard -
                        /* 0050 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  //  Copyrig
                        /* 0058 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x31, 0x20,  // ht 2011 
                        /* 0060 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  // NVIDIA C
                        /* 0068 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  // orporati
                        /* 0070 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  // on All R
                        /* 0078 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  // ights Re
                        /* 0080 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  // served-1
                        /* 0088 */  0x30, 0x33, 0x37, 0x35, 0x36, 0x33, 0x38, 0x35,  // 03756385
                        /* 0090 */  0x36, 0x35, 0x32, 0x28, 0x52, 0x29               // 652(R)
                    })
                    If ((USRG == 0x564B))
                    {
                        Return (OPVK) /* \_SB_.PCI0.GFX0.HDSM.OPVK */
                    }

                    Return (Zero)
                }

                If ((Arg2 == 0x11))
                {
                    Return (Zero)
                }

                If ((Arg2 == 0x12))
                {
                    Return (Package (0x0A)
                    {
                        0xD0, 
                        ToUUID ("921a2f40-0dc4-402d-ac18-b48444ef9ed2"), 
                        0xD9, 
                        ToUUID ("c12ad361-9fa9-4c74-901f-95cb0945cf3e"), 
                        0xDB, 
                        ToUUID ("42848006-8886-490e-8c72-2bdca93a8a09"), 
                        0xEF, 
                        ToUUID ("b3e485d2-3cc1-4b54-8f31-77ba2fdc9ebe"), 
                        0xF0, 
                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b")
                    })
                }

                // get optimus capabilities
                If ((Arg2 == 0x1A))
                {
                    //CreateField (Arg3, 0x18, 0x02, OMPR)
                    CreateField (Arg3, Zero, One, FLCH)
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    If (ToInteger (FLCH))
                    {
                        //\_SB.PCI0.PEG0.PEGP.OPCE = OMPR /* \_SB_.PCI0.GFX0.HDSM.OMPR */
                    }

                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x08, One, SNSR)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    OPEN = One
                    SHPC = One
                    HDAC = Zero
                    DGPC = One
                    /*
                    If (ToInteger (DVSC))
                    {
                        If (ToInteger (DVSR))
                        {
                            \_SB.PCI0.PEG0.PEGP.GPRF = One
                        }
                        Else
                        {
                            \_SB.PCI0.PEG0.PEGP.GPRF = Zero
                        }
                    }

                    SNSR = \_SB.PCI0.PEG0.PEGP.GPRF
                    If ((\_SB.PCI0.PEG0.PEGP.SGST () != Zero))
                    {
                        CGCS = 0x03
                    }
                    */
                    // added
                    if (ToInteger(DVSC) && ToInteger(DVSR)) {
                        SNSR =  1
                    }
                    // Current GPU Control status (3 = on)
                    CGCS = 0x03

                    Return (Local0)
                }

                // set optimus flags
                If ((Arg2 == 0x1B))
                {
                    ToInteger (Arg3, Local0)
                    If ((Local0 & 0x02))
                    {
                        BUFF = Zero
                        If ((Local0 & One))
                        {
                            BUFF = One
                        }
                    }

                    /*
                    SGFL &= 0xFFFFFFFD
                    SGFL |= (BUFF << One)
                    */
                    Return (Local0)
                }

                Return (0x80000002)
            }
            // no functions supported
            Return (Buffer(){0})
        }
    }
}
