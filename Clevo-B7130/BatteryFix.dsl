DefinitionBlock("BatteryFix.aml", "SSDT", 2, "", "B7130BAT", 0x20120318) {
External(\_SB.BAT0, DeviceObj)
External(\_SB.PCI0.LPCB.EC.BAT0)
External(\_SB.PCI0.LPCB.EC.BST0)
External(\_SB.PCI0.LPCB.EC.ADP)
External(\_SB.PCI0.LPCB.EC.BPR0)
External(\_SB.PCI0.LPCB.EC.BRC0)
External(\_SB.PCI0.LPCB.EC.BFC0)
External(\_SB.PCI0.LPCB.EC.BPV0)
External(\_SB.BAT0.PBST, PkgObj)
External(\_SB.BAT0.BFCC, IntObj)
External(\_SB.BAT0.IVBS, MethodObj)
Method (\_SB.BAT0.UPBS, 0, NotSerialized) {
	If (^^PCI0.LPCB.EC.BAT0) {
		Store (Zero, Local0)
		Store (Zero, Local1)
		If (^^PCI0.LPCB.EC.ADP) {
			If (LEqual (And (^^PCI0.LPCB.EC.BST0, 0x02), 0x02)) {
				Or (Local0, 0x02, Local0)
				And (^^PCI0.LPCB.EC.BPR0, 0xFFFF, Local1)
			}
		} Else {
			Or (Local0, One, Local0)
			And (^^PCI0.LPCB.EC.BPR0, 0xFFFF, Local1)
		}

		And (Local1, 0x8000, Local7)
		/* 10.2.2.6 _BST (Battery Status):
		 * Battery Present Rate: Returns the power or current
		 * being supplied or accepted through the battery’s
		 * terminals (direction depends on the Battery State
		 * value).
		 */
		If (LEqual (Local7, 0x8000)) {
			/*Store (0xFFFFFFFF, Local1) */
			/* negate the number using two's complement */
			Subtract(0x10000, Local1, Local1)
		}

		And (^^PCI0.LPCB.EC.BRC0, 0xFFFF, Local2)
		And (^^PCI0.LPCB.EC.BPV0, 0xFFFF, Local3)
		Store (Local0, Index (PBST, Zero))
		Store (Local1, Index (PBST, One))
		Store (Local2, Index (PBST, 0x02))
		Store (Local3, Index (PBST, 0x03))
		If (LNotEqual (BFCC, ^^PCI0.LPCB.EC.BFC0)) {
			Notify (BAT0, 0x81)
		}
	} Else {
		IVBS ()
	}
}
}
