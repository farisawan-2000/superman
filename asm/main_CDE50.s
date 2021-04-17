.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD250
/* CDE50 800CD250 24030010 */  addiu      $v1, $zero, 0x10
/* CDE54 800CD254 30AE000F */  andi       $t6, $a1, 0xf
/* CDE58 800CD258 006E1023 */  subu       $v0, $v1, $t6
/* CDE5C 800CD25C 10620003 */  beq        $v1, $v0, .L800CD26C
/* CDE60 800CD260 00A27821 */   addu      $t7, $a1, $v0
/* CDE64 800CD264 10000002 */  b          .L800CD270
/* CDE68 800CD268 AC8F0000 */   sw        $t7, ($a0)
.L800CD26C:
/* CDE6C 800CD26C AC850000 */  sw         $a1, ($a0)
.L800CD270:
/* CDE70 800CD270 8C980000 */  lw         $t8, ($a0)
/* CDE74 800CD274 AC860008 */  sw         $a2, 8($a0)
/* CDE78 800CD278 AC80000C */  sw         $zero, 0xc($a0)
/* CDE7C 800CD27C 03E00008 */  jr         $ra
/* CDE80 800CD280 AC980004 */   sw        $t8, 4($a0)
/* CDE84 800CD284 00000000 */  nop
/* CDE88 800CD288 00000000 */  nop
/* CDE8C 800CD28C 00000000 */  nop
