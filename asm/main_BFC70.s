.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BF070
/* BFC70 800BF070 3C0E8014 */  lui        $t6, %hi(D_80146C74)
/* BFC74 800BF074 8DCE6C74 */  lw         $t6, %lo(D_80146C74)($t6)
/* BFC78 800BF078 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BFC7C 800BF07C AFBF001C */  sw         $ra, 0x1c($sp)
/* BFC80 800BF080 25CF0014 */  addiu      $t7, $t6, 0x14
/* BFC84 800BF084 AFA0003C */  sw         $zero, 0x3c($sp)
/* BFC88 800BF088 AFAF0030 */  sw         $t7, 0x30($sp)
/* BFC8C 800BF08C 95D8001A */  lhu        $t8, 0x1a($t6)
/* BFC90 800BF090 3C0AA460 */  lui        $t2, 0xa460
/* BFC94 800BF094 0018C8C0 */  sll        $t9, $t8, 3
/* BFC98 800BF098 0338C821 */  addu       $t9, $t9, $t8
/* BFC9C 800BF09C 0019C880 */  sll        $t9, $t9, 2
/* BFCA0 800BF0A0 01F94021 */  addu       $t0, $t7, $t9
/* BFCA4 800BF0A4 25090018 */  addiu      $t1, $t0, 0x18
/* BFCA8 800BF0A8 AFA9002C */  sw         $t1, 0x2c($sp)
/* BFCAC 800BF0AC 8D4B0010 */  lw         $t3, 0x10($t2)
/* BFCB0 800BF0B0 AFAB0038 */  sw         $t3, 0x38($sp)
/* BFCB4 800BF0B4 8FAC0038 */  lw         $t4, 0x38($sp)
/* BFCB8 800BF0B8 318D0001 */  andi       $t5, $t4, 1
/* BFCBC 800BF0BC 11A0000C */  beqz       $t5, .L800BF0F0
/* BFCC0 800BF0C0 00000000 */   nop
/* BFCC4 800BF0C4 3C0E800E */  lui        $t6, %hi(D_800DA0C0)
/* BFCC8 800BF0C8 8DCEA0C0 */  lw         $t6, %lo(D_800DA0C0)($t6)
/* BFCCC 800BF0CC 2401F7FF */  addiu      $at, $zero, -0x801
/* BFCD0 800BF0D0 240F001D */  addiu      $t7, $zero, 0x1d
/* BFCD4 800BF0D4 01C1C024 */  and        $t8, $t6, $at
/* BFCD8 800BF0D8 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* BFCDC 800BF0DC AC38A0C0 */  sw         $t8, %lo(D_800DA0C0)($at)
/* BFCE0 800BF0E0 0C02FDFF */  jal        func_800BF7FC
/* BFCE4 800BF0E4 AD0F0018 */   sw        $t7, 0x18($t0)
/* BFCE8 800BF0E8 10000186 */  b          .L800BF704
/* BFCEC 800BF0EC 24020001 */   addiu     $v0, $zero, 1
.L800BF0F0:
/* BFCF0 800BF0F0 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* BFCF4 800BF0F4 8F290010 */  lw         $t1, %lo(D_A4600010)($t9)
/* BFCF8 800BF0F8 AFA90038 */  sw         $t1, 0x38($sp)
/* BFCFC 800BF0FC 8FAA0038 */  lw         $t2, 0x38($sp)
/* BFD00 800BF100 314B0003 */  andi       $t3, $t2, 3
/* BFD04 800BF104 11600008 */  beqz       $t3, .L800BF128
/* BFD08 800BF108 00000000 */   nop
.L800BF10C:
/* BFD0C 800BF10C 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* BFD10 800BF110 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* BFD14 800BF114 AFAD0038 */  sw         $t5, 0x38($sp)
/* BFD18 800BF118 8FAE0038 */  lw         $t6, 0x38($sp)
/* BFD1C 800BF11C 31D80003 */  andi       $t8, $t6, 3
/* BFD20 800BF120 1700FFFA */  bnez       $t8, .L800BF10C
/* BFD24 800BF124 00000000 */   nop
.L800BF128:
/* BFD28 800BF128 3C0FA500 */  lui        $t7, %hi(D_A5000508)
/* BFD2C 800BF12C 8DE80508 */  lw         $t0, %lo(D_A5000508)($t7)
/* BFD30 800BF130 3C010200 */  lui        $at, 0x200
/* BFD34 800BF134 AFA8003C */  sw         $t0, 0x3c($sp)
/* BFD38 800BF138 8FB9003C */  lw         $t9, 0x3c($sp)
/* BFD3C 800BF13C 03214824 */  and        $t1, $t9, $at
/* BFD40 800BF140 11200019 */  beqz       $t1, .L800BF1A8
/* BFD44 800BF144 00000000 */   nop
/* BFD48 800BF148 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* BFD4C 800BF14C 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* BFD50 800BF150 AFAB0038 */  sw         $t3, 0x38($sp)
/* BFD54 800BF154 8FAC0038 */  lw         $t4, 0x38($sp)
/* BFD58 800BF158 318D0003 */  andi       $t5, $t4, 3
/* BFD5C 800BF15C 11A00008 */  beqz       $t5, .L800BF180
/* BFD60 800BF160 00000000 */   nop
.L800BF164:
/* BFD64 800BF164 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* BFD68 800BF168 8DD80010 */  lw         $t8, %lo(D_A4600010)($t6)
/* BFD6C 800BF16C AFB80038 */  sw         $t8, 0x38($sp)
/* BFD70 800BF170 8FAF0038 */  lw         $t7, 0x38($sp)
/* BFD74 800BF174 31E80003 */  andi       $t0, $t7, 3
/* BFD78 800BF178 1500FFFA */  bnez       $t0, .L800BF164
/* BFD7C 800BF17C 00000000 */   nop
.L800BF180:
/* BFD80 800BF180 8FB90030 */  lw         $t9, 0x30($sp)
/* BFD84 800BF184 3C010100 */  lui        $at, 0x100
/* BFD88 800BF188 3C0BA500 */  lui        $t3, %hi(D_A5000510)
/* BFD8C 800BF18C 8F290010 */  lw         $t1, 0x10($t9)
/* BFD90 800BF190 00001025 */  or         $v0, $zero, $zero
/* BFD94 800BF194 01215025 */  or         $t2, $t1, $at
/* BFD98 800BF198 AD6A0510 */  sw         $t2, %lo(D_A5000510)($t3)
/* BFD9C 800BF19C 8FAC002C */  lw         $t4, 0x2c($sp)
/* BFDA0 800BF1A0 10000158 */  b          .L800BF704
/* BFDA4 800BF1A4 AD800000 */   sw        $zero, ($t4)
.L800BF1A8:
/* BFDA8 800BF1A8 8FAD0030 */  lw         $t5, 0x30($sp)
/* BFDAC 800BF1AC 24010002 */  addiu      $at, $zero, 2
/* BFDB0 800BF1B0 8DAE0000 */  lw         $t6, ($t5)
/* BFDB4 800BF1B4 15C10003 */  bne        $t6, $at, .L800BF1C4
/* BFDB8 800BF1B8 00000000 */   nop
/* BFDBC 800BF1BC 10000151 */  b          .L800BF704
/* BFDC0 800BF1C0 24020001 */   addiu     $v0, $zero, 1
.L800BF1C4:
/* BFDC4 800BF1C4 8FB8003C */  lw         $t8, 0x3c($sp)
/* BFDC8 800BF1C8 3C010800 */  lui        $at, 0x800
/* BFDCC 800BF1CC 03017824 */  and        $t7, $t8, $at
/* BFDD0 800BF1D0 11E00022 */  beqz       $t7, .L800BF25C
/* BFDD4 800BF1D4 00000000 */   nop
/* BFDD8 800BF1D8 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* BFDDC 800BF1DC 8D190010 */  lw         $t9, %lo(D_A4600010)($t0)
/* BFDE0 800BF1E0 AFB90038 */  sw         $t9, 0x38($sp)
/* BFDE4 800BF1E4 8FA90038 */  lw         $t1, 0x38($sp)
/* BFDE8 800BF1E8 312A0003 */  andi       $t2, $t1, 3
/* BFDEC 800BF1EC 11400008 */  beqz       $t2, .L800BF210
/* BFDF0 800BF1F0 00000000 */   nop
.L800BF1F4:
/* BFDF4 800BF1F4 3C0BA460 */  lui        $t3, %hi(D_A4600010)
/* BFDF8 800BF1F8 8D6C0010 */  lw         $t4, %lo(D_A4600010)($t3)
/* BFDFC 800BF1FC AFAC0038 */  sw         $t4, 0x38($sp)
/* BFE00 800BF200 8FAD0038 */  lw         $t5, 0x38($sp)
/* BFE04 800BF204 31AE0003 */  andi       $t6, $t5, 3
/* BFE08 800BF208 15C0FFFA */  bnez       $t6, .L800BF1F4
/* BFE0C 800BF20C 00000000 */   nop
.L800BF210:
/* BFE10 800BF210 3C18A500 */  lui        $t8, %hi(D_A5000508)
/* BFE14 800BF214 8F0F0508 */  lw         $t7, %lo(D_A5000508)($t8)
/* BFE18 800BF218 8FB9002C */  lw         $t9, 0x2c($sp)
/* BFE1C 800BF21C 24080016 */  addiu      $t0, $zero, 0x16
/* BFE20 800BF220 AFAF003C */  sw         $t7, 0x3c($sp)
/* BFE24 800BF224 0C02FDFF */  jal        func_800BF7FC
/* BFE28 800BF228 AF280000 */   sw        $t0, ($t9)
/* BFE2C 800BF22C 24090002 */  addiu      $t1, $zero, 2
/* BFE30 800BF230 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* BFE34 800BF234 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* BFE38 800BF238 3C0B800E */  lui        $t3, %hi(D_800DA0C0)
/* BFE3C 800BF23C 8D6BA0C0 */  lw         $t3, %lo(D_800DA0C0)($t3)
/* BFE40 800BF240 3C010010 */  lui        $at, 0x10
/* BFE44 800BF244 34210401 */  ori        $at, $at, 0x401
/* BFE48 800BF248 01616025 */  or         $t4, $t3, $at
/* BFE4C 800BF24C 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* BFE50 800BF250 AC2CA0C0 */  sw         $t4, %lo(D_800DA0C0)($at)
/* BFE54 800BF254 1000012B */  b          .L800BF704
/* BFE58 800BF258 24020001 */   addiu     $v0, $zero, 1
.L800BF25C:
/* BFE5C 800BF25C 8FAD0030 */  lw         $t5, 0x30($sp)
/* BFE60 800BF260 24010001 */  addiu      $at, $zero, 1
/* BFE64 800BF264 8DAE0000 */  lw         $t6, ($t5)
/* BFE68 800BF268 15C1003B */  bne        $t6, $at, .L800BF358
/* BFE6C 800BF26C 00000000 */   nop
/* BFE70 800BF270 8FB8003C */  lw         $t8, 0x3c($sp)
/* BFE74 800BF274 3C014000 */  lui        $at, 0x4000
/* BFE78 800BF278 03017824 */  and        $t7, $t8, $at
/* BFE7C 800BF27C 15E00021 */  bnez       $t7, .L800BF304
/* BFE80 800BF280 00000000 */   nop
/* BFE84 800BF284 95A90004 */  lhu        $t1, 4($t5)
/* BFE88 800BF288 8DA80008 */  lw         $t0, 8($t5)
/* BFE8C 800BF28C 00095080 */  sll        $t2, $t1, 2
/* BFE90 800BF290 01495021 */  addu       $t2, $t2, $t1
/* BFE94 800BF294 000A5080 */  sll        $t2, $t2, 2
/* BFE98 800BF298 01495021 */  addu       $t2, $t2, $t1
/* BFE9C 800BF29C 000A5080 */  sll        $t2, $t2, 2
/* BFEA0 800BF2A0 01495021 */  addu       $t2, $t2, $t1
/* BFEA4 800BF2A4 25190001 */  addiu      $t9, $t0, 1
/* BFEA8 800BF2A8 132A0007 */  beq        $t9, $t2, .L800BF2C8
/* BFEAC 800BF2AC 00000000 */   nop
/* BFEB0 800BF2B0 8FAC002C */  lw         $t4, 0x2c($sp)
/* BFEB4 800BF2B4 240B0018 */  addiu      $t3, $zero, 0x18
/* BFEB8 800BF2B8 0C02FDC5 */  jal        func_800BF714
/* BFEBC 800BF2BC AD8B0000 */   sw        $t3, ($t4)
/* BFEC0 800BF2C0 10000110 */  b          .L800BF704
/* BFEC4 800BF2C4 24020001 */   addiu     $v0, $zero, 1
.L800BF2C8:
/* BFEC8 800BF2C8 240E0002 */  addiu      $t6, $zero, 2
/* BFECC 800BF2CC 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* BFED0 800BF2D0 AF0E0010 */  sw         $t6, %lo(D_A4600010)($t8)
/* BFED4 800BF2D4 3C0F800E */  lui        $t7, %hi(D_800DA0C0)
/* BFED8 800BF2D8 8DEFA0C0 */  lw         $t7, %lo(D_800DA0C0)($t7)
/* BFEDC 800BF2DC 3C010010 */  lui        $at, 0x10
/* BFEE0 800BF2E0 34210401 */  ori        $at, $at, 0x401
/* BFEE4 800BF2E4 01E14025 */  or         $t0, $t7, $at
/* BFEE8 800BF2E8 8FAD002C */  lw         $t5, 0x2c($sp)
/* BFEEC 800BF2EC 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* BFEF0 800BF2F0 AC28A0C0 */  sw         $t0, %lo(D_800DA0C0)($at)
/* BFEF4 800BF2F4 0C02FDFF */  jal        func_800BF7FC
/* BFEF8 800BF2F8 ADA00000 */   sw        $zero, ($t5)
/* BFEFC 800BF2FC 10000101 */  b          .L800BF704
/* BFF00 800BF300 24020001 */   addiu     $v0, $zero, 1
.L800BF304:
/* BFF04 800BF304 8FA9002C */  lw         $t1, 0x2c($sp)
/* BFF08 800BF308 3C048014 */  lui        $a0, 0x8014
/* BFF0C 800BF30C 3C060500 */  lui        $a2, 0x500
/* BFF10 800BF310 8D390004 */  lw         $t9, 4($t1)
/* BFF14 800BF314 8D2A000C */  lw         $t2, 0xc($t1)
/* BFF18 800BF318 34C60400 */  ori        $a2, $a2, 0x400
/* BFF1C 800BF31C 24050001 */  addiu      $a1, $zero, 1
/* BFF20 800BF320 032A5821 */  addu       $t3, $t9, $t2
/* BFF24 800BF324 AD2B0004 */  sw         $t3, 4($t1)
/* BFF28 800BF328 8FAC0030 */  lw         $t4, 0x30($sp)
/* BFF2C 800BF32C 8D8E0008 */  lw         $t6, 8($t4)
/* BFF30 800BF330 25D80001 */  addiu      $t8, $t6, 1
/* BFF34 800BF334 AD980008 */  sw         $t8, 8($t4)
/* BFF38 800BF338 8FAF002C */  lw         $t7, 0x2c($sp)
/* BFF3C 800BF33C 8C846C74 */  lw         $a0, 0x6c74($a0)
/* BFF40 800BF340 8DE8000C */  lw         $t0, 0xc($t7)
/* BFF44 800BF344 8DE70004 */  lw         $a3, 4($t7)
/* BFF48 800BF348 0C0337FC */  jal        func_800CDFF0
/* BFF4C 800BF34C AFA80010 */   sw        $t0, 0x10($sp)
/* BFF50 800BF350 100000EC */  b          .L800BF704
/* BFF54 800BF354 24020001 */   addiu     $v0, $zero, 1
.L800BF358:
/* BFF58 800BF358 8FAD0030 */  lw         $t5, 0x30($sp)
/* BFF5C 800BF35C 8DB90000 */  lw         $t9, ($t5)
/* BFF60 800BF360 172000E3 */  bnez       $t9, .L800BF6F0
/* BFF64 800BF364 00000000 */   nop
/* BFF68 800BF368 95AA0004 */  lhu        $t2, 4($t5)
/* BFF6C 800BF36C 24010003 */  addiu      $at, $zero, 3
/* BFF70 800BF370 15410017 */  bne        $t2, $at, .L800BF3D0
/* BFF74 800BF374 00000000 */   nop
/* BFF78 800BF378 8FA9002C */  lw         $t1, 0x2c($sp)
/* BFF7C 800BF37C 8DAB0008 */  lw         $t3, 8($t5)
/* BFF80 800BF380 8D2E0010 */  lw         $t6, 0x10($t1)
/* BFF84 800BF384 25D80011 */  addiu      $t8, $t6, 0x11
/* BFF88 800BF388 030B082A */  slt        $at, $t8, $t3
/* BFF8C 800BF38C 10200005 */  beqz       $at, .L800BF3A4
/* BFF90 800BF390 00000000 */   nop
/* BFF94 800BF394 0C02FDC5 */  jal        func_800BF714
/* BFF98 800BF398 AD200000 */   sw        $zero, ($t1)
/* BFF9C 800BF39C 100000D9 */  b          .L800BF704
/* BFFA0 800BF3A0 24020001 */   addiu     $v0, $zero, 1
.L800BF3A4:
/* BFFA4 800BF3A4 8FAC003C */  lw         $t4, 0x3c($sp)
/* BFFA8 800BF3A8 3C014000 */  lui        $at, 0x4000
/* BFFAC 800BF3AC 01817824 */  and        $t7, $t4, $at
/* BFFB0 800BF3B0 15E0000C */  bnez       $t7, .L800BF3E4
/* BFFB4 800BF3B4 00000000 */   nop
/* BFFB8 800BF3B8 8FB9002C */  lw         $t9, 0x2c($sp)
/* BFFBC 800BF3BC 24080017 */  addiu      $t0, $zero, 0x17
/* BFFC0 800BF3C0 0C02FDC5 */  jal        func_800BF714
/* BFFC4 800BF3C4 AF280000 */   sw        $t0, ($t9)
/* BFFC8 800BF3C8 100000CE */  b          .L800BF704
/* BFFCC 800BF3CC 24020001 */   addiu     $v0, $zero, 1
.L800BF3D0:
/* BFFD0 800BF3D0 8FAA002C */  lw         $t2, 0x2c($sp)
/* BFFD4 800BF3D4 8D4D0004 */  lw         $t5, 4($t2)
/* BFFD8 800BF3D8 8D4E000C */  lw         $t6, 0xc($t2)
/* BFFDC 800BF3DC 01AE5821 */  addu       $t3, $t5, $t6
/* BFFE0 800BF3E0 AD4B0004 */  sw         $t3, 4($t2)
.L800BF3E4:
/* BFFE4 800BF3E4 3C18A500 */  lui        $t8, %hi(D_A5000510)
/* BFFE8 800BF3E8 8F090510 */  lw         $t1, %lo(D_A5000510)($t8)
/* BFFEC 800BF3EC 3C010020 */  lui        $at, 0x20
/* BFFF0 800BF3F0 AFA90034 */  sw         $t1, 0x34($sp)
/* BFFF4 800BF3F4 8FAC0034 */  lw         $t4, 0x34($sp)
/* BFFF8 800BF3F8 01817824 */  and        $t7, $t4, $at
/* BFFFC 800BF3FC 11E00004 */  beqz       $t7, .L800BF410
/* C0000 800BF400 3C010040 */   lui       $at, 0x40
/* C0004 800BF404 01814024 */  and        $t0, $t4, $at
/* C0008 800BF408 15000006 */  bnez       $t0, .L800BF424
/* C000C 800BF40C 00000000 */   nop
.L800BF410:
/* C0010 800BF410 8FB90034 */  lw         $t9, 0x34($sp)
/* C0014 800BF414 3C010200 */  lui        $at, 0x200
/* C0018 800BF418 03216824 */  and        $t5, $t9, $at
/* C001C 800BF41C 11A00022 */  beqz       $t5, .L800BF4A8
/* C0020 800BF420 00000000 */   nop
.L800BF424:
/* C0024 800BF424 8FAE002C */  lw         $t6, 0x2c($sp)
/* C0028 800BF428 8DCB0010 */  lw         $t3, 0x10($t6)
/* C002C 800BF42C 2D610004 */  sltiu      $at, $t3, 4
/* C0030 800BF430 14200010 */  bnez       $at, .L800BF474
/* C0034 800BF434 00000000 */   nop
/* C0038 800BF438 8FAA0030 */  lw         $t2, 0x30($sp)
/* C003C 800BF43C 24010003 */  addiu      $at, $zero, 3
/* C0040 800BF440 95580004 */  lhu        $t8, 4($t2)
/* C0044 800BF444 17010005 */  bne        $t8, $at, .L800BF45C
/* C0048 800BF448 00000000 */   nop
/* C004C 800BF44C 8D490008 */  lw         $t1, 8($t2)
/* C0050 800BF450 29210053 */  slti       $at, $t1, 0x53
/* C0054 800BF454 14200010 */  bnez       $at, .L800BF498
/* C0058 800BF458 00000000 */   nop
.L800BF45C:
/* C005C 800BF45C 8FAC002C */  lw         $t4, 0x2c($sp)
/* C0060 800BF460 240F0017 */  addiu      $t7, $zero, 0x17
/* C0064 800BF464 0C02FDC5 */  jal        func_800BF714
/* C0068 800BF468 AD8F0000 */   sw        $t7, ($t4)
/* C006C 800BF46C 100000A5 */  b          .L800BF704
/* C0070 800BF470 24020001 */   addiu     $v0, $zero, 1
.L800BF474:
/* C0074 800BF474 8FA8002C */  lw         $t0, 0x2c($sp)
/* C0078 800BF478 8FAD0030 */  lw         $t5, 0x30($sp)
/* C007C 800BF47C 8D190010 */  lw         $t9, 0x10($t0)
/* C0080 800BF480 AFB90028 */  sw         $t9, 0x28($sp)
/* C0084 800BF484 8DAE0008 */  lw         $t6, 8($t5)
/* C0088 800BF488 0019C080 */  sll        $t8, $t9, 2
/* C008C 800BF48C 01185021 */  addu       $t2, $t0, $t8
/* C0090 800BF490 25CB0001 */  addiu      $t3, $t6, 1
/* C0094 800BF494 AD4B0014 */  sw         $t3, 0x14($t2)
.L800BF498:
/* C0098 800BF498 8FA9002C */  lw         $t1, 0x2c($sp)
/* C009C 800BF49C 8D2F0010 */  lw         $t7, 0x10($t1)
/* C00A0 800BF4A0 25EC0001 */  addiu      $t4, $t7, 1
/* C00A4 800BF4A4 AD2C0010 */  sw         $t4, 0x10($t1)
.L800BF4A8:
/* C00A8 800BF4A8 8FAD003C */  lw         $t5, 0x3c($sp)
/* C00AC 800BF4AC 3C011000 */  lui        $at, 0x1000
/* C00B0 800BF4B0 01A17024 */  and        $t6, $t5, $at
/* C00B4 800BF4B4 11C0003B */  beqz       $t6, .L800BF5A4
/* C00B8 800BF4B8 00000000 */   nop
/* C00BC 800BF4BC 8FB90030 */  lw         $t9, 0x30($sp)
/* C00C0 800BF4C0 24010057 */  addiu      $at, $zero, 0x57
/* C00C4 800BF4C4 8F280008 */  lw         $t0, 8($t9)
/* C00C8 800BF4C8 11010005 */  beq        $t0, $at, .L800BF4E0
/* C00CC 800BF4CC 00000000 */   nop
/* C00D0 800BF4D0 8FAB002C */  lw         $t3, 0x2c($sp)
/* C00D4 800BF4D4 24180018 */  addiu      $t8, $zero, 0x18
/* C00D8 800BF4D8 0C02FDC5 */  jal        func_800BF714
/* C00DC 800BF4DC AD780000 */   sw        $t8, ($t3)
.L800BF4E0:
/* C00E0 800BF4E0 8FAA0030 */  lw         $t2, 0x30($sp)
/* C00E4 800BF4E4 24010002 */  addiu      $at, $zero, 2
/* C00E8 800BF4E8 954F0004 */  lhu        $t7, 4($t2)
/* C00EC 800BF4EC 15E10012 */  bne        $t7, $at, .L800BF538
/* C00F0 800BF4F0 00000000 */   nop
/* C00F4 800BF4F4 954C0006 */  lhu        $t4, 6($t2)
/* C00F8 800BF4F8 1580000F */  bnez       $t4, .L800BF538
/* C00FC 800BF4FC 00000000 */   nop
/* C0100 800BF500 24090001 */  addiu      $t1, $zero, 1
/* C0104 800BF504 A5490006 */  sh         $t1, 6($t2)
/* C0108 800BF508 8FAE0030 */  lw         $t6, 0x30($sp)
/* C010C 800BF50C 240DFFFF */  addiu      $t5, $zero, -1
/* C0110 800BF510 240F0016 */  addiu      $t7, $zero, 0x16
/* C0114 800BF514 ADCD0008 */  sw         $t5, 8($t6)
/* C0118 800BF518 8FB90030 */  lw         $t9, 0x30($sp)
/* C011C 800BF51C 8F280040 */  lw         $t0, 0x40($t9)
/* C0120 800BF520 8F380048 */  lw         $t8, 0x48($t9)
/* C0124 800BF524 01185823 */  subu       $t3, $t0, $t8
/* C0128 800BF528 AF2B0040 */  sw         $t3, 0x40($t9)
/* C012C 800BF52C 8FAC002C */  lw         $t4, 0x2c($sp)
/* C0130 800BF530 10000010 */  b          .L800BF574
/* C0134 800BF534 AD8F0000 */   sw        $t7, ($t4)
.L800BF538:
/* C0138 800BF538 24090002 */  addiu      $t1, $zero, 2
/* C013C 800BF53C 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* C0140 800BF540 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* C0144 800BF544 3C0D800E */  lui        $t5, %hi(D_800DA0C0)
/* C0148 800BF548 8DADA0C0 */  lw         $t5, %lo(D_800DA0C0)($t5)
/* C014C 800BF54C 3C010010 */  lui        $at, 0x10
/* C0150 800BF550 34210401 */  ori        $at, $at, 0x401
/* C0154 800BF554 8FB80030 */  lw         $t8, 0x30($sp)
/* C0158 800BF558 01A17025 */  or         $t6, $t5, $at
/* C015C 800BF55C 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* C0160 800BF560 AC2EA0C0 */  sw         $t6, %lo(D_800DA0C0)($at)
/* C0164 800BF564 24080002 */  addiu      $t0, $zero, 2
/* C0168 800BF568 AF080000 */  sw         $t0, ($t8)
/* C016C 800BF56C 8FAB002C */  lw         $t3, 0x2c($sp)
/* C0170 800BF570 AD600000 */  sw         $zero, ($t3)
.L800BF574:
/* C0174 800BF574 8FB9002C */  lw         $t9, 0x2c($sp)
/* C0178 800BF578 3C048014 */  lui        $a0, %hi(D_80146C74)
/* C017C 800BF57C 8C846C74 */  lw         $a0, %lo(D_80146C74)($a0)
/* C0180 800BF580 8F2F000C */  lw         $t7, 0xc($t9)
/* C0184 800BF584 8F270008 */  lw         $a3, 8($t9)
/* C0188 800BF588 00002825 */  or         $a1, $zero, $zero
/* C018C 800BF58C 000F6080 */  sll        $t4, $t7, 2
/* C0190 800BF590 AFAC0010 */  sw         $t4, 0x10($sp)
/* C0194 800BF594 0C0337FC */  jal        func_800CDFF0
/* C0198 800BF598 3C060500 */   lui       $a2, 0x500
/* C019C 800BF59C 10000059 */  b          .L800BF704
/* C01A0 800BF5A0 24020001 */   addiu     $v0, $zero, 1
.L800BF5A4:
/* C01A4 800BF5A4 8FA90030 */  lw         $t1, 0x30($sp)
/* C01A8 800BF5A8 2401FFFF */  addiu      $at, $zero, -1
/* C01AC 800BF5AC 8D2A0008 */  lw         $t2, 8($t1)
/* C01B0 800BF5B0 15410020 */  bne        $t2, $at, .L800BF634
/* C01B4 800BF5B4 00000000 */   nop
/* C01B8 800BF5B8 952D0004 */  lhu        $t5, 4($t1)
/* C01BC 800BF5BC 24010002 */  addiu      $at, $zero, 2
/* C01C0 800BF5C0 15A1001C */  bne        $t5, $at, .L800BF634
/* C01C4 800BF5C4 00000000 */   nop
/* C01C8 800BF5C8 952E0006 */  lhu        $t6, 6($t1)
/* C01CC 800BF5CC 24010001 */  addiu      $at, $zero, 1
/* C01D0 800BF5D0 15C10018 */  bne        $t6, $at, .L800BF634
/* C01D4 800BF5D4 00000000 */   nop
/* C01D8 800BF5D8 25280018 */  addiu      $t0, $t1, 0x18
/* C01DC 800BF5DC AFA80024 */  sw         $t0, 0x24($sp)
/* C01E0 800BF5E0 8D380028 */  lw         $t8, 0x28($t1)
/* C01E4 800BF5E4 17000010 */  bnez       $t8, .L800BF628
/* C01E8 800BF5E8 00000000 */   nop
/* C01EC 800BF5EC 8D2B0020 */  lw         $t3, 0x20($t1)
/* C01F0 800BF5F0 8D790000 */  lw         $t9, ($t3)
/* C01F4 800BF5F4 8D6F0004 */  lw         $t7, 4($t3)
/* C01F8 800BF5F8 8D6A0008 */  lw         $t2, 8($t3)
/* C01FC 800BF5FC 8D6E000C */  lw         $t6, 0xc($t3)
/* C0200 800BF600 032F6025 */  or         $t4, $t9, $t7
/* C0204 800BF604 018A6825 */  or         $t5, $t4, $t2
/* C0208 800BF608 01CD4025 */  or         $t0, $t6, $t5
/* C020C 800BF60C 11000006 */  beqz       $t0, .L800BF628
/* C0210 800BF610 00000000 */   nop
/* C0214 800BF614 24180018 */  addiu      $t8, $zero, 0x18
/* C0218 800BF618 0C02FDC5 */  jal        func_800BF714
/* C021C 800BF61C AD380018 */   sw        $t8, 0x18($t1)
/* C0220 800BF620 10000038 */  b          .L800BF704
/* C0224 800BF624 24020001 */   addiu     $v0, $zero, 1
.L800BF628:
/* C0228 800BF628 8FB90024 */  lw         $t9, 0x24($sp)
/* C022C 800BF62C 0C02FDFF */  jal        func_800BF7FC
/* C0230 800BF630 AF200000 */   sw        $zero, ($t9)
.L800BF634:
/* C0234 800BF634 8FAF0030 */  lw         $t7, 0x30($sp)
/* C0238 800BF638 3C014000 */  lui        $at, 0x4000
/* C023C 800BF63C 8DEC0008 */  lw         $t4, 8($t7)
/* C0240 800BF640 258A0001 */  addiu      $t2, $t4, 1
/* C0244 800BF644 ADEA0008 */  sw         $t2, 8($t7)
/* C0248 800BF648 8FAB003C */  lw         $t3, 0x3c($sp)
/* C024C 800BF64C 01617024 */  and        $t6, $t3, $at
/* C0250 800BF650 11C0001A */  beqz       $t6, .L800BF6BC
/* C0254 800BF654 00000000 */   nop
/* C0258 800BF658 8FAD0030 */  lw         $t5, 0x30($sp)
/* C025C 800BF65C 8DA80008 */  lw         $t0, 8($t5)
/* C0260 800BF660 29010055 */  slti       $at, $t0, 0x55
/* C0264 800BF664 14200007 */  bnez       $at, .L800BF684
/* C0268 800BF668 00000000 */   nop
/* C026C 800BF66C 8FA9002C */  lw         $t1, 0x2c($sp)
/* C0270 800BF670 24180018 */  addiu      $t8, $zero, 0x18
/* C0274 800BF674 0C02FDC5 */  jal        func_800BF714
/* C0278 800BF678 AD380000 */   sw        $t8, ($t1)
/* C027C 800BF67C 10000021 */  b          .L800BF704
/* C0280 800BF680 24020001 */   addiu     $v0, $zero, 1
.L800BF684:
/* C0284 800BF684 8FB9002C */  lw         $t9, 0x2c($sp)
/* C0288 800BF688 3C048014 */  lui        $a0, %hi(D_80146C74)
/* C028C 800BF68C 3C060500 */  lui        $a2, 0x500
/* C0290 800BF690 8F2C000C */  lw         $t4, 0xc($t9)
/* C0294 800BF694 8F270004 */  lw         $a3, 4($t9)
/* C0298 800BF698 34C60400 */  ori        $a2, $a2, 0x400
/* C029C 800BF69C 8C846C74 */  lw         $a0, %lo(D_80146C74)($a0)
/* C02A0 800BF6A0 00002825 */  or         $a1, $zero, $zero
/* C02A4 800BF6A4 0C0337FC */  jal        func_800CDFF0
/* C02A8 800BF6A8 AFAC0010 */   sw        $t4, 0x10($sp)
/* C02AC 800BF6AC 8FAA002C */  lw         $t2, 0x2c($sp)
/* C02B0 800BF6B0 24020001 */  addiu      $v0, $zero, 1
/* C02B4 800BF6B4 10000013 */  b          .L800BF704
/* C02B8 800BF6B8 AD400000 */   sw        $zero, ($t2)
.L800BF6BC:
/* C02BC 800BF6BC 8FAF0030 */  lw         $t7, 0x30($sp)
/* C02C0 800BF6C0 8DEB0008 */  lw         $t3, 8($t7)
/* C02C4 800BF6C4 29610055 */  slti       $at, $t3, 0x55
/* C02C8 800BF6C8 10200007 */  beqz       $at, .L800BF6E8
/* C02CC 800BF6CC 00000000 */   nop
/* C02D0 800BF6D0 8FAD002C */  lw         $t5, 0x2c($sp)
/* C02D4 800BF6D4 240E0018 */  addiu      $t6, $zero, 0x18
/* C02D8 800BF6D8 0C02FDC5 */  jal        func_800BF714
/* C02DC 800BF6DC ADAE0000 */   sw        $t6, ($t5)
/* C02E0 800BF6E0 10000008 */  b          .L800BF704
/* C02E4 800BF6E4 24020001 */   addiu     $v0, $zero, 1
.L800BF6E8:
/* C02E8 800BF6E8 10000006 */  b          .L800BF704
/* C02EC 800BF6EC 24020001 */   addiu     $v0, $zero, 1
.L800BF6F0:
/* C02F0 800BF6F0 8FB8002C */  lw         $t8, 0x2c($sp)
/* C02F4 800BF6F4 24080004 */  addiu      $t0, $zero, 4
/* C02F8 800BF6F8 0C02FDC5 */  jal        func_800BF714
/* C02FC 800BF6FC AF080000 */   sw        $t0, ($t8)
/* C0300 800BF700 24020001 */  addiu      $v0, $zero, 1
.L800BF704:
/* C0304 800BF704 8FBF001C */  lw         $ra, 0x1c($sp)
/* C0308 800BF708 27BD0040 */  addiu      $sp, $sp, 0x40
/* C030C 800BF70C 03E00008 */  jr         $ra
/* C0310 800BF710 00000000 */   nop

glabel func_800BF714
/* C0314 800BF714 3C0E8014 */  lui        $t6, %hi(D_80146C74)
/* C0318 800BF718 8DCE6C74 */  lw         $t6, %lo(D_80146C74)($t6)
/* C031C 800BF71C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C0320 800BF720 AFBF0014 */  sw         $ra, 0x14($sp)
/* C0324 800BF724 25CF0014 */  addiu      $t7, $t6, 0x14
/* C0328 800BF728 AFAF001C */  sw         $t7, 0x1c($sp)
/* C032C 800BF72C 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* C0330 800BF730 8F190010 */  lw         $t9, %lo(D_A4600010)($t8)
/* C0334 800BF734 AFB90018 */  sw         $t9, 0x18($sp)
/* C0338 800BF738 8FA80018 */  lw         $t0, 0x18($sp)
/* C033C 800BF73C 31090003 */  andi       $t1, $t0, 3
/* C0340 800BF740 11200008 */  beqz       $t1, .L800BF764
/* C0344 800BF744 00000000 */   nop
.L800BF748:
/* C0348 800BF748 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* C034C 800BF74C 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* C0350 800BF750 AFAB0018 */  sw         $t3, 0x18($sp)
/* C0354 800BF754 8FAC0018 */  lw         $t4, 0x18($sp)
/* C0358 800BF758 318D0003 */  andi       $t5, $t4, 3
/* C035C 800BF75C 15A0FFFA */  bnez       $t5, .L800BF748
/* C0360 800BF760 00000000 */   nop
.L800BF764:
/* C0364 800BF764 8FAE001C */  lw         $t6, 0x1c($sp)
/* C0368 800BF768 3C011000 */  lui        $at, 0x1000
/* C036C 800BF76C 3C19A500 */  lui        $t9, %hi(D_A5000510)
/* C0370 800BF770 8DCF0010 */  lw         $t7, 0x10($t6)
/* C0374 800BF774 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* C0378 800BF778 01E1C025 */  or         $t8, $t7, $at
/* C037C 800BF77C AF380510 */  sw         $t8, %lo(D_A5000510)($t9)
/* C0380 800BF780 8D090010 */  lw         $t1, %lo(D_A4600010)($t0)
/* C0384 800BF784 AFA90018 */  sw         $t1, 0x18($sp)
/* C0388 800BF788 8FAA0018 */  lw         $t2, 0x18($sp)
/* C038C 800BF78C 314B0003 */  andi       $t3, $t2, 3
/* C0390 800BF790 11600008 */  beqz       $t3, .L800BF7B4
/* C0394 800BF794 00000000 */   nop
.L800BF798:
/* C0398 800BF798 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* C039C 800BF79C 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* C03A0 800BF7A0 AFAD0018 */  sw         $t5, 0x18($sp)
/* C03A4 800BF7A4 8FAE0018 */  lw         $t6, 0x18($sp)
/* C03A8 800BF7A8 31CF0003 */  andi       $t7, $t6, 3
/* C03AC 800BF7AC 15E0FFFA */  bnez       $t7, .L800BF798
/* C03B0 800BF7B0 00000000 */   nop
.L800BF7B4:
/* C03B4 800BF7B4 8FB8001C */  lw         $t8, 0x1c($sp)
/* C03B8 800BF7B8 3C08A500 */  lui        $t0, %hi(D_A5000510)
/* C03BC 800BF7BC 8F190010 */  lw         $t9, 0x10($t8)
/* C03C0 800BF7C0 0C02FDFF */  jal        func_800BF7FC
/* C03C4 800BF7C4 AD190510 */   sw        $t9, %lo(D_A5000510)($t0)
/* C03C8 800BF7C8 24090002 */  addiu      $t1, $zero, 2
/* C03CC 800BF7CC 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* C03D0 800BF7D0 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* C03D4 800BF7D4 3C0B800E */  lui        $t3, %hi(D_800DA0C0)
/* C03D8 800BF7D8 8D6BA0C0 */  lw         $t3, %lo(D_800DA0C0)($t3)
/* C03DC 800BF7DC 3C010010 */  lui        $at, 0x10
/* C03E0 800BF7E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C03E4 800BF7E4 34210401 */  ori        $at, $at, 0x401
/* C03E8 800BF7E8 01616025 */  or         $t4, $t3, $at
/* C03EC 800BF7EC 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* C03F0 800BF7F0 AC2CA0C0 */  sw         $t4, %lo(D_800DA0C0)($at)
/* C03F4 800BF7F4 03E00008 */  jr         $ra
/* C03F8 800BF7F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800BF7FC
/* C03FC 800BF7FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C0400 800BF800 3C0E8014 */  lui        $t6, %hi(D_80146B80)
/* C0404 800BF804 25CE6B80 */  addiu      $t6, $t6, %lo(D_80146B80)
/* C0408 800BF808 25CF0040 */  addiu      $t7, $t6, 0x40
/* C040C 800BF80C AFBF001C */  sw         $ra, 0x1c($sp)
/* C0410 800BF810 AFB00018 */  sw         $s0, 0x18($sp)
/* C0414 800BF814 AFAF002C */  sw         $t7, 0x2c($sp)
/* C0418 800BF818 8DD80040 */  lw         $t8, 0x40($t6)
/* C041C 800BF81C 1300002D */  beqz       $t8, .L800BF8D4
/* C0420 800BF820 AFB80028 */   sw        $t8, 0x28($sp)
/* C0424 800BF824 8F190008 */  lw         $t9, 8($t8)
/* C0428 800BF828 8F080010 */  lw         $t0, 0x10($t8)
/* C042C 800BF82C 0328082A */  slt        $at, $t9, $t0
/* C0430 800BF830 10200028 */  beqz       $at, .L800BF8D4
/* C0434 800BF834 00000000 */   nop
/* C0438 800BF838 8FA90028 */  lw         $t1, 0x28($sp)
/* C043C 800BF83C 8FAE002C */  lw         $t6, 0x2c($sp)
/* C0440 800BF840 8D2A000C */  lw         $t2, 0xc($t1)
/* C0444 800BF844 8D2B0008 */  lw         $t3, 8($t1)
/* C0448 800BF848 8D2D0010 */  lw         $t5, 0x10($t1)
/* C044C 800BF84C 014B6021 */  addu       $t4, $t2, $t3
/* C0450 800BF850 018D001A */  div        $zero, $t4, $t5
/* C0454 800BF854 00007810 */  mfhi       $t7
/* C0458 800BF858 AFAF0024 */  sw         $t7, 0x24($sp)
/* C045C 800BF85C 8D280014 */  lw         $t0, 0x14($t1)
/* C0460 800BF860 8DD80004 */  lw         $t8, 4($t6)
/* C0464 800BF864 000FC880 */  sll        $t9, $t7, 2
/* C0468 800BF868 01195021 */  addu       $t2, $t0, $t9
/* C046C 800BF86C AD580000 */  sw         $t8, ($t2)
/* C0470 800BF870 8FAB0028 */  lw         $t3, 0x28($sp)
/* C0474 800BF874 15A00002 */  bnez       $t5, .L800BF880
/* C0478 800BF878 00000000 */   nop
/* C047C 800BF87C 0007000D */  break      7
.L800BF880:
/* C0480 800BF880 2401FFFF */   addiu     $at, $zero, -1
/* C0484 800BF884 15A10004 */  bne        $t5, $at, .L800BF898
/* C0488 800BF888 3C018000 */   lui       $at, 0x8000
/* C048C 800BF88C 15810002 */  bne        $t4, $at, .L800BF898
/* C0490 800BF890 00000000 */   nop
/* C0494 800BF894 0006000D */  break      6
.L800BF898:
/* C0498 800BF898 8D6C0008 */   lw        $t4, 8($t3)
/* C049C 800BF89C 258D0001 */  addiu      $t5, $t4, 1
/* C04A0 800BF8A0 AD6D0008 */  sw         $t5, 8($t3)
/* C04A4 800BF8A4 8FAE0028 */  lw         $t6, 0x28($sp)
/* C04A8 800BF8A8 8DCF0000 */  lw         $t7, ($t6)
/* C04AC 800BF8AC 8DE90000 */  lw         $t1, ($t7)
/* C04B0 800BF8B0 11200008 */  beqz       $t1, .L800BF8D4
/* C04B4 800BF8B4 00000000 */   nop
/* C04B8 800BF8B8 0C02FB51 */  jal        func_800BED44
/* C04BC 800BF8BC 01C02025 */   or        $a0, $t6, $zero
/* C04C0 800BF8C0 00408025 */  or         $s0, $v0, $zero
/* C04C4 800BF8C4 3C04800E */  lui        $a0, %hi(D_800DA078)
/* C04C8 800BF8C8 2484A078 */  addiu      $a0, $a0, %lo(D_800DA078)
/* C04CC 800BF8CC 0C02FB3F */  jal        func_800BECFC
/* C04D0 800BF8D0 02002825 */   or        $a1, $s0, $zero
.L800BF8D4:
/* C04D4 800BF8D4 8FBF001C */  lw         $ra, 0x1c($sp)
/* C04D8 800BF8D8 8FB00018 */  lw         $s0, 0x18($sp)
/* C04DC 800BF8DC 27BD0030 */  addiu      $sp, $sp, 0x30
/* C04E0 800BF8E0 03E00008 */  jr         $ra
/* C04E4 800BF8E4 00000000 */   nop
/* C04E8 800BF8E8 00000000 */  nop
/* C04EC 800BF8EC 00000000 */  nop
