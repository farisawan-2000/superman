.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D0000
/* D0C00 800D0000 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D0C04 800D0004 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0C08 800D0008 AFA50034 */  sw         $a1, 0x34($sp)
/* D0C0C 800D000C 8C820040 */  lw         $v0, 0x40($a0)
/* D0C10 800D0010 00A04025 */  or         $t0, $a1, $zero
/* D0C14 800D0014 240E0002 */  addiu      $t6, $zero, 2
/* D0C18 800D0018 A7AE0020 */  sh         $t6, 0x20($sp)
/* D0C1C 800D001C A3A80028 */  sb         $t0, 0x28($sp)
/* D0C20 800D0020 8C8F003C */  lw         $t7, 0x3c($a0)
/* D0C24 800D0024 27A50020 */  addiu      $a1, $sp, 0x20
/* D0C28 800D0028 24840014 */  addiu      $a0, $a0, 0x14
/* D0C2C 800D002C 000FC080 */  sll        $t8, $t7, 2
/* D0C30 800D0030 030FC023 */  subu       $t8, $t8, $t7
/* D0C34 800D0034 0018C100 */  sll        $t8, $t8, 4
/* D0C38 800D0038 0302C821 */  addu       $t9, $t8, $v0
/* D0C3C 800D003C AFB90024 */  sw         $t9, 0x24($sp)
/* D0C40 800D0040 0C03031B */  jal        func_800C0C6C
/* D0C44 800D0044 00003025 */   or        $a2, $zero, $zero
/* D0C48 800D0048 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0C4C 800D004C 27BD0030 */  addiu      $sp, $sp, 0x30
/* D0C50 800D0050 03E00008 */  jr         $ra
/* D0C54 800D0054 00000000 */   nop
/* D0C58 800D0058 00000000 */  nop
/* D0C5C 800D005C 00000000 */  nop
