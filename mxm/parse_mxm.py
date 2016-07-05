#!/usr/bin/env python3
# Parses a MXM 3.0 structure (as typically returned by MXMS).

import re
import sys

from construct import *


# Util from https://github.com/construct/construct/issues/70
class StreamAdapter(object):
    """Perform in-place byte swaps while accessing the stream."""
    def __init__(self, stream):
        self.stream = stream

    def write(self, data):
        self.stream.write(data[::-1])

    def read(self, size):
        return self.stream.read(size)[::-1]


class ByteSwapped(Subconstruct):
    """Swap the byte order within aligned boundaries of given size.."""
    def __init__(self, subcon):
        Subconstruct.__init__(self, subcon)

    def _parse(self, stream, context):
        stream = self._wrapped_stream(stream)
        return self.subcon._parse(stream, context)

    def _build(self, obj, stream, context):
        stream = self._wrapped_stream(stream)
        return self.subcon._build(obj, stream, context)

    def _wrapped_stream(self, stream):
        return StreamAdapter(stream)


mxm_header_struct = Struct("MXMHeader",
    Magic(b"MXM_"),
    ULInt8("version"),
    ULInt8("revision"),
    ULInt16("length")
)


# Descriptor types (four MSB bits of the first byte)
descriptor_struct = Nibble("_descriptor")

structures_v30 = {
    # Output device structure (64-bit)
    0x0: ByteSwapped(BitStruct("OutputDevice",
        Padding(8),
        BitField("lvds_type", 3),  # for digital connection only (55:53)
        Padding(5),
        Bit("system_hot_plug_notify"),

        Bit("polarity_for_gpio_device_detection"),
        BitField("gpio_for_device_detection", 5),
        Bit("system_dcc_method"),
        BitField("gpio_for_dcc_select", 5),
        Bit("system_output_method"),
        Bit("polarity_for_gpio_output_select"),
        BitField("gpio_for_output_select", 5),

        # for digital connection only (27:19)
        Bit("default_digital_lvds_width"),
        Bit("digital_cec"),
        Bit("digital_connection_spread_spectrum"),
        BitField("digital_audio_connection", 2),
        BitField("digital_connection", 4),

        BitField("connector_location", 2),
        BitField("connector_type", 5),
        Nibble("ddc_aux_port"),
        Nibble("device_type"),
        descriptor_struct,
    )),
    # System cooling capability structure (32-bit)
    0x1: ByteSwapped(BitStruct("SystemCoolingCapability",
        Padding(12),
        BitField("value", 12),  # cooling capacity in 0.1 W
        Nibble("type"),
        descriptor_struct,
    )),
    # Thermal structure (32-bit)
    0x2: ByteSwapped(BitStruct("Thermal",
        Padding(13),
        BitField("value", 11),  # temperature in 0.1 degrees Celsius
        Nibble("type"),
        descriptor_struct,
    )),
    # Input power structure (32-bit)
    0x3: ByteSwapped(BitStruct("InputPower",
        Padding(4),
        BitField("value", 12),
        Padding(6),
        Bit("software_notification"),
        Bit("hardware_notification"),
        Nibble("type"),
        descriptor_struct,
    )),
    # MXM GPIO device structure (32-bit plus 16-bit for each GPIO pin)
    0x4: Struct("MXMGPIODevice",
        ByteSwapped(EmbeddedBitStruct(
            Padding(7),
            BitField("num_entries", 5),
            Padding(8),
            Octet("type"),
            descriptor_struct,
        )),
        Array(lambda ctx: ctx.num_entries,
            ByteSwapped(BitStruct("gpio_pin_entries",
                Octet("function"),
                Padding(3),
                BitField("logical_gpio_number", 5)
            ))
        )
    ),
    # GPU vendor specific structure (64-bit)
    0x5: ByteSwapped(BitStruct("GPUVendorSpecific",
        BitField('contents', 44),  # Reserved, GPU vendor specific contents
        BitField('type', 16),
        descriptor_struct,
    )),
    # Backlight control structure (32-bit plus 64-bit for each bl freq entry)
    0x6: Struct("BacklightControl",
        ByteSwapped(EmbeddedBitStruct(
            # Note: if control_type==1 (SMBus), then two additional fields
            Padding(16),
            Nibble("number_of_backlight_frequencies"),
            BitField("backlight_type", 2),
            BitField("control_type", 2),
            Nibble("output_device"),
            descriptor_struct,
        )),
        Array(lambda ctx: ctx.number_of_backlight_frequencies,
            ByteSwapped(BitStruct("backlight_frequencies",
                Padding(12),
                BitField("min_duty_cycle", 10),
                BitField("max_duty_cycle", 10),
                Padding(14),
                BitField("duty_cycle_frequency", 18)
            ))
        )
    ),
    # MXM fan control structure (64-bit plus 32-bit for each fan speed entry)
    0x7: Struct("MXMFanControl",
        ByteSwapped(EmbeddedBitStruct(
            Padding(8),
            BitField("ramp_down", 12),
            BitField("ramp_up", 12),
            Padding(2),
            BitField("pwm_frequency", 18),
            Padding(1),
            BitField("number_of_fan_speed_entries", 3),
            Nibble("fan_control_type"),
            descriptor_struct,
        )),
        Array(lambda ctx: ctx.number_of_fan_speed_entries,
            ByteSwapped(BitStruct("fan_speed_entries",
                Padding(11),
                BitField("speed", 10),
                BitField("temperature", 11)
            ))
        )
    ),
}

structures_v20 = {
    # Output device structure (48-bit for MXM 2.1)
    0x0: ByteSwapped(BitStruct("MXM21OutputDevice",
        Bit("system_hot_plug_notify"),

        Bit("polarity_for_gpio_device_detection"),
        BitField("gpio_for_device_detection", 5),
        Bit("system_dcc_method"),
        BitField("gpio_for_dcc_select", 5),
        Bit("system_output_method"),
        Bit("polarity_for_gpio_output_select"),
        BitField("gpio_for_output_select", 5),

        # for digital connection only (27:19)
        Padding(2),  # Digital Reserved (27:26)
        Bit("digital_drive_strength"),
        BitField("digital_audio_connection", 2),
        Nibble("digital_connection"),

        BitField("connector_location", 2),
        BitField("connector_type", 5),
        Nibble("ddc_aux_port"),
        Nibble("device_type"),
        descriptor_struct,
    )),
    # Thermal structure (32-bit)
    0x2: ByteSwapped(BitStruct("Thermal",
        Padding(12),
        BitField("scale", 2),
        BitField("value", 10),  # temperature in degrees Celsius
        Nibble("type"),
        descriptor_struct,
    )),
    # MXM GPIO device structure (32-bit plus 16-bit for each GPIO pin)
    0x4: Struct("MXM21GPIODevice",
        ByteSwapped(EmbeddedBitStruct(
            BitField("num_entries", 4),
            Padding(8),
            Octet("i2c_address"),
            Octet("type"),
            descriptor_struct,
        )),
        Array(lambda ctx: ctx.num_entries,
            ByteSwapped(BitStruct("gpio_pin_entries",
                Octet("function"),
                Padding(3),
                BitField("logical_gpio_number", 5)
            ))
        )
    ),
    # Backlight control structure (64-bit)
    0x6: ByteSwapped(BitStruct("MXM21BacklightControl",
        Padding(6),
        BitField("duty_cycle_frequency", 18),
        BitField("min_duty_cycle", 16),
        BitField("max_duty_cycle", 16),
        Nibble("type"),
        descriptor_struct,
    )),
}

# upper nibble: version, lower nibble: actual descriptor type.
structures = {}
structures.update({(0x30 | k): v for k, v in structures_v30.items()})
# 2.0 looks like 3.0 (actually, the other way round, but 3.0 was implemented
# earlier), so just duplicate it and overwrite it as needed.
structures.update({(0x20 | k): v for k, v in structures_v30.items()})
structures.update({(0x20 | k): v for k, v in structures_v20.items()})

# for debugging, find out what descriptor type is not recognized
class S(dict):
    def __init__(self, l):
        for k, v in l.items():
            self[k] = v
    def get(self, key, default):
        if key in self:
            return self[key]
        raise RuntimeError("Unsupported key: %r" % key)
structures = S(structures)

def is_end_of_mxm_structure_reached(obj, ctx):
    mxm_size = obj._end_pos - mxm_header_struct.sizeof()
    # Terminate of all of the MXM structure was read (ignore the checksum).
    return mxm_size >= ctx.length - 1

# Quick hack to distinguish between MXM2 and MXM3 structures.
def descriptor_key(ctx, version=None):
    if version is None:
        version = ctx._.version
    return version * 0x10 + ctx.descriptor_type

mxm_structure = Struct("MXMStructure",
    Embedded(mxm_header_struct),
    RepeatUntil(
        is_end_of_mxm_structure_reached,
        Struct("descriptors",
            Embed(Peek(BitStruct(None, Padding(4), Nibble("descriptor_type")))),
            Embed(Switch(None, descriptor_key, structures)),
            #Probe(), # for debugging
            Anchor("_end_pos")
        )
    ),
    Byte("checksum")
)

# End of structure definitions


def parse_data(mxm_data):
    s = mxm_structure.parse(mxm_data)
    descriptors = s.pop('descriptors')
    print(s)
    for c in descriptors:
        print("%s: " % structures[descriptor_key(c, s.version)].name, end="")
        print(c)


def parse_asl_text(text):
    # Remove comments (/* ... */), commas, hexadecimal prefix (0x) and newlines
    text = re.sub(r"/\*.*?\*/|,|0x|\n", " ", text)
    return bytes.fromhex(text)


def test_mxm3():
    # Taken from a HP ZBook 15 G2 (BIOS L70 01.32 03/31/2015),
    # \_SB.PCI0.PEGP.DGFX.MXM3
    testdata = """
    /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x71, 0x00,  /* MXM_..q. */
    /* 0008 */  0x30, 0x11, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* 0....>.. */
    /* 0010 */  0x60, 0x7B, 0xE0, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* `{...>.. */
    /* 0018 */  0x00, 0x00, 0xD2, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* .....>.. */
    /* 0020 */  0x60, 0x69, 0xD2, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* `i...>.. */
    /* 0028 */  0x60, 0x6A, 0xDA, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* `j...>.. */
    /* 0030 */  0x60, 0x6C, 0xEA, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /* `l...>.. */
    /* 0038 */  0x20, 0x69, 0xD2, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /*  i...>.. */
    /* 0040 */  0x20, 0x6A, 0xDA, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /*  j...>.. */
    /* 0048 */  0x20, 0x6C, 0xEA, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  /*  l...>.. */
    /* 0050 */  0x01, 0xE8, 0x03, 0x00, 0x02, 0x4C, 0x04, 0x00,  /* .....L.. */
    /* 0058 */  0x13, 0x00, 0xE8, 0x03, 0x03, 0x01, 0xF4, 0x01,  /* ........ */
    /* 0060 */  0x06, 0x10, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00,  /* ........ */
    /* 0068 */  0xE8, 0x03, 0x00, 0x00, 0x16, 0x14, 0x00, 0x00,  /* ........ */
    /* 0070 */  0xDC, 0x05, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00,  /* ........ */
    /* 0078 */  0x98                                             /* . */
    """
    mxm_data = parse_asl_text(testdata)
    parse_data(mxm_data)


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] != "-":
        data = open(sys.argv[1], "rb").read()
    else:
        data = sys.stdin.buffer.read()
    if not data.startswith(b'MXM_'):
        # Assume non-binary hex dump
        data = parse_asl_text(data.decode('ascii'))
    parse_data(data)
