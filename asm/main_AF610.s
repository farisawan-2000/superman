.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AEA10
/* AF610 800AEA10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AF614 800AEA14 AFBF001C */  sw         $ra, 0x1c($sp)
/* AF618 800AEA18 AFB00018 */  sw         $s0, 0x18($sp)
/* AF61C 800AEA1C 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* AF620 800AEA20 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* AF624 800AEA24 15C00007 */  bnez       $t6, .L800AEA44
/* AF628 800AEA28 00000000 */   nop
/* AF62C 800AEA2C 2404004A */  addiu      $a0, $zero, 0x4a
/* AF630 800AEA30 0C02B5EC */  jal        func_800AD7B0
/* AF634 800AEA34 00002825 */   or        $a1, $zero, $zero
/* AF638 800AEA38 24020000 */  addiu      $v0, $zero, 0
/* AF63C 800AEA3C 10000020 */  b          .L800AEAC0
/* AF640 800AEA40 24030000 */   addiu     $v1, $zero, 0
.L800AEA44:
/* AF644 800AEA44 0C02C0C8 */  jal        func_800B0320
/* AF648 800AEA48 00000000 */   nop
/* AF64C 800AEA4C 00408025 */  or         $s0, $v0, $zero
/* AF650 800AEA50 0C02923C */  jal        func_800A48F0
/* AF654 800AEA54 00000000 */   nop
/* AF658 800AEA58 AFA20034 */  sw         $v0, 0x34($sp)
/* AF65C 800AEA5C 3C18801A */  lui        $t8, %hi(D_801A4288)
/* AF660 800AEA60 8F184288 */  lw         $t8, %lo(D_801A4288)($t8)
/* AF664 800AEA64 8FAF0034 */  lw         $t7, 0x34($sp)
/* AF668 800AEA68 01F8C823 */  subu       $t9, $t7, $t8
/* AF66C 800AEA6C AFB90030 */  sw         $t9, 0x30($sp)
/* AF670 800AEA70 3C08801A */  lui        $t0, %hi(D_801A4280)
/* AF674 800AEA74 3C09801A */  lui        $t1, %hi(D_801A4284)
/* AF678 800AEA78 8D294284 */  lw         $t1, %lo(D_801A4284)($t1)
/* AF67C 800AEA7C 8D084280 */  lw         $t0, %lo(D_801A4280)($t0)
/* AF680 800AEA80 AFA9002C */  sw         $t1, 0x2c($sp)
/* AF684 800AEA84 AFA80028 */  sw         $t0, 0x28($sp)
/* AF688 800AEA88 0C02C0D0 */  jal        func_800B0340
/* AF68C 800AEA8C 02002025 */   or        $a0, $s0, $zero
/* AF690 800AEA90 8FAA0030 */  lw         $t2, 0x30($sp)
/* AF694 800AEA94 8FAF002C */  lw         $t7, 0x2c($sp)
/* AF698 800AEA98 8FAE0028 */  lw         $t6, 0x28($sp)
/* AF69C 800AEA9C 01406825 */  or         $t5, $t2, $zero
/* AF6A0 800AEAA0 01AF1821 */  addu       $v1, $t5, $t7
/* AF6A4 800AEAA4 240C0000 */  addiu      $t4, $zero, 0
/* AF6A8 800AEAA8 006F082B */  sltu       $at, $v1, $t7
/* AF6AC 800AEAAC 002C1021 */  addu       $v0, $at, $t4
/* AF6B0 800AEAB0 10000003 */  b          .L800AEAC0
/* AF6B4 800AEAB4 004E1021 */   addu      $v0, $v0, $t6
/* AF6B8 800AEAB8 10000001 */  b          .L800AEAC0
/* AF6BC 800AEABC 00000000 */   nop
.L800AEAC0:
/* AF6C0 800AEAC0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AF6C4 800AEAC4 8FB00018 */  lw         $s0, 0x18($sp)
/* AF6C8 800AEAC8 27BD0038 */  addiu      $sp, $sp, 0x38
/* AF6CC 800AEACC 03E00008 */  jr         $ra
/* AF6D0 800AEAD0 00000000 */   nop
/* AF6D4 800AEAD4 00000000 */  nop
/* AF6D8 800AEAD8 00000000 */  nop
/* AF6DC 800AEADC 00000000 */  nop
