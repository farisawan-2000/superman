.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1630
/* B2230 800B1630 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B2234 800B1634 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2238 800B1638 AFA40030 */  sw         $a0, 0x30($sp)
/* B223C 800B163C AFA50034 */  sw         $a1, 0x34($sp)
/* B2240 800B1640 8FAE0030 */  lw         $t6, 0x30($sp)
/* B2244 800B1644 8DCF0040 */  lw         $t7, 0x40($t6)
/* B2248 800B1648 AFAF001C */  sw         $t7, 0x1c($sp)
/* B224C 800B164C 8FB80030 */  lw         $t8, 0x30($sp)
/* B2250 800B1650 8F19003C */  lw         $t9, 0x3c($t8)
/* B2254 800B1654 8F080044 */  lw         $t0, 0x44($t8)
/* B2258 800B1658 0328082A */  slt        $at, $t9, $t0
/* B225C 800B165C 10200003 */  beqz       $at, .L800B166C
/* B2260 800B1660 00000000 */   nop
/* B2264 800B1664 0721000A */  bgez       $t9, .L800B1690
/* B2268 800B1668 00000000 */   nop
.L800B166C:
/* B226C 800B166C 8FA90030 */  lw         $t1, 0x30($sp)
/* B2270 800B1670 24040070 */  addiu      $a0, $zero, 0x70
/* B2274 800B1674 24050002 */  addiu      $a1, $zero, 2
/* B2278 800B1678 8D270044 */  lw         $a3, 0x44($t1)
/* B227C 800B167C 8D26003C */  lw         $a2, 0x3c($t1)
/* B2280 800B1680 0C02B5EC */  jal        func_800AD7B0
/* B2284 800B1684 24E7FFFF */   addiu     $a3, $a3, -1
/* B2288 800B1688 10000014 */  b          .L800B16DC
/* B228C 800B168C 00000000 */   nop
.L800B1690:
/* B2290 800B1690 240A0002 */  addiu      $t2, $zero, 2
/* B2294 800B1694 A7AA0020 */  sh         $t2, 0x20($sp)
/* B2298 800B1698 93AB0037 */  lbu        $t3, 0x37($sp)
/* B229C 800B169C A3AB0028 */  sb         $t3, 0x28($sp)
/* B22A0 800B16A0 8FAC0030 */  lw         $t4, 0x30($sp)
/* B22A4 800B16A4 8FAF001C */  lw         $t7, 0x1c($sp)
/* B22A8 800B16A8 8D8D003C */  lw         $t5, 0x3c($t4)
/* B22AC 800B16AC 000D7080 */  sll        $t6, $t5, 2
/* B22B0 800B16B0 01CD7023 */  subu       $t6, $t6, $t5
/* B22B4 800B16B4 000E7100 */  sll        $t6, $t6, 4
/* B22B8 800B16B8 01CFC021 */  addu       $t8, $t6, $t7
/* B22BC 800B16BC AFB80024 */  sw         $t8, 0x24($sp)
/* B22C0 800B16C0 8FA40030 */  lw         $a0, 0x30($sp)
/* B22C4 800B16C4 27A50020 */  addiu      $a1, $sp, 0x20
/* B22C8 800B16C8 00003025 */  or         $a2, $zero, $zero
/* B22CC 800B16CC 0C026E68 */  jal        func_8009B9A0
/* B22D0 800B16D0 24840014 */   addiu     $a0, $a0, 0x14
/* B22D4 800B16D4 10000001 */  b          .L800B16DC
/* B22D8 800B16D8 00000000 */   nop
.L800B16DC:
/* B22DC 800B16DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B22E0 800B16E0 27BD0030 */  addiu      $sp, $sp, 0x30
/* B22E4 800B16E4 03E00008 */  jr         $ra
/* B22E8 800B16E8 00000000 */   nop
/* B22EC 800B16EC 00000000 */  nop
