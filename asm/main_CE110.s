.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD510
/* CE110 800CD510 3C0E800E */  lui        $t6, %hi(D_800DA070)
/* CE114 800CD514 3C0F800E */  lui        $t7, %hi(D_800DA070)
/* CE118 800CD518 25CEA070 */  addiu      $t6, $t6, %lo(D_800DA070)
/* CE11C 800CD51C 25EFA070 */  addiu      $t7, $t7, %lo(D_800DA070)
/* CE120 800CD520 AC8E0000 */  sw         $t6, ($a0)
/* CE124 800CD524 AC8F0004 */  sw         $t7, 4($a0)
/* CE128 800CD528 AC800008 */  sw         $zero, 8($a0)
/* CE12C 800CD52C AC80000C */  sw         $zero, 0xc($a0)
/* CE130 800CD530 AC860010 */  sw         $a2, 0x10($a0)
/* CE134 800CD534 03E00008 */  jr         $ra
/* CE138 800CD538 AC850014 */   sw        $a1, 0x14($a0)
/* CE13C 800CD53C 00000000 */  nop
