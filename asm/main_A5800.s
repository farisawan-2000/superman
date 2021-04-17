.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A4C00
/* A5800 800A4C00 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A5804 800A4C04 AFBF001C */  sw         $ra, 0x1c($sp)
/* A5808 800A4C08 AFA40040 */  sw         $a0, 0x40($sp)
/* A580C 800A4C0C AFA50044 */  sw         $a1, 0x44($sp)
/* A5810 800A4C10 AFA60048 */  sw         $a2, 0x48($sp)
/* A5814 800A4C14 AFA7004C */  sw         $a3, 0x4c($sp)
/* A5818 800A4C18 F7B40010 */  sdc1       $f20, 0x10($sp)
/* A581C 800A4C1C 0C028116 */  jal        func_800A0458
/* A5820 800A4C20 8FA40040 */   lw        $a0, 0x40($sp)
/* A5824 800A4C24 C7A40054 */  lwc1       $f4, 0x54($sp)
/* A5828 800A4C28 C7A60048 */  lwc1       $f6, 0x48($sp)
/* A582C 800A4C2C 46062201 */  sub.s      $f8, $f4, $f6
/* A5830 800A4C30 E7A80038 */  swc1       $f8, 0x38($sp)
/* A5834 800A4C34 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A5838 800A4C38 C7B0004C */  lwc1       $f16, 0x4c($sp)
/* A583C 800A4C3C 46105481 */  sub.s      $f18, $f10, $f16
/* A5840 800A4C40 E7B20034 */  swc1       $f18, 0x34($sp)
/* A5844 800A4C44 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* A5848 800A4C48 C7A60050 */  lwc1       $f6, 0x50($sp)
/* A584C 800A4C4C 46062201 */  sub.s      $f8, $f4, $f6
/* A5850 800A4C50 E7A80030 */  swc1       $f8, 0x30($sp)
/* A5854 800A4C54 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* A5858 800A4C58 C7B20034 */  lwc1       $f18, 0x34($sp)
/* A585C 800A4C5C C7A80030 */  lwc1       $f8, 0x30($sp)
/* A5860 800A4C60 460A5402 */  mul.s      $f16, $f10, $f10
/* A5864 800A4C64 00000000 */  nop
/* A5868 800A4C68 46129102 */  mul.s      $f4, $f18, $f18
/* A586C 800A4C6C 46048180 */  add.s      $f6, $f16, $f4
/* A5870 800A4C70 46084282 */  mul.s      $f10, $f8, $f8
/* A5874 800A4C74 0C02AD30 */  jal        func_800AB4C0
/* A5878 800A4C78 460A3300 */   add.s     $f12, $f6, $f10
/* A587C 800A4C7C 3C01BFF0 */  lui        $at, 0xbff0
/* A5880 800A4C80 44819800 */  mtc1       $at, $f19
/* A5884 800A4C84 44809000 */  mtc1       $zero, $f18
/* A5888 800A4C88 46000421 */  cvt.d.s    $f16, $f0
/* A588C 800A4C8C 46309103 */  div.d      $f4, $f18, $f16
/* A5890 800A4C90 46202220 */  cvt.s.d    $f8, $f4
/* A5894 800A4C94 E7A8003C */  swc1       $f8, 0x3c($sp)
/* A5898 800A4C98 C7A60038 */  lwc1       $f6, 0x38($sp)
/* A589C 800A4C9C C7AA003C */  lwc1       $f10, 0x3c($sp)
/* A58A0 800A4CA0 460A3482 */  mul.s      $f18, $f6, $f10
/* A58A4 800A4CA4 E7B20038 */  swc1       $f18, 0x38($sp)
/* A58A8 800A4CA8 C7B00034 */  lwc1       $f16, 0x34($sp)
/* A58AC 800A4CAC C7A4003C */  lwc1       $f4, 0x3c($sp)
/* A58B0 800A4CB0 46048202 */  mul.s      $f8, $f16, $f4
/* A58B4 800A4CB4 E7A80034 */  swc1       $f8, 0x34($sp)
/* A58B8 800A4CB8 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A58BC 800A4CBC C7AA003C */  lwc1       $f10, 0x3c($sp)
/* A58C0 800A4CC0 460A3482 */  mul.s      $f18, $f6, $f10
/* A58C4 800A4CC4 E7B20030 */  swc1       $f18, 0x30($sp)
/* A58C8 800A4CC8 C7B00064 */  lwc1       $f16, 0x64($sp)
/* A58CC 800A4CCC C7A40030 */  lwc1       $f4, 0x30($sp)
/* A58D0 800A4CD0 C7A60068 */  lwc1       $f6, 0x68($sp)
/* A58D4 800A4CD4 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* A58D8 800A4CD8 46048202 */  mul.s      $f8, $f16, $f4
/* A58DC 800A4CDC 00000000 */  nop
/* A58E0 800A4CE0 460A3482 */  mul.s      $f18, $f6, $f10
/* A58E4 800A4CE4 46124401 */  sub.s      $f16, $f8, $f18
/* A58E8 800A4CE8 E7B0002C */  swc1       $f16, 0x2c($sp)
/* A58EC 800A4CEC C7A40068 */  lwc1       $f4, 0x68($sp)
/* A58F0 800A4CF0 C7A60038 */  lwc1       $f6, 0x38($sp)
/* A58F4 800A4CF4 C7A80060 */  lwc1       $f8, 0x60($sp)
/* A58F8 800A4CF8 C7B20030 */  lwc1       $f18, 0x30($sp)
/* A58FC 800A4CFC 46062282 */  mul.s      $f10, $f4, $f6
/* A5900 800A4D00 00000000 */  nop
/* A5904 800A4D04 46124402 */  mul.s      $f16, $f8, $f18
/* A5908 800A4D08 46105101 */  sub.s      $f4, $f10, $f16
/* A590C 800A4D0C E7A40028 */  swc1       $f4, 0x28($sp)
/* A5910 800A4D10 C7A60060 */  lwc1       $f6, 0x60($sp)
/* A5914 800A4D14 C7A80034 */  lwc1       $f8, 0x34($sp)
/* A5918 800A4D18 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* A591C 800A4D1C C7B00038 */  lwc1       $f16, 0x38($sp)
/* A5920 800A4D20 46083482 */  mul.s      $f18, $f6, $f8
/* A5924 800A4D24 00000000 */  nop
/* A5928 800A4D28 46105102 */  mul.s      $f4, $f10, $f16
/* A592C 800A4D2C 46049181 */  sub.s      $f6, $f18, $f4
/* A5930 800A4D30 E7A60024 */  swc1       $f6, 0x24($sp)
/* A5934 800A4D34 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A5938 800A4D38 C7B00028 */  lwc1       $f16, 0x28($sp)
/* A593C 800A4D3C C7A60024 */  lwc1       $f6, 0x24($sp)
/* A5940 800A4D40 46084282 */  mul.s      $f10, $f8, $f8
/* A5944 800A4D44 00000000 */  nop
/* A5948 800A4D48 46108482 */  mul.s      $f18, $f16, $f16
/* A594C 800A4D4C 46125100 */  add.s      $f4, $f10, $f18
/* A5950 800A4D50 46063202 */  mul.s      $f8, $f6, $f6
/* A5954 800A4D54 0C02AD30 */  jal        func_800AB4C0
/* A5958 800A4D58 46082300 */   add.s     $f12, $f4, $f8
/* A595C 800A4D5C 3C013FF0 */  lui        $at, 0x3ff0
/* A5960 800A4D60 44818800 */  mtc1       $at, $f17
/* A5964 800A4D64 44808000 */  mtc1       $zero, $f16
/* A5968 800A4D68 460002A1 */  cvt.d.s    $f10, $f0
/* A596C 800A4D6C 462A8483 */  div.d      $f18, $f16, $f10
/* A5970 800A4D70 462091A0 */  cvt.s.d    $f6, $f18
/* A5974 800A4D74 E7A6003C */  swc1       $f6, 0x3c($sp)
/* A5978 800A4D78 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* A597C 800A4D7C C7A8003C */  lwc1       $f8, 0x3c($sp)
/* A5980 800A4D80 46082402 */  mul.s      $f16, $f4, $f8
/* A5984 800A4D84 E7B0002C */  swc1       $f16, 0x2c($sp)
/* A5988 800A4D88 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* A598C 800A4D8C C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A5990 800A4D90 46125182 */  mul.s      $f6, $f10, $f18
/* A5994 800A4D94 E7A60028 */  swc1       $f6, 0x28($sp)
/* A5998 800A4D98 C7A40024 */  lwc1       $f4, 0x24($sp)
/* A599C 800A4D9C C7A8003C */  lwc1       $f8, 0x3c($sp)
/* A59A0 800A4DA0 46082402 */  mul.s      $f16, $f4, $f8
/* A59A4 800A4DA4 E7B00024 */  swc1       $f16, 0x24($sp)
/* A59A8 800A4DA8 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* A59AC 800A4DAC C7B20024 */  lwc1       $f18, 0x24($sp)
/* A59B0 800A4DB0 C7A40030 */  lwc1       $f4, 0x30($sp)
/* A59B4 800A4DB4 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A59B8 800A4DB8 46125182 */  mul.s      $f6, $f10, $f18
/* A59BC 800A4DBC 00000000 */  nop
/* A59C0 800A4DC0 46082402 */  mul.s      $f16, $f4, $f8
/* A59C4 800A4DC4 46103281 */  sub.s      $f10, $f6, $f16
/* A59C8 800A4DC8 E7AA0060 */  swc1       $f10, 0x60($sp)
/* A59CC 800A4DCC C7B20030 */  lwc1       $f18, 0x30($sp)
/* A59D0 800A4DD0 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* A59D4 800A4DD4 C7A60038 */  lwc1       $f6, 0x38($sp)
/* A59D8 800A4DD8 C7B00024 */  lwc1       $f16, 0x24($sp)
/* A59DC 800A4DDC 46049202 */  mul.s      $f8, $f18, $f4
/* A59E0 800A4DE0 00000000 */  nop
/* A59E4 800A4DE4 46103282 */  mul.s      $f10, $f6, $f16
/* A59E8 800A4DE8 460A4481 */  sub.s      $f18, $f8, $f10
/* A59EC 800A4DEC E7B20064 */  swc1       $f18, 0x64($sp)
/* A59F0 800A4DF0 C7A40038 */  lwc1       $f4, 0x38($sp)
/* A59F4 800A4DF4 C7A60028 */  lwc1       $f6, 0x28($sp)
/* A59F8 800A4DF8 C7A80034 */  lwc1       $f8, 0x34($sp)
/* A59FC 800A4DFC C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A5A00 800A4E00 46062402 */  mul.s      $f16, $f4, $f6
/* A5A04 800A4E04 00000000 */  nop
/* A5A08 800A4E08 460A4482 */  mul.s      $f18, $f8, $f10
/* A5A0C 800A4E0C 46128101 */  sub.s      $f4, $f16, $f18
/* A5A10 800A4E10 E7A40068 */  swc1       $f4, 0x68($sp)
/* A5A14 800A4E14 C7A60060 */  lwc1       $f6, 0x60($sp)
/* A5A18 800A4E18 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* A5A1C 800A4E1C C7A40068 */  lwc1       $f4, 0x68($sp)
/* A5A20 800A4E20 46063202 */  mul.s      $f8, $f6, $f6
/* A5A24 800A4E24 00000000 */  nop
/* A5A28 800A4E28 460A5402 */  mul.s      $f16, $f10, $f10
/* A5A2C 800A4E2C 46104480 */  add.s      $f18, $f8, $f16
/* A5A30 800A4E30 46042182 */  mul.s      $f6, $f4, $f4
/* A5A34 800A4E34 0C02AD30 */  jal        func_800AB4C0
/* A5A38 800A4E38 46069300 */   add.s     $f12, $f18, $f6
/* A5A3C 800A4E3C 3C013FF0 */  lui        $at, 0x3ff0
/* A5A40 800A4E40 44815800 */  mtc1       $at, $f11
/* A5A44 800A4E44 44805000 */  mtc1       $zero, $f10
/* A5A48 800A4E48 46000221 */  cvt.d.s    $f8, $f0
/* A5A4C 800A4E4C 46285403 */  div.d      $f16, $f10, $f8
/* A5A50 800A4E50 46208120 */  cvt.s.d    $f4, $f16
/* A5A54 800A4E54 E7A4003C */  swc1       $f4, 0x3c($sp)
/* A5A58 800A4E58 C7B20060 */  lwc1       $f18, 0x60($sp)
/* A5A5C 800A4E5C C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A5A60 800A4E60 46069282 */  mul.s      $f10, $f18, $f6
/* A5A64 800A4E64 E7AA0060 */  swc1       $f10, 0x60($sp)
/* A5A68 800A4E68 C7A80064 */  lwc1       $f8, 0x64($sp)
/* A5A6C 800A4E6C C7B0003C */  lwc1       $f16, 0x3c($sp)
/* A5A70 800A4E70 46104102 */  mul.s      $f4, $f8, $f16
/* A5A74 800A4E74 E7A40064 */  swc1       $f4, 0x64($sp)
/* A5A78 800A4E78 C7B20068 */  lwc1       $f18, 0x68($sp)
/* A5A7C 800A4E7C C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A5A80 800A4E80 46069282 */  mul.s      $f10, $f18, $f6
/* A5A84 800A4E84 E7AA0068 */  swc1       $f10, 0x68($sp)
/* A5A88 800A4E88 3C014300 */  lui        $at, 0x4300
/* A5A8C 800A4E8C 44818000 */  mtc1       $at, $f16
/* A5A90 800A4E90 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A5A94 800A4E94 3C0142FE */  lui        $at, 0x42fe
/* A5A98 800A4E98 44819000 */  mtc1       $at, $f18
/* A5A9C 800A4E9C 46104102 */  mul.s      $f4, $f8, $f16
/* A5AA0 800A4EA0 4612203C */  c.lt.s     $f4, $f18
/* A5AA4 800A4EA4 00000000 */  nop
/* A5AA8 800A4EA8 45000003 */  bc1f       .L800A4EB8
/* A5AAC 800A4EAC 00000000 */   nop
/* A5AB0 800A4EB0 10000004 */  b          .L800A4EC4
/* A5AB4 800A4EB4 46002506 */   mov.s     $f20, $f4
.L800A4EB8:
/* A5AB8 800A4EB8 3C0142FE */  lui        $at, 0x42fe
/* A5ABC 800A4EBC 4481A000 */  mtc1       $at, $f20
/* A5AC0 800A4EC0 00000000 */  nop
.L800A4EC4:
/* A5AC4 800A4EC4 4600A18D */  trunc.w.s  $f6, $f20
/* A5AC8 800A4EC8 8FB90044 */  lw         $t9, 0x44($sp)
/* A5ACC 800A4ECC 440F3000 */  mfc1       $t7, $f6
/* A5AD0 800A4ED0 00000000 */  nop
/* A5AD4 800A4ED4 31F800FF */  andi       $t8, $t7, 0xff
/* A5AD8 800A4ED8 A3380008 */  sb         $t8, 8($t9)
/* A5ADC 800A4EDC 3C014300 */  lui        $at, 0x4300
/* A5AE0 800A4EE0 44814000 */  mtc1       $at, $f8
/* A5AE4 800A4EE4 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* A5AE8 800A4EE8 3C0142FE */  lui        $at, 0x42fe
/* A5AEC 800A4EEC 44819000 */  mtc1       $at, $f18
/* A5AF0 800A4EF0 46085402 */  mul.s      $f16, $f10, $f8
/* A5AF4 800A4EF4 4612803C */  c.lt.s     $f16, $f18
/* A5AF8 800A4EF8 00000000 */  nop
/* A5AFC 800A4EFC 45000003 */  bc1f       .L800A4F0C
/* A5B00 800A4F00 00000000 */   nop
/* A5B04 800A4F04 10000004 */  b          .L800A4F18
/* A5B08 800A4F08 46008506 */   mov.s     $f20, $f16
.L800A4F0C:
/* A5B0C 800A4F0C 3C0142FE */  lui        $at, 0x42fe
/* A5B10 800A4F10 4481A000 */  mtc1       $at, $f20
/* A5B14 800A4F14 00000000 */  nop
.L800A4F18:
/* A5B18 800A4F18 4600A10D */  trunc.w.s  $f4, $f20
/* A5B1C 800A4F1C 8FAB0044 */  lw         $t3, 0x44($sp)
/* A5B20 800A4F20 44092000 */  mfc1       $t1, $f4
/* A5B24 800A4F24 00000000 */  nop
/* A5B28 800A4F28 312A00FF */  andi       $t2, $t1, 0xff
/* A5B2C 800A4F2C A16A0009 */  sb         $t2, 9($t3)
/* A5B30 800A4F30 3C014300 */  lui        $at, 0x4300
/* A5B34 800A4F34 44815000 */  mtc1       $at, $f10
/* A5B38 800A4F38 C7A60024 */  lwc1       $f6, 0x24($sp)
/* A5B3C 800A4F3C 3C0142FE */  lui        $at, 0x42fe
/* A5B40 800A4F40 44819000 */  mtc1       $at, $f18
/* A5B44 800A4F44 460A3202 */  mul.s      $f8, $f6, $f10
/* A5B48 800A4F48 4612403C */  c.lt.s     $f8, $f18
/* A5B4C 800A4F4C 00000000 */  nop
/* A5B50 800A4F50 45000003 */  bc1f       .L800A4F60
/* A5B54 800A4F54 00000000 */   nop
/* A5B58 800A4F58 10000004 */  b          .L800A4F6C
/* A5B5C 800A4F5C 46004506 */   mov.s     $f20, $f8
.L800A4F60:
/* A5B60 800A4F60 3C0142FE */  lui        $at, 0x42fe
/* A5B64 800A4F64 4481A000 */  mtc1       $at, $f20
/* A5B68 800A4F68 00000000 */  nop
.L800A4F6C:
/* A5B6C 800A4F6C 4600A40D */  trunc.w.s  $f16, $f20
/* A5B70 800A4F70 8FAF0044 */  lw         $t7, 0x44($sp)
/* A5B74 800A4F74 440D8000 */  mfc1       $t5, $f16
/* A5B78 800A4F78 00000000 */  nop
/* A5B7C 800A4F7C 31AE00FF */  andi       $t6, $t5, 0xff
/* A5B80 800A4F80 A1EE000A */  sb         $t6, 0xa($t7)
/* A5B84 800A4F84 3C014300 */  lui        $at, 0x4300
/* A5B88 800A4F88 44813000 */  mtc1       $at, $f6
/* A5B8C 800A4F8C C7A40060 */  lwc1       $f4, 0x60($sp)
/* A5B90 800A4F90 3C0142FE */  lui        $at, 0x42fe
/* A5B94 800A4F94 44819000 */  mtc1       $at, $f18
/* A5B98 800A4F98 46062282 */  mul.s      $f10, $f4, $f6
/* A5B9C 800A4F9C 4612503C */  c.lt.s     $f10, $f18
/* A5BA0 800A4FA0 00000000 */  nop
/* A5BA4 800A4FA4 45000003 */  bc1f       .L800A4FB4
/* A5BA8 800A4FA8 00000000 */   nop
/* A5BAC 800A4FAC 10000004 */  b          .L800A4FC0
/* A5BB0 800A4FB0 46005506 */   mov.s     $f20, $f10
.L800A4FB4:
/* A5BB4 800A4FB4 3C0142FE */  lui        $at, 0x42fe
/* A5BB8 800A4FB8 4481A000 */  mtc1       $at, $f20
/* A5BBC 800A4FBC 00000000 */  nop
.L800A4FC0:
/* A5BC0 800A4FC0 4600A20D */  trunc.w.s  $f8, $f20
/* A5BC4 800A4FC4 8FA90044 */  lw         $t1, 0x44($sp)
/* A5BC8 800A4FC8 44194000 */  mfc1       $t9, $f8
/* A5BCC 800A4FCC 00000000 */  nop
/* A5BD0 800A4FD0 332800FF */  andi       $t0, $t9, 0xff
/* A5BD4 800A4FD4 A1280018 */  sb         $t0, 0x18($t1)
/* A5BD8 800A4FD8 3C014300 */  lui        $at, 0x4300
/* A5BDC 800A4FDC 44812000 */  mtc1       $at, $f4
/* A5BE0 800A4FE0 C7B00064 */  lwc1       $f16, 0x64($sp)
/* A5BE4 800A4FE4 3C0142FE */  lui        $at, 0x42fe
/* A5BE8 800A4FE8 44819000 */  mtc1       $at, $f18
/* A5BEC 800A4FEC 46048182 */  mul.s      $f6, $f16, $f4
/* A5BF0 800A4FF0 4612303C */  c.lt.s     $f6, $f18
/* A5BF4 800A4FF4 00000000 */  nop
/* A5BF8 800A4FF8 45000003 */  bc1f       .L800A5008
/* A5BFC 800A4FFC 00000000 */   nop
/* A5C00 800A5000 10000004 */  b          .L800A5014
/* A5C04 800A5004 46003506 */   mov.s     $f20, $f6
.L800A5008:
/* A5C08 800A5008 3C0142FE */  lui        $at, 0x42fe
/* A5C0C 800A500C 4481A000 */  mtc1       $at, $f20
/* A5C10 800A5010 00000000 */  nop
.L800A5014:
/* A5C14 800A5014 4600A28D */  trunc.w.s  $f10, $f20
/* A5C18 800A5018 8FAD0044 */  lw         $t5, 0x44($sp)
/* A5C1C 800A501C 440B5000 */  mfc1       $t3, $f10
/* A5C20 800A5020 00000000 */  nop
/* A5C24 800A5024 316C00FF */  andi       $t4, $t3, 0xff
/* A5C28 800A5028 A1AC0019 */  sb         $t4, 0x19($t5)
/* A5C2C 800A502C 3C014300 */  lui        $at, 0x4300
/* A5C30 800A5030 44818000 */  mtc1       $at, $f16
/* A5C34 800A5034 C7A80068 */  lwc1       $f8, 0x68($sp)
/* A5C38 800A5038 3C0142FE */  lui        $at, 0x42fe
/* A5C3C 800A503C 44819000 */  mtc1       $at, $f18
/* A5C40 800A5040 46104102 */  mul.s      $f4, $f8, $f16
/* A5C44 800A5044 4612203C */  c.lt.s     $f4, $f18
/* A5C48 800A5048 00000000 */  nop
/* A5C4C 800A504C 45000003 */  bc1f       .L800A505C
/* A5C50 800A5050 00000000 */   nop
/* A5C54 800A5054 10000004 */  b          .L800A5068
/* A5C58 800A5058 46002506 */   mov.s     $f20, $f4
.L800A505C:
/* A5C5C 800A505C 3C0142FE */  lui        $at, 0x42fe
/* A5C60 800A5060 4481A000 */  mtc1       $at, $f20
/* A5C64 800A5064 00000000 */  nop
.L800A5068:
/* A5C68 800A5068 4600A18D */  trunc.w.s  $f6, $f20
/* A5C6C 800A506C 8FB90044 */  lw         $t9, 0x44($sp)
/* A5C70 800A5070 440F3000 */  mfc1       $t7, $f6
/* A5C74 800A5074 00000000 */  nop
/* A5C78 800A5078 31F800FF */  andi       $t8, $t7, 0xff
/* A5C7C 800A507C A338001A */  sb         $t8, 0x1a($t9)
/* A5C80 800A5080 8FA80044 */  lw         $t0, 0x44($sp)
/* A5C84 800A5084 A1000000 */  sb         $zero, ($t0)
/* A5C88 800A5088 8FA90044 */  lw         $t1, 0x44($sp)
/* A5C8C 800A508C A1200001 */  sb         $zero, 1($t1)
/* A5C90 800A5090 8FAA0044 */  lw         $t2, 0x44($sp)
/* A5C94 800A5094 A1400002 */  sb         $zero, 2($t2)
/* A5C98 800A5098 8FAB0044 */  lw         $t3, 0x44($sp)
/* A5C9C 800A509C A1600003 */  sb         $zero, 3($t3)
/* A5CA0 800A50A0 8FAC0044 */  lw         $t4, 0x44($sp)
/* A5CA4 800A50A4 A1800004 */  sb         $zero, 4($t4)
/* A5CA8 800A50A8 8FAD0044 */  lw         $t5, 0x44($sp)
/* A5CAC 800A50AC A1A00005 */  sb         $zero, 5($t5)
/* A5CB0 800A50B0 8FAE0044 */  lw         $t6, 0x44($sp)
/* A5CB4 800A50B4 A1C00006 */  sb         $zero, 6($t6)
/* A5CB8 800A50B8 8FAF0044 */  lw         $t7, 0x44($sp)
/* A5CBC 800A50BC A1E00007 */  sb         $zero, 7($t7)
/* A5CC0 800A50C0 8FB80044 */  lw         $t8, 0x44($sp)
/* A5CC4 800A50C4 A3000010 */  sb         $zero, 0x10($t8)
/* A5CC8 800A50C8 8FA80044 */  lw         $t0, 0x44($sp)
/* A5CCC 800A50CC 24190080 */  addiu      $t9, $zero, 0x80
/* A5CD0 800A50D0 A1190011 */  sb         $t9, 0x11($t0)
/* A5CD4 800A50D4 8FA90044 */  lw         $t1, 0x44($sp)
/* A5CD8 800A50D8 A1200012 */  sb         $zero, 0x12($t1)
/* A5CDC 800A50DC 8FAA0044 */  lw         $t2, 0x44($sp)
/* A5CE0 800A50E0 A1400013 */  sb         $zero, 0x13($t2)
/* A5CE4 800A50E4 8FAB0044 */  lw         $t3, 0x44($sp)
/* A5CE8 800A50E8 A1600014 */  sb         $zero, 0x14($t3)
/* A5CEC 800A50EC 8FAD0044 */  lw         $t5, 0x44($sp)
/* A5CF0 800A50F0 240C0080 */  addiu      $t4, $zero, 0x80
/* A5CF4 800A50F4 A1AC0015 */  sb         $t4, 0x15($t5)
/* A5CF8 800A50F8 8FAE0044 */  lw         $t6, 0x44($sp)
/* A5CFC 800A50FC A1C00016 */  sb         $zero, 0x16($t6)
/* A5D00 800A5100 8FAF0044 */  lw         $t7, 0x44($sp)
/* A5D04 800A5104 A1E00017 */  sb         $zero, 0x17($t7)
/* A5D08 800A5108 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A5D0C 800A510C 8FB80040 */  lw         $t8, 0x40($sp)
/* A5D10 800A5110 E70A0000 */  swc1       $f10, ($t8)
/* A5D14 800A5114 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A5D18 800A5118 8FB90040 */  lw         $t9, 0x40($sp)
/* A5D1C 800A511C E7280010 */  swc1       $f8, 0x10($t9)
/* A5D20 800A5120 C7B00024 */  lwc1       $f16, 0x24($sp)
/* A5D24 800A5124 8FA80040 */  lw         $t0, 0x40($sp)
/* A5D28 800A5128 E5100020 */  swc1       $f16, 0x20($t0)
/* A5D2C 800A512C C7B20048 */  lwc1       $f18, 0x48($sp)
/* A5D30 800A5130 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* A5D34 800A5134 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* A5D38 800A5138 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A5D3C 800A513C 46049182 */  mul.s      $f6, $f18, $f4
/* A5D40 800A5140 C7A40050 */  lwc1       $f4, 0x50($sp)
/* A5D44 800A5144 8FA90040 */  lw         $t1, 0x40($sp)
/* A5D48 800A5148 46085402 */  mul.s      $f16, $f10, $f8
/* A5D4C 800A514C C7AA0024 */  lwc1       $f10, 0x24($sp)
/* A5D50 800A5150 460A2202 */  mul.s      $f8, $f4, $f10
/* A5D54 800A5154 46103480 */  add.s      $f18, $f6, $f16
/* A5D58 800A5158 46089180 */  add.s      $f6, $f18, $f8
/* A5D5C 800A515C 46003407 */  neg.s      $f16, $f6
/* A5D60 800A5160 E5300030 */  swc1       $f16, 0x30($t1)
/* A5D64 800A5164 C7A40060 */  lwc1       $f4, 0x60($sp)
/* A5D68 800A5168 8FAA0040 */  lw         $t2, 0x40($sp)
/* A5D6C 800A516C E5440004 */  swc1       $f4, 4($t2)
/* A5D70 800A5170 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* A5D74 800A5174 8FAB0040 */  lw         $t3, 0x40($sp)
/* A5D78 800A5178 E56A0014 */  swc1       $f10, 0x14($t3)
/* A5D7C 800A517C C7B20068 */  lwc1       $f18, 0x68($sp)
/* A5D80 800A5180 8FAC0040 */  lw         $t4, 0x40($sp)
/* A5D84 800A5184 E5920024 */  swc1       $f18, 0x24($t4)
/* A5D88 800A5188 C7A80048 */  lwc1       $f8, 0x48($sp)
/* A5D8C 800A518C C7A60060 */  lwc1       $f6, 0x60($sp)
/* A5D90 800A5190 C7A4004C */  lwc1       $f4, 0x4c($sp)
/* A5D94 800A5194 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* A5D98 800A5198 46064402 */  mul.s      $f16, $f8, $f6
/* A5D9C 800A519C C7A60050 */  lwc1       $f6, 0x50($sp)
/* A5DA0 800A51A0 8FAD0040 */  lw         $t5, 0x40($sp)
/* A5DA4 800A51A4 460A2482 */  mul.s      $f18, $f4, $f10
/* A5DA8 800A51A8 C7A40068 */  lwc1       $f4, 0x68($sp)
/* A5DAC 800A51AC 46043282 */  mul.s      $f10, $f6, $f4
/* A5DB0 800A51B0 46128200 */  add.s      $f8, $f16, $f18
/* A5DB4 800A51B4 460A4400 */  add.s      $f16, $f8, $f10
/* A5DB8 800A51B8 46008487 */  neg.s      $f18, $f16
/* A5DBC 800A51BC E5B20034 */  swc1       $f18, 0x34($t5)
/* A5DC0 800A51C0 C7A60038 */  lwc1       $f6, 0x38($sp)
/* A5DC4 800A51C4 8FAE0040 */  lw         $t6, 0x40($sp)
/* A5DC8 800A51C8 E5C60008 */  swc1       $f6, 8($t6)
/* A5DCC 800A51CC C7A40034 */  lwc1       $f4, 0x34($sp)
/* A5DD0 800A51D0 8FAF0040 */  lw         $t7, 0x40($sp)
/* A5DD4 800A51D4 E5E40018 */  swc1       $f4, 0x18($t7)
/* A5DD8 800A51D8 C7A80030 */  lwc1       $f8, 0x30($sp)
/* A5DDC 800A51DC 8FB80040 */  lw         $t8, 0x40($sp)
/* A5DE0 800A51E0 E7080028 */  swc1       $f8, 0x28($t8)
/* A5DE4 800A51E4 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* A5DE8 800A51E8 C7B00038 */  lwc1       $f16, 0x38($sp)
/* A5DEC 800A51EC C7A6004C */  lwc1       $f6, 0x4c($sp)
/* A5DF0 800A51F0 C7A40034 */  lwc1       $f4, 0x34($sp)
/* A5DF4 800A51F4 46105482 */  mul.s      $f18, $f10, $f16
/* A5DF8 800A51F8 C7B00050 */  lwc1       $f16, 0x50($sp)
/* A5DFC 800A51FC 8FB90040 */  lw         $t9, 0x40($sp)
/* A5E00 800A5200 46043202 */  mul.s      $f8, $f6, $f4
/* A5E04 800A5204 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A5E08 800A5208 46068102 */  mul.s      $f4, $f16, $f6
/* A5E0C 800A520C 46089280 */  add.s      $f10, $f18, $f8
/* A5E10 800A5210 46045480 */  add.s      $f18, $f10, $f4
/* A5E14 800A5214 46009207 */  neg.s      $f8, $f18
/* A5E18 800A5218 E7280038 */  swc1       $f8, 0x38($t9)
/* A5E1C 800A521C 44808000 */  mtc1       $zero, $f16
/* A5E20 800A5220 8FA80040 */  lw         $t0, 0x40($sp)
/* A5E24 800A5224 E510000C */  swc1       $f16, 0xc($t0)
/* A5E28 800A5228 44803000 */  mtc1       $zero, $f6
/* A5E2C 800A522C 8FA90040 */  lw         $t1, 0x40($sp)
/* A5E30 800A5230 E526001C */  swc1       $f6, 0x1c($t1)
/* A5E34 800A5234 44805000 */  mtc1       $zero, $f10
/* A5E38 800A5238 8FAA0040 */  lw         $t2, 0x40($sp)
/* A5E3C 800A523C E54A002C */  swc1       $f10, 0x2c($t2)
/* A5E40 800A5240 3C013F80 */  lui        $at, 0x3f80
/* A5E44 800A5244 44812000 */  mtc1       $at, $f4
/* A5E48 800A5248 8FAB0040 */  lw         $t3, 0x40($sp)
/* A5E4C 800A524C E564003C */  swc1       $f4, 0x3c($t3)
/* A5E50 800A5250 10000001 */  b          .L800A5258
/* A5E54 800A5254 00000000 */   nop
.L800A5258:
/* A5E58 800A5258 8FBF001C */  lw         $ra, 0x1c($sp)
/* A5E5C 800A525C D7B40010 */  ldc1       $f20, 0x10($sp)
/* A5E60 800A5260 27BD0040 */  addiu      $sp, $sp, 0x40
/* A5E64 800A5264 03E00008 */  jr         $ra
/* A5E68 800A5268 00000000 */   nop

glabel func_800A526C
/* A5E6C 800A526C 27BDFF88 */  addiu      $sp, $sp, -0x78
/* A5E70 800A5270 AFBF0034 */  sw         $ra, 0x34($sp)
/* A5E74 800A5274 AFA40078 */  sw         $a0, 0x78($sp)
/* A5E78 800A5278 AFA5007C */  sw         $a1, 0x7c($sp)
/* A5E7C 800A527C AFA60080 */  sw         $a2, 0x80($sp)
/* A5E80 800A5280 AFA70084 */  sw         $a3, 0x84($sp)
/* A5E84 800A5284 C7A40088 */  lwc1       $f4, 0x88($sp)
/* A5E88 800A5288 C7A6008C */  lwc1       $f6, 0x8c($sp)
/* A5E8C 800A528C C7A80090 */  lwc1       $f8, 0x90($sp)
/* A5E90 800A5290 E7A40010 */  swc1       $f4, 0x10($sp)
/* A5E94 800A5294 C7A400A0 */  lwc1       $f4, 0xa0($sp)
/* A5E98 800A5298 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* A5E9C 800A529C C7B00098 */  lwc1       $f16, 0x98($sp)
/* A5EA0 800A52A0 C7B2009C */  lwc1       $f18, 0x9c($sp)
/* A5EA4 800A52A4 27A40038 */  addiu      $a0, $sp, 0x38
/* A5EA8 800A52A8 8FA5007C */  lw         $a1, 0x7c($sp)
/* A5EAC 800A52AC 8FA60080 */  lw         $a2, 0x80($sp)
/* A5EB0 800A52B0 8FA70084 */  lw         $a3, 0x84($sp)
/* A5EB4 800A52B4 E7A60014 */  swc1       $f6, 0x14($sp)
/* A5EB8 800A52B8 E7A80018 */  swc1       $f8, 0x18($sp)
/* A5EBC 800A52BC E7A40028 */  swc1       $f4, 0x28($sp)
/* A5EC0 800A52C0 E7AA001C */  swc1       $f10, 0x1c($sp)
/* A5EC4 800A52C4 E7B00020 */  swc1       $f16, 0x20($sp)
/* A5EC8 800A52C8 0C029300 */  jal        func_800A4C00
/* A5ECC 800A52CC E7B20024 */   swc1      $f18, 0x24($sp)
/* A5ED0 800A52D0 27A40038 */  addiu      $a0, $sp, 0x38
/* A5ED4 800A52D4 0C02807C */  jal        func_800A01F0
/* A5ED8 800A52D8 8FA50078 */   lw        $a1, 0x78($sp)
/* A5EDC 800A52DC 10000001 */  b          .L800A52E4
/* A5EE0 800A52E0 00000000 */   nop
.L800A52E4:
/* A5EE4 800A52E4 8FBF0034 */  lw         $ra, 0x34($sp)
/* A5EE8 800A52E8 27BD0078 */  addiu      $sp, $sp, 0x78
/* A5EEC 800A52EC 03E00008 */  jr         $ra
/* A5EF0 800A52F0 00000000 */   nop
/* A5EF4 800A52F4 00000000 */  nop
/* A5EF8 800A52F8 00000000 */  nop
/* A5EFC 800A52FC 00000000 */  nop
