.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2FB0
/* D3BB0 800D2FB0 3C088000 */  lui        $t0, 0x8000
/* D3BB4 800D2FB4 240A2000 */  addiu      $t2, $zero, 0x2000
/* D3BB8 800D2FB8 010A4821 */  addu       $t1, $t0, $t2
/* D3BBC 800D2FBC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800D2FC0:
/* D3BC0 800D2FC0 BD010000 */  cache      1, ($t0)
/* D3BC4 800D2FC4 0109082B */  sltu       $at, $t0, $t1
/* D3BC8 800D2FC8 1420FFFD */  bnez       $at, .L800D2FC0
/* D3BCC 800D2FCC 25080010 */   addiu     $t0, $t0, 0x10
/* D3BD0 800D2FD0 03E00008 */  jr         $ra
/* D3BD4 800D2FD4 00000000 */   nop
/* D3BD8 800D2FD8 00000000 */  nop
/* D3BDC 800D2FDC 00000000 */  nop
