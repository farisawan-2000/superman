.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ACCB0
/* AD8B0 800ACCB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AD8B4 800ACCB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD8B8 800ACCB8 AFA40028 */  sw         $a0, 0x28($sp)
/* AD8BC 800ACCBC AFA5002C */  sw         $a1, 0x2c($sp)
/* AD8C0 800ACCC0 240E000A */  addiu      $t6, $zero, 0xa
/* AD8C4 800ACCC4 A7AE0018 */  sh         $t6, 0x18($sp)
/* AD8C8 800ACCC8 87AF002E */  lh         $t7, 0x2e($sp)
/* AD8CC 800ACCCC A7AF001C */  sh         $t7, 0x1c($sp)
/* AD8D0 800ACCD0 8FA40028 */  lw         $a0, 0x28($sp)
/* AD8D4 800ACCD4 27A50018 */  addiu      $a1, $sp, 0x18
/* AD8D8 800ACCD8 00003025 */  or         $a2, $zero, $zero
/* AD8DC 800ACCDC 0C026E68 */  jal        func_8009B9A0
/* AD8E0 800ACCE0 24840048 */   addiu     $a0, $a0, 0x48
/* AD8E4 800ACCE4 10000001 */  b          .L800ACCEC
/* AD8E8 800ACCE8 00000000 */   nop
.L800ACCEC:
/* AD8EC 800ACCEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD8F0 800ACCF0 27BD0028 */  addiu      $sp, $sp, 0x28
/* AD8F4 800ACCF4 03E00008 */  jr         $ra
/* AD8F8 800ACCF8 00000000 */   nop
/* AD8FC 800ACCFC 00000000 */  nop
