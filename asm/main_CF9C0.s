.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CEDC0
/* CF9C0 800CEDC0 10C0001A */  beqz       $a2, .L800CEE2C
/* CF9C4 800CEDC4 00A03825 */   or        $a3, $a1, $zero
/* CF9C8 800CEDC8 10850018 */  beq        $a0, $a1, .L800CEE2C
/* CF9CC 800CEDCC 00A4082A */   slt       $at, $a1, $a0
/* CF9D0 800CEDD0 54200008 */  bnezl      $at, .L800CEDF4
/* CF9D4 800CEDD4 28C10010 */   slti      $at, $a2, 0x10
/* CF9D8 800CEDD8 00861020 */  add        $v0, $a0, $a2
/* CF9DC 800CEDDC 00A2082A */  slt        $at, $a1, $v0
/* CF9E0 800CEDE0 50200004 */  beql       $at, $zero, .L800CEDF4
/* CF9E4 800CEDE4 28C10010 */   slti      $at, $a2, 0x10
/* CF9E8 800CEDE8 1000005B */  b          .L800CEF58
/* CF9EC 800CEDEC 28C10010 */   slti      $at, $a2, 0x10
/* CF9F0 800CEDF0 28C10010 */  slti       $at, $a2, 0x10
.L800CEDF4:
/* CF9F4 800CEDF4 14200005 */  bnez       $at, .L800CEE0C
/* CF9F8 800CEDF8 00000000 */   nop
/* CF9FC 800CEDFC 30820003 */  andi       $v0, $a0, 3
/* CFA00 800CEE00 30A30003 */  andi       $v1, $a1, 3
/* CFA04 800CEE04 1043000B */  beq        $v0, $v1, .L800CEE34
/* CFA08 800CEE08 00000000 */   nop
.L800CEE0C:
/* CFA0C 800CEE0C 10C00007 */  beqz       $a2, .L800CEE2C
/* CFA10 800CEE10 00000000 */   nop
/* CFA14 800CEE14 00861821 */  addu       $v1, $a0, $a2
.L800CEE18:
/* CFA18 800CEE18 80820000 */  lb         $v0, ($a0)
/* CFA1C 800CEE1C 24840001 */  addiu      $a0, $a0, 1
/* CFA20 800CEE20 24A50001 */  addiu      $a1, $a1, 1
/* CFA24 800CEE24 1483FFFC */  bne        $a0, $v1, .L800CEE18
/* CFA28 800CEE28 A0A2FFFF */   sb        $v0, -1($a1)
.L800CEE2C:
/* CFA2C 800CEE2C 03E00008 */  jr         $ra
/* CFA30 800CEE30 00E01025 */   or        $v0, $a3, $zero
.L800CEE34:
/* CFA34 800CEE34 10400018 */  beqz       $v0, .L800CEE98
/* CFA38 800CEE38 24010001 */   addiu     $at, $zero, 1
/* CFA3C 800CEE3C 1041000F */  beq        $v0, $at, .L800CEE7C
/* CFA40 800CEE40 24010002 */   addiu     $at, $zero, 2
/* CFA44 800CEE44 50410008 */  beql       $v0, $at, .L800CEE68
/* CFA48 800CEE48 84820000 */   lh        $v0, ($a0)
/* CFA4C 800CEE4C 80820000 */  lb         $v0, ($a0)
/* CFA50 800CEE50 24840001 */  addiu      $a0, $a0, 1
/* CFA54 800CEE54 24A50001 */  addiu      $a1, $a1, 1
/* CFA58 800CEE58 24C6FFFF */  addiu      $a2, $a2, -1
/* CFA5C 800CEE5C 1000000E */  b          .L800CEE98
/* CFA60 800CEE60 A0A2FFFF */   sb        $v0, -1($a1)
/* CFA64 800CEE64 84820000 */  lh         $v0, ($a0)
.L800CEE68:
/* CFA68 800CEE68 24840002 */  addiu      $a0, $a0, 2
/* CFA6C 800CEE6C 24A50002 */  addiu      $a1, $a1, 2
/* CFA70 800CEE70 24C6FFFE */  addiu      $a2, $a2, -2
/* CFA74 800CEE74 10000008 */  b          .L800CEE98
/* CFA78 800CEE78 A4A2FFFE */   sh        $v0, -2($a1)
.L800CEE7C:
/* CFA7C 800CEE7C 80820000 */  lb         $v0, ($a0)
/* CFA80 800CEE80 84830001 */  lh         $v1, 1($a0)
/* CFA84 800CEE84 24840003 */  addiu      $a0, $a0, 3
/* CFA88 800CEE88 24A50003 */  addiu      $a1, $a1, 3
/* CFA8C 800CEE8C 24C6FFFD */  addiu      $a2, $a2, -3
/* CFA90 800CEE90 A0A2FFFD */  sb         $v0, -3($a1)
/* CFA94 800CEE94 A4A3FFFE */  sh         $v1, -2($a1)
.L800CEE98:
/* CFA98 800CEE98 28C10020 */  slti       $at, $a2, 0x20
/* CFA9C 800CEE9C 54200016 */  bnezl      $at, .L800CEEF8
/* CFAA0 800CEEA0 28C10010 */   slti      $at, $a2, 0x10
/* CFAA4 800CEEA4 8C820000 */  lw         $v0, ($a0)
/* CFAA8 800CEEA8 8C830004 */  lw         $v1, 4($a0)
/* CFAAC 800CEEAC 8C880008 */  lw         $t0, 8($a0)
/* CFAB0 800CEEB0 8C89000C */  lw         $t1, 0xc($a0)
/* CFAB4 800CEEB4 8C8A0010 */  lw         $t2, 0x10($a0)
/* CFAB8 800CEEB8 8C8B0014 */  lw         $t3, 0x14($a0)
/* CFABC 800CEEBC 8C8C0018 */  lw         $t4, 0x18($a0)
/* CFAC0 800CEEC0 8C8D001C */  lw         $t5, 0x1c($a0)
/* CFAC4 800CEEC4 24840020 */  addiu      $a0, $a0, 0x20
/* CFAC8 800CEEC8 24A50020 */  addiu      $a1, $a1, 0x20
/* CFACC 800CEECC 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* CFAD0 800CEED0 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* CFAD4 800CEED4 ACA3FFE4 */  sw         $v1, -0x1c($a1)
/* CFAD8 800CEED8 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* CFADC 800CEEDC ACA9FFEC */  sw         $t1, -0x14($a1)
/* CFAE0 800CEEE0 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* CFAE4 800CEEE4 ACABFFF4 */  sw         $t3, -0xc($a1)
/* CFAE8 800CEEE8 ACACFFF8 */  sw         $t4, -8($a1)
/* CFAEC 800CEEEC 1000FFEA */  b          .L800CEE98
/* CFAF0 800CEEF0 ACADFFFC */   sw        $t5, -4($a1)
.L800CEEF4:
/* CFAF4 800CEEF4 28C10010 */  slti       $at, $a2, 0x10
.L800CEEF8:
/* CFAF8 800CEEF8 5420000E */  bnezl      $at, .L800CEF34
/* CFAFC 800CEEFC 28C10004 */   slti      $at, $a2, 4
/* CFB00 800CEF00 8C820000 */  lw         $v0, ($a0)
/* CFB04 800CEF04 8C830004 */  lw         $v1, 4($a0)
/* CFB08 800CEF08 8C880008 */  lw         $t0, 8($a0)
/* CFB0C 800CEF0C 8C89000C */  lw         $t1, 0xc($a0)
/* CFB10 800CEF10 24840010 */  addiu      $a0, $a0, 0x10
/* CFB14 800CEF14 24A50010 */  addiu      $a1, $a1, 0x10
/* CFB18 800CEF18 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* CFB1C 800CEF1C ACA2FFF0 */  sw         $v0, -0x10($a1)
/* CFB20 800CEF20 ACA3FFF4 */  sw         $v1, -0xc($a1)
/* CFB24 800CEF24 ACA8FFF8 */  sw         $t0, -8($a1)
/* CFB28 800CEF28 1000FFF2 */  b          .L800CEEF4
/* CFB2C 800CEF2C ACA9FFFC */   sw        $t1, -4($a1)
.L800CEF30:
/* CFB30 800CEF30 28C10004 */  slti       $at, $a2, 4
.L800CEF34:
/* CFB34 800CEF34 1420FFB5 */  bnez       $at, .L800CEE0C
/* CFB38 800CEF38 00000000 */   nop
/* CFB3C 800CEF3C 8C820000 */  lw         $v0, ($a0)
/* CFB40 800CEF40 24840004 */  addiu      $a0, $a0, 4
/* CFB44 800CEF44 24A50004 */  addiu      $a1, $a1, 4
/* CFB48 800CEF48 24C6FFFC */  addiu      $a2, $a2, -4
/* CFB4C 800CEF4C 1000FFF8 */  b          .L800CEF30
/* CFB50 800CEF50 ACA2FFFC */   sw        $v0, -4($a1)
/* CFB54 800CEF54 28C10010 */  slti       $at, $a2, 0x10
.L800CEF58:
/* CFB58 800CEF58 00862020 */  add        $a0, $a0, $a2
/* CFB5C 800CEF5C 14200005 */  bnez       $at, .L800CEF74
/* CFB60 800CEF60 00A62820 */   add       $a1, $a1, $a2
/* CFB64 800CEF64 30820003 */  andi       $v0, $a0, 3
/* CFB68 800CEF68 30A30003 */  andi       $v1, $a1, 3
/* CFB6C 800CEF6C 1043000D */  beq        $v0, $v1, .L800CEFA4
/* CFB70 800CEF70 00000000 */   nop
.L800CEF74:
/* CFB74 800CEF74 10C0FFAD */  beqz       $a2, .L800CEE2C
/* CFB78 800CEF78 00000000 */   nop
/* CFB7C 800CEF7C 2484FFFF */  addiu      $a0, $a0, -1
/* CFB80 800CEF80 24A5FFFF */  addiu      $a1, $a1, -1
/* CFB84 800CEF84 00861823 */  subu       $v1, $a0, $a2
.L800CEF88:
/* CFB88 800CEF88 80820000 */  lb         $v0, ($a0)
/* CFB8C 800CEF8C 2484FFFF */  addiu      $a0, $a0, -1
/* CFB90 800CEF90 24A5FFFF */  addiu      $a1, $a1, -1
/* CFB94 800CEF94 1483FFFC */  bne        $a0, $v1, .L800CEF88
/* CFB98 800CEF98 A0A20001 */   sb        $v0, 1($a1)
/* CFB9C 800CEF9C 03E00008 */  jr         $ra
/* CFBA0 800CEFA0 00E01025 */   or        $v0, $a3, $zero
.L800CEFA4:
/* CFBA4 800CEFA4 10400018 */  beqz       $v0, .L800CF008
/* CFBA8 800CEFA8 24010003 */   addiu     $at, $zero, 3
/* CFBAC 800CEFAC 1041000F */  beq        $v0, $at, .L800CEFEC
/* CFBB0 800CEFB0 24010002 */   addiu     $at, $zero, 2
/* CFBB4 800CEFB4 50410008 */  beql       $v0, $at, .L800CEFD8
/* CFBB8 800CEFB8 8482FFFE */   lh        $v0, -2($a0)
/* CFBBC 800CEFBC 8082FFFF */  lb         $v0, -1($a0)
/* CFBC0 800CEFC0 2484FFFF */  addiu      $a0, $a0, -1
/* CFBC4 800CEFC4 24A5FFFF */  addiu      $a1, $a1, -1
/* CFBC8 800CEFC8 24C6FFFF */  addiu      $a2, $a2, -1
/* CFBCC 800CEFCC 1000000E */  b          .L800CF008
/* CFBD0 800CEFD0 A0A20000 */   sb        $v0, ($a1)
/* CFBD4 800CEFD4 8482FFFE */  lh         $v0, -2($a0)
.L800CEFD8:
/* CFBD8 800CEFD8 2484FFFE */  addiu      $a0, $a0, -2
/* CFBDC 800CEFDC 24A5FFFE */  addiu      $a1, $a1, -2
/* CFBE0 800CEFE0 24C6FFFE */  addiu      $a2, $a2, -2
/* CFBE4 800CEFE4 10000008 */  b          .L800CF008
/* CFBE8 800CEFE8 A4A20000 */   sh        $v0, ($a1)
.L800CEFEC:
/* CFBEC 800CEFEC 8082FFFF */  lb         $v0, -1($a0)
/* CFBF0 800CEFF0 8483FFFD */  lh         $v1, -3($a0)
/* CFBF4 800CEFF4 2484FFFD */  addiu      $a0, $a0, -3
/* CFBF8 800CEFF8 24A5FFFD */  addiu      $a1, $a1, -3
/* CFBFC 800CEFFC 24C6FFFD */  addiu      $a2, $a2, -3
/* CFC00 800CF000 A0A20002 */  sb         $v0, 2($a1)
/* CFC04 800CF004 A4A30000 */  sh         $v1, ($a1)
.L800CF008:
/* CFC08 800CF008 28C10020 */  slti       $at, $a2, 0x20
/* CFC0C 800CF00C 54200016 */  bnezl      $at, .L800CF068
/* CFC10 800CF010 28C10010 */   slti      $at, $a2, 0x10
/* CFC14 800CF014 8C82FFFC */  lw         $v0, -4($a0)
/* CFC18 800CF018 8C83FFF8 */  lw         $v1, -8($a0)
/* CFC1C 800CF01C 8C88FFF4 */  lw         $t0, -0xc($a0)
/* CFC20 800CF020 8C89FFF0 */  lw         $t1, -0x10($a0)
/* CFC24 800CF024 8C8AFFEC */  lw         $t2, -0x14($a0)
/* CFC28 800CF028 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* CFC2C 800CF02C 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* CFC30 800CF030 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* CFC34 800CF034 2484FFE0 */  addiu      $a0, $a0, -0x20
/* CFC38 800CF038 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* CFC3C 800CF03C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* CFC40 800CF040 ACA2001C */  sw         $v0, 0x1c($a1)
/* CFC44 800CF044 ACA30018 */  sw         $v1, 0x18($a1)
/* CFC48 800CF048 ACA80014 */  sw         $t0, 0x14($a1)
/* CFC4C 800CF04C ACA90010 */  sw         $t1, 0x10($a1)
/* CFC50 800CF050 ACAA000C */  sw         $t2, 0xc($a1)
/* CFC54 800CF054 ACAB0008 */  sw         $t3, 8($a1)
/* CFC58 800CF058 ACAC0004 */  sw         $t4, 4($a1)
/* CFC5C 800CF05C 1000FFEA */  b          .L800CF008
/* CFC60 800CF060 ACAD0000 */   sw        $t5, ($a1)
.L800CF064:
/* CFC64 800CF064 28C10010 */  slti       $at, $a2, 0x10
.L800CF068:
/* CFC68 800CF068 5420000E */  bnezl      $at, .L800CF0A4
/* CFC6C 800CF06C 28C10004 */   slti      $at, $a2, 4
/* CFC70 800CF070 8C82FFFC */  lw         $v0, -4($a0)
/* CFC74 800CF074 8C83FFF8 */  lw         $v1, -8($a0)
/* CFC78 800CF078 8C88FFF4 */  lw         $t0, -0xc($a0)
/* CFC7C 800CF07C 8C89FFF0 */  lw         $t1, -0x10($a0)
/* CFC80 800CF080 2484FFF0 */  addiu      $a0, $a0, -0x10
/* CFC84 800CF084 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* CFC88 800CF088 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* CFC8C 800CF08C ACA2000C */  sw         $v0, 0xc($a1)
/* CFC90 800CF090 ACA30008 */  sw         $v1, 8($a1)
/* CFC94 800CF094 ACA80004 */  sw         $t0, 4($a1)
/* CFC98 800CF098 1000FFF2 */  b          .L800CF064
/* CFC9C 800CF09C ACA90000 */   sw        $t1, ($a1)
.L800CF0A0:
/* CFCA0 800CF0A0 28C10004 */  slti       $at, $a2, 4
.L800CF0A4:
/* CFCA4 800CF0A4 1420FFB3 */  bnez       $at, .L800CEF74
/* CFCA8 800CF0A8 00000000 */   nop
/* CFCAC 800CF0AC 8C82FFFC */  lw         $v0, -4($a0)
/* CFCB0 800CF0B0 2484FFFC */  addiu      $a0, $a0, -4
/* CFCB4 800CF0B4 24A5FFFC */  addiu      $a1, $a1, -4
/* CFCB8 800CF0B8 24C6FFFC */  addiu      $a2, $a2, -4
/* CFCBC 800CF0BC 1000FFF8 */  b          .L800CF0A0
/* CFCC0 800CF0C0 ACA20000 */   sw        $v0, ($a1)
/* CFCC4 800CF0C4 00000000 */  nop
/* CFCC8 800CF0C8 00000000 */  nop
/* CFCCC 800CF0CC 00000000 */  nop

glabel func_800CF0D0
/* CFCD0 800CF0D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CFCD4 800CF0D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* CFCD8 800CF0D8 AFA40028 */  sw         $a0, 0x28($sp)
/* CFCDC 800CF0DC 0C033DD4 */  jal        func_800CF750
/* CFCE0 800CF0E0 AFB00018 */   sw        $s0, 0x18($sp)
/* CFCE4 800CF0E4 8FAF0028 */  lw         $t7, 0x28($sp)
/* CFCE8 800CF0E8 3C0E800E */  lui        $t6, %hi(D_800DA0C0)
/* CFCEC 800CF0EC 8DCEA0C0 */  lw         $t6, %lo(D_800DA0C0)($t6)
/* CFCF0 800CF0F0 2401FBFE */  addiu      $at, $zero, -0x402
/* CFCF4 800CF0F4 01E1C024 */  and        $t8, $t7, $at
/* CFCF8 800CF0F8 0300C827 */  not        $t9, $t8
/* CFCFC 800CF0FC 00408025 */  or         $s0, $v0, $zero
/* CFD00 800CF100 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* CFD04 800CF104 01D94024 */  and        $t0, $t6, $t9
/* CFD08 800CF108 AC28A0C0 */  sw         $t0, %lo(D_800DA0C0)($at)
/* CFD0C 800CF10C 0C033DDC */  jal        func_800CF770
/* CFD10 800CF110 02002025 */   or        $a0, $s0, $zero
/* CFD14 800CF114 8FBF001C */  lw         $ra, 0x1c($sp)
/* CFD18 800CF118 8FB00018 */  lw         $s0, 0x18($sp)
/* CFD1C 800CF11C 27BD0028 */  addiu      $sp, $sp, 0x28
/* CFD20 800CF120 03E00008 */  jr         $ra
/* CFD24 800CF124 00000000 */   nop
/* CFD28 800CF128 00000000 */  nop
/* CFD2C 800CF12C 00000000 */  nop
