.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B35B0
/* B41B0 800B35B0 00001025 */  or         $v0, $zero, $zero
/* B41B4 800B35B4 3C08A404 */  lui        $t0, %hi(D_A4040010)
/* B41B8 800B35B8 8D080010 */  lw         $t0, %lo(D_A4040010)($t0)
/* B41BC 800B35BC 31080003 */  andi       $t0, $t0, 3
/* B41C0 800B35C0 15000002 */  bnez       $t0, .L800B35CC
/* B41C4 800B35C4 00000000 */   nop
/* B41C8 800B35C8 34420001 */  ori        $v0, $v0, 1
.L800B35CC:
/* B41CC 800B35CC 03E00008 */  jr         $ra
/* B41D0 800B35D0 00000000 */   nop

glabel func_800B35D4
/* B41D4 800B35D4 3C04A404 */  lui        $a0, 0xa404
/* B41D8 800B35D8 34840018 */  ori        $a0, $a0, 0x18
.L800B35DC:
/* B41DC 800B35DC 8C820000 */  lw         $v0, ($a0)
/* B41E0 800B35E0 1440FFFE */  bnez       $v0, .L800B35DC
/* B41E4 800B35E4 00000000 */   nop
/* B41E8 800B35E8 24050082 */  addiu      $a1, $zero, 0x82
/* B41EC 800B35EC 3C04A404 */  lui        $a0, 0xa404
/* B41F0 800B35F0 34840010 */  ori        $a0, $a0, 0x10
/* B41F4 800B35F4 AC850000 */  sw         $a1, ($a0)
.L800B35F8:
/* B41F8 800B35F8 3C04A404 */  lui        $a0, 0xa404
/* B41FC 800B35FC 34840010 */  ori        $a0, $a0, 0x10
/* B4200 800B3600 8C820000 */  lw         $v0, ($a0)
/* B4204 800B3604 30420003 */  andi       $v0, $v0, 3
/* B4208 800B3608 1040FFFB */  beqz       $v0, .L800B35F8
/* B420C 800B360C 00000000 */   nop
/* B4210 800B3610 03E00008 */  jr         $ra
/* B4214 800B3614 00000000 */   nop

glabel func_800B3618
/* B4218 800B3618 3C04A404 */  lui        $a0, 0xa404
/* B421C 800B361C 34840010 */  ori        $a0, $a0, 0x10
/* B4220 800B3620 240500C5 */  addiu      $a1, $zero, 0xc5
/* B4224 800B3624 AC850000 */  sw         $a1, ($a0)
/* B4228 800B3628 1000FFF3 */  b          .L800B35F8
/* B422C 800B362C 00000000 */   nop

glabel func_800B3630
/* B4230 800B3630 3C04A430 */  lui        $a0, 0xa430
/* B4234 800B3634 3484000C */  ori        $a0, $a0, 0xc
/* B4238 800B3638 24050002 */  addiu      $a1, $zero, 2
/* B423C 800B363C AC850000 */  sw         $a1, ($a0)
/* B4240 800B3640 3C04A404 */  lui        $a0, 0xa404
/* B4244 800B3644 34840010 */  ori        $a0, $a0, 0x10
/* B4248 800B3648 24050125 */  addiu      $a1, $zero, 0x125
/* B424C 800B364C AC850000 */  sw         $a1, ($a0)
/* B4250 800B3650 03E00008 */  jr         $ra
/* B4254 800B3654 00000000 */   nop
/* B4258 800B3658 00000000 */  nop
/* B425C 800B365C 00000000 */  nop
