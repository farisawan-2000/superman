.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A0530
/* A1130 800A0530 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A1134 800A0534 AFBF001C */  sw         $ra, 0x1c($sp)
/* A1138 800A0538 AFA40030 */  sw         $a0, 0x30($sp)
/* A113C 800A053C AFA50034 */  sw         $a1, 0x34($sp)
/* A1140 800A0540 AFB00018 */  sw         $s0, 0x18($sp)
/* A1144 800A0544 AFA00028 */  sw         $zero, 0x28($sp)
/* A1148 800A0548 3C0E800D */  lui        $t6, %hi(D_800CC2C0)
/* A114C 800A054C 8DCEC2C0 */  lw         $t6, %lo(D_800CC2C0)($t6)
/* A1150 800A0550 15C0000F */  bnez       $t6, .L800A0590
/* A1154 800A0554 00000000 */   nop
/* A1158 800A0558 3C04801A */  lui        $a0, %hi(D_801A1DB0)
/* A115C 800A055C 3C05801A */  lui        $a1, %hi(D_801A1DC8)
/* A1160 800A0560 24A51DC8 */  addiu      $a1, $a1, %lo(D_801A1DC8)
/* A1164 800A0564 24841DB0 */  addiu      $a0, $a0, %lo(D_801A1DB0)
/* A1168 800A0568 0C02B42C */  jal        func_800AD0B0
/* A116C 800A056C 24060001 */   addiu     $a2, $zero, 1
/* A1170 800A0570 3C05801A */  lui        $a1, %hi(D_801A1DB0)
/* A1174 800A0574 24A51DB0 */  addiu      $a1, $a1, %lo(D_801A1DB0)
/* A1178 800A0578 2404000F */  addiu      $a0, $zero, 0xf
/* A117C 800A057C 0C02AD08 */  jal        func_800AB420
/* A1180 800A0580 00003025 */   or        $a2, $zero, $zero
/* A1184 800A0584 240F0001 */  addiu      $t7, $zero, 1
/* A1188 800A0588 3C01800D */  lui        $at, %hi(D_800CC2C0)
/* A118C 800A058C AC2FC2C0 */  sw         $t7, %lo(D_800CC2C0)($at)
.L800A0590:
/* A1190 800A0590 8FB80030 */  lw         $t8, 0x30($sp)
/* A1194 800A0594 3C01801A */  lui        $at, %hi(D_801A1DCC)
/* A1198 800A0598 AC381DCC */  sw         $t8, %lo(D_801A1DCC)($at)
/* A119C 800A059C 8FB90034 */  lw         $t9, 0x34($sp)
/* A11A0 800A05A0 3C01801A */  lui        $at, %hi(D_801A1DD0)
/* A11A4 800A05A4 AC391DD0 */  sw         $t9, %lo(D_801A1DD0)($at)
/* A11A8 800A05A8 8FA80028 */  lw         $t0, 0x28($sp)
/* A11AC 800A05AC 1500000C */  bnez       $t0, .L800A05E0
/* A11B0 800A05B0 00000000 */   nop
.L800A05B4:
/* A11B4 800A05B4 27A4002C */  addiu      $a0, $sp, 0x2c
/* A11B8 800A05B8 24050001 */  addiu      $a1, $zero, 1
/* A11BC 800A05BC 0C02C4C8 */  jal        func_800B1320
/* A11C0 800A05C0 24060005 */   addiu     $a2, $zero, 5
/* A11C4 800A05C4 8FA90028 */  lw         $t1, 0x28($sp)
/* A11C8 800A05C8 00408025 */  or         $s0, $v0, $zero
/* A11CC 800A05CC 01305021 */  addu       $t2, $t1, $s0
/* A11D0 800A05D0 AFAA0028 */  sw         $t2, 0x28($sp)
/* A11D4 800A05D4 8FAB0028 */  lw         $t3, 0x28($sp)
/* A11D8 800A05D8 1160FFF6 */  beqz       $t3, .L800A05B4
/* A11DC 800A05DC 00000000 */   nop
.L800A05E0:
/* A11E0 800A05E0 3C04801A */  lui        $a0, %hi(D_801A1DB0)
/* A11E4 800A05E4 24841DB0 */  addiu      $a0, $a0, %lo(D_801A1DB0)
/* A11E8 800A05E8 00002825 */  or         $a1, $zero, $zero
/* A11EC 800A05EC 0C025D30 */  jal        func_800974C0
/* A11F0 800A05F0 24060001 */   addiu     $a2, $zero, 1
/* A11F4 800A05F4 10000003 */  b          .L800A0604
/* A11F8 800A05F8 00000000 */   nop
/* A11FC 800A05FC 10000001 */  b          .L800A0604
/* A1200 800A0600 00000000 */   nop
.L800A0604:
/* A1204 800A0604 8FBF001C */  lw         $ra, 0x1c($sp)
/* A1208 800A0608 8FB00018 */  lw         $s0, 0x18($sp)
/* A120C 800A060C 27BD0030 */  addiu      $sp, $sp, 0x30
/* A1210 800A0610 03E00008 */  jr         $ra
/* A1214 800A0614 00000000 */   nop
/* A1218 800A0618 00000000 */  nop
/* A121C 800A061C 00000000 */  nop
