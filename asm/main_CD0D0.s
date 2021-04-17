.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC4D0
/* CD0D0 800CC4D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD0D4 800CC4D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD0D8 800CC4D8 0C03351C */  jal        func_800CD470
/* CD0DC 800CC4DC AFA60020 */   sw        $a2, 0x20($sp)
/* CD0E0 800CC4E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD0E4 800CC4E4 8FAE0020 */  lw         $t6, 0x20($sp)
/* CD0E8 800CC4E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* CD0EC 800CC4EC 03E00008 */  jr         $ra
/* CD0F0 800CC4F0 004E1021 */   addu      $v0, $v0, $t6

glabel func_800CC4F4
/* CD0F4 800CC4F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CD0F8 800CC4F8 AFA40020 */  sw         $a0, 0x20($sp)
/* CD0FC 800CC4FC AFBF0014 */  sw         $ra, 0x14($sp)
/* CD100 800CC500 AFA50024 */  sw         $a1, 0x24($sp)
/* CD104 800CC504 AFA60028 */  sw         $a2, 0x28($sp)
/* CD108 800CC508 AFA7002C */  sw         $a3, 0x2c($sp)
/* CD10C 800CC50C 3C04800D */  lui        $a0, %hi(func_800CC4D0)
/* CD110 800CC510 2484C4D0 */  addiu      $a0, $a0, %lo(func_800CC4D0)
/* CD114 800CC514 27A70028 */  addiu      $a3, $sp, 0x28
/* CD118 800CC518 8FA60024 */  lw         $a2, 0x24($sp)
/* CD11C 800CC51C 0C0332F0 */  jal        func_800CCBC0
/* CD120 800CC520 8FA50020 */   lw        $a1, 0x20($sp)
/* CD124 800CC524 04400004 */  bltz       $v0, .L800CC538
/* CD128 800CC528 00401825 */   or        $v1, $v0, $zero
/* CD12C 800CC52C 8FAE0020 */  lw         $t6, 0x20($sp)
/* CD130 800CC530 01C27821 */  addu       $t7, $t6, $v0
/* CD134 800CC534 A1E00000 */  sb         $zero, ($t7)
.L800CC538:
/* CD138 800CC538 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD13C 800CC53C 27BD0020 */  addiu      $sp, $sp, 0x20
/* CD140 800CC540 00601025 */  or         $v0, $v1, $zero
/* CD144 800CC544 03E00008 */  jr         $ra
/* CD148 800CC548 00000000 */   nop
/* CD14C 800CC54C 00000000 */  nop
