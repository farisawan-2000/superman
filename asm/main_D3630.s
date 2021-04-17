.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2A30
/* D3630 800D2A30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D3634 800D2A34 AFA40030 */  sw         $a0, 0x30($sp)
/* D3638 800D2A38 AFBF0014 */  sw         $ra, 0x14($sp)
/* D363C 800D2A3C AFA60038 */  sw         $a2, 0x38($sp)
/* D3640 800D2A40 AFA7003C */  sw         $a3, 0x3c($sp)
/* D3644 800D2A44 00C02025 */  or         $a0, $a2, $zero
/* D3648 800D2A48 00E02825 */  or         $a1, $a3, $zero
/* D364C 800D2A4C 8FA70044 */  lw         $a3, 0x44($sp)
/* D3650 800D2A50 0C030D77 */  jal        func_800C35DC
/* D3654 800D2A54 8FA60040 */   lw        $a2, 0x40($sp)
/* D3658 800D2A58 AFA20020 */  sw         $v0, 0x20($sp)
/* D365C 800D2A5C AFA30024 */  sw         $v1, 0x24($sp)
/* D3660 800D2A60 8FA40040 */  lw         $a0, 0x40($sp)
/* D3664 800D2A64 8FA50044 */  lw         $a1, 0x44($sp)
/* D3668 800D2A68 00403025 */  or         $a2, $v0, $zero
/* D366C 800D2A6C 0C030D8E */  jal        func_800C3638
/* D3670 800D2A70 00603825 */   or        $a3, $v1, $zero
/* D3674 800D2A74 8FAE0038 */  lw         $t6, 0x38($sp)
/* D3678 800D2A78 8FAF003C */  lw         $t7, 0x3c($sp)
/* D367C 800D2A7C 8FA80020 */  lw         $t0, 0x20($sp)
/* D3680 800D2A80 01C2C023 */  subu       $t8, $t6, $v0
/* D3684 800D2A84 01E3082B */  sltu       $at, $t7, $v1
/* D3688 800D2A88 0301C023 */  subu       $t8, $t8, $at
/* D368C 800D2A8C 01E3C823 */  subu       $t9, $t7, $v1
/* D3690 800D2A90 AFB9002C */  sw         $t9, 0x2c($sp)
/* D3694 800D2A94 AFB80028 */  sw         $t8, 0x28($sp)
/* D3698 800D2A98 1D000017 */  bgtz       $t0, .L800D2AF8
/* D369C 800D2A9C 8FA90024 */   lw        $t1, 0x24($sp)
/* D36A0 800D2AA0 05000003 */  bltz       $t0, .L800D2AB0
/* D36A4 800D2AA4 00000000 */   nop
/* D36A8 800D2AA8 10000014 */  b          .L800D2AFC
/* D36AC 800D2AAC 27A80020 */   addiu     $t0, $sp, 0x20
.L800D2AB0:
/* D36B0 800D2AB0 07020012 */  bltzl      $t8, .L800D2AFC
/* D36B4 800D2AB4 27A80020 */   addiu     $t0, $sp, 0x20
/* D36B8 800D2AB8 1F000003 */  bgtz       $t8, .L800D2AC8
/* D36BC 800D2ABC 252B0001 */   addiu     $t3, $t1, 1
/* D36C0 800D2AC0 5320000E */  beql       $t9, $zero, .L800D2AFC
/* D36C4 800D2AC4 27A80020 */   addiu     $t0, $sp, 0x20
.L800D2AC8:
/* D36C8 800D2AC8 8FAC0040 */  lw         $t4, 0x40($sp)
/* D36CC 800D2ACC 8FAD0044 */  lw         $t5, 0x44($sp)
/* D36D0 800D2AD0 2D610001 */  sltiu      $at, $t3, 1
/* D36D4 800D2AD4 01015021 */  addu       $t2, $t0, $at
/* D36D8 800D2AD8 030C7023 */  subu       $t6, $t8, $t4
/* D36DC 800D2ADC 032D082B */  sltu       $at, $t9, $t5
/* D36E0 800D2AE0 01C17023 */  subu       $t6, $t6, $at
/* D36E4 800D2AE4 032D7823 */  subu       $t7, $t9, $t5
/* D36E8 800D2AE8 AFAA0020 */  sw         $t2, 0x20($sp)
/* D36EC 800D2AEC AFAB0024 */  sw         $t3, 0x24($sp)
/* D36F0 800D2AF0 AFAF002C */  sw         $t7, 0x2c($sp)
/* D36F4 800D2AF4 AFAE0028 */  sw         $t6, 0x28($sp)
.L800D2AF8:
/* D36F8 800D2AF8 27A80020 */  addiu      $t0, $sp, 0x20
.L800D2AFC:
/* D36FC 800D2AFC 8FA20030 */  lw         $v0, 0x30($sp)
/* D3700 800D2B00 8D010000 */  lw         $at, ($t0)
/* D3704 800D2B04 AC410000 */  sw         $at, ($v0)
/* D3708 800D2B08 8D0B0004 */  lw         $t3, 4($t0)
/* D370C 800D2B0C AC4B0004 */  sw         $t3, 4($v0)
/* D3710 800D2B10 8D010008 */  lw         $at, 8($t0)
/* D3714 800D2B14 AC410008 */  sw         $at, 8($v0)
/* D3718 800D2B18 8D0B000C */  lw         $t3, 0xc($t0)
/* D371C 800D2B1C AC4B000C */  sw         $t3, 0xc($v0)
/* D3720 800D2B20 8FBF0014 */  lw         $ra, 0x14($sp)
/* D3724 800D2B24 27BD0030 */  addiu      $sp, $sp, 0x30
/* D3728 800D2B28 03E00008 */  jr         $ra
/* D372C 800D2B2C 00000000 */   nop

glabel func_800D2B30
/* D3730 800D2B30 00A6001A */  div        $zero, $a1, $a2
/* D3734 800D2B34 00001012 */  mflo       $v0
/* D3738 800D2B38 27BDFFF8 */  addiu      $sp, $sp, -8
/* D373C 800D2B3C 14C00002 */  bnez       $a2, .L800D2B48
/* D3740 800D2B40 00000000 */   nop
/* D3744 800D2B44 0007000D */  break      7
.L800D2B48:
/* D3748 800D2B48 2401FFFF */   addiu     $at, $zero, -1
/* D374C 800D2B4C 14C10004 */  bne        $a2, $at, .L800D2B60
/* D3750 800D2B50 3C018000 */   lui       $at, 0x8000
/* D3754 800D2B54 14A10002 */  bne        $a1, $at, .L800D2B60
/* D3758 800D2B58 00000000 */   nop
/* D375C 800D2B5C 0006000D */  break      6
.L800D2B60:
/* D3760 800D2B60 00C20019 */   multu     $a2, $v0
/* D3764 800D2B64 AFA20000 */  sw         $v0, ($sp)
/* D3768 800D2B68 27AF0000 */  addiu      $t7, $sp, 0
/* D376C 800D2B6C 00007012 */  mflo       $t6
/* D3770 800D2B70 00AE1823 */  subu       $v1, $a1, $t6
/* D3774 800D2B74 04410008 */  bgez       $v0, .L800D2B98
/* D3778 800D2B78 AFA30004 */   sw        $v1, 4($sp)
/* D377C 800D2B7C AFA20000 */  sw         $v0, ($sp)
/* D3780 800D2B80 18600005 */  blez       $v1, .L800D2B98
/* D3784 800D2B84 AFA30004 */   sw        $v1, 4($sp)
/* D3788 800D2B88 24420001 */  addiu      $v0, $v0, 1
/* D378C 800D2B8C 00661823 */  subu       $v1, $v1, $a2
/* D3790 800D2B90 AFA30004 */  sw         $v1, 4($sp)
/* D3794 800D2B94 AFA20000 */  sw         $v0, ($sp)
.L800D2B98:
/* D3798 800D2B98 8DE10000 */  lw         $at, ($t7)
/* D379C 800D2B9C 00801025 */  or         $v0, $a0, $zero
/* D37A0 800D2BA0 AC810000 */  sw         $at, ($a0)
/* D37A4 800D2BA4 8DE80004 */  lw         $t0, 4($t7)
/* D37A8 800D2BA8 27BD0008 */  addiu      $sp, $sp, 8
/* D37AC 800D2BAC 03E00008 */  jr         $ra
/* D37B0 800D2BB0 AC880004 */   sw        $t0, 4($a0)
/* D37B4 800D2BB4 00000000 */  nop
/* D37B8 800D2BB8 00000000 */  nop
/* D37BC 800D2BBC 00000000 */  nop
