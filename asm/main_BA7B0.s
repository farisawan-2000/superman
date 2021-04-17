.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B9BB0
/* BA7B0 800B9BB0 27BDFFF8 */  addiu      $sp, $sp, -8
/* BA7B4 800B9BB4 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* BA7B8 800B9BB8 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* BA7BC 800B9BBC 3C018000 */  lui        $at, 0x8000
/* BA7C0 800B9BC0 00817824 */  and        $t7, $a0, $at
/* BA7C4 800B9BC4 11E00005 */  beqz       $t7, .L800B9BDC
/* BA7C8 800B9BC8 00000000 */   nop
/* BA7CC 800B9BCC 10000007 */  b          .L800B9BEC
/* BA7D0 800B9BD0 24020001 */   addiu     $v0, $zero, 1
/* BA7D4 800B9BD4 10000003 */  b          .L800B9BE4
/* BA7D8 800B9BD8 00000000 */   nop
.L800B9BDC:
/* BA7DC 800B9BDC 10000003 */  b          .L800B9BEC
/* BA7E0 800B9BE0 00001025 */   or        $v0, $zero, $zero
.L800B9BE4:
/* BA7E4 800B9BE4 10000001 */  b          .L800B9BEC
/* BA7E8 800B9BE8 00000000 */   nop
.L800B9BEC:
/* BA7EC 800B9BEC 03E00008 */  jr         $ra
/* BA7F0 800B9BF0 27BD0008 */   addiu     $sp, $sp, 8
/* BA7F4 800B9BF4 00000000 */  nop
/* BA7F8 800B9BF8 00000000 */  nop
/* BA7FC 800B9BFC 00000000 */  nop
