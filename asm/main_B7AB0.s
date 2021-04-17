.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6EB0
/* B7AB0 800B6EB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7AB4 800B6EB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7AB8 800B6EB8 AFA40020 */  sw         $a0, 0x20($sp)
/* B7ABC 800B6EBC AFA50024 */  sw         $a1, 0x24($sp)
/* B7AC0 800B6EC0 AFA60028 */  sw         $a2, 0x28($sp)
/* B7AC4 800B6EC4 AFA7002C */  sw         $a3, 0x2c($sp)
/* B7AC8 800B6EC8 8FAE0024 */  lw         $t6, 0x24($sp)
/* B7ACC 800B6ECC 8DCF0008 */  lw         $t7, 8($t6)
/* B7AD0 800B6ED0 11E00042 */  beqz       $t7, .L800B6FDC
/* B7AD4 800B6ED4 00000000 */   nop
/* B7AD8 800B6ED8 0C029658 */  jal        func_800A5960
/* B7ADC 800B6EDC 00000000 */   nop
/* B7AE0 800B6EE0 AFA2001C */  sw         $v0, 0x1c($sp)
/* B7AE4 800B6EE4 8FB8001C */  lw         $t8, 0x1c($sp)
/* B7AE8 800B6EE8 17000006 */  bnez       $t8, .L800B6F04
/* B7AEC 800B6EEC 00000000 */   nop
/* B7AF0 800B6EF0 2404006A */  addiu      $a0, $zero, 0x6a
/* B7AF4 800B6EF4 0C02B5EC */  jal        func_800AD7B0
/* B7AF8 800B6EF8 00002825 */   or        $a1, $zero, $zero
/* B7AFC 800B6EFC 10000039 */  b          .L800B6FE4
/* B7B00 800B6F00 00000000 */   nop
.L800B6F04:
/* B7B04 800B6F04 93B9003B */  lbu        $t9, 0x3b($sp)
/* B7B08 800B6F08 07210004 */  bgez       $t9, .L800B6F1C
/* B7B0C 800B6F0C 00000000 */   nop
/* B7B10 800B6F10 93A8003B */  lbu        $t0, 0x3b($sp)
/* B7B14 800B6F14 00084823 */  negu       $t1, $t0
/* B7B18 800B6F18 A3A9003B */  sb         $t1, 0x3b($sp)
.L800B6F1C:
/* B7B1C 800B6F1C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B7B20 800B6F20 8FAA0020 */  lw         $t2, 0x20($sp)
/* B7B24 800B6F24 8FB8001C */  lw         $t8, 0x1c($sp)
/* B7B28 800B6F28 8D8D0008 */  lw         $t5, 8($t4)
/* B7B2C 800B6F2C 8D4B001C */  lw         $t3, 0x1c($t2)
/* B7B30 800B6F30 8DAE00D8 */  lw         $t6, 0xd8($t5)
/* B7B34 800B6F34 016E7821 */  addu       $t7, $t3, $t6
/* B7B38 800B6F38 AF0F0004 */  sw         $t7, 4($t8)
/* B7B3C 800B6F3C 8FB9001C */  lw         $t9, 0x1c($sp)
/* B7B40 800B6F40 AF200000 */  sw         $zero, ($t9)
/* B7B44 800B6F44 8FA9001C */  lw         $t1, 0x1c($sp)
/* B7B48 800B6F48 2408000D */  addiu      $t0, $zero, 0xd
/* B7B4C 800B6F4C A5280008 */  sh         $t0, 8($t1)
/* B7B50 800B6F50 8FAA0024 */  lw         $t2, 0x24($sp)
/* B7B54 800B6F54 8FAD001C */  lw         $t5, 0x1c($sp)
/* B7B58 800B6F58 854C001A */  lh         $t4, 0x1a($t2)
/* B7B5C 800B6F5C A5AC000A */  sh         $t4, 0xa($t5)
/* B7B60 800B6F60 93AB0037 */  lbu        $t3, 0x37($sp)
/* B7B64 800B6F64 8FAE001C */  lw         $t6, 0x1c($sp)
/* B7B68 800B6F68 A1CB0012 */  sb         $t3, 0x12($t6)
/* B7B6C 800B6F6C 87AF0032 */  lh         $t7, 0x32($sp)
/* B7B70 800B6F70 8FB8001C */  lw         $t8, 0x1c($sp)
/* B7B74 800B6F74 A70F0010 */  sh         $t7, 0x10($t8)
/* B7B78 800B6F78 93B9003B */  lbu        $t9, 0x3b($sp)
/* B7B7C 800B6F7C 8FA8001C */  lw         $t0, 0x1c($sp)
/* B7B80 800B6F80 A1190013 */  sb         $t9, 0x13($t0)
/* B7B84 800B6F84 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* B7B88 800B6F88 8FA9001C */  lw         $t1, 0x1c($sp)
/* B7B8C 800B6F8C E524000C */  swc1       $f4, 0xc($t1)
/* B7B90 800B6F90 8FA40020 */  lw         $a0, 0x20($sp)
/* B7B94 800B6F94 0C0296C0 */  jal        func_800A5B00
/* B7B98 800B6F98 8FA5003C */   lw        $a1, 0x3c($sp)
/* B7B9C 800B6F9C 8FAA001C */  lw         $t2, 0x1c($sp)
/* B7BA0 800B6FA0 AD420014 */  sw         $v0, 0x14($t2)
/* B7BA4 800B6FA4 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7BA8 800B6FA8 8FAD001C */  lw         $t5, 0x1c($sp)
/* B7BAC 800B6FAC ADAC0018 */  sw         $t4, 0x18($t5)
/* B7BB0 800B6FB0 8FAB0024 */  lw         $t3, 0x24($sp)
/* B7BB4 800B6FB4 8D6E0008 */  lw         $t6, 8($t3)
/* B7BB8 800B6FB8 8DCF000C */  lw         $t7, 0xc($t6)
/* B7BBC 800B6FBC AFAF0018 */  sw         $t7, 0x18($sp)
/* B7BC0 800B6FC0 8FB80018 */  lw         $t8, 0x18($sp)
/* B7BC4 800B6FC4 24050003 */  addiu      $a1, $zero, 3
/* B7BC8 800B6FC8 8FA6001C */  lw         $a2, 0x1c($sp)
/* B7BCC 800B6FCC 8F190008 */  lw         $t9, 8($t8)
/* B7BD0 800B6FD0 03002025 */  or         $a0, $t8, $zero
/* B7BD4 800B6FD4 0320F809 */  jalr       $t9
/* B7BD8 800B6FD8 00000000 */   nop
.L800B6FDC:
/* B7BDC 800B6FDC 10000001 */  b          .L800B6FE4
/* B7BE0 800B6FE0 00000000 */   nop
.L800B6FE4:
/* B7BE4 800B6FE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7BE8 800B6FE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B7BEC 800B6FEC 03E00008 */  jr         $ra
/* B7BF0 800B6FF0 00000000 */   nop
/* B7BF4 800B6FF4 00000000 */  nop
/* B7BF8 800B6FF8 00000000 */  nop
/* B7BFC 800B6FFC 00000000 */  nop
