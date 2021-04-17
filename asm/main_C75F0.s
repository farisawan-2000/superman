.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C69F0
/* C75F0 800C69F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C75F4 800C69F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C75F8 800C69F8 0C033DD4 */  jal        func_800CF750
/* C75FC 800C69FC AFB00018 */   sw        $s0, 0x18($sp)
/* C7600 800C6A00 3C0E800E */  lui        $t6, %hi(D_800DB1F4)
/* C7604 800C6A04 8DCEB1F4 */  lw         $t6, %lo(D_800DB1F4)($t6)
/* C7608 800C6A08 00408025 */  or         $s0, $v0, $zero
/* C760C 800C6A0C 02002025 */  or         $a0, $s0, $zero
/* C7610 800C6A10 8DCF0004 */  lw         $t7, 4($t6)
/* C7614 800C6A14 0C033DDC */  jal        func_800CF770
/* C7618 800C6A18 AFAF0020 */   sw        $t7, 0x20($sp)
/* C761C 800C6A1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* C7620 800C6A20 8FA20020 */  lw         $v0, 0x20($sp)
/* C7624 800C6A24 8FB00018 */  lw         $s0, 0x18($sp)
/* C7628 800C6A28 03E00008 */  jr         $ra
/* C762C 800C6A2C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C6A30
/* C7630 800C6A30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C7634 800C6A34 AFBF0014 */  sw         $ra, 0x14($sp)
/* C7638 800C6A38 AFA40018 */  sw         $a0, 0x18($sp)
/* C763C 800C6A3C AFA5001C */  sw         $a1, 0x1c($sp)
/* C7640 800C6A40 AFA60020 */  sw         $a2, 0x20($sp)
/* C7644 800C6A44 0C0336C0 */  jal        func_800CDB00
/* C7648 800C6A48 AFA70024 */   sw        $a3, 0x24($sp)
/* C764C 800C6A4C 10400003 */  beqz       $v0, .L800C6A5C
/* C7650 800C6A50 00000000 */   nop
/* C7654 800C6A54 10000015 */  b          .L800C6AAC
/* C7658 800C6A58 2402FFFF */   addiu     $v0, $zero, -1
.L800C6A5C:
/* C765C 800C6A5C 8FAE001C */  lw         $t6, 0x1c($sp)
/* C7660 800C6A60 3C0FA404 */  lui        $t7, 0xa404
/* C7664 800C6A64 ADEE0000 */  sw         $t6, ($t7)
/* C7668 800C6A68 0C030C38 */  jal        func_800C30E0
/* C766C 800C6A6C 8FA40020 */   lw        $a0, 0x20($sp)
/* C7670 800C6A70 3C18A404 */  lui        $t8, %hi(D_A4040004)
/* C7674 800C6A74 AF020004 */  sw         $v0, %lo(D_A4040004)($t8)
/* C7678 800C6A78 8FB90018 */  lw         $t9, 0x18($sp)
/* C767C 800C6A7C 17200006 */  bnez       $t9, .L800C6A98
/* C7680 800C6A80 00000000 */   nop
/* C7684 800C6A84 8FA80024 */  lw         $t0, 0x24($sp)
/* C7688 800C6A88 3C0AA404 */  lui        $t2, %hi(D_A404000C)
/* C768C 800C6A8C 2509FFFF */  addiu      $t1, $t0, -1
/* C7690 800C6A90 10000005 */  b          .L800C6AA8
/* C7694 800C6A94 AD49000C */   sw        $t1, %lo(D_A404000C)($t2)
.L800C6A98:
/* C7698 800C6A98 8FAB0024 */  lw         $t3, 0x24($sp)
/* C769C 800C6A9C 3C0DA404 */  lui        $t5, %hi(D_A4040008)
/* C76A0 800C6AA0 256CFFFF */  addiu      $t4, $t3, -1
/* C76A4 800C6AA4 ADAC0008 */  sw         $t4, %lo(D_A4040008)($t5)
.L800C6AA8:
/* C76A8 800C6AA8 00001025 */  or         $v0, $zero, $zero
.L800C6AAC:
/* C76AC 800C6AAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C76B0 800C6AB0 27BD0018 */  addiu      $sp, $sp, 0x18
/* C76B4 800C6AB4 03E00008 */  jr         $ra
/* C76B8 800C6AB8 00000000 */   nop
/* C76BC 800C6ABC 00000000 */  nop
