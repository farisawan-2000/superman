.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A49C0
/* A55C0 800A49C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A55C4 800A49C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A55C8 800A49C8 AFA40028 */  sw         $a0, 0x28($sp)
/* A55CC 800A49CC AFA5002C */  sw         $a1, 0x2c($sp)
/* A55D0 800A49D0 AFA60030 */  sw         $a2, 0x30($sp)
/* A55D4 800A49D4 AFA70034 */  sw         $a3, 0x34($sp)
/* A55D8 800A49D8 AFB10018 */  sw         $s1, 0x18($sp)
/* A55DC 800A49DC AFB00014 */  sw         $s0, 0x14($sp)
/* A55E0 800A49E0 3C0E800D */  lui        $t6, %hi(D_800CD300)
/* A55E4 800A49E4 8DCED300 */  lw         $t6, %lo(D_800CD300)($t6)
/* A55E8 800A49E8 15C00006 */  bnez       $t6, .L800A4A04
/* A55EC 800A49EC 00000000 */   nop
/* A55F0 800A49F0 2404001C */  addiu      $a0, $zero, 0x1c
/* A55F4 800A49F4 0C02B5EC */  jal        func_800AD7B0
/* A55F8 800A49F8 00002825 */   or        $a1, $zero, $zero
/* A55FC 800A49FC 10000079 */  b          .L800A4BE4
/* A5600 800A4A00 2402FFFF */   addiu     $v0, $zero, -1
.L800A4A04:
/* A5604 800A4A04 8FAF002C */  lw         $t7, 0x2c($sp)
/* A5608 800A4A08 11E0000A */  beqz       $t7, .L800A4A34
/* A560C 800A4A0C 00000000 */   nop
/* A5610 800A4A10 24010001 */  addiu      $at, $zero, 1
/* A5614 800A4A14 11E10007 */  beq        $t7, $at, .L800A4A34
/* A5618 800A4A18 00000000 */   nop
/* A561C 800A4A1C 2404001D */  addiu      $a0, $zero, 0x1d
/* A5620 800A4A20 24050001 */  addiu      $a1, $zero, 1
/* A5624 800A4A24 0C02B5EC */  jal        func_800AD7B0
/* A5628 800A4A28 8FA6002C */   lw        $a2, 0x2c($sp)
/* A562C 800A4A2C 1000006D */  b          .L800A4BE4
/* A5630 800A4A30 2402FFFF */   addiu     $v0, $zero, -1
.L800A4A34:
/* A5634 800A4A34 8FB80030 */  lw         $t8, 0x30($sp)
/* A5638 800A4A38 1300000A */  beqz       $t8, .L800A4A64
/* A563C 800A4A3C 00000000 */   nop
/* A5640 800A4A40 24010001 */  addiu      $at, $zero, 1
/* A5644 800A4A44 13010007 */  beq        $t8, $at, .L800A4A64
/* A5648 800A4A48 00000000 */   nop
/* A564C 800A4A4C 2404001E */  addiu      $a0, $zero, 0x1e
/* A5650 800A4A50 24050001 */  addiu      $a1, $zero, 1
/* A5654 800A4A54 0C02B5EC */  jal        func_800AD7B0
/* A5658 800A4A58 8FA60030 */   lw        $a2, 0x30($sp)
/* A565C 800A4A5C 10000061 */  b          .L800A4BE4
/* A5660 800A4A60 2402FFFF */   addiu     $v0, $zero, -1
.L800A4A64:
/* A5664 800A4A64 8FB90034 */  lw         $t9, 0x34($sp)
/* A5668 800A4A68 33280001 */  andi       $t0, $t9, 1
/* A566C 800A4A6C 11000007 */  beqz       $t0, .L800A4A8C
/* A5670 800A4A70 00000000 */   nop
/* A5674 800A4A74 2404001F */  addiu      $a0, $zero, 0x1f
/* A5678 800A4A78 24050001 */  addiu      $a1, $zero, 1
/* A567C 800A4A7C 0C02B5EC */  jal        func_800AD7B0
/* A5680 800A4A80 8FA60034 */   lw        $a2, 0x34($sp)
/* A5684 800A4A84 10000057 */  b          .L800A4BE4
/* A5688 800A4A88 2402FFFF */   addiu     $v0, $zero, -1
.L800A4A8C:
/* A568C 800A4A8C 8FA90038 */  lw         $t1, 0x38($sp)
/* A5690 800A4A90 312A0007 */  andi       $t2, $t1, 7
/* A5694 800A4A94 11400007 */  beqz       $t2, .L800A4AB4
/* A5698 800A4A98 00000000 */   nop
/* A569C 800A4A9C 24040020 */  addiu      $a0, $zero, 0x20
/* A56A0 800A4AA0 24050001 */  addiu      $a1, $zero, 1
/* A56A4 800A4AA4 0C02B5EC */  jal        func_800AD7B0
/* A56A8 800A4AA8 8FA60038 */   lw        $a2, 0x38($sp)
/* A56AC 800A4AAC 1000004D */  b          .L800A4BE4
/* A56B0 800A4AB0 2402FFFF */   addiu     $v0, $zero, -1
.L800A4AB4:
/* A56B4 800A4AB4 8FAB003C */  lw         $t3, 0x3c($sp)
/* A56B8 800A4AB8 316C0001 */  andi       $t4, $t3, 1
/* A56BC 800A4ABC 11800007 */  beqz       $t4, .L800A4ADC
/* A56C0 800A4AC0 00000000 */   nop
/* A56C4 800A4AC4 24040021 */  addiu      $a0, $zero, 0x21
/* A56C8 800A4AC8 24050001 */  addiu      $a1, $zero, 1
/* A56CC 800A4ACC 0C02B5EC */  jal        func_800AD7B0
/* A56D0 800A4AD0 8FA6003C */   lw        $a2, 0x3c($sp)
/* A56D4 800A4AD4 10000043 */  b          .L800A4BE4
/* A56D8 800A4AD8 2402FFFF */   addiu     $v0, $zero, -1
.L800A4ADC:
/* A56DC 800A4ADC 8FAD003C */  lw         $t5, 0x3c($sp)
/* A56E0 800A4AE0 11A00006 */  beqz       $t5, .L800A4AFC
/* A56E4 800A4AE4 00000000 */   nop
/* A56E8 800A4AE8 3C010100 */  lui        $at, 0x100
/* A56EC 800A4AEC 34210001 */  ori        $at, $at, 1
/* A56F0 800A4AF0 01A1082B */  sltu       $at, $t5, $at
/* A56F4 800A4AF4 14200007 */  bnez       $at, .L800A4B14
/* A56F8 800A4AF8 00000000 */   nop
.L800A4AFC:
/* A56FC 800A4AFC 24040022 */  addiu      $a0, $zero, 0x22
/* A5700 800A4B00 24050001 */  addiu      $a1, $zero, 1
/* A5704 800A4B04 0C02B5EC */  jal        func_800AD7B0
/* A5708 800A4B08 8FA6003C */   lw        $a2, 0x3c($sp)
/* A570C 800A4B0C 10000035 */  b          .L800A4BE4
/* A5710 800A4B10 2402FFFF */   addiu     $v0, $zero, -1
.L800A4B14:
/* A5714 800A4B14 8FAE0030 */  lw         $t6, 0x30($sp)
/* A5718 800A4B18 15C00005 */  bnez       $t6, .L800A4B30
/* A571C 800A4B1C 00000000 */   nop
/* A5720 800A4B20 8FB80028 */  lw         $t8, 0x28($sp)
/* A5724 800A4B24 240F000B */  addiu      $t7, $zero, 0xb
/* A5728 800A4B28 10000004 */  b          .L800A4B3C
/* A572C 800A4B2C A70F0000 */   sh        $t7, ($t8)
.L800A4B30:
/* A5730 800A4B30 8FA80028 */  lw         $t0, 0x28($sp)
/* A5734 800A4B34 2419000C */  addiu      $t9, $zero, 0xc
/* A5738 800A4B38 A5190000 */  sh         $t9, ($t0)
.L800A4B3C:
/* A573C 800A4B3C 8FA9002C */  lw         $t1, 0x2c($sp)
/* A5740 800A4B40 8FAA0028 */  lw         $t2, 0x28($sp)
/* A5744 800A4B44 A1490002 */  sb         $t1, 2($t2)
/* A5748 800A4B48 8FAB0040 */  lw         $t3, 0x40($sp)
/* A574C 800A4B4C 8FAC0028 */  lw         $t4, 0x28($sp)
/* A5750 800A4B50 AD8B0004 */  sw         $t3, 4($t4)
/* A5754 800A4B54 8FAD0038 */  lw         $t5, 0x38($sp)
/* A5758 800A4B58 8FAE0028 */  lw         $t6, 0x28($sp)
/* A575C 800A4B5C ADCD0008 */  sw         $t5, 8($t6)
/* A5760 800A4B60 8FAF0034 */  lw         $t7, 0x34($sp)
/* A5764 800A4B64 8FB80028 */  lw         $t8, 0x28($sp)
/* A5768 800A4B68 AF0F000C */  sw         $t7, 0xc($t8)
/* A576C 800A4B6C 8FB9003C */  lw         $t9, 0x3c($sp)
/* A5770 800A4B70 8FA80028 */  lw         $t0, 0x28($sp)
/* A5774 800A4B74 AD190010 */  sw         $t9, 0x10($t0)
/* A5778 800A4B78 8FA90028 */  lw         $t1, 0x28($sp)
/* A577C 800A4B7C AD200014 */  sw         $zero, 0x14($t1)
/* A5780 800A4B80 8FAA002C */  lw         $t2, 0x2c($sp)
/* A5784 800A4B84 24010001 */  addiu      $at, $zero, 1
/* A5788 800A4B88 1541000A */  bne        $t2, $at, .L800A4BB4
/* A578C 800A4B8C 00000000 */   nop
/* A5790 800A4B90 0C02C210 */  jal        func_800B0840
/* A5794 800A4B94 00000000 */   nop
/* A5798 800A4B98 00408825 */  or         $s1, $v0, $zero
/* A579C 800A4B9C 02202025 */  or         $a0, $s1, $zero
/* A57A0 800A4BA0 8FA50028 */  lw         $a1, 0x28($sp)
/* A57A4 800A4BA4 0C02B6E8 */  jal        func_800ADBA0
/* A57A8 800A4BA8 00003025 */   or        $a2, $zero, $zero
/* A57AC 800A4BAC 10000009 */  b          .L800A4BD4
/* A57B0 800A4BB0 00408025 */   or        $s0, $v0, $zero
.L800A4BB4:
/* A57B4 800A4BB4 0C02C210 */  jal        func_800B0840
/* A57B8 800A4BB8 00000000 */   nop
/* A57BC 800A4BBC 00408825 */  or         $s1, $v0, $zero
/* A57C0 800A4BC0 02202025 */  or         $a0, $s1, $zero
/* A57C4 800A4BC4 8FA50028 */  lw         $a1, 0x28($sp)
/* A57C8 800A4BC8 0C025C40 */  jal        func_80097100
/* A57CC 800A4BCC 00003025 */   or        $a2, $zero, $zero
/* A57D0 800A4BD0 00408025 */  or         $s0, $v0, $zero
.L800A4BD4:
/* A57D4 800A4BD4 10000003 */  b          .L800A4BE4
/* A57D8 800A4BD8 02001025 */   or        $v0, $s0, $zero
/* A57DC 800A4BDC 10000001 */  b          .L800A4BE4
/* A57E0 800A4BE0 00000000 */   nop
.L800A4BE4:
/* A57E4 800A4BE4 8FBF001C */  lw         $ra, 0x1c($sp)
/* A57E8 800A4BE8 8FB00014 */  lw         $s0, 0x14($sp)
/* A57EC 800A4BEC 8FB10018 */  lw         $s1, 0x18($sp)
/* A57F0 800A4BF0 03E00008 */  jr         $ra
/* A57F4 800A4BF4 27BD0028 */   addiu     $sp, $sp, 0x28
/* A57F8 800A4BF8 00000000 */  nop
/* A57FC 800A4BFC 00000000 */  nop
