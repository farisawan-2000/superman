.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BE170
/* BED70 800BE170 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BED74 800BE174 AFBF001C */  sw         $ra, 0x1c($sp)
/* BED78 800BE178 AFA40028 */  sw         $a0, 0x28($sp)
/* BED7C 800BE17C AFA5002C */  sw         $a1, 0x2c($sp)
/* BED80 800BE180 AFA60030 */  sw         $a2, 0x30($sp)
/* BED84 800BE184 AFB10018 */  sw         $s1, 0x18($sp)
/* BED88 800BE188 0C033DD4 */  jal        func_800CF750
/* BED8C 800BE18C AFB00014 */   sw        $s0, 0x14($sp)
/* BED90 800BE190 8FAE0028 */  lw         $t6, 0x28($sp)
/* BED94 800BE194 00408025 */  or         $s0, $v0, $zero
/* BED98 800BE198 8DCF0008 */  lw         $t7, 8($t6)
/* BED9C 800BE19C 15E00012 */  bnez       $t7, .L800BE1E8
/* BEDA0 800BE1A0 00000000 */   nop
.L800BE1A4:
/* BEDA4 800BE1A4 8FB80030 */  lw         $t8, 0x30($sp)
/* BEDA8 800BE1A8 17000005 */  bnez       $t8, .L800BE1C0
/* BEDAC 800BE1AC 00000000 */   nop
/* BEDB0 800BE1B0 0C033DDC */  jal        func_800CF770
/* BEDB4 800BE1B4 02002025 */   or        $a0, $s0, $zero
/* BEDB8 800BE1B8 10000036 */  b          .L800BE294
/* BEDBC 800BE1BC 2402FFFF */   addiu     $v0, $zero, -1
.L800BE1C0:
/* BEDC0 800BE1C0 3C08800E */  lui        $t0, %hi(D_800DA080)
/* BEDC4 800BE1C4 8D08A080 */  lw         $t0, %lo(D_800DA080)($t0)
/* BEDC8 800BE1C8 24190008 */  addiu      $t9, $zero, 8
/* BEDCC 800BE1CC A5190010 */  sh         $t9, 0x10($t0)
/* BEDD0 800BE1D0 0C02FAFF */  jal        func_800BEBFC
/* BEDD4 800BE1D4 8FA40028 */   lw        $a0, 0x28($sp)
/* BEDD8 800BE1D8 8FA90028 */  lw         $t1, 0x28($sp)
/* BEDDC 800BE1DC 8D2A0008 */  lw         $t2, 8($t1)
/* BEDE0 800BE1E0 1140FFF0 */  beqz       $t2, .L800BE1A4
/* BEDE4 800BE1E4 00000000 */   nop
.L800BE1E8:
/* BEDE8 800BE1E8 8FAB002C */  lw         $t3, 0x2c($sp)
/* BEDEC 800BE1EC 11600008 */  beqz       $t3, .L800BE210
/* BEDF0 800BE1F0 00000000 */   nop
/* BEDF4 800BE1F4 8FAC0028 */  lw         $t4, 0x28($sp)
/* BEDF8 800BE1F8 8D8E000C */  lw         $t6, 0xc($t4)
/* BEDFC 800BE1FC 8D8D0014 */  lw         $t5, 0x14($t4)
/* BEE00 800BE200 000E7880 */  sll        $t7, $t6, 2
/* BEE04 800BE204 01AFC021 */  addu       $t8, $t5, $t7
/* BEE08 800BE208 8F190000 */  lw         $t9, ($t8)
/* BEE0C 800BE20C AD790000 */  sw         $t9, ($t3)
.L800BE210:
/* BEE10 800BE210 8FA80028 */  lw         $t0, 0x28($sp)
/* BEE14 800BE214 8D09000C */  lw         $t1, 0xc($t0)
/* BEE18 800BE218 8D0C0010 */  lw         $t4, 0x10($t0)
/* BEE1C 800BE21C 252A0001 */  addiu      $t2, $t1, 1
/* BEE20 800BE220 014C001A */  div        $zero, $t2, $t4
/* BEE24 800BE224 00007010 */  mfhi       $t6
/* BEE28 800BE228 AD0E000C */  sw         $t6, 0xc($t0)
/* BEE2C 800BE22C 8FAD0028 */  lw         $t5, 0x28($sp)
/* BEE30 800BE230 15800002 */  bnez       $t4, .L800BE23C
/* BEE34 800BE234 00000000 */   nop
/* BEE38 800BE238 0007000D */  break      7
.L800BE23C:
/* BEE3C 800BE23C 2401FFFF */   addiu     $at, $zero, -1
/* BEE40 800BE240 15810004 */  bne        $t4, $at, .L800BE254
/* BEE44 800BE244 3C018000 */   lui       $at, 0x8000
/* BEE48 800BE248 15410002 */  bne        $t2, $at, .L800BE254
/* BEE4C 800BE24C 00000000 */   nop
/* BEE50 800BE250 0006000D */  break      6
.L800BE254:
/* BEE54 800BE254 8DAF0008 */   lw        $t7, 8($t5)
/* BEE58 800BE258 25F8FFFF */  addiu      $t8, $t7, -1
/* BEE5C 800BE25C ADB80008 */  sw         $t8, 8($t5)
/* BEE60 800BE260 8FB90028 */  lw         $t9, 0x28($sp)
/* BEE64 800BE264 8F2B0004 */  lw         $t3, 4($t9)
/* BEE68 800BE268 8D690000 */  lw         $t1, ($t3)
/* BEE6C 800BE26C 11200006 */  beqz       $t1, .L800BE288
/* BEE70 800BE270 00000000 */   nop
/* BEE74 800BE274 0C02FB51 */  jal        func_800BED44
/* BEE78 800BE278 27240004 */   addiu     $a0, $t9, 4
/* BEE7C 800BE27C 00408825 */  or         $s1, $v0, $zero
/* BEE80 800BE280 0C034CE8 */  jal        func_800D33A0
/* BEE84 800BE284 02202025 */   or        $a0, $s1, $zero
.L800BE288:
/* BEE88 800BE288 0C033DDC */  jal        func_800CF770
/* BEE8C 800BE28C 02002025 */   or        $a0, $s0, $zero
/* BEE90 800BE290 00001025 */  or         $v0, $zero, $zero
.L800BE294:
/* BEE94 800BE294 8FBF001C */  lw         $ra, 0x1c($sp)
/* BEE98 800BE298 8FB00014 */  lw         $s0, 0x14($sp)
/* BEE9C 800BE29C 8FB10018 */  lw         $s1, 0x18($sp)
/* BEEA0 800BE2A0 03E00008 */  jr         $ra
/* BEEA4 800BE2A4 27BD0028 */   addiu     $sp, $sp, 0x28
/* BEEA8 800BE2A8 00000000 */  nop
/* BEEAC 800BE2AC 00000000 */  nop
