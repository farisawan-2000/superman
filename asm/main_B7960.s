.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6D60
/* B7960 800B6D60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7964 800B6D64 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7968 800B6D68 AFA40030 */  sw         $a0, 0x30($sp)
/* B796C 800B6D6C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B7970 800B6D70 8DCF0040 */  lw         $t7, 0x40($t6)
/* B7974 800B6D74 AFAF001C */  sw         $t7, 0x1c($sp)
/* B7978 800B6D78 8FB80030 */  lw         $t8, 0x30($sp)
/* B797C 800B6D7C 8FA9001C */  lw         $t1, 0x1c($sp)
/* B7980 800B6D80 8F19003C */  lw         $t9, 0x3c($t8)
/* B7984 800B6D84 00194080 */  sll        $t0, $t9, 2
/* B7988 800B6D88 01194023 */  subu       $t0, $t0, $t9
/* B798C 800B6D8C 00084100 */  sll        $t0, $t0, 4
/* B7990 800B6D90 01095021 */  addu       $t2, $t0, $t1
/* B7994 800B6D94 8D4B0028 */  lw         $t3, 0x28($t2)
/* B7998 800B6D98 11600006 */  beqz       $t3, .L800B6DB4
/* B799C 800B6D9C 00000000 */   nop
/* B79A0 800B6DA0 2404006D */  addiu      $a0, $zero, 0x6d
/* B79A4 800B6DA4 0C02B5EC */  jal        func_800AD7B0
/* B79A8 800B6DA8 00002825 */   or        $a1, $zero, $zero
/* B79AC 800B6DAC 10000011 */  b          .L800B6DF4
/* B79B0 800B6DB0 00000000 */   nop
.L800B6DB4:
/* B79B4 800B6DB4 A7A00020 */  sh         $zero, 0x20($sp)
/* B79B8 800B6DB8 8FAC0030 */  lw         $t4, 0x30($sp)
/* B79BC 800B6DBC 8FAF001C */  lw         $t7, 0x1c($sp)
/* B79C0 800B6DC0 8D8D003C */  lw         $t5, 0x3c($t4)
/* B79C4 800B6DC4 000D7080 */  sll        $t6, $t5, 2
/* B79C8 800B6DC8 01CD7023 */  subu       $t6, $t6, $t5
/* B79CC 800B6DCC 000E7100 */  sll        $t6, $t6, 4
/* B79D0 800B6DD0 01CFC021 */  addu       $t8, $t6, $t7
/* B79D4 800B6DD4 AFB80024 */  sw         $t8, 0x24($sp)
/* B79D8 800B6DD8 8FA40030 */  lw         $a0, 0x30($sp)
/* B79DC 800B6DDC 27A50020 */  addiu      $a1, $sp, 0x20
/* B79E0 800B6DE0 00003025 */  or         $a2, $zero, $zero
/* B79E4 800B6DE4 0C026E68 */  jal        func_8009B9A0
/* B79E8 800B6DE8 24840014 */   addiu     $a0, $a0, 0x14
/* B79EC 800B6DEC 10000001 */  b          .L800B6DF4
/* B79F0 800B6DF0 00000000 */   nop
.L800B6DF4:
/* B79F4 800B6DF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B79F8 800B6DF8 27BD0030 */  addiu      $sp, $sp, 0x30
/* B79FC 800B6DFC 03E00008 */  jr         $ra
/* B7A00 800B6E00 00000000 */   nop
/* B7A04 800B6E04 00000000 */  nop
/* B7A08 800B6E08 00000000 */  nop
/* B7A0C 800B6E0C 00000000 */  nop
