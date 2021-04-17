.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C45B0
/* C51B0 800C45B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C51B4 800C45B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C51B8 800C45B8 240E000D */  addiu      $t6, $zero, 0xd
/* C51BC 800C45BC AFA5001C */  sw         $a1, 0x1c($sp)
/* C51C0 800C45C0 A7AE0018 */  sh         $t6, 0x18($sp)
/* C51C4 800C45C4 27A50018 */  addiu      $a1, $sp, 0x18
/* C51C8 800C45C8 24840048 */  addiu      $a0, $a0, 0x48
/* C51CC 800C45CC 0C03031B */  jal        func_800C0C6C
/* C51D0 800C45D0 00003025 */   or        $a2, $zero, $zero
/* C51D4 800C45D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C51D8 800C45D8 27BD0028 */  addiu      $sp, $sp, 0x28
/* C51DC 800C45DC 03E00008 */  jr         $ra
/* C51E0 800C45E0 00000000 */   nop
/* C51E4 800C45E4 00000000 */  nop
/* C51E8 800C45E8 00000000 */  nop
/* C51EC 800C45EC 00000000 */  nop
