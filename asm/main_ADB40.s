.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ACF40
/* ADB40 800ACF40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* ADB44 800ACF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADB48 800ACF48 AFA40028 */  sw         $a0, 0x28($sp)
/* ADB4C 800ACF4C AFA5002C */  sw         $a1, 0x2c($sp)
/* ADB50 800ACF50 AFA60030 */  sw         $a2, 0x30($sp)
/* ADB54 800ACF54 AFA70034 */  sw         $a3, 0x34($sp)
/* ADB58 800ACF58 240E000B */  addiu      $t6, $zero, 0xb
/* ADB5C 800ACF5C A7AE0018 */  sh         $t6, 0x18($sp)
/* ADB60 800ACF60 8FAF002C */  lw         $t7, 0x2c($sp)
/* ADB64 800ACF64 AFAF001C */  sw         $t7, 0x1c($sp)
/* ADB68 800ACF68 8FB80030 */  lw         $t8, 0x30($sp)
/* ADB6C 800ACF6C AFB80020 */  sw         $t8, 0x20($sp)
/* ADB70 800ACF70 8FB90034 */  lw         $t9, 0x34($sp)
/* ADB74 800ACF74 AFB90024 */  sw         $t9, 0x24($sp)
/* ADB78 800ACF78 8FA40028 */  lw         $a0, 0x28($sp)
/* ADB7C 800ACF7C 27A50018 */  addiu      $a1, $sp, 0x18
/* ADB80 800ACF80 00003025 */  or         $a2, $zero, $zero
/* ADB84 800ACF84 0C026E68 */  jal        func_8009B9A0
/* ADB88 800ACF88 24840048 */   addiu     $a0, $a0, 0x48
/* ADB8C 800ACF8C 10000001 */  b          .L800ACF94
/* ADB90 800ACF90 00000000 */   nop
.L800ACF94:
/* ADB94 800ACF94 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADB98 800ACF98 27BD0028 */  addiu      $sp, $sp, 0x28
/* ADB9C 800ACF9C 03E00008 */  jr         $ra
/* ADBA0 800ACFA0 00000000 */   nop
/* ADBA4 800ACFA4 00000000 */  nop
/* ADBA8 800ACFA8 00000000 */  nop
/* ADBAC 800ACFAC 00000000 */  nop
