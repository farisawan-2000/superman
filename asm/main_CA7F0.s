.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C9BF0
/* CA7F0 800C9BF0 10C00007 */  beqz       $a2, .L800C9C10
/* CA7F4 800C9BF4 240E0001 */   addiu     $t6, $zero, 1
/* CA7F8 800C9BF8 00CE7804 */  sllv       $t7, $t6, $a2
/* CA7FC 800C9BFC 448F2000 */  mtc1       $t7, $f4
/* CA800 800C9C00 00000000 */  nop
/* CA804 800C9C04 468021A1 */  cvt.d.w    $f6, $f4
/* CA808 800C9C08 46266302 */  mul.d      $f12, $f12, $f6
/* CA80C 800C9C0C 00000000 */  nop
.L800C9C10:
/* CA810 800C9C10 03E00008 */  jr         $ra
/* CA814 800C9C14 46206006 */   mov.d     $f0, $f12

glabel func_800C9C18
/* CA818 800C9C18 44801800 */  mtc1       $zero, $f3
/* CA81C 800C9C1C 44801000 */  mtc1       $zero, $f2
/* CA820 800C9C20 ACC00000 */  sw         $zero, ($a2)
/* CA824 800C9C24 3C013FF0 */  lui        $at, 0x3ff0
/* CA828 800C9C28 46226032 */  c.eq.d     $f12, $f2
/* CA82C 800C9C2C 00000000 */  nop
/* CA830 800C9C30 45020004 */  bc1fl      .L800C9C44
/* CA834 800C9C34 462C103C */   c.lt.d    $f2, $f12
/* CA838 800C9C38 03E00008 */  jr         $ra
/* CA83C 800C9C3C 46206006 */   mov.d     $f0, $f12
/* CA840 800C9C40 462C103C */  c.lt.d     $f2, $f12
.L800C9C44:
/* CA844 800C9C44 44817800 */  mtc1       $at, $f15
/* CA848 800C9C48 44807000 */  mtc1       $zero, $f14
/* CA84C 800C9C4C 3C013FE0 */  lui        $at, 0x3fe0
/* CA850 800C9C50 45020004 */  bc1fl      .L800C9C64
/* CA854 800C9C54 46206007 */   neg.d     $f0, $f12
/* CA858 800C9C58 10000002 */  b          .L800C9C64
/* CA85C 800C9C5C 46206006 */   mov.d     $f0, $f12
/* CA860 800C9C60 46206007 */  neg.d      $f0, $f12
.L800C9C64:
/* CA864 800C9C64 4620703E */  c.le.d     $f14, $f0
/* CA868 800C9C68 00000000 */  nop
/* CA86C 800C9C6C 4502000D */  bc1fl      .L800C9CA4
/* CA870 800C9C70 3C013FE0 */   lui       $at, 0x3fe0
/* CA874 800C9C74 44818800 */  mtc1       $at, $f17
/* CA878 800C9C78 44808000 */  mtc1       $zero, $f16
/* CA87C 800C9C7C 00000000 */  nop
.L800C9C80:
/* CA880 800C9C80 46300002 */  mul.d      $f0, $f0, $f16
/* CA884 800C9C84 8CCE0000 */  lw         $t6, ($a2)
/* CA888 800C9C88 25CF0001 */  addiu      $t7, $t6, 1
/* CA88C 800C9C8C ACCF0000 */  sw         $t7, ($a2)
/* CA890 800C9C90 4620703E */  c.le.d     $f14, $f0
/* CA894 800C9C94 00000000 */  nop
/* CA898 800C9C98 4501FFF9 */  bc1t       .L800C9C80
/* CA89C 800C9C9C 00000000 */   nop
/* CA8A0 800C9CA0 3C013FE0 */  lui        $at, 0x3fe0
.L800C9CA4:
/* CA8A4 800C9CA4 44818800 */  mtc1       $at, $f17
/* CA8A8 800C9CA8 44808000 */  mtc1       $zero, $f16
/* CA8AC 800C9CAC 00000000 */  nop
/* CA8B0 800C9CB0 4630003C */  c.lt.d     $f0, $f16
/* CA8B4 800C9CB4 00000000 */  nop
/* CA8B8 800C9CB8 45020009 */  bc1fl      .L800C9CE0
/* CA8BC 800C9CBC 462C103C */   c.lt.d    $f2, $f12
/* CA8C0 800C9CC0 46200000 */  add.d      $f0, $f0, $f0
.L800C9CC4:
/* CA8C4 800C9CC4 8CD80000 */  lw         $t8, ($a2)
/* CA8C8 800C9CC8 4630003C */  c.lt.d     $f0, $f16
/* CA8CC 800C9CCC 2719FFFF */  addiu      $t9, $t8, -1
/* CA8D0 800C9CD0 ACD90000 */  sw         $t9, ($a2)
/* CA8D4 800C9CD4 4503FFFB */  bc1tl      .L800C9CC4
/* CA8D8 800C9CD8 46200000 */   add.d     $f0, $f0, $f0
/* CA8DC 800C9CDC 462C103C */  c.lt.d     $f2, $f12
.L800C9CE0:
/* CA8E0 800C9CE0 00000000 */  nop
/* CA8E4 800C9CE4 45020004 */  bc1fl      .L800C9CF8
/* CA8E8 800C9CE8 46200087 */   neg.d     $f2, $f0
/* CA8EC 800C9CEC 10000002 */  b          .L800C9CF8
/* CA8F0 800C9CF0 46200086 */   mov.d     $f2, $f0
/* CA8F4 800C9CF4 46200087 */  neg.d      $f2, $f0
.L800C9CF8:
/* CA8F8 800C9CF8 46201006 */  mov.d      $f0, $f2
/* CA8FC 800C9CFC 03E00008 */  jr         $ra
/* CA900 800C9D00 00000000 */   nop

glabel func_800C9D04
/* CA904 800C9D04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CA908 800C9D08 24020001 */  addiu      $v0, $zero, 1
/* CA90C 800C9D0C AFBF0014 */  sw         $ra, 0x14($sp)
/* CA910 800C9D10 10A20027 */  beq        $a1, $v0, .L800C9DB0
/* CA914 800C9D14 00803825 */   or        $a3, $a0, $zero
/* CA918 800C9D18 24010003 */  addiu      $at, $zero, 3
/* CA91C 800C9D1C 10A10007 */  beq        $a1, $at, .L800C9D3C
/* CA920 800C9D20 24010004 */   addiu     $at, $zero, 4
/* CA924 800C9D24 10A1000D */  beq        $a1, $at, .L800C9D5C
/* CA928 800C9D28 24010009 */   addiu     $at, $zero, 9
/* CA92C 800C9D2C 50A10017 */  beql       $a1, $at, .L800C9D8C
/* CA930 800C9D30 8CE40000 */   lw        $a0, ($a3)
/* CA934 800C9D34 10000021 */  b          .L800C9DBC
/* CA938 800C9D38 8CE40000 */   lw        $a0, ($a3)
.L800C9D3C:
/* CA93C 800C9D3C 8CE20040 */  lw         $v0, 0x40($a3)
/* CA940 800C9D40 50400004 */  beql       $v0, $zero, .L800C9D54
/* CA944 800C9D44 ACE6003C */   sw        $a2, 0x3c($a3)
/* CA948 800C9D48 10000002 */  b          .L800C9D54
/* CA94C 800C9D4C AC460000 */   sw        $a2, ($v0)
/* CA950 800C9D50 ACE6003C */  sw         $a2, 0x3c($a3)
.L800C9D54:
/* CA954 800C9D54 1000001E */  b          .L800C9DD0
/* CA958 800C9D58 ACE60040 */   sw        $a2, 0x40($a3)
.L800C9D5C:
/* CA95C 800C9D5C 8CE40000 */  lw         $a0, ($a3)
/* CA960 800C9D60 ACE20038 */  sw         $v0, 0x38($a3)
/* CA964 800C9D64 ACE00048 */  sw         $zero, 0x48($a3)
/* CA968 800C9D68 10800019 */  beqz       $a0, .L800C9DD0
/* CA96C 800C9D6C A4E2001A */   sh        $v0, 0x1a($a3)
/* CA970 800C9D70 8C990008 */  lw         $t9, 8($a0)
/* CA974 800C9D74 24050004 */  addiu      $a1, $zero, 4
/* CA978 800C9D78 0320F809 */  jalr       $t9
/* CA97C 800C9D7C 00000000 */   nop
/* CA980 800C9D80 10000014 */  b          .L800C9DD4
/* CA984 800C9D84 8FBF0014 */   lw        $ra, 0x14($sp)
/* CA988 800C9D88 8CE40000 */  lw         $a0, ($a3)
.L800C9D8C:
/* CA98C 800C9D8C ACE20048 */  sw         $v0, 0x48($a3)
/* CA990 800C9D90 50800010 */  beql       $a0, $zero, .L800C9DD4
/* CA994 800C9D94 8FBF0014 */   lw        $ra, 0x14($sp)
/* CA998 800C9D98 8C990008 */  lw         $t9, 8($a0)
/* CA99C 800C9D9C 24050009 */  addiu      $a1, $zero, 9
/* CA9A0 800C9DA0 0320F809 */  jalr       $t9
/* CA9A4 800C9DA4 00000000 */   nop
/* CA9A8 800C9DA8 1000000A */  b          .L800C9DD4
/* CA9AC 800C9DAC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C9DB0:
/* CA9B0 800C9DB0 10000007 */  b          .L800C9DD0
/* CA9B4 800C9DB4 ACE60000 */   sw        $a2, ($a3)
/* CA9B8 800C9DB8 8CE40000 */  lw         $a0, ($a3)
.L800C9DBC:
/* CA9BC 800C9DBC 50800005 */  beql       $a0, $zero, .L800C9DD4
/* CA9C0 800C9DC0 8FBF0014 */   lw        $ra, 0x14($sp)
/* CA9C4 800C9DC4 8C990008 */  lw         $t9, 8($a0)
/* CA9C8 800C9DC8 0320F809 */  jalr       $t9
/* CA9CC 800C9DCC 00000000 */   nop
.L800C9DD0:
/* CA9D0 800C9DD0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C9DD4:
/* CA9D4 800C9DD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* CA9D8 800C9DD8 00001025 */  or         $v0, $zero, $zero
/* CA9DC 800C9DDC 03E00008 */  jr         $ra
/* CA9E0 800C9DE0 00000000 */   nop

glabel func_800C9DE4
/* CA9E4 800C9DE4 27BDFF18 */  addiu      $sp, $sp, -0xe8
/* CA9E8 800C9DE8 1480000B */  bnez       $a0, .L800C9E18
/* CA9EC 800C9DEC AFBF0014 */   sw        $ra, 0x14($sp)
/* CA9F0 800C9DF0 462E803E */  c.le.d     $f16, $f14
/* CA9F4 800C9DF4 340EFFFF */  ori        $t6, $zero, 0xffff
/* CA9F8 800C9DF8 00001025 */  or         $v0, $zero, $zero
/* CA9FC 800C9DFC 45000004 */  bc1f       .L800C9E10
/* CAA00 800C9E00 00000000 */   nop
/* CAA04 800C9E04 A62E0000 */  sh         $t6, ($s1)
/* CAA08 800C9E08 10000066 */  b          .L800C9FA4
/* CAA0C 800C9E0C 24027FFF */   addiu     $v0, $zero, 0x7fff
.L800C9E10:
/* CAA10 800C9E10 10000064 */  b          .L800C9FA4
/* CAA14 800C9E14 A6200000 */   sh        $zero, ($s1)
.L800C9E18:
/* CAA18 800C9E18 3C013FF0 */  lui        $at, 0x3ff0
/* CAA1C 800C9E1C 4481B800 */  mtc1       $at, $f23
/* CAA20 800C9E20 4480B000 */  mtc1       $zero, $f22
/* CAA24 800C9E24 44802800 */  mtc1       $zero, $f5
/* CAA28 800C9E28 44802000 */  mtc1       $zero, $f4
/* CAA2C 800C9E2C 4636703C */  c.lt.d     $f14, $f22
/* CAA30 800C9E30 27B20068 */  addiu      $s2, $sp, 0x68
/* CAA34 800C9E34 3C0F800E */  lui        $t7, %hi(D_800DB0A0)
/* CAA38 800C9E38 25EFB0A0 */  addiu      $t7, $t7, %lo(D_800DB0A0)
/* CAA3C 800C9E3C 45000002 */  bc1f       .L800C9E48
/* CAA40 800C9E40 02407025 */   or        $t6, $s2, $zero
/* CAA44 800C9E44 4620B386 */  mov.d      $f14, $f22
.L800C9E48:
/* CAA48 800C9E48 4624803E */  c.le.d     $f16, $f4
/* CAA4C 800C9E4C 3C013FF0 */  lui        $at, 0x3ff0
/* CAA50 800C9E50 25F9003C */  addiu      $t9, $t7, 0x3c
/* CAA54 800C9E54 45000004 */  bc1f       .L800C9E68
/* CAA58 800C9E58 00000000 */   nop
/* CAA5C 800C9E5C 44818800 */  mtc1       $at, $f17
/* CAA60 800C9E60 44808000 */  mtc1       $zero, $f16
/* CAA64 800C9E64 00000000 */  nop
.L800C9E68:
/* CAA68 800C9E68 8DE10000 */  lw         $at, ($t7)
/* CAA6C 800C9E6C 25EF000C */  addiu      $t7, $t7, 0xc
/* CAA70 800C9E70 25CE000C */  addiu      $t6, $t6, 0xc
/* CAA74 800C9E74 ADC1FFF4 */  sw         $at, -0xc($t6)
/* CAA78 800C9E78 8DE1FFF8 */  lw         $at, -8($t7)
/* CAA7C 800C9E7C ADC1FFF8 */  sw         $at, -8($t6)
/* CAA80 800C9E80 8DE1FFFC */  lw         $at, -4($t7)
/* CAA84 800C9E84 15F9FFF8 */  bne        $t7, $t9, .L800C9E68
/* CAA88 800C9E88 ADC1FFFC */   sw        $at, -4($t6)
/* CAA8C 800C9E8C 44844000 */  mtc1       $a0, $f8
/* CAA90 800C9E90 3C184000 */  lui        $t8, 0x4000
/* CAA94 800C9E94 44983000 */  mtc1       $t8, $f6
/* CAA98 800C9E98 468042A1 */  cvt.d.w    $f10, $f8
/* CAA9C 800C9E9C 8DE10000 */  lw         $at, ($t7)
/* CAAA0 800C9EA0 27A600B0 */  addiu      $a2, $sp, 0xb0
/* CAAA4 800C9EA4 46803521 */  cvt.d.w    $f20, $f6
/* CAAA8 800C9EA8 ADC10000 */  sw         $at, ($t6)
/* CAAAC 800C9EAC 462AB103 */  div.d      $f4, $f22, $f10
/* CAAB0 800C9EB0 46307303 */  div.d      $f12, $f14, $f16
/* CAAB4 800C9EB4 46342082 */  mul.d      $f2, $f4, $f20
/* CAAB8 800C9EB8 4620118D */  trunc.w.d  $f6, $f2
/* CAABC 800C9EBC 44103000 */  mfc1       $s0, $f6
/* CAAC0 800C9EC0 0C032706 */  jal        func_800C9C18
/* CAAC4 800C9EC4 00000000 */   nop
/* CAAC8 800C9EC8 240F0010 */  addiu      $t7, $zero, 0x10
/* CAACC 800C9ECC 448F4000 */  mtc1       $t7, $f8
/* CAAD0 800C9ED0 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* CAAD4 800C9ED4 3C01800E */  lui        $at, %hi(D_800DFC70)
/* CAAD8 800C9ED8 468042A1 */  cvt.d.w    $f10, $f8
/* CAADC 800C9EDC 448E4000 */  mtc1       $t6, $f8
/* CAAE0 800C9EE0 462A0082 */  mul.d      $f2, $f0, $f10
/* CAAE4 800C9EE4 468042A1 */  cvt.d.w    $f10, $f8
/* CAAE8 800C9EE8 D428FC70 */  ldc1       $f8, %lo(D_800DFC70)($at)
/* CAAEC 800C9EEC 3C013FF0 */  lui        $at, 0x3ff0
/* CAAF0 800C9EF0 4620110D */  trunc.w.d  $f4, $f2
/* CAAF4 800C9EF4 4620B086 */  mov.d      $f2, $f22
/* CAAF8 800C9EF8 44182000 */  mfc1       $t8, $f4
/* CAAFC 800C9EFC 00000000 */  nop
/* CAB00 800C9F00 0018C8C0 */  sll        $t9, $t8, 3
/* CAB04 800C9F04 02597821 */  addu       $t7, $s2, $t9
/* CAB08 800C9F08 D5E6FFC0 */  ldc1       $f6, -0x40($t7)
/* CAB0C 800C9F0C 462A3100 */  add.d      $f4, $f6, $f10
/* CAB10 800C9F10 44803000 */  mtc1       $zero, $f6
/* CAB14 800C9F14 44813800 */  mtc1       $at, $f7
/* CAB18 800C9F18 46282302 */  mul.d      $f12, $f4, $f8
/* CAB1C 800C9F1C 00000000 */  nop
/* CAB20 800C9F20 46343382 */  mul.d      $f14, $f6, $f20
/* CAB24 800C9F24 462E6303 */  div.d      $f12, $f12, $f14
/* CAB28 800C9F28 12000009 */  beqz       $s0, .L800C9F50
/* CAB2C 800C9F2C 462CB000 */   add.d     $f0, $f22, $f12
.L800C9F30:
/* CAB30 800C9F30 32180001 */  andi       $t8, $s0, 1
/* CAB34 800C9F34 13000003 */  beqz       $t8, .L800C9F44
/* CAB38 800C9F38 0010C843 */   sra       $t9, $s0, 1
/* CAB3C 800C9F3C 46201082 */  mul.d      $f2, $f2, $f0
/* CAB40 800C9F40 00000000 */  nop
.L800C9F44:
/* CAB44 800C9F44 46200002 */  mul.d      $f0, $f0, $f0
/* CAB48 800C9F48 1720FFF9 */  bnez       $t9, .L800C9F30
/* CAB4C 800C9F4C 03208025 */   or        $s0, $t9, $zero
.L800C9F50:
/* CAB50 800C9F50 46221002 */  mul.d      $f0, $f2, $f2
/* CAB54 800C9F54 3C01800E */  lui        $at, 0x800e
/* CAB58 800C9F58 46200302 */  mul.d      $f12, $f0, $f0
/* CAB5C 800C9F5C 00000000 */  nop
/* CAB60 800C9F60 462C6082 */  mul.d      $f2, $f12, $f12
/* CAB64 800C9F64 4620128D */  trunc.w.d  $f10, $f2
/* CAB68 800C9F68 44035000 */  mfc1       $v1, $f10
/* CAB6C 800C9F6C 00000000 */  nop
/* CAB70 800C9F70 00037400 */  sll        $t6, $v1, 0x10
/* CAB74 800C9F74 000E1403 */  sra        $v0, $t6, 0x10
/* CAB78 800C9F78 44822000 */  mtc1       $v0, $f4
/* CAB7C 800C9F7C 00000000 */  nop
/* CAB80 800C9F80 46802220 */  cvt.s.w    $f8, $f4
/* CAB84 800C9F84 D424FC78 */  ldc1       $f4, -0x388($at)
/* CAB88 800C9F88 460041A1 */  cvt.d.s    $f6, $f8
/* CAB8C 800C9F8C 46261281 */  sub.d      $f10, $f2, $f6
/* CAB90 800C9F90 46245202 */  mul.d      $f8, $f10, $f4
/* CAB94 800C9F94 4620418D */  trunc.w.d  $f6, $f8
/* CAB98 800C9F98 440F3000 */  mfc1       $t7, $f6
/* CAB9C 800C9F9C 00000000 */  nop
/* CABA0 800C9FA0 A62F0000 */  sh         $t7, ($s1)
.L800C9FA4:
/* CABA4 800C9FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CABA8 800C9FA8 27BD00E8 */  addiu      $sp, $sp, 0xe8
/* CABAC 800C9FAC 03E00008 */  jr         $ra
/* CABB0 800C9FB0 00000000 */   nop

glabel func_800C9FB4
/* CABB4 800C9FB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CABB8 800C9FB8 AFBF001C */  sw         $ra, 0x1c($sp)
/* CABBC 800C9FBC 8E6E0048 */  lw         $t6, 0x48($s3)
/* CABC0 800C9FC0 24010001 */  addiu      $at, $zero, 1
/* CABC4 800C9FC4 8E640000 */  lw         $a0, ($s3)
/* CABC8 800C9FC8 15C10003 */  bne        $t6, $at, .L800C9FD8
/* CABCC 800C9FCC 00000000 */   nop
/* CABD0 800C9FD0 56A00004 */  bnezl      $s5, .L800C9FE4
/* CABD4 800C9FD4 AFA80010 */   sw        $t0, 0x10($sp)
.L800C9FD8:
/* CABD8 800C9FD8 10000098 */  b          .L800CA23C
/* CABDC 800C9FDC 01001025 */   or        $v0, $t0, $zero
/* CABE0 800C9FE0 AFA80010 */  sw         $t0, 0x10($sp)
.L800C9FE4:
/* CABE4 800C9FE4 8C990004 */  lw         $t9, 4($a0)
/* CABE8 800C9FE8 02C02825 */  or         $a1, $s6, $zero
/* CABEC 800C9FEC 02A03025 */  or         $a2, $s5, $zero
/* CABF0 800C9FF0 0320F809 */  jalr       $t9
/* CABF4 800C9FF4 00000000 */   nop
/* CABF8 800C9FF8 86CF0000 */  lh         $t7, ($s6)
/* CABFC 800C9FFC 3C010800 */  lui        $at, 0x800
/* CAC00 800CA000 0015B840 */  sll        $s7, $s5, 1
/* CAC04 800CA004 31F8FFFF */  andi       $t8, $t7, 0xffff
/* CAC08 800CA008 03017025 */  or         $t6, $t8, $at
/* CAC0C 800CA00C AC4E0000 */  sw         $t6, ($v0)
/* CAC10 800CA010 86190000 */  lh         $t9, ($s0)
/* CAC14 800CA014 3C010808 */  lui        $at, 0x808
/* CAC18 800CA018 24540010 */  addiu      $s4, $v0, 0x10
/* CAC1C 800CA01C 27380440 */  addiu      $t8, $t9, 0x440
/* CAC20 800CA020 00187400 */  sll        $t6, $t8, 0x10
/* CAC24 800CA024 32F9FFFF */  andi       $t9, $s7, 0xffff
/* CAC28 800CA028 01D97825 */  or         $t7, $t6, $t9
/* CAC2C 800CA02C AC4F0004 */  sw         $t7, 4($v0)
/* CAC30 800CA030 86180000 */  lh         $t8, ($s0)
/* CAC34 800CA034 270E0580 */  addiu      $t6, $t8, 0x580
/* CAC38 800CA038 31D9FFFF */  andi       $t9, $t6, 0xffff
/* CAC3C 800CA03C 03217825 */  or         $t7, $t9, $at
/* CAC40 800CA040 AC4F0008 */  sw         $t7, 8($v0)
/* CAC44 800CA044 86030000 */  lh         $v1, ($s0)
/* CAC48 800CA048 02808025 */  or         $s0, $s4, $zero
/* CAC4C 800CA04C 24780800 */  addiu      $t8, $v1, 0x800
/* CAC50 800CA050 330EFFFF */  andi       $t6, $t8, 0xffff
/* CAC54 800CA054 246F06C0 */  addiu      $t7, $v1, 0x6c0
/* CAC58 800CA058 000FC400 */  sll        $t8, $t7, 0x10
/* CAC5C 800CA05C 01D8C825 */  or         $t9, $t6, $t8
/* CAC60 800CA060 AC59000C */  sw         $t9, 0xc($v0)
/* CAC64 800CA064 8E6F0038 */  lw         $t7, 0x38($s3)
/* CAC68 800CA068 3C19800E */  lui        $t9, 0x800e
/* CAC6C 800CA06C 51E00067 */  beql       $t7, $zero, .L800CA20C
/* CAC70 800CA070 3C0F0308 */   lui       $t7, 0x308
/* CAC74 800CA074 866E0018 */  lh         $t6, 0x18($s3)
/* CAC78 800CA078 AE600038 */  sw         $zero, 0x38($s3)
/* CAC7C 800CA07C 866F001A */  lh         $t7, 0x1a($s3)
/* CAC80 800CA080 000EC040 */  sll        $t8, $t6, 1
/* CAC84 800CA084 0338C821 */  addu       $t9, $t9, $t8
/* CAC88 800CA088 8739AFA0 */  lh         $t9, -0x5060($t9)
/* CAC8C 800CA08C 8E640034 */  lw         $a0, 0x34($s3)
/* CAC90 800CA090 26710024 */  addiu      $s1, $s3, 0x24
/* CAC94 800CA094 032F0019 */  multu      $t9, $t7
/* CAC98 800CA098 8679001C */  lh         $t9, 0x1c($s3)
/* CAC9C 800CA09C 44992000 */  mtc1       $t9, $f4
/* CACA0 800CA0A0 00000000 */  nop
/* CACA4 800CA0A4 46802421 */  cvt.d.w    $f16, $f4
/* CACA8 800CA0A8 00007012 */  mflo       $t6
/* CACAC 800CA0AC 000EC3C3 */  sra        $t8, $t6, 0xf
/* CACB0 800CA0B0 A6780028 */  sh         $t8, 0x28($s3)
/* CACB4 800CA0B4 866F0028 */  lh         $t7, 0x28($s3)
/* CACB8 800CA0B8 448F3000 */  mtc1       $t7, $f6
/* CACBC 800CA0BC 0C032779 */  jal        func_800C9DE4
/* CACC0 800CA0C0 468033A1 */   cvt.d.w   $f14, $f6
/* CACC4 800CA0C4 866E0018 */  lh         $t6, 0x18($s3)
/* CACC8 800CA0C8 3C0F800E */  lui        $t7, %hi(D_800DB09E)
/* CACCC 800CA0CC A6620026 */  sh         $v0, 0x26($s3)
/* CACD0 800CA0D0 000EC040 */  sll        $t8, $t6, 1
/* CACD4 800CA0D4 0018C823 */  negu       $t9, $t8
/* CACD8 800CA0D8 01F97821 */  addu       $t7, $t7, $t9
/* CACDC 800CA0DC 85EFB09E */  lh         $t7, %lo(D_800DB09E)($t7)
/* CACE0 800CA0E0 866E001A */  lh         $t6, 0x1a($s3)
/* CACE4 800CA0E4 8E640034 */  lw         $a0, 0x34($s3)
/* CACE8 800CA0E8 2671002A */  addiu      $s1, $s3, 0x2a
/* CACEC 800CA0EC 01EE0019 */  multu      $t7, $t6
/* CACF0 800CA0F0 866F001E */  lh         $t7, 0x1e($s3)
/* CACF4 800CA0F4 448F4000 */  mtc1       $t7, $f8
/* CACF8 800CA0F8 00000000 */  nop
/* CACFC 800CA0FC 46804421 */  cvt.d.w    $f16, $f8
/* CAD00 800CA100 0000C012 */  mflo       $t8
/* CAD04 800CA104 0018CBC3 */  sra        $t9, $t8, 0xf
/* CAD08 800CA108 A679002E */  sh         $t9, 0x2e($s3)
/* CAD0C 800CA10C 866E002E */  lh         $t6, 0x2e($s3)
/* CAD10 800CA110 448E5000 */  mtc1       $t6, $f10
/* CAD14 800CA114 0C032779 */  jal        func_800C9DE4
/* CAD18 800CA118 468053A1 */   cvt.d.w   $f14, $f10
/* CAD1C 800CA11C 8678001C */  lh         $t8, 0x1c($s3)
/* CAD20 800CA120 A662002C */  sh         $v0, 0x2c($s3)
/* CAD24 800CA124 02801825 */  or         $v1, $s4, $zero
/* CAD28 800CA128 3C010906 */  lui        $at, 0x906
/* CAD2C 800CA12C 3319FFFF */  andi       $t9, $t8, 0xffff
/* CAD30 800CA130 03217825 */  or         $t7, $t9, $at
/* CAD34 800CA134 AC6F0000 */  sw         $t7, ($v1)
/* CAD38 800CA138 AC600004 */  sw         $zero, 4($v1)
/* CAD3C 800CA13C 866E001E */  lh         $t6, 0x1e($s3)
/* CAD40 800CA140 26940008 */  addiu      $s4, $s4, 8
/* CAD44 800CA144 02802025 */  or         $a0, $s4, $zero
/* CAD48 800CA148 3C010904 */  lui        $at, 0x904
/* CAD4C 800CA14C 31D8FFFF */  andi       $t8, $t6, 0xffff
/* CAD50 800CA150 0301C825 */  or         $t9, $t8, $at
/* CAD54 800CA154 AC990000 */  sw         $t9, ($a0)
/* CAD58 800CA158 AC800004 */  sw         $zero, 4($a0)
/* CAD5C 800CA15C 866F0028 */  lh         $t7, 0x28($s3)
/* CAD60 800CA160 26940008 */  addiu      $s4, $s4, 8
/* CAD64 800CA164 3C010902 */  lui        $at, 0x902
/* CAD68 800CA168 31EEFFFF */  andi       $t6, $t7, 0xffff
/* CAD6C 800CA16C 01C1C025 */  or         $t8, $t6, $at
/* CAD70 800CA170 02802825 */  or         $a1, $s4, $zero
/* CAD74 800CA174 ACB80000 */  sw         $t8, ($a1)
/* CAD78 800CA178 866F0026 */  lh         $t7, 0x26($s3)
/* CAD7C 800CA17C 96790024 */  lhu        $t9, 0x24($s3)
/* CAD80 800CA180 26940008 */  addiu      $s4, $s4, 8
/* CAD84 800CA184 000F7400 */  sll        $t6, $t7, 0x10
/* CAD88 800CA188 01D97825 */  or         $t7, $t6, $t9
/* CAD8C 800CA18C ACAF0004 */  sw         $t7, 4($a1)
/* CAD90 800CA190 8678002E */  lh         $t8, 0x2e($s3)
/* CAD94 800CA194 3C010900 */  lui        $at, 0x900
/* CAD98 800CA198 02803025 */  or         $a2, $s4, $zero
/* CAD9C 800CA19C 330EFFFF */  andi       $t6, $t8, 0xffff
/* CADA0 800CA1A0 01C1C825 */  or         $t9, $t6, $at
/* CADA4 800CA1A4 ACD90000 */  sw         $t9, ($a2)
/* CADA8 800CA1A8 8678002C */  lh         $t8, 0x2c($s3)
/* CADAC 800CA1AC 966F002A */  lhu        $t7, 0x2a($s3)
/* CADB0 800CA1B0 26940008 */  addiu      $s4, $s4, 8
/* CADB4 800CA1B4 00187400 */  sll        $t6, $t8, 0x10
/* CADB8 800CA1B8 01CFC025 */  or         $t8, $t6, $t7
/* CADBC 800CA1BC ACD80004 */  sw         $t8, 4($a2)
/* CADC0 800CA1C0 86790020 */  lh         $t9, 0x20($s3)
/* CADC4 800CA1C4 3C010908 */  lui        $at, 0x908
/* CADC8 800CA1C8 02801025 */  or         $v0, $s4, $zero
/* CADCC 800CA1CC 332EFFFF */  andi       $t6, $t9, 0xffff
/* CADD0 800CA1D0 01C17825 */  or         $t7, $t6, $at
/* CADD4 800CA1D4 AC4F0000 */  sw         $t7, ($v0)
/* CADD8 800CA1D8 86780022 */  lh         $t8, 0x22($s3)
/* CADDC 800CA1DC 26940008 */  addiu      $s4, $s4, 8
/* CADE0 800CA1E0 02808025 */  or         $s0, $s4, $zero
/* CADE4 800CA1E4 3319FFFF */  andi       $t9, $t8, 0xffff
/* CADE8 800CA1E8 AC590004 */  sw         $t9, 4($v0)
/* CADEC 800CA1EC 3C0E0309 */  lui        $t6, 0x309
/* CADF0 800CA1F0 AE0E0000 */  sw         $t6, ($s0)
/* CADF4 800CA1F4 8E640014 */  lw         $a0, 0x14($s3)
/* CADF8 800CA1F8 0C030C38 */  jal        func_800C30E0
/* CADFC 800CA1FC 26940008 */   addiu     $s4, $s4, 8
/* CAE00 800CA200 10000007 */  b          .L800CA220
/* CAE04 800CA204 AE020004 */   sw        $v0, 4($s0)
/* CAE08 800CA208 3C0F0308 */  lui        $t7, 0x308
.L800CA20C:
/* CAE0C 800CA20C AE0F0000 */  sw         $t7, ($s0)
/* CAE10 800CA210 8E640014 */  lw         $a0, 0x14($s3)
/* CAE14 800CA214 0C030C38 */  jal        func_800C30E0
/* CAE18 800CA218 26940008 */   addiu     $s4, $s4, 8
/* CAE1C 800CA21C AE020004 */  sw         $v0, 4($s0)
.L800CA220:
/* CAE20 800CA220 86D80000 */  lh         $t8, ($s6)
/* CAE24 800CA224 02801025 */  or         $v0, $s4, $zero
/* CAE28 800CA228 0317C821 */  addu       $t9, $t8, $s7
/* CAE2C 800CA22C A6D90000 */  sh         $t9, ($s6)
/* CAE30 800CA230 8E6E0030 */  lw         $t6, 0x30($s3)
/* CAE34 800CA234 01D57821 */  addu       $t7, $t6, $s5
/* CAE38 800CA238 AE6F0030 */  sw         $t7, 0x30($s3)
.L800CA23C:
/* CAE3C 800CA23C 8FBF001C */  lw         $ra, 0x1c($sp)
/* CAE40 800CA240 27BD0020 */  addiu      $sp, $sp, 0x20
/* CAE44 800CA244 03E00008 */  jr         $ra
/* CAE48 800CA248 00000000 */   nop

glabel func_800CA24C
/* CAE4C 800CA24C AFA50008 */  sw         $a1, 8($sp)
/* CAE50 800CA250 00057400 */  sll        $t6, $a1, 0x10
/* CAE54 800CA254 AFA6000C */  sw         $a2, 0xc($sp)
/* CAE58 800CA258 30D8FFFF */  andi       $t8, $a2, 0xffff
/* CAE5C 800CA25C 0004C8C3 */  sra        $t9, $a0, 3
/* CAE60 800CA260 03003025 */  or         $a2, $t8, $zero
/* CAE64 800CA264 000E2C03 */  sra        $a1, $t6, 0x10
/* CAE68 800CA268 17200003 */  bnez       $t9, .L800CA278
/* CAE6C 800CA26C 03202025 */   or        $a0, $t9, $zero
/* CAE70 800CA270 03E00008 */  jr         $ra
/* CAE74 800CA274 46006006 */   mov.s     $f0, $f12
.L800CA278:
/* CAE78 800CA278 00057400 */  sll        $t6, $a1, 0x10
/* CAE7C 800CA27C 448E2000 */  mtc1       $t6, $f4
/* CAE80 800CA280 44864000 */  mtc1       $a2, $f8
/* CAE84 800CA284 00001025 */  or         $v0, $zero, $zero
/* CAE88 800CA288 468021A0 */  cvt.s.w    $f6, $f4
/* CAE8C 800CA28C 04C10005 */  bgez       $a2, .L800CA2A4
/* CAE90 800CA290 468042A0 */   cvt.s.w   $f10, $f8
/* CAE94 800CA294 3C014F80 */  lui        $at, 0x4f80
/* CAE98 800CA298 44812000 */  mtc1       $at, $f4
/* CAE9C 800CA29C 00000000 */  nop
/* CAEA0 800CA2A0 46045280 */  add.s      $f10, $f10, $f4
.L800CA2A4:
/* CAEA4 800CA2A4 3C014780 */  lui        $at, 0x4780
/* CAEA8 800CA2A8 460A3200 */  add.s      $f8, $f6, $f10
/* CAEAC 800CA2AC 44812000 */  mtc1       $at, $f4
/* CAEB0 800CA2B0 3C013F80 */  lui        $at, 0x3f80
/* CAEB4 800CA2B4 44811000 */  mtc1       $at, $f2
/* CAEB8 800CA2B8 24030020 */  addiu      $v1, $zero, 0x20
/* CAEBC 800CA2BC 46044003 */  div.s      $f0, $f8, $f4
/* CAEC0 800CA2C0 308F0001 */  andi       $t7, $a0, 1
.L800CA2C4:
/* CAEC4 800CA2C4 11E00003 */  beqz       $t7, .L800CA2D4
/* CAEC8 800CA2C8 0004C043 */   sra       $t8, $a0, 1
/* CAECC 800CA2CC 46001082 */  mul.s      $f2, $f2, $f0
/* CAED0 800CA2D0 00000000 */  nop
.L800CA2D4:
/* CAED4 800CA2D4 13000005 */  beqz       $t8, .L800CA2EC
/* CAED8 800CA2D8 03002025 */   or        $a0, $t8, $zero
/* CAEDC 800CA2DC 24420001 */  addiu      $v0, $v0, 1
/* CAEE0 800CA2E0 46000002 */  mul.s      $f0, $f0, $f0
/* CAEE4 800CA2E4 5443FFF7 */  bnel       $v0, $v1, .L800CA2C4
/* CAEE8 800CA2E8 308F0001 */   andi      $t7, $a0, 1
.L800CA2EC:
/* CAEEC 800CA2EC 46026002 */  mul.s      $f0, $f12, $f2
/* CAEF0 800CA2F0 00000000 */  nop
/* CAEF4 800CA2F4 03E00008 */  jr         $ra
/* CAEF8 800CA2F8 00000000 */   nop

glabel func_800CA2FC
/* CAEFC 800CA2FC 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* CAF00 800CA300 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* CAF04 800CA304 AFBF0054 */  sw         $ra, 0x54($sp)
/* CAF08 800CA308 AFBE0050 */  sw         $fp, 0x50($sp)
/* CAF0C 800CA30C AFB7004C */  sw         $s7, 0x4c($sp)
/* CAF10 800CA310 AFB60048 */  sw         $s6, 0x48($sp)
/* CAF14 800CA314 AFB50044 */  sw         $s5, 0x44($sp)
/* CAF18 800CA318 AFB40040 */  sw         $s4, 0x40($sp)
/* CAF1C 800CA31C AFB3003C */  sw         $s3, 0x3c($sp)
/* CAF20 800CA320 AFB20038 */  sw         $s2, 0x38($sp)
/* CAF24 800CA324 AFB10034 */  sw         $s1, 0x34($sp)
/* CAF28 800CA328 AFB00030 */  sw         $s0, 0x30($sp)
/* CAF2C 800CA32C F7B60028 */  sdc1       $f22, 0x28($sp)
/* CAF30 800CA330 F7B40020 */  sdc1       $f20, 0x20($sp)
/* CAF34 800CA334 AFA500AC */  sw         $a1, 0xac($sp)
/* CAF38 800CA338 AFA600B0 */  sw         $a2, 0xb0($sp)
/* CAF3C 800CA33C AFA700B4 */  sw         $a3, 0xb4($sp)
/* CAF40 800CA340 AFA400A0 */  sw         $a0, 0xa0($sp)
/* CAF44 800CA344 AFA70094 */  sw         $a3, 0x94($sp)
/* CAF48 800CA348 A7A0008E */  sh         $zero, 0x8e($sp)
/* CAF4C 800CA34C A7A0009E */  sh         $zero, 0x9e($sp)
/* CAF50 800CA350 AFAE00A4 */  sw         $t6, 0xa4($sp)
/* CAF54 800CA354 8C98003C */  lw         $t8, 0x3c($a0)
/* CAF58 800CA358 0080F025 */  or         $fp, $a0, $zero
/* CAF5C 800CA35C 24110001 */  addiu      $s1, $zero, 1
/* CAF60 800CA360 5300011C */  beql       $t8, $zero, .L800CA7D4
/* CAF64 800CA364 03C09825 */   or        $s3, $fp, $zero
/* CAF68 800CA368 8FC3003C */  lw         $v1, 0x3c($fp)
.L800CA36C:
/* CAF6C 800CA36C 8FA20094 */  lw         $v0, 0x94($sp)
/* CAF70 800CA370 8FB800B0 */  lw         $t8, 0xb0($sp)
/* CAF74 800CA374 8C790004 */  lw         $t9, 4($v1)
/* CAF78 800CA378 03227823 */  subu       $t7, $t9, $v0
/* CAF7C 800CA37C 030F082A */  slt        $at, $t8, $t7
/* CAF80 800CA380 AFAF0060 */  sw         $t7, 0x60($sp)
/* CAF84 800CA384 14200112 */  bnez       $at, .L800CA7D0
/* CAF88 800CA388 AFB90094 */   sw        $t9, 0x94($sp)
/* CAF8C 800CA38C 94790008 */  lhu        $t9, 8($v1)
/* CAF90 800CA390 2F210011 */  sltiu      $at, $t9, 0x11
/* CAF94 800CA394 102000EC */  beqz       $at, .L800CA748
/* CAF98 800CA398 0019C880 */   sll       $t9, $t9, 2
/* CAF9C 800CA39C 3C01800E */  lui        $at, %hi(D_800DFC80)
/* CAFA0 800CA3A0 00390821 */  addu       $at, $at, $t9
/* CAFA4 800CA3A4 8C39FC80 */  lw         $t9, %lo(D_800DFC80)($at)
/* CAFA8 800CA3A8 03200008 */  jr         $t9
/* CAFAC 800CA3AC 00000000 */   nop
/* CAFB0 800CA3B0 846E000A */  lh         $t6, 0xa($v1)
/* CAFB4 800CA3B4 00608025 */  or         $s0, $v1, $zero
/* CAFB8 800CA3B8 51C00007 */  beql       $t6, $zero, .L800CA3D8
/* CAFBC 800CA3BC 8FD90008 */   lw        $t9, 8($fp)
/* CAFC0 800CA3C0 8FD90008 */  lw         $t9, 8($fp)
/* CAFC4 800CA3C4 03C02025 */  or         $a0, $fp, $zero
/* CAFC8 800CA3C8 24050008 */  addiu      $a1, $zero, 8
/* CAFCC 800CA3CC 0320F809 */  jalr       $t9
/* CAFD0 800CA3D0 00003025 */   or        $a2, $zero, $zero
/* CAFD4 800CA3D4 8FD90008 */  lw         $t9, 8($fp)
.L800CA3D8:
/* CAFD8 800CA3D8 03C02025 */  or         $a0, $fp, $zero
/* CAFDC 800CA3DC 24050005 */  addiu      $a1, $zero, 5
/* CAFE0 800CA3E0 0320F809 */  jalr       $t9
/* CAFE4 800CA3E4 8E060018 */   lw        $a2, 0x18($s0)
/* CAFE8 800CA3E8 8FD90008 */  lw         $t9, 8($fp)
/* CAFEC 800CA3EC 03C02025 */  or         $a0, $fp, $zero
/* CAFF0 800CA3F0 24050009 */  addiu      $a1, $zero, 9
/* CAFF4 800CA3F4 0320F809 */  jalr       $t9
/* CAFF8 800CA3F8 00003025 */   or        $a2, $zero, $zero
/* CAFFC 800CA3FC AFD10038 */  sw         $s1, 0x38($fp)
/* CB000 800CA400 AFC00030 */  sw         $zero, 0x30($fp)
/* CB004 800CA404 8E180014 */  lw         $t8, 0x14($s0)
/* CB008 800CA408 AFD80034 */  sw         $t8, 0x34($fp)
/* CB00C 800CA40C 86030010 */  lh         $v1, 0x10($s0)
/* CB010 800CA410 00630019 */  multu      $v1, $v1
/* CB014 800CA414 00002012 */  mflo       $a0
/* CB018 800CA418 00047BC3 */  sra        $t7, $a0, 0xf
/* CB01C 800CA41C A7CF001A */  sh         $t7, 0x1a($fp)
/* CB020 800CA420 920E0012 */  lbu        $t6, 0x12($s0)
/* CB024 800CA424 3C0F800E */  lui        $t7, %hi(D_800DAFA0)
/* CB028 800CA428 A7CE0018 */  sh         $t6, 0x18($fp)
/* CB02C 800CA42C 92190013 */  lbu        $t9, 0x13($s0)
/* CB030 800CA430 0019C040 */  sll        $t8, $t9, 1
/* CB034 800CA434 01F87821 */  addu       $t7, $t7, $t8
/* CB038 800CA438 85EFAFA0 */  lh         $t7, %lo(D_800DAFA0)($t7)
/* CB03C 800CA43C A7CF0020 */  sh         $t7, 0x20($fp)
/* CB040 800CA440 920E0013 */  lbu        $t6, 0x13($s0)
/* CB044 800CA444 3C0F800E */  lui        $t7, %hi(D_800DB09E)
/* CB048 800CA448 000EC840 */  sll        $t9, $t6, 1
/* CB04C 800CA44C 0019C023 */  negu       $t8, $t9
/* CB050 800CA450 01F87821 */  addu       $t7, $t7, $t8
/* CB054 800CA454 85EFB09E */  lh         $t7, %lo(D_800DB09E)($t7)
/* CB058 800CA458 A7CF0022 */  sh         $t7, 0x22($fp)
/* CB05C 800CA45C 8E0E0014 */  lw         $t6, 0x14($s0)
/* CB060 800CA460 51C00005 */  beql       $t6, $zero, .L800CA478
/* CB064 800CA464 87C20018 */   lh        $v0, 0x18($fp)
/* CB068 800CA468 A7D1001C */  sh         $s1, 0x1c($fp)
/* CB06C 800CA46C 10000013 */  b          .L800CA4BC
/* CB070 800CA470 A7D1001E */   sh        $s1, 0x1e($fp)
/* CB074 800CA474 87C20018 */  lh         $v0, 0x18($fp)
.L800CA478:
/* CB078 800CA478 3C18800E */  lui        $t8, %hi(D_800DAFA0)
/* CB07C 800CA47C 87C3001A */  lh         $v1, 0x1a($fp)
/* CB080 800CA480 0002C840 */  sll        $t9, $v0, 1
/* CB084 800CA484 0319C021 */  addu       $t8, $t8, $t9
/* CB088 800CA488 8718AFA0 */  lh         $t8, %lo(D_800DAFA0)($t8)
/* CB08C 800CA48C 0019C823 */  negu       $t9, $t9
/* CB090 800CA490 03030019 */  multu      $t8, $v1
/* CB094 800CA494 3C18800E */  lui        $t8, %hi(D_800DB09E)
/* CB098 800CA498 0319C021 */  addu       $t8, $t8, $t9
/* CB09C 800CA49C 00007812 */  mflo       $t7
/* CB0A0 800CA4A0 000F73C3 */  sra        $t6, $t7, 0xf
/* CB0A4 800CA4A4 A7CE001C */  sh         $t6, 0x1c($fp)
/* CB0A8 800CA4A8 8718B09E */  lh         $t8, %lo(D_800DB09E)($t8)
/* CB0AC 800CA4AC 03030019 */  multu      $t8, $v1
/* CB0B0 800CA4B0 00007812 */  mflo       $t7
/* CB0B4 800CA4B4 000F73C3 */  sra        $t6, $t7, 0xf
/* CB0B8 800CA4B8 A7CE001E */  sh         $t6, 0x1e($fp)
.L800CA4BC:
/* CB0BC 800CA4BC 8FD90000 */  lw         $t9, ($fp)
/* CB0C0 800CA4C0 532000B1 */  beql       $t9, $zero, .L800CA788
/* CB0C4 800CA4C4 8FB80060 */   lw        $t8, 0x60($sp)
/* CB0C8 800CA4C8 C604000C */  lwc1       $f4, 0xc($s0)
/* CB0CC 800CA4CC 24050007 */  addiu      $a1, $zero, 7
/* CB0D0 800CA4D0 E7A40074 */  swc1       $f4, 0x74($sp)
/* CB0D4 800CA4D4 8FC40000 */  lw         $a0, ($fp)
/* CB0D8 800CA4D8 8FA60074 */  lw         $a2, 0x74($sp)
/* CB0DC 800CA4DC 8C990008 */  lw         $t9, 8($a0)
/* CB0E0 800CA4E0 0320F809 */  jalr       $t9
/* CB0E4 800CA4E4 00000000 */   nop
/* CB0E8 800CA4E8 100000A7 */  b          .L800CA788
/* CB0EC 800CA4EC 8FB80060 */   lw        $t8, 0x60($sp)
/* CB0F0 800CA4F0 03C09825 */  or         $s3, $fp, $zero
/* CB0F4 800CA4F4 27B6009E */  addiu      $s6, $sp, 0x9e
/* CB0F8 800CA4F8 27B0008E */  addiu      $s0, $sp, 0x8e
/* CB0FC 800CA4FC 8FB50060 */  lw         $s5, 0x60($sp)
/* CB100 800CA500 8FA700B4 */  lw         $a3, 0xb4($sp)
/* CB104 800CA504 0C0327ED */  jal        func_800C9FB4
/* CB108 800CA508 8FA800A4 */   lw        $t0, 0xa4($sp)
/* CB10C 800CA50C AFA200A4 */  sw         $v0, 0xa4($sp)
/* CB110 800CA510 8FC40034 */  lw         $a0, 0x34($fp)
/* CB114 800CA514 8FC70030 */  lw         $a3, 0x30($fp)
/* CB118 800CA518 24110001 */  addiu      $s1, $zero, 1
/* CB11C 800CA51C 00E4082A */  slt        $at, $a3, $a0
/* CB120 800CA520 5420001A */  bnezl      $at, .L800CA58C
/* CB124 800CA524 87CE001C */   lh        $t6, 0x1c($fp)
/* CB128 800CA528 87C20018 */  lh         $v0, 0x18($fp)
/* CB12C 800CA52C 3C0F800E */  lui        $t7, %hi(D_800DAFA0)
/* CB130 800CA530 87C3001A */  lh         $v1, 0x1a($fp)
/* CB134 800CA534 0002C040 */  sll        $t8, $v0, 1
/* CB138 800CA538 01F87821 */  addu       $t7, $t7, $t8
/* CB13C 800CA53C 85EFAFA0 */  lh         $t7, %lo(D_800DAFA0)($t7)
/* CB140 800CA540 0018C023 */  negu       $t8, $t8
/* CB144 800CA544 01E30019 */  multu      $t7, $v1
/* CB148 800CA548 3C0F800E */  lui        $t7, %hi(D_800DB09E)
/* CB14C 800CA54C 01F87821 */  addu       $t7, $t7, $t8
/* CB150 800CA550 00007012 */  mflo       $t6
/* CB154 800CA554 000ECBC3 */  sra        $t9, $t6, 0xf
/* CB158 800CA558 A7D90028 */  sh         $t9, 0x28($fp)
/* CB15C 800CA55C 85EFB09E */  lh         $t7, %lo(D_800DB09E)($t7)
/* CB160 800CA560 87D80028 */  lh         $t8, 0x28($fp)
/* CB164 800CA564 AFC40030 */  sw         $a0, 0x30($fp)
/* CB168 800CA568 01E30019 */  multu      $t7, $v1
/* CB16C 800CA56C A7D8001C */  sh         $t8, 0x1c($fp)
/* CB170 800CA570 00007012 */  mflo       $t6
/* CB174 800CA574 000ECBC3 */  sra        $t9, $t6, 0xf
/* CB178 800CA578 A7D9002E */  sh         $t9, 0x2e($fp)
/* CB17C 800CA57C 87CF002E */  lh         $t7, 0x2e($fp)
/* CB180 800CA580 10000016 */  b          .L800CA5DC
/* CB184 800CA584 A7CF001E */   sh        $t7, 0x1e($fp)
/* CB188 800CA588 87CE001C */  lh         $t6, 0x1c($fp)
.L800CA58C:
/* CB18C 800CA58C 00E02025 */  or         $a0, $a3, $zero
/* CB190 800CA590 87C50026 */  lh         $a1, 0x26($fp)
/* CB194 800CA594 448E3000 */  mtc1       $t6, $f6
/* CB198 800CA598 97C60024 */  lhu        $a2, 0x24($fp)
/* CB19C 800CA59C 0C032893 */  jal        func_800CA24C
/* CB1A0 800CA5A0 46803320 */   cvt.s.w   $f12, $f6
/* CB1A4 800CA5A4 4600020D */  trunc.w.s  $f8, $f0
/* CB1A8 800CA5A8 87CF001E */  lh         $t7, 0x1e($fp)
/* CB1AC 800CA5AC 8FC40030 */  lw         $a0, 0x30($fp)
/* CB1B0 800CA5B0 87C5002C */  lh         $a1, 0x2c($fp)
/* CB1B4 800CA5B4 44184000 */  mfc1       $t8, $f8
/* CB1B8 800CA5B8 448F5000 */  mtc1       $t7, $f10
/* CB1BC 800CA5BC 97C6002A */  lhu        $a2, 0x2a($fp)
/* CB1C0 800CA5C0 A7D8001C */  sh         $t8, 0x1c($fp)
/* CB1C4 800CA5C4 0C032893 */  jal        func_800CA24C
/* CB1C8 800CA5C8 46805320 */   cvt.s.w   $f12, $f10
/* CB1CC 800CA5CC 4600010D */  trunc.w.s  $f4, $f0
/* CB1D0 800CA5D0 44192000 */  mfc1       $t9, $f4
/* CB1D4 800CA5D4 00000000 */  nop
/* CB1D8 800CA5D8 A7D9001E */  sh         $t9, 0x1e($fp)
.L800CA5DC:
/* CB1DC 800CA5DC 87D8001C */  lh         $t8, 0x1c($fp)
/* CB1E0 800CA5E0 57000003 */  bnezl      $t8, .L800CA5F0
/* CB1E4 800CA5E4 87CF001E */   lh        $t7, 0x1e($fp)
/* CB1E8 800CA5E8 A7D1001C */  sh         $s1, 0x1c($fp)
/* CB1EC 800CA5EC 87CF001E */  lh         $t7, 0x1e($fp)
.L800CA5F0:
/* CB1F0 800CA5F0 55E00003 */  bnezl      $t7, .L800CA600
/* CB1F4 800CA5F4 8FC3003C */   lw        $v1, 0x3c($fp)
/* CB1F8 800CA5F8 A7D1001E */  sh         $s1, 0x1e($fp)
/* CB1FC 800CA5FC 8FC3003C */  lw         $v1, 0x3c($fp)
.L800CA600:
/* CB200 800CA600 2401000C */  addiu      $at, $zero, 0xc
/* CB204 800CA604 84640008 */  lh         $a0, 8($v1)
/* CB208 800CA608 54810005 */  bnel       $a0, $at, .L800CA620
/* CB20C 800CA60C 2401000B */   addiu     $at, $zero, 0xb
/* CB210 800CA610 8C6E000C */  lw         $t6, 0xc($v1)
/* CB214 800CA614 A7CE0018 */  sh         $t6, 0x18($fp)
/* CB218 800CA618 84640008 */  lh         $a0, 8($v1)
/* CB21C 800CA61C 2401000B */  addiu      $at, $zero, 0xb
.L800CA620:
/* CB220 800CA620 5481000B */  bnel       $a0, $at, .L800CA650
/* CB224 800CA624 24010010 */   addiu     $at, $zero, 0x10
/* CB228 800CA628 AFC00030 */  sw         $zero, 0x30($fp)
/* CB22C 800CA62C 8C62000C */  lw         $v0, 0xc($v1)
/* CB230 800CA630 00420019 */  multu      $v0, $v0
/* CB234 800CA634 00001012 */  mflo       $v0
/* CB238 800CA638 0002CBC3 */  sra        $t9, $v0, 0xf
/* CB23C 800CA63C A7D9001A */  sh         $t9, 0x1a($fp)
/* CB240 800CA640 8C780010 */  lw         $t8, 0x10($v1)
/* CB244 800CA644 AFD80034 */  sw         $t8, 0x34($fp)
/* CB248 800CA648 84640008 */  lh         $a0, 8($v1)
/* CB24C 800CA64C 24010010 */  addiu      $at, $zero, 0x10
.L800CA650:
/* CB250 800CA650 1481000E */  bne        $a0, $at, .L800CA68C
/* CB254 800CA654 00000000 */   nop
/* CB258 800CA658 8C6F000C */  lw         $t7, 0xc($v1)
/* CB25C 800CA65C 3C19800E */  lui        $t9, %hi(D_800DAFA0)
/* CB260 800CA660 000F7040 */  sll        $t6, $t7, 1
/* CB264 800CA664 032EC821 */  addu       $t9, $t9, $t6
/* CB268 800CA668 8739AFA0 */  lh         $t9, %lo(D_800DAFA0)($t9)
/* CB26C 800CA66C A7D90020 */  sh         $t9, 0x20($fp)
/* CB270 800CA670 8C78000C */  lw         $t8, 0xc($v1)
/* CB274 800CA674 3C19800E */  lui        $t9, %hi(D_800DB09E)
/* CB278 800CA678 00187840 */  sll        $t7, $t8, 1
/* CB27C 800CA67C 000F7023 */  negu       $t6, $t7
/* CB280 800CA680 032EC821 */  addu       $t9, $t9, $t6
/* CB284 800CA684 8739B09E */  lh         $t9, %lo(D_800DB09E)($t9)
/* CB288 800CA688 A7D90022 */  sh         $t9, 0x22($fp)
.L800CA68C:
/* CB28C 800CA68C 1000003D */  b          .L800CA784
/* CB290 800CA690 AFD10038 */   sw        $s1, 0x38($fp)
/* CB294 800CA694 8478000A */  lh         $t8, 0xa($v1)
/* CB298 800CA698 00608025 */  or         $s0, $v1, $zero
/* CB29C 800CA69C 53000007 */  beql       $t8, $zero, .L800CA6BC
/* CB2A0 800CA6A0 8FD90008 */   lw        $t9, 8($fp)
/* CB2A4 800CA6A4 8FD90008 */  lw         $t9, 8($fp)
/* CB2A8 800CA6A8 03C02025 */  or         $a0, $fp, $zero
/* CB2AC 800CA6AC 24050008 */  addiu      $a1, $zero, 8
/* CB2B0 800CA6B0 0320F809 */  jalr       $t9
/* CB2B4 800CA6B4 00003025 */   or        $a2, $zero, $zero
/* CB2B8 800CA6B8 8FD90008 */  lw         $t9, 8($fp)
.L800CA6BC:
/* CB2BC 800CA6BC 03C02025 */  or         $a0, $fp, $zero
/* CB2C0 800CA6C0 24050005 */  addiu      $a1, $zero, 5
/* CB2C4 800CA6C4 0320F809 */  jalr       $t9
/* CB2C8 800CA6C8 8E06000C */   lw        $a2, 0xc($s0)
/* CB2CC 800CA6CC 8FD90008 */  lw         $t9, 8($fp)
/* CB2D0 800CA6D0 03C02025 */  or         $a0, $fp, $zero
/* CB2D4 800CA6D4 24050009 */  addiu      $a1, $zero, 9
/* CB2D8 800CA6D8 0320F809 */  jalr       $t9
/* CB2DC 800CA6DC 00003025 */   or        $a2, $zero, $zero
/* CB2E0 800CA6E0 10000029 */  b          .L800CA788
/* CB2E4 800CA6E4 8FB80060 */   lw        $t8, 0x60($sp)
/* CB2E8 800CA6E8 03C09825 */  or         $s3, $fp, $zero
/* CB2EC 800CA6EC 27B6009E */  addiu      $s6, $sp, 0x9e
/* CB2F0 800CA6F0 27B0008E */  addiu      $s0, $sp, 0x8e
/* CB2F4 800CA6F4 8FB50060 */  lw         $s5, 0x60($sp)
/* CB2F8 800CA6F8 8FA700B4 */  lw         $a3, 0xb4($sp)
/* CB2FC 800CA6FC 0C0327ED */  jal        func_800C9FB4
/* CB300 800CA700 8FA800A4 */   lw        $t0, 0xa4($sp)
/* CB304 800CA704 AFA200A4 */  sw         $v0, 0xa4($sp)
/* CB308 800CA708 8FD90008 */  lw         $t9, 8($fp)
/* CB30C 800CA70C 24110001 */  addiu      $s1, $zero, 1
/* CB310 800CA710 03C02025 */  or         $a0, $fp, $zero
/* CB314 800CA714 24050004 */  addiu      $a1, $zero, 4
/* CB318 800CA718 0320F809 */  jalr       $t9
/* CB31C 800CA71C 00003025 */   or        $a2, $zero, $zero
/* CB320 800CA720 10000019 */  b          .L800CA788
/* CB324 800CA724 8FB80060 */   lw        $t8, 0x60($sp)
/* CB328 800CA728 8C6F000C */  lw         $t7, 0xc($v1)
/* CB32C 800CA72C 3C04800E */  lui        $a0, %hi(D_800DA040)
/* CB330 800CA730 8C84A040 */  lw         $a0, %lo(D_800DA040)($a0)
/* CB334 800CA734 ADE000D8 */  sw         $zero, 0xd8($t7)
/* CB338 800CA738 0C031FC8 */  jal        func_800C7F20
/* CB33C 800CA73C 8C65000C */   lw        $a1, 0xc($v1)
/* CB340 800CA740 10000011 */  b          .L800CA788
/* CB344 800CA744 8FB80060 */   lw        $t8, 0x60($sp)
.L800CA748:
/* CB348 800CA748 03C09825 */  or         $s3, $fp, $zero
/* CB34C 800CA74C 27B6009E */  addiu      $s6, $sp, 0x9e
/* CB350 800CA750 27B0008E */  addiu      $s0, $sp, 0x8e
/* CB354 800CA754 8FB50060 */  lw         $s5, 0x60($sp)
/* CB358 800CA758 8FA700B4 */  lw         $a3, 0xb4($sp)
/* CB35C 800CA75C 0C0327ED */  jal        func_800C9FB4
/* CB360 800CA760 8FA800A4 */   lw        $t0, 0xa4($sp)
/* CB364 800CA764 AFA200A4 */  sw         $v0, 0xa4($sp)
/* CB368 800CA768 8FD90008 */  lw         $t9, 8($fp)
/* CB36C 800CA76C 8FC3003C */  lw         $v1, 0x3c($fp)
/* CB370 800CA770 24110001 */  addiu      $s1, $zero, 1
/* CB374 800CA774 03C02025 */  or         $a0, $fp, $zero
/* CB378 800CA778 84650008 */  lh         $a1, 8($v1)
/* CB37C 800CA77C 0320F809 */  jalr       $t9
/* CB380 800CA780 8C66000C */   lw        $a2, 0xc($v1)
.L800CA784:
/* CB384 800CA784 8FB80060 */  lw         $t8, 0x60($sp)
.L800CA788:
/* CB388 800CA788 87AE008E */  lh         $t6, 0x8e($sp)
/* CB38C 800CA78C 00187840 */  sll        $t7, $t8, 1
/* CB390 800CA790 01CFC821 */  addu       $t9, $t6, $t7
/* CB394 800CA794 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* CB398 800CA798 A7B9008E */  sh         $t9, 0x8e($sp)
/* CB39C 800CA79C 01D87823 */  subu       $t7, $t6, $t8
/* CB3A0 800CA7A0 AFAF00B0 */  sw         $t7, 0xb0($sp)
/* CB3A4 800CA7A4 8FC4003C */  lw         $a0, 0x3c($fp)
/* CB3A8 800CA7A8 8C990000 */  lw         $t9, ($a0)
/* CB3AC 800CA7AC 17200002 */  bnez       $t9, .L800CA7B8
/* CB3B0 800CA7B0 AFD9003C */   sw        $t9, 0x3c($fp)
/* CB3B4 800CA7B4 AFC00040 */  sw         $zero, 0x40($fp)
.L800CA7B8:
/* CB3B8 800CA7B8 0C031FEE */  jal        func_800C7FB8
/* CB3BC 800CA7BC 00000000 */   nop
/* CB3C0 800CA7C0 8FB800A0 */  lw         $t8, 0xa0($sp)
/* CB3C4 800CA7C4 8F0F003C */  lw         $t7, 0x3c($t8)
/* CB3C8 800CA7C8 55E0FEE8 */  bnezl      $t7, .L800CA36C
/* CB3CC 800CA7CC 8FC3003C */   lw        $v1, 0x3c($fp)
.L800CA7D0:
/* CB3D0 800CA7D0 03C09825 */  or         $s3, $fp, $zero
.L800CA7D4:
/* CB3D4 800CA7D4 27B6009E */  addiu      $s6, $sp, 0x9e
/* CB3D8 800CA7D8 27B0008E */  addiu      $s0, $sp, 0x8e
/* CB3DC 800CA7DC 8FB500B0 */  lw         $s5, 0xb0($sp)
/* CB3E0 800CA7E0 8FA700B4 */  lw         $a3, 0xb4($sp)
/* CB3E4 800CA7E4 0C0327ED */  jal        func_800C9FB4
/* CB3E8 800CA7E8 8FA800A4 */   lw        $t0, 0xa4($sp)
/* CB3EC 800CA7EC AFA200A4 */  sw         $v0, 0xa4($sp)
/* CB3F0 800CA7F0 8FD90030 */  lw         $t9, 0x30($fp)
/* CB3F4 800CA7F4 8FC40034 */  lw         $a0, 0x34($fp)
/* CB3F8 800CA7F8 0099082A */  slt        $at, $a0, $t9
/* CB3FC 800CA7FC 50200003 */  beql       $at, $zero, .L800CA80C
/* CB400 800CA800 8FBF0054 */   lw        $ra, 0x54($sp)
/* CB404 800CA804 AFC40030 */  sw         $a0, 0x30($fp)
/* CB408 800CA808 8FBF0054 */  lw         $ra, 0x54($sp)
.L800CA80C:
/* CB40C 800CA80C 8FA200A4 */  lw         $v0, 0xa4($sp)
/* CB410 800CA810 D7B40020 */  ldc1       $f20, 0x20($sp)
/* CB414 800CA814 D7B60028 */  ldc1       $f22, 0x28($sp)
/* CB418 800CA818 8FB00030 */  lw         $s0, 0x30($sp)
/* CB41C 800CA81C 8FB10034 */  lw         $s1, 0x34($sp)
/* CB420 800CA820 8FB20038 */  lw         $s2, 0x38($sp)
/* CB424 800CA824 8FB3003C */  lw         $s3, 0x3c($sp)
/* CB428 800CA828 8FB40040 */  lw         $s4, 0x40($sp)
/* CB42C 800CA82C 8FB50044 */  lw         $s5, 0x44($sp)
/* CB430 800CA830 8FB60048 */  lw         $s6, 0x48($sp)
/* CB434 800CA834 8FB7004C */  lw         $s7, 0x4c($sp)
/* CB438 800CA838 8FBE0050 */  lw         $fp, 0x50($sp)
/* CB43C 800CA83C 03E00008 */  jr         $ra
/* CB440 800CA840 27BD00A8 */   addiu     $sp, $sp, 0xa8
/* CB444 800CA844 00000000 */  nop
/* CB448 800CA848 00000000 */  nop
/* CB44C 800CA84C 00000000 */  nop
