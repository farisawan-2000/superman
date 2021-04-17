.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F4D0
/* A00D0 8009F4D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A00D4 8009F4D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A00D8 8009F4D8 AFA40020 */  sw         $a0, 0x20($sp)
/* A00DC 8009F4DC AFA50024 */  sw         $a1, 0x24($sp)
/* A00E0 8009F4E0 AFA60028 */  sw         $a2, 0x28($sp)
/* A00E4 8009F4E4 8FAE0024 */  lw         $t6, 0x24($sp)
/* A00E8 8009F4E8 8DCF0008 */  lw         $t7, 8($t6)
/* A00EC 8009F4EC 11E0002B */  beqz       $t7, .L8009F59C
/* A00F0 8009F4F0 00000000 */   nop
/* A00F4 8009F4F4 0C029658 */  jal        func_800A5960
/* A00F8 8009F4F8 00000000 */   nop
/* A00FC 8009F4FC AFA2001C */  sw         $v0, 0x1c($sp)
/* A0100 8009F500 8FB8001C */  lw         $t8, 0x1c($sp)
/* A0104 8009F504 17000006 */  bnez       $t8, .L8009F520
/* A0108 8009F508 00000000 */   nop
/* A010C 8009F50C 2404006A */  addiu      $a0, $zero, 0x6a
/* A0110 8009F510 0C02B5EC */  jal        func_800AD7B0
/* A0114 8009F514 00002825 */   or        $a1, $zero, $zero
/* A0118 8009F518 10000022 */  b          .L8009F5A4
/* A011C 8009F51C 00000000 */   nop
.L8009F520:
/* A0120 8009F520 8FA90024 */  lw         $t1, 0x24($sp)
/* A0124 8009F524 8FB90020 */  lw         $t9, 0x20($sp)
/* A0128 8009F528 8FAD001C */  lw         $t5, 0x1c($sp)
/* A012C 8009F52C 8D2A0008 */  lw         $t2, 8($t1)
/* A0130 8009F530 8F28001C */  lw         $t0, 0x1c($t9)
/* A0134 8009F534 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* A0138 8009F538 010B6021 */  addu       $t4, $t0, $t3
/* A013C 8009F53C ADAC0004 */  sw         $t4, 4($t5)
/* A0140 8009F540 8FAF001C */  lw         $t7, 0x1c($sp)
/* A0144 8009F544 240E000E */  addiu      $t6, $zero, 0xe
/* A0148 8009F548 A5EE0008 */  sh         $t6, 8($t7)
/* A014C 8009F54C 8FB80028 */  lw         $t8, 0x28($sp)
/* A0150 8009F550 8FB9001C */  lw         $t9, 0x1c($sp)
/* A0154 8009F554 AF38000C */  sw         $t8, 0xc($t9)
/* A0158 8009F558 8FA9001C */  lw         $t1, 0x1c($sp)
/* A015C 8009F55C AD200000 */  sw         $zero, ($t1)
/* A0160 8009F560 8FAA0024 */  lw         $t2, 0x24($sp)
/* A0164 8009F564 8FAB001C */  lw         $t3, 0x1c($sp)
/* A0168 8009F568 8548001A */  lh         $t0, 0x1a($t2)
/* A016C 8009F56C A568000A */  sh         $t0, 0xa($t3)
/* A0170 8009F570 8FAC0024 */  lw         $t4, 0x24($sp)
/* A0174 8009F574 8D8D0008 */  lw         $t5, 8($t4)
/* A0178 8009F578 8DAE000C */  lw         $t6, 0xc($t5)
/* A017C 8009F57C AFAE0018 */  sw         $t6, 0x18($sp)
/* A0180 8009F580 8FAF0018 */  lw         $t7, 0x18($sp)
/* A0184 8009F584 24050003 */  addiu      $a1, $zero, 3
/* A0188 8009F588 8FA6001C */  lw         $a2, 0x1c($sp)
/* A018C 8009F58C 8DF90008 */  lw         $t9, 8($t7)
/* A0190 8009F590 01E02025 */  or         $a0, $t7, $zero
/* A0194 8009F594 0320F809 */  jalr       $t9
/* A0198 8009F598 00000000 */   nop
.L8009F59C:
/* A019C 8009F59C 10000001 */  b          .L8009F5A4
/* A01A0 8009F5A0 00000000 */   nop
.L8009F5A4:
/* A01A4 8009F5A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A01A8 8009F5A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A01AC 8009F5AC 03E00008 */  jr         $ra
/* A01B0 8009F5B0 00000000 */   nop
/* A01B4 8009F5B4 00000000 */  nop
/* A01B8 8009F5B8 00000000 */  nop
/* A01BC 8009F5BC 00000000 */  nop
