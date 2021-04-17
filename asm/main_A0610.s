.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009FA10
/* A0610 8009FA10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A0614 8009FA14 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0618 8009FA18 AFA40030 */  sw         $a0, 0x30($sp)
/* A061C 8009FA1C AFA50034 */  sw         $a1, 0x34($sp)
/* A0620 8009FA20 8FAE0030 */  lw         $t6, 0x30($sp)
/* A0624 8009FA24 8DCF0040 */  lw         $t7, 0x40($t6)
/* A0628 8009FA28 AFAF001C */  sw         $t7, 0x1c($sp)
/* A062C 8009FA2C 8FB80030 */  lw         $t8, 0x30($sp)
/* A0630 8009FA30 8F19003C */  lw         $t9, 0x3c($t8)
/* A0634 8009FA34 8F080044 */  lw         $t0, 0x44($t8)
/* A0638 8009FA38 0328082A */  slt        $at, $t9, $t0
/* A063C 8009FA3C 10200003 */  beqz       $at, .L8009FA4C
/* A0640 8009FA40 00000000 */   nop
/* A0644 8009FA44 0721000A */  bgez       $t9, .L8009FA70
/* A0648 8009FA48 00000000 */   nop
.L8009FA4C:
/* A064C 8009FA4C 8FA90030 */  lw         $t1, 0x30($sp)
/* A0650 8009FA50 24040070 */  addiu      $a0, $zero, 0x70
/* A0654 8009FA54 24050002 */  addiu      $a1, $zero, 2
/* A0658 8009FA58 8D270044 */  lw         $a3, 0x44($t1)
/* A065C 8009FA5C 8D26003C */  lw         $a2, 0x3c($t1)
/* A0660 8009FA60 0C02B5EC */  jal        func_800AD7B0
/* A0664 8009FA64 24E7FFFF */   addiu     $a3, $a3, -1
/* A0668 8009FA68 10000014 */  b          .L8009FABC
/* A066C 8009FA6C 00000000 */   nop
.L8009FA70:
/* A0670 8009FA70 240A0008 */  addiu      $t2, $zero, 8
/* A0674 8009FA74 A7AA0020 */  sh         $t2, 0x20($sp)
/* A0678 8009FA78 8FAB0030 */  lw         $t3, 0x30($sp)
/* A067C 8009FA7C 8FAE001C */  lw         $t6, 0x1c($sp)
/* A0680 8009FA80 8D6C003C */  lw         $t4, 0x3c($t3)
/* A0684 8009FA84 000C6880 */  sll        $t5, $t4, 2
/* A0688 8009FA88 01AC6823 */  subu       $t5, $t5, $t4
/* A068C 8009FA8C 000D6900 */  sll        $t5, $t5, 4
/* A0690 8009FA90 01AE7821 */  addu       $t7, $t5, $t6
/* A0694 8009FA94 AFAF0024 */  sw         $t7, 0x24($sp)
/* A0698 8009FA98 93B80037 */  lbu        $t8, 0x37($sp)
/* A069C 8009FA9C A3B80028 */  sb         $t8, 0x28($sp)
/* A06A0 8009FAA0 8FA40030 */  lw         $a0, 0x30($sp)
/* A06A4 8009FAA4 27A50020 */  addiu      $a1, $sp, 0x20
/* A06A8 8009FAA8 00003025 */  or         $a2, $zero, $zero
/* A06AC 8009FAAC 0C026E68 */  jal        func_8009B9A0
/* A06B0 8009FAB0 24840014 */   addiu     $a0, $a0, 0x14
/* A06B4 8009FAB4 10000001 */  b          .L8009FABC
/* A06B8 8009FAB8 00000000 */   nop
.L8009FABC:
/* A06BC 8009FABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A06C0 8009FAC0 27BD0030 */  addiu      $sp, $sp, 0x30
/* A06C4 8009FAC4 03E00008 */  jr         $ra
/* A06C8 8009FAC8 00000000 */   nop
/* A06CC 8009FACC 00000000 */  nop
