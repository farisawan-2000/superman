.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C8D40
/* C9940 800C8D40 24010002 */  addiu      $at, $zero, 2
/* C9944 800C8D44 14A10008 */  bne        $a1, $at, .L800C8D68
/* C9948 800C8D48 8C82001C */   lw        $v0, 0x1c($a0)
/* C994C 800C8D4C 8C8E0014 */  lw         $t6, 0x14($a0)
/* C9950 800C8D50 000E7880 */  sll        $t7, $t6, 2
/* C9954 800C8D54 004FC021 */  addu       $t8, $v0, $t7
/* C9958 800C8D58 AF060000 */  sw         $a2, ($t8)
/* C995C 800C8D5C 8C990014 */  lw         $t9, 0x14($a0)
/* C9960 800C8D60 27280001 */  addiu      $t0, $t9, 1
/* C9964 800C8D64 AC880014 */  sw         $t0, 0x14($a0)
.L800C8D68:
/* C9968 800C8D68 03E00008 */  jr         $ra
/* C996C 800C8D6C 00001025 */   or        $v0, $zero, $zero

glabel func_800C8D70
/* C9970 800C8D70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C9974 800C8D74 8FA80058 */  lw         $t0, 0x58($sp)
/* C9978 800C8D78 AFBF0044 */  sw         $ra, 0x44($sp)
/* C997C 800C8D7C AFBE0040 */  sw         $fp, 0x40($sp)
/* C9980 800C8D80 AFB7003C */  sw         $s7, 0x3c($sp)
/* C9984 800C8D84 AFB60038 */  sw         $s6, 0x38($sp)
/* C9988 800C8D88 AFB50034 */  sw         $s5, 0x34($sp)
/* C998C 800C8D8C AFB40030 */  sw         $s4, 0x30($sp)
/* C9990 800C8D90 AFB3002C */  sw         $s3, 0x2c($sp)
/* C9994 800C8D94 AFB20028 */  sw         $s2, 0x28($sp)
/* C9998 800C8D98 AFB10024 */  sw         $s1, 0x24($sp)
/* C999C 800C8D9C AFB00020 */  sw         $s0, 0x20($sp)
/* C99A0 800C8DA0 8C83001C */  lw         $v1, 0x1c($a0)
/* C99A4 800C8DA4 3C0E0200 */  lui        $t6, 0x200
/* C99A8 800C8DA8 00061040 */  sll        $v0, $a2, 1
/* C99AC 800C8DAC 3C0F0200 */  lui        $t7, 0x200
/* C99B0 800C8DB0 35CE0440 */  ori        $t6, $t6, 0x440
/* C99B4 800C8DB4 35EF0580 */  ori        $t7, $t7, 0x580
/* C99B8 800C8DB8 AD0E0000 */  sw         $t6, ($t0)
/* C99BC 800C8DBC AD020004 */  sw         $v0, 4($t0)
/* C99C0 800C8DC0 AD0F0008 */  sw         $t7, 8($t0)
/* C99C4 800C8DC4 AD02000C */  sw         $v0, 0xc($t0)
/* C99C8 800C8DC8 8C980014 */  lw         $t8, 0x14($a0)
/* C99CC 800C8DCC 00C0A825 */  or         $s5, $a2, $zero
/* C99D0 800C8DD0 00A0B825 */  or         $s7, $a1, $zero
/* C99D4 800C8DD4 00E0F025 */  or         $fp, $a3, $zero
/* C99D8 800C8DD8 0080A025 */  or         $s4, $a0, $zero
/* C99DC 800C8DDC 00008025 */  or         $s0, $zero, $zero
/* C99E0 800C8DE0 1B00001E */  blez       $t8, .L800C8E5C
/* C99E4 800C8DE4 25130010 */   addiu     $s3, $t0, 0x10
/* C99E8 800C8DE8 3C120C00 */  lui        $s2, 0xc00
/* C99EC 800C8DEC 36527FFF */  ori        $s2, $s2, 0x7fff
/* C99F0 800C8DF0 00608825 */  or         $s1, $v1, $zero
/* C99F4 800C8DF4 3056FFFF */  andi       $s6, $v0, 0xffff
.L800C8DF8:
/* C99F8 800C8DF8 8E240000 */  lw         $a0, ($s1)
/* C99FC 800C8DFC AFB30010 */  sw         $s3, 0x10($sp)
/* C9A00 800C8E00 02E02825 */  or         $a1, $s7, $zero
/* C9A04 800C8E04 8C990004 */  lw         $t9, 4($a0)
/* C9A08 800C8E08 02A03025 */  or         $a2, $s5, $zero
/* C9A0C 800C8E0C 03C03825 */  or         $a3, $fp, $zero
/* C9A10 800C8E10 0320F809 */  jalr       $t9
/* C9A14 800C8E14 00000000 */   nop
/* C9A18 800C8E18 3C0A06C0 */  lui        $t2, 0x6c0
/* C9A1C 800C8E1C 3C0B0800 */  lui        $t3, 0x800
/* C9A20 800C8E20 3C090800 */  lui        $t1, 0x800
/* C9A24 800C8E24 354A0440 */  ori        $t2, $t2, 0x440
/* C9A28 800C8E28 356B0580 */  ori        $t3, $t3, 0x580
/* C9A2C 800C8E2C AC490000 */  sw         $t1, ($v0)
/* C9A30 800C8E30 AC560004 */  sw         $s6, 4($v0)
/* C9A34 800C8E34 AC4A000C */  sw         $t2, 0xc($v0)
/* C9A38 800C8E38 AC520008 */  sw         $s2, 8($v0)
/* C9A3C 800C8E3C AC4B0014 */  sw         $t3, 0x14($v0)
/* C9A40 800C8E40 AC520010 */  sw         $s2, 0x10($v0)
/* C9A44 800C8E44 8E8C0014 */  lw         $t4, 0x14($s4)
/* C9A48 800C8E48 26100001 */  addiu      $s0, $s0, 1
/* C9A4C 800C8E4C 26310004 */  addiu      $s1, $s1, 4
/* C9A50 800C8E50 020C082A */  slt        $at, $s0, $t4
/* C9A54 800C8E54 1420FFE8 */  bnez       $at, .L800C8DF8
/* C9A58 800C8E58 24530018 */   addiu     $s3, $v0, 0x18
.L800C8E5C:
/* C9A5C 800C8E5C 8FBF0044 */  lw         $ra, 0x44($sp)
/* C9A60 800C8E60 02601025 */  or         $v0, $s3, $zero
/* C9A64 800C8E64 8FB3002C */  lw         $s3, 0x2c($sp)
/* C9A68 800C8E68 8FB00020 */  lw         $s0, 0x20($sp)
/* C9A6C 800C8E6C 8FB10024 */  lw         $s1, 0x24($sp)
/* C9A70 800C8E70 8FB20028 */  lw         $s2, 0x28($sp)
/* C9A74 800C8E74 8FB40030 */  lw         $s4, 0x30($sp)
/* C9A78 800C8E78 8FB50034 */  lw         $s5, 0x34($sp)
/* C9A7C 800C8E7C 8FB60038 */  lw         $s6, 0x38($sp)
/* C9A80 800C8E80 8FB7003C */  lw         $s7, 0x3c($sp)
/* C9A84 800C8E84 8FBE0040 */  lw         $fp, 0x40($sp)
/* C9A88 800C8E88 03E00008 */  jr         $ra
/* C9A8C 800C8E8C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800C8E90
/* C9A90 800C8E90 44853000 */  mtc1       $a1, $f6
/* C9A94 800C8E94 C4840010 */  lwc1       $f4, 0x10($a0)
/* C9A98 800C8E98 C4900014 */  lwc1       $f16, 0x14($a0)
/* C9A9C 800C8E9C 46803220 */  cvt.s.w    $f8, $f6
/* C9AA0 800C8EA0 3C014000 */  lui        $at, 0x4000
/* C9AA4 800C8EA4 44812800 */  mtc1       $at, $f5
/* C9AA8 800C8EA8 3C014010 */  lui        $at, 0x4010
/* C9AAC 800C8EAC 46082282 */  mul.s      $f10, $f4, $f8
/* C9AB0 800C8EB0 44802000 */  mtc1       $zero, $f4
/* C9AB4 800C8EB4 460A8480 */  add.s      $f18, $f16, $f10
/* C9AB8 800C8EB8 E4920014 */  swc1       $f18, 0x14($a0)
/* C9ABC 800C8EBC C4860014 */  lwc1       $f6, 0x14($a0)
/* C9AC0 800C8EC0 46003021 */  cvt.d.s    $f0, $f6
/* C9AC4 800C8EC4 44803000 */  mtc1       $zero, $f6
/* C9AC8 800C8EC8 4620203C */  c.lt.d     $f4, $f0
/* C9ACC 800C8ECC 00000000 */  nop
/* C9AD0 800C8ED0 45020009 */  bc1fl      .L800C8EF8
/* C9AD4 800C8ED4 462004A0 */   cvt.s.d   $f18, $f0
/* C9AD8 800C8ED8 44814800 */  mtc1       $at, $f9
/* C9ADC 800C8EDC 44804000 */  mtc1       $zero, $f8
/* C9AE0 800C8EE0 00000000 */  nop
/* C9AE4 800C8EE4 46280401 */  sub.d      $f16, $f0, $f8
/* C9AE8 800C8EE8 462082A0 */  cvt.s.d    $f10, $f16
/* C9AEC 800C8EEC 10000003 */  b          .L800C8EFC
/* C9AF0 800C8EF0 E48A0014 */   swc1      $f10, 0x14($a0)
/* C9AF4 800C8EF4 462004A0 */  cvt.s.d    $f18, $f0
.L800C8EF8:
/* C9AF8 800C8EF8 E4920014 */  swc1       $f18, 0x14($a0)
.L800C8EFC:
/* C9AFC 800C8EFC C4820014 */  lwc1       $f2, 0x14($a0)
/* C9B00 800C8F00 3C013FF0 */  lui        $at, 0x3ff0
/* C9B04 800C8F04 44814800 */  mtc1       $at, $f9
/* C9B08 800C8F08 4606103C */  c.lt.s     $f2, $f6
/* C9B0C 800C8F0C 44804000 */  mtc1       $zero, $f8
/* C9B10 800C8F10 45020003 */  bc1fl      .L800C8F20
/* C9B14 800C8F14 46001121 */   cvt.d.s   $f4, $f2
/* C9B18 800C8F18 46001087 */  neg.s      $f2, $f2
/* C9B1C 800C8F1C 46001121 */  cvt.d.s    $f4, $f2
.L800C8F20:
/* C9B20 800C8F20 C48A001C */  lwc1       $f10, 0x1c($a0)
/* C9B24 800C8F24 46282401 */  sub.d      $f16, $f4, $f8
/* C9B28 800C8F28 462080A0 */  cvt.s.d    $f2, $f16
/* C9B2C 800C8F2C 46025002 */  mul.s      $f0, $f10, $f2
/* C9B30 800C8F30 03E00008 */  jr         $ra
/* C9B34 800C8F34 00000000 */   nop

glabel func_800C8F38
/* C9B38 800C8F38 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C9B3C 800C8F3C AFBF0014 */  sw         $ra, 0x14($sp)
/* C9B40 800C8F40 30A2FFFF */  andi       $v0, $a1, 0xffff
/* C9B44 800C8F44 0006C040 */  sll        $t8, $a2, 1
/* C9B48 800C8F48 3319FFFF */  andi       $t9, $t8, 0xffff
/* C9B4C 800C8F4C 00027C00 */  sll        $t7, $v0, 0x10
/* C9B50 800C8F50 3C010800 */  lui        $at, 0x800
/* C9B54 800C8F54 3C0A0B00 */  lui        $t2, 0xb00
/* C9B58 800C8F58 00417025 */  or         $t6, $v0, $at
/* C9B5C 800C8F5C 01F94825 */  or         $t1, $t7, $t9
/* C9B60 800C8F60 354A0020 */  ori        $t2, $t2, 0x20
/* C9B64 800C8F64 00804025 */  or         $t0, $a0, $zero
/* C9B68 800C8F68 ACE90004 */  sw         $t1, 4($a3)
/* C9B6C 800C8F6C ACEE0000 */  sw         $t6, ($a3)
/* C9B70 800C8F70 ACEA0008 */  sw         $t2, 8($a3)
/* C9B74 800C8F74 AFA80028 */  sw         $t0, 0x28($sp)
/* C9B78 800C8F78 AFA70034 */  sw         $a3, 0x34($sp)
/* C9B7C 800C8F7C 0C030C38 */  jal        func_800C30E0
/* C9B80 800C8F80 24840008 */   addiu     $a0, $a0, 8
/* C9B84 800C8F84 8FA70034 */  lw         $a3, 0x34($sp)
/* C9B88 800C8F88 8FA80028 */  lw         $t0, 0x28($sp)
/* C9B8C 800C8F8C 3C010E00 */  lui        $at, 0xe00
/* C9B90 800C8F90 24E30010 */  addiu      $v1, $a3, 0x10
/* C9B94 800C8F94 246B0008 */  addiu      $t3, $v1, 8
/* C9B98 800C8F98 ACE2000C */  sw         $v0, 0xc($a3)
/* C9B9C 800C8F9C AFAB0024 */  sw         $t3, 0x24($sp)
/* C9BA0 800C8FA0 8D0C002C */  lw         $t4, 0x2c($t0)
/* C9BA4 800C8FA4 850F0002 */  lh         $t7, 2($t0)
/* C9BA8 800C8FA8 318D00FF */  andi       $t5, $t4, 0xff
/* C9BAC 800C8FAC 000D7400 */  sll        $t6, $t5, 0x10
/* C9BB0 800C8FB0 01C1C025 */  or         $t8, $t6, $at
/* C9BB4 800C8FB4 31F9FFFF */  andi       $t9, $t7, 0xffff
/* C9BB8 800C8FB8 03194825 */  or         $t1, $t8, $t9
/* C9BBC 800C8FBC AC690000 */  sw         $t1, ($v1)
/* C9BC0 800C8FC0 8D040028 */  lw         $a0, 0x28($t0)
/* C9BC4 800C8FC4 0C030C38 */  jal        func_800C30E0
/* C9BC8 800C8FC8 AFA30018 */   sw        $v1, 0x18($sp)
/* C9BCC 800C8FCC 8FA50018 */  lw         $a1, 0x18($sp)
/* C9BD0 800C8FD0 8FA80028 */  lw         $t0, 0x28($sp)
/* C9BD4 800C8FD4 ACA20004 */  sw         $v0, 4($a1)
/* C9BD8 800C8FD8 AD00002C */  sw         $zero, 0x2c($t0)
/* C9BDC 800C8FDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C9BE0 800C8FE0 8FA20024 */  lw         $v0, 0x24($sp)
/* C9BE4 800C8FE4 27BD0028 */  addiu      $sp, $sp, 0x28
/* C9BE8 800C8FE8 03E00008 */  jr         $ra
/* C9BEC 800C8FEC 00000000 */   nop

glabel func_800C8FF0
/* C9BF0 800C8FF0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C9BF4 800C8FF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C9BF8 800C8FF8 AFB00018 */  sw         $s0, 0x18($sp)
/* C9BFC 800C8FFC 8C83001C */  lw         $v1, 0x1c($a0)
/* C9C00 800C9000 8C820014 */  lw         $v0, 0x14($a0)
/* C9C04 800C9004 8FA80070 */  lw         $t0, 0x70($sp)
/* C9C08 800C9008 00037040 */  sll        $t6, $v1, 1
/* C9C0C 800C900C 00A2082B */  sltu       $at, $a1, $v0
/* C9C10 800C9010 00805025 */  or         $t2, $a0, $zero
/* C9C14 800C9014 00C06825 */  or         $t5, $a2, $zero
/* C9C18 800C9018 00E05825 */  or         $t3, $a3, $zero
/* C9C1C 800C901C 10200002 */  beqz       $at, .L800C9028
/* C9C20 800C9020 004E4821 */   addu      $t1, $v0, $t6
/* C9C24 800C9024 00AE2821 */  addu       $a1, $a1, $t6
.L800C9028:
/* C9C28 800C9028 000B3040 */  sll        $a2, $t3, 1
/* C9C2C 800C902C 00C53821 */  addu       $a3, $a2, $a1
/* C9C30 800C9030 0127082B */  sltu       $at, $t1, $a3
/* C9C34 800C9034 1020003C */  beqz       $at, .L800C9128
/* C9C38 800C9038 25100008 */   addiu     $s0, $t0, 8
/* C9C3C 800C903C 01255823 */  subu       $t3, $t1, $a1
/* C9C40 800C9040 000BC043 */  sra        $t8, $t3, 1
/* C9C44 800C9044 3C0F0800 */  lui        $t7, 0x800
/* C9C48 800C9048 AD0F0000 */  sw         $t7, ($t0)
/* C9C4C 800C904C 00185840 */  sll        $t3, $t8, 1
/* C9C50 800C9050 3178FFFF */  andi       $t8, $t3, 0xffff
/* C9C54 800C9054 000D7C00 */  sll        $t7, $t5, 0x10
/* C9C58 800C9058 01F8C825 */  or         $t9, $t7, $t8
/* C9C5C 800C905C 25100008 */  addiu      $s0, $t0, 8
/* C9C60 800C9060 AD190004 */  sw         $t9, 4($t0)
/* C9C64 800C9064 02006025 */  or         $t4, $s0, $zero
/* C9C68 800C9068 3C0E0600 */  lui        $t6, 0x600
/* C9C6C 800C906C AD8E0000 */  sw         $t6, ($t4)
/* C9C70 800C9070 AFAD0068 */  sw         $t5, 0x68($sp)
/* C9C74 800C9074 AFAC0044 */  sw         $t4, 0x44($sp)
/* C9C78 800C9078 AFAB0024 */  sw         $t3, 0x24($sp)
/* C9C7C 800C907C AFAA0060 */  sw         $t2, 0x60($sp)
/* C9C80 800C9080 AFA9004C */  sw         $t1, 0x4c($sp)
/* C9C84 800C9084 AFA70028 */  sw         $a3, 0x28($sp)
/* C9C88 800C9088 AFA6002C */  sw         $a2, 0x2c($sp)
/* C9C8C 800C908C 26100008 */  addiu      $s0, $s0, 8
/* C9C90 800C9090 0C030C38 */  jal        func_800C30E0
/* C9C94 800C9094 00A02025 */   or        $a0, $a1, $zero
/* C9C98 800C9098 8FAC0044 */  lw         $t4, 0x44($sp)
/* C9C9C 800C909C 8FA70028 */  lw         $a3, 0x28($sp)
/* C9CA0 800C90A0 8FA9004C */  lw         $t1, 0x4c($sp)
/* C9CA4 800C90A4 8FAB0024 */  lw         $t3, 0x24($sp)
/* C9CA8 800C90A8 8FAD0068 */  lw         $t5, 0x68($sp)
/* C9CAC 800C90AC 8FAA0060 */  lw         $t2, 0x60($sp)
/* C9CB0 800C90B0 02001825 */  or         $v1, $s0, $zero
/* C9CB4 800C90B4 3C0F0800 */  lui        $t7, 0x800
/* C9CB8 800C90B8 AD820004 */  sw         $v0, 4($t4)
/* C9CBC 800C90BC AC6F0000 */  sw         $t7, ($v1)
/* C9CC0 800C90C0 00E97823 */  subu       $t7, $a3, $t1
/* C9CC4 800C90C4 016DC821 */  addu       $t9, $t3, $t5
/* C9CC8 800C90C8 00197400 */  sll        $t6, $t9, 0x10
/* C9CCC 800C90CC 000FC043 */  sra        $t8, $t7, 1
/* C9CD0 800C90D0 0018C840 */  sll        $t9, $t8, 1
/* C9CD4 800C90D4 332FFFFF */  andi       $t7, $t9, 0xffff
/* C9CD8 800C90D8 01CFC025 */  or         $t8, $t6, $t7
/* C9CDC 800C90DC 26100008 */  addiu      $s0, $s0, 8
/* C9CE0 800C90E0 AC780004 */  sw         $t8, 4($v1)
/* C9CE4 800C90E4 02002825 */  or         $a1, $s0, $zero
/* C9CE8 800C90E8 3C190600 */  lui        $t9, 0x600
/* C9CEC 800C90EC ACB90000 */  sw         $t9, ($a1)
/* C9CF0 800C90F0 8D440014 */  lw         $a0, 0x14($t2)
/* C9CF4 800C90F4 AFA5003C */  sw         $a1, 0x3c($sp)
/* C9CF8 800C90F8 0C030C38 */  jal        func_800C30E0
/* C9CFC 800C90FC 26100008 */   addiu     $s0, $s0, 8
/* C9D00 800C9100 8FA5003C */  lw         $a1, 0x3c($sp)
/* C9D04 800C9104 8FA6002C */  lw         $a2, 0x2c($sp)
/* C9D08 800C9108 02001825 */  or         $v1, $s0, $zero
/* C9D0C 800C910C 3C0E0800 */  lui        $t6, 0x800
/* C9D10 800C9110 ACA20004 */  sw         $v0, 4($a1)
/* C9D14 800C9114 30CFFFFF */  andi       $t7, $a2, 0xffff
/* C9D18 800C9118 AC6F0004 */  sw         $t7, 4($v1)
/* C9D1C 800C911C AC6E0000 */  sw         $t6, ($v1)
/* C9D20 800C9120 10000010 */  b          .L800C9164
/* C9D24 800C9124 26100008 */   addiu     $s0, $s0, 8
.L800C9128:
/* C9D28 800C9128 3C180800 */  lui        $t8, 0x800
/* C9D2C 800C912C AD180000 */  sw         $t8, ($t0)
/* C9D30 800C9130 000D7400 */  sll        $t6, $t5, 0x10
/* C9D34 800C9134 30CFFFFF */  andi       $t7, $a2, 0xffff
/* C9D38 800C9138 01CFC025 */  or         $t8, $t6, $t7
/* C9D3C 800C913C AD180004 */  sw         $t8, 4($t0)
/* C9D40 800C9140 02001825 */  or         $v1, $s0, $zero
/* C9D44 800C9144 3C190600 */  lui        $t9, 0x600
/* C9D48 800C9148 AC790000 */  sw         $t9, ($v1)
/* C9D4C 800C914C AFA30030 */  sw         $v1, 0x30($sp)
/* C9D50 800C9150 26100008 */  addiu      $s0, $s0, 8
/* C9D54 800C9154 0C030C38 */  jal        func_800C30E0
/* C9D58 800C9158 00A02025 */   or        $a0, $a1, $zero
/* C9D5C 800C915C 8FA30030 */  lw         $v1, 0x30($sp)
/* C9D60 800C9160 AC620004 */  sw         $v0, 4($v1)
.L800C9164:
/* C9D64 800C9164 8FBF001C */  lw         $ra, 0x1c($sp)
/* C9D68 800C9168 02001025 */  or         $v0, $s0, $zero
/* C9D6C 800C916C 8FB00018 */  lw         $s0, 0x18($sp)
/* C9D70 800C9170 03E00008 */  jr         $ra
/* C9D74 800C9174 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800C9178
/* C9D78 800C9178 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C9D7C 800C917C AFBF001C */  sw         $ra, 0x1c($sp)
/* C9D80 800C9180 AFB00018 */  sw         $s0, 0x18($sp)
/* C9D84 800C9184 8C83001C */  lw         $v1, 0x1c($a0)
/* C9D88 800C9188 8C820014 */  lw         $v0, 0x14($a0)
/* C9D8C 800C918C 8FA80070 */  lw         $t0, 0x70($sp)
/* C9D90 800C9190 00037040 */  sll        $t6, $v1, 1
/* C9D94 800C9194 00A2082B */  sltu       $at, $a1, $v0
/* C9D98 800C9198 00805025 */  or         $t2, $a0, $zero
/* C9D9C 800C919C 00C06825 */  or         $t5, $a2, $zero
/* C9DA0 800C91A0 00E05825 */  or         $t3, $a3, $zero
/* C9DA4 800C91A4 10200002 */  beqz       $at, .L800C91B0
/* C9DA8 800C91A8 004E4821 */   addu      $t1, $v0, $t6
/* C9DAC 800C91AC 00AE2821 */  addu       $a1, $a1, $t6
.L800C91B0:
/* C9DB0 800C91B0 000B3040 */  sll        $a2, $t3, 1
/* C9DB4 800C91B4 00C53821 */  addu       $a3, $a2, $a1
/* C9DB8 800C91B8 0127082B */  sltu       $at, $t1, $a3
/* C9DBC 800C91BC 10200037 */  beqz       $at, .L800C929C
/* C9DC0 800C91C0 25100008 */   addiu     $s0, $t0, 8
/* C9DC4 800C91C4 31AFFFFF */  andi       $t7, $t5, 0xffff
/* C9DC8 800C91C8 3C010800 */  lui        $at, 0x800
/* C9DCC 800C91CC 01255823 */  subu       $t3, $t1, $a1
/* C9DD0 800C91D0 000BC843 */  sra        $t9, $t3, 1
/* C9DD4 800C91D4 01E1C025 */  or         $t8, $t7, $at
/* C9DD8 800C91D8 00197040 */  sll        $t6, $t9, 1
/* C9DDC 800C91DC 31CFFFFF */  andi       $t7, $t6, 0xffff
/* C9DE0 800C91E0 AD180000 */  sw         $t8, ($t0)
/* C9DE4 800C91E4 25100008 */  addiu      $s0, $t0, 8
/* C9DE8 800C91E8 AD0F0004 */  sw         $t7, 4($t0)
/* C9DEC 800C91EC 02006025 */  or         $t4, $s0, $zero
/* C9DF0 800C91F0 3C180400 */  lui        $t8, 0x400
/* C9DF4 800C91F4 AD980000 */  sw         $t8, ($t4)
/* C9DF8 800C91F8 AFAD0068 */  sw         $t5, 0x68($sp)
/* C9DFC 800C91FC AFAC0044 */  sw         $t4, 0x44($sp)
/* C9E00 800C9200 AFAE0024 */  sw         $t6, 0x24($sp)
/* C9E04 800C9204 AFAA0060 */  sw         $t2, 0x60($sp)
/* C9E08 800C9208 AFA9004C */  sw         $t1, 0x4c($sp)
/* C9E0C 800C920C AFA70028 */  sw         $a3, 0x28($sp)
/* C9E10 800C9210 AFA6002C */  sw         $a2, 0x2c($sp)
/* C9E14 800C9214 26100008 */  addiu      $s0, $s0, 8
/* C9E18 800C9218 0C030C38 */  jal        func_800C30E0
/* C9E1C 800C921C 00A02025 */   or        $a0, $a1, $zero
/* C9E20 800C9220 8FAB0024 */  lw         $t3, 0x24($sp)
/* C9E24 800C9224 8FAD0068 */  lw         $t5, 0x68($sp)
/* C9E28 800C9228 8FA70028 */  lw         $a3, 0x28($sp)
/* C9E2C 800C922C 8FA9004C */  lw         $t1, 0x4c($sp)
/* C9E30 800C9230 8FAC0044 */  lw         $t4, 0x44($sp)
/* C9E34 800C9234 016DC821 */  addu       $t9, $t3, $t5
/* C9E38 800C9238 332EFFFF */  andi       $t6, $t9, 0xffff
/* C9E3C 800C923C 3C010800 */  lui        $at, 0x800
/* C9E40 800C9240 8FAA0060 */  lw         $t2, 0x60($sp)
/* C9E44 800C9244 01C17825 */  or         $t7, $t6, $at
/* C9E48 800C9248 00E9C023 */  subu       $t8, $a3, $t1
/* C9E4C 800C924C 0018C843 */  sra        $t9, $t8, 1
/* C9E50 800C9250 02001825 */  or         $v1, $s0, $zero
/* C9E54 800C9254 AD820004 */  sw         $v0, 4($t4)
/* C9E58 800C9258 AC6F0000 */  sw         $t7, ($v1)
/* C9E5C 800C925C 00197040 */  sll        $t6, $t9, 1
/* C9E60 800C9260 31CFFFFF */  andi       $t7, $t6, 0xffff
/* C9E64 800C9264 26100008 */  addiu      $s0, $s0, 8
/* C9E68 800C9268 AC6F0004 */  sw         $t7, 4($v1)
/* C9E6C 800C926C 02002825 */  or         $a1, $s0, $zero
/* C9E70 800C9270 3C180400 */  lui        $t8, 0x400
/* C9E74 800C9274 ACB80000 */  sw         $t8, ($a1)
/* C9E78 800C9278 8D440014 */  lw         $a0, 0x14($t2)
/* C9E7C 800C927C AFA5003C */  sw         $a1, 0x3c($sp)
/* C9E80 800C9280 0C030C38 */  jal        func_800C30E0
/* C9E84 800C9284 26100008 */   addiu     $s0, $s0, 8
/* C9E88 800C9288 8FA5003C */  lw         $a1, 0x3c($sp)
/* C9E8C 800C928C 8FA6002C */  lw         $a2, 0x2c($sp)
/* C9E90 800C9290 ACA20004 */  sw         $v0, 4($a1)
/* C9E94 800C9294 10000012 */  b          .L800C92E0
/* C9E98 800C9298 30C7FFFF */   andi      $a3, $a2, 0xffff
.L800C929C:
/* C9E9C 800C929C 31B9FFFF */  andi       $t9, $t5, 0xffff
/* C9EA0 800C92A0 3C010800 */  lui        $at, 0x800
/* C9EA4 800C92A4 03217025 */  or         $t6, $t9, $at
/* C9EA8 800C92A8 30C7FFFF */  andi       $a3, $a2, 0xffff
/* C9EAC 800C92AC AD070004 */  sw         $a3, 4($t0)
/* C9EB0 800C92B0 AD0E0000 */  sw         $t6, ($t0)
/* C9EB4 800C92B4 02001825 */  or         $v1, $s0, $zero
/* C9EB8 800C92B8 3C0F0400 */  lui        $t7, 0x400
/* C9EBC 800C92BC AC6F0000 */  sw         $t7, ($v1)
/* C9EC0 800C92C0 AFA70028 */  sw         $a3, 0x28($sp)
/* C9EC4 800C92C4 AFA30034 */  sw         $v1, 0x34($sp)
/* C9EC8 800C92C8 26100008 */  addiu      $s0, $s0, 8
/* C9ECC 800C92CC 0C030C38 */  jal        func_800C30E0
/* C9ED0 800C92D0 00A02025 */   or        $a0, $a1, $zero
/* C9ED4 800C92D4 8FA30034 */  lw         $v1, 0x34($sp)
/* C9ED8 800C92D8 8FA70028 */  lw         $a3, 0x28($sp)
/* C9EDC 800C92DC AC620004 */  sw         $v0, 4($v1)
.L800C92E0:
/* C9EE0 800C92E0 02001825 */  or         $v1, $s0, $zero
/* C9EE4 800C92E4 3C180800 */  lui        $t8, 0x800
/* C9EE8 800C92E8 AC780000 */  sw         $t8, ($v1)
/* C9EEC 800C92EC AC670004 */  sw         $a3, 4($v1)
/* C9EF0 800C92F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* C9EF4 800C92F4 26020008 */  addiu      $v0, $s0, 8
/* C9EF8 800C92F8 8FB00018 */  lw         $s0, 0x18($sp)
/* C9EFC 800C92FC 03E00008 */  jr         $ra
/* C9F00 800C9300 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800C9304
/* C9F04 800C9304 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C9F08 800C9308 AFBF0024 */  sw         $ra, 0x24($sp)
/* C9F0C 800C930C AFB10020 */  sw         $s1, 0x20($sp)
/* C9F10 800C9310 AFB0001C */  sw         $s0, 0x1c($sp)
/* C9F14 800C9314 AFA60068 */  sw         $a2, 0x68($sp)
/* C9F18 800C9318 8CAE0024 */  lw         $t6, 0x24($a1)
/* C9F1C 800C931C 00A08025 */  or         $s0, $a1, $zero
/* C9F20 800C9320 00E08825 */  or         $s1, $a3, $zero
/* C9F24 800C9324 11C0006E */  beqz       $t6, .L800C94E0
/* C9F28 800C9328 00805025 */   or        $t2, $a0, $zero
/* C9F2C 800C932C 8CAF0004 */  lw         $t7, 4($a1)
/* C9F30 800C9330 8CB80000 */  lw         $t8, ($a1)
/* C9F34 800C9334 00A02025 */  or         $a0, $a1, $zero
/* C9F38 800C9338 00E02825 */  or         $a1, $a3, $zero
/* C9F3C 800C933C 01F8C823 */  subu       $t9, $t7, $t8
/* C9F40 800C9340 AFB90038 */  sw         $t9, 0x38($sp)
/* C9F44 800C9344 0C0323A4 */  jal        func_800C8E90
/* C9F48 800C9348 AFAA0060 */   sw        $t2, 0x60($sp)
/* C9F4C 800C934C 8FAC0038 */  lw         $t4, 0x38($sp)
/* C9F50 800C9350 3C014700 */  lui        $at, 0x4700
/* C9F54 800C9354 44817000 */  mtc1       $at, $f14
/* C9F58 800C9358 448C3000 */  mtc1       $t4, $f6
/* C9F5C 800C935C 3C013FF0 */  lui        $at, 0x3ff0
/* C9F60 800C9360 44812800 */  mtc1       $at, $f5
/* C9F64 800C9364 46803220 */  cvt.s.w    $f8, $f6
/* C9F68 800C9368 44802000 */  mtc1       $zero, $f4
/* C9F6C 800C936C 8FA40060 */  lw         $a0, 0x60($sp)
/* C9F70 800C9370 24060280 */  addiu      $a2, $zero, 0x280
/* C9F74 800C9374 46080283 */  div.s      $f10, $f0, $f8
/* C9F78 800C9378 460E5402 */  mul.s      $f16, $f10, $f14
/* C9F7C 800C937C 4600848D */  trunc.w.s  $f18, $f16
/* C9F80 800C9380 440E9000 */  mfc1       $t6, $f18
/* C9F84 800C9384 00000000 */  nop
/* C9F88 800C9388 448E3000 */  mtc1       $t6, $f6
/* C9F8C 800C938C 00000000 */  nop
/* C9F90 800C9390 46803220 */  cvt.s.w    $f8, $f6
/* C9F94 800C9394 460E4283 */  div.s      $f10, $f8, $f14
/* C9F98 800C9398 44914000 */  mtc1       $s1, $f8
/* C9F9C 800C939C 46005421 */  cvt.d.s    $f16, $f10
/* C9FA0 800C93A0 468042A0 */  cvt.s.w    $f10, $f8
/* C9FA4 800C93A4 46302481 */  sub.d      $f18, $f4, $f16
/* C9FA8 800C93A8 462090A0 */  cvt.s.d    $f2, $f18
/* C9FAC 800C93AC 460A1102 */  mul.s      $f4, $f2, $f10
/* C9FB0 800C93B0 E7A20044 */  swc1       $f2, 0x44($sp)
/* C9FB4 800C93B4 8E020024 */  lw         $v0, 0x24($s0)
/* C9FB8 800C93B8 C4460020 */  lwc1       $f6, 0x20($v0)
/* C9FBC 800C93BC 46043300 */  add.s      $f12, $f6, $f4
/* C9FC0 800C93C0 4600640D */  trunc.w.s  $f16, $f12
/* C9FC4 800C93C4 44098000 */  mfc1       $t1, $f16
/* C9FC8 800C93C8 00000000 */  nop
/* C9FCC 800C93CC 44899000 */  mtc1       $t1, $f18
/* C9FD0 800C93D0 00000000 */  nop
/* C9FD4 800C93D4 46809220 */  cvt.s.w    $f8, $f18
/* C9FD8 800C93D8 46086281 */  sub.s      $f10, $f12, $f8
/* C9FDC 800C93DC E44A0020 */  swc1       $f10, 0x20($v0)
/* C9FE0 800C93E0 8E190018 */  lw         $t9, 0x18($s0)
/* C9FE4 800C93E4 8E180004 */  lw         $t8, 4($s0)
/* C9FE8 800C93E8 8C8F0018 */  lw         $t7, 0x18($a0)
/* C9FEC 800C93EC AFA9002C */  sw         $t1, 0x2c($sp)
/* C9FF0 800C93F0 03196023 */  subu       $t4, $t8, $t9
/* C9FF4 800C93F4 000C6823 */  negu       $t5, $t4
/* C9FF8 800C93F8 000D7040 */  sll        $t6, $t5, 1
/* C9FFC 800C93FC 01EE4021 */  addu       $t0, $t7, $t6
/* CA000 800C9400 31030007 */  andi       $v1, $t0, 7
/* CA004 800C9404 8FB90070 */  lw         $t9, 0x70($sp)
/* CA008 800C9408 0003C043 */  sra        $t8, $v1, 1
/* CA00C 800C940C 00185840 */  sll        $t3, $t8, 1
/* CA010 800C9410 010B2823 */  subu       $a1, $t0, $t3
/* CA014 800C9414 AFAB0028 */  sw         $t3, 0x28($sp)
/* CA018 800C9418 03001825 */  or         $v1, $t8, $zero
/* CA01C 800C941C 01383821 */  addu       $a3, $t1, $t8
/* CA020 800C9420 0C03245E */  jal        func_800C9178
/* CA024 800C9424 AFB90010 */   sw        $t9, 0x10($sp)
/* CA028 800C9428 8FAB0028 */  lw         $t3, 0x28($sp)
/* CA02C 800C942C 3C010800 */  lui        $at, 0x800
/* CA030 800C9430 244E0008 */  addiu      $t6, $v0, 8
/* CA034 800C9434 256C0280 */  addiu      $t4, $t3, 0x280
/* CA038 800C9438 318DFFFF */  andi       $t5, $t4, 0xffff
/* CA03C 800C943C 01A17825 */  or         $t7, $t5, $at
/* CA040 800C9440 AC4F0000 */  sw         $t7, ($v0)
/* CA044 800C9444 8FB80068 */  lw         $t8, 0x68($sp)
/* CA048 800C9448 00116040 */  sll        $t4, $s1, 1
/* CA04C 800C944C 318DFFFF */  andi       $t5, $t4, 0xffff
/* CA050 800C9450 0018CC00 */  sll        $t9, $t8, 0x10
/* CA054 800C9454 032D7825 */  or         $t7, $t9, $t5
/* CA058 800C9458 AC4F0004 */  sw         $t7, 4($v0)
/* CA05C 800C945C 3C014700 */  lui        $at, 0x4700
/* CA060 800C9460 44812000 */  mtc1       $at, $f4
/* CA064 800C9464 C7A60044 */  lwc1       $f6, 0x44($sp)
/* CA068 800C9468 AFAE0030 */  sw         $t6, 0x30($sp)
/* CA06C 800C946C 8E0D0024 */  lw         $t5, 0x24($s0)
/* CA070 800C9470 46043402 */  mul.s      $f16, $f6, $f4
/* CA074 800C9474 3C010500 */  lui        $at, 0x500
/* CA078 800C9478 8DAF0024 */  lw         $t7, 0x24($t5)
/* CA07C 800C947C 24430010 */  addiu      $v1, $v0, 0x10
/* CA080 800C9480 31EE00FF */  andi       $t6, $t7, 0xff
/* CA084 800C9484 000EC400 */  sll        $t8, $t6, 0x10
/* CA088 800C9488 4600848D */  trunc.w.s  $f18, $f16
/* CA08C 800C948C 440C9000 */  mfc1       $t4, $f18
/* CA090 800C9490 00000000 */  nop
/* CA094 800C9494 3199FFFF */  andi       $t9, $t4, 0xffff
/* CA098 800C9498 03016025 */  or         $t4, $t8, $at
/* CA09C 800C949C 01996825 */  or         $t5, $t4, $t9
/* CA0A0 800C94A0 AC4D0008 */  sw         $t5, 8($v0)
/* CA0A4 800C94A4 8E0F0024 */  lw         $t7, 0x24($s0)
/* CA0A8 800C94A8 8DE40014 */  lw         $a0, 0x14($t7)
/* CA0AC 800C94AC 0C030C38 */  jal        func_800C30E0
/* CA0B0 800C94B0 AFA3005C */   sw        $v1, 0x5c($sp)
/* CA0B4 800C94B4 8FAE0030 */  lw         $t6, 0x30($sp)
/* CA0B8 800C94B8 8FA9002C */  lw         $t1, 0x2c($sp)
/* CA0BC 800C94BC 8FA3005C */  lw         $v1, 0x5c($sp)
/* CA0C0 800C94C0 ADC20004 */  sw         $v0, 4($t6)
/* CA0C4 800C94C4 8E180024 */  lw         $t8, 0x24($s0)
/* CA0C8 800C94C8 AF000024 */  sw         $zero, 0x24($t8)
/* CA0CC 800C94CC 8E0C0018 */  lw         $t4, 0x18($s0)
/* CA0D0 800C94D0 0189C821 */  addu       $t9, $t4, $t1
/* CA0D4 800C94D4 03316823 */  subu       $t5, $t9, $s1
/* CA0D8 800C94D8 1000000D */  b          .L800C9510
/* CA0DC 800C94DC AE0D0018 */   sw        $t5, 0x18($s0)
.L800C94E0:
/* CA0E0 800C94E0 8E0E0004 */  lw         $t6, 4($s0)
/* CA0E4 800C94E4 8D4F0018 */  lw         $t7, 0x18($t2)
/* CA0E8 800C94E8 8FB90070 */  lw         $t9, 0x70($sp)
/* CA0EC 800C94EC 000EC023 */  negu       $t8, $t6
/* CA0F0 800C94F0 00186040 */  sll        $t4, $t8, 1
/* CA0F4 800C94F4 01402025 */  or         $a0, $t2, $zero
/* CA0F8 800C94F8 8FA60068 */  lw         $a2, 0x68($sp)
/* CA0FC 800C94FC 02203825 */  or         $a3, $s1, $zero
/* CA100 800C9500 01EC2821 */  addu       $a1, $t7, $t4
/* CA104 800C9504 0C03245E */  jal        func_800C9178
/* CA108 800C9508 AFB90010 */   sw        $t9, 0x10($sp)
/* CA10C 800C950C 00401825 */  or         $v1, $v0, $zero
.L800C9510:
/* CA110 800C9510 8FBF0024 */  lw         $ra, 0x24($sp)
/* CA114 800C9514 8FB0001C */  lw         $s0, 0x1c($sp)
/* CA118 800C9518 8FB10020 */  lw         $s1, 0x20($sp)
/* CA11C 800C951C 27BD0060 */  addiu      $sp, $sp, 0x60
/* CA120 800C9520 03E00008 */  jr         $ra
/* CA124 800C9524 00601025 */   or        $v0, $v1, $zero

glabel func_800C9528
/* CA128 800C9528 24A3FFFE */  addiu      $v1, $a1, -2
/* CA12C 800C952C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CA130 800C9530 306E0007 */  andi       $t6, $v1, 7
/* CA134 800C9534 AFBF0014 */  sw         $ra, 0x14($sp)
/* CA138 800C9538 2DC10008 */  sltiu      $at, $t6, 8
/* CA13C 800C953C 00803825 */  or         $a3, $a0, $zero
/* CA140 800C9540 1020008B */  beqz       $at, .L800C9770
/* CA144 800C9544 8CC80000 */   lw        $t0, ($a2)
/* CA148 800C9548 000E7080 */  sll        $t6, $t6, 2
/* CA14C 800C954C 3C01800E */  lui        $at, %hi(D_800DFC40)
/* CA150 800C9550 002E0821 */  addu       $at, $at, $t6
/* CA154 800C9554 8C2EFC40 */  lw         $t6, %lo(D_800DFC40)($at)
/* CA158 800C9558 01C00008 */  jr         $t6
/* CA15C 800C955C 00000000 */   nop
/* CA160 800C9560 2401FFF8 */  addiu      $at, $zero, -8
/* CA164 800C9564 01017824 */  and        $t7, $t0, $at
/* CA168 800C9568 8CF80020 */  lw         $t8, 0x20($a3)
/* CA16C 800C956C 04610003 */  bgez       $v1, .L800C957C
/* CA170 800C9570 0003C8C3 */   sra       $t9, $v1, 3
/* CA174 800C9574 24610007 */  addiu      $at, $v1, 7
/* CA178 800C9578 0001C8C3 */  sra        $t9, $at, 3
.L800C957C:
/* CA17C 800C957C 00194880 */  sll        $t1, $t9, 2
/* CA180 800C9580 01394821 */  addu       $t1, $t1, $t9
/* CA184 800C9584 000948C0 */  sll        $t1, $t1, 3
/* CA188 800C9588 03095021 */  addu       $t2, $t8, $t1
/* CA18C 800C958C 10000078 */  b          .L800C9770
/* CA190 800C9590 AD4F0000 */   sw        $t7, ($t2)
/* CA194 800C9594 2401FFF8 */  addiu      $at, $zero, -8
/* CA198 800C9598 01015824 */  and        $t3, $t0, $at
/* CA19C 800C959C 8CEC0020 */  lw         $t4, 0x20($a3)
/* CA1A0 800C95A0 04610003 */  bgez       $v1, .L800C95B0
/* CA1A4 800C95A4 000368C3 */   sra       $t5, $v1, 3
/* CA1A8 800C95A8 24610007 */  addiu      $at, $v1, 7
/* CA1AC 800C95AC 000168C3 */  sra        $t5, $at, 3
.L800C95B0:
/* CA1B0 800C95B0 000D7080 */  sll        $t6, $t5, 2
/* CA1B4 800C95B4 01CD7021 */  addu       $t6, $t6, $t5
/* CA1B8 800C95B8 000E70C0 */  sll        $t6, $t6, 3
/* CA1BC 800C95BC 018EC821 */  addu       $t9, $t4, $t6
/* CA1C0 800C95C0 1000006B */  b          .L800C9770
/* CA1C4 800C95C4 AF2B0004 */   sw        $t3, 4($t9)
/* CA1C8 800C95C8 8CF80020 */  lw         $t8, 0x20($a3)
/* CA1CC 800C95CC 04610003 */  bgez       $v1, .L800C95DC
/* CA1D0 800C95D0 000348C3 */   sra       $t1, $v1, 3
/* CA1D4 800C95D4 24610007 */  addiu      $at, $v1, 7
/* CA1D8 800C95D8 000148C3 */  sra        $t1, $at, 3
.L800C95DC:
/* CA1DC 800C95DC 00097880 */  sll        $t7, $t1, 2
/* CA1E0 800C95E0 01E97821 */  addu       $t7, $t7, $t1
/* CA1E4 800C95E4 000F78C0 */  sll        $t7, $t7, 3
/* CA1E8 800C95E8 030F5021 */  addu       $t2, $t8, $t7
/* CA1EC 800C95EC 10000060 */  b          .L800C9770
/* CA1F0 800C95F0 A5480008 */   sh        $t0, 8($t2)
/* CA1F4 800C95F4 8CED0020 */  lw         $t5, 0x20($a3)
/* CA1F8 800C95F8 04610003 */  bgez       $v1, .L800C9608
/* CA1FC 800C95FC 000360C3 */   sra       $t4, $v1, 3
/* CA200 800C9600 24610007 */  addiu      $at, $v1, 7
/* CA204 800C9604 000160C3 */  sra        $t4, $at, 3
.L800C9608:
/* CA208 800C9608 000C7080 */  sll        $t6, $t4, 2
/* CA20C 800C960C 01CC7021 */  addu       $t6, $t6, $t4
/* CA210 800C9610 000E70C0 */  sll        $t6, $t6, 3
/* CA214 800C9614 01AE5821 */  addu       $t3, $t5, $t6
/* CA218 800C9618 10000055 */  b          .L800C9770
/* CA21C 800C961C A568000A */   sh        $t0, 0xa($t3)
/* CA220 800C9620 8CF90020 */  lw         $t9, 0x20($a3)
/* CA224 800C9624 04610003 */  bgez       $v1, .L800C9634
/* CA228 800C9628 000348C3 */   sra       $t1, $v1, 3
/* CA22C 800C962C 24610007 */  addiu      $at, $v1, 7
/* CA230 800C9630 000148C3 */  sra        $t1, $at, 3
.L800C9634:
/* CA234 800C9634 0009C080 */  sll        $t8, $t1, 2
/* CA238 800C9638 0309C021 */  addu       $t8, $t8, $t1
/* CA23C 800C963C 0018C0C0 */  sll        $t8, $t8, 3
/* CA240 800C9640 03387821 */  addu       $t7, $t9, $t8
/* CA244 800C9644 1000004A */  b          .L800C9770
/* CA248 800C9648 A5E8000C */   sh        $t0, 0xc($t7)
/* CA24C 800C964C 44882000 */  mtc1       $t0, $f4
/* CA250 800C9650 3C01447A */  lui        $at, 0x447a
/* CA254 800C9654 44814000 */  mtc1       $at, $f8
/* CA258 800C9658 468021A0 */  cvt.s.w    $f6, $f4
/* CA25C 800C965C 3C0A800E */  lui        $t2, %hi(D_800DA040)
/* CA260 800C9660 8D4AA040 */  lw         $t2, %lo(D_800DA040)($t2)
/* CA264 800C9664 8CED0020 */  lw         $t5, 0x20($a3)
/* CA268 800C9668 8D4C0044 */  lw         $t4, 0x44($t2)
/* CA26C 800C966C 46083283 */  div.s      $f10, $f6, $f8
/* CA270 800C9670 448C9000 */  mtc1       $t4, $f18
/* CA274 800C9674 00000000 */  nop
/* CA278 800C9678 46809121 */  cvt.d.w    $f4, $f18
/* CA27C 800C967C 46005021 */  cvt.d.s    $f0, $f10
/* CA280 800C9680 46200400 */  add.d      $f16, $f0, $f0
/* CA284 800C9684 46248183 */  div.d      $f6, $f16, $f4
/* CA288 800C9688 46203220 */  cvt.s.d    $f8, $f6
/* CA28C 800C968C 04610003 */  bgez       $v1, .L800C969C
/* CA290 800C9690 000370C3 */   sra       $t6, $v1, 3
/* CA294 800C9694 24610007 */  addiu      $at, $v1, 7
/* CA298 800C9698 000170C3 */  sra        $t6, $at, 3
.L800C969C:
/* CA29C 800C969C 000E5880 */  sll        $t3, $t6, 2
/* CA2A0 800C96A0 016E5821 */  addu       $t3, $t3, $t6
/* CA2A4 800C96A4 000B58C0 */  sll        $t3, $t3, 3
/* CA2A8 800C96A8 01AB4821 */  addu       $t1, $t5, $t3
/* CA2AC 800C96AC 10000030 */  b          .L800C9770
/* CA2B0 800C96B0 E5280010 */   swc1      $f8, 0x10($t1)
/* CA2B4 800C96B4 8CF90020 */  lw         $t9, 0x20($a3)
/* CA2B8 800C96B8 04610003 */  bgez       $v1, .L800C96C8
/* CA2BC 800C96BC 0003C0C3 */   sra       $t8, $v1, 3
/* CA2C0 800C96C0 24610007 */  addiu      $at, $v1, 7
/* CA2C4 800C96C4 0001C0C3 */  sra        $t8, $at, 3
.L800C96C8:
/* CA2C8 800C96C8 00187880 */  sll        $t7, $t8, 2
/* CA2CC 800C96CC 01F87821 */  addu       $t7, $t7, $t8
/* CA2D0 800C96D0 000F78C0 */  sll        $t7, $t7, 3
/* CA2D4 800C96D4 032F1021 */  addu       $v0, $t9, $t7
/* CA2D8 800C96D8 8C4A0004 */  lw         $t2, 4($v0)
/* CA2DC 800C96DC 8C4C0000 */  lw         $t4, ($v0)
/* CA2E0 800C96E0 44882000 */  mtc1       $t0, $f4
/* CA2E4 800C96E4 3C0141F0 */  lui        $at, 0x41f0
/* CA2E8 800C96E8 014C7023 */  subu       $t6, $t2, $t4
/* CA2EC 800C96EC 448E5000 */  mtc1       $t6, $f10
/* CA2F0 800C96F0 468021A0 */  cvt.s.w    $f6, $f4
/* CA2F4 800C96F4 05C10005 */  bgez       $t6, .L800C970C
/* CA2F8 800C96F8 468054A1 */   cvt.d.w   $f18, $f10
/* CA2FC 800C96FC 44818800 */  mtc1       $at, $f17
/* CA300 800C9700 44808000 */  mtc1       $zero, $f16
/* CA304 800C9704 00000000 */  nop
/* CA308 800C9708 46309480 */  add.d      $f18, $f18, $f16
.L800C970C:
/* CA30C 800C970C 3C01800E */  lui        $at, %hi(D_800DFC60)
/* CA310 800C9710 D42AFC60 */  ldc1       $f10, %lo(D_800DFC60)($at)
/* CA314 800C9714 46003221 */  cvt.d.s    $f8, $f6
/* CA318 800C9718 462A4403 */  div.d      $f16, $f8, $f10
/* CA31C 800C971C 46309102 */  mul.d      $f4, $f18, $f16
/* CA320 800C9720 462021A0 */  cvt.s.d    $f6, $f4
/* CA324 800C9724 10000012 */  b          .L800C9770
/* CA328 800C9728 E446001C */   swc1      $f6, 0x1c($v0)
/* CA32C 800C972C 04610003 */  bgez       $v1, .L800C973C
/* CA330 800C9730 000310C3 */   sra       $v0, $v1, 3
/* CA334 800C9734 24610007 */  addiu      $at, $v1, 7
/* CA338 800C9738 000110C3 */  sra        $v0, $at, 3
.L800C973C:
/* CA33C 800C973C 8CEB0020 */  lw         $t3, 0x20($a3)
/* CA340 800C9740 00026880 */  sll        $t5, $v0, 2
/* CA344 800C9744 01A26821 */  addu       $t5, $t5, $v0
/* CA348 800C9748 000D68C0 */  sll        $t5, $t5, 3
/* CA34C 800C974C 016D4821 */  addu       $t1, $t3, $t5
/* CA350 800C9750 8D250020 */  lw         $a1, 0x20($t1)
/* CA354 800C9754 50A00007 */  beql       $a1, $zero, .L800C9774
/* CA358 800C9758 8FBF0014 */   lw        $ra, 0x14($sp)
/* CA35C 800C975C A4A80000 */  sh         $t0, ($a1)
/* CA360 800C9760 8CF80020 */  lw         $t8, 0x20($a3)
/* CA364 800C9764 030DC821 */  addu       $t9, $t8, $t5
/* CA368 800C9768 0C032218 */  jal        func_800C8860
/* CA36C 800C976C 8F240020 */   lw        $a0, 0x20($t9)
.L800C9770:
/* CA370 800C9770 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C9774:
/* CA374 800C9774 27BD0018 */  addiu      $sp, $sp, 0x18
/* CA378 800C9778 00001025 */  or         $v0, $zero, $zero
/* CA37C 800C977C 03E00008 */  jr         $ra
/* CA380 800C9780 00000000 */   nop

glabel func_800C9784
/* CA384 800C9784 24010001 */  addiu      $at, $zero, 1
/* CA388 800C9788 14A10002 */  bne        $a1, $at, .L800C9794
/* CA38C 800C978C 00000000 */   nop
/* CA390 800C9790 AC860000 */  sw         $a2, ($a0)
.L800C9794:
/* CA394 800C9794 03E00008 */  jr         $ra
/* CA398 800C9798 00001025 */   or        $v0, $zero, $zero

glabel func_800C979C
/* CA39C 800C979C 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* CA3A0 800C97A0 AFB3002C */  sw         $s3, 0x2c($sp)
/* CA3A4 800C97A4 00809825 */  or         $s3, $a0, $zero
/* CA3A8 800C97A8 AFBF0044 */  sw         $ra, 0x44($sp)
/* CA3AC 800C97AC AFBE0040 */  sw         $fp, 0x40($sp)
/* CA3B0 800C97B0 AFB7003C */  sw         $s7, 0x3c($sp)
/* CA3B4 800C97B4 AFB60038 */  sw         $s6, 0x38($sp)
/* CA3B8 800C97B8 AFB50034 */  sw         $s5, 0x34($sp)
/* CA3BC 800C97BC AFB40030 */  sw         $s4, 0x30($sp)
/* CA3C0 800C97C0 AFB20028 */  sw         $s2, 0x28($sp)
/* CA3C4 800C97C4 AFB10024 */  sw         $s1, 0x24($sp)
/* CA3C8 800C97C8 AFB00020 */  sw         $s0, 0x20($sp)
/* CA3CC 800C97CC 8C840000 */  lw         $a0, ($a0)
/* CA3D0 800C97D0 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* CA3D4 800C97D4 AFA00080 */  sw         $zero, 0x80($sp)
/* CA3D8 800C97D8 00C0B025 */  or         $s6, $a2, $zero
/* CA3DC 800C97DC AFAE0010 */  sw         $t6, 0x10($sp)
/* CA3E0 800C97E0 8C990004 */  lw         $t9, 4($a0)
/* CA3E4 800C97E4 0320F809 */  jalr       $t9
/* CA3E8 800C97E8 00000000 */   nop
/* CA3EC 800C97EC 00168840 */  sll        $s1, $s6, 1
/* CA3F0 800C97F0 3C180C00 */  lui        $t8, 0xc00
/* CA3F4 800C97F4 3C0A06C0 */  lui        $t2, 0x6c0
/* CA3F8 800C97F8 3C0B0C00 */  lui        $t3, 0xc00
/* CA3FC 800C97FC 3C0C0800 */  lui        $t4, 0x800
/* CA400 800C9800 3229FFFF */  andi       $t1, $s1, 0xffff
/* CA404 800C9804 3C0F0800 */  lui        $t7, 0x800
/* CA408 800C9808 354A06C0 */  ori        $t2, $t2, 0x6c0
/* CA40C 800C980C 3718DA83 */  ori        $t8, $t8, 0xda83
/* CA410 800C9810 358C06C0 */  ori        $t4, $t4, 0x6c0
/* CA414 800C9814 356B5A82 */  ori        $t3, $t3, 0x5a82
/* CA418 800C9818 AC4F0000 */  sw         $t7, ($v0)
/* CA41C 800C981C AC490004 */  sw         $t1, 4($v0)
/* CA420 800C9820 AC580008 */  sw         $t8, 8($v0)
/* CA424 800C9824 AC4A000C */  sw         $t2, 0xc($v0)
/* CA428 800C9828 AC4B0010 */  sw         $t3, 0x10($v0)
/* CA42C 800C982C AC4C0014 */  sw         $t4, 0x14($v0)
/* CA430 800C9830 8E650018 */  lw         $a1, 0x18($s3)
/* CA434 800C9834 244D0018 */  addiu      $t5, $v0, 0x18
/* CA438 800C9838 0000A825 */  or         $s5, $zero, $zero
/* CA43C 800C983C 24120140 */  addiu      $s2, $zero, 0x140
/* CA440 800C9840 AFAD0010 */  sw         $t5, 0x10($sp)
/* CA444 800C9844 AFA90048 */  sw         $t1, 0x48($sp)
/* CA448 800C9848 AFB10050 */  sw         $s1, 0x50($sp)
/* CA44C 800C984C 02602025 */  or         $a0, $s3, $zero
/* CA450 800C9850 240606C0 */  addiu      $a2, $zero, 0x6c0
/* CA454 800C9854 0C0323FC */  jal        func_800C8FF0
/* CA458 800C9858 02C03825 */   or        $a3, $s6, $zero
/* CA45C 800C985C 8FA30080 */  lw         $v1, 0x80($sp)
/* CA460 800C9860 3C0E0200 */  lui        $t6, 0x200
/* CA464 800C9864 35CE0800 */  ori        $t6, $t6, 0x800
/* CA468 800C9868 AC4E0000 */  sw         $t6, ($v0)
/* CA46C 800C986C AC510004 */  sw         $s1, 4($v0)
/* CA470 800C9870 92790024 */  lbu        $t9, 0x24($s3)
/* CA474 800C9874 24500008 */  addiu      $s0, $v0, 8
/* CA478 800C9878 0000B825 */  or         $s7, $zero, $zero
/* CA47C 800C987C 5B200077 */  blezl      $t9, .L800C9A5C
/* CA480 800C9880 8E63001C */   lw        $v1, 0x1c($s3)
/* CA484 800C9884 8E620018 */  lw         $v0, 0x18($s3)
.L800C9888:
/* CA488 800C9888 8E6F0020 */  lw         $t7, 0x20($s3)
/* CA48C 800C988C 0017C080 */  sll        $t8, $s7, 2
/* CA490 800C9890 0317C021 */  addu       $t8, $t8, $s7
/* CA494 800C9894 0018C0C0 */  sll        $t8, $t8, 3
/* CA498 800C9898 01F88821 */  addu       $s1, $t7, $t8
/* CA49C 800C989C 8E2A0000 */  lw         $t2, ($s1)
/* CA4A0 800C98A0 8E2D0004 */  lw         $t5, 4($s1)
/* CA4A4 800C98A4 02602025 */  or         $a0, $s3, $zero
/* CA4A8 800C98A8 000A5823 */  negu       $t3, $t2
/* CA4AC 800C98AC 000B6040 */  sll        $t4, $t3, 1
/* CA4B0 800C98B0 000D7023 */  negu       $t6, $t5
/* CA4B4 800C98B4 004CA021 */  addu       $s4, $v0, $t4
/* CA4B8 800C98B8 000EC840 */  sll        $t9, $t6, 1
/* CA4BC 800C98BC 16830009 */  bne        $s4, $v1, .L800C98E4
/* CA4C0 800C98C0 0059F021 */   addu      $fp, $v0, $t9
/* CA4C4 800C98C4 02407825 */  or         $t7, $s2, $zero
/* CA4C8 800C98C8 00159400 */  sll        $s2, $s5, 0x10
/* CA4CC 800C98CC 000FAC00 */  sll        $s5, $t7, 0x10
/* CA4D0 800C98D0 00155403 */  sra        $t2, $s5, 0x10
/* CA4D4 800C98D4 0012C403 */  sra        $t8, $s2, 0x10
/* CA4D8 800C98D8 03009025 */  or         $s2, $t8, $zero
/* CA4DC 800C98DC 10000007 */  b          .L800C98FC
/* CA4E0 800C98E0 0140A825 */   or        $s5, $t2, $zero
.L800C98E4:
/* CA4E4 800C98E4 02802825 */  or         $a1, $s4, $zero
/* CA4E8 800C98E8 02A03025 */  or         $a2, $s5, $zero
/* CA4EC 800C98EC 02C03825 */  or         $a3, $s6, $zero
/* CA4F0 800C98F0 0C03245E */  jal        func_800C9178
/* CA4F4 800C98F4 AFB00010 */   sw        $s0, 0x10($sp)
/* CA4F8 800C98F8 00408025 */  or         $s0, $v0, $zero
.L800C98FC:
/* CA4FC 800C98FC 02602025 */  or         $a0, $s3, $zero
/* CA500 800C9900 02202825 */  or         $a1, $s1, $zero
/* CA504 800C9904 02403025 */  or         $a2, $s2, $zero
/* CA508 800C9908 02C03825 */  or         $a3, $s6, $zero
/* CA50C 800C990C 0C0324C1 */  jal        func_800C9304
/* CA510 800C9910 AFB00010 */   sw        $s0, 0x10($sp)
/* CA514 800C9914 86240008 */  lh         $a0, 8($s1)
/* CA518 800C9918 00408025 */  or         $s0, $v0, $zero
/* CA51C 800C991C 3C010C00 */  lui        $at, 0xc00
/* CA520 800C9920 10800014 */  beqz       $a0, .L800C9974
/* CA524 800C9924 308CFFFF */   andi      $t4, $a0, 0xffff
/* CA528 800C9928 0015CC00 */  sll        $t9, $s5, 0x10
/* CA52C 800C992C 324FFFFF */  andi       $t7, $s2, 0xffff
/* CA530 800C9930 032FC025 */  or         $t8, $t9, $t7
/* CA534 800C9934 01816825 */  or         $t5, $t4, $at
/* CA538 800C9938 AC4D0000 */  sw         $t5, ($v0)
/* CA53C 800C993C AC580004 */  sw         $t8, 4($v0)
/* CA540 800C9940 8E2A0024 */  lw         $t2, 0x24($s1)
/* CA544 800C9944 24500008 */  addiu      $s0, $v0, 8
/* CA548 800C9948 5540000B */  bnezl      $t2, .L800C9978
/* CA54C 800C994C 8623000A */   lh        $v1, 0xa($s1)
/* CA550 800C9950 8E2B0020 */  lw         $t3, 0x20($s1)
/* CA554 800C9954 02602025 */  or         $a0, $s3, $zero
/* CA558 800C9958 03C02825 */  or         $a1, $fp, $zero
/* CA55C 800C995C 15600005 */  bnez       $t3, .L800C9974
/* CA560 800C9960 02403025 */   or        $a2, $s2, $zero
/* CA564 800C9964 02C03825 */  or         $a3, $s6, $zero
/* CA568 800C9968 0C0323FC */  jal        func_800C8FF0
/* CA56C 800C996C AFB00010 */   sw        $s0, 0x10($sp)
/* CA570 800C9970 00408025 */  or         $s0, $v0, $zero
.L800C9974:
/* CA574 800C9974 8623000A */  lh         $v1, 0xa($s1)
.L800C9978:
/* CA578 800C9978 02001025 */  or         $v0, $s0, $zero
/* CA57C 800C997C 3C010C00 */  lui        $at, 0xc00
/* CA580 800C9980 1060000F */  beqz       $v1, .L800C99C0
/* CA584 800C9984 306DFFFF */   andi      $t5, $v1, 0xffff
/* CA588 800C9988 00127C00 */  sll        $t7, $s2, 0x10
/* CA58C 800C998C 32B8FFFF */  andi       $t8, $s5, 0xffff
/* CA590 800C9990 01F85025 */  or         $t2, $t7, $t8
/* CA594 800C9994 01A17025 */  or         $t6, $t5, $at
/* CA598 800C9998 AC4E0000 */  sw         $t6, ($v0)
/* CA59C 800C999C AC4A0004 */  sw         $t2, 4($v0)
/* CA5A0 800C99A0 26100008 */  addiu      $s0, $s0, 8
/* CA5A4 800C99A4 AFB00010 */  sw         $s0, 0x10($sp)
/* CA5A8 800C99A8 02602025 */  or         $a0, $s3, $zero
/* CA5AC 800C99AC 02802825 */  or         $a1, $s4, $zero
/* CA5B0 800C99B0 02A03025 */  or         $a2, $s5, $zero
/* CA5B4 800C99B4 0C0323FC */  jal        func_800C8FF0
/* CA5B8 800C99B8 02C03825 */   or        $a3, $s6, $zero
/* CA5BC 800C99BC 00408025 */  or         $s0, $v0, $zero
.L800C99C0:
/* CA5C0 800C99C0 8E240020 */  lw         $a0, 0x20($s1)
/* CA5C4 800C99C4 02402825 */  or         $a1, $s2, $zero
/* CA5C8 800C99C8 02C03025 */  or         $a2, $s6, $zero
/* CA5CC 800C99CC 50800005 */  beql       $a0, $zero, .L800C99E4
/* CA5D0 800C99D0 8E2B0024 */   lw        $t3, 0x24($s1)
/* CA5D4 800C99D4 0C0323CE */  jal        func_800C8F38
/* CA5D8 800C99D8 02003825 */   or        $a3, $s0, $zero
/* CA5DC 800C99DC 00408025 */  or         $s0, $v0, $zero
/* CA5E0 800C99E0 8E2B0024 */  lw         $t3, 0x24($s1)
.L800C99E4:
/* CA5E4 800C99E4 02602025 */  or         $a0, $s3, $zero
/* CA5E8 800C99E8 03C02825 */  or         $a1, $fp, $zero
/* CA5EC 800C99EC 15600005 */  bnez       $t3, .L800C9A04
/* CA5F0 800C99F0 02403025 */   or        $a2, $s2, $zero
/* CA5F4 800C99F4 02C03825 */  or         $a3, $s6, $zero
/* CA5F8 800C99F8 0C0323FC */  jal        func_800C8FF0
/* CA5FC 800C99FC AFB00010 */   sw        $s0, 0x10($sp)
/* CA600 800C9A00 00408025 */  or         $s0, $v0, $zero
.L800C9A04:
/* CA604 800C9A04 8623000C */  lh         $v1, 0xc($s1)
/* CA608 800C9A08 26F70001 */  addiu      $s7, $s7, 1
/* CA60C 800C9A0C 00176400 */  sll        $t4, $s7, 0x10
/* CA610 800C9A10 1060000A */  beqz       $v1, .L800C9A3C
/* CA614 800C9A14 000CBC03 */   sra       $s7, $t4, 0x10
/* CA618 800C9A18 02001025 */  or         $v0, $s0, $zero
/* CA61C 800C9A1C 306DFFFF */  andi       $t5, $v1, 0xffff
/* CA620 800C9A20 3C010C00 */  lui        $at, 0xc00
/* CA624 800C9A24 00127C00 */  sll        $t7, $s2, 0x10
/* CA628 800C9A28 35F80800 */  ori        $t8, $t7, 0x800
/* CA62C 800C9A2C 01A17025 */  or         $t6, $t5, $at
/* CA630 800C9A30 AC4E0000 */  sw         $t6, ($v0)
/* CA634 800C9A34 AC580004 */  sw         $t8, 4($v0)
/* CA638 800C9A38 26100008 */  addiu      $s0, $s0, 8
.L800C9A3C:
/* CA63C 800C9A3C 926E0024 */  lbu        $t6, 0x24($s3)
/* CA640 800C9A40 8E2A0004 */  lw         $t2, 4($s1)
/* CA644 800C9A44 8E620018 */  lw         $v0, 0x18($s3)
/* CA648 800C9A48 02EE082A */  slt        $at, $s7, $t6
/* CA64C 800C9A4C 000A5840 */  sll        $t3, $t2, 1
/* CA650 800C9A50 1420FF8D */  bnez       $at, .L800C9888
/* CA654 800C9A54 004B1821 */   addu      $v1, $v0, $t3
/* CA658 800C9A58 8E63001C */  lw         $v1, 0x1c($s3)
.L800C9A5C:
/* CA65C 800C9A5C 8E790018 */  lw         $t9, 0x18($s3)
/* CA660 800C9A60 8FAF0050 */  lw         $t7, 0x50($sp)
/* CA664 800C9A64 8E6B0014 */  lw         $t3, 0x14($s3)
/* CA668 800C9A68 00035040 */  sll        $t2, $v1, 1
/* CA66C 800C9A6C 032FC021 */  addu       $t8, $t9, $t7
/* CA670 800C9A70 016A6021 */  addu       $t4, $t3, $t2
/* CA674 800C9A74 0198082B */  sltu       $at, $t4, $t8
/* CA678 800C9A78 10200003 */  beqz       $at, .L800C9A88
/* CA67C 800C9A7C AE780018 */   sw        $t8, 0x18($s3)
/* CA680 800C9A80 030A6823 */  subu       $t5, $t8, $t2
/* CA684 800C9A84 AE6D0018 */  sw         $t5, 0x18($s3)
.L800C9A88:
/* CA688 800C9A88 3C0E0A00 */  lui        $t6, 0xa00
/* CA68C 800C9A8C 35CE0800 */  ori        $t6, $t6, 0x800
/* CA690 800C9A90 02001825 */  or         $v1, $s0, $zero
/* CA694 800C9A94 AC6E0000 */  sw         $t6, ($v1)
/* CA698 800C9A98 8FB90048 */  lw         $t9, 0x48($sp)
/* CA69C 800C9A9C 3C0106C0 */  lui        $at, 0x6c0
/* CA6A0 800C9AA0 26020008 */  addiu      $v0, $s0, 8
/* CA6A4 800C9AA4 03217825 */  or         $t7, $t9, $at
/* CA6A8 800C9AA8 AC6F0004 */  sw         $t7, 4($v1)
/* CA6AC 800C9AAC 8FBF0044 */  lw         $ra, 0x44($sp)
/* CA6B0 800C9AB0 8FBE0040 */  lw         $fp, 0x40($sp)
/* CA6B4 800C9AB4 8FB7003C */  lw         $s7, 0x3c($sp)
/* CA6B8 800C9AB8 8FB60038 */  lw         $s6, 0x38($sp)
/* CA6BC 800C9ABC 8FB50034 */  lw         $s5, 0x34($sp)
/* CA6C0 800C9AC0 8FB40030 */  lw         $s4, 0x30($sp)
/* CA6C4 800C9AC4 8FB3002C */  lw         $s3, 0x2c($sp)
/* CA6C8 800C9AC8 8FB20028 */  lw         $s2, 0x28($sp)
/* CA6CC 800C9ACC 8FB10024 */  lw         $s1, 0x24($sp)
/* CA6D0 800C9AD0 8FB00020 */  lw         $s0, 0x20($sp)
/* CA6D4 800C9AD4 03E00008 */  jr         $ra
/* CA6D8 800C9AD8 27BD00A8 */   addiu     $sp, $sp, 0xa8
/* CA6DC 800C9ADC 00000000 */  nop
