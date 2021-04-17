.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C4DB0
/* C59B0 800C4DB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C59B4 800C4DB4 AFBF004C */  sw         $ra, 0x4c($sp)
/* C59B8 800C4DB8 AFB00048 */  sw         $s0, 0x48($sp)
/* C59BC 800C4DBC 00808025 */  or         $s0, $a0, $zero
/* C59C0 800C4DC0 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* C59C4 800C4DC4 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* C59C8 800C4DC8 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* C59CC 800C4DCC F7B80028 */  sdc1       $f24, 0x28($sp)
/* C59D0 800C4DD0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* C59D4 800C4DD4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* C59D8 800C4DD8 AFA50054 */  sw         $a1, 0x54($sp)
/* C59DC 800C4DDC AFA60058 */  sw         $a2, 0x58($sp)
/* C59E0 800C4DE0 0C031110 */  jal        func_800C4440
/* C59E4 800C4DE4 AFA7005C */   sw        $a3, 0x5c($sp)
/* C59E8 800C4DE8 C7A40060 */  lwc1       $f4, 0x60($sp)
/* C59EC 800C4DEC C7A60054 */  lwc1       $f6, 0x54($sp)
/* C59F0 800C4DF0 C7A80064 */  lwc1       $f8, 0x64($sp)
/* C59F4 800C4DF4 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* C59F8 800C4DF8 46062001 */  sub.s      $f0, $f4, $f6
/* C59FC 800C4DFC C7A6005C */  lwc1       $f6, 0x5c($sp)
/* C5A00 800C4E00 C7A40068 */  lwc1       $f4, 0x68($sp)
/* C5A04 800C4E04 460A4581 */  sub.s      $f22, $f8, $f10
/* C5A08 800C4E08 46000202 */  mul.s      $f8, $f0, $f0
/* C5A0C 800C4E0C 46000506 */  mov.s      $f20, $f0
/* C5A10 800C4E10 46062601 */  sub.s      $f24, $f4, $f6
/* C5A14 800C4E14 4616B282 */  mul.s      $f10, $f22, $f22
/* C5A18 800C4E18 460A4100 */  add.s      $f4, $f8, $f10
/* C5A1C 800C4E1C 4618C182 */  mul.s      $f6, $f24, $f24
/* C5A20 800C4E20 0C033068 */  jal        func_800CC1A0
/* C5A24 800C4E24 46062300 */   add.s     $f12, $f4, $f6
/* C5A28 800C4E28 3C01BFF0 */  lui        $at, 0xbff0
/* C5A2C 800C4E2C 44814800 */  mtc1       $at, $f9
/* C5A30 800C4E30 44804000 */  mtc1       $zero, $f8
/* C5A34 800C4E34 460002A1 */  cvt.d.s    $f10, $f0
/* C5A38 800C4E38 C7A60070 */  lwc1       $f6, 0x70($sp)
/* C5A3C 800C4E3C 462A4103 */  div.d      $f4, $f8, $f10
/* C5A40 800C4E40 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* C5A44 800C4E44 462020A0 */  cvt.s.d    $f2, $f4
/* C5A48 800C4E48 4602A502 */  mul.s      $f20, $f20, $f2
/* C5A4C 800C4E4C 00000000 */  nop
/* C5A50 800C4E50 4602B582 */  mul.s      $f22, $f22, $f2
/* C5A54 800C4E54 00000000 */  nop
/* C5A58 800C4E58 4602C602 */  mul.s      $f24, $f24, $f2
/* C5A5C 800C4E5C 00000000 */  nop
/* C5A60 800C4E60 46183202 */  mul.s      $f8, $f6, $f24
/* C5A64 800C4E64 00000000 */  nop
/* C5A68 800C4E68 46165102 */  mul.s      $f4, $f10, $f22
/* C5A6C 800C4E6C 46044681 */  sub.s      $f26, $f8, $f4
/* C5A70 800C4E70 46145202 */  mul.s      $f8, $f10, $f20
/* C5A74 800C4E74 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* C5A78 800C4E78 46182282 */  mul.s      $f10, $f4, $f24
/* C5A7C 800C4E7C 460A4701 */  sub.s      $f28, $f8, $f10
/* C5A80 800C4E80 46162202 */  mul.s      $f8, $f4, $f22
/* C5A84 800C4E84 00000000 */  nop
/* C5A88 800C4E88 46143282 */  mul.s      $f10, $f6, $f20
/* C5A8C 800C4E8C 460A4781 */  sub.s      $f30, $f8, $f10
/* C5A90 800C4E90 461AD102 */  mul.s      $f4, $f26, $f26
/* C5A94 800C4E94 00000000 */  nop
/* C5A98 800C4E98 461CE182 */  mul.s      $f6, $f28, $f28
/* C5A9C 800C4E9C 46062200 */  add.s      $f8, $f4, $f6
/* C5AA0 800C4EA0 461EF282 */  mul.s      $f10, $f30, $f30
/* C5AA4 800C4EA4 0C033068 */  jal        func_800CC1A0
/* C5AA8 800C4EA8 460A4300 */   add.s     $f12, $f8, $f10
/* C5AAC 800C4EAC 3C013FF0 */  lui        $at, 0x3ff0
/* C5AB0 800C4EB0 44812800 */  mtc1       $at, $f5
/* C5AB4 800C4EB4 44802000 */  mtc1       $zero, $f4
/* C5AB8 800C4EB8 460001A1 */  cvt.d.s    $f6, $f0
/* C5ABC 800C4EBC 46262203 */  div.d      $f8, $f4, $f6
/* C5AC0 800C4EC0 462040A0 */  cvt.s.d    $f2, $f8
/* C5AC4 800C4EC4 4602D682 */  mul.s      $f26, $f26, $f2
/* C5AC8 800C4EC8 00000000 */  nop
/* C5ACC 800C4ECC 4602E702 */  mul.s      $f28, $f28, $f2
/* C5AD0 800C4ED0 00000000 */  nop
/* C5AD4 800C4ED4 4602F782 */  mul.s      $f30, $f30, $f2
/* C5AD8 800C4ED8 00000000 */  nop
/* C5ADC 800C4EDC 461EB282 */  mul.s      $f10, $f22, $f30
/* C5AE0 800C4EE0 00000000 */  nop
/* C5AE4 800C4EE4 461CC102 */  mul.s      $f4, $f24, $f28
/* C5AE8 800C4EE8 00000000 */  nop
/* C5AEC 800C4EEC 461AC182 */  mul.s      $f6, $f24, $f26
/* C5AF0 800C4EF0 00000000 */  nop
/* C5AF4 800C4EF4 461EA202 */  mul.s      $f8, $f20, $f30
/* C5AF8 800C4EF8 46045381 */  sub.s      $f14, $f10, $f4
/* C5AFC 800C4EFC 461CA282 */  mul.s      $f10, $f20, $f28
/* C5B00 800C4F00 00000000 */  nop
/* C5B04 800C4F04 461AB102 */  mul.s      $f4, $f22, $f26
/* C5B08 800C4F08 E7AE006C */  swc1       $f14, 0x6c($sp)
/* C5B0C 800C4F0C 46083401 */  sub.s      $f16, $f6, $f8
/* C5B10 800C4F10 460E7182 */  mul.s      $f6, $f14, $f14
/* C5B14 800C4F14 00000000 */  nop
/* C5B18 800C4F18 46108202 */  mul.s      $f8, $f16, $f16
/* C5B1C 800C4F1C E7B00070 */  swc1       $f16, 0x70($sp)
/* C5B20 800C4F20 46045481 */  sub.s      $f18, $f10, $f4
/* C5B24 800C4F24 46129102 */  mul.s      $f4, $f18, $f18
/* C5B28 800C4F28 46083280 */  add.s      $f10, $f6, $f8
/* C5B2C 800C4F2C E7B20074 */  swc1       $f18, 0x74($sp)
/* C5B30 800C4F30 0C033068 */  jal        func_800CC1A0
/* C5B34 800C4F34 46045300 */   add.s     $f12, $f10, $f4
/* C5B38 800C4F38 3C013FF0 */  lui        $at, 0x3ff0
/* C5B3C 800C4F3C 44813800 */  mtc1       $at, $f7
/* C5B40 800C4F40 44803000 */  mtc1       $zero, $f6
/* C5B44 800C4F44 46000221 */  cvt.d.s    $f8, $f0
/* C5B48 800C4F48 C7AE006C */  lwc1       $f14, 0x6c($sp)
/* C5B4C 800C4F4C 46283283 */  div.d      $f10, $f6, $f8
/* C5B50 800C4F50 C7AC0070 */  lwc1       $f12, 0x70($sp)
/* C5B54 800C4F54 C7A40074 */  lwc1       $f4, 0x74($sp)
/* C5B58 800C4F58 3C013F80 */  lui        $at, 0x3f80
/* C5B5C 800C4F5C 462050A0 */  cvt.s.d    $f2, $f10
/* C5B60 800C4F60 46027382 */  mul.s      $f14, $f14, $f2
/* C5B64 800C4F64 00000000 */  nop
/* C5B68 800C4F68 46026302 */  mul.s      $f12, $f12, $f2
/* C5B6C 800C4F6C 00000000 */  nop
/* C5B70 800C4F70 46022182 */  mul.s      $f6, $f4, $f2
/* C5B74 800C4F74 E7A60074 */  swc1       $f6, 0x74($sp)
/* C5B78 800C4F78 E61A0000 */  swc1       $f26, ($s0)
/* C5B7C 800C4F7C E61C0010 */  swc1       $f28, 0x10($s0)
/* C5B80 800C4F80 E61E0020 */  swc1       $f30, 0x20($s0)
/* C5B84 800C4F84 C7A80054 */  lwc1       $f8, 0x54($sp)
/* C5B88 800C4F88 C7A40058 */  lwc1       $f4, 0x58($sp)
/* C5B8C 800C4F8C 461A4282 */  mul.s      $f10, $f8, $f26
/* C5B90 800C4F90 00000000 */  nop
/* C5B94 800C4F94 461C2182 */  mul.s      $f6, $f4, $f28
/* C5B98 800C4F98 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* C5B9C 800C4F9C E60E0004 */  swc1       $f14, 4($s0)
/* C5BA0 800C4FA0 E60C0014 */  swc1       $f12, 0x14($s0)
/* C5BA4 800C4FA4 46065200 */  add.s      $f8, $f10, $f6
/* C5BA8 800C4FA8 461E2282 */  mul.s      $f10, $f4, $f30
/* C5BAC 800C4FAC 460A4180 */  add.s      $f6, $f8, $f10
/* C5BB0 800C4FB0 46003107 */  neg.s      $f4, $f6
/* C5BB4 800C4FB4 E6040030 */  swc1       $f4, 0x30($s0)
/* C5BB8 800C4FB8 C7A00074 */  lwc1       $f0, 0x74($sp)
/* C5BBC 800C4FBC E7AC0070 */  swc1       $f12, 0x70($sp)
/* C5BC0 800C4FC0 E7AE006C */  swc1       $f14, 0x6c($sp)
/* C5BC4 800C4FC4 C7AE0054 */  lwc1       $f14, 0x54($sp)
/* C5BC8 800C4FC8 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* C5BCC 800C4FCC C7A2005C */  lwc1       $f2, 0x5c($sp)
/* C5BD0 800C4FD0 E6000024 */  swc1       $f0, 0x24($s0)
/* C5BD4 800C4FD4 C7A8006C */  lwc1       $f8, 0x6c($sp)
/* C5BD8 800C4FD8 C7A60070 */  lwc1       $f6, 0x70($sp)
/* C5BDC 800C4FDC E6140008 */  swc1       $f20, 8($s0)
/* C5BE0 800C4FE0 46087282 */  mul.s      $f10, $f14, $f8
/* C5BE4 800C4FE4 E6160018 */  swc1       $f22, 0x18($s0)
/* C5BE8 800C4FE8 E6180028 */  swc1       $f24, 0x28($s0)
/* C5BEC 800C4FEC 46066102 */  mul.s      $f4, $f12, $f6
/* C5BF0 800C4FF0 46045200 */  add.s      $f8, $f10, $f4
/* C5BF4 800C4FF4 46001182 */  mul.s      $f6, $f2, $f0
/* C5BF8 800C4FF8 44800000 */  mtc1       $zero, $f0
/* C5BFC 800C4FFC 00000000 */  nop
/* C5C00 800C5000 E600000C */  swc1       $f0, 0xc($s0)
/* C5C04 800C5004 E600001C */  swc1       $f0, 0x1c($s0)
/* C5C08 800C5008 E600002C */  swc1       $f0, 0x2c($s0)
/* C5C0C 800C500C 46064280 */  add.s      $f10, $f8, $f6
/* C5C10 800C5010 46147202 */  mul.s      $f8, $f14, $f20
/* C5C14 800C5014 00000000 */  nop
/* C5C18 800C5018 46166182 */  mul.s      $f6, $f12, $f22
/* C5C1C 800C501C 46005107 */  neg.s      $f4, $f10
/* C5C20 800C5020 E6040034 */  swc1       $f4, 0x34($s0)
/* C5C24 800C5024 46181102 */  mul.s      $f4, $f2, $f24
/* C5C28 800C5028 46064280 */  add.s      $f10, $f8, $f6
/* C5C2C 800C502C 46045200 */  add.s      $f8, $f10, $f4
/* C5C30 800C5030 44815000 */  mtc1       $at, $f10
/* C5C34 800C5034 46004187 */  neg.s      $f6, $f8
/* C5C38 800C5038 E60A003C */  swc1       $f10, 0x3c($s0)
/* C5C3C 800C503C E6060038 */  swc1       $f6, 0x38($s0)
/* C5C40 800C5040 8FBF004C */  lw         $ra, 0x4c($sp)
/* C5C44 800C5044 8FB00048 */  lw         $s0, 0x48($sp)
/* C5C48 800C5048 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* C5C4C 800C504C D7BC0038 */  ldc1       $f28, 0x38($sp)
/* C5C50 800C5050 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* C5C54 800C5054 D7B80028 */  ldc1       $f24, 0x28($sp)
/* C5C58 800C5058 D7B60020 */  ldc1       $f22, 0x20($sp)
/* C5C5C 800C505C D7B40018 */  ldc1       $f20, 0x18($sp)
/* C5C60 800C5060 03E00008 */  jr         $ra
/* C5C64 800C5064 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800C5068
/* C5C68 800C5068 27BDFF90 */  addiu      $sp, $sp, -0x70
/* C5C6C 800C506C C7A40080 */  lwc1       $f4, 0x80($sp)
/* C5C70 800C5070 44856000 */  mtc1       $a1, $f12
/* C5C74 800C5074 44867000 */  mtc1       $a2, $f14
/* C5C78 800C5078 44878000 */  mtc1       $a3, $f16
/* C5C7C 800C507C E7A40010 */  swc1       $f4, 0x10($sp)
/* C5C80 800C5080 C7A40094 */  lwc1       $f4, 0x94($sp)
/* C5C84 800C5084 C7A60084 */  lwc1       $f6, 0x84($sp)
/* C5C88 800C5088 C7A80088 */  lwc1       $f8, 0x88($sp)
/* C5C8C 800C508C C7AA008C */  lwc1       $f10, 0x8c($sp)
/* C5C90 800C5090 C7B20090 */  lwc1       $f18, 0x90($sp)
/* C5C94 800C5094 AFBF002C */  sw         $ra, 0x2c($sp)
/* C5C98 800C5098 AFA40070 */  sw         $a0, 0x70($sp)
/* C5C9C 800C509C 44056000 */  mfc1       $a1, $f12
/* C5CA0 800C50A0 44067000 */  mfc1       $a2, $f14
/* C5CA4 800C50A4 44078000 */  mfc1       $a3, $f16
/* C5CA8 800C50A8 27A40030 */  addiu      $a0, $sp, 0x30
/* C5CAC 800C50AC E7A40024 */  swc1       $f4, 0x24($sp)
/* C5CB0 800C50B0 E7A60014 */  swc1       $f6, 0x14($sp)
/* C5CB4 800C50B4 E7A80018 */  swc1       $f8, 0x18($sp)
/* C5CB8 800C50B8 E7AA001C */  swc1       $f10, 0x1c($sp)
/* C5CBC 800C50BC 0C03136C */  jal        func_800C4DB0
/* C5CC0 800C50C0 E7B20020 */   swc1      $f18, 0x20($sp)
/* C5CC4 800C50C4 27A40030 */  addiu      $a0, $sp, 0x30
/* C5CC8 800C50C8 0C0310D0 */  jal        func_800C4340
/* C5CCC 800C50CC 8FA50070 */   lw        $a1, 0x70($sp)
/* C5CD0 800C50D0 8FBF002C */  lw         $ra, 0x2c($sp)
/* C5CD4 800C50D4 27BD0070 */  addiu      $sp, $sp, 0x70
/* C5CD8 800C50D8 03E00008 */  jr         $ra
/* C5CDC 800C50DC 00000000 */   nop

glabel func_800C50E0
/* C5CE0 800C50E0 27BDFD88 */  addiu      $sp, $sp, -0x278
/* C5CE4 800C50E4 AFA5027C */  sw         $a1, 0x27c($sp)
/* C5CE8 800C50E8 97AE027E */  lhu        $t6, 0x27e($sp)
/* C5CEC 800C50EC AFBF0024 */  sw         $ra, 0x24($sp)
/* C5CF0 800C50F0 AFA40278 */  sw         $a0, 0x278($sp)
/* C5CF4 800C50F4 AFA60280 */  sw         $a2, 0x280($sp)
/* C5CF8 800C50F8 AFA70284 */  sw         $a3, 0x284($sp)
/* C5CFC 800C50FC AFA00268 */  sw         $zero, 0x268($sp)
/* C5D00 800C5100 AFA00260 */  sw         $zero, 0x260($sp)
/* C5D04 800C5104 A3A0003A */  sb         $zero, 0x3a($sp)
/* C5D08 800C5108 11C00004 */  beqz       $t6, .L800C511C
/* C5D0C 800C510C AFA00034 */   sw        $zero, 0x34($sp)
/* C5D10 800C5110 8FAF0280 */  lw         $t7, 0x280($sp)
/* C5D14 800C5114 15E00003 */  bnez       $t7, .L800C5124
/* C5D18 800C5118 00000000 */   nop
.L800C511C:
/* C5D1C 800C511C 1000010D */  b          .L800C5554
/* C5D20 800C5120 24020005 */   addiu     $v0, $zero, 5
.L800C5124:
/* C5D24 800C5124 8FB8028C */  lw         $t8, 0x28c($sp)
/* C5D28 800C5128 8FA90278 */  lw         $t1, 0x278($sp)
/* C5D2C 800C512C 271900FF */  addiu      $t9, $t8, 0xff
/* C5D30 800C5130 07210003 */  bgez       $t9, .L800C5140
/* C5D34 800C5134 00194203 */   sra       $t0, $t9, 8
/* C5D38 800C5138 272100FF */  addiu      $at, $t9, 0xff
/* C5D3C 800C513C 00014203 */  sra        $t0, $at, 8
.L800C5140:
/* C5D40 800C5140 AFA8025C */  sw         $t0, 0x25c($sp)
/* C5D44 800C5144 8D2A0000 */  lw         $t2, ($t1)
/* C5D48 800C5148 314B0001 */  andi       $t3, $t2, 1
/* C5D4C 800C514C 15600003 */  bnez       $t3, .L800C515C
/* C5D50 800C5150 00000000 */   nop
/* C5D54 800C5154 100000FF */  b          .L800C5554
/* C5D58 800C5158 24020005 */   addiu     $v0, $zero, 5
.L800C515C:
/* C5D5C 800C515C 0C031D08 */  jal        func_800C7420
/* C5D60 800C5160 8FA40278 */   lw        $a0, 0x278($sp)
/* C5D64 800C5164 24010002 */  addiu      $at, $zero, 2
/* C5D68 800C5168 14410003 */  bne        $v0, $at, .L800C5178
/* C5D6C 800C516C 00000000 */   nop
/* C5D70 800C5170 100000F8 */  b          .L800C5554
/* C5D74 800C5174 24020002 */   addiu     $v0, $zero, 2
.L800C5178:
/* C5D78 800C5178 8FAC0288 */  lw         $t4, 0x288($sp)
/* C5D7C 800C517C 8FAD0290 */  lw         $t5, 0x290($sp)
/* C5D80 800C5180 8FA40278 */  lw         $a0, 0x278($sp)
/* C5D84 800C5184 97A5027E */  lhu        $a1, 0x27e($sp)
/* C5D88 800C5188 8FA60280 */  lw         $a2, 0x280($sp)
/* C5D8C 800C518C 8FA70284 */  lw         $a3, 0x284($sp)
/* C5D90 800C5190 AFAC0010 */  sw         $t4, 0x10($sp)
/* C5D94 800C5194 0C032AD4 */  jal        func_800CAB50
/* C5D98 800C5198 AFAD0014 */   sw        $t5, 0x14($sp)
/* C5D9C 800C519C AFA20260 */  sw         $v0, 0x260($sp)
/* C5DA0 800C51A0 8FAE0260 */  lw         $t6, 0x260($sp)
/* C5DA4 800C51A4 11C00005 */  beqz       $t6, .L800C51BC
/* C5DA8 800C51A8 24010005 */   addiu     $at, $zero, 5
/* C5DAC 800C51AC 11C10003 */  beq        $t6, $at, .L800C51BC
/* C5DB0 800C51B0 00000000 */   nop
/* C5DB4 800C51B4 100000E7 */  b          .L800C5554
/* C5DB8 800C51B8 01C01025 */   or        $v0, $t6, $zero
.L800C51BC:
/* C5DBC 800C51BC 8FAF0290 */  lw         $t7, 0x290($sp)
/* C5DC0 800C51C0 2401FFFF */  addiu      $at, $zero, -1
/* C5DC4 800C51C4 8DF80000 */  lw         $t8, ($t7)
/* C5DC8 800C51C8 13010003 */  beq        $t8, $at, .L800C51D8
/* C5DCC 800C51CC 00000000 */   nop
/* C5DD0 800C51D0 100000E0 */  b          .L800C5554
/* C5DD4 800C51D4 24020009 */   addiu     $v0, $zero, 9
.L800C51D8:
/* C5DD8 800C51D8 8FA40278 */  lw         $a0, 0x278($sp)
/* C5DDC 800C51DC 0C02F7FC */  jal        func_800BDFF0
/* C5DE0 800C51E0 27A50030 */   addiu     $a1, $sp, 0x30
/* C5DE4 800C51E4 8FB9028C */  lw         $t9, 0x28c($sp)
/* C5DE8 800C51E8 8FA80030 */  lw         $t0, 0x30($sp)
/* C5DEC 800C51EC AFA20260 */  sw         $v0, 0x260($sp)
/* C5DF0 800C51F0 0119082A */  slt        $at, $t0, $t9
/* C5DF4 800C51F4 10200003 */  beqz       $at, .L800C5204
/* C5DF8 800C51F8 00000000 */   nop
/* C5DFC 800C51FC 100000D5 */  b          .L800C5554
/* C5E00 800C5200 24020007 */   addiu     $v0, $zero, 7
.L800C5204:
/* C5E04 800C5204 8FA9025C */  lw         $t1, 0x25c($sp)
/* C5E08 800C5208 112000D1 */  beqz       $t1, .L800C5550
/* C5E0C 800C520C 00000000 */   nop
/* C5E10 800C5210 8FAA0290 */  lw         $t2, 0x290($sp)
/* C5E14 800C5214 8FA40278 */  lw         $a0, 0x278($sp)
/* C5E18 800C5218 00002825 */  or         $a1, $zero, $zero
/* C5E1C 800C521C 00003025 */  or         $a2, $zero, $zero
/* C5E20 800C5220 00003825 */  or         $a3, $zero, $zero
/* C5E24 800C5224 AFA00010 */  sw         $zero, 0x10($sp)
/* C5E28 800C5228 0C032AD4 */  jal        func_800CAB50
/* C5E2C 800C522C AFAA0014 */   sw        $t2, 0x14($sp)
/* C5E30 800C5230 AFA20260 */  sw         $v0, 0x260($sp)
/* C5E34 800C5234 8FAB0260 */  lw         $t3, 0x260($sp)
/* C5E38 800C5238 11600005 */  beqz       $t3, .L800C5250
/* C5E3C 800C523C 24010005 */   addiu     $at, $zero, 5
/* C5E40 800C5240 11610003 */  beq        $t3, $at, .L800C5250
/* C5E44 800C5244 00000000 */   nop
/* C5E48 800C5248 100000C2 */  b          .L800C5554
/* C5E4C 800C524C 01601025 */   or        $v0, $t3, $zero
.L800C5250:
/* C5E50 800C5250 8FAC0290 */  lw         $t4, 0x290($sp)
/* C5E54 800C5254 2401FFFF */  addiu      $at, $zero, -1
/* C5E58 800C5258 8D8D0000 */  lw         $t5, ($t4)
/* C5E5C 800C525C 15A10003 */  bne        $t5, $at, .L800C526C
/* C5E60 800C5260 00000000 */   nop
/* C5E64 800C5264 100000BB */  b          .L800C5554
/* C5E68 800C5268 24020008 */   addiu     $v0, $zero, 8
.L800C526C:
/* C5E6C 800C526C 8FAE0278 */  lw         $t6, 0x278($sp)
/* C5E70 800C5270 A3A0003B */  sb         $zero, 0x3b($sp)
/* C5E74 800C5274 91CF0064 */  lbu        $t7, 0x64($t6)
/* C5E78 800C5278 19E00062 */  blez       $t7, .L800C5404
/* C5E7C 800C527C 00000000 */   nop
.L800C5280:
/* C5E80 800C5280 8FA40278 */  lw         $a0, 0x278($sp)
/* C5E84 800C5284 27A5015C */  addiu      $a1, $sp, 0x15c
/* C5E88 800C5288 00003025 */  or         $a2, $zero, $zero
/* C5E8C 800C528C 0C031D47 */  jal        func_800C751C
/* C5E90 800C5290 93A7003B */   lbu       $a3, 0x3b($sp)
/* C5E94 800C5294 AFA20260 */  sw         $v0, 0x260($sp)
/* C5E98 800C5298 8FB80260 */  lw         $t8, 0x260($sp)
/* C5E9C 800C529C 13000003 */  beqz       $t8, .L800C52AC
/* C5EA0 800C52A0 00000000 */   nop
/* C5EA4 800C52A4 100000AB */  b          .L800C5554
/* C5EA8 800C52A8 03001025 */   or        $v0, $t8, $zero
.L800C52AC:
/* C5EAC 800C52AC 93B9003B */  lbu        $t9, 0x3b($sp)
/* C5EB0 800C52B0 27A80270 */  addiu      $t0, $sp, 0x270
/* C5EB4 800C52B4 27A9026C */  addiu      $t1, $sp, 0x26c
/* C5EB8 800C52B8 AFA90018 */  sw         $t1, 0x18($sp)
/* C5EBC 800C52BC AFA80014 */  sw         $t0, 0x14($sp)
/* C5EC0 800C52C0 8FA40278 */  lw         $a0, 0x278($sp)
/* C5EC4 800C52C4 27A5015C */  addiu      $a1, $sp, 0x15c
/* C5EC8 800C52C8 8FA6025C */  lw         $a2, 0x25c($sp)
/* C5ECC 800C52CC 27A70274 */  addiu      $a3, $sp, 0x274
/* C5ED0 800C52D0 0C031559 */  jal        func_800C5564
/* C5ED4 800C52D4 AFB90010 */   sw        $t9, 0x10($sp)
/* C5ED8 800C52D8 AFA20260 */  sw         $v0, 0x260($sp)
/* C5EDC 800C52DC 8FAA0260 */  lw         $t2, 0x260($sp)
/* C5EE0 800C52E0 11400003 */  beqz       $t2, .L800C52F0
/* C5EE4 800C52E4 00000000 */   nop
/* C5EE8 800C52E8 1000009A */  b          .L800C5554
/* C5EEC 800C52EC 01401025 */   or        $v0, $t2, $zero
.L800C52F0:
/* C5EF0 800C52F0 8FAB0274 */  lw         $t3, 0x274($sp)
/* C5EF4 800C52F4 2401FFFF */  addiu      $at, $zero, -1
/* C5EF8 800C52F8 11610039 */  beq        $t3, $at, .L800C53E0
/* C5EFC 800C52FC 00000000 */   nop
/* C5F00 800C5300 8FAC0034 */  lw         $t4, 0x34($sp)
/* C5F04 800C5304 15800005 */  bnez       $t4, .L800C531C
/* C5F08 800C5308 00000000 */   nop
/* C5F0C 800C530C 93AD003B */  lbu        $t5, 0x3b($sp)
/* C5F10 800C5310 A3AB002D */  sb         $t3, 0x2d($sp)
/* C5F14 800C5314 10000016 */  b          .L800C5370
/* C5F18 800C5318 A3AD002C */   sb        $t5, 0x2c($sp)
.L800C531C:
/* C5F1C 800C531C 8FAF0268 */  lw         $t7, 0x268($sp)
/* C5F20 800C5320 93AE003B */  lbu        $t6, 0x3b($sp)
/* C5F24 800C5324 27A5005C */  addiu      $a1, $sp, 0x5c
/* C5F28 800C5328 000FC040 */  sll        $t8, $t7, 1
/* C5F2C 800C532C 03B8C821 */  addu       $t9, $sp, $t8
/* C5F30 800C5330 A32E005C */  sb         $t6, 0x5c($t9)
/* C5F34 800C5334 8FA90268 */  lw         $t1, 0x268($sp)
/* C5F38 800C5338 8FA80274 */  lw         $t0, 0x274($sp)
/* C5F3C 800C533C 24060001 */  addiu      $a2, $zero, 1
/* C5F40 800C5340 00095040 */  sll        $t2, $t1, 1
/* C5F44 800C5344 03AA6021 */  addu       $t4, $sp, $t2
/* C5F48 800C5348 A188005D */  sb         $t0, 0x5d($t4)
/* C5F4C 800C534C 93A7003A */  lbu        $a3, 0x3a($sp)
/* C5F50 800C5350 0C031D47 */  jal        func_800C751C
/* C5F54 800C5354 8FA40278 */   lw        $a0, 0x278($sp)
/* C5F58 800C5358 AFA20260 */  sw         $v0, 0x260($sp)
/* C5F5C 800C535C 8FAB0260 */  lw         $t3, 0x260($sp)
/* C5F60 800C5360 11600003 */  beqz       $t3, .L800C5370
/* C5F64 800C5364 00000000 */   nop
/* C5F68 800C5368 1000007A */  b          .L800C5554
/* C5F6C 800C536C 01601025 */   or        $v0, $t3, $zero
.L800C5370:
/* C5F70 800C5370 AFA00264 */  sw         $zero, 0x264($sp)
.L800C5374:
/* C5F74 800C5374 8FAD0264 */  lw         $t5, 0x264($sp)
/* C5F78 800C5378 000D7840 */  sll        $t7, $t5, 1
/* C5F7C 800C537C 03AF7021 */  addu       $t6, $sp, $t7
/* C5F80 800C5380 95CE015C */  lhu        $t6, 0x15c($t6)
/* C5F84 800C5384 03AFC021 */  addu       $t8, $sp, $t7
/* C5F88 800C5388 A70E005C */  sh         $t6, 0x5c($t8)
/* C5F8C 800C538C 8FB90264 */  lw         $t9, 0x264($sp)
/* C5F90 800C5390 27290001 */  addiu      $t1, $t9, 1
/* C5F94 800C5394 29210080 */  slti       $at, $t1, 0x80
/* C5F98 800C5398 1420FFF6 */  bnez       $at, .L800C5374
/* C5F9C 800C539C AFA90264 */   sw        $t1, 0x264($sp)
/* C5FA0 800C53A0 8FAC0034 */  lw         $t4, 0x34($sp)
/* C5FA4 800C53A4 8FAD025C */  lw         $t5, 0x25c($sp)
/* C5FA8 800C53A8 8FAE0270 */  lw         $t6, 0x270($sp)
/* C5FAC 800C53AC 8FA8026C */  lw         $t0, 0x26c($sp)
/* C5FB0 800C53B0 93AA003B */  lbu        $t2, 0x3b($sp)
/* C5FB4 800C53B4 258B0001 */  addiu      $t3, $t4, 1
/* C5FB8 800C53B8 01CD082A */  slt        $at, $t6, $t5
/* C5FBC 800C53BC AFAB0034 */  sw         $t3, 0x34($sp)
/* C5FC0 800C53C0 AFA80268 */  sw         $t0, 0x268($sp)
/* C5FC4 800C53C4 10200004 */  beqz       $at, .L800C53D8
/* C5FC8 800C53C8 A3AA003A */   sb        $t2, 0x3a($sp)
/* C5FCC 800C53CC 01AE7823 */  subu       $t7, $t5, $t6
/* C5FD0 800C53D0 10000003 */  b          .L800C53E0
/* C5FD4 800C53D4 AFAF025C */   sw        $t7, 0x25c($sp)
.L800C53D8:
/* C5FD8 800C53D8 1000000A */  b          .L800C5404
/* C5FDC 800C53DC AFA0025C */   sw        $zero, 0x25c($sp)
.L800C53E0:
/* C5FE0 800C53E0 93B8003B */  lbu        $t8, 0x3b($sp)
/* C5FE4 800C53E4 8FA80278 */  lw         $t0, 0x278($sp)
/* C5FE8 800C53E8 27190001 */  addiu      $t9, $t8, 1
/* C5FEC 800C53EC A3B9003B */  sb         $t9, 0x3b($sp)
/* C5FF0 800C53F0 910A0064 */  lbu        $t2, 0x64($t0)
/* C5FF4 800C53F4 332900FF */  andi       $t1, $t9, 0xff
/* C5FF8 800C53F8 012A082A */  slt        $at, $t1, $t2
/* C5FFC 800C53FC 1420FFA0 */  bnez       $at, .L800C5280
/* C6000 800C5400 00000000 */   nop
.L800C5404:
/* C6004 800C5404 8FAC025C */  lw         $t4, 0x25c($sp)
/* C6008 800C5408 1D800005 */  bgtz       $t4, .L800C5420
/* C600C 800C540C 00000000 */   nop
/* C6010 800C5410 8FAB0274 */  lw         $t3, 0x274($sp)
/* C6014 800C5414 2401FFFF */  addiu      $at, $zero, -1
/* C6018 800C5418 15610003 */  bne        $t3, $at, .L800C5428
/* C601C 800C541C 00000000 */   nop
.L800C5420:
/* C6020 800C5420 1000004C */  b          .L800C5554
/* C6024 800C5424 24020003 */   addiu     $v0, $zero, 3
.L800C5428:
/* C6028 800C5428 8FAE0268 */  lw         $t6, 0x268($sp)
/* C602C 800C542C 93AD003B */  lbu        $t5, 0x3b($sp)
/* C6030 800C5430 27A5005C */  addiu      $a1, $sp, 0x5c
/* C6034 800C5434 000E7840 */  sll        $t7, $t6, 1
/* C6038 800C5438 03AFC021 */  addu       $t8, $sp, $t7
/* C603C 800C543C A30D005C */  sb         $t5, 0x5c($t8)
/* C6040 800C5440 8FA80268 */  lw         $t0, 0x268($sp)
/* C6044 800C5444 8FB90274 */  lw         $t9, 0x274($sp)
/* C6048 800C5448 24060001 */  addiu      $a2, $zero, 1
/* C604C 800C544C 00084840 */  sll        $t1, $t0, 1
/* C6050 800C5450 03A95021 */  addu       $t2, $sp, $t1
/* C6054 800C5454 A159005D */  sb         $t9, 0x5d($t2)
/* C6058 800C5458 93A7003A */  lbu        $a3, 0x3a($sp)
/* C605C 800C545C 0C031D47 */  jal        func_800C751C
/* C6060 800C5460 8FA40278 */   lw        $a0, 0x278($sp)
/* C6064 800C5464 AFA20260 */  sw         $v0, 0x260($sp)
/* C6068 800C5468 8FAC0260 */  lw         $t4, 0x260($sp)
/* C606C 800C546C 11800003 */  beqz       $t4, .L800C547C
/* C6070 800C5470 00000000 */   nop
/* C6074 800C5474 10000037 */  b          .L800C5554
/* C6078 800C5478 01801025 */   or        $v0, $t4, $zero
.L800C547C:
/* C607C 800C547C 97AB002C */  lhu        $t3, 0x2c($sp)
/* C6080 800C5480 97AE027E */  lhu        $t6, 0x27e($sp)
/* C6084 800C5484 8FAD0280 */  lw         $t5, 0x280($sp)
/* C6088 800C5488 A7A00046 */  sh         $zero, 0x46($sp)
/* C608C 800C548C AFA00264 */  sw         $zero, 0x264($sp)
/* C6090 800C5490 A7AB0042 */  sh         $t3, 0x42($sp)
/* C6094 800C5494 A7AE0040 */  sh         $t6, 0x40($sp)
/* C6098 800C5498 AFAD003C */  sw         $t5, 0x3c($sp)
.L800C549C:
/* C609C 800C549C 8FAF0284 */  lw         $t7, 0x284($sp)
/* C60A0 800C54A0 8FA80264 */  lw         $t0, 0x264($sp)
/* C60A4 800C54A4 91F80000 */  lbu        $t8, ($t7)
/* C60A8 800C54A8 03A8C821 */  addu       $t9, $sp, $t0
/* C60AC 800C54AC A338004C */  sb         $t8, 0x4c($t9)
/* C60B0 800C54B0 8FAC0264 */  lw         $t4, 0x264($sp)
/* C60B4 800C54B4 8FA90284 */  lw         $t1, 0x284($sp)
/* C60B8 800C54B8 258B0001 */  addiu      $t3, $t4, 1
/* C60BC 800C54BC 29610010 */  slti       $at, $t3, 0x10
/* C60C0 800C54C0 252A0001 */  addiu      $t2, $t1, 1
/* C60C4 800C54C4 AFAB0264 */  sw         $t3, 0x264($sp)
/* C60C8 800C54C8 1420FFF4 */  bnez       $at, .L800C549C
/* C60CC 800C54CC AFAA0284 */   sw        $t2, 0x284($sp)
/* C60D0 800C54D0 AFA00264 */  sw         $zero, 0x264($sp)
.L800C54D4:
/* C60D4 800C54D4 8FAE0288 */  lw         $t6, 0x288($sp)
/* C60D8 800C54D8 8FAF0264 */  lw         $t7, 0x264($sp)
/* C60DC 800C54DC 91CD0000 */  lbu        $t5, ($t6)
/* C60E0 800C54E0 03AFC021 */  addu       $t8, $sp, $t7
/* C60E4 800C54E4 A30D0048 */  sb         $t5, 0x48($t8)
/* C60E8 800C54E8 8FA90264 */  lw         $t1, 0x264($sp)
/* C60EC 800C54EC 8FA80288 */  lw         $t0, 0x288($sp)
/* C60F0 800C54F0 252A0001 */  addiu      $t2, $t1, 1
/* C60F4 800C54F4 29410004 */  slti       $at, $t2, 4
/* C60F8 800C54F8 25190001 */  addiu      $t9, $t0, 1
/* C60FC 800C54FC AFAA0264 */  sw         $t2, 0x264($sp)
/* C6100 800C5500 1420FFF4 */  bnez       $at, .L800C54D4
/* C6104 800C5504 AFB90288 */   sw        $t9, 0x288($sp)
/* C6108 800C5508 8FAC0278 */  lw         $t4, 0x278($sp)
/* C610C 800C550C 8FAB0290 */  lw         $t3, 0x290($sp)
/* C6110 800C5510 27A7003C */  addiu      $a3, $sp, 0x3c
/* C6114 800C5514 8D8D005C */  lw         $t5, 0x5c($t4)
/* C6118 800C5518 8D6E0000 */  lw         $t6, ($t3)
/* C611C 800C551C 8D840004 */  lw         $a0, 4($t4)
/* C6120 800C5520 8D850008 */  lw         $a1, 8($t4)
/* C6124 800C5524 AFA00010 */  sw         $zero, 0x10($sp)
/* C6128 800C5528 0C034668 */  jal        func_800D19A0
/* C612C 800C552C 01CD3021 */   addu      $a2, $t6, $t5
/* C6130 800C5530 AFA20260 */  sw         $v0, 0x260($sp)
/* C6134 800C5534 8FAF0260 */  lw         $t7, 0x260($sp)
/* C6138 800C5538 11E00003 */  beqz       $t7, .L800C5548
/* C613C 800C553C 00000000 */   nop
/* C6140 800C5540 10000004 */  b          .L800C5554
/* C6144 800C5544 01E01025 */   or        $v0, $t7, $zero
.L800C5548:
/* C6148 800C5548 10000002 */  b          .L800C5554
/* C614C 800C554C 8FA20260 */   lw        $v0, 0x260($sp)
.L800C5550:
/* C6150 800C5550 24020005 */  addiu      $v0, $zero, 5
.L800C5554:
/* C6154 800C5554 8FBF0024 */  lw         $ra, 0x24($sp)
/* C6158 800C5558 27BD0278 */  addiu      $sp, $sp, 0x278
/* C615C 800C555C 03E00008 */  jr         $ra
/* C6160 800C5560 00000000 */   nop

glabel func_800C5564
/* C6164 800C5564 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C6168 800C5568 93AE0063 */  lbu        $t6, 0x63($sp)
/* C616C 800C556C AFBF0014 */  sw         $ra, 0x14($sp)
/* C6170 800C5570 AFA40050 */  sw         $a0, 0x50($sp)
/* C6174 800C5574 AFA50054 */  sw         $a1, 0x54($sp)
/* C6178 800C5578 AFA60058 */  sw         $a2, 0x58($sp)
/* C617C 800C557C AFA7005C */  sw         $a3, 0x5c($sp)
/* C6180 800C5580 19C00004 */  blez       $t6, .L800C5594
/* C6184 800C5584 AFA0001C */   sw        $zero, 0x1c($sp)
/* C6188 800C5588 240F0001 */  addiu      $t7, $zero, 1
/* C618C 800C558C 10000004 */  b          .L800C55A0
/* C6190 800C5590 AFAF0018 */   sw        $t7, 0x18($sp)
.L800C5594:
/* C6194 800C5594 8FB80050 */  lw         $t8, 0x50($sp)
/* C6198 800C5598 8F190060 */  lw         $t9, 0x60($t8)
/* C619C 800C559C AFB90018 */  sw         $t9, 0x18($sp)
.L800C55A0:
/* C61A0 800C55A0 8FA80018 */  lw         $t0, 0x18($sp)
/* C61A4 800C55A4 29010080 */  slti       $at, $t0, 0x80
/* C61A8 800C55A8 1020000E */  beqz       $at, .L800C55E4
/* C61AC 800C55AC AFA8004C */   sw        $t0, 0x4c($sp)
.L800C55B0:
/* C61B0 800C55B0 8FAA004C */  lw         $t2, 0x4c($sp)
/* C61B4 800C55B4 8FA90054 */  lw         $t1, 0x54($sp)
/* C61B8 800C55B8 24010003 */  addiu      $at, $zero, 3
/* C61BC 800C55BC 000A5840 */  sll        $t3, $t2, 1
/* C61C0 800C55C0 012B6021 */  addu       $t4, $t1, $t3
/* C61C4 800C55C4 958D0000 */  lhu        $t5, ($t4)
/* C61C8 800C55C8 11A10006 */  beq        $t5, $at, .L800C55E4
/* C61CC 800C55CC 00000000 */   nop
/* C61D0 800C55D0 8FAE004C */  lw         $t6, 0x4c($sp)
/* C61D4 800C55D4 25CF0001 */  addiu      $t7, $t6, 1
/* C61D8 800C55D8 29E10080 */  slti       $at, $t7, 0x80
/* C61DC 800C55DC 1420FFF4 */  bnez       $at, .L800C55B0
/* C61E0 800C55E0 AFAF004C */   sw        $t7, 0x4c($sp)
.L800C55E4:
/* C61E4 800C55E4 8FB8004C */  lw         $t8, 0x4c($sp)
/* C61E8 800C55E8 24010080 */  addiu      $at, $zero, 0x80
/* C61EC 800C55EC 17010006 */  bne        $t8, $at, .L800C5608
/* C61F0 800C55F0 00000000 */   nop
/* C61F4 800C55F4 8FA8005C */  lw         $t0, 0x5c($sp)
/* C61F8 800C55F8 2419FFFF */  addiu      $t9, $zero, -1
/* C61FC 800C55FC AD190000 */  sw         $t9, ($t0)
/* C6200 800C5600 1000006D */  b          .L800C57B8
/* C6204 800C5604 8FA2001C */   lw        $v0, 0x1c($sp)
.L800C5608:
/* C6208 800C5608 AFA00020 */  sw         $zero, 0x20($sp)
.L800C560C:
/* C620C 800C560C 8FAA0020 */  lw         $t2, 0x20($sp)
/* C6210 800C5610 03AA4821 */  addu       $t1, $sp, $t2
/* C6214 800C5614 A1200024 */  sb         $zero, 0x24($t1)
/* C6218 800C5618 8FAB0020 */  lw         $t3, 0x20($sp)
/* C621C 800C561C 256C0001 */  addiu      $t4, $t3, 1
/* C6220 800C5620 29810020 */  slti       $at, $t4, 0x20
/* C6224 800C5624 1420FFF9 */  bnez       $at, .L800C560C
/* C6228 800C5628 AFAC0020 */   sw        $t4, 0x20($sp)
/* C622C 800C562C 8FAD004C */  lw         $t5, 0x4c($sp)
/* C6230 800C5630 8FAF0064 */  lw         $t7, 0x64($sp)
/* C6234 800C5634 240E0001 */  addiu      $t6, $zero, 1
/* C6238 800C5638 AFAD0048 */  sw         $t5, 0x48($sp)
/* C623C 800C563C ADEE0000 */  sw         $t6, ($t7)
/* C6240 800C5640 8FB8004C */  lw         $t8, 0x4c($sp)
/* C6244 800C5644 8FAA0064 */  lw         $t2, 0x64($sp)
/* C6248 800C5648 8FA80058 */  lw         $t0, 0x58($sp)
/* C624C 800C564C 27190001 */  addiu      $t9, $t8, 1
/* C6250 800C5650 AFB9004C */  sw         $t9, 0x4c($sp)
/* C6254 800C5654 AFB80044 */  sw         $t8, 0x44($sp)
/* C6258 800C5658 8D490000 */  lw         $t1, ($t2)
/* C625C 800C565C 0128082A */  slt        $at, $t1, $t0
/* C6260 800C5660 10200034 */  beqz       $at, .L800C5734
/* C6264 800C5664 2B210080 */   slti      $at, $t9, 0x80
/* C6268 800C5668 10200032 */  beqz       $at, .L800C5734
/* C626C 800C566C 00000000 */   nop
.L800C5670:
/* C6270 800C5670 8FAC004C */  lw         $t4, 0x4c($sp)
/* C6274 800C5674 8FAB0054 */  lw         $t3, 0x54($sp)
/* C6278 800C5678 24010003 */  addiu      $at, $zero, 3
/* C627C 800C567C 000C6840 */  sll        $t5, $t4, 1
/* C6280 800C5680 016D7021 */  addu       $t6, $t3, $t5
/* C6284 800C5684 95CF0000 */  lhu        $t7, ($t6)
/* C6288 800C5688 15E1001D */  bne        $t7, $at, .L800C5700
/* C628C 800C568C 00000000 */   nop
/* C6290 800C5690 8FAA0044 */  lw         $t2, 0x44($sp)
/* C6294 800C5694 93B80063 */  lbu        $t8, 0x63($sp)
/* C6298 800C5698 27A60024 */  addiu      $a2, $sp, 0x24
/* C629C 800C569C 000A4040 */  sll        $t0, $t2, 1
/* C62A0 800C56A0 01684821 */  addu       $t1, $t3, $t0
/* C62A4 800C56A4 A1380000 */  sb         $t8, ($t1)
/* C62A8 800C56A8 8FAD0044 */  lw         $t5, 0x44($sp)
/* C62AC 800C56AC 8FAC0054 */  lw         $t4, 0x54($sp)
/* C62B0 800C56B0 8FB9004C */  lw         $t9, 0x4c($sp)
/* C62B4 800C56B4 000D7040 */  sll        $t6, $t5, 1
/* C62B8 800C56B8 018E7821 */  addu       $t7, $t4, $t6
/* C62BC 800C56BC A1F90001 */  sb         $t9, 1($t7)
/* C62C0 800C56C0 93A70063 */  lbu        $a3, 0x63($sp)
/* C62C4 800C56C4 8FA50044 */  lw         $a1, 0x44($sp)
/* C62C8 800C56C8 0C0315F2 */  jal        func_800C57C8
/* C62CC 800C56CC 8FA40050 */   lw        $a0, 0x50($sp)
/* C62D0 800C56D0 AFA2001C */  sw         $v0, 0x1c($sp)
/* C62D4 800C56D4 8FAA001C */  lw         $t2, 0x1c($sp)
/* C62D8 800C56D8 11400003 */  beqz       $t2, .L800C56E8
/* C62DC 800C56DC 00000000 */   nop
/* C62E0 800C56E0 10000035 */  b          .L800C57B8
/* C62E4 800C56E4 01401025 */   or        $v0, $t2, $zero
.L800C56E8:
/* C62E8 800C56E8 8FAB004C */  lw         $t3, 0x4c($sp)
/* C62EC 800C56EC 8FA80064 */  lw         $t0, 0x64($sp)
/* C62F0 800C56F0 AFAB0044 */  sw         $t3, 0x44($sp)
/* C62F4 800C56F4 8D180000 */  lw         $t8, ($t0)
/* C62F8 800C56F8 27090001 */  addiu      $t1, $t8, 1
/* C62FC 800C56FC AD090000 */  sw         $t1, ($t0)
.L800C5700:
/* C6300 800C5700 8FAD004C */  lw         $t5, 0x4c($sp)
/* C6304 800C5704 8FB90064 */  lw         $t9, 0x64($sp)
/* C6308 800C5708 8FAE0058 */  lw         $t6, 0x58($sp)
/* C630C 800C570C 25AC0001 */  addiu      $t4, $t5, 1
/* C6310 800C5710 AFAC004C */  sw         $t4, 0x4c($sp)
/* C6314 800C5714 8F2F0000 */  lw         $t7, ($t9)
/* C6318 800C5718 01EE082A */  slt        $at, $t7, $t6
/* C631C 800C571C 10200005 */  beqz       $at, .L800C5734
/* C6320 800C5720 00000000 */   nop
/* C6324 800C5724 8FAA004C */  lw         $t2, 0x4c($sp)
/* C6328 800C5728 29410080 */  slti       $at, $t2, 0x80
/* C632C 800C572C 1420FFD0 */  bnez       $at, .L800C5670
/* C6330 800C5730 00000000 */   nop
.L800C5734:
/* C6334 800C5734 8FAB0048 */  lw         $t3, 0x48($sp)
/* C6338 800C5738 8FB8005C */  lw         $t8, 0x5c($sp)
/* C633C 800C573C 24010080 */  addiu      $at, $zero, 0x80
/* C6340 800C5740 AF0B0000 */  sw         $t3, ($t8)
/* C6344 800C5744 8FA9004C */  lw         $t1, 0x4c($sp)
/* C6348 800C5748 1521000C */  bne        $t1, $at, .L800C577C
/* C634C 800C574C 00000000 */   nop
/* C6350 800C5750 8FAD0064 */  lw         $t5, 0x64($sp)
/* C6354 800C5754 8FA80058 */  lw         $t0, 0x58($sp)
/* C6358 800C5758 8DAC0000 */  lw         $t4, ($t5)
/* C635C 800C575C 0188082A */  slt        $at, $t4, $t0
/* C6360 800C5760 10200006 */  beqz       $at, .L800C577C
/* C6364 800C5764 00000000 */   nop
/* C6368 800C5768 8FB90044 */  lw         $t9, 0x44($sp)
/* C636C 800C576C 8FAE0068 */  lw         $t6, 0x68($sp)
/* C6370 800C5770 ADD90000 */  sw         $t9, ($t6)
/* C6374 800C5774 10000010 */  b          .L800C57B8
/* C6378 800C5778 8FA2001C */   lw        $v0, 0x1c($sp)
.L800C577C:
/* C637C 800C577C 8FAB0044 */  lw         $t3, 0x44($sp)
/* C6380 800C5780 8FAA0054 */  lw         $t2, 0x54($sp)
/* C6384 800C5784 240F0001 */  addiu      $t7, $zero, 1
/* C6388 800C5788 000BC040 */  sll        $t8, $t3, 1
/* C638C 800C578C 01584821 */  addu       $t1, $t2, $t8
/* C6390 800C5790 A52F0000 */  sh         $t7, ($t1)
/* C6394 800C5794 93A70063 */  lbu        $a3, 0x63($sp)
/* C6398 800C5798 8FA50044 */  lw         $a1, 0x44($sp)
/* C639C 800C579C 8FA40050 */  lw         $a0, 0x50($sp)
/* C63A0 800C57A0 0C0315F2 */  jal        func_800C57C8
/* C63A4 800C57A4 27A60024 */   addiu     $a2, $sp, 0x24
/* C63A8 800C57A8 8FAD0068 */  lw         $t5, 0x68($sp)
/* C63AC 800C57AC AFA2001C */  sw         $v0, 0x1c($sp)
/* C63B0 800C57B0 ADA00000 */  sw         $zero, ($t5)
/* C63B4 800C57B4 8FA2001C */  lw         $v0, 0x1c($sp)
.L800C57B8:
/* C63B8 800C57B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C63BC 800C57BC 27BD0050 */  addiu      $sp, $sp, 0x50
/* C63C0 800C57C0 03E00008 */  jr         $ra
/* C63C4 800C57C4 00000000 */   nop

glabel func_800C57C8
/* C63C8 800C57C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C63CC 800C57CC AFA40028 */  sw         $a0, 0x28($sp)
/* C63D0 800C57D0 AFA70034 */  sw         $a3, 0x34($sp)
/* C63D4 800C57D4 93AE0037 */  lbu        $t6, 0x37($sp)
/* C63D8 800C57D8 8FAF0028 */  lw         $t7, 0x28($sp)
/* C63DC 800C57DC AFBF001C */  sw         $ra, 0x1c($sp)
/* C63E0 800C57E0 AFA5002C */  sw         $a1, 0x2c($sp)
/* C63E4 800C57E4 AFA60030 */  sw         $a2, 0x30($sp)
/* C63E8 800C57E8 AFA00020 */  sw         $zero, 0x20($sp)
/* C63EC 800C57EC A1EE0065 */  sb         $t6, 0x65($t7)
/* C63F0 800C57F0 0C031E0F */  jal        func_800C783C
/* C63F4 800C57F4 8FA40028 */   lw        $a0, 0x28($sp)
/* C63F8 800C57F8 AFA20020 */  sw         $v0, 0x20($sp)
/* C63FC 800C57FC 8FB80020 */  lw         $t8, 0x20($sp)
/* C6400 800C5800 13000003 */  beqz       $t8, .L800C5810
/* C6404 800C5804 00000000 */   nop
/* C6408 800C5808 1000001B */  b          .L800C5878
/* C640C 800C580C 03001025 */   or        $v0, $t8, $zero
.L800C5810:
/* C6410 800C5810 AFA00024 */  sw         $zero, 0x24($sp)
.L800C5814:
/* C6414 800C5814 8FB90028 */  lw         $t9, 0x28($sp)
/* C6418 800C5818 8FA8002C */  lw         $t0, 0x2c($sp)
/* C641C 800C581C 8FAA0024 */  lw         $t2, 0x24($sp)
/* C6420 800C5820 8F240004 */  lw         $a0, 4($t9)
/* C6424 800C5824 8F250008 */  lw         $a1, 8($t9)
/* C6428 800C5828 000848C0 */  sll        $t1, $t0, 3
/* C642C 800C582C AFA00010 */  sw         $zero, 0x10($sp)
/* C6430 800C5830 8FA70030 */  lw         $a3, 0x30($sp)
/* C6434 800C5834 0C034668 */  jal        func_800D19A0
/* C6438 800C5838 012A3021 */   addu      $a2, $t1, $t2
/* C643C 800C583C AFA20020 */  sw         $v0, 0x20($sp)
/* C6440 800C5840 8FAB0020 */  lw         $t3, 0x20($sp)
/* C6444 800C5844 15600006 */  bnez       $t3, .L800C5860
/* C6448 800C5848 00000000 */   nop
/* C644C 800C584C 8FAC0024 */  lw         $t4, 0x24($sp)
/* C6450 800C5850 258D0001 */  addiu      $t5, $t4, 1
/* C6454 800C5854 29A10008 */  slti       $at, $t5, 8
/* C6458 800C5858 1420FFEE */  bnez       $at, .L800C5814
/* C645C 800C585C AFAD0024 */   sw        $t5, 0x24($sp)
.L800C5860:
/* C6460 800C5860 8FAE0028 */  lw         $t6, 0x28($sp)
/* C6464 800C5864 A1C00065 */  sb         $zero, 0x65($t6)
/* C6468 800C5868 0C031E0F */  jal        func_800C783C
/* C646C 800C586C 8FA40028 */   lw        $a0, 0x28($sp)
/* C6470 800C5870 AFA20020 */  sw         $v0, 0x20($sp)
/* C6474 800C5874 8FA20020 */  lw         $v0, 0x20($sp)
.L800C5878:
/* C6478 800C5878 8FBF001C */  lw         $ra, 0x1c($sp)
/* C647C 800C587C 27BD0028 */  addiu      $sp, $sp, 0x28
/* C6480 800C5880 03E00008 */  jr         $ra
/* C6484 800C5884 00000000 */   nop
/* C6488 800C5888 00000000 */  nop
/* C648C 800C588C 00000000 */  nop
