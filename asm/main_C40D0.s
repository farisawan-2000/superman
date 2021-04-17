.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C34D0
/* C40D0 800C34D0 AFA40000 */  sw         $a0, ($sp)
/* C40D4 800C34D4 AFA50004 */  sw         $a1, 4($sp)
/* C40D8 800C34D8 AFA60008 */  sw         $a2, 8($sp)
/* C40DC 800C34DC AFA7000C */  sw         $a3, 0xc($sp)
/* C40E0 800C34E0 DFAF0008 */  ld         $t7, 8($sp)
/* C40E4 800C34E4 DFAE0000 */  ld         $t6, ($sp)
/* C40E8 800C34E8 01EE1016 */  dsrlv      $v0, $t6, $t7
/* C40EC 800C34EC 0002183C */  dsll32     $v1, $v0, 0
/* C40F0 800C34F0 0003183F */  dsra32     $v1, $v1, 0
/* C40F4 800C34F4 03E00008 */  jr         $ra
/* C40F8 800C34F8 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C34FC
/* C40FC 800C34FC AFA40000 */  sw         $a0, ($sp)
/* C4100 800C3500 AFA50004 */  sw         $a1, 4($sp)
/* C4104 800C3504 AFA60008 */  sw         $a2, 8($sp)
/* C4108 800C3508 AFA7000C */  sw         $a3, 0xc($sp)
/* C410C 800C350C DFAF0008 */  ld         $t7, 8($sp)
/* C4110 800C3510 DFAE0000 */  ld         $t6, ($sp)
/* C4114 800C3514 01CF001F */  ddivu      $zero, $t6, $t7
/* C4118 800C3518 15E00002 */  bnez       $t7, .L800C3524
/* C411C 800C351C 00000000 */   nop
/* C4120 800C3520 0007000D */  break      7
.L800C3524:
/* C4124 800C3524 00001010 */   mfhi      $v0
/* C4128 800C3528 0002183C */  dsll32     $v1, $v0, 0
/* C412C 800C352C 0003183F */  dsra32     $v1, $v1, 0
/* C4130 800C3530 03E00008 */  jr         $ra
/* C4134 800C3534 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C3538
/* C4138 800C3538 AFA40000 */  sw         $a0, ($sp)
/* C413C 800C353C AFA50004 */  sw         $a1, 4($sp)
/* C4140 800C3540 AFA60008 */  sw         $a2, 8($sp)
/* C4144 800C3544 AFA7000C */  sw         $a3, 0xc($sp)
/* C4148 800C3548 DFAF0008 */  ld         $t7, 8($sp)
/* C414C 800C354C DFAE0000 */  ld         $t6, ($sp)
/* C4150 800C3550 01CF001F */  ddivu      $zero, $t6, $t7
/* C4154 800C3554 15E00002 */  bnez       $t7, .L800C3560
/* C4158 800C3558 00000000 */   nop
/* C415C 800C355C 0007000D */  break      7
.L800C3560:
/* C4160 800C3560 00001012 */   mflo      $v0
/* C4164 800C3564 0002183C */  dsll32     $v1, $v0, 0
/* C4168 800C3568 0003183F */  dsra32     $v1, $v1, 0
/* C416C 800C356C 03E00008 */  jr         $ra
/* C4170 800C3570 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C3574
/* C4174 800C3574 AFA40000 */  sw         $a0, ($sp)
/* C4178 800C3578 AFA50004 */  sw         $a1, 4($sp)
/* C417C 800C357C AFA60008 */  sw         $a2, 8($sp)
/* C4180 800C3580 AFA7000C */  sw         $a3, 0xc($sp)
/* C4184 800C3584 DFAF0008 */  ld         $t7, 8($sp)
/* C4188 800C3588 DFAE0000 */  ld         $t6, ($sp)
/* C418C 800C358C 01EE1014 */  dsllv      $v0, $t6, $t7
/* C4190 800C3590 0002183C */  dsll32     $v1, $v0, 0
/* C4194 800C3594 0003183F */  dsra32     $v1, $v1, 0
/* C4198 800C3598 03E00008 */  jr         $ra
/* C419C 800C359C 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C35A0
/* C41A0 800C35A0 AFA40000 */  sw         $a0, ($sp)
/* C41A4 800C35A4 AFA50004 */  sw         $a1, 4($sp)
/* C41A8 800C35A8 AFA60008 */  sw         $a2, 8($sp)
/* C41AC 800C35AC AFA7000C */  sw         $a3, 0xc($sp)
/* C41B0 800C35B0 DFAF0008 */  ld         $t7, 8($sp)
/* C41B4 800C35B4 DFAE0000 */  ld         $t6, ($sp)
/* C41B8 800C35B8 01CF001F */  ddivu      $zero, $t6, $t7
/* C41BC 800C35BC 15E00002 */  bnez       $t7, .L800C35C8
/* C41C0 800C35C0 00000000 */   nop
/* C41C4 800C35C4 0007000D */  break      7
.L800C35C8:
/* C41C8 800C35C8 00001010 */   mfhi      $v0
/* C41CC 800C35CC 0002183C */  dsll32     $v1, $v0, 0
/* C41D0 800C35D0 0003183F */  dsra32     $v1, $v1, 0
/* C41D4 800C35D4 03E00008 */  jr         $ra
/* C41D8 800C35D8 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C35DC
/* C41DC 800C35DC AFA40000 */  sw         $a0, ($sp)
/* C41E0 800C35E0 AFA50004 */  sw         $a1, 4($sp)
/* C41E4 800C35E4 AFA60008 */  sw         $a2, 8($sp)
/* C41E8 800C35E8 AFA7000C */  sw         $a3, 0xc($sp)
/* C41EC 800C35EC DFAF0008 */  ld         $t7, 8($sp)
/* C41F0 800C35F0 DFAE0000 */  ld         $t6, ($sp)
/* C41F4 800C35F4 01CF001E */  ddiv       $zero, $t6, $t7
/* C41F8 800C35F8 00000000 */  nop
/* C41FC 800C35FC 15E00002 */  bnez       $t7, .L800C3608
/* C4200 800C3600 00000000 */   nop
/* C4204 800C3604 0007000D */  break      7
.L800C3608:
/* C4208 800C3608 6401FFFF */   daddiu    $at, $zero, -1
/* C420C 800C360C 15E10005 */  bne        $t7, $at, .L800C3624
/* C4210 800C3610 64010001 */   daddiu    $at, $zero, 1
/* C4214 800C3614 00010FFC */  dsll32     $at, $at, 0x1f
/* C4218 800C3618 15C10002 */  bne        $t6, $at, .L800C3624
/* C421C 800C361C 00000000 */   nop
/* C4220 800C3620 0006000D */  break      6
.L800C3624:
/* C4224 800C3624 00001012 */   mflo      $v0
/* C4228 800C3628 0002183C */  dsll32     $v1, $v0, 0
/* C422C 800C362C 0003183F */  dsra32     $v1, $v1, 0
/* C4230 800C3630 03E00008 */  jr         $ra
/* C4234 800C3634 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C3638
/* C4238 800C3638 AFA40000 */  sw         $a0, ($sp)
/* C423C 800C363C AFA50004 */  sw         $a1, 4($sp)
/* C4240 800C3640 AFA60008 */  sw         $a2, 8($sp)
/* C4244 800C3644 AFA7000C */  sw         $a3, 0xc($sp)
/* C4248 800C3648 DFAF0008 */  ld         $t7, 8($sp)
/* C424C 800C364C DFAE0000 */  ld         $t6, ($sp)
/* C4250 800C3650 01CF001D */  dmultu     $t6, $t7
/* C4254 800C3654 00001012 */  mflo       $v0
/* C4258 800C3658 0002183C */  dsll32     $v1, $v0, 0
/* C425C 800C365C 0003183F */  dsra32     $v1, $v1, 0
/* C4260 800C3660 03E00008 */  jr         $ra
/* C4264 800C3664 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C3668
/* C4268 800C3668 87AF0012 */  lh         $t7, 0x12($sp)
/* C426C 800C366C AFA60008 */  sw         $a2, 8($sp)
/* C4270 800C3670 AFA7000C */  sw         $a3, 0xc($sp)
/* C4274 800C3674 DFAE0008 */  ld         $t6, 8($sp)
/* C4278 800C3678 01E0C025 */  or         $t8, $t7, $zero
/* C427C 800C367C 0300C825 */  or         $t9, $t8, $zero
/* C4280 800C3680 01D9001F */  ddivu      $zero, $t6, $t9
/* C4284 800C3684 17200002 */  bnez       $t9, .L800C3690
/* C4288 800C3688 00000000 */   nop
/* C428C 800C368C 0007000D */  break      7
.L800C3690:
/* C4290 800C3690 00004012 */   mflo      $t0
/* C4294 800C3694 FC880000 */  sd         $t0, ($a0)
/* C4298 800C3698 87AA0012 */  lh         $t2, 0x12($sp)
/* C429C 800C369C DFA90008 */  ld         $t1, 8($sp)
/* C42A0 800C36A0 01405825 */  or         $t3, $t2, $zero
/* C42A4 800C36A4 01606025 */  or         $t4, $t3, $zero
/* C42A8 800C36A8 012C001F */  ddivu      $zero, $t1, $t4
/* C42AC 800C36AC 15800002 */  bnez       $t4, .L800C36B8
/* C42B0 800C36B0 00000000 */   nop
/* C42B4 800C36B4 0007000D */  break      7
.L800C36B8:
/* C42B8 800C36B8 00006810 */   mfhi      $t5
/* C42BC 800C36BC FCAD0000 */  sd         $t5, ($a1)
/* C42C0 800C36C0 03E00008 */  jr         $ra
/* C42C4 800C36C4 00000000 */   nop

glabel func_800C36C8
/* C42C8 800C36C8 27BDFFF8 */  addiu      $sp, $sp, -8
/* C42CC 800C36CC AFA40008 */  sw         $a0, 8($sp)
/* C42D0 800C36D0 AFA5000C */  sw         $a1, 0xc($sp)
/* C42D4 800C36D4 AFA60010 */  sw         $a2, 0x10($sp)
/* C42D8 800C36D8 AFA70014 */  sw         $a3, 0x14($sp)
/* C42DC 800C36DC DFAF0010 */  ld         $t7, 0x10($sp)
/* C42E0 800C36E0 DFAE0008 */  ld         $t6, 8($sp)
/* C42E4 800C36E4 01CF001E */  ddiv       $zero, $t6, $t7
/* C42E8 800C36E8 00000000 */  nop
/* C42EC 800C36EC 15E00002 */  bnez       $t7, .L800C36F8
/* C42F0 800C36F0 00000000 */   nop
/* C42F4 800C36F4 0007000D */  break      7
.L800C36F8:
/* C42F8 800C36F8 6401FFFF */   daddiu    $at, $zero, -1
/* C42FC 800C36FC 15E10005 */  bne        $t7, $at, .L800C3714
/* C4300 800C3700 64010001 */   daddiu    $at, $zero, 1
/* C4304 800C3704 00010FFC */  dsll32     $at, $at, 0x1f
/* C4308 800C3708 15C10002 */  bne        $t6, $at, .L800C3714
/* C430C 800C370C 00000000 */   nop
/* C4310 800C3710 0006000D */  break      6
.L800C3714:
/* C4314 800C3714 0000C010 */   mfhi      $t8
/* C4318 800C3718 FFB80000 */  sd         $t8, ($sp)
/* C431C 800C371C 07010003 */  bgez       $t8, .L800C372C
/* C4320 800C3720 00000000 */   nop
/* C4324 800C3724 1DE00007 */  bgtz       $t7, .L800C3744
/* C4328 800C3728 00000000 */   nop
.L800C372C:
/* C432C 800C372C DFB90000 */  ld         $t9, ($sp)
/* C4330 800C3730 1B200008 */  blez       $t9, .L800C3754
/* C4334 800C3734 00000000 */   nop
/* C4338 800C3738 DFA80010 */  ld         $t0, 0x10($sp)
/* C433C 800C373C 05010005 */  bgez       $t0, .L800C3754
/* C4340 800C3740 00000000 */   nop
.L800C3744:
/* C4344 800C3744 DFA90000 */  ld         $t1, ($sp)
/* C4348 800C3748 DFAA0010 */  ld         $t2, 0x10($sp)
/* C434C 800C374C 012A582D */  daddu      $t3, $t1, $t2
/* C4350 800C3750 FFAB0000 */  sd         $t3, ($sp)
.L800C3754:
/* C4354 800C3754 8FA20000 */  lw         $v0, ($sp)
/* C4358 800C3758 8FA30004 */  lw         $v1, 4($sp)
/* C435C 800C375C 03E00008 */  jr         $ra
/* C4360 800C3760 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800C3764
/* C4364 800C3764 AFA40000 */  sw         $a0, ($sp)
/* C4368 800C3768 AFA50004 */  sw         $a1, 4($sp)
/* C436C 800C376C AFA60008 */  sw         $a2, 8($sp)
/* C4370 800C3770 AFA7000C */  sw         $a3, 0xc($sp)
/* C4374 800C3774 DFAF0008 */  ld         $t7, 8($sp)
/* C4378 800C3778 DFAE0000 */  ld         $t6, ($sp)
/* C437C 800C377C 01EE1017 */  dsrav      $v0, $t6, $t7
/* C4380 800C3780 0002183C */  dsll32     $v1, $v0, 0
/* C4384 800C3784 0003183F */  dsra32     $v1, $v1, 0
/* C4388 800C3788 03E00008 */  jr         $ra
/* C438C 800C378C 0002103F */   dsra32    $v0, $v0, 0

glabel func_800C3790
/* C4390 800C3790 28A1000C */  slti       $at, $a1, 0xc
/* C4394 800C3794 1420001D */  bnez       $at, .L800C380C
/* C4398 800C3798 00041823 */   negu      $v1, $a0
/* C439C 800C379C 30630003 */  andi       $v1, $v1, 3
/* C43A0 800C37A0 10600003 */  beqz       $v1, .L800C37B0
/* C43A4 800C37A4 00A32823 */   subu      $a1, $a1, $v1
/* C43A8 800C37A8 A8800000 */  swl        $zero, ($a0)
/* C43AC 800C37AC 00832021 */  addu       $a0, $a0, $v1
.L800C37B0:
/* C43B0 800C37B0 2401FFE0 */  addiu      $at, $zero, -0x20
/* C43B4 800C37B4 00A13824 */  and        $a3, $a1, $at
/* C43B8 800C37B8 10E0000C */  beqz       $a3, .L800C37EC
/* C43BC 800C37BC 00A72823 */   subu      $a1, $a1, $a3
/* C43C0 800C37C0 00E43821 */  addu       $a3, $a3, $a0
.L800C37C4:
/* C43C4 800C37C4 24840020 */  addiu      $a0, $a0, 0x20
/* C43C8 800C37C8 AC80FFE0 */  sw         $zero, -0x20($a0)
/* C43CC 800C37CC AC80FFE4 */  sw         $zero, -0x1c($a0)
/* C43D0 800C37D0 AC80FFE8 */  sw         $zero, -0x18($a0)
/* C43D4 800C37D4 AC80FFEC */  sw         $zero, -0x14($a0)
/* C43D8 800C37D8 AC80FFF0 */  sw         $zero, -0x10($a0)
/* C43DC 800C37DC AC80FFF4 */  sw         $zero, -0xc($a0)
/* C43E0 800C37E0 AC80FFF8 */  sw         $zero, -8($a0)
/* C43E4 800C37E4 1487FFF7 */  bne        $a0, $a3, .L800C37C4
/* C43E8 800C37E8 AC80FFFC */   sw        $zero, -4($a0)
.L800C37EC:
/* C43EC 800C37EC 2401FFFC */  addiu      $at, $zero, -4
/* C43F0 800C37F0 00A13824 */  and        $a3, $a1, $at
/* C43F4 800C37F4 10E00005 */  beqz       $a3, .L800C380C
/* C43F8 800C37F8 00A72823 */   subu      $a1, $a1, $a3
/* C43FC 800C37FC 00E43821 */  addu       $a3, $a3, $a0
.L800C3800:
/* C4400 800C3800 24840004 */  addiu      $a0, $a0, 4
/* C4404 800C3804 1487FFFE */  bne        $a0, $a3, .L800C3800
/* C4408 800C3808 AC80FFFC */   sw        $zero, -4($a0)
.L800C380C:
/* C440C 800C380C 18A00005 */  blez       $a1, .L800C3824
/* C4410 800C3810 00000000 */   nop
/* C4414 800C3814 00A42821 */  addu       $a1, $a1, $a0
.L800C3818:
/* C4418 800C3818 24840001 */  addiu      $a0, $a0, 1
/* C441C 800C381C 1485FFFE */  bne        $a0, $a1, .L800C3818
/* C4420 800C3820 A080FFFF */   sb        $zero, -1($a0)
.L800C3824:
/* C4424 800C3824 03E00008 */  jr         $ra
/* C4428 800C3828 00000000 */   nop
/* C442C 800C382C 00000000 */  nop
/* C4430 800C3830 00000000 */  nop
/* C4434 800C3834 00000000 */  nop
/* C4438 800C3838 00000000 */  nop
/* C443C 800C383C 00000000 */  nop
/* C4440 800C3840 00000000 */  nop
/* C4444 800C3844 00000000 */  nop
/* C4448 800C3848 00000000 */  nop
/* C444C 800C384C 00000000 */  nop
/* C4450 800C3850 00000000 */  nop
/* C4454 800C3854 00000000 */  nop
/* C4458 800C3858 00000000 */  nop
/* C445C 800C385C 00000000 */  nop
/* C4460 800C3860 00000000 */  nop
/* C4464 800C3864 00000000 */  nop
/* C4468 800C3868 00000000 */  nop
/* C446C 800C386C 00000000 */  nop
/* C4470 800C3870 00000000 */  nop
/* C4474 800C3874 00000000 */  nop
/* C4478 800C3878 00000000 */  nop
/* C447C 800C387C 00000000 */  nop
/* C4480 800C3880 00000000 */  nop
/* C4484 800C3884 00000000 */  nop
/* C4488 800C3888 00000000 */  nop
/* C448C 800C388C 00000000 */  nop
