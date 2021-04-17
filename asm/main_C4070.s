.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3470
/* C4070 800C3470 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* C4074 800C3474 8DC60010 */  lw         $a2, %lo(D_A4600010)($t6)
/* C4078 800C3478 27BDFFF8 */  addiu      $sp, $sp, -8
/* C407C 800C347C 30CF0003 */  andi       $t7, $a2, 3
/* C4080 800C3480 11E00006 */  beqz       $t7, .L800C349C
/* C4084 800C3484 00000000 */   nop
.L800C3488:
/* C4088 800C3488 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* C408C 800C348C 8F060010 */  lw         $a2, %lo(D_A4600010)($t8)
/* C4090 800C3490 30D90003 */  andi       $t9, $a2, 3
/* C4094 800C3494 1720FFFC */  bnez       $t9, .L800C3488
/* C4098 800C3498 00000000 */   nop
.L800C349C:
/* C409C 800C349C 3C088000 */  lui        $t0, %hi(D_80000308)
/* C40A0 800C34A0 8D080308 */  lw         $t0, %lo(D_80000308)($t0)
/* C40A4 800C34A4 3C01A000 */  lui        $at, 0xa000
/* C40A8 800C34A8 00001025 */  or         $v0, $zero, $zero
/* C40AC 800C34AC 01044825 */  or         $t1, $t0, $a0
/* C40B0 800C34B0 01215025 */  or         $t2, $t1, $at
/* C40B4 800C34B4 8D4B0000 */  lw         $t3, ($t2)
/* C40B8 800C34B8 27BD0008 */  addiu      $sp, $sp, 8
/* C40BC 800C34BC 03E00008 */  jr         $ra
/* C40C0 800C34C0 ACAB0000 */   sw        $t3, ($a1)
/* C40C4 800C34C4 00000000 */  nop
/* C40C8 800C34C8 00000000 */  nop
/* C40CC 800C34CC 00000000 */  nop
