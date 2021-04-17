.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8E10
/* B9A10 800B8E10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B9A14 800B8E14 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9A18 800B8E18 AFA40020 */  sw         $a0, 0x20($sp)
/* B9A1C 800B8E1C AFA50024 */  sw         $a1, 0x24($sp)
/* B9A20 800B8E20 AFA60028 */  sw         $a2, 0x28($sp)
/* B9A24 800B8E24 AFA7002C */  sw         $a3, 0x2c($sp)
/* B9A28 800B8E28 AFA00018 */  sw         $zero, 0x18($sp)
/* B9A2C 800B8E2C 8FAE002C */  lw         $t6, 0x2c($sp)
/* B9A30 800B8E30 8FAF0030 */  lw         $t7, 0x30($sp)
/* B9A34 800B8E34 2401FFF0 */  addiu      $at, $zero, -0x10
/* B9A38 800B8E38 01CF0019 */  multu      $t6, $t7
/* B9A3C 800B8E3C 0000C012 */  mflo       $t8
/* B9A40 800B8E40 2719000F */  addiu      $t9, $t8, 0xf
/* B9A44 800B8E44 03214024 */  and        $t0, $t9, $at
/* B9A48 800B8E48 AFA8001C */  sw         $t0, 0x1c($sp)
/* B9A4C 800B8E4C 8FA90028 */  lw         $t1, 0x28($sp)
/* B9A50 800B8E50 8D2A000C */  lw         $t2, 0xc($t1)
/* B9A54 800B8E54 254B0001 */  addiu      $t3, $t2, 1
/* B9A58 800B8E58 AD2B000C */  sw         $t3, 0xc($t1)
/* B9A5C 800B8E5C 8FAC001C */  lw         $t4, 0x1c($sp)
/* B9A60 800B8E60 258D0020 */  addiu      $t5, $t4, 0x20
/* B9A64 800B8E64 AFAD001C */  sw         $t5, 0x1c($sp)
/* B9A68 800B8E68 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9A6C 800B8E6C 8FB8001C */  lw         $t8, 0x1c($sp)
/* B9A70 800B8E70 8DCF0004 */  lw         $t7, 4($t6)
/* B9A74 800B8E74 8DC80000 */  lw         $t0, ($t6)
/* B9A78 800B8E78 8DCA0008 */  lw         $t2, 8($t6)
/* B9A7C 800B8E7C 01F8C821 */  addu       $t9, $t7, $t8
/* B9A80 800B8E80 010A5821 */  addu       $t3, $t0, $t2
/* B9A84 800B8E84 0179082B */  sltu       $at, $t3, $t9
/* B9A88 800B8E88 14200028 */  bnez       $at, .L800B8F2C
/* B9A8C 800B8E8C 00000000 */   nop
/* B9A90 800B8E90 8FA90028 */  lw         $t1, 0x28($sp)
/* B9A94 800B8E94 8D2C0004 */  lw         $t4, 4($t1)
/* B9A98 800B8E98 AFAC0018 */  sw         $t4, 0x18($sp)
/* B9A9C 800B8E9C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B9AA0 800B8EA0 8FB8001C */  lw         $t8, 0x1c($sp)
/* B9AA4 800B8EA4 8DAF0004 */  lw         $t7, 4($t5)
/* B9AA8 800B8EA8 01F87021 */  addu       $t6, $t7, $t8
/* B9AAC 800B8EAC ADAE0004 */  sw         $t6, 4($t5)
/* B9AB0 800B8EB0 8FAA0018 */  lw         $t2, 0x18($sp)
/* B9AB4 800B8EB4 3C082073 */  lui        $t0, 0x2073
/* B9AB8 800B8EB8 35086A73 */  ori        $t0, $t0, 0x6a73
/* B9ABC 800B8EBC AD480000 */  sw         $t0, ($t2)
/* B9AC0 800B8EC0 8FB9001C */  lw         $t9, 0x1c($sp)
/* B9AC4 800B8EC4 8FAB0018 */  lw         $t3, 0x18($sp)
/* B9AC8 800B8EC8 AD790004 */  sw         $t9, 4($t3)
/* B9ACC 800B8ECC 8FA90028 */  lw         $t1, 0x28($sp)
/* B9AD0 800B8ED0 8FAF0018 */  lw         $t7, 0x18($sp)
/* B9AD4 800B8ED4 8D2C000C */  lw         $t4, 0xc($t1)
/* B9AD8 800B8ED8 ADEC0010 */  sw         $t4, 0x10($t7)
/* B9ADC 800B8EDC 8FB80020 */  lw         $t8, 0x20($sp)
/* B9AE0 800B8EE0 13000008 */  beqz       $t8, .L800B8F04
/* B9AE4 800B8EE4 00000000 */   nop
/* B9AE8 800B8EE8 8FAE0020 */  lw         $t6, 0x20($sp)
/* B9AEC 800B8EEC 8FAD0018 */  lw         $t5, 0x18($sp)
/* B9AF0 800B8EF0 ADAE0008 */  sw         $t6, 8($t5)
/* B9AF4 800B8EF4 8FA80024 */  lw         $t0, 0x24($sp)
/* B9AF8 800B8EF8 8FAA0018 */  lw         $t2, 0x18($sp)
/* B9AFC 800B8EFC 10000007 */  b          .L800B8F1C
/* B9B00 800B8F00 AD48000C */   sw        $t0, 0xc($t2)
.L800B8F04:
/* B9B04 800B8F04 8FAB0018 */  lw         $t3, 0x18($sp)
/* B9B08 800B8F08 3C19800D */  lui        $t9, %hi(D_800D3C60)
/* B9B0C 800B8F0C 27393C60 */  addiu      $t9, $t9, %lo(D_800D3C60)
/* B9B10 800B8F10 AD790008 */  sw         $t9, 8($t3)
/* B9B14 800B8F14 8FA90018 */  lw         $t1, 0x18($sp)
/* B9B18 800B8F18 AD20000C */  sw         $zero, 0xc($t1)
.L800B8F1C:
/* B9B1C 800B8F1C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B9B20 800B8F20 258F0020 */  addiu      $t7, $t4, 0x20
/* B9B24 800B8F24 10000005 */  b          .L800B8F3C
/* B9B28 800B8F28 AFAF0018 */   sw        $t7, 0x18($sp)
.L800B8F2C:
/* B9B2C 800B8F2C 2404007D */  addiu      $a0, $zero, 0x7d
/* B9B30 800B8F30 24050001 */  addiu      $a1, $zero, 1
/* B9B34 800B8F34 0C02B5EC */  jal        func_800AD7B0
/* B9B38 800B8F38 8FA60030 */   lw        $a2, 0x30($sp)
.L800B8F3C:
/* B9B3C 800B8F3C 10000003 */  b          .L800B8F4C
/* B9B40 800B8F40 8FA20018 */   lw        $v0, 0x18($sp)
/* B9B44 800B8F44 10000001 */  b          .L800B8F4C
/* B9B48 800B8F48 00000000 */   nop
.L800B8F4C:
/* B9B4C 800B8F4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9B50 800B8F50 27BD0020 */  addiu      $sp, $sp, 0x20
/* B9B54 800B8F54 03E00008 */  jr         $ra
/* B9B58 800B8F58 00000000 */   nop
/* B9B5C 800B8F5C 00000000 */  nop
