.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CF130
/* CFD30 800CF130 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* CFD34 800CF134 AFA50164 */  sw         $a1, 0x164($sp)
/* CFD38 800CF138 97AE0166 */  lhu        $t6, 0x166($sp)
/* CFD3C 800CF13C AFBF0024 */  sw         $ra, 0x24($sp)
/* CFD40 800CF140 AFA40160 */  sw         $a0, 0x160($sp)
/* CFD44 800CF144 AFA60168 */  sw         $a2, 0x168($sp)
/* CFD48 800CF148 AFA7016C */  sw         $a3, 0x16c($sp)
/* CFD4C 800CF14C 11C00004 */  beqz       $t6, .L800CF160
/* CFD50 800CF150 A7A00032 */   sh        $zero, 0x32($sp)
/* CFD54 800CF154 8FAF0168 */  lw         $t7, 0x168($sp)
/* CFD58 800CF158 15E00003 */  bnez       $t7, .L800CF168
/* CFD5C 800CF15C 00000000 */   nop
.L800CF160:
/* CFD60 800CF160 100000A7 */  b          .L800CF400
/* CFD64 800CF164 24020005 */   addiu     $v0, $zero, 5
.L800CF168:
/* CFD68 800CF168 8FB80160 */  lw         $t8, 0x160($sp)
/* CFD6C 800CF16C 8F190000 */  lw         $t9, ($t8)
/* CFD70 800CF170 33280001 */  andi       $t0, $t9, 1
/* CFD74 800CF174 15000003 */  bnez       $t0, .L800CF184
/* CFD78 800CF178 00000000 */   nop
/* CFD7C 800CF17C 100000A0 */  b          .L800CF400
/* CFD80 800CF180 24020005 */   addiu     $v0, $zero, 5
.L800CF184:
/* CFD84 800CF184 0C031D08 */  jal        func_800C7420
/* CFD88 800CF188 8FA40160 */   lw        $a0, 0x160($sp)
/* CFD8C 800CF18C 24010002 */  addiu      $at, $zero, 2
/* CFD90 800CF190 14410003 */  bne        $v0, $at, .L800CF1A0
/* CFD94 800CF194 00000000 */   nop
/* CFD98 800CF198 10000099 */  b          .L800CF400
/* CFD9C 800CF19C 24020002 */   addiu     $v0, $zero, 2
.L800CF1A0:
/* CFDA0 800CF1A0 8FA90160 */  lw         $t1, 0x160($sp)
/* CFDA4 800CF1A4 912A0065 */  lbu        $t2, 0x65($t1)
/* CFDA8 800CF1A8 1140000A */  beqz       $t2, .L800CF1D4
/* CFDAC 800CF1AC 00000000 */   nop
/* CFDB0 800CF1B0 A1200065 */  sb         $zero, 0x65($t1)
/* CFDB4 800CF1B4 0C031E0F */  jal        func_800C783C
/* CFDB8 800CF1B8 8FA40160 */   lw        $a0, 0x160($sp)
/* CFDBC 800CF1BC AFA20154 */  sw         $v0, 0x154($sp)
/* CFDC0 800CF1C0 8FAB0154 */  lw         $t3, 0x154($sp)
/* CFDC4 800CF1C4 11600003 */  beqz       $t3, .L800CF1D4
/* CFDC8 800CF1C8 00000000 */   nop
/* CFDCC 800CF1CC 1000008C */  b          .L800CF400
/* CFDD0 800CF1D0 01601025 */   or        $v0, $t3, $zero
.L800CF1D4:
/* CFDD4 800CF1D4 8FAC0170 */  lw         $t4, 0x170($sp)
/* CFDD8 800CF1D8 27AD015C */  addiu      $t5, $sp, 0x15c
/* CFDDC 800CF1DC AFAD0014 */  sw         $t5, 0x14($sp)
/* CFDE0 800CF1E0 8FA40160 */  lw         $a0, 0x160($sp)
/* CFDE4 800CF1E4 97A50166 */  lhu        $a1, 0x166($sp)
/* CFDE8 800CF1E8 8FA60168 */  lw         $a2, 0x168($sp)
/* CFDEC 800CF1EC 8FA7016C */  lw         $a3, 0x16c($sp)
/* CFDF0 800CF1F0 0C032AD4 */  jal        func_800CAB50
/* CFDF4 800CF1F4 AFAC0010 */   sw        $t4, 0x10($sp)
/* CFDF8 800CF1F8 AFA20154 */  sw         $v0, 0x154($sp)
/* CFDFC 800CF1FC 8FAE0154 */  lw         $t6, 0x154($sp)
/* CFE00 800CF200 11C00003 */  beqz       $t6, .L800CF210
/* CFE04 800CF204 00000000 */   nop
/* CFE08 800CF208 1000007D */  b          .L800CF400
/* CFE0C 800CF20C 01C01025 */   or        $v0, $t6, $zero
.L800CF210:
/* CFE10 800CF210 8FAF015C */  lw         $t7, 0x15c($sp)
/* CFE14 800CF214 2401FFFF */  addiu      $at, $zero, -1
/* CFE18 800CF218 15E10003 */  bne        $t7, $at, .L800CF228
/* CFE1C 800CF21C 00000000 */   nop
/* CFE20 800CF220 10000077 */  b          .L800CF400
/* CFE24 800CF224 24020005 */   addiu     $v0, $zero, 5
.L800CF228:
/* CFE28 800CF228 8FB80160 */  lw         $t8, 0x160($sp)
/* CFE2C 800CF22C 8FA8015C */  lw         $t0, 0x15c($sp)
/* CFE30 800CF230 27A70034 */  addiu      $a3, $sp, 0x34
/* CFE34 800CF234 8F19005C */  lw         $t9, 0x5c($t8)
/* CFE38 800CF238 8F040004 */  lw         $a0, 4($t8)
/* CFE3C 800CF23C 8F050008 */  lw         $a1, 8($t8)
/* CFE40 800CF240 0C034C10 */  jal        func_800D3040
/* CFE44 800CF244 03283021 */   addu      $a2, $t9, $t0
/* CFE48 800CF248 AFA20154 */  sw         $v0, 0x154($sp)
/* CFE4C 800CF24C 8FAA0154 */  lw         $t2, 0x154($sp)
/* CFE50 800CF250 11400003 */  beqz       $t2, .L800CF260
/* CFE54 800CF254 00000000 */   nop
/* CFE58 800CF258 10000069 */  b          .L800CF400
/* CFE5C 800CF25C 01401025 */   or        $v0, $t2, $zero
.L800CF260:
/* CFE60 800CF260 93A9003B */  lbu        $t1, 0x3b($sp)
/* CFE64 800CF264 93AB003A */  lbu        $t3, 0x3a($sp)
/* CFE68 800CF268 8FAC0160 */  lw         $t4, 0x160($sp)
/* CFE6C 800CF26C A3A9002F */  sb         $t1, 0x2f($sp)
/* CFE70 800CF270 A3AB002E */  sb         $t3, 0x2e($sp)
/* CFE74 800CF274 918D0064 */  lbu        $t5, 0x64($t4)
/* CFE78 800CF278 016D082A */  slt        $at, $t3, $t5
/* CFE7C 800CF27C 10200036 */  beqz       $at, .L800CF358
/* CFE80 800CF280 00000000 */   nop
.L800CF284:
/* CFE84 800CF284 8FA40160 */  lw         $a0, 0x160($sp)
/* CFE88 800CF288 27A50054 */  addiu      $a1, $sp, 0x54
/* CFE8C 800CF28C 00003025 */  or         $a2, $zero, $zero
/* CFE90 800CF290 0C031D47 */  jal        func_800C751C
/* CFE94 800CF294 93A7002E */   lbu       $a3, 0x2e($sp)
/* CFE98 800CF298 AFA20154 */  sw         $v0, 0x154($sp)
/* CFE9C 800CF29C 8FAE0154 */  lw         $t6, 0x154($sp)
/* CFEA0 800CF2A0 11C00003 */  beqz       $t6, .L800CF2B0
/* CFEA4 800CF2A4 00000000 */   nop
/* CFEA8 800CF2A8 10000055 */  b          .L800CF400
/* CFEAC 800CF2AC 01C01025 */   or        $v0, $t6, $zero
.L800CF2B0:
/* CFEB0 800CF2B0 93AF002E */  lbu        $t7, 0x2e($sp)
/* CFEB4 800CF2B4 27B80030 */  addiu      $t8, $sp, 0x30
/* CFEB8 800CF2B8 24190001 */  addiu      $t9, $zero, 1
/* CFEBC 800CF2BC AFB90018 */  sw         $t9, 0x18($sp)
/* CFEC0 800CF2C0 AFB80014 */  sw         $t8, 0x14($sp)
/* CFEC4 800CF2C4 8FA40160 */  lw         $a0, 0x160($sp)
/* CFEC8 800CF2C8 27A50054 */  addiu      $a1, $sp, 0x54
/* CFECC 800CF2CC 93A6002F */  lbu        $a2, 0x2f($sp)
/* CFED0 800CF2D0 27A70032 */  addiu      $a3, $sp, 0x32
/* CFED4 800CF2D4 0C033D04 */  jal        func_800CF410
/* CFED8 800CF2D8 AFAF0010 */   sw        $t7, 0x10($sp)
/* CFEDC 800CF2DC AFA20154 */  sw         $v0, 0x154($sp)
/* CFEE0 800CF2E0 8FA80154 */  lw         $t0, 0x154($sp)
/* CFEE4 800CF2E4 11000003 */  beqz       $t0, .L800CF2F4
/* CFEE8 800CF2E8 00000000 */   nop
/* CFEEC 800CF2EC 10000044 */  b          .L800CF400
/* CFEF0 800CF2F0 01001025 */   or        $v0, $t0, $zero
.L800CF2F4:
/* CFEF4 800CF2F4 8FA40160 */  lw         $a0, 0x160($sp)
/* CFEF8 800CF2F8 27A50054 */  addiu      $a1, $sp, 0x54
/* CFEFC 800CF2FC 24060001 */  addiu      $a2, $zero, 1
/* CFF00 800CF300 0C031D47 */  jal        func_800C751C
/* CFF04 800CF304 93A7002E */   lbu       $a3, 0x2e($sp)
/* CFF08 800CF308 AFA20154 */  sw         $v0, 0x154($sp)
/* CFF0C 800CF30C 8FAA0154 */  lw         $t2, 0x154($sp)
/* CFF10 800CF310 11400003 */  beqz       $t2, .L800CF320
/* CFF14 800CF314 00000000 */   nop
/* CFF18 800CF318 10000039 */  b          .L800CF400
/* CFF1C 800CF31C 01401025 */   or        $v0, $t2, $zero
.L800CF320:
/* CFF20 800CF320 97A90030 */  lhu        $t1, 0x30($sp)
/* CFF24 800CF324 24010001 */  addiu      $at, $zero, 1
/* CFF28 800CF328 1121000B */  beq        $t1, $at, .L800CF358
/* CFF2C 800CF32C 00000000 */   nop
/* CFF30 800CF330 93AC0030 */  lbu        $t4, 0x30($sp)
/* CFF34 800CF334 93AB0031 */  lbu        $t3, 0x31($sp)
/* CFF38 800CF338 8FAE0160 */  lw         $t6, 0x160($sp)
/* CFF3C 800CF33C A3AC002E */  sb         $t4, 0x2e($sp)
/* CFF40 800CF340 A3AB002F */  sb         $t3, 0x2f($sp)
/* CFF44 800CF344 93AD002E */  lbu        $t5, 0x2e($sp)
/* CFF48 800CF348 91CF0064 */  lbu        $t7, 0x64($t6)
/* CFF4C 800CF34C 01AF082A */  slt        $at, $t5, $t7
/* CFF50 800CF350 1420FFCC */  bnez       $at, .L800CF284
/* CFF54 800CF354 00000000 */   nop
.L800CF358:
/* CFF58 800CF358 8FB90160 */  lw         $t9, 0x160($sp)
/* CFF5C 800CF35C 93B8002E */  lbu        $t8, 0x2e($sp)
/* CFF60 800CF360 93280064 */  lbu        $t0, 0x64($t9)
/* CFF64 800CF364 0308082A */  slt        $at, $t8, $t0
/* CFF68 800CF368 14200003 */  bnez       $at, .L800CF378
/* CFF6C 800CF36C 00000000 */   nop
/* CFF70 800CF370 10000023 */  b          .L800CF400
/* CFF74 800CF374 24020003 */   addiu     $v0, $zero, 3
.L800CF378:
/* CFF78 800CF378 AFA00034 */  sw         $zero, 0x34($sp)
/* CFF7C 800CF37C A7A00038 */  sh         $zero, 0x38($sp)
/* CFF80 800CF380 A7A0003A */  sh         $zero, 0x3a($sp)
/* CFF84 800CF384 A7A0003E */  sh         $zero, 0x3e($sp)
/* CFF88 800CF388 AFA00158 */  sw         $zero, 0x158($sp)
.L800CF38C:
/* CFF8C 800CF38C 8FAA0158 */  lw         $t2, 0x158($sp)
/* CFF90 800CF390 03AA4821 */  addu       $t1, $sp, $t2
/* CFF94 800CF394 A1200044 */  sb         $zero, 0x44($t1)
/* CFF98 800CF398 8FAC0158 */  lw         $t4, 0x158($sp)
/* CFF9C 800CF39C 258B0001 */  addiu      $t3, $t4, 1
/* CFFA0 800CF3A0 29610010 */  slti       $at, $t3, 0x10
/* CFFA4 800CF3A4 1420FFF9 */  bnez       $at, .L800CF38C
/* CFFA8 800CF3A8 AFAB0158 */   sw        $t3, 0x158($sp)
/* CFFAC 800CF3AC AFA00158 */  sw         $zero, 0x158($sp)
.L800CF3B0:
/* CFFB0 800CF3B0 8FAE0158 */  lw         $t6, 0x158($sp)
/* CFFB4 800CF3B4 03AE6821 */  addu       $t5, $sp, $t6
/* CFFB8 800CF3B8 A1A00040 */  sb         $zero, 0x40($t5)
/* CFFBC 800CF3BC 8FAF0158 */  lw         $t7, 0x158($sp)
/* CFFC0 800CF3C0 25F90001 */  addiu      $t9, $t7, 1
/* CFFC4 800CF3C4 2B210004 */  slti       $at, $t9, 4
/* CFFC8 800CF3C8 1420FFF9 */  bnez       $at, .L800CF3B0
/* CFFCC 800CF3CC AFB90158 */   sw        $t9, 0x158($sp)
/* CFFD0 800CF3D0 8FB80160 */  lw         $t8, 0x160($sp)
/* CFFD4 800CF3D4 A3A0003C */  sb         $zero, 0x3c($sp)
/* CFFD8 800CF3D8 8FAA015C */  lw         $t2, 0x15c($sp)
/* CFFDC 800CF3DC 8F08005C */  lw         $t0, 0x5c($t8)
/* CFFE0 800CF3E0 8F050008 */  lw         $a1, 8($t8)
/* CFFE4 800CF3E4 8F040004 */  lw         $a0, 4($t8)
/* CFFE8 800CF3E8 AFA00010 */  sw         $zero, 0x10($sp)
/* CFFEC 800CF3EC 27A70034 */  addiu      $a3, $sp, 0x34
/* CFFF0 800CF3F0 0C034668 */  jal        func_800D19A0
/* CFFF4 800CF3F4 010A3021 */   addu      $a2, $t0, $t2
/* CFFF8 800CF3F8 AFA20154 */  sw         $v0, 0x154($sp)
/* CFFFC 800CF3FC 8FA20154 */  lw         $v0, 0x154($sp)
.L800CF400:
/* D0000 800CF400 8FBF0024 */  lw         $ra, 0x24($sp)
/* D0004 800CF404 27BD0160 */  addiu      $sp, $sp, 0x160
/* D0008 800CF408 03E00008 */  jr         $ra
/* D000C 800CF40C 00000000 */   nop

glabel func_800CF410
/* D0010 800CF410 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D0014 800CF414 AFA60030 */  sw         $a2, 0x30($sp)
/* D0018 800CF418 93B80033 */  lbu        $t8, 0x33($sp)
/* D001C 800CF41C AFA5002C */  sw         $a1, 0x2c($sp)
/* D0020 800CF420 8FAF002C */  lw         $t7, 0x2c($sp)
/* D0024 800CF424 0018C840 */  sll        $t9, $t8, 1
/* D0028 800CF428 AFBF0014 */  sw         $ra, 0x14($sp)
/* D002C 800CF42C AFA40028 */  sw         $a0, 0x28($sp)
/* D0030 800CF430 AFA70034 */  sw         $a3, 0x34($sp)
/* D0034 800CF434 AFA0001C */  sw         $zero, 0x1c($sp)
/* D0038 800CF438 01F94021 */  addu       $t0, $t7, $t9
/* D003C 800CF43C 95010000 */  lhu        $at, ($t0)
/* D0040 800CF440 27AE0024 */  addiu      $t6, $sp, 0x24
/* D0044 800CF444 A5C10000 */  sh         $at, ($t6)
/* D0048 800CF448 97AC0024 */  lhu        $t4, 0x24($sp)
/* D004C 800CF44C 24010001 */  addiu      $at, $zero, 1
/* D0050 800CF450 1181000B */  beq        $t4, $at, .L800CF480
/* D0054 800CF454 00000000 */   nop
/* D0058 800CF458 93AD0024 */  lbu        $t5, 0x24($sp)
/* D005C 800CF45C 19A00004 */  blez       $t5, .L800CF470
/* D0060 800CF460 00000000 */   nop
/* D0064 800CF464 24180001 */  addiu      $t8, $zero, 1
/* D0068 800CF468 1000000E */  b          .L800CF4A4
/* D006C 800CF46C AFB80018 */   sw        $t8, 0x18($sp)
.L800CF470:
/* D0070 800CF470 8FAF0028 */  lw         $t7, 0x28($sp)
/* D0074 800CF474 8DF90060 */  lw         $t9, 0x60($t7)
/* D0078 800CF478 1000000A */  b          .L800CF4A4
/* D007C 800CF47C AFB90018 */   sw        $t9, 0x18($sp)
.L800CF480:
/* D0080 800CF480 93AA003B */  lbu        $t2, 0x3b($sp)
/* D0084 800CF484 19400004 */  blez       $t2, .L800CF498
/* D0088 800CF488 00000000 */   nop
/* D008C 800CF48C 24090001 */  addiu      $t1, $zero, 1
/* D0090 800CF490 10000004 */  b          .L800CF4A4
/* D0094 800CF494 AFA90018 */   sw        $t1, 0x18($sp)
.L800CF498:
/* D0098 800CF498 8FAE0028 */  lw         $t6, 0x28($sp)
/* D009C 800CF49C 8DC80060 */  lw         $t0, 0x60($t6)
/* D00A0 800CF4A0 AFA80018 */  sw         $t0, 0x18($sp)
.L800CF4A4:
/* D00A4 800CF4A4 93AB0025 */  lbu        $t3, 0x25($sp)
/* D00A8 800CF4A8 8FAC0018 */  lw         $t4, 0x18($sp)
/* D00AC 800CF4AC 016C082A */  slt        $at, $t3, $t4
/* D00B0 800CF4B0 10200007 */  beqz       $at, .L800CF4D0
/* D00B4 800CF4B4 00000000 */   nop
/* D00B8 800CF4B8 97AD0024 */  lhu        $t5, 0x24($sp)
/* D00BC 800CF4BC 24010001 */  addiu      $at, $zero, 1
/* D00C0 800CF4C0 11A10003 */  beq        $t5, $at, .L800CF4D0
/* D00C4 800CF4C4 00000000 */   nop
/* D00C8 800CF4C8 1000005F */  b          .L800CF648
/* D00CC 800CF4CC 24020003 */   addiu     $v0, $zero, 3
.L800CF4D0:
/* D00D0 800CF4D0 27AF0024 */  addiu      $t7, $sp, 0x24
/* D00D4 800CF4D4 95E10000 */  lhu        $at, ($t7)
/* D00D8 800CF4D8 8FB8003C */  lw         $t8, 0x3c($sp)
/* D00DC 800CF4DC A7010000 */  sh         $at, ($t8)
/* D00E0 800CF4E0 8FA90040 */  lw         $t1, 0x40($sp)
/* D00E4 800CF4E4 24010001 */  addiu      $at, $zero, 1
/* D00E8 800CF4E8 15210007 */  bne        $t1, $at, .L800CF508
/* D00EC 800CF4EC 00000000 */   nop
/* D00F0 800CF4F0 93AB0033 */  lbu        $t3, 0x33($sp)
/* D00F4 800CF4F4 8FA8002C */  lw         $t0, 0x2c($sp)
/* D00F8 800CF4F8 240E0003 */  addiu      $t6, $zero, 3
/* D00FC 800CF4FC 000B6040 */  sll        $t4, $t3, 1
/* D0100 800CF500 010C6821 */  addu       $t5, $t0, $t4
/* D0104 800CF504 A5AE0000 */  sh         $t6, ($t5)
.L800CF508:
/* D0108 800CF508 8FA40028 */  lw         $a0, 0x28($sp)
/* D010C 800CF50C 93A50033 */  lbu        $a1, 0x33($sp)
/* D0110 800CF510 8FA60034 */  lw         $a2, 0x34($sp)
/* D0114 800CF514 0C033D96 */  jal        func_800CF658
/* D0118 800CF518 93A7003B */   lbu       $a3, 0x3b($sp)
/* D011C 800CF51C AFA2001C */  sw         $v0, 0x1c($sp)
/* D0120 800CF520 8FB9001C */  lw         $t9, 0x1c($sp)
/* D0124 800CF524 13200003 */  beqz       $t9, .L800CF534
/* D0128 800CF528 00000000 */   nop
/* D012C 800CF52C 10000046 */  b          .L800CF648
/* D0130 800CF530 03201025 */   or        $v0, $t9, $zero
.L800CF534:
/* D0134 800CF534 97B80024 */  lhu        $t8, 0x24($sp)
/* D0138 800CF538 24010001 */  addiu      $at, $zero, 1
/* D013C 800CF53C 17010003 */  bne        $t8, $at, .L800CF54C
/* D0140 800CF540 00000000 */   nop
/* D0144 800CF544 10000040 */  b          .L800CF648
/* D0148 800CF548 00001025 */   or        $v0, $zero, $zero
.L800CF54C:
/* D014C 800CF54C 8FAA0028 */  lw         $t2, 0x28($sp)
/* D0150 800CF550 97AF0024 */  lhu        $t7, 0x24($sp)
/* D0154 800CF554 8D490060 */  lw         $t1, 0x60($t2)
/* D0158 800CF558 01E9082A */  slt        $at, $t7, $t1
/* D015C 800CF55C 14200025 */  bnez       $at, .L800CF5F4
/* D0160 800CF560 00000000 */   nop
.L800CF564:
/* D0164 800CF564 93AE0025 */  lbu        $t6, 0x25($sp)
/* D0168 800CF568 97AB0024 */  lhu        $t3, 0x24($sp)
/* D016C 800CF56C 8FAC002C */  lw         $t4, 0x2c($sp)
/* D0170 800CF570 000E6840 */  sll        $t5, $t6, 1
/* D0174 800CF574 A7AB0020 */  sh         $t3, 0x20($sp)
/* D0178 800CF578 018DC821 */  addu       $t9, $t4, $t5
/* D017C 800CF57C 97210000 */  lhu        $at, ($t9)
/* D0180 800CF580 27A80024 */  addiu      $t0, $sp, 0x24
/* D0184 800CF584 240F0003 */  addiu      $t7, $zero, 3
/* D0188 800CF588 A5010000 */  sh         $at, ($t0)
/* D018C 800CF58C 93AB0021 */  lbu        $t3, 0x21($sp)
/* D0190 800CF590 8FA9002C */  lw         $t1, 0x2c($sp)
/* D0194 800CF594 000B7040 */  sll        $t6, $t3, 1
/* D0198 800CF598 012E6021 */  addu       $t4, $t1, $t6
/* D019C 800CF59C A58F0000 */  sh         $t7, ($t4)
/* D01A0 800CF5A0 93A7003B */  lbu        $a3, 0x3b($sp)
/* D01A4 800CF5A4 8FA60034 */  lw         $a2, 0x34($sp)
/* D01A8 800CF5A8 93A50021 */  lbu        $a1, 0x21($sp)
/* D01AC 800CF5AC 0C033D96 */  jal        func_800CF658
/* D01B0 800CF5B0 8FA40028 */   lw        $a0, 0x28($sp)
/* D01B4 800CF5B4 AFA2001C */  sw         $v0, 0x1c($sp)
/* D01B8 800CF5B8 8FAD001C */  lw         $t5, 0x1c($sp)
/* D01BC 800CF5BC 11A00003 */  beqz       $t5, .L800CF5CC
/* D01C0 800CF5C0 00000000 */   nop
/* D01C4 800CF5C4 10000020 */  b          .L800CF648
/* D01C8 800CF5C8 01A01025 */   or        $v0, $t5, $zero
.L800CF5CC:
/* D01CC 800CF5CC 93B80024 */  lbu        $t8, 0x24($sp)
/* D01D0 800CF5D0 93A8003B */  lbu        $t0, 0x3b($sp)
/* D01D4 800CF5D4 17080007 */  bne        $t8, $t0, .L800CF5F4
/* D01D8 800CF5D8 00000000 */   nop
/* D01DC 800CF5DC 8FAA0028 */  lw         $t2, 0x28($sp)
/* D01E0 800CF5E0 97B90024 */  lhu        $t9, 0x24($sp)
/* D01E4 800CF5E4 8D4B0060 */  lw         $t3, 0x60($t2)
/* D01E8 800CF5E8 032B082A */  slt        $at, $t9, $t3
/* D01EC 800CF5EC 1020FFDD */  beqz       $at, .L800CF564
/* D01F0 800CF5F0 00000000 */   nop
.L800CF5F4:
/* D01F4 800CF5F4 8FAE0028 */  lw         $t6, 0x28($sp)
/* D01F8 800CF5F8 97A90024 */  lhu        $t1, 0x24($sp)
/* D01FC 800CF5FC 8DCF0060 */  lw         $t7, 0x60($t6)
/* D0200 800CF600 012F082A */  slt        $at, $t1, $t7
/* D0204 800CF604 1420000B */  bnez       $at, .L800CF634
/* D0208 800CF608 00000000 */   nop
/* D020C 800CF60C 93AC0024 */  lbu        $t4, 0x24($sp)
/* D0210 800CF610 93AD003B */  lbu        $t5, 0x3b($sp)
/* D0214 800CF614 158D0007 */  bne        $t4, $t5, .L800CF634
/* D0218 800CF618 00000000 */   nop
/* D021C 800CF61C 93AA0025 */  lbu        $t2, 0x25($sp)
/* D0220 800CF620 8FA8002C */  lw         $t0, 0x2c($sp)
/* D0224 800CF624 24180003 */  addiu      $t8, $zero, 3
/* D0228 800CF628 000AC840 */  sll        $t9, $t2, 1
/* D022C 800CF62C 01195821 */  addu       $t3, $t0, $t9
/* D0230 800CF630 A5780000 */  sh         $t8, ($t3)
.L800CF634:
/* D0234 800CF634 27A90024 */  addiu      $t1, $sp, 0x24
/* D0238 800CF638 95210000 */  lhu        $at, ($t1)
/* D023C 800CF63C 8FAE003C */  lw         $t6, 0x3c($sp)
/* D0240 800CF640 00001025 */  or         $v0, $zero, $zero
/* D0244 800CF644 A5C10000 */  sh         $at, ($t6)
.L800CF648:
/* D0248 800CF648 8FBF0014 */  lw         $ra, 0x14($sp)
/* D024C 800CF64C 27BD0028 */  addiu      $sp, $sp, 0x28
/* D0250 800CF650 03E00008 */  jr         $ra
/* D0254 800CF654 00000000 */   nop

glabel func_800CF658
/* D0258 800CF658 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* D025C 800CF65C AFA40040 */  sw         $a0, 0x40($sp)
/* D0260 800CF660 AFA7004C */  sw         $a3, 0x4c($sp)
/* D0264 800CF664 93AE004F */  lbu        $t6, 0x4f($sp)
/* D0268 800CF668 8FAF0040 */  lw         $t7, 0x40($sp)
/* D026C 800CF66C AFBF0014 */  sw         $ra, 0x14($sp)
/* D0270 800CF670 AFA50044 */  sw         $a1, 0x44($sp)
/* D0274 800CF674 AFA60048 */  sw         $a2, 0x48($sp)
/* D0278 800CF678 AFA00038 */  sw         $zero, 0x38($sp)
/* D027C 800CF67C A1EE0065 */  sb         $t6, 0x65($t7)
/* D0280 800CF680 0C031E0F */  jal        func_800C783C
/* D0284 800CF684 8FA40040 */   lw        $a0, 0x40($sp)
/* D0288 800CF688 AFA20038 */  sw         $v0, 0x38($sp)
/* D028C 800CF68C 8FB80038 */  lw         $t8, 0x38($sp)
/* D0290 800CF690 13000003 */  beqz       $t8, .L800CF6A0
/* D0294 800CF694 00000000 */   nop
/* D0298 800CF698 10000027 */  b          .L800CF738
/* D029C 800CF69C 03001025 */   or        $v0, $t8, $zero
.L800CF6A0:
/* D02A0 800CF6A0 AFA0003C */  sw         $zero, 0x3c($sp)
.L800CF6A4:
/* D02A4 800CF6A4 93A80047 */  lbu        $t0, 0x47($sp)
/* D02A8 800CF6A8 8FB90040 */  lw         $t9, 0x40($sp)
/* D02AC 800CF6AC 8FAA003C */  lw         $t2, 0x3c($sp)
/* D02B0 800CF6B0 000848C0 */  sll        $t1, $t0, 3
/* D02B4 800CF6B4 27A70018 */  addiu      $a3, $sp, 0x18
/* D02B8 800CF6B8 8F240004 */  lw         $a0, 4($t9)
/* D02BC 800CF6BC 8F250008 */  lw         $a1, 8($t9)
/* D02C0 800CF6C0 0C034C10 */  jal        func_800D3040
/* D02C4 800CF6C4 012A3021 */   addu      $a2, $t1, $t2
/* D02C8 800CF6C8 AFA20038 */  sw         $v0, 0x38($sp)
/* D02CC 800CF6CC 8FAB0038 */  lw         $t3, 0x38($sp)
/* D02D0 800CF6D0 11600007 */  beqz       $t3, .L800CF6F0
/* D02D4 800CF6D4 00000000 */   nop
/* D02D8 800CF6D8 8FAC0040 */  lw         $t4, 0x40($sp)
/* D02DC 800CF6DC A1800065 */  sb         $zero, 0x65($t4)
/* D02E0 800CF6E0 0C031E0F */  jal        func_800C783C
/* D02E4 800CF6E4 8FA40040 */   lw        $a0, 0x40($sp)
/* D02E8 800CF6E8 10000013 */  b          .L800CF738
/* D02EC 800CF6EC 8FA20038 */   lw        $v0, 0x38($sp)
.L800CF6F0:
/* D02F0 800CF6F0 27A40018 */  addiu      $a0, $sp, 0x18
/* D02F4 800CF6F4 0C031AD4 */  jal        func_800C6B50
/* D02F8 800CF6F8 24050020 */   addiu     $a1, $zero, 0x20
/* D02FC 800CF6FC 8FAD0048 */  lw         $t5, 0x48($sp)
/* D0300 800CF700 95AE0000 */  lhu        $t6, ($t5)
/* D0304 800CF704 004E7821 */  addu       $t7, $v0, $t6
/* D0308 800CF708 A5AF0000 */  sh         $t7, ($t5)
/* D030C 800CF70C 8FB8003C */  lw         $t8, 0x3c($sp)
/* D0310 800CF710 27190001 */  addiu      $t9, $t8, 1
/* D0314 800CF714 2B210008 */  slti       $at, $t9, 8
/* D0318 800CF718 1420FFE2 */  bnez       $at, .L800CF6A4
/* D031C 800CF71C AFB9003C */   sw        $t9, 0x3c($sp)
/* D0320 800CF720 8FA80040 */  lw         $t0, 0x40($sp)
/* D0324 800CF724 A1000065 */  sb         $zero, 0x65($t0)
/* D0328 800CF728 0C031E0F */  jal        func_800C783C
/* D032C 800CF72C 8FA40040 */   lw        $a0, 0x40($sp)
/* D0330 800CF730 AFA20038 */  sw         $v0, 0x38($sp)
/* D0334 800CF734 8FA20038 */  lw         $v0, 0x38($sp)
.L800CF738:
/* D0338 800CF738 8FBF0014 */  lw         $ra, 0x14($sp)
/* D033C 800CF73C 27BD0040 */  addiu      $sp, $sp, 0x40
/* D0340 800CF740 03E00008 */  jr         $ra
/* D0344 800CF744 00000000 */   nop
/* D0348 800CF748 00000000 */  nop
/* D034C 800CF74C 00000000 */  nop
