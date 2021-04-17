.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009E5D0
/* 9F1D0 8009E5D0 00063400 */  sll        $a2, $a2, 0x10
/* 9F1D4 8009E5D4 00063403 */  sra        $a2, $a2, 0x10
/* 9F1D8 8009E5D8 AFA40000 */  sw         $a0, ($sp)
/* 9F1DC 8009E5DC A4A60016 */  sh         $a2, 0x16($a1)
/* 9F1E0 8009E5E0 10000001 */  b          .L8009E5E8
/* 9F1E4 8009E5E4 00000000 */   nop
.L8009E5E8:
/* 9F1E8 8009E5E8 03E00008 */  jr         $ra
/* 9F1EC 8009E5EC 00000000 */   nop

glabel func_8009E5F0
/* 9F1F0 8009E5F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9F1F4 8009E5F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F1F8 8009E5F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 9F1FC 8009E5FC AFA5001C */  sw         $a1, 0x1c($sp)
/* 9F200 8009E600 AFA60020 */  sw         $a2, 0x20($sp)
/* 9F204 8009E604 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9F208 8009E608 8FAF0018 */  lw         $t7, 0x18($sp)
/* 9F20C 8009E60C ADEE0000 */  sw         $t6, ($t7)
/* 9F210 8009E610 8FB80020 */  lw         $t8, 0x20($sp)
/* 9F214 8009E614 8FB90018 */  lw         $t9, 0x18($sp)
/* 9F218 8009E618 AF380010 */  sw         $t8, 0x10($t9)
/* 9F21C 8009E61C 8FA80018 */  lw         $t0, 0x18($sp)
/* 9F220 8009E620 A500001A */  sh         $zero, 0x1a($t0)
/* 9F224 8009E624 8FA90018 */  lw         $t1, 0x18($sp)
/* 9F228 8009E628 AD20000C */  sw         $zero, 0xc($t1)
/* 9F22C 8009E62C 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9F230 8009E630 8FAB0018 */  lw         $t3, 0x18($sp)
/* 9F234 8009E634 AD6A0008 */  sw         $t2, 8($t3)
/* 9F238 8009E638 0C027BBC */  jal        func_8009EEF0
/* 9F23C 8009E63C 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F240 8009E640 3C014D54 */  lui        $at, 0x4d54
/* 9F244 8009E644 34216864 */  ori        $at, $at, 0x6864
/* 9F248 8009E648 10410007 */  beq        $v0, $at, .L8009E668
/* 9F24C 8009E64C 00000000 */   nop
/* 9F250 8009E650 24040072 */  addiu      $a0, $zero, 0x72
/* 9F254 8009E654 24050001 */  addiu      $a1, $zero, 1
/* 9F258 8009E658 0C02B5EC */  jal        func_800AD7B0
/* 9F25C 8009E65C 8FA6001C */   lw        $a2, 0x1c($sp)
/* 9F260 8009E660 10000046 */  b          .L8009E77C
/* 9F264 8009E664 00000000 */   nop
.L8009E668:
/* 9F268 8009E668 0C027BBC */  jal        func_8009EEF0
/* 9F26C 8009E66C 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F270 8009E670 0C027BA6 */  jal        func_8009EE98
/* 9F274 8009E674 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F278 8009E678 10400007 */  beqz       $v0, .L8009E698
/* 9F27C 8009E67C 00000000 */   nop
/* 9F280 8009E680 24040073 */  addiu      $a0, $zero, 0x73
/* 9F284 8009E684 24050001 */  addiu      $a1, $zero, 1
/* 9F288 8009E688 0C02B5EC */  jal        func_800AD7B0
/* 9F28C 8009E68C 8FA6001C */   lw        $a2, 0x1c($sp)
/* 9F290 8009E690 1000003A */  b          .L8009E77C
/* 9F294 8009E694 00000000 */   nop
.L8009E698:
/* 9F298 8009E698 0C027BA6 */  jal        func_8009EE98
/* 9F29C 8009E69C 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F2A0 8009E6A0 24010001 */  addiu      $at, $zero, 1
/* 9F2A4 8009E6A4 10410007 */  beq        $v0, $at, .L8009E6C4
/* 9F2A8 8009E6A8 00000000 */   nop
/* 9F2AC 8009E6AC 24040074 */  addiu      $a0, $zero, 0x74
/* 9F2B0 8009E6B0 24050001 */  addiu      $a1, $zero, 1
/* 9F2B4 8009E6B4 0C02B5EC */  jal        func_800AD7B0
/* 9F2B8 8009E6B8 8FA6001C */   lw        $a2, 0x1c($sp)
/* 9F2BC 8009E6BC 1000002F */  b          .L8009E77C
/* 9F2C0 8009E6C0 00000000 */   nop
.L8009E6C4:
/* 9F2C4 8009E6C4 0C027BA6 */  jal        func_8009EE98
/* 9F2C8 8009E6C8 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F2CC 8009E6CC 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9F2D0 8009E6D0 A5820018 */  sh         $v0, 0x18($t4)
/* 9F2D4 8009E6D4 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9F2D8 8009E6D8 85AE0018 */  lh         $t6, 0x18($t5)
/* 9F2DC 8009E6DC 31CF8000 */  andi       $t7, $t6, 0x8000
/* 9F2E0 8009E6E0 11E00007 */  beqz       $t7, .L8009E700
/* 9F2E4 8009E6E4 00000000 */   nop
/* 9F2E8 8009E6E8 24040075 */  addiu      $a0, $zero, 0x75
/* 9F2EC 8009E6EC 24050001 */  addiu      $a1, $zero, 1
/* 9F2F0 8009E6F0 0C02B5EC */  jal        func_800AD7B0
/* 9F2F4 8009E6F4 8FA6001C */   lw        $a2, 0x1c($sp)
/* 9F2F8 8009E6F8 10000020 */  b          .L8009E77C
/* 9F2FC 8009E6FC 00000000 */   nop
.L8009E700:
/* 9F300 8009E700 8FB80018 */  lw         $t8, 0x18($sp)
/* 9F304 8009E704 3C013FF0 */  lui        $at, 0x3ff0
/* 9F308 8009E708 44812800 */  mtc1       $at, $f5
/* 9F30C 8009E70C 87190018 */  lh         $t9, 0x18($t8)
/* 9F310 8009E710 44802000 */  mtc1       $zero, $f4
/* 9F314 8009E714 44993000 */  mtc1       $t9, $f6
/* 9F318 8009E718 00000000 */  nop
/* 9F31C 8009E71C 46803220 */  cvt.s.w    $f8, $f6
/* 9F320 8009E720 460042A1 */  cvt.d.s    $f10, $f8
/* 9F324 8009E724 462A2403 */  div.d      $f16, $f4, $f10
/* 9F328 8009E728 462084A0 */  cvt.s.d    $f18, $f16
/* 9F32C 8009E72C E7120014 */  swc1       $f18, 0x14($t8)
/* 9F330 8009E730 0C027BBC */  jal        func_8009EEF0
/* 9F334 8009E734 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F338 8009E738 3C014D54 */  lui        $at, 0x4d54
/* 9F33C 8009E73C 3421726B */  ori        $at, $at, 0x726b
/* 9F340 8009E740 10410007 */  beq        $v0, $at, .L8009E760
/* 9F344 8009E744 00000000 */   nop
/* 9F348 8009E748 24040076 */  addiu      $a0, $zero, 0x76
/* 9F34C 8009E74C 24050001 */  addiu      $a1, $zero, 1
/* 9F350 8009E750 0C02B5EC */  jal        func_800AD7B0
/* 9F354 8009E754 8FA6001C */   lw        $a2, 0x1c($sp)
/* 9F358 8009E758 10000008 */  b          .L8009E77C
/* 9F35C 8009E75C 00000000 */   nop
.L8009E760:
/* 9F360 8009E760 0C027BBC */  jal        func_8009EEF0
/* 9F364 8009E764 8FA40018 */   lw        $a0, 0x18($sp)
/* 9F368 8009E768 8FA80018 */  lw         $t0, 0x18($sp)
/* 9F36C 8009E76C 8D090008 */  lw         $t1, 8($t0)
/* 9F370 8009E770 AD090004 */  sw         $t1, 4($t0)
/* 9F374 8009E774 10000001 */  b          .L8009E77C
/* 9F378 8009E778 00000000 */   nop
.L8009E77C:
/* 9F37C 8009E77C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F380 8009E780 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9F384 8009E784 03E00008 */  jr         $ra
/* 9F388 8009E788 00000000 */   nop

glabel func_8009E78C
/* 9F38C 8009E78C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9F390 8009E790 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F394 8009E794 AFA40030 */  sw         $a0, 0x30($sp)
/* 9F398 8009E798 AFA50034 */  sw         $a1, 0x34($sp)
/* 9F39C 8009E79C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9F3A0 8009E7A0 8DD80000 */  lw         $t8, ($t6)
/* 9F3A4 8009E7A4 8DD90010 */  lw         $t9, 0x10($t6)
/* 9F3A8 8009E7A8 8DCF0008 */  lw         $t7, 8($t6)
/* 9F3AC 8009E7AC 03194021 */  addu       $t0, $t8, $t9
/* 9F3B0 8009E7B0 01E8082B */  sltu       $at, $t7, $t0
/* 9F3B4 8009E7B4 14200004 */  bnez       $at, .L8009E7C8
/* 9F3B8 8009E7B8 00000000 */   nop
/* 9F3BC 8009E7BC 24040083 */  addiu      $a0, $zero, 0x83
/* 9F3C0 8009E7C0 0C02B5EC */  jal        func_800AD7B0
/* 9F3C4 8009E7C4 00002825 */   or        $a1, $zero, $zero
.L8009E7C8:
/* 9F3C8 8009E7C8 0C027BE4 */  jal        func_8009EF90
/* 9F3CC 8009E7CC 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F3D0 8009E7D0 AFA20024 */  sw         $v0, 0x24($sp)
/* 9F3D4 8009E7D4 8FA90030 */  lw         $t1, 0x30($sp)
/* 9F3D8 8009E7D8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9F3DC 8009E7DC 8D2A000C */  lw         $t2, 0xc($t1)
/* 9F3E0 8009E7E0 014B6021 */  addu       $t4, $t2, $t3
/* 9F3E4 8009E7E4 AD2C000C */  sw         $t4, 0xc($t1)
/* 9F3E8 8009E7E8 0C027B9A */  jal        func_8009EE68
/* 9F3EC 8009E7EC 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F3F0 8009E7F0 A3A2002F */  sb         $v0, 0x2f($sp)
/* 9F3F4 8009E7F4 93AD002F */  lbu        $t5, 0x2f($sp)
/* 9F3F8 8009E7F8 240100F0 */  addiu      $at, $zero, 0xf0
/* 9F3FC 8009E7FC 11A10004 */  beq        $t5, $at, .L8009E810
/* 9F400 8009E800 00000000 */   nop
/* 9F404 8009E804 240100F7 */  addiu      $at, $zero, 0xf7
/* 9F408 8009E808 15A10018 */  bne        $t5, $at, .L8009E86C
/* 9F40C 8009E80C 00000000 */   nop
.L8009E810:
/* 9F410 8009E810 24040077 */  addiu      $a0, $zero, 0x77
/* 9F414 8009E814 0C02B5EC */  jal        func_800AD7B0
/* 9F418 8009E818 00002825 */   or        $a1, $zero, $zero
/* 9F41C 8009E81C 0C027BE4 */  jal        func_8009EF90
/* 9F420 8009E820 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F424 8009E824 AFA20028 */  sw         $v0, 0x28($sp)
/* 9F428 8009E828 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9F42C 8009E82C AFA00020 */  sw         $zero, 0x20($sp)
/* 9F430 8009E830 19C00009 */  blez       $t6, .L8009E858
/* 9F434 8009E834 00000000 */   nop
.L8009E838:
/* 9F438 8009E838 0C027B9A */  jal        func_8009EE68
/* 9F43C 8009E83C 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F440 8009E840 8FB80020 */  lw         $t8, 0x20($sp)
/* 9F444 8009E844 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9F448 8009E848 27190001 */  addiu      $t9, $t8, 1
/* 9F44C 8009E84C 032F082A */  slt        $at, $t9, $t7
/* 9F450 8009E850 1420FFF9 */  bnez       $at, .L8009E838
/* 9F454 8009E854 AFB90020 */   sw        $t9, 0x20($sp)
.L8009E858:
/* 9F458 8009E858 8FA40030 */  lw         $a0, 0x30($sp)
/* 9F45C 8009E85C 0C0279E3 */  jal        func_8009E78C
/* 9F460 8009E860 8FA50034 */   lw        $a1, 0x34($sp)
/* 9F464 8009E864 10000088 */  b          .L8009EA88
/* 9F468 8009E868 00000000 */   nop
.L8009E86C:
/* 9F46C 8009E86C 93A8002F */  lbu        $t0, 0x2f($sp)
/* 9F470 8009E870 240100FF */  addiu      $at, $zero, 0xff
/* 9F474 8009E874 15010056 */  bne        $t0, $at, .L8009E9D0
/* 9F478 8009E878 00000000 */   nop
/* 9F47C 8009E87C 0C027B9A */  jal        func_8009EE68
/* 9F480 8009E880 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F484 8009E884 A3A2001F */  sb         $v0, 0x1f($sp)
/* 9F488 8009E888 93AA001F */  lbu        $t2, 0x1f($sp)
/* 9F48C 8009E88C 24010051 */  addiu      $at, $zero, 0x51
/* 9F490 8009E890 1541001E */  bne        $t2, $at, .L8009E90C
/* 9F494 8009E894 00000000 */   nop
/* 9F498 8009E898 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9F49C 8009E89C 240B0003 */  addiu      $t3, $zero, 3
/* 9F4A0 8009E8A0 A58B0000 */  sh         $t3, ($t4)
/* 9F4A4 8009E8A4 8FA90024 */  lw         $t1, 0x24($sp)
/* 9F4A8 8009E8A8 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9F4AC 8009E8AC ADA90004 */  sw         $t1, 4($t5)
/* 9F4B0 8009E8B0 93AE002F */  lbu        $t6, 0x2f($sp)
/* 9F4B4 8009E8B4 8FB80034 */  lw         $t8, 0x34($sp)
/* 9F4B8 8009E8B8 A30E0008 */  sb         $t6, 8($t8)
/* 9F4BC 8009E8BC 93B9001F */  lbu        $t9, 0x1f($sp)
/* 9F4C0 8009E8C0 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9F4C4 8009E8C4 A1F90009 */  sb         $t9, 9($t7)
/* 9F4C8 8009E8C8 0C027B9A */  jal        func_8009EE68
/* 9F4CC 8009E8CC 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F4D0 8009E8D0 8FA80034 */  lw         $t0, 0x34($sp)
/* 9F4D4 8009E8D4 A102000A */  sb         $v0, 0xa($t0)
/* 9F4D8 8009E8D8 0C027B9A */  jal        func_8009EE68
/* 9F4DC 8009E8DC 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F4E0 8009E8E0 8FAA0034 */  lw         $t2, 0x34($sp)
/* 9F4E4 8009E8E4 A142000B */  sb         $v0, 0xb($t2)
/* 9F4E8 8009E8E8 0C027B9A */  jal        func_8009EE68
/* 9F4EC 8009E8EC 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F4F0 8009E8F0 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9F4F4 8009E8F4 A162000C */  sb         $v0, 0xc($t3)
/* 9F4F8 8009E8F8 0C027B9A */  jal        func_8009EE68
/* 9F4FC 8009E8FC 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F500 8009E900 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9F504 8009E904 1000002E */  b          .L8009E9C0
/* 9F508 8009E908 A182000D */   sb        $v0, 0xd($t4)
.L8009E90C:
/* 9F50C 8009E90C 93A9001F */  lbu        $t1, 0x1f($sp)
/* 9F510 8009E910 2401002F */  addiu      $at, $zero, 0x2f
/* 9F514 8009E914 15210012 */  bne        $t1, $at, .L8009E960
/* 9F518 8009E918 00000000 */   nop
/* 9F51C 8009E91C 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9F520 8009E920 240D0004 */  addiu      $t5, $zero, 4
/* 9F524 8009E924 A5CD0000 */  sh         $t5, ($t6)
/* 9F528 8009E928 8FB80024 */  lw         $t8, 0x24($sp)
/* 9F52C 8009E92C 8FB90034 */  lw         $t9, 0x34($sp)
/* 9F530 8009E930 AF380004 */  sw         $t8, 4($t9)
/* 9F534 8009E934 93AF002F */  lbu        $t7, 0x2f($sp)
/* 9F538 8009E938 8FA80034 */  lw         $t0, 0x34($sp)
/* 9F53C 8009E93C A10F0008 */  sb         $t7, 8($t0)
/* 9F540 8009E940 93AA001F */  lbu        $t2, 0x1f($sp)
/* 9F544 8009E944 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9F548 8009E948 A16A0009 */  sb         $t2, 9($t3)
/* 9F54C 8009E94C 0C027B9A */  jal        func_8009EE68
/* 9F550 8009E950 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F554 8009E954 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9F558 8009E958 10000019 */  b          .L8009E9C0
/* 9F55C 8009E95C A182000A */   sb        $v0, 0xa($t4)
.L8009E960:
/* 9F560 8009E960 24040078 */  addiu      $a0, $zero, 0x78
/* 9F564 8009E964 24050001 */  addiu      $a1, $zero, 1
/* 9F568 8009E968 0C02B5EC */  jal        func_800AD7B0
/* 9F56C 8009E96C 93A6001F */   lbu       $a2, 0x1f($sp)
/* 9F570 8009E970 0C027BE4 */  jal        func_8009EF90
/* 9F574 8009E974 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F578 8009E978 AFA20028 */  sw         $v0, 0x28($sp)
/* 9F57C 8009E97C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9F580 8009E980 AFA00020 */  sw         $zero, 0x20($sp)
/* 9F584 8009E984 19200009 */  blez       $t1, .L8009E9AC
/* 9F588 8009E988 00000000 */   nop
.L8009E98C:
/* 9F58C 8009E98C 0C027B9A */  jal        func_8009EE68
/* 9F590 8009E990 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F594 8009E994 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9F598 8009E998 8FB80028 */  lw         $t8, 0x28($sp)
/* 9F59C 8009E99C 25AE0001 */  addiu      $t6, $t5, 1
/* 9F5A0 8009E9A0 01D8082A */  slt        $at, $t6, $t8
/* 9F5A4 8009E9A4 1420FFF9 */  bnez       $at, .L8009E98C
/* 9F5A8 8009E9A8 AFAE0020 */   sw        $t6, 0x20($sp)
.L8009E9AC:
/* 9F5AC 8009E9AC 8FA40030 */  lw         $a0, 0x30($sp)
/* 9F5B0 8009E9B0 0C0279E3 */  jal        func_8009E78C
/* 9F5B4 8009E9B4 8FA50034 */   lw        $a1, 0x34($sp)
/* 9F5B8 8009E9B8 10000033 */  b          .L8009EA88
/* 9F5BC 8009E9BC 00000000 */   nop
.L8009E9C0:
/* 9F5C0 8009E9C0 8FB90030 */  lw         $t9, 0x30($sp)
/* 9F5C4 8009E9C4 A720001A */  sh         $zero, 0x1a($t9)
/* 9F5C8 8009E9C8 1000002D */  b          .L8009EA80
/* 9F5CC 8009E9CC 00000000 */   nop
.L8009E9D0:
/* 9F5D0 8009E9D0 8FA80034 */  lw         $t0, 0x34($sp)
/* 9F5D4 8009E9D4 240F0001 */  addiu      $t7, $zero, 1
/* 9F5D8 8009E9D8 A50F0000 */  sh         $t7, ($t0)
/* 9F5DC 8009E9DC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9F5E0 8009E9E0 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9F5E4 8009E9E4 AD6A0004 */  sw         $t2, 4($t3)
/* 9F5E8 8009E9E8 93AC002F */  lbu        $t4, 0x2f($sp)
/* 9F5EC 8009E9EC 31890080 */  andi       $t1, $t4, 0x80
/* 9F5F0 8009E9F0 1120000C */  beqz       $t1, .L8009EA24
/* 9F5F4 8009E9F4 00000000 */   nop
/* 9F5F8 8009E9F8 93AD002F */  lbu        $t5, 0x2f($sp)
/* 9F5FC 8009E9FC 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9F600 8009EA00 A1CD0008 */  sb         $t5, 8($t6)
/* 9F604 8009EA04 0C027B9A */  jal        func_8009EE68
/* 9F608 8009EA08 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F60C 8009EA0C 8FB80034 */  lw         $t8, 0x34($sp)
/* 9F610 8009EA10 A3020009 */  sb         $v0, 9($t8)
/* 9F614 8009EA14 93B9002F */  lbu        $t9, 0x2f($sp)
/* 9F618 8009EA18 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9F61C 8009EA1C 10000008 */  b          .L8009EA40
/* 9F620 8009EA20 A5F9001A */   sh        $t9, 0x1a($t7)
.L8009EA24:
/* 9F624 8009EA24 8FA80030 */  lw         $t0, 0x30($sp)
/* 9F628 8009EA28 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9F62C 8009EA2C 850A001A */  lh         $t2, 0x1a($t0)
/* 9F630 8009EA30 A16A0008 */  sb         $t2, 8($t3)
/* 9F634 8009EA34 93AC002F */  lbu        $t4, 0x2f($sp)
/* 9F638 8009EA38 8FA90034 */  lw         $t1, 0x34($sp)
/* 9F63C 8009EA3C A12C0009 */  sb         $t4, 9($t1)
.L8009EA40:
/* 9F640 8009EA40 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9F644 8009EA44 240100C0 */  addiu      $at, $zero, 0xc0
/* 9F648 8009EA48 91AE0008 */  lbu        $t6, 8($t5)
/* 9F64C 8009EA4C 31D800F0 */  andi       $t8, $t6, 0xf0
/* 9F650 8009EA50 13010009 */  beq        $t8, $at, .L8009EA78
/* 9F654 8009EA54 00000000 */   nop
/* 9F658 8009EA58 240100D0 */  addiu      $at, $zero, 0xd0
/* 9F65C 8009EA5C 13010006 */  beq        $t8, $at, .L8009EA78
/* 9F660 8009EA60 00000000 */   nop
/* 9F664 8009EA64 0C027B9A */  jal        func_8009EE68
/* 9F668 8009EA68 8FA40030 */   lw        $a0, 0x30($sp)
/* 9F66C 8009EA6C 8FB90034 */  lw         $t9, 0x34($sp)
/* 9F670 8009EA70 10000003 */  b          .L8009EA80
/* 9F674 8009EA74 A322000A */   sb        $v0, 0xa($t9)
.L8009EA78:
/* 9F678 8009EA78 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9F67C 8009EA7C A1E0000A */  sb         $zero, 0xa($t7)
.L8009EA80:
/* 9F680 8009EA80 10000001 */  b          .L8009EA88
/* 9F684 8009EA84 00000000 */   nop
.L8009EA88:
/* 9F688 8009EA88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F68C 8009EA8C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9F690 8009EA90 03E00008 */  jr         $ra
/* 9F694 8009EA94 00000000 */   nop

glabel func_8009EA98
/* 9F698 8009EA98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F69C 8009EA9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F6A0 8009EAA0 AFA40020 */  sw         $a0, 0x20($sp)
/* 9F6A4 8009EAA4 AFA50024 */  sw         $a1, 0x24($sp)
/* 9F6A8 8009EAA8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9F6AC 8009EAAC 8DD80000 */  lw         $t8, ($t6)
/* 9F6B0 8009EAB0 8DD90010 */  lw         $t9, 0x10($t6)
/* 9F6B4 8009EAB4 8DCF0008 */  lw         $t7, 8($t6)
/* 9F6B8 8009EAB8 03194021 */  addu       $t0, $t8, $t9
/* 9F6BC 8009EABC 01E8082B */  sltu       $at, $t7, $t0
/* 9F6C0 8009EAC0 14200003 */  bnez       $at, .L8009EAD0
/* 9F6C4 8009EAC4 00000000 */   nop
/* 9F6C8 8009EAC8 1000000F */  b          .L8009EB08
/* 9F6CC 8009EACC 00001025 */   or        $v0, $zero, $zero
.L8009EAD0:
/* 9F6D0 8009EAD0 8FA90020 */  lw         $t1, 0x20($sp)
/* 9F6D4 8009EAD4 8D2A0008 */  lw         $t2, 8($t1)
/* 9F6D8 8009EAD8 AFAA001C */  sw         $t2, 0x1c($sp)
/* 9F6DC 8009EADC 0C027BE4 */  jal        func_8009EF90
/* 9F6E0 8009EAE0 8FA40020 */   lw        $a0, 0x20($sp)
/* 9F6E4 8009EAE4 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9F6E8 8009EAE8 AD620000 */  sw         $v0, ($t3)
/* 9F6EC 8009EAEC 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9F6F0 8009EAF0 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9F6F4 8009EAF4 ADAC0008 */  sw         $t4, 8($t5)
/* 9F6F8 8009EAF8 10000003 */  b          .L8009EB08
/* 9F6FC 8009EAFC 24020001 */   addiu     $v0, $zero, 1
/* 9F700 8009EB00 10000001 */  b          .L8009EB08
/* 9F704 8009EB04 00000000 */   nop
.L8009EB08:
/* 9F708 8009EB08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F70C 8009EB0C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9F710 8009EB10 03E00008 */  jr         $ra
/* 9F714 8009EB14 00000000 */   nop

glabel func_8009EB18
/* 9F718 8009EB18 44852000 */  mtc1       $a1, $f4
/* 9F71C 8009EB1C 44864000 */  mtc1       $a2, $f8
/* 9F720 8009EB20 468021A0 */  cvt.s.w    $f6, $f4
/* 9F724 8009EB24 04C10005 */  bgez       $a2, .L8009EB3C
/* 9F728 8009EB28 468042A0 */   cvt.s.w   $f10, $f8
/* 9F72C 8009EB2C 3C014F80 */  lui        $at, 0x4f80
/* 9F730 8009EB30 44818000 */  mtc1       $at, $f16
/* 9F734 8009EB34 00000000 */  nop
/* 9F738 8009EB38 46105280 */  add.s      $f10, $f10, $f16
.L8009EB3C:
/* 9F73C 8009EB3C 848E0018 */  lh         $t6, 0x18($a0)
/* 9F740 8009EB40 460A3482 */  mul.s      $f18, $f6, $f10
/* 9F744 8009EB44 3C01800D */  lui        $at, %hi(D_800D2DA0)
/* 9F748 8009EB48 448E4000 */  mtc1       $t6, $f8
/* 9F74C 8009EB4C D42A2DA0 */  ldc1       $f10, %lo(D_800D2DA0)($at)
/* 9F750 8009EB50 46804420 */  cvt.s.w    $f16, $f8
/* 9F754 8009EB54 46009121 */  cvt.d.s    $f4, $f18
/* 9F758 8009EB58 460081A1 */  cvt.d.s    $f6, $f16
/* 9F75C 8009EB5C 462A3482 */  mul.d      $f18, $f6, $f10
/* 9F760 8009EB60 46322203 */  div.d      $f8, $f4, $f18
/* 9F764 8009EB64 03E00008 */  jr         $ra
/* 9F768 8009EB68 46204020 */   cvt.s.d   $f0, $f8

glabel func_8009EB6C
/* 9F76C 8009EB6C 03E00008 */  jr         $ra
/* 9F770 8009EB70 00000000 */   nop

glabel func_8009EB74
/* 9F774 8009EB74 03E00008 */  jr         $ra
/* 9F778 8009EB78 00000000 */   nop

glabel func_8009EB7C
/* 9F77C 8009EB7C AFA50004 */  sw         $a1, 4($sp)
/* 9F780 8009EB80 C7A40004 */  lwc1       $f4, 4($sp)
/* 9F784 8009EB84 3C01800D */  lui        $at, %hi(D_800D2DA8)
/* 9F788 8009EB88 D4282DA8 */  ldc1       $f8, %lo(D_800D2DA8)($at)
/* 9F78C 8009EB8C 848E0018 */  lh         $t6, 0x18($a0)
/* 9F790 8009EB90 460021A1 */  cvt.d.s    $f6, $f4
/* 9F794 8009EB94 46283282 */  mul.d      $f10, $f6, $f8
/* 9F798 8009EB98 448E8000 */  mtc1       $t6, $f16
/* 9F79C 8009EB9C 44863000 */  mtc1       $a2, $f6
/* 9F7A0 8009EBA0 468084A1 */  cvt.d.w    $f18, $f16
/* 9F7A4 8009EBA4 46803221 */  cvt.d.w    $f8, $f6
/* 9F7A8 8009EBA8 46325102 */  mul.d      $f4, $f10, $f18
/* 9F7AC 8009EBAC 04C10006 */  bgez       $a2, .L8009EBC8
/* 9F7B0 8009EBB0 00000000 */   nop
/* 9F7B4 8009EBB4 3C0141F0 */  lui        $at, 0x41f0
/* 9F7B8 8009EBB8 44818800 */  mtc1       $at, $f17
/* 9F7BC 8009EBBC 44808000 */  mtc1       $zero, $f16
/* 9F7C0 8009EBC0 00000000 */  nop
/* 9F7C4 8009EBC4 46304200 */  add.d      $f8, $f8, $f16
.L8009EBC8:
/* 9F7C8 8009EBC8 46282283 */  div.d      $f10, $f4, $f8
/* 9F7CC 8009EBCC 24020001 */  addiu      $v0, $zero, 1
/* 9F7D0 8009EBD0 444FF800 */  cfc1       $t7, $31
/* 9F7D4 8009EBD4 44C2F800 */  ctc1       $v0, $31
/* 9F7D8 8009EBD8 00000000 */  nop
/* 9F7DC 8009EBDC 462054A4 */  cvt.w.d    $f18, $f10
/* 9F7E0 8009EBE0 4442F800 */  cfc1       $v0, $31
/* 9F7E4 8009EBE4 00000000 */  nop
/* 9F7E8 8009EBE8 30410004 */  andi       $at, $v0, 4
/* 9F7EC 8009EBEC 30420078 */  andi       $v0, $v0, 0x78
/* 9F7F0 8009EBF0 10400015 */  beqz       $v0, .L8009EC48
/* 9F7F4 8009EBF4 00000000 */   nop
/* 9F7F8 8009EBF8 3C0141E0 */  lui        $at, 0x41e0
/* 9F7FC 8009EBFC 44819800 */  mtc1       $at, $f19
/* 9F800 8009EC00 44809000 */  mtc1       $zero, $f18
/* 9F804 8009EC04 24020001 */  addiu      $v0, $zero, 1
/* 9F808 8009EC08 46325481 */  sub.d      $f18, $f10, $f18
/* 9F80C 8009EC0C 44C2F800 */  ctc1       $v0, $31
/* 9F810 8009EC10 00000000 */  nop
/* 9F814 8009EC14 462094A4 */  cvt.w.d    $f18, $f18
/* 9F818 8009EC18 4442F800 */  cfc1       $v0, $31
/* 9F81C 8009EC1C 00000000 */  nop
/* 9F820 8009EC20 30410004 */  andi       $at, $v0, 4
/* 9F824 8009EC24 30420078 */  andi       $v0, $v0, 0x78
/* 9F828 8009EC28 14400005 */  bnez       $v0, .L8009EC40
/* 9F82C 8009EC2C 00000000 */   nop
/* 9F830 8009EC30 44029000 */  mfc1       $v0, $f18
/* 9F834 8009EC34 3C018000 */  lui        $at, 0x8000
/* 9F838 8009EC38 10000007 */  b          .L8009EC58
/* 9F83C 8009EC3C 00411025 */   or        $v0, $v0, $at
.L8009EC40:
/* 9F840 8009EC40 10000005 */  b          .L8009EC58
/* 9F844 8009EC44 2402FFFF */   addiu     $v0, $zero, -1
.L8009EC48:
/* 9F848 8009EC48 44029000 */  mfc1       $v0, $f18
/* 9F84C 8009EC4C 00000000 */  nop
/* 9F850 8009EC50 0440FFFB */  bltz       $v0, .L8009EC40
/* 9F854 8009EC54 00000000 */   nop
.L8009EC58:
/* 9F858 8009EC58 44CFF800 */  ctc1       $t7, $31
/* 9F85C 8009EC5C 10000003 */  b          .L8009EC6C
/* 9F860 8009EC60 00000000 */   nop
/* 9F864 8009EC64 10000001 */  b          .L8009EC6C
/* 9F868 8009EC68 00000000 */   nop
.L8009EC6C:
/* 9F86C 8009EC6C 03E00008 */  jr         $ra
/* 9F870 8009EC70 00000000 */   nop

glabel func_8009EC74
/* 9F874 8009EC74 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9F878 8009EC78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F87C 8009EC7C AFA40040 */  sw         $a0, 0x40($sp)
/* 9F880 8009EC80 AFA50044 */  sw         $a1, 0x44($sp)
/* 9F884 8009EC84 AFA60048 */  sw         $a2, 0x48($sp)
/* 9F888 8009EC88 8FAE0048 */  lw         $t6, 0x48($sp)
/* 9F88C 8009EC8C 15C0000F */  bnez       $t6, .L8009ECCC
/* 9F890 8009EC90 00000000 */   nop
/* 9F894 8009EC94 8FAF0040 */  lw         $t7, 0x40($sp)
/* 9F898 8009EC98 8FB90044 */  lw         $t9, 0x44($sp)
/* 9F89C 8009EC9C 8DF80004 */  lw         $t8, 4($t7)
/* 9F8A0 8009ECA0 AF380000 */  sw         $t8, ($t9)
/* 9F8A4 8009ECA4 8FA80044 */  lw         $t0, 0x44($sp)
/* 9F8A8 8009ECA8 A500000C */  sh         $zero, 0xc($t0)
/* 9F8AC 8009ECAC 8FA90044 */  lw         $t1, 0x44($sp)
/* 9F8B0 8009ECB0 AD200004 */  sw         $zero, 4($t1)
/* 9F8B4 8009ECB4 8FAA0044 */  lw         $t2, 0x44($sp)
/* 9F8B8 8009ECB8 AD400008 */  sw         $zero, 8($t2)
/* 9F8BC 8009ECBC 1000004C */  b          .L8009EDF0
/* 9F8C0 8009ECC0 00000000 */   nop
/* 9F8C4 8009ECC4 10000048 */  b          .L8009EDE8
/* 9F8C8 8009ECC8 00000000 */   nop
.L8009ECCC:
/* 9F8CC 8009ECCC 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9F8D0 8009ECD0 8D6C0008 */  lw         $t4, 8($t3)
/* 9F8D4 8009ECD4 AFAC002C */  sw         $t4, 0x2c($sp)
/* 9F8D8 8009ECD8 8FAD0040 */  lw         $t5, 0x40($sp)
/* 9F8DC 8009ECDC 85AE001A */  lh         $t6, 0x1a($t5)
/* 9F8E0 8009ECE0 A7AE001E */  sh         $t6, 0x1e($sp)
/* 9F8E4 8009ECE4 8FAF0040 */  lw         $t7, 0x40($sp)
/* 9F8E8 8009ECE8 8DF8000C */  lw         $t8, 0xc($t7)
/* 9F8EC 8009ECEC AFB80024 */  sw         $t8, 0x24($sp)
/* 9F8F0 8009ECF0 8FB90040 */  lw         $t9, 0x40($sp)
/* 9F8F4 8009ECF4 8F280004 */  lw         $t0, 4($t9)
/* 9F8F8 8009ECF8 AF280008 */  sw         $t0, 8($t9)
/* 9F8FC 8009ECFC 8FA90040 */  lw         $t1, 0x40($sp)
/* 9F900 8009ED00 A520001A */  sh         $zero, 0x1a($t1)
/* 9F904 8009ED04 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9F908 8009ED08 AD40000C */  sw         $zero, 0xc($t2)
.L8009ED0C:
/* 9F90C 8009ED0C 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9F910 8009ED10 8D6C0008 */  lw         $t4, 8($t3)
/* 9F914 8009ED14 AFAC0028 */  sw         $t4, 0x28($sp)
/* 9F918 8009ED18 8FAD0040 */  lw         $t5, 0x40($sp)
/* 9F91C 8009ED1C 85AE001A */  lh         $t6, 0x1a($t5)
/* 9F920 8009ED20 A7AE001C */  sh         $t6, 0x1c($sp)
/* 9F924 8009ED24 8FAF0040 */  lw         $t7, 0x40($sp)
/* 9F928 8009ED28 8DF8000C */  lw         $t8, 0xc($t7)
/* 9F92C 8009ED2C AFB80020 */  sw         $t8, 0x20($sp)
/* 9F930 8009ED30 8FA40040 */  lw         $a0, 0x40($sp)
/* 9F934 8009ED34 0C0279E3 */  jal        func_8009E78C
/* 9F938 8009ED38 27A50030 */   addiu     $a1, $sp, 0x30
/* 9F93C 8009ED3C 87A80030 */  lh         $t0, 0x30($sp)
/* 9F940 8009ED40 24010004 */  addiu      $at, $zero, 4
/* 9F944 8009ED44 1501000C */  bne        $t0, $at, .L8009ED78
/* 9F948 8009ED48 00000000 */   nop
/* 9F94C 8009ED4C 8FB90040 */  lw         $t9, 0x40($sp)
/* 9F950 8009ED50 8F290008 */  lw         $t1, 8($t9)
/* 9F954 8009ED54 AFA90028 */  sw         $t1, 0x28($sp)
/* 9F958 8009ED58 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9F95C 8009ED5C 854B001A */  lh         $t3, 0x1a($t2)
/* 9F960 8009ED60 A7AB001C */  sh         $t3, 0x1c($sp)
/* 9F964 8009ED64 8FAC0040 */  lw         $t4, 0x40($sp)
/* 9F968 8009ED68 8D8D000C */  lw         $t5, 0xc($t4)
/* 9F96C 8009ED6C AFAD0020 */  sw         $t5, 0x20($sp)
/* 9F970 8009ED70 10000007 */  b          .L8009ED90
/* 9F974 8009ED74 00000000 */   nop
.L8009ED78:
/* 9F978 8009ED78 8FAE0040 */  lw         $t6, 0x40($sp)
/* 9F97C 8009ED7C 8FB80048 */  lw         $t8, 0x48($sp)
/* 9F980 8009ED80 8DCF000C */  lw         $t7, 0xc($t6)
/* 9F984 8009ED84 01F8082B */  sltu       $at, $t7, $t8
/* 9F988 8009ED88 1420FFE0 */  bnez       $at, .L8009ED0C
/* 9F98C 8009ED8C 00000000 */   nop
.L8009ED90:
/* 9F990 8009ED90 8FA80028 */  lw         $t0, 0x28($sp)
/* 9F994 8009ED94 8FB90044 */  lw         $t9, 0x44($sp)
/* 9F998 8009ED98 AF280000 */  sw         $t0, ($t9)
/* 9F99C 8009ED9C 87A9001C */  lh         $t1, 0x1c($sp)
/* 9F9A0 8009EDA0 8FAA0044 */  lw         $t2, 0x44($sp)
/* 9F9A4 8009EDA4 A549000C */  sh         $t1, 0xc($t2)
/* 9F9A8 8009EDA8 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9F9AC 8009EDAC 8FAC0044 */  lw         $t4, 0x44($sp)
/* 9F9B0 8009EDB0 AD8B0004 */  sw         $t3, 4($t4)
/* 9F9B4 8009EDB4 8FAD0040 */  lw         $t5, 0x40($sp)
/* 9F9B8 8009EDB8 8FAF0044 */  lw         $t7, 0x44($sp)
/* 9F9BC 8009EDBC 8DAE000C */  lw         $t6, 0xc($t5)
/* 9F9C0 8009EDC0 ADEE0008 */  sw         $t6, 8($t7)
/* 9F9C4 8009EDC4 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9F9C8 8009EDC8 8FA80040 */  lw         $t0, 0x40($sp)
/* 9F9CC 8009EDCC AD180008 */  sw         $t8, 8($t0)
/* 9F9D0 8009EDD0 87B9001E */  lh         $t9, 0x1e($sp)
/* 9F9D4 8009EDD4 8FA90040 */  lw         $t1, 0x40($sp)
/* 9F9D8 8009EDD8 A539001A */  sh         $t9, 0x1a($t1)
/* 9F9DC 8009EDDC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9F9E0 8009EDE0 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9F9E4 8009EDE4 AD6A000C */  sw         $t2, 0xc($t3)
.L8009EDE8:
/* 9F9E8 8009EDE8 10000001 */  b          .L8009EDF0
/* 9F9EC 8009EDEC 00000000 */   nop
.L8009EDF0:
/* 9F9F0 8009EDF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F9F4 8009EDF4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 9F9F8 8009EDF8 03E00008 */  jr         $ra
/* 9F9FC 8009EDFC 00000000 */   nop

glabel func_8009EE00
/* 9FA00 8009EE00 03E00008 */  jr         $ra
/* 9FA04 8009EE04 8C82000C */   lw        $v0, 0xc($a0)

glabel func_8009EE08
/* 9FA08 8009EE08 03E00008 */  jr         $ra
/* 9FA0C 8009EE0C 00000000 */   nop

glabel func_8009EE10
/* 9FA10 8009EE10 03E00008 */  jr         $ra
/* 9FA14 8009EE14 00000000 */   nop

glabel func_8009EE18
/* 9FA18 8009EE18 8CAE0000 */  lw         $t6, ($a1)
/* 9FA1C 8009EE1C AC8E0008 */  sw         $t6, 8($a0)
/* 9FA20 8009EE20 84AF000C */  lh         $t7, 0xc($a1)
/* 9FA24 8009EE24 A48F001A */  sh         $t7, 0x1a($a0)
/* 9FA28 8009EE28 8CB80004 */  lw         $t8, 4($a1)
/* 9FA2C 8009EE2C AC98000C */  sw         $t8, 0xc($a0)
/* 9FA30 8009EE30 03E00008 */  jr         $ra
/* 9FA34 8009EE34 00000000 */   nop

glabel func_8009EE38
/* 9FA38 8009EE38 03E00008 */  jr         $ra
/* 9FA3C 8009EE3C 00000000 */   nop

glabel func_8009EE40
/* 9FA40 8009EE40 8C8E0008 */  lw         $t6, 8($a0)
/* 9FA44 8009EE44 ACAE0000 */  sw         $t6, ($a1)
/* 9FA48 8009EE48 848F001A */  lh         $t7, 0x1a($a0)
/* 9FA4C 8009EE4C A4AF000C */  sh         $t7, 0xc($a1)
/* 9FA50 8009EE50 8C98000C */  lw         $t8, 0xc($a0)
/* 9FA54 8009EE54 ACB80004 */  sw         $t8, 4($a1)
/* 9FA58 8009EE58 03E00008 */  jr         $ra
/* 9FA5C 8009EE5C 00000000 */   nop

glabel func_8009EE60
/* 9FA60 8009EE60 03E00008 */  jr         $ra
/* 9FA64 8009EE64 00000000 */   nop

glabel func_8009EE68
/* 9FA68 8009EE68 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9FA6C 8009EE6C 8C8E0008 */  lw         $t6, 8($a0)
/* 9FA70 8009EE70 8C8F0008 */  lw         $t7, 8($a0)
/* 9FA74 8009EE74 91C50000 */  lbu        $a1, ($t6)
/* 9FA78 8009EE78 25F80001 */  addiu      $t8, $t7, 1
/* 9FA7C 8009EE7C AC980008 */  sw         $t8, 8($a0)
/* 9FA80 8009EE80 10000003 */  b          .L8009EE90
/* 9FA84 8009EE84 00A01025 */   or        $v0, $a1, $zero
/* 9FA88 8009EE88 10000001 */  b          .L8009EE90
/* 9FA8C 8009EE8C 00000000 */   nop
.L8009EE90:
/* 9FA90 8009EE90 03E00008 */  jr         $ra
/* 9FA94 8009EE94 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009EE98
/* 9FA98 8009EE98 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9FA9C 8009EE9C 8C8E0008 */  lw         $t6, 8($a0)
/* 9FAA0 8009EEA0 91CF0000 */  lbu        $t7, ($t6)
/* 9FAA4 8009EEA4 000FC200 */  sll        $t8, $t7, 8
/* 9FAA8 8009EEA8 A7B80006 */  sh         $t8, 6($sp)
/* 9FAAC 8009EEAC 8C990008 */  lw         $t9, 8($a0)
/* 9FAB0 8009EEB0 27280001 */  addiu      $t0, $t9, 1
/* 9FAB4 8009EEB4 AC880008 */  sw         $t0, 8($a0)
/* 9FAB8 8009EEB8 8C8A0008 */  lw         $t2, 8($a0)
/* 9FABC 8009EEBC 87A90006 */  lh         $t1, 6($sp)
/* 9FAC0 8009EEC0 914B0000 */  lbu        $t3, ($t2)
/* 9FAC4 8009EEC4 012B6025 */  or         $t4, $t1, $t3
/* 9FAC8 8009EEC8 A7AC0006 */  sh         $t4, 6($sp)
/* 9FACC 8009EECC 8C8D0008 */  lw         $t5, 8($a0)
/* 9FAD0 8009EED0 25AE0001 */  addiu      $t6, $t5, 1
/* 9FAD4 8009EED4 AC8E0008 */  sw         $t6, 8($a0)
/* 9FAD8 8009EED8 10000003 */  b          .L8009EEE8
/* 9FADC 8009EEDC 87A20006 */   lh        $v0, 6($sp)
/* 9FAE0 8009EEE0 10000001 */  b          .L8009EEE8
/* 9FAE4 8009EEE4 00000000 */   nop
.L8009EEE8:
/* 9FAE8 8009EEE8 03E00008 */  jr         $ra
/* 9FAEC 8009EEEC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009EEF0
/* 9FAF0 8009EEF0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9FAF4 8009EEF4 8C8E0008 */  lw         $t6, 8($a0)
/* 9FAF8 8009EEF8 91CF0000 */  lbu        $t7, ($t6)
/* 9FAFC 8009EEFC 000FC600 */  sll        $t8, $t7, 0x18
/* 9FB00 8009EF00 AFB80004 */  sw         $t8, 4($sp)
/* 9FB04 8009EF04 8C990008 */  lw         $t9, 8($a0)
/* 9FB08 8009EF08 27280001 */  addiu      $t0, $t9, 1
/* 9FB0C 8009EF0C AC880008 */  sw         $t0, 8($a0)
/* 9FB10 8009EF10 8C8A0008 */  lw         $t2, 8($a0)
/* 9FB14 8009EF14 8FA90004 */  lw         $t1, 4($sp)
/* 9FB18 8009EF18 914B0000 */  lbu        $t3, ($t2)
/* 9FB1C 8009EF1C 000B6400 */  sll        $t4, $t3, 0x10
/* 9FB20 8009EF20 012C6825 */  or         $t5, $t1, $t4
/* 9FB24 8009EF24 AFAD0004 */  sw         $t5, 4($sp)
/* 9FB28 8009EF28 8C8E0008 */  lw         $t6, 8($a0)
/* 9FB2C 8009EF2C 25CF0001 */  addiu      $t7, $t6, 1
/* 9FB30 8009EF30 AC8F0008 */  sw         $t7, 8($a0)
/* 9FB34 8009EF34 8C990008 */  lw         $t9, 8($a0)
/* 9FB38 8009EF38 8FB80004 */  lw         $t8, 4($sp)
/* 9FB3C 8009EF3C 93280000 */  lbu        $t0, ($t9)
/* 9FB40 8009EF40 00085200 */  sll        $t2, $t0, 8
/* 9FB44 8009EF44 030A5825 */  or         $t3, $t8, $t2
/* 9FB48 8009EF48 AFAB0004 */  sw         $t3, 4($sp)
/* 9FB4C 8009EF4C 8C890008 */  lw         $t1, 8($a0)
/* 9FB50 8009EF50 252C0001 */  addiu      $t4, $t1, 1
/* 9FB54 8009EF54 AC8C0008 */  sw         $t4, 8($a0)
/* 9FB58 8009EF58 8C8E0008 */  lw         $t6, 8($a0)
/* 9FB5C 8009EF5C 8FAD0004 */  lw         $t5, 4($sp)
/* 9FB60 8009EF60 91CF0000 */  lbu        $t7, ($t6)
/* 9FB64 8009EF64 01AFC825 */  or         $t9, $t5, $t7
/* 9FB68 8009EF68 AFB90004 */  sw         $t9, 4($sp)
/* 9FB6C 8009EF6C 8C880008 */  lw         $t0, 8($a0)
/* 9FB70 8009EF70 25180001 */  addiu      $t8, $t0, 1
/* 9FB74 8009EF74 AC980008 */  sw         $t8, 8($a0)
/* 9FB78 8009EF78 10000003 */  b          .L8009EF88
/* 9FB7C 8009EF7C 8FA20004 */   lw        $v0, 4($sp)
/* 9FB80 8009EF80 10000001 */  b          .L8009EF88
/* 9FB84 8009EF84 00000000 */   nop
.L8009EF88:
/* 9FB88 8009EF88 03E00008 */  jr         $ra
/* 9FB8C 8009EF8C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009EF90
/* 9FB90 8009EF90 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9FB94 8009EF94 8C8E0008 */  lw         $t6, 8($a0)
/* 9FB98 8009EF98 91CF0000 */  lbu        $t7, ($t6)
/* 9FB9C 8009EF9C AFAF0000 */  sw         $t7, ($sp)
/* 9FBA0 8009EFA0 8C980008 */  lw         $t8, 8($a0)
/* 9FBA4 8009EFA4 27190001 */  addiu      $t9, $t8, 1
/* 9FBA8 8009EFA8 AC990008 */  sw         $t9, 8($a0)
/* 9FBAC 8009EFAC 8FA80000 */  lw         $t0, ($sp)
/* 9FBB0 8009EFB0 AFA80004 */  sw         $t0, 4($sp)
/* 9FBB4 8009EFB4 8FA90000 */  lw         $t1, ($sp)
/* 9FBB8 8009EFB8 312A0080 */  andi       $t2, $t1, 0x80
/* 9FBBC 8009EFBC 11400014 */  beqz       $t2, .L8009F010
/* 9FBC0 8009EFC0 00000000 */   nop
/* 9FBC4 8009EFC4 8FAB0004 */  lw         $t3, 4($sp)
/* 9FBC8 8009EFC8 316C007F */  andi       $t4, $t3, 0x7f
/* 9FBCC 8009EFCC AFAC0004 */  sw         $t4, 4($sp)
.L8009EFD0:
/* 9FBD0 8009EFD0 8C8D0008 */  lw         $t5, 8($a0)
/* 9FBD4 8009EFD4 91AE0000 */  lbu        $t6, ($t5)
/* 9FBD8 8009EFD8 AFAE0000 */  sw         $t6, ($sp)
/* 9FBDC 8009EFDC 8C8F0008 */  lw         $t7, 8($a0)
/* 9FBE0 8009EFE0 25F80001 */  addiu      $t8, $t7, 1
/* 9FBE4 8009EFE4 AC980008 */  sw         $t8, 8($a0)
/* 9FBE8 8009EFE8 8FB90004 */  lw         $t9, 4($sp)
/* 9FBEC 8009EFEC 8FA90000 */  lw         $t1, ($sp)
/* 9FBF0 8009EFF0 001941C0 */  sll        $t0, $t9, 7
/* 9FBF4 8009EFF4 312A007F */  andi       $t2, $t1, 0x7f
/* 9FBF8 8009EFF8 010A5821 */  addu       $t3, $t0, $t2
/* 9FBFC 8009EFFC AFAB0004 */  sw         $t3, 4($sp)
/* 9FC00 8009F000 8FAC0000 */  lw         $t4, ($sp)
/* 9FC04 8009F004 318D0080 */  andi       $t5, $t4, 0x80
/* 9FC08 8009F008 15A0FFF1 */  bnez       $t5, .L8009EFD0
/* 9FC0C 8009F00C 00000000 */   nop
.L8009F010:
/* 9FC10 8009F010 10000003 */  b          .L8009F020
/* 9FC14 8009F014 8FA20004 */   lw        $v0, 4($sp)
/* 9FC18 8009F018 10000001 */  b          .L8009F020
/* 9FC1C 8009F01C 00000000 */   nop
.L8009F020:
/* 9FC20 8009F020 03E00008 */  jr         $ra
/* 9FC24 8009F024 27BD0008 */   addiu     $sp, $sp, 8
/* 9FC28 8009F028 00000000 */  nop
/* 9FC2C 8009F02C 00000000 */  nop
