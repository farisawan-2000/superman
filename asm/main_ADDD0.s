.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AD1D0
/* ADDD0 800AD1D0 18A00020 */  blez       $a1, .L800AD254
/* ADDD4 800AD1D4 00000000 */   nop
/* ADDD8 800AD1D8 240B2000 */  addiu      $t3, $zero, 0x2000
/* ADDDC 800AD1DC 00AB082B */  sltu       $at, $a1, $t3
/* ADDE0 800AD1E0 1020001E */  beqz       $at, .L800AD25C
/* ADDE4 800AD1E4 00000000 */   nop
/* ADDE8 800AD1E8 00804025 */  or         $t0, $a0, $zero
/* ADDEC 800AD1EC 00854821 */  addu       $t1, $a0, $a1
/* ADDF0 800AD1F0 0109082B */  sltu       $at, $t0, $t1
/* ADDF4 800AD1F4 10200017 */  beqz       $at, .L800AD254
/* ADDF8 800AD1F8 00000000 */   nop
/* ADDFC 800AD1FC 2529FFF0 */  addiu      $t1, $t1, -0x10
/* ADE00 800AD200 310A000F */  andi       $t2, $t0, 0xf
/* ADE04 800AD204 11400007 */  beqz       $t2, .L800AD224
/* ADE08 800AD208 00000000 */   nop
/* ADE0C 800AD20C 010A4023 */  subu       $t0, $t0, $t2
/* ADE10 800AD210 BD150000 */  cache      0x15, ($t0)
/* ADE14 800AD214 0109082B */  sltu       $at, $t0, $t1
/* ADE18 800AD218 1020000E */  beqz       $at, .L800AD254
/* ADE1C 800AD21C 00000000 */   nop
/* ADE20 800AD220 25080010 */  addiu      $t0, $t0, 0x10
.L800AD224:
/* ADE24 800AD224 312A000F */  andi       $t2, $t1, 0xf
/* ADE28 800AD228 11400006 */  beqz       $t2, .L800AD244
/* ADE2C 800AD22C 00000000 */   nop
/* ADE30 800AD230 012A4823 */  subu       $t1, $t1, $t2
/* ADE34 800AD234 BD350010 */  cache      0x15, 0x10($t1)
/* ADE38 800AD238 0128082B */  sltu       $at, $t1, $t0
/* ADE3C 800AD23C 14200005 */  bnez       $at, .L800AD254
/* ADE40 800AD240 00000000 */   nop
.L800AD244:
/* ADE44 800AD244 BD110000 */  cache      0x11, ($t0)
/* ADE48 800AD248 0109082B */  sltu       $at, $t0, $t1
/* ADE4C 800AD24C 1420FFFD */  bnez       $at, .L800AD244
/* ADE50 800AD250 25080010 */   addiu     $t0, $t0, 0x10
.L800AD254:
/* ADE54 800AD254 03E00008 */  jr         $ra
/* ADE58 800AD258 00000000 */   nop
.L800AD25C:
/* ADE5C 800AD25C 3C088000 */  lui        $t0, 0x8000
/* ADE60 800AD260 010B4821 */  addu       $t1, $t0, $t3
/* ADE64 800AD264 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800AD268:
/* ADE68 800AD268 BD010000 */  cache      1, ($t0)
/* ADE6C 800AD26C 0109082B */  sltu       $at, $t0, $t1
/* ADE70 800AD270 1420FFFD */  bnez       $at, .L800AD268
/* ADE74 800AD274 25080010 */   addiu     $t0, $t0, 0x10
/* ADE78 800AD278 03E00008 */  jr         $ra
/* ADE7C 800AD27C 00000000 */   nop

glabel func_800AD280
/* ADE80 800AD280 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADE84 800AD284 AFBF001C */  sw         $ra, 0x1c($sp)
/* ADE88 800AD288 AFA40030 */  sw         $a0, 0x30($sp)
/* ADE8C 800AD28C AFB00018 */  sw         $s0, 0x18($sp)
/* ADE90 800AD290 AFA00024 */  sw         $zero, 0x24($sp)
/* ADE94 800AD294 44802000 */  mtc1       $zero, $f4
/* ADE98 800AD298 00000000 */  nop
/* ADE9C 800AD29C E7A4002C */  swc1       $f4, 0x2c($sp)
/* ADEA0 800AD2A0 8FAE0030 */  lw         $t6, 0x30($sp)
/* ADEA4 800AD2A4 AFAE0028 */  sw         $t6, 0x28($sp)
/* ADEA8 800AD2A8 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADEAC 800AD2AC 2DE101B0 */  sltiu      $at, $t7, 0x1b0
/* ADEB0 800AD2B0 10200010 */  beqz       $at, .L800AD2F4
/* ADEB4 800AD2B4 00000000 */   nop
.L800AD2B8:
/* ADEB8 800AD2B8 8FB90024 */  lw         $t9, 0x24($sp)
/* ADEBC 800AD2BC 8FB80028 */  lw         $t8, 0x28($sp)
/* ADEC0 800AD2C0 240801B0 */  addiu      $t0, $zero, 0x1b0
/* ADEC4 800AD2C4 24060002 */  addiu      $a2, $zero, 2
/* ADEC8 800AD2C8 01192823 */  subu       $a1, $t0, $t9
/* ADECC 800AD2CC 0C02C4C8 */  jal        func_800B1320
/* ADED0 800AD2D0 03192021 */   addu      $a0, $t8, $t9
/* ADED4 800AD2D4 8FA90024 */  lw         $t1, 0x24($sp)
/* ADED8 800AD2D8 00408025 */  or         $s0, $v0, $zero
/* ADEDC 800AD2DC 01305021 */  addu       $t2, $t1, $s0
/* ADEE0 800AD2E0 AFAA0024 */  sw         $t2, 0x24($sp)
/* ADEE4 800AD2E4 8FAB0024 */  lw         $t3, 0x24($sp)
/* ADEE8 800AD2E8 2D6101B0 */  sltiu      $at, $t3, 0x1b0
/* ADEEC 800AD2EC 1420FFF2 */  bnez       $at, .L800AD2B8
/* ADEF0 800AD2F0 00000000 */   nop
.L800AD2F4:
/* ADEF4 800AD2F4 10000001 */  b          .L800AD2FC
/* ADEF8 800AD2F8 00000000 */   nop
.L800AD2FC:
/* ADEFC 800AD2FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* ADF00 800AD300 8FB00018 */  lw         $s0, 0x18($sp)
/* ADF04 800AD304 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADF08 800AD308 03E00008 */  jr         $ra
/* ADF0C 800AD30C 00000000 */   nop

glabel func_800AD310
/* ADF10 800AD310 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADF14 800AD314 AFBF001C */  sw         $ra, 0x1c($sp)
/* ADF18 800AD318 AFB00018 */  sw         $s0, 0x18($sp)
/* ADF1C 800AD31C AFA0002C */  sw         $zero, 0x2c($sp)
/* ADF20 800AD320 8FAE002C */  lw         $t6, 0x2c($sp)
/* ADF24 800AD324 1DC0000C */  bgtz       $t6, .L800AD358
/* ADF28 800AD328 00000000 */   nop
.L800AD32C:
/* ADF2C 800AD32C 27A40028 */  addiu      $a0, $sp, 0x28
/* ADF30 800AD330 24050001 */  addiu      $a1, $zero, 1
/* ADF34 800AD334 0C02C4C8 */  jal        func_800B1320
/* ADF38 800AD338 2406000A */   addiu     $a2, $zero, 0xa
/* ADF3C 800AD33C 8FAF002C */  lw         $t7, 0x2c($sp)
/* ADF40 800AD340 00408025 */  or         $s0, $v0, $zero
/* ADF44 800AD344 01F0C021 */  addu       $t8, $t7, $s0
/* ADF48 800AD348 AFB8002C */  sw         $t8, 0x2c($sp)
/* ADF4C 800AD34C 8FB9002C */  lw         $t9, 0x2c($sp)
/* ADF50 800AD350 1B20FFF6 */  blez       $t9, .L800AD32C
/* ADF54 800AD354 00000000 */   nop
.L800AD358:
/* ADF58 800AD358 10000001 */  b          .L800AD360
/* ADF5C 800AD35C 00000000 */   nop
.L800AD360:
/* ADF60 800AD360 8FBF001C */  lw         $ra, 0x1c($sp)
/* ADF64 800AD364 8FB00018 */  lw         $s0, 0x18($sp)
/* ADF68 800AD368 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADF6C 800AD36C 03E00008 */  jr         $ra
/* ADF70 800AD370 00000000 */   nop

glabel func_800AD374
/* ADF74 800AD374 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADF78 800AD378 AFBF001C */  sw         $ra, 0x1c($sp)
/* ADF7C 800AD37C AFA40030 */  sw         $a0, 0x30($sp)
/* ADF80 800AD380 AFB00018 */  sw         $s0, 0x18($sp)
/* ADF84 800AD384 AFA0002C */  sw         $zero, 0x2c($sp)
/* ADF88 800AD388 27AE0030 */  addiu      $t6, $sp, 0x30
/* ADF8C 800AD38C AFAE0028 */  sw         $t6, 0x28($sp)
/* ADF90 800AD390 8FAF002C */  lw         $t7, 0x2c($sp)
/* ADF94 800AD394 29E10004 */  slti       $at, $t7, 4
/* ADF98 800AD398 10200010 */  beqz       $at, .L800AD3DC
/* ADF9C 800AD39C 00000000 */   nop
.L800AD3A0:
/* ADFA0 800AD3A0 8FB9002C */  lw         $t9, 0x2c($sp)
/* ADFA4 800AD3A4 8FB80028 */  lw         $t8, 0x28($sp)
/* ADFA8 800AD3A8 24080004 */  addiu      $t0, $zero, 4
/* ADFAC 800AD3AC 24060008 */  addiu      $a2, $zero, 8
/* ADFB0 800AD3B0 01192823 */  subu       $a1, $t0, $t9
/* ADFB4 800AD3B4 0C02C4C8 */  jal        func_800B1320
/* ADFB8 800AD3B8 03192021 */   addu      $a0, $t8, $t9
/* ADFBC 800AD3BC 8FA9002C */  lw         $t1, 0x2c($sp)
/* ADFC0 800AD3C0 00408025 */  or         $s0, $v0, $zero
/* ADFC4 800AD3C4 01305021 */  addu       $t2, $t1, $s0
/* ADFC8 800AD3C8 AFAA002C */  sw         $t2, 0x2c($sp)
/* ADFCC 800AD3CC 8FAB002C */  lw         $t3, 0x2c($sp)
/* ADFD0 800AD3D0 29610004 */  slti       $at, $t3, 4
/* ADFD4 800AD3D4 1420FFF2 */  bnez       $at, .L800AD3A0
/* ADFD8 800AD3D8 00000000 */   nop
.L800AD3DC:
/* ADFDC 800AD3DC 10000001 */  b          .L800AD3E4
/* ADFE0 800AD3E0 00000000 */   nop
.L800AD3E4:
/* ADFE4 800AD3E4 8FBF001C */  lw         $ra, 0x1c($sp)
/* ADFE8 800AD3E8 8FB00018 */  lw         $s0, 0x18($sp)
/* ADFEC 800AD3EC 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADFF0 800AD3F0 03E00008 */  jr         $ra
/* ADFF4 800AD3F4 00000000 */   nop

glabel func_800AD3F8
/* ADFF8 800AD3F8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADFFC 800AD3FC AFBF001C */  sw         $ra, 0x1c($sp)
/* AE000 800AD400 AFB00018 */  sw         $s0, 0x18($sp)
/* AE004 800AD404 3C04801A */  lui        $a0, %hi(D_801A3A40)
/* AE008 800AD408 3C05801A */  lui        $a1, %hi(D_801A3A58)
/* AE00C 800AD40C 24A53A58 */  addiu      $a1, $a1, %lo(D_801A3A58)
/* AE010 800AD410 24843A40 */  addiu      $a0, $a0, %lo(D_801A3A40)
/* AE014 800AD414 0C02B42C */  jal        func_800AD0B0
/* AE018 800AD418 24060001 */   addiu     $a2, $zero, 1
/* AE01C 800AD41C 3C05801A */  lui        $a1, %hi(D_801A3A40)
/* AE020 800AD420 24A53A40 */  addiu      $a1, $a1, %lo(D_801A3A40)
/* AE024 800AD424 24040014 */  addiu      $a0, $zero, 0x14
/* AE028 800AD428 0C02AD08 */  jal        func_800AB420
/* AE02C 800AD42C 00003025 */   or        $a2, $zero, $zero
/* AE030 800AD430 3C0E801A */  lui        $t6, %hi(D_801A3A60)
/* AE034 800AD434 25CE3A60 */  addiu      $t6, $t6, %lo(D_801A3A60)
/* AE038 800AD438 3C01801A */  lui        $at, %hi(D_801A3A5C)
/* AE03C 800AD43C AC2E3A5C */  sw         $t6, %lo(D_801A3A5C)($at)
.L800AD440:
/* AE040 800AD440 3C04801A */  lui        $a0, %hi(D_801A3A40)
/* AE044 800AD444 24843A40 */  addiu      $a0, $a0, %lo(D_801A3A40)
/* AE048 800AD448 00002825 */  or         $a1, $zero, $zero
/* AE04C 800AD44C 0C025D30 */  jal        func_800974C0
/* AE050 800AD450 24060001 */   addiu     $a2, $zero, 1
/* AE054 800AD454 3C04801A */  lui        $a0, %hi(D_801A3A60)
/* AE058 800AD458 0C02C63B */  jal        func_800B18EC
/* AE05C 800AD45C 24843A60 */   addiu     $a0, $a0, %lo(D_801A3A60)
/* AE060 800AD460 3C0F801A */  lui        $t7, %hi(D_801A3A60)
/* AE064 800AD464 25EF3A60 */  addiu      $t7, $t7, %lo(D_801A3A60)
/* AE068 800AD468 3C01801A */  lui        $at, %hi(D_801A3A5C)
/* AE06C 800AD46C AC2F3A5C */  sw         $t7, %lo(D_801A3A5C)($at)
/* AE070 800AD470 AFA0002C */  sw         $zero, 0x2c($sp)
/* AE074 800AD474 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE078 800AD478 1F00000C */  bgtz       $t8, .L800AD4AC
/* AE07C 800AD47C 00000000 */   nop
.L800AD480:
/* AE080 800AD480 27A40028 */  addiu      $a0, $sp, 0x28
/* AE084 800AD484 24050001 */  addiu      $a1, $zero, 1
/* AE088 800AD488 0C02C4C8 */  jal        func_800B1320
/* AE08C 800AD48C 2406000B */   addiu     $a2, $zero, 0xb
/* AE090 800AD490 8FB9002C */  lw         $t9, 0x2c($sp)
/* AE094 800AD494 00408025 */  or         $s0, $v0, $zero
/* AE098 800AD498 03304021 */  addu       $t0, $t9, $s0
/* AE09C 800AD49C AFA8002C */  sw         $t0, 0x2c($sp)
/* AE0A0 800AD4A0 8FA9002C */  lw         $t1, 0x2c($sp)
/* AE0A4 800AD4A4 1920FFF6 */  blez       $t1, .L800AD480
/* AE0A8 800AD4A8 00000000 */   nop
.L800AD4AC:
/* AE0AC 800AD4AC 1000FFE4 */  b          .L800AD440
/* AE0B0 800AD4B0 00000000 */   nop
/* AE0B4 800AD4B4 10000001 */  b          .L800AD4BC
/* AE0B8 800AD4B8 00000000 */   nop
.L800AD4BC:
/* AE0BC 800AD4BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* AE0C0 800AD4C0 8FB00018 */  lw         $s0, 0x18($sp)
/* AE0C4 800AD4C4 27BD0030 */  addiu      $sp, $sp, 0x30
/* AE0C8 800AD4C8 03E00008 */  jr         $ra
/* AE0CC 800AD4CC 00000000 */   nop

glabel func_800AD4D0
/* AE0D0 800AD4D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE0D4 800AD4D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE0D8 800AD4D8 AFA40020 */  sw         $a0, 0x20($sp)
/* AE0DC 800AD4DC AFA50024 */  sw         $a1, 0x24($sp)
/* AE0E0 800AD4E0 AFA60028 */  sw         $a2, 0x28($sp)
/* AE0E4 800AD4E4 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE0E8 800AD4E8 8DCF0008 */  lw         $t7, 8($t6)
/* AE0EC 800AD4EC 11E0002F */  beqz       $t7, .L800AD5AC
/* AE0F0 800AD4F0 00000000 */   nop
/* AE0F4 800AD4F4 0C029658 */  jal        func_800A5960
/* AE0F8 800AD4F8 00000000 */   nop
/* AE0FC 800AD4FC AFA2001C */  sw         $v0, 0x1c($sp)
/* AE100 800AD500 8FB8001C */  lw         $t8, 0x1c($sp)
/* AE104 800AD504 17000006 */  bnez       $t8, .L800AD520
/* AE108 800AD508 00000000 */   nop
/* AE10C 800AD50C 2404006A */  addiu      $a0, $zero, 0x6a
/* AE110 800AD510 0C02B5EC */  jal        func_800AD7B0
/* AE114 800AD514 00002825 */   or        $a1, $zero, $zero
/* AE118 800AD518 10000026 */  b          .L800AD5B4
/* AE11C 800AD51C 00000000 */   nop
.L800AD520:
/* AE120 800AD520 8FA90024 */  lw         $t1, 0x24($sp)
/* AE124 800AD524 8FB90020 */  lw         $t9, 0x20($sp)
/* AE128 800AD528 8FAD001C */  lw         $t5, 0x1c($sp)
/* AE12C 800AD52C 8D2A0008 */  lw         $t2, 8($t1)
/* AE130 800AD530 8F28001C */  lw         $t0, 0x1c($t9)
/* AE134 800AD534 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* AE138 800AD538 010B6021 */  addu       $t4, $t0, $t3
/* AE13C 800AD53C ADAC0004 */  sw         $t4, 4($t5)
/* AE140 800AD540 8FAF001C */  lw         $t7, 0x1c($sp)
/* AE144 800AD544 240E0010 */  addiu      $t6, $zero, 0x10
/* AE148 800AD548 A5EE0008 */  sh         $t6, 8($t7)
/* AE14C 800AD54C 93B8002B */  lbu        $t8, 0x2b($sp)
/* AE150 800AD550 07010006 */  bgez       $t8, .L800AD56C
/* AE154 800AD554 00000000 */   nop
/* AE158 800AD558 93B9002B */  lbu        $t9, 0x2b($sp)
/* AE15C 800AD55C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AE160 800AD560 00194823 */  negu       $t1, $t9
/* AE164 800AD564 10000004 */  b          .L800AD578
/* AE168 800AD568 AD49000C */   sw        $t1, 0xc($t2)
.L800AD56C:
/* AE16C 800AD56C 93A8002B */  lbu        $t0, 0x2b($sp)
/* AE170 800AD570 8FAB001C */  lw         $t3, 0x1c($sp)
/* AE174 800AD574 AD68000C */  sw         $t0, 0xc($t3)
.L800AD578:
/* AE178 800AD578 8FAC001C */  lw         $t4, 0x1c($sp)
/* AE17C 800AD57C AD800000 */  sw         $zero, ($t4)
/* AE180 800AD580 8FAD0024 */  lw         $t5, 0x24($sp)
/* AE184 800AD584 8DAE0008 */  lw         $t6, 8($t5)
/* AE188 800AD588 8DCF000C */  lw         $t7, 0xc($t6)
/* AE18C 800AD58C AFAF0018 */  sw         $t7, 0x18($sp)
/* AE190 800AD590 8FB80018 */  lw         $t8, 0x18($sp)
/* AE194 800AD594 24050003 */  addiu      $a1, $zero, 3
/* AE198 800AD598 8FA6001C */  lw         $a2, 0x1c($sp)
/* AE19C 800AD59C 8F190008 */  lw         $t9, 8($t8)
/* AE1A0 800AD5A0 03002025 */  or         $a0, $t8, $zero
/* AE1A4 800AD5A4 0320F809 */  jalr       $t9
/* AE1A8 800AD5A8 00000000 */   nop
.L800AD5AC:
/* AE1AC 800AD5AC 10000001 */  b          .L800AD5B4
/* AE1B0 800AD5B0 00000000 */   nop
.L800AD5B4:
/* AE1B4 800AD5B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE1B8 800AD5B8 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE1BC 800AD5BC 03E00008 */  jr         $ra
/* AE1C0 800AD5C0 00000000 */   nop
/* AE1C4 800AD5C4 00000000 */  nop
/* AE1C8 800AD5C8 00000000 */  nop
/* AE1CC 800AD5CC 00000000 */  nop
