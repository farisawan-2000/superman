.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80099EB0
/* 9AAB0 80099EB0 AFA40000 */  sw         $a0, ($sp)
/* 9AAB4 80099EB4 AFA50004 */  sw         $a1, 4($sp)
/* 9AAB8 80099EB8 AFA60008 */  sw         $a2, 8($sp)
/* 9AABC 80099EBC AFA7000C */  sw         $a3, 0xc($sp)
/* 9AAC0 80099EC0 DFAE0000 */  ld         $t6, ($sp)
/* 9AAC4 80099EC4 DFAF0008 */  ld         $t7, 8($sp)
/* 9AAC8 80099EC8 01EE1016 */  dsrlv      $v0, $t6, $t7
/* 9AACC 80099ECC 0002183C */  dsll32     $v1, $v0, 0
/* 9AAD0 80099ED0 0003183F */  dsra32     $v1, $v1, 0
/* 9AAD4 80099ED4 10000003 */  b          .L80099EE4
/* 9AAD8 80099ED8 0002103F */   dsra32    $v0, $v0, 0
/* 9AADC 80099EDC 10000001 */  b          .L80099EE4
/* 9AAE0 80099EE0 00000000 */   nop
.L80099EE4:
/* 9AAE4 80099EE4 03E00008 */  jr         $ra
/* 9AAE8 80099EE8 00000000 */   nop

glabel func_80099EEC
/* 9AAEC 80099EEC AFA40000 */  sw         $a0, ($sp)
/* 9AAF0 80099EF0 AFA50004 */  sw         $a1, 4($sp)
/* 9AAF4 80099EF4 AFA60008 */  sw         $a2, 8($sp)
/* 9AAF8 80099EF8 AFA7000C */  sw         $a3, 0xc($sp)
/* 9AAFC 80099EFC DFAE0000 */  ld         $t6, ($sp)
/* 9AB00 80099F00 DFAF0008 */  ld         $t7, 8($sp)
/* 9AB04 80099F04 01CF001F */  ddivu      $zero, $t6, $t7
/* 9AB08 80099F08 15E00002 */  bnez       $t7, .L80099F14
/* 9AB0C 80099F0C 00000000 */   nop
/* 9AB10 80099F10 0007000D */  break      7
.L80099F14:
/* 9AB14 80099F14 00001010 */   mfhi      $v0
/* 9AB18 80099F18 0002183C */  dsll32     $v1, $v0, 0
/* 9AB1C 80099F1C 0003183F */  dsra32     $v1, $v1, 0
/* 9AB20 80099F20 10000003 */  b          .L80099F30
/* 9AB24 80099F24 0002103F */   dsra32    $v0, $v0, 0
/* 9AB28 80099F28 10000001 */  b          .L80099F30
/* 9AB2C 80099F2C 00000000 */   nop
.L80099F30:
/* 9AB30 80099F30 03E00008 */  jr         $ra
/* 9AB34 80099F34 00000000 */   nop

glabel func_80099F38
/* 9AB38 80099F38 AFA40000 */  sw         $a0, ($sp)
/* 9AB3C 80099F3C AFA50004 */  sw         $a1, 4($sp)
/* 9AB40 80099F40 AFA60008 */  sw         $a2, 8($sp)
/* 9AB44 80099F44 AFA7000C */  sw         $a3, 0xc($sp)
/* 9AB48 80099F48 DFAE0000 */  ld         $t6, ($sp)
/* 9AB4C 80099F4C DFAF0008 */  ld         $t7, 8($sp)
/* 9AB50 80099F50 01CF001F */  ddivu      $zero, $t6, $t7
/* 9AB54 80099F54 15E00002 */  bnez       $t7, .L80099F60
/* 9AB58 80099F58 00000000 */   nop
/* 9AB5C 80099F5C 0007000D */  break      7
.L80099F60:
/* 9AB60 80099F60 00001012 */   mflo      $v0
/* 9AB64 80099F64 0002183C */  dsll32     $v1, $v0, 0
/* 9AB68 80099F68 0003183F */  dsra32     $v1, $v1, 0
/* 9AB6C 80099F6C 10000003 */  b          .L80099F7C
/* 9AB70 80099F70 0002103F */   dsra32    $v0, $v0, 0
/* 9AB74 80099F74 10000001 */  b          .L80099F7C
/* 9AB78 80099F78 00000000 */   nop
.L80099F7C:
/* 9AB7C 80099F7C 03E00008 */  jr         $ra
/* 9AB80 80099F80 00000000 */   nop

glabel func_80099F84
/* 9AB84 80099F84 AFA40000 */  sw         $a0, ($sp)
/* 9AB88 80099F88 AFA50004 */  sw         $a1, 4($sp)
/* 9AB8C 80099F8C AFA60008 */  sw         $a2, 8($sp)
/* 9AB90 80099F90 AFA7000C */  sw         $a3, 0xc($sp)
/* 9AB94 80099F94 DFAE0000 */  ld         $t6, ($sp)
/* 9AB98 80099F98 DFAF0008 */  ld         $t7, 8($sp)
/* 9AB9C 80099F9C 01EE1014 */  dsllv      $v0, $t6, $t7
/* 9ABA0 80099FA0 0002183C */  dsll32     $v1, $v0, 0
/* 9ABA4 80099FA4 0003183F */  dsra32     $v1, $v1, 0
/* 9ABA8 80099FA8 10000003 */  b          .L80099FB8
/* 9ABAC 80099FAC 0002103F */   dsra32    $v0, $v0, 0
/* 9ABB0 80099FB0 10000001 */  b          .L80099FB8
/* 9ABB4 80099FB4 00000000 */   nop
.L80099FB8:
/* 9ABB8 80099FB8 03E00008 */  jr         $ra
/* 9ABBC 80099FBC 00000000 */   nop

glabel func_80099FC0
/* 9ABC0 80099FC0 AFA40000 */  sw         $a0, ($sp)
/* 9ABC4 80099FC4 AFA50004 */  sw         $a1, 4($sp)
/* 9ABC8 80099FC8 AFA60008 */  sw         $a2, 8($sp)
/* 9ABCC 80099FCC AFA7000C */  sw         $a3, 0xc($sp)
/* 9ABD0 80099FD0 DFAE0000 */  ld         $t6, ($sp)
/* 9ABD4 80099FD4 DFAF0008 */  ld         $t7, 8($sp)
/* 9ABD8 80099FD8 01CF001F */  ddivu      $zero, $t6, $t7
/* 9ABDC 80099FDC 15E00002 */  bnez       $t7, .L80099FE8
/* 9ABE0 80099FE0 00000000 */   nop
/* 9ABE4 80099FE4 0007000D */  break      7
.L80099FE8:
/* 9ABE8 80099FE8 00001010 */   mfhi      $v0
/* 9ABEC 80099FEC 0002183C */  dsll32     $v1, $v0, 0
/* 9ABF0 80099FF0 0003183F */  dsra32     $v1, $v1, 0
/* 9ABF4 80099FF4 10000003 */  b          .L8009A004
/* 9ABF8 80099FF8 0002103F */   dsra32    $v0, $v0, 0
/* 9ABFC 80099FFC 10000001 */  b          .L8009A004
/* 9AC00 8009A000 00000000 */   nop
.L8009A004:
/* 9AC04 8009A004 03E00008 */  jr         $ra
/* 9AC08 8009A008 00000000 */   nop

glabel func_8009A00C
/* 9AC0C 8009A00C AFA40000 */  sw         $a0, ($sp)
/* 9AC10 8009A010 AFA50004 */  sw         $a1, 4($sp)
/* 9AC14 8009A014 AFA60008 */  sw         $a2, 8($sp)
/* 9AC18 8009A018 AFA7000C */  sw         $a3, 0xc($sp)
/* 9AC1C 8009A01C DFAE0000 */  ld         $t6, ($sp)
/* 9AC20 8009A020 DFAF0008 */  ld         $t7, 8($sp)
/* 9AC24 8009A024 01CF001E */  ddiv       $zero, $t6, $t7
/* 9AC28 8009A028 00000000 */  nop
/* 9AC2C 8009A02C 15E00002 */  bnez       $t7, .L8009A038
/* 9AC30 8009A030 00000000 */   nop
/* 9AC34 8009A034 0007000D */  break      7
.L8009A038:
/* 9AC38 8009A038 6401FFFF */   daddiu    $at, $zero, -1
/* 9AC3C 8009A03C 15E10005 */  bne        $t7, $at, .L8009A054
/* 9AC40 8009A040 64010001 */   daddiu    $at, $zero, 1
/* 9AC44 8009A044 00010FFC */  dsll32     $at, $at, 0x1f
/* 9AC48 8009A048 15C10002 */  bne        $t6, $at, .L8009A054
/* 9AC4C 8009A04C 00000000 */   nop
/* 9AC50 8009A050 0006000D */  break      6
.L8009A054:
/* 9AC54 8009A054 00001012 */   mflo      $v0
/* 9AC58 8009A058 0002183C */  dsll32     $v1, $v0, 0
/* 9AC5C 8009A05C 0003183F */  dsra32     $v1, $v1, 0
/* 9AC60 8009A060 10000003 */  b          .L8009A070
/* 9AC64 8009A064 0002103F */   dsra32    $v0, $v0, 0
/* 9AC68 8009A068 10000001 */  b          .L8009A070
/* 9AC6C 8009A06C 00000000 */   nop
.L8009A070:
/* 9AC70 8009A070 03E00008 */  jr         $ra
/* 9AC74 8009A074 00000000 */   nop

glabel func_8009A078
/* 9AC78 8009A078 AFA40000 */  sw         $a0, ($sp)
/* 9AC7C 8009A07C AFA50004 */  sw         $a1, 4($sp)
/* 9AC80 8009A080 AFA60008 */  sw         $a2, 8($sp)
/* 9AC84 8009A084 AFA7000C */  sw         $a3, 0xc($sp)
/* 9AC88 8009A088 DFAE0000 */  ld         $t6, ($sp)
/* 9AC8C 8009A08C DFAF0008 */  ld         $t7, 8($sp)
/* 9AC90 8009A090 01CF001D */  dmultu     $t6, $t7
/* 9AC94 8009A094 00001012 */  mflo       $v0
/* 9AC98 8009A098 0002183C */  dsll32     $v1, $v0, 0
/* 9AC9C 8009A09C 0003183F */  dsra32     $v1, $v1, 0
/* 9ACA0 8009A0A0 10000003 */  b          .L8009A0B0
/* 9ACA4 8009A0A4 0002103F */   dsra32    $v0, $v0, 0
/* 9ACA8 8009A0A8 10000001 */  b          .L8009A0B0
/* 9ACAC 8009A0AC 00000000 */   nop
.L8009A0B0:
/* 9ACB0 8009A0B0 03E00008 */  jr         $ra
/* 9ACB4 8009A0B4 00000000 */   nop

glabel func_8009A0B8
/* 9ACB8 8009A0B8 AFA60008 */  sw         $a2, 8($sp)
/* 9ACBC 8009A0BC AFA7000C */  sw         $a3, 0xc($sp)
/* 9ACC0 8009A0C0 87AF0012 */  lh         $t7, 0x12($sp)
/* 9ACC4 8009A0C4 DFAE0008 */  ld         $t6, 8($sp)
/* 9ACC8 8009A0C8 01E0C025 */  or         $t8, $t7, $zero
/* 9ACCC 8009A0CC 0300C825 */  or         $t9, $t8, $zero
/* 9ACD0 8009A0D0 01D9001F */  ddivu      $zero, $t6, $t9
/* 9ACD4 8009A0D4 17200002 */  bnez       $t9, .L8009A0E0
/* 9ACD8 8009A0D8 00000000 */   nop
/* 9ACDC 8009A0DC 0007000D */  break      7
.L8009A0E0:
/* 9ACE0 8009A0E0 00004012 */   mflo      $t0
/* 9ACE4 8009A0E4 FC880000 */  sd         $t0, ($a0)
/* 9ACE8 8009A0E8 00000000 */  nop
/* 9ACEC 8009A0EC 87AA0012 */  lh         $t2, 0x12($sp)
/* 9ACF0 8009A0F0 DFA90008 */  ld         $t1, 8($sp)
/* 9ACF4 8009A0F4 01405825 */  or         $t3, $t2, $zero
/* 9ACF8 8009A0F8 01606025 */  or         $t4, $t3, $zero
/* 9ACFC 8009A0FC 012C001F */  ddivu      $zero, $t1, $t4
/* 9AD00 8009A100 15800002 */  bnez       $t4, .L8009A10C
/* 9AD04 8009A104 00000000 */   nop
/* 9AD08 8009A108 0007000D */  break      7
.L8009A10C:
/* 9AD0C 8009A10C 00006810 */   mfhi      $t5
/* 9AD10 8009A110 FCAD0000 */  sd         $t5, ($a1)
/* 9AD14 8009A114 00000000 */  nop
/* 9AD18 8009A118 10000001 */  b          .L8009A120
/* 9AD1C 8009A11C 00000000 */   nop
.L8009A120:
/* 9AD20 8009A120 03E00008 */  jr         $ra
/* 9AD24 8009A124 00000000 */   nop

glabel func_8009A128
/* 9AD28 8009A128 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9AD2C 8009A12C AFA40008 */  sw         $a0, 8($sp)
/* 9AD30 8009A130 AFA5000C */  sw         $a1, 0xc($sp)
/* 9AD34 8009A134 AFA60010 */  sw         $a2, 0x10($sp)
/* 9AD38 8009A138 AFA70014 */  sw         $a3, 0x14($sp)
/* 9AD3C 8009A13C DFAE0008 */  ld         $t6, 8($sp)
/* 9AD40 8009A140 DFAF0010 */  ld         $t7, 0x10($sp)
/* 9AD44 8009A144 01CF001E */  ddiv       $zero, $t6, $t7
/* 9AD48 8009A148 00000000 */  nop
/* 9AD4C 8009A14C 15E00002 */  bnez       $t7, .L8009A158
/* 9AD50 8009A150 00000000 */   nop
/* 9AD54 8009A154 0007000D */  break      7
.L8009A158:
/* 9AD58 8009A158 6401FFFF */   daddiu    $at, $zero, -1
/* 9AD5C 8009A15C 15E10005 */  bne        $t7, $at, .L8009A174
/* 9AD60 8009A160 64010001 */   daddiu    $at, $zero, 1
/* 9AD64 8009A164 00010FFC */  dsll32     $at, $at, 0x1f
/* 9AD68 8009A168 15C10002 */  bne        $t6, $at, .L8009A174
/* 9AD6C 8009A16C 00000000 */   nop
/* 9AD70 8009A170 0006000D */  break      6
.L8009A174:
/* 9AD74 8009A174 0000C010 */   mfhi      $t8
/* 9AD78 8009A178 FFB80000 */  sd         $t8, ($sp)
/* 9AD7C 8009A17C 00000000 */  nop
/* 9AD80 8009A180 DFB90000 */  ld         $t9, ($sp)
/* 9AD84 8009A184 07210004 */  bgez       $t9, .L8009A198
/* 9AD88 8009A188 00000000 */   nop
/* 9AD8C 8009A18C DFA80010 */  ld         $t0, 0x10($sp)
/* 9AD90 8009A190 1D000007 */  bgtz       $t0, .L8009A1B0
/* 9AD94 8009A194 00000000 */   nop
.L8009A198:
/* 9AD98 8009A198 DFA90000 */  ld         $t1, ($sp)
/* 9AD9C 8009A19C 19200008 */  blez       $t1, .L8009A1C0
/* 9ADA0 8009A1A0 00000000 */   nop
/* 9ADA4 8009A1A4 DFAA0010 */  ld         $t2, 0x10($sp)
/* 9ADA8 8009A1A8 05410005 */  bgez       $t2, .L8009A1C0
/* 9ADAC 8009A1AC 00000000 */   nop
.L8009A1B0:
/* 9ADB0 8009A1B0 DFAB0000 */  ld         $t3, ($sp)
/* 9ADB4 8009A1B4 DFAC0010 */  ld         $t4, 0x10($sp)
/* 9ADB8 8009A1B8 016C682D */  daddu      $t5, $t3, $t4
/* 9ADBC 8009A1BC FFAD0000 */  sd         $t5, ($sp)
.L8009A1C0:
/* 9ADC0 8009A1C0 8FA20000 */  lw         $v0, ($sp)
/* 9ADC4 8009A1C4 10000003 */  b          .L8009A1D4
/* 9ADC8 8009A1C8 8FA30004 */   lw        $v1, 4($sp)
/* 9ADCC 8009A1CC 10000001 */  b          .L8009A1D4
/* 9ADD0 8009A1D0 00000000 */   nop
.L8009A1D4:
/* 9ADD4 8009A1D4 03E00008 */  jr         $ra
/* 9ADD8 8009A1D8 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009A1DC
/* 9ADDC 8009A1DC AFA40000 */  sw         $a0, ($sp)
/* 9ADE0 8009A1E0 AFA50004 */  sw         $a1, 4($sp)
/* 9ADE4 8009A1E4 AFA60008 */  sw         $a2, 8($sp)
/* 9ADE8 8009A1E8 AFA7000C */  sw         $a3, 0xc($sp)
/* 9ADEC 8009A1EC DFAE0000 */  ld         $t6, ($sp)
/* 9ADF0 8009A1F0 DFAF0008 */  ld         $t7, 8($sp)
/* 9ADF4 8009A1F4 01EE1017 */  dsrav      $v0, $t6, $t7
/* 9ADF8 8009A1F8 0002183C */  dsll32     $v1, $v0, 0
/* 9ADFC 8009A1FC 0003183F */  dsra32     $v1, $v1, 0
/* 9AE00 8009A200 10000003 */  b          .L8009A210
/* 9AE04 8009A204 0002103F */   dsra32    $v0, $v0, 0
/* 9AE08 8009A208 10000001 */  b          .L8009A210
/* 9AE0C 8009A20C 00000000 */   nop
.L8009A210:
/* 9AE10 8009A210 03E00008 */  jr         $ra
/* 9AE14 8009A214 00000000 */   nop
/* 9AE18 8009A218 00000000 */  nop
/* 9AE1C 8009A21C 00000000 */  nop
