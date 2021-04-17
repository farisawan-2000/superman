.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC270
/* CCE70 800CC270 44856000 */  mtc1       $a1, $f12
/* CCE74 800CC274 C4840000 */  lwc1       $f4, ($a0)
/* CCE78 800CC278 44867000 */  mtc1       $a2, $f14
/* CCE7C 800CC27C C4880010 */  lwc1       $f8, 0x10($a0)
/* CCE80 800CC280 460C2182 */  mul.s      $f6, $f4, $f12
/* CCE84 800CC284 44878000 */  mtc1       $a3, $f16
/* CCE88 800CC288 C4840020 */  lwc1       $f4, 0x20($a0)
/* CCE8C 800CC28C 460E4282 */  mul.s      $f10, $f8, $f14
/* CCE90 800CC290 8FAE0010 */  lw         $t6, 0x10($sp)
/* CCE94 800CC294 46102202 */  mul.s      $f8, $f4, $f16
/* CCE98 800CC298 460A3480 */  add.s      $f18, $f6, $f10
/* CCE9C 800CC29C C48A0030 */  lwc1       $f10, 0x30($a0)
/* CCEA0 800CC2A0 46089180 */  add.s      $f6, $f18, $f8
/* CCEA4 800CC2A4 46065100 */  add.s      $f4, $f10, $f6
/* CCEA8 800CC2A8 E5C40000 */  swc1       $f4, ($t6)
/* CCEAC 800CC2AC C4920004 */  lwc1       $f18, 4($a0)
/* CCEB0 800CC2B0 C48A0014 */  lwc1       $f10, 0x14($a0)
/* CCEB4 800CC2B4 8FAF0014 */  lw         $t7, 0x14($sp)
/* CCEB8 800CC2B8 460C9202 */  mul.s      $f8, $f18, $f12
/* CCEBC 800CC2BC C4920024 */  lwc1       $f18, 0x24($a0)
/* CCEC0 800CC2C0 460E5182 */  mul.s      $f6, $f10, $f14
/* CCEC4 800CC2C4 46064100 */  add.s      $f4, $f8, $f6
/* CCEC8 800CC2C8 46109282 */  mul.s      $f10, $f18, $f16
/* CCECC 800CC2CC C4860034 */  lwc1       $f6, 0x34($a0)
/* CCED0 800CC2D0 460A2200 */  add.s      $f8, $f4, $f10
/* CCED4 800CC2D4 46083480 */  add.s      $f18, $f6, $f8
/* CCED8 800CC2D8 E5F20000 */  swc1       $f18, ($t7)
/* CCEDC 800CC2DC C4840008 */  lwc1       $f4, 8($a0)
/* CCEE0 800CC2E0 C4860018 */  lwc1       $f6, 0x18($a0)
/* CCEE4 800CC2E4 8FB80018 */  lw         $t8, 0x18($sp)
/* CCEE8 800CC2E8 460C2282 */  mul.s      $f10, $f4, $f12
/* CCEEC 800CC2EC C4840028 */  lwc1       $f4, 0x28($a0)
/* CCEF0 800CC2F0 460E3202 */  mul.s      $f8, $f6, $f14
/* CCEF4 800CC2F4 46085480 */  add.s      $f18, $f10, $f8
/* CCEF8 800CC2F8 46102182 */  mul.s      $f6, $f4, $f16
/* CCEFC 800CC2FC C4880038 */  lwc1       $f8, 0x38($a0)
/* CCF00 800CC300 46069280 */  add.s      $f10, $f18, $f6
/* CCF04 800CC304 460A4100 */  add.s      $f4, $f8, $f10
/* CCF08 800CC308 03E00008 */  jr         $ra
/* CCF0C 800CC30C E7040000 */   swc1      $f4, ($t8)

glabel func_800CC310
/* CCF10 800CC310 27BDFF98 */  addiu      $sp, $sp, -0x68
/* CCF14 800CC314 44800000 */  mtc1       $zero, $f0
/* CCF18 800CC318 27A3001C */  addiu      $v1, $sp, 0x1c
/* CCF1C 800CC31C 27AB005C */  addiu      $t3, $sp, 0x5c
/* CCF20 800CC320 00803825 */  or         $a3, $a0, $zero
/* CCF24 800CC324 00A04025 */  or         $t0, $a1, $zero
/* CCF28 800CC328 240A0010 */  addiu      $t2, $zero, 0x10
.L800CC32C:
/* CCF2C 800CC32C 00002025 */  or         $a0, $zero, $zero
/* CCF30 800CC330 00602825 */  or         $a1, $v1, $zero
/* CCF34 800CC334 01004825 */  or         $t1, $t0, $zero
/* CCF38 800CC338 E4A00000 */  swc1       $f0, ($a1)
/* CCF3C 800CC33C C52C0000 */  lwc1       $f12, ($t1)
/* CCF40 800CC340 C4EE0000 */  lwc1       $f14, ($a3)
/* CCF44 800CC344 24840004 */  addiu      $a0, $a0, 4
/* CCF48 800CC348 C4B00000 */  lwc1       $f16, ($a1)
/* CCF4C 800CC34C 460C7482 */  mul.s      $f18, $f14, $f12
/* CCF50 800CC350 508A0020 */  beql       $a0, $t2, .L800CC3D4
/* CCF54 800CC354 46128380 */   add.s     $f14, $f16, $f18
/* CCF58 800CC358 46128380 */  add.s      $f14, $f16, $f18
.L800CC35C:
/* CCF5C 800CC35C 24840004 */  addiu      $a0, $a0, 4
/* CCF60 800CC360 24A50004 */  addiu      $a1, $a1, 4
/* CCF64 800CC364 25290004 */  addiu      $t1, $t1, 4
/* CCF68 800CC368 E4AEFFFC */  swc1       $f14, -4($a1)
/* CCF6C 800CC36C C4EE0004 */  lwc1       $f14, 4($a3)
/* CCF70 800CC370 C52C000C */  lwc1       $f12, 0xc($t1)
/* CCF74 800CC374 C4AAFFFC */  lwc1       $f10, -4($a1)
/* CCF78 800CC378 460C7302 */  mul.s      $f12, $f14, $f12
/* CCF7C 800CC37C 460C5300 */  add.s      $f12, $f10, $f12
/* CCF80 800CC380 E4ACFFFC */  swc1       $f12, -4($a1)
/* CCF84 800CC384 C4EC0008 */  lwc1       $f12, 8($a3)
/* CCF88 800CC388 C52A001C */  lwc1       $f10, 0x1c($t1)
/* CCF8C 800CC38C C4AEFFFC */  lwc1       $f14, -4($a1)
/* CCF90 800CC390 460A6282 */  mul.s      $f10, $f12, $f10
/* CCF94 800CC394 460A7280 */  add.s      $f10, $f14, $f10
/* CCF98 800CC398 E4AAFFFC */  swc1       $f10, -4($a1)
/* CCF9C 800CC39C C4EA000C */  lwc1       $f10, 0xc($a3)
/* CCFA0 800CC3A0 C52E002C */  lwc1       $f14, 0x2c($t1)
/* CCFA4 800CC3A4 C4ACFFFC */  lwc1       $f12, -4($a1)
/* CCFA8 800CC3A8 E4A00000 */  swc1       $f0, ($a1)
/* CCFAC 800CC3AC 460E5382 */  mul.s      $f14, $f10, $f14
/* CCFB0 800CC3B0 C4B00000 */  lwc1       $f16, ($a1)
/* CCFB4 800CC3B4 460E6380 */  add.s      $f14, $f12, $f14
/* CCFB8 800CC3B8 E4AEFFFC */  swc1       $f14, -4($a1)
/* CCFBC 800CC3BC C4EE0000 */  lwc1       $f14, ($a3)
/* CCFC0 800CC3C0 C52C0000 */  lwc1       $f12, ($t1)
/* CCFC4 800CC3C4 460C7482 */  mul.s      $f18, $f14, $f12
/* CCFC8 800CC3C8 548AFFE4 */  bnel       $a0, $t2, .L800CC35C
/* CCFCC 800CC3CC 46128380 */   add.s     $f14, $f16, $f18
/* CCFD0 800CC3D0 46128380 */  add.s      $f14, $f16, $f18
.L800CC3D4:
/* CCFD4 800CC3D4 24A50004 */  addiu      $a1, $a1, 4
/* CCFD8 800CC3D8 25290004 */  addiu      $t1, $t1, 4
/* CCFDC 800CC3DC E4AEFFFC */  swc1       $f14, -4($a1)
/* CCFE0 800CC3E0 C52C000C */  lwc1       $f12, 0xc($t1)
/* CCFE4 800CC3E4 C4EE0004 */  lwc1       $f14, 4($a3)
/* CCFE8 800CC3E8 C4AAFFFC */  lwc1       $f10, -4($a1)
/* CCFEC 800CC3EC 460C7302 */  mul.s      $f12, $f14, $f12
/* CCFF0 800CC3F0 460C5300 */  add.s      $f12, $f10, $f12
/* CCFF4 800CC3F4 E4ACFFFC */  swc1       $f12, -4($a1)
/* CCFF8 800CC3F8 C52A001C */  lwc1       $f10, 0x1c($t1)
/* CCFFC 800CC3FC C4EC0008 */  lwc1       $f12, 8($a3)
/* CD000 800CC400 C4AEFFFC */  lwc1       $f14, -4($a1)
/* CD004 800CC404 460A6282 */  mul.s      $f10, $f12, $f10
/* CD008 800CC408 460A7280 */  add.s      $f10, $f14, $f10
/* CD00C 800CC40C E4AAFFFC */  swc1       $f10, -4($a1)
/* CD010 800CC410 C52E002C */  lwc1       $f14, 0x2c($t1)
/* CD014 800CC414 C4EA000C */  lwc1       $f10, 0xc($a3)
/* CD018 800CC418 C4ACFFFC */  lwc1       $f12, -4($a1)
/* CD01C 800CC41C 460E5382 */  mul.s      $f14, $f10, $f14
/* CD020 800CC420 460E6380 */  add.s      $f14, $f12, $f14
/* CD024 800CC424 E4AEFFFC */  swc1       $f14, -4($a1)
/* CD028 800CC428 24630010 */  addiu      $v1, $v1, 0x10
/* CD02C 800CC42C 006B082B */  sltu       $at, $v1, $t3
/* CD030 800CC430 1420FFBE */  bnez       $at, .L800CC32C
/* CD034 800CC434 24E70010 */   addiu     $a3, $a3, 0x10
/* CD038 800CC438 00C01825 */  or         $v1, $a2, $zero
/* CD03C 800CC43C 27A4001C */  addiu      $a0, $sp, 0x1c
/* CD040 800CC440 27A2005C */  addiu      $v0, $sp, 0x5c
.L800CC444:
/* CD044 800CC444 C4860000 */  lwc1       $f6, ($a0)
/* CD048 800CC448 24840010 */  addiu      $a0, $a0, 0x10
/* CD04C 800CC44C 24630010 */  addiu      $v1, $v1, 0x10
/* CD050 800CC450 E466FFF0 */  swc1       $f6, -0x10($v1)
/* CD054 800CC454 C488FFF4 */  lwc1       $f8, -0xc($a0)
/* CD058 800CC458 E468FFF4 */  swc1       $f8, -0xc($v1)
/* CD05C 800CC45C C490FFF8 */  lwc1       $f16, -8($a0)
/* CD060 800CC460 E470FFF8 */  swc1       $f16, -8($v1)
/* CD064 800CC464 C48AFFFC */  lwc1       $f10, -4($a0)
/* CD068 800CC468 1482FFF6 */  bne        $a0, $v0, .L800CC444
/* CD06C 800CC46C E46AFFFC */   swc1      $f10, -4($v1)
/* CD070 800CC470 03E00008 */  jr         $ra
/* CD074 800CC474 27BD0068 */   addiu     $sp, $sp, 0x68
/* CD078 800CC478 00000000 */  nop
/* CD07C 800CC47C 00000000 */  nop
