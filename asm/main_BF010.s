.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BE410
/* BF010 800BE410 E7AC0000 */  swc1       $f12, ($sp)
/* BF014 800BE414 8FA20000 */  lw         $v0, ($sp)
/* BF018 800BE418 C7A40000 */  lwc1       $f4, ($sp)
/* BF01C 800BE41C 00021D83 */  sra        $v1, $v0, 0x16
/* BF020 800BE420 306E01FF */  andi       $t6, $v1, 0x1ff
/* BF024 800BE424 29C100FF */  slti       $at, $t6, 0xff
/* BF028 800BE428 10200019 */  beqz       $at, .L800BE490
/* BF02C 800BE42C 01C01825 */   or        $v1, $t6, $zero
/* BF030 800BE430 29C100E6 */  slti       $at, $t6, 0xe6
/* BF034 800BE434 14200014 */  bnez       $at, .L800BE488
/* BF038 800BE438 460020A1 */   cvt.d.s   $f2, $f4
/* BF03C 800BE43C 46221302 */  mul.d      $f12, $f2, $f2
/* BF040 800BE440 3C03800E */  lui        $v1, %hi(D_800DF830)
/* BF044 800BE444 2463F830 */  addiu      $v1, $v1, %lo(D_800DF830)
/* BF048 800BE448 D4660020 */  ldc1       $f6, 0x20($v1)
/* BF04C 800BE44C D46A0018 */  ldc1       $f10, 0x18($v1)
/* BF050 800BE450 D4640010 */  ldc1       $f4, 0x10($v1)
/* BF054 800BE454 462C3202 */  mul.d      $f8, $f6, $f12
/* BF058 800BE458 462A4400 */  add.d      $f16, $f8, $f10
/* BF05C 800BE45C D46A0008 */  ldc1       $f10, 8($v1)
/* BF060 800BE460 462C8482 */  mul.d      $f18, $f16, $f12
/* BF064 800BE464 46249180 */  add.d      $f6, $f18, $f4
/* BF068 800BE468 462C3202 */  mul.d      $f8, $f6, $f12
/* BF06C 800BE46C 46285380 */  add.d      $f14, $f10, $f8
/* BF070 800BE470 462C1402 */  mul.d      $f16, $f2, $f12
/* BF074 800BE474 00000000 */  nop
/* BF078 800BE478 462E8482 */  mul.d      $f18, $f16, $f14
/* BF07C 800BE47C 46229100 */  add.d      $f4, $f18, $f2
/* BF080 800BE480 03E00008 */  jr         $ra
/* BF084 800BE484 46202020 */   cvt.s.d   $f0, $f4
.L800BE488:
/* BF088 800BE488 03E00008 */  jr         $ra
/* BF08C 800BE48C C7A00000 */   lwc1      $f0, ($sp)
.L800BE490:
/* BF090 800BE490 28610136 */  slti       $at, $v1, 0x136
/* BF094 800BE494 10200044 */  beqz       $at, .L800BE5A8
/* BF098 800BE498 C7A40000 */   lwc1      $f4, ($sp)
/* BF09C 800BE49C C7A60000 */  lwc1       $f6, ($sp)
/* BF0A0 800BE4A0 3C01800E */  lui        $at, %hi(D_800DF858)
/* BF0A4 800BE4A4 D42AF858 */  ldc1       $f10, %lo(D_800DF858)($at)
/* BF0A8 800BE4A8 460030A1 */  cvt.d.s    $f2, $f6
/* BF0AC 800BE4AC 44804800 */  mtc1       $zero, $f9
/* BF0B0 800BE4B0 462A1002 */  mul.d      $f0, $f2, $f10
/* BF0B4 800BE4B4 44804000 */  mtc1       $zero, $f8
/* BF0B8 800BE4B8 3C013FE0 */  lui        $at, 0x3fe0
/* BF0BC 800BE4BC 4620403E */  c.le.d     $f8, $f0
/* BF0C0 800BE4C0 00000000 */  nop
/* BF0C4 800BE4C4 4502000B */  bc1fl      .L800BE4F4
/* BF0C8 800BE4C8 44813800 */   mtc1      $at, $f7
/* BF0CC 800BE4CC 3C013FE0 */  lui        $at, 0x3fe0
/* BF0D0 800BE4D0 44818800 */  mtc1       $at, $f17
/* BF0D4 800BE4D4 44808000 */  mtc1       $zero, $f16
/* BF0D8 800BE4D8 00000000 */  nop
/* BF0DC 800BE4DC 46300480 */  add.d      $f18, $f0, $f16
/* BF0E0 800BE4E0 4620910D */  trunc.w.d  $f4, $f18
/* BF0E4 800BE4E4 44022000 */  mfc1       $v0, $f4
/* BF0E8 800BE4E8 10000009 */  b          .L800BE510
/* BF0EC 800BE4EC 44828000 */   mtc1      $v0, $f16
/* BF0F0 800BE4F0 44813800 */  mtc1       $at, $f7
.L800BE4F4:
/* BF0F4 800BE4F4 44803000 */  mtc1       $zero, $f6
/* BF0F8 800BE4F8 00000000 */  nop
/* BF0FC 800BE4FC 46260281 */  sub.d      $f10, $f0, $f6
/* BF100 800BE500 4620520D */  trunc.w.d  $f8, $f10
/* BF104 800BE504 44024000 */  mfc1       $v0, $f8
/* BF108 800BE508 00000000 */  nop
/* BF10C 800BE50C 44828000 */  mtc1       $v0, $f16
.L800BE510:
/* BF110 800BE510 3C01800E */  lui        $at, %hi(D_800DF860)
/* BF114 800BE514 D432F860 */  ldc1       $f18, %lo(D_800DF860)($at)
/* BF118 800BE518 46808021 */  cvt.d.w    $f0, $f16
/* BF11C 800BE51C 3C01800E */  lui        $at, %hi(D_800DF868)
/* BF120 800BE520 D426F868 */  ldc1       $f6, %lo(D_800DF868)($at)
/* BF124 800BE524 3C03800E */  lui        $v1, %hi(D_800DF830)
/* BF128 800BE528 2463F830 */  addiu      $v1, $v1, %lo(D_800DF830)
/* BF12C 800BE52C 46320102 */  mul.d      $f4, $f0, $f18
/* BF130 800BE530 D4680020 */  ldc1       $f8, 0x20($v1)
/* BF134 800BE534 D4720018 */  ldc1       $f18, 0x18($v1)
/* BF138 800BE538 30590001 */  andi       $t9, $v0, 1
/* BF13C 800BE53C 46260282 */  mul.d      $f10, $f0, $f6
/* BF140 800BE540 46241081 */  sub.d      $f2, $f2, $f4
/* BF144 800BE544 462A1081 */  sub.d      $f2, $f2, $f10
/* BF148 800BE548 D46A0010 */  ldc1       $f10, 0x10($v1)
/* BF14C 800BE54C 46221302 */  mul.d      $f12, $f2, $f2
/* BF150 800BE550 00000000 */  nop
/* BF154 800BE554 462C4402 */  mul.d      $f16, $f8, $f12
/* BF158 800BE558 46328100 */  add.d      $f4, $f16, $f18
/* BF15C 800BE55C D4720008 */  ldc1       $f18, 8($v1)
/* BF160 800BE560 462C2182 */  mul.d      $f6, $f4, $f12
/* BF164 800BE564 462A3200 */  add.d      $f8, $f6, $f10
/* BF168 800BE568 462C4402 */  mul.d      $f16, $f8, $f12
/* BF16C 800BE56C 17200007 */  bnez       $t9, .L800BE58C
/* BF170 800BE570 46309380 */   add.d     $f14, $f18, $f16
/* BF174 800BE574 462C1102 */  mul.d      $f4, $f2, $f12
/* BF178 800BE578 00000000 */  nop
/* BF17C 800BE57C 462E2182 */  mul.d      $f6, $f4, $f14
/* BF180 800BE580 46223280 */  add.d      $f10, $f6, $f2
/* BF184 800BE584 03E00008 */  jr         $ra
/* BF188 800BE588 46205020 */   cvt.s.d   $f0, $f10
.L800BE58C:
/* BF18C 800BE58C 462C1202 */  mul.d      $f8, $f2, $f12
/* BF190 800BE590 00000000 */  nop
/* BF194 800BE594 462E4482 */  mul.d      $f18, $f8, $f14
/* BF198 800BE598 46229400 */  add.d      $f16, $f18, $f2
/* BF19C 800BE59C 46208020 */  cvt.s.d    $f0, $f16
/* BF1A0 800BE5A0 03E00008 */  jr         $ra
/* BF1A4 800BE5A4 46000007 */   neg.s     $f0, $f0
.L800BE5A8:
/* BF1A8 800BE5A8 46042032 */  c.eq.s     $f4, $f4
/* BF1AC 800BE5AC 3C01800E */  lui        $at, 0x800e
/* BF1B0 800BE5B0 45010004 */  bc1t       .L800BE5C4
/* BF1B4 800BE5B4 00000000 */   nop
/* BF1B8 800BE5B8 3C01800E */  lui        $at, %hi(D_800DFEA0)
/* BF1BC 800BE5BC 03E00008 */  jr         $ra
/* BF1C0 800BE5C0 C420FEA0 */   lwc1      $f0, %lo(D_800DFEA0)($at)
.L800BE5C4:
/* BF1C4 800BE5C4 C420F870 */  lwc1       $f0, -0x790($at)
/* BF1C8 800BE5C8 03E00008 */  jr         $ra
/* BF1CC 800BE5CC 00000000 */   nop

glabel func_800BE5D0
/* BF1D0 800BE5D0 3C1A800C */  lui        $k0, %hi(func_800BE5E0)
/* BF1D4 800BE5D4 275AE5E0 */  addiu      $k0, $k0, %lo(func_800BE5E0)
/* BF1D8 800BE5D8 03400008 */  jr         $k0
/* BF1DC 800BE5DC 00000000 */   nop

glabel func_800BE5E0
/* BF1E0 800BE5E0 3C1A8014 */  lui        $k0, %hi(D_801454A0)
/* BF1E4 800BE5E4 275A54A0 */  addiu      $k0, $k0, %lo(D_801454A0)
/* BF1E8 800BE5E8 FF410020 */  sd         $at, 0x20($k0)
/* BF1EC 800BE5EC 401B6000 */  mfc0       $k1, $12
/* BF1F0 800BE5F0 AF5B0118 */  sw         $k1, 0x118($k0)
/* BF1F4 800BE5F4 2401FFFC */  addiu      $at, $zero, -4
/* BF1F8 800BE5F8 0361D824 */  and        $k1, $k1, $at
/* BF1FC 800BE5FC 409B6000 */  mtc0       $k1, $12
/* BF200 800BE600 FF480058 */  sd         $t0, 0x58($k0)
/* BF204 800BE604 FF490060 */  sd         $t1, 0x60($k0)
/* BF208 800BE608 FF4A0068 */  sd         $t2, 0x68($k0)
/* BF20C 800BE60C AF400018 */  sw         $zero, 0x18($k0)
/* BF210 800BE610 40086800 */  mfc0       $t0, $13
/* BF214 800BE614 03404025 */  or         $t0, $k0, $zero
/* BF218 800BE618 3C1A800E */  lui        $k0, %hi(D_800DA080)
/* BF21C 800BE61C 8F5AA080 */  lw         $k0, %lo(D_800DA080)($k0)
/* BF220 800BE620 DD090020 */  ld         $t1, 0x20($t0)
/* BF224 800BE624 FF490020 */  sd         $t1, 0x20($k0)
/* BF228 800BE628 DD090118 */  ld         $t1, 0x118($t0)
/* BF22C 800BE62C FF490118 */  sd         $t1, 0x118($k0)
/* BF230 800BE630 DD090058 */  ld         $t1, 0x58($t0)
/* BF234 800BE634 FF490058 */  sd         $t1, 0x58($k0)
/* BF238 800BE638 DD090060 */  ld         $t1, 0x60($t0)
/* BF23C 800BE63C FF490060 */  sd         $t1, 0x60($k0)
/* BF240 800BE640 DD090068 */  ld         $t1, 0x68($t0)
/* BF244 800BE644 FF490068 */  sd         $t1, 0x68($k0)
/* BF248 800BE648 8F5B0118 */  lw         $k1, 0x118($k0)
/* BF24C 800BE64C 00004012 */  mflo       $t0
/* BF250 800BE650 FF480108 */  sd         $t0, 0x108($k0)
/* BF254 800BE654 00004010 */  mfhi       $t0
/* BF258 800BE658 3369FF00 */  andi       $t1, $k1, 0xff00
/* BF25C 800BE65C FF420028 */  sd         $v0, 0x28($k0)
/* BF260 800BE660 FF430030 */  sd         $v1, 0x30($k0)
/* BF264 800BE664 FF440038 */  sd         $a0, 0x38($k0)
/* BF268 800BE668 FF450040 */  sd         $a1, 0x40($k0)
/* BF26C 800BE66C FF460048 */  sd         $a2, 0x48($k0)
/* BF270 800BE670 FF470050 */  sd         $a3, 0x50($k0)
/* BF274 800BE674 FF4B0070 */  sd         $t3, 0x70($k0)
/* BF278 800BE678 FF4C0078 */  sd         $t4, 0x78($k0)
/* BF27C 800BE67C FF4D0080 */  sd         $t5, 0x80($k0)
/* BF280 800BE680 FF4E0088 */  sd         $t6, 0x88($k0)
/* BF284 800BE684 FF4F0090 */  sd         $t7, 0x90($k0)
/* BF288 800BE688 FF500098 */  sd         $s0, 0x98($k0)
/* BF28C 800BE68C FF5100A0 */  sd         $s1, 0xa0($k0)
/* BF290 800BE690 FF5200A8 */  sd         $s2, 0xa8($k0)
/* BF294 800BE694 FF5300B0 */  sd         $s3, 0xb0($k0)
/* BF298 800BE698 FF5400B8 */  sd         $s4, 0xb8($k0)
/* BF29C 800BE69C FF5500C0 */  sd         $s5, 0xc0($k0)
/* BF2A0 800BE6A0 FF5600C8 */  sd         $s6, 0xc8($k0)
/* BF2A4 800BE6A4 FF5700D0 */  sd         $s7, 0xd0($k0)
/* BF2A8 800BE6A8 FF5800D8 */  sd         $t8, 0xd8($k0)
/* BF2AC 800BE6AC FF5900E0 */  sd         $t9, 0xe0($k0)
/* BF2B0 800BE6B0 FF5C00E8 */  sd         $gp, 0xe8($k0)
/* BF2B4 800BE6B4 FF5D00F0 */  sd         $sp, 0xf0($k0)
/* BF2B8 800BE6B8 FF5E00F8 */  sd         $fp, 0xf8($k0)
/* BF2BC 800BE6BC FF5F0100 */  sd         $ra, 0x100($k0)
/* BF2C0 800BE6C0 11200011 */  beqz       $t1, .L800BE708
/* BF2C4 800BE6C4 FF480110 */   sd        $t0, 0x110($k0)
/* BF2C8 800BE6C8 3C08800E */  lui        $t0, %hi(D_800DA0C0)
/* BF2CC 800BE6CC 2508A0C0 */  addiu      $t0, $t0, %lo(D_800DA0C0)
/* BF2D0 800BE6D0 8D080000 */  lw         $t0, ($t0)
/* BF2D4 800BE6D4 2401FFFF */  addiu      $at, $zero, -1
/* BF2D8 800BE6D8 01015026 */  xor        $t2, $t0, $at
/* BF2DC 800BE6DC 3C01FFFF */  lui        $at, 0xffff
/* BF2E0 800BE6E0 314AFF00 */  andi       $t2, $t2, 0xff00
/* BF2E4 800BE6E4 342100FF */  ori        $at, $at, 0xff
/* BF2E8 800BE6E8 012A6025 */  or         $t4, $t1, $t2
/* BF2EC 800BE6EC 03615824 */  and        $t3, $k1, $at
/* BF2F0 800BE6F0 3108FF00 */  andi       $t0, $t0, 0xff00
/* BF2F4 800BE6F4 016C5825 */  or         $t3, $t3, $t4
/* BF2F8 800BE6F8 01284824 */  and        $t1, $t1, $t0
/* BF2FC 800BE6FC 0361D824 */  and        $k1, $k1, $at
/* BF300 800BE700 AF4B0118 */  sw         $t3, 0x118($k0)
/* BF304 800BE704 0369D825 */  or         $k1, $k1, $t1
.L800BE708:
/* BF308 800BE708 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* BF30C 800BE70C 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* BF310 800BE710 1120000B */  beqz       $t1, .L800BE740
/* BF314 800BE714 00000000 */   nop
/* BF318 800BE718 3C08800E */  lui        $t0, %hi(D_800DA0C0)
/* BF31C 800BE71C 2508A0C0 */  addiu      $t0, $t0, %lo(D_800DA0C0)
/* BF320 800BE720 8D080000 */  lw         $t0, ($t0)
/* BF324 800BE724 8F4C0128 */  lw         $t4, 0x128($k0)
/* BF328 800BE728 2401FFFF */  addiu      $at, $zero, -1
/* BF32C 800BE72C 00084402 */  srl        $t0, $t0, 0x10
/* BF330 800BE730 01014026 */  xor        $t0, $t0, $at
/* BF334 800BE734 3108003F */  andi       $t0, $t0, 0x3f
/* BF338 800BE738 010C4024 */  and        $t0, $t0, $t4
/* BF33C 800BE73C 01284825 */  or         $t1, $t1, $t0
.L800BE740:
/* BF340 800BE740 AF490128 */  sw         $t1, 0x128($k0)
/* BF344 800BE744 40087000 */  mfc0       $t0, $14
/* BF348 800BE748 AF48011C */  sw         $t0, 0x11c($k0)
/* BF34C 800BE74C 8F480018 */  lw         $t0, 0x18($k0)
/* BF350 800BE750 11000014 */  beqz       $t0, .L800BE7A4
/* BF354 800BE754 00000000 */   nop
/* BF358 800BE758 4448F800 */  cfc1       $t0, $31
/* BF35C 800BE75C 00000000 */  nop
/* BF360 800BE760 AF48012C */  sw         $t0, 0x12c($k0)
/* BF364 800BE764 F7400130 */  sdc1       $f0, 0x130($k0)
/* BF368 800BE768 F7420138 */  sdc1       $f2, 0x138($k0)
/* BF36C 800BE76C F7440140 */  sdc1       $f4, 0x140($k0)
/* BF370 800BE770 F7460148 */  sdc1       $f6, 0x148($k0)
/* BF374 800BE774 F7480150 */  sdc1       $f8, 0x150($k0)
/* BF378 800BE778 F74A0158 */  sdc1       $f10, 0x158($k0)
/* BF37C 800BE77C F74C0160 */  sdc1       $f12, 0x160($k0)
/* BF380 800BE780 F74E0168 */  sdc1       $f14, 0x168($k0)
/* BF384 800BE784 F7500170 */  sdc1       $f16, 0x170($k0)
/* BF388 800BE788 F7520178 */  sdc1       $f18, 0x178($k0)
/* BF38C 800BE78C F7540180 */  sdc1       $f20, 0x180($k0)
/* BF390 800BE790 F7560188 */  sdc1       $f22, 0x188($k0)
/* BF394 800BE794 F7580190 */  sdc1       $f24, 0x190($k0)
/* BF398 800BE798 F75A0198 */  sdc1       $f26, 0x198($k0)
/* BF39C 800BE79C F75C01A0 */  sdc1       $f28, 0x1a0($k0)
/* BF3A0 800BE7A0 F75E01A8 */  sdc1       $f30, 0x1a8($k0)
.L800BE7A4:
/* BF3A4 800BE7A4 40086800 */  mfc0       $t0, $13
/* BF3A8 800BE7A8 AF480120 */  sw         $t0, 0x120($k0)
/* BF3AC 800BE7AC 24090002 */  addiu      $t1, $zero, 2
/* BF3B0 800BE7B0 A7490010 */  sh         $t1, 0x10($k0)
/* BF3B4 800BE7B4 3109007C */  andi       $t1, $t0, 0x7c
/* BF3B8 800BE7B8 240A0024 */  addiu      $t2, $zero, 0x24
/* BF3BC 800BE7BC 112A00B0 */  beq        $t1, $t2, .L800BEA80
/* BF3C0 800BE7C0 00000000 */   nop
/* BF3C4 800BE7C4 240A002C */  addiu      $t2, $zero, 0x2c
/* BF3C8 800BE7C8 112A00FF */  beq        $t1, $t2, .L800BEBC8
/* BF3CC 800BE7CC 00000000 */   nop
/* BF3D0 800BE7D0 240A0000 */  addiu      $t2, $zero, 0
/* BF3D4 800BE7D4 152A00C3 */  bne        $t1, $t2, .L800BEAE4
/* BF3D8 800BE7D8 00000000 */   nop
/* BF3DC 800BE7DC 03688024 */  and        $s0, $k1, $t0
.L800BE7E0:
/* BF3E0 800BE7E0 3209FF00 */  andi       $t1, $s0, 0xff00
/* BF3E4 800BE7E4 00095302 */  srl        $t2, $t1, 0xc
/* BF3E8 800BE7E8 15400003 */  bnez       $t2, .L800BE7F8
/* BF3EC 800BE7EC 00000000 */   nop
/* BF3F0 800BE7F0 00095202 */  srl        $t2, $t1, 8
/* BF3F4 800BE7F4 214A0010 */  addi       $t2, $t2, 0x10
.L800BE7F8:
/* BF3F8 800BE7F8 3C01800E */  lui        $at, %hi(D_800DF880)
/* BF3FC 800BE7FC 002A0821 */  addu       $at, $at, $t2
/* BF400 800BE800 902AF880 */  lbu        $t2, %lo(D_800DF880)($at)
/* BF404 800BE804 3C01800E */  lui        $at, %hi(D_800DF8A0)
/* BF408 800BE808 002A0821 */  addu       $at, $at, $t2
/* BF40C 800BE80C 8C2AF8A0 */  lw         $t2, %lo(D_800DF8A0)($at)
/* BF410 800BE810 01400008 */  jr         $t2
/* BF414 800BE814 00000000 */   nop
/* BF418 800BE818 2401DFFF */  addiu      $at, $zero, -0x2001
/* BF41C 800BE81C 1000FFF0 */  b          .L800BE7E0
/* BF420 800BE820 02018024 */   and       $s0, $s0, $at
/* BF424 800BE824 2401BFFF */  addiu      $at, $zero, -0x4001
/* BF428 800BE828 1000FFED */  b          .L800BE7E0
/* BF42C 800BE82C 02018024 */   and       $s0, $s0, $at
/* BF430 800BE830 40095800 */  mfc0       $t1, $11
/* BF434 800BE834 40895800 */  mtc0       $t1, $11
/* BF438 800BE838 0C02FAC5 */  jal        func_800BEB14
/* BF43C 800BE83C 24040018 */   addiu     $a0, $zero, 0x18
/* BF440 800BE840 3C01FFFF */  lui        $at, 0xffff
/* BF444 800BE844 34217FFF */  ori        $at, $at, 0x7fff
/* BF448 800BE848 1000FFE5 */  b          .L800BE7E0
/* BF44C 800BE84C 02018024 */   and       $s0, $s0, $at
/* BF450 800BE850 2401F7FF */  addiu      $at, $zero, -0x801
/* BF454 800BE854 02018024 */  and        $s0, $s0, $at
/* BF458 800BE858 240A0004 */  addiu      $t2, $zero, 4
/* BF45C 800BE85C 3C01800E */  lui        $at, %hi(D_800DA050)
/* BF460 800BE860 002A0821 */  addu       $at, $at, $t2
/* BF464 800BE864 8C2AA050 */  lw         $t2, %lo(D_800DA050)($at)
/* BF468 800BE868 3C1D8014 */  lui        $sp, %hi(D_801443E0)
/* BF46C 800BE86C 27BD43E0 */  addiu      $sp, $sp, %lo(D_801443E0)
/* BF470 800BE870 24040010 */  addiu      $a0, $zero, 0x10
/* BF474 800BE874 11400007 */  beqz       $t2, .L800BE894
/* BF478 800BE878 27BD0FF0 */   addiu     $sp, $sp, 0xff0
/* BF47C 800BE87C 0140F809 */  jalr       $t2
/* BF480 800BE880 00000000 */   nop
/* BF484 800BE884 10400003 */  beqz       $v0, .L800BE894
/* BF488 800BE888 24040010 */   addiu     $a0, $zero, 0x10
/* BF48C 800BE88C 10000082 */  b          .L800BEA98
/* BF490 800BE890 00000000 */   nop
.L800BE894:
/* BF494 800BE894 0C02FAC5 */  jal        func_800BEB14
/* BF498 800BE898 00000000 */   nop
/* BF49C 800BE89C 1000FFD0 */  b          .L800BE7E0
/* BF4A0 800BE8A0 00000000 */   nop
/* BF4A4 800BE8A4 3C08800E */  lui        $t0, %hi(D_800DA0C0)
/* BF4A8 800BE8A8 2508A0C0 */  addiu      $t0, $t0, %lo(D_800DA0C0)
/* BF4AC 800BE8AC 8D080000 */  lw         $t0, ($t0)
/* BF4B0 800BE8B0 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* BF4B4 800BE8B4 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* BF4B8 800BE8B8 00084402 */  srl        $t0, $t0, 0x10
/* BF4BC 800BE8BC 02288824 */  and        $s1, $s1, $t0
/* BF4C0 800BE8C0 32290001 */  andi       $t1, $s1, 1
/* BF4C4 800BE8C4 11200013 */  beqz       $t1, .L800BE914
/* BF4C8 800BE8C8 00000000 */   nop
/* BF4CC 800BE8CC 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* BF4D0 800BE8D0 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* BF4D4 800BE8D4 34098008 */  ori        $t1, $zero, 0x8008
/* BF4D8 800BE8D8 3C01A404 */  lui        $at, %hi(D_A4040010)
/* BF4DC 800BE8DC 318C0300 */  andi       $t4, $t4, 0x300
/* BF4E0 800BE8E0 3231003E */  andi       $s1, $s1, 0x3e
/* BF4E4 800BE8E4 11800007 */  beqz       $t4, .L800BE904
/* BF4E8 800BE8E8 AC290010 */   sw        $t1, %lo(D_A4040010)($at)
/* BF4EC 800BE8EC 0C02FAC5 */  jal        func_800BEB14
/* BF4F0 800BE8F0 24040020 */   addiu     $a0, $zero, 0x20
/* BF4F4 800BE8F4 12200038 */  beqz       $s1, .L800BE9D8
/* BF4F8 800BE8F8 00000000 */   nop
/* BF4FC 800BE8FC 10000005 */  b          .L800BE914
/* BF500 800BE900 00000000 */   nop
.L800BE904:
/* BF504 800BE904 0C02FAC5 */  jal        func_800BEB14
/* BF508 800BE908 24040058 */   addiu     $a0, $zero, 0x58
/* BF50C 800BE90C 12200032 */  beqz       $s1, .L800BE9D8
/* BF510 800BE910 00000000 */   nop
.L800BE914:
/* BF514 800BE914 32290008 */  andi       $t1, $s1, 8
/* BF518 800BE918 11200007 */  beqz       $t1, .L800BE938
/* BF51C 800BE91C 3C01A440 */   lui       $at, %hi(D_A4400010)
/* BF520 800BE920 32310037 */  andi       $s1, $s1, 0x37
/* BF524 800BE924 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* BF528 800BE928 0C02FAC5 */  jal        func_800BEB14
/* BF52C 800BE92C 24040038 */   addiu     $a0, $zero, 0x38
/* BF530 800BE930 12200029 */  beqz       $s1, .L800BE9D8
/* BF534 800BE934 00000000 */   nop
.L800BE938:
/* BF538 800BE938 32290004 */  andi       $t1, $s1, 4
/* BF53C 800BE93C 11200009 */  beqz       $t1, .L800BE964
/* BF540 800BE940 00000000 */   nop
/* BF544 800BE944 24090001 */  addiu      $t1, $zero, 1
/* BF548 800BE948 3C01A450 */  lui        $at, %hi(D_A450000C)
/* BF54C 800BE94C 3231003B */  andi       $s1, $s1, 0x3b
/* BF550 800BE950 AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* BF554 800BE954 0C02FAC5 */  jal        func_800BEB14
/* BF558 800BE958 24040030 */   addiu     $a0, $zero, 0x30
/* BF55C 800BE95C 1220001E */  beqz       $s1, .L800BE9D8
/* BF560 800BE960 00000000 */   nop
.L800BE964:
/* BF564 800BE964 32290002 */  andi       $t1, $s1, 2
/* BF568 800BE968 11200007 */  beqz       $t1, .L800BE988
/* BF56C 800BE96C 3C01A480 */   lui       $at, %hi(D_A4800018)
/* BF570 800BE970 3231003D */  andi       $s1, $s1, 0x3d
/* BF574 800BE974 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* BF578 800BE978 0C02FAC5 */  jal        func_800BEB14
/* BF57C 800BE97C 24040028 */   addiu     $a0, $zero, 0x28
/* BF580 800BE980 12200015 */  beqz       $s1, .L800BE9D8
/* BF584 800BE984 00000000 */   nop
.L800BE988:
/* BF588 800BE988 32290010 */  andi       $t1, $s1, 0x10
/* BF58C 800BE98C 11200009 */  beqz       $t1, .L800BE9B4
/* BF590 800BE990 00000000 */   nop
/* BF594 800BE994 24090002 */  addiu      $t1, $zero, 2
/* BF598 800BE998 3C01A460 */  lui        $at, %hi(D_A4600010)
/* BF59C 800BE99C 3231002F */  andi       $s1, $s1, 0x2f
/* BF5A0 800BE9A0 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* BF5A4 800BE9A4 0C02FAC5 */  jal        func_800BEB14
/* BF5A8 800BE9A8 24040040 */   addiu     $a0, $zero, 0x40
/* BF5AC 800BE9AC 1220000A */  beqz       $s1, .L800BE9D8
/* BF5B0 800BE9B0 00000000 */   nop
.L800BE9B4:
/* BF5B4 800BE9B4 32290020 */  andi       $t1, $s1, 0x20
/* BF5B8 800BE9B8 11200007 */  beqz       $t1, .L800BE9D8
/* BF5BC 800BE9BC 00000000 */   nop
/* BF5C0 800BE9C0 24090800 */  addiu      $t1, $zero, 0x800
/* BF5C4 800BE9C4 3C01A430 */  lui        $at, 0xa430
/* BF5C8 800BE9C8 3231001F */  andi       $s1, $s1, 0x1f
/* BF5CC 800BE9CC AC290000 */  sw         $t1, ($at)
/* BF5D0 800BE9D0 0C02FAC5 */  jal        func_800BEB14
/* BF5D4 800BE9D4 24040048 */   addiu     $a0, $zero, 0x48
.L800BE9D8:
/* BF5D8 800BE9D8 2401FBFF */  addiu      $at, $zero, -0x401
/* BF5DC 800BE9DC 1000FF80 */  b          .L800BE7E0
/* BF5E0 800BE9E0 02018024 */   and       $s0, $s0, $at
/* BF5E4 800BE9E4 8F5B0118 */  lw         $k1, 0x118($k0)
/* BF5E8 800BE9E8 2401EFFF */  addiu      $at, $zero, -0x1001
/* BF5EC 800BE9EC 3C09800E */  lui        $t1, %hi(D_800DA0BC)
/* BF5F0 800BE9F0 0361D824 */  and        $k1, $k1, $at
/* BF5F4 800BE9F4 AF5B0118 */  sw         $k1, 0x118($k0)
/* BF5F8 800BE9F8 2529A0BC */  addiu      $t1, $t1, %lo(D_800DA0BC)
/* BF5FC 800BE9FC 8D2A0000 */  lw         $t2, ($t1)
/* BF600 800BEA00 11400003 */  beqz       $t2, .L800BEA10
/* BF604 800BEA04 2401EFFF */   addiu     $at, $zero, -0x1001
/* BF608 800BEA08 10000023 */  b          .L800BEA98
/* BF60C 800BEA0C 02018024 */   and       $s0, $s0, $at
.L800BEA10:
/* BF610 800BEA10 240A0001 */  addiu      $t2, $zero, 1
/* BF614 800BEA14 AD2A0000 */  sw         $t2, ($t1)
/* BF618 800BEA18 0C02FAC5 */  jal        func_800BEB14
/* BF61C 800BEA1C 24040070 */   addiu     $a0, $zero, 0x70
/* BF620 800BEA20 3C0A800E */  lui        $t2, %hi(D_800DA078)
/* BF624 800BEA24 8D4AA078 */  lw         $t2, %lo(D_800DA078)($t2)
/* BF628 800BEA28 2401EFFF */  addiu      $at, $zero, -0x1001
/* BF62C 800BEA2C 02018024 */  and        $s0, $s0, $at
/* BF630 800BEA30 8D5B0118 */  lw         $k1, 0x118($t2)
/* BF634 800BEA34 0361D824 */  and        $k1, $k1, $at
/* BF638 800BEA38 10000017 */  b          .L800BEA98
/* BF63C 800BEA3C AD5B0118 */   sw        $k1, 0x118($t2)
/* BF640 800BEA40 2401FDFF */  addiu      $at, $zero, -0x201
/* BF644 800BEA44 01014024 */  and        $t0, $t0, $at
/* BF648 800BEA48 40886800 */  mtc0       $t0, $13
/* BF64C 800BEA4C 0C02FAC5 */  jal        func_800BEB14
/* BF650 800BEA50 24040008 */   addiu     $a0, $zero, 8
/* BF654 800BEA54 2401FDFF */  addiu      $at, $zero, -0x201
/* BF658 800BEA58 1000FF61 */  b          .L800BE7E0
/* BF65C 800BEA5C 02018024 */   and       $s0, $s0, $at
/* BF660 800BEA60 2401FEFF */  addiu      $at, $zero, -0x101
/* BF664 800BEA64 01014024 */  and        $t0, $t0, $at
/* BF668 800BEA68 40886800 */  mtc0       $t0, $13
/* BF66C 800BEA6C 0C02FAC5 */  jal        func_800BEB14
/* BF670 800BEA70 24040000 */   addiu     $a0, $zero, 0
/* BF674 800BEA74 2401FEFF */  addiu      $at, $zero, -0x101
/* BF678 800BEA78 1000FF59 */  b          .L800BE7E0
/* BF67C 800BEA7C 02018024 */   and       $s0, $s0, $at
.L800BEA80:
/* BF680 800BEA80 24090001 */  addiu      $t1, $zero, 1
/* BF684 800BEA84 A7490012 */  sh         $t1, 0x12($k0)
/* BF688 800BEA88 0C02FAC5 */  jal        func_800BEB14
/* BF68C 800BEA8C 24040050 */   addiu     $a0, $zero, 0x50
/* BF690 800BEA90 10000001 */  b          .L800BEA98
/* BF694 800BEA94 00000000 */   nop
.L800BEA98:
/* BF698 800BEA98 3C0A800E */  lui        $t2, %hi(D_800DA078)
/* BF69C 800BEA9C 8D4AA078 */  lw         $t2, %lo(D_800DA078)($t2)
/* BF6A0 800BEAA0 8F490004 */  lw         $t1, 4($k0)
/* BF6A4 800BEAA4 8D4B0004 */  lw         $t3, 4($t2)
/* BF6A8 800BEAA8 012B082A */  slt        $at, $t1, $t3
/* BF6AC 800BEAAC 10200007 */  beqz       $at, .L800BEACC
/* BF6B0 800BEAB0 00000000 */   nop
/* BF6B4 800BEAB4 3C04800E */  lui        $a0, %hi(D_800DA078)
/* BF6B8 800BEAB8 03402825 */  or         $a1, $k0, $zero
/* BF6BC 800BEABC 0C02FB3F */  jal        func_800BECFC
/* BF6C0 800BEAC0 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
/* BF6C4 800BEAC4 0802FB55 */  j          .L800BED54
/* BF6C8 800BEAC8 00000000 */   nop
.L800BEACC:
/* BF6CC 800BEACC 3C09800E */  lui        $t1, %hi(D_800DA078)
/* BF6D0 800BEAD0 2529A078 */  addiu      $t1, $t1, %lo(D_800DA078)
/* BF6D4 800BEAD4 8D2A0000 */  lw         $t2, ($t1)
/* BF6D8 800BEAD8 AF4A0000 */  sw         $t2, ($k0)
/* BF6DC 800BEADC 0802FB55 */  j          .L800BED54
/* BF6E0 800BEAE0 AD3A0000 */   sw        $k0, ($t1)
.L800BEAE4:
/* BF6E4 800BEAE4 3C01800E */  lui        $at, %hi(D_800DA084)
/* BF6E8 800BEAE8 AC3AA084 */  sw         $k0, %lo(D_800DA084)($at)
/* BF6EC 800BEAEC 24090001 */  addiu      $t1, $zero, 1
/* BF6F0 800BEAF0 A7490010 */  sh         $t1, 0x10($k0)
/* BF6F4 800BEAF4 24090002 */  addiu      $t1, $zero, 2
/* BF6F8 800BEAF8 A7490012 */  sh         $t1, 0x12($k0)
/* BF6FC 800BEAFC 400A4000 */  mfc0       $t2, $8
/* BF700 800BEB00 AF4A0124 */  sw         $t2, 0x124($k0)
/* BF704 800BEB04 0C02FAC5 */  jal        func_800BEB14
/* BF708 800BEB08 24040060 */   addiu     $a0, $zero, 0x60
/* BF70C 800BEB0C 0802FB55 */  j          .L800BED54
/* BF710 800BEB10 00000000 */   nop

glabel func_800BEB14
/* BF714 800BEB14 3C0A8014 */  lui        $t2, %hi(D_80146B80)
/* BF718 800BEB18 254A6B80 */  addiu      $t2, $t2, %lo(D_80146B80)
/* BF71C 800BEB1C 01445021 */  addu       $t2, $t2, $a0
/* BF720 800BEB20 8D490000 */  lw         $t1, ($t2)
/* BF724 800BEB24 03E09025 */  or         $s2, $ra, $zero
/* BF728 800BEB28 11200025 */  beqz       $t1, .L800BEBC0
/* BF72C 800BEB2C 00000000 */   nop
/* BF730 800BEB30 8D2B0008 */  lw         $t3, 8($t1)
/* BF734 800BEB34 8D2C0010 */  lw         $t4, 0x10($t1)
/* BF738 800BEB38 016C082A */  slt        $at, $t3, $t4
/* BF73C 800BEB3C 10200020 */  beqz       $at, .L800BEBC0
/* BF740 800BEB40 00000000 */   nop
/* BF744 800BEB44 8D2D000C */  lw         $t5, 0xc($t1)
/* BF748 800BEB48 01AB6821 */  addu       $t5, $t5, $t3
/* BF74C 800BEB4C 01AC001A */  div        $zero, $t5, $t4
/* BF750 800BEB50 15800002 */  bnez       $t4, .L800BEB5C
/* BF754 800BEB54 00000000 */   nop
/* BF758 800BEB58 0007000D */  break      7
.L800BEB5C:
/* BF75C 800BEB5C 2401FFFF */   addiu     $at, $zero, -1
/* BF760 800BEB60 15810004 */  bne        $t4, $at, .L800BEB74
/* BF764 800BEB64 3C018000 */   lui       $at, 0x8000
/* BF768 800BEB68 15A10002 */  bne        $t5, $at, .L800BEB74
/* BF76C 800BEB6C 00000000 */   nop
/* BF770 800BEB70 0006000D */  break      6
.L800BEB74:
/* BF774 800BEB74 8D2C0014 */   lw        $t4, 0x14($t1)
/* BF778 800BEB78 00006810 */  mfhi       $t5
/* BF77C 800BEB7C 000D6880 */  sll        $t5, $t5, 2
/* BF780 800BEB80 018D6021 */  addu       $t4, $t4, $t5
/* BF784 800BEB84 8D4D0004 */  lw         $t5, 4($t2)
/* BF788 800BEB88 256A0001 */  addiu      $t2, $t3, 1
/* BF78C 800BEB8C AD8D0000 */  sw         $t5, ($t4)
/* BF790 800BEB90 AD2A0008 */  sw         $t2, 8($t1)
/* BF794 800BEB94 8D2A0000 */  lw         $t2, ($t1)
/* BF798 800BEB98 8D4B0000 */  lw         $t3, ($t2)
/* BF79C 800BEB9C 11600008 */  beqz       $t3, .L800BEBC0
/* BF7A0 800BEBA0 00000000 */   nop
/* BF7A4 800BEBA4 0C02FB51 */  jal        func_800BED44
/* BF7A8 800BEBA8 01202025 */   or        $a0, $t1, $zero
/* BF7AC 800BEBAC 00405025 */  or         $t2, $v0, $zero
/* BF7B0 800BEBB0 3C04800E */  lui        $a0, %hi(D_800DA078)
/* BF7B4 800BEBB4 01402825 */  or         $a1, $t2, $zero
/* BF7B8 800BEBB8 0C02FB3F */  jal        func_800BECFC
/* BF7BC 800BEBBC 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
.L800BEBC0:
/* BF7C0 800BEBC0 02400008 */  jr         $s2
/* BF7C4 800BEBC4 00000000 */   nop
.L800BEBC8:
/* BF7C8 800BEBC8 3C013000 */  lui        $at, 0x3000
/* BF7CC 800BEBCC 01014824 */  and        $t1, $t0, $at
/* BF7D0 800BEBD0 00094F02 */  srl        $t1, $t1, 0x1c
/* BF7D4 800BEBD4 240A0001 */  addiu      $t2, $zero, 1
/* BF7D8 800BEBD8 152AFFC2 */  bne        $t1, $t2, .L800BEAE4
/* BF7DC 800BEBDC 00000000 */   nop
/* BF7E0 800BEBE0 8F5B0118 */  lw         $k1, 0x118($k0)
/* BF7E4 800BEBE4 3C012000 */  lui        $at, 0x2000
/* BF7E8 800BEBE8 24090001 */  addiu      $t1, $zero, 1
/* BF7EC 800BEBEC 0361D825 */  or         $k1, $k1, $at
/* BF7F0 800BEBF0 AF490018 */  sw         $t1, 0x18($k0)
/* BF7F4 800BEBF4 1000FFB5 */  b          .L800BEACC
/* BF7F8 800BEBF8 AF5B0118 */   sw        $k1, 0x118($k0)

glabel func_800BEBFC
/* BF7FC 800BEBFC 3C05800E */  lui        $a1, %hi(D_800DA080)
/* BF800 800BEC00 8CA5A080 */  lw         $a1, %lo(D_800DA080)($a1)
/* BF804 800BEC04 40086000 */  mfc0       $t0, $12
/* BF808 800BEC08 8CBB0018 */  lw         $k1, 0x18($a1)
/* BF80C 800BEC0C 35080002 */  ori        $t0, $t0, 2
/* BF810 800BEC10 ACA80118 */  sw         $t0, 0x118($a1)
/* BF814 800BEC14 FCB00098 */  sd         $s0, 0x98($a1)
/* BF818 800BEC18 FCB100A0 */  sd         $s1, 0xa0($a1)
/* BF81C 800BEC1C FCB200A8 */  sd         $s2, 0xa8($a1)
/* BF820 800BEC20 FCB300B0 */  sd         $s3, 0xb0($a1)
/* BF824 800BEC24 FCB400B8 */  sd         $s4, 0xb8($a1)
/* BF828 800BEC28 FCB500C0 */  sd         $s5, 0xc0($a1)
/* BF82C 800BEC2C FCB600C8 */  sd         $s6, 0xc8($a1)
/* BF830 800BEC30 FCB700D0 */  sd         $s7, 0xd0($a1)
/* BF834 800BEC34 FCBC00E8 */  sd         $gp, 0xe8($a1)
/* BF838 800BEC38 FCBD00F0 */  sd         $sp, 0xf0($a1)
/* BF83C 800BEC3C FCBE00F8 */  sd         $fp, 0xf8($a1)
/* BF840 800BEC40 FCBF0100 */  sd         $ra, 0x100($a1)
/* BF844 800BEC44 13600009 */  beqz       $k1, .L800BEC6C
/* BF848 800BEC48 ACBF011C */   sw        $ra, 0x11c($a1)
/* BF84C 800BEC4C 445BF800 */  cfc1       $k1, $31
/* BF850 800BEC50 F4B40180 */  sdc1       $f20, 0x180($a1)
/* BF854 800BEC54 F4B60188 */  sdc1       $f22, 0x188($a1)
/* BF858 800BEC58 F4B80190 */  sdc1       $f24, 0x190($a1)
/* BF85C 800BEC5C F4BA0198 */  sdc1       $f26, 0x198($a1)
/* BF860 800BEC60 F4BC01A0 */  sdc1       $f28, 0x1a0($a1)
/* BF864 800BEC64 F4BE01A8 */  sdc1       $f30, 0x1a8($a1)
/* BF868 800BEC68 ACBB012C */  sw         $k1, 0x12c($a1)
.L800BEC6C:
/* BF86C 800BEC6C 8CBB0118 */  lw         $k1, 0x118($a1)
/* BF870 800BEC70 3369FF00 */  andi       $t1, $k1, 0xff00
/* BF874 800BEC74 1120000D */  beqz       $t1, .L800BECAC
/* BF878 800BEC78 00000000 */   nop
/* BF87C 800BEC7C 3C08800E */  lui        $t0, %hi(D_800DA0C0)
/* BF880 800BEC80 2508A0C0 */  addiu      $t0, $t0, %lo(D_800DA0C0)
/* BF884 800BEC84 8D080000 */  lw         $t0, ($t0)
/* BF888 800BEC88 2401FFFF */  addiu      $at, $zero, -1
/* BF88C 800BEC8C 01014026 */  xor        $t0, $t0, $at
/* BF890 800BEC90 3C01FFFF */  lui        $at, 0xffff
/* BF894 800BEC94 3108FF00 */  andi       $t0, $t0, 0xff00
/* BF898 800BEC98 342100FF */  ori        $at, $at, 0xff
/* BF89C 800BEC9C 01284825 */  or         $t1, $t1, $t0
/* BF8A0 800BECA0 0361D824 */  and        $k1, $k1, $at
/* BF8A4 800BECA4 0369D825 */  or         $k1, $k1, $t1
/* BF8A8 800BECA8 ACBB0118 */  sw         $k1, 0x118($a1)
.L800BECAC:
/* BF8AC 800BECAC 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* BF8B0 800BECB0 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* BF8B4 800BECB4 1360000B */  beqz       $k1, .L800BECE4
/* BF8B8 800BECB8 00000000 */   nop
/* BF8BC 800BECBC 3C1A800E */  lui        $k0, %hi(D_800DA0C0)
/* BF8C0 800BECC0 275AA0C0 */  addiu      $k0, $k0, %lo(D_800DA0C0)
/* BF8C4 800BECC4 8F5A0000 */  lw         $k0, ($k0)
/* BF8C8 800BECC8 8CA80128 */  lw         $t0, 0x128($a1)
/* BF8CC 800BECCC 2401FFFF */  addiu      $at, $zero, -1
/* BF8D0 800BECD0 001AD402 */  srl        $k0, $k0, 0x10
/* BF8D4 800BECD4 0341D026 */  xor        $k0, $k0, $at
/* BF8D8 800BECD8 335A003F */  andi       $k0, $k0, 0x3f
/* BF8DC 800BECDC 0348D024 */  and        $k0, $k0, $t0
/* BF8E0 800BECE0 037AD825 */  or         $k1, $k1, $k0
.L800BECE4:
/* BF8E4 800BECE4 10800003 */  beqz       $a0, .L800BECF4
/* BF8E8 800BECE8 ACBB0128 */   sw        $k1, 0x128($a1)
/* BF8EC 800BECEC 0C02FB3F */  jal        func_800BECFC
/* BF8F0 800BECF0 00000000 */   nop
.L800BECF4:
/* BF8F4 800BECF4 0802FB55 */  j          .L800BED54
/* BF8F8 800BECF8 00000000 */   nop

glabel func_800BECFC
/* BF8FC 800BECFC 8C980000 */  lw         $t8, ($a0)
/* BF900 800BED00 8CAF0004 */  lw         $t7, 4($a1)
/* BF904 800BED04 0080C825 */  or         $t9, $a0, $zero
/* BF908 800BED08 8F0E0004 */  lw         $t6, 4($t8)
/* BF90C 800BED0C 01CF082A */  slt        $at, $t6, $t7
/* BF910 800BED10 14200007 */  bnez       $at, .L800BED30
/* BF914 800BED14 00000000 */   nop
.L800BED18:
/* BF918 800BED18 0300C825 */  or         $t9, $t8, $zero
/* BF91C 800BED1C 8F180000 */  lw         $t8, ($t8)
/* BF920 800BED20 8F0E0004 */  lw         $t6, 4($t8)
/* BF924 800BED24 01CF082A */  slt        $at, $t6, $t7
/* BF928 800BED28 1020FFFB */  beqz       $at, .L800BED18
/* BF92C 800BED2C 00000000 */   nop
.L800BED30:
/* BF930 800BED30 8F380000 */  lw         $t8, ($t9)
/* BF934 800BED34 ACB80000 */  sw         $t8, ($a1)
/* BF938 800BED38 AF250000 */  sw         $a1, ($t9)
/* BF93C 800BED3C 03E00008 */  jr         $ra
/* BF940 800BED40 ACA40008 */   sw        $a0, 8($a1)

glabel func_800BED44
/* BF944 800BED44 8C820000 */  lw         $v0, ($a0)
/* BF948 800BED48 8C590000 */  lw         $t9, ($v0)
/* BF94C 800BED4C 03E00008 */  jr         $ra
/* BF950 800BED50 AC990000 */   sw        $t9, ($a0)
.L800BED54:
/* BF954 800BED54 3C04800E */  lui        $a0, %hi(D_800DA078)
/* BF958 800BED58 0C02FB51 */  jal        func_800BED44
/* BF95C 800BED5C 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
/* BF960 800BED60 3C01800E */  lui        $at, %hi(D_800DA080)
/* BF964 800BED64 AC22A080 */  sw         $v0, %lo(D_800DA080)($at)
/* BF968 800BED68 24080004 */  addiu      $t0, $zero, 4
/* BF96C 800BED6C A4480010 */  sh         $t0, 0x10($v0)
/* BF970 800BED70 0040D025 */  or         $k0, $v0, $zero
/* BF974 800BED74 3C08800E */  lui        $t0, %hi(D_800DA0C0)
/* BF978 800BED78 8F5B0118 */  lw         $k1, 0x118($k0)
/* BF97C 800BED7C 2508A0C0 */  addiu      $t0, $t0, %lo(D_800DA0C0)
/* BF980 800BED80 8D080000 */  lw         $t0, ($t0)
/* BF984 800BED84 3C01FFFF */  lui        $at, 0xffff
/* BF988 800BED88 3369FF00 */  andi       $t1, $k1, 0xff00
/* BF98C 800BED8C 342100FF */  ori        $at, $at, 0xff
/* BF990 800BED90 3108FF00 */  andi       $t0, $t0, 0xff00
/* BF994 800BED94 01284824 */  and        $t1, $t1, $t0
/* BF998 800BED98 0361D824 */  and        $k1, $k1, $at
/* BF99C 800BED9C 0369D825 */  or         $k1, $k1, $t1
/* BF9A0 800BEDA0 409B6000 */  mtc0       $k1, $12
/* BF9A4 800BEDA4 DF5B0108 */  ld         $k1, 0x108($k0)
/* BF9A8 800BEDA8 DF410020 */  ld         $at, 0x20($k0)
/* BF9AC 800BEDAC DF420028 */  ld         $v0, 0x28($k0)
/* BF9B0 800BEDB0 03600013 */  mtlo       $k1
/* BF9B4 800BEDB4 DF5B0110 */  ld         $k1, 0x110($k0)
/* BF9B8 800BEDB8 DF430030 */  ld         $v1, 0x30($k0)
/* BF9BC 800BEDBC DF440038 */  ld         $a0, 0x38($k0)
/* BF9C0 800BEDC0 DF450040 */  ld         $a1, 0x40($k0)
/* BF9C4 800BEDC4 DF460048 */  ld         $a2, 0x48($k0)
/* BF9C8 800BEDC8 DF470050 */  ld         $a3, 0x50($k0)
/* BF9CC 800BEDCC DF480058 */  ld         $t0, 0x58($k0)
/* BF9D0 800BEDD0 DF490060 */  ld         $t1, 0x60($k0)
/* BF9D4 800BEDD4 DF4A0068 */  ld         $t2, 0x68($k0)
/* BF9D8 800BEDD8 DF4B0070 */  ld         $t3, 0x70($k0)
/* BF9DC 800BEDDC DF4C0078 */  ld         $t4, 0x78($k0)
/* BF9E0 800BEDE0 DF4D0080 */  ld         $t5, 0x80($k0)
/* BF9E4 800BEDE4 DF4E0088 */  ld         $t6, 0x88($k0)
/* BF9E8 800BEDE8 DF4F0090 */  ld         $t7, 0x90($k0)
/* BF9EC 800BEDEC DF500098 */  ld         $s0, 0x98($k0)
/* BF9F0 800BEDF0 DF5100A0 */  ld         $s1, 0xa0($k0)
/* BF9F4 800BEDF4 DF5200A8 */  ld         $s2, 0xa8($k0)
/* BF9F8 800BEDF8 DF5300B0 */  ld         $s3, 0xb0($k0)
/* BF9FC 800BEDFC DF5400B8 */  ld         $s4, 0xb8($k0)
/* BFA00 800BEE00 DF5500C0 */  ld         $s5, 0xc0($k0)
/* BFA04 800BEE04 DF5600C8 */  ld         $s6, 0xc8($k0)
/* BFA08 800BEE08 DF5700D0 */  ld         $s7, 0xd0($k0)
/* BFA0C 800BEE0C DF5800D8 */  ld         $t8, 0xd8($k0)
/* BFA10 800BEE10 DF5900E0 */  ld         $t9, 0xe0($k0)
/* BFA14 800BEE14 DF5C00E8 */  ld         $gp, 0xe8($k0)
/* BFA18 800BEE18 03600011 */  mthi       $k1
/* BFA1C 800BEE1C DF5D00F0 */  ld         $sp, 0xf0($k0)
/* BFA20 800BEE20 DF5E00F8 */  ld         $fp, 0xf8($k0)
/* BFA24 800BEE24 DF5F0100 */  ld         $ra, 0x100($k0)
/* BFA28 800BEE28 8F5B011C */  lw         $k1, 0x11c($k0)
/* BFA2C 800BEE2C 409B7000 */  mtc0       $k1, $14
/* BFA30 800BEE30 8F5B0018 */  lw         $k1, 0x18($k0)
/* BFA34 800BEE34 13600013 */  beqz       $k1, .L800BEE84
/* BFA38 800BEE38 00000000 */   nop
/* BFA3C 800BEE3C 8F5B012C */  lw         $k1, 0x12c($k0)
/* BFA40 800BEE40 44DBF800 */  ctc1       $k1, $31
/* BFA44 800BEE44 D7400130 */  ldc1       $f0, 0x130($k0)
/* BFA48 800BEE48 D7420138 */  ldc1       $f2, 0x138($k0)
/* BFA4C 800BEE4C D7440140 */  ldc1       $f4, 0x140($k0)
/* BFA50 800BEE50 D7460148 */  ldc1       $f6, 0x148($k0)
/* BFA54 800BEE54 D7480150 */  ldc1       $f8, 0x150($k0)
/* BFA58 800BEE58 D74A0158 */  ldc1       $f10, 0x158($k0)
/* BFA5C 800BEE5C D74C0160 */  ldc1       $f12, 0x160($k0)
/* BFA60 800BEE60 D74E0168 */  ldc1       $f14, 0x168($k0)
/* BFA64 800BEE64 D7500170 */  ldc1       $f16, 0x170($k0)
/* BFA68 800BEE68 D7520178 */  ldc1       $f18, 0x178($k0)
/* BFA6C 800BEE6C D7540180 */  ldc1       $f20, 0x180($k0)
/* BFA70 800BEE70 D7560188 */  ldc1       $f22, 0x188($k0)
/* BFA74 800BEE74 D7580190 */  ldc1       $f24, 0x190($k0)
/* BFA78 800BEE78 D75A0198 */  ldc1       $f26, 0x198($k0)
/* BFA7C 800BEE7C D75C01A0 */  ldc1       $f28, 0x1a0($k0)
/* BFA80 800BEE80 D75E01A8 */  ldc1       $f30, 0x1a8($k0)
.L800BEE84:
/* BFA84 800BEE84 8F5B0128 */  lw         $k1, 0x128($k0)
/* BFA88 800BEE88 3C1A800E */  lui        $k0, %hi(D_800DA0C0)
/* BFA8C 800BEE8C 275AA0C0 */  addiu      $k0, $k0, %lo(D_800DA0C0)
/* BFA90 800BEE90 8F5A0000 */  lw         $k0, ($k0)
/* BFA94 800BEE94 001AD402 */  srl        $k0, $k0, 0x10
/* BFA98 800BEE98 037AD824 */  and        $k1, $k1, $k0
/* BFA9C 800BEE9C 001BD840 */  sll        $k1, $k1, 1
/* BFAA0 800BEEA0 3C1A800E */  lui        $k0, %hi(D_800DF910)
/* BFAA4 800BEEA4 275AF910 */  addiu      $k0, $k0, %lo(D_800DF910)
/* BFAA8 800BEEA8 037AD821 */  addu       $k1, $k1, $k0
/* BFAAC 800BEEAC 977B0000 */  lhu        $k1, ($k1)
/* BFAB0 800BEEB0 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* BFAB4 800BEEB4 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* BFAB8 800BEEB8 AF5B0000 */  sw         $k1, ($k0)
/* BFABC 800BEEBC 00000000 */  nop
/* BFAC0 800BEEC0 00000000 */  nop
/* BFAC4 800BEEC4 00000000 */  nop
/* BFAC8 800BEEC8 00000000 */  nop
/* BFACC 800BEECC 42000018 */  eret
/* BFAD0 800BEED0 0C02FBC8 */  jal        func_800BEF20
/* BFAD4 800BEED4 00002025 */   or        $a0, $zero, $zero
/* BFAD8 800BEED8 00000000 */  nop
/* BFADC 800BEEDC 00000000 */  nop
/* BFAE0 800BEEE0 00803025 */  or         $a2, $a0, $zero
/* BFAE4 800BEEE4 8CC70000 */  lw         $a3, ($a2)
/* BFAE8 800BEEE8 27BDFFF8 */  addiu      $sp, $sp, -8
/* BFAEC 800BEEEC 10E0000A */  beqz       $a3, .L800BEF18
/* BFAF0 800BEEF0 00000000 */   nop
.L800BEEF4:
/* BFAF4 800BEEF4 14E50004 */  bne        $a3, $a1, .L800BEF08
/* BFAF8 800BEEF8 00000000 */   nop
/* BFAFC 800BEEFC 8CAE0000 */  lw         $t6, ($a1)
/* BFB00 800BEF00 10000005 */  b          .L800BEF18
/* BFB04 800BEF04 ACCE0000 */   sw        $t6, ($a2)
.L800BEF08:
/* BFB08 800BEF08 00E03025 */  or         $a2, $a3, $zero
/* BFB0C 800BEF0C 8CC70000 */  lw         $a3, ($a2)
/* BFB10 800BEF10 14E0FFF8 */  bnez       $a3, .L800BEEF4
/* BFB14 800BEF14 00000000 */   nop
.L800BEF18:
/* BFB18 800BEF18 03E00008 */  jr         $ra
/* BFB1C 800BEF1C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800BEF20
/* BFB20 800BEF20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BFB24 800BEF24 AFBF0024 */  sw         $ra, 0x24($sp)
/* BFB28 800BEF28 AFA40038 */  sw         $a0, 0x38($sp)
/* BFB2C 800BEF2C AFB20020 */  sw         $s2, 0x20($sp)
/* BFB30 800BEF30 AFB1001C */  sw         $s1, 0x1c($sp)
/* BFB34 800BEF34 0C033DD4 */  jal        func_800CF750
/* BFB38 800BEF38 AFB00018 */   sw        $s0, 0x18($sp)
/* BFB3C 800BEF3C 8FAE0038 */  lw         $t6, 0x38($sp)
/* BFB40 800BEF40 00408025 */  or         $s0, $v0, $zero
/* BFB44 800BEF44 15C00005 */  bnez       $t6, .L800BEF5C
/* BFB48 800BEF48 00000000 */   nop
/* BFB4C 800BEF4C 3C0F800E */  lui        $t7, %hi(D_800DA080)
/* BFB50 800BEF50 8DEFA080 */  lw         $t7, %lo(D_800DA080)($t7)
/* BFB54 800BEF54 10000009 */  b          .L800BEF7C
/* BFB58 800BEF58 AFAF0038 */   sw        $t7, 0x38($sp)
.L800BEF5C:
/* BFB5C 800BEF5C 8FB80038 */  lw         $t8, 0x38($sp)
/* BFB60 800BEF60 24010001 */  addiu      $at, $zero, 1
/* BFB64 800BEF64 97190010 */  lhu        $t9, 0x10($t8)
/* BFB68 800BEF68 13210004 */  beq        $t9, $at, .L800BEF7C
/* BFB6C 800BEF6C 00000000 */   nop
/* BFB70 800BEF70 8F040008 */  lw         $a0, 8($t8)
/* BFB74 800BEF74 0C02FBB8 */  jal        func_800BEEE0
/* BFB78 800BEF78 03002825 */   or        $a1, $t8, $zero
.L800BEF7C:
/* BFB7C 800BEF7C 3C08800E */  lui        $t0, %hi(D_800DA07C)
/* BFB80 800BEF80 8D08A07C */  lw         $t0, %lo(D_800DA07C)($t0)
/* BFB84 800BEF84 8FA90038 */  lw         $t1, 0x38($sp)
/* BFB88 800BEF88 15090005 */  bne        $t0, $t1, .L800BEFA0
/* BFB8C 800BEF8C 00000000 */   nop
/* BFB90 800BEF90 8D0A000C */  lw         $t2, 0xc($t0)
/* BFB94 800BEF94 3C01800E */  lui        $at, %hi(D_800DA07C)
/* BFB98 800BEF98 10000013 */  b          .L800BEFE8
/* BFB9C 800BEF9C AC2AA07C */   sw        $t2, %lo(D_800DA07C)($at)
.L800BEFA0:
/* BFBA0 800BEFA0 3C11800E */  lui        $s1, %hi(D_800DA07C)
/* BFBA4 800BEFA4 8E31A07C */  lw         $s1, %lo(D_800DA07C)($s1)
/* BFBA8 800BEFA8 2401FFFF */  addiu      $at, $zero, -1
/* BFBAC 800BEFAC 8E2B0004 */  lw         $t3, 4($s1)
/* BFBB0 800BEFB0 1161000D */  beq        $t3, $at, .L800BEFE8
/* BFBB4 800BEFB4 00000000 */   nop
.L800BEFB8:
/* BFBB8 800BEFB8 8E32000C */  lw         $s2, 0xc($s1)
/* BFBBC 800BEFBC 8FAC0038 */  lw         $t4, 0x38($sp)
/* BFBC0 800BEFC0 164C0004 */  bne        $s2, $t4, .L800BEFD4
/* BFBC4 800BEFC4 00000000 */   nop
/* BFBC8 800BEFC8 8D8D000C */  lw         $t5, 0xc($t4)
/* BFBCC 800BEFCC 10000006 */  b          .L800BEFE8
/* BFBD0 800BEFD0 AE2D000C */   sw        $t5, 0xc($s1)
.L800BEFD4:
/* BFBD4 800BEFD4 02408825 */  or         $s1, $s2, $zero
/* BFBD8 800BEFD8 8E2E0004 */  lw         $t6, 4($s1)
/* BFBDC 800BEFDC 2401FFFF */  addiu      $at, $zero, -1
/* BFBE0 800BEFE0 15C1FFF5 */  bne        $t6, $at, .L800BEFB8
/* BFBE4 800BEFE4 00000000 */   nop
.L800BEFE8:
/* BFBE8 800BEFE8 3C19800E */  lui        $t9, %hi(D_800DA080)
/* BFBEC 800BEFEC 8F39A080 */  lw         $t9, %lo(D_800DA080)($t9)
/* BFBF0 800BEFF0 8FAF0038 */  lw         $t7, 0x38($sp)
/* BFBF4 800BEFF4 15F90003 */  bne        $t7, $t9, .L800BF004
/* BFBF8 800BEFF8 00000000 */   nop
/* BFBFC 800BEFFC 0C02FB55 */  jal        func_800BED54
/* BFC00 800BF000 00000000 */   nop
.L800BF004:
/* BFC04 800BF004 0C033DDC */  jal        func_800CF770
/* BFC08 800BF008 02002025 */   or        $a0, $s0, $zero
/* BFC0C 800BF00C 8FBF0024 */  lw         $ra, 0x24($sp)
/* BFC10 800BF010 8FB00018 */  lw         $s0, 0x18($sp)
/* BFC14 800BF014 8FB1001C */  lw         $s1, 0x1c($sp)
/* BFC18 800BF018 8FB20020 */  lw         $s2, 0x20($sp)
/* BFC1C 800BF01C 03E00008 */  jr         $ra
/* BFC20 800BF020 27BD0038 */   addiu     $sp, $sp, 0x38
/* BFC24 800BF024 00000000 */  nop
/* BFC28 800BF028 00000000 */  nop
/* BFC2C 800BF02C 00000000 */  nop
