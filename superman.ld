#ifndef SPLAT_BEGIN_SEG
#ifndef SHIFT
#define SPLAT_BEGIN_SEG(name, start, vram, subalign) \
    . = start;\
    name##_ROM_START = .;\
    name##_VRAM = ADDR(.name);\
    .name vram : AT(name##_ROM_START) subalign {
#else
#define SPLAT_BEGIN_SEG(name, start, vram, subalign) \
    name##_ROM_START = .;\
    name##_VRAM = ADDR(.name);\
    .name vram : AT(name##_ROM_START) subalign {
#endif
#endif

#ifndef SPLAT_END_SEG
#ifndef SHIFT
#define SPLAT_END_SEG(name, end) \
    } \
    . = end;\
    name##_ROM_END = .;
#else
#define SPLAT_END_SEG(name, end) \
    } \
    name##_ROM_END = .;
#endif
#endif

SECTIONS
{
    SPLAT_BEGIN_SEG(header, 0x0, 0x0, SUBALIGN(16))
        header_s = .;
        BUILD_DIR/asm/header.o(.data);
    SPLAT_END_SEG(header, 0x40)
    
    SPLAT_BEGIN_SEG(data_40, 0x40, 0x40, SUBALIGN(16))
        boot_bin = .;
        BUILD_DIR/bin/boot.o(.data);
    SPLAT_END_SEG(data_40, 0x1000)
    
    SPLAT_BEGIN_SEG(code_main, 0x1000, 0x80000400, SUBALIGN(16))
        main_1000_s = .;
        BUILD_DIR/asm/main_1000.o(.text);
        main_1B70_s = .;
        BUILD_DIR/asm/main_1B70.o(.text);
        main_1D80_s = .;
        BUILD_DIR/asm/main_1D80.o(.text);
        main_3030_s = .;
        BUILD_DIR/asm/main_3030.o(.text);
        main_3A10_s = .;
        BUILD_DIR/asm/main_3A10.o(.text);
        main_4C20_s = .;
        BUILD_DIR/asm/main_4C20.o(.text);
        main_4CE0_s = .;
        BUILD_DIR/asm/main_4CE0.o(.text);
        main_51F0_s = .;
        BUILD_DIR/asm/main_51F0.o(.text);
        main_57E0_s = .;
        BUILD_DIR/asm/main_57E0.o(.text);
        main_89F0_s = .;
        BUILD_DIR/asm/main_89F0.o(.text);
        main_8A40_s = .;
        BUILD_DIR/asm/main_8A40.o(.text);
        main_17CA0_s = .;
        BUILD_DIR/asm/main_17CA0.o(.text);
        main_1E1F0_s = .;
        BUILD_DIR/asm/main_1E1F0.o(.text);
        main_202A0_s = .;
        BUILD_DIR/asm/main_202A0.o(.text);
        main_2A950_s = .;
        BUILD_DIR/asm/main_2A950.o(.text);
        main_36DF0_s = .;
        BUILD_DIR/asm/main_36DF0.o(.text);
        main_3A840_s = .;
        BUILD_DIR/asm/main_3A840.o(.text);
        main_60430_s = .;
        BUILD_DIR/asm/main_60430.o(.text);
        main_66C60_s = .;
        BUILD_DIR/asm/main_66C60.o(.text);
        main_75410_s = .;
        BUILD_DIR/asm/main_75410.o(.text);
        main_92F50_s = .;
        BUILD_DIR/asm/main_92F50.o(.text);
        main_97D00_s = .;
        BUILD_DIR/asm/main_97D00.o(.text);
        main_97FF0_s = .;
        BUILD_DIR/asm/main_97FF0.o(.text);
        main_980C0_s = .;
        BUILD_DIR/asm/main_980C0.o(.text);
        main_98250_s = .;
        BUILD_DIR/asm/main_98250.o(.text);
        main_98360_s = .;
        BUILD_DIR/asm/main_98360.o(.text);
        main_98420_s = .;
        BUILD_DIR/asm/main_98420.o(.text);
        main_986A0_s = .;
        BUILD_DIR/asm/main_986A0.o(.text);
        main_996C0_s = .;
        BUILD_DIR/asm/main_996C0.o(.text);
        main_99710_s = .;
        BUILD_DIR/asm/main_99710.o(.text);
        main_9A070_s = .;
        BUILD_DIR/asm/main_9A070.o(.text);
        main_9A3F0_s = .;
        BUILD_DIR/asm/main_9A3F0.o(.text);
        main_9A4D0_s = .;
        BUILD_DIR/asm/main_9A4D0.o(.text);
        main_9A9D0_s = .;
        BUILD_DIR/asm/main_9A9D0.o(.text);
        main_9AAB0_s = .;
        BUILD_DIR/asm/main_9AAB0.o(.text);
        main_9AE20_s = .;
        BUILD_DIR/asm/main_9AE20.o(.text);
        main_9AF40_s = .;
        BUILD_DIR/asm/main_9AF40.o(.text);
        main_9B1A0_s = .;
        BUILD_DIR/asm/main_9B1A0.o(.text);
        main_9B210_s = .;
        BUILD_DIR/asm/main_9B210.o(.text);
        main_9B470_s = .;
        BUILD_DIR/asm/main_9B470.o(.text);
        main_9B8E0_s = .;
        BUILD_DIR/asm/main_9B8E0.o(.text);
        main_9C460_s = .;
        BUILD_DIR/asm/main_9C460.o(.text);
        main_9C980_s = .;
        BUILD_DIR/asm/main_9C980.o(.text);
        main_9CCE0_s = .;
        BUILD_DIR/asm/main_9CCE0.o(.text);
        main_9F1D0_s = .;
        BUILD_DIR/asm/main_9F1D0.o(.text);
        main_9FC30_s = .;
        BUILD_DIR/asm/main_9FC30.o(.text);
        main_9FCF0_s = .;
        BUILD_DIR/asm/main_9FCF0.o(.text);
        main_9FD10_s = .;
        BUILD_DIR/asm/main_9FD10.o(.text);
        main_9FD90_s = .;
        BUILD_DIR/asm/main_9FD90.o(.text);
        main_A00D0_s = .;
        BUILD_DIR/asm/main_A00D0.o(.text);
        main_A01C0_s = .;
        BUILD_DIR/asm/main_A01C0.o(.text);
        main_A02B0_s = .;
        BUILD_DIR/asm/main_A02B0.o(.text);
        main_A0610_s = .;
        BUILD_DIR/asm/main_A0610.o(.text);
        main_A06D0_s = .;
        BUILD_DIR/asm/main_A06D0.o(.text);
        main_A0750_s = .;
        BUILD_DIR/asm/main_A0750.o(.text);
        main_A0810_s = .;
        BUILD_DIR/asm/main_A0810.o(.text);
        main_A0880_s = .;
        BUILD_DIR/asm/main_A0880.o(.text);
        main_A0DF0_s = .;
        BUILD_DIR/asm/main_A0DF0.o(.text);
        main_A1130_s = .;
        BUILD_DIR/asm/main_A1130.o(.text);
        main_A1220_s = .;
        BUILD_DIR/asm/main_A1220.o(.text);
        main_A1270_s = .;
        BUILD_DIR/asm/main_A1270.o(.text);
        main_A12F0_s = .;
        BUILD_DIR/asm/main_A12F0.o(.text);
        main_A1AE0_s = .;
        BUILD_DIR/asm/main_A1AE0.o(.text);
        main_A1F50_s = .;
        BUILD_DIR/asm/main_A1F50.o(.text);
        main_A2C60_s = .;
        BUILD_DIR/asm/main_A2C60.o(.text);
        main_A2D40_s = .;
        BUILD_DIR/asm/main_A2D40.o(.text);
        main_A2E00_s = .;
        BUILD_DIR/asm/main_A2E00.o(.text);
        main_A2EE0_s = .;
        BUILD_DIR/asm/main_A2EE0.o(.text);
        main_A3EF0_s = .;
        BUILD_DIR/asm/main_A3EF0.o(.text);
        main_A4380_s = .;
        BUILD_DIR/asm/main_A4380.o(.text);
        main_A44B0_s = .;
        BUILD_DIR/asm/main_A44B0.o(.text);
        main_A44E0_s = .;
        BUILD_DIR/asm/main_A44E0.o(.text);
        main_A45B0_s = .;
        BUILD_DIR/asm/main_A45B0.o(.text);
        main_A5500_s = .;
        BUILD_DIR/asm/main_A5500.o(.text);
        main_A55C0_s = .;
        BUILD_DIR/asm/main_A55C0.o(.text);
        main_A5800_s = .;
        BUILD_DIR/asm/main_A5800.o(.text);
        main_A5F00_s = .;
        BUILD_DIR/asm/main_A5F00.o(.text);
        main_A6830_s = .;
        BUILD_DIR/asm/main_A6830.o(.text);
        main_A7500_s = .;
        BUILD_DIR/asm/main_A7500.o(.text);
        main_A8790_s = .;
        BUILD_DIR/asm/main_A8790.o(.text);
        main_A8930_s = .;
        BUILD_DIR/asm/main_A8930.o(.text);
        main_AA260_s = .;
        BUILD_DIR/asm/main_AA260.o(.text);
        main_AB770_s = .;
        BUILD_DIR/asm/main_AB770.o(.text);
        main_AB850_s = .;
        BUILD_DIR/asm/main_AB850.o(.text);
        main_AB970_s = .;
        BUILD_DIR/asm/main_AB970.o(.text);
        main_ABE40_s = .;
        BUILD_DIR/asm/main_ABE40.o(.text);
        main_AC020_s = .;
        BUILD_DIR/asm/main_AC020.o(.text);
        main_AC0D0_s = .;
        BUILD_DIR/asm/main_AC0D0.o(.text);
        main_AC570_s = .;
        BUILD_DIR/asm/main_AC570.o(.text);
        main_AD7E0_s = .;
        BUILD_DIR/asm/main_AD7E0.o(.text);
        main_AD8B0_s = .;
        BUILD_DIR/asm/main_AD8B0.o(.text);
        main_AD900_s = .;
        BUILD_DIR/asm/main_AD900.o(.text);
        main_AD960_s = .;
        BUILD_DIR/asm/main_AD960.o(.text);
        main_ADB40_s = .;
        BUILD_DIR/asm/main_ADB40.o(.text);
        main_ADBB0_s = .;
        BUILD_DIR/asm/main_ADBB0.o(.text);
        main_ADCB0_s = .;
        BUILD_DIR/asm/main_ADCB0.o(.text);
        main_ADD50_s = .;
        BUILD_DIR/asm/main_ADD50.o(.text);
        main_ADDD0_s = .;
        BUILD_DIR/asm/main_ADDD0.o(.text);
        main_AE1D0_s = .;
        BUILD_DIR/asm/main_AE1D0.o(.text);
        main_AE3B0_s = .;
        BUILD_DIR/asm/main_AE3B0.o(.text);
        main_AE4A0_s = .;
        BUILD_DIR/asm/main_AE4A0.o(.text);
        main_AE720_s = .;
        BUILD_DIR/asm/main_AE720.o(.text);
        main_AEA90_s = .;
        BUILD_DIR/asm/main_AEA90.o(.text);
        main_AEB70_s = .;
        BUILD_DIR/asm/main_AEB70.o(.text);
        main_AEC40_s = .;
        BUILD_DIR/asm/main_AEC40.o(.text);
        main_AEE40_s = .;
        BUILD_DIR/asm/main_AEE40.o(.text);
        main_AF130_s = .;
        BUILD_DIR/asm/main_AF130.o(.text);
        main_AF4D0_s = .;
        BUILD_DIR/asm/main_AF4D0.o(.text);
        main_AF610_s = .;
        BUILD_DIR/asm/main_AF610.o(.text);
        main_AF6E0_s = .;
        BUILD_DIR/asm/main_AF6E0.o(.text);
        main_AFC90_s = .;
        BUILD_DIR/asm/main_AFC90.o(.text);
        main_AFF00_s = .;
        BUILD_DIR/asm/main_AFF00.o(.text);
        main_AFF60_s = .;
        BUILD_DIR/asm/main_AFF60.o(.text);
        main_B0230_s = .;
        BUILD_DIR/asm/main_B0230.o(.text);
        main_B0490_s = .;
        BUILD_DIR/asm/main_B0490.o(.text);
        main_B08C0_s = .;
        BUILD_DIR/asm/main_B08C0.o(.text);
        main_B0F20_s = .;
        BUILD_DIR/asm/main_B0F20.o(.text);
        main_B0F60_s = .;
        BUILD_DIR/asm/main_B0F60.o(.text);
        main_B10C0_s = .;
        BUILD_DIR/asm/main_B10C0.o(.text);
        main_B1480_s = .;
        BUILD_DIR/asm/main_B1480.o(.text);
        main_B16C0_s = .;
        BUILD_DIR/asm/main_B16C0.o(.text);
        main_B18E0_s = .;
        BUILD_DIR/asm/main_B18E0.o(.text);
        main_B1E50_s = .;
        BUILD_DIR/asm/main_B1E50.o(.text);
        main_B1F20_s = .;
        BUILD_DIR/asm/main_B1F20.o(.text);
        main_B2230_s = .;
        BUILD_DIR/asm/main_B2230.o(.text);
        main_B22F0_s = .;
        BUILD_DIR/asm/main_B22F0.o(.text);
        main_B2300_s = .;
        BUILD_DIR/asm/main_B2300.o(.text);
        main_B2370_s = .;
        BUILD_DIR/asm/main_B2370.o(.text);
        main_B24D0_s = .;
        BUILD_DIR/asm/main_B24D0.o(.text);
        main_B2590_s = .;
        BUILD_DIR/asm/main_B2590.o(.text);
        main_B2F70_s = .;
        BUILD_DIR/asm/main_B2F70.o(.text);
        main_B33B0_s = .;
        BUILD_DIR/asm/main_B33B0.o(.text);
        main_B3F20_s = .;
        BUILD_DIR/asm/main_B3F20.o(.text);
        main_B4000_s = .;
        BUILD_DIR/asm/main_B4000.o(.text);
        main_B41B0_s = .;
        BUILD_DIR/asm/main_B41B0.o(.text);
        main_B4260_s = .;
        BUILD_DIR/asm/main_B4260.o(.text);
        main_B4EE0_s = .;
        BUILD_DIR/asm/main_B4EE0.o(.text);
        main_B4FA0_s = .;
        BUILD_DIR/asm/main_B4FA0.o(.text);
        main_B5C90_s = .;
        BUILD_DIR/asm/main_B5C90.o(.text);
        main_B5CB0_s = .;
        BUILD_DIR/asm/main_B5CB0.o(.text);
        main_B5CF0_s = .;
        BUILD_DIR/asm/main_B5CF0.o(.text);
        main_B5D10_s = .;
        BUILD_DIR/asm/main_B5D10.o(.text);
        main_B62F0_s = .;
        BUILD_DIR/asm/main_B62F0.o(.text);
        main_B6570_s = .;
        BUILD_DIR/asm/main_B6570.o(.text);
        main_B7040_s = .;
        BUILD_DIR/asm/main_B7040.o(.text);
        main_B7060_s = .;
        BUILD_DIR/asm/main_B7060.o(.text);
        main_B7170_s = .;
        BUILD_DIR/asm/main_B7170.o(.text);
        main_B73F0_s = .;
        BUILD_DIR/asm/main_B73F0.o(.text);
        main_B7450_s = .;
        BUILD_DIR/asm/main_B7450.o(.text);
        main_B7850_s = .;
        BUILD_DIR/asm/main_B7850.o(.text);
        main_B78B0_s = .;
        BUILD_DIR/asm/main_B78B0.o(.text);
        main_B7960_s = .;
        BUILD_DIR/asm/main_B7960.o(.text);
        main_B7A10_s = .;
        BUILD_DIR/asm/main_B7A10.o(.text);
        main_B7AB0_s = .;
        BUILD_DIR/asm/main_B7AB0.o(.text);
        main_B7C00_s = .;
        BUILD_DIR/asm/main_B7C00.o(.text);
        main_B7C10_s = .;
        BUILD_DIR/asm/main_B7C10.o(.text);
        main_B81F0_s = .;
        BUILD_DIR/asm/main_B81F0.o(.text);
        main_B8300_s = .;
        BUILD_DIR/asm/main_B8300.o(.text);
        main_B91D0_s = .;
        BUILD_DIR/asm/main_B91D0.o(.text);
        main_B93C0_s = .;
        BUILD_DIR/asm/main_B93C0.o(.text);
        main_B96F0_s = .;
        BUILD_DIR/asm/main_B96F0.o(.text);
        main_B9710_s = .;
        BUILD_DIR/asm/main_B9710.o(.text);
        main_B97A0_s = .;
        BUILD_DIR/asm/main_B97A0.o(.text);
        main_B9830_s = .;
        BUILD_DIR/asm/main_B9830.o(.text);
        main_B9960_s = .;
        BUILD_DIR/asm/main_B9960.o(.text);
        main_B99C0_s = .;
        BUILD_DIR/asm/main_B99C0.o(.text);
        main_B99E0_s = .;
        BUILD_DIR/asm/main_B99E0.o(.text);
        main_B9A10_s = .;
        BUILD_DIR/asm/main_B9A10.o(.text);
        main_B9B60_s = .;
        BUILD_DIR/asm/main_B9B60.o(.text);
        main_BA090_s = .;
        BUILD_DIR/asm/main_BA090.o(.text);
        main_BA190_s = .;
        BUILD_DIR/asm/main_BA190.o(.text);
        main_BA3D0_s = .;
        BUILD_DIR/asm/main_BA3D0.o(.text);
        main_BA3F0_s = .;
        BUILD_DIR/asm/main_BA3F0.o(.text);
        main_BA6A0_s = .;
        BUILD_DIR/asm/main_BA6A0.o(.text);
        main_BA7B0_s = .;
        BUILD_DIR/asm/main_BA7B0.o(.text);
        main_BA800_s = .;
        BUILD_DIR/asm/main_BA800.o(.text);
        main_BA880_s = .;
        BUILD_DIR/asm/main_BA880.o(.text);
    SPLAT_END_SEG(code_main, 0xBA8C0)
    
    SPLAT_BEGIN_SEG(data_BA8C0, 0xBA8C0, 0xBA8C0, SUBALIGN(16))
        bin_BA8C0_bin = .;
        BUILD_DIR/bin/bin_BA8C0.o(.data);
    SPLAT_END_SEG(data_BA8C0, 0xC00000)
    /DISCARD/ :
    {
        *(*);
    }
}
