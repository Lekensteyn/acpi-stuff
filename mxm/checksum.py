#!/usr/bin/env python3
# Calculate the checksum given a MXM data structure
import sys

import parse_mxm as mxm

def calc_checksum(data):
    cs = 0
    for c in data:
        cs = (cs + c) % 256
    return 0x100 - cs

def process_data(mxm_data):
    s = mxm.mxm_header_struct.parse(mxm_data)
    # length of header plus data minus checksum, or, index of checksum
    data_len = mxm.mxm_header_struct.sizeof() + s.length - 1
    expected_checksum = mxm_data[data_len]
    actual_checksum = calc_checksum(mxm_data[0:data_len])

    print("MXM structure (include header) length: %d" % data_len)
    print("Expected checksum: %02x (hex)" % expected_checksum)
    print("Acutal checksum:   %02x (hex)" % actual_checksum)
    if expected_checksum != actual_checksum:
        print("Checksum mismatch!")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] != "-":
        data = open(sys.argv[1], "rb").read()
    else:
        data = sys.stdin.buffer.read()
    if not data.startswith(b'MXM_'):
        # Assume non-binary hex dump
        data = mxm.parse_asl_text(data.decode('ascii'))
    process_data(data)
