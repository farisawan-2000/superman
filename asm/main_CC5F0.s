.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CB9F0
/* CC5F0 800CB9F0 3C0E8014 */  lui        $t6, %hi(D_80146AEC)
/* CC5F4 800CB9F4 8DCE6AEC */  lw         $t6, %lo(D_80146AEC)($t6)
/* CC5F8 800CB9F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CC5FC 800CB9FC 3C01B000 */  lui        $at, 0xb000
/* CC600 800CBA00 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC604 800CBA04 15C10004 */  bne        $t6, $at, .L800CBA18
/* CC608 800CBA08 AFA0001C */   sw        $zero, 0x1c($sp)
/* CC60C 800CBA0C 3C028014 */  lui        $v0, %hi(D_80146AE0)
/* CC610 800CBA10 10000030 */  b          .L800CBAD4
/* CC614 800CBA14 24426AE0 */   addiu     $v0, $v0, %lo(D_80146AE0)
.L800CBA18:
/* CC618 800CBA18 3C018014 */  lui        $at, %hi(D_80146AE4)
/* CC61C 800CBA1C A0206AE4 */  sb         $zero, %lo(D_80146AE4)($at)
/* CC620 800CBA20 3C018014 */  lui        $at, %hi(D_80146AEC)
/* CC624 800CBA24 3C0FB000 */  lui        $t7, 0xb000
/* CC628 800CBA28 AC2F6AEC */  sw         $t7, %lo(D_80146AEC)($at)
/* CC62C 800CBA2C 00002025 */  or         $a0, $zero, $zero
/* CC630 800CBA30 0C030D1C */  jal        func_800C3470
/* CC634 800CBA34 27A5001C */   addiu     $a1, $sp, 0x1c
/* CC638 800CBA38 8FB8001C */  lw         $t8, 0x1c($sp)
/* CC63C 800CBA3C 3C018014 */  lui        $at, %hi(D_80146AE5)
/* CC640 800CBA40 3C048014 */  lui        $a0, 0x8014
/* CC644 800CBA44 331900FF */  andi       $t9, $t8, 0xff
/* CC648 800CBA48 A0396AE5 */  sb         $t9, %lo(D_80146AE5)($at)
/* CC64C 800CBA4C 00184202 */  srl        $t0, $t8, 8
/* CC650 800CBA50 310900FF */  andi       $t1, $t0, 0xff
/* CC654 800CBA54 3C018014 */  lui        $at, %hi(D_80146AE8)
/* CC658 800CBA58 A0296AE8 */  sb         $t1, %lo(D_80146AE8)($at)
/* CC65C 800CBA5C 3C018014 */  lui        $at, %hi(D_80146AE6)
/* CC660 800CBA60 00185402 */  srl        $t2, $t8, 0x10
/* CC664 800CBA64 00186502 */  srl        $t4, $t8, 0x14
/* CC668 800CBA68 314B000F */  andi       $t3, $t2, 0xf
/* CC66C 800CBA6C 318D000F */  andi       $t5, $t4, 0xf
/* CC670 800CBA70 A02B6AE6 */  sb         $t3, %lo(D_80146AE6)($at)
/* CC674 800CBA74 A02D6AE7 */  sb         $t5, 0x6ae7($at)
/* CC678 800CBA78 3C018014 */  lui        $at, %hi(D_80146AE9)
/* CC67C 800CBA7C A0206AE9 */  sb         $zero, %lo(D_80146AE9)($at)
/* CC680 800CBA80 3C018014 */  lui        $at, %hi(D_80146AF0)
/* CC684 800CBA84 24846AE0 */  addiu      $a0, $a0, 0x6ae0
/* CC688 800CBA88 AC206AF0 */  sw         $zero, %lo(D_80146AF0)($at)
/* CC68C 800CBA8C 24840014 */  addiu      $a0, $a0, 0x14
/* CC690 800CBA90 0C030DE4 */  jal        func_800C3790
/* CC694 800CBA94 24050060 */   addiu     $a1, $zero, 0x60
/* CC698 800CBA98 0C033DD4 */  jal        func_800CF750
/* CC69C 800CBA9C 00000000 */   nop
/* CC6A0 800CBAA0 3C0E800E */  lui        $t6, %hi(D_800DB0FC)
/* CC6A4 800CBAA4 8DCEB0FC */  lw         $t6, %lo(D_800DB0FC)($t6)
/* CC6A8 800CBAA8 3C018014 */  lui        $at, %hi(D_80146AE0)
/* CC6AC 800CBAAC 3C0F8014 */  lui        $t7, %hi(D_80146AE0)
/* CC6B0 800CBAB0 AC2E6AE0 */  sw         $t6, %lo(D_80146AE0)($at)
/* CC6B4 800CBAB4 AFA20018 */  sw         $v0, 0x18($sp)
/* CC6B8 800CBAB8 3C01800E */  lui        $at, %hi(D_800DB0FC)
/* CC6BC 800CBABC 25EF6AE0 */  addiu      $t7, $t7, %lo(D_80146AE0)
/* CC6C0 800CBAC0 AC2FB0FC */  sw         $t7, %lo(D_800DB0FC)($at)
/* CC6C4 800CBAC4 0C033DDC */  jal        func_800CF770
/* CC6C8 800CBAC8 8FA40018 */   lw        $a0, 0x18($sp)
/* CC6CC 800CBACC 3C028014 */  lui        $v0, %hi(D_80146AE0)
/* CC6D0 800CBAD0 24426AE0 */  addiu      $v0, $v0, %lo(D_80146AE0)
.L800CBAD4:
/* CC6D4 800CBAD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC6D8 800CBAD8 27BD0020 */  addiu      $sp, $sp, 0x20
/* CC6DC 800CBADC 03E00008 */  jr         $ra
/* CC6E0 800CBAE0 00000000 */   nop
/* CC6E4 800CBAE4 00000000 */  nop
/* CC6E8 800CBAE8 00000000 */  nop
/* CC6EC 800CBAEC 00000000 */  nop
