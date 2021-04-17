.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3CB0
/* C48B0 800C3CB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C48B4 800C3CB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C48B8 800C3CB8 AFA50034 */  sw         $a1, 0x34($sp)
/* C48BC 800C3CBC 8C820040 */  lw         $v0, 0x40($a0)
/* C48C0 800C3CC0 240E0008 */  addiu      $t6, $zero, 8
/* C48C4 800C3CC4 A7AE0020 */  sh         $t6, 0x20($sp)
/* C48C8 800C3CC8 8C8F003C */  lw         $t7, 0x3c($a0)
/* C48CC 800C3CCC 00A04025 */  or         $t0, $a1, $zero
/* C48D0 800C3CD0 A3A80028 */  sb         $t0, 0x28($sp)
/* C48D4 800C3CD4 000FC080 */  sll        $t8, $t7, 2
/* C48D8 800C3CD8 030FC023 */  subu       $t8, $t8, $t7
/* C48DC 800C3CDC 0018C100 */  sll        $t8, $t8, 4
/* C48E0 800C3CE0 0302C821 */  addu       $t9, $t8, $v0
/* C48E4 800C3CE4 AFB90024 */  sw         $t9, 0x24($sp)
/* C48E8 800C3CE8 27A50020 */  addiu      $a1, $sp, 0x20
/* C48EC 800C3CEC 24840014 */  addiu      $a0, $a0, 0x14
/* C48F0 800C3CF0 0C03031B */  jal        func_800C0C6C
/* C48F4 800C3CF4 00003025 */   or        $a2, $zero, $zero
/* C48F8 800C3CF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C48FC 800C3CFC 27BD0030 */  addiu      $sp, $sp, 0x30
/* C4900 800C3D00 03E00008 */  jr         $ra
/* C4904 800C3D04 00000000 */   nop
/* C4908 800C3D08 00000000 */  nop
/* C490C 800C3D0C 00000000 */  nop
