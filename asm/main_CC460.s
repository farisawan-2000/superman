.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CB860
/* CC460 800CB860 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CC464 800CB864 3C0E800E */  lui        $t6, %hi(D_800DB0E0)
/* CC468 800CB868 8DCEB0E0 */  lw         $t6, %lo(D_800DB0E0)($t6)
/* CC46C 800CB86C AFBF001C */  sw         $ra, 0x1c($sp)
/* CC470 800CB870 AFA40030 */  sw         $a0, 0x30($sp)
/* CC474 800CB874 AFA50034 */  sw         $a1, 0x34($sp)
/* CC478 800CB878 AFA60038 */  sw         $a2, 0x38($sp)
/* CC47C 800CB87C 15C00056 */  bnez       $t6, .L800CB9D8
/* CC480 800CB880 AFA7003C */   sw        $a3, 0x3c($sp)
/* CC484 800CB884 8FA40034 */  lw         $a0, 0x34($sp)
/* CC488 800CB888 8FA50038 */  lw         $a1, 0x38($sp)
/* CC48C 800CB88C 0C033544 */  jal        func_800CD510
/* CC490 800CB890 8FA6003C */   lw        $a2, 0x3c($sp)
/* CC494 800CB894 3C048014 */  lui        $a0, %hi(D_80146AC0)
/* CC498 800CB898 3C058014 */  lui        $a1, %hi(D_80146AD8)
/* CC49C 800CB89C 24A56AD8 */  addiu      $a1, $a1, %lo(D_80146AD8)
/* CC4A0 800CB8A0 24846AC0 */  addiu      $a0, $a0, %lo(D_80146AC0)
/* CC4A4 800CB8A4 0C033544 */  jal        func_800CD510
/* CC4A8 800CB8A8 24060001 */   addiu     $a2, $zero, 1
/* CC4AC 800CB8AC 3C0F800E */  lui        $t7, %hi(D_800DB110)
/* CC4B0 800CB8B0 8DEFB110 */  lw         $t7, %lo(D_800DB110)($t7)
/* CC4B4 800CB8B4 15E00003 */  bnez       $t7, .L800CB8C4
/* CC4B8 800CB8B8 00000000 */   nop
/* CC4BC 800CB8BC 0C032EBC */  jal        func_800CBAF0
/* CC4C0 800CB8C0 00000000 */   nop
.L800CB8C4:
/* CC4C4 800CB8C4 3C058014 */  lui        $a1, %hi(D_80146AC0)
/* CC4C8 800CB8C8 3C062222 */  lui        $a2, 0x2222
/* CC4CC 800CB8CC 34C62222 */  ori        $a2, $a2, 0x2222
/* CC4D0 800CB8D0 24A56AC0 */  addiu      $a1, $a1, %lo(D_80146AC0)
/* CC4D4 800CB8D4 0C03304C */  jal        func_800CC130
/* CC4D8 800CB8D8 24040008 */   addiu     $a0, $zero, 8
/* CC4DC 800CB8DC 2418FFFF */  addiu      $t8, $zero, -1
/* CC4E0 800CB8E0 AFB80028 */  sw         $t8, 0x28($sp)
/* CC4E4 800CB8E4 0C033758 */  jal        func_800CDD60
/* CC4E8 800CB8E8 00002025 */   or        $a0, $zero, $zero
/* CC4EC 800CB8EC AFA20024 */  sw         $v0, 0x24($sp)
/* CC4F0 800CB8F0 8FB90024 */  lw         $t9, 0x24($sp)
/* CC4F4 800CB8F4 8FA80030 */  lw         $t0, 0x30($sp)
/* CC4F8 800CB8F8 0328082A */  slt        $at, $t9, $t0
/* CC4FC 800CB8FC 10200005 */  beqz       $at, .L800CB914
/* CC500 800CB900 00000000 */   nop
/* CC504 800CB904 AFB90028 */  sw         $t9, 0x28($sp)
/* CC508 800CB908 00002025 */  or         $a0, $zero, $zero
/* CC50C 800CB90C 0C033720 */  jal        func_800CDC80
/* CC510 800CB910 01002825 */   or        $a1, $t0, $zero
.L800CB914:
/* CC514 800CB914 0C033DD4 */  jal        func_800CF750
/* CC518 800CB918 00000000 */   nop
/* CC51C 800CB91C 3C01800E */  lui        $at, 0x800e
/* CC520 800CB920 8FAB0034 */  lw         $t3, 0x34($sp)
/* CC524 800CB924 3C0A8014 */  lui        $t2, %hi(D_80145910)
/* CC528 800CB928 3C0C8014 */  lui        $t4, %hi(D_80146AC0)
/* CC52C 800CB92C 24090001 */  addiu      $t1, $zero, 1
/* CC530 800CB930 254A5910 */  addiu      $t2, $t2, %lo(D_80145910)
/* CC534 800CB934 258C6AC0 */  addiu      $t4, $t4, %lo(D_80146AC0)
/* CC538 800CB938 AC29B0E0 */  sw         $t1, -0x4f20($at)
/* CC53C 800CB93C AC2AB0E4 */  sw         $t2, -0x4f1c($at)
/* CC540 800CB940 AC2CB0EC */  sw         $t4, -0x4f14($at)
/* CC544 800CB944 3C188014 */  lui        $t8, 0x8014
/* CC548 800CB948 AC2BB0E8 */  sw         $t3, -0x4f18($at)
/* CC54C 800CB94C 8FA80030 */  lw         $t0, 0x30($sp)
/* CC550 800CB950 3C01800E */  lui        $at, 0x800e
/* CC554 800CB954 3C0D8014 */  lui        $t5, %hi(D_80146B68)
/* CC558 800CB958 3C0E800D */  lui        $t6, %hi(D_800CC050)
/* CC55C 800CB95C 3C0F800D */  lui        $t7, %hi(func_800CDFF0)
/* CC560 800CB960 27185AC0 */  addiu      $t8, $t8, 0x5ac0
/* CC564 800CB964 25AD6B68 */  addiu      $t5, $t5, %lo(D_80146B68)
/* CC568 800CB968 25CEC050 */  addiu      $t6, $t6, %lo(D_800CC050)
/* CC56C 800CB96C 25EFDFF0 */  addiu      $t7, $t7, %lo(func_800CDFF0)
/* CC570 800CB970 27191000 */  addiu      $t9, $t8, 0x1000
/* CC574 800CB974 3C06800D */  lui        $a2, 0x800d
/* CC578 800CB978 3C07800E */  lui        $a3, %hi(D_800DB0E0)
/* CC57C 800CB97C AFA2002C */  sw         $v0, 0x2c($sp)
/* CC580 800CB980 AC2DB0F0 */  sw         $t5, -0x4f10($at)
/* CC584 800CB984 AC2EB0F4 */  sw         $t6, -0x4f0c($at)
/* CC588 800CB988 AC2FB0F8 */  sw         $t7, -0x4f08($at)
/* CC58C 800CB98C 24E7B0E0 */  addiu      $a3, $a3, %lo(D_800DB0E0)
/* CC590 800CB990 24C6BBC0 */  addiu      $a2, $a2, -0x4440
/* CC594 800CB994 AFB90010 */  sw         $t9, 0x10($sp)
/* CC598 800CB998 01402025 */  or         $a0, $t2, $zero
/* CC59C 800CB99C 00002825 */  or         $a1, $zero, $zero
/* CC5A0 800CB9A0 0C02FF3C */  jal        func_800BFCF0
/* CC5A4 800CB9A4 AFA80014 */   sw        $t0, 0x14($sp)
/* CC5A8 800CB9A8 3C048014 */  lui        $a0, %hi(D_80145910)
/* CC5AC 800CB9AC 0C034CE8 */  jal        func_800D33A0
/* CC5B0 800CB9B0 24845910 */   addiu     $a0, $a0, %lo(D_80145910)
/* CC5B4 800CB9B4 0C033DDC */  jal        func_800CF770
/* CC5B8 800CB9B8 8FA4002C */   lw        $a0, 0x2c($sp)
/* CC5BC 800CB9BC 8FA90028 */  lw         $t1, 0x28($sp)
/* CC5C0 800CB9C0 2401FFFF */  addiu      $at, $zero, -1
/* CC5C4 800CB9C4 11210004 */  beq        $t1, $at, .L800CB9D8
/* CC5C8 800CB9C8 00000000 */   nop
/* CC5CC 800CB9CC 00002025 */  or         $a0, $zero, $zero
/* CC5D0 800CB9D0 0C033720 */  jal        func_800CDC80
/* CC5D4 800CB9D4 01202825 */   or        $a1, $t1, $zero
.L800CB9D8:
/* CC5D8 800CB9D8 8FBF001C */  lw         $ra, 0x1c($sp)
/* CC5DC 800CB9DC 27BD0030 */  addiu      $sp, $sp, 0x30
/* CC5E0 800CB9E0 03E00008 */  jr         $ra
/* CC5E4 800CB9E4 00000000 */   nop
/* CC5E8 800CB9E8 00000000 */  nop
/* CC5EC 800CB9EC 00000000 */  nop
