.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2BC0
/* D37C0 800D2BC0 27BDFF70 */  addiu      $sp, $sp, -0x90
/* D37C4 800D2BC4 AFB10020 */  sw         $s1, 0x20($sp)
/* D37C8 800D2BC8 30A200FF */  andi       $v0, $a1, 0xff
/* D37CC 800D2BCC 24030058 */  addiu      $v1, $zero, 0x58
/* D37D0 800D2BD0 00808825 */  or         $s1, $a0, $zero
/* D37D4 800D2BD4 AFBF002C */  sw         $ra, 0x2c($sp)
/* D37D8 800D2BD8 AFB30028 */  sw         $s3, 0x28($sp)
/* D37DC 800D2BDC AFB20024 */  sw         $s2, 0x24($sp)
/* D37E0 800D2BE0 AFB0001C */  sw         $s0, 0x1c($sp)
/* D37E4 800D2BE4 14620004 */  bne        $v1, $v0, .L800D2BF8
/* D37E8 800D2BE8 AFA50094 */   sw        $a1, 0x94($sp)
/* D37EC 800D2BEC 3C13800E */  lui        $s3, %hi(D_800DB304)
/* D37F0 800D2BF0 10000003 */  b          .L800D2C00
/* D37F4 800D2BF4 2673B304 */   addiu     $s3, $s3, %lo(D_800DB304)
.L800D2BF8:
/* D37F8 800D2BF8 3C13800E */  lui        $s3, %hi(D_800DB2F0)
/* D37FC 800D2BFC 2673B2F0 */  addiu      $s3, $s3, %lo(D_800DB2F0)
.L800D2C00:
/* D3800 800D2C00 2401006F */  addiu      $at, $zero, 0x6f
/* D3804 800D2C04 14410003 */  bne        $v0, $at, .L800D2C14
/* D3808 800D2C08 24100018 */   addiu     $s0, $zero, 0x18
/* D380C 800D2C0C 10000009 */  b          .L800D2C34
/* D3810 800D2C10 24090008 */   addiu     $t1, $zero, 8
.L800D2C14:
/* D3814 800D2C14 24010078 */  addiu      $at, $zero, 0x78
/* D3818 800D2C18 10410005 */  beq        $v0, $at, .L800D2C30
/* D381C 800D2C1C 24080010 */   addiu     $t0, $zero, 0x10
/* D3820 800D2C20 10620003 */  beq        $v1, $v0, .L800D2C30
/* D3824 800D2C24 00000000 */   nop
/* D3828 800D2C28 10000001 */  b          .L800D2C30
/* D382C 800D2C2C 2408000A */   addiu     $t0, $zero, 0xa
.L800D2C30:
/* D3830 800D2C30 01004825 */  or         $t1, $t0, $zero
.L800D2C34:
/* D3834 800D2C34 8E380000 */  lw         $t8, ($s1)
/* D3838 800D2C38 8E390004 */  lw         $t9, 4($s1)
/* D383C 800D2C3C 24010064 */  addiu      $at, $zero, 0x64
/* D3840 800D2C40 AFB80060 */  sw         $t8, 0x60($sp)
/* D3844 800D2C44 AFB80040 */  sw         $t8, 0x40($sp)
/* D3848 800D2C48 AFB90044 */  sw         $t9, 0x44($sp)
/* D384C 800D2C4C 10410004 */  beq        $v0, $at, .L800D2C60
/* D3850 800D2C50 AFB90064 */   sw        $t9, 0x64($sp)
/* D3854 800D2C54 24010069 */  addiu      $at, $zero, 0x69
/* D3858 800D2C58 54410010 */  bnel       $v0, $at, .L800D2C9C
/* D385C 800D2C5C 8FAA0060 */   lw        $t2, 0x60($sp)
.L800D2C60:
/* D3860 800D2C60 8FAC0040 */  lw         $t4, 0x40($sp)
/* D3864 800D2C64 5D80000D */  bgtzl      $t4, .L800D2C9C
/* D3868 800D2C68 8FAA0060 */   lw        $t2, 0x60($sp)
/* D386C 800D2C6C 05800003 */  bltz       $t4, .L800D2C7C
/* D3870 800D2C70 8FAE0060 */   lw        $t6, 0x60($sp)
/* D3874 800D2C74 10000009 */  b          .L800D2C9C
/* D3878 800D2C78 8FAA0060 */   lw        $t2, 0x60($sp)
.L800D2C7C:
/* D387C 800D2C7C 8FAF0064 */  lw         $t7, 0x64($sp)
/* D3880 800D2C80 01C0C027 */  not        $t8, $t6
/* D3884 800D2C84 2DE10001 */  sltiu      $at, $t7, 1
/* D3888 800D2C88 0301C021 */  addu       $t8, $t8, $at
/* D388C 800D2C8C 000FC823 */  negu       $t9, $t7
/* D3890 800D2C90 AFB90064 */  sw         $t9, 0x64($sp)
/* D3894 800D2C94 AFB80060 */  sw         $t8, 0x60($sp)
/* D3898 800D2C98 8FAA0060 */  lw         $t2, 0x60($sp)
.L800D2C9C:
/* D389C 800D2C9C 8FAB0064 */  lw         $t3, 0x64($sp)
/* D38A0 800D2CA0 24080017 */  addiu      $t0, $zero, 0x17
/* D38A4 800D2CA4 15400006 */  bnez       $t2, .L800D2CC0
/* D38A8 800D2CA8 8FA40060 */   lw        $a0, 0x60($sp)
/* D38AC 800D2CAC 55600005 */  bnezl      $t3, .L800D2CC4
/* D38B0 800D2CB0 24100017 */   addiu     $s0, $zero, 0x17
/* D38B4 800D2CB4 8E2C0024 */  lw         $t4, 0x24($s1)
/* D38B8 800D2CB8 51800010 */  beql       $t4, $zero, .L800D2CFC
/* D38BC 800D2CBC 27B20078 */   addiu     $s2, $sp, 0x78
.L800D2CC0:
/* D38C0 800D2CC0 24100017 */  addiu      $s0, $zero, 0x17
.L800D2CC4:
/* D38C4 800D2CC4 8FA50064 */  lw         $a1, 0x64($sp)
/* D38C8 800D2CC8 01203825 */  or         $a3, $t1, $zero
/* D38CC 800D2CCC 000937C3 */  sra        $a2, $t1, 0x1f
/* D38D0 800D2CD0 AFA8004C */  sw         $t0, 0x4c($sp)
/* D38D4 800D2CD4 0C030D3F */  jal        func_800C34FC
/* D38D8 800D2CD8 AFA90070 */   sw        $t1, 0x70($sp)
/* D38DC 800D2CDC 8FA8004C */  lw         $t0, 0x4c($sp)
/* D38E0 800D2CE0 00737021 */  addu       $t6, $v1, $s3
/* D38E4 800D2CE4 91CF0000 */  lbu        $t7, ($t6)
/* D38E8 800D2CE8 27B20078 */  addiu      $s2, $sp, 0x78
/* D38EC 800D2CEC 8FA90070 */  lw         $t1, 0x70($sp)
/* D38F0 800D2CF0 0248C021 */  addu       $t8, $s2, $t0
/* D38F4 800D2CF4 A30F0000 */  sb         $t7, ($t8)
/* D38F8 800D2CF8 27B20078 */  addiu      $s2, $sp, 0x78
.L800D2CFC:
/* D38FC 800D2CFC 8FA40060 */  lw         $a0, 0x60($sp)
/* D3900 800D2D00 8FA50064 */  lw         $a1, 0x64($sp)
/* D3904 800D2D04 01203825 */  or         $a3, $t1, $zero
/* D3908 800D2D08 000937C3 */  sra        $a2, $t1, 0x1f
/* D390C 800D2D0C 0C030D4E */  jal        func_800C3538
/* D3910 800D2D10 AFA90070 */   sw        $t1, 0x70($sp)
/* D3914 800D2D14 8FA90070 */  lw         $t1, 0x70($sp)
/* D3918 800D2D18 AE230004 */  sw         $v1, 4($s1)
/* D391C 800D2D1C 0440002B */  bltz       $v0, .L800D2DCC
/* D3920 800D2D20 AE220000 */   sw        $v0, ($s1)
/* D3924 800D2D24 1C400003 */  bgtz       $v0, .L800D2D34
/* D3928 800D2D28 00000000 */   nop
/* D392C 800D2D2C 50600028 */  beql       $v1, $zero, .L800D2DD0
/* D3930 800D2D30 240C0018 */   addiu     $t4, $zero, 0x18
.L800D2D34:
/* D3934 800D2D34 1A000025 */  blez       $s0, .L800D2DCC
/* D3938 800D2D38 000967C3 */   sra       $t4, $t1, 0x1f
/* D393C 800D2D3C 8E2A0000 */  lw         $t2, ($s1)
/* D3940 800D2D40 8E2B0004 */  lw         $t3, 4($s1)
/* D3944 800D2D44 AFA9003C */  sw         $t1, 0x3c($sp)
/* D3948 800D2D48 AFAC0038 */  sw         $t4, 0x38($sp)
/* D394C 800D2D4C AFAA0040 */  sw         $t2, 0x40($sp)
/* D3950 800D2D50 AFAB0044 */  sw         $t3, 0x44($sp)
/* D3954 800D2D54 8FAE0038 */  lw         $t6, 0x38($sp)
.L800D2D58:
/* D3958 800D2D58 8FAF003C */  lw         $t7, 0x3c($sp)
/* D395C 800D2D5C 27A40050 */  addiu      $a0, $sp, 0x50
/* D3960 800D2D60 8FA60040 */  lw         $a2, 0x40($sp)
/* D3964 800D2D64 8FA70044 */  lw         $a3, 0x44($sp)
/* D3968 800D2D68 AFAE0010 */  sw         $t6, 0x10($sp)
/* D396C 800D2D6C 0C034A8C */  jal        func_800D2A30
/* D3970 800D2D70 AFAF0014 */   sw        $t7, 0x14($sp)
/* D3974 800D2D74 8FB80050 */  lw         $t8, 0x50($sp)
/* D3978 800D2D78 8FB90054 */  lw         $t9, 0x54($sp)
/* D397C 800D2D7C 2604FFFF */  addiu      $a0, $s0, -1
/* D3980 800D2D80 AE380000 */  sw         $t8, ($s1)
/* D3984 800D2D84 AE390004 */  sw         $t9, 4($s1)
/* D3988 800D2D88 8FAB005C */  lw         $t3, 0x5c($sp)
/* D398C 800D2D8C 02447821 */  addu       $t7, $s2, $a0
/* D3990 800D2D90 00808025 */  or         $s0, $a0, $zero
/* D3994 800D2D94 01736821 */  addu       $t5, $t3, $s3
/* D3998 800D2D98 91AE0000 */  lbu        $t6, ($t5)
/* D399C 800D2D9C A1EE0000 */  sb         $t6, ($t7)
/* D39A0 800D2DA0 8E380000 */  lw         $t8, ($s1)
/* D39A4 800D2DA4 8E390004 */  lw         $t9, 4($s1)
/* D39A8 800D2DA8 AFB80040 */  sw         $t8, 0x40($sp)
/* D39AC 800D2DAC 07000007 */  bltz       $t8, .L800D2DCC
/* D39B0 800D2DB0 AFB90044 */   sw        $t9, 0x44($sp)
/* D39B4 800D2DB4 1F000003 */  bgtz       $t8, .L800D2DC4
/* D39B8 800D2DB8 00000000 */   nop
/* D39BC 800D2DBC 53200004 */  beql       $t9, $zero, .L800D2DD0
/* D39C0 800D2DC0 240C0018 */   addiu     $t4, $zero, 0x18
.L800D2DC4:
/* D39C4 800D2DC4 5E00FFE4 */  bgtzl      $s0, .L800D2D58
/* D39C8 800D2DC8 8FAE0038 */   lw        $t6, 0x38($sp)
.L800D2DCC:
/* D39CC 800D2DCC 240C0018 */  addiu      $t4, $zero, 0x18
.L800D2DD0:
/* D39D0 800D2DD0 01903023 */  subu       $a2, $t4, $s0
/* D39D4 800D2DD4 AE260014 */  sw         $a2, 0x14($s1)
/* D39D8 800D2DD8 8E240008 */  lw         $a0, 8($s1)
/* D39DC 800D2DDC 0C03351C */  jal        func_800CD470
/* D39E0 800D2DE0 02502821 */   addu      $a1, $s2, $s0
/* D39E4 800D2DE4 8E250014 */  lw         $a1, 0x14($s1)
/* D39E8 800D2DE8 8E240024 */  lw         $a0, 0x24($s1)
/* D39EC 800D2DEC 00A4082A */  slt        $at, $a1, $a0
/* D39F0 800D2DF0 10200002 */  beqz       $at, .L800D2DFC
/* D39F4 800D2DF4 00856823 */   subu      $t5, $a0, $a1
/* D39F8 800D2DF8 AE2D0010 */  sw         $t5, 0x10($s1)
.L800D2DFC:
/* D39FC 800D2DFC 04830010 */  bgezl      $a0, .L800D2E40
/* D3A00 800D2E00 8FBF002C */   lw        $ra, 0x2c($sp)
/* D3A04 800D2E04 8E2E0030 */  lw         $t6, 0x30($s1)
/* D3A08 800D2E08 24010010 */  addiu      $at, $zero, 0x10
/* D3A0C 800D2E0C 31CF0014 */  andi       $t7, $t6, 0x14
/* D3A10 800D2E10 55E1000B */  bnel       $t7, $at, .L800D2E40
/* D3A14 800D2E14 8FBF002C */   lw        $ra, 0x2c($sp)
/* D3A18 800D2E18 8E380028 */  lw         $t8, 0x28($s1)
/* D3A1C 800D2E1C 8E39000C */  lw         $t9, 0xc($s1)
/* D3A20 800D2E20 8E220010 */  lw         $v0, 0x10($s1)
/* D3A24 800D2E24 03195023 */  subu       $t2, $t8, $t9
/* D3A28 800D2E28 01425823 */  subu       $t3, $t2, $v0
/* D3A2C 800D2E2C 01658023 */  subu       $s0, $t3, $a1
/* D3A30 800D2E30 1A000002 */  blez       $s0, .L800D2E3C
/* D3A34 800D2E34 00506021 */   addu      $t4, $v0, $s0
/* D3A38 800D2E38 AE2C0010 */  sw         $t4, 0x10($s1)
.L800D2E3C:
/* D3A3C 800D2E3C 8FBF002C */  lw         $ra, 0x2c($sp)
.L800D2E40:
/* D3A40 800D2E40 8FB0001C */  lw         $s0, 0x1c($sp)
/* D3A44 800D2E44 8FB10020 */  lw         $s1, 0x20($sp)
/* D3A48 800D2E48 8FB20024 */  lw         $s2, 0x24($sp)
/* D3A4C 800D2E4C 8FB30028 */  lw         $s3, 0x28($sp)
/* D3A50 800D2E50 03E00008 */  jr         $ra
/* D3A54 800D2E54 27BD0090 */   addiu     $sp, $sp, 0x90
/* D3A58 800D2E58 00000000 */  nop
/* D3A5C 800D2E5C 00000000 */  nop
