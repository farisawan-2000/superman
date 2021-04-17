.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6E10
/* B7A10 800B6E10 27BDFFF8 */  addiu      $sp, $sp, -8
/* B7A14 800B6E14 3C013F80 */  lui        $at, 0x3f80
/* B7A18 800B6E18 44812000 */  mtc1       $at, $f4
/* B7A1C 800B6E1C 00000000 */  nop
/* B7A20 800B6E20 E7A40000 */  swc1       $f4, ($sp)
/* B7A24 800B6E24 04800005 */  bltz       $a0, .L800B6E3C
/* B7A28 800B6E28 00000000 */   nop
/* B7A2C 800B6E2C 3C01800D */  lui        $at, %hi(D_800D3B90)
/* B7A30 800B6E30 C4263B90 */  lwc1       $f6, %lo(D_800D3B90)($at)
/* B7A34 800B6E34 10000005 */  b          .L800B6E4C
/* B7A38 800B6E38 E7A60004 */   swc1      $f6, 4($sp)
.L800B6E3C:
/* B7A3C 800B6E3C 3C01800D */  lui        $at, %hi(D_800D3B94)
/* B7A40 800B6E40 C4283B94 */  lwc1       $f8, %lo(D_800D3B94)($at)
/* B7A44 800B6E44 E7A80004 */  swc1       $f8, 4($sp)
/* B7A48 800B6E48 00042023 */  negu       $a0, $a0
.L800B6E4C:
/* B7A4C 800B6E4C 1080000F */  beqz       $a0, .L800B6E8C
/* B7A50 800B6E50 00000000 */   nop
.L800B6E54:
/* B7A54 800B6E54 308E0001 */  andi       $t6, $a0, 1
/* B7A58 800B6E58 11C00005 */  beqz       $t6, .L800B6E70
/* B7A5C 800B6E5C 00000000 */   nop
/* B7A60 800B6E60 C7AA0000 */  lwc1       $f10, ($sp)
/* B7A64 800B6E64 C7B00004 */  lwc1       $f16, 4($sp)
/* B7A68 800B6E68 46105482 */  mul.s      $f18, $f10, $f16
/* B7A6C 800B6E6C E7B20000 */  swc1       $f18, ($sp)
.L800B6E70:
/* B7A70 800B6E70 C7A40004 */  lwc1       $f4, 4($sp)
/* B7A74 800B6E74 46042182 */  mul.s      $f6, $f4, $f4
/* B7A78 800B6E78 E7A60004 */  swc1       $f6, 4($sp)
/* B7A7C 800B6E7C 00047843 */  sra        $t7, $a0, 1
/* B7A80 800B6E80 01E02025 */  or         $a0, $t7, $zero
/* B7A84 800B6E84 1480FFF3 */  bnez       $a0, .L800B6E54
/* B7A88 800B6E88 00000000 */   nop
.L800B6E8C:
/* B7A8C 800B6E8C 10000003 */  b          .L800B6E9C
/* B7A90 800B6E90 C7A00000 */   lwc1      $f0, ($sp)
/* B7A94 800B6E94 10000001 */  b          .L800B6E9C
/* B7A98 800B6E98 00000000 */   nop
.L800B6E9C:
/* B7A9C 800B6E9C 03E00008 */  jr         $ra
/* B7AA0 800B6EA0 27BD0008 */   addiu     $sp, $sp, 8
/* B7AA4 800B6EA4 00000000 */  nop
/* B7AA8 800B6EA8 00000000 */  nop
/* B7AAC 800B6EAC 00000000 */  nop
