/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000122C (4652)
 *     Revision         0x01
 *     Checksum         0x13
 *     OEM ID           "AMD"
 *     OEM Table ID     "CPMCMN"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("ssdt4.aml", "SSDT", 1, "AMD", "CPMCMN", 0x00000001)
{

    External (_SB_.ALIB, MethodObj)    // 2 Arguments
    External (M038, IntObj)
    External (M039, MethodObj)    // 2 Arguments
    External (MOEM, IntObj)

    OperationRegion (CPNV, SystemMemory, 0x6DF4B018, 0x0001008A)
    Field (CPNV, AnyAcc, Lock, Preserve)
    {
        M082,   32, 
        M083,   32, 
        M084,   32, 
        M085,   8, 
        M086,   24, 
            ,   1, 
            ,   2, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0x11), 
        M087,   1, 
            ,   1, 
        Offset (0x14), 
        M088,   16, 
        M089,   16, 
        M090,   3, 
        M091,   5, 
        M092,   8, 
        M093,   3, 
        M094,   5, 
        M095,   8, 
        M096,   8, 
        M097,   8, 
        M098,   32, 
        M099,   32, 
        M100,   32, 
        M101,   32, 
        M102,   32, 
        M103,   32, 
        M104,   224, 
        M105,   32, 
        M106,   522240, 
        Offset (0x10056), 
        M107,   64, 
        M128,   32, 
        M108,   32, 
        M109,   32, 
        M110,   32, 
        M122,   32, 
        M131,   32, 
        M132,   32, 
        M133,   32, 
        M134,   32, 
        M135,   32, 
        M136,   32
    }

    Method (M000, 1, Serialized)
    {
        Local0 = Arg0
        OperationRegion (VARM, SystemIO, 0x80, 0x02)
        Field (VARM, WordAcc, NoLock, Preserve)
        {
            VARR,   16
        }

        VARR = Local0
    }

    Method (M019, 4, Serialized)
    {
        Return (M017 (Arg0, Arg1, Arg2, Arg3, 0x00, 0x20))
    }

    Method (M020, 5, Serialized)
    {
        M018 (Arg0, Arg1, Arg2, Arg3, 0x00, 0x20, Arg4)
    }

    Method (M021, 4, Serialized)
    {
        Local0 = (M083 + (Arg0 << 0x14))
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        Local0 += 0xE0
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Local0 = VAR2 /* \M021.VAR2 */
        Return (Local0)
    }

    Method (M022, 5, Serialized)
    {
        Local0 = (M083 + (Arg0 << 0x14))
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        Local0 += 0xE0
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        VAR2 = Arg4
    }

    Method (M023, 3, Serialized)
    {
        M018 (Arg0, Arg1, Arg2, 0x70, 0x03, 0x01, 0x00)
        M018 (Arg0, Arg1, Arg2, 0x70, 0x13, 0x01, 0x01)
    }

    Method (M024, 3, Serialized)
    {
        Local0 = M019 (Arg0, Arg1, Arg2, 0x0128)
        If ((Local0 & 0x00020000))
        {
            Return (Ones)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (M026, 3, Serialized)
    {
        Local0 = M021 (Arg0, Arg1, Arg2, 0xA2)
        Local0 &= ~0x07
        Local1 = (Local0 >> 0x04)
        Local1 &= 0x07
        Local0 |= Local1
        Local0 |= 0x0100
        M022 (Arg0, Arg1, Arg2, 0xA2, Local0)
    }

    Method (M025, 3, Serialized)
    {
        Local0 = M019 (Arg0, Arg1, Arg2, 0x68)
        Local0 &= ~0x20
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        Local0 |= 0x20
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        Local1 = 0x64
        Local2 = 0x01
        While ((Local1 && Local2))
        {
            Sleep (0x01)
            Local3 = M019 (Arg0, Arg1, Arg2, 0x68)
            If ((Local3 & 0x08000000))
            {
                Local1--
            }
            Else
            {
                Local2 = 0x00
            }
        }

        Local0 &= ~0x20
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        If (!Local2)
        {
            Return (Ones)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (M009, 1, Serialized)
    {
        Local0 = (Arg0 >> 0x08)
        Local1 = (Arg0 & 0xFF)
        Local2 = 0x00
        If ((Local0 == 0x00))
        {
            If ((M085 == 0x02))
            {
                Local2 = M011 ((M084 + 0x1502), (Local1 * 0x04), 0x00, 
                    0x01)
            }
            Else
            {
                Local2 = M011 ((M084 + 0x0100), Local1, 0x07, 0x01)
            }
        }
        ElseIf ((Local0 == 0x01))
        {
            Local1 = M038 /* External reference */
            Local2
        }

        Return (Local2)
    }

    Method (M010, 2, Serialized)
    {
        Local0 = (Arg0 >> 0x08)
        Local1 = (Arg0 & 0xFF)
        If ((Local0 == 0x00))
        {
            If ((M085 == 0x02))
            {
                M012 ((M084 + 0x1502), (Local1 * 0x04), 0x06, 0x02, (
                    0x02 | Arg1))
            }
            Else
            {
                M012 ((M084 + 0x0100), Local1, 0x06, 0x01, Arg1)
            }
        }
        ElseIf ((Local0 == 0x01))
        {
            M039 (Local1, Arg1)
        }
    }

    Name (M037, Buffer (0x17)
    {
        /* 0000 */  0x7E, 0x81, 0x03, 0x16, 0x04, 0x15, 0x0E, 0x05,  /* ~....... */
        /* 0008 */  0x02, 0x20, 0x06, 0x07, 0x10, 0x11, 0x12, 0x18,  /* . ...... */
        /* 0010 */  0x17, 0x19, 0x0B, 0x01, 0x0F, 0x0D, 0x09         /* ....... */
    })
    Method (M029, 1, Serialized)
    {
        If ((M085 == 0x02))
        {
            Return (M011 ((M084 + 0x1502), (DerefOf (M037 [Arg0]) * 
                0x04), 0x00, 0x01))
        }
        Else
        {
            Return (M011 ((M084 + 0x0160), Arg0, 0x07, 0x01))
        }
    }

    Method (M031, 1, Serialized)
    {
        Local0 = M011 ((M084 + 0x0240), Arg0, 0x00, 0x05)
        Return (M011 ((M084 + 0x0208), (Local0 / 0x08), (Local0 & 
            0x07), 0x01))
    }

    Method (M032, 2, Serialized)
    {
        Local0 = M011 ((M084 + 0x0240), Arg0, 0x00, 0x05)
        M012 ((M084 + 0x0208), (Local0 / 0x08), (Local0 & 0x07
            ), 0x01, Arg1)
    }

    Method (M013, 4, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Local1 = VARR /* \M013.VARR */
        Local5 = 0x7FFFFFFF
        Local5 |= 0x80000000
        Local2 = ((Local1 >> Arg2) & (Local5 >> (0x20 - Arg3)
            ))
        If ((Arg3 == 0x08))
        {
            Local2 &= 0xFF
        }

        If ((Arg3 == 0x10))
        {
            Local2 &= 0xFFFF
        }

        If ((Arg3 == 0x18))
        {
            Local2 &= 0x00FFFFFF
        }

        Return (Local2)
    }

    Method (M014, 5, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Local1 = VARR /* \M014.VARR */
        Local5 = 0x7FFFFFFF
        Local5 |= 0x80000000
        Local2 = (Arg2 + Arg3)
        Local2 = (0x20 - Local2)
        Local2 = (((Local5 << Local2) & Local5) >> Local2)
        Local2 = ((Local2 >> Arg2) << Arg2)
        Local3 = (Arg4 << Arg2)
        Local4 = ((Local1 & (Local5 ^ Local2)) | Local3)
        VARR = Local4
    }

    Method (M011, 4, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, 0x01)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VARR,   8
        }

        Local1 = VARR /* \M011.VARR */
        Local2 = ((Local1 >> Arg2) & (0xFF >> (0x08 - Arg3)
            ))
        Return (Local2)
    }

    Method (M012, 5, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, 0x01)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VARR,   8
        }

        Local1 = VARR /* \M012.VARR */
        Local2 = (Arg2 + Arg3)
        Local2 = (0x08 - Local2)
        Local2 = (((0xFF << Local2) & 0xFF) >> Local2)
        Local2 = ((Local2 >> Arg2) << Arg2)
        Local3 = (Arg4 << Arg2)
        Local4 = ((Local1 & (0xFF ^ Local2)) | Local3)
        VARR = Local4
    }

    Method (M017, 6, Serialized)
    {
        Local0 = M083 /* \M083 */
        Local0 += (Arg0 << 0x14)
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        Return (M013 (Local0, Arg3, Arg4, Arg5))
    }

    Method (M018, 7, Serialized)
    {
        Local0 = M083 /* \M083 */
        Local0 += (Arg0 << 0x14)
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        M014 (Local0, Arg3, Arg4, Arg5, Arg6)
    }

    Method (M033, 3, Serialized)
    {
        Local0 = 0x00
        Local1 = M017 (Arg0, Arg1, Arg2, 0x34, 0x00, 0x08)
        While ((Local1 != 0x00))
        {
            Local2 = M017 (Arg0, Arg1, Arg2, Local1, 0x00, 0x08)
            If (((Local2 == 0x00) || (Local2 == 0xFF)))
            {
                Break
            }

            If ((Local2 == 0x10))
            {
                Local0 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x0C), 0x0A, 0x02)
                Break
            }

            Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x01), 0x00, 0x08)
        }

        Return (Local0)
    }

    Method (M027, 3, Serialized)
    {
        Local0 = 0x00
        Local1 = M017 (Arg0, Arg1, Arg2, 0x34, 0x00, 0x08)
        While ((Local1 != 0x00))
        {
            Local2 = M017 (Arg0, Arg1, Arg2, Local1, 0x00, 0x08)
            If (((Local2 == 0x00) || (Local2 == 0xFF)))
            {
                Break
            }

            If ((Local2 == 0x10))
            {
                Local0 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x10), 0x00, 0x02)
                Break
            }

            Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x01), 0x00, 0x08)
        }

        Return (Local0)
    }

    Method (M028, 4, Serialized)
    {
        Local0 = 0x00
        Local1 = M017 (Arg0, Arg1, Arg2, 0x34, 0x00, 0x08)
        While (((Local1 != 0x00) && (Local1 < 0xFF)))
        {
            Local2 = M017 (Arg0, Arg1, Arg2, Local1, 0x00, 0x08)
            If (((Local2 == 0x00) || (Local2 == 0xFF)))
            {
                Break
            }

            If ((Local2 == 0x10))
            {
                M018 (Arg0, Arg1, Arg2, (Local1 + 0x10), 0x00, 0x02, Arg3)
                Break
            }

            Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x01), 0x00, 0x08)
        }
    }

    Method (M034, 1, Serialized)
    {
        Return (M011 ((M084 + 0x0700), Arg0, 0x00, 0x08))
    }

    Method (M015, 1, Serialized)
    {
        Return (M011 ((M084 + 0x0400), Arg0, 0x00, 0x08))
    }

    Method (M016, 2, Serialized)
    {
        M012 ((M084 + 0x0400), Arg0, 0x00, 0x08, Arg1)
    }

    Method (M035, 1, Serialized)
    {
        Return (M011 (M084, Arg0, 0x00, 0x08))
    }

    Method (M036, 2, Serialized)
    {
        M012 (M084, Arg0, 0x00, 0x08, Arg1)
    }

    Method (M001, 2, Serialized)
    {
        Local0 = 0x00
        If ((Arg0 == 0x15))
        {
            Local0 = 0x01
        }

        Return (Local0)
    }

    Method (M003, 3, Serialized)
    {
        Local0 = (Arg0 << 0x05)
        Local1 = (Local0 + Arg1)
        Local2 = (Local1 << 0x18)
        Local3 = (Local2 + Arg2)
        Return (Local3)
    }

    Method (M004, 1, Serialized)
    {
        OperationRegion (VARM, SystemIO, 0x0CD8, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Local0 = VAR2 /* \M004.VAR2 */
        Return (Local0)
    }

    Method (M005, 2, Serialized)
    {
        Local0 = Arg0
        OperationRegion (VARM, SystemIO, 0x0CD8, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        VAR2 = Arg1
    }

    Method (M006, 3, Serialized)
    {
        Local0 = (M004 (Arg0) & Arg1)
        Local1 = (Local0 | Arg2)
        M005 (Arg0, Local1)
    }

    Method (M002, 2, Serialized)
    {
        If ((Arg0 == 0x00))
        {
            If ((Arg1 == 0x00))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFFEFFF, 0x00)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFFEFE, 0x00)
            }

            If ((Arg1 == 0x01))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFFDFFF, 0x00)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFFDFD, 0x00)
            }

            If ((Arg1 == 0x02))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFFBFFF, 0x00)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFFBFB, 0x00)
            }

            If ((Arg1 == 0x03))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFF7FFF, 0x00)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFF7F7, 0x00)
            }

            Sleep (0x01)
        }

        If ((Arg0 == 0x01))
        {
            If ((Arg1 == 0x00))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFFEFFF, 0x1000)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFFEFE, 0x0101)
            }

            If ((Arg1 == 0x01))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFFDFFF, 0x2000)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFFDFD, 0x0202)
            }

            If ((Arg1 == 0x02))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFFBFFF, 0x4000)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFFBFB, 0x0404)
            }

            If ((Arg1 == 0x03))
            {
                M006 (M003 (0x06, 0x00, 0xC0), 0xFFFF7FFF, 0x8000)
                M006 (M003 (0x01, 0x00, 0x65), 0xFFFFF7F7, 0x0808)
            }

            Sleep (0x01)
        }

        If ((Arg0 == 0x00))
        {
            M008 (Arg1)
            Local0 = M004 (M003 (0x03, Arg1, 0xA5))
            Local0 &= 0xFF
            Local1 = 0x01F4
            While (((Local1 > 0x00) && (Local0 != 0x10)))
            {
                Local0 = M004 (M003 (0x03, Arg1, 0xA5))
                Local0 &= 0xFF
                Local1--
                Sleep (0x01)
            }

            If ((Local0 != 0x10))
            {
                M007 (Arg1)
            }
        }
    }

    Method (M008, 1, Serialized)
    {
        Local0 = M019 (0x00, 0x15, Arg0, 0x88)
        Local1 = ((Local0 & 0xFFFFFFF0) | 0x02)
        M020 (0x00, 0x15, Arg0, 0x88, Local1)
        M006 (M003 (0x03, Arg0, 0xA4), 0xFFFFFFFE, 0x01)
        M006 (M003 (0x03, Arg0, 0xA2), 0xFFFFDFFF, 0x2000)
        M006 (M003 (0x03, Arg0, 0xC0), 0xFFFF7FFF, 0x8000)
        M006 (M003 (0x03, Arg0, 0xA4), 0xDFFFFFFF, 0x20000000)
        Sleep (0x01)
    }

    Method (M007, 1, Serialized)
    {
        Local0 = M019 (0x00, 0x15, Arg0, 0x88)
        Local1 = ((Local0 & 0xFFFFFFF0) | 0x01)
        M020 (0x00, 0x15, Arg0, 0x88, Local1)
        M006 (M003 (0x03, Arg0, 0xA4), 0xFFFFFFFE, 0x00)
        M006 (M003 (0x03, Arg0, 0xA2), 0xFFFFDFFF, 0x2000)
        Sleep (0x01)
    }

    Method (M111, 2, Serialized)
    {
        If ((Arg0 != 0x00))
        {
            Local0 = M110 /* \M110 */
            If (Local0)
            {
                Local0 += 0x10
                Local1 = 0x00
                Local2 = 0x01
                While (((Local2 != 0xFF) && (Local2 != 0x00)))
                {
                    Local2 = M013 ((Local0 + Local1), 0x00, 0x00, 0x08)
                    Local3 = M013 ((Local0 + Local1), 0x01, 0x00, 0x08)
                    If (((Local2 == Arg0) && (Local3 == Arg1)))
                    {
                        Local4 = M013 ((Local0 + Local1), 0x02, 0x00, 0x08)
                        If ((Local4 == 0x00))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                            M010 (Local5, Local6)
                        }

                        If ((Local4 == 0x01))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                            While ((M009 (Local5) != Local6)) {}
                        }

                        If ((Local4 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, 0x00, 0x20)
                            Sleep (((Local5 + 0x03E7) / 0x03E8))
                        }
                    }

                    Local1 += 0x08
                }
            }
        }
    }

    Method (M112, 2, Serialized)
    {
        If ((Arg0 != 0x00))
        {
            Local0 = M109 /* \M109 */
            If (Local0)
            {
                Local0 += 0x10
                Local1 = 0x00
                Local2 = 0x01
                While (((Local2 != 0xFF) && (Local2 != 0x00)))
                {
                    Local2 = M013 ((Local0 + Local1), 0x00, 0x00, 0x08)
                    Local3 = M013 ((Local0 + Local1), 0x01, 0x00, 0x08)
                    If (((Local2 == Arg0) && (Local3 == Arg1)))
                    {
                        If ((Local3 < 0x02))
                        {
                            Local4 = M013 ((Local0 + Local1), 0x02, 0x00, 0x08)
                            If ((Local4 == 0x00))
                            {
                                Local5 = M013 ((Local0 + Local1), 0x03, 0x00, 0x10)
                                Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                                M010 (Local5, Local6)
                            }
                        }

                        If ((Local3 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, 0x00, 0x20)
                            Sleep (((Local5 + 0x03E7) / 0x03E8))
                        }
                    }

                    Local1 += 0x08
                }
            }
        }
    }

    Method (M113, 1, Serialized)
    {
        If ((Arg0 != 0x00))
        {
            Local0 = M108 /* \M108 */
            Local7 = 0x01
            If (Local0)
            {
                Local0 += 0x10
                Local1 = 0x00
                Local2 = 0x01
                While (((Local2 != 0xFF) && (Local2 != 0x00)))
                {
                    Local2 = M013 ((Local0 + Local1), 0x00, 0x00, 0x08)
                    If ((Local2 == Arg0))
                    {
                        Local2 = 0xFF
                        Local3 = M013 ((Local0 + Local1), 0x01, 0x00, 0x08)
                        If ((Local3 == 0x00))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, 0x00, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x01))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, 0x00, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, 0x00, 0x08)
                            Local7 &= (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, 0x00, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, 0x00, 0x08)
                            Local7 &= (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x08, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x0A, 0x00, 0x08)
                            Local7 &= (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x03))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, 0x00, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, 0x00, 0x08)
                            Local7 |= (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x04))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, 0x00, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, 0x00, 0x08)
                            Local7 |= (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x08, 0x00, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x0A, 0x00, 0x08)
                            Local7 |= (M009 (Local5) == Local6)
                        }
                    }
                    Else
                    {
                        Local1 += 0x0B
                    }
                }
            }
        }
        Else
        {
            Local7 = 0x00
        }

        If (Local7)
        {
            Local7 = 0x01
        }

        Return (Local7)
    }

    Method (M114, 3, Serialized)
    {
        Local7 = 0x00
        If (!M001 (Arg0, Arg1))
        {
            Name (M115, Buffer (0x05) {})
            CreateWordField (M115, 0x00, M116)
            CreateField (M115, 0x10, 0x03, M117)
            CreateField (M115, 0x13, 0x05, M118)
            CreateByteField (M115, 0x03, M119)
            CreateByteField (M115, 0x04, M120)
            M116 = 0x05
            M119 = 0x00
            M118 = Arg0
            M117 = Arg1
            If ((Arg2 == 0x00))
            {
                M120 = 0x00
                \_SB.ALIB (0x06, M115)
            }
            Else
            {
                M120 = 0x01
                \_SB.ALIB (0x06, M115)
                Local0 = M017 (0x00, Arg0, Arg1, 0x19, 0x00, 0x08)
                If (((Local0 != 0x00) && (Local0 != 0xFF)))
                {
                    Local1 = M019 (Local0, 0x00, 0x00, 0x00)
                    Local2 = 0x7FFFFFFF
                    Local2 |= 0x80000000
                    If (((Local1 != 0x00) && (Local1 != Local2)))
                    {
                        Local7 = 0x01
                    }
                }
            }
        }
        ElseIf ((Arg2 == 0x00))
        {
            M002 (0x01, Arg1)
        }
        Else
        {
            M002 (0x00, Arg1)
            Local0 = M017 (0x00, Arg0, Arg1, 0x19, 0x00, 0x08)
            If (((Local0 != 0x00) && (Local0 != 0xFF)))
            {
                Local1 = M019 (Local0, 0x00, 0x00, 0x00)
                Local2 = 0x7FFFFFFF
                Local2 |= 0x80000000
                If (((Local1 != 0x00) && (Local1 != Local2)))
                {
                    Local7 = 0x01
                }
            }
        }

        Return (Local7)
    }

    Name (M046, Zero)
    Name (M047, Ones)
    Method (M045, 0, Serialized)
    {
        Local0 = 0x00
        If ((M047 == Ones))
        {
            M047 = 0x00
            M046 = 0x00
            If (CondRefOf (\_OSI))
            {
                If (\_OSI ("Windows 2012"))
                {
                    M046 = 0x01
                }

                If (\_OSI ("Windows 2013"))
                {
                    M046 = 0x01
                }

                If (\_OSI ("Linux"))
                {
                    M046 = 0x02
                }
            }
        }

        If ((M046 == 0x01))
        {
            Local0 = 0x01
        }

        Return (Local0)
    }

    Method (M044, 0, Serialized)
    {
        M045 ()
        Local0 = 0x00
        If ((M046 == 0x02))
        {
            Local0 = 0x01
        }

        Return (Local0)
    }

    Method (M049, 2, Serialized)
    {
        Local0 = 0x00
        If ((Arg0 != 0x00))
        {
            Local0 = M011 (Arg0, Arg1, 0x00, 0x08)
        }

        Return (Local0)
    }

    Method (M043, 3, Serialized)
    {
        If (CondRefOf (MOEM))
        {
            Return (MOEM) /* External reference */
            Arg0
            Arg1
            Arg2
        }
        Else
        {
            Return (0x00)
        }
    }
}

