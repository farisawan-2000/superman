.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A7B90
/* A8790 800A7B90 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A8794 800A7B94 AFBF001C */  sw         $ra, 0x1c($sp)
/* A8798 800A7B98 AFA40038 */  sw         $a0, 0x38($sp)
/* A879C 800A7B9C AFA5003C */  sw         $a1, 0x3c($sp)
/* A87A0 800A7BA0 AFA60040 */  sw         $a2, 0x40($sp)
/* A87A4 800A7BA4 AFA70044 */  sw         $a3, 0x44($sp)
/* A87A8 800A7BA8 8FAE0048 */  lw         $t6, 0x48($sp)
/* A87AC 800A7BAC AFAE0034 */  sw         $t6, 0x34($sp)
/* A87B0 800A7BB0 8FAF0038 */  lw         $t7, 0x38($sp)
/* A87B4 800A7BB4 AFAF0030 */  sw         $t7, 0x30($sp)
/* A87B8 800A7BB8 8FB80030 */  lw         $t8, 0x30($sp)
/* A87BC 800A7BBC 8F19001C */  lw         $t9, 0x1c($t8)
/* A87C0 800A7BC0 AFB9002C */  sw         $t9, 0x2c($sp)
/* A87C4 800A7BC4 8FA80034 */  lw         $t0, 0x34($sp)
/* A87C8 800A7BC8 25090008 */  addiu      $t1, $t0, 8
/* A87CC 800A7BCC AFA90034 */  sw         $t1, 0x34($sp)
/* A87D0 800A7BD0 AFA80024 */  sw         $t0, 0x24($sp)
/* A87D4 800A7BD4 8FAB0024 */  lw         $t3, 0x24($sp)
/* A87D8 800A7BD8 3C0A0200 */  lui        $t2, 0x200
/* A87DC 800A7BDC 354A06C0 */  ori        $t2, $t2, 0x6c0
/* A87E0 800A7BE0 AD6A0000 */  sw         $t2, ($t3)
/* A87E4 800A7BE4 8FAC0040 */  lw         $t4, 0x40($sp)
/* A87E8 800A7BE8 8FAE0024 */  lw         $t6, 0x24($sp)
/* A87EC 800A7BEC 000C6840 */  sll        $t5, $t4, 1
/* A87F0 800A7BF0 ADCD0004 */  sw         $t5, 4($t6)
/* A87F4 800A7BF4 8FAF0034 */  lw         $t7, 0x34($sp)
/* A87F8 800A7BF8 25F80008 */  addiu      $t8, $t7, 8
/* A87FC 800A7BFC AFB80034 */  sw         $t8, 0x34($sp)
/* A8800 800A7C00 AFAF0020 */  sw         $t7, 0x20($sp)
/* A8804 800A7C04 8FA80020 */  lw         $t0, 0x20($sp)
/* A8808 800A7C08 3C190200 */  lui        $t9, 0x200
/* A880C 800A7C0C 37390800 */  ori        $t9, $t9, 0x800
/* A8810 800A7C10 AD190000 */  sw         $t9, ($t0)
/* A8814 800A7C14 8FA90040 */  lw         $t1, 0x40($sp)
/* A8818 800A7C18 8FAB0020 */  lw         $t3, 0x20($sp)
/* A881C 800A7C1C 00095040 */  sll        $t2, $t1, 1
/* A8820 800A7C20 AD6A0004 */  sw         $t2, 4($t3)
/* A8824 800A7C24 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8828 800A7C28 AFA00028 */  sw         $zero, 0x28($sp)
/* A882C 800A7C2C 8D8D0014 */  lw         $t5, 0x14($t4)
/* A8830 800A7C30 19A00017 */  blez       $t5, .L800A7C90
/* A8834 800A7C34 00000000 */   nop
.L800A7C38:
/* A8838 800A7C38 8FAF0028 */  lw         $t7, 0x28($sp)
/* A883C 800A7C3C 8FAE002C */  lw         $t6, 0x2c($sp)
/* A8840 800A7C40 8FA90034 */  lw         $t1, 0x34($sp)
/* A8844 800A7C44 000FC080 */  sll        $t8, $t7, 2
/* A8848 800A7C48 01D8C821 */  addu       $t9, $t6, $t8
/* A884C 800A7C4C 8F280000 */  lw         $t0, ($t9)
/* A8850 800A7C50 AFA90010 */  sw         $t1, 0x10($sp)
/* A8854 800A7C54 8FA5003C */  lw         $a1, 0x3c($sp)
/* A8858 800A7C58 8D190004 */  lw         $t9, 4($t0)
/* A885C 800A7C5C 8FA60040 */  lw         $a2, 0x40($sp)
/* A8860 800A7C60 8FA70044 */  lw         $a3, 0x44($sp)
/* A8864 800A7C64 0320F809 */  jalr       $t9
/* A8868 800A7C68 01002025 */   or        $a0, $t0, $zero
/* A886C 800A7C6C AFA20034 */  sw         $v0, 0x34($sp)
/* A8870 800A7C70 8FAA0028 */  lw         $t2, 0x28($sp)
/* A8874 800A7C74 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8878 800A7C78 254B0001 */  addiu      $t3, $t2, 1
/* A887C 800A7C7C AFAB0028 */  sw         $t3, 0x28($sp)
/* A8880 800A7C80 8D8D0014 */  lw         $t5, 0x14($t4)
/* A8884 800A7C84 016D082A */  slt        $at, $t3, $t5
/* A8888 800A7C88 1420FFEB */  bnez       $at, .L800A7C38
/* A888C 800A7C8C 00000000 */   nop
.L800A7C90:
/* A8890 800A7C90 10000003 */  b          .L800A7CA0
/* A8894 800A7C94 8FA20034 */   lw        $v0, 0x34($sp)
/* A8898 800A7C98 10000001 */  b          .L800A7CA0
/* A889C 800A7C9C 00000000 */   nop
.L800A7CA0:
/* A88A0 800A7CA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A88A4 800A7CA4 27BD0038 */  addiu      $sp, $sp, 0x38
/* A88A8 800A7CA8 03E00008 */  jr         $ra
/* A88AC 800A7CAC 00000000 */   nop

glabel func_800A7CB0
/* A88B0 800A7CB0 27BDFFF8 */  addiu      $sp, $sp, -8
/* A88B4 800A7CB4 AFA40004 */  sw         $a0, 4($sp)
/* A88B8 800A7CB8 8FAE0004 */  lw         $t6, 4($sp)
/* A88BC 800A7CBC 8DCF001C */  lw         $t7, 0x1c($t6)
/* A88C0 800A7CC0 AFAF0000 */  sw         $t7, ($sp)
/* A88C4 800A7CC4 24010002 */  addiu      $at, $zero, 2
/* A88C8 800A7CC8 14A1000F */  bne        $a1, $at, .L800A7D08
/* A88CC 800A7CCC 00000000 */   nop
/* A88D0 800A7CD0 10000001 */  b          .L800A7CD8
/* A88D4 800A7CD4 00000000 */   nop
.L800A7CD8:
/* A88D8 800A7CD8 8FB90004 */  lw         $t9, 4($sp)
/* A88DC 800A7CDC 8FB80000 */  lw         $t8, ($sp)
/* A88E0 800A7CE0 8F280014 */  lw         $t0, 0x14($t9)
/* A88E4 800A7CE4 00084880 */  sll        $t1, $t0, 2
/* A88E8 800A7CE8 03095021 */  addu       $t2, $t8, $t1
/* A88EC 800A7CEC AD460000 */  sw         $a2, ($t2)
/* A88F0 800A7CF0 8FAB0004 */  lw         $t3, 4($sp)
/* A88F4 800A7CF4 8D6C0014 */  lw         $t4, 0x14($t3)
/* A88F8 800A7CF8 258D0001 */  addiu      $t5, $t4, 1
/* A88FC 800A7CFC AD6D0014 */  sw         $t5, 0x14($t3)
/* A8900 800A7D00 10000003 */  b          .L800A7D10
/* A8904 800A7D04 00000000 */   nop
.L800A7D08:
/* A8908 800A7D08 10000001 */  b          .L800A7D10
/* A890C 800A7D0C 00000000 */   nop
.L800A7D10:
/* A8910 800A7D10 10000003 */  b          .L800A7D20
/* A8914 800A7D14 00001025 */   or        $v0, $zero, $zero
/* A8918 800A7D18 10000001 */  b          .L800A7D20
/* A891C 800A7D1C 00000000 */   nop
.L800A7D20:
/* A8920 800A7D20 03E00008 */  jr         $ra
/* A8924 800A7D24 27BD0008 */   addiu     $sp, $sp, 8
/* A8928 800A7D28 00000000 */  nop
/* A892C 800A7D2C 00000000 */  nop
