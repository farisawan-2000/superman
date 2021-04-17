.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C2AB0
/* C36B0 800C2AB0 AFA40000 */  sw         $a0, ($sp)
/* C36B4 800C2AB4 AFA60008 */  sw         $a2, 8($sp)
/* C36B8 800C2AB8 03E00008 */  jr         $ra
/* C36BC 800C2ABC A4A60016 */   sh        $a2, 0x16($a1)

glabel func_800C2AC0
/* C36C0 800C2AC0 8C8E0008 */  lw         $t6, 8($a0)
/* C36C4 800C2AC4 ACAE0000 */  sw         $t6, ($a1)
/* C36C8 800C2AC8 848F001A */  lh         $t7, 0x1a($a0)
/* C36CC 800C2ACC A4AF000C */  sh         $t7, 0xc($a1)
/* C36D0 800C2AD0 8C98000C */  lw         $t8, 0xc($a0)
/* C36D4 800C2AD4 03E00008 */  jr         $ra
/* C36D8 800C2AD8 ACB80004 */   sw        $t8, 4($a1)

glabel func_800C2ADC
/* C36DC 800C2ADC 8CAE0000 */  lw         $t6, ($a1)
/* C36E0 800C2AE0 AC8E0008 */  sw         $t6, 8($a0)
/* C36E4 800C2AE4 84AF000C */  lh         $t7, 0xc($a1)
/* C36E8 800C2AE8 A48F001A */  sh         $t7, 0x1a($a0)
/* C36EC 800C2AEC 8CB80004 */  lw         $t8, 4($a1)
/* C36F0 800C2AF0 03E00008 */  jr         $ra
/* C36F4 800C2AF4 AC98000C */   sw        $t8, 0xc($a0)

glabel func_800C2AF8
/* C36F8 800C2AF8 03E00008 */  jr         $ra
/* C36FC 800C2AFC 8C82000C */   lw        $v0, 0xc($a0)

glabel func_800C2B00
/* C3700 800C2B00 03E00008 */  jr         $ra
/* C3704 800C2B04 00000000 */   nop

glabel func_800C2B08
/* C3708 800C2B08 8C830008 */  lw         $v1, 8($a0)
/* C370C 800C2B0C 90620000 */  lbu        $v0, ($v1)
/* C3710 800C2B10 246E0001 */  addiu      $t6, $v1, 1
/* C3714 800C2B14 AC8E0008 */  sw         $t6, 8($a0)
/* C3718 800C2B18 304F0080 */  andi       $t7, $v0, 0x80
/* C371C 800C2B1C 11E0000B */  beqz       $t7, .L800C2B4C
/* C3720 800C2B20 00402825 */   or        $a1, $v0, $zero
/* C3724 800C2B24 3045007F */  andi       $a1, $v0, 0x7f
.L800C2B28:
/* C3728 800C2B28 8C830008 */  lw         $v1, 8($a0)
/* C372C 800C2B2C 0005C9C0 */  sll        $t9, $a1, 7
/* C3730 800C2B30 90620000 */  lbu        $v0, ($v1)
/* C3734 800C2B34 24780001 */  addiu      $t8, $v1, 1
/* C3738 800C2B38 AC980008 */  sw         $t8, 8($a0)
/* C373C 800C2B3C 304E007F */  andi       $t6, $v0, 0x7f
/* C3740 800C2B40 304F0080 */  andi       $t7, $v0, 0x80
/* C3744 800C2B44 15E0FFF8 */  bnez       $t7, .L800C2B28
/* C3748 800C2B48 032E2821 */   addu      $a1, $t9, $t6
.L800C2B4C:
/* C374C 800C2B4C 03E00008 */  jr         $ra
/* C3750 800C2B50 00A01025 */   or        $v0, $a1, $zero

glabel func_800C2B54
/* C3754 800C2B54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3758 800C2B58 AFBF0014 */  sw         $ra, 0x14($sp)
/* C375C 800C2B5C 00803025 */  or         $a2, $a0, $zero
/* C3760 800C2B60 0C030AC2 */  jal        func_800C2B08
/* C3764 800C2B64 00A03825 */   or        $a3, $a1, $zero
/* C3768 800C2B68 8CCE000C */  lw         $t6, 0xc($a2)
/* C376C 800C2B6C 8CC30008 */  lw         $v1, 8($a2)
/* C3770 800C2B70 00404825 */  or         $t1, $v0, $zero
/* C3774 800C2B74 01C27821 */  addu       $t7, $t6, $v0
/* C3778 800C2B78 ACCF000C */  sw         $t7, 0xc($a2)
/* C377C 800C2B7C 90640000 */  lbu        $a0, ($v1)
/* C3780 800C2B80 240100FF */  addiu      $at, $zero, 0xff
/* C3784 800C2B84 24780001 */  addiu      $t8, $v1, 1
/* C3788 800C2B88 ACD80008 */  sw         $t8, 8($a2)
/* C378C 800C2B8C 00801025 */  or         $v0, $a0, $zero
/* C3790 800C2B90 1481002F */  bne        $a0, $at, .L800C2C50
/* C3794 800C2B94 308500FF */   andi      $a1, $a0, 0xff
/* C3798 800C2B98 93020000 */  lbu        $v0, ($t8)
/* C379C 800C2B9C 27190001 */  addiu      $t9, $t8, 1
/* C37A0 800C2BA0 24010051 */  addiu      $at, $zero, 0x51
/* C37A4 800C2BA4 ACD90008 */  sw         $t9, 8($a2)
/* C37A8 800C2BA8 1441001B */  bne        $v0, $at, .L800C2C18
/* C37AC 800C2BAC 00404025 */   or        $t0, $v0, $zero
/* C37B0 800C2BB0 240E0003 */  addiu      $t6, $zero, 3
/* C37B4 800C2BB4 A4EE0000 */  sh         $t6, ($a3)
/* C37B8 800C2BB8 ACE90004 */  sw         $t1, 4($a3)
/* C37BC 800C2BBC A0E50008 */  sb         $a1, 8($a3)
/* C37C0 800C2BC0 A0E80009 */  sb         $t0, 9($a3)
/* C37C4 800C2BC4 8CC30008 */  lw         $v1, 8($a2)
/* C37C8 800C2BC8 90620000 */  lbu        $v0, ($v1)
/* C37CC 800C2BCC 246F0001 */  addiu      $t7, $v1, 1
/* C37D0 800C2BD0 ACCF0008 */  sw         $t7, 8($a2)
/* C37D4 800C2BD4 A0E2000A */  sb         $v0, 0xa($a3)
/* C37D8 800C2BD8 8CC30008 */  lw         $v1, 8($a2)
/* C37DC 800C2BDC 90640000 */  lbu        $a0, ($v1)
/* C37E0 800C2BE0 24780001 */  addiu      $t8, $v1, 1
/* C37E4 800C2BE4 ACD80008 */  sw         $t8, 8($a2)
/* C37E8 800C2BE8 A0E4000B */  sb         $a0, 0xb($a3)
/* C37EC 800C2BEC 8CC30008 */  lw         $v1, 8($a2)
/* C37F0 800C2BF0 90650000 */  lbu        $a1, ($v1)
/* C37F4 800C2BF4 24790001 */  addiu      $t9, $v1, 1
/* C37F8 800C2BF8 ACD90008 */  sw         $t9, 8($a2)
/* C37FC 800C2BFC A0E5000C */  sb         $a1, 0xc($a3)
/* C3800 800C2C00 8CC30008 */  lw         $v1, 8($a2)
/* C3804 800C2C04 90640000 */  lbu        $a0, ($v1)
/* C3808 800C2C08 246E0001 */  addiu      $t6, $v1, 1
/* C380C 800C2C0C ACCE0008 */  sw         $t6, 8($a2)
/* C3810 800C2C10 1000000D */  b          .L800C2C48
/* C3814 800C2C14 A0E4000D */   sb        $a0, 0xd($a3)
.L800C2C18:
/* C3818 800C2C18 2401002F */  addiu      $at, $zero, 0x2f
/* C381C 800C2C1C 1441000A */  bne        $v0, $at, .L800C2C48
/* C3820 800C2C20 240F0004 */   addiu     $t7, $zero, 4
/* C3824 800C2C24 A4EF0000 */  sh         $t7, ($a3)
/* C3828 800C2C28 ACE90004 */  sw         $t1, 4($a3)
/* C382C 800C2C2C A0E50008 */  sb         $a1, 8($a3)
/* C3830 800C2C30 A0E80009 */  sb         $t0, 9($a3)
/* C3834 800C2C34 8CC30008 */  lw         $v1, 8($a2)
/* C3838 800C2C38 90640000 */  lbu        $a0, ($v1)
/* C383C 800C2C3C 24780001 */  addiu      $t8, $v1, 1
/* C3840 800C2C40 ACD80008 */  sw         $t8, 8($a2)
/* C3844 800C2C44 A0E4000A */  sb         $a0, 0xa($a3)
.L800C2C48:
/* C3848 800C2C48 1000001F */  b          .L800C2CC8
/* C384C 800C2C4C A4C0001A */   sh        $zero, 0x1a($a2)
.L800C2C50:
/* C3850 800C2C50 24190001 */  addiu      $t9, $zero, 1
/* C3854 800C2C54 304E0080 */  andi       $t6, $v0, 0x80
/* C3858 800C2C58 A4F90000 */  sh         $t9, ($a3)
/* C385C 800C2C5C 11C00009 */  beqz       $t6, .L800C2C84
/* C3860 800C2C60 ACE90004 */   sw        $t1, 4($a3)
/* C3864 800C2C64 A0E50008 */  sb         $a1, 8($a3)
/* C3868 800C2C68 8CC30008 */  lw         $v1, 8($a2)
/* C386C 800C2C6C 90640000 */  lbu        $a0, ($v1)
/* C3870 800C2C70 246F0001 */  addiu      $t7, $v1, 1
/* C3874 800C2C74 ACCF0008 */  sw         $t7, 8($a2)
/* C3878 800C2C78 A0E40009 */  sb         $a0, 9($a3)
/* C387C 800C2C7C 10000004 */  b          .L800C2C90
/* C3880 800C2C80 A4C5001A */   sh        $a1, 0x1a($a2)
.L800C2C84:
/* C3884 800C2C84 84D8001A */  lh         $t8, 0x1a($a2)
/* C3888 800C2C88 A0E40009 */  sb         $a0, 9($a3)
/* C388C 800C2C8C A0F80008 */  sb         $t8, 8($a3)
.L800C2C90:
/* C3890 800C2C90 90E20008 */  lbu        $v0, 8($a3)
/* C3894 800C2C94 240100C0 */  addiu      $at, $zero, 0xc0
/* C3898 800C2C98 305900F0 */  andi       $t9, $v0, 0xf0
/* C389C 800C2C9C 13210009 */  beq        $t9, $at, .L800C2CC4
/* C38A0 800C2CA0 240100D0 */   addiu     $at, $zero, 0xd0
/* C38A4 800C2CA4 53210008 */  beql       $t9, $at, .L800C2CC8
/* C38A8 800C2CA8 A0E0000A */   sb        $zero, 0xa($a3)
/* C38AC 800C2CAC 8CC30008 */  lw         $v1, 8($a2)
/* C38B0 800C2CB0 90640000 */  lbu        $a0, ($v1)
/* C38B4 800C2CB4 246E0001 */  addiu      $t6, $v1, 1
/* C38B8 800C2CB8 ACCE0008 */  sw         $t6, 8($a2)
/* C38BC 800C2CBC 10000002 */  b          .L800C2CC8
/* C38C0 800C2CC0 A0E4000A */   sb        $a0, 0xa($a3)
.L800C2CC4:
/* C38C4 800C2CC4 A0E0000A */  sb         $zero, 0xa($a3)
.L800C2CC8:
/* C38C8 800C2CC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C38CC 800C2CCC 27BD0018 */  addiu      $sp, $sp, 0x18
/* C38D0 800C2CD0 03E00008 */  jr         $ra
/* C38D4 800C2CD4 00000000 */   nop

glabel func_800C2CD8
/* C38D8 800C2CD8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C38DC 800C2CDC AFB70030 */  sw         $s7, 0x30($sp)
/* C38E0 800C2CE0 AFB10018 */  sw         $s1, 0x18($sp)
/* C38E4 800C2CE4 AFB00014 */  sw         $s0, 0x14($sp)
/* C38E8 800C2CE8 00808025 */  or         $s0, $a0, $zero
/* C38EC 800C2CEC 00C08825 */  or         $s1, $a2, $zero
/* C38F0 800C2CF0 00A0B825 */  or         $s7, $a1, $zero
/* C38F4 800C2CF4 AFBF0034 */  sw         $ra, 0x34($sp)
/* C38F8 800C2CF8 AFB6002C */  sw         $s6, 0x2c($sp)
/* C38FC 800C2CFC AFB50028 */  sw         $s5, 0x28($sp)
/* C3900 800C2D00 AFB40024 */  sw         $s4, 0x24($sp)
/* C3904 800C2D04 AFB30020 */  sw         $s3, 0x20($sp)
/* C3908 800C2D08 14C00007 */  bnez       $a2, .L800C2D28
/* C390C 800C2D0C AFB2001C */   sw        $s2, 0x1c($sp)
/* C3910 800C2D10 8C8E0004 */  lw         $t6, 4($a0)
/* C3914 800C2D14 A4A0000C */  sh         $zero, 0xc($a1)
/* C3918 800C2D18 ACA00004 */  sw         $zero, 4($a1)
/* C391C 800C2D1C ACA00008 */  sw         $zero, 8($a1)
/* C3920 800C2D20 1000002A */  b          .L800C2DCC
/* C3924 800C2D24 ACAE0000 */   sw        $t6, ($a1)
.L800C2D28:
/* C3928 800C2D28 8E0F0008 */  lw         $t7, 8($s0)
/* C392C 800C2D2C 00001025 */  or         $v0, $zero, $zero
/* C3930 800C2D30 24130004 */  addiu      $s3, $zero, 4
/* C3934 800C2D34 AFAF004C */  sw         $t7, 0x4c($sp)
/* C3938 800C2D38 8618001A */  lh         $t8, 0x1a($s0)
/* C393C 800C2D3C 27B20050 */  addiu      $s2, $sp, 0x50
/* C3940 800C2D40 A7B8003E */  sh         $t8, 0x3e($sp)
/* C3944 800C2D44 8E19000C */  lw         $t9, 0xc($s0)
/* C3948 800C2D48 AFB90044 */  sw         $t9, 0x44($sp)
/* C394C 800C2D4C 8E080004 */  lw         $t0, 4($s0)
/* C3950 800C2D50 A600001A */  sh         $zero, 0x1a($s0)
/* C3954 800C2D54 AE00000C */  sw         $zero, 0xc($s0)
/* C3958 800C2D58 AE080008 */  sw         $t0, 8($s0)
/* C395C 800C2D5C 8E140008 */  lw         $s4, 8($s0)
.L800C2D60:
/* C3960 800C2D60 8615001A */  lh         $s5, 0x1a($s0)
/* C3964 800C2D64 0040B025 */  or         $s6, $v0, $zero
/* C3968 800C2D68 02002025 */  or         $a0, $s0, $zero
/* C396C 800C2D6C 0C030AD5 */  jal        func_800C2B54
/* C3970 800C2D70 02402825 */   or        $a1, $s2, $zero
/* C3974 800C2D74 87A90050 */  lh         $t1, 0x50($sp)
/* C3978 800C2D78 55330006 */  bnel       $t1, $s3, .L800C2D94
/* C397C 800C2D7C 8E02000C */   lw        $v0, 0xc($s0)
/* C3980 800C2D80 8E140008 */  lw         $s4, 8($s0)
/* C3984 800C2D84 8615001A */  lh         $s5, 0x1a($s0)
/* C3988 800C2D88 10000005 */  b          .L800C2DA0
/* C398C 800C2D8C 8E16000C */   lw        $s6, 0xc($s0)
/* C3990 800C2D90 8E02000C */  lw         $v0, 0xc($s0)
.L800C2D94:
/* C3994 800C2D94 0051082B */  sltu       $at, $v0, $s1
/* C3998 800C2D98 5420FFF1 */  bnezl      $at, .L800C2D60
/* C399C 800C2D9C 8E140008 */   lw        $s4, 8($s0)
.L800C2DA0:
/* C39A0 800C2DA0 AEF40000 */  sw         $s4, ($s7)
/* C39A4 800C2DA4 A6F5000C */  sh         $s5, 0xc($s7)
/* C39A8 800C2DA8 AEF60004 */  sw         $s6, 4($s7)
/* C39AC 800C2DAC 8E0A000C */  lw         $t2, 0xc($s0)
/* C39B0 800C2DB0 AEEA0008 */  sw         $t2, 8($s7)
/* C39B4 800C2DB4 8FAB004C */  lw         $t3, 0x4c($sp)
/* C39B8 800C2DB8 AE0B0008 */  sw         $t3, 8($s0)
/* C39BC 800C2DBC 87AC003E */  lh         $t4, 0x3e($sp)
/* C39C0 800C2DC0 A60C001A */  sh         $t4, 0x1a($s0)
/* C39C4 800C2DC4 8FAD0044 */  lw         $t5, 0x44($sp)
/* C39C8 800C2DC8 AE0D000C */  sw         $t5, 0xc($s0)
.L800C2DCC:
/* C39CC 800C2DCC 8FBF0034 */  lw         $ra, 0x34($sp)
/* C39D0 800C2DD0 8FB00014 */  lw         $s0, 0x14($sp)
/* C39D4 800C2DD4 8FB10018 */  lw         $s1, 0x18($sp)
/* C39D8 800C2DD8 8FB2001C */  lw         $s2, 0x1c($sp)
/* C39DC 800C2DDC 8FB30020 */  lw         $s3, 0x20($sp)
/* C39E0 800C2DE0 8FB40024 */  lw         $s4, 0x24($sp)
/* C39E4 800C2DE4 8FB50028 */  lw         $s5, 0x28($sp)
/* C39E8 800C2DE8 8FB6002C */  lw         $s6, 0x2c($sp)
/* C39EC 800C2DEC 8FB70030 */  lw         $s7, 0x30($sp)
/* C39F0 800C2DF0 03E00008 */  jr         $ra
/* C39F4 800C2DF4 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800C2DF8
/* C39F8 800C2DF8 44856000 */  mtc1       $a1, $f12
/* C39FC 800C2DFC 3C01800E */  lui        $at, %hi(D_800DFBD0)
/* C3A00 800C2E00 D426FBD0 */  ldc1       $f6, %lo(D_800DFBD0)($at)
/* C3A04 800C2E04 848E0018 */  lh         $t6, 0x18($a0)
/* C3A08 800C2E08 46006121 */  cvt.d.s    $f4, $f12
/* C3A0C 800C2E0C 3C0141F0 */  lui        $at, 0x41f0
/* C3A10 800C2E10 46262202 */  mul.d      $f8, $f4, $f6
/* C3A14 800C2E14 448E5000 */  mtc1       $t6, $f10
/* C3A18 800C2E18 44862000 */  mtc1       $a2, $f4
/* C3A1C 800C2E1C 46805421 */  cvt.d.w    $f16, $f10
/* C3A20 800C2E20 468021A1 */  cvt.d.w    $f6, $f4
/* C3A24 800C2E24 46304482 */  mul.d      $f18, $f8, $f16
/* C3A28 800C2E28 04C30006 */  bgezl      $a2, .L800C2E44
/* C3A2C 800C2E2C 46269203 */   div.d     $f8, $f18, $f6
/* C3A30 800C2E30 44815800 */  mtc1       $at, $f11
/* C3A34 800C2E34 44805000 */  mtc1       $zero, $f10
/* C3A38 800C2E38 00000000 */  nop
/* C3A3C 800C2E3C 462A3180 */  add.d      $f6, $f6, $f10
/* C3A40 800C2E40 46269203 */  div.d      $f8, $f18, $f6
.L800C2E44:
/* C3A44 800C2E44 24020001 */  addiu      $v0, $zero, 1
/* C3A48 800C2E48 3C0141E0 */  lui        $at, 0x41e0
/* C3A4C 800C2E4C 444FF800 */  cfc1       $t7, $31
/* C3A50 800C2E50 44C2F800 */  ctc1       $v0, $31
/* C3A54 800C2E54 00000000 */  nop
/* C3A58 800C2E58 46204424 */  cvt.w.d    $f16, $f8
/* C3A5C 800C2E5C 4442F800 */  cfc1       $v0, $31
/* C3A60 800C2E60 00000000 */  nop
/* C3A64 800C2E64 30420078 */  andi       $v0, $v0, 0x78
/* C3A68 800C2E68 50400016 */  beql       $v0, $zero, .L800C2EC4
/* C3A6C 800C2E6C 44028000 */   mfc1      $v0, $f16
/* C3A70 800C2E70 44818800 */  mtc1       $at, $f17
/* C3A74 800C2E74 44808000 */  mtc1       $zero, $f16
/* C3A78 800C2E78 24020001 */  addiu      $v0, $zero, 1
/* C3A7C 800C2E7C 3C018000 */  lui        $at, 0x8000
/* C3A80 800C2E80 46304401 */  sub.d      $f16, $f8, $f16
/* C3A84 800C2E84 44C2F800 */  ctc1       $v0, $31
/* C3A88 800C2E88 00000000 */  nop
/* C3A8C 800C2E8C 46208424 */  cvt.w.d    $f16, $f16
/* C3A90 800C2E90 4442F800 */  cfc1       $v0, $31
/* C3A94 800C2E94 00000000 */  nop
/* C3A98 800C2E98 30420078 */  andi       $v0, $v0, 0x78
/* C3A9C 800C2E9C 54400006 */  bnezl      $v0, .L800C2EB8
/* C3AA0 800C2EA0 44CFF800 */   ctc1      $t7, $31
/* C3AA4 800C2EA4 44028000 */  mfc1       $v0, $f16
/* C3AA8 800C2EA8 44CFF800 */  ctc1       $t7, $31
/* C3AAC 800C2EAC 03E00008 */  jr         $ra
/* C3AB0 800C2EB0 00411025 */   or        $v0, $v0, $at
/* C3AB4 800C2EB4 44CFF800 */  ctc1       $t7, $31
.L800C2EB8:
/* C3AB8 800C2EB8 03E00008 */  jr         $ra
/* C3ABC 800C2EBC 2402FFFF */   addiu     $v0, $zero, -1
/* C3AC0 800C2EC0 44028000 */  mfc1       $v0, $f16
.L800C2EC4:
/* C3AC4 800C2EC4 00000000 */  nop
/* C3AC8 800C2EC8 0442FFFB */  bltzl      $v0, .L800C2EB8
/* C3ACC 800C2ECC 44CFF800 */   ctc1      $t7, $31
/* C3AD0 800C2ED0 44CFF800 */  ctc1       $t7, $31
/* C3AD4 800C2ED4 03E00008 */  jr         $ra
/* C3AD8 800C2ED8 00000000 */   nop

glabel func_800C2EDC
/* C3ADC 800C2EDC 44852000 */  mtc1       $a1, $f4
/* C3AE0 800C2EE0 44864000 */  mtc1       $a2, $f8
/* C3AE4 800C2EE4 3C014F80 */  lui        $at, 0x4f80
/* C3AE8 800C2EE8 468021A0 */  cvt.s.w    $f6, $f4
/* C3AEC 800C2EEC 04C10004 */  bgez       $a2, .L800C2F00
/* C3AF0 800C2EF0 468042A0 */   cvt.s.w   $f10, $f8
/* C3AF4 800C2EF4 44818000 */  mtc1       $at, $f16
/* C3AF8 800C2EF8 00000000 */  nop
/* C3AFC 800C2EFC 46105280 */  add.s      $f10, $f10, $f16
.L800C2F00:
/* C3B00 800C2F00 848E0018 */  lh         $t6, 0x18($a0)
/* C3B04 800C2F04 460A3482 */  mul.s      $f18, $f6, $f10
/* C3B08 800C2F08 3C01800E */  lui        $at, %hi(D_800DFBD8)
/* C3B0C 800C2F0C 448E4000 */  mtc1       $t6, $f8
/* C3B10 800C2F10 D42AFBD8 */  ldc1       $f10, %lo(D_800DFBD8)($at)
/* C3B14 800C2F14 46804420 */  cvt.s.w    $f16, $f8
/* C3B18 800C2F18 46009121 */  cvt.d.s    $f4, $f18
/* C3B1C 800C2F1C 460081A1 */  cvt.d.s    $f6, $f16
/* C3B20 800C2F20 462A3482 */  mul.d      $f18, $f6, $f10
/* C3B24 800C2F24 46322203 */  div.d      $f8, $f4, $f18
/* C3B28 800C2F28 03E00008 */  jr         $ra
/* C3B2C 800C2F2C 46204020 */   cvt.s.d   $f0, $f8

glabel func_800C2F30
/* C3B30 800C2F30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3B34 800C2F34 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3B38 800C2F38 8C8F0010 */  lw         $t7, 0x10($a0)
/* C3B3C 800C2F3C 8C8E0000 */  lw         $t6, ($a0)
/* C3B40 800C2F40 8C820008 */  lw         $v0, 8($a0)
/* C3B44 800C2F44 00803025 */  or         $a2, $a0, $zero
/* C3B48 800C2F48 01CFC021 */  addu       $t8, $t6, $t7
/* C3B4C 800C2F4C 0058082B */  sltu       $at, $v0, $t8
/* C3B50 800C2F50 14200003 */  bnez       $at, .L800C2F60
/* C3B54 800C2F54 00A04025 */   or        $t0, $a1, $zero
/* C3B58 800C2F58 10000007 */  b          .L800C2F78
/* C3B5C 800C2F5C 00001025 */   or        $v0, $zero, $zero
.L800C2F60:
/* C3B60 800C2F60 00403825 */  or         $a3, $v0, $zero
/* C3B64 800C2F64 0C030AC2 */  jal        func_800C2B08
/* C3B68 800C2F68 00C02025 */   or        $a0, $a2, $zero
/* C3B6C 800C2F6C AD020000 */  sw         $v0, ($t0)
/* C3B70 800C2F70 ACC70008 */  sw         $a3, 8($a2)
/* C3B74 800C2F74 24020001 */  addiu      $v0, $zero, 1
.L800C2F78:
/* C3B78 800C2F78 8FBF0014 */  lw         $ra, 0x14($sp)
/* C3B7C 800C2F7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3B80 800C2F80 03E00008 */  jr         $ra
/* C3B84 800C2F84 00000000 */   nop

glabel func_800C2F88
/* C3B88 800C2F88 8C850008 */  lw         $a1, 8($a0)
/* C3B8C 800C2F8C 90A30000 */  lbu        $v1, ($a1)
/* C3B90 800C2F90 24AF0001 */  addiu      $t7, $a1, 1
/* C3B94 800C2F94 AC8F0008 */  sw         $t7, 8($a0)
/* C3B98 800C2F98 91F80000 */  lbu        $t8, ($t7)
/* C3B9C 800C2F9C 00037600 */  sll        $t6, $v1, 0x18
/* C3BA0 800C2FA0 0018CC00 */  sll        $t9, $t8, 0x10
/* C3BA4 800C2FA4 01D91825 */  or         $v1, $t6, $t9
/* C3BA8 800C2FA8 25EE0001 */  addiu      $t6, $t7, 1
/* C3BAC 800C2FAC AC8E0008 */  sw         $t6, 8($a0)
/* C3BB0 800C2FB0 91CF0000 */  lbu        $t7, ($t6)
/* C3BB4 800C2FB4 25D90001 */  addiu      $t9, $t6, 1
/* C3BB8 800C2FB8 AC990008 */  sw         $t9, 8($a0)
/* C3BBC 800C2FBC 000FC200 */  sll        $t8, $t7, 8
/* C3BC0 800C2FC0 932E0000 */  lbu        $t6, ($t9)
/* C3BC4 800C2FC4 00781825 */  or         $v1, $v1, $t8
/* C3BC8 800C2FC8 272F0001 */  addiu      $t7, $t9, 1
/* C3BCC 800C2FCC AC8F0008 */  sw         $t7, 8($a0)
/* C3BD0 800C2FD0 03E00008 */  jr         $ra
/* C3BD4 800C2FD4 006E1025 */   or        $v0, $v1, $t6

glabel func_800C2FD8
/* C3BD8 800C2FD8 8C850008 */  lw         $a1, 8($a0)
/* C3BDC 800C2FDC 90A30000 */  lbu        $v1, ($a1)
/* C3BE0 800C2FE0 24B90001 */  addiu      $t9, $a1, 1
/* C3BE4 800C2FE4 AC990008 */  sw         $t9, 8($a0)
/* C3BE8 800C2FE8 932E0000 */  lbu        $t6, ($t9)
/* C3BEC 800C2FEC 0003C200 */  sll        $t8, $v1, 8
/* C3BF0 800C2FF0 27390001 */  addiu      $t9, $t9, 1
/* C3BF4 800C2FF4 030E1825 */  or         $v1, $t8, $t6
/* C3BF8 800C2FF8 00037C00 */  sll        $t7, $v1, 0x10
/* C3BFC 800C2FFC 000F1403 */  sra        $v0, $t7, 0x10
/* C3C00 800C3000 03E00008 */  jr         $ra
/* C3C04 800C3004 AC990008 */   sw        $t9, 8($a0)

glabel func_800C3008
/* C3C08 800C3008 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3C0C 800C300C AFBF0014 */  sw         $ra, 0x14($sp)
/* C3C10 800C3010 00803825 */  or         $a3, $a0, $zero
/* C3C14 800C3014 AC850000 */  sw         $a1, ($a0)
/* C3C18 800C3018 AC860010 */  sw         $a2, 0x10($a0)
/* C3C1C 800C301C A480001A */  sh         $zero, 0x1a($a0)
/* C3C20 800C3020 AC80000C */  sw         $zero, 0xc($a0)
/* C3C24 800C3024 0C030BE2 */  jal        func_800C2F88
/* C3C28 800C3028 AC850008 */   sw        $a1, 8($a0)
/* C3C2C 800C302C 3C014D54 */  lui        $at, 0x4d54
/* C3C30 800C3030 34216864 */  ori        $at, $at, 0x6864
/* C3C34 800C3034 54410027 */  bnel       $v0, $at, .L800C30D4
/* C3C38 800C3038 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3C3C 800C303C 0C030BE2 */  jal        func_800C2F88
/* C3C40 800C3040 00E02025 */   or        $a0, $a3, $zero
/* C3C44 800C3044 0C030BF6 */  jal        func_800C2FD8
/* C3C48 800C3048 00E02025 */   or        $a0, $a3, $zero
/* C3C4C 800C304C 54400021 */  bnezl      $v0, .L800C30D4
/* C3C50 800C3050 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3C54 800C3054 0C030BF6 */  jal        func_800C2FD8
/* C3C58 800C3058 00E02025 */   or        $a0, $a3, $zero
/* C3C5C 800C305C 24010001 */  addiu      $at, $zero, 1
/* C3C60 800C3060 5441001C */  bnel       $v0, $at, .L800C30D4
/* C3C64 800C3064 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3C68 800C3068 0C030BF6 */  jal        func_800C2FD8
/* C3C6C 800C306C 00E02025 */   or        $a0, $a3, $zero
/* C3C70 800C3070 A4E20018 */  sh         $v0, 0x18($a3)
/* C3C74 800C3074 84E30018 */  lh         $v1, 0x18($a3)
/* C3C78 800C3078 306E8000 */  andi       $t6, $v1, 0x8000
/* C3C7C 800C307C 55C00015 */  bnezl      $t6, .L800C30D4
/* C3C80 800C3080 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3C84 800C3084 44833000 */  mtc1       $v1, $f6
/* C3C88 800C3088 3C013FF0 */  lui        $at, 0x3ff0
/* C3C8C 800C308C 44812800 */  mtc1       $at, $f5
/* C3C90 800C3090 46803220 */  cvt.s.w    $f8, $f6
/* C3C94 800C3094 44802000 */  mtc1       $zero, $f4
/* C3C98 800C3098 00E02025 */  or         $a0, $a3, $zero
/* C3C9C 800C309C 460042A1 */  cvt.d.s    $f10, $f8
/* C3CA0 800C30A0 462A2183 */  div.d      $f6, $f4, $f10
/* C3CA4 800C30A4 46203220 */  cvt.s.d    $f8, $f6
/* C3CA8 800C30A8 0C030BE2 */  jal        func_800C2F88
/* C3CAC 800C30AC E4E80014 */   swc1      $f8, 0x14($a3)
/* C3CB0 800C30B0 3C014D54 */  lui        $at, 0x4d54
/* C3CB4 800C30B4 3421726B */  ori        $at, $at, 0x726b
/* C3CB8 800C30B8 54410006 */  bnel       $v0, $at, .L800C30D4
/* C3CBC 800C30BC 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3CC0 800C30C0 0C030BE2 */  jal        func_800C2F88
/* C3CC4 800C30C4 00E02025 */   or        $a0, $a3, $zero
/* C3CC8 800C30C8 8CEF0008 */  lw         $t7, 8($a3)
/* C3CCC 800C30CC ACEF0004 */  sw         $t7, 4($a3)
/* C3CD0 800C30D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C30D4:
/* C3CD4 800C30D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3CD8 800C30D8 03E00008 */  jr         $ra
/* C3CDC 800C30DC 00000000 */   nop

glabel func_800C30E0
/* C3CE0 800C30E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3CE4 800C30E4 AFA40018 */  sw         $a0, 0x18($sp)
/* C3CE8 800C30E8 8FAE0018 */  lw         $t6, 0x18($sp)
/* C3CEC 800C30EC 3C018000 */  lui        $at, 0x8000
/* C3CF0 800C30F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3CF4 800C30F4 01C1082B */  sltu       $at, $t6, $at
/* C3CF8 800C30F8 14200007 */  bnez       $at, .L800C3118
/* C3CFC 800C30FC 3C01A000 */   lui       $at, 0xa000
/* C3D00 800C3100 01C1082B */  sltu       $at, $t6, $at
/* C3D04 800C3104 10200004 */  beqz       $at, .L800C3118
/* C3D08 800C3108 3C011FFF */   lui       $at, 0x1fff
/* C3D0C 800C310C 3421FFFF */  ori        $at, $at, 0xffff
/* C3D10 800C3110 1000000E */  b          .L800C314C
/* C3D14 800C3114 01C11024 */   and       $v0, $t6, $at
.L800C3118:
/* C3D18 800C3118 8FAF0018 */  lw         $t7, 0x18($sp)
/* C3D1C 800C311C 3C01A000 */  lui        $at, 0xa000
/* C3D20 800C3120 01E1082B */  sltu       $at, $t7, $at
/* C3D24 800C3124 14200007 */  bnez       $at, .L800C3144
/* C3D28 800C3128 3C01C000 */   lui       $at, 0xc000
/* C3D2C 800C312C 01E1082B */  sltu       $at, $t7, $at
/* C3D30 800C3130 10200004 */  beqz       $at, .L800C3144
/* C3D34 800C3134 3C011FFF */   lui       $at, 0x1fff
/* C3D38 800C3138 3421FFFF */  ori        $at, $at, 0xffff
/* C3D3C 800C313C 10000003 */  b          .L800C314C
/* C3D40 800C3140 01E11024 */   and       $v0, $t7, $at
.L800C3144:
/* C3D44 800C3144 0C031718 */  jal        func_800C5C60
/* C3D48 800C3148 8FA40018 */   lw        $a0, 0x18($sp)
.L800C314C:
/* C3D4C 800C314C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C3D50 800C3150 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3D54 800C3154 03E00008 */  jr         $ra
/* C3D58 800C3158 00000000 */   nop
/* C3D5C 800C315C 00000000 */  nop
