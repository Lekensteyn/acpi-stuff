
VMDISK = /tmp/acpi.qcow2
# Basename for ASL file
ASLBASE = asus

run: $(ASLBASE)-dbg.aml
	ASLBASE=$(ASLBASE) ./run-vm.sh

# Creates a new snapshot based on a Windows 10 image if missing.
$(VMDISK):
	qemu-img create -b win10-ie11.qcow2 -f qcow2 '$(VMDISK)'

run-win: $(ASLBASE)-dbg.aml $(VMDISK)
	ASLBASE=$(ASLBASE) ./run-vm.sh -m 4G -display gtk -drive file='$(VMDISK)'

$(ASLBASE)-dbg.aml: $(ASLBASE).asl ppdebug.awk
	./ppdebug.awk -vp=$(ASLBASE)-dbg $(ASLBASE).asl > $(ASLBASE)-dbg.asl
	iasl -ve -f $(ASLBASE)-dbg.asl
	@rm -f $(ASLBASE)-dbg.asl

clean:
	rm -f *-dbg.aml

qmp:
	python2 ~/projects/qemu/scripts/qmp/qmp-shell 127.0.0.1:4444

.PHONY: clean qmp run run-win
