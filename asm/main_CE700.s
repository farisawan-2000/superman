.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CDB00
/* CE700 800CDB00 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* CE704 800CDB04 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* CE708 800CDB08 27BDFFF8 */  addiu      $sp, $sp, -8
/* CE70C 800CDB0C 308F001C */  andi       $t7, $a0, 0x1c
/* CE710 800CDB10 11E00003 */  beqz       $t7, .L800CDB20
/* CE714 800CDB14 00000000 */   nop
/* CE718 800CDB18 10000002 */  b          .L800CDB24
/* CE71C 800CDB1C 24020001 */   addiu     $v0, $zero, 1
.L800CDB20:
/* CE720 800CDB20 00001025 */  or         $v0, $zero, $zero
.L800CDB24:
/* CE724 800CDB24 03E00008 */  jr         $ra
/* CE728 800CDB28 27BD0008 */   addiu     $sp, $sp, 8
/* CE72C 800CDB2C 00000000 */  nop
