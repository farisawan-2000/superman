.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C5D20
/* C6920 800C5D20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C6924 800C5D24 AFBF0014 */  sw         $ra, 0x14($sp)
/* C6928 800C5D28 AFA40018 */  sw         $a0, 0x18($sp)
/* C692C 800C5D2C AFA60020 */  sw         $a2, 0x20($sp)
/* C6930 800C5D30 8CAE0008 */  lw         $t6, 8($a1)
/* C6934 800C5D34 51C00018 */  beql       $t6, $zero, .L800C5D98
/* C6938 800C5D38 8FBF0014 */   lw        $ra, 0x14($sp)
/* C693C 800C5D3C 0C031FF4 */  jal        func_800C7FD0
/* C6940 800C5D40 AFA5001C */   sw        $a1, 0x1c($sp)
/* C6944 800C5D44 8FA7001C */  lw         $a3, 0x1c($sp)
/* C6948 800C5D48 10400012 */  beqz       $v0, .L800C5D94
/* C694C 800C5D4C 00403025 */   or        $a2, $v0, $zero
/* C6950 800C5D50 8FAF0018 */  lw         $t7, 0x18($sp)
/* C6954 800C5D54 8CF90008 */  lw         $t9, 8($a3)
/* C6958 800C5D58 240A000C */  addiu      $t2, $zero, 0xc
/* C695C 800C5D5C 8DF8001C */  lw         $t8, 0x1c($t7)
/* C6960 800C5D60 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C6964 800C5D64 A44A0008 */  sh         $t2, 8($v0)
/* C6968 800C5D68 24050003 */  addiu      $a1, $zero, 3
/* C696C 800C5D6C 03084821 */  addu       $t1, $t8, $t0
/* C6970 800C5D70 AC490004 */  sw         $t1, 4($v0)
/* C6974 800C5D74 93AB0023 */  lbu        $t3, 0x23($sp)
/* C6978 800C5D78 AC400000 */  sw         $zero, ($v0)
/* C697C 800C5D7C AC4B000C */  sw         $t3, 0xc($v0)
/* C6980 800C5D80 8CEC0008 */  lw         $t4, 8($a3)
/* C6984 800C5D84 8D84000C */  lw         $a0, 0xc($t4)
/* C6988 800C5D88 8C990008 */  lw         $t9, 8($a0)
/* C698C 800C5D8C 0320F809 */  jalr       $t9
/* C6990 800C5D90 00000000 */   nop
.L800C5D94:
/* C6994 800C5D94 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C5D98:
/* C6998 800C5D98 27BD0018 */  addiu      $sp, $sp, 0x18
/* C699C 800C5D9C 03E00008 */  jr         $ra
/* C69A0 800C5DA0 00000000 */   nop
/* C69A4 800C5DA4 00000000 */  nop
/* C69A8 800C5DA8 00000000 */  nop
/* C69AC 800C5DAC 00000000 */  nop
/* C69B0 800C5DB0 00000000 */  nop
/* C69B4 800C5DB4 00000000 */  nop
/* C69B8 800C5DB8 00000000 */  nop
/* C69BC 800C5DBC 00000000 */  nop
