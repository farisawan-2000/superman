.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80098AC0
/* 996C0 80098AC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 996C4 80098AC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 996C8 80098AC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 996CC 80098ACC AFA5002C */  sw         $a1, 0x2c($sp)
/* 996D0 80098AD0 240E000E */  addiu      $t6, $zero, 0xe
/* 996D4 80098AD4 A7AE0018 */  sh         $t6, 0x18($sp)
/* 996D8 80098AD8 8FAF002C */  lw         $t7, 0x2c($sp)
/* 996DC 80098ADC AFAF001C */  sw         $t7, 0x1c($sp)
/* 996E0 80098AE0 8FA40028 */  lw         $a0, 0x28($sp)
/* 996E4 80098AE4 27A50018 */  addiu      $a1, $sp, 0x18
/* 996E8 80098AE8 00003025 */  or         $a2, $zero, $zero
/* 996EC 80098AEC 0C026E68 */  jal        func_8009B9A0
/* 996F0 80098AF0 24840048 */   addiu     $a0, $a0, 0x48
/* 996F4 80098AF4 10000001 */  b          .L80098AFC
/* 996F8 80098AF8 00000000 */   nop
.L80098AFC:
/* 996FC 80098AFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 99700 80098B00 27BD0028 */  addiu      $sp, $sp, 0x28
/* 99704 80098B04 03E00008 */  jr         $ra
/* 99708 80098B08 00000000 */   nop
/* 9970C 80098B0C 00000000 */  nop
