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
        main_1B90_s = .;
        BUILD_DIR/asm/main_1B90.o(.text);
        main_1DA0_s = .;
        BUILD_DIR/asm/main_1DA0.o(.text);
        main_3050_s = .;
        BUILD_DIR/asm/main_3050.o(.text);
        main_3A80_s = .;
        BUILD_DIR/asm/main_3A80.o(.text);
        main_4CA0_s = .;
        BUILD_DIR/asm/main_4CA0.o(.text);
        main_4D60_s = .;
        BUILD_DIR/asm/main_4D60.o(.text);
        main_5420_s = .;
        BUILD_DIR/asm/main_5420.o(.text);
        main_5A10_s = .;
        BUILD_DIR/asm/main_5A10.o(.text);
        main_AC90_s = .;
        BUILD_DIR/asm/main_AC90.o(.text);
        main_B1E0_s = .;
        BUILD_DIR/asm/main_B1E0.o(.text);
        main_D830_s = .;
        BUILD_DIR/asm/main_D830.o(.text);
        main_104D0_s = .;
        BUILD_DIR/asm/main_104D0.o(.text);
        main_13F20_s = .;
        BUILD_DIR/asm/main_13F20.o(.text);
        main_18770_s = .;
        BUILD_DIR/asm/main_18770.o(.text);
        main_1CF80_s = .;
        BUILD_DIR/asm/main_1CF80.o(.text);
        main_2AE90_s = .;
        BUILD_DIR/asm/main_2AE90.o(.text);
        main_47930_s = .;
        BUILD_DIR/asm/main_47930.o(.text);
        main_54460_s = .;
        BUILD_DIR/asm/main_54460.o(.text);
        main_5EB00_s = .;
        BUILD_DIR/asm/main_5EB00.o(.text);
        main_5F8D0_s = .;
        BUILD_DIR/asm/main_5F8D0.o(.text);
        main_695D0_s = .;
        BUILD_DIR/asm/main_695D0.o(.text);
        main_70FE0_s = .;
        BUILD_DIR/asm/main_70FE0.o(.text);
        main_83B40_s = .;
        BUILD_DIR/asm/main_83B40.o(.text);
        main_B2590_s = .;
        BUILD_DIR/asm/main_B2590.o(.text);
        main_BE160_s = .;
        BUILD_DIR/asm/main_BE160.o(.text);
        main_BEBF0_s = .;
        BUILD_DIR/asm/main_BEBF0.o(.text);
        main_BED40_s = .;
        BUILD_DIR/asm/main_BED40.o(.text);
        main_BED70_s = .;
        BUILD_DIR/asm/main_BED70.o(.text);
        main_BEEB0_s = .;
        BUILD_DIR/asm/main_BEEB0.o(.text);
        main_BF010_s = .;
        BUILD_DIR/asm/main_BF010.o(.text);
        main_BFC30_s = .;
        BUILD_DIR/asm/main_BFC30.o(.text);
        main_BFC70_s = .;
        BUILD_DIR/asm/main_BFC70.o(.text);
        main_C04F0_s = .;
        BUILD_DIR/asm/main_C04F0.o(.text);
        main_C0830_s = .;
        BUILD_DIR/asm/main_C0830.o(.text);
        main_C0A40_s = .;
        BUILD_DIR/asm/main_C0A40.o(.text);
        main_C0A90_s = .;
        BUILD_DIR/asm/main_C0A90.o(.text);
        main_C0F00_s = .;
        BUILD_DIR/asm/main_C0F00.o(.text);
        main_C1610_s = .;
        BUILD_DIR/asm/main_C1610.o(.text);
        main_C1750_s = .;
        BUILD_DIR/asm/main_C1750.o(.text);
        main_C1D70_s = .;
        BUILD_DIR/asm/main_C1D70.o(.text);
        main_C36B0_s = .;
        BUILD_DIR/asm/main_C36B0.o(.text);
        main_C3D60_s = .;
        BUILD_DIR/asm/main_C3D60.o(.text);
        main_C3DE0_s = .;
        BUILD_DIR/asm/main_C3DE0.o(.text);
        main_C4070_s = .;
        BUILD_DIR/asm/main_C4070.o(.text);
        main_C40D0_s = .;
        BUILD_DIR/asm/main_C40D0.o(.text);
        main_C4490_s = .;
        BUILD_DIR/asm/main_C4490.o(.text);
        main_C44B0_s = .;
        BUILD_DIR/asm/main_C44B0.o(.text);
        main_C4770_s = .;
        BUILD_DIR/asm/main_C4770.o(.text);
        main_C4800_s = .;
        BUILD_DIR/asm/main_C4800.o(.text);
        main_C48B0_s = .;
        BUILD_DIR/asm/main_C48B0.o(.text);
        main_C4910_s = .;
        BUILD_DIR/asm/main_C4910.o(.text);
        main_C4A20_s = .;
        BUILD_DIR/asm/main_C4A20.o(.text);
        main_C4F40_s = .;
        BUILD_DIR/asm/main_C4F40.o(.text);
        main_C51B0_s = .;
        BUILD_DIR/asm/main_C51B0.o(.text);
        main_C51F0_s = .;
        BUILD_DIR/asm/main_C51F0.o(.text);
        main_C5210_s = .;
        BUILD_DIR/asm/main_C5210.o(.text);
        main_C59B0_s = .;
        BUILD_DIR/asm/main_C59B0.o(.text);
        main_C6490_s = .;
        BUILD_DIR/asm/main_C6490.o(.text);
        main_C6860_s = .;
        BUILD_DIR/asm/main_C6860.o(.text);
        main_C6920_s = .;
        BUILD_DIR/asm/main_C6920.o(.text);
        main_C69C0_s = .;
        BUILD_DIR/asm/main_C69C0.o(.text);
        main_C7300_s = .;
        BUILD_DIR/asm/main_C7300.o(.text);
        main_C75F0_s = .;
        BUILD_DIR/asm/main_C75F0.o(.text);
        main_C76C0_s = .;
        BUILD_DIR/asm/main_C76C0.o(.text);
        main_C7750_s = .;
        BUILD_DIR/asm/main_C7750.o(.text);
        main_C84B0_s = .;
        BUILD_DIR/asm/main_C84B0.o(.text);
        main_C84C0_s = .;
        BUILD_DIR/asm/main_C84C0.o(.text);
        main_C8520_s = .;
        BUILD_DIR/asm/main_C8520.o(.text);
        main_C8630_s = .;
        BUILD_DIR/asm/main_C8630.o(.text);
        main_C8AC0_s = .;
        BUILD_DIR/asm/main_C8AC0.o(.text);
        main_C9940_s = .;
        BUILD_DIR/asm/main_C9940.o(.text);
        main_CA6E0_s = .;
        BUILD_DIR/asm/main_CA6E0.o(.text);
        main_CA7F0_s = .;
        BUILD_DIR/asm/main_CA7F0.o(.text);
        main_CB450_s = .;
        BUILD_DIR/asm/main_CB450.o(.text);
        main_CB750_s = .;
        BUILD_DIR/asm/main_CB750.o(.text);
        main_CB910_s = .;
        BUILD_DIR/asm/main_CB910.o(.text);
        main_CC460_s = .;
        BUILD_DIR/asm/main_CC460.o(.text);
        main_CC5F0_s = .;
        BUILD_DIR/asm/main_CC5F0.o(.text);
        main_CC6F0_s = .;
        BUILD_DIR/asm/main_CC6F0.o(.text);
        main_CC7C0_s = .;
        BUILD_DIR/asm/main_CC7C0.o(.text);
        main_CCDA0_s = .;
        BUILD_DIR/asm/main_CCDA0.o(.text);
        main_CCDB0_s = .;
        BUILD_DIR/asm/main_CCDB0.o(.text);
        main_CCE70_s = .;
        BUILD_DIR/asm/main_CCE70.o(.text);
        main_CD080_s = .;
        BUILD_DIR/asm/main_CD080.o(.text);
        main_CD0B0_s = .;
        BUILD_DIR/asm/main_CD0B0.o(.text);
        main_CD0D0_s = .;
        BUILD_DIR/asm/main_CD0D0.o(.text);
        main_CD150_s = .;
        BUILD_DIR/asm/main_CD150.o(.text);
        main_CDE10_s = .;
        BUILD_DIR/asm/main_CDE10.o(.text);
        main_CDE50_s = .;
        BUILD_DIR/asm/main_CDE50.o(.text);
        main_CDE90_s = .;
        BUILD_DIR/asm/main_CDE90.o(.text);
        main_CDFD0_s = .;
        BUILD_DIR/asm/main_CDFD0.o(.text);
        main_CE030_s = .;
        BUILD_DIR/asm/main_CE030.o(.text);
        main_CE070_s = .;
        BUILD_DIR/asm/main_CE070.o(.text);
        main_CE110_s = .;
        BUILD_DIR/asm/main_CE110.o(.text);
        main_CE140_s = .;
        BUILD_DIR/asm/main_CE140.o(.text);
        main_CE1C0_s = .;
        BUILD_DIR/asm/main_CE1C0.o(.text);
        main_CE270_s = .;
        BUILD_DIR/asm/main_CE270.o(.text);
        main_CE310_s = .;
        BUILD_DIR/asm/main_CE310.o(.text);
        main_CE470_s = .;
        BUILD_DIR/asm/main_CE470.o(.text);
        main_CE6D0_s = .;
        BUILD_DIR/asm/main_CE6D0.o(.text);
        main_CE700_s = .;
        BUILD_DIR/asm/main_CE700.o(.text);
        main_CE730_s = .;
        BUILD_DIR/asm/main_CE730.o(.text);
        main_CE980_s = .;
        BUILD_DIR/asm/main_CE980.o(.text);
        main_CEBF0_s = .;
        BUILD_DIR/asm/main_CEBF0.o(.text);
        main_CEE20_s = .;
        BUILD_DIR/asm/main_CEE20.o(.text);
        main_CEF80_s = .;
        BUILD_DIR/asm/main_CEF80.o(.text);
        main_CF570_s = .;
        BUILD_DIR/asm/main_CF570.o(.text);
        main_CF5C0_s = .;
        BUILD_DIR/asm/main_CF5C0.o(.text);
        main_CF930_s = .;
        BUILD_DIR/asm/main_CF930.o(.text);
        main_CF940_s = .;
        BUILD_DIR/asm/main_CF940.o(.text);
        main_CF9C0_s = .;
        BUILD_DIR/asm/main_CF9C0.o(.text);
        main_CFD30_s = .;
        BUILD_DIR/asm/main_CFD30.o(.text);
        main_D0350_s = .;
        BUILD_DIR/asm/main_D0350.o(.text);
        main_D0390_s = .;
        BUILD_DIR/asm/main_D0390.o(.text);
        main_D04D0_s = .;
        BUILD_DIR/asm/main_D04D0.o(.text);
        main_D0830_s = .;
        BUILD_DIR/asm/main_D0830.o(.text);
        main_D0860_s = .;
        BUILD_DIR/asm/main_D0860.o(.text);
        main_D09D0_s = .;
        BUILD_DIR/asm/main_D09D0.o(.text);
        main_D0B90_s = .;
        BUILD_DIR/asm/main_D0B90.o(.text);
        main_D0C00_s = .;
        BUILD_DIR/asm/main_D0C00.o(.text);
        main_D0C60_s = .;
        BUILD_DIR/asm/main_D0C60.o(.text);
        main_D0E00_s = .;
        BUILD_DIR/asm/main_D0E00.o(.text);
        main_D0E10_s = .;
        BUILD_DIR/asm/main_D0E10.o(.text);
        main_D13D0_s = .;
        BUILD_DIR/asm/main_D13D0.o(.text);
        main_D2080_s = .;
        BUILD_DIR/asm/main_D2080.o(.text);
        main_D2170_s = .;
        BUILD_DIR/asm/main_D2170.o(.text);
        main_D2310_s = .;
        BUILD_DIR/asm/main_D2310.o(.text);
        main_D2370_s = .;
        BUILD_DIR/asm/main_D2370.o(.text);
        main_D23C0_s = .;
        BUILD_DIR/asm/main_D23C0.o(.text);
        main_D2460_s = .;
        BUILD_DIR/asm/main_D2460.o(.text);
        main_D25A0_s = .;
        BUILD_DIR/asm/main_D25A0.o(.text);
        main_D2900_s = .;
        BUILD_DIR/asm/main_D2900.o(.text);
        main_D2B70_s = .;
        BUILD_DIR/asm/main_D2B70.o(.text);
        main_D3630_s = .;
        BUILD_DIR/asm/main_D3630.o(.text);
        main_D37C0_s = .;
        BUILD_DIR/asm/main_D37C0.o(.text);
        main_D3A60_s = .;
        BUILD_DIR/asm/main_D3A60.o(.text);
        main_D3AB0_s = .;
        BUILD_DIR/asm/main_D3AB0.o(.text);
        main_D3B60_s = .;
        BUILD_DIR/asm/main_D3B60.o(.text);
        main_D3B90_s = .;
        BUILD_DIR/asm/main_D3B90.o(.text);
        main_D3BA0_s = .;
        BUILD_DIR/asm/main_D3BA0.o(.text);
        main_D3BB0_s = .;
        BUILD_DIR/asm/main_D3BB0.o(.text);
        main_D3BE0_s = .;
        BUILD_DIR/asm/main_D3BE0.o(.text);
        main_D3C40_s = .;
        BUILD_DIR/asm/main_D3C40.o(.text);
        main_D3FA0_s = .;
        BUILD_DIR/asm/main_D3FA0.o(.text);
        main_D41A0_s = .;
        BUILD_DIR/asm/main_D41A0.o(.text);
        main_D4500_s = .;
        BUILD_DIR/asm/main_D4500.o(.text);
        main_D4510_s = .;
        BUILD_DIR/asm/main_D4510.o(.text);
        main_D45B0_s = .;
        BUILD_DIR/asm/main_D45B0.o(.text);
        main_D4630_s = .;
        BUILD_DIR/asm/main_D4630.o(.text);
        main_D4640_s = .;
        BUILD_DIR/asm/main_D4640.o(.text);
        main_D4900_s = .;
        BUILD_DIR/asm/main_D4900.o(.text);
    SPLAT_END_SEG(code_main, 0xD49B0)
    
    SPLAT_BEGIN_SEG(data_D49B0, 0xD49B0, 0xD49B0, SUBALIGN(16))
        bin_D49B0_bin = .;
        BUILD_DIR/bin/bin_D49B0.o(.data);
    SPLAT_END_SEG(data_D49B0, 0x800000)
    /DISCARD/ :
    {
        *(*);
    }
}
