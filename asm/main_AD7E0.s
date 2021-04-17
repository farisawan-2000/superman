.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ACBE0
/* AD7E0 800ACBE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AD7E4 800ACBE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD7E8 800ACBE8 AFA40020 */  sw         $a0, 0x20($sp)
/* AD7EC 800ACBEC AFA50024 */  sw         $a1, 0x24($sp)
/* AD7F0 800ACBF0 AFA60028 */  sw         $a2, 0x28($sp)
/* AD7F4 800ACBF4 AFA7002C */  sw         $a3, 0x2c($sp)
/* AD7F8 800ACBF8 27AE0024 */  addiu      $t6, $sp, 0x24
/* AD7FC 800ACBFC 25CF0004 */  addiu      $t7, $t6, 4
/* AD800 800ACC00 AFAF0018 */  sw         $t7, 0x18($sp)
/* AD804 800ACC04 3C04800B */  lui        $a0, %hi(func_800ACC5C)
/* AD808 800ACC08 2484CC5C */  addiu      $a0, $a0, %lo(func_800ACC5C)
/* AD80C 800ACC0C 8FA50020 */  lw         $a1, 0x20($sp)
/* AD810 800ACC10 8FA60024 */  lw         $a2, 0x24($sp)
/* AD814 800ACC14 0C02AE5C */  jal        func_800AB970
/* AD818 800ACC18 8FA70018 */   lw        $a3, 0x18($sp)
/* AD81C 800ACC1C AFA2001C */  sw         $v0, 0x1c($sp)
/* AD820 800ACC20 8FB8001C */  lw         $t8, 0x1c($sp)
/* AD824 800ACC24 07000005 */  bltz       $t8, .L800ACC3C
/* AD828 800ACC28 00000000 */   nop
/* AD82C 800ACC2C 8FB90020 */  lw         $t9, 0x20($sp)
/* AD830 800ACC30 8FA8001C */  lw         $t0, 0x1c($sp)
/* AD834 800ACC34 03284821 */  addu       $t1, $t9, $t0
/* AD838 800ACC38 A1200000 */  sb         $zero, ($t1)
.L800ACC3C:
/* AD83C 800ACC3C 10000003 */  b          .L800ACC4C
/* AD840 800ACC40 8FA2001C */   lw        $v0, 0x1c($sp)
/* AD844 800ACC44 10000001 */  b          .L800ACC4C
/* AD848 800ACC48 00000000 */   nop
.L800ACC4C:
/* AD84C 800ACC4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD850 800ACC50 27BD0020 */  addiu      $sp, $sp, 0x20
/* AD854 800ACC54 03E00008 */  jr         $ra
/* AD858 800ACC58 00000000 */   nop

glabel func_800ACC5C
/* AD85C 800ACC5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AD860 800ACC60 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD864 800ACC64 AFA40018 */  sw         $a0, 0x18($sp)
/* AD868 800ACC68 AFA5001C */  sw         $a1, 0x1c($sp)
/* AD86C 800ACC6C AFA60020 */  sw         $a2, 0x20($sp)
/* AD870 800ACC70 8FA40018 */  lw         $a0, 0x18($sp)
/* AD874 800ACC74 8FA5001C */  lw         $a1, 0x1c($sp)
/* AD878 800ACC78 0C02B415 */  jal        func_800AD054
/* AD87C 800ACC7C 8FA60020 */   lw        $a2, 0x20($sp)
/* AD880 800ACC80 8FAE0020 */  lw         $t6, 0x20($sp)
/* AD884 800ACC84 10000003 */  b          .L800ACC94
/* AD888 800ACC88 004E1021 */   addu      $v0, $v0, $t6
/* AD88C 800ACC8C 10000001 */  b          .L800ACC94
/* AD890 800ACC90 00000000 */   nop
.L800ACC94:
/* AD894 800ACC94 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD898 800ACC98 27BD0018 */  addiu      $sp, $sp, 0x18
/* AD89C 800ACC9C 03E00008 */  jr         $ra
/* AD8A0 800ACCA0 00000000 */   nop
/* AD8A4 800ACCA4 00000000 */  nop
/* AD8A8 800ACCA8 00000000 */  nop
/* AD8AC 800ACCAC 00000000 */  nop
