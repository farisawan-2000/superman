.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B9C80
/* BA880 800B9C80 27BDFFF8 */  addiu      $sp, $sp, -8
/* BA884 800B9C84 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* BA888 800B9C88 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* BA88C 800B9C8C 30AF0001 */  andi       $t7, $a1, 1
/* BA890 800B9C90 15E00003 */  bnez       $t7, .L800B9CA0
/* BA894 800B9C94 00000000 */   nop
/* BA898 800B9C98 10000007 */  b          .L800B9CB8
/* BA89C 800B9C9C 2402FFFF */   addiu     $v0, $zero, -1
.L800B9CA0:
/* BA8A0 800B9CA0 3C18A408 */  lui        $t8, 0xa408
/* BA8A4 800B9CA4 AF040000 */  sw         $a0, ($t8)
/* BA8A8 800B9CA8 10000003 */  b          .L800B9CB8
/* BA8AC 800B9CAC 00001025 */   or        $v0, $zero, $zero
/* BA8B0 800B9CB0 10000001 */  b          .L800B9CB8
/* BA8B4 800B9CB4 00000000 */   nop
.L800B9CB8:
/* BA8B8 800B9CB8 03E00008 */  jr         $ra
/* BA8BC 800B9CBC 27BD0008 */   addiu     $sp, $sp, 8
