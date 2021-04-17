.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009FC10
/* A0810 8009FC10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A0814 8009FC14 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0818 8009FC18 AFA40030 */  sw         $a0, 0x30($sp)
/* A081C 8009FC1C AFA50034 */  sw         $a1, 0x34($sp)
/* A0820 8009FC20 8FAE0030 */  lw         $t6, 0x30($sp)
/* A0824 8009FC24 8DCF0040 */  lw         $t7, 0x40($t6)
/* A0828 8009FC28 AFAF001C */  sw         $t7, 0x1c($sp)
/* A082C 8009FC2C A7A00020 */  sh         $zero, 0x20($sp)
/* A0830 8009FC30 8FB80030 */  lw         $t8, 0x30($sp)
/* A0834 8009FC34 8FA9001C */  lw         $t1, 0x1c($sp)
/* A0838 8009FC38 8F19003C */  lw         $t9, 0x3c($t8)
/* A083C 8009FC3C 00194080 */  sll        $t0, $t9, 2
/* A0840 8009FC40 01194023 */  subu       $t0, $t0, $t9
/* A0844 8009FC44 00084100 */  sll        $t0, $t0, 4
/* A0848 8009FC48 01095021 */  addu       $t2, $t0, $t1
/* A084C 8009FC4C AFAA0024 */  sw         $t2, 0x24($sp)
/* A0850 8009FC50 8FA40030 */  lw         $a0, 0x30($sp)
/* A0854 8009FC54 27A50020 */  addiu      $a1, $sp, 0x20
/* A0858 8009FC58 8FA60034 */  lw         $a2, 0x34($sp)
/* A085C 8009FC5C 0C026E68 */  jal        func_8009B9A0
/* A0860 8009FC60 24840014 */   addiu     $a0, $a0, 0x14
/* A0864 8009FC64 10000001 */  b          .L8009FC6C
/* A0868 8009FC68 00000000 */   nop
.L8009FC6C:
/* A086C 8009FC6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0870 8009FC70 27BD0030 */  addiu      $sp, $sp, 0x30
/* A0874 8009FC74 03E00008 */  jr         $ra
/* A0878 8009FC78 00000000 */   nop
/* A087C 8009FC7C 00000000 */  nop
