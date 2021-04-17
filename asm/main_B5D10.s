.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B5110
/* B5D10 800B5110 4442F800 */  cfc1       $v0, $31
/* B5D14 800B5114 44C4F800 */  ctc1       $a0, $31
/* B5D18 800B5118 03E00008 */  jr         $ra
/* B5D1C 800B511C 00000000 */   nop

glabel func_800B5120
/* B5D20 800B5120 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* B5D24 800B5124 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5D28 800B5128 AFA40150 */  sw         $a0, 0x150($sp)
/* B5D2C 800B512C AFA50154 */  sw         $a1, 0x154($sp)
/* B5D30 800B5130 AFA60158 */  sw         $a2, 0x158($sp)
/* B5D34 800B5134 8FAF0150 */  lw         $t7, 0x150($sp)
/* B5D38 800B5138 8FAE0154 */  lw         $t6, 0x154($sp)
/* B5D3C 800B513C 8DF80050 */  lw         $t8, 0x50($t7)
/* B5D40 800B5140 01D8082A */  slt        $at, $t6, $t8
/* B5D44 800B5144 10200003 */  beqz       $at, .L800B5154
/* B5D48 800B5148 00000000 */   nop
/* B5D4C 800B514C 05C10003 */  bgez       $t6, .L800B515C
/* B5D50 800B5150 00000000 */   nop
.L800B5154:
/* B5D54 800B5154 100000B2 */  b          .L800B5420
/* B5D58 800B5158 24020005 */   addiu     $v0, $zero, 5
.L800B515C:
/* B5D5C 800B515C 8FB90150 */  lw         $t9, 0x150($sp)
/* B5D60 800B5160 8F280000 */  lw         $t0, ($t9)
/* B5D64 800B5164 31090001 */  andi       $t1, $t0, 1
/* B5D68 800B5168 15200003 */  bnez       $t1, .L800B5178
/* B5D6C 800B516C 00000000 */   nop
/* B5D70 800B5170 100000AB */  b          .L800B5420
/* B5D74 800B5174 24020005 */   addiu     $v0, $zero, 5
.L800B5178:
/* B5D78 800B5178 0C0290BF */  jal        func_800A42FC
/* B5D7C 800B517C 8FA40150 */   lw        $a0, 0x150($sp)
/* B5D80 800B5180 24010002 */  addiu      $at, $zero, 2
/* B5D84 800B5184 14410003 */  bne        $v0, $at, .L800B5194
/* B5D88 800B5188 00000000 */   nop
/* B5D8C 800B518C 100000A4 */  b          .L800B5420
/* B5D90 800B5190 24020002 */   addiu     $v0, $zero, 2
.L800B5194:
/* B5D94 800B5194 8FAA0150 */  lw         $t2, 0x150($sp)
/* B5D98 800B5198 914B0065 */  lbu        $t3, 0x65($t2)
/* B5D9C 800B519C 1160000B */  beqz       $t3, .L800B51CC
/* B5DA0 800B51A0 00000000 */   nop
/* B5DA4 800B51A4 8FAC0150 */  lw         $t4, 0x150($sp)
/* B5DA8 800B51A8 A1800065 */  sb         $zero, 0x65($t4)
/* B5DAC 800B51AC 0C0291D5 */  jal        func_800A4754
/* B5DB0 800B51B0 8FA40150 */   lw        $a0, 0x150($sp)
/* B5DB4 800B51B4 AFA2014C */  sw         $v0, 0x14c($sp)
/* B5DB8 800B51B8 8FAD014C */  lw         $t5, 0x14c($sp)
/* B5DBC 800B51BC 11A00003 */  beqz       $t5, .L800B51CC
/* B5DC0 800B51C0 00000000 */   nop
/* B5DC4 800B51C4 10000096 */  b          .L800B5420
/* B5DC8 800B51C8 8FA2014C */   lw        $v0, 0x14c($sp)
.L800B51CC:
/* B5DCC 800B51CC 8FAF0150 */  lw         $t7, 0x150($sp)
/* B5DD0 800B51D0 8FAE0154 */  lw         $t6, 0x154($sp)
/* B5DD4 800B51D4 27A70028 */  addiu      $a3, $sp, 0x28
/* B5DD8 800B51D8 8DF8005C */  lw         $t8, 0x5c($t7)
/* B5DDC 800B51DC 8DE40004 */  lw         $a0, 4($t7)
/* B5DE0 800B51E0 8DE50008 */  lw         $a1, 8($t7)
/* B5DE4 800B51E4 0C02E3D8 */  jal        func_800B8F60
/* B5DE8 800B51E8 030E3021 */   addu      $a2, $t8, $t6
/* B5DEC 800B51EC AFA2014C */  sw         $v0, 0x14c($sp)
/* B5DF0 800B51F0 8FB9014C */  lw         $t9, 0x14c($sp)
/* B5DF4 800B51F4 13200003 */  beqz       $t9, .L800B5204
/* B5DF8 800B51F8 00000000 */   nop
/* B5DFC 800B51FC 10000088 */  b          .L800B5420
/* B5E00 800B5200 8FA2014C */   lw        $v0, 0x14c($sp)
.L800B5204:
/* B5E04 800B5204 97A8002C */  lhu        $t0, 0x2c($sp)
/* B5E08 800B5208 11000004 */  beqz       $t0, .L800B521C
/* B5E0C 800B520C 00000000 */   nop
/* B5E10 800B5210 8FA90028 */  lw         $t1, 0x28($sp)
/* B5E14 800B5214 15200003 */  bnez       $t1, .L800B5224
/* B5E18 800B5218 00000000 */   nop
.L800B521C:
/* B5E1C 800B521C 10000080 */  b          .L800B5420
/* B5E20 800B5220 24020005 */   addiu     $v0, $zero, 5
.L800B5224:
/* B5E24 800B5224 8FAB0150 */  lw         $t3, 0x150($sp)
/* B5E28 800B5228 97AA002E */  lhu        $t2, 0x2e($sp)
/* B5E2C 800B522C 8D6C0060 */  lw         $t4, 0x60($t3)
/* B5E30 800B5230 014C082A */  slt        $at, $t2, $t4
/* B5E34 800B5234 10200003 */  beqz       $at, .L800B5244
/* B5E38 800B5238 00000000 */   nop
/* B5E3C 800B523C 10000078 */  b          .L800B5420
/* B5E40 800B5240 24020003 */   addiu     $v0, $zero, 3
.L800B5244:
/* B5E44 800B5244 AFA00148 */  sw         $zero, 0x148($sp)
/* B5E48 800B5248 93AD002F */  lbu        $t5, 0x2f($sp)
/* B5E4C 800B524C A3AD001E */  sb         $t5, 0x1e($sp)
/* B5E50 800B5250 93AF002E */  lbu        $t7, 0x2e($sp)
/* B5E54 800B5254 8FB80150 */  lw         $t8, 0x150($sp)
/* B5E58 800B5258 A3AF001F */  sb         $t7, 0x1f($sp)
/* B5E5C 800B525C 930E0064 */  lbu        $t6, 0x64($t8)
/* B5E60 800B5260 01EE082A */  slt        $at, $t7, $t6
/* B5E64 800B5264 10200042 */  beqz       $at, .L800B5370
/* B5E68 800B5268 00000000 */   nop
.L800B526C:
/* B5E6C 800B526C 8FA40150 */  lw         $a0, 0x150($sp)
/* B5E70 800B5270 27A50048 */  addiu      $a1, $sp, 0x48
/* B5E74 800B5274 00003025 */  or         $a2, $zero, $zero
/* B5E78 800B5278 0C029104 */  jal        func_800A4410
/* B5E7C 800B527C 93A7001F */   lbu       $a3, 0x1f($sp)
/* B5E80 800B5280 AFA2014C */  sw         $v0, 0x14c($sp)
/* B5E84 800B5284 8FB9014C */  lw         $t9, 0x14c($sp)
/* B5E88 800B5288 13200003 */  beqz       $t9, .L800B5298
/* B5E8C 800B528C 00000000 */   nop
/* B5E90 800B5290 10000063 */  b          .L800B5420
/* B5E94 800B5294 8FA2014C */   lw        $v0, 0x14c($sp)
.L800B5298:
/* B5E98 800B5298 93A9001E */  lbu        $t1, 0x1e($sp)
/* B5E9C 800B529C 27AA0048 */  addiu      $t2, $sp, 0x48
/* B5EA0 800B52A0 27A80024 */  addiu      $t0, $sp, 0x24
/* B5EA4 800B52A4 00095840 */  sll        $t3, $t1, 1
/* B5EA8 800B52A8 016A6021 */  addu       $t4, $t3, $t2
/* B5EAC 800B52AC 95810000 */  lhu        $at, ($t4)
/* B5EB0 800B52B0 A5010000 */  sh         $at, ($t0)
/* B5EB4 800B52B4 8FAF0148 */  lw         $t7, 0x148($sp)
/* B5EB8 800B52B8 25EE0001 */  addiu      $t6, $t7, 1
/* B5EBC 800B52BC AFAE0148 */  sw         $t6, 0x148($sp)
/* B5EC0 800B52C0 8FA90150 */  lw         $t1, 0x150($sp)
/* B5EC4 800B52C4 97B90024 */  lhu        $t9, 0x24($sp)
/* B5EC8 800B52C8 8D2B0060 */  lw         $t3, 0x60($t1)
/* B5ECC 800B52CC 032B082A */  slt        $at, $t9, $t3
/* B5ED0 800B52D0 1420001B */  bnez       $at, .L800B5340
/* B5ED4 800B52D4 00000000 */   nop
.L800B52D8:
/* B5ED8 800B52D8 8FAA0148 */  lw         $t2, 0x148($sp)
/* B5EDC 800B52DC 254D0001 */  addiu      $t5, $t2, 1
/* B5EE0 800B52E0 AFAD0148 */  sw         $t5, 0x148($sp)
/* B5EE4 800B52E4 93AC0025 */  lbu        $t4, 0x25($sp)
/* B5EE8 800B52E8 27AF0048 */  addiu      $t7, $sp, 0x48
/* B5EEC 800B52EC 27A80024 */  addiu      $t0, $sp, 0x24
/* B5EF0 800B52F0 000CC040 */  sll        $t8, $t4, 1
/* B5EF4 800B52F4 030F7021 */  addu       $t6, $t8, $t7
/* B5EF8 800B52F8 95C10000 */  lhu        $at, ($t6)
/* B5EFC 800B52FC A5010000 */  sh         $at, ($t0)
/* B5F00 800B5300 93AA0024 */  lbu        $t2, 0x24($sp)
/* B5F04 800B5304 93AD001F */  lbu        $t5, 0x1f($sp)
/* B5F08 800B5308 114D0007 */  beq        $t2, $t5, .L800B5328
/* B5F0C 800B530C 00000000 */   nop
/* B5F10 800B5310 93AC0024 */  lbu        $t4, 0x24($sp)
/* B5F14 800B5314 A3AC001F */  sb         $t4, 0x1f($sp)
/* B5F18 800B5318 93B80025 */  lbu        $t8, 0x25($sp)
/* B5F1C 800B531C A3B8001E */  sb         $t8, 0x1e($sp)
/* B5F20 800B5320 10000007 */  b          .L800B5340
/* B5F24 800B5324 00000000 */   nop
.L800B5328:
/* B5F28 800B5328 8FB90150 */  lw         $t9, 0x150($sp)
/* B5F2C 800B532C 97AF0024 */  lhu        $t7, 0x24($sp)
/* B5F30 800B5330 8F290060 */  lw         $t1, 0x60($t9)
/* B5F34 800B5334 01E9082A */  slt        $at, $t7, $t1
/* B5F38 800B5338 1020FFE7 */  beqz       $at, .L800B52D8
/* B5F3C 800B533C 00000000 */   nop
.L800B5340:
/* B5F40 800B5340 97A80024 */  lhu        $t0, 0x24($sp)
/* B5F44 800B5344 24010001 */  addiu      $at, $zero, 1
/* B5F48 800B5348 15010003 */  bne        $t0, $at, .L800B5358
/* B5F4C 800B534C 00000000 */   nop
/* B5F50 800B5350 10000007 */  b          .L800B5370
/* B5F54 800B5354 00000000 */   nop
.L800B5358:
/* B5F58 800B5358 8FAB0150 */  lw         $t3, 0x150($sp)
/* B5F5C 800B535C 93AE001F */  lbu        $t6, 0x1f($sp)
/* B5F60 800B5360 916A0064 */  lbu        $t2, 0x64($t3)
/* B5F64 800B5364 01CA082A */  slt        $at, $t6, $t2
/* B5F68 800B5368 1420FFC0 */  bnez       $at, .L800B526C
/* B5F6C 800B536C 00000000 */   nop
.L800B5370:
/* B5F70 800B5370 97AD0024 */  lhu        $t5, 0x24($sp)
/* B5F74 800B5374 24010001 */  addiu      $at, $zero, 1
/* B5F78 800B5378 11A10003 */  beq        $t5, $at, .L800B5388
/* B5F7C 800B537C 00000000 */   nop
/* B5F80 800B5380 10000027 */  b          .L800B5420
/* B5F84 800B5384 24020003 */   addiu     $v0, $zero, 3
.L800B5388:
/* B5F88 800B5388 8FAC0148 */  lw         $t4, 0x148($sp)
/* B5F8C 800B538C 8FB90158 */  lw         $t9, 0x158($sp)
/* B5F90 800B5390 000CC200 */  sll        $t8, $t4, 8
/* B5F94 800B5394 AF380000 */  sw         $t8, ($t9)
/* B5F98 800B5398 97AF002C */  lhu        $t7, 0x2c($sp)
/* B5F9C 800B539C 8FA90158 */  lw         $t1, 0x158($sp)
/* B5FA0 800B53A0 A52F0008 */  sh         $t7, 8($t1)
/* B5FA4 800B53A4 8FA80028 */  lw         $t0, 0x28($sp)
/* B5FA8 800B53A8 8FAB0158 */  lw         $t3, 0x158($sp)
/* B5FAC 800B53AC AD680004 */  sw         $t0, 4($t3)
/* B5FB0 800B53B0 AFA00020 */  sw         $zero, 0x20($sp)
.L800B53B4:
/* B5FB4 800B53B4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B5FB8 800B53B8 8FAD0158 */  lw         $t5, 0x158($sp)
/* B5FBC 800B53BC 03AE5021 */  addu       $t2, $sp, $t6
/* B5FC0 800B53C0 914A0038 */  lbu        $t2, 0x38($t2)
/* B5FC4 800B53C4 01AE6021 */  addu       $t4, $t5, $t6
/* B5FC8 800B53C8 A18A000E */  sb         $t2, 0xe($t4)
/* B5FCC 800B53CC 8FB80020 */  lw         $t8, 0x20($sp)
/* B5FD0 800B53D0 27190001 */  addiu      $t9, $t8, 1
/* B5FD4 800B53D4 2B210010 */  slti       $at, $t9, 0x10
/* B5FD8 800B53D8 1420FFF6 */  bnez       $at, .L800B53B4
/* B5FDC 800B53DC AFB90020 */   sw        $t9, 0x20($sp)
/* B5FE0 800B53E0 AFA00020 */  sw         $zero, 0x20($sp)
.L800B53E4:
/* B5FE4 800B53E4 8FAF0020 */  lw         $t7, 0x20($sp)
/* B5FE8 800B53E8 8FA80158 */  lw         $t0, 0x158($sp)
/* B5FEC 800B53EC 03AF4821 */  addu       $t1, $sp, $t7
/* B5FF0 800B53F0 91290034 */  lbu        $t1, 0x34($t1)
/* B5FF4 800B53F4 010F5821 */  addu       $t3, $t0, $t7
/* B5FF8 800B53F8 A169000A */  sb         $t1, 0xa($t3)
/* B5FFC 800B53FC 8FAD0020 */  lw         $t5, 0x20($sp)
/* B6000 800B5400 25AE0001 */  addiu      $t6, $t5, 1
/* B6004 800B5404 29C10004 */  slti       $at, $t6, 4
/* B6008 800B5408 1420FFF6 */  bnez       $at, .L800B53E4
/* B600C 800B540C AFAE0020 */   sw        $t6, 0x20($sp)
/* B6010 800B5410 10000003 */  b          .L800B5420
/* B6014 800B5414 00001025 */   or        $v0, $zero, $zero
/* B6018 800B5418 10000001 */  b          .L800B5420
/* B601C 800B541C 00000000 */   nop
.L800B5420:
/* B6020 800B5420 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6024 800B5424 27BD0150 */  addiu      $sp, $sp, 0x150
/* B6028 800B5428 03E00008 */  jr         $ra
/* B602C 800B542C 00000000 */   nop

glabel func_800B5430
/* B6030 800B5430 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B6034 800B5434 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6038 800B5438 AFA40068 */  sw         $a0, 0x68($sp)
/* B603C 800B543C AFA5006C */  sw         $a1, 0x6c($sp)
/* B6040 800B5440 AFA60070 */  sw         $a2, 0x70($sp)
/* B6044 800B5444 AFA00060 */  sw         $zero, 0x60($sp)
/* B6048 800B5448 0C026612 */  jal        func_80099848
/* B604C 800B544C 00000000 */   nop
/* B6050 800B5450 8FA40068 */  lw         $a0, 0x68($sp)
/* B6054 800B5454 0C02D5BC */  jal        func_800B56F0
/* B6058 800B5458 8FA50070 */   lw        $a1, 0x70($sp)
/* B605C 800B545C AFA20060 */  sw         $v0, 0x60($sp)
/* B6060 800B5460 0C026625 */  jal        func_80099894
/* B6064 800B5464 00000000 */   nop
/* B6068 800B5468 8FAE0060 */  lw         $t6, 0x60($sp)
/* B606C 800B546C 11C00003 */  beqz       $t6, .L800B547C
/* B6070 800B5470 00000000 */   nop
/* B6074 800B5474 10000098 */  b          .L800B56D8
/* B6078 800B5478 8FA20060 */   lw        $v0, 0x60($sp)
.L800B547C:
/* B607C 800B547C 8FAF0068 */  lw         $t7, 0x68($sp)
/* B6080 800B5480 8FB8006C */  lw         $t8, 0x6c($sp)
/* B6084 800B5484 AF0F0004 */  sw         $t7, 4($t8)
/* B6088 800B5488 8FB90070 */  lw         $t9, 0x70($sp)
/* B608C 800B548C 8FA8006C */  lw         $t0, 0x6c($sp)
/* B6090 800B5490 AD190008 */  sw         $t9, 8($t0)
/* B6094 800B5494 8FA9006C */  lw         $t1, 0x6c($sp)
/* B6098 800B5498 AD200000 */  sw         $zero, ($t1)
/* B609C 800B549C 8FAA006C */  lw         $t2, 0x6c($sp)
/* B60A0 800B54A0 A1400065 */  sb         $zero, 0x65($t2)
/* B60A4 800B54A4 0C0291D5 */  jal        func_800A4754
/* B60A8 800B54A8 8FA4006C */   lw        $a0, 0x6c($sp)
/* B60AC 800B54AC AFA20060 */  sw         $v0, 0x60($sp)
/* B60B0 800B54B0 8FAB0060 */  lw         $t3, 0x60($sp)
/* B60B4 800B54B4 11600003 */  beqz       $t3, .L800B54C4
/* B60B8 800B54B8 00000000 */   nop
/* B60BC 800B54BC 10000086 */  b          .L800B56D8
/* B60C0 800B54C0 8FA20060 */   lw        $v0, 0x60($sp)
.L800B54C4:
/* B60C4 800B54C4 8FAC006C */  lw         $t4, 0x6c($sp)
/* B60C8 800B54C8 24060001 */  addiu      $a2, $zero, 1
/* B60CC 800B54CC 27A7003C */  addiu      $a3, $sp, 0x3c
/* B60D0 800B54D0 8D840004 */  lw         $a0, 4($t4)
/* B60D4 800B54D4 0C02E3D8 */  jal        func_800B8F60
/* B60D8 800B54D8 8D850008 */   lw        $a1, 8($t4)
/* B60DC 800B54DC AFA20060 */  sw         $v0, 0x60($sp)
/* B60E0 800B54E0 8FAD0060 */  lw         $t5, 0x60($sp)
/* B60E4 800B54E4 11A00003 */  beqz       $t5, .L800B54F4
/* B60E8 800B54E8 00000000 */   nop
/* B60EC 800B54EC 1000007A */  b          .L800B56D8
/* B60F0 800B54F0 8FA20060 */   lw        $v0, 0x60($sp)
.L800B54F4:
/* B60F4 800B54F4 27A4003C */  addiu      $a0, $sp, 0x3c
/* B60F8 800B54F8 27A5005E */  addiu      $a1, $sp, 0x5e
/* B60FC 800B54FC 0C028E86 */  jal        func_800A3A18
/* B6100 800B5500 27A6005C */   addiu     $a2, $sp, 0x5c
/* B6104 800B5504 27AE003C */  addiu      $t6, $sp, 0x3c
/* B6108 800B5508 AFAE0038 */  sw         $t6, 0x38($sp)
/* B610C 800B550C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B6110 800B5510 97B9005E */  lhu        $t9, 0x5e($sp)
/* B6114 800B5514 95F8001C */  lhu        $t8, 0x1c($t7)
/* B6118 800B5518 17190005 */  bne        $t8, $t9, .L800B5530
/* B611C 800B551C 00000000 */   nop
/* B6120 800B5520 95E8001E */  lhu        $t0, 0x1e($t7)
/* B6124 800B5524 97A9005C */  lhu        $t1, 0x5c($sp)
/* B6128 800B5528 11090011 */  beq        $t0, $t1, .L800B5570
/* B612C 800B552C 00000000 */   nop
.L800B5530:
/* B6130 800B5530 8FA4006C */  lw         $a0, 0x6c($sp)
/* B6134 800B5534 0C028FB5 */  jal        func_800A3ED4
/* B6138 800B5538 8FA50038 */   lw        $a1, 0x38($sp)
/* B613C 800B553C AFA20060 */  sw         $v0, 0x60($sp)
/* B6140 800B5540 8FAA0060 */  lw         $t2, 0x60($sp)
/* B6144 800B5544 11400005 */  beqz       $t2, .L800B555C
/* B6148 800B5548 00000000 */   nop
/* B614C 800B554C 10000062 */  b          .L800B56D8
/* B6150 800B5550 8FA20060 */   lw        $v0, 0x60($sp)
/* B6154 800B5554 10000006 */  b          .L800B5570
/* B6158 800B5558 00000000 */   nop
.L800B555C:
/* B615C 800B555C 8FAB0060 */  lw         $t3, 0x60($sp)
/* B6160 800B5560 11600003 */  beqz       $t3, .L800B5570
/* B6164 800B5564 00000000 */   nop
/* B6168 800B5568 1000005B */  b          .L800B56D8
/* B616C 800B556C 8FA20060 */   lw        $v0, 0x60($sp)
.L800B5570:
/* B6170 800B5570 8FAC0038 */  lw         $t4, 0x38($sp)
/* B6174 800B5574 958D0018 */  lhu        $t5, 0x18($t4)
/* B6178 800B5578 31AE0001 */  andi       $t6, $t5, 1
/* B617C 800B557C 15C00014 */  bnez       $t6, .L800B55D0
/* B6180 800B5580 00000000 */   nop
/* B6184 800B5584 8FA4006C */  lw         $a0, 0x6c($sp)
/* B6188 800B5588 8FA50038 */  lw         $a1, 0x38($sp)
/* B618C 800B558C 0C028EA4 */  jal        func_800A3A90
/* B6190 800B5590 27A60018 */   addiu     $a2, $sp, 0x18
/* B6194 800B5594 AFA20060 */  sw         $v0, 0x60($sp)
/* B6198 800B5598 8FB80060 */  lw         $t8, 0x60($sp)
/* B619C 800B559C 13000003 */  beqz       $t8, .L800B55AC
/* B61A0 800B55A0 00000000 */   nop
/* B61A4 800B55A4 1000004C */  b          .L800B56D8
/* B61A8 800B55A8 8FA20060 */   lw        $v0, 0x60($sp)
.L800B55AC:
/* B61AC 800B55AC 27B90018 */  addiu      $t9, $sp, 0x18
/* B61B0 800B55B0 AFB90038 */  sw         $t9, 0x38($sp)
/* B61B4 800B55B4 8FAF0038 */  lw         $t7, 0x38($sp)
/* B61B8 800B55B8 95E80018 */  lhu        $t0, 0x18($t7)
/* B61BC 800B55BC 31090001 */  andi       $t1, $t0, 1
/* B61C0 800B55C0 15200003 */  bnez       $t1, .L800B55D0
/* B61C4 800B55C4 00000000 */   nop
/* B61C8 800B55C8 10000043 */  b          .L800B56D8
/* B61CC 800B55CC 2402000B */   addiu     $v0, $zero, 0xb
.L800B55D0:
/* B61D0 800B55D0 AFA00064 */  sw         $zero, 0x64($sp)
.L800B55D4:
/* B61D4 800B55D4 8FAA0038 */  lw         $t2, 0x38($sp)
/* B61D8 800B55D8 8FAB0064 */  lw         $t3, 0x64($sp)
/* B61DC 800B55DC 8FAE006C */  lw         $t6, 0x6c($sp)
/* B61E0 800B55E0 014B6021 */  addu       $t4, $t2, $t3
/* B61E4 800B55E4 918D0000 */  lbu        $t5, ($t4)
/* B61E8 800B55E8 01CBC021 */  addu       $t8, $t6, $t3
/* B61EC 800B55EC A30D000C */  sb         $t5, 0xc($t8)
/* B61F0 800B55F0 8FB90064 */  lw         $t9, 0x64($sp)
/* B61F4 800B55F4 272F0001 */  addiu      $t7, $t9, 1
/* B61F8 800B55F8 29E10020 */  slti       $at, $t7, 0x20
/* B61FC 800B55FC 1420FFF5 */  bnez       $at, .L800B55D4
/* B6200 800B5600 AFAF0064 */   sw        $t7, 0x64($sp)
/* B6204 800B5604 8FA80038 */  lw         $t0, 0x38($sp)
/* B6208 800B5608 8FAA006C */  lw         $t2, 0x6c($sp)
/* B620C 800B560C 9109001B */  lbu        $t1, 0x1b($t0)
/* B6210 800B5610 AD49004C */  sw         $t1, 0x4c($t2)
/* B6214 800B5614 8FAC0038 */  lw         $t4, 0x38($sp)
/* B6218 800B5618 8FAB006C */  lw         $t3, 0x6c($sp)
/* B621C 800B561C 918E001A */  lbu        $t6, 0x1a($t4)
/* B6220 800B5620 A16E0064 */  sb         $t6, 0x64($t3)
/* B6224 800B5624 8FAD006C */  lw         $t5, 0x6c($sp)
/* B6228 800B5628 91B80064 */  lbu        $t8, 0x64($t5)
/* B622C 800B562C 0018C840 */  sll        $t9, $t8, 1
/* B6230 800B5630 272F0003 */  addiu      $t7, $t9, 3
/* B6234 800B5634 ADAF0060 */  sw         $t7, 0x60($t5)
/* B6238 800B5638 8FA9006C */  lw         $t1, 0x6c($sp)
/* B623C 800B563C 24080010 */  addiu      $t0, $zero, 0x10
/* B6240 800B5640 AD280050 */  sw         $t0, 0x50($t1)
/* B6244 800B5644 8FAC006C */  lw         $t4, 0x6c($sp)
/* B6248 800B5648 240A0008 */  addiu      $t2, $zero, 8
/* B624C 800B564C AD8A0054 */  sw         $t2, 0x54($t4)
/* B6250 800B5650 8FAE006C */  lw         $t6, 0x6c($sp)
/* B6254 800B5654 91CB0064 */  lbu        $t3, 0x64($t6)
/* B6258 800B5658 000BC0C0 */  sll        $t8, $t3, 3
/* B625C 800B565C 27190008 */  addiu      $t9, $t8, 8
/* B6260 800B5660 ADD90058 */  sw         $t9, 0x58($t6)
/* B6264 800B5664 8FAF006C */  lw         $t7, 0x6c($sp)
/* B6268 800B5668 91E80064 */  lbu        $t0, 0x64($t7)
/* B626C 800B566C 8DED0058 */  lw         $t5, 0x58($t7)
/* B6270 800B5670 000848C0 */  sll        $t1, $t0, 3
/* B6274 800B5674 01A95021 */  addu       $t2, $t5, $t1
/* B6278 800B5678 ADEA005C */  sw         $t2, 0x5c($t7)
/* B627C 800B567C 8FAC006C */  lw         $t4, 0x6c($sp)
/* B6280 800B5680 24060007 */  addiu      $a2, $zero, 7
/* B6284 800B5684 8D840004 */  lw         $a0, 4($t4)
/* B6288 800B5688 8D850008 */  lw         $a1, 8($t4)
/* B628C 800B568C 0C02E3D8 */  jal        func_800B8F60
/* B6290 800B5690 2587002C */   addiu     $a3, $t4, 0x2c
/* B6294 800B5694 AFA20060 */  sw         $v0, 0x60($sp)
/* B6298 800B5698 8FAB0060 */  lw         $t3, 0x60($sp)
/* B629C 800B569C 11600003 */  beqz       $t3, .L800B56AC
/* B62A0 800B56A0 00000000 */   nop
/* B62A4 800B56A4 1000000C */  b          .L800B56D8
/* B62A8 800B56A8 8FA20060 */   lw        $v0, 0x60($sp)
.L800B56AC:
/* B62AC 800B56AC 0C02D65C */  jal        func_800B5970
/* B62B0 800B56B0 8FA4006C */   lw        $a0, 0x6c($sp)
/* B62B4 800B56B4 AFA20060 */  sw         $v0, 0x60($sp)
/* B62B8 800B56B8 8FB8006C */  lw         $t8, 0x6c($sp)
/* B62BC 800B56BC 8F190000 */  lw         $t9, ($t8)
/* B62C0 800B56C0 372E0001 */  ori        $t6, $t9, 1
/* B62C4 800B56C4 AF0E0000 */  sw         $t6, ($t8)
/* B62C8 800B56C8 10000003 */  b          .L800B56D8
/* B62CC 800B56CC 8FA20060 */   lw        $v0, 0x60($sp)
/* B62D0 800B56D0 10000001 */  b          .L800B56D8
/* B62D4 800B56D4 00000000 */   nop
.L800B56D8:
/* B62D8 800B56D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B62DC 800B56DC 27BD0068 */  addiu      $sp, $sp, 0x68
/* B62E0 800B56E0 03E00008 */  jr         $ra
/* B62E4 800B56E4 00000000 */   nop
/* B62E8 800B56E8 00000000 */  nop
/* B62EC 800B56EC 00000000 */  nop
