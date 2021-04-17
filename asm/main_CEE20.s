.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CE220
/* CEE20 800CE220 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CEE24 800CE224 AFBF0014 */  sw         $ra, 0x14($sp)
/* CEE28 800CE228 0C034BE8 */  jal        func_800D2FA0
/* CEE2C 800CE22C AFA40020 */   sw        $a0, 0x20($sp)
/* CEE30 800CE230 AFA2001C */  sw         $v0, 0x1c($sp)
/* CEE34 800CE234 8FAE001C */  lw         $t6, 0x1c($sp)
/* CEE38 800CE238 31CF0100 */  andi       $t7, $t6, 0x100
/* CEE3C 800CE23C 11E00004 */  beqz       $t7, .L800CE250
/* CEE40 800CE240 00000000 */   nop
/* CEE44 800CE244 24180001 */  addiu      $t8, $zero, 1
/* CEE48 800CE248 10000002 */  b          .L800CE254
/* CEE4C 800CE24C AFB80018 */   sw        $t8, 0x18($sp)
.L800CE250:
/* CEE50 800CE250 AFA00018 */  sw         $zero, 0x18($sp)
.L800CE254:
/* CEE54 800CE254 8FB9001C */  lw         $t9, 0x1c($sp)
/* CEE58 800CE258 33280080 */  andi       $t0, $t9, 0x80
/* CEE5C 800CE25C 1100000B */  beqz       $t0, .L800CE28C
/* CEE60 800CE260 00000000 */   nop
/* CEE64 800CE264 8FA90020 */  lw         $t1, 0x20($sp)
/* CEE68 800CE268 8FAB0018 */  lw         $t3, 0x18($sp)
/* CEE6C 800CE26C 2401FFFD */  addiu      $at, $zero, -3
/* CEE70 800CE270 8D2A0004 */  lw         $t2, 4($t1)
/* CEE74 800CE274 014B6025 */  or         $t4, $t2, $t3
/* CEE78 800CE278 AD2C0004 */  sw         $t4, 4($t1)
/* CEE7C 800CE27C 8FAD0020 */  lw         $t5, 0x20($sp)
/* CEE80 800CE280 8DAE0004 */  lw         $t6, 4($t5)
/* CEE84 800CE284 01C17824 */  and        $t7, $t6, $at
/* CEE88 800CE288 ADAF0004 */  sw         $t7, 4($t5)
.L800CE28C:
/* CEE8C 800CE28C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CEE90 800CE290 8FA20018 */  lw         $v0, 0x18($sp)
/* CEE94 800CE294 27BD0020 */  addiu      $sp, $sp, 0x20
/* CEE98 800CE298 03E00008 */  jr         $ra
/* CEE9C 800CE29C 00000000 */   nop

glabel func_800CE2A0
/* CEEA0 800CE2A0 00057400 */  sll        $t6, $a1, 0x10
/* CEEA4 800CE2A4 000E7C03 */  sra        $t7, $t6, 0x10
/* CEEA8 800CE2A8 AFA50004 */  sw         $a1, 4($sp)
/* CEEAC 800CE2AC 8C820040 */  lw         $v0, 0x40($a0)
/* CEEB0 800CE2B0 000F1880 */  sll        $v1, $t7, 2
/* CEEB4 800CE2B4 006F1823 */  subu       $v1, $v1, $t7
/* CEEB8 800CE2B8 00031900 */  sll        $v1, $v1, 4
/* CEEBC 800CE2BC 0062C021 */  addu       $t8, $v1, $v0
/* CEEC0 800CE2C0 8F190028 */  lw         $t9, 0x28($t8)
/* CEEC4 800CE2C4 00434021 */  addu       $t0, $v0, $v1
/* CEEC8 800CE2C8 17200007 */  bnez       $t9, .L800CE2E8
/* CEECC 800CE2CC 00000000 */   nop
/* CEED0 800CE2D0 AD00001C */  sw         $zero, 0x1c($t0)
/* CEED4 800CE2D4 8C89003C */  lw         $t1, 0x3c($a0)
/* CEED8 800CE2D8 240AFFFF */  addiu      $t2, $zero, -1
/* CEEDC 800CE2DC 15E90002 */  bne        $t7, $t1, .L800CE2E8
/* CEEE0 800CE2E0 00000000 */   nop
/* CEEE4 800CE2E4 AC8A003C */  sw         $t2, 0x3c($a0)
.L800CE2E8:
/* CEEE8 800CE2E8 03E00008 */  jr         $ra
/* CEEEC 800CE2EC 00000000 */   nop

glabel func_800CE2F0
/* CEEF0 800CE2F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CEEF4 800CE2F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* CEEF8 800CE2F8 0C033DD4 */  jal        func_800CF750
/* CEEFC 800CE2FC AFB00018 */   sw        $s0, 0x18($sp)
/* CEF00 800CE300 0C031E2C */  jal        func_800C78B0
/* CEF04 800CE304 00408025 */   or        $s0, $v0, $zero
/* CEF08 800CE308 AFA20034 */  sw         $v0, 0x34($sp)
/* CEF0C 800CE30C 3C0F8014 */  lui        $t7, %hi(D_80146CB8)
/* CEF10 800CE310 8DEF6CB8 */  lw         $t7, %lo(D_80146CB8)($t7)
/* CEF14 800CE314 8FAE0034 */  lw         $t6, 0x34($sp)
/* CEF18 800CE318 3C088014 */  lui        $t0, %hi(D_80146CB0)
/* CEF1C 800CE31C 3C098014 */  lui        $t1, %hi(D_80146CB4)
/* CEF20 800CE320 8D296CB4 */  lw         $t1, %lo(D_80146CB4)($t1)
/* CEF24 800CE324 8D086CB0 */  lw         $t0, %lo(D_80146CB0)($t0)
/* CEF28 800CE328 01CFC023 */  subu       $t8, $t6, $t7
/* CEF2C 800CE32C AFB80030 */  sw         $t8, 0x30($sp)
/* CEF30 800CE330 02002025 */  or         $a0, $s0, $zero
/* CEF34 800CE334 AFA9002C */  sw         $t1, 0x2c($sp)
/* CEF38 800CE338 0C033DDC */  jal        func_800CF770
/* CEF3C 800CE33C AFA80028 */   sw        $t0, 0x28($sp)
/* CEF40 800CE340 8FB90030 */  lw         $t9, 0x30($sp)
/* CEF44 800CE344 8FAD002C */  lw         $t5, 0x2c($sp)
/* CEF48 800CE348 8FBF001C */  lw         $ra, 0x1c($sp)
/* CEF4C 800CE34C 03205825 */  or         $t3, $t9, $zero
/* CEF50 800CE350 016D1821 */  addu       $v1, $t3, $t5
/* CEF54 800CE354 8FAC0028 */  lw         $t4, 0x28($sp)
/* CEF58 800CE358 240A0000 */  addiu      $t2, $zero, 0
/* CEF5C 800CE35C 006D082B */  sltu       $at, $v1, $t5
/* CEF60 800CE360 002A1021 */  addu       $v0, $at, $t2
/* CEF64 800CE364 8FB00018 */  lw         $s0, 0x18($sp)
/* CEF68 800CE368 27BD0038 */  addiu      $sp, $sp, 0x38
/* CEF6C 800CE36C 03E00008 */  jr         $ra
/* CEF70 800CE370 004C1021 */   addu      $v0, $v0, $t4
/* CEF74 800CE374 00000000 */  nop
/* CEF78 800CE378 00000000 */  nop
/* CEF7C 800CE37C 00000000 */  nop
