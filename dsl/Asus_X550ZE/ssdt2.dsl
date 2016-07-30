/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160212-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Fri Jul 29 22:02:46 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00009AC7 (39623)
 *     Revision         0x02
 *     Checksum         0x97
 *     OEM ID           "AMD"
 *     OEM Table ID     "BALLINA "
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x04000000 (67108864)
 */
DefinitionBlock ("ssdt2.aml", "SSDT", 2, "AMD", "BALLINA ", 0x00000002)
{

    External (_SB_.ALIC, MethodObj)    // 6 Arguments
    External (A090, MethodObj)    // 0 Arguments
    External (A091, MethodObj)    // 5 Arguments

    Scope (\_SB)
    {
        Name (AGRB, 0xE0000000)
        Name (ADBG, Buffer (0x0100) {})
        Name (ADAT, Buffer (0x0200)
        {
            /* 0000 */  0x03, 0x6C, 0x6C, 0x62, 0x20, 0x00, 0x00, 0x00,  /* .llb ... */
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0020 */  0x03, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x1F,  /* ........ */
            /* 0028 */  0x10, 0x00, 0x0F, 0x00, 0x01, 0x02, 0x01, 0x00,  /* ........ */
            /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0038 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0048 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0060 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0070 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0088 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0098 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x01, 0x02,  /* ........ */
            /* 00B0 */  0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x00,  /* ........ */
            /* 00B8 */  0x00, 0x04, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00C0 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 00D8 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E8 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0100 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
        })
        Method (ALIB, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Local0 = Buffer (0x0100) {}
                CreateWordField (Local0, 0x00, A016)
                A016 = 0x08
                CreateWordField (Local0, 0x02, A017)
                A017 = 0x01
                CreateDWordField (Local0, 0x04, A018)
                If ((DerefOf (\_SB.ADAT [0x00]) > 0x00))
                {
                    A018 = 0x0F
                    Return (Local0)
                }
                Else
                {
                    A018 = 0x01
                    Return (Local0)
                }
            }

            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A019 (Local0))
            }

            If ((Arg0 == 0x02))
            {
                Return (A020 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A021 (Local0))
            }

            If ((Arg0 == 0x06))
            {
                Local0 = DerefOf (Arg1 [0x04])
                Local1 = DerefOf (Arg1 [0x02])
                Return (A024 (Local0, Local1))
            }

            If ((Arg0 == 0x0A))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A025 (Local0))
            }

            If ((Arg0 == 0x0B))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Local1 = DerefOf (Arg1 [0x03])
                Local2 = DerefOf (Arg1 [0x04])
                Local2 |= (DerefOf (Arg1 [0x05]) << 0x08)
                Local2 |= (DerefOf (Arg1 [0x06]) << 0x10)
                Local2 |= (DerefOf (Arg1 [0x07]) << 0x18)
                Local3 = DerefOf (Arg1 [0x08])
                Local3 |= (DerefOf (Arg1 [0x09]) << 0x08)
                Local3 |= (DerefOf (Arg1 [0x0A]) << 0x10)
                Local3 |= (DerefOf (Arg1 [0x0B]) << 0x18)
                Local4 = DerefOf (Arg1 [0x0C])
                Local4 |= (DerefOf (Arg1 [0x0D]) << 0x08)
                Local4 |= (DerefOf (Arg1 [0x0E]) << 0x10)
                Local4 |= (DerefOf (Arg1 [0x0F]) << 0x18)
                Return (A026 (Local0, Local1, Local2, Local3, Local4))
            }

            Return (0x00)
        }

        Method (A024, 2, NotSerialized)
        {
            Local0 = 0x00
            While ((Local0 < 0x0C))
            {
                Local1 = A087 (Local0, Arg1)
                If ((Local1 == 0x01))
                {
                    Local1 = A088 (Local0, Arg0)
                    Break
                }

                Local0++
            }

            Local7 = Buffer (0x0A) {}
            CreateWordField (Local7, 0x00, A016)
            CreateByteField (Local7, 0x02, A027)
            CreateByteField (Local7, 0x03, A089)
            A016 = 0x04
            A027 = 0x00
            A089 = Local1
            Return (Local7)
        }

        Method (A087, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A080 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A080 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A080 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A080 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A080 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A080 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A080 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A080 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A080 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A080 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A080 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A080 (Arg1))
            }
        }

        Method (A088, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A081 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A081 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A081 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A081 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A081 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A081 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A081 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A081 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A081 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A081 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A081 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A081 (Arg1))
            }
        }

        Name (AD00, 0x00)
        Name (DK00, 0x00)
        Method (A019, 1, NotSerialized)
        {
            If ((AD00 == Arg0))
            {
                Return (0x00)
            }

            AD00 = Arg0
            A007 ()
        }

        Method (A025, 1, NotSerialized)
        {
            DK00 = Arg0
            A090 ()
        }

        Method (A026, 5, NotSerialized)
        {
            A091 (Arg0, Arg1, Arg2, Arg3, Arg4)
        }

        Name (AP01, 0x00)
        Name (AP02, 0x00)
        Name (AP03, 0x00)
        Name (AP05, 0x00)
        Name (AP0B, 0xFF)
        Name (AP10, 0x00)
        Method (A020, 1, NotSerialized)
        {
            Local7 = Buffer (0x0100) {}
            CreateWordField (Local7, 0x00, A016)
            A016 = 0x03
            CreateByteField (Local7, 0x02, A027)
            A027 = 0x01
            If ((DerefOf (\_SB.ADAT [0x00]) == 0x01))
            {
                A027 = 0x02
                Return (Local7)
            }

            If ((DerefOf (\_SB.ADAT [0x00]) == 0x00))
            {
                A027 = 0x01
                Return (Local7)
            }

            A028 (Arg0)
            If ((AP05 != 0x01))
            {
                Return (Local7)
            }

            A029 ()
            A027 = 0x02
            Return (Local7)
        }

        Method (A008, 0, NotSerialized)
        {
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            If ((AP05 != 0x01))
            {
                Return (0x00)
            }

            A029 ()
        }

        Method (A030, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                AP01 = 0x00
            }
        }

        Method (A006, 1, NotSerialized)
        {
            AP10 = 0x01
        }

        Method (A021, 1, NotSerialized)
        {
            AP05 = Arg0
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            Local1 = AP0B /* \_SB_.AP0B */
            If ((AP05 == 0x00))
            {
                Local0 = 0x00
                While ((Local0 < 0x0C))
                {
                    A031 (Local0)
                    Local0++
                }

                AP0B = 0x00
            }

            A029 ()
            AP0B = Local1
            Local7 = Buffer (0x0100) {}
            Local7 [0x00] = 0x03
            Local7 [0x01] = 0x00
            Local7 [0x02] = 0x00
            Return (Local7)
        }

        Method (A032, 0, NotSerialized)
        {
            If ((AP0B != 0xFF))
            {
                Return (AP0B) /* \_SB_.AP0B */
            }

            Return (AD00) /* \_SB_.AD00 */
        }

        Method (A028, 1, NotSerialized)
        {
            CreateWordField (Arg0, 0x02, AP06)
            CreateWordField (Arg0, 0x04, AP07)
            CreateWordField (Arg0, 0x06, AP08)
            CreateByteField (Arg0, 0x08, AP09)
            CreateByteField (Arg0, 0x09, AP0A)
            Local0 = 0x00
            While ((Local0 < 0x0C))
            {
                If ((A033 (Local0, AP06) == 0x01))
                {
                    If (((AP07 & AP08) == 0x01))
                    {
                        Local1 = A034 (Local0)
                        A035 (Local0, Local1)
                    }
                    Else
                    {
                        A035 (Local0, AP0A)
                    }

                    Break
                }

                Local0++
            }
        }

        Method (A036, 0, NotSerialized)
        {
            AP02 = 0x01
            Local0 = 0x00
            While ((Local0 < 0x0C))
            {
                Local1 = A037 (Local0)
                If ((Local1 > AP02))
                {
                    AP02 = Local1
                }

                Local0++
            }
        }

        Method (A038, 0, NotSerialized)
        {
            AP03 = 0x00
            Local0 = 0x00
            While ((Local0 < 0x0C))
            {
                Local1 = A039 (Local0)
                If ((Local1 > AP03))
                {
                    AP03 = Local1
                }

                Local0++
            }
        }

        Method (A029, 0, NotSerialized)
        {
            A038 ()
            A036 ()
            If ((AP02 != AP01))
            {
                A012 (AP02, AP01)
            }

            If ((AP02 > AP01))
            {
                \_SB.A040 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }

            Local0 = 0x00
            While ((Local0 < 0x0C))
            {
                Local1 = A037 (Local0)
                Local2 = A041 (Local0)
                If ((Local1 != Local2))
                {
                    A042 (Local0, Local1)
                }
                ElseIf ((AP10 == 0x01))
                {
                    A042 (Local0, Local1)
                }

                Local0++
            }

            If ((AP02 < AP01))
            {
                \_SB.A040 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }
            ElseIf ((AP10 == 0x01))
            {
                \_SB.A040 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }

            AP10 = 0x00
        }

        Method (A042, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A043 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A043 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A043 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A043 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A043 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A043 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A043 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A043 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A043 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A043 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A043 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A043 (Arg1))
            }
        }

        Method (A041, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A044 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A044 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A044 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A044 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A044 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A044 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A044 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A044 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A044 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A044 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A044 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A044 ())
            }
        }

        Method (A037, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A045 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A045 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A045 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A045 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A045 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A045 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A045 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A045 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A045 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A045 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A045 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A045 ())
            }
        }

        Method (A039, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A046 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A046 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A046 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A046 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A046 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A046 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A046 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A046 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A046 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A046 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A046 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A046 ())
            }
        }

        Method (A034, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A047 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A047 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A047 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A047 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A047 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A047 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A047 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A047 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A047 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A047 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A047 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A047 ())
            }
        }

        Method (A035, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A048 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A048 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A048 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A048 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A048 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A048 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A048 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A048 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A048 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A048 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A048 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A048 (Arg1))
            }
        }

        Method (A033, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A049 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A049 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A049 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A049 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A049 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A049 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A049 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A049 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A049 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A049 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A049 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A049 (Arg1))
            }
        }

        Method (A031, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A050 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A050 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR1.ABR2.A050 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR1.ABR3.A050 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR1.ABR4.A050 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A050 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A050 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR2.ABR7.A050 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR2.ABR8.A050 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR2.ABR9.A050 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR2.ABRA.A050 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR2.ABRB.A050 ())
            }
        }

        OperationRegion (A118, SystemMemory, (AGRB + 0x000C4000), 0x1000)
        Field (A118, ByteAcc, NoLock, Preserve)
        {
            Offset (0x124), 
                ,   22, 
            A015,   1, 
            A119,   4
        }

        OperationRegion (A120, SystemMemory, (AGRB + 0x000C5000), 0x1000)
        Field (A120, ByteAcc, NoLock, Preserve)
        {
            Offset (0x170), 
                ,   14, 
            A121,   1
        }

        OperationRegion (A096, SystemMemory, AGRB, 0x1000)
        Field (A096, ByteAcc, NoLock, Preserve)
        {
            Offset (0x60), 
            A097,   32, 
            Offset (0xB8), 
            A098,   32, 
            Offset (0xC8), 
            A099,   32, 
            Offset (0xF8), 
            A100,   32
        }

        BankField (A096, A099, 0x00210001, DWordAcc, NoLock, Preserve)
        {
            Offset (0xCC), 
            A101,   1, 
                ,   1, 
            A102,   1
        }

        BankField (A096, A098, 0xC2100000, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A103,   32
        }

        BankField (A096, A098, 0xC2100004, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A104,   1, 
            A105,   1
        }

        BankField (A096, A098, 0xC210003C, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A106,   32
        }

        BankField (A096, A098, 0x0003FFFC, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A107,   1, 
            A108,   1, 
            A109,   1, 
            Offset (0xBE), 
            A110,   8, 
            A111,   8
        }

        BankField (A096, A098, 0x0003FFFC, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A112,   32
        }

        BankField (A096, A098, 0x0003F9D8, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
                ,   1, 
            A113,   1, 
                ,   3, 
            A114,   1
        }

        BankField (A096, A100, 0x00, DWordAcc, NoLock, Preserve)
        {
            Offset (0xFC), 
                ,   4, 
            A115,   1
        }

        OperationRegion (A116, SystemMemory, (AGRB + 0x8000), 0x1000)
        Field (A116, DWordAcc, NoLock, Preserve)
        {
            A117,   32
        }

        Method (A040, 1, NotSerialized)
        {
            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (\_SB.ADAT [0x01])
            }

            If ((Arg0 == 0x02))
            {
                Local0 = DerefOf (\_SB.ADAT [0x02])
            }

            If ((Arg0 == 0x03))
            {
                Local0 = DerefOf (\_SB.ADAT [0x03])
            }

            If ((Local0 > 0xF7))
            {
                Local0 = 0xF7
            }

            Local2 = (0x0271 * ((Local1 = (0xF7 - Local0)) + 0x01))
            Divide (Local2 *= 0x04, 0x64, Local3, Local4)
            A122 (0x3A, Local4)
        }

        Method (A084, 4, NotSerialized)
        {
            If ((Arg1 > Arg2))
            {
                A110 = Arg2
                A111 = Arg1
            }
            Else
            {
                A110 = Arg1
                A111 = Arg2
            }

            If ((A110 == 0x10))
            {
                If ((Arg3 == 0x03))
                {
                    A107 = 0x00
                }
                Else
                {
                    A107 = 0x01
                }
            }
            Else
            {
                A107 = 0x01
            }

            A108 = 0x01
            A109 = 0x00
            If ((Arg0 == 0x01))
            {
                Local0 = 0x03
            }
            Else
            {
                Local0 = 0x02
            }

            Local1 = A112 /* \_SB_.A112 */
            A122 (Local0, Local1)
        }

        Method (A122, 2, Serialized)
        {
            While ((A105 != 0x01)) {}
            A106 = Arg1
            Local1 = A103 /* \_SB_.A103 */
            Local1 = ~Local1
            Local1 &= 0x01
            Local2 = Arg0
            Local2 <<= 0x01
            A103 = (Local2 | Local1)
            While ((A104 != 0x01)) {}
            While ((A105 != 0x01)) {}
        }

        Method (A053, 1, NotSerialized)
        {
            If ((Arg0 == 0x01))
            {
                A102 = 0x00
                A101 = 0x00
            }
            Else
            {
                A101 = 0x01
                A102 = 0x01
            }
        }

        Method (A123, 1, NotSerialized)
        {
            Local0 = A121 /* \_SB_.A121 */
            If ((Arg0 == 0x00))
            {
                A121 = 0x01
            }
            Else
            {
                A121 = 0x00
            }
        }

        Name (A124, 0x00)
        Name (A125, 0x00)
        Method (A011, 1, NotSerialized)
        {
            If ((A124 == 0x00))
            {
                If ((A117 != 0xFFFFFFFF))
                {
                    A125 = A113 /* \_SB_.A113 */
                }

                A124 = 0x01
            }

            If ((A125 == 0x01))
            {
                If ((Arg0 == 0x00)) {}
                Else
                {
                }
            }
        }

        Method (A005, 1, NotSerialized)
        {
            Local0 = A115 /* \_SB_.A115 */
            If ((Arg0 == 0x00))
            {
                A115 = 0x00
            }
            Else
            {
                A115 = 0x01
            }

            Return (Local0)
        }

        OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            A092,   8, 
            A093,   8
        }

        IndexField (A092, A093, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            A094,   32
        }

        OperationRegion (ACFG, SystemIO, A094, 0x08)
        Field (ACFG, DWordAcc, NoLock, Preserve)
        {
            A095,   32
        }

        BankField (ACFG, A095, 0x80000068, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            A060,   2
        }

        Name (ABSM, 0x00)
        Method (A057, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                ABSM = A060 /* \_SB_.A060 */
                A060 = 0x00
            }
            Else
            {
                A060 = ABSM /* \_SB_.ABSM */
            }
        }

        Device (AWR0)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x90)  // _UID: Unique ID
            Name (WRBS, 0x0130)
            Device (ABR0)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x80)  // _UID: Unique ID
                Name (AB12, 0x20)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR0.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR0.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR0.ABR0.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR0.ABR0.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR0.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR0.ABR0.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR0.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR0.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR0.ABR0.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR0.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR0.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR0.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR1)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x81)  // _UID: Unique ID
                Name (AB12, 0x34)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR1.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR1.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR0.ABR1.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR0.ABR1.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR1.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR0.ABR1.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR1.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR1.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR0.ABR1.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR1.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR1.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR1.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }
        }

        Device (AWR1)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x91)  // _UID: Unique ID
            Name (WRBS, 0x0131)
            Device (ABR2)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x82)  // _UID: Unique ID
                Name (AB12, 0x48)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR2.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR2.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR2.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR2.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR2.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR2.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR2.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR2.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR1.ABR2.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR1.ABR2.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR2.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR1.ABR2.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR2.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR2.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR1.ABR2.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR2.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR2.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR2.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR3)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x83)  // _UID: Unique ID
                Name (AB12, 0x5C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR3.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR3.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR3.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR3.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR3.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR3.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR3.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR3.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR1.ABR3.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR1.ABR3.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR3.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR1.ABR3.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR3.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR3.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR1.ABR3.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR3.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR3.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR3.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR4)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x84)  // _UID: Unique ID
                Name (AB12, 0x70)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR4.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR4.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR4.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR4.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR4.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR4.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR4.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR4.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR1.ABR4.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR1.ABR4.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR4.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR1.ABR4.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR4.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR4.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR1.ABR4.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR4.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR4.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR4.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR5)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x85)  // _UID: Unique ID
                Name (AB12, 0x84)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR5.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR5.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR5.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR5.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR5.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR5.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR5.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR5.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR1.ABR5.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR1.ABR5.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR5.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR1.ABR5.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR5.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR5.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR1.ABR5.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR5.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR5.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR5.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR6)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x86)  // _UID: Unique ID
                Name (AB12, 0x98)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR6.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR6.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR6.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR6.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR6.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR6.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR6.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR6.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR1.ABR6.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR1.ABR6.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR6.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR1.ABR6.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR6.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR6.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR1.ABR6.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR6.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR6.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR6.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }
        }

        Device (AWR2)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x92)  // _UID: Unique ID
            Name (WRBS, 0x0132)
            Device (ABR7)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x87)  // _UID: Unique ID
                Name (AB12, 0xAC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR2.ABR7.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR2.ABR7.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR2.ABR7.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR2.ABR7.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR2.ABR7.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR2.ABR7.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR2.ABR7.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR2.ABR7.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR2.ABR7.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR2.ABR7.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR2.ABR7.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR2.ABR7.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR2.ABR7.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR2.ABR7.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR2.ABR7.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR2.ABR7.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR2.ABR7.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR2.ABR7.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR8)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x88)  // _UID: Unique ID
                Name (AB12, 0xC0)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR2.ABR8.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR2.ABR8.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR2.ABR8.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR2.ABR8.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR2.ABR8.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR2.ABR8.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR2.ABR8.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR2.ABR8.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR2.ABR8.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR2.ABR8.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR2.ABR8.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR2.ABR8.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR2.ABR8.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR2.ABR8.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR2.ABR8.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR2.ABR8.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR2.ABR8.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR2.ABR8.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABR9)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x89)  // _UID: Unique ID
                Name (AB12, 0xD4)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR2.ABR9.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR2.ABR9.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR2.ABR9.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR2.ABR9.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR2.ABR9.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR2.ABR9.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR2.ABR9.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR2.ABR9.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR2.ABR9.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR2.ABR9.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR2.ABR9.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR2.ABR9.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR2.ABR9.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR2.ABR9.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR2.ABR9.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR2.ABR9.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR2.ABR9.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR2.ABR9.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABRA)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8A)  // _UID: Unique ID
                Name (AB12, 0xE8)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR2.ABRA.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR2.ABRA.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR2.ABRA.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR2.ABRA.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR2.ABRA.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR2.ABRA.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR2.ABRA.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR2.ABRA.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR2.ABRA.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR2.ABRA.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR2.ABRA.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR2.ABRA.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR2.ABRA.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR2.ABRA.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR2.ABRA.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR2.ABRA.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR2.ABRA.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR2.ABRA.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }

            Device (ABRB)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8B)  // _UID: Unique ID
                Name (AB12, 0xFC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A073, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A064,   8, 
                    A065,   8, 
                    Offset (0x68), 
                    A060,   2, 
                        ,   2, 
                    A074,   1, 
                    A061,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A062,   1, 
                    Offset (0x88), 
                    A072,   4, 
                        ,   1, 
                    A069,   1, 
                    Offset (0xE0), 
                    A075,   32
                }

                BankField (A073, A075, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A056,   1
                }

                BankField (A073, A075, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A071,   1
                }

                BankField (A073, A075, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A067,   1, 
                    A068,   1, 
                        ,   11, 
                    A063,   2, 
                        ,   14, 
                    A070,   1
                }

                BankField (A073, A075, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A055,   6
                }

                OperationRegion (A076, SystemMemory, AGRB, 0x1000)
                Field (A076, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A077,   32
                }

                BankField (A076, A077, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A078,   1
                }

                BankField (A076, A077, ((^WRBS << 0x10) | 0x8029), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A079,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A051, 0, NotSerialized)
                {
                    Local0 = A032 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR2.ABRB.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR2.ABRB.AB0E */
                    }
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A052, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR2.ABRB.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A045, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR2.ABRB.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR2.ABRB.AB0E */
                    }

                    Local0 = A052 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR2.ABRB.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A051 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR2.ABRB.AB02 */
                }

                Method (A047, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR2.ABRB.AB00 */
                }

                Method (A043, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x01)
                    }

                    A054 (Arg0)
                    If ((A055 >= 0x10))
                    {
                        If ((AB10 != 0x00))
                        {
                            A056 = 0x00
                        }
                        Else
                        {
                            A056 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x00)
                        }
                        Else
                        {
                            A058 (0x00)
                        }

                        Name (A059, 0x00)
                        A059 = A060 /* \_SB_.AWR2.ABRB.A060 */
                        A060 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A061 = 0x01
                            Sleep (0x1E)
                            While ((A062 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A063 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A060 = A059 /* \_SB_.AWR2.ABRB.A043.A059 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A057 (0x01)
                        }
                        Else
                        {
                            A058 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A053 (0x00)
                    }
                }

                Method (A048, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A049, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A064) && (Local0 <= A065)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A066, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A050, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A054, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A067 = 0x01
                        A068 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A067 = 0x01
                        A068 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A069 = 0x01
                        A067 = 0x00
                        A068 = 0x00
                        A070 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A071 = 0x01
                        }
                    }
                    Else
                    {
                        A069 = 0x00
                        A070 = 0x01
                        A071 = 0x00
                    }

                    A072 = Arg0
                }

                Method (A086, 2, NotSerialized)
                {
                    If ((A082 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A082 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A082 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A058, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A082 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A082 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A086 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A082 (Local0, (Local1 + 0x10))
                                A083 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A083 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A083, 3, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A082, 2, Serialized)
                {
                    Local0 = (AGRB + (A064 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR2.ABRB.A082.ADRR */
                }

                Method (A080, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A066 (Arg0))
                }

                Method (A081, 1, NotSerialized)
                {
                    Name (A059, 0x00)
                    A059 = A060 /* \_SB_.AWR2.ABRB.A060 */
                    A060 = 0x00
                    If ((Arg0 == 0x01))
                    {
                        A074 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        Local0 = A082 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A083 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A082 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A083 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A074 = 0x01
                        Local0 = 0x05
                    }

                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR2.ABRB.AB0E */
                                A029 ()
                            }

                            \_SB.A084 (0x01, AB06, AB07, AB00)
                            A085 (0x01)
                            A078 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A055 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A055 >= 0x10) && (A055 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A054 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR2.ABRB.AB0D */
                                \_SB.ALIC (Local1, 0x00, Sleep (0x02), \_SB.ALIC (Local1, 0x01, Local0 = 0x03, Continue, 
                                    Local0 = 0x05, If ((Local0 == 0x05))
                                        {
                                            A082 (0x00, 0x00)
                                            A078 = 0x01
                                            A085 (0x00)
                                            \_SB.A084 (0x00, AB06, AB07, AB00)
                                            AB05 = 0x00
                                            AB04 = 0x00
                                            AB10 = 0x00
                                            Local2 = 0x00
                                            Local0 = 0x08
                                        }), If ((Local0 == 0x07))
                                    {
                                        Local2 = 0x01
                                        Local0 = 0x08
                                    }, If ((AB04 == 0x00))
                                    {
                                        AB05 = 0x00
                                    })
                            }
                        }
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A029 ()
                            }
                        }
                    }

                    A060 = A059 /* \_SB_.AWR2.ABRB.A081.A059 */
                    Return (Local2)
                }

                Method (A085, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR2.ABRB.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR2.ABRB.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR2.ABRB.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A079 |= Local0
                    }
                    Else
                    {
                        A079 &= ~Local0
                    }
                }
            }
        }

        Name (A001, 0x01)
        Name (A002, 0x01)
        Name (A003, 0x00)
        Name (A004, 0x00)
        Method (APTS, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                A004 = A005 (0x00)
            }
        }

        Method (AWAK, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                If ((A003 == 0x00)) {}
                Else
                {
                }

                If ((A004 == 0x01))
                {
                    A005 (0x01)
                }
                Else
                {
                    A005 (0x00)
                }
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                A006 (Arg0)
            }
        }

        Method (A007, 0, NotSerialized)
        {
            A008 ()
            A009 (AP01, AD00)
            A010 (AD00)
            A011 (AD00)
        }

        Method (A012, 2, NotSerialized)
        {
            A009 (Arg0, AD00)
        }

        Name (A013, 0x00)
        Name (A014, 0x00)
        Method (A010, 1, NotSerialized)
        {
            If ((A013 == 0x00))
            {
                A014 = A015 /* \_SB_.A015 */
                A013 = 0x01
            }

            If ((A014 == 0x01))
            {
                If ((Arg0 == 0x00))
                {
                    A015 = 0x00
                }
                Else
                {
                    A015 = 0x01
                }
            }
        }

        Method (A009, 2, NotSerialized)
        {
            If ((Arg1 == 0x00)) {}
            ElseIf ((Arg0 == 0x01)) {}
            Else
            {
            }
        }
    }
}

