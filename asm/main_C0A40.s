.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BFE40
/* C0A40 800BFE40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C0A44 800BFE44 AFBF0014 */  sw         $ra, 0x14($sp)
/* C0A48 800BFE48 8C820040 */  lw         $v0, 0x40($a0)
/* C0A4C 800BFE4C 240E0001 */  addiu      $t6, $zero, 1
/* C0A50 800BFE50 A7AE0020 */  sh         $t6, 0x20($sp)
/* C0A54 800BFE54 8C8F003C */  lw         $t7, 0x3c($a0)
/* C0A58 800BFE58 27A50020 */  addiu      $a1, $sp, 0x20
/* C0A5C 800BFE5C 24840014 */  addiu      $a0, $a0, 0x14
/* C0A60 800BFE60 000FC080 */  sll        $t8, $t7, 2
/* C0A64 800BFE64 030FC023 */  subu       $t8, $t8, $t7
/* C0A68 800BFE68 0018C100 */  sll        $t8, $t8, 4
/* C0A6C 800BFE6C 0302C821 */  addu       $t9, $t8, $v0
/* C0A70 800BFE70 AFB90024 */  sw         $t9, 0x24($sp)
/* C0A74 800BFE74 0C03031B */  jal        func_800C0C6C
/* C0A78 800BFE78 00003025 */   or        $a2, $zero, $zero
/* C0A7C 800BFE7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C0A80 800BFE80 27BD0030 */  addiu      $sp, $sp, 0x30
/* C0A84 800BFE84 03E00008 */  jr         $ra
/* C0A88 800BFE88 00000000 */   nop
/* C0A8C 800BFE8C 00000000 */  nop
