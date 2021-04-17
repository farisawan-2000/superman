.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B0880
/* B1480 800B0880 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B1484 800B0884 E7AC0040 */  swc1       $f12, 0x40($sp)
/* B1488 800B0888 27AE0040 */  addiu      $t6, $sp, 0x40
/* B148C 800B088C 8DCF0000 */  lw         $t7, ($t6)
/* B1490 800B0890 AFAF0004 */  sw         $t7, 4($sp)
/* B1494 800B0894 8FB80004 */  lw         $t8, 4($sp)
/* B1498 800B0898 0018CD83 */  sra        $t9, $t8, 0x16
/* B149C 800B089C AFB90000 */  sw         $t9, ($sp)
/* B14A0 800B08A0 8FA80000 */  lw         $t0, ($sp)
/* B14A4 800B08A4 310901FF */  andi       $t1, $t0, 0x1ff
/* B14A8 800B08A8 AFA90000 */  sw         $t1, ($sp)
/* B14AC 800B08AC 8FAA0000 */  lw         $t2, ($sp)
/* B14B0 800B08B0 29410136 */  slti       $at, $t2, 0x136
/* B14B4 800B08B4 10200070 */  beqz       $at, .L800B0A78
/* B14B8 800B08B8 00000000 */   nop
/* B14BC 800B08BC C7A40040 */  lwc1       $f4, 0x40($sp)
/* B14C0 800B08C0 44803000 */  mtc1       $zero, $f6
/* B14C4 800B08C4 00000000 */  nop
/* B14C8 800B08C8 4604303C */  c.lt.s     $f6, $f4
/* B14CC 800B08CC 00000000 */  nop
/* B14D0 800B08D0 45000003 */  bc1f       .L800B08E0
/* B14D4 800B08D4 00000000 */   nop
/* B14D8 800B08D8 10000004 */  b          .L800B08EC
/* B14DC 800B08DC E7A4003C */   swc1      $f4, 0x3c($sp)
.L800B08E0:
/* B14E0 800B08E0 C7A80040 */  lwc1       $f8, 0x40($sp)
/* B14E4 800B08E4 46004287 */  neg.s      $f10, $f8
/* B14E8 800B08E8 E7AA003C */  swc1       $f10, 0x3c($sp)
.L800B08EC:
/* B14EC 800B08EC C7B0003C */  lwc1       $f16, 0x3c($sp)
/* B14F0 800B08F0 460084A1 */  cvt.d.s    $f18, $f16
/* B14F4 800B08F4 F7B20030 */  sdc1       $f18, 0x30($sp)
/* B14F8 800B08F8 3C01800D */  lui        $at, %hi(D_800D3668)
/* B14FC 800B08FC D4243668 */  ldc1       $f4, %lo(D_800D3668)($at)
/* B1500 800B0900 D7A60030 */  ldc1       $f6, 0x30($sp)
/* B1504 800B0904 3C013FE0 */  lui        $at, 0x3fe0
/* B1508 800B0908 44815800 */  mtc1       $at, $f11
/* B150C 800B090C 46243202 */  mul.d      $f8, $f6, $f4
/* B1510 800B0910 44805000 */  mtc1       $zero, $f10
/* B1514 800B0914 00000000 */  nop
/* B1518 800B0918 462A4400 */  add.d      $f16, $f8, $f10
/* B151C 800B091C F7B00018 */  sdc1       $f16, 0x18($sp)
/* B1520 800B0920 D7B20018 */  ldc1       $f18, 0x18($sp)
/* B1524 800B0924 44803800 */  mtc1       $zero, $f7
/* B1528 800B0928 44803000 */  mtc1       $zero, $f6
/* B152C 800B092C 00000000 */  nop
/* B1530 800B0930 4632303E */  c.le.d     $f6, $f18
/* B1534 800B0934 00000000 */  nop
/* B1538 800B0938 45000009 */  bc1f       .L800B0960
/* B153C 800B093C 00000000 */   nop
/* B1540 800B0940 3C013FE0 */  lui        $at, 0x3fe0
/* B1544 800B0944 44812800 */  mtc1       $at, $f5
/* B1548 800B0948 44802000 */  mtc1       $zero, $f4
/* B154C 800B094C 00000000 */  nop
/* B1550 800B0950 46249200 */  add.d      $f8, $f18, $f4
/* B1554 800B0954 4620428D */  trunc.w.d  $f10, $f8
/* B1558 800B0958 10000009 */  b          .L800B0980
/* B155C 800B095C E7AA0014 */   swc1      $f10, 0x14($sp)
.L800B0960:
/* B1560 800B0960 3C013FE0 */  lui        $at, 0x3fe0
/* B1564 800B0964 44813800 */  mtc1       $at, $f7
/* B1568 800B0968 D7B00018 */  ldc1       $f16, 0x18($sp)
/* B156C 800B096C 44803000 */  mtc1       $zero, $f6
/* B1570 800B0970 00000000 */  nop
/* B1574 800B0974 46268481 */  sub.d      $f18, $f16, $f6
/* B1578 800B0978 4620910D */  trunc.w.d  $f4, $f18
/* B157C 800B097C E7A40014 */  swc1       $f4, 0x14($sp)
.L800B0980:
/* B1580 800B0980 8FAD0014 */  lw         $t5, 0x14($sp)
/* B1584 800B0984 448D4000 */  mtc1       $t5, $f8
/* B1588 800B0988 00000000 */  nop
/* B158C 800B098C 468042A1 */  cvt.d.w    $f10, $f8
/* B1590 800B0990 F7AA0018 */  sdc1       $f10, 0x18($sp)
/* B1594 800B0994 3C013FE0 */  lui        $at, 0x3fe0
/* B1598 800B0998 44813800 */  mtc1       $at, $f7
/* B159C 800B099C D7B00018 */  ldc1       $f16, 0x18($sp)
/* B15A0 800B09A0 44803000 */  mtc1       $zero, $f6
/* B15A4 800B09A4 00000000 */  nop
/* B15A8 800B09A8 46268481 */  sub.d      $f18, $f16, $f6
/* B15AC 800B09AC F7B20018 */  sdc1       $f18, 0x18($sp)
/* B15B0 800B09B0 3C01800D */  lui        $at, %hi(D_800D3670)
/* B15B4 800B09B4 D4283670 */  ldc1       $f8, %lo(D_800D3670)($at)
/* B15B8 800B09B8 D7A40018 */  ldc1       $f4, 0x18($sp)
/* B15BC 800B09BC D7B00030 */  ldc1       $f16, 0x30($sp)
/* B15C0 800B09C0 46282282 */  mul.d      $f10, $f4, $f8
/* B15C4 800B09C4 462A8181 */  sub.d      $f6, $f16, $f10
/* B15C8 800B09C8 F7A60030 */  sdc1       $f6, 0x30($sp)
/* B15CC 800B09CC 3C01800D */  lui        $at, %hi(D_800D3678)
/* B15D0 800B09D0 D4243678 */  ldc1       $f4, %lo(D_800D3678)($at)
/* B15D4 800B09D4 D7B20018 */  ldc1       $f18, 0x18($sp)
/* B15D8 800B09D8 D7B00030 */  ldc1       $f16, 0x30($sp)
/* B15DC 800B09DC 46249202 */  mul.d      $f8, $f18, $f4
/* B15E0 800B09E0 46288281 */  sub.d      $f10, $f16, $f8
/* B15E4 800B09E4 F7AA0030 */  sdc1       $f10, 0x30($sp)
/* B15E8 800B09E8 D7A60030 */  ldc1       $f6, 0x30($sp)
/* B15EC 800B09EC 46263482 */  mul.d      $f18, $f6, $f6
/* B15F0 800B09F0 F7B20028 */  sdc1       $f18, 0x28($sp)
/* B15F4 800B09F4 3C0E800D */  lui        $t6, %hi(D_800D3640)
/* B15F8 800B09F8 25CE3640 */  addiu      $t6, $t6, %lo(D_800D3640)
/* B15FC 800B09FC D5C40020 */  ldc1       $f4, 0x20($t6)
/* B1600 800B0A00 D7B00028 */  ldc1       $f16, 0x28($sp)
/* B1604 800B0A04 D5CA0018 */  ldc1       $f10, 0x18($t6)
/* B1608 800B0A08 46302202 */  mul.d      $f8, $f4, $f16
/* B160C 800B0A0C D5C40010 */  ldc1       $f4, 0x10($t6)
/* B1610 800B0A10 462A4180 */  add.d      $f6, $f8, $f10
/* B1614 800B0A14 46303482 */  mul.d      $f18, $f6, $f16
/* B1618 800B0A18 D5C60008 */  ldc1       $f6, 8($t6)
/* B161C 800B0A1C 46249200 */  add.d      $f8, $f18, $f4
/* B1620 800B0A20 46304282 */  mul.d      $f10, $f8, $f16
/* B1624 800B0A24 462A3480 */  add.d      $f18, $f6, $f10
/* B1628 800B0A28 F7B20020 */  sdc1       $f18, 0x20($sp)
/* B162C 800B0A2C D7A40030 */  ldc1       $f4, 0x30($sp)
/* B1630 800B0A30 D7A80028 */  ldc1       $f8, 0x28($sp)
/* B1634 800B0A34 D7A60020 */  ldc1       $f6, 0x20($sp)
/* B1638 800B0A38 46282402 */  mul.d      $f16, $f4, $f8
/* B163C 800B0A3C 00000000 */  nop
/* B1640 800B0A40 46268282 */  mul.d      $f10, $f16, $f6
/* B1644 800B0A44 46245480 */  add.d      $f18, $f10, $f4
/* B1648 800B0A48 F7B20008 */  sdc1       $f18, 8($sp)
/* B164C 800B0A4C 8FAF0014 */  lw         $t7, 0x14($sp)
/* B1650 800B0A50 31F80001 */  andi       $t8, $t7, 1
/* B1654 800B0A54 17000004 */  bnez       $t8, .L800B0A68
/* B1658 800B0A58 00000000 */   nop
/* B165C 800B0A5C D7A80008 */  ldc1       $f8, 8($sp)
/* B1660 800B0A60 10000012 */  b          .L800B0AAC
/* B1664 800B0A64 46204020 */   cvt.s.d   $f0, $f8
.L800B0A68:
/* B1668 800B0A68 D7B00008 */  ldc1       $f16, 8($sp)
/* B166C 800B0A6C 46208020 */  cvt.s.d    $f0, $f16
/* B1670 800B0A70 1000000E */  b          .L800B0AAC
/* B1674 800B0A74 46000007 */   neg.s     $f0, $f0
.L800B0A78:
/* B1678 800B0A78 C7A60040 */  lwc1       $f6, 0x40($sp)
/* B167C 800B0A7C 46063032 */  c.eq.s     $f6, $f6
/* B1680 800B0A80 00000000 */  nop
/* B1684 800B0A84 45010004 */  bc1t       .L800B0A98
/* B1688 800B0A88 00000000 */   nop
/* B168C 800B0A8C 3C01800D */  lui        $at, %hi(D_800D3B50)
/* B1690 800B0A90 10000006 */  b          .L800B0AAC
/* B1694 800B0A94 C4203B50 */   lwc1      $f0, %lo(D_800D3B50)($at)
.L800B0A98:
/* B1698 800B0A98 3C01800D */  lui        $at, %hi(D_800D3680)
/* B169C 800B0A9C 10000003 */  b          .L800B0AAC
/* B16A0 800B0AA0 C4203680 */   lwc1      $f0, %lo(D_800D3680)($at)
/* B16A4 800B0AA4 10000001 */  b          .L800B0AAC
/* B16A8 800B0AA8 00000000 */   nop
.L800B0AAC:
/* B16AC 800B0AAC 03E00008 */  jr         $ra
/* B16B0 800B0AB0 27BD0040 */   addiu     $sp, $sp, 0x40
/* B16B4 800B0AB4 00000000 */  nop
/* B16B8 800B0AB8 00000000 */  nop
/* B16BC 800B0ABC 00000000 */  nop
