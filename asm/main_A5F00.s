.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A5300
/* A5F00 800A5300 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A5F04 800A5304 AFBF001C */  sw         $ra, 0x1c($sp)
/* A5F08 800A5308 AFA40048 */  sw         $a0, 0x48($sp)
/* A5F0C 800A530C AFA5004C */  sw         $a1, 0x4c($sp)
/* A5F10 800A5310 8FAE004C */  lw         $t6, 0x4c($sp)
/* A5F14 800A5314 8DCF0014 */  lw         $t7, 0x14($t6)
/* A5F18 800A5318 AFAF0030 */  sw         $t7, 0x30($sp)
/* A5F1C 800A531C 8FB80048 */  lw         $t8, 0x48($sp)
/* A5F20 800A5320 AF000000 */  sw         $zero, ($t8)
/* A5F24 800A5324 8FB9004C */  lw         $t9, 0x4c($sp)
/* A5F28 800A5328 8FA90048 */  lw         $t1, 0x48($sp)
/* A5F2C 800A532C 8F280004 */  lw         $t0, 4($t9)
/* A5F30 800A5330 AD28003C */  sw         $t0, 0x3c($t1)
/* A5F34 800A5334 8FAA0048 */  lw         $t2, 0x48($sp)
/* A5F38 800A5338 AD400020 */  sw         $zero, 0x20($t2)
/* A5F3C 800A533C 8FAB0048 */  lw         $t3, 0x48($sp)
/* A5F40 800A5340 AD60001C */  sw         $zero, 0x1c($t3)
/* A5F44 800A5344 8FAC004C */  lw         $t4, 0x4c($sp)
/* A5F48 800A5348 8FAE0048 */  lw         $t6, 0x48($sp)
/* A5F4C 800A534C 8D8D0018 */  lw         $t5, 0x18($t4)
/* A5F50 800A5350 ADCD0044 */  sw         $t5, 0x44($t6)
/* A5F54 800A5354 8FB80048 */  lw         $t8, 0x48($sp)
/* A5F58 800A5358 240F00A0 */  addiu      $t7, $zero, 0xa0
/* A5F5C 800A535C AF0F0048 */  sw         $t7, 0x48($t8)
/* A5F60 800A5360 8FB9004C */  lw         $t9, 0x4c($sp)
/* A5F64 800A5364 8FA90048 */  lw         $t1, 0x48($sp)
/* A5F68 800A5368 8F280010 */  lw         $t0, 0x10($t9)
/* A5F6C 800A536C AD280024 */  sw         $t0, 0x24($t1)
/* A5F70 800A5370 3C04800D */  lui        $a0, %hi(D_800D31B0)
/* A5F74 800A5374 240A001C */  addiu      $t2, $zero, 0x1c
/* A5F78 800A5378 AFAA0010 */  sw         $t2, 0x10($sp)
/* A5F7C 800A537C 248431B0 */  addiu      $a0, $a0, %lo(D_800D31B0)
/* A5F80 800A5380 2405003D */  addiu      $a1, $zero, 0x3d
/* A5F84 800A5384 8FA60030 */  lw         $a2, 0x30($sp)
/* A5F88 800A5388 0C02E384 */  jal        func_800B8E10
/* A5F8C 800A538C 24070001 */   addiu     $a3, $zero, 1
/* A5F90 800A5390 AFA2002C */  sw         $v0, 0x2c($sp)
/* A5F94 800A5394 0C02999F */  jal        func_800A667C
/* A5F98 800A5398 8FA4002C */   lw        $a0, 0x2c($sp)
/* A5F9C 800A539C 8FAB002C */  lw         $t3, 0x2c($sp)
/* A5FA0 800A53A0 8FAC0048 */  lw         $t4, 0x48($sp)
/* A5FA4 800A53A4 AD8B0038 */  sw         $t3, 0x38($t4)
/* A5FA8 800A53A8 3C04800D */  lui        $a0, %hi(D_800D31C8)
/* A5FAC 800A53AC 240D004C */  addiu      $t5, $zero, 0x4c
/* A5FB0 800A53B0 AFAD0010 */  sw         $t5, 0x10($sp)
/* A5FB4 800A53B4 248431C8 */  addiu      $a0, $a0, %lo(D_800D31C8)
/* A5FB8 800A53B8 24050045 */  addiu      $a1, $zero, 0x45
/* A5FBC 800A53BC 8FA60030 */  lw         $a2, 0x30($sp)
/* A5FC0 800A53C0 0C02E384 */  jal        func_800B8E10
/* A5FC4 800A53C4 24070001 */   addiu     $a3, $zero, 1
/* A5FC8 800A53C8 8FAE0048 */  lw         $t6, 0x48($sp)
/* A5FCC 800A53CC ADC20034 */  sw         $v0, 0x34($t6)
/* A5FD0 800A53D0 8FB80048 */  lw         $t8, 0x48($sp)
/* A5FD4 800A53D4 240F0001 */  addiu      $t7, $zero, 1
/* A5FD8 800A53D8 AF0F0040 */  sw         $t7, 0x40($t8)
/* A5FDC 800A53DC 8FB9004C */  lw         $t9, 0x4c($sp)
/* A5FE0 800A53E0 3C04800D */  lui        $a0, %hi(D_800D31E0)
/* A5FE4 800A53E4 24080004 */  addiu      $t0, $zero, 4
/* A5FE8 800A53E8 8F270004 */  lw         $a3, 4($t9)
/* A5FEC 800A53EC AFA80010 */  sw         $t0, 0x10($sp)
/* A5FF0 800A53F0 248431E0 */  addiu      $a0, $a0, %lo(D_800D31E0)
/* A5FF4 800A53F4 24050047 */  addiu      $a1, $zero, 0x47
/* A5FF8 800A53F8 0C02E384 */  jal        func_800B8E10
/* A5FFC 800A53FC 8FA60030 */   lw        $a2, 0x30($sp)
/* A6000 800A5400 AFA20028 */  sw         $v0, 0x28($sp)
/* A6004 800A5404 8FA90048 */  lw         $t1, 0x48($sp)
/* A6008 800A5408 8FAA004C */  lw         $t2, 0x4c($sp)
/* A600C 800A540C 8FA50028 */  lw         $a1, 0x28($sp)
/* A6010 800A5410 8D240034 */  lw         $a0, 0x34($t1)
/* A6014 800A5414 0C02996B */  jal        func_800A65AC
/* A6018 800A5418 8D460004 */   lw        $a2, 4($t2)
/* A601C 800A541C 3C04800D */  lui        $a0, %hi(D_800D31F8)
/* A6020 800A5420 240B0020 */  addiu      $t3, $zero, 0x20
/* A6024 800A5424 AFAB0010 */  sw         $t3, 0x10($sp)
/* A6028 800A5428 248431F8 */  addiu      $a0, $a0, %lo(D_800D31F8)
/* A602C 800A542C 2405004D */  addiu      $a1, $zero, 0x4d
/* A6030 800A5430 8FA60030 */  lw         $a2, 0x30($sp)
/* A6034 800A5434 0C02E384 */  jal        func_800B8E10
/* A6038 800A5438 24070001 */   addiu     $a3, $zero, 1
/* A603C 800A543C 8FAC0048 */  lw         $t4, 0x48($sp)
/* A6040 800A5440 AD820030 */  sw         $v0, 0x30($t4)
/* A6044 800A5444 8FAD004C */  lw         $t5, 0x4c($sp)
/* A6048 800A5448 3C04800D */  lui        $a0, %hi(D_800D3210)
/* A604C 800A544C 240E0004 */  addiu      $t6, $zero, 4
/* A6050 800A5450 8DA70004 */  lw         $a3, 4($t5)
/* A6054 800A5454 AFAE0010 */  sw         $t6, 0x10($sp)
/* A6058 800A5458 24843210 */  addiu      $a0, $a0, %lo(D_800D3210)
/* A605C 800A545C 2405004E */  addiu      $a1, $zero, 0x4e
/* A6060 800A5460 0C02E384 */  jal        func_800B8E10
/* A6064 800A5464 8FA60030 */   lw        $a2, 0x30($sp)
/* A6068 800A5468 AFA20028 */  sw         $v0, 0x28($sp)
/* A606C 800A546C 8FAF0048 */  lw         $t7, 0x48($sp)
/* A6070 800A5470 8FB8004C */  lw         $t8, 0x4c($sp)
/* A6074 800A5474 8FA50028 */  lw         $a1, 0x28($sp)
/* A6078 800A5478 8DE40030 */  lw         $a0, 0x30($t7)
/* A607C 800A547C 0C029985 */  jal        func_800A6614
/* A6080 800A5480 8F060004 */   lw        $a2, 4($t8)
/* A6084 800A5484 8FB9004C */  lw         $t9, 0x4c($sp)
/* A6088 800A5488 9328001C */  lbu        $t0, 0x1c($t9)
/* A608C 800A548C 11000008 */  beqz       $t0, .L800A54B0
/* A6090 800A5490 00000000 */   nop
/* A6094 800A5494 8FA40048 */  lw         $a0, 0x48($sp)
/* A6098 800A5498 00002825 */  or         $a1, $zero, $zero
/* A609C 800A549C 8FA6004C */  lw         $a2, 0x4c($sp)
/* A60A0 800A54A0 0C02E524 */  jal        func_800B9490
/* A60A4 800A54A4 8FA70030 */   lw        $a3, 0x30($sp)
/* A60A8 800A54A8 10000006 */  b          .L800A54C4
/* A60AC 800A54AC 00000000 */   nop
.L800A54B0:
/* A60B0 800A54B0 8FA90048 */  lw         $t1, 0x48($sp)
/* A60B4 800A54B4 24050002 */  addiu      $a1, $zero, 2
/* A60B8 800A54B8 8D240030 */  lw         $a0, 0x30($t1)
/* A60BC 800A54BC 0C029A20 */  jal        func_800A6880
/* A60C0 800A54C0 8D260034 */   lw        $a2, 0x34($t1)
.L800A54C4:
/* A60C4 800A54C4 8FAA0048 */  lw         $t2, 0x48($sp)
/* A60C8 800A54C8 AD400004 */  sw         $zero, 4($t2)
/* A60CC 800A54CC 8FAB0048 */  lw         $t3, 0x48($sp)
/* A60D0 800A54D0 AD600008 */  sw         $zero, 8($t3)
/* A60D4 800A54D4 8FAC0048 */  lw         $t4, 0x48($sp)
/* A60D8 800A54D8 AD800014 */  sw         $zero, 0x14($t4)
/* A60DC 800A54DC 8FAD0048 */  lw         $t5, 0x48($sp)
/* A60E0 800A54E0 ADA00018 */  sw         $zero, 0x18($t5)
/* A60E4 800A54E4 8FAE0048 */  lw         $t6, 0x48($sp)
/* A60E8 800A54E8 ADC0000C */  sw         $zero, 0xc($t6)
/* A60EC 800A54EC 8FAF0048 */  lw         $t7, 0x48($sp)
/* A60F0 800A54F0 ADE00010 */  sw         $zero, 0x10($t7)
/* A60F4 800A54F4 8FB8004C */  lw         $t8, 0x4c($sp)
/* A60F8 800A54F8 3C04800D */  lui        $a0, %hi(D_800D3228)
/* A60FC 800A54FC 241900DC */  addiu      $t9, $zero, 0xdc
/* A6100 800A5500 8F070004 */  lw         $a3, 4($t8)
/* A6104 800A5504 AFB90010 */  sw         $t9, 0x10($sp)
/* A6108 800A5508 24843228 */  addiu      $a0, $a0, %lo(D_800D3228)
/* A610C 800A550C 24050066 */  addiu      $a1, $zero, 0x66
/* A6110 800A5510 0C02E384 */  jal        func_800B8E10
/* A6114 800A5514 8FA60030 */   lw        $a2, 0x30($sp)
/* A6118 800A5518 AFA20034 */  sw         $v0, 0x34($sp)
/* A611C 800A551C 8FA8004C */  lw         $t0, 0x4c($sp)
/* A6120 800A5520 AFA00044 */  sw         $zero, 0x44($sp)
/* A6124 800A5524 8D090004 */  lw         $t1, 4($t0)
/* A6128 800A5528 1920003E */  blez       $t1, .L800A5624
/* A612C 800A552C 00000000 */   nop
.L800A5530:
/* A6130 800A5530 8FAA0044 */  lw         $t2, 0x44($sp)
/* A6134 800A5534 8FAC0034 */  lw         $t4, 0x34($sp)
/* A6138 800A5538 000A58C0 */  sll        $t3, $t2, 3
/* A613C 800A553C 016A5823 */  subu       $t3, $t3, $t2
/* A6140 800A5540 000B58C0 */  sll        $t3, $t3, 3
/* A6144 800A5544 016A5823 */  subu       $t3, $t3, $t2
/* A6148 800A5548 000B5880 */  sll        $t3, $t3, 2
/* A614C 800A554C 016C6821 */  addu       $t5, $t3, $t4
/* A6150 800A5550 AFAD003C */  sw         $t5, 0x3c($sp)
/* A6154 800A5554 8FA50048 */  lw         $a1, 0x48($sp)
/* A6158 800A5558 8FA4003C */  lw         $a0, 0x3c($sp)
/* A615C 800A555C 0C025DBA */  jal        func_800976E8
/* A6160 800A5560 24A50004 */   addiu     $a1, $a1, 4
/* A6164 800A5564 8FAE003C */  lw         $t6, 0x3c($sp)
/* A6168 800A5568 ADC00008 */  sw         $zero, 8($t6)
/* A616C 800A556C 8FA4003C */  lw         $a0, 0x3c($sp)
/* A6170 800A5570 8FAF0048 */  lw         $t7, 0x48($sp)
/* A6174 800A5574 8FA60030 */  lw         $a2, 0x30($sp)
/* A6178 800A5578 24840010 */  addiu      $a0, $a0, 0x10
/* A617C 800A557C 0C02990B */  jal        func_800A642C
/* A6180 800A5580 8DE50024 */   lw        $a1, 0x24($t7)
/* A6184 800A5584 8FA4003C */  lw         $a0, 0x3c($sp)
/* A6188 800A5588 24050001 */  addiu      $a1, $zero, 1
/* A618C 800A558C 00003025 */  or         $a2, $zero, $zero
/* A6190 800A5590 0C02A8D1 */  jal        func_800AA344
/* A6194 800A5594 24840010 */   addiu     $a0, $a0, 0x10
/* A6198 800A5598 8FA4003C */  lw         $a0, 0x3c($sp)
/* A619C 800A559C 8FA50030 */  lw         $a1, 0x30($sp)
/* A61A0 800A55A0 0C02993E */  jal        func_800A64F8
/* A61A4 800A55A4 24840058 */   addiu     $a0, $a0, 0x58
/* A61A8 800A55A8 8FB8003C */  lw         $t8, 0x3c($sp)
/* A61AC 800A55AC 24050001 */  addiu      $a1, $zero, 1
/* A61B0 800A55B0 27040058 */  addiu      $a0, $t8, 0x58
/* A61B4 800A55B4 0C02A4C0 */  jal        func_800A9300
/* A61B8 800A55B8 27060010 */   addiu     $a2, $t8, 0x10
/* A61BC 800A55BC 8FA4003C */  lw         $a0, 0x3c($sp)
/* A61C0 800A55C0 8FA50030 */  lw         $a1, 0x30($sp)
/* A61C4 800A55C4 0C0298C2 */  jal        func_800A6308
/* A61C8 800A55C8 2484008C */   addiu     $a0, $a0, 0x8c
/* A61CC 800A55CC 8FB9003C */  lw         $t9, 0x3c($sp)
/* A61D0 800A55D0 24050001 */  addiu      $a1, $zero, 1
/* A61D4 800A55D4 2724008C */  addiu      $a0, $t9, 0x8c
/* A61D8 800A55D8 0C02A12E */  jal        func_800A84B8
/* A61DC 800A55DC 27260058 */   addiu     $a2, $t9, 0x58
/* A61E0 800A55E0 8FA80048 */  lw         $t0, 0x48($sp)
/* A61E4 800A55E4 8FA6003C */  lw         $a2, 0x3c($sp)
/* A61E8 800A55E8 24050002 */  addiu      $a1, $zero, 2
/* A61EC 800A55EC 8D040034 */  lw         $a0, 0x34($t0)
/* A61F0 800A55F0 0C029F2C */  jal        func_800A7CB0
/* A61F4 800A55F4 24C6008C */   addiu     $a2, $a2, 0x8c
/* A61F8 800A55F8 8FA9003C */  lw         $t1, 0x3c($sp)
/* A61FC 800A55FC 252A008C */  addiu      $t2, $t1, 0x8c
/* A6200 800A5600 AD2A000C */  sw         $t2, 0xc($t1)
/* A6204 800A5604 8FAB0044 */  lw         $t3, 0x44($sp)
/* A6208 800A5608 8FAD004C */  lw         $t5, 0x4c($sp)
/* A620C 800A560C 256C0001 */  addiu      $t4, $t3, 1
/* A6210 800A5610 AFAC0044 */  sw         $t4, 0x44($sp)
/* A6214 800A5614 8DAE0004 */  lw         $t6, 4($t5)
/* A6218 800A5618 018E082A */  slt        $at, $t4, $t6
/* A621C 800A561C 1420FFC4 */  bnez       $at, .L800A5530
/* A6220 800A5620 00000000 */   nop
.L800A5624:
/* A6224 800A5624 8FAF0048 */  lw         $t7, 0x48($sp)
/* A6228 800A5628 8FA4002C */  lw         $a0, 0x2c($sp)
/* A622C 800A562C 24050001 */  addiu      $a1, $zero, 1
/* A6230 800A5630 0C02B5CD */  jal        func_800AD734
/* A6234 800A5634 8DE60030 */   lw        $a2, 0x30($t7)
/* A6238 800A5638 8FB8004C */  lw         $t8, 0x4c($sp)
/* A623C 800A563C 3C04800D */  lui        $a0, %hi(D_800D3240)
/* A6240 800A5640 2419001C */  addiu      $t9, $zero, 0x1c
/* A6244 800A5644 8F070008 */  lw         $a3, 8($t8)
/* A6248 800A5648 AFB90010 */  sw         $t9, 0x10($sp)
/* A624C 800A564C 24843240 */  addiu      $a0, $a0, %lo(D_800D3240)
/* A6250 800A5650 2405007F */  addiu      $a1, $zero, 0x7f
/* A6254 800A5654 0C02E384 */  jal        func_800B8E10
/* A6258 800A5658 8FA60030 */   lw        $a2, 0x30($sp)
/* A625C 800A565C AFA20024 */  sw         $v0, 0x24($sp)
/* A6260 800A5660 8FA80048 */  lw         $t0, 0x48($sp)
/* A6264 800A5664 AD00002C */  sw         $zero, 0x2c($t0)
/* A6268 800A5668 8FAA004C */  lw         $t2, 0x4c($sp)
/* A626C 800A566C AFA00044 */  sw         $zero, 0x44($sp)
/* A6270 800A5670 8D490008 */  lw         $t1, 8($t2)
/* A6274 800A5674 19200017 */  blez       $t1, .L800A56D4
/* A6278 800A5678 00000000 */   nop
.L800A567C:
/* A627C 800A567C 8FAB0044 */  lw         $t3, 0x44($sp)
/* A6280 800A5680 8FAC0024 */  lw         $t4, 0x24($sp)
/* A6284 800A5684 000B68C0 */  sll        $t5, $t3, 3
/* A6288 800A5688 01AB6823 */  subu       $t5, $t5, $t3
/* A628C 800A568C 000D6880 */  sll        $t5, $t5, 2
/* A6290 800A5690 01AC7021 */  addu       $t6, $t5, $t4
/* A6294 800A5694 AFAE0020 */  sw         $t6, 0x20($sp)
/* A6298 800A5698 8FAF0048 */  lw         $t7, 0x48($sp)
/* A629C 800A569C 8FB90020 */  lw         $t9, 0x20($sp)
/* A62A0 800A56A0 8DF8002C */  lw         $t8, 0x2c($t7)
/* A62A4 800A56A4 AF380000 */  sw         $t8, ($t9)
/* A62A8 800A56A8 8FA80020 */  lw         $t0, 0x20($sp)
/* A62AC 800A56AC 8FAA0048 */  lw         $t2, 0x48($sp)
/* A62B0 800A56B0 AD48002C */  sw         $t0, 0x2c($t2)
/* A62B4 800A56B4 8FA90044 */  lw         $t1, 0x44($sp)
/* A62B8 800A56B8 8FAD004C */  lw         $t5, 0x4c($sp)
/* A62BC 800A56BC 252B0001 */  addiu      $t3, $t1, 1
/* A62C0 800A56C0 AFAB0044 */  sw         $t3, 0x44($sp)
/* A62C4 800A56C4 8DAC0008 */  lw         $t4, 8($t5)
/* A62C8 800A56C8 016C082A */  slt        $at, $t3, $t4
/* A62CC 800A56CC 1420FFEB */  bnez       $at, .L800A567C
/* A62D0 800A56D0 00000000 */   nop
.L800A56D4:
/* A62D4 800A56D4 8FAE0030 */  lw         $t6, 0x30($sp)
/* A62D8 800A56D8 8FAF0048 */  lw         $t7, 0x48($sp)
/* A62DC 800A56DC ADEE0028 */  sw         $t6, 0x28($t7)
/* A62E0 800A56E0 10000001 */  b          .L800A56E8
/* A62E4 800A56E4 00000000 */   nop
.L800A56E8:
/* A62E8 800A56E8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A62EC 800A56EC 27BD0048 */  addiu      $sp, $sp, 0x48
/* A62F0 800A56F0 03E00008 */  jr         $ra
/* A62F4 800A56F4 00000000 */   nop

glabel func_800A56F8
/* A62F8 800A56F8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A62FC 800A56FC AFBF0024 */  sw         $ra, 0x24($sp)
/* A6300 800A5700 AFA40058 */  sw         $a0, 0x58($sp)
/* A6304 800A5704 AFA5005C */  sw         $a1, 0x5c($sp)
/* A6308 800A5708 AFA60060 */  sw         $a2, 0x60($sp)
/* A630C 800A570C AFA70064 */  sw         $a3, 0x64($sp)
/* A6310 800A5710 AFB10020 */  sw         $s1, 0x20($sp)
/* A6314 800A5714 AFB0001C */  sw         $s0, 0x1c($sp)
/* A6318 800A5718 3C0E800D */  lui        $t6, %hi(D_800CC220)
/* A631C 800A571C 8DCEC220 */  lw         $t6, %lo(D_800CC220)($t6)
/* A6320 800A5720 AFAE004C */  sw         $t6, 0x4c($sp)
/* A6324 800A5724 A7A0004A */  sh         $zero, 0x4a($sp)
/* A6328 800A5728 8FAF0058 */  lw         $t7, 0x58($sp)
/* A632C 800A572C AFAF0044 */  sw         $t7, 0x44($sp)
/* A6330 800A5730 8FB80060 */  lw         $t8, 0x60($sp)
/* A6334 800A5734 AFB80038 */  sw         $t8, 0x38($sp)
/* A6338 800A5738 8FB9004C */  lw         $t9, 0x4c($sp)
/* A633C 800A573C 8F280000 */  lw         $t0, ($t9)
/* A6340 800A5740 15000005 */  bnez       $t0, .L800A5758
/* A6344 800A5744 00000000 */   nop
/* A6348 800A5748 8FA9005C */  lw         $t1, 0x5c($sp)
/* A634C 800A574C AD200000 */  sw         $zero, ($t1)
/* A6350 800A5750 1000007E */  b          .L800A594C
/* A6354 800A5754 8FA20058 */   lw        $v0, 0x58($sp)
.L800A5758:
/* A6358 800A5758 8FA4004C */  lw         $a0, 0x4c($sp)
/* A635C 800A575C 0C0296D1 */  jal        func_800A5B44
/* A6360 800A5760 27A50054 */   addiu     $a1, $sp, 0x54
/* A6364 800A5764 8FAA004C */  lw         $t2, 0x4c($sp)
/* A6368 800A5768 AD42001C */  sw         $v0, 0x1c($t2)
/* A636C 800A576C 8FAB004C */  lw         $t3, 0x4c($sp)
/* A6370 800A5770 8FAF0064 */  lw         $t7, 0x64($sp)
/* A6374 800A5774 8D6C001C */  lw         $t4, 0x1c($t3)
/* A6378 800A5778 8D6D0020 */  lw         $t5, 0x20($t3)
/* A637C 800A577C 018D7023 */  subu       $t6, $t4, $t5
/* A6380 800A5780 01CF082A */  slt        $at, $t6, $t7
/* A6384 800A5784 10200021 */  beqz       $at, .L800A580C
/* A6388 800A5788 00000000 */   nop
.L800A578C:
/* A638C 800A578C 8FB8004C */  lw         $t8, 0x4c($sp)
/* A6390 800A5790 2401FFF0 */  addiu      $at, $zero, -0x10
/* A6394 800A5794 8F19001C */  lw         $t9, 0x1c($t8)
/* A6398 800A5798 03214024 */  and        $t0, $t9, $at
/* A639C 800A579C AF08001C */  sw         $t0, 0x1c($t8)
/* A63A0 800A57A0 8FA90054 */  lw         $t1, 0x54($sp)
/* A63A4 800A57A4 8D390008 */  lw         $t9, 8($t1)
/* A63A8 800A57A8 01202025 */  or         $a0, $t1, $zero
/* A63AC 800A57AC 0320F809 */  jalr       $t9
/* A63B0 800A57B0 00000000 */   nop
/* A63B4 800A57B4 00408825 */  or         $s1, $v0, $zero
/* A63B8 800A57B8 02202825 */  or         $a1, $s1, $zero
/* A63BC 800A57BC 0C0296A6 */  jal        func_800A5A98
/* A63C0 800A57C0 8FA4004C */   lw        $a0, 0x4c($sp)
/* A63C4 800A57C4 8FAA0054 */  lw         $t2, 0x54($sp)
/* A63C8 800A57C8 00408025 */  or         $s0, $v0, $zero
/* A63CC 800A57CC 8D4B0010 */  lw         $t3, 0x10($t2)
/* A63D0 800A57D0 01706021 */  addu       $t4, $t3, $s0
/* A63D4 800A57D4 AD4C0010 */  sw         $t4, 0x10($t2)
/* A63D8 800A57D8 8FA4004C */  lw         $a0, 0x4c($sp)
/* A63DC 800A57DC 0C0296D1 */  jal        func_800A5B44
/* A63E0 800A57E0 27A50054 */   addiu     $a1, $sp, 0x54
/* A63E4 800A57E4 8FAD004C */  lw         $t5, 0x4c($sp)
/* A63E8 800A57E8 ADA2001C */  sw         $v0, 0x1c($t5)
/* A63EC 800A57EC 8FAE004C */  lw         $t6, 0x4c($sp)
/* A63F0 800A57F0 8FA90064 */  lw         $t1, 0x64($sp)
/* A63F4 800A57F4 8DCF001C */  lw         $t7, 0x1c($t6)
/* A63F8 800A57F8 8DC80020 */  lw         $t0, 0x20($t6)
/* A63FC 800A57FC 01E8C023 */  subu       $t8, $t7, $t0
/* A6400 800A5800 0309082A */  slt        $at, $t8, $t1
/* A6404 800A5804 1420FFE1 */  bnez       $at, .L800A578C
/* A6408 800A5808 00000000 */   nop
.L800A580C:
/* A640C 800A580C 8FB9004C */  lw         $t9, 0x4c($sp)
/* A6410 800A5810 2401FFF0 */  addiu      $at, $zero, -0x10
/* A6414 800A5814 8F2B001C */  lw         $t3, 0x1c($t9)
/* A6418 800A5818 01616024 */  and        $t4, $t3, $at
/* A641C 800A581C AF2C001C */  sw         $t4, 0x1c($t9)
/* A6420 800A5820 8FAA0064 */  lw         $t2, 0x64($sp)
/* A6424 800A5824 1940003D */  blez       $t2, .L800A591C
/* A6428 800A5828 00000000 */   nop
.L800A582C:
/* A642C 800A582C 8FAD004C */  lw         $t5, 0x4c($sp)
/* A6430 800A5830 8FAF0064 */  lw         $t7, 0x64($sp)
/* A6434 800A5834 8DAE0048 */  lw         $t6, 0x48($t5)
/* A6438 800A5838 01CF082A */  slt        $at, $t6, $t7
/* A643C 800A583C 10200003 */  beqz       $at, .L800A584C
/* A6440 800A5840 00000000 */   nop
/* A6444 800A5844 10000003 */  b          .L800A5854
/* A6448 800A5848 AFAE003C */   sw        $t6, 0x3c($sp)
.L800A584C:
/* A644C 800A584C 8FA80064 */  lw         $t0, 0x64($sp)
/* A6450 800A5850 AFA8003C */  sw         $t0, 0x3c($sp)
.L800A5854:
/* A6454 800A5854 8FB80044 */  lw         $t8, 0x44($sp)
/* A6458 800A5858 AFB80040 */  sw         $t8, 0x40($sp)
/* A645C 800A585C 8FA90040 */  lw         $t1, 0x40($sp)
/* A6460 800A5860 252B0008 */  addiu      $t3, $t1, 8
/* A6464 800A5864 AFAB0040 */  sw         $t3, 0x40($sp)
/* A6468 800A5868 AFA90034 */  sw         $t1, 0x34($sp)
/* A646C 800A586C 8FB90034 */  lw         $t9, 0x34($sp)
/* A6470 800A5870 3C0C0700 */  lui        $t4, 0x700
/* A6474 800A5874 AF2C0000 */  sw         $t4, ($t9)
/* A6478 800A5878 8FAA0034 */  lw         $t2, 0x34($sp)
/* A647C 800A587C AD400004 */  sw         $zero, 4($t2)
/* A6480 800A5880 8FAD004C */  lw         $t5, 0x4c($sp)
/* A6484 800A5884 8DAF0038 */  lw         $t7, 0x38($t5)
/* A6488 800A5888 AFAF0050 */  sw         $t7, 0x50($sp)
/* A648C 800A588C 8FAE0050 */  lw         $t6, 0x50($sp)
/* A6490 800A5890 24050006 */  addiu      $a1, $zero, 6
/* A6494 800A5894 8FA60038 */  lw         $a2, 0x38($sp)
/* A6498 800A5898 8DD90008 */  lw         $t9, 8($t6)
/* A649C 800A589C 01C02025 */  or         $a0, $t6, $zero
/* A64A0 800A58A0 0320F809 */  jalr       $t9
/* A64A4 800A58A4 00000000 */   nop
/* A64A8 800A58A8 8FB8004C */  lw         $t8, 0x4c($sp)
/* A64AC 800A58AC 8FA90040 */  lw         $t1, 0x40($sp)
/* A64B0 800A58B0 8FA80050 */  lw         $t0, 0x50($sp)
/* A64B4 800A58B4 8F070020 */  lw         $a3, 0x20($t8)
/* A64B8 800A58B8 AFA90010 */  sw         $t1, 0x10($sp)
/* A64BC 800A58BC 8D190004 */  lw         $t9, 4($t0)
/* A64C0 800A58C0 27A5004A */  addiu      $a1, $sp, 0x4a
/* A64C4 800A58C4 8FA6003C */  lw         $a2, 0x3c($sp)
/* A64C8 800A58C8 0320F809 */  jalr       $t9
/* A64CC 800A58CC 01002025 */   or        $a0, $t0, $zero
/* A64D0 800A58D0 AFA20044 */  sw         $v0, 0x44($sp)
/* A64D4 800A58D4 8FAB0064 */  lw         $t3, 0x64($sp)
/* A64D8 800A58D8 8FAC003C */  lw         $t4, 0x3c($sp)
/* A64DC 800A58DC 016C5023 */  subu       $t2, $t3, $t4
/* A64E0 800A58E0 AFAA0064 */  sw         $t2, 0x64($sp)
/* A64E4 800A58E4 8FAF003C */  lw         $t7, 0x3c($sp)
/* A64E8 800A58E8 8FAD0038 */  lw         $t5, 0x38($sp)
/* A64EC 800A58EC 000F7040 */  sll        $t6, $t7, 1
/* A64F0 800A58F0 000EC040 */  sll        $t8, $t6, 1
/* A64F4 800A58F4 01B84821 */  addu       $t1, $t5, $t8
/* A64F8 800A58F8 AFA90038 */  sw         $t1, 0x38($sp)
/* A64FC 800A58FC 8FA8004C */  lw         $t0, 0x4c($sp)
/* A6500 800A5900 8FAB003C */  lw         $t3, 0x3c($sp)
/* A6504 800A5904 8D190020 */  lw         $t9, 0x20($t0)
/* A6508 800A5908 032B6021 */  addu       $t4, $t9, $t3
/* A650C 800A590C AD0C0020 */  sw         $t4, 0x20($t0)
/* A6510 800A5910 8FAA0064 */  lw         $t2, 0x64($sp)
/* A6514 800A5914 1D40FFC5 */  bgtz       $t2, .L800A582C
/* A6518 800A5918 00000000 */   nop
.L800A591C:
/* A651C 800A591C 8FAF0044 */  lw         $t7, 0x44($sp)
/* A6520 800A5920 8FAE0058 */  lw         $t6, 0x58($sp)
/* A6524 800A5924 8FA9005C */  lw         $t1, 0x5c($sp)
/* A6528 800A5928 01EE6823 */  subu       $t5, $t7, $t6
/* A652C 800A592C 000DC0C3 */  sra        $t8, $t5, 3
/* A6530 800A5930 AD380000 */  sw         $t8, ($t1)
/* A6534 800A5934 0C02967D */  jal        func_800A59F4
/* A6538 800A5938 8FA4004C */   lw        $a0, 0x4c($sp)
/* A653C 800A593C 10000003 */  b          .L800A594C
/* A6540 800A5940 8FA20044 */   lw        $v0, 0x44($sp)
/* A6544 800A5944 10000001 */  b          .L800A594C
/* A6548 800A5948 00000000 */   nop
.L800A594C:
/* A654C 800A594C 8FBF0024 */  lw         $ra, 0x24($sp)
/* A6550 800A5950 8FB0001C */  lw         $s0, 0x1c($sp)
/* A6554 800A5954 8FB10020 */  lw         $s1, 0x20($sp)
/* A6558 800A5958 03E00008 */  jr         $ra
/* A655C 800A595C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800A5960
/* A6560 800A5960 27BDFFF8 */  addiu      $sp, $sp, -8
/* A6564 800A5964 AFA00004 */  sw         $zero, 4($sp)
/* A6568 800A5968 3C0E800D */  lui        $t6, %hi(D_800CC220)
/* A656C 800A596C 8DCEC220 */  lw         $t6, %lo(D_800CC220)($t6)
/* A6570 800A5970 AFAE0000 */  sw         $t6, ($sp)
/* A6574 800A5974 8FAF0000 */  lw         $t7, ($sp)
/* A6578 800A5978 8DF8002C */  lw         $t8, 0x2c($t7)
/* A657C 800A597C 1300000A */  beqz       $t8, .L800A59A8
/* A6580 800A5980 00000000 */   nop
/* A6584 800A5984 8FB90000 */  lw         $t9, ($sp)
/* A6588 800A5988 8F28002C */  lw         $t0, 0x2c($t9)
/* A658C 800A598C AFA80004 */  sw         $t0, 4($sp)
/* A6590 800A5990 8FA90000 */  lw         $t1, ($sp)
/* A6594 800A5994 8D2A002C */  lw         $t2, 0x2c($t1)
/* A6598 800A5998 8D4B0000 */  lw         $t3, ($t2)
/* A659C 800A599C AD2B002C */  sw         $t3, 0x2c($t1)
/* A65A0 800A59A0 8FAC0004 */  lw         $t4, 4($sp)
/* A65A4 800A59A4 AD800000 */  sw         $zero, ($t4)
.L800A59A8:
/* A65A8 800A59A8 10000003 */  b          .L800A59B8
/* A65AC 800A59AC 8FA20004 */   lw        $v0, 4($sp)
/* A65B0 800A59B0 10000001 */  b          .L800A59B8
/* A65B4 800A59B4 00000000 */   nop
.L800A59B8:
/* A65B8 800A59B8 03E00008 */  jr         $ra
/* A65BC 800A59BC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A59C0
/* A65C0 800A59C0 27BDFFF8 */  addiu      $sp, $sp, -8
/* A65C4 800A59C4 3C0E800D */  lui        $t6, %hi(D_800CC220)
/* A65C8 800A59C8 8DCEC220 */  lw         $t6, %lo(D_800CC220)($t6)
/* A65CC 800A59CC AFAE0004 */  sw         $t6, 4($sp)
/* A65D0 800A59D0 8FAF0004 */  lw         $t7, 4($sp)
/* A65D4 800A59D4 8DF8002C */  lw         $t8, 0x2c($t7)
/* A65D8 800A59D8 AC980000 */  sw         $t8, ($a0)
/* A65DC 800A59DC 8FB90004 */  lw         $t9, 4($sp)
/* A65E0 800A59E0 AF24002C */  sw         $a0, 0x2c($t9)
/* A65E4 800A59E4 10000001 */  b          .L800A59EC
/* A65E8 800A59E8 00000000 */   nop
.L800A59EC:
/* A65EC 800A59EC 03E00008 */  jr         $ra
/* A65F0 800A59F0 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A59F4
/* A65F4 800A59F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A65F8 800A59F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A65FC 800A59FC AFA40020 */  sw         $a0, 0x20($sp)
/* A6600 800A5A00 8FAE0020 */  lw         $t6, 0x20($sp)
/* A6604 800A5A04 8DCF0014 */  lw         $t7, 0x14($t6)
/* A6608 800A5A08 11E0000D */  beqz       $t7, .L800A5A40
/* A660C 800A5A0C AFAF001C */   sw        $t7, 0x1c($sp)
.L800A5A10:
/* A6610 800A5A10 8FB8001C */  lw         $t8, 0x1c($sp)
/* A6614 800A5A14 AFB80018 */  sw         $t8, 0x18($sp)
/* A6618 800A5A18 0C025DC7 */  jal        func_8009771C
/* A661C 800A5A1C 8FA4001C */   lw        $a0, 0x1c($sp)
/* A6620 800A5A20 8FA50020 */  lw         $a1, 0x20($sp)
/* A6624 800A5A24 8FA4001C */  lw         $a0, 0x1c($sp)
/* A6628 800A5A28 0C025DBA */  jal        func_800976E8
/* A662C 800A5A2C 24A50004 */   addiu     $a1, $a1, 4
/* A6630 800A5A30 8FB90020 */  lw         $t9, 0x20($sp)
/* A6634 800A5A34 8F280014 */  lw         $t0, 0x14($t9)
/* A6638 800A5A38 1500FFF5 */  bnez       $t0, .L800A5A10
/* A663C 800A5A3C AFA8001C */   sw        $t0, 0x1c($sp)
.L800A5A40:
/* A6640 800A5A40 10000001 */  b          .L800A5A48
/* A6644 800A5A44 00000000 */   nop
.L800A5A48:
/* A6648 800A5A48 8FBF0014 */  lw         $ra, 0x14($sp)
/* A664C 800A5A4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A6650 800A5A50 03E00008 */  jr         $ra
/* A6654 800A5A54 00000000 */   nop

glabel func_800A5A58
/* A6658 800A5A58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A665C 800A5A5C AFBF0014 */  sw         $ra, 0x14($sp)
/* A6660 800A5A60 AFA40018 */  sw         $a0, 0x18($sp)
/* A6664 800A5A64 AFA5001C */  sw         $a1, 0x1c($sp)
/* A6668 800A5A68 0C025DC7 */  jal        func_8009771C
/* A666C 800A5A6C 8FA4001C */   lw        $a0, 0x1c($sp)
/* A6670 800A5A70 8FA50018 */  lw         $a1, 0x18($sp)
/* A6674 800A5A74 8FA4001C */  lw         $a0, 0x1c($sp)
/* A6678 800A5A78 0C025DBA */  jal        func_800976E8
/* A667C 800A5A7C 24A50014 */   addiu     $a1, $a1, 0x14
/* A6680 800A5A80 10000001 */  b          .L800A5A88
/* A6684 800A5A84 00000000 */   nop
.L800A5A88:
/* A6688 800A5A88 8FBF0014 */  lw         $ra, 0x14($sp)
/* A668C 800A5A8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* A6690 800A5A90 03E00008 */  jr         $ra
/* A6694 800A5A94 00000000 */   nop

glabel func_800A5A98
/* A6698 800A5A98 27BDFFF8 */  addiu      $sp, $sp, -8
/* A669C 800A5A9C 8C8E0044 */  lw         $t6, 0x44($a0)
/* A66A0 800A5AA0 44852000 */  mtc1       $a1, $f4
/* A66A4 800A5AA4 3C01800D */  lui        $at, %hi(D_800D3280)
/* A66A8 800A5AA8 448E4000 */  mtc1       $t6, $f8
/* A66AC 800A5AAC 468021A0 */  cvt.s.w    $f6, $f4
/* A66B0 800A5AB0 D4243280 */  ldc1       $f4, %lo(D_800D3280)($at)
/* A66B4 800A5AB4 3C013FE0 */  lui        $at, 0x3fe0
/* A66B8 800A5AB8 44813800 */  mtc1       $at, $f7
/* A66BC 800A5ABC 468042A0 */  cvt.s.w    $f10, $f8
/* A66C0 800A5AC0 460A3402 */  mul.s      $f16, $f6, $f10
/* A66C4 800A5AC4 44803000 */  mtc1       $zero, $f6
/* A66C8 800A5AC8 460084A1 */  cvt.d.s    $f18, $f16
/* A66CC 800A5ACC 46249203 */  div.d      $f8, $f18, $f4
/* A66D0 800A5AD0 46264280 */  add.d      $f10, $f8, $f6
/* A66D4 800A5AD4 46205420 */  cvt.s.d    $f16, $f10
/* A66D8 800A5AD8 E7B00004 */  swc1       $f16, 4($sp)
/* A66DC 800A5ADC C7B20004 */  lwc1       $f18, 4($sp)
/* A66E0 800A5AE0 4600910D */  trunc.w.s  $f4, $f18
/* A66E4 800A5AE4 44022000 */  mfc1       $v0, $f4
/* A66E8 800A5AE8 10000003 */  b          .L800A5AF8
/* A66EC 800A5AEC 00000000 */   nop
/* A66F0 800A5AF0 10000001 */  b          .L800A5AF8
/* A66F4 800A5AF4 00000000 */   nop
.L800A5AF8:
/* A66F8 800A5AF8 03E00008 */  jr         $ra
/* A66FC 800A5AFC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A5B00
/* A6700 800A5B00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6704 800A5B04 AFBF0014 */  sw         $ra, 0x14($sp)
/* A6708 800A5B08 AFA40018 */  sw         $a0, 0x18($sp)
/* A670C 800A5B0C AFA5001C */  sw         $a1, 0x1c($sp)
/* A6710 800A5B10 8FA40018 */  lw         $a0, 0x18($sp)
/* A6714 800A5B14 0C0296A6 */  jal        func_800A5A98
/* A6718 800A5B18 8FA5001C */   lw        $a1, 0x1c($sp)
/* A671C 800A5B1C 2401FFF0 */  addiu      $at, $zero, -0x10
/* A6720 800A5B20 00417024 */  and        $t6, $v0, $at
/* A6724 800A5B24 10000003 */  b          .L800A5B34
/* A6728 800A5B28 01C01025 */   or        $v0, $t6, $zero
/* A672C 800A5B2C 10000001 */  b          .L800A5B34
/* A6730 800A5B30 00000000 */   nop
.L800A5B34:
/* A6734 800A5B34 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6738 800A5B38 27BD0018 */  addiu      $sp, $sp, 0x18
/* A673C 800A5B3C 03E00008 */  jr         $ra
/* A6740 800A5B40 00000000 */   nop

glabel func_800A5B44
/* A6744 800A5B44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6748 800A5B48 AFBF0014 */  sw         $ra, 0x14($sp)
/* A674C 800A5B4C AFA40020 */  sw         $a0, 0x20($sp)
/* A6750 800A5B50 AFA50024 */  sw         $a1, 0x24($sp)
/* A6754 800A5B54 3C0E7FFF */  lui        $t6, 0x7fff
/* A6758 800A5B58 35CEFFFF */  ori        $t6, $t6, 0xffff
/* A675C 800A5B5C AFAE001C */  sw         $t6, 0x1c($sp)
/* A6760 800A5B60 8FAF0020 */  lw         $t7, 0x20($sp)
/* A6764 800A5B64 8DF80000 */  lw         $t8, ($t7)
/* A6768 800A5B68 13000003 */  beqz       $t8, .L800A5B78
/* A676C 800A5B6C 00000000 */   nop
/* A6770 800A5B70 10000007 */  b          .L800A5B90
/* A6774 800A5B74 00000000 */   nop
.L800A5B78:
/* A6778 800A5B78 3C04800D */  lui        $a0, %hi(D_800D3258)
/* A677C 800A5B7C 3C05800D */  lui        $a1, %hi(D_800D3264)
/* A6780 800A5B80 24A53264 */  addiu      $a1, $a1, %lo(D_800D3264)
/* A6784 800A5B84 24843258 */  addiu      $a0, $a0, %lo(D_800D3258)
/* A6788 800A5B88 0C02C480 */  jal        func_800B1200
/* A678C 800A5B8C 24060133 */   addiu     $a2, $zero, 0x133
.L800A5B90:
/* A6790 800A5B90 8FB90024 */  lw         $t9, 0x24($sp)
/* A6794 800A5B94 AF200000 */  sw         $zero, ($t9)
/* A6798 800A5B98 8FA80020 */  lw         $t0, 0x20($sp)
/* A679C 800A5B9C 8D090000 */  lw         $t1, ($t0)
/* A67A0 800A5BA0 11200017 */  beqz       $t1, .L800A5C00
/* A67A4 800A5BA4 AFA90018 */   sw        $t1, 0x18($sp)
.L800A5BA8:
/* A67A8 800A5BA8 8FAA0018 */  lw         $t2, 0x18($sp)
/* A67AC 800A5BAC 8FAC0020 */  lw         $t4, 0x20($sp)
/* A67B0 800A5BB0 8FAF001C */  lw         $t7, 0x1c($sp)
/* A67B4 800A5BB4 8D4B0010 */  lw         $t3, 0x10($t2)
/* A67B8 800A5BB8 8D8D0020 */  lw         $t5, 0x20($t4)
/* A67BC 800A5BBC 016D7023 */  subu       $t6, $t3, $t5
/* A67C0 800A5BC0 01CF082A */  slt        $at, $t6, $t7
/* A67C4 800A5BC4 1020000A */  beqz       $at, .L800A5BF0
/* A67C8 800A5BC8 00000000 */   nop
/* A67CC 800A5BCC 8FB80018 */  lw         $t8, 0x18($sp)
/* A67D0 800A5BD0 8FB90024 */  lw         $t9, 0x24($sp)
/* A67D4 800A5BD4 AF380000 */  sw         $t8, ($t9)
/* A67D8 800A5BD8 8FA80018 */  lw         $t0, 0x18($sp)
/* A67DC 800A5BDC 8FAA0020 */  lw         $t2, 0x20($sp)
/* A67E0 800A5BE0 8D090010 */  lw         $t1, 0x10($t0)
/* A67E4 800A5BE4 8D4C0020 */  lw         $t4, 0x20($t2)
/* A67E8 800A5BE8 012C5823 */  subu       $t3, $t1, $t4
/* A67EC 800A5BEC AFAB001C */  sw         $t3, 0x1c($sp)
.L800A5BF0:
/* A67F0 800A5BF0 8FAD0018 */  lw         $t5, 0x18($sp)
/* A67F4 800A5BF4 8DAE0000 */  lw         $t6, ($t5)
/* A67F8 800A5BF8 15C0FFEB */  bnez       $t6, .L800A5BA8
/* A67FC 800A5BFC AFAE0018 */   sw        $t6, 0x18($sp)
.L800A5C00:
/* A6800 800A5C00 8FAF0024 */  lw         $t7, 0x24($sp)
/* A6804 800A5C04 8DF80000 */  lw         $t8, ($t7)
/* A6808 800A5C08 10000003 */  b          .L800A5C18
/* A680C 800A5C0C 8F020010 */   lw        $v0, 0x10($t8)
/* A6810 800A5C10 10000001 */  b          .L800A5C18
/* A6814 800A5C14 00000000 */   nop
.L800A5C18:
/* A6818 800A5C18 8FBF0014 */  lw         $ra, 0x14($sp)
/* A681C 800A5C1C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A6820 800A5C20 03E00008 */  jr         $ra
/* A6824 800A5C24 00000000 */   nop
/* A6828 800A5C28 00000000 */  nop
/* A682C 800A5C2C 00000000 */  nop
