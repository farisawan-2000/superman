.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005ECD0
/* 5F8D0 8005ECD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5F8D4 8005ECD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F8D8 8005ECD8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5F8DC 8005ECDC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5F8E0 8005ECE0 3C010001 */  lui        $at, 1
/* 5F8E4 8005ECE4 8DCF0288 */  lw         $t7, 0x288($t6)
/* 5F8E8 8005ECE8 01E1C024 */  and        $t8, $t7, $at
/* 5F8EC 8005ECEC 13000016 */  beqz       $t8, .L8005ED48
/* 5F8F0 8005ECF0 00000000 */   nop
/* 5F8F4 8005ECF4 3C198018 */  lui        $t9, %hi(D_8017A2A0)
/* 5F8F8 8005ECF8 8739A2A0 */  lh         $t9, %lo(D_8017A2A0)($t9)
/* 5F8FC 8005ECFC 2B210002 */  slti       $at, $t9, 2
/* 5F900 8005ED00 10200011 */  beqz       $at, .L8005ED48
/* 5F904 8005ED04 00000000 */   nop
/* 5F908 8005ED08 3C088018 */  lui        $t0, %hi(D_8017A028)
/* 5F90C 8005ED0C 2508A028 */  addiu      $t0, $t0, %lo(D_8017A028)
/* 5F910 8005ED10 C50400B0 */  lwc1       $f4, 0xb0($t0)
/* 5F914 8005ED14 3C01800E */  lui        $at, %hi(D_800DDD80)
/* 5F918 8005ED18 D428DD80 */  ldc1       $f8, %lo(D_800DDD80)($at)
/* 5F91C 8005ED1C 460021A1 */  cvt.d.s    $f6, $f4
/* 5F920 8005ED20 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 5F924 8005ED24 46283282 */  mul.d      $f10, $f6, $f8
/* 5F928 8005ED28 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 5F92C 8005ED2C AFA00010 */  sw         $zero, 0x10($sp)
/* 5F930 8005ED30 2404002C */  addiu      $a0, $zero, 0x2c
/* 5F934 8005ED34 24070040 */  addiu      $a3, $zero, 0x40
/* 5F938 8005ED38 46205420 */  cvt.s.d    $f16, $f10
/* 5F93C 8005ED3C 44058000 */  mfc1       $a1, $f16
/* 5F940 8005ED40 0C0009DF */  jal        func_8000277C
/* 5F944 8005ED44 00000000 */   nop
.L8005ED48:
/* 5F948 8005ED48 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5F94C 8005ED4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5F950 8005ED50 03E00008 */  jr         $ra
/* 5F954 8005ED54 00000000 */   nop

glabel func_8005ED58
/* 5F958 8005ED58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5F95C 8005ED5C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F960 8005ED60 AFA40028 */  sw         $a0, 0x28($sp)
/* 5F964 8005ED64 AFA5002C */  sw         $a1, 0x2c($sp)
/* 5F968 8005ED68 3C0F8014 */  lui        $t7, %hi(D_8013F600)
/* 5F96C 8005ED6C 8DEFF600 */  lw         $t7, %lo(D_8013F600)($t7)
/* 5F970 8005ED70 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 5F974 8005ED74 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 5F978 8005ED78 000FC100 */  sll        $t8, $t7, 4
/* 5F97C 8005ED7C 030FC021 */  addu       $t8, $t8, $t7
/* 5F980 8005ED80 0018C0C0 */  sll        $t8, $t8, 3
/* 5F984 8005ED84 030FC023 */  subu       $t8, $t8, $t7
/* 5F988 8005ED88 0018C040 */  sll        $t8, $t8, 1
/* 5F98C 8005ED8C 01D8C821 */  addu       $t9, $t6, $t8
/* 5F990 8005ED90 00194040 */  sll        $t0, $t9, 1
/* 5F994 8005ED94 3C098016 */  lui        $t1, %hi(D_801632B4)
/* 5F998 8005ED98 01284821 */  addu       $t1, $t1, $t0
/* 5F99C 8005ED9C 852932B4 */  lh         $t1, %lo(D_801632B4)($t1)
/* 5F9A0 8005EDA0 AFA00024 */  sw         $zero, 0x24($sp)
/* 5F9A4 8005EDA4 0520037A */  bltz       $t1, .L8005FB90
/* 5F9A8 8005EDA8 00000000 */   nop
/* 5F9AC 8005EDAC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 5F9B0 8005EDB0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 5F9B4 8005EDB4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 5F9B8 8005EDB8 000B6080 */  sll        $t4, $t3, 2
/* 5F9BC 8005EDBC 018B6023 */  subu       $t4, $t4, $t3
/* 5F9C0 8005EDC0 000C6080 */  sll        $t4, $t4, 2
/* 5F9C4 8005EDC4 018B6023 */  subu       $t4, $t4, $t3
/* 5F9C8 8005EDC8 000C6080 */  sll        $t4, $t4, 2
/* 5F9CC 8005EDCC 018B6021 */  addu       $t4, $t4, $t3
/* 5F9D0 8005EDD0 000C6080 */  sll        $t4, $t4, 2
/* 5F9D4 8005EDD4 018B6023 */  subu       $t4, $t4, $t3
/* 5F9D8 8005EDD8 000C6080 */  sll        $t4, $t4, 2
/* 5F9DC 8005EDDC 014C6821 */  addu       $t5, $t2, $t4
/* 5F9E0 8005EDE0 C5A40024 */  lwc1       $f4, 0x24($t5)
/* 5F9E4 8005EDE4 44803000 */  mtc1       $zero, $f6
/* 5F9E8 8005EDE8 00000000 */  nop
/* 5F9EC 8005EDEC 4604303C */  c.lt.s     $f6, $f4
/* 5F9F0 8005EDF0 00000000 */  nop
/* 5F9F4 8005EDF4 4500022B */  bc1f       .L8005F6A4
/* 5F9F8 8005EDF8 00000000 */   nop
/* 5F9FC 8005EDFC 3C0F8014 */  lui        $t7, %hi(D_8013F608)
/* 5FA00 8005EE00 8DEFF608 */  lw         $t7, %lo(D_8013F608)($t7)
/* 5FA04 8005EE04 24010002 */  addiu      $at, $zero, 2
/* 5FA08 8005EE08 15E10032 */  bne        $t7, $at, .L8005EED4
/* 5FA0C 8005EE0C 00000000 */   nop
/* 5FA10 8005EE10 3C0E8014 */  lui        $t6, %hi(D_8013F60C)
/* 5FA14 8005EE14 8DCEF60C */  lw         $t6, %lo(D_8013F60C)($t6)
/* 5FA18 8005EE18 24010015 */  addiu      $at, $zero, 0x15
/* 5FA1C 8005EE1C 11C1000A */  beq        $t6, $at, .L8005EE48
/* 5FA20 8005EE20 24010017 */   addiu     $at, $zero, 0x17
/* 5FA24 8005EE24 11C10008 */  beq        $t6, $at, .L8005EE48
/* 5FA28 8005EE28 24010034 */   addiu     $at, $zero, 0x34
/* 5FA2C 8005EE2C 15C10029 */  bne        $t6, $at, .L8005EED4
/* 5FA30 8005EE30 00000000 */   nop
/* 5FA34 8005EE34 3C188014 */  lui        $t8, %hi(D_8013F614)
/* 5FA38 8005EE38 8F18F614 */  lw         $t8, %lo(D_8013F614)($t8)
/* 5FA3C 8005EE3C 2401FFFF */  addiu      $at, $zero, -1
/* 5FA40 8005EE40 13010024 */  beq        $t8, $at, .L8005EED4
/* 5FA44 8005EE44 00000000 */   nop
.L8005EE48:
/* 5FA48 8005EE48 8FA80028 */  lw         $t0, 0x28($sp)
/* 5FA4C 8005EE4C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 5FA50 8005EE50 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 5FA54 8005EE54 00084880 */  sll        $t1, $t0, 2
/* 5FA58 8005EE58 01284823 */  subu       $t1, $t1, $t0
/* 5FA5C 8005EE5C 00094880 */  sll        $t1, $t1, 2
/* 5FA60 8005EE60 01284823 */  subu       $t1, $t1, $t0
/* 5FA64 8005EE64 00094880 */  sll        $t1, $t1, 2
/* 5FA68 8005EE68 01284821 */  addu       $t1, $t1, $t0
/* 5FA6C 8005EE6C 00094880 */  sll        $t1, $t1, 2
/* 5FA70 8005EE70 01284823 */  subu       $t1, $t1, $t0
/* 5FA74 8005EE74 00094880 */  sll        $t1, $t1, 2
/* 5FA78 8005EE78 03295821 */  addu       $t3, $t9, $t1
/* 5FA7C 8005EE7C 8D6A0064 */  lw         $t2, 0x64($t3)
/* 5FA80 8005EE80 2401000A */  addiu      $at, $zero, 0xa
/* 5FA84 8005EE84 11410004 */  beq        $t2, $at, .L8005EE98
/* 5FA88 8005EE88 2401000C */   addiu     $at, $zero, 0xc
/* 5FA8C 8005EE8C 11410002 */  beq        $t2, $at, .L8005EE98
/* 5FA90 8005EE90 00000000 */   nop
/* 5FA94 8005EE94 AD6A0068 */  sw         $t2, 0x68($t3)
.L8005EE98:
/* 5FA98 8005EE98 8FAF0028 */  lw         $t7, 0x28($sp)
/* 5FA9C 8005EE9C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 5FAA0 8005EEA0 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 5FAA4 8005EEA4 000F7080 */  sll        $t6, $t7, 2
/* 5FAA8 8005EEA8 01CF7023 */  subu       $t6, $t6, $t7
/* 5FAAC 8005EEAC 000E7080 */  sll        $t6, $t6, 2
/* 5FAB0 8005EEB0 01CF7023 */  subu       $t6, $t6, $t7
/* 5FAB4 8005EEB4 000E7080 */  sll        $t6, $t6, 2
/* 5FAB8 8005EEB8 01CF7021 */  addu       $t6, $t6, $t7
/* 5FABC 8005EEBC 000E7080 */  sll        $t6, $t6, 2
/* 5FAC0 8005EEC0 01CF7023 */  subu       $t6, $t6, $t7
/* 5FAC4 8005EEC4 000E7080 */  sll        $t6, $t6, 2
/* 5FAC8 8005EEC8 240C000A */  addiu      $t4, $zero, 0xa
/* 5FACC 8005EECC 01AEC021 */  addu       $t8, $t5, $t6
/* 5FAD0 8005EED0 AF0C0064 */  sw         $t4, 0x64($t8)
.L8005EED4:
/* 5FAD4 8005EED4 3C088014 */  lui        $t0, %hi(D_8013F610)
/* 5FAD8 8005EED8 8D08F610 */  lw         $t0, %lo(D_8013F610)($t0)
/* 5FADC 8005EEDC 24010059 */  addiu      $at, $zero, 0x59
/* 5FAE0 8005EEE0 1101000B */  beq        $t0, $at, .L8005EF10
/* 5FAE4 8005EEE4 24010019 */   addiu     $at, $zero, 0x19
/* 5FAE8 8005EEE8 11010009 */  beq        $t0, $at, .L8005EF10
/* 5FAEC 8005EEEC 24010013 */   addiu     $at, $zero, 0x13
/* 5FAF0 8005EEF0 11010007 */  beq        $t0, $at, .L8005EF10
/* 5FAF4 8005EEF4 24010064 */   addiu     $at, $zero, 0x64
/* 5FAF8 8005EEF8 11010005 */  beq        $t0, $at, .L8005EF10
/* 5FAFC 8005EEFC 24010062 */   addiu     $at, $zero, 0x62
/* 5FB00 8005EF00 11010003 */  beq        $t0, $at, .L8005EF10
/* 5FB04 8005EF04 240100A2 */   addiu     $at, $zero, 0xa2
/* 5FB08 8005EF08 150101E6 */  bne        $t0, $at, .L8005F6A4
/* 5FB0C 8005EF0C 00000000 */   nop
.L8005EF10:
/* 5FB10 8005EF10 8FA90028 */  lw         $t1, 0x28($sp)
/* 5FB14 8005EF14 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 5FB18 8005EF18 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 5FB1C 8005EF1C 00095080 */  sll        $t2, $t1, 2
/* 5FB20 8005EF20 01495023 */  subu       $t2, $t2, $t1
/* 5FB24 8005EF24 000A5080 */  sll        $t2, $t2, 2
/* 5FB28 8005EF28 01495023 */  subu       $t2, $t2, $t1
/* 5FB2C 8005EF2C 000A5080 */  sll        $t2, $t2, 2
/* 5FB30 8005EF30 01495021 */  addu       $t2, $t2, $t1
/* 5FB34 8005EF34 000A5080 */  sll        $t2, $t2, 2
/* 5FB38 8005EF38 01495023 */  subu       $t2, $t2, $t1
/* 5FB3C 8005EF3C 000A5080 */  sll        $t2, $t2, 2
/* 5FB40 8005EF40 032A5821 */  addu       $t3, $t9, $t2
/* 5FB44 8005EF44 8D6F006C */  lw         $t7, 0x6c($t3)
/* 5FB48 8005EF48 2DE10013 */  sltiu      $at, $t7, 0x13
/* 5FB4C 8005EF4C 102001D5 */  beqz       $at, .L8005F6A4
/* 5FB50 8005EF50 00000000 */   nop
/* 5FB54 8005EF54 000F7880 */  sll        $t7, $t7, 2
/* 5FB58 8005EF58 3C01800E */  lui        $at, %hi(D_800DDD88)
/* 5FB5C 8005EF5C 002F0821 */  addu       $at, $at, $t7
/* 5FB60 8005EF60 8C2FDD88 */  lw         $t7, %lo(D_800DDD88)($at)
/* 5FB64 8005EF64 01E00008 */  jr         $t7
/* 5FB68 8005EF68 00000000 */   nop
/* 5FB6C 8005EF6C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 5FB70 8005EF70 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 5FB74 8005EF74 8FA40028 */  lw         $a0, 0x28($sp)
/* 5FB78 8005EF78 0C00BC57 */  jal        func_8002F15C
/* 5FB7C 8005EF7C 2405012C */   addiu     $a1, $zero, 0x12c
/* 5FB80 8005EF80 14400061 */  bnez       $v0, .L8005F108
/* 5FB84 8005EF84 00000000 */   nop
/* 5FB88 8005EF88 8FA80028 */  lw         $t0, 0x28($sp)
/* 5FB8C 8005EF8C 3C018014 */  lui        $at, %hi(D_8013F614)
/* 5FB90 8005EF90 AC20F614 */  sw         $zero, %lo(D_8013F614)($at)
/* 5FB94 8005EF94 00084880 */  sll        $t1, $t0, 2
/* 5FB98 8005EF98 01284823 */  subu       $t1, $t1, $t0
/* 5FB9C 8005EF9C 00094880 */  sll        $t1, $t1, 2
/* 5FBA0 8005EFA0 01284823 */  subu       $t1, $t1, $t0
/* 5FBA4 8005EFA4 00094880 */  sll        $t1, $t1, 2
/* 5FBA8 8005EFA8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 5FBAC 8005EFAC 01284821 */  addu       $t1, $t1, $t0
/* 5FBB0 8005EFB0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 5FBB4 8005EFB4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 5FBB8 8005EFB8 240D0019 */  addiu      $t5, $zero, 0x19
/* 5FBBC 8005EFBC 00094880 */  sll        $t1, $t1, 2
/* 5FBC0 8005EFC0 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 5FBC4 8005EFC4 01284823 */  subu       $t1, $t1, $t0
/* 5FBC8 8005EFC8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 5FBCC 8005EFCC 240E00BD */  addiu      $t6, $zero, 0xbd
/* 5FBD0 8005EFD0 00094880 */  sll        $t1, $t1, 2
/* 5FBD4 8005EFD4 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 5FBD8 8005EFD8 240C0003 */  addiu      $t4, $zero, 3
/* 5FBDC 8005EFDC 0309C821 */  addu       $t9, $t8, $t1
/* 5FBE0 8005EFE0 AF2C00B0 */  sw         $t4, 0xb0($t9)
/* 5FBE4 8005EFE4 8FAB0028 */  lw         $t3, 0x28($sp)
/* 5FBE8 8005EFE8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 5FBEC 8005EFEC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 5FBF0 8005EFF0 000B7880 */  sll        $t7, $t3, 2
/* 5FBF4 8005EFF4 01EB7823 */  subu       $t7, $t7, $t3
/* 5FBF8 8005EFF8 000F7880 */  sll        $t7, $t7, 2
/* 5FBFC 8005EFFC 01EB7823 */  subu       $t7, $t7, $t3
/* 5FC00 8005F000 000F7880 */  sll        $t7, $t7, 2
/* 5FC04 8005F004 01EB7821 */  addu       $t7, $t7, $t3
/* 5FC08 8005F008 000F7880 */  sll        $t7, $t7, 2
/* 5FC0C 8005F00C 01EB7823 */  subu       $t7, $t7, $t3
/* 5FC10 8005F010 000F7880 */  sll        $t7, $t7, 2
/* 5FC14 8005F014 014F6821 */  addu       $t5, $t2, $t7
/* 5FC18 8005F018 85AE00BE */  lh         $t6, 0xbe($t5)
/* 5FC1C 8005F01C 11C00020 */  beqz       $t6, .L8005F0A0
/* 5FC20 8005F020 00000000 */   nop
/* 5FC24 8005F024 8DA800A4 */  lw         $t0, 0xa4($t5)
/* 5FC28 8005F028 0008C080 */  sll        $t8, $t0, 2
/* 5FC2C 8005F02C 0308C023 */  subu       $t8, $t8, $t0
/* 5FC30 8005F030 0018C080 */  sll        $t8, $t8, 2
/* 5FC34 8005F034 0308C023 */  subu       $t8, $t8, $t0
/* 5FC38 8005F038 0018C080 */  sll        $t8, $t8, 2
/* 5FC3C 8005F03C 0308C021 */  addu       $t8, $t8, $t0
/* 5FC40 8005F040 0018C080 */  sll        $t8, $t8, 2
/* 5FC44 8005F044 0308C023 */  subu       $t8, $t8, $t0
/* 5FC48 8005F048 0018C080 */  sll        $t8, $t8, 2
/* 5FC4C 8005F04C 01584821 */  addu       $t1, $t2, $t8
/* 5FC50 8005F050 AFA80020 */  sw         $t0, 0x20($sp)
/* 5FC54 8005F054 0C011F33 */  jal        func_80047CCC
/* 5FC58 8005F058 8D24006C */   lw        $a0, 0x6c($t1)
/* 5FC5C 8005F05C 10400010 */  beqz       $v0, .L8005F0A0
/* 5FC60 8005F060 00000000 */   nop
/* 5FC64 8005F064 8FAB0028 */  lw         $t3, 0x28($sp)
/* 5FC68 8005F068 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 5FC6C 8005F06C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 5FC70 8005F070 000B7880 */  sll        $t7, $t3, 2
/* 5FC74 8005F074 01EB7823 */  subu       $t7, $t7, $t3
/* 5FC78 8005F078 000F7880 */  sll        $t7, $t7, 2
/* 5FC7C 8005F07C 01EB7823 */  subu       $t7, $t7, $t3
/* 5FC80 8005F080 000F7880 */  sll        $t7, $t7, 2
/* 5FC84 8005F084 01EB7821 */  addu       $t7, $t7, $t3
/* 5FC88 8005F088 000F7880 */  sll        $t7, $t7, 2
/* 5FC8C 8005F08C 01EB7823 */  subu       $t7, $t7, $t3
/* 5FC90 8005F090 000F7880 */  sll        $t7, $t7, 2
/* 5FC94 8005F094 240C0005 */  addiu      $t4, $zero, 5
/* 5FC98 8005F098 032F7021 */  addu       $t6, $t9, $t7
/* 5FC9C 8005F09C ADCC00B0 */  sw         $t4, 0xb0($t6)
.L8005F0A0:
/* 5FCA0 8005F0A0 8FA80028 */  lw         $t0, 0x28($sp)
/* 5FCA4 8005F0A4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 5FCA8 8005F0A8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 5FCAC 8005F0AC 00085080 */  sll        $t2, $t0, 2
/* 5FCB0 8005F0B0 01485023 */  subu       $t2, $t2, $t0
/* 5FCB4 8005F0B4 000A5080 */  sll        $t2, $t2, 2
/* 5FCB8 8005F0B8 01485023 */  subu       $t2, $t2, $t0
/* 5FCBC 8005F0BC 000A5080 */  sll        $t2, $t2, 2
/* 5FCC0 8005F0C0 01485021 */  addu       $t2, $t2, $t0
/* 5FCC4 8005F0C4 000A5080 */  sll        $t2, $t2, 2
/* 5FCC8 8005F0C8 01485023 */  subu       $t2, $t2, $t0
/* 5FCCC 8005F0CC 000A5080 */  sll        $t2, $t2, 2
/* 5FCD0 8005F0D0 01AAC021 */  addu       $t8, $t5, $t2
/* 5FCD4 8005F0D4 8F0B00E0 */  lw         $t3, 0xe0($t8)
/* 5FCD8 8005F0D8 2404004F */  addiu      $a0, $zero, 0x4f
/* 5FCDC 8005F0DC 2405004F */  addiu      $a1, $zero, 0x4f
/* 5FCE0 8005F0E0 AFAB0008 */  sw         $t3, 8($sp)
/* 5FCE4 8005F0E4 8F0900E4 */  lw         $t1, 0xe4($t8)
/* 5FCE8 8005F0E8 8FA60008 */  lw         $a2, 8($sp)
/* 5FCEC 8005F0EC AFA9000C */  sw         $t1, 0xc($sp)
/* 5FCF0 8005F0F0 8F0B00E8 */  lw         $t3, 0xe8($t8)
/* 5FCF4 8005F0F4 8FA7000C */  lw         $a3, 0xc($sp)
/* 5FCF8 8005F0F8 0C006092 */  jal        func_80018248
/* 5FCFC 8005F0FC AFAB0010 */   sw        $t3, 0x10($sp)
/* 5FD00 8005F100 10000168 */  b          .L8005F6A4
/* 5FD04 8005F104 00000000 */   nop
.L8005F108:
/* 5FD08 8005F108 3C198016 */  lui        $t9, %hi(D_8015F464)
/* 5FD0C 8005F10C 8F39F464 */  lw         $t9, %lo(D_8015F464)($t9)
/* 5FD10 8005F110 24010001 */  addiu      $at, $zero, 1
/* 5FD14 8005F114 17210163 */  bne        $t9, $at, .L8005F6A4
/* 5FD18 8005F118 00000000 */   nop
/* 5FD1C 8005F11C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 5FD20 8005F120 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 5FD24 8005F124 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 5FD28 8005F128 000C7080 */  sll        $t6, $t4, 2
/* 5FD2C 8005F12C 01CC7023 */  subu       $t6, $t6, $t4
/* 5FD30 8005F130 000E7080 */  sll        $t6, $t6, 2
/* 5FD34 8005F134 01CC7023 */  subu       $t6, $t6, $t4
/* 5FD38 8005F138 000E7080 */  sll        $t6, $t6, 2
/* 5FD3C 8005F13C 01CC7021 */  addu       $t6, $t6, $t4
/* 5FD40 8005F140 000E7080 */  sll        $t6, $t6, 2
/* 5FD44 8005F144 01CC7023 */  subu       $t6, $t6, $t4
/* 5FD48 8005F148 000E7080 */  sll        $t6, $t6, 2
/* 5FD4C 8005F14C 01EE4021 */  addu       $t0, $t7, $t6
/* 5FD50 8005F150 C5080050 */  lwc1       $f8, 0x50($t0)
/* 5FD54 8005F154 44805000 */  mtc1       $zero, $f10
/* 5FD58 8005F158 00000000 */  nop
/* 5FD5C 8005F15C 460A4032 */  c.eq.s     $f8, $f10
/* 5FD60 8005F160 00000000 */  nop
/* 5FD64 8005F164 4500014F */  bc1f       .L8005F6A4
/* 5FD68 8005F168 00000000 */   nop
/* 5FD6C 8005F16C 0C000ADC */  jal        func_80002B70
/* 5FD70 8005F170 2404001D */   addiu     $a0, $zero, 0x1d
/* 5FD74 8005F174 1440014B */  bnez       $v0, .L8005F6A4
/* 5FD78 8005F178 00000000 */   nop
/* 5FD7C 8005F17C 3C0D8018 */  lui        $t5, %hi(D_8017A028)
/* 5FD80 8005F180 25ADA028 */  addiu      $t5, $t5, %lo(D_8017A028)
/* 5FD84 8005F184 C5B00074 */  lwc1       $f16, 0x74($t5)
/* 5FD88 8005F188 3C01800E */  lui        $at, %hi(D_800DDDD8)
/* 5FD8C 8005F18C D424DDD8 */  ldc1       $f4, %lo(D_800DDDD8)($at)
/* 5FD90 8005F190 460084A1 */  cvt.d.s    $f18, $f16
/* 5FD94 8005F194 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 5FD98 8005F198 46249182 */  mul.d      $f6, $f18, $f4
/* 5FD9C 8005F19C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 5FDA0 8005F1A0 AFA00010 */  sw         $zero, 0x10($sp)
/* 5FDA4 8005F1A4 2404001D */  addiu      $a0, $zero, 0x1d
/* 5FDA8 8005F1A8 24070040 */  addiu      $a3, $zero, 0x40
/* 5FDAC 8005F1AC 46203220 */  cvt.s.d    $f8, $f6
/* 5FDB0 8005F1B0 44054000 */  mfc1       $a1, $f8
/* 5FDB4 8005F1B4 0C0009DF */  jal        func_8000277C
/* 5FDB8 8005F1B8 00000000 */   nop
/* 5FDBC 8005F1BC 8FB80028 */  lw         $t8, 0x28($sp)
/* 5FDC0 8005F1C0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 5FDC4 8005F1C4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 5FDC8 8005F1C8 00184880 */  sll        $t1, $t8, 2
/* 5FDCC 8005F1CC 01384823 */  subu       $t1, $t1, $t8
/* 5FDD0 8005F1D0 00094880 */  sll        $t1, $t1, 2
/* 5FDD4 8005F1D4 01384823 */  subu       $t1, $t1, $t8
/* 5FDD8 8005F1D8 00094880 */  sll        $t1, $t1, 2
/* 5FDDC 8005F1DC 01384821 */  addu       $t1, $t1, $t8
/* 5FDE0 8005F1E0 00094880 */  sll        $t1, $t1, 2
/* 5FDE4 8005F1E4 3C013F80 */  lui        $at, 0x3f80
/* 5FDE8 8005F1E8 01384823 */  subu       $t1, $t1, $t8
/* 5FDEC 8005F1EC 44815000 */  mtc1       $at, $f10
/* 5FDF0 8005F1F0 00094880 */  sll        $t1, $t1, 2
/* 5FDF4 8005F1F4 01495821 */  addu       $t3, $t2, $t1
/* 5FDF8 8005F1F8 1000012A */  b          .L8005F6A4
/* 5FDFC 8005F1FC E56A0050 */   swc1      $f10, 0x50($t3)
/* 5FE00 8005F200 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 5FE04 8005F204 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 5FE08 8005F208 8FA40028 */  lw         $a0, 0x28($sp)
/* 5FE0C 8005F20C 0C00BC57 */  jal        func_8002F15C
/* 5FE10 8005F210 24050136 */   addiu     $a1, $zero, 0x136
/* 5FE14 8005F214 14400123 */  bnez       $v0, .L8005F6A4
/* 5FE18 8005F218 00000000 */   nop
/* 5FE1C 8005F21C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 5FE20 8005F220 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 5FE24 8005F224 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 5FE28 8005F228 000E4080 */  sll        $t0, $t6, 2
/* 5FE2C 8005F22C 010E4023 */  subu       $t0, $t0, $t6
/* 5FE30 8005F230 00084080 */  sll        $t0, $t0, 2
/* 5FE34 8005F234 010E4023 */  subu       $t0, $t0, $t6
/* 5FE38 8005F238 00084080 */  sll        $t0, $t0, 2
/* 5FE3C 8005F23C 010E4021 */  addu       $t0, $t0, $t6
/* 5FE40 8005F240 3C018014 */  lui        $at, %hi(D_8013F614)
/* 5FE44 8005F244 00084080 */  sll        $t0, $t0, 2
/* 5FE48 8005F248 AC20F614 */  sw         $zero, %lo(D_8013F614)($at)
/* 5FE4C 8005F24C 010E4023 */  subu       $t0, $t0, $t6
/* 5FE50 8005F250 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 5FE54 8005F254 24190019 */  addiu      $t9, $zero, 0x19
/* 5FE58 8005F258 00084080 */  sll        $t0, $t0, 2
/* 5FE5C 8005F25C AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 5FE60 8005F260 240C0001 */  addiu      $t4, $zero, 1
/* 5FE64 8005F264 01E86821 */  addu       $t5, $t7, $t0
/* 5FE68 8005F268 ADAC00B0 */  sw         $t4, 0xb0($t5)
/* 5FE6C 8005F26C 8FA90028 */  lw         $t1, 0x28($sp)
/* 5FE70 8005F270 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 5FE74 8005F274 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 5FE78 8005F278 00095880 */  sll        $t3, $t1, 2
/* 5FE7C 8005F27C 01695823 */  subu       $t3, $t3, $t1
/* 5FE80 8005F280 000B5880 */  sll        $t3, $t3, 2
/* 5FE84 8005F284 01695823 */  subu       $t3, $t3, $t1
/* 5FE88 8005F288 000B5880 */  sll        $t3, $t3, 2
/* 5FE8C 8005F28C 01695821 */  addu       $t3, $t3, $t1
/* 5FE90 8005F290 000B5880 */  sll        $t3, $t3, 2
/* 5FE94 8005F294 01695823 */  subu       $t3, $t3, $t1
/* 5FE98 8005F298 3C018014 */  lui        $at, %hi(D_8013F610)
/* 5FE9C 8005F29C 241800BD */  addiu      $t8, $zero, 0xbd
/* 5FEA0 8005F2A0 000B5880 */  sll        $t3, $t3, 2
/* 5FEA4 8005F2A4 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 5FEA8 8005F2A8 014BC821 */  addu       $t9, $t2, $t3
/* 5FEAC 8005F2AC 8F2F00E0 */  lw         $t7, 0xe0($t9)
/* 5FEB0 8005F2B0 2404004F */  addiu      $a0, $zero, 0x4f
/* 5FEB4 8005F2B4 2405004F */  addiu      $a1, $zero, 0x4f
/* 5FEB8 8005F2B8 AFAF0008 */  sw         $t7, 8($sp)
/* 5FEBC 8005F2BC 8F2E00E4 */  lw         $t6, 0xe4($t9)
/* 5FEC0 8005F2C0 8FA60008 */  lw         $a2, 8($sp)
/* 5FEC4 8005F2C4 AFAE000C */  sw         $t6, 0xc($sp)
/* 5FEC8 8005F2C8 8F2F00E8 */  lw         $t7, 0xe8($t9)
/* 5FECC 8005F2CC 8FA7000C */  lw         $a3, 0xc($sp)
/* 5FED0 8005F2D0 0C006092 */  jal        func_80018248
/* 5FED4 8005F2D4 AFAF0010 */   sw        $t7, 0x10($sp)
/* 5FED8 8005F2D8 100000F2 */  b          .L8005F6A4
/* 5FEDC 8005F2DC 00000000 */   nop
/* 5FEE0 8005F2E0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 5FEE4 8005F2E4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 5FEE8 8005F2E8 8FA40028 */  lw         $a0, 0x28($sp)
/* 5FEEC 8005F2EC 0C00BC57 */  jal        func_8002F15C
/* 5FEF0 8005F2F0 24050136 */   addiu     $a1, $zero, 0x136
/* 5FEF4 8005F2F4 100000EB */  b          .L8005F6A4
/* 5FEF8 8005F2F8 00000000 */   nop
/* 5FEFC 8005F2FC 8FAC0028 */  lw         $t4, 0x28($sp)
/* 5FF00 8005F300 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 5FF04 8005F304 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 5FF08 8005F308 000C6880 */  sll        $t5, $t4, 2
/* 5FF0C 8005F30C 01AC6823 */  subu       $t5, $t5, $t4
/* 5FF10 8005F310 000D6880 */  sll        $t5, $t5, 2
/* 5FF14 8005F314 01AC6823 */  subu       $t5, $t5, $t4
/* 5FF18 8005F318 000D6880 */  sll        $t5, $t5, 2
/* 5FF1C 8005F31C 01AC6821 */  addu       $t5, $t5, $t4
/* 5FF20 8005F320 000D6880 */  sll        $t5, $t5, 2
/* 5FF24 8005F324 01AC6823 */  subu       $t5, $t5, $t4
/* 5FF28 8005F328 000D6880 */  sll        $t5, $t5, 2
/* 5FF2C 8005F32C 010DC021 */  addu       $t8, $t0, $t5
/* 5FF30 8005F330 8F09006C */  lw         $t1, 0x6c($t8)
/* 5FF34 8005F334 2D210013 */  sltiu      $at, $t1, 0x13
/* 5FF38 8005F338 10200032 */  beqz       $at, .L8005F404
/* 5FF3C 8005F33C 00000000 */   nop
/* 5FF40 8005F340 00094880 */  sll        $t1, $t1, 2
/* 5FF44 8005F344 3C01800E */  lui        $at, %hi(D_800DDDE0)
/* 5FF48 8005F348 00290821 */  addu       $at, $at, $t1
/* 5FF4C 8005F34C 8C29DDE0 */  lw         $t1, %lo(D_800DDDE0)($at)
/* 5FF50 8005F350 01200008 */  jr         $t1
/* 5FF54 8005F354 00000000 */   nop
/* 5FF58 8005F358 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 5FF5C 8005F35C 10000029 */  b          .L8005F404
/* 5FF60 8005F360 AC207DCC */   sw        $zero, %lo(D_800D7DCC)($at)
/* 5FF64 8005F364 8FB90028 */  lw         $t9, 0x28($sp)
/* 5FF68 8005F368 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 5FF6C 8005F36C 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 5FF70 8005F370 00197080 */  sll        $t6, $t9, 2
/* 5FF74 8005F374 01D97023 */  subu       $t6, $t6, $t9
/* 5FF78 8005F378 000E7080 */  sll        $t6, $t6, 2
/* 5FF7C 8005F37C 01D97023 */  subu       $t6, $t6, $t9
/* 5FF80 8005F380 000E7080 */  sll        $t6, $t6, 2
/* 5FF84 8005F384 01D97021 */  addu       $t6, $t6, $t9
/* 5FF88 8005F388 000E7080 */  sll        $t6, $t6, 2
/* 5FF8C 8005F38C 01D97023 */  subu       $t6, $t6, $t9
/* 5FF90 8005F390 240AFFFF */  addiu      $t2, $zero, -1
/* 5FF94 8005F394 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 5FF98 8005F398 000E7080 */  sll        $t6, $t6, 2
/* 5FF9C 8005F39C AC2A7DCC */  sw         $t2, %lo(D_800D7DCC)($at)
/* 5FFA0 8005F3A0 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 5FFA4 8005F3A4 016E7821 */  addu       $t7, $t3, $t6
/* 5FFA8 8005F3A8 8DEC0014 */  lw         $t4, 0x14($t7)
/* 5FFAC 8005F3AC 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 5FFB0 8005F3B0 15880005 */  bne        $t4, $t0, .L8005F3C8
/* 5FFB4 8005F3B4 00000000 */   nop
/* 5FFB8 8005F3B8 240D0001 */  addiu      $t5, $zero, 1
/* 5FFBC 8005F3BC 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 5FFC0 8005F3C0 10000010 */  b          .L8005F404
/* 5FFC4 8005F3C4 AC2D7DCC */   sw        $t5, %lo(D_800D7DCC)($at)
.L8005F3C8:
/* 5FFC8 8005F3C8 2418FFFF */  addiu      $t8, $zero, -1
/* 5FFCC 8005F3CC 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 5FFD0 8005F3D0 1000000C */  b          .L8005F404
/* 5FFD4 8005F3D4 AC387DCC */   sw        $t8, %lo(D_800D7DCC)($at)
/* 5FFD8 8005F3D8 24090002 */  addiu      $t1, $zero, 2
/* 5FFDC 8005F3DC 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 5FFE0 8005F3E0 10000008 */  b          .L8005F404
/* 5FFE4 8005F3E4 AC297DCC */   sw        $t1, %lo(D_800D7DCC)($at)
/* 5FFE8 8005F3E8 240A0003 */  addiu      $t2, $zero, 3
/* 5FFEC 8005F3EC 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 5FFF0 8005F3F0 10000004 */  b          .L8005F404
/* 5FFF4 8005F3F4 AC2A7DCC */   sw        $t2, %lo(D_800D7DCC)($at)
/* 5FFF8 8005F3F8 24190004 */  addiu      $t9, $zero, 4
/* 5FFFC 8005F3FC 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 60000 8005F400 AC397DCC */  sw         $t9, %lo(D_800D7DCC)($at)
.L8005F404:
/* 60004 8005F404 3C0B800D */  lui        $t3, %hi(D_800D7DCC)
/* 60008 8005F408 8D6B7DCC */  lw         $t3, %lo(D_800D7DCC)($t3)
/* 6000C 8005F40C 05600085 */  bltz       $t3, .L8005F624
/* 60010 8005F410 00000000 */   nop
/* 60014 8005F414 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 60018 8005F418 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 6001C 8005F41C 24010059 */  addiu      $at, $zero, 0x59
/* 60020 8005F420 11C10003 */  beq        $t6, $at, .L8005F430
/* 60024 8005F424 24010062 */   addiu     $at, $zero, 0x62
/* 60028 8005F428 15C10025 */  bne        $t6, $at, .L8005F4C0
/* 6002C 8005F42C 00000000 */   nop
.L8005F430:
/* 60030 8005F430 8FAC0028 */  lw         $t4, 0x28($sp)
/* 60034 8005F434 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 60038 8005F438 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 6003C 8005F43C 000C4080 */  sll        $t0, $t4, 2
/* 60040 8005F440 010C4023 */  subu       $t0, $t0, $t4
/* 60044 8005F444 00084080 */  sll        $t0, $t0, 2
/* 60048 8005F448 010C4023 */  subu       $t0, $t0, $t4
/* 6004C 8005F44C 00084080 */  sll        $t0, $t0, 2
/* 60050 8005F450 010C4021 */  addu       $t0, $t0, $t4
/* 60054 8005F454 00084080 */  sll        $t0, $t0, 2
/* 60058 8005F458 010C4023 */  subu       $t0, $t0, $t4
/* 6005C 8005F45C 00084080 */  sll        $t0, $t0, 2
/* 60060 8005F460 01E86821 */  addu       $t5, $t7, $t0
/* 60064 8005F464 85B800C0 */  lh         $t8, 0xc0($t5)
/* 60068 8005F468 2401FFFF */  addiu      $at, $zero, -1
/* 6006C 8005F46C 17010014 */  bne        $t8, $at, .L8005F4C0
/* 60070 8005F470 00000000 */   nop
/* 60074 8005F474 8DA90280 */  lw         $t1, 0x280($t5)
/* 60078 8005F478 24010001 */  addiu      $at, $zero, 1
/* 6007C 8005F47C 15210010 */  bne        $t1, $at, .L8005F4C0
/* 60080 8005F480 00000000 */   nop
/* 60084 8005F484 8FAA002C */  lw         $t2, 0x2c($sp)
/* 60088 8005F488 8D590000 */  lw         $t9, ($t2)
/* 6008C 8005F48C 332B1000 */  andi       $t3, $t9, 0x1000
/* 60090 8005F490 11600007 */  beqz       $t3, .L8005F4B0
/* 60094 8005F494 00000000 */   nop
/* 60098 8005F498 01802025 */  or         $a0, $t4, $zero
/* 6009C 8005F49C 24050140 */  addiu      $a1, $zero, 0x140
/* 600A0 8005F4A0 0C00BD84 */  jal        func_8002F610
/* 600A4 8005F4A4 24060014 */   addiu     $a2, $zero, 0x14
/* 600A8 8005F4A8 10000005 */  b          .L8005F4C0
/* 600AC 8005F4AC 00000000 */   nop
.L8005F4B0:
/* 600B0 8005F4B0 8FA40028 */  lw         $a0, 0x28($sp)
/* 600B4 8005F4B4 2405013B */  addiu      $a1, $zero, 0x13b
/* 600B8 8005F4B8 0C00BD84 */  jal        func_8002F610
/* 600BC 8005F4BC 24060017 */   addiu     $a2, $zero, 0x17
.L8005F4C0:
/* 600C0 8005F4C0 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 600C4 8005F4C4 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 600C8 8005F4C8 24010019 */  addiu      $at, $zero, 0x19
/* 600CC 8005F4CC 11C10003 */  beq        $t6, $at, .L8005F4DC
/* 600D0 8005F4D0 240100A2 */   addiu     $at, $zero, 0xa2
/* 600D4 8005F4D4 15C10073 */  bne        $t6, $at, .L8005F6A4
/* 600D8 8005F4D8 00000000 */   nop
.L8005F4DC:
/* 600DC 8005F4DC 8FB80028 */  lw         $t8, 0x28($sp)
/* 600E0 8005F4E0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 600E4 8005F4E4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 600E8 8005F4E8 00186880 */  sll        $t5, $t8, 2
/* 600EC 8005F4EC 01B86823 */  subu       $t5, $t5, $t8
/* 600F0 8005F4F0 000D6880 */  sll        $t5, $t5, 2
/* 600F4 8005F4F4 01B86823 */  subu       $t5, $t5, $t8
/* 600F8 8005F4F8 000D6880 */  sll        $t5, $t5, 2
/* 600FC 8005F4FC 01B86821 */  addu       $t5, $t5, $t8
/* 60100 8005F500 000D6880 */  sll        $t5, $t5, 2
/* 60104 8005F504 01B86823 */  subu       $t5, $t5, $t8
/* 60108 8005F508 000D6880 */  sll        $t5, $t5, 2
/* 6010C 8005F50C 240FFFFF */  addiu      $t7, $zero, -1
/* 60110 8005F510 010D4821 */  addu       $t1, $t0, $t5
/* 60114 8005F514 A52F00C0 */  sh         $t7, 0xc0($t1)
/* 60118 8005F518 3C0A800D */  lui        $t2, %hi(D_800D7DCC)
/* 6011C 8005F51C 8D4A7DCC */  lw         $t2, %lo(D_800D7DCC)($t2)
/* 60120 8005F520 3C0B800E */  lui        $t3, %hi(D_800D84F4)
/* 60124 8005F524 000AC880 */  sll        $t9, $t2, 2
/* 60128 8005F528 01795821 */  addu       $t3, $t3, $t9
/* 6012C 8005F52C 8D6B84F4 */  lw         $t3, %lo(D_800D84F4)($t3)
/* 60130 8005F530 11600024 */  beqz       $t3, .L8005F5C4
/* 60134 8005F534 00000000 */   nop
/* 60138 8005F538 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6013C 8005F53C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 60140 8005F540 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 60144 8005F544 000EC080 */  sll        $t8, $t6, 2
/* 60148 8005F548 030EC023 */  subu       $t8, $t8, $t6
/* 6014C 8005F54C 0018C080 */  sll        $t8, $t8, 2
/* 60150 8005F550 030EC023 */  subu       $t8, $t8, $t6
/* 60154 8005F554 0018C080 */  sll        $t8, $t8, 2
/* 60158 8005F558 030EC021 */  addu       $t8, $t8, $t6
/* 6015C 8005F55C 0018C080 */  sll        $t8, $t8, 2
/* 60160 8005F560 030EC023 */  subu       $t8, $t8, $t6
/* 60164 8005F564 0018C080 */  sll        $t8, $t8, 2
/* 60168 8005F568 01984021 */  addu       $t0, $t4, $t8
/* 6016C 8005F56C 8D0D0074 */  lw         $t5, 0x74($t0)
/* 60170 8005F570 3C09800D */  lui        $t1, %hi(D_800D72F0)
/* 60174 8005F574 000D7900 */  sll        $t7, $t5, 4
/* 60178 8005F578 01ED7823 */  subu       $t7, $t7, $t5
/* 6017C 8005F57C 000F7880 */  sll        $t7, $t7, 2
/* 60180 8005F580 012F4821 */  addu       $t1, $t1, $t7
/* 60184 8005F584 8D2972F0 */  lw         $t1, %lo(D_800D72F0)($t1)
/* 60188 8005F588 312A0008 */  andi       $t2, $t1, 8
/* 6018C 8005F58C 15400003 */  bnez       $t2, .L8005F59C
/* 60190 8005F590 00000000 */   nop
/* 60194 8005F594 0C00B24F */  jal        func_8002C93C
/* 60198 8005F598 01C02025 */   or        $a0, $t6, $zero
.L8005F59C:
/* 6019C 8005F59C 3C04800D */  lui        $a0, %hi(D_800D7DCC)
/* 601A0 8005F5A0 0C0249B1 */  jal        func_800926C4
/* 601A4 8005F5A4 8C847DCC */   lw        $a0, %lo(D_800D7DCC)($a0)
/* 601A8 8005F5A8 0C000ABC */  jal        func_80002AF0
/* 601AC 8005F5AC 24040003 */   addiu     $a0, $zero, 3
/* 601B0 8005F5B0 3C048014 */  lui        $a0, %hi(D_8013F630)
/* 601B4 8005F5B4 0C012101 */  jal        func_80048404
/* 601B8 8005F5B8 8C84F630 */   lw        $a0, %lo(D_8013F630)($a0)
/* 601BC 8005F5BC 10000039 */  b          .L8005F6A4
/* 601C0 8005F5C0 00000000 */   nop
.L8005F5C4:
/* 601C4 8005F5C4 3C0B8014 */  lui        $t3, %hi(D_8013F630)
/* 601C8 8005F5C8 8D6BF630 */  lw         $t3, %lo(D_8013F630)($t3)
/* 601CC 8005F5CC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 601D0 8005F5D0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 601D4 8005F5D4 000B6080 */  sll        $t4, $t3, 2
/* 601D8 8005F5D8 018B6023 */  subu       $t4, $t4, $t3
/* 601DC 8005F5DC 000C6080 */  sll        $t4, $t4, 2
/* 601E0 8005F5E0 018B6023 */  subu       $t4, $t4, $t3
/* 601E4 8005F5E4 000C6080 */  sll        $t4, $t4, 2
/* 601E8 8005F5E8 018B6021 */  addu       $t4, $t4, $t3
/* 601EC 8005F5EC 000C6080 */  sll        $t4, $t4, 2
/* 601F0 8005F5F0 018B6023 */  subu       $t4, $t4, $t3
/* 601F4 8005F5F4 000C6080 */  sll        $t4, $t4, 2
/* 601F8 8005F5F8 032CC021 */  addu       $t8, $t9, $t4
/* 601FC 8005F5FC 8F08006C */  lw         $t0, 0x6c($t8)
/* 60200 8005F600 2401013B */  addiu      $at, $zero, 0x13b
/* 60204 8005F604 15010003 */  bne        $t0, $at, .L8005F614
/* 60208 8005F608 00000000 */   nop
/* 6020C 8005F60C 0C012101 */  jal        func_80048404
/* 60210 8005F610 01602025 */   or        $a0, $t3, $zero
.L8005F614:
/* 60214 8005F614 0C000ABC */  jal        func_80002AF0
/* 60218 8005F618 24040005 */   addiu     $a0, $zero, 5
/* 6021C 8005F61C 10000021 */  b          .L8005F6A4
/* 60220 8005F620 00000000 */   nop
.L8005F624:
/* 60224 8005F624 3C0D8014 */  lui        $t5, %hi(D_8013F610)
/* 60228 8005F628 8DADF610 */  lw         $t5, %lo(D_8013F610)($t5)
/* 6022C 8005F62C 24010019 */  addiu      $at, $zero, 0x19
/* 60230 8005F630 11A10003 */  beq        $t5, $at, .L8005F640
/* 60234 8005F634 240100A2 */   addiu     $at, $zero, 0xa2
/* 60238 8005F638 15A1001A */  bne        $t5, $at, .L8005F6A4
/* 6023C 8005F63C 00000000 */   nop
.L8005F640:
/* 60240 8005F640 8FA90028 */  lw         $t1, 0x28($sp)
/* 60244 8005F644 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 60248 8005F648 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 6024C 8005F64C 00095080 */  sll        $t2, $t1, 2
/* 60250 8005F650 01495023 */  subu       $t2, $t2, $t1
/* 60254 8005F654 000A5080 */  sll        $t2, $t2, 2
/* 60258 8005F658 01495023 */  subu       $t2, $t2, $t1
/* 6025C 8005F65C 000A5080 */  sll        $t2, $t2, 2
/* 60260 8005F660 01495021 */  addu       $t2, $t2, $t1
/* 60264 8005F664 000A5080 */  sll        $t2, $t2, 2
/* 60268 8005F668 01495023 */  subu       $t2, $t2, $t1
/* 6026C 8005F66C 000A5080 */  sll        $t2, $t2, 2
/* 60270 8005F670 01EA7021 */  addu       $t6, $t7, $t2
/* 60274 8005F674 8DD90074 */  lw         $t9, 0x74($t6)
/* 60278 8005F678 3C18800D */  lui        $t8, %hi(D_800D72F0)
/* 6027C 8005F67C 00196100 */  sll        $t4, $t9, 4
/* 60280 8005F680 01996023 */  subu       $t4, $t4, $t9
/* 60284 8005F684 000C6080 */  sll        $t4, $t4, 2
/* 60288 8005F688 030CC021 */  addu       $t8, $t8, $t4
/* 6028C 8005F68C 8F1872F0 */  lw         $t8, %lo(D_800D72F0)($t8)
/* 60290 8005F690 33080008 */  andi       $t0, $t8, 8
/* 60294 8005F694 15000003 */  bnez       $t0, .L8005F6A4
/* 60298 8005F698 00000000 */   nop
/* 6029C 8005F69C 0C00B24F */  jal        func_8002C93C
/* 602A0 8005F6A0 01202025 */   or        $a0, $t1, $zero
.L8005F6A4:
/* 602A4 8005F6A4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 602A8 8005F6A8 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 602AC 8005F6AC 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 602B0 8005F6B0 000F5080 */  sll        $t2, $t7, 2
/* 602B4 8005F6B4 014F5023 */  subu       $t2, $t2, $t7
/* 602B8 8005F6B8 000A5080 */  sll        $t2, $t2, 2
/* 602BC 8005F6BC 014F5023 */  subu       $t2, $t2, $t7
/* 602C0 8005F6C0 000A5080 */  sll        $t2, $t2, 2
/* 602C4 8005F6C4 014F5021 */  addu       $t2, $t2, $t7
/* 602C8 8005F6C8 000A5080 */  sll        $t2, $t2, 2
/* 602CC 8005F6CC 3C0B8014 */  lui        $t3, %hi(D_8013F604)
/* 602D0 8005F6D0 8D6BF604 */  lw         $t3, %lo(D_8013F604)($t3)
/* 602D4 8005F6D4 014F5023 */  subu       $t2, $t2, $t7
/* 602D8 8005F6D8 000A5080 */  sll        $t2, $t2, 2
/* 602DC 8005F6DC 01AA7021 */  addu       $t6, $t5, $t2
/* 602E0 8005F6E0 ADCB0268 */  sw         $t3, 0x268($t6)
/* 602E4 8005F6E4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 602E8 8005F6E8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 602EC 8005F6EC 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 602F0 8005F6F0 000CC080 */  sll        $t8, $t4, 2
/* 602F4 8005F6F4 030CC023 */  subu       $t8, $t8, $t4
/* 602F8 8005F6F8 0018C080 */  sll        $t8, $t8, 2
/* 602FC 8005F6FC 030CC023 */  subu       $t8, $t8, $t4
/* 60300 8005F700 0018C080 */  sll        $t8, $t8, 2
/* 60304 8005F704 030CC021 */  addu       $t8, $t8, $t4
/* 60308 8005F708 0018C080 */  sll        $t8, $t8, 2
/* 6030C 8005F70C 030CC023 */  subu       $t8, $t8, $t4
/* 60310 8005F710 0018C080 */  sll        $t8, $t8, 2
/* 60314 8005F714 03384021 */  addu       $t0, $t9, $t8
/* 60318 8005F718 8D090064 */  lw         $t1, 0x64($t0)
/* 6031C 8005F71C 2401000B */  addiu      $at, $zero, 0xb
/* 60320 8005F720 11210004 */  beq        $t1, $at, .L8005F734
/* 60324 8005F724 00000000 */   nop
/* 60328 8005F728 3C0F8014 */  lui        $t7, %hi(D_8013F628)
/* 6032C 8005F72C 8DEFF628 */  lw         $t7, %lo(D_8013F628)($t7)
/* 60330 8005F730 AD0F0078 */  sw         $t7, 0x78($t0)
.L8005F734:
/* 60334 8005F734 8FAB0028 */  lw         $t3, 0x28($sp)
/* 60338 8005F738 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 6033C 8005F73C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 60340 8005F740 000B7080 */  sll        $t6, $t3, 2
/* 60344 8005F744 01CB7023 */  subu       $t6, $t6, $t3
/* 60348 8005F748 000E7080 */  sll        $t6, $t6, 2
/* 6034C 8005F74C 01CB7023 */  subu       $t6, $t6, $t3
/* 60350 8005F750 000E7080 */  sll        $t6, $t6, 2
/* 60354 8005F754 01CB7021 */  addu       $t6, $t6, $t3
/* 60358 8005F758 000E7080 */  sll        $t6, $t6, 2
/* 6035C 8005F75C 3C0D8014 */  lui        $t5, %hi(D_8013F608)
/* 60360 8005F760 8DADF608 */  lw         $t5, %lo(D_8013F608)($t5)
/* 60364 8005F764 01CB7023 */  subu       $t6, $t6, $t3
/* 60368 8005F768 000E7080 */  sll        $t6, $t6, 2
/* 6036C 8005F76C 014E6021 */  addu       $t4, $t2, $t6
/* 60370 8005F770 AD8D0270 */  sw         $t5, 0x270($t4)
/* 60374 8005F774 8FA90028 */  lw         $t1, 0x28($sp)
/* 60378 8005F778 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 6037C 8005F77C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 60380 8005F780 00097880 */  sll        $t7, $t1, 2
/* 60384 8005F784 01E97823 */  subu       $t7, $t7, $t1
/* 60388 8005F788 000F7880 */  sll        $t7, $t7, 2
/* 6038C 8005F78C 01E97823 */  subu       $t7, $t7, $t1
/* 60390 8005F790 000F7880 */  sll        $t7, $t7, 2
/* 60394 8005F794 01E97821 */  addu       $t7, $t7, $t1
/* 60398 8005F798 000F7880 */  sll        $t7, $t7, 2
/* 6039C 8005F79C 3C198014 */  lui        $t9, %hi(D_8013F61C)
/* 603A0 8005F7A0 8F39F61C */  lw         $t9, %lo(D_8013F61C)($t9)
/* 603A4 8005F7A4 01E97823 */  subu       $t7, $t7, $t1
/* 603A8 8005F7A8 000F7880 */  sll        $t7, $t7, 2
/* 603AC 8005F7AC 030F4021 */  addu       $t0, $t8, $t7
/* 603B0 8005F7B0 AD19027C */  sw         $t9, 0x27c($t0)
/* 603B4 8005F7B4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 603B8 8005F7B8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 603BC 8005F7BC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 603C0 8005F7C0 000E6880 */  sll        $t5, $t6, 2
/* 603C4 8005F7C4 01AE6823 */  subu       $t5, $t5, $t6
/* 603C8 8005F7C8 000D6880 */  sll        $t5, $t5, 2
/* 603CC 8005F7CC 01AE6823 */  subu       $t5, $t5, $t6
/* 603D0 8005F7D0 000D6880 */  sll        $t5, $t5, 2
/* 603D4 8005F7D4 01AE6821 */  addu       $t5, $t5, $t6
/* 603D8 8005F7D8 000D6880 */  sll        $t5, $t5, 2
/* 603DC 8005F7DC 3C0B8014 */  lui        $t3, %hi(D_8013F60C)
/* 603E0 8005F7E0 8D6BF60C */  lw         $t3, %lo(D_8013F60C)($t3)
/* 603E4 8005F7E4 01AE6823 */  subu       $t5, $t5, $t6
/* 603E8 8005F7E8 000D6880 */  sll        $t5, $t5, 2
/* 603EC 8005F7EC 014D6021 */  addu       $t4, $t2, $t5
/* 603F0 8005F7F0 AD8B0274 */  sw         $t3, 0x274($t4)
/* 603F4 8005F7F4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 603F8 8005F7F8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 603FC 8005F7FC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 60400 8005F800 000FC880 */  sll        $t9, $t7, 2
/* 60404 8005F804 032FC823 */  subu       $t9, $t9, $t7
/* 60408 8005F808 0019C880 */  sll        $t9, $t9, 2
/* 6040C 8005F80C 032FC823 */  subu       $t9, $t9, $t7
/* 60410 8005F810 0019C880 */  sll        $t9, $t9, 2
/* 60414 8005F814 032FC821 */  addu       $t9, $t9, $t7
/* 60418 8005F818 0019C880 */  sll        $t9, $t9, 2
/* 6041C 8005F81C 3C098014 */  lui        $t1, %hi(D_8013F614)
/* 60420 8005F820 8D29F614 */  lw         $t1, %lo(D_8013F614)($t1)
/* 60424 8005F824 032FC823 */  subu       $t9, $t9, $t7
/* 60428 8005F828 0019C880 */  sll        $t9, $t9, 2
/* 6042C 8005F82C 03194021 */  addu       $t0, $t8, $t9
/* 60430 8005F830 AD090018 */  sw         $t1, 0x18($t0)
/* 60434 8005F834 8FAA0028 */  lw         $t2, 0x28($sp)
/* 60438 8005F838 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 6043C 8005F83C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 60440 8005F840 000A6880 */  sll        $t5, $t2, 2
/* 60444 8005F844 01AA6823 */  subu       $t5, $t5, $t2
/* 60448 8005F848 000D6880 */  sll        $t5, $t5, 2
/* 6044C 8005F84C 01AA6823 */  subu       $t5, $t5, $t2
/* 60450 8005F850 000D6880 */  sll        $t5, $t5, 2
/* 60454 8005F854 01AA6821 */  addu       $t5, $t5, $t2
/* 60458 8005F858 000D6880 */  sll        $t5, $t5, 2
/* 6045C 8005F85C 01AA6823 */  subu       $t5, $t5, $t2
/* 60460 8005F860 000D6880 */  sll        $t5, $t5, 2
/* 60464 8005F864 3C0F8014 */  lui        $t7, %hi(D_8013F610)
/* 60468 8005F868 01CD5821 */  addu       $t3, $t6, $t5
/* 6046C 8005F86C 8D6C0278 */  lw         $t4, 0x278($t3)
/* 60470 8005F870 8DEFF610 */  lw         $t7, %lo(D_8013F610)($t7)
/* 60474 8005F874 158F0005 */  bne        $t4, $t7, .L8005F88C
/* 60478 8005F878 00000000 */   nop
/* 6047C 8005F87C 8D780280 */  lw         $t8, 0x280($t3)
/* 60480 8005F880 24010001 */  addiu      $at, $zero, 1
/* 60484 8005F884 17010010 */  bne        $t8, $at, .L8005F8C8
/* 60488 8005F888 00000000 */   nop
.L8005F88C:
/* 6048C 8005F88C 8FA80028 */  lw         $t0, 0x28($sp)
/* 60490 8005F890 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 60494 8005F894 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 60498 8005F898 00085080 */  sll        $t2, $t0, 2
/* 6049C 8005F89C 01485023 */  subu       $t2, $t2, $t0
/* 604A0 8005F8A0 000A5080 */  sll        $t2, $t2, 2
/* 604A4 8005F8A4 01485023 */  subu       $t2, $t2, $t0
/* 604A8 8005F8A8 000A5080 */  sll        $t2, $t2, 2
/* 604AC 8005F8AC 01485021 */  addu       $t2, $t2, $t0
/* 604B0 8005F8B0 000A5080 */  sll        $t2, $t2, 2
/* 604B4 8005F8B4 01485023 */  subu       $t2, $t2, $t0
/* 604B8 8005F8B8 000A5080 */  sll        $t2, $t2, 2
/* 604BC 8005F8BC 24190001 */  addiu      $t9, $zero, 1
/* 604C0 8005F8C0 012A7021 */  addu       $t6, $t1, $t2
/* 604C4 8005F8C4 ADD90280 */  sw         $t9, 0x280($t6)
.L8005F8C8:
/* 604C8 8005F8C8 8FAF0028 */  lw         $t7, 0x28($sp)
/* 604CC 8005F8CC 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 604D0 8005F8D0 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 604D4 8005F8D4 000F5880 */  sll        $t3, $t7, 2
/* 604D8 8005F8D8 016F5823 */  subu       $t3, $t3, $t7
/* 604DC 8005F8DC 000B5880 */  sll        $t3, $t3, 2
/* 604E0 8005F8E0 016F5823 */  subu       $t3, $t3, $t7
/* 604E4 8005F8E4 000B5880 */  sll        $t3, $t3, 2
/* 604E8 8005F8E8 016F5821 */  addu       $t3, $t3, $t7
/* 604EC 8005F8EC 000B5880 */  sll        $t3, $t3, 2
/* 604F0 8005F8F0 3C0D8014 */  lui        $t5, %hi(D_8013F610)
/* 604F4 8005F8F4 8DADF610 */  lw         $t5, %lo(D_8013F610)($t5)
/* 604F8 8005F8F8 016F5823 */  subu       $t3, $t3, $t7
/* 604FC 8005F8FC 000B5880 */  sll        $t3, $t3, 2
/* 60500 8005F900 018BC021 */  addu       $t8, $t4, $t3
/* 60504 8005F904 AF0D0278 */  sw         $t5, 0x278($t8)
/* 60508 8005F908 8FA90028 */  lw         $t1, 0x28($sp)
/* 6050C 8005F90C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 60510 8005F910 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 60514 8005F914 00095080 */  sll        $t2, $t1, 2
/* 60518 8005F918 01495023 */  subu       $t2, $t2, $t1
/* 6051C 8005F91C 000A5080 */  sll        $t2, $t2, 2
/* 60520 8005F920 01495023 */  subu       $t2, $t2, $t1
/* 60524 8005F924 000A5080 */  sll        $t2, $t2, 2
/* 60528 8005F928 01495021 */  addu       $t2, $t2, $t1
/* 6052C 8005F92C 000A5080 */  sll        $t2, $t2, 2
/* 60530 8005F930 3C018014 */  lui        $at, %hi(D_8013F634)
/* 60534 8005F934 C430F634 */  lwc1       $f16, %lo(D_8013F634)($at)
/* 60538 8005F938 01495023 */  subu       $t2, $t2, $t1
/* 6053C 8005F93C 000A5080 */  sll        $t2, $t2, 2
/* 60540 8005F940 010AC821 */  addu       $t9, $t0, $t2
/* 60544 8005F944 E73000E0 */  swc1       $f16, 0xe0($t9)
/* 60548 8005F948 8FAF0028 */  lw         $t7, 0x28($sp)
/* 6054C 8005F94C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 60550 8005F950 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 60554 8005F954 000F6080 */  sll        $t4, $t7, 2
/* 60558 8005F958 018F6023 */  subu       $t4, $t4, $t7
/* 6055C 8005F95C 000C6080 */  sll        $t4, $t4, 2
/* 60560 8005F960 018F6023 */  subu       $t4, $t4, $t7
/* 60564 8005F964 000C6080 */  sll        $t4, $t4, 2
/* 60568 8005F968 018F6021 */  addu       $t4, $t4, $t7
/* 6056C 8005F96C 000C6080 */  sll        $t4, $t4, 2
/* 60570 8005F970 3C018014 */  lui        $at, %hi(D_8013F638)
/* 60574 8005F974 C432F638 */  lwc1       $f18, %lo(D_8013F638)($at)
/* 60578 8005F978 018F6023 */  subu       $t4, $t4, $t7
/* 6057C 8005F97C 000C6080 */  sll        $t4, $t4, 2
/* 60580 8005F980 01CC5821 */  addu       $t3, $t6, $t4
/* 60584 8005F984 E57200E4 */  swc1       $f18, 0xe4($t3)
/* 60588 8005F988 8FB80028 */  lw         $t8, 0x28($sp)
/* 6058C 8005F98C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 60590 8005F990 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 60594 8005F994 00184880 */  sll        $t1, $t8, 2
/* 60598 8005F998 01384823 */  subu       $t1, $t1, $t8
/* 6059C 8005F99C 00094880 */  sll        $t1, $t1, 2
/* 605A0 8005F9A0 01384823 */  subu       $t1, $t1, $t8
/* 605A4 8005F9A4 00094880 */  sll        $t1, $t1, 2
/* 605A8 8005F9A8 01384821 */  addu       $t1, $t1, $t8
/* 605AC 8005F9AC 00094880 */  sll        $t1, $t1, 2
/* 605B0 8005F9B0 3C018014 */  lui        $at, %hi(D_8013F63C)
/* 605B4 8005F9B4 C424F63C */  lwc1       $f4, %lo(D_8013F63C)($at)
/* 605B8 8005F9B8 01384823 */  subu       $t1, $t1, $t8
/* 605BC 8005F9BC 00094880 */  sll        $t1, $t1, 2
/* 605C0 8005F9C0 01A94021 */  addu       $t0, $t5, $t1
/* 605C4 8005F9C4 E50400E8 */  swc1       $f4, 0xe8($t0)
/* 605C8 8005F9C8 8FB90028 */  lw         $t9, 0x28($sp)
/* 605CC 8005F9CC 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 605D0 8005F9D0 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 605D4 8005F9D4 00197880 */  sll        $t7, $t9, 2
/* 605D8 8005F9D8 01F97823 */  subu       $t7, $t7, $t9
/* 605DC 8005F9DC 000F7880 */  sll        $t7, $t7, 2
/* 605E0 8005F9E0 01F97823 */  subu       $t7, $t7, $t9
/* 605E4 8005F9E4 000F7880 */  sll        $t7, $t7, 2
/* 605E8 8005F9E8 01F97821 */  addu       $t7, $t7, $t9
/* 605EC 8005F9EC 000F7880 */  sll        $t7, $t7, 2
/* 605F0 8005F9F0 3C018014 */  lui        $at, %hi(D_8013F640)
/* 605F4 8005F9F4 C426F640 */  lwc1       $f6, %lo(D_8013F640)($at)
/* 605F8 8005F9F8 01F97823 */  subu       $t7, $t7, $t9
/* 605FC 8005F9FC 000F7880 */  sll        $t7, $t7, 2
/* 60600 8005FA00 014F7021 */  addu       $t6, $t2, $t7
/* 60604 8005FA04 E5C600D4 */  swc1       $f6, 0xd4($t6)
/* 60608 8005FA08 8FAB0028 */  lw         $t3, 0x28($sp)
/* 6060C 8005FA0C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 60610 8005FA10 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 60614 8005FA14 000BC080 */  sll        $t8, $t3, 2
/* 60618 8005FA18 030BC023 */  subu       $t8, $t8, $t3
/* 6061C 8005FA1C 0018C080 */  sll        $t8, $t8, 2
/* 60620 8005FA20 030BC023 */  subu       $t8, $t8, $t3
/* 60624 8005FA24 0018C080 */  sll        $t8, $t8, 2
/* 60628 8005FA28 030BC021 */  addu       $t8, $t8, $t3
/* 6062C 8005FA2C 0018C080 */  sll        $t8, $t8, 2
/* 60630 8005FA30 3C018014 */  lui        $at, %hi(D_8013F644)
/* 60634 8005FA34 C428F644 */  lwc1       $f8, %lo(D_8013F644)($at)
/* 60638 8005FA38 030BC023 */  subu       $t8, $t8, $t3
/* 6063C 8005FA3C 0018C080 */  sll        $t8, $t8, 2
/* 60640 8005FA40 01986821 */  addu       $t5, $t4, $t8
/* 60644 8005FA44 E5A800D8 */  swc1       $f8, 0xd8($t5)
/* 60648 8005FA48 8FA80028 */  lw         $t0, 0x28($sp)
/* 6064C 8005FA4C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 60650 8005FA50 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 60654 8005FA54 0008C880 */  sll        $t9, $t0, 2
/* 60658 8005FA58 0328C823 */  subu       $t9, $t9, $t0
/* 6065C 8005FA5C 0019C880 */  sll        $t9, $t9, 2
/* 60660 8005FA60 0328C823 */  subu       $t9, $t9, $t0
/* 60664 8005FA64 0019C880 */  sll        $t9, $t9, 2
/* 60668 8005FA68 0328C821 */  addu       $t9, $t9, $t0
/* 6066C 8005FA6C 0019C880 */  sll        $t9, $t9, 2
/* 60670 8005FA70 3C018014 */  lui        $at, %hi(D_8013F648)
/* 60674 8005FA74 C42AF648 */  lwc1       $f10, %lo(D_8013F648)($at)
/* 60678 8005FA78 0328C823 */  subu       $t9, $t9, $t0
/* 6067C 8005FA7C 0019C880 */  sll        $t9, $t9, 2
/* 60680 8005FA80 01395021 */  addu       $t2, $t1, $t9
/* 60684 8005FA84 E54A00DC */  swc1       $f10, 0xdc($t2)
/* 60688 8005FA88 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6068C 8005FA8C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 60690 8005FA90 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 60694 8005FA94 000E5880 */  sll        $t3, $t6, 2
/* 60698 8005FA98 016E5823 */  subu       $t3, $t3, $t6
/* 6069C 8005FA9C 000B5880 */  sll        $t3, $t3, 2
/* 606A0 8005FAA0 016E5823 */  subu       $t3, $t3, $t6
/* 606A4 8005FAA4 000B5880 */  sll        $t3, $t3, 2
/* 606A8 8005FAA8 016E5821 */  addu       $t3, $t3, $t6
/* 606AC 8005FAAC 000B5880 */  sll        $t3, $t3, 2
/* 606B0 8005FAB0 3C018014 */  lui        $at, %hi(D_8013F658)
/* 606B4 8005FAB4 C430F658 */  lwc1       $f16, %lo(D_8013F658)($at)
/* 606B8 8005FAB8 016E5823 */  subu       $t3, $t3, $t6
/* 606BC 8005FABC 000B5880 */  sll        $t3, $t3, 2
/* 606C0 8005FAC0 01EB6021 */  addu       $t4, $t7, $t3
/* 606C4 8005FAC4 E5900104 */  swc1       $f16, 0x104($t4)
/* 606C8 8005FAC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 606CC 8005FACC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 606D0 8005FAD0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 606D4 8005FAD4 000D4080 */  sll        $t0, $t5, 2
/* 606D8 8005FAD8 010D4023 */  subu       $t0, $t0, $t5
/* 606DC 8005FADC 00084080 */  sll        $t0, $t0, 2
/* 606E0 8005FAE0 010D4023 */  subu       $t0, $t0, $t5
/* 606E4 8005FAE4 00084080 */  sll        $t0, $t0, 2
/* 606E8 8005FAE8 010D4021 */  addu       $t0, $t0, $t5
/* 606EC 8005FAEC 00084080 */  sll        $t0, $t0, 2
/* 606F0 8005FAF0 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 606F4 8005FAF4 C432F64C */  lwc1       $f18, %lo(D_8013F64C)($at)
/* 606F8 8005FAF8 010D4023 */  subu       $t0, $t0, $t5
/* 606FC 8005FAFC 00084080 */  sll        $t0, $t0, 2
/* 60700 8005FB00 03084821 */  addu       $t1, $t8, $t0
/* 60704 8005FB04 E5320108 */  swc1       $f18, 0x108($t1)
/* 60708 8005FB08 8FAA0028 */  lw         $t2, 0x28($sp)
/* 6070C 8005FB0C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 60710 8005FB10 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 60714 8005FB14 000A7080 */  sll        $t6, $t2, 2
/* 60718 8005FB18 01CA7023 */  subu       $t6, $t6, $t2
/* 6071C 8005FB1C 000E7080 */  sll        $t6, $t6, 2
/* 60720 8005FB20 01CA7023 */  subu       $t6, $t6, $t2
/* 60724 8005FB24 000E7080 */  sll        $t6, $t6, 2
/* 60728 8005FB28 01CA7021 */  addu       $t6, $t6, $t2
/* 6072C 8005FB2C 000E7080 */  sll        $t6, $t6, 2
/* 60730 8005FB30 3C018014 */  lui        $at, %hi(D_8013F650)
/* 60734 8005FB34 C424F650 */  lwc1       $f4, %lo(D_8013F650)($at)
/* 60738 8005FB38 01CA7023 */  subu       $t6, $t6, $t2
/* 6073C 8005FB3C 000E7080 */  sll        $t6, $t6, 2
/* 60740 8005FB40 032E7821 */  addu       $t7, $t9, $t6
/* 60744 8005FB44 E5E40118 */  swc1       $f4, 0x118($t7)
/* 60748 8005FB48 8FAC0028 */  lw         $t4, 0x28($sp)
/* 6074C 8005FB4C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 60750 8005FB50 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 60754 8005FB54 000C6880 */  sll        $t5, $t4, 2
/* 60758 8005FB58 01AC6823 */  subu       $t5, $t5, $t4
/* 6075C 8005FB5C 000D6880 */  sll        $t5, $t5, 2
/* 60760 8005FB60 01AC6823 */  subu       $t5, $t5, $t4
/* 60764 8005FB64 000D6880 */  sll        $t5, $t5, 2
/* 60768 8005FB68 01AC6821 */  addu       $t5, $t5, $t4
/* 6076C 8005FB6C 000D6880 */  sll        $t5, $t5, 2
/* 60770 8005FB70 3C018014 */  lui        $at, %hi(D_8013F654)
/* 60774 8005FB74 C426F654 */  lwc1       $f6, %lo(D_8013F654)($at)
/* 60778 8005FB78 01AC6823 */  subu       $t5, $t5, $t4
/* 6077C 8005FB7C 000D6880 */  sll        $t5, $t5, 2
/* 60780 8005FB80 016DC021 */  addu       $t8, $t3, $t5
/* 60784 8005FB84 24080001 */  addiu      $t0, $zero, 1
/* 60788 8005FB88 E70600F4 */  swc1       $f6, 0xf4($t8)
/* 6078C 8005FB8C AFA80024 */  sw         $t0, 0x24($sp)
.L8005FB90:
/* 60790 8005FB90 8FA20024 */  lw         $v0, 0x24($sp)
/* 60794 8005FB94 8FBF001C */  lw         $ra, 0x1c($sp)
/* 60798 8005FB98 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6079C 8005FB9C 03E00008 */  jr         $ra
/* 607A0 8005FBA0 00000000 */   nop

glabel func_8005FBA4
/* 607A4 8005FBA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 607A8 8005FBA8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 607AC 8005FBAC AFA40028 */  sw         $a0, 0x28($sp)
/* 607B0 8005FBB0 AFA5002C */  sw         $a1, 0x2c($sp)
/* 607B4 8005FBB4 AFB00018 */  sw         $s0, 0x18($sp)
/* 607B8 8005FBB8 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 607BC 8005FBBC 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 607C0 8005FBC0 24010023 */  addiu      $at, $zero, 0x23
/* 607C4 8005FBC4 12010009 */  beq        $s0, $at, .L8005FBEC
/* 607C8 8005FBC8 24010062 */   addiu     $at, $zero, 0x62
/* 607CC 8005FBCC 1201000E */  beq        $s0, $at, .L8005FC08
/* 607D0 8005FBD0 24010064 */   addiu     $at, $zero, 0x64
/* 607D4 8005FBD4 1201000C */  beq        $s0, $at, .L8005FC08
/* 607D8 8005FBD8 24010098 */   addiu     $at, $zero, 0x98
/* 607DC 8005FBDC 12010017 */  beq        $s0, $at, .L8005FC3C
/* 607E0 8005FBE0 240100CE */   addiu     $at, $zero, 0xce
/* 607E4 8005FBE4 1601002B */  bne        $s0, $at, .L8005FC94
/* 607E8 8005FBE8 00000000 */   nop
.L8005FBEC:
/* 607EC 8005FBEC 240E00D0 */  addiu      $t6, $zero, 0xd0
/* 607F0 8005FBF0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 607F4 8005FBF4 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 607F8 8005FBF8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 607FC 8005FBFC 240F0001 */  addiu      $t7, $zero, 1
/* 60800 8005FC00 1000002A */  b          .L8005FCAC
/* 60804 8005FC04 AC2FF61C */   sw        $t7, %lo(D_8013F61C)($at)
.L8005FC08:
/* 60808 8005FC08 241800A2 */  addiu      $t8, $zero, 0xa2
/* 6080C 8005FC0C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60810 8005FC10 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 60814 8005FC14 44802000 */  mtc1       $zero, $f4
/* 60818 8005FC18 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6081C 8005FC1C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 60820 8005FC20 3C018014 */  lui        $at, %hi(D_8013F648)
/* 60824 8005FC24 E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 60828 8005FC28 3C018014 */  lui        $at, %hi(D_8013F644)
/* 6082C 8005FC2C E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
/* 60830 8005FC30 3C018014 */  lui        $at, %hi(D_8013F640)
/* 60834 8005FC34 1000001D */  b          .L8005FCAC
/* 60838 8005FC38 E424F640 */   swc1      $f4, %lo(D_8013F640)($at)
.L8005FC3C:
/* 6083C 8005FC3C 8FB90028 */  lw         $t9, 0x28($sp)
/* 60840 8005FC40 3C010001 */  lui        $at, 1
/* 60844 8005FC44 8F280000 */  lw         $t0, ($t9)
/* 60848 8005FC48 01014824 */  and        $t1, $t0, $at
/* 6084C 8005FC4C 11200006 */  beqz       $t1, .L8005FC68
/* 60850 8005FC50 00000000 */   nop
/* 60854 8005FC54 03202025 */  or         $a0, $t9, $zero
/* 60858 8005FC58 0C018727 */  jal        func_80061C9C
/* 6085C 8005FC5C 8FA5002C */   lw        $a1, 0x2c($sp)
/* 60860 8005FC60 10000012 */  b          .L8005FCAC
/* 60864 8005FC64 00000000 */   nop
.L8005FC68:
/* 60868 8005FC68 8FAA0028 */  lw         $t2, 0x28($sp)
/* 6086C 8005FC6C 8D4B0000 */  lw         $t3, ($t2)
/* 60870 8005FC70 316C0001 */  andi       $t4, $t3, 1
/* 60874 8005FC74 1580000D */  bnez       $t4, .L8005FCAC
/* 60878 8005FC78 00000000 */   nop
/* 6087C 8005FC7C 240D009A */  addiu      $t5, $zero, 0x9a
/* 60880 8005FC80 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60884 8005FC84 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 60888 8005FC88 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6088C 8005FC8C 10000007 */  b          .L8005FCAC
/* 60890 8005FC90 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L8005FC94:
/* 60894 8005FC94 240E0098 */  addiu      $t6, $zero, 0x98
/* 60898 8005FC98 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6089C 8005FC9C AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 608A0 8005FCA0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 608A4 8005FCA4 240F0001 */  addiu      $t7, $zero, 1
/* 608A8 8005FCA8 AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
.L8005FCAC:
/* 608AC 8005FCAC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 608B0 8005FCB0 8FB00018 */  lw         $s0, 0x18($sp)
/* 608B4 8005FCB4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 608B8 8005FCB8 03E00008 */  jr         $ra
/* 608BC 8005FCBC 00000000 */   nop

glabel func_8005FCC0
/* 608C0 8005FCC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 608C4 8005FCC4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 608C8 8005FCC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 608CC 8005FCCC AFA5002C */  sw         $a1, 0x2c($sp)
/* 608D0 8005FCD0 AFB00018 */  sw         $s0, 0x18($sp)
/* 608D4 8005FCD4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 608D8 8005FCD8 240E0004 */  addiu      $t6, $zero, 4
/* 608DC 8005FCDC AFAE0024 */  sw         $t6, 0x24($sp)
/* 608E0 8005FCE0 8DF00000 */  lw         $s0, ($t7)
/* 608E4 8005FCE4 24010003 */  addiu      $at, $zero, 3
/* 608E8 8005FCE8 12010011 */  beq        $s0, $at, .L8005FD30
/* 608EC 8005FCEC 24010005 */   addiu     $at, $zero, 5
/* 608F0 8005FCF0 12010034 */  beq        $s0, $at, .L8005FDC4
/* 608F4 8005FCF4 24010009 */   addiu     $at, $zero, 9
/* 608F8 8005FCF8 12010057 */  beq        $s0, $at, .L8005FE58
/* 608FC 8005FCFC 24010011 */   addiu     $at, $zero, 0x11
/* 60900 8005FD00 1201007A */  beq        $s0, $at, .L8005FEEC
/* 60904 8005FD04 24010201 */   addiu     $at, $zero, 0x201
/* 60908 8005FD08 1201009D */  beq        $s0, $at, .L8005FF80
/* 6090C 8005FD0C 24010801 */   addiu     $at, $zero, 0x801
/* 60910 8005FD10 12010113 */  beq        $s0, $at, .L80060160
/* 60914 8005FD14 24011001 */   addiu     $at, $zero, 0x1001
/* 60918 8005FD18 120100AB */  beq        $s0, $at, .L8005FFC8
/* 6091C 8005FD1C 24012001 */   addiu     $at, $zero, 0x2001
/* 60920 8005FD20 120100A9 */  beq        $s0, $at, .L8005FFC8
/* 60924 8005FD24 00000000 */   nop
/* 60928 8005FD28 10000131 */  b          .L800601F0
/* 6092C 8005FD2C 00000000 */   nop
.L8005FD30:
/* 60930 8005FD30 8FA8002C */  lw         $t0, 0x2c($sp)
/* 60934 8005FD34 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 60938 8005FD38 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 6093C 8005FD3C 00084880 */  sll        $t1, $t0, 2
/* 60940 8005FD40 01284823 */  subu       $t1, $t1, $t0
/* 60944 8005FD44 00094880 */  sll        $t1, $t1, 2
/* 60948 8005FD48 01284823 */  subu       $t1, $t1, $t0
/* 6094C 8005FD4C 00094880 */  sll        $t1, $t1, 2
/* 60950 8005FD50 01284821 */  addu       $t1, $t1, $t0
/* 60954 8005FD54 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60958 8005FD58 00094880 */  sll        $t1, $t1, 2
/* 6095C 8005FD5C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 60960 8005FD60 01284823 */  subu       $t1, $t1, $t0
/* 60964 8005FD64 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60968 8005FD68 2418000C */  addiu      $t8, $zero, 0xc
/* 6096C 8005FD6C 00094880 */  sll        $t1, $t1, 2
/* 60970 8005FD70 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 60974 8005FD74 03295021 */  addu       $t2, $t9, $t1
/* 60978 8005FD78 8D4B006C */  lw         $t3, 0x6c($t2)
/* 6097C 8005FD7C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 60980 8005FD80 3C0F8016 */  lui        $t7, 0x8016
/* 60984 8005FD84 000B60C0 */  sll        $t4, $t3, 3
/* 60988 8005FD88 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* 6098C 8005FD8C 018D7021 */  addu       $t6, $t4, $t5
/* 60990 8005FD90 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* 60994 8005FD94 01EE7821 */  addu       $t7, $t7, $t6
/* 60998 8005FD98 81EF7678 */  lb         $t7, 0x7678($t7)
/* 6099C 8005FD9C 3C018014 */  lui        $at, %hi(D_8013F614)
/* 609A0 8005FDA0 15180004 */  bne        $t0, $t8, .L8005FDB4
/* 609A4 8005FDA4 AC2FF614 */   sw        $t7, %lo(D_8013F614)($at)
/* 609A8 8005FDA8 24190001 */  addiu      $t9, $zero, 1
/* 609AC 8005FDAC 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 609B0 8005FDB0 AC397D64 */  sw         $t9, %lo(D_800D7D64)($at)
.L8005FDB4:
/* 609B4 8005FDB4 0C017AEE */  jal        func_8005EBB8
/* 609B8 8005FDB8 8FA4002C */   lw        $a0, 0x2c($sp)
/* 609BC 8005FDBC 10000114 */  b          .L80060210
/* 609C0 8005FDC0 00000000 */   nop
.L8005FDC4:
/* 609C4 8005FDC4 8FAB002C */  lw         $t3, 0x2c($sp)
/* 609C8 8005FDC8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 609CC 8005FDCC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 609D0 8005FDD0 000B6080 */  sll        $t4, $t3, 2
/* 609D4 8005FDD4 018B6023 */  subu       $t4, $t4, $t3
/* 609D8 8005FDD8 000C6080 */  sll        $t4, $t4, 2
/* 609DC 8005FDDC 018B6023 */  subu       $t4, $t4, $t3
/* 609E0 8005FDE0 000C6080 */  sll        $t4, $t4, 2
/* 609E4 8005FDE4 018B6021 */  addu       $t4, $t4, $t3
/* 609E8 8005FDE8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 609EC 8005FDEC 000C6080 */  sll        $t4, $t4, 2
/* 609F0 8005FDF0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 609F4 8005FDF4 018B6023 */  subu       $t4, $t4, $t3
/* 609F8 8005FDF8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 609FC 8005FDFC 2409000B */  addiu      $t1, $zero, 0xb
/* 60A00 8005FE00 000C6080 */  sll        $t4, $t4, 2
/* 60A04 8005FE04 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 60A08 8005FE08 014C6821 */  addu       $t5, $t2, $t4
/* 60A0C 8005FE0C 8DAE006C */  lw         $t6, 0x6c($t5)
/* 60A10 8005FE10 8FA80024 */  lw         $t0, 0x24($sp)
/* 60A14 8005FE14 3C198016 */  lui        $t9, 0x8016
/* 60A18 8005FE18 000E78C0 */  sll        $t7, $t6, 3
/* 60A1C 8005FE1C 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 60A20 8005FE20 01E8C021 */  addu       $t8, $t7, $t0
/* 60A24 8005FE24 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 60A28 8005FE28 0338C821 */  addu       $t9, $t9, $t8
/* 60A2C 8005FE2C 83397679 */  lb         $t9, 0x7679($t9)
/* 60A30 8005FE30 3C018014 */  lui        $at, %hi(D_8013F614)
/* 60A34 8005FE34 15690004 */  bne        $t3, $t1, .L8005FE48
/* 60A38 8005FE38 AC39F614 */   sw        $t9, %lo(D_8013F614)($at)
/* 60A3C 8005FE3C 240A0001 */  addiu      $t2, $zero, 1
/* 60A40 8005FE40 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 60A44 8005FE44 AC2A7D64 */  sw         $t2, %lo(D_800D7D64)($at)
.L8005FE48:
/* 60A48 8005FE48 0C017AEE */  jal        func_8005EBB8
/* 60A4C 8005FE4C 8FA4002C */   lw        $a0, 0x2c($sp)
/* 60A50 8005FE50 100000EF */  b          .L80060210
/* 60A54 8005FE54 00000000 */   nop
.L8005FE58:
/* 60A58 8005FE58 8FAE002C */  lw         $t6, 0x2c($sp)
/* 60A5C 8005FE5C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 60A60 8005FE60 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 60A64 8005FE64 000E7880 */  sll        $t7, $t6, 2
/* 60A68 8005FE68 01EE7823 */  subu       $t7, $t7, $t6
/* 60A6C 8005FE6C 000F7880 */  sll        $t7, $t7, 2
/* 60A70 8005FE70 01EE7823 */  subu       $t7, $t7, $t6
/* 60A74 8005FE74 000F7880 */  sll        $t7, $t7, 2
/* 60A78 8005FE78 01EE7821 */  addu       $t7, $t7, $t6
/* 60A7C 8005FE7C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60A80 8005FE80 000F7880 */  sll        $t7, $t7, 2
/* 60A84 8005FE84 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 60A88 8005FE88 01EE7823 */  subu       $t7, $t7, $t6
/* 60A8C 8005FE8C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60A90 8005FE90 240C0027 */  addiu      $t4, $zero, 0x27
/* 60A94 8005FE94 000F7880 */  sll        $t7, $t7, 2
/* 60A98 8005FE98 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 60A9C 8005FE9C 01AF4021 */  addu       $t0, $t5, $t7
/* 60AA0 8005FEA0 8D18006C */  lw         $t8, 0x6c($t0)
/* 60AA4 8005FEA4 8FAB0024 */  lw         $t3, 0x24($sp)
/* 60AA8 8005FEA8 3C0A8016 */  lui        $t2, 0x8016
/* 60AAC 8005FEAC 0018C8C0 */  sll        $t9, $t8, 3
/* 60AB0 8005FEB0 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* 60AB4 8005FEB4 032B4821 */  addu       $t1, $t9, $t3
/* 60AB8 8005FEB8 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* 60ABC 8005FEBC 01495021 */  addu       $t2, $t2, $t1
/* 60AC0 8005FEC0 814A767A */  lb         $t2, 0x767a($t2)
/* 60AC4 8005FEC4 3C018014 */  lui        $at, %hi(D_8013F614)
/* 60AC8 8005FEC8 15CC0004 */  bne        $t6, $t4, .L8005FEDC
/* 60ACC 8005FECC AC2AF614 */   sw        $t2, %lo(D_8013F614)($at)
/* 60AD0 8005FED0 240D0001 */  addiu      $t5, $zero, 1
/* 60AD4 8005FED4 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 60AD8 8005FED8 AC2D7D64 */  sw         $t5, %lo(D_800D7D64)($at)
.L8005FEDC:
/* 60ADC 8005FEDC 0C017AEE */  jal        func_8005EBB8
/* 60AE0 8005FEE0 8FA4002C */   lw        $a0, 0x2c($sp)
/* 60AE4 8005FEE4 100000CA */  b          .L80060210
/* 60AE8 8005FEE8 00000000 */   nop
.L8005FEEC:
/* 60AEC 8005FEEC 8FB8002C */  lw         $t8, 0x2c($sp)
/* 60AF0 8005FEF0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 60AF4 8005FEF4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 60AF8 8005FEF8 0018C880 */  sll        $t9, $t8, 2
/* 60AFC 8005FEFC 0338C823 */  subu       $t9, $t9, $t8
/* 60B00 8005FF00 0019C880 */  sll        $t9, $t9, 2
/* 60B04 8005FF04 0338C823 */  subu       $t9, $t9, $t8
/* 60B08 8005FF08 0019C880 */  sll        $t9, $t9, 2
/* 60B0C 8005FF0C 0338C821 */  addu       $t9, $t9, $t8
/* 60B10 8005FF10 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60B14 8005FF14 0019C880 */  sll        $t9, $t9, 2
/* 60B18 8005FF18 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 60B1C 8005FF1C 0338C823 */  subu       $t9, $t9, $t8
/* 60B20 8005FF20 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60B24 8005FF24 240F0030 */  addiu      $t7, $zero, 0x30
/* 60B28 8005FF28 0019C880 */  sll        $t9, $t9, 2
/* 60B2C 8005FF2C AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 60B30 8005FF30 01195821 */  addu       $t3, $t0, $t9
/* 60B34 8005FF34 8D69006C */  lw         $t1, 0x6c($t3)
/* 60B38 8005FF38 8FAE0024 */  lw         $t6, 0x24($sp)
/* 60B3C 8005FF3C 3C0D8016 */  lui        $t5, 0x8016
/* 60B40 8005FF40 000950C0 */  sll        $t2, $t1, 3
/* 60B44 8005FF44 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* 60B48 8005FF48 014E6021 */  addu       $t4, $t2, $t6
/* 60B4C 8005FF4C 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* 60B50 8005FF50 01AC6821 */  addu       $t5, $t5, $t4
/* 60B54 8005FF54 81AD767B */  lb         $t5, 0x767b($t5)
/* 60B58 8005FF58 3C018014 */  lui        $at, %hi(D_8013F614)
/* 60B5C 8005FF5C 170F0004 */  bne        $t8, $t7, .L8005FF70
/* 60B60 8005FF60 AC2DF614 */   sw        $t5, %lo(D_8013F614)($at)
/* 60B64 8005FF64 24080001 */  addiu      $t0, $zero, 1
/* 60B68 8005FF68 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 60B6C 8005FF6C AC287D64 */  sw         $t0, %lo(D_800D7D64)($at)
.L8005FF70:
/* 60B70 8005FF70 0C017AEE */  jal        func_8005EBB8
/* 60B74 8005FF74 8FA4002C */   lw        $a0, 0x2c($sp)
/* 60B78 8005FF78 100000A5 */  b          .L80060210
/* 60B7C 8005FF7C 00000000 */   nop
.L8005FF80:
/* 60B80 8005FF80 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60B84 8005FF84 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 60B88 8005FF88 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 60B8C 8005FF8C 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 60B90 8005FF90 8FAB002C */  lw         $t3, 0x2c($sp)
/* 60B94 8005FF94 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60B98 8005FF98 24190034 */  addiu      $t9, $zero, 0x34
/* 60B9C 8005FF9C AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 60BA0 8005FFA0 3C018014 */  lui        $at, %hi(D_8013F614)
/* 60BA4 8005FFA4 15690004 */  bne        $t3, $t1, .L8005FFB8
/* 60BA8 8005FFA8 AC20F614 */   sw        $zero, %lo(D_8013F614)($at)
/* 60BAC 8005FFAC 240A0001 */  addiu      $t2, $zero, 1
/* 60BB0 8005FFB0 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 60BB4 8005FFB4 AC2A7D64 */  sw         $t2, %lo(D_800D7D64)($at)
.L8005FFB8:
/* 60BB8 8005FFB8 0C017AEE */  jal        func_8005EBB8
/* 60BBC 8005FFBC 8FA4002C */   lw        $a0, 0x2c($sp)
/* 60BC0 8005FFC0 10000093 */  b          .L80060210
/* 60BC4 8005FFC4 00000000 */   nop
.L8005FFC8:
/* 60BC8 8005FFC8 8FA40028 */  lw         $a0, 0x28($sp)
/* 60BCC 8005FFCC 0C0177C0 */  jal        func_8005DF00
/* 60BD0 8005FFD0 8FA5002C */   lw        $a1, 0x2c($sp)
/* 60BD4 8005FFD4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 60BD8 8005FFD8 8DCC0000 */  lw         $t4, ($t6)
/* 60BDC 8005FFDC 318D2000 */  andi       $t5, $t4, 0x2000
/* 60BE0 8005FFE0 11A00016 */  beqz       $t5, .L8006003C
/* 60BE4 8005FFE4 00000000 */   nop
/* 60BE8 8005FFE8 8FAF002C */  lw         $t7, 0x2c($sp)
/* 60BEC 8005FFEC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 60BF0 8005FFF0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 60BF4 8005FFF4 000F4080 */  sll        $t0, $t7, 2
/* 60BF8 8005FFF8 010F4023 */  subu       $t0, $t0, $t7
/* 60BFC 8005FFFC 00084080 */  sll        $t0, $t0, 2
/* 60C00 80060000 010F4023 */  subu       $t0, $t0, $t7
/* 60C04 80060004 00084080 */  sll        $t0, $t0, 2
/* 60C08 80060008 010F4021 */  addu       $t0, $t0, $t7
/* 60C0C 8006000C 00084080 */  sll        $t0, $t0, 2
/* 60C10 80060010 010F4023 */  subu       $t0, $t0, $t7
/* 60C14 80060014 00084080 */  sll        $t0, $t0, 2
/* 60C18 80060018 0308C821 */  addu       $t9, $t8, $t0
/* 60C1C 8006001C C7240038 */  lwc1       $f4, 0x38($t9)
/* 60C20 80060020 44804800 */  mtc1       $zero, $f9
/* 60C24 80060024 44804000 */  mtc1       $zero, $f8
/* 60C28 80060028 460021A1 */  cvt.d.s    $f6, $f4
/* 60C2C 8006002C 4626403E */  c.le.d     $f8, $f6
/* 60C30 80060030 00000000 */  nop
/* 60C34 80060034 4501001B */  bc1t       .L800600A4
/* 60C38 80060038 00000000 */   nop
.L8006003C:
/* 60C3C 8006003C 8FAB0028 */  lw         $t3, 0x28($sp)
/* 60C40 80060040 8D690000 */  lw         $t1, ($t3)
/* 60C44 80060044 312A1000 */  andi       $t2, $t1, 0x1000
/* 60C48 80060048 1140002A */  beqz       $t2, .L800600F4
/* 60C4C 8006004C 00000000 */   nop
/* 60C50 80060050 8FAC002C */  lw         $t4, 0x2c($sp)
/* 60C54 80060054 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 60C58 80060058 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 60C5C 8006005C 000C6880 */  sll        $t5, $t4, 2
/* 60C60 80060060 01AC6823 */  subu       $t5, $t5, $t4
/* 60C64 80060064 000D6880 */  sll        $t5, $t5, 2
/* 60C68 80060068 01AC6823 */  subu       $t5, $t5, $t4
/* 60C6C 8006006C 000D6880 */  sll        $t5, $t5, 2
/* 60C70 80060070 01AC6821 */  addu       $t5, $t5, $t4
/* 60C74 80060074 000D6880 */  sll        $t5, $t5, 2
/* 60C78 80060078 01AC6823 */  subu       $t5, $t5, $t4
/* 60C7C 8006007C 000D6880 */  sll        $t5, $t5, 2
/* 60C80 80060080 01CD7821 */  addu       $t7, $t6, $t5
/* 60C84 80060084 C5EA0034 */  lwc1       $f10, 0x34($t7)
/* 60C88 80060088 44809800 */  mtc1       $zero, $f19
/* 60C8C 8006008C 44809000 */  mtc1       $zero, $f18
/* 60C90 80060090 46005421 */  cvt.d.s    $f16, $f10
/* 60C94 80060094 4630903E */  c.le.d     $f18, $f16
/* 60C98 80060098 00000000 */  nop
/* 60C9C 8006009C 45000015 */  bc1f       .L800600F4
/* 60CA0 800600A0 00000000 */   nop
.L800600A4:
/* 60CA4 800600A4 3C188014 */  lui        $t8, %hi(D_8013F610)
/* 60CA8 800600A8 8F18F610 */  lw         $t8, %lo(D_8013F610)($t8)
/* 60CAC 800600AC 24010064 */  addiu      $at, $zero, 0x64
/* 60CB0 800600B0 13010003 */  beq        $t8, $at, .L800600C0
/* 60CB4 800600B4 24010062 */   addiu     $at, $zero, 0x62
/* 60CB8 800600B8 17010008 */  bne        $t8, $at, .L800600DC
/* 60CBC 800600BC 00000000 */   nop
.L800600C0:
/* 60CC0 800600C0 24080062 */  addiu      $t0, $zero, 0x62
/* 60CC4 800600C4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60CC8 800600C8 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 60CCC 800600CC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60CD0 800600D0 24190001 */  addiu      $t9, $zero, 1
/* 60CD4 800600D4 1000001A */  b          .L80060140
/* 60CD8 800600D8 AC39F61C */   sw        $t9, %lo(D_8013F61C)($at)
.L800600DC:
/* 60CDC 800600DC 240B0064 */  addiu      $t3, $zero, 0x64
/* 60CE0 800600E0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60CE4 800600E4 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 60CE8 800600E8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60CEC 800600EC 10000014 */  b          .L80060140
/* 60CF0 800600F0 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L800600F4:
/* 60CF4 800600F4 3C098014 */  lui        $t1, %hi(D_8013F610)
/* 60CF8 800600F8 8D29F610 */  lw         $t1, %lo(D_8013F610)($t1)
/* 60CFC 800600FC 24010064 */  addiu      $at, $zero, 0x64
/* 60D00 80060100 11210003 */  beq        $t1, $at, .L80060110
/* 60D04 80060104 24010062 */   addiu     $at, $zero, 0x62
/* 60D08 80060108 15210007 */  bne        $t1, $at, .L80060128
/* 60D0C 8006010C 00000000 */   nop
.L80060110:
/* 60D10 80060110 240A00A2 */  addiu      $t2, $zero, 0xa2
/* 60D14 80060114 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60D18 80060118 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 60D1C 8006011C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60D20 80060120 10000007 */  b          .L80060140
/* 60D24 80060124 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80060128:
/* 60D28 80060128 240C0098 */  addiu      $t4, $zero, 0x98
/* 60D2C 8006012C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60D30 80060130 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 60D34 80060134 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60D38 80060138 240E0001 */  addiu      $t6, $zero, 1
/* 60D3C 8006013C AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
.L80060140:
/* 60D40 80060140 44802000 */  mtc1       $zero, $f4
/* 60D44 80060144 3C018014 */  lui        $at, %hi(D_8013F648)
/* 60D48 80060148 E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 60D4C 8006014C 3C018014 */  lui        $at, %hi(D_8013F644)
/* 60D50 80060150 E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
/* 60D54 80060154 3C018014 */  lui        $at, %hi(D_8013F640)
/* 60D58 80060158 1000002D */  b          .L80060210
/* 60D5C 8006015C E424F640 */   swc1      $f4, %lo(D_8013F640)($at)
.L80060160:
/* 60D60 80060160 3C0D8014 */  lui        $t5, %hi(D_8013F610)
/* 60D64 80060164 8DADF610 */  lw         $t5, %lo(D_8013F610)($t5)
/* 60D68 80060168 24010023 */  addiu      $at, $zero, 0x23
/* 60D6C 8006016C 11A10003 */  beq        $t5, $at, .L8006017C
/* 60D70 80060170 240100CE */   addiu     $at, $zero, 0xce
/* 60D74 80060174 15A10008 */  bne        $t5, $at, .L80060198
/* 60D78 80060178 00000000 */   nop
.L8006017C:
/* 60D7C 8006017C 240F00CE */  addiu      $t7, $zero, 0xce
/* 60D80 80060180 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60D84 80060184 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 60D88 80060188 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 60D8C 8006018C 24180001 */  addiu      $t8, $zero, 1
/* 60D90 80060190 1000001F */  b          .L80060210
/* 60D94 80060194 AC38F61C */   sw        $t8, %lo(D_8013F61C)($at)
.L80060198:
/* 60D98 80060198 8FB9002C */  lw         $t9, 0x2c($sp)
/* 60D9C 8006019C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 60DA0 800601A0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 60DA4 800601A4 00195880 */  sll        $t3, $t9, 2
/* 60DA8 800601A8 01795823 */  subu       $t3, $t3, $t9
/* 60DAC 800601AC 000B5880 */  sll        $t3, $t3, 2
/* 60DB0 800601B0 01795823 */  subu       $t3, $t3, $t9
/* 60DB4 800601B4 000B5880 */  sll        $t3, $t3, 2
/* 60DB8 800601B8 01795821 */  addu       $t3, $t3, $t9
/* 60DBC 800601BC 000B5880 */  sll        $t3, $t3, 2
/* 60DC0 800601C0 01795823 */  subu       $t3, $t3, $t9
/* 60DC4 800601C4 000B5880 */  sll        $t3, $t3, 2
/* 60DC8 800601C8 010B4821 */  addu       $t1, $t0, $t3
/* 60DCC 800601CC 8D2A028C */  lw         $t2, 0x28c($t1)
/* 60DD0 800601D0 314C0800 */  andi       $t4, $t2, 0x800
/* 60DD4 800601D4 1580000E */  bnez       $t4, .L80060210
/* 60DD8 800601D8 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 60DDC 800601DC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 60DE0 800601E0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60DE4 800601E4 240E0023 */  addiu      $t6, $zero, 0x23
/* 60DE8 800601E8 10000009 */  b          .L80060210
/* 60DEC 800601EC AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L800601F0:
/* 60DF0 800601F0 44803000 */  mtc1       $zero, $f6
/* 60DF4 800601F4 3C018014 */  lui        $at, %hi(D_8013F648)
/* 60DF8 800601F8 8FA40028 */  lw         $a0, 0x28($sp)
/* 60DFC 800601FC E426F648 */  swc1       $f6, %lo(D_8013F648)($at)
/* 60E00 80060200 3C018014 */  lui        $at, %hi(D_8013F640)
/* 60E04 80060204 8FA5002C */  lw         $a1, 0x2c($sp)
/* 60E08 80060208 0C017EE9 */  jal        func_8005FBA4
/* 60E0C 8006020C E426F640 */   swc1      $f6, %lo(D_8013F640)($at)
.L80060210:
/* 60E10 80060210 8FBF001C */  lw         $ra, 0x1c($sp)
/* 60E14 80060214 8FB00018 */  lw         $s0, 0x18($sp)
/* 60E18 80060218 27BD0028 */  addiu      $sp, $sp, 0x28
/* 60E1C 8006021C 03E00008 */  jr         $ra
/* 60E20 80060220 00000000 */   nop

glabel func_80060224
/* 60E24 80060224 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60E28 80060228 AFBF0014 */  sw         $ra, 0x14($sp)
/* 60E2C 8006022C AFA40018 */  sw         $a0, 0x18($sp)
/* 60E30 80060230 8FAF0018 */  lw         $t7, 0x18($sp)
/* 60E34 80060234 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 60E38 80060238 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 60E3C 8006023C 000FC080 */  sll        $t8, $t7, 2
/* 60E40 80060240 030FC023 */  subu       $t8, $t8, $t7
/* 60E44 80060244 0018C080 */  sll        $t8, $t8, 2
/* 60E48 80060248 030FC023 */  subu       $t8, $t8, $t7
/* 60E4C 8006024C 0018C080 */  sll        $t8, $t8, 2
/* 60E50 80060250 030FC021 */  addu       $t8, $t8, $t7
/* 60E54 80060254 0018C080 */  sll        $t8, $t8, 2
/* 60E58 80060258 030FC023 */  subu       $t8, $t8, $t7
/* 60E5C 8006025C 0018C080 */  sll        $t8, $t8, 2
/* 60E60 80060260 01D8C821 */  addu       $t9, $t6, $t8
/* 60E64 80060264 8F280058 */  lw         $t0, 0x58($t9)
/* 60E68 80060268 31090004 */  andi       $t1, $t0, 4
/* 60E6C 8006026C 11200003 */  beqz       $t1, .L8006027C
/* 60E70 80060270 00000000 */   nop
/* 60E74 80060274 10000086 */  b          .L80060490
/* 60E78 80060278 00001025 */   or        $v0, $zero, $zero
.L8006027C:
/* 60E7C 8006027C 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 60E80 80060280 C424F66C */  lwc1       $f4, %lo(D_8013F66C)($at)
/* 60E84 80060284 3C014049 */  lui        $at, 0x4049
/* 60E88 80060288 44814800 */  mtc1       $at, $f9
/* 60E8C 8006028C 44804000 */  mtc1       $zero, $f8
/* 60E90 80060290 460021A1 */  cvt.d.s    $f6, $f4
/* 60E94 80060294 4626403C */  c.lt.d     $f8, $f6
/* 60E98 80060298 00000000 */  nop
/* 60E9C 8006029C 4500007B */  bc1f       .L8006048C
/* 60EA0 800602A0 00000000 */   nop
/* 60EA4 800602A4 8FAB0018 */  lw         $t3, 0x18($sp)
/* 60EA8 800602A8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 60EAC 800602AC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 60EB0 800602B0 000B6080 */  sll        $t4, $t3, 2
/* 60EB4 800602B4 018B6023 */  subu       $t4, $t4, $t3
/* 60EB8 800602B8 000C6080 */  sll        $t4, $t4, 2
/* 60EBC 800602BC 018B6023 */  subu       $t4, $t4, $t3
/* 60EC0 800602C0 000C6080 */  sll        $t4, $t4, 2
/* 60EC4 800602C4 018B6021 */  addu       $t4, $t4, $t3
/* 60EC8 800602C8 000C6080 */  sll        $t4, $t4, 2
/* 60ECC 800602CC 018B6023 */  subu       $t4, $t4, $t3
/* 60ED0 800602D0 000C6080 */  sll        $t4, $t4, 2
/* 60ED4 800602D4 014C6821 */  addu       $t5, $t2, $t4
/* 60ED8 800602D8 C5AA00D8 */  lwc1       $f10, 0xd8($t5)
/* 60EDC 800602DC 3C01C044 */  lui        $at, 0xc044
/* 60EE0 800602E0 44819800 */  mtc1       $at, $f19
/* 60EE4 800602E4 44809000 */  mtc1       $zero, $f18
/* 60EE8 800602E8 46005421 */  cvt.d.s    $f16, $f10
/* 60EEC 800602EC 4632803C */  c.lt.d     $f16, $f18
/* 60EF0 800602F0 00000000 */  nop
/* 60EF4 800602F4 4500001B */  bc1f       .L80060364
/* 60EF8 800602F8 00000000 */   nop
/* 60EFC 800602FC 240F001B */  addiu      $t7, $zero, 0x1b
/* 60F00 80060300 3C018014 */  lui        $at, %hi(D_8013F610)
/* 60F04 80060304 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 60F08 80060308 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 60F0C 8006030C 240E0035 */  addiu      $t6, $zero, 0x35
/* 60F10 80060310 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 60F14 80060314 3C018014 */  lui        $at, %hi(D_8013F608)
/* 60F18 80060318 24180005 */  addiu      $t8, $zero, 5
/* 60F1C 8006031C AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 60F20 80060320 44802000 */  mtc1       $zero, $f4
/* 60F24 80060324 3C018014 */  lui        $at, %hi(D_8013F604)
/* 60F28 80060328 24190001 */  addiu      $t9, $zero, 1
/* 60F2C 8006032C AC39F604 */  sw         $t9, %lo(D_8013F604)($at)
/* 60F30 80060330 3C018014 */  lui        $at, %hi(D_8013F658)
/* 60F34 80060334 E424F658 */  swc1       $f4, %lo(D_8013F658)($at)
/* 60F38 80060338 C5A600E4 */  lwc1       $f6, 0xe4($t5)
/* 60F3C 8006033C 3C014059 */  lui        $at, 0x4059
/* 60F40 80060340 44815800 */  mtc1       $at, $f11
/* 60F44 80060344 44805000 */  mtc1       $zero, $f10
/* 60F48 80060348 46003221 */  cvt.d.s    $f8, $f6
/* 60F4C 8006034C 3C018014 */  lui        $at, %hi(D_8013F638)
/* 60F50 80060350 462A4400 */  add.d      $f16, $f8, $f10
/* 60F54 80060354 24020001 */  addiu      $v0, $zero, 1
/* 60F58 80060358 462084A0 */  cvt.s.d    $f18, $f16
/* 60F5C 8006035C 1000004C */  b          .L80060490
/* 60F60 80060360 E432F638 */   swc1      $f18, %lo(D_8013F638)($at)
.L80060364:
/* 60F64 80060364 3C088014 */  lui        $t0, %hi(D_8013F610)
/* 60F68 80060368 8D08F610 */  lw         $t0, %lo(D_8013F610)($t0)
/* 60F6C 8006036C 2401006A */  addiu      $at, $zero, 0x6a
/* 60F70 80060370 11010044 */  beq        $t0, $at, .L80060484
/* 60F74 80060374 24010070 */   addiu     $at, $zero, 0x70
/* 60F78 80060378 11010042 */  beq        $t0, $at, .L80060484
/* 60F7C 8006037C 00000000 */   nop
/* 60F80 80060380 390900AC */  xori       $t1, $t0, 0xac
/* 60F84 80060384 0009482B */  sltu       $t1, $zero, $t1
/* 60F88 80060388 1120003E */  beqz       $t1, .L80060484
/* 60F8C 8006038C 24010028 */   addiu     $at, $zero, 0x28
/* 60F90 80060390 1101003C */  beq        $t0, $at, .L80060484
/* 60F94 80060394 240100AE */   addiu     $at, $zero, 0xae
/* 60F98 80060398 1101003A */  beq        $t0, $at, .L80060484
/* 60F9C 8006039C 2401007B */   addiu     $at, $zero, 0x7b
/* 60FA0 800603A0 11010038 */  beq        $t0, $at, .L80060484
/* 60FA4 800603A4 24010071 */   addiu     $at, $zero, 0x71
/* 60FA8 800603A8 11010036 */  beq        $t0, $at, .L80060484
/* 60FAC 800603AC 00000000 */   nop
/* 60FB0 800603B0 11200034 */  beqz       $t1, .L80060484
/* 60FB4 800603B4 240100AD */   addiu     $at, $zero, 0xad
/* 60FB8 800603B8 11010032 */  beq        $t0, $at, .L80060484
/* 60FBC 800603BC 00000000 */   nop
/* 60FC0 800603C0 8FAA0018 */  lw         $t2, 0x18($sp)
/* 60FC4 800603C4 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 60FC8 800603C8 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 60FCC 800603CC 000A6080 */  sll        $t4, $t2, 2
/* 60FD0 800603D0 018A6023 */  subu       $t4, $t4, $t2
/* 60FD4 800603D4 000C6080 */  sll        $t4, $t4, 2
/* 60FD8 800603D8 018A6023 */  subu       $t4, $t4, $t2
/* 60FDC 800603DC 000C6080 */  sll        $t4, $t4, 2
/* 60FE0 800603E0 018A6021 */  addu       $t4, $t4, $t2
/* 60FE4 800603E4 000C6080 */  sll        $t4, $t4, 2
/* 60FE8 800603E8 018A6023 */  subu       $t4, $t4, $t2
/* 60FEC 800603EC 000C6080 */  sll        $t4, $t4, 2
/* 60FF0 800603F0 016C7821 */  addu       $t7, $t3, $t4
/* 60FF4 800603F4 8DF8013C */  lw         $t8, 0x13c($t7)
/* 60FF8 800603F8 AFB80000 */  sw         $t8, ($sp)
/* 60FFC 800603FC 8DEE0140 */  lw         $t6, 0x140($t7)
/* 61000 80060400 8FA40000 */  lw         $a0, ($sp)
/* 61004 80060404 AFAE0004 */  sw         $t6, 4($sp)
/* 61008 80060408 8DF80144 */  lw         $t8, 0x144($t7)
/* 6100C 8006040C 8FA50004 */  lw         $a1, 4($sp)
/* 61010 80060410 AFB80008 */  sw         $t8, 8($sp)
/* 61014 80060414 0C016903 */  jal        func_8005A40C
/* 61018 80060418 8FA60008 */   lw        $a2, 8($sp)
/* 6101C 8006041C 3C01800E */  lui        $at, %hi(D_800DDE30)
/* 61020 80060420 D426DE30 */  ldc1       $f6, %lo(D_800DDE30)($at)
/* 61024 80060424 46000121 */  cvt.d.s    $f4, $f0
/* 61028 80060428 4626203C */  c.lt.d     $f4, $f6
/* 6102C 8006042C 00000000 */  nop
/* 61030 80060430 45000014 */  bc1f       .L80060484
/* 61034 80060434 3C018014 */   lui       $at, %hi(D_8013F664)
/* 61038 80060438 C428F664 */  lwc1       $f8, %lo(D_8013F664)($at)
/* 6103C 8006043C 3C01435C */  lui        $at, 0x435c
/* 61040 80060440 44815000 */  mtc1       $at, $f10
/* 61044 80060444 00000000 */  nop
/* 61048 80060448 4608503C */  c.lt.s     $f10, $f8
/* 6104C 8006044C 00000000 */  nop
/* 61050 80060450 4500000E */  bc1f       .L8006048C
/* 61054 80060454 00000000 */   nop
/* 61058 80060458 24190071 */  addiu      $t9, $zero, 0x71
/* 6105C 8006045C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61060 80060460 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 61064 80060464 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61068 80060468 240D000C */  addiu      $t5, $zero, 0xc
/* 6106C 8006046C AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 61070 80060470 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61074 80060474 24090001 */  addiu      $t1, $zero, 1
/* 61078 80060478 AC29F608 */  sw         $t1, %lo(D_8013F608)($at)
/* 6107C 8006047C 10000004 */  b          .L80060490
/* 61080 80060480 24020001 */   addiu     $v0, $zero, 1
.L80060484:
/* 61084 80060484 10000002 */  b          .L80060490
/* 61088 80060488 00001025 */   or        $v0, $zero, $zero
.L8006048C:
/* 6108C 8006048C 00001025 */  or         $v0, $zero, $zero
.L80060490:
/* 61090 80060490 8FBF0014 */  lw         $ra, 0x14($sp)
/* 61094 80060494 27BD0018 */  addiu      $sp, $sp, 0x18
/* 61098 80060498 03E00008 */  jr         $ra
/* 6109C 8006049C 00000000 */   nop

glabel func_800604A0
/* 610A0 800604A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 610A4 800604A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 610A8 800604A8 AFA40028 */  sw         $a0, 0x28($sp)
/* 610AC 800604AC AFA5002C */  sw         $a1, 0x2c($sp)
/* 610B0 800604B0 AFB00018 */  sw         $s0, 0x18($sp)
/* 610B4 800604B4 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 610B8 800604B8 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 610BC 800604BC 240100D0 */  addiu      $at, $zero, 0xd0
/* 610C0 800604C0 15C10008 */  bne        $t6, $at, .L800604E4
/* 610C4 800604C4 00000000 */   nop
/* 610C8 800604C8 240F0098 */  addiu      $t7, $zero, 0x98
/* 610CC 800604CC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 610D0 800604D0 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 610D4 800604D4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 610D8 800604D8 24180001 */  addiu      $t8, $zero, 1
/* 610DC 800604DC 1000006A */  b          .L80060688
/* 610E0 800604E0 AC38F61C */   sw        $t8, %lo(D_8013F61C)($at)
.L800604E4:
/* 610E4 800604E4 8FB90028 */  lw         $t9, 0x28($sp)
/* 610E8 800604E8 8F280000 */  lw         $t0, ($t9)
/* 610EC 800604EC 31090001 */  andi       $t1, $t0, 1
/* 610F0 800604F0 1520001B */  bnez       $t1, .L80060560
/* 610F4 800604F4 00000000 */   nop
/* 610F8 800604F8 3C0A8014 */  lui        $t2, %hi(D_8013F610)
/* 610FC 800604FC 8D4AF610 */  lw         $t2, %lo(D_8013F610)($t2)
/* 61100 80060500 2401009A */  addiu      $at, $zero, 0x9a
/* 61104 80060504 15410011 */  bne        $t2, $at, .L8006054C
/* 61108 80060508 00000000 */   nop
/* 6110C 8006050C 240B001B */  addiu      $t3, $zero, 0x1b
/* 61110 80060510 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61114 80060514 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 61118 80060518 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6111C 8006051C 240C0035 */  addiu      $t4, $zero, 0x35
/* 61120 80060520 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 61124 80060524 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61128 80060528 240D0005 */  addiu      $t5, $zero, 5
/* 6112C 8006052C AC2DF608 */  sw         $t5, %lo(D_8013F608)($at)
/* 61130 80060530 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61134 80060534 240E0001 */  addiu      $t6, $zero, 1
/* 61138 80060538 44802000 */  mtc1       $zero, $f4
/* 6113C 8006053C AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 61140 80060540 3C018014 */  lui        $at, %hi(D_8013F658)
/* 61144 80060544 10000050 */  b          .L80060688
/* 61148 80060548 E424F658 */   swc1      $f4, %lo(D_8013F658)($at)
.L8006054C:
/* 6114C 8006054C 8FA40028 */  lw         $a0, 0x28($sp)
/* 61150 80060550 0C017EE9 */  jal        func_8005FBA4
/* 61154 80060554 8FA5002C */   lw        $a1, 0x2c($sp)
/* 61158 80060558 1000004B */  b          .L80060688
/* 6115C 8006055C 00000000 */   nop
.L80060560:
/* 61160 80060560 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 61164 80060564 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 61168 80060568 2401001B */  addiu      $at, $zero, 0x1b
/* 6116C 8006056C 12010007 */  beq        $s0, $at, .L8006058C
/* 61170 80060570 24010022 */   addiu     $at, $zero, 0x22
/* 61174 80060574 12010012 */  beq        $s0, $at, .L800605C0
/* 61178 80060578 2401009A */   addiu     $at, $zero, 0x9a
/* 6117C 8006057C 1201001D */  beq        $s0, $at, .L800605F4
/* 61180 80060580 00000000 */   nop
/* 61184 80060584 1000003D */  b          .L8006067C
/* 61188 80060588 00000000 */   nop
.L8006058C:
/* 6118C 8006058C 240F0001 */  addiu      $t7, $zero, 1
/* 61190 80060590 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61194 80060594 AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 61198 80060598 3C018014 */  lui        $at, %hi(D_8013F608)
/* 6119C 8006059C 24180002 */  addiu      $t8, $zero, 2
/* 611A0 800605A0 AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 611A4 800605A4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 611A8 800605A8 24190034 */  addiu      $t9, $zero, 0x34
/* 611AC 800605AC AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 611B0 800605B0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 611B4 800605B4 24080098 */  addiu      $t0, $zero, 0x98
/* 611B8 800605B8 10000033 */  b          .L80060688
/* 611BC 800605BC AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L800605C0:
/* 611C0 800605C0 24090098 */  addiu      $t1, $zero, 0x98
/* 611C4 800605C4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 611C8 800605C8 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 611CC 800605CC 3C018014 */  lui        $at, %hi(D_8013F608)
/* 611D0 800605D0 240A0002 */  addiu      $t2, $zero, 2
/* 611D4 800605D4 AC2AF608 */  sw         $t2, %lo(D_8013F608)($at)
/* 611D8 800605D8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 611DC 800605DC 240B0034 */  addiu      $t3, $zero, 0x34
/* 611E0 800605E0 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 611E4 800605E4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 611E8 800605E8 240C0001 */  addiu      $t4, $zero, 1
/* 611EC 800605EC 10000026 */  b          .L80060688
/* 611F0 800605F0 AC2CF61C */   sw        $t4, %lo(D_8013F61C)($at)
.L800605F4:
/* 611F4 800605F4 8FAD0028 */  lw         $t5, 0x28($sp)
/* 611F8 800605F8 8DAE0000 */  lw         $t6, ($t5)
/* 611FC 800605FC 31CF0001 */  andi       $t7, $t6, 1
/* 61200 80060600 11E0000E */  beqz       $t7, .L8006063C
/* 61204 80060604 00000000 */   nop
/* 61208 80060608 24180001 */  addiu      $t8, $zero, 1
/* 6120C 8006060C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61210 80060610 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 61214 80060614 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61218 80060618 24190002 */  addiu      $t9, $zero, 2
/* 6121C 8006061C AC39F608 */  sw         $t9, %lo(D_8013F608)($at)
/* 61220 80060620 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61224 80060624 24080034 */  addiu      $t0, $zero, 0x34
/* 61228 80060628 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 6122C 8006062C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61230 80060630 24090098 */  addiu      $t1, $zero, 0x98
/* 61234 80060634 10000014 */  b          .L80060688
/* 61238 80060638 AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
.L8006063C:
/* 6123C 8006063C 240A001B */  addiu      $t2, $zero, 0x1b
/* 61240 80060640 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61244 80060644 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 61248 80060648 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6124C 8006064C 240B0035 */  addiu      $t3, $zero, 0x35
/* 61250 80060650 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 61254 80060654 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61258 80060658 240C0005 */  addiu      $t4, $zero, 5
/* 6125C 8006065C AC2CF608 */  sw         $t4, %lo(D_8013F608)($at)
/* 61260 80060660 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61264 80060664 240D0001 */  addiu      $t5, $zero, 1
/* 61268 80060668 44803000 */  mtc1       $zero, $f6
/* 6126C 8006066C AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 61270 80060670 3C018014 */  lui        $at, %hi(D_8013F658)
/* 61274 80060674 10000004 */  b          .L80060688
/* 61278 80060678 E426F658 */   swc1      $f6, %lo(D_8013F658)($at)
.L8006067C:
/* 6127C 8006067C 8FA40028 */  lw         $a0, 0x28($sp)
/* 61280 80060680 0C017F30 */  jal        func_8005FCC0
/* 61284 80060684 8FA5002C */   lw        $a1, 0x2c($sp)
.L80060688:
/* 61288 80060688 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6128C 8006068C 8FB00018 */  lw         $s0, 0x18($sp)
/* 61290 80060690 27BD0028 */  addiu      $sp, $sp, 0x28
/* 61294 80060694 03E00008 */  jr         $ra
/* 61298 80060698 00000000 */   nop

glabel func_8006069C
/* 6129C 8006069C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 612A0 800606A0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 612A4 800606A4 AFA40030 */  sw         $a0, 0x30($sp)
/* 612A8 800606A8 AFA50034 */  sw         $a1, 0x34($sp)
/* 612AC 800606AC AFB00020 */  sw         $s0, 0x20($sp)
/* 612B0 800606B0 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 612B4 800606B4 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 612B8 800606B8 2401002A */  addiu      $at, $zero, 0x2a
/* 612BC 800606BC 15C10009 */  bne        $t6, $at, .L800606E4
/* 612C0 800606C0 00000000 */   nop
/* 612C4 800606C4 0C018089 */  jal        func_80060224
/* 612C8 800606C8 8FA40034 */   lw        $a0, 0x34($sp)
/* 612CC 800606CC 10400005 */  beqz       $v0, .L800606E4
/* 612D0 800606D0 00000000 */   nop
/* 612D4 800606D4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 612D8 800606D8 00001025 */  or         $v0, $zero, $zero
/* 612DC 800606DC 10000283 */  b          .L800610EC
/* 612E0 800606E0 ADE00000 */   sw        $zero, ($t7)
.L800606E4:
/* 612E4 800606E4 8FB80030 */  lw         $t8, 0x30($sp)
/* 612E8 800606E8 8F190000 */  lw         $t9, ($t8)
/* 612EC 800606EC 33280001 */  andi       $t0, $t9, 1
/* 612F0 800606F0 1100021A */  beqz       $t0, .L80060F5C
/* 612F4 800606F4 00000000 */   nop
/* 612F8 800606F8 3C098014 */  lui        $t1, %hi(D_8013F608)
/* 612FC 800606FC 8D29F608 */  lw         $t1, %lo(D_8013F608)($t1)
/* 61300 80060700 24010002 */  addiu      $at, $zero, 2
/* 61304 80060704 152101B6 */  bne        $t1, $at, .L80060DE0
/* 61308 80060708 00000000 */   nop
/* 6130C 8006070C 3C108014 */  lui        $s0, %hi(D_8013F60C)
/* 61310 80060710 8E10F60C */  lw         $s0, %lo(D_8013F60C)($s0)
/* 61314 80060714 24010015 */  addiu      $at, $zero, 0x15
/* 61318 80060718 1201000C */  beq        $s0, $at, .L8006074C
/* 6131C 8006071C 24010018 */   addiu     $at, $zero, 0x18
/* 61320 80060720 12010028 */  beq        $s0, $at, .L800607C4
/* 61324 80060724 24010019 */   addiu     $at, $zero, 0x19
/* 61328 80060728 12010071 */  beq        $s0, $at, .L800608F0
/* 6132C 8006072C 24010034 */   addiu     $at, $zero, 0x34
/* 61330 80060730 160101A9 */  bne        $s0, $at, .L80060DD8
/* 61334 80060734 00000000 */   nop
/* 61338 80060738 8FA40030 */  lw         $a0, 0x30($sp)
/* 6133C 8006073C 0C018128 */  jal        func_800604A0
/* 61340 80060740 8FA50034 */   lw        $a1, 0x34($sp)
/* 61344 80060744 100001A4 */  b          .L80060DD8
/* 61348 80060748 00000000 */   nop
.L8006074C:
/* 6134C 8006074C 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 61350 80060750 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 61354 80060754 240100AB */  addiu      $at, $zero, 0xab
/* 61358 80060758 12010005 */  beq        $s0, $at, .L80060770
/* 6135C 8006075C 240100B3 */   addiu     $at, $zero, 0xb3
/* 61360 80060760 1201000B */  beq        $s0, $at, .L80060790
/* 61364 80060764 00000000 */   nop
/* 61368 80060768 10000011 */  b          .L800607B0
/* 6136C 8006076C 00000000 */   nop
.L80060770:
/* 61370 80060770 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61374 80060774 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61378 80060778 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6137C 8006077C 240A00B6 */  addiu      $t2, $zero, 0xb6
/* 61380 80060780 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 61384 80060784 3C018014 */  lui        $at, %hi(D_8013F614)
/* 61388 80060788 10000193 */  b          .L80060DD8
/* 6138C 8006078C AC20F614 */   sw        $zero, %lo(D_8013F614)($at)
.L80060790:
/* 61390 80060790 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61394 80060794 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61398 80060798 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6139C 8006079C 240B00B5 */  addiu      $t3, $zero, 0xb5
/* 613A0 800607A0 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 613A4 800607A4 3C018014 */  lui        $at, %hi(D_8013F614)
/* 613A8 800607A8 1000018B */  b          .L80060DD8
/* 613AC 800607AC AC20F614 */   sw        $zero, %lo(D_8013F614)($at)
.L800607B0:
/* 613B0 800607B0 8FA40030 */  lw         $a0, 0x30($sp)
/* 613B4 800607B4 0C018440 */  jal        func_80061100
/* 613B8 800607B8 8FA50034 */   lw        $a1, 0x34($sp)
/* 613BC 800607BC 10000186 */  b          .L80060DD8
/* 613C0 800607C0 00000000 */   nop
.L800607C4:
/* 613C4 800607C4 8FAC0030 */  lw         $t4, 0x30($sp)
/* 613C8 800607C8 8D8D0000 */  lw         $t5, ($t4)
/* 613CC 800607CC 31AE1000 */  andi       $t6, $t5, 0x1000
/* 613D0 800607D0 15C00004 */  bnez       $t6, .L800607E4
/* 613D4 800607D4 00000000 */   nop
/* 613D8 800607D8 31AF2000 */  andi       $t7, $t5, 0x2000
/* 613DC 800607DC 11E00034 */  beqz       $t7, .L800608B0
/* 613E0 800607E0 00000000 */   nop
.L800607E4:
/* 613E4 800607E4 8FB80030 */  lw         $t8, 0x30($sp)
/* 613E8 800607E8 8F190000 */  lw         $t9, ($t8)
/* 613EC 800607EC 33281000 */  andi       $t0, $t9, 0x1000
/* 613F0 800607F0 11000016 */  beqz       $t0, .L8006084C
/* 613F4 800607F4 00000000 */   nop
/* 613F8 800607F8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 613FC 800607FC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 61400 80060800 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 61404 80060804 000A5880 */  sll        $t3, $t2, 2
/* 61408 80060808 016A5823 */  subu       $t3, $t3, $t2
/* 6140C 8006080C 000B5880 */  sll        $t3, $t3, 2
/* 61410 80060810 016A5823 */  subu       $t3, $t3, $t2
/* 61414 80060814 000B5880 */  sll        $t3, $t3, 2
/* 61418 80060818 016A5821 */  addu       $t3, $t3, $t2
/* 6141C 8006081C 000B5880 */  sll        $t3, $t3, 2
/* 61420 80060820 016A5823 */  subu       $t3, $t3, $t2
/* 61424 80060824 000B5880 */  sll        $t3, $t3, 2
/* 61428 80060828 012B6021 */  addu       $t4, $t1, $t3
/* 6142C 8006082C C5840034 */  lwc1       $f4, 0x34($t4)
/* 61430 80060830 44804800 */  mtc1       $zero, $f9
/* 61434 80060834 44804000 */  mtc1       $zero, $f8
/* 61438 80060838 460021A1 */  cvt.d.s    $f6, $f4
/* 6143C 8006083C 4628303E */  c.le.d     $f6, $f8
/* 61440 80060840 00000000 */  nop
/* 61444 80060844 4501001A */  bc1t       .L800608B0
/* 61448 80060848 00000000 */   nop
.L8006084C:
/* 6144C 8006084C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 61450 80060850 8DCD0000 */  lw         $t5, ($t6)
/* 61454 80060854 31AF2000 */  andi       $t7, $t5, 0x2000
/* 61458 80060858 11E0015F */  beqz       $t7, .L80060DD8
/* 6145C 8006085C 00000000 */   nop
/* 61460 80060860 8FB90034 */  lw         $t9, 0x34($sp)
/* 61464 80060864 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 61468 80060868 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 6146C 8006086C 00194080 */  sll        $t0, $t9, 2
/* 61470 80060870 01194023 */  subu       $t0, $t0, $t9
/* 61474 80060874 00084080 */  sll        $t0, $t0, 2
/* 61478 80060878 01194023 */  subu       $t0, $t0, $t9
/* 6147C 8006087C 00084080 */  sll        $t0, $t0, 2
/* 61480 80060880 01194021 */  addu       $t0, $t0, $t9
/* 61484 80060884 00084080 */  sll        $t0, $t0, 2
/* 61488 80060888 01194023 */  subu       $t0, $t0, $t9
/* 6148C 8006088C 00084080 */  sll        $t0, $t0, 2
/* 61490 80060890 03085021 */  addu       $t2, $t8, $t0
/* 61494 80060894 C54A0038 */  lwc1       $f10, 0x38($t2)
/* 61498 80060898 44809800 */  mtc1       $zero, $f19
/* 6149C 8006089C 44809000 */  mtc1       $zero, $f18
/* 614A0 800608A0 46005421 */  cvt.d.s    $f16, $f10
/* 614A4 800608A4 4632803E */  c.le.d     $f16, $f18
/* 614A8 800608A8 00000000 */  nop
/* 614AC 800608AC 4500014A */  bc1f       .L80060DD8
.L800608B0:
/* 614B0 800608B0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 614B4 800608B4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 614B8 800608B8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 614BC 800608BC 24090019 */  addiu      $t1, $zero, 0x19
/* 614C0 800608C0 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 614C4 800608C4 44802000 */  mtc1       $zero, $f4
/* 614C8 800608C8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 614CC 800608CC 240B0019 */  addiu      $t3, $zero, 0x19
/* 614D0 800608D0 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 614D4 800608D4 3C018014 */  lui        $at, %hi(D_8013F648)
/* 614D8 800608D8 E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 614DC 800608DC 3C018014 */  lui        $at, %hi(D_8013F644)
/* 614E0 800608E0 E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
/* 614E4 800608E4 3C018014 */  lui        $at, %hi(D_8013F640)
/* 614E8 800608E8 1000013B */  b          .L80060DD8
/* 614EC 800608EC E424F640 */   swc1      $f4, %lo(D_8013F640)($at)
.L800608F0:
/* 614F0 800608F0 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 614F4 800608F4 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 614F8 800608F8 2A01002B */  slti       $at, $s0, 0x2b
/* 614FC 800608FC 1420001A */  bnez       $at, .L80060968
/* 61500 80060900 2A0100B8 */   slti      $at, $s0, 0xb8
/* 61504 80060904 14200007 */  bnez       $at, .L80060924
/* 61508 80060908 240100B8 */   addiu     $at, $zero, 0xb8
/* 6150C 8006090C 1201003B */  beq        $s0, $at, .L800609FC
/* 61510 80060910 240100BD */   addiu     $at, $zero, 0xbd
/* 61514 80060914 12010044 */  beq        $s0, $at, .L80060A28
/* 61518 80060918 00000000 */   nop
/* 6151C 8006091C 1000012E */  b          .L80060DD8
/* 61520 80060920 00000000 */   nop
.L80060924:
/* 61524 80060924 2A010082 */  slti       $at, $s0, 0x82
/* 61528 80060928 14200005 */  bnez       $at, .L80060940
/* 6152C 8006092C 240100B7 */   addiu     $at, $zero, 0xb7
/* 61530 80060930 12010032 */  beq        $s0, $at, .L800609FC
/* 61534 80060934 00000000 */   nop
/* 61538 80060938 10000127 */  b          .L80060DD8
/* 6153C 8006093C 00000000 */   nop
.L80060940:
/* 61540 80060940 260CFF9B */  addiu      $t4, $s0, -0x65
/* 61544 80060944 2D81001D */  sltiu      $at, $t4, 0x1d
/* 61548 80060948 10200123 */  beqz       $at, .L80060DD8
/* 6154C 8006094C 00000000 */   nop
/* 61550 80060950 000C6080 */  sll        $t4, $t4, 2
/* 61554 80060954 3C01800E */  lui        $at, %hi(D_800DDE38)
/* 61558 80060958 002C0821 */  addu       $at, $at, $t4
/* 6155C 8006095C 8C2CDE38 */  lw         $t4, %lo(D_800DDE38)($at)
/* 61560 80060960 01800008 */  jr         $t4
/* 61564 80060964 00000000 */   nop
.L80060968:
/* 61568 80060968 24010013 */  addiu      $at, $zero, 0x13
/* 6156C 8006096C 12010057 */  beq        $s0, $at, .L80060ACC
/* 61570 80060970 24010019 */   addiu     $at, $zero, 0x19
/* 61574 80060974 120100D5 */  beq        $s0, $at, .L80060CCC
/* 61578 80060978 24010029 */   addiu     $at, $zero, 0x29
/* 6157C 8006097C 12010046 */  beq        $s0, $at, .L80060A98
/* 61580 80060980 2401002A */   addiu     $at, $zero, 0x2a
/* 61584 80060984 1201001D */  beq        $s0, $at, .L800609FC
/* 61588 80060988 00000000 */   nop
/* 6158C 8006098C 10000112 */  b          .L80060DD8
/* 61590 80060990 00000000 */   nop
/* 61594 80060994 8FAE0030 */  lw         $t6, 0x30($sp)
/* 61598 80060998 8DCD0000 */  lw         $t5, ($t6)
/* 6159C 8006099C 31AF0800 */  andi       $t7, $t5, 0x800
/* 615A0 800609A0 11E00008 */  beqz       $t7, .L800609C4
/* 615A4 800609A4 00000000 */   nop
/* 615A8 800609A8 24190001 */  addiu      $t9, $zero, 1
/* 615AC 800609AC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 615B0 800609B0 AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 615B4 800609B4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 615B8 800609B8 24180066 */  addiu      $t8, $zero, 0x66
/* 615BC 800609BC 10000106 */  b          .L80060DD8
/* 615C0 800609C0 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L800609C4:
/* 615C4 800609C4 24080001 */  addiu      $t0, $zero, 1
/* 615C8 800609C8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 615CC 800609CC AC28F61C */  sw         $t0, %lo(D_8013F61C)($at)
/* 615D0 800609D0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 615D4 800609D4 240A0067 */  addiu      $t2, $zero, 0x67
/* 615D8 800609D8 100000FF */  b          .L80060DD8
/* 615DC 800609DC AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
/* 615E0 800609E0 24090001 */  addiu      $t1, $zero, 1
/* 615E4 800609E4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 615E8 800609E8 AC29F61C */  sw         $t1, %lo(D_8013F61C)($at)
/* 615EC 800609EC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 615F0 800609F0 240B002A */  addiu      $t3, $zero, 0x2a
/* 615F4 800609F4 100000F8 */  b          .L80060DD8
/* 615F8 800609F8 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L800609FC:
/* 615FC 800609FC 240C002A */  addiu      $t4, $zero, 0x2a
/* 61600 80060A00 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61604 80060A04 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 61608 80060A08 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6160C 80060A0C 240E0001 */  addiu      $t6, $zero, 1
/* 61610 80060A10 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 61614 80060A14 8FA40030 */  lw         $a0, 0x30($sp)
/* 61618 80060A18 0C018440 */  jal        func_80061100
/* 6161C 80060A1C 8FA50034 */   lw        $a1, 0x34($sp)
/* 61620 80060A20 100000ED */  b          .L80060DD8
/* 61624 80060A24 00000000 */   nop
.L80060A28:
/* 61628 80060A28 8FAD0030 */  lw         $t5, 0x30($sp)
/* 6162C 80060A2C 8DAF0000 */  lw         $t7, ($t5)
/* 61630 80060A30 31F91000 */  andi       $t9, $t7, 0x1000
/* 61634 80060A34 17200008 */  bnez       $t9, .L80060A58
/* 61638 80060A38 00000000 */   nop
/* 6163C 80060A3C 24180001 */  addiu      $t8, $zero, 1
/* 61640 80060A40 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61644 80060A44 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 61648 80060A48 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6164C 80060A4C 2408002A */  addiu      $t0, $zero, 0x2a
/* 61650 80060A50 100000E1 */  b          .L80060DD8
/* 61654 80060A54 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L80060A58:
/* 61658 80060A58 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6165C 80060A5C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61660 80060A60 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61664 80060A64 240A0018 */  addiu      $t2, $zero, 0x18
/* 61668 80060A68 AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 6166C 80060A6C 44803000 */  mtc1       $zero, $f6
/* 61670 80060A70 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61674 80060A74 24090059 */  addiu      $t1, $zero, 0x59
/* 61678 80060A78 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 6167C 80060A7C 3C018014 */  lui        $at, %hi(D_8013F648)
/* 61680 80060A80 E426F648 */  swc1       $f6, %lo(D_8013F648)($at)
/* 61684 80060A84 3C018014 */  lui        $at, %hi(D_8013F644)
/* 61688 80060A88 E426F644 */  swc1       $f6, %lo(D_8013F644)($at)
/* 6168C 80060A8C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 61690 80060A90 100000D1 */  b          .L80060DD8
/* 61694 80060A94 E426F640 */   swc1      $f6, %lo(D_8013F640)($at)
.L80060A98:
/* 61698 80060A98 240B0019 */  addiu      $t3, $zero, 0x19
/* 6169C 80060A9C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 616A0 80060AA0 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 616A4 80060AA4 3C018014 */  lui        $at, %hi(D_8013F608)
/* 616A8 80060AA8 240C0002 */  addiu      $t4, $zero, 2
/* 616AC 80060AAC AC2CF608 */  sw         $t4, %lo(D_8013F608)($at)
/* 616B0 80060AB0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 616B4 80060AB4 240E0001 */  addiu      $t6, $zero, 1
/* 616B8 80060AB8 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 616BC 80060ABC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 616C0 80060AC0 240D002A */  addiu      $t5, $zero, 0x2a
/* 616C4 80060AC4 100000C4 */  b          .L80060DD8
/* 616C8 80060AC8 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80060ACC:
/* 616CC 80060ACC 8FA40030 */  lw         $a0, 0x30($sp)
/* 616D0 80060AD0 0C0177C0 */  jal        func_8005DF00
/* 616D4 80060AD4 8FA50034 */   lw        $a1, 0x34($sp)
/* 616D8 80060AD8 8FAF0030 */  lw         $t7, 0x30($sp)
/* 616DC 80060ADC 8DF90000 */  lw         $t9, ($t7)
/* 616E0 80060AE0 33381000 */  andi       $t8, $t9, 0x1000
/* 616E4 80060AE4 13000016 */  beqz       $t8, .L80060B40
/* 616E8 80060AE8 00000000 */   nop
/* 616EC 80060AEC 8FAA0034 */  lw         $t2, 0x34($sp)
/* 616F0 80060AF0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 616F4 80060AF4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 616F8 80060AF8 000A4880 */  sll        $t1, $t2, 2
/* 616FC 80060AFC 012A4823 */  subu       $t1, $t1, $t2
/* 61700 80060B00 00094880 */  sll        $t1, $t1, 2
/* 61704 80060B04 012A4823 */  subu       $t1, $t1, $t2
/* 61708 80060B08 00094880 */  sll        $t1, $t1, 2
/* 6170C 80060B0C 012A4821 */  addu       $t1, $t1, $t2
/* 61710 80060B10 00094880 */  sll        $t1, $t1, 2
/* 61714 80060B14 012A4823 */  subu       $t1, $t1, $t2
/* 61718 80060B18 00094880 */  sll        $t1, $t1, 2
/* 6171C 80060B1C 01095821 */  addu       $t3, $t0, $t1
/* 61720 80060B20 C5680034 */  lwc1       $f8, 0x34($t3)
/* 61724 80060B24 44808800 */  mtc1       $zero, $f17
/* 61728 80060B28 44808000 */  mtc1       $zero, $f16
/* 6172C 80060B2C 460042A1 */  cvt.d.s    $f10, $f8
/* 61730 80060B30 462A803C */  c.lt.d     $f16, $f10
/* 61734 80060B34 00000000 */  nop
/* 61738 80060B38 4501001B */  bc1t       .L80060BA8
/* 6173C 80060B3C 00000000 */   nop
.L80060B40:
/* 61740 80060B40 8FAC0030 */  lw         $t4, 0x30($sp)
/* 61744 80060B44 8D8E0000 */  lw         $t6, ($t4)
/* 61748 80060B48 31CD2000 */  andi       $t5, $t6, 0x2000
/* 6174C 80060B4C 11A00059 */  beqz       $t5, .L80060CB4
/* 61750 80060B50 00000000 */   nop
/* 61754 80060B54 8FB90034 */  lw         $t9, 0x34($sp)
/* 61758 80060B58 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 6175C 80060B5C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 61760 80060B60 0019C080 */  sll        $t8, $t9, 2
/* 61764 80060B64 0319C023 */  subu       $t8, $t8, $t9
/* 61768 80060B68 0018C080 */  sll        $t8, $t8, 2
/* 6176C 80060B6C 0319C023 */  subu       $t8, $t8, $t9
/* 61770 80060B70 0018C080 */  sll        $t8, $t8, 2
/* 61774 80060B74 0319C021 */  addu       $t8, $t8, $t9
/* 61778 80060B78 0018C080 */  sll        $t8, $t8, 2
/* 6177C 80060B7C 0319C023 */  subu       $t8, $t8, $t9
/* 61780 80060B80 0018C080 */  sll        $t8, $t8, 2
/* 61784 80060B84 01F85021 */  addu       $t2, $t7, $t8
/* 61788 80060B88 C5520038 */  lwc1       $f18, 0x38($t2)
/* 6178C 80060B8C 44803800 */  mtc1       $zero, $f7
/* 61790 80060B90 44803000 */  mtc1       $zero, $f6
/* 61794 80060B94 46009121 */  cvt.d.s    $f4, $f18
/* 61798 80060B98 4624303C */  c.lt.d     $f6, $f4
/* 6179C 80060B9C 00000000 */  nop
/* 617A0 80060BA0 45000044 */  bc1f       .L80060CB4
/* 617A4 80060BA4 00000000 */   nop
.L80060BA8:
/* 617A8 80060BA8 8FA90034 */  lw         $t1, 0x34($sp)
/* 617AC 80060BAC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 617B0 80060BB0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 617B4 80060BB4 00095880 */  sll        $t3, $t1, 2
/* 617B8 80060BB8 01695823 */  subu       $t3, $t3, $t1
/* 617BC 80060BBC 000B5880 */  sll        $t3, $t3, 2
/* 617C0 80060BC0 01695823 */  subu       $t3, $t3, $t1
/* 617C4 80060BC4 000B5880 */  sll        $t3, $t3, 2
/* 617C8 80060BC8 01695821 */  addu       $t3, $t3, $t1
/* 617CC 80060BCC 000B5880 */  sll        $t3, $t3, 2
/* 617D0 80060BD0 01695823 */  subu       $t3, $t3, $t1
/* 617D4 80060BD4 000B5880 */  sll        $t3, $t3, 2
/* 617D8 80060BD8 010B6021 */  addu       $t4, $t0, $t3
/* 617DC 80060BDC 8D8E0074 */  lw         $t6, 0x74($t4)
/* 617E0 80060BE0 3C19800D */  lui        $t9, %hi(D_800D72F0)
/* 617E4 80060BE4 000E6900 */  sll        $t5, $t6, 4
/* 617E8 80060BE8 01AE6823 */  subu       $t5, $t5, $t6
/* 617EC 80060BEC 000D6880 */  sll        $t5, $t5, 2
/* 617F0 80060BF0 032DC821 */  addu       $t9, $t9, $t5
/* 617F4 80060BF4 8F3972F0 */  lw         $t9, %lo(D_800D72F0)($t9)
/* 617F8 80060BF8 332F0008 */  andi       $t7, $t9, 8
/* 617FC 80060BFC 15E0001C */  bnez       $t7, .L80060C70
/* 61800 80060C00 00000000 */   nop
/* 61804 80060C04 0C055A40 */  jal        func_80156900
/* 61808 80060C08 01202025 */   or        $a0, $t1, $zero
/* 6180C 80060C0C 10400012 */  beqz       $v0, .L80060C58
/* 61810 80060C10 00000000 */   nop
/* 61814 80060C14 24180059 */  addiu      $t8, $zero, 0x59
/* 61818 80060C18 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6181C 80060C1C AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 61820 80060C20 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61824 80060C24 240A0001 */  addiu      $t2, $zero, 1
/* 61828 80060C28 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 6182C 80060C2C 44804000 */  mtc1       $zero, $f8
/* 61830 80060C30 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61834 80060C34 24080018 */  addiu      $t0, $zero, 0x18
/* 61838 80060C38 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 6183C 80060C3C 3C018014 */  lui        $at, %hi(D_8013F648)
/* 61840 80060C40 E428F648 */  swc1       $f8, %lo(D_8013F648)($at)
/* 61844 80060C44 3C018014 */  lui        $at, %hi(D_8013F644)
/* 61848 80060C48 E428F644 */  swc1       $f8, %lo(D_8013F644)($at)
/* 6184C 80060C4C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 61850 80060C50 10000061 */  b          .L80060DD8
/* 61854 80060C54 E428F640 */   swc1      $f8, %lo(D_8013F640)($at)
.L80060C58:
/* 61858 80060C58 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6185C 80060C5C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61860 80060C60 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61864 80060C64 240B0019 */  addiu      $t3, $zero, 0x19
/* 61868 80060C68 1000005B */  b          .L80060DD8
/* 6186C 80060C6C AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L80060C70:
/* 61870 80060C70 240C0059 */  addiu      $t4, $zero, 0x59
/* 61874 80060C74 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61878 80060C78 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 6187C 80060C7C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61880 80060C80 240E0001 */  addiu      $t6, $zero, 1
/* 61884 80060C84 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 61888 80060C88 44805000 */  mtc1       $zero, $f10
/* 6188C 80060C8C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61890 80060C90 240D0018 */  addiu      $t5, $zero, 0x18
/* 61894 80060C94 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 61898 80060C98 3C018014 */  lui        $at, %hi(D_8013F648)
/* 6189C 80060C9C E42AF648 */  swc1       $f10, %lo(D_8013F648)($at)
/* 618A0 80060CA0 3C018014 */  lui        $at, %hi(D_8013F644)
/* 618A4 80060CA4 E42AF644 */  swc1       $f10, %lo(D_8013F644)($at)
/* 618A8 80060CA8 3C018014 */  lui        $at, %hi(D_8013F640)
/* 618AC 80060CAC 1000004A */  b          .L80060DD8
/* 618B0 80060CB0 E42AF640 */   swc1      $f10, %lo(D_8013F640)($at)
.L80060CB4:
/* 618B4 80060CB4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 618B8 80060CB8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 618BC 80060CBC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 618C0 80060CC0 24190019 */  addiu      $t9, $zero, 0x19
/* 618C4 80060CC4 10000044 */  b          .L80060DD8
/* 618C8 80060CC8 AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
.L80060CCC:
/* 618CC 80060CCC 8FA40030 */  lw         $a0, 0x30($sp)
/* 618D0 80060CD0 0C0177C0 */  jal        func_8005DF00
/* 618D4 80060CD4 8FA50034 */   lw        $a1, 0x34($sp)
/* 618D8 80060CD8 8FAF0030 */  lw         $t7, 0x30($sp)
/* 618DC 80060CDC 8DE90000 */  lw         $t1, ($t7)
/* 618E0 80060CE0 31381000 */  andi       $t8, $t1, 0x1000
/* 618E4 80060CE4 13000016 */  beqz       $t8, .L80060D40
/* 618E8 80060CE8 00000000 */   nop
/* 618EC 80060CEC 8FA80034 */  lw         $t0, 0x34($sp)
/* 618F0 80060CF0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 618F4 80060CF4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 618F8 80060CF8 00085880 */  sll        $t3, $t0, 2
/* 618FC 80060CFC 01685823 */  subu       $t3, $t3, $t0
/* 61900 80060D00 000B5880 */  sll        $t3, $t3, 2
/* 61904 80060D04 01685823 */  subu       $t3, $t3, $t0
/* 61908 80060D08 000B5880 */  sll        $t3, $t3, 2
/* 6190C 80060D0C 01685821 */  addu       $t3, $t3, $t0
/* 61910 80060D10 000B5880 */  sll        $t3, $t3, 2
/* 61914 80060D14 01685823 */  subu       $t3, $t3, $t0
/* 61918 80060D18 000B5880 */  sll        $t3, $t3, 2
/* 6191C 80060D1C 014B6021 */  addu       $t4, $t2, $t3
/* 61920 80060D20 C5900034 */  lwc1       $f16, 0x34($t4)
/* 61924 80060D24 44802800 */  mtc1       $zero, $f5
/* 61928 80060D28 44802000 */  mtc1       $zero, $f4
/* 6192C 80060D2C 460084A1 */  cvt.d.s    $f18, $f16
/* 61930 80060D30 4632203E */  c.le.d     $f4, $f18
/* 61934 80060D34 00000000 */  nop
/* 61938 80060D38 4501001B */  bc1t       .L80060DA8
/* 6193C 80060D3C 00000000 */   nop
.L80060D40:
/* 61940 80060D40 8FAE0030 */  lw         $t6, 0x30($sp)
/* 61944 80060D44 8DCD0000 */  lw         $t5, ($t6)
/* 61948 80060D48 31B92000 */  andi       $t9, $t5, 0x2000
/* 6194C 80060D4C 1320001C */  beqz       $t9, .L80060DC0
/* 61950 80060D50 00000000 */   nop
/* 61954 80060D54 8FA90034 */  lw         $t1, 0x34($sp)
/* 61958 80060D58 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 6195C 80060D5C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 61960 80060D60 0009C080 */  sll        $t8, $t1, 2
/* 61964 80060D64 0309C023 */  subu       $t8, $t8, $t1
/* 61968 80060D68 0018C080 */  sll        $t8, $t8, 2
/* 6196C 80060D6C 0309C023 */  subu       $t8, $t8, $t1
/* 61970 80060D70 0018C080 */  sll        $t8, $t8, 2
/* 61974 80060D74 0309C021 */  addu       $t8, $t8, $t1
/* 61978 80060D78 0018C080 */  sll        $t8, $t8, 2
/* 6197C 80060D7C 0309C023 */  subu       $t8, $t8, $t1
/* 61980 80060D80 0018C080 */  sll        $t8, $t8, 2
/* 61984 80060D84 01F84021 */  addu       $t0, $t7, $t8
/* 61988 80060D88 C5060038 */  lwc1       $f6, 0x38($t0)
/* 6198C 80060D8C 44805800 */  mtc1       $zero, $f11
/* 61990 80060D90 44805000 */  mtc1       $zero, $f10
/* 61994 80060D94 46003221 */  cvt.d.s    $f8, $f6
/* 61998 80060D98 4628503E */  c.le.d     $f10, $f8
/* 6199C 80060D9C 00000000 */  nop
/* 619A0 80060DA0 45000007 */  bc1f       .L80060DC0
/* 619A4 80060DA4 00000000 */   nop
.L80060DA8:
/* 619A8 80060DA8 240A0013 */  addiu      $t2, $zero, 0x13
/* 619AC 80060DAC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 619B0 80060DB0 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 619B4 80060DB4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 619B8 80060DB8 10000007 */  b          .L80060DD8
/* 619BC 80060DBC AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80060DC0:
/* 619C0 80060DC0 240B0001 */  addiu      $t3, $zero, 1
/* 619C4 80060DC4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 619C8 80060DC8 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
/* 619CC 80060DCC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 619D0 80060DD0 240C002A */  addiu      $t4, $zero, 0x2a
/* 619D4 80060DD4 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
.L80060DD8:
/* 619D8 80060DD8 100000C4 */  b          .L800610EC
/* 619DC 80060DDC 24020001 */   addiu     $v0, $zero, 1
.L80060DE0:
/* 619E0 80060DE0 3C0E8014 */  lui        $t6, %hi(D_8013F608)
/* 619E4 80060DE4 8DCEF608 */  lw         $t6, %lo(D_8013F608)($t6)
/* 619E8 80060DE8 24010001 */  addiu      $at, $zero, 1
/* 619EC 80060DEC 15C1000A */  bne        $t6, $at, .L80060E18
/* 619F0 80060DF0 3C018014 */   lui       $at, %hi(D_8013F66C)
/* 619F4 80060DF4 C430F66C */  lwc1       $f16, %lo(D_8013F66C)($at)
/* 619F8 80060DF8 3C014014 */  lui        $at, 0x4014
/* 619FC 80060DFC 44812800 */  mtc1       $at, $f5
/* 61A00 80060E00 44802000 */  mtc1       $zero, $f4
/* 61A04 80060E04 460084A1 */  cvt.d.s    $f18, $f16
/* 61A08 80060E08 4624903C */  c.lt.d     $f18, $f4
/* 61A0C 80060E0C 00000000 */  nop
/* 61A10 80060E10 45010015 */  bc1t       .L80060E68
/* 61A14 80060E14 00000000 */   nop
.L80060E18:
/* 61A18 80060E18 8FB90034 */  lw         $t9, 0x34($sp)
/* 61A1C 80060E1C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 61A20 80060E20 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 61A24 80060E24 00194880 */  sll        $t1, $t9, 2
/* 61A28 80060E28 01394823 */  subu       $t1, $t1, $t9
/* 61A2C 80060E2C 00094880 */  sll        $t1, $t1, 2
/* 61A30 80060E30 01394823 */  subu       $t1, $t1, $t9
/* 61A34 80060E34 00094880 */  sll        $t1, $t1, 2
/* 61A38 80060E38 01394821 */  addu       $t1, $t1, $t9
/* 61A3C 80060E3C 00094880 */  sll        $t1, $t1, 2
/* 61A40 80060E40 01394823 */  subu       $t1, $t1, $t9
/* 61A44 80060E44 00094880 */  sll        $t1, $t1, 2
/* 61A48 80060E48 01A97821 */  addu       $t7, $t5, $t1
/* 61A4C 80060E4C 8DF80058 */  lw         $t8, 0x58($t7)
/* 61A50 80060E50 33080004 */  andi       $t0, $t8, 4
/* 61A54 80060E54 110000A4 */  beqz       $t0, .L800610E8
/* 61A58 80060E58 00000000 */   nop
/* 61A5C 80060E5C 8DEA0268 */  lw         $t2, 0x268($t7)
/* 61A60 80060E60 154000A1 */  bnez       $t2, .L800610E8
/* 61A64 80060E64 00000000 */   nop
.L80060E68:
/* 61A68 80060E68 3C0B8014 */  lui        $t3, %hi(D_8013F610)
/* 61A6C 80060E6C 8D6BF610 */  lw         $t3, %lo(D_8013F610)($t3)
/* 61A70 80060E70 2401002B */  addiu      $at, $zero, 0x2b
/* 61A74 80060E74 1161000F */  beq        $t3, $at, .L80060EB4
/* 61A78 80060E78 00000000 */   nop
/* 61A7C 80060E7C 240C0019 */  addiu      $t4, $zero, 0x19
/* 61A80 80060E80 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61A84 80060E84 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 61A88 80060E88 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61A8C 80060E8C 240E0002 */  addiu      $t6, $zero, 2
/* 61A90 80060E90 AC2EF608 */  sw         $t6, %lo(D_8013F608)($at)
/* 61A94 80060E94 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61A98 80060E98 24190001 */  addiu      $t9, $zero, 1
/* 61A9C 80060E9C AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 61AA0 80060EA0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61AA4 80060EA4 240D002A */  addiu      $t5, $zero, 0x2a
/* 61AA8 80060EA8 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 61AAC 80060EAC 1000008F */  b          .L800610EC
/* 61AB0 80060EB0 24020001 */   addiu     $v0, $zero, 1
.L80060EB4:
/* 61AB4 80060EB4 8FB80034 */  lw         $t8, 0x34($sp)
/* 61AB8 80060EB8 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 61ABC 80060EBC 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 61AC0 80060EC0 00184080 */  sll        $t0, $t8, 2
/* 61AC4 80060EC4 01184023 */  subu       $t0, $t0, $t8
/* 61AC8 80060EC8 00084080 */  sll        $t0, $t0, 2
/* 61ACC 80060ECC 01184023 */  subu       $t0, $t0, $t8
/* 61AD0 80060ED0 00084080 */  sll        $t0, $t0, 2
/* 61AD4 80060ED4 01184021 */  addu       $t0, $t0, $t8
/* 61AD8 80060ED8 00084080 */  sll        $t0, $t0, 2
/* 61ADC 80060EDC 01184023 */  subu       $t0, $t0, $t8
/* 61AE0 80060EE0 00084080 */  sll        $t0, $t0, 2
/* 61AE4 80060EE4 01287821 */  addu       $t7, $t1, $t0
/* 61AE8 80060EE8 8DEA006C */  lw         $t2, 0x6c($t7)
/* 61AEC 80060EEC 24010012 */  addiu      $at, $zero, 0x12
/* 61AF0 80060EF0 1541000C */  bne        $t2, $at, .L80060F24
/* 61AF4 80060EF4 00000000 */   nop
/* 61AF8 80060EF8 8DEC00E0 */  lw         $t4, 0xe0($t7)
/* 61AFC 80060EFC 24040051 */  addiu      $a0, $zero, 0x51
/* 61B00 80060F00 24050051 */  addiu      $a1, $zero, 0x51
/* 61B04 80060F04 AFAC0008 */  sw         $t4, 8($sp)
/* 61B08 80060F08 8DEB00E4 */  lw         $t3, 0xe4($t7)
/* 61B0C 80060F0C 8FA60008 */  lw         $a2, 8($sp)
/* 61B10 80060F10 AFAB000C */  sw         $t3, 0xc($sp)
/* 61B14 80060F14 8DEC00E8 */  lw         $t4, 0xe8($t7)
/* 61B18 80060F18 8FA7000C */  lw         $a3, 0xc($sp)
/* 61B1C 80060F1C 0C006092 */  jal        func_80018248
/* 61B20 80060F20 AFAC0010 */   sw        $t4, 0x10($sp)
.L80060F24:
/* 61B24 80060F24 240E002A */  addiu      $t6, $zero, 0x2a
/* 61B28 80060F28 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61B2C 80060F2C AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 61B30 80060F30 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61B34 80060F34 24190019 */  addiu      $t9, $zero, 0x19
/* 61B38 80060F38 AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 61B3C 80060F3C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61B40 80060F40 240D0002 */  addiu      $t5, $zero, 2
/* 61B44 80060F44 AC2DF608 */  sw         $t5, %lo(D_8013F608)($at)
/* 61B48 80060F48 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61B4C 80060F4C 24180001 */  addiu      $t8, $zero, 1
/* 61B50 80060F50 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 61B54 80060F54 10000065 */  b          .L800610EC
/* 61B58 80060F58 24020001 */   addiu     $v0, $zero, 1
.L80060F5C:
/* 61B5C 80060F5C 3C098014 */  lui        $t1, %hi(D_8013F608)
/* 61B60 80060F60 8D29F608 */  lw         $t1, %lo(D_8013F608)($t1)
/* 61B64 80060F64 24010002 */  addiu      $at, $zero, 2
/* 61B68 80060F68 1521000B */  bne        $t1, $at, .L80060F98
/* 61B6C 80060F6C 00000000 */   nop
/* 61B70 80060F70 3C088014 */  lui        $t0, %hi(D_8013F60C)
/* 61B74 80060F74 8D08F60C */  lw         $t0, %lo(D_8013F60C)($t0)
/* 61B78 80060F78 24010034 */  addiu      $at, $zero, 0x34
/* 61B7C 80060F7C 15010006 */  bne        $t0, $at, .L80060F98
/* 61B80 80060F80 00000000 */   nop
/* 61B84 80060F84 8FA40030 */  lw         $a0, 0x30($sp)
/* 61B88 80060F88 0C018128 */  jal        func_800604A0
/* 61B8C 80060F8C 8FA50034 */   lw        $a1, 0x34($sp)
/* 61B90 80060F90 10000055 */  b          .L800610E8
/* 61B94 80060F94 00000000 */   nop
.L80060F98:
/* 61B98 80060F98 8FAF0034 */  lw         $t7, 0x34($sp)
/* 61B9C 80060F9C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 61BA0 80060FA0 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 61BA4 80060FA4 000F5880 */  sll        $t3, $t7, 2
/* 61BA8 80060FA8 016F5823 */  subu       $t3, $t3, $t7
/* 61BAC 80060FAC 000B5880 */  sll        $t3, $t3, 2
/* 61BB0 80060FB0 016F5823 */  subu       $t3, $t3, $t7
/* 61BB4 80060FB4 000B5880 */  sll        $t3, $t3, 2
/* 61BB8 80060FB8 016F5821 */  addu       $t3, $t3, $t7
/* 61BBC 80060FBC 000B5880 */  sll        $t3, $t3, 2
/* 61BC0 80060FC0 016F5823 */  subu       $t3, $t3, $t7
/* 61BC4 80060FC4 000B5880 */  sll        $t3, $t3, 2
/* 61BC8 80060FC8 014B6021 */  addu       $t4, $t2, $t3
/* 61BCC 80060FCC 8D8E0268 */  lw         $t6, 0x268($t4)
/* 61BD0 80060FD0 15C00045 */  bnez       $t6, .L800610E8
/* 61BD4 80060FD4 00000000 */   nop
/* 61BD8 80060FD8 3C198014 */  lui        $t9, %hi(D_8013F60C)
/* 61BDC 80060FDC 8F39F60C */  lw         $t9, %lo(D_8013F60C)($t9)
/* 61BE0 80060FE0 24010018 */  addiu      $at, $zero, 0x18
/* 61BE4 80060FE4 17210011 */  bne        $t9, $at, .L8006102C
/* 61BE8 80060FE8 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 61BEC 80060FEC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61BF0 80060FF0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61BF4 80060FF4 240D0019 */  addiu      $t5, $zero, 0x19
/* 61BF8 80060FF8 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 61BFC 80060FFC 44803000 */  mtc1       $zero, $f6
/* 61C00 80061000 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61C04 80061004 24180019 */  addiu      $t8, $zero, 0x19
/* 61C08 80061008 AC38F60C */  sw         $t8, %lo(D_8013F60C)($at)
/* 61C0C 8006100C 3C018014 */  lui        $at, %hi(D_8013F648)
/* 61C10 80061010 E426F648 */  swc1       $f6, %lo(D_8013F648)($at)
/* 61C14 80061014 3C018014 */  lui        $at, %hi(D_8013F644)
/* 61C18 80061018 E426F644 */  swc1       $f6, %lo(D_8013F644)($at)
/* 61C1C 8006101C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 61C20 80061020 24020001 */  addiu      $v0, $zero, 1
/* 61C24 80061024 10000031 */  b          .L800610EC
/* 61C28 80061028 E426F640 */   swc1      $f6, %lo(D_8013F640)($at)
.L8006102C:
/* 61C2C 8006102C 3C098014 */  lui        $t1, %hi(D_8013F608)
/* 61C30 80061030 8D29F608 */  lw         $t1, %lo(D_8013F608)($t1)
/* 61C34 80061034 24010002 */  addiu      $at, $zero, 2
/* 61C38 80061038 15210006 */  bne        $t1, $at, .L80061054
/* 61C3C 8006103C 00000000 */   nop
/* 61C40 80061040 3C088014 */  lui        $t0, %hi(D_8013F610)
/* 61C44 80061044 8D08F610 */  lw         $t0, %lo(D_8013F610)($t0)
/* 61C48 80061048 24010029 */  addiu      $at, $zero, 0x29
/* 61C4C 8006104C 15010006 */  bne        $t0, $at, .L80061068
/* 61C50 80061050 00000000 */   nop
.L80061054:
/* 61C54 80061054 3C0F8014 */  lui        $t7, %hi(D_8013F610)
/* 61C58 80061058 8DEFF610 */  lw         $t7, %lo(D_8013F610)($t7)
/* 61C5C 8006105C 2401002B */  addiu      $at, $zero, 0x2b
/* 61C60 80061060 15E1000E */  bne        $t7, $at, .L8006109C
/* 61C64 80061064 00000000 */   nop
.L80061068:
/* 61C68 80061068 240A0029 */  addiu      $t2, $zero, 0x29
/* 61C6C 8006106C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61C70 80061070 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 61C74 80061074 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61C78 80061078 240B0019 */  addiu      $t3, $zero, 0x19
/* 61C7C 8006107C AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 61C80 80061080 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61C84 80061084 240C0002 */  addiu      $t4, $zero, 2
/* 61C88 80061088 AC2CF608 */  sw         $t4, %lo(D_8013F608)($at)
/* 61C8C 8006108C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61C90 80061090 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61C94 80061094 10000015 */  b          .L800610EC
/* 61C98 80061098 24020001 */   addiu     $v0, $zero, 1
.L8006109C:
/* 61C9C 8006109C 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 61CA0 800610A0 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 61CA4 800610A4 24010029 */  addiu      $at, $zero, 0x29
/* 61CA8 800610A8 15C1000F */  bne        $t6, $at, .L800610E8
/* 61CAC 800610AC 00000000 */   nop
/* 61CB0 800610B0 24190003 */  addiu      $t9, $zero, 3
/* 61CB4 800610B4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61CB8 800610B8 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 61CBC 800610BC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61CC0 800610C0 240D000C */  addiu      $t5, $zero, 0xc
/* 61CC4 800610C4 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 61CC8 800610C8 3C018014 */  lui        $at, %hi(D_8013F608)
/* 61CCC 800610CC 24180001 */  addiu      $t8, $zero, 1
/* 61CD0 800610D0 AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 61CD4 800610D4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61CD8 800610D8 24090001 */  addiu      $t1, $zero, 1
/* 61CDC 800610DC AC29F61C */  sw         $t1, %lo(D_8013F61C)($at)
/* 61CE0 800610E0 10000002 */  b          .L800610EC
/* 61CE4 800610E4 24020001 */   addiu     $v0, $zero, 1
.L800610E8:
/* 61CE8 800610E8 00001025 */  or         $v0, $zero, $zero
.L800610EC:
/* 61CEC 800610EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 61CF0 800610F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 61CF4 800610F4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 61CF8 800610F8 03E00008 */  jr         $ra
/* 61CFC 800610FC 00000000 */   nop

glabel func_80061100
/* 61D00 80061100 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 61D04 80061104 AFBF001C */  sw         $ra, 0x1c($sp)
/* 61D08 80061108 AFA40028 */  sw         $a0, 0x28($sp)
/* 61D0C 8006110C AFA5002C */  sw         $a1, 0x2c($sp)
/* 61D10 80061110 AFB00018 */  sw         $s0, 0x18($sp)
/* 61D14 80061114 8FAE0028 */  lw         $t6, 0x28($sp)
/* 61D18 80061118 AFA00024 */  sw         $zero, 0x24($sp)
/* 61D1C 8006111C 8DD00000 */  lw         $s0, ($t6)
/* 61D20 80061120 2E010202 */  sltiu      $at, $s0, 0x202
/* 61D24 80061124 1420000B */  bnez       $at, .L80061154
/* 61D28 80061128 24010401 */   addiu     $at, $zero, 0x401
/* 61D2C 8006112C 12010123 */  beq        $s0, $at, .L800615BC
/* 61D30 80061130 24010801 */   addiu     $at, $zero, 0x801
/* 61D34 80061134 120100FB */  beq        $s0, $at, .L80061524
/* 61D38 80061138 24011001 */   addiu     $at, $zero, 0x1001
/* 61D3C 8006113C 120100BA */  beq        $s0, $at, .L80061428
/* 61D40 80061140 24012001 */   addiu     $at, $zero, 0x2001
/* 61D44 80061144 120100B8 */  beq        $s0, $at, .L80061428
/* 61D48 80061148 00000000 */   nop
/* 61D4C 8006114C 10000156 */  b          .L800616A8
/* 61D50 80061150 00000000 */   nop
.L80061154:
/* 61D54 80061154 2E010082 */  sltiu      $at, $s0, 0x82
/* 61D58 80061158 14200007 */  bnez       $at, .L80061178
/* 61D5C 8006115C 24010101 */   addiu     $at, $zero, 0x101
/* 61D60 80061160 12010145 */  beq        $s0, $at, .L80061678
/* 61D64 80061164 24010201 */   addiu     $at, $zero, 0x201
/* 61D68 80061168 12010108 */  beq        $s0, $at, .L8006158C
/* 61D6C 8006116C 00000000 */   nop
/* 61D70 80061170 1000014D */  b          .L800616A8
/* 61D74 80061174 00000000 */   nop
.L80061178:
/* 61D78 80061178 2E010042 */  sltiu      $at, $s0, 0x42
/* 61D7C 8006117C 14200005 */  bnez       $at, .L80061194
/* 61D80 80061180 24010081 */   addiu     $at, $zero, 0x81
/* 61D84 80061184 12010130 */  beq        $s0, $at, .L80061648
/* 61D88 80061188 00000000 */   nop
/* 61D8C 8006118C 10000146 */  b          .L800616A8
/* 61D90 80061190 00000000 */   nop
.L80061194:
/* 61D94 80061194 2E010022 */  sltiu      $at, $s0, 0x22
/* 61D98 80061198 14200005 */  bnez       $at, .L800611B0
/* 61D9C 8006119C 24010041 */   addiu     $at, $zero, 0x41
/* 61DA0 800611A0 1201011D */  beq        $s0, $at, .L80061618
/* 61DA4 800611A4 00000000 */   nop
/* 61DA8 800611A8 1000013F */  b          .L800616A8
/* 61DAC 800611AC 00000000 */   nop
.L800611B0:
/* 61DB0 800611B0 260FFFFD */  addiu      $t7, $s0, -3
/* 61DB4 800611B4 2DE1001F */  sltiu      $at, $t7, 0x1f
/* 61DB8 800611B8 1020013B */  beqz       $at, .L800616A8
/* 61DBC 800611BC 00000000 */   nop
/* 61DC0 800611C0 000F7880 */  sll        $t7, $t7, 2
/* 61DC4 800611C4 3C01800E */  lui        $at, %hi(D_800DDEAC)
/* 61DC8 800611C8 002F0821 */  addu       $at, $at, $t7
/* 61DCC 800611CC 8C2FDEAC */  lw         $t7, %lo(D_800DDEAC)($at)
/* 61DD0 800611D0 01E00008 */  jr         $t7
/* 61DD4 800611D4 00000000 */   nop
/* 61DD8 800611D8 8FA9002C */  lw         $t1, 0x2c($sp)
/* 61DDC 800611DC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61DE0 800611E0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61DE4 800611E4 00095080 */  sll        $t2, $t1, 2
/* 61DE8 800611E8 01495023 */  subu       $t2, $t2, $t1
/* 61DEC 800611EC 000A5080 */  sll        $t2, $t2, 2
/* 61DF0 800611F0 01495023 */  subu       $t2, $t2, $t1
/* 61DF4 800611F4 000A5080 */  sll        $t2, $t2, 2
/* 61DF8 800611F8 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 61DFC 800611FC 01495021 */  addu       $t2, $t2, $t1
/* 61E00 80061200 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 61E04 80061204 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61E08 80061208 2418002D */  addiu      $t8, $zero, 0x2d
/* 61E0C 8006120C 000A5080 */  sll        $t2, $t2, 2
/* 61E10 80061210 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 61E14 80061214 01495023 */  subu       $t2, $t2, $t1
/* 61E18 80061218 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61E1C 8006121C 24190015 */  addiu      $t9, $zero, 0x15
/* 61E20 80061220 000A5080 */  sll        $t2, $t2, 2
/* 61E24 80061224 AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 61E28 80061228 010A5821 */  addu       $t3, $t0, $t2
/* 61E2C 8006122C 8D6C006C */  lw         $t4, 0x6c($t3)
/* 61E30 80061230 8FAE0024 */  lw         $t6, 0x24($sp)
/* 61E34 80061234 3C188016 */  lui        $t8, 0x8016
/* 61E38 80061238 000C68C0 */  sll        $t5, $t4, 3
/* 61E3C 8006123C 3C198016 */  lui        $t9, %hi(D_8015FB88)
/* 61E40 80061240 01AE7821 */  addu       $t7, $t5, $t6
/* 61E44 80061244 8F39FB88 */  lw         $t9, %lo(D_8015FB88)($t9)
/* 61E48 80061248 030FC021 */  addu       $t8, $t8, $t7
/* 61E4C 8006124C 83187678 */  lb         $t8, 0x7678($t8)
/* 61E50 80061250 3C018014 */  lui        $at, %hi(D_8013F614)
/* 61E54 80061254 15390147 */  bne        $t1, $t9, .L80061774
/* 61E58 80061258 AC38F614 */   sw        $t8, %lo(D_8013F614)($at)
/* 61E5C 8006125C 24080001 */  addiu      $t0, $zero, 1
/* 61E60 80061260 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 61E64 80061264 10000143 */  b          .L80061774
/* 61E68 80061268 AC287D64 */   sw        $t0, %lo(D_800D7D64)($at)
/* 61E6C 8006126C 8FAD002C */  lw         $t5, 0x2c($sp)
/* 61E70 80061270 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61E74 80061274 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61E78 80061278 000D7080 */  sll        $t6, $t5, 2
/* 61E7C 8006127C 01CD7023 */  subu       $t6, $t6, $t5
/* 61E80 80061280 000E7080 */  sll        $t6, $t6, 2
/* 61E84 80061284 01CD7023 */  subu       $t6, $t6, $t5
/* 61E88 80061288 000E7080 */  sll        $t6, $t6, 2
/* 61E8C 8006128C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 61E90 80061290 01CD7021 */  addu       $t6, $t6, $t5
/* 61E94 80061294 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 61E98 80061298 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61E9C 8006129C 240A0015 */  addiu      $t2, $zero, 0x15
/* 61EA0 800612A0 000E7080 */  sll        $t6, $t6, 2
/* 61EA4 800612A4 AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 61EA8 800612A8 01CD7023 */  subu       $t6, $t6, $t5
/* 61EAC 800612AC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61EB0 800612B0 240B002E */  addiu      $t3, $zero, 0x2e
/* 61EB4 800612B4 000E7080 */  sll        $t6, $t6, 2
/* 61EB8 800612B8 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 61EBC 800612BC 018E7821 */  addu       $t7, $t4, $t6
/* 61EC0 800612C0 8DF8006C */  lw         $t8, 0x6c($t7)
/* 61EC4 800612C4 8FB90024 */  lw         $t9, 0x24($sp)
/* 61EC8 800612C8 3C0A8016 */  lui        $t2, 0x8016
/* 61ECC 800612CC 001848C0 */  sll        $t1, $t8, 3
/* 61ED0 800612D0 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* 61ED4 800612D4 01394021 */  addu       $t0, $t1, $t9
/* 61ED8 800612D8 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* 61EDC 800612DC 01485021 */  addu       $t2, $t2, $t0
/* 61EE0 800612E0 814A7679 */  lb         $t2, 0x7679($t2)
/* 61EE4 800612E4 3C018014 */  lui        $at, %hi(D_8013F614)
/* 61EE8 800612E8 15AB0122 */  bne        $t5, $t3, .L80061774
/* 61EEC 800612EC AC2AF614 */   sw        $t2, %lo(D_8013F614)($at)
/* 61EF0 800612F0 240C0001 */  addiu      $t4, $zero, 1
/* 61EF4 800612F4 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 61EF8 800612F8 1000011E */  b          .L80061774
/* 61EFC 800612FC AC2C7D64 */   sw        $t4, %lo(D_800D7D64)($at)
/* 61F00 80061300 8FA9002C */  lw         $t1, 0x2c($sp)
/* 61F04 80061304 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61F08 80061308 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61F0C 8006130C 0009C880 */  sll        $t9, $t1, 2
/* 61F10 80061310 0329C823 */  subu       $t9, $t9, $t1
/* 61F14 80061314 0019C880 */  sll        $t9, $t9, 2
/* 61F18 80061318 0329C823 */  subu       $t9, $t9, $t1
/* 61F1C 8006131C 0019C880 */  sll        $t9, $t9, 2
/* 61F20 80061320 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 61F24 80061324 0329C821 */  addu       $t9, $t9, $t1
/* 61F28 80061328 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 61F2C 8006132C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61F30 80061330 240E00B4 */  addiu      $t6, $zero, 0xb4
/* 61F34 80061334 0019C880 */  sll        $t9, $t9, 2
/* 61F38 80061338 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 61F3C 8006133C 0329C823 */  subu       $t9, $t9, $t1
/* 61F40 80061340 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61F44 80061344 240F0015 */  addiu      $t7, $zero, 0x15
/* 61F48 80061348 0019C880 */  sll        $t9, $t9, 2
/* 61F4C 8006134C AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 61F50 80061350 03194021 */  addu       $t0, $t8, $t9
/* 61F54 80061354 8D0A006C */  lw         $t2, 0x6c($t0)
/* 61F58 80061358 8FAB0024 */  lw         $t3, 0x24($sp)
/* 61F5C 8006135C 3C0E8016 */  lui        $t6, 0x8016
/* 61F60 80061360 000A68C0 */  sll        $t5, $t2, 3
/* 61F64 80061364 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* 61F68 80061368 01AB6021 */  addu       $t4, $t5, $t3
/* 61F6C 8006136C 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* 61F70 80061370 01CC7021 */  addu       $t6, $t6, $t4
/* 61F74 80061374 81CE767A */  lb         $t6, 0x767a($t6)
/* 61F78 80061378 3C018014 */  lui        $at, %hi(D_8013F614)
/* 61F7C 8006137C 152F00FD */  bne        $t1, $t7, .L80061774
/* 61F80 80061380 AC2EF614 */   sw        $t6, %lo(D_8013F614)($at)
/* 61F84 80061384 24180001 */  addiu      $t8, $zero, 1
/* 61F88 80061388 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 61F8C 8006138C 100000F9 */  b          .L80061774
/* 61F90 80061390 AC387D64 */   sw        $t8, %lo(D_800D7D64)($at)
/* 61F94 80061394 8FAD002C */  lw         $t5, 0x2c($sp)
/* 61F98 80061398 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 61F9C 8006139C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 61FA0 800613A0 000D5880 */  sll        $t3, $t5, 2
/* 61FA4 800613A4 016D5823 */  subu       $t3, $t3, $t5
/* 61FA8 800613A8 000B5880 */  sll        $t3, $t3, 2
/* 61FAC 800613AC 016D5823 */  subu       $t3, $t3, $t5
/* 61FB0 800613B0 000B5880 */  sll        $t3, $t3, 2
/* 61FB4 800613B4 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 61FB8 800613B8 016D5821 */  addu       $t3, $t3, $t5
/* 61FBC 800613BC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 61FC0 800613C0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 61FC4 800613C4 241900AF */  addiu      $t9, $zero, 0xaf
/* 61FC8 800613C8 000B5880 */  sll        $t3, $t3, 2
/* 61FCC 800613CC AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 61FD0 800613D0 016D5823 */  subu       $t3, $t3, $t5
/* 61FD4 800613D4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 61FD8 800613D8 24080015 */  addiu      $t0, $zero, 0x15
/* 61FDC 800613DC 000B5880 */  sll        $t3, $t3, 2
/* 61FE0 800613E0 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 61FE4 800613E4 014B6021 */  addu       $t4, $t2, $t3
/* 61FE8 800613E8 8D8E006C */  lw         $t6, 0x6c($t4)
/* 61FEC 800613EC 8FAF0024 */  lw         $t7, 0x24($sp)
/* 61FF0 800613F0 3C198016 */  lui        $t9, 0x8016
/* 61FF4 800613F4 000E48C0 */  sll        $t1, $t6, 3
/* 61FF8 800613F8 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 61FFC 800613FC 012FC021 */  addu       $t8, $t1, $t7
/* 62000 80061400 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 62004 80061404 0338C821 */  addu       $t9, $t9, $t8
/* 62008 80061408 8339767B */  lb         $t9, 0x767b($t9)
/* 6200C 8006140C 3C018014 */  lui        $at, %hi(D_8013F614)
/* 62010 80061410 15A800D8 */  bne        $t5, $t0, .L80061774
/* 62014 80061414 AC39F614 */   sw        $t9, %lo(D_8013F614)($at)
/* 62018 80061418 240A0001 */  addiu      $t2, $zero, 1
/* 6201C 8006141C 3C01800D */  lui        $at, %hi(D_800D7D64)
/* 62020 80061420 100000D4 */  b          .L80061774
/* 62024 80061424 AC2A7D64 */   sw        $t2, %lo(D_800D7D64)($at)
.L80061428:
/* 62028 80061428 8FA40028 */  lw         $a0, 0x28($sp)
/* 6202C 8006142C 0C0177C0 */  jal        func_8005DF00
/* 62030 80061430 8FA5002C */   lw        $a1, 0x2c($sp)
/* 62034 80061434 8FAB0028 */  lw         $t3, 0x28($sp)
/* 62038 80061438 8D6C0000 */  lw         $t4, ($t3)
/* 6203C 8006143C 318E2000 */  andi       $t6, $t4, 0x2000
/* 62040 80061440 11C00016 */  beqz       $t6, .L8006149C
/* 62044 80061444 00000000 */   nop
/* 62048 80061448 8FAF002C */  lw         $t7, 0x2c($sp)
/* 6204C 8006144C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 62050 80061450 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 62054 80061454 000FC080 */  sll        $t8, $t7, 2
/* 62058 80061458 030FC023 */  subu       $t8, $t8, $t7
/* 6205C 8006145C 0018C080 */  sll        $t8, $t8, 2
/* 62060 80061460 030FC023 */  subu       $t8, $t8, $t7
/* 62064 80061464 0018C080 */  sll        $t8, $t8, 2
/* 62068 80061468 030FC021 */  addu       $t8, $t8, $t7
/* 6206C 8006146C 0018C080 */  sll        $t8, $t8, 2
/* 62070 80061470 030FC023 */  subu       $t8, $t8, $t7
/* 62074 80061474 0018C080 */  sll        $t8, $t8, 2
/* 62078 80061478 0138C821 */  addu       $t9, $t1, $t8
/* 6207C 8006147C C7240038 */  lwc1       $f4, 0x38($t9)
/* 62080 80061480 44804800 */  mtc1       $zero, $f9
/* 62084 80061484 44804000 */  mtc1       $zero, $f8
/* 62088 80061488 460021A1 */  cvt.d.s    $f6, $f4
/* 6208C 8006148C 4626403C */  c.lt.d     $f8, $f6
/* 62090 80061490 00000000 */  nop
/* 62094 80061494 4501001A */  bc1t       .L80061500
/* 62098 80061498 00000000 */   nop
.L8006149C:
/* 6209C 8006149C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 620A0 800614A0 8DA80000 */  lw         $t0, ($t5)
/* 620A4 800614A4 310A1000 */  andi       $t2, $t0, 0x1000
/* 620A8 800614A8 114000B2 */  beqz       $t2, .L80061774
/* 620AC 800614AC 00000000 */   nop
/* 620B0 800614B0 8FAC002C */  lw         $t4, 0x2c($sp)
/* 620B4 800614B4 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 620B8 800614B8 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 620BC 800614BC 000C7080 */  sll        $t6, $t4, 2
/* 620C0 800614C0 01CC7023 */  subu       $t6, $t6, $t4
/* 620C4 800614C4 000E7080 */  sll        $t6, $t6, 2
/* 620C8 800614C8 01CC7023 */  subu       $t6, $t6, $t4
/* 620CC 800614CC 000E7080 */  sll        $t6, $t6, 2
/* 620D0 800614D0 01CC7021 */  addu       $t6, $t6, $t4
/* 620D4 800614D4 000E7080 */  sll        $t6, $t6, 2
/* 620D8 800614D8 01CC7023 */  subu       $t6, $t6, $t4
/* 620DC 800614DC 000E7080 */  sll        $t6, $t6, 2
/* 620E0 800614E0 016E7821 */  addu       $t7, $t3, $t6
/* 620E4 800614E4 C5EA0034 */  lwc1       $f10, 0x34($t7)
/* 620E8 800614E8 44809800 */  mtc1       $zero, $f19
/* 620EC 800614EC 44809000 */  mtc1       $zero, $f18
/* 620F0 800614F0 46005421 */  cvt.d.s    $f16, $f10
/* 620F4 800614F4 4630903C */  c.lt.d     $f18, $f16
/* 620F8 800614F8 00000000 */  nop
/* 620FC 800614FC 4500009D */  bc1f       .L80061774
.L80061500:
/* 62100 80061500 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 62104 80061504 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 62108 80061508 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6210C 8006150C 24090019 */  addiu      $t1, $zero, 0x19
/* 62110 80061510 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 62114 80061514 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62118 80061518 24180013 */  addiu      $t8, $zero, 0x13
/* 6211C 8006151C 10000095 */  b          .L80061774
/* 62120 80061520 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80061524:
/* 62124 80061524 8FAD002C */  lw         $t5, 0x2c($sp)
/* 62128 80061528 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 6212C 8006152C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 62130 80061530 000D4080 */  sll        $t0, $t5, 2
/* 62134 80061534 010D4023 */  subu       $t0, $t0, $t5
/* 62138 80061538 00084080 */  sll        $t0, $t0, 2
/* 6213C 8006153C 010D4023 */  subu       $t0, $t0, $t5
/* 62140 80061540 00084080 */  sll        $t0, $t0, 2
/* 62144 80061544 010D4021 */  addu       $t0, $t0, $t5
/* 62148 80061548 00084080 */  sll        $t0, $t0, 2
/* 6214C 8006154C 010D4023 */  subu       $t0, $t0, $t5
/* 62150 80061550 00084080 */  sll        $t0, $t0, 2
/* 62154 80061554 03285021 */  addu       $t2, $t9, $t0
/* 62158 80061558 8D4C028C */  lw         $t4, 0x28c($t2)
/* 6215C 8006155C 318B0800 */  andi       $t3, $t4, 0x800
/* 62160 80061560 15600084 */  bnez       $t3, .L80061774
/* 62164 80061564 00000000 */   nop
/* 62168 80061568 240E0019 */  addiu      $t6, $zero, 0x19
/* 6216C 8006156C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62170 80061570 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 62174 80061574 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62178 80061578 240F0065 */  addiu      $t7, $zero, 0x65
/* 6217C 8006157C AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 62180 80061580 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62184 80061584 1000007B */  b          .L80061774
/* 62188 80061588 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L8006158C:
/* 6218C 8006158C 240900AB */  addiu      $t1, $zero, 0xab
/* 62190 80061590 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62194 80061594 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 62198 80061598 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6219C 8006159C 24180015 */  addiu      $t8, $zero, 0x15
/* 621A0 800615A0 AC38F60C */  sw         $t8, %lo(D_8013F60C)($at)
/* 621A4 800615A4 3C018014 */  lui        $at, %hi(D_8013F614)
/* 621A8 800615A8 240D0003 */  addiu      $t5, $zero, 3
/* 621AC 800615AC AC2DF614 */  sw         $t5, %lo(D_8013F614)($at)
/* 621B0 800615B0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 621B4 800615B4 1000006F */  b          .L80061774
/* 621B8 800615B8 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L800615BC:
/* 621BC 800615BC 241900B3 */  addiu      $t9, $zero, 0xb3
/* 621C0 800615C0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 621C4 800615C4 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 621C8 800615C8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 621CC 800615CC 24080015 */  addiu      $t0, $zero, 0x15
/* 621D0 800615D0 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 621D4 800615D4 3C018014 */  lui        $at, %hi(D_8013F614)
/* 621D8 800615D8 240A0001 */  addiu      $t2, $zero, 1
/* 621DC 800615DC AC2AF614 */  sw         $t2, %lo(D_8013F614)($at)
/* 621E0 800615E0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 621E4 800615E4 10000063 */  b          .L80061774
/* 621E8 800615E8 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
/* 621EC 800615EC 240C002C */  addiu      $t4, $zero, 0x2c
/* 621F0 800615F0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 621F4 800615F4 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 621F8 800615F8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 621FC 800615FC 240B0015 */  addiu      $t3, $zero, 0x15
/* 62200 80061600 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 62204 80061604 3C018014 */  lui        $at, %hi(D_8013F614)
/* 62208 80061608 AC20F614 */  sw         $zero, %lo(D_8013F614)($at)
/* 6220C 8006160C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62210 80061610 10000058 */  b          .L80061774
/* 62214 80061614 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80061618:
/* 62218 80061618 240E0015 */  addiu      $t6, $zero, 0x15
/* 6221C 8006161C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62220 80061620 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 62224 80061624 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62228 80061628 240F00B1 */  addiu      $t7, $zero, 0xb1
/* 6222C 8006162C AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 62230 80061630 3C018014 */  lui        $at, %hi(D_8013F614)
/* 62234 80061634 24090001 */  addiu      $t1, $zero, 1
/* 62238 80061638 AC29F614 */  sw         $t1, %lo(D_8013F614)($at)
/* 6223C 8006163C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62240 80061640 1000004C */  b          .L80061774
/* 62244 80061644 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80061648:
/* 62248 80061648 241800B2 */  addiu      $t8, $zero, 0xb2
/* 6224C 8006164C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62250 80061650 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 62254 80061654 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62258 80061658 240D0015 */  addiu      $t5, $zero, 0x15
/* 6225C 8006165C AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 62260 80061660 3C018014 */  lui        $at, %hi(D_8013F614)
/* 62264 80061664 24190001 */  addiu      $t9, $zero, 1
/* 62268 80061668 AC39F614 */  sw         $t9, %lo(D_8013F614)($at)
/* 6226C 8006166C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62270 80061670 10000040 */  b          .L80061774
/* 62274 80061674 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80061678:
/* 62278 80061678 240800AA */  addiu      $t0, $zero, 0xaa
/* 6227C 8006167C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62280 80061680 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 62284 80061684 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62288 80061688 240A0015 */  addiu      $t2, $zero, 0x15
/* 6228C 8006168C AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 62290 80061690 3C018014 */  lui        $at, %hi(D_8013F614)
/* 62294 80061694 240C0003 */  addiu      $t4, $zero, 3
/* 62298 80061698 AC2CF614 */  sw         $t4, %lo(D_8013F614)($at)
/* 6229C 8006169C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 622A0 800616A0 10000034 */  b          .L80061774
/* 622A4 800616A4 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L800616A8:
/* 622A8 800616A8 240BFFFF */  addiu      $t3, $zero, -1
/* 622AC 800616AC 3C018014 */  lui        $at, %hi(D_8013F614)
/* 622B0 800616B0 AC2BF614 */  sw         $t3, %lo(D_8013F614)($at)
/* 622B4 800616B4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 622B8 800616B8 240E0001 */  addiu      $t6, $zero, 1
/* 622BC 800616BC AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 622C0 800616C0 3C018014 */  lui        $at, %hi(D_8013F620)
/* 622C4 800616C4 C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 622C8 800616C8 3C014014 */  lui        $at, 0x4014
/* 622CC 800616CC 44814800 */  mtc1       $at, $f9
/* 622D0 800616D0 44804000 */  mtc1       $zero, $f8
/* 622D4 800616D4 460021A1 */  cvt.d.s    $f6, $f4
/* 622D8 800616D8 4626403E */  c.le.d     $f8, $f6
/* 622DC 800616DC 00000000 */  nop
/* 622E0 800616E0 45000008 */  bc1f       .L80061704
/* 622E4 800616E4 00000000 */   nop
/* 622E8 800616E8 240F00B7 */  addiu      $t7, $zero, 0xb7
/* 622EC 800616EC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 622F0 800616F0 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 622F4 800616F4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 622F8 800616F8 24090019 */  addiu      $t1, $zero, 0x19
/* 622FC 800616FC 1000001D */  b          .L80061774
/* 62300 80061700 AC29F60C */   sw        $t1, %lo(D_8013F60C)($at)
.L80061704:
/* 62304 80061704 3C018014 */  lui        $at, %hi(D_8013F620)
/* 62308 80061708 C42AF620 */  lwc1       $f10, %lo(D_8013F620)($at)
/* 6230C 8006170C 3C01C030 */  lui        $at, 0xc030
/* 62310 80061710 44819800 */  mtc1       $at, $f19
/* 62314 80061714 44809000 */  mtc1       $zero, $f18
/* 62318 80061718 46005421 */  cvt.d.s    $f16, $f10
/* 6231C 8006171C 4632803E */  c.le.d     $f16, $f18
/* 62320 80061720 00000000 */  nop
/* 62324 80061724 45000008 */  bc1f       .L80061748
/* 62328 80061728 00000000 */   nop
/* 6232C 8006172C 241800B8 */  addiu      $t8, $zero, 0xb8
/* 62330 80061730 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62334 80061734 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 62338 80061738 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6233C 8006173C 240D0019 */  addiu      $t5, $zero, 0x19
/* 62340 80061740 1000000C */  b          .L80061774
/* 62344 80061744 AC2DF60C */   sw        $t5, %lo(D_8013F60C)($at)
.L80061748:
/* 62348 80061748 3C198014 */  lui        $t9, %hi(D_8013F60C)
/* 6234C 8006174C 8F39F60C */  lw         $t9, %lo(D_8013F60C)($t9)
/* 62350 80061750 24010019 */  addiu      $at, $zero, 0x19
/* 62354 80061754 13210007 */  beq        $t9, $at, .L80061774
/* 62358 80061758 00000000 */   nop
/* 6235C 8006175C 24080019 */  addiu      $t0, $zero, 0x19
/* 62360 80061760 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62364 80061764 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 62368 80061768 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6236C 8006176C 240A002A */  addiu      $t2, $zero, 0x2a
/* 62370 80061770 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
.L80061774:
/* 62374 80061774 8FBF001C */  lw         $ra, 0x1c($sp)
/* 62378 80061778 8FB00018 */  lw         $s0, 0x18($sp)
/* 6237C 8006177C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 62380 80061780 03E00008 */  jr         $ra
/* 62384 80061784 00000000 */   nop

glabel func_80061788
/* 62388 80061788 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6238C 8006178C AFBF0014 */  sw         $ra, 0x14($sp)
/* 62390 80061790 AFA40028 */  sw         $a0, 0x28($sp)
/* 62394 80061794 AFA5002C */  sw         $a1, 0x2c($sp)
/* 62398 80061798 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 6239C 8006179C C424F66C */  lwc1       $f4, %lo(D_8013F66C)($at)
/* 623A0 800617A0 AFA0001C */  sw         $zero, 0x1c($sp)
/* 623A4 800617A4 8FA40028 */  lw         $a0, 0x28($sp)
/* 623A8 800617A8 0C0541BE */  jal        func_801506F8
/* 623AC 800617AC E7A40024 */   swc1      $f4, 0x24($sp)
/* 623B0 800617B0 E7A00020 */  swc1       $f0, 0x20($sp)
/* 623B4 800617B4 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 623B8 800617B8 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 623BC 800617BC 4608303C */  c.lt.s     $f6, $f8
/* 623C0 800617C0 00000000 */  nop
/* 623C4 800617C4 45000004 */  bc1f       .L800617D8
/* 623C8 800617C8 00000000 */   nop
/* 623CC 800617CC 240E0001 */  addiu      $t6, $zero, 1
/* 623D0 800617D0 AFAE001C */  sw         $t6, 0x1c($sp)
/* 623D4 800617D4 E7A60024 */  swc1       $f6, 0x24($sp)
.L800617D8:
/* 623D8 800617D8 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 623DC 800617DC 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 623E0 800617E0 24010001 */  addiu      $at, $zero, 1
/* 623E4 800617E4 11E10003 */  beq        $t7, $at, .L800617F4
/* 623E8 800617E8 24010006 */   addiu     $at, $zero, 6
/* 623EC 800617EC 15E1001E */  bne        $t7, $at, .L80061868
/* 623F0 800617F0 00000000 */   nop
.L800617F4:
/* 623F4 800617F4 44805000 */  mtc1       $zero, $f10
/* 623F8 800617F8 3C018014 */  lui        $at, %hi(D_8013F648)
/* 623FC 800617FC 24180005 */  addiu      $t8, $zero, 5
/* 62400 80061800 E42AF648 */  swc1       $f10, %lo(D_8013F648)($at)
/* 62404 80061804 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62408 80061808 E42AF644 */  swc1       $f10, %lo(D_8013F644)($at)
/* 6240C 8006180C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 62410 80061810 E42AF640 */  swc1       $f10, %lo(D_8013F640)($at)
/* 62414 80061814 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62418 80061818 AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 6241C 8006181C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62420 80061820 24190036 */  addiu      $t9, $zero, 0x36
/* 62424 80061824 AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 62428 80061828 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6242C 8006182C 2408000E */  addiu      $t0, $zero, 0xe
/* 62430 80061830 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 62434 80061834 44808000 */  mtc1       $zero, $f16
/* 62438 80061838 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6243C 8006183C 24090001 */  addiu      $t1, $zero, 1
/* 62440 80061840 AC29F61C */  sw         $t1, %lo(D_8013F61C)($at)
/* 62444 80061844 44809000 */  mtc1       $zero, $f18
/* 62448 80061848 3C018014 */  lui        $at, %hi(D_8013F658)
/* 6244C 8006184C E430F658 */  swc1       $f16, %lo(D_8013F658)($at)
/* 62450 80061850 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62454 80061854 E432F644 */  swc1       $f18, %lo(D_8013F644)($at)
/* 62458 80061858 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6245C 8006185C 240A0005 */  addiu      $t2, $zero, 5
/* 62460 80061860 1000010A */  b          .L80061C8C
/* 62464 80061864 AC2AF604 */   sw        $t2, %lo(D_8013F604)($at)
.L80061868:
/* 62468 80061868 8FAC0028 */  lw         $t4, 0x28($sp)
/* 6246C 8006186C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 62470 80061870 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 62474 80061874 000C6880 */  sll        $t5, $t4, 2
/* 62478 80061878 01AC6823 */  subu       $t5, $t5, $t4
/* 6247C 8006187C 000D6880 */  sll        $t5, $t5, 2
/* 62480 80061880 01AC6823 */  subu       $t5, $t5, $t4
/* 62484 80061884 000D6880 */  sll        $t5, $t5, 2
/* 62488 80061888 01AC6821 */  addu       $t5, $t5, $t4
/* 6248C 8006188C 000D6880 */  sll        $t5, $t5, 2
/* 62490 80061890 01AC6823 */  subu       $t5, $t5, $t4
/* 62494 80061894 000D6880 */  sll        $t5, $t5, 2
/* 62498 80061898 016D7021 */  addu       $t6, $t3, $t5
/* 6249C 8006189C 8DCF0058 */  lw         $t7, 0x58($t6)
/* 624A0 800618A0 31F80004 */  andi       $t8, $t7, 4
/* 624A4 800618A4 13000004 */  beqz       $t8, .L800618B8
/* 624A8 800618A8 00000000 */   nop
/* 624AC 800618AC 8FB9001C */  lw         $t9, 0x1c($sp)
/* 624B0 800618B0 132000DA */  beqz       $t9, .L80061C1C
/* 624B4 800618B4 00000000 */   nop
.L800618B8:
/* 624B8 800618B8 8FA90028 */  lw         $t1, 0x28($sp)
/* 624BC 800618BC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 624C0 800618C0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 624C4 800618C4 00095080 */  sll        $t2, $t1, 2
/* 624C8 800618C8 01495023 */  subu       $t2, $t2, $t1
/* 624CC 800618CC 000A5080 */  sll        $t2, $t2, 2
/* 624D0 800618D0 01495023 */  subu       $t2, $t2, $t1
/* 624D4 800618D4 000A5080 */  sll        $t2, $t2, 2
/* 624D8 800618D8 01495021 */  addu       $t2, $t2, $t1
/* 624DC 800618DC 000A5080 */  sll        $t2, $t2, 2
/* 624E0 800618E0 01495023 */  subu       $t2, $t2, $t1
/* 624E4 800618E4 000A5080 */  sll        $t2, $t2, 2
/* 624E8 800618E8 010A6021 */  addu       $t4, $t0, $t2
/* 624EC 800618EC 8D8B0058 */  lw         $t3, 0x58($t4)
/* 624F0 800618F0 316D0002 */  andi       $t5, $t3, 2
/* 624F4 800618F4 15A000B8 */  bnez       $t5, .L80061BD8
/* 624F8 800618F8 00000000 */   nop
/* 624FC 800618FC 44802000 */  mtc1       $zero, $f4
/* 62500 80061900 3C0E8014 */  lui        $t6, %hi(D_8013F604)
/* 62504 80061904 8DCEF604 */  lw         $t6, %lo(D_8013F604)($t6)
/* 62508 80061908 3C018014 */  lui        $at, %hi(D_8013F658)
/* 6250C 8006190C E424F658 */  swc1       $f4, %lo(D_8013F658)($at)
/* 62510 80061910 24010007 */  addiu      $at, $zero, 7
/* 62514 80061914 15C10012 */  bne        $t6, $at, .L80061960
/* 62518 80061918 00000000 */   nop
/* 6251C 8006191C 240F0015 */  addiu      $t7, $zero, 0x15
/* 62520 80061920 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62524 80061924 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 62528 80061928 3C018014 */  lui        $at, %hi(D_8013F608)
/* 6252C 8006192C 24180005 */  addiu      $t8, $zero, 5
/* 62530 80061930 AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 62534 80061934 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62538 80061938 24190036 */  addiu      $t9, $zero, 0x36
/* 6253C 8006193C AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 62540 80061940 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62544 80061944 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 62548 80061948 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6254C 8006194C 44804000 */  mtc1       $zero, $f8
/* 62550 80061950 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 62554 80061954 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62558 80061958 100000CC */  b          .L80061C8C
/* 6255C 8006195C E428F644 */   swc1      $f8, %lo(D_8013F644)($at)
.L80061960:
/* 62560 80061960 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 62564 80061964 3C01800E */  lui        $at, %hi(D_800DDF28)
/* 62568 80061968 D430DF28 */  ldc1       $f16, %lo(D_800DDF28)($at)
/* 6256C 8006196C 460032A1 */  cvt.d.s    $f10, $f6
/* 62570 80061970 4630503C */  c.lt.d     $f10, $f16
/* 62574 80061974 00000000 */  nop
/* 62578 80061978 45000009 */  bc1f       .L800619A0
/* 6257C 8006197C 3C018014 */   lui       $at, %hi(D_8013F644)
/* 62580 80061980 C432F644 */  lwc1       $f18, %lo(D_8013F644)($at)
/* 62584 80061984 44804800 */  mtc1       $zero, $f9
/* 62588 80061988 44804000 */  mtc1       $zero, $f8
/* 6258C 8006198C 46009121 */  cvt.d.s    $f4, $f18
/* 62590 80061990 4628203C */  c.lt.d     $f4, $f8
/* 62594 80061994 00000000 */  nop
/* 62598 80061998 45010018 */  bc1t       .L800619FC
/* 6259C 8006199C 00000000 */   nop
.L800619A0:
/* 625A0 800619A0 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 625A4 800619A4 3C01800E */  lui        $at, %hi(D_800DDF30)
/* 625A8 800619A8 D430DF30 */  ldc1       $f16, %lo(D_800DDF30)($at)
/* 625AC 800619AC 460032A1 */  cvt.d.s    $f10, $f6
/* 625B0 800619B0 462A803C */  c.lt.d     $f16, $f10
/* 625B4 800619B4 00000000 */  nop
/* 625B8 800619B8 45000021 */  bc1f       .L80061A40
/* 625BC 800619BC 3C018014 */   lui       $at, %hi(D_8013F644)
/* 625C0 800619C0 C432F644 */  lwc1       $f18, %lo(D_8013F644)($at)
/* 625C4 800619C4 44804800 */  mtc1       $zero, $f9
/* 625C8 800619C8 44804000 */  mtc1       $zero, $f8
/* 625CC 800619CC 46009121 */  cvt.d.s    $f4, $f18
/* 625D0 800619D0 4624403C */  c.lt.d     $f8, $f4
/* 625D4 800619D4 00000000 */  nop
/* 625D8 800619D8 45000019 */  bc1f       .L80061A40
/* 625DC 800619DC 3C014059 */   lui       $at, 0x4059
/* 625E0 800619E0 44813800 */  mtc1       $at, $f7
/* 625E4 800619E4 44803000 */  mtc1       $zero, $f6
/* 625E8 800619E8 00000000 */  nop
/* 625EC 800619EC 4626503C */  c.lt.d     $f10, $f6
/* 625F0 800619F0 00000000 */  nop
/* 625F4 800619F4 45000012 */  bc1f       .L80061A40
/* 625F8 800619F8 00000000 */   nop
.L800619FC:
/* 625FC 800619FC 24090005 */  addiu      $t1, $zero, 5
/* 62600 80061A00 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62604 80061A04 AC29F608 */  sw         $t1, %lo(D_8013F608)($at)
/* 62608 80061A08 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6260C 80061A0C 24080036 */  addiu      $t0, $zero, 0x36
/* 62610 80061A10 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 62614 80061A14 3C01C316 */  lui        $at, 0xc316
/* 62618 80061A18 44818000 */  mtc1       $at, $f16
/* 6261C 80061A1C 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62620 80061A20 240A0007 */  addiu      $t2, $zero, 7
/* 62624 80061A24 E430F644 */  swc1       $f16, %lo(D_8013F644)($at)
/* 62628 80061A28 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6262C 80061A2C AC2AF604 */  sw         $t2, %lo(D_8013F604)($at)
/* 62630 80061A30 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62634 80061A34 240C0001 */  addiu      $t4, $zero, 1
/* 62638 80061A38 10000094 */  b          .L80061C8C
/* 6263C 80061A3C AC2CF61C */   sw        $t4, %lo(D_8013F61C)($at)
.L80061A40:
/* 62640 80061A40 3C014260 */  lui        $at, 0x4260
/* 62644 80061A44 44812000 */  mtc1       $at, $f4
/* 62648 80061A48 C7B20024 */  lwc1       $f18, 0x24($sp)
/* 6264C 80061A4C 4604903E */  c.le.s     $f18, $f4
/* 62650 80061A50 00000000 */  nop
/* 62654 80061A54 45000010 */  bc1f       .L80061A98
/* 62658 80061A58 3C014049 */   lui       $at, 0x4049
/* 6265C 80061A5C 44814800 */  mtc1       $at, $f9
/* 62660 80061A60 44804000 */  mtc1       $zero, $f8
/* 62664 80061A64 460092A1 */  cvt.d.s    $f10, $f18
/* 62668 80061A68 3C01800E */  lui        $at, %hi(D_800DDF38)
/* 6266C 80061A6C 462A4181 */  sub.d      $f6, $f8, $f10
/* 62670 80061A70 D430DF38 */  ldc1       $f16, %lo(D_800DDF38)($at)
/* 62674 80061A74 3C014042 */  lui        $at, 0x4042
/* 62678 80061A78 44819800 */  mtc1       $at, $f19
/* 6267C 80061A7C 46303102 */  mul.d      $f4, $f6, $f16
/* 62680 80061A80 44809000 */  mtc1       $zero, $f18
/* 62684 80061A84 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62688 80061A88 46322200 */  add.d      $f8, $f4, $f18
/* 6268C 80061A8C 462042A0 */  cvt.s.d    $f10, $f8
/* 62690 80061A90 10000011 */  b          .L80061AD8
/* 62694 80061A94 E42AF644 */   swc1      $f10, %lo(D_8013F644)($at)
.L80061A98:
/* 62698 80061A98 C7B00024 */  lwc1       $f16, 0x24($sp)
/* 6269C 80061A9C 3C014049 */  lui        $at, 0x4049
/* 626A0 80061AA0 44813800 */  mtc1       $at, $f7
/* 626A4 80061AA4 44803000 */  mtc1       $zero, $f6
/* 626A8 80061AA8 46008121 */  cvt.d.s    $f4, $f16
/* 626AC 80061AAC 3C01800E */  lui        $at, %hi(D_800DDF40)
/* 626B0 80061AB0 46243481 */  sub.d      $f18, $f6, $f4
/* 626B4 80061AB4 D428DF40 */  ldc1       $f8, %lo(D_800DDF40)($at)
/* 626B8 80061AB8 3C01C042 */  lui        $at, 0xc042
/* 626BC 80061ABC 44818800 */  mtc1       $at, $f17
/* 626C0 80061AC0 46289282 */  mul.d      $f10, $f18, $f8
/* 626C4 80061AC4 44808000 */  mtc1       $zero, $f16
/* 626C8 80061AC8 3C018014 */  lui        $at, %hi(D_8013F644)
/* 626CC 80061ACC 46305180 */  add.d      $f6, $f10, $f16
/* 626D0 80061AD0 46203120 */  cvt.s.d    $f4, $f6
/* 626D4 80061AD4 E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
.L80061AD8:
/* 626D8 80061AD8 240B001F */  addiu      $t3, $zero, 0x1f
/* 626DC 80061ADC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 626E0 80061AE0 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 626E4 80061AE4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 626E8 80061AE8 240D0001 */  addiu      $t5, $zero, 1
/* 626EC 80061AEC AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 626F0 80061AF0 3C018014 */  lui        $at, %hi(D_8013F608)
/* 626F4 80061AF4 240E0005 */  addiu      $t6, $zero, 5
/* 626F8 80061AF8 AC2EF608 */  sw         $t6, %lo(D_8013F608)($at)
/* 626FC 80061AFC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62700 80061B00 240F0036 */  addiu      $t7, $zero, 0x36
/* 62704 80061B04 C7B20024 */  lwc1       $f18, 0x24($sp)
/* 62708 80061B08 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 6270C 80061B0C 3C01800E */  lui        $at, %hi(D_800DDF48)
/* 62710 80061B10 D42ADF48 */  ldc1       $f10, %lo(D_800DDF48)($at)
/* 62714 80061B14 46009221 */  cvt.d.s    $f8, $f18
/* 62718 80061B18 4628503C */  c.lt.d     $f10, $f8
/* 6271C 80061B1C 00000000 */  nop
/* 62720 80061B20 4500005A */  bc1f       .L80061C8C
/* 62724 80061B24 00000000 */   nop
/* 62728 80061B28 8FB8002C */  lw         $t8, 0x2c($sp)
/* 6272C 80061B2C 3C010001 */  lui        $at, 1
/* 62730 80061B30 8F190000 */  lw         $t9, ($t8)
/* 62734 80061B34 03214824 */  and        $t1, $t9, $at
/* 62738 80061B38 11200054 */  beqz       $t1, .L80061C8C
/* 6273C 80061B3C 00000000 */   nop
/* 62740 80061B40 8FAE0028 */  lw         $t6, 0x28($sp)
/* 62744 80061B44 2408001B */  addiu      $t0, $zero, 0x1b
/* 62748 80061B48 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6274C 80061B4C 000E7880 */  sll        $t7, $t6, 2
/* 62750 80061B50 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 62754 80061B54 01EE7823 */  subu       $t7, $t7, $t6
/* 62758 80061B58 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6275C 80061B5C 240A0035 */  addiu      $t2, $zero, 0x35
/* 62760 80061B60 000F7880 */  sll        $t7, $t7, 2
/* 62764 80061B64 AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 62768 80061B68 01EE7823 */  subu       $t7, $t7, $t6
/* 6276C 80061B6C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62770 80061B70 240C0005 */  addiu      $t4, $zero, 5
/* 62774 80061B74 000F7880 */  sll        $t7, $t7, 2
/* 62778 80061B78 AC2CF608 */  sw         $t4, %lo(D_8013F608)($at)
/* 6277C 80061B7C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 62780 80061B80 01EE7821 */  addu       $t7, $t7, $t6
/* 62784 80061B84 44808000 */  mtc1       $zero, $f16
/* 62788 80061B88 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 6278C 80061B8C 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62790 80061B90 240B0001 */  addiu      $t3, $zero, 1
/* 62794 80061B94 000F7880 */  sll        $t7, $t7, 2
/* 62798 80061B98 AC2BF604 */  sw         $t3, %lo(D_8013F604)($at)
/* 6279C 80061B9C 01EE7823 */  subu       $t7, $t7, $t6
/* 627A0 80061BA0 3C018014 */  lui        $at, %hi(D_8013F658)
/* 627A4 80061BA4 000F7880 */  sll        $t7, $t7, 2
/* 627A8 80061BA8 E430F658 */  swc1       $f16, %lo(D_8013F658)($at)
/* 627AC 80061BAC 01AFC021 */  addu       $t8, $t5, $t7
/* 627B0 80061BB0 C70600E4 */  lwc1       $f6, 0xe4($t8)
/* 627B4 80061BB4 3C014059 */  lui        $at, 0x4059
/* 627B8 80061BB8 44819800 */  mtc1       $at, $f19
/* 627BC 80061BBC 44809000 */  mtc1       $zero, $f18
/* 627C0 80061BC0 46003121 */  cvt.d.s    $f4, $f6
/* 627C4 80061BC4 3C018014 */  lui        $at, %hi(D_8013F638)
/* 627C8 80061BC8 46322200 */  add.d      $f8, $f4, $f18
/* 627CC 80061BCC 462042A0 */  cvt.s.d    $f10, $f8
/* 627D0 80061BD0 1000002E */  b          .L80061C8C
/* 627D4 80061BD4 E42AF638 */   swc1      $f10, %lo(D_8013F638)($at)
.L80061BD8:
/* 627D8 80061BD8 24190015 */  addiu      $t9, $zero, 0x15
/* 627DC 80061BDC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 627E0 80061BE0 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 627E4 80061BE4 3C018014 */  lui        $at, %hi(D_8013F608)
/* 627E8 80061BE8 24090005 */  addiu      $t1, $zero, 5
/* 627EC 80061BEC AC29F608 */  sw         $t1, %lo(D_8013F608)($at)
/* 627F0 80061BF0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 627F4 80061BF4 24080036 */  addiu      $t0, $zero, 0x36
/* 627F8 80061BF8 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 627FC 80061BFC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62800 80061C00 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 62804 80061C04 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62808 80061C08 44808000 */  mtc1       $zero, $f16
/* 6280C 80061C0C AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 62810 80061C10 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62814 80061C14 1000001D */  b          .L80061C8C
/* 62818 80061C18 E430F644 */   swc1      $f16, %lo(D_8013F644)($at)
.L80061C1C:
/* 6281C 80061C1C 240A0001 */  addiu      $t2, $zero, 1
/* 62820 80061C20 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62824 80061C24 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 62828 80061C28 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6282C 80061C2C 240C001B */  addiu      $t4, $zero, 0x1b
/* 62830 80061C30 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 62834 80061C34 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62838 80061C38 240B0035 */  addiu      $t3, $zero, 0x35
/* 6283C 80061C3C AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 62840 80061C40 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62844 80061C44 240E0005 */  addiu      $t6, $zero, 5
/* 62848 80061C48 AC2EF608 */  sw         $t6, %lo(D_8013F608)($at)
/* 6284C 80061C4C 44803000 */  mtc1       $zero, $f6
/* 62850 80061C50 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62854 80061C54 240D0001 */  addiu      $t5, $zero, 1
/* 62858 80061C58 AC2DF604 */  sw         $t5, %lo(D_8013F604)($at)
/* 6285C 80061C5C 44802000 */  mtc1       $zero, $f4
/* 62860 80061C60 3C018014 */  lui        $at, %hi(D_8013F658)
/* 62864 80061C64 E426F658 */  swc1       $f6, %lo(D_8013F658)($at)
/* 62868 80061C68 3C018014 */  lui        $at, %hi(D_8013F648)
/* 6286C 80061C6C E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 62870 80061C70 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62874 80061C74 E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
/* 62878 80061C78 44809000 */  mtc1       $zero, $f18
/* 6287C 80061C7C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 62880 80061C80 E424F640 */  swc1       $f4, %lo(D_8013F640)($at)
/* 62884 80061C84 3C018014 */  lui        $at, %hi(D_8013F658)
/* 62888 80061C88 E432F658 */  swc1       $f18, %lo(D_8013F658)($at)
.L80061C8C:
/* 6288C 80061C8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 62890 80061C90 27BD0028 */  addiu      $sp, $sp, 0x28
/* 62894 80061C94 03E00008 */  jr         $ra
/* 62898 80061C98 00000000 */   nop

glabel func_80061C9C
/* 6289C 80061C9C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 628A0 80061CA0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 628A4 80061CA4 AFA40040 */  sw         $a0, 0x40($sp)
/* 628A8 80061CA8 AFA50044 */  sw         $a1, 0x44($sp)
/* 628AC 80061CAC AFB00028 */  sw         $s0, 0x28($sp)
/* 628B0 80061CB0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 628B4 80061CB4 3C108014 */  lui        $s0, %hi(D_8013F60C)
/* 628B8 80061CB8 8E10F60C */  lw         $s0, %lo(D_8013F60C)($s0)
/* 628BC 80061CBC 24010033 */  addiu      $at, $zero, 0x33
/* 628C0 80061CC0 12010009 */  beq        $s0, $at, .L80061CE8
/* 628C4 80061CC4 24010034 */   addiu     $at, $zero, 0x34
/* 628C8 80061CC8 12010047 */  beq        $s0, $at, .L80061DE8
/* 628CC 80061CCC 24010035 */   addiu     $at, $zero, 0x35
/* 628D0 80061CD0 12010134 */  beq        $s0, $at, .L800621A4
/* 628D4 80061CD4 24010036 */   addiu     $at, $zero, 0x36
/* 628D8 80061CD8 120103F8 */  beq        $s0, $at, .L80062CBC
/* 628DC 80061CDC 00000000 */   nop
/* 628E0 80061CE0 1000040F */  b          .L80062D20
/* 628E4 80061CE4 00000000 */   nop
.L80061CE8:
/* 628E8 80061CE8 8FAF0044 */  lw         $t7, 0x44($sp)
/* 628EC 80061CEC 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 628F0 80061CF0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 628F4 80061CF4 000FC080 */  sll        $t8, $t7, 2
/* 628F8 80061CF8 030FC023 */  subu       $t8, $t8, $t7
/* 628FC 80061CFC 0018C080 */  sll        $t8, $t8, 2
/* 62900 80061D00 030FC023 */  subu       $t8, $t8, $t7
/* 62904 80061D04 0018C080 */  sll        $t8, $t8, 2
/* 62908 80061D08 030FC021 */  addu       $t8, $t8, $t7
/* 6290C 80061D0C 0018C080 */  sll        $t8, $t8, 2
/* 62910 80061D10 030FC023 */  subu       $t8, $t8, $t7
/* 62914 80061D14 0018C080 */  sll        $t8, $t8, 2
/* 62918 80061D18 01D8C821 */  addu       $t9, $t6, $t8
/* 6291C 80061D1C 8F280058 */  lw         $t0, 0x58($t9)
/* 62920 80061D20 31090001 */  andi       $t1, $t0, 1
/* 62924 80061D24 11200019 */  beqz       $t1, .L80061D8C
/* 62928 80061D28 00000000 */   nop
/* 6292C 80061D2C 240A0001 */  addiu      $t2, $zero, 1
/* 62930 80061D30 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62934 80061D34 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 62938 80061D38 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6293C 80061D3C 240B001B */  addiu      $t3, $zero, 0x1b
/* 62940 80061D40 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 62944 80061D44 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62948 80061D48 240C0035 */  addiu      $t4, $zero, 0x35
/* 6294C 80061D4C AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 62950 80061D50 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62954 80061D54 240D0005 */  addiu      $t5, $zero, 5
/* 62958 80061D58 AC2DF608 */  sw         $t5, %lo(D_8013F608)($at)
/* 6295C 80061D5C 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62960 80061D60 240E0001 */  addiu      $t6, $zero, 1
/* 62964 80061D64 AC2EF604 */  sw         $t6, %lo(D_8013F604)($at)
/* 62968 80061D68 0C017AC1 */  jal        func_8005EB04
/* 6296C 80061D6C 01E02025 */   or        $a0, $t7, $zero
/* 62970 80061D70 44802000 */  mtc1       $zero, $f4
/* 62974 80061D74 3C018014 */  lui        $at, %hi(D_8013F658)
/* 62978 80061D78 44803000 */  mtc1       $zero, $f6
/* 6297C 80061D7C E424F658 */  swc1       $f4, %lo(D_8013F658)($at)
/* 62980 80061D80 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 62984 80061D84 1000048E */  b          .L80062FC0
/* 62988 80061D88 E426F64C */   swc1      $f6, %lo(D_8013F64C)($at)
.L80061D8C:
/* 6298C 80061D8C 24180001 */  addiu      $t8, $zero, 1
/* 62990 80061D90 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62994 80061D94 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 62998 80061D98 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6299C 80061D9C 24190014 */  addiu      $t9, $zero, 0x14
/* 629A0 80061DA0 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 629A4 80061DA4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 629A8 80061DA8 24080034 */  addiu      $t0, $zero, 0x34
/* 629AC 80061DAC AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 629B0 80061DB0 3C018014 */  lui        $at, %hi(D_8013F604)
/* 629B4 80061DB4 24090001 */  addiu      $t1, $zero, 1
/* 629B8 80061DB8 AC29F604 */  sw         $t1, %lo(D_8013F604)($at)
/* 629BC 80061DBC 0C017AC1 */  jal        func_8005EB04
/* 629C0 80061DC0 8FA40044 */   lw        $a0, 0x44($sp)
/* 629C4 80061DC4 3C01800E */  lui        $at, %hi(D_800DDF50)
/* 629C8 80061DC8 C428DF50 */  lwc1       $f8, %lo(D_800DDF50)($at)
/* 629CC 80061DCC 3C018014 */  lui        $at, %hi(D_8013F658)
/* 629D0 80061DD0 E428F658 */  swc1       $f8, %lo(D_8013F658)($at)
/* 629D4 80061DD4 3C01800E */  lui        $at, %hi(D_800DDF54)
/* 629D8 80061DD8 C42ADF54 */  lwc1       $f10, %lo(D_800DDF54)($at)
/* 629DC 80061DDC 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 629E0 80061DE0 10000477 */  b          .L80062FC0
/* 629E4 80061DE4 E42AF64C */   swc1      $f10, %lo(D_8013F64C)($at)
.L80061DE8:
/* 629E8 80061DE8 0C00B222 */  jal        func_8002C888
/* 629EC 80061DEC 8FA40044 */   lw        $a0, 0x44($sp)
/* 629F0 80061DF0 1040000D */  beqz       $v0, .L80061E28
/* 629F4 80061DF4 00000000 */   nop
/* 629F8 80061DF8 240A00F0 */  addiu      $t2, $zero, 0xf0
/* 629FC 80061DFC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62A00 80061E00 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 62A04 80061E04 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62A08 80061E08 240B0034 */  addiu      $t3, $zero, 0x34
/* 62A0C 80061E0C AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 62A10 80061E10 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62A14 80061E14 240C0003 */  addiu      $t4, $zero, 3
/* 62A18 80061E18 AC2CF608 */  sw         $t4, %lo(D_8013F608)($at)
/* 62A1C 80061E1C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62A20 80061E20 240D0001 */  addiu      $t5, $zero, 1
/* 62A24 80061E24 AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
.L80061E28:
/* 62A28 80061E28 8FAE0040 */  lw         $t6, 0x40($sp)
/* 62A2C 80061E2C 3C010040 */  lui        $at, 0x40
/* 62A30 80061E30 8DCF0000 */  lw         $t7, ($t6)
/* 62A34 80061E34 01E1C024 */  and        $t8, $t7, $at
/* 62A38 80061E38 17000007 */  bnez       $t8, .L80061E58
/* 62A3C 80061E3C 00000000 */   nop
/* 62A40 80061E40 3C198014 */  lui        $t9, %hi(D_8013F604)
/* 62A44 80061E44 8F39F604 */  lw         $t9, %lo(D_8013F604)($t9)
/* 62A48 80061E48 2B210005 */  slti       $at, $t9, 5
/* 62A4C 80061E4C 14200043 */  bnez       $at, .L80061F5C
/* 62A50 80061E50 2B210008 */   slti      $at, $t9, 8
/* 62A54 80061E54 10200041 */  beqz       $at, .L80061F5C
.L80061E58:
/* 62A58 80061E58 3C018014 */   lui       $at, %hi(D_8013F664)
/* 62A5C 80061E5C C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 62A60 80061E60 3C014396 */  lui        $at, 0x4396
/* 62A64 80061E64 44819000 */  mtc1       $at, $f18
/* 62A68 80061E68 00000000 */  nop
/* 62A6C 80061E6C 4610903C */  c.lt.s     $f18, $f16
/* 62A70 80061E70 00000000 */  nop
/* 62A74 80061E74 45000006 */  bc1f       .L80061E90
/* 62A78 80061E78 00000000 */   nop
/* 62A7C 80061E7C 8FA40044 */  lw         $a0, 0x44($sp)
/* 62A80 80061E80 0C0185E2 */  jal        func_80061788
/* 62A84 80061E84 8FA50040 */   lw        $a1, 0x40($sp)
/* 62A88 80061E88 1000044D */  b          .L80062FC0
/* 62A8C 80061E8C 00000000 */   nop
.L80061E90:
/* 62A90 80061E90 3C018014 */  lui        $at, %hi(D_8013F664)
/* 62A94 80061E94 C424F664 */  lwc1       $f4, %lo(D_8013F664)($at)
/* 62A98 80061E98 3C014348 */  lui        $at, 0x4348
/* 62A9C 80061E9C 44813000 */  mtc1       $at, $f6
/* 62AA0 80061EA0 00000000 */  nop
/* 62AA4 80061EA4 4604303C */  c.lt.s     $f6, $f4
/* 62AA8 80061EA8 00000000 */  nop
/* 62AAC 80061EAC 45000444 */  bc1f       .L80062FC0
/* 62AB0 80061EB0 00000000 */   nop
/* 62AB4 80061EB4 8FAC0044 */  lw         $t4, 0x44($sp)
/* 62AB8 80061EB8 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62ABC 80061EBC AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 62AC0 80061EC0 000C6880 */  sll        $t5, $t4, 2
/* 62AC4 80061EC4 01AC6823 */  subu       $t5, $t5, $t4
/* 62AC8 80061EC8 000D6880 */  sll        $t5, $t5, 2
/* 62ACC 80061ECC 01AC6823 */  subu       $t5, $t5, $t4
/* 62AD0 80061ED0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62AD4 80061ED4 24080003 */  addiu      $t0, $zero, 3
/* 62AD8 80061ED8 000D6880 */  sll        $t5, $t5, 2
/* 62ADC 80061EDC AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 62AE0 80061EE0 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 62AE4 80061EE4 01AC6821 */  addu       $t5, $t5, $t4
/* 62AE8 80061EE8 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 62AEC 80061EEC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62AF0 80061EF0 2409000C */  addiu      $t1, $zero, 0xc
/* 62AF4 80061EF4 000D6880 */  sll        $t5, $t5, 2
/* 62AF8 80061EF8 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 62AFC 80061EFC 01AC6823 */  subu       $t5, $t5, $t4
/* 62B00 80061F00 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62B04 80061F04 240A0001 */  addiu      $t2, $zero, 1
/* 62B08 80061F08 000D6880 */  sll        $t5, $t5, 2
/* 62B0C 80061F0C AC2AF608 */  sw         $t2, %lo(D_8013F608)($at)
/* 62B10 80061F10 016D7021 */  addu       $t6, $t3, $t5
/* 62B14 80061F14 C5C80104 */  lwc1       $f8, 0x104($t6)
/* 62B18 80061F18 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 62B1C 80061F1C 46004287 */  neg.s      $f10, $f8
/* 62B20 80061F20 E42AF64C */  swc1       $f10, %lo(D_8013F64C)($at)
/* 62B24 80061F24 C5D00114 */  lwc1       $f16, 0x114($t6)
/* 62B28 80061F28 3C018014 */  lui        $at, %hi(D_8013F650)
/* 62B2C 80061F2C 46008487 */  neg.s      $f18, $f16
/* 62B30 80061F30 E432F650 */  swc1       $f18, %lo(D_8013F650)($at)
/* 62B34 80061F34 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 62B38 80061F38 C424F65C */  lwc1       $f4, %lo(D_8013F65C)($at)
/* 62B3C 80061F3C 3C01800E */  lui        $at, %hi(D_800DDF58)
/* 62B40 80061F40 D428DF58 */  ldc1       $f8, %lo(D_800DDF58)($at)
/* 62B44 80061F44 460021A1 */  cvt.d.s    $f6, $f4
/* 62B48 80061F48 3C018014 */  lui        $at, %hi(D_8013F638)
/* 62B4C 80061F4C 46283280 */  add.d      $f10, $f6, $f8
/* 62B50 80061F50 46205420 */  cvt.s.d    $f16, $f10
/* 62B54 80061F54 1000041A */  b          .L80062FC0
/* 62B58 80061F58 E430F638 */   swc1      $f16, %lo(D_8013F638)($at)
.L80061F5C:
/* 62B5C 80061F5C 3C018014 */  lui        $at, %hi(D_8013F664)
/* 62B60 80061F60 C432F664 */  lwc1       $f18, %lo(D_8013F664)($at)
/* 62B64 80061F64 3C014348 */  lui        $at, 0x4348
/* 62B68 80061F68 44812000 */  mtc1       $at, $f4
/* 62B6C 80061F6C 00000000 */  nop
/* 62B70 80061F70 4612203C */  c.lt.s     $f4, $f18
/* 62B74 80061F74 00000000 */  nop
/* 62B78 80061F78 45000411 */  bc1f       .L80062FC0
/* 62B7C 80061F7C 3C018014 */   lui       $at, %hi(D_8013F624)
/* 62B80 80061F80 C426F624 */  lwc1       $f6, %lo(D_8013F624)($at)
/* 62B84 80061F84 3C014024 */  lui        $at, 0x4024
/* 62B88 80061F88 44815800 */  mtc1       $at, $f11
/* 62B8C 80061F8C 44805000 */  mtc1       $zero, $f10
/* 62B90 80061F90 46003221 */  cvt.d.s    $f8, $f6
/* 62B94 80061F94 462A403C */  c.lt.d     $f8, $f10
/* 62B98 80061F98 00000000 */  nop
/* 62B9C 80061F9C 45010006 */  bc1t       .L80061FB8
/* 62BA0 80061FA0 00000000 */   nop
/* 62BA4 80061FA4 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 62BA8 80061FA8 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 62BAC 80061FAC 24010002 */  addiu      $at, $zero, 2
/* 62BB0 80061FB0 15E10403 */  bne        $t7, $at, .L80062FC0
/* 62BB4 80061FB4 00000000 */   nop
.L80061FB8:
/* 62BB8 80061FB8 8FB90044 */  lw         $t9, 0x44($sp)
/* 62BBC 80061FBC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 62BC0 80061FC0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 62BC4 80061FC4 00194080 */  sll        $t0, $t9, 2
/* 62BC8 80061FC8 01194023 */  subu       $t0, $t0, $t9
/* 62BCC 80061FCC 00084080 */  sll        $t0, $t0, 2
/* 62BD0 80061FD0 01194023 */  subu       $t0, $t0, $t9
/* 62BD4 80061FD4 00084080 */  sll        $t0, $t0, 2
/* 62BD8 80061FD8 01194021 */  addu       $t0, $t0, $t9
/* 62BDC 80061FDC 00084080 */  sll        $t0, $t0, 2
/* 62BE0 80061FE0 01194023 */  subu       $t0, $t0, $t9
/* 62BE4 80061FE4 00084080 */  sll        $t0, $t0, 2
/* 62BE8 80061FE8 03084821 */  addu       $t1, $t8, $t0
/* 62BEC 80061FEC 0C016929 */  jal        func_8005A4A4
/* 62BF0 80061FF0 C52C0104 */   lwc1      $f12, 0x104($t1)
/* 62BF4 80061FF4 3C01800E */  lui        $at, %hi(D_800DDF60)
/* 62BF8 80061FF8 D432DF60 */  ldc1       $f18, %lo(D_800DDF60)($at)
/* 62BFC 80061FFC 46000421 */  cvt.d.s    $f16, $f0
/* 62C00 80062000 4632803C */  c.lt.d     $f16, $f18
/* 62C04 80062004 00000000 */  nop
/* 62C08 80062008 45000010 */  bc1f       .L8006204C
/* 62C0C 8006200C 00000000 */   nop
/* 62C10 80062010 240A0018 */  addiu      $t2, $zero, 0x18
/* 62C14 80062014 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62C18 80062018 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 62C1C 8006201C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62C20 80062020 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 62C24 80062024 44802000 */  mtc1       $zero, $f4
/* 62C28 80062028 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62C2C 8006202C 240C0035 */  addiu      $t4, $zero, 0x35
/* 62C30 80062030 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 62C34 80062034 3C018014 */  lui        $at, %hi(D_8013F658)
/* 62C38 80062038 E424F658 */  swc1       $f4, %lo(D_8013F658)($at)
/* 62C3C 8006203C 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62C40 80062040 240B0001 */  addiu      $t3, $zero, 1
/* 62C44 80062044 100003DE */  b          .L80062FC0
/* 62C48 80062048 AC2BF604 */   sw        $t3, %lo(D_8013F604)($at)
.L8006204C:
/* 62C4C 8006204C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 62C50 80062050 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 62C54 80062054 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 62C58 80062058 000E7880 */  sll        $t7, $t6, 2
/* 62C5C 8006205C 01EE7823 */  subu       $t7, $t7, $t6
/* 62C60 80062060 000F7880 */  sll        $t7, $t7, 2
/* 62C64 80062064 01EE7823 */  subu       $t7, $t7, $t6
/* 62C68 80062068 000F7880 */  sll        $t7, $t7, 2
/* 62C6C 8006206C 01EE7821 */  addu       $t7, $t7, $t6
/* 62C70 80062070 000F7880 */  sll        $t7, $t7, 2
/* 62C74 80062074 01EE7823 */  subu       $t7, $t7, $t6
/* 62C78 80062078 000F7880 */  sll        $t7, $t7, 2
/* 62C7C 8006207C 01AFC821 */  addu       $t9, $t5, $t7
/* 62C80 80062080 C7260104 */  lwc1       $f6, 0x104($t9)
/* 62C84 80062084 3C01800E */  lui        $at, %hi(D_800DDF68)
/* 62C88 80062088 D42ADF68 */  ldc1       $f10, %lo(D_800DDF68)($at)
/* 62C8C 8006208C 46003221 */  cvt.d.s    $f8, $f6
/* 62C90 80062090 462A4401 */  sub.d      $f16, $f8, $f10
/* 62C94 80062094 0C016929 */  jal        func_8005A4A4
/* 62C98 80062098 46208320 */   cvt.s.d   $f12, $f16
/* 62C9C 8006209C 3C01800E */  lui        $at, %hi(D_800DDF70)
/* 62CA0 800620A0 D424DF70 */  ldc1       $f4, %lo(D_800DDF70)($at)
/* 62CA4 800620A4 460004A1 */  cvt.d.s    $f18, $f0
/* 62CA8 800620A8 4624903C */  c.lt.d     $f18, $f4
/* 62CAC 800620AC 00000000 */  nop
/* 62CB0 800620B0 45000020 */  bc1f       .L80062134
/* 62CB4 800620B4 00000000 */   nop
/* 62CB8 800620B8 8FA80044 */  lw         $t0, 0x44($sp)
/* 62CBC 800620BC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 62CC0 800620C0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 62CC4 800620C4 00084880 */  sll        $t1, $t0, 2
/* 62CC8 800620C8 01284823 */  subu       $t1, $t1, $t0
/* 62CCC 800620CC 00094880 */  sll        $t1, $t1, 2
/* 62CD0 800620D0 01284823 */  subu       $t1, $t1, $t0
/* 62CD4 800620D4 00094880 */  sll        $t1, $t1, 2
/* 62CD8 800620D8 01284821 */  addu       $t1, $t1, $t0
/* 62CDC 800620DC 00094880 */  sll        $t1, $t1, 2
/* 62CE0 800620E0 01284823 */  subu       $t1, $t1, $t0
/* 62CE4 800620E4 00094880 */  sll        $t1, $t1, 2
/* 62CE8 800620E8 03095021 */  addu       $t2, $t8, $t1
/* 62CEC 800620EC C5460104 */  lwc1       $f6, 0x104($t2)
/* 62CF0 800620F0 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 62CF4 800620F4 44805000 */  mtc1       $zero, $f10
/* 62CF8 800620F8 46003207 */  neg.s      $f8, $f6
/* 62CFC 800620FC 240C0001 */  addiu      $t4, $zero, 1
/* 62D00 80062100 E428F64C */  swc1       $f8, %lo(D_8013F64C)($at)
/* 62D04 80062104 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62D08 80062108 AC2CF61C */  sw         $t4, %lo(D_8013F61C)($at)
/* 62D0C 8006210C 3C018014 */  lui        $at, %hi(D_8013F648)
/* 62D10 80062110 E42AF648 */  swc1       $f10, %lo(D_8013F648)($at)
/* 62D14 80062114 3C018014 */  lui        $at, %hi(D_8013F644)
/* 62D18 80062118 E42AF644 */  swc1       $f10, %lo(D_8013F644)($at)
/* 62D1C 8006211C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 62D20 80062120 E42AF640 */  swc1       $f10, %lo(D_8013F640)($at)
/* 62D24 80062124 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62D28 80062128 240B0002 */  addiu      $t3, $zero, 2
/* 62D2C 8006212C 100003A4 */  b          .L80062FC0
/* 62D30 80062130 AC2BF604 */   sw        $t3, %lo(D_8013F604)($at)
.L80062134:
/* 62D34 80062134 8FAD0044 */  lw         $t5, 0x44($sp)
/* 62D38 80062138 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 62D3C 8006213C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 62D40 80062140 000D7880 */  sll        $t7, $t5, 2
/* 62D44 80062144 01ED7823 */  subu       $t7, $t7, $t5
/* 62D48 80062148 000F7880 */  sll        $t7, $t7, 2
/* 62D4C 8006214C 01ED7823 */  subu       $t7, $t7, $t5
/* 62D50 80062150 000F7880 */  sll        $t7, $t7, 2
/* 62D54 80062154 01ED7821 */  addu       $t7, $t7, $t5
/* 62D58 80062158 000F7880 */  sll        $t7, $t7, 2
/* 62D5C 8006215C 01ED7823 */  subu       $t7, $t7, $t5
/* 62D60 80062160 000F7880 */  sll        $t7, $t7, 2
/* 62D64 80062164 3C01800E */  lui        $at, %hi(D_800DDF78)
/* 62D68 80062168 01CFC821 */  addu       $t9, $t6, $t7
/* 62D6C 8006216C C7300104 */  lwc1       $f16, 0x104($t9)
/* 62D70 80062170 C42CDF78 */  lwc1       $f12, %lo(D_800DDF78)($at)
/* 62D74 80062174 3C01800E */  lui        $at, %hi(D_800DDF80)
/* 62D78 80062178 D424DF80 */  ldc1       $f4, %lo(D_800DDF80)($at)
/* 62D7C 8006217C 460084A1 */  cvt.d.s    $f18, $f16
/* 62D80 80062180 46322181 */  sub.d      $f6, $f4, $f18
/* 62D84 80062184 0C016AAC */  jal        func_8005AAB0
/* 62D88 80062188 462033A0 */   cvt.s.d   $f14, $f6
/* 62D8C 8006218C 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 62D90 80062190 E420F64C */  swc1       $f0, %lo(D_8013F64C)($at)
/* 62D94 80062194 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62D98 80062198 24080001 */  addiu      $t0, $zero, 1
/* 62D9C 8006219C 10000388 */  b          .L80062FC0
/* 62DA0 800621A0 AC28F61C */   sw        $t0, %lo(D_8013F61C)($at)
.L800621A4:
/* 62DA4 800621A4 0C00B222 */  jal        func_8002C888
/* 62DA8 800621A8 8FA40044 */   lw        $a0, 0x44($sp)
/* 62DAC 800621AC 1040000E */  beqz       $v0, .L800621E8
/* 62DB0 800621B0 00000000 */   nop
/* 62DB4 800621B4 2418005B */  addiu      $t8, $zero, 0x5b
/* 62DB8 800621B8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62DBC 800621BC AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 62DC0 800621C0 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62DC4 800621C4 24090003 */  addiu      $t1, $zero, 3
/* 62DC8 800621C8 AC29F608 */  sw         $t1, %lo(D_8013F608)($at)
/* 62DCC 800621CC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62DD0 800621D0 240A0035 */  addiu      $t2, $zero, 0x35
/* 62DD4 800621D4 AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 62DD8 800621D8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62DDC 800621DC 240C0001 */  addiu      $t4, $zero, 1
/* 62DE0 800621E0 10000266 */  b          .L80062B7C
/* 62DE4 800621E4 AC2CF61C */   sw        $t4, %lo(D_8013F61C)($at)
.L800621E8:
/* 62DE8 800621E8 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 62DEC 800621EC 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 62DF0 800621F0 24010018 */  addiu      $at, $zero, 0x18
/* 62DF4 800621F4 12010007 */  beq        $s0, $at, .L80062214
/* 62DF8 800621F8 2401001B */   addiu     $at, $zero, 0x1b
/* 62DFC 800621FC 1201005C */  beq        $s0, $at, .L80062370
/* 62E00 80062200 2401003A */   addiu     $at, $zero, 0x3a
/* 62E04 80062204 120101BE */  beq        $s0, $at, .L80062900
/* 62E08 80062208 00000000 */   nop
/* 62E0C 8006220C 1000025B */  b          .L80062B7C
/* 62E10 80062210 00000000 */   nop
.L80062214:
/* 62E14 80062214 8FAB0040 */  lw         $t3, 0x40($sp)
/* 62E18 80062218 3C010040 */  lui        $at, 0x40
/* 62E1C 8006221C 8D6D0000 */  lw         $t5, ($t3)
/* 62E20 80062220 01A17024 */  and        $t6, $t5, $at
/* 62E24 80062224 15C00007 */  bnez       $t6, .L80062244
/* 62E28 80062228 00000000 */   nop
/* 62E2C 8006222C 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 62E30 80062230 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 62E34 80062234 29E10005 */  slti       $at, $t7, 5
/* 62E38 80062238 14200043 */  bnez       $at, .L80062348
/* 62E3C 8006223C 29E10008 */   slti      $at, $t7, 8
/* 62E40 80062240 10200041 */  beqz       $at, .L80062348
.L80062244:
/* 62E44 80062244 3C018014 */   lui       $at, %hi(D_8013F664)
/* 62E48 80062248 C428F664 */  lwc1       $f8, %lo(D_8013F664)($at)
/* 62E4C 8006224C 3C014396 */  lui        $at, 0x4396
/* 62E50 80062250 44815000 */  mtc1       $at, $f10
/* 62E54 80062254 00000000 */  nop
/* 62E58 80062258 4608503C */  c.lt.s     $f10, $f8
/* 62E5C 8006225C 00000000 */  nop
/* 62E60 80062260 45000006 */  bc1f       .L8006227C
/* 62E64 80062264 00000000 */   nop
/* 62E68 80062268 8FA40044 */  lw         $a0, 0x44($sp)
/* 62E6C 8006226C 0C0185E2 */  jal        func_80061788
/* 62E70 80062270 8FA50040 */   lw        $a1, 0x40($sp)
/* 62E74 80062274 10000241 */  b          .L80062B7C
/* 62E78 80062278 00000000 */   nop
.L8006227C:
/* 62E7C 8006227C 3C018014 */  lui        $at, %hi(D_8013F664)
/* 62E80 80062280 C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 62E84 80062284 3C014348 */  lui        $at, 0x4348
/* 62E88 80062288 44812000 */  mtc1       $at, $f4
/* 62E8C 8006228C 00000000 */  nop
/* 62E90 80062290 4610203C */  c.lt.s     $f4, $f16
/* 62E94 80062294 00000000 */  nop
/* 62E98 80062298 45000238 */  bc1f       .L80062B7C
/* 62E9C 8006229C 00000000 */   nop
/* 62EA0 800622A0 8FAA0044 */  lw         $t2, 0x44($sp)
/* 62EA4 800622A4 3C018014 */  lui        $at, %hi(D_8013F604)
/* 62EA8 800622A8 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 62EAC 800622AC 000A6080 */  sll        $t4, $t2, 2
/* 62EB0 800622B0 018A6023 */  subu       $t4, $t4, $t2
/* 62EB4 800622B4 000C6080 */  sll        $t4, $t4, 2
/* 62EB8 800622B8 018A6023 */  subu       $t4, $t4, $t2
/* 62EBC 800622BC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62EC0 800622C0 24190003 */  addiu      $t9, $zero, 3
/* 62EC4 800622C4 000C6080 */  sll        $t4, $t4, 2
/* 62EC8 800622C8 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 62ECC 800622CC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 62ED0 800622D0 018A6021 */  addu       $t4, $t4, $t2
/* 62ED4 800622D4 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 62ED8 800622D8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 62EDC 800622DC 2408000C */  addiu      $t0, $zero, 0xc
/* 62EE0 800622E0 000C6080 */  sll        $t4, $t4, 2
/* 62EE4 800622E4 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 62EE8 800622E8 018A6023 */  subu       $t4, $t4, $t2
/* 62EEC 800622EC 3C018014 */  lui        $at, %hi(D_8013F608)
/* 62EF0 800622F0 24180001 */  addiu      $t8, $zero, 1
/* 62EF4 800622F4 000C6080 */  sll        $t4, $t4, 2
/* 62EF8 800622F8 AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 62EFC 800622FC 012C5821 */  addu       $t3, $t1, $t4
/* 62F00 80062300 C5720104 */  lwc1       $f18, 0x104($t3)
/* 62F04 80062304 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 62F08 80062308 46009187 */  neg.s      $f6, $f18
/* 62F0C 8006230C E426F64C */  swc1       $f6, %lo(D_8013F64C)($at)
/* 62F10 80062310 C5680114 */  lwc1       $f8, 0x114($t3)
/* 62F14 80062314 3C018014 */  lui        $at, %hi(D_8013F650)
/* 62F18 80062318 46004287 */  neg.s      $f10, $f8
/* 62F1C 8006231C E42AF650 */  swc1       $f10, %lo(D_8013F650)($at)
/* 62F20 80062320 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 62F24 80062324 C430F65C */  lwc1       $f16, %lo(D_8013F65C)($at)
/* 62F28 80062328 3C01800E */  lui        $at, %hi(D_800DDF88)
/* 62F2C 8006232C D432DF88 */  ldc1       $f18, %lo(D_800DDF88)($at)
/* 62F30 80062330 46008121 */  cvt.d.s    $f4, $f16
/* 62F34 80062334 3C018014 */  lui        $at, %hi(D_8013F638)
/* 62F38 80062338 46322180 */  add.d      $f6, $f4, $f18
/* 62F3C 8006233C 46203220 */  cvt.s.d    $f8, $f6
/* 62F40 80062340 1000020E */  b          .L80062B7C
/* 62F44 80062344 E428F638 */   swc1      $f8, %lo(D_8013F638)($at)
.L80062348:
/* 62F48 80062348 240D001B */  addiu      $t5, $zero, 0x1b
/* 62F4C 8006234C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 62F50 80062350 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 62F54 80062354 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 62F58 80062358 240E0001 */  addiu      $t6, $zero, 1
/* 62F5C 8006235C 44805000 */  mtc1       $zero, $f10
/* 62F60 80062360 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 62F64 80062364 3C018014 */  lui        $at, %hi(D_8013F658)
/* 62F68 80062368 10000204 */  b          .L80062B7C
/* 62F6C 8006236C E42AF658 */   swc1      $f10, %lo(D_8013F658)($at)
.L80062370:
/* 62F70 80062370 8FAF0040 */  lw         $t7, 0x40($sp)
/* 62F74 80062374 3C010040 */  lui        $at, 0x40
/* 62F78 80062378 8DF90000 */  lw         $t9, ($t7)
/* 62F7C 8006237C 03214024 */  and        $t0, $t9, $at
/* 62F80 80062380 15000007 */  bnez       $t0, .L800623A0
/* 62F84 80062384 00000000 */   nop
/* 62F88 80062388 3C188014 */  lui        $t8, %hi(D_8013F604)
/* 62F8C 8006238C 8F18F604 */  lw         $t8, %lo(D_8013F604)($t8)
/* 62F90 80062390 2B010005 */  slti       $at, $t8, 5
/* 62F94 80062394 14200030 */  bnez       $at, .L80062458
/* 62F98 80062398 2B010008 */   slti      $at, $t8, 8
/* 62F9C 8006239C 1020002E */  beqz       $at, .L80062458
.L800623A0:
/* 62FA0 800623A0 3C018014 */   lui       $at, %hi(D_8013F664)
/* 62FA4 800623A4 C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 62FA8 800623A8 3C014396 */  lui        $at, 0x4396
/* 62FAC 800623AC 44812000 */  mtc1       $at, $f4
/* 62FB0 800623B0 00000000 */  nop
/* 62FB4 800623B4 4610203C */  c.lt.s     $f4, $f16
/* 62FB8 800623B8 00000000 */  nop
/* 62FBC 800623BC 45000006 */  bc1f       .L800623D8
/* 62FC0 800623C0 00000000 */   nop
/* 62FC4 800623C4 8FA40044 */  lw         $a0, 0x44($sp)
/* 62FC8 800623C8 0C0185E2 */  jal        func_80061788
/* 62FCC 800623CC 8FA50040 */   lw        $a1, 0x40($sp)
/* 62FD0 800623D0 100001EA */  b          .L80062B7C
/* 62FD4 800623D4 00000000 */   nop
.L800623D8:
/* 62FD8 800623D8 3C018014 */  lui        $at, %hi(D_8013F664)
/* 62FDC 800623DC C432F664 */  lwc1       $f18, %lo(D_8013F664)($at)
/* 62FE0 800623E0 3C014348 */  lui        $at, 0x4348
/* 62FE4 800623E4 44813000 */  mtc1       $at, $f6
/* 62FE8 800623E8 00000000 */  nop
/* 62FEC 800623EC 4612303C */  c.lt.s     $f6, $f18
/* 62FF0 800623F0 00000000 */  nop
/* 62FF4 800623F4 450001E1 */  bc1f       .L80062B7C
/* 62FF8 800623F8 3C018014 */   lui       $at, %hi(D_8013F604)
/* 62FFC 800623FC AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 63000 80062400 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63004 80062404 240A0003 */  addiu      $t2, $zero, 3
/* 63008 80062408 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 6300C 8006240C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63010 80062410 2409000C */  addiu      $t1, $zero, 0xc
/* 63014 80062414 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 63018 80062418 44804000 */  mtc1       $zero, $f8
/* 6301C 8006241C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 63020 80062420 240C0001 */  addiu      $t4, $zero, 1
/* 63024 80062424 AC2CF608 */  sw         $t4, %lo(D_8013F608)($at)
/* 63028 80062428 3C018014 */  lui        $at, %hi(D_8013F658)
/* 6302C 8006242C E428F658 */  swc1       $f8, %lo(D_8013F658)($at)
/* 63030 80062430 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 63034 80062434 C42AF65C */  lwc1       $f10, %lo(D_8013F65C)($at)
/* 63038 80062438 3C01800E */  lui        $at, %hi(D_800DDF90)
/* 6303C 8006243C D424DF90 */  ldc1       $f4, %lo(D_800DDF90)($at)
/* 63040 80062440 46005421 */  cvt.d.s    $f16, $f10
/* 63044 80062444 3C018014 */  lui        $at, %hi(D_8013F638)
/* 63048 80062448 46248480 */  add.d      $f18, $f16, $f4
/* 6304C 8006244C 462091A0 */  cvt.s.d    $f6, $f18
/* 63050 80062450 100001CA */  b          .L80062B7C
/* 63054 80062454 E426F638 */   swc1      $f6, %lo(D_8013F638)($at)
.L80062458:
/* 63058 80062458 8FAD0044 */  lw         $t5, 0x44($sp)
/* 6305C 8006245C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 63060 80062460 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 63064 80062464 000D7080 */  sll        $t6, $t5, 2
/* 63068 80062468 01CD7023 */  subu       $t6, $t6, $t5
/* 6306C 8006246C 000E7080 */  sll        $t6, $t6, 2
/* 63070 80062470 01CD7023 */  subu       $t6, $t6, $t5
/* 63074 80062474 000E7080 */  sll        $t6, $t6, 2
/* 63078 80062478 01CD7021 */  addu       $t6, $t6, $t5
/* 6307C 8006247C 000E7080 */  sll        $t6, $t6, 2
/* 63080 80062480 01CD7023 */  subu       $t6, $t6, $t5
/* 63084 80062484 000E7080 */  sll        $t6, $t6, 2
/* 63088 80062488 016E7821 */  addu       $t7, $t3, $t6
/* 6308C 8006248C C5E80104 */  lwc1       $f8, 0x104($t7)
/* 63090 80062490 3C01800E */  lui        $at, %hi(D_800DDF98)
/* 63094 80062494 D430DF98 */  ldc1       $f16, %lo(D_800DDF98)($at)
/* 63098 80062498 460042A1 */  cvt.d.s    $f10, $f8
/* 6309C 8006249C 462A8101 */  sub.d      $f4, $f16, $f10
/* 630A0 800624A0 0C016929 */  jal        func_8005A4A4
/* 630A4 800624A4 46202320 */   cvt.s.d   $f12, $f4
/* 630A8 800624A8 3C01800E */  lui        $at, %hi(D_800DDFA0)
/* 630AC 800624AC D426DFA0 */  ldc1       $f6, %lo(D_800DDFA0)($at)
/* 630B0 800624B0 460004A1 */  cvt.d.s    $f18, $f0
/* 630B4 800624B4 0000C825 */  or         $t9, $zero, $zero
/* 630B8 800624B8 4626903C */  c.lt.d     $f18, $f6
/* 630BC 800624BC 00000000 */  nop
/* 630C0 800624C0 45000002 */  bc1f       .L800624CC
/* 630C4 800624C4 00000000 */   nop
/* 630C8 800624C8 24190001 */  addiu      $t9, $zero, 1
.L800624CC:
/* 630CC 800624CC 00194600 */  sll        $t0, $t9, 0x18
/* 630D0 800624D0 0008C603 */  sra        $t8, $t0, 0x18
/* 630D4 800624D4 1700000B */  bnez       $t8, .L80062504
/* 630D8 800624D8 A3B9003F */   sb        $t9, 0x3f($sp)
/* 630DC 800624DC 3C018014 */  lui        $at, %hi(D_8013F624)
/* 630E0 800624E0 C428F624 */  lwc1       $f8, %lo(D_8013F624)($at)
/* 630E4 800624E4 3C014024 */  lui        $at, 0x4024
/* 630E8 800624E8 44815800 */  mtc1       $at, $f11
/* 630EC 800624EC 44805000 */  mtc1       $zero, $f10
/* 630F0 800624F0 46004421 */  cvt.d.s    $f16, $f8
/* 630F4 800624F4 4630503C */  c.lt.d     $f10, $f16
/* 630F8 800624F8 00000000 */  nop
/* 630FC 800624FC 450000BC */  bc1f       .L800627F0
/* 63100 80062500 00000000 */   nop
.L80062504:
/* 63104 80062504 83AA003F */  lb         $t2, 0x3f($sp)
/* 63108 80062508 11400060 */  beqz       $t2, .L8006268C
/* 6310C 8006250C 00000000 */   nop
/* 63110 80062510 8FAC0044 */  lw         $t4, 0x44($sp)
/* 63114 80062514 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 63118 80062518 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 6311C 8006251C 000C6880 */  sll        $t5, $t4, 2
/* 63120 80062520 01AC6823 */  subu       $t5, $t5, $t4
/* 63124 80062524 000D6880 */  sll        $t5, $t5, 2
/* 63128 80062528 01AC6823 */  subu       $t5, $t5, $t4
/* 6312C 8006252C 000D6880 */  sll        $t5, $t5, 2
/* 63130 80062530 01AC6821 */  addu       $t5, $t5, $t4
/* 63134 80062534 000D6880 */  sll        $t5, $t5, 2
/* 63138 80062538 01AC6823 */  subu       $t5, $t5, $t4
/* 6313C 8006253C 000D6880 */  sll        $t5, $t5, 2
/* 63140 80062540 012D5821 */  addu       $t3, $t1, $t5
/* 63144 80062544 8D6E0058 */  lw         $t6, 0x58($t3)
/* 63148 80062548 31CF0003 */  andi       $t7, $t6, 3
/* 6314C 8006254C 15E00013 */  bnez       $t7, .L8006259C
/* 63150 80062550 00000000 */   nop
/* 63154 80062554 2419003A */  addiu      $t9, $zero, 0x3a
/* 63158 80062558 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6315C 8006255C AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 63160 80062560 44802000 */  mtc1       $zero, $f4
/* 63164 80062564 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 63168 80062568 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6316C 8006256C 3C018014 */  lui        $at, %hi(D_8013F658)
/* 63170 80062570 E424F658 */  swc1       $f4, %lo(D_8013F658)($at)
/* 63174 80062574 C57200D8 */  lwc1       $f18, 0xd8($t3)
/* 63178 80062578 3C014018 */  lui        $at, 0x4018
/* 6317C 8006257C 44814800 */  mtc1       $at, $f9
/* 63180 80062580 44804000 */  mtc1       $zero, $f8
/* 63184 80062584 460091A1 */  cvt.d.s    $f6, $f18
/* 63188 80062588 3C018014 */  lui        $at, %hi(D_8013F644)
/* 6318C 8006258C 46283400 */  add.d      $f16, $f6, $f8
/* 63190 80062590 462082A0 */  cvt.s.d    $f10, $f16
/* 63194 80062594 10000179 */  b          .L80062B7C
/* 63198 80062598 E42AF644 */   swc1      $f10, %lo(D_8013F644)($at)
.L8006259C:
/* 6319C 8006259C 8FB80044 */  lw         $t8, 0x44($sp)
/* 631A0 800625A0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 631A4 800625A4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 631A8 800625A8 00185080 */  sll        $t2, $t8, 2
/* 631AC 800625AC 01585023 */  subu       $t2, $t2, $t8
/* 631B0 800625B0 000A5080 */  sll        $t2, $t2, 2
/* 631B4 800625B4 01585023 */  subu       $t2, $t2, $t8
/* 631B8 800625B8 000A5080 */  sll        $t2, $t2, 2
/* 631BC 800625BC 01585021 */  addu       $t2, $t2, $t8
/* 631C0 800625C0 000A5080 */  sll        $t2, $t2, 2
/* 631C4 800625C4 01585023 */  subu       $t2, $t2, $t8
/* 631C8 800625C8 000A5080 */  sll        $t2, $t2, 2
/* 631CC 800625CC 010A6021 */  addu       $t4, $t0, $t2
/* 631D0 800625D0 C58400FC */  lwc1       $f4, 0xfc($t4)
/* 631D4 800625D4 3C014014 */  lui        $at, 0x4014
/* 631D8 800625D8 44813800 */  mtc1       $at, $f7
/* 631DC 800625DC 44803000 */  mtc1       $zero, $f6
/* 631E0 800625E0 460024A1 */  cvt.d.s    $f18, $f4
/* 631E4 800625E4 3C018014 */  lui        $at, %hi(D_8013F640)
/* 631E8 800625E8 46269202 */  mul.d      $f8, $f18, $f6
/* 631EC 800625EC 46204420 */  cvt.s.d    $f16, $f8
/* 631F0 800625F0 E430F640 */  swc1       $f16, %lo(D_8013F640)($at)
/* 631F4 800625F4 3C0140A0 */  lui        $at, 0x40a0
/* 631F8 800625F8 44816000 */  mtc1       $at, $f12
/* 631FC 800625FC 0C016AAC */  jal        func_8005AAB0
/* 63200 80062600 C58E0140 */   lwc1      $f14, 0x140($t4)
/* 63204 80062604 8FAD0044 */  lw         $t5, 0x44($sp)
/* 63208 80062608 3C018014 */  lui        $at, %hi(D_8013F644)
/* 6320C 8006260C C42AF644 */  lwc1       $f10, %lo(D_8013F644)($at)
/* 63210 80062610 000D7080 */  sll        $t6, $t5, 2
/* 63214 80062614 01CD7023 */  subu       $t6, $t6, $t5
/* 63218 80062618 000E7080 */  sll        $t6, $t6, 2
/* 6321C 8006261C 01CD7023 */  subu       $t6, $t6, $t5
/* 63220 80062620 46000506 */  mov.s      $f20, $f0
/* 63224 80062624 000E7080 */  sll        $t6, $t6, 2
/* 63228 80062628 46145100 */  add.s      $f4, $f10, $f20
/* 6322C 8006262C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 63230 80062630 01CD7021 */  addu       $t6, $t6, $t5
/* 63234 80062634 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 63238 80062638 000E7080 */  sll        $t6, $t6, 2
/* 6323C 8006263C 01CD7023 */  subu       $t6, $t6, $t5
/* 63240 80062640 000E7080 */  sll        $t6, $t6, 2
/* 63244 80062644 E424F644 */  swc1       $f4, -0x9bc($at)
/* 63248 80062648 012E7821 */  addu       $t7, $t1, $t6
/* 6324C 8006264C C5F20100 */  lwc1       $f18, 0x100($t7)
/* 63250 80062650 3C014014 */  lui        $at, 0x4014
/* 63254 80062654 44814800 */  mtc1       $at, $f9
/* 63258 80062658 44804000 */  mtc1       $zero, $f8
/* 6325C 8006265C 460091A1 */  cvt.d.s    $f6, $f18
/* 63260 80062660 3C018014 */  lui        $at, %hi(D_8013F648)
/* 63264 80062664 46283402 */  mul.d      $f16, $f6, $f8
/* 63268 80062668 44809000 */  mtc1       $zero, $f18
/* 6326C 8006266C 462082A0 */  cvt.s.d    $f10, $f16
/* 63270 80062670 E42AF648 */  swc1       $f10, %lo(D_8013F648)($at)
/* 63274 80062674 3C0140A0 */  lui        $at, 0x40a0
/* 63278 80062678 44812000 */  mtc1       $at, $f4
/* 6327C 8006267C 3C018014 */  lui        $at, %hi(D_8013F658)
/* 63280 80062680 E5E40294 */  swc1       $f4, 0x294($t7)
/* 63284 80062684 1000013D */  b          .L80062B7C
/* 63288 80062688 E432F658 */   swc1      $f18, %lo(D_8013F658)($at)
.L8006268C:
/* 6328C 8006268C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 63290 80062690 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 63294 80062694 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 63298 80062698 000BC080 */  sll        $t8, $t3, 2
/* 6329C 8006269C 030BC023 */  subu       $t8, $t8, $t3
/* 632A0 800626A0 0018C080 */  sll        $t8, $t8, 2
/* 632A4 800626A4 030BC023 */  subu       $t8, $t8, $t3
/* 632A8 800626A8 0018C080 */  sll        $t8, $t8, 2
/* 632AC 800626AC 030BC021 */  addu       $t8, $t8, $t3
/* 632B0 800626B0 0018C080 */  sll        $t8, $t8, 2
/* 632B4 800626B4 030BC023 */  subu       $t8, $t8, $t3
/* 632B8 800626B8 0018C080 */  sll        $t8, $t8, 2
/* 632BC 800626BC 03384021 */  addu       $t0, $t9, $t8
/* 632C0 800626C0 8D0A0058 */  lw         $t2, 0x58($t0)
/* 632C4 800626C4 314C0003 */  andi       $t4, $t2, 3
/* 632C8 800626C8 1580000D */  bnez       $t4, .L80062700
/* 632CC 800626CC 00000000 */   nop
/* 632D0 800626D0 240D0001 */  addiu      $t5, $zero, 1
/* 632D4 800626D4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 632D8 800626D8 AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 632DC 800626DC C5060104 */  lwc1       $f6, 0x104($t0)
/* 632E0 800626E0 3C01800E */  lui        $at, %hi(D_800DDFA8)
/* 632E4 800626E4 D430DFA8 */  ldc1       $f16, %lo(D_800DDFA8)($at)
/* 632E8 800626E8 46003221 */  cvt.d.s    $f8, $f6
/* 632EC 800626EC 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 632F0 800626F0 46288281 */  sub.d      $f10, $f16, $f8
/* 632F4 800626F4 46205120 */  cvt.s.d    $f4, $f10
/* 632F8 800626F8 10000120 */  b          .L80062B7C
/* 632FC 800626FC E424F64C */   swc1      $f4, %lo(D_8013F64C)($at)
.L80062700:
/* 63300 80062700 8FAE0044 */  lw         $t6, 0x44($sp)
/* 63304 80062704 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 63308 80062708 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 6330C 8006270C 000E7880 */  sll        $t7, $t6, 2
/* 63310 80062710 01EE7823 */  subu       $t7, $t7, $t6
/* 63314 80062714 000F7880 */  sll        $t7, $t7, 2
/* 63318 80062718 01EE7823 */  subu       $t7, $t7, $t6
/* 6331C 8006271C 000F7880 */  sll        $t7, $t7, 2
/* 63320 80062720 01EE7821 */  addu       $t7, $t7, $t6
/* 63324 80062724 000F7880 */  sll        $t7, $t7, 2
/* 63328 80062728 01EE7823 */  subu       $t7, $t7, $t6
/* 6332C 8006272C 000F7880 */  sll        $t7, $t7, 2
/* 63330 80062730 012F5821 */  addu       $t3, $t1, $t7
/* 63334 80062734 C57200FC */  lwc1       $f18, 0xfc($t3)
/* 63338 80062738 3C014014 */  lui        $at, 0x4014
/* 6333C 8006273C 44818800 */  mtc1       $at, $f17
/* 63340 80062740 44808000 */  mtc1       $zero, $f16
/* 63344 80062744 460091A1 */  cvt.d.s    $f6, $f18
/* 63348 80062748 3C018014 */  lui        $at, %hi(D_8013F640)
/* 6334C 8006274C 46303202 */  mul.d      $f8, $f6, $f16
/* 63350 80062750 462042A0 */  cvt.s.d    $f10, $f8
/* 63354 80062754 E42AF640 */  swc1       $f10, %lo(D_8013F640)($at)
/* 63358 80062758 3C0140A0 */  lui        $at, 0x40a0
/* 6335C 8006275C 44816000 */  mtc1       $at, $f12
/* 63360 80062760 0C016AAC */  jal        func_8005AAB0
/* 63364 80062764 C56E0140 */   lwc1      $f14, 0x140($t3)
/* 63368 80062768 8FB80044 */  lw         $t8, 0x44($sp)
/* 6336C 8006276C 3C018014 */  lui        $at, %hi(D_8013F644)
/* 63370 80062770 C424F644 */  lwc1       $f4, %lo(D_8013F644)($at)
/* 63374 80062774 00185080 */  sll        $t2, $t8, 2
/* 63378 80062778 01585023 */  subu       $t2, $t2, $t8
/* 6337C 8006277C 000A5080 */  sll        $t2, $t2, 2
/* 63380 80062780 01585023 */  subu       $t2, $t2, $t8
/* 63384 80062784 46000506 */  mov.s      $f20, $f0
/* 63388 80062788 000A5080 */  sll        $t2, $t2, 2
/* 6338C 8006278C 46142480 */  add.s      $f18, $f4, $f20
/* 63390 80062790 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 63394 80062794 01585021 */  addu       $t2, $t2, $t8
/* 63398 80062798 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 6339C 8006279C 000A5080 */  sll        $t2, $t2, 2
/* 633A0 800627A0 01585023 */  subu       $t2, $t2, $t8
/* 633A4 800627A4 000A5080 */  sll        $t2, $t2, 2
/* 633A8 800627A8 E432F644 */  swc1       $f18, -0x9bc($at)
/* 633AC 800627AC 032A6021 */  addu       $t4, $t9, $t2
/* 633B0 800627B0 C5860100 */  lwc1       $f6, 0x100($t4)
/* 633B4 800627B4 3C014014 */  lui        $at, 0x4014
/* 633B8 800627B8 44814800 */  mtc1       $at, $f9
/* 633BC 800627BC 44804000 */  mtc1       $zero, $f8
/* 633C0 800627C0 46003421 */  cvt.d.s    $f16, $f6
/* 633C4 800627C4 3C018014 */  lui        $at, %hi(D_8013F648)
/* 633C8 800627C8 46288282 */  mul.d      $f10, $f16, $f8
/* 633CC 800627CC 44803000 */  mtc1       $zero, $f6
/* 633D0 800627D0 46205120 */  cvt.s.d    $f4, $f10
/* 633D4 800627D4 E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 633D8 800627D8 3C0140A0 */  lui        $at, 0x40a0
/* 633DC 800627DC 44819000 */  mtc1       $at, $f18
/* 633E0 800627E0 3C018014 */  lui        $at, %hi(D_8013F658)
/* 633E4 800627E4 E5920294 */  swc1       $f18, 0x294($t4)
/* 633E8 800627E8 100000E4 */  b          .L80062B7C
/* 633EC 800627EC E426F658 */   swc1      $f6, %lo(D_8013F658)($at)
.L800627F0:
/* 633F0 800627F0 8FA80044 */  lw         $t0, 0x44($sp)
/* 633F4 800627F4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 633F8 800627F8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 633FC 800627FC 00087080 */  sll        $t6, $t0, 2
/* 63400 80062800 01C87023 */  subu       $t6, $t6, $t0
/* 63404 80062804 000E7080 */  sll        $t6, $t6, 2
/* 63408 80062808 01C87023 */  subu       $t6, $t6, $t0
/* 6340C 8006280C 000E7080 */  sll        $t6, $t6, 2
/* 63410 80062810 01C87021 */  addu       $t6, $t6, $t0
/* 63414 80062814 000E7080 */  sll        $t6, $t6, 2
/* 63418 80062818 01C87023 */  subu       $t6, $t6, $t0
/* 6341C 8006281C 000E7080 */  sll        $t6, $t6, 2
/* 63420 80062820 01AE4821 */  addu       $t1, $t5, $t6
/* 63424 80062824 0C016929 */  jal        func_8005A4A4
/* 63428 80062828 C52C0104 */   lwc1      $f12, 0x104($t1)
/* 6342C 8006282C 3C01800E */  lui        $at, %hi(D_800DDFB0)
/* 63430 80062830 D428DFB0 */  ldc1       $f8, %lo(D_800DDFB0)($at)
/* 63434 80062834 46000421 */  cvt.d.s    $f16, $f0
/* 63438 80062838 4630403C */  c.lt.d     $f8, $f16
/* 6343C 8006283C 00000000 */  nop
/* 63440 80062840 4500001A */  bc1f       .L800628AC
/* 63444 80062844 00000000 */   nop
/* 63448 80062848 8FAB0044 */  lw         $t3, 0x44($sp)
/* 6344C 8006284C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 63450 80062850 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 63454 80062854 000BC080 */  sll        $t8, $t3, 2
/* 63458 80062858 030BC023 */  subu       $t8, $t8, $t3
/* 6345C 8006285C 0018C080 */  sll        $t8, $t8, 2
/* 63460 80062860 030BC023 */  subu       $t8, $t8, $t3
/* 63464 80062864 0018C080 */  sll        $t8, $t8, 2
/* 63468 80062868 030BC021 */  addu       $t8, $t8, $t3
/* 6346C 8006286C 0018C080 */  sll        $t8, $t8, 2
/* 63470 80062870 030BC023 */  subu       $t8, $t8, $t3
/* 63474 80062874 0018C080 */  sll        $t8, $t8, 2
/* 63478 80062878 01F8C821 */  addu       $t9, $t7, $t8
/* 6347C 8006287C 8F2A0058 */  lw         $t2, 0x58($t9)
/* 63480 80062880 314C0003 */  andi       $t4, $t2, 3
/* 63484 80062884 15800009 */  bnez       $t4, .L800628AC
/* 63488 80062888 00000000 */   nop
/* 6348C 8006288C C72E0104 */  lwc1       $f14, 0x104($t9)
/* 63490 80062890 3C01800E */  lui        $at, %hi(D_800DDFB8)
/* 63494 80062894 C42CDFB8 */  lwc1       $f12, %lo(D_800DDFB8)($at)
/* 63498 80062898 0C016AAC */  jal        func_8005AAB0
/* 6349C 8006289C 46007387 */   neg.s     $f14, $f14
/* 634A0 800628A0 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 634A4 800628A4 10000004 */  b          .L800628B8
/* 634A8 800628A8 E420F64C */   swc1      $f0, %lo(D_8013F64C)($at)
.L800628AC:
/* 634AC 800628AC 44805000 */  mtc1       $zero, $f10
/* 634B0 800628B0 3C018014 */  lui        $at, %hi(D_8013F658)
/* 634B4 800628B4 E42AF658 */  swc1       $f10, %lo(D_8013F658)($at)
.L800628B8:
/* 634B8 800628B8 8FA80040 */  lw         $t0, 0x40($sp)
/* 634BC 800628BC 8D0D0000 */  lw         $t5, ($t0)
/* 634C0 800628C0 31AE0001 */  andi       $t6, $t5, 1
/* 634C4 800628C4 11C000AD */  beqz       $t6, .L80062B7C
/* 634C8 800628C8 00000000 */   nop
/* 634CC 800628CC 24090098 */  addiu      $t1, $zero, 0x98
/* 634D0 800628D0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 634D4 800628D4 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 634D8 800628D8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 634DC 800628DC 240B0034 */  addiu      $t3, $zero, 0x34
/* 634E0 800628E0 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 634E4 800628E4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 634E8 800628E8 240F0001 */  addiu      $t7, $zero, 1
/* 634EC 800628EC AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 634F0 800628F0 3C018014 */  lui        $at, %hi(D_8013F608)
/* 634F4 800628F4 24180002 */  addiu      $t8, $zero, 2
/* 634F8 800628F8 100000A0 */  b          .L80062B7C
/* 634FC 800628FC AC38F608 */   sw        $t8, %lo(D_8013F608)($at)
.L80062900:
/* 63500 80062900 8FAC0044 */  lw         $t4, 0x44($sp)
/* 63504 80062904 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 63508 80062908 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 6350C 8006290C 000CC880 */  sll        $t9, $t4, 2
/* 63510 80062910 032CC823 */  subu       $t9, $t9, $t4
/* 63514 80062914 0019C880 */  sll        $t9, $t9, 2
/* 63518 80062918 032CC823 */  subu       $t9, $t9, $t4
/* 6351C 8006291C 0019C880 */  sll        $t9, $t9, 2
/* 63520 80062920 032CC821 */  addu       $t9, $t9, $t4
/* 63524 80062924 0019C880 */  sll        $t9, $t9, 2
/* 63528 80062928 032CC823 */  subu       $t9, $t9, $t4
/* 6352C 8006292C 0019C880 */  sll        $t9, $t9, 2
/* 63530 80062930 01594021 */  addu       $t0, $t2, $t9
/* 63534 80062934 8D0D0058 */  lw         $t5, 0x58($t0)
/* 63538 80062938 15A0005C */  bnez       $t5, .L80062AAC
/* 6353C 8006293C 00000000 */   nop
/* 63540 80062940 8FAE0040 */  lw         $t6, 0x40($sp)
/* 63544 80062944 3C010040 */  lui        $at, 0x40
/* 63548 80062948 8DC90000 */  lw         $t1, ($t6)
/* 6354C 8006294C 01215824 */  and        $t3, $t1, $at
/* 63550 80062950 15600007 */  bnez       $t3, .L80062970
/* 63554 80062954 00000000 */   nop
/* 63558 80062958 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 6355C 8006295C 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 63560 80062960 29E10005 */  slti       $at, $t7, 5
/* 63564 80062964 14200043 */  bnez       $at, .L80062A74
/* 63568 80062968 29E10008 */   slti      $at, $t7, 8
/* 6356C 8006296C 10200041 */  beqz       $at, .L80062A74
.L80062970:
/* 63570 80062970 3C018014 */   lui       $at, %hi(D_8013F664)
/* 63574 80062974 C424F664 */  lwc1       $f4, %lo(D_8013F664)($at)
/* 63578 80062978 3C014396 */  lui        $at, 0x4396
/* 6357C 8006297C 44819000 */  mtc1       $at, $f18
/* 63580 80062980 00000000 */  nop
/* 63584 80062984 4604903C */  c.lt.s     $f18, $f4
/* 63588 80062988 00000000 */  nop
/* 6358C 8006298C 45000006 */  bc1f       .L800629A8
/* 63590 80062990 00000000 */   nop
/* 63594 80062994 8FA40044 */  lw         $a0, 0x44($sp)
/* 63598 80062998 0C0185E2 */  jal        func_80061788
/* 6359C 8006299C 8FA50040 */   lw        $a1, 0x40($sp)
/* 635A0 800629A0 10000076 */  b          .L80062B7C
/* 635A4 800629A4 00000000 */   nop
.L800629A8:
/* 635A8 800629A8 3C018014 */  lui        $at, %hi(D_8013F664)
/* 635AC 800629AC C426F664 */  lwc1       $f6, %lo(D_8013F664)($at)
/* 635B0 800629B0 3C014348 */  lui        $at, 0x4348
/* 635B4 800629B4 44818000 */  mtc1       $at, $f16
/* 635B8 800629B8 00000000 */  nop
/* 635BC 800629BC 4606803C */  c.lt.s     $f16, $f6
/* 635C0 800629C0 00000000 */  nop
/* 635C4 800629C4 4500006D */  bc1f       .L80062B7C
/* 635C8 800629C8 00000000 */   nop
/* 635CC 800629CC 8FA80044 */  lw         $t0, 0x44($sp)
/* 635D0 800629D0 3C018014 */  lui        $at, %hi(D_8013F604)
/* 635D4 800629D4 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 635D8 800629D8 00086880 */  sll        $t5, $t0, 2
/* 635DC 800629DC 01A86823 */  subu       $t5, $t5, $t0
/* 635E0 800629E0 000D6880 */  sll        $t5, $t5, 2
/* 635E4 800629E4 01A86823 */  subu       $t5, $t5, $t0
/* 635E8 800629E8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 635EC 800629EC 24180003 */  addiu      $t8, $zero, 3
/* 635F0 800629F0 000D6880 */  sll        $t5, $t5, 2
/* 635F4 800629F4 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 635F8 800629F8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 635FC 800629FC 01A86821 */  addu       $t5, $t5, $t0
/* 63600 80062A00 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 63604 80062A04 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63608 80062A08 240C000C */  addiu      $t4, $zero, 0xc
/* 6360C 80062A0C 000D6880 */  sll        $t5, $t5, 2
/* 63610 80062A10 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 63614 80062A14 01A86823 */  subu       $t5, $t5, $t0
/* 63618 80062A18 3C018014 */  lui        $at, %hi(D_8013F608)
/* 6361C 80062A1C 240A0001 */  addiu      $t2, $zero, 1
/* 63620 80062A20 000D6880 */  sll        $t5, $t5, 2
/* 63624 80062A24 AC2AF608 */  sw         $t2, %lo(D_8013F608)($at)
/* 63628 80062A28 032D7021 */  addu       $t6, $t9, $t5
/* 6362C 80062A2C C5C80104 */  lwc1       $f8, 0x104($t6)
/* 63630 80062A30 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 63634 80062A34 46004287 */  neg.s      $f10, $f8
/* 63638 80062A38 E42AF64C */  swc1       $f10, %lo(D_8013F64C)($at)
/* 6363C 80062A3C C5C40114 */  lwc1       $f4, 0x114($t6)
/* 63640 80062A40 3C018014 */  lui        $at, %hi(D_8013F650)
/* 63644 80062A44 46002487 */  neg.s      $f18, $f4
/* 63648 80062A48 E432F650 */  swc1       $f18, %lo(D_8013F650)($at)
/* 6364C 80062A4C 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 63650 80062A50 C426F65C */  lwc1       $f6, %lo(D_8013F65C)($at)
/* 63654 80062A54 3C01800E */  lui        $at, %hi(D_800DDFC0)
/* 63658 80062A58 D428DFC0 */  ldc1       $f8, %lo(D_800DDFC0)($at)
/* 6365C 80062A5C 46003421 */  cvt.d.s    $f16, $f6
/* 63660 80062A60 3C018014 */  lui        $at, %hi(D_8013F638)
/* 63664 80062A64 46288280 */  add.d      $f10, $f16, $f8
/* 63668 80062A68 46205120 */  cvt.s.d    $f4, $f10
/* 6366C 80062A6C 10000043 */  b          .L80062B7C
/* 63670 80062A70 E424F638 */   swc1      $f4, %lo(D_8013F638)($at)
.L80062A74:
/* 63674 80062A74 24090034 */  addiu      $t1, $zero, 0x34
/* 63678 80062A78 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6367C 80062A7C AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 63680 80062A80 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63684 80062A84 240B0014 */  addiu      $t3, $zero, 0x14
/* 63688 80062A88 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 6368C 80062A8C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 63690 80062A90 240F0001 */  addiu      $t7, $zero, 1
/* 63694 80062A94 AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 63698 80062A98 3C01800E */  lui        $at, %hi(D_800DDFC8)
/* 6369C 80062A9C C432DFC8 */  lwc1       $f18, %lo(D_800DDFC8)($at)
/* 636A0 80062AA0 3C018014 */  lui        $at, %hi(D_8013F658)
/* 636A4 80062AA4 10000035 */  b          .L80062B7C
/* 636A8 80062AA8 E432F658 */   swc1      $f18, %lo(D_8013F658)($at)
.L80062AAC:
/* 636AC 80062AAC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 636B0 80062AB0 2418001B */  addiu      $t8, $zero, 0x1b
/* 636B4 80062AB4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 636B8 80062AB8 000D7080 */  sll        $t6, $t5, 2
/* 636BC 80062ABC 01CD7023 */  subu       $t6, $t6, $t5
/* 636C0 80062AC0 000E7080 */  sll        $t6, $t6, 2
/* 636C4 80062AC4 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 636C8 80062AC8 01CD7023 */  subu       $t6, $t6, $t5
/* 636CC 80062ACC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 636D0 80062AD0 240C0035 */  addiu      $t4, $zero, 0x35
/* 636D4 80062AD4 000E7080 */  sll        $t6, $t6, 2
/* 636D8 80062AD8 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 636DC 80062ADC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 636E0 80062AE0 01CD7021 */  addu       $t6, $t6, $t5
/* 636E4 80062AE4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 636E8 80062AE8 3C018014 */  lui        $at, %hi(D_8013F608)
/* 636EC 80062AEC 240A0005 */  addiu      $t2, $zero, 5
/* 636F0 80062AF0 000E7080 */  sll        $t6, $t6, 2
/* 636F4 80062AF4 AC2AF608 */  sw         $t2, %lo(D_8013F608)($at)
/* 636F8 80062AF8 01CD7023 */  subu       $t6, $t6, $t5
/* 636FC 80062AFC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 63700 80062B00 24080001 */  addiu      $t0, $zero, 1
/* 63704 80062B04 000E7080 */  sll        $t6, $t6, 2
/* 63708 80062B08 AC28F61C */  sw         $t0, %lo(D_8013F61C)($at)
/* 6370C 80062B0C 032E4821 */  addu       $t1, $t9, $t6
/* 63710 80062B10 C52600FC */  lwc1       $f6, 0xfc($t1)
/* 63714 80062B14 3C014024 */  lui        $at, 0x4024
/* 63718 80062B18 44814800 */  mtc1       $at, $f9
/* 6371C 80062B1C 44804000 */  mtc1       $zero, $f8
/* 63720 80062B20 46003421 */  cvt.d.s    $f16, $f6
/* 63724 80062B24 44809000 */  mtc1       $zero, $f18
/* 63728 80062B28 46288282 */  mul.d      $f10, $f16, $f8
/* 6372C 80062B2C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 63730 80062B30 44804000 */  mtc1       $zero, $f8
/* 63734 80062B34 46205120 */  cvt.s.d    $f4, $f10
/* 63738 80062B38 E424F640 */  swc1       $f4, %lo(D_8013F640)($at)
/* 6373C 80062B3C 3C018014 */  lui        $at, %hi(D_8013F644)
/* 63740 80062B40 E432F644 */  swc1       $f18, %lo(D_8013F644)($at)
/* 63744 80062B44 C5260100 */  lwc1       $f6, 0x100($t1)
/* 63748 80062B48 3C014024 */  lui        $at, 0x4024
/* 6374C 80062B4C 44814800 */  mtc1       $at, $f9
/* 63750 80062B50 46003421 */  cvt.d.s    $f16, $f6
/* 63754 80062B54 3C018014 */  lui        $at, %hi(D_8013F648)
/* 63758 80062B58 46288282 */  mul.d      $f10, $f16, $f8
/* 6375C 80062B5C 44803000 */  mtc1       $zero, $f6
/* 63760 80062B60 46205120 */  cvt.s.d    $f4, $f10
/* 63764 80062B64 E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 63768 80062B68 3C0140A0 */  lui        $at, 0x40a0
/* 6376C 80062B6C 44819000 */  mtc1       $at, $f18
/* 63770 80062B70 3C018014 */  lui        $at, %hi(D_8013F658)
/* 63774 80062B74 E5320294 */  swc1       $f18, 0x294($t1)
/* 63778 80062B78 E426F658 */  swc1       $f6, %lo(D_8013F658)($at)
.L80062B7C:
/* 6377C 80062B7C 3C018014 */  lui        $at, %hi(D_8013F664)
/* 63780 80062B80 C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 63784 80062B84 3C01437A */  lui        $at, 0x437a
/* 63788 80062B88 44814000 */  mtc1       $at, $f8
/* 6378C 80062B8C 00000000 */  nop
/* 63790 80062B90 4610403C */  c.lt.s     $f8, $f16
/* 63794 80062B94 00000000 */  nop
/* 63798 80062B98 45000109 */  bc1f       .L80062FC0
/* 6379C 80062B9C 00000000 */   nop
/* 637A0 80062BA0 8FAF0044 */  lw         $t7, 0x44($sp)
/* 637A4 80062BA4 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 637A8 80062BA8 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 637AC 80062BAC 000FC080 */  sll        $t8, $t7, 2
/* 637B0 80062BB0 030FC023 */  subu       $t8, $t8, $t7
/* 637B4 80062BB4 0018C080 */  sll        $t8, $t8, 2
/* 637B8 80062BB8 030FC023 */  subu       $t8, $t8, $t7
/* 637BC 80062BBC 0018C080 */  sll        $t8, $t8, 2
/* 637C0 80062BC0 030FC021 */  addu       $t8, $t8, $t7
/* 637C4 80062BC4 0018C080 */  sll        $t8, $t8, 2
/* 637C8 80062BC8 030FC023 */  subu       $t8, $t8, $t7
/* 637CC 80062BCC 0018C080 */  sll        $t8, $t8, 2
/* 637D0 80062BD0 01786021 */  addu       $t4, $t3, $t8
/* 637D4 80062BD4 C58A00E4 */  lwc1       $f10, 0xe4($t4)
/* 637D8 80062BD8 3C014059 */  lui        $at, 0x4059
/* 637DC 80062BDC 44819800 */  mtc1       $at, $f19
/* 637E0 80062BE0 44809000 */  mtc1       $zero, $f18
/* 637E4 80062BE4 46005121 */  cvt.d.s    $f4, $f10
/* 637E8 80062BE8 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 637EC 80062BEC C430F65C */  lwc1       $f16, %lo(D_8013F65C)($at)
/* 637F0 80062BF0 46322181 */  sub.d      $f6, $f4, $f18
/* 637F4 80062BF4 3C014059 */  lui        $at, 0x4059
/* 637F8 80062BF8 44812800 */  mtc1       $at, $f5
/* 637FC 80062BFC 46008221 */  cvt.d.s    $f8, $f16
/* 63800 80062C00 44802000 */  mtc1       $zero, $f4
/* 63804 80062C04 46283281 */  sub.d      $f10, $f6, $f8
/* 63808 80062C08 4624503C */  c.lt.d     $f10, $f4
/* 6380C 80062C0C 00000000 */  nop
/* 63810 80062C10 45000007 */  bc1f       .L80062C30
/* 63814 80062C14 3C014069 */   lui       $at, 0x4069
/* 63818 80062C18 44819800 */  mtc1       $at, $f19
/* 6381C 80062C1C 44809000 */  mtc1       $zero, $f18
/* 63820 80062C20 3C018014 */  lui        $at, %hi(D_8013F638)
/* 63824 80062C24 46324400 */  add.d      $f16, $f8, $f18
/* 63828 80062C28 462081A0 */  cvt.s.d    $f6, $f16
/* 6382C 80062C2C E426F638 */  swc1       $f6, %lo(D_8013F638)($at)
.L80062C30:
/* 63830 80062C30 8FA80044 */  lw         $t0, 0x44($sp)
/* 63834 80062C34 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 63838 80062C38 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 6383C 80062C3C 00086880 */  sll        $t5, $t0, 2
/* 63840 80062C40 01A86823 */  subu       $t5, $t5, $t0
/* 63844 80062C44 000D6880 */  sll        $t5, $t5, 2
/* 63848 80062C48 01A86823 */  subu       $t5, $t5, $t0
/* 6384C 80062C4C 000D6880 */  sll        $t5, $t5, 2
/* 63850 80062C50 01A86821 */  addu       $t5, $t5, $t0
/* 63854 80062C54 000D6880 */  sll        $t5, $t5, 2
/* 63858 80062C58 01A86823 */  subu       $t5, $t5, $t0
/* 6385C 80062C5C 000D6880 */  sll        $t5, $t5, 2
/* 63860 80062C60 3C0141A0 */  lui        $at, 0x41a0
/* 63864 80062C64 014DC821 */  addu       $t9, $t2, $t5
/* 63868 80062C68 C72A00E4 */  lwc1       $f10, 0xe4($t9)
/* 6386C 80062C6C 44812000 */  mtc1       $at, $f4
/* 63870 80062C70 3C018014 */  lui        $at, %hi(D_8013F660)
/* 63874 80062C74 C432F660 */  lwc1       $f18, %lo(D_8013F660)($at)
/* 63878 80062C78 46045201 */  sub.s      $f8, $f10, $f4
/* 6387C 80062C7C 44805000 */  mtc1       $zero, $f10
/* 63880 80062C80 44805800 */  mtc1       $zero, $f11
/* 63884 80062C84 46089401 */  sub.s      $f16, $f18, $f8
/* 63888 80062C88 460081A1 */  cvt.d.s    $f6, $f16
/* 6388C 80062C8C 462A303C */  c.lt.d     $f6, $f10
/* 63890 80062C90 00000000 */  nop
/* 63894 80062C94 450000CA */  bc1f       .L80062FC0
/* 63898 80062C98 3C014024 */   lui       $at, 0x4024
/* 6389C 80062C9C 44814800 */  mtc1       $at, $f9
/* 638A0 80062CA0 44804000 */  mtc1       $zero, $f8
/* 638A4 80062CA4 46009121 */  cvt.d.s    $f4, $f18
/* 638A8 80062CA8 3C018014 */  lui        $at, %hi(D_8013F638)
/* 638AC 80062CAC 46282400 */  add.d      $f16, $f4, $f8
/* 638B0 80062CB0 462081A0 */  cvt.s.d    $f6, $f16
/* 638B4 80062CB4 100000C2 */  b          .L80062FC0
/* 638B8 80062CB8 E426F638 */   swc1      $f6, %lo(D_8013F638)($at)
.L80062CBC:
/* 638BC 80062CBC 3C0E8014 */  lui        $t6, %hi(D_8013F610)
/* 638C0 80062CC0 8DCEF610 */  lw         $t6, %lo(D_8013F610)($t6)
/* 638C4 80062CC4 24010015 */  addiu      $at, $zero, 0x15
/* 638C8 80062CC8 15C10010 */  bne        $t6, $at, .L80062D0C
/* 638CC 80062CCC 00000000 */   nop
/* 638D0 80062CD0 24090001 */  addiu      $t1, $zero, 1
/* 638D4 80062CD4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 638D8 80062CD8 AC29F61C */  sw         $t1, %lo(D_8013F61C)($at)
/* 638DC 80062CDC 3C018014 */  lui        $at, %hi(D_8013F604)
/* 638E0 80062CE0 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 638E4 80062CE4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 638E8 80062CE8 240F000C */  addiu      $t7, $zero, 0xc
/* 638EC 80062CEC AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 638F0 80062CF0 3C018014 */  lui        $at, %hi(D_8013F608)
/* 638F4 80062CF4 240B0001 */  addiu      $t3, $zero, 1
/* 638F8 80062CF8 AC2BF608 */  sw         $t3, %lo(D_8013F608)($at)
/* 638FC 80062CFC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63900 80062D00 24180003 */  addiu      $t8, $zero, 3
/* 63904 80062D04 100000AE */  b          .L80062FC0
/* 63908 80062D08 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80062D0C:
/* 6390C 80062D0C 8FA40044 */  lw         $a0, 0x44($sp)
/* 63910 80062D10 0C0185E2 */  jal        func_80061788
/* 63914 80062D14 8FA50040 */   lw        $a1, 0x40($sp)
/* 63918 80062D18 100000A9 */  b          .L80062FC0
/* 6391C 80062D1C 00000000 */   nop
.L80062D20:
/* 63920 80062D20 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 63924 80062D24 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 63928 80062D28 2A01007C */  slti       $at, $s0, 0x7c
/* 6392C 80062D2C 1420000D */  bnez       $at, .L80062D64
/* 63930 80062D30 2401007E */   addiu     $at, $zero, 0x7e
/* 63934 80062D34 1201002D */  beq        $s0, $at, .L80062DEC
/* 63938 80062D38 2401007F */   addiu     $at, $zero, 0x7f
/* 6393C 80062D3C 1201002B */  beq        $s0, $at, .L80062DEC
/* 63940 80062D40 240100A5 */   addiu     $at, $zero, 0xa5
/* 63944 80062D44 12010029 */  beq        $s0, $at, .L80062DEC
/* 63948 80062D48 240100AD */   addiu     $at, $zero, 0xad
/* 6394C 80062D4C 12010036 */  beq        $s0, $at, .L80062E28
/* 63950 80062D50 240100AE */   addiu     $at, $zero, 0xae
/* 63954 80062D54 12010034 */  beq        $s0, $at, .L80062E28
/* 63958 80062D58 00000000 */   nop
/* 6395C 80062D5C 10000098 */  b          .L80062FC0
/* 63960 80062D60 00000000 */   nop
.L80062D64:
/* 63964 80062D64 2A01005D */  slti       $at, $s0, 0x5d
/* 63968 80062D68 14200009 */  bnez       $at, .L80062D90
/* 6396C 80062D6C 2401005D */   addiu     $at, $zero, 0x5d
/* 63970 80062D70 1201001E */  beq        $s0, $at, .L80062DEC
/* 63974 80062D74 2401005E */   addiu     $at, $zero, 0x5e
/* 63978 80062D78 1201004D */  beq        $s0, $at, .L80062EB0
/* 6397C 80062D7C 2401007B */   addiu     $at, $zero, 0x7b
/* 63980 80062D80 12010029 */  beq        $s0, $at, .L80062E28
/* 63984 80062D84 00000000 */   nop
/* 63988 80062D88 1000008D */  b          .L80062FC0
/* 6398C 80062D8C 00000000 */   nop
.L80062D90:
/* 63990 80062D90 2A01002B */  slti       $at, $s0, 0x2b
/* 63994 80062D94 14200005 */  bnez       $at, .L80062DAC
/* 63998 80062D98 2401005C */   addiu     $at, $zero, 0x5c
/* 6399C 80062D9C 12010044 */  beq        $s0, $at, .L80062EB0
/* 639A0 80062DA0 00000000 */   nop
/* 639A4 80062DA4 10000086 */  b          .L80062FC0
/* 639A8 80062DA8 00000000 */   nop
.L80062DAC:
/* 639AC 80062DAC 2A01000B */  slti       $at, $s0, 0xb
/* 639B0 80062DB0 14200005 */  bnez       $at, .L80062DC8
/* 639B4 80062DB4 2401002A */   addiu     $at, $zero, 0x2a
/* 639B8 80062DB8 1201000C */  beq        $s0, $at, .L80062DEC
/* 639BC 80062DBC 00000000 */   nop
/* 639C0 80062DC0 1000007F */  b          .L80062FC0
/* 639C4 80062DC4 00000000 */   nop
.L80062DC8:
/* 639C8 80062DC8 2E01000B */  sltiu      $at, $s0, 0xb
/* 639CC 80062DCC 1020007C */  beqz       $at, .L80062FC0
/* 639D0 80062DD0 00000000 */   nop
/* 639D4 80062DD4 00106080 */  sll        $t4, $s0, 2
/* 639D8 80062DD8 3C01800E */  lui        $at, %hi(D_800DDFCC)
/* 639DC 80062DDC 002C0821 */  addu       $at, $at, $t4
/* 639E0 80062DE0 8C2CDFCC */  lw         $t4, %lo(D_800DDFCC)($at)
/* 639E4 80062DE4 01800008 */  jr         $t4
/* 639E8 80062DE8 00000000 */   nop
.L80062DEC:
/* 639EC 80062DEC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 639F0 80062DF0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 639F4 80062DF4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 639F8 80062DF8 000DC880 */  sll        $t9, $t5, 2
/* 639FC 80062DFC 032DC823 */  subu       $t9, $t9, $t5
/* 63A00 80062E00 0019C880 */  sll        $t9, $t9, 2
/* 63A04 80062E04 032DC823 */  subu       $t9, $t9, $t5
/* 63A08 80062E08 0019C880 */  sll        $t9, $t9, 2
/* 63A0C 80062E0C 032DC821 */  addu       $t9, $t9, $t5
/* 63A10 80062E10 0019C880 */  sll        $t9, $t9, 2
/* 63A14 80062E14 032DC823 */  subu       $t9, $t9, $t5
/* 63A18 80062E18 0019C880 */  sll        $t9, $t9, 2
/* 63A1C 80062E1C 24080001 */  addiu      $t0, $zero, 1
/* 63A20 80062E20 01597021 */  addu       $t6, $t2, $t9
/* 63A24 80062E24 ADC80280 */  sw         $t0, 0x280($t6)
.L80062E28:
/* 63A28 80062E28 3C018014 */  lui        $at, %hi(D_8013F664)
/* 63A2C 80062E2C C42AF664 */  lwc1       $f10, %lo(D_8013F664)($at)
/* 63A30 80062E30 3C0143AF */  lui        $at, 0x43af
/* 63A34 80062E34 44819000 */  mtc1       $at, $f18
/* 63A38 80062E38 00000000 */  nop
/* 63A3C 80062E3C 460A903C */  c.lt.s     $f18, $f10
/* 63A40 80062E40 00000000 */  nop
/* 63A44 80062E44 45000016 */  bc1f       .L80062EA0
/* 63A48 80062E48 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 63A4C 80062E4C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63A50 80062E50 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63A54 80062E54 2409000D */  addiu      $t1, $zero, 0xd
/* 63A58 80062E58 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 63A5C 80062E5C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 63A60 80062E60 240F0005 */  addiu      $t7, $zero, 5
/* 63A64 80062E64 AC2FF608 */  sw         $t7, %lo(D_8013F608)($at)
/* 63A68 80062E68 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63A6C 80062E6C 240B0033 */  addiu      $t3, $zero, 0x33
/* 63A70 80062E70 3C188018 */  lui        $t8, %hi(D_8017A028)
/* 63A74 80062E74 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 63A78 80062E78 2718A028 */  addiu      $t8, $t8, %lo(D_8017A028)
/* 63A7C 80062E7C 8F050004 */  lw         $a1, 4($t8)
/* 63A80 80062E80 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 63A84 80062E84 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 63A88 80062E88 AFA00010 */  sw         $zero, 0x10($sp)
/* 63A8C 80062E8C 24040001 */  addiu      $a0, $zero, 1
/* 63A90 80062E90 0C0009DF */  jal        func_8000277C
/* 63A94 80062E94 24070040 */   addiu     $a3, $zero, 0x40
/* 63A98 80062E98 10000049 */  b          .L80062FC0
/* 63A9C 80062E9C 00000000 */   nop
.L80062EA0:
/* 63AA0 80062EA0 0C017B34 */  jal        func_8005ECD0
/* 63AA4 80062EA4 00000000 */   nop
/* 63AA8 80062EA8 10000045 */  b          .L80062FC0
/* 63AAC 80062EAC 00000000 */   nop
.L80062EB0:
/* 63AB0 80062EB0 3C018014 */  lui        $at, %hi(D_8013F664)
/* 63AB4 80062EB4 C424F664 */  lwc1       $f4, %lo(D_8013F664)($at)
/* 63AB8 80062EB8 3C0143AF */  lui        $at, 0x43af
/* 63ABC 80062EBC 44814000 */  mtc1       $at, $f8
/* 63AC0 80062EC0 00000000 */  nop
/* 63AC4 80062EC4 4604403C */  c.lt.s     $f8, $f4
/* 63AC8 80062EC8 00000000 */  nop
/* 63ACC 80062ECC 45000016 */  bc1f       .L80062F28
/* 63AD0 80062ED0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 63AD4 80062ED4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63AD8 80062ED8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63ADC 80062EDC 240C0091 */  addiu      $t4, $zero, 0x91
/* 63AE0 80062EE0 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 63AE4 80062EE4 3C018014 */  lui        $at, %hi(D_8013F608)
/* 63AE8 80062EE8 240D0005 */  addiu      $t5, $zero, 5
/* 63AEC 80062EEC AC2DF608 */  sw         $t5, %lo(D_8013F608)($at)
/* 63AF0 80062EF0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63AF4 80062EF4 240A0033 */  addiu      $t2, $zero, 0x33
/* 63AF8 80062EF8 3C198018 */  lui        $t9, %hi(D_8017A028)
/* 63AFC 80062EFC AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 63B00 80062F00 2739A028 */  addiu      $t9, $t9, %lo(D_8017A028)
/* 63B04 80062F04 8F250004 */  lw         $a1, 4($t9)
/* 63B08 80062F08 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 63B0C 80062F0C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 63B10 80062F10 AFA00010 */  sw         $zero, 0x10($sp)
/* 63B14 80062F14 24040001 */  addiu      $a0, $zero, 1
/* 63B18 80062F18 0C0009DF */  jal        func_8000277C
/* 63B1C 80062F1C 24070040 */   addiu     $a3, $zero, 0x40
/* 63B20 80062F20 10000027 */  b          .L80062FC0
/* 63B24 80062F24 00000000 */   nop
.L80062F28:
/* 63B28 80062F28 0C017B34 */  jal        func_8005ECD0
/* 63B2C 80062F2C 00000000 */   nop
/* 63B30 80062F30 10000023 */  b          .L80062FC0
/* 63B34 80062F34 00000000 */   nop
/* 63B38 80062F38 3C018014 */  lui        $at, %hi(D_8013F664)
/* 63B3C 80062F3C C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 63B40 80062F40 3C0143AF */  lui        $at, 0x43af
/* 63B44 80062F44 44813000 */  mtc1       $at, $f6
/* 63B48 80062F48 00000000 */  nop
/* 63B4C 80062F4C 4610303C */  c.lt.s     $f6, $f16
/* 63B50 80062F50 00000000 */  nop
/* 63B54 80062F54 45000016 */  bc1f       .L80062FB0
/* 63B58 80062F58 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 63B5C 80062F5C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63B60 80062F60 3C018014 */  lui        $at, %hi(D_8013F608)
/* 63B64 80062F64 24080005 */  addiu      $t0, $zero, 5
/* 63B68 80062F68 AC28F608 */  sw         $t0, %lo(D_8013F608)($at)
/* 63B6C 80062F6C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63B70 80062F70 240E0092 */  addiu      $t6, $zero, 0x92
/* 63B74 80062F74 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 63B78 80062F78 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63B7C 80062F7C 24090033 */  addiu      $t1, $zero, 0x33
/* 63B80 80062F80 3C0F8018 */  lui        $t7, %hi(D_8017A028)
/* 63B84 80062F84 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 63B88 80062F88 25EFA028 */  addiu      $t7, $t7, %lo(D_8017A028)
/* 63B8C 80062F8C 8DE50004 */  lw         $a1, 4($t7)
/* 63B90 80062F90 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 63B94 80062F94 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 63B98 80062F98 AFA00010 */  sw         $zero, 0x10($sp)
/* 63B9C 80062F9C 24040001 */  addiu      $a0, $zero, 1
/* 63BA0 80062FA0 0C0009DF */  jal        func_8000277C
/* 63BA4 80062FA4 24070040 */   addiu     $a3, $zero, 0x40
/* 63BA8 80062FA8 10000005 */  b          .L80062FC0
/* 63BAC 80062FAC 00000000 */   nop
.L80062FB0:
/* 63BB0 80062FB0 0C017B34 */  jal        func_8005ECD0
/* 63BB4 80062FB4 00000000 */   nop
/* 63BB8 80062FB8 10000001 */  b          .L80062FC0
/* 63BBC 80062FBC 00000000 */   nop
.L80062FC0:
/* 63BC0 80062FC0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 63BC4 80062FC4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 63BC8 80062FC8 8FB00028 */  lw         $s0, 0x28($sp)
/* 63BCC 80062FCC 03E00008 */  jr         $ra
/* 63BD0 80062FD0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80062FD4
/* 63BD4 80062FD4 27BDFFF8 */  addiu      $sp, $sp, -8
/* 63BD8 80062FD8 AFA5000C */  sw         $a1, 0xc($sp)
/* 63BDC 80062FDC AFA00004 */  sw         $zero, 4($sp)
/* 63BE0 80062FE0 8C860000 */  lw         $a2, ($a0)
/* 63BE4 80062FE4 24010003 */  addiu      $at, $zero, 3
/* 63BE8 80062FE8 10C10005 */  beq        $a2, $at, .L80063000
/* 63BEC 80062FEC 24010005 */   addiu     $at, $zero, 5
/* 63BF0 80062FF0 10C10017 */  beq        $a2, $at, .L80063050
/* 63BF4 80062FF4 00000000 */   nop
/* 63BF8 80062FF8 10000028 */  b          .L8006309C
/* 63BFC 80062FFC 00000000 */   nop
.L80063000:
/* 63C00 80063000 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 63C04 80063004 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 63C08 80063008 240E0001 */  addiu      $t6, $zero, 1
/* 63C0C 8006300C AFAE0004 */  sw         $t6, 4($sp)
/* 63C10 80063010 15E00006 */  bnez       $t7, .L8006302C
/* 63C14 80063014 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 63C18 80063018 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63C1C 8006301C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63C20 80063020 24180053 */  addiu      $t8, $zero, 0x53
/* 63C24 80063024 1000001D */  b          .L8006309C
/* 63C28 80063028 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L8006302C:
/* 63C2C 8006302C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 63C30 80063030 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63C34 80063034 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63C38 80063038 24190057 */  addiu      $t9, $zero, 0x57
/* 63C3C 8006303C AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 63C40 80063040 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63C44 80063044 24080035 */  addiu      $t0, $zero, 0x35
/* 63C48 80063048 10000014 */  b          .L8006309C
/* 63C4C 8006304C AC28F60C */   sw        $t0, %lo(D_8013F60C)($at)
.L80063050:
/* 63C50 80063050 3C0A8014 */  lui        $t2, %hi(D_8013F604)
/* 63C54 80063054 8D4AF604 */  lw         $t2, %lo(D_8013F604)($t2)
/* 63C58 80063058 24090001 */  addiu      $t1, $zero, 1
/* 63C5C 8006305C AFA90004 */  sw         $t1, 4($sp)
/* 63C60 80063060 15400006 */  bnez       $t2, .L8006307C
/* 63C64 80063064 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 63C68 80063068 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63C6C 8006306C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63C70 80063070 240B0054 */  addiu      $t3, $zero, 0x54
/* 63C74 80063074 10000009 */  b          .L8006309C
/* 63C78 80063078 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L8006307C:
/* 63C7C 8006307C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 63C80 80063080 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63C84 80063084 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63C88 80063088 240C0058 */  addiu      $t4, $zero, 0x58
/* 63C8C 8006308C AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 63C90 80063090 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63C94 80063094 240D0035 */  addiu      $t5, $zero, 0x35
/* 63C98 80063098 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
.L8006309C:
/* 63C9C 8006309C 8FA20004 */  lw         $v0, 4($sp)
/* 63CA0 800630A0 03E00008 */  jr         $ra
/* 63CA4 800630A4 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800630A8
/* 63CA8 800630A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 63CAC 800630AC AFBF001C */  sw         $ra, 0x1c($sp)
/* 63CB0 800630B0 AFA40038 */  sw         $a0, 0x38($sp)
/* 63CB4 800630B4 AFA5003C */  sw         $a1, 0x3c($sp)
/* 63CB8 800630B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 63CBC 800630BC 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 63CC0 800630C0 C424F66C */  lwc1       $f4, %lo(D_8013F66C)($at)
/* 63CC4 800630C4 8FA4003C */  lw         $a0, 0x3c($sp)
/* 63CC8 800630C8 E7A40030 */  swc1       $f4, 0x30($sp)
/* 63CCC 800630CC 0C0541BE */  jal        func_801506F8
/* 63CD0 800630D0 E7A4002C */   swc1      $f4, 0x2c($sp)
/* 63CD4 800630D4 E7A00028 */  swc1       $f0, 0x28($sp)
/* 63CD8 800630D8 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 63CDC 800630DC C7A80030 */  lwc1       $f8, 0x30($sp)
/* 63CE0 800630E0 4608303C */  c.lt.s     $f6, $f8
/* 63CE4 800630E4 00000000 */  nop
/* 63CE8 800630E8 45000019 */  bc1f       .L80063150
/* 63CEC 800630EC 00000000 */   nop
/* 63CF0 800630F0 8FAF003C */  lw         $t7, 0x3c($sp)
/* 63CF4 800630F4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 63CF8 800630F8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 63CFC 800630FC 000FC080 */  sll        $t8, $t7, 2
/* 63D00 80063100 030FC023 */  subu       $t8, $t8, $t7
/* 63D04 80063104 0018C080 */  sll        $t8, $t8, 2
/* 63D08 80063108 030FC023 */  subu       $t8, $t8, $t7
/* 63D0C 8006310C 0018C080 */  sll        $t8, $t8, 2
/* 63D10 80063110 030FC021 */  addu       $t8, $t8, $t7
/* 63D14 80063114 0018C080 */  sll        $t8, $t8, 2
/* 63D18 80063118 030FC023 */  subu       $t8, $t8, $t7
/* 63D1C 8006311C 0018C080 */  sll        $t8, $t8, 2
/* 63D20 80063120 E7A6002C */  swc1       $f6, 0x2c($sp)
/* 63D24 80063124 01D8C821 */  addu       $t9, $t6, $t8
/* 63D28 80063128 C72A00E4 */  lwc1       $f10, 0xe4($t9)
/* 63D2C 8006312C 3C014059 */  lui        $at, 0x4059
/* 63D30 80063130 44812800 */  mtc1       $at, $f5
/* 63D34 80063134 46065401 */  sub.s      $f16, $f10, $f6
/* 63D38 80063138 44802000 */  mtc1       $zero, $f4
/* 63D3C 8006313C 460084A1 */  cvt.d.s    $f18, $f16
/* 63D40 80063140 46249201 */  sub.d      $f8, $f18, $f4
/* 63D44 80063144 462042A0 */  cvt.s.d    $f10, $f8
/* 63D48 80063148 10000004 */  b          .L8006315C
/* 63D4C 8006314C E7AA0030 */   swc1      $f10, 0x30($sp)
.L80063150:
/* 63D50 80063150 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 63D54 80063154 C426F65C */  lwc1       $f6, %lo(D_8013F65C)($at)
/* 63D58 80063158 E7A60030 */  swc1       $f6, 0x30($sp)
.L8006315C:
/* 63D5C 8006315C 3C018014 */  lui        $at, %hi(D_8013F660)
/* 63D60 80063160 C430F660 */  lwc1       $f16, %lo(D_8013F660)($at)
/* 63D64 80063164 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 63D68 80063168 C432F65C */  lwc1       $f18, %lo(D_8013F65C)($at)
/* 63D6C 8006316C 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 63D70 80063170 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 63D74 80063174 46128101 */  sub.s      $f4, $f16, $f18
/* 63D78 80063178 3C018014 */  lui        $at, %hi(D_8013F664)
/* 63D7C 8006317C E424F664 */  swc1       $f4, %lo(D_8013F664)($at)
/* 63D80 80063180 2A010059 */  slti       $at, $s0, 0x59
/* 63D84 80063184 14200012 */  bnez       $at, .L800631D0
/* 63D88 80063188 2A01005C */   slti      $at, $s0, 0x5c
/* 63D8C 8006318C 1420000B */  bnez       $at, .L800631BC
/* 63D90 80063190 00000000 */   nop
/* 63D94 80063194 2608FF20 */  addiu      $t0, $s0, -0xe0
/* 63D98 80063198 2D010021 */  sltiu      $at, $t0, 0x21
/* 63D9C 8006319C 102002AC */  beqz       $at, .L80063C50
/* 63DA0 800631A0 00000000 */   nop
/* 63DA4 800631A4 00084080 */  sll        $t0, $t0, 2
/* 63DA8 800631A8 3C01800E */  lui        $at, %hi(D_800DDFF8)
/* 63DAC 800631AC 00280821 */  addu       $at, $at, $t0
/* 63DB0 800631B0 8C28DFF8 */  lw         $t0, %lo(D_800DDFF8)($at)
/* 63DB4 800631B4 01000008 */  jr         $t0
/* 63DB8 800631B8 00000000 */   nop
.L800631BC:
/* 63DBC 800631BC 2401005B */  addiu      $at, $zero, 0x5b
/* 63DC0 800631C0 12010031 */  beq        $s0, $at, .L80063288
/* 63DC4 800631C4 00000000 */   nop
/* 63DC8 800631C8 100002A1 */  b          .L80063C50
/* 63DCC 800631CC 00000000 */   nop
.L800631D0:
/* 63DD0 800631D0 24010057 */  addiu      $at, $zero, 0x57
/* 63DD4 800631D4 12010234 */  beq        $s0, $at, .L80063AA8
/* 63DD8 800631D8 24010058 */   addiu     $at, $zero, 0x58
/* 63DDC 800631DC 12010232 */  beq        $s0, $at, .L80063AA8
/* 63DE0 800631E0 00000000 */   nop
/* 63DE4 800631E4 1000029A */  b          .L80063C50
/* 63DE8 800631E8 00000000 */   nop
/* 63DEC 800631EC 8FA90038 */  lw         $t1, 0x38($sp)
/* 63DF0 800631F0 3C010400 */  lui        $at, 0x400
/* 63DF4 800631F4 8D2A0000 */  lw         $t2, ($t1)
/* 63DF8 800631F8 01415824 */  and        $t3, $t2, $at
/* 63DFC 800631FC 1560001B */  bnez       $t3, .L8006326C
/* 63E00 80063200 00000000 */   nop
/* 63E04 80063204 8FAD003C */  lw         $t5, 0x3c($sp)
/* 63E08 80063208 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 63E0C 8006320C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 63E10 80063210 000D7880 */  sll        $t7, $t5, 2
/* 63E14 80063214 01ED7823 */  subu       $t7, $t7, $t5
/* 63E18 80063218 000F7880 */  sll        $t7, $t7, 2
/* 63E1C 8006321C 01ED7823 */  subu       $t7, $t7, $t5
/* 63E20 80063220 000F7880 */  sll        $t7, $t7, 2
/* 63E24 80063224 01ED7821 */  addu       $t7, $t7, $t5
/* 63E28 80063228 000F7880 */  sll        $t7, $t7, 2
/* 63E2C 8006322C 01ED7823 */  subu       $t7, $t7, $t5
/* 63E30 80063230 000F7880 */  sll        $t7, $t7, 2
/* 63E34 80063234 018F7021 */  addu       $t6, $t4, $t7
/* 63E38 80063238 8DD8028C */  lw         $t8, 0x28c($t6)
/* 63E3C 8006323C 3C010400 */  lui        $at, 0x400
/* 63E40 80063240 0301C824 */  and        $t9, $t8, $at
/* 63E44 80063244 13200009 */  beqz       $t9, .L8006326C
/* 63E48 80063248 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 63E4C 8006324C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 63E50 80063250 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63E54 80063254 240800DE */  addiu      $t0, $zero, 0xde
/* 63E58 80063258 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 63E5C 8006325C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63E60 80063260 24090022 */  addiu      $t1, $zero, 0x22
/* 63E64 80063264 1000027A */  b          .L80063C50
/* 63E68 80063268 AC29F60C */   sw        $t1, %lo(D_8013F60C)($at)
.L8006326C:
/* 63E6C 8006326C 240A005B */  addiu      $t2, $zero, 0x5b
/* 63E70 80063270 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63E74 80063274 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 63E78 80063278 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 63E7C 8006327C 240B0001 */  addiu      $t3, $zero, 1
/* 63E80 80063280 10000273 */  b          .L80063C50
/* 63E84 80063284 AC2BF61C */   sw        $t3, %lo(D_8013F61C)($at)
.L80063288:
/* 63E88 80063288 8FAD0038 */  lw         $t5, 0x38($sp)
/* 63E8C 8006328C 3C010040 */  lui        $at, 0x40
/* 63E90 80063290 8DAC0000 */  lw         $t4, ($t5)
/* 63E94 80063294 01817824 */  and        $t7, $t4, $at
/* 63E98 80063298 11E00038 */  beqz       $t7, .L8006337C
/* 63E9C 8006329C 3C018014 */   lui       $at, %hi(D_8013F664)
/* 63EA0 800632A0 C428F664 */  lwc1       $f8, %lo(D_8013F664)($at)
/* 63EA4 800632A4 3C014348 */  lui        $at, 0x4348
/* 63EA8 800632A8 44815000 */  mtc1       $at, $f10
/* 63EAC 800632AC 00000000 */  nop
/* 63EB0 800632B0 4608503C */  c.lt.s     $f10, $f8
/* 63EB4 800632B4 00000000 */  nop
/* 63EB8 800632B8 45000265 */  bc1f       .L80063C50
/* 63EBC 800632BC 3C014396 */   lui       $at, 0x4396
/* 63EC0 800632C0 44818000 */  mtc1       $at, $f16
/* 63EC4 800632C4 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* 63EC8 800632C8 4610303C */  c.lt.s     $f6, $f16
/* 63ECC 800632CC 00000000 */  nop
/* 63ED0 800632D0 4500025F */  bc1f       .L80063C50
/* 63ED4 800632D4 00000000 */   nop
/* 63ED8 800632D8 8FA9003C */  lw         $t1, 0x3c($sp)
/* 63EDC 800632DC 3C018014 */  lui        $at, %hi(D_8013F604)
/* 63EE0 800632E0 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 63EE4 800632E4 00095080 */  sll        $t2, $t1, 2
/* 63EE8 800632E8 01495023 */  subu       $t2, $t2, $t1
/* 63EEC 800632EC 000A5080 */  sll        $t2, $t2, 2
/* 63EF0 800632F0 01495023 */  subu       $t2, $t2, $t1
/* 63EF4 800632F4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 63EF8 800632F8 240E00BC */  addiu      $t6, $zero, 0xbc
/* 63EFC 800632FC 000A5080 */  sll        $t2, $t2, 2
/* 63F00 80063300 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 63F04 80063304 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 63F08 80063308 01495021 */  addu       $t2, $t2, $t1
/* 63F0C 8006330C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 63F10 80063310 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 63F14 80063314 24180023 */  addiu      $t8, $zero, 0x23
/* 63F18 80063318 000A5080 */  sll        $t2, $t2, 2
/* 63F1C 8006331C AC38F60C */  sw         $t8, %lo(D_8013F60C)($at)
/* 63F20 80063320 01495023 */  subu       $t2, $t2, $t1
/* 63F24 80063324 3C018014 */  lui        $at, %hi(D_8013F608)
/* 63F28 80063328 24190003 */  addiu      $t9, $zero, 3
/* 63F2C 8006332C 000A5080 */  sll        $t2, $t2, 2
/* 63F30 80063330 AC39F608 */  sw         $t9, %lo(D_8013F608)($at)
/* 63F34 80063334 010A5821 */  addu       $t3, $t0, $t2
/* 63F38 80063338 C5720104 */  lwc1       $f18, 0x104($t3)
/* 63F3C 8006333C 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 63F40 80063340 C7A60030 */  lwc1       $f6, 0x30($sp)
/* 63F44 80063344 46009107 */  neg.s      $f4, $f18
/* 63F48 80063348 E424F64C */  swc1       $f4, %lo(D_8013F64C)($at)
/* 63F4C 8006334C C5680114 */  lwc1       $f8, 0x114($t3)
/* 63F50 80063350 3C018014 */  lui        $at, %hi(D_8013F650)
/* 63F54 80063354 46003421 */  cvt.d.s    $f16, $f6
/* 63F58 80063358 46004287 */  neg.s      $f10, $f8
/* 63F5C 8006335C E42AF650 */  swc1       $f10, %lo(D_8013F650)($at)
/* 63F60 80063360 3C01800E */  lui        $at, %hi(D_800DE080)
/* 63F64 80063364 D432E080 */  ldc1       $f18, %lo(D_800DE080)($at)
/* 63F68 80063368 3C018014 */  lui        $at, %hi(D_8013F638)
/* 63F6C 8006336C 46328100 */  add.d      $f4, $f16, $f18
/* 63F70 80063370 46202220 */  cvt.s.d    $f8, $f4
/* 63F74 80063374 10000236 */  b          .L80063C50
/* 63F78 80063378 E428F638 */   swc1      $f8, %lo(D_8013F638)($at)
.L8006337C:
/* 63F7C 8006337C 8FAC003C */  lw         $t4, 0x3c($sp)
/* 63F80 80063380 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 63F84 80063384 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 63F88 80063388 000C7880 */  sll        $t7, $t4, 2
/* 63F8C 8006338C 01EC7823 */  subu       $t7, $t7, $t4
/* 63F90 80063390 000F7880 */  sll        $t7, $t7, 2
/* 63F94 80063394 01EC7823 */  subu       $t7, $t7, $t4
/* 63F98 80063398 000F7880 */  sll        $t7, $t7, 2
/* 63F9C 8006339C 01EC7821 */  addu       $t7, $t7, $t4
/* 63FA0 800633A0 000F7880 */  sll        $t7, $t7, 2
/* 63FA4 800633A4 01EC7823 */  subu       $t7, $t7, $t4
/* 63FA8 800633A8 000F7880 */  sll        $t7, $t7, 2
/* 63FAC 800633AC 01AF7021 */  addu       $t6, $t5, $t7
/* 63FB0 800633B0 C5CA0104 */  lwc1       $f10, 0x104($t6)
/* 63FB4 800633B4 3C01800E */  lui        $at, %hi(D_800DE088)
/* 63FB8 800633B8 D430E088 */  ldc1       $f16, %lo(D_800DE088)($at)
/* 63FBC 800633BC 460051A1 */  cvt.d.s    $f6, $f10
/* 63FC0 800633C0 46268481 */  sub.d      $f18, $f16, $f6
/* 63FC4 800633C4 0C016929 */  jal        func_8005A4A4
/* 63FC8 800633C8 46209320 */   cvt.s.d   $f12, $f18
/* 63FCC 800633CC E7A00034 */  swc1       $f0, 0x34($sp)
/* 63FD0 800633D0 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 63FD4 800633D4 3C01800E */  lui        $at, %hi(D_800DE090)
/* 63FD8 800633D8 D42AE090 */  ldc1       $f10, %lo(D_800DE090)($at)
/* 63FDC 800633DC 46002221 */  cvt.d.s    $f8, $f4
/* 63FE0 800633E0 462A403C */  c.lt.d     $f8, $f10
/* 63FE4 800633E4 00000000 */  nop
/* 63FE8 800633E8 4501000A */  bc1t       .L80063414
/* 63FEC 800633EC 3C018014 */   lui       $at, %hi(D_8013F624)
/* 63FF0 800633F0 C430F624 */  lwc1       $f16, %lo(D_8013F624)($at)
/* 63FF4 800633F4 3C014024 */  lui        $at, 0x4024
/* 63FF8 800633F8 44819800 */  mtc1       $at, $f19
/* 63FFC 800633FC 44809000 */  mtc1       $zero, $f18
/* 64000 80063400 460081A1 */  cvt.d.s    $f6, $f16
/* 64004 80063404 4626903C */  c.lt.d     $f18, $f6
/* 64008 80063408 00000000 */  nop
/* 6400C 8006340C 45000094 */  bc1f       .L80063660
/* 64010 80063410 00000000 */   nop
.L80063414:
/* 64014 80063414 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 64018 80063418 44804000 */  mtc1       $zero, $f8
/* 6401C 8006341C 00000000 */  nop
/* 64020 80063420 46082032 */  c.eq.s     $f4, $f8
/* 64024 80063424 00000000 */  nop
/* 64028 80063428 4501004A */  bc1t       .L80063554
/* 6402C 8006342C 00000000 */   nop
/* 64030 80063430 8FB9003C */  lw         $t9, 0x3c($sp)
/* 64034 80063434 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 64038 80063438 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 6403C 8006343C 00194880 */  sll        $t1, $t9, 2
/* 64040 80063440 01394823 */  subu       $t1, $t1, $t9
/* 64044 80063444 00094880 */  sll        $t1, $t1, 2
/* 64048 80063448 01394823 */  subu       $t1, $t1, $t9
/* 6404C 8006344C 00094880 */  sll        $t1, $t1, 2
/* 64050 80063450 01394821 */  addu       $t1, $t1, $t9
/* 64054 80063454 00094880 */  sll        $t1, $t1, 2
/* 64058 80063458 01394823 */  subu       $t1, $t1, $t9
/* 6405C 8006345C 00094880 */  sll        $t1, $t1, 2
/* 64060 80063460 03094021 */  addu       $t0, $t8, $t1
/* 64064 80063464 8D0A0058 */  lw         $t2, 0x58($t0)
/* 64068 80063468 314B0003 */  andi       $t3, $t2, 3
/* 6406C 8006346C 15600013 */  bnez       $t3, .L800634BC
/* 64070 80063470 00000000 */   nop
/* 64074 80063474 240C00EF */  addiu      $t4, $zero, 0xef
/* 64078 80063478 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6407C 8006347C AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 64080 80063480 44805000 */  mtc1       $zero, $f10
/* 64084 80063484 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64088 80063488 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6408C 8006348C 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64090 80063490 E42AF658 */  swc1       $f10, %lo(D_8013F658)($at)
/* 64094 80063494 C51000D8 */  lwc1       $f16, 0xd8($t0)
/* 64098 80063498 3C014018 */  lui        $at, 0x4018
/* 6409C 8006349C 44819800 */  mtc1       $at, $f19
/* 640A0 800634A0 44809000 */  mtc1       $zero, $f18
/* 640A4 800634A4 460081A1 */  cvt.d.s    $f6, $f16
/* 640A8 800634A8 3C018014 */  lui        $at, %hi(D_8013F644)
/* 640AC 800634AC 46323100 */  add.d      $f4, $f6, $f18
/* 640B0 800634B0 46202220 */  cvt.s.d    $f8, $f4
/* 640B4 800634B4 100000BB */  b          .L800637A4
/* 640B8 800634B8 E428F644 */   swc1      $f8, %lo(D_8013F644)($at)
.L800634BC:
/* 640BC 800634BC 8FAF003C */  lw         $t7, 0x3c($sp)
/* 640C0 800634C0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 640C4 800634C4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 640C8 800634C8 000F7080 */  sll        $t6, $t7, 2
/* 640CC 800634CC 01CF7023 */  subu       $t6, $t6, $t7
/* 640D0 800634D0 000E7080 */  sll        $t6, $t6, 2
/* 640D4 800634D4 01CF7023 */  subu       $t6, $t6, $t7
/* 640D8 800634D8 000E7080 */  sll        $t6, $t6, 2
/* 640DC 800634DC 01CF7021 */  addu       $t6, $t6, $t7
/* 640E0 800634E0 000E7080 */  sll        $t6, $t6, 2
/* 640E4 800634E4 01CF7023 */  subu       $t6, $t6, $t7
/* 640E8 800634E8 000E7080 */  sll        $t6, $t6, 2
/* 640EC 800634EC 01AEC821 */  addu       $t9, $t5, $t6
/* 640F0 800634F0 C72A00FC */  lwc1       $f10, 0xfc($t9)
/* 640F4 800634F4 3C014014 */  lui        $at, 0x4014
/* 640F8 800634F8 44813800 */  mtc1       $at, $f7
/* 640FC 800634FC 44803000 */  mtc1       $zero, $f6
/* 64100 80063500 46005421 */  cvt.d.s    $f16, $f10
/* 64104 80063504 3C018014 */  lui        $at, %hi(D_8013F640)
/* 64108 80063508 46268482 */  mul.d      $f18, $f16, $f6
/* 6410C 8006350C 44808000 */  mtc1       $zero, $f16
/* 64110 80063510 46209120 */  cvt.s.d    $f4, $f18
/* 64114 80063514 E424F640 */  swc1       $f4, %lo(D_8013F640)($at)
/* 64118 80063518 C7280100 */  lwc1       $f8, 0x100($t9)
/* 6411C 8006351C 3C014014 */  lui        $at, 0x4014
/* 64120 80063520 44818800 */  mtc1       $at, $f17
/* 64124 80063524 460042A1 */  cvt.d.s    $f10, $f8
/* 64128 80063528 3C018014 */  lui        $at, %hi(D_8013F648)
/* 6412C 8006352C 46305182 */  mul.d      $f6, $f10, $f16
/* 64130 80063530 44804000 */  mtc1       $zero, $f8
/* 64134 80063534 462034A0 */  cvt.s.d    $f18, $f6
/* 64138 80063538 E432F648 */  swc1       $f18, %lo(D_8013F648)($at)
/* 6413C 8006353C 3C0140A0 */  lui        $at, 0x40a0
/* 64140 80063540 44812000 */  mtc1       $at, $f4
/* 64144 80063544 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64148 80063548 E7240294 */  swc1       $f4, 0x294($t9)
/* 6414C 8006354C 10000095 */  b          .L800637A4
/* 64150 80063550 E428F658 */   swc1      $f8, %lo(D_8013F658)($at)
.L80063554:
/* 64154 80063554 8FA9003C */  lw         $t1, 0x3c($sp)
/* 64158 80063558 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 6415C 8006355C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 64160 80063560 00095080 */  sll        $t2, $t1, 2
/* 64164 80063564 01495023 */  subu       $t2, $t2, $t1
/* 64168 80063568 000A5080 */  sll        $t2, $t2, 2
/* 6416C 8006356C 01495023 */  subu       $t2, $t2, $t1
/* 64170 80063570 000A5080 */  sll        $t2, $t2, 2
/* 64174 80063574 01495021 */  addu       $t2, $t2, $t1
/* 64178 80063578 000A5080 */  sll        $t2, $t2, 2
/* 6417C 8006357C 01495023 */  subu       $t2, $t2, $t1
/* 64180 80063580 000A5080 */  sll        $t2, $t2, 2
/* 64184 80063584 030A5821 */  addu       $t3, $t8, $t2
/* 64188 80063588 8D6C0058 */  lw         $t4, 0x58($t3)
/* 6418C 8006358C 31880003 */  andi       $t0, $t4, 3
/* 64190 80063590 1500000D */  bnez       $t0, .L800635C8
/* 64194 80063594 00000000 */   nop
/* 64198 80063598 240F0001 */  addiu      $t7, $zero, 1
/* 6419C 8006359C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 641A0 800635A0 AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 641A4 800635A4 C56A0104 */  lwc1       $f10, 0x104($t3)
/* 641A8 800635A8 3C01800E */  lui        $at, %hi(D_800DE098)
/* 641AC 800635AC D426E098 */  ldc1       $f6, %lo(D_800DE098)($at)
/* 641B0 800635B0 46005421 */  cvt.d.s    $f16, $f10
/* 641B4 800635B4 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 641B8 800635B8 46303481 */  sub.d      $f18, $f6, $f16
/* 641BC 800635BC 46209120 */  cvt.s.d    $f4, $f18
/* 641C0 800635C0 10000078 */  b          .L800637A4
/* 641C4 800635C4 E424F64C */   swc1      $f4, %lo(D_8013F64C)($at)
.L800635C8:
/* 641C8 800635C8 8FAE003C */  lw         $t6, 0x3c($sp)
/* 641CC 800635CC 3C0D8016 */  lui        $t5, 0x8016
/* 641D0 800635D0 44804000 */  mtc1       $zero, $f8
/* 641D4 800635D4 000EC880 */  sll        $t9, $t6, 2
/* 641D8 800635D8 032EC823 */  subu       $t9, $t9, $t6
/* 641DC 800635DC 0019C880 */  sll        $t9, $t9, 2
/* 641E0 800635E0 032EC823 */  subu       $t9, $t9, $t6
/* 641E4 800635E4 0019C880 */  sll        $t9, $t9, 2
/* 641E8 800635E8 032EC821 */  addu       $t9, $t9, $t6
/* 641EC 800635EC 8DADFB9C */  lw         $t5, -0x464($t5)
/* 641F0 800635F0 0019C880 */  sll        $t9, $t9, 2
/* 641F4 800635F4 032EC823 */  subu       $t9, $t9, $t6
/* 641F8 800635F8 3C018014 */  lui        $at, %hi(D_8013F658)
/* 641FC 800635FC 0019C880 */  sll        $t9, $t9, 2
/* 64200 80063600 E428F658 */  swc1       $f8, %lo(D_8013F658)($at)
/* 64204 80063604 01B94821 */  addu       $t1, $t5, $t9
/* 64208 80063608 C52A00FC */  lwc1       $f10, 0xfc($t1)
/* 6420C 8006360C 3C014014 */  lui        $at, 0x4014
/* 64210 80063610 44818800 */  mtc1       $at, $f17
/* 64214 80063614 44808000 */  mtc1       $zero, $f16
/* 64218 80063618 460051A1 */  cvt.d.s    $f6, $f10
/* 6421C 8006361C 3C018014 */  lui        $at, %hi(D_8013F640)
/* 64220 80063620 46303482 */  mul.d      $f18, $f6, $f16
/* 64224 80063624 44803000 */  mtc1       $zero, $f6
/* 64228 80063628 46209120 */  cvt.s.d    $f4, $f18
/* 6422C 8006362C E424F640 */  swc1       $f4, %lo(D_8013F640)($at)
/* 64230 80063630 C5280100 */  lwc1       $f8, 0x100($t1)
/* 64234 80063634 3C014014 */  lui        $at, 0x4014
/* 64238 80063638 44813800 */  mtc1       $at, $f7
/* 6423C 8006363C 460042A1 */  cvt.d.s    $f10, $f8
/* 64240 80063640 3C018014 */  lui        $at, %hi(D_8013F648)
/* 64244 80063644 46265402 */  mul.d      $f16, $f10, $f6
/* 64248 80063648 462084A0 */  cvt.s.d    $f18, $f16
/* 6424C 8006364C E432F648 */  swc1       $f18, %lo(D_8013F648)($at)
/* 64250 80063650 3C0140A0 */  lui        $at, 0x40a0
/* 64254 80063654 44812000 */  mtc1       $at, $f4
/* 64258 80063658 10000052 */  b          .L800637A4
/* 6425C 8006365C E5240294 */   swc1      $f4, 0x294($t1)
.L80063660:
/* 64260 80063660 8FAA003C */  lw         $t2, 0x3c($sp)
/* 64264 80063664 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 64268 80063668 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 6426C 8006366C 000A6080 */  sll        $t4, $t2, 2
/* 64270 80063670 018A6023 */  subu       $t4, $t4, $t2
/* 64274 80063674 000C6080 */  sll        $t4, $t4, 2
/* 64278 80063678 018A6023 */  subu       $t4, $t4, $t2
/* 6427C 8006367C 000C6080 */  sll        $t4, $t4, 2
/* 64280 80063680 018A6021 */  addu       $t4, $t4, $t2
/* 64284 80063684 000C6080 */  sll        $t4, $t4, 2
/* 64288 80063688 018A6023 */  subu       $t4, $t4, $t2
/* 6428C 8006368C 000C6080 */  sll        $t4, $t4, 2
/* 64290 80063690 030C4021 */  addu       $t0, $t8, $t4
/* 64294 80063694 0C016929 */  jal        func_8005A4A4
/* 64298 80063698 C50C0104 */   lwc1      $f12, 0x104($t0)
/* 6429C 8006369C 3C01800E */  lui        $at, %hi(D_800DE0A0)
/* 642A0 800636A0 D42AE0A0 */  ldc1       $f10, %lo(D_800DE0A0)($at)
/* 642A4 800636A4 46000221 */  cvt.d.s    $f8, $f0
/* 642A8 800636A8 4628503C */  c.lt.d     $f10, $f8
/* 642AC 800636AC 00000000 */  nop
/* 642B0 800636B0 4500001A */  bc1f       .L8006371C
/* 642B4 800636B4 00000000 */   nop
/* 642B8 800636B8 8FAB003C */  lw         $t3, 0x3c($sp)
/* 642BC 800636BC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 642C0 800636C0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 642C4 800636C4 000B7080 */  sll        $t6, $t3, 2
/* 642C8 800636C8 01CB7023 */  subu       $t6, $t6, $t3
/* 642CC 800636CC 000E7080 */  sll        $t6, $t6, 2
/* 642D0 800636D0 01CB7023 */  subu       $t6, $t6, $t3
/* 642D4 800636D4 000E7080 */  sll        $t6, $t6, 2
/* 642D8 800636D8 01CB7021 */  addu       $t6, $t6, $t3
/* 642DC 800636DC 000E7080 */  sll        $t6, $t6, 2
/* 642E0 800636E0 01CB7023 */  subu       $t6, $t6, $t3
/* 642E4 800636E4 000E7080 */  sll        $t6, $t6, 2
/* 642E8 800636E8 01EE6821 */  addu       $t5, $t7, $t6
/* 642EC 800636EC 8DB90058 */  lw         $t9, 0x58($t5)
/* 642F0 800636F0 33290003 */  andi       $t1, $t9, 3
/* 642F4 800636F4 15200009 */  bnez       $t1, .L8006371C
/* 642F8 800636F8 00000000 */   nop
/* 642FC 800636FC C5AE0104 */  lwc1       $f14, 0x104($t5)
/* 64300 80063700 3C01800E */  lui        $at, %hi(D_800DE0A8)
/* 64304 80063704 C42CE0A8 */  lwc1       $f12, %lo(D_800DE0A8)($at)
/* 64308 80063708 0C016AAC */  jal        func_8005AAB0
/* 6430C 8006370C 46007387 */   neg.s     $f14, $f14
/* 64310 80063710 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 64314 80063714 10000004 */  b          .L80063728
/* 64318 80063718 E420F64C */   swc1      $f0, %lo(D_8013F64C)($at)
.L8006371C:
/* 6431C 8006371C 44803000 */  mtc1       $zero, $f6
/* 64320 80063720 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64324 80063724 E426F658 */  swc1       $f6, %lo(D_8013F658)($at)
.L80063728:
/* 64328 80063728 8FAA0038 */  lw         $t2, 0x38($sp)
/* 6432C 8006372C 3C010400 */  lui        $at, 0x400
/* 64330 80063730 8D580000 */  lw         $t8, ($t2)
/* 64334 80063734 03016024 */  and        $t4, $t8, $at
/* 64338 80063738 1580001A */  bnez       $t4, .L800637A4
/* 6433C 8006373C 00000000 */   nop
/* 64340 80063740 8FAB003C */  lw         $t3, 0x3c($sp)
/* 64344 80063744 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 64348 80063748 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 6434C 8006374C 000B7880 */  sll        $t7, $t3, 2
/* 64350 80063750 01EB7823 */  subu       $t7, $t7, $t3
/* 64354 80063754 000F7880 */  sll        $t7, $t7, 2
/* 64358 80063758 01EB7823 */  subu       $t7, $t7, $t3
/* 6435C 8006375C 000F7880 */  sll        $t7, $t7, 2
/* 64360 80063760 01EB7821 */  addu       $t7, $t7, $t3
/* 64364 80063764 000F7880 */  sll        $t7, $t7, 2
/* 64368 80063768 01EB7823 */  subu       $t7, $t7, $t3
/* 6436C 8006376C 000F7880 */  sll        $t7, $t7, 2
/* 64370 80063770 010F7021 */  addu       $t6, $t0, $t7
/* 64374 80063774 8DD9028C */  lw         $t9, 0x28c($t6)
/* 64378 80063778 3C010400 */  lui        $at, 0x400
/* 6437C 8006377C 03214824 */  and        $t1, $t9, $at
/* 64380 80063780 11200008 */  beqz       $t1, .L800637A4
/* 64384 80063784 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 64388 80063788 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6438C 8006378C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64390 80063790 240D00DE */  addiu      $t5, $zero, 0xde
/* 64394 80063794 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 64398 80063798 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6439C 8006379C 240A0022 */  addiu      $t2, $zero, 0x22
/* 643A0 800637A0 AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
.L800637A4:
/* 643A4 800637A4 3C018014 */  lui        $at, %hi(D_8013F664)
/* 643A8 800637A8 C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 643AC 800637AC 3C01437A */  lui        $at, 0x437a
/* 643B0 800637B0 44819000 */  mtc1       $at, $f18
/* 643B4 800637B4 00000000 */  nop
/* 643B8 800637B8 4610903C */  c.lt.s     $f18, $f16
/* 643BC 800637BC 00000000 */  nop
/* 643C0 800637C0 45000123 */  bc1f       .L80063C50
/* 643C4 800637C4 00000000 */   nop
/* 643C8 800637C8 8FAC003C */  lw         $t4, 0x3c($sp)
/* 643CC 800637CC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 643D0 800637D0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 643D4 800637D4 000C5880 */  sll        $t3, $t4, 2
/* 643D8 800637D8 016C5823 */  subu       $t3, $t3, $t4
/* 643DC 800637DC 000B5880 */  sll        $t3, $t3, 2
/* 643E0 800637E0 016C5823 */  subu       $t3, $t3, $t4
/* 643E4 800637E4 000B5880 */  sll        $t3, $t3, 2
/* 643E8 800637E8 016C5821 */  addu       $t3, $t3, $t4
/* 643EC 800637EC 000B5880 */  sll        $t3, $t3, 2
/* 643F0 800637F0 016C5823 */  subu       $t3, $t3, $t4
/* 643F4 800637F4 000B5880 */  sll        $t3, $t3, 2
/* 643F8 800637F8 030B4021 */  addu       $t0, $t8, $t3
/* 643FC 800637FC C50400E4 */  lwc1       $f4, 0xe4($t0)
/* 64400 80063800 3C014059 */  lui        $at, 0x4059
/* 64404 80063804 44815800 */  mtc1       $at, $f11
/* 64408 80063808 44805000 */  mtc1       $zero, $f10
/* 6440C 8006380C 46002221 */  cvt.d.s    $f8, $f4
/* 64410 80063810 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 64414 80063814 C430F65C */  lwc1       $f16, %lo(D_8013F65C)($at)
/* 64418 80063818 462A4181 */  sub.d      $f6, $f8, $f10
/* 6441C 8006381C 3C014059 */  lui        $at, 0x4059
/* 64420 80063820 44814800 */  mtc1       $at, $f9
/* 64424 80063824 460084A1 */  cvt.d.s    $f18, $f16
/* 64428 80063828 44804000 */  mtc1       $zero, $f8
/* 6442C 8006382C 46323101 */  sub.d      $f4, $f6, $f18
/* 64430 80063830 4628203C */  c.lt.d     $f4, $f8
/* 64434 80063834 00000000 */  nop
/* 64438 80063838 45000006 */  bc1f       .L80063854
/* 6443C 8006383C 3C01800E */   lui       $at, %hi(D_800DE0B0)
/* 64440 80063840 D42AE0B0 */  ldc1       $f10, %lo(D_800DE0B0)($at)
/* 64444 80063844 3C018014 */  lui        $at, %hi(D_8013F638)
/* 64448 80063848 462A9400 */  add.d      $f16, $f18, $f10
/* 6444C 8006384C 462081A0 */  cvt.s.d    $f6, $f16
/* 64450 80063850 E426F638 */  swc1       $f6, %lo(D_8013F638)($at)
.L80063854:
/* 64454 80063854 8FAE003C */  lw         $t6, 0x3c($sp)
/* 64458 80063858 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 6445C 8006385C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 64460 80063860 000EC880 */  sll        $t9, $t6, 2
/* 64464 80063864 032EC823 */  subu       $t9, $t9, $t6
/* 64468 80063868 0019C880 */  sll        $t9, $t9, 2
/* 6446C 8006386C 032EC823 */  subu       $t9, $t9, $t6
/* 64470 80063870 0019C880 */  sll        $t9, $t9, 2
/* 64474 80063874 032EC821 */  addu       $t9, $t9, $t6
/* 64478 80063878 0019C880 */  sll        $t9, $t9, 2
/* 6447C 8006387C 032EC823 */  subu       $t9, $t9, $t6
/* 64480 80063880 0019C880 */  sll        $t9, $t9, 2
/* 64484 80063884 3C0141A0 */  lui        $at, 0x41a0
/* 64488 80063888 01F94821 */  addu       $t1, $t7, $t9
/* 6448C 8006388C C52400E4 */  lwc1       $f4, 0xe4($t1)
/* 64490 80063890 44814000 */  mtc1       $at, $f8
/* 64494 80063894 3C018014 */  lui        $at, %hi(D_8013F660)
/* 64498 80063898 C42AF660 */  lwc1       $f10, %lo(D_8013F660)($at)
/* 6449C 8006389C 46082481 */  sub.s      $f18, $f4, $f8
/* 644A0 800638A0 44802000 */  mtc1       $zero, $f4
/* 644A4 800638A4 44802800 */  mtc1       $zero, $f5
/* 644A8 800638A8 46125401 */  sub.s      $f16, $f10, $f18
/* 644AC 800638AC 460081A1 */  cvt.d.s    $f6, $f16
/* 644B0 800638B0 4624303C */  c.lt.d     $f6, $f4
/* 644B4 800638B4 00000000 */  nop
/* 644B8 800638B8 450000E5 */  bc1f       .L80063C50
/* 644BC 800638BC 3C014024 */   lui       $at, 0x4024
/* 644C0 800638C0 44819800 */  mtc1       $at, $f19
/* 644C4 800638C4 44809000 */  mtc1       $zero, $f18
/* 644C8 800638C8 46005221 */  cvt.d.s    $f8, $f10
/* 644CC 800638CC 3C018014 */  lui        $at, %hi(D_8013F638)
/* 644D0 800638D0 46324400 */  add.d      $f16, $f8, $f18
/* 644D4 800638D4 462081A0 */  cvt.s.d    $f6, $f16
/* 644D8 800638D8 100000DD */  b          .L80063C50
/* 644DC 800638DC E426F638 */   swc1      $f6, %lo(D_8013F638)($at)
/* 644E0 800638E0 8FAA003C */  lw         $t2, 0x3c($sp)
/* 644E4 800638E4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 644E8 800638E8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 644EC 800638EC 000A6080 */  sll        $t4, $t2, 2
/* 644F0 800638F0 018A6023 */  subu       $t4, $t4, $t2
/* 644F4 800638F4 000C6080 */  sll        $t4, $t4, 2
/* 644F8 800638F8 018A6023 */  subu       $t4, $t4, $t2
/* 644FC 800638FC 000C6080 */  sll        $t4, $t4, 2
/* 64500 80063900 018A6021 */  addu       $t4, $t4, $t2
/* 64504 80063904 000C6080 */  sll        $t4, $t4, 2
/* 64508 80063908 018A6023 */  subu       $t4, $t4, $t2
/* 6450C 8006390C 000C6080 */  sll        $t4, $t4, 2
/* 64510 80063910 01ACC021 */  addu       $t8, $t5, $t4
/* 64514 80063914 8F0B0058 */  lw         $t3, 0x58($t8)
/* 64518 80063918 1560000F */  bnez       $t3, .L80063958
/* 6451C 8006391C 00000000 */   nop
/* 64520 80063920 24080034 */  addiu      $t0, $zero, 0x34
/* 64524 80063924 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64528 80063928 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 6452C 8006392C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64530 80063930 240E00F0 */  addiu      $t6, $zero, 0xf0
/* 64534 80063934 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 64538 80063938 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6453C 8006393C 240F0001 */  addiu      $t7, $zero, 1
/* 64540 80063940 AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 64544 80063944 3C01800E */  lui        $at, %hi(D_800DE0B8)
/* 64548 80063948 C424E0B8 */  lwc1       $f4, %lo(D_800DE0B8)($at)
/* 6454C 8006394C 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64550 80063950 100000BF */  b          .L80063C50
/* 64554 80063954 E424F658 */   swc1      $f4, %lo(D_8013F658)($at)
.L80063958:
/* 64558 80063958 2419005B */  addiu      $t9, $zero, 0x5b
/* 6455C 8006395C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64560 80063960 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 64564 80063964 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64568 80063968 24090035 */  addiu      $t1, $zero, 0x35
/* 6456C 8006396C AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 64570 80063970 3C018014 */  lui        $at, %hi(D_8013F608)
/* 64574 80063974 240A0003 */  addiu      $t2, $zero, 3
/* 64578 80063978 AC2AF608 */  sw         $t2, %lo(D_8013F608)($at)
/* 6457C 8006397C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64580 80063980 240D0001 */  addiu      $t5, $zero, 1
/* 64584 80063984 100000B2 */  b          .L80063C50
/* 64588 80063988 AC2DF61C */   sw        $t5, %lo(D_8013F61C)($at)
/* 6458C 8006398C 3C018014 */  lui        $at, %hi(D_8013F624)
/* 64590 80063990 C42AF624 */  lwc1       $f10, %lo(D_8013F624)($at)
/* 64594 80063994 3C014024 */  lui        $at, 0x4024
/* 64598 80063998 44819800 */  mtc1       $at, $f19
/* 6459C 8006399C 44809000 */  mtc1       $zero, $f18
/* 645A0 800639A0 46005221 */  cvt.d.s    $f8, $f10
/* 645A4 800639A4 4628903C */  c.lt.d     $f18, $f8
/* 645A8 800639A8 00000000 */  nop
/* 645AC 800639AC 45000006 */  bc1f       .L800639C8
/* 645B0 800639B0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 645B4 800639B4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 645B8 800639B8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 645BC 800639BC 240C00E0 */  addiu      $t4, $zero, 0xe0
/* 645C0 800639C0 100000A3 */  b          .L80063C50
/* 645C4 800639C4 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L800639C8:
/* 645C8 800639C8 8FB80038 */  lw         $t8, 0x38($sp)
/* 645CC 800639CC 3C010400 */  lui        $at, 0x400
/* 645D0 800639D0 8F0B0000 */  lw         $t3, ($t8)
/* 645D4 800639D4 01614024 */  and        $t0, $t3, $at
/* 645D8 800639D8 1500001B */  bnez       $t0, .L80063A48
/* 645DC 800639DC 00000000 */   nop
/* 645E0 800639E0 8FAF003C */  lw         $t7, 0x3c($sp)
/* 645E4 800639E4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 645E8 800639E8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 645EC 800639EC 000FC880 */  sll        $t9, $t7, 2
/* 645F0 800639F0 032FC823 */  subu       $t9, $t9, $t7
/* 645F4 800639F4 0019C880 */  sll        $t9, $t9, 2
/* 645F8 800639F8 032FC823 */  subu       $t9, $t9, $t7
/* 645FC 800639FC 0019C880 */  sll        $t9, $t9, 2
/* 64600 80063A00 032FC821 */  addu       $t9, $t9, $t7
/* 64604 80063A04 0019C880 */  sll        $t9, $t9, 2
/* 64608 80063A08 032FC823 */  subu       $t9, $t9, $t7
/* 6460C 80063A0C 0019C880 */  sll        $t9, $t9, 2
/* 64610 80063A10 01D94821 */  addu       $t1, $t6, $t9
/* 64614 80063A14 8D2A028C */  lw         $t2, 0x28c($t1)
/* 64618 80063A18 3C010400 */  lui        $at, 0x400
/* 6461C 80063A1C 01416824 */  and        $t5, $t2, $at
/* 64620 80063A20 11A00009 */  beqz       $t5, .L80063A48
/* 64624 80063A24 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 64628 80063A28 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6462C 80063A2C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64630 80063A30 240C00DE */  addiu      $t4, $zero, 0xde
/* 64634 80063A34 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 64638 80063A38 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6463C 80063A3C 24180022 */  addiu      $t8, $zero, 0x22
/* 64640 80063A40 10000083 */  b          .L80063C50
/* 64644 80063A44 AC38F60C */   sw        $t8, %lo(D_8013F60C)($at)
.L80063A48:
/* 64648 80063A48 8FAE003C */  lw         $t6, 0x3c($sp)
/* 6464C 80063A4C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 64650 80063A50 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 64654 80063A54 000EC880 */  sll        $t9, $t6, 2
/* 64658 80063A58 032EC823 */  subu       $t9, $t9, $t6
/* 6465C 80063A5C 0019C880 */  sll        $t9, $t9, 2
/* 64660 80063A60 032EC823 */  subu       $t9, $t9, $t6
/* 64664 80063A64 0019C880 */  sll        $t9, $t9, 2
/* 64668 80063A68 032EC821 */  addu       $t9, $t9, $t6
/* 6466C 80063A6C 240B0100 */  addiu      $t3, $zero, 0x100
/* 64670 80063A70 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64674 80063A74 0019C880 */  sll        $t9, $t9, 2
/* 64678 80063A78 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 6467C 80063A7C 032EC823 */  subu       $t9, $t9, $t6
/* 64680 80063A80 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64684 80063A84 24080001 */  addiu      $t0, $zero, 1
/* 64688 80063A88 0019C880 */  sll        $t9, $t9, 2
/* 6468C 80063A8C AC28F61C */  sw         $t0, %lo(D_8013F61C)($at)
/* 64690 80063A90 01F94821 */  addu       $t1, $t7, $t9
/* 64694 80063A94 C5300104 */  lwc1       $f16, 0x104($t1)
/* 64698 80063A98 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 6469C 80063A9C 46008187 */  neg.s      $f6, $f16
/* 646A0 80063AA0 1000006B */  b          .L80063C50
/* 646A4 80063AA4 E426F64C */   swc1      $f6, %lo(D_8013F64C)($at)
.L80063AA8:
/* 646A8 80063AA8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 646AC 80063AAC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 646B0 80063AB0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 646B4 80063AB4 240A0100 */  addiu      $t2, $zero, 0x100
/* 646B8 80063AB8 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 646BC 80063ABC 8FA40038 */  lw         $a0, 0x38($sp)
/* 646C0 80063AC0 0C018BF5 */  jal        func_80062FD4
/* 646C4 80063AC4 8FA5003C */   lw        $a1, 0x3c($sp)
/* 646C8 80063AC8 14400061 */  bnez       $v0, .L80063C50
/* 646CC 80063ACC 3C018014 */   lui       $at, %hi(D_8013F624)
/* 646D0 80063AD0 C424F624 */  lwc1       $f4, %lo(D_8013F624)($at)
/* 646D4 80063AD4 3C014024 */  lui        $at, 0x4024
/* 646D8 80063AD8 44814800 */  mtc1       $at, $f9
/* 646DC 80063ADC 44804000 */  mtc1       $zero, $f8
/* 646E0 80063AE0 460022A1 */  cvt.d.s    $f10, $f4
/* 646E4 80063AE4 462A403E */  c.le.d     $f8, $f10
/* 646E8 80063AE8 00000000 */  nop
/* 646EC 80063AEC 45000007 */  bc1f       .L80063B0C
/* 646F0 80063AF0 00000000 */   nop
/* 646F4 80063AF4 240D00E0 */  addiu      $t5, $zero, 0xe0
/* 646F8 80063AF8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 646FC 80063AFC AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 64700 80063B00 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64704 80063B04 10000052 */  b          .L80063C50
/* 64708 80063B08 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80063B0C:
/* 6470C 80063B0C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 64710 80063B10 3C010400 */  lui        $at, 0x400
/* 64714 80063B14 8D980000 */  lw         $t8, ($t4)
/* 64718 80063B18 03015824 */  and        $t3, $t8, $at
/* 6471C 80063B1C 1560004C */  bnez       $t3, .L80063C50
/* 64720 80063B20 00000000 */   nop
/* 64724 80063B24 8FAE003C */  lw         $t6, 0x3c($sp)
/* 64728 80063B28 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 6472C 80063B2C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 64730 80063B30 000E7880 */  sll        $t7, $t6, 2
/* 64734 80063B34 01EE7823 */  subu       $t7, $t7, $t6
/* 64738 80063B38 000F7880 */  sll        $t7, $t7, 2
/* 6473C 80063B3C 01EE7823 */  subu       $t7, $t7, $t6
/* 64740 80063B40 000F7880 */  sll        $t7, $t7, 2
/* 64744 80063B44 01EE7821 */  addu       $t7, $t7, $t6
/* 64748 80063B48 000F7880 */  sll        $t7, $t7, 2
/* 6474C 80063B4C 01EE7823 */  subu       $t7, $t7, $t6
/* 64750 80063B50 000F7880 */  sll        $t7, $t7, 2
/* 64754 80063B54 010FC821 */  addu       $t9, $t0, $t7
/* 64758 80063B58 8F29028C */  lw         $t1, 0x28c($t9)
/* 6475C 80063B5C 3C010400 */  lui        $at, 0x400
/* 64760 80063B60 01215024 */  and        $t2, $t1, $at
/* 64764 80063B64 1140003A */  beqz       $t2, .L80063C50
/* 64768 80063B68 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 6476C 80063B6C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 64770 80063B70 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64774 80063B74 240D00DE */  addiu      $t5, $zero, 0xde
/* 64778 80063B78 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 6477C 80063B7C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64780 80063B80 240C0022 */  addiu      $t4, $zero, 0x22
/* 64784 80063B84 10000032 */  b          .L80063C50
/* 64788 80063B88 AC2CF60C */   sw        $t4, %lo(D_8013F60C)($at)
/* 6478C 80063B8C 8FA40038 */  lw         $a0, 0x38($sp)
/* 64790 80063B90 0C018BF5 */  jal        func_80062FD4
/* 64794 80063B94 8FA5003C */   lw        $a1, 0x3c($sp)
/* 64798 80063B98 1440002D */  bnez       $v0, .L80063C50
/* 6479C 80063B9C 3C018014 */   lui       $at, %hi(D_8013F624)
/* 647A0 80063BA0 C432F624 */  lwc1       $f18, %lo(D_8013F624)($at)
/* 647A4 80063BA4 3C014024 */  lui        $at, 0x4024
/* 647A8 80063BA8 44813800 */  mtc1       $at, $f7
/* 647AC 80063BAC 44803000 */  mtc1       $zero, $f6
/* 647B0 80063BB0 46009421 */  cvt.d.s    $f16, $f18
/* 647B4 80063BB4 4626803C */  c.lt.d     $f16, $f6
/* 647B8 80063BB8 00000000 */  nop
/* 647BC 80063BBC 45000006 */  bc1f       .L80063BD8
/* 647C0 80063BC0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 647C4 80063BC4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 647C8 80063BC8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 647CC 80063BCC 241800E2 */  addiu      $t8, $zero, 0xe2
/* 647D0 80063BD0 1000001F */  b          .L80063C50
/* 647D4 80063BD4 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80063BD8:
/* 647D8 80063BD8 8FAF003C */  lw         $t7, 0x3c($sp)
/* 647DC 80063BDC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 647E0 80063BE0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 647E4 80063BE4 000FC880 */  sll        $t9, $t7, 2
/* 647E8 80063BE8 032FC823 */  subu       $t9, $t9, $t7
/* 647EC 80063BEC 0019C880 */  sll        $t9, $t9, 2
/* 647F0 80063BF0 032FC823 */  subu       $t9, $t9, $t7
/* 647F4 80063BF4 0019C880 */  sll        $t9, $t9, 2
/* 647F8 80063BF8 032FC821 */  addu       $t9, $t9, $t7
/* 647FC 80063BFC 240B0034 */  addiu      $t3, $zero, 0x34
/* 64800 80063C00 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64804 80063C04 0019C880 */  sll        $t9, $t9, 2
/* 64808 80063C08 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 6480C 80063C0C 032FC823 */  subu       $t9, $t9, $t7
/* 64810 80063C10 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64814 80063C14 240E0001 */  addiu      $t6, $zero, 1
/* 64818 80063C18 0019C880 */  sll        $t9, $t9, 2
/* 6481C 80063C1C AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 64820 80063C20 01194821 */  addu       $t1, $t0, $t9
/* 64824 80063C24 C5240104 */  lwc1       $f4, 0x104($t1)
/* 64828 80063C28 3C01800E */  lui        $at, %hi(D_800DE0C0)
/* 6482C 80063C2C D428E0C0 */  ldc1       $f8, %lo(D_800DE0C0)($at)
/* 64830 80063C30 460022A1 */  cvt.d.s    $f10, $f4
/* 64834 80063C34 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 64838 80063C38 462A4481 */  sub.d      $f18, $f8, $f10
/* 6483C 80063C3C 240A00E1 */  addiu      $t2, $zero, 0xe1
/* 64840 80063C40 46209420 */  cvt.s.d    $f16, $f18
/* 64844 80063C44 E430F64C */  swc1       $f16, %lo(D_8013F64C)($at)
/* 64848 80063C48 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6484C 80063C4C AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
.L80063C50:
/* 64850 80063C50 3C018014 */  lui        $at, %hi(D_8013F664)
/* 64854 80063C54 C426F664 */  lwc1       $f6, %lo(D_8013F664)($at)
/* 64858 80063C58 3C01437A */  lui        $at, 0x437a
/* 6485C 80063C5C 44812000 */  mtc1       $at, $f4
/* 64860 80063C60 00000000 */  nop
/* 64864 80063C64 4606203C */  c.lt.s     $f4, $f6
/* 64868 80063C68 00000000 */  nop
/* 6486C 80063C6C 45000047 */  bc1f       .L80063D8C
/* 64870 80063C70 00000000 */   nop
/* 64874 80063C74 8FAC003C */  lw         $t4, 0x3c($sp)
/* 64878 80063C78 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 6487C 80063C7C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 64880 80063C80 000CC080 */  sll        $t8, $t4, 2
/* 64884 80063C84 030CC023 */  subu       $t8, $t8, $t4
/* 64888 80063C88 0018C080 */  sll        $t8, $t8, 2
/* 6488C 80063C8C 030CC023 */  subu       $t8, $t8, $t4
/* 64890 80063C90 0018C080 */  sll        $t8, $t8, 2
/* 64894 80063C94 030CC021 */  addu       $t8, $t8, $t4
/* 64898 80063C98 0018C080 */  sll        $t8, $t8, 2
/* 6489C 80063C9C 030CC023 */  subu       $t8, $t8, $t4
/* 648A0 80063CA0 0018C080 */  sll        $t8, $t8, 2
/* 648A4 80063CA4 01B85821 */  addu       $t3, $t5, $t8
/* 648A8 80063CA8 C56800E4 */  lwc1       $f8, 0xe4($t3)
/* 648AC 80063CAC 3C014059 */  lui        $at, 0x4059
/* 648B0 80063CB0 44819800 */  mtc1       $at, $f19
/* 648B4 80063CB4 44809000 */  mtc1       $zero, $f18
/* 648B8 80063CB8 460042A1 */  cvt.d.s    $f10, $f8
/* 648BC 80063CBC 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 648C0 80063CC0 C426F65C */  lwc1       $f6, %lo(D_8013F65C)($at)
/* 648C4 80063CC4 46325401 */  sub.d      $f16, $f10, $f18
/* 648C8 80063CC8 3C014059 */  lui        $at, 0x4059
/* 648CC 80063CCC 44815800 */  mtc1       $at, $f11
/* 648D0 80063CD0 46003121 */  cvt.d.s    $f4, $f6
/* 648D4 80063CD4 44805000 */  mtc1       $zero, $f10
/* 648D8 80063CD8 46248201 */  sub.d      $f8, $f16, $f4
/* 648DC 80063CDC 462A403C */  c.lt.d     $f8, $f10
/* 648E0 80063CE0 00000000 */  nop
/* 648E4 80063CE4 45000007 */  bc1f       .L80063D04
/* 648E8 80063CE8 3C014069 */   lui       $at, 0x4069
/* 648EC 80063CEC 44819800 */  mtc1       $at, $f19
/* 648F0 80063CF0 44809000 */  mtc1       $zero, $f18
/* 648F4 80063CF4 3C018014 */  lui        $at, %hi(D_8013F638)
/* 648F8 80063CF8 46322180 */  add.d      $f6, $f4, $f18
/* 648FC 80063CFC 46203420 */  cvt.s.d    $f16, $f6
/* 64900 80063D00 E430F638 */  swc1       $f16, %lo(D_8013F638)($at)
.L80063D04:
/* 64904 80063D04 8FAF003C */  lw         $t7, 0x3c($sp)
/* 64908 80063D08 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 6490C 80063D0C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 64910 80063D10 000F4080 */  sll        $t0, $t7, 2
/* 64914 80063D14 010F4023 */  subu       $t0, $t0, $t7
/* 64918 80063D18 00084080 */  sll        $t0, $t0, 2
/* 6491C 80063D1C 010F4023 */  subu       $t0, $t0, $t7
/* 64920 80063D20 00084080 */  sll        $t0, $t0, 2
/* 64924 80063D24 010F4021 */  addu       $t0, $t0, $t7
/* 64928 80063D28 00084080 */  sll        $t0, $t0, 2
/* 6492C 80063D2C 010F4023 */  subu       $t0, $t0, $t7
/* 64930 80063D30 00084080 */  sll        $t0, $t0, 2
/* 64934 80063D34 3C0141A0 */  lui        $at, 0x41a0
/* 64938 80063D38 01C8C821 */  addu       $t9, $t6, $t0
/* 6493C 80063D3C C72800E4 */  lwc1       $f8, 0xe4($t9)
/* 64940 80063D40 44815000 */  mtc1       $at, $f10
/* 64944 80063D44 3C018014 */  lui        $at, %hi(D_8013F660)
/* 64948 80063D48 C432F660 */  lwc1       $f18, %lo(D_8013F660)($at)
/* 6494C 80063D4C 460A4101 */  sub.s      $f4, $f8, $f10
/* 64950 80063D50 44804000 */  mtc1       $zero, $f8
/* 64954 80063D54 44804800 */  mtc1       $zero, $f9
/* 64958 80063D58 46049181 */  sub.s      $f6, $f18, $f4
/* 6495C 80063D5C 46003421 */  cvt.d.s    $f16, $f6
/* 64960 80063D60 4628803C */  c.lt.d     $f16, $f8
/* 64964 80063D64 00000000 */  nop
/* 64968 80063D68 45000008 */  bc1f       .L80063D8C
/* 6496C 80063D6C 3C014024 */   lui       $at, 0x4024
/* 64970 80063D70 44812800 */  mtc1       $at, $f5
/* 64974 80063D74 44802000 */  mtc1       $zero, $f4
/* 64978 80063D78 460092A1 */  cvt.d.s    $f10, $f18
/* 6497C 80063D7C 3C018014 */  lui        $at, %hi(D_8013F638)
/* 64980 80063D80 46245180 */  add.d      $f6, $f10, $f4
/* 64984 80063D84 46203420 */  cvt.s.d    $f16, $f6
/* 64988 80063D88 E430F638 */  swc1       $f16, %lo(D_8013F638)($at)
.L80063D8C:
/* 6498C 80063D8C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 64990 80063D90 8FB00018 */  lw         $s0, 0x18($sp)
/* 64994 80063D94 27BD0038 */  addiu      $sp, $sp, 0x38
/* 64998 80063D98 03E00008 */  jr         $ra
/* 6499C 80063D9C 00000000 */   nop

glabel func_80063DA0
/* 649A0 80063DA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 649A4 80063DA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 649A8 80063DA8 AFA40028 */  sw         $a0, 0x28($sp)
/* 649AC 80063DAC AFA5002C */  sw         $a1, 0x2c($sp)
/* 649B0 80063DB0 AFB00018 */  sw         $s0, 0x18($sp)
/* 649B4 80063DB4 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 649B8 80063DB8 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 649BC 80063DBC 240100E1 */  addiu      $at, $zero, 0xe1
/* 649C0 80063DC0 120100BF */  beq        $s0, $at, .L800640C0
/* 649C4 80063DC4 240100F0 */   addiu     $at, $zero, 0xf0
/* 649C8 80063DC8 16010146 */  bne        $s0, $at, .L800642E4
/* 649CC 80063DCC 3C018014 */   lui       $at, %hi(D_8013F664)
/* 649D0 80063DD0 C424F664 */  lwc1       $f4, %lo(D_8013F664)($at)
/* 649D4 80063DD4 3C014348 */  lui        $at, 0x4348
/* 649D8 80063DD8 44813000 */  mtc1       $at, $f6
/* 649DC 80063DDC 00000000 */  nop
/* 649E0 80063DE0 4604303C */  c.lt.s     $f6, $f4
/* 649E4 80063DE4 00000000 */  nop
/* 649E8 80063DE8 4500013E */  bc1f       .L800642E4
/* 649EC 80063DEC 00000000 */   nop
/* 649F0 80063DF0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 649F4 80063DF4 3C010400 */  lui        $at, 0x400
/* 649F8 80063DF8 8DCF0000 */  lw         $t7, ($t6)
/* 649FC 80063DFC 01E1C024 */  and        $t8, $t7, $at
/* 64A00 80063E00 17000025 */  bnez       $t8, .L80063E98
/* 64A04 80063E04 00000000 */   nop
/* 64A08 80063E08 8FA8002C */  lw         $t0, 0x2c($sp)
/* 64A0C 80063E0C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 64A10 80063E10 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 64A14 80063E14 00084880 */  sll        $t1, $t0, 2
/* 64A18 80063E18 01284823 */  subu       $t1, $t1, $t0
/* 64A1C 80063E1C 00094880 */  sll        $t1, $t1, 2
/* 64A20 80063E20 01284823 */  subu       $t1, $t1, $t0
/* 64A24 80063E24 00094880 */  sll        $t1, $t1, 2
/* 64A28 80063E28 01284821 */  addu       $t1, $t1, $t0
/* 64A2C 80063E2C 00094880 */  sll        $t1, $t1, 2
/* 64A30 80063E30 01284823 */  subu       $t1, $t1, $t0
/* 64A34 80063E34 00094880 */  sll        $t1, $t1, 2
/* 64A38 80063E38 03295021 */  addu       $t2, $t9, $t1
/* 64A3C 80063E3C 8D4B028C */  lw         $t3, 0x28c($t2)
/* 64A40 80063E40 3C010400 */  lui        $at, 0x400
/* 64A44 80063E44 01616024 */  and        $t4, $t3, $at
/* 64A48 80063E48 11800013 */  beqz       $t4, .L80063E98
/* 64A4C 80063E4C 00000000 */   nop
/* 64A50 80063E50 44804000 */  mtc1       $zero, $f8
/* 64A54 80063E54 3C018014 */  lui        $at, %hi(D_8013F648)
/* 64A58 80063E58 44805000 */  mtc1       $zero, $f10
/* 64A5C 80063E5C E428F648 */  swc1       $f8, %lo(D_8013F648)($at)
/* 64A60 80063E60 3C018014 */  lui        $at, %hi(D_8013F644)
/* 64A64 80063E64 E428F644 */  swc1       $f8, %lo(D_8013F644)($at)
/* 64A68 80063E68 3C018014 */  lui        $at, %hi(D_8013F640)
/* 64A6C 80063E6C E428F640 */  swc1       $f8, %lo(D_8013F640)($at)
/* 64A70 80063E70 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64A74 80063E74 E42AF658 */  swc1       $f10, %lo(D_8013F658)($at)
/* 64A78 80063E78 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64A7C 80063E7C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 64A80 80063E80 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64A84 80063E84 240D00DE */  addiu      $t5, $zero, 0xde
/* 64A88 80063E88 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 64A8C 80063E8C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64A90 80063E90 240E0022 */  addiu      $t6, $zero, 0x22
/* 64A94 80063E94 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
.L80063E98:
/* 64A98 80063E98 3C018014 */  lui        $at, %hi(D_8013F624)
/* 64A9C 80063E9C C430F624 */  lwc1       $f16, %lo(D_8013F624)($at)
/* 64AA0 80063EA0 3C014024 */  lui        $at, 0x4024
/* 64AA4 80063EA4 44812800 */  mtc1       $at, $f5
/* 64AA8 80063EA8 44802000 */  mtc1       $zero, $f4
/* 64AAC 80063EAC 460084A1 */  cvt.d.s    $f18, $f16
/* 64AB0 80063EB0 4624903C */  c.lt.d     $f18, $f4
/* 64AB4 80063EB4 00000000 */  nop
/* 64AB8 80063EB8 45010006 */  bc1t       .L80063ED4
/* 64ABC 80063EBC 00000000 */   nop
/* 64AC0 80063EC0 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 64AC4 80063EC4 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 64AC8 80063EC8 24010002 */  addiu      $at, $zero, 2
/* 64ACC 80063ECC 15E10105 */  bne        $t7, $at, .L800642E4
/* 64AD0 80063ED0 00000000 */   nop
.L80063ED4:
/* 64AD4 80063ED4 8FA8002C */  lw         $t0, 0x2c($sp)
/* 64AD8 80063ED8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 64ADC 80063EDC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 64AE0 80063EE0 0008C880 */  sll        $t9, $t0, 2
/* 64AE4 80063EE4 0328C823 */  subu       $t9, $t9, $t0
/* 64AE8 80063EE8 0019C880 */  sll        $t9, $t9, 2
/* 64AEC 80063EEC 0328C823 */  subu       $t9, $t9, $t0
/* 64AF0 80063EF0 0019C880 */  sll        $t9, $t9, 2
/* 64AF4 80063EF4 0328C821 */  addu       $t9, $t9, $t0
/* 64AF8 80063EF8 0019C880 */  sll        $t9, $t9, 2
/* 64AFC 80063EFC 0328C823 */  subu       $t9, $t9, $t0
/* 64B00 80063F00 0019C880 */  sll        $t9, $t9, 2
/* 64B04 80063F04 03194821 */  addu       $t1, $t8, $t9
/* 64B08 80063F08 0C016929 */  jal        func_8005A4A4
/* 64B0C 80063F0C C52C0104 */   lwc1      $f12, 0x104($t1)
/* 64B10 80063F10 3C01800E */  lui        $at, %hi(D_800DE0C8)
/* 64B14 80063F14 D428E0C8 */  ldc1       $f8, %lo(D_800DE0C8)($at)
/* 64B18 80063F18 460001A1 */  cvt.d.s    $f6, $f0
/* 64B1C 80063F1C 4628303C */  c.lt.d     $f6, $f8
/* 64B20 80063F20 00000000 */  nop
/* 64B24 80063F24 45000010 */  bc1f       .L80063F68
/* 64B28 80063F28 00000000 */   nop
/* 64B2C 80063F2C 240A00F1 */  addiu      $t2, $zero, 0xf1
/* 64B30 80063F30 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64B34 80063F34 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 64B38 80063F38 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64B3C 80063F3C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 64B40 80063F40 44805000 */  mtc1       $zero, $f10
/* 64B44 80063F44 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64B48 80063F48 240B0035 */  addiu      $t3, $zero, 0x35
/* 64B4C 80063F4C AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 64B50 80063F50 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64B54 80063F54 E42AF658 */  swc1       $f10, %lo(D_8013F658)($at)
/* 64B58 80063F58 3C018014 */  lui        $at, %hi(D_8013F604)
/* 64B5C 80063F5C 240C0001 */  addiu      $t4, $zero, 1
/* 64B60 80063F60 100000E0 */  b          .L800642E4
/* 64B64 80063F64 AC2CF604 */   sw        $t4, %lo(D_8013F604)($at)
.L80063F68:
/* 64B68 80063F68 8FAE002C */  lw         $t6, 0x2c($sp)
/* 64B6C 80063F6C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 64B70 80063F70 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 64B74 80063F74 000E7880 */  sll        $t7, $t6, 2
/* 64B78 80063F78 01EE7823 */  subu       $t7, $t7, $t6
/* 64B7C 80063F7C 000F7880 */  sll        $t7, $t7, 2
/* 64B80 80063F80 01EE7823 */  subu       $t7, $t7, $t6
/* 64B84 80063F84 000F7880 */  sll        $t7, $t7, 2
/* 64B88 80063F88 01EE7821 */  addu       $t7, $t7, $t6
/* 64B8C 80063F8C 000F7880 */  sll        $t7, $t7, 2
/* 64B90 80063F90 01EE7823 */  subu       $t7, $t7, $t6
/* 64B94 80063F94 000F7880 */  sll        $t7, $t7, 2
/* 64B98 80063F98 01AF4021 */  addu       $t0, $t5, $t7
/* 64B9C 80063F9C C5100104 */  lwc1       $f16, 0x104($t0)
/* 64BA0 80063FA0 3C01800E */  lui        $at, %hi(D_800DE0D0)
/* 64BA4 80063FA4 D424E0D0 */  ldc1       $f4, %lo(D_800DE0D0)($at)
/* 64BA8 80063FA8 460084A1 */  cvt.d.s    $f18, $f16
/* 64BAC 80063FAC 46249181 */  sub.d      $f6, $f18, $f4
/* 64BB0 80063FB0 0C016929 */  jal        func_8005A4A4
/* 64BB4 80063FB4 46203320 */   cvt.s.d   $f12, $f6
/* 64BB8 80063FB8 3C01800E */  lui        $at, %hi(D_800DE0D8)
/* 64BBC 80063FBC D42AE0D8 */  ldc1       $f10, %lo(D_800DE0D8)($at)
/* 64BC0 80063FC0 46000221 */  cvt.d.s    $f8, $f0
/* 64BC4 80063FC4 462A403C */  c.lt.d     $f8, $f10
/* 64BC8 80063FC8 00000000 */  nop
/* 64BCC 80063FCC 45000020 */  bc1f       .L80064050
/* 64BD0 80063FD0 00000000 */   nop
/* 64BD4 80063FD4 8FB9002C */  lw         $t9, 0x2c($sp)
/* 64BD8 80063FD8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 64BDC 80063FDC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 64BE0 80063FE0 00194880 */  sll        $t1, $t9, 2
/* 64BE4 80063FE4 01394823 */  subu       $t1, $t1, $t9
/* 64BE8 80063FE8 00094880 */  sll        $t1, $t1, 2
/* 64BEC 80063FEC 01394823 */  subu       $t1, $t1, $t9
/* 64BF0 80063FF0 00094880 */  sll        $t1, $t1, 2
/* 64BF4 80063FF4 01394821 */  addu       $t1, $t1, $t9
/* 64BF8 80063FF8 00094880 */  sll        $t1, $t1, 2
/* 64BFC 80063FFC 01394823 */  subu       $t1, $t1, $t9
/* 64C00 80064000 00094880 */  sll        $t1, $t1, 2
/* 64C04 80064004 03095021 */  addu       $t2, $t8, $t1
/* 64C08 80064008 C5500104 */  lwc1       $f16, 0x104($t2)
/* 64C0C 8006400C 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 64C10 80064010 44802000 */  mtc1       $zero, $f4
/* 64C14 80064014 46008487 */  neg.s      $f18, $f16
/* 64C18 80064018 240B0001 */  addiu      $t3, $zero, 1
/* 64C1C 8006401C E432F64C */  swc1       $f18, %lo(D_8013F64C)($at)
/* 64C20 80064020 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64C24 80064024 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
/* 64C28 80064028 3C018014 */  lui        $at, %hi(D_8013F648)
/* 64C2C 8006402C E424F648 */  swc1       $f4, %lo(D_8013F648)($at)
/* 64C30 80064030 3C018014 */  lui        $at, %hi(D_8013F644)
/* 64C34 80064034 E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
/* 64C38 80064038 3C018014 */  lui        $at, %hi(D_8013F640)
/* 64C3C 8006403C E424F640 */  swc1       $f4, %lo(D_8013F640)($at)
/* 64C40 80064040 3C018014 */  lui        $at, %hi(D_8013F604)
/* 64C44 80064044 240C0002 */  addiu      $t4, $zero, 2
/* 64C48 80064048 100000A6 */  b          .L800642E4
/* 64C4C 8006404C AC2CF604 */   sw        $t4, %lo(D_8013F604)($at)
.L80064050:
/* 64C50 80064050 8FAD002C */  lw         $t5, 0x2c($sp)
/* 64C54 80064054 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 64C58 80064058 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 64C5C 8006405C 000D7880 */  sll        $t7, $t5, 2
/* 64C60 80064060 01ED7823 */  subu       $t7, $t7, $t5
/* 64C64 80064064 000F7880 */  sll        $t7, $t7, 2
/* 64C68 80064068 01ED7823 */  subu       $t7, $t7, $t5
/* 64C6C 8006406C 000F7880 */  sll        $t7, $t7, 2
/* 64C70 80064070 01ED7821 */  addu       $t7, $t7, $t5
/* 64C74 80064074 000F7880 */  sll        $t7, $t7, 2
/* 64C78 80064078 01ED7823 */  subu       $t7, $t7, $t5
/* 64C7C 8006407C 000F7880 */  sll        $t7, $t7, 2
/* 64C80 80064080 3C01800E */  lui        $at, %hi(D_800DE0E0)
/* 64C84 80064084 01CF4021 */  addu       $t0, $t6, $t7
/* 64C88 80064088 C5060104 */  lwc1       $f6, 0x104($t0)
/* 64C8C 8006408C C42CE0E0 */  lwc1       $f12, %lo(D_800DE0E0)($at)
/* 64C90 80064090 3C01800E */  lui        $at, %hi(D_800DE0E8)
/* 64C94 80064094 D42AE0E8 */  ldc1       $f10, %lo(D_800DE0E8)($at)
/* 64C98 80064098 46003221 */  cvt.d.s    $f8, $f6
/* 64C9C 8006409C 46285401 */  sub.d      $f16, $f10, $f8
/* 64CA0 800640A0 0C016AAC */  jal        func_8005AAB0
/* 64CA4 800640A4 462083A0 */   cvt.s.d   $f14, $f16
/* 64CA8 800640A8 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 64CAC 800640AC E420F64C */  swc1       $f0, %lo(D_8013F64C)($at)
/* 64CB0 800640B0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64CB4 800640B4 24190001 */  addiu      $t9, $zero, 1
/* 64CB8 800640B8 1000008A */  b          .L800642E4
/* 64CBC 800640BC AC39F61C */   sw        $t9, %lo(D_8013F61C)($at)
.L800640C0:
/* 64CC0 800640C0 3C018014 */  lui        $at, %hi(D_8013F624)
/* 64CC4 800640C4 C432F624 */  lwc1       $f18, %lo(D_8013F624)($at)
/* 64CC8 800640C8 3C014024 */  lui        $at, 0x4024
/* 64CCC 800640CC 44813800 */  mtc1       $at, $f7
/* 64CD0 800640D0 44803000 */  mtc1       $zero, $f6
/* 64CD4 800640D4 46009121 */  cvt.d.s    $f4, $f18
/* 64CD8 800640D8 4626203C */  c.lt.d     $f4, $f6
/* 64CDC 800640DC 00000000 */  nop
/* 64CE0 800640E0 45010006 */  bc1t       .L800640FC
/* 64CE4 800640E4 00000000 */   nop
/* 64CE8 800640E8 3C188014 */  lui        $t8, %hi(D_8013F604)
/* 64CEC 800640EC 8F18F604 */  lw         $t8, %lo(D_8013F604)($t8)
/* 64CF0 800640F0 24010002 */  addiu      $at, $zero, 2
/* 64CF4 800640F4 1701007B */  bne        $t8, $at, .L800642E4
/* 64CF8 800640F8 00000000 */   nop
.L800640FC:
/* 64CFC 800640FC 8FAA002C */  lw         $t2, 0x2c($sp)
/* 64D00 80064100 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 64D04 80064104 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 64D08 80064108 000A5880 */  sll        $t3, $t2, 2
/* 64D0C 8006410C 016A5823 */  subu       $t3, $t3, $t2
/* 64D10 80064110 000B5880 */  sll        $t3, $t3, 2
/* 64D14 80064114 016A5823 */  subu       $t3, $t3, $t2
/* 64D18 80064118 000B5880 */  sll        $t3, $t3, 2
/* 64D1C 8006411C 016A5821 */  addu       $t3, $t3, $t2
/* 64D20 80064120 000B5880 */  sll        $t3, $t3, 2
/* 64D24 80064124 016A5823 */  subu       $t3, $t3, $t2
/* 64D28 80064128 000B5880 */  sll        $t3, $t3, 2
/* 64D2C 8006412C 012B6021 */  addu       $t4, $t1, $t3
/* 64D30 80064130 0C016929 */  jal        func_8005A4A4
/* 64D34 80064134 C58C0104 */   lwc1      $f12, 0x104($t4)
/* 64D38 80064138 3C01800E */  lui        $at, %hi(D_800DE0F0)
/* 64D3C 8006413C D428E0F0 */  ldc1       $f8, %lo(D_800DE0F0)($at)
/* 64D40 80064140 460002A1 */  cvt.d.s    $f10, $f0
/* 64D44 80064144 4628503C */  c.lt.d     $f10, $f8
/* 64D48 80064148 00000000 */  nop
/* 64D4C 8006414C 45000010 */  bc1f       .L80064190
/* 64D50 80064150 00000000 */   nop
/* 64D54 80064154 240D00E2 */  addiu      $t5, $zero, 0xe2
/* 64D58 80064158 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64D5C 8006415C AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 64D60 80064160 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64D64 80064164 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 64D68 80064168 44808000 */  mtc1       $zero, $f16
/* 64D6C 8006416C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64D70 80064170 240E0035 */  addiu      $t6, $zero, 0x35
/* 64D74 80064174 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 64D78 80064178 3C018014 */  lui        $at, %hi(D_8013F658)
/* 64D7C 8006417C E430F658 */  swc1       $f16, %lo(D_8013F658)($at)
/* 64D80 80064180 3C018014 */  lui        $at, %hi(D_8013F604)
/* 64D84 80064184 240F0001 */  addiu      $t7, $zero, 1
/* 64D88 80064188 10000056 */  b          .L800642E4
/* 64D8C 8006418C AC2FF604 */   sw        $t7, %lo(D_8013F604)($at)
.L80064190:
/* 64D90 80064190 8FB9002C */  lw         $t9, 0x2c($sp)
/* 64D94 80064194 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 64D98 80064198 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 64D9C 8006419C 0019C080 */  sll        $t8, $t9, 2
/* 64DA0 800641A0 0319C023 */  subu       $t8, $t8, $t9
/* 64DA4 800641A4 0018C080 */  sll        $t8, $t8, 2
/* 64DA8 800641A8 0319C023 */  subu       $t8, $t8, $t9
/* 64DAC 800641AC 0018C080 */  sll        $t8, $t8, 2
/* 64DB0 800641B0 0319C021 */  addu       $t8, $t8, $t9
/* 64DB4 800641B4 0018C080 */  sll        $t8, $t8, 2
/* 64DB8 800641B8 0319C023 */  subu       $t8, $t8, $t9
/* 64DBC 800641BC 0018C080 */  sll        $t8, $t8, 2
/* 64DC0 800641C0 01185021 */  addu       $t2, $t0, $t8
/* 64DC4 800641C4 C5520104 */  lwc1       $f18, 0x104($t2)
/* 64DC8 800641C8 3C01800E */  lui        $at, %hi(D_800DE0F8)
/* 64DCC 800641CC D426E0F8 */  ldc1       $f6, %lo(D_800DE0F8)($at)
/* 64DD0 800641D0 46009121 */  cvt.d.s    $f4, $f18
/* 64DD4 800641D4 46262281 */  sub.d      $f10, $f4, $f6
/* 64DD8 800641D8 0C016929 */  jal        func_8005A4A4
/* 64DDC 800641DC 46205320 */   cvt.s.d   $f12, $f10
/* 64DE0 800641E0 3C01800E */  lui        $at, %hi(D_800DE100)
/* 64DE4 800641E4 D430E100 */  ldc1       $f16, %lo(D_800DE100)($at)
/* 64DE8 800641E8 46000221 */  cvt.d.s    $f8, $f0
/* 64DEC 800641EC 4630403C */  c.lt.d     $f8, $f16
/* 64DF0 800641F0 00000000 */  nop
/* 64DF4 800641F4 45000020 */  bc1f       .L80064278
/* 64DF8 800641F8 00000000 */   nop
/* 64DFC 800641FC 8FAB002C */  lw         $t3, 0x2c($sp)
/* 64E00 80064200 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 64E04 80064204 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 64E08 80064208 000B6080 */  sll        $t4, $t3, 2
/* 64E0C 8006420C 018B6023 */  subu       $t4, $t4, $t3
/* 64E10 80064210 000C6080 */  sll        $t4, $t4, 2
/* 64E14 80064214 018B6023 */  subu       $t4, $t4, $t3
/* 64E18 80064218 000C6080 */  sll        $t4, $t4, 2
/* 64E1C 8006421C 018B6021 */  addu       $t4, $t4, $t3
/* 64E20 80064220 000C6080 */  sll        $t4, $t4, 2
/* 64E24 80064224 018B6023 */  subu       $t4, $t4, $t3
/* 64E28 80064228 000C6080 */  sll        $t4, $t4, 2
/* 64E2C 8006422C 012C6821 */  addu       $t5, $t1, $t4
/* 64E30 80064230 C5B20104 */  lwc1       $f18, 0x104($t5)
/* 64E34 80064234 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 64E38 80064238 44803000 */  mtc1       $zero, $f6
/* 64E3C 8006423C 46009107 */  neg.s      $f4, $f18
/* 64E40 80064240 240E0001 */  addiu      $t6, $zero, 1
/* 64E44 80064244 E424F64C */  swc1       $f4, %lo(D_8013F64C)($at)
/* 64E48 80064248 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64E4C 8006424C AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 64E50 80064250 3C018014 */  lui        $at, %hi(D_8013F648)
/* 64E54 80064254 E426F648 */  swc1       $f6, %lo(D_8013F648)($at)
/* 64E58 80064258 3C018014 */  lui        $at, %hi(D_8013F644)
/* 64E5C 8006425C E426F644 */  swc1       $f6, %lo(D_8013F644)($at)
/* 64E60 80064260 3C018014 */  lui        $at, %hi(D_8013F640)
/* 64E64 80064264 E426F640 */  swc1       $f6, %lo(D_8013F640)($at)
/* 64E68 80064268 3C018014 */  lui        $at, %hi(D_8013F604)
/* 64E6C 8006426C 240F0002 */  addiu      $t7, $zero, 2
/* 64E70 80064270 1000001C */  b          .L800642E4
/* 64E74 80064274 AC2FF604 */   sw        $t7, %lo(D_8013F604)($at)
.L80064278:
/* 64E78 80064278 8FA8002C */  lw         $t0, 0x2c($sp)
/* 64E7C 8006427C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 64E80 80064280 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 64E84 80064284 0008C080 */  sll        $t8, $t0, 2
/* 64E88 80064288 0308C023 */  subu       $t8, $t8, $t0
/* 64E8C 8006428C 0018C080 */  sll        $t8, $t8, 2
/* 64E90 80064290 0308C023 */  subu       $t8, $t8, $t0
/* 64E94 80064294 0018C080 */  sll        $t8, $t8, 2
/* 64E98 80064298 0308C021 */  addu       $t8, $t8, $t0
/* 64E9C 8006429C 0018C080 */  sll        $t8, $t8, 2
/* 64EA0 800642A0 0308C023 */  subu       $t8, $t8, $t0
/* 64EA4 800642A4 0018C080 */  sll        $t8, $t8, 2
/* 64EA8 800642A8 03385021 */  addu       $t2, $t9, $t8
/* 64EAC 800642AC C54A0104 */  lwc1       $f10, 0x104($t2)
/* 64EB0 800642B0 3C01800E */  lui        $at, %hi(D_800DE108)
/* 64EB4 800642B4 D430E108 */  ldc1       $f16, %lo(D_800DE108)($at)
/* 64EB8 800642B8 46005221 */  cvt.d.s    $f8, $f10
/* 64EBC 800642BC 3C01800E */  lui        $at, %hi(D_800DE110)
/* 64EC0 800642C0 46288481 */  sub.d      $f18, $f16, $f8
/* 64EC4 800642C4 D424E110 */  ldc1       $f4, %lo(D_800DE110)($at)
/* 64EC8 800642C8 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 64ECC 800642CC 240B0001 */  addiu      $t3, $zero, 1
/* 64ED0 800642D0 46249182 */  mul.d      $f6, $f18, $f4
/* 64ED4 800642D4 462032A0 */  cvt.s.d    $f10, $f6
/* 64ED8 800642D8 E42AF64C */  swc1       $f10, %lo(D_8013F64C)($at)
/* 64EDC 800642DC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64EE0 800642E0 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
.L800642E4:
/* 64EE4 800642E4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 64EE8 800642E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 64EEC 800642EC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 64EF0 800642F0 03E00008 */  jr         $ra
/* 64EF4 800642F4 00000000 */   nop

glabel func_800642F8
/* 64EF8 800642F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 64EFC 800642FC AFBF0024 */  sw         $ra, 0x24($sp)
/* 64F00 80064300 AFA40038 */  sw         $a0, 0x38($sp)
/* 64F04 80064304 AFA5003C */  sw         $a1, 0x3c($sp)
/* 64F08 80064308 AFB00020 */  sw         $s0, 0x20($sp)
/* 64F0C 8006430C 3C0E8014 */  lui        $t6, %hi(D_8013F608)
/* 64F10 80064310 8DCEF608 */  lw         $t6, %lo(D_8013F608)($t6)
/* 64F14 80064314 24010003 */  addiu      $at, $zero, 3
/* 64F18 80064318 15C10530 */  bne        $t6, $at, .L800657DC
/* 64F1C 8006431C 00000000 */   nop
/* 64F20 80064320 3C0F8014 */  lui        $t7, %hi(D_8013F60C)
/* 64F24 80064324 8DEFF60C */  lw         $t7, %lo(D_8013F60C)($t7)
/* 64F28 80064328 25F8FFE1 */  addiu      $t8, $t7, -0x1f
/* 64F2C 8006432C 2F010017 */  sltiu      $at, $t8, 0x17
/* 64F30 80064330 10200528 */  beqz       $at, .L800657D4
/* 64F34 80064334 00000000 */   nop
/* 64F38 80064338 0018C080 */  sll        $t8, $t8, 2
/* 64F3C 8006433C 3C01800E */  lui        $at, %hi(D_800DE118)
/* 64F40 80064340 00380821 */  addu       $at, $at, $t8
/* 64F44 80064344 8C38E118 */  lw         $t8, %lo(D_800DE118)($at)
/* 64F48 80064348 03000008 */  jr         $t8
/* 64F4C 8006434C 00000000 */   nop
/* 64F50 80064350 8FA8003C */  lw         $t0, 0x3c($sp)
/* 64F54 80064354 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 64F58 80064358 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 64F5C 8006435C 00084880 */  sll        $t1, $t0, 2
/* 64F60 80064360 01284823 */  subu       $t1, $t1, $t0
/* 64F64 80064364 00094880 */  sll        $t1, $t1, 2
/* 64F68 80064368 01284823 */  subu       $t1, $t1, $t0
/* 64F6C 8006436C 00094880 */  sll        $t1, $t1, 2
/* 64F70 80064370 01284821 */  addu       $t1, $t1, $t0
/* 64F74 80064374 00094880 */  sll        $t1, $t1, 2
/* 64F78 80064378 01284823 */  subu       $t1, $t1, $t0
/* 64F7C 8006437C 00094880 */  sll        $t1, $t1, 2
/* 64F80 80064380 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 64F84 80064384 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 64F88 80064388 03295021 */  addu       $t2, $t9, $t1
/* 64F8C 8006438C 8D4B0014 */  lw         $t3, 0x14($t2)
/* 64F90 80064390 24010035 */  addiu      $at, $zero, 0x35
/* 64F94 80064394 12010011 */  beq        $s0, $at, .L800643DC
/* 64F98 80064398 AFAB0034 */   sw        $t3, 0x34($sp)
/* 64F9C 8006439C 2401004E */  addiu      $at, $zero, 0x4e
/* 64FA0 800643A0 12010005 */  beq        $s0, $at, .L800643B8
/* 64FA4 800643A4 24010055 */   addiu     $at, $zero, 0x55
/* 64FA8 800643A8 12010015 */  beq        $s0, $at, .L80064400
/* 64FAC 800643AC 00000000 */   nop
/* 64FB0 800643B0 10000508 */  b          .L800657D4
/* 64FB4 800643B4 00000000 */   nop
.L800643B8:
/* 64FB8 800643B8 240C0021 */  addiu      $t4, $zero, 0x21
/* 64FBC 800643BC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64FC0 800643C0 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 64FC4 800643C4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64FC8 800643C8 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 64FCC 800643CC AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 64FD0 800643D0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64FD4 800643D4 100004FF */  b          .L800657D4
/* 64FD8 800643D8 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L800643DC:
/* 64FDC 800643DC 240E0037 */  addiu      $t6, $zero, 0x37
/* 64FE0 800643E0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 64FE4 800643E4 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 64FE8 800643E8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 64FEC 800643EC 240F0021 */  addiu      $t7, $zero, 0x21
/* 64FF0 800643F0 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 64FF4 800643F4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 64FF8 800643F8 100004F6 */  b          .L800657D4
/* 64FFC 800643FC AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80064400:
/* 65000 80064400 2418001C */  addiu      $t8, $zero, 0x1c
/* 65004 80064404 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65008 80064408 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 6500C 8006440C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65010 80064410 24080021 */  addiu      $t0, $zero, 0x21
/* 65014 80064414 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 65018 80064418 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6501C 8006441C 100004ED */  b          .L800657D4
/* 65020 80064420 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
/* 65024 80064424 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 65028 80064428 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 6502C 8006442C 2401001C */  addiu      $at, $zero, 0x1c
/* 65030 80064430 120100B5 */  beq        $s0, $at, .L80064708
/* 65034 80064434 24010037 */   addiu     $at, $zero, 0x37
/* 65038 80064438 12010005 */  beq        $s0, $at, .L80064450
/* 6503C 8006443C 240100C0 */   addiu     $at, $zero, 0xc0
/* 65040 80064440 12010073 */  beq        $s0, $at, .L80064610
/* 65044 80064444 00000000 */   nop
/* 65048 80064448 100004E2 */  b          .L800657D4
/* 6504C 8006444C 00000000 */   nop
.L80064450:
/* 65050 80064450 8FB90038 */  lw         $t9, 0x38($sp)
/* 65054 80064454 3C010400 */  lui        $at, 0x400
/* 65058 80064458 8F290000 */  lw         $t1, ($t9)
/* 6505C 8006445C 01215024 */  and        $t2, $t1, $at
/* 65060 80064460 1540004E */  bnez       $t2, .L8006459C
/* 65064 80064464 00000000 */   nop
/* 65068 80064468 8FAC003C */  lw         $t4, 0x3c($sp)
/* 6506C 8006446C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 65070 80064470 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 65074 80064474 000C6880 */  sll        $t5, $t4, 2
/* 65078 80064478 01AC6823 */  subu       $t5, $t5, $t4
/* 6507C 8006447C 000D6880 */  sll        $t5, $t5, 2
/* 65080 80064480 01AC6823 */  subu       $t5, $t5, $t4
/* 65084 80064484 000D6880 */  sll        $t5, $t5, 2
/* 65088 80064488 01AC6821 */  addu       $t5, $t5, $t4
/* 6508C 8006448C 000D6880 */  sll        $t5, $t5, 2
/* 65090 80064490 01AC6823 */  subu       $t5, $t5, $t4
/* 65094 80064494 000D6880 */  sll        $t5, $t5, 2
/* 65098 80064498 016D7021 */  addu       $t6, $t3, $t5
/* 6509C 8006449C 8DCF028C */  lw         $t7, 0x28c($t6)
/* 650A0 800644A0 3C010400 */  lui        $at, 0x400
/* 650A4 800644A4 01E1C024 */  and        $t8, $t7, $at
/* 650A8 800644A8 1300003C */  beqz       $t8, .L8006459C
/* 650AC 800644AC 00000000 */   nop
/* 650B0 800644B0 81C80055 */  lb         $t0, 0x55($t6)
/* 650B4 800644B4 44882000 */  mtc1       $t0, $f4
/* 650B8 800644B8 0C004788 */  jal        func_80011E20
/* 650BC 800644BC 46802320 */   cvt.s.w   $f12, $f4
/* 650C0 800644C0 3C0140A0 */  lui        $at, 0x40a0
/* 650C4 800644C4 44813000 */  mtc1       $at, $f6
/* 650C8 800644C8 00000000 */  nop
/* 650CC 800644CC 4600303C */  c.lt.s     $f6, $f0
/* 650D0 800644D0 00000000 */  nop
/* 650D4 800644D4 4501001F */  bc1t       .L80064554
/* 650D8 800644D8 00000000 */   nop
/* 650DC 800644DC 8FA9003C */  lw         $t1, 0x3c($sp)
/* 650E0 800644E0 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 650E4 800644E4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 650E8 800644E8 00095080 */  sll        $t2, $t1, 2
/* 650EC 800644EC 01495023 */  subu       $t2, $t2, $t1
/* 650F0 800644F0 000A5080 */  sll        $t2, $t2, 2
/* 650F4 800644F4 01495023 */  subu       $t2, $t2, $t1
/* 650F8 800644F8 000A5080 */  sll        $t2, $t2, 2
/* 650FC 800644FC 01495021 */  addu       $t2, $t2, $t1
/* 65100 80064500 000A5080 */  sll        $t2, $t2, 2
/* 65104 80064504 01495023 */  subu       $t2, $t2, $t1
/* 65108 80064508 000A5080 */  sll        $t2, $t2, 2
/* 6510C 8006450C 032A6021 */  addu       $t4, $t9, $t2
/* 65110 80064510 8D8B0014 */  lw         $t3, 0x14($t4)
/* 65114 80064514 000B6880 */  sll        $t5, $t3, 2
/* 65118 80064518 01AB6823 */  subu       $t5, $t5, $t3
/* 6511C 8006451C 000D6880 */  sll        $t5, $t5, 2
/* 65120 80064520 01AB6823 */  subu       $t5, $t5, $t3
/* 65124 80064524 000D6880 */  sll        $t5, $t5, 2
/* 65128 80064528 01AB6821 */  addu       $t5, $t5, $t3
/* 6512C 8006452C 000D6880 */  sll        $t5, $t5, 2
/* 65130 80064530 01AB6823 */  subu       $t5, $t5, $t3
/* 65134 80064534 000D6880 */  sll        $t5, $t5, 2
/* 65138 80064538 032D7821 */  addu       $t7, $t9, $t5
/* 6513C 8006453C 8DF8006C */  lw         $t8, 0x6c($t7)
/* 65140 80064540 2B01004D */  slti       $at, $t8, 0x4d
/* 65144 80064544 14200003 */  bnez       $at, .L80064554
/* 65148 80064548 2B01007E */   slti      $at, $t8, 0x7e
/* 6514C 8006454C 1420000A */  bnez       $at, .L80064578
/* 65150 80064550 00000000 */   nop
.L80064554:
/* 65154 80064554 240E0022 */  addiu      $t6, $zero, 0x22
/* 65158 80064558 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6515C 8006455C AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 65160 80064560 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65164 80064564 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65168 80064568 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6516C 8006456C 24080038 */  addiu      $t0, $zero, 0x38
/* 65170 80064570 10000498 */  b          .L800657D4
/* 65174 80064574 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L80064578:
/* 65178 80064578 24090022 */  addiu      $t1, $zero, 0x22
/* 6517C 8006457C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65180 80064580 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 65184 80064584 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65188 80064588 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6518C 8006458C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65190 80064590 240A0105 */  addiu      $t2, $zero, 0x105
/* 65194 80064594 1000048F */  b          .L800657D4
/* 65198 80064598 AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
.L8006459C:
/* 6519C 8006459C 3C018014 */  lui        $at, %hi(D_8013F620)
/* 651A0 800645A0 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 651A4 800645A4 3C014014 */  lui        $at, 0x4014
/* 651A8 800645A8 44818800 */  mtc1       $at, $f17
/* 651AC 800645AC 44808000 */  mtc1       $zero, $f16
/* 651B0 800645B0 460042A1 */  cvt.d.s    $f10, $f8
/* 651B4 800645B4 462A803E */  c.le.d     $f16, $f10
/* 651B8 800645B8 00000000 */  nop
/* 651BC 800645BC 4500000A */  bc1f       .L800645E8
/* 651C0 800645C0 00000000 */   nop
/* 651C4 800645C4 240C0023 */  addiu      $t4, $zero, 0x23
/* 651C8 800645C8 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 651CC 800645CC AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 651D0 800645D0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 651D4 800645D4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 651D8 800645D8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 651DC 800645DC 240B0001 */  addiu      $t3, $zero, 1
/* 651E0 800645E0 1000047C */  b          .L800657D4
/* 651E4 800645E4 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L800645E8:
/* 651E8 800645E8 24190001 */  addiu      $t9, $zero, 1
/* 651EC 800645EC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 651F0 800645F0 AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 651F4 800645F4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 651F8 800645F8 240D0023 */  addiu      $t5, $zero, 0x23
/* 651FC 800645FC AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 65200 80064600 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65204 80064604 240F00BC */  addiu      $t7, $zero, 0xbc
/* 65208 80064608 10000472 */  b          .L800657D4
/* 6520C 8006460C AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80064610:
/* 65210 80064610 8FB80038 */  lw         $t8, 0x38($sp)
/* 65214 80064614 3C010400 */  lui        $at, 0x400
/* 65218 80064618 8F0E0000 */  lw         $t6, ($t8)
/* 6521C 8006461C 01C14024 */  and        $t0, $t6, $at
/* 65220 80064620 1500001C */  bnez       $t0, .L80064694
/* 65224 80064624 00000000 */   nop
/* 65228 80064628 8FAA003C */  lw         $t2, 0x3c($sp)
/* 6522C 8006462C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 65230 80064630 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 65234 80064634 000A6080 */  sll        $t4, $t2, 2
/* 65238 80064638 018A6023 */  subu       $t4, $t4, $t2
/* 6523C 8006463C 000C6080 */  sll        $t4, $t4, 2
/* 65240 80064640 018A6023 */  subu       $t4, $t4, $t2
/* 65244 80064644 000C6080 */  sll        $t4, $t4, 2
/* 65248 80064648 018A6021 */  addu       $t4, $t4, $t2
/* 6524C 8006464C 000C6080 */  sll        $t4, $t4, 2
/* 65250 80064650 018A6023 */  subu       $t4, $t4, $t2
/* 65254 80064654 000C6080 */  sll        $t4, $t4, 2
/* 65258 80064658 012C5821 */  addu       $t3, $t1, $t4
/* 6525C 8006465C 8D79028C */  lw         $t9, 0x28c($t3)
/* 65260 80064660 3C010400 */  lui        $at, 0x400
/* 65264 80064664 03216824 */  and        $t5, $t9, $at
/* 65268 80064668 11A0000A */  beqz       $t5, .L80064694
/* 6526C 8006466C 00000000 */   nop
/* 65270 80064670 240F0022 */  addiu      $t7, $zero, 0x22
/* 65274 80064674 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65278 80064678 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 6527C 8006467C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65280 80064680 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65284 80064684 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65288 80064688 24180052 */  addiu      $t8, $zero, 0x52
/* 6528C 8006468C 10000451 */  b          .L800657D4
/* 65290 80064690 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80064694:
/* 65294 80064694 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65298 80064698 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 6529C 8006469C 3C014014 */  lui        $at, 0x4014
/* 652A0 800646A0 44813800 */  mtc1       $at, $f7
/* 652A4 800646A4 44803000 */  mtc1       $zero, $f6
/* 652A8 800646A8 46009121 */  cvt.d.s    $f4, $f18
/* 652AC 800646AC 4624303E */  c.le.d     $f6, $f4
/* 652B0 800646B0 00000000 */  nop
/* 652B4 800646B4 4500000A */  bc1f       .L800646E0
/* 652B8 800646B8 00000000 */   nop
/* 652BC 800646BC 240E0023 */  addiu      $t6, $zero, 0x23
/* 652C0 800646C0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 652C4 800646C4 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 652C8 800646C8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 652CC 800646CC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 652D0 800646D0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 652D4 800646D4 240800BE */  addiu      $t0, $zero, 0xbe
/* 652D8 800646D8 1000043E */  b          .L800657D4
/* 652DC 800646DC AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L800646E0:
/* 652E0 800646E0 240A0001 */  addiu      $t2, $zero, 1
/* 652E4 800646E4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 652E8 800646E8 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 652EC 800646EC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 652F0 800646F0 24090023 */  addiu      $t1, $zero, 0x23
/* 652F4 800646F4 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 652F8 800646F8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 652FC 800646FC 240C004F */  addiu      $t4, $zero, 0x4f
/* 65300 80064700 10000434 */  b          .L800657D4
/* 65304 80064704 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L80064708:
/* 65308 80064708 8FAB0038 */  lw         $t3, 0x38($sp)
/* 6530C 8006470C 3C010400 */  lui        $at, 0x400
/* 65310 80064710 8D790000 */  lw         $t9, ($t3)
/* 65314 80064714 03216824 */  and        $t5, $t9, $at
/* 65318 80064718 15A0001C */  bnez       $t5, .L8006478C
/* 6531C 8006471C 00000000 */   nop
/* 65320 80064720 8FB8003C */  lw         $t8, 0x3c($sp)
/* 65324 80064724 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 65328 80064728 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 6532C 8006472C 00187080 */  sll        $t6, $t8, 2
/* 65330 80064730 01D87023 */  subu       $t6, $t6, $t8
/* 65334 80064734 000E7080 */  sll        $t6, $t6, 2
/* 65338 80064738 01D87023 */  subu       $t6, $t6, $t8
/* 6533C 8006473C 000E7080 */  sll        $t6, $t6, 2
/* 65340 80064740 01D87021 */  addu       $t6, $t6, $t8
/* 65344 80064744 000E7080 */  sll        $t6, $t6, 2
/* 65348 80064748 01D87023 */  subu       $t6, $t6, $t8
/* 6534C 8006474C 000E7080 */  sll        $t6, $t6, 2
/* 65350 80064750 01EE4021 */  addu       $t0, $t7, $t6
/* 65354 80064754 8D0A028C */  lw         $t2, 0x28c($t0)
/* 65358 80064758 3C010400 */  lui        $at, 0x400
/* 6535C 8006475C 01414824 */  and        $t1, $t2, $at
/* 65360 80064760 1120000A */  beqz       $t1, .L8006478C
/* 65364 80064764 00000000 */   nop
/* 65368 80064768 240C0022 */  addiu      $t4, $zero, 0x22
/* 6536C 8006476C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65370 80064770 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 65374 80064774 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65378 80064778 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6537C 8006477C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65380 80064780 240B00DE */  addiu      $t3, $zero, 0xde
/* 65384 80064784 10000413 */  b          .L800657D4
/* 65388 80064788 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L8006478C:
/* 6538C 8006478C 24190035 */  addiu      $t9, $zero, 0x35
/* 65390 80064790 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65394 80064794 AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 65398 80064798 3C018014 */  lui        $at, %hi(D_8013F620)
/* 6539C 8006479C C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 653A0 800647A0 3C014014 */  lui        $at, 0x4014
/* 653A4 800647A4 44818800 */  mtc1       $at, $f17
/* 653A8 800647A8 44808000 */  mtc1       $zero, $f16
/* 653AC 800647AC 460042A1 */  cvt.d.s    $f10, $f8
/* 653B0 800647B0 462A803E */  c.le.d     $f16, $f10
/* 653B4 800647B4 00000000 */  nop
/* 653B8 800647B8 45000007 */  bc1f       .L800647D8
/* 653BC 800647BC 00000000 */   nop
/* 653C0 800647C0 240D00E0 */  addiu      $t5, $zero, 0xe0
/* 653C4 800647C4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 653C8 800647C8 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 653CC 800647CC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 653D0 800647D0 10000400 */  b          .L800657D4
/* 653D4 800647D4 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L800647D8:
/* 653D8 800647D8 24180001 */  addiu      $t8, $zero, 1
/* 653DC 800647DC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 653E0 800647E0 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 653E4 800647E4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 653E8 800647E8 240F0100 */  addiu      $t7, $zero, 0x100
/* 653EC 800647EC 100003F9 */  b          .L800657D4
/* 653F0 800647F0 AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
/* 653F4 800647F4 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 653F8 800647F8 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 653FC 800647FC 24010038 */  addiu      $at, $zero, 0x38
/* 65400 80064800 12010026 */  beq        $s0, $at, .L8006489C
/* 65404 80064804 24010052 */   addiu     $at, $zero, 0x52
/* 65408 80064808 1201000F */  beq        $s0, $at, .L80064848
/* 6540C 8006480C 240100B0 */   addiu     $at, $zero, 0xb0
/* 65410 80064810 12010015 */  beq        $s0, $at, .L80064868
/* 65414 80064814 240100C1 */   addiu     $at, $zero, 0xc1
/* 65418 80064818 12010013 */  beq        $s0, $at, .L80064868
/* 6541C 8006481C 240100DE */   addiu     $at, $zero, 0xde
/* 65420 80064820 1201002E */  beq        $s0, $at, .L800648DC
/* 65424 80064824 240100DF */   addiu     $at, $zero, 0xdf
/* 65428 80064828 12010034 */  beq        $s0, $at, .L800648FC
/* 6542C 8006482C 24010105 */   addiu     $at, $zero, 0x105
/* 65430 80064830 12010022 */  beq        $s0, $at, .L800648BC
/* 65434 80064834 24010106 */   addiu     $at, $zero, 0x106
/* 65438 80064838 1201000B */  beq        $s0, $at, .L80064868
/* 6543C 8006483C 00000000 */   nop
/* 65440 80064840 100003E4 */  b          .L800657D4
/* 65444 80064844 00000000 */   nop
.L80064848:
/* 65448 80064848 0C00B4AB */  jal        func_8002D2AC
/* 6544C 8006484C 8FA4003C */   lw        $a0, 0x3c($sp)
/* 65450 80064850 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65454 80064854 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65458 80064858 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6545C 8006485C 240E00C1 */  addiu      $t6, $zero, 0xc1
/* 65460 80064860 100003DC */  b          .L800657D4
/* 65464 80064864 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80064868:
/* 65468 80064868 24080001 */  addiu      $t0, $zero, 1
/* 6546C 8006486C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65470 80064870 AC28F61C */  sw         $t0, %lo(D_8013F61C)($at)
/* 65474 80064874 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65478 80064878 240A0003 */  addiu      $t2, $zero, 3
/* 6547C 8006487C AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 65480 80064880 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65484 80064884 2409000C */  addiu      $t1, $zero, 0xc
/* 65488 80064888 AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 6548C 8006488C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 65490 80064890 240C0001 */  addiu      $t4, $zero, 1
/* 65494 80064894 100003CF */  b          .L800657D4
/* 65498 80064898 AC2CF608 */   sw        $t4, %lo(D_8013F608)($at)
.L8006489C:
/* 6549C 8006489C 0C00B4AB */  jal        func_8002D2AC
/* 654A0 800648A0 8FA4003C */   lw        $a0, 0x3c($sp)
/* 654A4 800648A4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 654A8 800648A8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 654AC 800648AC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 654B0 800648B0 240B00B0 */  addiu      $t3, $zero, 0xb0
/* 654B4 800648B4 100003C7 */  b          .L800657D4
/* 654B8 800648B8 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L800648BC:
/* 654BC 800648BC 0C00B4AB */  jal        func_8002D2AC
/* 654C0 800648C0 8FA4003C */   lw        $a0, 0x3c($sp)
/* 654C4 800648C4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 654C8 800648C8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 654CC 800648CC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 654D0 800648D0 24190106 */  addiu      $t9, $zero, 0x106
/* 654D4 800648D4 100003BF */  b          .L800657D4
/* 654D8 800648D8 AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
.L800648DC:
/* 654DC 800648DC 0C00B4AB */  jal        func_8002D2AC
/* 654E0 800648E0 8FA4003C */   lw        $a0, 0x3c($sp)
/* 654E4 800648E4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 654E8 800648E8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 654EC 800648EC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 654F0 800648F0 240D00DF */  addiu      $t5, $zero, 0xdf
/* 654F4 800648F4 100003B7 */  b          .L800657D4
/* 654F8 800648F8 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L800648FC:
/* 654FC 800648FC 24180001 */  addiu      $t8, $zero, 1
/* 65500 80064900 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65504 80064904 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 65508 80064908 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6550C 8006490C 240F001B */  addiu      $t7, $zero, 0x1b
/* 65510 80064910 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 65514 80064914 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65518 80064918 240E0035 */  addiu      $t6, $zero, 0x35
/* 6551C 8006491C AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 65520 80064920 3C018014 */  lui        $at, %hi(D_8013F608)
/* 65524 80064924 24080005 */  addiu      $t0, $zero, 5
/* 65528 80064928 100003AA */  b          .L800657D4
/* 6552C 8006492C AC28F608 */   sw        $t0, %lo(D_8013F608)($at)
/* 65530 80064930 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 65534 80064934 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 65538 80064938 2A010084 */  slti       $at, $s0, 0x84
/* 6553C 8006493C 1420000F */  bnez       $at, .L8006497C
/* 65540 80064940 2401008E */   addiu     $at, $zero, 0x8e
/* 65544 80064944 12010325 */  beq        $s0, $at, .L800655DC
/* 65548 80064948 24010096 */   addiu     $at, $zero, 0x96
/* 6554C 8006494C 12010323 */  beq        $s0, $at, .L800655DC
/* 65550 80064950 240100BB */   addiu     $at, $zero, 0xbb
/* 65554 80064954 12010065 */  beq        $s0, $at, .L80064AEC
/* 65558 80064958 240100BC */   addiu     $at, $zero, 0xbc
/* 6555C 8006495C 12010219 */  beq        $s0, $at, .L800651C4
/* 65560 80064960 240100BE */   addiu     $at, $zero, 0xbe
/* 65564 80064964 120102AE */  beq        $s0, $at, .L80065420
/* 65568 80064968 240100BF */   addiu     $at, $zero, 0xbf
/* 6556C 8006496C 120102FB */  beq        $s0, $at, .L8006555C
/* 65570 80064970 00000000 */   nop
/* 65574 80064974 10000397 */  b          .L800657D4
/* 65578 80064978 00000000 */   nop
.L8006497C:
/* 6557C 8006497C 2A01000A */  slti       $at, $s0, 0xa
/* 65580 80064980 14200018 */  bnez       $at, .L800649E4
/* 65584 80064984 2A010083 */   slti      $at, $s0, 0x83
/* 65588 80064988 14200005 */  bnez       $at, .L800649A0
/* 6558C 8006498C 24010083 */   addiu     $at, $zero, 0x83
/* 65590 80064990 1201020C */  beq        $s0, $at, .L800651C4
/* 65594 80064994 00000000 */   nop
/* 65598 80064998 1000038E */  b          .L800657D4
/* 6559C 8006499C 00000000 */   nop
.L800649A0:
/* 655A0 800649A0 2A010062 */  slti       $at, $s0, 0x62
/* 655A4 800649A4 14200005 */  bnez       $at, .L800649BC
/* 655A8 800649A8 24010082 */   addiu     $at, $zero, 0x82
/* 655AC 800649AC 12010205 */  beq        $s0, $at, .L800651C4
/* 655B0 800649B0 00000000 */   nop
/* 655B4 800649B4 10000387 */  b          .L800657D4
/* 655B8 800649B8 00000000 */   nop
.L800649BC:
/* 655BC 800649BC 260AFFB1 */  addiu      $t2, $s0, -0x4f
/* 655C0 800649C0 2D410013 */  sltiu      $at, $t2, 0x13
/* 655C4 800649C4 10200383 */  beqz       $at, .L800657D4
/* 655C8 800649C8 00000000 */   nop
/* 655CC 800649CC 000A5080 */  sll        $t2, $t2, 2
/* 655D0 800649D0 3C01800E */  lui        $at, %hi(D_800DE174)
/* 655D4 800649D4 002A0821 */  addu       $at, $at, $t2
/* 655D8 800649D8 8C2AE174 */  lw         $t2, %lo(D_800DE174)($at)
/* 655DC 800649DC 01400008 */  jr         $t2
/* 655E0 800649E0 00000000 */   nop
.L800649E4:
/* 655E4 800649E4 24010001 */  addiu      $at, $zero, 1
/* 655E8 800649E8 12010007 */  beq        $s0, $at, .L80064A08
/* 655EC 800649EC 24010007 */   addiu     $at, $zero, 7
/* 655F0 800649F0 120100C3 */  beq        $s0, $at, .L80064D00
/* 655F4 800649F4 24010009 */   addiu     $at, $zero, 9
/* 655F8 800649F8 120102A3 */  beq        $s0, $at, .L80065488
/* 655FC 800649FC 00000000 */   nop
/* 65600 80064A00 10000374 */  b          .L800657D4
/* 65604 80064A04 00000000 */   nop
.L80064A08:
/* 65608 80064A08 8FA90038 */  lw         $t1, 0x38($sp)
/* 6560C 80064A0C 3C010001 */  lui        $at, 1
/* 65610 80064A10 8D2C0000 */  lw         $t4, ($t1)
/* 65614 80064A14 01815824 */  and        $t3, $t4, $at
/* 65618 80064A18 1160001C */  beqz       $t3, .L80064A8C
/* 6561C 80064A1C 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65620 80064A20 C432F664 */  lwc1       $f18, %lo(D_8013F664)($at)
/* 65624 80064A24 3C0143AF */  lui        $at, 0x43af
/* 65628 80064A28 44812000 */  mtc1       $at, $f4
/* 6562C 80064A2C 00000000 */  nop
/* 65630 80064A30 4612203C */  c.lt.s     $f4, $f18
/* 65634 80064A34 00000000 */  nop
/* 65638 80064A38 45000014 */  bc1f       .L80064A8C
/* 6563C 80064A3C 00000000 */   nop
/* 65640 80064A40 241900F8 */  addiu      $t9, $zero, 0xf8
/* 65644 80064A44 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65648 80064A48 AC39F610 */  sw         $t9, %lo(D_8013F610)($at)
/* 6564C 80064A4C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65650 80064A50 240D0033 */  addiu      $t5, $zero, 0x33
/* 65654 80064A54 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 65658 80064A58 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6565C 80064A5C 3C188018 */  lui        $t8, %hi(D_8017A028)
/* 65660 80064A60 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65664 80064A64 2718A028 */  addiu      $t8, $t8, %lo(D_8017A028)
/* 65668 80064A68 8F050004 */  lw         $a1, 4($t8)
/* 6566C 80064A6C 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65670 80064A70 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 65674 80064A74 AFA00010 */  sw         $zero, 0x10($sp)
/* 65678 80064A78 24040001 */  addiu      $a0, $zero, 1
/* 6567C 80064A7C 0C0009DF */  jal        func_8000277C
/* 65680 80064A80 24070040 */   addiu     $a3, $zero, 0x40
/* 65684 80064A84 10000353 */  b          .L800657D4
/* 65688 80064A88 00000000 */   nop
.L80064A8C:
/* 6568C 80064A8C 0C017B34 */  jal        func_8005ECD0
/* 65690 80064A90 00000000 */   nop
/* 65694 80064A94 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65698 80064A98 C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 6569C 80064A9C 3C014014 */  lui        $at, 0x4014
/* 656A0 80064AA0 44815800 */  mtc1       $at, $f11
/* 656A4 80064AA4 44805000 */  mtc1       $zero, $f10
/* 656A8 80064AA8 46003221 */  cvt.d.s    $f8, $f6
/* 656AC 80064AAC 462A403C */  c.lt.d     $f8, $f10
/* 656B0 80064AB0 00000000 */  nop
/* 656B4 80064AB4 45000006 */  bc1f       .L80064AD0
/* 656B8 80064AB8 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 656BC 80064ABC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 656C0 80064AC0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 656C4 80064AC4 240F0007 */  addiu      $t7, $zero, 7
/* 656C8 80064AC8 10000342 */  b          .L800657D4
/* 656CC 80064ACC AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80064AD0:
/* 656D0 80064AD0 240E0001 */  addiu      $t6, $zero, 1
/* 656D4 80064AD4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 656D8 80064AD8 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 656DC 80064ADC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 656E0 80064AE0 240800BB */  addiu      $t0, $zero, 0xbb
/* 656E4 80064AE4 1000033B */  b          .L800657D4
/* 656E8 80064AE8 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L80064AEC:
/* 656EC 80064AEC 8FAA0038 */  lw         $t2, 0x38($sp)
/* 656F0 80064AF0 3C010001 */  lui        $at, 1
/* 656F4 80064AF4 8D490000 */  lw         $t1, ($t2)
/* 656F8 80064AF8 01216024 */  and        $t4, $t1, $at
/* 656FC 80064AFC 1180001C */  beqz       $t4, .L80064B70
/* 65700 80064B00 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65704 80064B04 C430F664 */  lwc1       $f16, %lo(D_8013F664)($at)
/* 65708 80064B08 3C0143AF */  lui        $at, 0x43af
/* 6570C 80064B0C 44819000 */  mtc1       $at, $f18
/* 65710 80064B10 00000000 */  nop
/* 65714 80064B14 4610903C */  c.lt.s     $f18, $f16
/* 65718 80064B18 00000000 */  nop
/* 6571C 80064B1C 45000014 */  bc1f       .L80064B70
/* 65720 80064B20 00000000 */   nop
/* 65724 80064B24 240B00F8 */  addiu      $t3, $zero, 0xf8
/* 65728 80064B28 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6572C 80064B2C AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 65730 80064B30 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65734 80064B34 24190033 */  addiu      $t9, $zero, 0x33
/* 65738 80064B38 AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 6573C 80064B3C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65740 80064B40 3C0D8018 */  lui        $t5, %hi(D_8017A028)
/* 65744 80064B44 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65748 80064B48 25ADA028 */  addiu      $t5, $t5, %lo(D_8017A028)
/* 6574C 80064B4C 8DA50004 */  lw         $a1, 4($t5)
/* 65750 80064B50 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65754 80064B54 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 65758 80064B58 AFA00010 */  sw         $zero, 0x10($sp)
/* 6575C 80064B5C 24040001 */  addiu      $a0, $zero, 1
/* 65760 80064B60 0C0009DF */  jal        func_8000277C
/* 65764 80064B64 24070040 */   addiu     $a3, $zero, 0x40
/* 65768 80064B68 1000031A */  b          .L800657D4
/* 6576C 80064B6C 00000000 */   nop
.L80064B70:
/* 65770 80064B70 0C017B34 */  jal        func_8005ECD0
/* 65774 80064B74 00000000 */   nop
/* 65778 80064B78 8FB80038 */  lw         $t8, 0x38($sp)
/* 6577C 80064B7C 3C010400 */  lui        $at, 0x400
/* 65780 80064B80 8F0F0000 */  lw         $t7, ($t8)
/* 65784 80064B84 01E17024 */  and        $t6, $t7, $at
/* 65788 80064B88 15C0004E */  bnez       $t6, .L80064CC4
/* 6578C 80064B8C 00000000 */   nop
/* 65790 80064B90 8FAA003C */  lw         $t2, 0x3c($sp)
/* 65794 80064B94 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 65798 80064B98 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 6579C 80064B9C 000A4880 */  sll        $t1, $t2, 2
/* 657A0 80064BA0 012A4823 */  subu       $t1, $t1, $t2
/* 657A4 80064BA4 00094880 */  sll        $t1, $t1, 2
/* 657A8 80064BA8 012A4823 */  subu       $t1, $t1, $t2
/* 657AC 80064BAC 00094880 */  sll        $t1, $t1, 2
/* 657B0 80064BB0 012A4821 */  addu       $t1, $t1, $t2
/* 657B4 80064BB4 00094880 */  sll        $t1, $t1, 2
/* 657B8 80064BB8 012A4823 */  subu       $t1, $t1, $t2
/* 657BC 80064BBC 00094880 */  sll        $t1, $t1, 2
/* 657C0 80064BC0 01096021 */  addu       $t4, $t0, $t1
/* 657C4 80064BC4 8D8B028C */  lw         $t3, 0x28c($t4)
/* 657C8 80064BC8 3C010400 */  lui        $at, 0x400
/* 657CC 80064BCC 0161C824 */  and        $t9, $t3, $at
/* 657D0 80064BD0 1320003C */  beqz       $t9, .L80064CC4
/* 657D4 80064BD4 00000000 */   nop
/* 657D8 80064BD8 818D0055 */  lb         $t5, 0x55($t4)
/* 657DC 80064BDC 448D2000 */  mtc1       $t5, $f4
/* 657E0 80064BE0 0C004788 */  jal        func_80011E20
/* 657E4 80064BE4 46802320 */   cvt.s.w   $f12, $f4
/* 657E8 80064BE8 3C0140A0 */  lui        $at, 0x40a0
/* 657EC 80064BEC 44813000 */  mtc1       $at, $f6
/* 657F0 80064BF0 00000000 */  nop
/* 657F4 80064BF4 4600303C */  c.lt.s     $f6, $f0
/* 657F8 80064BF8 00000000 */  nop
/* 657FC 80064BFC 4501001F */  bc1t       .L80064C7C
/* 65800 80064C00 00000000 */   nop
/* 65804 80064C04 8FAF003C */  lw         $t7, 0x3c($sp)
/* 65808 80064C08 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 6580C 80064C0C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 65810 80064C10 000F7080 */  sll        $t6, $t7, 2
/* 65814 80064C14 01CF7023 */  subu       $t6, $t6, $t7
/* 65818 80064C18 000E7080 */  sll        $t6, $t6, 2
/* 6581C 80064C1C 01CF7023 */  subu       $t6, $t6, $t7
/* 65820 80064C20 000E7080 */  sll        $t6, $t6, 2
/* 65824 80064C24 01CF7021 */  addu       $t6, $t6, $t7
/* 65828 80064C28 000E7080 */  sll        $t6, $t6, 2
/* 6582C 80064C2C 01CF7023 */  subu       $t6, $t6, $t7
/* 65830 80064C30 000E7080 */  sll        $t6, $t6, 2
/* 65834 80064C34 030E5021 */  addu       $t2, $t8, $t6
/* 65838 80064C38 8D480014 */  lw         $t0, 0x14($t2)
/* 6583C 80064C3C 00084880 */  sll        $t1, $t0, 2
/* 65840 80064C40 01284823 */  subu       $t1, $t1, $t0
/* 65844 80064C44 00094880 */  sll        $t1, $t1, 2
/* 65848 80064C48 01284823 */  subu       $t1, $t1, $t0
/* 6584C 80064C4C 00094880 */  sll        $t1, $t1, 2
/* 65850 80064C50 01284821 */  addu       $t1, $t1, $t0
/* 65854 80064C54 00094880 */  sll        $t1, $t1, 2
/* 65858 80064C58 01284823 */  subu       $t1, $t1, $t0
/* 6585C 80064C5C 00094880 */  sll        $t1, $t1, 2
/* 65860 80064C60 03095821 */  addu       $t3, $t8, $t1
/* 65864 80064C64 8D79006C */  lw         $t9, 0x6c($t3)
/* 65868 80064C68 2B21004D */  slti       $at, $t9, 0x4d
/* 6586C 80064C6C 14200003 */  bnez       $at, .L80064C7C
/* 65870 80064C70 2B21007E */   slti      $at, $t9, 0x7e
/* 65874 80064C74 1420000A */  bnez       $at, .L80064CA0
/* 65878 80064C78 00000000 */   nop
.L80064C7C:
/* 6587C 80064C7C 240C0022 */  addiu      $t4, $zero, 0x22
/* 65880 80064C80 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65884 80064C84 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 65888 80064C88 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6588C 80064C8C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65890 80064C90 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65894 80064C94 240D0038 */  addiu      $t5, $zero, 0x38
/* 65898 80064C98 100002CE */  b          .L800657D4
/* 6589C 80064C9C AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80064CA0:
/* 658A0 80064CA0 240F0022 */  addiu      $t7, $zero, 0x22
/* 658A4 80064CA4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 658A8 80064CA8 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 658AC 80064CAC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 658B0 80064CB0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 658B4 80064CB4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 658B8 80064CB8 240E0105 */  addiu      $t6, $zero, 0x105
/* 658BC 80064CBC 100002C5 */  b          .L800657D4
/* 658C0 80064CC0 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80064CC4:
/* 658C4 80064CC4 3C018014 */  lui        $at, %hi(D_8013F620)
/* 658C8 80064CC8 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 658CC 80064CCC 3C014014 */  lui        $at, 0x4014
/* 658D0 80064CD0 44818800 */  mtc1       $at, $f17
/* 658D4 80064CD4 44808000 */  mtc1       $zero, $f16
/* 658D8 80064CD8 460042A1 */  cvt.d.s    $f10, $f8
/* 658DC 80064CDC 4630503C */  c.lt.d     $f10, $f16
/* 658E0 80064CE0 00000000 */  nop
/* 658E4 80064CE4 450002BB */  bc1f       .L800657D4
/* 658E8 80064CE8 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 658EC 80064CEC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 658F0 80064CF0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 658F4 80064CF4 240A0007 */  addiu      $t2, $zero, 7
/* 658F8 80064CF8 100002B6 */  b          .L800657D4
/* 658FC 80064CFC AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
.L80064D00:
/* 65900 80064D00 8FA80038 */  lw         $t0, 0x38($sp)
/* 65904 80064D04 3C010001 */  lui        $at, 1
/* 65908 80064D08 8D180000 */  lw         $t8, ($t0)
/* 6590C 80064D0C 03014824 */  and        $t1, $t8, $at
/* 65910 80064D10 1120001C */  beqz       $t1, .L80064D84
/* 65914 80064D14 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65918 80064D18 C432F664 */  lwc1       $f18, %lo(D_8013F664)($at)
/* 6591C 80064D1C 3C0143AF */  lui        $at, 0x43af
/* 65920 80064D20 44812000 */  mtc1       $at, $f4
/* 65924 80064D24 00000000 */  nop
/* 65928 80064D28 4612203C */  c.lt.s     $f4, $f18
/* 6592C 80064D2C 00000000 */  nop
/* 65930 80064D30 45000014 */  bc1f       .L80064D84
/* 65934 80064D34 00000000 */   nop
/* 65938 80064D38 240B00F8 */  addiu      $t3, $zero, 0xf8
/* 6593C 80064D3C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65940 80064D40 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 65944 80064D44 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65948 80064D48 24190033 */  addiu      $t9, $zero, 0x33
/* 6594C 80064D4C AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 65950 80064D50 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65954 80064D54 3C0C8018 */  lui        $t4, %hi(D_8017A028)
/* 65958 80064D58 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6595C 80064D5C 258CA028 */  addiu      $t4, $t4, %lo(D_8017A028)
/* 65960 80064D60 8D850004 */  lw         $a1, 4($t4)
/* 65964 80064D64 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65968 80064D68 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 6596C 80064D6C AFA00010 */  sw         $zero, 0x10($sp)
/* 65970 80064D70 24040001 */  addiu      $a0, $zero, 1
/* 65974 80064D74 0C0009DF */  jal        func_8000277C
/* 65978 80064D78 24070040 */   addiu     $a3, $zero, 0x40
/* 6597C 80064D7C 10000295 */  b          .L800657D4
/* 65980 80064D80 00000000 */   nop
.L80064D84:
/* 65984 80064D84 0C017B34 */  jal        func_8005ECD0
/* 65988 80064D88 00000000 */   nop
/* 6598C 80064D8C 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65990 80064D90 C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 65994 80064D94 3C014014 */  lui        $at, 0x4014
/* 65998 80064D98 44815800 */  mtc1       $at, $f11
/* 6599C 80064D9C 44805000 */  mtc1       $zero, $f10
/* 659A0 80064DA0 46003221 */  cvt.d.s    $f8, $f6
/* 659A4 80064DA4 462A403C */  c.lt.d     $f8, $f10
/* 659A8 80064DA8 00000000 */  nop
/* 659AC 80064DAC 45000008 */  bc1f       .L80064DD0
/* 659B0 80064DB0 00000000 */   nop
/* 659B4 80064DB4 240D0001 */  addiu      $t5, $zero, 1
/* 659B8 80064DB8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 659BC 80064DBC AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 659C0 80064DC0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 659C4 80064DC4 240F00BC */  addiu      $t7, $zero, 0xbc
/* 659C8 80064DC8 10000282 */  b          .L800657D4
/* 659CC 80064DCC AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80064DD0:
/* 659D0 80064DD0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 659D4 80064DD4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 659D8 80064DD8 3C018014 */  lui        $at, %hi(D_8013F620)
/* 659DC 80064DDC C430F620 */  lwc1       $f16, %lo(D_8013F620)($at)
/* 659E0 80064DE0 3C01C030 */  lui        $at, 0xc030
/* 659E4 80064DE4 44812800 */  mtc1       $at, $f5
/* 659E8 80064DE8 44802000 */  mtc1       $zero, $f4
/* 659EC 80064DEC 460084A1 */  cvt.d.s    $f18, $f16
/* 659F0 80064DF0 4632203C */  c.lt.d     $f4, $f18
/* 659F4 80064DF4 00000000 */  nop
/* 659F8 80064DF8 45000005 */  bc1f       .L80064E10
/* 659FC 80064DFC 00000000 */   nop
/* 65A00 80064E00 240E0001 */  addiu      $t6, $zero, 1
/* 65A04 80064E04 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65A08 80064E08 10000272 */  b          .L800657D4
/* 65A0C 80064E0C AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80064E10:
/* 65A10 80064E10 240A0060 */  addiu      $t2, $zero, 0x60
/* 65A14 80064E14 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65A18 80064E18 1000026E */  b          .L800657D4
/* 65A1C 80064E1C AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
/* 65A20 80064E20 8FA80038 */  lw         $t0, 0x38($sp)
/* 65A24 80064E24 3C010001 */  lui        $at, 1
/* 65A28 80064E28 8D180000 */  lw         $t8, ($t0)
/* 65A2C 80064E2C 03014824 */  and        $t1, $t8, $at
/* 65A30 80064E30 1120001C */  beqz       $t1, .L80064EA4
/* 65A34 80064E34 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65A38 80064E38 C426F664 */  lwc1       $f6, %lo(D_8013F664)($at)
/* 65A3C 80064E3C 3C0143AF */  lui        $at, 0x43af
/* 65A40 80064E40 44814000 */  mtc1       $at, $f8
/* 65A44 80064E44 00000000 */  nop
/* 65A48 80064E48 4606403C */  c.lt.s     $f8, $f6
/* 65A4C 80064E4C 00000000 */  nop
/* 65A50 80064E50 45000014 */  bc1f       .L80064EA4
/* 65A54 80064E54 00000000 */   nop
/* 65A58 80064E58 240B00F8 */  addiu      $t3, $zero, 0xf8
/* 65A5C 80064E5C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65A60 80064E60 AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 65A64 80064E64 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65A68 80064E68 24190033 */  addiu      $t9, $zero, 0x33
/* 65A6C 80064E6C AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 65A70 80064E70 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65A74 80064E74 3C0C8018 */  lui        $t4, %hi(D_8017A028)
/* 65A78 80064E78 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65A7C 80064E7C 258CA028 */  addiu      $t4, $t4, %lo(D_8017A028)
/* 65A80 80064E80 8D850004 */  lw         $a1, 4($t4)
/* 65A84 80064E84 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65A88 80064E88 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 65A8C 80064E8C AFA00010 */  sw         $zero, 0x10($sp)
/* 65A90 80064E90 24040001 */  addiu      $a0, $zero, 1
/* 65A94 80064E94 0C0009DF */  jal        func_8000277C
/* 65A98 80064E98 24070040 */   addiu     $a3, $zero, 0x40
/* 65A9C 80064E9C 1000024D */  b          .L800657D4
/* 65AA0 80064EA0 00000000 */   nop
.L80064EA4:
/* 65AA4 80064EA4 0C017B34 */  jal        func_8005ECD0
/* 65AA8 80064EA8 00000000 */   nop
/* 65AAC 80064EAC 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65AB0 80064EB0 C42AF620 */  lwc1       $f10, %lo(D_8013F620)($at)
/* 65AB4 80064EB4 3C01C030 */  lui        $at, 0xc030
/* 65AB8 80064EB8 44819800 */  mtc1       $at, $f19
/* 65ABC 80064EBC 44809000 */  mtc1       $zero, $f18
/* 65AC0 80064EC0 46005421 */  cvt.d.s    $f16, $f10
/* 65AC4 80064EC4 4630903C */  c.lt.d     $f18, $f16
/* 65AC8 80064EC8 00000000 */  nop
/* 65ACC 80064ECC 45000006 */  bc1f       .L80064EE8
/* 65AD0 80064ED0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 65AD4 80064ED4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65AD8 80064ED8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65ADC 80064EDC 240D0061 */  addiu      $t5, $zero, 0x61
/* 65AE0 80064EE0 1000023C */  b          .L800657D4
/* 65AE4 80064EE4 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80064EE8:
/* 65AE8 80064EE8 240F005F */  addiu      $t7, $zero, 0x5f
/* 65AEC 80064EEC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65AF0 80064EF0 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 65AF4 80064EF4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65AF8 80064EF8 240E0001 */  addiu      $t6, $zero, 1
/* 65AFC 80064EFC 10000235 */  b          .L800657D4
/* 65B00 80064F00 AC2EF61C */   sw        $t6, %lo(D_8013F61C)($at)
/* 65B04 80064F04 8FAA0038 */  lw         $t2, 0x38($sp)
/* 65B08 80064F08 3C010001 */  lui        $at, 1
/* 65B0C 80064F0C 8D480000 */  lw         $t0, ($t2)
/* 65B10 80064F10 0101C024 */  and        $t8, $t0, $at
/* 65B14 80064F14 1300001C */  beqz       $t8, .L80064F88
/* 65B18 80064F18 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65B1C 80064F1C C424F664 */  lwc1       $f4, %lo(D_8013F664)($at)
/* 65B20 80064F20 3C0143AF */  lui        $at, 0x43af
/* 65B24 80064F24 44813000 */  mtc1       $at, $f6
/* 65B28 80064F28 00000000 */  nop
/* 65B2C 80064F2C 4604303C */  c.lt.s     $f6, $f4
/* 65B30 80064F30 00000000 */  nop
/* 65B34 80064F34 45000014 */  bc1f       .L80064F88
/* 65B38 80064F38 00000000 */   nop
/* 65B3C 80064F3C 240900F8 */  addiu      $t1, $zero, 0xf8
/* 65B40 80064F40 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65B44 80064F44 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 65B48 80064F48 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65B4C 80064F4C 240B0033 */  addiu      $t3, $zero, 0x33
/* 65B50 80064F50 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 65B54 80064F54 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65B58 80064F58 3C198018 */  lui        $t9, %hi(D_8017A028)
/* 65B5C 80064F5C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65B60 80064F60 2739A028 */  addiu      $t9, $t9, %lo(D_8017A028)
/* 65B64 80064F64 8F250004 */  lw         $a1, 4($t9)
/* 65B68 80064F68 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65B6C 80064F6C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 65B70 80064F70 AFA00010 */  sw         $zero, 0x10($sp)
/* 65B74 80064F74 24040001 */  addiu      $a0, $zero, 1
/* 65B78 80064F78 0C0009DF */  jal        func_8000277C
/* 65B7C 80064F7C 24070040 */   addiu     $a3, $zero, 0x40
/* 65B80 80064F80 10000214 */  b          .L800657D4
/* 65B84 80064F84 00000000 */   nop
.L80064F88:
/* 65B88 80064F88 0C017B34 */  jal        func_8005ECD0
/* 65B8C 80064F8C 00000000 */   nop
/* 65B90 80064F90 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65B94 80064F94 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 65B98 80064F98 3C01C030 */  lui        $at, 0xc030
/* 65B9C 80064F9C 44818800 */  mtc1       $at, $f17
/* 65BA0 80064FA0 44808000 */  mtc1       $zero, $f16
/* 65BA4 80064FA4 460042A1 */  cvt.d.s    $f10, $f8
/* 65BA8 80064FA8 4630503E */  c.le.d     $f10, $f16
/* 65BAC 80064FAC 00000000 */  nop
/* 65BB0 80064FB0 45000006 */  bc1f       .L80064FCC
/* 65BB4 80064FB4 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 65BB8 80064FB8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65BBC 80064FBC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65BC0 80064FC0 240C0060 */  addiu      $t4, $zero, 0x60
/* 65BC4 80064FC4 10000203 */  b          .L800657D4
/* 65BC8 80064FC8 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L80064FCC:
/* 65BCC 80064FCC 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65BD0 80064FD0 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 65BD4 80064FD4 3C014014 */  lui        $at, 0x4014
/* 65BD8 80064FD8 44813800 */  mtc1       $at, $f7
/* 65BDC 80064FDC 44803000 */  mtc1       $zero, $f6
/* 65BE0 80064FE0 46009121 */  cvt.d.s    $f4, $f18
/* 65BE4 80064FE4 4624303E */  c.le.d     $f6, $f4
/* 65BE8 80064FE8 00000000 */  nop
/* 65BEC 80064FEC 45000006 */  bc1f       .L80065008
/* 65BF0 80064FF0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 65BF4 80064FF4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65BF8 80064FF8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65BFC 80064FFC 240D0001 */  addiu      $t5, $zero, 1
/* 65C00 80065000 100001F4 */  b          .L800657D4
/* 65C04 80065004 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80065008:
/* 65C08 80065008 240F00BC */  addiu      $t7, $zero, 0xbc
/* 65C0C 8006500C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65C10 80065010 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 65C14 80065014 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65C18 80065018 240E0001 */  addiu      $t6, $zero, 1
/* 65C1C 8006501C 100001ED */  b          .L800657D4
/* 65C20 80065020 AC2EF61C */   sw        $t6, %lo(D_8013F61C)($at)
/* 65C24 80065024 8FAA0038 */  lw         $t2, 0x38($sp)
/* 65C28 80065028 3C010001 */  lui        $at, 1
/* 65C2C 8006502C 8D480000 */  lw         $t0, ($t2)
/* 65C30 80065030 0101C024 */  and        $t8, $t0, $at
/* 65C34 80065034 1300001C */  beqz       $t8, .L800650A8
/* 65C38 80065038 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65C3C 8006503C C428F664 */  lwc1       $f8, %lo(D_8013F664)($at)
/* 65C40 80065040 3C0143AF */  lui        $at, 0x43af
/* 65C44 80065044 44815000 */  mtc1       $at, $f10
/* 65C48 80065048 00000000 */  nop
/* 65C4C 8006504C 4608503C */  c.lt.s     $f10, $f8
/* 65C50 80065050 00000000 */  nop
/* 65C54 80065054 45000014 */  bc1f       .L800650A8
/* 65C58 80065058 00000000 */   nop
/* 65C5C 8006505C 240900F8 */  addiu      $t1, $zero, 0xf8
/* 65C60 80065060 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65C64 80065064 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 65C68 80065068 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65C6C 8006506C 240B0033 */  addiu      $t3, $zero, 0x33
/* 65C70 80065070 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 65C74 80065074 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65C78 80065078 3C198018 */  lui        $t9, %hi(D_8017A028)
/* 65C7C 8006507C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65C80 80065080 2739A028 */  addiu      $t9, $t9, %lo(D_8017A028)
/* 65C84 80065084 8F250004 */  lw         $a1, 4($t9)
/* 65C88 80065088 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65C8C 8006508C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 65C90 80065090 AFA00010 */  sw         $zero, 0x10($sp)
/* 65C94 80065094 24040001 */  addiu      $a0, $zero, 1
/* 65C98 80065098 0C0009DF */  jal        func_8000277C
/* 65C9C 8006509C 24070040 */   addiu     $a3, $zero, 0x40
/* 65CA0 800650A0 100001CC */  b          .L800657D4
/* 65CA4 800650A4 00000000 */   nop
.L800650A8:
/* 65CA8 800650A8 0C017B34 */  jal        func_8005ECD0
/* 65CAC 800650AC 00000000 */   nop
/* 65CB0 800650B0 8FAC0038 */  lw         $t4, 0x38($sp)
/* 65CB4 800650B4 3C010400 */  lui        $at, 0x400
/* 65CB8 800650B8 8D8D0000 */  lw         $t5, ($t4)
/* 65CBC 800650BC 01A17824 */  and        $t7, $t5, $at
/* 65CC0 800650C0 15E00031 */  bnez       $t7, .L80065188
/* 65CC4 800650C4 00000000 */   nop
/* 65CC8 800650C8 8FAA003C */  lw         $t2, 0x3c($sp)
/* 65CCC 800650CC 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 65CD0 800650D0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 65CD4 800650D4 000A4080 */  sll        $t0, $t2, 2
/* 65CD8 800650D8 010A4023 */  subu       $t0, $t0, $t2
/* 65CDC 800650DC 00084080 */  sll        $t0, $t0, 2
/* 65CE0 800650E0 010A4023 */  subu       $t0, $t0, $t2
/* 65CE4 800650E4 00084080 */  sll        $t0, $t0, 2
/* 65CE8 800650E8 010A4021 */  addu       $t0, $t0, $t2
/* 65CEC 800650EC 00084080 */  sll        $t0, $t0, 2
/* 65CF0 800650F0 010A4023 */  subu       $t0, $t0, $t2
/* 65CF4 800650F4 00084080 */  sll        $t0, $t0, 2
/* 65CF8 800650F8 01C8C021 */  addu       $t8, $t6, $t0
/* 65CFC 800650FC 8F09028C */  lw         $t1, 0x28c($t8)
/* 65D00 80065100 3C010400 */  lui        $at, 0x400
/* 65D04 80065104 01215824 */  and        $t3, $t1, $at
/* 65D08 80065108 1160001F */  beqz       $t3, .L80065188
/* 65D0C 8006510C 00000000 */   nop
/* 65D10 80065110 83190055 */  lb         $t9, 0x55($t8)
/* 65D14 80065114 44998000 */  mtc1       $t9, $f16
/* 65D18 80065118 0C004788 */  jal        func_80011E20
/* 65D1C 8006511C 46808320 */   cvt.s.w   $f12, $f16
/* 65D20 80065120 3C0140A0 */  lui        $at, 0x40a0
/* 65D24 80065124 44819000 */  mtc1       $at, $f18
/* 65D28 80065128 00000000 */  nop
/* 65D2C 8006512C 4600903C */  c.lt.s     $f18, $f0
/* 65D30 80065130 00000000 */  nop
/* 65D34 80065134 4500000B */  bc1f       .L80065164
/* 65D38 80065138 00000000 */   nop
/* 65D3C 8006513C 240C0001 */  addiu      $t4, $zero, 1
/* 65D40 80065140 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65D44 80065144 AC2CF61C */  sw         $t4, %lo(D_8013F61C)($at)
/* 65D48 80065148 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65D4C 8006514C 240D0022 */  addiu      $t5, $zero, 0x22
/* 65D50 80065150 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 65D54 80065154 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65D58 80065158 240F0038 */  addiu      $t7, $zero, 0x38
/* 65D5C 8006515C 1000019D */  b          .L800657D4
/* 65D60 80065160 AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80065164:
/* 65D64 80065164 240A0022 */  addiu      $t2, $zero, 0x22
/* 65D68 80065168 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65D6C 8006516C AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 65D70 80065170 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65D74 80065174 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65D78 80065178 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65D7C 8006517C 240E0105 */  addiu      $t6, $zero, 0x105
/* 65D80 80065180 10000194 */  b          .L800657D4
/* 65D84 80065184 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80065188:
/* 65D88 80065188 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65D8C 8006518C C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 65D90 80065190 3C01C014 */  lui        $at, 0xc014
/* 65D94 80065194 44814800 */  mtc1       $at, $f9
/* 65D98 80065198 44804000 */  mtc1       $zero, $f8
/* 65D9C 8006519C 460021A1 */  cvt.d.s    $f6, $f4
/* 65DA0 800651A0 4626403C */  c.lt.d     $f8, $f6
/* 65DA4 800651A4 00000000 */  nop
/* 65DA8 800651A8 4500018A */  bc1f       .L800657D4
/* 65DAC 800651AC 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 65DB0 800651B0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65DB4 800651B4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65DB8 800651B8 24080061 */  addiu      $t0, $zero, 0x61
/* 65DBC 800651BC 10000185 */  b          .L800657D4
/* 65DC0 800651C0 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L800651C4:
/* 65DC4 800651C4 8FA90038 */  lw         $t1, 0x38($sp)
/* 65DC8 800651C8 3C010400 */  lui        $at, 0x400
/* 65DCC 800651CC 8D2B0000 */  lw         $t3, ($t1)
/* 65DD0 800651D0 0161C024 */  and        $t8, $t3, $at
/* 65DD4 800651D4 1700004E */  bnez       $t8, .L80065310
/* 65DD8 800651D8 00000000 */   nop
/* 65DDC 800651DC 8FAC003C */  lw         $t4, 0x3c($sp)
/* 65DE0 800651E0 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 65DE4 800651E4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 65DE8 800651E8 000C6880 */  sll        $t5, $t4, 2
/* 65DEC 800651EC 01AC6823 */  subu       $t5, $t5, $t4
/* 65DF0 800651F0 000D6880 */  sll        $t5, $t5, 2
/* 65DF4 800651F4 01AC6823 */  subu       $t5, $t5, $t4
/* 65DF8 800651F8 000D6880 */  sll        $t5, $t5, 2
/* 65DFC 800651FC 01AC6821 */  addu       $t5, $t5, $t4
/* 65E00 80065200 000D6880 */  sll        $t5, $t5, 2
/* 65E04 80065204 01AC6823 */  subu       $t5, $t5, $t4
/* 65E08 80065208 000D6880 */  sll        $t5, $t5, 2
/* 65E0C 8006520C 032D7821 */  addu       $t7, $t9, $t5
/* 65E10 80065210 8DEA028C */  lw         $t2, 0x28c($t7)
/* 65E14 80065214 3C010400 */  lui        $at, 0x400
/* 65E18 80065218 01417024 */  and        $t6, $t2, $at
/* 65E1C 8006521C 11C0003C */  beqz       $t6, .L80065310
/* 65E20 80065220 00000000 */   nop
/* 65E24 80065224 81E80055 */  lb         $t0, 0x55($t7)
/* 65E28 80065228 44885000 */  mtc1       $t0, $f10
/* 65E2C 8006522C 0C004788 */  jal        func_80011E20
/* 65E30 80065230 46805320 */   cvt.s.w   $f12, $f10
/* 65E34 80065234 3C0140A0 */  lui        $at, 0x40a0
/* 65E38 80065238 44818000 */  mtc1       $at, $f16
/* 65E3C 8006523C 00000000 */  nop
/* 65E40 80065240 4600803C */  c.lt.s     $f16, $f0
/* 65E44 80065244 00000000 */  nop
/* 65E48 80065248 4501001F */  bc1t       .L800652C8
/* 65E4C 8006524C 00000000 */   nop
/* 65E50 80065250 8FAB003C */  lw         $t3, 0x3c($sp)
/* 65E54 80065254 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 65E58 80065258 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 65E5C 8006525C 000BC080 */  sll        $t8, $t3, 2
/* 65E60 80065260 030BC023 */  subu       $t8, $t8, $t3
/* 65E64 80065264 0018C080 */  sll        $t8, $t8, 2
/* 65E68 80065268 030BC023 */  subu       $t8, $t8, $t3
/* 65E6C 8006526C 0018C080 */  sll        $t8, $t8, 2
/* 65E70 80065270 030BC021 */  addu       $t8, $t8, $t3
/* 65E74 80065274 0018C080 */  sll        $t8, $t8, 2
/* 65E78 80065278 030BC023 */  subu       $t8, $t8, $t3
/* 65E7C 8006527C 0018C080 */  sll        $t8, $t8, 2
/* 65E80 80065280 01386021 */  addu       $t4, $t1, $t8
/* 65E84 80065284 8D990014 */  lw         $t9, 0x14($t4)
/* 65E88 80065288 00196880 */  sll        $t5, $t9, 2
/* 65E8C 8006528C 01B96823 */  subu       $t5, $t5, $t9
/* 65E90 80065290 000D6880 */  sll        $t5, $t5, 2
/* 65E94 80065294 01B96823 */  subu       $t5, $t5, $t9
/* 65E98 80065298 000D6880 */  sll        $t5, $t5, 2
/* 65E9C 8006529C 01B96821 */  addu       $t5, $t5, $t9
/* 65EA0 800652A0 000D6880 */  sll        $t5, $t5, 2
/* 65EA4 800652A4 01B96823 */  subu       $t5, $t5, $t9
/* 65EA8 800652A8 000D6880 */  sll        $t5, $t5, 2
/* 65EAC 800652AC 012D5021 */  addu       $t2, $t1, $t5
/* 65EB0 800652B0 8D4E006C */  lw         $t6, 0x6c($t2)
/* 65EB4 800652B4 29C1004D */  slti       $at, $t6, 0x4d
/* 65EB8 800652B8 14200003 */  bnez       $at, .L800652C8
/* 65EBC 800652BC 29C1007E */   slti      $at, $t6, 0x7e
/* 65EC0 800652C0 1420000A */  bnez       $at, .L800652EC
/* 65EC4 800652C4 00000000 */   nop
.L800652C8:
/* 65EC8 800652C8 240F0022 */  addiu      $t7, $zero, 0x22
/* 65ECC 800652CC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65ED0 800652D0 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 65ED4 800652D4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65ED8 800652D8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65EDC 800652DC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65EE0 800652E0 24080038 */  addiu      $t0, $zero, 0x38
/* 65EE4 800652E4 1000013B */  b          .L800657D4
/* 65EE8 800652E8 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L800652EC:
/* 65EEC 800652EC 240B0022 */  addiu      $t3, $zero, 0x22
/* 65EF0 800652F0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65EF4 800652F4 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 65EF8 800652F8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65EFC 800652FC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65F00 80065300 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65F04 80065304 24180105 */  addiu      $t8, $zero, 0x105
/* 65F08 80065308 10000132 */  b          .L800657D4
/* 65F0C 8006530C AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80065310:
/* 65F10 80065310 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65F14 80065314 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 65F18 80065318 3C014014 */  lui        $at, 0x4014
/* 65F1C 8006531C 44813800 */  mtc1       $at, $f7
/* 65F20 80065320 44803000 */  mtc1       $zero, $f6
/* 65F24 80065324 46009121 */  cvt.d.s    $f4, $f18
/* 65F28 80065328 4624303E */  c.le.d     $f6, $f4
/* 65F2C 8006532C 00000000 */  nop
/* 65F30 80065330 45000007 */  bc1f       .L80065350
/* 65F34 80065334 00000000 */   nop
/* 65F38 80065338 240C0001 */  addiu      $t4, $zero, 1
/* 65F3C 8006533C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65F40 80065340 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 65F44 80065344 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65F48 80065348 10000122 */  b          .L800657D4
/* 65F4C 8006534C AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80065350:
/* 65F50 80065350 3C018014 */  lui        $at, %hi(D_8013F620)
/* 65F54 80065354 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 65F58 80065358 3C01C030 */  lui        $at, 0xc030
/* 65F5C 8006535C 44818800 */  mtc1       $at, $f17
/* 65F60 80065360 44808000 */  mtc1       $zero, $f16
/* 65F64 80065364 460042A1 */  cvt.d.s    $f10, $f8
/* 65F68 80065368 4630503E */  c.le.d     $f10, $f16
/* 65F6C 8006536C 00000000 */  nop
/* 65F70 80065370 45000006 */  bc1f       .L8006538C
/* 65F74 80065374 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 65F78 80065378 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65F7C 8006537C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65F80 80065380 24190060 */  addiu      $t9, $zero, 0x60
/* 65F84 80065384 10000113 */  b          .L800657D4
/* 65F88 80065388 AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
.L8006538C:
/* 65F8C 8006538C 8FA90038 */  lw         $t1, 0x38($sp)
/* 65F90 80065390 3C010001 */  lui        $at, 1
/* 65F94 80065394 8D2D0000 */  lw         $t5, ($t1)
/* 65F98 80065398 01A15024 */  and        $t2, $t5, $at
/* 65F9C 8006539C 1140010D */  beqz       $t2, .L800657D4
/* 65FA0 800653A0 3C018014 */   lui       $at, %hi(D_8013F664)
/* 65FA4 800653A4 C432F664 */  lwc1       $f18, %lo(D_8013F664)($at)
/* 65FA8 800653A8 3C0143AF */  lui        $at, 0x43af
/* 65FAC 800653AC 44812000 */  mtc1       $at, $f4
/* 65FB0 800653B0 00000000 */  nop
/* 65FB4 800653B4 4612203C */  c.lt.s     $f4, $f18
/* 65FB8 800653B8 00000000 */  nop
/* 65FBC 800653BC 45000014 */  bc1f       .L80065410
/* 65FC0 800653C0 00000000 */   nop
/* 65FC4 800653C4 240E00F8 */  addiu      $t6, $zero, 0xf8
/* 65FC8 800653C8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 65FCC 800653CC AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 65FD0 800653D0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 65FD4 800653D4 240F0033 */  addiu      $t7, $zero, 0x33
/* 65FD8 800653D8 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 65FDC 800653DC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 65FE0 800653E0 3C088018 */  lui        $t0, %hi(D_8017A028)
/* 65FE4 800653E4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 65FE8 800653E8 2508A028 */  addiu      $t0, $t0, %lo(D_8017A028)
/* 65FEC 800653EC 8D050004 */  lw         $a1, 4($t0)
/* 65FF0 800653F0 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 65FF4 800653F4 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 65FF8 800653F8 AFA00010 */  sw         $zero, 0x10($sp)
/* 65FFC 800653FC 24040001 */  addiu      $a0, $zero, 1
/* 66000 80065400 0C0009DF */  jal        func_8000277C
/* 66004 80065404 24070040 */   addiu     $a3, $zero, 0x40
/* 66008 80065408 100000F2 */  b          .L800657D4
/* 6600C 8006540C 00000000 */   nop
.L80065410:
/* 66010 80065410 0C017B34 */  jal        func_8005ECD0
/* 66014 80065414 00000000 */   nop
/* 66018 80065418 100000EE */  b          .L800657D4
/* 6601C 8006541C 00000000 */   nop
.L80065420:
/* 66020 80065420 8FA40038 */  lw         $a0, 0x38($sp)
/* 66024 80065424 0C018BF5 */  jal        func_80062FD4
/* 66028 80065428 8FA5003C */   lw        $a1, 0x3c($sp)
/* 6602C 8006542C 144000E9 */  bnez       $v0, .L800657D4
/* 66030 80065430 3C018014 */   lui       $at, %hi(D_8013F620)
/* 66034 80065434 C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 66038 80065438 3C014014 */  lui        $at, 0x4014
/* 6603C 8006543C 44815800 */  mtc1       $at, $f11
/* 66040 80065440 44805000 */  mtc1       $zero, $f10
/* 66044 80065444 46003221 */  cvt.d.s    $f8, $f6
/* 66048 80065448 462A403C */  c.lt.d     $f8, $f10
/* 6604C 8006544C 00000000 */  nop
/* 66050 80065450 45000006 */  bc1f       .L8006546C
/* 66054 80065454 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 66058 80065458 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6605C 8006545C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66060 80065460 240B00BF */  addiu      $t3, $zero, 0xbf
/* 66064 80065464 100000DB */  b          .L800657D4
/* 66068 80065468 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L8006546C:
/* 6606C 8006546C 24180001 */  addiu      $t8, $zero, 1
/* 66070 80065470 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66074 80065474 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 66078 80065478 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6607C 8006547C 240C0009 */  addiu      $t4, $zero, 9
/* 66080 80065480 100000D4 */  b          .L800657D4
/* 66084 80065484 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L80065488:
/* 66088 80065488 8FA40038 */  lw         $a0, 0x38($sp)
/* 6608C 8006548C 0C018BF5 */  jal        func_80062FD4
/* 66090 80065490 8FA5003C */   lw        $a1, 0x3c($sp)
/* 66094 80065494 144000CF */  bnez       $v0, .L800657D4
/* 66098 80065498 00000000 */   nop
/* 6609C 8006549C 8FB90038 */  lw         $t9, 0x38($sp)
/* 660A0 800654A0 3C010400 */  lui        $at, 0x400
/* 660A4 800654A4 8F290000 */  lw         $t1, ($t9)
/* 660A8 800654A8 01216824 */  and        $t5, $t1, $at
/* 660AC 800654AC 15A0001C */  bnez       $t5, .L80065520
/* 660B0 800654B0 00000000 */   nop
/* 660B4 800654B4 8FAE003C */  lw         $t6, 0x3c($sp)
/* 660B8 800654B8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 660BC 800654BC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 660C0 800654C0 000E7880 */  sll        $t7, $t6, 2
/* 660C4 800654C4 01EE7823 */  subu       $t7, $t7, $t6
/* 660C8 800654C8 000F7880 */  sll        $t7, $t7, 2
/* 660CC 800654CC 01EE7823 */  subu       $t7, $t7, $t6
/* 660D0 800654D0 000F7880 */  sll        $t7, $t7, 2
/* 660D4 800654D4 01EE7821 */  addu       $t7, $t7, $t6
/* 660D8 800654D8 000F7880 */  sll        $t7, $t7, 2
/* 660DC 800654DC 01EE7823 */  subu       $t7, $t7, $t6
/* 660E0 800654E0 000F7880 */  sll        $t7, $t7, 2
/* 660E4 800654E4 014F4021 */  addu       $t0, $t2, $t7
/* 660E8 800654E8 8D0B028C */  lw         $t3, 0x28c($t0)
/* 660EC 800654EC 3C010400 */  lui        $at, 0x400
/* 660F0 800654F0 0161C024 */  and        $t8, $t3, $at
/* 660F4 800654F4 1300000A */  beqz       $t8, .L80065520
/* 660F8 800654F8 00000000 */   nop
/* 660FC 800654FC 240C0022 */  addiu      $t4, $zero, 0x22
/* 66100 80065500 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 66104 80065504 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 66108 80065508 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6610C 8006550C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 66110 80065510 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66114 80065514 24190052 */  addiu      $t9, $zero, 0x52
/* 66118 80065518 100000AE */  b          .L800657D4
/* 6611C 8006551C AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
.L80065520:
/* 66120 80065520 3C018014 */  lui        $at, %hi(D_8013F620)
/* 66124 80065524 C430F620 */  lwc1       $f16, %lo(D_8013F620)($at)
/* 66128 80065528 3C014014 */  lui        $at, 0x4014
/* 6612C 8006552C 44812800 */  mtc1       $at, $f5
/* 66130 80065530 44802000 */  mtc1       $zero, $f4
/* 66134 80065534 460084A1 */  cvt.d.s    $f18, $f16
/* 66138 80065538 4624903C */  c.lt.d     $f18, $f4
/* 6613C 8006553C 00000000 */  nop
/* 66140 80065540 450000A4 */  bc1f       .L800657D4
/* 66144 80065544 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 66148 80065548 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6614C 8006554C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66150 80065550 240900BF */  addiu      $t1, $zero, 0xbf
/* 66154 80065554 1000009F */  b          .L800657D4
/* 66158 80065558 AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
.L8006555C:
/* 6615C 8006555C 8FA40038 */  lw         $a0, 0x38($sp)
/* 66160 80065560 0C018BF5 */  jal        func_80062FD4
/* 66164 80065564 8FA5003C */   lw        $a1, 0x3c($sp)
/* 66168 80065568 1440009A */  bnez       $v0, .L800657D4
/* 6616C 8006556C 3C018014 */   lui       $at, %hi(D_8013F620)
/* 66170 80065570 C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 66174 80065574 3C014014 */  lui        $at, 0x4014
/* 66178 80065578 44815800 */  mtc1       $at, $f11
/* 6617C 8006557C 44805000 */  mtc1       $zero, $f10
/* 66180 80065580 46003221 */  cvt.d.s    $f8, $f6
/* 66184 80065584 462A403C */  c.lt.d     $f8, $f10
/* 66188 80065588 00000000 */  nop
/* 6618C 8006558C 45000008 */  bc1f       .L800655B0
/* 66190 80065590 00000000 */   nop
/* 66194 80065594 240D0001 */  addiu      $t5, $zero, 1
/* 66198 80065598 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6619C 8006559C AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 661A0 800655A0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 661A4 800655A4 240E004F */  addiu      $t6, $zero, 0x4f
/* 661A8 800655A8 1000008A */  b          .L800657D4
/* 661AC 800655AC AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L800655B0:
/* 661B0 800655B0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 661B4 800655B4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 661B8 800655B8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 661BC 800655BC 240A00BE */  addiu      $t2, $zero, 0xbe
/* 661C0 800655C0 10000084 */  b          .L800657D4
/* 661C4 800655C4 AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
/* 661C8 800655C8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 661CC 800655CC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 661D0 800655D0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 661D4 800655D4 240F004F */  addiu      $t7, $zero, 0x4f
/* 661D8 800655D8 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
.L800655DC:
/* 661DC 800655DC 8FA40038 */  lw         $a0, 0x38($sp)
/* 661E0 800655E0 0C018BF5 */  jal        func_80062FD4
/* 661E4 800655E4 8FA5003C */   lw        $a1, 0x3c($sp)
/* 661E8 800655E8 1440007A */  bnez       $v0, .L800657D4
/* 661EC 800655EC 00000000 */   nop
/* 661F0 800655F0 8FA80038 */  lw         $t0, 0x38($sp)
/* 661F4 800655F4 3C010400 */  lui        $at, 0x400
/* 661F8 800655F8 8D0B0000 */  lw         $t3, ($t0)
/* 661FC 800655FC 0161C024 */  and        $t8, $t3, $at
/* 66200 80065600 1700001C */  bnez       $t8, .L80065674
/* 66204 80065604 00000000 */   nop
/* 66208 80065608 8FB9003C */  lw         $t9, 0x3c($sp)
/* 6620C 8006560C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 66210 80065610 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 66214 80065614 00194880 */  sll        $t1, $t9, 2
/* 66218 80065618 01394823 */  subu       $t1, $t1, $t9
/* 6621C 8006561C 00094880 */  sll        $t1, $t1, 2
/* 66220 80065620 01394823 */  subu       $t1, $t1, $t9
/* 66224 80065624 00094880 */  sll        $t1, $t1, 2
/* 66228 80065628 01394821 */  addu       $t1, $t1, $t9
/* 6622C 8006562C 00094880 */  sll        $t1, $t1, 2
/* 66230 80065630 01394823 */  subu       $t1, $t1, $t9
/* 66234 80065634 00094880 */  sll        $t1, $t1, 2
/* 66238 80065638 01896821 */  addu       $t5, $t4, $t1
/* 6623C 8006563C 8DAE028C */  lw         $t6, 0x28c($t5)
/* 66240 80065640 3C010400 */  lui        $at, 0x400
/* 66244 80065644 01C15024 */  and        $t2, $t6, $at
/* 66248 80065648 1140000A */  beqz       $t2, .L80065674
/* 6624C 8006564C 00000000 */   nop
/* 66250 80065650 240F0022 */  addiu      $t7, $zero, 0x22
/* 66254 80065654 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 66258 80065658 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 6625C 8006565C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66260 80065660 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 66264 80065664 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66268 80065668 24080052 */  addiu      $t0, $zero, 0x52
/* 6626C 8006566C 10000059 */  b          .L800657D4
/* 66270 80065670 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L80065674:
/* 66274 80065674 3C018014 */  lui        $at, %hi(D_8013F620)
/* 66278 80065678 C430F620 */  lwc1       $f16, %lo(D_8013F620)($at)
/* 6627C 8006567C 3C014014 */  lui        $at, 0x4014
/* 66280 80065680 44812800 */  mtc1       $at, $f5
/* 66284 80065684 44802000 */  mtc1       $zero, $f4
/* 66288 80065688 460084A1 */  cvt.d.s    $f18, $f16
/* 6628C 8006568C 4632203E */  c.le.d     $f4, $f18
/* 66290 80065690 00000000 */  nop
/* 66294 80065694 45000006 */  bc1f       .L800656B0
/* 66298 80065698 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 6629C 8006569C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 662A0 800656A0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 662A4 800656A4 240B00BE */  addiu      $t3, $zero, 0xbe
/* 662A8 800656A8 1000004A */  b          .L800657D4
/* 662AC 800656AC AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L800656B0:
/* 662B0 800656B0 8FB80038 */  lw         $t8, 0x38($sp)
/* 662B4 800656B4 3C010001 */  lui        $at, 1
/* 662B8 800656B8 8F190000 */  lw         $t9, ($t8)
/* 662BC 800656BC 03216024 */  and        $t4, $t9, $at
/* 662C0 800656C0 11800044 */  beqz       $t4, .L800657D4
/* 662C4 800656C4 3C018014 */   lui       $at, %hi(D_8013F664)
/* 662C8 800656C8 C426F664 */  lwc1       $f6, %lo(D_8013F664)($at)
/* 662CC 800656CC 3C0143AF */  lui        $at, 0x43af
/* 662D0 800656D0 44814000 */  mtc1       $at, $f8
/* 662D4 800656D4 00000000 */  nop
/* 662D8 800656D8 4606403C */  c.lt.s     $f8, $f6
/* 662DC 800656DC 00000000 */  nop
/* 662E0 800656E0 45000014 */  bc1f       .L80065734
/* 662E4 800656E4 00000000 */   nop
/* 662E8 800656E8 240900F9 */  addiu      $t1, $zero, 0xf9
/* 662EC 800656EC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 662F0 800656F0 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 662F4 800656F4 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 662F8 800656F8 240D0033 */  addiu      $t5, $zero, 0x33
/* 662FC 800656FC AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 66300 80065700 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66304 80065704 3C0E8018 */  lui        $t6, %hi(D_8017A028)
/* 66308 80065708 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6630C 8006570C 25CEA028 */  addiu      $t6, $t6, %lo(D_8017A028)
/* 66310 80065710 8DC50004 */  lw         $a1, 4($t6)
/* 66314 80065714 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 66318 80065718 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 6631C 8006571C AFA00010 */  sw         $zero, 0x10($sp)
/* 66320 80065720 24040001 */  addiu      $a0, $zero, 1
/* 66324 80065724 0C0009DF */  jal        func_8000277C
/* 66328 80065728 24070040 */   addiu     $a3, $zero, 0x40
/* 6632C 8006572C 10000029 */  b          .L800657D4
/* 66330 80065730 00000000 */   nop
.L80065734:
/* 66334 80065734 0C017B34 */  jal        func_8005ECD0
/* 66338 80065738 00000000 */   nop
/* 6633C 8006573C 10000025 */  b          .L800657D4
/* 66340 80065740 00000000 */   nop
/* 66344 80065744 3C0A8014 */  lui        $t2, %hi(D_8013F610)
/* 66348 80065748 8D4AF610 */  lw         $t2, %lo(D_8013F610)($t2)
/* 6634C 8006574C 240100F9 */  addiu      $at, $zero, 0xf9
/* 66350 80065750 11410005 */  beq        $t2, $at, .L80065768
/* 66354 80065754 00000000 */   nop
/* 66358 80065758 240F00F0 */  addiu      $t7, $zero, 0xf0
/* 6635C 8006575C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66360 80065760 10000004 */  b          .L80065774
/* 66364 80065764 AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80065768:
/* 66368 80065768 240800E1 */  addiu      $t0, $zero, 0xe1
/* 6636C 8006576C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66370 80065770 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
.L80065774:
/* 66374 80065774 240B0001 */  addiu      $t3, $zero, 1
/* 66378 80065778 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6637C 8006577C AC2BF604 */  sw         $t3, %lo(D_8013F604)($at)
/* 66380 80065780 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 66384 80065784 24180034 */  addiu      $t8, $zero, 0x34
/* 66388 80065788 AC38F60C */  sw         $t8, %lo(D_8013F60C)($at)
/* 6638C 8006578C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66390 80065790 24190001 */  addiu      $t9, $zero, 1
/* 66394 80065794 AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 66398 80065798 0C017AC1 */  jal        func_8005EB04
/* 6639C 8006579C 8FA4003C */   lw        $a0, 0x3c($sp)
/* 663A0 800657A0 3C01800E */  lui        $at, %hi(D_800DE1C0)
/* 663A4 800657A4 C42AE1C0 */  lwc1       $f10, %lo(D_800DE1C0)($at)
/* 663A8 800657A8 3C018014 */  lui        $at, %hi(D_8013F658)
/* 663AC 800657AC 10000009 */  b          .L800657D4
/* 663B0 800657B0 E42AF658 */   swc1      $f10, %lo(D_8013F658)($at)
/* 663B4 800657B4 8FA40038 */  lw         $a0, 0x38($sp)
/* 663B8 800657B8 0C018F68 */  jal        func_80063DA0
/* 663BC 800657BC 8FA5003C */   lw        $a1, 0x3c($sp)
/* 663C0 800657C0 10000004 */  b          .L800657D4
/* 663C4 800657C4 00000000 */   nop
/* 663C8 800657C8 8FA40038 */  lw         $a0, 0x38($sp)
/* 663CC 800657CC 0C018C2A */  jal        func_800630A8
/* 663D0 800657D0 8FA5003C */   lw        $a1, 0x3c($sp)
.L800657D4:
/* 663D4 800657D4 1000003C */  b          .L800658C8
/* 663D8 800657D8 24020001 */   addiu     $v0, $zero, 1
.L800657DC:
/* 663DC 800657DC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 663E0 800657E0 3C010400 */  lui        $at, 0x400
/* 663E4 800657E4 8D890000 */  lw         $t1, ($t4)
/* 663E8 800657E8 01216824 */  and        $t5, $t1, $at
/* 663EC 800657EC 11A00035 */  beqz       $t5, .L800658C4
/* 663F0 800657F0 00000000 */   nop
/* 663F4 800657F4 3C0E8014 */  lui        $t6, %hi(D_8013F604)
/* 663F8 800657F8 8DCEF604 */  lw         $t6, %lo(D_8013F604)($t6)
/* 663FC 800657FC 15C00031 */  bnez       $t6, .L800658C4
/* 66400 80065800 00000000 */   nop
/* 66404 80065804 0C055A40 */  jal        func_80156900
/* 66408 80065808 8FA4003C */   lw        $a0, 0x3c($sp)
/* 6640C 8006580C AFA20030 */  sw         $v0, 0x30($sp)
/* 66410 80065810 8FAA0030 */  lw         $t2, 0x30($sp)
/* 66414 80065814 24010001 */  addiu      $at, $zero, 1
/* 66418 80065818 15410011 */  bne        $t2, $at, .L80065860
/* 6641C 8006581C 00000000 */   nop
/* 66420 80065820 3C0F8014 */  lui        $t7, %hi(D_8013F604)
/* 66424 80065824 8DEFF604 */  lw         $t7, %lo(D_8013F604)($t7)
/* 66428 80065828 15E0000D */  bnez       $t7, .L80065860
/* 6642C 8006582C 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 66430 80065830 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 66434 80065834 3C018014 */  lui        $at, %hi(D_8013F608)
/* 66438 80065838 24080003 */  addiu      $t0, $zero, 3
/* 6643C 8006583C AC28F608 */  sw         $t0, %lo(D_8013F608)($at)
/* 66440 80065840 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 66444 80065844 240B001F */  addiu      $t3, $zero, 0x1f
/* 66448 80065848 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 6644C 8006584C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66450 80065850 24180035 */  addiu      $t8, $zero, 0x35
/* 66454 80065854 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 66458 80065858 1000001B */  b          .L800658C8
/* 6645C 8006585C 24020001 */   addiu     $v0, $zero, 1
.L80065860:
/* 66460 80065860 8FB90030 */  lw         $t9, 0x30($sp)
/* 66464 80065864 24010002 */  addiu      $at, $zero, 2
/* 66468 80065868 17210016 */  bne        $t9, $at, .L800658C4
/* 6646C 8006586C 00000000 */   nop
/* 66470 80065870 3C0C8014 */  lui        $t4, %hi(D_8013F604)
/* 66474 80065874 8D8CF604 */  lw         $t4, %lo(D_8013F604)($t4)
/* 66478 80065878 15800005 */  bnez       $t4, .L80065890
/* 6647C 8006587C 00000000 */   nop
/* 66480 80065880 2409004E */  addiu      $t1, $zero, 0x4e
/* 66484 80065884 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66488 80065888 10000004 */  b          .L8006589C
/* 6648C 8006588C AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
.L80065890:
/* 66490 80065890 240D0055 */  addiu      $t5, $zero, 0x55
/* 66494 80065894 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66498 80065898 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
.L8006589C:
/* 6649C 8006589C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 664A0 800658A0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 664A4 800658A4 3C018014 */  lui        $at, %hi(D_8013F608)
/* 664A8 800658A8 240E0003 */  addiu      $t6, $zero, 3
/* 664AC 800658AC AC2EF608 */  sw         $t6, %lo(D_8013F608)($at)
/* 664B0 800658B0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 664B4 800658B4 240A001F */  addiu      $t2, $zero, 0x1f
/* 664B8 800658B8 AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 664BC 800658BC 10000002 */  b          .L800658C8
/* 664C0 800658C0 24020001 */   addiu     $v0, $zero, 1
.L800658C4:
/* 664C4 800658C4 00001025 */  or         $v0, $zero, $zero
.L800658C8:
/* 664C8 800658C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 664CC 800658CC 8FB00020 */  lw         $s0, 0x20($sp)
/* 664D0 800658D0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 664D4 800658D4 03E00008 */  jr         $ra
/* 664D8 800658D8 00000000 */   nop

glabel func_800658DC
/* 664DC 800658DC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 664E0 800658E0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 664E4 800658E4 AFA40038 */  sw         $a0, 0x38($sp)
/* 664E8 800658E8 AFA5003C */  sw         $a1, 0x3c($sp)
/* 664EC 800658EC AFB00020 */  sw         $s0, 0x20($sp)
/* 664F0 800658F0 8FAF003C */  lw         $t7, 0x3c($sp)
/* 664F4 800658F4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 664F8 800658F8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 664FC 800658FC 000FC080 */  sll        $t8, $t7, 2
/* 66500 80065900 030FC023 */  subu       $t8, $t8, $t7
/* 66504 80065904 0018C080 */  sll        $t8, $t8, 2
/* 66508 80065908 030FC023 */  subu       $t8, $t8, $t7
/* 6650C 8006590C 0018C080 */  sll        $t8, $t8, 2
/* 66510 80065910 030FC021 */  addu       $t8, $t8, $t7
/* 66514 80065914 0018C080 */  sll        $t8, $t8, 2
/* 66518 80065918 030FC023 */  subu       $t8, $t8, $t7
/* 6651C 8006591C 0018C080 */  sll        $t8, $t8, 2
/* 66520 80065920 3C088014 */  lui        $t0, %hi(D_8013F608)
/* 66524 80065924 8D08F608 */  lw         $t0, %lo(D_8013F608)($t0)
/* 66528 80065928 AFA00030 */  sw         $zero, 0x30($sp)
/* 6652C 8006592C 01D8C821 */  addu       $t9, $t6, $t8
/* 66530 80065930 C72400F4 */  lwc1       $f4, 0xf4($t9)
/* 66534 80065934 24010005 */  addiu      $at, $zero, 5
/* 66538 80065938 1501009F */  bne        $t0, $at, .L80065BB8
/* 6653C 8006593C E7A40034 */   swc1      $f4, 0x34($sp)
/* 66540 80065940 3C01800E */  lui        $at, %hi(D_800DE1C8)
/* 66544 80065944 D428E1C8 */  ldc1       $f8, %lo(D_800DE1C8)($at)
/* 66548 80065948 460021A1 */  cvt.d.s    $f6, $f4
/* 6654C 8006594C 4626403C */  c.lt.d     $f8, $f6
/* 66550 80065950 00000000 */  nop
/* 66554 80065954 4500002F */  bc1f       .L80065A14
/* 66558 80065958 00000000 */   nop
/* 6655C 8006595C 3C098014 */  lui        $t1, %hi(D_8013F610)
/* 66560 80065960 8D29F610 */  lw         $t1, %lo(D_8013F610)($t1)
/* 66564 80065964 252AFFF1 */  addiu      $t2, $t1, -0xf
/* 66568 80065968 2D41000C */  sltiu      $at, $t2, 0xc
/* 6656C 8006596C 1020015F */  beqz       $at, .L80065EEC
/* 66570 80065970 00000000 */   nop
/* 66574 80065974 000A5080 */  sll        $t2, $t2, 2
/* 66578 80065978 3C01800E */  lui        $at, %hi(D_800DE1D0)
/* 6657C 8006597C 002A0821 */  addu       $at, $at, $t2
/* 66580 80065980 8C2AE1D0 */  lw         $t2, %lo(D_800DE1D0)($at)
/* 66584 80065984 01400008 */  jr         $t2
/* 66588 80065988 00000000 */   nop
/* 6658C 8006598C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66590 80065990 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 66594 80065994 240B0001 */  addiu      $t3, $zero, 1
/* 66598 80065998 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6659C 8006599C 240C000F */  addiu      $t4, $zero, 0xf
/* 665A0 800659A0 3C0D8018 */  lui        $t5, %hi(D_8017A028)
/* 665A4 800659A4 AFAB0030 */  sw         $t3, 0x30($sp)
/* 665A8 800659A8 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 665AC 800659AC 25ADA028 */  addiu      $t5, $t5, %lo(D_8017A028)
/* 665B0 800659B0 8DA50000 */  lw         $a1, ($t5)
/* 665B4 800659B4 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 665B8 800659B8 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 665BC 800659BC AFA00010 */  sw         $zero, 0x10($sp)
/* 665C0 800659C0 00002025 */  or         $a0, $zero, $zero
/* 665C4 800659C4 0C0009DF */  jal        func_8000277C
/* 665C8 800659C8 24070040 */   addiu     $a3, $zero, 0x40
/* 665CC 800659CC 10000147 */  b          .L80065EEC
/* 665D0 800659D0 00000000 */   nop
/* 665D4 800659D4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 665D8 800659D8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 665DC 800659DC 240F0001 */  addiu      $t7, $zero, 1
/* 665E0 800659E0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 665E4 800659E4 240E0012 */  addiu      $t6, $zero, 0x12
/* 665E8 800659E8 AFAF0030 */  sw         $t7, 0x30($sp)
/* 665EC 800659EC 1000013F */  b          .L80065EEC
/* 665F0 800659F0 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
/* 665F4 800659F4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 665F8 800659F8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 665FC 800659FC 24180001 */  addiu      $t8, $zero, 1
/* 66600 80065A00 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66604 80065A04 2419009B */  addiu      $t9, $zero, 0x9b
/* 66608 80065A08 AFB80030 */  sw         $t8, 0x30($sp)
/* 6660C 80065A0C 10000137 */  b          .L80065EEC
/* 66610 80065A10 AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
.L80065A14:
/* 66614 80065A14 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 66618 80065A18 3C01800E */  lui        $at, %hi(D_800DE200)
/* 6661C 80065A1C D432E200 */  ldc1       $f18, %lo(D_800DE200)($at)
/* 66620 80065A20 46005421 */  cvt.d.s    $f16, $f10
/* 66624 80065A24 4632803C */  c.lt.d     $f16, $f18
/* 66628 80065A28 00000000 */  nop
/* 6662C 80065A2C 45000036 */  bc1f       .L80065B08
/* 66630 80065A30 00000000 */   nop
/* 66634 80065A34 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 66638 80065A38 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 6663C 80065A3C 2A010017 */  slti       $at, $s0, 0x17
/* 66640 80065A40 14200005 */  bnez       $at, .L80065A58
/* 66644 80065A44 2401009B */   addiu     $at, $zero, 0x9b
/* 66648 80065A48 1201001F */  beq        $s0, $at, .L80065AC8
/* 6664C 80065A4C 00000000 */   nop
/* 66650 80065A50 10000126 */  b          .L80065EEC
/* 66654 80065A54 00000000 */   nop
.L80065A58:
/* 66658 80065A58 2608FFF1 */  addiu      $t0, $s0, -0xf
/* 6665C 80065A5C 2D010008 */  sltiu      $at, $t0, 8
/* 66660 80065A60 10200122 */  beqz       $at, .L80065EEC
/* 66664 80065A64 00000000 */   nop
/* 66668 80065A68 00084080 */  sll        $t0, $t0, 2
/* 6666C 80065A6C 3C01800E */  lui        $at, %hi(D_800DE208)
/* 66670 80065A70 00280821 */  addu       $at, $at, $t0
/* 66674 80065A74 8C28E208 */  lw         $t0, %lo(D_800DE208)($at)
/* 66678 80065A78 01000008 */  jr         $t0
/* 6667C 80065A7C 00000000 */   nop
/* 66680 80065A80 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66684 80065A84 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 66688 80065A88 24090001 */  addiu      $t1, $zero, 1
/* 6668C 80065A8C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66690 80065A90 240A0016 */  addiu      $t2, $zero, 0x16
/* 66694 80065A94 3C0B8018 */  lui        $t3, %hi(D_8017A028)
/* 66698 80065A98 AFA90030 */  sw         $t1, 0x30($sp)
/* 6669C 80065A9C AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 666A0 80065AA0 256BA028 */  addiu      $t3, $t3, %lo(D_8017A028)
/* 666A4 80065AA4 8D650000 */  lw         $a1, ($t3)
/* 666A8 80065AA8 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 666AC 80065AAC 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 666B0 80065AB0 AFA00010 */  sw         $zero, 0x10($sp)
/* 666B4 80065AB4 00002025 */  or         $a0, $zero, $zero
/* 666B8 80065AB8 0C0009DF */  jal        func_8000277C
/* 666BC 80065ABC 24070040 */   addiu     $a3, $zero, 0x40
/* 666C0 80065AC0 1000010A */  b          .L80065EEC
/* 666C4 80065AC4 00000000 */   nop
.L80065AC8:
/* 666C8 80065AC8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 666CC 80065ACC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 666D0 80065AD0 240C0001 */  addiu      $t4, $zero, 1
/* 666D4 80065AD4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 666D8 80065AD8 240D0010 */  addiu      $t5, $zero, 0x10
/* 666DC 80065ADC AFAC0030 */  sw         $t4, 0x30($sp)
/* 666E0 80065AE0 10000102 */  b          .L80065EEC
/* 666E4 80065AE4 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
/* 666E8 80065AE8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 666EC 80065AEC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 666F0 80065AF0 240F0001 */  addiu      $t7, $zero, 1
/* 666F4 80065AF4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 666F8 80065AF8 240E001A */  addiu      $t6, $zero, 0x1a
/* 666FC 80065AFC AFAF0030 */  sw         $t7, 0x30($sp)
/* 66700 80065B00 100000FA */  b          .L80065EEC
/* 66704 80065B04 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80065B08:
/* 66708 80065B08 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 6670C 80065B0C 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 66710 80065B10 2A01001B */  slti       $at, $s0, 0x1b
/* 66714 80065B14 14200005 */  bnez       $at, .L80065B2C
/* 66718 80065B18 2401009B */   addiu     $at, $zero, 0x9b
/* 6671C 80065B1C 1201000D */  beq        $s0, $at, .L80065B54
/* 66720 80065B20 00000000 */   nop
/* 66724 80065B24 100000F1 */  b          .L80065EEC
/* 66728 80065B28 00000000 */   nop
.L80065B2C:
/* 6672C 80065B2C 2618FFF1 */  addiu      $t8, $s0, -0xf
/* 66730 80065B30 2F01000C */  sltiu      $at, $t8, 0xc
/* 66734 80065B34 102000ED */  beqz       $at, .L80065EEC
/* 66738 80065B38 00000000 */   nop
/* 6673C 80065B3C 0018C080 */  sll        $t8, $t8, 2
/* 66740 80065B40 3C01800E */  lui        $at, %hi(D_800DE228)
/* 66744 80065B44 00380821 */  addu       $at, $at, $t8
/* 66748 80065B48 8C38E228 */  lw         $t8, %lo(D_800DE228)($at)
/* 6674C 80065B4C 03000008 */  jr         $t8
/* 66750 80065B50 00000000 */   nop
.L80065B54:
/* 66754 80065B54 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66758 80065B58 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6675C 80065B5C 24190001 */  addiu      $t9, $zero, 1
/* 66760 80065B60 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66764 80065B64 24080010 */  addiu      $t0, $zero, 0x10
/* 66768 80065B68 AFB90030 */  sw         $t9, 0x30($sp)
/* 6676C 80065B6C 100000DF */  b          .L80065EEC
/* 66770 80065B70 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
/* 66774 80065B74 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66778 80065B78 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6677C 80065B7C 24090001 */  addiu      $t1, $zero, 1
/* 66780 80065B80 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66784 80065B84 240A0012 */  addiu      $t2, $zero, 0x12
/* 66788 80065B88 AFA90030 */  sw         $t1, 0x30($sp)
/* 6678C 80065B8C 100000D7 */  b          .L80065EEC
/* 66790 80065B90 AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
/* 66794 80065B94 240C0001 */  addiu      $t4, $zero, 1
/* 66798 80065B98 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6679C 80065B9C AC2CF61C */  sw         $t4, %lo(D_8013F61C)($at)
/* 667A0 80065BA0 240B0001 */  addiu      $t3, $zero, 1
/* 667A4 80065BA4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 667A8 80065BA8 240D0014 */  addiu      $t5, $zero, 0x14
/* 667AC 80065BAC AFAB0030 */  sw         $t3, 0x30($sp)
/* 667B0 80065BB0 100000CE */  b          .L80065EEC
/* 667B4 80065BB4 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80065BB8:
/* 667B8 80065BB8 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 667BC 80065BBC 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 667C0 80065BC0 24010003 */  addiu      $at, $zero, 3
/* 667C4 80065BC4 1201008A */  beq        $s0, $at, .L80065DF0
/* 667C8 80065BC8 2401007E */   addiu     $at, $zero, 0x7e
/* 667CC 80065BCC 12010005 */  beq        $s0, $at, .L80065BE4
/* 667D0 80065BD0 2401007F */   addiu     $at, $zero, 0x7f
/* 667D4 80065BD4 12010043 */  beq        $s0, $at, .L80065CE4
/* 667D8 80065BD8 00000000 */   nop
/* 667DC 80065BDC 100000C3 */  b          .L80065EEC
/* 667E0 80065BE0 00000000 */   nop
.L80065BE4:
/* 667E4 80065BE4 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 667E8 80065BE8 3C01800E */  lui        $at, %hi(D_800DE258)
/* 667EC 80065BEC D428E258 */  ldc1       $f8, %lo(D_800DE258)($at)
/* 667F0 80065BF0 460021A1 */  cvt.d.s    $f6, $f4
/* 667F4 80065BF4 4626403C */  c.lt.d     $f8, $f6
/* 667F8 80065BF8 00000000 */  nop
/* 667FC 80065BFC 45000019 */  bc1f       .L80065C64
/* 66800 80065C00 00000000 */   nop
/* 66804 80065C04 8FA9003C */  lw         $t1, 0x3c($sp)
/* 66808 80065C08 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 6680C 80065C0C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 66810 80065C10 00095080 */  sll        $t2, $t1, 2
/* 66814 80065C14 01495023 */  subu       $t2, $t2, $t1
/* 66818 80065C18 000A5080 */  sll        $t2, $t2, 2
/* 6681C 80065C1C 01495023 */  subu       $t2, $t2, $t1
/* 66820 80065C20 000A5080 */  sll        $t2, $t2, 2
/* 66824 80065C24 01495021 */  addu       $t2, $t2, $t1
/* 66828 80065C28 240E0001 */  addiu      $t6, $zero, 1
/* 6682C 80065C2C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66830 80065C30 000A5080 */  sll        $t2, $t2, 2
/* 66834 80065C34 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 66838 80065C38 01495023 */  subu       $t2, $t2, $t1
/* 6683C 80065C3C 240F0001 */  addiu      $t7, $zero, 1
/* 66840 80065C40 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66844 80065C44 2418007F */  addiu      $t8, $zero, 0x7f
/* 66848 80065C48 000A5080 */  sll        $t2, $t2, 2
/* 6684C 80065C4C AFAF0030 */  sw         $t7, 0x30($sp)
/* 66850 80065C50 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 66854 80065C54 24190001 */  addiu      $t9, $zero, 1
/* 66858 80065C58 010A5821 */  addu       $t3, $t0, $t2
/* 6685C 80065C5C 100000A3 */  b          .L80065EEC
/* 66860 80065C60 AD790280 */   sw        $t9, 0x280($t3)
.L80065C64:
/* 66864 80065C64 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 66868 80065C68 3C01800E */  lui        $at, %hi(D_800DE260)
/* 6686C 80065C6C D432E260 */  ldc1       $f18, %lo(D_800DE260)($at)
/* 66870 80065C70 46005421 */  cvt.d.s    $f16, $f10
/* 66874 80065C74 4630903C */  c.lt.d     $f18, $f16
/* 66878 80065C78 00000000 */  nop
/* 6687C 80065C7C 4500009B */  bc1f       .L80065EEC
/* 66880 80065C80 00000000 */   nop
/* 66884 80065C84 8FA9003C */  lw         $t1, 0x3c($sp)
/* 66888 80065C88 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 6688C 80065C8C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 66890 80065C90 00094080 */  sll        $t0, $t1, 2
/* 66894 80065C94 01094023 */  subu       $t0, $t0, $t1
/* 66898 80065C98 00084080 */  sll        $t0, $t0, 2
/* 6689C 80065C9C 01094023 */  subu       $t0, $t0, $t1
/* 668A0 80065CA0 00084080 */  sll        $t0, $t0, 2
/* 668A4 80065CA4 01094021 */  addu       $t0, $t0, $t1
/* 668A8 80065CA8 240D0001 */  addiu      $t5, $zero, 1
/* 668AC 80065CAC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 668B0 80065CB0 00084080 */  sll        $t0, $t0, 2
/* 668B4 80065CB4 AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 668B8 80065CB8 01094023 */  subu       $t0, $t0, $t1
/* 668BC 80065CBC 240C0001 */  addiu      $t4, $zero, 1
/* 668C0 80065CC0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 668C4 80065CC4 240F0003 */  addiu      $t7, $zero, 3
/* 668C8 80065CC8 00084080 */  sll        $t0, $t0, 2
/* 668CC 80065CCC AFAC0030 */  sw         $t4, 0x30($sp)
/* 668D0 80065CD0 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 668D4 80065CD4 240E0001 */  addiu      $t6, $zero, 1
/* 668D8 80065CD8 03085021 */  addu       $t2, $t8, $t0
/* 668DC 80065CDC 10000083 */  b          .L80065EEC
/* 668E0 80065CE0 AD4E0280 */   sw        $t6, 0x280($t2)
.L80065CE4:
/* 668E4 80065CE4 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 668E8 80065CE8 3C01800E */  lui        $at, %hi(D_800DE268)
/* 668EC 80065CEC D428E268 */  ldc1       $f8, %lo(D_800DE268)($at)
/* 668F0 80065CF0 460021A1 */  cvt.d.s    $f6, $f4
/* 668F4 80065CF4 4628303C */  c.lt.d     $f6, $f8
/* 668F8 80065CF8 00000000 */  nop
/* 668FC 80065CFC 45000019 */  bc1f       .L80065D64
/* 66900 80065D00 00000000 */   nop
/* 66904 80065D04 8FA9003C */  lw         $t1, 0x3c($sp)
/* 66908 80065D08 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 6690C 80065D0C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 66910 80065D10 0009C080 */  sll        $t8, $t1, 2
/* 66914 80065D14 0309C023 */  subu       $t8, $t8, $t1
/* 66918 80065D18 0018C080 */  sll        $t8, $t8, 2
/* 6691C 80065D1C 0309C023 */  subu       $t8, $t8, $t1
/* 66920 80065D20 0018C080 */  sll        $t8, $t8, 2
/* 66924 80065D24 0309C021 */  addu       $t8, $t8, $t1
/* 66928 80065D28 240B0001 */  addiu      $t3, $zero, 1
/* 6692C 80065D2C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66930 80065D30 0018C080 */  sll        $t8, $t8, 2
/* 66934 80065D34 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
/* 66938 80065D38 0309C023 */  subu       $t8, $t8, $t1
/* 6693C 80065D3C 24190001 */  addiu      $t9, $zero, 1
/* 66940 80065D40 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66944 80065D44 240C007E */  addiu      $t4, $zero, 0x7e
/* 66948 80065D48 0018C080 */  sll        $t8, $t8, 2
/* 6694C 80065D4C AFB90030 */  sw         $t9, 0x30($sp)
/* 66950 80065D50 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 66954 80065D54 240D0001 */  addiu      $t5, $zero, 1
/* 66958 80065D58 01F84021 */  addu       $t0, $t7, $t8
/* 6695C 80065D5C 10000063 */  b          .L80065EEC
/* 66960 80065D60 AD0D0280 */   sw        $t5, 0x280($t0)
.L80065D64:
/* 66964 80065D64 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 66968 80065D68 3C01800E */  lui        $at, %hi(D_800DE270)
/* 6696C 80065D6C D432E270 */  ldc1       $f18, %lo(D_800DE270)($at)
/* 66970 80065D70 46005421 */  cvt.d.s    $f16, $f10
/* 66974 80065D74 4632803C */  c.lt.d     $f16, $f18
/* 66978 80065D78 00000000 */  nop
/* 6697C 80065D7C 4500005B */  bc1f       .L80065EEC
/* 66980 80065D80 00000000 */   nop
/* 66984 80065D84 8FAF003C */  lw         $t7, 0x3c($sp)
/* 66988 80065D88 240A000C */  addiu      $t2, $zero, 0xc
/* 6698C 80065D8C 3C018014 */  lui        $at, 0x8014
/* 66990 80065D90 000FC080 */  sll        $t8, $t7, 2
/* 66994 80065D94 030FC023 */  subu       $t8, $t8, $t7
/* 66998 80065D98 0018C080 */  sll        $t8, $t8, 2
/* 6699C 80065D9C 030FC023 */  subu       $t8, $t8, $t7
/* 669A0 80065DA0 0018C080 */  sll        $t8, $t8, 2
/* 669A4 80065DA4 AC2AF60C */  sw         $t2, -0x9f4($at)
/* 669A8 80065DA8 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 669AC 80065DAC 030FC021 */  addu       $t8, $t8, $t7
/* 669B0 80065DB0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 669B4 80065DB4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 669B8 80065DB8 24190001 */  addiu      $t9, $zero, 1
/* 669BC 80065DBC 0018C080 */  sll        $t8, $t8, 2
/* 669C0 80065DC0 AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 669C4 80065DC4 030FC023 */  subu       $t8, $t8, $t7
/* 669C8 80065DC8 240E0001 */  addiu      $t6, $zero, 1
/* 669CC 80065DCC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 669D0 80065DD0 240B0003 */  addiu      $t3, $zero, 3
/* 669D4 80065DD4 0018C080 */  sll        $t8, $t8, 2
/* 669D8 80065DD8 AFAE0030 */  sw         $t6, 0x30($sp)
/* 669DC 80065DDC AC2BF610 */  sw         $t3, %lo(D_8013F610)($at)
/* 669E0 80065DE0 240C0001 */  addiu      $t4, $zero, 1
/* 669E4 80065DE4 01386821 */  addu       $t5, $t1, $t8
/* 669E8 80065DE8 10000040 */  b          .L80065EEC
/* 669EC 80065DEC ADAC0280 */   sw        $t4, 0x280($t5)
.L80065DF0:
/* 669F0 80065DF0 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 669F4 80065DF4 3C01800E */  lui        $at, %hi(D_800DE278)
/* 669F8 80065DF8 D428E278 */  ldc1       $f8, %lo(D_800DE278)($at)
/* 669FC 80065DFC 460021A1 */  cvt.d.s    $f6, $f4
/* 66A00 80065E00 4626403C */  c.lt.d     $f8, $f6
/* 66A04 80065E04 00000000 */  nop
/* 66A08 80065E08 45000019 */  bc1f       .L80065E70
/* 66A0C 80065E0C 00000000 */   nop
/* 66A10 80065E10 8FAF003C */  lw         $t7, 0x3c($sp)
/* 66A14 80065E14 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 66A18 80065E18 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 66A1C 80065E1C 000F4880 */  sll        $t1, $t7, 2
/* 66A20 80065E20 012F4823 */  subu       $t1, $t1, $t7
/* 66A24 80065E24 00094880 */  sll        $t1, $t1, 2
/* 66A28 80065E28 012F4823 */  subu       $t1, $t1, $t7
/* 66A2C 80065E2C 00094880 */  sll        $t1, $t1, 2
/* 66A30 80065E30 012F4821 */  addu       $t1, $t1, $t7
/* 66A34 80065E34 240E0001 */  addiu      $t6, $zero, 1
/* 66A38 80065E38 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66A3C 80065E3C 00094880 */  sll        $t1, $t1, 2
/* 66A40 80065E40 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 66A44 80065E44 012F4823 */  subu       $t1, $t1, $t7
/* 66A48 80065E48 24080001 */  addiu      $t0, $zero, 1
/* 66A4C 80065E4C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66A50 80065E50 240A007F */  addiu      $t2, $zero, 0x7f
/* 66A54 80065E54 00094880 */  sll        $t1, $t1, 2
/* 66A58 80065E58 AFA80030 */  sw         $t0, 0x30($sp)
/* 66A5C 80065E5C AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 66A60 80065E60 24190001 */  addiu      $t9, $zero, 1
/* 66A64 80065E64 0169C021 */  addu       $t8, $t3, $t1
/* 66A68 80065E68 10000020 */  b          .L80065EEC
/* 66A6C 80065E6C AF190280 */   sw        $t9, 0x280($t8)
.L80065E70:
/* 66A70 80065E70 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 66A74 80065E74 3C01800E */  lui        $at, %hi(D_800DE280)
/* 66A78 80065E78 D432E280 */  ldc1       $f18, %lo(D_800DE280)($at)
/* 66A7C 80065E7C 46005421 */  cvt.d.s    $f16, $f10
/* 66A80 80065E80 4632803C */  c.lt.d     $f16, $f18
/* 66A84 80065E84 00000000 */  nop
/* 66A88 80065E88 45000018 */  bc1f       .L80065EEC
/* 66A8C 80065E8C 00000000 */   nop
/* 66A90 80065E90 8FAF003C */  lw         $t7, 0x3c($sp)
/* 66A94 80065E94 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 66A98 80065E98 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 66A9C 80065E9C 000F5880 */  sll        $t3, $t7, 2
/* 66AA0 80065EA0 016F5823 */  subu       $t3, $t3, $t7
/* 66AA4 80065EA4 000B5880 */  sll        $t3, $t3, 2
/* 66AA8 80065EA8 016F5823 */  subu       $t3, $t3, $t7
/* 66AAC 80065EAC 000B5880 */  sll        $t3, $t3, 2
/* 66AB0 80065EB0 016F5821 */  addu       $t3, $t3, $t7
/* 66AB4 80065EB4 240D0001 */  addiu      $t5, $zero, 1
/* 66AB8 80065EB8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 66ABC 80065EBC 000B5880 */  sll        $t3, $t3, 2
/* 66AC0 80065EC0 AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 66AC4 80065EC4 016F5823 */  subu       $t3, $t3, $t7
/* 66AC8 80065EC8 240C0001 */  addiu      $t4, $zero, 1
/* 66ACC 80065ECC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 66AD0 80065ED0 2408007E */  addiu      $t0, $zero, 0x7e
/* 66AD4 80065ED4 000B5880 */  sll        $t3, $t3, 2
/* 66AD8 80065ED8 AFAC0030 */  sw         $t4, 0x30($sp)
/* 66ADC 80065EDC AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 66AE0 80065EE0 240E0001 */  addiu      $t6, $zero, 1
/* 66AE4 80065EE4 014B4821 */  addu       $t1, $t2, $t3
/* 66AE8 80065EE8 AD2E0280 */  sw         $t6, 0x280($t1)
.L80065EEC:
/* 66AEC 80065EEC 8FA20030 */  lw         $v0, 0x30($sp)
/* 66AF0 80065EF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 66AF4 80065EF4 8FB00020 */  lw         $s0, 0x20($sp)
/* 66AF8 80065EF8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 66AFC 80065EFC 03E00008 */  jr         $ra
/* 66B00 80065F00 00000000 */   nop

glabel func_80065F04
/* 66B04 80065F04 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 66B08 80065F08 AFBF002C */  sw         $ra, 0x2c($sp)
/* 66B0C 80065F0C AFA40048 */  sw         $a0, 0x48($sp)
/* 66B10 80065F10 AFA5004C */  sw         $a1, 0x4c($sp)
/* 66B14 80065F14 AFB00028 */  sw         $s0, 0x28($sp)
/* 66B18 80065F18 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 66B1C 80065F1C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 66B20 80065F20 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 66B24 80065F24 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 66B28 80065F28 000FC080 */  sll        $t8, $t7, 2
/* 66B2C 80065F2C 030FC023 */  subu       $t8, $t8, $t7
/* 66B30 80065F30 0018C080 */  sll        $t8, $t8, 2
/* 66B34 80065F34 030FC023 */  subu       $t8, $t8, $t7
/* 66B38 80065F38 0018C080 */  sll        $t8, $t8, 2
/* 66B3C 80065F3C 030FC021 */  addu       $t8, $t8, $t7
/* 66B40 80065F40 0018C080 */  sll        $t8, $t8, 2
/* 66B44 80065F44 030FC023 */  subu       $t8, $t8, $t7
/* 66B48 80065F48 0018C080 */  sll        $t8, $t8, 2
/* 66B4C 80065F4C 01D8C821 */  addu       $t9, $t6, $t8
/* 66B50 80065F50 8F28006C */  lw         $t0, 0x6c($t9)
/* 66B54 80065F54 3C018014 */  lui        $at, %hi(D_8013F600)
/* 66B58 80065F58 01E02025 */  or         $a0, $t7, $zero
/* 66B5C 80065F5C AC28F600 */  sw         $t0, %lo(D_8013F600)($at)
/* 66B60 80065F60 C7240290 */  lwc1       $f4, 0x290($t9)
/* 66B64 80065F64 3C018014 */  lui        $at, %hi(D_8013F620)
/* 66B68 80065F68 E424F620 */  swc1       $f4, %lo(D_8013F620)($at)
/* 66B6C 80065F6C C7260294 */  lwc1       $f6, 0x294($t9)
/* 66B70 80065F70 3C018014 */  lui        $at, %hi(D_8013F624)
/* 66B74 80065F74 0C0177F7 */  jal        func_8005DFDC
/* 66B78 80065F78 E426F624 */   swc1      $f6, %lo(D_8013F624)($at)
/* 66B7C 80065F7C 3C098014 */  lui        $t1, %hi(D_8013F600)
/* 66B80 80065F80 8D29F600 */  lw         $t1, %lo(D_8013F600)($t1)
/* 66B84 80065F84 29210032 */  slti       $at, $t1, 0x32
/* 66B88 80065F88 10200A3E */  beqz       $at, .L80068884
/* 66B8C 80065F8C 00000000 */   nop
/* 66B90 80065F90 8FAB0048 */  lw         $t3, 0x48($sp)
/* 66B94 80065F94 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 66B98 80065F98 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 66B9C 80065F9C 000B6080 */  sll        $t4, $t3, 2
/* 66BA0 80065FA0 018B6023 */  subu       $t4, $t4, $t3
/* 66BA4 80065FA4 000C6080 */  sll        $t4, $t4, 2
/* 66BA8 80065FA8 018B6023 */  subu       $t4, $t4, $t3
/* 66BAC 80065FAC 000C6080 */  sll        $t4, $t4, 2
/* 66BB0 80065FB0 018B6021 */  addu       $t4, $t4, $t3
/* 66BB4 80065FB4 000C6080 */  sll        $t4, $t4, 2
/* 66BB8 80065FB8 018B6023 */  subu       $t4, $t4, $t3
/* 66BBC 80065FBC 000C6080 */  sll        $t4, $t4, 2
/* 66BC0 80065FC0 014C6821 */  addu       $t5, $t2, $t4
/* 66BC4 80065FC4 8DAE0064 */  lw         $t6, 0x64($t5)
/* 66BC8 80065FC8 2401000C */  addiu      $at, $zero, 0xc
/* 66BCC 80065FCC 11C10A2D */  beq        $t6, $at, .L80068884
/* 66BD0 80065FD0 24010028 */   addiu     $at, $zero, 0x28
/* 66BD4 80065FD4 11C10A2B */  beq        $t6, $at, .L80068884
/* 66BD8 80065FD8 00000000 */   nop
/* 66BDC 80065FDC 8FA80048 */  lw         $t0, 0x48($sp)
/* 66BE0 80065FE0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 66BE4 80065FE4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 66BE8 80065FE8 0008C880 */  sll        $t9, $t0, 2
/* 66BEC 80065FEC 0328C823 */  subu       $t9, $t9, $t0
/* 66BF0 80065FF0 0019C880 */  sll        $t9, $t9, 2
/* 66BF4 80065FF4 0328C823 */  subu       $t9, $t9, $t0
/* 66BF8 80065FF8 0019C880 */  sll        $t9, $t9, 2
/* 66BFC 80065FFC 0328C821 */  addu       $t9, $t9, $t0
/* 66C00 80066000 0019C880 */  sll        $t9, $t9, 2
/* 66C04 80066004 0328C823 */  subu       $t9, $t9, $t0
/* 66C08 80066008 0019C880 */  sll        $t9, $t9, 2
/* 66C0C 8006600C 03197821 */  addu       $t7, $t8, $t9
/* 66C10 80066010 8DE90060 */  lw         $t1, 0x60($t7)
/* 66C14 80066014 312B0020 */  andi       $t3, $t1, 0x20
/* 66C18 80066018 1160002E */  beqz       $t3, .L800660D4
/* 66C1C 8006601C 00000000 */   nop
/* 66C20 80066020 ADE00288 */  sw         $zero, 0x288($t7)
/* 66C24 80066024 8FAC0048 */  lw         $t4, 0x48($sp)
/* 66C28 80066028 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 66C2C 8006602C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 66C30 80066030 000C6880 */  sll        $t5, $t4, 2
/* 66C34 80066034 01AC6823 */  subu       $t5, $t5, $t4
/* 66C38 80066038 000D6880 */  sll        $t5, $t5, 2
/* 66C3C 8006603C 01AC6823 */  subu       $t5, $t5, $t4
/* 66C40 80066040 000D6880 */  sll        $t5, $t5, 2
/* 66C44 80066044 01AC6821 */  addu       $t5, $t5, $t4
/* 66C48 80066048 000D6880 */  sll        $t5, $t5, 2
/* 66C4C 8006604C 01AC6823 */  subu       $t5, $t5, $t4
/* 66C50 80066050 000D6880 */  sll        $t5, $t5, 2
/* 66C54 80066054 014D7021 */  addu       $t6, $t2, $t5
/* 66C58 80066058 C5C80284 */  lwc1       $f8, 0x284($t6)
/* 66C5C 8006605C 3C014044 */  lui        $at, 0x4044
/* 66C60 80066060 44818800 */  mtc1       $at, $f17
/* 66C64 80066064 44808000 */  mtc1       $zero, $f16
/* 66C68 80066068 460042A1 */  cvt.d.s    $f10, $f8
/* 66C6C 8006606C 4630503C */  c.lt.d     $f10, $f16
/* 66C70 80066070 00000000 */  nop
/* 66C74 80066074 45000005 */  bc1f       .L8006608C
/* 66C78 80066078 3C01800E */   lui       $at, %hi(D_800DE288)
/* 66C7C 8006607C D432E288 */  ldc1       $f18, %lo(D_800DE288)($at)
/* 66C80 80066080 46325102 */  mul.d      $f4, $f10, $f18
/* 66C84 80066084 462021A0 */  cvt.s.d    $f6, $f4
/* 66C88 80066088 E5C60284 */  swc1       $f6, 0x284($t6)
.L8006608C:
/* 66C8C 8006608C 8FB80048 */  lw         $t8, 0x48($sp)
/* 66C90 80066090 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 66C94 80066094 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 66C98 80066098 0018C880 */  sll        $t9, $t8, 2
/* 66C9C 8006609C 0338C823 */  subu       $t9, $t9, $t8
/* 66CA0 800660A0 0019C880 */  sll        $t9, $t9, 2
/* 66CA4 800660A4 0338C823 */  subu       $t9, $t9, $t8
/* 66CA8 800660A8 0019C880 */  sll        $t9, $t9, 2
/* 66CAC 800660AC 0338C821 */  addu       $t9, $t9, $t8
/* 66CB0 800660B0 0019C880 */  sll        $t9, $t9, 2
/* 66CB4 800660B4 0338C823 */  subu       $t9, $t9, $t8
/* 66CB8 800660B8 0019C880 */  sll        $t9, $t9, 2
/* 66CBC 800660BC 01194821 */  addu       $t1, $t0, $t9
/* 66CC0 800660C0 8D2B0060 */  lw         $t3, 0x60($t1)
/* 66CC4 800660C4 2401FFDF */  addiu      $at, $zero, -0x21
/* 66CC8 800660C8 01617824 */  and        $t7, $t3, $at
/* 66CCC 800660CC 10000067 */  b          .L8006626C
/* 66CD0 800660D0 AD2F0060 */   sw        $t7, 0x60($t1)
.L800660D4:
/* 66CD4 800660D4 8FAA0048 */  lw         $t2, 0x48($sp)
/* 66CD8 800660D8 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 66CDC 800660DC 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 66CE0 800660E0 000A6880 */  sll        $t5, $t2, 2
/* 66CE4 800660E4 01AA6823 */  subu       $t5, $t5, $t2
/* 66CE8 800660E8 000D6880 */  sll        $t5, $t5, 2
/* 66CEC 800660EC 01AA6823 */  subu       $t5, $t5, $t2
/* 66CF0 800660F0 000D6880 */  sll        $t5, $t5, 2
/* 66CF4 800660F4 01AA6821 */  addu       $t5, $t5, $t2
/* 66CF8 800660F8 000D6880 */  sll        $t5, $t5, 2
/* 66CFC 800660FC 01AA6823 */  subu       $t5, $t5, $t2
/* 66D00 80066100 000D6880 */  sll        $t5, $t5, 2
/* 66D04 80066104 018D7021 */  addu       $t6, $t4, $t5
/* 66D08 80066108 C5C80284 */  lwc1       $f8, 0x284($t6)
/* 66D0C 8006610C 3C01800E */  lui        $at, %hi(D_800DE290)
/* 66D10 80066110 D42AE290 */  ldc1       $f10, %lo(D_800DE290)($at)
/* 66D14 80066114 46004421 */  cvt.d.s    $f16, $f8
/* 66D18 80066118 4630503C */  c.lt.d     $f10, $f16
/* 66D1C 8006611C 00000000 */  nop
/* 66D20 80066120 45000052 */  bc1f       .L8006626C
/* 66D24 80066124 00000000 */   nop
/* 66D28 80066128 E7A8003C */  swc1       $f8, 0x3c($sp)
/* 66D2C 8006612C C5D20284 */  lwc1       $f18, 0x284($t6)
/* 66D30 80066130 3C01800E */  lui        $at, %hi(D_800DE298)
/* 66D34 80066134 D426E298 */  ldc1       $f6, %lo(D_800DE298)($at)
/* 66D38 80066138 46009121 */  cvt.d.s    $f4, $f18
/* 66D3C 8006613C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 66D40 80066140 46262402 */  mul.d      $f16, $f4, $f6
/* 66D44 80066144 462082A0 */  cvt.s.d    $f10, $f16
/* 66D48 80066148 E5CA0284 */  swc1       $f10, 0x284($t6)
/* 66D4C 8006614C 8FA80048 */  lw         $t0, 0x48($sp)
/* 66D50 80066150 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 66D54 80066154 0008C880 */  sll        $t9, $t0, 2
/* 66D58 80066158 0328C823 */  subu       $t9, $t9, $t0
/* 66D5C 8006615C 0019C880 */  sll        $t9, $t9, 2
/* 66D60 80066160 0328C823 */  subu       $t9, $t9, $t0
/* 66D64 80066164 0019C880 */  sll        $t9, $t9, 2
/* 66D68 80066168 0328C821 */  addu       $t9, $t9, $t0
/* 66D6C 8006616C 0019C880 */  sll        $t9, $t9, 2
/* 66D70 80066170 0328C823 */  subu       $t9, $t9, $t0
/* 66D74 80066174 0019C880 */  sll        $t9, $t9, 2
/* 66D78 80066178 03195821 */  addu       $t3, $t8, $t9
/* 66D7C 8006617C 8D6F0060 */  lw         $t7, 0x60($t3)
/* 66D80 80066180 31E90040 */  andi       $t1, $t7, 0x40
/* 66D84 80066184 11200008 */  beqz       $t1, .L800661A8
/* 66D88 80066188 00000000 */   nop
/* 66D8C 8006618C C5680284 */  lwc1       $f8, 0x284($t3)
/* 66D90 80066190 3C01800E */  lui        $at, %hi(D_800DE2A0)
/* 66D94 80066194 D424E2A0 */  ldc1       $f4, %lo(D_800DE2A0)($at)
/* 66D98 80066198 460044A1 */  cvt.d.s    $f18, $f8
/* 66D9C 8006619C 46249182 */  mul.d      $f6, $f18, $f4
/* 66DA0 800661A0 46203420 */  cvt.s.d    $f16, $f6
/* 66DA4 800661A4 E5700284 */  swc1       $f16, 0x284($t3)
.L800661A8:
/* 66DA8 800661A8 8FAC0048 */  lw         $t4, 0x48($sp)
/* 66DAC 800661AC 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 66DB0 800661B0 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 66DB4 800661B4 000C6880 */  sll        $t5, $t4, 2
/* 66DB8 800661B8 01AC6823 */  subu       $t5, $t5, $t4
/* 66DBC 800661BC 000D6880 */  sll        $t5, $t5, 2
/* 66DC0 800661C0 01AC6823 */  subu       $t5, $t5, $t4
/* 66DC4 800661C4 000D6880 */  sll        $t5, $t5, 2
/* 66DC8 800661C8 01AC6821 */  addu       $t5, $t5, $t4
/* 66DCC 800661CC 000D6880 */  sll        $t5, $t5, 2
/* 66DD0 800661D0 01AC6823 */  subu       $t5, $t5, $t4
/* 66DD4 800661D4 000D6880 */  sll        $t5, $t5, 2
/* 66DD8 800661D8 3C014000 */  lui        $at, 0x4000
/* 66DDC 800661DC 014D7021 */  addu       $t6, $t2, $t5
/* 66DE0 800661E0 C5CA0284 */  lwc1       $f10, 0x284($t6)
/* 66DE4 800661E4 44814000 */  mtc1       $at, $f8
/* 66DE8 800661E8 00000000 */  nop
/* 66DEC 800661EC 4608503E */  c.le.s     $f10, $f8
/* 66DF0 800661F0 00000000 */  nop
/* 66DF4 800661F4 4500001D */  bc1f       .L8006626C
/* 66DF8 800661F8 3C014000 */   lui       $at, 0x4000
/* 66DFC 800661FC 44812000 */  mtc1       $at, $f4
/* 66E00 80066200 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* 66E04 80066204 4612203C */  c.lt.s     $f4, $f18
/* 66E08 80066208 00000000 */  nop
/* 66E0C 8006620C 45000017 */  bc1f       .L8006626C
/* 66E10 80066210 00000000 */   nop
/* 66E14 80066214 8DC8006C */  lw         $t0, 0x6c($t6)
/* 66E18 80066218 2518FFFC */  addiu      $t8, $t0, -4
/* 66E1C 8006621C 2F010018 */  sltiu      $at, $t8, 0x18
/* 66E20 80066220 10200012 */  beqz       $at, .L8006626C
/* 66E24 80066224 00000000 */   nop
/* 66E28 80066228 0018C080 */  sll        $t8, $t8, 2
/* 66E2C 8006622C 3C01800E */  lui        $at, %hi(D_800DE2A8)
/* 66E30 80066230 00380821 */  addu       $at, $at, $t8
/* 66E34 80066234 8C38E2A8 */  lw         $t8, %lo(D_800DE2A8)($at)
/* 66E38 80066238 03000008 */  jr         $t8
/* 66E3C 8006623C 00000000 */   nop
/* 66E40 80066240 3C19801C */  lui        $t9, %hi(D_801C5D40)
/* 66E44 80066244 27395D40 */  addiu      $t9, $t9, %lo(D_801C5D40)
/* 66E48 80066248 8F240244 */  lw         $a0, 0x244($t9)
/* 66E4C 8006624C 240F00A0 */  addiu      $t7, $zero, 0xa0
/* 66E50 80066250 24090050 */  addiu      $t1, $zero, 0x50
/* 66E54 80066254 AFA90014 */  sw         $t1, 0x14($sp)
/* 66E58 80066258 AFAF0010 */  sw         $t7, 0x10($sp)
/* 66E5C 8006625C 3C054000 */  lui        $a1, 0x4000
/* 66E60 80066260 24060030 */  addiu      $a2, $zero, 0x30
/* 66E64 80066264 0C0209BC */  jal        func_800826F0
/* 66E68 80066268 2407FFFF */   addiu     $a3, $zero, -1
.L8006626C:
/* 66E6C 8006626C 8FAB0048 */  lw         $t3, 0x48($sp)
/* 66E70 80066270 1560009E */  bnez       $t3, .L800664EC
/* 66E74 80066274 00000000 */   nop
/* 66E78 80066278 000B5080 */  sll        $t2, $t3, 2
/* 66E7C 8006627C 014B5023 */  subu       $t2, $t2, $t3
/* 66E80 80066280 000A5080 */  sll        $t2, $t2, 2
/* 66E84 80066284 014B5023 */  subu       $t2, $t2, $t3
/* 66E88 80066288 000A5080 */  sll        $t2, $t2, 2
/* 66E8C 8006628C 014B5021 */  addu       $t2, $t2, $t3
/* 66E90 80066290 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 66E94 80066294 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 66E98 80066298 000A5080 */  sll        $t2, $t2, 2
/* 66E9C 8006629C 014B5023 */  subu       $t2, $t2, $t3
/* 66EA0 800662A0 000A5080 */  sll        $t2, $t2, 2
/* 66EA4 800662A4 018A6821 */  addu       $t5, $t4, $t2
/* 66EA8 800662A8 8DAE0060 */  lw         $t6, 0x60($t5)
/* 66EAC 800662AC 31C80008 */  andi       $t0, $t6, 8
/* 66EB0 800662B0 1100008E */  beqz       $t0, .L800664EC
/* 66EB4 800662B4 00000000 */   nop
/* 66EB8 800662B8 8DB80274 */  lw         $t8, 0x274($t5)
/* 66EBC 800662BC 24010035 */  addiu      $at, $zero, 0x35
/* 66EC0 800662C0 1301008A */  beq        $t8, $at, .L800664EC
/* 66EC4 800662C4 00000000 */   nop
/* 66EC8 800662C8 8DB90268 */  lw         $t9, 0x268($t5)
/* 66ECC 800662CC 24010001 */  addiu      $at, $zero, 1
/* 66ED0 800662D0 17210086 */  bne        $t9, $at, .L800664EC
/* 66ED4 800662D4 00000000 */   nop
/* 66ED8 800662D8 8DAF0270 */  lw         $t7, 0x270($t5)
/* 66EDC 800662DC 24010004 */  addiu      $at, $zero, 4
/* 66EE0 800662E0 11E10082 */  beq        $t7, $at, .L800664EC
/* 66EE4 800662E4 00000000 */   nop
/* 66EE8 800662E8 24090001 */  addiu      $t1, $zero, 1
/* 66EEC 800662EC ADA90280 */  sw         $t1, 0x280($t5)
/* 66EF0 800662F0 8FAA0048 */  lw         $t2, 0x48($sp)
/* 66EF4 800662F4 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 66EF8 800662F8 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 66EFC 800662FC 000A7080 */  sll        $t6, $t2, 2
/* 66F00 80066300 01CA7023 */  subu       $t6, $t6, $t2
/* 66F04 80066304 000E7080 */  sll        $t6, $t6, 2
/* 66F08 80066308 01CA7023 */  subu       $t6, $t6, $t2
/* 66F0C 8006630C 000E7080 */  sll        $t6, $t6, 2
/* 66F10 80066310 01CA7021 */  addu       $t6, $t6, $t2
/* 66F14 80066314 000E7080 */  sll        $t6, $t6, 2
/* 66F18 80066318 01CA7023 */  subu       $t6, $t6, $t2
/* 66F1C 8006631C 000E7080 */  sll        $t6, $t6, 2
/* 66F20 80066320 240B0005 */  addiu      $t3, $zero, 5
/* 66F24 80066324 018E4021 */  addu       $t0, $t4, $t6
/* 66F28 80066328 AD0B0270 */  sw         $t3, 0x270($t0)
/* 66F2C 8006632C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 66F30 80066330 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 66F34 80066334 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 66F38 80066338 000F4880 */  sll        $t1, $t7, 2
/* 66F3C 8006633C 012F4823 */  subu       $t1, $t1, $t7
/* 66F40 80066340 00094880 */  sll        $t1, $t1, 2
/* 66F44 80066344 012F4823 */  subu       $t1, $t1, $t7
/* 66F48 80066348 00094880 */  sll        $t1, $t1, 2
/* 66F4C 8006634C 012F4821 */  addu       $t1, $t1, $t7
/* 66F50 80066350 00094880 */  sll        $t1, $t1, 2
/* 66F54 80066354 012F4823 */  subu       $t1, $t1, $t7
/* 66F58 80066358 00094880 */  sll        $t1, $t1, 2
/* 66F5C 8006635C 24180034 */  addiu      $t8, $zero, 0x34
/* 66F60 80066360 03296821 */  addu       $t5, $t9, $t1
/* 66F64 80066364 ADB80274 */  sw         $t8, 0x274($t5)
/* 66F68 80066368 8FAE0048 */  lw         $t6, 0x48($sp)
/* 66F6C 8006636C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 66F70 80066370 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 66F74 80066374 000E5880 */  sll        $t3, $t6, 2
/* 66F78 80066378 016E5823 */  subu       $t3, $t3, $t6
/* 66F7C 8006637C 000B5880 */  sll        $t3, $t3, 2
/* 66F80 80066380 016E5823 */  subu       $t3, $t3, $t6
/* 66F84 80066384 000B5880 */  sll        $t3, $t3, 2
/* 66F88 80066388 016E5821 */  addu       $t3, $t3, $t6
/* 66F8C 8006638C 000B5880 */  sll        $t3, $t3, 2
/* 66F90 80066390 016E5823 */  subu       $t3, $t3, $t6
/* 66F94 80066394 000B5880 */  sll        $t3, $t3, 2
/* 66F98 80066398 240A0014 */  addiu      $t2, $zero, 0x14
/* 66F9C 8006639C 018B4021 */  addu       $t0, $t4, $t3
/* 66FA0 800663A0 AD0A0278 */  sw         $t2, 0x278($t0)
/* 66FA4 800663A4 8FB90048 */  lw         $t9, 0x48($sp)
/* 66FA8 800663A8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 66FAC 800663AC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 66FB0 800663B0 00194880 */  sll        $t1, $t9, 2
/* 66FB4 800663B4 01394823 */  subu       $t1, $t1, $t9
/* 66FB8 800663B8 00094880 */  sll        $t1, $t1, 2
/* 66FBC 800663BC 01394823 */  subu       $t1, $t1, $t9
/* 66FC0 800663C0 00094880 */  sll        $t1, $t1, 2
/* 66FC4 800663C4 01394821 */  addu       $t1, $t1, $t9
/* 66FC8 800663C8 00094880 */  sll        $t1, $t1, 2
/* 66FCC 800663CC 01394823 */  subu       $t1, $t1, $t9
/* 66FD0 800663D0 00094880 */  sll        $t1, $t1, 2
/* 66FD4 800663D4 01E9C021 */  addu       $t8, $t7, $t1
/* 66FD8 800663D8 AF000060 */  sw         $zero, 0x60($t8)
/* 66FDC 800663DC 8FAE0048 */  lw         $t6, 0x48($sp)
/* 66FE0 800663E0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 66FE4 800663E4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 66FE8 800663E8 000E6080 */  sll        $t4, $t6, 2
/* 66FEC 800663EC 018E6023 */  subu       $t4, $t4, $t6
/* 66FF0 800663F0 000C6080 */  sll        $t4, $t4, 2
/* 66FF4 800663F4 018E6023 */  subu       $t4, $t4, $t6
/* 66FF8 800663F8 000C6080 */  sll        $t4, $t4, 2
/* 66FFC 800663FC 018E6021 */  addu       $t4, $t4, $t6
/* 67000 80066400 000C6080 */  sll        $t4, $t4, 2
/* 67004 80066404 018E6023 */  subu       $t4, $t4, $t6
/* 67008 80066408 000C6080 */  sll        $t4, $t4, 2
/* 6700C 8006640C 3C01800E */  lui        $at, %hi(D_800DE308)
/* 67010 80066410 01AC5821 */  addu       $t3, $t5, $t4
/* 67014 80066414 C56E00F0 */  lwc1       $f14, 0xf0($t3)
/* 67018 80066418 0C016AAC */  jal        func_8005AAB0
/* 6701C 8006641C C42CE308 */   lwc1      $f12, %lo(D_800DE308)($at)
/* 67020 80066420 8FA80048 */  lw         $t0, 0x48($sp)
/* 67024 80066424 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 67028 80066428 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 6702C 8006642C 0008C880 */  sll        $t9, $t0, 2
/* 67030 80066430 0328C823 */  subu       $t9, $t9, $t0
/* 67034 80066434 0019C880 */  sll        $t9, $t9, 2
/* 67038 80066438 0328C823 */  subu       $t9, $t9, $t0
/* 6703C 8006643C 0019C880 */  sll        $t9, $t9, 2
/* 67040 80066440 0328C821 */  addu       $t9, $t9, $t0
/* 67044 80066444 0019C880 */  sll        $t9, $t9, 2
/* 67048 80066448 0328C823 */  subu       $t9, $t9, $t0
/* 6704C 8006644C 0019C880 */  sll        $t9, $t9, 2
/* 67050 80066450 01597821 */  addu       $t7, $t2, $t9
/* 67054 80066454 C5E600F4 */  lwc1       $f6, 0xf4($t7)
/* 67058 80066458 46000506 */  mov.s      $f20, $f0
/* 6705C 8006645C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 67060 80066460 46143400 */  add.s      $f16, $f6, $f20
/* 67064 80066464 E5F000F4 */  swc1       $f16, 0xf4($t7)
/* 67068 80066468 8FB80048 */  lw         $t8, 0x48($sp)
/* 6706C 8006646C 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 67070 80066470 00187080 */  sll        $t6, $t8, 2
/* 67074 80066474 01D87023 */  subu       $t6, $t6, $t8
/* 67078 80066478 000E7080 */  sll        $t6, $t6, 2
/* 6707C 8006647C 01D87023 */  subu       $t6, $t6, $t8
/* 67080 80066480 000E7080 */  sll        $t6, $t6, 2
/* 67084 80066484 01D87021 */  addu       $t6, $t6, $t8
/* 67088 80066488 000E7080 */  sll        $t6, $t6, 2
/* 6708C 8006648C 01D87023 */  subu       $t6, $t6, $t8
/* 67090 80066490 000E7080 */  sll        $t6, $t6, 2
/* 67094 80066494 012E6821 */  addu       $t5, $t1, $t6
/* 67098 80066498 8DAC0014 */  lw         $t4, 0x14($t5)
/* 6709C 8006649C 05800013 */  bltz       $t4, .L800664EC
/* 670A0 800664A0 00000000 */   nop
/* 670A4 800664A4 01802025 */  or         $a0, $t4, $zero
/* 670A8 800664A8 0C00B32F */  jal        func_8002CCBC
/* 670AC 800664AC 00002825 */   or        $a1, $zero, $zero
/* 670B0 800664B0 8FAA0048 */  lw         $t2, 0x48($sp)
/* 670B4 800664B4 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 670B8 800664B8 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 670BC 800664BC 000AC880 */  sll        $t9, $t2, 2
/* 670C0 800664C0 032AC823 */  subu       $t9, $t9, $t2
/* 670C4 800664C4 0019C880 */  sll        $t9, $t9, 2
/* 670C8 800664C8 032AC823 */  subu       $t9, $t9, $t2
/* 670CC 800664CC 0019C880 */  sll        $t9, $t9, 2
/* 670D0 800664D0 032AC821 */  addu       $t9, $t9, $t2
/* 670D4 800664D4 0019C880 */  sll        $t9, $t9, 2
/* 670D8 800664D8 032AC823 */  subu       $t9, $t9, $t2
/* 670DC 800664DC 0019C880 */  sll        $t9, $t9, 2
/* 670E0 800664E0 240BFFFF */  addiu      $t3, $zero, -1
/* 670E4 800664E4 01197821 */  addu       $t7, $t0, $t9
/* 670E8 800664E8 ADEB0014 */  sw         $t3, 0x14($t7)
.L800664EC:
/* 670EC 800664EC 8FAE0048 */  lw         $t6, 0x48($sp)
/* 670F0 800664F0 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 670F4 800664F4 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 670F8 800664F8 000E6880 */  sll        $t5, $t6, 2
/* 670FC 800664FC 01AE6823 */  subu       $t5, $t5, $t6
/* 67100 80066500 000D6880 */  sll        $t5, $t5, 2
/* 67104 80066504 01AE6823 */  subu       $t5, $t5, $t6
/* 67108 80066508 000D6880 */  sll        $t5, $t5, 2
/* 6710C 8006650C 01AE6821 */  addu       $t5, $t5, $t6
/* 67110 80066510 000D6880 */  sll        $t5, $t5, 2
/* 67114 80066514 01AE6823 */  subu       $t5, $t5, $t6
/* 67118 80066518 2418FFFF */  addiu      $t8, $zero, -1
/* 6711C 8006651C 3C018014 */  lui        $at, %hi(D_8013F614)
/* 67120 80066520 000D6880 */  sll        $t5, $t5, 2
/* 67124 80066524 AC38F614 */  sw         $t8, %lo(D_8013F614)($at)
/* 67128 80066528 012D6021 */  addu       $t4, $t1, $t5
/* 6712C 8006652C 8D8A0014 */  lw         $t2, 0x14($t4)
/* 67130 80066530 3C018014 */  lui        $at, %hi(D_8013F62C)
/* 67134 80066534 01C02025 */  or         $a0, $t6, $zero
/* 67138 80066538 AC2AF62C */  sw         $t2, %lo(D_8013F62C)($at)
/* 6713C 8006653C 858800C0 */  lh         $t0, 0xc0($t4)
/* 67140 80066540 3C018014 */  lui        $at, %hi(D_8013F630)
/* 67144 80066544 AC28F630 */  sw         $t0, %lo(D_8013F630)($at)
/* 67148 80066548 8D990270 */  lw         $t9, 0x270($t4)
/* 6714C 8006654C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 67150 80066550 AC39F608 */  sw         $t9, %lo(D_8013F608)($at)
/* 67154 80066554 8D8B0274 */  lw         $t3, 0x274($t4)
/* 67158 80066558 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6715C 8006655C AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 67160 80066560 8D8F0278 */  lw         $t7, 0x278($t4)
/* 67164 80066564 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67168 80066568 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 6716C 8006656C 8D980078 */  lw         $t8, 0x78($t4)
/* 67170 80066570 3C018014 */  lui        $at, %hi(D_8013F628)
/* 67174 80066574 AC38F628 */  sw         $t8, %lo(D_8013F628)($at)
/* 67178 80066578 8D890268 */  lw         $t1, 0x268($t4)
/* 6717C 8006657C 3C018014 */  lui        $at, %hi(D_8013F604)
/* 67180 80066580 AC29F604 */  sw         $t1, %lo(D_8013F604)($at)
/* 67184 80066584 C58A00E0 */  lwc1       $f10, 0xe0($t4)
/* 67188 80066588 3C018014 */  lui        $at, %hi(D_8013F634)
/* 6718C 8006658C E42AF634 */  swc1       $f10, %lo(D_8013F634)($at)
/* 67190 80066590 C58800E4 */  lwc1       $f8, 0xe4($t4)
/* 67194 80066594 3C018014 */  lui        $at, %hi(D_8013F638)
/* 67198 80066598 E428F638 */  swc1       $f8, %lo(D_8013F638)($at)
/* 6719C 8006659C C59200E8 */  lwc1       $f18, 0xe8($t4)
/* 671A0 800665A0 3C018014 */  lui        $at, %hi(D_8013F63C)
/* 671A4 800665A4 E432F63C */  swc1       $f18, %lo(D_8013F63C)($at)
/* 671A8 800665A8 C58400D4 */  lwc1       $f4, 0xd4($t4)
/* 671AC 800665AC 3C018014 */  lui        $at, %hi(D_8013F640)
/* 671B0 800665B0 E424F640 */  swc1       $f4, %lo(D_8013F640)($at)
/* 671B4 800665B4 C58600D8 */  lwc1       $f6, 0xd8($t4)
/* 671B8 800665B8 3C018014 */  lui        $at, %hi(D_8013F644)
/* 671BC 800665BC E426F644 */  swc1       $f6, %lo(D_8013F644)($at)
/* 671C0 800665C0 C59000DC */  lwc1       $f16, 0xdc($t4)
/* 671C4 800665C4 3C018014 */  lui        $at, %hi(D_8013F648)
/* 671C8 800665C8 E430F648 */  swc1       $f16, %lo(D_8013F648)($at)
/* 671CC 800665CC C58A0104 */  lwc1       $f10, 0x104($t4)
/* 671D0 800665D0 3C018014 */  lui        $at, %hi(D_8013F658)
/* 671D4 800665D4 E42AF658 */  swc1       $f10, %lo(D_8013F658)($at)
/* 671D8 800665D8 C5880108 */  lwc1       $f8, 0x108($t4)
/* 671DC 800665DC 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 671E0 800665E0 E428F64C */  swc1       $f8, %lo(D_8013F64C)($at)
/* 671E4 800665E4 C5920118 */  lwc1       $f18, 0x118($t4)
/* 671E8 800665E8 3C018014 */  lui        $at, %hi(D_8013F650)
/* 671EC 800665EC E432F650 */  swc1       $f18, %lo(D_8013F650)($at)
/* 671F0 800665F0 C58400F4 */  lwc1       $f4, 0xf4($t4)
/* 671F4 800665F4 3C018014 */  lui        $at, %hi(D_8013F654)
/* 671F8 800665F8 0C0555DD */  jal        func_80155774
/* 671FC 800665FC E424F654 */   swc1      $f4, %lo(D_8013F654)($at)
/* 67200 80066600 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 67204 80066604 E420F65C */  swc1       $f0, %lo(D_8013F65C)($at)
/* 67208 80066608 0C0554E7 */  jal        func_8015539C
/* 6720C 8006660C 8FA40048 */   lw        $a0, 0x48($sp)
/* 67210 80066610 8FAA0048 */  lw         $t2, 0x48($sp)
/* 67214 80066614 3C018014 */  lui        $at, %hi(D_8013F660)
/* 67218 80066618 E420F660 */  swc1       $f0, %lo(D_8013F660)($at)
/* 6721C 8006661C C426F660 */  lwc1       $f6, -0x9a0($at)
/* 67220 80066620 000A4080 */  sll        $t0, $t2, 2
/* 67224 80066624 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 67228 80066628 010A4023 */  subu       $t0, $t0, $t2
/* 6722C 8006662C C430F65C */  lwc1       $f16, %lo(D_8013F65C)($at)
/* 67230 80066630 00084080 */  sll        $t0, $t0, 2
/* 67234 80066634 010A4023 */  subu       $t0, $t0, $t2
/* 67238 80066638 00084080 */  sll        $t0, $t0, 2
/* 6723C 8006663C 46103281 */  sub.s      $f10, $f6, $f16
/* 67240 80066640 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 67244 80066644 010A4021 */  addu       $t0, $t0, $t2
/* 67248 80066648 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 6724C 8006664C 00084080 */  sll        $t0, $t0, 2
/* 67250 80066650 010A4023 */  subu       $t0, $t0, $t2
/* 67254 80066654 3C018014 */  lui        $at, %hi(D_8013F664)
/* 67258 80066658 00084080 */  sll        $t0, $t0, 2
/* 6725C 8006665C E42AF664 */  swc1       $f10, %lo(D_8013F664)($at)
/* 67260 80066660 01A8C821 */  addu       $t9, $t5, $t0
/* 67264 80066664 C72800E4 */  lwc1       $f8, 0xe4($t9)
/* 67268 80066668 3C018014 */  lui        $at, %hi(D_8013F668)
/* 6726C 8006666C 01402025 */  or         $a0, $t2, $zero
/* 67270 80066670 46083481 */  sub.s      $f18, $f6, $f8
/* 67274 80066674 0C055418 */  jal        func_80155060
/* 67278 80066678 E432F668 */   swc1      $f18, %lo(D_8013F668)($at)
/* 6727C 8006667C 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* 67280 80066680 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* 67284 80066684 8FAB0048 */  lw         $t3, 0x48($sp)
/* 67288 80066688 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 6728C 8006668C E420F66C */  swc1       $f0, %lo(D_8013F66C)($at)
/* 67290 80066690 156F0013 */  bne        $t3, $t7, .L800666E0
/* 67294 80066694 00000000 */   nop
/* 67298 80066698 000B4880 */  sll        $t1, $t3, 2
/* 6729C 8006669C 012B4823 */  subu       $t1, $t1, $t3
/* 672A0 800666A0 00094880 */  sll        $t1, $t1, 2
/* 672A4 800666A4 012B4823 */  subu       $t1, $t1, $t3
/* 672A8 800666A8 00094880 */  sll        $t1, $t1, 2
/* 672AC 800666AC 012B4821 */  addu       $t1, $t1, $t3
/* 672B0 800666B0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 672B4 800666B4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 672B8 800666B8 00094880 */  sll        $t1, $t1, 2
/* 672BC 800666BC 012B4823 */  subu       $t1, $t1, $t3
/* 672C0 800666C0 00094880 */  sll        $t1, $t1, 2
/* 672C4 800666C4 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 672C8 800666C8 03096021 */  addu       $t4, $t8, $t1
/* 672CC 800666CC C58400E4 */  lwc1       $f4, 0xe4($t4)
/* 672D0 800666D0 C430F65C */  lwc1       $f16, %lo(D_8013F65C)($at)
/* 672D4 800666D4 3C01800D */  lui        $at, %hi(D_800D7D6C)
/* 672D8 800666D8 46102281 */  sub.s      $f10, $f4, $f16
/* 672DC 800666DC E42A7D6C */  swc1       $f10, %lo(D_800D7D6C)($at)
.L800666E0:
/* 672E0 800666E0 8FAD0048 */  lw         $t5, 0x48($sp)
/* 672E4 800666E4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 672E8 800666E8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 672EC 800666EC 000D4080 */  sll        $t0, $t5, 2
/* 672F0 800666F0 010D4023 */  subu       $t0, $t0, $t5
/* 672F4 800666F4 00084080 */  sll        $t0, $t0, 2
/* 672F8 800666F8 010D4023 */  subu       $t0, $t0, $t5
/* 672FC 800666FC 00084080 */  sll        $t0, $t0, 2
/* 67300 80066700 010D4021 */  addu       $t0, $t0, $t5
/* 67304 80066704 00084080 */  sll        $t0, $t0, 2
/* 67308 80066708 010D4023 */  subu       $t0, $t0, $t5
/* 6730C 8006670C 00084080 */  sll        $t0, $t0, 2
/* 67310 80066710 01C8C821 */  addu       $t9, $t6, $t0
/* 67314 80066714 8F2A0060 */  lw         $t2, 0x60($t9)
/* 67318 80066718 314F0008 */  andi       $t7, $t2, 8
/* 6731C 8006671C 11E00028 */  beqz       $t7, .L800667C0
/* 67320 80066720 00000000 */   nop
/* 67324 80066724 872B00BC */  lh         $t3, 0xbc($t9)
/* 67328 80066728 11600027 */  beqz       $t3, .L800667C8
/* 6732C 8006672C AFAB0040 */   sw        $t3, 0x40($sp)
/* 67330 80066730 3C188014 */  lui        $t8, %hi(D_8013F604)
/* 67334 80066734 8F18F604 */  lw         $t8, %lo(D_8013F604)($t8)
/* 67338 80066738 1300000E */  beqz       $t8, .L80066774
/* 6733C 8006673C 00000000 */   nop
/* 67340 80066740 3C098014 */  lui        $t1, %hi(D_8013F610)
/* 67344 80066744 8D29F610 */  lw         $t1, %lo(D_8013F610)($t1)
/* 67348 80066748 24010023 */  addiu      $at, $zero, 0x23
/* 6734C 8006674C 11210003 */  beq        $t1, $at, .L8006675C
/* 67350 80066750 240100CE */   addiu     $at, $zero, 0xce
/* 67354 80066754 15210013 */  bne        $t1, $at, .L800667A4
/* 67358 80066758 00000000 */   nop
.L8006675C:
/* 6735C 8006675C 240C00D0 */  addiu      $t4, $zero, 0xd0
/* 67360 80066760 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67364 80066764 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 67368 80066768 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6736C 8006676C 1000000D */  b          .L800667A4
/* 67370 80066770 AC20F61C */   sw        $zero, %lo(D_8013F61C)($at)
.L80066774:
/* 67374 80066774 3C0D8014 */  lui        $t5, %hi(D_8013F610)
/* 67378 80066778 8DADF610 */  lw         $t5, %lo(D_8013F610)($t5)
/* 6737C 8006677C 24010065 */  addiu      $at, $zero, 0x65
/* 67380 80066780 11A10003 */  beq        $t5, $at, .L80066790
/* 67384 80066784 24010066 */   addiu     $at, $zero, 0x66
/* 67388 80066788 15A10006 */  bne        $t5, $at, .L800667A4
/* 6738C 8006678C 00000000 */   nop
.L80066790:
/* 67390 80066790 240E0067 */  addiu      $t6, $zero, 0x67
/* 67394 80066794 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67398 80066798 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 6739C 8006679C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 673A0 800667A0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
.L800667A4:
/* 673A4 800667A4 8FA40048 */  lw         $a0, 0x48($sp)
/* 673A8 800667A8 0C017B56 */  jal        func_8005ED58
/* 673AC 800667AC 8FA5004C */   lw        $a1, 0x4c($sp)
/* 673B0 800667B0 10400005 */  beqz       $v0, .L800667C8
/* 673B4 800667B4 00000000 */   nop
/* 673B8 800667B8 10000832 */  b          .L80068884
/* 673BC 800667BC 00000000 */   nop
.L800667C0:
/* 673C0 800667C0 24080001 */  addiu      $t0, $zero, 1
/* 673C4 800667C4 AFA80040 */  sw         $t0, 0x40($sp)
.L800667C8:
/* 673C8 800667C8 8FAA0040 */  lw         $t2, 0x40($sp)
/* 673CC 800667CC 15400006 */  bnez       $t2, .L800667E8
/* 673D0 800667D0 00000000 */   nop
/* 673D4 800667D4 3C0F8014 */  lui        $t7, %hi(D_8013F608)
/* 673D8 800667D8 8DEFF608 */  lw         $t7, %lo(D_8013F608)($t7)
/* 673DC 800667DC 24010004 */  addiu      $at, $zero, 4
/* 673E0 800667E0 15E10620 */  bne        $t7, $at, .L80068064
/* 673E4 800667E4 00000000 */   nop
.L800667E8:
/* 673E8 800667E8 8FAB0048 */  lw         $t3, 0x48($sp)
/* 673EC 800667EC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 673F0 800667F0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 673F4 800667F4 000BC080 */  sll        $t8, $t3, 2
/* 673F8 800667F8 030BC023 */  subu       $t8, $t8, $t3
/* 673FC 800667FC 0018C080 */  sll        $t8, $t8, 2
/* 67400 80066800 030BC023 */  subu       $t8, $t8, $t3
/* 67404 80066804 0018C080 */  sll        $t8, $t8, 2
/* 67408 80066808 030BC021 */  addu       $t8, $t8, $t3
/* 6740C 8006680C 0018C080 */  sll        $t8, $t8, 2
/* 67410 80066810 030BC023 */  subu       $t8, $t8, $t3
/* 67414 80066814 0018C080 */  sll        $t8, $t8, 2
/* 67418 80066818 03384821 */  addu       $t1, $t9, $t8
/* 6741C 8006681C 8D2C0058 */  lw         $t4, 0x58($t1)
/* 67420 80066820 24010001 */  addiu      $at, $zero, 1
/* 67424 80066824 15810009 */  bne        $t4, $at, .L8006684C
/* 67428 80066828 00000000 */   nop
/* 6742C 8006682C 8D2D0278 */  lw         $t5, 0x278($t1)
/* 67430 80066830 2401003A */  addiu      $at, $zero, 0x3a
/* 67434 80066834 15A10005 */  bne        $t5, $at, .L8006684C
/* 67438 80066838 00000000 */   nop
/* 6743C 8006683C 240E0001 */  addiu      $t6, $zero, 1
/* 67440 80066840 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67444 80066844 10000011 */  b          .L8006688C
/* 67448 80066848 AC2EF61C */   sw        $t6, %lo(D_8013F61C)($at)
.L8006684C:
/* 6744C 8006684C 8FAA0048 */  lw         $t2, 0x48($sp)
/* 67450 80066850 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 67454 80066854 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 67458 80066858 000A7880 */  sll        $t7, $t2, 2
/* 6745C 8006685C 01EA7823 */  subu       $t7, $t7, $t2
/* 67460 80066860 000F7880 */  sll        $t7, $t7, 2
/* 67464 80066864 01EA7823 */  subu       $t7, $t7, $t2
/* 67468 80066868 000F7880 */  sll        $t7, $t7, 2
/* 6746C 8006686C 01EA7821 */  addu       $t7, $t7, $t2
/* 67470 80066870 000F7880 */  sll        $t7, $t7, 2
/* 67474 80066874 01EA7823 */  subu       $t7, $t7, $t2
/* 67478 80066878 000F7880 */  sll        $t7, $t7, 2
/* 6747C 8006687C 010F5821 */  addu       $t3, $t0, $t7
/* 67480 80066880 8D79027C */  lw         $t9, 0x27c($t3)
/* 67484 80066884 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67488 80066888 AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
.L8006688C:
/* 6748C 8006688C 3C188014 */  lui        $t8, %hi(D_8013F608)
/* 67490 80066890 8F18F608 */  lw         $t8, %lo(D_8013F608)($t8)
/* 67494 80066894 24010004 */  addiu      $at, $zero, 4
/* 67498 80066898 1301001F */  beq        $t8, $at, .L80066918
/* 6749C 8006689C 00000000 */   nop
/* 674A0 800668A0 3C0C8014 */  lui        $t4, %hi(D_8013F60C)
/* 674A4 800668A4 8D8CF60C */  lw         $t4, %lo(D_8013F60C)($t4)
/* 674A8 800668A8 2401000B */  addiu      $at, $zero, 0xb
/* 674AC 800668AC 11810005 */  beq        $t4, $at, .L800668C4
/* 674B0 800668B0 2401000C */   addiu     $at, $zero, 0xc
/* 674B4 800668B4 11810003 */  beq        $t4, $at, .L800668C4
/* 674B8 800668B8 24010019 */   addiu     $at, $zero, 0x19
/* 674BC 800668BC 15810016 */  bne        $t4, $at, .L80066918
/* 674C0 800668C0 00000000 */   nop
.L800668C4:
/* 674C4 800668C4 3C098014 */  lui        $t1, %hi(D_8013F610)
/* 674C8 800668C8 8D29F610 */  lw         $t1, %lo(D_8013F610)($t1)
/* 674CC 800668CC 240100AC */  addiu      $at, $zero, 0xac
/* 674D0 800668D0 11210011 */  beq        $t1, $at, .L80066918
/* 674D4 800668D4 24010028 */   addiu     $at, $zero, 0x28
/* 674D8 800668D8 1121000F */  beq        $t1, $at, .L80066918
/* 674DC 800668DC 00000000 */   nop
/* 674E0 800668E0 8FAD004C */  lw         $t5, 0x4c($sp)
/* 674E4 800668E4 3C010001 */  lui        $at, 1
/* 674E8 800668E8 8DAE0000 */  lw         $t6, ($t5)
/* 674EC 800668EC 01C15024 */  and        $t2, $t6, $at
/* 674F0 800668F0 11400009 */  beqz       $t2, .L80066918
/* 674F4 800668F4 00000000 */   nop
/* 674F8 800668F8 01A02025 */  or         $a0, $t5, $zero
/* 674FC 800668FC 0C018727 */  jal        func_80061C9C
/* 67500 80066900 8FA50048 */   lw        $a1, 0x48($sp)
/* 67504 80066904 8FA40048 */  lw         $a0, 0x48($sp)
/* 67508 80066908 0C017B56 */  jal        func_8005ED58
/* 6750C 8006690C 8FA5004C */   lw        $a1, 0x4c($sp)
/* 67510 80066910 144007DC */  bnez       $v0, .L80068884
/* 67514 80066914 00000000 */   nop
.L80066918:
/* 67518 80066918 3C088014 */  lui        $t0, %hi(D_8013F61C)
/* 6751C 8006691C 8D08F61C */  lw         $t0, %lo(D_8013F61C)($t0)
/* 67520 80066920 15000011 */  bnez       $t0, .L80066968
/* 67524 80066924 00000000 */   nop
/* 67528 80066928 8FAB0048 */  lw         $t3, 0x48($sp)
/* 6752C 8006692C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 67530 80066930 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 67534 80066934 000BC880 */  sll        $t9, $t3, 2
/* 67538 80066938 032BC823 */  subu       $t9, $t9, $t3
/* 6753C 8006693C 0019C880 */  sll        $t9, $t9, 2
/* 67540 80066940 032BC823 */  subu       $t9, $t9, $t3
/* 67544 80066944 0019C880 */  sll        $t9, $t9, 2
/* 67548 80066948 032BC821 */  addu       $t9, $t9, $t3
/* 6754C 8006694C 0019C880 */  sll        $t9, $t9, 2
/* 67550 80066950 032BC823 */  subu       $t9, $t9, $t3
/* 67554 80066954 0019C880 */  sll        $t9, $t9, 2
/* 67558 80066958 01F9C021 */  addu       $t8, $t7, $t9
/* 6755C 8006695C 8F0C0280 */  lw         $t4, 0x280($t8)
/* 67560 80066960 118007C8 */  beqz       $t4, .L80068884
/* 67564 80066964 00000000 */   nop
.L80066968:
/* 67568 80066968 3C098014 */  lui        $t1, %hi(D_8013F608)
/* 6756C 8006696C 8D29F608 */  lw         $t1, %lo(D_8013F608)($t1)
/* 67570 80066970 24010004 */  addiu      $at, $zero, 4
/* 67574 80066974 11210018 */  beq        $t1, $at, .L800669D8
/* 67578 80066978 00000000 */   nop
/* 6757C 8006697C 8FA4004C */  lw         $a0, 0x4c($sp)
/* 67580 80066980 0C0190BE */  jal        func_800642F8
/* 67584 80066984 8FA50048 */   lw        $a1, 0x48($sp)
/* 67588 80066988 10400006 */  beqz       $v0, .L800669A4
/* 6758C 8006698C 00000000 */   nop
/* 67590 80066990 8FA40048 */  lw         $a0, 0x48($sp)
/* 67594 80066994 0C017B56 */  jal        func_8005ED58
/* 67598 80066998 8FA5004C */   lw        $a1, 0x4c($sp)
/* 6759C 8006699C 144007B9 */  bnez       $v0, .L80068884
/* 675A0 800669A0 00000000 */   nop
.L800669A4:
/* 675A4 800669A4 8FA4004C */  lw         $a0, 0x4c($sp)
/* 675A8 800669A8 0C0181A7 */  jal        func_8006069C
/* 675AC 800669AC 8FA50048 */   lw        $a1, 0x48($sp)
/* 675B0 800669B0 10400006 */  beqz       $v0, .L800669CC
/* 675B4 800669B4 00000000 */   nop
/* 675B8 800669B8 8FA40048 */  lw         $a0, 0x48($sp)
/* 675BC 800669BC 0C017B56 */  jal        func_8005ED58
/* 675C0 800669C0 8FA5004C */   lw        $a1, 0x4c($sp)
/* 675C4 800669C4 144007AF */  bnez       $v0, .L80068884
/* 675C8 800669C8 00000000 */   nop
.L800669CC:
/* 675CC 800669CC 8FA4004C */  lw         $a0, 0x4c($sp)
/* 675D0 800669D0 0C019637 */  jal        func_800658DC
/* 675D4 800669D4 8FA50048 */   lw        $a1, 0x48($sp)
.L800669D8:
/* 675D8 800669D8 3C108014 */  lui        $s0, %hi(D_8013F608)
/* 675DC 800669DC 8E10F608 */  lw         $s0, %lo(D_8013F608)($s0)
/* 675E0 800669E0 24010001 */  addiu      $at, $zero, 1
/* 675E4 800669E4 12010007 */  beq        $s0, $at, .L80066A04
/* 675E8 800669E8 24010004 */   addiu     $at, $zero, 4
/* 675EC 800669EC 1201046D */  beq        $s0, $at, .L80067BA4
/* 675F0 800669F0 24010005 */   addiu     $at, $zero, 5
/* 675F4 800669F4 12010466 */  beq        $s0, $at, .L80067B90
/* 675F8 800669F8 00000000 */   nop
/* 675FC 800669FC 1000079E */  b          .L80068878
/* 67600 80066A00 00000000 */   nop
.L80066A04:
/* 67604 80066A04 3C108014 */  lui        $s0, %hi(D_8013F60C)
/* 67608 80066A08 8E10F60C */  lw         $s0, %lo(D_8013F60C)($s0)
/* 6760C 80066A0C 2401000B */  addiu      $at, $zero, 0xb
/* 67610 80066A10 12010005 */  beq        $s0, $at, .L80066A28
/* 67614 80066A14 2401000C */   addiu     $at, $zero, 0xc
/* 67618 80066A18 120102DB */  beq        $s0, $at, .L80067588
/* 6761C 80066A1C 00000000 */   nop
/* 67620 80066A20 10000795 */  b          .L80068878
/* 67624 80066A24 00000000 */   nop
.L80066A28:
/* 67628 80066A28 0C018089 */  jal        func_80060224
/* 6762C 80066A2C 8FA40048 */   lw        $a0, 0x48($sp)
/* 67630 80066A30 14400791 */  bnez       $v0, .L80068878
/* 67634 80066A34 00000000 */   nop
/* 67638 80066A38 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 6763C 80066A3C 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 67640 80066A40 2A01007C */  slti       $at, $s0, 0x7c
/* 67644 80066A44 14200007 */  bnez       $at, .L80066A64
/* 67648 80066A48 240100AC */   addiu     $at, $zero, 0xac
/* 6764C 80066A4C 12010186 */  beq        $s0, $at, .L80067068
/* 67650 80066A50 240100AE */   addiu     $at, $zero, 0xae
/* 67654 80066A54 120101D7 */  beq        $s0, $at, .L800671B4
/* 67658 80066A58 00000000 */   nop
/* 6765C 80066A5C 10000786 */  b          .L80068878
/* 67660 80066A60 00000000 */   nop
.L80066A64:
/* 67664 80066A64 2A010029 */  slti       $at, $s0, 0x29
/* 67668 80066A68 1420000B */  bnez       $at, .L80066A98
/* 6766C 80066A6C 00000000 */   nop
/* 67670 80066A70 260EFFA4 */  addiu      $t6, $s0, -0x5c
/* 67674 80066A74 2DC10020 */  sltiu      $at, $t6, 0x20
/* 67678 80066A78 1020077F */  beqz       $at, .L80068878
/* 6767C 80066A7C 00000000 */   nop
/* 67680 80066A80 000E7080 */  sll        $t6, $t6, 2
/* 67684 80066A84 3C01800E */  lui        $at, %hi(D_800DE30C)
/* 67688 80066A88 002E0821 */  addu       $at, $at, $t6
/* 6768C 80066A8C 8C2EE30C */  lw         $t6, %lo(D_800DE30C)($at)
/* 67690 80066A90 01C00008 */  jr         $t6
/* 67694 80066A94 00000000 */   nop
.L80066A98:
/* 67698 80066A98 2A01000B */  slti       $at, $s0, 0xb
/* 6769C 80066A9C 14200005 */  bnez       $at, .L80066AB4
/* 676A0 80066AA0 24010028 */   addiu     $at, $zero, 0x28
/* 676A4 80066AA4 12010091 */  beq        $s0, $at, .L80066CEC
/* 676A8 80066AA8 00000000 */   nop
/* 676AC 80066AAC 10000772 */  b          .L80068878
/* 676B0 80066AB0 00000000 */   nop
.L80066AB4:
/* 676B4 80066AB4 2E01000B */  sltiu      $at, $s0, 0xb
/* 676B8 80066AB8 1020076F */  beqz       $at, .L80068878
/* 676BC 80066ABC 00000000 */   nop
/* 676C0 80066AC0 00105080 */  sll        $t2, $s0, 2
/* 676C4 80066AC4 3C01800E */  lui        $at, %hi(D_800DE38C)
/* 676C8 80066AC8 002A0821 */  addu       $at, $at, $t2
/* 676CC 80066ACC 8C2AE38C */  lw         $t2, %lo(D_800DE38C)($at)
/* 676D0 80066AD0 01400008 */  jr         $t2
/* 676D4 80066AD4 00000000 */   nop
/* 676D8 80066AD8 3C018014 */  lui        $at, %hi(D_8013F620)
/* 676DC 80066ADC C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 676E0 80066AE0 3C014014 */  lui        $at, 0x4014
/* 676E4 80066AE4 44819800 */  mtc1       $at, $f19
/* 676E8 80066AE8 44809000 */  mtc1       $zero, $f18
/* 676EC 80066AEC 46003221 */  cvt.d.s    $f8, $f6
/* 676F0 80066AF0 4632403C */  c.lt.d     $f8, $f18
/* 676F4 80066AF4 00000000 */  nop
/* 676F8 80066AF8 45000006 */  bc1f       .L80066B14
/* 676FC 80066AFC 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67700 80066B00 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67704 80066B04 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67708 80066B08 240D0002 */  addiu      $t5, $zero, 2
/* 6770C 80066B0C 10000553 */  b          .L8006805C
/* 67710 80066B10 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80066B14:
/* 67714 80066B14 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67718 80066B18 C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 6771C 80066B1C 3C014024 */  lui        $at, 0x4024
/* 67720 80066B20 44815800 */  mtc1       $at, $f11
/* 67724 80066B24 44805000 */  mtc1       $zero, $f10
/* 67728 80066B28 46002421 */  cvt.d.s    $f16, $f4
/* 6772C 80066B2C 4630503E */  c.le.d     $f10, $f16
/* 67730 80066B30 00000000 */  nop
/* 67734 80066B34 45000006 */  bc1f       .L80066B50
/* 67738 80066B38 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 6773C 80066B3C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67740 80066B40 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67744 80066B44 24080004 */  addiu      $t0, $zero, 4
/* 67748 80066B48 10000544 */  b          .L8006805C
/* 6774C 80066B4C AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L80066B50:
/* 67750 80066B50 8FAB004C */  lw         $t3, 0x4c($sp)
/* 67754 80066B54 3C010002 */  lui        $at, 2
/* 67758 80066B58 8D6F0000 */  lw         $t7, ($t3)
/* 6775C 80066B5C 01E1C824 */  and        $t9, $t7, $at
/* 67760 80066B60 1320053E */  beqz       $t9, .L8006805C
/* 67764 80066B64 00000000 */   nop
/* 67768 80066B68 8FAC0048 */  lw         $t4, 0x48($sp)
/* 6776C 80066B6C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 67770 80066B70 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 67774 80066B74 000C4880 */  sll        $t1, $t4, 2
/* 67778 80066B78 012C4823 */  subu       $t1, $t1, $t4
/* 6777C 80066B7C 00094880 */  sll        $t1, $t1, 2
/* 67780 80066B80 012C4823 */  subu       $t1, $t1, $t4
/* 67784 80066B84 00094880 */  sll        $t1, $t1, 2
/* 67788 80066B88 012C4821 */  addu       $t1, $t1, $t4
/* 6778C 80066B8C 00094880 */  sll        $t1, $t1, 2
/* 67790 80066B90 012C4823 */  subu       $t1, $t1, $t4
/* 67794 80066B94 00094880 */  sll        $t1, $t1, 2
/* 67798 80066B98 3C018014 */  lui        $at, %hi(D_8013F660)
/* 6779C 80066B9C 03097021 */  addu       $t6, $t8, $t1
/* 677A0 80066BA0 C5C600E4 */  lwc1       $f6, 0xe4($t6)
/* 677A4 80066BA4 C428F660 */  lwc1       $f8, %lo(D_8013F660)($at)
/* 677A8 80066BA8 3C014059 */  lui        $at, 0x4059
/* 677AC 80066BAC 44818800 */  mtc1       $at, $f17
/* 677B0 80066BB0 46064481 */  sub.s      $f18, $f8, $f6
/* 677B4 80066BB4 44808000 */  mtc1       $zero, $f16
/* 677B8 80066BB8 3C01800E */  lui        $at, %hi(D_800DE3B8)
/* 677BC 80066BBC D428E3B8 */  ldc1       $f8, %lo(D_800DE3B8)($at)
/* 677C0 80066BC0 46009121 */  cvt.d.s    $f4, $f18
/* 677C4 80066BC4 46302280 */  add.d      $f10, $f4, $f16
/* 677C8 80066BC8 462A403C */  c.lt.d     $f8, $f10
/* 677CC 80066BCC 00000000 */  nop
/* 677D0 80066BD0 45000522 */  bc1f       .L8006805C
/* 677D4 80066BD4 00000000 */   nop
/* 677D8 80066BD8 240A0070 */  addiu      $t2, $zero, 0x70
/* 677DC 80066BDC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 677E0 80066BE0 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 677E4 80066BE4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 677E8 80066BE8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 677EC 80066BEC 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 677F0 80066BF0 240D0001 */  addiu      $t5, $zero, 1
/* 677F4 80066BF4 AC2D7D68 */  sw         $t5, %lo(D_800D7D68)($at)
/* 677F8 80066BF8 3C014100 */  lui        $at, 0x4100
/* 677FC 80066BFC 44816000 */  mtc1       $at, $f12
/* 67800 80066C00 3C068014 */  lui        $a2, %hi(D_8013F640)
/* 67804 80066C04 3C078014 */  lui        $a3, %hi(D_8013F648)
/* 67808 80066C08 24E7F648 */  addiu      $a3, $a3, %lo(D_8013F648)
/* 6780C 80066C0C 24C6F640 */  addiu      $a2, $a2, %lo(D_8013F640)
/* 67810 80066C10 0C01A226 */  jal        func_80068898
/* 67814 80066C14 01802825 */   or        $a1, $t4, $zero
/* 67818 80066C18 10000717 */  b          .L80068878
/* 6781C 80066C1C 00000000 */   nop
/* 67820 80066C20 24080028 */  addiu      $t0, $zero, 0x28
/* 67824 80066C24 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67828 80066C28 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 6782C 80066C2C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67830 80066C30 240B0001 */  addiu      $t3, $zero, 1
/* 67834 80066C34 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
/* 67838 80066C38 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 6783C 80066C3C C426F66C */  lwc1       $f6, %lo(D_8013F66C)($at)
/* 67840 80066C40 3C014248 */  lui        $at, 0x4248
/* 67844 80066C44 44819000 */  mtc1       $at, $f18
/* 67848 80066C48 00000000 */  nop
/* 6784C 80066C4C 4612303C */  c.lt.s     $f6, $f18
/* 67850 80066C50 00000000 */  nop
/* 67854 80066C54 45000501 */  bc1f       .L8006805C
/* 67858 80066C58 00000000 */   nop
/* 6785C 80066C5C 8FB90048 */  lw         $t9, 0x48($sp)
/* 67860 80066C60 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 67864 80066C64 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 67868 80066C68 0019C080 */  sll        $t8, $t9, 2
/* 6786C 80066C6C 0319C023 */  subu       $t8, $t8, $t9
/* 67870 80066C70 0018C080 */  sll        $t8, $t8, 2
/* 67874 80066C74 0319C023 */  subu       $t8, $t8, $t9
/* 67878 80066C78 0018C080 */  sll        $t8, $t8, 2
/* 6787C 80066C7C 0319C021 */  addu       $t8, $t8, $t9
/* 67880 80066C80 0018C080 */  sll        $t8, $t8, 2
/* 67884 80066C84 0319C023 */  subu       $t8, $t8, $t9
/* 67888 80066C88 0018C080 */  sll        $t8, $t8, 2
/* 6788C 80066C8C 3C01422C */  lui        $at, 0x422c
/* 67890 80066C90 01F84821 */  addu       $t1, $t7, $t8
/* 67894 80066C94 C52400E4 */  lwc1       $f4, 0xe4($t1)
/* 67898 80066C98 44818000 */  mtc1       $at, $f16
/* 6789C 80066C9C 3C018014 */  lui        $at, 0x8014
/* 678A0 80066CA0 240E0001 */  addiu      $t6, $zero, 1
/* 678A4 80066CA4 46102280 */  add.s      $f10, $f4, $f16
/* 678A8 80066CA8 3C068014 */  lui        $a2, 0x8014
/* 678AC 80066CAC 3C078014 */  lui        $a3, %hi(D_8013F648)
/* 678B0 80066CB0 24E7F648 */  addiu      $a3, $a3, %lo(D_8013F648)
/* 678B4 80066CB4 E42AF638 */  swc1       $f10, -0x9c8($at)
/* 678B8 80066CB8 3C014100 */  lui        $at, 0x4100
/* 678BC 80066CBC 44814000 */  mtc1       $at, $f8
/* 678C0 80066CC0 3C018014 */  lui        $at, %hi(D_8013F644)
/* 678C4 80066CC4 24C6F640 */  addiu      $a2, $a2, -0x9c0
/* 678C8 80066CC8 E428F644 */  swc1       $f8, %lo(D_8013F644)($at)
/* 678CC 80066CCC 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 678D0 80066CD0 AC2E7D68 */  sw         $t6, %lo(D_800D7D68)($at)
/* 678D4 80066CD4 3C014100 */  lui        $at, 0x4100
/* 678D8 80066CD8 44816000 */  mtc1       $at, $f12
/* 678DC 80066CDC 0C01A226 */  jal        func_80068898
/* 678E0 80066CE0 03202825 */   or        $a1, $t9, $zero
/* 678E4 80066CE4 100006E4 */  b          .L80068878
/* 678E8 80066CE8 00000000 */   nop
.L80066CEC:
/* 678EC 80066CEC 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 678F0 80066CF0 C426F66C */  lwc1       $f6, %lo(D_8013F66C)($at)
/* 678F4 80066CF4 3C014045 */  lui        $at, 0x4045
/* 678F8 80066CF8 44812800 */  mtc1       $at, $f5
/* 678FC 80066CFC 44802000 */  mtc1       $zero, $f4
/* 67900 80066D00 460034A1 */  cvt.d.s    $f18, $f6
/* 67904 80066D04 4624903C */  c.lt.d     $f18, $f4
/* 67908 80066D08 00000000 */  nop
/* 6790C 80066D0C 45010011 */  bc1t       .L80066D54
/* 67910 80066D10 00000000 */   nop
/* 67914 80066D14 8FAD0048 */  lw         $t5, 0x48($sp)
/* 67918 80066D18 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 6791C 80066D1C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 67920 80066D20 000D6080 */  sll        $t4, $t5, 2
/* 67924 80066D24 018D6023 */  subu       $t4, $t4, $t5
/* 67928 80066D28 000C6080 */  sll        $t4, $t4, 2
/* 6792C 80066D2C 018D6023 */  subu       $t4, $t4, $t5
/* 67930 80066D30 000C6080 */  sll        $t4, $t4, 2
/* 67934 80066D34 018D6021 */  addu       $t4, $t4, $t5
/* 67938 80066D38 000C6080 */  sll        $t4, $t4, 2
/* 6793C 80066D3C 018D6023 */  subu       $t4, $t4, $t5
/* 67940 80066D40 000C6080 */  sll        $t4, $t4, 2
/* 67944 80066D44 014C4021 */  addu       $t0, $t2, $t4
/* 67948 80066D48 8D0B0058 */  lw         $t3, 0x58($t0)
/* 6794C 80066D4C 24010004 */  addiu      $at, $zero, 4
/* 67950 80066D50 15610005 */  bne        $t3, $at, .L80066D68
.L80066D54:
/* 67954 80066D54 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67958 80066D58 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6795C 80066D5C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67960 80066D60 240F007B */  addiu      $t7, $zero, 0x7b
/* 67964 80066D64 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
.L80066D68:
/* 67968 80066D68 8FB8004C */  lw         $t8, 0x4c($sp)
/* 6796C 80066D6C 3C010002 */  lui        $at, 2
/* 67970 80066D70 8F090000 */  lw         $t1, ($t8)
/* 67974 80066D74 01217024 */  and        $t6, $t1, $at
/* 67978 80066D78 11C00018 */  beqz       $t6, .L80066DDC
/* 6797C 80066D7C 00000000 */   nop
/* 67980 80066D80 8FAD0048 */  lw         $t5, 0x48($sp)
/* 67984 80066D84 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 67988 80066D88 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 6798C 80066D8C 000D5080 */  sll        $t2, $t5, 2
/* 67990 80066D90 014D5023 */  subu       $t2, $t2, $t5
/* 67994 80066D94 000A5080 */  sll        $t2, $t2, 2
/* 67998 80066D98 014D5023 */  subu       $t2, $t2, $t5
/* 6799C 80066D9C 000A5080 */  sll        $t2, $t2, 2
/* 679A0 80066DA0 014D5021 */  addu       $t2, $t2, $t5
/* 679A4 80066DA4 000A5080 */  sll        $t2, $t2, 2
/* 679A8 80066DA8 014D5023 */  subu       $t2, $t2, $t5
/* 679AC 80066DAC 000A5080 */  sll        $t2, $t2, 2
/* 679B0 80066DB0 032A6021 */  addu       $t4, $t9, $t2
/* 679B4 80066DB4 C59000D8 */  lwc1       $f16, 0xd8($t4)
/* 679B8 80066DB8 3C013FD0 */  lui        $at, 0x3fd0
/* 679BC 80066DBC 44814800 */  mtc1       $at, $f9
/* 679C0 80066DC0 44804000 */  mtc1       $zero, $f8
/* 679C4 80066DC4 460082A1 */  cvt.d.s    $f10, $f16
/* 679C8 80066DC8 3C018014 */  lui        $at, %hi(D_8013F644)
/* 679CC 80066DCC 46285180 */  add.d      $f6, $f10, $f8
/* 679D0 80066DD0 462034A0 */  cvt.s.d    $f18, $f6
/* 679D4 80066DD4 100004A1 */  b          .L8006805C
/* 679D8 80066DD8 E432F644 */   swc1      $f18, %lo(D_8013F644)($at)
.L80066DDC:
/* 679DC 80066DDC 8FAB0048 */  lw         $t3, 0x48($sp)
/* 679E0 80066DE0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 679E4 80066DE4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 679E8 80066DE8 000B7880 */  sll        $t7, $t3, 2
/* 679EC 80066DEC 01EB7823 */  subu       $t7, $t7, $t3
/* 679F0 80066DF0 000F7880 */  sll        $t7, $t7, 2
/* 679F4 80066DF4 01EB7823 */  subu       $t7, $t7, $t3
/* 679F8 80066DF8 000F7880 */  sll        $t7, $t7, 2
/* 679FC 80066DFC 01EB7821 */  addu       $t7, $t7, $t3
/* 67A00 80066E00 000F7880 */  sll        $t7, $t7, 2
/* 67A04 80066E04 01EB7823 */  subu       $t7, $t7, $t3
/* 67A08 80066E08 000F7880 */  sll        $t7, $t7, 2
/* 67A0C 80066E0C 010FC021 */  addu       $t8, $t0, $t7
/* 67A10 80066E10 C70400D8 */  lwc1       $f4, 0xd8($t8)
/* 67A14 80066E14 3C013FD0 */  lui        $at, 0x3fd0
/* 67A18 80066E18 44815800 */  mtc1       $at, $f11
/* 67A1C 80066E1C 44805000 */  mtc1       $zero, $f10
/* 67A20 80066E20 46002421 */  cvt.d.s    $f16, $f4
/* 67A24 80066E24 3C018014 */  lui        $at, %hi(D_8013F644)
/* 67A28 80066E28 462A8201 */  sub.d      $f8, $f16, $f10
/* 67A2C 80066E2C 462041A0 */  cvt.s.d    $f6, $f8
/* 67A30 80066E30 10000691 */  b          .L80068878
/* 67A34 80066E34 E426F644 */   swc1      $f6, %lo(D_8013F644)($at)
/* 67A38 80066E38 24090001 */  addiu      $t1, $zero, 1
/* 67A3C 80066E3C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67A40 80066E40 AC29F61C */  sw         $t1, %lo(D_8013F61C)($at)
/* 67A44 80066E44 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67A48 80066E48 1000068B */  b          .L80068878
/* 67A4C 80066E4C AC20F610 */   sw        $zero, %lo(D_8013F610)($at)
/* 67A50 80066E50 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67A54 80066E54 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 67A58 80066E58 3C014024 */  lui        $at, 0x4024
/* 67A5C 80066E5C 44818800 */  mtc1       $at, $f17
/* 67A60 80066E60 44808000 */  mtc1       $zero, $f16
/* 67A64 80066E64 46009121 */  cvt.d.s    $f4, $f18
/* 67A68 80066E68 4630203C */  c.lt.d     $f4, $f16
/* 67A6C 80066E6C 00000000 */  nop
/* 67A70 80066E70 45000013 */  bc1f       .L80066EC0
/* 67A74 80066E74 3C014014 */   lui       $at, 0x4014
/* 67A78 80066E78 44815800 */  mtc1       $at, $f11
/* 67A7C 80066E7C 44805000 */  mtc1       $zero, $f10
/* 67A80 80066E80 00000000 */  nop
/* 67A84 80066E84 462A203C */  c.lt.d     $f4, $f10
/* 67A88 80066E88 00000000 */  nop
/* 67A8C 80066E8C 45000006 */  bc1f       .L80066EA8
/* 67A90 80066E90 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67A94 80066E94 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67A98 80066E98 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67A9C 80066E9C 240E0008 */  addiu      $t6, $zero, 8
/* 67AA0 80066EA0 10000339 */  b          .L80067B88
/* 67AA4 80066EA4 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80066EA8:
/* 67AA8 80066EA8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67AAC 80066EAC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67AB0 80066EB0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67AB4 80066EB4 240D000A */  addiu      $t5, $zero, 0xa
/* 67AB8 80066EB8 10000468 */  b          .L8006805C
/* 67ABC 80066EBC AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80066EC0:
/* 67AC0 80066EC0 8FB9004C */  lw         $t9, 0x4c($sp)
/* 67AC4 80066EC4 3C010002 */  lui        $at, 2
/* 67AC8 80066EC8 8F2A0000 */  lw         $t2, ($t9)
/* 67ACC 80066ECC 01416024 */  and        $t4, $t2, $at
/* 67AD0 80066ED0 11800669 */  beqz       $t4, .L80068878
/* 67AD4 80066ED4 00000000 */   nop
/* 67AD8 80066ED8 8FA80048 */  lw         $t0, 0x48($sp)
/* 67ADC 80066EDC 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 67AE0 80066EE0 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 67AE4 80066EE4 00087880 */  sll        $t7, $t0, 2
/* 67AE8 80066EE8 01E87823 */  subu       $t7, $t7, $t0
/* 67AEC 80066EEC 000F7880 */  sll        $t7, $t7, 2
/* 67AF0 80066EF0 01E87823 */  subu       $t7, $t7, $t0
/* 67AF4 80066EF4 000F7880 */  sll        $t7, $t7, 2
/* 67AF8 80066EF8 01E87821 */  addu       $t7, $t7, $t0
/* 67AFC 80066EFC 000F7880 */  sll        $t7, $t7, 2
/* 67B00 80066F00 01E87823 */  subu       $t7, $t7, $t0
/* 67B04 80066F04 000F7880 */  sll        $t7, $t7, 2
/* 67B08 80066F08 3C018014 */  lui        $at, %hi(D_8013F660)
/* 67B0C 80066F0C 016FC021 */  addu       $t8, $t3, $t7
/* 67B10 80066F10 C70800E4 */  lwc1       $f8, 0xe4($t8)
/* 67B14 80066F14 C426F660 */  lwc1       $f6, %lo(D_8013F660)($at)
/* 67B18 80066F18 3C014059 */  lui        $at, 0x4059
/* 67B1C 80066F1C 44812800 */  mtc1       $at, $f5
/* 67B20 80066F20 46083481 */  sub.s      $f18, $f6, $f8
/* 67B24 80066F24 44802000 */  mtc1       $zero, $f4
/* 67B28 80066F28 3C01800E */  lui        $at, %hi(D_800DE3C0)
/* 67B2C 80066F2C D426E3C0 */  ldc1       $f6, %lo(D_800DE3C0)($at)
/* 67B30 80066F30 46009421 */  cvt.d.s    $f16, $f18
/* 67B34 80066F34 46248280 */  add.d      $f10, $f16, $f4
/* 67B38 80066F38 462A303C */  c.lt.d     $f6, $f10
/* 67B3C 80066F3C 00000000 */  nop
/* 67B40 80066F40 4500064D */  bc1f       .L80068878
/* 67B44 80066F44 00000000 */   nop
/* 67B48 80066F48 2409006A */  addiu      $t1, $zero, 0x6a
/* 67B4C 80066F4C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67B50 80066F50 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 67B54 80066F54 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67B58 80066F58 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67B5C 80066F5C 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 67B60 80066F60 240E0001 */  addiu      $t6, $zero, 1
/* 67B64 80066F64 AC2E7D68 */  sw         $t6, %lo(D_800D7D68)($at)
/* 67B68 80066F68 3C014180 */  lui        $at, 0x4180
/* 67B6C 80066F6C 44816000 */  mtc1       $at, $f12
/* 67B70 80066F70 3C068014 */  lui        $a2, %hi(D_8013F640)
/* 67B74 80066F74 3C078014 */  lui        $a3, %hi(D_8013F648)
/* 67B78 80066F78 24E7F648 */  addiu      $a3, $a3, %lo(D_8013F648)
/* 67B7C 80066F7C 24C6F640 */  addiu      $a2, $a2, %lo(D_8013F640)
/* 67B80 80066F80 0C01A226 */  jal        func_80068898
/* 67B84 80066F84 01002825 */   or        $a1, $t0, $zero
/* 67B88 80066F88 1000063B */  b          .L80068878
/* 67B8C 80066F8C 00000000 */   nop
/* 67B90 80066F90 240D00AC */  addiu      $t5, $zero, 0xac
/* 67B94 80066F94 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67B98 80066F98 AC2DF610 */  sw         $t5, %lo(D_8013F610)($at)
/* 67B9C 80066F9C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67BA0 80066FA0 24190001 */  addiu      $t9, $zero, 1
/* 67BA4 80066FA4 AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 67BA8 80066FA8 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 67BAC 80066FAC C428F66C */  lwc1       $f8, %lo(D_8013F66C)($at)
/* 67BB0 80066FB0 3C014248 */  lui        $at, 0x4248
/* 67BB4 80066FB4 44819000 */  mtc1       $at, $f18
/* 67BB8 80066FB8 00000000 */  nop
/* 67BBC 80066FBC 4612403C */  c.lt.s     $f8, $f18
/* 67BC0 80066FC0 00000000 */  nop
/* 67BC4 80066FC4 4500062C */  bc1f       .L80068878
/* 67BC8 80066FC8 00000000 */   nop
/* 67BCC 80066FCC 8FAC0048 */  lw         $t4, 0x48($sp)
/* 67BD0 80066FD0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 67BD4 80066FD4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 67BD8 80066FD8 000C5880 */  sll        $t3, $t4, 2
/* 67BDC 80066FDC 016C5823 */  subu       $t3, $t3, $t4
/* 67BE0 80066FE0 000B5880 */  sll        $t3, $t3, 2
/* 67BE4 80066FE4 016C5823 */  subu       $t3, $t3, $t4
/* 67BE8 80066FE8 000B5880 */  sll        $t3, $t3, 2
/* 67BEC 80066FEC 016C5821 */  addu       $t3, $t3, $t4
/* 67BF0 80066FF0 000B5880 */  sll        $t3, $t3, 2
/* 67BF4 80066FF4 016C5823 */  subu       $t3, $t3, $t4
/* 67BF8 80066FF8 000B5880 */  sll        $t3, $t3, 2
/* 67BFC 80066FFC 014B7821 */  addu       $t7, $t2, $t3
/* 67C00 80067000 C5F000E4 */  lwc1       $f16, 0xe4($t7)
/* 67C04 80067004 3C01800E */  lui        $at, %hi(D_800DE3C8)
/* 67C08 80067008 D42AE3C8 */  ldc1       $f10, %lo(D_800DE3C8)($at)
/* 67C0C 8006700C 46008121 */  cvt.d.s    $f4, $f16
/* 67C10 80067010 3C018014 */  lui        $at, 0x8014
/* 67C14 80067014 462A2180 */  add.d      $f6, $f4, $f10
/* 67C18 80067018 24180001 */  addiu      $t8, $zero, 1
/* 67C1C 8006701C 3C068014 */  lui        $a2, %hi(D_8013F640)
/* 67C20 80067020 3C078014 */  lui        $a3, %hi(D_8013F648)
/* 67C24 80067024 46203220 */  cvt.s.d    $f8, $f6
/* 67C28 80067028 24E7F648 */  addiu      $a3, $a3, %lo(D_8013F648)
/* 67C2C 8006702C 24C6F640 */  addiu      $a2, $a2, %lo(D_8013F640)
/* 67C30 80067030 01802825 */  or         $a1, $t4, $zero
/* 67C34 80067034 E428F638 */  swc1       $f8, -0x9c8($at)
/* 67C38 80067038 3C014190 */  lui        $at, 0x4190
/* 67C3C 8006703C 44819000 */  mtc1       $at, $f18
/* 67C40 80067040 3C018014 */  lui        $at, %hi(D_8013F644)
/* 67C44 80067044 E432F644 */  swc1       $f18, %lo(D_8013F644)($at)
/* 67C48 80067048 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 67C4C 8006704C AC387D68 */  sw         $t8, %lo(D_800D7D68)($at)
/* 67C50 80067050 3C014180 */  lui        $at, 0x4180
/* 67C54 80067054 44816000 */  mtc1       $at, $f12
/* 67C58 80067058 0C01A226 */  jal        func_80068898
/* 67C5C 8006705C 00000000 */   nop
/* 67C60 80067060 10000605 */  b          .L80068878
/* 67C64 80067064 00000000 */   nop
.L80067068:
/* 67C68 80067068 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 67C6C 8006706C C430F66C */  lwc1       $f16, %lo(D_8013F66C)($at)
/* 67C70 80067070 3C014042 */  lui        $at, 0x4042
/* 67C74 80067074 44815800 */  mtc1       $at, $f11
/* 67C78 80067078 44805000 */  mtc1       $zero, $f10
/* 67C7C 8006707C 46008121 */  cvt.d.s    $f4, $f16
/* 67C80 80067080 462A203C */  c.lt.d     $f4, $f10
/* 67C84 80067084 00000000 */  nop
/* 67C88 80067088 45010011 */  bc1t       .L800670D0
/* 67C8C 8006708C 00000000 */   nop
/* 67C90 80067090 8FAE0048 */  lw         $t6, 0x48($sp)
/* 67C94 80067094 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 67C98 80067098 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 67C9C 8006709C 000E4080 */  sll        $t0, $t6, 2
/* 67CA0 800670A0 010E4023 */  subu       $t0, $t0, $t6
/* 67CA4 800670A4 00084080 */  sll        $t0, $t0, 2
/* 67CA8 800670A8 010E4023 */  subu       $t0, $t0, $t6
/* 67CAC 800670AC 00084080 */  sll        $t0, $t0, 2
/* 67CB0 800670B0 010E4021 */  addu       $t0, $t0, $t6
/* 67CB4 800670B4 00084080 */  sll        $t0, $t0, 2
/* 67CB8 800670B8 010E4023 */  subu       $t0, $t0, $t6
/* 67CBC 800670BC 00084080 */  sll        $t0, $t0, 2
/* 67CC0 800670C0 01286821 */  addu       $t5, $t1, $t0
/* 67CC4 800670C4 8DB90058 */  lw         $t9, 0x58($t5)
/* 67CC8 800670C8 24010004 */  addiu      $at, $zero, 4
/* 67CCC 800670CC 17210005 */  bne        $t9, $at, .L800670E4
.L800670D0:
/* 67CD0 800670D0 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67CD4 800670D4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67CD8 800670D8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67CDC 800670DC 240A00AE */  addiu      $t2, $zero, 0xae
/* 67CE0 800670E0 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
.L800670E4:
/* 67CE4 800670E4 8FAB004C */  lw         $t3, 0x4c($sp)
/* 67CE8 800670E8 3C010002 */  lui        $at, 2
/* 67CEC 800670EC 8D6F0000 */  lw         $t7, ($t3)
/* 67CF0 800670F0 01E1C024 */  and        $t8, $t7, $at
/* 67CF4 800670F4 13000018 */  beqz       $t8, .L80067158
/* 67CF8 800670F8 00000000 */   nop
/* 67CFC 800670FC 8FAE0048 */  lw         $t6, 0x48($sp)
/* 67D00 80067100 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 67D04 80067104 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 67D08 80067108 000E4880 */  sll        $t1, $t6, 2
/* 67D0C 8006710C 012E4823 */  subu       $t1, $t1, $t6
/* 67D10 80067110 00094880 */  sll        $t1, $t1, 2
/* 67D14 80067114 012E4823 */  subu       $t1, $t1, $t6
/* 67D18 80067118 00094880 */  sll        $t1, $t1, 2
/* 67D1C 8006711C 012E4821 */  addu       $t1, $t1, $t6
/* 67D20 80067120 00094880 */  sll        $t1, $t1, 2
/* 67D24 80067124 012E4823 */  subu       $t1, $t1, $t6
/* 67D28 80067128 00094880 */  sll        $t1, $t1, 2
/* 67D2C 8006712C 01894021 */  addu       $t0, $t4, $t1
/* 67D30 80067130 C50600D8 */  lwc1       $f6, 0xd8($t0)
/* 67D34 80067134 3C013FD0 */  lui        $at, 0x3fd0
/* 67D38 80067138 44819800 */  mtc1       $at, $f19
/* 67D3C 8006713C 44809000 */  mtc1       $zero, $f18
/* 67D40 80067140 46003221 */  cvt.d.s    $f8, $f6
/* 67D44 80067144 3C018014 */  lui        $at, %hi(D_8013F644)
/* 67D48 80067148 46324400 */  add.d      $f16, $f8, $f18
/* 67D4C 8006714C 46208120 */  cvt.s.d    $f4, $f16
/* 67D50 80067150 100005C9 */  b          .L80068878
/* 67D54 80067154 E424F644 */   swc1      $f4, %lo(D_8013F644)($at)
.L80067158:
/* 67D58 80067158 8FB90048 */  lw         $t9, 0x48($sp)
/* 67D5C 8006715C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 67D60 80067160 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 67D64 80067164 00195080 */  sll        $t2, $t9, 2
/* 67D68 80067168 01595023 */  subu       $t2, $t2, $t9
/* 67D6C 8006716C 000A5080 */  sll        $t2, $t2, 2
/* 67D70 80067170 01595023 */  subu       $t2, $t2, $t9
/* 67D74 80067174 000A5080 */  sll        $t2, $t2, 2
/* 67D78 80067178 01595021 */  addu       $t2, $t2, $t9
/* 67D7C 8006717C 000A5080 */  sll        $t2, $t2, 2
/* 67D80 80067180 01595023 */  subu       $t2, $t2, $t9
/* 67D84 80067184 000A5080 */  sll        $t2, $t2, 2
/* 67D88 80067188 01AA5821 */  addu       $t3, $t5, $t2
/* 67D8C 8006718C C56A00D8 */  lwc1       $f10, 0xd8($t3)
/* 67D90 80067190 3C013FD0 */  lui        $at, 0x3fd0
/* 67D94 80067194 44814800 */  mtc1       $at, $f9
/* 67D98 80067198 44804000 */  mtc1       $zero, $f8
/* 67D9C 8006719C 460051A1 */  cvt.d.s    $f6, $f10
/* 67DA0 800671A0 3C018014 */  lui        $at, %hi(D_8013F644)
/* 67DA4 800671A4 46283481 */  sub.d      $f18, $f6, $f8
/* 67DA8 800671A8 46209420 */  cvt.s.d    $f16, $f18
/* 67DAC 800671AC 100005B2 */  b          .L80068878
/* 67DB0 800671B0 E430F644 */   swc1      $f16, %lo(D_8013F644)($at)
.L800671B4:
/* 67DB4 800671B4 240F0001 */  addiu      $t7, $zero, 1
/* 67DB8 800671B8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67DBC 800671BC AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 67DC0 800671C0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67DC4 800671C4 24180006 */  addiu      $t8, $zero, 6
/* 67DC8 800671C8 100005AB */  b          .L80068878
/* 67DCC 800671CC AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
/* 67DD0 800671D0 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67DD4 800671D4 C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 67DD8 800671D8 3C014024 */  lui        $at, 0x4024
/* 67DDC 800671DC 44813800 */  mtc1       $at, $f7
/* 67DE0 800671E0 44803000 */  mtc1       $zero, $f6
/* 67DE4 800671E4 460022A1 */  cvt.d.s    $f10, $f4
/* 67DE8 800671E8 462A303E */  c.le.d     $f6, $f10
/* 67DEC 800671EC 00000000 */  nop
/* 67DF0 800671F0 45000008 */  bc1f       .L80067214
/* 67DF4 800671F4 00000000 */   nop
/* 67DF8 800671F8 240E0001 */  addiu      $t6, $zero, 1
/* 67DFC 800671FC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67E00 80067200 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 67E04 80067204 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67E08 80067208 240C0006 */  addiu      $t4, $zero, 6
/* 67E0C 8006720C 1000059A */  b          .L80068878
/* 67E10 80067210 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L80067214:
/* 67E14 80067214 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67E18 80067218 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 67E1C 8006721C 3C014014 */  lui        $at, 0x4014
/* 67E20 80067220 44818800 */  mtc1       $at, $f17
/* 67E24 80067224 44808000 */  mtc1       $zero, $f16
/* 67E28 80067228 460044A1 */  cvt.d.s    $f18, $f8
/* 67E2C 8006722C 4630903C */  c.lt.d     $f18, $f16
/* 67E30 80067230 00000000 */  nop
/* 67E34 80067234 45000006 */  bc1f       .L80067250
/* 67E38 80067238 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67E3C 8006723C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67E40 80067240 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67E44 80067244 24090002 */  addiu      $t1, $zero, 2
/* 67E48 80067248 1000058B */  b          .L80068878
/* 67E4C 8006724C AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
.L80067250:
/* 67E50 80067250 24080001 */  addiu      $t0, $zero, 1
/* 67E54 80067254 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67E58 80067258 AC28F61C */  sw         $t0, %lo(D_8013F61C)($at)
/* 67E5C 8006725C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67E60 80067260 10000585 */  b          .L80068878
/* 67E64 80067264 AC20F610 */   sw        $zero, %lo(D_8013F610)($at)
/* 67E68 80067268 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67E6C 8006726C C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 67E70 80067270 3C014024 */  lui        $at, 0x4024
/* 67E74 80067274 44813800 */  mtc1       $at, $f7
/* 67E78 80067278 44803000 */  mtc1       $zero, $f6
/* 67E7C 8006727C 460022A1 */  cvt.d.s    $f10, $f4
/* 67E80 80067280 462A303E */  c.le.d     $f6, $f10
/* 67E84 80067284 00000000 */  nop
/* 67E88 80067288 45000006 */  bc1f       .L800672A4
/* 67E8C 8006728C 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67E90 80067290 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67E94 80067294 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67E98 80067298 24190004 */  addiu      $t9, $zero, 4
/* 67E9C 8006729C 10000576 */  b          .L80068878
/* 67EA0 800672A0 AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
.L800672A4:
/* 67EA4 800672A4 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67EA8 800672A8 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 67EAC 800672AC 3C014014 */  lui        $at, 0x4014
/* 67EB0 800672B0 44818800 */  mtc1       $at, $f17
/* 67EB4 800672B4 44808000 */  mtc1       $zero, $f16
/* 67EB8 800672B8 460044A1 */  cvt.d.s    $f18, $f8
/* 67EBC 800672BC 4630903C */  c.lt.d     $f18, $f16
/* 67EC0 800672C0 00000000 */  nop
/* 67EC4 800672C4 45000006 */  bc1f       .L800672E0
/* 67EC8 800672C8 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67ECC 800672CC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67ED0 800672D0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67ED4 800672D4 240D0002 */  addiu      $t5, $zero, 2
/* 67ED8 800672D8 10000567 */  b          .L80068878
/* 67EDC 800672DC AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L800672E0:
/* 67EE0 800672E0 240A0001 */  addiu      $t2, $zero, 1
/* 67EE4 800672E4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67EE8 800672E8 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 67EEC 800672EC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67EF0 800672F0 10000561 */  b          .L80068878
/* 67EF4 800672F4 AC20F610 */   sw        $zero, %lo(D_8013F610)($at)
/* 67EF8 800672F8 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67EFC 800672FC C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 67F00 80067300 3C014014 */  lui        $at, 0x4014
/* 67F04 80067304 44813800 */  mtc1       $at, $f7
/* 67F08 80067308 44803000 */  mtc1       $zero, $f6
/* 67F0C 8006730C 460022A1 */  cvt.d.s    $f10, $f4
/* 67F10 80067310 4626503C */  c.lt.d     $f10, $f6
/* 67F14 80067314 00000000 */  nop
/* 67F18 80067318 4500001A */  bc1f       .L80067384
/* 67F1C 8006731C 00000000 */   nop
/* 67F20 80067320 240B000C */  addiu      $t3, $zero, 0xc
/* 67F24 80067324 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 67F28 80067328 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 67F2C 8006732C 3C01C030 */  lui        $at, 0xc030
/* 67F30 80067330 44814800 */  mtc1       $at, $f9
/* 67F34 80067334 44804000 */  mtc1       $zero, $f8
/* 67F38 80067338 00000000 */  nop
/* 67F3C 8006733C 4628503E */  c.le.d     $f10, $f8
/* 67F40 80067340 00000000 */  nop
/* 67F44 80067344 45000008 */  bc1f       .L80067368
/* 67F48 80067348 00000000 */   nop
/* 67F4C 8006734C 240F0001 */  addiu      $t7, $zero, 1
/* 67F50 80067350 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67F54 80067354 AC2FF61C */  sw         $t7, %lo(D_8013F61C)($at)
/* 67F58 80067358 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67F5C 8006735C 2418005D */  addiu      $t8, $zero, 0x5d
/* 67F60 80067360 10000209 */  b          .L80067B88
/* 67F64 80067364 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80067368:
/* 67F68 80067368 240E0001 */  addiu      $t6, $zero, 1
/* 67F6C 8006736C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67F70 80067370 AC2EF61C */  sw         $t6, %lo(D_8013F61C)($at)
/* 67F74 80067374 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67F78 80067378 240C0003 */  addiu      $t4, $zero, 3
/* 67F7C 8006737C 1000053E */  b          .L80068878
/* 67F80 80067380 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L80067384:
/* 67F84 80067384 2409000C */  addiu      $t1, $zero, 0xc
/* 67F88 80067388 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 67F8C 8006738C AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 67F90 80067390 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67F94 80067394 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 67F98 80067398 3C014024 */  lui        $at, 0x4024
/* 67F9C 8006739C 44812800 */  mtc1       $at, $f5
/* 67FA0 800673A0 44802000 */  mtc1       $zero, $f4
/* 67FA4 800673A4 46009421 */  cvt.d.s    $f16, $f18
/* 67FA8 800673A8 4624803C */  c.lt.d     $f16, $f4
/* 67FAC 800673AC 00000000 */  nop
/* 67FB0 800673B0 45000006 */  bc1f       .L800673CC
/* 67FB4 800673B4 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 67FB8 800673B8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67FBC 800673BC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67FC0 800673C0 240800A5 */  addiu      $t0, $zero, 0xa5
/* 67FC4 800673C4 1000052C */  b          .L80068878
/* 67FC8 800673C8 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L800673CC:
/* 67FCC 800673CC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 67FD0 800673D0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 67FD4 800673D4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 67FD8 800673D8 24190005 */  addiu      $t9, $zero, 5
/* 67FDC 800673DC 10000526 */  b          .L80068878
/* 67FE0 800673E0 AC39F610 */   sw        $t9, %lo(D_8013F610)($at)
/* 67FE4 800673E4 3C018014 */  lui        $at, %hi(D_8013F620)
/* 67FE8 800673E8 C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 67FEC 800673EC 3C01C030 */  lui        $at, 0xc030
/* 67FF0 800673F0 44814800 */  mtc1       $at, $f9
/* 67FF4 800673F4 44804000 */  mtc1       $zero, $f8
/* 67FF8 800673F8 460032A1 */  cvt.d.s    $f10, $f6
/* 67FFC 800673FC 4628503E */  c.le.d     $f10, $f8
/* 68000 80067400 00000000 */  nop
/* 68004 80067404 4500000B */  bc1f       .L80067434
/* 68008 80067408 00000000 */   nop
/* 6800C 8006740C 240D000C */  addiu      $t5, $zero, 0xc
/* 68010 80067410 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 68014 80067414 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 68018 80067418 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6801C 8006741C 240A0001 */  addiu      $t2, $zero, 1
/* 68020 80067420 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 68024 80067424 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68028 80067428 240B005D */  addiu      $t3, $zero, 0x5d
/* 6802C 8006742C 10000512 */  b          .L80068878
/* 68030 80067430 AC2BF610 */   sw        $t3, %lo(D_8013F610)($at)
.L80067434:
/* 68034 80067434 240F000C */  addiu      $t7, $zero, 0xc
/* 68038 80067438 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6803C 8006743C AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 68040 80067440 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68044 80067444 24180001 */  addiu      $t8, $zero, 1
/* 68048 80067448 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 6804C 8006744C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68050 80067450 240E0003 */  addiu      $t6, $zero, 3
/* 68054 80067454 10000508 */  b          .L80068878
/* 68058 80067458 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
/* 6805C 8006745C 240C0001 */  addiu      $t4, $zero, 1
/* 68060 80067460 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68064 80067464 AC2CF61C */  sw         $t4, %lo(D_8013F61C)($at)
/* 68068 80067468 3C018014 */  lui        $at, %hi(D_8013F620)
/* 6806C 8006746C C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 68070 80067470 3C01C030 */  lui        $at, 0xc030
/* 68074 80067474 44812800 */  mtc1       $at, $f5
/* 68078 80067478 44802000 */  mtc1       $zero, $f4
/* 6807C 8006747C 46009421 */  cvt.d.s    $f16, $f18
/* 68080 80067480 4630203C */  c.lt.d     $f4, $f16
/* 68084 80067484 00000000 */  nop
/* 68088 80067488 450004FB */  bc1f       .L80068878
/* 6808C 8006748C 00000000 */   nop
/* 68090 80067490 2409005E */  addiu      $t1, $zero, 0x5e
/* 68094 80067494 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68098 80067498 100004F7 */  b          .L80068878
/* 6809C 8006749C AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
/* 680A0 800674A0 3C018014 */  lui        $at, %hi(D_8013F620)
/* 680A4 800674A4 C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 680A8 800674A8 3C014014 */  lui        $at, 0x4014
/* 680AC 800674AC 44814800 */  mtc1       $at, $f9
/* 680B0 800674B0 44804000 */  mtc1       $zero, $f8
/* 680B4 800674B4 460032A1 */  cvt.d.s    $f10, $f6
/* 680B8 800674B8 4628503C */  c.lt.d     $f10, $f8
/* 680BC 800674BC 00000000 */  nop
/* 680C0 800674C0 45000019 */  bc1f       .L80067528
/* 680C4 800674C4 00000000 */   nop
/* 680C8 800674C8 2408000C */  addiu      $t0, $zero, 0xc
/* 680CC 800674CC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 680D0 800674D0 AC28F60C */  sw         $t0, %lo(D_8013F60C)($at)
/* 680D4 800674D4 3C01C030 */  lui        $at, 0xc030
/* 680D8 800674D8 44819800 */  mtc1       $at, $f19
/* 680DC 800674DC 44809000 */  mtc1       $zero, $f18
/* 680E0 800674E0 00000000 */  nop
/* 680E4 800674E4 462A903C */  c.lt.d     $f18, $f10
/* 680E8 800674E8 00000000 */  nop
/* 680EC 800674EC 45000008 */  bc1f       .L80067510
/* 680F0 800674F0 00000000 */   nop
/* 680F4 800674F4 24190001 */  addiu      $t9, $zero, 1
/* 680F8 800674F8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 680FC 800674FC AC39F61C */  sw         $t9, %lo(D_8013F61C)($at)
/* 68100 80067500 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68104 80067504 240D0003 */  addiu      $t5, $zero, 3
/* 68108 80067508 1000019F */  b          .L80067B88
/* 6810C 8006750C AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80067510:
/* 68110 80067510 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68114 80067514 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68118 80067518 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6811C 8006751C 240A005D */  addiu      $t2, $zero, 0x5d
/* 68120 80067520 100004D5 */  b          .L80068878
/* 68124 80067524 AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
.L80067528:
/* 68128 80067528 240B000C */  addiu      $t3, $zero, 0xc
/* 6812C 8006752C 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 68130 80067530 AC2BF60C */  sw         $t3, %lo(D_8013F60C)($at)
/* 68134 80067534 3C018014 */  lui        $at, %hi(D_8013F620)
/* 68138 80067538 C430F620 */  lwc1       $f16, %lo(D_8013F620)($at)
/* 6813C 8006753C 3C014024 */  lui        $at, 0x4024
/* 68140 80067540 44813800 */  mtc1       $at, $f7
/* 68144 80067544 44803000 */  mtc1       $zero, $f6
/* 68148 80067548 46008121 */  cvt.d.s    $f4, $f16
/* 6814C 8006754C 4626203C */  c.lt.d     $f4, $f6
/* 68150 80067550 00000000 */  nop
/* 68154 80067554 45000006 */  bc1f       .L80067570
/* 68158 80067558 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 6815C 8006755C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68160 80067560 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68164 80067564 240F00A5 */  addiu      $t7, $zero, 0xa5
/* 68168 80067568 100004C3 */  b          .L80068878
/* 6816C 8006756C AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80067570:
/* 68170 80067570 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68174 80067574 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68178 80067578 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6817C 8006757C 24180005 */  addiu      $t8, $zero, 5
/* 68180 80067580 100004BD */  b          .L80068878
/* 68184 80067584 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80067588:
/* 68188 80067588 0C018089 */  jal        func_80060224
/* 6818C 8006758C 8FA40048 */   lw        $a0, 0x48($sp)
/* 68190 80067590 144004B9 */  bnez       $v0, .L80068878
/* 68194 80067594 00000000 */   nop
/* 68198 80067598 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 6819C 8006759C 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 681A0 800675A0 2A01007F */  slti       $at, $s0, 0x7f
/* 681A4 800675A4 1420000B */  bnez       $at, .L800675D4
/* 681A8 800675A8 2401007F */   addiu     $at, $zero, 0x7f
/* 681AC 800675AC 120100A8 */  beq        $s0, $at, .L80067850
/* 681B0 800675B0 240100A5 */   addiu     $at, $zero, 0xa5
/* 681B4 800675B4 1201011F */  beq        $s0, $at, .L80067A34
/* 681B8 800675B8 240100AC */   addiu     $at, $zero, 0xac
/* 681BC 800675BC 1201004A */  beq        $s0, $at, .L800676E8
/* 681C0 800675C0 240100AD */   addiu     $at, $zero, 0xad
/* 681C4 800675C4 1201009B */  beq        $s0, $at, .L80067834
/* 681C8 800675C8 00000000 */   nop
/* 681CC 800675CC 100004AA */  b          .L80068878
/* 681D0 800675D0 00000000 */   nop
.L800675D4:
/* 681D4 800675D4 24010003 */  addiu      $at, $zero, 3
/* 681D8 800675D8 1201009D */  beq        $s0, $at, .L80067850
/* 681DC 800675DC 24010005 */   addiu     $at, $zero, 5
/* 681E0 800675E0 1201013E */  beq        $s0, $at, .L80067ADC
/* 681E4 800675E4 2401005D */   addiu     $at, $zero, 0x5d
/* 681E8 800675E8 120100F8 */  beq        $s0, $at, .L800679CC
/* 681EC 800675EC 24010071 */   addiu     $at, $zero, 0x71
/* 681F0 800675F0 12010005 */  beq        $s0, $at, .L80067608
/* 681F4 800675F4 2401007E */   addiu     $at, $zero, 0x7e
/* 681F8 800675F8 12010095 */  beq        $s0, $at, .L80067850
/* 681FC 800675FC 00000000 */   nop
/* 68200 80067600 1000049D */  b          .L80068878
/* 68204 80067604 00000000 */   nop
.L80067608:
/* 68208 80067608 240E00AC */  addiu      $t6, $zero, 0xac
/* 6820C 8006760C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68210 80067610 AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 68214 80067614 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68218 80067618 240C0001 */  addiu      $t4, $zero, 1
/* 6821C 8006761C AC2CF61C */  sw         $t4, %lo(D_8013F61C)($at)
/* 68220 80067620 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 68224 80067624 C428F66C */  lwc1       $f8, %lo(D_8013F66C)($at)
/* 68228 80067628 3C014049 */  lui        $at, 0x4049
/* 6822C 8006762C 44819800 */  mtc1       $at, $f19
/* 68230 80067630 44809000 */  mtc1       $zero, $f18
/* 68234 80067634 460042A1 */  cvt.d.s    $f10, $f8
/* 68238 80067638 4632503C */  c.lt.d     $f10, $f18
/* 6823C 8006763C 00000000 */  nop
/* 68240 80067640 45000286 */  bc1f       .L8006805C
/* 68244 80067644 00000000 */   nop
/* 68248 80067648 8FA80048 */  lw         $t0, 0x48($sp)
/* 6824C 8006764C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 68250 80067650 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 68254 80067654 0008C880 */  sll        $t9, $t0, 2
/* 68258 80067658 0328C823 */  subu       $t9, $t9, $t0
/* 6825C 8006765C 0019C880 */  sll        $t9, $t9, 2
/* 68260 80067660 0328C823 */  subu       $t9, $t9, $t0
/* 68264 80067664 0019C880 */  sll        $t9, $t9, 2
/* 68268 80067668 0328C821 */  addu       $t9, $t9, $t0
/* 6826C 8006766C 0019C880 */  sll        $t9, $t9, 2
/* 68270 80067670 0328C823 */  subu       $t9, $t9, $t0
/* 68274 80067674 0019C880 */  sll        $t9, $t9, 2
/* 68278 80067678 01396821 */  addu       $t5, $t1, $t9
/* 6827C 8006767C C5B000E4 */  lwc1       $f16, 0xe4($t5)
/* 68280 80067680 3C014043 */  lui        $at, 0x4043
/* 68284 80067684 44813800 */  mtc1       $at, $f7
/* 68288 80067688 44803000 */  mtc1       $zero, $f6
/* 6828C 8006768C 46008121 */  cvt.d.s    $f4, $f16
/* 68290 80067690 3C018014 */  lui        $at, 0x8014
/* 68294 80067694 46262200 */  add.d      $f8, $f4, $f6
/* 68298 80067698 240A0001 */  addiu      $t2, $zero, 1
/* 6829C 8006769C 3C068014 */  lui        $a2, %hi(D_8013F640)
/* 682A0 800676A0 3C078014 */  lui        $a3, %hi(D_8013F648)
/* 682A4 800676A4 462042A0 */  cvt.s.d    $f10, $f8
/* 682A8 800676A8 24E7F648 */  addiu      $a3, $a3, %lo(D_8013F648)
/* 682AC 800676AC 24C6F640 */  addiu      $a2, $a2, %lo(D_8013F640)
/* 682B0 800676B0 01002825 */  or         $a1, $t0, $zero
/* 682B4 800676B4 E42AF638 */  swc1       $f10, -0x9c8($at)
/* 682B8 800676B8 3C014150 */  lui        $at, 0x4150
/* 682BC 800676BC 44819000 */  mtc1       $at, $f18
/* 682C0 800676C0 3C018014 */  lui        $at, %hi(D_8013F644)
/* 682C4 800676C4 E432F644 */  swc1       $f18, %lo(D_8013F644)($at)
/* 682C8 800676C8 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 682CC 800676CC AC2A7D68 */  sw         $t2, %lo(D_800D7D68)($at)
/* 682D0 800676D0 3C014100 */  lui        $at, 0x4100
/* 682D4 800676D4 44816000 */  mtc1       $at, $f12
/* 682D8 800676D8 0C01A226 */  jal        func_80068898
/* 682DC 800676DC 00000000 */   nop
/* 682E0 800676E0 10000465 */  b          .L80068878
/* 682E4 800676E4 00000000 */   nop
.L800676E8:
/* 682E8 800676E8 3C018014 */  lui        $at, %hi(D_8013F66C)
/* 682EC 800676EC C430F66C */  lwc1       $f16, %lo(D_8013F66C)($at)
/* 682F0 800676F0 3C01800E */  lui        $at, %hi(D_800DE3D0)
/* 682F4 800676F4 D426E3D0 */  ldc1       $f6, %lo(D_800DE3D0)($at)
/* 682F8 800676F8 46008121 */  cvt.d.s    $f4, $f16
/* 682FC 800676FC 4626203C */  c.lt.d     $f4, $f6
/* 68300 80067700 00000000 */  nop
/* 68304 80067704 45010011 */  bc1t       .L8006774C
/* 68308 80067708 00000000 */   nop
/* 6830C 8006770C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 68310 80067710 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 68314 80067714 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 68318 80067718 000FC080 */  sll        $t8, $t7, 2
/* 6831C 8006771C 030FC023 */  subu       $t8, $t8, $t7
/* 68320 80067720 0018C080 */  sll        $t8, $t8, 2
/* 68324 80067724 030FC023 */  subu       $t8, $t8, $t7
/* 68328 80067728 0018C080 */  sll        $t8, $t8, 2
/* 6832C 8006772C 030FC021 */  addu       $t8, $t8, $t7
/* 68330 80067730 0018C080 */  sll        $t8, $t8, 2
/* 68334 80067734 030FC023 */  subu       $t8, $t8, $t7
/* 68338 80067738 0018C080 */  sll        $t8, $t8, 2
/* 6833C 8006773C 01787021 */  addu       $t6, $t3, $t8
/* 68340 80067740 8DCC0058 */  lw         $t4, 0x58($t6)
/* 68344 80067744 24010004 */  addiu      $at, $zero, 4
/* 68348 80067748 15810006 */  bne        $t4, $at, .L80067764
.L8006774C:
/* 6834C 8006774C 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 68350 80067750 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68354 80067754 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68358 80067758 240900AD */  addiu      $t1, $zero, 0xad
/* 6835C 8006775C 1000023F */  b          .L8006805C
/* 68360 80067760 AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
.L80067764:
/* 68364 80067764 8FB9004C */  lw         $t9, 0x4c($sp)
/* 68368 80067768 3C010002 */  lui        $at, 2
/* 6836C 8006776C 8F2D0000 */  lw         $t5, ($t9)
/* 68370 80067770 01A15024 */  and        $t2, $t5, $at
/* 68374 80067774 11400018 */  beqz       $t2, .L800677D8
/* 68378 80067778 00000000 */   nop
/* 6837C 8006777C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 68380 80067780 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 68384 80067784 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 68388 80067788 000F5880 */  sll        $t3, $t7, 2
/* 6838C 8006778C 016F5823 */  subu       $t3, $t3, $t7
/* 68390 80067790 000B5880 */  sll        $t3, $t3, 2
/* 68394 80067794 016F5823 */  subu       $t3, $t3, $t7
/* 68398 80067798 000B5880 */  sll        $t3, $t3, 2
/* 6839C 8006779C 016F5821 */  addu       $t3, $t3, $t7
/* 683A0 800677A0 000B5880 */  sll        $t3, $t3, 2
/* 683A4 800677A4 016F5823 */  subu       $t3, $t3, $t7
/* 683A8 800677A8 000B5880 */  sll        $t3, $t3, 2
/* 683AC 800677AC 010BC021 */  addu       $t8, $t0, $t3
/* 683B0 800677B0 C70800D8 */  lwc1       $f8, 0xd8($t8)
/* 683B4 800677B4 3C013FD0 */  lui        $at, 0x3fd0
/* 683B8 800677B8 44819800 */  mtc1       $at, $f19
/* 683BC 800677BC 44809000 */  mtc1       $zero, $f18
/* 683C0 800677C0 460042A1 */  cvt.d.s    $f10, $f8
/* 683C4 800677C4 3C018014 */  lui        $at, %hi(D_8013F644)
/* 683C8 800677C8 46325400 */  add.d      $f16, $f10, $f18
/* 683CC 800677CC 46208120 */  cvt.s.d    $f4, $f16
/* 683D0 800677D0 10000222 */  b          .L8006805C
/* 683D4 800677D4 E424F644 */   swc1      $f4, %lo(D_8013F644)($at)
.L800677D8:
/* 683D8 800677D8 8FAC0048 */  lw         $t4, 0x48($sp)
/* 683DC 800677DC 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 683E0 800677E0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 683E4 800677E4 000C4880 */  sll        $t1, $t4, 2
/* 683E8 800677E8 012C4823 */  subu       $t1, $t1, $t4
/* 683EC 800677EC 00094880 */  sll        $t1, $t1, 2
/* 683F0 800677F0 012C4823 */  subu       $t1, $t1, $t4
/* 683F4 800677F4 00094880 */  sll        $t1, $t1, 2
/* 683F8 800677F8 012C4821 */  addu       $t1, $t1, $t4
/* 683FC 800677FC 00094880 */  sll        $t1, $t1, 2
/* 68400 80067800 012C4823 */  subu       $t1, $t1, $t4
/* 68404 80067804 00094880 */  sll        $t1, $t1, 2
/* 68408 80067808 01C9C821 */  addu       $t9, $t6, $t1
/* 6840C 8006780C C72600D8 */  lwc1       $f6, 0xd8($t9)
/* 68410 80067810 3C013FD0 */  lui        $at, 0x3fd0
/* 68414 80067814 44815800 */  mtc1       $at, $f11
/* 68418 80067818 44805000 */  mtc1       $zero, $f10
/* 6841C 8006781C 46003221 */  cvt.d.s    $f8, $f6
/* 68420 80067820 3C018014 */  lui        $at, %hi(D_8013F644)
/* 68424 80067824 462A4481 */  sub.d      $f18, $f8, $f10
/* 68428 80067828 46209420 */  cvt.s.d    $f16, $f18
/* 6842C 8006782C 10000412 */  b          .L80068878
/* 68430 80067830 E430F644 */   swc1      $f16, %lo(D_8013F644)($at)
.L80067834:
/* 68434 80067834 240D0001 */  addiu      $t5, $zero, 1
/* 68438 80067838 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6843C 8006783C AC2DF61C */  sw         $t5, %lo(D_8013F61C)($at)
/* 68440 80067840 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68444 80067844 240A0003 */  addiu      $t2, $zero, 3
/* 68448 80067848 1000040B */  b          .L80068878
/* 6844C 8006784C AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
.L80067850:
/* 68450 80067850 3C018014 */  lui        $at, %hi(D_8013F620)
/* 68454 80067854 C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 68458 80067858 3C014014 */  lui        $at, 0x4014
/* 6845C 8006785C 44814800 */  mtc1       $at, $f9
/* 68460 80067860 44804000 */  mtc1       $zero, $f8
/* 68464 80067864 460021A1 */  cvt.d.s    $f6, $f4
/* 68468 80067868 4626403E */  c.le.d     $f8, $f6
/* 6846C 8006786C 00000000 */  nop
/* 68470 80067870 45000013 */  bc1f       .L800678C0
/* 68474 80067874 3C014024 */   lui       $at, 0x4024
/* 68478 80067878 44815800 */  mtc1       $at, $f11
/* 6847C 8006787C 44805000 */  mtc1       $zero, $f10
/* 68480 80067880 00000000 */  nop
/* 68484 80067884 462A303C */  c.lt.d     $f6, $f10
/* 68488 80067888 00000000 */  nop
/* 6848C 8006788C 45000006 */  bc1f       .L800678A8
/* 68490 80067890 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 68494 80067894 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68498 80067898 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6849C 8006789C 240F00A5 */  addiu      $t7, $zero, 0xa5
/* 684A0 800678A0 100000B9 */  b          .L80067B88
/* 684A4 800678A4 AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L800678A8:
/* 684A8 800678A8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 684AC 800678AC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 684B0 800678B0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 684B4 800678B4 24080005 */  addiu      $t0, $zero, 5
/* 684B8 800678B8 100001E8 */  b          .L8006805C
/* 684BC 800678BC AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L800678C0:
/* 684C0 800678C0 3C018014 */  lui        $at, %hi(D_8013F620)
/* 684C4 800678C4 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 684C8 800678C8 3C01C030 */  lui        $at, 0xc030
/* 684CC 800678CC 44812800 */  mtc1       $at, $f5
/* 684D0 800678D0 44802000 */  mtc1       $zero, $f4
/* 684D4 800678D4 46009421 */  cvt.d.s    $f16, $f18
/* 684D8 800678D8 4624803E */  c.le.d     $f16, $f4
/* 684DC 800678DC 00000000 */  nop
/* 684E0 800678E0 45000008 */  bc1f       .L80067904
/* 684E4 800678E4 00000000 */   nop
/* 684E8 800678E8 240B0001 */  addiu      $t3, $zero, 1
/* 684EC 800678EC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 684F0 800678F0 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
/* 684F4 800678F4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 684F8 800678F8 2418005D */  addiu      $t8, $zero, 0x5d
/* 684FC 800678FC 100001D7 */  b          .L8006805C
/* 68500 80067900 AC38F610 */   sw        $t8, %lo(D_8013F610)($at)
.L80067904:
/* 68504 80067904 8FAC004C */  lw         $t4, 0x4c($sp)
/* 68508 80067908 3C010002 */  lui        $at, 2
/* 6850C 8006790C 8D8E0000 */  lw         $t6, ($t4)
/* 68510 80067910 01C14824 */  and        $t1, $t6, $at
/* 68514 80067914 112001D1 */  beqz       $t1, .L8006805C
/* 68518 80067918 00000000 */   nop
/* 6851C 8006791C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 68520 80067920 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 68524 80067924 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 68528 80067928 000D5080 */  sll        $t2, $t5, 2
/* 6852C 8006792C 014D5023 */  subu       $t2, $t2, $t5
/* 68530 80067930 000A5080 */  sll        $t2, $t2, 2
/* 68534 80067934 014D5023 */  subu       $t2, $t2, $t5
/* 68538 80067938 000A5080 */  sll        $t2, $t2, 2
/* 6853C 8006793C 014D5021 */  addu       $t2, $t2, $t5
/* 68540 80067940 000A5080 */  sll        $t2, $t2, 2
/* 68544 80067944 014D5023 */  subu       $t2, $t2, $t5
/* 68548 80067948 000A5080 */  sll        $t2, $t2, 2
/* 6854C 8006794C 3C018014 */  lui        $at, %hi(D_8013F660)
/* 68550 80067950 032A7821 */  addu       $t7, $t9, $t2
/* 68554 80067954 C5E800E4 */  lwc1       $f8, 0xe4($t7)
/* 68558 80067958 C426F660 */  lwc1       $f6, %lo(D_8013F660)($at)
/* 6855C 8006795C 3C0142C8 */  lui        $at, 0x42c8
/* 68560 80067960 44819000 */  mtc1       $at, $f18
/* 68564 80067964 46083281 */  sub.s      $f10, $f6, $f8
/* 68568 80067968 3C01437A */  lui        $at, 0x437a
/* 6856C 8006796C 44812000 */  mtc1       $at, $f4
/* 68570 80067970 46125400 */  add.s      $f16, $f10, $f18
/* 68574 80067974 4610203C */  c.lt.s     $f4, $f16
/* 68578 80067978 00000000 */  nop
/* 6857C 8006797C 450001B7 */  bc1f       .L8006805C
/* 68580 80067980 00000000 */   nop
/* 68584 80067984 24080071 */  addiu      $t0, $zero, 0x71
/* 68588 80067988 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6858C 8006798C AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 68590 80067990 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68594 80067994 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68598 80067998 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 6859C 8006799C 240B0001 */  addiu      $t3, $zero, 1
/* 685A0 800679A0 AC2B7D68 */  sw         $t3, %lo(D_800D7D68)($at)
/* 685A4 800679A4 3C014100 */  lui        $at, 0x4100
/* 685A8 800679A8 44816000 */  mtc1       $at, $f12
/* 685AC 800679AC 3C068014 */  lui        $a2, %hi(D_8013F640)
/* 685B0 800679B0 3C078014 */  lui        $a3, %hi(D_8013F648)
/* 685B4 800679B4 24E7F648 */  addiu      $a3, $a3, %lo(D_8013F648)
/* 685B8 800679B8 24C6F640 */  addiu      $a2, $a2, %lo(D_8013F640)
/* 685BC 800679BC 0C01A226 */  jal        func_80068898
/* 685C0 800679C0 01A02825 */   or        $a1, $t5, $zero
/* 685C4 800679C4 100003AC */  b          .L80068878
/* 685C8 800679C8 00000000 */   nop
.L800679CC:
/* 685CC 800679CC 2418000B */  addiu      $t8, $zero, 0xb
/* 685D0 800679D0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 685D4 800679D4 AC38F60C */  sw         $t8, %lo(D_8013F60C)($at)
/* 685D8 800679D8 3C018014 */  lui        $at, %hi(D_8013F620)
/* 685DC 800679DC C426F620 */  lwc1       $f6, %lo(D_8013F620)($at)
/* 685E0 800679E0 3C01C030 */  lui        $at, 0xc030
/* 685E4 800679E4 44815800 */  mtc1       $at, $f11
/* 685E8 800679E8 44805000 */  mtc1       $zero, $f10
/* 685EC 800679EC 46003221 */  cvt.d.s    $f8, $f6
/* 685F0 800679F0 462A403E */  c.le.d     $f8, $f10
/* 685F4 800679F4 00000000 */  nop
/* 685F8 800679F8 45000008 */  bc1f       .L80067A1C
/* 685FC 800679FC 00000000 */   nop
/* 68600 80067A00 240C0001 */  addiu      $t4, $zero, 1
/* 68604 80067A04 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68608 80067A08 AC2CF61C */  sw         $t4, %lo(D_8013F61C)($at)
/* 6860C 80067A0C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68610 80067A10 240E005C */  addiu      $t6, $zero, 0x5c
/* 68614 80067A14 10000191 */  b          .L8006805C
/* 68618 80067A18 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80067A1C:
/* 6861C 80067A1C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68620 80067A20 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68624 80067A24 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68628 80067A28 2409005E */  addiu      $t1, $zero, 0x5e
/* 6862C 80067A2C 10000392 */  b          .L80068878
/* 68630 80067A30 AC29F610 */   sw        $t1, %lo(D_8013F610)($at)
.L80067A34:
/* 68634 80067A34 3C018014 */  lui        $at, %hi(D_8013F620)
/* 68638 80067A38 C432F620 */  lwc1       $f18, %lo(D_8013F620)($at)
/* 6863C 80067A3C 3C014014 */  lui        $at, 0x4014
/* 68640 80067A40 44812800 */  mtc1       $at, $f5
/* 68644 80067A44 44802000 */  mtc1       $zero, $f4
/* 68648 80067A48 46009421 */  cvt.d.s    $f16, $f18
/* 6864C 80067A4C 4630203E */  c.le.d     $f4, $f16
/* 68650 80067A50 00000000 */  nop
/* 68654 80067A54 45000018 */  bc1f       .L80067AB8
/* 68658 80067A58 00000000 */   nop
/* 6865C 80067A5C 2419000B */  addiu      $t9, $zero, 0xb
/* 68660 80067A60 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 68664 80067A64 AC39F60C */  sw         $t9, %lo(D_8013F60C)($at)
/* 68668 80067A68 3C014024 */  lui        $at, 0x4024
/* 6866C 80067A6C 44813800 */  mtc1       $at, $f7
/* 68670 80067A70 44803000 */  mtc1       $zero, $f6
/* 68674 80067A74 00000000 */  nop
/* 68678 80067A78 4626803C */  c.lt.d     $f16, $f6
/* 6867C 80067A7C 00000000 */  nop
/* 68680 80067A80 45000007 */  bc1f       .L80067AA0
/* 68684 80067A84 00000000 */   nop
/* 68688 80067A88 240A0001 */  addiu      $t2, $zero, 1
/* 6868C 80067A8C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68690 80067A90 AC2AF61C */  sw         $t2, %lo(D_8013F61C)($at)
/* 68694 80067A94 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68698 80067A98 1000003B */  b          .L80067B88
/* 6869C 80067A9C AC20F610 */   sw        $zero, %lo(D_8013F610)($at)
.L80067AA0:
/* 686A0 80067AA0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 686A4 80067AA4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 686A8 80067AA8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 686AC 80067AAC 240F0004 */  addiu      $t7, $zero, 4
/* 686B0 80067AB0 1000016A */  b          .L8006805C
/* 686B4 80067AB4 AC2FF610 */   sw        $t7, %lo(D_8013F610)($at)
.L80067AB8:
/* 686B8 80067AB8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 686BC 80067ABC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 686C0 80067AC0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 686C4 80067AC4 24080002 */  addiu      $t0, $zero, 2
/* 686C8 80067AC8 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 686CC 80067ACC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 686D0 80067AD0 240B000B */  addiu      $t3, $zero, 0xb
/* 686D4 80067AD4 10000368 */  b          .L80068878
/* 686D8 80067AD8 AC2BF60C */   sw        $t3, %lo(D_8013F60C)($at)
.L80067ADC:
/* 686DC 80067ADC 3C018014 */  lui        $at, %hi(D_8013F620)
/* 686E0 80067AE0 C428F620 */  lwc1       $f8, %lo(D_8013F620)($at)
/* 686E4 80067AE4 3C014014 */  lui        $at, 0x4014
/* 686E8 80067AE8 44819800 */  mtc1       $at, $f19
/* 686EC 80067AEC 44809000 */  mtc1       $zero, $f18
/* 686F0 80067AF0 460042A1 */  cvt.d.s    $f10, $f8
/* 686F4 80067AF4 462A903E */  c.le.d     $f18, $f10
/* 686F8 80067AF8 00000000 */  nop
/* 686FC 80067AFC 45000019 */  bc1f       .L80067B64
/* 68700 80067B00 00000000 */   nop
/* 68704 80067B04 240D000B */  addiu      $t5, $zero, 0xb
/* 68708 80067B08 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6870C 80067B0C AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 68710 80067B10 3C014024 */  lui        $at, 0x4024
/* 68714 80067B14 44812800 */  mtc1       $at, $f5
/* 68718 80067B18 44802000 */  mtc1       $zero, $f4
/* 6871C 80067B1C 00000000 */  nop
/* 68720 80067B20 462A203E */  c.le.d     $f4, $f10
/* 68724 80067B24 00000000 */  nop
/* 68728 80067B28 45000008 */  bc1f       .L80067B4C
/* 6872C 80067B2C 00000000 */   nop
/* 68730 80067B30 24180001 */  addiu      $t8, $zero, 1
/* 68734 80067B34 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68738 80067B38 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 6873C 80067B3C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68740 80067B40 240C0006 */  addiu      $t4, $zero, 6
/* 68744 80067B44 10000010 */  b          .L80067B88
/* 68748 80067B48 AC2CF610 */   sw        $t4, %lo(D_8013F610)($at)
.L80067B4C:
/* 6874C 80067B4C 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68750 80067B50 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68754 80067B54 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68758 80067B58 240E000A */  addiu      $t6, $zero, 0xa
/* 6875C 80067B5C 1000013F */  b          .L8006805C
/* 68760 80067B60 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L80067B64:
/* 68764 80067B64 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68768 80067B68 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6876C 80067B6C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68770 80067B70 24090008 */  addiu      $t1, $zero, 8
/* 68774 80067B74 AC29F610 */  sw         $t1, %lo(D_8013F610)($at)
/* 68778 80067B78 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6877C 80067B7C 2419000B */  addiu      $t9, $zero, 0xb
/* 68780 80067B80 1000033D */  b          .L80068878
/* 68784 80067B84 AC39F60C */   sw        $t9, %lo(D_8013F60C)($at)
.L80067B88:
/* 68788 80067B88 1000033B */  b          .L80068878
/* 6878C 80067B8C 00000000 */   nop
.L80067B90:
/* 68790 80067B90 8FA4004C */  lw         $a0, 0x4c($sp)
/* 68794 80067B94 0C018727 */  jal        func_80061C9C
/* 68798 80067B98 8FA50048 */   lw        $a1, 0x48($sp)
/* 6879C 80067B9C 10000336 */  b          .L80068878
/* 687A0 80067BA0 00000000 */   nop
.L80067BA4:
/* 687A4 80067BA4 8FAF0048 */  lw         $t7, 0x48($sp)
/* 687A8 80067BA8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 687AC 80067BAC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 687B0 80067BB0 000F4080 */  sll        $t0, $t7, 2
/* 687B4 80067BB4 010F4023 */  subu       $t0, $t0, $t7
/* 687B8 80067BB8 00084080 */  sll        $t0, $t0, 2
/* 687BC 80067BBC 010F4023 */  subu       $t0, $t0, $t7
/* 687C0 80067BC0 00084080 */  sll        $t0, $t0, 2
/* 687C4 80067BC4 010F4021 */  addu       $t0, $t0, $t7
/* 687C8 80067BC8 00084080 */  sll        $t0, $t0, 2
/* 687CC 80067BCC 010F4023 */  subu       $t0, $t0, $t7
/* 687D0 80067BD0 44808000 */  mtc1       $zero, $f16
/* 687D4 80067BD4 00084080 */  sll        $t0, $t0, 2
/* 687D8 80067BD8 01485821 */  addu       $t3, $t2, $t0
/* 687DC 80067BDC 44803000 */  mtc1       $zero, $f6
/* 687E0 80067BE0 AD600060 */  sw         $zero, 0x60($t3)
/* 687E4 80067BE4 3C018014 */  lui        $at, %hi(D_8013F654)
/* 687E8 80067BE8 E430F654 */  swc1       $f16, %lo(D_8013F654)($at)
/* 687EC 80067BEC 44804000 */  mtc1       $zero, $f8
/* 687F0 80067BF0 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 687F4 80067BF4 3C108014 */  lui        $s0, %hi(D_8013F610)
/* 687F8 80067BF8 E426F64C */  swc1       $f6, %lo(D_8013F64C)($at)
/* 687FC 80067BFC 8E10F610 */  lw         $s0, %lo(D_8013F610)($s0)
/* 68800 80067C00 3C018014 */  lui        $at, %hi(D_8013F650)
/* 68804 80067C04 E428F650 */  swc1       $f8, %lo(D_8013F650)($at)
/* 68808 80067C08 2401003B */  addiu      $at, $zero, 0x3b
/* 6880C 80067C0C 12010051 */  beq        $s0, $at, .L80067D54
/* 68810 80067C10 24010043 */   addiu     $at, $zero, 0x43
/* 68814 80067C14 12010084 */  beq        $s0, $at, .L80067E28
/* 68818 80067C18 24010046 */   addiu     $at, $zero, 0x46
/* 6881C 80067C1C 12010082 */  beq        $s0, $at, .L80067E28
/* 68820 80067C20 2401006B */   addiu     $at, $zero, 0x6b
/* 68824 80067C24 12010009 */  beq        $s0, $at, .L80067C4C
/* 68828 80067C28 240100B9 */   addiu     $at, $zero, 0xb9
/* 6882C 80067C2C 1201006F */  beq        $s0, $at, .L80067DEC
/* 68830 80067C30 240100BA */   addiu     $at, $zero, 0xba
/* 68834 80067C34 1201006D */  beq        $s0, $at, .L80067DEC
/* 68838 80067C38 240100C9 */   addiu     $at, $zero, 0xc9
/* 6883C 80067C3C 120100A5 */  beq        $s0, $at, .L80067ED4
/* 68840 80067C40 00000000 */   nop
/* 68844 80067C44 1000030C */  b          .L80068878
/* 68848 80067C48 00000000 */   nop
.L80067C4C:
/* 6884C 80067C4C 3C0D8014 */  lui        $t5, %hi(D_8013F62C)
/* 68850 80067C50 8DADF62C */  lw         $t5, %lo(D_8013F62C)($t5)
/* 68854 80067C54 2401FFFF */  addiu      $at, $zero, -1
/* 68858 80067C58 15A10307 */  bne        $t5, $at, .L80068878
/* 6885C 80067C5C 00000000 */   nop
/* 68860 80067C60 3C188014 */  lui        $t8, %hi(D_8013F600)
/* 68864 80067C64 8F18F600 */  lw         $t8, %lo(D_8013F600)($t8)
/* 68868 80067C68 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6886C 80067C6C AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 68870 80067C70 1300002C */  beqz       $t8, .L80067D24
/* 68874 80067C74 00000000 */   nop
/* 68878 80067C78 3C0C8014 */  lui        $t4, %hi(D_8013F628)
/* 6887C 80067C7C 8D8CF628 */  lw         $t4, %lo(D_8013F628)($t4)
/* 68880 80067C80 3C018014 */  lui        $at, %hi(D_8013F628)
/* 68884 80067C84 258EFFFF */  addiu      $t6, $t4, -1
/* 68888 80067C88 1DC000F4 */  bgtz       $t6, .L8006805C
/* 6888C 80067C8C AC2EF628 */   sw        $t6, %lo(D_8013F628)($at)
/* 68890 80067C90 8FB90048 */  lw         $t9, 0x48($sp)
/* 68894 80067C94 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 68898 80067C98 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 6889C 80067C9C 00197880 */  sll        $t7, $t9, 2
/* 688A0 80067CA0 01F97823 */  subu       $t7, $t7, $t9
/* 688A4 80067CA4 000F7880 */  sll        $t7, $t7, 2
/* 688A8 80067CA8 01F97823 */  subu       $t7, $t7, $t9
/* 688AC 80067CAC 000F7880 */  sll        $t7, $t7, 2
/* 688B0 80067CB0 01F97821 */  addu       $t7, $t7, $t9
/* 688B4 80067CB4 000F7880 */  sll        $t7, $t7, 2
/* 688B8 80067CB8 01F97823 */  subu       $t7, $t7, $t9
/* 688BC 80067CBC 000F7880 */  sll        $t7, $t7, 2
/* 688C0 80067CC0 012F5021 */  addu       $t2, $t1, $t7
/* 688C4 80067CC4 C5520024 */  lwc1       $f18, 0x24($t2)
/* 688C8 80067CC8 44805000 */  mtc1       $zero, $f10
/* 688CC 80067CCC 00000000 */  nop
/* 688D0 80067CD0 4612503C */  c.lt.s     $f10, $f18
/* 688D4 80067CD4 00000000 */  nop
/* 688D8 80067CD8 450000E0 */  bc1f       .L8006805C
/* 688DC 80067CDC 00000000 */   nop
/* 688E0 80067CE0 C54400D8 */  lwc1       $f4, 0xd8($t2)
/* 688E4 80067CE4 3C01C000 */  lui        $at, 0xc000
/* 688E8 80067CE8 44813800 */  mtc1       $at, $f7
/* 688EC 80067CEC 44803000 */  mtc1       $zero, $f6
/* 688F0 80067CF0 46002421 */  cvt.d.s    $f16, $f4
/* 688F4 80067CF4 4630303E */  c.le.d     $f6, $f16
/* 688F8 80067CF8 00000000 */  nop
/* 688FC 80067CFC 450000D7 */  bc1f       .L8006805C
/* 68900 80067D00 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 68904 80067D04 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68908 80067D08 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6890C 80067D0C 24080046 */  addiu      $t0, $zero, 0x46
/* 68910 80067D10 44804000 */  mtc1       $zero, $f8
/* 68914 80067D14 AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 68918 80067D18 3C018014 */  lui        $at, %hi(D_8013F658)
/* 6891C 80067D1C 100002D6 */  b          .L80068878
/* 68920 80067D20 E428F658 */   swc1      $f8, %lo(D_8013F658)($at)
.L80067D24:
/* 68924 80067D24 8FAB004C */  lw         $t3, 0x4c($sp)
/* 68928 80067D28 8D6D0000 */  lw         $t5, ($t3)
/* 6892C 80067D2C 11A002D2 */  beqz       $t5, .L80068878
/* 68930 80067D30 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 68934 80067D34 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68938 80067D38 3C018014 */  lui        $at, %hi(D_8013F610)
/* 6893C 80067D3C 24180046 */  addiu      $t8, $zero, 0x46
/* 68940 80067D40 44809000 */  mtc1       $zero, $f18
/* 68944 80067D44 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 68948 80067D48 3C018014 */  lui        $at, %hi(D_8013F658)
/* 6894C 80067D4C 100002CA */  b          .L80068878
/* 68950 80067D50 E432F658 */   swc1      $f18, %lo(D_8013F658)($at)
.L80067D54:
/* 68954 80067D54 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* 68958 80067D58 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* 6895C 80067D5C 8FAC0048 */  lw         $t4, 0x48($sp)
/* 68960 80067D60 158E000D */  bne        $t4, $t6, .L80067D98
/* 68964 80067D64 00000000 */   nop
/* 68968 80067D68 8FB9004C */  lw         $t9, 0x4c($sp)
/* 6896C 80067D6C 8F290000 */  lw         $t1, ($t9)
/* 68970 80067D70 11200009 */  beqz       $t1, .L80067D98
/* 68974 80067D74 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 68978 80067D78 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 6897C 80067D7C 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68980 80067D80 240F0046 */  addiu      $t7, $zero, 0x46
/* 68984 80067D84 44805000 */  mtc1       $zero, $f10
/* 68988 80067D88 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 6898C 80067D8C 3C018014 */  lui        $at, %hi(D_8013F658)
/* 68990 80067D90 100002B9 */  b          .L80068878
/* 68994 80067D94 E42AF658 */   swc1      $f10, %lo(D_8013F658)($at)
.L80067D98:
/* 68998 80067D98 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 6899C 80067D9C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 689A0 80067DA0 44802000 */  mtc1       $zero, $f4
/* 689A4 80067DA4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 689A8 80067DA8 240A006B */  addiu      $t2, $zero, 0x6b
/* 689AC 80067DAC AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 689B0 80067DB0 3C088014 */  lui        $t0, %hi(D_8013F600)
/* 689B4 80067DB4 8D08F600 */  lw         $t0, %lo(D_8013F600)($t0)
/* 689B8 80067DB8 3C018014 */  lui        $at, %hi(D_8013F658)
/* 689BC 80067DBC E424F658 */  swc1       $f4, %lo(D_8013F658)($at)
/* 689C0 80067DC0 24010008 */  addiu      $at, $zero, 8
/* 689C4 80067DC4 15010005 */  bne        $t0, $at, .L80067DDC
/* 689C8 80067DC8 00000000 */   nop
/* 689CC 80067DCC 240B000F */  addiu      $t3, $zero, 0xf
/* 689D0 80067DD0 3C018014 */  lui        $at, %hi(D_8013F628)
/* 689D4 80067DD4 100002A8 */  b          .L80068878
/* 689D8 80067DD8 AC2BF628 */   sw        $t3, %lo(D_8013F628)($at)
.L80067DDC:
/* 689DC 80067DDC 240D0005 */  addiu      $t5, $zero, 5
/* 689E0 80067DE0 3C018014 */  lui        $at, %hi(D_8013F628)
/* 689E4 80067DE4 100002A4 */  b          .L80068878
/* 689E8 80067DE8 AC2DF628 */   sw        $t5, %lo(D_8013F628)($at)
.L80067DEC:
/* 689EC 80067DEC 24180001 */  addiu      $t8, $zero, 1
/* 689F0 80067DF0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 689F4 80067DF4 AC38F61C */  sw         $t8, %lo(D_8013F61C)($at)
/* 689F8 80067DF8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 689FC 80067DFC 240C002A */  addiu      $t4, $zero, 0x2a
/* 68A00 80067E00 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 68A04 80067E04 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 68A08 80067E08 240E0019 */  addiu      $t6, $zero, 0x19
/* 68A0C 80067E0C AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 68A10 80067E10 3C018014 */  lui        $at, %hi(D_8013F608)
/* 68A14 80067E14 24190002 */  addiu      $t9, $zero, 2
/* 68A18 80067E18 AC39F608 */  sw         $t9, %lo(D_8013F608)($at)
/* 68A1C 80067E1C 3C018014 */  lui        $at, %hi(D_8013F604)
/* 68A20 80067E20 10000295 */  b          .L80068878
/* 68A24 80067E24 AC20F604 */   sw        $zero, %lo(D_8013F604)($at)
.L80067E28:
/* 68A28 80067E28 24090001 */  addiu      $t1, $zero, 1
/* 68A2C 80067E2C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 68A30 80067E30 AC29F608 */  sw         $t1, %lo(D_8013F608)($at)
/* 68A34 80067E34 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 68A38 80067E38 240F000C */  addiu      $t7, $zero, 0xc
/* 68A3C 80067E3C AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 68A40 80067E40 3C018014 */  lui        $at, %hi(D_8013F604)
/* 68A44 80067E44 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 68A48 80067E48 3C018014 */  lui        $at, %hi(D_8013F620)
/* 68A4C 80067E4C C430F620 */  lwc1       $f16, %lo(D_8013F620)($at)
/* 68A50 80067E50 3C014014 */  lui        $at, 0x4014
/* 68A54 80067E54 44814800 */  mtc1       $at, $f9
/* 68A58 80067E58 44804000 */  mtc1       $zero, $f8
/* 68A5C 80067E5C 460081A1 */  cvt.d.s    $f6, $f16
/* 68A60 80067E60 4626403E */  c.le.d     $f8, $f6
/* 68A64 80067E64 00000000 */  nop
/* 68A68 80067E68 45000013 */  bc1f       .L80067EB8
/* 68A6C 80067E6C 3C014024 */   lui       $at, 0x4024
/* 68A70 80067E70 44819800 */  mtc1       $at, $f19
/* 68A74 80067E74 44809000 */  mtc1       $zero, $f18
/* 68A78 80067E78 00000000 */  nop
/* 68A7C 80067E7C 4632303C */  c.lt.d     $f6, $f18
/* 68A80 80067E80 00000000 */  nop
/* 68A84 80067E84 45000006 */  bc1f       .L80067EA0
/* 68A88 80067E88 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 68A8C 80067E8C AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68A90 80067E90 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68A94 80067E94 240A00A5 */  addiu      $t2, $zero, 0xa5
/* 68A98 80067E98 10000070 */  b          .L8006805C
/* 68A9C 80067E9C AC2AF610 */   sw        $t2, %lo(D_8013F610)($at)
.L80067EA0:
/* 68AA0 80067EA0 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68AA4 80067EA4 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 68AA8 80067EA8 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68AAC 80067EAC 24080005 */  addiu      $t0, $zero, 5
/* 68AB0 80067EB0 10000271 */  b          .L80068878
/* 68AB4 80067EB4 AC28F610 */   sw        $t0, %lo(D_8013F610)($at)
.L80067EB8:
/* 68AB8 80067EB8 240B0001 */  addiu      $t3, $zero, 1
/* 68ABC 80067EBC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68AC0 80067EC0 AC2BF61C */  sw         $t3, %lo(D_8013F61C)($at)
/* 68AC4 80067EC4 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68AC8 80067EC8 240D0003 */  addiu      $t5, $zero, 3
/* 68ACC 80067ECC 1000026A */  b          .L80068878
/* 68AD0 80067ED0 AC2DF610 */   sw        $t5, %lo(D_8013F610)($at)
.L80067ED4:
/* 68AD4 80067ED4 24180005 */  addiu      $t8, $zero, 5
/* 68AD8 80067ED8 3C018014 */  lui        $at, %hi(D_8013F608)
/* 68ADC 80067EDC AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 68AE0 80067EE0 3C018014 */  lui        $at, %hi(D_8013F610)
/* 68AE4 80067EE4 240C001B */  addiu      $t4, $zero, 0x1b
/* 68AE8 80067EE8 AC2CF610 */  sw         $t4, %lo(D_8013F610)($at)
/* 68AEC 80067EEC 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 68AF0 80067EF0 240E0035 */  addiu      $t6, $zero, 0x35
/* 68AF4 80067EF4 AC2EF60C */  sw         $t6, %lo(D_8013F60C)($at)
/* 68AF8 80067EF8 3C018014 */  lui        $at, %hi(D_8013F604)
/* 68AFC 80067EFC 24190001 */  addiu      $t9, $zero, 1
/* 68B00 80067F00 AC39F604 */  sw         $t9, %lo(D_8013F604)($at)
/* 68B04 80067F04 44805000 */  mtc1       $zero, $f10
/* 68B08 80067F08 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 68B0C 80067F0C 24090001 */  addiu      $t1, $zero, 1
/* 68B10 80067F10 AC29F61C */  sw         $t1, %lo(D_8013F61C)($at)
/* 68B14 80067F14 3C018014 */  lui        $at, %hi(D_8013F658)
/* 68B18 80067F18 E42AF658 */  swc1       $f10, %lo(D_8013F658)($at)
/* 68B1C 80067F1C 3C018014 */  lui        $at, %hi(D_8013F664)
/* 68B20 80067F20 C424F664 */  lwc1       $f4, %lo(D_8013F664)($at)
/* 68B24 80067F24 3C01437A */  lui        $at, 0x437a
/* 68B28 80067F28 44818000 */  mtc1       $at, $f16
/* 68B2C 80067F2C 00000000 */  nop
/* 68B30 80067F30 4604803C */  c.lt.s     $f16, $f4
/* 68B34 80067F34 00000000 */  nop
/* 68B38 80067F38 4500024F */  bc1f       .L80068878
/* 68B3C 80067F3C 00000000 */   nop
/* 68B40 80067F40 8FAA0048 */  lw         $t2, 0x48($sp)
/* 68B44 80067F44 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 68B48 80067F48 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 68B4C 80067F4C 000A4080 */  sll        $t0, $t2, 2
/* 68B50 80067F50 010A4023 */  subu       $t0, $t0, $t2
/* 68B54 80067F54 00084080 */  sll        $t0, $t0, 2
/* 68B58 80067F58 010A4023 */  subu       $t0, $t0, $t2
/* 68B5C 80067F5C 00084080 */  sll        $t0, $t0, 2
/* 68B60 80067F60 010A4021 */  addu       $t0, $t0, $t2
/* 68B64 80067F64 00084080 */  sll        $t0, $t0, 2
/* 68B68 80067F68 010A4023 */  subu       $t0, $t0, $t2
/* 68B6C 80067F6C 00084080 */  sll        $t0, $t0, 2
/* 68B70 80067F70 01E85821 */  addu       $t3, $t7, $t0
/* 68B74 80067F74 C56800E4 */  lwc1       $f8, 0xe4($t3)
/* 68B78 80067F78 3C014059 */  lui        $at, 0x4059
/* 68B7C 80067F7C 44819800 */  mtc1       $at, $f19
/* 68B80 80067F80 44809000 */  mtc1       $zero, $f18
/* 68B84 80067F84 460041A1 */  cvt.d.s    $f6, $f8
/* 68B88 80067F88 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 68B8C 80067F8C C424F65C */  lwc1       $f4, %lo(D_8013F65C)($at)
/* 68B90 80067F90 46323281 */  sub.d      $f10, $f6, $f18
/* 68B94 80067F94 3C014059 */  lui        $at, 0x4059
/* 68B98 80067F98 44813800 */  mtc1       $at, $f7
/* 68B9C 80067F9C 46002421 */  cvt.d.s    $f16, $f4
/* 68BA0 80067FA0 44803000 */  mtc1       $zero, $f6
/* 68BA4 80067FA4 46305201 */  sub.d      $f8, $f10, $f16
/* 68BA8 80067FA8 4626403C */  c.lt.d     $f8, $f6
/* 68BAC 80067FAC 00000000 */  nop
/* 68BB0 80067FB0 45000007 */  bc1f       .L80067FD0
/* 68BB4 80067FB4 3C014069 */   lui       $at, 0x4069
/* 68BB8 80067FB8 44819800 */  mtc1       $at, $f19
/* 68BBC 80067FBC 44809000 */  mtc1       $zero, $f18
/* 68BC0 80067FC0 3C018014 */  lui        $at, %hi(D_8013F638)
/* 68BC4 80067FC4 46328100 */  add.d      $f4, $f16, $f18
/* 68BC8 80067FC8 462022A0 */  cvt.s.d    $f10, $f4
/* 68BCC 80067FCC E42AF638 */  swc1       $f10, %lo(D_8013F638)($at)
.L80067FD0:
/* 68BD0 80067FD0 8FB80048 */  lw         $t8, 0x48($sp)
/* 68BD4 80067FD4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 68BD8 80067FD8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 68BDC 80067FDC 00186080 */  sll        $t4, $t8, 2
/* 68BE0 80067FE0 01986023 */  subu       $t4, $t4, $t8
/* 68BE4 80067FE4 000C6080 */  sll        $t4, $t4, 2
/* 68BE8 80067FE8 01986023 */  subu       $t4, $t4, $t8
/* 68BEC 80067FEC 000C6080 */  sll        $t4, $t4, 2
/* 68BF0 80067FF0 01986021 */  addu       $t4, $t4, $t8
/* 68BF4 80067FF4 000C6080 */  sll        $t4, $t4, 2
/* 68BF8 80067FF8 01986023 */  subu       $t4, $t4, $t8
/* 68BFC 80067FFC 000C6080 */  sll        $t4, $t4, 2
/* 68C00 80068000 3C0141A0 */  lui        $at, 0x41a0
/* 68C04 80068004 01AC7021 */  addu       $t6, $t5, $t4
/* 68C08 80068008 C5C800E4 */  lwc1       $f8, 0xe4($t6)
/* 68C0C 8006800C 44813000 */  mtc1       $at, $f6
/* 68C10 80068010 3C018014 */  lui        $at, %hi(D_8013F660)
/* 68C14 80068014 C432F660 */  lwc1       $f18, %lo(D_8013F660)($at)
/* 68C18 80068018 46064401 */  sub.s      $f16, $f8, $f6
/* 68C1C 8006801C 44804000 */  mtc1       $zero, $f8
/* 68C20 80068020 44804800 */  mtc1       $zero, $f9
/* 68C24 80068024 46109101 */  sub.s      $f4, $f18, $f16
/* 68C28 80068028 460022A1 */  cvt.d.s    $f10, $f4
/* 68C2C 8006802C 4628503C */  c.lt.d     $f10, $f8
/* 68C30 80068030 00000000 */  nop
/* 68C34 80068034 45000210 */  bc1f       .L80068878
/* 68C38 80068038 3C014024 */   lui       $at, 0x4024
/* 68C3C 8006803C 44818800 */  mtc1       $at, $f17
/* 68C40 80068040 44808000 */  mtc1       $zero, $f16
/* 68C44 80068044 460091A1 */  cvt.d.s    $f6, $f18
/* 68C48 80068048 3C018014 */  lui        $at, %hi(D_8013F638)
/* 68C4C 8006804C 46303100 */  add.d      $f4, $f6, $f16
/* 68C50 80068050 462022A0 */  cvt.s.d    $f10, $f4
/* 68C54 80068054 10000208 */  b          .L80068878
/* 68C58 80068058 E42AF638 */   swc1      $f10, %lo(D_8013F638)($at)
.L8006805C:
/* 68C5C 8006805C 10000206 */  b          .L80068878
/* 68C60 80068060 00000000 */   nop
.L80068064:
/* 68C64 80068064 8FA90048 */  lw         $t1, 0x48($sp)
/* 68C68 80068068 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 68C6C 8006806C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 68C70 80068070 00095080 */  sll        $t2, $t1, 2
/* 68C74 80068074 01495023 */  subu       $t2, $t2, $t1
/* 68C78 80068078 000A5080 */  sll        $t2, $t2, 2
/* 68C7C 8006807C 01495023 */  subu       $t2, $t2, $t1
/* 68C80 80068080 000A5080 */  sll        $t2, $t2, 2
/* 68C84 80068084 01495021 */  addu       $t2, $t2, $t1
/* 68C88 80068088 000A5080 */  sll        $t2, $t2, 2
/* 68C8C 8006808C 01495023 */  subu       $t2, $t2, $t1
/* 68C90 80068090 000A5080 */  sll        $t2, $t2, 2
/* 68C94 80068094 032A7821 */  addu       $t7, $t9, $t2
/* 68C98 80068098 8DE80060 */  lw         $t0, 0x60($t7)
/* 68C9C 8006809C 310B0200 */  andi       $t3, $t0, 0x200
/* 68CA0 800680A0 11600006 */  beqz       $t3, .L800680BC
/* 68CA4 800680A4 00000000 */   nop
/* 68CA8 800680A8 3C188014 */  lui        $t8, %hi(D_8013F610)
/* 68CAC 800680AC 8F18F610 */  lw         $t8, %lo(D_8013F610)($t8)
/* 68CB0 800680B0 24010066 */  addiu      $at, $zero, 0x66
/* 68CB4 800680B4 130101E2 */  beq        $t8, $at, .L80068840
/* 68CB8 800680B8 00000000 */   nop
.L800680BC:
/* 68CBC 800680BC 8FAC0048 */  lw         $t4, 0x48($sp)
/* 68CC0 800680C0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 68CC4 800680C4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 68CC8 800680C8 000C7080 */  sll        $t6, $t4, 2
/* 68CCC 800680CC 01CC7023 */  subu       $t6, $t6, $t4
/* 68CD0 800680D0 000E7080 */  sll        $t6, $t6, 2
/* 68CD4 800680D4 01CC7023 */  subu       $t6, $t6, $t4
/* 68CD8 800680D8 000E7080 */  sll        $t6, $t6, 2
/* 68CDC 800680DC 01CC7021 */  addu       $t6, $t6, $t4
/* 68CE0 800680E0 000E7080 */  sll        $t6, $t6, 2
/* 68CE4 800680E4 01CC7023 */  subu       $t6, $t6, $t4
/* 68CE8 800680E8 000E7080 */  sll        $t6, $t6, 2
/* 68CEC 800680EC 01AE4821 */  addu       $t1, $t5, $t6
/* 68CF0 800680F0 8D390064 */  lw         $t9, 0x64($t1)
/* 68CF4 800680F4 2401000A */  addiu      $at, $zero, 0xa
/* 68CF8 800680F8 17210003 */  bne        $t9, $at, .L80068108
/* 68CFC 800680FC 00000000 */   nop
/* 68D00 80068100 8D2A0068 */  lw         $t2, 0x68($t1)
/* 68D04 80068104 AD2A0064 */  sw         $t2, 0x64($t1)
.L80068108:
/* 68D08 80068108 8FA80048 */  lw         $t0, 0x48($sp)
/* 68D0C 8006810C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 68D10 80068110 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 68D14 80068114 00085880 */  sll        $t3, $t0, 2
/* 68D18 80068118 01685823 */  subu       $t3, $t3, $t0
/* 68D1C 8006811C 000B5880 */  sll        $t3, $t3, 2
/* 68D20 80068120 01685823 */  subu       $t3, $t3, $t0
/* 68D24 80068124 000B5880 */  sll        $t3, $t3, 2
/* 68D28 80068128 01685821 */  addu       $t3, $t3, $t0
/* 68D2C 8006812C 000B5880 */  sll        $t3, $t3, 2
/* 68D30 80068130 01685823 */  subu       $t3, $t3, $t0
/* 68D34 80068134 000B5880 */  sll        $t3, $t3, 2
/* 68D38 80068138 01EBC021 */  addu       $t8, $t7, $t3
/* 68D3C 8006813C C7080104 */  lwc1       $f8, 0x104($t8)
/* 68D40 80068140 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 68D44 80068144 3C0C8014 */  lui        $t4, %hi(D_8013F630)
/* 68D48 80068148 46004487 */  neg.s      $f18, $f8
/* 68D4C 8006814C 8D8CF630 */  lw         $t4, %lo(D_8013F630)($t4)
/* 68D50 80068150 E432F64C */  swc1       $f18, %lo(D_8013F64C)($at)
/* 68D54 80068154 C7060114 */  lwc1       $f6, 0x114($t8)
/* 68D58 80068158 3C018014 */  lui        $at, %hi(D_8013F650)
/* 68D5C 8006815C 46003407 */  neg.s      $f16, $f6
/* 68D60 80068160 05800075 */  bltz       $t4, .L80068338
/* 68D64 80068164 E430F650 */   swc1      $f16, %lo(D_8013F650)($at)
/* 68D68 80068168 000C6880 */  sll        $t5, $t4, 2
/* 68D6C 8006816C 01AC6823 */  subu       $t5, $t5, $t4
/* 68D70 80068170 000D6880 */  sll        $t5, $t5, 2
/* 68D74 80068174 01AC6823 */  subu       $t5, $t5, $t4
/* 68D78 80068178 000D6880 */  sll        $t5, $t5, 2
/* 68D7C 8006817C 01AC6821 */  addu       $t5, $t5, $t4
/* 68D80 80068180 000D6880 */  sll        $t5, $t5, 2
/* 68D84 80068184 01AC6823 */  subu       $t5, $t5, $t4
/* 68D88 80068188 000D6880 */  sll        $t5, $t5, 2
/* 68D8C 8006818C 01ED7021 */  addu       $t6, $t7, $t5
/* 68D90 80068190 8DD9006C */  lw         $t9, 0x6c($t6)
/* 68D94 80068194 24010140 */  addiu      $at, $zero, 0x140
/* 68D98 80068198 13210003 */  beq        $t9, $at, .L800681A8
/* 68D9C 8006819C 2401013B */   addiu     $at, $zero, 0x13b
/* 68DA0 800681A0 17210065 */  bne        $t9, $at, .L80068338
/* 68DA4 800681A4 00000000 */   nop
.L800681A8:
/* 68DA8 800681A8 3C098014 */  lui        $t1, %hi(D_8013F630)
/* 68DAC 800681AC 8D29F630 */  lw         $t1, %lo(D_8013F630)($t1)
/* 68DB0 800681B0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 68DB4 800681B4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 68DB8 800681B8 00094080 */  sll        $t0, $t1, 2
/* 68DBC 800681BC 01094023 */  subu       $t0, $t0, $t1
/* 68DC0 800681C0 00084080 */  sll        $t0, $t0, 2
/* 68DC4 800681C4 01094023 */  subu       $t0, $t0, $t1
/* 68DC8 800681C8 00084080 */  sll        $t0, $t0, 2
/* 68DCC 800681CC 01094021 */  addu       $t0, $t0, $t1
/* 68DD0 800681D0 00084080 */  sll        $t0, $t0, 2
/* 68DD4 800681D4 01094023 */  subu       $t0, $t0, $t1
/* 68DD8 800681D8 00084080 */  sll        $t0, $t0, 2
/* 68DDC 800681DC 01485821 */  addu       $t3, $t2, $t0
/* 68DE0 800681E0 8D78006C */  lw         $t8, 0x6c($t3)
/* 68DE4 800681E4 24010140 */  addiu      $at, $zero, 0x140
/* 68DE8 800681E8 1701003F */  bne        $t8, $at, .L800682E8
/* 68DEC 800681EC 00000000 */   nop
/* 68DF0 800681F0 3C0C8014 */  lui        $t4, %hi(D_8013F600)
/* 68DF4 800681F4 8D8CF600 */  lw         $t4, %lo(D_8013F600)($t4)
/* 68DF8 800681F8 2D810013 */  sltiu      $at, $t4, 0x13
/* 68DFC 800681FC 1020004B */  beqz       $at, .L8006832C
/* 68E00 80068200 00000000 */   nop
/* 68E04 80068204 000C6080 */  sll        $t4, $t4, 2
/* 68E08 80068208 3C01800E */  lui        $at, %hi(D_800DE3D8)
/* 68E0C 8006820C 002C0821 */  addu       $at, $at, $t4
/* 68E10 80068210 8C2CE3D8 */  lw         $t4, %lo(D_800DE3D8)($at)
/* 68E14 80068214 01800008 */  jr         $t4
/* 68E18 80068218 00000000 */   nop
/* 68E1C 8006821C 3C0F8014 */  lui        $t7, %hi(D_8013F600)
/* 68E20 80068220 8DEFF600 */  lw         $t7, %lo(D_8013F600)($t7)
/* 68E24 80068224 2DE10013 */  sltiu      $at, $t7, 0x13
/* 68E28 80068228 10200019 */  beqz       $at, .L80068290
/* 68E2C 8006822C 00000000 */   nop
/* 68E30 80068230 000F7880 */  sll        $t7, $t7, 2
/* 68E34 80068234 3C01800E */  lui        $at, %hi(D_800DE424)
/* 68E38 80068238 002F0821 */  addu       $at, $at, $t7
/* 68E3C 8006823C 8C2FE424 */  lw         $t7, %lo(D_800DE424)($at)
/* 68E40 80068240 01E00008 */  jr         $t7
/* 68E44 80068244 00000000 */   nop
/* 68E48 80068248 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 68E4C 8006824C 10000010 */  b          .L80068290
/* 68E50 80068250 AC207DCC */   sw        $zero, %lo(D_800D7DCC)($at)
/* 68E54 80068254 240D0001 */  addiu      $t5, $zero, 1
/* 68E58 80068258 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 68E5C 8006825C 1000000C */  b          .L80068290
/* 68E60 80068260 AC2D7DCC */   sw        $t5, %lo(D_800D7DCC)($at)
/* 68E64 80068264 240E0002 */  addiu      $t6, $zero, 2
/* 68E68 80068268 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 68E6C 8006826C 10000008 */  b          .L80068290
/* 68E70 80068270 AC2E7DCC */   sw        $t6, %lo(D_800D7DCC)($at)
/* 68E74 80068274 24190003 */  addiu      $t9, $zero, 3
/* 68E78 80068278 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 68E7C 8006827C 10000004 */  b          .L80068290
/* 68E80 80068280 AC397DCC */   sw        $t9, %lo(D_800D7DCC)($at)
/* 68E84 80068284 24090004 */  addiu      $t1, $zero, 4
/* 68E88 80068288 3C01800D */  lui        $at, %hi(D_800D7DCC)
/* 68E8C 8006828C AC297DCC */  sw         $t1, %lo(D_800D7DCC)($at)
.L80068290:
/* 68E90 80068290 8FAB0048 */  lw         $t3, 0x48($sp)
/* 68E94 80068294 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 68E98 80068298 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 68E9C 8006829C 000BC080 */  sll        $t8, $t3, 2
/* 68EA0 800682A0 030BC023 */  subu       $t8, $t8, $t3
/* 68EA4 800682A4 0018C080 */  sll        $t8, $t8, 2
/* 68EA8 800682A8 030BC023 */  subu       $t8, $t8, $t3
/* 68EAC 800682AC 0018C080 */  sll        $t8, $t8, 2
/* 68EB0 800682B0 030BC021 */  addu       $t8, $t8, $t3
/* 68EB4 800682B4 0018C080 */  sll        $t8, $t8, 2
/* 68EB8 800682B8 030BC023 */  subu       $t8, $t8, $t3
/* 68EBC 800682BC 0018C080 */  sll        $t8, $t8, 2
/* 68EC0 800682C0 240AFFFF */  addiu      $t2, $zero, -1
/* 68EC4 800682C4 01186021 */  addu       $t4, $t0, $t8
/* 68EC8 800682C8 A58A00C0 */  sh         $t2, 0xc0($t4)
/* 68ECC 800682CC 3C04800D */  lui        $a0, %hi(D_800D7DCC)
/* 68ED0 800682D0 0C0249B1 */  jal        func_800926C4
/* 68ED4 800682D4 8C847DCC */   lw        $a0, %lo(D_800D7DCC)($a0)
/* 68ED8 800682D8 0C000ABC */  jal        func_80002AF0
/* 68EDC 800682DC 24040003 */   addiu     $a0, $zero, 3
/* 68EE0 800682E0 10000012 */  b          .L8006832C
/* 68EE4 800682E4 00000000 */   nop
.L800682E8:
/* 68EE8 800682E8 8FAE0048 */  lw         $t6, 0x48($sp)
/* 68EEC 800682EC 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 68EF0 800682F0 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 68EF4 800682F4 000EC880 */  sll        $t9, $t6, 2
/* 68EF8 800682F8 032EC823 */  subu       $t9, $t9, $t6
/* 68EFC 800682FC 0019C880 */  sll        $t9, $t9, 2
/* 68F00 80068300 032EC823 */  subu       $t9, $t9, $t6
/* 68F04 80068304 0019C880 */  sll        $t9, $t9, 2
/* 68F08 80068308 032EC821 */  addu       $t9, $t9, $t6
/* 68F0C 8006830C 0019C880 */  sll        $t9, $t9, 2
/* 68F10 80068310 032EC823 */  subu       $t9, $t9, $t6
/* 68F14 80068314 0019C880 */  sll        $t9, $t9, 2
/* 68F18 80068318 240FFFFF */  addiu      $t7, $zero, -1
/* 68F1C 8006831C 01B94821 */  addu       $t1, $t5, $t9
/* 68F20 80068320 A52F00C0 */  sh         $t7, 0xc0($t1)
/* 68F24 80068324 0C000ABC */  jal        func_80002AF0
/* 68F28 80068328 24040005 */   addiu     $a0, $zero, 5
.L8006832C:
/* 68F2C 8006832C 3C048014 */  lui        $a0, %hi(D_8013F630)
/* 68F30 80068330 0C012101 */  jal        func_80048404
/* 68F34 80068334 8C84F630 */   lw        $a0, %lo(D_8013F630)($a0)
.L80068338:
/* 68F38 80068338 3C0B8014 */  lui        $t3, %hi(D_8013F62C)
/* 68F3C 8006833C 8D6BF62C */  lw         $t3, %lo(D_8013F62C)($t3)
/* 68F40 80068340 0560002C */  bltz       $t3, .L800683F4
/* 68F44 80068344 00000000 */   nop
/* 68F48 80068348 000BC080 */  sll        $t8, $t3, 2
/* 68F4C 8006834C 030BC023 */  subu       $t8, $t8, $t3
/* 68F50 80068350 0018C080 */  sll        $t8, $t8, 2
/* 68F54 80068354 030BC023 */  subu       $t8, $t8, $t3
/* 68F58 80068358 0018C080 */  sll        $t8, $t8, 2
/* 68F5C 8006835C 030BC021 */  addu       $t8, $t8, $t3
/* 68F60 80068360 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 68F64 80068364 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 68F68 80068368 0018C080 */  sll        $t8, $t8, 2
/* 68F6C 8006836C 030BC023 */  subu       $t8, $t8, $t3
/* 68F70 80068370 0018C080 */  sll        $t8, $t8, 2
/* 68F74 80068374 01185021 */  addu       $t2, $t0, $t8
/* 68F78 80068378 8D4C006C */  lw         $t4, 0x6c($t2)
/* 68F7C 8006837C 24010012 */  addiu      $at, $zero, 0x12
/* 68F80 80068380 11810003 */  beq        $t4, $at, .L80068390
/* 68F84 80068384 24010001 */   addiu     $at, $zero, 1
/* 68F88 80068388 15810006 */  bne        $t4, $at, .L800683A4
/* 68F8C 8006838C 00000000 */   nop
.L80068390:
/* 68F90 80068390 3C048014 */  lui        $a0, %hi(D_8013F62C)
/* 68F94 80068394 0C00B24F */  jal        func_8002C93C
/* 68F98 80068398 8C84F62C */   lw        $a0, %lo(D_8013F62C)($a0)
/* 68F9C 8006839C 10000015 */  b          .L800683F4
/* 68FA0 800683A0 00000000 */   nop
.L800683A4:
/* 68FA4 800683A4 8FA40048 */  lw         $a0, 0x48($sp)
/* 68FA8 800683A8 0C00B32F */  jal        func_8002CCBC
/* 68FAC 800683AC 00002825 */   or        $a1, $zero, $zero
/* 68FB0 800683B0 3C0D8014 */  lui        $t5, %hi(D_8013F62C)
/* 68FB4 800683B4 8DADF62C */  lw         $t5, %lo(D_8013F62C)($t5)
/* 68FB8 800683B8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 68FBC 800683BC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 68FC0 800683C0 000DC880 */  sll        $t9, $t5, 2
/* 68FC4 800683C4 032DC823 */  subu       $t9, $t9, $t5
/* 68FC8 800683C8 0019C880 */  sll        $t9, $t9, 2
/* 68FCC 800683CC 032DC823 */  subu       $t9, $t9, $t5
/* 68FD0 800683D0 0019C880 */  sll        $t9, $t9, 2
/* 68FD4 800683D4 032DC821 */  addu       $t9, $t9, $t5
/* 68FD8 800683D8 0019C880 */  sll        $t9, $t9, 2
/* 68FDC 800683DC 032DC823 */  subu       $t9, $t9, $t5
/* 68FE0 800683E0 0019C880 */  sll        $t9, $t9, 2
/* 68FE4 800683E4 01D97821 */  addu       $t7, $t6, $t9
/* 68FE8 800683E8 8DE90060 */  lw         $t1, 0x60($t7)
/* 68FEC 800683EC 352B0008 */  ori        $t3, $t1, 8
/* 68FF0 800683F0 ADEB0060 */  sw         $t3, 0x60($t7)
.L800683F4:
/* 68FF4 800683F4 0C02BBDA */  jal        func_800AEF68
/* 68FF8 800683F8 8FA40048 */   lw        $a0, 0x48($sp)
/* 68FFC 800683FC A7A2003A */  sh         $v0, 0x3a($sp)
/* 69000 80068400 87A8003A */  lh         $t0, 0x3a($sp)
/* 69004 80068404 2401FFFF */  addiu      $at, $zero, -1
/* 69008 80068408 11010047 */  beq        $t0, $at, .L80068528
/* 6900C 8006840C 00000000 */   nop
/* 69010 80068410 8FB80048 */  lw         $t8, 0x48($sp)
/* 69014 80068414 17000024 */  bnez       $t8, .L800684A8
/* 69018 80068418 00000000 */   nop
/* 6901C 8006841C 00186080 */  sll        $t4, $t8, 2
/* 69020 80068420 01986023 */  subu       $t4, $t4, $t8
/* 69024 80068424 000C6080 */  sll        $t4, $t4, 2
/* 69028 80068428 01986023 */  subu       $t4, $t4, $t8
/* 6902C 8006842C 000C6080 */  sll        $t4, $t4, 2
/* 69030 80068430 01986021 */  addu       $t4, $t4, $t8
/* 69034 80068434 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 69038 80068438 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 6903C 8006843C 000C6080 */  sll        $t4, $t4, 2
/* 69040 80068440 01986023 */  subu       $t4, $t4, $t8
/* 69044 80068444 000C6080 */  sll        $t4, $t4, 2
/* 69048 80068448 014C6821 */  addu       $t5, $t2, $t4
/* 6904C 8006844C 8DAE006C */  lw         $t6, 0x6c($t5)
/* 69050 80068450 3C01800D */  lui        $at, %hi(D_800D7D70)
/* 69054 80068454 00084880 */  sll        $t1, $t0, 2
/* 69058 80068458 000EC880 */  sll        $t9, $t6, 2
/* 6905C 8006845C 00390821 */  addu       $at, $at, $t9
/* 69060 80068460 C4247D70 */  lwc1       $f4, %lo(D_800D7D70)($at)
/* 69064 80068464 3C018018 */  lui        $at, %hi(D_8017A028)
/* 69068 80068468 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 6906C 8006846C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 69070 80068470 00290821 */  addu       $at, $at, $t1
/* 69074 80068474 C42AA028 */  lwc1       $f10, %lo(D_8017A028)($at)
/* 69078 80068478 24010003 */  addiu      $at, $zero, 3
/* 6907C 8006847C 00C1001A */  div        $zero, $a2, $at
/* 69080 80068480 460A2202 */  mul.s      $f8, $f4, $f10
/* 69084 80068484 00003012 */  mflo       $a2
/* 69088 80068488 AFA00010 */  sw         $zero, 0x10($sp)
/* 6908C 8006848C 01002025 */  or         $a0, $t0, $zero
/* 69090 80068490 24070040 */  addiu      $a3, $zero, 0x40
/* 69094 80068494 44054000 */  mfc1       $a1, $f8
/* 69098 80068498 0C0009DF */  jal        func_8000277C
/* 6909C 8006849C 00000000 */   nop
/* 690A0 800684A0 10000021 */  b          .L80068528
/* 690A4 800684A4 00000000 */   nop
.L800684A8:
/* 690A8 800684A8 8FB80048 */  lw         $t8, 0x48($sp)
/* 690AC 800684AC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 690B0 800684B0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 690B4 800684B4 00185080 */  sll        $t2, $t8, 2
/* 690B8 800684B8 01585023 */  subu       $t2, $t2, $t8
/* 690BC 800684BC 000A5080 */  sll        $t2, $t2, 2
/* 690C0 800684C0 01585023 */  subu       $t2, $t2, $t8
/* 690C4 800684C4 000A5080 */  sll        $t2, $t2, 2
/* 690C8 800684C8 01585021 */  addu       $t2, $t2, $t8
/* 690CC 800684CC 000A5080 */  sll        $t2, $t2, 2
/* 690D0 800684D0 01585023 */  subu       $t2, $t2, $t8
/* 690D4 800684D4 000A5080 */  sll        $t2, $t2, 2
/* 690D8 800684D8 01EA6021 */  addu       $t4, $t7, $t2
/* 690DC 800684DC 8D8D006C */  lw         $t5, 0x6c($t4)
/* 690E0 800684E0 87AB003A */  lh         $t3, 0x3a($sp)
/* 690E4 800684E4 3C01800D */  lui        $at, %hi(D_800D7D70)
/* 690E8 800684E8 000D7080 */  sll        $t6, $t5, 2
/* 690EC 800684EC 002E0821 */  addu       $at, $at, $t6
/* 690F0 800684F0 C4327D70 */  lwc1       $f18, %lo(D_800D7D70)($at)
/* 690F4 800684F4 3C018018 */  lui        $at, %hi(D_8017A028)
/* 690F8 800684F8 000BC880 */  sll        $t9, $t3, 2
/* 690FC 800684FC 00390821 */  addu       $at, $at, $t9
/* 69100 80068500 C426A028 */  lwc1       $f6, %lo(D_8017A028)($at)
/* 69104 80068504 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 69108 80068508 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 6910C 8006850C 46069402 */  mul.s      $f16, $f18, $f6
/* 69110 80068510 AFA00010 */  sw         $zero, 0x10($sp)
/* 69114 80068514 24070040 */  addiu      $a3, $zero, 0x40
/* 69118 80068518 01602025 */  or         $a0, $t3, $zero
/* 6911C 8006851C 44058000 */  mfc1       $a1, $f16
/* 69120 80068520 0C0009DF */  jal        func_8000277C
/* 69124 80068524 00000000 */   nop
.L80068528:
/* 69128 80068528 8FB80048 */  lw         $t8, 0x48($sp)
/* 6912C 8006852C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 69130 80068530 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 69134 80068534 00187880 */  sll        $t7, $t8, 2
/* 69138 80068538 01F87823 */  subu       $t7, $t7, $t8
/* 6913C 8006853C 000F7880 */  sll        $t7, $t7, 2
/* 69140 80068540 01F87823 */  subu       $t7, $t7, $t8
/* 69144 80068544 000F7880 */  sll        $t7, $t7, 2
/* 69148 80068548 01F87821 */  addu       $t7, $t7, $t8
/* 6914C 8006854C 000F7880 */  sll        $t7, $t7, 2
/* 69150 80068550 01F87823 */  subu       $t7, $t7, $t8
/* 69154 80068554 000F7880 */  sll        $t7, $t7, 2
/* 69158 80068558 24080001 */  addiu      $t0, $zero, 1
/* 6915C 8006855C 012F5021 */  addu       $t2, $t1, $t7
/* 69160 80068560 AD480280 */  sw         $t0, 0x280($t2)
/* 69164 80068564 8FAD0048 */  lw         $t5, 0x48($sp)
/* 69168 80068568 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 6916C 8006856C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 69170 80068570 000D7080 */  sll        $t6, $t5, 2
/* 69174 80068574 01CD7023 */  subu       $t6, $t6, $t5
/* 69178 80068578 000E7080 */  sll        $t6, $t6, 2
/* 6917C 8006857C 01CD7023 */  subu       $t6, $t6, $t5
/* 69180 80068580 000E7080 */  sll        $t6, $t6, 2
/* 69184 80068584 01CD7021 */  addu       $t6, $t6, $t5
/* 69188 80068588 000E7080 */  sll        $t6, $t6, 2
/* 6918C 8006858C 01CD7023 */  subu       $t6, $t6, $t5
/* 69190 80068590 000E7080 */  sll        $t6, $t6, 2
/* 69194 80068594 018E5821 */  addu       $t3, $t4, $t6
/* 69198 80068598 8D790268 */  lw         $t9, 0x268($t3)
/* 6919C 8006859C 2B210007 */  slti       $at, $t9, 7
/* 691A0 800685A0 14200020 */  bnez       $at, .L80068624
/* 691A4 800685A4 00000000 */   nop
/* 691A8 800685A8 C5640104 */  lwc1       $f4, 0x104($t3)
/* 691AC 800685AC 3C018014 */  lui        $at, %hi(D_8013F64C)
/* 691B0 800685B0 24180004 */  addiu      $t8, $zero, 4
/* 691B4 800685B4 46002287 */  neg.s      $f10, $f4
/* 691B8 800685B8 2409002A */  addiu      $t1, $zero, 0x2a
/* 691BC 800685BC E42AF64C */  swc1       $f10, %lo(D_8013F64C)($at)
/* 691C0 800685C0 C5680114 */  lwc1       $f8, 0x114($t3)
/* 691C4 800685C4 3C018014 */  lui        $at, %hi(D_8013F650)
/* 691C8 800685C8 240F0043 */  addiu      $t7, $zero, 0x43
/* 691CC 800685CC 46004487 */  neg.s      $f18, $f8
/* 691D0 800685D0 E432F650 */  swc1       $f18, %lo(D_8013F650)($at)
/* 691D4 800685D4 3C018014 */  lui        $at, %hi(D_8013F65C)
/* 691D8 800685D8 C426F65C */  lwc1       $f6, %lo(D_8013F65C)($at)
/* 691DC 800685DC 3C01800E */  lui        $at, %hi(D_800DE470)
/* 691E0 800685E0 D424E470 */  ldc1       $f4, %lo(D_800DE470)($at)
/* 691E4 800685E4 46003421 */  cvt.d.s    $f16, $f6
/* 691E8 800685E8 3C018014 */  lui        $at, %hi(D_8013F638)
/* 691EC 800685EC 46248280 */  add.d      $f10, $f16, $f4
/* 691F0 800685F0 46205220 */  cvt.s.d    $f8, $f10
/* 691F4 800685F4 E428F638 */  swc1       $f8, %lo(D_8013F638)($at)
/* 691F8 800685F8 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 691FC 800685FC AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 69200 80068600 3C018014 */  lui        $at, %hi(D_8013F608)
/* 69204 80068604 AC38F608 */  sw         $t8, %lo(D_8013F608)($at)
/* 69208 80068608 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6920C 8006860C AC29F60C */  sw         $t1, %lo(D_8013F60C)($at)
/* 69210 80068610 3C018014 */  lui        $at, %hi(D_8013F610)
/* 69214 80068614 AC2FF610 */  sw         $t7, %lo(D_8013F610)($at)
/* 69218 80068618 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6921C 8006861C 10000082 */  b          .L80068828
/* 69220 80068620 AC20F604 */   sw        $zero, %lo(D_8013F604)($at)
.L80068624:
/* 69224 80068624 8FAA0048 */  lw         $t2, 0x48($sp)
/* 69228 80068628 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 6922C 8006862C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 69230 80068630 000A6880 */  sll        $t5, $t2, 2
/* 69234 80068634 01AA6823 */  subu       $t5, $t5, $t2
/* 69238 80068638 000D6880 */  sll        $t5, $t5, 2
/* 6923C 8006863C 01AA6823 */  subu       $t5, $t5, $t2
/* 69240 80068640 000D6880 */  sll        $t5, $t5, 2
/* 69244 80068644 01AA6821 */  addu       $t5, $t5, $t2
/* 69248 80068648 000D6880 */  sll        $t5, $t5, 2
/* 6924C 8006864C 01AA6823 */  subu       $t5, $t5, $t2
/* 69250 80068650 000D6880 */  sll        $t5, $t5, 2
/* 69254 80068654 010D6021 */  addu       $t4, $t0, $t5
/* 69258 80068658 8D8E0060 */  lw         $t6, 0x60($t4)
/* 6925C 8006865C 31D90100 */  andi       $t9, $t6, 0x100
/* 69260 80068660 17200009 */  bnez       $t9, .L80068688
/* 69264 80068664 00000000 */   nop
/* 69268 80068668 C5920024 */  lwc1       $f18, 0x24($t4)
/* 6926C 8006866C 44808800 */  mtc1       $zero, $f17
/* 69270 80068670 44808000 */  mtc1       $zero, $f16
/* 69274 80068674 460091A1 */  cvt.d.s    $f6, $f18
/* 69278 80068678 4630303E */  c.le.d     $f6, $f16
/* 6927C 8006867C 00000000 */  nop
/* 69280 80068680 45000030 */  bc1f       .L80068744
/* 69284 80068684 00000000 */   nop
.L80068688:
/* 69288 80068688 8FB80048 */  lw         $t8, 0x48($sp)
/* 6928C 8006868C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 69290 80068690 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 69294 80068694 00184880 */  sll        $t1, $t8, 2
/* 69298 80068698 01384823 */  subu       $t1, $t1, $t8
/* 6929C 8006869C 00094880 */  sll        $t1, $t1, 2
/* 692A0 800686A0 01384823 */  subu       $t1, $t1, $t8
/* 692A4 800686A4 00094880 */  sll        $t1, $t1, 2
/* 692A8 800686A8 01384821 */  addu       $t1, $t1, $t8
/* 692AC 800686AC 00094880 */  sll        $t1, $t1, 2
/* 692B0 800686B0 01384823 */  subu       $t1, $t1, $t8
/* 692B4 800686B4 00094880 */  sll        $t1, $t1, 2
/* 692B8 800686B8 01697821 */  addu       $t7, $t3, $t1
/* 692BC 800686BC 8DEA0268 */  lw         $t2, 0x268($t7)
/* 692C0 800686C0 1540000E */  bnez       $t2, .L800686FC
/* 692C4 800686C4 3C018014 */   lui       $at, %hi(D_8013F604)
/* 692C8 800686C8 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
/* 692CC 800686CC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 692D0 800686D0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 692D4 800686D4 3C018014 */  lui        $at, %hi(D_8013F608)
/* 692D8 800686D8 24080004 */  addiu      $t0, $zero, 4
/* 692DC 800686DC AC28F608 */  sw         $t0, %lo(D_8013F608)($at)
/* 692E0 800686E0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 692E4 800686E4 240D002A */  addiu      $t5, $zero, 0x2a
/* 692E8 800686E8 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 692EC 800686EC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 692F0 800686F0 240E003B */  addiu      $t6, $zero, 0x3b
/* 692F4 800686F4 1000004C */  b          .L80068828
/* 692F8 800686F8 AC2EF610 */   sw        $t6, %lo(D_8013F610)($at)
.L800686FC:
/* 692FC 800686FC 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 69300 80068700 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 69304 80068704 3C018014 */  lui        $at, %hi(D_8013F608)
/* 69308 80068708 24190004 */  addiu      $t9, $zero, 4
/* 6930C 8006870C AC39F608 */  sw         $t9, %lo(D_8013F608)($at)
/* 69310 80068710 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 69314 80068714 240C002A */  addiu      $t4, $zero, 0x2a
/* 69318 80068718 AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
/* 6931C 8006871C 44802000 */  mtc1       $zero, $f4
/* 69320 80068720 3C018014 */  lui        $at, %hi(D_8013F610)
/* 69324 80068724 241800C9 */  addiu      $t8, $zero, 0xc9
/* 69328 80068728 AC38F610 */  sw         $t8, %lo(D_8013F610)($at)
/* 6932C 8006872C 3C018014 */  lui        $at, %hi(D_8013F644)
/* 69330 80068730 E424F644 */  swc1       $f4, %lo(D_8013F644)($at)
/* 69334 80068734 3C018014 */  lui        $at, %hi(D_8013F604)
/* 69338 80068738 240B0001 */  addiu      $t3, $zero, 1
/* 6933C 8006873C 1000003A */  b          .L80068828
/* 69340 80068740 AC2BF604 */   sw        $t3, %lo(D_8013F604)($at)
.L80068744:
/* 69344 80068744 3C098014 */  lui        $t1, %hi(D_8013F604)
/* 69348 80068748 8D29F604 */  lw         $t1, %lo(D_8013F604)($t1)
/* 6934C 8006874C 11200012 */  beqz       $t1, .L80068798
/* 69350 80068750 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 69354 80068754 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 69358 80068758 3C018014 */  lui        $at, %hi(D_8013F608)
/* 6935C 8006875C 240F0004 */  addiu      $t7, $zero, 4
/* 69360 80068760 AC2FF608 */  sw         $t7, %lo(D_8013F608)($at)
/* 69364 80068764 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 69368 80068768 240A002A */  addiu      $t2, $zero, 0x2a
/* 6936C 8006876C AC2AF60C */  sw         $t2, %lo(D_8013F60C)($at)
/* 69370 80068770 44805000 */  mtc1       $zero, $f10
/* 69374 80068774 3C018014 */  lui        $at, %hi(D_8013F610)
/* 69378 80068778 240800C9 */  addiu      $t0, $zero, 0xc9
/* 6937C 8006877C AC28F610 */  sw         $t0, %lo(D_8013F610)($at)
/* 69380 80068780 3C018014 */  lui        $at, %hi(D_8013F644)
/* 69384 80068784 E42AF644 */  swc1       $f10, %lo(D_8013F644)($at)
/* 69388 80068788 3C018014 */  lui        $at, %hi(D_8013F604)
/* 6938C 8006878C 240D0001 */  addiu      $t5, $zero, 1
/* 69390 80068790 10000025 */  b          .L80068828
/* 69394 80068794 AC2DF604 */   sw        $t5, %lo(D_8013F604)($at)
.L80068798:
/* 69398 80068798 8FAE004C */  lw         $t6, 0x4c($sp)
/* 6939C 8006879C 8DD90000 */  lw         $t9, ($t6)
/* 693A0 800687A0 332C0001 */  andi       $t4, $t9, 1
/* 693A4 800687A4 11800013 */  beqz       $t4, .L800687F4
/* 693A8 800687A8 00000000 */   nop
/* 693AC 800687AC 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* 693B0 800687B0 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* 693B4 800687B4 8FB80048 */  lw         $t8, 0x48($sp)
/* 693B8 800687B8 170B000E */  bne        $t8, $t3, .L800687F4
/* 693BC 800687BC 3C018014 */   lui       $at, %hi(D_8013F61C)
/* 693C0 800687C0 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 693C4 800687C4 3C018014 */  lui        $at, %hi(D_8013F608)
/* 693C8 800687C8 24090004 */  addiu      $t1, $zero, 4
/* 693CC 800687CC AC29F608 */  sw         $t1, %lo(D_8013F608)($at)
/* 693D0 800687D0 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 693D4 800687D4 240F002A */  addiu      $t7, $zero, 0x2a
/* 693D8 800687D8 AC2FF60C */  sw         $t7, %lo(D_8013F60C)($at)
/* 693DC 800687DC 3C018014 */  lui        $at, %hi(D_8013F610)
/* 693E0 800687E0 240A00B9 */  addiu      $t2, $zero, 0xb9
/* 693E4 800687E4 AC2AF610 */  sw         $t2, %lo(D_8013F610)($at)
/* 693E8 800687E8 3C018014 */  lui        $at, %hi(D_8013F604)
/* 693EC 800687EC 1000000E */  b          .L80068828
/* 693F0 800687F0 AC20F604 */   sw        $zero, %lo(D_8013F604)($at)
.L800687F4:
/* 693F4 800687F4 3C018014 */  lui        $at, %hi(D_8013F61C)
/* 693F8 800687F8 AC20F61C */  sw         $zero, %lo(D_8013F61C)($at)
/* 693FC 800687FC 3C018014 */  lui        $at, %hi(D_8013F608)
/* 69400 80068800 24080004 */  addiu      $t0, $zero, 4
/* 69404 80068804 AC28F608 */  sw         $t0, %lo(D_8013F608)($at)
/* 69408 80068808 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 6940C 8006880C 240D002A */  addiu      $t5, $zero, 0x2a
/* 69410 80068810 AC2DF60C */  sw         $t5, %lo(D_8013F60C)($at)
/* 69414 80068814 3C018014 */  lui        $at, %hi(D_8013F610)
/* 69418 80068818 240E0043 */  addiu      $t6, $zero, 0x43
/* 6941C 8006881C AC2EF610 */  sw         $t6, %lo(D_8013F610)($at)
/* 69420 80068820 3C018014 */  lui        $at, %hi(D_8013F604)
/* 69424 80068824 AC20F604 */  sw         $zero, %lo(D_8013F604)($at)
.L80068828:
/* 69428 80068828 24190004 */  addiu      $t9, $zero, 4
/* 6942C 8006882C 3C018014 */  lui        $at, %hi(D_8013F608)
/* 69430 80068830 AC39F608 */  sw         $t9, %lo(D_8013F608)($at)
/* 69434 80068834 3C018014 */  lui        $at, %hi(D_8013F60C)
/* 69438 80068838 240C002A */  addiu      $t4, $zero, 0x2a
/* 6943C 8006883C AC2CF60C */  sw         $t4, %lo(D_8013F60C)($at)
.L80068840:
/* 69440 80068840 8FAB0048 */  lw         $t3, 0x48($sp)
/* 69444 80068844 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 69448 80068848 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 6944C 8006884C 000B4880 */  sll        $t1, $t3, 2
/* 69450 80068850 012B4823 */  subu       $t1, $t1, $t3
/* 69454 80068854 00094880 */  sll        $t1, $t1, 2
/* 69458 80068858 012B4823 */  subu       $t1, $t1, $t3
/* 6945C 8006885C 00094880 */  sll        $t1, $t1, 2
/* 69460 80068860 012B4821 */  addu       $t1, $t1, $t3
/* 69464 80068864 00094880 */  sll        $t1, $t1, 2
/* 69468 80068868 012B4823 */  subu       $t1, $t1, $t3
/* 6946C 8006886C 00094880 */  sll        $t1, $t1, 2
/* 69470 80068870 03097821 */  addu       $t7, $t8, $t1
/* 69474 80068874 ADE00060 */  sw         $zero, 0x60($t7)
.L80068878:
/* 69478 80068878 8FA40048 */  lw         $a0, 0x48($sp)
/* 6947C 8006887C 0C017B56 */  jal        func_8005ED58
/* 69480 80068880 8FA5004C */   lw        $a1, 0x4c($sp)
.L80068884:
/* 69484 80068884 8FBF002C */  lw         $ra, 0x2c($sp)
/* 69488 80068888 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 6948C 8006888C 8FB00028 */  lw         $s0, 0x28($sp)
/* 69490 80068890 03E00008 */  jr         $ra
/* 69494 80068894 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80068898
/* 69498 80068898 3C0E800D */  lui        $t6, %hi(D_800D7D68)
/* 6949C 8006889C 8DCE7D68 */  lw         $t6, %lo(D_800D7D68)($t6)
/* 694A0 800688A0 11C00047 */  beqz       $t6, .L800689C0
/* 694A4 800688A4 00000000 */   nop
/* 694A8 800688A8 0005C080 */  sll        $t8, $a1, 2
/* 694AC 800688AC 0305C023 */  subu       $t8, $t8, $a1
/* 694B0 800688B0 0018C080 */  sll        $t8, $t8, 2
/* 694B4 800688B4 0305C023 */  subu       $t8, $t8, $a1
/* 694B8 800688B8 00054080 */  sll        $t0, $a1, 2
/* 694BC 800688BC 01054023 */  subu       $t0, $t0, $a1
/* 694C0 800688C0 0018C080 */  sll        $t8, $t8, 2
/* 694C4 800688C4 0305C021 */  addu       $t8, $t8, $a1
/* 694C8 800688C8 00084080 */  sll        $t0, $t0, 2
/* 694CC 800688CC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 694D0 800688D0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 694D4 800688D4 01054023 */  subu       $t0, $t0, $a1
/* 694D8 800688D8 0018C080 */  sll        $t8, $t8, 2
/* 694DC 800688DC 0305C023 */  subu       $t8, $t8, $a1
/* 694E0 800688E0 00084080 */  sll        $t0, $t0, 2
/* 694E4 800688E4 01054021 */  addu       $t0, $t0, $a1
/* 694E8 800688E8 0018C080 */  sll        $t8, $t8, 2
/* 694EC 800688EC 00084080 */  sll        $t0, $t0, 2
/* 694F0 800688F0 01F8C821 */  addu       $t9, $t7, $t8
/* 694F4 800688F4 C7240100 */  lwc1       $f4, 0x100($t9)
/* 694F8 800688F8 C4E60000 */  lwc1       $f6, ($a3)
/* 694FC 800688FC 01054023 */  subu       $t0, $t0, $a1
/* 69500 80068900 00084080 */  sll        $t0, $t0, 2
/* 69504 80068904 01E84821 */  addu       $t1, $t7, $t0
/* 69508 80068908 46062202 */  mul.s      $f8, $f4, $f6
/* 6950C 8006890C C52A00FC */  lwc1       $f10, 0xfc($t1)
/* 69510 80068910 C4D00000 */  lwc1       $f16, ($a2)
/* 69514 80068914 44803000 */  mtc1       $zero, $f6
/* 69518 80068918 460A8482 */  mul.s      $f18, $f16, $f10
/* 6951C 8006891C 46124100 */  add.s      $f4, $f8, $f18
/* 69520 80068920 4606203C */  c.lt.s     $f4, $f6
/* 69524 80068924 00000000 */  nop
/* 69528 80068928 45000005 */  bc1f       .L80068940
/* 6952C 8006892C 3C01BF80 */   lui       $at, 0xbf80
/* 69530 80068930 44818000 */  mtc1       $at, $f16
/* 69534 80068934 00000000 */  nop
/* 69538 80068938 46106302 */  mul.s      $f12, $f12, $f16
/* 6953C 8006893C 00000000 */  nop
.L80068940:
/* 69540 80068940 00055880 */  sll        $t3, $a1, 2
/* 69544 80068944 01655823 */  subu       $t3, $t3, $a1
/* 69548 80068948 000B5880 */  sll        $t3, $t3, 2
/* 6954C 8006894C 01655823 */  subu       $t3, $t3, $a1
/* 69550 80068950 000B5880 */  sll        $t3, $t3, 2
/* 69554 80068954 01655821 */  addu       $t3, $t3, $a1
/* 69558 80068958 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 6955C 8006895C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 69560 80068960 000B5880 */  sll        $t3, $t3, 2
/* 69564 80068964 01655823 */  subu       $t3, $t3, $a1
/* 69568 80068968 3C01800D */  lui        $at, %hi(D_800D7D68)
/* 6956C 8006896C 000B5880 */  sll        $t3, $t3, 2
/* 69570 80068970 AC207D68 */  sw         $zero, %lo(D_800D7D68)($at)
/* 69574 80068974 014B6021 */  addu       $t4, $t2, $t3
/* 69578 80068978 C58A00FC */  lwc1       $f10, 0xfc($t4)
/* 6957C 8006897C 00057080 */  sll        $t6, $a1, 2
/* 69580 80068980 01C57023 */  subu       $t6, $t6, $a1
/* 69584 80068984 460C5202 */  mul.s      $f8, $f10, $f12
/* 69588 80068988 000E7080 */  sll        $t6, $t6, 2
/* 6958C 8006898C 01C57023 */  subu       $t6, $t6, $a1
/* 69590 80068990 000E7080 */  sll        $t6, $t6, 2
/* 69594 80068994 01C57021 */  addu       $t6, $t6, $a1
/* 69598 80068998 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 6959C 8006899C 000E7080 */  sll        $t6, $t6, 2
/* 695A0 800689A0 E4C80000 */  swc1       $f8, ($a2)
/* 695A4 800689A4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 695A8 800689A8 01C57023 */  subu       $t6, $t6, $a1
/* 695AC 800689AC 000E7080 */  sll        $t6, $t6, 2
/* 695B0 800689B0 01AEC021 */  addu       $t8, $t5, $t6
/* 695B4 800689B4 C7120100 */  lwc1       $f18, 0x100($t8)
/* 695B8 800689B8 460C9102 */  mul.s      $f4, $f18, $f12
/* 695BC 800689BC E4E40000 */  swc1       $f4, ($a3)
.L800689C0:
/* 695C0 800689C0 03E00008 */  jr         $ra
/* 695C4 800689C4 00000000 */   nop
/* 695C8 800689C8 00000000 */  nop
/* 695CC 800689CC 00000000 */  nop
