#!/usr/bin/env python3
import argparse
import re
import struct
import sys

def ExtCapId(extCapId):
    # Sentinel to distinguish it from 8-bit Capability IDs
    return 0x10000 | extCapId

caps = {
    0x01: "Power Management",
    0x02: "Accelerated Graphics Port",
    0x03: "Vital Product Data",
    0x04: "Slot Identification",
    0x05: "Message Signaled Interrupts",
    0x06: "CompactPCI HotSwap",
    0x07: "PCI-X",
    0x08: "HyperTransport",
    0x09: "Vendor specific",
    0x0A: "Debug port",
    0x0B: "CompactPCI Central Resource Control",
    0x0C: "PCI hot-plug",
    0x0D: "Bridge subsystem vendor/device ID",
    0x0E: "AGP 8x",
    0x0F: "Secure device (?)",
    0x10: "PCI Express",
    0x11: "MSI-X",
    0x12: "Serial-ATA HBA",
    0x13: "Advanced features of PCI devices integrated in PCIe root cplx",
    0x14: "Enhanced Allocation",
}
caps_ext = {
    0x0001: "Advanced Error Reporting",
    0x0002: "Virtual Channel",
    0x0003: "Device Serial Number",
    0x0004: "Power Budgeting",
    0x0005: "Root Complex Link Declaration",
    0x0006: "Root Complex Internal Link Declaration",
    0x0007: "Root Complex Event Collector",
    0x0008: "Multi-Function Virtual Channel",
    0x0009: "Virtual Channel (2nd ID)",
    0x000a: "Root Bridge Control Block",
    0x000b: "Vendor specific",
    0x000d: "Access Controls",
    0x000e: "Alternative Routing-ID Interpretation",
    0x000f: "Address Translation Service",
    0x0010: "Single Root I/O Virtualization",
    0x0013: "Page Request Interface",
    0x0017: "Transaction processing hints",
    0x0018: "Latency Tolerance Reporting",
    0x0019: "Secondary PCI Express Extended Capability Header", # 7.27.1
    0x001b: "Process Address Space ID",
    0x001e: "L1 PM Substates",
}

pci_header_common = (
    (0x00, 2, 'Device ID'),
    (0x02, 2, 'Vendor ID'),
    (0x04, 2, 'Command'),
    (0x06, 2, 'Status'),
    (0x08, 1, 'Revision'),
    (0x09, 3, 'Class Code'),
    (0x0c, 1, 'Cacheline Size'),
    (0x0d, 1, 'Latency Timer'),
    (0x0e, 1, 'Header Type'),
    (0x0f, 1, 'BIST'),
)
pci_type0 = pci_header_common + (
    (0x10, 4, 'BAR0'),
    (0x14, 4, 'BAR1'),
    (0x18, 4, 'BAR2'),
    (0x1c, 4, 'BAR3'),
    (0x20, 4, 'BAR4'),
    (0x24, 4, 'BAR5'),
    (0x28, 4, 'Cardbus CIS Pointer'),
    (0x2c, 2, 'Subsystem Vendor ID'),
    (0x2e, 2, 'Subsystem ID'),
    (0x30, 4, 'Expansion ROM Base Address'),
    (0x34, 1, 'Capabilities Pointer'),
    (0x3c, 1, 'Interrupt Line'),
    (0x3d, 1, 'Interrupt Pin'),
    (0x3e, 1, 'Min Gnt'),
    (0x3f, 1, 'Max Latency'),
)
pci_type1 = pci_header_common + (
    (0x10, 4, 'BAR0'),
    (0x14, 4, 'BAR1'),
    (0x18, 1, 'Primary Bus Number'),
    (0x19, 1, 'Secondary Bus Number'),
    (0x1a, 1, 'Subordiante Bus Number'),
    (0x1b, 1, 'Subordiante Latency Timer'),
    (0x1c, 1, 'I/O Base'),
    (0x1d, 1, 'I/O Limit'),
    (0x1e, 2, 'Secondary Status'),
    (0x20, 2, 'Memory Base'),
    (0x22, 2, 'Memory Limit'),
    (0x24, 2, 'Prefetchable Memory Base'),
    (0x26, 2, 'Prefetchable Memory Limit'),
    (0x28, 4, 'Prefetchable Base Upper 32 Bits'),
    (0x2c, 4, 'Prefetchable Limit Upper 32 Bits'),
    (0x30, 2, 'I/O Base Upper 16 Bits'),
    (0x32, 2, 'I/O Limit Upper 16 Bits'),
    (0x34, 1, 'Capabilities Pointer'),
    (0x3c, 1, 'Interrupt Line'),
    (0x3d, 1, 'Interrupt Pin'),
    (0x3e, 2, 'Bridge Control'),
)

cap_pm = 0x01, 'PM', (
    #(0x00, 2, 'PCI Power Management Register'),
    (0x02, 2, 'PMC'),
    (0x04, 2, 'PMCSR'),
    (0x06, 1, 'PMCSR_BSE'),
    (0x07, 1, 'Data'),
), 0x8

# Capability Structure for 64-bit Message Address
cap_msi = 0x05, 'MSI', (
    #(0x00, 2, 'MSI Capability Register'),
    (0x02, 2, 'Message Control'),
    (0x04, 2, 'Message Address'),
    (0x08, 4, 'Message Upper Address'),
    (0x0c, 2, 'Message Data'),
), 0x0e

cap_pcie = 0x10, 'PCIE', (
    #(0x00, 2, 'PCI Express Capability List Register'),
    (0x02, 2, 'PCI Express Capabilities Register'),
    (0x04, 4, 'Device Capabilities'),
    (0x08, 2, 'Device Control'),
    (0x0a, 2, 'Device Status'),
    (0x0c, 4, 'Link Capabilities'),
    (0x10, 2, 'Link Control'),
    (0x12, 2, 'Link Status'),
    (0x14, 4, 'Slot Capabilities'),
    (0x18, 2, 'Slot Control'),
    (0x1a, 2, 'Slot Status'),
    (0x1c, 2, 'Root Control'),
    (0x1e, 2, 'Root Capabilities'),
    (0x20, 4, 'Root Status'),
    (0x24, 4, 'Device Capabilities 2'),
    (0x28, 2, 'Device Control 2'),
    (0x2a, 2, 'Device Status 2'),
    (0x2c, 4, 'Link Capabilities 2'),
    (0x30, 2, 'Link Status 2'),
    (0x32, 2, 'Link Control 2'),
    (0x34, 4, 'Slot Capabilities 2'),
    (0x38, 2, 'Slot Status 2'),
    (0x3a, 2, 'Slot Control 2'),
), 0x3c

cap_aer = ExtCapId(0x0001), 'AER', (
    #(0x00, 4, 'PCI Express Extended Capability Header'),
    (0x04, 4, 'Uncorrectable Error Status Register'),
    (0x08, 4, 'Uncorrectable Error Mask Register'),
    (0x0c, 4, 'Uncorrectable Error Severity Register'),
    (0x10, 4, 'Correctable Error Status Register'),
    (0x14, 4, 'Correctable Error Mask Register'),
    (0x18, 4, 'Advanced Error Capabilities and Control Register'),
    (0x1c, 16, 'Header Log Register'),
    (0x2c, 4, 'Root Error Command'),
    (0x30, 4, 'Root Error Status'),
    (0x34, 2, 'Correctable Error Source Identification Register'),
    (0x36, 2, 'Error Source Identification Register'),
    (0x38, 16, 'TLP Prefix Log Register'),
), 0x48

cap_vc = ExtCapId(0x0002), 'VC', (
    #(0x00, 4, 'PCI Express Extended Capability Header'),
    (0x04, 4, 'Port VC Capability Register 1'),
    (0x08, 3, 'Port VC Capability Register 2'),
    (0x0b, 1, 'VC Arb Table Offset'),
    (0x0c, 2, 'Port VC Control Register'),
    (0x0e, 2, 'Port VC Status Register'),
    (0x10, 3, 'VC Resource Capability Register (0)'),
    (0x13, 1, 'Port Arb Table Offset'),
    (0x14, 3, 'VC Resource Control Register (0)'),
    (0x1a, 2, 'VC Resource Status Register (0)'),
    # more follows if n > 0, but let's ignore that for now.
), 0x1c

cap_vc2 = (ExtCapId(0x0009),) + cap_vc[1:]

cap_ltr = ExtCapId(0x0018), 'LTR', (
    #(0x00, 4, 'PCI Express Extended Capability Header'),
    (0x04, 2, 'Max No-Snoop Latency Register'),
    (0x06, 2, 'Max Snoop Latency Register'),
), 0x8

cap_l1pmsubstates = ExtCapId(0x001e), 'L1PMSS', (
    #(0x00, 4, 'PCI Express Extended Capability Header'),
    (0x04, 4, 'L1 PM Substates Capabilities Register'),
    (0x08, 4, 'L1 PM Substates Control 1 Register'),
    (0x0c, 4, 'L1 PM Substates Control 2 Register'),
), 0x10

# Map from capId -> (shortName, fields, capabilitySize)
capability_definitions = {
    info[0]: info[1:] for info in (
        cap_pm,
        cap_msi,
        cap_pcie,
        cap_aer,
        cap_vc,
        cap_vc2,
        cap_ltr,
        cap_l1pmsubstates,
    )
}

def parse_cap_offsets(cfg):
    s_cap = struct.Struct('<BB')
    s_cap_ext = struct.Struct('<HH')
    offset = cfg[0x34]
    while offset:
        capId, capNext = s_cap.unpack_from(cfg, offset)
        yield (offset, capId, None, caps.get(capId, '?'))
        offset = capNext

    # See 7.9.1. for format of extended capabilities register
    offset = 0x100
    while offset:
        capId, capVerNext = s_cap_ext.unpack_from(cfg, offset)
        capNext = capVerNext >> 4
        capVer = capVerNext & 0x0f
        yield (offset, capId, capVer, caps_ext.get(capId, '?'))
        offset = capNext

def dump_caps(cfg):
    for offset, capId, capVer, capName in parse_cap_offsets(cfg):
        if capVer is None:
            print('%03x: %02x %s' % (offset, capId, capName))
        else:
            print('%03x: %04x v%d %s' % (offset, capId, capVer, capName))
            capId = ExtCapId(capId)
        cap = capability_definitions.get(capId)
        if cap:
            for field_offset, field_size, field_description in cap[1]:
                print(' %03x: %d %s' % (offset + field_offset, field_size,
                    field_description))

def namify_caps(cfg, line_needle):
    caps_mapping = {}
    def insert(offset, size, description):
        caps_mapping[offset] = description
        for i in range(1, size):
            caps_mapping[offset + i] = "+%d %s" % (i, description)
    pci_header = {
        0: pci_type0,
        1: pci_type1,
    }[cfg[0x0e] & 0x7f]
    for field_offset, field_size, field_description in pci_header:
        insert(field_offset, field_size, field_description)
    for offset, capId, capVer, capName in parse_cap_offsets(cfg):
        try:
            if capVer is not None:
                capId = ExtCapId(capId)
            capNameShort, capFields, capSize = capability_definitions[capId]
        except KeyError:
            capNameShort, capFields, capSize = '', (), 2
        if capVer is None:
            insert(offset, 2, capName)
        else:
            insert(offset, 2, 'v%d %s' % (capVer, capName))
        for field_offset, field_size, field_description in capFields:
            label = '%s: %s' % (capNameShort, field_description)
            insert(offset + field_offset, field_size, label)
    for line in sys.stdin:
        line = line.rstrip()
        if line_needle in line:
            m = re.search(r'@(0x[0-9a-f]+),', line)
            if m:
                offset = int(m.group(1), 16)
                label = caps_mapping.get(offset)
                if label:
                    line = '%-100s %s' % (line, label)
                    #line += '\t\t%s' % label
        print(line)


def parse_addr(addr):
    m = re.match(r'''
    ^([0-9a-f]{4}:)?
    ([0-9a-f]{,2}):
    ([01]?[0-9a-f]?)
    (?:\.([0-7]))?$
    ''', addr, re.VERBOSE)
    if not m:
        raise argparse.ArgumentTypeError("Unrecognized address: %s" % addr)
    domain, bus, device, function = m.groups()
    domain = int(domain, 16) if domain else 0
    bus = int(bus, 16) if bus else 0
    device = int(device, 16) if device else 0
    function = int(function) if function else 0
    return "%04x:%02x:%02x.%o" % (domain, bus, device, function)

parser = argparse.ArgumentParser()
parser.add_argument("--list", action="store_true",
        help="List offsets and capability information")
parser.add_argument("--filter",
        help="Match lines containing this pattern and namify based on '@0xHH,'")
parser.add_argument("--config", required=True,
        help="PCI config space dump")
parser.add_argument("-s", type=parse_addr,
        help="Device selection (if --config contains more than one device)")

def read_config(cfg, selection):
    re_addr = r'^((?:[0-9a-f]{4}:)?[0-9a-f]{2}:[01][0-9a-f]\.[0-7]) '
    if re.match(re_addr.encode('utf8'), cfg):
        lines = cfg.decode('utf8').splitlines()
        cfg = b''
        # Pick first device unless a specific selection is given
        found_device = not selection
        for line in lines:
            if not found_device:
                m = re.match(re_addr, line)
                if m:
                    candidate = m.group(1)
                    found_device = selection == parse_addr(candidate)
                continue
            line = line.strip()
            m = re.match(r'[0-9a-f]{2,3}:((?: [0-9a-f]{2}){16})', line)
            if not m:
                if not cfg:
                    continue    # have not seen hex dump yet
                else:
                    break       # end of hexdump
            cfg += bytes.fromhex(m.group(1))
        assert found_device
    else:
        if selection:
            raise RuntimeError("Cannot select %s" % selection)
    assert len(cfg) in (256, 4096), \
            "Unrecognized config space size: %d" % len(cfg)
    return cfg

def main():
    args = parser.parse_args()
    if args.config == '-':
        cfg = sys.stdin.buffer.read()
    else:
        cfg = open(args.config, 'rb').read()
    cfg = read_config(cfg, args.s)

    if args.list:
        dump_caps(cfg)
    if args.filter:
        namify_caps(cfg, args.filter)

if __name__ == '__main__':
    main()
