.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CDAD0
/* CE6D0 800CDAD0 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* CE6D4 800CDAD4 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* CE6D8 800CDAD8 27BDFFF8 */  addiu      $sp, $sp, -8
/* CE6DC 800CDADC 308F0003 */  andi       $t7, $a0, 3
/* CE6E0 800CDAE0 11E00003 */  beqz       $t7, .L800CDAF0
/* CE6E4 800CDAE4 00000000 */   nop
/* CE6E8 800CDAE8 10000002 */  b          .L800CDAF4
/* CE6EC 800CDAEC 24020001 */   addiu     $v0, $zero, 1
.L800CDAF0:
/* CE6F0 800CDAF0 00001025 */  or         $v0, $zero, $zero
.L800CDAF4:
/* CE6F4 800CDAF4 03E00008 */  jr         $ra
/* CE6F8 800CDAF8 27BD0008 */   addiu     $sp, $sp, 8
/* CE6FC 800CDAFC 00000000 */  nop
