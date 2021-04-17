.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C7EC0
/* C8AC0 800C7EC0 03E00008 */  jr         $ra
/* C8AC4 800C7EC4 00000000 */   nop

glabel func_800C7EC8
/* C8AC8 800C7EC8 8C8E0044 */  lw         $t6, 0x44($a0)
/* C8ACC 800C7ECC 44852000 */  mtc1       $a1, $f4
/* C8AD0 800C7ED0 3C01800E */  lui        $at, %hi(D_800DFC10)
/* C8AD4 800C7ED4 448E4000 */  mtc1       $t6, $f8
/* C8AD8 800C7ED8 468021A0 */  cvt.s.w    $f6, $f4
/* C8ADC 800C7EDC D424FC10 */  ldc1       $f4, %lo(D_800DFC10)($at)
/* C8AE0 800C7EE0 3C013FE0 */  lui        $at, 0x3fe0
/* C8AE4 800C7EE4 44813800 */  mtc1       $at, $f7
/* C8AE8 800C7EE8 2401FFF0 */  addiu      $at, $zero, -0x10
/* C8AEC 800C7EEC 468042A0 */  cvt.s.w    $f10, $f8
/* C8AF0 800C7EF0 460A3402 */  mul.s      $f16, $f6, $f10
/* C8AF4 800C7EF4 44803000 */  mtc1       $zero, $f6
/* C8AF8 800C7EF8 460084A1 */  cvt.d.s    $f18, $f16
/* C8AFC 800C7EFC 46249203 */  div.d      $f8, $f18, $f4
/* C8B00 800C7F00 46264280 */  add.d      $f10, $f8, $f6
/* C8B04 800C7F04 46205020 */  cvt.s.d    $f0, $f10
/* C8B08 800C7F08 4600040D */  trunc.w.s  $f16, $f0
/* C8B0C 800C7F0C 44028000 */  mfc1       $v0, $f16
/* C8B10 800C7F10 00000000 */  nop
/* C8B14 800C7F14 0041C024 */  and        $t8, $v0, $at
/* C8B18 800C7F18 03E00008 */  jr         $ra
/* C8B1C 800C7F1C 03001025 */   or        $v0, $t8, $zero

glabel func_800C7F20
/* C8B20 800C7F20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8B24 800C7F24 AFBF0014 */  sw         $ra, 0x14($sp)
/* C8B28 800C7F28 AFA40018 */  sw         $a0, 0x18($sp)
/* C8B2C 800C7F2C AFA5001C */  sw         $a1, 0x1c($sp)
/* C8B30 800C7F30 0C02F8AC */  jal        func_800BE2B0
/* C8B34 800C7F34 00A02025 */   or        $a0, $a1, $zero
/* C8B38 800C7F38 8FA50018 */  lw         $a1, 0x18($sp)
/* C8B3C 800C7F3C 8FA4001C */  lw         $a0, 0x1c($sp)
/* C8B40 800C7F40 0C02F8B8 */  jal        func_800BE2E0
/* C8B44 800C7F44 24A50014 */   addiu     $a1, $a1, 0x14
/* C8B48 800C7F48 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8B4C 800C7F4C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C8B50 800C7F50 03E00008 */  jr         $ra
/* C8B54 800C7F54 00000000 */   nop

glabel func_800C7F58
/* C8B58 800C7F58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C8B5C 800C7F5C AFBF0024 */  sw         $ra, 0x24($sp)
/* C8B60 800C7F60 AFB20020 */  sw         $s2, 0x20($sp)
/* C8B64 800C7F64 AFB1001C */  sw         $s1, 0x1c($sp)
/* C8B68 800C7F68 AFB00018 */  sw         $s0, 0x18($sp)
/* C8B6C 800C7F6C 8C900014 */  lw         $s0, 0x14($a0)
/* C8B70 800C7F70 00808825 */  or         $s1, $a0, $zero
/* C8B74 800C7F74 24920004 */  addiu      $s2, $a0, 4
/* C8B78 800C7F78 5200000A */  beql       $s0, $zero, .L800C7FA4
/* C8B7C 800C7F7C 8FBF0024 */   lw        $ra, 0x24($sp)
.L800C7F80:
/* C8B80 800C7F80 0C02F8AC */  jal        func_800BE2B0
/* C8B84 800C7F84 02002025 */   or        $a0, $s0, $zero
/* C8B88 800C7F88 02002025 */  or         $a0, $s0, $zero
/* C8B8C 800C7F8C 0C02F8B8 */  jal        func_800BE2E0
/* C8B90 800C7F90 02402825 */   or        $a1, $s2, $zero
/* C8B94 800C7F94 8E300014 */  lw         $s0, 0x14($s1)
/* C8B98 800C7F98 1600FFF9 */  bnez       $s0, .L800C7F80
/* C8B9C 800C7F9C 00000000 */   nop
/* C8BA0 800C7FA0 8FBF0024 */  lw         $ra, 0x24($sp)
.L800C7FA4:
/* C8BA4 800C7FA4 8FB00018 */  lw         $s0, 0x18($sp)
/* C8BA8 800C7FA8 8FB1001C */  lw         $s1, 0x1c($sp)
/* C8BAC 800C7FAC 8FB20020 */  lw         $s2, 0x20($sp)
/* C8BB0 800C7FB0 03E00008 */  jr         $ra
/* C8BB4 800C7FB4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C7FB8
/* C8BB8 800C7FB8 3C02800E */  lui        $v0, %hi(D_800DA040)
/* C8BBC 800C7FBC 8C42A040 */  lw         $v0, %lo(D_800DA040)($v0)
/* C8BC0 800C7FC0 8C4E002C */  lw         $t6, 0x2c($v0)
/* C8BC4 800C7FC4 AC8E0000 */  sw         $t6, ($a0)
/* C8BC8 800C7FC8 03E00008 */  jr         $ra
/* C8BCC 800C7FCC AC44002C */   sw        $a0, 0x2c($v0)

glabel func_800C7FD0
/* C8BD0 800C7FD0 3C02800E */  lui        $v0, %hi(D_800DA040)
/* C8BD4 800C7FD4 8C42A040 */  lw         $v0, %lo(D_800DA040)($v0)
/* C8BD8 800C7FD8 00001825 */  or         $v1, $zero, $zero
/* C8BDC 800C7FDC 8C44002C */  lw         $a0, 0x2c($v0)
/* C8BE0 800C7FE0 10800005 */  beqz       $a0, .L800C7FF8
/* C8BE4 800C7FE4 00000000 */   nop
/* C8BE8 800C7FE8 8C8E0000 */  lw         $t6, ($a0)
/* C8BEC 800C7FEC 00801825 */  or         $v1, $a0, $zero
/* C8BF0 800C7FF0 AC4E002C */  sw         $t6, 0x2c($v0)
/* C8BF4 800C7FF4 AC800000 */  sw         $zero, ($a0)
.L800C7FF8:
/* C8BF8 800C7FF8 03E00008 */  jr         $ra
/* C8BFC 800C7FFC 00601025 */   or        $v0, $v1, $zero

glabel func_800C8000
/* C8C00 800C8000 03E00008 */  jr         $ra
/* C8C04 800C8004 00000000 */   nop

glabel func_800C8008
/* C8C08 800C8008 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* C8C0C 800C800C AFB10030 */  sw         $s1, 0x30($sp)
/* C8C10 800C8010 3C11800E */  lui        $s1, %hi(D_800DA040)
/* C8C14 800C8014 8E31A040 */  lw         $s1, %lo(D_800DA040)($s1)
/* C8C18 800C8018 AFBF004C */  sw         $ra, 0x4c($sp)
/* C8C1C 800C801C AFB70048 */  sw         $s7, 0x48($sp)
/* C8C20 800C8020 AFB60044 */  sw         $s6, 0x44($sp)
/* C8C24 800C8024 AFB50040 */  sw         $s5, 0x40($sp)
/* C8C28 800C8028 AFB4003C */  sw         $s4, 0x3c($sp)
/* C8C2C 800C802C AFB30038 */  sw         $s3, 0x38($sp)
/* C8C30 800C8030 AFB20034 */  sw         $s2, 0x34($sp)
/* C8C34 800C8034 AFB0002C */  sw         $s0, 0x2c($sp)
/* C8C38 800C8038 F7B60020 */  sdc1       $f22, 0x20($sp)
/* C8C3C 800C803C F7B40018 */  sdc1       $f20, 0x18($sp)
/* C8C40 800C8040 AFA400B8 */  sw         $a0, 0xb8($sp)
/* C8C44 800C8044 AFA500BC */  sw         $a1, 0xbc($sp)
/* C8C48 800C8048 A7A000AA */  sh         $zero, 0xaa($sp)
/* C8C4C 800C804C 8E2F0000 */  lw         $t7, ($s1)
/* C8C50 800C8050 00E09825 */  or         $s3, $a3, $zero
/* C8C54 800C8054 0080A025 */  or         $s4, $a0, $zero
/* C8C58 800C8058 15E00004 */  bnez       $t7, .L800C806C
/* C8C5C 800C805C 00C0A825 */   or        $s5, $a2, $zero
/* C8C60 800C8060 ACA00000 */  sw         $zero, ($a1)
/* C8C64 800C8064 10000081 */  b          .L800C826C
/* C8C68 800C8068 00801025 */   or        $v0, $a0, $zero
.L800C806C:
/* C8C6C 800C806C AFA000B4 */  sw         $zero, 0xb4($sp)
/* C8C70 800C8070 8E220000 */  lw         $v0, ($s1)
/* C8C74 800C8074 3C037FFF */  lui        $v1, 0x7fff
/* C8C78 800C8078 3463FFFF */  ori        $v1, $v1, 0xffff
/* C8C7C 800C807C 1040000E */  beqz       $v0, .L800C80B8
/* C8C80 800C8080 2412FFF0 */   addiu     $s2, $zero, -0x10
/* C8C84 800C8084 8E240020 */  lw         $a0, 0x20($s1)
/* C8C88 800C8088 8C590010 */  lw         $t9, 0x10($v0)
.L800C808C:
/* C8C8C 800C808C 03244023 */  subu       $t0, $t9, $a0
/* C8C90 800C8090 0103082A */  slt        $at, $t0, $v1
/* C8C94 800C8094 50200006 */  beql       $at, $zero, .L800C80B0
/* C8C98 800C8098 8C420000 */   lw        $v0, ($v0)
/* C8C9C 800C809C AFA200B4 */  sw         $v0, 0xb4($sp)
/* C8CA0 800C80A0 8C490010 */  lw         $t1, 0x10($v0)
/* C8CA4 800C80A4 8E240020 */  lw         $a0, 0x20($s1)
/* C8CA8 800C80A8 01241823 */  subu       $v1, $t1, $a0
/* C8CAC 800C80AC 8C420000 */  lw         $v0, ($v0)
.L800C80B0:
/* C8CB0 800C80B0 5440FFF6 */  bnezl      $v0, .L800C808C
/* C8CB4 800C80B4 8C590010 */   lw        $t9, 0x10($v0)
.L800C80B8:
/* C8CB8 800C80B8 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* C8CBC 800C80BC 8E240020 */  lw         $a0, 0x20($s1)
/* C8CC0 800C80C0 8D420010 */  lw         $v0, 0x10($t2)
/* C8CC4 800C80C4 00445823 */  subu       $t3, $v0, $a0
/* C8CC8 800C80C8 0173082A */  slt        $at, $t3, $s3
/* C8CCC 800C80CC 10200038 */  beqz       $at, .L800C81B0
/* C8CD0 800C80D0 AE22001C */   sw        $v0, 0x1c($s1)
/* C8CD4 800C80D4 3C013FE0 */  lui        $at, 0x3fe0
/* C8CD8 800C80D8 4481B800 */  mtc1       $at, $f23
/* C8CDC 800C80DC 3C01800E */  lui        $at, %hi(D_800DFC18)
/* C8CE0 800C80E0 4480B000 */  mtc1       $zero, $f22
/* C8CE4 800C80E4 D434FC18 */  ldc1       $f20, %lo(D_800DFC18)($at)
.L800C80E8:
/* C8CE8 800C80E8 8E2C001C */  lw         $t4, 0x1c($s1)
/* C8CEC 800C80EC 3C107FFF */  lui        $s0, 0x7fff
/* C8CF0 800C80F0 3610FFFF */  ori        $s0, $s0, 0xffff
/* C8CF4 800C80F4 01926824 */  and        $t5, $t4, $s2
/* C8CF8 800C80F8 AE2D001C */  sw         $t5, 0x1c($s1)
/* C8CFC 800C80FC 8FA400B4 */  lw         $a0, 0xb4($sp)
/* C8D00 800C8100 8C990008 */  lw         $t9, 8($a0)
/* C8D04 800C8104 0320F809 */  jalr       $t9
/* C8D08 800C8108 00000000 */   nop
/* C8D0C 800C810C 8E380044 */  lw         $t8, 0x44($s1)
/* C8D10 800C8110 44822000 */  mtc1       $v0, $f4
/* C8D14 800C8114 8FA800B4 */  lw         $t0, 0xb4($sp)
/* C8D18 800C8118 44984000 */  mtc1       $t8, $f8
/* C8D1C 800C811C 468021A0 */  cvt.s.w    $f6, $f4
/* C8D20 800C8120 8D090010 */  lw         $t1, 0x10($t0)
/* C8D24 800C8124 468042A0 */  cvt.s.w    $f10, $f8
/* C8D28 800C8128 460A3402 */  mul.s      $f16, $f6, $f10
/* C8D2C 800C812C 460084A1 */  cvt.d.s    $f18, $f16
/* C8D30 800C8130 46349103 */  div.d      $f4, $f18, $f20
/* C8D34 800C8134 46362200 */  add.d      $f8, $f4, $f22
/* C8D38 800C8138 46204020 */  cvt.s.d    $f0, $f8
/* C8D3C 800C813C 4600018D */  trunc.w.s  $f6, $f0
/* C8D40 800C8140 44023000 */  mfc1       $v0, $f6
/* C8D44 800C8144 00000000 */  nop
/* C8D48 800C8148 01225021 */  addu       $t2, $t1, $v0
/* C8D4C 800C814C AD0A0010 */  sw         $t2, 0x10($t0)
/* C8D50 800C8150 AFA000B4 */  sw         $zero, 0xb4($sp)
/* C8D54 800C8154 8E230000 */  lw         $v1, ($s1)
/* C8D58 800C8158 5060000F */  beql       $v1, $zero, .L800C8198
/* C8D5C 800C815C 8FAF00B4 */   lw        $t7, 0xb4($sp)
/* C8D60 800C8160 8E240020 */  lw         $a0, 0x20($s1)
/* C8D64 800C8164 8C6B0010 */  lw         $t3, 0x10($v1)
.L800C8168:
/* C8D68 800C8168 01646023 */  subu       $t4, $t3, $a0
/* C8D6C 800C816C 0190082A */  slt        $at, $t4, $s0
/* C8D70 800C8170 50200006 */  beql       $at, $zero, .L800C818C
/* C8D74 800C8174 8C630000 */   lw        $v1, ($v1)
/* C8D78 800C8178 AFA300B4 */  sw         $v1, 0xb4($sp)
/* C8D7C 800C817C 8C6D0010 */  lw         $t5, 0x10($v1)
/* C8D80 800C8180 8E240020 */  lw         $a0, 0x20($s1)
/* C8D84 800C8184 01A48023 */  subu       $s0, $t5, $a0
/* C8D88 800C8188 8C630000 */  lw         $v1, ($v1)
.L800C818C:
/* C8D8C 800C818C 5460FFF6 */  bnezl      $v1, .L800C8168
/* C8D90 800C8190 8C6B0010 */   lw        $t3, 0x10($v1)
/* C8D94 800C8194 8FAF00B4 */  lw         $t7, 0xb4($sp)
.L800C8198:
/* C8D98 800C8198 8E240020 */  lw         $a0, 0x20($s1)
/* C8D9C 800C819C 8DE20010 */  lw         $v0, 0x10($t7)
/* C8DA0 800C81A0 0044C823 */  subu       $t9, $v0, $a0
/* C8DA4 800C81A4 0333082A */  slt        $at, $t9, $s3
/* C8DA8 800C81A8 1420FFCF */  bnez       $at, .L800C80E8
/* C8DAC 800C81AC AE22001C */   sw        $v0, 0x1c($s1)
.L800C81B0:
/* C8DB0 800C81B0 8E38001C */  lw         $t8, 0x1c($s1)
/* C8DB4 800C81B4 2412FFF0 */  addiu      $s2, $zero, -0x10
/* C8DB8 800C81B8 27B700AA */  addiu      $s7, $sp, 0xaa
/* C8DBC 800C81BC 03127024 */  and        $t6, $t8, $s2
/* C8DC0 800C81C0 1A600022 */  blez       $s3, .L800C824C
/* C8DC4 800C81C4 AE2E001C */   sw        $t6, 0x1c($s1)
/* C8DC8 800C81C8 3C160700 */  lui        $s6, 0x700
.L800C81CC:
/* C8DCC 800C81CC 8E220048 */  lw         $v0, 0x48($s1)
/* C8DD0 800C81D0 02608025 */  or         $s0, $s3, $zero
/* C8DD4 800C81D4 0053082A */  slt        $at, $v0, $s3
/* C8DD8 800C81D8 10200003 */  beqz       $at, .L800C81E8
/* C8DDC 800C81DC 00000000 */   nop
/* C8DE0 800C81E0 10000001 */  b          .L800C81E8
/* C8DE4 800C81E4 00408025 */   or        $s0, $v0, $zero
.L800C81E8:
/* C8DE8 800C81E8 AE960000 */  sw         $s6, ($s4)
/* C8DEC 800C81EC AE800004 */  sw         $zero, 4($s4)
/* C8DF0 800C81F0 8E320038 */  lw         $s2, 0x38($s1)
/* C8DF4 800C81F4 24050006 */  addiu      $a1, $zero, 6
/* C8DF8 800C81F8 02A03025 */  or         $a2, $s5, $zero
/* C8DFC 800C81FC 8E590008 */  lw         $t9, 8($s2)
/* C8E00 800C8200 02402025 */  or         $a0, $s2, $zero
/* C8E04 800C8204 0320F809 */  jalr       $t9
/* C8E08 800C8208 00000000 */   nop
/* C8E0C 800C820C 8E270020 */  lw         $a3, 0x20($s1)
/* C8E10 800C8210 26890008 */  addiu      $t1, $s4, 8
/* C8E14 800C8214 AFA90010 */  sw         $t1, 0x10($sp)
/* C8E18 800C8218 8E590004 */  lw         $t9, 4($s2)
/* C8E1C 800C821C 02402025 */  or         $a0, $s2, $zero
/* C8E20 800C8220 02E02825 */  or         $a1, $s7, $zero
/* C8E24 800C8224 0320F809 */  jalr       $t9
/* C8E28 800C8228 02003025 */   or        $a2, $s0, $zero
/* C8E2C 800C822C 8E2B0020 */  lw         $t3, 0x20($s1)
/* C8E30 800C8230 02709823 */  subu       $s3, $s3, $s0
/* C8E34 800C8234 00104080 */  sll        $t0, $s0, 2
/* C8E38 800C8238 01706021 */  addu       $t4, $t3, $s0
/* C8E3C 800C823C 0040A025 */  or         $s4, $v0, $zero
/* C8E40 800C8240 02A8A821 */  addu       $s5, $s5, $t0
/* C8E44 800C8244 1E60FFE1 */  bgtz       $s3, .L800C81CC
/* C8E48 800C8248 AE2C0020 */   sw        $t4, 0x20($s1)
.L800C824C:
/* C8E4C 800C824C 8FAD00B8 */  lw         $t5, 0xb8($sp)
/* C8E50 800C8250 8FAE00BC */  lw         $t6, 0xbc($sp)
/* C8E54 800C8254 02202025 */  or         $a0, $s1, $zero
/* C8E58 800C8258 028D7823 */  subu       $t7, $s4, $t5
/* C8E5C 800C825C 000FC0C3 */  sra        $t8, $t7, 3
/* C8E60 800C8260 0C031FD6 */  jal        func_800C7F58
/* C8E64 800C8264 ADD80000 */   sw        $t8, ($t6)
/* C8E68 800C8268 02801025 */  or         $v0, $s4, $zero
.L800C826C:
/* C8E6C 800C826C 8FBF004C */  lw         $ra, 0x4c($sp)
/* C8E70 800C8270 D7B40018 */  ldc1       $f20, 0x18($sp)
/* C8E74 800C8274 D7B60020 */  ldc1       $f22, 0x20($sp)
/* C8E78 800C8278 8FB0002C */  lw         $s0, 0x2c($sp)
/* C8E7C 800C827C 8FB10030 */  lw         $s1, 0x30($sp)
/* C8E80 800C8280 8FB20034 */  lw         $s2, 0x34($sp)
/* C8E84 800C8284 8FB30038 */  lw         $s3, 0x38($sp)
/* C8E88 800C8288 8FB4003C */  lw         $s4, 0x3c($sp)
/* C8E8C 800C828C 8FB50040 */  lw         $s5, 0x40($sp)
/* C8E90 800C8290 8FB60044 */  lw         $s6, 0x44($sp)
/* C8E94 800C8294 8FB70048 */  lw         $s7, 0x48($sp)
/* C8E98 800C8298 03E00008 */  jr         $ra
/* C8E9C 800C829C 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_800C82A0
/* C8EA0 800C82A0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* C8EA4 800C82A4 AFBF0044 */  sw         $ra, 0x44($sp)
/* C8EA8 800C82A8 AFBE0040 */  sw         $fp, 0x40($sp)
/* C8EAC 800C82AC AFB7003C */  sw         $s7, 0x3c($sp)
/* C8EB0 800C82B0 AFB60038 */  sw         $s6, 0x38($sp)
/* C8EB4 800C82B4 AFB50034 */  sw         $s5, 0x34($sp)
/* C8EB8 800C82B8 AFB40030 */  sw         $s4, 0x30($sp)
/* C8EBC 800C82BC AFB3002C */  sw         $s3, 0x2c($sp)
/* C8EC0 800C82C0 AFB20028 */  sw         $s2, 0x28($sp)
/* C8EC4 800C82C4 AFB10024 */  sw         $s1, 0x24($sp)
/* C8EC8 800C82C8 AFB00020 */  sw         $s0, 0x20($sp)
/* C8ECC 800C82CC 8CB70014 */  lw         $s7, 0x14($a1)
/* C8ED0 800C82D0 AC800000 */  sw         $zero, ($a0)
/* C8ED4 800C82D4 8CAE0004 */  lw         $t6, 4($a1)
/* C8ED8 800C82D8 AC800020 */  sw         $zero, 0x20($a0)
/* C8EDC 800C82DC AC80001C */  sw         $zero, 0x1c($a0)
/* C8EE0 800C82E0 AC8E003C */  sw         $t6, 0x3c($a0)
/* C8EE4 800C82E4 8CAF0018 */  lw         $t7, 0x18($a1)
/* C8EE8 800C82E8 241800A0 */  addiu      $t8, $zero, 0xa0
/* C8EEC 800C82EC AC980048 */  sw         $t8, 0x48($a0)
/* C8EF0 800C82F0 AC8F0044 */  sw         $t7, 0x44($a0)
/* C8EF4 800C82F4 8CB90010 */  lw         $t9, 0x10($a1)
/* C8EF8 800C82F8 0080B025 */  or         $s6, $a0, $zero
/* C8EFC 800C82FC 00A0F025 */  or         $fp, $a1, $zero
/* C8F00 800C8300 2408001C */  addiu      $t0, $zero, 0x1c
/* C8F04 800C8304 AC990024 */  sw         $t9, 0x24($a0)
/* C8F08 800C8308 AFA80010 */  sw         $t0, 0x10($sp)
/* C8F0C 800C830C 00002025 */  or         $a0, $zero, $zero
/* C8F10 800C8310 00002825 */  or         $a1, $zero, $zero
/* C8F14 800C8314 24070001 */  addiu      $a3, $zero, 1
/* C8F18 800C8318 0C034BF8 */  jal        func_800D2FE0
/* C8F1C 800C831C 02E03025 */   or        $a2, $s7, $zero
/* C8F20 800C8320 AFA2005C */  sw         $v0, 0x5c($sp)
/* C8F24 800C8324 0C032168 */  jal        func_800C85A0
/* C8F28 800C8328 00402025 */   or        $a0, $v0, $zero
/* C8F2C 800C832C 8FA9005C */  lw         $t1, 0x5c($sp)
/* C8F30 800C8330 240A004C */  addiu      $t2, $zero, 0x4c
/* C8F34 800C8334 00002025 */  or         $a0, $zero, $zero
/* C8F38 800C8338 AEC90038 */  sw         $t1, 0x38($s6)
/* C8F3C 800C833C AFAA0010 */  sw         $t2, 0x10($sp)
/* C8F40 800C8340 00002825 */  or         $a1, $zero, $zero
/* C8F44 800C8344 02E03025 */  or         $a2, $s7, $zero
/* C8F48 800C8348 0C034BF8 */  jal        func_800D2FE0
/* C8F4C 800C834C 24070001 */   addiu     $a3, $zero, 1
/* C8F50 800C8350 240B0001 */  addiu      $t3, $zero, 1
/* C8F54 800C8354 AEC20034 */  sw         $v0, 0x34($s6)
/* C8F58 800C8358 AECB0040 */  sw         $t3, 0x40($s6)
/* C8F5C 800C835C 8FC70004 */  lw         $a3, 4($fp)
/* C8F60 800C8360 240C0004 */  addiu      $t4, $zero, 4
/* C8F64 800C8364 AFAC0010 */  sw         $t4, 0x10($sp)
/* C8F68 800C8368 00002025 */  or         $a0, $zero, $zero
/* C8F6C 800C836C 00002825 */  or         $a1, $zero, $zero
/* C8F70 800C8370 0C034BF8 */  jal        func_800D2FE0
/* C8F74 800C8374 02E03025 */   or        $a2, $s7, $zero
/* C8F78 800C8378 8EC40034 */  lw         $a0, 0x34($s6)
/* C8F7C 800C837C 00402825 */  or         $a1, $v0, $zero
/* C8F80 800C8380 0C03218E */  jal        func_800C8638
/* C8F84 800C8384 8FC60004 */   lw        $a2, 4($fp)
/* C8F88 800C8388 240D0020 */  addiu      $t5, $zero, 0x20
/* C8F8C 800C838C AFAD0010 */  sw         $t5, 0x10($sp)
/* C8F90 800C8390 00002025 */  or         $a0, $zero, $zero
/* C8F94 800C8394 00002825 */  or         $a1, $zero, $zero
/* C8F98 800C8398 02E03025 */  or         $a2, $s7, $zero
/* C8F9C 800C839C 0C034BF8 */  jal        func_800D2FE0
/* C8FA0 800C83A0 24070001 */   addiu     $a3, $zero, 1
/* C8FA4 800C83A4 AEC20030 */  sw         $v0, 0x30($s6)
/* C8FA8 800C83A8 8FC70004 */  lw         $a3, 4($fp)
/* C8FAC 800C83AC 240E0004 */  addiu      $t6, $zero, 4
/* C8FB0 800C83B0 AFAE0010 */  sw         $t6, 0x10($sp)
/* C8FB4 800C83B4 00002025 */  or         $a0, $zero, $zero
/* C8FB8 800C83B8 00002825 */  or         $a1, $zero, $zero
/* C8FBC 800C83BC 0C034BF8 */  jal        func_800D2FE0
/* C8FC0 800C83C0 02E03025 */   or        $a2, $s7, $zero
/* C8FC4 800C83C4 8EC40030 */  lw         $a0, 0x30($s6)
/* C8FC8 800C83C8 00402825 */  or         $a1, $v0, $zero
/* C8FCC 800C83CC 0C032179 */  jal        func_800C85E4
/* C8FD0 800C83D0 8FC60004 */   lw        $a2, 4($fp)
/* C8FD4 800C83D4 93CF001C */  lbu        $t7, 0x1c($fp)
/* C8FD8 800C83D8 02C02025 */  or         $a0, $s6, $zero
/* C8FDC 800C83DC 03C03025 */  or         $a2, $fp, $zero
/* C8FE0 800C83E0 11E00006 */  beqz       $t7, .L800C83FC
/* C8FE4 800C83E4 24050002 */   addiu     $a1, $zero, 2
/* C8FE8 800C83E8 00002825 */  or         $a1, $zero, $zero
/* C8FEC 800C83EC 0C034D3C */  jal        func_800D34F0
/* C8FF0 800C83F0 02E03825 */   or        $a3, $s7, $zero
/* C8FF4 800C83F4 10000005 */  b          .L800C840C
/* C8FF8 800C83F8 AEC00004 */   sw        $zero, 4($s6)
.L800C83FC:
/* C8FFC 800C83FC 8EC40030 */  lw         $a0, 0x30($s6)
/* C9000 800C8400 0C032350 */  jal        func_800C8D40
/* C9004 800C8404 8EC60034 */   lw        $a2, 0x34($s6)
/* C9008 800C8408 AEC00004 */  sw         $zero, 4($s6)
.L800C840C:
/* C900C 800C840C AEC00008 */  sw         $zero, 8($s6)
/* C9010 800C8410 AEC00014 */  sw         $zero, 0x14($s6)
/* C9014 800C8414 AEC00018 */  sw         $zero, 0x18($s6)
/* C9018 800C8418 AEC0000C */  sw         $zero, 0xc($s6)
/* C901C 800C841C AEC00010 */  sw         $zero, 0x10($s6)
/* C9020 800C8420 8FC70004 */  lw         $a3, 4($fp)
/* C9024 800C8424 241800DC */  addiu      $t8, $zero, 0xdc
/* C9028 800C8428 AFB80010 */  sw         $t8, 0x10($sp)
/* C902C 800C842C 00002025 */  or         $a0, $zero, $zero
/* C9030 800C8430 00002825 */  or         $a1, $zero, $zero
/* C9034 800C8434 0C034BF8 */  jal        func_800D2FE0
/* C9038 800C8438 02E03025 */   or        $a2, $s7, $zero
/* C903C 800C843C 8FD90004 */  lw         $t9, 4($fp)
/* C9040 800C8440 0000A025 */  or         $s4, $zero, $zero
/* C9044 800C8444 00408025 */  or         $s0, $v0, $zero
/* C9048 800C8448 1B20002F */  blez       $t9, .L800C8508
/* C904C 800C844C 26C50004 */   addiu     $a1, $s6, 4
/* C9050 800C8450 2451008C */  addiu      $s1, $v0, 0x8c
/* C9054 800C8454 24520058 */  addiu      $s2, $v0, 0x58
/* C9058 800C8458 24530010 */  addiu      $s3, $v0, 0x10
/* C905C 800C845C AFA50048 */  sw         $a1, 0x48($sp)
.L800C8460:
/* C9060 800C8460 8FA50048 */  lw         $a1, 0x48($sp)
/* C9064 800C8464 0200A825 */  or         $s5, $s0, $zero
/* C9068 800C8468 0C02F8B8 */  jal        func_800BE2E0
/* C906C 800C846C 02002025 */   or        $a0, $s0, $zero
/* C9070 800C8470 AE000008 */  sw         $zero, 8($s0)
/* C9074 800C8474 8EC50024 */  lw         $a1, 0x24($s6)
/* C9078 800C8478 02602025 */  or         $a0, $s3, $zero
/* C907C 800C847C 0C0321C5 */  jal        func_800C8714
/* C9080 800C8480 02E03025 */   or        $a2, $s7, $zero
/* C9084 800C8484 02602025 */  or         $a0, $s3, $zero
/* C9088 800C8488 24050001 */  addiu      $a1, $zero, 1
/* C908C 800C848C 0C032B44 */  jal        func_800CAD10
/* C9090 800C8490 00003025 */   or        $a2, $zero, $zero
/* C9094 800C8494 02402025 */  or         $a0, $s2, $zero
/* C9098 800C8498 0C0321A3 */  jal        func_800C868C
/* C909C 800C849C 02E02825 */   or        $a1, $s7, $zero
/* C90A0 800C84A0 02402025 */  or         $a0, $s2, $zero
/* C90A4 800C84A4 24050001 */  addiu      $a1, $zero, 1
/* C90A8 800C84A8 0C032A14 */  jal        func_800CA850
/* C90AC 800C84AC 02603025 */   or        $a2, $s3, $zero
/* C90B0 800C84B0 02202025 */  or         $a0, $s1, $zero
/* C90B4 800C84B4 0C0321EF */  jal        func_800C87BC
/* C90B8 800C84B8 02E02825 */   or        $a1, $s7, $zero
/* C90BC 800C84BC 02202025 */  or         $a0, $s1, $zero
/* C90C0 800C84C0 24050001 */  addiu      $a1, $zero, 1
/* C90C4 800C84C4 0C032741 */  jal        func_800C9D04
/* C90C8 800C84C8 02403025 */   or        $a2, $s2, $zero
/* C90CC 800C84CC 8EC40034 */  lw         $a0, 0x34($s6)
/* C90D0 800C84D0 24050002 */  addiu      $a1, $zero, 2
/* C90D4 800C84D4 0C0326B8 */  jal        func_800C9AE0
/* C90D8 800C84D8 02203025 */   or        $a2, $s1, $zero
/* C90DC 800C84DC 26A8008C */  addiu      $t0, $s5, 0x8c
/* C90E0 800C84E0 AEA8000C */  sw         $t0, 0xc($s5)
/* C90E4 800C84E4 8FC90004 */  lw         $t1, 4($fp)
/* C90E8 800C84E8 26940001 */  addiu      $s4, $s4, 1
/* C90EC 800C84EC 261000DC */  addiu      $s0, $s0, 0xdc
/* C90F0 800C84F0 0289082A */  slt        $at, $s4, $t1
/* C90F4 800C84F4 263100DC */  addiu      $s1, $s1, 0xdc
/* C90F8 800C84F8 265200DC */  addiu      $s2, $s2, 0xdc
/* C90FC 800C84FC 1420FFD8 */  bnez       $at, .L800C8460
/* C9100 800C8500 267300DC */   addiu     $s3, $s3, 0xdc
/* C9104 800C8504 0000A025 */  or         $s4, $zero, $zero
.L800C8508:
/* C9108 800C8508 8FA4005C */  lw         $a0, 0x5c($sp)
/* C910C 800C850C 24050001 */  addiu      $a1, $zero, 1
/* C9110 800C8510 0C0335C4 */  jal        func_800CD710
/* C9114 800C8514 8EC60030 */   lw        $a2, 0x30($s6)
/* C9118 800C8518 8FC70008 */  lw         $a3, 8($fp)
/* C911C 800C851C 240A001C */  addiu      $t2, $zero, 0x1c
/* C9120 800C8520 AFAA0010 */  sw         $t2, 0x10($sp)
/* C9124 800C8524 00002025 */  or         $a0, $zero, $zero
/* C9128 800C8528 00002825 */  or         $a1, $zero, $zero
/* C912C 800C852C 0C034BF8 */  jal        func_800D2FE0
/* C9130 800C8530 02E03025 */   or        $a2, $s7, $zero
/* C9134 800C8534 AEC0002C */  sw         $zero, 0x2c($s6)
/* C9138 800C8538 8FCB0008 */  lw         $t3, 8($fp)
/* C913C 800C853C 00401825 */  or         $v1, $v0, $zero
/* C9140 800C8540 5960000B */  blezl      $t3, .L800C8570
/* C9144 800C8544 AED70028 */   sw        $s7, 0x28($s6)
/* C9148 800C8548 8ECC002C */  lw         $t4, 0x2c($s6)
.L800C854C:
/* C914C 800C854C 26940001 */  addiu      $s4, $s4, 1
/* C9150 800C8550 AC6C0000 */  sw         $t4, ($v1)
/* C9154 800C8554 AEC3002C */  sw         $v1, 0x2c($s6)
/* C9158 800C8558 8FCD0008 */  lw         $t5, 8($fp)
/* C915C 800C855C 2463001C */  addiu      $v1, $v1, 0x1c
/* C9160 800C8560 028D082A */  slt        $at, $s4, $t5
/* C9164 800C8564 5420FFF9 */  bnezl      $at, .L800C854C
/* C9168 800C8568 8ECC002C */   lw        $t4, 0x2c($s6)
/* C916C 800C856C AED70028 */  sw         $s7, 0x28($s6)
.L800C8570:
/* C9170 800C8570 8FBF0044 */  lw         $ra, 0x44($sp)
/* C9174 800C8574 8FBE0040 */  lw         $fp, 0x40($sp)
/* C9178 800C8578 8FB7003C */  lw         $s7, 0x3c($sp)
/* C917C 800C857C 8FB60038 */  lw         $s6, 0x38($sp)
/* C9180 800C8580 8FB50034 */  lw         $s5, 0x34($sp)
/* C9184 800C8584 8FB40030 */  lw         $s4, 0x30($sp)
/* C9188 800C8588 8FB3002C */  lw         $s3, 0x2c($sp)
/* C918C 800C858C 8FB20028 */  lw         $s2, 0x28($sp)
/* C9190 800C8590 8FB10024 */  lw         $s1, 0x24($sp)
/* C9194 800C8594 8FB00020 */  lw         $s0, 0x20($sp)
/* C9198 800C8598 03E00008 */  jr         $ra
/* C919C 800C859C 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_800C85A0
/* C91A0 800C85A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C91A4 800C85A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C91A8 800C85A8 3C05800D */  lui        $a1, %hi(D_800CD744)
/* C91AC 800C85AC 3C06800D */  lui        $a2, %hi(func_800CD710)
/* C91B0 800C85B0 24C6D710 */  addiu      $a2, $a2, %lo(func_800CD710)
/* C91B4 800C85B4 24A5D744 */  addiu      $a1, $a1, %lo(D_800CD744)
/* C91B8 800C85B8 AFA40018 */  sw         $a0, 0x18($sp)
/* C91BC 800C85BC 0C03312C */  jal        func_800CC4B0
/* C91C0 800C85C0 24070003 */   addiu     $a3, $zero, 3
/* C91C4 800C85C4 8FA40018 */  lw         $a0, 0x18($sp)
/* C91C8 800C85C8 240E0001 */  addiu      $t6, $zero, 1
/* C91CC 800C85CC AC800014 */  sw         $zero, 0x14($a0)
/* C91D0 800C85D0 AC8E0018 */  sw         $t6, 0x18($a0)
/* C91D4 800C85D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C91D8 800C85D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* C91DC 800C85DC 03E00008 */  jr         $ra
/* C91E0 800C85E0 00000000 */   nop

glabel func_800C85E4
/* C91E4 800C85E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C91E8 800C85E8 AFA5001C */  sw         $a1, 0x1c($sp)
/* C91EC 800C85EC AFA60020 */  sw         $a2, 0x20($sp)
/* C91F0 800C85F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* C91F4 800C85F4 3C06800D */  lui        $a2, %hi(func_800C8D40)
/* C91F8 800C85F8 3C05800D */  lui        $a1, %hi(D_800C8D70)
/* C91FC 800C85FC 24A58D70 */  addiu      $a1, $a1, %lo(D_800C8D70)
/* C9200 800C8600 24C68D40 */  addiu      $a2, $a2, %lo(func_800C8D40)
/* C9204 800C8604 AFA40018 */  sw         $a0, 0x18($sp)
/* C9208 800C8608 0C03312C */  jal        func_800CC4B0
/* C920C 800C860C 24070007 */   addiu     $a3, $zero, 7
/* C9210 800C8610 8FA40018 */  lw         $a0, 0x18($sp)
/* C9214 800C8614 AC800014 */  sw         $zero, 0x14($a0)
/* C9218 800C8618 8FAE0020 */  lw         $t6, 0x20($sp)
/* C921C 800C861C AC8E0018 */  sw         $t6, 0x18($a0)
/* C9220 800C8620 8FAF001C */  lw         $t7, 0x1c($sp)
/* C9224 800C8624 AC8F001C */  sw         $t7, 0x1c($a0)
/* C9228 800C8628 8FBF0014 */  lw         $ra, 0x14($sp)
/* C922C 800C862C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C9230 800C8630 03E00008 */  jr         $ra
/* C9234 800C8634 00000000 */   nop

glabel func_800C8638
/* C9238 800C8638 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C923C 800C863C AFA5001C */  sw         $a1, 0x1c($sp)
/* C9240 800C8640 AFA60020 */  sw         $a2, 0x20($sp)
/* C9244 800C8644 AFBF0014 */  sw         $ra, 0x14($sp)
/* C9248 800C8648 3C06800D */  lui        $a2, %hi(func_800C9AE0)
/* C924C 800C864C 3C05800D */  lui        $a1, %hi(D_800C9B10)
/* C9250 800C8650 24A59B10 */  addiu      $a1, $a1, %lo(D_800C9B10)
/* C9254 800C8654 24C69AE0 */  addiu      $a2, $a2, %lo(func_800C9AE0)
/* C9258 800C8658 AFA40018 */  sw         $a0, 0x18($sp)
/* C925C 800C865C 0C03312C */  jal        func_800CC4B0
/* C9260 800C8660 24070006 */   addiu     $a3, $zero, 6
/* C9264 800C8664 8FA40018 */  lw         $a0, 0x18($sp)
/* C9268 800C8668 AC800014 */  sw         $zero, 0x14($a0)
/* C926C 800C866C 8FAE0020 */  lw         $t6, 0x20($sp)
/* C9270 800C8670 AC8E0018 */  sw         $t6, 0x18($a0)
/* C9274 800C8674 8FAF001C */  lw         $t7, 0x1c($sp)
/* C9278 800C8678 AC8F001C */  sw         $t7, 0x1c($a0)
/* C927C 800C867C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C9280 800C8680 27BD0018 */  addiu      $sp, $sp, 0x18
/* C9284 800C8684 03E00008 */  jr         $ra
/* C9288 800C8688 00000000 */   nop

glabel func_800C868C
/* C928C 800C868C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C9290 800C8690 AFA50024 */  sw         $a1, 0x24($sp)
/* C9294 800C8694 AFBF001C */  sw         $ra, 0x1c($sp)
/* C9298 800C8698 3C05800D */  lui        $a1, %hi(D_800CA93C)
/* C929C 800C869C 3C06800D */  lui        $a2, %hi(func_800CA850)
/* C92A0 800C86A0 24C6A850 */  addiu      $a2, $a2, %lo(func_800CA850)
/* C92A4 800C86A4 24A5A93C */  addiu      $a1, $a1, %lo(D_800CA93C)
/* C92A8 800C86A8 AFA40020 */  sw         $a0, 0x20($sp)
/* C92AC 800C86AC 0C03312C */  jal        func_800CC4B0
/* C92B0 800C86B0 24070001 */   addiu     $a3, $zero, 1
/* C92B4 800C86B4 240E0020 */  addiu      $t6, $zero, 0x20
/* C92B8 800C86B8 AFAE0010 */  sw         $t6, 0x10($sp)
/* C92BC 800C86BC 00002025 */  or         $a0, $zero, $zero
/* C92C0 800C86C0 00002825 */  or         $a1, $zero, $zero
/* C92C4 800C86C4 8FA60024 */  lw         $a2, 0x24($sp)
/* C92C8 800C86C8 0C034BF8 */  jal        func_800D2FE0
/* C92CC 800C86CC 24070001 */   addiu     $a3, $zero, 1
/* C92D0 800C86D0 8FA80020 */  lw         $t0, 0x20($sp)
/* C92D4 800C86D4 3C013F80 */  lui        $at, 0x3f80
/* C92D8 800C86D8 44802000 */  mtc1       $zero, $f4
/* C92DC 800C86DC 44813000 */  mtc1       $at, $f6
/* C92E0 800C86E0 240F0001 */  addiu      $t7, $zero, 1
/* C92E4 800C86E4 AD020014 */  sw         $v0, 0x14($t0)
/* C92E8 800C86E8 AD0F0024 */  sw         $t7, 0x24($t0)
/* C92EC 800C86EC AD000030 */  sw         $zero, 0x30($t0)
/* C92F0 800C86F0 AD00001C */  sw         $zero, 0x1c($t0)
/* C92F4 800C86F4 AD000028 */  sw         $zero, 0x28($t0)
/* C92F8 800C86F8 AD00002C */  sw         $zero, 0x2c($t0)
/* C92FC 800C86FC E5040020 */  swc1       $f4, 0x20($t0)
/* C9300 800C8700 E5060018 */  swc1       $f6, 0x18($t0)
/* C9304 800C8704 8FBF001C */  lw         $ra, 0x1c($sp)
/* C9308 800C8708 27BD0020 */  addiu      $sp, $sp, 0x20
/* C930C 800C870C 03E00008 */  jr         $ra
/* C9310 800C8710 00000000 */   nop

glabel func_800C8714
/* C9314 800C8714 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C9318 800C8718 AFA5002C */  sw         $a1, 0x2c($sp)
/* C931C 800C871C AFA60030 */  sw         $a2, 0x30($sp)
/* C9320 800C8720 AFBF0024 */  sw         $ra, 0x24($sp)
/* C9324 800C8724 AFB00020 */  sw         $s0, 0x20($sp)
/* C9328 800C8728 3C06800D */  lui        $a2, %hi(func_800CAD10)
/* C932C 800C872C 3C05800D */  lui        $a1, %hi(D_800CB3BC)
/* C9330 800C8730 00808025 */  or         $s0, $a0, $zero
/* C9334 800C8734 24A5B3BC */  addiu      $a1, $a1, %lo(D_800CB3BC)
/* C9338 800C8738 24C6AD10 */  addiu      $a2, $a2, %lo(func_800CAD10)
/* C933C 800C873C 0C03312C */  jal        func_800CC4B0
/* C9340 800C8740 00003825 */   or        $a3, $zero, $zero
/* C9344 800C8744 240E0020 */  addiu      $t6, $zero, 0x20
/* C9348 800C8748 AFAE0010 */  sw         $t6, 0x10($sp)
/* C934C 800C874C 00002025 */  or         $a0, $zero, $zero
/* C9350 800C8750 00002825 */  or         $a1, $zero, $zero
/* C9354 800C8754 8FA60030 */  lw         $a2, 0x30($sp)
/* C9358 800C8758 0C034BF8 */  jal        func_800D2FE0
/* C935C 800C875C 24070001 */   addiu     $a3, $zero, 1
/* C9360 800C8760 AE020014 */  sw         $v0, 0x14($s0)
/* C9364 800C8764 240F0020 */  addiu      $t7, $zero, 0x20
/* C9368 800C8768 AFAF0010 */  sw         $t7, 0x10($sp)
/* C936C 800C876C 8FA60030 */  lw         $a2, 0x30($sp)
/* C9370 800C8770 00002025 */  or         $a0, $zero, $zero
/* C9374 800C8774 00002825 */  or         $a1, $zero, $zero
/* C9378 800C8778 0C034BF8 */  jal        func_800D2FE0
/* C937C 800C877C 24070001 */   addiu     $a3, $zero, 1
/* C9380 800C8780 AE020018 */  sw         $v0, 0x18($s0)
/* C9384 800C8784 8FB9002C */  lw         $t9, 0x2c($sp)
/* C9388 800C8788 26040034 */  addiu      $a0, $s0, 0x34
/* C938C 800C878C 0320F809 */  jalr       $t9
/* C9390 800C8790 00000000 */   nop
/* C9394 800C8794 24180001 */  addiu      $t8, $zero, 1
/* C9398 800C8798 AE020030 */  sw         $v0, 0x30($s0)
/* C939C 800C879C AE00003C */  sw         $zero, 0x3c($s0)
/* C93A0 800C87A0 AE180040 */  sw         $t8, 0x40($s0)
/* C93A4 800C87A4 AE000044 */  sw         $zero, 0x44($s0)
/* C93A8 800C87A8 8FBF0024 */  lw         $ra, 0x24($sp)
/* C93AC 800C87AC 8FB00020 */  lw         $s0, 0x20($sp)
/* C93B0 800C87B0 27BD0028 */  addiu      $sp, $sp, 0x28
/* C93B4 800C87B4 03E00008 */  jr         $ra
/* C93B8 800C87B8 00000000 */   nop

glabel func_800C87BC
/* C93BC 800C87BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C93C0 800C87C0 AFA50024 */  sw         $a1, 0x24($sp)
/* C93C4 800C87C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C93C8 800C87C8 3C05800D */  lui        $a1, %hi(D_800CA2FC)
/* C93CC 800C87CC 3C06800D */  lui        $a2, %hi(func_800C9D04)
/* C93D0 800C87D0 24C69D04 */  addiu      $a2, $a2, %lo(func_800C9D04)
/* C93D4 800C87D4 24A5A2FC */  addiu      $a1, $a1, %lo(D_800CA2FC)
/* C93D8 800C87D8 AFA40020 */  sw         $a0, 0x20($sp)
/* C93DC 800C87DC 0C03312C */  jal        func_800CC4B0
/* C93E0 800C87E0 24070004 */   addiu     $a3, $zero, 4
/* C93E4 800C87E4 240E0050 */  addiu      $t6, $zero, 0x50
/* C93E8 800C87E8 AFAE0010 */  sw         $t6, 0x10($sp)
/* C93EC 800C87EC 00002025 */  or         $a0, $zero, $zero
/* C93F0 800C87F0 00002825 */  or         $a1, $zero, $zero
/* C93F4 800C87F4 8FA60024 */  lw         $a2, 0x24($sp)
/* C93F8 800C87F8 0C034BF8 */  jal        func_800D2FE0
/* C93FC 800C87FC 24070001 */   addiu     $a3, $zero, 1
/* C9400 800C8800 8FA80020 */  lw         $t0, 0x20($sp)
/* C9404 800C8804 24030001 */  addiu      $v1, $zero, 1
/* C9408 800C8808 AD020014 */  sw         $v0, 0x14($t0)
/* C940C 800C880C AD030038 */  sw         $v1, 0x38($t0)
/* C9410 800C8810 AD000048 */  sw         $zero, 0x48($t0)
/* C9414 800C8814 A503001A */  sh         $v1, 0x1a($t0)
/* C9418 800C8818 A5030028 */  sh         $v1, 0x28($t0)
/* C941C 800C881C A503002E */  sh         $v1, 0x2e($t0)
/* C9420 800C8820 A503001C */  sh         $v1, 0x1c($t0)
/* C9424 800C8824 A503001E */  sh         $v1, 0x1e($t0)
/* C9428 800C8828 A5000020 */  sh         $zero, 0x20($t0)
/* C942C 800C882C A5000022 */  sh         $zero, 0x22($t0)
/* C9430 800C8830 A5030026 */  sh         $v1, 0x26($t0)
/* C9434 800C8834 A5000024 */  sh         $zero, 0x24($t0)
/* C9438 800C8838 AD000030 */  sw         $zero, 0x30($t0)
/* C943C 800C883C AD000034 */  sw         $zero, 0x34($t0)
/* C9440 800C8840 A5000018 */  sh         $zero, 0x18($t0)
/* C9444 800C8844 AD00003C */  sw         $zero, 0x3c($t0)
/* C9448 800C8848 AD000040 */  sw         $zero, 0x40($t0)
/* C944C 800C884C AD000044 */  sw         $zero, 0x44($t0)
/* C9450 800C8850 8FBF001C */  lw         $ra, 0x1c($sp)
/* C9454 800C8854 27BD0020 */  addiu      $sp, $sp, 0x20
/* C9458 800C8858 03E00008 */  jr         $ra
/* C945C 800C885C 00000000 */   nop

glabel func_800C8860
/* C9460 800C8860 84820000 */  lh         $v0, ($a0)
/* C9464 800C8864 24194000 */  addiu      $t9, $zero, 0x4000
/* C9468 800C8868 24090001 */  addiu      $t1, $zero, 1
/* C946C 800C886C 00027380 */  sll        $t6, $v0, 0xe
/* C9470 800C8870 000E1BC3 */  sra        $v1, $t6, 0xf
/* C9474 800C8874 00037C00 */  sll        $t7, $v1, 0x10
/* C9478 800C8878 000F1C03 */  sra        $v1, $t7, 0x10
/* C947C 800C887C 03234023 */  subu       $t0, $t9, $v1
/* C9480 800C8880 A4880002 */  sh         $t0, 2($a0)
/* C9484 800C8884 AC89002C */  sw         $t1, 0x2c($a0)
/* C9488 800C8888 00002825 */  or         $a1, $zero, $zero
/* C948C 800C888C 00803025 */  or         $a2, $a0, $zero
.L800C8890:
/* C9490 800C8890 24A50001 */  addiu      $a1, $a1, 1
/* C9494 800C8894 28A10008 */  slti       $at, $a1, 8
/* C9498 800C8898 24C60002 */  addiu      $a2, $a2, 2
/* C949C 800C889C 1420FFFC */  bnez       $at, .L800C8890
/* C94A0 800C88A0 A4C00006 */   sh        $zero, 6($a2)
/* C94A4 800C88A4 44832000 */  mtc1       $v1, $f4
/* C94A8 800C88A8 3C0140D0 */  lui        $at, 0x40d0
/* C94AC 800C88AC 44816800 */  mtc1       $at, $f13
/* C94B0 800C88B0 468021A1 */  cvt.d.w    $f6, $f4
/* C94B4 800C88B4 44806000 */  mtc1       $zero, $f12
/* C94B8 800C88B8 24A50001 */  addiu      $a1, $a1, 1
/* C94BC 800C88BC 28A10010 */  slti       $at, $a1, 0x10
/* C94C0 800C88C0 A4C30008 */  sh         $v1, 8($a2)
/* C94C4 800C88C4 462C3083 */  div.d      $f2, $f6, $f12
/* C94C8 800C88C8 24C60002 */  addiu      $a2, $a2, 2
/* C94CC 800C88CC 1020000A */  beqz       $at, .L800C88F8
/* C94D0 800C88D0 46201006 */   mov.d     $f0, $f2
.L800C88D4:
/* C94D4 800C88D4 46220002 */  mul.d      $f0, $f0, $f2
/* C94D8 800C88D8 24A50001 */  addiu      $a1, $a1, 1
/* C94DC 800C88DC 28A10010 */  slti       $at, $a1, 0x10
/* C94E0 800C88E0 24C60002 */  addiu      $a2, $a2, 2
/* C94E4 800C88E4 462C0202 */  mul.d      $f8, $f0, $f12
/* C94E8 800C88E8 4620428D */  trunc.w.d  $f10, $f8
/* C94EC 800C88EC 440B5000 */  mfc1       $t3, $f10
/* C94F0 800C88F0 1420FFF8 */  bnez       $at, .L800C88D4
/* C94F4 800C88F4 A4CB0006 */   sh        $t3, 6($a2)
.L800C88F8:
/* C94F8 800C88F8 03E00008 */  jr         $ra
/* C94FC 800C88FC 00000000 */   nop

glabel func_800C8900
/* C9500 800C8900 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C9504 800C8904 AFB60058 */  sw         $s6, 0x58($sp)
/* C9508 800C8908 00C0B025 */  or         $s6, $a2, $zero
/* C950C 800C890C AFBF0064 */  sw         $ra, 0x64($sp)
/* C9510 800C8910 AFB50054 */  sw         $s5, 0x54($sp)
/* C9514 800C8914 AFA5006C */  sw         $a1, 0x6c($sp)
/* C9518 800C8918 3C06800D */  lui        $a2, 0x800d
/* C951C 800C891C 0080A825 */  or         $s5, $a0, $zero
/* C9520 800C8920 AFBE0060 */  sw         $fp, 0x60($sp)
/* C9524 800C8924 AFB7005C */  sw         $s7, 0x5c($sp)
/* C9528 800C8928 AFB40050 */  sw         $s4, 0x50($sp)
/* C952C 800C892C AFB3004C */  sw         $s3, 0x4c($sp)
/* C9530 800C8930 AFB20048 */  sw         $s2, 0x48($sp)
/* C9534 800C8934 AFB10044 */  sw         $s1, 0x44($sp)
/* C9538 800C8938 AFB00040 */  sw         $s0, 0x40($sp)
/* C953C 800C893C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* C9540 800C8940 F7B80030 */  sdc1       $f24, 0x30($sp)
/* C9544 800C8944 F7B60028 */  sdc1       $f22, 0x28($sp)
/* C9548 800C8948 F7B40020 */  sdc1       $f20, 0x20($sp)
/* C954C 800C894C 24C69784 */  addiu      $a2, $a2, -0x687c
/* C9550 800C8950 00002825 */  or         $a1, $zero, $zero
/* C9554 800C8954 0C03312C */  jal        func_800CC4B0
/* C9558 800C8958 24070005 */   addiu     $a3, $zero, 5
/* C955C 800C895C 8FA2006C */  lw         $v0, 0x6c($sp)
/* C9560 800C8960 3C0E800D */  lui        $t6, %hi(D_800C979C)
/* C9564 800C8964 3C0F800D */  lui        $t7, %hi(D_800C9528)
/* C9568 800C8968 25CE979C */  addiu      $t6, $t6, %lo(D_800C979C)
/* C956C 800C896C 25EF9528 */  addiu      $t7, $t7, %lo(D_800C9528)
/* C9570 800C8970 AEAE0004 */  sw         $t6, 4($s5)
/* C9574 800C8974 AEAF0028 */  sw         $t7, 0x28($s5)
/* C9578 800C8978 9058001C */  lbu        $t8, 0x1c($v0)
/* C957C 800C897C 3C13800E */  lui        $s3, %hi(D_800DAF78)
/* C9580 800C8980 2673AF78 */  addiu      $s3, $s3, %lo(D_800DAF78)
/* C9584 800C8984 2719FFFF */  addiu      $t9, $t8, -1
/* C9588 800C8988 2F210006 */  sltiu      $at, $t9, 6
/* C958C 800C898C 10200017 */  beqz       $at, .L800C89EC
/* C9590 800C8990 0019C880 */   sll       $t9, $t9, 2
/* C9594 800C8994 3C01800E */  lui        $at, %hi(D_800DFC20)
/* C9598 800C8998 00390821 */  addu       $at, $at, $t9
/* C959C 800C899C 8C39FC20 */  lw         $t9, %lo(D_800DFC20)($at)
/* C95A0 800C89A0 03200008 */  jr         $t9
/* C95A4 800C89A4 00000000 */   nop
/* C95A8 800C89A8 3C13800E */  lui        $s3, %hi(D_800DAE10)
/* C95AC 800C89AC 1000000F */  b          .L800C89EC
/* C95B0 800C89B0 2673AE10 */   addiu     $s3, $s3, %lo(D_800DAE10)
/* C95B4 800C89B4 3C13800E */  lui        $s3, %hi(D_800DAE78)
/* C95B8 800C89B8 1000000C */  b          .L800C89EC
/* C95BC 800C89BC 2673AE78 */   addiu     $s3, $s3, %lo(D_800DAE78)
/* C95C0 800C89C0 3C13800E */  lui        $s3, %hi(D_800DAF00)
/* C95C4 800C89C4 10000009 */  b          .L800C89EC
/* C95C8 800C89C8 2673AF00 */   addiu     $s3, $s3, %lo(D_800DAF00)
/* C95CC 800C89CC 3C13800E */  lui        $s3, %hi(D_800DAF28)
/* C95D0 800C89D0 10000006 */  b          .L800C89EC
/* C95D4 800C89D4 2673AF28 */   addiu     $s3, $s3, %lo(D_800DAF28)
/* C95D8 800C89D8 3C13800E */  lui        $s3, %hi(D_800DAF50)
/* C95DC 800C89DC 10000003 */  b          .L800C89EC
/* C95E0 800C89E0 2673AF50 */   addiu     $s3, $s3, %lo(D_800DAF50)
/* C95E4 800C89E4 10000001 */  b          .L800C89EC
/* C95E8 800C89E8 8C530020 */   lw        $s3, 0x20($v0)
.L800C89EC:
/* C95EC 800C89EC 8E680000 */  lw         $t0, ($s3)
/* C95F0 800C89F0 240A0028 */  addiu      $t2, $zero, 0x28
/* C95F4 800C89F4 24110002 */  addiu      $s1, $zero, 2
/* C95F8 800C89F8 A2A80024 */  sb         $t0, 0x24($s5)
/* C95FC 800C89FC 8E690004 */  lw         $t1, 4($s3)
/* C9600 800C8A00 00002025 */  or         $a0, $zero, $zero
/* C9604 800C8A04 00002825 */  or         $a1, $zero, $zero
/* C9608 800C8A08 AEA9001C */  sw         $t1, 0x1c($s5)
/* C960C 800C8A0C AFAA0010 */  sw         $t2, 0x10($sp)
/* C9610 800C8A10 02C03025 */  or         $a2, $s6, $zero
/* C9614 800C8A14 0C034BF8 */  jal        func_800D2FE0
/* C9618 800C8A18 310700FF */   andi      $a3, $t0, 0xff
/* C961C 800C8A1C AEA20020 */  sw         $v0, 0x20($s5)
/* C9620 800C8A20 8EA7001C */  lw         $a3, 0x1c($s5)
/* C9624 800C8A24 240B0002 */  addiu      $t3, $zero, 2
/* C9628 800C8A28 AFAB0010 */  sw         $t3, 0x10($sp)
/* C962C 800C8A2C 00002025 */  or         $a0, $zero, $zero
/* C9630 800C8A30 00002825 */  or         $a1, $zero, $zero
/* C9634 800C8A34 0C034BF8 */  jal        func_800D2FE0
/* C9638 800C8A38 02C03025 */   or        $a2, $s6, $zero
/* C963C 800C8A3C 8EAC001C */  lw         $t4, 0x1c($s5)
/* C9640 800C8A40 AEA20014 */  sw         $v0, 0x14($s5)
/* C9644 800C8A44 AEA20018 */  sw         $v0, 0x18($s5)
/* C9648 800C8A48 1180000C */  beqz       $t4, .L800C8A7C
/* C964C 800C8A4C 00001825 */   or        $v1, $zero, $zero
/* C9650 800C8A50 8EAD0014 */  lw         $t5, 0x14($s5)
.L800C8A54:
/* C9654 800C8A54 00037040 */  sll        $t6, $v1, 1
/* C9658 800C8A58 24630001 */  addiu      $v1, $v1, 1
/* C965C 800C8A5C 01AE7821 */  addu       $t7, $t5, $t6
/* C9660 800C8A60 A5E00000 */  sh         $zero, ($t7)
/* C9664 800C8A64 8EB9001C */  lw         $t9, 0x1c($s5)
/* C9668 800C8A68 3078FFFF */  andi       $t8, $v1, 0xffff
/* C966C 800C8A6C 03001825 */  or         $v1, $t8, $zero
/* C9670 800C8A70 0319082B */  sltu       $at, $t8, $t9
/* C9674 800C8A74 5420FFF7 */  bnezl      $at, .L800C8A54
/* C9678 800C8A78 8EAD0014 */   lw        $t5, 0x14($s5)
.L800C8A7C:
/* C967C 800C8A7C 92A80024 */  lbu        $t0, 0x24($s5)
/* C9680 800C8A80 0000A025 */  or         $s4, $zero, $zero
/* C9684 800C8A84 3C013F80 */  lui        $at, 0x3f80
/* C9688 800C8A88 1900009C */  blez       $t0, .L800C8CFC
/* C968C 800C8A8C 241E0001 */   addiu     $fp, $zero, 1
/* C9690 800C8A90 4481C000 */  mtc1       $at, $f24
/* C9694 800C8A94 3C01447A */  lui        $at, 0x447a
/* C9698 800C8A98 4481B000 */  mtc1       $at, $f22
/* C969C 800C8A9C 3C01800E */  lui        $at, %hi(D_800DFC38)
/* C96A0 800C8AA0 4480D000 */  mtc1       $zero, $f26
/* C96A4 800C8AA4 D434FC38 */  ldc1       $f20, %lo(D_800DFC38)($at)
/* C96A8 800C8AA8 24170028 */  addiu      $s7, $zero, 0x28
.L800C8AAC:
/* C96AC 800C8AAC 02970019 */  multu      $s4, $s7
/* C96B0 800C8AB0 00115880 */  sll        $t3, $s1, 2
/* C96B4 800C8AB4 8EA90020 */  lw         $t1, 0x20($s5)
/* C96B8 800C8AB8 026B6021 */  addu       $t4, $s3, $t3
/* C96BC 800C8ABC 8D8D0000 */  lw         $t5, ($t4)
/* C96C0 800C8AC0 26310001 */  addiu      $s1, $s1, 1
/* C96C4 800C8AC4 322EFFFF */  andi       $t6, $s1, 0xffff
/* C96C8 800C8AC8 000E7880 */  sll        $t7, $t6, 2
/* C96CC 800C8ACC 026FC021 */  addu       $t8, $s3, $t7
/* C96D0 800C8AD0 25D10001 */  addiu      $s1, $t6, 1
/* C96D4 800C8AD4 00005012 */  mflo       $t2
/* C96D8 800C8AD8 012A8021 */  addu       $s0, $t1, $t2
/* C96DC 800C8ADC AE0D0000 */  sw         $t5, ($s0)
/* C96E0 800C8AE0 8F190000 */  lw         $t9, ($t8)
/* C96E4 800C8AE4 3228FFFF */  andi       $t0, $s1, 0xffff
/* C96E8 800C8AE8 00084880 */  sll        $t1, $t0, 2
/* C96EC 800C8AEC 02695021 */  addu       $t2, $s3, $t1
/* C96F0 800C8AF0 AE190004 */  sw         $t9, 4($s0)
/* C96F4 800C8AF4 8D4B0000 */  lw         $t3, ($t2)
/* C96F8 800C8AF8 25110001 */  addiu      $s1, $t0, 1
/* C96FC 800C8AFC 322CFFFF */  andi       $t4, $s1, 0xffff
/* C9700 800C8B00 000C6880 */  sll        $t5, $t4, 2
/* C9704 800C8B04 026D7021 */  addu       $t6, $s3, $t5
/* C9708 800C8B08 A60B000A */  sh         $t3, 0xa($s0)
/* C970C 800C8B0C 8DCF0000 */  lw         $t7, ($t6)
/* C9710 800C8B10 25910001 */  addiu      $s1, $t4, 1
/* C9714 800C8B14 3238FFFF */  andi       $t8, $s1, 0xffff
/* C9718 800C8B18 0018C880 */  sll        $t9, $t8, 2
/* C971C 800C8B1C 02794021 */  addu       $t0, $s3, $t9
/* C9720 800C8B20 A60F0008 */  sh         $t7, 8($s0)
/* C9724 800C8B24 8D090000 */  lw         $t1, ($t0)
/* C9728 800C8B28 27110001 */  addiu      $s1, $t8, 1
/* C972C 800C8B2C 322AFFFF */  andi       $t2, $s1, 0xffff
/* C9730 800C8B30 000A5880 */  sll        $t3, $t2, 2
/* C9734 800C8B34 026B6021 */  addu       $t4, $s3, $t3
/* C9738 800C8B38 A609000C */  sh         $t1, 0xc($s0)
/* C973C 800C8B3C 8D820000 */  lw         $v0, ($t4)
/* C9740 800C8B40 01408825 */  or         $s1, $t2, $zero
/* C9744 800C8B44 02204025 */  or         $t0, $s1, $zero
/* C9748 800C8B48 10400040 */  beqz       $v0, .L800C8C4C
/* C974C 800C8B4C 25110002 */   addiu     $s1, $t0, 2
/* C9750 800C8B50 44822000 */  mtc1       $v0, $f4
/* C9754 800C8B54 8FAD006C */  lw         $t5, 0x6c($sp)
/* C9758 800C8B58 8E180004 */  lw         $t8, 4($s0)
/* C975C 800C8B5C 468021A0 */  cvt.s.w    $f6, $f4
/* C9760 800C8B60 8DAE0018 */  lw         $t6, 0x18($t5)
/* C9764 800C8B64 8E190000 */  lw         $t9, ($s0)
/* C9768 800C8B68 25510001 */  addiu      $s1, $t2, 1
/* C976C 800C8B6C 448E8000 */  mtc1       $t6, $f16
/* C9770 800C8B70 322FFFFF */  andi       $t7, $s1, 0xffff
/* C9774 800C8B74 46163203 */  div.s      $f8, $f6, $f22
/* C9778 800C8B78 03194023 */  subu       $t0, $t8, $t9
/* C977C 800C8B7C 01E08825 */  or         $s1, $t7, $zero
/* C9780 800C8B80 00114880 */  sll        $t1, $s1, 2
/* C9784 800C8B84 468084A1 */  cvt.d.w    $f18, $f16
/* C9788 800C8B88 02695021 */  addu       $t2, $s3, $t1
/* C978C 800C8B8C 3C0141F0 */  lui        $at, 0x41f0
/* C9790 800C8B90 46004021 */  cvt.d.s    $f0, $f8
/* C9794 800C8B94 44884000 */  mtc1       $t0, $f8
/* C9798 800C8B98 46200280 */  add.d      $f10, $f0, $f0
/* C979C 800C8B9C 46804421 */  cvt.d.w    $f16, $f8
/* C97A0 800C8BA0 46325103 */  div.d      $f4, $f10, $f18
/* C97A4 800C8BA4 462021A0 */  cvt.s.d    $f6, $f4
/* C97A8 800C8BA8 05010005 */  bgez       $t0, .L800C8BC0
/* C97AC 800C8BAC E6060010 */   swc1      $f6, 0x10($s0)
/* C97B0 800C8BB0 44815800 */  mtc1       $at, $f11
/* C97B4 800C8BB4 44805000 */  mtc1       $zero, $f10
/* C97B8 800C8BB8 00000000 */  nop
/* C97BC 800C8BBC 462A8400 */  add.d      $f16, $f16, $f10
.L800C8BC0:
/* C97C0 800C8BC0 8D4B0000 */  lw         $t3, ($t2)
/* C97C4 800C8BC4 26310001 */  addiu      $s1, $s1, 1
/* C97C8 800C8BC8 322CFFFF */  andi       $t4, $s1, 0xffff
/* C97CC 800C8BCC 448B9000 */  mtc1       $t3, $f18
/* C97D0 800C8BD0 E6180014 */  swc1       $f24, 0x14($s0)
/* C97D4 800C8BD4 AE000018 */  sw         $zero, 0x18($s0)
/* C97D8 800C8BD8 46809120 */  cvt.s.w    $f4, $f18
/* C97DC 800C8BDC 240D0034 */  addiu      $t5, $zero, 0x34
/* C97E0 800C8BE0 01808825 */  or         $s1, $t4, $zero
/* C97E4 800C8BE4 00002025 */  or         $a0, $zero, $zero
/* C97E8 800C8BE8 00002825 */  or         $a1, $zero, $zero
/* C97EC 800C8BEC 02C03025 */  or         $a2, $s6, $zero
/* C97F0 800C8BF0 460021A1 */  cvt.d.s    $f6, $f4
/* C97F4 800C8BF4 03C03825 */  or         $a3, $fp, $zero
/* C97F8 800C8BF8 46343203 */  div.d      $f8, $f6, $f20
/* C97FC 800C8BFC 46304282 */  mul.d      $f10, $f8, $f16
/* C9800 800C8C00 462054A0 */  cvt.s.d    $f18, $f10
/* C9804 800C8C04 E612001C */  swc1       $f18, 0x1c($s0)
/* C9808 800C8C08 0C034BF8 */  jal        func_800D2FE0
/* C980C 800C8C0C AFAD0010 */   sw        $t5, 0x10($sp)
/* C9810 800C8C10 AE020024 */  sw         $v0, 0x24($s0)
/* C9814 800C8C14 240E0020 */  addiu      $t6, $zero, 0x20
/* C9818 800C8C18 AFAE0010 */  sw         $t6, 0x10($sp)
/* C981C 800C8C1C 00002025 */  or         $a0, $zero, $zero
/* C9820 800C8C20 00002825 */  or         $a1, $zero, $zero
/* C9824 800C8C24 02C03025 */  or         $a2, $s6, $zero
/* C9828 800C8C28 0C034BF8 */  jal        func_800D2FE0
/* C982C 800C8C2C 03C03825 */   or        $a3, $fp, $zero
/* C9830 800C8C30 8E0F0024 */  lw         $t7, 0x24($s0)
/* C9834 800C8C34 ADE20014 */  sw         $v0, 0x14($t7)
/* C9838 800C8C38 8E180024 */  lw         $t8, 0x24($s0)
/* C983C 800C8C3C E71A0020 */  swc1       $f26, 0x20($t8)
/* C9840 800C8C40 8E190024 */  lw         $t9, 0x24($s0)
/* C9844 800C8C44 10000004 */  b          .L800C8C58
/* C9848 800C8C48 AF3E0024 */   sw        $fp, 0x24($t9)
.L800C8C4C:
/* C984C 800C8C4C 3229FFFF */  andi       $t1, $s1, 0xffff
/* C9850 800C8C50 AE000024 */  sw         $zero, 0x24($s0)
/* C9854 800C8C54 01208825 */  or         $s1, $t1, $zero
.L800C8C58:
/* C9858 800C8C58 00115080 */  sll        $t2, $s1, 2
/* C985C 800C8C5C 026A9021 */  addu       $s2, $s3, $t2
/* C9860 800C8C60 8E4B0000 */  lw         $t3, ($s2)
/* C9864 800C8C64 00002025 */  or         $a0, $zero, $zero
/* C9868 800C8C68 00002825 */  or         $a1, $zero, $zero
/* C986C 800C8C6C 11600019 */  beqz       $t3, .L800C8CD4
/* C9870 800C8C70 02C03025 */   or        $a2, $s6, $zero
/* C9874 800C8C74 240C0030 */  addiu      $t4, $zero, 0x30
/* C9878 800C8C78 AFAC0010 */  sw         $t4, 0x10($sp)
/* C987C 800C8C7C 0C034BF8 */  jal        func_800D2FE0
/* C9880 800C8C80 03C03825 */   or        $a3, $fp, $zero
/* C9884 800C8C84 AE020020 */  sw         $v0, 0x20($s0)
/* C9888 800C8C88 240D0008 */  addiu      $t5, $zero, 8
/* C988C 800C8C8C AFAD0010 */  sw         $t5, 0x10($sp)
/* C9890 800C8C90 00002025 */  or         $a0, $zero, $zero
/* C9894 800C8C94 00002825 */  or         $a1, $zero, $zero
/* C9898 800C8C98 02C03025 */  or         $a2, $s6, $zero
/* C989C 800C8C9C 0C034BF8 */  jal        func_800D2FE0
/* C98A0 800C8CA0 03C03825 */   or        $a3, $fp, $zero
/* C98A4 800C8CA4 8E0E0020 */  lw         $t6, 0x20($s0)
/* C98A8 800C8CA8 26310001 */  addiu      $s1, $s1, 1
/* C98AC 800C8CAC 3239FFFF */  andi       $t9, $s1, 0xffff
/* C98B0 800C8CB0 ADC20028 */  sw         $v0, 0x28($t6)
/* C98B4 800C8CB4 8E180020 */  lw         $t8, 0x20($s0)
/* C98B8 800C8CB8 8E4F0000 */  lw         $t7, ($s2)
/* C98BC 800C8CBC 03208825 */  or         $s1, $t9, $zero
/* C98C0 800C8CC0 A70F0000 */  sh         $t7, ($t8)
/* C98C4 800C8CC4 0C032218 */  jal        func_800C8860
/* C98C8 800C8CC8 8E040020 */   lw        $a0, 0x20($s0)
/* C98CC 800C8CCC 10000006 */  b          .L800C8CE8
/* C98D0 800C8CD0 92AA0024 */   lbu       $t2, 0x24($s5)
.L800C8CD4:
/* C98D4 800C8CD4 26310001 */  addiu      $s1, $s1, 1
/* C98D8 800C8CD8 3228FFFF */  andi       $t0, $s1, 0xffff
/* C98DC 800C8CDC AE000020 */  sw         $zero, 0x20($s0)
/* C98E0 800C8CE0 01008825 */  or         $s1, $t0, $zero
/* C98E4 800C8CE4 92AA0024 */  lbu        $t2, 0x24($s5)
.L800C8CE8:
/* C98E8 800C8CE8 26940001 */  addiu      $s4, $s4, 1
/* C98EC 800C8CEC 3289FFFF */  andi       $t1, $s4, 0xffff
/* C98F0 800C8CF0 012A082A */  slt        $at, $t1, $t2
/* C98F4 800C8CF4 1420FF6D */  bnez       $at, .L800C8AAC
/* C98F8 800C8CF8 0120A025 */   or        $s4, $t1, $zero
.L800C8CFC:
/* C98FC 800C8CFC 8FBF0064 */  lw         $ra, 0x64($sp)
/* C9900 800C8D00 D7B40020 */  ldc1       $f20, 0x20($sp)
/* C9904 800C8D04 D7B60028 */  ldc1       $f22, 0x28($sp)
/* C9908 800C8D08 D7B80030 */  ldc1       $f24, 0x30($sp)
/* C990C 800C8D0C D7BA0038 */  ldc1       $f26, 0x38($sp)
/* C9910 800C8D10 8FB00040 */  lw         $s0, 0x40($sp)
/* C9914 800C8D14 8FB10044 */  lw         $s1, 0x44($sp)
/* C9918 800C8D18 8FB20048 */  lw         $s2, 0x48($sp)
/* C991C 800C8D1C 8FB3004C */  lw         $s3, 0x4c($sp)
/* C9920 800C8D20 8FB40050 */  lw         $s4, 0x50($sp)
/* C9924 800C8D24 8FB50054 */  lw         $s5, 0x54($sp)
/* C9928 800C8D28 8FB60058 */  lw         $s6, 0x58($sp)
/* C992C 800C8D2C 8FB7005C */  lw         $s7, 0x5c($sp)
/* C9930 800C8D30 8FBE0060 */  lw         $fp, 0x60($sp)
/* C9934 800C8D34 03E00008 */  jr         $ra
/* C9938 800C8D38 27BD0068 */   addiu     $sp, $sp, 0x68
/* C993C 800C8D3C 00000000 */  nop
