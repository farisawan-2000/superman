.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2F60
/* D3B60 800D2F60 3C0EA410 */  lui        $t6, %hi(D_A410000C)
/* D3B64 800D2F64 8DC4000C */  lw         $a0, %lo(D_A410000C)($t6)
/* D3B68 800D2F68 27BDFFF8 */  addiu      $sp, $sp, -8
/* D3B6C 800D2F6C 308F0100 */  andi       $t7, $a0, 0x100
/* D3B70 800D2F70 11E00003 */  beqz       $t7, .L800D2F80
/* D3B74 800D2F74 00000000 */   nop
/* D3B78 800D2F78 10000002 */  b          .L800D2F84
/* D3B7C 800D2F7C 24020001 */   addiu     $v0, $zero, 1
.L800D2F80:
/* D3B80 800D2F80 00001025 */  or         $v0, $zero, $zero
.L800D2F84:
/* D3B84 800D2F84 03E00008 */  jr         $ra
/* D3B88 800D2F88 27BD0008 */   addiu     $sp, $sp, 8
/* D3B8C 800D2F8C 00000000 */  nop
