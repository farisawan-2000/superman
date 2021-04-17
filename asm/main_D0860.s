.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CFC60
/* D0860 800CFC60 E7AC0000 */  swc1       $f12, ($sp)
/* D0864 800CFC64 8FA20000 */  lw         $v0, ($sp)
/* D0868 800CFC68 C7A60000 */  lwc1       $f6, ($sp)
/* D086C 800CFC6C C7AA0000 */  lwc1       $f10, ($sp)
/* D0870 800CFC70 00027583 */  sra        $t6, $v0, 0x16
/* D0874 800CFC74 31CF01FF */  andi       $t7, $t6, 0x1ff
/* D0878 800CFC78 29E10136 */  slti       $at, $t7, 0x136
/* D087C 800CFC7C 50200049 */  beql       $at, $zero, .L800CFDA4
/* D0880 800CFC80 460A5032 */   c.eq.s    $f10, $f10
/* D0884 800CFC84 44802000 */  mtc1       $zero, $f4
/* D0888 800CFC88 3C013FE0 */  lui        $at, 0x3fe0
/* D088C 800CFC8C 44819800 */  mtc1       $at, $f19
/* D0890 800CFC90 4606203C */  c.lt.s     $f4, $f6
/* D0894 800CFC94 C7A00000 */  lwc1       $f0, ($sp)
/* D0898 800CFC98 3C01800E */  lui        $at, 0x800e
/* D089C 800CFC9C 45020004 */  bc1fl      .L800CFCB0
/* D08A0 800CFCA0 46000007 */   neg.s     $f0, $f0
/* D08A4 800CFCA4 10000002 */  b          .L800CFCB0
/* D08A8 800CFCA8 46003006 */   mov.s     $f0, $f6
/* D08AC 800CFCAC 46000007 */  neg.s      $f0, $f0
.L800CFCB0:
/* D08B0 800CFCB0 D428FE78 */  ldc1       $f8, -0x188($at)
/* D08B4 800CFCB4 46000321 */  cvt.d.s    $f12, $f0
/* D08B8 800CFCB8 44809000 */  mtc1       $zero, $f18
/* D08BC 800CFCBC 46286282 */  mul.d      $f10, $f12, $f8
/* D08C0 800CFCC0 44802800 */  mtc1       $zero, $f5
/* D08C4 800CFCC4 44802000 */  mtc1       $zero, $f4
/* D08C8 800CFCC8 46325380 */  add.d      $f14, $f10, $f18
/* D08CC 800CFCCC 462E203E */  c.le.d     $f4, $f14
/* D08D0 800CFCD0 00000000 */  nop
/* D08D4 800CFCD4 45020007 */  bc1fl      .L800CFCF4
/* D08D8 800CFCD8 46327281 */   sub.d     $f10, $f14, $f18
/* D08DC 800CFCDC 46327180 */  add.d      $f6, $f14, $f18
/* D08E0 800CFCE0 4620320D */  trunc.w.d  $f8, $f6
/* D08E4 800CFCE4 44024000 */  mfc1       $v0, $f8
/* D08E8 800CFCE8 10000006 */  b          .L800CFD04
/* D08EC 800CFCEC 44823000 */   mtc1      $v0, $f6
/* D08F0 800CFCF0 46327281 */  sub.d      $f10, $f14, $f18
.L800CFCF4:
/* D08F4 800CFCF4 4620510D */  trunc.w.d  $f4, $f10
/* D08F8 800CFCF8 44022000 */  mfc1       $v0, $f4
/* D08FC 800CFCFC 00000000 */  nop
/* D0900 800CFD00 44823000 */  mtc1       $v0, $f6
.L800CFD04:
/* D0904 800CFD04 3C01800E */  lui        $at, %hi(D_800DFE80)
/* D0908 800CFD08 D42AFE80 */  ldc1       $f10, %lo(D_800DFE80)($at)
/* D090C 800CFD0C 46803221 */  cvt.d.w    $f8, $f6
/* D0910 800CFD10 3C01800E */  lui        $at, %hi(D_800DFE88)
/* D0914 800CFD14 D426FE88 */  ldc1       $f6, %lo(D_800DFE88)($at)
/* D0918 800CFD18 3C03800E */  lui        $v1, %hi(D_800DFE50)
/* D091C 800CFD1C 2463FE50 */  addiu      $v1, $v1, %lo(D_800DFE50)
/* D0920 800CFD20 46324001 */  sub.d      $f0, $f8, $f18
/* D0924 800CFD24 30480001 */  andi       $t0, $v0, 1
/* D0928 800CFD28 462A0102 */  mul.d      $f4, $f0, $f10
/* D092C 800CFD2C D46A0020 */  ldc1       $f10, 0x20($v1)
/* D0930 800CFD30 46260202 */  mul.d      $f8, $f0, $f6
/* D0934 800CFD34 D4660018 */  ldc1       $f6, 0x18($v1)
/* D0938 800CFD38 46246081 */  sub.d      $f2, $f12, $f4
/* D093C 800CFD3C 46281081 */  sub.d      $f2, $f2, $f8
/* D0940 800CFD40 46221382 */  mul.d      $f14, $f2, $f2
/* D0944 800CFD44 00000000 */  nop
/* D0948 800CFD48 462E5102 */  mul.d      $f4, $f10, $f14
/* D094C 800CFD4C 46262200 */  add.d      $f8, $f4, $f6
/* D0950 800CFD50 D4640010 */  ldc1       $f4, 0x10($v1)
/* D0954 800CFD54 462E4282 */  mul.d      $f10, $f8, $f14
/* D0958 800CFD58 46245180 */  add.d      $f6, $f10, $f4
/* D095C 800CFD5C D46A0008 */  ldc1       $f10, 8($v1)
/* D0960 800CFD60 462E3202 */  mul.d      $f8, $f6, $f14
/* D0964 800CFD64 15000007 */  bnez       $t0, .L800CFD84
/* D0968 800CFD68 46285400 */   add.d     $f16, $f10, $f8
/* D096C 800CFD6C 462E1102 */  mul.d      $f4, $f2, $f14
/* D0970 800CFD70 00000000 */  nop
/* D0974 800CFD74 46302182 */  mul.d      $f6, $f4, $f16
/* D0978 800CFD78 46223280 */  add.d      $f10, $f6, $f2
/* D097C 800CFD7C 03E00008 */  jr         $ra
/* D0980 800CFD80 46205020 */   cvt.s.d   $f0, $f10
.L800CFD84:
/* D0984 800CFD84 462E1202 */  mul.d      $f8, $f2, $f14
/* D0988 800CFD88 00000000 */  nop
/* D098C 800CFD8C 46304102 */  mul.d      $f4, $f8, $f16
/* D0990 800CFD90 46222180 */  add.d      $f6, $f4, $f2
/* D0994 800CFD94 46203020 */  cvt.s.d    $f0, $f6
/* D0998 800CFD98 03E00008 */  jr         $ra
/* D099C 800CFD9C 46000007 */   neg.s     $f0, $f0
/* D09A0 800CFDA0 460A5032 */  c.eq.s     $f10, $f10
.L800CFDA4:
/* D09A4 800CFDA4 3C01800E */  lui        $at, 0x800e
/* D09A8 800CFDA8 45010004 */  bc1t       .L800CFDBC
/* D09AC 800CFDAC 00000000 */   nop
/* D09B0 800CFDB0 3C01800E */  lui        $at, %hi(D_800DFEA0)
/* D09B4 800CFDB4 03E00008 */  jr         $ra
/* D09B8 800CFDB8 C420FEA0 */   lwc1      $f0, %lo(D_800DFEA0)($at)
.L800CFDBC:
/* D09BC 800CFDBC C420FE90 */  lwc1       $f0, -0x170($at)
/* D09C0 800CFDC0 03E00008 */  jr         $ra
/* D09C4 800CFDC4 00000000 */   nop
/* D09C8 800CFDC8 00000000 */  nop
/* D09CC 800CFDCC 00000000 */  nop
