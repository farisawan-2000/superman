.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AF300
/* AFF00 800AF300 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AFF04 800AF304 AFBF001C */  sw         $ra, 0x1c($sp)
/* AFF08 800AF308 AFA40028 */  sw         $a0, 0x28($sp)
/* AFF0C 800AF30C AFB00018 */  sw         $s0, 0x18($sp)
/* AFF10 800AF310 0C02C0C8 */  jal        func_800B0320
/* AFF14 800AF314 00000000 */   nop
/* AFF18 800AF318 00408025 */  or         $s0, $v0, $zero
/* AFF1C 800AF31C 3C0E800D */  lui        $t6, %hi(D_800CC2A0)
/* AFF20 800AF320 8DCEC2A0 */  lw         $t6, %lo(D_800CC2A0)($t6)
/* AFF24 800AF324 8FAF0028 */  lw         $t7, 0x28($sp)
/* AFF28 800AF328 3C01800D */  lui        $at, %hi(D_800CC2A0)
/* AFF2C 800AF32C 01CFC025 */  or         $t8, $t6, $t7
/* AFF30 800AF330 AC38C2A0 */  sw         $t8, %lo(D_800CC2A0)($at)
/* AFF34 800AF334 0C02C0D0 */  jal        func_800B0340
/* AFF38 800AF338 02002025 */   or        $a0, $s0, $zero
/* AFF3C 800AF33C 10000001 */  b          .L800AF344
/* AFF40 800AF340 00000000 */   nop
.L800AF344:
/* AFF44 800AF344 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFF48 800AF348 8FB00018 */  lw         $s0, 0x18($sp)
/* AFF4C 800AF34C 27BD0028 */  addiu      $sp, $sp, 0x28
/* AFF50 800AF350 03E00008 */  jr         $ra
/* AFF54 800AF354 00000000 */   nop
/* AFF58 800AF358 00000000 */  nop
/* AFF5C 800AF35C 00000000 */  nop
