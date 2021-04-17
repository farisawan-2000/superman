.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ADE90
/* AEA90 800ADE90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AEA94 800ADE94 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEA98 800ADE98 AFA40020 */  sw         $a0, 0x20($sp)
/* AEA9C 800ADE9C 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* AEAA0 800ADEA0 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* AEAA4 800ADEA4 15C00006 */  bnez       $t6, .L800ADEC0
/* AEAA8 800ADEA8 00000000 */   nop
/* AEAAC 800ADEAC 24040030 */  addiu      $a0, $zero, 0x30
/* AEAB0 800ADEB0 0C02B5EC */  jal        func_800AD7B0
/* AEAB4 800ADEB4 00002825 */   or        $a1, $zero, $zero
/* AEAB8 800ADEB8 10000026 */  b          .L800ADF54
/* AEABC 800ADEBC 00000000 */   nop
.L800ADEC0:
/* AEAC0 800ADEC0 8FAF0020 */  lw         $t7, 0x20($sp)
/* AEAC4 800ADEC4 11E00003 */  beqz       $t7, .L800ADED4
/* AEAC8 800ADEC8 00000000 */   nop
/* AEACC 800ADECC 10000007 */  b          .L800ADEEC
/* AEAD0 800ADED0 00000000 */   nop
.L800ADED4:
/* AEAD4 800ADED4 3C04800D */  lui        $a0, %hi(D_800D3610)
/* AEAD8 800ADED8 3C05800D */  lui        $a1, %hi(D_800D3624)
/* AEADC 800ADEDC 24A53624 */  addiu      $a1, $a1, %lo(D_800D3624)
/* AEAE0 800ADEE0 24843610 */  addiu      $a0, $a0, %lo(D_800D3610)
/* AEAE4 800ADEE4 0C02C480 */  jal        func_800B1200
/* AEAE8 800ADEE8 2406003E */   addiu     $a2, $zero, 0x3e
.L800ADEEC:
/* AEAEC 800ADEEC 8FB80020 */  lw         $t8, 0x20($sp)
/* AEAF0 800ADEF0 3319003F */  andi       $t9, $t8, 0x3f
/* AEAF4 800ADEF4 13200007 */  beqz       $t9, .L800ADF14
/* AEAF8 800ADEF8 00000000 */   nop
/* AEAFC 800ADEFC 2404002F */  addiu      $a0, $zero, 0x2f
/* AEB00 800ADF00 24050001 */  addiu      $a1, $zero, 1
/* AEB04 800ADF04 0C02B5EC */  jal        func_800AD7B0
/* AEB08 800ADF08 8FA60020 */   lw        $a2, 0x20($sp)
/* AEB0C 800ADF0C 10000011 */  b          .L800ADF54
/* AEB10 800ADF10 00000000 */   nop
.L800ADF14:
/* AEB14 800ADF14 0C02C0C8 */  jal        func_800B0320
/* AEB18 800ADF18 00000000 */   nop
/* AEB1C 800ADF1C AFA2001C */  sw         $v0, 0x1c($sp)
/* AEB20 800ADF20 3C09800D */  lui        $t1, %hi(D_800CD444)
/* AEB24 800ADF24 8D29D444 */  lw         $t1, %lo(D_800CD444)($t1)
/* AEB28 800ADF28 8FA80020 */  lw         $t0, 0x20($sp)
/* AEB2C 800ADF2C AD280004 */  sw         $t0, 4($t1)
/* AEB30 800ADF30 3C0A800D */  lui        $t2, %hi(D_800CD444)
/* AEB34 800ADF34 8D4AD444 */  lw         $t2, %lo(D_800CD444)($t2)
/* AEB38 800ADF38 954B0000 */  lhu        $t3, ($t2)
/* AEB3C 800ADF3C 356C0010 */  ori        $t4, $t3, 0x10
/* AEB40 800ADF40 A54C0000 */  sh         $t4, ($t2)
/* AEB44 800ADF44 0C02C0D0 */  jal        func_800B0340
/* AEB48 800ADF48 8FA4001C */   lw        $a0, 0x1c($sp)
/* AEB4C 800ADF4C 10000001 */  b          .L800ADF54
/* AEB50 800ADF50 00000000 */   nop
.L800ADF54:
/* AEB54 800ADF54 8FBF0014 */  lw         $ra, 0x14($sp)
/* AEB58 800ADF58 27BD0020 */  addiu      $sp, $sp, 0x20
/* AEB5C 800ADF5C 03E00008 */  jr         $ra
/* AEB60 800ADF60 00000000 */   nop
/* AEB64 800ADF64 00000000 */  nop
/* AEB68 800ADF68 00000000 */  nop
/* AEB6C 800ADF6C 00000000 */  nop
