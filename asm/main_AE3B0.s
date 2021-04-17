.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AD7B0
/* AE3B0 800AD7B0 3C08800D */  lui        $t0, %hi(D_800CD554)
/* AE3B4 800AD7B4 8D08D554 */  lw         $t0, %lo(D_800CD554)($t0)
/* AE3B8 800AD7B8 11000003 */  beqz       $t0, .L800AD7C8
/* AE3BC 800AD7BC 00000000 */   nop
/* AE3C0 800AD7C0 01000008 */  jr         $t0
/* AE3C4 800AD7C4 00000000 */   nop
.L800AD7C8:
/* AE3C8 800AD7C8 03E00008 */  jr         $ra
/* AE3CC 800AD7CC 00000000 */   nop

glabel func_800AD7D0
/* AE3D0 800AD7D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE3D4 800AD7D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE3D8 800AD7D8 AFA40028 */  sw         $a0, 0x28($sp)
/* AE3DC 800AD7DC AFA5002C */  sw         $a1, 0x2c($sp)
/* AE3E0 800AD7E0 AFA00020 */  sw         $zero, 0x20($sp)
/* AE3E4 800AD7E4 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE3E8 800AD7E8 8DCF0000 */  lw         $t7, ($t6)
/* AE3EC 800AD7EC 11E00024 */  beqz       $t7, .L800AD880
/* AE3F0 800AD7F0 00000000 */   nop
/* AE3F4 800AD7F4 0C026DB4 */  jal        func_8009B6D0
/* AE3F8 800AD7F8 24040001 */   addiu     $a0, $zero, 1
/* AE3FC 800AD7FC AFA2001C */  sw         $v0, 0x1c($sp)
/* AE400 800AD800 8FB80028 */  lw         $t8, 0x28($sp)
/* AE404 800AD804 8F190000 */  lw         $t9, ($t8)
/* AE408 800AD808 1320001B */  beqz       $t9, .L800AD878
/* AE40C 800AD80C AFB90024 */   sw        $t9, 0x24($sp)
.L800AD810:
/* AE410 800AD810 8FA80024 */  lw         $t0, 0x24($sp)
/* AE414 800AD814 8FA9002C */  lw         $t1, 0x2c($sp)
/* AE418 800AD818 15090011 */  bne        $t0, $t1, .L800AD860
/* AE41C 800AD81C 00000000 */   nop
/* AE420 800AD820 8FAA0020 */  lw         $t2, 0x20($sp)
/* AE424 800AD824 11400006 */  beqz       $t2, .L800AD840
/* AE428 800AD828 00000000 */   nop
/* AE42C 800AD82C 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE430 800AD830 8FAD0020 */  lw         $t5, 0x20($sp)
/* AE434 800AD834 8D6C0000 */  lw         $t4, ($t3)
/* AE438 800AD838 10000005 */  b          .L800AD850
/* AE43C 800AD83C ADAC0000 */   sw        $t4, ($t5)
.L800AD840:
/* AE440 800AD840 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE444 800AD844 8FB80028 */  lw         $t8, 0x28($sp)
/* AE448 800AD848 8DCF0000 */  lw         $t7, ($t6)
/* AE44C 800AD84C AF0F0000 */  sw         $t7, ($t8)
.L800AD850:
/* AE450 800AD850 8FB9002C */  lw         $t9, 0x2c($sp)
/* AE454 800AD854 AF200000 */  sw         $zero, ($t9)
/* AE458 800AD858 10000007 */  b          .L800AD878
/* AE45C 800AD85C 00000000 */   nop
.L800AD860:
/* AE460 800AD860 8FA80024 */  lw         $t0, 0x24($sp)
/* AE464 800AD864 AFA80020 */  sw         $t0, 0x20($sp)
/* AE468 800AD868 8FA90024 */  lw         $t1, 0x24($sp)
/* AE46C 800AD86C 8D2A0000 */  lw         $t2, ($t1)
/* AE470 800AD870 1540FFE7 */  bnez       $t2, .L800AD810
/* AE474 800AD874 AFAA0024 */   sw        $t2, 0x24($sp)
.L800AD878:
/* AE478 800AD878 0C026DB4 */  jal        func_8009B6D0
/* AE47C 800AD87C 8FA4001C */   lw        $a0, 0x1c($sp)
.L800AD880:
/* AE480 800AD880 10000001 */  b          .L800AD888
/* AE484 800AD884 00000000 */   nop
.L800AD888:
/* AE488 800AD888 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE48C 800AD88C 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE490 800AD890 03E00008 */  jr         $ra
/* AE494 800AD894 00000000 */   nop
/* AE498 800AD898 00000000 */  nop
/* AE49C 800AD89C 00000000 */  nop
