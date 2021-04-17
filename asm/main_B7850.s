.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6C50
/* B7850 800B6C50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7854 800B6C54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7858 800B6C58 AFB00018 */  sw         $s0, 0x18($sp)
/* B785C 800B6C5C 0C02C0C8 */  jal        func_800B0320
/* B7860 800B6C60 00000000 */   nop
/* B7864 800B6C64 00408025 */  or         $s0, $v0, $zero
/* B7868 800B6C68 3C0F800D */  lui        $t7, %hi(D_800CC260)
/* B786C 800B6C6C 8DEFC260 */  lw         $t7, %lo(D_800CC260)($t7)
/* B7870 800B6C70 240E0002 */  addiu      $t6, $zero, 2
/* B7874 800B6C74 A5EE0010 */  sh         $t6, 0x10($t7)
/* B7878 800B6C78 3C04800D */  lui        $a0, %hi(D_800CC258)
/* B787C 800B6C7C 0C02618F */  jal        func_8009863C
/* B7880 800B6C80 2484C258 */   addiu     $a0, $a0, %lo(D_800CC258)
/* B7884 800B6C84 0C02C0D0 */  jal        func_800B0340
/* B7888 800B6C88 02002025 */   or        $a0, $s0, $zero
/* B788C 800B6C8C 10000001 */  b          .L800B6C94
/* B7890 800B6C90 00000000 */   nop
.L800B6C94:
/* B7894 800B6C94 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7898 800B6C98 8FB00018 */  lw         $s0, 0x18($sp)
/* B789C 800B6C9C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B78A0 800B6CA0 03E00008 */  jr         $ra
/* B78A4 800B6CA4 00000000 */   nop
/* B78A8 800B6CA8 00000000 */  nop
/* B78AC 800B6CAC 00000000 */  nop
