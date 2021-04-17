.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8DE0
/* B99E0 800B8DE0 3C088000 */  lui        $t0, 0x8000
/* B99E4 800B8DE4 240A2000 */  addiu      $t2, $zero, 0x2000
/* B99E8 800B8DE8 010A4821 */  addu       $t1, $t0, $t2
/* B99EC 800B8DEC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800B8DF0:
/* B99F0 800B8DF0 BD010000 */  cache      1, ($t0)
/* B99F4 800B8DF4 0109082B */  sltu       $at, $t0, $t1
/* B99F8 800B8DF8 1420FFFD */  bnez       $at, .L800B8DF0
/* B99FC 800B8DFC 25080010 */   addiu     $t0, $t0, 0x10
/* B9A00 800B8E00 03E00008 */  jr         $ra
/* B9A04 800B8E04 00000000 */   nop
/* B9A08 800B8E08 00000000 */  nop
/* B9A0C 800B8E0C 00000000 */  nop
