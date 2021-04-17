.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C78C0
/* C84C0 800C78C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C84C4 800C78C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C84C8 800C78C8 8C820040 */  lw         $v0, 0x40($a0)
/* C84CC 800C78CC 240E0004 */  addiu      $t6, $zero, 4
/* C84D0 800C78D0 A7AE0020 */  sh         $t6, 0x20($sp)
/* C84D4 800C78D4 8C8F003C */  lw         $t7, 0x3c($a0)
/* C84D8 800C78D8 44856000 */  mtc1       $a1, $f12
/* C84DC 800C78DC 27A50020 */  addiu      $a1, $sp, 0x20
/* C84E0 800C78E0 000FC080 */  sll        $t8, $t7, 2
/* C84E4 800C78E4 030FC023 */  subu       $t8, $t8, $t7
/* C84E8 800C78E8 0018C100 */  sll        $t8, $t8, 4
/* C84EC 800C78EC 0302C821 */  addu       $t9, $t8, $v0
/* C84F0 800C78F0 AFB90024 */  sw         $t9, 0x24($sp)
/* C84F4 800C78F4 24840014 */  addiu      $a0, $a0, 0x14
/* C84F8 800C78F8 00003025 */  or         $a2, $zero, $zero
/* C84FC 800C78FC 0C03031B */  jal        func_800C0C6C
/* C8500 800C7900 E7AC0028 */   swc1      $f12, 0x28($sp)
/* C8504 800C7904 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8508 800C7908 27BD0030 */  addiu      $sp, $sp, 0x30
/* C850C 800C790C 03E00008 */  jr         $ra
/* C8510 800C7910 00000000 */   nop
/* C8514 800C7914 00000000 */  nop
/* C8518 800C7918 00000000 */  nop
/* C851C 800C791C 00000000 */  nop
