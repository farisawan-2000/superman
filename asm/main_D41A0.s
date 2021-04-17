.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D35A0
/* D41A0 800D35A0 3C0E800E */  lui        $t6, %hi(D_800DB320)
/* D41A4 800D35A4 8DCEB320 */  lw         $t6, %lo(D_800DB320)($t6)
/* D41A8 800D35A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D41AC 800D35AC AFBF001C */  sw         $ra, 0x1c($sp)
/* D41B0 800D35B0 15C00059 */  bnez       $t6, .L800D3718
/* D41B4 800D35B4 AFA40030 */   sw        $a0, 0x30($sp)
/* D41B8 800D35B8 0C0338E0 */  jal        func_800CE380
/* D41BC 800D35BC 00000000 */   nop
/* D41C0 800D35C0 3C048014 */  lui        $a0, %hi(D_80147E90)
/* D41C4 800D35C4 3C058014 */  lui        $a1, %hi(D_80147EA8)
/* D41C8 800D35C8 24A57EA8 */  addiu      $a1, $a1, %lo(D_80147EA8)
/* D41CC 800D35CC 24847E90 */  addiu      $a0, $a0, %lo(D_80147E90)
/* D41D0 800D35D0 0C033544 */  jal        func_800CD510
/* D41D4 800D35D4 24060005 */   addiu     $a2, $zero, 5
/* D41D8 800D35D8 3C018014 */  lui        $at, %hi(D_80147EC0)
/* D41DC 800D35DC 240F000D */  addiu      $t7, $zero, 0xd
/* D41E0 800D35E0 A42F7EC0 */  sh         $t7, %lo(D_80147EC0)($at)
/* D41E4 800D35E4 A0207EC2 */  sb         $zero, 0x7ec2($at)
/* D41E8 800D35E8 AC207EC4 */  sw         $zero, 0x7ec4($at)
/* D41EC 800D35EC 3C018014 */  lui        $at, %hi(D_80147ED8)
/* D41F0 800D35F0 2418000E */  addiu      $t8, $zero, 0xe
/* D41F4 800D35F4 3C058014 */  lui        $a1, 0x8014
/* D41F8 800D35F8 3C068014 */  lui        $a2, %hi(D_80147EC0)
/* D41FC 800D35FC A4387ED8 */  sh         $t8, %lo(D_80147ED8)($at)
/* D4200 800D3600 A0207EDA */  sb         $zero, 0x7eda($at)
/* D4204 800D3604 AC207EDC */  sw         $zero, 0x7edc($at)
/* D4208 800D3608 24C67EC0 */  addiu      $a2, $a2, %lo(D_80147EC0)
/* D420C 800D360C 24A57E90 */  addiu      $a1, $a1, 0x7e90
/* D4210 800D3610 0C03304C */  jal        func_800CC130
/* D4214 800D3614 24040007 */   addiu     $a0, $zero, 7
/* D4218 800D3618 3C058014 */  lui        $a1, %hi(D_80147E90)
/* D421C 800D361C 3C068014 */  lui        $a2, %hi(D_80147ED8)
/* D4220 800D3620 24C67ED8 */  addiu      $a2, $a2, %lo(D_80147ED8)
/* D4224 800D3624 24A57E90 */  addiu      $a1, $a1, %lo(D_80147E90)
/* D4228 800D3628 0C03304C */  jal        func_800CC130
/* D422C 800D362C 24040003 */   addiu     $a0, $zero, 3
/* D4230 800D3630 2419FFFF */  addiu      $t9, $zero, -1
/* D4234 800D3634 AFB90028 */  sw         $t9, 0x28($sp)
/* D4238 800D3638 0C033758 */  jal        func_800CDD60
/* D423C 800D363C 00002025 */   or        $a0, $zero, $zero
/* D4240 800D3640 AFA20024 */  sw         $v0, 0x24($sp)
/* D4244 800D3644 8FA80024 */  lw         $t0, 0x24($sp)
/* D4248 800D3648 8FA90030 */  lw         $t1, 0x30($sp)
/* D424C 800D364C 0109082A */  slt        $at, $t0, $t1
/* D4250 800D3650 10200005 */  beqz       $at, .L800D3668
/* D4254 800D3654 00000000 */   nop
/* D4258 800D3658 AFA80028 */  sw         $t0, 0x28($sp)
/* D425C 800D365C 00002025 */  or         $a0, $zero, $zero
/* D4260 800D3660 0C033720 */  jal        func_800CDC80
/* D4264 800D3664 01202825 */   or        $a1, $t1, $zero
.L800D3668:
/* D4268 800D3668 0C033DD4 */  jal        func_800CF750
/* D426C 800D366C 00000000 */   nop
/* D4270 800D3670 3C01800E */  lui        $at, 0x800e
/* D4274 800D3674 3C0C8014 */  lui        $t4, %hi(D_80147E90)
/* D4278 800D3678 3C0B8014 */  lui        $t3, %hi(D_80146CE0)
/* D427C 800D367C 258C7E90 */  addiu      $t4, $t4, %lo(D_80147E90)
/* D4280 800D3680 240A0001 */  addiu      $t2, $zero, 1
/* D4284 800D3684 256B6CE0 */  addiu      $t3, $t3, %lo(D_80146CE0)
/* D4288 800D3688 AC2AB320 */  sw         $t2, -0x4ce0($at)
/* D428C 800D368C AC2BB324 */  sw         $t3, -0x4cdc($at)
/* D4290 800D3690 AC2CB328 */  sw         $t4, -0x4cd8($at)
/* D4294 800D3694 AC2CB32C */  sw         $t4, -0x4cd4($at)
/* D4298 800D3698 3C0D8014 */  lui        $t5, %hi(D_80146E90)
/* D429C 800D369C 8FAF0030 */  lw         $t7, 0x30($sp)
/* D42A0 800D36A0 3C01800E */  lui        $at, 0x800e
/* D42A4 800D36A4 25AD6E90 */  addiu      $t5, $t5, %lo(D_80146E90)
/* D42A8 800D36A8 25AE1000 */  addiu      $t6, $t5, 0x1000
/* D42AC 800D36AC 3C06800D */  lui        $a2, 0x800d
/* D42B0 800D36B0 3C07800E */  lui        $a3, %hi(D_800DB320)
/* D42B4 800D36B4 AFA2002C */  sw         $v0, 0x2c($sp)
/* D42B8 800D36B8 AC20B330 */  sw         $zero, -0x4cd0($at)
/* D42BC 800D36BC AC20B334 */  sw         $zero, -0x4ccc($at)
/* D42C0 800D36C0 AC20B338 */  sw         $zero, -0x4cc8($at)
/* D42C4 800D36C4 24E7B320 */  addiu      $a3, $a3, %lo(D_800DB320)
/* D42C8 800D36C8 24C63728 */  addiu      $a2, $a2, 0x3728
/* D42CC 800D36CC AFAE0010 */  sw         $t6, 0x10($sp)
/* D42D0 800D36D0 01602025 */  or         $a0, $t3, $zero
/* D42D4 800D36D4 00002825 */  or         $a1, $zero, $zero
/* D42D8 800D36D8 0C02FF3C */  jal        func_800BFCF0
/* D42DC 800D36DC AFAF0014 */   sw        $t7, 0x14($sp)
/* D42E0 800D36E0 0C033DE4 */  jal        func_800CF790
/* D42E4 800D36E4 00000000 */   nop
/* D42E8 800D36E8 3C048014 */  lui        $a0, %hi(D_80146CE0)
/* D42EC 800D36EC 0C034CE8 */  jal        func_800D33A0
/* D42F0 800D36F0 24846CE0 */   addiu     $a0, $a0, %lo(D_80146CE0)
/* D42F4 800D36F4 0C033DDC */  jal        func_800CF770
/* D42F8 800D36F8 8FA4002C */   lw        $a0, 0x2c($sp)
/* D42FC 800D36FC 8FB80028 */  lw         $t8, 0x28($sp)
/* D4300 800D3700 2401FFFF */  addiu      $at, $zero, -1
/* D4304 800D3704 13010004 */  beq        $t8, $at, .L800D3718
/* D4308 800D3708 00000000 */   nop
/* D430C 800D370C 00002025 */  or         $a0, $zero, $zero
/* D4310 800D3710 0C033720 */  jal        func_800CDC80
/* D4314 800D3714 03002825 */   or        $a1, $t8, $zero
.L800D3718:
/* D4318 800D3718 8FBF001C */  lw         $ra, 0x1c($sp)
/* D431C 800D371C 27BD0030 */  addiu      $sp, $sp, 0x30
/* D4320 800D3720 03E00008 */  jr         $ra
/* D4324 800D3724 00000000 */   nop

glabel func_800D3728
/* D4328 800D3728 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D432C 800D372C AFBF001C */  sw         $ra, 0x1c($sp)
/* D4330 800D3730 AFA40038 */  sw         $a0, 0x38($sp)
/* D4334 800D3734 AFB00018 */  sw         $s0, 0x18($sp)
/* D4338 800D3738 AFA0002C */  sw         $zero, 0x2c($sp)
/* D433C 800D373C 0C034E40 */  jal        func_800D3900
/* D4340 800D3740 AFA00028 */   sw        $zero, 0x28($sp)
/* D4344 800D3744 AFA20034 */  sw         $v0, 0x34($sp)
/* D4348 800D3748 8FAE0034 */  lw         $t6, 0x34($sp)
/* D434C 800D374C 3C018014 */  lui        $at, %hi(D_80147EF0)
/* D4350 800D3750 95CF0002 */  lhu        $t7, 2($t6)
/* D4354 800D3754 15E00004 */  bnez       $t7, .L800D3768
/* D4358 800D3758 A42F7EF0 */   sh        $t7, %lo(D_80147EF0)($at)
/* D435C 800D375C 24180001 */  addiu      $t8, $zero, 1
/* D4360 800D3760 3C018014 */  lui        $at, %hi(D_80147EF0)
/* D4364 800D3764 A4387EF0 */  sh         $t8, %lo(D_80147EF0)($at)
.L800D3768:
/* D4368 800D3768 8FB90038 */  lw         $t9, 0x38($sp)
/* D436C 800D376C AFB90030 */  sw         $t9, 0x30($sp)
.L800D3770:
/* D4370 800D3770 8FA80030 */  lw         $t0, 0x30($sp)
/* D4374 800D3774 27A5002C */  addiu      $a1, $sp, 0x2c
/* D4378 800D3778 24060001 */  addiu      $a2, $zero, 1
/* D437C 800D377C 0C02F85C */  jal        func_800BE170
/* D4380 800D3780 8D04000C */   lw        $a0, 0xc($t0)
/* D4384 800D3784 8FA9002C */  lw         $t1, 0x2c($sp)
/* D4388 800D3788 2401000D */  addiu      $at, $zero, 0xd
/* D438C 800D378C 95300000 */  lhu        $s0, ($t1)
/* D4390 800D3790 12010005 */  beq        $s0, $at, .L800D37A8
/* D4394 800D3794 2401000E */   addiu     $at, $zero, 0xe
/* D4398 800D3798 12010047 */  beq        $s0, $at, .L800D38B8
/* D439C 800D379C 00000000 */   nop
/* D43A0 800D37A0 1000FFF3 */  b          .L800D3770
/* D43A4 800D37A4 00000000 */   nop
.L800D37A8:
/* D43A8 800D37A8 0C033E34 */  jal        func_800CF8D0
/* D43AC 800D37AC 00000000 */   nop
/* D43B0 800D37B0 3C0A8014 */  lui        $t2, %hi(D_80147EF0)
/* D43B4 800D37B4 954A7EF0 */  lhu        $t2, %lo(D_80147EF0)($t2)
/* D43B8 800D37B8 3C018014 */  lui        $at, %hi(D_80147EF0)
/* D43BC 800D37BC 254BFFFF */  addiu      $t3, $t2, -1
/* D43C0 800D37C0 316CFFFF */  andi       $t4, $t3, 0xffff
/* D43C4 800D37C4 15800010 */  bnez       $t4, .L800D3808
/* D43C8 800D37C8 A42B7EF0 */   sh        $t3, %lo(D_80147EF0)($at)
/* D43CC 800D37CC 0C034E40 */  jal        func_800D3900
/* D43D0 800D37D0 00000000 */   nop
/* D43D4 800D37D4 AFA20034 */  sw         $v0, 0x34($sp)
/* D43D8 800D37D8 8FAD0034 */  lw         $t5, 0x34($sp)
/* D43DC 800D37DC 8DAE0010 */  lw         $t6, 0x10($t5)
/* D43E0 800D37E0 11C00005 */  beqz       $t6, .L800D37F8
/* D43E4 800D37E4 00000000 */   nop
/* D43E8 800D37E8 01C02025 */  or         $a0, $t6, $zero
/* D43EC 800D37EC 8DA50014 */  lw         $a1, 0x14($t5)
/* D43F0 800D37F0 0C02F7A8 */  jal        func_800BDEA0
/* D43F4 800D37F4 00003025 */   or        $a2, $zero, $zero
.L800D37F8:
/* D43F8 800D37F8 8FAF0034 */  lw         $t7, 0x34($sp)
/* D43FC 800D37FC 3C018014 */  lui        $at, %hi(D_80147EF0)
/* D4400 800D3800 95F80002 */  lhu        $t8, 2($t7)
/* D4404 800D3804 A4387EF0 */  sh         $t8, %lo(D_80147EF0)($at)
.L800D3808:
/* D4408 800D3808 3C198014 */  lui        $t9, %hi(D_80146CBC)
/* D440C 800D380C 8F396CBC */  lw         $t9, %lo(D_80146CBC)($t9)
/* D4410 800D3810 8FA90028 */  lw         $t1, 0x28($sp)
/* D4414 800D3814 3C018014 */  lui        $at, %hi(D_80146CBC)
/* D4418 800D3818 27280001 */  addiu      $t0, $t9, 1
/* D441C 800D381C 1120000C */  beqz       $t1, .L800D3850
/* D4420 800D3820 AC286CBC */   sw        $t0, %lo(D_80146CBC)($at)
/* D4424 800D3824 0C031E2C */  jal        func_800C78B0
/* D4428 800D3828 00000000 */   nop
/* D442C 800D382C AFA20024 */  sw         $v0, 0x24($sp)
/* D4430 800D3830 8FAA0024 */  lw         $t2, 0x24($sp)
/* D4434 800D3834 240C0000 */  addiu      $t4, $zero, 0
/* D4438 800D3838 3C018014 */  lui        $at, %hi(D_80146CB0)
/* D443C 800D383C AC2C6CB0 */  sw         $t4, %lo(D_80146CB0)($at)
/* D4440 800D3840 3C018014 */  lui        $at, %hi(D_80146CB4)
/* D4444 800D3844 01406825 */  or         $t5, $t2, $zero
/* D4448 800D3848 AC2D6CB4 */  sw         $t5, %lo(D_80146CB4)($at)
/* D444C 800D384C AFA00028 */  sw         $zero, 0x28($sp)
.L800D3850:
/* D4450 800D3850 3C0B8014 */  lui        $t3, %hi(D_80146CB8)
/* D4454 800D3854 8D6B6CB8 */  lw         $t3, %lo(D_80146CB8)($t3)
/* D4458 800D3858 0C031E2C */  jal        func_800C78B0
/* D445C 800D385C AFAB0024 */   sw        $t3, 0x24($sp)
/* D4460 800D3860 3C018014 */  lui        $at, %hi(D_80146CB8)
/* D4464 800D3864 AC226CB8 */  sw         $v0, %lo(D_80146CB8)($at)
/* D4468 800D3868 3C0E8014 */  lui        $t6, %hi(D_80146CB8)
/* D446C 800D386C 8DCE6CB8 */  lw         $t6, %lo(D_80146CB8)($t6)
/* D4470 800D3870 8FAF0024 */  lw         $t7, 0x24($sp)
/* D4474 800D3874 3C0B8014 */  lui        $t3, %hi(D_80146CB4)
/* D4478 800D3878 8D6B6CB4 */  lw         $t3, %lo(D_80146CB4)($t3)
/* D447C 800D387C 01CFC023 */  subu       $t8, $t6, $t7
/* D4480 800D3880 03004825 */  or         $t1, $t8, $zero
/* D4484 800D3884 3C0A8014 */  lui        $t2, %hi(D_80146CB0)
/* D4488 800D3888 012B6821 */  addu       $t5, $t1, $t3
/* D448C 800D388C 8D4A6CB0 */  lw         $t2, %lo(D_80146CB0)($t2)
/* D4490 800D3890 24080000 */  addiu      $t0, $zero, 0
/* D4494 800D3894 01AB082B */  sltu       $at, $t5, $t3
/* D4498 800D3898 00286021 */  addu       $t4, $at, $t0
/* D449C 800D389C 3C018014 */  lui        $at, %hi(D_80146CB0)
/* D44A0 800D38A0 018A6021 */  addu       $t4, $t4, $t2
/* D44A4 800D38A4 AC2C6CB0 */  sw         $t4, %lo(D_80146CB0)($at)
/* D44A8 800D38A8 3C018014 */  lui        $at, %hi(D_80146CB4)
/* D44AC 800D38AC AFB80024 */  sw         $t8, 0x24($sp)
/* D44B0 800D38B0 1000FFAF */  b          .L800D3770
/* D44B4 800D38B4 AC2D6CB4 */   sw        $t5, %lo(D_80146CB4)($at)
.L800D38B8:
/* D44B8 800D38B8 0C033903 */  jal        func_800CE40C
/* D44BC 800D38BC 00000000 */   nop
/* D44C0 800D38C0 1000FFAB */  b          .L800D3770
/* D44C4 800D38C4 00000000 */   nop
/* D44C8 800D38C8 00000000 */  nop
/* D44CC 800D38CC 00000000 */  nop
/* D44D0 800D38D0 00000000 */  nop
/* D44D4 800D38D4 00000000 */  nop
/* D44D8 800D38D8 00000000 */  nop
/* D44DC 800D38DC 00000000 */  nop
/* D44E0 800D38E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* D44E4 800D38E4 8FB00018 */  lw         $s0, 0x18($sp)
/* D44E8 800D38E8 27BD0038 */  addiu      $sp, $sp, 0x38
/* D44EC 800D38EC 03E00008 */  jr         $ra
/* D44F0 800D38F0 00000000 */   nop
/* D44F4 800D38F4 00000000 */  nop
/* D44F8 800D38F8 00000000 */  nop
/* D44FC 800D38FC 00000000 */  nop
