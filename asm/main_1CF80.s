.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001C380
/* 1CF80 8001C380 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1CF84 8001C384 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1CF88 8001C388 AFA40050 */  sw         $a0, 0x50($sp)
/* 1CF8C 8001C38C F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1CF90 8001C390 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1CF94 8001C394 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 1CF98 8001C398 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1CF9C 8001C39C 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 1CFA0 8001C3A0 3C188016 */  lui        $t8, 0x8016
/* 1CFA4 8001C3A4 000E7880 */  sll        $t7, $t6, 2
/* 1CFA8 8001C3A8 00084880 */  sll        $t1, $t0, 2
/* 1CFAC 8001C3AC 01EE7823 */  subu       $t7, $t7, $t6
/* 1CFB0 8001C3B0 01284823 */  subu       $t1, $t1, $t0
/* 1CFB4 8001C3B4 000F7880 */  sll        $t7, $t7, 2
/* 1CFB8 8001C3B8 00094880 */  sll        $t1, $t1, 2
/* 1CFBC 8001C3BC 01EE7823 */  subu       $t7, $t7, $t6
/* 1CFC0 8001C3C0 01284823 */  subu       $t1, $t1, $t0
/* 1CFC4 8001C3C4 000F7880 */  sll        $t7, $t7, 2
/* 1CFC8 8001C3C8 00094880 */  sll        $t1, $t1, 2
/* 1CFCC 8001C3CC 8F18FB9C */  lw         $t8, -0x464($t8)
/* 1CFD0 8001C3D0 01EE7821 */  addu       $t7, $t7, $t6
/* 1CFD4 8001C3D4 01284821 */  addu       $t1, $t1, $t0
/* 1CFD8 8001C3D8 000F7880 */  sll        $t7, $t7, 2
/* 1CFDC 8001C3DC 00094880 */  sll        $t1, $t1, 2
/* 1CFE0 8001C3E0 01EE7823 */  subu       $t7, $t7, $t6
/* 1CFE4 8001C3E4 01284823 */  subu       $t1, $t1, $t0
/* 1CFE8 8001C3E8 000F7880 */  sll        $t7, $t7, 2
/* 1CFEC 8001C3EC 00094880 */  sll        $t1, $t1, 2
/* 1CFF0 8001C3F0 01F8C821 */  addu       $t9, $t7, $t8
/* 1CFF4 8001C3F4 01385021 */  addu       $t2, $t1, $t8
/* 1CFF8 8001C3F8 AFB9003C */  sw         $t9, 0x3c($sp)
/* 1CFFC 8001C3FC AFAA0038 */  sw         $t2, 0x38($sp)
/* 1D000 8001C400 C72A0094 */  lwc1       $f10, 0x94($t9)
/* 1D004 8001C404 C72800E8 */  lwc1       $f8, 0xe8($t9)
/* 1D008 8001C408 C726008C */  lwc1       $f6, 0x8c($t9)
/* 1D00C 8001C40C C72400E0 */  lwc1       $f4, 0xe0($t9)
/* 1D010 8001C410 460A4381 */  sub.s      $f14, $f8, $f10
/* 1D014 8001C414 0C00475A */  jal        func_80011D68
/* 1D018 8001C418 46062301 */   sub.s     $f12, $f4, $f6
/* 1D01C 8001C41C 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* 1D020 8001C420 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* 1D024 8001C424 24010009 */  addiu      $at, $zero, 9
/* 1D028 8001C428 E7A00044 */  swc1       $f0, 0x44($sp)
/* 1D02C 8001C42C 1161001F */  beq        $t3, $at, .L8001C4AC
/* 1D030 8001C430 24010010 */   addiu     $at, $zero, 0x10
/* 1D034 8001C434 1161001D */  beq        $t3, $at, .L8001C4AC
/* 1D038 8001C438 24010012 */   addiu     $at, $zero, 0x12
/* 1D03C 8001C43C 1161001B */  beq        $t3, $at, .L8001C4AC
/* 1D040 8001C440 24010013 */   addiu     $at, $zero, 0x13
/* 1D044 8001C444 11610019 */  beq        $t3, $at, .L8001C4AC
/* 1D048 8001C448 00000000 */   nop
/* 1D04C 8001C44C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 1D050 8001C450 8FAD003C */  lw         $t5, 0x3c($sp)
/* 1D054 8001C454 C59000E4 */  lwc1       $f16, 0xe4($t4)
/* 1D058 8001C458 C5B200E4 */  lwc1       $f18, 0xe4($t5)
/* 1D05C 8001C45C 0C004788 */  jal        func_80011E20
/* 1D060 8001C460 46128301 */   sub.s     $f12, $f16, $f18
/* 1D064 8001C464 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1D068 8001C468 8FAF003C */  lw         $t7, 0x3c($sp)
/* 1D06C 8001C46C 46000586 */  mov.s      $f22, $f0
/* 1D070 8001C470 C5C400E0 */  lwc1       $f4, 0xe0($t6)
/* 1D074 8001C474 C5E600E0 */  lwc1       $f6, 0xe0($t7)
/* 1D078 8001C478 0C004788 */  jal        func_80011E20
/* 1D07C 8001C47C 46062301 */   sub.s     $f12, $f4, $f6
/* 1D080 8001C480 8FA80038 */  lw         $t0, 0x38($sp)
/* 1D084 8001C484 8FA9003C */  lw         $t1, 0x3c($sp)
/* 1D088 8001C488 46000506 */  mov.s      $f20, $f0
/* 1D08C 8001C48C C50800E8 */  lwc1       $f8, 0xe8($t0)
/* 1D090 8001C490 C52A00E8 */  lwc1       $f10, 0xe8($t1)
/* 1D094 8001C494 0C004788 */  jal        func_80011E20
/* 1D098 8001C498 460A4301 */   sub.s     $f12, $f8, $f10
/* 1D09C 8001C49C 4616A400 */  add.s      $f16, $f20, $f22
/* 1D0A0 8001C4A0 46100480 */  add.s      $f18, $f0, $f16
/* 1D0A4 8001C4A4 10000005 */  b          .L8001C4BC
/* 1D0A8 8001C4A8 E7B20040 */   swc1      $f18, 0x40($sp)
.L8001C4AC:
/* 1D0AC 8001C4AC 3C0142C8 */  lui        $at, 0x42c8
/* 1D0B0 8001C4B0 44812000 */  mtc1       $at, $f4
/* 1D0B4 8001C4B4 00000000 */  nop
/* 1D0B8 8001C4B8 E7A40040 */  swc1       $f4, 0x40($sp)
.L8001C4BC:
/* 1D0BC 8001C4BC 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1D0C0 8001C4C0 2401000A */  addiu      $at, $zero, 0xa
/* 1D0C4 8001C4C4 8F0A006C */  lw         $t2, 0x6c($t8)
/* 1D0C8 8001C4C8 15410005 */  bne        $t2, $at, .L8001C4E0
/* 1D0CC 8001C4CC 00000000 */   nop
/* 1D0D0 8001C4D0 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 1D0D4 8001C4D4 3C018016 */  lui        $at, %hi(D_8015ED00)
/* 1D0D8 8001C4D8 10000004 */  b          .L8001C4EC
/* 1D0DC 8001C4DC E426ED00 */   swc1      $f6, %lo(D_8015ED00)($at)
.L8001C4E0:
/* 1D0E0 8001C4E0 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 1D0E4 8001C4E4 3C018016 */  lui        $at, %hi(D_8015ECF0)
/* 1D0E8 8001C4E8 E428ECF0 */  swc1       $f8, %lo(D_8015ECF0)($at)
.L8001C4EC:
/* 1D0EC 8001C4EC C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 1D0F0 8001C4F0 3C014059 */  lui        $at, 0x4059
/* 1D0F4 8001C4F4 44819800 */  mtc1       $at, $f19
/* 1D0F8 8001C4F8 44809000 */  mtc1       $zero, $f18
/* 1D0FC 8001C4FC 46005421 */  cvt.d.s    $f16, $f10
/* 1D100 8001C500 4632803C */  c.lt.d     $f16, $f18
/* 1D104 8001C504 00000000 */  nop
/* 1D108 8001C508 45000093 */  bc1f       .L8001C758
/* 1D10C 8001C50C 00000000 */   nop
/* 1D110 8001C510 3C198016 */  lui        $t9, %hi(D_8015F464)
/* 1D114 8001C514 8F39F464 */  lw         $t9, %lo(D_8015F464)($t9)
/* 1D118 8001C518 24010012 */  addiu      $at, $zero, 0x12
/* 1D11C 8001C51C 17210020 */  bne        $t9, $at, .L8001C5A0
/* 1D120 8001C520 00000000 */   nop
/* 1D124 8001C524 3C0B8016 */  lui        $t3, %hi(D_801631F4)
/* 1D128 8001C528 256B31F4 */  addiu      $t3, $t3, %lo(D_801631F4)
/* 1D12C 8001C52C 8D6C0004 */  lw         $t4, 4($t3)
/* 1D130 8001C530 1580001B */  bnez       $t4, .L8001C5A0
/* 1D134 8001C534 00000000 */   nop
/* 1D138 8001C538 8FAD003C */  lw         $t5, 0x3c($sp)
/* 1D13C 8001C53C 3C013F80 */  lui        $at, 0x3f80
/* 1D140 8001C540 44813000 */  mtc1       $at, $f6
/* 1D144 8001C544 C5A40034 */  lwc1       $f4, 0x34($t5)
/* 1D148 8001C548 3C014080 */  lui        $at, 0x4080
/* 1D14C 8001C54C 44818000 */  mtc1       $at, $f16
/* 1D150 8001C550 46062200 */  add.s      $f8, $f4, $f6
/* 1D154 8001C554 E5A80034 */  swc1       $f8, 0x34($t5)
/* 1D158 8001C558 8FAE003C */  lw         $t6, 0x3c($sp)
/* 1D15C 8001C55C 85CF00C0 */  lh         $t7, 0xc0($t6)
/* 1D160 8001C560 25E80001 */  addiu      $t0, $t7, 1
/* 1D164 8001C564 A5C800C0 */  sh         $t0, 0xc0($t6)
/* 1D168 8001C568 8FA9003C */  lw         $t1, 0x3c($sp)
/* 1D16C 8001C56C C52A0034 */  lwc1       $f10, 0x34($t1)
/* 1D170 8001C570 460A803E */  c.le.s     $f16, $f10
/* 1D174 8001C574 00000000 */  nop
/* 1D178 8001C578 4500000D */  bc1f       .L8001C5B0
/* 1D17C 8001C57C 00000000 */   nop
/* 1D180 8001C580 44809000 */  mtc1       $zero, $f18
/* 1D184 8001C584 00000000 */  nop
/* 1D188 8001C588 E5320034 */  swc1       $f18, 0x34($t1)
/* 1D18C 8001C58C 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1D190 8001C590 870A00C0 */  lh         $t2, 0xc0($t8)
/* 1D194 8001C594 2559FFFC */  addiu      $t9, $t2, -4
/* 1D198 8001C598 10000005 */  b          .L8001C5B0
/* 1D19C 8001C59C A71900C0 */   sh        $t9, 0xc0($t8)
.L8001C5A0:
/* 1D1A0 8001C5A0 8FAB003C */  lw         $t3, 0x3c($sp)
/* 1D1A4 8001C5A4 856C00C0 */  lh         $t4, 0xc0($t3)
/* 1D1A8 8001C5A8 258D0001 */  addiu      $t5, $t4, 1
/* 1D1AC 8001C5AC A56D00C0 */  sh         $t5, 0xc0($t3)
.L8001C5B0:
/* 1D1B0 8001C5B0 8FAF003C */  lw         $t7, 0x3c($sp)
/* 1D1B4 8001C5B4 3C018016 */  lui        $at, 0x8016
/* 1D1B8 8001C5B8 44809800 */  mtc1       $zero, $f19
/* 1D1BC 8001C5BC 85E800C0 */  lh         $t0, 0xc0($t7)
/* 1D1C0 8001C5C0 44809000 */  mtc1       $zero, $f18
/* 1D1C4 8001C5C4 00087080 */  sll        $t6, $t0, 2
/* 1D1C8 8001C5C8 01C87023 */  subu       $t6, $t6, $t0
/* 1D1CC 8001C5CC 000E70C0 */  sll        $t6, $t6, 3
/* 1D1D0 8001C5D0 002E0821 */  addu       $at, $at, $t6
/* 1D1D4 8001C5D4 C42425F4 */  lwc1       $f4, 0x25f4($at)
/* 1D1D8 8001C5D8 3C018016 */  lui        $at, 0x8016
/* 1D1DC 8001C5DC E5E4008C */  swc1       $f4, 0x8c($t7)
/* 1D1E0 8001C5E0 8FA9003C */  lw         $t1, 0x3c($sp)
/* 1D1E4 8001C5E4 852A00C0 */  lh         $t2, 0xc0($t1)
/* 1D1E8 8001C5E8 000AC880 */  sll        $t9, $t2, 2
/* 1D1EC 8001C5EC 032AC823 */  subu       $t9, $t9, $t2
/* 1D1F0 8001C5F0 0019C8C0 */  sll        $t9, $t9, 3
/* 1D1F4 8001C5F4 00390821 */  addu       $at, $at, $t9
/* 1D1F8 8001C5F8 C42625F8 */  lwc1       $f6, 0x25f8($at)
/* 1D1FC 8001C5FC 3C018016 */  lui        $at, 0x8016
/* 1D200 8001C600 E5260090 */  swc1       $f6, 0x90($t1)
/* 1D204 8001C604 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1D208 8001C608 870C00C0 */  lh         $t4, 0xc0($t8)
/* 1D20C 8001C60C 000C6880 */  sll        $t5, $t4, 2
/* 1D210 8001C610 01AC6823 */  subu       $t5, $t5, $t4
/* 1D214 8001C614 000D68C0 */  sll        $t5, $t5, 3
/* 1D218 8001C618 002D0821 */  addu       $at, $at, $t5
/* 1D21C 8001C61C C42825FC */  lwc1       $f8, 0x25fc($at)
/* 1D220 8001C620 E7080094 */  swc1       $f8, 0x94($t8)
/* 1D224 8001C624 8FAB003C */  lw         $t3, 0x3c($sp)
/* 1D228 8001C628 C56A008C */  lwc1       $f10, 0x8c($t3)
/* 1D22C 8001C62C 46005421 */  cvt.d.s    $f16, $f10
/* 1D230 8001C630 4632803C */  c.lt.d     $f16, $f18
/* 1D234 8001C634 00000000 */  nop
/* 1D238 8001C638 450000A7 */  bc1f       .L8001C8D8
/* 1D23C 8001C63C 00000000 */   nop
/* 1D240 8001C640 3C088016 */  lui        $t0, %hi(D_8015F464)
/* 1D244 8001C644 8D08F464 */  lw         $t0, %lo(D_8015F464)($t0)
/* 1D248 8001C648 24010009 */  addiu      $at, $zero, 9
/* 1D24C 8001C64C 11010009 */  beq        $t0, $at, .L8001C674
/* 1D250 8001C650 24010010 */   addiu     $at, $zero, 0x10
/* 1D254 8001C654 11010007 */  beq        $t0, $at, .L8001C674
/* 1D258 8001C658 24010012 */   addiu     $at, $zero, 0x12
/* 1D25C 8001C65C 11010005 */  beq        $t0, $at, .L8001C674
/* 1D260 8001C660 24010013 */   addiu     $at, $zero, 0x13
/* 1D264 8001C664 11010003 */  beq        $t0, $at, .L8001C674
/* 1D268 8001C668 2401000A */   addiu     $at, $zero, 0xa
/* 1D26C 8001C66C 15010006 */  bne        $t0, $at, .L8001C688
/* 1D270 8001C670 00000000 */   nop
.L8001C674:
/* 1D274 8001C674 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* 1D278 8001C678 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* 1D27C 8001C67C 8DCF0028 */  lw         $t7, 0x28($t6)
/* 1D280 8001C680 25EA0001 */  addiu      $t2, $t7, 1
/* 1D284 8001C684 ADCA0028 */  sw         $t2, 0x28($t6)
.L8001C688:
/* 1D288 8001C688 3C198016 */  lui        $t9, %hi(D_8015F464)
/* 1D28C 8001C68C 8F39F464 */  lw         $t9, %lo(D_8015F464)($t9)
/* 1D290 8001C690 24010002 */  addiu      $at, $zero, 2
/* 1D294 8001C694 17210005 */  bne        $t9, $at, .L8001C6AC
/* 1D298 8001C698 00000000 */   nop
/* 1D29C 8001C69C 0C012101 */  jal        func_80048404
/* 1D2A0 8001C6A0 8FA40050 */   lw        $a0, 0x50($sp)
/* 1D2A4 8001C6A4 10000019 */  b          .L8001C70C
/* 1D2A8 8001C6A8 00000000 */   nop
.L8001C6AC:
/* 1D2AC 8001C6AC 3C098016 */  lui        $t1, %hi(D_8015F464)
/* 1D2B0 8001C6B0 8D29F464 */  lw         $t1, %lo(D_8015F464)($t1)
/* 1D2B4 8001C6B4 24010003 */  addiu      $at, $zero, 3
/* 1D2B8 8001C6B8 15210014 */  bne        $t1, $at, .L8001C70C
/* 1D2BC 8001C6BC 00000000 */   nop
/* 1D2C0 8001C6C0 3C0C8016 */  lui        $t4, %hi(D_8015EDC8)
/* 1D2C4 8001C6C4 8D8CEDC8 */  lw         $t4, %lo(D_8015EDC8)($t4)
/* 1D2C8 8001C6C8 15800010 */  bnez       $t4, .L8001C70C
/* 1D2CC 8001C6CC 00000000 */   nop
/* 1D2D0 8001C6D0 3C0D801C */  lui        $t5, %hi(D_801C5D40)
/* 1D2D4 8001C6D4 25AD5D40 */  addiu      $t5, $t5, %lo(D_801C5D40)
/* 1D2D8 8001C6D8 8DA4018C */  lw         $a0, 0x18c($t5)
/* 1D2DC 8001C6DC AFA00014 */  sw         $zero, 0x14($sp)
/* 1D2E0 8001C6E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1D2E4 8001C6E4 24050001 */  addiu      $a1, $zero, 1
/* 1D2E8 8001C6E8 00003025 */  or         $a2, $zero, $zero
/* 1D2EC 8001C6EC 0C0209BC */  jal        func_800826F0
/* 1D2F0 8001C6F0 24074000 */   addiu     $a3, $zero, 0x4000
/* 1D2F4 8001C6F4 24040003 */  addiu      $a0, $zero, 3
/* 1D2F8 8001C6F8 0C00ABC4 */  jal        func_8002AF10
/* 1D2FC 8001C6FC 24050001 */   addiu     $a1, $zero, 1
/* 1D300 8001C700 24180001 */  addiu      $t8, $zero, 1
/* 1D304 8001C704 3C018016 */  lui        $at, %hi(D_8015EDC8)
/* 1D308 8001C708 AC38EDC8 */  sw         $t8, %lo(D_8015EDC8)($at)
.L8001C70C:
/* 1D30C 8001C70C 8FAB003C */  lw         $t3, 0x3c($sp)
/* 1D310 8001C710 2401000A */  addiu      $at, $zero, 0xa
/* 1D314 8001C714 AD600064 */  sw         $zero, 0x64($t3)
/* 1D318 8001C718 8FA8003C */  lw         $t0, 0x3c($sp)
/* 1D31C 8001C71C 8D0F006C */  lw         $t7, 0x6c($t0)
/* 1D320 8001C720 15E10007 */  bne        $t7, $at, .L8001C740
/* 1D324 8001C724 00000000 */   nop
/* 1D328 8001C728 240AFFFF */  addiu      $t2, $zero, -1
/* 1D32C 8001C72C 3C018016 */  lui        $at, %hi(D_8015ECF8)
/* 1D330 8001C730 AC2AECF8 */  sw         $t2, %lo(D_8015ECF8)($at)
/* 1D334 8001C734 3C018016 */  lui        $at, %hi(D_8015ECF4)
/* 1D338 8001C738 10000067 */  b          .L8001C8D8
/* 1D33C 8001C73C AC20ECF4 */   sw        $zero, %lo(D_8015ECF4)($at)
.L8001C740:
/* 1D340 8001C740 240EFFFF */  addiu      $t6, $zero, -1
/* 1D344 8001C744 3C018016 */  lui        $at, %hi(D_8015ECE8)
/* 1D348 8001C748 AC2EECE8 */  sw         $t6, %lo(D_8015ECE8)($at)
/* 1D34C 8001C74C 3C018016 */  lui        $at, %hi(D_8015ECE4)
/* 1D350 8001C750 10000061 */  b          .L8001C8D8
/* 1D354 8001C754 AC20ECE4 */   sw        $zero, %lo(D_8015ECE4)($at)
.L8001C758:
/* 1D358 8001C758 8FB9003C */  lw         $t9, 0x3c($sp)
/* 1D35C 8001C75C C72400E4 */  lwc1       $f4, 0xe4($t9)
/* 1D360 8001C760 C7260090 */  lwc1       $f6, 0x90($t9)
/* 1D364 8001C764 4606203C */  c.lt.s     $f4, $f6
/* 1D368 8001C768 00000000 */  nop
/* 1D36C 8001C76C 45000010 */  bc1f       .L8001C7B0
/* 1D370 8001C770 00000000 */   nop
/* 1D374 8001C774 872900C0 */  lh         $t1, 0xc0($t9)
/* 1D378 8001C778 3C018016 */  lui        $at, 0x8016
/* 1D37C 8001C77C 44808800 */  mtc1       $zero, $f17
/* 1D380 8001C780 00096080 */  sll        $t4, $t1, 2
/* 1D384 8001C784 01896023 */  subu       $t4, $t4, $t1
/* 1D388 8001C788 000C60C0 */  sll        $t4, $t4, 3
/* 1D38C 8001C78C 002C0821 */  addu       $at, $at, $t4
/* 1D390 8001C790 C4282604 */  lwc1       $f8, 0x2604($at)
/* 1D394 8001C794 44808000 */  mtc1       $zero, $f16
/* 1D398 8001C798 460042A1 */  cvt.d.s    $f10, $f8
/* 1D39C 8001C79C 462A803C */  c.lt.d     $f16, $f10
/* 1D3A0 8001C7A0 00000000 */  nop
/* 1D3A4 8001C7A4 45000002 */  bc1f       .L8001C7B0
/* 1D3A8 8001C7A8 00000000 */   nop
/* 1D3AC 8001C7AC E72800D8 */  swc1       $f8, 0xd8($t9)
.L8001C7B0:
/* 1D3B0 8001C7B0 8FAD003C */  lw         $t5, 0x3c($sp)
/* 1D3B4 8001C7B4 C5B20094 */  lwc1       $f18, 0x94($t5)
/* 1D3B8 8001C7B8 C5A400E8 */  lwc1       $f4, 0xe8($t5)
/* 1D3BC 8001C7BC C5AA008C */  lwc1       $f10, 0x8c($t5)
/* 1D3C0 8001C7C0 C5B000E0 */  lwc1       $f16, 0xe0($t5)
/* 1D3C4 8001C7C4 46049181 */  sub.s      $f6, $f18, $f4
/* 1D3C8 8001C7C8 C5AC0100 */  lwc1       $f12, 0x100($t5)
/* 1D3CC 8001C7CC C5AE00FC */  lwc1       $f14, 0xfc($t5)
/* 1D3D0 8001C7D0 46105201 */  sub.s      $f8, $f10, $f16
/* 1D3D4 8001C7D4 44063000 */  mfc1       $a2, $f6
/* 1D3D8 8001C7D8 44074000 */  mfc1       $a3, $f8
/* 1D3DC 8001C7DC 0C004794 */  jal        func_80011E50
/* 1D3E0 8001C7E0 00000000 */   nop
/* 1D3E4 8001C7E4 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 1D3E8 8001C7E8 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1D3EC 8001C7EC 46120103 */  div.s      $f4, $f0, $f18
/* 1D3F0 8001C7F0 E7A40048 */  swc1       $f4, 0x48($sp)
/* 1D3F4 8001C7F4 C71200E8 */  lwc1       $f18, 0xe8($t8)
/* 1D3F8 8001C7F8 C7080094 */  lwc1       $f8, 0x94($t8)
/* 1D3FC 8001C7FC C70A00E0 */  lwc1       $f10, 0xe0($t8)
/* 1D400 8001C800 C706008C */  lwc1       $f6, 0x8c($t8)
/* 1D404 8001C804 46124101 */  sub.s      $f4, $f8, $f18
/* 1D408 8001C808 C70E00FC */  lwc1       $f14, 0xfc($t8)
/* 1D40C 8001C80C C70C0100 */  lwc1       $f12, 0x100($t8)
/* 1D410 8001C810 460A3401 */  sub.s      $f16, $f6, $f10
/* 1D414 8001C814 46002187 */  neg.s      $f6, $f4
/* 1D418 8001C818 44068000 */  mfc1       $a2, $f16
/* 1D41C 8001C81C 44073000 */  mfc1       $a3, $f6
/* 1D420 8001C820 0C004794 */  jal        func_80011E50
/* 1D424 8001C824 00000000 */   nop
/* 1D428 8001C828 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 1D42C 8001C82C C7A80048 */  lwc1       $f8, 0x48($sp)
/* 1D430 8001C830 3C01800E */  lui        $at, %hi(D_800DC100)
/* 1D434 8001C834 460A0403 */  div.s      $f16, $f0, $f10
/* 1D438 8001C838 D424C100 */  ldc1       $f4, %lo(D_800DC100)($at)
/* 1D43C 8001C83C 460044A1 */  cvt.d.s    $f18, $f8
/* 1D440 8001C840 4632203C */  c.lt.d     $f4, $f18
/* 1D444 8001C844 00000000 */  nop
/* 1D448 8001C848 45000019 */  bc1f       .L8001C8B0
/* 1D44C 8001C84C E7B0004C */   swc1      $f16, 0x4c($sp)
/* 1D450 8001C850 8FAB003C */  lw         $t3, 0x3c($sp)
/* 1D454 8001C854 3C018016 */  lui        $at, 0x8016
/* 1D458 8001C858 44808000 */  mtc1       $zero, $f16
/* 1D45C 8001C85C 856800C0 */  lh         $t0, 0xc0($t3)
/* 1D460 8001C860 00087880 */  sll        $t7, $t0, 2
/* 1D464 8001C864 01E87823 */  subu       $t7, $t7, $t0
/* 1D468 8001C868 000F78C0 */  sll        $t7, $t7, 3
/* 1D46C 8001C86C 002F0821 */  addu       $at, $at, $t7
/* 1D470 8001C870 C4262608 */  lwc1       $f6, 0x2608($at)
/* 1D474 8001C874 3C014014 */  lui        $at, 0x4014
/* 1D478 8001C878 44818800 */  mtc1       $at, $f17
/* 1D47C 8001C87C 460032A1 */  cvt.d.s    $f10, $f6
/* 1D480 8001C880 462A803C */  c.lt.d     $f16, $f10
/* 1D484 8001C884 00000000 */  nop
/* 1D488 8001C888 45000005 */  bc1f       .L8001C8A0
/* 1D48C 8001C88C 00000000 */   nop
/* 1D490 8001C890 0C0082EC */  jal        func_80020BB0
/* 1D494 8001C894 8FA40050 */   lw        $a0, 0x50($sp)
/* 1D498 8001C898 10000007 */  b          .L8001C8B8
/* 1D49C 8001C89C 00000000 */   nop
.L8001C8A0:
/* 1D4A0 8001C8A0 0C00827F */  jal        func_800209FC
/* 1D4A4 8001C8A4 8FA40050 */   lw        $a0, 0x50($sp)
/* 1D4A8 8001C8A8 10000003 */  b          .L8001C8B8
/* 1D4AC 8001C8AC 00000000 */   nop
.L8001C8B0:
/* 1D4B0 8001C8B0 0C0082CF */  jal        func_80020B3C
/* 1D4B4 8001C8B4 8FA40050 */   lw        $a0, 0x50($sp)
.L8001C8B8:
/* 1D4B8 8001C8B8 C7A8004C */  lwc1       $f8, 0x4c($sp)
/* 1D4BC 8001C8BC 3C01800E */  lui        $at, %hi(D_800DC108)
/* 1D4C0 8001C8C0 D424C108 */  ldc1       $f4, %lo(D_800DC108)($at)
/* 1D4C4 8001C8C4 460044A1 */  cvt.d.s    $f18, $f8
/* 1D4C8 8001C8C8 8FAA003C */  lw         $t2, 0x3c($sp)
/* 1D4CC 8001C8CC 46249182 */  mul.d      $f6, $f18, $f4
/* 1D4D0 8001C8D0 462032A0 */  cvt.s.d    $f10, $f6
/* 1D4D4 8001C8D4 E54A00F4 */  swc1       $f10, 0xf4($t2)
.L8001C8D8:
/* 1D4D8 8001C8D8 8FAE003C */  lw         $t6, 0x3c($sp)
/* 1D4DC 8001C8DC 8DC90058 */  lw         $t1, 0x58($t6)
/* 1D4E0 8001C8E0 312C0004 */  andi       $t4, $t1, 4
/* 1D4E4 8001C8E4 11800003 */  beqz       $t4, .L8001C8F4
/* 1D4E8 8001C8E8 00000000 */   nop
/* 1D4EC 8001C8EC 0C0082CF */  jal        func_80020B3C
/* 1D4F0 8001C8F0 8FA40050 */   lw        $a0, 0x50($sp)
.L8001C8F4:
/* 1D4F4 8001C8F4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D4F8 8001C8F8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1D4FC 8001C8FC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 1D500 8001C900 03E00008 */  jr         $ra
/* 1D504 8001C904 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8001C908
/* 1D508 8001C908 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D50C 8001C90C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D510 8001C910 AFA40028 */  sw         $a0, 0x28($sp)
/* 1D514 8001C914 8FAE0028 */  lw         $t6, 0x28($sp)
/* 1D518 8001C918 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 1D51C 8001C91C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 1D520 8001C920 000E7880 */  sll        $t7, $t6, 2
/* 1D524 8001C924 01EE7823 */  subu       $t7, $t7, $t6
/* 1D528 8001C928 000F7880 */  sll        $t7, $t7, 2
/* 1D52C 8001C92C 01EE7823 */  subu       $t7, $t7, $t6
/* 1D530 8001C930 000F7880 */  sll        $t7, $t7, 2
/* 1D534 8001C934 01EE7821 */  addu       $t7, $t7, $t6
/* 1D538 8001C938 000F7880 */  sll        $t7, $t7, 2
/* 1D53C 8001C93C 01EE7823 */  subu       $t7, $t7, $t6
/* 1D540 8001C940 000F7880 */  sll        $t7, $t7, 2
/* 1D544 8001C944 01F8C821 */  addu       $t9, $t7, $t8
/* 1D548 8001C948 AFB90018 */  sw         $t9, 0x18($sp)
/* 1D54C 8001C94C C72A0094 */  lwc1       $f10, 0x94($t9)
/* 1D550 8001C950 C72800E8 */  lwc1       $f8, 0xe8($t9)
/* 1D554 8001C954 C726008C */  lwc1       $f6, 0x8c($t9)
/* 1D558 8001C958 C72400E0 */  lwc1       $f4, 0xe0($t9)
/* 1D55C 8001C95C 460A4381 */  sub.s      $f14, $f8, $f10
/* 1D560 8001C960 0C00475A */  jal        func_80011D68
/* 1D564 8001C964 46062301 */   sub.s     $f12, $f4, $f6
/* 1D568 8001C968 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1D56C 8001C96C C7B0001C */  lwc1       $f16, 0x1c($sp)
/* 1D570 8001C970 3C014059 */  lui        $at, 0x4059
/* 1D574 8001C974 44812800 */  mtc1       $at, $f5
/* 1D578 8001C978 44802000 */  mtc1       $zero, $f4
/* 1D57C 8001C97C 460084A1 */  cvt.d.s    $f18, $f16
/* 1D580 8001C980 4624903C */  c.lt.d     $f18, $f4
/* 1D584 8001C984 00000000 */  nop
/* 1D588 8001C988 4500003F */  bc1f       .L8001CA88
/* 1D58C 8001C98C 00000000 */   nop
/* 1D590 8001C990 8FA80018 */  lw         $t0, 0x18($sp)
/* 1D594 8001C994 240100CC */  addiu      $at, $zero, 0xcc
/* 1D598 8001C998 8D09006C */  lw         $t1, 0x6c($t0)
/* 1D59C 8001C99C 1521000C */  bne        $t1, $at, .L8001C9D0
/* 1D5A0 8001C9A0 00000000 */   nop
/* 1D5A4 8001C9A4 850A00C0 */  lh         $t2, 0xc0($t0)
/* 1D5A8 8001C9A8 24010046 */  addiu      $at, $zero, 0x46
/* 1D5AC 8001C9AC 15410004 */  bne        $t2, $at, .L8001C9C0
/* 1D5B0 8001C9B0 00000000 */   nop
/* 1D5B4 8001C9B4 254B0001 */  addiu      $t3, $t2, 1
/* 1D5B8 8001C9B8 10000009 */  b          .L8001C9E0
/* 1D5BC 8001C9BC A50B00C0 */   sh        $t3, 0xc0($t0)
.L8001C9C0:
/* 1D5C0 8001C9C0 8FAD0018 */  lw         $t5, 0x18($sp)
/* 1D5C4 8001C9C4 240C0046 */  addiu      $t4, $zero, 0x46
/* 1D5C8 8001C9C8 10000005 */  b          .L8001C9E0
/* 1D5CC 8001C9CC A5AC00C0 */   sh        $t4, 0xc0($t5)
.L8001C9D0:
/* 1D5D0 8001C9D0 8FAE0018 */  lw         $t6, 0x18($sp)
/* 1D5D4 8001C9D4 85CF00C0 */  lh         $t7, 0xc0($t6)
/* 1D5D8 8001C9D8 25F80001 */  addiu      $t8, $t7, 1
/* 1D5DC 8001C9DC A5D800C0 */  sh         $t8, 0xc0($t6)
.L8001C9E0:
/* 1D5E0 8001C9E0 8FB90018 */  lw         $t9, 0x18($sp)
/* 1D5E4 8001C9E4 3C018016 */  lui        $at, 0x8016
/* 1D5E8 8001C9E8 44802800 */  mtc1       $zero, $f5
/* 1D5EC 8001C9EC 872900C0 */  lh         $t1, 0xc0($t9)
/* 1D5F0 8001C9F0 44802000 */  mtc1       $zero, $f4
/* 1D5F4 8001C9F4 00095080 */  sll        $t2, $t1, 2
/* 1D5F8 8001C9F8 01495023 */  subu       $t2, $t2, $t1
/* 1D5FC 8001C9FC 000A50C0 */  sll        $t2, $t2, 3
/* 1D600 8001CA00 002A0821 */  addu       $at, $at, $t2
/* 1D604 8001CA04 C42625F4 */  lwc1       $f6, 0x25f4($at)
/* 1D608 8001CA08 3C018016 */  lui        $at, 0x8016
/* 1D60C 8001CA0C E726008C */  swc1       $f6, 0x8c($t9)
/* 1D610 8001CA10 8FAB0018 */  lw         $t3, 0x18($sp)
/* 1D614 8001CA14 856800C0 */  lh         $t0, 0xc0($t3)
/* 1D618 8001CA18 00086080 */  sll        $t4, $t0, 2
/* 1D61C 8001CA1C 01886023 */  subu       $t4, $t4, $t0
/* 1D620 8001CA20 000C60C0 */  sll        $t4, $t4, 3
/* 1D624 8001CA24 002C0821 */  addu       $at, $at, $t4
/* 1D628 8001CA28 C42825F8 */  lwc1       $f8, 0x25f8($at)
/* 1D62C 8001CA2C 3C018016 */  lui        $at, 0x8016
/* 1D630 8001CA30 E5680090 */  swc1       $f8, 0x90($t3)
/* 1D634 8001CA34 8FAD0018 */  lw         $t5, 0x18($sp)
/* 1D638 8001CA38 85AF00C0 */  lh         $t7, 0xc0($t5)
/* 1D63C 8001CA3C 000FC080 */  sll        $t8, $t7, 2
/* 1D640 8001CA40 030FC023 */  subu       $t8, $t8, $t7
/* 1D644 8001CA44 0018C0C0 */  sll        $t8, $t8, 3
/* 1D648 8001CA48 00380821 */  addu       $at, $at, $t8
/* 1D64C 8001CA4C C42A25FC */  lwc1       $f10, 0x25fc($at)
/* 1D650 8001CA50 E5AA0094 */  swc1       $f10, 0x94($t5)
/* 1D654 8001CA54 8FAE0018 */  lw         $t6, 0x18($sp)
/* 1D658 8001CA58 C5D0008C */  lwc1       $f16, 0x8c($t6)
/* 1D65C 8001CA5C 460084A1 */  cvt.d.s    $f18, $f16
/* 1D660 8001CA60 4624903C */  c.lt.d     $f18, $f4
/* 1D664 8001CA64 00000000 */  nop
/* 1D668 8001CA68 45000053 */  bc1f       .L8001CBB8
/* 1D66C 8001CA6C 00000000 */   nop
/* 1D670 8001CA70 24090038 */  addiu      $t1, $zero, 0x38
/* 1D674 8001CA74 ADC90080 */  sw         $t1, 0x80($t6)
/* 1D678 8001CA78 8FB90018 */  lw         $t9, 0x18($sp)
/* 1D67C 8001CA7C 240A001E */  addiu      $t2, $zero, 0x1e
/* 1D680 8001CA80 1000004D */  b          .L8001CBB8
/* 1D684 8001CA84 AF2A0078 */   sw        $t2, 0x78($t9)
.L8001CA88:
/* 1D688 8001CA88 8FA80018 */  lw         $t0, 0x18($sp)
/* 1D68C 8001CA8C C50600E4 */  lwc1       $f6, 0xe4($t0)
/* 1D690 8001CA90 C5080090 */  lwc1       $f8, 0x90($t0)
/* 1D694 8001CA94 4608303C */  c.lt.s     $f6, $f8
/* 1D698 8001CA98 00000000 */  nop
/* 1D69C 8001CA9C 45000010 */  bc1f       .L8001CAE0
/* 1D6A0 8001CAA0 00000000 */   nop
/* 1D6A4 8001CAA4 850C00C0 */  lh         $t4, 0xc0($t0)
/* 1D6A8 8001CAA8 3C018016 */  lui        $at, 0x8016
/* 1D6AC 8001CAAC 44809800 */  mtc1       $zero, $f19
/* 1D6B0 8001CAB0 000C5880 */  sll        $t3, $t4, 2
/* 1D6B4 8001CAB4 016C5823 */  subu       $t3, $t3, $t4
/* 1D6B8 8001CAB8 000B58C0 */  sll        $t3, $t3, 3
/* 1D6BC 8001CABC 002B0821 */  addu       $at, $at, $t3
/* 1D6C0 8001CAC0 C42A2604 */  lwc1       $f10, 0x2604($at)
/* 1D6C4 8001CAC4 44809000 */  mtc1       $zero, $f18
/* 1D6C8 8001CAC8 46005421 */  cvt.d.s    $f16, $f10
/* 1D6CC 8001CACC 4630903C */  c.lt.d     $f18, $f16
/* 1D6D0 8001CAD0 00000000 */  nop
/* 1D6D4 8001CAD4 45000002 */  bc1f       .L8001CAE0
/* 1D6D8 8001CAD8 00000000 */   nop
/* 1D6DC 8001CADC E50A00D8 */  swc1       $f10, 0xd8($t0)
.L8001CAE0:
/* 1D6E0 8001CAE0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 1D6E4 8001CAE4 C5E40094 */  lwc1       $f4, 0x94($t7)
/* 1D6E8 8001CAE8 C5E600E8 */  lwc1       $f6, 0xe8($t7)
/* 1D6EC 8001CAEC C5F0008C */  lwc1       $f16, 0x8c($t7)
/* 1D6F0 8001CAF0 C5F200E0 */  lwc1       $f18, 0xe0($t7)
/* 1D6F4 8001CAF4 46062201 */  sub.s      $f8, $f4, $f6
/* 1D6F8 8001CAF8 C5EC0100 */  lwc1       $f12, 0x100($t7)
/* 1D6FC 8001CAFC C5EE00FC */  lwc1       $f14, 0xfc($t7)
/* 1D700 8001CB00 46128281 */  sub.s      $f10, $f16, $f18
/* 1D704 8001CB04 44064000 */  mfc1       $a2, $f8
/* 1D708 8001CB08 44075000 */  mfc1       $a3, $f10
/* 1D70C 8001CB0C 0C004794 */  jal        func_80011E50
/* 1D710 8001CB10 00000000 */   nop
/* 1D714 8001CB14 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 1D718 8001CB18 8FB80018 */  lw         $t8, 0x18($sp)
/* 1D71C 8001CB1C 46040183 */  div.s      $f6, $f0, $f4
/* 1D720 8001CB20 E7A60020 */  swc1       $f6, 0x20($sp)
/* 1D724 8001CB24 C70400E8 */  lwc1       $f4, 0xe8($t8)
/* 1D728 8001CB28 C70A0094 */  lwc1       $f10, 0x94($t8)
/* 1D72C 8001CB2C C71000E0 */  lwc1       $f16, 0xe0($t8)
/* 1D730 8001CB30 C708008C */  lwc1       $f8, 0x8c($t8)
/* 1D734 8001CB34 46045181 */  sub.s      $f6, $f10, $f4
/* 1D738 8001CB38 C70E00FC */  lwc1       $f14, 0xfc($t8)
/* 1D73C 8001CB3C C70C0100 */  lwc1       $f12, 0x100($t8)
/* 1D740 8001CB40 46104481 */  sub.s      $f18, $f8, $f16
/* 1D744 8001CB44 46003207 */  neg.s      $f8, $f6
/* 1D748 8001CB48 44069000 */  mfc1       $a2, $f18
/* 1D74C 8001CB4C 44074000 */  mfc1       $a3, $f8
/* 1D750 8001CB50 0C004794 */  jal        func_80011E50
/* 1D754 8001CB54 00000000 */   nop
/* 1D758 8001CB58 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* 1D75C 8001CB5C C7AA0020 */  lwc1       $f10, 0x20($sp)
/* 1D760 8001CB60 3C01800E */  lui        $at, %hi(D_800DC110)
/* 1D764 8001CB64 46100483 */  div.s      $f18, $f0, $f16
/* 1D768 8001CB68 D426C110 */  ldc1       $f6, %lo(D_800DC110)($at)
/* 1D76C 8001CB6C 46005121 */  cvt.d.s    $f4, $f10
/* 1D770 8001CB70 4624303C */  c.lt.d     $f6, $f4
/* 1D774 8001CB74 00000000 */  nop
/* 1D778 8001CB78 45000005 */  bc1f       .L8001CB90
/* 1D77C 8001CB7C E7B20024 */   swc1      $f18, 0x24($sp)
/* 1D780 8001CB80 0C00827F */  jal        func_800209FC
/* 1D784 8001CB84 8FA40028 */   lw        $a0, 0x28($sp)
/* 1D788 8001CB88 10000003 */  b          .L8001CB98
/* 1D78C 8001CB8C 00000000 */   nop
.L8001CB90:
/* 1D790 8001CB90 0C0082CF */  jal        func_80020B3C
/* 1D794 8001CB94 8FA40028 */   lw        $a0, 0x28($sp)
.L8001CB98:
/* 1D798 8001CB98 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 1D79C 8001CB9C 3C01800E */  lui        $at, %hi(D_800DC118)
/* 1D7A0 8001CBA0 D432C118 */  ldc1       $f18, %lo(D_800DC118)($at)
/* 1D7A4 8001CBA4 46004421 */  cvt.d.s    $f16, $f8
/* 1D7A8 8001CBA8 8FAD0018 */  lw         $t5, 0x18($sp)
/* 1D7AC 8001CBAC 46328282 */  mul.d      $f10, $f16, $f18
/* 1D7B0 8001CBB0 46205120 */  cvt.s.d    $f4, $f10
/* 1D7B4 8001CBB4 E5A400F4 */  swc1       $f4, 0xf4($t5)
.L8001CBB8:
/* 1D7B8 8001CBB8 8FA90018 */  lw         $t1, 0x18($sp)
/* 1D7BC 8001CBBC 8D2E0058 */  lw         $t6, 0x58($t1)
/* 1D7C0 8001CBC0 31CA0004 */  andi       $t2, $t6, 4
/* 1D7C4 8001CBC4 11400003 */  beqz       $t2, .L8001CBD4
/* 1D7C8 8001CBC8 00000000 */   nop
/* 1D7CC 8001CBCC 0C0082CF */  jal        func_80020B3C
/* 1D7D0 8001CBD0 8FA40028 */   lw        $a0, 0x28($sp)
.L8001CBD4:
/* 1D7D4 8001CBD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D7D8 8001CBD8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1D7DC 8001CBDC 03E00008 */  jr         $ra
/* 1D7E0 8001CBE0 00000000 */   nop

glabel func_8001CBE4
/* 1D7E4 8001CBE4 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1D7E8 8001CBE8 3C0F8016 */  lui        $t7, %hi(D_8015FB8C)
/* 1D7EC 8001CBEC 8DEFFB8C */  lw         $t7, %lo(D_8015FB8C)($t7)
/* 1D7F0 8001CBF0 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1D7F4 8001CBF4 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1D7F8 8001CBF8 000FC080 */  sll        $t8, $t7, 2
/* 1D7FC 8001CBFC 030FC023 */  subu       $t8, $t8, $t7
/* 1D800 8001CC00 0018C080 */  sll        $t8, $t8, 2
/* 1D804 8001CC04 030FC023 */  subu       $t8, $t8, $t7
/* 1D808 8001CC08 0018C080 */  sll        $t8, $t8, 2
/* 1D80C 8001CC0C 030FC021 */  addu       $t8, $t8, $t7
/* 1D810 8001CC10 0018C080 */  sll        $t8, $t8, 2
/* 1D814 8001CC14 030FC023 */  subu       $t8, $t8, $t7
/* 1D818 8001CC18 0018C080 */  sll        $t8, $t8, 2
/* 1D81C 8001CC1C 01D8C821 */  addu       $t9, $t6, $t8
/* 1D820 8001CC20 8F280004 */  lw         $t0, 4($t9)
/* 1D824 8001CC24 2401FFFF */  addiu      $at, $zero, -1
/* 1D828 8001CC28 11010026 */  beq        $t0, $at, .L8001CCC4
/* 1D82C 8001CC2C AFA80004 */   sw        $t0, 4($sp)
.L8001CC30:
/* 1D830 8001CC30 8FAA0004 */  lw         $t2, 4($sp)
/* 1D834 8001CC34 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 1D838 8001CC38 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 1D83C 8001CC3C 000A5880 */  sll        $t3, $t2, 2
/* 1D840 8001CC40 016A5823 */  subu       $t3, $t3, $t2
/* 1D844 8001CC44 000B5880 */  sll        $t3, $t3, 2
/* 1D848 8001CC48 016A5823 */  subu       $t3, $t3, $t2
/* 1D84C 8001CC4C 000B5880 */  sll        $t3, $t3, 2
/* 1D850 8001CC50 016A5821 */  addu       $t3, $t3, $t2
/* 1D854 8001CC54 000B5880 */  sll        $t3, $t3, 2
/* 1D858 8001CC58 016A5823 */  subu       $t3, $t3, $t2
/* 1D85C 8001CC5C 000B5880 */  sll        $t3, $t3, 2
/* 1D860 8001CC60 012B6021 */  addu       $t4, $t1, $t3
/* 1D864 8001CC64 8D8D006C */  lw         $t5, 0x6c($t4)
/* 1D868 8001CC68 15A40003 */  bne        $t5, $a0, .L8001CC78
/* 1D86C 8001CC6C 00000000 */   nop
/* 1D870 8001CC70 10000015 */  b          .L8001CCC8
/* 1D874 8001CC74 01401025 */   or        $v0, $t2, $zero
.L8001CC78:
/* 1D878 8001CC78 8FAE0004 */  lw         $t6, 4($sp)
/* 1D87C 8001CC7C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1D880 8001CC80 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1D884 8001CC84 000EC080 */  sll        $t8, $t6, 2
/* 1D888 8001CC88 030EC023 */  subu       $t8, $t8, $t6
/* 1D88C 8001CC8C 0018C080 */  sll        $t8, $t8, 2
/* 1D890 8001CC90 030EC023 */  subu       $t8, $t8, $t6
/* 1D894 8001CC94 0018C080 */  sll        $t8, $t8, 2
/* 1D898 8001CC98 030EC021 */  addu       $t8, $t8, $t6
/* 1D89C 8001CC9C 0018C080 */  sll        $t8, $t8, 2
/* 1D8A0 8001CCA0 030EC023 */  subu       $t8, $t8, $t6
/* 1D8A4 8001CCA4 0018C080 */  sll        $t8, $t8, 2
/* 1D8A8 8001CCA8 01F8C821 */  addu       $t9, $t7, $t8
/* 1D8AC 8001CCAC 8F280004 */  lw         $t0, 4($t9)
/* 1D8B0 8001CCB0 2401FFFF */  addiu      $at, $zero, -1
/* 1D8B4 8001CCB4 AFA80004 */  sw         $t0, 4($sp)
/* 1D8B8 8001CCB8 8FA90004 */  lw         $t1, 4($sp)
/* 1D8BC 8001CCBC 1521FFDC */  bne        $t1, $at, .L8001CC30
/* 1D8C0 8001CCC0 00000000 */   nop
.L8001CCC4:
/* 1D8C4 8001CCC4 00001025 */  or         $v0, $zero, $zero
.L8001CCC8:
/* 1D8C8 8001CCC8 03E00008 */  jr         $ra
/* 1D8CC 8001CCCC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8001CCD0
/* 1D8D0 8001CCD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D8D4 8001CCD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D8D8 8001CCD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 1D8DC 8001CCDC AFA5002C */  sw         $a1, 0x2c($sp)
/* 1D8E0 8001CCE0 AFA60030 */  sw         $a2, 0x30($sp)
/* 1D8E4 8001CCE4 3C188016 */  lui        $t8, %hi(D_8015FB8C)
/* 1D8E8 8001CCE8 8F18FB8C */  lw         $t8, %lo(D_8015FB8C)($t8)
/* 1D8EC 8001CCEC 3C0E8016 */  lui        $t6, 0x8016
/* 1D8F0 8001CCF0 3C01800E */  lui        $at, 0x800e
/* 1D8F4 8001CCF4 0018C880 */  sll        $t9, $t8, 2
/* 1D8F8 8001CCF8 0338C823 */  subu       $t9, $t9, $t8
/* 1D8FC 8001CCFC 0019C880 */  sll        $t9, $t9, 2
/* 1D900 8001CD00 0338C823 */  subu       $t9, $t9, $t8
/* 1D904 8001CD04 0019C880 */  sll        $t9, $t9, 2
/* 1D908 8001CD08 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1D90C 8001CD0C 0338C821 */  addu       $t9, $t9, $t8
/* 1D910 8001CD10 8DCEFB88 */  lw         $t6, -0x478($t6)
/* 1D914 8001CD14 C424C120 */  lwc1       $f4, -0x3ee0($at)
/* 1D918 8001CD18 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1D91C 8001CD1C 0019C880 */  sll        $t9, $t9, 2
/* 1D920 8001CD20 0338C823 */  subu       $t9, $t9, $t8
/* 1D924 8001CD24 0019C880 */  sll        $t9, $t9, 2
/* 1D928 8001CD28 AFAE0024 */  sw         $t6, 0x24($sp)
/* 1D92C 8001CD2C E7A40018 */  swc1       $f4, 0x18($sp)
/* 1D930 8001CD30 01F94021 */  addu       $t0, $t7, $t9
/* 1D934 8001CD34 8D090004 */  lw         $t1, 4($t0)
/* 1D938 8001CD38 2401FFFF */  addiu      $at, $zero, -1
/* 1D93C 8001CD3C 1121006D */  beq        $t1, $at, .L8001CEF4
/* 1D940 8001CD40 AFA90020 */   sw        $t1, 0x20($sp)
.L8001CD44:
/* 1D944 8001CD44 8FAB0020 */  lw         $t3, 0x20($sp)
/* 1D948 8001CD48 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 1D94C 8001CD4C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 1D950 8001CD50 000B6080 */  sll        $t4, $t3, 2
/* 1D954 8001CD54 018B6023 */  subu       $t4, $t4, $t3
/* 1D958 8001CD58 000C6080 */  sll        $t4, $t4, 2
/* 1D95C 8001CD5C 018B6023 */  subu       $t4, $t4, $t3
/* 1D960 8001CD60 000C6080 */  sll        $t4, $t4, 2
/* 1D964 8001CD64 018B6021 */  addu       $t4, $t4, $t3
/* 1D968 8001CD68 000C6080 */  sll        $t4, $t4, 2
/* 1D96C 8001CD6C 018B6023 */  subu       $t4, $t4, $t3
/* 1D970 8001CD70 000C6080 */  sll        $t4, $t4, 2
/* 1D974 8001CD74 014C6821 */  addu       $t5, $t2, $t4
/* 1D978 8001CD78 8DAE006C */  lw         $t6, 0x6c($t5)
/* 1D97C 8001CD7C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 1D980 8001CD80 15D80049 */  bne        $t6, $t8, .L8001CEA8
/* 1D984 8001CD84 00000000 */   nop
/* 1D988 8001CD88 8FAF0030 */  lw         $t7, 0x30($sp)
/* 1D98C 8001CD8C 11E0001A */  beqz       $t7, .L8001CDF8
/* 1D990 8001CD90 00000000 */   nop
/* 1D994 8001CD94 8FB90028 */  lw         $t9, 0x28($sp)
/* 1D998 8001CD98 C5A800E0 */  lwc1       $f8, 0xe0($t5)
/* 1D99C 8001CD9C C5A400E8 */  lwc1       $f4, 0xe8($t5)
/* 1D9A0 8001CDA0 00194080 */  sll        $t0, $t9, 2
/* 1D9A4 8001CDA4 01194023 */  subu       $t0, $t0, $t9
/* 1D9A8 8001CDA8 00084080 */  sll        $t0, $t0, 2
/* 1D9AC 8001CDAC 01194023 */  subu       $t0, $t0, $t9
/* 1D9B0 8001CDB0 00084080 */  sll        $t0, $t0, 2
/* 1D9B4 8001CDB4 01194021 */  addu       $t0, $t0, $t9
/* 1D9B8 8001CDB8 00084080 */  sll        $t0, $t0, 2
/* 1D9BC 8001CDBC 01194023 */  subu       $t0, $t0, $t9
/* 1D9C0 8001CDC0 00084080 */  sll        $t0, $t0, 2
/* 1D9C4 8001CDC4 01484821 */  addu       $t1, $t2, $t0
/* 1D9C8 8001CDC8 C52600E0 */  lwc1       $f6, 0xe0($t1)
/* 1D9CC 8001CDCC C53200E8 */  lwc1       $f18, 0xe8($t1)
/* 1D9D0 8001CDD0 C52A00E4 */  lwc1       $f10, 0xe4($t1)
/* 1D9D4 8001CDD4 46083301 */  sub.s      $f12, $f6, $f8
/* 1D9D8 8001CDD8 C5B000E4 */  lwc1       $f16, 0xe4($t5)
/* 1D9DC 8001CDDC 46049181 */  sub.s      $f6, $f18, $f4
/* 1D9E0 8001CDE0 46105381 */  sub.s      $f14, $f10, $f16
/* 1D9E4 8001CDE4 44063000 */  mfc1       $a2, $f6
/* 1D9E8 8001CDE8 0C016916 */  jal        func_8005A458
/* 1D9EC 8001CDEC 00000000 */   nop
/* 1D9F0 8001CDF0 10000024 */  b          .L8001CE84
/* 1D9F4 8001CDF4 E7A0001C */   swc1      $f0, 0x1c($sp)
.L8001CDF8:
/* 1D9F8 8001CDF8 8FAC0028 */  lw         $t4, 0x28($sp)
/* 1D9FC 8001CDFC 8FAF0020 */  lw         $t7, 0x20($sp)
/* 1DA00 8001CE00 3C0B8016 */  lui        $t3, 0x8016
/* 1DA04 8001CE04 000C7080 */  sll        $t6, $t4, 2
/* 1DA08 8001CE08 000FC880 */  sll        $t9, $t7, 2
/* 1DA0C 8001CE0C 01CC7023 */  subu       $t6, $t6, $t4
/* 1DA10 8001CE10 032FC823 */  subu       $t9, $t9, $t7
/* 1DA14 8001CE14 0019C880 */  sll        $t9, $t9, 2
/* 1DA18 8001CE18 000E7080 */  sll        $t6, $t6, 2
/* 1DA1C 8001CE1C 01CC7023 */  subu       $t6, $t6, $t4
/* 1DA20 8001CE20 032FC823 */  subu       $t9, $t9, $t7
/* 1DA24 8001CE24 0019C880 */  sll        $t9, $t9, 2
/* 1DA28 8001CE28 000E7080 */  sll        $t6, $t6, 2
/* 1DA2C 8001CE2C 8D6BFB9C */  lw         $t3, -0x464($t3)
/* 1DA30 8001CE30 01CC7021 */  addu       $t6, $t6, $t4
/* 1DA34 8001CE34 032FC821 */  addu       $t9, $t9, $t7
/* 1DA38 8001CE38 0019C880 */  sll        $t9, $t9, 2
/* 1DA3C 8001CE3C 000E7080 */  sll        $t6, $t6, 2
/* 1DA40 8001CE40 01CC7023 */  subu       $t6, $t6, $t4
/* 1DA44 8001CE44 032FC823 */  subu       $t9, $t9, $t7
/* 1DA48 8001CE48 0019C880 */  sll        $t9, $t9, 2
/* 1DA4C 8001CE4C 000E7080 */  sll        $t6, $t6, 2
/* 1DA50 8001CE50 016EC021 */  addu       $t8, $t3, $t6
/* 1DA54 8001CE54 01795021 */  addu       $t2, $t3, $t9
/* 1DA58 8001CE58 C55200E8 */  lwc1       $f18, 0xe8($t2)
/* 1DA5C 8001CE5C C71000E8 */  lwc1       $f16, 0xe8($t8)
/* 1DA60 8001CE60 C54A00E0 */  lwc1       $f10, 0xe0($t2)
/* 1DA64 8001CE64 C70800E0 */  lwc1       $f8, 0xe0($t8)
/* 1DA68 8001CE68 46128101 */  sub.s      $f4, $f16, $f18
/* 1DA6C 8001CE6C 44807000 */  mtc1       $zero, $f14
/* 1DA70 8001CE70 460A4301 */  sub.s      $f12, $f8, $f10
/* 1DA74 8001CE74 44062000 */  mfc1       $a2, $f4
/* 1DA78 8001CE78 0C016916 */  jal        func_8005A458
/* 1DA7C 8001CE7C 00000000 */   nop
/* 1DA80 8001CE80 E7A0001C */  swc1       $f0, 0x1c($sp)
.L8001CE84:
/* 1DA84 8001CE84 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* 1DA88 8001CE88 C7A80018 */  lwc1       $f8, 0x18($sp)
/* 1DA8C 8001CE8C 4608303C */  c.lt.s     $f6, $f8
/* 1DA90 8001CE90 00000000 */  nop
/* 1DA94 8001CE94 45000004 */  bc1f       .L8001CEA8
/* 1DA98 8001CE98 00000000 */   nop
/* 1DA9C 8001CE9C 8FA80020 */  lw         $t0, 0x20($sp)
/* 1DAA0 8001CEA0 E7A60018 */  swc1       $f6, 0x18($sp)
/* 1DAA4 8001CEA4 AFA80024 */  sw         $t0, 0x24($sp)
.L8001CEA8:
/* 1DAA8 8001CEA8 8FAD0020 */  lw         $t5, 0x20($sp)
/* 1DAAC 8001CEAC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 1DAB0 8001CEB0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 1DAB4 8001CEB4 000D6080 */  sll        $t4, $t5, 2
/* 1DAB8 8001CEB8 018D6023 */  subu       $t4, $t4, $t5
/* 1DABC 8001CEBC 000C6080 */  sll        $t4, $t4, 2
/* 1DAC0 8001CEC0 018D6023 */  subu       $t4, $t4, $t5
/* 1DAC4 8001CEC4 000C6080 */  sll        $t4, $t4, 2
/* 1DAC8 8001CEC8 018D6021 */  addu       $t4, $t4, $t5
/* 1DACC 8001CECC 000C6080 */  sll        $t4, $t4, 2
/* 1DAD0 8001CED0 018D6023 */  subu       $t4, $t4, $t5
/* 1DAD4 8001CED4 000C6080 */  sll        $t4, $t4, 2
/* 1DAD8 8001CED8 012C7021 */  addu       $t6, $t1, $t4
/* 1DADC 8001CEDC 8DCF0004 */  lw         $t7, 4($t6)
/* 1DAE0 8001CEE0 2401FFFF */  addiu      $at, $zero, -1
/* 1DAE4 8001CEE4 AFAF0020 */  sw         $t7, 0x20($sp)
/* 1DAE8 8001CEE8 8FAB0020 */  lw         $t3, 0x20($sp)
/* 1DAEC 8001CEEC 1561FF95 */  bne        $t3, $at, .L8001CD44
/* 1DAF0 8001CEF0 00000000 */   nop
.L8001CEF4:
/* 1DAF4 8001CEF4 8FA20024 */  lw         $v0, 0x24($sp)
/* 1DAF8 8001CEF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1DAFC 8001CEFC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1DB00 8001CF00 03E00008 */  jr         $ra
/* 1DB04 8001CF04 00000000 */   nop

glabel func_8001CF08
/* 1DB08 8001CF08 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1DB0C 8001CF0C AFBF002C */  sw         $ra, 0x2c($sp)
/* 1DB10 8001CF10 AFA40058 */  sw         $a0, 0x58($sp)
/* 1DB14 8001CF14 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 1DB18 8001CF18 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1DB1C 8001CF1C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1DB20 8001CF20 3C01800E */  lui        $at, %hi(D_800DC124)
/* 1DB24 8001CF24 3C0F8016 */  lui        $t7, %hi(D_8015F464)
/* 1DB28 8001CF28 C424C124 */  lwc1       $f4, %lo(D_800DC124)($at)
/* 1DB2C 8001CF2C 8DEFF464 */  lw         $t7, %lo(D_8015F464)($t7)
/* 1DB30 8001CF30 3C01800E */  lui        $at, %hi(D_800DC128)
/* 1DB34 8001CF34 C426C128 */  lwc1       $f6, %lo(D_800DC128)($at)
/* 1DB38 8001CF38 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* 1DB3C 8001CF3C 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* 1DB40 8001CF40 25F8FFFF */  addiu      $t8, $t7, -1
/* 1DB44 8001CF44 2F010011 */  sltiu      $at, $t8, 0x11
/* 1DB48 8001CF48 E7A40054 */  swc1       $f4, 0x54($sp)
/* 1DB4C 8001CF4C E7A60050 */  swc1       $f6, 0x50($sp)
/* 1DB50 8001CF50 1020008E */  beqz       $at, .L8001D18C
/* 1DB54 8001CF54 AFAE004C */   sw        $t6, 0x4c($sp)
/* 1DB58 8001CF58 0018C080 */  sll        $t8, $t8, 2
/* 1DB5C 8001CF5C 3C01800E */  lui        $at, %hi(D_800DC12C)
/* 1DB60 8001CF60 00380821 */  addu       $at, $at, $t8
/* 1DB64 8001CF64 8C38C12C */  lw         $t8, %lo(D_800DC12C)($at)
/* 1DB68 8001CF68 03000008 */  jr         $t8
/* 1DB6C 8001CF6C 00000000 */   nop
/* 1DB70 8001CF70 0C0072F9 */  jal        func_8001CBE4
/* 1DB74 8001CF74 24040087 */   addiu     $a0, $zero, 0x87
/* 1DB78 8001CF78 10000250 */  b          .L8001D8BC
/* 1DB7C 8001CF7C AFA2004C */   sw        $v0, 0x4c($sp)
/* 1DB80 8001CF80 8FA80058 */  lw         $t0, 0x58($sp)
/* 1DB84 8001CF84 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 1DB88 8001CF88 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 1DB8C 8001CF8C 00084880 */  sll        $t1, $t0, 2
/* 1DB90 8001CF90 01284823 */  subu       $t1, $t1, $t0
/* 1DB94 8001CF94 00094880 */  sll        $t1, $t1, 2
/* 1DB98 8001CF98 01284823 */  subu       $t1, $t1, $t0
/* 1DB9C 8001CF9C 00094880 */  sll        $t1, $t1, 2
/* 1DBA0 8001CFA0 01284821 */  addu       $t1, $t1, $t0
/* 1DBA4 8001CFA4 00094880 */  sll        $t1, $t1, 2
/* 1DBA8 8001CFA8 01284823 */  subu       $t1, $t1, $t0
/* 1DBAC 8001CFAC 00094880 */  sll        $t1, $t1, 2
/* 1DBB0 8001CFB0 03295021 */  addu       $t2, $t9, $t1
/* 1DBB4 8001CFB4 8D4B006C */  lw         $t3, 0x6c($t2)
/* 1DBB8 8001CFB8 24010002 */  addiu      $at, $zero, 2
/* 1DBBC 8001CFBC 15610004 */  bne        $t3, $at, .L8001CFD0
/* 1DBC0 8001CFC0 00000000 */   nop
/* 1DBC4 8001CFC4 0C0072F9 */  jal        func_8001CBE4
/* 1DBC8 8001CFC8 2404001B */   addiu     $a0, $zero, 0x1b
/* 1DBCC 8001CFCC AFA2004C */  sw         $v0, 0x4c($sp)
.L8001CFD0:
/* 1DBD0 8001CFD0 8FAD0058 */  lw         $t5, 0x58($sp)
/* 1DBD4 8001CFD4 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1DBD8 8001CFD8 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1DBDC 8001CFDC 000D7080 */  sll        $t6, $t5, 2
/* 1DBE0 8001CFE0 01CD7023 */  subu       $t6, $t6, $t5
/* 1DBE4 8001CFE4 000E7080 */  sll        $t6, $t6, 2
/* 1DBE8 8001CFE8 01CD7023 */  subu       $t6, $t6, $t5
/* 1DBEC 8001CFEC 000E7080 */  sll        $t6, $t6, 2
/* 1DBF0 8001CFF0 01CD7021 */  addu       $t6, $t6, $t5
/* 1DBF4 8001CFF4 000E7080 */  sll        $t6, $t6, 2
/* 1DBF8 8001CFF8 01CD7023 */  subu       $t6, $t6, $t5
/* 1DBFC 8001CFFC 000E7080 */  sll        $t6, $t6, 2
/* 1DC00 8001D000 018E7821 */  addu       $t7, $t4, $t6
/* 1DC04 8001D004 8DF8006C */  lw         $t8, 0x6c($t7)
/* 1DC08 8001D008 24010039 */  addiu      $at, $zero, 0x39
/* 1DC0C 8001D00C 1701022B */  bne        $t8, $at, .L8001D8BC
/* 1DC10 8001D010 00000000 */   nop
/* 1DC14 8001D014 01A02025 */  or         $a0, $t5, $zero
/* 1DC18 8001D018 2405001A */  addiu      $a1, $zero, 0x1a
/* 1DC1C 8001D01C 0C007334 */  jal        func_8001CCD0
/* 1DC20 8001D020 00003025 */   or        $a2, $zero, $zero
/* 1DC24 8001D024 10000225 */  b          .L8001D8BC
/* 1DC28 8001D028 AFA2004C */   sw        $v0, 0x4c($sp)
/* 1DC2C 8001D02C 8FB90058 */  lw         $t9, 0x58($sp)
/* 1DC30 8001D030 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 1DC34 8001D034 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 1DC38 8001D038 00194880 */  sll        $t1, $t9, 2
/* 1DC3C 8001D03C 01394823 */  subu       $t1, $t1, $t9
/* 1DC40 8001D040 00094880 */  sll        $t1, $t1, 2
/* 1DC44 8001D044 01394823 */  subu       $t1, $t1, $t9
/* 1DC48 8001D048 00094880 */  sll        $t1, $t1, 2
/* 1DC4C 8001D04C 01394821 */  addu       $t1, $t1, $t9
/* 1DC50 8001D050 00094880 */  sll        $t1, $t1, 2
/* 1DC54 8001D054 01394823 */  subu       $t1, $t1, $t9
/* 1DC58 8001D058 00094880 */  sll        $t1, $t1, 2
/* 1DC5C 8001D05C 01095021 */  addu       $t2, $t0, $t1
/* 1DC60 8001D060 8D4B006C */  lw         $t3, 0x6c($t2)
/* 1DC64 8001D064 24010002 */  addiu      $at, $zero, 2
/* 1DC68 8001D068 15610004 */  bne        $t3, $at, .L8001D07C
/* 1DC6C 8001D06C 00000000 */   nop
/* 1DC70 8001D070 0C0072F9 */  jal        func_8001CBE4
/* 1DC74 8001D074 2404001A */   addiu     $a0, $zero, 0x1a
/* 1DC78 8001D078 AFA2004C */  sw         $v0, 0x4c($sp)
.L8001D07C:
/* 1DC7C 8001D07C 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1DC80 8001D080 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1DC84 8001D084 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1DC88 8001D088 000E7880 */  sll        $t7, $t6, 2
/* 1DC8C 8001D08C 01EE7823 */  subu       $t7, $t7, $t6
/* 1DC90 8001D090 000F7880 */  sll        $t7, $t7, 2
/* 1DC94 8001D094 01EE7823 */  subu       $t7, $t7, $t6
/* 1DC98 8001D098 000F7880 */  sll        $t7, $t7, 2
/* 1DC9C 8001D09C 01EE7821 */  addu       $t7, $t7, $t6
/* 1DCA0 8001D0A0 000F7880 */  sll        $t7, $t7, 2
/* 1DCA4 8001D0A4 01EE7823 */  subu       $t7, $t7, $t6
/* 1DCA8 8001D0A8 000F7880 */  sll        $t7, $t7, 2
/* 1DCAC 8001D0AC 018FC021 */  addu       $t8, $t4, $t7
/* 1DCB0 8001D0B0 8F0D006C */  lw         $t5, 0x6c($t8)
/* 1DCB4 8001D0B4 24010039 */  addiu      $at, $zero, 0x39
/* 1DCB8 8001D0B8 15A10200 */  bne        $t5, $at, .L8001D8BC
/* 1DCBC 8001D0BC 00000000 */   nop
/* 1DCC0 8001D0C0 0C0072F9 */  jal        func_8001CBE4
/* 1DCC4 8001D0C4 2404001B */   addiu     $a0, $zero, 0x1b
/* 1DCC8 8001D0C8 100001FC */  b          .L8001D8BC
/* 1DCCC 8001D0CC AFA2004C */   sw        $v0, 0x4c($sp)
/* 1DCD0 8001D0D0 8FA80058 */  lw         $t0, 0x58($sp)
/* 1DCD4 8001D0D4 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 1DCD8 8001D0D8 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 1DCDC 8001D0DC 00084880 */  sll        $t1, $t0, 2
/* 1DCE0 8001D0E0 01284823 */  subu       $t1, $t1, $t0
/* 1DCE4 8001D0E4 00094880 */  sll        $t1, $t1, 2
/* 1DCE8 8001D0E8 01284823 */  subu       $t1, $t1, $t0
/* 1DCEC 8001D0EC 00094880 */  sll        $t1, $t1, 2
/* 1DCF0 8001D0F0 01284821 */  addu       $t1, $t1, $t0
/* 1DCF4 8001D0F4 00094880 */  sll        $t1, $t1, 2
/* 1DCF8 8001D0F8 01284823 */  subu       $t1, $t1, $t0
/* 1DCFC 8001D0FC 00094880 */  sll        $t1, $t1, 2
/* 1DD00 8001D100 03295021 */  addu       $t2, $t9, $t1
/* 1DD04 8001D104 8D4B006C */  lw         $t3, 0x6c($t2)
/* 1DD08 8001D108 24010002 */  addiu      $at, $zero, 2
/* 1DD0C 8001D10C 156101EB */  bne        $t3, $at, .L8001D8BC
/* 1DD10 8001D110 00000000 */   nop
/* 1DD14 8001D114 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* 1DD18 8001D118 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* 1DD1C 8001D11C 8DCC0004 */  lw         $t4, 4($t6)
/* 1DD20 8001D120 118001E6 */  beqz       $t4, .L8001D8BC
/* 1DD24 8001D124 00000000 */   nop
/* 1DD28 8001D128 0C0072F9 */  jal        func_8001CBE4
/* 1DD2C 8001D12C 24040019 */   addiu     $a0, $zero, 0x19
/* 1DD30 8001D130 100001E2 */  b          .L8001D8BC
/* 1DD34 8001D134 AFA2004C */   sw        $v0, 0x4c($sp)
/* 1DD38 8001D138 8FB80058 */  lw         $t8, 0x58($sp)
/* 1DD3C 8001D13C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1DD40 8001D140 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1DD44 8001D144 00186880 */  sll        $t5, $t8, 2
/* 1DD48 8001D148 01B86823 */  subu       $t5, $t5, $t8
/* 1DD4C 8001D14C 000D6880 */  sll        $t5, $t5, 2
/* 1DD50 8001D150 01B86823 */  subu       $t5, $t5, $t8
/* 1DD54 8001D154 000D6880 */  sll        $t5, $t5, 2
/* 1DD58 8001D158 01B86821 */  addu       $t5, $t5, $t8
/* 1DD5C 8001D15C 000D6880 */  sll        $t5, $t5, 2
/* 1DD60 8001D160 01B86823 */  subu       $t5, $t5, $t8
/* 1DD64 8001D164 000D6880 */  sll        $t5, $t5, 2
/* 1DD68 8001D168 01ED4021 */  addu       $t0, $t7, $t5
/* 1DD6C 8001D16C 8D19006C */  lw         $t9, 0x6c($t0)
/* 1DD70 8001D170 24010002 */  addiu      $at, $zero, 2
/* 1DD74 8001D174 172101D1 */  bne        $t9, $at, .L8001D8BC
/* 1DD78 8001D178 00000000 */   nop
/* 1DD7C 8001D17C 0C0072F9 */  jal        func_8001CBE4
/* 1DD80 8001D180 24040019 */   addiu     $a0, $zero, 0x19
/* 1DD84 8001D184 100001CD */  b          .L8001D8BC
/* 1DD88 8001D188 AFA2004C */   sw        $v0, 0x4c($sp)
.L8001D18C:
/* 1DD8C 8001D18C 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* 1DD90 8001D190 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* 1DD94 8001D194 2409FFFF */  addiu      $t1, $zero, -1
/* 1DD98 8001D198 240AFFFF */  addiu      $t2, $zero, -1
/* 1DD9C 8001D19C 24010003 */  addiu      $at, $zero, 3
/* 1DDA0 8001D1A0 AFA90048 */  sw         $t1, 0x48($sp)
/* 1DDA4 8001D1A4 156100A6 */  bne        $t3, $at, .L8001D440
/* 1DDA8 8001D1A8 AFAA0044 */   sw        $t2, 0x44($sp)
/* 1DDAC 8001D1AC 3C0E8016 */  lui        $t6, %hi(D_8015F468)
/* 1DDB0 8001D1B0 8DCEF468 */  lw         $t6, %lo(D_8015F468)($t6)
/* 1DDB4 8001D1B4 24010002 */  addiu      $at, $zero, 2
/* 1DDB8 8001D1B8 15C100C8 */  bne        $t6, $at, .L8001D4DC
/* 1DDBC 8001D1BC 00000000 */   nop
/* 1DDC0 8001D1C0 3C0C8016 */  lui        $t4, %hi(D_8015ECE8)
/* 1DDC4 8001D1C4 8D8CECE8 */  lw         $t4, %lo(D_8015ECE8)($t4)
/* 1DDC8 8001D1C8 2401FFFF */  addiu      $at, $zero, -1
/* 1DDCC 8001D1CC 158100C3 */  bne        $t4, $at, .L8001D4DC
/* 1DDD0 8001D1D0 00000000 */   nop
/* 1DDD4 8001D1D4 8FA40058 */  lw         $a0, 0x58($sp)
/* 1DDD8 8001D1D8 24050004 */  addiu      $a1, $zero, 4
/* 1DDDC 8001D1DC 0C007334 */  jal        func_8001CCD0
/* 1DDE0 8001D1E0 24060001 */   addiu     $a2, $zero, 1
/* 1DDE4 8001D1E4 AFA20040 */  sw         $v0, 0x40($sp)
/* 1DDE8 8001D1E8 8FB80040 */  lw         $t8, 0x40($sp)
/* 1DDEC 8001D1EC 070000BB */  bltz       $t8, .L8001D4DC
/* 1DDF0 8001D1F0 00000000 */   nop
/* 1DDF4 8001D1F4 8FB90058 */  lw         $t9, 0x58($sp)
/* 1DDF8 8001D1F8 00186880 */  sll        $t5, $t8, 2
/* 1DDFC 8001D1FC 01B86823 */  subu       $t5, $t5, $t8
/* 1DE00 8001D200 00194880 */  sll        $t1, $t9, 2
/* 1DE04 8001D204 01394823 */  subu       $t1, $t1, $t9
/* 1DE08 8001D208 00094880 */  sll        $t1, $t1, 2
/* 1DE0C 8001D20C 000D6880 */  sll        $t5, $t5, 2
/* 1DE10 8001D210 01B86823 */  subu       $t5, $t5, $t8
/* 1DE14 8001D214 01394823 */  subu       $t1, $t1, $t9
/* 1DE18 8001D218 00094880 */  sll        $t1, $t1, 2
/* 1DE1C 8001D21C 000D6880 */  sll        $t5, $t5, 2
/* 1DE20 8001D220 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1DE24 8001D224 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1DE28 8001D228 01B86821 */  addu       $t5, $t5, $t8
/* 1DE2C 8001D22C 01394821 */  addu       $t1, $t1, $t9
/* 1DE30 8001D230 00094880 */  sll        $t1, $t1, 2
/* 1DE34 8001D234 000D6880 */  sll        $t5, $t5, 2
/* 1DE38 8001D238 01B86823 */  subu       $t5, $t5, $t8
/* 1DE3C 8001D23C 01394823 */  subu       $t1, $t1, $t9
/* 1DE40 8001D240 00094880 */  sll        $t1, $t1, 2
/* 1DE44 8001D244 000D6880 */  sll        $t5, $t5, 2
/* 1DE48 8001D248 01ED4021 */  addu       $t0, $t7, $t5
/* 1DE4C 8001D24C 01E95021 */  addu       $t2, $t7, $t1
/* 1DE50 8001D250 C54A00E8 */  lwc1       $f10, 0xe8($t2)
/* 1DE54 8001D254 C50800E8 */  lwc1       $f8, 0xe8($t0)
/* 1DE58 8001D258 0C004788 */  jal        func_80011E20
/* 1DE5C 8001D25C 460A4301 */   sub.s     $f12, $f8, $f10
/* 1DE60 8001D260 8FAE0040 */  lw         $t6, 0x40($sp)
/* 1DE64 8001D264 8FAD0058 */  lw         $t5, 0x58($sp)
/* 1DE68 8001D268 3C0B8016 */  lui        $t3, 0x8016
/* 1DE6C 8001D26C 000E6080 */  sll        $t4, $t6, 2
/* 1DE70 8001D270 000D4080 */  sll        $t0, $t5, 2
/* 1DE74 8001D274 018E6023 */  subu       $t4, $t4, $t6
/* 1DE78 8001D278 010D4023 */  subu       $t0, $t0, $t5
/* 1DE7C 8001D27C 00084080 */  sll        $t0, $t0, 2
/* 1DE80 8001D280 000C6080 */  sll        $t4, $t4, 2
/* 1DE84 8001D284 018E6023 */  subu       $t4, $t4, $t6
/* 1DE88 8001D288 010D4023 */  subu       $t0, $t0, $t5
/* 1DE8C 8001D28C 00084080 */  sll        $t0, $t0, 2
/* 1DE90 8001D290 000C6080 */  sll        $t4, $t4, 2
/* 1DE94 8001D294 8D6BFB9C */  lw         $t3, -0x464($t3)
/* 1DE98 8001D298 018E6021 */  addu       $t4, $t4, $t6
/* 1DE9C 8001D29C 010D4021 */  addu       $t0, $t0, $t5
/* 1DEA0 8001D2A0 00084080 */  sll        $t0, $t0, 2
/* 1DEA4 8001D2A4 000C6080 */  sll        $t4, $t4, 2
/* 1DEA8 8001D2A8 018E6023 */  subu       $t4, $t4, $t6
/* 1DEAC 8001D2AC 010D4023 */  subu       $t0, $t0, $t5
/* 1DEB0 8001D2B0 00084080 */  sll        $t0, $t0, 2
/* 1DEB4 8001D2B4 000C6080 */  sll        $t4, $t4, 2
/* 1DEB8 8001D2B8 016CC021 */  addu       $t8, $t3, $t4
/* 1DEBC 8001D2BC 0168C821 */  addu       $t9, $t3, $t0
/* 1DEC0 8001D2C0 C73200E0 */  lwc1       $f18, 0xe0($t9)
/* 1DEC4 8001D2C4 C71000E0 */  lwc1       $f16, 0xe0($t8)
/* 1DEC8 8001D2C8 46000606 */  mov.s      $f24, $f0
/* 1DECC 8001D2CC 0C004788 */  jal        func_80011E20
/* 1DED0 8001D2D0 46128301 */   sub.s     $f12, $f16, $f18
/* 1DED4 8001D2D4 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 1DED8 8001D2D8 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 1DEDC 8001D2DC 8FAC0058 */  lw         $t4, 0x58($sp)
/* 1DEE0 8001D2E0 3C0F8016 */  lui        $t7, 0x8016
/* 1DEE4 8001D2E4 00095080 */  sll        $t2, $t1, 2
/* 1DEE8 8001D2E8 000CC080 */  sll        $t8, $t4, 2
/* 1DEEC 8001D2EC 01495023 */  subu       $t2, $t2, $t1
/* 1DEF0 8001D2F0 030CC023 */  subu       $t8, $t8, $t4
/* 1DEF4 8001D2F4 0018C080 */  sll        $t8, $t8, 2
/* 1DEF8 8001D2F8 000A5080 */  sll        $t2, $t2, 2
/* 1DEFC 8001D2FC 01495023 */  subu       $t2, $t2, $t1
/* 1DF00 8001D300 030CC023 */  subu       $t8, $t8, $t4
/* 1DF04 8001D304 0018C080 */  sll        $t8, $t8, 2
/* 1DF08 8001D308 000A5080 */  sll        $t2, $t2, 2
/* 1DF0C 8001D30C 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1DF10 8001D310 01495021 */  addu       $t2, $t2, $t1
/* 1DF14 8001D314 030CC021 */  addu       $t8, $t8, $t4
/* 1DF18 8001D318 0018C080 */  sll        $t8, $t8, 2
/* 1DF1C 8001D31C 000A5080 */  sll        $t2, $t2, 2
/* 1DF20 8001D320 01495023 */  subu       $t2, $t2, $t1
/* 1DF24 8001D324 030CC023 */  subu       $t8, $t8, $t4
/* 1DF28 8001D328 0018C080 */  sll        $t8, $t8, 2
/* 1DF2C 8001D32C 000A5080 */  sll        $t2, $t2, 2
/* 1DF30 8001D330 01EA7021 */  addu       $t6, $t7, $t2
/* 1DF34 8001D334 01F86821 */  addu       $t5, $t7, $t8
/* 1DF38 8001D338 C5A600E0 */  lwc1       $f6, 0xe0($t5)
/* 1DF3C 8001D33C C5C400E0 */  lwc1       $f4, 0xe0($t6)
/* 1DF40 8001D340 46000586 */  mov.s      $f22, $f0
/* 1DF44 8001D344 0C004788 */  jal        func_80011E20
/* 1DF48 8001D348 46062301 */   sub.s     $f12, $f4, $f6
/* 1DF4C 8001D34C 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 1DF50 8001D350 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 1DF54 8001D354 8FAA0058 */  lw         $t2, 0x58($sp)
/* 1DF58 8001D358 3C0B8016 */  lui        $t3, 0x8016
/* 1DF5C 8001D35C 0008C880 */  sll        $t9, $t0, 2
/* 1DF60 8001D360 000A7080 */  sll        $t6, $t2, 2
/* 1DF64 8001D364 0328C823 */  subu       $t9, $t9, $t0
/* 1DF68 8001D368 01CA7023 */  subu       $t6, $t6, $t2
/* 1DF6C 8001D36C 000E7080 */  sll        $t6, $t6, 2
/* 1DF70 8001D370 0019C880 */  sll        $t9, $t9, 2
/* 1DF74 8001D374 0328C823 */  subu       $t9, $t9, $t0
/* 1DF78 8001D378 01CA7023 */  subu       $t6, $t6, $t2
/* 1DF7C 8001D37C 000E7080 */  sll        $t6, $t6, 2
/* 1DF80 8001D380 0019C880 */  sll        $t9, $t9, 2
/* 1DF84 8001D384 8D6BFB9C */  lw         $t3, -0x464($t3)
/* 1DF88 8001D388 0328C821 */  addu       $t9, $t9, $t0
/* 1DF8C 8001D38C 01CA7021 */  addu       $t6, $t6, $t2
/* 1DF90 8001D390 000E7080 */  sll        $t6, $t6, 2
/* 1DF94 8001D394 0019C880 */  sll        $t9, $t9, 2
/* 1DF98 8001D398 0328C823 */  subu       $t9, $t9, $t0
/* 1DF9C 8001D39C 01CA7023 */  subu       $t6, $t6, $t2
/* 1DFA0 8001D3A0 000E7080 */  sll        $t6, $t6, 2
/* 1DFA4 8001D3A4 0019C880 */  sll        $t9, $t9, 2
/* 1DFA8 8001D3A8 01794821 */  addu       $t1, $t3, $t9
/* 1DFAC 8001D3AC 016E6021 */  addu       $t4, $t3, $t6
/* 1DFB0 8001D3B0 C58A00E8 */  lwc1       $f10, 0xe8($t4)
/* 1DFB4 8001D3B4 C52800E8 */  lwc1       $f8, 0xe8($t1)
/* 1DFB8 8001D3B8 46000506 */  mov.s      $f20, $f0
/* 1DFBC 8001D3BC 0C004788 */  jal        func_80011E20
/* 1DFC0 8001D3C0 460A4301 */   sub.s     $f12, $f8, $f10
/* 1DFC4 8001D3C4 4618B400 */  add.s      $f16, $f22, $f24
/* 1DFC8 8001D3C8 46140480 */  add.s      $f18, $f0, $f20
/* 1DFCC 8001D3CC 4612803C */  c.lt.s     $f16, $f18
/* 1DFD0 8001D3D0 00000000 */  nop
/* 1DFD4 8001D3D4 45000041 */  bc1f       .L8001D4DC
/* 1DFD8 8001D3D8 00000000 */   nop
/* 1DFDC 8001D3DC 8FB80040 */  lw         $t8, 0x40($sp)
/* 1DFE0 8001D3E0 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1DFE4 8001D3E4 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1DFE8 8001D3E8 00186880 */  sll        $t5, $t8, 2
/* 1DFEC 8001D3EC 01B86823 */  subu       $t5, $t5, $t8
/* 1DFF0 8001D3F0 000D6880 */  sll        $t5, $t5, 2
/* 1DFF4 8001D3F4 01B86823 */  subu       $t5, $t5, $t8
/* 1DFF8 8001D3F8 000D6880 */  sll        $t5, $t5, 2
/* 1DFFC 8001D3FC 01B86821 */  addu       $t5, $t5, $t8
/* 1E000 8001D400 000D6880 */  sll        $t5, $t5, 2
/* 1E004 8001D404 01B86823 */  subu       $t5, $t5, $t8
/* 1E008 8001D408 000D6880 */  sll        $t5, $t5, 2
/* 1E00C 8001D40C 01ED4021 */  addu       $t0, $t7, $t5
/* 1E010 8001D410 C5040284 */  lwc1       $f4, 0x284($t0)
/* 1E014 8001D414 3C014008 */  lui        $at, 0x4008
/* 1E018 8001D418 44814800 */  mtc1       $at, $f9
/* 1E01C 8001D41C 44804000 */  mtc1       $zero, $f8
/* 1E020 8001D420 460021A1 */  cvt.d.s    $f6, $f4
/* 1E024 8001D424 4628303C */  c.lt.d     $f6, $f8
/* 1E028 8001D428 00000000 */  nop
/* 1E02C 8001D42C 4500002B */  bc1f       .L8001D4DC
/* 1E030 8001D430 00000000 */   nop
/* 1E034 8001D434 AFB8004C */  sw         $t8, 0x4c($sp)
/* 1E038 8001D438 10000028 */  b          .L8001D4DC
/* 1E03C 8001D43C 00000000 */   nop
.L8001D440:
/* 1E040 8001D440 3C198016 */  lui        $t9, %hi(D_8015F464)
/* 1E044 8001D444 8F39F464 */  lw         $t9, %lo(D_8015F464)($t9)
/* 1E048 8001D448 24010004 */  addiu      $at, $zero, 4
/* 1E04C 8001D44C 17210023 */  bne        $t9, $at, .L8001D4DC
/* 1E050 8001D450 00000000 */   nop
/* 1E054 8001D454 0C012058 */  jal        func_80048160
/* 1E058 8001D458 24040005 */   addiu     $a0, $zero, 5
/* 1E05C 8001D45C AFA20048 */  sw         $v0, 0x48($sp)
/* 1E060 8001D460 0C012058 */  jal        func_80048160
/* 1E064 8001D464 2404000A */   addiu     $a0, $zero, 0xa
/* 1E068 8001D468 8FA90048 */  lw         $t1, 0x48($sp)
/* 1E06C 8001D46C 2401FFFF */  addiu      $at, $zero, -1
/* 1E070 8001D470 AFA20044 */  sw         $v0, 0x44($sp)
/* 1E074 8001D474 11210019 */  beq        $t1, $at, .L8001D4DC
/* 1E078 8001D478 00000000 */   nop
/* 1E07C 8001D47C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 1E080 8001D480 2401FFFF */  addiu      $at, $zero, -1
/* 1E084 8001D484 11410015 */  beq        $t2, $at, .L8001D4DC
/* 1E088 8001D488 00000000 */   nop
/* 1E08C 8001D48C 3C0B8016 */  lui        $t3, %hi(D_801631F4)
/* 1E090 8001D490 256B31F4 */  addiu      $t3, $t3, %lo(D_801631F4)
/* 1E094 8001D494 8D6E003C */  lw         $t6, 0x3c($t3)
/* 1E098 8001D498 11C00010 */  beqz       $t6, .L8001D4DC
/* 1E09C 8001D49C 00000000 */   nop
/* 1E0A0 8001D4A0 00096880 */  sll        $t5, $t1, 2
/* 1E0A4 8001D4A4 01A96823 */  subu       $t5, $t5, $t1
/* 1E0A8 8001D4A8 000D6880 */  sll        $t5, $t5, 2
/* 1E0AC 8001D4AC 01A96823 */  subu       $t5, $t5, $t1
/* 1E0B0 8001D4B0 000D6880 */  sll        $t5, $t5, 2
/* 1E0B4 8001D4B4 01A96821 */  addu       $t5, $t5, $t1
/* 1E0B8 8001D4B8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1E0BC 8001D4BC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1E0C0 8001D4C0 000D6880 */  sll        $t5, $t5, 2
/* 1E0C4 8001D4C4 01A96823 */  subu       $t5, $t5, $t1
/* 1E0C8 8001D4C8 000D6880 */  sll        $t5, $t5, 2
/* 1E0CC 8001D4CC AFAA004C */  sw         $t2, 0x4c($sp)
/* 1E0D0 8001D4D0 240C0003 */  addiu      $t4, $zero, 3
/* 1E0D4 8001D4D4 01ED4021 */  addu       $t0, $t7, $t5
/* 1E0D8 8001D4D8 AD0C0088 */  sw         $t4, 0x88($t0)
.L8001D4DC:
/* 1E0DC 8001D4DC 3C188016 */  lui        $t8, %hi(D_8015ECE8)
/* 1E0E0 8001D4E0 8F18ECE8 */  lw         $t8, %lo(D_8015ECE8)($t8)
/* 1E0E4 8001D4E4 07000069 */  bltz       $t8, .L8001D68C
/* 1E0E8 8001D4E8 00000000 */   nop
/* 1E0EC 8001D4EC 00185880 */  sll        $t3, $t8, 2
/* 1E0F0 8001D4F0 01785823 */  subu       $t3, $t3, $t8
/* 1E0F4 8001D4F4 000B5880 */  sll        $t3, $t3, 2
/* 1E0F8 8001D4F8 01785823 */  subu       $t3, $t3, $t8
/* 1E0FC 8001D4FC 000B5880 */  sll        $t3, $t3, 2
/* 1E100 8001D500 01785821 */  addu       $t3, $t3, $t8
/* 1E104 8001D504 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 1E108 8001D508 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 1E10C 8001D50C 000B5880 */  sll        $t3, $t3, 2
/* 1E110 8001D510 01785823 */  subu       $t3, $t3, $t8
/* 1E114 8001D514 000B5880 */  sll        $t3, $t3, 2
/* 1E118 8001D518 032B7021 */  addu       $t6, $t9, $t3
/* 1E11C 8001D51C C5CA0284 */  lwc1       $f10, 0x284($t6)
/* 1E120 8001D520 3C014008 */  lui        $at, 0x4008
/* 1E124 8001D524 44819800 */  mtc1       $at, $f19
/* 1E128 8001D528 44809000 */  mtc1       $zero, $f18
/* 1E12C 8001D52C 46005421 */  cvt.d.s    $f16, $f10
/* 1E130 8001D530 4632803C */  c.lt.d     $f16, $f18
/* 1E134 8001D534 00000000 */  nop
/* 1E138 8001D538 45000054 */  bc1f       .L8001D68C
/* 1E13C 8001D53C 00000000 */   nop
/* 1E140 8001D540 3C0A8016 */  lui        $t2, %hi(D_8015ECE4)
/* 1E144 8001D544 8D4AECE4 */  lw         $t2, %lo(D_8015ECE4)($t2)
/* 1E148 8001D548 29410281 */  slti       $at, $t2, 0x281
/* 1E14C 8001D54C 1420004F */  bnez       $at, .L8001D68C
/* 1E150 8001D550 00000000 */   nop
/* 1E154 8001D554 8FA90058 */  lw         $t1, 0x58($sp)
/* 1E158 8001D558 C5C600E4 */  lwc1       $f6, 0xe4($t6)
/* 1E15C 8001D55C 00097880 */  sll        $t7, $t1, 2
/* 1E160 8001D560 01E97823 */  subu       $t7, $t7, $t1
/* 1E164 8001D564 000F7880 */  sll        $t7, $t7, 2
/* 1E168 8001D568 01E97823 */  subu       $t7, $t7, $t1
/* 1E16C 8001D56C 000F7880 */  sll        $t7, $t7, 2
/* 1E170 8001D570 01E97821 */  addu       $t7, $t7, $t1
/* 1E174 8001D574 000F7880 */  sll        $t7, $t7, 2
/* 1E178 8001D578 01E97823 */  subu       $t7, $t7, $t1
/* 1E17C 8001D57C 000F7880 */  sll        $t7, $t7, 2
/* 1E180 8001D580 032F6821 */  addu       $t5, $t9, $t7
/* 1E184 8001D584 C5A400E4 */  lwc1       $f4, 0xe4($t5)
/* 1E188 8001D588 0C004788 */  jal        func_80011E20
/* 1E18C 8001D58C 46062301 */   sub.s     $f12, $f4, $f6
/* 1E190 8001D590 3C0A8016 */  lui        $t2, %hi(D_8015ECE8)
/* 1E194 8001D594 8D4AECE8 */  lw         $t2, %lo(D_8015ECE8)($t2)
/* 1E198 8001D598 8FA80058 */  lw         $t0, 0x58($sp)
/* 1E19C 8001D59C 3C0C8016 */  lui        $t4, 0x8016
/* 1E1A0 8001D5A0 000A4880 */  sll        $t1, $t2, 2
/* 1E1A4 8001D5A4 0008C080 */  sll        $t8, $t0, 2
/* 1E1A8 8001D5A8 012A4823 */  subu       $t1, $t1, $t2
/* 1E1AC 8001D5AC 0308C023 */  subu       $t8, $t8, $t0
/* 1E1B0 8001D5B0 0018C080 */  sll        $t8, $t8, 2
/* 1E1B4 8001D5B4 00094880 */  sll        $t1, $t1, 2
/* 1E1B8 8001D5B8 012A4823 */  subu       $t1, $t1, $t2
/* 1E1BC 8001D5BC 0308C023 */  subu       $t8, $t8, $t0
/* 1E1C0 8001D5C0 0018C080 */  sll        $t8, $t8, 2
/* 1E1C4 8001D5C4 00094880 */  sll        $t1, $t1, 2
/* 1E1C8 8001D5C8 8D8CFB9C */  lw         $t4, -0x464($t4)
/* 1E1CC 8001D5CC 012A4821 */  addu       $t1, $t1, $t2
/* 1E1D0 8001D5D0 0308C021 */  addu       $t8, $t8, $t0
/* 1E1D4 8001D5D4 0018C080 */  sll        $t8, $t8, 2
/* 1E1D8 8001D5D8 00094880 */  sll        $t1, $t1, 2
/* 1E1DC 8001D5DC 012A4823 */  subu       $t1, $t1, $t2
/* 1E1E0 8001D5E0 0308C023 */  subu       $t8, $t8, $t0
/* 1E1E4 8001D5E4 0018C080 */  sll        $t8, $t8, 2
/* 1E1E8 8001D5E8 00094880 */  sll        $t1, $t1, 2
/* 1E1EC 8001D5EC 0189C821 */  addu       $t9, $t4, $t1
/* 1E1F0 8001D5F0 01985821 */  addu       $t3, $t4, $t8
/* 1E1F4 8001D5F4 C56800E0 */  lwc1       $f8, 0xe0($t3)
/* 1E1F8 8001D5F8 C72A00E0 */  lwc1       $f10, 0xe0($t9)
/* 1E1FC 8001D5FC 46000586 */  mov.s      $f22, $f0
/* 1E200 8001D600 0C004788 */  jal        func_80011E20
/* 1E204 8001D604 460A4301 */   sub.s     $f12, $f8, $f10
/* 1E208 8001D608 3C188016 */  lui        $t8, %hi(D_8015ECE8)
/* 1E20C 8001D60C 8F18ECE8 */  lw         $t8, %lo(D_8015ECE8)($t8)
/* 1E210 8001D610 8FAD0058 */  lw         $t5, 0x58($sp)
/* 1E214 8001D614 3C0F8016 */  lui        $t7, 0x8016
/* 1E218 8001D618 00185880 */  sll        $t3, $t8, 2
/* 1E21C 8001D61C 000D7080 */  sll        $t6, $t5, 2
/* 1E220 8001D620 01785823 */  subu       $t3, $t3, $t8
/* 1E224 8001D624 01CD7023 */  subu       $t6, $t6, $t5
/* 1E228 8001D628 000E7080 */  sll        $t6, $t6, 2
/* 1E22C 8001D62C 000B5880 */  sll        $t3, $t3, 2
/* 1E230 8001D630 01785823 */  subu       $t3, $t3, $t8
/* 1E234 8001D634 01CD7023 */  subu       $t6, $t6, $t5
/* 1E238 8001D638 000E7080 */  sll        $t6, $t6, 2
/* 1E23C 8001D63C 000B5880 */  sll        $t3, $t3, 2
/* 1E240 8001D640 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1E244 8001D644 01785821 */  addu       $t3, $t3, $t8
/* 1E248 8001D648 01CD7021 */  addu       $t6, $t6, $t5
/* 1E24C 8001D64C 000E7080 */  sll        $t6, $t6, 2
/* 1E250 8001D650 000B5880 */  sll        $t3, $t3, 2
/* 1E254 8001D654 01785823 */  subu       $t3, $t3, $t8
/* 1E258 8001D658 01CD7023 */  subu       $t6, $t6, $t5
/* 1E25C 8001D65C 000E7080 */  sll        $t6, $t6, 2
/* 1E260 8001D660 000B5880 */  sll        $t3, $t3, 2
/* 1E264 8001D664 01EB5021 */  addu       $t2, $t7, $t3
/* 1E268 8001D668 01EE4021 */  addu       $t0, $t7, $t6
/* 1E26C 8001D66C C51000E8 */  lwc1       $f16, 0xe8($t0)
/* 1E270 8001D670 C55200E8 */  lwc1       $f18, 0xe8($t2)
/* 1E274 8001D674 46000506 */  mov.s      $f20, $f0
/* 1E278 8001D678 0C004788 */  jal        func_80011E20
/* 1E27C 8001D67C 46128301 */   sub.s     $f12, $f16, $f18
/* 1E280 8001D680 4616A100 */  add.s      $f4, $f20, $f22
/* 1E284 8001D684 46040180 */  add.s      $f6, $f0, $f4
/* 1E288 8001D688 E7A60050 */  swc1       $f6, 0x50($sp)
.L8001D68C:
/* 1E28C 8001D68C 3C0C8016 */  lui        $t4, %hi(D_8015ECF8)
/* 1E290 8001D690 8D8CECF8 */  lw         $t4, %lo(D_8015ECF8)($t4)
/* 1E294 8001D694 05800069 */  bltz       $t4, .L8001D83C
/* 1E298 8001D698 00000000 */   nop
/* 1E29C 8001D69C 000CC880 */  sll        $t9, $t4, 2
/* 1E2A0 8001D6A0 032CC823 */  subu       $t9, $t9, $t4
/* 1E2A4 8001D6A4 0019C880 */  sll        $t9, $t9, 2
/* 1E2A8 8001D6A8 032CC823 */  subu       $t9, $t9, $t4
/* 1E2AC 8001D6AC 0019C880 */  sll        $t9, $t9, 2
/* 1E2B0 8001D6B0 032CC821 */  addu       $t9, $t9, $t4
/* 1E2B4 8001D6B4 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 1E2B8 8001D6B8 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 1E2BC 8001D6BC 0019C880 */  sll        $t9, $t9, 2
/* 1E2C0 8001D6C0 032CC823 */  subu       $t9, $t9, $t4
/* 1E2C4 8001D6C4 0019C880 */  sll        $t9, $t9, 2
/* 1E2C8 8001D6C8 01396821 */  addu       $t5, $t1, $t9
/* 1E2CC 8001D6CC C5A80284 */  lwc1       $f8, 0x284($t5)
/* 1E2D0 8001D6D0 3C014008 */  lui        $at, 0x4008
/* 1E2D4 8001D6D4 44818800 */  mtc1       $at, $f17
/* 1E2D8 8001D6D8 44808000 */  mtc1       $zero, $f16
/* 1E2DC 8001D6DC 460042A1 */  cvt.d.s    $f10, $f8
/* 1E2E0 8001D6E0 4630503C */  c.lt.d     $f10, $f16
/* 1E2E4 8001D6E4 00000000 */  nop
/* 1E2E8 8001D6E8 45000054 */  bc1f       .L8001D83C
/* 1E2EC 8001D6EC 00000000 */   nop
/* 1E2F0 8001D6F0 3C0E8016 */  lui        $t6, %hi(D_8015ECF4)
/* 1E2F4 8001D6F4 8DCEECF4 */  lw         $t6, %lo(D_8015ECF4)($t6)
/* 1E2F8 8001D6F8 29C10281 */  slti       $at, $t6, 0x281
/* 1E2FC 8001D6FC 1420004F */  bnez       $at, .L8001D83C
/* 1E300 8001D700 00000000 */   nop
/* 1E304 8001D704 8FA80058 */  lw         $t0, 0x58($sp)
/* 1E308 8001D708 C5A400E4 */  lwc1       $f4, 0xe4($t5)
/* 1E30C 8001D70C 0008C080 */  sll        $t8, $t0, 2
/* 1E310 8001D710 0308C023 */  subu       $t8, $t8, $t0
/* 1E314 8001D714 0018C080 */  sll        $t8, $t8, 2
/* 1E318 8001D718 0308C023 */  subu       $t8, $t8, $t0
/* 1E31C 8001D71C 0018C080 */  sll        $t8, $t8, 2
/* 1E320 8001D720 0308C021 */  addu       $t8, $t8, $t0
/* 1E324 8001D724 0018C080 */  sll        $t8, $t8, 2
/* 1E328 8001D728 0308C023 */  subu       $t8, $t8, $t0
/* 1E32C 8001D72C 0018C080 */  sll        $t8, $t8, 2
/* 1E330 8001D730 01387821 */  addu       $t7, $t1, $t8
/* 1E334 8001D734 C5F200E4 */  lwc1       $f18, 0xe4($t7)
/* 1E338 8001D738 0C004788 */  jal        func_80011E20
/* 1E33C 8001D73C 46049301 */   sub.s     $f12, $f18, $f4
/* 1E340 8001D740 3C0E8016 */  lui        $t6, %hi(D_8015ECF8)
/* 1E344 8001D744 8DCEECF8 */  lw         $t6, %lo(D_8015ECF8)($t6)
/* 1E348 8001D748 8FAA0058 */  lw         $t2, 0x58($sp)
/* 1E34C 8001D74C 3C0B8016 */  lui        $t3, 0x8016
/* 1E350 8001D750 000E4080 */  sll        $t0, $t6, 2
/* 1E354 8001D754 000A6080 */  sll        $t4, $t2, 2
/* 1E358 8001D758 010E4023 */  subu       $t0, $t0, $t6
/* 1E35C 8001D75C 018A6023 */  subu       $t4, $t4, $t2
/* 1E360 8001D760 000C6080 */  sll        $t4, $t4, 2
/* 1E364 8001D764 00084080 */  sll        $t0, $t0, 2
/* 1E368 8001D768 010E4023 */  subu       $t0, $t0, $t6
/* 1E36C 8001D76C 018A6023 */  subu       $t4, $t4, $t2
/* 1E370 8001D770 000C6080 */  sll        $t4, $t4, 2
/* 1E374 8001D774 00084080 */  sll        $t0, $t0, 2
/* 1E378 8001D778 8D6BFB9C */  lw         $t3, -0x464($t3)
/* 1E37C 8001D77C 010E4021 */  addu       $t0, $t0, $t6
/* 1E380 8001D780 018A6021 */  addu       $t4, $t4, $t2
/* 1E384 8001D784 000C6080 */  sll        $t4, $t4, 2
/* 1E388 8001D788 00084080 */  sll        $t0, $t0, 2
/* 1E38C 8001D78C 010E4023 */  subu       $t0, $t0, $t6
/* 1E390 8001D790 018A6023 */  subu       $t4, $t4, $t2
/* 1E394 8001D794 000C6080 */  sll        $t4, $t4, 2
/* 1E398 8001D798 00084080 */  sll        $t0, $t0, 2
/* 1E39C 8001D79C 01684821 */  addu       $t1, $t3, $t0
/* 1E3A0 8001D7A0 016CC821 */  addu       $t9, $t3, $t4
/* 1E3A4 8001D7A4 C72600E0 */  lwc1       $f6, 0xe0($t9)
/* 1E3A8 8001D7A8 C52800E0 */  lwc1       $f8, 0xe0($t1)
/* 1E3AC 8001D7AC 46000586 */  mov.s      $f22, $f0
/* 1E3B0 8001D7B0 0C004788 */  jal        func_80011E20
/* 1E3B4 8001D7B4 46083301 */   sub.s     $f12, $f6, $f8
/* 1E3B8 8001D7B8 3C0C8016 */  lui        $t4, %hi(D_8015ECF8)
/* 1E3BC 8001D7BC 8D8CECF8 */  lw         $t4, %lo(D_8015ECF8)($t4)
/* 1E3C0 8001D7C0 8FAF0058 */  lw         $t7, 0x58($sp)
/* 1E3C4 8001D7C4 3C188016 */  lui        $t8, 0x8016
/* 1E3C8 8001D7C8 000CC880 */  sll        $t9, $t4, 2
/* 1E3CC 8001D7CC 000F6880 */  sll        $t5, $t7, 2
/* 1E3D0 8001D7D0 032CC823 */  subu       $t9, $t9, $t4
/* 1E3D4 8001D7D4 01AF6823 */  subu       $t5, $t5, $t7
/* 1E3D8 8001D7D8 000D6880 */  sll        $t5, $t5, 2
/* 1E3DC 8001D7DC 0019C880 */  sll        $t9, $t9, 2
/* 1E3E0 8001D7E0 032CC823 */  subu       $t9, $t9, $t4
/* 1E3E4 8001D7E4 01AF6823 */  subu       $t5, $t5, $t7
/* 1E3E8 8001D7E8 000D6880 */  sll        $t5, $t5, 2
/* 1E3EC 8001D7EC 0019C880 */  sll        $t9, $t9, 2
/* 1E3F0 8001D7F0 8F18FB9C */  lw         $t8, -0x464($t8)
/* 1E3F4 8001D7F4 032CC821 */  addu       $t9, $t9, $t4
/* 1E3F8 8001D7F8 01AF6821 */  addu       $t5, $t5, $t7
/* 1E3FC 8001D7FC 000D6880 */  sll        $t5, $t5, 2
/* 1E400 8001D800 0019C880 */  sll        $t9, $t9, 2
/* 1E404 8001D804 032CC823 */  subu       $t9, $t9, $t4
/* 1E408 8001D808 01AF6823 */  subu       $t5, $t5, $t7
/* 1E40C 8001D80C 000D6880 */  sll        $t5, $t5, 2
/* 1E410 8001D810 0019C880 */  sll        $t9, $t9, 2
/* 1E414 8001D814 03197021 */  addu       $t6, $t8, $t9
/* 1E418 8001D818 030D5021 */  addu       $t2, $t8, $t5
/* 1E41C 8001D81C C54A00E8 */  lwc1       $f10, 0xe8($t2)
/* 1E420 8001D820 C5D000E8 */  lwc1       $f16, 0xe8($t6)
/* 1E424 8001D824 46000506 */  mov.s      $f20, $f0
/* 1E428 8001D828 0C004788 */  jal        func_80011E20
/* 1E42C 8001D82C 46105301 */   sub.s     $f12, $f10, $f16
/* 1E430 8001D830 4616A480 */  add.s      $f18, $f20, $f22
/* 1E434 8001D834 46120100 */  add.s      $f4, $f0, $f18
/* 1E438 8001D838 E7A40054 */  swc1       $f4, 0x54($sp)
.L8001D83C:
/* 1E43C 8001D83C C7A60054 */  lwc1       $f6, 0x54($sp)
/* 1E440 8001D840 3C01800E */  lui        $at, %hi(D_800DC170)
/* 1E444 8001D844 D42AC170 */  ldc1       $f10, %lo(D_800DC170)($at)
/* 1E448 8001D848 46003221 */  cvt.d.s    $f8, $f6
/* 1E44C 8001D84C 462A403C */  c.lt.d     $f8, $f10
/* 1E450 8001D850 00000000 */  nop
/* 1E454 8001D854 4500000E */  bc1f       .L8001D890
/* 1E458 8001D858 00000000 */   nop
/* 1E45C 8001D85C C7B00050 */  lwc1       $f16, 0x50($sp)
/* 1E460 8001D860 4606803C */  c.lt.s     $f16, $f6
/* 1E464 8001D864 00000000 */  nop
/* 1E468 8001D868 45000005 */  bc1f       .L8001D880
/* 1E46C 8001D86C 00000000 */   nop
/* 1E470 8001D870 3C0B8016 */  lui        $t3, %hi(D_8015ECE8)
/* 1E474 8001D874 8D6BECE8 */  lw         $t3, %lo(D_8015ECE8)($t3)
/* 1E478 8001D878 10000010 */  b          .L8001D8BC
/* 1E47C 8001D87C AFAB004C */   sw        $t3, 0x4c($sp)
.L8001D880:
/* 1E480 8001D880 3C088016 */  lui        $t0, %hi(D_8015ECF8)
/* 1E484 8001D884 8D08ECF8 */  lw         $t0, %lo(D_8015ECF8)($t0)
/* 1E488 8001D888 1000000C */  b          .L8001D8BC
/* 1E48C 8001D88C AFA8004C */   sw        $t0, 0x4c($sp)
.L8001D890:
/* 1E490 8001D890 C7B20050 */  lwc1       $f18, 0x50($sp)
/* 1E494 8001D894 3C01800E */  lui        $at, %hi(D_800DC178)
/* 1E498 8001D898 D428C178 */  ldc1       $f8, %lo(D_800DC178)($at)
/* 1E49C 8001D89C 46009121 */  cvt.d.s    $f4, $f18
/* 1E4A0 8001D8A0 4628203C */  c.lt.d     $f4, $f8
/* 1E4A4 8001D8A4 00000000 */  nop
/* 1E4A8 8001D8A8 45000004 */  bc1f       .L8001D8BC
/* 1E4AC 8001D8AC 00000000 */   nop
/* 1E4B0 8001D8B0 3C098016 */  lui        $t1, %hi(D_8015ECE8)
/* 1E4B4 8001D8B4 8D29ECE8 */  lw         $t1, %lo(D_8015ECE8)($t1)
/* 1E4B8 8001D8B8 AFA9004C */  sw         $t1, 0x4c($sp)
.L8001D8BC:
/* 1E4BC 8001D8BC 8FAA0058 */  lw         $t2, 0x58($sp)
/* 1E4C0 8001D8C0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 1E4C4 8001D8C4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 1E4C8 8001D8C8 000A6080 */  sll        $t4, $t2, 2
/* 1E4CC 8001D8CC 018A6023 */  subu       $t4, $t4, $t2
/* 1E4D0 8001D8D0 000C6080 */  sll        $t4, $t4, 2
/* 1E4D4 8001D8D4 018A6023 */  subu       $t4, $t4, $t2
/* 1E4D8 8001D8D8 000C6080 */  sll        $t4, $t4, 2
/* 1E4DC 8001D8DC 018A6021 */  addu       $t4, $t4, $t2
/* 1E4E0 8001D8E0 000C6080 */  sll        $t4, $t4, 2
/* 1E4E4 8001D8E4 8FAF004C */  lw         $t7, 0x4c($sp)
/* 1E4E8 8001D8E8 018A6023 */  subu       $t4, $t4, $t2
/* 1E4EC 8001D8EC 000C6080 */  sll        $t4, $t4, 2
/* 1E4F0 8001D8F0 01ACC021 */  addu       $t8, $t5, $t4
/* 1E4F4 8001D8F4 AF0F00A4 */  sw         $t7, 0xa4($t8)
/* 1E4F8 8001D8F8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1E4FC 8001D8FC D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1E500 8001D900 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1E504 8001D904 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 1E508 8001D908 03E00008 */  jr         $ra
/* 1E50C 8001D90C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8001D910
/* 1E510 8001D910 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1E514 8001D914 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1E518 8001D918 AFA40048 */  sw         $a0, 0x48($sp)
/* 1E51C 8001D91C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1E520 8001D920 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1E524 8001D924 8FB80048 */  lw         $t8, 0x48($sp)
/* 1E528 8001D928 3C0143C8 */  lui        $at, 0x43c8
/* 1E52C 8001D92C 3C0F8016 */  lui        $t7, 0x8016
/* 1E530 8001D930 0018C880 */  sll        $t9, $t8, 2
/* 1E534 8001D934 0338C823 */  subu       $t9, $t9, $t8
/* 1E538 8001D938 0019C880 */  sll        $t9, $t9, 2
/* 1E53C 8001D93C 0338C823 */  subu       $t9, $t9, $t8
/* 1E540 8001D940 0019C880 */  sll        $t9, $t9, 2
/* 1E544 8001D944 0338C821 */  addu       $t9, $t9, $t8
/* 1E548 8001D948 44812000 */  mtc1       $at, $f4
/* 1E54C 8001D94C 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1E550 8001D950 0019C880 */  sll        $t9, $t9, 2
/* 1E554 8001D954 0338C823 */  subu       $t9, $t9, $t8
/* 1E558 8001D958 240EFFFF */  addiu      $t6, $zero, -1
/* 1E55C 8001D95C 0019C880 */  sll        $t9, $t9, 2
/* 1E560 8001D960 AFAE0034 */  sw         $t6, 0x34($sp)
/* 1E564 8001D964 E7A40044 */  swc1       $f4, 0x44($sp)
/* 1E568 8001D968 01F94021 */  addu       $t0, $t7, $t9
/* 1E56C 8001D96C 8D090004 */  lw         $t1, 4($t0)
/* 1E570 8001D970 AFA90038 */  sw         $t1, 0x38($sp)
/* 1E574 8001D974 8D0A0288 */  lw         $t2, 0x288($t0)
/* 1E578 8001D978 314B07FE */  andi       $t3, $t2, 0x7fe
/* 1E57C 8001D97C 116000CB */  beqz       $t3, .L8001DCAC
/* 1E580 8001D980 00000000 */   nop
/* 1E584 8001D984 0520008F */  bltz       $t1, .L8001DBC4
/* 1E588 8001D988 00000000 */   nop
.L8001D98C:
/* 1E58C 8001D98C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 1E590 8001D990 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1E594 8001D994 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1E598 8001D998 000D7080 */  sll        $t6, $t5, 2
/* 1E59C 8001D99C 01CD7023 */  subu       $t6, $t6, $t5
/* 1E5A0 8001D9A0 000E7080 */  sll        $t6, $t6, 2
/* 1E5A4 8001D9A4 01CD7023 */  subu       $t6, $t6, $t5
/* 1E5A8 8001D9A8 000E7080 */  sll        $t6, $t6, 2
/* 1E5AC 8001D9AC 01CD7021 */  addu       $t6, $t6, $t5
/* 1E5B0 8001D9B0 000E7080 */  sll        $t6, $t6, 2
/* 1E5B4 8001D9B4 01CD7023 */  subu       $t6, $t6, $t5
/* 1E5B8 8001D9B8 000E7080 */  sll        $t6, $t6, 2
/* 1E5BC 8001D9BC 018EC021 */  addu       $t8, $t4, $t6
/* 1E5C0 8001D9C0 8F0F006C */  lw         $t7, 0x6c($t8)
/* 1E5C4 8001D9C4 29E10032 */  slti       $at, $t7, 0x32
/* 1E5C8 8001D9C8 1020006C */  beqz       $at, .L8001DB7C
/* 1E5CC 8001D9CC AFAF0030 */   sw        $t7, 0x30($sp)
/* 1E5D0 8001D9D0 24010004 */  addiu      $at, $zero, 4
/* 1E5D4 8001D9D4 11E10069 */  beq        $t7, $at, .L8001DB7C
/* 1E5D8 8001D9D8 24010018 */   addiu     $at, $zero, 0x18
/* 1E5DC 8001D9DC 11E10067 */  beq        $t7, $at, .L8001DB7C
/* 1E5E0 8001D9E0 24010019 */   addiu     $at, $zero, 0x19
/* 1E5E4 8001D9E4 11E10065 */  beq        $t7, $at, .L8001DB7C
/* 1E5E8 8001D9E8 2401001A */   addiu     $at, $zero, 0x1a
/* 1E5EC 8001D9EC 11E10063 */  beq        $t7, $at, .L8001DB7C
/* 1E5F0 8001D9F0 2401001B */   addiu     $at, $zero, 0x1b
/* 1E5F4 8001D9F4 11E10061 */  beq        $t7, $at, .L8001DB7C
/* 1E5F8 8001D9F8 2401000A */   addiu     $at, $zero, 0xa
/* 1E5FC 8001D9FC 11E1005F */  beq        $t7, $at, .L8001DB7C
/* 1E600 8001DA00 2401000D */   addiu     $at, $zero, 0xd
/* 1E604 8001DA04 11E1005D */  beq        $t7, $at, .L8001DB7C
/* 1E608 8001DA08 00000000 */   nop
/* 1E60C 8001DA0C C7060024 */  lwc1       $f6, 0x24($t8)
/* 1E610 8001DA10 44804000 */  mtc1       $zero, $f8
/* 1E614 8001DA14 00000000 */  nop
/* 1E618 8001DA18 4606403C */  c.lt.s     $f8, $f6
/* 1E61C 8001DA1C 00000000 */  nop
/* 1E620 8001DA20 45000056 */  bc1f       .L8001DB7C
/* 1E624 8001DA24 00000000 */   nop
/* 1E628 8001DA28 8FB90048 */  lw         $t9, 0x48($sp)
/* 1E62C 8001DA2C C71000E4 */  lwc1       $f16, 0xe4($t8)
/* 1E630 8001DA30 00194080 */  sll        $t0, $t9, 2
/* 1E634 8001DA34 01194023 */  subu       $t0, $t0, $t9
/* 1E638 8001DA38 00084080 */  sll        $t0, $t0, 2
/* 1E63C 8001DA3C 01194023 */  subu       $t0, $t0, $t9
/* 1E640 8001DA40 00084080 */  sll        $t0, $t0, 2
/* 1E644 8001DA44 01194021 */  addu       $t0, $t0, $t9
/* 1E648 8001DA48 00084080 */  sll        $t0, $t0, 2
/* 1E64C 8001DA4C 01194023 */  subu       $t0, $t0, $t9
/* 1E650 8001DA50 00084080 */  sll        $t0, $t0, 2
/* 1E654 8001DA54 01885021 */  addu       $t2, $t4, $t0
/* 1E658 8001DA58 C54A00E4 */  lwc1       $f10, 0xe4($t2)
/* 1E65C 8001DA5C 0C004788 */  jal        func_80011E20
/* 1E660 8001DA60 46105301 */   sub.s     $f12, $f10, $f16
/* 1E664 8001DA64 8FA90048 */  lw         $t1, 0x48($sp)
/* 1E668 8001DA68 8FAF0038 */  lw         $t7, 0x38($sp)
/* 1E66C 8001DA6C 3C0B8016 */  lui        $t3, 0x8016
/* 1E670 8001DA70 00096880 */  sll        $t5, $t1, 2
/* 1E674 8001DA74 000FC880 */  sll        $t9, $t7, 2
/* 1E678 8001DA78 01A96823 */  subu       $t5, $t5, $t1
/* 1E67C 8001DA7C 032FC823 */  subu       $t9, $t9, $t7
/* 1E680 8001DA80 0019C880 */  sll        $t9, $t9, 2
/* 1E684 8001DA84 000D6880 */  sll        $t5, $t5, 2
/* 1E688 8001DA88 01A96823 */  subu       $t5, $t5, $t1
/* 1E68C 8001DA8C 032FC823 */  subu       $t9, $t9, $t7
/* 1E690 8001DA90 0019C880 */  sll        $t9, $t9, 2
/* 1E694 8001DA94 000D6880 */  sll        $t5, $t5, 2
/* 1E698 8001DA98 8D6BFB9C */  lw         $t3, -0x464($t3)
/* 1E69C 8001DA9C 01A96821 */  addu       $t5, $t5, $t1
/* 1E6A0 8001DAA0 032FC821 */  addu       $t9, $t9, $t7
/* 1E6A4 8001DAA4 0019C880 */  sll        $t9, $t9, 2
/* 1E6A8 8001DAA8 000D6880 */  sll        $t5, $t5, 2
/* 1E6AC 8001DAAC 01A96823 */  subu       $t5, $t5, $t1
/* 1E6B0 8001DAB0 032FC823 */  subu       $t9, $t9, $t7
/* 1E6B4 8001DAB4 0019C880 */  sll        $t9, $t9, 2
/* 1E6B8 8001DAB8 000D6880 */  sll        $t5, $t5, 2
/* 1E6BC 8001DABC 016D7021 */  addu       $t6, $t3, $t5
/* 1E6C0 8001DAC0 01796021 */  addu       $t4, $t3, $t9
/* 1E6C4 8001DAC4 C58400E0 */  lwc1       $f4, 0xe0($t4)
/* 1E6C8 8001DAC8 C5D200E0 */  lwc1       $f18, 0xe0($t6)
/* 1E6CC 8001DACC 46000586 */  mov.s      $f22, $f0
/* 1E6D0 8001DAD0 0C004788 */  jal        func_80011E20
/* 1E6D4 8001DAD4 46049301 */   sub.s     $f12, $f18, $f4
/* 1E6D8 8001DAD8 8FAA0048 */  lw         $t2, 0x48($sp)
/* 1E6DC 8001DADC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 1E6E0 8001DAE0 3C088016 */  lui        $t0, 0x8016
/* 1E6E4 8001DAE4 000AC080 */  sll        $t8, $t2, 2
/* 1E6E8 8001DAE8 000D7080 */  sll        $t6, $t5, 2
/* 1E6EC 8001DAEC 030AC023 */  subu       $t8, $t8, $t2
/* 1E6F0 8001DAF0 01CD7023 */  subu       $t6, $t6, $t5
/* 1E6F4 8001DAF4 000E7080 */  sll        $t6, $t6, 2
/* 1E6F8 8001DAF8 0018C080 */  sll        $t8, $t8, 2
/* 1E6FC 8001DAFC 030AC023 */  subu       $t8, $t8, $t2
/* 1E700 8001DB00 01CD7023 */  subu       $t6, $t6, $t5
/* 1E704 8001DB04 000E7080 */  sll        $t6, $t6, 2
/* 1E708 8001DB08 0018C080 */  sll        $t8, $t8, 2
/* 1E70C 8001DB0C 8D08FB9C */  lw         $t0, -0x464($t0)
/* 1E710 8001DB10 030AC021 */  addu       $t8, $t8, $t2
/* 1E714 8001DB14 01CD7021 */  addu       $t6, $t6, $t5
/* 1E718 8001DB18 000E7080 */  sll        $t6, $t6, 2
/* 1E71C 8001DB1C 0018C080 */  sll        $t8, $t8, 2
/* 1E720 8001DB20 030AC023 */  subu       $t8, $t8, $t2
/* 1E724 8001DB24 01CD7023 */  subu       $t6, $t6, $t5
/* 1E728 8001DB28 000E7080 */  sll        $t6, $t6, 2
/* 1E72C 8001DB2C 0018C080 */  sll        $t8, $t8, 2
/* 1E730 8001DB30 01184821 */  addu       $t1, $t0, $t8
/* 1E734 8001DB34 010E7821 */  addu       $t7, $t0, $t6
/* 1E738 8001DB38 C5E800E8 */  lwc1       $f8, 0xe8($t7)
/* 1E73C 8001DB3C C52600E8 */  lwc1       $f6, 0xe8($t1)
/* 1E740 8001DB40 46000506 */  mov.s      $f20, $f0
/* 1E744 8001DB44 0C004788 */  jal        func_80011E20
/* 1E748 8001DB48 46083301 */   sub.s     $f12, $f6, $f8
/* 1E74C 8001DB4C 4616A280 */  add.s      $f10, $f20, $f22
/* 1E750 8001DB50 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 1E754 8001DB54 460A0400 */  add.s      $f16, $f0, $f10
/* 1E758 8001DB58 E7B00040 */  swc1       $f16, 0x40($sp)
/* 1E75C 8001DB5C C7B20040 */  lwc1       $f18, 0x40($sp)
/* 1E760 8001DB60 4604903C */  c.lt.s     $f18, $f4
/* 1E764 8001DB64 00000000 */  nop
/* 1E768 8001DB68 45000004 */  bc1f       .L8001DB7C
/* 1E76C 8001DB6C 00000000 */   nop
/* 1E770 8001DB70 8FAB0038 */  lw         $t3, 0x38($sp)
/* 1E774 8001DB74 E7B20044 */  swc1       $f18, 0x44($sp)
/* 1E778 8001DB78 AFAB0034 */  sw         $t3, 0x34($sp)
.L8001DB7C:
/* 1E77C 8001DB7C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 1E780 8001DB80 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 1E784 8001DB84 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 1E788 8001DB88 000C5080 */  sll        $t2, $t4, 2
/* 1E78C 8001DB8C 014C5023 */  subu       $t2, $t2, $t4
/* 1E790 8001DB90 000A5080 */  sll        $t2, $t2, 2
/* 1E794 8001DB94 014C5023 */  subu       $t2, $t2, $t4
/* 1E798 8001DB98 000A5080 */  sll        $t2, $t2, 2
/* 1E79C 8001DB9C 014C5021 */  addu       $t2, $t2, $t4
/* 1E7A0 8001DBA0 000A5080 */  sll        $t2, $t2, 2
/* 1E7A4 8001DBA4 014C5023 */  subu       $t2, $t2, $t4
/* 1E7A8 8001DBA8 000A5080 */  sll        $t2, $t2, 2
/* 1E7AC 8001DBAC 032AC021 */  addu       $t8, $t9, $t2
/* 1E7B0 8001DBB0 8F090004 */  lw         $t1, 4($t8)
/* 1E7B4 8001DBB4 AFA90038 */  sw         $t1, 0x38($sp)
/* 1E7B8 8001DBB8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 1E7BC 8001DBBC 05A1FF73 */  bgez       $t5, .L8001D98C
/* 1E7C0 8001DBC0 00000000 */   nop
.L8001DBC4:
/* 1E7C4 8001DBC4 8FA80034 */  lw         $t0, 0x34($sp)
/* 1E7C8 8001DBC8 05000038 */  bltz       $t0, .L8001DCAC
/* 1E7CC 8001DBCC 00000000 */   nop
/* 1E7D0 8001DBD0 C7A60044 */  lwc1       $f6, 0x44($sp)
/* 1E7D4 8001DBD4 3C01800E */  lui        $at, %hi(D_800DC180)
/* 1E7D8 8001DBD8 D42AC180 */  ldc1       $f10, %lo(D_800DC180)($at)
/* 1E7DC 8001DBDC 46003221 */  cvt.d.s    $f8, $f6
/* 1E7E0 8001DBE0 4628503C */  c.lt.d     $f10, $f8
/* 1E7E4 8001DBE4 00000000 */  nop
/* 1E7E8 8001DBE8 45000030 */  bc1f       .L8001DCAC
/* 1E7EC 8001DBEC 00000000 */   nop
/* 1E7F0 8001DBF0 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1E7F4 8001DBF4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1E7F8 8001DBF8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1E7FC 8001DBFC 000F5880 */  sll        $t3, $t7, 2
/* 1E800 8001DC00 016F5823 */  subu       $t3, $t3, $t7
/* 1E804 8001DC04 000B5880 */  sll        $t3, $t3, 2
/* 1E808 8001DC08 016F5823 */  subu       $t3, $t3, $t7
/* 1E80C 8001DC0C 000B5880 */  sll        $t3, $t3, 2
/* 1E810 8001DC10 016F5821 */  addu       $t3, $t3, $t7
/* 1E814 8001DC14 000B5880 */  sll        $t3, $t3, 2
/* 1E818 8001DC18 016F5823 */  subu       $t3, $t3, $t7
/* 1E81C 8001DC1C 000B5880 */  sll        $t3, $t3, 2
/* 1E820 8001DC20 01CB6021 */  addu       $t4, $t6, $t3
/* 1E824 8001DC24 E58600AC */  swc1       $f6, 0xac($t4)
/* 1E828 8001DC28 8FA50034 */  lw         $a1, 0x34($sp)
/* 1E82C 8001DC2C 0C004482 */  jal        func_80011208
/* 1E830 8001DC30 8FA40048 */   lw        $a0, 0x48($sp)
/* 1E834 8001DC34 E7A0003C */  swc1       $f0, 0x3c($sp)
/* 1E838 8001DC38 0C016929 */  jal        func_8005A4A4
/* 1E83C 8001DC3C C7AC003C */   lwc1      $f12, 0x3c($sp)
/* 1E840 8001DC40 3C01800E */  lui        $at, %hi(D_800DC188)
/* 1E844 8001DC44 D424C188 */  ldc1       $f4, %lo(D_800DC188)($at)
/* 1E848 8001DC48 46000421 */  cvt.d.s    $f16, $f0
/* 1E84C 8001DC4C 4624803C */  c.lt.d     $f16, $f4
/* 1E850 8001DC50 00000000 */  nop
/* 1E854 8001DC54 45000015 */  bc1f       .L8001DCAC
/* 1E858 8001DC58 00000000 */   nop
/* 1E85C 8001DC5C C7B2003C */  lwc1       $f18, 0x3c($sp)
/* 1E860 8001DC60 3C01800E */  lui        $at, %hi(D_800DC190)
/* 1E864 8001DC64 D42AC190 */  ldc1       $f10, %lo(D_800DC190)($at)
/* 1E868 8001DC68 46009221 */  cvt.d.s    $f8, $f18
/* 1E86C 8001DC6C 8FAA0048 */  lw         $t2, 0x48($sp)
/* 1E870 8001DC70 462A4182 */  mul.d      $f6, $f8, $f10
/* 1E874 8001DC74 3C198016 */  lui        $t9, 0x8016
/* 1E878 8001DC78 000AC080 */  sll        $t8, $t2, 2
/* 1E87C 8001DC7C 030AC023 */  subu       $t8, $t8, $t2
/* 1E880 8001DC80 0018C080 */  sll        $t8, $t8, 2
/* 1E884 8001DC84 030AC023 */  subu       $t8, $t8, $t2
/* 1E888 8001DC88 0018C080 */  sll        $t8, $t8, 2
/* 1E88C 8001DC8C 030AC021 */  addu       $t8, $t8, $t2
/* 1E890 8001DC90 46203420 */  cvt.s.d    $f16, $f6
/* 1E894 8001DC94 8F39FB9C */  lw         $t9, -0x464($t9)
/* 1E898 8001DC98 0018C080 */  sll        $t8, $t8, 2
/* 1E89C 8001DC9C 030AC023 */  subu       $t8, $t8, $t2
/* 1E8A0 8001DCA0 0018C080 */  sll        $t8, $t8, 2
/* 1E8A4 8001DCA4 03384821 */  addu       $t1, $t9, $t8
/* 1E8A8 8001DCA8 E53000F4 */  swc1       $f16, 0xf4($t1)
.L8001DCAC:
/* 1E8AC 8001DCAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E8B0 8001DCB0 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1E8B4 8001DCB4 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1E8B8 8001DCB8 03E00008 */  jr         $ra
/* 1E8BC 8001DCBC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001DCC0
/* 1E8C0 8001DCC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1E8C4 8001DCC4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1E8C8 8001DCC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 1E8CC 8001DCCC AFA5002C */  sw         $a1, 0x2c($sp)
/* 1E8D0 8001DCD0 AFA60030 */  sw         $a2, 0x30($sp)
/* 1E8D4 8001DCD4 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* 1E8D8 8001DCD8 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* 1E8DC 8001DCDC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1E8E0 8001DCE0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1E8E4 8001DCE4 0018C880 */  sll        $t9, $t8, 2
/* 1E8E8 8001DCE8 0338C823 */  subu       $t9, $t9, $t8
/* 1E8EC 8001DCEC 0019C880 */  sll        $t9, $t9, 2
/* 1E8F0 8001DCF0 0338C823 */  subu       $t9, $t9, $t8
/* 1E8F4 8001DCF4 0019C880 */  sll        $t9, $t9, 2
/* 1E8F8 8001DCF8 0338C821 */  addu       $t9, $t9, $t8
/* 1E8FC 8001DCFC 0019C880 */  sll        $t9, $t9, 2
/* 1E900 8001DD00 8FA9002C */  lw         $t1, 0x2c($sp)
/* 1E904 8001DD04 240E0001 */  addiu      $t6, $zero, 1
/* 1E908 8001DD08 0338C823 */  subu       $t9, $t9, $t8
/* 1E90C 8001DD0C AFAE0024 */  sw         $t6, 0x24($sp)
/* 1E910 8001DD10 0019C880 */  sll        $t9, $t9, 2
/* 1E914 8001DD14 01F94021 */  addu       $t0, $t7, $t9
/* 1E918 8001DD18 C50400E4 */  lwc1       $f4, 0xe4($t0)
/* 1E91C 8001DD1C C5260004 */  lwc1       $f6, 4($t1)
/* 1E920 8001DD20 0C004788 */  jal        func_80011E20
/* 1E924 8001DD24 46062301 */   sub.s     $f12, $f4, $f6
/* 1E928 8001DD28 3C014069 */  lui        $at, 0x4069
/* 1E92C 8001DD2C 44815800 */  mtc1       $at, $f11
/* 1E930 8001DD30 44805000 */  mtc1       $zero, $f10
/* 1E934 8001DD34 46000221 */  cvt.d.s    $f8, $f0
/* 1E938 8001DD38 462A403C */  c.lt.d     $f8, $f10
/* 1E93C 8001DD3C 00000000 */  nop
/* 1E940 8001DD40 45000040 */  bc1f       .L8001DE44
/* 1E944 8001DD44 00000000 */   nop
/* 1E948 8001DD48 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* 1E94C 8001DD4C 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* 1E950 8001DD50 8FAE002C */  lw         $t6, 0x2c($sp)
/* 1E954 8001DD54 3C0A8016 */  lui        $t2, 0x8016
/* 1E958 8001DD58 000B6080 */  sll        $t4, $t3, 2
/* 1E95C 8001DD5C 018B6023 */  subu       $t4, $t4, $t3
/* 1E960 8001DD60 000C6080 */  sll        $t4, $t4, 2
/* 1E964 8001DD64 018B6023 */  subu       $t4, $t4, $t3
/* 1E968 8001DD68 000C6080 */  sll        $t4, $t4, 2
/* 1E96C 8001DD6C 018B6021 */  addu       $t4, $t4, $t3
/* 1E970 8001DD70 8D4AFB9C */  lw         $t2, -0x464($t2)
/* 1E974 8001DD74 C5C40000 */  lwc1       $f4, ($t6)
/* 1E978 8001DD78 000C6080 */  sll        $t4, $t4, 2
/* 1E97C 8001DD7C 3C014059 */  lui        $at, 0x4059
/* 1E980 8001DD80 018B6023 */  subu       $t4, $t4, $t3
/* 1E984 8001DD84 44814800 */  mtc1       $at, $f9
/* 1E988 8001DD88 44804000 */  mtc1       $zero, $f8
/* 1E98C 8001DD8C 000C6080 */  sll        $t4, $t4, 2
/* 1E990 8001DD90 460021A1 */  cvt.d.s    $f6, $f4
/* 1E994 8001DD94 014C6821 */  addu       $t5, $t2, $t4
/* 1E998 8001DD98 C5B000E0 */  lwc1       $f16, 0xe0($t5)
/* 1E99C 8001DD9C 46283280 */  add.d      $f10, $f6, $f8
/* 1E9A0 8001DDA0 460084A1 */  cvt.d.s    $f18, $f16
/* 1E9A4 8001DDA4 4632503C */  c.lt.d     $f10, $f18
/* 1E9A8 8001DDA8 00000000 */  nop
/* 1E9AC 8001DDAC 45000025 */  bc1f       .L8001DE44
/* 1E9B0 8001DDB0 00000000 */   nop
/* 1E9B4 8001DDB4 8FB80030 */  lw         $t8, 0x30($sp)
/* 1E9B8 8001DDB8 3C014059 */  lui        $at, 0x4059
/* 1E9BC 8001DDBC 44813800 */  mtc1       $at, $f7
/* 1E9C0 8001DDC0 C7100000 */  lwc1       $f16, ($t8)
/* 1E9C4 8001DDC4 44803000 */  mtc1       $zero, $f6
/* 1E9C8 8001DDC8 46008121 */  cvt.d.s    $f4, $f16
/* 1E9CC 8001DDCC 46262201 */  sub.d      $f8, $f4, $f6
/* 1E9D0 8001DDD0 4628903C */  c.lt.d     $f18, $f8
/* 1E9D4 8001DDD4 00000000 */  nop
/* 1E9D8 8001DDD8 4500001A */  bc1f       .L8001DE44
/* 1E9DC 8001DDDC 00000000 */   nop
/* 1E9E0 8001DDE0 C5C40008 */  lwc1       $f4, 8($t6)
/* 1E9E4 8001DDE4 3C014059 */  lui        $at, 0x4059
/* 1E9E8 8001DDE8 44819800 */  mtc1       $at, $f19
/* 1E9EC 8001DDEC 44809000 */  mtc1       $zero, $f18
/* 1E9F0 8001DDF0 460021A1 */  cvt.d.s    $f6, $f4
/* 1E9F4 8001DDF4 C5AA00E8 */  lwc1       $f10, 0xe8($t5)
/* 1E9F8 8001DDF8 46323200 */  add.d      $f8, $f6, $f18
/* 1E9FC 8001DDFC 46005421 */  cvt.d.s    $f16, $f10
/* 1EA00 8001DE00 4630403C */  c.lt.d     $f8, $f16
/* 1EA04 8001DE04 00000000 */  nop
/* 1EA08 8001DE08 4500000E */  bc1f       .L8001DE44
/* 1EA0C 8001DE0C 00000000 */   nop
/* 1EA10 8001DE10 C7060008 */  lwc1       $f6, 8($t8)
/* 1EA14 8001DE14 3C014059 */  lui        $at, 0x4059
/* 1EA18 8001DE18 44818800 */  mtc1       $at, $f17
/* 1EA1C 8001DE1C 44808000 */  mtc1       $zero, $f16
/* 1EA20 8001DE20 460034A1 */  cvt.d.s    $f18, $f6
/* 1EA24 8001DE24 C5AA00E8 */  lwc1       $f10, 0xe8($t5)
/* 1EA28 8001DE28 46309201 */  sub.d      $f8, $f18, $f16
/* 1EA2C 8001DE2C 46005121 */  cvt.d.s    $f4, $f10
/* 1EA30 8001DE30 4628203C */  c.lt.d     $f4, $f8
/* 1EA34 8001DE34 00000000 */  nop
/* 1EA38 8001DE38 45000002 */  bc1f       .L8001DE44
/* 1EA3C 8001DE3C 00000000 */   nop
/* 1EA40 8001DE40 AFA00024 */  sw         $zero, 0x24($sp)
.L8001DE44:
/* 1EA44 8001DE44 8FAF0024 */  lw         $t7, 0x24($sp)
/* 1EA48 8001DE48 11E00022 */  beqz       $t7, .L8001DED4
/* 1EA4C 8001DE4C 00000000 */   nop
/* 1EA50 8001DE50 8FA80028 */  lw         $t0, 0x28($sp)
/* 1EA54 8001DE54 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 1EA58 8001DE58 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 1EA5C 8001DE5C 00084880 */  sll        $t1, $t0, 2
/* 1EA60 8001DE60 01284823 */  subu       $t1, $t1, $t0
/* 1EA64 8001DE64 00094880 */  sll        $t1, $t1, 2
/* 1EA68 8001DE68 01284823 */  subu       $t1, $t1, $t0
/* 1EA6C 8001DE6C 00094880 */  sll        $t1, $t1, 2
/* 1EA70 8001DE70 01284821 */  addu       $t1, $t1, $t0
/* 1EA74 8001DE74 00094880 */  sll        $t1, $t1, 2
/* 1EA78 8001DE78 01284823 */  subu       $t1, $t1, $t0
/* 1EA7C 8001DE7C 00094880 */  sll        $t1, $t1, 2
/* 1EA80 8001DE80 3C014396 */  lui        $at, 0x4396
/* 1EA84 8001DE84 03295821 */  addu       $t3, $t9, $t1
/* 1EA88 8001DE88 C56A00AC */  lwc1       $f10, 0xac($t3)
/* 1EA8C 8001DE8C 44813000 */  mtc1       $at, $f6
/* 1EA90 8001DE90 00000000 */  nop
/* 1EA94 8001DE94 460A303C */  c.lt.s     $f6, $f10
/* 1EA98 8001DE98 00000000 */  nop
/* 1EA9C 8001DE9C 4500000D */  bc1f       .L8001DED4
/* 1EAA0 8001DEA0 00000000 */   nop
/* 1EAA4 8001DEA4 240A0009 */  addiu      $t2, $zero, 9
/* 1EAA8 8001DEA8 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 1EAAC 8001DEAC 3C0C801C */  lui        $t4, %hi(D_801C5D40)
/* 1EAB0 8001DEB0 AC2AEDA0 */  sw         $t2, %lo(D_8015EDA0)($at)
/* 1EAB4 8001DEB4 258C5D40 */  addiu      $t4, $t4, %lo(D_801C5D40)
/* 1EAB8 8001DEB8 8D840050 */  lw         $a0, 0x50($t4)
/* 1EABC 8001DEBC AFA00014 */  sw         $zero, 0x14($sp)
/* 1EAC0 8001DEC0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1EAC4 8001DEC4 24050001 */  addiu      $a1, $zero, 1
/* 1EAC8 8001DEC8 00003025 */  or         $a2, $zero, $zero
/* 1EACC 8001DECC 0C0209BC */  jal        func_800826F0
/* 1EAD0 8001DED0 24074000 */   addiu     $a3, $zero, 0x4000
.L8001DED4:
/* 1EAD4 8001DED4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1EAD8 8001DED8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1EADC 8001DEDC 03E00008 */  jr         $ra
/* 1EAE0 8001DEE0 00000000 */   nop

glabel func_8001DEE4
/* 1EAE4 8001DEE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1EAE8 8001DEE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EAEC 8001DEEC AFA40020 */  sw         $a0, 0x20($sp)
/* 1EAF0 8001DEF0 AFA50024 */  sw         $a1, 0x24($sp)
/* 1EAF4 8001DEF4 AFA60028 */  sw         $a2, 0x28($sp)
/* 1EAF8 8001DEF8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 1EAFC 8001DEFC 3C188016 */  lui        $t8, 0x8016
/* 1EB00 8001DF00 3C088016 */  lui        $t0, 0x8016
/* 1EB04 8001DF04 000E7880 */  sll        $t7, $t6, 2
/* 1EB08 8001DF08 01EE7823 */  subu       $t7, $t7, $t6
/* 1EB0C 8001DF0C 000F7880 */  sll        $t7, $t7, 2
/* 1EB10 8001DF10 01EE7823 */  subu       $t7, $t7, $t6
/* 1EB14 8001DF14 000F7880 */  sll        $t7, $t7, 2
/* 1EB18 8001DF18 01EE7821 */  addu       $t7, $t7, $t6
/* 1EB1C 8001DF1C 8F18FB9C */  lw         $t8, -0x464($t8)
/* 1EB20 8001DF20 8D08EDA4 */  lw         $t0, -0x125c($t0)
/* 1EB24 8001DF24 000F7880 */  sll        $t7, $t7, 2
/* 1EB28 8001DF28 01EE7823 */  subu       $t7, $t7, $t6
/* 1EB2C 8001DF2C 000F7880 */  sll        $t7, $t7, 2
/* 1EB30 8001DF30 01F8C821 */  addu       $t9, $t7, $t8
/* 1EB34 8001DF34 29010002 */  slti       $at, $t0, 2
/* 1EB38 8001DF38 10200044 */  beqz       $at, .L8001E04C
/* 1EB3C 8001DF3C AFB9001C */   sw        $t9, 0x1c($sp)
/* 1EB40 8001DF40 8FA90024 */  lw         $t1, 0x24($sp)
/* 1EB44 8001DF44 3C018016 */  lui        $at, %hi(D_8015EDA4)
/* 1EB48 8001DF48 AC20EDA4 */  sw         $zero, %lo(D_8015EDA4)($at)
/* 1EB4C 8001DF4C C72400E4 */  lwc1       $f4, 0xe4($t9)
/* 1EB50 8001DF50 C5260004 */  lwc1       $f6, 4($t1)
/* 1EB54 8001DF54 0C004788 */  jal        func_80011E20
/* 1EB58 8001DF58 46062301 */   sub.s     $f12, $f4, $f6
/* 1EB5C 8001DF5C 3C014069 */  lui        $at, 0x4069
/* 1EB60 8001DF60 44815800 */  mtc1       $at, $f11
/* 1EB64 8001DF64 44805000 */  mtc1       $zero, $f10
/* 1EB68 8001DF68 46000221 */  cvt.d.s    $f8, $f0
/* 1EB6C 8001DF6C 462A403C */  c.lt.d     $f8, $f10
/* 1EB70 8001DF70 00000000 */  nop
/* 1EB74 8001DF74 45000035 */  bc1f       .L8001E04C
/* 1EB78 8001DF78 00000000 */   nop
/* 1EB7C 8001DF7C 8FAB0024 */  lw         $t3, 0x24($sp)
/* 1EB80 8001DF80 8FAA001C */  lw         $t2, 0x1c($sp)
/* 1EB84 8001DF84 3C014059 */  lui        $at, 0x4059
/* 1EB88 8001DF88 C5640000 */  lwc1       $f4, ($t3)
/* 1EB8C 8001DF8C 44814800 */  mtc1       $at, $f9
/* 1EB90 8001DF90 44804000 */  mtc1       $zero, $f8
/* 1EB94 8001DF94 460021A1 */  cvt.d.s    $f6, $f4
/* 1EB98 8001DF98 C55000E0 */  lwc1       $f16, 0xe0($t2)
/* 1EB9C 8001DF9C 46283280 */  add.d      $f10, $f6, $f8
/* 1EBA0 8001DFA0 460084A1 */  cvt.d.s    $f18, $f16
/* 1EBA4 8001DFA4 4632503C */  c.lt.d     $f10, $f18
/* 1EBA8 8001DFA8 00000000 */  nop
/* 1EBAC 8001DFAC 45000027 */  bc1f       .L8001E04C
/* 1EBB0 8001DFB0 00000000 */   nop
/* 1EBB4 8001DFB4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 1EBB8 8001DFB8 3C014059 */  lui        $at, 0x4059
/* 1EBBC 8001DFBC 44813800 */  mtc1       $at, $f7
/* 1EBC0 8001DFC0 C5900000 */  lwc1       $f16, ($t4)
/* 1EBC4 8001DFC4 44803000 */  mtc1       $zero, $f6
/* 1EBC8 8001DFC8 46008121 */  cvt.d.s    $f4, $f16
/* 1EBCC 8001DFCC 46262201 */  sub.d      $f8, $f4, $f6
/* 1EBD0 8001DFD0 4628903C */  c.lt.d     $f18, $f8
/* 1EBD4 8001DFD4 00000000 */  nop
/* 1EBD8 8001DFD8 4500001C */  bc1f       .L8001E04C
/* 1EBDC 8001DFDC 00000000 */   nop
/* 1EBE0 8001DFE0 C5640008 */  lwc1       $f4, 8($t3)
/* 1EBE4 8001DFE4 3C014059 */  lui        $at, 0x4059
/* 1EBE8 8001DFE8 44819800 */  mtc1       $at, $f19
/* 1EBEC 8001DFEC 44809000 */  mtc1       $zero, $f18
/* 1EBF0 8001DFF0 460021A1 */  cvt.d.s    $f6, $f4
/* 1EBF4 8001DFF4 C54A00E8 */  lwc1       $f10, 0xe8($t2)
/* 1EBF8 8001DFF8 46323200 */  add.d      $f8, $f6, $f18
/* 1EBFC 8001DFFC 46005421 */  cvt.d.s    $f16, $f10
/* 1EC00 8001E000 4630403C */  c.lt.d     $f8, $f16
/* 1EC04 8001E004 00000000 */  nop
/* 1EC08 8001E008 45000010 */  bc1f       .L8001E04C
/* 1EC0C 8001E00C 00000000 */   nop
/* 1EC10 8001E010 C5860008 */  lwc1       $f6, 8($t4)
/* 1EC14 8001E014 3C014059 */  lui        $at, 0x4059
/* 1EC18 8001E018 44818800 */  mtc1       $at, $f17
/* 1EC1C 8001E01C 44808000 */  mtc1       $zero, $f16
/* 1EC20 8001E020 460034A1 */  cvt.d.s    $f18, $f6
/* 1EC24 8001E024 C54A00E8 */  lwc1       $f10, 0xe8($t2)
/* 1EC28 8001E028 46309201 */  sub.d      $f8, $f18, $f16
/* 1EC2C 8001E02C 46005121 */  cvt.d.s    $f4, $f10
/* 1EC30 8001E030 4628203C */  c.lt.d     $f4, $f8
/* 1EC34 8001E034 00000000 */  nop
/* 1EC38 8001E038 45000004 */  bc1f       .L8001E04C
/* 1EC3C 8001E03C 00000000 */   nop
/* 1EC40 8001E040 240D0001 */  addiu      $t5, $zero, 1
/* 1EC44 8001E044 3C018016 */  lui        $at, %hi(D_8015EDA4)
/* 1EC48 8001E048 AC2DEDA4 */  sw         $t5, %lo(D_8015EDA4)($at)
.L8001E04C:
/* 1EC4C 8001E04C 3C0E8016 */  lui        $t6, %hi(D_8015EDA4)
/* 1EC50 8001E050 8DCEEDA4 */  lw         $t6, %lo(D_8015EDA4)($t6)
/* 1EC54 8001E054 24010002 */  addiu      $at, $zero, 2
/* 1EC58 8001E058 15C1003D */  bne        $t6, $at, .L8001E150
/* 1EC5C 8001E05C 00000000 */   nop
/* 1EC60 8001E060 8FAF001C */  lw         $t7, 0x1c($sp)
/* 1EC64 8001E064 8FB80024 */  lw         $t8, 0x24($sp)
/* 1EC68 8001E068 C5EA00E0 */  lwc1       $f10, 0xe0($t7)
/* 1EC6C 8001E06C C5E600D4 */  lwc1       $f6, 0xd4($t7)
/* 1EC70 8001E070 C7100000 */  lwc1       $f16, ($t8)
/* 1EC74 8001E074 46065480 */  add.s      $f18, $f10, $f6
/* 1EC78 8001E078 4610903C */  c.lt.s     $f18, $f16
/* 1EC7C 8001E07C 00000000 */  nop
/* 1EC80 8001E080 45000006 */  bc1f       .L8001E09C
/* 1EC84 8001E084 3C0140A0 */   lui       $at, 0x40a0
/* 1EC88 8001E088 44812000 */  mtc1       $at, $f4
/* 1EC8C 8001E08C 24080008 */  addiu      $t0, $zero, 8
/* 1EC90 8001E090 E5E400D4 */  swc1       $f4, 0xd4($t7)
/* 1EC94 8001E094 8FB9001C */  lw         $t9, 0x1c($sp)
/* 1EC98 8001E098 AF280060 */  sw         $t0, 0x60($t9)
.L8001E09C:
/* 1EC9C 8001E09C 8FA9001C */  lw         $t1, 0x1c($sp)
/* 1ECA0 8001E0A0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 1ECA4 8001E0A4 C52800E0 */  lwc1       $f8, 0xe0($t1)
/* 1ECA8 8001E0A8 C52A00D4 */  lwc1       $f10, 0xd4($t1)
/* 1ECAC 8001E0AC C5720000 */  lwc1       $f18, ($t3)
/* 1ECB0 8001E0B0 460A4180 */  add.s      $f6, $f8, $f10
/* 1ECB4 8001E0B4 4606903C */  c.lt.s     $f18, $f6
/* 1ECB8 8001E0B8 00000000 */  nop
/* 1ECBC 8001E0BC 45000006 */  bc1f       .L8001E0D8
/* 1ECC0 8001E0C0 3C01C0A0 */   lui       $at, 0xc0a0
/* 1ECC4 8001E0C4 44818000 */  mtc1       $at, $f16
/* 1ECC8 8001E0C8 240A0008 */  addiu      $t2, $zero, 8
/* 1ECCC 8001E0CC E53000D4 */  swc1       $f16, 0xd4($t1)
/* 1ECD0 8001E0D0 8FAC001C */  lw         $t4, 0x1c($sp)
/* 1ECD4 8001E0D4 AD8A0060 */  sw         $t2, 0x60($t4)
.L8001E0D8:
/* 1ECD8 8001E0D8 8FAD001C */  lw         $t5, 0x1c($sp)
/* 1ECDC 8001E0DC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 1ECE0 8001E0E0 C5A400E8 */  lwc1       $f4, 0xe8($t5)
/* 1ECE4 8001E0E4 C5A800DC */  lwc1       $f8, 0xdc($t5)
/* 1ECE8 8001E0E8 C5C60008 */  lwc1       $f6, 8($t6)
/* 1ECEC 8001E0EC 46082280 */  add.s      $f10, $f4, $f8
/* 1ECF0 8001E0F0 460A303C */  c.lt.s     $f6, $f10
/* 1ECF4 8001E0F4 00000000 */  nop
/* 1ECF8 8001E0F8 45000006 */  bc1f       .L8001E114
/* 1ECFC 8001E0FC 3C01C0A0 */   lui       $at, 0xc0a0
/* 1ED00 8001E100 44819000 */  mtc1       $at, $f18
/* 1ED04 8001E104 24180008 */  addiu      $t8, $zero, 8
/* 1ED08 8001E108 E5B200DC */  swc1       $f18, 0xdc($t5)
/* 1ED0C 8001E10C 8FAF001C */  lw         $t7, 0x1c($sp)
/* 1ED10 8001E110 ADF80060 */  sw         $t8, 0x60($t7)
.L8001E114:
/* 1ED14 8001E114 8FA8001C */  lw         $t0, 0x1c($sp)
/* 1ED18 8001E118 8FB90024 */  lw         $t9, 0x24($sp)
/* 1ED1C 8001E11C C51000E8 */  lwc1       $f16, 0xe8($t0)
/* 1ED20 8001E120 C50400DC */  lwc1       $f4, 0xdc($t0)
/* 1ED24 8001E124 C72A0008 */  lwc1       $f10, 8($t9)
/* 1ED28 8001E128 46048200 */  add.s      $f8, $f16, $f4
/* 1ED2C 8001E12C 460A403C */  c.lt.s     $f8, $f10
/* 1ED30 8001E130 00000000 */  nop
/* 1ED34 8001E134 45000006 */  bc1f       .L8001E150
/* 1ED38 8001E138 3C0140A0 */   lui       $at, 0x40a0
/* 1ED3C 8001E13C 44813000 */  mtc1       $at, $f6
/* 1ED40 8001E140 240B0008 */  addiu      $t3, $zero, 8
/* 1ED44 8001E144 E50600DC */  swc1       $f6, 0xdc($t0)
/* 1ED48 8001E148 8FA9001C */  lw         $t1, 0x1c($sp)
/* 1ED4C 8001E14C AD2B0060 */  sw         $t3, 0x60($t1)
.L8001E150:
/* 1ED50 8001E150 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1ED54 8001E154 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1ED58 8001E158 03E00008 */  jr         $ra
/* 1ED5C 8001E15C 00000000 */   nop

glabel func_8001E160
/* 1ED60 8001E160 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1ED64 8001E164 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1ED68 8001E168 AFA40020 */  sw         $a0, 0x20($sp)
/* 1ED6C 8001E16C 8FB80020 */  lw         $t8, 0x20($sp)
/* 1ED70 8001E170 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1ED74 8001E174 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1ED78 8001E178 0018C880 */  sll        $t9, $t8, 2
/* 1ED7C 8001E17C 0338C823 */  subu       $t9, $t9, $t8
/* 1ED80 8001E180 0019C880 */  sll        $t9, $t9, 2
/* 1ED84 8001E184 0338C823 */  subu       $t9, $t9, $t8
/* 1ED88 8001E188 0019C880 */  sll        $t9, $t9, 2
/* 1ED8C 8001E18C 0338C821 */  addu       $t9, $t9, $t8
/* 1ED90 8001E190 0019C880 */  sll        $t9, $t9, 2
/* 1ED94 8001E194 0338C823 */  subu       $t9, $t9, $t8
/* 1ED98 8001E198 0019C880 */  sll        $t9, $t9, 2
/* 1ED9C 8001E19C 240E1001 */  addiu      $t6, $zero, 0x1001
/* 1EDA0 8001E1A0 01F94021 */  addu       $t0, $t7, $t9
/* 1EDA4 8001E1A4 AD0E0288 */  sw         $t6, 0x288($t0)
/* 1EDA8 8001E1A8 8FAA0020 */  lw         $t2, 0x20($sp)
/* 1EDAC 8001E1AC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 1EDB0 8001E1B0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 1EDB4 8001E1B4 000A5880 */  sll        $t3, $t2, 2
/* 1EDB8 8001E1B8 016A5823 */  subu       $t3, $t3, $t2
/* 1EDBC 8001E1BC 000B5880 */  sll        $t3, $t3, 2
/* 1EDC0 8001E1C0 016A5823 */  subu       $t3, $t3, $t2
/* 1EDC4 8001E1C4 000B5880 */  sll        $t3, $t3, 2
/* 1EDC8 8001E1C8 016A5821 */  addu       $t3, $t3, $t2
/* 1EDCC 8001E1CC 000B5880 */  sll        $t3, $t3, 2
/* 1EDD0 8001E1D0 016A5823 */  subu       $t3, $t3, $t2
/* 1EDD4 8001E1D4 000B5880 */  sll        $t3, $t3, 2
/* 1EDD8 8001E1D8 012B6021 */  addu       $t4, $t1, $t3
/* 1EDDC 8001E1DC 8D8D0014 */  lw         $t5, 0x14($t4)
/* 1EDE0 8001E1E0 05A0002A */  bltz       $t5, .L8001E28C
/* 1EDE4 8001E1E4 00000000 */   nop
/* 1EDE8 8001E1E8 000DC080 */  sll        $t8, $t5, 2
/* 1EDEC 8001E1EC 030DC023 */  subu       $t8, $t8, $t5
/* 1EDF0 8001E1F0 0018C080 */  sll        $t8, $t8, 2
/* 1EDF4 8001E1F4 030DC023 */  subu       $t8, $t8, $t5
/* 1EDF8 8001E1F8 0018C080 */  sll        $t8, $t8, 2
/* 1EDFC 8001E1FC 030DC021 */  addu       $t8, $t8, $t5
/* 1EE00 8001E200 0018C080 */  sll        $t8, $t8, 2
/* 1EE04 8001E204 030DC023 */  subu       $t8, $t8, $t5
/* 1EE08 8001E208 AFAD001C */  sw         $t5, 0x1c($sp)
/* 1EE0C 8001E20C 0018C080 */  sll        $t8, $t8, 2
/* 1EE10 8001E210 01387821 */  addu       $t7, $t1, $t8
/* 1EE14 8001E214 C5E600F0 */  lwc1       $f6, 0xf0($t7)
/* 1EE18 8001E218 C58400F0 */  lwc1       $f4, 0xf0($t4)
/* 1EE1C 8001E21C 3C01800E */  lui        $at, %hi(D_800DC198)
/* 1EE20 8001E220 D430C198 */  ldc1       $f16, %lo(D_800DC198)($at)
/* 1EE24 8001E224 46062201 */  sub.s      $f8, $f4, $f6
/* 1EE28 8001E228 460042A1 */  cvt.d.s    $f10, $f8
/* 1EE2C 8001E22C 46305481 */  sub.d      $f18, $f10, $f16
/* 1EE30 8001E230 0C00444C */  jal        func_80011130
/* 1EE34 8001E234 46209320 */   cvt.s.d   $f12, $f18
/* 1EE38 8001E238 3C01800E */  lui        $at, %hi(D_800DC1A0)
/* 1EE3C 8001E23C D426C1A0 */  ldc1       $f6, %lo(D_800DC1A0)($at)
/* 1EE40 8001E240 46000121 */  cvt.d.s    $f4, $f0
/* 1EE44 8001E244 8FAE001C */  lw         $t6, 0x1c($sp)
/* 1EE48 8001E248 46262202 */  mul.d      $f8, $f4, $f6
/* 1EE4C 8001E24C 3C198016 */  lui        $t9, 0x8016
/* 1EE50 8001E250 000E4080 */  sll        $t0, $t6, 2
/* 1EE54 8001E254 010E4023 */  subu       $t0, $t0, $t6
/* 1EE58 8001E258 00084080 */  sll        $t0, $t0, 2
/* 1EE5C 8001E25C 010E4023 */  subu       $t0, $t0, $t6
/* 1EE60 8001E260 00084080 */  sll        $t0, $t0, 2
/* 1EE64 8001E264 010E4021 */  addu       $t0, $t0, $t6
/* 1EE68 8001E268 462042A0 */  cvt.s.d    $f10, $f8
/* 1EE6C 8001E26C 8F39FB9C */  lw         $t9, -0x464($t9)
/* 1EE70 8001E270 00084080 */  sll        $t0, $t0, 2
/* 1EE74 8001E274 010E4023 */  subu       $t0, $t0, $t6
/* 1EE78 8001E278 00084080 */  sll        $t0, $t0, 2
/* 1EE7C 8001E27C 03285021 */  addu       $t2, $t9, $t0
/* 1EE80 8001E280 E54A00F4 */  swc1       $f10, 0xf4($t2)
/* 1EE84 8001E284 10000013 */  b          .L8001E2D4
/* 1EE88 8001E288 00000000 */   nop
.L8001E28C:
/* 1EE8C 8001E28C 8FAC0020 */  lw         $t4, 0x20($sp)
/* 1EE90 8001E290 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 1EE94 8001E294 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 1EE98 8001E298 000C6880 */  sll        $t5, $t4, 2
/* 1EE9C 8001E29C 01AC6823 */  subu       $t5, $t5, $t4
/* 1EEA0 8001E2A0 000D6880 */  sll        $t5, $t5, 2
/* 1EEA4 8001E2A4 01AC6823 */  subu       $t5, $t5, $t4
/* 1EEA8 8001E2A8 000D6880 */  sll        $t5, $t5, 2
/* 1EEAC 8001E2AC 01AC6821 */  addu       $t5, $t5, $t4
/* 1EEB0 8001E2B0 000D6880 */  sll        $t5, $t5, 2
/* 1EEB4 8001E2B4 01AC6823 */  subu       $t5, $t5, $t4
/* 1EEB8 8001E2B8 000D6880 */  sll        $t5, $t5, 2
/* 1EEBC 8001E2BC 016D4821 */  addu       $t1, $t3, $t5
/* 1EEC0 8001E2C0 8D38007C */  lw         $t8, 0x7c($t1)
/* 1EEC4 8001E2C4 2B01003C */  slti       $at, $t8, 0x3c
/* 1EEC8 8001E2C8 10200002 */  beqz       $at, .L8001E2D4
/* 1EECC 8001E2CC 00000000 */   nop
/* 1EED0 8001E2D0 AD20007C */  sw         $zero, 0x7c($t1)
.L8001E2D4:
/* 1EED4 8001E2D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1EED8 8001E2D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1EEDC 8001E2DC 03E00008 */  jr         $ra
/* 1EEE0 8001E2E0 00000000 */   nop

glabel func_8001E2E4
/* 1EEE4 8001E2E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1EEE8 8001E2E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EEEC 8001E2EC AFA40020 */  sw         $a0, 0x20($sp)
/* 1EEF0 8001E2F0 8FAF0020 */  lw         $t7, 0x20($sp)
/* 1EEF4 8001E2F4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1EEF8 8001E2F8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1EEFC 8001E2FC 000FC080 */  sll        $t8, $t7, 2
/* 1EF00 8001E300 030FC023 */  subu       $t8, $t8, $t7
/* 1EF04 8001E304 0018C080 */  sll        $t8, $t8, 2
/* 1EF08 8001E308 030FC023 */  subu       $t8, $t8, $t7
/* 1EF0C 8001E30C 0018C080 */  sll        $t8, $t8, 2
/* 1EF10 8001E310 030FC021 */  addu       $t8, $t8, $t7
/* 1EF14 8001E314 0018C080 */  sll        $t8, $t8, 2
/* 1EF18 8001E318 030FC023 */  subu       $t8, $t8, $t7
/* 1EF1C 8001E31C 0018C080 */  sll        $t8, $t8, 2
/* 1EF20 8001E320 01D8C821 */  addu       $t9, $t6, $t8
/* 1EF24 8001E324 8F2800A4 */  lw         $t0, 0xa4($t9)
/* 1EF28 8001E328 05000041 */  bltz       $t0, .L8001E430
/* 1EF2C 8001E32C AFA8001C */   sw        $t0, 0x1c($sp)
/* 1EF30 8001E330 8F290088 */  lw         $t1, 0x88($t9)
/* 1EF34 8001E334 24010003 */  addiu      $at, $zero, 3
/* 1EF38 8001E338 1521003D */  bne        $t1, $at, .L8001E430
/* 1EF3C 8001E33C 00000000 */   nop
/* 1EF40 8001E340 00085080 */  sll        $t2, $t0, 2
/* 1EF44 8001E344 01485023 */  subu       $t2, $t2, $t0
/* 1EF48 8001E348 000A5080 */  sll        $t2, $t2, 2
/* 1EF4C 8001E34C 01485023 */  subu       $t2, $t2, $t0
/* 1EF50 8001E350 000A5080 */  sll        $t2, $t2, 2
/* 1EF54 8001E354 01485021 */  addu       $t2, $t2, $t0
/* 1EF58 8001E358 000A5080 */  sll        $t2, $t2, 2
/* 1EF5C 8001E35C 01485023 */  subu       $t2, $t2, $t0
/* 1EF60 8001E360 000A5080 */  sll        $t2, $t2, 2
/* 1EF64 8001E364 01CA5821 */  addu       $t3, $t6, $t2
/* 1EF68 8001E368 C56600D4 */  lwc1       $f6, 0xd4($t3)
/* 1EF6C 8001E36C C56A00DC */  lwc1       $f10, 0xdc($t3)
/* 1EF70 8001E370 C72400D4 */  lwc1       $f4, 0xd4($t9)
/* 1EF74 8001E374 C72800DC */  lwc1       $f8, 0xdc($t9)
/* 1EF78 8001E378 46062301 */  sub.s      $f12, $f4, $f6
/* 1EF7C 8001E37C 0C00475A */  jal        func_80011D68
/* 1EF80 8001E380 460A4381 */   sub.s     $f14, $f8, $f10
/* 1EF84 8001E384 8FAD0020 */  lw         $t5, 0x20($sp)
/* 1EF88 8001E388 3C014034 */  lui        $at, 0x4034
/* 1EF8C 8001E38C 44813800 */  mtc1       $at, $f7
/* 1EF90 8001E390 000D7880 */  sll        $t7, $t5, 2
/* 1EF94 8001E394 01ED7823 */  subu       $t7, $t7, $t5
/* 1EF98 8001E398 000F7880 */  sll        $t7, $t7, 2
/* 1EF9C 8001E39C 01ED7823 */  subu       $t7, $t7, $t5
/* 1EFA0 8001E3A0 44803000 */  mtc1       $zero, $f6
/* 1EFA4 8001E3A4 000F7880 */  sll        $t7, $t7, 2
/* 1EFA8 8001E3A8 46000121 */  cvt.d.s    $f4, $f0
/* 1EFAC 8001E3AC 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1EFB0 8001E3B0 01ED7821 */  addu       $t7, $t7, $t5
/* 1EFB4 8001E3B4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1EFB8 8001E3B8 000F7880 */  sll        $t7, $t7, 2
/* 1EFBC 8001E3BC 46262202 */  mul.d      $f8, $f4, $f6
/* 1EFC0 8001E3C0 01ED7823 */  subu       $t7, $t7, $t5
/* 1EFC4 8001E3C4 000F7880 */  sll        $t7, $t7, 2
/* 1EFC8 8001E3C8 018FC021 */  addu       $t8, $t4, $t7
/* 1EFCC 8001E3CC C71000AC */  lwc1       $f16, 0xac($t8)
/* 1EFD0 8001E3D0 460084A1 */  cvt.d.s    $f18, $f16
/* 1EFD4 8001E3D4 4628903C */  c.lt.d     $f18, $f8
/* 1EFD8 8001E3D8 00000000 */  nop
/* 1EFDC 8001E3DC 45000004 */  bc1f       .L8001E3F0
/* 1EFE0 8001E3E0 00000000 */   nop
/* 1EFE4 8001E3E4 3C090200 */  lui        $t1, 0x200
/* 1EFE8 8001E3E8 10000020 */  b          .L8001E46C
/* 1EFEC 8001E3EC AF090288 */   sw        $t1, 0x288($t8)
.L8001E3F0:
/* 1EFF0 8001E3F0 8FAA0020 */  lw         $t2, 0x20($sp)
/* 1EFF4 8001E3F4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1EFF8 8001E3F8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1EFFC 8001E3FC 000AC880 */  sll        $t9, $t2, 2
/* 1F000 8001E400 032AC823 */  subu       $t9, $t9, $t2
/* 1F004 8001E404 0019C880 */  sll        $t9, $t9, 2
/* 1F008 8001E408 032AC823 */  subu       $t9, $t9, $t2
/* 1F00C 8001E40C 0019C880 */  sll        $t9, $t9, 2
/* 1F010 8001E410 032AC821 */  addu       $t9, $t9, $t2
/* 1F014 8001E414 0019C880 */  sll        $t9, $t9, 2
/* 1F018 8001E418 032AC823 */  subu       $t9, $t9, $t2
/* 1F01C 8001E41C 0019C880 */  sll        $t9, $t9, 2
/* 1F020 8001E420 3C080100 */  lui        $t0, 0x100
/* 1F024 8001E424 01D95821 */  addu       $t3, $t6, $t9
/* 1F028 8001E428 10000010 */  b          .L8001E46C
/* 1F02C 8001E42C AD680288 */   sw        $t0, 0x288($t3)
.L8001E430:
/* 1F030 8001E430 8FAF0020 */  lw         $t7, 0x20($sp)
/* 1F034 8001E434 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1F038 8001E438 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1F03C 8001E43C 000F4880 */  sll        $t1, $t7, 2
/* 1F040 8001E440 012F4823 */  subu       $t1, $t1, $t7
/* 1F044 8001E444 00094880 */  sll        $t1, $t1, 2
/* 1F048 8001E448 012F4823 */  subu       $t1, $t1, $t7
/* 1F04C 8001E44C 00094880 */  sll        $t1, $t1, 2
/* 1F050 8001E450 012F4821 */  addu       $t1, $t1, $t7
/* 1F054 8001E454 00094880 */  sll        $t1, $t1, 2
/* 1F058 8001E458 012F4823 */  subu       $t1, $t1, $t7
/* 1F05C 8001E45C 00094880 */  sll        $t1, $t1, 2
/* 1F060 8001E460 3C0D0200 */  lui        $t5, 0x200
/* 1F064 8001E464 0189C021 */  addu       $t8, $t4, $t1
/* 1F068 8001E468 AF0D0288 */  sw         $t5, 0x288($t8)
.L8001E46C:
/* 1F06C 8001E46C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F070 8001E470 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F074 8001E474 03E00008 */  jr         $ra
/* 1F078 8001E478 00000000 */   nop

glabel func_8001E47C
/* 1F07C 8001E47C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F080 8001E480 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F084 8001E484 AFA40018 */  sw         $a0, 0x18($sp)
/* 1F088 8001E488 3C0E8018 */  lui        $t6, %hi(D_8017A320)
/* 1F08C 8001E48C 85CEA320 */  lh         $t6, %lo(D_8017A320)($t6)
/* 1F090 8001E490 11C00003 */  beqz       $t6, .L8001E4A0
/* 1F094 8001E494 00000000 */   nop
/* 1F098 8001E498 10000072 */  b          .L8001E664
/* 1F09C 8001E49C 00001025 */   or        $v0, $zero, $zero
.L8001E4A0:
/* 1F0A0 8001E4A0 0C055D30 */  jal        func_801574C0
/* 1F0A4 8001E4A4 8FA40018 */   lw        $a0, 0x18($sp)
/* 1F0A8 8001E4A8 1040006D */  beqz       $v0, .L8001E660
/* 1F0AC 8001E4AC 00000000 */   nop
/* 1F0B0 8001E4B0 8FB80018 */  lw         $t8, 0x18($sp)
/* 1F0B4 8001E4B4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1F0B8 8001E4B8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1F0BC 8001E4BC 0018C880 */  sll        $t9, $t8, 2
/* 1F0C0 8001E4C0 0338C823 */  subu       $t9, $t9, $t8
/* 1F0C4 8001E4C4 0019C880 */  sll        $t9, $t9, 2
/* 1F0C8 8001E4C8 0338C823 */  subu       $t9, $t9, $t8
/* 1F0CC 8001E4CC 0019C880 */  sll        $t9, $t9, 2
/* 1F0D0 8001E4D0 0338C821 */  addu       $t9, $t9, $t8
/* 1F0D4 8001E4D4 0019C880 */  sll        $t9, $t9, 2
/* 1F0D8 8001E4D8 0338C823 */  subu       $t9, $t9, $t8
/* 1F0DC 8001E4DC 0019C880 */  sll        $t9, $t9, 2
/* 1F0E0 8001E4E0 01F94021 */  addu       $t0, $t7, $t9
/* 1F0E4 8001E4E4 8D090058 */  lw         $t1, 0x58($t0)
/* 1F0E8 8001E4E8 312A0002 */  andi       $t2, $t1, 2
/* 1F0EC 8001E4EC 1140005C */  beqz       $t2, .L8001E660
/* 1F0F0 8001E4F0 00000000 */   nop
/* 1F0F4 8001E4F4 C5040294 */  lwc1       $f4, 0x294($t0)
/* 1F0F8 8001E4F8 3C014000 */  lui        $at, 0x4000
/* 1F0FC 8001E4FC 44814800 */  mtc1       $at, $f9
/* 1F100 8001E500 44804000 */  mtc1       $zero, $f8
/* 1F104 8001E504 460021A1 */  cvt.d.s    $f6, $f4
/* 1F108 8001E508 4628303E */  c.le.d     $f6, $f8
/* 1F10C 8001E50C 00000000 */  nop
/* 1F110 8001E510 45000053 */  bc1f       .L8001E660
/* 1F114 8001E514 00000000 */   nop
/* 1F118 8001E518 C50A00D8 */  lwc1       $f10, 0xd8($t0)
/* 1F11C 8001E51C 3C014000 */  lui        $at, 0x4000
/* 1F120 8001E520 44819800 */  mtc1       $at, $f19
/* 1F124 8001E524 44809000 */  mtc1       $zero, $f18
/* 1F128 8001E528 46005421 */  cvt.d.s    $f16, $f10
/* 1F12C 8001E52C 4632803E */  c.le.d     $f16, $f18
/* 1F130 8001E530 00000000 */  nop
/* 1F134 8001E534 4500004A */  bc1f       .L8001E660
/* 1F138 8001E538 00000000 */   nop
/* 1F13C 8001E53C 0C004788 */  jal        func_80011E20
/* 1F140 8001E540 C50C0104 */   lwc1      $f12, 0x104($t0)
/* 1F144 8001E544 3C01800E */  lui        $at, %hi(D_800DC1A8)
/* 1F148 8001E548 D426C1A8 */  ldc1       $f6, %lo(D_800DC1A8)($at)
/* 1F14C 8001E54C 46000121 */  cvt.d.s    $f4, $f0
/* 1F150 8001E550 4626203C */  c.lt.d     $f4, $f6
/* 1F154 8001E554 00000000 */  nop
/* 1F158 8001E558 45000041 */  bc1f       .L8001E660
/* 1F15C 8001E55C 00000000 */   nop
/* 1F160 8001E560 8FAC0018 */  lw         $t4, 0x18($sp)
/* 1F164 8001E564 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 1F168 8001E568 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 1F16C 8001E56C 000C6880 */  sll        $t5, $t4, 2
/* 1F170 8001E570 01AC6823 */  subu       $t5, $t5, $t4
/* 1F174 8001E574 000D6880 */  sll        $t5, $t5, 2
/* 1F178 8001E578 01AC6823 */  subu       $t5, $t5, $t4
/* 1F17C 8001E57C 000D6880 */  sll        $t5, $t5, 2
/* 1F180 8001E580 01AC6821 */  addu       $t5, $t5, $t4
/* 1F184 8001E584 000D6880 */  sll        $t5, $t5, 2
/* 1F188 8001E588 01AC6823 */  subu       $t5, $t5, $t4
/* 1F18C 8001E58C 000D6880 */  sll        $t5, $t5, 2
/* 1F190 8001E590 016D7021 */  addu       $t6, $t3, $t5
/* 1F194 8001E594 0C004788 */  jal        func_80011E20
/* 1F198 8001E598 C5CC0114 */   lwc1      $f12, 0x114($t6)
/* 1F19C 8001E59C 3C01800E */  lui        $at, %hi(D_800DC1B0)
/* 1F1A0 8001E5A0 D42AC1B0 */  ldc1       $f10, %lo(D_800DC1B0)($at)
/* 1F1A4 8001E5A4 46000221 */  cvt.d.s    $f8, $f0
/* 1F1A8 8001E5A8 462A403C */  c.lt.d     $f8, $f10
/* 1F1AC 8001E5AC 00000000 */  nop
/* 1F1B0 8001E5B0 4500002B */  bc1f       .L8001E660
/* 1F1B4 8001E5B4 00000000 */   nop
/* 1F1B8 8001E5B8 8FAF0018 */  lw         $t7, 0x18($sp)
/* 1F1BC 8001E5BC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 1F1C0 8001E5C0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 1F1C4 8001E5C4 000FC880 */  sll        $t9, $t7, 2
/* 1F1C8 8001E5C8 032FC823 */  subu       $t9, $t9, $t7
/* 1F1CC 8001E5CC 0019C880 */  sll        $t9, $t9, 2
/* 1F1D0 8001E5D0 032FC823 */  subu       $t9, $t9, $t7
/* 1F1D4 8001E5D4 0019C880 */  sll        $t9, $t9, 2
/* 1F1D8 8001E5D8 032FC821 */  addu       $t9, $t9, $t7
/* 1F1DC 8001E5DC 0019C880 */  sll        $t9, $t9, 2
/* 1F1E0 8001E5E0 032FC823 */  subu       $t9, $t9, $t7
/* 1F1E4 8001E5E4 0019C880 */  sll        $t9, $t9, 2
/* 1F1E8 8001E5E8 3C01800E */  lui        $at, %hi(D_800DC1B8)
/* 1F1EC 8001E5EC 03194821 */  addu       $t1, $t8, $t9
/* 1F1F0 8001E5F0 C53000E4 */  lwc1       $f16, 0xe4($t1)
/* 1F1F4 8001E5F4 C432C1B8 */  lwc1       $f18, %lo(D_800DC1B8)($at)
/* 1F1F8 8001E5F8 4612803C */  c.lt.s     $f16, $f18
/* 1F1FC 8001E5FC 00000000 */  nop
/* 1F200 8001E600 45000017 */  bc1f       .L8001E660
/* 1F204 8001E604 3C01800E */   lui       $at, %hi(D_800DC1BC)
/* 1F208 8001E608 C424C1BC */  lwc1       $f4, %lo(D_800DC1BC)($at)
/* 1F20C 8001E60C 4610203C */  c.lt.s     $f4, $f16
/* 1F210 8001E610 00000000 */  nop
/* 1F214 8001E614 45000012 */  bc1f       .L8001E660
/* 1F218 8001E618 00000000 */   nop
/* 1F21C 8001E61C 3C088016 */  lui        $t0, %hi(D_8015F464)
/* 1F220 8001E620 3C0B8016 */  lui        $t3, %hi(D_8015F468)
/* 1F224 8001E624 8D6BF468 */  lw         $t3, %lo(D_8015F468)($t3)
/* 1F228 8001E628 8D08F464 */  lw         $t0, %lo(D_8015F464)($t0)
/* 1F22C 8001E62C 3C018016 */  lui        $at, 0x8016
/* 1F230 8001E630 000B6880 */  sll        $t5, $t3, 2
/* 1F234 8001E634 00086100 */  sll        $t4, $t0, 4
/* 1F238 8001E638 01AB6823 */  subu       $t5, $t5, $t3
/* 1F23C 8001E63C 01886023 */  subu       $t4, $t4, $t0
/* 1F240 8001E640 000C60C0 */  sll        $t4, $t4, 3
/* 1F244 8001E644 000D68C0 */  sll        $t5, $t5, 3
/* 1F248 8001E648 018D7021 */  addu       $t6, $t4, $t5
/* 1F24C 8001E64C 002E0821 */  addu       $at, $at, $t6
/* 1F250 8001E650 240A0001 */  addiu      $t2, $zero, 1
/* 1F254 8001E654 AC2A0C8C */  sw         $t2, 0xc8c($at)
/* 1F258 8001E658 10000002 */  b          .L8001E664
/* 1F25C 8001E65C 24020001 */   addiu     $v0, $zero, 1
.L8001E660:
/* 1F260 8001E660 00001025 */  or         $v0, $zero, $zero
.L8001E664:
/* 1F264 8001E664 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F268 8001E668 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F26C 8001E66C 03E00008 */  jr         $ra
/* 1F270 8001E670 00000000 */   nop

glabel func_8001E674
/* 1F274 8001E674 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1F278 8001E678 00047880 */  sll        $t7, $a0, 2
/* 1F27C 8001E67C 01E47823 */  subu       $t7, $t7, $a0
/* 1F280 8001E680 000F7880 */  sll        $t7, $t7, 2
/* 1F284 8001E684 01E47823 */  subu       $t7, $t7, $a0
/* 1F288 8001E688 000F7880 */  sll        $t7, $t7, 2
/* 1F28C 8001E68C 00044080 */  sll        $t0, $a0, 2
/* 1F290 8001E690 01E47821 */  addu       $t7, $t7, $a0
/* 1F294 8001E694 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1F298 8001E698 01044023 */  subu       $t0, $t0, $a0
/* 1F29C 8001E69C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1F2A0 8001E6A0 000F7880 */  sll        $t7, $t7, 2
/* 1F2A4 8001E6A4 00084080 */  sll        $t0, $t0, 2
/* 1F2A8 8001E6A8 01E47823 */  subu       $t7, $t7, $a0
/* 1F2AC 8001E6AC 01044023 */  subu       $t0, $t0, $a0
/* 1F2B0 8001E6B0 000F7880 */  sll        $t7, $t7, 2
/* 1F2B4 8001E6B4 00084080 */  sll        $t0, $t0, 2
/* 1F2B8 8001E6B8 01044021 */  addu       $t0, $t0, $a0
/* 1F2BC 8001E6BC 01CFC021 */  addu       $t8, $t6, $t7
/* 1F2C0 8001E6C0 8F1900A4 */  lw         $t9, 0xa4($t8)
/* 1F2C4 8001E6C4 00084080 */  sll        $t0, $t0, 2
/* 1F2C8 8001E6C8 01044023 */  subu       $t0, $t0, $a0
/* 1F2CC 8001E6CC 00084080 */  sll        $t0, $t0, 2
/* 1F2D0 8001E6D0 01C84821 */  addu       $t1, $t6, $t0
/* 1F2D4 8001E6D4 AFB90004 */  sw         $t9, 4($sp)
/* 1F2D8 8001E6D8 8D2A0074 */  lw         $t2, 0x74($t1)
/* 1F2DC 8001E6DC 3C0C800D */  lui        $t4, %hi(D_800D72F0)
/* 1F2E0 8001E6E0 000A5900 */  sll        $t3, $t2, 4
/* 1F2E4 8001E6E4 016A5823 */  subu       $t3, $t3, $t2
/* 1F2E8 8001E6E8 000B5880 */  sll        $t3, $t3, 2
/* 1F2EC 8001E6EC 018B6021 */  addu       $t4, $t4, $t3
/* 1F2F0 8001E6F0 8D8C72F0 */  lw         $t4, %lo(D_800D72F0)($t4)
/* 1F2F4 8001E6F4 318D0001 */  andi       $t5, $t4, 1
/* 1F2F8 8001E6F8 15A00003 */  bnez       $t5, .L8001E708
/* 1F2FC 8001E6FC 2401FFFF */   addiu     $at, $zero, -1
/* 1F300 8001E700 17210003 */  bne        $t9, $at, .L8001E710
/* 1F304 8001E704 00000000 */   nop
.L8001E708:
/* 1F308 8001E708 10000045 */  b          .L8001E820
/* 1F30C 8001E70C 00001025 */   or        $v0, $zero, $zero
.L8001E710:
/* 1F310 8001E710 8FB80004 */  lw         $t8, 4($sp)
/* 1F314 8001E714 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1F318 8001E718 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1F31C 8001E71C 00187080 */  sll        $t6, $t8, 2
/* 1F320 8001E720 01D87023 */  subu       $t6, $t6, $t8
/* 1F324 8001E724 000E7080 */  sll        $t6, $t6, 2
/* 1F328 8001E728 01D87023 */  subu       $t6, $t6, $t8
/* 1F32C 8001E72C 000E7080 */  sll        $t6, $t6, 2
/* 1F330 8001E730 01D87021 */  addu       $t6, $t6, $t8
/* 1F334 8001E734 000E7080 */  sll        $t6, $t6, 2
/* 1F338 8001E738 01D87023 */  subu       $t6, $t6, $t8
/* 1F33C 8001E73C 000E7080 */  sll        $t6, $t6, 2
/* 1F340 8001E740 01EE4021 */  addu       $t0, $t7, $t6
/* 1F344 8001E744 8D090268 */  lw         $t1, 0x268($t0)
/* 1F348 8001E748 24010001 */  addiu      $at, $zero, 1
/* 1F34C 8001E74C 11210016 */  beq        $t1, $at, .L8001E7A8
/* 1F350 8001E750 00000000 */   nop
/* 1F354 8001E754 00045080 */  sll        $t2, $a0, 2
/* 1F358 8001E758 01445023 */  subu       $t2, $t2, $a0
/* 1F35C 8001E75C 000A5080 */  sll        $t2, $t2, 2
/* 1F360 8001E760 01445023 */  subu       $t2, $t2, $a0
/* 1F364 8001E764 000A5080 */  sll        $t2, $t2, 2
/* 1F368 8001E768 01445021 */  addu       $t2, $t2, $a0
/* 1F36C 8001E76C 000A5080 */  sll        $t2, $t2, 2
/* 1F370 8001E770 01445023 */  subu       $t2, $t2, $a0
/* 1F374 8001E774 000A5080 */  sll        $t2, $t2, 2
/* 1F378 8001E778 01EA5821 */  addu       $t3, $t7, $t2
/* 1F37C 8001E77C C56600E4 */  lwc1       $f6, 0xe4($t3)
/* 1F380 8001E780 C50400E4 */  lwc1       $f4, 0xe4($t0)
/* 1F384 8001E784 3C014069 */  lui        $at, 0x4069
/* 1F388 8001E788 44818800 */  mtc1       $at, $f17
/* 1F38C 8001E78C 46062201 */  sub.s      $f8, $f4, $f6
/* 1F390 8001E790 44808000 */  mtc1       $zero, $f16
/* 1F394 8001E794 460042A1 */  cvt.d.s    $f10, $f8
/* 1F398 8001E798 462A803C */  c.lt.d     $f16, $f10
/* 1F39C 8001E79C 00000000 */  nop
/* 1F3A0 8001E7A0 4500001E */  bc1f       .L8001E81C
/* 1F3A4 8001E7A4 00000000 */   nop
.L8001E7A8:
/* 1F3A8 8001E7A8 00046880 */  sll        $t5, $a0, 2
/* 1F3AC 8001E7AC 01A46823 */  subu       $t5, $t5, $a0
/* 1F3B0 8001E7B0 000D6880 */  sll        $t5, $t5, 2
/* 1F3B4 8001E7B4 01A46823 */  subu       $t5, $t5, $a0
/* 1F3B8 8001E7B8 000D6880 */  sll        $t5, $t5, 2
/* 1F3BC 8001E7BC 01A46821 */  addu       $t5, $t5, $a0
/* 1F3C0 8001E7C0 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1F3C4 8001E7C4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1F3C8 8001E7C8 000D6880 */  sll        $t5, $t5, 2
/* 1F3CC 8001E7CC 01A46823 */  subu       $t5, $t5, $a0
/* 1F3D0 8001E7D0 000D6880 */  sll        $t5, $t5, 2
/* 1F3D4 8001E7D4 018DC821 */  addu       $t9, $t4, $t5
/* 1F3D8 8001E7D8 8F380268 */  lw         $t8, 0x268($t9)
/* 1F3DC 8001E7DC 1700000F */  bnez       $t8, .L8001E81C
/* 1F3E0 8001E7E0 00000000 */   nop
/* 1F3E4 8001E7E4 00044880 */  sll        $t1, $a0, 2
/* 1F3E8 8001E7E8 01244823 */  subu       $t1, $t1, $a0
/* 1F3EC 8001E7EC 00094880 */  sll        $t1, $t1, 2
/* 1F3F0 8001E7F0 01244823 */  subu       $t1, $t1, $a0
/* 1F3F4 8001E7F4 00094880 */  sll        $t1, $t1, 2
/* 1F3F8 8001E7F8 01244821 */  addu       $t1, $t1, $a0
/* 1F3FC 8001E7FC 00094880 */  sll        $t1, $t1, 2
/* 1F400 8001E800 01244823 */  subu       $t1, $t1, $a0
/* 1F404 8001E804 00094880 */  sll        $t1, $t1, 2
/* 1F408 8001E808 01894021 */  addu       $t0, $t4, $t1
/* 1F40C 8001E80C 3C0E0001 */  lui        $t6, 1
/* 1F410 8001E810 AD0E0288 */  sw         $t6, 0x288($t0)
/* 1F414 8001E814 10000002 */  b          .L8001E820
/* 1F418 8001E818 24020001 */   addiu     $v0, $zero, 1
.L8001E81C:
/* 1F41C 8001E81C 00001025 */  or         $v0, $zero, $zero
.L8001E820:
/* 1F420 8001E820 03E00008 */  jr         $ra
/* 1F424 8001E824 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8001E828
/* 1F428 8001E828 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F42C 8001E82C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F430 8001E830 AFA40028 */  sw         $a0, 0x28($sp)
/* 1F434 8001E834 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1F438 8001E838 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1F43C 8001E83C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1F440 8001E840 000FC080 */  sll        $t8, $t7, 2
/* 1F444 8001E844 030FC023 */  subu       $t8, $t8, $t7
/* 1F448 8001E848 0018C080 */  sll        $t8, $t8, 2
/* 1F44C 8001E84C 030FC023 */  subu       $t8, $t8, $t7
/* 1F450 8001E850 0018C080 */  sll        $t8, $t8, 2
/* 1F454 8001E854 030FC021 */  addu       $t8, $t8, $t7
/* 1F458 8001E858 0018C080 */  sll        $t8, $t8, 2
/* 1F45C 8001E85C 030FC023 */  subu       $t8, $t8, $t7
/* 1F460 8001E860 0018C080 */  sll        $t8, $t8, 2
/* 1F464 8001E864 01D8C821 */  addu       $t9, $t6, $t8
/* 1F468 8001E868 8F2800A4 */  lw         $t0, 0xa4($t9)
/* 1F46C 8001E86C 01E02025 */  or         $a0, $t7, $zero
/* 1F470 8001E870 0C055418 */  jal        func_80155060
/* 1F474 8001E874 AFA80024 */   sw        $t0, 0x24($sp)
/* 1F478 8001E878 8FAA0028 */  lw         $t2, 0x28($sp)
/* 1F47C 8001E87C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 1F480 8001E880 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 1F484 8001E884 000A5880 */  sll        $t3, $t2, 2
/* 1F488 8001E888 016A5823 */  subu       $t3, $t3, $t2
/* 1F48C 8001E88C 000B5880 */  sll        $t3, $t3, 2
/* 1F490 8001E890 016A5823 */  subu       $t3, $t3, $t2
/* 1F494 8001E894 000B5880 */  sll        $t3, $t3, 2
/* 1F498 8001E898 016A5821 */  addu       $t3, $t3, $t2
/* 1F49C 8001E89C 000B5880 */  sll        $t3, $t3, 2
/* 1F4A0 8001E8A0 016A5823 */  subu       $t3, $t3, $t2
/* 1F4A4 8001E8A4 000B5880 */  sll        $t3, $t3, 2
/* 1F4A8 8001E8A8 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1F4AC 8001E8AC 012B6021 */  addu       $t4, $t1, $t3
/* 1F4B0 8001E8B0 8D8D0074 */  lw         $t5, 0x74($t4)
/* 1F4B4 8001E8B4 3C18800D */  lui        $t8, %hi(D_800D72F0)
/* 1F4B8 8001E8B8 000D7100 */  sll        $t6, $t5, 4
/* 1F4BC 8001E8BC 01CD7023 */  subu       $t6, $t6, $t5
/* 1F4C0 8001E8C0 000E7080 */  sll        $t6, $t6, 2
/* 1F4C4 8001E8C4 030EC021 */  addu       $t8, $t8, $t6
/* 1F4C8 8001E8C8 8F1872F0 */  lw         $t8, %lo(D_800D72F0)($t8)
/* 1F4CC 8001E8CC 33190001 */  andi       $t9, $t8, 1
/* 1F4D0 8001E8D0 17200005 */  bnez       $t9, .L8001E8E8
/* 1F4D4 8001E8D4 00000000 */   nop
/* 1F4D8 8001E8D8 8D880088 */  lw         $t0, 0x88($t4)
/* 1F4DC 8001E8DC 24010003 */  addiu      $at, $zero, 3
/* 1F4E0 8001E8E0 11010003 */  beq        $t0, $at, .L8001E8F0
/* 1F4E4 8001E8E4 00000000 */   nop
.L8001E8E8:
/* 1F4E8 8001E8E8 1000003E */  b          .L8001E9E4
/* 1F4EC 8001E8EC 00001025 */   or        $v0, $zero, $zero
.L8001E8F0:
/* 1F4F0 8001E8F0 8FAA0024 */  lw         $t2, 0x24($sp)
/* 1F4F4 8001E8F4 8FAD0028 */  lw         $t5, 0x28($sp)
/* 1F4F8 8001E8F8 3C0F8016 */  lui        $t7, 0x8016
/* 1F4FC 8001E8FC 000A4880 */  sll        $t1, $t2, 2
/* 1F500 8001E900 000D7080 */  sll        $t6, $t5, 2
/* 1F504 8001E904 012A4823 */  subu       $t1, $t1, $t2
/* 1F508 8001E908 01CD7023 */  subu       $t6, $t6, $t5
/* 1F50C 8001E90C 000E7080 */  sll        $t6, $t6, 2
/* 1F510 8001E910 00094880 */  sll        $t1, $t1, 2
/* 1F514 8001E914 012A4823 */  subu       $t1, $t1, $t2
/* 1F518 8001E918 01CD7023 */  subu       $t6, $t6, $t5
/* 1F51C 8001E91C 000E7080 */  sll        $t6, $t6, 2
/* 1F520 8001E920 00094880 */  sll        $t1, $t1, 2
/* 1F524 8001E924 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1F528 8001E928 012A4821 */  addu       $t1, $t1, $t2
/* 1F52C 8001E92C 01CD7021 */  addu       $t6, $t6, $t5
/* 1F530 8001E930 000E7080 */  sll        $t6, $t6, 2
/* 1F534 8001E934 00094880 */  sll        $t1, $t1, 2
/* 1F538 8001E938 012A4823 */  subu       $t1, $t1, $t2
/* 1F53C 8001E93C 01CD7023 */  subu       $t6, $t6, $t5
/* 1F540 8001E940 000E7080 */  sll        $t6, $t6, 2
/* 1F544 8001E944 00094880 */  sll        $t1, $t1, 2
/* 1F548 8001E948 01E95821 */  addu       $t3, $t7, $t1
/* 1F54C 8001E94C 01EEC021 */  addu       $t8, $t7, $t6
/* 1F550 8001E950 C70600E4 */  lwc1       $f6, 0xe4($t8)
/* 1F554 8001E954 C56400E4 */  lwc1       $f4, 0xe4($t3)
/* 1F558 8001E958 46062201 */  sub.s      $f8, $f4, $f6
/* 1F55C 8001E95C E7A80020 */  swc1       $f8, 0x20($sp)
/* 1F560 8001E960 8D790268 */  lw         $t9, 0x268($t3)
/* 1F564 8001E964 1720001E */  bnez       $t9, .L8001E9E0
/* 1F568 8001E968 3C01C049 */   lui       $at, 0xc049
/* 1F56C 8001E96C 44818800 */  mtc1       $at, $f17
/* 1F570 8001E970 44808000 */  mtc1       $zero, $f16
/* 1F574 8001E974 460042A1 */  cvt.d.s    $f10, $f8
/* 1F578 8001E978 4630503C */  c.lt.d     $f10, $f16
/* 1F57C 8001E97C 00000000 */  nop
/* 1F580 8001E980 45000017 */  bc1f       .L8001E9E0
/* 1F584 8001E984 3C01C069 */   lui       $at, 0xc069
/* 1F588 8001E988 44819800 */  mtc1       $at, $f19
/* 1F58C 8001E98C 44809000 */  mtc1       $zero, $f18
/* 1F590 8001E990 00000000 */  nop
/* 1F594 8001E994 462A903C */  c.lt.d     $f18, $f10
/* 1F598 8001E998 00000000 */  nop
/* 1F59C 8001E99C 45000010 */  bc1f       .L8001E9E0
/* 1F5A0 8001E9A0 00000000 */   nop
/* 1F5A4 8001E9A4 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 1F5A8 8001E9A8 3C014069 */  lui        $at, 0x4069
/* 1F5AC 8001E9AC 44814800 */  mtc1       $at, $f9
/* 1F5B0 8001E9B0 44804000 */  mtc1       $zero, $f8
/* 1F5B4 8001E9B4 460021A1 */  cvt.d.s    $f6, $f4
/* 1F5B8 8001E9B8 4628303C */  c.lt.d     $f6, $f8
/* 1F5BC 8001E9BC 00000000 */  nop
/* 1F5C0 8001E9C0 45000007 */  bc1f       .L8001E9E0
/* 1F5C4 8001E9C4 00000000 */   nop
/* 1F5C8 8001E9C8 8F0C0268 */  lw         $t4, 0x268($t8)
/* 1F5CC 8001E9CC 24010001 */  addiu      $at, $zero, 1
/* 1F5D0 8001E9D0 15810003 */  bne        $t4, $at, .L8001E9E0
/* 1F5D4 8001E9D4 00000000 */   nop
/* 1F5D8 8001E9D8 10000002 */  b          .L8001E9E4
/* 1F5DC 8001E9DC 24020001 */   addiu     $v0, $zero, 1
.L8001E9E0:
/* 1F5E0 8001E9E0 00001025 */  or         $v0, $zero, $zero
.L8001E9E4:
/* 1F5E4 8001E9E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F5E8 8001E9E8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1F5EC 8001E9EC 03E00008 */  jr         $ra
/* 1F5F0 8001E9F0 00000000 */   nop

glabel func_8001E9F4
/* 1F5F4 8001E9F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F5F8 8001E9F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F5FC 8001E9FC AFA40020 */  sw         $a0, 0x20($sp)
/* 1F600 8001EA00 240E0001 */  addiu      $t6, $zero, 1
/* 1F604 8001EA04 AFAE001C */  sw         $t6, 0x1c($sp)
/* 1F608 8001EA08 0C02C4FB */  jal        func_800B13EC
/* 1F60C 8001EA0C 24040014 */   addiu     $a0, $zero, 0x14
/* 1F610 8001EA10 244FFFFB */  addiu      $t7, $v0, -5
/* 1F614 8001EA14 2DE1000A */  sltiu      $at, $t7, 0xa
/* 1F618 8001EA18 1020002E */  beqz       $at, .L8001EAD4
/* 1F61C 8001EA1C 00000000 */   nop
/* 1F620 8001EA20 000F7880 */  sll        $t7, $t7, 2
/* 1F624 8001EA24 3C01800E */  lui        $at, %hi(D_800DC1C0)
/* 1F628 8001EA28 002F0821 */  addu       $at, $at, $t7
/* 1F62C 8001EA2C 8C2FC1C0 */  lw         $t7, %lo(D_800DC1C0)($at)
/* 1F630 8001EA30 01E00008 */  jr         $t7
/* 1F634 8001EA34 00000000 */   nop
/* 1F638 8001EA38 8FB8001C */  lw         $t8, 0x1c($sp)
/* 1F63C 8001EA3C 37190002 */  ori        $t9, $t8, 2
/* 1F640 8001EA40 10000024 */  b          .L8001EAD4
/* 1F644 8001EA44 AFB9001C */   sw        $t9, 0x1c($sp)
/* 1F648 8001EA48 8FA8001C */  lw         $t0, 0x1c($sp)
/* 1F64C 8001EA4C 35090004 */  ori        $t1, $t0, 4
/* 1F650 8001EA50 10000020 */  b          .L8001EAD4
/* 1F654 8001EA54 AFA9001C */   sw        $t1, 0x1c($sp)
/* 1F658 8001EA58 8FAA001C */  lw         $t2, 0x1c($sp)
/* 1F65C 8001EA5C 354B0008 */  ori        $t3, $t2, 8
/* 1F660 8001EA60 1000001C */  b          .L8001EAD4
/* 1F664 8001EA64 AFAB001C */   sw        $t3, 0x1c($sp)
/* 1F668 8001EA68 8FAC001C */  lw         $t4, 0x1c($sp)
/* 1F66C 8001EA6C 358D0010 */  ori        $t5, $t4, 0x10
/* 1F670 8001EA70 10000018 */  b          .L8001EAD4
/* 1F674 8001EA74 AFAD001C */   sw        $t5, 0x1c($sp)
/* 1F678 8001EA78 8FAE001C */  lw         $t6, 0x1c($sp)
/* 1F67C 8001EA7C 35CF0020 */  ori        $t7, $t6, 0x20
/* 1F680 8001EA80 10000014 */  b          .L8001EAD4
/* 1F684 8001EA84 AFAF001C */   sw        $t7, 0x1c($sp)
/* 1F688 8001EA88 8FB8001C */  lw         $t8, 0x1c($sp)
/* 1F68C 8001EA8C 37190040 */  ori        $t9, $t8, 0x40
/* 1F690 8001EA90 10000010 */  b          .L8001EAD4
/* 1F694 8001EA94 AFB9001C */   sw        $t9, 0x1c($sp)
/* 1F698 8001EA98 8FA8001C */  lw         $t0, 0x1c($sp)
/* 1F69C 8001EA9C 35090080 */  ori        $t1, $t0, 0x80
/* 1F6A0 8001EAA0 1000000C */  b          .L8001EAD4
/* 1F6A4 8001EAA4 AFA9001C */   sw        $t1, 0x1c($sp)
/* 1F6A8 8001EAA8 8FAA001C */  lw         $t2, 0x1c($sp)
/* 1F6AC 8001EAAC 354B0100 */  ori        $t3, $t2, 0x100
/* 1F6B0 8001EAB0 10000008 */  b          .L8001EAD4
/* 1F6B4 8001EAB4 AFAB001C */   sw        $t3, 0x1c($sp)
/* 1F6B8 8001EAB8 8FAC001C */  lw         $t4, 0x1c($sp)
/* 1F6BC 8001EABC 358D0200 */  ori        $t5, $t4, 0x200
/* 1F6C0 8001EAC0 10000004 */  b          .L8001EAD4
/* 1F6C4 8001EAC4 AFAD001C */   sw        $t5, 0x1c($sp)
/* 1F6C8 8001EAC8 8FAE001C */  lw         $t6, 0x1c($sp)
/* 1F6CC 8001EACC 35CF0400 */  ori        $t7, $t6, 0x400
/* 1F6D0 8001EAD0 AFAF001C */  sw         $t7, 0x1c($sp)
.L8001EAD4:
/* 1F6D4 8001EAD4 8FB90020 */  lw         $t9, 0x20($sp)
/* 1F6D8 8001EAD8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 1F6DC 8001EADC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 1F6E0 8001EAE0 00194080 */  sll        $t0, $t9, 2
/* 1F6E4 8001EAE4 01194023 */  subu       $t0, $t0, $t9
/* 1F6E8 8001EAE8 00084080 */  sll        $t0, $t0, 2
/* 1F6EC 8001EAEC 01194023 */  subu       $t0, $t0, $t9
/* 1F6F0 8001EAF0 00084080 */  sll        $t0, $t0, 2
/* 1F6F4 8001EAF4 01194021 */  addu       $t0, $t0, $t9
/* 1F6F8 8001EAF8 00084080 */  sll        $t0, $t0, 2
/* 1F6FC 8001EAFC 01194023 */  subu       $t0, $t0, $t9
/* 1F700 8001EB00 00084080 */  sll        $t0, $t0, 2
/* 1F704 8001EB04 03084821 */  addu       $t1, $t8, $t0
/* 1F708 8001EB08 8D2A0288 */  lw         $t2, 0x288($t1)
/* 1F70C 8001EB0C 8FAB001C */  lw         $t3, 0x1c($sp)
/* 1F710 8001EB10 014B6025 */  or         $t4, $t2, $t3
/* 1F714 8001EB14 AD2C0288 */  sw         $t4, 0x288($t1)
/* 1F718 8001EB18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F71C 8001EB1C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F720 8001EB20 03E00008 */  jr         $ra
/* 1F724 8001EB24 00000000 */   nop

glabel func_8001EB28
/* 1F728 8001EB28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F72C 8001EB2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F730 8001EB30 AFA40028 */  sw         $a0, 0x28($sp)
/* 1F734 8001EB34 0C02C4FB */  jal        func_800B13EC
/* 1F738 8001EB38 24040014 */   addiu     $a0, $zero, 0x14
/* 1F73C 8001EB3C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1F740 8001EB40 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 1F744 8001EB44 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 1F748 8001EB48 000FC080 */  sll        $t8, $t7, 2
/* 1F74C 8001EB4C 030FC023 */  subu       $t8, $t8, $t7
/* 1F750 8001EB50 0018C080 */  sll        $t8, $t8, 2
/* 1F754 8001EB54 030FC023 */  subu       $t8, $t8, $t7
/* 1F758 8001EB58 0018C080 */  sll        $t8, $t8, 2
/* 1F75C 8001EB5C 030FC021 */  addu       $t8, $t8, $t7
/* 1F760 8001EB60 0018C080 */  sll        $t8, $t8, 2
/* 1F764 8001EB64 030FC023 */  subu       $t8, $t8, $t7
/* 1F768 8001EB68 0018C080 */  sll        $t8, $t8, 2
/* 1F76C 8001EB6C AFA20018 */  sw         $v0, 0x18($sp)
/* 1F770 8001EB70 01D8C821 */  addu       $t9, $t6, $t8
/* 1F774 8001EB74 8F2800A4 */  lw         $t0, 0xa4($t9)
/* 1F778 8001EB78 2401000C */  addiu      $at, $zero, 0xc
/* 1F77C 8001EB7C 00084880 */  sll        $t1, $t0, 2
/* 1F780 8001EB80 01284823 */  subu       $t1, $t1, $t0
/* 1F784 8001EB84 00094880 */  sll        $t1, $t1, 2
/* 1F788 8001EB88 01284823 */  subu       $t1, $t1, $t0
/* 1F78C 8001EB8C 00094880 */  sll        $t1, $t1, 2
/* 1F790 8001EB90 01284821 */  addu       $t1, $t1, $t0
/* 1F794 8001EB94 00094880 */  sll        $t1, $t1, 2
/* 1F798 8001EB98 01284823 */  subu       $t1, $t1, $t0
/* 1F79C 8001EB9C 00094880 */  sll        $t1, $t1, 2
/* 1F7A0 8001EBA0 01C95021 */  addu       $t2, $t6, $t1
/* 1F7A4 8001EBA4 8D4B0274 */  lw         $t3, 0x274($t2)
/* 1F7A8 8001EBA8 AFAB0020 */  sw         $t3, 0x20($sp)
/* 1F7AC 8001EBAC 8F2C00A4 */  lw         $t4, 0xa4($t9)
/* 1F7B0 8001EBB0 000C6880 */  sll        $t5, $t4, 2
/* 1F7B4 8001EBB4 01AC6823 */  subu       $t5, $t5, $t4
/* 1F7B8 8001EBB8 000D6880 */  sll        $t5, $t5, 2
/* 1F7BC 8001EBBC 01AC6823 */  subu       $t5, $t5, $t4
/* 1F7C0 8001EBC0 000D6880 */  sll        $t5, $t5, 2
/* 1F7C4 8001EBC4 01AC6821 */  addu       $t5, $t5, $t4
/* 1F7C8 8001EBC8 000D6880 */  sll        $t5, $t5, 2
/* 1F7CC 8001EBCC 01AC6823 */  subu       $t5, $t5, $t4
/* 1F7D0 8001EBD0 000D6880 */  sll        $t5, $t5, 2
/* 1F7D4 8001EBD4 01CD7821 */  addu       $t7, $t6, $t5
/* 1F7D8 8001EBD8 8DF80278 */  lw         $t8, 0x278($t7)
/* 1F7DC 8001EBDC 13010010 */  beq        $t8, $at, .L8001EC20
/* 1F7E0 8001EBE0 AFB8001C */   sw        $t8, 0x1c($sp)
/* 1F7E4 8001EBE4 2401000B */  addiu      $at, $zero, 0xb
/* 1F7E8 8001EBE8 1301000D */  beq        $t8, $at, .L8001EC20
/* 1F7EC 8001EBEC 24010027 */   addiu     $at, $zero, 0x27
/* 1F7F0 8001EBF0 1301000B */  beq        $t8, $at, .L8001EC20
/* 1F7F4 8001EBF4 24010030 */   addiu     $at, $zero, 0x30
/* 1F7F8 8001EBF8 13010009 */  beq        $t8, $at, .L8001EC20
/* 1F7FC 8001EBFC 24010034 */   addiu     $at, $zero, 0x34
/* 1F800 8001EC00 13010007 */  beq        $t8, $at, .L8001EC20
/* 1F804 8001EC04 2401010E */   addiu     $at, $zero, 0x10e
/* 1F808 8001EC08 13010005 */  beq        $t8, $at, .L8001EC20
/* 1F80C 8001EC0C 24010016 */   addiu     $at, $zero, 0x16
/* 1F810 8001EC10 11610003 */  beq        $t3, $at, .L8001EC20
/* 1F814 8001EC14 24010015 */   addiu     $at, $zero, 0x15
/* 1F818 8001EC18 15610019 */  bne        $t3, $at, .L8001EC80
/* 1F81C 8001EC1C 00000000 */   nop
.L8001EC20:
/* 1F820 8001EC20 8FA80018 */  lw         $t0, 0x18($sp)
/* 1F824 8001EC24 2901000B */  slti       $at, $t0, 0xb
/* 1F828 8001EC28 14200015 */  bnez       $at, .L8001EC80
/* 1F82C 8001EC2C 00000000 */   nop
/* 1F830 8001EC30 3C0A8016 */  lui        $t2, %hi(D_8015FB88)
/* 1F834 8001EC34 8D4AFB88 */  lw         $t2, %lo(D_8015FB88)($t2)
/* 1F838 8001EC38 8FA90028 */  lw         $t1, 0x28($sp)
/* 1F83C 8001EC3C 152A0010 */  bne        $t1, $t2, .L8001EC80
/* 1F840 8001EC40 00000000 */   nop
/* 1F844 8001EC44 00097080 */  sll        $t6, $t1, 2
/* 1F848 8001EC48 01C97023 */  subu       $t6, $t6, $t1
/* 1F84C 8001EC4C 000E7080 */  sll        $t6, $t6, 2
/* 1F850 8001EC50 01C97023 */  subu       $t6, $t6, $t1
/* 1F854 8001EC54 000E7080 */  sll        $t6, $t6, 2
/* 1F858 8001EC58 01C97021 */  addu       $t6, $t6, $t1
/* 1F85C 8001EC5C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1F860 8001EC60 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1F864 8001EC64 000E7080 */  sll        $t6, $t6, 2
/* 1F868 8001EC68 01C97023 */  subu       $t6, $t6, $t1
/* 1F86C 8001EC6C 000E7080 */  sll        $t6, $t6, 2
/* 1F870 8001EC70 24190801 */  addiu      $t9, $zero, 0x801
/* 1F874 8001EC74 018E6821 */  addu       $t5, $t4, $t6
/* 1F878 8001EC78 10000003 */  b          .L8001EC88
/* 1F87C 8001EC7C ADB90288 */   sw        $t9, 0x288($t5)
.L8001EC80:
/* 1F880 8001EC80 0C007A7D */  jal        func_8001E9F4
/* 1F884 8001EC84 8FA40028 */   lw        $a0, 0x28($sp)
.L8001EC88:
/* 1F888 8001EC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F88C 8001EC8C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1F890 8001EC90 03E00008 */  jr         $ra
/* 1F894 8001EC94 00000000 */   nop

glabel func_8001EC98
/* 1F898 8001EC98 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1F89C 8001EC9C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1F8A0 8001ECA0 AFA40048 */  sw         $a0, 0x48($sp)
/* 1F8A4 8001ECA4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1F8A8 8001ECA8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1F8AC 8001ECAC 8FB80048 */  lw         $t8, 0x48($sp)
/* 1F8B0 8001ECB0 3C01800E */  lui        $at, 0x800e
/* 1F8B4 8001ECB4 3C0F8016 */  lui        $t7, 0x8016
/* 1F8B8 8001ECB8 0018C880 */  sll        $t9, $t8, 2
/* 1F8BC 8001ECBC 0338C823 */  subu       $t9, $t9, $t8
/* 1F8C0 8001ECC0 0019C880 */  sll        $t9, $t9, 2
/* 1F8C4 8001ECC4 0338C823 */  subu       $t9, $t9, $t8
/* 1F8C8 8001ECC8 0019C880 */  sll        $t9, $t9, 2
/* 1F8CC 8001ECCC 0338C821 */  addu       $t9, $t9, $t8
/* 1F8D0 8001ECD0 C424C1E8 */  lwc1       $f4, -0x3e18($at)
/* 1F8D4 8001ECD4 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1F8D8 8001ECD8 0019C880 */  sll        $t9, $t9, 2
/* 1F8DC 8001ECDC 0338C823 */  subu       $t9, $t9, $t8
/* 1F8E0 8001ECE0 240EFFFF */  addiu      $t6, $zero, -1
/* 1F8E4 8001ECE4 0019C880 */  sll        $t9, $t9, 2
/* 1F8E8 8001ECE8 AFAE0038 */  sw         $t6, 0x38($sp)
/* 1F8EC 8001ECEC E7A40040 */  swc1       $f4, 0x40($sp)
/* 1F8F0 8001ECF0 01F94021 */  addu       $t0, $t7, $t9
/* 1F8F4 8001ECF4 C50600AC */  lwc1       $f6, 0xac($t0)
/* 1F8F8 8001ECF8 3C0B800D */  lui        $t3, 0x800d
/* 1F8FC 8001ECFC E7A60030 */  swc1       $f6, 0x30($sp)
/* 1F900 8001ED00 8D090074 */  lw         $t1, 0x74($t0)
/* 1F904 8001ED04 00095100 */  sll        $t2, $t1, 4
/* 1F908 8001ED08 01495023 */  subu       $t2, $t2, $t1
/* 1F90C 8001ED0C 000A5080 */  sll        $t2, $t2, 2
/* 1F910 8001ED10 016A5821 */  addu       $t3, $t3, $t2
/* 1F914 8001ED14 8D6B72F0 */  lw         $t3, 0x72f0($t3)
/* 1F918 8001ED18 316C0002 */  andi       $t4, $t3, 2
/* 1F91C 8001ED1C 11800003 */  beqz       $t4, .L8001ED2C
/* 1F920 8001ED20 00000000 */   nop
/* 1F924 8001ED24 100000DD */  b          .L8001F09C
/* 1F928 8001ED28 2402FFFF */   addiu     $v0, $zero, -1
.L8001ED2C:
/* 1F92C 8001ED2C 3C0E8016 */  lui        $t6, %hi(D_8015FB8C)
/* 1F930 8001ED30 8DCEFB8C */  lw         $t6, %lo(D_8015FB8C)($t6)
/* 1F934 8001ED34 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 1F938 8001ED38 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 1F93C 8001ED3C 000EC080 */  sll        $t8, $t6, 2
/* 1F940 8001ED40 030EC023 */  subu       $t8, $t8, $t6
/* 1F944 8001ED44 0018C080 */  sll        $t8, $t8, 2
/* 1F948 8001ED48 030EC023 */  subu       $t8, $t8, $t6
/* 1F94C 8001ED4C 0018C080 */  sll        $t8, $t8, 2
/* 1F950 8001ED50 030EC021 */  addu       $t8, $t8, $t6
/* 1F954 8001ED54 0018C080 */  sll        $t8, $t8, 2
/* 1F958 8001ED58 030EC023 */  subu       $t8, $t8, $t6
/* 1F95C 8001ED5C 0018C080 */  sll        $t8, $t8, 2
/* 1F960 8001ED60 01B87821 */  addu       $t7, $t5, $t8
/* 1F964 8001ED64 8DF90004 */  lw         $t9, 4($t7)
/* 1F968 8001ED68 072000CB */  bltz       $t9, .L8001F098
/* 1F96C 8001ED6C AFB90044 */   sw        $t9, 0x44($sp)
.L8001ED70:
/* 1F970 8001ED70 8FA80044 */  lw         $t0, 0x44($sp)
/* 1F974 8001ED74 8FA90048 */  lw         $t1, 0x48($sp)
/* 1F978 8001ED78 110900B5 */  beq        $t0, $t1, .L8001F050
/* 1F97C 8001ED7C 00000000 */   nop
/* 1F980 8001ED80 00085880 */  sll        $t3, $t0, 2
/* 1F984 8001ED84 01685823 */  subu       $t3, $t3, $t0
/* 1F988 8001ED88 000B5880 */  sll        $t3, $t3, 2
/* 1F98C 8001ED8C 01685823 */  subu       $t3, $t3, $t0
/* 1F990 8001ED90 000B5880 */  sll        $t3, $t3, 2
/* 1F994 8001ED94 01685821 */  addu       $t3, $t3, $t0
/* 1F998 8001ED98 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 1F99C 8001ED9C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 1F9A0 8001EDA0 000B5880 */  sll        $t3, $t3, 2
/* 1F9A4 8001EDA4 01685823 */  subu       $t3, $t3, $t0
/* 1F9A8 8001EDA8 000B5880 */  sll        $t3, $t3, 2
/* 1F9AC 8001EDAC 014B6021 */  addu       $t4, $t2, $t3
/* 1F9B0 8001EDB0 8D8E006C */  lw         $t6, 0x6c($t4)
/* 1F9B4 8001EDB4 29C10032 */  slti       $at, $t6, 0x32
/* 1F9B8 8001EDB8 142000A5 */  bnez       $at, .L8001F050
/* 1F9BC 8001EDBC AFAE0034 */   sw        $t6, 0x34($sp)
/* 1F9C0 8001EDC0 29C100C8 */  slti       $at, $t6, 0xc8
/* 1F9C4 8001EDC4 102000A2 */  beqz       $at, .L8001F050
/* 1F9C8 8001EDC8 00000000 */   nop
/* 1F9CC 8001EDCC 00096880 */  sll        $t5, $t1, 2
/* 1F9D0 8001EDD0 01A96823 */  subu       $t5, $t5, $t1
/* 1F9D4 8001EDD4 000D6880 */  sll        $t5, $t5, 2
/* 1F9D8 8001EDD8 01A96823 */  subu       $t5, $t5, $t1
/* 1F9DC 8001EDDC 000D6880 */  sll        $t5, $t5, 2
/* 1F9E0 8001EDE0 01A96821 */  addu       $t5, $t5, $t1
/* 1F9E4 8001EDE4 000D6880 */  sll        $t5, $t5, 2
/* 1F9E8 8001EDE8 01A96823 */  subu       $t5, $t5, $t1
/* 1F9EC 8001EDEC 000D6880 */  sll        $t5, $t5, 2
/* 1F9F0 8001EDF0 014DC021 */  addu       $t8, $t2, $t5
/* 1F9F4 8001EDF4 C70800E4 */  lwc1       $f8, 0xe4($t8)
/* 1F9F8 8001EDF8 C58A00E4 */  lwc1       $f10, 0xe4($t4)
/* 1F9FC 8001EDFC 0C004788 */  jal        func_80011E20
/* 1FA00 8001EE00 460A4301 */   sub.s     $f12, $f8, $f10
/* 1FA04 8001EE04 8FB90048 */  lw         $t9, 0x48($sp)
/* 1FA08 8001EE08 8FAE0044 */  lw         $t6, 0x44($sp)
/* 1FA0C 8001EE0C 3C0F8016 */  lui        $t7, 0x8016
/* 1FA10 8001EE10 00194080 */  sll        $t0, $t9, 2
/* 1FA14 8001EE14 000E4880 */  sll        $t1, $t6, 2
/* 1FA18 8001EE18 01194023 */  subu       $t0, $t0, $t9
/* 1FA1C 8001EE1C 012E4823 */  subu       $t1, $t1, $t6
/* 1FA20 8001EE20 00094880 */  sll        $t1, $t1, 2
/* 1FA24 8001EE24 00084080 */  sll        $t0, $t0, 2
/* 1FA28 8001EE28 01194023 */  subu       $t0, $t0, $t9
/* 1FA2C 8001EE2C 012E4823 */  subu       $t1, $t1, $t6
/* 1FA30 8001EE30 00094880 */  sll        $t1, $t1, 2
/* 1FA34 8001EE34 00084080 */  sll        $t0, $t0, 2
/* 1FA38 8001EE38 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1FA3C 8001EE3C 01194021 */  addu       $t0, $t0, $t9
/* 1FA40 8001EE40 012E4821 */  addu       $t1, $t1, $t6
/* 1FA44 8001EE44 00094880 */  sll        $t1, $t1, 2
/* 1FA48 8001EE48 00084080 */  sll        $t0, $t0, 2
/* 1FA4C 8001EE4C 01194023 */  subu       $t0, $t0, $t9
/* 1FA50 8001EE50 012E4823 */  subu       $t1, $t1, $t6
/* 1FA54 8001EE54 00094880 */  sll        $t1, $t1, 2
/* 1FA58 8001EE58 00084080 */  sll        $t0, $t0, 2
/* 1FA5C 8001EE5C 01E85821 */  addu       $t3, $t7, $t0
/* 1FA60 8001EE60 01E95021 */  addu       $t2, $t7, $t1
/* 1FA64 8001EE64 C55200E0 */  lwc1       $f18, 0xe0($t2)
/* 1FA68 8001EE68 C57000E0 */  lwc1       $f16, 0xe0($t3)
/* 1FA6C 8001EE6C 46000586 */  mov.s      $f22, $f0
/* 1FA70 8001EE70 0C004788 */  jal        func_80011E20
/* 1FA74 8001EE74 46128301 */   sub.s     $f12, $f16, $f18
/* 1FA78 8001EE78 8FB80048 */  lw         $t8, 0x48($sp)
/* 1FA7C 8001EE7C 8FA80044 */  lw         $t0, 0x44($sp)
/* 1FA80 8001EE80 3C0D8016 */  lui        $t5, 0x8016
/* 1FA84 8001EE84 00186080 */  sll        $t4, $t8, 2
/* 1FA88 8001EE88 00085880 */  sll        $t3, $t0, 2
/* 1FA8C 8001EE8C 01986023 */  subu       $t4, $t4, $t8
/* 1FA90 8001EE90 01685823 */  subu       $t3, $t3, $t0
/* 1FA94 8001EE94 000B5880 */  sll        $t3, $t3, 2
/* 1FA98 8001EE98 000C6080 */  sll        $t4, $t4, 2
/* 1FA9C 8001EE9C 01986023 */  subu       $t4, $t4, $t8
/* 1FAA0 8001EEA0 01685823 */  subu       $t3, $t3, $t0
/* 1FAA4 8001EEA4 000B5880 */  sll        $t3, $t3, 2
/* 1FAA8 8001EEA8 000C6080 */  sll        $t4, $t4, 2
/* 1FAAC 8001EEAC 8DADFB9C */  lw         $t5, -0x464($t5)
/* 1FAB0 8001EEB0 01986021 */  addu       $t4, $t4, $t8
/* 1FAB4 8001EEB4 01685821 */  addu       $t3, $t3, $t0
/* 1FAB8 8001EEB8 000B5880 */  sll        $t3, $t3, 2
/* 1FABC 8001EEBC 000C6080 */  sll        $t4, $t4, 2
/* 1FAC0 8001EEC0 01986023 */  subu       $t4, $t4, $t8
/* 1FAC4 8001EEC4 01685823 */  subu       $t3, $t3, $t0
/* 1FAC8 8001EEC8 000B5880 */  sll        $t3, $t3, 2
/* 1FACC 8001EECC 000C6080 */  sll        $t4, $t4, 2
/* 1FAD0 8001EED0 01ACC821 */  addu       $t9, $t5, $t4
/* 1FAD4 8001EED4 01AB7021 */  addu       $t6, $t5, $t3
/* 1FAD8 8001EED8 C5C600E8 */  lwc1       $f6, 0xe8($t6)
/* 1FADC 8001EEDC C72400E8 */  lwc1       $f4, 0xe8($t9)
/* 1FAE0 8001EEE0 46000506 */  mov.s      $f20, $f0
/* 1FAE4 8001EEE4 0C004788 */  jal        func_80011E20
/* 1FAE8 8001EEE8 46062301 */   sub.s     $f12, $f4, $f6
/* 1FAEC 8001EEEC 4616A200 */  add.s      $f8, $f20, $f22
/* 1FAF0 8001EEF0 C7B20040 */  lwc1       $f18, 0x40($sp)
/* 1FAF4 8001EEF4 46080280 */  add.s      $f10, $f0, $f8
/* 1FAF8 8001EEF8 E7AA003C */  swc1       $f10, 0x3c($sp)
/* 1FAFC 8001EEFC C7B0003C */  lwc1       $f16, 0x3c($sp)
/* 1FB00 8001EF00 4612803C */  c.lt.s     $f16, $f18
/* 1FB04 8001EF04 00000000 */  nop
/* 1FB08 8001EF08 45000051 */  bc1f       .L8001F050
/* 1FB0C 8001EF0C 00000000 */   nop
/* 1FB10 8001EF10 8FA90048 */  lw         $t1, 0x48($sp)
/* 1FB14 8001EF14 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1FB18 8001EF18 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1FB1C 8001EF1C 00095080 */  sll        $t2, $t1, 2
/* 1FB20 8001EF20 01495023 */  subu       $t2, $t2, $t1
/* 1FB24 8001EF24 000A5080 */  sll        $t2, $t2, 2
/* 1FB28 8001EF28 01495023 */  subu       $t2, $t2, $t1
/* 1FB2C 8001EF2C 000A5080 */  sll        $t2, $t2, 2
/* 1FB30 8001EF30 01495021 */  addu       $t2, $t2, $t1
/* 1FB34 8001EF34 000A5080 */  sll        $t2, $t2, 2
/* 1FB38 8001EF38 01495023 */  subu       $t2, $t2, $t1
/* 1FB3C 8001EF3C 000A5080 */  sll        $t2, $t2, 2
/* 1FB40 8001EF40 01EAC021 */  addu       $t8, $t7, $t2
/* 1FB44 8001EF44 C70400AC */  lwc1       $f4, 0xac($t8)
/* 1FB48 8001EF48 4604803C */  c.lt.s     $f16, $f4
/* 1FB4C 8001EF4C 00000000 */  nop
/* 1FB50 8001EF50 4500003F */  bc1f       .L8001F050
/* 1FB54 8001EF54 00000000 */   nop
/* 1FB58 8001EF58 8FAC0044 */  lw         $t4, 0x44($sp)
/* 1FB5C 8001EF5C C70800E0 */  lwc1       $f8, 0xe0($t8)
/* 1FB60 8001EF60 C71200E8 */  lwc1       $f18, 0xe8($t8)
/* 1FB64 8001EF64 000CC880 */  sll        $t9, $t4, 2
/* 1FB68 8001EF68 032CC823 */  subu       $t9, $t9, $t4
/* 1FB6C 8001EF6C 0019C880 */  sll        $t9, $t9, 2
/* 1FB70 8001EF70 032CC823 */  subu       $t9, $t9, $t4
/* 1FB74 8001EF74 0019C880 */  sll        $t9, $t9, 2
/* 1FB78 8001EF78 032CC821 */  addu       $t9, $t9, $t4
/* 1FB7C 8001EF7C 0019C880 */  sll        $t9, $t9, 2
/* 1FB80 8001EF80 032CC823 */  subu       $t9, $t9, $t4
/* 1FB84 8001EF84 0019C880 */  sll        $t9, $t9, 2
/* 1FB88 8001EF88 01F94021 */  addu       $t0, $t7, $t9
/* 1FB8C 8001EF8C C50600E0 */  lwc1       $f6, 0xe0($t0)
/* 1FB90 8001EF90 C50A00E8 */  lwc1       $f10, 0xe8($t0)
/* 1FB94 8001EF94 46083301 */  sub.s      $f12, $f6, $f8
/* 1FB98 8001EF98 0C00475A */  jal        func_80011D68
/* 1FB9C 8001EF9C 46125381 */   sub.s     $f14, $f10, $f18
/* 1FBA0 8001EFA0 8FAB0048 */  lw         $t3, 0x48($sp)
/* 1FBA4 8001EFA4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 1FBA8 8001EFA8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 1FBAC 8001EFAC 000B7080 */  sll        $t6, $t3, 2
/* 1FBB0 8001EFB0 01CB7023 */  subu       $t6, $t6, $t3
/* 1FBB4 8001EFB4 000E7080 */  sll        $t6, $t6, 2
/* 1FBB8 8001EFB8 01CB7023 */  subu       $t6, $t6, $t3
/* 1FBBC 8001EFBC 000E7080 */  sll        $t6, $t6, 2
/* 1FBC0 8001EFC0 01CB7021 */  addu       $t6, $t6, $t3
/* 1FBC4 8001EFC4 000E7080 */  sll        $t6, $t6, 2
/* 1FBC8 8001EFC8 01CB7023 */  subu       $t6, $t6, $t3
/* 1FBCC 8001EFCC 000E7080 */  sll        $t6, $t6, 2
/* 1FBD0 8001EFD0 01AE4821 */  addu       $t1, $t5, $t6
/* 1FBD4 8001EFD4 E52000AC */  swc1       $f0, 0xac($t1)
/* 1FBD8 8001EFD8 8FA50044 */  lw         $a1, 0x44($sp)
/* 1FBDC 8001EFDC 0C0045C0 */  jal        func_80011700
/* 1FBE0 8001EFE0 8FA40048 */   lw        $a0, 0x48($sp)
/* 1FBE4 8001EFE4 3C013FE0 */  lui        $at, 0x3fe0
/* 1FBE8 8001EFE8 44812800 */  mtc1       $at, $f5
/* 1FBEC 8001EFEC 44802000 */  mtc1       $zero, $f4
/* 1FBF0 8001EFF0 46000421 */  cvt.d.s    $f16, $f0
/* 1FBF4 8001EFF4 4630203C */  c.lt.d     $f4, $f16
/* 1FBF8 8001EFF8 00000000 */  nop
/* 1FBFC 8001EFFC 45000005 */  bc1f       .L8001F014
/* 1FC00 8001F000 00000000 */   nop
/* 1FC04 8001F004 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* 1FC08 8001F008 8FAA0044 */  lw         $t2, 0x44($sp)
/* 1FC0C 8001F00C E7A60040 */  swc1       $f6, 0x40($sp)
/* 1FC10 8001F010 AFAA0038 */  sw         $t2, 0x38($sp)
.L8001F014:
/* 1FC14 8001F014 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1FC18 8001F018 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1FC1C 8001F01C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1FC20 8001F020 000FC880 */  sll        $t9, $t7, 2
/* 1FC24 8001F024 032FC823 */  subu       $t9, $t9, $t7
/* 1FC28 8001F028 0019C880 */  sll        $t9, $t9, 2
/* 1FC2C 8001F02C 032FC823 */  subu       $t9, $t9, $t7
/* 1FC30 8001F030 0019C880 */  sll        $t9, $t9, 2
/* 1FC34 8001F034 032FC821 */  addu       $t9, $t9, $t7
/* 1FC38 8001F038 0019C880 */  sll        $t9, $t9, 2
/* 1FC3C 8001F03C C7A80030 */  lwc1       $f8, 0x30($sp)
/* 1FC40 8001F040 032FC823 */  subu       $t9, $t9, $t7
/* 1FC44 8001F044 0019C880 */  sll        $t9, $t9, 2
/* 1FC48 8001F048 01994021 */  addu       $t0, $t4, $t9
/* 1FC4C 8001F04C E50800AC */  swc1       $f8, 0xac($t0)
.L8001F050:
/* 1FC50 8001F050 8FAB0044 */  lw         $t3, 0x44($sp)
/* 1FC54 8001F054 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 1FC58 8001F058 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 1FC5C 8001F05C 000B6880 */  sll        $t5, $t3, 2
/* 1FC60 8001F060 01AB6823 */  subu       $t5, $t5, $t3
/* 1FC64 8001F064 000D6880 */  sll        $t5, $t5, 2
/* 1FC68 8001F068 01AB6823 */  subu       $t5, $t5, $t3
/* 1FC6C 8001F06C 000D6880 */  sll        $t5, $t5, 2
/* 1FC70 8001F070 01AB6821 */  addu       $t5, $t5, $t3
/* 1FC74 8001F074 000D6880 */  sll        $t5, $t5, 2
/* 1FC78 8001F078 01AB6823 */  subu       $t5, $t5, $t3
/* 1FC7C 8001F07C 000D6880 */  sll        $t5, $t5, 2
/* 1FC80 8001F080 030D7021 */  addu       $t6, $t8, $t5
/* 1FC84 8001F084 8DC90004 */  lw         $t1, 4($t6)
/* 1FC88 8001F088 AFA90044 */  sw         $t1, 0x44($sp)
/* 1FC8C 8001F08C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 1FC90 8001F090 0541FF37 */  bgez       $t2, .L8001ED70
/* 1FC94 8001F094 00000000 */   nop
.L8001F098:
/* 1FC98 8001F098 8FA20038 */  lw         $v0, 0x38($sp)
.L8001F09C:
/* 1FC9C 8001F09C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1FCA0 8001F0A0 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1FCA4 8001F0A4 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1FCA8 8001F0A8 03E00008 */  jr         $ra
/* 1FCAC 8001F0AC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001F0B0
/* 1FCB0 8001F0B0 AFA50004 */  sw         $a1, 4($sp)
/* 1FCB4 8001F0B4 0004C080 */  sll        $t8, $a0, 2
/* 1FCB8 8001F0B8 0304C023 */  subu       $t8, $t8, $a0
/* 1FCBC 8001F0BC 0018C080 */  sll        $t8, $t8, 2
/* 1FCC0 8001F0C0 0304C023 */  subu       $t8, $t8, $a0
/* 1FCC4 8001F0C4 0018C080 */  sll        $t8, $t8, 2
/* 1FCC8 8001F0C8 0304C021 */  addu       $t8, $t8, $a0
/* 1FCCC 8001F0CC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 1FCD0 8001F0D0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 1FCD4 8001F0D4 0018C080 */  sll        $t8, $t8, 2
/* 1FCD8 8001F0D8 0304C023 */  subu       $t8, $t8, $a0
/* 1FCDC 8001F0DC 0018C080 */  sll        $t8, $t8, 2
/* 1FCE0 8001F0E0 3C0E0400 */  lui        $t6, 0x400
/* 1FCE4 8001F0E4 01F8C821 */  addu       $t9, $t7, $t8
/* 1FCE8 8001F0E8 AF2E0288 */  sw         $t6, 0x288($t9)
/* 1FCEC 8001F0EC 03E00008 */  jr         $ra
/* 1FCF0 8001F0F0 00000000 */   nop

glabel func_8001F0F4
/* 1FCF4 8001F0F4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1FCF8 8001F0F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1FCFC 8001F0FC AFA40058 */  sw         $a0, 0x58($sp)
/* 1FD00 8001F100 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1FD04 8001F104 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1FD08 8001F108 8FB80058 */  lw         $t8, 0x58($sp)
/* 1FD0C 8001F10C 3C0E8016 */  lui        $t6, 0x8016
/* 1FD10 8001F110 3C0F8016 */  lui        $t7, 0x8016
/* 1FD14 8001F114 0018C880 */  sll        $t9, $t8, 2
/* 1FD18 8001F118 0338C823 */  subu       $t9, $t9, $t8
/* 1FD1C 8001F11C 0019C880 */  sll        $t9, $t9, 2
/* 1FD20 8001F120 0338C823 */  subu       $t9, $t9, $t8
/* 1FD24 8001F124 0019C880 */  sll        $t9, $t9, 2
/* 1FD28 8001F128 0338C821 */  addu       $t9, $t9, $t8
/* 1FD2C 8001F12C 8DCEFB8C */  lw         $t6, -0x474($t6)
/* 1FD30 8001F130 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 1FD34 8001F134 0019C880 */  sll        $t9, $t9, 2
/* 1FD38 8001F138 0338C823 */  subu       $t9, $t9, $t8
/* 1FD3C 8001F13C 0019C880 */  sll        $t9, $t9, 2
/* 1FD40 8001F140 AFAE0054 */  sw         $t6, 0x54($sp)
/* 1FD44 8001F144 01F94021 */  addu       $t0, $t7, $t9
/* 1FD48 8001F148 8D0902C8 */  lw         $t1, 0x2c8($t0)
/* 1FD4C 8001F14C C5240000 */  lwc1       $f4, ($t1)
/* 1FD50 8001F150 05C000EA */  bltz       $t6, .L8001F4FC
/* 1FD54 8001F154 E7A40050 */   swc1      $f4, 0x50($sp)
.L8001F158:
/* 1FD58 8001F158 8FAA0054 */  lw         $t2, 0x54($sp)
/* 1FD5C 8001F15C 8FAB0058 */  lw         $t3, 0x58($sp)
/* 1FD60 8001F160 114B00D4 */  beq        $t2, $t3, .L8001F4B4
/* 1FD64 8001F164 00000000 */   nop
/* 1FD68 8001F168 000B6880 */  sll        $t5, $t3, 2
/* 1FD6C 8001F16C 01AB6823 */  subu       $t5, $t5, $t3
/* 1FD70 8001F170 000D6880 */  sll        $t5, $t5, 2
/* 1FD74 8001F174 01AB6823 */  subu       $t5, $t5, $t3
/* 1FD78 8001F178 000D6880 */  sll        $t5, $t5, 2
/* 1FD7C 8001F17C 01AB6821 */  addu       $t5, $t5, $t3
/* 1FD80 8001F180 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 1FD84 8001F184 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 1FD88 8001F188 000D6880 */  sll        $t5, $t5, 2
/* 1FD8C 8001F18C 01AB6823 */  subu       $t5, $t5, $t3
/* 1FD90 8001F190 000D6880 */  sll        $t5, $t5, 2
/* 1FD94 8001F194 018DC021 */  addu       $t8, $t4, $t5
/* 1FD98 8001F198 8F0F00A4 */  lw         $t7, 0xa4($t8)
/* 1FD9C 8001F19C 11EA00C5 */  beq        $t7, $t2, .L8001F4B4
/* 1FDA0 8001F1A0 00000000 */   nop
/* 1FDA4 8001F1A4 000AC880 */  sll        $t9, $t2, 2
/* 1FDA8 8001F1A8 032AC823 */  subu       $t9, $t9, $t2
/* 1FDAC 8001F1AC 0019C880 */  sll        $t9, $t9, 2
/* 1FDB0 8001F1B0 032AC823 */  subu       $t9, $t9, $t2
/* 1FDB4 8001F1B4 0019C880 */  sll        $t9, $t9, 2
/* 1FDB8 8001F1B8 032AC821 */  addu       $t9, $t9, $t2
/* 1FDBC 8001F1BC 0019C880 */  sll        $t9, $t9, 2
/* 1FDC0 8001F1C0 032AC823 */  subu       $t9, $t9, $t2
/* 1FDC4 8001F1C4 0019C880 */  sll        $t9, $t9, 2
/* 1FDC8 8001F1C8 01994021 */  addu       $t0, $t4, $t9
/* 1FDCC 8001F1CC C50600E0 */  lwc1       $f6, 0xe0($t0)
/* 1FDD0 8001F1D0 C70800E0 */  lwc1       $f8, 0xe0($t8)
/* 1FDD4 8001F1D4 46083281 */  sub.s      $f10, $f6, $f8
/* 1FDD8 8001F1D8 E7AA003C */  swc1       $f10, 0x3c($sp)
/* 1FDDC 8001F1DC C71200E4 */  lwc1       $f18, 0xe4($t8)
/* 1FDE0 8001F1E0 C51000E4 */  lwc1       $f16, 0xe4($t0)
/* 1FDE4 8001F1E4 46128101 */  sub.s      $f4, $f16, $f18
/* 1FDE8 8001F1E8 E7A40040 */  swc1       $f4, 0x40($sp)
/* 1FDEC 8001F1EC C70800E8 */  lwc1       $f8, 0xe8($t8)
/* 1FDF0 8001F1F0 C50600E8 */  lwc1       $f6, 0xe8($t0)
/* 1FDF4 8001F1F4 46002306 */  mov.s      $f12, $f4
/* 1FDF8 8001F1F8 46083281 */  sub.s      $f10, $f6, $f8
/* 1FDFC 8001F1FC 0C004788 */  jal        func_80011E20
/* 1FE00 8001F200 E7AA0044 */   swc1      $f10, 0x44($sp)
/* 1FE04 8001F204 46000586 */  mov.s      $f22, $f0
/* 1FE08 8001F208 0C004788 */  jal        func_80011E20
/* 1FE0C 8001F20C C7AC003C */   lwc1      $f12, 0x3c($sp)
/* 1FE10 8001F210 46000506 */  mov.s      $f20, $f0
/* 1FE14 8001F214 0C004788 */  jal        func_80011E20
/* 1FE18 8001F218 C7AC0044 */   lwc1      $f12, 0x44($sp)
/* 1FE1C 8001F21C 4616A400 */  add.s      $f16, $f20, $f22
/* 1FE20 8001F220 3C01800E */  lui        $at, %hi(D_800DC1F0)
/* 1FE24 8001F224 D428C1F0 */  ldc1       $f8, %lo(D_800DC1F0)($at)
/* 1FE28 8001F228 46100480 */  add.s      $f18, $f0, $f16
/* 1FE2C 8001F22C 460091A1 */  cvt.d.s    $f6, $f18
/* 1FE30 8001F230 4628303C */  c.lt.d     $f6, $f8
/* 1FE34 8001F234 00000000 */  nop
/* 1FE38 8001F238 4500009E */  bc1f       .L8001F4B4
/* 1FE3C 8001F23C 00000000 */   nop
/* 1FE40 8001F240 27A9003C */  addiu      $t1, $sp, 0x3c
/* 1FE44 8001F244 8D2B0000 */  lw         $t3, ($t1)
/* 1FE48 8001F248 AFAB0000 */  sw         $t3, ($sp)
/* 1FE4C 8001F24C 8D2E0004 */  lw         $t6, 4($t1)
/* 1FE50 8001F250 8FA40000 */  lw         $a0, ($sp)
/* 1FE54 8001F254 AFAE0004 */  sw         $t6, 4($sp)
/* 1FE58 8001F258 8D2B0008 */  lw         $t3, 8($t1)
/* 1FE5C 8001F25C 8FA50004 */  lw         $a1, 4($sp)
/* 1FE60 8001F260 AFAB0008 */  sw         $t3, 8($sp)
/* 1FE64 8001F264 0C016903 */  jal        func_8005A40C
/* 1FE68 8001F268 8FA60008 */   lw        $a2, 8($sp)
/* 1FE6C 8001F26C E7A00048 */  swc1       $f0, 0x48($sp)
/* 1FE70 8001F270 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 1FE74 8001F274 3C014049 */  lui        $at, 0x4049
/* 1FE78 8001F278 44818800 */  mtc1       $at, $f17
/* 1FE7C 8001F27C 44808000 */  mtc1       $zero, $f16
/* 1FE80 8001F280 46005121 */  cvt.d.s    $f4, $f10
/* 1FE84 8001F284 4630203C */  c.lt.d     $f4, $f16
/* 1FE88 8001F288 00000000 */  nop
/* 1FE8C 8001F28C 45000004 */  bc1f       .L8001F2A0
/* 1FE90 8001F290 3C014248 */   lui       $at, 0x4248
/* 1FE94 8001F294 44819000 */  mtc1       $at, $f18
/* 1FE98 8001F298 00000000 */  nop
/* 1FE9C 8001F29C E7B20048 */  swc1       $f18, 0x48($sp)
.L8001F2A0:
/* 1FEA0 8001F2A0 3C013F80 */  lui        $at, 0x3f80
/* 1FEA4 8001F2A4 44813000 */  mtc1       $at, $f6
/* 1FEA8 8001F2A8 C7A80048 */  lwc1       $f8, 0x48($sp)
/* 1FEAC 8001F2AC 8FAF0058 */  lw         $t7, 0x58($sp)
/* 1FEB0 8001F2B0 3C0D8016 */  lui        $t5, 0x8016
/* 1FEB4 8001F2B4 46083283 */  div.s      $f10, $f6, $f8
/* 1FEB8 8001F2B8 000F5080 */  sll        $t2, $t7, 2
/* 1FEBC 8001F2BC 014F5023 */  subu       $t2, $t2, $t7
/* 1FEC0 8001F2C0 000A5080 */  sll        $t2, $t2, 2
/* 1FEC4 8001F2C4 014F5023 */  subu       $t2, $t2, $t7
/* 1FEC8 8001F2C8 000A5080 */  sll        $t2, $t2, 2
/* 1FECC 8001F2CC 014F5021 */  addu       $t2, $t2, $t7
/* 1FED0 8001F2D0 8DADFB9C */  lw         $t5, -0x464($t5)
/* 1FED4 8001F2D4 000A5080 */  sll        $t2, $t2, 2
/* 1FED8 8001F2D8 014F5023 */  subu       $t2, $t2, $t7
/* 1FEDC 8001F2DC 000A5080 */  sll        $t2, $t2, 2
/* 1FEE0 8001F2E0 01AA6021 */  addu       $t4, $t5, $t2
/* 1FEE4 8001F2E4 8FA6003C */  lw         $a2, 0x3c($sp)
/* 1FEE8 8001F2E8 8FA70044 */  lw         $a3, 0x44($sp)
/* 1FEEC 8001F2EC E7AA0048 */  swc1       $f10, 0x48($sp)
/* 1FEF0 8001F2F0 C58E0100 */  lwc1       $f14, 0x100($t4)
/* 1FEF4 8001F2F4 0C004794 */  jal        func_80011E50
/* 1FEF8 8001F2F8 C58C00FC */   lwc1      $f12, 0xfc($t4)
/* 1FEFC 8001F2FC C7A40048 */  lwc1       $f4, 0x48($sp)
/* 1FF00 8001F300 44804800 */  mtc1       $zero, $f9
/* 1FF04 8001F304 44804000 */  mtc1       $zero, $f8
/* 1FF08 8001F308 46040402 */  mul.s      $f16, $f0, $f4
/* 1FF0C 8001F30C E7B00038 */  swc1       $f16, 0x38($sp)
/* 1FF10 8001F310 C7B20038 */  lwc1       $f18, 0x38($sp)
/* 1FF14 8001F314 460091A1 */  cvt.d.s    $f6, $f18
/* 1FF18 8001F318 4626403C */  c.lt.d     $f8, $f6
/* 1FF1C 8001F31C 00000000 */  nop
/* 1FF20 8001F320 45000064 */  bc1f       .L8001F4B4
/* 1FF24 8001F324 00000000 */   nop
/* 1FF28 8001F328 8FA80054 */  lw         $t0, 0x54($sp)
/* 1FF2C 8001F32C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 1FF30 8001F330 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 1FF34 8001F334 0008C080 */  sll        $t8, $t0, 2
/* 1FF38 8001F338 0308C023 */  subu       $t8, $t8, $t0
/* 1FF3C 8001F33C 0018C080 */  sll        $t8, $t8, 2
/* 1FF40 8001F340 0308C023 */  subu       $t8, $t8, $t0
/* 1FF44 8001F344 0018C080 */  sll        $t8, $t8, 2
/* 1FF48 8001F348 0308C021 */  addu       $t8, $t8, $t0
/* 1FF4C 8001F34C 0018C080 */  sll        $t8, $t8, 2
/* 1FF50 8001F350 0308C023 */  subu       $t8, $t8, $t0
/* 1FF54 8001F354 0018C080 */  sll        $t8, $t8, 2
/* 1FF58 8001F358 C7A60050 */  lwc1       $f6, 0x50($sp)
/* 1FF5C 8001F35C 03384821 */  addu       $t1, $t9, $t8
/* 1FF60 8001F360 8D2E02C8 */  lw         $t6, 0x2c8($t1)
/* 1FF64 8001F364 3C01800E */  lui        $at, %hi(D_800DC1F8)
/* 1FF68 8001F368 D432C1F8 */  ldc1       $f18, %lo(D_800DC1F8)($at)
/* 1FF6C 8001F36C 46003221 */  cvt.d.s    $f8, $f6
/* 1FF70 8001F370 C5CA0000 */  lwc1       $f10, ($t6)
/* 1FF74 8001F374 46002421 */  cvt.d.s    $f16, $f4
/* 1FF78 8001F378 46289100 */  add.d      $f4, $f18, $f8
/* 1FF7C 8001F37C E7AA004C */  swc1       $f10, 0x4c($sp)
/* 1FF80 8001F380 460051A1 */  cvt.d.s    $f6, $f10
/* 1FF84 8001F384 46262480 */  add.d      $f18, $f4, $f6
/* 1FF88 8001F388 4632803C */  c.lt.d     $f16, $f18
/* 1FF8C 8001F38C 00000000 */  nop
/* 1FF90 8001F390 45000048 */  bc1f       .L8001F4B4
/* 1FF94 8001F394 00000000 */   nop
/* 1FF98 8001F398 8FAB0058 */  lw         $t3, 0x58($sp)
/* 1FF9C 8001F39C C7A80044 */  lwc1       $f8, 0x44($sp)
/* 1FFA0 8001F3A0 8FA6003C */  lw         $a2, 0x3c($sp)
/* 1FFA4 8001F3A4 000B7880 */  sll        $t7, $t3, 2
/* 1FFA8 8001F3A8 000B5080 */  sll        $t2, $t3, 2
/* 1FFAC 8001F3AC 014B5023 */  subu       $t2, $t2, $t3
/* 1FFB0 8001F3B0 01EB7823 */  subu       $t7, $t7, $t3
/* 1FFB4 8001F3B4 000F7880 */  sll        $t7, $t7, 2
/* 1FFB8 8001F3B8 000A5080 */  sll        $t2, $t2, 2
/* 1FFBC 8001F3BC 014B5023 */  subu       $t2, $t2, $t3
/* 1FFC0 8001F3C0 01EB7823 */  subu       $t7, $t7, $t3
/* 1FFC4 8001F3C4 000F7880 */  sll        $t7, $t7, 2
/* 1FFC8 8001F3C8 000A5080 */  sll        $t2, $t2, 2
/* 1FFCC 8001F3CC 014B5021 */  addu       $t2, $t2, $t3
/* 1FFD0 8001F3D0 01EB7821 */  addu       $t7, $t7, $t3
/* 1FFD4 8001F3D4 000F7880 */  sll        $t7, $t7, 2
/* 1FFD8 8001F3D8 000A5080 */  sll        $t2, $t2, 2
/* 1FFDC 8001F3DC 46004287 */  neg.s      $f10, $f8
/* 1FFE0 8001F3E0 014B5023 */  subu       $t2, $t2, $t3
/* 1FFE4 8001F3E4 01EB7823 */  subu       $t7, $t7, $t3
/* 1FFE8 8001F3E8 000F7880 */  sll        $t7, $t7, 2
/* 1FFEC 8001F3EC 000A5080 */  sll        $t2, $t2, 2
/* 1FFF0 8001F3F0 032A6021 */  addu       $t4, $t9, $t2
/* 1FFF4 8001F3F4 032F6821 */  addu       $t5, $t9, $t7
/* 1FFF8 8001F3F8 44075000 */  mfc1       $a3, $f10
/* 1FFFC 8001F3FC C5AC0100 */  lwc1       $f12, 0x100($t5)
/* 20000 8001F400 0C004794 */  jal        func_80011E50
/* 20004 8001F404 C58E00FC */   lwc1      $f14, 0xfc($t4)
/* 20008 8001F408 C7A40048 */  lwc1       $f4, 0x48($sp)
/* 2000C 8001F40C 46040182 */  mul.s      $f6, $f0, $f4
/* 20010 8001F410 E7A60034 */  swc1       $f6, 0x34($sp)
/* 20014 8001F414 0C00479E */  jal        func_80011E78
/* 20018 8001F418 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* 2001C 8001F41C 8FB80058 */  lw         $t8, 0x58($sp)
/* 20020 8001F420 C7A80038 */  lwc1       $f8, 0x38($sp)
/* 20024 8001F424 3C088016 */  lui        $t0, 0x8016
/* 20028 8001F428 00184880 */  sll        $t1, $t8, 2
/* 2002C 8001F42C 01384823 */  subu       $t1, $t1, $t8
/* 20030 8001F430 00094880 */  sll        $t1, $t1, 2
/* 20034 8001F434 01384823 */  subu       $t1, $t1, $t8
/* 20038 8001F438 00094880 */  sll        $t1, $t1, 2
/* 2003C 8001F43C 3C01800E */  lui        $at, %hi(D_800DC200)
/* 20040 8001F440 01384821 */  addu       $t1, $t1, $t8
/* 20044 8001F444 D424C200 */  ldc1       $f4, %lo(D_800DC200)($at)
/* 20048 8001F448 8D08FB9C */  lw         $t0, -0x464($t0)
/* 2004C 8001F44C 00094880 */  sll        $t1, $t1, 2
/* 20050 8001F450 460042A1 */  cvt.d.s    $f10, $f8
/* 20054 8001F454 01384823 */  subu       $t1, $t1, $t8
/* 20058 8001F458 00094880 */  sll        $t1, $t1, 2
/* 2005C 8001F45C 46245182 */  mul.d      $f6, $f10, $f4
/* 20060 8001F460 01097021 */  addu       $t6, $t0, $t1
/* 20064 8001F464 C5D000F4 */  lwc1       $f16, 0xf4($t6)
/* 20068 8001F468 3C01403E */  lui        $at, 0x403e
/* 2006C 8001F46C 44818800 */  mtc1       $at, $f17
/* 20070 8001F470 460084A1 */  cvt.d.s    $f18, $f16
/* 20074 8001F474 44808000 */  mtc1       $zero, $f16
/* 20078 8001F478 46000506 */  mov.s      $f20, $f0
/* 2007C 8001F47C 4600A2A1 */  cvt.d.s    $f10, $f20
/* 20080 8001F480 46303203 */  div.d      $f8, $f6, $f16
/* 20084 8001F484 C7A60048 */  lwc1       $f6, 0x48($sp)
/* 20088 8001F488 3C014069 */  lui        $at, 0x4069
/* 2008C 8001F48C 46003421 */  cvt.d.s    $f16, $f6
/* 20090 8001F490 462A4102 */  mul.d      $f4, $f8, $f10
/* 20094 8001F494 44805000 */  mtc1       $zero, $f10
/* 20098 8001F498 44815800 */  mtc1       $at, $f11
/* 2009C 8001F49C 46302202 */  mul.d      $f8, $f4, $f16
/* 200A0 8001F4A0 00000000 */  nop
/* 200A4 8001F4A4 462A4182 */  mul.d      $f6, $f8, $f10
/* 200A8 8001F4A8 46269101 */  sub.d      $f4, $f18, $f6
/* 200AC 8001F4AC 46202420 */  cvt.s.d    $f16, $f4
/* 200B0 8001F4B0 E5D000F4 */  swc1       $f16, 0xf4($t6)
.L8001F4B4:
/* 200B4 8001F4B4 8FAD0054 */  lw         $t5, 0x54($sp)
/* 200B8 8001F4B8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 200BC 8001F4BC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 200C0 8001F4C0 000D5880 */  sll        $t3, $t5, 2
/* 200C4 8001F4C4 016D5823 */  subu       $t3, $t3, $t5
/* 200C8 8001F4C8 000B5880 */  sll        $t3, $t3, 2
/* 200CC 8001F4CC 016D5823 */  subu       $t3, $t3, $t5
/* 200D0 8001F4D0 000B5880 */  sll        $t3, $t3, 2
/* 200D4 8001F4D4 016D5821 */  addu       $t3, $t3, $t5
/* 200D8 8001F4D8 000B5880 */  sll        $t3, $t3, 2
/* 200DC 8001F4DC 016D5823 */  subu       $t3, $t3, $t5
/* 200E0 8001F4E0 000B5880 */  sll        $t3, $t3, 2
/* 200E4 8001F4E4 01EBC821 */  addu       $t9, $t7, $t3
/* 200E8 8001F4E8 8F2A0004 */  lw         $t2, 4($t9)
/* 200EC 8001F4EC AFAA0054 */  sw         $t2, 0x54($sp)
/* 200F0 8001F4F0 8FAC0054 */  lw         $t4, 0x54($sp)
/* 200F4 8001F4F4 0581FF18 */  bgez       $t4, .L8001F158
/* 200F8 8001F4F8 00000000 */   nop
.L8001F4FC:
/* 200FC 8001F4FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 20100 8001F500 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 20104 8001F504 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 20108 8001F508 03E00008 */  jr         $ra
/* 2010C 8001F50C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8001F510
/* 20110 8001F510 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20114 8001F514 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20118 8001F518 AFA40020 */  sw         $a0, 0x20($sp)
/* 2011C 8001F51C AFA50024 */  sw         $a1, 0x24($sp)
/* 20120 8001F520 8FA40020 */  lw         $a0, 0x20($sp)
/* 20124 8001F524 0C004482 */  jal        func_80011208
/* 20128 8001F528 8FA50024 */   lw        $a1, 0x24($sp)
/* 2012C 8001F52C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 20130 8001F530 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20134 8001F534 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 20138 8001F538 000FC080 */  sll        $t8, $t7, 2
/* 2013C 8001F53C 030FC023 */  subu       $t8, $t8, $t7
/* 20140 8001F540 0018C080 */  sll        $t8, $t8, 2
/* 20144 8001F544 030FC023 */  subu       $t8, $t8, $t7
/* 20148 8001F548 0018C080 */  sll        $t8, $t8, 2
/* 2014C 8001F54C 030FC021 */  addu       $t8, $t8, $t7
/* 20150 8001F550 0018C080 */  sll        $t8, $t8, 2
/* 20154 8001F554 030FC023 */  subu       $t8, $t8, $t7
/* 20158 8001F558 0018C080 */  sll        $t8, $t8, 2
/* 2015C 8001F55C E7A0001C */  swc1       $f0, 0x1c($sp)
/* 20160 8001F560 01D8C821 */  addu       $t9, $t6, $t8
/* 20164 8001F564 8F280268 */  lw         $t0, 0x268($t9)
/* 20168 8001F568 11000031 */  beqz       $t0, .L8001F630
/* 2016C 8001F56C 00000000 */   nop
/* 20170 8001F570 8FA90024 */  lw         $t1, 0x24($sp)
/* 20174 8001F574 00095080 */  sll        $t2, $t1, 2
/* 20178 8001F578 01495023 */  subu       $t2, $t2, $t1
/* 2017C 8001F57C 000A5080 */  sll        $t2, $t2, 2
/* 20180 8001F580 01495023 */  subu       $t2, $t2, $t1
/* 20184 8001F584 000A5080 */  sll        $t2, $t2, 2
/* 20188 8001F588 01495021 */  addu       $t2, $t2, $t1
/* 2018C 8001F58C 000A5080 */  sll        $t2, $t2, 2
/* 20190 8001F590 01495023 */  subu       $t2, $t2, $t1
/* 20194 8001F594 000A5080 */  sll        $t2, $t2, 2
/* 20198 8001F598 01CA5821 */  addu       $t3, $t6, $t2
/* 2019C 8001F59C 8D6C0268 */  lw         $t4, 0x268($t3)
/* 201A0 8001F5A0 15800023 */  bnez       $t4, .L8001F630
/* 201A4 8001F5A4 00000000 */   nop
/* 201A8 8001F5A8 C56400E4 */  lwc1       $f4, 0xe4($t3)
/* 201AC 8001F5AC 3C014069 */  lui        $at, 0x4069
/* 201B0 8001F5B0 44814800 */  mtc1       $at, $f9
/* 201B4 8001F5B4 44804000 */  mtc1       $zero, $f8
/* 201B8 8001F5B8 460021A1 */  cvt.d.s    $f6, $f4
/* 201BC 8001F5BC 46283280 */  add.d      $f10, $f6, $f8
/* 201C0 8001F5C0 46205420 */  cvt.s.d    $f16, $f10
/* 201C4 8001F5C4 E57000E4 */  swc1       $f16, 0xe4($t3)
/* 201C8 8001F5C8 8FA50024 */  lw         $a1, 0x24($sp)
/* 201CC 8001F5CC 0C004547 */  jal        func_8001151C
/* 201D0 8001F5D0 8FA40020 */   lw        $a0, 0x20($sp)
/* 201D4 8001F5D4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 201D8 8001F5D8 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 201DC 8001F5DC 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 201E0 8001F5E0 000FC080 */  sll        $t8, $t7, 2
/* 201E4 8001F5E4 030FC023 */  subu       $t8, $t8, $t7
/* 201E8 8001F5E8 0018C080 */  sll        $t8, $t8, 2
/* 201EC 8001F5EC 030FC023 */  subu       $t8, $t8, $t7
/* 201F0 8001F5F0 0018C080 */  sll        $t8, $t8, 2
/* 201F4 8001F5F4 030FC021 */  addu       $t8, $t8, $t7
/* 201F8 8001F5F8 0018C080 */  sll        $t8, $t8, 2
/* 201FC 8001F5FC 030FC023 */  subu       $t8, $t8, $t7
/* 20200 8001F600 0018C080 */  sll        $t8, $t8, 2
/* 20204 8001F604 E7A00018 */  swc1       $f0, 0x18($sp)
/* 20208 8001F608 01B8C821 */  addu       $t9, $t5, $t8
/* 2020C 8001F60C C73200E4 */  lwc1       $f18, 0xe4($t9)
/* 20210 8001F610 3C014069 */  lui        $at, 0x4069
/* 20214 8001F614 44813800 */  mtc1       $at, $f7
/* 20218 8001F618 44803000 */  mtc1       $zero, $f6
/* 2021C 8001F61C 46009121 */  cvt.d.s    $f4, $f18
/* 20220 8001F620 46262201 */  sub.d      $f8, $f4, $f6
/* 20224 8001F624 462042A0 */  cvt.s.d    $f10, $f8
/* 20228 8001F628 10000005 */  b          .L8001F640
/* 2022C 8001F62C E72A00E4 */   swc1      $f10, 0xe4($t9)
.L8001F630:
/* 20230 8001F630 8FA40020 */  lw         $a0, 0x20($sp)
/* 20234 8001F634 0C004547 */  jal        func_8001151C
/* 20238 8001F638 8FA50024 */   lw        $a1, 0x24($sp)
/* 2023C 8001F63C E7A00018 */  swc1       $f0, 0x18($sp)
.L8001F640:
/* 20240 8001F640 8FA90020 */  lw         $t1, 0x20($sp)
/* 20244 8001F644 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 20248 8001F648 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2024C 8001F64C 00097080 */  sll        $t6, $t1, 2
/* 20250 8001F650 01C97023 */  subu       $t6, $t6, $t1
/* 20254 8001F654 000E7080 */  sll        $t6, $t6, 2
/* 20258 8001F658 01C97023 */  subu       $t6, $t6, $t1
/* 2025C 8001F65C 000E7080 */  sll        $t6, $t6, 2
/* 20260 8001F660 01C97021 */  addu       $t6, $t6, $t1
/* 20264 8001F664 000E7080 */  sll        $t6, $t6, 2
/* 20268 8001F668 01C97023 */  subu       $t6, $t6, $t1
/* 2026C 8001F66C 000E7080 */  sll        $t6, $t6, 2
/* 20270 8001F670 010E5021 */  addu       $t2, $t0, $t6
/* 20274 8001F674 854C00B8 */  lh         $t4, 0xb8($t2)
/* 20278 8001F678 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2027C 8001F67C 258BFFFF */  addiu      $t3, $t4, -1
/* 20280 8001F680 A54B00B8 */  sh         $t3, 0xb8($t2)
/* 20284 8001F684 8FAD0020 */  lw         $t5, 0x20($sp)
/* 20288 8001F688 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2028C 8001F68C 000DC080 */  sll        $t8, $t5, 2
/* 20290 8001F690 030DC023 */  subu       $t8, $t8, $t5
/* 20294 8001F694 0018C080 */  sll        $t8, $t8, 2
/* 20298 8001F698 030DC023 */  subu       $t8, $t8, $t5
/* 2029C 8001F69C 0018C080 */  sll        $t8, $t8, 2
/* 202A0 8001F6A0 030DC021 */  addu       $t8, $t8, $t5
/* 202A4 8001F6A4 0018C080 */  sll        $t8, $t8, 2
/* 202A8 8001F6A8 030DC023 */  subu       $t8, $t8, $t5
/* 202AC 8001F6AC 0018C080 */  sll        $t8, $t8, 2
/* 202B0 8001F6B0 01F8C821 */  addu       $t9, $t7, $t8
/* 202B4 8001F6B4 8F29006C */  lw         $t1, 0x6c($t9)
/* 202B8 8001F6B8 29210032 */  slti       $at, $t1, 0x32
/* 202BC 8001F6BC 10200010 */  beqz       $at, .L8001F700
/* 202C0 8001F6C0 29210032 */   slti      $at, $t1, 0x32
/* 202C4 8001F6C4 102000B3 */  beqz       $at, .L8001F994
/* 202C8 8001F6C8 00000000 */   nop
/* 202CC 8001F6CC C7300294 */  lwc1       $f16, 0x294($t9)
/* 202D0 8001F6D0 3C014024 */  lui        $at, 0x4024
/* 202D4 8001F6D4 44812800 */  mtc1       $at, $f5
/* 202D8 8001F6D8 44802000 */  mtc1       $zero, $f4
/* 202DC 8001F6DC 460084A1 */  cvt.d.s    $f18, $f16
/* 202E0 8001F6E0 4632203C */  c.lt.d     $f4, $f18
/* 202E4 8001F6E4 00000000 */  nop
/* 202E8 8001F6E8 450000AA */  bc1f       .L8001F994
/* 202EC 8001F6EC 00000000 */   nop
/* 202F0 8001F6F0 8F280268 */  lw         $t0, 0x268($t9)
/* 202F4 8001F6F4 24010001 */  addiu      $at, $zero, 1
/* 202F8 8001F6F8 150100A6 */  bne        $t0, $at, .L8001F994
/* 202FC 8001F6FC 00000000 */   nop
.L8001F700:
/* 20300 8001F700 8FAC0020 */  lw         $t4, 0x20($sp)
/* 20304 8001F704 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20308 8001F708 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2030C 8001F70C 000C5880 */  sll        $t3, $t4, 2
/* 20310 8001F710 016C5823 */  subu       $t3, $t3, $t4
/* 20314 8001F714 000B5880 */  sll        $t3, $t3, 2
/* 20318 8001F718 016C5823 */  subu       $t3, $t3, $t4
/* 2031C 8001F71C 000B5880 */  sll        $t3, $t3, 2
/* 20320 8001F720 016C5821 */  addu       $t3, $t3, $t4
/* 20324 8001F724 000B5880 */  sll        $t3, $t3, 2
/* 20328 8001F728 016C5823 */  subu       $t3, $t3, $t4
/* 2032C 8001F72C 000B5880 */  sll        $t3, $t3, 2
/* 20330 8001F730 01CB5021 */  addu       $t2, $t6, $t3
/* 20334 8001F734 854D00B8 */  lh         $t5, 0xb8($t2)
/* 20338 8001F738 29A10002 */  slti       $at, $t5, 2
/* 2033C 8001F73C 1020006D */  beqz       $at, .L8001F8F4
/* 20340 8001F740 00000000 */   nop
/* 20344 8001F744 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* 20348 8001F748 3C01800E */  lui        $at, %hi(D_800DC208)
/* 2034C 8001F74C D42AC208 */  ldc1       $f10, %lo(D_800DC208)($at)
/* 20350 8001F750 46003221 */  cvt.d.s    $f8, $f6
/* 20354 8001F754 3C014020 */  lui        $at, 0x4020
/* 20358 8001F758 462A4402 */  mul.d      $f16, $f8, $f10
/* 2035C 8001F75C 44819800 */  mtc1       $at, $f19
/* 20360 8001F760 44809000 */  mtc1       $zero, $f18
/* 20364 8001F764 3C01800E */  lui        $at, 0x800e
/* 20368 8001F768 3C0F8016 */  lui        $t7, 0x8016
/* 2036C 8001F76C 3C088016 */  lui        $t0, 0x8016
/* 20370 8001F770 46328103 */  div.d      $f4, $f16, $f18
/* 20374 8001F774 462021A0 */  cvt.s.d    $f6, $f4
/* 20378 8001F778 E54600F4 */  swc1       $f6, 0xf4($t2)
/* 2037C 8001F77C C7A80018 */  lwc1       $f8, 0x18($sp)
/* 20380 8001F780 D432C210 */  ldc1       $f18, -0x3df0($at)
/* 20384 8001F784 3C014020 */  lui        $at, 0x4020
/* 20388 8001F788 46004287 */  neg.s      $f10, $f8
/* 2038C 8001F78C 44813800 */  mtc1       $at, $f7
/* 20390 8001F790 46005421 */  cvt.d.s    $f16, $f10
/* 20394 8001F794 44803000 */  mtc1       $zero, $f6
/* 20398 8001F798 46328102 */  mul.d      $f4, $f16, $f18
/* 2039C 8001F79C 8FB80020 */  lw         $t8, 0x20($sp)
/* 203A0 8001F7A0 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 203A4 8001F7A4 00184880 */  sll        $t1, $t8, 2
/* 203A8 8001F7A8 01384823 */  subu       $t1, $t1, $t8
/* 203AC 8001F7AC 00094880 */  sll        $t1, $t1, 2
/* 203B0 8001F7B0 01384823 */  subu       $t1, $t1, $t8
/* 203B4 8001F7B4 46262203 */  div.d      $f8, $f4, $f6
/* 203B8 8001F7B8 00094880 */  sll        $t1, $t1, 2
/* 203BC 8001F7BC 01384821 */  addu       $t1, $t1, $t8
/* 203C0 8001F7C0 00094880 */  sll        $t1, $t1, 2
/* 203C4 8001F7C4 01384823 */  subu       $t1, $t1, $t8
/* 203C8 8001F7C8 00094880 */  sll        $t1, $t1, 2
/* 203CC 8001F7CC 01E9C821 */  addu       $t9, $t7, $t1
/* 203D0 8001F7D0 462042A0 */  cvt.s.d    $f10, $f8
/* 203D4 8001F7D4 E72A0108 */  swc1       $f10, 0x108($t9)
/* 203D8 8001F7D8 8FAC0020 */  lw         $t4, 0x20($sp)
/* 203DC 8001F7DC 8D08FB9C */  lw         $t0, -0x464($t0)
/* 203E0 8001F7E0 000C7080 */  sll        $t6, $t4, 2
/* 203E4 8001F7E4 01CC7023 */  subu       $t6, $t6, $t4
/* 203E8 8001F7E8 000E7080 */  sll        $t6, $t6, 2
/* 203EC 8001F7EC 01CC7023 */  subu       $t6, $t6, $t4
/* 203F0 8001F7F0 000E7080 */  sll        $t6, $t6, 2
/* 203F4 8001F7F4 01CC7021 */  addu       $t6, $t6, $t4
/* 203F8 8001F7F8 000E7080 */  sll        $t6, $t6, 2
/* 203FC 8001F7FC 01CC7023 */  subu       $t6, $t6, $t4
/* 20400 8001F800 000E7080 */  sll        $t6, $t6, 2
/* 20404 8001F804 010E5821 */  addu       $t3, $t0, $t6
/* 20408 8001F808 0C004788 */  jal        func_80011E20
/* 2040C 8001F80C C56C00F8 */   lwc1      $f12, 0xf8($t3)
/* 20410 8001F810 3C01800E */  lui        $at, %hi(D_800DC218)
/* 20414 8001F814 D432C218 */  ldc1       $f18, %lo(D_800DC218)($at)
/* 20418 8001F818 46000421 */  cvt.d.s    $f16, $f0
/* 2041C 8001F81C 4630903C */  c.lt.d     $f18, $f16
/* 20420 8001F820 00000000 */  nop
/* 20424 8001F824 45000015 */  bc1f       .L8001F87C
/* 20428 8001F828 00000000 */   nop
/* 2042C 8001F82C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 20430 8001F830 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 20434 8001F834 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 20438 8001F838 000AC080 */  sll        $t8, $t2, 2
/* 2043C 8001F83C 030AC023 */  subu       $t8, $t8, $t2
/* 20440 8001F840 0018C080 */  sll        $t8, $t8, 2
/* 20444 8001F844 030AC023 */  subu       $t8, $t8, $t2
/* 20448 8001F848 0018C080 */  sll        $t8, $t8, 2
/* 2044C 8001F84C 030AC021 */  addu       $t8, $t8, $t2
/* 20450 8001F850 0018C080 */  sll        $t8, $t8, 2
/* 20454 8001F854 030AC023 */  subu       $t8, $t8, $t2
/* 20458 8001F858 0018C080 */  sll        $t8, $t8, 2
/* 2045C 8001F85C 01B87821 */  addu       $t7, $t5, $t8
/* 20460 8001F860 85E900B8 */  lh         $t1, 0xb8($t7)
/* 20464 8001F864 2921FFE2 */  slti       $at, $t1, -0x1e
/* 20468 8001F868 10200012 */  beqz       $at, .L8001F8B4
/* 2046C 8001F86C 00000000 */   nop
/* 20470 8001F870 24190028 */  addiu      $t9, $zero, 0x28
/* 20474 8001F874 1000000F */  b          .L8001F8B4
/* 20478 8001F878 A5F900B8 */   sh        $t9, 0xb8($t7)
.L8001F87C:
/* 2047C 8001F87C 8FA80020 */  lw         $t0, 0x20($sp)
/* 20480 8001F880 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 20484 8001F884 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 20488 8001F888 00087080 */  sll        $t6, $t0, 2
/* 2048C 8001F88C 01C87023 */  subu       $t6, $t6, $t0
/* 20490 8001F890 000E7080 */  sll        $t6, $t6, 2
/* 20494 8001F894 01C87023 */  subu       $t6, $t6, $t0
/* 20498 8001F898 000E7080 */  sll        $t6, $t6, 2
/* 2049C 8001F89C 01C87021 */  addu       $t6, $t6, $t0
/* 204A0 8001F8A0 000E7080 */  sll        $t6, $t6, 2
/* 204A4 8001F8A4 01C87023 */  subu       $t6, $t6, $t0
/* 204A8 8001F8A8 000E7080 */  sll        $t6, $t6, 2
/* 204AC 8001F8AC 018E5821 */  addu       $t3, $t4, $t6
/* 204B0 8001F8B0 A56000B8 */  sh         $zero, 0xb8($t3)
.L8001F8B4:
/* 204B4 8001F8B4 8FAD0020 */  lw         $t5, 0x20($sp)
/* 204B8 8001F8B8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 204BC 8001F8BC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 204C0 8001F8C0 000DC080 */  sll        $t8, $t5, 2
/* 204C4 8001F8C4 030DC023 */  subu       $t8, $t8, $t5
/* 204C8 8001F8C8 0018C080 */  sll        $t8, $t8, 2
/* 204CC 8001F8CC 030DC023 */  subu       $t8, $t8, $t5
/* 204D0 8001F8D0 0018C080 */  sll        $t8, $t8, 2
/* 204D4 8001F8D4 030DC021 */  addu       $t8, $t8, $t5
/* 204D8 8001F8D8 0018C080 */  sll        $t8, $t8, 2
/* 204DC 8001F8DC 030DC023 */  subu       $t8, $t8, $t5
/* 204E0 8001F8E0 0018C080 */  sll        $t8, $t8, 2
/* 204E4 8001F8E4 01584821 */  addu       $t1, $t2, $t8
/* 204E8 8001F8E8 C52400F4 */  lwc1       $f4, 0xf4($t1)
/* 204EC 8001F8EC 10000077 */  b          .L8001FACC
/* 204F0 8001F8F0 E52400F8 */   swc1      $f4, 0xf8($t1)
.L8001F8F4:
/* 204F4 8001F8F4 8FAF0020 */  lw         $t7, 0x20($sp)
/* 204F8 8001F8F8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 204FC 8001F8FC 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 20500 8001F900 000F4080 */  sll        $t0, $t7, 2
/* 20504 8001F904 010F4023 */  subu       $t0, $t0, $t7
/* 20508 8001F908 00084080 */  sll        $t0, $t0, 2
/* 2050C 8001F90C 010F4023 */  subu       $t0, $t0, $t7
/* 20510 8001F910 00084080 */  sll        $t0, $t0, 2
/* 20514 8001F914 010F4021 */  addu       $t0, $t0, $t7
/* 20518 8001F918 00084080 */  sll        $t0, $t0, 2
/* 2051C 8001F91C 010F4023 */  subu       $t0, $t0, $t7
/* 20520 8001F920 00084080 */  sll        $t0, $t0, 2
/* 20524 8001F924 03286021 */  addu       $t4, $t9, $t0
/* 20528 8001F928 0C00479E */  jal        func_80011E78
/* 2052C 8001F92C C58C00F8 */   lwc1      $f12, 0xf8($t4)
/* 20530 8001F930 46000187 */  neg.s      $f6, $f0
/* 20534 8001F934 3C01800E */  lui        $at, %hi(D_800DC220)
/* 20538 8001F938 D42AC220 */  ldc1       $f10, %lo(D_800DC220)($at)
/* 2053C 8001F93C 46003221 */  cvt.d.s    $f8, $f6
/* 20540 8001F940 3C014020 */  lui        $at, 0x4020
/* 20544 8001F944 462A4402 */  mul.d      $f16, $f8, $f10
/* 20548 8001F948 44819800 */  mtc1       $at, $f19
/* 2054C 8001F94C 44809000 */  mtc1       $zero, $f18
/* 20550 8001F950 8FAB0020 */  lw         $t3, 0x20($sp)
/* 20554 8001F954 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20558 8001F958 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2055C 8001F95C 000B6880 */  sll        $t5, $t3, 2
/* 20560 8001F960 01AB6823 */  subu       $t5, $t5, $t3
/* 20564 8001F964 46328103 */  div.d      $f4, $f16, $f18
/* 20568 8001F968 000D6880 */  sll        $t5, $t5, 2
/* 2056C 8001F96C 01AB6823 */  subu       $t5, $t5, $t3
/* 20570 8001F970 000D6880 */  sll        $t5, $t5, 2
/* 20574 8001F974 01AB6821 */  addu       $t5, $t5, $t3
/* 20578 8001F978 000D6880 */  sll        $t5, $t5, 2
/* 2057C 8001F97C 01AB6823 */  subu       $t5, $t5, $t3
/* 20580 8001F980 000D6880 */  sll        $t5, $t5, 2
/* 20584 8001F984 01CD5021 */  addu       $t2, $t6, $t5
/* 20588 8001F988 462021A0 */  cvt.s.d    $f6, $f4
/* 2058C 8001F98C 1000004F */  b          .L8001FACC
/* 20590 8001F990 E54600F4 */   swc1      $f6, 0xf4($t2)
.L8001F994:
/* 20594 8001F994 8FA90020 */  lw         $t1, 0x20($sp)
/* 20598 8001F998 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2059C 8001F99C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 205A0 8001F9A0 00097880 */  sll        $t7, $t1, 2
/* 205A4 8001F9A4 01E97823 */  subu       $t7, $t7, $t1
/* 205A8 8001F9A8 000F7880 */  sll        $t7, $t7, 2
/* 205AC 8001F9AC 01E97823 */  subu       $t7, $t7, $t1
/* 205B0 8001F9B0 000F7880 */  sll        $t7, $t7, 2
/* 205B4 8001F9B4 01E97821 */  addu       $t7, $t7, $t1
/* 205B8 8001F9B8 000F7880 */  sll        $t7, $t7, 2
/* 205BC 8001F9BC 01E97823 */  subu       $t7, $t7, $t1
/* 205C0 8001F9C0 000F7880 */  sll        $t7, $t7, 2
/* 205C4 8001F9C4 030FC821 */  addu       $t9, $t8, $t7
/* 205C8 8001F9C8 8F280268 */  lw         $t0, 0x268($t9)
/* 205CC 8001F9CC 1100003F */  beqz       $t0, .L8001FACC
/* 205D0 8001F9D0 00000000 */   nop
/* 205D4 8001F9D4 8FAC0024 */  lw         $t4, 0x24($sp)
/* 205D8 8001F9D8 000C5880 */  sll        $t3, $t4, 2
/* 205DC 8001F9DC 016C5823 */  subu       $t3, $t3, $t4
/* 205E0 8001F9E0 000B5880 */  sll        $t3, $t3, 2
/* 205E4 8001F9E4 016C5823 */  subu       $t3, $t3, $t4
/* 205E8 8001F9E8 000B5880 */  sll        $t3, $t3, 2
/* 205EC 8001F9EC 016C5821 */  addu       $t3, $t3, $t4
/* 205F0 8001F9F0 000B5880 */  sll        $t3, $t3, 2
/* 205F4 8001F9F4 016C5823 */  subu       $t3, $t3, $t4
/* 205F8 8001F9F8 000B5880 */  sll        $t3, $t3, 2
/* 205FC 8001F9FC 030B7021 */  addu       $t6, $t8, $t3
/* 20600 8001FA00 8DCD0268 */  lw         $t5, 0x268($t6)
/* 20604 8001FA04 11A0000B */  beqz       $t5, .L8001FA34
/* 20608 8001FA08 00000000 */   nop
/* 2060C 8001FA0C C5C800E4 */  lwc1       $f8, 0xe4($t6)
/* 20610 8001FA10 C72A00E4 */  lwc1       $f10, 0xe4($t9)
/* 20614 8001FA14 3C01800E */  lui        $at, %hi(D_800DC228)
/* 20618 8001FA18 D424C228 */  ldc1       $f4, %lo(D_800DC228)($at)
/* 2061C 8001FA1C 460A4401 */  sub.s      $f16, $f8, $f10
/* 20620 8001FA20 460084A1 */  cvt.d.s    $f18, $f16
/* 20624 8001FA24 46249182 */  mul.d      $f6, $f18, $f4
/* 20628 8001FA28 46203220 */  cvt.s.d    $f8, $f6
/* 2062C 8001FA2C 10000027 */  b          .L8001FACC
/* 20630 8001FA30 E72800D8 */   swc1      $f8, 0xd8($t9)
.L8001FA34:
/* 20634 8001FA34 8FA90024 */  lw         $t1, 0x24($sp)
/* 20638 8001FA38 8FAC0020 */  lw         $t4, 0x20($sp)
/* 2063C 8001FA3C 3C0A8016 */  lui        $t2, 0x8016
/* 20640 8001FA40 00097880 */  sll        $t7, $t1, 2
/* 20644 8001FA44 01E97823 */  subu       $t7, $t7, $t1
/* 20648 8001FA48 000F7880 */  sll        $t7, $t7, 2
/* 2064C 8001FA4C 01E97823 */  subu       $t7, $t7, $t1
/* 20650 8001FA50 000F7880 */  sll        $t7, $t7, 2
/* 20654 8001FA54 000CC080 */  sll        $t8, $t4, 2
/* 20658 8001FA58 01E97821 */  addu       $t7, $t7, $t1
/* 2065C 8001FA5C 030CC023 */  subu       $t8, $t8, $t4
/* 20660 8001FA60 8D4AFB9C */  lw         $t2, -0x464($t2)
/* 20664 8001FA64 0018C080 */  sll        $t8, $t8, 2
/* 20668 8001FA68 000F7880 */  sll        $t7, $t7, 2
/* 2066C 8001FA6C 01E97823 */  subu       $t7, $t7, $t1
/* 20670 8001FA70 030CC023 */  subu       $t8, $t8, $t4
/* 20674 8001FA74 0018C080 */  sll        $t8, $t8, 2
/* 20678 8001FA78 000F7880 */  sll        $t7, $t7, 2
/* 2067C 8001FA7C 030CC021 */  addu       $t8, $t8, $t4
/* 20680 8001FA80 014F4021 */  addu       $t0, $t2, $t7
/* 20684 8001FA84 C50A00E4 */  lwc1       $f10, 0xe4($t0)
/* 20688 8001FA88 0018C080 */  sll        $t8, $t8, 2
/* 2068C 8001FA8C 3C01405E */  lui        $at, 0x405e
/* 20690 8001FA90 030CC023 */  subu       $t8, $t8, $t4
/* 20694 8001FA94 44819800 */  mtc1       $at, $f19
/* 20698 8001FA98 44809000 */  mtc1       $zero, $f18
/* 2069C 8001FA9C 0018C080 */  sll        $t8, $t8, 2
/* 206A0 8001FAA0 46005421 */  cvt.d.s    $f16, $f10
/* 206A4 8001FAA4 01585821 */  addu       $t3, $t2, $t8
/* 206A8 8001FAA8 C56600E4 */  lwc1       $f6, 0xe4($t3)
/* 206AC 8001FAAC 46328100 */  add.d      $f4, $f16, $f18
/* 206B0 8001FAB0 3C01800E */  lui        $at, %hi(D_800DC230)
/* 206B4 8001FAB4 D430C230 */  ldc1       $f16, %lo(D_800DC230)($at)
/* 206B8 8001FAB8 46003221 */  cvt.d.s    $f8, $f6
/* 206BC 8001FABC 46282281 */  sub.d      $f10, $f4, $f8
/* 206C0 8001FAC0 46305482 */  mul.d      $f18, $f10, $f16
/* 206C4 8001FAC4 462091A0 */  cvt.s.d    $f6, $f18
/* 206C8 8001FAC8 E56600D8 */  swc1       $f6, 0xd8($t3)
.L8001FACC:
/* 206CC 8001FACC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 206D0 8001FAD0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 206D4 8001FAD4 03E00008 */  jr         $ra
/* 206D8 8001FAD8 00000000 */   nop

glabel func_8001FADC
/* 206DC 8001FADC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 206E0 8001FAE0 3C0F8016 */  lui        $t7, %hi(D_8015F46C)
/* 206E4 8001FAE4 8DEFF46C */  lw         $t7, %lo(D_8015F46C)($t7)
/* 206E8 8001FAE8 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* 206EC 8001FAEC 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* 206F0 8001FAF0 AFA00004 */  sw         $zero, 4($sp)
/* 206F4 8001FAF4 11E0005A */  beqz       $t7, .L8001FC60
/* 206F8 8001FAF8 AFAE000C */   sw        $t6, 0xc($sp)
.L8001FAFC:
/* 206FC 8001FAFC 8FB90004 */  lw         $t9, 4($sp)
/* 20700 8001FB00 3C098016 */  lui        $t1, %hi(D_8015F470)
/* 20704 8001FB04 2418FFFF */  addiu      $t8, $zero, -1
/* 20708 8001FB08 00194080 */  sll        $t0, $t9, 2
/* 2070C 8001FB0C 01194021 */  addu       $t0, $t0, $t9
/* 20710 8001FB10 000840C0 */  sll        $t0, $t0, 3
/* 20714 8001FB14 2529F470 */  addiu      $t1, $t1, %lo(D_8015F470)
/* 20718 8001FB18 AFB80008 */  sw         $t8, 8($sp)
/* 2071C 8001FB1C 01095021 */  addu       $t2, $t0, $t1
/* 20720 8001FB20 8D4B000C */  lw         $t3, 0xc($t2)
/* 20724 8001FB24 1564001F */  bne        $t3, $a0, .L8001FBA4
/* 20728 8001FB28 00000000 */   nop
/* 2072C 8001FB2C 8D4C0010 */  lw         $t4, 0x10($t2)
/* 20730 8001FB30 00047080 */  sll        $t6, $a0, 2
/* 20734 8001FB34 01C47023 */  subu       $t6, $t6, $a0
/* 20738 8001FB38 000CC880 */  sll        $t9, $t4, 2
/* 2073C 8001FB3C 032CC823 */  subu       $t9, $t9, $t4
/* 20740 8001FB40 0019C880 */  sll        $t9, $t9, 2
/* 20744 8001FB44 000E7080 */  sll        $t6, $t6, 2
/* 20748 8001FB48 01C47023 */  subu       $t6, $t6, $a0
/* 2074C 8001FB4C 032CC823 */  subu       $t9, $t9, $t4
/* 20750 8001FB50 0019C880 */  sll        $t9, $t9, 2
/* 20754 8001FB54 000E7080 */  sll        $t6, $t6, 2
/* 20758 8001FB58 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2075C 8001FB5C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 20760 8001FB60 01C47021 */  addu       $t6, $t6, $a0
/* 20764 8001FB64 032CC821 */  addu       $t9, $t9, $t4
/* 20768 8001FB68 0019C880 */  sll        $t9, $t9, 2
/* 2076C 8001FB6C 000E7080 */  sll        $t6, $t6, 2
/* 20770 8001FB70 01C47023 */  subu       $t6, $t6, $a0
/* 20774 8001FB74 032CC823 */  subu       $t9, $t9, $t4
/* 20778 8001FB78 0019C880 */  sll        $t9, $t9, 2
/* 2077C 8001FB7C 000E7080 */  sll        $t6, $t6, 2
/* 20780 8001FB80 AFAC0008 */  sw         $t4, 8($sp)
/* 20784 8001FB84 01AE7821 */  addu       $t7, $t5, $t6
/* 20788 8001FB88 01B94021 */  addu       $t0, $t5, $t9
/* 2078C 8001FB8C 8D09006C */  lw         $t1, 0x6c($t0)
/* 20790 8001FB90 8DF8006C */  lw         $t8, 0x6c($t7)
/* 20794 8001FB94 1309002A */  beq        $t8, $t1, .L8001FC40
/* 20798 8001FB98 00000000 */   nop
/* 2079C 8001FB9C 10000028 */  b          .L8001FC40
/* 207A0 8001FBA0 AFAC000C */   sw        $t4, 0xc($sp)
.L8001FBA4:
/* 207A4 8001FBA4 8FAB0004 */  lw         $t3, 4($sp)
/* 207A8 8001FBA8 3C0E8016 */  lui        $t6, %hi(D_8015F470)
/* 207AC 8001FBAC 25CEF470 */  addiu      $t6, $t6, %lo(D_8015F470)
/* 207B0 8001FBB0 000B5080 */  sll        $t2, $t3, 2
/* 207B4 8001FBB4 014B5021 */  addu       $t2, $t2, $t3
/* 207B8 8001FBB8 000A50C0 */  sll        $t2, $t2, 3
/* 207BC 8001FBBC 014E7821 */  addu       $t7, $t2, $t6
/* 207C0 8001FBC0 8DED0010 */  lw         $t5, 0x10($t7)
/* 207C4 8001FBC4 15A4001E */  bne        $t5, $a0, .L8001FC40
/* 207C8 8001FBC8 00000000 */   nop
/* 207CC 8001FBCC 8DF9000C */  lw         $t9, 0xc($t7)
/* 207D0 8001FBD0 0004C080 */  sll        $t8, $a0, 2
/* 207D4 8001FBD4 0304C023 */  subu       $t8, $t8, $a0
/* 207D8 8001FBD8 00195880 */  sll        $t3, $t9, 2
/* 207DC 8001FBDC 01795823 */  subu       $t3, $t3, $t9
/* 207E0 8001FBE0 000B5880 */  sll        $t3, $t3, 2
/* 207E4 8001FBE4 0018C080 */  sll        $t8, $t8, 2
/* 207E8 8001FBE8 0304C023 */  subu       $t8, $t8, $a0
/* 207EC 8001FBEC 01795823 */  subu       $t3, $t3, $t9
/* 207F0 8001FBF0 000B5880 */  sll        $t3, $t3, 2
/* 207F4 8001FBF4 0018C080 */  sll        $t8, $t8, 2
/* 207F8 8001FBF8 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 207FC 8001FBFC 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 20800 8001FC00 0304C021 */  addu       $t8, $t8, $a0
/* 20804 8001FC04 01795821 */  addu       $t3, $t3, $t9
/* 20808 8001FC08 000B5880 */  sll        $t3, $t3, 2
/* 2080C 8001FC0C 0018C080 */  sll        $t8, $t8, 2
/* 20810 8001FC10 0304C023 */  subu       $t8, $t8, $a0
/* 20814 8001FC14 01795823 */  subu       $t3, $t3, $t9
/* 20818 8001FC18 000B5880 */  sll        $t3, $t3, 2
/* 2081C 8001FC1C 0018C080 */  sll        $t8, $t8, 2
/* 20820 8001FC20 AFB90008 */  sw         $t9, 8($sp)
/* 20824 8001FC24 01184821 */  addu       $t1, $t0, $t8
/* 20828 8001FC28 010B5021 */  addu       $t2, $t0, $t3
/* 2082C 8001FC2C 8D4E006C */  lw         $t6, 0x6c($t2)
/* 20830 8001FC30 8D2C006C */  lw         $t4, 0x6c($t1)
/* 20834 8001FC34 118E0002 */  beq        $t4, $t6, .L8001FC40
/* 20838 8001FC38 00000000 */   nop
/* 2083C 8001FC3C AFB9000C */  sw         $t9, 0xc($sp)
.L8001FC40:
/* 20840 8001FC40 8FAD0004 */  lw         $t5, 4($sp)
/* 20844 8001FC44 3C188016 */  lui        $t8, %hi(D_8015F46C)
/* 20848 8001FC48 8F18F46C */  lw         $t8, %lo(D_8015F46C)($t8)
/* 2084C 8001FC4C 25AF0001 */  addiu      $t7, $t5, 1
/* 20850 8001FC50 AFAF0004 */  sw         $t7, 4($sp)
/* 20854 8001FC54 01F8082B */  sltu       $at, $t7, $t8
/* 20858 8001FC58 1420FFA8 */  bnez       $at, .L8001FAFC
/* 2085C 8001FC5C 00000000 */   nop
.L8001FC60:
/* 20860 8001FC60 8FA2000C */  lw         $v0, 0xc($sp)
/* 20864 8001FC64 03E00008 */  jr         $ra
/* 20868 8001FC68 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8001FC6C
/* 2086C 8001FC6C 00047880 */  sll        $t7, $a0, 2
/* 20870 8001FC70 01E47823 */  subu       $t7, $t7, $a0
/* 20874 8001FC74 000F7880 */  sll        $t7, $t7, 2
/* 20878 8001FC78 01E47823 */  subu       $t7, $t7, $a0
/* 2087C 8001FC7C 000F7880 */  sll        $t7, $t7, 2
/* 20880 8001FC80 01E47821 */  addu       $t7, $t7, $a0
/* 20884 8001FC84 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20888 8001FC88 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2088C 8001FC8C 000F7880 */  sll        $t7, $t7, 2
/* 20890 8001FC90 01E47823 */  subu       $t7, $t7, $a0
/* 20894 8001FC94 000F7880 */  sll        $t7, $t7, 2
/* 20898 8001FC98 01CFC021 */  addu       $t8, $t6, $t7
/* 2089C 8001FC9C 8F190278 */  lw         $t9, 0x278($t8)
/* 208A0 8001FCA0 2401006B */  addiu      $at, $zero, 0x6b
/* 208A4 8001FCA4 17210003 */  bne        $t9, $at, .L8001FCB4
/* 208A8 8001FCA8 00000000 */   nop
/* 208AC 8001FCAC 03E00008 */  jr         $ra
/* 208B0 8001FCB0 24020001 */   addiu     $v0, $zero, 1
.L8001FCB4:
/* 208B4 8001FCB4 00001025 */  or         $v0, $zero, $zero
/* 208B8 8001FCB8 03E00008 */  jr         $ra
/* 208BC 8001FCBC 00000000 */   nop

glabel func_8001FCC0
/* 208C0 8001FCC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 208C4 8001FCC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 208C8 8001FCC8 AFA40018 */  sw         $a0, 0x18($sp)
/* 208CC 8001FCCC AFA5001C */  sw         $a1, 0x1c($sp)
/* 208D0 8001FCD0 8FAE001C */  lw         $t6, 0x1c($sp)
/* 208D4 8001FCD4 05C00057 */  bltz       $t6, .L8001FE34
/* 208D8 8001FCD8 00000000 */   nop
/* 208DC 8001FCDC 000EC080 */  sll        $t8, $t6, 2
/* 208E0 8001FCE0 030EC023 */  subu       $t8, $t8, $t6
/* 208E4 8001FCE4 0018C080 */  sll        $t8, $t8, 2
/* 208E8 8001FCE8 030EC023 */  subu       $t8, $t8, $t6
/* 208EC 8001FCEC 0018C080 */  sll        $t8, $t8, 2
/* 208F0 8001FCF0 030EC021 */  addu       $t8, $t8, $t6
/* 208F4 8001FCF4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 208F8 8001FCF8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 208FC 8001FCFC 0018C080 */  sll        $t8, $t8, 2
/* 20900 8001FD00 030EC023 */  subu       $t8, $t8, $t6
/* 20904 8001FD04 0018C080 */  sll        $t8, $t8, 2
/* 20908 8001FD08 01F8C821 */  addu       $t9, $t7, $t8
/* 2090C 8001FD0C 8F28006C */  lw         $t0, 0x6c($t9)
/* 20910 8001FD10 05000048 */  bltz       $t0, .L8001FE34
/* 20914 8001FD14 00000000 */   nop
/* 20918 8001FD18 8FA90018 */  lw         $t1, 0x18($sp)
/* 2091C 8001FD1C 00095080 */  sll        $t2, $t1, 2
/* 20920 8001FD20 01495023 */  subu       $t2, $t2, $t1
/* 20924 8001FD24 000A5080 */  sll        $t2, $t2, 2
/* 20928 8001FD28 01495023 */  subu       $t2, $t2, $t1
/* 2092C 8001FD2C 000A5080 */  sll        $t2, $t2, 2
/* 20930 8001FD30 01495021 */  addu       $t2, $t2, $t1
/* 20934 8001FD34 000A5080 */  sll        $t2, $t2, 2
/* 20938 8001FD38 01495023 */  subu       $t2, $t2, $t1
/* 2093C 8001FD3C 000A5080 */  sll        $t2, $t2, 2
/* 20940 8001FD40 01EA5821 */  addu       $t3, $t7, $t2
/* 20944 8001FD44 8D6C00A4 */  lw         $t4, 0xa4($t3)
/* 20948 8001FD48 C56600E0 */  lwc1       $f6, 0xe0($t3)
/* 2094C 8001FD4C C56A00E8 */  lwc1       $f10, 0xe8($t3)
/* 20950 8001FD50 000C6880 */  sll        $t5, $t4, 2
/* 20954 8001FD54 01AC6823 */  subu       $t5, $t5, $t4
/* 20958 8001FD58 000D6880 */  sll        $t5, $t5, 2
/* 2095C 8001FD5C 01AC6823 */  subu       $t5, $t5, $t4
/* 20960 8001FD60 000D6880 */  sll        $t5, $t5, 2
/* 20964 8001FD64 01AC6821 */  addu       $t5, $t5, $t4
/* 20968 8001FD68 000D6880 */  sll        $t5, $t5, 2
/* 2096C 8001FD6C 01AC6823 */  subu       $t5, $t5, $t4
/* 20970 8001FD70 000D6880 */  sll        $t5, $t5, 2
/* 20974 8001FD74 01ED7021 */  addu       $t6, $t7, $t5
/* 20978 8001FD78 C5C400E0 */  lwc1       $f4, 0xe0($t6)
/* 2097C 8001FD7C C5C800E8 */  lwc1       $f8, 0xe8($t6)
/* 20980 8001FD80 46062301 */  sub.s      $f12, $f4, $f6
/* 20984 8001FD84 0C00475A */  jal        func_80011D68
/* 20988 8001FD88 460A4381 */   sub.s     $f14, $f8, $f10
/* 2098C 8001FD8C 8FB90018 */  lw         $t9, 0x18($sp)
/* 20990 8001FD90 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 20994 8001FD94 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 20998 8001FD98 00194080 */  sll        $t0, $t9, 2
/* 2099C 8001FD9C 01194023 */  subu       $t0, $t0, $t9
/* 209A0 8001FDA0 00084080 */  sll        $t0, $t0, 2
/* 209A4 8001FDA4 01194023 */  subu       $t0, $t0, $t9
/* 209A8 8001FDA8 00084080 */  sll        $t0, $t0, 2
/* 209AC 8001FDAC 01194021 */  addu       $t0, $t0, $t9
/* 209B0 8001FDB0 00084080 */  sll        $t0, $t0, 2
/* 209B4 8001FDB4 01194023 */  subu       $t0, $t0, $t9
/* 209B8 8001FDB8 00084080 */  sll        $t0, $t0, 2
/* 209BC 8001FDBC 03084821 */  addu       $t1, $t8, $t0
/* 209C0 8001FDC0 E52000AC */  swc1       $f0, 0xac($t1)
/* 209C4 8001FDC4 8FAC0018 */  lw         $t4, 0x18($sp)
/* 209C8 8001FDC8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 209CC 8001FDCC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 209D0 8001FDD0 000C7880 */  sll        $t7, $t4, 2
/* 209D4 8001FDD4 01EC7823 */  subu       $t7, $t7, $t4
/* 209D8 8001FDD8 000F7880 */  sll        $t7, $t7, 2
/* 209DC 8001FDDC 01EC7823 */  subu       $t7, $t7, $t4
/* 209E0 8001FDE0 000F7880 */  sll        $t7, $t7, 2
/* 209E4 8001FDE4 01EC7821 */  addu       $t7, $t7, $t4
/* 209E8 8001FDE8 000F7880 */  sll        $t7, $t7, 2
/* 209EC 8001FDEC 01EC7823 */  subu       $t7, $t7, $t4
/* 209F0 8001FDF0 000F7880 */  sll        $t7, $t7, 2
/* 209F4 8001FDF4 014F6821 */  addu       $t5, $t2, $t7
/* 209F8 8001FDF8 C5B000AC */  lwc1       $f16, 0xac($t5)
/* 209FC 8001FDFC 3C014049 */  lui        $at, 0x4049
/* 20A00 8001FE00 44812800 */  mtc1       $at, $f5
/* 20A04 8001FE04 44802000 */  mtc1       $zero, $f4
/* 20A08 8001FE08 460084A1 */  cvt.d.s    $f18, $f16
/* 20A0C 8001FE0C 4624903C */  c.lt.d     $f18, $f4
/* 20A10 8001FE10 00000000 */  nop
/* 20A14 8001FE14 45000004 */  bc1f       .L8001FE28
/* 20A18 8001FE18 3C014248 */   lui       $at, 0x4248
/* 20A1C 8001FE1C 44813000 */  mtc1       $at, $f6
/* 20A20 8001FE20 00000000 */  nop
/* 20A24 8001FE24 E5A600AC */  swc1       $f6, 0xac($t5)
.L8001FE28:
/* 20A28 8001FE28 8FA40018 */  lw         $a0, 0x18($sp)
/* 20A2C 8001FE2C 0C007D44 */  jal        func_8001F510
/* 20A30 8001FE30 8FA5001C */   lw        $a1, 0x1c($sp)
.L8001FE34:
/* 20A34 8001FE34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20A38 8001FE38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20A3C 8001FE3C 03E00008 */  jr         $ra
/* 20A40 8001FE40 00000000 */   nop

glabel func_8001FE44
/* 20A44 8001FE44 AFA50004 */  sw         $a1, 4($sp)
/* 20A48 8001FE48 00047880 */  sll        $t7, $a0, 2
/* 20A4C 8001FE4C 01E47823 */  subu       $t7, $t7, $a0
/* 20A50 8001FE50 000F7880 */  sll        $t7, $t7, 2
/* 20A54 8001FE54 01E47823 */  subu       $t7, $t7, $a0
/* 20A58 8001FE58 000F7880 */  sll        $t7, $t7, 2
/* 20A5C 8001FE5C 01E47821 */  addu       $t7, $t7, $a0
/* 20A60 8001FE60 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20A64 8001FE64 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 20A68 8001FE68 000F7880 */  sll        $t7, $t7, 2
/* 20A6C 8001FE6C 01E47823 */  subu       $t7, $t7, $a0
/* 20A70 8001FE70 000F7880 */  sll        $t7, $t7, 2
/* 20A74 8001FE74 01CFC021 */  addu       $t8, $t6, $t7
/* 20A78 8001FE78 C70400FC */  lwc1       $f4, 0xfc($t8)
/* 20A7C 8001FE7C C7A60004 */  lwc1       $f6, 4($sp)
/* 20A80 8001FE80 0004C880 */  sll        $t9, $a0, 2
/* 20A84 8001FE84 0324C823 */  subu       $t9, $t9, $a0
/* 20A88 8001FE88 0019C880 */  sll        $t9, $t9, 2
/* 20A8C 8001FE8C 46062202 */  mul.s      $f8, $f4, $f6
/* 20A90 8001FE90 0324C823 */  subu       $t9, $t9, $a0
/* 20A94 8001FE94 0019C880 */  sll        $t9, $t9, 2
/* 20A98 8001FE98 0324C821 */  addu       $t9, $t9, $a0
/* 20A9C 8001FE9C 00045080 */  sll        $t2, $a0, 2
/* 20AA0 8001FEA0 0019C880 */  sll        $t9, $t9, 2
/* 20AA4 8001FEA4 01445023 */  subu       $t2, $t2, $a0
/* 20AA8 8001FEA8 0324C823 */  subu       $t9, $t9, $a0
/* 20AAC 8001FEAC 000A5080 */  sll        $t2, $t2, 2
/* 20AB0 8001FEB0 0019C880 */  sll        $t9, $t9, 2
/* 20AB4 8001FEB4 01445023 */  subu       $t2, $t2, $a0
/* 20AB8 8001FEB8 000A5080 */  sll        $t2, $t2, 2
/* 20ABC 8001FEBC 01D94021 */  addu       $t0, $t6, $t9
/* 20AC0 8001FEC0 E50800D4 */  swc1       $f8, 0xd4($t0)
/* 20AC4 8001FEC4 01445021 */  addu       $t2, $t2, $a0
/* 20AC8 8001FEC8 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 20ACC 8001FECC 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 20AD0 8001FED0 000A5080 */  sll        $t2, $t2, 2
/* 20AD4 8001FED4 01445023 */  subu       $t2, $t2, $a0
/* 20AD8 8001FED8 000A5080 */  sll        $t2, $t2, 2
/* 20ADC 8001FEDC 012A5821 */  addu       $t3, $t1, $t2
/* 20AE0 8001FEE0 C56A0100 */  lwc1       $f10, 0x100($t3)
/* 20AE4 8001FEE4 C7B00004 */  lwc1       $f16, 4($sp)
/* 20AE8 8001FEE8 00046080 */  sll        $t4, $a0, 2
/* 20AEC 8001FEEC 01846023 */  subu       $t4, $t4, $a0
/* 20AF0 8001FEF0 000C6080 */  sll        $t4, $t4, 2
/* 20AF4 8001FEF4 46105482 */  mul.s      $f18, $f10, $f16
/* 20AF8 8001FEF8 01846023 */  subu       $t4, $t4, $a0
/* 20AFC 8001FEFC 000C6080 */  sll        $t4, $t4, 2
/* 20B00 8001FF00 01846021 */  addu       $t4, $t4, $a0
/* 20B04 8001FF04 000C6080 */  sll        $t4, $t4, 2
/* 20B08 8001FF08 01846023 */  subu       $t4, $t4, $a0
/* 20B0C 8001FF0C 000C6080 */  sll        $t4, $t4, 2
/* 20B10 8001FF10 012C6821 */  addu       $t5, $t1, $t4
/* 20B14 8001FF14 E5B200DC */  swc1       $f18, 0xdc($t5)
/* 20B18 8001FF18 03E00008 */  jr         $ra
/* 20B1C 8001FF1C 00000000 */   nop

glabel func_8001FF20
/* 20B20 8001FF20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20B24 8001FF24 AFBF001C */  sw         $ra, 0x1c($sp)
/* 20B28 8001FF28 AFA40030 */  sw         $a0, 0x30($sp)
/* 20B2C 8001FF2C AFB00018 */  sw         $s0, 0x18($sp)
/* 20B30 8001FF30 8FAF0030 */  lw         $t7, 0x30($sp)
/* 20B34 8001FF34 3C0E8016 */  lui        $t6, 0x8016
/* 20B38 8001FF38 44802000 */  mtc1       $zero, $f4
/* 20B3C 8001FF3C 000FC080 */  sll        $t8, $t7, 2
/* 20B40 8001FF40 030FC023 */  subu       $t8, $t8, $t7
/* 20B44 8001FF44 0018C080 */  sll        $t8, $t8, 2
/* 20B48 8001FF48 030FC023 */  subu       $t8, $t8, $t7
/* 20B4C 8001FF4C 0018C080 */  sll        $t8, $t8, 2
/* 20B50 8001FF50 030FC021 */  addu       $t8, $t8, $t7
/* 20B54 8001FF54 8DCEFB9C */  lw         $t6, -0x464($t6)
/* 20B58 8001FF58 0018C080 */  sll        $t8, $t8, 2
/* 20B5C 8001FF5C 030FC023 */  subu       $t8, $t8, $t7
/* 20B60 8001FF60 0018C080 */  sll        $t8, $t8, 2
/* 20B64 8001FF64 E7A40028 */  swc1       $f4, 0x28($sp)
/* 20B68 8001FF68 01D8C821 */  addu       $t9, $t6, $t8
/* 20B6C 8001FF6C 8F28007C */  lw         $t0, 0x7c($t9)
/* 20B70 8001FF70 19000006 */  blez       $t0, .L8001FF8C
/* 20B74 8001FF74 00000000 */   nop
/* 20B78 8001FF78 44803000 */  mtc1       $zero, $f6
/* 20B7C 8001FF7C 2509FFFF */  addiu      $t1, $t0, -1
/* 20B80 8001FF80 AF29007C */  sw         $t1, 0x7c($t9)
/* 20B84 8001FF84 10000077 */  b          .L80020164
/* 20B88 8001FF88 E7A60028 */   swc1      $f6, 0x28($sp)
.L8001FF8C:
/* 20B8C 8001FF8C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 20B90 8001FF90 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 20B94 8001FF94 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 20B98 8001FF98 000B6080 */  sll        $t4, $t3, 2
/* 20B9C 8001FF9C 018B6023 */  subu       $t4, $t4, $t3
/* 20BA0 8001FFA0 000C6080 */  sll        $t4, $t4, 2
/* 20BA4 8001FFA4 018B6023 */  subu       $t4, $t4, $t3
/* 20BA8 8001FFA8 000C6080 */  sll        $t4, $t4, 2
/* 20BAC 8001FFAC 018B6021 */  addu       $t4, $t4, $t3
/* 20BB0 8001FFB0 000C6080 */  sll        $t4, $t4, 2
/* 20BB4 8001FFB4 018B6023 */  subu       $t4, $t4, $t3
/* 20BB8 8001FFB8 000C6080 */  sll        $t4, $t4, 2
/* 20BBC 8001FFBC 014C6821 */  addu       $t5, $t2, $t4
/* 20BC0 8001FFC0 8DAF00A4 */  lw         $t7, 0xa4($t5)
/* 20BC4 8001FFC4 01602025 */  or         $a0, $t3, $zero
/* 20BC8 8001FFC8 AFAF002C */  sw         $t7, 0x2c($sp)
/* 20BCC 8001FFCC 8DB80098 */  lw         $t8, 0x98($t5)
/* 20BD0 8001FFD0 AFB80004 */  sw         $t8, 4($sp)
/* 20BD4 8001FFD4 8DAE009C */  lw         $t6, 0x9c($t5)
/* 20BD8 8001FFD8 8FA50004 */  lw         $a1, 4($sp)
/* 20BDC 8001FFDC AFAE0008 */  sw         $t6, 8($sp)
/* 20BE0 8001FFE0 8DB800A0 */  lw         $t8, 0xa0($t5)
/* 20BE4 8001FFE4 8FA60008 */  lw         $a2, 8($sp)
/* 20BE8 8001FFE8 AFB8000C */  sw         $t8, 0xc($sp)
/* 20BEC 8001FFEC 0C00844F */  jal        func_8002113C
/* 20BF0 8001FFF0 8FA7000C */   lw        $a3, 0xc($sp)
/* 20BF4 8001FFF4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 20BF8 8001FFF8 8FA9002C */  lw         $t1, 0x2c($sp)
/* 20BFC 8001FFFC 3C088016 */  lui        $t0, %hi(D_8015FBA0)
/* 20C00 80020000 000F5880 */  sll        $t3, $t7, 2
/* 20C04 80020004 016F5823 */  subu       $t3, $t3, $t7
/* 20C08 80020008 8D08FBA0 */  lw         $t0, %lo(D_8015FBA0)($t0)
/* 20C0C 8002000C 000B5880 */  sll        $t3, $t3, 2
/* 20C10 80020010 0009C8C0 */  sll        $t9, $t1, 3
/* 20C14 80020014 016F5823 */  subu       $t3, $t3, $t7
/* 20C18 80020018 0329C823 */  subu       $t9, $t9, $t1
/* 20C1C 8002001C 0019C880 */  sll        $t9, $t9, 2
/* 20C20 80020020 000B5880 */  sll        $t3, $t3, 2
/* 20C24 80020024 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 20C28 80020028 016F5821 */  addu       $t3, $t3, $t7
/* 20C2C 8002002C 01195021 */  addu       $t2, $t0, $t9
/* 20C30 80020030 C5480018 */  lwc1       $f8, 0x18($t2)
/* 20C34 80020034 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 20C38 80020038 000B5880 */  sll        $t3, $t3, 2
/* 20C3C 8002003C 016F5823 */  subu       $t3, $t3, $t7
/* 20C40 80020040 000B5880 */  sll        $t3, $t3, 2
/* 20C44 80020044 E7A80028 */  swc1       $f8, 0x28($sp)
/* 20C48 80020048 018B6821 */  addu       $t5, $t4, $t3
/* 20C4C 8002004C 8DAE0080 */  lw         $t6, 0x80($t5)
/* 20C50 80020050 2401000C */  addiu      $at, $zero, 0xc
/* 20C54 80020054 15C10043 */  bne        $t6, $at, .L80020164
/* 20C58 80020058 00000000 */   nop
/* 20C5C 8002005C 8D500014 */  lw         $s0, 0x14($t2)
/* 20C60 80020060 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 20C64 80020064 24180012 */  addiu      $t8, $zero, 0x12
/* 20C68 80020068 ADB000A4 */  sw         $s0, 0xa4($t5)
/* 20C6C 8002006C 8FA80030 */  lw         $t0, 0x30($sp)
/* 20C70 80020070 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 20C74 80020074 AFB0002C */  sw         $s0, 0x2c($sp)
/* 20C78 80020078 0008C880 */  sll        $t9, $t0, 2
/* 20C7C 8002007C 0328C823 */  subu       $t9, $t9, $t0
/* 20C80 80020080 0019C880 */  sll        $t9, $t9, 2
/* 20C84 80020084 0328C823 */  subu       $t9, $t9, $t0
/* 20C88 80020088 0019C880 */  sll        $t9, $t9, 2
/* 20C8C 8002008C 0328C821 */  addu       $t9, $t9, $t0
/* 20C90 80020090 0019C880 */  sll        $t9, $t9, 2
/* 20C94 80020094 0328C823 */  subu       $t9, $t9, $t0
/* 20C98 80020098 0019C880 */  sll        $t9, $t9, 2
/* 20C9C 8002009C 01397821 */  addu       $t7, $t1, $t9
/* 20CA0 800200A0 ADF80080 */  sw         $t8, 0x80($t7)
/* 20CA4 800200A4 8FA90030 */  lw         $t1, 0x30($sp)
/* 20CA8 800200A8 8FAB002C */  lw         $t3, 0x2c($sp)
/* 20CAC 800200AC 3C0C8016 */  lui        $t4, %hi(D_8015FBA0)
/* 20CB0 800200B0 0009C880 */  sll        $t9, $t1, 2
/* 20CB4 800200B4 0329C823 */  subu       $t9, $t9, $t1
/* 20CB8 800200B8 0019C880 */  sll        $t9, $t9, 2
/* 20CBC 800200BC 8D8CFBA0 */  lw         $t4, %lo(D_8015FBA0)($t4)
/* 20CC0 800200C0 0329C823 */  subu       $t9, $t9, $t1
/* 20CC4 800200C4 000B70C0 */  sll        $t6, $t3, 3
/* 20CC8 800200C8 0019C880 */  sll        $t9, $t9, 2
/* 20CCC 800200CC 01CB7023 */  subu       $t6, $t6, $t3
/* 20CD0 800200D0 000E7080 */  sll        $t6, $t6, 2
/* 20CD4 800200D4 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 20CD8 800200D8 0329C821 */  addu       $t9, $t9, $t1
/* 20CDC 800200DC 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 20CE0 800200E0 0019C880 */  sll        $t9, $t9, 2
/* 20CE4 800200E4 018E5021 */  addu       $t2, $t4, $t6
/* 20CE8 800200E8 8D4D000C */  lw         $t5, 0xc($t2)
/* 20CEC 800200EC 0329C823 */  subu       $t9, $t9, $t1
/* 20CF0 800200F0 0019C880 */  sll        $t9, $t9, 2
/* 20CF4 800200F4 0119C021 */  addu       $t8, $t0, $t9
/* 20CF8 800200F8 AF0D007C */  sw         $t5, 0x7c($t8)
/* 20CFC 800200FC 8FAB0030 */  lw         $t3, 0x30($sp)
/* 20D00 80020100 8FA9002C */  lw         $t1, 0x2c($sp)
/* 20D04 80020104 3C0A8016 */  lui        $t2, %hi(D_8015FBA0)
/* 20D08 80020108 000B6080 */  sll        $t4, $t3, 2
/* 20D0C 8002010C 018B6023 */  subu       $t4, $t4, $t3
/* 20D10 80020110 000C6080 */  sll        $t4, $t4, 2
/* 20D14 80020114 8D4AFBA0 */  lw         $t2, %lo(D_8015FBA0)($t2)
/* 20D18 80020118 018B6023 */  subu       $t4, $t4, $t3
/* 20D1C 8002011C 000940C0 */  sll        $t0, $t1, 3
/* 20D20 80020120 000C6080 */  sll        $t4, $t4, 2
/* 20D24 80020124 01094023 */  subu       $t0, $t0, $t1
/* 20D28 80020128 00084080 */  sll        $t0, $t0, 2
/* 20D2C 8002012C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 20D30 80020130 018B6021 */  addu       $t4, $t4, $t3
/* 20D34 80020134 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 20D38 80020138 000C6080 */  sll        $t4, $t4, 2
/* 20D3C 8002013C 0148C821 */  addu       $t9, $t2, $t0
/* 20D40 80020140 8F380000 */  lw         $t8, ($t9)
/* 20D44 80020144 018B6023 */  subu       $t4, $t4, $t3
/* 20D48 80020148 000C6080 */  sll        $t4, $t4, 2
/* 20D4C 8002014C 01EC7021 */  addu       $t6, $t7, $t4
/* 20D50 80020150 ADD80098 */  sw         $t8, 0x98($t6)
/* 20D54 80020154 8F2D0004 */  lw         $t5, 4($t9)
/* 20D58 80020158 ADCD009C */  sw         $t5, 0x9c($t6)
/* 20D5C 8002015C 8F380008 */  lw         $t8, 8($t9)
/* 20D60 80020160 ADD800A0 */  sw         $t8, 0xa0($t6)
.L80020164:
/* 20D64 80020164 8FA40030 */  lw         $a0, 0x30($sp)
/* 20D68 80020168 0C007F91 */  jal        func_8001FE44
/* 20D6C 8002016C 8FA50028 */   lw        $a1, 0x28($sp)
/* 20D70 80020170 8FBF001C */  lw         $ra, 0x1c($sp)
/* 20D74 80020174 8FB00018 */  lw         $s0, 0x18($sp)
/* 20D78 80020178 27BD0030 */  addiu      $sp, $sp, 0x30
/* 20D7C 8002017C 03E00008 */  jr         $ra
/* 20D80 80020180 00000000 */   nop

glabel func_80020184
/* 20D84 80020184 00047880 */  sll        $t7, $a0, 2
/* 20D88 80020188 01E47823 */  subu       $t7, $t7, $a0
/* 20D8C 8002018C 000F7880 */  sll        $t7, $t7, 2
/* 20D90 80020190 01E47823 */  subu       $t7, $t7, $a0
/* 20D94 80020194 000F7880 */  sll        $t7, $t7, 2
/* 20D98 80020198 01E47821 */  addu       $t7, $t7, $a0
/* 20D9C 8002019C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20DA0 800201A0 00044080 */  sll        $t0, $a0, 2
/* 20DA4 800201A4 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 20DA8 800201A8 000F7880 */  sll        $t7, $t7, 2
/* 20DAC 800201AC 01044023 */  subu       $t0, $t0, $a0
/* 20DB0 800201B0 44802000 */  mtc1       $zero, $f4
/* 20DB4 800201B4 01E47823 */  subu       $t7, $t7, $a0
/* 20DB8 800201B8 00084080 */  sll        $t0, $t0, 2
/* 20DBC 800201BC 000F7880 */  sll        $t7, $t7, 2
/* 20DC0 800201C0 01044023 */  subu       $t0, $t0, $a0
/* 20DC4 800201C4 00084080 */  sll        $t0, $t0, 2
/* 20DC8 800201C8 00046080 */  sll        $t4, $a0, 2
/* 20DCC 800201CC 01CFC021 */  addu       $t8, $t6, $t7
/* 20DD0 800201D0 01846023 */  subu       $t4, $t4, $a0
/* 20DD4 800201D4 01044021 */  addu       $t0, $t0, $a0
/* 20DD8 800201D8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 20DDC 800201DC E7040290 */  swc1       $f4, 0x290($t8)
/* 20DE0 800201E0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 20DE4 800201E4 00084080 */  sll        $t0, $t0, 2
/* 20DE8 800201E8 000C6080 */  sll        $t4, $t4, 2
/* 20DEC 800201EC 01846023 */  subu       $t4, $t4, $a0
/* 20DF0 800201F0 01044023 */  subu       $t0, $t0, $a0
/* 20DF4 800201F4 00084080 */  sll        $t0, $t0, 2
/* 20DF8 800201F8 000C6080 */  sll        $t4, $t4, 2
/* 20DFC 800201FC 01846021 */  addu       $t4, $t4, $a0
/* 20E00 80020200 00047880 */  sll        $t7, $a0, 2
/* 20E04 80020204 03284821 */  addu       $t1, $t9, $t0
/* 20E08 80020208 8D2A0288 */  lw         $t2, 0x288($t1)
/* 20E0C 8002020C 000C6080 */  sll        $t4, $t4, 2
/* 20E10 80020210 01E47823 */  subu       $t7, $t7, $a0
/* 20E14 80020214 01846023 */  subu       $t4, $t4, $a0
/* 20E18 80020218 000F7880 */  sll        $t7, $t7, 2
/* 20E1C 8002021C 000C6080 */  sll        $t4, $t4, 2
/* 20E20 80020220 01E47823 */  subu       $t7, $t7, $a0
/* 20E24 80020224 000F7880 */  sll        $t7, $t7, 2
/* 20E28 80020228 032C6821 */  addu       $t5, $t9, $t4
/* 20E2C 8002022C 354B0001 */  ori        $t3, $t2, 1
/* 20E30 80020230 ADAB0288 */  sw         $t3, 0x288($t5)
/* 20E34 80020234 01E47821 */  addu       $t7, $t7, $a0
/* 20E38 80020238 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20E3C 8002023C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 20E40 80020240 000F7880 */  sll        $t7, $t7, 2
/* 20E44 80020244 01E47823 */  subu       $t7, $t7, $a0
/* 20E48 80020248 000F7880 */  sll        $t7, $t7, 2
/* 20E4C 8002024C 01CFC021 */  addu       $t8, $t6, $t7
/* 20E50 80020250 8F080088 */  lw         $t0, 0x88($t8)
/* 20E54 80020254 24010003 */  addiu      $at, $zero, 3
/* 20E58 80020258 1501000D */  bne        $t0, $at, .L80020290
/* 20E5C 8002025C 00000000 */   nop
/* 20E60 80020260 00044880 */  sll        $t1, $a0, 2
/* 20E64 80020264 01244823 */  subu       $t1, $t1, $a0
/* 20E68 80020268 00094880 */  sll        $t1, $t1, 2
/* 20E6C 8002026C 01244823 */  subu       $t1, $t1, $a0
/* 20E70 80020270 00094880 */  sll        $t1, $t1, 2
/* 20E74 80020274 01244821 */  addu       $t1, $t1, $a0
/* 20E78 80020278 00094880 */  sll        $t1, $t1, 2
/* 20E7C 8002027C 01244823 */  subu       $t1, $t1, $a0
/* 20E80 80020280 00094880 */  sll        $t1, $t1, 2
/* 20E84 80020284 01C95021 */  addu       $t2, $t6, $t1
/* 20E88 80020288 03E00008 */  jr         $ra
/* 20E8C 8002028C AD40007C */   sw        $zero, 0x7c($t2)
.L80020290:
/* 20E90 80020290 00046080 */  sll        $t4, $a0, 2
/* 20E94 80020294 01846023 */  subu       $t4, $t4, $a0
/* 20E98 80020298 000C6080 */  sll        $t4, $t4, 2
/* 20E9C 8002029C 01846023 */  subu       $t4, $t4, $a0
/* 20EA0 800202A0 000C6080 */  sll        $t4, $t4, 2
/* 20EA4 800202A4 0004C080 */  sll        $t8, $a0, 2
/* 20EA8 800202A8 0304C023 */  subu       $t8, $t8, $a0
/* 20EAC 800202AC 01846021 */  addu       $t4, $t4, $a0
/* 20EB0 800202B0 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 20EB4 800202B4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 20EB8 800202B8 000C6080 */  sll        $t4, $t4, 2
/* 20EBC 800202BC 0018C080 */  sll        $t8, $t8, 2
/* 20EC0 800202C0 0304C023 */  subu       $t8, $t8, $a0
/* 20EC4 800202C4 01846023 */  subu       $t4, $t4, $a0
/* 20EC8 800202C8 000C6080 */  sll        $t4, $t4, 2
/* 20ECC 800202CC 0018C080 */  sll        $t8, $t8, 2
/* 20ED0 800202D0 0304C021 */  addu       $t8, $t8, $a0
/* 20ED4 800202D4 032C5821 */  addu       $t3, $t9, $t4
/* 20ED8 800202D8 8D6D007C */  lw         $t5, 0x7c($t3)
/* 20EDC 800202DC 0018C080 */  sll        $t8, $t8, 2
/* 20EE0 800202E0 0304C023 */  subu       $t8, $t8, $a0
/* 20EE4 800202E4 0018C080 */  sll        $t8, $t8, 2
/* 20EE8 800202E8 03384021 */  addu       $t0, $t9, $t8
/* 20EEC 800202EC 25AF0001 */  addiu      $t7, $t5, 1
/* 20EF0 800202F0 AD0F007C */  sw         $t7, 0x7c($t0)
/* 20EF4 800202F4 03E00008 */  jr         $ra
/* 20EF8 800202F8 00000000 */   nop

glabel func_800202FC
/* 20EFC 800202FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20F00 80020300 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20F04 80020304 AFA40018 */  sw         $a0, 0x18($sp)
/* 20F08 80020308 8FAF0018 */  lw         $t7, 0x18($sp)
/* 20F0C 8002030C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20F10 80020310 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 20F14 80020314 000FC080 */  sll        $t8, $t7, 2
/* 20F18 80020318 030FC023 */  subu       $t8, $t8, $t7
/* 20F1C 8002031C 0018C080 */  sll        $t8, $t8, 2
/* 20F20 80020320 030FC023 */  subu       $t8, $t8, $t7
/* 20F24 80020324 0018C080 */  sll        $t8, $t8, 2
/* 20F28 80020328 030FC021 */  addu       $t8, $t8, $t7
/* 20F2C 8002032C 0018C080 */  sll        $t8, $t8, 2
/* 20F30 80020330 44802000 */  mtc1       $zero, $f4
/* 20F34 80020334 030FC023 */  subu       $t8, $t8, $t7
/* 20F38 80020338 0018C080 */  sll        $t8, $t8, 2
/* 20F3C 8002033C 01D8C821 */  addu       $t9, $t6, $t8
/* 20F40 80020340 E7240290 */  swc1       $f4, 0x290($t9)
/* 20F44 80020344 8FA90018 */  lw         $t1, 0x18($sp)
/* 20F48 80020348 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 20F4C 8002034C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 20F50 80020350 00095080 */  sll        $t2, $t1, 2
/* 20F54 80020354 01495023 */  subu       $t2, $t2, $t1
/* 20F58 80020358 000A5080 */  sll        $t2, $t2, 2
/* 20F5C 8002035C 01495023 */  subu       $t2, $t2, $t1
/* 20F60 80020360 000A5080 */  sll        $t2, $t2, 2
/* 20F64 80020364 01495021 */  addu       $t2, $t2, $t1
/* 20F68 80020368 000A5080 */  sll        $t2, $t2, 2
/* 20F6C 8002036C 01495023 */  subu       $t2, $t2, $t1
/* 20F70 80020370 000A5080 */  sll        $t2, $t2, 2
/* 20F74 80020374 010A5821 */  addu       $t3, $t0, $t2
/* 20F78 80020378 8D6C0088 */  lw         $t4, 0x88($t3)
/* 20F7C 8002037C 24010003 */  addiu      $at, $zero, 3
/* 20F80 80020380 1581000A */  bne        $t4, $at, .L800203AC
/* 20F84 80020384 00000000 */   nop
/* 20F88 80020388 8D6D007C */  lw         $t5, 0x7c($t3)
/* 20F8C 8002038C 29A10006 */  slti       $at, $t5, 6
/* 20F90 80020390 14200004 */  bnez       $at, .L800203A4
/* 20F94 80020394 00000000 */   nop
/* 20F98 80020398 240F1001 */  addiu      $t7, $zero, 0x1001
/* 20F9C 8002039C 10000003 */  b          .L800203AC
/* 20FA0 800203A0 AD6F0288 */   sw        $t7, 0x288($t3)
.L800203A4:
/* 20FA4 800203A4 0C0080EF */  jal        func_800203BC
/* 20FA8 800203A8 8FA40018 */   lw        $a0, 0x18($sp)
.L800203AC:
/* 20FAC 800203AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20FB0 800203B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20FB4 800203B4 03E00008 */  jr         $ra
/* 20FB8 800203B8 00000000 */   nop

glabel func_800203BC
/* 20FBC 800203BC 00047880 */  sll        $t7, $a0, 2
/* 20FC0 800203C0 01E47823 */  subu       $t7, $t7, $a0
/* 20FC4 800203C4 000F7880 */  sll        $t7, $t7, 2
/* 20FC8 800203C8 01E47823 */  subu       $t7, $t7, $a0
/* 20FCC 800203CC 000F7880 */  sll        $t7, $t7, 2
/* 20FD0 800203D0 01E47821 */  addu       $t7, $t7, $a0
/* 20FD4 800203D4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 20FD8 800203D8 00044080 */  sll        $t0, $a0, 2
/* 20FDC 800203DC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 20FE0 800203E0 000F7880 */  sll        $t7, $t7, 2
/* 20FE4 800203E4 01044023 */  subu       $t0, $t0, $a0
/* 20FE8 800203E8 44802000 */  mtc1       $zero, $f4
/* 20FEC 800203EC 01E47823 */  subu       $t7, $t7, $a0
/* 20FF0 800203F0 00084080 */  sll        $t0, $t0, 2
/* 20FF4 800203F4 000F7880 */  sll        $t7, $t7, 2
/* 20FF8 800203F8 01044023 */  subu       $t0, $t0, $a0
/* 20FFC 800203FC 00084080 */  sll        $t0, $t0, 2
/* 21000 80020400 01CFC021 */  addu       $t8, $t6, $t7
/* 21004 80020404 01044021 */  addu       $t0, $t0, $a0
/* 21008 80020408 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2100C 8002040C E7040290 */  swc1       $f4, 0x290($t8)
/* 21010 80020410 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21014 80020414 00084080 */  sll        $t0, $t0, 2
/* 21018 80020418 01044023 */  subu       $t0, $t0, $a0
/* 2101C 8002041C 00084080 */  sll        $t0, $t0, 2
/* 21020 80020420 03284821 */  addu       $t1, $t9, $t0
/* 21024 80020424 AD200288 */  sw         $zero, 0x288($t1)
/* 21028 80020428 03E00008 */  jr         $ra
/* 2102C 8002042C 00000000 */   nop

glabel func_80020430
/* 21030 80020430 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 21034 80020434 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21038 80020438 AFA40030 */  sw         $a0, 0x30($sp)
/* 2103C 8002043C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 21040 80020440 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21044 80020444 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21048 80020448 000FC080 */  sll        $t8, $t7, 2
/* 2104C 8002044C 030FC023 */  subu       $t8, $t8, $t7
/* 21050 80020450 0018C080 */  sll        $t8, $t8, 2
/* 21054 80020454 030FC023 */  subu       $t8, $t8, $t7
/* 21058 80020458 0018C080 */  sll        $t8, $t8, 2
/* 2105C 8002045C 030FC021 */  addu       $t8, $t8, $t7
/* 21060 80020460 0018C080 */  sll        $t8, $t8, 2
/* 21064 80020464 030FC023 */  subu       $t8, $t8, $t7
/* 21068 80020468 0018C080 */  sll        $t8, $t8, 2
/* 2106C 8002046C 01D8C821 */  addu       $t9, $t6, $t8
/* 21070 80020470 8F2800A4 */  lw         $t0, 0xa4($t9)
/* 21074 80020474 44802000 */  mtc1       $zero, $f4
/* 21078 80020478 2401FFFF */  addiu      $at, $zero, -1
/* 2107C 8002047C AFA80020 */  sw         $t0, 0x20($sp)
/* 21080 80020480 8F29006C */  lw         $t1, 0x6c($t9)
/* 21084 80020484 AFA9001C */  sw         $t1, 0x1c($sp)
/* 21088 80020488 8F2A0074 */  lw         $t2, 0x74($t9)
/* 2108C 8002048C AFAA0018 */  sw         $t2, 0x18($sp)
/* 21090 80020490 E72400F4 */  swc1       $f4, 0xf4($t9)
/* 21094 80020494 8FAB0020 */  lw         $t3, 0x20($sp)
/* 21098 80020498 116100D9 */  beq        $t3, $at, .L80020800
/* 2109C 8002049C 00000000 */   nop
/* 210A0 800204A0 8FAC0030 */  lw         $t4, 0x30($sp)
/* 210A4 800204A4 116C00D6 */  beq        $t3, $t4, .L80020800
/* 210A8 800204A8 00000000 */   nop
/* 210AC 800204AC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 210B0 800204B0 8FA80020 */  lw         $t0, 0x20($sp)
/* 210B4 800204B4 3C0D8016 */  lui        $t5, 0x8016
/* 210B8 800204B8 000F7080 */  sll        $t6, $t7, 2
/* 210BC 800204BC 00084880 */  sll        $t1, $t0, 2
/* 210C0 800204C0 01CF7023 */  subu       $t6, $t6, $t7
/* 210C4 800204C4 01284823 */  subu       $t1, $t1, $t0
/* 210C8 800204C8 00094880 */  sll        $t1, $t1, 2
/* 210CC 800204CC 000E7080 */  sll        $t6, $t6, 2
/* 210D0 800204D0 01CF7023 */  subu       $t6, $t6, $t7
/* 210D4 800204D4 01284823 */  subu       $t1, $t1, $t0
/* 210D8 800204D8 00094880 */  sll        $t1, $t1, 2
/* 210DC 800204DC 000E7080 */  sll        $t6, $t6, 2
/* 210E0 800204E0 8DADFB9C */  lw         $t5, -0x464($t5)
/* 210E4 800204E4 01CF7021 */  addu       $t6, $t6, $t7
/* 210E8 800204E8 01284821 */  addu       $t1, $t1, $t0
/* 210EC 800204EC 00094880 */  sll        $t1, $t1, 2
/* 210F0 800204F0 000E7080 */  sll        $t6, $t6, 2
/* 210F4 800204F4 01CF7023 */  subu       $t6, $t6, $t7
/* 210F8 800204F8 01284823 */  subu       $t1, $t1, $t0
/* 210FC 800204FC 00094880 */  sll        $t1, $t1, 2
/* 21100 80020500 000E7080 */  sll        $t6, $t6, 2
/* 21104 80020504 01AEC021 */  addu       $t8, $t5, $t6
/* 21108 80020508 01A95021 */  addu       $t2, $t5, $t1
/* 2110C 8002050C C54800E4 */  lwc1       $f8, 0xe4($t2)
/* 21110 80020510 C70600E4 */  lwc1       $f6, 0xe4($t8)
/* 21114 80020514 0C004788 */  jal        func_80011E20
/* 21118 80020518 46083301 */   sub.s     $f12, $f6, $f8
/* 2111C 8002051C E7A00024 */  swc1       $f0, 0x24($sp)
/* 21120 80020520 8FA40030 */  lw         $a0, 0x30($sp)
/* 21124 80020524 0C0045C0 */  jal        func_80011700
/* 21128 80020528 8FA50020 */   lw        $a1, 0x20($sp)
/* 2112C 8002052C E7A00028 */  swc1       $f0, 0x28($sp)
/* 21130 80020530 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* 21134 80020534 3C01800E */  lui        $at, %hi(D_800DC238)
/* 21138 80020538 D432C238 */  ldc1       $f18, %lo(D_800DC238)($at)
/* 2113C 8002053C 46005421 */  cvt.d.s    $f16, $f10
/* 21140 80020540 4630903C */  c.lt.d     $f18, $f16
/* 21144 80020544 00000000 */  nop
/* 21148 80020548 4500001A */  bc1f       .L800205B4
/* 2114C 8002054C 00000000 */   nop
/* 21150 80020550 8FAB0030 */  lw         $t3, 0x30($sp)
/* 21154 80020554 8FAE0018 */  lw         $t6, 0x18($sp)
/* 21158 80020558 3C198016 */  lui        $t9, 0x8016
/* 2115C 8002055C 000B6080 */  sll        $t4, $t3, 2
/* 21160 80020560 018B6023 */  subu       $t4, $t4, $t3
/* 21164 80020564 000C6080 */  sll        $t4, $t4, 2
/* 21168 80020568 018B6023 */  subu       $t4, $t4, $t3
/* 2116C 8002056C 000C6080 */  sll        $t4, $t4, 2
/* 21170 80020570 018B6021 */  addu       $t4, $t4, $t3
/* 21174 80020574 8F39FB9C */  lw         $t9, -0x464($t9)
/* 21178 80020578 000C6080 */  sll        $t4, $t4, 2
/* 2117C 8002057C 000EC100 */  sll        $t8, $t6, 4
/* 21180 80020580 018B6023 */  subu       $t4, $t4, $t3
/* 21184 80020584 030EC023 */  subu       $t8, $t8, $t6
/* 21188 80020588 0018C080 */  sll        $t8, $t8, 2
/* 2118C 8002058C 000C6080 */  sll        $t4, $t4, 2
/* 21190 80020590 3C01800D */  lui        $at, %hi(D_800D72F4)
/* 21194 80020594 00380821 */  addu       $at, $at, $t8
/* 21198 80020598 032C7821 */  addu       $t7, $t9, $t4
/* 2119C 8002059C C5E400AC */  lwc1       $f4, 0xac($t7)
/* 211A0 800205A0 C42672F4 */  lwc1       $f6, %lo(D_800D72F4)($at)
/* 211A4 800205A4 4606203C */  c.lt.s     $f4, $f6
/* 211A8 800205A8 00000000 */  nop
/* 211AC 800205AC 45010047 */  bc1t       .L800206CC
/* 211B0 800205B0 00000000 */   nop
.L800205B4:
/* 211B4 800205B4 8FAD0030 */  lw         $t5, 0x30($sp)
/* 211B8 800205B8 8FAB0018 */  lw         $t3, 0x18($sp)
/* 211BC 800205BC 3C088016 */  lui        $t0, 0x8016
/* 211C0 800205C0 000D4880 */  sll        $t1, $t5, 2
/* 211C4 800205C4 012D4823 */  subu       $t1, $t1, $t5
/* 211C8 800205C8 00094880 */  sll        $t1, $t1, 2
/* 211CC 800205CC 012D4823 */  subu       $t1, $t1, $t5
/* 211D0 800205D0 00094880 */  sll        $t1, $t1, 2
/* 211D4 800205D4 012D4821 */  addu       $t1, $t1, $t5
/* 211D8 800205D8 8D08FB9C */  lw         $t0, -0x464($t0)
/* 211DC 800205DC 00094880 */  sll        $t1, $t1, 2
/* 211E0 800205E0 000BC900 */  sll        $t9, $t3, 4
/* 211E4 800205E4 3C0C800D */  lui        $t4, %hi(D_800D72D4)
/* 211E8 800205E8 012D4823 */  subu       $t1, $t1, $t5
/* 211EC 800205EC 032BC823 */  subu       $t9, $t9, $t3
/* 211F0 800205F0 0019C880 */  sll        $t9, $t9, 2
/* 211F4 800205F4 00094880 */  sll        $t1, $t1, 2
/* 211F8 800205F8 258C72D4 */  addiu      $t4, $t4, %lo(D_800D72D4)
/* 211FC 800205FC 032C7821 */  addu       $t7, $t9, $t4
/* 21200 80020600 01095021 */  addu       $t2, $t0, $t1
/* 21204 80020604 C54800AC */  lwc1       $f8, 0xac($t2)
/* 21208 80020608 C5EA000C */  lwc1       $f10, 0xc($t7)
/* 2120C 8002060C 460A403C */  c.lt.s     $f8, $f10
/* 21210 80020610 00000000 */  nop
/* 21214 80020614 4501002D */  bc1t       .L800206CC
/* 21218 80020618 00000000 */   nop
/* 2121C 8002061C C7B00028 */  lwc1       $f16, 0x28($sp)
/* 21220 80020620 3C01800E */  lui        $at, %hi(D_800DC240)
/* 21224 80020624 D424C240 */  ldc1       $f4, %lo(D_800DC240)($at)
/* 21228 80020628 460084A1 */  cvt.d.s    $f18, $f16
/* 2122C 8002062C 4632203C */  c.lt.d     $f4, $f18
/* 21230 80020630 00000000 */  nop
/* 21234 80020634 45000006 */  bc1f       .L80020650
/* 21238 80020638 00000000 */   nop
/* 2123C 8002063C C5E60024 */  lwc1       $f6, 0x24($t7)
/* 21240 80020640 4606403C */  c.lt.s     $f8, $f6
/* 21244 80020644 00000000 */  nop
/* 21248 80020648 45010020 */  bc1t       .L800206CC
/* 2124C 8002064C 00000000 */   nop
.L80020650:
/* 21250 80020650 8FB80030 */  lw         $t8, 0x30($sp)
/* 21254 80020654 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21258 80020658 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2125C 8002065C 00186880 */  sll        $t5, $t8, 2
/* 21260 80020660 01B86823 */  subu       $t5, $t5, $t8
/* 21264 80020664 000D6880 */  sll        $t5, $t5, 2
/* 21268 80020668 01B86823 */  subu       $t5, $t5, $t8
/* 2126C 8002066C 000D6880 */  sll        $t5, $t5, 2
/* 21270 80020670 01B86821 */  addu       $t5, $t5, $t8
/* 21274 80020674 000D6880 */  sll        $t5, $t5, 2
/* 21278 80020678 01B86823 */  subu       $t5, $t5, $t8
/* 2127C 8002067C 000D6880 */  sll        $t5, $t5, 2
/* 21280 80020680 01CD4021 */  addu       $t0, $t6, $t5
/* 21284 80020684 850900BE */  lh         $t1, 0xbe($t0)
/* 21288 80020688 1120004E */  beqz       $t1, .L800207C4
/* 2128C 8002068C 00000000 */   nop
/* 21290 80020690 C50A00AC */  lwc1       $f10, 0xac($t0)
/* 21294 80020694 3C01800E */  lui        $at, %hi(D_800DC248)
/* 21298 80020698 D432C248 */  ldc1       $f18, %lo(D_800DC248)($at)
/* 2129C 8002069C 46005421 */  cvt.d.s    $f16, $f10
/* 212A0 800206A0 4632803C */  c.lt.d     $f16, $f18
/* 212A4 800206A4 00000000 */  nop
/* 212A8 800206A8 45000046 */  bc1f       .L800207C4
/* 212AC 800206AC 00000000 */   nop
/* 212B0 800206B0 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 212B4 800206B4 3C01800E */  lui        $at, %hi(D_800DC250)
/* 212B8 800206B8 D426C250 */  ldc1       $f6, %lo(D_800DC250)($at)
/* 212BC 800206BC 46002221 */  cvt.d.s    $f8, $f4
/* 212C0 800206C0 4626403C */  c.lt.d     $f8, $f6
/* 212C4 800206C4 00000000 */  nop
/* 212C8 800206C8 4500003E */  bc1f       .L800207C4
.L800206CC:
/* 212CC 800206CC 3C018016 */   lui       $at, %hi(D_8015FB0C)
/* 212D0 800206D0 C430FB0C */  lwc1       $f16, %lo(D_8015FB0C)($at)
/* 212D4 800206D4 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 212D8 800206D8 46108480 */  add.s      $f18, $f16, $f16
/* 212DC 800206DC 4612503C */  c.lt.s     $f10, $f18
/* 212E0 800206E0 00000000 */  nop
/* 212E4 800206E4 45000037 */  bc1f       .L800207C4
/* 212E8 800206E8 00000000 */   nop
/* 212EC 800206EC 8FAA001C */  lw         $t2, 0x1c($sp)
/* 212F0 800206F0 24010002 */  addiu      $at, $zero, 2
/* 212F4 800206F4 11410003 */  beq        $t2, $at, .L80020704
/* 212F8 800206F8 2401003A */   addiu     $at, $zero, 0x3a
/* 212FC 800206FC 15410006 */  bne        $t2, $at, .L80020718
/* 21300 80020700 00000000 */   nop
.L80020704:
/* 21304 80020704 8FA40030 */  lw         $a0, 0x30($sp)
/* 21308 80020708 0C0044DB */  jal        func_8001136C
/* 2130C 8002070C 8FA50020 */   lw        $a1, 0x20($sp)
/* 21310 80020710 10000005 */  b          .L80020728
/* 21314 80020714 E7A0002C */   swc1      $f0, 0x2c($sp)
.L80020718:
/* 21318 80020718 8FA40030 */  lw         $a0, 0x30($sp)
/* 2131C 8002071C 0C004482 */  jal        func_80011208
/* 21320 80020720 8FA50020 */   lw        $a1, 0x20($sp)
/* 21324 80020724 E7A0002C */  swc1       $f0, 0x2c($sp)
.L80020728:
/* 21328 80020728 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 2132C 8002072C 3C01800E */  lui        $at, %hi(D_800DC258)
/* 21330 80020730 D426C258 */  ldc1       $f6, %lo(D_800DC258)($at)
/* 21334 80020734 46002221 */  cvt.d.s    $f8, $f4
/* 21338 80020738 3C01800E */  lui        $at, %hi(D_800DC260)
/* 2133C 8002073C 46264402 */  mul.d      $f16, $f8, $f6
/* 21340 80020740 D42AC260 */  ldc1       $f10, %lo(D_800DC260)($at)
/* 21344 80020744 8FB90030 */  lw         $t9, 0x30($sp)
/* 21348 80020748 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 2134C 8002074C 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 21350 80020750 00196080 */  sll        $t4, $t9, 2
/* 21354 80020754 01996023 */  subu       $t4, $t4, $t9
/* 21358 80020758 000C6080 */  sll        $t4, $t4, 2
/* 2135C 8002075C 462A8482 */  mul.d      $f18, $f16, $f10
/* 21360 80020760 01996023 */  subu       $t4, $t4, $t9
/* 21364 80020764 000C6080 */  sll        $t4, $t4, 2
/* 21368 80020768 01996021 */  addu       $t4, $t4, $t9
/* 2136C 8002076C 000C6080 */  sll        $t4, $t4, 2
/* 21370 80020770 01996023 */  subu       $t4, $t4, $t9
/* 21374 80020774 000C6080 */  sll        $t4, $t4, 2
/* 21378 80020778 016C7821 */  addu       $t7, $t3, $t4
/* 2137C 8002077C 46209120 */  cvt.s.d    $f4, $f18
/* 21380 80020780 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21384 80020784 24180003 */  addiu      $t8, $zero, 3
/* 21388 80020788 E5E400F4 */  swc1       $f4, 0xf4($t7)
/* 2138C 8002078C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 21390 80020790 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21394 80020794 000D4880 */  sll        $t1, $t5, 2
/* 21398 80020798 012D4823 */  subu       $t1, $t1, $t5
/* 2139C 8002079C 00094880 */  sll        $t1, $t1, 2
/* 213A0 800207A0 012D4823 */  subu       $t1, $t1, $t5
/* 213A4 800207A4 00094880 */  sll        $t1, $t1, 2
/* 213A8 800207A8 012D4821 */  addu       $t1, $t1, $t5
/* 213AC 800207AC 00094880 */  sll        $t1, $t1, 2
/* 213B0 800207B0 012D4823 */  subu       $t1, $t1, $t5
/* 213B4 800207B4 00094880 */  sll        $t1, $t1, 2
/* 213B8 800207B8 01C94021 */  addu       $t0, $t6, $t1
/* 213BC 800207BC 10000010 */  b          .L80020800
/* 213C0 800207C0 AD180088 */   sw        $t8, 0x88($t0)
.L800207C4:
/* 213C4 800207C4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 213C8 800207C8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 213CC 800207CC 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 213D0 800207D0 000B6080 */  sll        $t4, $t3, 2
/* 213D4 800207D4 018B6023 */  subu       $t4, $t4, $t3
/* 213D8 800207D8 000C6080 */  sll        $t4, $t4, 2
/* 213DC 800207DC 018B6023 */  subu       $t4, $t4, $t3
/* 213E0 800207E0 000C6080 */  sll        $t4, $t4, 2
/* 213E4 800207E4 018B6021 */  addu       $t4, $t4, $t3
/* 213E8 800207E8 000C6080 */  sll        $t4, $t4, 2
/* 213EC 800207EC 018B6023 */  subu       $t4, $t4, $t3
/* 213F0 800207F0 000C6080 */  sll        $t4, $t4, 2
/* 213F4 800207F4 240A0002 */  addiu      $t2, $zero, 2
/* 213F8 800207F8 032C7821 */  addu       $t7, $t9, $t4
/* 213FC 800207FC ADEA0088 */  sw         $t2, 0x88($t7)
.L80020800:
/* 21400 80020800 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21404 80020804 27BD0030 */  addiu      $sp, $sp, 0x30
/* 21408 80020808 03E00008 */  jr         $ra
/* 2140C 8002080C 00000000 */   nop

glabel func_80020810
/* 21410 80020810 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21414 80020814 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21418 80020818 AFA40020 */  sw         $a0, 0x20($sp)
/* 2141C 8002081C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 21420 80020820 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21424 80020824 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21428 80020828 000FC080 */  sll        $t8, $t7, 2
/* 2142C 8002082C 030FC023 */  subu       $t8, $t8, $t7
/* 21430 80020830 0018C080 */  sll        $t8, $t8, 2
/* 21434 80020834 030FC023 */  subu       $t8, $t8, $t7
/* 21438 80020838 0018C080 */  sll        $t8, $t8, 2
/* 2143C 8002083C 030FC021 */  addu       $t8, $t8, $t7
/* 21440 80020840 0018C080 */  sll        $t8, $t8, 2
/* 21444 80020844 030FC023 */  subu       $t8, $t8, $t7
/* 21448 80020848 0018C080 */  sll        $t8, $t8, 2
/* 2144C 8002084C 3C088016 */  lui        $t0, %hi(D_8015EB1C)
/* 21450 80020850 2508EB1C */  addiu      $t0, $t0, %lo(D_8015EB1C)
/* 21454 80020854 01D8C821 */  addu       $t9, $t6, $t8
/* 21458 80020858 C72400E0 */  lwc1       $f4, 0xe0($t9)
/* 2145C 8002085C C72800E8 */  lwc1       $f8, 0xe8($t9)
/* 21460 80020860 C5060014 */  lwc1       $f6, 0x14($t0)
/* 21464 80020864 C50A0018 */  lwc1       $f10, 0x18($t0)
/* 21468 80020868 46043301 */  sub.s      $f12, $f6, $f4
/* 2146C 8002086C 0C00475A */  jal        func_80011D68
/* 21470 80020870 46085381 */   sub.s     $f14, $f10, $f8
/* 21474 80020874 E7A00018 */  swc1       $f0, 0x18($sp)
/* 21478 80020878 C7B00018 */  lwc1       $f16, 0x18($sp)
/* 2147C 8002087C 3C014034 */  lui        $at, 0x4034
/* 21480 80020880 44813800 */  mtc1       $at, $f7
/* 21484 80020884 44803000 */  mtc1       $zero, $f6
/* 21488 80020888 460084A1 */  cvt.d.s    $f18, $f16
/* 2148C 8002088C 4626903C */  c.lt.d     $f18, $f6
/* 21490 80020890 00000000 */  nop
/* 21494 80020894 45010005 */  bc1t       .L800208AC
/* 21498 80020898 00000000 */   nop
/* 2149C 8002089C 3C098016 */  lui        $t1, %hi(D_8015ED80)
/* 214A0 800208A0 8D29ED80 */  lw         $t1, %lo(D_8015ED80)($t1)
/* 214A4 800208A4 1D20001B */  bgtz       $t1, .L80020914
/* 214A8 800208A8 00000000 */   nop
.L800208AC:
/* 214AC 800208AC 44802000 */  mtc1       $zero, $f4
/* 214B0 800208B0 3C0A8016 */  lui        $t2, %hi(D_8015EB1C)
/* 214B4 800208B4 254AEB1C */  addiu      $t2, $t2, %lo(D_8015EB1C)
/* 214B8 800208B8 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 214BC 800208BC E5440068 */  swc1       $f4, 0x68($t2)
/* 214C0 800208C0 AC20ED80 */  sw         $zero, %lo(D_8015ED80)($at)
/* 214C4 800208C4 0C012101 */  jal        func_80048404
/* 214C8 800208C8 8FA40020 */   lw        $a0, 0x20($sp)
/* 214CC 800208CC 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* 214D0 800208D0 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* 214D4 800208D4 24010007 */  addiu      $at, $zero, 7
/* 214D8 800208D8 15610044 */  bne        $t3, $at, .L800209EC
/* 214DC 800208DC 00000000 */   nop
/* 214E0 800208E0 3C0D8016 */  lui        $t5, %hi(D_8015FF7C)
/* 214E4 800208E4 8DADFF7C */  lw         $t5, %lo(D_8015FF7C)($t5)
/* 214E8 800208E8 240C0001 */  addiu      $t4, $zero, 1
/* 214EC 800208EC 3C0E8016 */  lui        $t6, %hi(D_8015FF7C)
/* 214F0 800208F0 ADAC08C0 */  sw         $t4, 0x8c0($t5)
/* 214F4 800208F4 8DCEFF7C */  lw         $t6, %lo(D_8015FF7C)($t6)
/* 214F8 800208F8 240F0001 */  addiu      $t7, $zero, 1
/* 214FC 800208FC 3C04802E */  lui        $a0, %hi(D_802E4708)
/* 21500 80020900 24844708 */  addiu      $a0, $a0, %lo(D_802E4708)
/* 21504 80020904 0C0297B7 */  jal        func_800A5EDC
/* 21508 80020908 ADCF08E8 */   sw        $t7, 0x8e8($t6)
/* 2150C 8002090C 10000037 */  b          .L800209EC
/* 21510 80020910 00000000 */   nop
.L80020914:
/* 21514 80020914 8FB90020 */  lw         $t9, 0x20($sp)
/* 21518 80020918 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2151C 8002091C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 21520 80020920 00194080 */  sll        $t0, $t9, 2
/* 21524 80020924 01194023 */  subu       $t0, $t0, $t9
/* 21528 80020928 00084080 */  sll        $t0, $t0, 2
/* 2152C 8002092C 01194023 */  subu       $t0, $t0, $t9
/* 21530 80020930 00084080 */  sll        $t0, $t0, 2
/* 21534 80020934 01194021 */  addu       $t0, $t0, $t9
/* 21538 80020938 00084080 */  sll        $t0, $t0, 2
/* 2153C 8002093C 01194023 */  subu       $t0, $t0, $t9
/* 21540 80020940 00084080 */  sll        $t0, $t0, 2
/* 21544 80020944 3C0A8016 */  lui        $t2, %hi(D_8015EB1C)
/* 21548 80020948 254AEB1C */  addiu      $t2, $t2, %lo(D_8015EB1C)
/* 2154C 8002094C 03084821 */  addu       $t1, $t8, $t0
/* 21550 80020950 C52A00E0 */  lwc1       $f10, 0xe0($t1)
/* 21554 80020954 C53200E8 */  lwc1       $f18, 0xe8($t1)
/* 21558 80020958 C5480014 */  lwc1       $f8, 0x14($t2)
/* 2155C 8002095C C5460018 */  lwc1       $f6, 0x18($t2)
/* 21560 80020960 C52C0100 */  lwc1       $f12, 0x100($t1)
/* 21564 80020964 460A4401 */  sub.s      $f16, $f8, $f10
/* 21568 80020968 C52E00FC */  lwc1       $f14, 0xfc($t1)
/* 2156C 8002096C 46069101 */  sub.s      $f4, $f18, $f6
/* 21570 80020970 44068000 */  mfc1       $a2, $f16
/* 21574 80020974 44072000 */  mfc1       $a3, $f4
/* 21578 80020978 0C004794 */  jal        func_80011E50
/* 2157C 8002097C 00000000 */   nop
/* 21580 80020980 C7A80018 */  lwc1       $f8, 0x18($sp)
/* 21584 80020984 3C01800E */  lui        $at, %hi(D_800DC268)
/* 21588 80020988 D426C268 */  ldc1       $f6, %lo(D_800DC268)($at)
/* 2158C 8002098C 46080283 */  div.s      $f10, $f0, $f8
/* 21590 80020990 3C014024 */  lui        $at, 0x4024
/* 21594 80020994 44814800 */  mtc1       $at, $f9
/* 21598 80020998 44804000 */  mtc1       $zero, $f8
/* 2159C 8002099C 8FAC0020 */  lw         $t4, 0x20($sp)
/* 215A0 800209A0 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 215A4 800209A4 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 215A8 800209A8 000C6880 */  sll        $t5, $t4, 2
/* 215AC 800209AC 01AC6823 */  subu       $t5, $t5, $t4
/* 215B0 800209B0 000D6880 */  sll        $t5, $t5, 2
/* 215B4 800209B4 01AC6823 */  subu       $t5, $t5, $t4
/* 215B8 800209B8 000D6880 */  sll        $t5, $t5, 2
/* 215BC 800209BC 01AC6821 */  addu       $t5, $t5, $t4
/* 215C0 800209C0 000D6880 */  sll        $t5, $t5, 2
/* 215C4 800209C4 01AC6823 */  subu       $t5, $t5, $t4
/* 215C8 800209C8 000D6880 */  sll        $t5, $t5, 2
/* 215CC 800209CC 016D7821 */  addu       $t7, $t3, $t5
/* 215D0 800209D0 E7AA001C */  swc1       $f10, 0x1c($sp)
/* 215D4 800209D4 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* 215D8 800209D8 460084A1 */  cvt.d.s    $f18, $f16
/* 215DC 800209DC 46269102 */  mul.d      $f4, $f18, $f6
/* 215E0 800209E0 46282283 */  div.d      $f10, $f4, $f8
/* 215E4 800209E4 46205420 */  cvt.s.d    $f16, $f10
/* 215E8 800209E8 E5F000F4 */  swc1       $f16, 0xf4($t7)
.L800209EC:
/* 215EC 800209EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 215F0 800209F0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 215F4 800209F4 03E00008 */  jr         $ra
/* 215F8 800209F8 00000000 */   nop

glabel func_800209FC
/* 215FC 800209FC 27BDFFF8 */  addiu      $sp, $sp, -8
/* 21600 80020A00 00047880 */  sll        $t7, $a0, 2
/* 21604 80020A04 01E47823 */  subu       $t7, $t7, $a0
/* 21608 80020A08 000F7880 */  sll        $t7, $t7, 2
/* 2160C 80020A0C 01E47823 */  subu       $t7, $t7, $a0
/* 21610 80020A10 000F7880 */  sll        $t7, $t7, 2
/* 21614 80020A14 00044080 */  sll        $t0, $a0, 2
/* 21618 80020A18 01E47821 */  addu       $t7, $t7, $a0
/* 2161C 80020A1C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21620 80020A20 01044023 */  subu       $t0, $t0, $a0
/* 21624 80020A24 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21628 80020A28 000F7880 */  sll        $t7, $t7, 2
/* 2162C 80020A2C 00084080 */  sll        $t0, $t0, 2
/* 21630 80020A30 01E47823 */  subu       $t7, $t7, $a0
/* 21634 80020A34 01044023 */  subu       $t0, $t0, $a0
/* 21638 80020A38 000F7880 */  sll        $t7, $t7, 2
/* 2163C 80020A3C 00084080 */  sll        $t0, $t0, 2
/* 21640 80020A40 00045880 */  sll        $t3, $a0, 2
/* 21644 80020A44 01044021 */  addu       $t0, $t0, $a0
/* 21648 80020A48 01645823 */  subu       $t3, $t3, $a0
/* 2164C 80020A4C 01CFC021 */  addu       $t8, $t6, $t7
/* 21650 80020A50 8F19006C */  lw         $t9, 0x6c($t8)
/* 21654 80020A54 00084080 */  sll        $t0, $t0, 2
/* 21658 80020A58 000B5880 */  sll        $t3, $t3, 2
/* 2165C 80020A5C 01044023 */  subu       $t0, $t0, $a0
/* 21660 80020A60 01645823 */  subu       $t3, $t3, $a0
/* 21664 80020A64 00084080 */  sll        $t0, $t0, 2
/* 21668 80020A68 000B5880 */  sll        $t3, $t3, 2
/* 2166C 80020A6C 01645821 */  addu       $t3, $t3, $a0
/* 21670 80020A70 01C84821 */  addu       $t1, $t6, $t0
/* 21674 80020A74 AFB90004 */  sw         $t9, 4($sp)
/* 21678 80020A78 8D2A0074 */  lw         $t2, 0x74($t1)
/* 2167C 80020A7C 000B5880 */  sll        $t3, $t3, 2
/* 21680 80020A80 01645823 */  subu       $t3, $t3, $a0
/* 21684 80020A84 000B5880 */  sll        $t3, $t3, 2
/* 21688 80020A88 01CB6021 */  addu       $t4, $t6, $t3
/* 2168C 80020A8C AFAA0000 */  sw         $t2, ($sp)
/* 21690 80020A90 AD800288 */  sw         $zero, 0x288($t4)
/* 21694 80020A94 8FAD0004 */  lw         $t5, 4($sp)
/* 21698 80020A98 29A10032 */  slti       $at, $t5, 0x32
/* 2169C 80020A9C 10200016 */  beqz       $at, .L80020AF8
/* 216A0 80020AA0 00000000 */   nop
/* 216A4 80020AA4 00044080 */  sll        $t0, $a0, 2
/* 216A8 80020AA8 8FAF0000 */  lw         $t7, ($sp)
/* 216AC 80020AAC 01044023 */  subu       $t0, $t0, $a0
/* 216B0 80020AB0 00084080 */  sll        $t0, $t0, 2
/* 216B4 80020AB4 01044023 */  subu       $t0, $t0, $a0
/* 216B8 80020AB8 00084080 */  sll        $t0, $t0, 2
/* 216BC 80020ABC 000FC100 */  sll        $t8, $t7, 4
/* 216C0 80020AC0 01044021 */  addu       $t0, $t0, $a0
/* 216C4 80020AC4 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 216C8 80020AC8 030FC023 */  subu       $t8, $t8, $t7
/* 216CC 80020ACC 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 216D0 80020AD0 0018C080 */  sll        $t8, $t8, 2
/* 216D4 80020AD4 00084080 */  sll        $t0, $t0, 2
/* 216D8 80020AD8 3C01800D */  lui        $at, %hi(D_800D72EC)
/* 216DC 80020ADC 00380821 */  addu       $at, $at, $t8
/* 216E0 80020AE0 01044023 */  subu       $t0, $t0, $a0
/* 216E4 80020AE4 C42472EC */  lwc1       $f4, %lo(D_800D72EC)($at)
/* 216E8 80020AE8 00084080 */  sll        $t0, $t0, 2
/* 216EC 80020AEC 03284821 */  addu       $t1, $t9, $t0
/* 216F0 80020AF0 10000010 */  b          .L80020B34
/* 216F4 80020AF4 E5240290 */   swc1      $f4, 0x290($t1)
.L80020AF8:
/* 216F8 80020AF8 00047080 */  sll        $t6, $a0, 2
/* 216FC 80020AFC 01C47023 */  subu       $t6, $t6, $a0
/* 21700 80020B00 000E7080 */  sll        $t6, $t6, 2
/* 21704 80020B04 01C47023 */  subu       $t6, $t6, $a0
/* 21708 80020B08 000E7080 */  sll        $t6, $t6, 2
/* 2170C 80020B0C 01C47021 */  addu       $t6, $t6, $a0
/* 21710 80020B10 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 21714 80020B14 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 21718 80020B18 000E7080 */  sll        $t6, $t6, 2
/* 2171C 80020B1C 3C0140A0 */  lui        $at, 0x40a0
/* 21720 80020B20 44813000 */  mtc1       $at, $f6
/* 21724 80020B24 01C47023 */  subu       $t6, $t6, $a0
/* 21728 80020B28 000E7080 */  sll        $t6, $t6, 2
/* 2172C 80020B2C 014E5821 */  addu       $t3, $t2, $t6
/* 21730 80020B30 E5660290 */  swc1       $f6, 0x290($t3)
.L80020B34:
/* 21734 80020B34 03E00008 */  jr         $ra
/* 21738 80020B38 27BD0008 */   addiu     $sp, $sp, 8

glabel func_80020B3C
/* 2173C 80020B3C 00047880 */  sll        $t7, $a0, 2
/* 21740 80020B40 01E47823 */  subu       $t7, $t7, $a0
/* 21744 80020B44 000F7880 */  sll        $t7, $t7, 2
/* 21748 80020B48 01E47823 */  subu       $t7, $t7, $a0
/* 2174C 80020B4C 000F7880 */  sll        $t7, $t7, 2
/* 21750 80020B50 01E47821 */  addu       $t7, $t7, $a0
/* 21754 80020B54 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21758 80020B58 00044080 */  sll        $t0, $a0, 2
/* 2175C 80020B5C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21760 80020B60 000F7880 */  sll        $t7, $t7, 2
/* 21764 80020B64 01044023 */  subu       $t0, $t0, $a0
/* 21768 80020B68 01E47823 */  subu       $t7, $t7, $a0
/* 2176C 80020B6C 00084080 */  sll        $t0, $t0, 2
/* 21770 80020B70 000F7880 */  sll        $t7, $t7, 2
/* 21774 80020B74 01044023 */  subu       $t0, $t0, $a0
/* 21778 80020B78 00084080 */  sll        $t0, $t0, 2
/* 2177C 80020B7C 01CFC021 */  addu       $t8, $t6, $t7
/* 21780 80020B80 AF000288 */  sw         $zero, 0x288($t8)
/* 21784 80020B84 01044021 */  addu       $t0, $t0, $a0
/* 21788 80020B88 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2178C 80020B8C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21790 80020B90 00084080 */  sll        $t0, $t0, 2
/* 21794 80020B94 44802000 */  mtc1       $zero, $f4
/* 21798 80020B98 01044023 */  subu       $t0, $t0, $a0
/* 2179C 80020B9C 00084080 */  sll        $t0, $t0, 2
/* 217A0 80020BA0 03284821 */  addu       $t1, $t9, $t0
/* 217A4 80020BA4 E5240290 */  swc1       $f4, 0x290($t1)
/* 217A8 80020BA8 03E00008 */  jr         $ra
/* 217AC 80020BAC 00000000 */   nop

glabel func_80020BB0
/* 217B0 80020BB0 00047880 */  sll        $t7, $a0, 2
/* 217B4 80020BB4 01E47823 */  subu       $t7, $t7, $a0
/* 217B8 80020BB8 000F7880 */  sll        $t7, $t7, 2
/* 217BC 80020BBC 01E47823 */  subu       $t7, $t7, $a0
/* 217C0 80020BC0 000F7880 */  sll        $t7, $t7, 2
/* 217C4 80020BC4 01E47821 */  addu       $t7, $t7, $a0
/* 217C8 80020BC8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 217CC 80020BCC 00044080 */  sll        $t0, $a0, 2
/* 217D0 80020BD0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 217D4 80020BD4 000F7880 */  sll        $t7, $t7, 2
/* 217D8 80020BD8 01044023 */  subu       $t0, $t0, $a0
/* 217DC 80020BDC 01E47823 */  subu       $t7, $t7, $a0
/* 217E0 80020BE0 00084080 */  sll        $t0, $t0, 2
/* 217E4 80020BE4 000F7880 */  sll        $t7, $t7, 2
/* 217E8 80020BE8 01044023 */  subu       $t0, $t0, $a0
/* 217EC 80020BEC 00084080 */  sll        $t0, $t0, 2
/* 217F0 80020BF0 01CFC021 */  addu       $t8, $t6, $t7
/* 217F4 80020BF4 AF000288 */  sw         $zero, 0x288($t8)
/* 217F8 80020BF8 01044021 */  addu       $t0, $t0, $a0
/* 217FC 80020BFC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 21800 80020C00 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21804 80020C04 00084080 */  sll        $t0, $t0, 2
/* 21808 80020C08 3C014120 */  lui        $at, 0x4120
/* 2180C 80020C0C 44812000 */  mtc1       $at, $f4
/* 21810 80020C10 01044023 */  subu       $t0, $t0, $a0
/* 21814 80020C14 00084080 */  sll        $t0, $t0, 2
/* 21818 80020C18 03284821 */  addu       $t1, $t9, $t0
/* 2181C 80020C1C E5240290 */  swc1       $f4, 0x290($t1)
/* 21820 80020C20 03E00008 */  jr         $ra
/* 21824 80020C24 00000000 */   nop

glabel func_80020C28
/* 21828 80020C28 00047880 */  sll        $t7, $a0, 2
/* 2182C 80020C2C 01E47823 */  subu       $t7, $t7, $a0
/* 21830 80020C30 000F7880 */  sll        $t7, $t7, 2
/* 21834 80020C34 01E47823 */  subu       $t7, $t7, $a0
/* 21838 80020C38 000F7880 */  sll        $t7, $t7, 2
/* 2183C 80020C3C 01E47821 */  addu       $t7, $t7, $a0
/* 21840 80020C40 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21844 80020C44 00044080 */  sll        $t0, $a0, 2
/* 21848 80020C48 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2184C 80020C4C 000F7880 */  sll        $t7, $t7, 2
/* 21850 80020C50 01044023 */  subu       $t0, $t0, $a0
/* 21854 80020C54 01E47823 */  subu       $t7, $t7, $a0
/* 21858 80020C58 00084080 */  sll        $t0, $t0, 2
/* 2185C 80020C5C 000F7880 */  sll        $t7, $t7, 2
/* 21860 80020C60 01044023 */  subu       $t0, $t0, $a0
/* 21864 80020C64 00084080 */  sll        $t0, $t0, 2
/* 21868 80020C68 01CFC021 */  addu       $t8, $t6, $t7
/* 2186C 80020C6C AF000288 */  sw         $zero, 0x288($t8)
/* 21870 80020C70 01044021 */  addu       $t0, $t0, $a0
/* 21874 80020C74 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 21878 80020C78 00045880 */  sll        $t3, $a0, 2
/* 2187C 80020C7C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21880 80020C80 00084080 */  sll        $t0, $t0, 2
/* 21884 80020C84 3C0140A0 */  lui        $at, 0x40a0
/* 21888 80020C88 01645823 */  subu       $t3, $t3, $a0
/* 2188C 80020C8C 44812000 */  mtc1       $at, $f4
/* 21890 80020C90 01044023 */  subu       $t0, $t0, $a0
/* 21894 80020C94 000B5880 */  sll        $t3, $t3, 2
/* 21898 80020C98 00084080 */  sll        $t0, $t0, 2
/* 2189C 80020C9C 01645823 */  subu       $t3, $t3, $a0
/* 218A0 80020CA0 000B5880 */  sll        $t3, $t3, 2
/* 218A4 80020CA4 03284821 */  addu       $t1, $t9, $t0
/* 218A8 80020CA8 01645821 */  addu       $t3, $t3, $a0
/* 218AC 80020CAC 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 218B0 80020CB0 E5240290 */  swc1       $f4, 0x290($t1)
/* 218B4 80020CB4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 218B8 80020CB8 000B5880 */  sll        $t3, $t3, 2
/* 218BC 80020CBC 3C01800E */  lui        $at, %hi(D_800DC270)
/* 218C0 80020CC0 C426C270 */  lwc1       $f6, %lo(D_800DC270)($at)
/* 218C4 80020CC4 01645823 */  subu       $t3, $t3, $a0
/* 218C8 80020CC8 000B5880 */  sll        $t3, $t3, 2
/* 218CC 80020CCC 014B6021 */  addu       $t4, $t2, $t3
/* 218D0 80020CD0 E58600F4 */  swc1       $f6, 0xf4($t4)
/* 218D4 80020CD4 03E00008 */  jr         $ra
/* 218D8 80020CD8 00000000 */   nop

glabel func_80020CDC
/* 218DC 80020CDC 00047880 */  sll        $t7, $a0, 2
/* 218E0 80020CE0 01E47823 */  subu       $t7, $t7, $a0
/* 218E4 80020CE4 000F7880 */  sll        $t7, $t7, 2
/* 218E8 80020CE8 01E47823 */  subu       $t7, $t7, $a0
/* 218EC 80020CEC 000F7880 */  sll        $t7, $t7, 2
/* 218F0 80020CF0 01E47821 */  addu       $t7, $t7, $a0
/* 218F4 80020CF4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 218F8 80020CF8 00044080 */  sll        $t0, $a0, 2
/* 218FC 80020CFC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21900 80020D00 000F7880 */  sll        $t7, $t7, 2
/* 21904 80020D04 01044023 */  subu       $t0, $t0, $a0
/* 21908 80020D08 01E47823 */  subu       $t7, $t7, $a0
/* 2190C 80020D0C 00084080 */  sll        $t0, $t0, 2
/* 21910 80020D10 000F7880 */  sll        $t7, $t7, 2
/* 21914 80020D14 01044023 */  subu       $t0, $t0, $a0
/* 21918 80020D18 00084080 */  sll        $t0, $t0, 2
/* 2191C 80020D1C 01CFC021 */  addu       $t8, $t6, $t7
/* 21920 80020D20 AF000288 */  sw         $zero, 0x288($t8)
/* 21924 80020D24 01044021 */  addu       $t0, $t0, $a0
/* 21928 80020D28 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2192C 80020D2C 00045880 */  sll        $t3, $a0, 2
/* 21930 80020D30 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21934 80020D34 00084080 */  sll        $t0, $t0, 2
/* 21938 80020D38 3C0140A0 */  lui        $at, 0x40a0
/* 2193C 80020D3C 01645823 */  subu       $t3, $t3, $a0
/* 21940 80020D40 44812000 */  mtc1       $at, $f4
/* 21944 80020D44 01044023 */  subu       $t0, $t0, $a0
/* 21948 80020D48 000B5880 */  sll        $t3, $t3, 2
/* 2194C 80020D4C 00084080 */  sll        $t0, $t0, 2
/* 21950 80020D50 01645823 */  subu       $t3, $t3, $a0
/* 21954 80020D54 000B5880 */  sll        $t3, $t3, 2
/* 21958 80020D58 03284821 */  addu       $t1, $t9, $t0
/* 2195C 80020D5C 01645821 */  addu       $t3, $t3, $a0
/* 21960 80020D60 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 21964 80020D64 E5240290 */  swc1       $f4, 0x290($t1)
/* 21968 80020D68 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 2196C 80020D6C 000B5880 */  sll        $t3, $t3, 2
/* 21970 80020D70 3C01800E */  lui        $at, %hi(D_800DC274)
/* 21974 80020D74 C426C274 */  lwc1       $f6, %lo(D_800DC274)($at)
/* 21978 80020D78 01645823 */  subu       $t3, $t3, $a0
/* 2197C 80020D7C 000B5880 */  sll        $t3, $t3, 2
/* 21980 80020D80 014B6021 */  addu       $t4, $t2, $t3
/* 21984 80020D84 E58600F4 */  swc1       $f6, 0xf4($t4)
/* 21988 80020D88 03E00008 */  jr         $ra
/* 2198C 80020D8C 00000000 */   nop

glabel func_80020D90
/* 21990 80020D90 00047880 */  sll        $t7, $a0, 2
/* 21994 80020D94 01E47823 */  subu       $t7, $t7, $a0
/* 21998 80020D98 000F7880 */  sll        $t7, $t7, 2
/* 2199C 80020D9C 01E47823 */  subu       $t7, $t7, $a0
/* 219A0 80020DA0 000F7880 */  sll        $t7, $t7, 2
/* 219A4 80020DA4 01E47821 */  addu       $t7, $t7, $a0
/* 219A8 80020DA8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 219AC 80020DAC 00044080 */  sll        $t0, $a0, 2
/* 219B0 80020DB0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 219B4 80020DB4 000F7880 */  sll        $t7, $t7, 2
/* 219B8 80020DB8 01044023 */  subu       $t0, $t0, $a0
/* 219BC 80020DBC 01E47823 */  subu       $t7, $t7, $a0
/* 219C0 80020DC0 00084080 */  sll        $t0, $t0, 2
/* 219C4 80020DC4 000F7880 */  sll        $t7, $t7, 2
/* 219C8 80020DC8 01044023 */  subu       $t0, $t0, $a0
/* 219CC 80020DCC 00084080 */  sll        $t0, $t0, 2
/* 219D0 80020DD0 01CFC021 */  addu       $t8, $t6, $t7
/* 219D4 80020DD4 AF000288 */  sw         $zero, 0x288($t8)
/* 219D8 80020DD8 01044021 */  addu       $t0, $t0, $a0
/* 219DC 80020DDC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 219E0 80020DE0 00045880 */  sll        $t3, $a0, 2
/* 219E4 80020DE4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 219E8 80020DE8 00084080 */  sll        $t0, $t0, 2
/* 219EC 80020DEC 3C0140A0 */  lui        $at, 0x40a0
/* 219F0 80020DF0 01645823 */  subu       $t3, $t3, $a0
/* 219F4 80020DF4 44812000 */  mtc1       $at, $f4
/* 219F8 80020DF8 01044023 */  subu       $t0, $t0, $a0
/* 219FC 80020DFC 000B5880 */  sll        $t3, $t3, 2
/* 21A00 80020E00 00084080 */  sll        $t0, $t0, 2
/* 21A04 80020E04 01645823 */  subu       $t3, $t3, $a0
/* 21A08 80020E08 000B5880 */  sll        $t3, $t3, 2
/* 21A0C 80020E0C 03284821 */  addu       $t1, $t9, $t0
/* 21A10 80020E10 01645821 */  addu       $t3, $t3, $a0
/* 21A14 80020E14 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 21A18 80020E18 E5240290 */  swc1       $f4, 0x290($t1)
/* 21A1C 80020E1C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 21A20 80020E20 000B5880 */  sll        $t3, $t3, 2
/* 21A24 80020E24 3C01800E */  lui        $at, %hi(D_800DC278)
/* 21A28 80020E28 C426C278 */  lwc1       $f6, %lo(D_800DC278)($at)
/* 21A2C 80020E2C 01645823 */  subu       $t3, $t3, $a0
/* 21A30 80020E30 000B5880 */  sll        $t3, $t3, 2
/* 21A34 80020E34 014B6021 */  addu       $t4, $t2, $t3
/* 21A38 80020E38 E58600F4 */  swc1       $f6, 0xf4($t4)
/* 21A3C 80020E3C 03E00008 */  jr         $ra
/* 21A40 80020E40 00000000 */   nop

glabel func_80020E44
/* 21A44 80020E44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 21A48 80020E48 AFBF001C */  sw         $ra, 0x1c($sp)
/* 21A4C 80020E4C AFA40028 */  sw         $a0, 0x28($sp)
/* 21A50 80020E50 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 21A54 80020E54 8FAF0028 */  lw         $t7, 0x28($sp)
/* 21A58 80020E58 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21A5C 80020E5C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21A60 80020E60 000FC080 */  sll        $t8, $t7, 2
/* 21A64 80020E64 030FC023 */  subu       $t8, $t8, $t7
/* 21A68 80020E68 0018C080 */  sll        $t8, $t8, 2
/* 21A6C 80020E6C 030FC023 */  subu       $t8, $t8, $t7
/* 21A70 80020E70 0018C080 */  sll        $t8, $t8, 2
/* 21A74 80020E74 030FC021 */  addu       $t8, $t8, $t7
/* 21A78 80020E78 0018C080 */  sll        $t8, $t8, 2
/* 21A7C 80020E7C 030FC023 */  subu       $t8, $t8, $t7
/* 21A80 80020E80 0018C080 */  sll        $t8, $t8, 2
/* 21A84 80020E84 01D8C821 */  addu       $t9, $t6, $t8
/* 21A88 80020E88 8F2800A4 */  lw         $t0, 0xa4($t9)
/* 21A8C 80020E8C 2401FFFF */  addiu      $at, $zero, -1
/* 21A90 80020E90 11010044 */  beq        $t0, $at, .L80020FA4
/* 21A94 80020E94 00000000 */   nop
/* 21A98 80020E98 110F0042 */  beq        $t0, $t7, .L80020FA4
/* 21A9C 80020E9C 00000000 */   nop
/* 21AA0 80020EA0 8FAA0028 */  lw         $t2, 0x28($sp)
/* 21AA4 80020EA4 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 21AA8 80020EA8 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 21AAC 80020EAC 000A5880 */  sll        $t3, $t2, 2
/* 21AB0 80020EB0 016A5823 */  subu       $t3, $t3, $t2
/* 21AB4 80020EB4 000B5880 */  sll        $t3, $t3, 2
/* 21AB8 80020EB8 016A5823 */  subu       $t3, $t3, $t2
/* 21ABC 80020EBC 000B5880 */  sll        $t3, $t3, 2
/* 21AC0 80020EC0 016A5821 */  addu       $t3, $t3, $t2
/* 21AC4 80020EC4 000B5880 */  sll        $t3, $t3, 2
/* 21AC8 80020EC8 016A5823 */  subu       $t3, $t3, $t2
/* 21ACC 80020ECC 000B5880 */  sll        $t3, $t3, 2
/* 21AD0 80020ED0 012B6021 */  addu       $t4, $t1, $t3
/* 21AD4 80020ED4 8D8D00A4 */  lw         $t5, 0xa4($t4)
/* 21AD8 80020ED8 C58A00E8 */  lwc1       $f10, 0xe8($t4)
/* 21ADC 80020EDC C58400E0 */  lwc1       $f4, 0xe0($t4)
/* 21AE0 80020EE0 000D7080 */  sll        $t6, $t5, 2
/* 21AE4 80020EE4 01CD7023 */  subu       $t6, $t6, $t5
/* 21AE8 80020EE8 000E7080 */  sll        $t6, $t6, 2
/* 21AEC 80020EEC 01CD7023 */  subu       $t6, $t6, $t5
/* 21AF0 80020EF0 000E7080 */  sll        $t6, $t6, 2
/* 21AF4 80020EF4 01CD7021 */  addu       $t6, $t6, $t5
/* 21AF8 80020EF8 000E7080 */  sll        $t6, $t6, 2
/* 21AFC 80020EFC 01CD7023 */  subu       $t6, $t6, $t5
/* 21B00 80020F00 000E7080 */  sll        $t6, $t6, 2
/* 21B04 80020F04 012EC021 */  addu       $t8, $t1, $t6
/* 21B08 80020F08 C71000E8 */  lwc1       $f16, 0xe8($t8)
/* 21B0C 80020F0C C70600E0 */  lwc1       $f6, 0xe0($t8)
/* 21B10 80020F10 C58C0100 */  lwc1       $f12, 0x100($t4)
/* 21B14 80020F14 46105481 */  sub.s      $f18, $f10, $f16
/* 21B18 80020F18 C58E00FC */  lwc1       $f14, 0xfc($t4)
/* 21B1C 80020F1C 46062201 */  sub.s      $f8, $f4, $f6
/* 21B20 80020F20 46009107 */  neg.s      $f4, $f18
/* 21B24 80020F24 44064000 */  mfc1       $a2, $f8
/* 21B28 80020F28 44072000 */  mfc1       $a3, $f4
/* 21B2C 80020F2C 0C004794 */  jal        func_80011E50
/* 21B30 80020F30 00000000 */   nop
/* 21B34 80020F34 8FA80028 */  lw         $t0, 0x28($sp)
/* 21B38 80020F38 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 21B3C 80020F3C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21B40 80020F40 00087880 */  sll        $t7, $t0, 2
/* 21B44 80020F44 01E87823 */  subu       $t7, $t7, $t0
/* 21B48 80020F48 000F7880 */  sll        $t7, $t7, 2
/* 21B4C 80020F4C 01E87823 */  subu       $t7, $t7, $t0
/* 21B50 80020F50 000F7880 */  sll        $t7, $t7, 2
/* 21B54 80020F54 01E87821 */  addu       $t7, $t7, $t0
/* 21B58 80020F58 000F7880 */  sll        $t7, $t7, 2
/* 21B5C 80020F5C 01E87823 */  subu       $t7, $t7, $t0
/* 21B60 80020F60 000F7880 */  sll        $t7, $t7, 2
/* 21B64 80020F64 032F5021 */  addu       $t2, $t9, $t7
/* 21B68 80020F68 C54600AC */  lwc1       $f6, 0xac($t2)
/* 21B6C 80020F6C 46000506 */  mov.s      $f20, $f0
/* 21B70 80020F70 3C01800E */  lui        $at, %hi(D_800DC280)
/* 21B74 80020F74 4606A203 */  div.s      $f8, $f20, $f6
/* 21B78 80020F78 D432C280 */  ldc1       $f18, %lo(D_800DC280)($at)
/* 21B7C 80020F7C 3C014024 */  lui        $at, 0x4024
/* 21B80 80020F80 44813800 */  mtc1       $at, $f7
/* 21B84 80020F84 44803000 */  mtc1       $zero, $f6
/* 21B88 80020F88 E7A80024 */  swc1       $f8, 0x24($sp)
/* 21B8C 80020F8C C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 21B90 80020F90 46005421 */  cvt.d.s    $f16, $f10
/* 21B94 80020F94 46328102 */  mul.d      $f4, $f16, $f18
/* 21B98 80020F98 46262203 */  div.d      $f8, $f4, $f6
/* 21B9C 80020F9C 462042A0 */  cvt.s.d    $f10, $f8
/* 21BA0 80020FA0 E54A00F4 */  swc1       $f10, 0xf4($t2)
.L80020FA4:
/* 21BA4 80020FA4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 21BA8 80020FA8 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 21BAC 80020FAC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 21BB0 80020FB0 03E00008 */  jr         $ra
/* 21BB4 80020FB4 00000000 */   nop

glabel func_80020FB8
/* 21BB8 80020FB8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 21BBC 80020FBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 21BC0 80020FC0 AFA40028 */  sw         $a0, 0x28($sp)
/* 21BC4 80020FC4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 21BC8 80020FC8 AFA60030 */  sw         $a2, 0x30($sp)
/* 21BCC 80020FCC AFA70034 */  sw         $a3, 0x34($sp)
/* 21BD0 80020FD0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 21BD4 80020FD4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21BD8 80020FD8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21BDC 80020FDC 000FC080 */  sll        $t8, $t7, 2
/* 21BE0 80020FE0 030FC023 */  subu       $t8, $t8, $t7
/* 21BE4 80020FE4 0018C080 */  sll        $t8, $t8, 2
/* 21BE8 80020FE8 030FC023 */  subu       $t8, $t8, $t7
/* 21BEC 80020FEC 0018C080 */  sll        $t8, $t8, 2
/* 21BF0 80020FF0 030FC021 */  addu       $t8, $t8, $t7
/* 21BF4 80020FF4 0018C080 */  sll        $t8, $t8, 2
/* 21BF8 80020FF8 030FC023 */  subu       $t8, $t8, $t7
/* 21BFC 80020FFC 0018C080 */  sll        $t8, $t8, 2
/* 21C00 80021000 01D8C821 */  addu       $t9, $t6, $t8
/* 21C04 80021004 C72A00E8 */  lwc1       $f10, 0xe8($t9)
/* 21C08 80021008 C7B00034 */  lwc1       $f16, 0x34($sp)
/* 21C0C 8002100C C72400E0 */  lwc1       $f4, 0xe0($t9)
/* 21C10 80021010 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* 21C14 80021014 460A8481 */  sub.s      $f18, $f16, $f10
/* 21C18 80021018 C72C0100 */  lwc1       $f12, 0x100($t9)
/* 21C1C 8002101C C72E00FC */  lwc1       $f14, 0xfc($t9)
/* 21C20 80021020 46043201 */  sub.s      $f8, $f6, $f4
/* 21C24 80021024 46009187 */  neg.s      $f6, $f18
/* 21C28 80021028 44064000 */  mfc1       $a2, $f8
/* 21C2C 8002102C 44073000 */  mfc1       $a3, $f6
/* 21C30 80021030 0C004794 */  jal        func_80011E50
/* 21C34 80021034 00000000 */   nop
/* 21C38 80021038 8FA90028 */  lw         $t1, 0x28($sp)
/* 21C3C 8002103C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 21C40 80021040 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 21C44 80021044 00095080 */  sll        $t2, $t1, 2
/* 21C48 80021048 01495023 */  subu       $t2, $t2, $t1
/* 21C4C 8002104C 000A5080 */  sll        $t2, $t2, 2
/* 21C50 80021050 01495023 */  subu       $t2, $t2, $t1
/* 21C54 80021054 000A5080 */  sll        $t2, $t2, 2
/* 21C58 80021058 01495021 */  addu       $t2, $t2, $t1
/* 21C5C 8002105C 000A5080 */  sll        $t2, $t2, 2
/* 21C60 80021060 01495023 */  subu       $t2, $t2, $t1
/* 21C64 80021064 000A5080 */  sll        $t2, $t2, 2
/* 21C68 80021068 E7A00024 */  swc1       $f0, 0x24($sp)
/* 21C6C 8002106C 010A5821 */  addu       $t3, $t0, $t2
/* 21C70 80021070 C56400E0 */  lwc1       $f4, 0xe0($t3)
/* 21C74 80021074 C57000E8 */  lwc1       $f16, 0xe8($t3)
/* 21C78 80021078 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* 21C7C 8002107C C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 21C80 80021080 46044301 */  sub.s      $f12, $f8, $f4
/* 21C84 80021084 0C00475A */  jal        func_80011D68
/* 21C88 80021088 46105381 */   sub.s     $f14, $f10, $f16
/* 21C8C 8002108C E7A0001C */  swc1       $f0, 0x1c($sp)
/* 21C90 80021090 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* 21C94 80021094 3C014049 */  lui        $at, 0x4049
/* 21C98 80021098 44814800 */  mtc1       $at, $f9
/* 21C9C 8002109C 44804000 */  mtc1       $zero, $f8
/* 21CA0 800210A0 460091A1 */  cvt.d.s    $f6, $f18
/* 21CA4 800210A4 4628303C */  c.lt.d     $f6, $f8
/* 21CA8 800210A8 00000000 */  nop
/* 21CAC 800210AC 45000004 */  bc1f       .L800210C0
/* 21CB0 800210B0 3C014248 */   lui       $at, 0x4248
/* 21CB4 800210B4 44812000 */  mtc1       $at, $f4
/* 21CB8 800210B8 00000000 */  nop
/* 21CBC 800210BC E7A4001C */  swc1       $f4, 0x1c($sp)
.L800210C0:
/* 21CC0 800210C0 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 21CC4 800210C4 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* 21CC8 800210C8 3C01800E */  lui        $at, %hi(D_800DC288)
/* 21CCC 800210CC D428C288 */  ldc1       $f8, %lo(D_800DC288)($at)
/* 21CD0 800210D0 46105483 */  div.s      $f18, $f10, $f16
/* 21CD4 800210D4 3C014049 */  lui        $at, 0x4049
/* 21CD8 800210D8 44815800 */  mtc1       $at, $f11
/* 21CDC 800210DC 44805000 */  mtc1       $zero, $f10
/* 21CE0 800210E0 8FAD0028 */  lw         $t5, 0x28($sp)
/* 21CE4 800210E4 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 21CE8 800210E8 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 21CEC 800210EC 000D7880 */  sll        $t7, $t5, 2
/* 21CF0 800210F0 01ED7823 */  subu       $t7, $t7, $t5
/* 21CF4 800210F4 000F7880 */  sll        $t7, $t7, 2
/* 21CF8 800210F8 01ED7823 */  subu       $t7, $t7, $t5
/* 21CFC 800210FC 000F7880 */  sll        $t7, $t7, 2
/* 21D00 80021100 01ED7821 */  addu       $t7, $t7, $t5
/* 21D04 80021104 000F7880 */  sll        $t7, $t7, 2
/* 21D08 80021108 01ED7823 */  subu       $t7, $t7, $t5
/* 21D0C 8002110C 000F7880 */  sll        $t7, $t7, 2
/* 21D10 80021110 018F7021 */  addu       $t6, $t4, $t7
/* 21D14 80021114 460091A1 */  cvt.d.s    $f6, $f18
/* 21D18 80021118 E7B20020 */  swc1       $f18, 0x20($sp)
/* 21D1C 8002111C 46283102 */  mul.d      $f4, $f6, $f8
/* 21D20 80021120 462A2403 */  div.d      $f16, $f4, $f10
/* 21D24 80021124 462084A0 */  cvt.s.d    $f18, $f16
/* 21D28 80021128 E5D200F4 */  swc1       $f18, 0xf4($t6)
/* 21D2C 8002112C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21D30 80021130 27BD0028 */  addiu      $sp, $sp, 0x28
/* 21D34 80021134 03E00008 */  jr         $ra
/* 21D38 80021138 00000000 */   nop

glabel func_8002113C
/* 21D3C 8002113C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21D40 80021140 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21D44 80021144 AFA40020 */  sw         $a0, 0x20($sp)
/* 21D48 80021148 AFA50024 */  sw         $a1, 0x24($sp)
/* 21D4C 8002114C AFA60028 */  sw         $a2, 0x28($sp)
/* 21D50 80021150 AFA7002C */  sw         $a3, 0x2c($sp)
/* 21D54 80021154 27AE0024 */  addiu      $t6, $sp, 0x24
/* 21D58 80021158 8DD80000 */  lw         $t8, ($t6)
/* 21D5C 8002115C 8FA40020 */  lw         $a0, 0x20($sp)
/* 21D60 80021160 AFB80004 */  sw         $t8, 4($sp)
/* 21D64 80021164 8DCF0004 */  lw         $t7, 4($t6)
/* 21D68 80021168 8FA50004 */  lw         $a1, 4($sp)
/* 21D6C 8002116C AFAF0008 */  sw         $t7, 8($sp)
/* 21D70 80021170 8DD80008 */  lw         $t8, 8($t6)
/* 21D74 80021174 8FA60008 */  lw         $a2, 8($sp)
/* 21D78 80021178 AFB8000C */  sw         $t8, 0xc($sp)
/* 21D7C 8002117C 0C0083EE */  jal        func_80020FB8
/* 21D80 80021180 8FA7000C */   lw        $a3, 0xc($sp)
/* 21D84 80021184 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 21D88 80021188 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 21D8C 8002118C 3C014059 */  lui        $at, 0x4059
/* 21D90 80021190 44814800 */  mtc1       $at, $f9
/* 21D94 80021194 44804000 */  mtc1       $zero, $f8
/* 21D98 80021198 460021A1 */  cvt.d.s    $f6, $f4
/* 21D9C 8002119C 4628303C */  c.lt.d     $f6, $f8
/* 21DA0 800211A0 00000000 */  nop
/* 21DA4 800211A4 4500001F */  bc1f       .L80021224
/* 21DA8 800211A8 00000000 */   nop
/* 21DAC 800211AC 8FA90020 */  lw         $t1, 0x20($sp)
/* 21DB0 800211B0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 21DB4 800211B4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 21DB8 800211B8 00095080 */  sll        $t2, $t1, 2
/* 21DBC 800211BC 01495023 */  subu       $t2, $t2, $t1
/* 21DC0 800211C0 000A5080 */  sll        $t2, $t2, 2
/* 21DC4 800211C4 01495023 */  subu       $t2, $t2, $t1
/* 21DC8 800211C8 000A5080 */  sll        $t2, $t2, 2
/* 21DCC 800211CC 01495021 */  addu       $t2, $t2, $t1
/* 21DD0 800211D0 000A5080 */  sll        $t2, $t2, 2
/* 21DD4 800211D4 01495023 */  subu       $t2, $t2, $t1
/* 21DD8 800211D8 000A5080 */  sll        $t2, $t2, 2
/* 21DDC 800211DC 2419000C */  addiu      $t9, $zero, 0xc
/* 21DE0 800211E0 010A5821 */  addu       $t3, $t0, $t2
/* 21DE4 800211E4 AD790080 */  sw         $t9, 0x80($t3)
/* 21DE8 800211E8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 21DEC 800211EC 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 21DF0 800211F0 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 21DF4 800211F4 000E7880 */  sll        $t7, $t6, 2
/* 21DF8 800211F8 01EE7823 */  subu       $t7, $t7, $t6
/* 21DFC 800211FC 000F7880 */  sll        $t7, $t7, 2
/* 21E00 80021200 01EE7823 */  subu       $t7, $t7, $t6
/* 21E04 80021204 000F7880 */  sll        $t7, $t7, 2
/* 21E08 80021208 01EE7821 */  addu       $t7, $t7, $t6
/* 21E0C 8002120C 000F7880 */  sll        $t7, $t7, 2
/* 21E10 80021210 01EE7823 */  subu       $t7, $t7, $t6
/* 21E14 80021214 000F7880 */  sll        $t7, $t7, 2
/* 21E18 80021218 240C002D */  addiu      $t4, $zero, 0x2d
/* 21E1C 8002121C 01AFC021 */  addu       $t8, $t5, $t7
/* 21E20 80021220 AF0C007C */  sw         $t4, 0x7c($t8)
.L80021224:
/* 21E24 80021224 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21E28 80021228 27BD0020 */  addiu      $sp, $sp, 0x20
/* 21E2C 8002122C 03E00008 */  jr         $ra
/* 21E30 80021230 00000000 */   nop

glabel func_80021234
/* 21E34 80021234 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21E38 80021238 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21E3C 8002123C AFA40020 */  sw         $a0, 0x20($sp)
/* 21E40 80021240 8FAF0020 */  lw         $t7, 0x20($sp)
/* 21E44 80021244 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 21E48 80021248 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 21E4C 8002124C 000FC080 */  sll        $t8, $t7, 2
/* 21E50 80021250 030FC023 */  subu       $t8, $t8, $t7
/* 21E54 80021254 0018C080 */  sll        $t8, $t8, 2
/* 21E58 80021258 030FC023 */  subu       $t8, $t8, $t7
/* 21E5C 8002125C 0018C080 */  sll        $t8, $t8, 2
/* 21E60 80021260 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 21E64 80021264 030FC021 */  addu       $t8, $t8, $t7
/* 21E68 80021268 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 21E6C 8002126C 0018C080 */  sll        $t8, $t8, 2
/* 21E70 80021270 00084880 */  sll        $t1, $t0, 2
/* 21E74 80021274 030FC023 */  subu       $t8, $t8, $t7
/* 21E78 80021278 01284823 */  subu       $t1, $t1, $t0
/* 21E7C 8002127C 0018C080 */  sll        $t8, $t8, 2
/* 21E80 80021280 00094880 */  sll        $t1, $t1, 2
/* 21E84 80021284 01284823 */  subu       $t1, $t1, $t0
/* 21E88 80021288 01D8C821 */  addu       $t9, $t6, $t8
/* 21E8C 8002128C C72400AC */  lwc1       $f4, 0xac($t9)
/* 21E90 80021290 00094880 */  sll        $t1, $t1, 2
/* 21E94 80021294 01284821 */  addu       $t1, $t1, $t0
/* 21E98 80021298 00094880 */  sll        $t1, $t1, 2
/* 21E9C 8002129C 01284823 */  subu       $t1, $t1, $t0
/* 21EA0 800212A0 E7A4001C */  swc1       $f4, 0x1c($sp)
/* 21EA4 800212A4 00094880 */  sll        $t1, $t1, 2
/* 21EA8 800212A8 01C95021 */  addu       $t2, $t6, $t1
/* 21EAC 800212AC C54800E0 */  lwc1       $f8, 0xe0($t2)
/* 21EB0 800212B0 C72600E0 */  lwc1       $f6, 0xe0($t9)
/* 21EB4 800212B4 C54400E8 */  lwc1       $f4, 0xe8($t2)
/* 21EB8 800212B8 C73200E8 */  lwc1       $f18, 0xe8($t9)
/* 21EBC 800212BC 46083301 */  sub.s      $f12, $f6, $f8
/* 21EC0 800212C0 C55000E4 */  lwc1       $f16, 0xe4($t2)
/* 21EC4 800212C4 C72A00E4 */  lwc1       $f10, 0xe4($t9)
/* 21EC8 800212C8 46049181 */  sub.s      $f6, $f18, $f4
/* 21ECC 800212CC 46105381 */  sub.s      $f14, $f10, $f16
/* 21ED0 800212D0 44063000 */  mfc1       $a2, $f6
/* 21ED4 800212D4 0C016916 */  jal        func_8005A458
/* 21ED8 800212D8 00000000 */   nop
/* 21EDC 800212DC 8FAC0020 */  lw         $t4, 0x20($sp)
/* 21EE0 800212E0 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 21EE4 800212E4 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 21EE8 800212E8 000C6880 */  sll        $t5, $t4, 2
/* 21EEC 800212EC 01AC6823 */  subu       $t5, $t5, $t4
/* 21EF0 800212F0 000D6880 */  sll        $t5, $t5, 2
/* 21EF4 800212F4 01AC6823 */  subu       $t5, $t5, $t4
/* 21EF8 800212F8 000D6880 */  sll        $t5, $t5, 2
/* 21EFC 800212FC 01AC6821 */  addu       $t5, $t5, $t4
/* 21F00 80021300 000D6880 */  sll        $t5, $t5, 2
/* 21F04 80021304 01AC6823 */  subu       $t5, $t5, $t4
/* 21F08 80021308 000D6880 */  sll        $t5, $t5, 2
/* 21F0C 8002130C 016D7821 */  addu       $t7, $t3, $t5
/* 21F10 80021310 E5E000AC */  swc1       $f0, 0xac($t7)
/* 21F14 80021314 3C058016 */  lui        $a1, %hi(D_8015FB88)
/* 21F18 80021318 8CA5FB88 */  lw         $a1, %lo(D_8015FB88)($a1)
/* 21F1C 8002131C 0C004482 */  jal        func_80011208
/* 21F20 80021320 8FA40020 */   lw        $a0, 0x20($sp)
/* 21F24 80021324 3C01800E */  lui        $at, %hi(D_800DC290)
/* 21F28 80021328 D42AC290 */  ldc1       $f10, %lo(D_800DC290)($at)
/* 21F2C 8002132C 46000221 */  cvt.d.s    $f8, $f0
/* 21F30 80021330 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 21F34 80021334 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 21F38 80021338 462A4402 */  mul.d      $f16, $f8, $f10
/* 21F3C 8002133C 3C188016 */  lui        $t8, 0x8016
/* 21F40 80021340 00087080 */  sll        $t6, $t0, 2
/* 21F44 80021344 01C87023 */  subu       $t6, $t6, $t0
/* 21F48 80021348 000E7080 */  sll        $t6, $t6, 2
/* 21F4C 8002134C 01C87023 */  subu       $t6, $t6, $t0
/* 21F50 80021350 000E7080 */  sll        $t6, $t6, 2
/* 21F54 80021354 01C87021 */  addu       $t6, $t6, $t0
/* 21F58 80021358 462084A0 */  cvt.s.d    $f18, $f16
/* 21F5C 8002135C 8F18FB9C */  lw         $t8, -0x464($t8)
/* 21F60 80021360 000E7080 */  sll        $t6, $t6, 2
/* 21F64 80021364 01C87023 */  subu       $t6, $t6, $t0
/* 21F68 80021368 000E7080 */  sll        $t6, $t6, 2
/* 21F6C 8002136C 030E4821 */  addu       $t1, $t8, $t6
/* 21F70 80021370 E53200F4 */  swc1       $f18, 0xf4($t1)
/* 21F74 80021374 3C0A8016 */  lui        $t2, %hi(D_8015FB88)
/* 21F78 80021378 8D4AFB88 */  lw         $t2, %lo(D_8015FB88)($t2)
/* 21F7C 8002137C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 21F80 80021380 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 21F84 80021384 000A6080 */  sll        $t4, $t2, 2
/* 21F88 80021388 018A6023 */  subu       $t4, $t4, $t2
/* 21F8C 8002138C 000C6080 */  sll        $t4, $t4, 2
/* 21F90 80021390 018A6023 */  subu       $t4, $t4, $t2
/* 21F94 80021394 000C6080 */  sll        $t4, $t4, 2
/* 21F98 80021398 018A6021 */  addu       $t4, $t4, $t2
/* 21F9C 8002139C 000C6080 */  sll        $t4, $t4, 2
/* 21FA0 800213A0 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 21FA4 800213A4 018A6023 */  subu       $t4, $t4, $t2
/* 21FA8 800213A8 000C6080 */  sll        $t4, $t4, 2
/* 21FAC 800213AC 032C5821 */  addu       $t3, $t9, $t4
/* 21FB0 800213B0 E56400AC */  swc1       $f4, 0xac($t3)
/* 21FB4 800213B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21FB8 800213B8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 21FBC 800213BC 03E00008 */  jr         $ra
/* 21FC0 800213C0 00000000 */   nop

glabel func_800213C4
/* 21FC4 800213C4 3C0E8016 */  lui        $t6, %hi(D_8015ED80)
/* 21FC8 800213C8 8DCEED80 */  lw         $t6, %lo(D_8015ED80)($t6)
/* 21FCC 800213CC 11C000D4 */  beqz       $t6, .L80021720
/* 21FD0 800213D0 00000000 */   nop
/* 21FD4 800213D4 0004C080 */  sll        $t8, $a0, 2
/* 21FD8 800213D8 0304C023 */  subu       $t8, $t8, $a0
/* 21FDC 800213DC 0018C080 */  sll        $t8, $t8, 2
/* 21FE0 800213E0 0304C023 */  subu       $t8, $t8, $a0
/* 21FE4 800213E4 0018C080 */  sll        $t8, $t8, 2
/* 21FE8 800213E8 0304C021 */  addu       $t8, $t8, $a0
/* 21FEC 800213EC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 21FF0 800213F0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 21FF4 800213F4 0018C080 */  sll        $t8, $t8, 2
/* 21FF8 800213F8 0304C023 */  subu       $t8, $t8, $a0
/* 21FFC 800213FC 0018C080 */  sll        $t8, $t8, 2
/* 22000 80021400 01F8C821 */  addu       $t9, $t7, $t8
/* 22004 80021404 8F280064 */  lw         $t0, 0x64($t9)
/* 22008 80021408 24010013 */  addiu      $at, $zero, 0x13
/* 2200C 8002140C 110100C4 */  beq        $t0, $at, .L80021720
/* 22010 80021410 00000000 */   nop
/* 22014 80021414 00044880 */  sll        $t1, $a0, 2
/* 22018 80021418 01244823 */  subu       $t1, $t1, $a0
/* 2201C 8002141C 00094880 */  sll        $t1, $t1, 2
/* 22020 80021420 01244823 */  subu       $t1, $t1, $a0
/* 22024 80021424 00094880 */  sll        $t1, $t1, 2
/* 22028 80021428 01244821 */  addu       $t1, $t1, $a0
/* 2202C 8002142C 00094880 */  sll        $t1, $t1, 2
/* 22030 80021430 01244823 */  subu       $t1, $t1, $a0
/* 22034 80021434 00094880 */  sll        $t1, $t1, 2
/* 22038 80021438 01E95021 */  addu       $t2, $t7, $t1
/* 2203C 8002143C 8D4B0064 */  lw         $t3, 0x64($t2)
/* 22040 80021440 24010064 */  addiu      $at, $zero, 0x64
/* 22044 80021444 116100B6 */  beq        $t3, $at, .L80021720
/* 22048 80021448 00000000 */   nop
/* 2204C 8002144C 00046080 */  sll        $t4, $a0, 2
/* 22050 80021450 01846023 */  subu       $t4, $t4, $a0
/* 22054 80021454 000C6080 */  sll        $t4, $t4, 2
/* 22058 80021458 01846023 */  subu       $t4, $t4, $a0
/* 2205C 8002145C 000C6080 */  sll        $t4, $t4, 2
/* 22060 80021460 01846021 */  addu       $t4, $t4, $a0
/* 22064 80021464 000C6080 */  sll        $t4, $t4, 2
/* 22068 80021468 01846023 */  subu       $t4, $t4, $a0
/* 2206C 8002146C 000C6080 */  sll        $t4, $t4, 2
/* 22070 80021470 01EC6821 */  addu       $t5, $t7, $t4
/* 22074 80021474 8DAE0064 */  lw         $t6, 0x64($t5)
/* 22078 80021478 24010039 */  addiu      $at, $zero, 0x39
/* 2207C 8002147C 11C100A8 */  beq        $t6, $at, .L80021720
/* 22080 80021480 00000000 */   nop
/* 22084 80021484 0004C080 */  sll        $t8, $a0, 2
/* 22088 80021488 0304C023 */  subu       $t8, $t8, $a0
/* 2208C 8002148C 0018C080 */  sll        $t8, $t8, 2
/* 22090 80021490 0304C023 */  subu       $t8, $t8, $a0
/* 22094 80021494 0018C080 */  sll        $t8, $t8, 2
/* 22098 80021498 0304C021 */  addu       $t8, $t8, $a0
/* 2209C 8002149C 0018C080 */  sll        $t8, $t8, 2
/* 220A0 800214A0 0304C023 */  subu       $t8, $t8, $a0
/* 220A4 800214A4 0018C080 */  sll        $t8, $t8, 2
/* 220A8 800214A8 01F8C821 */  addu       $t9, $t7, $t8
/* 220AC 800214AC 8F280064 */  lw         $t0, 0x64($t9)
/* 220B0 800214B0 2401003A */  addiu      $at, $zero, 0x3a
/* 220B4 800214B4 1101009A */  beq        $t0, $at, .L80021720
/* 220B8 800214B8 00000000 */   nop
/* 220BC 800214BC 00044880 */  sll        $t1, $a0, 2
/* 220C0 800214C0 01244823 */  subu       $t1, $t1, $a0
/* 220C4 800214C4 00094880 */  sll        $t1, $t1, 2
/* 220C8 800214C8 01244823 */  subu       $t1, $t1, $a0
/* 220CC 800214CC 00094880 */  sll        $t1, $t1, 2
/* 220D0 800214D0 01244821 */  addu       $t1, $t1, $a0
/* 220D4 800214D4 00094880 */  sll        $t1, $t1, 2
/* 220D8 800214D8 01244823 */  subu       $t1, $t1, $a0
/* 220DC 800214DC 00094880 */  sll        $t1, $t1, 2
/* 220E0 800214E0 01E95021 */  addu       $t2, $t7, $t1
/* 220E4 800214E4 8D4B0064 */  lw         $t3, 0x64($t2)
/* 220E8 800214E8 2401002C */  addiu      $at, $zero, 0x2c
/* 220EC 800214EC 1161008C */  beq        $t3, $at, .L80021720
/* 220F0 800214F0 00000000 */   nop
/* 220F4 800214F4 3C0C8016 */  lui        $t4, %hi(D_8015EDA8)
/* 220F8 800214F8 8D8CEDA8 */  lw         $t4, %lo(D_8015EDA8)($t4)
/* 220FC 800214FC 15800005 */  bnez       $t4, .L80021514
/* 22100 80021500 3C0142B4 */   lui       $at, 0x42b4
/* 22104 80021504 44812000 */  mtc1       $at, $f4
/* 22108 80021508 3C0D8016 */  lui        $t5, %hi(D_8015EB1C)
/* 2210C 8002150C 25ADEB1C */  addiu      $t5, $t5, %lo(D_8015EB1C)
/* 22110 80021510 E5A40068 */  swc1       $f4, 0x68($t5)
.L80021514:
/* 22114 80021514 0004C080 */  sll        $t8, $a0, 2
/* 22118 80021518 0304C023 */  subu       $t8, $t8, $a0
/* 2211C 8002151C 0018C080 */  sll        $t8, $t8, 2
/* 22120 80021520 0304C023 */  subu       $t8, $t8, $a0
/* 22124 80021524 0018C080 */  sll        $t8, $t8, 2
/* 22128 80021528 0304C021 */  addu       $t8, $t8, $a0
/* 2212C 8002152C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 22130 80021530 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 22134 80021534 0018C080 */  sll        $t8, $t8, 2
/* 22138 80021538 0304C023 */  subu       $t8, $t8, $a0
/* 2213C 8002153C 0018C080 */  sll        $t8, $t8, 2
/* 22140 80021540 01D8C821 */  addu       $t9, $t6, $t8
/* 22144 80021544 8F280268 */  lw         $t0, 0x268($t9)
/* 22148 80021548 1100000E */  beqz       $t0, .L80021584
/* 2214C 8002154C 00000000 */   nop
/* 22150 80021550 00044880 */  sll        $t1, $a0, 2
/* 22154 80021554 01244823 */  subu       $t1, $t1, $a0
/* 22158 80021558 00094880 */  sll        $t1, $t1, 2
/* 2215C 8002155C 01244823 */  subu       $t1, $t1, $a0
/* 22160 80021560 00094880 */  sll        $t1, $t1, 2
/* 22164 80021564 01244821 */  addu       $t1, $t1, $a0
/* 22168 80021568 00094880 */  sll        $t1, $t1, 2
/* 2216C 8002156C 01244823 */  subu       $t1, $t1, $a0
/* 22170 80021570 00094880 */  sll        $t1, $t1, 2
/* 22174 80021574 01C95021 */  addu       $t2, $t6, $t1
/* 22178 80021578 3C0F0400 */  lui        $t7, 0x400
/* 2217C 8002157C 10000026 */  b          .L80021618
/* 22180 80021580 AD4F0288 */   sw        $t7, 0x288($t2)
.L80021584:
/* 22184 80021584 00046080 */  sll        $t4, $a0, 2
/* 22188 80021588 01846023 */  subu       $t4, $t4, $a0
/* 2218C 8002158C 000C6080 */  sll        $t4, $t4, 2
/* 22190 80021590 01846023 */  subu       $t4, $t4, $a0
/* 22194 80021594 000C6080 */  sll        $t4, $t4, 2
/* 22198 80021598 01846021 */  addu       $t4, $t4, $a0
/* 2219C 8002159C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 221A0 800215A0 0004C880 */  sll        $t9, $a0, 2
/* 221A4 800215A4 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 221A8 800215A8 0324C823 */  subu       $t9, $t9, $a0
/* 221AC 800215AC 000C6080 */  sll        $t4, $t4, 2
/* 221B0 800215B0 01846023 */  subu       $t4, $t4, $a0
/* 221B4 800215B4 0019C880 */  sll        $t9, $t9, 2
/* 221B8 800215B8 0324C823 */  subu       $t9, $t9, $a0
/* 221BC 800215BC 000C6080 */  sll        $t4, $t4, 2
/* 221C0 800215C0 00044880 */  sll        $t1, $a0, 2
/* 221C4 800215C4 01244823 */  subu       $t1, $t1, $a0
/* 221C8 800215C8 0019C880 */  sll        $t9, $t9, 2
/* 221CC 800215CC 016C6821 */  addu       $t5, $t3, $t4
/* 221D0 800215D0 ADA0028C */  sw         $zero, 0x28c($t5)
/* 221D4 800215D4 0324C821 */  addu       $t9, $t9, $a0
/* 221D8 800215D8 00094880 */  sll        $t1, $t1, 2
/* 221DC 800215DC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 221E0 800215E0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 221E4 800215E4 01244823 */  subu       $t1, $t1, $a0
/* 221E8 800215E8 0019C880 */  sll        $t9, $t9, 2
/* 221EC 800215EC 0324C823 */  subu       $t9, $t9, $a0
/* 221F0 800215F0 00094880 */  sll        $t1, $t1, 2
/* 221F4 800215F4 01244821 */  addu       $t1, $t1, $a0
/* 221F8 800215F8 0019C880 */  sll        $t9, $t9, 2
/* 221FC 800215FC 00094880 */  sll        $t1, $t1, 2
/* 22200 80021600 03194021 */  addu       $t0, $t8, $t9
/* 22204 80021604 8D0E028C */  lw         $t6, 0x28c($t0)
/* 22208 80021608 01244823 */  subu       $t1, $t1, $a0
/* 2220C 8002160C 00094880 */  sll        $t1, $t1, 2
/* 22210 80021610 03097821 */  addu       $t7, $t8, $t1
/* 22214 80021614 ADEE0288 */  sw         $t6, 0x288($t7)
.L80021618:
/* 22218 80021618 00045880 */  sll        $t3, $a0, 2
/* 2221C 8002161C 01645823 */  subu       $t3, $t3, $a0
/* 22220 80021620 000B5880 */  sll        $t3, $t3, 2
/* 22224 80021624 01645823 */  subu       $t3, $t3, $a0
/* 22228 80021628 000B5880 */  sll        $t3, $t3, 2
/* 2222C 8002162C 01645821 */  addu       $t3, $t3, $a0
/* 22230 80021630 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 22234 80021634 0004C880 */  sll        $t9, $a0, 2
/* 22238 80021638 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 2223C 8002163C 0324C823 */  subu       $t9, $t9, $a0
/* 22240 80021640 000B5880 */  sll        $t3, $t3, 2
/* 22244 80021644 44803000 */  mtc1       $zero, $f6
/* 22248 80021648 01645823 */  subu       $t3, $t3, $a0
/* 2224C 8002164C 0019C880 */  sll        $t9, $t9, 2
/* 22250 80021650 0324C823 */  subu       $t9, $t9, $a0
/* 22254 80021654 000B5880 */  sll        $t3, $t3, 2
/* 22258 80021658 0004C080 */  sll        $t8, $a0, 2
/* 2225C 8002165C 0304C023 */  subu       $t8, $t8, $a0
/* 22260 80021660 0019C880 */  sll        $t9, $t9, 2
/* 22264 80021664 014B6021 */  addu       $t4, $t2, $t3
/* 22268 80021668 0324C821 */  addu       $t9, $t9, $a0
/* 2226C 8002166C 0018C080 */  sll        $t8, $t8, 2
/* 22270 80021670 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 22274 80021674 E5860294 */  swc1       $f6, 0x294($t4)
/* 22278 80021678 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 2227C 8002167C 0304C023 */  subu       $t8, $t8, $a0
/* 22280 80021680 0019C880 */  sll        $t9, $t9, 2
/* 22284 80021684 0324C823 */  subu       $t9, $t9, $a0
/* 22288 80021688 0018C080 */  sll        $t8, $t8, 2
/* 2228C 8002168C 0304C021 */  addu       $t8, $t8, $a0
/* 22290 80021690 0019C880 */  sll        $t9, $t9, 2
/* 22294 80021694 00047880 */  sll        $t7, $a0, 2
/* 22298 80021698 0018C080 */  sll        $t8, $t8, 2
/* 2229C 8002169C 01E47823 */  subu       $t7, $t7, $a0
/* 222A0 800216A0 01B94021 */  addu       $t0, $t5, $t9
/* 222A4 800216A4 C5080294 */  lwc1       $f8, 0x294($t0)
/* 222A8 800216A8 0304C023 */  subu       $t8, $t8, $a0
/* 222AC 800216AC 000F7880 */  sll        $t7, $t7, 2
/* 222B0 800216B0 0018C080 */  sll        $t8, $t8, 2
/* 222B4 800216B4 01E47823 */  subu       $t7, $t7, $a0
/* 222B8 800216B8 000F7880 */  sll        $t7, $t7, 2
/* 222BC 800216BC 01B84821 */  addu       $t1, $t5, $t8
/* 222C0 800216C0 01E47821 */  addu       $t7, $t7, $a0
/* 222C4 800216C4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 222C8 800216C8 00046080 */  sll        $t4, $a0, 2
/* 222CC 800216CC E5280290 */  swc1       $f8, 0x290($t1)
/* 222D0 800216D0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 222D4 800216D4 000F7880 */  sll        $t7, $t7, 2
/* 222D8 800216D8 01846023 */  subu       $t4, $t4, $a0
/* 222DC 800216DC 01E47823 */  subu       $t7, $t7, $a0
/* 222E0 800216E0 000C6080 */  sll        $t4, $t4, 2
/* 222E4 800216E4 000F7880 */  sll        $t7, $t7, 2
/* 222E8 800216E8 01846023 */  subu       $t4, $t4, $a0
/* 222EC 800216EC 000C6080 */  sll        $t4, $t4, 2
/* 222F0 800216F0 01CF5021 */  addu       $t2, $t6, $t7
/* 222F4 800216F4 A1400054 */  sb         $zero, 0x54($t2)
/* 222F8 800216F8 01846021 */  addu       $t4, $t4, $a0
/* 222FC 800216FC 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 22300 80021700 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 22304 80021704 000C6080 */  sll        $t4, $t4, 2
/* 22308 80021708 01846023 */  subu       $t4, $t4, $a0
/* 2230C 8002170C 000C6080 */  sll        $t4, $t4, 2
/* 22310 80021710 016CC821 */  addu       $t9, $t3, $t4
/* 22314 80021714 A3200055 */  sb         $zero, 0x55($t9)
/* 22318 80021718 03E00008 */  jr         $ra
/* 2231C 8002171C 24020001 */   addiu     $v0, $zero, 1
.L80021720:
/* 22320 80021720 00001025 */  or         $v0, $zero, $zero
/* 22324 80021724 03E00008 */  jr         $ra
/* 22328 80021728 00000000 */   nop

glabel func_8002172C
/* 2232C 8002172C 27BDFF08 */  addiu      $sp, $sp, -0xf8
/* 22330 80021730 AFBF002C */  sw         $ra, 0x2c($sp)
/* 22334 80021734 AFA400F8 */  sw         $a0, 0xf8($sp)
/* 22338 80021738 AFB00028 */  sw         $s0, 0x28($sp)
/* 2233C 8002173C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 22340 80021740 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 22344 80021744 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 22348 80021748 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2234C 8002174C 000FC080 */  sll        $t8, $t7, 2
/* 22350 80021750 030FC023 */  subu       $t8, $t8, $t7
/* 22354 80021754 0018C080 */  sll        $t8, $t8, 2
/* 22358 80021758 030FC023 */  subu       $t8, $t8, $t7
/* 2235C 8002175C 0018C080 */  sll        $t8, $t8, 2
/* 22360 80021760 030FC021 */  addu       $t8, $t8, $t7
/* 22364 80021764 0018C080 */  sll        $t8, $t8, 2
/* 22368 80021768 030FC023 */  subu       $t8, $t8, $t7
/* 2236C 8002176C 0018C080 */  sll        $t8, $t8, 2
/* 22370 80021770 01D8C821 */  addu       $t9, $t6, $t8
/* 22374 80021774 8F28007C */  lw         $t0, 0x7c($t9)
/* 22378 80021778 19000003 */  blez       $t0, .L80021788
/* 2237C 8002177C 00000000 */   nop
/* 22380 80021780 2509FFFF */  addiu      $t1, $t0, -1
/* 22384 80021784 AF29007C */  sw         $t1, 0x7c($t9)
.L80021788:
/* 22388 80021788 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 2238C 8002178C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 22390 80021790 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 22394 80021794 000B6080 */  sll        $t4, $t3, 2
/* 22398 80021798 018B6023 */  subu       $t4, $t4, $t3
/* 2239C 8002179C 000C6080 */  sll        $t4, $t4, 2
/* 223A0 800217A0 018B6023 */  subu       $t4, $t4, $t3
/* 223A4 800217A4 000C6080 */  sll        $t4, $t4, 2
/* 223A8 800217A8 018B6021 */  addu       $t4, $t4, $t3
/* 223AC 800217AC 000C6080 */  sll        $t4, $t4, 2
/* 223B0 800217B0 018B6023 */  subu       $t4, $t4, $t3
/* 223B4 800217B4 000C6080 */  sll        $t4, $t4, 2
/* 223B8 800217B8 014C6821 */  addu       $t5, $t2, $t4
/* 223BC 800217BC 8DAF0060 */  lw         $t7, 0x60($t5)
/* 223C0 800217C0 31EE0008 */  andi       $t6, $t7, 8
/* 223C4 800217C4 11C00003 */  beqz       $t6, .L800217D4
/* 223C8 800217C8 00000000 */   nop
/* 223CC 800217CC 10000010 */  b          .L80021810
/* 223D0 800217D0 AFA000EC */   sw        $zero, 0xec($sp)
.L800217D4:
/* 223D4 800217D4 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 223D8 800217D8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 223DC 800217DC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 223E0 800217E0 00084880 */  sll        $t1, $t0, 2
/* 223E4 800217E4 01284823 */  subu       $t1, $t1, $t0
/* 223E8 800217E8 00094880 */  sll        $t1, $t1, 2
/* 223EC 800217EC 01284823 */  subu       $t1, $t1, $t0
/* 223F0 800217F0 00094880 */  sll        $t1, $t1, 2
/* 223F4 800217F4 01284821 */  addu       $t1, $t1, $t0
/* 223F8 800217F8 00094880 */  sll        $t1, $t1, 2
/* 223FC 800217FC 01284823 */  subu       $t1, $t1, $t0
/* 22400 80021800 00094880 */  sll        $t1, $t1, 2
/* 22404 80021804 0309C821 */  addu       $t9, $t8, $t1
/* 22408 80021808 8F2B007C */  lw         $t3, 0x7c($t9)
/* 2240C 8002180C AFAB00EC */  sw         $t3, 0xec($sp)
.L80021810:
/* 22410 80021810 8FAA00EC */  lw         $t2, 0xec($sp)
/* 22414 80021814 1D401454 */  bgtz       $t2, .L80026968
/* 22418 80021818 00000000 */   nop
/* 2241C 8002181C 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 22420 80021820 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 22424 80021824 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 22428 80021828 000D7880 */  sll        $t7, $t5, 2
/* 2242C 8002182C 01ED7823 */  subu       $t7, $t7, $t5
/* 22430 80021830 000F7880 */  sll        $t7, $t7, 2
/* 22434 80021834 01ED7823 */  subu       $t7, $t7, $t5
/* 22438 80021838 000F7880 */  sll        $t7, $t7, 2
/* 2243C 8002183C 01ED7821 */  addu       $t7, $t7, $t5
/* 22440 80021840 000F7880 */  sll        $t7, $t7, 2
/* 22444 80021844 01ED7823 */  subu       $t7, $t7, $t5
/* 22448 80021848 000F7880 */  sll        $t7, $t7, 2
/* 2244C 8002184C 018F7021 */  addu       $t6, $t4, $t7
/* 22450 80021850 C5C400AC */  lwc1       $f4, 0xac($t6)
/* 22454 80021854 E7A400DC */  swc1       $f4, 0xdc($sp)
/* 22458 80021858 8DC80080 */  lw         $t0, 0x80($t6)
/* 2245C 8002185C AFA800F4 */  sw         $t0, 0xf4($sp)
/* 22460 80021860 8DD80084 */  lw         $t8, 0x84($t6)
/* 22464 80021864 AFB800E8 */  sw         $t8, 0xe8($sp)
/* 22468 80021868 8DC9006C */  lw         $t1, 0x6c($t6)
/* 2246C 8002186C AFA900E4 */  sw         $t1, 0xe4($sp)
/* 22470 80021870 8DD90074 */  lw         $t9, 0x74($t6)
/* 22474 80021874 AFB900E0 */  sw         $t9, 0xe0($sp)
/* 22478 80021878 8DCB0064 */  lw         $t3, 0x64($t6)
/* 2247C 8002187C AFAB00F0 */  sw         $t3, 0xf0($sp)
/* 22480 80021880 ADC00288 */  sw         $zero, 0x288($t6)
/* 22484 80021884 8FAA00F0 */  lw         $t2, 0xf0($sp)
/* 22488 80021888 2D410065 */  sltiu      $at, $t2, 0x65
/* 2248C 8002188C 10201406 */  beqz       $at, .L800268A8
/* 22490 80021890 00000000 */   nop
/* 22494 80021894 000A5080 */  sll        $t2, $t2, 2
/* 22498 80021898 3C01800E */  lui        $at, %hi(D_800DC298)
/* 2249C 8002189C 002A0821 */  addu       $at, $at, $t2
/* 224A0 800218A0 8C2AC298 */  lw         $t2, %lo(D_800DC298)($at)
/* 224A4 800218A4 01400008 */  jr         $t2
/* 224A8 800218A8 00000000 */   nop
/* 224AC 800218AC 8FAD00F4 */  lw         $t5, 0xf4($sp)
/* 224B0 800218B0 25ACFFF6 */  addiu      $t4, $t5, -0xa
/* 224B4 800218B4 2D810019 */  sltiu      $at, $t4, 0x19
/* 224B8 800218B8 10200087 */  beqz       $at, .L80021AD8
/* 224BC 800218BC 00000000 */   nop
/* 224C0 800218C0 000C6080 */  sll        $t4, $t4, 2
/* 224C4 800218C4 3C01800E */  lui        $at, %hi(D_800DC42C)
/* 224C8 800218C8 002C0821 */  addu       $at, $at, $t4
/* 224CC 800218CC 8C2CC42C */  lw         $t4, %lo(D_800DC42C)($at)
/* 224D0 800218D0 01800008 */  jr         $t4
/* 224D4 800218D4 00000000 */   nop
/* 224D8 800218D8 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 224DC 800218DC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 224E0 800218E0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 224E4 800218E4 0008C080 */  sll        $t8, $t0, 2
/* 224E8 800218E8 0308C023 */  subu       $t8, $t8, $t0
/* 224EC 800218EC 0018C080 */  sll        $t8, $t8, 2
/* 224F0 800218F0 0308C023 */  subu       $t8, $t8, $t0
/* 224F4 800218F4 0018C080 */  sll        $t8, $t8, 2
/* 224F8 800218F8 0308C021 */  addu       $t8, $t8, $t0
/* 224FC 800218FC 0018C080 */  sll        $t8, $t8, 2
/* 22500 80021900 0308C023 */  subu       $t8, $t8, $t0
/* 22504 80021904 0018C080 */  sll        $t8, $t8, 2
/* 22508 80021908 01F84821 */  addu       $t1, $t7, $t8
/* 2250C 8002190C 8D390088 */  lw         $t9, 0x88($t1)
/* 22510 80021910 24010003 */  addiu      $at, $zero, 3
/* 22514 80021914 17210006 */  bne        $t9, $at, .L80021930
/* 22518 80021918 00000000 */   nop
/* 2251C 8002191C 240B003C */  addiu      $t3, $zero, 0x3c
/* 22520 80021920 240E000D */  addiu      $t6, $zero, 0xd
/* 22524 80021924 AFAB00EC */  sw         $t3, 0xec($sp)
/* 22528 80021928 100013DF */  b          .L800268A8
/* 2252C 8002192C AFAE00F4 */   sw        $t6, 0xf4($sp)
.L80021930:
/* 22530 80021930 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 22534 80021934 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 22538 80021938 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 2253C 8002193C 000D6080 */  sll        $t4, $t5, 2
/* 22540 80021940 018D6023 */  subu       $t4, $t4, $t5
/* 22544 80021944 000C6080 */  sll        $t4, $t4, 2
/* 22548 80021948 018D6023 */  subu       $t4, $t4, $t5
/* 2254C 8002194C 000C6080 */  sll        $t4, $t4, 2
/* 22550 80021950 018D6021 */  addu       $t4, $t4, $t5
/* 22554 80021954 000C6080 */  sll        $t4, $t4, 2
/* 22558 80021958 018D6023 */  subu       $t4, $t4, $t5
/* 2255C 8002195C 000C6080 */  sll        $t4, $t4, 2
/* 22560 80021960 014C4021 */  addu       $t0, $t2, $t4
/* 22564 80021964 C506008C */  lwc1       $f6, 0x8c($t0)
/* 22568 80021968 C50800E0 */  lwc1       $f8, 0xe0($t0)
/* 2256C 8002196C 0C004788 */  jal        func_80011E20
/* 22570 80021970 46083301 */   sub.s     $f12, $f6, $f8
/* 22574 80021974 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 22578 80021978 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2257C 8002197C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 22580 80021980 00184880 */  sll        $t1, $t8, 2
/* 22584 80021984 01384823 */  subu       $t1, $t1, $t8
/* 22588 80021988 00094880 */  sll        $t1, $t1, 2
/* 2258C 8002198C 01384823 */  subu       $t1, $t1, $t8
/* 22590 80021990 00094880 */  sll        $t1, $t1, 2
/* 22594 80021994 01384821 */  addu       $t1, $t1, $t8
/* 22598 80021998 00094880 */  sll        $t1, $t1, 2
/* 2259C 8002199C 01384823 */  subu       $t1, $t1, $t8
/* 225A0 800219A0 00094880 */  sll        $t1, $t1, 2
/* 225A4 800219A4 01E9C821 */  addu       $t9, $t7, $t1
/* 225A8 800219A8 C72A0094 */  lwc1       $f10, 0x94($t9)
/* 225AC 800219AC C73000E8 */  lwc1       $f16, 0xe8($t9)
/* 225B0 800219B0 46000506 */  mov.s      $f20, $f0
/* 225B4 800219B4 0C004788 */  jal        func_80011E20
/* 225B8 800219B8 46105301 */   sub.s     $f12, $f10, $f16
/* 225BC 800219BC 46140480 */  add.s      $f18, $f0, $f20
/* 225C0 800219C0 3C01800E */  lui        $at, %hi(D_800DC490)
/* 225C4 800219C4 D426C490 */  ldc1       $f6, %lo(D_800DC490)($at)
/* 225C8 800219C8 46009121 */  cvt.d.s    $f4, $f18
/* 225CC 800219CC 4624303C */  c.lt.d     $f6, $f4
/* 225D0 800219D0 00000000 */  nop
/* 225D4 800219D4 450013B4 */  bc1f       .L800268A8
/* 225D8 800219D8 00000000 */   nop
/* 225DC 800219DC 240B0017 */  addiu      $t3, $zero, 0x17
/* 225E0 800219E0 240E003C */  addiu      $t6, $zero, 0x3c
/* 225E4 800219E4 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 225E8 800219E8 100013AF */  b          .L800268A8
/* 225EC 800219EC AFAE00EC */   sw        $t6, 0xec($sp)
/* 225F0 800219F0 8FAD00E0 */  lw         $t5, 0xe0($sp)
/* 225F4 800219F4 3C01800D */  lui        $at, 0x800d
/* 225F8 800219F8 C7A800DC */  lwc1       $f8, 0xdc($sp)
/* 225FC 800219FC 000D5100 */  sll        $t2, $t5, 4
/* 22600 80021A00 014D5023 */  subu       $t2, $t2, $t5
/* 22604 80021A04 000A5080 */  sll        $t2, $t2, 2
/* 22608 80021A08 002A0821 */  addu       $at, $at, $t2
/* 2260C 80021A0C C42A72F4 */  lwc1       $f10, 0x72f4($at)
/* 22610 80021A10 460A403C */  c.lt.s     $f8, $f10
/* 22614 80021A14 00000000 */  nop
/* 22618 80021A18 45000006 */  bc1f       .L80021A34
/* 2261C 80021A1C 00000000 */   nop
/* 22620 80021A20 240C000D */  addiu      $t4, $zero, 0xd
/* 22624 80021A24 2408001E */  addiu      $t0, $zero, 0x1e
/* 22628 80021A28 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 2262C 80021A2C 1000139E */  b          .L800268A8
/* 22630 80021A30 AFA800EC */   sw        $t0, 0xec($sp)
.L80021A34:
/* 22634 80021A34 24180019 */  addiu      $t8, $zero, 0x19
/* 22638 80021A38 240F001E */  addiu      $t7, $zero, 0x1e
/* 2263C 80021A3C AFB800F4 */  sw         $t8, 0xf4($sp)
/* 22640 80021A40 10001399 */  b          .L800268A8
/* 22644 80021A44 AFAF00EC */   sw        $t7, 0xec($sp)
/* 22648 80021A48 8FA900E0 */  lw         $t1, 0xe0($sp)
/* 2264C 80021A4C 3C01800D */  lui        $at, 0x800d
/* 22650 80021A50 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 22654 80021A54 0009C900 */  sll        $t9, $t1, 4
/* 22658 80021A58 0329C823 */  subu       $t9, $t9, $t1
/* 2265C 80021A5C 0019C880 */  sll        $t9, $t9, 2
/* 22660 80021A60 00390821 */  addu       $at, $at, $t9
/* 22664 80021A64 C43072F8 */  lwc1       $f16, 0x72f8($at)
/* 22668 80021A68 4612803C */  c.lt.s     $f16, $f18
/* 2266C 80021A6C 00000000 */  nop
/* 22670 80021A70 45000006 */  bc1f       .L80021A8C
/* 22674 80021A74 00000000 */   nop
/* 22678 80021A78 240B0017 */  addiu      $t3, $zero, 0x17
/* 2267C 80021A7C 240E001E */  addiu      $t6, $zero, 0x1e
/* 22680 80021A80 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 22684 80021A84 10001388 */  b          .L800268A8
/* 22688 80021A88 AFAE00EC */   sw        $t6, 0xec($sp)
.L80021A8C:
/* 2268C 80021A8C 240D0022 */  addiu      $t5, $zero, 0x22
/* 22690 80021A90 240A001E */  addiu      $t2, $zero, 0x1e
/* 22694 80021A94 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 22698 80021A98 10001383 */  b          .L800268A8
/* 2269C 80021A9C AFAA00EC */   sw        $t2, 0xec($sp)
/* 226A0 80021AA0 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 226A4 80021AA4 2401000A */  addiu      $at, $zero, 0xa
/* 226A8 80021AA8 15810006 */  bne        $t4, $at, .L80021AC4
/* 226AC 80021AAC 00000000 */   nop
/* 226B0 80021AB0 24080013 */  addiu      $t0, $zero, 0x13
/* 226B4 80021AB4 2418001E */  addiu      $t8, $zero, 0x1e
/* 226B8 80021AB8 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 226BC 80021ABC 1000137A */  b          .L800268A8
/* 226C0 80021AC0 AFB800EC */   sw        $t8, 0xec($sp)
.L80021AC4:
/* 226C4 80021AC4 240F000A */  addiu      $t7, $zero, 0xa
/* 226C8 80021AC8 2409001E */  addiu      $t1, $zero, 0x1e
/* 226CC 80021ACC AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 226D0 80021AD0 10001375 */  b          .L800268A8
/* 226D4 80021AD4 AFA900EC */   sw        $t1, 0xec($sp)
.L80021AD8:
/* 226D8 80021AD8 24190013 */  addiu      $t9, $zero, 0x13
/* 226DC 80021ADC 10001372 */  b          .L800268A8
/* 226E0 80021AE0 AFB900F4 */   sw        $t9, 0xf4($sp)
/* 226E4 80021AE4 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 226E8 80021AE8 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 226EC 80021AEC 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 226F0 80021AF0 000E6880 */  sll        $t5, $t6, 2
/* 226F4 80021AF4 01AE6823 */  subu       $t5, $t5, $t6
/* 226F8 80021AF8 000D6880 */  sll        $t5, $t5, 2
/* 226FC 80021AFC 01AE6823 */  subu       $t5, $t5, $t6
/* 22700 80021B00 000D6880 */  sll        $t5, $t5, 2
/* 22704 80021B04 01AE6821 */  addu       $t5, $t5, $t6
/* 22708 80021B08 000D6880 */  sll        $t5, $t5, 2
/* 2270C 80021B0C 01AE6823 */  subu       $t5, $t5, $t6
/* 22710 80021B10 000D6880 */  sll        $t5, $t5, 2
/* 22714 80021B14 016D5021 */  addu       $t2, $t3, $t5
/* 22718 80021B18 8D4C0088 */  lw         $t4, 0x88($t2)
/* 2271C 80021B1C 24010003 */  addiu      $at, $zero, 3
/* 22720 80021B20 15811361 */  bne        $t4, $at, .L800268A8
/* 22724 80021B24 00000000 */   nop
/* 22728 80021B28 8FA800E0 */  lw         $t0, 0xe0($sp)
/* 2272C 80021B2C 3C01800D */  lui        $at, 0x800d
/* 22730 80021B30 C7A400DC */  lwc1       $f4, 0xdc($sp)
/* 22734 80021B34 0008C100 */  sll        $t8, $t0, 4
/* 22738 80021B38 0308C023 */  subu       $t8, $t8, $t0
/* 2273C 80021B3C 0018C080 */  sll        $t8, $t8, 2
/* 22740 80021B40 00380821 */  addu       $at, $at, $t8
/* 22744 80021B44 C42672F4 */  lwc1       $f6, 0x72f4($at)
/* 22748 80021B48 4604303C */  c.lt.s     $f6, $f4
/* 2274C 80021B4C 00000000 */  nop
/* 22750 80021B50 45000006 */  bc1f       .L80021B6C
/* 22754 80021B54 00000000 */   nop
/* 22758 80021B58 240F001E */  addiu      $t7, $zero, 0x1e
/* 2275C 80021B5C 24090019 */  addiu      $t1, $zero, 0x19
/* 22760 80021B60 AFAF00EC */  sw         $t7, 0xec($sp)
/* 22764 80021B64 10001350 */  b          .L800268A8
/* 22768 80021B68 AFA900F4 */   sw        $t1, 0xf4($sp)
.L80021B6C:
/* 2276C 80021B6C 2419000D */  addiu      $t9, $zero, 0xd
/* 22770 80021B70 240E001E */  addiu      $t6, $zero, 0x1e
/* 22774 80021B74 AFB900F4 */  sw         $t9, 0xf4($sp)
/* 22778 80021B78 1000134B */  b          .L800268A8
/* 2277C 80021B7C AFAE00EC */   sw        $t6, 0xec($sp)
/* 22780 80021B80 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 22784 80021B84 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 22788 80021B88 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 2278C 80021B8C 000D5080 */  sll        $t2, $t5, 2
/* 22790 80021B90 014D5023 */  subu       $t2, $t2, $t5
/* 22794 80021B94 000A5080 */  sll        $t2, $t2, 2
/* 22798 80021B98 014D5023 */  subu       $t2, $t2, $t5
/* 2279C 80021B9C 000A5080 */  sll        $t2, $t2, 2
/* 227A0 80021BA0 014D5021 */  addu       $t2, $t2, $t5
/* 227A4 80021BA4 000A5080 */  sll        $t2, $t2, 2
/* 227A8 80021BA8 014D5023 */  subu       $t2, $t2, $t5
/* 227AC 80021BAC 000A5080 */  sll        $t2, $t2, 2
/* 227B0 80021BB0 016A6021 */  addu       $t4, $t3, $t2
/* 227B4 80021BB4 8D880088 */  lw         $t0, 0x88($t4)
/* 227B8 80021BB8 24010003 */  addiu      $at, $zero, 3
/* 227BC 80021BBC 15010006 */  bne        $t0, $at, .L80021BD8
/* 227C0 80021BC0 00000000 */   nop
/* 227C4 80021BC4 2418000D */  addiu      $t8, $zero, 0xd
/* 227C8 80021BC8 240F001E */  addiu      $t7, $zero, 0x1e
/* 227CC 80021BCC AFB800F4 */  sw         $t8, 0xf4($sp)
/* 227D0 80021BD0 10001335 */  b          .L800268A8
/* 227D4 80021BD4 AFAF00EC */   sw        $t7, 0xec($sp)
.L80021BD8:
/* 227D8 80021BD8 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 227DC 80021BDC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 227E0 80021BE0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 227E4 80021BE4 00197080 */  sll        $t6, $t9, 2
/* 227E8 80021BE8 01D97023 */  subu       $t6, $t6, $t9
/* 227EC 80021BEC 000E7080 */  sll        $t6, $t6, 2
/* 227F0 80021BF0 01D97023 */  subu       $t6, $t6, $t9
/* 227F4 80021BF4 000E7080 */  sll        $t6, $t6, 2
/* 227F8 80021BF8 01D97021 */  addu       $t6, $t6, $t9
/* 227FC 80021BFC 000E7080 */  sll        $t6, $t6, 2
/* 22800 80021C00 01D97023 */  subu       $t6, $t6, $t9
/* 22804 80021C04 000E7080 */  sll        $t6, $t6, 2
/* 22808 80021C08 012E6821 */  addu       $t5, $t1, $t6
/* 2280C 80021C0C C5A8008C */  lwc1       $f8, 0x8c($t5)
/* 22810 80021C10 C5AA00E0 */  lwc1       $f10, 0xe0($t5)
/* 22814 80021C14 0C004788 */  jal        func_80011E20
/* 22818 80021C18 460A4301 */   sub.s     $f12, $f8, $f10
/* 2281C 80021C1C 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 22820 80021C20 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 22824 80021C24 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 22828 80021C28 000A6080 */  sll        $t4, $t2, 2
/* 2282C 80021C2C 018A6023 */  subu       $t4, $t4, $t2
/* 22830 80021C30 000C6080 */  sll        $t4, $t4, 2
/* 22834 80021C34 018A6023 */  subu       $t4, $t4, $t2
/* 22838 80021C38 000C6080 */  sll        $t4, $t4, 2
/* 2283C 80021C3C 018A6021 */  addu       $t4, $t4, $t2
/* 22840 80021C40 000C6080 */  sll        $t4, $t4, 2
/* 22844 80021C44 018A6023 */  subu       $t4, $t4, $t2
/* 22848 80021C48 000C6080 */  sll        $t4, $t4, 2
/* 2284C 80021C4C 016C4021 */  addu       $t0, $t3, $t4
/* 22850 80021C50 C5100094 */  lwc1       $f16, 0x94($t0)
/* 22854 80021C54 C51200E8 */  lwc1       $f18, 0xe8($t0)
/* 22858 80021C58 46000506 */  mov.s      $f20, $f0
/* 2285C 80021C5C 0C004788 */  jal        func_80011E20
/* 22860 80021C60 46128301 */   sub.s     $f12, $f16, $f18
/* 22864 80021C64 46140100 */  add.s      $f4, $f0, $f20
/* 22868 80021C68 3C01800E */  lui        $at, %hi(D_800DC498)
/* 2286C 80021C6C D428C498 */  ldc1       $f8, %lo(D_800DC498)($at)
/* 22870 80021C70 460021A1 */  cvt.d.s    $f6, $f4
/* 22874 80021C74 4628303C */  c.lt.d     $f6, $f8
/* 22878 80021C78 00000000 */  nop
/* 2287C 80021C7C 4500130A */  bc1f       .L800268A8
/* 22880 80021C80 00000000 */   nop
/* 22884 80021C84 24180017 */  addiu      $t8, $zero, 0x17
/* 22888 80021C88 240F001E */  addiu      $t7, $zero, 0x1e
/* 2288C 80021C8C AFB800F4 */  sw         $t8, 0xf4($sp)
/* 22890 80021C90 10001305 */  b          .L800268A8
/* 22894 80021C94 AFAF00EC */   sw        $t7, 0xec($sp)
/* 22898 80021C98 24190018 */  addiu      $t9, $zero, 0x18
/* 2289C 80021C9C 10001302 */  b          .L800268A8
/* 228A0 80021CA0 AFB900F4 */   sw        $t9, 0xf4($sp)
/* 228A4 80021CA4 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 228A8 80021CA8 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 228AC 80021CAC 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 228B0 80021CB0 000E6880 */  sll        $t5, $t6, 2
/* 228B4 80021CB4 01AE6823 */  subu       $t5, $t5, $t6
/* 228B8 80021CB8 000D6880 */  sll        $t5, $t5, 2
/* 228BC 80021CBC 01AE6823 */  subu       $t5, $t5, $t6
/* 228C0 80021CC0 000D6880 */  sll        $t5, $t5, 2
/* 228C4 80021CC4 01AE6821 */  addu       $t5, $t5, $t6
/* 228C8 80021CC8 000D6880 */  sll        $t5, $t5, 2
/* 228CC 80021CCC 01AE6823 */  subu       $t5, $t5, $t6
/* 228D0 80021CD0 000D6880 */  sll        $t5, $t5, 2
/* 228D4 80021CD4 012D5021 */  addu       $t2, $t1, $t5
/* 228D8 80021CD8 8D4B0088 */  lw         $t3, 0x88($t2)
/* 228DC 80021CDC 24010003 */  addiu      $at, $zero, 3
/* 228E0 80021CE0 15610005 */  bne        $t3, $at, .L80021CF8
/* 228E4 80021CE4 00000000 */   nop
/* 228E8 80021CE8 240C0003 */  addiu      $t4, $zero, 3
/* 228EC 80021CEC AD4C0064 */  sw         $t4, 0x64($t2)
/* 228F0 80021CF0 100012ED */  b          .L800268A8
/* 228F4 80021CF4 AFA000F4 */   sw        $zero, 0xf4($sp)
.L80021CF8:
/* 228F8 80021CF8 24080013 */  addiu      $t0, $zero, 0x13
/* 228FC 80021CFC 100012EA */  b          .L800268A8
/* 22900 80021D00 AFA800F4 */   sw        $t0, 0xf4($sp)
/* 22904 80021D04 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 22908 80021D08 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2290C 80021D0C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 22910 80021D10 000FC880 */  sll        $t9, $t7, 2
/* 22914 80021D14 032FC823 */  subu       $t9, $t9, $t7
/* 22918 80021D18 0019C880 */  sll        $t9, $t9, 2
/* 2291C 80021D1C 032FC823 */  subu       $t9, $t9, $t7
/* 22920 80021D20 0019C880 */  sll        $t9, $t9, 2
/* 22924 80021D24 032FC821 */  addu       $t9, $t9, $t7
/* 22928 80021D28 0019C880 */  sll        $t9, $t9, 2
/* 2292C 80021D2C 032FC823 */  subu       $t9, $t9, $t7
/* 22930 80021D30 0019C880 */  sll        $t9, $t9, 2
/* 22934 80021D34 03197021 */  addu       $t6, $t8, $t9
/* 22938 80021D38 8DC90270 */  lw         $t1, 0x270($t6)
/* 2293C 80021D3C 24010004 */  addiu      $at, $zero, 4
/* 22940 80021D40 15210006 */  bne        $t1, $at, .L80021D5C
/* 22944 80021D44 00000000 */   nop
/* 22948 80021D48 240D0017 */  addiu      $t5, $zero, 0x17
/* 2294C 80021D4C 240B001E */  addiu      $t3, $zero, 0x1e
/* 22950 80021D50 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 22954 80021D54 100012D4 */  b          .L800268A8
/* 22958 80021D58 AFAB00EC */   sw        $t3, 0xec($sp)
.L80021D5C:
/* 2295C 80021D5C 8FAC00F4 */  lw         $t4, 0xf4($sp)
/* 22960 80021D60 258AFFF3 */  addiu      $t2, $t4, -0xd
/* 22964 80021D64 2D410016 */  sltiu      $at, $t2, 0x16
/* 22968 80021D68 1020000C */  beqz       $at, .L80021D9C
/* 2296C 80021D6C 00000000 */   nop
/* 22970 80021D70 000A5080 */  sll        $t2, $t2, 2
/* 22974 80021D74 3C01800E */  lui        $at, %hi(D_800DC4A0)
/* 22978 80021D78 002A0821 */  addu       $at, $at, $t2
/* 2297C 80021D7C 8C2AC4A0 */  lw         $t2, %lo(D_800DC4A0)($at)
/* 22980 80021D80 01400008 */  jr         $t2
/* 22984 80021D84 00000000 */   nop
/* 22988 80021D88 24080022 */  addiu      $t0, $zero, 0x22
/* 2298C 80021D8C 240F0078 */  addiu      $t7, $zero, 0x78
/* 22990 80021D90 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 22994 80021D94 100012C4 */  b          .L800268A8
/* 22998 80021D98 AFAF00EC */   sw        $t7, 0xec($sp)
.L80021D9C:
/* 2299C 80021D9C 24180013 */  addiu      $t8, $zero, 0x13
/* 229A0 80021DA0 100012C1 */  b          .L800268A8
/* 229A4 80021DA4 AFB800F4 */   sw        $t8, 0xf4($sp)
/* 229A8 80021DA8 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 229AC 80021DAC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 229B0 80021DB0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 229B4 80021DB4 000E4880 */  sll        $t1, $t6, 2
/* 229B8 80021DB8 012E4823 */  subu       $t1, $t1, $t6
/* 229BC 80021DBC 00094880 */  sll        $t1, $t1, 2
/* 229C0 80021DC0 012E4823 */  subu       $t1, $t1, $t6
/* 229C4 80021DC4 00094880 */  sll        $t1, $t1, 2
/* 229C8 80021DC8 012E4821 */  addu       $t1, $t1, $t6
/* 229CC 80021DCC 00094880 */  sll        $t1, $t1, 2
/* 229D0 80021DD0 012E4823 */  subu       $t1, $t1, $t6
/* 229D4 80021DD4 00094880 */  sll        $t1, $t1, 2
/* 229D8 80021DD8 03296821 */  addu       $t5, $t9, $t1
/* 229DC 80021DDC 8DAB0088 */  lw         $t3, 0x88($t5)
/* 229E0 80021DE0 24010003 */  addiu      $at, $zero, 3
/* 229E4 80021DE4 156112B0 */  bne        $t3, $at, .L800268A8
/* 229E8 80021DE8 00000000 */   nop
/* 229EC 80021DEC 240C000A */  addiu      $t4, $zero, 0xa
/* 229F0 80021DF0 240A000D */  addiu      $t2, $zero, 0xd
/* 229F4 80021DF4 AFAC00EC */  sw         $t4, 0xec($sp)
/* 229F8 80021DF8 100012AB */  b          .L800268A8
/* 229FC 80021DFC AFAA00F4 */   sw        $t2, 0xf4($sp)
/* 22A00 80021E00 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 22A04 80021E04 24010011 */  addiu      $at, $zero, 0x11
/* 22A08 80021E08 15010006 */  bne        $t0, $at, .L80021E24
/* 22A0C 80021E0C 00000000 */   nop
/* 22A10 80021E10 240F000D */  addiu      $t7, $zero, 0xd
/* 22A14 80021E14 24180014 */  addiu      $t8, $zero, 0x14
/* 22A18 80021E18 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 22A1C 80021E1C 100012A2 */  b          .L800268A8
/* 22A20 80021E20 AFB800EC */   sw        $t8, 0xec($sp)
.L80021E24:
/* 22A24 80021E24 240E0011 */  addiu      $t6, $zero, 0x11
/* 22A28 80021E28 2419001E */  addiu      $t9, $zero, 0x1e
/* 22A2C 80021E2C AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 22A30 80021E30 1000129D */  b          .L800268A8
/* 22A34 80021E34 AFB900EC */   sw        $t9, 0xec($sp)
/* 22A38 80021E38 24090017 */  addiu      $t1, $zero, 0x17
/* 22A3C 80021E3C 240D001E */  addiu      $t5, $zero, 0x1e
/* 22A40 80021E40 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 22A44 80021E44 10001298 */  b          .L800268A8
/* 22A48 80021E48 AFAD00EC */   sw        $t5, 0xec($sp)
/* 22A4C 80021E4C 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 22A50 80021E50 2401000D */  addiu      $at, $zero, 0xd
/* 22A54 80021E54 12010008 */  beq        $s0, $at, .L80021E78
/* 22A58 80021E58 24010013 */   addiu     $at, $zero, 0x13
/* 22A5C 80021E5C 1201001C */  beq        $s0, $at, .L80021ED0
/* 22A60 80021E60 24010022 */   addiu     $at, $zero, 0x22
/* 22A64 80021E64 1201000F */  beq        $s0, $at, .L80021EA4
/* 22A68 80021E68 00000000 */   nop
/* 22A6C 80021E6C 240B0013 */  addiu      $t3, $zero, 0x13
/* 22A70 80021E70 1000128D */  b          .L800268A8
/* 22A74 80021E74 AFAB00F4 */   sw        $t3, 0xf4($sp)
.L80021E78:
/* 22A78 80021E78 8FAA00E4 */  lw         $t2, 0xe4($sp)
/* 22A7C 80021E7C 240C0022 */  addiu      $t4, $zero, 0x22
/* 22A80 80021E80 24010003 */  addiu      $at, $zero, 3
/* 22A84 80021E84 15410004 */  bne        $t2, $at, .L80021E98
/* 22A88 80021E88 AFAC00F4 */   sw        $t4, 0xf4($sp)
/* 22A8C 80021E8C 24080078 */  addiu      $t0, $zero, 0x78
/* 22A90 80021E90 10001285 */  b          .L800268A8
/* 22A94 80021E94 AFA800EC */   sw        $t0, 0xec($sp)
.L80021E98:
/* 22A98 80021E98 240F001E */  addiu      $t7, $zero, 0x1e
/* 22A9C 80021E9C 10001282 */  b          .L800268A8
/* 22AA0 80021EA0 AFAF00EC */   sw        $t7, 0xec($sp)
.L80021EA4:
/* 22AA4 80021EA4 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 22AA8 80021EA8 24180013 */  addiu      $t8, $zero, 0x13
/* 22AAC 80021EAC 24010003 */  addiu      $at, $zero, 3
/* 22AB0 80021EB0 15C10004 */  bne        $t6, $at, .L80021EC4
/* 22AB4 80021EB4 AFB800F4 */   sw        $t8, 0xf4($sp)
/* 22AB8 80021EB8 2419003C */  addiu      $t9, $zero, 0x3c
/* 22ABC 80021EBC 1000127A */  b          .L800268A8
/* 22AC0 80021EC0 AFB900EC */   sw        $t9, 0xec($sp)
.L80021EC4:
/* 22AC4 80021EC4 24090014 */  addiu      $t1, $zero, 0x14
/* 22AC8 80021EC8 10001277 */  b          .L800268A8
/* 22ACC 80021ECC AFA900EC */   sw        $t1, 0xec($sp)
.L80021ED0:
/* 22AD0 80021ED0 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 22AD4 80021ED4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 22AD8 80021ED8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 22ADC 80021EDC 000B6080 */  sll        $t4, $t3, 2
/* 22AE0 80021EE0 018B6023 */  subu       $t4, $t4, $t3
/* 22AE4 80021EE4 000C6080 */  sll        $t4, $t4, 2
/* 22AE8 80021EE8 018B6023 */  subu       $t4, $t4, $t3
/* 22AEC 80021EEC 000C6080 */  sll        $t4, $t4, 2
/* 22AF0 80021EF0 018B6021 */  addu       $t4, $t4, $t3
/* 22AF4 80021EF4 000C6080 */  sll        $t4, $t4, 2
/* 22AF8 80021EF8 018B6023 */  subu       $t4, $t4, $t3
/* 22AFC 80021EFC 000C6080 */  sll        $t4, $t4, 2
/* 22B00 80021F00 01AC5021 */  addu       $t2, $t5, $t4
/* 22B04 80021F04 8D480088 */  lw         $t0, 0x88($t2)
/* 22B08 80021F08 24010003 */  addiu      $at, $zero, 3
/* 22B0C 80021F0C 15011266 */  bne        $t0, $at, .L800268A8
/* 22B10 80021F10 00000000 */   nop
/* 22B14 80021F14 240F000D */  addiu      $t7, $zero, 0xd
/* 22B18 80021F18 2418001E */  addiu      $t8, $zero, 0x1e
/* 22B1C 80021F1C AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 22B20 80021F20 10001261 */  b          .L800268A8
/* 22B24 80021F24 AFB800EC */   sw        $t8, 0xec($sp)
/* 22B28 80021F28 8FAE00F4 */  lw         $t6, 0xf4($sp)
/* 22B2C 80021F2C 25D9FFED */  addiu      $t9, $t6, -0x13
/* 22B30 80021F30 2F210025 */  sltiu      $at, $t9, 0x25
/* 22B34 80021F34 10200007 */  beqz       $at, .L80021F54
/* 22B38 80021F38 00000000 */   nop
/* 22B3C 80021F3C 0019C880 */  sll        $t9, $t9, 2
/* 22B40 80021F40 3C01800E */  lui        $at, %hi(D_800DC4F8)
/* 22B44 80021F44 00390821 */  addu       $at, $at, $t9
/* 22B48 80021F48 8C39C4F8 */  lw         $t9, %lo(D_800DC4F8)($at)
/* 22B4C 80021F4C 03200008 */  jr         $t9
/* 22B50 80021F50 00000000 */   nop
.L80021F54:
/* 22B54 80021F54 24090013 */  addiu      $t1, $zero, 0x13
/* 22B58 80021F58 10001253 */  b          .L800268A8
/* 22B5C 80021F5C AFA900F4 */   sw        $t1, 0xf4($sp)
/* 22B60 80021F60 8FAD00E4 */  lw         $t5, 0xe4($sp)
/* 22B64 80021F64 240B0022 */  addiu      $t3, $zero, 0x22
/* 22B68 80021F68 24010014 */  addiu      $at, $zero, 0x14
/* 22B6C 80021F6C 15A10004 */  bne        $t5, $at, .L80021F80
/* 22B70 80021F70 AFAB00F4 */   sw        $t3, 0xf4($sp)
/* 22B74 80021F74 240C0078 */  addiu      $t4, $zero, 0x78
/* 22B78 80021F78 1000124B */  b          .L800268A8
/* 22B7C 80021F7C AFAC00EC */   sw        $t4, 0xec($sp)
.L80021F80:
/* 22B80 80021F80 240A0032 */  addiu      $t2, $zero, 0x32
/* 22B84 80021F84 10001248 */  b          .L800268A8
/* 22B88 80021F88 AFAA00EC */   sw        $t2, 0xec($sp)
/* 22B8C 80021F8C 24080013 */  addiu      $t0, $zero, 0x13
/* 22B90 80021F90 240F003C */  addiu      $t7, $zero, 0x3c
/* 22B94 80021F94 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 22B98 80021F98 10001243 */  b          .L800268A8
/* 22B9C 80021F9C AFAF00EC */   sw        $t7, 0xec($sp)
/* 22BA0 80021FA0 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 22BA4 80021FA4 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 22BA8 80021FA8 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 22BAC 80021FAC 000EC880 */  sll        $t9, $t6, 2
/* 22BB0 80021FB0 032EC823 */  subu       $t9, $t9, $t6
/* 22BB4 80021FB4 0019C880 */  sll        $t9, $t9, 2
/* 22BB8 80021FB8 032EC823 */  subu       $t9, $t9, $t6
/* 22BBC 80021FBC 0019C880 */  sll        $t9, $t9, 2
/* 22BC0 80021FC0 032EC821 */  addu       $t9, $t9, $t6
/* 22BC4 80021FC4 0019C880 */  sll        $t9, $t9, 2
/* 22BC8 80021FC8 032EC823 */  subu       $t9, $t9, $t6
/* 22BCC 80021FCC 0019C880 */  sll        $t9, $t9, 2
/* 22BD0 80021FD0 03194821 */  addu       $t1, $t8, $t9
/* 22BD4 80021FD4 8D2B0088 */  lw         $t3, 0x88($t1)
/* 22BD8 80021FD8 24010003 */  addiu      $at, $zero, 3
/* 22BDC 80021FDC 15610020 */  bne        $t3, $at, .L80022060
/* 22BE0 80021FE0 00000000 */   nop
/* 22BE4 80021FE4 C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* 22BE8 80021FE8 3C014089 */  lui        $at, 0x4089
/* 22BEC 80021FEC 44819800 */  mtc1       $at, $f19
/* 22BF0 80021FF0 44809000 */  mtc1       $zero, $f18
/* 22BF4 80021FF4 46005421 */  cvt.d.s    $f16, $f10
/* 22BF8 80021FF8 4630903C */  c.lt.d     $f18, $f16
/* 22BFC 80021FFC 00000000 */  nop
/* 22C00 80022000 45000006 */  bc1f       .L8002201C
/* 22C04 80022004 00000000 */   nop
/* 22C08 80022008 240D0019 */  addiu      $t5, $zero, 0x19
/* 22C0C 8002200C 240C001E */  addiu      $t4, $zero, 0x1e
/* 22C10 80022010 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 22C14 80022014 10001224 */  b          .L800268A8
/* 22C18 80022018 AFAC00EC */   sw        $t4, 0xec($sp)
.L8002201C:
/* 22C1C 8002201C 3C014316 */  lui        $at, 0x4316
/* 22C20 80022020 44813000 */  mtc1       $at, $f6
/* 22C24 80022024 C7A400DC */  lwc1       $f4, 0xdc($sp)
/* 22C28 80022028 4606203C */  c.lt.s     $f4, $f6
/* 22C2C 8002202C 00000000 */  nop
/* 22C30 80022030 45000006 */  bc1f       .L8002204C
/* 22C34 80022034 00000000 */   nop
/* 22C38 80022038 240A001F */  addiu      $t2, $zero, 0x1f
/* 22C3C 8002203C 2408001E */  addiu      $t0, $zero, 0x1e
/* 22C40 80022040 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 22C44 80022044 10001218 */  b          .L800268A8
/* 22C48 80022048 AFA800EC */   sw        $t0, 0xec($sp)
.L8002204C:
/* 22C4C 8002204C 240F0037 */  addiu      $t7, $zero, 0x37
/* 22C50 80022050 240E001E */  addiu      $t6, $zero, 0x1e
/* 22C54 80022054 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 22C58 80022058 10001213 */  b          .L800268A8
/* 22C5C 8002205C AFAE00EC */   sw        $t6, 0xec($sp)
.L80022060:
/* 22C60 80022060 2418001E */  addiu      $t8, $zero, 0x1e
/* 22C64 80022064 10001210 */  b          .L800268A8
/* 22C68 80022068 AFB800EC */   sw        $t8, 0xec($sp)
/* 22C6C 8002206C 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 22C70 80022070 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 22C74 80022074 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 22C78 80022078 00095880 */  sll        $t3, $t1, 2
/* 22C7C 8002207C 01695823 */  subu       $t3, $t3, $t1
/* 22C80 80022080 000B5880 */  sll        $t3, $t3, 2
/* 22C84 80022084 01695823 */  subu       $t3, $t3, $t1
/* 22C88 80022088 000B5880 */  sll        $t3, $t3, 2
/* 22C8C 8002208C 01695821 */  addu       $t3, $t3, $t1
/* 22C90 80022090 000B5880 */  sll        $t3, $t3, 2
/* 22C94 80022094 01695823 */  subu       $t3, $t3, $t1
/* 22C98 80022098 000B5880 */  sll        $t3, $t3, 2
/* 22C9C 8002209C 032B6821 */  addu       $t5, $t9, $t3
/* 22CA0 800220A0 8DAC0088 */  lw         $t4, 0x88($t5)
/* 22CA4 800220A4 24010003 */  addiu      $at, $zero, 3
/* 22CA8 800220A8 1581000E */  bne        $t4, $at, .L800220E4
/* 22CAC 800220AC 00000000 */   nop
/* 22CB0 800220B0 C7A800DC */  lwc1       $f8, 0xdc($sp)
/* 22CB4 800220B4 3C01800E */  lui        $at, %hi(D_800DC590)
/* 22CB8 800220B8 D430C590 */  ldc1       $f16, %lo(D_800DC590)($at)
/* 22CBC 800220BC 460042A1 */  cvt.d.s    $f10, $f8
/* 22CC0 800220C0 4630503C */  c.lt.d     $f10, $f16
/* 22CC4 800220C4 00000000 */  nop
/* 22CC8 800220C8 450011F7 */  bc1f       .L800268A8
/* 22CCC 800220CC 00000000 */   nop
/* 22CD0 800220D0 240A0037 */  addiu      $t2, $zero, 0x37
/* 22CD4 800220D4 2408001E */  addiu      $t0, $zero, 0x1e
/* 22CD8 800220D8 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 22CDC 800220DC 100011F2 */  b          .L800268A8
/* 22CE0 800220E0 AFA800EC */   sw        $t0, 0xec($sp)
.L800220E4:
/* 22CE4 800220E4 240F0013 */  addiu      $t7, $zero, 0x13
/* 22CE8 800220E8 240E001E */  addiu      $t6, $zero, 0x1e
/* 22CEC 800220EC AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 22CF0 800220F0 100011ED */  b          .L800268A8
/* 22CF4 800220F4 AFAE00EC */   sw        $t6, 0xec($sp)
/* 22CF8 800220F8 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 22CFC 800220FC 2401000D */  addiu      $at, $zero, 0xd
/* 22D00 80022100 12010047 */  beq        $s0, $at, .L80022220
/* 22D04 80022104 24010016 */   addiu     $at, $zero, 0x16
/* 22D08 80022108 1201000A */  beq        $s0, $at, .L80022134
/* 22D0C 8002210C 24010017 */   addiu     $at, $zero, 0x17
/* 22D10 80022110 12010023 */  beq        $s0, $at, .L800221A0
/* 22D14 80022114 24010022 */   addiu     $at, $zero, 0x22
/* 22D18 80022118 12010026 */  beq        $s0, $at, .L800221B4
/* 22D1C 8002211C 00000000 */   nop
/* 22D20 80022120 24180016 */  addiu      $t8, $zero, 0x16
/* 22D24 80022124 2409003C */  addiu      $t1, $zero, 0x3c
/* 22D28 80022128 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 22D2C 8002212C 100011DE */  b          .L800268A8
/* 22D30 80022130 AFA900EC */   sw        $t1, 0xec($sp)
.L80022134:
/* 22D34 80022134 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 22D38 80022138 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 22D3C 8002213C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 22D40 80022140 000B6880 */  sll        $t5, $t3, 2
/* 22D44 80022144 01AB6823 */  subu       $t5, $t5, $t3
/* 22D48 80022148 000D6880 */  sll        $t5, $t5, 2
/* 22D4C 8002214C 01AB6823 */  subu       $t5, $t5, $t3
/* 22D50 80022150 000D6880 */  sll        $t5, $t5, 2
/* 22D54 80022154 01AB6821 */  addu       $t5, $t5, $t3
/* 22D58 80022158 000D6880 */  sll        $t5, $t5, 2
/* 22D5C 8002215C 01AB6823 */  subu       $t5, $t5, $t3
/* 22D60 80022160 000D6880 */  sll        $t5, $t5, 2
/* 22D64 80022164 032D6021 */  addu       $t4, $t9, $t5
/* 22D68 80022168 8D8A0088 */  lw         $t2, 0x88($t4)
/* 22D6C 8002216C 24010003 */  addiu      $at, $zero, 3
/* 22D70 80022170 15410006 */  bne        $t2, $at, .L8002218C
/* 22D74 80022174 00000000 */   nop
/* 22D78 80022178 2408001E */  addiu      $t0, $zero, 0x1e
/* 22D7C 8002217C 240F000D */  addiu      $t7, $zero, 0xd
/* 22D80 80022180 AFA800EC */  sw         $t0, 0xec($sp)
/* 22D84 80022184 100011C8 */  b          .L800268A8
/* 22D88 80022188 AFAF00F4 */   sw        $t7, 0xf4($sp)
.L8002218C:
/* 22D8C 8002218C 240E001E */  addiu      $t6, $zero, 0x1e
/* 22D90 80022190 24180017 */  addiu      $t8, $zero, 0x17
/* 22D94 80022194 AFAE00EC */  sw         $t6, 0xec($sp)
/* 22D98 80022198 100011C3 */  b          .L800268A8
/* 22D9C 8002219C AFB800F4 */   sw        $t8, 0xf4($sp)
.L800221A0:
/* 22DA0 800221A0 2409003C */  addiu      $t1, $zero, 0x3c
/* 22DA4 800221A4 240B0016 */  addiu      $t3, $zero, 0x16
/* 22DA8 800221A8 AFA900EC */  sw         $t1, 0xec($sp)
/* 22DAC 800221AC 100011BE */  b          .L800268A8
/* 22DB0 800221B0 AFAB00F4 */   sw        $t3, 0xf4($sp)
.L800221B4:
/* 22DB4 800221B4 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 22DB8 800221B8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 22DBC 800221BC 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 22DC0 800221C0 000D6080 */  sll        $t4, $t5, 2
/* 22DC4 800221C4 018D6023 */  subu       $t4, $t4, $t5
/* 22DC8 800221C8 000C6080 */  sll        $t4, $t4, 2
/* 22DCC 800221CC 018D6023 */  subu       $t4, $t4, $t5
/* 22DD0 800221D0 000C6080 */  sll        $t4, $t4, 2
/* 22DD4 800221D4 018D6021 */  addu       $t4, $t4, $t5
/* 22DD8 800221D8 000C6080 */  sll        $t4, $t4, 2
/* 22DDC 800221DC 018D6023 */  subu       $t4, $t4, $t5
/* 22DE0 800221E0 000C6080 */  sll        $t4, $t4, 2
/* 22DE4 800221E4 032C5021 */  addu       $t2, $t9, $t4
/* 22DE8 800221E8 8D480088 */  lw         $t0, 0x88($t2)
/* 22DEC 800221EC 24010003 */  addiu      $at, $zero, 3
/* 22DF0 800221F0 15010006 */  bne        $t0, $at, .L8002220C
/* 22DF4 800221F4 00000000 */   nop
/* 22DF8 800221F8 240F000D */  addiu      $t7, $zero, 0xd
/* 22DFC 800221FC 240E001E */  addiu      $t6, $zero, 0x1e
/* 22E00 80022200 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 22E04 80022204 100011A8 */  b          .L800268A8
/* 22E08 80022208 AFAE00EC */   sw        $t6, 0xec($sp)
.L8002220C:
/* 22E0C 8002220C 24180017 */  addiu      $t8, $zero, 0x17
/* 22E10 80022210 2409001E */  addiu      $t1, $zero, 0x1e
/* 22E14 80022214 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 22E18 80022218 100011A3 */  b          .L800268A8
/* 22E1C 8002221C AFA900EC */   sw        $t1, 0xec($sp)
.L80022220:
/* 22E20 80022220 240B0022 */  addiu      $t3, $zero, 0x22
/* 22E24 80022224 240D001E */  addiu      $t5, $zero, 0x1e
/* 22E28 80022228 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 22E2C 8002222C 1000119E */  b          .L800268A8
/* 22E30 80022230 AFAD00EC */   sw        $t5, 0xec($sp)
/* 22E34 80022234 8FB900F4 */  lw         $t9, 0xf4($sp)
/* 22E38 80022238 272CFFF3 */  addiu      $t4, $t9, -0xd
/* 22E3C 8002223C 2D81002A */  sltiu      $at, $t4, 0x2a
/* 22E40 80022240 10200007 */  beqz       $at, .L80022260
/* 22E44 80022244 00000000 */   nop
/* 22E48 80022248 000C6080 */  sll        $t4, $t4, 2
/* 22E4C 8002224C 3C01800E */  lui        $at, %hi(D_800DC598)
/* 22E50 80022250 002C0821 */  addu       $at, $at, $t4
/* 22E54 80022254 8C2CC598 */  lw         $t4, %lo(D_800DC598)($at)
/* 22E58 80022258 01800008 */  jr         $t4
/* 22E5C 8002225C 00000000 */   nop
.L80022260:
/* 22E60 80022260 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 22E64 80022264 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 22E68 80022268 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 22E6C 8002226C 00087880 */  sll        $t7, $t0, 2
/* 22E70 80022270 01E87823 */  subu       $t7, $t7, $t0
/* 22E74 80022274 000F7880 */  sll        $t7, $t7, 2
/* 22E78 80022278 01E87823 */  subu       $t7, $t7, $t0
/* 22E7C 8002227C 000F7880 */  sll        $t7, $t7, 2
/* 22E80 80022280 01E87821 */  addu       $t7, $t7, $t0
/* 22E84 80022284 000F7880 */  sll        $t7, $t7, 2
/* 22E88 80022288 01E87823 */  subu       $t7, $t7, $t0
/* 22E8C 8002228C 000F7880 */  sll        $t7, $t7, 2
/* 22E90 80022290 014F7021 */  addu       $t6, $t2, $t7
/* 22E94 80022294 8DD80070 */  lw         $t8, 0x70($t6)
/* 22E98 80022298 24010037 */  addiu      $at, $zero, 0x37
/* 22E9C 8002229C 17010006 */  bne        $t8, $at, .L800222B8
/* 22EA0 800222A0 00000000 */   nop
/* 22EA4 800222A4 24090036 */  addiu      $t1, $zero, 0x36
/* 22EA8 800222A8 240B0078 */  addiu      $t3, $zero, 0x78
/* 22EAC 800222AC AFA900F4 */  sw         $t1, 0xf4($sp)
/* 22EB0 800222B0 1000117D */  b          .L800268A8
/* 22EB4 800222B4 AFAB00EC */   sw        $t3, 0xec($sp)
.L800222B8:
/* 22EB8 800222B8 240D0013 */  addiu      $t5, $zero, 0x13
/* 22EBC 800222BC 2419001E */  addiu      $t9, $zero, 0x1e
/* 22EC0 800222C0 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 22EC4 800222C4 10001178 */  b          .L800268A8
/* 22EC8 800222C8 AFB900EC */   sw        $t9, 0xec($sp)
/* 22ECC 800222CC 240C0019 */  addiu      $t4, $zero, 0x19
/* 22ED0 800222D0 10001175 */  b          .L800268A8
/* 22ED4 800222D4 AFAC00F4 */   sw        $t4, 0xf4($sp)
/* 22ED8 800222D8 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 22EDC 800222DC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 22EE0 800222E0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 22EE4 800222E4 000A7880 */  sll        $t7, $t2, 2
/* 22EE8 800222E8 01EA7823 */  subu       $t7, $t7, $t2
/* 22EEC 800222EC 000F7880 */  sll        $t7, $t7, 2
/* 22EF0 800222F0 01EA7823 */  subu       $t7, $t7, $t2
/* 22EF4 800222F4 000F7880 */  sll        $t7, $t7, 2
/* 22EF8 800222F8 01EA7821 */  addu       $t7, $t7, $t2
/* 22EFC 800222FC 000F7880 */  sll        $t7, $t7, 2
/* 22F00 80022300 01EA7823 */  subu       $t7, $t7, $t2
/* 22F04 80022304 000F7880 */  sll        $t7, $t7, 2
/* 22F08 80022308 010F7021 */  addu       $t6, $t0, $t7
/* 22F0C 8002230C 8DD80088 */  lw         $t8, 0x88($t6)
/* 22F10 80022310 24010003 */  addiu      $at, $zero, 3
/* 22F14 80022314 1701001E */  bne        $t8, $at, .L80022390
/* 22F18 80022318 00000000 */   nop
/* 22F1C 8002231C 8FA900E4 */  lw         $t1, 0xe4($sp)
/* 22F20 80022320 24010016 */  addiu      $at, $zero, 0x16
/* 22F24 80022324 15210015 */  bne        $t1, $at, .L8002237C
/* 22F28 80022328 00000000 */   nop
/* 22F2C 8002232C 8FAB00E0 */  lw         $t3, 0xe0($sp)
/* 22F30 80022330 3C01800D */  lui        $at, 0x800d
/* 22F34 80022334 C7A400DC */  lwc1       $f4, 0xdc($sp)
/* 22F38 80022338 000B6900 */  sll        $t5, $t3, 4
/* 22F3C 8002233C 01AB6823 */  subu       $t5, $t5, $t3
/* 22F40 80022340 000D6880 */  sll        $t5, $t5, 2
/* 22F44 80022344 002D0821 */  addu       $at, $at, $t5
/* 22F48 80022348 C43272F4 */  lwc1       $f18, 0x72f4($at)
/* 22F4C 8002234C 4612203C */  c.lt.s     $f4, $f18
/* 22F50 80022350 00000000 */  nop
/* 22F54 80022354 45000006 */  bc1f       .L80022370
/* 22F58 80022358 00000000 */   nop
/* 22F5C 8002235C 2419001F */  addiu      $t9, $zero, 0x1f
/* 22F60 80022360 240C0028 */  addiu      $t4, $zero, 0x28
/* 22F64 80022364 AFB900F4 */  sw         $t9, 0xf4($sp)
/* 22F68 80022368 10000046 */  b          .L80022484
/* 22F6C 8002236C AFAC00EC */   sw        $t4, 0xec($sp)
.L80022370:
/* 22F70 80022370 240A003C */  addiu      $t2, $zero, 0x3c
/* 22F74 80022374 1000114C */  b          .L800268A8
/* 22F78 80022378 AFAA00EC */   sw        $t2, 0xec($sp)
.L8002237C:
/* 22F7C 8002237C 2408000D */  addiu      $t0, $zero, 0xd
/* 22F80 80022380 240F001E */  addiu      $t7, $zero, 0x1e
/* 22F84 80022384 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 22F88 80022388 10001147 */  b          .L800268A8
/* 22F8C 8002238C AFAF00EC */   sw        $t7, 0xec($sp)
.L80022390:
/* 22F90 80022390 240E0013 */  addiu      $t6, $zero, 0x13
/* 22F94 80022394 2418001E */  addiu      $t8, $zero, 0x1e
/* 22F98 80022398 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 22F9C 8002239C 10001142 */  b          .L800268A8
/* 22FA0 800223A0 AFB800EC */   sw        $t8, 0xec($sp)
/* 22FA4 800223A4 8FA900E0 */  lw         $t1, 0xe0($sp)
/* 22FA8 800223A8 3C01800D */  lui        $at, 0x800d
/* 22FAC 800223AC C7A600DC */  lwc1       $f6, 0xdc($sp)
/* 22FB0 800223B0 00095900 */  sll        $t3, $t1, 4
/* 22FB4 800223B4 01695823 */  subu       $t3, $t3, $t1
/* 22FB8 800223B8 000B5880 */  sll        $t3, $t3, 2
/* 22FBC 800223BC 002B0821 */  addu       $at, $at, $t3
/* 22FC0 800223C0 C42872F4 */  lwc1       $f8, 0x72f4($at)
/* 22FC4 800223C4 4608303C */  c.lt.s     $f6, $f8
/* 22FC8 800223C8 00000000 */  nop
/* 22FCC 800223CC 45000020 */  bc1f       .L80022450
/* 22FD0 800223D0 00000000 */   nop
/* 22FD4 800223D4 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 22FD8 800223D8 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 22FDC 800223DC 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 22FE0 800223E0 00196080 */  sll        $t4, $t9, 2
/* 22FE4 800223E4 01996023 */  subu       $t4, $t4, $t9
/* 22FE8 800223E8 000C6080 */  sll        $t4, $t4, 2
/* 22FEC 800223EC 01996023 */  subu       $t4, $t4, $t9
/* 22FF0 800223F0 000C6080 */  sll        $t4, $t4, 2
/* 22FF4 800223F4 01996021 */  addu       $t4, $t4, $t9
/* 22FF8 800223F8 000C6080 */  sll        $t4, $t4, 2
/* 22FFC 800223FC 01996023 */  subu       $t4, $t4, $t9
/* 23000 80022400 000C6080 */  sll        $t4, $t4, 2
/* 23004 80022404 01AC5021 */  addu       $t2, $t5, $t4
/* 23008 80022408 8D480088 */  lw         $t0, 0x88($t2)
/* 2300C 8002240C 24010003 */  addiu      $at, $zero, 3
/* 23010 80022410 1501000F */  bne        $t0, $at, .L80022450
/* 23014 80022414 00000000 */   nop
/* 23018 80022418 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* 2301C 8002241C 24010016 */  addiu      $at, $zero, 0x16
/* 23020 80022420 15E10006 */  bne        $t7, $at, .L8002243C
/* 23024 80022424 00000000 */   nop
/* 23028 80022428 240E001F */  addiu      $t6, $zero, 0x1f
/* 2302C 8002242C 24180028 */  addiu      $t8, $zero, 0x28
/* 23030 80022430 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 23034 80022434 1000111C */  b          .L800268A8
/* 23038 80022438 AFB800EC */   sw        $t8, 0xec($sp)
.L8002243C:
/* 2303C 8002243C 2409000D */  addiu      $t1, $zero, 0xd
/* 23040 80022440 240B001E */  addiu      $t3, $zero, 0x1e
/* 23044 80022444 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 23048 80022448 10001117 */  b          .L800268A8
/* 2304C 8002244C AFAB00EC */   sw        $t3, 0xec($sp)
.L80022450:
/* 23050 80022450 2419003C */  addiu      $t9, $zero, 0x3c
/* 23054 80022454 240D0019 */  addiu      $t5, $zero, 0x19
/* 23058 80022458 AFB900EC */  sw         $t9, 0xec($sp)
/* 2305C 8002245C 10001112 */  b          .L800268A8
/* 23060 80022460 AFAD00F4 */   sw        $t5, 0xf4($sp)
/* 23064 80022464 240C0019 */  addiu      $t4, $zero, 0x19
/* 23068 80022468 1000110F */  b          .L800268A8
/* 2306C 8002246C AFAC00F4 */   sw        $t4, 0xf4($sp)
/* 23070 80022470 240A0022 */  addiu      $t2, $zero, 0x22
/* 23074 80022474 2408001E */  addiu      $t0, $zero, 0x1e
/* 23078 80022478 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 2307C 8002247C 1000110A */  b          .L800268A8
/* 23080 80022480 AFA800EC */   sw        $t0, 0xec($sp)
.L80022484:
/* 23084 80022484 10001108 */  b          .L800268A8
/* 23088 80022488 00000000 */   nop
/* 2308C 8002248C 240F003B */  addiu      $t7, $zero, 0x3b
/* 23090 80022490 AFA000EC */  sw         $zero, 0xec($sp)
/* 23094 80022494 10001104 */  b          .L800268A8
/* 23098 80022498 AFAF00F4 */   sw        $t7, 0xf4($sp)
/* 2309C 8002249C 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 230A0 800224A0 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 230A4 800224A4 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 230A8 800224A8 00184880 */  sll        $t1, $t8, 2
/* 230AC 800224AC 01384823 */  subu       $t1, $t1, $t8
/* 230B0 800224B0 00094880 */  sll        $t1, $t1, 2
/* 230B4 800224B4 01384823 */  subu       $t1, $t1, $t8
/* 230B8 800224B8 00094880 */  sll        $t1, $t1, 2
/* 230BC 800224BC 01384821 */  addu       $t1, $t1, $t8
/* 230C0 800224C0 00094880 */  sll        $t1, $t1, 2
/* 230C4 800224C4 01384823 */  subu       $t1, $t1, $t8
/* 230C8 800224C8 00094880 */  sll        $t1, $t1, 2
/* 230CC 800224CC 01C95821 */  addu       $t3, $t6, $t1
/* 230D0 800224D0 8D790268 */  lw         $t9, 0x268($t3)
/* 230D4 800224D4 AFB900D8 */  sw         $t9, 0xd8($sp)
/* 230D8 800224D8 8D6D0060 */  lw         $t5, 0x60($t3)
/* 230DC 800224DC 31AC0200 */  andi       $t4, $t5, 0x200
/* 230E0 800224E0 11800006 */  beqz       $t4, .L800224FC
/* 230E4 800224E4 AFAD00D4 */   sw        $t5, 0xd4($sp)
/* 230E8 800224E8 240A001F */  addiu      $t2, $zero, 0x1f
/* 230EC 800224EC 2408003C */  addiu      $t0, $zero, 0x3c
/* 230F0 800224F0 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 230F4 800224F4 100010EC */  b          .L800268A8
/* 230F8 800224F8 AFA800EC */   sw        $t0, 0xec($sp)
.L800224FC:
/* 230FC 800224FC 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 23100 80022500 24010013 */  addiu      $at, $zero, 0x13
/* 23104 80022504 12010009 */  beq        $s0, $at, .L8002252C
/* 23108 80022508 24010019 */   addiu     $at, $zero, 0x19
/* 2310C 8002250C 12010020 */  beq        $s0, $at, .L80022590
/* 23110 80022510 2401001F */   addiu     $at, $zero, 0x1f
/* 23114 80022514 12010045 */  beq        $s0, $at, .L8002262C
/* 23118 80022518 24010022 */   addiu     $at, $zero, 0x22
/* 2311C 8002251C 12010059 */  beq        $s0, $at, .L80022684
/* 23120 80022520 00000000 */   nop
/* 23124 80022524 240F0013 */  addiu      $t7, $zero, 0x13
/* 23128 80022528 AFAF00F4 */  sw         $t7, 0xf4($sp)
.L8002252C:
/* 2312C 8002252C 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 23130 80022530 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 23134 80022534 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 23138 80022538 000E4880 */  sll        $t1, $t6, 2
/* 2313C 8002253C 012E4823 */  subu       $t1, $t1, $t6
/* 23140 80022540 00094880 */  sll        $t1, $t1, 2
/* 23144 80022544 012E4823 */  subu       $t1, $t1, $t6
/* 23148 80022548 00094880 */  sll        $t1, $t1, 2
/* 2314C 8002254C 012E4821 */  addu       $t1, $t1, $t6
/* 23150 80022550 00094880 */  sll        $t1, $t1, 2
/* 23154 80022554 012E4823 */  subu       $t1, $t1, $t6
/* 23158 80022558 00094880 */  sll        $t1, $t1, 2
/* 2315C 8002255C 0309C821 */  addu       $t9, $t8, $t1
/* 23160 80022560 8F2B0088 */  lw         $t3, 0x88($t9)
/* 23164 80022564 24010003 */  addiu      $at, $zero, 3
/* 23168 80022568 15610006 */  bne        $t3, $at, .L80022584
/* 2316C 8002256C 00000000 */   nop
/* 23170 80022570 240D0019 */  addiu      $t5, $zero, 0x19
/* 23174 80022574 240C001E */  addiu      $t4, $zero, 0x1e
/* 23178 80022578 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 2317C 8002257C 100010CA */  b          .L800268A8
/* 23180 80022580 AFAC00EC */   sw        $t4, 0xec($sp)
.L80022584:
/* 23184 80022584 240A001E */  addiu      $t2, $zero, 0x1e
/* 23188 80022588 100010C7 */  b          .L800268A8
/* 2318C 8002258C AFAA00EC */   sw        $t2, 0xec($sp)
.L80022590:
/* 23190 80022590 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 23194 80022594 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 23198 80022598 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2319C 8002259C 000F7080 */  sll        $t6, $t7, 2
/* 231A0 800225A0 01CF7023 */  subu       $t6, $t6, $t7
/* 231A4 800225A4 000E7080 */  sll        $t6, $t6, 2
/* 231A8 800225A8 01CF7023 */  subu       $t6, $t6, $t7
/* 231AC 800225AC 000E7080 */  sll        $t6, $t6, 2
/* 231B0 800225B0 01CF7021 */  addu       $t6, $t6, $t7
/* 231B4 800225B4 000E7080 */  sll        $t6, $t6, 2
/* 231B8 800225B8 01CF7023 */  subu       $t6, $t6, $t7
/* 231BC 800225BC 000E7080 */  sll        $t6, $t6, 2
/* 231C0 800225C0 010EC021 */  addu       $t8, $t0, $t6
/* 231C4 800225C4 8F090088 */  lw         $t1, 0x88($t8)
/* 231C8 800225C8 24010003 */  addiu      $at, $zero, 3
/* 231CC 800225CC 15210012 */  bne        $t1, $at, .L80022618
/* 231D0 800225D0 00000000 */   nop
/* 231D4 800225D4 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 231D8 800225D8 3C01800D */  lui        $at, 0x800d
/* 231DC 800225DC C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* 231E0 800225E0 00195900 */  sll        $t3, $t9, 4
/* 231E4 800225E4 01795823 */  subu       $t3, $t3, $t9
/* 231E8 800225E8 000B5880 */  sll        $t3, $t3, 2
/* 231EC 800225EC 002B0821 */  addu       $at, $at, $t3
/* 231F0 800225F0 C43072DC */  lwc1       $f16, 0x72dc($at)
/* 231F4 800225F4 4610503C */  c.lt.s     $f10, $f16
/* 231F8 800225F8 00000000 */  nop
/* 231FC 800225FC 450010AA */  bc1f       .L800268A8
/* 23200 80022600 00000000 */   nop
/* 23204 80022604 240D001F */  addiu      $t5, $zero, 0x1f
/* 23208 80022608 240C003C */  addiu      $t4, $zero, 0x3c
/* 2320C 8002260C AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 23210 80022610 100010A5 */  b          .L800268A8
/* 23214 80022614 AFAC00EC */   sw        $t4, 0xec($sp)
.L80022618:
/* 23218 80022618 240A001A */  addiu      $t2, $zero, 0x1a
/* 2321C 8002261C 240F001E */  addiu      $t7, $zero, 0x1e
/* 23220 80022620 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 23224 80022624 100010A0 */  b          .L800268A8
/* 23228 80022628 AFAF00EC */   sw        $t7, 0xec($sp)
.L8002262C:
/* 2322C 8002262C 8FA800E0 */  lw         $t0, 0xe0($sp)
/* 23230 80022630 3C01800D */  lui        $at, 0x800d
/* 23234 80022634 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 23238 80022638 00087100 */  sll        $t6, $t0, 4
/* 2323C 8002263C 01C87023 */  subu       $t6, $t6, $t0
/* 23240 80022640 000E7080 */  sll        $t6, $t6, 2
/* 23244 80022644 002E0821 */  addu       $at, $at, $t6
/* 23248 80022648 C42472E0 */  lwc1       $f4, 0x72e0($at)
/* 2324C 8002264C 4612203C */  c.lt.s     $f4, $f18
/* 23250 80022650 00000000 */  nop
/* 23254 80022654 45000006 */  bc1f       .L80022670
/* 23258 80022658 00000000 */   nop
/* 2325C 8002265C 24180019 */  addiu      $t8, $zero, 0x19
/* 23260 80022660 2409001E */  addiu      $t1, $zero, 0x1e
/* 23264 80022664 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 23268 80022668 1000108F */  b          .L800268A8
/* 2326C 8002266C AFA900EC */   sw        $t1, 0xec($sp)
.L80022670:
/* 23270 80022670 24190022 */  addiu      $t9, $zero, 0x22
/* 23274 80022674 240B001E */  addiu      $t3, $zero, 0x1e
/* 23278 80022678 AFB900F4 */  sw         $t9, 0xf4($sp)
/* 2327C 8002267C 1000108A */  b          .L800268A8
/* 23280 80022680 AFAB00EC */   sw        $t3, 0xec($sp)
.L80022684:
/* 23284 80022684 240D0019 */  addiu      $t5, $zero, 0x19
/* 23288 80022688 240C001E */  addiu      $t4, $zero, 0x1e
/* 2328C 8002268C AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 23290 80022690 10001085 */  b          .L800268A8
/* 23294 80022694 AFAC00EC */   sw        $t4, 0xec($sp)
/* 23298 80022698 8FAA00F4 */  lw         $t2, 0xf4($sp)
/* 2329C 8002269C 24010035 */  addiu      $at, $zero, 0x35
/* 232A0 800226A0 11410005 */  beq        $t2, $at, .L800226B8
/* 232A4 800226A4 00000000 */   nop
/* 232A8 800226A8 240F0035 */  addiu      $t7, $zero, 0x35
/* 232AC 800226AC 240800B4 */  addiu      $t0, $zero, 0xb4
/* 232B0 800226B0 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 232B4 800226B4 AFA800EC */  sw         $t0, 0xec($sp)
.L800226B8:
/* 232B8 800226B8 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 232BC 800226BC 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 232C0 800226C0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 232C4 800226C4 00184880 */  sll        $t1, $t8, 2
/* 232C8 800226C8 01384823 */  subu       $t1, $t1, $t8
/* 232CC 800226CC 00094880 */  sll        $t1, $t1, 2
/* 232D0 800226D0 01384823 */  subu       $t1, $t1, $t8
/* 232D4 800226D4 00094880 */  sll        $t1, $t1, 2
/* 232D8 800226D8 01384821 */  addu       $t1, $t1, $t8
/* 232DC 800226DC 00094880 */  sll        $t1, $t1, 2
/* 232E0 800226E0 01384823 */  subu       $t1, $t1, $t8
/* 232E4 800226E4 00094880 */  sll        $t1, $t1, 2
/* 232E8 800226E8 01C9C821 */  addu       $t9, $t6, $t1
/* 232EC 800226EC 8F2B0070 */  lw         $t3, 0x70($t9)
/* 232F0 800226F0 2401FFFF */  addiu      $at, $zero, -1
/* 232F4 800226F4 15610021 */  bne        $t3, $at, .L8002277C
/* 232F8 800226F8 00000000 */   nop
/* 232FC 800226FC 0C012058 */  jal        func_80048160
/* 23300 80022700 24040207 */   addiu     $a0, $zero, 0x207
/* 23304 80022704 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 23308 80022708 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2330C 8002270C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 23310 80022710 000C5080 */  sll        $t2, $t4, 2
/* 23314 80022714 014C5023 */  subu       $t2, $t2, $t4
/* 23318 80022718 000A5080 */  sll        $t2, $t2, 2
/* 2331C 8002271C 014C5023 */  subu       $t2, $t2, $t4
/* 23320 80022720 000A5080 */  sll        $t2, $t2, 2
/* 23324 80022724 014C5021 */  addu       $t2, $t2, $t4
/* 23328 80022728 000A5080 */  sll        $t2, $t2, 2
/* 2332C 8002272C 014C5023 */  subu       $t2, $t2, $t4
/* 23330 80022730 000A5080 */  sll        $t2, $t2, 2
/* 23334 80022734 01AA7821 */  addu       $t7, $t5, $t2
/* 23338 80022738 ADE20070 */  sw         $v0, 0x70($t7)
/* 2333C 8002273C 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 23340 80022740 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 23344 80022744 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 23348 80022748 00187080 */  sll        $t6, $t8, 2
/* 2334C 8002274C 01D87023 */  subu       $t6, $t6, $t8
/* 23350 80022750 000E7080 */  sll        $t6, $t6, 2
/* 23354 80022754 01D87023 */  subu       $t6, $t6, $t8
/* 23358 80022758 000E7080 */  sll        $t6, $t6, 2
/* 2335C 8002275C 01D87021 */  addu       $t6, $t6, $t8
/* 23360 80022760 000E7080 */  sll        $t6, $t6, 2
/* 23364 80022764 3C01800E */  lui        $at, %hi(D_800DC640)
/* 23368 80022768 C426C640 */  lwc1       $f6, %lo(D_800DC640)($at)
/* 2336C 8002276C 01D87023 */  subu       $t6, $t6, $t8
/* 23370 80022770 000E7080 */  sll        $t6, $t6, 2
/* 23374 80022774 010E4821 */  addu       $t1, $t0, $t6
/* 23378 80022778 E52600E4 */  swc1       $f6, 0xe4($t1)
.L8002277C:
/* 2337C 8002277C 3C19800E */  lui        $t9, %hi(D_800D9DCC)
/* 23380 80022780 8F399DCC */  lw         $t9, %lo(D_800D9DCC)($t9)
/* 23384 80022784 17201048 */  bnez       $t9, .L800268A8
/* 23388 80022788 00000000 */   nop
/* 2338C 8002278C 0C012101 */  jal        func_80048404
/* 23390 80022790 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 23394 80022794 10001044 */  b          .L800268A8
/* 23398 80022798 00000000 */   nop
/* 2339C 8002279C 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 233A0 800227A0 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 233A4 800227A4 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 233A8 800227A8 000C6880 */  sll        $t5, $t4, 2
/* 233AC 800227AC 01AC6823 */  subu       $t5, $t5, $t4
/* 233B0 800227B0 000D6880 */  sll        $t5, $t5, 2
/* 233B4 800227B4 01AC6823 */  subu       $t5, $t5, $t4
/* 233B8 800227B8 000D6880 */  sll        $t5, $t5, 2
/* 233BC 800227BC 01AC6821 */  addu       $t5, $t5, $t4
/* 233C0 800227C0 000D6880 */  sll        $t5, $t5, 2
/* 233C4 800227C4 01AC6823 */  subu       $t5, $t5, $t4
/* 233C8 800227C8 000D6880 */  sll        $t5, $t5, 2
/* 233CC 800227CC 3C188016 */  lui        $t8, %hi(D_8015EDFC)
/* 233D0 800227D0 8F18EDFC */  lw         $t8, %lo(D_8015EDFC)($t8)
/* 233D4 800227D4 016D5021 */  addu       $t2, $t3, $t5
/* 233D8 800227D8 8D4F0060 */  lw         $t7, 0x60($t2)
/* 233DC 800227DC 1700000F */  bnez       $t8, .L8002281C
/* 233E0 800227E0 AFAF00D0 */   sw        $t7, 0xd0($sp)
/* 233E4 800227E4 27080001 */  addiu      $t0, $t8, 1
/* 233E8 800227E8 3C018016 */  lui        $at, %hi(D_8015EDFC)
/* 233EC 800227EC 3C0E801C */  lui        $t6, %hi(D_801C5D40)
/* 233F0 800227F0 AC28EDFC */  sw         $t0, %lo(D_8015EDFC)($at)
/* 233F4 800227F4 25CE5D40 */  addiu      $t6, $t6, %lo(D_801C5D40)
/* 233F8 800227F8 8DC4024C */  lw         $a0, 0x24c($t6)
/* 233FC 800227FC 240900A0 */  addiu      $t1, $zero, 0xa0
/* 23400 80022800 241900A0 */  addiu      $t9, $zero, 0xa0
/* 23404 80022804 AFB90014 */  sw         $t9, 0x14($sp)
/* 23408 80022808 AFA90010 */  sw         $t1, 0x10($sp)
/* 2340C 8002280C 24050001 */  addiu      $a1, $zero, 1
/* 23410 80022810 00003025 */  or         $a2, $zero, $zero
/* 23414 80022814 0C0209BC */  jal        func_800826F0
/* 23418 80022818 24074000 */   addiu     $a3, $zero, 0x4000
.L8002281C:
/* 2341C 8002281C 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 23420 80022820 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 23424 80022824 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 23428 80022828 000B6880 */  sll        $t5, $t3, 2
/* 2342C 8002282C 01AB6823 */  subu       $t5, $t5, $t3
/* 23430 80022830 000D6880 */  sll        $t5, $t5, 2
/* 23434 80022834 01AB6823 */  subu       $t5, $t5, $t3
/* 23438 80022838 000D6880 */  sll        $t5, $t5, 2
/* 2343C 8002283C 01AB6821 */  addu       $t5, $t5, $t3
/* 23440 80022840 000D6880 */  sll        $t5, $t5, 2
/* 23444 80022844 01AB6823 */  subu       $t5, $t5, $t3
/* 23448 80022848 000D6880 */  sll        $t5, $t5, 2
/* 2344C 8002284C 018D5021 */  addu       $t2, $t4, $t5
/* 23450 80022850 C5480024 */  lwc1       $f8, 0x24($t2)
/* 23454 80022854 44805000 */  mtc1       $zero, $f10
/* 23458 80022858 00000000 */  nop
/* 2345C 8002285C 460A403E */  c.le.s     $f8, $f10
/* 23460 80022860 00000000 */  nop
/* 23464 80022864 45000006 */  bc1f       .L80022880
/* 23468 80022868 00000000 */   nop
/* 2346C 8002286C 24040003 */  addiu      $a0, $zero, 3
/* 23470 80022870 0C00ABC4 */  jal        func_8002AF10
/* 23474 80022874 00002825 */   or        $a1, $zero, $zero
/* 23478 80022878 0C012101 */  jal        func_80048404
/* 2347C 8002287C 8FA400F8 */   lw        $a0, 0xf8($sp)
.L80022880:
/* 23480 80022880 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* 23484 80022884 31F80040 */  andi       $t8, $t7, 0x40
/* 23488 80022888 13000006 */  beqz       $t8, .L800228A4
/* 2348C 8002288C 00000000 */   nop
/* 23490 80022890 24080027 */  addiu      $t0, $zero, 0x27
/* 23494 80022894 240E003C */  addiu      $t6, $zero, 0x3c
/* 23498 80022898 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 2349C 8002289C 10001002 */  b          .L800268A8
/* 234A0 800228A0 AFAE00EC */   sw        $t6, 0xec($sp)
.L800228A4:
/* 234A4 800228A4 8FA900F4 */  lw         $t1, 0xf4($sp)
/* 234A8 800228A8 2539FFF3 */  addiu      $t9, $t1, -0xd
/* 234AC 800228AC 2F21001B */  sltiu      $at, $t9, 0x1b
/* 234B0 800228B0 10200007 */  beqz       $at, .L800228D0
/* 234B4 800228B4 00000000 */   nop
/* 234B8 800228B8 0019C880 */  sll        $t9, $t9, 2
/* 234BC 800228BC 3C01800E */  lui        $at, %hi(D_800DC644)
/* 234C0 800228C0 00390821 */  addu       $at, $at, $t9
/* 234C4 800228C4 8C39C644 */  lw         $t9, %lo(D_800DC644)($at)
/* 234C8 800228C8 03200008 */  jr         $t9
/* 234CC 800228CC 00000000 */   nop
.L800228D0:
/* 234D0 800228D0 240B0013 */  addiu      $t3, $zero, 0x13
/* 234D4 800228D4 240C001E */  addiu      $t4, $zero, 0x1e
/* 234D8 800228D8 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 234DC 800228DC 10000FF2 */  b          .L800268A8
/* 234E0 800228E0 AFAC00EC */   sw        $t4, 0xec($sp)
/* 234E4 800228E4 240D0022 */  addiu      $t5, $zero, 0x22
/* 234E8 800228E8 240A001E */  addiu      $t2, $zero, 0x1e
/* 234EC 800228EC AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 234F0 800228F0 10000FED */  b          .L800268A8
/* 234F4 800228F4 AFAA00EC */   sw        $t2, 0xec($sp)
/* 234F8 800228F8 240F0022 */  addiu      $t7, $zero, 0x22
/* 234FC 800228FC 2418001E */  addiu      $t8, $zero, 0x1e
/* 23500 80022900 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 23504 80022904 10000FE8 */  b          .L800268A8
/* 23508 80022908 AFB800EC */   sw        $t8, 0xec($sp)
/* 2350C 8002290C 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 23510 80022910 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 23514 80022914 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 23518 80022918 000E4880 */  sll        $t1, $t6, 2
/* 2351C 8002291C 012E4823 */  subu       $t1, $t1, $t6
/* 23520 80022920 00094880 */  sll        $t1, $t1, 2
/* 23524 80022924 012E4823 */  subu       $t1, $t1, $t6
/* 23528 80022928 00094880 */  sll        $t1, $t1, 2
/* 2352C 8002292C 012E4821 */  addu       $t1, $t1, $t6
/* 23530 80022930 00094880 */  sll        $t1, $t1, 2
/* 23534 80022934 012E4823 */  subu       $t1, $t1, $t6
/* 23538 80022938 00094880 */  sll        $t1, $t1, 2
/* 2353C 8002293C 0109C821 */  addu       $t9, $t0, $t1
/* 23540 80022940 8F2B0088 */  lw         $t3, 0x88($t9)
/* 23544 80022944 24010003 */  addiu      $at, $zero, 3
/* 23548 80022948 1561000F */  bne        $t3, $at, .L80022988
/* 2354C 8002294C 3C0142C8 */   lui       $at, 0x42c8
/* 23550 80022950 44819000 */  mtc1       $at, $f18
/* 23554 80022954 C73000AC */  lwc1       $f16, 0xac($t9)
/* 23558 80022958 4612803C */  c.lt.s     $f16, $f18
/* 2355C 8002295C 00000000 */  nop
/* 23560 80022960 45000006 */  bc1f       .L8002297C
/* 23564 80022964 00000000 */   nop
/* 23568 80022968 240C001F */  addiu      $t4, $zero, 0x1f
/* 2356C 8002296C 240D001E */  addiu      $t5, $zero, 0x1e
/* 23570 80022970 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 23574 80022974 10000004 */  b          .L80022988
/* 23578 80022978 AFAD00EC */   sw        $t5, 0xec($sp)
.L8002297C:
/* 2357C 8002297C 240A000D */  addiu      $t2, $zero, 0xd
/* 23580 80022980 10000FC9 */  b          .L800268A8
/* 23584 80022984 AFAA00F4 */   sw        $t2, 0xf4($sp)
.L80022988:
/* 23588 80022988 240F001E */  addiu      $t7, $zero, 0x1e
/* 2358C 8002298C 10000FC6 */  b          .L800268A8
/* 23590 80022990 AFAF00EC */   sw        $t7, 0xec($sp)
/* 23594 80022994 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 23598 80022998 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2359C 8002299C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 235A0 800229A0 000E4080 */  sll        $t0, $t6, 2
/* 235A4 800229A4 010E4023 */  subu       $t0, $t0, $t6
/* 235A8 800229A8 00084080 */  sll        $t0, $t0, 2
/* 235AC 800229AC 010E4023 */  subu       $t0, $t0, $t6
/* 235B0 800229B0 00084080 */  sll        $t0, $t0, 2
/* 235B4 800229B4 010E4021 */  addu       $t0, $t0, $t6
/* 235B8 800229B8 00084080 */  sll        $t0, $t0, 2
/* 235BC 800229BC 010E4023 */  subu       $t0, $t0, $t6
/* 235C0 800229C0 00084080 */  sll        $t0, $t0, 2
/* 235C4 800229C4 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 235C8 800229C8 03084821 */  addu       $t1, $t8, $t0
/* 235CC 800229CC 8D2B0060 */  lw         $t3, 0x60($t1)
/* 235D0 800229D0 24010006 */  addiu      $at, $zero, 6
/* 235D4 800229D4 17210011 */  bne        $t9, $at, .L80022A1C
/* 235D8 800229D8 AFAB00CC */   sw        $t3, 0xcc($sp)
/* 235DC 800229DC 3C0C8016 */  lui        $t4, %hi(D_8015F464)
/* 235E0 800229E0 8D8CF464 */  lw         $t4, %lo(D_8015F464)($t4)
/* 235E4 800229E4 1580000D */  bnez       $t4, .L80022A1C
/* 235E8 800229E8 00000000 */   nop
/* 235EC 800229EC 3C0D802B */  lui        $t5, %hi(D_802A8140)
/* 235F0 800229F0 25AD8140 */  addiu      $t5, $t5, %lo(D_802A8140)
/* 235F4 800229F4 8DAA0288 */  lw         $t2, 0x288($t5)
/* 235F8 800229F8 2401FFFF */  addiu      $at, $zero, -1
/* 235FC 800229FC 15410007 */  bne        $t2, $at, .L80022A1C
/* 23600 80022A00 00000000 */   nop
/* 23604 80022A04 240F003D */  addiu      $t7, $zero, 0x3d
/* 23608 80022A08 3C18802B */  lui        $t8, %hi(D_802A8140)
/* 2360C 80022A0C ADAF0288 */  sw         $t7, 0x288($t5)
/* 23610 80022A10 27188140 */  addiu      $t8, $t8, %lo(D_802A8140)
/* 23614 80022A14 240E0001 */  addiu      $t6, $zero, 1
/* 23618 80022A18 AF0E0280 */  sw         $t6, 0x280($t8)
.L80022A1C:
/* 2361C 80022A1C 8FA800E4 */  lw         $t0, 0xe4($sp)
/* 23620 80022A20 24010005 */  addiu      $at, $zero, 5
/* 23624 80022A24 15010076 */  bne        $t0, $at, .L80022C00
/* 23628 80022A28 00000000 */   nop
/* 2362C 80022A2C 3C098016 */  lui        $t1, %hi(D_801631F4)
/* 23630 80022A30 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* 23634 80022A34 8D2B0030 */  lw         $t3, 0x30($t1)
/* 23638 80022A38 24010001 */  addiu      $at, $zero, 1
/* 2363C 80022A3C 1561004B */  bne        $t3, $at, .L80022B6C
/* 23640 80022A40 00000000 */   nop
/* 23644 80022A44 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 23648 80022A48 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2364C 80022A4C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 23650 80022A50 000C5080 */  sll        $t2, $t4, 2
/* 23654 80022A54 014C5023 */  subu       $t2, $t2, $t4
/* 23658 80022A58 000A5080 */  sll        $t2, $t2, 2
/* 2365C 80022A5C 014C5023 */  subu       $t2, $t2, $t4
/* 23660 80022A60 000A5080 */  sll        $t2, $t2, 2
/* 23664 80022A64 014C5021 */  addu       $t2, $t2, $t4
/* 23668 80022A68 000A5080 */  sll        $t2, $t2, 2
/* 2366C 80022A6C 014C5023 */  subu       $t2, $t2, $t4
/* 23670 80022A70 000A5080 */  sll        $t2, $t2, 2
/* 23674 80022A74 032A7821 */  addu       $t7, $t9, $t2
/* 23678 80022A78 C5E40024 */  lwc1       $f4, 0x24($t7)
/* 2367C 80022A7C 3C014049 */  lui        $at, 0x4049
/* 23680 80022A80 44814800 */  mtc1       $at, $f9
/* 23684 80022A84 44804000 */  mtc1       $zero, $f8
/* 23688 80022A88 460021A1 */  cvt.d.s    $f6, $f4
/* 2368C 80022A8C 4628303E */  c.le.d     $f6, $f8
/* 23690 80022A90 00000000 */  nop
/* 23694 80022A94 4500005A */  bc1f       .L80022C00
/* 23698 80022A98 00000000 */   nop
/* 2369C 80022A9C 3C0D801C */  lui        $t5, %hi(D_801C5D40)
/* 236A0 80022AA0 25AD5D40 */  addiu      $t5, $t5, %lo(D_801C5D40)
/* 236A4 80022AA4 8DA4011C */  lw         $a0, 0x11c($t5)
/* 236A8 80022AA8 AFA00014 */  sw         $zero, 0x14($sp)
/* 236AC 80022AAC AFA00010 */  sw         $zero, 0x10($sp)
/* 236B0 80022AB0 24050001 */  addiu      $a1, $zero, 1
/* 236B4 80022AB4 00003025 */  or         $a2, $zero, $zero
/* 236B8 80022AB8 0C0209BC */  jal        func_800826F0
/* 236BC 80022ABC 24074000 */   addiu     $a3, $zero, 0x4000
/* 236C0 80022AC0 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 236C4 80022AC4 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 236C8 80022AC8 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 236CC 80022ACC 00084880 */  sll        $t1, $t0, 2
/* 236D0 80022AD0 01284823 */  subu       $t1, $t1, $t0
/* 236D4 80022AD4 00094880 */  sll        $t1, $t1, 2
/* 236D8 80022AD8 01284823 */  subu       $t1, $t1, $t0
/* 236DC 80022ADC 00094880 */  sll        $t1, $t1, 2
/* 236E0 80022AE0 01284821 */  addu       $t1, $t1, $t0
/* 236E4 80022AE4 00094880 */  sll        $t1, $t1, 2
/* 236E8 80022AE8 01284823 */  subu       $t1, $t1, $t0
/* 236EC 80022AEC 00094880 */  sll        $t1, $t1, 2
/* 236F0 80022AF0 240E0013 */  addiu      $t6, $zero, 0x13
/* 236F4 80022AF4 03095821 */  addu       $t3, $t8, $t1
/* 236F8 80022AF8 AD6E0064 */  sw         $t6, 0x64($t3)
/* 236FC 80022AFC 24190078 */  addiu      $t9, $zero, 0x78
/* 23700 80022B00 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 23704 80022B04 AC39ED80 */  sw         $t9, %lo(D_8015ED80)($at)
/* 23708 80022B08 3C018016 */  lui        $at, %hi(D_8015ED8C)
/* 2370C 80022B0C 240A0078 */  addiu      $t2, $zero, 0x78
/* 23710 80022B10 AC2AED8C */  sw         $t2, %lo(D_8015ED8C)($at)
/* 23714 80022B14 240C0021 */  addiu      $t4, $zero, 0x21
/* 23718 80022B18 240F0078 */  addiu      $t7, $zero, 0x78
/* 2371C 80022B1C 3C018016 */  lui        $at, %hi(D_8015EDCC)
/* 23720 80022B20 240D0258 */  addiu      $t5, $zero, 0x258
/* 23724 80022B24 3C088028 */  lui        $t0, %hi(D_802812D0)
/* 23728 80022B28 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 2372C 80022B2C AFAF00EC */  sw         $t7, 0xec($sp)
/* 23730 80022B30 AC2DEDCC */  sw         $t5, %lo(D_8015EDCC)($at)
/* 23734 80022B34 250812D0 */  addiu      $t0, $t0, %lo(D_802812D0)
/* 23738 80022B38 3C188028 */  lui        $t8, %hi(D_802812D0)
/* 2373C 80022B3C AD0000A0 */  sw         $zero, 0xa0($t0)
/* 23740 80022B40 271812D0 */  addiu      $t8, $t8, %lo(D_802812D0)
/* 23744 80022B44 3C098028 */  lui        $t1, %hi(D_802812D0)
/* 23748 80022B48 AF0000C0 */  sw         $zero, 0xc0($t8)
/* 2374C 80022B4C 252912D0 */  addiu      $t1, $t1, %lo(D_802812D0)
/* 23750 80022B50 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* 23754 80022B54 AD2000E0 */  sw         $zero, 0xe0($t1)
/* 23758 80022B58 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* 2375C 80022B5C 8DCB0030 */  lw         $t3, 0x30($t6)
/* 23760 80022B60 256C0001 */  addiu      $t4, $t3, 1
/* 23764 80022B64 10000F50 */  b          .L800268A8
/* 23768 80022B68 ADCC0030 */   sw        $t4, 0x30($t6)
.L80022B6C:
/* 2376C 80022B6C 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 23770 80022B70 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 23774 80022B74 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 23778 80022B78 000A7880 */  sll        $t7, $t2, 2
/* 2377C 80022B7C 01EA7823 */  subu       $t7, $t7, $t2
/* 23780 80022B80 000F7880 */  sll        $t7, $t7, 2
/* 23784 80022B84 01EA7823 */  subu       $t7, $t7, $t2
/* 23788 80022B88 000F7880 */  sll        $t7, $t7, 2
/* 2378C 80022B8C 01EA7821 */  addu       $t7, $t7, $t2
/* 23790 80022B90 000F7880 */  sll        $t7, $t7, 2
/* 23794 80022B94 01EA7823 */  subu       $t7, $t7, $t2
/* 23798 80022B98 000F7880 */  sll        $t7, $t7, 2
/* 2379C 80022B9C 032F6821 */  addu       $t5, $t9, $t7
/* 237A0 80022BA0 C5AA0024 */  lwc1       $f10, 0x24($t5)
/* 237A4 80022BA4 44809800 */  mtc1       $zero, $f19
/* 237A8 80022BA8 44809000 */  mtc1       $zero, $f18
/* 237AC 80022BAC 46005421 */  cvt.d.s    $f16, $f10
/* 237B0 80022BB0 4632803E */  c.le.d     $f16, $f18
/* 237B4 80022BB4 00000000 */  nop
/* 237B8 80022BB8 45000011 */  bc1f       .L80022C00
/* 237BC 80022BBC 00000000 */   nop
/* 237C0 80022BC0 3C188016 */  lui        $t8, %hi(D_8015F464)
/* 237C4 80022BC4 3C0B8016 */  lui        $t3, %hi(D_8015F468)
/* 237C8 80022BC8 8D6BF468 */  lw         $t3, %lo(D_8015F468)($t3)
/* 237CC 80022BCC 8F18F464 */  lw         $t8, %lo(D_8015F464)($t8)
/* 237D0 80022BD0 3C018016 */  lui        $at, 0x8016
/* 237D4 80022BD4 000B6080 */  sll        $t4, $t3, 2
/* 237D8 80022BD8 00184900 */  sll        $t1, $t8, 4
/* 237DC 80022BDC 018B6023 */  subu       $t4, $t4, $t3
/* 237E0 80022BE0 01384823 */  subu       $t1, $t1, $t8
/* 237E4 80022BE4 000948C0 */  sll        $t1, $t1, 3
/* 237E8 80022BE8 000C60C0 */  sll        $t4, $t4, 3
/* 237EC 80022BEC 012C7021 */  addu       $t6, $t1, $t4
/* 237F0 80022BF0 002E0821 */  addu       $at, $at, $t6
/* 237F4 80022BF4 24080001 */  addiu      $t0, $zero, 1
/* 237F8 80022BF8 10000F2B */  b          .L800268A8
/* 237FC 80022BFC AC280C8C */   sw        $t0, 0xc8c($at)
.L80022C00:
/* 23800 80022C00 8FAA00E4 */  lw         $t2, 0xe4($sp)
/* 23804 80022C04 24010007 */  addiu      $at, $zero, 7
/* 23808 80022C08 15410051 */  bne        $t2, $at, .L80022D50
/* 2380C 80022C0C 00000000 */   nop
/* 23810 80022C10 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 23814 80022C14 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 23818 80022C18 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 2381C 80022C1C 000F6880 */  sll        $t5, $t7, 2
/* 23820 80022C20 01AF6823 */  subu       $t5, $t5, $t7
/* 23824 80022C24 000D6880 */  sll        $t5, $t5, 2
/* 23828 80022C28 01AF6823 */  subu       $t5, $t5, $t7
/* 2382C 80022C2C 000D6880 */  sll        $t5, $t5, 2
/* 23830 80022C30 01AF6821 */  addu       $t5, $t5, $t7
/* 23834 80022C34 000D6880 */  sll        $t5, $t5, 2
/* 23838 80022C38 01AF6823 */  subu       $t5, $t5, $t7
/* 2383C 80022C3C 000D6880 */  sll        $t5, $t5, 2
/* 23840 80022C40 032DC021 */  addu       $t8, $t9, $t5
/* 23844 80022C44 C7040024 */  lwc1       $f4, 0x24($t8)
/* 23848 80022C48 3C014049 */  lui        $at, 0x4049
/* 2384C 80022C4C 44814800 */  mtc1       $at, $f9
/* 23850 80022C50 44804000 */  mtc1       $zero, $f8
/* 23854 80022C54 460021A1 */  cvt.d.s    $f6, $f4
/* 23858 80022C58 4628303E */  c.le.d     $f6, $f8
/* 2385C 80022C5C 00000000 */  nop
/* 23860 80022C60 4500003B */  bc1f       .L80022D50
/* 23864 80022C64 00000000 */   nop
/* 23868 80022C68 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* 2386C 80022C6C 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* 23870 80022C70 24010007 */  addiu      $at, $zero, 7
/* 23874 80022C74 1561000D */  bne        $t3, $at, .L80022CAC
/* 23878 80022C78 00000000 */   nop
/* 2387C 80022C7C 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* 23880 80022C80 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* 23884 80022C84 24090001 */  addiu      $t1, $zero, 1
/* 23888 80022C88 AD890078 */  sw         $t1, 0x78($t4)
/* 2388C 80022C8C 2404000A */  addiu      $a0, $zero, 0xa
/* 23890 80022C90 0C011D43 */  jal        func_8004750C
/* 23894 80022C94 24050022 */   addiu     $a1, $zero, 0x22
/* 23898 80022C98 2404000B */  addiu      $a0, $zero, 0xb
/* 2389C 80022C9C 0C011D43 */  jal        func_8004750C
/* 238A0 80022CA0 24050022 */   addiu     $a1, $zero, 0x22
/* 238A4 80022CA4 10000010 */  b          .L80022CE8
/* 238A8 80022CA8 00000000 */   nop
.L80022CAC:
/* 238AC 80022CAC 3C0E8016 */  lui        $t6, %hi(D_8015F464)
/* 238B0 80022CB0 3C0F8016 */  lui        $t7, %hi(D_8015F468)
/* 238B4 80022CB4 8DEFF468 */  lw         $t7, %lo(D_8015F468)($t7)
/* 238B8 80022CB8 8DCEF464 */  lw         $t6, %lo(D_8015F464)($t6)
/* 238BC 80022CBC 3C018016 */  lui        $at, 0x8016
/* 238C0 80022CC0 000FC880 */  sll        $t9, $t7, 2
/* 238C4 80022CC4 000E5100 */  sll        $t2, $t6, 4
/* 238C8 80022CC8 032FC823 */  subu       $t9, $t9, $t7
/* 238CC 80022CCC 014E5023 */  subu       $t2, $t2, $t6
/* 238D0 80022CD0 000A50C0 */  sll        $t2, $t2, 3
/* 238D4 80022CD4 0019C8C0 */  sll        $t9, $t9, 3
/* 238D8 80022CD8 01596821 */  addu       $t5, $t2, $t9
/* 238DC 80022CDC 002D0821 */  addu       $at, $at, $t5
/* 238E0 80022CE0 24080001 */  addiu      $t0, $zero, 1
/* 238E4 80022CE4 AC280C8C */  sw         $t0, 0xc8c($at)
.L80022CE8:
/* 238E8 80022CE8 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 238EC 80022CEC 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 238F0 80022CF0 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 238F4 80022CF4 00096080 */  sll        $t4, $t1, 2
/* 238F8 80022CF8 01896023 */  subu       $t4, $t4, $t1
/* 238FC 80022CFC 000C6080 */  sll        $t4, $t4, 2
/* 23900 80022D00 01896023 */  subu       $t4, $t4, $t1
/* 23904 80022D04 000C6080 */  sll        $t4, $t4, 2
/* 23908 80022D08 01896021 */  addu       $t4, $t4, $t1
/* 2390C 80022D0C 000C6080 */  sll        $t4, $t4, 2
/* 23910 80022D10 01896023 */  subu       $t4, $t4, $t1
/* 23914 80022D14 000C6080 */  sll        $t4, $t4, 2
/* 23918 80022D18 24180013 */  addiu      $t8, $zero, 0x13
/* 2391C 80022D1C 016C7021 */  addu       $t6, $t3, $t4
/* 23920 80022D20 ADD80064 */  sw         $t8, 0x64($t6)
/* 23924 80022D24 240A0078 */  addiu      $t2, $zero, 0x78
/* 23928 80022D28 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 2392C 80022D2C AC2AED80 */  sw         $t2, %lo(D_8015ED80)($at)
/* 23930 80022D30 240F0021 */  addiu      $t7, $zero, 0x21
/* 23934 80022D34 3C018016 */  lui        $at, %hi(D_8015ED8C)
/* 23938 80022D38 24190078 */  addiu      $t9, $zero, 0x78
/* 2393C 80022D3C 24080078 */  addiu      $t0, $zero, 0x78
/* 23940 80022D40 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 23944 80022D44 AC39ED8C */  sw         $t9, %lo(D_8015ED8C)($at)
/* 23948 80022D48 10000ED7 */  b          .L800268A8
/* 2394C 80022D4C AFA800EC */   sw        $t0, 0xec($sp)
.L80022D50:
/* 23950 80022D50 8FAD00CC */  lw         $t5, 0xcc($sp)
/* 23954 80022D54 31A90040 */  andi       $t1, $t5, 0x40
/* 23958 80022D58 11200006 */  beqz       $t1, .L80022D74
/* 2395C 80022D5C 00000000 */   nop
/* 23960 80022D60 240B0027 */  addiu      $t3, $zero, 0x27
/* 23964 80022D64 240C003C */  addiu      $t4, $zero, 0x3c
/* 23968 80022D68 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 2396C 80022D6C 10000ECE */  b          .L800268A8
/* 23970 80022D70 AFAC00EC */   sw        $t4, 0xec($sp)
.L80022D74:
/* 23974 80022D74 8FB800F4 */  lw         $t8, 0xf4($sp)
/* 23978 80022D78 270EFFF3 */  addiu      $t6, $t8, -0xd
/* 2397C 80022D7C 2DC1001B */  sltiu      $at, $t6, 0x1b
/* 23980 80022D80 10200007 */  beqz       $at, .L80022DA0
/* 23984 80022D84 00000000 */   nop
/* 23988 80022D88 000E7080 */  sll        $t6, $t6, 2
/* 2398C 80022D8C 3C01800E */  lui        $at, %hi(D_800DC6B0)
/* 23990 80022D90 002E0821 */  addu       $at, $at, $t6
/* 23994 80022D94 8C2EC6B0 */  lw         $t6, %lo(D_800DC6B0)($at)
/* 23998 80022D98 01C00008 */  jr         $t6
/* 2399C 80022D9C 00000000 */   nop
.L80022DA0:
/* 239A0 80022DA0 240F0013 */  addiu      $t7, $zero, 0x13
/* 239A4 80022DA4 10000EC0 */  b          .L800268A8
/* 239A8 80022DA8 AFAF00F4 */   sw        $t7, 0xf4($sp)
/* 239AC 80022DAC 240A0022 */  addiu      $t2, $zero, 0x22
/* 239B0 80022DB0 2419001E */  addiu      $t9, $zero, 0x1e
/* 239B4 80022DB4 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 239B8 80022DB8 10000EBB */  b          .L800268A8
/* 239BC 80022DBC AFB900EC */   sw        $t9, 0xec($sp)
/* 239C0 80022DC0 24080019 */  addiu      $t0, $zero, 0x19
/* 239C4 80022DC4 240D001E */  addiu      $t5, $zero, 0x1e
/* 239C8 80022DC8 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 239CC 80022DCC 10000EB6 */  b          .L800268A8
/* 239D0 80022DD0 AFAD00EC */   sw        $t5, 0xec($sp)
/* 239D4 80022DD4 24090022 */  addiu      $t1, $zero, 0x22
/* 239D8 80022DD8 240B001E */  addiu      $t3, $zero, 0x1e
/* 239DC 80022DDC AFA900F4 */  sw         $t1, 0xf4($sp)
/* 239E0 80022DE0 10000EB1 */  b          .L800268A8
/* 239E4 80022DE4 AFAB00EC */   sw        $t3, 0xec($sp)
/* 239E8 80022DE8 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 239EC 80022DEC 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 239F0 80022DF0 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 239F4 80022DF4 00187080 */  sll        $t6, $t8, 2
/* 239F8 80022DF8 01D87023 */  subu       $t6, $t6, $t8
/* 239FC 80022DFC 000E7080 */  sll        $t6, $t6, 2
/* 23A00 80022E00 01D87023 */  subu       $t6, $t6, $t8
/* 23A04 80022E04 000E7080 */  sll        $t6, $t6, 2
/* 23A08 80022E08 01D87021 */  addu       $t6, $t6, $t8
/* 23A0C 80022E0C 000E7080 */  sll        $t6, $t6, 2
/* 23A10 80022E10 01D87023 */  subu       $t6, $t6, $t8
/* 23A14 80022E14 000E7080 */  sll        $t6, $t6, 2
/* 23A18 80022E18 018E7821 */  addu       $t7, $t4, $t6
/* 23A1C 80022E1C 8DEA0088 */  lw         $t2, 0x88($t7)
/* 23A20 80022E20 24010003 */  addiu      $at, $zero, 3
/* 23A24 80022E24 15410004 */  bne        $t2, $at, .L80022E38
/* 23A28 80022E28 00000000 */   nop
/* 23A2C 80022E2C 24190019 */  addiu      $t9, $zero, 0x19
/* 23A30 80022E30 10000E9D */  b          .L800268A8
/* 23A34 80022E34 AFB900F4 */   sw        $t9, 0xf4($sp)
.L80022E38:
/* 23A38 80022E38 2408001E */  addiu      $t0, $zero, 0x1e
/* 23A3C 80022E3C 10000E9A */  b          .L800268A8
/* 23A40 80022E40 AFA800EC */   sw        $t0, 0xec($sp)
/* 23A44 80022E44 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 23A48 80022E48 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 23A4C 80022E4C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 23A50 80022E50 00095880 */  sll        $t3, $t1, 2
/* 23A54 80022E54 01695823 */  subu       $t3, $t3, $t1
/* 23A58 80022E58 000B5880 */  sll        $t3, $t3, 2
/* 23A5C 80022E5C 01695823 */  subu       $t3, $t3, $t1
/* 23A60 80022E60 000B5880 */  sll        $t3, $t3, 2
/* 23A64 80022E64 01695821 */  addu       $t3, $t3, $t1
/* 23A68 80022E68 000B5880 */  sll        $t3, $t3, 2
/* 23A6C 80022E6C 01695823 */  subu       $t3, $t3, $t1
/* 23A70 80022E70 000B5880 */  sll        $t3, $t3, 2
/* 23A74 80022E74 01ABC021 */  addu       $t8, $t5, $t3
/* 23A78 80022E78 8F0C0088 */  lw         $t4, 0x88($t8)
/* 23A7C 80022E7C 24010003 */  addiu      $at, $zero, 3
/* 23A80 80022E80 15810029 */  bne        $t4, $at, .L80022F28
/* 23A84 80022E84 00000000 */   nop
/* 23A88 80022E88 8FAE00E0 */  lw         $t6, 0xe0($sp)
/* 23A8C 80022E8C 3C01800D */  lui        $at, 0x800d
/* 23A90 80022E90 C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* 23A94 80022E94 000E7900 */  sll        $t7, $t6, 4
/* 23A98 80022E98 01EE7823 */  subu       $t7, $t7, $t6
/* 23A9C 80022E9C 000F7880 */  sll        $t7, $t7, 2
/* 23AA0 80022EA0 002F0821 */  addu       $at, $at, $t7
/* 23AA4 80022EA4 C43072DC */  lwc1       $f16, 0x72dc($at)
/* 23AA8 80022EA8 4610503C */  c.lt.s     $f10, $f16
/* 23AAC 80022EAC 00000000 */  nop
/* 23AB0 80022EB0 45000006 */  bc1f       .L80022ECC
/* 23AB4 80022EB4 00000000 */   nop
/* 23AB8 80022EB8 240A001F */  addiu      $t2, $zero, 0x1f
/* 23ABC 80022EBC 2419003C */  addiu      $t9, $zero, 0x3c
/* 23AC0 80022EC0 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 23AC4 80022EC4 10000E78 */  b          .L800268A8
/* 23AC8 80022EC8 AFB900EC */   sw        $t9, 0xec($sp)
.L80022ECC:
/* 23ACC 80022ECC 8FA800E0 */  lw         $t0, 0xe0($sp)
/* 23AD0 80022ED0 3C0D800D */  lui        $t5, %hi(D_800D72D4)
/* 23AD4 80022ED4 25AD72D4 */  addiu      $t5, $t5, %lo(D_800D72D4)
/* 23AD8 80022ED8 00084900 */  sll        $t1, $t0, 4
/* 23ADC 80022EDC 01284823 */  subu       $t1, $t1, $t0
/* 23AE0 80022EE0 00094880 */  sll        $t1, $t1, 2
/* 23AE4 80022EE4 012D5821 */  addu       $t3, $t1, $t5
/* 23AE8 80022EE8 C5640024 */  lwc1       $f4, 0x24($t3)
/* 23AEC 80022EEC C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 23AF0 80022EF0 4604903C */  c.lt.s     $f18, $f4
/* 23AF4 80022EF4 00000000 */  nop
/* 23AF8 80022EF8 45000E6B */  bc1f       .L800268A8
/* 23AFC 80022EFC 00000000 */   nop
/* 23B00 80022F00 C5660020 */  lwc1       $f6, 0x20($t3)
/* 23B04 80022F04 4612303C */  c.lt.s     $f6, $f18
/* 23B08 80022F08 00000000 */  nop
/* 23B0C 80022F0C 45000E66 */  bc1f       .L800268A8
/* 23B10 80022F10 00000000 */   nop
/* 23B14 80022F14 2418000D */  addiu      $t8, $zero, 0xd
/* 23B18 80022F18 240C005A */  addiu      $t4, $zero, 0x5a
/* 23B1C 80022F1C AFB800F4 */  sw         $t8, 0xf4($sp)
/* 23B20 80022F20 10000E61 */  b          .L800268A8
/* 23B24 80022F24 AFAC00EC */   sw        $t4, 0xec($sp)
.L80022F28:
/* 23B28 80022F28 240E0013 */  addiu      $t6, $zero, 0x13
/* 23B2C 80022F2C 240F001E */  addiu      $t7, $zero, 0x1e
/* 23B30 80022F30 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 23B34 80022F34 10000E5C */  b          .L800268A8
/* 23B38 80022F38 AFAF00EC */   sw        $t7, 0xec($sp)
/* 23B3C 80022F3C 8FAA00E0 */  lw         $t2, 0xe0($sp)
/* 23B40 80022F40 3C01800D */  lui        $at, 0x800d
/* 23B44 80022F44 C7A800DC */  lwc1       $f8, 0xdc($sp)
/* 23B48 80022F48 000AC900 */  sll        $t9, $t2, 4
/* 23B4C 80022F4C 032AC823 */  subu       $t9, $t9, $t2
/* 23B50 80022F50 0019C880 */  sll        $t9, $t9, 2
/* 23B54 80022F54 00390821 */  addu       $at, $at, $t9
/* 23B58 80022F58 C42A72E0 */  lwc1       $f10, 0x72e0($at)
/* 23B5C 80022F5C 4608503C */  c.lt.s     $f10, $f8
/* 23B60 80022F60 00000000 */  nop
/* 23B64 80022F64 45000E50 */  bc1f       .L800268A8
/* 23B68 80022F68 00000000 */   nop
/* 23B6C 80022F6C 24080019 */  addiu      $t0, $zero, 0x19
/* 23B70 80022F70 2409001E */  addiu      $t1, $zero, 0x1e
/* 23B74 80022F74 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 23B78 80022F78 10000E4B */  b          .L800268A8
/* 23B7C 80022F7C AFA900EC */   sw        $t1, 0xec($sp)
/* 23B80 80022F80 3C0D8016 */  lui        $t5, %hi(D_8015EDA0)
/* 23B84 80022F84 8DADEDA0 */  lw         $t5, %lo(D_8015EDA0)($t5)
/* 23B88 80022F88 29A10009 */  slti       $at, $t5, 9
/* 23B8C 80022F8C 1020001C */  beqz       $at, .L80023000
/* 23B90 80022F90 00000000 */   nop
/* 23B94 80022F94 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* 23B98 80022F98 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* 23B9C 80022F9C 24010008 */  addiu      $at, $zero, 8
/* 23BA0 80022FA0 15610017 */  bne        $t3, $at, .L80023000
/* 23BA4 80022FA4 00000000 */   nop
/* 23BA8 80022FA8 3C0C800D */  lui        $t4, %hi(D_800D7B08)
/* 23BAC 80022FAC 258C7B08 */  addiu      $t4, $t4, %lo(D_800D7B08)
/* 23BB0 80022FB0 8D8F0000 */  lw         $t7, ($t4)
/* 23BB4 80022FB4 27B800C0 */  addiu      $t8, $sp, 0xc0
/* 23BB8 80022FB8 8D8E0004 */  lw         $t6, 4($t4)
/* 23BBC 80022FBC AF0F0000 */  sw         $t7, ($t8)
/* 23BC0 80022FC0 8D8F0008 */  lw         $t7, 8($t4)
/* 23BC4 80022FC4 3C19800D */  lui        $t9, %hi(D_800D7B14)
/* 23BC8 80022FC8 27397B14 */  addiu      $t9, $t9, %lo(D_800D7B14)
/* 23BCC 80022FCC AF0E0004 */  sw         $t6, 4($t8)
/* 23BD0 80022FD0 AF0F0008 */  sw         $t7, 8($t8)
/* 23BD4 80022FD4 8F290000 */  lw         $t1, ($t9)
/* 23BD8 80022FD8 27AA00B4 */  addiu      $t2, $sp, 0xb4
/* 23BDC 80022FDC 8F280004 */  lw         $t0, 4($t9)
/* 23BE0 80022FE0 AD490000 */  sw         $t1, ($t2)
/* 23BE4 80022FE4 8F290008 */  lw         $t1, 8($t9)
/* 23BE8 80022FE8 AD480004 */  sw         $t0, 4($t2)
/* 23BEC 80022FEC 27A500B4 */  addiu      $a1, $sp, 0xb4
/* 23BF0 80022FF0 AD490008 */  sw         $t1, 8($t2)
/* 23BF4 80022FF4 8FA400F8 */  lw         $a0, 0xf8($sp)
/* 23BF8 80022FF8 0C007730 */  jal        func_8001DCC0
/* 23BFC 80022FFC 27A600C0 */   addiu     $a2, $sp, 0xc0
.L80023000:
/* 23C00 80023000 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 23C04 80023004 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 23C08 80023008 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 23C0C 8002300C 000BC080 */  sll        $t8, $t3, 2
/* 23C10 80023010 030BC023 */  subu       $t8, $t8, $t3
/* 23C14 80023014 0018C080 */  sll        $t8, $t8, 2
/* 23C18 80023018 030BC023 */  subu       $t8, $t8, $t3
/* 23C1C 8002301C 0018C080 */  sll        $t8, $t8, 2
/* 23C20 80023020 030BC021 */  addu       $t8, $t8, $t3
/* 23C24 80023024 0018C080 */  sll        $t8, $t8, 2
/* 23C28 80023028 030BC023 */  subu       $t8, $t8, $t3
/* 23C2C 8002302C 0018C080 */  sll        $t8, $t8, 2
/* 23C30 80023030 01B86021 */  addu       $t4, $t5, $t8
/* 23C34 80023034 8D8E0060 */  lw         $t6, 0x60($t4)
/* 23C38 80023038 31CF0008 */  andi       $t7, $t6, 8
/* 23C3C 8002303C 11E00005 */  beqz       $t7, .L80023054
/* 23C40 80023040 00000000 */   nop
/* 23C44 80023044 240A001F */  addiu      $t2, $zero, 0x1f
/* 23C48 80023048 2419001E */  addiu      $t9, $zero, 0x1e
/* 23C4C 8002304C AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 23C50 80023050 AFB900EC */  sw         $t9, 0xec($sp)
.L80023054:
/* 23C54 80023054 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 23C58 80023058 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 23C5C 8002305C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 23C60 80023060 00095880 */  sll        $t3, $t1, 2
/* 23C64 80023064 01695823 */  subu       $t3, $t3, $t1
/* 23C68 80023068 000B5880 */  sll        $t3, $t3, 2
/* 23C6C 8002306C 01695823 */  subu       $t3, $t3, $t1
/* 23C70 80023070 000B5880 */  sll        $t3, $t3, 2
/* 23C74 80023074 01695821 */  addu       $t3, $t3, $t1
/* 23C78 80023078 000B5880 */  sll        $t3, $t3, 2
/* 23C7C 8002307C 01695823 */  subu       $t3, $t3, $t1
/* 23C80 80023080 000B5880 */  sll        $t3, $t3, 2
/* 23C84 80023084 010B6821 */  addu       $t5, $t0, $t3
/* 23C88 80023088 C5B000AC */  lwc1       $f16, 0xac($t5)
/* 23C8C 8002308C 3C01800E */  lui        $at, %hi(D_800DC720)
/* 23C90 80023090 D432C720 */  ldc1       $f18, %lo(D_800DC720)($at)
/* 23C94 80023094 46008121 */  cvt.d.s    $f4, $f16
/* 23C98 80023098 4632203C */  c.lt.d     $f4, $f18
/* 23C9C 8002309C 00000000 */  nop
/* 23CA0 800230A0 45000006 */  bc1f       .L800230BC
/* 23CA4 800230A4 00000000 */   nop
/* 23CA8 800230A8 2418001F */  addiu      $t8, $zero, 0x1f
/* 23CAC 800230AC 240C0032 */  addiu      $t4, $zero, 0x32
/* 23CB0 800230B0 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 23CB4 800230B4 10000DFC */  b          .L800268A8
/* 23CB8 800230B8 AFAC00EC */   sw        $t4, 0xec($sp)
.L800230BC:
/* 23CBC 800230BC 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 23CC0 800230C0 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 23CC4 800230C4 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 23CC8 800230C8 000F5080 */  sll        $t2, $t7, 2
/* 23CCC 800230CC 014F5023 */  subu       $t2, $t2, $t7
/* 23CD0 800230D0 000A5080 */  sll        $t2, $t2, 2
/* 23CD4 800230D4 014F5023 */  subu       $t2, $t2, $t7
/* 23CD8 800230D8 000A5080 */  sll        $t2, $t2, 2
/* 23CDC 800230DC 014F5021 */  addu       $t2, $t2, $t7
/* 23CE0 800230E0 000A5080 */  sll        $t2, $t2, 2
/* 23CE4 800230E4 014F5023 */  subu       $t2, $t2, $t7
/* 23CE8 800230E8 000A5080 */  sll        $t2, $t2, 2
/* 23CEC 800230EC 01CAC821 */  addu       $t9, $t6, $t2
/* 23CF0 800230F0 C72600AC */  lwc1       $f6, 0xac($t9)
/* 23CF4 800230F4 3C014089 */  lui        $at, 0x4089
/* 23CF8 800230F8 44815800 */  mtc1       $at, $f11
/* 23CFC 800230FC 44805000 */  mtc1       $zero, $f10
/* 23D00 80023100 46003221 */  cvt.d.s    $f8, $f6
/* 23D04 80023104 4628503C */  c.lt.d     $f10, $f8
/* 23D08 80023108 00000000 */  nop
/* 23D0C 8002310C 45000006 */  bc1f       .L80023128
/* 23D10 80023110 00000000 */   nop
/* 23D14 80023114 2409001A */  addiu      $t1, $zero, 0x1a
/* 23D18 80023118 2408001E */  addiu      $t0, $zero, 0x1e
/* 23D1C 8002311C AFA900F4 */  sw         $t1, 0xf4($sp)
/* 23D20 80023120 10000DE1 */  b          .L800268A8
/* 23D24 80023124 AFA800EC */   sw        $t0, 0xec($sp)
.L80023128:
/* 23D28 80023128 240B0019 */  addiu      $t3, $zero, 0x19
/* 23D2C 8002312C 240D001E */  addiu      $t5, $zero, 0x1e
/* 23D30 80023130 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 23D34 80023134 10000DDC */  b          .L800268A8
/* 23D38 80023138 AFAD00EC */   sw        $t5, 0xec($sp)
/* 23D3C 8002313C 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 23D40 80023140 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 23D44 80023144 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 23D48 80023148 000C7880 */  sll        $t7, $t4, 2
/* 23D4C 8002314C 01EC7823 */  subu       $t7, $t7, $t4
/* 23D50 80023150 000F7880 */  sll        $t7, $t7, 2
/* 23D54 80023154 01EC7823 */  subu       $t7, $t7, $t4
/* 23D58 80023158 000F7880 */  sll        $t7, $t7, 2
/* 23D5C 8002315C 01EC7821 */  addu       $t7, $t7, $t4
/* 23D60 80023160 000F7880 */  sll        $t7, $t7, 2
/* 23D64 80023164 01EC7823 */  subu       $t7, $t7, $t4
/* 23D68 80023168 000F7880 */  sll        $t7, $t7, 2
/* 23D6C 8002316C 030F7021 */  addu       $t6, $t8, $t7
/* 23D70 80023170 8DCA00A4 */  lw         $t2, 0xa4($t6)
/* 23D74 80023174 2409FFFF */  addiu      $t1, $zero, -1
/* 23D78 80023178 AFAA00B0 */  sw         $t2, 0xb0($sp)
/* 23D7C 8002317C 8DD90268 */  lw         $t9, 0x268($t6)
/* 23D80 80023180 AFA900A8 */  sw         $t1, 0xa8($sp)
/* 23D84 80023184 AFB900AC */  sw         $t9, 0xac($sp)
/* 23D88 80023188 C5C400E0 */  lwc1       $f4, 0xe0($t6)
/* 23D8C 8002318C C5D0008C */  lwc1       $f16, 0x8c($t6)
/* 23D90 80023190 0C004788 */  jal        func_80011E20
/* 23D94 80023194 46048301 */   sub.s     $f12, $f16, $f4
/* 23D98 80023198 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 23D9C 8002319C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 23DA0 800231A0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 23DA4 800231A4 000B6880 */  sll        $t5, $t3, 2
/* 23DA8 800231A8 01AB6823 */  subu       $t5, $t5, $t3
/* 23DAC 800231AC 000D6880 */  sll        $t5, $t5, 2
/* 23DB0 800231B0 01AB6823 */  subu       $t5, $t5, $t3
/* 23DB4 800231B4 000D6880 */  sll        $t5, $t5, 2
/* 23DB8 800231B8 01AB6821 */  addu       $t5, $t5, $t3
/* 23DBC 800231BC 000D6880 */  sll        $t5, $t5, 2
/* 23DC0 800231C0 01AB6823 */  subu       $t5, $t5, $t3
/* 23DC4 800231C4 000D6880 */  sll        $t5, $t5, 2
/* 23DC8 800231C8 010D6021 */  addu       $t4, $t0, $t5
/* 23DCC 800231CC C5920094 */  lwc1       $f18, 0x94($t4)
/* 23DD0 800231D0 C58600E8 */  lwc1       $f6, 0xe8($t4)
/* 23DD4 800231D4 46000506 */  mov.s      $f20, $f0
/* 23DD8 800231D8 0C004788 */  jal        func_80011E20
/* 23DDC 800231DC 46069301 */   sub.s     $f12, $f18, $f6
/* 23DE0 800231E0 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 23DE4 800231E4 46140200 */  add.s      $f8, $f0, $f20
/* 23DE8 800231E8 3C188016 */  lui        $t8, 0x8016
/* 23DEC 800231EC 000F5080 */  sll        $t2, $t7, 2
/* 23DF0 800231F0 014F5023 */  subu       $t2, $t2, $t7
/* 23DF4 800231F4 000A5080 */  sll        $t2, $t2, 2
/* 23DF8 800231F8 014F5023 */  subu       $t2, $t2, $t7
/* 23DFC 800231FC 000A5080 */  sll        $t2, $t2, 2
/* 23E00 80023200 014F5021 */  addu       $t2, $t2, $t7
/* 23E04 80023204 8F18FB9C */  lw         $t8, -0x464($t8)
/* 23E08 80023208 000A5080 */  sll        $t2, $t2, 2
/* 23E0C 8002320C 014F5023 */  subu       $t2, $t2, $t7
/* 23E10 80023210 000A5080 */  sll        $t2, $t2, 2
/* 23E14 80023214 E7A800A4 */  swc1       $f8, 0xa4($sp)
/* 23E18 80023218 030AC821 */  addu       $t9, $t8, $t2
/* 23E1C 8002321C C72A00E0 */  lwc1       $f10, 0xe0($t9)
/* 23E20 80023220 C730008C */  lwc1       $f16, 0x8c($t9)
/* 23E24 80023224 C72400E8 */  lwc1       $f4, 0xe8($t9)
/* 23E28 80023228 C7320094 */  lwc1       $f18, 0x94($t9)
/* 23E2C 8002322C 8F2600FC */  lw         $a2, 0xfc($t9)
/* 23E30 80023230 8F270100 */  lw         $a3, 0x100($t9)
/* 23E34 80023234 46105301 */  sub.s      $f12, $f10, $f16
/* 23E38 80023238 0C004794 */  jal        func_80011E50
/* 23E3C 8002323C 46122381 */   sub.s     $f14, $f4, $f18
/* 23E40 80023240 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 23E44 80023244 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 23E48 80023248 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 23E4C 8002324C 000E5880 */  sll        $t3, $t6, 2
/* 23E50 80023250 016E5823 */  subu       $t3, $t3, $t6
/* 23E54 80023254 000B5880 */  sll        $t3, $t3, 2
/* 23E58 80023258 016E5823 */  subu       $t3, $t3, $t6
/* 23E5C 8002325C 000B5880 */  sll        $t3, $t3, 2
/* 23E60 80023260 016E5821 */  addu       $t3, $t3, $t6
/* 23E64 80023264 000B5880 */  sll        $t3, $t3, 2
/* 23E68 80023268 016E5823 */  subu       $t3, $t3, $t6
/* 23E6C 8002326C 000B5880 */  sll        $t3, $t3, 2
/* 23E70 80023270 E7A000A0 */  swc1       $f0, 0xa0($sp)
/* 23E74 80023274 012B4021 */  addu       $t0, $t1, $t3
/* 23E78 80023278 C50600AC */  lwc1       $f6, 0xac($t0)
/* 23E7C 8002327C 3C01800E */  lui        $at, %hi(D_800DC728)
/* 23E80 80023280 D42AC728 */  ldc1       $f10, %lo(D_800DC728)($at)
/* 23E84 80023284 46003221 */  cvt.d.s    $f8, $f6
/* 23E88 80023288 462A403C */  c.lt.d     $f8, $f10
/* 23E8C 8002328C 00000000 */  nop
/* 23E90 80023290 4500001F */  bc1f       .L80023310
/* 23E94 80023294 00000000 */   nop
/* 23E98 80023298 C51000EC */  lwc1       $f16, 0xec($t0)
/* 23E9C 8002329C C52400EC */  lwc1       $f4, 0xec($t1)
/* 23EA0 800232A0 46048032 */  c.eq.s     $f16, $f4
/* 23EA4 800232A4 00000000 */  nop
/* 23EA8 800232A8 45000019 */  bc1f       .L80023310
/* 23EAC 800232AC 00000000 */   nop
/* 23EB0 800232B0 3C0D8016 */  lui        $t5, %hi(D_8015EDA0)
/* 23EB4 800232B4 8DADEDA0 */  lw         $t5, %lo(D_8015EDA0)($t5)
/* 23EB8 800232B8 29A10007 */  slti       $at, $t5, 7
/* 23EBC 800232BC 10200014 */  beqz       $at, .L80023310
/* 23EC0 800232C0 00000000 */   nop
/* 23EC4 800232C4 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* 23EC8 800232C8 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* 23ECC 800232CC 8D8F0004 */  lw         $t7, 4($t4)
/* 23ED0 800232D0 24010001 */  addiu      $at, $zero, 1
/* 23ED4 800232D4 11E1000E */  beq        $t7, $at, .L80023310
/* 23ED8 800232D8 00000000 */   nop
/* 23EDC 800232DC 3C0A801C */  lui        $t2, %hi(D_801C5D40)
/* 23EE0 800232E0 24180007 */  addiu      $t8, $zero, 7
/* 23EE4 800232E4 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 23EE8 800232E8 254A5D40 */  addiu      $t2, $t2, %lo(D_801C5D40)
/* 23EEC 800232EC AC38EDA0 */  sw         $t8, %lo(D_8015EDA0)($at)
/* 23EF0 800232F0 2559001C */  addiu      $t9, $t2, 0x1c
/* 23EF4 800232F4 8F24002C */  lw         $a0, 0x2c($t9)
/* 23EF8 800232F8 AFA00014 */  sw         $zero, 0x14($sp)
/* 23EFC 800232FC AFA00010 */  sw         $zero, 0x10($sp)
/* 23F00 80023300 24050001 */  addiu      $a1, $zero, 1
/* 23F04 80023304 00003025 */  or         $a2, $zero, $zero
/* 23F08 80023308 0C0209BC */  jal        func_800826F0
/* 23F0C 8002330C 24074000 */   addiu     $a3, $zero, 0x4000
.L80023310:
/* 23F10 80023310 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 23F14 80023314 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 23F18 80023318 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 23F1C 8002331C 000B4080 */  sll        $t0, $t3, 2
/* 23F20 80023320 010B4023 */  subu       $t0, $t0, $t3
/* 23F24 80023324 00084080 */  sll        $t0, $t0, 2
/* 23F28 80023328 010B4023 */  subu       $t0, $t0, $t3
/* 23F2C 8002332C 00084080 */  sll        $t0, $t0, 2
/* 23F30 80023330 010B4021 */  addu       $t0, $t0, $t3
/* 23F34 80023334 00084080 */  sll        $t0, $t0, 2
/* 23F38 80023338 010B4023 */  subu       $t0, $t0, $t3
/* 23F3C 8002333C 00084080 */  sll        $t0, $t0, 2
/* 23F40 80023340 01C84821 */  addu       $t1, $t6, $t0
/* 23F44 80023344 8D2D0270 */  lw         $t5, 0x270($t1)
/* 23F48 80023348 24010004 */  addiu      $at, $zero, 4
/* 23F4C 8002334C 15A10006 */  bne        $t5, $at, .L80023368
/* 23F50 80023350 00000000 */   nop
/* 23F54 80023354 240C001F */  addiu      $t4, $zero, 0x1f
/* 23F58 80023358 240F003C */  addiu      $t7, $zero, 0x3c
/* 23F5C 8002335C AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 23F60 80023360 10000D51 */  b          .L800268A8
/* 23F64 80023364 AFAF00EC */   sw        $t7, 0xec($sp)
.L80023368:
/* 23F68 80023368 8FB800F4 */  lw         $t8, 0xf4($sp)
/* 23F6C 8002336C 270AFFE7 */  addiu      $t2, $t8, -0x19
/* 23F70 80023370 2D41000D */  sltiu      $at, $t2, 0xd
/* 23F74 80023374 10200007 */  beqz       $at, .L80023394
/* 23F78 80023378 00000000 */   nop
/* 23F7C 8002337C 000A5080 */  sll        $t2, $t2, 2
/* 23F80 80023380 3C01800E */  lui        $at, %hi(D_800DC730)
/* 23F84 80023384 002A0821 */  addu       $at, $at, $t2
/* 23F88 80023388 8C2AC730 */  lw         $t2, %lo(D_800DC730)($at)
/* 23F8C 8002338C 01400008 */  jr         $t2
/* 23F90 80023390 00000000 */   nop
.L80023394:
/* 23F94 80023394 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 23F98 80023398 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 23F9C 8002339C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 23FA0 800233A0 000B7080 */  sll        $t6, $t3, 2
/* 23FA4 800233A4 01CB7023 */  subu       $t6, $t6, $t3
/* 23FA8 800233A8 000E7080 */  sll        $t6, $t6, 2
/* 23FAC 800233AC 01CB7023 */  subu       $t6, $t6, $t3
/* 23FB0 800233B0 000E7080 */  sll        $t6, $t6, 2
/* 23FB4 800233B4 01CB7021 */  addu       $t6, $t6, $t3
/* 23FB8 800233B8 000E7080 */  sll        $t6, $t6, 2
/* 23FBC 800233BC 01CB7023 */  subu       $t6, $t6, $t3
/* 23FC0 800233C0 000E7080 */  sll        $t6, $t6, 2
/* 23FC4 800233C4 032E4021 */  addu       $t0, $t9, $t6
/* 23FC8 800233C8 8D090088 */  lw         $t1, 0x88($t0)
/* 23FCC 800233CC 24010003 */  addiu      $at, $zero, 3
/* 23FD0 800233D0 1521001A */  bne        $t1, $at, .L8002343C
/* 23FD4 800233D4 00000000 */   nop
/* 23FD8 800233D8 C7B200A4 */  lwc1       $f18, 0xa4($sp)
/* 23FDC 800233DC 3C01800E */  lui        $at, %hi(D_800DC768)
/* 23FE0 800233E0 D428C768 */  ldc1       $f8, %lo(D_800DC768)($at)
/* 23FE4 800233E4 460091A1 */  cvt.d.s    $f6, $f18
/* 23FE8 800233E8 4628303C */  c.lt.d     $f6, $f8
/* 23FEC 800233EC 00000000 */  nop
/* 23FF0 800233F0 4501000D */  bc1t       .L80023428
/* 23FF4 800233F4 00000000 */   nop
/* 23FF8 800233F8 C7AA00A0 */  lwc1       $f10, 0xa0($sp)
/* 23FFC 800233FC 44802800 */  mtc1       $zero, $f5
/* 24000 80023400 44802000 */  mtc1       $zero, $f4
/* 24004 80023404 46005421 */  cvt.d.s    $f16, $f10
/* 24008 80023408 4624803C */  c.lt.d     $f16, $f4
/* 2400C 8002340C 00000000 */  nop
/* 24010 80023410 45010005 */  bc1t       .L80023428
/* 24014 80023414 00000000 */   nop
/* 24018 80023418 3C0D8016 */  lui        $t5, %hi(D_8015EDAC)
/* 2401C 8002341C 8DADEDAC */  lw         $t5, %lo(D_8015EDAC)($t5)
/* 24020 80023420 11A00006 */  beqz       $t5, .L8002343C
/* 24024 80023424 00000000 */   nop
.L80023428:
/* 24028 80023428 240C0019 */  addiu      $t4, $zero, 0x19
/* 2402C 8002342C 240F001E */  addiu      $t7, $zero, 0x1e
/* 24030 80023430 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 24034 80023434 10000D1C */  b          .L800268A8
/* 24038 80023438 AFAF00EC */   sw        $t7, 0xec($sp)
.L8002343C:
/* 2403C 8002343C 2418001A */  addiu      $t8, $zero, 0x1a
/* 24040 80023440 240A001E */  addiu      $t2, $zero, 0x1e
/* 24044 80023444 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 24048 80023448 10000D17 */  b          .L800268A8
/* 2404C 8002344C AFAA00EC */   sw        $t2, 0xec($sp)
/* 24050 80023450 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 24054 80023454 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 24058 80023458 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 2405C 8002345C 000E4080 */  sll        $t0, $t6, 2
/* 24060 80023460 010E4023 */  subu       $t0, $t0, $t6
/* 24064 80023464 00084080 */  sll        $t0, $t0, 2
/* 24068 80023468 010E4023 */  subu       $t0, $t0, $t6
/* 2406C 8002346C 00084080 */  sll        $t0, $t0, 2
/* 24070 80023470 010E4021 */  addu       $t0, $t0, $t6
/* 24074 80023474 00084080 */  sll        $t0, $t0, 2
/* 24078 80023478 010E4023 */  subu       $t0, $t0, $t6
/* 2407C 8002347C 00084080 */  sll        $t0, $t0, 2
/* 24080 80023480 240B0001 */  addiu      $t3, $zero, 1
/* 24084 80023484 03284821 */  addu       $t1, $t9, $t0
/* 24088 80023488 AD2B0288 */  sw         $t3, 0x288($t1)
/* 2408C 8002348C 240D0022 */  addiu      $t5, $zero, 0x22
/* 24090 80023490 240C002D */  addiu      $t4, $zero, 0x2d
/* 24094 80023494 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 24098 80023498 10000D03 */  b          .L800268A8
/* 2409C 8002349C AFAC00EC */   sw        $t4, 0xec($sp)
/* 240A0 800234A0 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* 240A4 800234A4 3C01800D */  lui        $at, 0x800d
/* 240A8 800234A8 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 240AC 800234AC 000FC100 */  sll        $t8, $t7, 4
/* 240B0 800234B0 030FC023 */  subu       $t8, $t8, $t7
/* 240B4 800234B4 0018C080 */  sll        $t8, $t8, 2
/* 240B8 800234B8 00380821 */  addu       $at, $at, $t8
/* 240BC 800234BC C42672DC */  lwc1       $f6, 0x72dc($at)
/* 240C0 800234C0 4606903C */  c.lt.s     $f18, $f6
/* 240C4 800234C4 00000000 */  nop
/* 240C8 800234C8 45000006 */  bc1f       .L800234E4
/* 240CC 800234CC 00000000 */   nop
/* 240D0 800234D0 240A001F */  addiu      $t2, $zero, 0x1f
/* 240D4 800234D4 240E003C */  addiu      $t6, $zero, 0x3c
/* 240D8 800234D8 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 240DC 800234DC 10000CF2 */  b          .L800268A8
/* 240E0 800234E0 AFAE00EC */   sw        $t6, 0xec($sp)
.L800234E4:
/* 240E4 800234E4 24190019 */  addiu      $t9, $zero, 0x19
/* 240E8 800234E8 2408001E */  addiu      $t0, $zero, 0x1e
/* 240EC 800234EC AFB900F4 */  sw         $t9, 0xf4($sp)
/* 240F0 800234F0 10000CED */  b          .L800268A8
/* 240F4 800234F4 AFA800EC */   sw        $t0, 0xec($sp)
/* 240F8 800234F8 C7A800A4 */  lwc1       $f8, 0xa4($sp)
/* 240FC 800234FC 3C01800E */  lui        $at, %hi(D_800DC770)
/* 24100 80023500 D430C770 */  ldc1       $f16, %lo(D_800DC770)($at)
/* 24104 80023504 460042A1 */  cvt.d.s    $f10, $f8
/* 24108 80023508 462A803C */  c.lt.d     $f16, $f10
/* 2410C 8002350C 00000000 */  nop
/* 24110 80023510 45000012 */  bc1f       .L8002355C
/* 24114 80023514 00000000 */   nop
/* 24118 80023518 C7A400A0 */  lwc1       $f4, 0xa0($sp)
/* 2411C 8002351C 44803800 */  mtc1       $zero, $f7
/* 24120 80023520 44803000 */  mtc1       $zero, $f6
/* 24124 80023524 460024A1 */  cvt.d.s    $f18, $f4
/* 24128 80023528 4632303E */  c.le.d     $f6, $f18
/* 2412C 8002352C 00000000 */  nop
/* 24130 80023530 4500000A */  bc1f       .L8002355C
/* 24134 80023534 00000000 */   nop
/* 24138 80023538 3C0B8016 */  lui        $t3, %hi(D_8015EDAC)
/* 2413C 8002353C 8D6BEDAC */  lw         $t3, %lo(D_8015EDAC)($t3)
/* 24140 80023540 15600006 */  bnez       $t3, .L8002355C
/* 24144 80023544 00000000 */   nop
/* 24148 80023548 2409001A */  addiu      $t1, $zero, 0x1a
/* 2414C 8002354C 240D001E */  addiu      $t5, $zero, 0x1e
/* 24150 80023550 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 24154 80023554 10000CD4 */  b          .L800268A8
/* 24158 80023558 AFAD00EC */   sw        $t5, 0xec($sp)
.L8002355C:
/* 2415C 8002355C 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 24160 80023560 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 24164 80023564 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 24168 80023568 000FC080 */  sll        $t8, $t7, 2
/* 2416C 8002356C 030FC023 */  subu       $t8, $t8, $t7
/* 24170 80023570 0018C080 */  sll        $t8, $t8, 2
/* 24174 80023574 030FC023 */  subu       $t8, $t8, $t7
/* 24178 80023578 0018C080 */  sll        $t8, $t8, 2
/* 2417C 8002357C 030FC021 */  addu       $t8, $t8, $t7
/* 24180 80023580 0018C080 */  sll        $t8, $t8, 2
/* 24184 80023584 030FC023 */  subu       $t8, $t8, $t7
/* 24188 80023588 0018C080 */  sll        $t8, $t8, 2
/* 2418C 8002358C 01985021 */  addu       $t2, $t4, $t8
/* 24190 80023590 8D4E0088 */  lw         $t6, 0x88($t2)
/* 24194 80023594 24010003 */  addiu      $at, $zero, 3
/* 24198 80023598 15C10CC3 */  bne        $t6, $at, .L800268A8
/* 2419C 8002359C 00000000 */   nop
/* 241A0 800235A0 C7A800DC */  lwc1       $f8, 0xdc($sp)
/* 241A4 800235A4 3C01800E */  lui        $at, %hi(D_800DC778)
/* 241A8 800235A8 D430C778 */  ldc1       $f16, %lo(D_800DC778)($at)
/* 241AC 800235AC 460042A1 */  cvt.d.s    $f10, $f8
/* 241B0 800235B0 462A803C */  c.lt.d     $f16, $f10
/* 241B4 800235B4 00000000 */  nop
/* 241B8 800235B8 4500001A */  bc1f       .L80023624
/* 241BC 800235BC 00000000 */   nop
/* 241C0 800235C0 0C007B26 */  jal        func_8001EC98
/* 241C4 800235C4 01E02025 */   or        $a0, $t7, $zero
/* 241C8 800235C8 AFA200A8 */  sw         $v0, 0xa8($sp)
/* 241CC 800235CC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 241D0 800235D0 07200014 */  bltz       $t9, .L80023624
/* 241D4 800235D4 00000000 */   nop
/* 241D8 800235D8 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 241DC 800235DC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 241E0 800235E0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 241E4 800235E4 000B4880 */  sll        $t1, $t3, 2
/* 241E8 800235E8 012B4823 */  subu       $t1, $t1, $t3
/* 241EC 800235EC 00094880 */  sll        $t1, $t1, 2
/* 241F0 800235F0 012B4823 */  subu       $t1, $t1, $t3
/* 241F4 800235F4 00094880 */  sll        $t1, $t1, 2
/* 241F8 800235F8 012B4821 */  addu       $t1, $t1, $t3
/* 241FC 800235FC 00094880 */  sll        $t1, $t1, 2
/* 24200 80023600 012B4823 */  subu       $t1, $t1, $t3
/* 24204 80023604 00094880 */  sll        $t1, $t1, 2
/* 24208 80023608 01096821 */  addu       $t5, $t0, $t1
/* 2420C 8002360C ADB900A4 */  sw         $t9, 0xa4($t5)
/* 24210 80023610 240C001C */  addiu      $t4, $zero, 0x1c
/* 24214 80023614 2418001E */  addiu      $t8, $zero, 0x1e
/* 24218 80023618 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 2421C 8002361C 10000CA2 */  b          .L800268A8
/* 24220 80023620 AFB800EC */   sw        $t8, 0xec($sp)
.L80023624:
/* 24224 80023624 8FAA00E0 */  lw         $t2, 0xe0($sp)
/* 24228 80023628 3C01800D */  lui        $at, 0x800d
/* 2422C 8002362C C7A400DC */  lwc1       $f4, 0xdc($sp)
/* 24230 80023630 000A7100 */  sll        $t6, $t2, 4
/* 24234 80023634 01CA7023 */  subu       $t6, $t6, $t2
/* 24238 80023638 000E7080 */  sll        $t6, $t6, 2
/* 2423C 8002363C 002E0821 */  addu       $at, $at, $t6
/* 24240 80023640 C43272D8 */  lwc1       $f18, 0x72d8($at)
/* 24244 80023644 4612203C */  c.lt.s     $f4, $f18
/* 24248 80023648 00000000 */  nop
/* 2424C 8002364C 4500000A */  bc1f       .L80023678
/* 24250 80023650 00000000 */   nop
/* 24254 80023654 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 24258 80023658 24010025 */  addiu      $at, $zero, 0x25
/* 2425C 8002365C 11E10006 */  beq        $t7, $at, .L80023678
/* 24260 80023660 00000000 */   nop
/* 24264 80023664 240B0025 */  addiu      $t3, $zero, 0x25
/* 24268 80023668 2408003C */  addiu      $t0, $zero, 0x3c
/* 2426C 8002366C AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 24270 80023670 10000C8D */  b          .L800268A8
/* 24274 80023674 AFA800EC */   sw        $t0, 0xec($sp)
.L80023678:
/* 24278 80023678 8FA900E0 */  lw         $t1, 0xe0($sp)
/* 2427C 8002367C 3C01800D */  lui        $at, 0x800d
/* 24280 80023680 C7A600DC */  lwc1       $f6, 0xdc($sp)
/* 24284 80023684 0009C900 */  sll        $t9, $t1, 4
/* 24288 80023688 0329C823 */  subu       $t9, $t9, $t1
/* 2428C 8002368C 0019C880 */  sll        $t9, $t9, 2
/* 24290 80023690 00390821 */  addu       $at, $at, $t9
/* 24294 80023694 C42872DC */  lwc1       $f8, 0x72dc($at)
/* 24298 80023698 4608303C */  c.lt.s     $f6, $f8
/* 2429C 8002369C 00000000 */  nop
/* 242A0 800236A0 45000C81 */  bc1f       .L800268A8
/* 242A4 800236A4 00000000 */   nop
/* 242A8 800236A8 240D001F */  addiu      $t5, $zero, 0x1f
/* 242AC 800236AC 240C001E */  addiu      $t4, $zero, 0x1e
/* 242B0 800236B0 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 242B4 800236B4 10000C7C */  b          .L800268A8
/* 242B8 800236B8 AFAC00EC */   sw        $t4, 0xec($sp)
/* 242BC 800236BC 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 242C0 800236C0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 242C4 800236C4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 242C8 800236C8 000A7080 */  sll        $t6, $t2, 2
/* 242CC 800236CC 01CA7023 */  subu       $t6, $t6, $t2
/* 242D0 800236D0 000E7080 */  sll        $t6, $t6, 2
/* 242D4 800236D4 01CA7023 */  subu       $t6, $t6, $t2
/* 242D8 800236D8 000E7080 */  sll        $t6, $t6, 2
/* 242DC 800236DC 01CA7021 */  addu       $t6, $t6, $t2
/* 242E0 800236E0 000E7080 */  sll        $t6, $t6, 2
/* 242E4 800236E4 01CA7023 */  subu       $t6, $t6, $t2
/* 242E8 800236E8 000E7080 */  sll        $t6, $t6, 2
/* 242EC 800236EC 030E7821 */  addu       $t7, $t8, $t6
/* 242F0 800236F0 8DEB0014 */  lw         $t3, 0x14($t7)
/* 242F4 800236F4 05600007 */  bltz       $t3, .L80023714
/* 242F8 800236F8 00000000 */   nop
/* 242FC 800236FC 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 24300 80023700 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 24304 80023704 2409001E */  addiu      $t1, $zero, 0x1e
/* 24308 80023708 ADE800A4 */  sw         $t0, 0xa4($t7)
/* 2430C 8002370C 10000C66 */  b          .L800268A8
/* 24310 80023710 AFA900F4 */   sw        $t1, 0xf4($sp)
.L80023714:
/* 24314 80023714 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 24318 80023718 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2431C 8002371C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 24320 80023720 000D6080 */  sll        $t4, $t5, 2
/* 24324 80023724 018D6023 */  subu       $t4, $t4, $t5
/* 24328 80023728 000C6080 */  sll        $t4, $t4, 2
/* 2432C 8002372C 018D6023 */  subu       $t4, $t4, $t5
/* 24330 80023730 000C6080 */  sll        $t4, $t4, 2
/* 24334 80023734 018D6021 */  addu       $t4, $t4, $t5
/* 24338 80023738 000C6080 */  sll        $t4, $t4, 2
/* 2433C 8002373C 018D6023 */  subu       $t4, $t4, $t5
/* 24340 80023740 000C6080 */  sll        $t4, $t4, 2
/* 24344 80023744 032C5021 */  addu       $t2, $t9, $t4
/* 24348 80023748 8D5800A4 */  lw         $t8, 0xa4($t2)
/* 2434C 8002374C 2401FFFF */  addiu      $at, $zero, -1
/* 24350 80023750 00187080 */  sll        $t6, $t8, 2
/* 24354 80023754 01D87023 */  subu       $t6, $t6, $t8
/* 24358 80023758 000E7080 */  sll        $t6, $t6, 2
/* 2435C 8002375C 01D87023 */  subu       $t6, $t6, $t8
/* 24360 80023760 000E7080 */  sll        $t6, $t6, 2
/* 24364 80023764 01D87021 */  addu       $t6, $t6, $t8
/* 24368 80023768 000E7080 */  sll        $t6, $t6, 2
/* 2436C 8002376C 01D87023 */  subu       $t6, $t6, $t8
/* 24370 80023770 000E7080 */  sll        $t6, $t6, 2
/* 24374 80023774 032E5821 */  addu       $t3, $t9, $t6
/* 24378 80023778 8D680014 */  lw         $t0, 0x14($t3)
/* 2437C 8002377C 11010007 */  beq        $t0, $at, .L8002379C
/* 24380 80023780 00000000 */   nop
/* 24384 80023784 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 24388 80023788 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 2438C 8002378C 240F0019 */  addiu      $t7, $zero, 0x19
/* 24390 80023790 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 24394 80023794 10000C44 */  b          .L800268A8
/* 24398 80023798 AD4900A4 */   sw        $t1, 0xa4($t2)
.L8002379C:
/* 2439C 8002379C 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 243A0 800237A0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 243A4 800237A4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 243A8 800237A8 000CC080 */  sll        $t8, $t4, 2
/* 243AC 800237AC 030CC023 */  subu       $t8, $t8, $t4
/* 243B0 800237B0 0018C080 */  sll        $t8, $t8, 2
/* 243B4 800237B4 030CC023 */  subu       $t8, $t8, $t4
/* 243B8 800237B8 0018C080 */  sll        $t8, $t8, 2
/* 243BC 800237BC 030CC021 */  addu       $t8, $t8, $t4
/* 243C0 800237C0 0018C080 */  sll        $t8, $t8, 2
/* 243C4 800237C4 030CC023 */  subu       $t8, $t8, $t4
/* 243C8 800237C8 0018C080 */  sll        $t8, $t8, 2
/* 243CC 800237CC 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* 243D0 800237D0 01B8C821 */  addu       $t9, $t5, $t8
/* 243D4 800237D4 8F2E00A4 */  lw         $t6, 0xa4($t9)
/* 243D8 800237D8 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* 243DC 800237DC 016E082A */  slt        $at, $t3, $t6
/* 243E0 800237E0 14200C31 */  bnez       $at, .L800268A8
/* 243E4 800237E4 00000000 */   nop
/* 243E8 800237E8 24080019 */  addiu      $t0, $zero, 0x19
/* 243EC 800237EC 240F001E */  addiu      $t7, $zero, 0x1e
/* 243F0 800237F0 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 243F4 800237F4 10000C2C */  b          .L800268A8
/* 243F8 800237F8 AFAF00EC */   sw        $t7, 0xec($sp)
/* 243FC 800237FC 8FA900E0 */  lw         $t1, 0xe0($sp)
/* 24400 80023800 3C01800D */  lui        $at, 0x800d
/* 24404 80023804 C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* 24408 80023808 00095100 */  sll        $t2, $t1, 4
/* 2440C 8002380C 01495023 */  subu       $t2, $t2, $t1
/* 24410 80023810 000A5080 */  sll        $t2, $t2, 2
/* 24414 80023814 002A0821 */  addu       $at, $at, $t2
/* 24418 80023818 C43072D8 */  lwc1       $f16, 0x72d8($at)
/* 2441C 8002381C 4610503C */  c.lt.s     $f10, $f16
/* 24420 80023820 00000000 */  nop
/* 24424 80023824 45000009 */  bc1f       .L8002384C
/* 24428 80023828 00000000 */   nop
/* 2442C 8002382C 8FAC00AC */  lw         $t4, 0xac($sp)
/* 24430 80023830 15800006 */  bnez       $t4, .L8002384C
/* 24434 80023834 00000000 */   nop
/* 24438 80023838 240D0025 */  addiu      $t5, $zero, 0x25
/* 2443C 8002383C 2418003C */  addiu      $t8, $zero, 0x3c
/* 24440 80023840 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 24444 80023844 10000C18 */  b          .L800268A8
/* 24448 80023848 AFB800EC */   sw        $t8, 0xec($sp)
.L8002384C:
/* 2444C 8002384C 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 24450 80023850 3C01800D */  lui        $at, 0x800d
/* 24454 80023854 C7A400DC */  lwc1       $f4, 0xdc($sp)
/* 24458 80023858 00197100 */  sll        $t6, $t9, 4
/* 2445C 8002385C 01D97023 */  subu       $t6, $t6, $t9
/* 24460 80023860 000E7080 */  sll        $t6, $t6, 2
/* 24464 80023864 002E0821 */  addu       $at, $at, $t6
/* 24468 80023868 C43272E0 */  lwc1       $f18, 0x72e0($at)
/* 2446C 8002386C 4604903C */  c.lt.s     $f18, $f4
/* 24470 80023870 00000000 */  nop
/* 24474 80023874 45000C0C */  bc1f       .L800268A8
/* 24478 80023878 00000000 */   nop
/* 2447C 8002387C 240B0019 */  addiu      $t3, $zero, 0x19
/* 24480 80023880 2408001E */  addiu      $t0, $zero, 0x1e
/* 24484 80023884 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 24488 80023888 10000C07 */  b          .L800268A8
/* 2448C 8002388C AFA800EC */   sw        $t0, 0xec($sp)
/* 24490 80023890 C7A600DC */  lwc1       $f6, 0xdc($sp)
/* 24494 80023894 3C01800E */  lui        $at, %hi(D_800DC780)
/* 24498 80023898 D42AC780 */  ldc1       $f10, %lo(D_800DC780)($at)
/* 2449C 8002389C 46003221 */  cvt.d.s    $f8, $f6
/* 244A0 800238A0 462A403C */  c.lt.d     $f8, $f10
/* 244A4 800238A4 00000000 */  nop
/* 244A8 800238A8 45010012 */  bc1t       .L800238F4
/* 244AC 800238AC 00000000 */   nop
/* 244B0 800238B0 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 244B4 800238B4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 244B8 800238B8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 244BC 800238BC 00095080 */  sll        $t2, $t1, 2
/* 244C0 800238C0 01495023 */  subu       $t2, $t2, $t1
/* 244C4 800238C4 000A5080 */  sll        $t2, $t2, 2
/* 244C8 800238C8 01495023 */  subu       $t2, $t2, $t1
/* 244CC 800238CC 000A5080 */  sll        $t2, $t2, 2
/* 244D0 800238D0 01495021 */  addu       $t2, $t2, $t1
/* 244D4 800238D4 000A5080 */  sll        $t2, $t2, 2
/* 244D8 800238D8 01495023 */  subu       $t2, $t2, $t1
/* 244DC 800238DC 000A5080 */  sll        $t2, $t2, 2
/* 244E0 800238E0 01EA6021 */  addu       $t4, $t7, $t2
/* 244E4 800238E4 8D8D0088 */  lw         $t5, 0x88($t4)
/* 244E8 800238E8 24010003 */  addiu      $at, $zero, 3
/* 244EC 800238EC 11A10BEE */  beq        $t5, $at, .L800268A8
/* 244F0 800238F0 00000000 */   nop
.L800238F4:
/* 244F4 800238F4 2418001D */  addiu      $t8, $zero, 0x1d
/* 244F8 800238F8 10000BEB */  b          .L800268A8
/* 244FC 800238FC AFB800F4 */   sw        $t8, 0xf4($sp)
/* 24500 80023900 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 24504 80023904 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 24508 80023908 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 2450C 8002390C 000E5880 */  sll        $t3, $t6, 2
/* 24510 80023910 016E5823 */  subu       $t3, $t3, $t6
/* 24514 80023914 000B5880 */  sll        $t3, $t3, 2
/* 24518 80023918 016E5823 */  subu       $t3, $t3, $t6
/* 2451C 8002391C 000B5880 */  sll        $t3, $t3, 2
/* 24520 80023920 016E5821 */  addu       $t3, $t3, $t6
/* 24524 80023924 000B5880 */  sll        $t3, $t3, 2
/* 24528 80023928 016E5823 */  subu       $t3, $t3, $t6
/* 2452C 8002392C 000B5880 */  sll        $t3, $t3, 2
/* 24530 80023930 032B4021 */  addu       $t0, $t9, $t3
/* 24534 80023934 8D090014 */  lw         $t1, 0x14($t0)
/* 24538 80023938 2401FFFF */  addiu      $at, $zero, -1
/* 2453C 8002393C 15210BDA */  bne        $t1, $at, .L800268A8
/* 24540 80023940 00000000 */   nop
/* 24544 80023944 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* 24548 80023948 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* 2454C 8002394C 240F001E */  addiu      $t7, $zero, 0x1e
/* 24550 80023950 240A0019 */  addiu      $t2, $zero, 0x19
/* 24554 80023954 AFAF00EC */  sw         $t7, 0xec($sp)
/* 24558 80023958 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 2455C 8002395C 10000BD2 */  b          .L800268A8
/* 24560 80023960 AD0C00A4 */   sw        $t4, 0xa4($t0)
/* 24564 80023964 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 24568 80023968 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2456C 8002396C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 24570 80023970 00187080 */  sll        $t6, $t8, 2
/* 24574 80023974 01D87023 */  subu       $t6, $t6, $t8
/* 24578 80023978 000E7080 */  sll        $t6, $t6, 2
/* 2457C 8002397C 01D87023 */  subu       $t6, $t6, $t8
/* 24580 80023980 000E7080 */  sll        $t6, $t6, 2
/* 24584 80023984 01D87021 */  addu       $t6, $t6, $t8
/* 24588 80023988 000E7080 */  sll        $t6, $t6, 2
/* 2458C 8002398C 01D87023 */  subu       $t6, $t6, $t8
/* 24590 80023990 000E7080 */  sll        $t6, $t6, 2
/* 24594 80023994 01AEC821 */  addu       $t9, $t5, $t6
/* 24598 80023998 8F2B0060 */  lw         $t3, 0x60($t9)
/* 2459C 8002399C 24010040 */  addiu      $at, $zero, 0x40
/* 245A0 800239A0 15610006 */  bne        $t3, $at, .L800239BC
/* 245A4 800239A4 AFAB009C */   sw        $t3, 0x9c($sp)
/* 245A8 800239A8 2409000D */  addiu      $t1, $zero, 0xd
/* 245AC 800239AC 240F001E */  addiu      $t7, $zero, 0x1e
/* 245B0 800239B0 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 245B4 800239B4 10000009 */  b          .L800239DC
/* 245B8 800239B8 AFAF00EC */   sw        $t7, 0xec($sp)
.L800239BC:
/* 245BC 800239BC 8FAA009C */  lw         $t2, 0x9c($sp)
/* 245C0 800239C0 24010200 */  addiu      $at, $zero, 0x200
/* 245C4 800239C4 15410005 */  bne        $t2, $at, .L800239DC
/* 245C8 800239C8 00000000 */   nop
/* 245CC 800239CC 240C001F */  addiu      $t4, $zero, 0x1f
/* 245D0 800239D0 2408003C */  addiu      $t0, $zero, 0x3c
/* 245D4 800239D4 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 245D8 800239D8 AFA800EC */  sw         $t0, 0xec($sp)
.L800239DC:
/* 245DC 800239DC 8FB800F4 */  lw         $t8, 0xf4($sp)
/* 245E0 800239E0 270DFFF3 */  addiu      $t5, $t8, -0xd
/* 245E4 800239E4 2DA10018 */  sltiu      $at, $t5, 0x18
/* 245E8 800239E8 10200007 */  beqz       $at, .L80023A08
/* 245EC 800239EC 00000000 */   nop
/* 245F0 800239F0 000D6880 */  sll        $t5, $t5, 2
/* 245F4 800239F4 3C01800E */  lui        $at, %hi(D_800DC788)
/* 245F8 800239F8 002D0821 */  addu       $at, $at, $t5
/* 245FC 800239FC 8C2DC788 */  lw         $t5, %lo(D_800DC788)($at)
/* 24600 80023A00 01A00008 */  jr         $t5
/* 24604 80023A04 00000000 */   nop
.L80023A08:
/* 24608 80023A08 240E0019 */  addiu      $t6, $zero, 0x19
/* 2460C 80023A0C 2419001E */  addiu      $t9, $zero, 0x1e
/* 24610 80023A10 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 24614 80023A14 10000BA4 */  b          .L800268A8
/* 24618 80023A18 AFB900EC */   sw        $t9, 0xec($sp)
/* 2461C 80023A1C 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 24620 80023A20 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 24624 80023A24 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 24628 80023A28 00097880 */  sll        $t7, $t1, 2
/* 2462C 80023A2C 01E97823 */  subu       $t7, $t7, $t1
/* 24630 80023A30 000F7880 */  sll        $t7, $t7, 2
/* 24634 80023A34 01E97823 */  subu       $t7, $t7, $t1
/* 24638 80023A38 000F7880 */  sll        $t7, $t7, 2
/* 2463C 80023A3C 01E97821 */  addu       $t7, $t7, $t1
/* 24640 80023A40 000F7880 */  sll        $t7, $t7, 2
/* 24644 80023A44 01E97823 */  subu       $t7, $t7, $t1
/* 24648 80023A48 000F7880 */  sll        $t7, $t7, 2
/* 2464C 80023A4C 016F5021 */  addu       $t2, $t3, $t7
/* 24650 80023A50 8D4C0278 */  lw         $t4, 0x278($t2)
/* 24654 80023A54 240100BC */  addiu      $at, $zero, 0xbc
/* 24658 80023A58 15810025 */  bne        $t4, $at, .L80023AF0
/* 2465C 80023A5C 00000000 */   nop
/* 24660 80023A60 2408003C */  addiu      $t0, $zero, 0x3c
/* 24664 80023A64 A1480055 */  sb         $t0, 0x55($t2)
/* 24668 80023A68 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 2466C 80023A6C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 24670 80023A70 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 24674 80023A74 000EC880 */  sll        $t9, $t6, 2
/* 24678 80023A78 032EC823 */  subu       $t9, $t9, $t6
/* 2467C 80023A7C 0019C880 */  sll        $t9, $t9, 2
/* 24680 80023A80 032EC823 */  subu       $t9, $t9, $t6
/* 24684 80023A84 0019C880 */  sll        $t9, $t9, 2
/* 24688 80023A88 032EC821 */  addu       $t9, $t9, $t6
/* 2468C 80023A8C 0019C880 */  sll        $t9, $t9, 2
/* 24690 80023A90 032EC823 */  subu       $t9, $t9, $t6
/* 24694 80023A94 0019C880 */  sll        $t9, $t9, 2
/* 24698 80023A98 3C180400 */  lui        $t8, 0x400
/* 2469C 80023A9C 01B94821 */  addu       $t1, $t5, $t9
/* 246A0 80023AA0 AD38028C */  sw         $t8, 0x28c($t1)
/* 246A4 80023AA4 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 246A8 80023AA8 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 246AC 80023AAC 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 246B0 80023AB0 000F6080 */  sll        $t4, $t7, 2
/* 246B4 80023AB4 018F6023 */  subu       $t4, $t4, $t7
/* 246B8 80023AB8 000C6080 */  sll        $t4, $t4, 2
/* 246BC 80023ABC 018F6023 */  subu       $t4, $t4, $t7
/* 246C0 80023AC0 000C6080 */  sll        $t4, $t4, 2
/* 246C4 80023AC4 018F6021 */  addu       $t4, $t4, $t7
/* 246C8 80023AC8 000C6080 */  sll        $t4, $t4, 2
/* 246CC 80023ACC 018F6023 */  subu       $t4, $t4, $t7
/* 246D0 80023AD0 000C6080 */  sll        $t4, $t4, 2
/* 246D4 80023AD4 016C4021 */  addu       $t0, $t3, $t4
/* 246D8 80023AD8 AD000288 */  sw         $zero, 0x288($t0)
/* 246DC 80023ADC 240A000D */  addiu      $t2, $zero, 0xd
/* 246E0 80023AE0 240E001E */  addiu      $t6, $zero, 0x1e
/* 246E4 80023AE4 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 246E8 80023AE8 10000B6F */  b          .L800268A8
/* 246EC 80023AEC AFAE00EC */   sw        $t6, 0xec($sp)
.L80023AF0:
/* 246F0 80023AF0 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 246F4 80023AF4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 246F8 80023AF8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 246FC 80023AFC 0019C080 */  sll        $t8, $t9, 2
/* 24700 80023B00 0319C023 */  subu       $t8, $t8, $t9
/* 24704 80023B04 0018C080 */  sll        $t8, $t8, 2
/* 24708 80023B08 0319C023 */  subu       $t8, $t8, $t9
/* 2470C 80023B0C 0018C080 */  sll        $t8, $t8, 2
/* 24710 80023B10 0319C021 */  addu       $t8, $t8, $t9
/* 24714 80023B14 0018C080 */  sll        $t8, $t8, 2
/* 24718 80023B18 0319C023 */  subu       $t8, $t8, $t9
/* 2471C 80023B1C 0018C080 */  sll        $t8, $t8, 2
/* 24720 80023B20 01B84821 */  addu       $t1, $t5, $t8
/* 24724 80023B24 8D2F0014 */  lw         $t7, 0x14($t1)
/* 24728 80023B28 2401FFFF */  addiu      $at, $zero, -1
/* 2472C 80023B2C 15E10B5E */  bne        $t7, $at, .L800268A8
/* 24730 80023B30 00000000 */   nop
/* 24734 80023B34 240B001F */  addiu      $t3, $zero, 0x1f
/* 24738 80023B38 240C001E */  addiu      $t4, $zero, 0x1e
/* 2473C 80023B3C AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 24740 80023B40 10000B59 */  b          .L800268A8
/* 24744 80023B44 AFAC00EC */   sw        $t4, 0xec($sp)
/* 24748 80023B48 24080022 */  addiu      $t0, $zero, 0x22
/* 2474C 80023B4C 240A001E */  addiu      $t2, $zero, 0x1e
/* 24750 80023B50 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 24754 80023B54 10000B54 */  b          .L800268A8
/* 24758 80023B58 AFAA00EC */   sw        $t2, 0xec($sp)
/* 2475C 80023B5C 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 24760 80023B60 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 24764 80023B64 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 24768 80023B68 00184880 */  sll        $t1, $t8, 2
/* 2476C 80023B6C 01384823 */  subu       $t1, $t1, $t8
/* 24770 80023B70 00094880 */  sll        $t1, $t1, 2
/* 24774 80023B74 01384823 */  subu       $t1, $t1, $t8
/* 24778 80023B78 00094880 */  sll        $t1, $t1, 2
/* 2477C 80023B7C 01384821 */  addu       $t1, $t1, $t8
/* 24780 80023B80 00094880 */  sll        $t1, $t1, 2
/* 24784 80023B84 01384823 */  subu       $t1, $t1, $t8
/* 24788 80023B88 240E0019 */  addiu      $t6, $zero, 0x19
/* 2478C 80023B8C 00094880 */  sll        $t1, $t1, 2
/* 24790 80023B90 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 24794 80023B94 24190001 */  addiu      $t9, $zero, 1
/* 24798 80023B98 01A97821 */  addu       $t7, $t5, $t1
/* 2479C 80023B9C ADF900B0 */  sw         $t9, 0xb0($t7)
/* 247A0 80023BA0 240B001E */  addiu      $t3, $zero, 0x1e
/* 247A4 80023BA4 10000B40 */  b          .L800268A8
/* 247A8 80023BA8 AFAB00EC */   sw        $t3, 0xec($sp)
/* 247AC 80023BAC 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 247B0 80023BB0 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 247B4 80023BB4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 247B8 80023BB8 00085080 */  sll        $t2, $t0, 2
/* 247BC 80023BBC 01485023 */  subu       $t2, $t2, $t0
/* 247C0 80023BC0 000A5080 */  sll        $t2, $t2, 2
/* 247C4 80023BC4 01485023 */  subu       $t2, $t2, $t0
/* 247C8 80023BC8 000A5080 */  sll        $t2, $t2, 2
/* 247CC 80023BCC 01485021 */  addu       $t2, $t2, $t0
/* 247D0 80023BD0 000A5080 */  sll        $t2, $t2, 2
/* 247D4 80023BD4 01485023 */  subu       $t2, $t2, $t0
/* 247D8 80023BD8 000A5080 */  sll        $t2, $t2, 2
/* 247DC 80023BDC 018A7021 */  addu       $t6, $t4, $t2
/* 247E0 80023BE0 8DD80088 */  lw         $t8, 0x88($t6)
/* 247E4 80023BE4 24010003 */  addiu      $at, $zero, 3
/* 247E8 80023BE8 13010009 */  beq        $t8, $at, .L80023C10
/* 247EC 80023BEC 00000000 */   nop
/* 247F0 80023BF0 8FAD00F4 */  lw         $t5, 0xf4($sp)
/* 247F4 80023BF4 3C01800D */  lui        $at, 0x800d
/* 247F8 80023BF8 24090013 */  addiu      $t1, $zero, 0x13
/* 247FC 80023BFC 2419001E */  addiu      $t9, $zero, 0x1e
/* 24800 80023C00 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 24804 80023C04 AFB900EC */  sw         $t9, 0xec($sp)
/* 24808 80023C08 10000B27 */  b          .L800268A8
/* 2480C 80023C0C AC2D72D0 */   sw        $t5, 0x72d0($at)
.L80023C10:
/* 24810 80023C10 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* 24814 80023C14 3C01800D */  lui        $at, 0x800d
/* 24818 80023C18 C7B000DC */  lwc1       $f16, 0xdc($sp)
/* 2481C 80023C1C 000F5900 */  sll        $t3, $t7, 4
/* 24820 80023C20 016F5823 */  subu       $t3, $t3, $t7
/* 24824 80023C24 000B5880 */  sll        $t3, $t3, 2
/* 24828 80023C28 002B0821 */  addu       $at, $at, $t3
/* 2482C 80023C2C C42472DC */  lwc1       $f4, 0x72dc($at)
/* 24830 80023C30 4604803C */  c.lt.s     $f16, $f4
/* 24834 80023C34 00000000 */  nop
/* 24838 80023C38 45000016 */  bc1f       .L80023C94
/* 2483C 80023C3C 00000000 */   nop
/* 24840 80023C40 3C08800D */  lui        $t0, %hi(D_800D72D0)
/* 24844 80023C44 8D0872D0 */  lw         $t0, %lo(D_800D72D0)($t0)
/* 24848 80023C48 24010019 */  addiu      $at, $zero, 0x19
/* 2484C 80023C4C 15010009 */  bne        $t0, $at, .L80023C74
/* 24850 80023C50 00000000 */   nop
/* 24854 80023C54 240C0024 */  addiu      $t4, $zero, 0x24
/* 24858 80023C58 3C01800D */  lui        $at, %hi(D_800D72D0)
/* 2485C 80023C5C 240A0024 */  addiu      $t2, $zero, 0x24
/* 24860 80023C60 240E003C */  addiu      $t6, $zero, 0x3c
/* 24864 80023C64 AC2C72D0 */  sw         $t4, %lo(D_800D72D0)($at)
/* 24868 80023C68 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 2486C 80023C6C 10000B0E */  b          .L800268A8
/* 24870 80023C70 AFAE00EC */   sw        $t6, 0xec($sp)
.L80023C74:
/* 24874 80023C74 2418001F */  addiu      $t8, $zero, 0x1f
/* 24878 80023C78 3C01800D */  lui        $at, %hi(D_800D72D0)
/* 2487C 80023C7C 240D001F */  addiu      $t5, $zero, 0x1f
/* 24880 80023C80 2409003C */  addiu      $t1, $zero, 0x3c
/* 24884 80023C84 AC3872D0 */  sw         $t8, %lo(D_800D72D0)($at)
/* 24888 80023C88 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 2488C 80023C8C 10000B06 */  b          .L800268A8
/* 24890 80023C90 AFA900EC */   sw        $t1, 0xec($sp)
.L80023C94:
/* 24894 80023C94 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 24898 80023C98 3C0B800D */  lui        $t3, %hi(D_800D72D4)
/* 2489C 80023C9C 256B72D4 */  addiu      $t3, $t3, %lo(D_800D72D4)
/* 248A0 80023CA0 00197900 */  sll        $t7, $t9, 4
/* 248A4 80023CA4 01F97823 */  subu       $t7, $t7, $t9
/* 248A8 80023CA8 000F7880 */  sll        $t7, $t7, 2
/* 248AC 80023CAC 01EB4021 */  addu       $t0, $t7, $t3
/* 248B0 80023CB0 C5060020 */  lwc1       $f6, 0x20($t0)
/* 248B4 80023CB4 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 248B8 80023CB8 4612303C */  c.lt.s     $f6, $f18
/* 248BC 80023CBC 00000000 */  nop
/* 248C0 80023CC0 45000AF9 */  bc1f       .L800268A8
/* 248C4 80023CC4 00000000 */   nop
/* 248C8 80023CC8 C5080024 */  lwc1       $f8, 0x24($t0)
/* 248CC 80023CCC 4608903C */  c.lt.s     $f18, $f8
/* 248D0 80023CD0 00000000 */  nop
/* 248D4 80023CD4 45000AF4 */  bc1f       .L800268A8
/* 248D8 80023CD8 00000000 */   nop
/* 248DC 80023CDC 8FAC00F4 */  lw         $t4, 0xf4($sp)
/* 248E0 80023CE0 3C01800D */  lui        $at, 0x800d
/* 248E4 80023CE4 240A000D */  addiu      $t2, $zero, 0xd
/* 248E8 80023CE8 240E001E */  addiu      $t6, $zero, 0x1e
/* 248EC 80023CEC AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 248F0 80023CF0 AFAE00EC */  sw         $t6, 0xec($sp)
/* 248F4 80023CF4 10000AEC */  b          .L800268A8
/* 248F8 80023CF8 AC2C72D0 */   sw        $t4, 0x72d0($at)
/* 248FC 80023CFC 8FB800E0 */  lw         $t8, 0xe0($sp)
/* 24900 80023D00 3C01800D */  lui        $at, 0x800d
/* 24904 80023D04 C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* 24908 80023D08 00186900 */  sll        $t5, $t8, 4
/* 2490C 80023D0C 01B86823 */  subu       $t5, $t5, $t8
/* 24910 80023D10 000D6880 */  sll        $t5, $t5, 2
/* 24914 80023D14 002D0821 */  addu       $at, $at, $t5
/* 24918 80023D18 C43072E0 */  lwc1       $f16, 0x72e0($at)
/* 2491C 80023D1C 460A803C */  c.lt.s     $f16, $f10
/* 24920 80023D20 00000000 */  nop
/* 24924 80023D24 45000AE0 */  bc1f       .L800268A8
/* 24928 80023D28 00000000 */   nop
/* 2492C 80023D2C 24090019 */  addiu      $t1, $zero, 0x19
/* 24930 80023D30 3C01800D */  lui        $at, %hi(D_800D72D0)
/* 24934 80023D34 24190019 */  addiu      $t9, $zero, 0x19
/* 24938 80023D38 240F001E */  addiu      $t7, $zero, 0x1e
/* 2493C 80023D3C AC2972D0 */  sw         $t1, %lo(D_800D72D0)($at)
/* 24940 80023D40 AFB900F4 */  sw         $t9, 0xf4($sp)
/* 24944 80023D44 10000AD8 */  b          .L800268A8
/* 24948 80023D48 AFAF00EC */   sw        $t7, 0xec($sp)
/* 2494C 80023D4C 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 24950 80023D50 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 24954 80023D54 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 24958 80023D58 00086080 */  sll        $t4, $t0, 2
/* 2495C 80023D5C 01886023 */  subu       $t4, $t4, $t0
/* 24960 80023D60 000C6080 */  sll        $t4, $t4, 2
/* 24964 80023D64 01886023 */  subu       $t4, $t4, $t0
/* 24968 80023D68 000C6080 */  sll        $t4, $t4, 2
/* 2496C 80023D6C 01886021 */  addu       $t4, $t4, $t0
/* 24970 80023D70 000C6080 */  sll        $t4, $t4, 2
/* 24974 80023D74 01886023 */  subu       $t4, $t4, $t0
/* 24978 80023D78 000C6080 */  sll        $t4, $t4, 2
/* 2497C 80023D7C 016C5021 */  addu       $t2, $t3, $t4
/* 24980 80023D80 8D4E0088 */  lw         $t6, 0x88($t2)
/* 24984 80023D84 24010003 */  addiu      $at, $zero, 3
/* 24988 80023D88 15C10AC7 */  bne        $t6, $at, .L800268A8
/* 2498C 80023D8C 00000000 */   nop
/* 24990 80023D90 24180019 */  addiu      $t8, $zero, 0x19
/* 24994 80023D94 240D001E */  addiu      $t5, $zero, 0x1e
/* 24998 80023D98 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 2499C 80023D9C 10000AC2 */  b          .L800268A8
/* 249A0 80023DA0 AFAD00EC */   sw        $t5, 0xec($sp)
/* 249A4 80023DA4 0C007F1B */  jal        func_8001FC6C
/* 249A8 80023DA8 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 249AC 80023DAC 1040000A */  beqz       $v0, .L80023DD8
/* 249B0 80023DB0 00000000 */   nop
/* 249B4 80023DB4 8FA900F4 */  lw         $t1, 0xf4($sp)
/* 249B8 80023DB8 2401001A */  addiu      $at, $zero, 0x1a
/* 249BC 80023DBC 11210006 */  beq        $t1, $at, .L80023DD8
/* 249C0 80023DC0 00000000 */   nop
/* 249C4 80023DC4 2419001A */  addiu      $t9, $zero, 0x1a
/* 249C8 80023DC8 240F0078 */  addiu      $t7, $zero, 0x78
/* 249CC 80023DCC AFB900F4 */  sw         $t9, 0xf4($sp)
/* 249D0 80023DD0 10000AB5 */  b          .L800268A8
/* 249D4 80023DD4 AFAF00EC */   sw        $t7, 0xec($sp)
.L80023DD8:
/* 249D8 80023DD8 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 249DC 80023DDC 24010019 */  addiu      $at, $zero, 0x19
/* 249E0 80023DE0 1201001F */  beq        $s0, $at, .L80023E60
/* 249E4 80023DE4 2401001A */   addiu     $at, $zero, 0x1a
/* 249E8 80023DE8 12010007 */  beq        $s0, $at, .L80023E08
/* 249EC 80023DEC 2401001F */   addiu     $at, $zero, 0x1f
/* 249F0 80023DF0 12010066 */  beq        $s0, $at, .L80023F8C
/* 249F4 80023DF4 24010025 */   addiu     $at, $zero, 0x25
/* 249F8 80023DF8 12010079 */  beq        $s0, $at, .L80023FE0
/* 249FC 80023DFC 00000000 */   nop
/* 24A00 80023E00 10000012 */  b          .L80023E4C
/* 24A04 80023E04 00000000 */   nop
.L80023E08:
/* 24A08 80023E08 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 24A0C 80023E0C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 24A10 80023E10 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 24A14 80023E14 000B6080 */  sll        $t4, $t3, 2
/* 24A18 80023E18 018B6023 */  subu       $t4, $t4, $t3
/* 24A1C 80023E1C 000C6080 */  sll        $t4, $t4, 2
/* 24A20 80023E20 018B6023 */  subu       $t4, $t4, $t3
/* 24A24 80023E24 000C6080 */  sll        $t4, $t4, 2
/* 24A28 80023E28 018B6021 */  addu       $t4, $t4, $t3
/* 24A2C 80023E2C 000C6080 */  sll        $t4, $t4, 2
/* 24A30 80023E30 3C01C120 */  lui        $at, 0xc120
/* 24A34 80023E34 018B6023 */  subu       $t4, $t4, $t3
/* 24A38 80023E38 44812000 */  mtc1       $at, $f4
/* 24A3C 80023E3C 000C6080 */  sll        $t4, $t4, 2
/* 24A40 80023E40 010C5021 */  addu       $t2, $t0, $t4
/* 24A44 80023E44 10000A98 */  b          .L800268A8
/* 24A48 80023E48 E5440024 */   swc1      $f4, 0x24($t2)
.L80023E4C:
/* 24A4C 80023E4C 240E0019 */  addiu      $t6, $zero, 0x19
/* 24A50 80023E50 2418001E */  addiu      $t8, $zero, 0x1e
/* 24A54 80023E54 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 24A58 80023E58 10000A93 */  b          .L800268A8
/* 24A5C 80023E5C AFB800EC */   sw        $t8, 0xec($sp)
.L80023E60:
/* 24A60 80023E60 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 24A64 80023E64 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 24A68 80023E68 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 24A6C 80023E6C 0009C880 */  sll        $t9, $t1, 2
/* 24A70 80023E70 0329C823 */  subu       $t9, $t9, $t1
/* 24A74 80023E74 0019C880 */  sll        $t9, $t9, 2
/* 24A78 80023E78 0329C823 */  subu       $t9, $t9, $t1
/* 24A7C 80023E7C 0019C880 */  sll        $t9, $t9, 2
/* 24A80 80023E80 0329C821 */  addu       $t9, $t9, $t1
/* 24A84 80023E84 0019C880 */  sll        $t9, $t9, 2
/* 24A88 80023E88 0329C823 */  subu       $t9, $t9, $t1
/* 24A8C 80023E8C 0019C880 */  sll        $t9, $t9, 2
/* 24A90 80023E90 01B97821 */  addu       $t7, $t5, $t9
/* 24A94 80023E94 8DEB0088 */  lw         $t3, 0x88($t7)
/* 24A98 80023E98 24010003 */  addiu      $at, $zero, 3
/* 24A9C 80023E9C 1561002A */  bne        $t3, $at, .L80023F48
/* 24AA0 80023EA0 00000000 */   nop
/* 24AA4 80023EA4 8FA800E0 */  lw         $t0, 0xe0($sp)
/* 24AA8 80023EA8 3C01800D */  lui        $at, 0x800d
/* 24AAC 80023EAC C7A600DC */  lwc1       $f6, 0xdc($sp)
/* 24AB0 80023EB0 00086100 */  sll        $t4, $t0, 4
/* 24AB4 80023EB4 01886023 */  subu       $t4, $t4, $t0
/* 24AB8 80023EB8 000C6080 */  sll        $t4, $t4, 2
/* 24ABC 80023EBC 002C0821 */  addu       $at, $at, $t4
/* 24AC0 80023EC0 C43272F4 */  lwc1       $f18, 0x72f4($at)
/* 24AC4 80023EC4 4612303C */  c.lt.s     $f6, $f18
/* 24AC8 80023EC8 00000000 */  nop
/* 24ACC 80023ECC 4500000E */  bc1f       .L80023F08
/* 24AD0 80023ED0 00000000 */   nop
/* 24AD4 80023ED4 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 24AD8 80023ED8 24010025 */  addiu      $at, $zero, 0x25
/* 24ADC 80023EDC 1141000A */  beq        $t2, $at, .L80023F08
/* 24AE0 80023EE0 00000000 */   nop
/* 24AE4 80023EE4 8DEE0070 */  lw         $t6, 0x70($t7)
/* 24AE8 80023EE8 24010029 */  addiu      $at, $zero, 0x29
/* 24AEC 80023EEC 15C10006 */  bne        $t6, $at, .L80023F08
/* 24AF0 80023EF0 00000000 */   nop
/* 24AF4 80023EF4 24180025 */  addiu      $t8, $zero, 0x25
/* 24AF8 80023EF8 2409005A */  addiu      $t1, $zero, 0x5a
/* 24AFC 80023EFC AFB800F4 */  sw         $t8, 0xf4($sp)
/* 24B00 80023F00 10000A69 */  b          .L800268A8
/* 24B04 80023F04 AFA900EC */   sw        $t1, 0xec($sp)
.L80023F08:
/* 24B08 80023F08 8FAD00E0 */  lw         $t5, 0xe0($sp)
/* 24B0C 80023F0C 3C01800D */  lui        $at, 0x800d
/* 24B10 80023F10 C7A800DC */  lwc1       $f8, 0xdc($sp)
/* 24B14 80023F14 000DC900 */  sll        $t9, $t5, 4
/* 24B18 80023F18 032DC823 */  subu       $t9, $t9, $t5
/* 24B1C 80023F1C 0019C880 */  sll        $t9, $t9, 2
/* 24B20 80023F20 00390821 */  addu       $at, $at, $t9
/* 24B24 80023F24 C42A72DC */  lwc1       $f10, 0x72dc($at)
/* 24B28 80023F28 460A403C */  c.lt.s     $f8, $f10
/* 24B2C 80023F2C 00000000 */  nop
/* 24B30 80023F30 45000005 */  bc1f       .L80023F48
/* 24B34 80023F34 00000000 */   nop
/* 24B38 80023F38 240B001F */  addiu      $t3, $zero, 0x1f
/* 24B3C 80023F3C 2408003C */  addiu      $t0, $zero, 0x3c
/* 24B40 80023F40 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 24B44 80023F44 AFA800EC */  sw         $t0, 0xec($sp)
.L80023F48:
/* 24B48 80023F48 0C007EB7 */  jal        func_8001FADC
/* 24B4C 80023F4C 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 24B50 80023F50 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 24B54 80023F54 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 24B58 80023F58 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 24B5C 80023F5C 000A7880 */  sll        $t7, $t2, 2
/* 24B60 80023F60 01EA7823 */  subu       $t7, $t7, $t2
/* 24B64 80023F64 000F7880 */  sll        $t7, $t7, 2
/* 24B68 80023F68 01EA7823 */  subu       $t7, $t7, $t2
/* 24B6C 80023F6C 000F7880 */  sll        $t7, $t7, 2
/* 24B70 80023F70 01EA7821 */  addu       $t7, $t7, $t2
/* 24B74 80023F74 000F7880 */  sll        $t7, $t7, 2
/* 24B78 80023F78 01EA7823 */  subu       $t7, $t7, $t2
/* 24B7C 80023F7C 000F7880 */  sll        $t7, $t7, 2
/* 24B80 80023F80 018F7021 */  addu       $t6, $t4, $t7
/* 24B84 80023F84 10000A48 */  b          .L800268A8
/* 24B88 80023F88 ADC200A4 */   sw        $v0, 0xa4($t6)
.L80023F8C:
/* 24B8C 80023F8C 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 24B90 80023F90 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 24B94 80023F94 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 24B98 80023F98 000DC880 */  sll        $t9, $t5, 2
/* 24B9C 80023F9C 032DC823 */  subu       $t9, $t9, $t5
/* 24BA0 80023FA0 0019C880 */  sll        $t9, $t9, 2
/* 24BA4 80023FA4 032DC823 */  subu       $t9, $t9, $t5
/* 24BA8 80023FA8 0019C880 */  sll        $t9, $t9, 2
/* 24BAC 80023FAC 032DC821 */  addu       $t9, $t9, $t5
/* 24BB0 80023FB0 0019C880 */  sll        $t9, $t9, 2
/* 24BB4 80023FB4 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* 24BB8 80023FB8 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* 24BBC 80023FBC 032DC823 */  subu       $t9, $t9, $t5
/* 24BC0 80023FC0 0019C880 */  sll        $t9, $t9, 2
/* 24BC4 80023FC4 01395821 */  addu       $t3, $t1, $t9
/* 24BC8 80023FC8 24080019 */  addiu      $t0, $zero, 0x19
/* 24BCC 80023FCC 240A003C */  addiu      $t2, $zero, 0x3c
/* 24BD0 80023FD0 AD7800A4 */  sw         $t8, 0xa4($t3)
/* 24BD4 80023FD4 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 24BD8 80023FD8 10000A33 */  b          .L800268A8
/* 24BDC 80023FDC AFAA00EC */   sw        $t2, 0xec($sp)
.L80023FE0:
/* 24BE0 80023FE0 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 24BE4 80023FE4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 24BE8 80023FE8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 24BEC 80023FEC 000E6880 */  sll        $t5, $t6, 2
/* 24BF0 80023FF0 01AE6823 */  subu       $t5, $t5, $t6
/* 24BF4 80023FF4 000D6880 */  sll        $t5, $t5, 2
/* 24BF8 80023FF8 01AE6823 */  subu       $t5, $t5, $t6
/* 24BFC 80023FFC 000D6880 */  sll        $t5, $t5, 2
/* 24C00 80024000 01AE6821 */  addu       $t5, $t5, $t6
/* 24C04 80024004 000D6880 */  sll        $t5, $t5, 2
/* 24C08 80024008 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* 24C0C 8002400C 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* 24C10 80024010 01AE6823 */  subu       $t5, $t5, $t6
/* 24C14 80024014 000D6880 */  sll        $t5, $t5, 2
/* 24C18 80024018 01ED4821 */  addu       $t1, $t7, $t5
/* 24C1C 8002401C 24190019 */  addiu      $t9, $zero, 0x19
/* 24C20 80024020 2418003C */  addiu      $t8, $zero, 0x3c
/* 24C24 80024024 AD2C00A4 */  sw         $t4, 0xa4($t1)
/* 24C28 80024028 AFB900F4 */  sw         $t9, 0xf4($sp)
/* 24C2C 8002402C 10000A1E */  b          .L800268A8
/* 24C30 80024030 AFB800EC */   sw        $t8, 0xec($sp)
/* 24C34 80024034 0C007F1B */  jal        func_8001FC6C
/* 24C38 80024038 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 24C3C 8002403C 1040000A */  beqz       $v0, .L80024068
/* 24C40 80024040 00000000 */   nop
/* 24C44 80024044 8FAB00F4 */  lw         $t3, 0xf4($sp)
/* 24C48 80024048 2401001A */  addiu      $at, $zero, 0x1a
/* 24C4C 8002404C 11610006 */  beq        $t3, $at, .L80024068
/* 24C50 80024050 00000000 */   nop
/* 24C54 80024054 2408001A */  addiu      $t0, $zero, 0x1a
/* 24C58 80024058 240A0078 */  addiu      $t2, $zero, 0x78
/* 24C5C 8002405C AFA800F4 */  sw         $t0, 0xf4($sp)
/* 24C60 80024060 10000A11 */  b          .L800268A8
/* 24C64 80024064 AFAA00EC */   sw        $t2, 0xec($sp)
.L80024068:
/* 24C68 80024068 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 24C6C 8002406C 24010013 */  addiu      $at, $zero, 0x13
/* 24C70 80024070 1201001C */  beq        $s0, $at, .L800240E4
/* 24C74 80024074 2401001A */   addiu     $at, $zero, 0x1a
/* 24C78 80024078 12010007 */  beq        $s0, $at, .L80024098
/* 24C7C 8002407C 2401001F */   addiu     $at, $zero, 0x1f
/* 24C80 80024080 12010063 */  beq        $s0, $at, .L80024210
/* 24C84 80024084 24010025 */   addiu     $at, $zero, 0x25
/* 24C88 80024088 12010066 */  beq        $s0, $at, .L80024224
/* 24C8C 8002408C 00000000 */   nop
/* 24C90 80024090 10000012 */  b          .L800240DC
/* 24C94 80024094 00000000 */   nop
.L80024098:
/* 24C98 80024098 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 24C9C 8002409C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 24CA0 800240A0 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 24CA4 800240A4 000F6880 */  sll        $t5, $t7, 2
/* 24CA8 800240A8 01AF6823 */  subu       $t5, $t5, $t7
/* 24CAC 800240AC 000D6880 */  sll        $t5, $t5, 2
/* 24CB0 800240B0 01AF6823 */  subu       $t5, $t5, $t7
/* 24CB4 800240B4 000D6880 */  sll        $t5, $t5, 2
/* 24CB8 800240B8 01AF6821 */  addu       $t5, $t5, $t7
/* 24CBC 800240BC 000D6880 */  sll        $t5, $t5, 2
/* 24CC0 800240C0 3C01C120 */  lui        $at, 0xc120
/* 24CC4 800240C4 01AF6823 */  subu       $t5, $t5, $t7
/* 24CC8 800240C8 44818000 */  mtc1       $at, $f16
/* 24CCC 800240CC 000D6880 */  sll        $t5, $t5, 2
/* 24CD0 800240D0 01CD6021 */  addu       $t4, $t6, $t5
/* 24CD4 800240D4 100009F4 */  b          .L800268A8
/* 24CD8 800240D8 E5900024 */   swc1      $f16, 0x24($t4)
.L800240DC:
/* 24CDC 800240DC 24090013 */  addiu      $t1, $zero, 0x13
/* 24CE0 800240E0 AFA900F4 */  sw         $t1, 0xf4($sp)
.L800240E4:
/* 24CE4 800240E4 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 24CE8 800240E8 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 24CEC 800240EC 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 24CF0 800240F0 00185880 */  sll        $t3, $t8, 2
/* 24CF4 800240F4 01785823 */  subu       $t3, $t3, $t8
/* 24CF8 800240F8 000B5880 */  sll        $t3, $t3, 2
/* 24CFC 800240FC 01785823 */  subu       $t3, $t3, $t8
/* 24D00 80024100 000B5880 */  sll        $t3, $t3, 2
/* 24D04 80024104 01785821 */  addu       $t3, $t3, $t8
/* 24D08 80024108 000B5880 */  sll        $t3, $t3, 2
/* 24D0C 8002410C 01785823 */  subu       $t3, $t3, $t8
/* 24D10 80024110 000B5880 */  sll        $t3, $t3, 2
/* 24D14 80024114 032B4021 */  addu       $t0, $t9, $t3
/* 24D18 80024118 8D0A0088 */  lw         $t2, 0x88($t0)
/* 24D1C 8002411C 24010003 */  addiu      $at, $zero, 3
/* 24D20 80024120 1541002A */  bne        $t2, $at, .L800241CC
/* 24D24 80024124 00000000 */   nop
/* 24D28 80024128 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* 24D2C 8002412C 3C01800D */  lui        $at, 0x800d
/* 24D30 80024130 C7A400DC */  lwc1       $f4, 0xdc($sp)
/* 24D34 80024134 000F7100 */  sll        $t6, $t7, 4
/* 24D38 80024138 01CF7023 */  subu       $t6, $t6, $t7
/* 24D3C 8002413C 000E7080 */  sll        $t6, $t6, 2
/* 24D40 80024140 002E0821 */  addu       $at, $at, $t6
/* 24D44 80024144 C42672F4 */  lwc1       $f6, 0x72f4($at)
/* 24D48 80024148 4606203C */  c.lt.s     $f4, $f6
/* 24D4C 8002414C 00000000 */  nop
/* 24D50 80024150 4500000E */  bc1f       .L8002418C
/* 24D54 80024154 00000000 */   nop
/* 24D58 80024158 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 24D5C 8002415C 24010025 */  addiu      $at, $zero, 0x25
/* 24D60 80024160 11A1000A */  beq        $t5, $at, .L8002418C
/* 24D64 80024164 00000000 */   nop
/* 24D68 80024168 8D0C0070 */  lw         $t4, 0x70($t0)
/* 24D6C 8002416C 24010029 */  addiu      $at, $zero, 0x29
/* 24D70 80024170 15810006 */  bne        $t4, $at, .L8002418C
/* 24D74 80024174 00000000 */   nop
/* 24D78 80024178 24090025 */  addiu      $t1, $zero, 0x25
/* 24D7C 8002417C 2418005A */  addiu      $t8, $zero, 0x5a
/* 24D80 80024180 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 24D84 80024184 100009C8 */  b          .L800268A8
/* 24D88 80024188 AFB800EC */   sw        $t8, 0xec($sp)
.L8002418C:
/* 24D8C 8002418C 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 24D90 80024190 3C01800D */  lui        $at, 0x800d
/* 24D94 80024194 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 24D98 80024198 00195900 */  sll        $t3, $t9, 4
/* 24D9C 8002419C 01795823 */  subu       $t3, $t3, $t9
/* 24DA0 800241A0 000B5880 */  sll        $t3, $t3, 2
/* 24DA4 800241A4 002B0821 */  addu       $at, $at, $t3
/* 24DA8 800241A8 C42872DC */  lwc1       $f8, 0x72dc($at)
/* 24DAC 800241AC 4608903C */  c.lt.s     $f18, $f8
/* 24DB0 800241B0 00000000 */  nop
/* 24DB4 800241B4 45000005 */  bc1f       .L800241CC
/* 24DB8 800241B8 00000000 */   nop
/* 24DBC 800241BC 240A001F */  addiu      $t2, $zero, 0x1f
/* 24DC0 800241C0 240F003C */  addiu      $t7, $zero, 0x3c
/* 24DC4 800241C4 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 24DC8 800241C8 AFAF00EC */  sw         $t7, 0xec($sp)
.L800241CC:
/* 24DCC 800241CC 0C007EB7 */  jal        func_8001FADC
/* 24DD0 800241D0 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 24DD4 800241D4 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* 24DD8 800241D8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 24DDC 800241DC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 24DE0 800241E0 000D4080 */  sll        $t0, $t5, 2
/* 24DE4 800241E4 010D4023 */  subu       $t0, $t0, $t5
/* 24DE8 800241E8 00084080 */  sll        $t0, $t0, 2
/* 24DEC 800241EC 010D4023 */  subu       $t0, $t0, $t5
/* 24DF0 800241F0 00084080 */  sll        $t0, $t0, 2
/* 24DF4 800241F4 010D4021 */  addu       $t0, $t0, $t5
/* 24DF8 800241F8 00084080 */  sll        $t0, $t0, 2
/* 24DFC 800241FC 010D4023 */  subu       $t0, $t0, $t5
/* 24E00 80024200 00084080 */  sll        $t0, $t0, 2
/* 24E04 80024204 01C86021 */  addu       $t4, $t6, $t0
/* 24E08 80024208 100009A7 */  b          .L800268A8
/* 24E0C 8002420C AD8200A4 */   sw        $v0, 0xa4($t4)
.L80024210:
/* 24E10 80024210 24090013 */  addiu      $t1, $zero, 0x13
/* 24E14 80024214 2418001E */  addiu      $t8, $zero, 0x1e
/* 24E18 80024218 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 24E1C 8002421C 100009A2 */  b          .L800268A8
/* 24E20 80024220 AFB800EC */   sw        $t8, 0xec($sp)
.L80024224:
/* 24E24 80024224 24190013 */  addiu      $t9, $zero, 0x13
/* 24E28 80024228 240B001E */  addiu      $t3, $zero, 0x1e
/* 24E2C 8002422C AFB900F4 */  sw         $t9, 0xf4($sp)
/* 24E30 80024230 1000099D */  b          .L800268A8
/* 24E34 80024234 AFAB00EC */   sw        $t3, 0xec($sp)
/* 24E38 80024238 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 24E3C 8002423C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 24E40 80024240 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 24E44 80024244 000F6880 */  sll        $t5, $t7, 2
/* 24E48 80024248 01AF6823 */  subu       $t5, $t5, $t7
/* 24E4C 8002424C 000D6880 */  sll        $t5, $t5, 2
/* 24E50 80024250 01AF6823 */  subu       $t5, $t5, $t7
/* 24E54 80024254 000D6880 */  sll        $t5, $t5, 2
/* 24E58 80024258 01AF6821 */  addu       $t5, $t5, $t7
/* 24E5C 8002425C 000D6880 */  sll        $t5, $t5, 2
/* 24E60 80024260 01AF6823 */  subu       $t5, $t5, $t7
/* 24E64 80024264 000D6880 */  sll        $t5, $t5, 2
/* 24E68 80024268 014D7021 */  addu       $t6, $t2, $t5
/* 24E6C 8002426C 8DC80060 */  lw         $t0, 0x60($t6)
/* 24E70 80024270 310C0200 */  andi       $t4, $t0, 0x200
/* 24E74 80024274 11800006 */  beqz       $t4, .L80024290
/* 24E78 80024278 00000000 */   nop
/* 24E7C 8002427C 2409001F */  addiu      $t1, $zero, 0x1f
/* 24E80 80024280 24180046 */  addiu      $t8, $zero, 0x46
/* 24E84 80024284 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 24E88 80024288 10000987 */  b          .L800268A8
/* 24E8C 8002428C AFB800EC */   sw        $t8, 0xec($sp)
.L80024290:
/* 24E90 80024290 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 24E94 80024294 2401001A */  addiu      $at, $zero, 0x1a
/* 24E98 80024298 12010009 */  beq        $s0, $at, .L800242C0
/* 24E9C 8002429C 2401001F */   addiu     $at, $zero, 0x1f
/* 24EA0 800242A0 12010037 */  beq        $s0, $at, .L80024380
/* 24EA4 800242A4 2401002F */   addiu     $at, $zero, 0x2f
/* 24EA8 800242A8 1201097F */  beq        $s0, $at, .L800268A8
/* 24EAC 800242AC 00000000 */   nop
/* 24EB0 800242B0 2419001A */  addiu      $t9, $zero, 0x1a
/* 24EB4 800242B4 240B001E */  addiu      $t3, $zero, 0x1e
/* 24EB8 800242B8 AFB900F4 */  sw         $t9, 0xf4($sp)
/* 24EBC 800242BC AFAB00EC */  sw         $t3, 0xec($sp)
.L800242C0:
/* 24EC0 800242C0 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 24EC4 800242C4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 24EC8 800242C8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 24ECC 800242CC 000A6880 */  sll        $t5, $t2, 2
/* 24ED0 800242D0 01AA6823 */  subu       $t5, $t5, $t2
/* 24ED4 800242D4 000D6880 */  sll        $t5, $t5, 2
/* 24ED8 800242D8 01AA6823 */  subu       $t5, $t5, $t2
/* 24EDC 800242DC 000D6880 */  sll        $t5, $t5, 2
/* 24EE0 800242E0 01AA6821 */  addu       $t5, $t5, $t2
/* 24EE4 800242E4 000D6880 */  sll        $t5, $t5, 2
/* 24EE8 800242E8 01AA6823 */  subu       $t5, $t5, $t2
/* 24EEC 800242EC 000D6880 */  sll        $t5, $t5, 2
/* 24EF0 800242F0 01ED7021 */  addu       $t6, $t7, $t5
/* 24EF4 800242F4 C5CA00AC */  lwc1       $f10, 0xac($t6)
/* 24EF8 800242F8 3C014069 */  lui        $at, 0x4069
/* 24EFC 800242FC 44812800 */  mtc1       $at, $f5
/* 24F00 80024300 44802000 */  mtc1       $zero, $f4
/* 24F04 80024304 46005421 */  cvt.d.s    $f16, $f10
/* 24F08 80024308 4624803C */  c.lt.d     $f16, $f4
/* 24F0C 8002430C 00000000 */  nop
/* 24F10 80024310 45000965 */  bc1f       .L800268A8
/* 24F14 80024314 00000000 */   nop
/* 24F18 80024318 C5C600EC */  lwc1       $f6, 0xec($t6)
/* 24F1C 8002431C C5F200EC */  lwc1       $f18, 0xec($t7)
/* 24F20 80024320 46123032 */  c.eq.s     $f6, $f18
/* 24F24 80024324 00000000 */  nop
/* 24F28 80024328 4500095F */  bc1f       .L800268A8
/* 24F2C 8002432C 00000000 */   nop
/* 24F30 80024330 3C088016 */  lui        $t0, %hi(D_8015EDA0)
/* 24F34 80024334 8D08EDA0 */  lw         $t0, %lo(D_8015EDA0)($t0)
/* 24F38 80024338 3C04801C */  lui        $a0, %hi(D_801C5D6C)
/* 24F3C 8002433C 24050001 */  addiu      $a1, $zero, 1
/* 24F40 80024340 00086080 */  sll        $t4, $t0, 2
/* 24F44 80024344 008C2021 */  addu       $a0, $a0, $t4
/* 24F48 80024348 8C845D6C */  lw         $a0, %lo(D_801C5D6C)($a0)
/* 24F4C 8002434C 24060080 */  addiu      $a2, $zero, 0x80
/* 24F50 80024350 24074000 */  addiu      $a3, $zero, 0x4000
/* 24F54 80024354 AFA00010 */  sw         $zero, 0x10($sp)
/* 24F58 80024358 0C0209BC */  jal        func_800826F0
/* 24F5C 8002435C AFA00014 */   sw        $zero, 0x14($sp)
/* 24F60 80024360 24090006 */  addiu      $t1, $zero, 6
/* 24F64 80024364 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 24F68 80024368 2418002F */  addiu      $t8, $zero, 0x2f
/* 24F6C 8002436C 2419012C */  addiu      $t9, $zero, 0x12c
/* 24F70 80024370 AC29EDA0 */  sw         $t1, %lo(D_8015EDA0)($at)
/* 24F74 80024374 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 24F78 80024378 1000094B */  b          .L800268A8
/* 24F7C 8002437C AFB900EC */   sw        $t9, 0xec($sp)
.L80024380:
/* 24F80 80024380 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 24F84 80024384 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 24F88 80024388 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 24F8C 8002438C 000A6880 */  sll        $t5, $t2, 2
/* 24F90 80024390 01AA6823 */  subu       $t5, $t5, $t2
/* 24F94 80024394 000D6880 */  sll        $t5, $t5, 2
/* 24F98 80024398 01AA6823 */  subu       $t5, $t5, $t2
/* 24F9C 8002439C 000D6880 */  sll        $t5, $t5, 2
/* 24FA0 800243A0 01AA6821 */  addu       $t5, $t5, $t2
/* 24FA4 800243A4 000D6880 */  sll        $t5, $t5, 2
/* 24FA8 800243A8 01AA6823 */  subu       $t5, $t5, $t2
/* 24FAC 800243AC 000D6880 */  sll        $t5, $t5, 2
/* 24FB0 800243B0 016D7021 */  addu       $t6, $t3, $t5
/* 24FB4 800243B4 C5C800EC */  lwc1       $f8, 0xec($t6)
/* 24FB8 800243B8 C56A00EC */  lwc1       $f10, 0xec($t3)
/* 24FBC 800243BC 460A4032 */  c.eq.s     $f8, $f10
/* 24FC0 800243C0 00000000 */  nop
/* 24FC4 800243C4 45000031 */  bc1f       .L8002448C
/* 24FC8 800243C8 00000000 */   nop
/* 24FCC 800243CC 3C0F8016 */  lui        $t7, %hi(D_8015EDA0)
/* 24FD0 800243D0 8DEFEDA0 */  lw         $t7, %lo(D_8015EDA0)($t7)
/* 24FD4 800243D4 3C04801C */  lui        $a0, %hi(D_801C5D6C)
/* 24FD8 800243D8 24050001 */  addiu      $a1, $zero, 1
/* 24FDC 800243DC 000F4080 */  sll        $t0, $t7, 2
/* 24FE0 800243E0 00882021 */  addu       $a0, $a0, $t0
/* 24FE4 800243E4 8C845D6C */  lw         $a0, %lo(D_801C5D6C)($a0)
/* 24FE8 800243E8 00003025 */  or         $a2, $zero, $zero
/* 24FEC 800243EC 24074000 */  addiu      $a3, $zero, 0x4000
/* 24FF0 800243F0 AFA00010 */  sw         $zero, 0x10($sp)
/* 24FF4 800243F4 0C0209BC */  jal        func_800826F0
/* 24FF8 800243F8 AFA00014 */   sw        $zero, 0x14($sp)
/* 24FFC 800243FC 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* 25000 80024400 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* 25004 80024404 8D890004 */  lw         $t1, 4($t4)
/* 25008 80024408 24010001 */  addiu      $at, $zero, 1
/* 2500C 8002440C 1121000E */  beq        $t1, $at, .L80024448
/* 25010 80024410 00000000 */   nop
/* 25014 80024414 3C188016 */  lui        $t8, %hi(D_8015EDA0)
/* 25018 80024418 8F18EDA0 */  lw         $t8, %lo(D_8015EDA0)($t8)
/* 2501C 8002441C 24010006 */  addiu      $at, $zero, 6
/* 25020 80024420 17010005 */  bne        $t8, $at, .L80024438
/* 25024 80024424 00000000 */   nop
/* 25028 80024428 24190005 */  addiu      $t9, $zero, 5
/* 2502C 8002442C 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 25030 80024430 10000011 */  b          .L80024478
/* 25034 80024434 AC39EDA0 */   sw        $t9, %lo(D_8015EDA0)($at)
.L80024438:
/* 25038 80024438 240A0006 */  addiu      $t2, $zero, 6
/* 2503C 8002443C 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 25040 80024440 1000000D */  b          .L80024478
/* 25044 80024444 AC2AEDA0 */   sw        $t2, %lo(D_8015EDA0)($at)
.L80024448:
/* 25048 80024448 3C0D8016 */  lui        $t5, %hi(D_8015EDA0)
/* 2504C 8002444C 8DADEDA0 */  lw         $t5, %lo(D_8015EDA0)($t5)
/* 25050 80024450 24010006 */  addiu      $at, $zero, 6
/* 25054 80024454 15A10005 */  bne        $t5, $at, .L8002446C
/* 25058 80024458 00000000 */   nop
/* 2505C 8002445C 240E000A */  addiu      $t6, $zero, 0xa
/* 25060 80024460 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 25064 80024464 10000004 */  b          .L80024478
/* 25068 80024468 AC2EEDA0 */   sw        $t6, %lo(D_8015EDA0)($at)
.L8002446C:
/* 2506C 8002446C 240B0006 */  addiu      $t3, $zero, 6
/* 25070 80024470 3C018016 */  lui        $at, %hi(D_8015EDA0)
/* 25074 80024474 AC2BEDA0 */  sw         $t3, %lo(D_8015EDA0)($at)
.L80024478:
/* 25078 80024478 240F002F */  addiu      $t7, $zero, 0x2f
/* 2507C 8002447C 24080096 */  addiu      $t0, $zero, 0x96
/* 25080 80024480 AFAF00F4 */  sw         $t7, 0xf4($sp)
/* 25084 80024484 10000908 */  b          .L800268A8
/* 25088 80024488 AFA800EC */   sw        $t0, 0xec($sp)
.L8002448C:
/* 2508C 8002448C 240C001A */  addiu      $t4, $zero, 0x1a
/* 25090 80024490 2409001E */  addiu      $t1, $zero, 0x1e
/* 25094 80024494 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 25098 80024498 10000903 */  b          .L800268A8
/* 2509C 8002449C AFA900EC */   sw        $t1, 0xec($sp)
/* 250A0 800244A0 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 250A4 800244A4 24010038 */  addiu      $at, $zero, 0x38
/* 250A8 800244A8 120108FF */  beq        $s0, $at, .L800268A8
/* 250AC 800244AC 24010039 */   addiu     $at, $zero, 0x39
/* 250B0 800244B0 12010003 */  beq        $s0, $at, .L800244C0
/* 250B4 800244B4 00000000 */   nop
/* 250B8 800244B8 24180039 */  addiu      $t8, $zero, 0x39
/* 250BC 800244BC AFB800F4 */  sw         $t8, 0xf4($sp)
.L800244C0:
/* 250C0 800244C0 24190014 */  addiu      $t9, $zero, 0x14
/* 250C4 800244C4 100008F8 */  b          .L800268A8
/* 250C8 800244C8 AFB900EC */   sw        $t9, 0xec($sp)
/* 250CC 800244CC 8FAA00F4 */  lw         $t2, 0xf4($sp)
/* 250D0 800244D0 254DFFED */  addiu      $t5, $t2, -0x13
/* 250D4 800244D4 2DA1001D */  sltiu      $at, $t5, 0x1d
/* 250D8 800244D8 10200007 */  beqz       $at, .L800244F8
/* 250DC 800244DC 00000000 */   nop
/* 250E0 800244E0 000D6880 */  sll        $t5, $t5, 2
/* 250E4 800244E4 3C01800E */  lui        $at, %hi(D_800DC7E8)
/* 250E8 800244E8 002D0821 */  addu       $at, $at, $t5
/* 250EC 800244EC 8C2DC7E8 */  lw         $t5, %lo(D_800DC7E8)($at)
/* 250F0 800244F0 01A00008 */  jr         $t5
/* 250F4 800244F4 00000000 */   nop
.L800244F8:
/* 250F8 800244F8 240E0013 */  addiu      $t6, $zero, 0x13
/* 250FC 800244FC 100008EA */  b          .L800268A8
/* 25100 80024500 AFAE00F4 */   sw        $t6, 0xf4($sp)
/* 25104 80024504 0C00848D */  jal        func_80021234
/* 25108 80024508 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 2510C 8002450C 3C0B800D */  lui        $t3, %hi(D_800D7F70)
/* 25110 80024510 8D6B7F70 */  lw         $t3, %lo(D_800D7F70)($t3)
/* 25114 80024514 156008E4 */  bnez       $t3, .L800268A8
/* 25118 80024518 00000000 */   nop
/* 2511C 8002451C 240F0078 */  addiu      $t7, $zero, 0x78
/* 25120 80024520 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 25124 80024524 24080021 */  addiu      $t0, $zero, 0x21
/* 25128 80024528 AC2FED80 */  sw         $t7, %lo(D_8015ED80)($at)
/* 2512C 8002452C 100008DE */  b          .L800268A8
/* 25130 80024530 AFA800F4 */   sw        $t0, 0xf4($sp)
/* 25134 80024534 3C0C8018 */  lui        $t4, %hi(D_8017A320)
/* 25138 80024538 858CA320 */  lh         $t4, %lo(D_8017A320)($t4)
/* 2513C 8002453C 158008DA */  bnez       $t4, .L800268A8
/* 25140 80024540 00000000 */   nop
/* 25144 80024544 3C09800E */  lui        $t1, %hi(D_800D9DCC)
/* 25148 80024548 8D299DCC */  lw         $t1, %lo(D_800D9DCC)($t1)
/* 2514C 8002454C 152008D6 */  bnez       $t1, .L800268A8
/* 25150 80024550 00000000 */   nop
/* 25154 80024554 3C188016 */  lui        $t8, %hi(D_8015ED80)
/* 25158 80024558 8F18ED80 */  lw         $t8, %lo(D_8015ED80)($t8)
/* 2515C 8002455C 130003A8 */  beqz       $t8, .L80025400
/* 25160 80024560 00000000 */   nop
/* 25164 80024564 0C00848D */  jal        func_80021234
/* 25168 80024568 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 2516C 8002456C 3C198016 */  lui        $t9, %hi(D_8015F464)
/* 25170 80024570 8F39F464 */  lw         $t9, %lo(D_8015F464)($t9)
/* 25174 80024574 24010005 */  addiu      $at, $zero, 5
/* 25178 80024578 13210009 */  beq        $t9, $at, .L800245A0
/* 2517C 8002457C 24010008 */   addiu     $at, $zero, 8
/* 25180 80024580 13210007 */  beq        $t9, $at, .L800245A0
/* 25184 80024584 00000000 */   nop
/* 25188 80024588 13200005 */  beqz       $t9, .L800245A0
/* 2518C 8002458C 24010004 */   addiu     $at, $zero, 4
/* 25190 80024590 13210003 */  beq        $t9, $at, .L800245A0
/* 25194 80024594 24010003 */   addiu     $at, $zero, 3
/* 25198 80024598 17210009 */  bne        $t9, $at, .L800245C0
/* 2519C 8002459C 00000000 */   nop
.L800245A0:
/* 251A0 800245A0 3C0A8016 */  lui        $t2, %hi(D_8015ED80)
/* 251A4 800245A4 8D4AED80 */  lw         $t2, %lo(D_8015ED80)($t2)
/* 251A8 800245A8 29410015 */  slti       $at, $t2, 0x15
/* 251AC 800245AC 14200004 */  bnez       $at, .L800245C0
/* 251B0 800245B0 00000000 */   nop
/* 251B4 800245B4 240D0014 */  addiu      $t5, $zero, 0x14
/* 251B8 800245B8 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 251BC 800245BC AC2DED80 */  sw         $t5, %lo(D_8015ED80)($at)
.L800245C0:
/* 251C0 800245C0 3C0E8016 */  lui        $t6, %hi(D_8015ED80)
/* 251C4 800245C4 8DCEED80 */  lw         $t6, %lo(D_8015ED80)($t6)
/* 251C8 800245C8 29C1000A */  slti       $at, $t6, 0xa
/* 251CC 800245CC 102008B6 */  beqz       $at, .L800268A8
/* 251D0 800245D0 00000000 */   nop
/* 251D4 800245D4 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* 251D8 800245D8 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* 251DC 800245DC 2D610009 */  sltiu      $at, $t3, 9
/* 251E0 800245E0 10200372 */  beqz       $at, .L800253AC
/* 251E4 800245E4 00000000 */   nop
/* 251E8 800245E8 000B5880 */  sll        $t3, $t3, 2
/* 251EC 800245EC 3C01800E */  lui        $at, %hi(D_800DC85C)
/* 251F0 800245F0 002B0821 */  addu       $at, $at, $t3
/* 251F4 800245F4 8C2BC85C */  lw         $t3, %lo(D_800DC85C)($at)
/* 251F8 800245F8 01600008 */  jr         $t3
/* 251FC 800245FC 00000000 */   nop
/* 25200 80024600 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 25204 80024604 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 25208 80024608 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2520C 8002460C 00086080 */  sll        $t4, $t0, 2
/* 25210 80024610 01886023 */  subu       $t4, $t4, $t0
/* 25214 80024614 000C6080 */  sll        $t4, $t4, 2
/* 25218 80024618 01886023 */  subu       $t4, $t4, $t0
/* 2521C 8002461C 000C6080 */  sll        $t4, $t4, 2
/* 25220 80024620 01886021 */  addu       $t4, $t4, $t0
/* 25224 80024624 000C6080 */  sll        $t4, $t4, 2
/* 25228 80024628 01886023 */  subu       $t4, $t4, $t0
/* 2522C 8002462C 000C6080 */  sll        $t4, $t4, 2
/* 25230 80024630 01EC4821 */  addu       $t1, $t7, $t4
/* 25234 80024634 8D38006C */  lw         $t8, 0x6c($t1)
/* 25238 80024638 2401000D */  addiu      $at, $zero, 0xd
/* 2523C 8002463C 17010410 */  bne        $t8, $at, .L80025680
/* 25240 80024640 00000000 */   nop
/* 25244 80024644 C53000EC */  lwc1       $f16, 0xec($t1)
/* 25248 80024648 C5E400EC */  lwc1       $f4, 0xec($t7)
/* 2524C 8002464C 46048032 */  c.eq.s     $f16, $f4
/* 25250 80024650 00000000 */  nop
/* 25254 80024654 4500040A */  bc1f       .L80025680
/* 25258 80024658 00000000 */   nop
/* 2525C 8002465C 3C198016 */  lui        $t9, %hi(D_8015F468)
/* 25260 80024660 8F39F468 */  lw         $t9, %lo(D_8015F468)($t9)
/* 25264 80024664 24010002 */  addiu      $at, $zero, 2
/* 25268 80024668 17210019 */  bne        $t9, $at, .L800246D0
/* 2526C 8002466C 00000000 */   nop
/* 25270 80024670 3C0D8016 */  lui        $t5, %hi(D_8015F464)
/* 25274 80024674 8DADF464 */  lw         $t5, %lo(D_8015F464)($t5)
/* 25278 80024678 00195880 */  sll        $t3, $t9, 2
/* 2527C 8002467C 01795823 */  subu       $t3, $t3, $t9
/* 25280 80024680 000D7100 */  sll        $t6, $t5, 4
/* 25284 80024684 01CD7023 */  subu       $t6, $t6, $t5
/* 25288 80024688 000E70C0 */  sll        $t6, $t6, 3
/* 2528C 8002468C 000B58C0 */  sll        $t3, $t3, 3
/* 25290 80024690 01CB4021 */  addu       $t0, $t6, $t3
/* 25294 80024694 3C018016 */  lui        $at, %hi(D_80160C8C)
/* 25298 80024698 00280821 */  addu       $at, $at, $t0
/* 2529C 8002469C 240A0001 */  addiu      $t2, $zero, 1
/* 252A0 800246A0 3C0C801C */  lui        $t4, %hi(D_801C5D40)
/* 252A4 800246A4 AC2A0C8C */  sw         $t2, %lo(D_80160C8C)($at)
/* 252A8 800246A8 258C5D40 */  addiu      $t4, $t4, %lo(D_801C5D40)
/* 252AC 800246AC 8D840198 */  lw         $a0, 0x198($t4)
/* 252B0 800246B0 AFA00014 */  sw         $zero, 0x14($sp)
/* 252B4 800246B4 AFA00010 */  sw         $zero, 0x10($sp)
/* 252B8 800246B8 24050001 */  addiu      $a1, $zero, 1
/* 252BC 800246BC 00003025 */  or         $a2, $zero, $zero
/* 252C0 800246C0 0C0209BC */  jal        func_800826F0
/* 252C4 800246C4 24074000 */   addiu     $a3, $zero, 0x4000
/* 252C8 800246C8 100003ED */  b          .L80025680
/* 252CC 800246CC 00000000 */   nop
.L800246D0:
/* 252D0 800246D0 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 252D4 800246D4 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 252D8 800246D8 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 252DC 800246DC 00097880 */  sll        $t7, $t1, 2
/* 252E0 800246E0 01E97823 */  subu       $t7, $t7, $t1
/* 252E4 800246E4 000F7880 */  sll        $t7, $t7, 2
/* 252E8 800246E8 01E97823 */  subu       $t7, $t7, $t1
/* 252EC 800246EC 000F7880 */  sll        $t7, $t7, 2
/* 252F0 800246F0 01E97821 */  addu       $t7, $t7, $t1
/* 252F4 800246F4 000F7880 */  sll        $t7, $t7, 2
/* 252F8 800246F8 01E97823 */  subu       $t7, $t7, $t1
/* 252FC 800246FC 000F7880 */  sll        $t7, $t7, 2
/* 25300 80024700 030F6821 */  addu       $t5, $t8, $t7
/* 25304 80024704 ADA00064 */  sw         $zero, 0x64($t5)
/* 25308 80024708 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 2530C 8002470C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 25310 80024710 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 25314 80024714 000E5880 */  sll        $t3, $t6, 2
/* 25318 80024718 016E5823 */  subu       $t3, $t3, $t6
/* 2531C 8002471C 000B5880 */  sll        $t3, $t3, 2
/* 25320 80024720 016E5823 */  subu       $t3, $t3, $t6
/* 25324 80024724 000B5880 */  sll        $t3, $t3, 2
/* 25328 80024728 016E5821 */  addu       $t3, $t3, $t6
/* 2532C 8002472C 000B5880 */  sll        $t3, $t3, 2
/* 25330 80024730 016E5823 */  subu       $t3, $t3, $t6
/* 25334 80024734 000B5880 */  sll        $t3, $t3, 2
/* 25338 80024738 3C088027 */  lui        $t0, %hi(D_80274068)
/* 2533C 8002473C 032B5021 */  addu       $t2, $t9, $t3
/* 25340 80024740 AD400068 */  sw         $zero, 0x68($t2)
/* 25344 80024744 25084068 */  addiu      $t0, $t0, %lo(D_80274068)
/* 25348 80024748 AD000060 */  sw         $zero, 0x60($t0)
/* 2534C 8002474C 0C024E0B */  jal        func_8009382C
/* 25350 80024750 24040001 */   addiu     $a0, $zero, 1
/* 25354 80024754 3C0C801C */  lui        $t4, %hi(D_801C5D40)
/* 25358 80024758 258C5D40 */  addiu      $t4, $t4, %lo(D_801C5D40)
/* 2535C 8002475C 8D840140 */  lw         $a0, 0x140($t4)
/* 25360 80024760 AFA00014 */  sw         $zero, 0x14($sp)
/* 25364 80024764 AFA00010 */  sw         $zero, 0x10($sp)
/* 25368 80024768 24050001 */  addiu      $a1, $zero, 1
/* 2536C 8002476C 00003025 */  or         $a2, $zero, $zero
/* 25370 80024770 0C0209BC */  jal        func_800826F0
/* 25374 80024774 24074000 */   addiu     $a3, $zero, 0x4000
/* 25378 80024778 1000084B */  b          .L800268A8
/* 2537C 8002477C 00000000 */   nop
/* 25380 80024780 3C098016 */  lui        $t1, %hi(D_801631F4)
/* 25384 80024784 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* 25388 80024788 8D380008 */  lw         $t8, 8($t1)
/* 2538C 8002478C 1700001B */  bnez       $t8, .L800247FC
/* 25390 80024790 00000000 */   nop
/* 25394 80024794 240F0001 */  addiu      $t7, $zero, 1
/* 25398 80024798 3C0E8028 */  lui        $t6, %hi(D_8027F700)
/* 2539C 8002479C AD2F0008 */  sw         $t7, 8($t1)
/* 253A0 800247A0 25CEF700 */  addiu      $t6, $t6, %lo(D_8027F700)
/* 253A4 800247A4 240D0001 */  addiu      $t5, $zero, 1
/* 253A8 800247A8 3C19801C */  lui        $t9, %hi(D_801C5D40)
/* 253AC 800247AC ADCD0078 */  sw         $t5, 0x78($t6)
/* 253B0 800247B0 27395D40 */  addiu      $t9, $t9, %lo(D_801C5D40)
/* 253B4 800247B4 8F2400F8 */  lw         $a0, 0xf8($t9)
/* 253B8 800247B8 AFA00014 */  sw         $zero, 0x14($sp)
/* 253BC 800247BC AFA00010 */  sw         $zero, 0x10($sp)
/* 253C0 800247C0 24050001 */  addiu      $a1, $zero, 1
/* 253C4 800247C4 00003025 */  or         $a2, $zero, $zero
/* 253C8 800247C8 0C0209BC */  jal        func_800826F0
/* 253CC 800247CC 24074000 */   addiu     $a3, $zero, 0x4000
/* 253D0 800247D0 3C0A8016 */  lui        $t2, %hi(D_801631F4)
/* 253D4 800247D4 254A31F4 */  addiu      $t2, $t2, %lo(D_801631F4)
/* 253D8 800247D8 240B0001 */  addiu      $t3, $zero, 1
/* 253DC 800247DC AD4B0044 */  sw         $t3, 0x44($t2)
/* 253E0 800247E0 24080091 */  addiu      $t0, $zero, 0x91
/* 253E4 800247E4 3C01800D */  lui        $at, %hi(D_800D6A98)
/* 253E8 800247E8 240C002F */  addiu      $t4, $zero, 0x2f
/* 253EC 800247EC AC286A98 */  sw         $t0, %lo(D_800D6A98)($at)
/* 253F0 800247F0 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 253F4 800247F4 100003A2 */  b          .L80025680
/* 253F8 800247F8 00000000 */   nop
.L800247FC:
/* 253FC 800247FC 3C188016 */  lui        $t8, %hi(D_801631F4)
/* 25400 80024800 271831F4 */  addiu      $t8, $t8, %lo(D_801631F4)
/* 25404 80024804 8F0F002C */  lw         $t7, 0x2c($t8)
/* 25408 80024808 15E0039D */  bnez       $t7, .L80025680
/* 2540C 8002480C 00000000 */   nop
/* 25410 80024810 24090001 */  addiu      $t1, $zero, 1
/* 25414 80024814 3C0D801C */  lui        $t5, %hi(D_801C5D40)
/* 25418 80024818 AF09002C */  sw         $t1, 0x2c($t8)
/* 2541C 8002481C 25AD5D40 */  addiu      $t5, $t5, %lo(D_801C5D40)
/* 25420 80024820 8DA4010C */  lw         $a0, 0x10c($t5)
/* 25424 80024824 AFA00014 */  sw         $zero, 0x14($sp)
/* 25428 80024828 AFA00010 */  sw         $zero, 0x10($sp)
/* 2542C 8002482C 24050001 */  addiu      $a1, $zero, 1
/* 25430 80024830 00003025 */  or         $a2, $zero, $zero
/* 25434 80024834 0C0209BC */  jal        func_800826F0
/* 25438 80024838 24074000 */   addiu     $a3, $zero, 0x4000
/* 2543C 8002483C 3C198028 */  lui        $t9, %hi(D_8027F700)
/* 25440 80024840 2739F700 */  addiu      $t9, $t9, %lo(D_8027F700)
/* 25444 80024844 240E0001 */  addiu      $t6, $zero, 1
/* 25448 80024848 3C0A8028 */  lui        $t2, %hi(D_8027F700)
/* 2544C 8002484C AF2E01E0 */  sw         $t6, 0x1e0($t9)
/* 25450 80024850 254AF700 */  addiu      $t2, $t2, %lo(D_8027F700)
/* 25454 80024854 240B0001 */  addiu      $t3, $zero, 1
/* 25458 80024858 AD4B0208 */  sw         $t3, 0x208($t2)
/* 2545C 8002485C 2408002F */  addiu      $t0, $zero, 0x2f
/* 25460 80024860 AFA800F4 */  sw         $t0, 0xf4($sp)
/* 25464 80024864 3C0F800D */  lui        $t7, %hi(D_800D7B20)
/* 25468 80024868 25EF7B20 */  addiu      $t7, $t7, %lo(D_800D7B20)
/* 2546C 8002486C 25ED0024 */  addiu      $t5, $t7, 0x24
/* 25470 80024870 27AC0078 */  addiu      $t4, $sp, 0x78
.L80024874:
/* 25474 80024874 8DF80000 */  lw         $t8, ($t7)
/* 25478 80024878 25EF000C */  addiu      $t7, $t7, 0xc
/* 2547C 8002487C 258C000C */  addiu      $t4, $t4, 0xc
/* 25480 80024880 AD98FFF4 */  sw         $t8, -0xc($t4)
/* 25484 80024884 8DE9FFF8 */  lw         $t1, -8($t7)
/* 25488 80024888 AD89FFF8 */  sw         $t1, -8($t4)
/* 2548C 8002488C 8DF8FFFC */  lw         $t8, -4($t7)
/* 25490 80024890 15EDFFF8 */  bne        $t7, $t5, .L80024874
/* 25494 80024894 AD98FFFC */   sw        $t8, -4($t4)
/* 25498 80024898 0C007066 */  jal        func_8001C198
/* 2549C 8002489C 27A40078 */   addiu     $a0, $sp, 0x78
/* 254A0 800248A0 240E0190 */  addiu      $t6, $zero, 0x190
/* 254A4 800248A4 3C018016 */  lui        $at, %hi(D_8015EDE4)
/* 254A8 800248A8 3C198028 */  lui        $t9, %hi(D_802812D0)
/* 254AC 800248AC AC2EEDE4 */  sw         $t6, %lo(D_8015EDE4)($at)
/* 254B0 800248B0 273912D0 */  addiu      $t9, $t9, %lo(D_802812D0)
/* 254B4 800248B4 3C0B8028 */  lui        $t3, %hi(D_802812D0)
/* 254B8 800248B8 AF200120 */  sw         $zero, 0x120($t9)
/* 254BC 800248BC 256B12D0 */  addiu      $t3, $t3, %lo(D_802812D0)
/* 254C0 800248C0 3C088028 */  lui        $t0, %hi(D_8027F700)
/* 254C4 800248C4 AD6001A0 */  sw         $zero, 0x1a0($t3)
/* 254C8 800248C8 2508F700 */  addiu      $t0, $t0, %lo(D_8027F700)
/* 254CC 800248CC 240A0001 */  addiu      $t2, $zero, 1
/* 254D0 800248D0 3C0F8028 */  lui        $t7, %hi(D_8027F700)
/* 254D4 800248D4 AD0A0280 */  sw         $t2, 0x280($t0)
/* 254D8 800248D8 25EFF700 */  addiu      $t7, $t7, %lo(D_8027F700)
/* 254DC 800248DC 240D0001 */  addiu      $t5, $zero, 1
/* 254E0 800248E0 3C098028 */  lui        $t1, %hi(D_8027F700)
/* 254E4 800248E4 ADED02A8 */  sw         $t5, 0x2a8($t7)
/* 254E8 800248E8 2529F700 */  addiu      $t1, $t1, %lo(D_8027F700)
/* 254EC 800248EC 240C0001 */  addiu      $t4, $zero, 1
/* 254F0 800248F0 AD2C05A0 */  sw         $t4, 0x5a0($t1)
/* 254F4 800248F4 100007EC */  b          .L800268A8
/* 254F8 800248F8 00000000 */   nop
/* 254FC 800248FC 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 25500 80024900 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 25504 80024904 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 25508 80024908 000EC880 */  sll        $t9, $t6, 2
/* 2550C 8002490C 032EC823 */  subu       $t9, $t9, $t6
/* 25510 80024910 0019C880 */  sll        $t9, $t9, 2
/* 25514 80024914 032EC823 */  subu       $t9, $t9, $t6
/* 25518 80024918 0019C880 */  sll        $t9, $t9, 2
/* 2551C 8002491C 032EC821 */  addu       $t9, $t9, $t6
/* 25520 80024920 0019C880 */  sll        $t9, $t9, 2
/* 25524 80024924 032EC823 */  subu       $t9, $t9, $t6
/* 25528 80024928 0019C880 */  sll        $t9, $t9, 2
/* 2552C 8002492C 03195821 */  addu       $t3, $t8, $t9
/* 25530 80024930 8D6A006C */  lw         $t2, 0x6c($t3)
/* 25534 80024934 24010004 */  addiu      $at, $zero, 4
/* 25538 80024938 15410061 */  bne        $t2, $at, .L80024AC0
/* 2553C 8002493C 00000000 */   nop
/* 25540 80024940 C56600EC */  lwc1       $f6, 0xec($t3)
/* 25544 80024944 C71200EC */  lwc1       $f18, 0xec($t8)
/* 25548 80024948 46123032 */  c.eq.s     $f6, $f18
/* 2554C 8002494C 00000000 */  nop
/* 25550 80024950 4500005B */  bc1f       .L80024AC0
/* 25554 80024954 00000000 */   nop
/* 25558 80024958 3C088016 */  lui        $t0, %hi(D_801631F4)
/* 2555C 8002495C 250831F4 */  addiu      $t0, $t0, %lo(D_801631F4)
/* 25560 80024960 8D0D0028 */  lw         $t5, 0x28($t0)
/* 25564 80024964 15A00039 */  bnez       $t5, .L80024A4C
/* 25568 80024968 00000000 */   nop
/* 2556C 8002496C 240F0001 */  addiu      $t7, $zero, 1
/* 25570 80024970 AD0F0028 */  sw         $t7, 0x28($t0)
/* 25574 80024974 3C098016 */  lui        $t1, %hi(D_8015F464)
/* 25578 80024978 3C198016 */  lui        $t9, %hi(D_8015F468)
/* 2557C 8002497C 8F39F468 */  lw         $t9, %lo(D_8015F468)($t9)
/* 25580 80024980 8D29F464 */  lw         $t1, %lo(D_8015F464)($t1)
/* 25584 80024984 3C0D800D */  lui        $t5, 0x800d
/* 25588 80024988 00195080 */  sll        $t2, $t9, 2
/* 2558C 8002498C 00097100 */  sll        $t6, $t1, 4
/* 25590 80024990 01595023 */  subu       $t2, $t2, $t9
/* 25594 80024994 01C97023 */  subu       $t6, $t6, $t1
/* 25598 80024998 000E70C0 */  sll        $t6, $t6, 3
/* 2559C 8002499C 000A50C0 */  sll        $t2, $t2, 3
/* 255A0 800249A0 8DAD6A8C */  lw         $t5, 0x6a8c($t5)
/* 255A4 800249A4 01CA5821 */  addu       $t3, $t6, $t2
/* 255A8 800249A8 3C018016 */  lui        $at, %hi(D_80160C8C)
/* 255AC 800249AC 002B0821 */  addu       $at, $at, $t3
/* 255B0 800249B0 240C0001 */  addiu      $t4, $zero, 1
/* 255B4 800249B4 AC2C0C8C */  sw         $t4, %lo(D_80160C8C)($at)
/* 255B8 800249B8 24180002 */  addiu      $t8, $zero, 2
/* 255BC 800249BC 3C08800D */  lui        $t0, %hi(D_800D6A8C)
/* 255C0 800249C0 ADB805F8 */  sw         $t8, 0x5f8($t5)
/* 255C4 800249C4 8D086A8C */  lw         $t0, %lo(D_800D6A8C)($t0)
/* 255C8 800249C8 240F0002 */  addiu      $t7, $zero, 2
/* 255CC 800249CC 3C09801C */  lui        $t1, %hi(D_801C5D40)
/* 255D0 800249D0 25295D40 */  addiu      $t1, $t1, %lo(D_801C5D40)
/* 255D4 800249D4 AD0F1714 */  sw         $t7, 0x1714($t0)
/* 255D8 800249D8 8D240060 */  lw         $a0, 0x60($t1)
/* 255DC 800249DC AFA00014 */  sw         $zero, 0x14($sp)
/* 255E0 800249E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 255E4 800249E4 24050001 */  addiu      $a1, $zero, 1
/* 255E8 800249E8 00003025 */  or         $a2, $zero, $zero
/* 255EC 800249EC 0C0209BC */  jal        func_800826F0
/* 255F0 800249F0 24074000 */   addiu     $a3, $zero, 0x4000
/* 255F4 800249F4 3C0A800E */  lui        $t2, %hi(D_800D9D90)
/* 255F8 800249F8 8D4A9D90 */  lw         $t2, %lo(D_800D9D90)($t2)
/* 255FC 800249FC 24190258 */  addiu      $t9, $zero, 0x258
/* 25600 80024A00 3C018016 */  lui        $at, %hi(D_8015ED70)
/* 25604 80024A04 AC39ED70 */  sw         $t9, %lo(D_8015ED70)($at)
/* 25608 80024A08 3C018016 */  lui        $at, %hi(D_8015ED7C)
/* 2560C 80024A0C 240E000A */  addiu      $t6, $zero, 0xa
/* 25610 80024A10 000A6080 */  sll        $t4, $t2, 2
/* 25614 80024A14 AC2EED7C */  sw         $t6, %lo(D_8015ED7C)($at)
/* 25618 80024A18 018A6021 */  addu       $t4, $t4, $t2
/* 2561C 80024A1C 3C018016 */  lui        $at, %hi(D_8015ED78)
/* 25620 80024A20 000C6080 */  sll        $t4, $t4, 2
/* 25624 80024A24 AC20ED78 */  sw         $zero, %lo(D_8015ED78)($at)
/* 25628 80024A28 018A6023 */  subu       $t4, $t4, $t2
/* 2562C 80024A2C 3C018016 */  lui        $at, %hi(D_8015ED74)
/* 25630 80024A30 000C6080 */  sll        $t4, $t4, 2
/* 25634 80024A34 AC20ED74 */  sw         $zero, %lo(D_8015ED74)($at)
/* 25638 80024A38 018A6023 */  subu       $t4, $t4, $t2
/* 2563C 80024A3C 000C60C0 */  sll        $t4, $t4, 3
/* 25640 80024A40 3C018016 */  lui        $at, %hi(D_8015ED70)
/* 25644 80024A44 1000001C */  b          .L80024AB8
/* 25648 80024A48 AC2CED70 */   sw        $t4, %lo(D_8015ED70)($at)
.L80024A4C:
/* 2564C 80024A4C 3C0B8016 */  lui        $t3, %hi(D_801631F4)
/* 25650 80024A50 256B31F4 */  addiu      $t3, $t3, %lo(D_801631F4)
/* 25654 80024A54 8D78003C */  lw         $t8, 0x3c($t3)
/* 25658 80024A58 1700000E */  bnez       $t8, .L80024A94
/* 2565C 80024A5C 00000000 */   nop
/* 25660 80024A60 240D0001 */  addiu      $t5, $zero, 1
/* 25664 80024A64 3C0F801C */  lui        $t7, %hi(D_801C5D40)
/* 25668 80024A68 AD6D003C */  sw         $t5, 0x3c($t3)
/* 2566C 80024A6C 25EF5D40 */  addiu      $t7, $t7, %lo(D_801C5D40)
/* 25670 80024A70 8DE40068 */  lw         $a0, 0x68($t7)
/* 25674 80024A74 AFA00014 */  sw         $zero, 0x14($sp)
/* 25678 80024A78 AFA00010 */  sw         $zero, 0x10($sp)
/* 2567C 80024A7C 24050001 */  addiu      $a1, $zero, 1
/* 25680 80024A80 00003025 */  or         $a2, $zero, $zero
/* 25684 80024A84 0C0209BC */  jal        func_800826F0
/* 25688 80024A88 24074000 */   addiu     $a3, $zero, 0x4000
/* 2568C 80024A8C 1000000A */  b          .L80024AB8
/* 25690 80024A90 00000000 */   nop
.L80024A94:
/* 25694 80024A94 3C08801C */  lui        $t0, %hi(D_801C5D40)
/* 25698 80024A98 25085D40 */  addiu      $t0, $t0, %lo(D_801C5D40)
/* 2569C 80024A9C 8D040070 */  lw         $a0, 0x70($t0)
/* 256A0 80024AA0 AFA00014 */  sw         $zero, 0x14($sp)
/* 256A4 80024AA4 AFA00010 */  sw         $zero, 0x10($sp)
/* 256A8 80024AA8 24050001 */  addiu      $a1, $zero, 1
/* 256AC 80024AAC 00003025 */  or         $a2, $zero, $zero
/* 256B0 80024AB0 0C0209BC */  jal        func_800826F0
/* 256B4 80024AB4 24074000 */   addiu     $a3, $zero, 0x4000
.L80024AB8:
/* 256B8 80024AB8 2409002F */  addiu      $t1, $zero, 0x2f
/* 256BC 80024ABC AFA900F4 */  sw         $t1, 0xf4($sp)
.L80024AC0:
/* 256C0 80024AC0 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 256C4 80024AC4 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 256C8 80024AC8 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 256CC 80024ACC 000E5080 */  sll        $t2, $t6, 2
/* 256D0 80024AD0 014E5023 */  subu       $t2, $t2, $t6
/* 256D4 80024AD4 000A5080 */  sll        $t2, $t2, 2
/* 256D8 80024AD8 014E5023 */  subu       $t2, $t2, $t6
/* 256DC 80024ADC 000A5080 */  sll        $t2, $t2, 2
/* 256E0 80024AE0 014E5021 */  addu       $t2, $t2, $t6
/* 256E4 80024AE4 000A5080 */  sll        $t2, $t2, 2
/* 256E8 80024AE8 014E5023 */  subu       $t2, $t2, $t6
/* 256EC 80024AEC 000A5080 */  sll        $t2, $t2, 2
/* 256F0 80024AF0 032A6021 */  addu       $t4, $t9, $t2
/* 256F4 80024AF4 8D98006C */  lw         $t8, 0x6c($t4)
/* 256F8 80024AF8 24010006 */  addiu      $at, $zero, 6
/* 256FC 80024AFC 170102E0 */  bne        $t8, $at, .L80025680
/* 25700 80024B00 00000000 */   nop
/* 25704 80024B04 C58800EC */  lwc1       $f8, 0xec($t4)
/* 25708 80024B08 C72A00EC */  lwc1       $f10, 0xec($t9)
/* 2570C 80024B0C 460A4032 */  c.eq.s     $f8, $f10
/* 25710 80024B10 00000000 */  nop
/* 25714 80024B14 450002DA */  bc1f       .L80025680
/* 25718 80024B18 00000000 */   nop
/* 2571C 80024B1C 240D002F */  addiu      $t5, $zero, 0x2f
/* 25720 80024B20 3C0B801C */  lui        $t3, %hi(D_801C5D40)
/* 25724 80024B24 AD8D0064 */  sw         $t5, 0x64($t4)
/* 25728 80024B28 256B5D40 */  addiu      $t3, $t3, %lo(D_801C5D40)
/* 2572C 80024B2C 8D64006C */  lw         $a0, 0x6c($t3)
/* 25730 80024B30 AFA00014 */  sw         $zero, 0x14($sp)
/* 25734 80024B34 AFA00010 */  sw         $zero, 0x10($sp)
/* 25738 80024B38 24050001 */  addiu      $a1, $zero, 1
/* 2573C 80024B3C 00003025 */  or         $a2, $zero, $zero
/* 25740 80024B40 0C0209BC */  jal        func_800826F0
/* 25744 80024B44 24074000 */   addiu     $a3, $zero, 0x4000
/* 25748 80024B48 240F002F */  addiu      $t7, $zero, 0x2f
/* 2574C 80024B4C 10000756 */  b          .L800268A8
/* 25750 80024B50 AFAF00F4 */   sw        $t7, 0xf4($sp)
/* 25754 80024B54 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 25758 80024B58 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 2575C 80024B5C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 25760 80024B60 00097080 */  sll        $t6, $t1, 2
/* 25764 80024B64 01C97023 */  subu       $t6, $t6, $t1
/* 25768 80024B68 000E7080 */  sll        $t6, $t6, 2
/* 2576C 80024B6C 01C97023 */  subu       $t6, $t6, $t1
/* 25770 80024B70 000E7080 */  sll        $t6, $t6, 2
/* 25774 80024B74 01C97021 */  addu       $t6, $t6, $t1
/* 25778 80024B78 000E7080 */  sll        $t6, $t6, 2
/* 2577C 80024B7C 01C97023 */  subu       $t6, $t6, $t1
/* 25780 80024B80 000E7080 */  sll        $t6, $t6, 2
/* 25784 80024B84 010E5021 */  addu       $t2, $t0, $t6
/* 25788 80024B88 8D58006C */  lw         $t8, 0x6c($t2)
/* 2578C 80024B8C 24010018 */  addiu      $at, $zero, 0x18
/* 25790 80024B90 1701004E */  bne        $t8, $at, .L80024CCC
/* 25794 80024B94 00000000 */   nop
/* 25798 80024B98 C55000EC */  lwc1       $f16, 0xec($t2)
/* 2579C 80024B9C C50400EC */  lwc1       $f4, 0xec($t0)
/* 257A0 80024BA0 46048032 */  c.eq.s     $f16, $f4
/* 257A4 80024BA4 00000000 */  nop
/* 257A8 80024BA8 45000048 */  bc1f       .L80024CCC
/* 257AC 80024BAC 00000000 */   nop
/* 257B0 80024BB0 3C19801C */  lui        $t9, %hi(D_801C5D40)
/* 257B4 80024BB4 27395D40 */  addiu      $t9, $t9, %lo(D_801C5D40)
/* 257B8 80024BB8 8F24001C */  lw         $a0, 0x1c($t9)
/* 257BC 80024BBC AFA00014 */  sw         $zero, 0x14($sp)
/* 257C0 80024BC0 AFA00010 */  sw         $zero, 0x10($sp)
/* 257C4 80024BC4 24050001 */  addiu      $a1, $zero, 1
/* 257C8 80024BC8 00003025 */  or         $a2, $zero, $zero
/* 257CC 80024BCC 0C0209BC */  jal        func_800826F0
/* 257D0 80024BD0 24074000 */   addiu     $a3, $zero, 0x4000
/* 257D4 80024BD4 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* 257D8 80024BD8 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* 257DC 80024BDC 240D0001 */  addiu      $t5, $zero, 1
/* 257E0 80024BE0 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* 257E4 80024BE4 AD8D0000 */  sw         $t5, ($t4)
/* 257E8 80024BE8 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* 257EC 80024BEC 240B0001 */  addiu      $t3, $zero, 1
/* 257F0 80024BF0 3C0E802D */  lui        $t6, %hi(D_802CBE00)
/* 257F4 80024BF4 ADEB0004 */  sw         $t3, 4($t7)
/* 257F8 80024BF8 25CEBE00 */  addiu      $t6, $t6, %lo(D_802CBE00)
/* 257FC 80024BFC 24090001 */  addiu      $t1, $zero, 1
/* 25800 80024C00 ADC900A0 */  sw         $t1, 0xa0($t6)
/* 25804 80024C04 3C0A802D */  lui        $t2, %hi(D_802CBE00)
/* 25808 80024C08 254ABE00 */  addiu      $t2, $t2, %lo(D_802CBE00)
/* 2580C 80024C0C 24180001 */  addiu      $t8, $zero, 1
/* 25810 80024C10 3C19802D */  lui        $t9, %hi(D_802CBE00)
/* 25814 80024C14 AD5809B0 */  sw         $t8, 0x9b0($t2)
/* 25818 80024C18 2739BE00 */  addiu      $t9, $t9, %lo(D_802CBE00)
/* 2581C 80024C1C 24080001 */  addiu      $t0, $zero, 1
/* 25820 80024C20 3C0C802D */  lui        $t4, %hi(D_802CBE00)
/* 25824 80024C24 AF2800C8 */  sw         $t0, 0xc8($t9)
/* 25828 80024C28 258CBE00 */  addiu      $t4, $t4, %lo(D_802CBE00)
/* 2582C 80024C2C 3C0F802D */  lui        $t7, %hi(D_802CBE00)
/* 25830 80024C30 AD8D0A78 */  sw         $t5, 0xa78($t4)
/* 25834 80024C34 25EFBE00 */  addiu      $t7, $t7, %lo(D_802CBE00)
/* 25838 80024C38 3C0E802D */  lui        $t6, %hi(D_802CBE00)
/* 2583C 80024C3C ADEB0AA0 */  sw         $t3, 0xaa0($t7)
/* 25840 80024C40 25CEBE00 */  addiu      $t6, $t6, %lo(D_802CBE00)
/* 25844 80024C44 ADC90AC8 */  sw         $t1, 0xac8($t6)
/* 25848 80024C48 2404000A */  addiu      $a0, $zero, 0xa
/* 2584C 80024C4C 0C011D43 */  jal        func_8004750C
/* 25850 80024C50 24050023 */   addiu     $a1, $zero, 0x23
/* 25854 80024C54 2404000B */  addiu      $a0, $zero, 0xb
/* 25858 80024C58 0C011D43 */  jal        func_8004750C
/* 2585C 80024C5C 24050023 */   addiu     $a1, $zero, 0x23
/* 25860 80024C60 3C08800E */  lui        $t0, %hi(D_800D9D90)
/* 25864 80024C64 8D089D90 */  lw         $t0, %lo(D_800D9D90)($t0)
/* 25868 80024C68 24180258 */  addiu      $t8, $zero, 0x258
/* 2586C 80024C6C 3C018016 */  lui        $at, %hi(D_8015ED70)
/* 25870 80024C70 AC38ED70 */  sw         $t8, %lo(D_8015ED70)($at)
/* 25874 80024C74 3C018016 */  lui        $at, %hi(D_8015ED7C)
/* 25878 80024C78 240A000A */  addiu      $t2, $zero, 0xa
/* 2587C 80024C7C 0008C880 */  sll        $t9, $t0, 2
/* 25880 80024C80 AC2AED7C */  sw         $t2, %lo(D_8015ED7C)($at)
/* 25884 80024C84 0328C821 */  addu       $t9, $t9, $t0
/* 25888 80024C88 3C018016 */  lui        $at, %hi(D_8015ED78)
/* 2588C 80024C8C 0019C880 */  sll        $t9, $t9, 2
/* 25890 80024C90 AC20ED78 */  sw         $zero, %lo(D_8015ED78)($at)
/* 25894 80024C94 0328C823 */  subu       $t9, $t9, $t0
/* 25898 80024C98 3C018016 */  lui        $at, %hi(D_8015ED74)
/* 2589C 80024C9C 0019C880 */  sll        $t9, $t9, 2
/* 258A0 80024CA0 AC20ED74 */  sw         $zero, %lo(D_8015ED74)($at)
/* 258A4 80024CA4 0328C823 */  subu       $t9, $t9, $t0
/* 258A8 80024CA8 0019C8C0 */  sll        $t9, $t9, 3
/* 258AC 80024CAC 3C018016 */  lui        $at, %hi(D_8015ED70)
/* 258B0 80024CB0 3C0C800E */  lui        $t4, %hi(D_800D9554)
/* 258B4 80024CB4 AC39ED70 */  sw         $t9, %lo(D_8015ED70)($at)
/* 258B8 80024CB8 258C9554 */  addiu      $t4, $t4, %lo(D_800D9554)
/* 258BC 80024CBC 240D0001 */  addiu      $t5, $zero, 1
/* 258C0 80024CC0 AD8D0000 */  sw         $t5, ($t4)
/* 258C4 80024CC4 10000035 */  b          .L80024D9C
/* 258C8 80024CC8 00000000 */   nop
.L80024CCC:
/* 258CC 80024CCC 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 258D0 80024CD0 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 258D4 80024CD4 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 258D8 80024CD8 000F4880 */  sll        $t1, $t7, 2
/* 258DC 80024CDC 012F4823 */  subu       $t1, $t1, $t7
/* 258E0 80024CE0 00094880 */  sll        $t1, $t1, 2
/* 258E4 80024CE4 012F4823 */  subu       $t1, $t1, $t7
/* 258E8 80024CE8 00094880 */  sll        $t1, $t1, 2
/* 258EC 80024CEC 012F4821 */  addu       $t1, $t1, $t7
/* 258F0 80024CF0 00094880 */  sll        $t1, $t1, 2
/* 258F4 80024CF4 012F4823 */  subu       $t1, $t1, $t7
/* 258F8 80024CF8 00094880 */  sll        $t1, $t1, 2
/* 258FC 80024CFC 01697021 */  addu       $t6, $t3, $t1
/* 25900 80024D00 8DD8006C */  lw         $t8, 0x6c($t6)
/* 25904 80024D04 2401000F */  addiu      $at, $zero, 0xf
/* 25908 80024D08 17010021 */  bne        $t8, $at, .L80024D90
/* 2590C 80024D0C 00000000 */   nop
/* 25910 80024D10 C5C600EC */  lwc1       $f6, 0xec($t6)
/* 25914 80024D14 C57200EC */  lwc1       $f18, 0xec($t3)
/* 25918 80024D18 46123032 */  c.eq.s     $f6, $f18
/* 2591C 80024D1C 00000000 */  nop
/* 25920 80024D20 4500001B */  bc1f       .L80024D90
/* 25924 80024D24 00000000 */   nop
/* 25928 80024D28 3C0A8016 */  lui        $t2, %hi(D_801631F4)
/* 2592C 80024D2C 254A31F4 */  addiu      $t2, $t2, %lo(D_801631F4)
/* 25930 80024D30 8D480000 */  lw         $t0, ($t2)
/* 25934 80024D34 15000019 */  bnez       $t0, .L80024D9C
/* 25938 80024D38 00000000 */   nop
/* 2593C 80024D3C 3C0D802D */  lui        $t5, %hi(D_802CBE00)
/* 25940 80024D40 25ADBE00 */  addiu      $t5, $t5, %lo(D_802CBE00)
/* 25944 80024D44 24190001 */  addiu      $t9, $zero, 1
/* 25948 80024D48 ADB90078 */  sw         $t9, 0x78($t5)
/* 2594C 80024D4C 24040002 */  addiu      $a0, $zero, 2
/* 25950 80024D50 0C011D43 */  jal        func_8004750C
/* 25954 80024D54 24050024 */   addiu     $a1, $zero, 0x24
/* 25958 80024D58 24040003 */  addiu      $a0, $zero, 3
/* 2595C 80024D5C 0C011D43 */  jal        func_8004750C
/* 25960 80024D60 24050024 */   addiu     $a1, $zero, 0x24
/* 25964 80024D64 3C0C801C */  lui        $t4, %hi(D_801C5D40)
/* 25968 80024D68 258C5D40 */  addiu      $t4, $t4, %lo(D_801C5D40)
/* 2596C 80024D6C 8D840024 */  lw         $a0, 0x24($t4)
/* 25970 80024D70 AFA00014 */  sw         $zero, 0x14($sp)
/* 25974 80024D74 AFA00010 */  sw         $zero, 0x10($sp)
/* 25978 80024D78 24050001 */  addiu      $a1, $zero, 1
/* 2597C 80024D7C 00003025 */  or         $a2, $zero, $zero
/* 25980 80024D80 0C0209BC */  jal        func_800826F0
/* 25984 80024D84 24074000 */   addiu     $a3, $zero, 0x4000
/* 25988 80024D88 10000004 */  b          .L80024D9C
/* 2598C 80024D8C 00000000 */   nop
.L80024D90:
/* 25990 80024D90 240F0013 */  addiu      $t7, $zero, 0x13
/* 25994 80024D94 100006C4 */  b          .L800268A8
/* 25998 80024D98 AFAF00F4 */   sw        $t7, 0xf4($sp)
.L80024D9C:
/* 2599C 80024D9C 2409002F */  addiu      $t1, $zero, 0x2f
/* 259A0 80024DA0 100006C1 */  b          .L800268A8
/* 259A4 80024DA4 AFA900F4 */   sw        $t1, 0xf4($sp)
/* 259A8 80024DA8 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 259AC 80024DAC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 259B0 80024DB0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 259B4 80024DB4 000E5880 */  sll        $t3, $t6, 2
/* 259B8 80024DB8 016E5823 */  subu       $t3, $t3, $t6
/* 259BC 80024DBC 000B5880 */  sll        $t3, $t3, 2
/* 259C0 80024DC0 016E5823 */  subu       $t3, $t3, $t6
/* 259C4 80024DC4 000B5880 */  sll        $t3, $t3, 2
/* 259C8 80024DC8 016E5821 */  addu       $t3, $t3, $t6
/* 259CC 80024DCC 000B5880 */  sll        $t3, $t3, 2
/* 259D0 80024DD0 016E5823 */  subu       $t3, $t3, $t6
/* 259D4 80024DD4 000B5880 */  sll        $t3, $t3, 2
/* 259D8 80024DD8 030B5021 */  addu       $t2, $t8, $t3
/* 259DC 80024DDC 8D48006C */  lw         $t0, 0x6c($t2)
/* 259E0 80024DE0 2401000D */  addiu      $at, $zero, 0xd
/* 259E4 80024DE4 15010226 */  bne        $t0, $at, .L80025680
/* 259E8 80024DE8 00000000 */   nop
/* 259EC 80024DEC C54800EC */  lwc1       $f8, 0xec($t2)
/* 259F0 80024DF0 C70A00EC */  lwc1       $f10, 0xec($t8)
/* 259F4 80024DF4 460A4032 */  c.eq.s     $f8, $f10
/* 259F8 80024DF8 00000000 */  nop
/* 259FC 80024DFC 45000220 */  bc1f       .L80025680
/* 25A00 80024E00 00000000 */   nop
/* 25A04 80024E04 3C198016 */  lui        $t9, %hi(D_801631F4)
/* 25A08 80024E08 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* 25A0C 80024E0C 8F2D0050 */  lw         $t5, 0x50($t9)
/* 25A10 80024E10 11A00016 */  beqz       $t5, .L80024E6C
/* 25A14 80024E14 00000000 */   nop
/* 25A18 80024E18 8F2C0054 */  lw         $t4, 0x54($t9)
/* 25A1C 80024E1C 158001AC */  bnez       $t4, .L800254D0
/* 25A20 80024E20 00000000 */   nop
/* 25A24 80024E24 240F0001 */  addiu      $t7, $zero, 1
/* 25A28 80024E28 AF2F0054 */  sw         $t7, 0x54($t9)
/* 25A2C 80024E2C 3C0E8016 */  lui        $t6, %hi(D_8015F464)
/* 25A30 80024E30 3C088016 */  lui        $t0, %hi(D_8015F468)
/* 25A34 80024E34 8D08F468 */  lw         $t0, %lo(D_8015F468)($t0)
/* 25A38 80024E38 8DCEF464 */  lw         $t6, %lo(D_8015F464)($t6)
/* 25A3C 80024E3C 3C018016 */  lui        $at, 0x8016
/* 25A40 80024E40 00085080 */  sll        $t2, $t0, 2
/* 25A44 80024E44 000E5900 */  sll        $t3, $t6, 4
/* 25A48 80024E48 01485023 */  subu       $t2, $t2, $t0
/* 25A4C 80024E4C 016E5823 */  subu       $t3, $t3, $t6
/* 25A50 80024E50 000B58C0 */  sll        $t3, $t3, 3
/* 25A54 80024E54 000A50C0 */  sll        $t2, $t2, 3
/* 25A58 80024E58 016AC021 */  addu       $t8, $t3, $t2
/* 25A5C 80024E5C 00380821 */  addu       $at, $at, $t8
/* 25A60 80024E60 24090001 */  addiu      $t1, $zero, 1
/* 25A64 80024E64 10000206 */  b          .L80025680
/* 25A68 80024E68 AC290C8C */   sw        $t1, 0xc8c($at)
.L80024E6C:
/* 25A6C 80024E6C 3C0D8016 */  lui        $t5, %hi(D_801631F4)
/* 25A70 80024E70 25AD31F4 */  addiu      $t5, $t5, %lo(D_801631F4)
/* 25A74 80024E74 8DAC0000 */  lw         $t4, ($t5)
/* 25A78 80024E78 158000D9 */  bnez       $t4, .L800251E0
/* 25A7C 80024E7C 00000000 */   nop
/* 25A80 80024E80 240F0001 */  addiu      $t7, $zero, 1
/* 25A84 80024E84 ADAF0000 */  sw         $t7, ($t5)
/* 25A88 80024E88 3C01800E */  lui        $at, %hi(D_800D946C)
/* 25A8C 80024E8C C430946C */  lwc1       $f16, %lo(D_800D946C)($at)
/* 25A90 80024E90 44802000 */  mtc1       $zero, $f4
/* 25A94 80024E94 00000000 */  nop
/* 25A98 80024E98 46048032 */  c.eq.s     $f16, $f4
/* 25A9C 80024E9C 00000000 */  nop
/* 25AA0 80024EA0 45000014 */  bc1f       .L80024EF4
/* 25AA4 80024EA4 00000000 */   nop
/* 25AA8 80024EA8 3C198016 */  lui        $t9, %hi(D_8015ED7C)
/* 25AAC 80024EAC 8F39ED7C */  lw         $t9, %lo(D_8015ED7C)($t9)
/* 25AB0 80024EB0 3C088016 */  lui        $t0, %hi(D_8015ED78)
/* 25AB4 80024EB4 8D08ED78 */  lw         $t0, %lo(D_8015ED78)($t0)
/* 25AB8 80024EB8 00197100 */  sll        $t6, $t9, 4
/* 25ABC 80024EBC 01D97023 */  subu       $t6, $t6, $t9
/* 25AC0 80024EC0 000E7080 */  sll        $t6, $t6, 2
/* 25AC4 80024EC4 01C85821 */  addu       $t3, $t6, $t0
/* 25AC8 80024EC8 000B5100 */  sll        $t2, $t3, 4
/* 25ACC 80024ECC 014B5023 */  subu       $t2, $t2, $t3
/* 25AD0 80024ED0 000A5040 */  sll        $t2, $t2, 1
/* 25AD4 80024ED4 448A3000 */  mtc1       $t2, $f6
/* 25AD8 80024ED8 3C0143AF */  lui        $at, 0x43af
/* 25ADC 80024EDC 44814000 */  mtc1       $at, $f8
/* 25AE0 80024EE0 468034A0 */  cvt.s.w    $f18, $f6
/* 25AE4 80024EE4 3C01800E */  lui        $at, %hi(D_800D946C)
/* 25AE8 80024EE8 AFAA0074 */  sw         $t2, 0x74($sp)
/* 25AEC 80024EEC 46124283 */  div.s      $f10, $f8, $f18
/* 25AF0 80024EF0 E42A946C */  swc1       $f10, %lo(D_800D946C)($at)
.L80024EF4:
/* 25AF4 80024EF4 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 25AF8 80024EF8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 25AFC 80024EFC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 25B00 80024F00 000C7880 */  sll        $t7, $t4, 2
/* 25B04 80024F04 01EC7823 */  subu       $t7, $t7, $t4
/* 25B08 80024F08 000F7880 */  sll        $t7, $t7, 2
/* 25B0C 80024F0C 01EC7823 */  subu       $t7, $t7, $t4
/* 25B10 80024F10 000F7880 */  sll        $t7, $t7, 2
/* 25B14 80024F14 01EC7821 */  addu       $t7, $t7, $t4
/* 25B18 80024F18 000F7880 */  sll        $t7, $t7, 2
/* 25B1C 80024F1C 01EC7823 */  subu       $t7, $t7, $t4
/* 25B20 80024F20 000F7880 */  sll        $t7, $t7, 2
/* 25B24 80024F24 2409003A */  addiu      $t1, $zero, 0x3a
/* 25B28 80024F28 030F6821 */  addu       $t5, $t8, $t7
/* 25B2C 80024F2C ADA90064 */  sw         $t1, 0x64($t5)
/* 25B30 80024F30 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 25B34 80024F34 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 25B38 80024F38 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 25B3C 80024F3C 00085880 */  sll        $t3, $t0, 2
/* 25B40 80024F40 01685823 */  subu       $t3, $t3, $t0
/* 25B44 80024F44 000B5880 */  sll        $t3, $t3, 2
/* 25B48 80024F48 01685823 */  subu       $t3, $t3, $t0
/* 25B4C 80024F4C 000B5880 */  sll        $t3, $t3, 2
/* 25B50 80024F50 01685821 */  addu       $t3, $t3, $t0
/* 25B54 80024F54 000B5880 */  sll        $t3, $t3, 2
/* 25B58 80024F58 01685823 */  subu       $t3, $t3, $t0
/* 25B5C 80024F5C 000B5880 */  sll        $t3, $t3, 2
/* 25B60 80024F60 2419003A */  addiu      $t9, $zero, 0x3a
/* 25B64 80024F64 3C0C801C */  lui        $t4, %hi(D_801C5D40)
/* 25B68 80024F68 01CB5021 */  addu       $t2, $t6, $t3
/* 25B6C 80024F6C AD590068 */  sw         $t9, 0x68($t2)
/* 25B70 80024F70 258C5D40 */  addiu      $t4, $t4, %lo(D_801C5D40)
/* 25B74 80024F74 8D84002C */  lw         $a0, 0x2c($t4)
/* 25B78 80024F78 AFA00014 */  sw         $zero, 0x14($sp)
/* 25B7C 80024F7C AFA00010 */  sw         $zero, 0x10($sp)
/* 25B80 80024F80 24050001 */  addiu      $a1, $zero, 1
/* 25B84 80024F84 00003025 */  or         $a2, $zero, $zero
/* 25B88 80024F88 0C0209BC */  jal        func_800826F0
/* 25B8C 80024F8C 24074000 */   addiu     $a3, $zero, 0x4000
/* 25B90 80024F90 3C18802A */  lui        $t8, %hi(D_802A2758)
/* 25B94 80024F94 27182758 */  addiu      $t8, $t8, %lo(D_802A2758)
/* 25B98 80024F98 3C0F802A */  lui        $t7, %hi(D_802A2758)
/* 25B9C 80024F9C AF000080 */  sw         $zero, 0x80($t8)
/* 25BA0 80024FA0 25EF2758 */  addiu      $t7, $t7, %lo(D_802A2758)
/* 25BA4 80024FA4 3C09802A */  lui        $t1, %hi(D_802A2758)
/* 25BA8 80024FA8 ADE000A0 */  sw         $zero, 0xa0($t7)
/* 25BAC 80024FAC 25292758 */  addiu      $t1, $t1, %lo(D_802A2758)
/* 25BB0 80024FB0 AD2000C0 */  sw         $zero, 0xc0($t1)
/* 25BB4 80024FB4 3C014448 */  lui        $at, 0x4448
/* 25BB8 80024FB8 44818000 */  mtc1       $at, $f16
/* 25BBC 80024FBC 3C01452F */  lui        $at, 0x452f
/* 25BC0 80024FC0 44812000 */  mtc1       $at, $f4
/* 25BC4 80024FC4 3C01800E */  lui        $at, %hi(D_800DC880)
/* 25BC8 80024FC8 C426C880 */  lwc1       $f6, %lo(D_800DC880)($at)
/* 25BCC 80024FCC 3C01800E */  lui        $at, %hi(D_800DC884)
/* 25BD0 80024FD0 C428C884 */  lwc1       $f8, %lo(D_800DC884)($at)
/* 25BD4 80024FD4 240DFFFF */  addiu      $t5, $zero, -1
/* 25BD8 80024FD8 AFAD0070 */  sw         $t5, 0x70($sp)
/* 25BDC 80024FDC 24040001 */  addiu      $a0, $zero, 1
/* 25BE0 80024FE0 E7B00064 */  swc1       $f16, 0x64($sp)
/* 25BE4 80024FE4 E7A40068 */  swc1       $f4, 0x68($sp)
/* 25BE8 80024FE8 E7A6006C */  swc1       $f6, 0x6c($sp)
/* 25BEC 80024FEC 0C012058 */  jal        func_80048160
/* 25BF0 80024FF0 E7A80060 */   swc1      $f8, 0x60($sp)
/* 25BF4 80024FF4 AFA20070 */  sw         $v0, 0x70($sp)
/* 25BF8 80024FF8 8FA80070 */  lw         $t0, 0x70($sp)
/* 25BFC 80024FFC 0500004F */  bltz       $t0, .L8002513C
/* 25C00 80025000 00000000 */   nop
/* 25C04 80025004 0008C880 */  sll        $t9, $t0, 2
/* 25C08 80025008 0328C823 */  subu       $t9, $t9, $t0
/* 25C0C 8002500C 0019C880 */  sll        $t9, $t9, 2
/* 25C10 80025010 0328C823 */  subu       $t9, $t9, $t0
/* 25C14 80025014 0019C880 */  sll        $t9, $t9, 2
/* 25C18 80025018 0328C821 */  addu       $t9, $t9, $t0
/* 25C1C 8002501C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 25C20 80025020 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 25C24 80025024 0019C880 */  sll        $t9, $t9, 2
/* 25C28 80025028 0328C823 */  subu       $t9, $t9, $t0
/* 25C2C 8002502C 0019C880 */  sll        $t9, $t9, 2
/* 25C30 80025030 240E002D */  addiu      $t6, $zero, 0x2d
/* 25C34 80025034 01795021 */  addu       $t2, $t3, $t9
/* 25C38 80025038 AD4E0064 */  sw         $t6, 0x64($t2)
/* 25C3C 8002503C 27B80064 */  addiu      $t8, $sp, 0x64
/* 25C40 80025040 8F090000 */  lw         $t1, ($t8)
/* 25C44 80025044 27AC0034 */  addiu      $t4, $sp, 0x34
/* 25C48 80025048 3C0D8016 */  lui        $t5, 0x8016
/* 25C4C 8002504C AD890000 */  sw         $t1, ($t4)
/* 25C50 80025050 8F0F0004 */  lw         $t7, 4($t8)
/* 25C54 80025054 27AE0034 */  addiu      $t6, $sp, 0x34
/* 25C58 80025058 AD8F0004 */  sw         $t7, 4($t4)
/* 25C5C 8002505C 8F090008 */  lw         $t1, 8($t8)
/* 25C60 80025060 3C188016 */  lui        $t8, 0x8016
/* 25C64 80025064 AD890008 */  sw         $t1, 8($t4)
/* 25C68 80025068 8FA80070 */  lw         $t0, 0x70($sp)
/* 25C6C 8002506C 8DADFB9C */  lw         $t5, -0x464($t5)
/* 25C70 80025070 8DCC0000 */  lw         $t4, ($t6)
/* 25C74 80025074 00085880 */  sll        $t3, $t0, 2
/* 25C78 80025078 01685823 */  subu       $t3, $t3, $t0
/* 25C7C 8002507C 000B5880 */  sll        $t3, $t3, 2
/* 25C80 80025080 01685823 */  subu       $t3, $t3, $t0
/* 25C84 80025084 000B5880 */  sll        $t3, $t3, 2
/* 25C88 80025088 01685821 */  addu       $t3, $t3, $t0
/* 25C8C 8002508C 000B5880 */  sll        $t3, $t3, 2
/* 25C90 80025090 01685823 */  subu       $t3, $t3, $t0
/* 25C94 80025094 000B5880 */  sll        $t3, $t3, 2
/* 25C98 80025098 01ABC821 */  addu       $t9, $t5, $t3
/* 25C9C 8002509C AF2C00E0 */  sw         $t4, 0xe0($t9)
/* 25CA0 800250A0 8DCA0004 */  lw         $t2, 4($t6)
/* 25CA4 800250A4 27AD0034 */  addiu      $t5, $sp, 0x34
/* 25CA8 800250A8 AF2A00E4 */  sw         $t2, 0xe4($t9)
/* 25CAC 800250AC 8DCC0008 */  lw         $t4, 8($t6)
/* 25CB0 800250B0 3C0E8016 */  lui        $t6, 0x8016
/* 25CB4 800250B4 AF2C00E8 */  sw         $t4, 0xe8($t9)
/* 25CB8 800250B8 8FAF0070 */  lw         $t7, 0x70($sp)
/* 25CBC 800250BC 8F18FB9C */  lw         $t8, -0x464($t8)
/* 25CC0 800250C0 8DB90000 */  lw         $t9, ($t5)
/* 25CC4 800250C4 000F4880 */  sll        $t1, $t7, 2
/* 25CC8 800250C8 012F4823 */  subu       $t1, $t1, $t7
/* 25CCC 800250CC 00094880 */  sll        $t1, $t1, 2
/* 25CD0 800250D0 012F4823 */  subu       $t1, $t1, $t7
/* 25CD4 800250D4 00094880 */  sll        $t1, $t1, 2
/* 25CD8 800250D8 012F4821 */  addu       $t1, $t1, $t7
/* 25CDC 800250DC 00094880 */  sll        $t1, $t1, 2
/* 25CE0 800250E0 012F4823 */  subu       $t1, $t1, $t7
/* 25CE4 800250E4 00094880 */  sll        $t1, $t1, 2
/* 25CE8 800250E8 03094021 */  addu       $t0, $t8, $t1
/* 25CEC 800250EC AD19008C */  sw         $t9, 0x8c($t0)
/* 25CF0 800250F0 8DAB0004 */  lw         $t3, 4($t5)
/* 25CF4 800250F4 AD0B0090 */  sw         $t3, 0x90($t0)
/* 25CF8 800250F8 8DB90008 */  lw         $t9, 8($t5)
/* 25CFC 800250FC AD190094 */  sw         $t9, 0x94($t0)
/* 25D00 80025100 8FAA0070 */  lw         $t2, 0x70($sp)
/* 25D04 80025104 8DCEFB9C */  lw         $t6, -0x464($t6)
/* 25D08 80025108 C7B20060 */  lwc1       $f18, 0x60($sp)
/* 25D0C 8002510C 000A6080 */  sll        $t4, $t2, 2
/* 25D10 80025110 018A6023 */  subu       $t4, $t4, $t2
/* 25D14 80025114 000C6080 */  sll        $t4, $t4, 2
/* 25D18 80025118 018A6023 */  subu       $t4, $t4, $t2
/* 25D1C 8002511C 000C6080 */  sll        $t4, $t4, 2
/* 25D20 80025120 018A6021 */  addu       $t4, $t4, $t2
/* 25D24 80025124 000C6080 */  sll        $t4, $t4, 2
/* 25D28 80025128 018A6023 */  subu       $t4, $t4, $t2
/* 25D2C 8002512C 000C6080 */  sll        $t4, $t4, 2
/* 25D30 80025130 01CC7821 */  addu       $t7, $t6, $t4
/* 25D34 80025134 100000E6 */  b          .L800254D0
/* 25D38 80025138 E5F200F0 */   swc1      $f18, 0xf0($t7)
.L8002513C:
/* 25D3C 8002513C 3C058016 */  lui        $a1, %hi(D_8015FF7C)
/* 25D40 80025140 8CA5FF7C */  lw         $a1, %lo(D_8015FF7C)($a1)
/* 25D44 80025144 0C012086 */  jal        func_80048218
/* 25D48 80025148 24040001 */   addiu     $a0, $zero, 1
/* 25D4C 8002514C AFA20070 */  sw         $v0, 0x70($sp)
/* 25D50 80025150 8FB80070 */  lw         $t8, 0x70($sp)
/* 25D54 80025154 070000DE */  bltz       $t8, .L800254D0
/* 25D58 80025158 00000000 */   nop
/* 25D5C 8002515C 3C088016 */  lui        $t0, %hi(D_8015FF7C)
/* 25D60 80025160 8D08FF7C */  lw         $t0, %lo(D_8015FF7C)($t0)
/* 25D64 80025164 00186880 */  sll        $t5, $t8, 2
/* 25D68 80025168 01B86821 */  addu       $t5, $t5, $t8
/* 25D6C 8002516C 000D68C0 */  sll        $t5, $t5, 3
/* 25D70 80025170 2409002D */  addiu      $t1, $zero, 0x2d
/* 25D74 80025174 010D5821 */  addu       $t3, $t0, $t5
/* 25D78 80025178 AD690024 */  sw         $t1, 0x24($t3)
/* 25D7C 8002517C 8FAA0070 */  lw         $t2, 0x70($sp)
/* 25D80 80025180 3C198016 */  lui        $t9, %hi(D_8015FF7C)
/* 25D84 80025184 8F39FF7C */  lw         $t9, %lo(D_8015FF7C)($t9)
/* 25D88 80025188 27AF0064 */  addiu      $t7, $sp, 0x64
/* 25D8C 8002518C 000A7080 */  sll        $t6, $t2, 2
/* 25D90 80025190 8DE80000 */  lw         $t0, ($t7)
/* 25D94 80025194 01CA7021 */  addu       $t6, $t6, $t2
/* 25D98 80025198 000E70C0 */  sll        $t6, $t6, 3
/* 25D9C 8002519C 032E6021 */  addu       $t4, $t9, $t6
/* 25DA0 800251A0 AD88000C */  sw         $t0, 0xc($t4)
/* 25DA4 800251A4 8DF80004 */  lw         $t8, 4($t7)
/* 25DA8 800251A8 3C0D8016 */  lui        $t5, %hi(D_8015FF7C)
/* 25DAC 800251AC AD980010 */  sw         $t8, 0x10($t4)
/* 25DB0 800251B0 8DE80008 */  lw         $t0, 8($t7)
/* 25DB4 800251B4 AD880014 */  sw         $t0, 0x14($t4)
/* 25DB8 800251B8 8FA90070 */  lw         $t1, 0x70($sp)
/* 25DBC 800251BC 8DADFF7C */  lw         $t5, %lo(D_8015FF7C)($t5)
/* 25DC0 800251C0 C7AA0060 */  lwc1       $f10, 0x60($sp)
/* 25DC4 800251C4 00095880 */  sll        $t3, $t1, 2
/* 25DC8 800251C8 01695821 */  addu       $t3, $t3, $t1
/* 25DCC 800251CC 000B58C0 */  sll        $t3, $t3, 3
/* 25DD0 800251D0 01AB5021 */  addu       $t2, $t5, $t3
/* 25DD4 800251D4 E54A0018 */  swc1       $f10, 0x18($t2)
/* 25DD8 800251D8 10000129 */  b          .L80025680
/* 25DDC 800251DC 00000000 */   nop
.L800251E0:
/* 25DE0 800251E0 3C198016 */  lui        $t9, %hi(D_801631F4)
/* 25DE4 800251E4 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* 25DE8 800251E8 8F2E0008 */  lw         $t6, 8($t9)
/* 25DEC 800251EC 15C0002F */  bnez       $t6, .L800252AC
/* 25DF0 800251F0 00000000 */   nop
/* 25DF4 800251F4 240C0001 */  addiu      $t4, $zero, 1
/* 25DF8 800251F8 AF2C0008 */  sw         $t4, 8($t9)
/* 25DFC 800251FC 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 25E00 80025200 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 25E04 80025204 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 25E08 80025208 00084880 */  sll        $t1, $t0, 2
/* 25E0C 8002520C 01284823 */  subu       $t1, $t1, $t0
/* 25E10 80025210 00094880 */  sll        $t1, $t1, 2
/* 25E14 80025214 01284823 */  subu       $t1, $t1, $t0
/* 25E18 80025218 00094880 */  sll        $t1, $t1, 2
/* 25E1C 8002521C 01284821 */  addu       $t1, $t1, $t0
/* 25E20 80025220 00094880 */  sll        $t1, $t1, 2
/* 25E24 80025224 01284823 */  subu       $t1, $t1, $t0
/* 25E28 80025228 00094880 */  sll        $t1, $t1, 2
/* 25E2C 8002522C 240F003A */  addiu      $t7, $zero, 0x3a
/* 25E30 80025230 03096821 */  addu       $t5, $t8, $t1
/* 25E34 80025234 ADAF0064 */  sw         $t7, 0x64($t5)
/* 25E38 80025238 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 25E3C 8002523C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 25E40 80025240 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 25E44 80025244 000E6080 */  sll        $t4, $t6, 2
/* 25E48 80025248 018E6023 */  subu       $t4, $t4, $t6
/* 25E4C 8002524C 000C6080 */  sll        $t4, $t4, 2
/* 25E50 80025250 018E6023 */  subu       $t4, $t4, $t6
/* 25E54 80025254 000C6080 */  sll        $t4, $t4, 2
/* 25E58 80025258 018E6021 */  addu       $t4, $t4, $t6
/* 25E5C 8002525C 000C6080 */  sll        $t4, $t4, 2
/* 25E60 80025260 018E6023 */  subu       $t4, $t4, $t6
/* 25E64 80025264 000C6080 */  sll        $t4, $t4, 2
/* 25E68 80025268 240B003A */  addiu      $t3, $zero, 0x3a
/* 25E6C 8002526C 3C08801C */  lui        $t0, %hi(D_801C5D40)
/* 25E70 80025270 014CC821 */  addu       $t9, $t2, $t4
/* 25E74 80025274 AF2B0068 */  sw         $t3, 0x68($t9)
/* 25E78 80025278 25085D40 */  addiu      $t0, $t0, %lo(D_801C5D40)
/* 25E7C 8002527C 8D040030 */  lw         $a0, 0x30($t0)
/* 25E80 80025280 AFA00014 */  sw         $zero, 0x14($sp)
/* 25E84 80025284 AFA00010 */  sw         $zero, 0x10($sp)
/* 25E88 80025288 24050001 */  addiu      $a1, $zero, 1
/* 25E8C 8002528C 00003025 */  or         $a2, $zero, $zero
/* 25E90 80025290 0C0209BC */  jal        func_800826F0
/* 25E94 80025294 24074000 */   addiu     $a3, $zero, 0x4000
/* 25E98 80025298 00002025 */  or         $a0, $zero, $zero
/* 25E9C 8002529C 0C011D43 */  jal        func_8004750C
/* 25EA0 800252A0 24050024 */   addiu     $a1, $zero, 0x24
/* 25EA4 800252A4 100000F6 */  b          .L80025680
/* 25EA8 800252A8 00000000 */   nop
.L800252AC:
/* 25EAC 800252AC 3C188016 */  lui        $t8, %hi(D_801631F4)
/* 25EB0 800252B0 271831F4 */  addiu      $t8, $t8, %lo(D_801631F4)
/* 25EB4 800252B4 8F090028 */  lw         $t1, 0x28($t8)
/* 25EB8 800252B8 152000F1 */  bnez       $t1, .L80025680
/* 25EBC 800252BC 00000000 */   nop
/* 25EC0 800252C0 240F0001 */  addiu      $t7, $zero, 1
/* 25EC4 800252C4 3C0E802A */  lui        $t6, %hi(D_802A2000)
/* 25EC8 800252C8 AF0F0028 */  sw         $t7, 0x28($t8)
/* 25ECC 800252CC 25CE2000 */  addiu      $t6, $t6, %lo(D_802A2000)
/* 25ED0 800252D0 240D0001 */  addiu      $t5, $zero, 1
/* 25ED4 800252D4 3C04802A */  lui        $a0, %hi(D_802A2000)
/* 25ED8 800252D8 ADCD0208 */  sw         $t5, 0x208($t6)
/* 25EDC 800252DC 24842000 */  addiu      $a0, $a0, %lo(D_802A2000)
/* 25EE0 800252E0 0C011B4C */  jal        func_80046D30
/* 25EE4 800252E4 24050004 */   addiu     $a1, $zero, 4
/* 25EE8 800252E8 3C0C800D */  lui        $t4, %hi(D_800D6A8C)
/* 25EEC 800252EC 8D8C6A8C */  lw         $t4, %lo(D_800D6A8C)($t4)
/* 25EF0 800252F0 240A0001 */  addiu      $t2, $zero, 1
/* 25EF4 800252F4 3C0B802A */  lui        $t3, %hi(D_802A2B80)
/* 25EF8 800252F8 256B2B80 */  addiu      $t3, $t3, %lo(D_802A2B80)
/* 25EFC 800252FC 3C19802A */  lui        $t9, %hi(D_802A2000)
/* 25F00 80025300 AD8A0274 */  sw         $t2, 0x274($t4)
/* 25F04 80025304 AD600030 */  sw         $zero, 0x30($t3)
/* 25F08 80025308 27392000 */  addiu      $t9, $t9, %lo(D_802A2000)
/* 25F0C 8002530C 3C08802A */  lui        $t0, %hi(D_802A2000)
/* 25F10 80025310 AF2003E8 */  sw         $zero, 0x3e8($t9)
/* 25F14 80025314 25082000 */  addiu      $t0, $t0, %lo(D_802A2000)
/* 25F18 80025318 AD000410 */  sw         $zero, 0x410($t0)
/* 25F1C 8002531C 3C09802A */  lui        $t1, %hi(D_802A2000)
/* 25F20 80025320 25292000 */  addiu      $t1, $t1, %lo(D_802A2000)
/* 25F24 80025324 3C18802A */  lui        $t8, %hi(D_802A2000)
/* 25F28 80025328 AD200438 */  sw         $zero, 0x438($t1)
/* 25F2C 8002532C 27182000 */  addiu      $t8, $t8, %lo(D_802A2000)
/* 25F30 80025330 240F0001 */  addiu      $t7, $zero, 1
/* 25F34 80025334 3C0E802A */  lui        $t6, %hi(D_802A2000)
/* 25F38 80025338 AF0F0500 */  sw         $t7, 0x500($t8)
/* 25F3C 8002533C 25CE2000 */  addiu      $t6, $t6, %lo(D_802A2000)
/* 25F40 80025340 240D0001 */  addiu      $t5, $zero, 1
/* 25F44 80025344 3C0C802A */  lui        $t4, %hi(D_802A2000)
/* 25F48 80025348 ADCD0528 */  sw         $t5, 0x528($t6)
/* 25F4C 8002534C 258C2000 */  addiu      $t4, $t4, %lo(D_802A2000)
/* 25F50 80025350 3C19802A */  lui        $t9, %hi(D_802A2000)
/* 25F54 80025354 AD8A0550 */  sw         $t2, 0x550($t4)
/* 25F58 80025358 27392000 */  addiu      $t9, $t9, %lo(D_802A2000)
/* 25F5C 8002535C 240B0001 */  addiu      $t3, $zero, 1
/* 25F60 80025360 3C08801C */  lui        $t0, %hi(D_801C5D40)
/* 25F64 80025364 AF2B0578 */  sw         $t3, 0x578($t9)
/* 25F68 80025368 25085D40 */  addiu      $t0, $t0, %lo(D_801C5D40)
/* 25F6C 8002536C 8D040038 */  lw         $a0, 0x38($t0)
/* 25F70 80025370 AFA00014 */  sw         $zero, 0x14($sp)
/* 25F74 80025374 AFA00010 */  sw         $zero, 0x10($sp)
/* 25F78 80025378 24050001 */  addiu      $a1, $zero, 1
/* 25F7C 8002537C 00003025 */  or         $a2, $zero, $zero
/* 25F80 80025380 0C0209BC */  jal        func_800826F0
/* 25F84 80025384 24074000 */   addiu     $a3, $zero, 0x4000
/* 25F88 80025388 10000547 */  b          .L800268A8
/* 25F8C 8002538C 00000000 */   nop
/* 25F90 80025390 24090078 */  addiu      $t1, $zero, 0x78
/* 25F94 80025394 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 25F98 80025398 AC29ED80 */  sw         $t1, %lo(D_8015ED80)($at)
/* 25F9C 8002539C 3C018016 */  lui        $at, %hi(D_8015ED8C)
/* 25FA0 800253A0 240F0078 */  addiu      $t7, $zero, 0x78
/* 25FA4 800253A4 10000540 */  b          .L800268A8
/* 25FA8 800253A8 AC2FED8C */   sw        $t7, %lo(D_8015ED8C)($at)
.L800253AC:
/* 25FAC 800253AC 3C0D8016 */  lui        $t5, %hi(D_8015F464)
/* 25FB0 800253B0 3C0A8016 */  lui        $t2, %hi(D_8015F468)
/* 25FB4 800253B4 8D4AF468 */  lw         $t2, %lo(D_8015F468)($t2)
/* 25FB8 800253B8 8DADF464 */  lw         $t5, %lo(D_8015F464)($t5)
/* 25FBC 800253BC 3C018016 */  lui        $at, 0x8016
/* 25FC0 800253C0 000A6080 */  sll        $t4, $t2, 2
/* 25FC4 800253C4 000D7100 */  sll        $t6, $t5, 4
/* 25FC8 800253C8 018A6023 */  subu       $t4, $t4, $t2
/* 25FCC 800253CC 01CD7023 */  subu       $t6, $t6, $t5
/* 25FD0 800253D0 000E70C0 */  sll        $t6, $t6, 3
/* 25FD4 800253D4 000C60C0 */  sll        $t4, $t4, 3
/* 25FD8 800253D8 01CC5821 */  addu       $t3, $t6, $t4
/* 25FDC 800253DC 002B0821 */  addu       $at, $at, $t3
/* 25FE0 800253E0 24180001 */  addiu      $t8, $zero, 1
/* 25FE4 800253E4 AC380C8C */  sw         $t8, 0xc8c($at)
/* 25FE8 800253E8 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 25FEC 800253EC 24190078 */  addiu      $t9, $zero, 0x78
/* 25FF0 800253F0 24080021 */  addiu      $t0, $zero, 0x21
/* 25FF4 800253F4 AC39ED80 */  sw         $t9, %lo(D_8015ED80)($at)
/* 25FF8 800253F8 1000052B */  b          .L800268A8
/* 25FFC 800253FC AFA800F4 */   sw        $t0, 0xf4($sp)
.L80025400:
/* 26000 80025400 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 26004 80025404 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 26008 80025408 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 2600C 8002540C 000F6880 */  sll        $t5, $t7, 2
/* 26010 80025410 01AF6823 */  subu       $t5, $t5, $t7
/* 26014 80025414 000D6880 */  sll        $t5, $t5, 2
/* 26018 80025418 01AF6823 */  subu       $t5, $t5, $t7
/* 2601C 8002541C 000D6880 */  sll        $t5, $t5, 2
/* 26020 80025420 01AF6821 */  addu       $t5, $t5, $t7
/* 26024 80025424 000D6880 */  sll        $t5, $t5, 2
/* 26028 80025428 01AF6823 */  subu       $t5, $t5, $t7
/* 2602C 8002542C 000D6880 */  sll        $t5, $t5, 2
/* 26030 80025430 012D5021 */  addu       $t2, $t1, $t5
/* 26034 80025434 8D4E0088 */  lw         $t6, 0x88($t2)
/* 26038 80025438 24010003 */  addiu      $at, $zero, 3
/* 2603C 8002543C 15C1051A */  bne        $t6, $at, .L800268A8
/* 26040 80025440 00000000 */   nop
/* 26044 80025444 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* 26048 80025448 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* 2604C 8002544C C55000E4 */  lwc1       $f16, 0xe4($t2)
/* 26050 80025450 000CC080 */  sll        $t8, $t4, 2
/* 26054 80025454 030CC023 */  subu       $t8, $t8, $t4
/* 26058 80025458 0018C080 */  sll        $t8, $t8, 2
/* 2605C 8002545C 030CC023 */  subu       $t8, $t8, $t4
/* 26060 80025460 0018C080 */  sll        $t8, $t8, 2
/* 26064 80025464 030CC021 */  addu       $t8, $t8, $t4
/* 26068 80025468 0018C080 */  sll        $t8, $t8, 2
/* 2606C 8002546C 030CC023 */  subu       $t8, $t8, $t4
/* 26070 80025470 0018C080 */  sll        $t8, $t8, 2
/* 26074 80025474 01385821 */  addu       $t3, $t1, $t8
/* 26078 80025478 C56400E4 */  lwc1       $f4, 0xe4($t3)
/* 2607C 8002547C 0C004788 */  jal        func_80011E20
/* 26080 80025480 46048301 */   sub.s     $f12, $f16, $f4
/* 26084 80025484 3C014049 */  lui        $at, 0x4049
/* 26088 80025488 44814800 */  mtc1       $at, $f9
/* 2608C 8002548C 44804000 */  mtc1       $zero, $f8
/* 26090 80025490 460001A1 */  cvt.d.s    $f6, $f0
/* 26094 80025494 4628303C */  c.lt.d     $f6, $f8
/* 26098 80025498 00000000 */  nop
/* 2609C 8002549C 45000502 */  bc1f       .L800268A8
/* 260A0 800254A0 00000000 */   nop
/* 260A4 800254A4 0C055D30 */  jal        func_801574C0
/* 260A8 800254A8 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 260AC 800254AC 14400006 */  bnez       $v0, .L800254C8
/* 260B0 800254B0 00000000 */   nop
/* 260B4 800254B4 3C198016 */  lui        $t9, %hi(D_8015F464)
/* 260B8 800254B8 8F39F464 */  lw         $t9, %lo(D_8015F464)($t9)
/* 260BC 800254BC 24010005 */  addiu      $at, $zero, 5
/* 260C0 800254C0 172104F9 */  bne        $t9, $at, .L800268A8
/* 260C4 800254C4 00000000 */   nop
.L800254C8:
/* 260C8 800254C8 24080019 */  addiu      $t0, $zero, 0x19
/* 260CC 800254CC AFA800F4 */  sw         $t0, 0xf4($sp)
.L800254D0:
/* 260D0 800254D0 100004F5 */  b          .L800268A8
/* 260D4 800254D4 00000000 */   nop
/* 260D8 800254D8 0C055D30 */  jal        func_801574C0
/* 260DC 800254DC 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 260E0 800254E0 1440000E */  bnez       $v0, .L8002551C
/* 260E4 800254E4 00000000 */   nop
/* 260E8 800254E8 3C0F8016 */  lui        $t7, %hi(D_8015F464)
/* 260EC 800254EC 8DEFF464 */  lw         $t7, %lo(D_8015F464)($t7)
/* 260F0 800254F0 24010005 */  addiu      $at, $zero, 5
/* 260F4 800254F4 11E10009 */  beq        $t7, $at, .L8002551C
/* 260F8 800254F8 24010008 */   addiu     $at, $zero, 8
/* 260FC 800254FC 11E10007 */  beq        $t7, $at, .L8002551C
/* 26100 80025500 00000000 */   nop
/* 26104 80025504 11E00005 */  beqz       $t7, .L8002551C
/* 26108 80025508 24010004 */   addiu     $at, $zero, 4
/* 2610C 8002550C 11E10003 */  beq        $t7, $at, .L8002551C
/* 26110 80025510 24010003 */   addiu     $at, $zero, 3
/* 26114 80025514 15E1003E */  bne        $t7, $at, .L80025610
/* 26118 80025518 00000000 */   nop
.L8002551C:
/* 2611C 8002551C 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 26120 80025520 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 26124 80025524 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 26128 80025528 000E5080 */  sll        $t2, $t6, 2
/* 2612C 8002552C 014E5023 */  subu       $t2, $t2, $t6
/* 26130 80025530 000A5080 */  sll        $t2, $t2, 2
/* 26134 80025534 014E5023 */  subu       $t2, $t2, $t6
/* 26138 80025538 000A5080 */  sll        $t2, $t2, 2
/* 2613C 8002553C 014E5021 */  addu       $t2, $t2, $t6
/* 26140 80025540 000A5080 */  sll        $t2, $t2, 2
/* 26144 80025544 014E5023 */  subu       $t2, $t2, $t6
/* 26148 80025548 000A5080 */  sll        $t2, $t2, 2
/* 2614C 8002554C 01AA6021 */  addu       $t4, $t5, $t2
/* 26150 80025550 8D890088 */  lw         $t1, 0x88($t4)
/* 26154 80025554 24010003 */  addiu      $at, $zero, 3
/* 26158 80025558 1521002A */  bne        $t1, $at, .L80025604
/* 2615C 8002555C 00000000 */   nop
/* 26160 80025560 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* 26164 80025564 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* 26168 80025568 C59200E4 */  lwc1       $f18, 0xe4($t4)
/* 2616C 8002556C 00185880 */  sll        $t3, $t8, 2
/* 26170 80025570 01785823 */  subu       $t3, $t3, $t8
/* 26174 80025574 000B5880 */  sll        $t3, $t3, 2
/* 26178 80025578 01785823 */  subu       $t3, $t3, $t8
/* 2617C 8002557C 000B5880 */  sll        $t3, $t3, 2
/* 26180 80025580 01785821 */  addu       $t3, $t3, $t8
/* 26184 80025584 000B5880 */  sll        $t3, $t3, 2
/* 26188 80025588 01785823 */  subu       $t3, $t3, $t8
/* 2618C 8002558C 000B5880 */  sll        $t3, $t3, 2
/* 26190 80025590 01ABC821 */  addu       $t9, $t5, $t3
/* 26194 80025594 C72A00E4 */  lwc1       $f10, 0xe4($t9)
/* 26198 80025598 0C004788 */  jal        func_80011E20
/* 2619C 8002559C 460A9301 */   sub.s     $f12, $f18, $f10
/* 261A0 800255A0 3C014049 */  lui        $at, 0x4049
/* 261A4 800255A4 44812800 */  mtc1       $at, $f5
/* 261A8 800255A8 44802000 */  mtc1       $zero, $f4
/* 261AC 800255AC 46000421 */  cvt.d.s    $f16, $f0
/* 261B0 800255B0 4624803C */  c.lt.d     $f16, $f4
/* 261B4 800255B4 00000000 */  nop
/* 261B8 800255B8 45000012 */  bc1f       .L80025604
/* 261BC 800255BC 00000000 */   nop
/* 261C0 800255C0 8FA800E0 */  lw         $t0, 0xe0($sp)
/* 261C4 800255C4 3C01800D */  lui        $at, 0x800d
/* 261C8 800255C8 C7A600DC */  lwc1       $f6, 0xdc($sp)
/* 261CC 800255CC 00087900 */  sll        $t7, $t0, 4
/* 261D0 800255D0 01E87823 */  subu       $t7, $t7, $t0
/* 261D4 800255D4 000F7880 */  sll        $t7, $t7, 2
/* 261D8 800255D8 002F0821 */  addu       $at, $at, $t7
/* 261DC 800255DC C42872DC */  lwc1       $f8, 0x72dc($at)
/* 261E0 800255E0 4608303C */  c.lt.s     $f6, $f8
/* 261E4 800255E4 00000000 */  nop
/* 261E8 800255E8 45000025 */  bc1f       .L80025680
/* 261EC 800255EC 00000000 */   nop
/* 261F0 800255F0 240E001A */  addiu      $t6, $zero, 0x1a
/* 261F4 800255F4 240A001E */  addiu      $t2, $zero, 0x1e
/* 261F8 800255F8 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 261FC 800255FC 100004AA */  b          .L800268A8
/* 26200 80025600 AFAA00EC */   sw        $t2, 0xec($sp)
.L80025604:
/* 26204 80025604 2409001A */  addiu      $t1, $zero, 0x1a
/* 26208 80025608 100004A7 */  b          .L800268A8
/* 2620C 8002560C AFA900F4 */   sw        $t1, 0xf4($sp)
.L80025610:
/* 26210 80025610 240C0013 */  addiu      $t4, $zero, 0x13
/* 26214 80025614 100004A4 */  b          .L800268A8
/* 26218 80025618 AFAC00F4 */   sw        $t4, 0xf4($sp)
/* 2621C 8002561C 8FB800E0 */  lw         $t8, 0xe0($sp)
/* 26220 80025620 3C01800D */  lui        $at, 0x800d
/* 26224 80025624 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 26228 80025628 00186900 */  sll        $t5, $t8, 4
/* 2622C 8002562C 01B86823 */  subu       $t5, $t5, $t8
/* 26230 80025630 000D6880 */  sll        $t5, $t5, 2
/* 26234 80025634 002D0821 */  addu       $at, $at, $t5
/* 26238 80025638 C42A72E0 */  lwc1       $f10, 0x72e0($at)
/* 2623C 8002563C 460A903C */  c.lt.s     $f18, $f10
/* 26240 80025640 00000000 */  nop
/* 26244 80025644 4500000B */  bc1f       .L80025674
/* 26248 80025648 00000000 */   nop
/* 2624C 8002564C 3C198016 */  lui        $t9, %hi(D_8015ED80)
/* 26250 80025650 8F39ED80 */  lw         $t9, %lo(D_8015ED80)($t9)
/* 26254 80025654 240B0013 */  addiu      $t3, $zero, 0x13
/* 26258 80025658 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 2625C 8002565C 17200492 */  bnez       $t9, .L800268A8
/* 26260 80025660 00000000 */   nop
/* 26264 80025664 24080190 */  addiu      $t0, $zero, 0x190
/* 26268 80025668 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 2626C 8002566C 1000048E */  b          .L800268A8
/* 26270 80025670 AC28ED80 */   sw        $t0, %lo(D_8015ED80)($at)
.L80025674:
/* 26274 80025674 240F0019 */  addiu      $t7, $zero, 0x19
/* 26278 80025678 1000048B */  b          .L800268A8
/* 2627C 8002567C AFAF00F4 */   sw        $t7, 0xf4($sp)
.L80025680:
/* 26280 80025680 10000489 */  b          .L800268A8
/* 26284 80025684 00000000 */   nop
/* 26288 80025688 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 2628C 8002568C 24010013 */  addiu      $at, $zero, 0x13
/* 26290 80025690 12010005 */  beq        $s0, $at, .L800256A8
/* 26294 80025694 2401001A */   addiu     $at, $zero, 0x1a
/* 26298 80025698 12010047 */  beq        $s0, $at, .L800257B8
/* 2629C 8002569C 00000000 */   nop
/* 262A0 800256A0 10000043 */  b          .L800257B0
/* 262A4 800256A4 00000000 */   nop
.L800256A8:
/* 262A8 800256A8 3C0E8018 */  lui        $t6, %hi(D_8017A320)
/* 262AC 800256AC 85CEA320 */  lh         $t6, %lo(D_8017A320)($t6)
/* 262B0 800256B0 15C0047D */  bnez       $t6, .L800268A8
/* 262B4 800256B4 00000000 */   nop
/* 262B8 800256B8 3C0A800E */  lui        $t2, %hi(D_800D9DCC)
/* 262BC 800256BC 8D4A9DCC */  lw         $t2, %lo(D_800D9DCC)($t2)
/* 262C0 800256C0 15400479 */  bnez       $t2, .L800268A8
/* 262C4 800256C4 00000000 */   nop
/* 262C8 800256C8 3C098016 */  lui        $t1, %hi(D_8015ED80)
/* 262CC 800256CC 8D29ED80 */  lw         $t1, %lo(D_8015ED80)($t1)
/* 262D0 800256D0 11200475 */  beqz       $t1, .L800268A8
/* 262D4 800256D4 2921000A */   slti      $at, $t1, 0xa
/* 262D8 800256D8 10200473 */  beqz       $at, .L800268A8
/* 262DC 800256DC 00000000 */   nop
/* 262E0 800256E0 3C18802D */  lui        $t8, %hi(D_802CBE00)
/* 262E4 800256E4 2718BE00 */  addiu      $t8, $t8, %lo(D_802CBE00)
/* 262E8 800256E8 240C0001 */  addiu      $t4, $zero, 1
/* 262EC 800256EC 3C0B802D */  lui        $t3, %hi(D_802CBE00)
/* 262F0 800256F0 AF0C09D8 */  sw         $t4, 0x9d8($t8)
/* 262F4 800256F4 256BBE00 */  addiu      $t3, $t3, %lo(D_802CBE00)
/* 262F8 800256F8 240D0001 */  addiu      $t5, $zero, 1
/* 262FC 800256FC AD6D0A00 */  sw         $t5, 0xa00($t3)
/* 26300 80025700 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 26304 80025704 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 26308 80025708 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2630C 8002570C 000F7080 */  sll        $t6, $t7, 2
/* 26310 80025710 01CF7023 */  subu       $t6, $t6, $t7
/* 26314 80025714 000E7080 */  sll        $t6, $t6, 2
/* 26318 80025718 01CF7023 */  subu       $t6, $t6, $t7
/* 2631C 8002571C 000E7080 */  sll        $t6, $t6, 2
/* 26320 80025720 01CF7021 */  addu       $t6, $t6, $t7
/* 26324 80025724 000E7080 */  sll        $t6, $t6, 2
/* 26328 80025728 01CF7023 */  subu       $t6, $t6, $t7
/* 2632C 8002572C 000E7080 */  sll        $t6, $t6, 2
/* 26330 80025730 24190020 */  addiu      $t9, $zero, 0x20
/* 26334 80025734 010E5021 */  addu       $t2, $t0, $t6
/* 26338 80025738 AD590064 */  sw         $t9, 0x64($t2)
/* 2633C 8002573C 00002025 */  or         $a0, $zero, $zero
/* 26340 80025740 0C011D43 */  jal        func_8004750C
/* 26344 80025744 24050023 */   addiu     $a1, $zero, 0x23
/* 26348 80025748 24040001 */  addiu      $a0, $zero, 1
/* 2634C 8002574C 0C011D43 */  jal        func_8004750C
/* 26350 80025750 24050023 */   addiu     $a1, $zero, 0x23
/* 26354 80025754 2404000A */  addiu      $a0, $zero, 0xa
/* 26358 80025758 0C011D43 */  jal        func_8004750C
/* 2635C 8002575C 24050023 */   addiu     $a1, $zero, 0x23
/* 26360 80025760 2404000B */  addiu      $a0, $zero, 0xb
/* 26364 80025764 0C011D43 */  jal        func_8004750C
/* 26368 80025768 24050023 */   addiu     $a1, $zero, 0x23
/* 2636C 8002576C 24040008 */  addiu      $a0, $zero, 8
/* 26370 80025770 0C011D43 */  jal        func_8004750C
/* 26374 80025774 24050023 */   addiu     $a1, $zero, 0x23
/* 26378 80025778 24040009 */  addiu      $a0, $zero, 9
/* 2637C 8002577C 0C011D43 */  jal        func_8004750C
/* 26380 80025780 24050023 */   addiu     $a1, $zero, 0x23
/* 26384 80025784 3C09801C */  lui        $t1, %hi(D_801C5D40)
/* 26388 80025788 25295D40 */  addiu      $t1, $t1, %lo(D_801C5D40)
/* 2638C 8002578C 8D240028 */  lw         $a0, 0x28($t1)
/* 26390 80025790 AFA00014 */  sw         $zero, 0x14($sp)
/* 26394 80025794 AFA00010 */  sw         $zero, 0x10($sp)
/* 26398 80025798 24050001 */  addiu      $a1, $zero, 1
/* 2639C 8002579C 00003025 */  or         $a2, $zero, $zero
/* 263A0 800257A0 0C0209BC */  jal        func_800826F0
/* 263A4 800257A4 24074000 */   addiu     $a3, $zero, 0x4000
/* 263A8 800257A8 1000043F */  b          .L800268A8
/* 263AC 800257AC 00000000 */   nop
.L800257B0:
/* 263B0 800257B0 240C001A */  addiu      $t4, $zero, 0x1a
/* 263B4 800257B4 AFAC00F4 */  sw         $t4, 0xf4($sp)
.L800257B8:
/* 263B8 800257B8 8FB800E0 */  lw         $t8, 0xe0($sp)
/* 263BC 800257BC 3C01800D */  lui        $at, 0x800d
/* 263C0 800257C0 C7B000DC */  lwc1       $f16, 0xdc($sp)
/* 263C4 800257C4 00186900 */  sll        $t5, $t8, 4
/* 263C8 800257C8 01B86823 */  subu       $t5, $t5, $t8
/* 263CC 800257CC 000D6880 */  sll        $t5, $t5, 2
/* 263D0 800257D0 002D0821 */  addu       $at, $at, $t5
/* 263D4 800257D4 C42472E0 */  lwc1       $f4, 0x72e0($at)
/* 263D8 800257D8 4604803C */  c.lt.s     $f16, $f4
/* 263DC 800257DC 00000000 */  nop
/* 263E0 800257E0 45000431 */  bc1f       .L800268A8
/* 263E4 800257E4 00000000 */   nop
/* 263E8 800257E8 3C0F8016 */  lui        $t7, %hi(D_8015ED80)
/* 263EC 800257EC 8DEFED80 */  lw         $t7, %lo(D_8015ED80)($t7)
/* 263F0 800257F0 240B0013 */  addiu      $t3, $zero, 0x13
/* 263F4 800257F4 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 263F8 800257F8 15E0042B */  bnez       $t7, .L800268A8
/* 263FC 800257FC 00000000 */   nop
/* 26400 80025800 24080014 */  addiu      $t0, $zero, 0x14
/* 26404 80025804 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 26408 80025808 10000427 */  b          .L800268A8
/* 2640C 8002580C AC28ED80 */   sw        $t0, %lo(D_8015ED80)($at)
/* 26410 80025810 3C0E8018 */  lui        $t6, %hi(D_8017A320)
/* 26414 80025814 85CEA320 */  lh         $t6, %lo(D_8017A320)($t6)
/* 26418 80025818 15C00423 */  bnez       $t6, .L800268A8
/* 2641C 8002581C 00000000 */   nop
/* 26420 80025820 3C19800E */  lui        $t9, %hi(D_800D9DCC)
/* 26424 80025824 8F399DCC */  lw         $t9, %lo(D_800D9DCC)($t9)
/* 26428 80025828 1720041F */  bnez       $t9, .L800268A8
/* 2642C 8002582C 00000000 */   nop
/* 26430 80025830 3C0A8016 */  lui        $t2, %hi(D_8015ED80)
/* 26434 80025834 8D4AED80 */  lw         $t2, %lo(D_8015ED80)($t2)
/* 26438 80025838 1140003F */  beqz       $t2, .L80025938
/* 2643C 8002583C 00000000 */   nop
/* 26440 80025840 0C00848D */  jal        func_80021234
/* 26444 80025844 8FA400F8 */   lw        $a0, 0xf8($sp)
/* 26448 80025848 3C098016 */  lui        $t1, %hi(D_8015F464)
/* 2644C 8002584C 8D29F464 */  lw         $t1, %lo(D_8015F464)($t1)
/* 26450 80025850 24010005 */  addiu      $at, $zero, 5
/* 26454 80025854 11210009 */  beq        $t1, $at, .L8002587C
/* 26458 80025858 24010008 */   addiu     $at, $zero, 8
/* 2645C 8002585C 11210007 */  beq        $t1, $at, .L8002587C
/* 26460 80025860 00000000 */   nop
/* 26464 80025864 11200005 */  beqz       $t1, .L8002587C
/* 26468 80025868 24010004 */   addiu     $at, $zero, 4
/* 2646C 8002586C 11210003 */  beq        $t1, $at, .L8002587C
/* 26470 80025870 24010003 */   addiu     $at, $zero, 3
/* 26474 80025874 15210009 */  bne        $t1, $at, .L8002589C
/* 26478 80025878 00000000 */   nop
.L8002587C:
/* 2647C 8002587C 3C0C8016 */  lui        $t4, %hi(D_8015ED80)
/* 26480 80025880 8D8CED80 */  lw         $t4, %lo(D_8015ED80)($t4)
/* 26484 80025884 29810015 */  slti       $at, $t4, 0x15
/* 26488 80025888 14200004 */  bnez       $at, .L8002589C
/* 2648C 8002588C 00000000 */   nop
/* 26490 80025890 24180014 */  addiu      $t8, $zero, 0x14
/* 26494 80025894 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 26498 80025898 AC38ED80 */  sw         $t8, %lo(D_8015ED80)($at)
.L8002589C:
/* 2649C 8002589C 3C0D8016 */  lui        $t5, %hi(D_8015ED80)
/* 264A0 800258A0 8DADED80 */  lw         $t5, %lo(D_8015ED80)($t5)
/* 264A4 800258A4 29A1000A */  slti       $at, $t5, 0xa
/* 264A8 800258A8 102003FF */  beqz       $at, .L800268A8
/* 264AC 800258AC 00000000 */   nop
/* 264B0 800258B0 3C058018 */  lui        $a1, %hi(D_8017F768)
/* 264B4 800258B4 3C0B8014 */  lui        $t3, %hi(D_8013F948)
/* 264B8 800258B8 3C0F8014 */  lui        $t7, %hi(D_8013F950)
/* 264BC 800258BC 8DEFF950 */  lw         $t7, %lo(D_8013F950)($t7)
/* 264C0 800258C0 8D6BF948 */  lw         $t3, %lo(D_8013F948)($t3)
/* 264C4 800258C4 8CA5F768 */  lw         $a1, %lo(D_8017F768)($a1)
/* 264C8 800258C8 3C017FFF */  lui        $at, 0x7fff
/* 264CC 800258CC 3421FFFF */  ori        $at, $at, 0xffff
/* 264D0 800258D0 3C048014 */  lui        $a0, %hi(D_8013F940)
/* 264D4 800258D4 3C068018 */  lui        $a2, %hi(D_8017F8B8)
/* 264D8 800258D8 3C078018 */  lui        $a3, %hi(D_8017FA00)
/* 264DC 800258DC 8CE7FA00 */  lw         $a3, %lo(D_8017FA00)($a3)
/* 264E0 800258E0 8CC6F8B8 */  lw         $a2, %lo(D_8017F8B8)($a2)
/* 264E4 800258E4 8C84F940 */  lw         $a0, %lo(D_8013F940)($a0)
/* 264E8 800258E8 AFAF0014 */  sw         $t7, 0x14($sp)
/* 264EC 800258EC AFAB0010 */  sw         $t3, 0x10($sp)
/* 264F0 800258F0 0C0209BC */  jal        func_800826F0
/* 264F4 800258F4 00A12824 */   and       $a1, $a1, $at
/* 264F8 800258F8 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 264FC 800258FC 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 26500 80025900 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 26504 80025904 00195080 */  sll        $t2, $t9, 2
/* 26508 80025908 01595023 */  subu       $t2, $t2, $t9
/* 2650C 8002590C 000A5080 */  sll        $t2, $t2, 2
/* 26510 80025910 01595023 */  subu       $t2, $t2, $t9
/* 26514 80025914 000A5080 */  sll        $t2, $t2, 2
/* 26518 80025918 01595021 */  addu       $t2, $t2, $t9
/* 2651C 8002591C 000A5080 */  sll        $t2, $t2, 2
/* 26520 80025920 01595023 */  subu       $t2, $t2, $t9
/* 26524 80025924 000A5080 */  sll        $t2, $t2, 2
/* 26528 80025928 2408003A */  addiu      $t0, $zero, 0x3a
/* 2652C 8002592C 01CA4821 */  addu       $t1, $t6, $t2
/* 26530 80025930 100003DD */  b          .L800268A8
/* 26534 80025934 AD280064 */   sw        $t0, 0x64($t1)
.L80025938:
/* 26538 80025938 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 2653C 8002593C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 26540 80025940 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 26544 80025944 00186880 */  sll        $t5, $t8, 2
/* 26548 80025948 01B86823 */  subu       $t5, $t5, $t8
/* 2654C 8002594C 000D6880 */  sll        $t5, $t5, 2
/* 26550 80025950 01B86823 */  subu       $t5, $t5, $t8
/* 26554 80025954 000D6880 */  sll        $t5, $t5, 2
/* 26558 80025958 01B86821 */  addu       $t5, $t5, $t8
/* 2655C 8002595C 000D6880 */  sll        $t5, $t5, 2
/* 26560 80025960 01B86823 */  subu       $t5, $t5, $t8
/* 26564 80025964 000D6880 */  sll        $t5, $t5, 2
/* 26568 80025968 018D5821 */  addu       $t3, $t4, $t5
/* 2656C 8002596C 8D6F0088 */  lw         $t7, 0x88($t3)
/* 26570 80025970 24010003 */  addiu      $at, $zero, 3
/* 26574 80025974 15E103CC */  bne        $t7, $at, .L800268A8
/* 26578 80025978 00000000 */   nop
/* 2657C 8002597C 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 26580 80025980 3C01800D */  lui        $at, 0x800d
/* 26584 80025984 C7A600DC */  lwc1       $f6, 0xdc($sp)
/* 26588 80025988 00197100 */  sll        $t6, $t9, 4
/* 2658C 8002598C 01D97023 */  subu       $t6, $t6, $t9
/* 26590 80025990 000E7080 */  sll        $t6, $t6, 2
/* 26594 80025994 002E0821 */  addu       $at, $at, $t6
/* 26598 80025998 C42872DC */  lwc1       $f8, 0x72dc($at)
/* 2659C 8002599C 4608303C */  c.lt.s     $f6, $f8
/* 265A0 800259A0 00000000 */  nop
/* 265A4 800259A4 450003C0 */  bc1f       .L800268A8
/* 265A8 800259A8 00000000 */   nop
/* 265AC 800259AC 240A0190 */  addiu      $t2, $zero, 0x190
/* 265B0 800259B0 3C018016 */  lui        $at, %hi(D_8015ED80)
/* 265B4 800259B4 100003BC */  b          .L800268A8
/* 265B8 800259B8 AC2AED80 */   sw        $t2, %lo(D_8015ED80)($at)
/* 265BC 800259BC 3C088018 */  lui        $t0, %hi(D_8017A320)
/* 265C0 800259C0 8508A320 */  lh         $t0, %lo(D_8017A320)($t0)
/* 265C4 800259C4 150003B8 */  bnez       $t0, .L800268A8
/* 265C8 800259C8 00000000 */   nop
/* 265CC 800259CC 3C09800E */  lui        $t1, %hi(D_800D9DCC)
/* 265D0 800259D0 8D299DCC */  lw         $t1, %lo(D_800D9DCC)($t1)
/* 265D4 800259D4 152003B4 */  bnez       $t1, .L800268A8
/* 265D8 800259D8 00000000 */   nop
/* 265DC 800259DC 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 265E0 800259E0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 265E4 800259E4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 265E8 800259E8 000C6880 */  sll        $t5, $t4, 2
/* 265EC 800259EC 01AC6823 */  subu       $t5, $t5, $t4
/* 265F0 800259F0 000D6880 */  sll        $t5, $t5, 2
/* 265F4 800259F4 01AC6823 */  subu       $t5, $t5, $t4
/* 265F8 800259F8 000D6880 */  sll        $t5, $t5, 2
/* 265FC 800259FC 01AC6821 */  addu       $t5, $t5, $t4
/* 26600 80025A00 000D6880 */  sll        $t5, $t5, 2
/* 26604 80025A04 01AC6823 */  subu       $t5, $t5, $t4
/* 26608 80025A08 000D6880 */  sll        $t5, $t5, 2
/* 2660C 80025A0C 030D5821 */  addu       $t3, $t8, $t5
/* 26610 80025A10 8D6F0088 */  lw         $t7, 0x88($t3)
/* 26614 80025A14 24010003 */  addiu      $at, $zero, 3
/* 26618 80025A18 15E10011 */  bne        $t7, $at, .L80025A60
/* 2661C 80025A1C 00000000 */   nop
/* 26620 80025A20 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 26624 80025A24 3C01800D */  lui        $at, 0x800d
/* 26628 80025A28 C7B200DC */  lwc1       $f18, 0xdc($sp)
/* 2662C 80025A2C 00197100 */  sll        $t6, $t9, 4
/* 26630 80025A30 01D97023 */  subu       $t6, $t6, $t9
/* 26634 80025A34 000E7080 */  sll        $t6, $t6, 2
/* 26638 80025A38 002E0821 */  addu       $at, $at, $t6
/* 2663C 80025A3C C42A72DC */  lwc1       $f10, 0x72dc($at)
/* 26640 80025A40 3C0142C8 */  lui        $at, 0x42c8
/* 26644 80025A44 44818000 */  mtc1       $at, $f16
/* 26648 80025A48 00000000 */  nop
/* 2664C 80025A4C 46105100 */  add.s      $f4, $f10, $f16
/* 26650 80025A50 4612203C */  c.lt.s     $f4, $f18
/* 26654 80025A54 00000000 */  nop
/* 26658 80025A58 45000393 */  bc1f       .L800268A8
/* 2665C 80025A5C 00000000 */   nop
.L80025A60:
/* 26660 80025A60 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 26664 80025A64 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 26668 80025A68 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2666C 80025A6C 00096080 */  sll        $t4, $t1, 2
/* 26670 80025A70 01896023 */  subu       $t4, $t4, $t1
/* 26674 80025A74 000C6080 */  sll        $t4, $t4, 2
/* 26678 80025A78 01896023 */  subu       $t4, $t4, $t1
/* 2667C 80025A7C 000C6080 */  sll        $t4, $t4, 2
/* 26680 80025A80 01896021 */  addu       $t4, $t4, $t1
/* 26684 80025A84 000C6080 */  sll        $t4, $t4, 2
/* 26688 80025A88 01896023 */  subu       $t4, $t4, $t1
/* 2668C 80025A8C 000C6080 */  sll        $t4, $t4, 2
/* 26690 80025A90 240A0039 */  addiu      $t2, $zero, 0x39
/* 26694 80025A94 010CC021 */  addu       $t8, $t0, $t4
/* 26698 80025A98 10000383 */  b          .L800268A8
/* 2669C 80025A9C AF0A0064 */   sw        $t2, 0x64($t8)
/* 266A0 80025AA0 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 266A4 80025AA4 24010013 */  addiu      $at, $zero, 0x13
/* 266A8 80025AA8 12010009 */  beq        $s0, $at, .L80025AD0
/* 266AC 80025AAC 24010030 */   addiu     $at, $zero, 0x30
/* 266B0 80025AB0 1201004A */  beq        $s0, $at, .L80025BDC
/* 266B4 80025AB4 2401003A */   addiu     $at, $zero, 0x3a
/* 266B8 80025AB8 12010027 */  beq        $s0, $at, .L80025B58
/* 266BC 80025ABC 00000000 */   nop
/* 266C0 80025AC0 240D0013 */  addiu      $t5, $zero, 0x13
/* 266C4 80025AC4 240B001E */  addiu      $t3, $zero, 0x1e
/* 266C8 80025AC8 AFAD00F4 */  sw         $t5, 0xf4($sp)
/* 266CC 80025ACC AFAB00EC */  sw         $t3, 0xec($sp)
.L80025AD0:
/* 266D0 80025AD0 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 266D4 80025AD4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 266D8 80025AD8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 266DC 80025ADC 00197080 */  sll        $t6, $t9, 2
/* 266E0 80025AE0 01D97023 */  subu       $t6, $t6, $t9
/* 266E4 80025AE4 000E7080 */  sll        $t6, $t6, 2
/* 266E8 80025AE8 01D97023 */  subu       $t6, $t6, $t9
/* 266EC 80025AEC 000E7080 */  sll        $t6, $t6, 2
/* 266F0 80025AF0 01D97021 */  addu       $t6, $t6, $t9
/* 266F4 80025AF4 000E7080 */  sll        $t6, $t6, 2
/* 266F8 80025AF8 01D97023 */  subu       $t6, $t6, $t9
/* 266FC 80025AFC 000E7080 */  sll        $t6, $t6, 2
/* 26700 80025B00 01EE4821 */  addu       $t1, $t7, $t6
/* 26704 80025B04 8D280088 */  lw         $t0, 0x88($t1)
/* 26708 80025B08 24010003 */  addiu      $at, $zero, 3
/* 2670C 80025B0C 1501000F */  bne        $t0, $at, .L80025B4C
/* 26710 80025B10 3C0143FA */   lui       $at, 0x43fa
/* 26714 80025B14 44814000 */  mtc1       $at, $f8
/* 26718 80025B18 C52600AC */  lwc1       $f6, 0xac($t1)
/* 2671C 80025B1C 4608303C */  c.lt.s     $f6, $f8
/* 26720 80025B20 00000000 */  nop
/* 26724 80025B24 45000004 */  bc1f       .L80025B38
/* 26728 80025B28 00000000 */   nop
/* 2672C 80025B2C 240C0030 */  addiu      $t4, $zero, 0x30
/* 26730 80025B30 1000035D */  b          .L800268A8
/* 26734 80025B34 AFAC00F4 */   sw        $t4, 0xf4($sp)
.L80025B38:
/* 26738 80025B38 240A003A */  addiu      $t2, $zero, 0x3a
/* 2673C 80025B3C 2418001E */  addiu      $t8, $zero, 0x1e
/* 26740 80025B40 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 26744 80025B44 10000358 */  b          .L800268A8
/* 26748 80025B48 AFB800EC */   sw        $t8, 0xec($sp)
.L80025B4C:
/* 2674C 80025B4C 240D001E */  addiu      $t5, $zero, 0x1e
/* 26750 80025B50 10000355 */  b          .L800268A8
/* 26754 80025B54 AFAD00EC */   sw        $t5, 0xec($sp)
.L80025B58:
/* 26758 80025B58 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 2675C 80025B5C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 26760 80025B60 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 26764 80025B64 00197880 */  sll        $t7, $t9, 2
/* 26768 80025B68 01F97823 */  subu       $t7, $t7, $t9
/* 2676C 80025B6C 000F7880 */  sll        $t7, $t7, 2
/* 26770 80025B70 01F97823 */  subu       $t7, $t7, $t9
/* 26774 80025B74 000F7880 */  sll        $t7, $t7, 2
/* 26778 80025B78 01F97821 */  addu       $t7, $t7, $t9
/* 2677C 80025B7C 000F7880 */  sll        $t7, $t7, 2
/* 26780 80025B80 01F97823 */  subu       $t7, $t7, $t9
/* 26784 80025B84 000F7880 */  sll        $t7, $t7, 2
/* 26788 80025B88 016F7021 */  addu       $t6, $t3, $t7
/* 2678C 80025B8C 8DC80088 */  lw         $t0, 0x88($t6)
/* 26790 80025B90 24010003 */  addiu      $at, $zero, 3
/* 26794 80025B94 1501000C */  bne        $t0, $at, .L80025BC8
/* 26798 80025B98 00000000 */   nop
/* 2679C 80025B9C C5CA00AC */  lwc1       $f10, 0xac($t6)
/* 267A0 80025BA0 3C01800E */  lui        $at, %hi(D_800DC888)
/* 267A4 80025BA4 D432C888 */  ldc1       $f18, %lo(D_800DC888)($at)
/* 267A8 80025BA8 46005421 */  cvt.d.s    $f16, $f10
/* 267AC 80025BAC 4632803C */  c.lt.d     $f16, $f18
/* 267B0 80025BB0 00000000 */  nop
/* 267B4 80025BB4 4500033C */  bc1f       .L800268A8
/* 267B8 80025BB8 00000000 */   nop
/* 267BC 80025BBC 24090030 */  addiu      $t1, $zero, 0x30
/* 267C0 80025BC0 10000339 */  b          .L800268A8
/* 267C4 80025BC4 AFA900F4 */   sw        $t1, 0xf4($sp)
.L80025BC8:
/* 267C8 80025BC8 240C0013 */  addiu      $t4, $zero, 0x13
/* 267CC 80025BCC 240A001E */  addiu      $t2, $zero, 0x1e
/* 267D0 80025BD0 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* 267D4 80025BD4 10000334 */  b          .L800268A8
/* 267D8 80025BD8 AFAA00EC */   sw        $t2, 0xec($sp)
.L80025BDC:
/* 267DC 80025BDC 24180013 */  addiu      $t8, $zero, 0x13
/* 267E0 80025BE0 240D001E */  addiu      $t5, $zero, 0x1e
/* 267E4 80025BE4 AFB800F4 */  sw         $t8, 0xf4($sp)
/* 267E8 80025BE8 1000032F */  b          .L800268A8
/* 267EC 80025BEC AFAD00EC */   sw        $t5, 0xec($sp)
/* 267F0 80025BF0 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 267F4 80025BF4 2401001A */  addiu      $at, $zero, 0x1a
/* 267F8 80025BF8 12010037 */  beq        $s0, $at, .L80025CD8
/* 267FC 80025BFC 24010030 */   addiu     $at, $zero, 0x30
/* 26800 80025C00 12010003 */  beq        $s0, $at, .L80025C10
/* 26804 80025C04 00000000 */   nop
/* 26808 80025C08 24190030 */  addiu      $t9, $zero, 0x30
/* 2680C 80025C0C AFB900F4 */  sw         $t9, 0xf4($sp)
.L80025C10:
/* 26810 80025C10 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 26814 80025C14 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 26818 80025C18 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 2681C 80025C1C 000F4080 */  sll        $t0, $t7, 2
/* 26820 80025C20 010F4023 */  subu       $t0, $t0, $t7
/* 26824 80025C24 00084080 */  sll        $t0, $t0, 2
/* 26828 80025C28 010F4023 */  subu       $t0, $t0, $t7
/* 2682C 80025C2C 00084080 */  sll        $t0, $t0, 2
/* 26830 80025C30 010F4021 */  addu       $t0, $t0, $t7
/* 26834 80025C34 00084080 */  sll        $t0, $t0, 2
/* 26838 80025C38 010F4023 */  subu       $t0, $t0, $t7
/* 2683C 80025C3C 00084080 */  sll        $t0, $t0, 2
/* 26840 80025C40 01687021 */  addu       $t6, $t3, $t0
/* 26844 80025C44 C5C400AC */  lwc1       $f4, 0xac($t6)
/* 26848 80025C48 3C01800E */  lui        $at, %hi(D_800DC890)
/* 2684C 80025C4C D428C890 */  ldc1       $f8, %lo(D_800DC890)($at)
/* 26850 80025C50 460021A1 */  cvt.d.s    $f6, $f4
/* 26854 80025C54 4626403C */  c.lt.d     $f8, $f6
/* 26858 80025C58 00000000 */  nop
/* 2685C 80025C5C 45010019 */  bc1t       .L80025CC4
/* 26860 80025C60 00000000 */   nop
/* 26864 80025C64 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 26868 80025C68 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 2686C 80025C6C C5CA00E4 */  lwc1       $f10, 0xe4($t6)
/* 26870 80025C70 00096080 */  sll        $t4, $t1, 2
/* 26874 80025C74 01896023 */  subu       $t4, $t4, $t1
/* 26878 80025C78 000C6080 */  sll        $t4, $t4, 2
/* 2687C 80025C7C 01896023 */  subu       $t4, $t4, $t1
/* 26880 80025C80 000C6080 */  sll        $t4, $t4, 2
/* 26884 80025C84 01896021 */  addu       $t4, $t4, $t1
/* 26888 80025C88 000C6080 */  sll        $t4, $t4, 2
/* 2688C 80025C8C 01896023 */  subu       $t4, $t4, $t1
/* 26890 80025C90 000C6080 */  sll        $t4, $t4, 2
/* 26894 80025C94 016C5021 */  addu       $t2, $t3, $t4
/* 26898 80025C98 C55000E4 */  lwc1       $f16, 0xe4($t2)
/* 2689C 80025C9C 0C004788 */  jal        func_80011E20
/* 268A0 80025CA0 46105301 */   sub.s     $f12, $f10, $f16
/* 268A4 80025CA4 3C014069 */  lui        $at, 0x4069
/* 268A8 80025CA8 44812800 */  mtc1       $at, $f5
/* 268AC 80025CAC 44802000 */  mtc1       $zero, $f4
/* 268B0 80025CB0 460004A1 */  cvt.d.s    $f18, $f0
/* 268B4 80025CB4 4632203C */  c.lt.d     $f4, $f18
/* 268B8 80025CB8 00000000 */  nop
/* 268BC 80025CBC 450002FA */  bc1f       .L800268A8
/* 268C0 80025CC0 00000000 */   nop
.L80025CC4:
/* 268C4 80025CC4 2418001A */  addiu      $t8, $zero, 0x1a
/* 268C8 80025CC8 240D001E */  addiu      $t5, $zero, 0x1e
/* 268CC 80025CCC AFB800F4 */  sw         $t8, 0xf4($sp)
/* 268D0 80025CD0 100002F5 */  b          .L800268A8
/* 268D4 80025CD4 AFAD00EC */   sw        $t5, 0xec($sp)
.L80025CD8:
/* 268D8 80025CD8 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 268DC 80025CDC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 268E0 80025CE0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 268E4 80025CE4 000F4080 */  sll        $t0, $t7, 2
/* 268E8 80025CE8 010F4023 */  subu       $t0, $t0, $t7
/* 268EC 80025CEC 00084080 */  sll        $t0, $t0, 2
/* 268F0 80025CF0 010F4023 */  subu       $t0, $t0, $t7
/* 268F4 80025CF4 00084080 */  sll        $t0, $t0, 2
/* 268F8 80025CF8 010F4021 */  addu       $t0, $t0, $t7
/* 268FC 80025CFC 00084080 */  sll        $t0, $t0, 2
/* 26900 80025D00 010F4023 */  subu       $t0, $t0, $t7
/* 26904 80025D04 00084080 */  sll        $t0, $t0, 2
/* 26908 80025D08 03287021 */  addu       $t6, $t9, $t0
/* 2690C 80025D0C C5C600AC */  lwc1       $f6, 0xac($t6)
/* 26910 80025D10 3C01800E */  lui        $at, %hi(D_800DC898)
/* 26914 80025D14 D42AC898 */  ldc1       $f10, %lo(D_800DC898)($at)
/* 26918 80025D18 46003221 */  cvt.d.s    $f8, $f6
/* 2691C 80025D1C 462A403C */  c.lt.d     $f8, $f10
/* 26920 80025D20 00000000 */  nop
/* 26924 80025D24 450002E0 */  bc1f       .L800268A8
/* 26928 80025D28 00000000 */   nop
/* 2692C 80025D2C 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 26930 80025D30 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 26934 80025D34 C5D000E4 */  lwc1       $f16, 0xe4($t6)
/* 26938 80025D38 00095880 */  sll        $t3, $t1, 2
/* 2693C 80025D3C 01695823 */  subu       $t3, $t3, $t1
/* 26940 80025D40 000B5880 */  sll        $t3, $t3, 2
/* 26944 80025D44 01695823 */  subu       $t3, $t3, $t1
/* 26948 80025D48 000B5880 */  sll        $t3, $t3, 2
/* 2694C 80025D4C 01695821 */  addu       $t3, $t3, $t1
/* 26950 80025D50 000B5880 */  sll        $t3, $t3, 2
/* 26954 80025D54 01695823 */  subu       $t3, $t3, $t1
/* 26958 80025D58 000B5880 */  sll        $t3, $t3, 2
/* 2695C 80025D5C 032B6021 */  addu       $t4, $t9, $t3
/* 26960 80025D60 C59200E4 */  lwc1       $f18, 0xe4($t4)
/* 26964 80025D64 0C004788 */  jal        func_80011E20
/* 26968 80025D68 46128301 */   sub.s     $f12, $f16, $f18
/* 2696C 80025D6C 3C014069 */  lui        $at, 0x4069
/* 26970 80025D70 44813800 */  mtc1       $at, $f7
/* 26974 80025D74 44803000 */  mtc1       $zero, $f6
/* 26978 80025D78 46000121 */  cvt.d.s    $f4, $f0
/* 2697C 80025D7C 4626203C */  c.lt.d     $f4, $f6
/* 26980 80025D80 00000000 */  nop
/* 26984 80025D84 450002C8 */  bc1f       .L800268A8
/* 26988 80025D88 00000000 */   nop
/* 2698C 80025D8C 240A0030 */  addiu      $t2, $zero, 0x30
/* 26990 80025D90 2418001E */  addiu      $t8, $zero, 0x1e
/* 26994 80025D94 AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 26998 80025D98 100002C3 */  b          .L800268A8
/* 2699C 80025D9C AFB800EC */   sw        $t8, 0xec($sp)
/* 269A0 80025DA0 8FB000F4 */  lw         $s0, 0xf4($sp)
/* 269A4 80025DA4 2401002D */  addiu      $at, $zero, 0x2d
/* 269A8 80025DA8 1201001D */  beq        $s0, $at, .L80025E20
/* 269AC 80025DAC 24010030 */   addiu     $at, $zero, 0x30
/* 269B0 80025DB0 12010003 */  beq        $s0, $at, .L80025DC0
/* 269B4 80025DB4 00000000 */   nop
/* 269B8 80025DB8 240D0030 */  addiu      $t5, $zero, 0x30
/* 269BC 80025DBC AFAD00F4 */  sw         $t5, 0xf4($sp)
.L80025DC0:
/* 269C0 80025DC0 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 269C4 80025DC4 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 269C8 80025DC8 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 269CC 80025DCC 00087080 */  sll        $t6, $t0, 2
/* 269D0 80025DD0 01C87023 */  subu       $t6, $t6, $t0
/* 269D4 80025DD4 000E7080 */  sll        $t6, $t6, 2
/* 269D8 80025DD8 01C87023 */  subu       $t6, $t6, $t0
/* 269DC 80025DDC 000E7080 */  sll        $t6, $t6, 2
/* 269E0 80025DE0 01C87021 */  addu       $t6, $t6, $t0
/* 269E4 80025DE4 000E7080 */  sll        $t6, $t6, 2
/* 269E8 80025DE8 01C87023 */  subu       $t6, $t6, $t0
/* 269EC 80025DEC 000E7080 */  sll        $t6, $t6, 2
/* 269F0 80025DF0 01EE4821 */  addu       $t1, $t7, $t6
/* 269F4 80025DF4 C52800AC */  lwc1       $f8, 0xac($t1)
/* 269F8 80025DF8 3C01800E */  lui        $at, %hi(D_800DC8A0)
/* 269FC 80025DFC D430C8A0 */  ldc1       $f16, %lo(D_800DC8A0)($at)
/* 26A00 80025E00 460042A1 */  cvt.d.s    $f10, $f8
/* 26A04 80025E04 462A803C */  c.lt.d     $f16, $f10
/* 26A08 80025E08 00000000 */  nop
/* 26A0C 80025E0C 450002A6 */  bc1f       .L800268A8
/* 26A10 80025E10 00000000 */   nop
/* 26A14 80025E14 2419002D */  addiu      $t9, $zero, 0x2d
/* 26A18 80025E18 100002A3 */  b          .L800268A8
/* 26A1C 80025E1C AFB900F4 */   sw        $t9, 0xf4($sp)
.L80025E20:
/* 26A20 80025E20 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 26A24 80025E24 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 26A28 80025E28 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 26A2C 80025E2C 000C5080 */  sll        $t2, $t4, 2
/* 26A30 80025E30 014C5023 */  subu       $t2, $t2, $t4
/* 26A34 80025E34 000A5080 */  sll        $t2, $t2, 2
/* 26A38 80025E38 014C5023 */  subu       $t2, $t2, $t4
/* 26A3C 80025E3C 000A5080 */  sll        $t2, $t2, 2
/* 26A40 80025E40 014C5021 */  addu       $t2, $t2, $t4
/* 26A44 80025E44 000A5080 */  sll        $t2, $t2, 2
/* 26A48 80025E48 014C5023 */  subu       $t2, $t2, $t4
/* 26A4C 80025E4C 000A5080 */  sll        $t2, $t2, 2
/* 26A50 80025E50 016AC021 */  addu       $t8, $t3, $t2
/* 26A54 80025E54 C71200AC */  lwc1       $f18, 0xac($t8)
/* 26A58 80025E58 3C01800E */  lui        $at, %hi(D_800DC8A8)
/* 26A5C 80025E5C D426C8A8 */  ldc1       $f6, %lo(D_800DC8A8)($at)
/* 26A60 80025E60 46009121 */  cvt.d.s    $f4, $f18
/* 26A64 80025E64 4626203C */  c.lt.d     $f4, $f6
/* 26A68 80025E68 00000000 */  nop
/* 26A6C 80025E6C 45000004 */  bc1f       .L80025E80
/* 26A70 80025E70 00000000 */   nop
/* 26A74 80025E74 240D0030 */  addiu      $t5, $zero, 0x30
/* 26A78 80025E78 1000028B */  b          .L800268A8
/* 26A7C 80025E7C AFAD00F4 */   sw        $t5, 0xf4($sp)
.L80025E80:
/* 26A80 80025E80 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 26A84 80025E84 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 26A88 80025E88 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 26A8C 80025E8C 000F7080 */  sll        $t6, $t7, 2
/* 26A90 80025E90 01CF7023 */  subu       $t6, $t6, $t7
/* 26A94 80025E94 000E7080 */  sll        $t6, $t6, 2
/* 26A98 80025E98 01CF7023 */  subu       $t6, $t6, $t7
/* 26A9C 80025E9C 000E7080 */  sll        $t6, $t6, 2
/* 26AA0 80025EA0 01CF7021 */  addu       $t6, $t6, $t7
/* 26AA4 80025EA4 000E7080 */  sll        $t6, $t6, 2
/* 26AA8 80025EA8 01CF7023 */  subu       $t6, $t6, $t7
/* 26AAC 80025EAC 000E7080 */  sll        $t6, $t6, 2
/* 26AB0 80025EB0 010E4821 */  addu       $t1, $t0, $t6
/* 26AB4 80025EB4 8D390070 */  lw         $t9, 0x70($t1)
/* 26AB8 80025EB8 AFB90050 */  sw         $t9, 0x50($sp)
/* 26ABC 80025EBC C5320094 */  lwc1       $f18, 0x94($t1)
/* 26AC0 80025EC0 C53000E8 */  lwc1       $f16, 0xe8($t1)
/* 26AC4 80025EC4 C52A008C */  lwc1       $f10, 0x8c($t1)
/* 26AC8 80025EC8 C52800E0 */  lwc1       $f8, 0xe0($t1)
/* 26ACC 80025ECC 46128381 */  sub.s      $f14, $f16, $f18
/* 26AD0 80025ED0 0C00475A */  jal        func_80011D68
/* 26AD4 80025ED4 460A4301 */   sub.s     $f12, $f8, $f10
/* 26AD8 80025ED8 E7A00054 */  swc1       $f0, 0x54($sp)
/* 26ADC 80025EDC C7A40054 */  lwc1       $f4, 0x54($sp)
/* 26AE0 80025EE0 3C014049 */  lui        $at, 0x4049
/* 26AE4 80025EE4 44814800 */  mtc1       $at, $f9
/* 26AE8 80025EE8 44804000 */  mtc1       $zero, $f8
/* 26AEC 80025EEC 460021A1 */  cvt.d.s    $f6, $f4
/* 26AF0 80025EF0 4626403C */  c.lt.d     $f8, $f6
/* 26AF4 80025EF4 00000000 */  nop
/* 26AF8 80025EF8 4500005E */  bc1f       .L80026074
/* 26AFC 80025EFC 00000000 */   nop
/* 26B00 80025F00 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 26B04 80025F04 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 26B08 80025F08 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 26B0C 80025F0C 000B5080 */  sll        $t2, $t3, 2
/* 26B10 80025F10 014B5023 */  subu       $t2, $t2, $t3
/* 26B14 80025F14 000A5080 */  sll        $t2, $t2, 2
/* 26B18 80025F18 014B5023 */  subu       $t2, $t2, $t3
/* 26B1C 80025F1C 000A5080 */  sll        $t2, $t2, 2
/* 26B20 80025F20 014B5021 */  addu       $t2, $t2, $t3
/* 26B24 80025F24 000A5080 */  sll        $t2, $t2, 2
/* 26B28 80025F28 014B5023 */  subu       $t2, $t2, $t3
/* 26B2C 80025F2C 000A5080 */  sll        $t2, $t2, 2
/* 26B30 80025F30 018AC021 */  addu       $t8, $t4, $t2
/* 26B34 80025F34 C70A0094 */  lwc1       $f10, 0x94($t8)
/* 26B38 80025F38 C71000E8 */  lwc1       $f16, 0xe8($t8)
/* 26B3C 80025F3C C704008C */  lwc1       $f4, 0x8c($t8)
/* 26B40 80025F40 C70600E0 */  lwc1       $f6, 0xe0($t8)
/* 26B44 80025F44 46105481 */  sub.s      $f18, $f10, $f16
/* 26B48 80025F48 C70C0100 */  lwc1       $f12, 0x100($t8)
/* 26B4C 80025F4C C70E00FC */  lwc1       $f14, 0xfc($t8)
/* 26B50 80025F50 46062201 */  sub.s      $f8, $f4, $f6
/* 26B54 80025F54 44069000 */  mfc1       $a2, $f18
/* 26B58 80025F58 44074000 */  mfc1       $a3, $f8
/* 26B5C 80025F5C 0C004794 */  jal        func_80011E50
/* 26B60 80025F60 00000000 */   nop
/* 26B64 80025F64 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 26B68 80025F68 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 26B6C 80025F6C 3C0D8016 */  lui        $t5, 0x8016
/* 26B70 80025F70 460A0403 */  div.s      $f16, $f0, $f10
/* 26B74 80025F74 000F4080 */  sll        $t0, $t7, 2
/* 26B78 80025F78 010F4023 */  subu       $t0, $t0, $t7
/* 26B7C 80025F7C 00084080 */  sll        $t0, $t0, 2
/* 26B80 80025F80 010F4023 */  subu       $t0, $t0, $t7
/* 26B84 80025F84 00084080 */  sll        $t0, $t0, 2
/* 26B88 80025F88 010F4021 */  addu       $t0, $t0, $t7
/* 26B8C 80025F8C 8DADFB9C */  lw         $t5, -0x464($t5)
/* 26B90 80025F90 00084080 */  sll        $t0, $t0, 2
/* 26B94 80025F94 010F4023 */  subu       $t0, $t0, $t7
/* 26B98 80025F98 00084080 */  sll        $t0, $t0, 2
/* 26B9C 80025F9C 01A87021 */  addu       $t6, $t5, $t0
/* 26BA0 80025FA0 E7B00058 */  swc1       $f16, 0x58($sp)
/* 26BA4 80025FA4 C5CA00E8 */  lwc1       $f10, 0xe8($t6)
/* 26BA8 80025FA8 C5C80094 */  lwc1       $f8, 0x94($t6)
/* 26BAC 80025FAC C5C400E0 */  lwc1       $f4, 0xe0($t6)
/* 26BB0 80025FB0 C5D2008C */  lwc1       $f18, 0x8c($t6)
/* 26BB4 80025FB4 460A4401 */  sub.s      $f16, $f8, $f10
/* 26BB8 80025FB8 C5CE00FC */  lwc1       $f14, 0xfc($t6)
/* 26BBC 80025FBC C5CC0100 */  lwc1       $f12, 0x100($t6)
/* 26BC0 80025FC0 46049181 */  sub.s      $f6, $f18, $f4
/* 26BC4 80025FC4 46008487 */  neg.s      $f18, $f16
/* 26BC8 80025FC8 44063000 */  mfc1       $a2, $f6
/* 26BCC 80025FCC 44079000 */  mfc1       $a3, $f18
/* 26BD0 80025FD0 0C004794 */  jal        func_80011E50
/* 26BD4 80025FD4 00000000 */   nop
/* 26BD8 80025FD8 C7A40054 */  lwc1       $f4, 0x54($sp)
/* 26BDC 80025FDC C7A80058 */  lwc1       $f8, 0x58($sp)
/* 26BE0 80025FE0 3C01800E */  lui        $at, %hi(D_800DC8B0)
/* 26BE4 80025FE4 46040183 */  div.s      $f6, $f0, $f4
/* 26BE8 80025FE8 D430C8B0 */  ldc1       $f16, %lo(D_800DC8B0)($at)
/* 26BEC 80025FEC 460042A1 */  cvt.d.s    $f10, $f8
/* 26BF0 80025FF0 462A803C */  c.lt.d     $f16, $f10
/* 26BF4 80025FF4 00000000 */  nop
/* 26BF8 80025FF8 45000006 */  bc1f       .L80026014
/* 26BFC 80025FFC E7A6005C */   swc1      $f6, 0x5c($sp)
/* 26C00 80026000 8FA400F8 */  lw         $a0, 0xf8($sp)
/* 26C04 80026004 0C007F91 */  jal        func_8001FE44
/* 26C08 80026008 3C0540A0 */   lui       $a1, 0x40a0
/* 26C0C 8002600C 10000004 */  b          .L80026020
/* 26C10 80026010 00000000 */   nop
.L80026014:
/* 26C14 80026014 8FA400F8 */  lw         $a0, 0xf8($sp)
/* 26C18 80026018 0C007F91 */  jal        func_8001FE44
/* 26C1C 8002601C 24050000 */   addiu     $a1, $zero, 0
.L80026020:
/* 26C20 80026020 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* 26C24 80026024 3C01800E */  lui        $at, %hi(D_800DC8B8)
/* 26C28 80026028 D426C8B8 */  ldc1       $f6, %lo(D_800DC8B8)($at)
/* 26C2C 8002602C 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 26C30 80026030 46009121 */  cvt.d.s    $f4, $f18
/* 26C34 80026034 3C198016 */  lui        $t9, 0x8016
/* 26C38 80026038 46262202 */  mul.d      $f8, $f4, $f6
/* 26C3C 8002603C 00095880 */  sll        $t3, $t1, 2
/* 26C40 80026040 01695823 */  subu       $t3, $t3, $t1
/* 26C44 80026044 000B5880 */  sll        $t3, $t3, 2
/* 26C48 80026048 01695823 */  subu       $t3, $t3, $t1
/* 26C4C 8002604C 000B5880 */  sll        $t3, $t3, 2
/* 26C50 80026050 01695821 */  addu       $t3, $t3, $t1
/* 26C54 80026054 8F39FB9C */  lw         $t9, -0x464($t9)
/* 26C58 80026058 000B5880 */  sll        $t3, $t3, 2
/* 26C5C 8002605C 462042A0 */  cvt.s.d    $f10, $f8
/* 26C60 80026060 01695823 */  subu       $t3, $t3, $t1
/* 26C64 80026064 000B5880 */  sll        $t3, $t3, 2
/* 26C68 80026068 032B6021 */  addu       $t4, $t9, $t3
/* 26C6C 8002606C 1000020E */  b          .L800268A8
/* 26C70 80026070 E58A00F4 */   swc1      $f10, 0xf4($t4)
.L80026074:
/* 26C74 80026074 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 26C78 80026078 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 26C7C 8002607C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 26C80 80026080 00187880 */  sll        $t7, $t8, 2
/* 26C84 80026084 01F87823 */  subu       $t7, $t7, $t8
/* 26C88 80026088 000F7880 */  sll        $t7, $t7, 2
/* 26C8C 8002608C 01F87823 */  subu       $t7, $t7, $t8
/* 26C90 80026090 000F7880 */  sll        $t7, $t7, 2
/* 26C94 80026094 01F87821 */  addu       $t7, $t7, $t8
/* 26C98 80026098 000F7880 */  sll        $t7, $t7, 2
/* 26C9C 8002609C 01F87823 */  subu       $t7, $t7, $t8
/* 26CA0 800260A0 000F7880 */  sll        $t7, $t7, 2
/* 26CA4 800260A4 014F6821 */  addu       $t5, $t2, $t7
/* 26CA8 800260A8 8DA800CC */  lw         $t0, 0xcc($t5)
/* 26CAC 800260AC 15000004 */  bnez       $t0, .L800260C0
/* 26CB0 800260B0 00000000 */   nop
/* 26CB4 800260B4 240E0001 */  addiu      $t6, $zero, 1
/* 26CB8 800260B8 1000000F */  b          .L800260F8
/* 26CBC 800260BC ADAE00CC */   sw        $t6, 0xcc($t5)
.L800260C0:
/* 26CC0 800260C0 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 26CC4 800260C4 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 26CC8 800260C8 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 26CCC 800260CC 00195880 */  sll        $t3, $t9, 2
/* 26CD0 800260D0 01795823 */  subu       $t3, $t3, $t9
/* 26CD4 800260D4 000B5880 */  sll        $t3, $t3, 2
/* 26CD8 800260D8 01795823 */  subu       $t3, $t3, $t9
/* 26CDC 800260DC 000B5880 */  sll        $t3, $t3, 2
/* 26CE0 800260E0 01795821 */  addu       $t3, $t3, $t9
/* 26CE4 800260E4 000B5880 */  sll        $t3, $t3, 2
/* 26CE8 800260E8 01795823 */  subu       $t3, $t3, $t9
/* 26CEC 800260EC 000B5880 */  sll        $t3, $t3, 2
/* 26CF0 800260F0 012B6021 */  addu       $t4, $t1, $t3
/* 26CF4 800260F4 AD8000CC */  sw         $zero, 0xcc($t4)
.L800260F8:
/* 26CF8 800260F8 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 26CFC 800260FC 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 26D00 80026100 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 26D04 80026104 000A7880 */  sll        $t7, $t2, 2
/* 26D08 80026108 01EA7823 */  subu       $t7, $t7, $t2
/* 26D0C 8002610C 000F7880 */  sll        $t7, $t7, 2
/* 26D10 80026110 01EA7823 */  subu       $t7, $t7, $t2
/* 26D14 80026114 000F7880 */  sll        $t7, $t7, 2
/* 26D18 80026118 01EA7821 */  addu       $t7, $t7, $t2
/* 26D1C 8002611C 000F7880 */  sll        $t7, $t7, 2
/* 26D20 80026120 01EA7823 */  subu       $t7, $t7, $t2
/* 26D24 80026124 000F7880 */  sll        $t7, $t7, 2
/* 26D28 80026128 030F4021 */  addu       $t0, $t8, $t7
/* 26D2C 8002612C 8D0E00CC */  lw         $t6, 0xcc($t0)
/* 26D30 80026130 8FA90050 */  lw         $t1, 0x50($sp)
/* 26D34 80026134 3C018016 */  lui        $at, 0x8016
/* 26D38 80026138 000E6880 */  sll        $t5, $t6, 2
/* 26D3C 8002613C 00095880 */  sll        $t3, $t1, 2
/* 26D40 80026140 01AE6823 */  subu       $t5, $t5, $t6
/* 26D44 80026144 01695823 */  subu       $t3, $t3, $t1
/* 26D48 80026148 000B58C0 */  sll        $t3, $t3, 3
/* 26D4C 8002614C 000DC880 */  sll        $t9, $t5, 2
/* 26D50 80026150 01796021 */  addu       $t4, $t3, $t9
/* 26D54 80026154 002C0821 */  addu       $at, $at, $t4
/* 26D58 80026158 C43025F4 */  lwc1       $f16, 0x25f4($at)
/* 26D5C 8002615C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 26D60 80026160 3C018016 */  lui        $at, 0x8016
/* 26D64 80026164 E510008C */  swc1       $f16, 0x8c($t0)
/* 26D68 80026168 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 26D6C 8002616C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 26D70 80026170 8FB90050 */  lw         $t9, 0x50($sp)
/* 26D74 80026174 00187880 */  sll        $t7, $t8, 2
/* 26D78 80026178 01F87823 */  subu       $t7, $t7, $t8
/* 26D7C 8002617C 000F7880 */  sll        $t7, $t7, 2
/* 26D80 80026180 01F87823 */  subu       $t7, $t7, $t8
/* 26D84 80026184 000F7880 */  sll        $t7, $t7, 2
/* 26D88 80026188 01F87821 */  addu       $t7, $t7, $t8
/* 26D8C 8002618C 000F7880 */  sll        $t7, $t7, 2
/* 26D90 80026190 01F87823 */  subu       $t7, $t7, $t8
/* 26D94 80026194 000F7880 */  sll        $t7, $t7, 2
/* 26D98 80026198 014F7021 */  addu       $t6, $t2, $t7
/* 26D9C 8002619C 8DCD00CC */  lw         $t5, 0xcc($t6)
/* 26DA0 800261A0 00196080 */  sll        $t4, $t9, 2
/* 26DA4 800261A4 01996023 */  subu       $t4, $t4, $t9
/* 26DA8 800261A8 000D4880 */  sll        $t1, $t5, 2
/* 26DAC 800261AC 012D4823 */  subu       $t1, $t1, $t5
/* 26DB0 800261B0 00095880 */  sll        $t3, $t1, 2
/* 26DB4 800261B4 000C60C0 */  sll        $t4, $t4, 3
/* 26DB8 800261B8 018B4021 */  addu       $t0, $t4, $t3
/* 26DBC 800261BC 00280821 */  addu       $at, $at, $t0
/* 26DC0 800261C0 C43225F8 */  lwc1       $f18, 0x25f8($at)
/* 26DC4 800261C4 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 26DC8 800261C8 3C018016 */  lui        $at, 0x8016
/* 26DCC 800261CC E5D20090 */  swc1       $f18, 0x90($t6)
/* 26DD0 800261D0 8FAA00F8 */  lw         $t2, 0xf8($sp)
/* 26DD4 800261D4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 26DD8 800261D8 8FAB0050 */  lw         $t3, 0x50($sp)
/* 26DDC 800261DC 000A7880 */  sll        $t7, $t2, 2
/* 26DE0 800261E0 01EA7823 */  subu       $t7, $t7, $t2
/* 26DE4 800261E4 000F7880 */  sll        $t7, $t7, 2
/* 26DE8 800261E8 01EA7823 */  subu       $t7, $t7, $t2
/* 26DEC 800261EC 000F7880 */  sll        $t7, $t7, 2
/* 26DF0 800261F0 01EA7821 */  addu       $t7, $t7, $t2
/* 26DF4 800261F4 000F7880 */  sll        $t7, $t7, 2
/* 26DF8 800261F8 01EA7823 */  subu       $t7, $t7, $t2
/* 26DFC 800261FC 000F7880 */  sll        $t7, $t7, 2
/* 26E00 80026200 030F6821 */  addu       $t5, $t8, $t7
/* 26E04 80026204 8DA900CC */  lw         $t1, 0xcc($t5)
/* 26E08 80026208 000B4080 */  sll        $t0, $t3, 2
/* 26E0C 8002620C 010B4023 */  subu       $t0, $t0, $t3
/* 26E10 80026210 0009C880 */  sll        $t9, $t1, 2
/* 26E14 80026214 0329C823 */  subu       $t9, $t9, $t1
/* 26E18 80026218 00196080 */  sll        $t4, $t9, 2
/* 26E1C 8002621C 000840C0 */  sll        $t0, $t0, 3
/* 26E20 80026220 010C7021 */  addu       $t6, $t0, $t4
/* 26E24 80026224 002E0821 */  addu       $at, $at, $t6
/* 26E28 80026228 C42425FC */  lwc1       $f4, 0x25fc($at)
/* 26E2C 8002622C E5A40094 */  swc1       $f4, 0x94($t5)
/* 26E30 80026230 1000019D */  b          .L800268A8
/* 26E34 80026234 00000000 */   nop
/* 26E38 80026238 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 26E3C 8002623C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 26E40 80026240 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 26E44 80026244 00187880 */  sll        $t7, $t8, 2
/* 26E48 80026248 01F87823 */  subu       $t7, $t7, $t8
/* 26E4C 8002624C 000F7880 */  sll        $t7, $t7, 2
/* 26E50 80026250 01F87823 */  subu       $t7, $t7, $t8
/* 26E54 80026254 000F7880 */  sll        $t7, $t7, 2
/* 26E58 80026258 01F87821 */  addu       $t7, $t7, $t8
/* 26E5C 8002625C 000F7880 */  sll        $t7, $t7, 2
/* 26E60 80026260 8FAB00F4 */  lw         $t3, 0xf4($sp)
/* 26E64 80026264 01F87823 */  subu       $t7, $t7, $t8
/* 26E68 80026268 000F7880 */  sll        $t7, $t7, 2
/* 26E6C 8002626C 014F4821 */  addu       $t1, $t2, $t7
/* 26E70 80026270 8D3900A4 */  lw         $t9, 0xa4($t1)
/* 26E74 80026274 2568FFED */  addiu      $t0, $t3, -0x13
/* 26E78 80026278 2D01001A */  sltiu      $at, $t0, 0x1a
/* 26E7C 8002627C 10200007 */  beqz       $at, .L8002629C
/* 26E80 80026280 AFB9004C */   sw        $t9, 0x4c($sp)
/* 26E84 80026284 00084080 */  sll        $t0, $t0, 2
/* 26E88 80026288 3C01800E */  lui        $at, %hi(D_800DC8C0)
/* 26E8C 8002628C 00280821 */  addu       $at, $at, $t0
/* 26E90 80026290 8C28C8C0 */  lw         $t0, %lo(D_800DC8C0)($at)
/* 26E94 80026294 01000008 */  jr         $t0
/* 26E98 80026298 00000000 */   nop
.L8002629C:
/* 26E9C 8002629C 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* 26EA0 800262A0 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 26EA4 800262A4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 26EA8 800262A8 000E6880 */  sll        $t5, $t6, 2
/* 26EAC 800262AC 01AE6823 */  subu       $t5, $t5, $t6
/* 26EB0 800262B0 000D6880 */  sll        $t5, $t5, 2
/* 26EB4 800262B4 01AE6823 */  subu       $t5, $t5, $t6
/* 26EB8 800262B8 000D6880 */  sll        $t5, $t5, 2
/* 26EBC 800262BC 01AE6821 */  addu       $t5, $t5, $t6
/* 26EC0 800262C0 000D6880 */  sll        $t5, $t5, 2
/* 26EC4 800262C4 01AE6823 */  subu       $t5, $t5, $t6
/* 26EC8 800262C8 000D6880 */  sll        $t5, $t5, 2
/* 26ECC 800262CC 018DC021 */  addu       $t8, $t4, $t5
/* 26ED0 800262D0 8F0F00E0 */  lw         $t7, 0xe0($t8)
/* 26ED4 800262D4 8F0A00E4 */  lw         $t2, 0xe4($t8)
/* 26ED8 800262D8 24090013 */  addiu      $t1, $zero, 0x13
/* 26EDC 800262DC AF0F008C */  sw         $t7, 0x8c($t8)
/* 26EE0 800262E0 8F0F00E8 */  lw         $t7, 0xe8($t8)
/* 26EE4 800262E4 AF0A0090 */  sw         $t2, 0x90($t8)
/* 26EE8 800262E8 AF0F0094 */  sw         $t7, 0x94($t8)
/* 26EEC 800262EC AFA900F4 */  sw         $t1, 0xf4($sp)
/* 26EF0 800262F0 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 26EF4 800262F4 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 26EF8 800262F8 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 26EFC 800262FC 000B4080 */  sll        $t0, $t3, 2
/* 26F00 80026300 010B4023 */  subu       $t0, $t0, $t3
/* 26F04 80026304 00084080 */  sll        $t0, $t0, 2
/* 26F08 80026308 010B4023 */  subu       $t0, $t0, $t3
/* 26F0C 8002630C 00084080 */  sll        $t0, $t0, 2
/* 26F10 80026310 010B4021 */  addu       $t0, $t0, $t3
/* 26F14 80026314 00084080 */  sll        $t0, $t0, 2
/* 26F18 80026318 010B4023 */  subu       $t0, $t0, $t3
/* 26F1C 8002631C 00084080 */  sll        $t0, $t0, 2
/* 26F20 80026320 3C0144FA */  lui        $at, 0x44fa
/* 26F24 80026324 03287021 */  addu       $t6, $t9, $t0
/* 26F28 80026328 C5C600AC */  lwc1       $f6, 0xac($t6)
/* 26F2C 8002632C 44814000 */  mtc1       $at, $f8
/* 26F30 80026330 00000000 */  nop
/* 26F34 80026334 4608303E */  c.le.s     $f6, $f8
/* 26F38 80026338 00000000 */  nop
/* 26F3C 8002633C 4500015A */  bc1f       .L800268A8
/* 26F40 80026340 00000000 */   nop
/* 26F44 80026344 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* 26F48 80026348 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* 26F4C 8002634C C5D000EC */  lwc1       $f16, 0xec($t6)
/* 26F50 80026350 000C6880 */  sll        $t5, $t4, 2
/* 26F54 80026354 01AC6823 */  subu       $t5, $t5, $t4
/* 26F58 80026358 000D6880 */  sll        $t5, $t5, 2
/* 26F5C 8002635C 01AC6823 */  subu       $t5, $t5, $t4
/* 26F60 80026360 000D6880 */  sll        $t5, $t5, 2
/* 26F64 80026364 01AC6821 */  addu       $t5, $t5, $t4
/* 26F68 80026368 000D6880 */  sll        $t5, $t5, 2
/* 26F6C 8002636C 01AC6823 */  subu       $t5, $t5, $t4
/* 26F70 80026370 000D6880 */  sll        $t5, $t5, 2
/* 26F74 80026374 032DC021 */  addu       $t8, $t9, $t5
/* 26F78 80026378 C70A00EC */  lwc1       $f10, 0xec($t8)
/* 26F7C 8002637C 46105032 */  c.eq.s     $f10, $f16
/* 26F80 80026380 00000000 */  nop
/* 26F84 80026384 45000148 */  bc1f       .L800268A8
/* 26F88 80026388 00000000 */   nop
/* 26F8C 8002638C 240A0029 */  addiu      $t2, $zero, 0x29
/* 26F90 80026390 10000145 */  b          .L800268A8
/* 26F94 80026394 AFAA00F4 */   sw        $t2, 0xf4($sp)
/* 26F98 80026398 8FA9004C */  lw         $t1, 0x4c($sp)
/* 26F9C 8002639C 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 26FA0 800263A0 3C0F8016 */  lui        $t7, 0x8016
/* 26FA4 800263A4 00095880 */  sll        $t3, $t1, 2
/* 26FA8 800263A8 000CC880 */  sll        $t9, $t4, 2
/* 26FAC 800263AC 01695823 */  subu       $t3, $t3, $t1
/* 26FB0 800263B0 032CC823 */  subu       $t9, $t9, $t4
/* 26FB4 800263B4 0019C880 */  sll        $t9, $t9, 2
/* 26FB8 800263B8 000B5880 */  sll        $t3, $t3, 2
/* 26FBC 800263BC 01695823 */  subu       $t3, $t3, $t1
/* 26FC0 800263C0 032CC823 */  subu       $t9, $t9, $t4
/* 26FC4 800263C4 0019C880 */  sll        $t9, $t9, 2
/* 26FC8 800263C8 000B5880 */  sll        $t3, $t3, 2
/* 26FCC 800263CC 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 26FD0 800263D0 01695821 */  addu       $t3, $t3, $t1
/* 26FD4 800263D4 032CC821 */  addu       $t9, $t9, $t4
/* 26FD8 800263D8 0019C880 */  sll        $t9, $t9, 2
/* 26FDC 800263DC 000B5880 */  sll        $t3, $t3, 2
/* 26FE0 800263E0 01695823 */  subu       $t3, $t3, $t1
/* 26FE4 800263E4 032CC823 */  subu       $t9, $t9, $t4
/* 26FE8 800263E8 0019C880 */  sll        $t9, $t9, 2
/* 26FEC 800263EC 000B5880 */  sll        $t3, $t3, 2
/* 26FF0 800263F0 01EB4021 */  addu       $t0, $t7, $t3
/* 26FF4 800263F4 01F96821 */  addu       $t5, $t7, $t9
/* 26FF8 800263F8 C5A400E4 */  lwc1       $f4, 0xe4($t5)
/* 26FFC 800263FC C51200E4 */  lwc1       $f18, 0xe4($t0)
/* 27000 80026400 0C004788 */  jal        func_80011E20
/* 27004 80026404 46049301 */   sub.s     $f12, $f18, $f4
/* 27008 80026408 3C014348 */  lui        $at, 0x4348
/* 2700C 8002640C 44813000 */  mtc1       $at, $f6
/* 27010 80026410 00000000 */  nop
/* 27014 80026414 4606003C */  c.lt.s     $f0, $f6
/* 27018 80026418 00000000 */  nop
/* 2701C 8002641C 45000122 */  bc1f       .L800268A8
/* 27020 80026420 00000000 */   nop
/* 27024 80026424 2418002A */  addiu      $t8, $zero, 0x2a
/* 27028 80026428 240E003C */  addiu      $t6, $zero, 0x3c
/* 2702C 8002642C AFB800F4 */  sw         $t8, 0xf4($sp)
/* 27030 80026430 1000011D */  b          .L800268A8
/* 27034 80026434 AFAE00EC */   sw        $t6, 0xec($sp)
/* 27038 80026438 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 2703C 8002643C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 27040 80026440 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 27044 80026444 00095880 */  sll        $t3, $t1, 2
/* 27048 80026448 01695823 */  subu       $t3, $t3, $t1
/* 2704C 8002644C 000B5880 */  sll        $t3, $t3, 2
/* 27050 80026450 01695823 */  subu       $t3, $t3, $t1
/* 27054 80026454 000B5880 */  sll        $t3, $t3, 2
/* 27058 80026458 01695821 */  addu       $t3, $t3, $t1
/* 2705C 8002645C 000B5880 */  sll        $t3, $t3, 2
/* 27060 80026460 01695823 */  subu       $t3, $t3, $t1
/* 27064 80026464 000B5880 */  sll        $t3, $t3, 2
/* 27068 80026468 014B4021 */  addu       $t0, $t2, $t3
/* 2706C 8002646C C5080090 */  lwc1       $f8, 0x90($t0)
/* 27070 80026470 C50A00E4 */  lwc1       $f10, 0xe4($t0)
/* 27074 80026474 44802800 */  mtc1       $zero, $f5
/* 27078 80026478 44802000 */  mtc1       $zero, $f4
/* 2707C 8002647C 460A4401 */  sub.s      $f16, $f8, $f10
/* 27080 80026480 460084A1 */  cvt.d.s    $f18, $f16
/* 27084 80026484 4624903C */  c.lt.d     $f18, $f4
/* 27088 80026488 00000000 */  nop
/* 2708C 8002648C 45000106 */  bc1f       .L800268A8
/* 27090 80026490 00000000 */   nop
/* 27094 80026494 8D0F008C */  lw         $t7, 0x8c($t0)
/* 27098 80026498 8D0C0090 */  lw         $t4, 0x90($t0)
/* 2709C 8002649C 24190013 */  addiu      $t9, $zero, 0x13
/* 270A0 800264A0 AD0F00E0 */  sw         $t7, 0xe0($t0)
/* 270A4 800264A4 8D0F0094 */  lw         $t7, 0x94($t0)
/* 270A8 800264A8 AD0C00E4 */  sw         $t4, 0xe4($t0)
/* 270AC 800264AC AD0F00E8 */  sw         $t7, 0xe8($t0)
/* 270B0 800264B0 100000FD */  b          .L800268A8
/* 270B4 800264B4 AFB900F4 */   sw        $t9, 0xf4($sp)
/* 270B8 800264B8 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 270BC 800264BC 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 270C0 800264C0 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 270C4 800264C4 00187080 */  sll        $t6, $t8, 2
/* 270C8 800264C8 01D87023 */  subu       $t6, $t6, $t8
/* 270CC 800264CC 000E7080 */  sll        $t6, $t6, 2
/* 270D0 800264D0 01D87023 */  subu       $t6, $t6, $t8
/* 270D4 800264D4 000E7080 */  sll        $t6, $t6, 2
/* 270D8 800264D8 01D87021 */  addu       $t6, $t6, $t8
/* 270DC 800264DC 000E7080 */  sll        $t6, $t6, 2
/* 270E0 800264E0 01D87023 */  subu       $t6, $t6, $t8
/* 270E4 800264E4 000E7080 */  sll        $t6, $t6, 2
/* 270E8 800264E8 01AE4821 */  addu       $t1, $t5, $t6
/* 270EC 800264EC C52600AC */  lwc1       $f6, 0xac($t1)
/* 270F0 800264F0 3C01800E */  lui        $at, %hi(D_800DC928)
/* 270F4 800264F4 D42AC928 */  ldc1       $f10, %lo(D_800DC928)($at)
/* 270F8 800264F8 46003221 */  cvt.d.s    $f8, $f6
/* 270FC 800264FC 4628503C */  c.lt.d     $f10, $f8
/* 27100 80026500 00000000 */  nop
/* 27104 80026504 45000003 */  bc1f       .L80026514
/* 27108 80026508 00000000 */   nop
/* 2710C 8002650C 240A002B */  addiu      $t2, $zero, 0x2b
/* 27110 80026510 AFAA00F4 */  sw         $t2, 0xf4($sp)
.L80026514:
/* 27114 80026514 240B002A */  addiu      $t3, $zero, 0x2a
/* 27118 80026518 2408003C */  addiu      $t0, $zero, 0x3c
/* 2711C 8002651C AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 27120 80026520 100000E1 */  b          .L800268A8
/* 27124 80026524 AFA800EC */   sw        $t0, 0xec($sp)
/* 27128 80026528 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* 2712C 8002652C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 27130 80026530 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 27134 80026534 000FC880 */  sll        $t9, $t7, 2
/* 27138 80026538 032FC823 */  subu       $t9, $t9, $t7
/* 2713C 8002653C 0019C880 */  sll        $t9, $t9, 2
/* 27140 80026540 032FC823 */  subu       $t9, $t9, $t7
/* 27144 80026544 0019C880 */  sll        $t9, $t9, 2
/* 27148 80026548 032FC821 */  addu       $t9, $t9, $t7
/* 2714C 8002654C 0019C880 */  sll        $t9, $t9, 2
/* 27150 80026550 032FC823 */  subu       $t9, $t9, $t7
/* 27154 80026554 0019C880 */  sll        $t9, $t9, 2
/* 27158 80026558 0199C021 */  addu       $t8, $t4, $t9
/* 2715C 8002655C C71000AC */  lwc1       $f16, 0xac($t8)
/* 27160 80026560 3C01800E */  lui        $at, %hi(D_800DC930)
/* 27164 80026564 D424C930 */  ldc1       $f4, %lo(D_800DC930)($at)
/* 27168 80026568 460084A1 */  cvt.d.s    $f18, $f16
/* 2716C 8002656C 4632203C */  c.lt.d     $f4, $f18
/* 27170 80026570 00000000 */  nop
/* 27174 80026574 45000003 */  bc1f       .L80026584
/* 27178 80026578 00000000 */   nop
/* 2717C 8002657C 240D002B */  addiu      $t5, $zero, 0x2b
/* 27180 80026580 AFAD00F4 */  sw         $t5, 0xf4($sp)
.L80026584:
/* 27184 80026584 240E002C */  addiu      $t6, $zero, 0x2c
/* 27188 80026588 2409003C */  addiu      $t1, $zero, 0x3c
/* 2718C 8002658C AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 27190 80026590 100000C5 */  b          .L800268A8
/* 27194 80026594 AFA900EC */   sw        $t1, 0xec($sp)
/* 27198 80026598 240A0021 */  addiu      $t2, $zero, 0x21
/* 2719C 8002659C 100000C2 */  b          .L800268A8
/* 271A0 800265A0 AFAA00F4 */   sw        $t2, 0xf4($sp)
/* 271A4 800265A4 240B001A */  addiu      $t3, $zero, 0x1a
/* 271A8 800265A8 2408001E */  addiu      $t0, $zero, 0x1e
/* 271AC 800265AC AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 271B0 800265B0 100000BD */  b          .L800268A8
/* 271B4 800265B4 AFA800EC */   sw        $t0, 0xec($sp)
/* 271B8 800265B8 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* 271BC 800265BC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 271C0 800265C0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 271C4 800265C4 000CC880 */  sll        $t9, $t4, 2
/* 271C8 800265C8 032CC823 */  subu       $t9, $t9, $t4
/* 271CC 800265CC 0019C880 */  sll        $t9, $t9, 2
/* 271D0 800265D0 032CC823 */  subu       $t9, $t9, $t4
/* 271D4 800265D4 0019C880 */  sll        $t9, $t9, 2
/* 271D8 800265D8 032CC821 */  addu       $t9, $t9, $t4
/* 271DC 800265DC 0019C880 */  sll        $t9, $t9, 2
/* 271E0 800265E0 032CC823 */  subu       $t9, $t9, $t4
/* 271E4 800265E4 0019C880 */  sll        $t9, $t9, 2
/* 271E8 800265E8 01F9C021 */  addu       $t8, $t7, $t9
/* 271EC 800265EC 8F0D0060 */  lw         $t5, 0x60($t8)
/* 271F0 800265F0 31AE0008 */  andi       $t6, $t5, 8
/* 271F4 800265F4 15C00004 */  bnez       $t6, .L80026608
/* 271F8 800265F8 00000000 */   nop
/* 271FC 800265FC 31A90040 */  andi       $t1, $t5, 0x40
/* 27200 80026600 1120001F */  beqz       $t1, .L80026680
/* 27204 80026604 00000000 */   nop
.L80026608:
/* 27208 80026608 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 2720C 8002660C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 27210 80026610 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 27214 80026614 000B4080 */  sll        $t0, $t3, 2
/* 27218 80026618 010B4023 */  subu       $t0, $t0, $t3
/* 2721C 8002661C 00084080 */  sll        $t0, $t0, 2
/* 27220 80026620 010B4023 */  subu       $t0, $t0, $t3
/* 27224 80026624 00084080 */  sll        $t0, $t0, 2
/* 27228 80026628 010B4021 */  addu       $t0, $t0, $t3
/* 2722C 8002662C 00084080 */  sll        $t0, $t0, 2
/* 27230 80026630 010B4023 */  subu       $t0, $t0, $t3
/* 27234 80026634 00084080 */  sll        $t0, $t0, 2
/* 27238 80026638 01486021 */  addu       $t4, $t2, $t0
/* 2723C 8002663C 8D8F0070 */  lw         $t7, 0x70($t4)
/* 27240 80026640 05E0000A */  bltz       $t7, .L8002666C
/* 27244 80026644 00000000 */   nop
/* 27248 80026648 3C198018 */  lui        $t9, %hi(D_8017A320)
/* 2724C 8002664C 8739A320 */  lh         $t9, %lo(D_8017A320)($t9)
/* 27250 80026650 1720000B */  bnez       $t9, .L80026680
/* 27254 80026654 3C018018 */   lui       $at, %hi(D_8017A324)
/* 27258 80026658 AC20A324 */  sw         $zero, %lo(D_8017A324)($at)
/* 2725C 8002665C 3C01800D */  lui        $at, %hi(D_800D6300)
/* 27260 80026660 2418000F */  addiu      $t8, $zero, 0xf
/* 27264 80026664 10000006 */  b          .L80026680
/* 27268 80026668 AC386300 */   sw        $t8, %lo(D_800D6300)($at)
.L8002666C:
/* 2726C 8002666C 240E0032 */  addiu      $t6, $zero, 0x32
/* 27270 80026670 240D003C */  addiu      $t5, $zero, 0x3c
/* 27274 80026674 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 27278 80026678 1000008B */  b          .L800268A8
/* 2727C 8002667C AFAD00EC */   sw        $t5, 0xec($sp)
.L80026680:
/* 27280 80026680 24090031 */  addiu      $t1, $zero, 0x31
/* 27284 80026684 240B001E */  addiu      $t3, $zero, 0x1e
/* 27288 80026688 AFA900F4 */  sw         $t1, 0xf4($sp)
/* 2728C 8002668C 10000086 */  b          .L800268A8
/* 27290 80026690 AFAB00EC */   sw        $t3, 0xec($sp)
/* 27294 80026694 8FA800F8 */  lw         $t0, 0xf8($sp)
/* 27298 80026698 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 2729C 8002669C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 272A0 800266A0 00086080 */  sll        $t4, $t0, 2
/* 272A4 800266A4 01886023 */  subu       $t4, $t4, $t0
/* 272A8 800266A8 000C6080 */  sll        $t4, $t4, 2
/* 272AC 800266AC 01886023 */  subu       $t4, $t4, $t0
/* 272B0 800266B0 000C6080 */  sll        $t4, $t4, 2
/* 272B4 800266B4 01886021 */  addu       $t4, $t4, $t0
/* 272B8 800266B8 000C6080 */  sll        $t4, $t4, 2
/* 272BC 800266BC 01886023 */  subu       $t4, $t4, $t0
/* 272C0 800266C0 000C6080 */  sll        $t4, $t4, 2
/* 272C4 800266C4 014C7821 */  addu       $t7, $t2, $t4
/* 272C8 800266C8 C5E600AC */  lwc1       $f6, 0xac($t7)
/* 272CC 800266CC 3C01800E */  lui        $at, %hi(D_800DC938)
/* 272D0 800266D0 D42AC938 */  ldc1       $f10, %lo(D_800DC938)($at)
/* 272D4 800266D4 46003221 */  cvt.d.s    $f8, $f6
/* 272D8 800266D8 4628503C */  c.lt.d     $f10, $f8
/* 272DC 800266DC 00000000 */  nop
/* 272E0 800266E0 45000028 */  bc1f       .L80026784
/* 272E4 800266E4 00000000 */   nop
/* 272E8 800266E8 C5F000E0 */  lwc1       $f16, 0xe0($t7)
/* 272EC 800266EC C5F2008C */  lwc1       $f18, 0x8c($t7)
/* 272F0 800266F0 0C004788 */  jal        func_80011E20
/* 272F4 800266F4 46128301 */   sub.s     $f12, $f16, $f18
/* 272F8 800266F8 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 272FC 800266FC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 27300 80026700 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 27304 80026704 00187080 */  sll        $t6, $t8, 2
/* 27308 80026708 01D87023 */  subu       $t6, $t6, $t8
/* 2730C 8002670C 000E7080 */  sll        $t6, $t6, 2
/* 27310 80026710 01D87023 */  subu       $t6, $t6, $t8
/* 27314 80026714 000E7080 */  sll        $t6, $t6, 2
/* 27318 80026718 01D87021 */  addu       $t6, $t6, $t8
/* 2731C 8002671C 000E7080 */  sll        $t6, $t6, 2
/* 27320 80026720 01D87023 */  subu       $t6, $t6, $t8
/* 27324 80026724 000E7080 */  sll        $t6, $t6, 2
/* 27328 80026728 032E6821 */  addu       $t5, $t9, $t6
/* 2732C 8002672C C5A400E8 */  lwc1       $f4, 0xe8($t5)
/* 27330 80026730 C5A60094 */  lwc1       $f6, 0x94($t5)
/* 27334 80026734 46000506 */  mov.s      $f20, $f0
/* 27338 80026738 0C004788 */  jal        func_80011E20
/* 2733C 8002673C 46062301 */   sub.s     $f12, $f4, $f6
/* 27340 80026740 46140200 */  add.s      $f8, $f0, $f20
/* 27344 80026744 44805000 */  mtc1       $zero, $f10
/* 27348 80026748 00000000 */  nop
/* 2734C 8002674C 460A4032 */  c.eq.s     $f8, $f10
/* 27350 80026750 00000000 */  nop
/* 27354 80026754 4501000B */  bc1t       .L80026784
/* 27358 80026758 00000000 */   nop
/* 2735C 8002675C 3C098016 */  lui        $t1, %hi(D_8015F464)
/* 27360 80026760 8D29F464 */  lw         $t1, %lo(D_8015F464)($t1)
/* 27364 80026764 24010006 */  addiu      $at, $zero, 6
/* 27368 80026768 11210006 */  beq        $t1, $at, .L80026784
/* 2736C 8002676C 00000000 */   nop
/* 27370 80026770 240B0033 */  addiu      $t3, $zero, 0x33
/* 27374 80026774 2408001E */  addiu      $t0, $zero, 0x1e
/* 27378 80026778 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* 2737C 8002677C 1000004A */  b          .L800268A8
/* 27380 80026780 AFA800EC */   sw        $t0, 0xec($sp)
.L80026784:
/* 27384 80026784 240A0032 */  addiu      $t2, $zero, 0x32
/* 27388 80026788 240C003C */  addiu      $t4, $zero, 0x3c
/* 2738C 8002678C AFAA00F4 */  sw         $t2, 0xf4($sp)
/* 27390 80026790 10000045 */  b          .L800268A8
/* 27394 80026794 AFAC00EC */   sw        $t4, 0xec($sp)
/* 27398 80026798 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 2739C 8002679C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 273A0 800267A0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 273A4 800267A4 0018C880 */  sll        $t9, $t8, 2
/* 273A8 800267A8 0338C823 */  subu       $t9, $t9, $t8
/* 273AC 800267AC 0019C880 */  sll        $t9, $t9, 2
/* 273B0 800267B0 0338C823 */  subu       $t9, $t9, $t8
/* 273B4 800267B4 0019C880 */  sll        $t9, $t9, 2
/* 273B8 800267B8 0338C821 */  addu       $t9, $t9, $t8
/* 273BC 800267BC 0019C880 */  sll        $t9, $t9, 2
/* 273C0 800267C0 0338C823 */  subu       $t9, $t9, $t8
/* 273C4 800267C4 0019C880 */  sll        $t9, $t9, 2
/* 273C8 800267C8 01F97021 */  addu       $t6, $t7, $t9
/* 273CC 800267CC C5D000E0 */  lwc1       $f16, 0xe0($t6)
/* 273D0 800267D0 C5D2008C */  lwc1       $f18, 0x8c($t6)
/* 273D4 800267D4 0C004788 */  jal        func_80011E20
/* 273D8 800267D8 46128301 */   sub.s     $f12, $f16, $f18
/* 273DC 800267DC 8FA900F8 */  lw         $t1, 0xf8($sp)
/* 273E0 800267E0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 273E4 800267E4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 273E8 800267E8 00095880 */  sll        $t3, $t1, 2
/* 273EC 800267EC 01695823 */  subu       $t3, $t3, $t1
/* 273F0 800267F0 000B5880 */  sll        $t3, $t3, 2
/* 273F4 800267F4 01695823 */  subu       $t3, $t3, $t1
/* 273F8 800267F8 000B5880 */  sll        $t3, $t3, 2
/* 273FC 800267FC 01695821 */  addu       $t3, $t3, $t1
/* 27400 80026800 000B5880 */  sll        $t3, $t3, 2
/* 27404 80026804 01695823 */  subu       $t3, $t3, $t1
/* 27408 80026808 000B5880 */  sll        $t3, $t3, 2
/* 2740C 8002680C 01AB4021 */  addu       $t0, $t5, $t3
/* 27410 80026810 C50400E8 */  lwc1       $f4, 0xe8($t0)
/* 27414 80026814 C5060094 */  lwc1       $f6, 0x94($t0)
/* 27418 80026818 46000506 */  mov.s      $f20, $f0
/* 2741C 8002681C 0C004788 */  jal        func_80011E20
/* 27420 80026820 46062301 */   sub.s     $f12, $f4, $f6
/* 27424 80026824 46140200 */  add.s      $f8, $f0, $f20
/* 27428 80026828 3C014059 */  lui        $at, 0x4059
/* 2742C 8002682C 44819800 */  mtc1       $at, $f19
/* 27430 80026830 44809000 */  mtc1       $zero, $f18
/* 27434 80026834 E7A80048 */  swc1       $f8, 0x48($sp)
/* 27438 80026838 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 2743C 8002683C 46005421 */  cvt.d.s    $f16, $f10
/* 27440 80026840 4632803C */  c.lt.d     $f16, $f18
/* 27444 80026844 00000000 */  nop
/* 27448 80026848 45000015 */  bc1f       .L800268A0
/* 2744C 8002684C 00000000 */   nop
/* 27450 80026850 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 27454 80026854 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 27458 80026858 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 2745C 8002685C 00187880 */  sll        $t7, $t8, 2
/* 27460 80026860 01F87823 */  subu       $t7, $t7, $t8
/* 27464 80026864 000F7880 */  sll        $t7, $t7, 2
/* 27468 80026868 01F87823 */  subu       $t7, $t7, $t8
/* 2746C 8002686C 000F7880 */  sll        $t7, $t7, 2
/* 27470 80026870 01F87821 */  addu       $t7, $t7, $t8
/* 27474 80026874 000F7880 */  sll        $t7, $t7, 2
/* 27478 80026878 01F87823 */  subu       $t7, $t7, $t8
/* 2747C 8002687C 000F7880 */  sll        $t7, $t7, 2
/* 27480 80026880 240A003B */  addiu      $t2, $zero, 0x3b
/* 27484 80026884 018FC821 */  addu       $t9, $t4, $t7
/* 27488 80026888 AF2A0064 */  sw         $t2, 0x64($t9)
/* 2748C 8002688C 240E0031 */  addiu      $t6, $zero, 0x31
/* 27490 80026890 24090064 */  addiu      $t1, $zero, 0x64
/* 27494 80026894 AFAE00F4 */  sw         $t6, 0xf4($sp)
/* 27498 80026898 10000003 */  b          .L800268A8
/* 2749C 8002689C AFA900EC */   sw        $t1, 0xec($sp)
.L800268A0:
/* 274A0 800268A0 240D0034 */  addiu      $t5, $zero, 0x34
/* 274A4 800268A4 AFAD00F4 */  sw         $t5, 0xf4($sp)
.L800268A8:
/* 274A8 800268A8 8FB800F8 */  lw         $t8, 0xf8($sp)
/* 274AC 800268AC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 274B0 800268B0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 274B4 800268B4 00186080 */  sll        $t4, $t8, 2
/* 274B8 800268B8 01986023 */  subu       $t4, $t4, $t8
/* 274BC 800268BC 000C6080 */  sll        $t4, $t4, 2
/* 274C0 800268C0 01986023 */  subu       $t4, $t4, $t8
/* 274C4 800268C4 000C6080 */  sll        $t4, $t4, 2
/* 274C8 800268C8 01986021 */  addu       $t4, $t4, $t8
/* 274CC 800268CC 000C6080 */  sll        $t4, $t4, 2
/* 274D0 800268D0 8FAB00EC */  lw         $t3, 0xec($sp)
/* 274D4 800268D4 01986023 */  subu       $t4, $t4, $t8
/* 274D8 800268D8 000C6080 */  sll        $t4, $t4, 2
/* 274DC 800268DC 010C7821 */  addu       $t7, $t0, $t4
/* 274E0 800268E0 ADEB007C */  sw         $t3, 0x7c($t7)
/* 274E4 800268E4 8FB900F8 */  lw         $t9, 0xf8($sp)
/* 274E8 800268E8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 274EC 800268EC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 274F0 800268F0 00197080 */  sll        $t6, $t9, 2
/* 274F4 800268F4 01D97023 */  subu       $t6, $t6, $t9
/* 274F8 800268F8 000E7080 */  sll        $t6, $t6, 2
/* 274FC 800268FC 01D97023 */  subu       $t6, $t6, $t9
/* 27500 80026900 000E7080 */  sll        $t6, $t6, 2
/* 27504 80026904 01D97021 */  addu       $t6, $t6, $t9
/* 27508 80026908 000E7080 */  sll        $t6, $t6, 2
/* 2750C 8002690C 01D97023 */  subu       $t6, $t6, $t9
/* 27510 80026910 000E7080 */  sll        $t6, $t6, 2
/* 27514 80026914 014E4821 */  addu       $t1, $t2, $t6
/* 27518 80026918 8D2D0080 */  lw         $t5, 0x80($t1)
/* 2751C 8002691C 8FB800F4 */  lw         $t8, 0xf4($sp)
/* 27520 80026920 11B80011 */  beq        $t5, $t8, .L80026968
/* 27524 80026924 00000000 */   nop
/* 27528 80026928 AD2D0084 */  sw         $t5, 0x84($t1)
/* 2752C 8002692C 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* 27530 80026930 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 27534 80026934 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 27538 80026938 000B7880 */  sll        $t7, $t3, 2
/* 2753C 8002693C 01EB7823 */  subu       $t7, $t7, $t3
/* 27540 80026940 000F7880 */  sll        $t7, $t7, 2
/* 27544 80026944 01EB7823 */  subu       $t7, $t7, $t3
/* 27548 80026948 000F7880 */  sll        $t7, $t7, 2
/* 2754C 8002694C 01EB7821 */  addu       $t7, $t7, $t3
/* 27550 80026950 000F7880 */  sll        $t7, $t7, 2
/* 27554 80026954 8FA800F4 */  lw         $t0, 0xf4($sp)
/* 27558 80026958 01EB7823 */  subu       $t7, $t7, $t3
/* 2755C 8002695C 000F7880 */  sll        $t7, $t7, 2
/* 27560 80026960 018FC821 */  addu       $t9, $t4, $t7
/* 27564 80026964 AF280080 */  sw         $t0, 0x80($t9)
.L80026968:
/* 27568 80026968 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2756C 8002696C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 27570 80026970 8FB00028 */  lw         $s0, 0x28($sp)
/* 27574 80026974 03E00008 */  jr         $ra
/* 27578 80026978 27BD00F8 */   addiu     $sp, $sp, 0xf8

glabel func_8002697C
/* 2757C 8002697C 27BDFF18 */  addiu      $sp, $sp, -0xe8
/* 27580 80026980 AFBF0034 */  sw         $ra, 0x34($sp)
/* 27584 80026984 AFA400E8 */  sw         $a0, 0xe8($sp)
/* 27588 80026988 AFB00030 */  sw         $s0, 0x30($sp)
/* 2758C 8002698C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 27590 80026990 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 27594 80026994 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 27598 80026998 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 2759C 8002699C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 275A0 800269A0 000FC080 */  sll        $t8, $t7, 2
/* 275A4 800269A4 030FC023 */  subu       $t8, $t8, $t7
/* 275A8 800269A8 0018C080 */  sll        $t8, $t8, 2
/* 275AC 800269AC 030FC023 */  subu       $t8, $t8, $t7
/* 275B0 800269B0 0018C080 */  sll        $t8, $t8, 2
/* 275B4 800269B4 030FC021 */  addu       $t8, $t8, $t7
/* 275B8 800269B8 0018C080 */  sll        $t8, $t8, 2
/* 275BC 800269BC 030FC023 */  subu       $t8, $t8, $t7
/* 275C0 800269C0 0018C080 */  sll        $t8, $t8, 2
/* 275C4 800269C4 3C09800D */  lui        $t1, %hi(D_800D6300)
/* 275C8 800269C8 8D296300 */  lw         $t1, %lo(D_800D6300)($t1)
/* 275CC 800269CC 01D8C821 */  addu       $t9, $t6, $t8
/* 275D0 800269D0 8F28006C */  lw         $t0, 0x6c($t9)
/* 275D4 800269D4 2401000F */  addiu      $at, $zero, 0xf
/* 275D8 800269D8 11210004 */  beq        $t1, $at, .L800269EC
/* 275DC 800269DC AFA800E4 */   sw        $t0, 0xe4($sp)
/* 275E0 800269E0 24010010 */  addiu      $at, $zero, 0x10
/* 275E4 800269E4 1521003C */  bne        $t1, $at, .L80026AD8
/* 275E8 800269E8 00000000 */   nop
.L800269EC:
/* 275EC 800269EC 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 275F0 800269F0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 275F4 800269F4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 275F8 800269F8 000B6080 */  sll        $t4, $t3, 2
/* 275FC 800269FC 018B6023 */  subu       $t4, $t4, $t3
/* 27600 80026A00 000C6080 */  sll        $t4, $t4, 2
/* 27604 80026A04 018B6023 */  subu       $t4, $t4, $t3
/* 27608 80026A08 000C6080 */  sll        $t4, $t4, 2
/* 2760C 80026A0C 018B6021 */  addu       $t4, $t4, $t3
/* 27610 80026A10 000C6080 */  sll        $t4, $t4, 2
/* 27614 80026A14 018B6023 */  subu       $t4, $t4, $t3
/* 27618 80026A18 000C6080 */  sll        $t4, $t4, 2
/* 2761C 80026A1C 014C6821 */  addu       $t5, $t2, $t4
/* 27620 80026A20 ADA00080 */  sw         $zero, 0x80($t5)
/* 27624 80026A24 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 27628 80026A28 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2762C 80026A2C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 27630 80026A30 000EC080 */  sll        $t8, $t6, 2
/* 27634 80026A34 030EC023 */  subu       $t8, $t8, $t6
/* 27638 80026A38 0018C080 */  sll        $t8, $t8, 2
/* 2763C 80026A3C 030EC023 */  subu       $t8, $t8, $t6
/* 27640 80026A40 0018C080 */  sll        $t8, $t8, 2
/* 27644 80026A44 030EC021 */  addu       $t8, $t8, $t6
/* 27648 80026A48 0018C080 */  sll        $t8, $t8, 2
/* 2764C 80026A4C 030EC023 */  subu       $t8, $t8, $t6
/* 27650 80026A50 0018C080 */  sll        $t8, $t8, 2
/* 27654 80026A54 01F8C821 */  addu       $t9, $t7, $t8
/* 27658 80026A58 AF200064 */  sw         $zero, 0x64($t9)
/* 2765C 80026A5C 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 27660 80026A60 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 27664 80026A64 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 27668 80026A68 00095880 */  sll        $t3, $t1, 2
/* 2766C 80026A6C 01695823 */  subu       $t3, $t3, $t1
/* 27670 80026A70 000B5880 */  sll        $t3, $t3, 2
/* 27674 80026A74 01695823 */  subu       $t3, $t3, $t1
/* 27678 80026A78 000B5880 */  sll        $t3, $t3, 2
/* 2767C 80026A7C 01695821 */  addu       $t3, $t3, $t1
/* 27680 80026A80 000B5880 */  sll        $t3, $t3, 2
/* 27684 80026A84 01695823 */  subu       $t3, $t3, $t1
/* 27688 80026A88 000B5880 */  sll        $t3, $t3, 2
/* 2768C 80026A8C 010B5021 */  addu       $t2, $t0, $t3
/* 27690 80026A90 AD40028C */  sw         $zero, 0x28c($t2)
/* 27694 80026A94 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 27698 80026A98 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 2769C 80026A9C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 276A0 80026AA0 000D7080 */  sll        $t6, $t5, 2
/* 276A4 80026AA4 01CD7023 */  subu       $t6, $t6, $t5
/* 276A8 80026AA8 000E7080 */  sll        $t6, $t6, 2
/* 276AC 80026AAC 01CD7023 */  subu       $t6, $t6, $t5
/* 276B0 80026AB0 000E7080 */  sll        $t6, $t6, 2
/* 276B4 80026AB4 01CD7021 */  addu       $t6, $t6, $t5
/* 276B8 80026AB8 000E7080 */  sll        $t6, $t6, 2
/* 276BC 80026ABC 01CD7023 */  subu       $t6, $t6, $t5
/* 276C0 80026AC0 000E7080 */  sll        $t6, $t6, 2
/* 276C4 80026AC4 018E7821 */  addu       $t7, $t4, $t6
/* 276C8 80026AC8 8DF8028C */  lw         $t8, 0x28c($t7)
/* 276CC 80026ACC 00001025 */  or         $v0, $zero, $zero
/* 276D0 80026AD0 10000DE7 */  b          .L8002A270
/* 276D4 80026AD4 ADF80288 */   sw        $t8, 0x288($t7)
.L80026AD8:
/* 276D8 80026AD8 0C0084F1 */  jal        func_800213C4
/* 276DC 80026ADC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 276E0 80026AE0 10400003 */  beqz       $v0, .L80026AF0
/* 276E4 80026AE4 00000000 */   nop
/* 276E8 80026AE8 10000DE1 */  b          .L8002A270
/* 276EC 80026AEC 00001025 */   or        $v0, $zero, $zero
.L80026AF0:
/* 276F0 80026AF0 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 276F4 80026AF4 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 276F8 80026AF8 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 276FC 80026AFC 00094080 */  sll        $t0, $t1, 2
/* 27700 80026B00 01094023 */  subu       $t0, $t0, $t1
/* 27704 80026B04 00084080 */  sll        $t0, $t0, 2
/* 27708 80026B08 01094023 */  subu       $t0, $t0, $t1
/* 2770C 80026B0C 00084080 */  sll        $t0, $t0, 2
/* 27710 80026B10 01094021 */  addu       $t0, $t0, $t1
/* 27714 80026B14 00084080 */  sll        $t0, $t0, 2
/* 27718 80026B18 01094023 */  subu       $t0, $t0, $t1
/* 2771C 80026B1C 00084080 */  sll        $t0, $t0, 2
/* 27720 80026B20 03285821 */  addu       $t3, $t9, $t0
/* 27724 80026B24 8D6A00A4 */  lw         $t2, 0xa4($t3)
/* 27728 80026B28 05400039 */  bltz       $t2, .L80026C10
/* 2772C 80026B2C 00000000 */   nop
/* 27730 80026B30 000A6880 */  sll        $t5, $t2, 2
/* 27734 80026B34 01AA6823 */  subu       $t5, $t5, $t2
/* 27738 80026B38 000D6880 */  sll        $t5, $t5, 2
/* 2773C 80026B3C 01AA6823 */  subu       $t5, $t5, $t2
/* 27740 80026B40 000D6880 */  sll        $t5, $t5, 2
/* 27744 80026B44 01AA6821 */  addu       $t5, $t5, $t2
/* 27748 80026B48 000D6880 */  sll        $t5, $t5, 2
/* 2774C 80026B4C 01AA6823 */  subu       $t5, $t5, $t2
/* 27750 80026B50 000D6880 */  sll        $t5, $t5, 2
/* 27754 80026B54 032D6021 */  addu       $t4, $t9, $t5
/* 27758 80026B58 C58400E0 */  lwc1       $f4, 0xe0($t4)
/* 2775C 80026B5C C58800E8 */  lwc1       $f8, 0xe8($t4)
/* 27760 80026B60 C56600E0 */  lwc1       $f6, 0xe0($t3)
/* 27764 80026B64 C56A00E8 */  lwc1       $f10, 0xe8($t3)
/* 27768 80026B68 46062301 */  sub.s      $f12, $f4, $f6
/* 2776C 80026B6C 0C00475A */  jal        func_80011D68
/* 27770 80026B70 460A4381 */   sub.s     $f14, $f8, $f10
/* 27774 80026B74 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 27778 80026B78 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 2777C 80026B7C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 27780 80026B80 00187880 */  sll        $t7, $t8, 2
/* 27784 80026B84 01F87823 */  subu       $t7, $t7, $t8
/* 27788 80026B88 000F7880 */  sll        $t7, $t7, 2
/* 2778C 80026B8C 01F87823 */  subu       $t7, $t7, $t8
/* 27790 80026B90 000F7880 */  sll        $t7, $t7, 2
/* 27794 80026B94 01F87821 */  addu       $t7, $t7, $t8
/* 27798 80026B98 000F7880 */  sll        $t7, $t7, 2
/* 2779C 80026B9C 01F87823 */  subu       $t7, $t7, $t8
/* 277A0 80026BA0 000F7880 */  sll        $t7, $t7, 2
/* 277A4 80026BA4 01CF4821 */  addu       $t1, $t6, $t7
/* 277A8 80026BA8 E52000AC */  swc1       $f0, 0xac($t1)
/* 277AC 80026BAC 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 277B0 80026BB0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 277B4 80026BB4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 277B8 80026BB8 000AC880 */  sll        $t9, $t2, 2
/* 277BC 80026BBC 032AC823 */  subu       $t9, $t9, $t2
/* 277C0 80026BC0 0019C880 */  sll        $t9, $t9, 2
/* 277C4 80026BC4 032AC823 */  subu       $t9, $t9, $t2
/* 277C8 80026BC8 0019C880 */  sll        $t9, $t9, 2
/* 277CC 80026BCC 032AC821 */  addu       $t9, $t9, $t2
/* 277D0 80026BD0 0019C880 */  sll        $t9, $t9, 2
/* 277D4 80026BD4 032AC823 */  subu       $t9, $t9, $t2
/* 277D8 80026BD8 0019C880 */  sll        $t9, $t9, 2
/* 277DC 80026BDC 01196821 */  addu       $t5, $t0, $t9
/* 277E0 80026BE0 C5B000AC */  lwc1       $f16, 0xac($t5)
/* 277E4 80026BE4 3C014049 */  lui        $at, 0x4049
/* 277E8 80026BE8 44812800 */  mtc1       $at, $f5
/* 277EC 80026BEC 44802000 */  mtc1       $zero, $f4
/* 277F0 80026BF0 460084A1 */  cvt.d.s    $f18, $f16
/* 277F4 80026BF4 4624903C */  c.lt.d     $f18, $f4
/* 277F8 80026BF8 00000000 */  nop
/* 277FC 80026BFC 45000014 */  bc1f       .L80026C50
/* 27800 80026C00 3C014248 */   lui       $at, 0x4248
/* 27804 80026C04 44813000 */  mtc1       $at, $f6
/* 27808 80026C08 10000011 */  b          .L80026C50
/* 2780C 80026C0C E5A600AC */   swc1      $f6, 0xac($t5)
.L80026C10:
/* 27810 80026C10 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 27814 80026C14 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 27818 80026C18 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 2781C 80026C1C 000BC080 */  sll        $t8, $t3, 2
/* 27820 80026C20 030BC023 */  subu       $t8, $t8, $t3
/* 27824 80026C24 0018C080 */  sll        $t8, $t8, 2
/* 27828 80026C28 030BC023 */  subu       $t8, $t8, $t3
/* 2782C 80026C2C 0018C080 */  sll        $t8, $t8, 2
/* 27830 80026C30 030BC021 */  addu       $t8, $t8, $t3
/* 27834 80026C34 0018C080 */  sll        $t8, $t8, 2
/* 27838 80026C38 3C01800E */  lui        $at, %hi(D_800DC940)
/* 2783C 80026C3C C428C940 */  lwc1       $f8, %lo(D_800DC940)($at)
/* 27840 80026C40 030BC023 */  subu       $t8, $t8, $t3
/* 27844 80026C44 0018C080 */  sll        $t8, $t8, 2
/* 27848 80026C48 01987021 */  addu       $t6, $t4, $t8
/* 2784C 80026C4C E5C800AC */  swc1       $f8, 0xac($t6)
.L80026C50:
/* 27850 80026C50 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 27854 80026C54 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 27858 80026C58 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2785C 80026C5C 00095080 */  sll        $t2, $t1, 2
/* 27860 80026C60 01495023 */  subu       $t2, $t2, $t1
/* 27864 80026C64 000A5080 */  sll        $t2, $t2, 2
/* 27868 80026C68 01495023 */  subu       $t2, $t2, $t1
/* 2786C 80026C6C 000A5080 */  sll        $t2, $t2, 2
/* 27870 80026C70 01495021 */  addu       $t2, $t2, $t1
/* 27874 80026C74 000A5080 */  sll        $t2, $t2, 2
/* 27878 80026C78 01495023 */  subu       $t2, $t2, $t1
/* 2787C 80026C7C 000A5080 */  sll        $t2, $t2, 2
/* 27880 80026C80 01EA4021 */  addu       $t0, $t7, $t2
/* 27884 80026C84 C50A00AC */  lwc1       $f10, 0xac($t0)
/* 27888 80026C88 3C014049 */  lui        $at, 0x4049
/* 2788C 80026C8C 44819800 */  mtc1       $at, $f19
/* 27890 80026C90 44809000 */  mtc1       $zero, $f18
/* 27894 80026C94 46005421 */  cvt.d.s    $f16, $f10
/* 27898 80026C98 4632803C */  c.lt.d     $f16, $f18
/* 2789C 80026C9C 00000000 */  nop
/* 278A0 80026CA0 45000004 */  bc1f       .L80026CB4
/* 278A4 80026CA4 3C014248 */   lui       $at, 0x4248
/* 278A8 80026CA8 44812000 */  mtc1       $at, $f4
/* 278AC 80026CAC 00000000 */  nop
/* 278B0 80026CB0 E50400AC */  swc1       $f4, 0xac($t0)
.L80026CB4:
/* 278B4 80026CB4 0C0085CB */  jal        func_8002172C
/* 278B8 80026CB8 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 278BC 80026CBC 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 278C0 80026CC0 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 278C4 80026CC4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 278C8 80026CC8 000D5880 */  sll        $t3, $t5, 2
/* 278CC 80026CCC 016D5823 */  subu       $t3, $t3, $t5
/* 278D0 80026CD0 000B5880 */  sll        $t3, $t3, 2
/* 278D4 80026CD4 016D5823 */  subu       $t3, $t3, $t5
/* 278D8 80026CD8 000B5880 */  sll        $t3, $t3, 2
/* 278DC 80026CDC 016D5821 */  addu       $t3, $t3, $t5
/* 278E0 80026CE0 000B5880 */  sll        $t3, $t3, 2
/* 278E4 80026CE4 016D5823 */  subu       $t3, $t3, $t5
/* 278E8 80026CE8 000B5880 */  sll        $t3, $t3, 2
/* 278EC 80026CEC 032B6021 */  addu       $t4, $t9, $t3
/* 278F0 80026CF0 8D980080 */  lw         $t8, 0x80($t4)
/* 278F4 80026CF4 270EFFF6 */  addiu      $t6, $t8, -0xa
/* 278F8 80026CF8 2DC10032 */  sltiu      $at, $t6, 0x32
/* 278FC 80026CFC 10200120 */  beqz       $at, .L80027180
/* 27900 80026D00 00000000 */   nop
/* 27904 80026D04 000E7080 */  sll        $t6, $t6, 2
/* 27908 80026D08 3C01800E */  lui        $at, %hi(D_800DC944)
/* 2790C 80026D0C 002E0821 */  addu       $at, $at, $t6
/* 27910 80026D10 8C2EC944 */  lw         $t6, %lo(D_800DC944)($at)
/* 27914 80026D14 01C00008 */  jr         $t6
/* 27918 80026D18 00000000 */   nop
/* 2791C 80026D1C 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 27920 80026D20 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 27924 80026D24 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 27928 80026D28 000F5080 */  sll        $t2, $t7, 2
/* 2792C 80026D2C 014F5023 */  subu       $t2, $t2, $t7
/* 27930 80026D30 000A5080 */  sll        $t2, $t2, 2
/* 27934 80026D34 014F5023 */  subu       $t2, $t2, $t7
/* 27938 80026D38 000A5080 */  sll        $t2, $t2, 2
/* 2793C 80026D3C 014F5021 */  addu       $t2, $t2, $t7
/* 27940 80026D40 000A5080 */  sll        $t2, $t2, 2
/* 27944 80026D44 014F5023 */  subu       $t2, $t2, $t7
/* 27948 80026D48 000A5080 */  sll        $t2, $t2, 2
/* 2794C 80026D4C 012A4021 */  addu       $t0, $t1, $t2
/* 27950 80026D50 C50600A8 */  lwc1       $f6, 0xa8($t0)
/* 27954 80026D54 C50800F4 */  lwc1       $f8, 0xf4($t0)
/* 27958 80026D58 3C01800E */  lui        $at, %hi(D_800DCA10)
/* 2795C 80026D5C D432CA10 */  ldc1       $f18, %lo(D_800DCA10)($at)
/* 27960 80026D60 46083281 */  sub.s      $f10, $f6, $f8
/* 27964 80026D64 46005421 */  cvt.d.s    $f16, $f10
/* 27968 80026D68 46328102 */  mul.d      $f4, $f16, $f18
/* 2796C 80026D6C 462021A0 */  cvt.s.d    $f6, $f4
/* 27970 80026D70 10000D0A */  b          .L8002A19C
/* 27974 80026D74 E50600F4 */   swc1      $f6, 0xf4($t0)
/* 27978 80026D78 0C00810C */  jal        func_80020430
/* 2797C 80026D7C 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27980 80026D80 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 27984 80026D84 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 27988 80026D88 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 2798C 80026D8C 00195880 */  sll        $t3, $t9, 2
/* 27990 80026D90 01795823 */  subu       $t3, $t3, $t9
/* 27994 80026D94 000B5880 */  sll        $t3, $t3, 2
/* 27998 80026D98 01795823 */  subu       $t3, $t3, $t9
/* 2799C 80026D9C 000B5880 */  sll        $t3, $t3, 2
/* 279A0 80026DA0 01795821 */  addu       $t3, $t3, $t9
/* 279A4 80026DA4 000B5880 */  sll        $t3, $t3, 2
/* 279A8 80026DA8 01795823 */  subu       $t3, $t3, $t9
/* 279AC 80026DAC 000B5880 */  sll        $t3, $t3, 2
/* 279B0 80026DB0 01AB6021 */  addu       $t4, $t5, $t3
/* 279B4 80026DB4 8D980074 */  lw         $t8, 0x74($t4)
/* 279B8 80026DB8 3C01800D */  lui        $at, 0x800d
/* 279BC 80026DBC C58800AC */  lwc1       $f8, 0xac($t4)
/* 279C0 80026DC0 00187100 */  sll        $t6, $t8, 4
/* 279C4 80026DC4 01D87023 */  subu       $t6, $t6, $t8
/* 279C8 80026DC8 000E7080 */  sll        $t6, $t6, 2
/* 279CC 80026DCC 002E0821 */  addu       $at, $at, $t6
/* 279D0 80026DD0 C42A72DC */  lwc1       $f10, 0x72dc($at)
/* 279D4 80026DD4 4608503C */  c.lt.s     $f10, $f8
/* 279D8 80026DD8 00000000 */  nop
/* 279DC 80026DDC 45000005 */  bc1f       .L80026DF4
/* 279E0 80026DE0 00000000 */   nop
/* 279E4 80026DE4 0C00827F */  jal        func_800209FC
/* 279E8 80026DE8 03202025 */   or        $a0, $t9, $zero
/* 279EC 80026DEC 10000011 */  b          .L80026E34
/* 279F0 80026DF0 00000000 */   nop
.L80026DF4:
/* 279F4 80026DF4 0C0082CF */  jal        func_80020B3C
/* 279F8 80026DF8 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 279FC 80026DFC 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 27A00 80026E00 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 27A04 80026E04 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 27A08 80026E08 00095080 */  sll        $t2, $t1, 2
/* 27A0C 80026E0C 01495023 */  subu       $t2, $t2, $t1
/* 27A10 80026E10 000A5080 */  sll        $t2, $t2, 2
/* 27A14 80026E14 01495023 */  subu       $t2, $t2, $t1
/* 27A18 80026E18 000A5080 */  sll        $t2, $t2, 2
/* 27A1C 80026E1C 01495021 */  addu       $t2, $t2, $t1
/* 27A20 80026E20 000A5080 */  sll        $t2, $t2, 2
/* 27A24 80026E24 01495023 */  subu       $t2, $t2, $t1
/* 27A28 80026E28 000A5080 */  sll        $t2, $t2, 2
/* 27A2C 80026E2C 01EA4021 */  addu       $t0, $t7, $t2
/* 27A30 80026E30 AD00007C */  sw         $zero, 0x7c($t0)
.L80026E34:
/* 27A34 80026E34 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 27A38 80026E38 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 27A3C 80026E3C 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 27A40 80026E40 000D6080 */  sll        $t4, $t5, 2
/* 27A44 80026E44 018D6023 */  subu       $t4, $t4, $t5
/* 27A48 80026E48 000C6080 */  sll        $t4, $t4, 2
/* 27A4C 80026E4C 018D6023 */  subu       $t4, $t4, $t5
/* 27A50 80026E50 000C6080 */  sll        $t4, $t4, 2
/* 27A54 80026E54 018D6021 */  addu       $t4, $t4, $t5
/* 27A58 80026E58 000C6080 */  sll        $t4, $t4, 2
/* 27A5C 80026E5C 018D6023 */  subu       $t4, $t4, $t5
/* 27A60 80026E60 000C6080 */  sll        $t4, $t4, 2
/* 27A64 80026E64 016CC021 */  addu       $t8, $t3, $t4
/* 27A68 80026E68 8F0500A4 */  lw         $a1, 0xa4($t8)
/* 27A6C 80026E6C 0C055F02 */  jal        func_80157C08
/* 27A70 80026E70 01A02025 */   or        $a0, $t5, $zero
/* 27A74 80026E74 0C007C3D */  jal        func_8001F0F4
/* 27A78 80026E78 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27A7C 80026E7C 10000CC7 */  b          .L8002A19C
/* 27A80 80026E80 00000000 */   nop
/* 27A84 80026E84 0C00810C */  jal        func_80020430
/* 27A88 80026E88 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27A8C 80026E8C 0C00827F */  jal        func_800209FC
/* 27A90 80026E90 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27A94 80026E94 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 27A98 80026E98 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 27A9C 80026E9C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 27AA0 80026EA0 000E4880 */  sll        $t1, $t6, 2
/* 27AA4 80026EA4 012E4823 */  subu       $t1, $t1, $t6
/* 27AA8 80026EA8 00094880 */  sll        $t1, $t1, 2
/* 27AAC 80026EAC 012E4823 */  subu       $t1, $t1, $t6
/* 27AB0 80026EB0 00094880 */  sll        $t1, $t1, 2
/* 27AB4 80026EB4 012E4821 */  addu       $t1, $t1, $t6
/* 27AB8 80026EB8 00094880 */  sll        $t1, $t1, 2
/* 27ABC 80026EBC 012E4823 */  subu       $t1, $t1, $t6
/* 27AC0 80026EC0 00094880 */  sll        $t1, $t1, 2
/* 27AC4 80026EC4 03297821 */  addu       $t7, $t9, $t1
/* 27AC8 80026EC8 8DE500A4 */  lw         $a1, 0xa4($t7)
/* 27ACC 80026ECC 0C055F02 */  jal        func_80157C08
/* 27AD0 80026ED0 01C02025 */   or        $a0, $t6, $zero
/* 27AD4 80026ED4 10000CB1 */  b          .L8002A19C
/* 27AD8 80026ED8 00000000 */   nop
/* 27ADC 80026EDC 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 27AE0 80026EE0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 27AE4 80026EE4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 27AE8 80026EE8 00086880 */  sll        $t5, $t0, 2
/* 27AEC 80026EEC 01A86823 */  subu       $t5, $t5, $t0
/* 27AF0 80026EF0 000D6880 */  sll        $t5, $t5, 2
/* 27AF4 80026EF4 01A86823 */  subu       $t5, $t5, $t0
/* 27AF8 80026EF8 000D6880 */  sll        $t5, $t5, 2
/* 27AFC 80026EFC 01A86821 */  addu       $t5, $t5, $t0
/* 27B00 80026F00 000D6880 */  sll        $t5, $t5, 2
/* 27B04 80026F04 01A86823 */  subu       $t5, $t5, $t0
/* 27B08 80026F08 000D6880 */  sll        $t5, $t5, 2
/* 27B0C 80026F0C 014D5821 */  addu       $t3, $t2, $t5
/* 27B10 80026F10 8D6C0278 */  lw         $t4, 0x278($t3)
/* 27B14 80026F14 240100BC */  addiu      $at, $zero, 0xbc
/* 27B18 80026F18 15810020 */  bne        $t4, $at, .L80026F9C
/* 27B1C 80026F1C 00000000 */   nop
/* 27B20 80026F20 24180040 */  addiu      $t8, $zero, 0x40
/* 27B24 80026F24 A1780055 */  sb         $t8, 0x55($t3)
/* 27B28 80026F28 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 27B2C 80026F2C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 27B30 80026F30 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 27B34 80026F34 00097880 */  sll        $t7, $t1, 2
/* 27B38 80026F38 01E97823 */  subu       $t7, $t7, $t1
/* 27B3C 80026F3C 000F7880 */  sll        $t7, $t7, 2
/* 27B40 80026F40 01E97823 */  subu       $t7, $t7, $t1
/* 27B44 80026F44 000F7880 */  sll        $t7, $t7, 2
/* 27B48 80026F48 01E97821 */  addu       $t7, $t7, $t1
/* 27B4C 80026F4C 000F7880 */  sll        $t7, $t7, 2
/* 27B50 80026F50 01E97823 */  subu       $t7, $t7, $t1
/* 27B54 80026F54 000F7880 */  sll        $t7, $t7, 2
/* 27B58 80026F58 3C0E0400 */  lui        $t6, 0x400
/* 27B5C 80026F5C 032F4021 */  addu       $t0, $t9, $t7
/* 27B60 80026F60 AD0E028C */  sw         $t6, 0x28c($t0)
/* 27B64 80026F64 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 27B68 80026F68 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 27B6C 80026F6C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 27B70 80026F70 000D6080 */  sll        $t4, $t5, 2
/* 27B74 80026F74 018D6023 */  subu       $t4, $t4, $t5
/* 27B78 80026F78 000C6080 */  sll        $t4, $t4, 2
/* 27B7C 80026F7C 018D6023 */  subu       $t4, $t4, $t5
/* 27B80 80026F80 000C6080 */  sll        $t4, $t4, 2
/* 27B84 80026F84 018D6021 */  addu       $t4, $t4, $t5
/* 27B88 80026F88 000C6080 */  sll        $t4, $t4, 2
/* 27B8C 80026F8C 018D6023 */  subu       $t4, $t4, $t5
/* 27B90 80026F90 000C6080 */  sll        $t4, $t4, 2
/* 27B94 80026F94 014CC021 */  addu       $t8, $t2, $t4
/* 27B98 80026F98 AF000288 */  sw         $zero, 0x288($t8)
.L80026F9C:
/* 27B9C 80026F9C 0C00810C */  jal        func_80020430
/* 27BA0 80026FA0 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27BA4 80026FA4 0C0082CF */  jal        func_80020B3C
/* 27BA8 80026FA8 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27BAC 80026FAC 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 27BB0 80026FB0 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 27BB4 80026FB4 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 27BB8 80026FB8 000BC880 */  sll        $t9, $t3, 2
/* 27BBC 80026FBC 032BC823 */  subu       $t9, $t9, $t3
/* 27BC0 80026FC0 0019C880 */  sll        $t9, $t9, 2
/* 27BC4 80026FC4 032BC823 */  subu       $t9, $t9, $t3
/* 27BC8 80026FC8 0019C880 */  sll        $t9, $t9, 2
/* 27BCC 80026FCC 032BC821 */  addu       $t9, $t9, $t3
/* 27BD0 80026FD0 0019C880 */  sll        $t9, $t9, 2
/* 27BD4 80026FD4 032BC823 */  subu       $t9, $t9, $t3
/* 27BD8 80026FD8 0019C880 */  sll        $t9, $t9, 2
/* 27BDC 80026FDC 01397821 */  addu       $t7, $t1, $t9
/* 27BE0 80026FE0 8DE500A4 */  lw         $a1, 0xa4($t7)
/* 27BE4 80026FE4 0C055F02 */  jal        func_80157C08
/* 27BE8 80026FE8 01602025 */   or        $a0, $t3, $zero
/* 27BEC 80026FEC 10000C6B */  b          .L8002A19C
/* 27BF0 80026FF0 00000000 */   nop
/* 27BF4 80026FF4 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 27BF8 80026FF8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 27BFC 80026FFC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 27C00 80027000 00086880 */  sll        $t5, $t0, 2
/* 27C04 80027004 01A86823 */  subu       $t5, $t5, $t0
/* 27C08 80027008 000D6880 */  sll        $t5, $t5, 2
/* 27C0C 8002700C 01A86823 */  subu       $t5, $t5, $t0
/* 27C10 80027010 000D6880 */  sll        $t5, $t5, 2
/* 27C14 80027014 01A86821 */  addu       $t5, $t5, $t0
/* 27C18 80027018 000D6880 */  sll        $t5, $t5, 2
/* 27C1C 8002701C 01A86823 */  subu       $t5, $t5, $t0
/* 27C20 80027020 000D6880 */  sll        $t5, $t5, 2
/* 27C24 80027024 01CD5021 */  addu       $t2, $t6, $t5
/* 27C28 80027028 8D4C0014 */  lw         $t4, 0x14($t2)
/* 27C2C 8002702C 2401FFFF */  addiu      $at, $zero, -1
/* 27C30 80027030 15810013 */  bne        $t4, $at, .L80027080
/* 27C34 80027034 00000000 */   nop
/* 27C38 80027038 0C00810C */  jal        func_80020430
/* 27C3C 8002703C 01002025 */   or        $a0, $t0, $zero
/* 27C40 80027040 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 27C44 80027044 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 27C48 80027048 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 27C4C 8002704C 00184880 */  sll        $t1, $t8, 2
/* 27C50 80027050 01384823 */  subu       $t1, $t1, $t8
/* 27C54 80027054 00094880 */  sll        $t1, $t1, 2
/* 27C58 80027058 01384823 */  subu       $t1, $t1, $t8
/* 27C5C 8002705C 00094880 */  sll        $t1, $t1, 2
/* 27C60 80027060 01384821 */  addu       $t1, $t1, $t8
/* 27C64 80027064 00094880 */  sll        $t1, $t1, 2
/* 27C68 80027068 01384823 */  subu       $t1, $t1, $t8
/* 27C6C 8002706C 00094880 */  sll        $t1, $t1, 2
/* 27C70 80027070 0169C821 */  addu       $t9, $t3, $t1
/* 27C74 80027074 8F2500A4 */  lw         $a1, 0xa4($t9)
/* 27C78 80027078 0C055F02 */  jal        func_80157C08
/* 27C7C 8002707C 03002025 */   or        $a0, $t8, $zero
.L80027080:
/* 27C80 80027080 0C0082CF */  jal        func_80020B3C
/* 27C84 80027084 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27C88 80027088 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 27C8C 8002708C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 27C90 80027090 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 27C94 80027094 000F6880 */  sll        $t5, $t7, 2
/* 27C98 80027098 01AF6823 */  subu       $t5, $t5, $t7
/* 27C9C 8002709C 000D6880 */  sll        $t5, $t5, 2
/* 27CA0 800270A0 01AF6823 */  subu       $t5, $t5, $t7
/* 27CA4 800270A4 000D6880 */  sll        $t5, $t5, 2
/* 27CA8 800270A8 01AF6821 */  addu       $t5, $t5, $t7
/* 27CAC 800270AC 000D6880 */  sll        $t5, $t5, 2
/* 27CB0 800270B0 01AF6823 */  subu       $t5, $t5, $t7
/* 27CB4 800270B4 000D6880 */  sll        $t5, $t5, 2
/* 27CB8 800270B8 01CD5021 */  addu       $t2, $t6, $t5
/* 27CBC 800270BC 8D4500AC */  lw         $a1, 0xac($t2)
/* 27CC0 800270C0 0C007C2C */  jal        func_8001F0B0
/* 27CC4 800270C4 01E02025 */   or        $a0, $t7, $zero
/* 27CC8 800270C8 10000C34 */  b          .L8002A19C
/* 27CCC 800270CC 00000000 */   nop
/* 27CD0 800270D0 0C00810C */  jal        func_80020430
/* 27CD4 800270D4 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27CD8 800270D8 0C00827F */  jal        func_800209FC
/* 27CDC 800270DC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27CE0 800270E0 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 27CE4 800270E4 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 27CE8 800270E8 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 27CEC 800270EC 000CC080 */  sll        $t8, $t4, 2
/* 27CF0 800270F0 030CC023 */  subu       $t8, $t8, $t4
/* 27CF4 800270F4 0018C080 */  sll        $t8, $t8, 2
/* 27CF8 800270F8 030CC023 */  subu       $t8, $t8, $t4
/* 27CFC 800270FC 0018C080 */  sll        $t8, $t8, 2
/* 27D00 80027100 030CC021 */  addu       $t8, $t8, $t4
/* 27D04 80027104 0018C080 */  sll        $t8, $t8, 2
/* 27D08 80027108 030CC023 */  subu       $t8, $t8, $t4
/* 27D0C 8002710C 0018C080 */  sll        $t8, $t8, 2
/* 27D10 80027110 01185821 */  addu       $t3, $t0, $t8
/* 27D14 80027114 8D6500A4 */  lw         $a1, 0xa4($t3)
/* 27D18 80027118 0C055F02 */  jal        func_80157C08
/* 27D1C 8002711C 01802025 */   or        $a0, $t4, $zero
/* 27D20 80027120 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 27D24 80027124 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 27D28 80027128 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 27D2C 8002712C 00097880 */  sll        $t7, $t1, 2
/* 27D30 80027130 01E97823 */  subu       $t7, $t7, $t1
/* 27D34 80027134 000F7880 */  sll        $t7, $t7, 2
/* 27D38 80027138 01E97823 */  subu       $t7, $t7, $t1
/* 27D3C 8002713C 000F7880 */  sll        $t7, $t7, 2
/* 27D40 80027140 01E97821 */  addu       $t7, $t7, $t1
/* 27D44 80027144 000F7880 */  sll        $t7, $t7, 2
/* 27D48 80027148 01E97823 */  subu       $t7, $t7, $t1
/* 27D4C 8002714C 000F7880 */  sll        $t7, $t7, 2
/* 27D50 80027150 032F7021 */  addu       $t6, $t9, $t7
/* 27D54 80027154 8DC500AC */  lw         $a1, 0xac($t6)
/* 27D58 80027158 0C007C2C */  jal        func_8001F0B0
/* 27D5C 8002715C 01202025 */   or        $a0, $t1, $zero
/* 27D60 80027160 10000C0E */  b          .L8002A19C
/* 27D64 80027164 00000000 */   nop
/* 27D68 80027168 0C00827F */  jal        func_800209FC
/* 27D6C 8002716C 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27D70 80027170 0C007C3D */  jal        func_8001F0F4
/* 27D74 80027174 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27D78 80027178 10000C08 */  b          .L8002A19C
/* 27D7C 8002717C 00000000 */   nop
.L80027180:
/* 27D80 80027180 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 27D84 80027184 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 27D88 80027188 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 27D8C 8002718C 000C4080 */  sll        $t0, $t4, 2
/* 27D90 80027190 010C4023 */  subu       $t0, $t0, $t4
/* 27D94 80027194 00084080 */  sll        $t0, $t0, 2
/* 27D98 80027198 010C4023 */  subu       $t0, $t0, $t4
/* 27D9C 8002719C 00084080 */  sll        $t0, $t0, 2
/* 27DA0 800271A0 010C4021 */  addu       $t0, $t0, $t4
/* 27DA4 800271A4 00084080 */  sll        $t0, $t0, 2
/* 27DA8 800271A8 010C4023 */  subu       $t0, $t0, $t4
/* 27DAC 800271AC 00084080 */  sll        $t0, $t0, 2
/* 27DB0 800271B0 240D0003 */  addiu      $t5, $zero, 3
/* 27DB4 800271B4 0148C021 */  addu       $t8, $t2, $t0
/* 27DB8 800271B8 AF0D0088 */  sw         $t5, 0x88($t8)
/* 27DBC 800271BC 0C00810C */  jal        func_80020430
/* 27DC0 800271C0 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27DC4 800271C4 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 27DC8 800271C8 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 27DCC 800271CC 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 27DD0 800271D0 000BC880 */  sll        $t9, $t3, 2
/* 27DD4 800271D4 032BC823 */  subu       $t9, $t9, $t3
/* 27DD8 800271D8 0019C880 */  sll        $t9, $t9, 2
/* 27DDC 800271DC 032BC823 */  subu       $t9, $t9, $t3
/* 27DE0 800271E0 0019C880 */  sll        $t9, $t9, 2
/* 27DE4 800271E4 032BC821 */  addu       $t9, $t9, $t3
/* 27DE8 800271E8 0019C880 */  sll        $t9, $t9, 2
/* 27DEC 800271EC 032BC823 */  subu       $t9, $t9, $t3
/* 27DF0 800271F0 0019C880 */  sll        $t9, $t9, 2
/* 27DF4 800271F4 01397821 */  addu       $t7, $t1, $t9
/* 27DF8 800271F8 8DE500A4 */  lw         $a1, 0xa4($t7)
/* 27DFC 800271FC 0C055F02 */  jal        func_80157C08
/* 27E00 80027200 01602025 */   or        $a0, $t3, $zero
/* 27E04 80027204 0C0082CF */  jal        func_80020B3C
/* 27E08 80027208 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27E0C 8002720C 10000BE3 */  b          .L8002A19C
/* 27E10 80027210 00000000 */   nop
/* 27E14 80027214 0C0082EC */  jal        func_80020BB0
/* 27E18 80027218 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27E1C 8002721C 10000BDF */  b          .L8002A19C
/* 27E20 80027220 00000000 */   nop
/* 27E24 80027224 0C0078B9 */  jal        func_8001E2E4
/* 27E28 80027228 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27E2C 8002722C 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 27E30 80027230 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 27E34 80027234 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 27E38 80027238 000C5080 */  sll        $t2, $t4, 2
/* 27E3C 8002723C 014C5023 */  subu       $t2, $t2, $t4
/* 27E40 80027240 000A5080 */  sll        $t2, $t2, 2
/* 27E44 80027244 014C5023 */  subu       $t2, $t2, $t4
/* 27E48 80027248 000A5080 */  sll        $t2, $t2, 2
/* 27E4C 8002724C 014C5021 */  addu       $t2, $t2, $t4
/* 27E50 80027250 000A5080 */  sll        $t2, $t2, 2
/* 27E54 80027254 014C5023 */  subu       $t2, $t2, $t4
/* 27E58 80027258 000A5080 */  sll        $t2, $t2, 2
/* 27E5C 8002725C 01CA4021 */  addu       $t0, $t6, $t2
/* 27E60 80027260 8D0D0268 */  lw         $t5, 0x268($t0)
/* 27E64 80027264 11A00006 */  beqz       $t5, .L80027280
/* 27E68 80027268 24010007 */   addiu     $at, $zero, 7
/* 27E6C 8002726C 11A10004 */  beq        $t5, $at, .L80027280
/* 27E70 80027270 3C01C0A0 */   lui       $at, 0xc0a0
/* 27E74 80027274 44818000 */  mtc1       $at, $f16
/* 27E78 80027278 00000000 */  nop
/* 27E7C 8002727C E51000D8 */  swc1       $f16, 0xd8($t0)
.L80027280:
/* 27E80 80027280 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 27E84 80027284 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 27E88 80027288 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 27E8C 8002728C 0009C880 */  sll        $t9, $t1, 2
/* 27E90 80027290 0329C823 */  subu       $t9, $t9, $t1
/* 27E94 80027294 0019C880 */  sll        $t9, $t9, 2
/* 27E98 80027298 0329C823 */  subu       $t9, $t9, $t1
/* 27E9C 8002729C 0019C880 */  sll        $t9, $t9, 2
/* 27EA0 800272A0 0329C821 */  addu       $t9, $t9, $t1
/* 27EA4 800272A4 0019C880 */  sll        $t9, $t9, 2
/* 27EA8 800272A8 0329C823 */  subu       $t9, $t9, $t1
/* 27EAC 800272AC 0019C880 */  sll        $t9, $t9, 2
/* 27EB0 800272B0 3C180040 */  lui        $t8, 0x40
/* 27EB4 800272B4 01797821 */  addu       $t7, $t3, $t9
/* 27EB8 800272B8 10000BB8 */  b          .L8002A19C
/* 27EBC 800272BC ADF80288 */   sw        $t8, 0x288($t7)
/* 27EC0 800272C0 0C00810C */  jal        func_80020430
/* 27EC4 800272C4 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27EC8 800272C8 0C0082CF */  jal        func_80020B3C
/* 27ECC 800272CC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27ED0 800272D0 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 27ED4 800272D4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 27ED8 800272D8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 27EDC 800272DC 000C5080 */  sll        $t2, $t4, 2
/* 27EE0 800272E0 014C5023 */  subu       $t2, $t2, $t4
/* 27EE4 800272E4 000A5080 */  sll        $t2, $t2, 2
/* 27EE8 800272E8 014C5023 */  subu       $t2, $t2, $t4
/* 27EEC 800272EC 000A5080 */  sll        $t2, $t2, 2
/* 27EF0 800272F0 014C5021 */  addu       $t2, $t2, $t4
/* 27EF4 800272F4 000A5080 */  sll        $t2, $t2, 2
/* 27EF8 800272F8 014C5023 */  subu       $t2, $t2, $t4
/* 27EFC 800272FC 000A5080 */  sll        $t2, $t2, 2
/* 27F00 80027300 01CA6821 */  addu       $t5, $t6, $t2
/* 27F04 80027304 8DA500A4 */  lw         $a1, 0xa4($t5)
/* 27F08 80027308 0C055F02 */  jal        func_80157C08
/* 27F0C 8002730C 01802025 */   or        $a0, $t4, $zero
/* 27F10 80027310 0C007C3D */  jal        func_8001F0F4
/* 27F14 80027314 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27F18 80027318 10000BA0 */  b          .L8002A19C
/* 27F1C 8002731C 00000000 */   nop
/* 27F20 80027320 0C00810C */  jal        func_80020430
/* 27F24 80027324 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27F28 80027328 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 27F2C 8002732C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 27F30 80027330 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 27F34 80027334 00085880 */  sll        $t3, $t0, 2
/* 27F38 80027338 01685823 */  subu       $t3, $t3, $t0
/* 27F3C 8002733C 000B5880 */  sll        $t3, $t3, 2
/* 27F40 80027340 01685823 */  subu       $t3, $t3, $t0
/* 27F44 80027344 000B5880 */  sll        $t3, $t3, 2
/* 27F48 80027348 01685821 */  addu       $t3, $t3, $t0
/* 27F4C 8002734C 000B5880 */  sll        $t3, $t3, 2
/* 27F50 80027350 01685823 */  subu       $t3, $t3, $t0
/* 27F54 80027354 000B5880 */  sll        $t3, $t3, 2
/* 27F58 80027358 012BC821 */  addu       $t9, $t1, $t3
/* 27F5C 8002735C 8F2500A4 */  lw         $a1, 0xa4($t9)
/* 27F60 80027360 0C055F02 */  jal        func_80157C08
/* 27F64 80027364 01002025 */   or        $a0, $t0, $zero
/* 27F68 80027368 0C0080BF */  jal        func_800202FC
/* 27F6C 8002736C 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 27F70 80027370 10000B8A */  b          .L8002A19C
/* 27F74 80027374 00000000 */   nop
/* 27F78 80027378 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 27F7C 8002737C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 27F80 80027380 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 27F84 80027384 000F6080 */  sll        $t4, $t7, 2
/* 27F88 80027388 018F6023 */  subu       $t4, $t4, $t7
/* 27F8C 8002738C 000C6080 */  sll        $t4, $t4, 2
/* 27F90 80027390 018F6023 */  subu       $t4, $t4, $t7
/* 27F94 80027394 000C6080 */  sll        $t4, $t4, 2
/* 27F98 80027398 018F6021 */  addu       $t4, $t4, $t7
/* 27F9C 8002739C 000C6080 */  sll        $t4, $t4, 2
/* 27FA0 800273A0 018F6023 */  subu       $t4, $t4, $t7
/* 27FA4 800273A4 000C6080 */  sll        $t4, $t4, 2
/* 27FA8 800273A8 030C7021 */  addu       $t6, $t8, $t4
/* 27FAC 800273AC 8DCA0278 */  lw         $t2, 0x278($t6)
/* 27FB0 800273B0 24010059 */  addiu      $at, $zero, 0x59
/* 27FB4 800273B4 15410013 */  bne        $t2, $at, .L80027404
/* 27FB8 800273B8 00000000 */   nop
/* 27FBC 800273BC 0C00810C */  jal        func_80020430
/* 27FC0 800273C0 01E02025 */   or        $a0, $t7, $zero
/* 27FC4 800273C4 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 27FC8 800273C8 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 27FCC 800273CC 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 27FD0 800273D0 000D4880 */  sll        $t1, $t5, 2
/* 27FD4 800273D4 012D4823 */  subu       $t1, $t1, $t5
/* 27FD8 800273D8 00094880 */  sll        $t1, $t1, 2
/* 27FDC 800273DC 012D4823 */  subu       $t1, $t1, $t5
/* 27FE0 800273E0 00094880 */  sll        $t1, $t1, 2
/* 27FE4 800273E4 012D4821 */  addu       $t1, $t1, $t5
/* 27FE8 800273E8 00094880 */  sll        $t1, $t1, 2
/* 27FEC 800273EC 012D4823 */  subu       $t1, $t1, $t5
/* 27FF0 800273F0 00094880 */  sll        $t1, $t1, 2
/* 27FF4 800273F4 01095821 */  addu       $t3, $t0, $t1
/* 27FF8 800273F8 8D6500A4 */  lw         $a1, 0xa4($t3)
/* 27FFC 800273FC 0C055F02 */  jal        func_80157C08
/* 28000 80027400 01A02025 */   or        $a0, $t5, $zero
.L80027404:
/* 28004 80027404 0C0080BF */  jal        func_800202FC
/* 28008 80027408 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2800C 8002740C 10000B63 */  b          .L8002A19C
/* 28010 80027410 00000000 */   nop
/* 28014 80027414 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 28018 80027418 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2801C 8002741C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 28020 80027420 00186080 */  sll        $t4, $t8, 2
/* 28024 80027424 01986023 */  subu       $t4, $t4, $t8
/* 28028 80027428 000C6080 */  sll        $t4, $t4, 2
/* 2802C 8002742C 01986023 */  subu       $t4, $t4, $t8
/* 28030 80027430 000C6080 */  sll        $t4, $t4, 2
/* 28034 80027434 01986021 */  addu       $t4, $t4, $t8
/* 28038 80027438 000C6080 */  sll        $t4, $t4, 2
/* 2803C 8002743C 01986023 */  subu       $t4, $t4, $t8
/* 28040 80027440 000C6080 */  sll        $t4, $t4, 2
/* 28044 80027444 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* 28048 80027448 032C7021 */  addu       $t6, $t9, $t4
/* 2804C 8002744C 8DCA0014 */  lw         $t2, 0x14($t6)
/* 28050 80027450 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* 28054 80027454 114F0014 */  beq        $t2, $t7, .L800274A8
/* 28058 80027458 00000000 */   nop
/* 2805C 8002745C ADCF00A4 */  sw         $t7, 0xa4($t6)
/* 28060 80027460 0C00810C */  jal        func_80020430
/* 28064 80027464 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28068 80027468 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 2806C 8002746C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 28070 80027470 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 28074 80027474 000D4880 */  sll        $t1, $t5, 2
/* 28078 80027478 012D4823 */  subu       $t1, $t1, $t5
/* 2807C 8002747C 00094880 */  sll        $t1, $t1, 2
/* 28080 80027480 012D4823 */  subu       $t1, $t1, $t5
/* 28084 80027484 00094880 */  sll        $t1, $t1, 2
/* 28088 80027488 012D4821 */  addu       $t1, $t1, $t5
/* 2808C 8002748C 00094880 */  sll        $t1, $t1, 2
/* 28090 80027490 012D4823 */  subu       $t1, $t1, $t5
/* 28094 80027494 00094880 */  sll        $t1, $t1, 2
/* 28098 80027498 01095821 */  addu       $t3, $t0, $t1
/* 2809C 8002749C 8D6500A4 */  lw         $a1, 0xa4($t3)
/* 280A0 800274A0 0C055F02 */  jal        func_80157C08
/* 280A4 800274A4 01A02025 */   or        $a0, $t5, $zero
.L800274A8:
/* 280A8 800274A8 0C0082CF */  jal        func_80020B3C
/* 280AC 800274AC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 280B0 800274B0 0C007858 */  jal        func_8001E160
/* 280B4 800274B4 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 280B8 800274B8 10000B38 */  b          .L8002A19C
/* 280BC 800274BC 00000000 */   nop
/* 280C0 800274C0 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 280C4 800274C4 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 280C8 800274C8 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 280CC 800274CC 000C5080 */  sll        $t2, $t4, 2
/* 280D0 800274D0 014C5023 */  subu       $t2, $t2, $t4
/* 280D4 800274D4 000A5080 */  sll        $t2, $t2, 2
/* 280D8 800274D8 014C5023 */  subu       $t2, $t2, $t4
/* 280DC 800274DC 000A5080 */  sll        $t2, $t2, 2
/* 280E0 800274E0 014C5021 */  addu       $t2, $t2, $t4
/* 280E4 800274E4 000A5080 */  sll        $t2, $t2, 2
/* 280E8 800274E8 014C5023 */  subu       $t2, $t2, $t4
/* 280EC 800274EC 000A5080 */  sll        $t2, $t2, 2
/* 280F0 800274F0 24180001 */  addiu      $t8, $zero, 1
/* 280F4 800274F4 032A7821 */  addu       $t7, $t9, $t2
/* 280F8 800274F8 ADF80288 */  sw         $t8, 0x288($t7)
/* 280FC 800274FC 0C00810C */  jal        func_80020430
/* 28100 80027500 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28104 80027504 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 28108 80027508 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2810C 8002750C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 28110 80027510 000E4080 */  sll        $t0, $t6, 2
/* 28114 80027514 010E4023 */  subu       $t0, $t0, $t6
/* 28118 80027518 00084080 */  sll        $t0, $t0, 2
/* 2811C 8002751C 010E4023 */  subu       $t0, $t0, $t6
/* 28120 80027520 00084080 */  sll        $t0, $t0, 2
/* 28124 80027524 010E4021 */  addu       $t0, $t0, $t6
/* 28128 80027528 00084080 */  sll        $t0, $t0, 2
/* 2812C 8002752C 010E4023 */  subu       $t0, $t0, $t6
/* 28130 80027530 00084080 */  sll        $t0, $t0, 2
/* 28134 80027534 01A84821 */  addu       $t1, $t5, $t0
/* 28138 80027538 8D2500A4 */  lw         $a1, 0xa4($t1)
/* 2813C 8002753C 0C055F02 */  jal        func_80157C08
/* 28140 80027540 01C02025 */   or        $a0, $t6, $zero
/* 28144 80027544 10000B15 */  b          .L8002A19C
/* 28148 80027548 00000000 */   nop
/* 2814C 8002754C 0C00810C */  jal        func_80020430
/* 28150 80027550 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28154 80027554 0C00827F */  jal        func_800209FC
/* 28158 80027558 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2815C 8002755C 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 28160 80027560 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 28164 80027564 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 28168 80027568 000BC880 */  sll        $t9, $t3, 2
/* 2816C 8002756C 032BC823 */  subu       $t9, $t9, $t3
/* 28170 80027570 0019C880 */  sll        $t9, $t9, 2
/* 28174 80027574 032BC823 */  subu       $t9, $t9, $t3
/* 28178 80027578 0019C880 */  sll        $t9, $t9, 2
/* 2817C 8002757C 032BC821 */  addu       $t9, $t9, $t3
/* 28180 80027580 0019C880 */  sll        $t9, $t9, 2
/* 28184 80027584 032BC823 */  subu       $t9, $t9, $t3
/* 28188 80027588 0019C880 */  sll        $t9, $t9, 2
/* 2818C 8002758C 01995021 */  addu       $t2, $t4, $t9
/* 28190 80027590 8D4500A4 */  lw         $a1, 0xa4($t2)
/* 28194 80027594 0C055F02 */  jal        func_80157C08
/* 28198 80027598 01602025 */   or        $a0, $t3, $zero
/* 2819C 8002759C 0C007C3D */  jal        func_8001F0F4
/* 281A0 800275A0 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 281A4 800275A4 10000AFD */  b          .L8002A19C
/* 281A8 800275A8 00000000 */   nop
/* 281AC 800275AC 0C008337 */  jal        func_80020CDC
/* 281B0 800275B0 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 281B4 800275B4 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 281B8 800275B8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 281BC 800275BC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 281C0 800275C0 00187080 */  sll        $t6, $t8, 2
/* 281C4 800275C4 01D87023 */  subu       $t6, $t6, $t8
/* 281C8 800275C8 000E7080 */  sll        $t6, $t6, 2
/* 281CC 800275CC 01D87023 */  subu       $t6, $t6, $t8
/* 281D0 800275D0 000E7080 */  sll        $t6, $t6, 2
/* 281D4 800275D4 01D87021 */  addu       $t6, $t6, $t8
/* 281D8 800275D8 000E7080 */  sll        $t6, $t6, 2
/* 281DC 800275DC 01D87023 */  subu       $t6, $t6, $t8
/* 281E0 800275E0 000E7080 */  sll        $t6, $t6, 2
/* 281E4 800275E4 01EE6821 */  addu       $t5, $t7, $t6
/* 281E8 800275E8 8DA500A4 */  lw         $a1, 0xa4($t5)
/* 281EC 800275EC 0C055F02 */  jal        func_80157C08
/* 281F0 800275F0 03002025 */   or        $a0, $t8, $zero
/* 281F4 800275F4 0C007C3D */  jal        func_8001F0F4
/* 281F8 800275F8 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 281FC 800275FC 10000AE7 */  b          .L8002A19C
/* 28200 80027600 00000000 */   nop
/* 28204 80027604 0C008204 */  jal        func_80020810
/* 28208 80027608 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2820C 8002760C 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 28210 80027610 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 28214 80027614 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 28218 80027618 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2821C 8002761C 00095880 */  sll        $t3, $t1, 2
/* 28220 80027620 01695823 */  subu       $t3, $t3, $t1
/* 28224 80027624 000B5880 */  sll        $t3, $t3, 2
/* 28228 80027628 01695823 */  subu       $t3, $t3, $t1
/* 2822C 8002762C 000B5880 */  sll        $t3, $t3, 2
/* 28230 80027630 01695821 */  addu       $t3, $t3, $t1
/* 28234 80027634 000B5880 */  sll        $t3, $t3, 2
/* 28238 80027638 01695823 */  subu       $t3, $t3, $t1
/* 2823C 8002763C 000B5880 */  sll        $t3, $t3, 2
/* 28240 80027640 010B6021 */  addu       $t4, $t0, $t3
/* 28244 80027644 AD80028C */  sw         $zero, 0x28c($t4)
/* 28248 80027648 3C0A8016 */  lui        $t2, %hi(D_8015FB88)
/* 2824C 8002764C 8D4AFB88 */  lw         $t2, %lo(D_8015FB88)($t2)
/* 28250 80027650 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 28254 80027654 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 28258 80027658 000AC080 */  sll        $t8, $t2, 2
/* 2825C 8002765C 030AC023 */  subu       $t8, $t8, $t2
/* 28260 80027660 0018C080 */  sll        $t8, $t8, 2
/* 28264 80027664 030AC023 */  subu       $t8, $t8, $t2
/* 28268 80027668 0018C080 */  sll        $t8, $t8, 2
/* 2826C 8002766C 030AC021 */  addu       $t8, $t8, $t2
/* 28270 80027670 0018C080 */  sll        $t8, $t8, 2
/* 28274 80027674 030AC023 */  subu       $t8, $t8, $t2
/* 28278 80027678 0018C080 */  sll        $t8, $t8, 2
/* 2827C 8002767C 03387821 */  addu       $t7, $t9, $t8
/* 28280 80027680 8DEE028C */  lw         $t6, 0x28c($t7)
/* 28284 80027684 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 28288 80027688 ADEE0288 */  sw         $t6, 0x288($t7)
/* 2828C 8002768C 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 28290 80027690 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 28294 80027694 00094080 */  sll        $t0, $t1, 2
/* 28298 80027698 01094023 */  subu       $t0, $t0, $t1
/* 2829C 8002769C 00084080 */  sll        $t0, $t0, 2
/* 282A0 800276A0 01094023 */  subu       $t0, $t0, $t1
/* 282A4 800276A4 00084080 */  sll        $t0, $t0, 2
/* 282A8 800276A8 01094021 */  addu       $t0, $t0, $t1
/* 282AC 800276AC 00084080 */  sll        $t0, $t0, 2
/* 282B0 800276B0 01094023 */  subu       $t0, $t0, $t1
/* 282B4 800276B4 00084080 */  sll        $t0, $t0, 2
/* 282B8 800276B8 01A85821 */  addu       $t3, $t5, $t0
/* 282BC 800276BC 8D6C0268 */  lw         $t4, 0x268($t3)
/* 282C0 800276C0 1180000D */  beqz       $t4, .L800276F8
/* 282C4 800276C4 00000000 */   nop
/* 282C8 800276C8 C5720294 */  lwc1       $f18, 0x294($t3)
/* 282CC 800276CC 3C014034 */  lui        $at, 0x4034
/* 282D0 800276D0 44813800 */  mtc1       $at, $f7
/* 282D4 800276D4 44803000 */  mtc1       $zero, $f6
/* 282D8 800276D8 46009121 */  cvt.d.s    $f4, $f18
/* 282DC 800276DC 4626203C */  c.lt.d     $f4, $f6
/* 282E0 800276E0 00000000 */  nop
/* 282E4 800276E4 45000AAD */  bc1f       .L8002A19C
/* 282E8 800276E8 00000000 */   nop
/* 282EC 800276EC 3C0A0100 */  lui        $t2, 0x100
/* 282F0 800276F0 10000AAA */  b          .L8002A19C
/* 282F4 800276F4 AD6A0288 */   sw        $t2, 0x288($t3)
.L800276F8:
/* 282F8 800276F8 0C00827F */  jal        func_800209FC
/* 282FC 800276FC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28300 80027700 10000AA6 */  b          .L8002A19C
/* 28304 80027704 00000000 */   nop
/* 28308 80027708 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 2830C 8002770C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 28310 80027710 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 28314 80027714 000E7880 */  sll        $t7, $t6, 2
/* 28318 80027718 01EE7823 */  subu       $t7, $t7, $t6
/* 2831C 8002771C 000F7880 */  sll        $t7, $t7, 2
/* 28320 80027720 01EE7823 */  subu       $t7, $t7, $t6
/* 28324 80027724 000F7880 */  sll        $t7, $t7, 2
/* 28328 80027728 01EE7821 */  addu       $t7, $t7, $t6
/* 2832C 8002772C 000F7880 */  sll        $t7, $t7, 2
/* 28330 80027730 01EE7823 */  subu       $t7, $t7, $t6
/* 28334 80027734 000F7880 */  sll        $t7, $t7, 2
/* 28338 80027738 2419010D */  addiu      $t9, $zero, 0x10d
/* 2833C 8002773C 030F4821 */  addu       $t1, $t8, $t7
/* 28340 80027740 AD390278 */  sw         $t9, 0x278($t1)
/* 28344 80027744 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 28348 80027748 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2834C 8002774C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 28350 80027750 00086080 */  sll        $t4, $t0, 2
/* 28354 80027754 01886023 */  subu       $t4, $t4, $t0
/* 28358 80027758 000C6080 */  sll        $t4, $t4, 2
/* 2835C 8002775C 01886023 */  subu       $t4, $t4, $t0
/* 28360 80027760 000C6080 */  sll        $t4, $t4, 2
/* 28364 80027764 01886021 */  addu       $t4, $t4, $t0
/* 28368 80027768 000C6080 */  sll        $t4, $t4, 2
/* 2836C 8002776C 01886023 */  subu       $t4, $t4, $t0
/* 28370 80027770 000C6080 */  sll        $t4, $t4, 2
/* 28374 80027774 01AC5021 */  addu       $t2, $t5, $t4
/* 28378 80027778 AD400274 */  sw         $zero, 0x274($t2)
/* 2837C 8002777C 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 28380 80027780 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 28384 80027784 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 28388 80027788 000EC080 */  sll        $t8, $t6, 2
/* 2838C 8002778C 030EC023 */  subu       $t8, $t8, $t6
/* 28390 80027790 0018C080 */  sll        $t8, $t8, 2
/* 28394 80027794 030EC023 */  subu       $t8, $t8, $t6
/* 28398 80027798 0018C080 */  sll        $t8, $t8, 2
/* 2839C 8002779C 030EC021 */  addu       $t8, $t8, $t6
/* 283A0 800277A0 0018C080 */  sll        $t8, $t8, 2
/* 283A4 800277A4 030EC023 */  subu       $t8, $t8, $t6
/* 283A8 800277A8 0018C080 */  sll        $t8, $t8, 2
/* 283AC 800277AC 01787821 */  addu       $t7, $t3, $t8
/* 283B0 800277B0 8DF90274 */  lw         $t9, 0x274($t7)
/* 283B4 800277B4 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 283B8 800277B8 ADF90270 */  sw         $t9, 0x270($t7)
/* 283BC 800277BC 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 283C0 800277C0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 283C4 800277C4 00086880 */  sll        $t5, $t0, 2
/* 283C8 800277C8 01A86823 */  subu       $t5, $t5, $t0
/* 283CC 800277CC 000D6880 */  sll        $t5, $t5, 2
/* 283D0 800277D0 01A86823 */  subu       $t5, $t5, $t0
/* 283D4 800277D4 000D6880 */  sll        $t5, $t5, 2
/* 283D8 800277D8 01A86821 */  addu       $t5, $t5, $t0
/* 283DC 800277DC 000D6880 */  sll        $t5, $t5, 2
/* 283E0 800277E0 01A86823 */  subu       $t5, $t5, $t0
/* 283E4 800277E4 000D6880 */  sll        $t5, $t5, 2
/* 283E8 800277E8 012D6021 */  addu       $t4, $t1, $t5
/* 283EC 800277EC 8D8A007C */  lw         $t2, 0x7c($t4)
/* 283F0 800277F0 2941003C */  slti       $at, $t2, 0x3c
/* 283F4 800277F4 10200005 */  beqz       $at, .L8002780C
/* 283F8 800277F8 00000000 */   nop
/* 283FC 800277FC 240E0002 */  addiu      $t6, $zero, 2
/* 28400 80027800 3C018016 */  lui        $at, %hi(D_8015EDB0)
/* 28404 80027804 10000A65 */  b          .L8002A19C
/* 28408 80027808 AC2EEDB0 */   sw        $t6, %lo(D_8015EDB0)($at)
.L8002780C:
/* 2840C 8002780C 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 28410 80027810 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 28414 80027814 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 28418 80027818 0018C880 */  sll        $t9, $t8, 2
/* 2841C 8002781C 0338C823 */  subu       $t9, $t9, $t8
/* 28420 80027820 0019C880 */  sll        $t9, $t9, 2
/* 28424 80027824 0338C823 */  subu       $t9, $t9, $t8
/* 28428 80027828 0019C880 */  sll        $t9, $t9, 2
/* 2842C 8002782C 0338C821 */  addu       $t9, $t9, $t8
/* 28430 80027830 0019C880 */  sll        $t9, $t9, 2
/* 28434 80027834 0338C823 */  subu       $t9, $t9, $t8
/* 28438 80027838 0019C880 */  sll        $t9, $t9, 2
/* 2843C 8002783C 01797821 */  addu       $t7, $t3, $t9
/* 28440 80027840 8DE8007C */  lw         $t0, 0x7c($t7)
/* 28444 80027844 29010078 */  slti       $at, $t0, 0x78
/* 28448 80027848 10200005 */  beqz       $at, .L80027860
/* 2844C 8002784C 00000000 */   nop
/* 28450 80027850 24090001 */  addiu      $t1, $zero, 1
/* 28454 80027854 3C018016 */  lui        $at, %hi(D_8015EDB0)
/* 28458 80027858 10000A50 */  b          .L8002A19C
/* 2845C 8002785C AC29EDB0 */   sw        $t1, %lo(D_8015EDB0)($at)
.L80027860:
/* 28460 80027860 3C018016 */  lui        $at, %hi(D_8015EDB0)
/* 28464 80027864 10000A4D */  b          .L8002A19C
/* 28468 80027868 AC20EDB0 */   sw        $zero, %lo(D_8015EDB0)($at)
/* 2846C 8002786C 0C00810C */  jal        func_80020430
/* 28470 80027870 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28474 80027874 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 28478 80027878 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2847C 8002787C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 28480 80027880 000C5080 */  sll        $t2, $t4, 2
/* 28484 80027884 014C5023 */  subu       $t2, $t2, $t4
/* 28488 80027888 000A5080 */  sll        $t2, $t2, 2
/* 2848C 8002788C 014C5023 */  subu       $t2, $t2, $t4
/* 28490 80027890 000A5080 */  sll        $t2, $t2, 2
/* 28494 80027894 014C5021 */  addu       $t2, $t2, $t4
/* 28498 80027898 000A5080 */  sll        $t2, $t2, 2
/* 2849C 8002789C 014C5023 */  subu       $t2, $t2, $t4
/* 284A0 800278A0 000A5080 */  sll        $t2, $t2, 2
/* 284A4 800278A4 01AA7021 */  addu       $t6, $t5, $t2
/* 284A8 800278A8 8DD80268 */  lw         $t8, 0x268($t6)
/* 284AC 800278AC 13000A3B */  beqz       $t8, .L8002A19C
/* 284B0 800278B0 00000000 */   nop
/* 284B4 800278B4 8DCB0274 */  lw         $t3, 0x274($t6)
/* 284B8 800278B8 24010034 */  addiu      $at, $zero, 0x34
/* 284BC 800278BC 15610006 */  bne        $t3, $at, .L800278D8
/* 284C0 800278C0 00000000 */   nop
/* 284C4 800278C4 01802025 */  or         $a0, $t4, $zero
/* 284C8 800278C8 0C007D44 */  jal        func_8001F510
/* 284CC 800278CC 8DC500A4 */   lw        $a1, 0xa4($t6)
/* 284D0 800278D0 10000022 */  b          .L8002795C
/* 284D4 800278D4 00000000 */   nop
.L800278D8:
/* 284D8 800278D8 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 284DC 800278DC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 284E0 800278E0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 284E4 800278E4 000F4080 */  sll        $t0, $t7, 2
/* 284E8 800278E8 010F4023 */  subu       $t0, $t0, $t7
/* 284EC 800278EC 00084080 */  sll        $t0, $t0, 2
/* 284F0 800278F0 010F4023 */  subu       $t0, $t0, $t7
/* 284F4 800278F4 00084080 */  sll        $t0, $t0, 2
/* 284F8 800278F8 010F4021 */  addu       $t0, $t0, $t7
/* 284FC 800278FC 00084080 */  sll        $t0, $t0, 2
/* 28500 80027900 010F4023 */  subu       $t0, $t0, $t7
/* 28504 80027904 00084080 */  sll        $t0, $t0, 2
/* 28508 80027908 03284821 */  addu       $t1, $t9, $t0
/* 2850C 8002790C 8D2D00A4 */  lw         $t5, 0xa4($t1)
/* 28510 80027910 C52A00E4 */  lwc1       $f10, 0xe4($t1)
/* 28514 80027914 3C01800E */  lui        $at, 0x800e
/* 28518 80027918 000D5080 */  sll        $t2, $t5, 2
/* 2851C 8002791C 014D5023 */  subu       $t2, $t2, $t5
/* 28520 80027920 000A5080 */  sll        $t2, $t2, 2
/* 28524 80027924 014D5023 */  subu       $t2, $t2, $t5
/* 28528 80027928 000A5080 */  sll        $t2, $t2, 2
/* 2852C 8002792C 014D5021 */  addu       $t2, $t2, $t5
/* 28530 80027930 000A5080 */  sll        $t2, $t2, 2
/* 28534 80027934 014D5023 */  subu       $t2, $t2, $t5
/* 28538 80027938 000A5080 */  sll        $t2, $t2, 2
/* 2853C 8002793C 032AC021 */  addu       $t8, $t9, $t2
/* 28540 80027940 C70800E4 */  lwc1       $f8, 0xe4($t8)
/* 28544 80027944 D424CA18 */  ldc1       $f4, -0x35e8($at)
/* 28548 80027948 460A4401 */  sub.s      $f16, $f8, $f10
/* 2854C 8002794C 460084A1 */  cvt.d.s    $f18, $f16
/* 28550 80027950 46249182 */  mul.d      $f6, $f18, $f4
/* 28554 80027954 46203220 */  cvt.s.d    $f8, $f6
/* 28558 80027958 E52800D8 */  swc1       $f8, 0xd8($t1)
.L8002795C:
/* 2855C 8002795C 0C0078B9 */  jal        func_8001E2E4
/* 28560 80027960 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28564 80027964 10000A0D */  b          .L8002A19C
/* 28568 80027968 00000000 */   nop
/* 2856C 8002796C 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 28570 80027970 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 28574 80027974 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 28578 80027978 000E7880 */  sll        $t7, $t6, 2
/* 2857C 8002797C 01EE7823 */  subu       $t7, $t7, $t6
/* 28580 80027980 000F7880 */  sll        $t7, $t7, 2
/* 28584 80027984 01EE7823 */  subu       $t7, $t7, $t6
/* 28588 80027988 000F7880 */  sll        $t7, $t7, 2
/* 2858C 8002798C 01EE7821 */  addu       $t7, $t7, $t6
/* 28590 80027990 000F7880 */  sll        $t7, $t7, 2
/* 28594 80027994 01EE7823 */  subu       $t7, $t7, $t6
/* 28598 80027998 000F7880 */  sll        $t7, $t7, 2
/* 2859C 8002799C 240B0003 */  addiu      $t3, $zero, 3
/* 285A0 800279A0 018F4021 */  addu       $t0, $t4, $t7
/* 285A4 800279A4 AD0B0088 */  sw         $t3, 0x88($t0)
/* 285A8 800279A8 0C00810C */  jal        func_80020430
/* 285AC 800279AC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 285B0 800279B0 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 285B4 800279B4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 285B8 800279B8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 285BC 800279BC 00195080 */  sll        $t2, $t9, 2
/* 285C0 800279C0 01595023 */  subu       $t2, $t2, $t9
/* 285C4 800279C4 000A5080 */  sll        $t2, $t2, 2
/* 285C8 800279C8 01595023 */  subu       $t2, $t2, $t9
/* 285CC 800279CC 000A5080 */  sll        $t2, $t2, 2
/* 285D0 800279D0 01595021 */  addu       $t2, $t2, $t9
/* 285D4 800279D4 000A5080 */  sll        $t2, $t2, 2
/* 285D8 800279D8 01595023 */  subu       $t2, $t2, $t9
/* 285DC 800279DC 000A5080 */  sll        $t2, $t2, 2
/* 285E0 800279E0 01AAC021 */  addu       $t8, $t5, $t2
/* 285E4 800279E4 8F090268 */  lw         $t1, 0x268($t8)
/* 285E8 800279E8 1120003B */  beqz       $t1, .L80027AD8
/* 285EC 800279EC 00000000 */   nop
/* 285F0 800279F0 8F0E0274 */  lw         $t6, 0x274($t8)
/* 285F4 800279F4 24010034 */  addiu      $at, $zero, 0x34
/* 285F8 800279F8 15C10006 */  bne        $t6, $at, .L80027A14
/* 285FC 800279FC 00000000 */   nop
/* 28600 80027A00 03202025 */  or         $a0, $t9, $zero
/* 28604 80027A04 0C007D44 */  jal        func_8001F510
/* 28608 80027A08 8F0500A4 */   lw        $a1, 0xa4($t8)
/* 2860C 80027A0C 10000022 */  b          .L80027A98
/* 28610 80027A10 00000000 */   nop
.L80027A14:
/* 28614 80027A14 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 28618 80027A18 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 2861C 80027A1C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 28620 80027A20 000F5880 */  sll        $t3, $t7, 2
/* 28624 80027A24 016F5823 */  subu       $t3, $t3, $t7
/* 28628 80027A28 000B5880 */  sll        $t3, $t3, 2
/* 2862C 80027A2C 016F5823 */  subu       $t3, $t3, $t7
/* 28630 80027A30 000B5880 */  sll        $t3, $t3, 2
/* 28634 80027A34 016F5821 */  addu       $t3, $t3, $t7
/* 28638 80027A38 000B5880 */  sll        $t3, $t3, 2
/* 2863C 80027A3C 016F5823 */  subu       $t3, $t3, $t7
/* 28640 80027A40 000B5880 */  sll        $t3, $t3, 2
/* 28644 80027A44 018B4021 */  addu       $t0, $t4, $t3
/* 28648 80027A48 8D0D00A4 */  lw         $t5, 0xa4($t0)
/* 2864C 80027A4C C51000E4 */  lwc1       $f16, 0xe4($t0)
/* 28650 80027A50 3C01800E */  lui        $at, 0x800e
/* 28654 80027A54 000D5080 */  sll        $t2, $t5, 2
/* 28658 80027A58 014D5023 */  subu       $t2, $t2, $t5
/* 2865C 80027A5C 000A5080 */  sll        $t2, $t2, 2
/* 28660 80027A60 014D5023 */  subu       $t2, $t2, $t5
/* 28664 80027A64 000A5080 */  sll        $t2, $t2, 2
/* 28668 80027A68 014D5021 */  addu       $t2, $t2, $t5
/* 2866C 80027A6C 000A5080 */  sll        $t2, $t2, 2
/* 28670 80027A70 014D5023 */  subu       $t2, $t2, $t5
/* 28674 80027A74 000A5080 */  sll        $t2, $t2, 2
/* 28678 80027A78 018A4821 */  addu       $t1, $t4, $t2
/* 2867C 80027A7C C52A00E4 */  lwc1       $f10, 0xe4($t1)
/* 28680 80027A80 D426CA20 */  ldc1       $f6, -0x35e0($at)
/* 28684 80027A84 46105481 */  sub.s      $f18, $f10, $f16
/* 28688 80027A88 46009121 */  cvt.d.s    $f4, $f18
/* 2868C 80027A8C 46262202 */  mul.d      $f8, $f4, $f6
/* 28690 80027A90 462042A0 */  cvt.s.d    $f10, $f8
/* 28694 80027A94 E50A00D8 */  swc1       $f10, 0xd8($t0)
.L80027A98:
/* 28698 80027A98 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 2869C 80027A9C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 286A0 80027AA0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 286A4 80027AA4 00187880 */  sll        $t7, $t8, 2
/* 286A8 80027AA8 01F87823 */  subu       $t7, $t7, $t8
/* 286AC 80027AAC 000F7880 */  sll        $t7, $t7, 2
/* 286B0 80027AB0 01F87823 */  subu       $t7, $t7, $t8
/* 286B4 80027AB4 000F7880 */  sll        $t7, $t7, 2
/* 286B8 80027AB8 01F87821 */  addu       $t7, $t7, $t8
/* 286BC 80027ABC 000F7880 */  sll        $t7, $t7, 2
/* 286C0 80027AC0 01F87823 */  subu       $t7, $t7, $t8
/* 286C4 80027AC4 000F7880 */  sll        $t7, $t7, 2
/* 286C8 80027AC8 3C0E0100 */  lui        $t6, 0x100
/* 286CC 80027ACC 032F5821 */  addu       $t3, $t9, $t7
/* 286D0 80027AD0 100009B2 */  b          .L8002A19C
/* 286D4 80027AD4 AD6E0288 */   sw        $t6, 0x288($t3)
.L80027AD8:
/* 286D8 80027AD8 0C00799D */  jal        func_8001E674
/* 286DC 80027ADC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 286E0 80027AE0 100009AE */  b          .L8002A19C
/* 286E4 80027AE4 00000000 */   nop
/* 286E8 80027AE8 0C00810C */  jal        func_80020430
/* 286EC 80027AEC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 286F0 80027AF0 0C0082CF */  jal        func_80020B3C
/* 286F4 80027AF4 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 286F8 80027AF8 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 286FC 80027AFC 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 28700 80027B00 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 28704 80027B04 000D5080 */  sll        $t2, $t5, 2
/* 28708 80027B08 014D5023 */  subu       $t2, $t2, $t5
/* 2870C 80027B0C 000A5080 */  sll        $t2, $t2, 2
/* 28710 80027B10 014D5023 */  subu       $t2, $t2, $t5
/* 28714 80027B14 000A5080 */  sll        $t2, $t2, 2
/* 28718 80027B18 014D5021 */  addu       $t2, $t2, $t5
/* 2871C 80027B1C 000A5080 */  sll        $t2, $t2, 2
/* 28720 80027B20 014D5023 */  subu       $t2, $t2, $t5
/* 28724 80027B24 000A5080 */  sll        $t2, $t2, 2
/* 28728 80027B28 018A4821 */  addu       $t1, $t4, $t2
/* 2872C 80027B2C 8D2500A4 */  lw         $a1, 0xa4($t1)
/* 28730 80027B30 0C055F02 */  jal        func_80157C08
/* 28734 80027B34 01A02025 */   or        $a0, $t5, $zero
/* 28738 80027B38 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 2873C 80027B3C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 28740 80027B40 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 28744 80027B44 0018C880 */  sll        $t9, $t8, 2
/* 28748 80027B48 0338C823 */  subu       $t9, $t9, $t8
/* 2874C 80027B4C 0019C880 */  sll        $t9, $t9, 2
/* 28750 80027B50 0338C823 */  subu       $t9, $t9, $t8
/* 28754 80027B54 0019C880 */  sll        $t9, $t9, 2
/* 28758 80027B58 0338C821 */  addu       $t9, $t9, $t8
/* 2875C 80027B5C 0019C880 */  sll        $t9, $t9, 2
/* 28760 80027B60 0338C823 */  subu       $t9, $t9, $t8
/* 28764 80027B64 0019C880 */  sll        $t9, $t9, 2
/* 28768 80027B68 01197821 */  addu       $t7, $t0, $t9
/* 2876C 80027B6C 8DEE00A4 */  lw         $t6, 0xa4($t7)
/* 28770 80027B70 05C0098A */  bltz       $t6, .L8002A19C
/* 28774 80027B74 AFAE00E0 */   sw        $t6, 0xe0($sp)
/* 28778 80027B78 8DEB0268 */  lw         $t3, 0x268($t7)
/* 2877C 80027B7C 1160003D */  beqz       $t3, .L80027C74
/* 28780 80027B80 00000000 */   nop
/* 28784 80027B84 000E6880 */  sll        $t5, $t6, 2
/* 28788 80027B88 01AE6823 */  subu       $t5, $t5, $t6
/* 2878C 80027B8C 000D6880 */  sll        $t5, $t5, 2
/* 28790 80027B90 01AE6823 */  subu       $t5, $t5, $t6
/* 28794 80027B94 000D6880 */  sll        $t5, $t5, 2
/* 28798 80027B98 01AE6821 */  addu       $t5, $t5, $t6
/* 2879C 80027B9C 000D6880 */  sll        $t5, $t5, 2
/* 287A0 80027BA0 01AE6823 */  subu       $t5, $t5, $t6
/* 287A4 80027BA4 000D6880 */  sll        $t5, $t5, 2
/* 287A8 80027BA8 010D6021 */  addu       $t4, $t0, $t5
/* 287AC 80027BAC 8D8A0268 */  lw         $t2, 0x268($t4)
/* 287B0 80027BB0 1540000F */  bnez       $t2, .L80027BF0
/* 287B4 80027BB4 00000000 */   nop
/* 287B8 80027BB8 C59000E4 */  lwc1       $f16, 0xe4($t4)
/* 287BC 80027BBC 3C01800E */  lui        $at, %hi(D_800DCA28)
/* 287C0 80027BC0 D424CA28 */  ldc1       $f4, %lo(D_800DCA28)($at)
/* 287C4 80027BC4 460084A1 */  cvt.d.s    $f18, $f16
/* 287C8 80027BC8 C5E800E4 */  lwc1       $f8, 0xe4($t7)
/* 287CC 80027BCC 46249180 */  add.d      $f6, $f18, $f4
/* 287D0 80027BD0 3C01800E */  lui        $at, %hi(D_800DCA30)
/* 287D4 80027BD4 D432CA30 */  ldc1       $f18, %lo(D_800DCA30)($at)
/* 287D8 80027BD8 460042A1 */  cvt.d.s    $f10, $f8
/* 287DC 80027BDC 462A3401 */  sub.d      $f16, $f6, $f10
/* 287E0 80027BE0 46328102 */  mul.d      $f4, $f16, $f18
/* 287E4 80027BE4 46202220 */  cvt.s.d    $f8, $f4
/* 287E8 80027BE8 10000022 */  b          .L80027C74
/* 287EC 80027BEC E5E800D8 */   swc1      $f8, 0xd8($t7)
.L80027BF0:
/* 287F0 80027BF0 8FB800E0 */  lw         $t8, 0xe0($sp)
/* 287F4 80027BF4 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 287F8 80027BF8 3C098016 */  lui        $t1, 0x8016
/* 287FC 80027BFC 0018C880 */  sll        $t9, $t8, 2
/* 28800 80027C00 000E4080 */  sll        $t0, $t6, 2
/* 28804 80027C04 0338C823 */  subu       $t9, $t9, $t8
/* 28808 80027C08 010E4023 */  subu       $t0, $t0, $t6
/* 2880C 80027C0C 00084080 */  sll        $t0, $t0, 2
/* 28810 80027C10 0019C880 */  sll        $t9, $t9, 2
/* 28814 80027C14 0338C823 */  subu       $t9, $t9, $t8
/* 28818 80027C18 010E4023 */  subu       $t0, $t0, $t6
/* 2881C 80027C1C 00084080 */  sll        $t0, $t0, 2
/* 28820 80027C20 0019C880 */  sll        $t9, $t9, 2
/* 28824 80027C24 8D29FB9C */  lw         $t1, -0x464($t1)
/* 28828 80027C28 0338C821 */  addu       $t9, $t9, $t8
/* 2882C 80027C2C 010E4021 */  addu       $t0, $t0, $t6
/* 28830 80027C30 00084080 */  sll        $t0, $t0, 2
/* 28834 80027C34 0019C880 */  sll        $t9, $t9, 2
/* 28838 80027C38 0338C823 */  subu       $t9, $t9, $t8
/* 2883C 80027C3C 010E4023 */  subu       $t0, $t0, $t6
/* 28840 80027C40 00084080 */  sll        $t0, $t0, 2
/* 28844 80027C44 0019C880 */  sll        $t9, $t9, 2
/* 28848 80027C48 01395821 */  addu       $t3, $t1, $t9
/* 2884C 80027C4C 01286821 */  addu       $t5, $t1, $t0
/* 28850 80027C50 C5AA00E4 */  lwc1       $f10, 0xe4($t5)
/* 28854 80027C54 C56600E4 */  lwc1       $f6, 0xe4($t3)
/* 28858 80027C58 3C01800E */  lui        $at, %hi(D_800DCA38)
/* 2885C 80027C5C D424CA38 */  ldc1       $f4, %lo(D_800DCA38)($at)
/* 28860 80027C60 460A3401 */  sub.s      $f16, $f6, $f10
/* 28864 80027C64 460084A1 */  cvt.d.s    $f18, $f16
/* 28868 80027C68 46249202 */  mul.d      $f8, $f18, $f4
/* 2886C 80027C6C 462041A0 */  cvt.s.d    $f6, $f8
/* 28870 80027C70 E5A600D8 */  swc1       $f6, 0xd8($t5)
.L80027C74:
/* 28874 80027C74 0C007ACA */  jal        func_8001EB28
/* 28878 80027C78 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2887C 80027C7C 10000947 */  b          .L8002A19C
/* 28880 80027C80 00000000 */   nop
/* 28884 80027C84 0C00810C */  jal        func_80020430
/* 28888 80027C88 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2888C 80027C8C 0C00827F */  jal        func_800209FC
/* 28890 80027C90 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28894 80027C94 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 28898 80027C98 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 2889C 80027C9C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 288A0 80027CA0 000A7880 */  sll        $t7, $t2, 2
/* 288A4 80027CA4 01EA7823 */  subu       $t7, $t7, $t2
/* 288A8 80027CA8 000F7880 */  sll        $t7, $t7, 2
/* 288AC 80027CAC 01EA7823 */  subu       $t7, $t7, $t2
/* 288B0 80027CB0 000F7880 */  sll        $t7, $t7, 2
/* 288B4 80027CB4 01EA7821 */  addu       $t7, $t7, $t2
/* 288B8 80027CB8 000F7880 */  sll        $t7, $t7, 2
/* 288BC 80027CBC 01EA7823 */  subu       $t7, $t7, $t2
/* 288C0 80027CC0 000F7880 */  sll        $t7, $t7, 2
/* 288C4 80027CC4 018FC021 */  addu       $t8, $t4, $t7
/* 288C8 80027CC8 8F0B008C */  lw         $t3, 0x8c($t8)
/* 288CC 80027CCC 01402025 */  or         $a0, $t2, $zero
/* 288D0 80027CD0 AFAB0004 */  sw         $t3, 4($sp)
/* 288D4 80027CD4 8F190090 */  lw         $t9, 0x90($t8)
/* 288D8 80027CD8 8FA50004 */  lw         $a1, 4($sp)
/* 288DC 80027CDC AFB90008 */  sw         $t9, 8($sp)
/* 288E0 80027CE0 8F0B0094 */  lw         $t3, 0x94($t8)
/* 288E4 80027CE4 8FA60008 */  lw         $a2, 8($sp)
/* 288E8 80027CE8 AFAB000C */  sw         $t3, 0xc($sp)
/* 288EC 80027CEC 0C00844F */  jal        func_8002113C
/* 288F0 80027CF0 8FA7000C */   lw        $a3, 0xc($sp)
/* 288F4 80027CF4 0C007C3D */  jal        func_8001F0F4
/* 288F8 80027CF8 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 288FC 80027CFC 10000927 */  b          .L8002A19C
/* 28900 80027D00 00000000 */   nop
/* 28904 80027D04 0C00827F */  jal        func_800209FC
/* 28908 80027D08 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2890C 80027D0C 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 28910 80027D10 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 28914 80027D14 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 28918 80027D18 000E4080 */  sll        $t0, $t6, 2
/* 2891C 80027D1C 010E4023 */  subu       $t0, $t0, $t6
/* 28920 80027D20 00084080 */  sll        $t0, $t0, 2
/* 28924 80027D24 010E4023 */  subu       $t0, $t0, $t6
/* 28928 80027D28 00084080 */  sll        $t0, $t0, 2
/* 2892C 80027D2C 010E4021 */  addu       $t0, $t0, $t6
/* 28930 80027D30 00084080 */  sll        $t0, $t0, 2
/* 28934 80027D34 010E4023 */  subu       $t0, $t0, $t6
/* 28938 80027D38 00084080 */  sll        $t0, $t0, 2
/* 2893C 80027D3C 01286821 */  addu       $t5, $t1, $t0
/* 28940 80027D40 8DA500A4 */  lw         $a1, 0xa4($t5)
/* 28944 80027D44 0C055F02 */  jal        func_80157C08
/* 28948 80027D48 01C02025 */   or        $a0, $t6, $zero
/* 2894C 80027D4C 0C007C3D */  jal        func_8001F0F4
/* 28950 80027D50 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28954 80027D54 10000911 */  b          .L8002A19C
/* 28958 80027D58 00000000 */   nop
/* 2895C 80027D5C 0C00810C */  jal        func_80020430
/* 28960 80027D60 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28964 80027D64 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 28968 80027D68 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 2896C 80027D6C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 28970 80027D70 000C7880 */  sll        $t7, $t4, 2
/* 28974 80027D74 01EC7823 */  subu       $t7, $t7, $t4
/* 28978 80027D78 000F7880 */  sll        $t7, $t7, 2
/* 2897C 80027D7C 01EC7823 */  subu       $t7, $t7, $t4
/* 28980 80027D80 000F7880 */  sll        $t7, $t7, 2
/* 28984 80027D84 01EC7821 */  addu       $t7, $t7, $t4
/* 28988 80027D88 000F7880 */  sll        $t7, $t7, 2
/* 2898C 80027D8C 3C01C120 */  lui        $at, 0xc120
/* 28990 80027D90 01EC7823 */  subu       $t7, $t7, $t4
/* 28994 80027D94 44815000 */  mtc1       $at, $f10
/* 28998 80027D98 000F7880 */  sll        $t7, $t7, 2
/* 2899C 80027D9C 014FC021 */  addu       $t8, $t2, $t7
/* 289A0 80027DA0 100008FE */  b          .L8002A19C
/* 289A4 80027DA4 E70A00D8 */   swc1      $f10, 0xd8($t8)
/* 289A8 80027DA8 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 289AC 80027DAC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 289B0 80027DB0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 289B4 80027DB4 000B7080 */  sll        $t6, $t3, 2
/* 289B8 80027DB8 01CB7023 */  subu       $t6, $t6, $t3
/* 289BC 80027DBC 000E7080 */  sll        $t6, $t6, 2
/* 289C0 80027DC0 01CB7023 */  subu       $t6, $t6, $t3
/* 289C4 80027DC4 000E7080 */  sll        $t6, $t6, 2
/* 289C8 80027DC8 01CB7021 */  addu       $t6, $t6, $t3
/* 289CC 80027DCC 000E7080 */  sll        $t6, $t6, 2
/* 289D0 80027DD0 3C014120 */  lui        $at, 0x4120
/* 289D4 80027DD4 01CB7023 */  subu       $t6, $t6, $t3
/* 289D8 80027DD8 44818000 */  mtc1       $at, $f16
/* 289DC 80027DDC 000E7080 */  sll        $t6, $t6, 2
/* 289E0 80027DE0 032E4821 */  addu       $t1, $t9, $t6
/* 289E4 80027DE4 100008ED */  b          .L8002A19C
/* 289E8 80027DE8 E53000D8 */   swc1      $f16, 0xd8($t1)
/* 289EC 80027DEC 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 289F0 80027DF0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 289F4 80027DF4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 289F8 80027DF8 000D6080 */  sll        $t4, $t5, 2
/* 289FC 80027DFC 018D6023 */  subu       $t4, $t4, $t5
/* 28A00 80027E00 000C6080 */  sll        $t4, $t4, 2
/* 28A04 80027E04 018D6023 */  subu       $t4, $t4, $t5
/* 28A08 80027E08 000C6080 */  sll        $t4, $t4, 2
/* 28A0C 80027E0C 018D6021 */  addu       $t4, $t4, $t5
/* 28A10 80027E10 000C6080 */  sll        $t4, $t4, 2
/* 28A14 80027E14 018D6023 */  subu       $t4, $t4, $t5
/* 28A18 80027E18 000C6080 */  sll        $t4, $t4, 2
/* 28A1C 80027E1C 010C5021 */  addu       $t2, $t0, $t4
/* 28A20 80027E20 8D4F00A4 */  lw         $t7, 0xa4($t2)
/* 28A24 80027E24 3C01800E */  lui        $at, %hi(D_800DCA40)
/* 28A28 80027E28 C432CA40 */  lwc1       $f18, %lo(D_800DCA40)($at)
/* 28A2C 80027E2C AFAF00DC */  sw         $t7, 0xdc($sp)
/* 28A30 80027E30 E55200F4 */  swc1       $f18, 0xf4($t2)
/* 28A34 80027E34 8FB800DC */  lw         $t8, 0xdc($sp)
/* 28A38 80027E38 070008D8 */  bltz       $t8, .L8002A19C
/* 28A3C 80027E3C 00000000 */   nop
/* 28A40 80027E40 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 28A44 80027E44 0018C880 */  sll        $t9, $t8, 2
/* 28A48 80027E48 0338C823 */  subu       $t9, $t9, $t8
/* 28A4C 80027E4C 00096880 */  sll        $t5, $t1, 2
/* 28A50 80027E50 01A96823 */  subu       $t5, $t5, $t1
/* 28A54 80027E54 000D6880 */  sll        $t5, $t5, 2
/* 28A58 80027E58 0019C880 */  sll        $t9, $t9, 2
/* 28A5C 80027E5C 0338C823 */  subu       $t9, $t9, $t8
/* 28A60 80027E60 01A96823 */  subu       $t5, $t5, $t1
/* 28A64 80027E64 000D6880 */  sll        $t5, $t5, 2
/* 28A68 80027E68 0019C880 */  sll        $t9, $t9, 2
/* 28A6C 80027E6C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 28A70 80027E70 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 28A74 80027E74 0338C821 */  addu       $t9, $t9, $t8
/* 28A78 80027E78 01A96821 */  addu       $t5, $t5, $t1
/* 28A7C 80027E7C 000D6880 */  sll        $t5, $t5, 2
/* 28A80 80027E80 0019C880 */  sll        $t9, $t9, 2
/* 28A84 80027E84 0338C823 */  subu       $t9, $t9, $t8
/* 28A88 80027E88 01A96823 */  subu       $t5, $t5, $t1
/* 28A8C 80027E8C 000D6880 */  sll        $t5, $t5, 2
/* 28A90 80027E90 0019C880 */  sll        $t9, $t9, 2
/* 28A94 80027E94 01797021 */  addu       $t6, $t3, $t9
/* 28A98 80027E98 016D4021 */  addu       $t0, $t3, $t5
/* 28A9C 80027E9C C50800E4 */  lwc1       $f8, 0xe4($t0)
/* 28AA0 80027EA0 C5C400E4 */  lwc1       $f4, 0xe4($t6)
/* 28AA4 80027EA4 3C01800E */  lui        $at, %hi(D_800DCA48)
/* 28AA8 80027EA8 D430CA48 */  ldc1       $f16, %lo(D_800DCA48)($at)
/* 28AAC 80027EAC 46082181 */  sub.s      $f6, $f4, $f8
/* 28AB0 80027EB0 460032A1 */  cvt.d.s    $f10, $f6
/* 28AB4 80027EB4 46305482 */  mul.d      $f18, $f10, $f16
/* 28AB8 80027EB8 46209120 */  cvt.s.d    $f4, $f18
/* 28ABC 80027EBC E50400D8 */  swc1       $f4, 0xd8($t0)
/* 28AC0 80027EC0 100008B6 */  b          .L8002A19C
/* 28AC4 80027EC4 00000000 */   nop
/* 28AC8 80027EC8 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 28ACC 80027ECC 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 28AD0 80027ED0 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 28AD4 80027ED4 000F5080 */  sll        $t2, $t7, 2
/* 28AD8 80027ED8 014F5023 */  subu       $t2, $t2, $t7
/* 28ADC 80027EDC 000A5080 */  sll        $t2, $t2, 2
/* 28AE0 80027EE0 014F5023 */  subu       $t2, $t2, $t7
/* 28AE4 80027EE4 000A5080 */  sll        $t2, $t2, 2
/* 28AE8 80027EE8 014F5021 */  addu       $t2, $t2, $t7
/* 28AEC 80027EEC 000A5080 */  sll        $t2, $t2, 2
/* 28AF0 80027EF0 014F5023 */  subu       $t2, $t2, $t7
/* 28AF4 80027EF4 000A5080 */  sll        $t2, $t2, 2
/* 28AF8 80027EF8 018AC021 */  addu       $t8, $t4, $t2
/* 28AFC 80027EFC 8F1900A4 */  lw         $t9, 0xa4($t8)
/* 28B00 80027F00 3C01800E */  lui        $at, %hi(D_800DCA50)
/* 28B04 80027F04 C426CA50 */  lwc1       $f6, %lo(D_800DCA50)($at)
/* 28B08 80027F08 AFB900D8 */  sw         $t9, 0xd8($sp)
/* 28B0C 80027F0C C70800A8 */  lwc1       $f8, 0xa8($t8)
/* 28B10 80027F10 E7A800D4 */  swc1       $f8, 0xd4($sp)
/* 28B14 80027F14 E70600F4 */  swc1       $f6, 0xf4($t8)
/* 28B18 80027F18 8FAE00D8 */  lw         $t6, 0xd8($sp)
/* 28B1C 80027F1C 05C0089F */  bltz       $t6, .L8002A19C
/* 28B20 80027F20 00000000 */   nop
/* 28B24 80027F24 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 28B28 80027F28 000E5880 */  sll        $t3, $t6, 2
/* 28B2C 80027F2C 016E5823 */  subu       $t3, $t3, $t6
/* 28B30 80027F30 00087880 */  sll        $t7, $t0, 2
/* 28B34 80027F34 01E87823 */  subu       $t7, $t7, $t0
/* 28B38 80027F38 000F7880 */  sll        $t7, $t7, 2
/* 28B3C 80027F3C 000B5880 */  sll        $t3, $t3, 2
/* 28B40 80027F40 016E5823 */  subu       $t3, $t3, $t6
/* 28B44 80027F44 01E87823 */  subu       $t7, $t7, $t0
/* 28B48 80027F48 000F7880 */  sll        $t7, $t7, 2
/* 28B4C 80027F4C 000B5880 */  sll        $t3, $t3, 2
/* 28B50 80027F50 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 28B54 80027F54 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 28B58 80027F58 016E5821 */  addu       $t3, $t3, $t6
/* 28B5C 80027F5C 01E87821 */  addu       $t7, $t7, $t0
/* 28B60 80027F60 000F7880 */  sll        $t7, $t7, 2
/* 28B64 80027F64 000B5880 */  sll        $t3, $t3, 2
/* 28B68 80027F68 016E5823 */  subu       $t3, $t3, $t6
/* 28B6C 80027F6C 01E87823 */  subu       $t7, $t7, $t0
/* 28B70 80027F70 000F7880 */  sll        $t7, $t7, 2
/* 28B74 80027F74 000B5880 */  sll        $t3, $t3, 2
/* 28B78 80027F78 012B6821 */  addu       $t5, $t1, $t3
/* 28B7C 80027F7C 012F6021 */  addu       $t4, $t1, $t7
/* 28B80 80027F80 C59000E4 */  lwc1       $f16, 0xe4($t4)
/* 28B84 80027F84 C5AA00E4 */  lwc1       $f10, 0xe4($t5)
/* 28B88 80027F88 3C01800E */  lui        $at, %hi(D_800DCA58)
/* 28B8C 80027F8C D428CA58 */  ldc1       $f8, %lo(D_800DCA58)($at)
/* 28B90 80027F90 46105481 */  sub.s      $f18, $f10, $f16
/* 28B94 80027F94 46009121 */  cvt.d.s    $f4, $f18
/* 28B98 80027F98 46282182 */  mul.d      $f6, $f4, $f8
/* 28B9C 80027F9C 462032A0 */  cvt.s.d    $f10, $f6
/* 28BA0 80027FA0 E58A00D8 */  swc1       $f10, 0xd8($t4)
/* 28BA4 80027FA4 8FA500D8 */  lw         $a1, 0xd8($sp)
/* 28BA8 80027FA8 0C004482 */  jal        func_80011208
/* 28BAC 80027FAC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28BB0 80027FB0 E7A000D4 */  swc1       $f0, 0xd4($sp)
/* 28BB4 80027FB4 8FA400E8 */  lw         $a0, 0xe8($sp)
/* 28BB8 80027FB8 0C0045C0 */  jal        func_80011700
/* 28BBC 80027FBC 8FA500D8 */   lw        $a1, 0xd8($sp)
/* 28BC0 80027FC0 E7A000D0 */  swc1       $f0, 0xd0($sp)
/* 28BC4 80027FC4 0C004788 */  jal        func_80011E20
/* 28BC8 80027FC8 C7AC00D4 */   lwc1      $f12, 0xd4($sp)
/* 28BCC 80027FCC 3C01800E */  lui        $at, %hi(D_800DCA60)
/* 28BD0 80027FD0 D432CA60 */  ldc1       $f18, %lo(D_800DCA60)($at)
/* 28BD4 80027FD4 46000421 */  cvt.d.s    $f16, $f0
/* 28BD8 80027FD8 4632803C */  c.lt.d     $f16, $f18
/* 28BDC 80027FDC 00000000 */  nop
/* 28BE0 80027FE0 4500086E */  bc1f       .L8002A19C
/* 28BE4 80027FE4 00000000 */   nop
/* 28BE8 80027FE8 C7A400D0 */  lwc1       $f4, 0xd0($sp)
/* 28BEC 80027FEC 44803800 */  mtc1       $zero, $f7
/* 28BF0 80027FF0 44803000 */  mtc1       $zero, $f6
/* 28BF4 80027FF4 46002221 */  cvt.d.s    $f8, $f4
/* 28BF8 80027FF8 4628303C */  c.lt.d     $f6, $f8
/* 28BFC 80027FFC 00000000 */  nop
/* 28C00 80028000 45000866 */  bc1f       .L8002A19C
/* 28C04 80028004 00000000 */   nop
/* 28C08 80028008 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 28C0C 8002800C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 28C10 80028010 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 28C14 80028014 00187080 */  sll        $t6, $t8, 2
/* 28C18 80028018 01D87023 */  subu       $t6, $t6, $t8
/* 28C1C 8002801C 000E7080 */  sll        $t6, $t6, 2
/* 28C20 80028020 01D87023 */  subu       $t6, $t6, $t8
/* 28C24 80028024 000E7080 */  sll        $t6, $t6, 2
/* 28C28 80028028 01D87021 */  addu       $t6, $t6, $t8
/* 28C2C 8002802C 000E7080 */  sll        $t6, $t6, 2
/* 28C30 80028030 01D87023 */  subu       $t6, $t6, $t8
/* 28C34 80028034 000E7080 */  sll        $t6, $t6, 2
/* 28C38 80028038 032E5821 */  addu       $t3, $t9, $t6
/* 28C3C 8002803C 8D6800E0 */  lw         $t0, 0xe0($t3)
/* 28C40 80028040 27AA00C4 */  addiu      $t2, $sp, 0xc4
/* 28C44 80028044 3C098016 */  lui        $t1, 0x8016
/* 28C48 80028048 AD480000 */  sw         $t0, ($t2)
/* 28C4C 8002804C 8D6D00E4 */  lw         $t5, 0xe4($t3)
/* 28C50 80028050 3C014034 */  lui        $at, 0x4034
/* 28C54 80028054 44819800 */  mtc1       $at, $f19
/* 28C58 80028058 AD4D0004 */  sw         $t5, 4($t2)
/* 28C5C 8002805C 8D6800E8 */  lw         $t0, 0xe8($t3)
/* 28C60 80028060 44809000 */  mtc1       $zero, $f18
/* 28C64 80028064 27B900C4 */  addiu      $t9, $sp, 0xc4
/* 28C68 80028068 AD480008 */  sw         $t0, 8($t2)
/* 28C6C 8002806C 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 28C70 80028070 8D29FB9C */  lw         $t1, -0x464($t1)
/* 28C74 80028074 C7A800C4 */  lwc1       $f8, 0xc4($sp)
/* 28C78 80028078 000F6080 */  sll        $t4, $t7, 2
/* 28C7C 8002807C 018F6023 */  subu       $t4, $t4, $t7
/* 28C80 80028080 000C6080 */  sll        $t4, $t4, 2
/* 28C84 80028084 018F6023 */  subu       $t4, $t4, $t7
/* 28C88 80028088 000C6080 */  sll        $t4, $t4, 2
/* 28C8C 8002808C 018F6021 */  addu       $t4, $t4, $t7
/* 28C90 80028090 000C6080 */  sll        $t4, $t4, 2
/* 28C94 80028094 018F6023 */  subu       $t4, $t4, $t7
/* 28C98 80028098 000C6080 */  sll        $t4, $t4, 2
/* 28C9C 8002809C 012CC021 */  addu       $t8, $t1, $t4
/* 28CA0 800280A0 C70A00FC */  lwc1       $f10, 0xfc($t8)
/* 28CA4 800280A4 460041A1 */  cvt.d.s    $f6, $f8
/* 28CA8 800280A8 240B012C */  addiu      $t3, $zero, 0x12c
/* 28CAC 800280AC 46005421 */  cvt.d.s    $f16, $f10
/* 28CB0 800280B0 01E03825 */  or         $a3, $t7, $zero
/* 28CB4 800280B4 46328102 */  mul.d      $f4, $f16, $f18
/* 28CB8 800280B8 C7B200C8 */  lwc1       $f18, 0xc8($sp)
/* 28CBC 800280BC 46009221 */  cvt.d.s    $f8, $f18
/* 28CC0 800280C0 46243280 */  add.d      $f10, $f6, $f4
/* 28CC4 800280C4 44803000 */  mtc1       $zero, $f6
/* 28CC8 800280C8 44813800 */  mtc1       $at, $f7
/* 28CCC 800280CC 46205420 */  cvt.s.d    $f16, $f10
/* 28CD0 800280D0 46264101 */  sub.d      $f4, $f8, $f6
/* 28CD4 800280D4 E7B000C4 */  swc1       $f16, 0xc4($sp)
/* 28CD8 800280D8 44804000 */  mtc1       $zero, $f8
/* 28CDC 800280DC 44814800 */  mtc1       $at, $f9
/* 28CE0 800280E0 462022A0 */  cvt.s.d    $f10, $f4
/* 28CE4 800280E4 C7A400CC */  lwc1       $f4, 0xcc($sp)
/* 28CE8 800280E8 E7AA00C8 */  swc1       $f10, 0xc8($sp)
/* 28CEC 800280EC C7100100 */  lwc1       $f16, 0x100($t8)
/* 28CF0 800280F0 460022A1 */  cvt.d.s    $f10, $f4
/* 28CF4 800280F4 460084A1 */  cvt.d.s    $f18, $f16
/* 28CF8 800280F8 46289182 */  mul.d      $f6, $f18, $f8
/* 28CFC 800280FC 46265400 */  add.d      $f16, $f10, $f6
/* 28D00 80028100 462084A0 */  cvt.s.d    $f18, $f16
/* 28D04 80028104 E7B200CC */  swc1       $f18, 0xcc($sp)
/* 28D08 80028108 8F2A0000 */  lw         $t2, ($t9)
/* 28D0C 8002810C AFAA0000 */  sw         $t2, ($sp)
/* 28D10 80028110 8F2E0004 */  lw         $t6, 4($t9)
/* 28D14 80028114 8FA40000 */  lw         $a0, ($sp)
/* 28D18 80028118 AFAE0004 */  sw         $t6, 4($sp)
/* 28D1C 8002811C 8F2A0008 */  lw         $t2, 8($t9)
/* 28D20 80028120 AFAB0010 */  sw         $t3, 0x10($sp)
/* 28D24 80028124 8FA50004 */  lw         $a1, 4($sp)
/* 28D28 80028128 AFAA0008 */  sw         $t2, 8($sp)
/* 28D2C 8002812C 0C011DD4 */  jal        func_80047750
/* 28D30 80028130 8FA60008 */   lw        $a2, 8($sp)
/* 28D34 80028134 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 28D38 80028138 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 28D3C 8002813C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 28D40 80028140 00084880 */  sll        $t1, $t0, 2
/* 28D44 80028144 01284823 */  subu       $t1, $t1, $t0
/* 28D48 80028148 00094880 */  sll        $t1, $t1, 2
/* 28D4C 8002814C 01284823 */  subu       $t1, $t1, $t0
/* 28D50 80028150 00094880 */  sll        $t1, $t1, 2
/* 28D54 80028154 01284821 */  addu       $t1, $t1, $t0
/* 28D58 80028158 00094880 */  sll        $t1, $t1, 2
/* 28D5C 8002815C 01284823 */  subu       $t1, $t1, $t0
/* 28D60 80028160 00094880 */  sll        $t1, $t1, 2
/* 28D64 80028164 01A96021 */  addu       $t4, $t5, $t1
/* 28D68 80028168 C58800F4 */  lwc1       $f8, 0xf4($t4)
/* 28D6C 8002816C 3C01800E */  lui        $at, %hi(D_800DCA68)
/* 28D70 80028170 D42ACA68 */  ldc1       $f10, %lo(D_800DCA68)($at)
/* 28D74 80028174 46004121 */  cvt.d.s    $f4, $f8
/* 28D78 80028178 462A2181 */  sub.d      $f6, $f4, $f10
/* 28D7C 8002817C 46203420 */  cvt.s.d    $f16, $f6
/* 28D80 80028180 E59000F4 */  swc1       $f16, 0xf4($t4)
/* 28D84 80028184 10000805 */  b          .L8002A19C
/* 28D88 80028188 00000000 */   nop
/* 28D8C 8002818C 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 28D90 80028190 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 28D94 80028194 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 28D98 80028198 000E5080 */  sll        $t2, $t6, 2
/* 28D9C 8002819C 014E5023 */  subu       $t2, $t2, $t6
/* 28DA0 800281A0 000A5080 */  sll        $t2, $t2, 2
/* 28DA4 800281A4 014E5023 */  subu       $t2, $t2, $t6
/* 28DA8 800281A8 000A5080 */  sll        $t2, $t2, 2
/* 28DAC 800281AC 014E5021 */  addu       $t2, $t2, $t6
/* 28DB0 800281B0 000A5080 */  sll        $t2, $t2, 2
/* 28DB4 800281B4 014E5023 */  subu       $t2, $t2, $t6
/* 28DB8 800281B8 000A5080 */  sll        $t2, $t2, 2
/* 28DBC 800281BC 032A7821 */  addu       $t7, $t9, $t2
/* 28DC0 800281C0 8DE800E0 */  lw         $t0, 0xe0($t7)
/* 28DC4 800281C4 27B800B8 */  addiu      $t8, $sp, 0xb8
/* 28DC8 800281C8 240D000A */  addiu      $t5, $zero, 0xa
/* 28DCC 800281CC AF080000 */  sw         $t0, ($t8)
/* 28DD0 800281D0 8DEB00E4 */  lw         $t3, 0xe4($t7)
/* 28DD4 800281D4 24090014 */  addiu      $t1, $zero, 0x14
/* 28DD8 800281D8 AF0B0004 */  sw         $t3, 4($t8)
/* 28DDC 800281DC 8DE800E8 */  lw         $t0, 0xe8($t7)
/* 28DE0 800281E0 AF080008 */  sw         $t0, 8($t8)
/* 28DE4 800281E4 AFAD00B4 */  sw         $t5, 0xb4($sp)
/* 28DE8 800281E8 AFA900B0 */  sw         $t1, 0xb0($sp)
/* 28DEC 800281EC 0C00810C */  jal        func_80020430
/* 28DF0 800281F0 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28DF4 800281F4 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 28DF8 800281F8 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 28DFC 800281FC 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 28E00 80028200 000CC880 */  sll        $t9, $t4, 2
/* 28E04 80028204 032CC823 */  subu       $t9, $t9, $t4
/* 28E08 80028208 0019C880 */  sll        $t9, $t9, 2
/* 28E0C 8002820C 032CC823 */  subu       $t9, $t9, $t4
/* 28E10 80028210 0019C880 */  sll        $t9, $t9, 2
/* 28E14 80028214 032CC821 */  addu       $t9, $t9, $t4
/* 28E18 80028218 0019C880 */  sll        $t9, $t9, 2
/* 28E1C 8002821C 032CC823 */  subu       $t9, $t9, $t4
/* 28E20 80028220 0019C880 */  sll        $t9, $t9, 2
/* 28E24 80028224 01D95021 */  addu       $t2, $t6, $t9
/* 28E28 80028228 8D4500A4 */  lw         $a1, 0xa4($t2)
/* 28E2C 8002822C 0C055F02 */  jal        func_80157C08
/* 28E30 80028230 01802025 */   or        $a0, $t4, $zero
/* 28E34 80028234 0C0080BF */  jal        func_800202FC
/* 28E38 80028238 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 28E3C 8002823C 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 28E40 80028240 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 28E44 80028244 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 28E48 80028248 000F5880 */  sll        $t3, $t7, 2
/* 28E4C 8002824C 016F5823 */  subu       $t3, $t3, $t7
/* 28E50 80028250 000B5880 */  sll        $t3, $t3, 2
/* 28E54 80028254 016F5823 */  subu       $t3, $t3, $t7
/* 28E58 80028258 000B5880 */  sll        $t3, $t3, 2
/* 28E5C 8002825C 016F5821 */  addu       $t3, $t3, $t7
/* 28E60 80028260 000B5880 */  sll        $t3, $t3, 2
/* 28E64 80028264 016F5823 */  subu       $t3, $t3, $t7
/* 28E68 80028268 000B5880 */  sll        $t3, $t3, 2
/* 28E6C 8002826C 030B4021 */  addu       $t0, $t8, $t3
/* 28E70 80028270 8D0D006C */  lw         $t5, 0x6c($t0)
/* 28E74 80028274 24010013 */  addiu      $at, $zero, 0x13
/* 28E78 80028278 15A1000D */  bne        $t5, $at, .L800282B0
/* 28E7C 8002827C 00000000 */   nop
/* 28E80 80028280 C7B200BC */  lwc1       $f18, 0xbc($sp)
/* 28E84 80028284 3C01800E */  lui        $at, %hi(D_800DCA70)
/* 28E88 80028288 D424CA70 */  ldc1       $f4, %lo(D_800DCA70)($at)
/* 28E8C 8002828C 46009221 */  cvt.d.s    $f8, $f18
/* 28E90 80028290 24090003 */  addiu      $t1, $zero, 3
/* 28E94 80028294 46244281 */  sub.d      $f10, $f8, $f4
/* 28E98 80028298 240C000C */  addiu      $t4, $zero, 0xc
/* 28E9C 8002829C AFA900B4 */  sw         $t1, 0xb4($sp)
/* 28EA0 800282A0 AFAC00B0 */  sw         $t4, 0xb0($sp)
/* 28EA4 800282A4 462051A0 */  cvt.s.d    $f6, $f10
/* 28EA8 800282A8 1000000A */  b          .L800282D4
/* 28EAC 800282AC E7A600BC */   swc1      $f6, 0xbc($sp)
.L800282B0:
/* 28EB0 800282B0 3C014264 */  lui        $at, 0x4264
/* 28EB4 800282B4 44819000 */  mtc1       $at, $f18
/* 28EB8 800282B8 C7B000BC */  lwc1       $f16, 0xbc($sp)
/* 28EBC 800282BC 240E0007 */  addiu      $t6, $zero, 7
/* 28EC0 800282C0 2419000C */  addiu      $t9, $zero, 0xc
/* 28EC4 800282C4 46128200 */  add.s      $f8, $f16, $f18
/* 28EC8 800282C8 AFAE00B4 */  sw         $t6, 0xb4($sp)
/* 28ECC 800282CC AFB900B0 */  sw         $t9, 0xb0($sp)
/* 28ED0 800282D0 E7A800BC */  swc1       $f8, 0xbc($sp)
.L800282D4:
/* 28ED4 800282D4 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 28ED8 800282D8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 28EDC 800282DC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 28EE0 800282E0 000FC080 */  sll        $t8, $t7, 2
/* 28EE4 800282E4 030FC023 */  subu       $t8, $t8, $t7
/* 28EE8 800282E8 0018C080 */  sll        $t8, $t8, 2
/* 28EEC 800282EC 030FC023 */  subu       $t8, $t8, $t7
/* 28EF0 800282F0 0018C080 */  sll        $t8, $t8, 2
/* 28EF4 800282F4 030FC021 */  addu       $t8, $t8, $t7
/* 28EF8 800282F8 0018C080 */  sll        $t8, $t8, 2
/* 28EFC 800282FC 030FC023 */  subu       $t8, $t8, $t7
/* 28F00 80028300 0018C080 */  sll        $t8, $t8, 2
/* 28F04 80028304 01585821 */  addu       $t3, $t2, $t8
/* 28F08 80028308 8D680278 */  lw         $t0, 0x278($t3)
/* 28F0C 8002830C 24010059 */  addiu      $at, $zero, 0x59
/* 28F10 80028310 150107A2 */  bne        $t0, $at, .L8002A19C
/* 28F14 80028314 00000000 */   nop
/* 28F18 80028318 8D6D0078 */  lw         $t5, 0x78($t3)
/* 28F1C 8002831C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 28F20 80028320 25A9FFFF */  addiu      $t1, $t5, -1
/* 28F24 80028324 AD690078 */  sw         $t1, 0x78($t3)
/* 28F28 80028328 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 28F2C 8002832C 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 28F30 80028330 000EC880 */  sll        $t9, $t6, 2
/* 28F34 80028334 032EC823 */  subu       $t9, $t9, $t6
/* 28F38 80028338 0019C880 */  sll        $t9, $t9, 2
/* 28F3C 8002833C 032EC823 */  subu       $t9, $t9, $t6
/* 28F40 80028340 0019C880 */  sll        $t9, $t9, 2
/* 28F44 80028344 032EC821 */  addu       $t9, $t9, $t6
/* 28F48 80028348 0019C880 */  sll        $t9, $t9, 2
/* 28F4C 8002834C 032EC823 */  subu       $t9, $t9, $t6
/* 28F50 80028350 0019C880 */  sll        $t9, $t9, 2
/* 28F54 80028354 01997821 */  addu       $t7, $t4, $t9
/* 28F58 80028358 8DEA0078 */  lw         $t2, 0x78($t7)
/* 28F5C 8002835C 15400003 */  bnez       $t2, .L8002836C
/* 28F60 80028360 00000000 */   nop
/* 28F64 80028364 8FB800B4 */  lw         $t8, 0xb4($sp)
/* 28F68 80028368 ADF80078 */  sw         $t8, 0x78($t7)
.L8002836C:
/* 28F6C 8002836C 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 28F70 80028370 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 28F74 80028374 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 28F78 80028378 000D4880 */  sll        $t1, $t5, 2
/* 28F7C 8002837C 012D4823 */  subu       $t1, $t1, $t5
/* 28F80 80028380 00094880 */  sll        $t1, $t1, 2
/* 28F84 80028384 012D4823 */  subu       $t1, $t1, $t5
/* 28F88 80028388 00094880 */  sll        $t1, $t1, 2
/* 28F8C 8002838C 012D4821 */  addu       $t1, $t1, $t5
/* 28F90 80028390 00094880 */  sll        $t1, $t1, 2
/* 28F94 80028394 012D4823 */  subu       $t1, $t1, $t5
/* 28F98 80028398 00094880 */  sll        $t1, $t1, 2
/* 28F9C 8002839C 01095821 */  addu       $t3, $t0, $t1
/* 28FA0 800283A0 8D6E0078 */  lw         $t6, 0x78($t3)
/* 28FA4 800283A4 8FAC00B4 */  lw         $t4, 0xb4($sp)
/* 28FA8 800283A8 01CC001A */  div        $zero, $t6, $t4
/* 28FAC 800283AC 0000C810 */  mfhi       $t9
/* 28FB0 800283B0 15800002 */  bnez       $t4, .L800283BC
/* 28FB4 800283B4 00000000 */   nop
/* 28FB8 800283B8 0007000D */  break      7
.L800283BC:
/* 28FBC 800283BC 2401FFFF */   addiu     $at, $zero, -1
/* 28FC0 800283C0 15810004 */  bne        $t4, $at, .L800283D4
/* 28FC4 800283C4 3C018000 */   lui       $at, 0x8000
/* 28FC8 800283C8 15C10002 */  bne        $t6, $at, .L800283D4
/* 28FCC 800283CC 00000000 */   nop
/* 28FD0 800283D0 0006000D */  break      6
.L800283D4:
/* 28FD4 800283D4 17200771 */   bnez      $t9, .L8002A19C
/* 28FD8 800283D8 00000000 */   nop
/* 28FDC 800283DC 27AA00B8 */  addiu      $t2, $sp, 0xb8
/* 28FE0 800283E0 8D4F0000 */  lw         $t7, ($t2)
/* 28FE4 800283E4 2408012C */  addiu      $t0, $zero, 0x12c
/* 28FE8 800283E8 01A03825 */  or         $a3, $t5, $zero
/* 28FEC 800283EC AFAF0000 */  sw         $t7, ($sp)
/* 28FF0 800283F0 8D580004 */  lw         $t8, 4($t2)
/* 28FF4 800283F4 8FA40000 */  lw         $a0, ($sp)
/* 28FF8 800283F8 AFB80004 */  sw         $t8, 4($sp)
/* 28FFC 800283FC 8D4F0008 */  lw         $t7, 8($t2)
/* 29000 80028400 AFA80010 */  sw         $t0, 0x10($sp)
/* 29004 80028404 8FA50004 */  lw         $a1, 4($sp)
/* 29008 80028408 AFAF0008 */  sw         $t7, 8($sp)
/* 2900C 8002840C 0C011DD4 */  jal        func_80047750
/* 29010 80028410 8FA60008 */   lw        $a2, 8($sp)
/* 29014 80028414 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 29018 80028418 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 2901C 8002841C 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 29020 80028420 000B7080 */  sll        $t6, $t3, 2
/* 29024 80028424 01CB7023 */  subu       $t6, $t6, $t3
/* 29028 80028428 000E7080 */  sll        $t6, $t6, 2
/* 2902C 8002842C 01CB7023 */  subu       $t6, $t6, $t3
/* 29030 80028430 000E7080 */  sll        $t6, $t6, 2
/* 29034 80028434 01CB7021 */  addu       $t6, $t6, $t3
/* 29038 80028438 000E7080 */  sll        $t6, $t6, 2
/* 2903C 8002843C 01CB7023 */  subu       $t6, $t6, $t3
/* 29040 80028440 000E7080 */  sll        $t6, $t6, 2
/* 29044 80028444 3C0142A0 */  lui        $at, 0x42a0
/* 29048 80028448 012E6021 */  addu       $t4, $t1, $t6
/* 2904C 8002844C C58400FC */  lwc1       $f4, 0xfc($t4)
/* 29050 80028450 44815000 */  mtc1       $at, $f10
/* 29054 80028454 C5880100 */  lwc1       $f8, 0x100($t4)
/* 29058 80028458 C7B000B8 */  lwc1       $f16, 0xb8($sp)
/* 2905C 8002845C 460A2182 */  mul.s      $f6, $f4, $f10
/* 29060 80028460 44812000 */  mtc1       $at, $f4
/* 29064 80028464 3C013F80 */  lui        $at, 0x3f80
/* 29068 80028468 241900FF */  addiu      $t9, $zero, 0xff
/* 2906C 8002846C 46044282 */  mul.s      $f10, $f8, $f4
/* 29070 80028470 AFB90014 */  sw         $t9, 0x14($sp)
/* 29074 80028474 24040004 */  addiu      $a0, $zero, 4
/* 29078 80028478 8FA600BC */  lw         $a2, 0xbc($sp)
/* 2907C 8002847C 46103480 */  add.s      $f18, $f6, $f16
/* 29080 80028480 C7A600C0 */  lwc1       $f6, 0xc0($sp)
/* 29084 80028484 46065400 */  add.s      $f16, $f10, $f6
/* 29088 80028488 44059000 */  mfc1       $a1, $f18
/* 2908C 8002848C 44819000 */  mtc1       $at, $f18
/* 29090 80028490 44078000 */  mfc1       $a3, $f16
/* 29094 80028494 0C02239B */  jal        func_80088E6C
/* 29098 80028498 E7B20010 */   swc1      $f18, 0x10($sp)
/* 2909C 8002849C 1000073F */  b          .L8002A19C
/* 290A0 800284A0 00000000 */   nop
/* 290A4 800284A4 0C00827F */  jal        func_800209FC
/* 290A8 800284A8 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 290AC 800284AC 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 290B0 800284B0 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 290B4 800284B4 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 290B8 800284B8 00187880 */  sll        $t7, $t8, 2
/* 290BC 800284BC 01F87823 */  subu       $t7, $t7, $t8
/* 290C0 800284C0 000F7880 */  sll        $t7, $t7, 2
/* 290C4 800284C4 01F87823 */  subu       $t7, $t7, $t8
/* 290C8 800284C8 000F7880 */  sll        $t7, $t7, 2
/* 290CC 800284CC 01F87821 */  addu       $t7, $t7, $t8
/* 290D0 800284D0 000F7880 */  sll        $t7, $t7, 2
/* 290D4 800284D4 01F87823 */  subu       $t7, $t7, $t8
/* 290D8 800284D8 000F7880 */  sll        $t7, $t7, 2
/* 290DC 800284DC 014F6821 */  addu       $t5, $t2, $t7
/* 290E0 800284E0 8DA8007C */  lw         $t0, 0x7c($t5)
/* 290E4 800284E4 29010028 */  slti       $at, $t0, 0x28
/* 290E8 800284E8 10200004 */  beqz       $at, .L800284FC
/* 290EC 800284EC 00000000 */   nop
/* 290F0 800284F0 44804000 */  mtc1       $zero, $f8
/* 290F4 800284F4 10000729 */  b          .L8002A19C
/* 290F8 800284F8 E5A800F4 */   swc1      $f8, 0xf4($t5)
.L800284FC:
/* 290FC 800284FC 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 29100 80028500 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 29104 80028504 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 29108 80028508 00097080 */  sll        $t6, $t1, 2
/* 2910C 8002850C 01C97023 */  subu       $t6, $t6, $t1
/* 29110 80028510 000E7080 */  sll        $t6, $t6, 2
/* 29114 80028514 01C97023 */  subu       $t6, $t6, $t1
/* 29118 80028518 000E7080 */  sll        $t6, $t6, 2
/* 2911C 8002851C 01C97021 */  addu       $t6, $t6, $t1
/* 29120 80028520 000E7080 */  sll        $t6, $t6, 2
/* 29124 80028524 01C97023 */  subu       $t6, $t6, $t1
/* 29128 80028528 000E7080 */  sll        $t6, $t6, 2
/* 2912C 8002852C 016E6021 */  addu       $t4, $t3, $t6
/* 29130 80028530 8D99007C */  lw         $t9, 0x7c($t4)
/* 29134 80028534 2B210047 */  slti       $at, $t9, 0x47
/* 29138 80028538 14200004 */  bnez       $at, .L8002854C
/* 2913C 8002853C 00000000 */   nop
/* 29140 80028540 44802000 */  mtc1       $zero, $f4
/* 29144 80028544 10000715 */  b          .L8002A19C
/* 29148 80028548 E58400F4 */   swc1      $f4, 0xf4($t4)
.L8002854C:
/* 2914C 8002854C 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 29150 80028550 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 29154 80028554 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 29158 80028558 000A7880 */  sll        $t7, $t2, 2
/* 2915C 8002855C 01EA7823 */  subu       $t7, $t7, $t2
/* 29160 80028560 000F7880 */  sll        $t7, $t7, 2
/* 29164 80028564 01EA7823 */  subu       $t7, $t7, $t2
/* 29168 80028568 000F7880 */  sll        $t7, $t7, 2
/* 2916C 8002856C 01EA7821 */  addu       $t7, $t7, $t2
/* 29170 80028570 000F7880 */  sll        $t7, $t7, 2
/* 29174 80028574 3C01800E */  lui        $at, %hi(D_800DCA78)
/* 29178 80028578 01EA7823 */  subu       $t7, $t7, $t2
/* 2917C 8002857C C42ACA78 */  lwc1       $f10, %lo(D_800DCA78)($at)
/* 29180 80028580 000F7880 */  sll        $t7, $t7, 2
/* 29184 80028584 030F4021 */  addu       $t0, $t8, $t7
/* 29188 80028588 10000704 */  b          .L8002A19C
/* 2918C 8002858C E50A00F4 */   swc1      $f10, 0xf4($t0)
/* 29190 80028590 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 29194 80028594 3C01800E */  lui        $at, %hi(D_800DCA7C)
/* 29198 80028598 C426CA7C */  lwc1       $f6, %lo(D_800DCA7C)($at)
/* 2919C 8002859C 000B7080 */  sll        $t6, $t3, 2
/* 291A0 800285A0 01CB7023 */  subu       $t6, $t6, $t3
/* 291A4 800285A4 000E7080 */  sll        $t6, $t6, 2
/* 291A8 800285A8 01CB7023 */  subu       $t6, $t6, $t3
/* 291AC 800285AC 000E7080 */  sll        $t6, $t6, 2
/* 291B0 800285B0 3C013F80 */  lui        $at, 0x3f80
/* 291B4 800285B4 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 291B8 800285B8 01CB7021 */  addu       $t6, $t6, $t3
/* 291BC 800285BC 44818000 */  mtc1       $at, $f16
/* 291C0 800285C0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 291C4 800285C4 000E7080 */  sll        $t6, $t6, 2
/* 291C8 800285C8 01CB7023 */  subu       $t6, $t6, $t3
/* 291CC 800285CC 240DFFFF */  addiu      $t5, $zero, -1
/* 291D0 800285D0 000E7080 */  sll        $t6, $t6, 2
/* 291D4 800285D4 AFAD00A4 */  sw         $t5, 0xa4($sp)
/* 291D8 800285D8 E7A600AC */  swc1       $f6, 0xac($sp)
/* 291DC 800285DC E7B000A8 */  swc1       $f16, 0xa8($sp)
/* 291E0 800285E0 012EC821 */  addu       $t9, $t1, $t6
/* 291E4 800285E4 8F2C0070 */  lw         $t4, 0x70($t9)
/* 291E8 800285E8 058000AB */  bltz       $t4, .L80028898
/* 291EC 800285EC AFAC00A0 */   sw        $t4, 0xa0($sp)
/* 291F0 800285F0 0C012058 */  jal        func_80048160
/* 291F4 800285F4 01802025 */   or        $a0, $t4, $zero
/* 291F8 800285F8 AFA200A4 */  sw         $v0, 0xa4($sp)
/* 291FC 800285FC 8FAA00A4 */  lw         $t2, 0xa4($sp)
/* 29200 80028600 054000A7 */  bltz       $t2, .L800288A0
/* 29204 80028604 00000000 */   nop
/* 29208 80028608 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 2920C 8002860C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 29210 80028610 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 29214 80028614 000F4080 */  sll        $t0, $t7, 2
/* 29218 80028618 010F4023 */  subu       $t0, $t0, $t7
/* 2921C 8002861C 00084080 */  sll        $t0, $t0, 2
/* 29220 80028620 010F4023 */  subu       $t0, $t0, $t7
/* 29224 80028624 00084080 */  sll        $t0, $t0, 2
/* 29228 80028628 010F4021 */  addu       $t0, $t0, $t7
/* 2922C 8002862C 00084080 */  sll        $t0, $t0, 2
/* 29230 80028630 010F4023 */  subu       $t0, $t0, $t7
/* 29234 80028634 00084080 */  sll        $t0, $t0, 2
/* 29238 80028638 03086821 */  addu       $t5, $t8, $t0
/* 2923C 8002863C ADAA00A4 */  sw         $t2, 0xa4($t5)
/* 29240 80028640 0C00810C */  jal        func_80020430
/* 29244 80028644 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 29248 80028648 3C058016 */  lui        $a1, %hi(D_8015FB88)
/* 2924C 8002864C 8CA5FB88 */  lw         $a1, %lo(D_8015FB88)($a1)
/* 29250 80028650 0C055F02 */  jal        func_80157C08
/* 29254 80028654 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 29258 80028658 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 2925C 8002865C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 29260 80028660 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 29264 80028664 00097080 */  sll        $t6, $t1, 2
/* 29268 80028668 01C97023 */  subu       $t6, $t6, $t1
/* 2926C 8002866C 000E7080 */  sll        $t6, $t6, 2
/* 29270 80028670 01C97023 */  subu       $t6, $t6, $t1
/* 29274 80028674 000E7080 */  sll        $t6, $t6, 2
/* 29278 80028678 01C97021 */  addu       $t6, $t6, $t1
/* 2927C 8002867C 000E7080 */  sll        $t6, $t6, 2
/* 29280 80028680 01C97023 */  subu       $t6, $t6, $t1
/* 29284 80028684 000E7080 */  sll        $t6, $t6, 2
/* 29288 80028688 016EC821 */  addu       $t9, $t3, $t6
/* 2928C 8002868C 8F2C0088 */  lw         $t4, 0x88($t9)
/* 29290 80028690 24010003 */  addiu      $at, $zero, 3
/* 29294 80028694 15810082 */  bne        $t4, $at, .L800288A0
/* 29298 80028698 00000000 */   nop
/* 2929C 8002869C 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* 292A0 800286A0 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* 292A4 800286A4 8FAA00A4 */  lw         $t2, 0xa4($sp)
/* 292A8 800286A8 000FC080 */  sll        $t8, $t7, 2
/* 292AC 800286AC 000A6880 */  sll        $t5, $t2, 2
/* 292B0 800286B0 030FC023 */  subu       $t8, $t8, $t7
/* 292B4 800286B4 01AA6823 */  subu       $t5, $t5, $t2
/* 292B8 800286B8 000D6880 */  sll        $t5, $t5, 2
/* 292BC 800286BC 0018C080 */  sll        $t8, $t8, 2
/* 292C0 800286C0 030FC023 */  subu       $t8, $t8, $t7
/* 292C4 800286C4 01AA6823 */  subu       $t5, $t5, $t2
/* 292C8 800286C8 000D6880 */  sll        $t5, $t5, 2
/* 292CC 800286CC 0018C080 */  sll        $t8, $t8, 2
/* 292D0 800286D0 030FC021 */  addu       $t8, $t8, $t7
/* 292D4 800286D4 01AA6821 */  addu       $t5, $t5, $t2
/* 292D8 800286D8 000D6880 */  sll        $t5, $t5, 2
/* 292DC 800286DC 0018C080 */  sll        $t8, $t8, 2
/* 292E0 800286E0 030FC023 */  subu       $t8, $t8, $t7
/* 292E4 800286E4 01AA6823 */  subu       $t5, $t5, $t2
/* 292E8 800286E8 000D6880 */  sll        $t5, $t5, 2
/* 292EC 800286EC 0018C080 */  sll        $t8, $t8, 2
/* 292F0 800286F0 01784021 */  addu       $t0, $t3, $t8
/* 292F4 800286F4 016D4821 */  addu       $t1, $t3, $t5
/* 292F8 800286F8 C528008C */  lwc1       $f8, 0x8c($t1)
/* 292FC 800286FC C52A0094 */  lwc1       $f10, 0x94($t1)
/* 29300 80028700 C51200E0 */  lwc1       $f18, 0xe0($t0)
/* 29304 80028704 C50400E8 */  lwc1       $f4, 0xe8($t0)
/* 29308 80028708 46089301 */  sub.s      $f12, $f18, $f8
/* 2930C 8002870C 0C00475A */  jal        func_80011D68
/* 29310 80028710 460A2381 */   sub.s     $f14, $f4, $f10
/* 29314 80028714 E7A000AC */  swc1       $f0, 0xac($sp)
/* 29318 80028718 C7A600AC */  lwc1       $f6, 0xac($sp)
/* 2931C 8002871C 3C01800E */  lui        $at, %hi(D_800DCA80)
/* 29320 80028720 D432CA80 */  ldc1       $f18, %lo(D_800DCA80)($at)
/* 29324 80028724 46003421 */  cvt.d.s    $f16, $f6
/* 29328 80028728 4632803C */  c.lt.d     $f16, $f18
/* 2932C 8002872C 00000000 */  nop
/* 29330 80028730 4500005B */  bc1f       .L800288A0
/* 29334 80028734 3C01800E */   lui       $at, %hi(D_800DCA88)
/* 29338 80028738 D428CA88 */  ldc1       $f8, %lo(D_800DCA88)($at)
/* 2933C 8002873C 4628803C */  c.lt.d     $f16, $f8
/* 29340 80028740 00000000 */  nop
/* 29344 80028744 4500000F */  bc1f       .L80028784
/* 29348 80028748 3C018018 */   lui       $at, %hi(D_8017A324)
/* 2934C 8002874C 3C0E8018 */  lui        $t6, %hi(D_8017A028)
/* 29350 80028750 AC20A324 */  sw         $zero, %lo(D_8017A324)($at)
/* 29354 80028754 25CEA028 */  addiu      $t6, $t6, %lo(D_8017A028)
/* 29358 80028758 8DC5006C */  lw         $a1, 0x6c($t6)
/* 2935C 8002875C 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* 29360 80028760 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* 29364 80028764 AFA00010 */  sw         $zero, 0x10($sp)
/* 29368 80028768 2404001B */  addiu      $a0, $zero, 0x1b
/* 2936C 8002876C 0C0009DF */  jal        func_8000277C
/* 29370 80028770 24070040 */   addiu     $a3, $zero, 0x40
/* 29374 80028774 2419000F */  addiu      $t9, $zero, 0xf
/* 29378 80028778 3C01800D */  lui        $at, %hi(D_800D6300)
/* 2937C 8002877C 10000048 */  b          .L800288A0
/* 29380 80028780 AC396300 */   sw        $t9, %lo(D_800D6300)($at)
.L80028784:
/* 29384 80028784 C7A400AC */  lwc1       $f4, 0xac($sp)
/* 29388 80028788 3C01800E */  lui        $at, %hi(D_800DCA90)
/* 2938C 8002878C D426CA90 */  ldc1       $f6, %lo(D_800DCA90)($at)
/* 29390 80028790 460022A1 */  cvt.d.s    $f10, $f4
/* 29394 80028794 8FAF00A4 */  lw         $t7, 0xa4($sp)
/* 29398 80028798 46265482 */  mul.d      $f18, $f10, $f6
/* 2939C 8002879C 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 293A0 800287A0 000FC080 */  sll        $t8, $t7, 2
/* 293A4 800287A4 030FC023 */  subu       $t8, $t8, $t7
/* 293A8 800287A8 000B6880 */  sll        $t5, $t3, 2
/* 293AC 800287AC 01AB6823 */  subu       $t5, $t5, $t3
/* 293B0 800287B0 000D6880 */  sll        $t5, $t5, 2
/* 293B4 800287B4 0018C080 */  sll        $t8, $t8, 2
/* 293B8 800287B8 030FC023 */  subu       $t8, $t8, $t7
/* 293BC 800287BC 01AB6823 */  subu       $t5, $t5, $t3
/* 293C0 800287C0 46209420 */  cvt.s.d    $f16, $f18
/* 293C4 800287C4 000D6880 */  sll        $t5, $t5, 2
/* 293C8 800287C8 0018C080 */  sll        $t8, $t8, 2
/* 293CC 800287CC 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 293D0 800287D0 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 293D4 800287D4 030FC021 */  addu       $t8, $t8, $t7
/* 293D8 800287D8 01AB6821 */  addu       $t5, $t5, $t3
/* 293DC 800287DC 000D6880 */  sll        $t5, $t5, 2
/* 293E0 800287E0 0018C080 */  sll        $t8, $t8, 2
/* 293E4 800287E4 030FC023 */  subu       $t8, $t8, $t7
/* 293E8 800287E8 01AB6823 */  subu       $t5, $t5, $t3
/* 293EC 800287EC E7B000A8 */  swc1       $f16, 0xa8($sp)
/* 293F0 800287F0 000D6880 */  sll        $t5, $t5, 2
/* 293F4 800287F4 0018C080 */  sll        $t8, $t8, 2
/* 293F8 800287F8 01985021 */  addu       $t2, $t4, $t8
/* 293FC 800287FC 018D4021 */  addu       $t0, $t4, $t5
/* 29400 80028800 C504008C */  lwc1       $f4, 0x8c($t0)
/* 29404 80028804 C54800E0 */  lwc1       $f8, 0xe0($t2)
/* 29408 80028808 3C098016 */  lui        $t1, 0x8016
/* 2940C 8002880C 46044281 */  sub.s      $f10, $f8, $f4
/* 29410 80028810 46105182 */  mul.s      $f6, $f10, $f16
/* 29414 80028814 46064481 */  sub.s      $f18, $f8, $f6
/* 29418 80028818 E51200E0 */  swc1       $f18, 0xe0($t0)
/* 2941C 8002881C 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 29420 80028820 8FAE00A4 */  lw         $t6, 0xa4($sp)
/* 29424 80028824 8D29FB9C */  lw         $t1, -0x464($t1)
/* 29428 80028828 00185080 */  sll        $t2, $t8, 2
/* 2942C 8002882C 000EC880 */  sll        $t9, $t6, 2
/* 29430 80028830 01585023 */  subu       $t2, $t2, $t8
/* 29434 80028834 032EC823 */  subu       $t9, $t9, $t6
/* 29438 80028838 0019C880 */  sll        $t9, $t9, 2
/* 2943C 8002883C 000A5080 */  sll        $t2, $t2, 2
/* 29440 80028840 01585023 */  subu       $t2, $t2, $t8
/* 29444 80028844 032EC823 */  subu       $t9, $t9, $t6
/* 29448 80028848 0019C880 */  sll        $t9, $t9, 2
/* 2944C 8002884C 000A5080 */  sll        $t2, $t2, 2
/* 29450 80028850 01585021 */  addu       $t2, $t2, $t8
/* 29454 80028854 032EC821 */  addu       $t9, $t9, $t6
/* 29458 80028858 0019C880 */  sll        $t9, $t9, 2
/* 2945C 8002885C 000A5080 */  sll        $t2, $t2, 2
/* 29460 80028860 01585023 */  subu       $t2, $t2, $t8
/* 29464 80028864 032EC823 */  subu       $t9, $t9, $t6
/* 29468 80028868 0019C880 */  sll        $t9, $t9, 2
/* 2946C 8002886C 000A5080 */  sll        $t2, $t2, 2
/* 29470 80028870 012A5821 */  addu       $t3, $t1, $t2
/* 29474 80028874 01397821 */  addu       $t7, $t1, $t9
/* 29478 80028878 C5E400E8 */  lwc1       $f4, 0xe8($t7)
/* 2947C 8002887C C56A0094 */  lwc1       $f10, 0x94($t3)
/* 29480 80028880 C7A800A8 */  lwc1       $f8, 0xa8($sp)
/* 29484 80028884 460A2401 */  sub.s      $f16, $f4, $f10
/* 29488 80028888 46088182 */  mul.s      $f6, $f16, $f8
/* 2948C 8002888C 46062481 */  sub.s      $f18, $f4, $f6
/* 29490 80028890 10000003 */  b          .L800288A0
/* 29494 80028894 E57200E8 */   swc1      $f18, 0xe8($t3)
.L80028898:
/* 29498 80028898 0C00810C */  jal        func_80020430
/* 2949C 8002889C 8FA400E8 */   lw        $a0, 0xe8($sp)
.L800288A0:
/* 294A0 800288A0 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 294A4 800288A4 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 294A8 800288A8 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 294AC 800288AC 000D4080 */  sll        $t0, $t5, 2
/* 294B0 800288B0 010D4023 */  subu       $t0, $t0, $t5
/* 294B4 800288B4 00084080 */  sll        $t0, $t0, 2
/* 294B8 800288B8 010D4023 */  subu       $t0, $t0, $t5
/* 294BC 800288BC 00084080 */  sll        $t0, $t0, 2
/* 294C0 800288C0 010D4021 */  addu       $t0, $t0, $t5
/* 294C4 800288C4 00084080 */  sll        $t0, $t0, 2
/* 294C8 800288C8 44805000 */  mtc1       $zero, $f10
/* 294CC 800288CC 010D4023 */  subu       $t0, $t0, $t5
/* 294D0 800288D0 00084080 */  sll        $t0, $t0, 2
/* 294D4 800288D4 01887021 */  addu       $t6, $t4, $t0
/* 294D8 800288D8 E5CA0104 */  swc1       $f10, 0x104($t6)
/* 294DC 800288DC 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 294E0 800288E0 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 294E4 800288E4 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 294E8 800288E8 000FC080 */  sll        $t8, $t7, 2
/* 294EC 800288EC 030FC023 */  subu       $t8, $t8, $t7
/* 294F0 800288F0 0018C080 */  sll        $t8, $t8, 2
/* 294F4 800288F4 030FC023 */  subu       $t8, $t8, $t7
/* 294F8 800288F8 0018C080 */  sll        $t8, $t8, 2
/* 294FC 800288FC 030FC021 */  addu       $t8, $t8, $t7
/* 29500 80028900 0018C080 */  sll        $t8, $t8, 2
/* 29504 80028904 030FC023 */  subu       $t8, $t8, $t7
/* 29508 80028908 0018C080 */  sll        $t8, $t8, 2
/* 2950C 8002890C 03384821 */  addu       $t1, $t9, $t8
/* 29510 80028910 C5300104 */  lwc1       $f16, 0x104($t1)
/* 29514 80028914 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 29518 80028918 44804000 */  mtc1       $zero, $f8
/* 2951C 8002891C E5300108 */  swc1       $f16, 0x108($t1)
/* 29520 80028920 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 29524 80028924 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 29528 80028928 3C088016 */  lui        $t0, 0x8016
/* 2952C 8002892C 000B6880 */  sll        $t5, $t3, 2
/* 29530 80028930 01AB6823 */  subu       $t5, $t5, $t3
/* 29534 80028934 000D6880 */  sll        $t5, $t5, 2
/* 29538 80028938 01AB6823 */  subu       $t5, $t5, $t3
/* 2953C 8002893C 000D6880 */  sll        $t5, $t5, 2
/* 29540 80028940 01AB6821 */  addu       $t5, $t5, $t3
/* 29544 80028944 000D6880 */  sll        $t5, $t5, 2
/* 29548 80028948 01AB6823 */  subu       $t5, $t5, $t3
/* 2954C 8002894C 000D6880 */  sll        $t5, $t5, 2
/* 29550 80028950 014D6021 */  addu       $t4, $t2, $t5
/* 29554 80028954 E5880114 */  swc1       $f8, 0x114($t4)
/* 29558 80028958 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 2955C 8002895C 8D08FB9C */  lw         $t0, -0x464($t0)
/* 29560 80028960 3C188016 */  lui        $t8, 0x8016
/* 29564 80028964 000E7880 */  sll        $t7, $t6, 2
/* 29568 80028968 01EE7823 */  subu       $t7, $t7, $t6
/* 2956C 8002896C 000F7880 */  sll        $t7, $t7, 2
/* 29570 80028970 01EE7823 */  subu       $t7, $t7, $t6
/* 29574 80028974 000F7880 */  sll        $t7, $t7, 2
/* 29578 80028978 01EE7821 */  addu       $t7, $t7, $t6
/* 2957C 8002897C 000F7880 */  sll        $t7, $t7, 2
/* 29580 80028980 01EE7823 */  subu       $t7, $t7, $t6
/* 29584 80028984 000F7880 */  sll        $t7, $t7, 2
/* 29588 80028988 010FC821 */  addu       $t9, $t0, $t7
/* 2958C 8002898C C7240114 */  lwc1       $f4, 0x114($t9)
/* 29590 80028990 3C013FE0 */  lui        $at, 0x3fe0
/* 29594 80028994 44815800 */  mtc1       $at, $f11
/* 29598 80028998 E7240118 */  swc1       $f4, 0x118($t9)
/* 2959C 8002899C 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 295A0 800289A0 8F18FB9C */  lw         $t8, -0x464($t8)
/* 295A4 800289A4 44805000 */  mtc1       $zero, $f10
/* 295A8 800289A8 00095880 */  sll        $t3, $t1, 2
/* 295AC 800289AC 01695823 */  subu       $t3, $t3, $t1
/* 295B0 800289B0 000B5880 */  sll        $t3, $t3, 2
/* 295B4 800289B4 01695823 */  subu       $t3, $t3, $t1
/* 295B8 800289B8 000B5880 */  sll        $t3, $t3, 2
/* 295BC 800289BC 01695821 */  addu       $t3, $t3, $t1
/* 295C0 800289C0 000B5880 */  sll        $t3, $t3, 2
/* 295C4 800289C4 01695823 */  subu       $t3, $t3, $t1
/* 295C8 800289C8 000B5880 */  sll        $t3, $t3, 2
/* 295CC 800289CC 030B5021 */  addu       $t2, $t8, $t3
/* 295D0 800289D0 C54600D4 */  lwc1       $f6, 0xd4($t2)
/* 295D4 800289D4 3C0D8016 */  lui        $t5, 0x8016
/* 295D8 800289D8 460034A1 */  cvt.d.s    $f18, $f6
/* 295DC 800289DC 462A9402 */  mul.d      $f16, $f18, $f10
/* 295E0 800289E0 44809000 */  mtc1       $zero, $f18
/* 295E4 800289E4 44819800 */  mtc1       $at, $f19
/* 295E8 800289E8 46208220 */  cvt.s.d    $f8, $f16
/* 295EC 800289EC E54800D4 */  swc1       $f8, 0xd4($t2)
/* 295F0 800289F0 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 295F4 800289F4 8DADFB9C */  lw         $t5, -0x464($t5)
/* 295F8 800289F8 000C7080 */  sll        $t6, $t4, 2
/* 295FC 800289FC 01CC7023 */  subu       $t6, $t6, $t4
/* 29600 80028A00 000E7080 */  sll        $t6, $t6, 2
/* 29604 80028A04 01CC7023 */  subu       $t6, $t6, $t4
/* 29608 80028A08 000E7080 */  sll        $t6, $t6, 2
/* 2960C 80028A0C 01CC7021 */  addu       $t6, $t6, $t4
/* 29610 80028A10 000E7080 */  sll        $t6, $t6, 2
/* 29614 80028A14 01CC7023 */  subu       $t6, $t6, $t4
/* 29618 80028A18 000E7080 */  sll        $t6, $t6, 2
/* 2961C 80028A1C 01AE4021 */  addu       $t0, $t5, $t6
/* 29620 80028A20 C50400DC */  lwc1       $f4, 0xdc($t0)
/* 29624 80028A24 460021A1 */  cvt.d.s    $f6, $f4
/* 29628 80028A28 46323282 */  mul.d      $f10, $f6, $f18
/* 2962C 80028A2C 46205420 */  cvt.s.d    $f16, $f10
/* 29630 80028A30 E51000DC */  swc1       $f16, 0xdc($t0)
/* 29634 80028A34 100005D9 */  b          .L8002A19C
/* 29638 80028A38 00000000 */   nop
/* 2963C 80028A3C 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 29640 80028A40 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 29644 80028A44 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 29648 80028A48 0009C080 */  sll        $t8, $t1, 2
/* 2964C 80028A4C 0309C023 */  subu       $t8, $t8, $t1
/* 29650 80028A50 0018C080 */  sll        $t8, $t8, 2
/* 29654 80028A54 0309C023 */  subu       $t8, $t8, $t1
/* 29658 80028A58 0018C080 */  sll        $t8, $t8, 2
/* 2965C 80028A5C 0309C021 */  addu       $t8, $t8, $t1
/* 29660 80028A60 0018C080 */  sll        $t8, $t8, 2
/* 29664 80028A64 0309C023 */  subu       $t8, $t8, $t1
/* 29668 80028A68 0018C080 */  sll        $t8, $t8, 2
/* 2966C 80028A6C 03385821 */  addu       $t3, $t9, $t8
/* 29670 80028A70 8D6C00E0 */  lw         $t4, 0xe0($t3)
/* 29674 80028A74 27AF0094 */  addiu      $t7, $sp, 0x94
/* 29678 80028A78 3C088016 */  lui        $t0, 0x8016
/* 2967C 80028A7C ADEC0000 */  sw         $t4, ($t7)
/* 29680 80028A80 8D6A00E4 */  lw         $t2, 0xe4($t3)
/* 29684 80028A84 3C0E8016 */  lui        $t6, 0x8016
/* 29688 80028A88 27AD0088 */  addiu      $t5, $sp, 0x88
/* 2968C 80028A8C ADEA0004 */  sw         $t2, 4($t7)
/* 29690 80028A90 8D6C00E8 */  lw         $t4, 0xe8($t3)
/* 29694 80028A94 ADEC0008 */  sw         $t4, 8($t7)
/* 29698 80028A98 8D08FB88 */  lw         $t0, -0x478($t0)
/* 2969C 80028A9C 8DCEFB9C */  lw         $t6, -0x464($t6)
/* 296A0 80028AA0 00084880 */  sll        $t1, $t0, 2
/* 296A4 80028AA4 01284823 */  subu       $t1, $t1, $t0
/* 296A8 80028AA8 00094880 */  sll        $t1, $t1, 2
/* 296AC 80028AAC 01284823 */  subu       $t1, $t1, $t0
/* 296B0 80028AB0 00094880 */  sll        $t1, $t1, 2
/* 296B4 80028AB4 01284821 */  addu       $t1, $t1, $t0
/* 296B8 80028AB8 00094880 */  sll        $t1, $t1, 2
/* 296BC 80028ABC 01284823 */  subu       $t1, $t1, $t0
/* 296C0 80028AC0 00094880 */  sll        $t1, $t1, 2
/* 296C4 80028AC4 01C9C821 */  addu       $t9, $t6, $t1
/* 296C8 80028AC8 8F2F00E0 */  lw         $t7, 0xe0($t9)
/* 296CC 80028ACC ADAF0000 */  sw         $t7, ($t5)
/* 296D0 80028AD0 8F3800E4 */  lw         $t8, 0xe4($t9)
/* 296D4 80028AD4 ADB80004 */  sw         $t8, 4($t5)
/* 296D8 80028AD8 8F2F00E8 */  lw         $t7, 0xe8($t9)
/* 296DC 80028ADC ADAF0008 */  sw         $t7, 8($t5)
/* 296E0 80028AE0 0C00810C */  jal        func_80020430
/* 296E4 80028AE4 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 296E8 80028AE8 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 296EC 80028AEC 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 296F0 80028AF0 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 296F4 80028AF4 000A6080 */  sll        $t4, $t2, 2
/* 296F8 80028AF8 018A6023 */  subu       $t4, $t4, $t2
/* 296FC 80028AFC 000C6080 */  sll        $t4, $t4, 2
/* 29700 80028B00 018A6023 */  subu       $t4, $t4, $t2
/* 29704 80028B04 000C6080 */  sll        $t4, $t4, 2
/* 29708 80028B08 018A6021 */  addu       $t4, $t4, $t2
/* 2970C 80028B0C 000C6080 */  sll        $t4, $t4, 2
/* 29710 80028B10 018A6023 */  subu       $t4, $t4, $t2
/* 29714 80028B14 000C6080 */  sll        $t4, $t4, 2
/* 29718 80028B18 016C4021 */  addu       $t0, $t3, $t4
/* 2971C 80028B1C 8D0E0088 */  lw         $t6, 0x88($t0)
/* 29720 80028B20 24010003 */  addiu      $at, $zero, 3
/* 29724 80028B24 15C1059D */  bne        $t6, $at, .L8002A19C
/* 29728 80028B28 00000000 */   nop
/* 2972C 80028B2C 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 29730 80028B30 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 29734 80028B34 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 29738 80028B38 000DC880 */  sll        $t9, $t5, 2
/* 2973C 80028B3C 032DC823 */  subu       $t9, $t9, $t5
/* 29740 80028B40 0019C880 */  sll        $t9, $t9, 2
/* 29744 80028B44 032DC823 */  subu       $t9, $t9, $t5
/* 29748 80028B48 0019C880 */  sll        $t9, $t9, 2
/* 2974C 80028B4C 032DC821 */  addu       $t9, $t9, $t5
/* 29750 80028B50 0019C880 */  sll        $t9, $t9, 2
/* 29754 80028B54 032DC823 */  subu       $t9, $t9, $t5
/* 29758 80028B58 0019C880 */  sll        $t9, $t9, 2
/* 2975C 80028B5C 0139C021 */  addu       $t8, $t1, $t9
/* 29760 80028B60 8F0F007C */  lw         $t7, 0x7c($t8)
/* 29764 80028B64 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 29768 80028B68 25EAFFFF */  addiu      $t2, $t7, -1
/* 2976C 80028B6C AF0A007C */  sw         $t2, 0x7c($t8)
/* 29770 80028B70 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 29774 80028B74 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 29778 80028B78 000C4080 */  sll        $t0, $t4, 2
/* 2977C 80028B7C 010C4023 */  subu       $t0, $t0, $t4
/* 29780 80028B80 00084080 */  sll        $t0, $t0, 2
/* 29784 80028B84 010C4023 */  subu       $t0, $t0, $t4
/* 29788 80028B88 00084080 */  sll        $t0, $t0, 2
/* 2978C 80028B8C 010C4021 */  addu       $t0, $t0, $t4
/* 29790 80028B90 00084080 */  sll        $t0, $t0, 2
/* 29794 80028B94 010C4023 */  subu       $t0, $t0, $t4
/* 29798 80028B98 00084080 */  sll        $t0, $t0, 2
/* 2979C 80028B9C 01687021 */  addu       $t6, $t3, $t0
/* 297A0 80028BA0 8DCD007C */  lw         $t5, 0x7c($t6)
/* 297A4 80028BA4 29A10002 */  slti       $at, $t5, 2
/* 297A8 80028BA8 1020018C */  beqz       $at, .L800291DC
/* 297AC 80028BAC 00000000 */   nop
/* 297B0 80028BB0 C5C800FC */  lwc1       $f8, 0xfc($t6)
/* 297B4 80028BB4 3C01404B */  lui        $at, 0x404b
/* 297B8 80028BB8 44813800 */  mtc1       $at, $f7
/* 297BC 80028BBC 44803000 */  mtc1       $zero, $f6
/* 297C0 80028BC0 46004121 */  cvt.d.s    $f4, $f8
/* 297C4 80028BC4 3C014048 */  lui        $at, 0x4048
/* 297C8 80028BC8 46262482 */  mul.d      $f18, $f4, $f6
/* 297CC 80028BCC 44814800 */  mtc1       $at, $f9
/* 297D0 80028BD0 44804000 */  mtc1       $zero, $f8
/* 297D4 80028BD4 C7A60094 */  lwc1       $f6, 0x94($sp)
/* 297D8 80028BD8 3C01404A */  lui        $at, 0x404a
/* 297DC 80028BDC 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* 297E0 80028BE0 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* 297E4 80028BE4 462095A0 */  cvt.s.d    $f22, $f18
/* 297E8 80028BE8 0009C880 */  sll        $t9, $t1, 2
/* 297EC 80028BEC 00095080 */  sll        $t2, $t1, 2
/* 297F0 80028BF0 01495023 */  subu       $t2, $t2, $t1
/* 297F4 80028BF4 E7B6007C */  swc1       $f22, 0x7c($sp)
/* 297F8 80028BF8 C5CA0100 */  lwc1       $f10, 0x100($t6)
/* 297FC 80028BFC 0329C823 */  subu       $t9, $t9, $t1
/* 29800 80028C00 0019C880 */  sll        $t9, $t9, 2
/* 29804 80028C04 46005421 */  cvt.d.s    $f16, $f10
/* 29808 80028C08 000A5080 */  sll        $t2, $t2, 2
/* 2980C 80028C0C 46288102 */  mul.d      $f4, $f16, $f8
/* 29810 80028C10 C7B00098 */  lwc1       $f16, 0x98($sp)
/* 29814 80028C14 01495023 */  subu       $t2, $t2, $t1
/* 29818 80028C18 0329C823 */  subu       $t9, $t9, $t1
/* 2981C 80028C1C 46008221 */  cvt.d.s    $f8, $f16
/* 29820 80028C20 0019C880 */  sll        $t9, $t9, 2
/* 29824 80028C24 000A5080 */  sll        $t2, $t2, 2
/* 29828 80028C28 01495021 */  addu       $t2, $t2, $t1
/* 2982C 80028C2C 46202520 */  cvt.s.d    $f20, $f4
/* 29830 80028C30 44802000 */  mtc1       $zero, $f4
/* 29834 80028C34 44812800 */  mtc1       $at, $f5
/* 29838 80028C38 3C01404B */  lui        $at, 0x404b
/* 2983C 80028C3C 4614B481 */  sub.s      $f18, $f22, $f20
/* 29840 80028C40 E7B40084 */  swc1       $f20, 0x84($sp)
/* 29844 80028C44 0329C821 */  addu       $t9, $t9, $t1
/* 29848 80028C48 0019C880 */  sll        $t9, $t9, 2
/* 2984C 80028C4C 46123280 */  add.s      $f10, $f6, $f18
/* 29850 80028C50 000A5080 */  sll        $t2, $t2, 2
/* 29854 80028C54 01495023 */  subu       $t2, $t2, $t1
/* 29858 80028C58 46244180 */  add.d      $f6, $f8, $f4
/* 2985C 80028C5C E7AA0094 */  swc1       $f10, 0x94($sp)
/* 29860 80028C60 44802000 */  mtc1       $zero, $f4
/* 29864 80028C64 44812800 */  mtc1       $at, $f5
/* 29868 80028C68 462034A0 */  cvt.s.d    $f18, $f6
/* 2986C 80028C6C 3C014048 */  lui        $at, 0x4048
/* 29870 80028C70 0329C823 */  subu       $t9, $t9, $t1
/* 29874 80028C74 0019C880 */  sll        $t9, $t9, 2
/* 29878 80028C78 E7B20098 */  swc1       $f18, 0x98($sp)
/* 2987C 80028C7C C5D00100 */  lwc1       $f16, 0x100($t6)
/* 29880 80028C80 000A5080 */  sll        $t2, $t2, 2
/* 29884 80028C84 016AC021 */  addu       $t8, $t3, $t2
/* 29888 80028C88 46008221 */  cvt.d.s    $f8, $f16
/* 2988C 80028C8C 01797821 */  addu       $t7, $t3, $t9
/* 29890 80028C90 46244182 */  mul.d      $f6, $f8, $f4
/* 29894 80028C94 44804000 */  mtc1       $zero, $f8
/* 29898 80028C98 44814800 */  mtc1       $at, $f9
/* 2989C 80028C9C 462035A0 */  cvt.s.d    $f22, $f6
/* 298A0 80028CA0 C7A6009C */  lwc1       $f6, 0x9c($sp)
/* 298A4 80028CA4 E7B60078 */  swc1       $f22, 0x78($sp)
/* 298A8 80028CA8 C5D200FC */  lwc1       $f18, 0xfc($t6)
/* 298AC 80028CAC 46009421 */  cvt.d.s    $f16, $f18
/* 298B0 80028CB0 46288102 */  mul.d      $f4, $f16, $f8
/* 298B4 80028CB4 46202520 */  cvt.s.d    $f20, $f4
/* 298B8 80028CB8 4616A480 */  add.s      $f18, $f20, $f22
/* 298BC 80028CBC E7B40080 */  swc1       $f20, 0x80($sp)
/* 298C0 80028CC0 46123400 */  add.s      $f16, $f6, $f18
/* 298C4 80028CC4 E7B0009C */  swc1       $f16, 0x9c($sp)
/* 298C8 80028CC8 C5C800F0 */  lwc1       $f8, 0xf0($t6)
/* 298CC 80028CCC E7A8006C */  swc1       $f8, 0x6c($sp)
/* 298D0 80028CD0 C5C400FC */  lwc1       $f4, 0xfc($t6)
/* 298D4 80028CD4 E7A40074 */  swc1       $f4, 0x74($sp)
/* 298D8 80028CD8 C5C60100 */  lwc1       $f6, 0x100($t6)
/* 298DC 80028CDC E7A60070 */  swc1       $f6, 0x70($sp)
/* 298E0 80028CE0 C70800E8 */  lwc1       $f8, 0xe8($t8)
/* 298E4 80028CE4 C5F200E0 */  lwc1       $f18, 0xe0($t7)
/* 298E8 80028CE8 46104381 */  sub.s      $f14, $f8, $f16
/* 298EC 80028CEC 0C016935 */  jal        func_8005A4D4
/* 298F0 80028CF0 460A9301 */   sub.s     $f12, $f18, $f10
/* 298F4 80028CF4 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 298F8 80028CF8 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 298FC 80028CFC 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 29900 80028D00 00086880 */  sll        $t5, $t0, 2
/* 29904 80028D04 01A86823 */  subu       $t5, $t5, $t0
/* 29908 80028D08 000D6880 */  sll        $t5, $t5, 2
/* 2990C 80028D0C 01A86823 */  subu       $t5, $t5, $t0
/* 29910 80028D10 000D6880 */  sll        $t5, $t5, 2
/* 29914 80028D14 01A86821 */  addu       $t5, $t5, $t0
/* 29918 80028D18 000D6880 */  sll        $t5, $t5, 2
/* 2991C 80028D1C 01A86823 */  subu       $t5, $t5, $t0
/* 29920 80028D20 000D6880 */  sll        $t5, $t5, 2
/* 29924 80028D24 018D7021 */  addu       $t6, $t4, $t5
/* 29928 80028D28 E5C000F0 */  swc1       $f0, 0xf0($t6)
/* 2992C 80028D2C 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 29930 80028D30 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 29934 80028D34 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 29938 80028D38 000F4880 */  sll        $t1, $t7, 2
/* 2993C 80028D3C 012F4823 */  subu       $t1, $t1, $t7
/* 29940 80028D40 00094880 */  sll        $t1, $t1, 2
/* 29944 80028D44 012F4823 */  subu       $t1, $t1, $t7
/* 29948 80028D48 00094880 */  sll        $t1, $t1, 2
/* 2994C 80028D4C 012F4821 */  addu       $t1, $t1, $t7
/* 29950 80028D50 00094880 */  sll        $t1, $t1, 2
/* 29954 80028D54 012F4823 */  subu       $t1, $t1, $t7
/* 29958 80028D58 00094880 */  sll        $t1, $t1, 2
/* 2995C 80028D5C 03295821 */  addu       $t3, $t9, $t1
/* 29960 80028D60 0C033F18 */  jal        func_800CFC60
/* 29964 80028D64 C56C00F0 */   lwc1      $f12, 0xf0($t3)
/* 29968 80028D68 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 2996C 80028D6C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 29970 80028D70 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 29974 80028D74 00184080 */  sll        $t0, $t8, 2
/* 29978 80028D78 01184023 */  subu       $t0, $t0, $t8
/* 2997C 80028D7C 00084080 */  sll        $t0, $t0, 2
/* 29980 80028D80 01184023 */  subu       $t0, $t0, $t8
/* 29984 80028D84 00084080 */  sll        $t0, $t0, 2
/* 29988 80028D88 01184021 */  addu       $t0, $t0, $t8
/* 2998C 80028D8C 00084080 */  sll        $t0, $t0, 2
/* 29990 80028D90 01184023 */  subu       $t0, $t0, $t8
/* 29994 80028D94 00084080 */  sll        $t0, $t0, 2
/* 29998 80028D98 01486021 */  addu       $t4, $t2, $t0
/* 2999C 80028D9C E5800100 */  swc1       $f0, 0x100($t4)
/* 299A0 80028DA0 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 299A4 80028DA4 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 299A8 80028DA8 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 299AC 80028DAC 000E7880 */  sll        $t7, $t6, 2
/* 299B0 80028DB0 01EE7823 */  subu       $t7, $t7, $t6
/* 299B4 80028DB4 000F7880 */  sll        $t7, $t7, 2
/* 299B8 80028DB8 01EE7823 */  subu       $t7, $t7, $t6
/* 299BC 80028DBC 000F7880 */  sll        $t7, $t7, 2
/* 299C0 80028DC0 01EE7821 */  addu       $t7, $t7, $t6
/* 299C4 80028DC4 000F7880 */  sll        $t7, $t7, 2
/* 299C8 80028DC8 01EE7823 */  subu       $t7, $t7, $t6
/* 299CC 80028DCC 000F7880 */  sll        $t7, $t7, 2
/* 299D0 80028DD0 01AFC821 */  addu       $t9, $t5, $t7
/* 299D4 80028DD4 0C02F904 */  jal        func_800BE410
/* 299D8 80028DD8 C72C00F0 */   lwc1      $f12, 0xf0($t9)
/* 299DC 80028DDC 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 299E0 80028DE0 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 299E4 80028DE4 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 299E8 80028DE8 000BC080 */  sll        $t8, $t3, 2
/* 299EC 80028DEC 030BC023 */  subu       $t8, $t8, $t3
/* 299F0 80028DF0 0018C080 */  sll        $t8, $t8, 2
/* 299F4 80028DF4 030BC023 */  subu       $t8, $t8, $t3
/* 299F8 80028DF8 0018C080 */  sll        $t8, $t8, 2
/* 299FC 80028DFC 030BC021 */  addu       $t8, $t8, $t3
/* 29A00 80028E00 0018C080 */  sll        $t8, $t8, 2
/* 29A04 80028E04 030BC023 */  subu       $t8, $t8, $t3
/* 29A08 80028E08 0018C080 */  sll        $t8, $t8, 2
/* 29A0C 80028E0C 01385021 */  addu       $t2, $t1, $t8
/* 29A10 80028E10 E54000FC */  swc1       $f0, 0xfc($t2)
/* 29A14 80028E14 27A80094 */  addiu      $t0, $sp, 0x94
/* 29A18 80028E18 8D0E0000 */  lw         $t6, ($t0)
/* 29A1C 80028E1C 240D012C */  addiu      $t5, $zero, 0x12c
/* 29A20 80028E20 8FA700E8 */  lw         $a3, 0xe8($sp)
/* 29A24 80028E24 AFAE0000 */  sw         $t6, ($sp)
/* 29A28 80028E28 8D0C0004 */  lw         $t4, 4($t0)
/* 29A2C 80028E2C 8FA40000 */  lw         $a0, ($sp)
/* 29A30 80028E30 AFAC0004 */  sw         $t4, 4($sp)
/* 29A34 80028E34 8D0E0008 */  lw         $t6, 8($t0)
/* 29A38 80028E38 AFAD0010 */  sw         $t5, 0x10($sp)
/* 29A3C 80028E3C 8FA50004 */  lw         $a1, 4($sp)
/* 29A40 80028E40 AFAE0008 */  sw         $t6, 8($sp)
/* 29A44 80028E44 0C011DD4 */  jal        func_80047750
/* 29A48 80028E48 8FA60008 */   lw        $a2, 8($sp)
/* 29A4C 80028E4C 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 29A50 80028E50 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 29A54 80028E54 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 29A58 80028E58 00195880 */  sll        $t3, $t9, 2
/* 29A5C 80028E5C 01795823 */  subu       $t3, $t3, $t9
/* 29A60 80028E60 000B5880 */  sll        $t3, $t3, 2
/* 29A64 80028E64 01795823 */  subu       $t3, $t3, $t9
/* 29A68 80028E68 000B5880 */  sll        $t3, $t3, 2
/* 29A6C 80028E6C 01795821 */  addu       $t3, $t3, $t9
/* 29A70 80028E70 000B5880 */  sll        $t3, $t3, 2
/* 29A74 80028E74 01795823 */  subu       $t3, $t3, $t9
/* 29A78 80028E78 000B5880 */  sll        $t3, $t3, 2
/* 29A7C 80028E7C 3C0141A0 */  lui        $at, 0x41a0
/* 29A80 80028E80 01EB4821 */  addu       $t1, $t7, $t3
/* 29A84 80028E84 C52400FC */  lwc1       $f4, 0xfc($t1)
/* 29A88 80028E88 44813000 */  mtc1       $at, $f6
/* 29A8C 80028E8C C5300100 */  lwc1       $f16, 0x100($t1)
/* 29A90 80028E90 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* 29A94 80028E94 46062482 */  mul.s      $f18, $f4, $f6
/* 29A98 80028E98 44812000 */  mtc1       $at, $f4
/* 29A9C 80028E9C 3C013F80 */  lui        $at, 0x3f80
/* 29AA0 80028EA0 241800FF */  addiu      $t8, $zero, 0xff
/* 29AA4 80028EA4 46048182 */  mul.s      $f6, $f16, $f4
/* 29AA8 80028EA8 AFB80014 */  sw         $t8, 0x14($sp)
/* 29AAC 80028EAC 24040004 */  addiu      $a0, $zero, 4
/* 29AB0 80028EB0 8FA60098 */  lw         $a2, 0x98($sp)
/* 29AB4 80028EB4 460A9200 */  add.s      $f8, $f18, $f10
/* 29AB8 80028EB8 C7B2009C */  lwc1       $f18, 0x9c($sp)
/* 29ABC 80028EBC 46123280 */  add.s      $f10, $f6, $f18
/* 29AC0 80028EC0 44054000 */  mfc1       $a1, $f8
/* 29AC4 80028EC4 44814000 */  mtc1       $at, $f8
/* 29AC8 80028EC8 44075000 */  mfc1       $a3, $f10
/* 29ACC 80028ECC 0C02239B */  jal        func_80088E6C
/* 29AD0 80028ED0 E7A80010 */   swc1      $f8, 0x10($sp)
/* 29AD4 80028ED4 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* 29AD8 80028ED8 C7B00084 */  lwc1       $f16, 0x84($sp)
/* 29ADC 80028EDC 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* 29AE0 80028EE0 C7AA0080 */  lwc1       $f10, 0x80($sp)
/* 29AE4 80028EE4 46108100 */  add.s      $f4, $f16, $f16
/* 29AE8 80028EE8 00086080 */  sll        $t4, $t0, 2
/* 29AEC 80028EEC C7A60094 */  lwc1       $f6, 0x94($sp)
/* 29AF0 80028EF0 460A5200 */  add.s      $f8, $f10, $f10
/* 29AF4 80028EF4 01886023 */  subu       $t4, $t4, $t0
/* 29AF8 80028EF8 C7B0009C */  lwc1       $f16, 0x9c($sp)
/* 29AFC 80028EFC 000C6080 */  sll        $t4, $t4, 2
/* 29B00 80028F00 01886023 */  subu       $t4, $t4, $t0
/* 29B04 80028F04 46043480 */  add.s      $f18, $f6, $f4
/* 29B08 80028F08 000C6080 */  sll        $t4, $t4, 2
/* 29B0C 80028F0C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 29B10 80028F10 46088181 */  sub.s      $f6, $f16, $f8
/* 29B14 80028F14 01886021 */  addu       $t4, $t4, $t0
/* 29B18 80028F18 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 29B1C 80028F1C 000C6080 */  sll        $t4, $t4, 2
/* 29B20 80028F20 01886023 */  subu       $t4, $t4, $t0
/* 29B24 80028F24 000C6080 */  sll        $t4, $t4, 2
/* 29B28 80028F28 E7B20094 */  swc1       $f18, 0x94($sp)
/* 29B2C 80028F2C E7A6009C */  swc1       $f6, 0x9c($sp)
/* 29B30 80028F30 014C7021 */  addu       $t6, $t2, $t4
/* 29B34 80028F34 C5C400E0 */  lwc1       $f4, 0xe0($t6)
/* 29B38 80028F38 C5CA00E8 */  lwc1       $f10, 0xe8($t6)
/* 29B3C 80028F3C 46122301 */  sub.s      $f12, $f4, $f18
/* 29B40 80028F40 0C016935 */  jal        func_8005A4D4
/* 29B44 80028F44 46065381 */   sub.s     $f14, $f10, $f6
/* 29B48 80028F48 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 29B4C 80028F4C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 29B50 80028F50 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 29B54 80028F54 00197880 */  sll        $t7, $t9, 2
/* 29B58 80028F58 01F97823 */  subu       $t7, $t7, $t9
/* 29B5C 80028F5C 000F7880 */  sll        $t7, $t7, 2
/* 29B60 80028F60 01F97823 */  subu       $t7, $t7, $t9
/* 29B64 80028F64 000F7880 */  sll        $t7, $t7, 2
/* 29B68 80028F68 01F97821 */  addu       $t7, $t7, $t9
/* 29B6C 80028F6C 000F7880 */  sll        $t7, $t7, 2
/* 29B70 80028F70 01F97823 */  subu       $t7, $t7, $t9
/* 29B74 80028F74 000F7880 */  sll        $t7, $t7, 2
/* 29B78 80028F78 01AF5821 */  addu       $t3, $t5, $t7
/* 29B7C 80028F7C E56000F0 */  swc1       $f0, 0xf0($t3)
/* 29B80 80028F80 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 29B84 80028F84 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 29B88 80028F88 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 29B8C 80028F8C 00184080 */  sll        $t0, $t8, 2
/* 29B90 80028F90 01184023 */  subu       $t0, $t0, $t8
/* 29B94 80028F94 00084080 */  sll        $t0, $t0, 2
/* 29B98 80028F98 01184023 */  subu       $t0, $t0, $t8
/* 29B9C 80028F9C 00084080 */  sll        $t0, $t0, 2
/* 29BA0 80028FA0 01184021 */  addu       $t0, $t0, $t8
/* 29BA4 80028FA4 00084080 */  sll        $t0, $t0, 2
/* 29BA8 80028FA8 01184023 */  subu       $t0, $t0, $t8
/* 29BAC 80028FAC 00084080 */  sll        $t0, $t0, 2
/* 29BB0 80028FB0 01285021 */  addu       $t2, $t1, $t0
/* 29BB4 80028FB4 0C033F18 */  jal        func_800CFC60
/* 29BB8 80028FB8 C54C00F0 */   lwc1      $f12, 0xf0($t2)
/* 29BBC 80028FBC 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 29BC0 80028FC0 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 29BC4 80028FC4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 29BC8 80028FC8 000EC880 */  sll        $t9, $t6, 2
/* 29BCC 80028FCC 032EC823 */  subu       $t9, $t9, $t6
/* 29BD0 80028FD0 0019C880 */  sll        $t9, $t9, 2
/* 29BD4 80028FD4 032EC823 */  subu       $t9, $t9, $t6
/* 29BD8 80028FD8 0019C880 */  sll        $t9, $t9, 2
/* 29BDC 80028FDC 032EC821 */  addu       $t9, $t9, $t6
/* 29BE0 80028FE0 0019C880 */  sll        $t9, $t9, 2
/* 29BE4 80028FE4 032EC823 */  subu       $t9, $t9, $t6
/* 29BE8 80028FE8 0019C880 */  sll        $t9, $t9, 2
/* 29BEC 80028FEC 01996821 */  addu       $t5, $t4, $t9
/* 29BF0 80028FF0 E5A00100 */  swc1       $f0, 0x100($t5)
/* 29BF4 80028FF4 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 29BF8 80028FF8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 29BFC 80028FFC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 29C00 80029000 000BC080 */  sll        $t8, $t3, 2
/* 29C04 80029004 030BC023 */  subu       $t8, $t8, $t3
/* 29C08 80029008 0018C080 */  sll        $t8, $t8, 2
/* 29C0C 8002900C 030BC023 */  subu       $t8, $t8, $t3
/* 29C10 80029010 0018C080 */  sll        $t8, $t8, 2
/* 29C14 80029014 030BC021 */  addu       $t8, $t8, $t3
/* 29C18 80029018 0018C080 */  sll        $t8, $t8, 2
/* 29C1C 8002901C 030BC023 */  subu       $t8, $t8, $t3
/* 29C20 80029020 0018C080 */  sll        $t8, $t8, 2
/* 29C24 80029024 01F84821 */  addu       $t1, $t7, $t8
/* 29C28 80029028 0C02F904 */  jal        func_800BE410
/* 29C2C 8002902C C52C00F0 */   lwc1      $f12, 0xf0($t1)
/* 29C30 80029030 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 29C34 80029034 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 29C38 80029038 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 29C3C 8002903C 000A7080 */  sll        $t6, $t2, 2
/* 29C40 80029040 01CA7023 */  subu       $t6, $t6, $t2
/* 29C44 80029044 000E7080 */  sll        $t6, $t6, 2
/* 29C48 80029048 01CA7023 */  subu       $t6, $t6, $t2
/* 29C4C 8002904C 000E7080 */  sll        $t6, $t6, 2
/* 29C50 80029050 01CA7021 */  addu       $t6, $t6, $t2
/* 29C54 80029054 000E7080 */  sll        $t6, $t6, 2
/* 29C58 80029058 01CA7023 */  subu       $t6, $t6, $t2
/* 29C5C 8002905C 000E7080 */  sll        $t6, $t6, 2
/* 29C60 80029060 010E6021 */  addu       $t4, $t0, $t6
/* 29C64 80029064 E58000FC */  swc1       $f0, 0xfc($t4)
/* 29C68 80029068 27B90094 */  addiu      $t9, $sp, 0x94
/* 29C6C 8002906C 8F2B0000 */  lw         $t3, ($t9)
/* 29C70 80029070 240F012C */  addiu      $t7, $zero, 0x12c
/* 29C74 80029074 8FA700E8 */  lw         $a3, 0xe8($sp)
/* 29C78 80029078 AFAB0000 */  sw         $t3, ($sp)
/* 29C7C 8002907C 8F2D0004 */  lw         $t5, 4($t9)
/* 29C80 80029080 8FA40000 */  lw         $a0, ($sp)
/* 29C84 80029084 AFAD0004 */  sw         $t5, 4($sp)
/* 29C88 80029088 8F2B0008 */  lw         $t3, 8($t9)
/* 29C8C 8002908C AFAF0010 */  sw         $t7, 0x10($sp)
/* 29C90 80029090 8FA50004 */  lw         $a1, 4($sp)
/* 29C94 80029094 AFAB0008 */  sw         $t3, 8($sp)
/* 29C98 80029098 0C011DD4 */  jal        func_80047750
/* 29C9C 8002909C 8FA60008 */   lw        $a2, 8($sp)
/* 29CA0 800290A0 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 29CA4 800290A4 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 29CA8 800290A8 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 29CAC 800290AC 00095080 */  sll        $t2, $t1, 2
/* 29CB0 800290B0 01495023 */  subu       $t2, $t2, $t1
/* 29CB4 800290B4 000A5080 */  sll        $t2, $t2, 2
/* 29CB8 800290B8 01495023 */  subu       $t2, $t2, $t1
/* 29CBC 800290BC 000A5080 */  sll        $t2, $t2, 2
/* 29CC0 800290C0 01495021 */  addu       $t2, $t2, $t1
/* 29CC4 800290C4 000A5080 */  sll        $t2, $t2, 2
/* 29CC8 800290C8 01495023 */  subu       $t2, $t2, $t1
/* 29CCC 800290CC 000A5080 */  sll        $t2, $t2, 2
/* 29CD0 800290D0 3C0141A0 */  lui        $at, 0x41a0
/* 29CD4 800290D4 030A4021 */  addu       $t0, $t8, $t2
/* 29CD8 800290D8 C51000FC */  lwc1       $f16, 0xfc($t0)
/* 29CDC 800290DC 44814000 */  mtc1       $at, $f8
/* 29CE0 800290E0 C5060100 */  lwc1       $f6, 0x100($t0)
/* 29CE4 800290E4 C7B20094 */  lwc1       $f18, 0x94($sp)
/* 29CE8 800290E8 46088102 */  mul.s      $f4, $f16, $f8
/* 29CEC 800290EC 44818000 */  mtc1       $at, $f16
/* 29CF0 800290F0 3C013F80 */  lui        $at, 0x3f80
/* 29CF4 800290F4 240E00FF */  addiu      $t6, $zero, 0xff
/* 29CF8 800290F8 46103202 */  mul.s      $f8, $f6, $f16
/* 29CFC 800290FC AFAE0014 */  sw         $t6, 0x14($sp)
/* 29D00 80029100 24040004 */  addiu      $a0, $zero, 4
/* 29D04 80029104 8FA60098 */  lw         $a2, 0x98($sp)
/* 29D08 80029108 46122280 */  add.s      $f10, $f4, $f18
/* 29D0C 8002910C C7A4009C */  lwc1       $f4, 0x9c($sp)
/* 29D10 80029110 46044480 */  add.s      $f18, $f8, $f4
/* 29D14 80029114 44055000 */  mfc1       $a1, $f10
/* 29D18 80029118 44815000 */  mtc1       $at, $f10
/* 29D1C 8002911C 44079000 */  mfc1       $a3, $f18
/* 29D20 80029120 0C02239B */  jal        func_80088E6C
/* 29D24 80029124 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 29D28 80029128 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 29D2C 8002912C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 29D30 80029130 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 29D34 80029134 00196880 */  sll        $t5, $t9, 2
/* 29D38 80029138 01B96823 */  subu       $t5, $t5, $t9
/* 29D3C 8002913C 000D6880 */  sll        $t5, $t5, 2
/* 29D40 80029140 01B96823 */  subu       $t5, $t5, $t9
/* 29D44 80029144 000D6880 */  sll        $t5, $t5, 2
/* 29D48 80029148 01B96821 */  addu       $t5, $t5, $t9
/* 29D4C 8002914C 000D6880 */  sll        $t5, $t5, 2
/* 29D50 80029150 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* 29D54 80029154 01B96823 */  subu       $t5, $t5, $t9
/* 29D58 80029158 000D6880 */  sll        $t5, $t5, 2
/* 29D5C 8002915C 018D5821 */  addu       $t3, $t4, $t5
/* 29D60 80029160 E56600F0 */  swc1       $f6, 0xf0($t3)
/* 29D64 80029164 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 29D68 80029168 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 29D6C 8002916C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 29D70 80029170 0009C080 */  sll        $t8, $t1, 2
/* 29D74 80029174 0309C023 */  subu       $t8, $t8, $t1
/* 29D78 80029178 0018C080 */  sll        $t8, $t8, 2
/* 29D7C 8002917C 0309C023 */  subu       $t8, $t8, $t1
/* 29D80 80029180 0018C080 */  sll        $t8, $t8, 2
/* 29D84 80029184 0309C021 */  addu       $t8, $t8, $t1
/* 29D88 80029188 0018C080 */  sll        $t8, $t8, 2
/* 29D8C 8002918C C7B00074 */  lwc1       $f16, 0x74($sp)
/* 29D90 80029190 0309C023 */  subu       $t8, $t8, $t1
/* 29D94 80029194 0018C080 */  sll        $t8, $t8, 2
/* 29D98 80029198 01F85021 */  addu       $t2, $t7, $t8
/* 29D9C 8002919C E55000FC */  swc1       $f16, 0xfc($t2)
/* 29DA0 800291A0 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 29DA4 800291A4 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 29DA8 800291A8 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 29DAC 800291AC 000EC880 */  sll        $t9, $t6, 2
/* 29DB0 800291B0 032EC823 */  subu       $t9, $t9, $t6
/* 29DB4 800291B4 0019C880 */  sll        $t9, $t9, 2
/* 29DB8 800291B8 032EC823 */  subu       $t9, $t9, $t6
/* 29DBC 800291BC 0019C880 */  sll        $t9, $t9, 2
/* 29DC0 800291C0 032EC821 */  addu       $t9, $t9, $t6
/* 29DC4 800291C4 0019C880 */  sll        $t9, $t9, 2
/* 29DC8 800291C8 C7A80070 */  lwc1       $f8, 0x70($sp)
/* 29DCC 800291CC 032EC823 */  subu       $t9, $t9, $t6
/* 29DD0 800291D0 0019C880 */  sll        $t9, $t9, 2
/* 29DD4 800291D4 01196021 */  addu       $t4, $t0, $t9
/* 29DD8 800291D8 E5880100 */  swc1       $f8, 0x100($t4)
.L800291DC:
/* 29DDC 800291DC 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 29DE0 800291E0 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 29DE4 800291E4 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 29DE8 800291E8 000B4880 */  sll        $t1, $t3, 2
/* 29DEC 800291EC 012B4823 */  subu       $t1, $t1, $t3
/* 29DF0 800291F0 00094880 */  sll        $t1, $t1, 2
/* 29DF4 800291F4 012B4823 */  subu       $t1, $t1, $t3
/* 29DF8 800291F8 00094880 */  sll        $t1, $t1, 2
/* 29DFC 800291FC 012B4821 */  addu       $t1, $t1, $t3
/* 29E00 80029200 00094880 */  sll        $t1, $t1, 2
/* 29E04 80029204 44802000 */  mtc1       $zero, $f4
/* 29E08 80029208 012B4823 */  subu       $t1, $t1, $t3
/* 29E0C 8002920C 00094880 */  sll        $t1, $t1, 2
/* 29E10 80029210 01A97821 */  addu       $t7, $t5, $t1
/* 29E14 80029214 E5E40104 */  swc1       $f4, 0x104($t7)
/* 29E18 80029218 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 29E1C 8002921C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 29E20 80029220 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 29E24 80029224 000A7080 */  sll        $t6, $t2, 2
/* 29E28 80029228 01CA7023 */  subu       $t6, $t6, $t2
/* 29E2C 8002922C 000E7080 */  sll        $t6, $t6, 2
/* 29E30 80029230 01CA7023 */  subu       $t6, $t6, $t2
/* 29E34 80029234 000E7080 */  sll        $t6, $t6, 2
/* 29E38 80029238 01CA7021 */  addu       $t6, $t6, $t2
/* 29E3C 8002923C 000E7080 */  sll        $t6, $t6, 2
/* 29E40 80029240 01CA7023 */  subu       $t6, $t6, $t2
/* 29E44 80029244 000E7080 */  sll        $t6, $t6, 2
/* 29E48 80029248 030E4021 */  addu       $t0, $t8, $t6
/* 29E4C 8002924C C5120104 */  lwc1       $f18, 0x104($t0)
/* 29E50 80029250 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 29E54 80029254 44805000 */  mtc1       $zero, $f10
/* 29E58 80029258 E5120108 */  swc1       $f18, 0x108($t0)
/* 29E5C 8002925C 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 29E60 80029260 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 29E64 80029264 3C098016 */  lui        $t1, 0x8016
/* 29E68 80029268 000C5880 */  sll        $t3, $t4, 2
/* 29E6C 8002926C 016C5823 */  subu       $t3, $t3, $t4
/* 29E70 80029270 000B5880 */  sll        $t3, $t3, 2
/* 29E74 80029274 016C5823 */  subu       $t3, $t3, $t4
/* 29E78 80029278 000B5880 */  sll        $t3, $t3, 2
/* 29E7C 8002927C 016C5821 */  addu       $t3, $t3, $t4
/* 29E80 80029280 000B5880 */  sll        $t3, $t3, 2
/* 29E84 80029284 016C5823 */  subu       $t3, $t3, $t4
/* 29E88 80029288 000B5880 */  sll        $t3, $t3, 2
/* 29E8C 8002928C 032B6821 */  addu       $t5, $t9, $t3
/* 29E90 80029290 E5AA0114 */  swc1       $f10, 0x114($t5)
/* 29E94 80029294 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 29E98 80029298 8D29FB9C */  lw         $t1, -0x464($t1)
/* 29E9C 8002929C 3C0E8016 */  lui        $t6, 0x8016
/* 29EA0 800292A0 000F5080 */  sll        $t2, $t7, 2
/* 29EA4 800292A4 014F5023 */  subu       $t2, $t2, $t7
/* 29EA8 800292A8 000A5080 */  sll        $t2, $t2, 2
/* 29EAC 800292AC 014F5023 */  subu       $t2, $t2, $t7
/* 29EB0 800292B0 000A5080 */  sll        $t2, $t2, 2
/* 29EB4 800292B4 014F5021 */  addu       $t2, $t2, $t7
/* 29EB8 800292B8 000A5080 */  sll        $t2, $t2, 2
/* 29EBC 800292BC 014F5023 */  subu       $t2, $t2, $t7
/* 29EC0 800292C0 000A5080 */  sll        $t2, $t2, 2
/* 29EC4 800292C4 012AC021 */  addu       $t8, $t1, $t2
/* 29EC8 800292C8 C7060114 */  lwc1       $f6, 0x114($t8)
/* 29ECC 800292CC 3C013FE0 */  lui        $at, 0x3fe0
/* 29ED0 800292D0 44812800 */  mtc1       $at, $f5
/* 29ED4 800292D4 E7060118 */  swc1       $f6, 0x118($t8)
/* 29ED8 800292D8 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 29EDC 800292DC 8DCEFB9C */  lw         $t6, -0x464($t6)
/* 29EE0 800292E0 44802000 */  mtc1       $zero, $f4
/* 29EE4 800292E4 00086080 */  sll        $t4, $t0, 2
/* 29EE8 800292E8 01886023 */  subu       $t4, $t4, $t0
/* 29EEC 800292EC 000C6080 */  sll        $t4, $t4, 2
/* 29EF0 800292F0 01886023 */  subu       $t4, $t4, $t0
/* 29EF4 800292F4 000C6080 */  sll        $t4, $t4, 2
/* 29EF8 800292F8 01886021 */  addu       $t4, $t4, $t0
/* 29EFC 800292FC 000C6080 */  sll        $t4, $t4, 2
/* 29F00 80029300 01886023 */  subu       $t4, $t4, $t0
/* 29F04 80029304 000C6080 */  sll        $t4, $t4, 2
/* 29F08 80029308 01CCC821 */  addu       $t9, $t6, $t4
/* 29F0C 8002930C C73000D4 */  lwc1       $f16, 0xd4($t9)
/* 29F10 80029310 3C0B8016 */  lui        $t3, 0x8016
/* 29F14 80029314 46008221 */  cvt.d.s    $f8, $f16
/* 29F18 80029318 46244482 */  mul.d      $f18, $f8, $f4
/* 29F1C 8002931C 44804000 */  mtc1       $zero, $f8
/* 29F20 80029320 44814800 */  mtc1       $at, $f9
/* 29F24 80029324 462092A0 */  cvt.s.d    $f10, $f18
/* 29F28 80029328 E72A00D4 */  swc1       $f10, 0xd4($t9)
/* 29F2C 8002932C 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 29F30 80029330 8D6BFB9C */  lw         $t3, -0x464($t3)
/* 29F34 80029334 000D7880 */  sll        $t7, $t5, 2
/* 29F38 80029338 01ED7823 */  subu       $t7, $t7, $t5
/* 29F3C 8002933C 000F7880 */  sll        $t7, $t7, 2
/* 29F40 80029340 01ED7823 */  subu       $t7, $t7, $t5
/* 29F44 80029344 000F7880 */  sll        $t7, $t7, 2
/* 29F48 80029348 01ED7821 */  addu       $t7, $t7, $t5
/* 29F4C 8002934C 000F7880 */  sll        $t7, $t7, 2
/* 29F50 80029350 01ED7823 */  subu       $t7, $t7, $t5
/* 29F54 80029354 000F7880 */  sll        $t7, $t7, 2
/* 29F58 80029358 016F4821 */  addu       $t1, $t3, $t7
/* 29F5C 8002935C C52600DC */  lwc1       $f6, 0xdc($t1)
/* 29F60 80029360 46003421 */  cvt.d.s    $f16, $f6
/* 29F64 80029364 46288102 */  mul.d      $f4, $f16, $f8
/* 29F68 80029368 462024A0 */  cvt.s.d    $f18, $f4
/* 29F6C 8002936C E53200DC */  swc1       $f18, 0xdc($t1)
/* 29F70 80029370 1000038A */  b          .L8002A19C
/* 29F74 80029374 00000000 */   nop
/* 29F78 80029378 0C00810C */  jal        func_80020430
/* 29F7C 8002937C 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 29F80 80029380 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 29F84 80029384 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 29F88 80029388 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 29F8C 8002938C 000A4080 */  sll        $t0, $t2, 2
/* 29F90 80029390 010A4023 */  subu       $t0, $t0, $t2
/* 29F94 80029394 00084080 */  sll        $t0, $t0, 2
/* 29F98 80029398 010A4023 */  subu       $t0, $t0, $t2
/* 29F9C 8002939C 00084080 */  sll        $t0, $t0, 2
/* 29FA0 800293A0 010A4021 */  addu       $t0, $t0, $t2
/* 29FA4 800293A4 00084080 */  sll        $t0, $t0, 2
/* 29FA8 800293A8 010A4023 */  subu       $t0, $t0, $t2
/* 29FAC 800293AC 00084080 */  sll        $t0, $t0, 2
/* 29FB0 800293B0 03087021 */  addu       $t6, $t8, $t0
/* 29FB4 800293B4 8DC500A4 */  lw         $a1, 0xa4($t6)
/* 29FB8 800293B8 0C055F02 */  jal        func_80157C08
/* 29FBC 800293BC 01402025 */   or        $a0, $t2, $zero
/* 29FC0 800293C0 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 29FC4 800293C4 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 29FC8 800293C8 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 29FCC 800293CC 00196880 */  sll        $t5, $t9, 2
/* 29FD0 800293D0 01B96823 */  subu       $t5, $t5, $t9
/* 29FD4 800293D4 000D6880 */  sll        $t5, $t5, 2
/* 29FD8 800293D8 01B96823 */  subu       $t5, $t5, $t9
/* 29FDC 800293DC 000D6880 */  sll        $t5, $t5, 2
/* 29FE0 800293E0 01B96821 */  addu       $t5, $t5, $t9
/* 29FE4 800293E4 000D6880 */  sll        $t5, $t5, 2
/* 29FE8 800293E8 01B96823 */  subu       $t5, $t5, $t9
/* 29FEC 800293EC 000D6880 */  sll        $t5, $t5, 2
/* 29FF0 800293F0 018D5821 */  addu       $t3, $t4, $t5
/* 29FF4 800293F4 C56A00FC */  lwc1       $f10, 0xfc($t3)
/* 29FF8 800293F8 3C014014 */  lui        $at, 0x4014
/* 29FFC 800293FC 44818800 */  mtc1       $at, $f17
/* 2A000 80029400 44808000 */  mtc1       $zero, $f16
/* 2A004 80029404 460051A1 */  cvt.d.s    $f6, $f10
/* 2A008 80029408 3C0F8016 */  lui        $t7, 0x8016
/* 2A00C 8002940C 46303202 */  mul.d      $f8, $f6, $f16
/* 2A010 80029410 44803000 */  mtc1       $zero, $f6
/* 2A014 80029414 44813800 */  mtc1       $at, $f7
/* 2A018 80029418 3C088016 */  lui        $t0, 0x8016
/* 2A01C 8002941C 46204120 */  cvt.s.d    $f4, $f8
/* 2A020 80029420 E56400D4 */  swc1       $f4, 0xd4($t3)
/* 2A024 80029424 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 2A028 80029428 8DEFFB9C */  lw         $t7, -0x464($t7)
/* 2A02C 8002942C 44802000 */  mtc1       $zero, $f4
/* 2A030 80029430 00095080 */  sll        $t2, $t1, 2
/* 2A034 80029434 01495023 */  subu       $t2, $t2, $t1
/* 2A038 80029438 000A5080 */  sll        $t2, $t2, 2
/* 2A03C 8002943C 01495023 */  subu       $t2, $t2, $t1
/* 2A040 80029440 000A5080 */  sll        $t2, $t2, 2
/* 2A044 80029444 01495021 */  addu       $t2, $t2, $t1
/* 2A048 80029448 000A5080 */  sll        $t2, $t2, 2
/* 2A04C 8002944C 01495023 */  subu       $t2, $t2, $t1
/* 2A050 80029450 000A5080 */  sll        $t2, $t2, 2
/* 2A054 80029454 01EAC021 */  addu       $t8, $t7, $t2
/* 2A058 80029458 C7120100 */  lwc1       $f18, 0x100($t8)
/* 2A05C 8002945C 460092A1 */  cvt.d.s    $f10, $f18
/* 2A060 80029460 46265402 */  mul.d      $f16, $f10, $f6
/* 2A064 80029464 46208220 */  cvt.s.d    $f8, $f16
/* 2A068 80029468 E70800DC */  swc1       $f8, 0xdc($t8)
/* 2A06C 8002946C 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 2A070 80029470 8D08FB9C */  lw         $t0, -0x464($t0)
/* 2A074 80029474 000EC880 */  sll        $t9, $t6, 2
/* 2A078 80029478 032EC823 */  subu       $t9, $t9, $t6
/* 2A07C 8002947C 0019C880 */  sll        $t9, $t9, 2
/* 2A080 80029480 032EC823 */  subu       $t9, $t9, $t6
/* 2A084 80029484 0019C880 */  sll        $t9, $t9, 2
/* 2A088 80029488 032EC821 */  addu       $t9, $t9, $t6
/* 2A08C 8002948C 0019C880 */  sll        $t9, $t9, 2
/* 2A090 80029490 032EC823 */  subu       $t9, $t9, $t6
/* 2A094 80029494 0019C880 */  sll        $t9, $t9, 2
/* 2A098 80029498 01196021 */  addu       $t4, $t0, $t9
/* 2A09C 8002949C 1000033F */  b          .L8002A19C
/* 2A0A0 800294A0 E58400D8 */   swc1      $f4, 0xd8($t4)
/* 2A0A4 800294A4 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 2A0A8 800294A8 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 2A0AC 800294AC 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 2A0B0 800294B0 000D4880 */  sll        $t1, $t5, 2
/* 2A0B4 800294B4 012D4823 */  subu       $t1, $t1, $t5
/* 2A0B8 800294B8 00094880 */  sll        $t1, $t1, 2
/* 2A0BC 800294BC 012D4823 */  subu       $t1, $t1, $t5
/* 2A0C0 800294C0 00094880 */  sll        $t1, $t1, 2
/* 2A0C4 800294C4 012D4821 */  addu       $t1, $t1, $t5
/* 2A0C8 800294C8 00094880 */  sll        $t1, $t1, 2
/* 2A0CC 800294CC 012D4823 */  subu       $t1, $t1, $t5
/* 2A0D0 800294D0 00094880 */  sll        $t1, $t1, 2
/* 2A0D4 800294D4 01697821 */  addu       $t7, $t3, $t1
/* 2A0D8 800294D8 8DF8008C */  lw         $t8, 0x8c($t7)
/* 2A0DC 800294DC 01A02025 */  or         $a0, $t5, $zero
/* 2A0E0 800294E0 AFB80004 */  sw         $t8, 4($sp)
/* 2A0E4 800294E4 8DEA0090 */  lw         $t2, 0x90($t7)
/* 2A0E8 800294E8 8FA50004 */  lw         $a1, 4($sp)
/* 2A0EC 800294EC AFAA0008 */  sw         $t2, 8($sp)
/* 2A0F0 800294F0 8DF80094 */  lw         $t8, 0x94($t7)
/* 2A0F4 800294F4 8FA60008 */  lw         $a2, 8($sp)
/* 2A0F8 800294F8 AFB8000C */  sw         $t8, 0xc($sp)
/* 2A0FC 800294FC 0C0083EE */  jal        func_80020FB8
/* 2A100 80029500 8FA7000C */   lw        $a3, 0xc($sp)
/* 2A104 80029504 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 2A108 80029508 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 2A10C 8002950C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2A110 80029510 0008C880 */  sll        $t9, $t0, 2
/* 2A114 80029514 0328C823 */  subu       $t9, $t9, $t0
/* 2A118 80029518 0019C880 */  sll        $t9, $t9, 2
/* 2A11C 8002951C 0328C823 */  subu       $t9, $t9, $t0
/* 2A120 80029520 0019C880 */  sll        $t9, $t9, 2
/* 2A124 80029524 0328C821 */  addu       $t9, $t9, $t0
/* 2A128 80029528 0019C880 */  sll        $t9, $t9, 2
/* 2A12C 8002952C 0328C823 */  subu       $t9, $t9, $t0
/* 2A130 80029530 0019C880 */  sll        $t9, $t9, 2
/* 2A134 80029534 01D96021 */  addu       $t4, $t6, $t9
/* 2A138 80029538 C59200FC */  lwc1       $f18, 0xfc($t4)
/* 2A13C 8002953C 3C014014 */  lui        $at, 0x4014
/* 2A140 80029540 44813800 */  mtc1       $at, $f7
/* 2A144 80029544 44803000 */  mtc1       $zero, $f6
/* 2A148 80029548 460092A1 */  cvt.d.s    $f10, $f18
/* 2A14C 8002954C 3C0D8016 */  lui        $t5, 0x8016
/* 2A150 80029550 46265402 */  mul.d      $f16, $f10, $f6
/* 2A154 80029554 44805000 */  mtc1       $zero, $f10
/* 2A158 80029558 44815800 */  mtc1       $at, $f11
/* 2A15C 8002955C 3C0A8016 */  lui        $t2, 0x8016
/* 2A160 80029560 46208220 */  cvt.s.d    $f8, $f16
/* 2A164 80029564 E58800D4 */  swc1       $f8, 0xd4($t4)
/* 2A168 80029568 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 2A16C 8002956C 8DADFB9C */  lw         $t5, -0x464($t5)
/* 2A170 80029570 44804000 */  mtc1       $zero, $f8
/* 2A174 80029574 000B4880 */  sll        $t1, $t3, 2
/* 2A178 80029578 012B4823 */  subu       $t1, $t1, $t3
/* 2A17C 8002957C 00094880 */  sll        $t1, $t1, 2
/* 2A180 80029580 012B4823 */  subu       $t1, $t1, $t3
/* 2A184 80029584 00094880 */  sll        $t1, $t1, 2
/* 2A188 80029588 012B4821 */  addu       $t1, $t1, $t3
/* 2A18C 8002958C 00094880 */  sll        $t1, $t1, 2
/* 2A190 80029590 012B4823 */  subu       $t1, $t1, $t3
/* 2A194 80029594 00094880 */  sll        $t1, $t1, 2
/* 2A198 80029598 01A97821 */  addu       $t7, $t5, $t1
/* 2A19C 8002959C C5E40100 */  lwc1       $f4, 0x100($t7)
/* 2A1A0 800295A0 460024A1 */  cvt.d.s    $f18, $f4
/* 2A1A4 800295A4 462A9182 */  mul.d      $f6, $f18, $f10
/* 2A1A8 800295A8 46203420 */  cvt.s.d    $f16, $f6
/* 2A1AC 800295AC E5F000DC */  swc1       $f16, 0xdc($t7)
/* 2A1B0 800295B0 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 2A1B4 800295B4 8D4AFB9C */  lw         $t2, -0x464($t2)
/* 2A1B8 800295B8 00184080 */  sll        $t0, $t8, 2
/* 2A1BC 800295BC 01184023 */  subu       $t0, $t0, $t8
/* 2A1C0 800295C0 00084080 */  sll        $t0, $t0, 2
/* 2A1C4 800295C4 01184023 */  subu       $t0, $t0, $t8
/* 2A1C8 800295C8 00084080 */  sll        $t0, $t0, 2
/* 2A1CC 800295CC 01184021 */  addu       $t0, $t0, $t8
/* 2A1D0 800295D0 00084080 */  sll        $t0, $t0, 2
/* 2A1D4 800295D4 01184023 */  subu       $t0, $t0, $t8
/* 2A1D8 800295D8 00084080 */  sll        $t0, $t0, 2
/* 2A1DC 800295DC 01487021 */  addu       $t6, $t2, $t0
/* 2A1E0 800295E0 100002EE */  b          .L8002A19C
/* 2A1E4 800295E4 E5C800D8 */   swc1      $f8, 0xd8($t6)
/* 2A1E8 800295E8 0C00827F */  jal        func_800209FC
/* 2A1EC 800295EC 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2A1F0 800295F0 0C00810C */  jal        func_80020430
/* 2A1F4 800295F4 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2A1F8 800295F8 100002E8 */  b          .L8002A19C
/* 2A1FC 800295FC 00000000 */   nop
/* 2A200 80029600 0C007242 */  jal        func_8001C908
/* 2A204 80029604 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2A208 80029608 100002E4 */  b          .L8002A19C
/* 2A20C 8002960C 00000000 */   nop
/* 2A210 80029610 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 2A214 80029614 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2A218 80029618 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 2A21C 8002961C 000C5880 */  sll        $t3, $t4, 2
/* 2A220 80029620 016C5823 */  subu       $t3, $t3, $t4
/* 2A224 80029624 000B5880 */  sll        $t3, $t3, 2
/* 2A228 80029628 016C5823 */  subu       $t3, $t3, $t4
/* 2A22C 8002962C 000B5880 */  sll        $t3, $t3, 2
/* 2A230 80029630 016C5821 */  addu       $t3, $t3, $t4
/* 2A234 80029634 000B5880 */  sll        $t3, $t3, 2
/* 2A238 80029638 016C5823 */  subu       $t3, $t3, $t4
/* 2A23C 8002963C 000B5880 */  sll        $t3, $t3, 2
/* 2A240 80029640 032B6821 */  addu       $t5, $t9, $t3
/* 2A244 80029644 8DB0006C */  lw         $s0, 0x6c($t5)
/* 2A248 80029648 24010012 */  addiu      $at, $zero, 0x12
/* 2A24C 8002964C 12010005 */  beq        $s0, $at, .L80029664
/* 2A250 80029650 24010013 */   addiu     $at, $zero, 0x13
/* 2A254 80029654 12010013 */  beq        $s0, $at, .L800296A4
/* 2A258 80029658 00000000 */   nop
/* 2A25C 8002965C 10000021 */  b          .L800296E4
/* 2A260 80029660 00000000 */   nop
.L80029664:
/* 2A264 80029664 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 2A268 80029668 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2A26C 8002966C 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2A270 80029670 00185080 */  sll        $t2, $t8, 2
/* 2A274 80029674 01585023 */  subu       $t2, $t2, $t8
/* 2A278 80029678 000A5080 */  sll        $t2, $t2, 2
/* 2A27C 8002967C 01585023 */  subu       $t2, $t2, $t8
/* 2A280 80029680 000A5080 */  sll        $t2, $t2, 2
/* 2A284 80029684 01585021 */  addu       $t2, $t2, $t8
/* 2A288 80029688 000A5080 */  sll        $t2, $t2, 2
/* 2A28C 8002968C 01585023 */  subu       $t2, $t2, $t8
/* 2A290 80029690 000A5080 */  sll        $t2, $t2, 2
/* 2A294 80029694 24090029 */  addiu      $t1, $zero, 0x29
/* 2A298 80029698 01EA4021 */  addu       $t0, $t7, $t2
/* 2A29C 8002969C 10000020 */  b          .L80029720
/* 2A2A0 800296A0 AD090064 */   sw        $t1, 0x64($t0)
.L800296A4:
/* 2A2A4 800296A4 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 2A2A8 800296A8 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 2A2AC 800296AC 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 2A2B0 800296B0 00195880 */  sll        $t3, $t9, 2
/* 2A2B4 800296B4 01795823 */  subu       $t3, $t3, $t9
/* 2A2B8 800296B8 000B5880 */  sll        $t3, $t3, 2
/* 2A2BC 800296BC 01795823 */  subu       $t3, $t3, $t9
/* 2A2C0 800296C0 000B5880 */  sll        $t3, $t3, 2
/* 2A2C4 800296C4 01795821 */  addu       $t3, $t3, $t9
/* 2A2C8 800296C8 000B5880 */  sll        $t3, $t3, 2
/* 2A2CC 800296CC 01795823 */  subu       $t3, $t3, $t9
/* 2A2D0 800296D0 000B5880 */  sll        $t3, $t3, 2
/* 2A2D4 800296D4 240E0048 */  addiu      $t6, $zero, 0x48
/* 2A2D8 800296D8 018B6821 */  addu       $t5, $t4, $t3
/* 2A2DC 800296DC 10000010 */  b          .L80029720
/* 2A2E0 800296E0 ADAE0064 */   sw        $t6, 0x64($t5)
.L800296E4:
/* 2A2E4 800296E4 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 2A2E8 800296E8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2A2EC 800296EC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2A2F0 800296F0 000A4880 */  sll        $t1, $t2, 2
/* 2A2F4 800296F4 012A4823 */  subu       $t1, $t1, $t2
/* 2A2F8 800296F8 00094880 */  sll        $t1, $t1, 2
/* 2A2FC 800296FC 012A4823 */  subu       $t1, $t1, $t2
/* 2A300 80029700 00094880 */  sll        $t1, $t1, 2
/* 2A304 80029704 012A4821 */  addu       $t1, $t1, $t2
/* 2A308 80029708 00094880 */  sll        $t1, $t1, 2
/* 2A30C 8002970C 012A4823 */  subu       $t1, $t1, $t2
/* 2A310 80029710 00094880 */  sll        $t1, $t1, 2
/* 2A314 80029714 24180003 */  addiu      $t8, $zero, 3
/* 2A318 80029718 01E94021 */  addu       $t0, $t7, $t1
/* 2A31C 8002971C AD180064 */  sw         $t8, 0x64($t0)
.L80029720:
/* 2A320 80029720 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 2A324 80029724 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2A328 80029728 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 2A32C 8002972C 000C5880 */  sll        $t3, $t4, 2
/* 2A330 80029730 016C5823 */  subu       $t3, $t3, $t4
/* 2A334 80029734 000B5880 */  sll        $t3, $t3, 2
/* 2A338 80029738 016C5823 */  subu       $t3, $t3, $t4
/* 2A33C 8002973C 000B5880 */  sll        $t3, $t3, 2
/* 2A340 80029740 016C5821 */  addu       $t3, $t3, $t4
/* 2A344 80029744 000B5880 */  sll        $t3, $t3, 2
/* 2A348 80029748 016C5823 */  subu       $t3, $t3, $t4
/* 2A34C 8002974C 000B5880 */  sll        $t3, $t3, 2
/* 2A350 80029750 032B7021 */  addu       $t6, $t9, $t3
/* 2A354 80029754 ADC00080 */  sw         $zero, 0x80($t6)
/* 2A358 80029758 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 2A35C 8002975C 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2A360 80029760 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 2A364 80029764 000A7880 */  sll        $t7, $t2, 2
/* 2A368 80029768 01EA7823 */  subu       $t7, $t7, $t2
/* 2A36C 8002976C 000F7880 */  sll        $t7, $t7, 2
/* 2A370 80029770 01EA7823 */  subu       $t7, $t7, $t2
/* 2A374 80029774 000F7880 */  sll        $t7, $t7, 2
/* 2A378 80029778 01EA7821 */  addu       $t7, $t7, $t2
/* 2A37C 8002977C 000F7880 */  sll        $t7, $t7, 2
/* 2A380 80029780 01EA7823 */  subu       $t7, $t7, $t2
/* 2A384 80029784 000F7880 */  sll        $t7, $t7, 2
/* 2A388 80029788 01AF4821 */  addu       $t1, $t5, $t7
/* 2A38C 8002978C 10000283 */  b          .L8002A19C
/* 2A390 80029790 AD20007C */   sw        $zero, 0x7c($t1)
/* 2A394 80029794 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 2A398 80029798 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 2A39C 8002979C 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2A3A0 800297A0 000CC880 */  sll        $t9, $t4, 2
/* 2A3A4 800297A4 032CC823 */  subu       $t9, $t9, $t4
/* 2A3A8 800297A8 0019C880 */  sll        $t9, $t9, 2
/* 2A3AC 800297AC 032CC823 */  subu       $t9, $t9, $t4
/* 2A3B0 800297B0 0019C880 */  sll        $t9, $t9, 2
/* 2A3B4 800297B4 032CC821 */  addu       $t9, $t9, $t4
/* 2A3B8 800297B8 0019C880 */  sll        $t9, $t9, 2
/* 2A3BC 800297BC 032CC823 */  subu       $t9, $t9, $t4
/* 2A3C0 800297C0 0019C880 */  sll        $t9, $t9, 2
/* 2A3C4 800297C4 01195821 */  addu       $t3, $t0, $t9
/* 2A3C8 800297C8 8D6A00E0 */  lw         $t2, 0xe0($t3)
/* 2A3CC 800297CC 27B80060 */  addiu      $t8, $sp, 0x60
/* 2A3D0 800297D0 3C0F8016 */  lui        $t7, %hi(D_8015F9F8)
/* 2A3D4 800297D4 AF0A0000 */  sw         $t2, ($t8)
/* 2A3D8 800297D8 8D6E00E4 */  lw         $t6, 0xe4($t3)
/* 2A3DC 800297DC 25EFF9F8 */  addiu      $t7, $t7, %lo(D_8015F9F8)
/* 2A3E0 800297E0 27AD0054 */  addiu      $t5, $sp, 0x54
/* 2A3E4 800297E4 AF0E0004 */  sw         $t6, 4($t8)
/* 2A3E8 800297E8 8D6A00E8 */  lw         $t2, 0xe8($t3)
/* 2A3EC 800297EC 3C088016 */  lui        $t0, 0x8016
/* 2A3F0 800297F0 AF0A0008 */  sw         $t2, 8($t8)
/* 2A3F4 800297F4 8DEC0000 */  lw         $t4, ($t7)
/* 2A3F8 800297F8 8DE90004 */  lw         $t1, 4($t7)
/* 2A3FC 800297FC 3C0A8016 */  lui        $t2, %hi(D_8015F9F8)
/* 2A400 80029800 ADAC0000 */  sw         $t4, ($t5)
/* 2A404 80029804 8DEC0008 */  lw         $t4, 8($t7)
/* 2A408 80029808 ADA90004 */  sw         $t1, 4($t5)
/* 2A40C 8002980C 254AF9F8 */  addiu      $t2, $t2, %lo(D_8015F9F8)
/* 2A410 80029810 ADAC0008 */  sw         $t4, 8($t5)
/* 2A414 80029814 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 2A418 80029818 8D08FB9C */  lw         $t0, -0x464($t0)
/* 2A41C 8002981C 3C098016 */  lui        $t1, 0x8016
/* 2A420 80029820 0019C080 */  sll        $t8, $t9, 2
/* 2A424 80029824 0319C023 */  subu       $t8, $t8, $t9
/* 2A428 80029828 0018C080 */  sll        $t8, $t8, 2
/* 2A42C 8002982C 0319C023 */  subu       $t8, $t8, $t9
/* 2A430 80029830 0018C080 */  sll        $t8, $t8, 2
/* 2A434 80029834 0319C021 */  addu       $t8, $t8, $t9
/* 2A438 80029838 0018C080 */  sll        $t8, $t8, 2
/* 2A43C 8002983C 0319C023 */  subu       $t8, $t8, $t9
/* 2A440 80029840 0018C080 */  sll        $t8, $t8, 2
/* 2A444 80029844 01185821 */  addu       $t3, $t0, $t8
/* 2A448 80029848 8D6E00A4 */  lw         $t6, 0xa4($t3)
/* 2A44C 8002984C AFAE0044 */  sw         $t6, 0x44($sp)
/* 2A450 80029850 8D4F0000 */  lw         $t7, ($t2)
/* 2A454 80029854 AD6F00D4 */  sw         $t7, 0xd4($t3)
/* 2A458 80029858 8D4D0004 */  lw         $t5, 4($t2)
/* 2A45C 8002985C AD6D00D8 */  sw         $t5, 0xd8($t3)
/* 2A460 80029860 8D4F0008 */  lw         $t7, 8($t2)
/* 2A464 80029864 AD6F00DC */  sw         $t7, 0xdc($t3)
/* 2A468 80029868 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 2A46C 8002986C 8D29FB9C */  lw         $t1, -0x464($t1)
/* 2A470 80029870 000CC880 */  sll        $t9, $t4, 2
/* 2A474 80029874 032CC823 */  subu       $t9, $t9, $t4
/* 2A478 80029878 0019C880 */  sll        $t9, $t9, 2
/* 2A47C 8002987C 032CC823 */  subu       $t9, $t9, $t4
/* 2A480 80029880 0019C880 */  sll        $t9, $t9, 2
/* 2A484 80029884 032CC821 */  addu       $t9, $t9, $t4
/* 2A488 80029888 0019C880 */  sll        $t9, $t9, 2
/* 2A48C 8002988C 032CC823 */  subu       $t9, $t9, $t4
/* 2A490 80029890 0019C880 */  sll        $t9, $t9, 2
/* 2A494 80029894 01394021 */  addu       $t0, $t1, $t9
/* 2A498 80029898 8D18007C */  lw         $t8, 0x7c($t0)
/* 2A49C 8002989C 1F00023F */  bgtz       $t8, .L8002A19C
/* 2A4A0 800298A0 00000000 */   nop
/* 2A4A4 800298A4 8D0E006C */  lw         $t6, 0x6c($t0)
/* 2A4A8 800298A8 2401003A */  addiu      $at, $zero, 0x3a
/* 2A4AC 800298AC 15C10198 */  bne        $t6, $at, .L80029F10
/* 2A4B0 800298B0 00000000 */   nop
/* 2A4B4 800298B4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 2A4B8 800298B8 2401FFFF */  addiu      $at, $zero, -1
/* 2A4BC 800298BC 11610237 */  beq        $t3, $at, .L8002A19C
/* 2A4C0 800298C0 00000000 */   nop
/* 2A4C4 800298C4 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 2A4C8 800298C8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 2A4CC 800298CC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 2A4D0 800298D0 000D7880 */  sll        $t7, $t5, 2
/* 2A4D4 800298D4 01ED7823 */  subu       $t7, $t7, $t5
/* 2A4D8 800298D8 000F7880 */  sll        $t7, $t7, 2
/* 2A4DC 800298DC 01ED7823 */  subu       $t7, $t7, $t5
/* 2A4E0 800298E0 000F7880 */  sll        $t7, $t7, 2
/* 2A4E4 800298E4 01ED7821 */  addu       $t7, $t7, $t5
/* 2A4E8 800298E8 000F7880 */  sll        $t7, $t7, 2
/* 2A4EC 800298EC 01ED7823 */  subu       $t7, $t7, $t5
/* 2A4F0 800298F0 000F7880 */  sll        $t7, $t7, 2
/* 2A4F4 800298F4 014F6021 */  addu       $t4, $t2, $t7
/* 2A4F8 800298F8 C58400AC */  lwc1       $f4, 0xac($t4)
/* 2A4FC 800298FC 3C01800E */  lui        $at, %hi(D_800DCA98)
/* 2A500 80029900 D42ACA98 */  ldc1       $f10, %lo(D_800DCA98)($at)
/* 2A504 80029904 460024A1 */  cvt.d.s    $f18, $f4
/* 2A508 80029908 462A903C */  c.lt.d     $f18, $f10
/* 2A50C 8002990C 00000000 */  nop
/* 2A510 80029910 45000101 */  bc1f       .L80029D18
/* 2A514 80029914 3C0142F0 */   lui       $at, 0x42f0
/* 2A518 80029918 44813000 */  mtc1       $at, $f6
/* 2A51C 8002991C 00000000 */  nop
/* 2A520 80029920 E7A60048 */  swc1       $f6, 0x48($sp)
/* 2A524 80029924 8D8900B0 */  lw         $t1, 0xb0($t4)
/* 2A528 80029928 2539FFFF */  addiu      $t9, $t1, -1
/* 2A52C 8002992C 2F21000B */  sltiu      $at, $t9, 0xb
/* 2A530 80029930 1020001C */  beqz       $at, .L800299A4
/* 2A534 80029934 00000000 */   nop
/* 2A538 80029938 0019C880 */  sll        $t9, $t9, 2
/* 2A53C 8002993C 3C01800E */  lui        $at, %hi(D_800DCAA0)
/* 2A540 80029940 00390821 */  addu       $at, $at, $t9
/* 2A544 80029944 8C39CAA0 */  lw         $t9, %lo(D_800DCAA0)($at)
/* 2A548 80029948 03200008 */  jr         $t9
/* 2A54C 8002994C 00000000 */   nop
/* 2A550 80029950 3C014228 */  lui        $at, 0x4228
/* 2A554 80029954 44818000 */  mtc1       $at, $f16
/* 2A558 80029958 3C0142A0 */  lui        $at, 0x42a0
/* 2A55C 8002995C 44814000 */  mtc1       $at, $f8
/* 2A560 80029960 E7B00050 */  swc1       $f16, 0x50($sp)
/* 2A564 80029964 10000015 */  b          .L800299BC
/* 2A568 80029968 E7A8004C */   swc1      $f8, 0x4c($sp)
/* 2A56C 8002996C 3C014228 */  lui        $at, 0x4228
/* 2A570 80029970 44812000 */  mtc1       $at, $f4
/* 2A574 80029974 3C0142C4 */  lui        $at, 0x42c4
/* 2A578 80029978 44819000 */  mtc1       $at, $f18
/* 2A57C 8002997C E7A40050 */  swc1       $f4, 0x50($sp)
/* 2A580 80029980 1000000E */  b          .L800299BC
/* 2A584 80029984 E7B2004C */   swc1      $f18, 0x4c($sp)
/* 2A588 80029988 3C014270 */  lui        $at, 0x4270
/* 2A58C 8002998C 44815000 */  mtc1       $at, $f10
/* 2A590 80029990 3C0142C4 */  lui        $at, 0x42c4
/* 2A594 80029994 44813000 */  mtc1       $at, $f6
/* 2A598 80029998 E7AA0050 */  swc1       $f10, 0x50($sp)
/* 2A59C 8002999C 10000007 */  b          .L800299BC
/* 2A5A0 800299A0 E7A6004C */   swc1      $f6, 0x4c($sp)
.L800299A4:
/* 2A5A4 800299A4 3C014270 */  lui        $at, 0x4270
/* 2A5A8 800299A8 44818000 */  mtc1       $at, $f16
/* 2A5AC 800299AC 3C0142A0 */  lui        $at, 0x42a0
/* 2A5B0 800299B0 44814000 */  mtc1       $at, $f8
/* 2A5B4 800299B4 E7B00050 */  swc1       $f16, 0x50($sp)
/* 2A5B8 800299B8 E7A8004C */  swc1       $f8, 0x4c($sp)
.L800299BC:
/* 2A5BC 800299BC 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 2A5C0 800299C0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2A5C4 800299C4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 2A5C8 800299C8 00087080 */  sll        $t6, $t0, 2
/* 2A5CC 800299CC 01C87023 */  subu       $t6, $t6, $t0
/* 2A5D0 800299D0 000E7080 */  sll        $t6, $t6, 2
/* 2A5D4 800299D4 01C87023 */  subu       $t6, $t6, $t0
/* 2A5D8 800299D8 000E7080 */  sll        $t6, $t6, 2
/* 2A5DC 800299DC 01C87021 */  addu       $t6, $t6, $t0
/* 2A5E0 800299E0 000E7080 */  sll        $t6, $t6, 2
/* 2A5E4 800299E4 01C87023 */  subu       $t6, $t6, $t0
/* 2A5E8 800299E8 000E7080 */  sll        $t6, $t6, 2
/* 2A5EC 800299EC 030E5821 */  addu       $t3, $t8, $t6
/* 2A5F0 800299F0 C56400FC */  lwc1       $f4, 0xfc($t3)
/* 2A5F4 800299F4 C7B20048 */  lwc1       $f18, 0x48($sp)
/* 2A5F8 800299F8 C5660100 */  lwc1       $f6, 0x100($t3)
/* 2A5FC 800299FC C7B00050 */  lwc1       $f16, 0x50($sp)
/* 2A600 80029A00 46122282 */  mul.s      $f10, $f4, $f18
/* 2A604 80029A04 8FAD0044 */  lw         $t5, 0x44($sp)
/* 2A608 80029A08 3C198016 */  lui        $t9, 0x8016
/* 2A60C 80029A0C 46103202 */  mul.s      $f8, $f6, $f16
/* 2A610 80029A10 C7A6004C */  lwc1       $f6, 0x4c($sp)
/* 2A614 80029A14 000D5080 */  sll        $t2, $t5, 2
/* 2A618 80029A18 014D5023 */  subu       $t2, $t2, $t5
/* 2A61C 80029A1C E7A60058 */  swc1       $f6, 0x58($sp)
/* 2A620 80029A20 000A5080 */  sll        $t2, $t2, 2
/* 2A624 80029A24 014D5023 */  subu       $t2, $t2, $t5
/* 2A628 80029A28 46085100 */  add.s      $f4, $f10, $f8
/* 2A62C 80029A2C 000A5080 */  sll        $t2, $t2, 2
/* 2A630 80029A30 014D5021 */  addu       $t2, $t2, $t5
/* 2A634 80029A34 000A5080 */  sll        $t2, $t2, 2
/* 2A638 80029A38 E7A40054 */  swc1       $f4, 0x54($sp)
/* 2A63C 80029A3C C56A0100 */  lwc1       $f10, 0x100($t3)
/* 2A640 80029A40 C56600FC */  lwc1       $f6, 0xfc($t3)
/* 2A644 80029A44 014D5023 */  subu       $t2, $t2, $t5
/* 2A648 80029A48 46125202 */  mul.s      $f8, $f10, $f18
/* 2A64C 80029A4C 46003287 */  neg.s      $f10, $f6
/* 2A650 80029A50 000D6080 */  sll        $t4, $t5, 2
/* 2A654 80029A54 46105482 */  mul.s      $f18, $f10, $f16
/* 2A658 80029A58 000A5080 */  sll        $t2, $t2, 2
/* 2A65C 80029A5C 018D6023 */  subu       $t4, $t4, $t5
/* 2A660 80029A60 000C6080 */  sll        $t4, $t4, 2
/* 2A664 80029A64 030A7821 */  addu       $t7, $t8, $t2
/* 2A668 80029A68 018D6023 */  subu       $t4, $t4, $t5
/* 2A66C 80029A6C 000C6080 */  sll        $t4, $t4, 2
/* 2A670 80029A70 46124180 */  add.s      $f6, $f8, $f18
/* 2A674 80029A74 018D6021 */  addu       $t4, $t4, $t5
/* 2A678 80029A78 000C6080 */  sll        $t4, $t4, 2
/* 2A67C 80029A7C 018D6023 */  subu       $t4, $t4, $t5
/* 2A680 80029A80 E7A6005C */  swc1       $f6, 0x5c($sp)
/* 2A684 80029A84 C5EA00E0 */  lwc1       $f10, 0xe0($t7)
/* 2A688 80029A88 000C6080 */  sll        $t4, $t4, 2
/* 2A68C 80029A8C 030C4821 */  addu       $t1, $t8, $t4
/* 2A690 80029A90 46045401 */  sub.s      $f16, $f10, $f4
/* 2A694 80029A94 3C0A8016 */  lui        $t2, 0x8016
/* 2A698 80029A98 27AC0060 */  addiu      $t4, $sp, 0x60
/* 2A69C 80029A9C E53000E0 */  swc1       $f16, 0xe0($t1)
/* 2A6A0 80029AA0 8FA80044 */  lw         $t0, 0x44($sp)
/* 2A6A4 80029AA4 8F39FB9C */  lw         $t9, -0x464($t9)
/* 2A6A8 80029AA8 C7B20058 */  lwc1       $f18, 0x58($sp)
/* 2A6AC 80029AAC 00087080 */  sll        $t6, $t0, 2
/* 2A6B0 80029AB0 01C87023 */  subu       $t6, $t6, $t0
/* 2A6B4 80029AB4 000E7080 */  sll        $t6, $t6, 2
/* 2A6B8 80029AB8 01C87023 */  subu       $t6, $t6, $t0
/* 2A6BC 80029ABC 000E7080 */  sll        $t6, $t6, 2
/* 2A6C0 80029AC0 01C87021 */  addu       $t6, $t6, $t0
/* 2A6C4 80029AC4 000E7080 */  sll        $t6, $t6, 2
/* 2A6C8 80029AC8 01C87023 */  subu       $t6, $t6, $t0
/* 2A6CC 80029ACC 000E7080 */  sll        $t6, $t6, 2
/* 2A6D0 80029AD0 032E5821 */  addu       $t3, $t9, $t6
/* 2A6D4 80029AD4 C56800E4 */  lwc1       $f8, 0xe4($t3)
/* 2A6D8 80029AD8 2419012C */  addiu      $t9, $zero, 0x12c
/* 2A6DC 80029ADC 46124181 */  sub.s      $f6, $f8, $f18
/* 2A6E0 80029AE0 E56600E4 */  swc1       $f6, 0xe4($t3)
/* 2A6E4 80029AE4 8FAF0044 */  lw         $t7, 0x44($sp)
/* 2A6E8 80029AE8 8D4AFB9C */  lw         $t2, -0x464($t2)
/* 2A6EC 80029AEC C7A4005C */  lwc1       $f4, 0x5c($sp)
/* 2A6F0 80029AF0 000F6880 */  sll        $t5, $t7, 2
/* 2A6F4 80029AF4 01AF6823 */  subu       $t5, $t5, $t7
/* 2A6F8 80029AF8 000D6880 */  sll        $t5, $t5, 2
/* 2A6FC 80029AFC 01AF6823 */  subu       $t5, $t5, $t7
/* 2A700 80029B00 000D6880 */  sll        $t5, $t5, 2
/* 2A704 80029B04 01AF6821 */  addu       $t5, $t5, $t7
/* 2A708 80029B08 000D6880 */  sll        $t5, $t5, 2
/* 2A70C 80029B0C 01AF6823 */  subu       $t5, $t5, $t7
/* 2A710 80029B10 000D6880 */  sll        $t5, $t5, 2
/* 2A714 80029B14 014DC021 */  addu       $t8, $t2, $t5
/* 2A718 80029B18 C70A00E8 */  lwc1       $f10, 0xe8($t8)
/* 2A71C 80029B1C 46045401 */  sub.s      $f16, $f10, $f4
/* 2A720 80029B20 E71000E8 */  swc1       $f16, 0xe8($t8)
/* 2A724 80029B24 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 2A728 80029B28 C7B20054 */  lwc1       $f18, 0x54($sp)
/* 2A72C 80029B2C C7AA0064 */  lwc1       $f10, 0x64($sp)
/* 2A730 80029B30 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 2A734 80029B34 46124180 */  add.s      $f6, $f8, $f18
/* 2A738 80029B38 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* 2A73C 80029B3C C7A80068 */  lwc1       $f8, 0x68($sp)
/* 2A740 80029B40 46045400 */  add.s      $f16, $f10, $f4
/* 2A744 80029B44 E7A60060 */  swc1       $f6, 0x60($sp)
/* 2A748 80029B48 8FA700E8 */  lw         $a3, 0xe8($sp)
/* 2A74C 80029B4C 46124180 */  add.s      $f6, $f8, $f18
/* 2A750 80029B50 E7B00064 */  swc1       $f16, 0x64($sp)
/* 2A754 80029B54 E7A60068 */  swc1       $f6, 0x68($sp)
/* 2A758 80029B58 8D880000 */  lw         $t0, ($t4)
/* 2A75C 80029B5C AFA80000 */  sw         $t0, ($sp)
/* 2A760 80029B60 8D890004 */  lw         $t1, 4($t4)
/* 2A764 80029B64 8FA40000 */  lw         $a0, ($sp)
/* 2A768 80029B68 AFA90004 */  sw         $t1, 4($sp)
/* 2A76C 80029B6C 8D880008 */  lw         $t0, 8($t4)
/* 2A770 80029B70 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A774 80029B74 8FA50004 */  lw         $a1, 4($sp)
/* 2A778 80029B78 AFA80008 */  sw         $t0, 8($sp)
/* 2A77C 80029B7C 0C011DD4 */  jal        func_80047750
/* 2A780 80029B80 8FA60008 */   lw        $a2, 8($sp)
/* 2A784 80029B84 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 2A788 80029B88 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 2A78C 80029B8C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2A790 80029B90 000B7880 */  sll        $t7, $t3, 2
/* 2A794 80029B94 01EB7823 */  subu       $t7, $t7, $t3
/* 2A798 80029B98 000F7880 */  sll        $t7, $t7, 2
/* 2A79C 80029B9C 01EB7823 */  subu       $t7, $t7, $t3
/* 2A7A0 80029BA0 000F7880 */  sll        $t7, $t7, 2
/* 2A7A4 80029BA4 01EB7821 */  addu       $t7, $t7, $t3
/* 2A7A8 80029BA8 000F7880 */  sll        $t7, $t7, 2
/* 2A7AC 80029BAC 01EB7823 */  subu       $t7, $t7, $t3
/* 2A7B0 80029BB0 000F7880 */  sll        $t7, $t7, 2
/* 2A7B4 80029BB4 3C014248 */  lui        $at, 0x4248
/* 2A7B8 80029BB8 01CF5021 */  addu       $t2, $t6, $t7
/* 2A7BC 80029BBC C54A00FC */  lwc1       $f10, 0xfc($t2)
/* 2A7C0 80029BC0 44812000 */  mtc1       $at, $f4
/* 2A7C4 80029BC4 C5460100 */  lwc1       $f6, 0x100($t2)
/* 2A7C8 80029BC8 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 2A7CC 80029BCC 46045402 */  mul.s      $f16, $f10, $f4
/* 2A7D0 80029BD0 44815000 */  mtc1       $at, $f10
/* 2A7D4 80029BD4 3C013F80 */  lui        $at, 0x3f80
/* 2A7D8 80029BD8 240D00FF */  addiu      $t5, $zero, 0xff
/* 2A7DC 80029BDC 460A3102 */  mul.s      $f4, $f6, $f10
/* 2A7E0 80029BE0 AFAD0014 */  sw         $t5, 0x14($sp)
/* 2A7E4 80029BE4 24040004 */  addiu      $a0, $zero, 4
/* 2A7E8 80029BE8 8FA60064 */  lw         $a2, 0x64($sp)
/* 2A7EC 80029BEC 46088480 */  add.s      $f18, $f16, $f8
/* 2A7F0 80029BF0 C7B00068 */  lwc1       $f16, 0x68($sp)
/* 2A7F4 80029BF4 46102200 */  add.s      $f8, $f4, $f16
/* 2A7F8 80029BF8 44059000 */  mfc1       $a1, $f18
/* 2A7FC 80029BFC 44819000 */  mtc1       $at, $f18
/* 2A800 80029C00 44074000 */  mfc1       $a3, $f8
/* 2A804 80029C04 0C02239B */  jal        func_80088E6C
/* 2A808 80029C08 E7B20010 */   swc1      $f18, 0x10($sp)
/* 2A80C 80029C0C 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 2A810 80029C10 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2A814 80029C14 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 2A818 80029C18 000C4880 */  sll        $t1, $t4, 2
/* 2A81C 80029C1C 012C4823 */  subu       $t1, $t1, $t4
/* 2A820 80029C20 00094880 */  sll        $t1, $t1, 2
/* 2A824 80029C24 012C4823 */  subu       $t1, $t1, $t4
/* 2A828 80029C28 00094880 */  sll        $t1, $t1, 2
/* 2A82C 80029C2C 012C4821 */  addu       $t1, $t1, $t4
/* 2A830 80029C30 00094880 */  sll        $t1, $t1, 2
/* 2A834 80029C34 012C4823 */  subu       $t1, $t1, $t4
/* 2A838 80029C38 00094880 */  sll        $t1, $t1, 2
/* 2A83C 80029C3C 03094021 */  addu       $t0, $t8, $t1
/* 2A840 80029C40 8D1900B0 */  lw         $t9, 0xb0($t0)
/* 2A844 80029C44 2B210002 */  slti       $at, $t9, 2
/* 2A848 80029C48 10200013 */  beqz       $at, .L80029C98
/* 2A84C 80029C4C 00000000 */   nop
/* 2A850 80029C50 240B0078 */  addiu      $t3, $zero, 0x78
/* 2A854 80029C54 AD0B007C */  sw         $t3, 0x7c($t0)
/* 2A858 80029C58 8FAA00E8 */  lw         $t2, 0xe8($sp)
/* 2A85C 80029C5C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2A860 80029C60 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2A864 80029C64 000A6880 */  sll        $t5, $t2, 2
/* 2A868 80029C68 01AA6823 */  subu       $t5, $t5, $t2
/* 2A86C 80029C6C 000D6880 */  sll        $t5, $t5, 2
/* 2A870 80029C70 01AA6823 */  subu       $t5, $t5, $t2
/* 2A874 80029C74 000D6880 */  sll        $t5, $t5, 2
/* 2A878 80029C78 01AA6821 */  addu       $t5, $t5, $t2
/* 2A87C 80029C7C 000D6880 */  sll        $t5, $t5, 2
/* 2A880 80029C80 01AA6823 */  subu       $t5, $t5, $t2
/* 2A884 80029C84 000D6880 */  sll        $t5, $t5, 2
/* 2A888 80029C88 240E000C */  addiu      $t6, $zero, 0xc
/* 2A88C 80029C8C 01ED6021 */  addu       $t4, $t7, $t5
/* 2A890 80029C90 10000069 */  b          .L80029E38
/* 2A894 80029C94 AD8E00B0 */   sw        $t6, 0xb0($t4)
.L80029C98:
/* 2A898 80029C98 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 2A89C 80029C9C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 2A8A0 80029CA0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 2A8A4 80029CA4 00195880 */  sll        $t3, $t9, 2
/* 2A8A8 80029CA8 01795823 */  subu       $t3, $t3, $t9
/* 2A8AC 80029CAC 000B5880 */  sll        $t3, $t3, 2
/* 2A8B0 80029CB0 01795823 */  subu       $t3, $t3, $t9
/* 2A8B4 80029CB4 000B5880 */  sll        $t3, $t3, 2
/* 2A8B8 80029CB8 01795821 */  addu       $t3, $t3, $t9
/* 2A8BC 80029CBC 000B5880 */  sll        $t3, $t3, 2
/* 2A8C0 80029CC0 01795823 */  subu       $t3, $t3, $t9
/* 2A8C4 80029CC4 000B5880 */  sll        $t3, $t3, 2
/* 2A8C8 80029CC8 24180003 */  addiu      $t8, $zero, 3
/* 2A8CC 80029CCC 012B4021 */  addu       $t0, $t1, $t3
/* 2A8D0 80029CD0 AD18007C */  sw         $t8, 0x7c($t0)
/* 2A8D4 80029CD4 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 2A8D8 80029CD8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 2A8DC 80029CDC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 2A8E0 80029CE0 000F6880 */  sll        $t5, $t7, 2
/* 2A8E4 80029CE4 01AF6823 */  subu       $t5, $t5, $t7
/* 2A8E8 80029CE8 000D6880 */  sll        $t5, $t5, 2
/* 2A8EC 80029CEC 01AF6823 */  subu       $t5, $t5, $t7
/* 2A8F0 80029CF0 000D6880 */  sll        $t5, $t5, 2
/* 2A8F4 80029CF4 01AF6821 */  addu       $t5, $t5, $t7
/* 2A8F8 80029CF8 000D6880 */  sll        $t5, $t5, 2
/* 2A8FC 80029CFC 01AF6823 */  subu       $t5, $t5, $t7
/* 2A900 80029D00 000D6880 */  sll        $t5, $t5, 2
/* 2A904 80029D04 014D7021 */  addu       $t6, $t2, $t5
/* 2A908 80029D08 8DCC00B0 */  lw         $t4, 0xb0($t6)
/* 2A90C 80029D0C 2599FFFF */  addiu      $t9, $t4, -1
/* 2A910 80029D10 10000049 */  b          .L80029E38
/* 2A914 80029D14 ADD900B0 */   sw        $t9, 0xb0($t6)
.L80029D18:
/* 2A918 80029D18 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 2A91C 80029D1C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 2A920 80029D20 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 2A924 80029D24 000BC080 */  sll        $t8, $t3, 2
/* 2A928 80029D28 030BC023 */  subu       $t8, $t8, $t3
/* 2A92C 80029D2C 0018C080 */  sll        $t8, $t8, 2
/* 2A930 80029D30 030BC023 */  subu       $t8, $t8, $t3
/* 2A934 80029D34 0018C080 */  sll        $t8, $t8, 2
/* 2A938 80029D38 030BC021 */  addu       $t8, $t8, $t3
/* 2A93C 80029D3C 0018C080 */  sll        $t8, $t8, 2
/* 2A940 80029D40 030BC023 */  subu       $t8, $t8, $t3
/* 2A944 80029D44 0018C080 */  sll        $t8, $t8, 2
/* 2A948 80029D48 01384021 */  addu       $t0, $t1, $t8
/* 2A94C 80029D4C C50600FC */  lwc1       $f6, 0xfc($t0)
/* 2A950 80029D50 3C014049 */  lui        $at, 0x4049
/* 2A954 80029D54 44812800 */  mtc1       $at, $f5
/* 2A958 80029D58 44802000 */  mtc1       $zero, $f4
/* 2A95C 80029D5C 460032A1 */  cvt.d.s    $f10, $f6
/* 2A960 80029D60 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 2A964 80029D64 46245402 */  mul.d      $f16, $f10, $f4
/* 2A968 80029D68 C7A40064 */  lwc1       $f4, 0x64($sp)
/* 2A96C 80029D6C 460044A1 */  cvt.d.s    $f18, $f8
/* 2A970 80029D70 3C014034 */  lui        $at, 0x4034
/* 2A974 80029D74 46002221 */  cvt.d.s    $f8, $f4
/* 2A978 80029D78 27AF0060 */  addiu      $t7, $sp, 0x60
/* 2A97C 80029D7C 240C0136 */  addiu      $t4, $zero, 0x136
/* 2A980 80029D80 01603825 */  or         $a3, $t3, $zero
/* 2A984 80029D84 46309180 */  add.d      $f6, $f18, $f16
/* 2A988 80029D88 44809000 */  mtc1       $zero, $f18
/* 2A98C 80029D8C 44819800 */  mtc1       $at, $f19
/* 2A990 80029D90 3C014049 */  lui        $at, 0x4049
/* 2A994 80029D94 462032A0 */  cvt.s.d    $f10, $f6
/* 2A998 80029D98 46324400 */  add.d      $f16, $f8, $f18
/* 2A99C 80029D9C E7AA0060 */  swc1       $f10, 0x60($sp)
/* 2A9A0 80029DA0 44804000 */  mtc1       $zero, $f8
/* 2A9A4 80029DA4 44814800 */  mtc1       $at, $f9
/* 2A9A8 80029DA8 462081A0 */  cvt.s.d    $f6, $f16
/* 2A9AC 80029DAC C7B00068 */  lwc1       $f16, 0x68($sp)
/* 2A9B0 80029DB0 E7A60064 */  swc1       $f6, 0x64($sp)
/* 2A9B4 80029DB4 C50A0100 */  lwc1       $f10, 0x100($t0)
/* 2A9B8 80029DB8 460081A1 */  cvt.d.s    $f6, $f16
/* 2A9BC 80029DBC 46005121 */  cvt.d.s    $f4, $f10
/* 2A9C0 80029DC0 46282482 */  mul.d      $f18, $f4, $f8
/* 2A9C4 80029DC4 46323280 */  add.d      $f10, $f6, $f18
/* 2A9C8 80029DC8 46205120 */  cvt.s.d    $f4, $f10
/* 2A9CC 80029DCC E7A40068 */  swc1       $f4, 0x68($sp)
/* 2A9D0 80029DD0 8DED0000 */  lw         $t5, ($t7)
/* 2A9D4 80029DD4 AFAD0000 */  sw         $t5, ($sp)
/* 2A9D8 80029DD8 8DEA0004 */  lw         $t2, 4($t7)
/* 2A9DC 80029DDC 8FA40000 */  lw         $a0, ($sp)
/* 2A9E0 80029DE0 AFAA0004 */  sw         $t2, 4($sp)
/* 2A9E4 80029DE4 8DED0008 */  lw         $t5, 8($t7)
/* 2A9E8 80029DE8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2A9EC 80029DEC 8FA50004 */  lw         $a1, 4($sp)
/* 2A9F0 80029DF0 AFAD0008 */  sw         $t5, 8($sp)
/* 2A9F4 80029DF4 0C011DD4 */  jal        func_80047750
/* 2A9F8 80029DF8 8FA60008 */   lw        $a2, 8($sp)
/* 2A9FC 80029DFC 8FA900E8 */  lw         $t1, 0xe8($sp)
/* 2AA00 80029E00 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 2AA04 80029E04 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 2AA08 80029E08 0009C080 */  sll        $t8, $t1, 2
/* 2AA0C 80029E0C 0309C023 */  subu       $t8, $t8, $t1
/* 2AA10 80029E10 0018C080 */  sll        $t8, $t8, 2
/* 2AA14 80029E14 0309C023 */  subu       $t8, $t8, $t1
/* 2AA18 80029E18 0018C080 */  sll        $t8, $t8, 2
/* 2AA1C 80029E1C 0309C021 */  addu       $t8, $t8, $t1
/* 2AA20 80029E20 0018C080 */  sll        $t8, $t8, 2
/* 2AA24 80029E24 0309C023 */  subu       $t8, $t8, $t1
/* 2AA28 80029E28 0018C080 */  sll        $t8, $t8, 2
/* 2AA2C 80029E2C 2419005A */  addiu      $t9, $zero, 0x5a
/* 2AA30 80029E30 01D84021 */  addu       $t0, $t6, $t8
/* 2AA34 80029E34 AD19007C */  sw         $t9, 0x7c($t0)
.L80029E38:
/* 2AA38 80029E38 0C00810C */  jal        func_80020430
/* 2AA3C 80029E3C 8FA400E8 */   lw        $a0, 0xe8($sp)
/* 2AA40 80029E40 8FAA0044 */  lw         $t2, 0x44($sp)
/* 2AA44 80029E44 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2AA48 80029E48 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2AA4C 80029E4C 000A6880 */  sll        $t5, $t2, 2
/* 2AA50 80029E50 01AA6823 */  subu       $t5, $t5, $t2
/* 2AA54 80029E54 000D6880 */  sll        $t5, $t5, 2
/* 2AA58 80029E58 01AA6823 */  subu       $t5, $t5, $t2
/* 2AA5C 80029E5C 000D6880 */  sll        $t5, $t5, 2
/* 2AA60 80029E60 01AA6821 */  addu       $t5, $t5, $t2
/* 2AA64 80029E64 000D6880 */  sll        $t5, $t5, 2
/* 2AA68 80029E68 01AA6823 */  subu       $t5, $t5, $t2
/* 2AA6C 80029E6C 000D6880 */  sll        $t5, $t5, 2
/* 2AA70 80029E70 01ED5821 */  addu       $t3, $t7, $t5
/* 2AA74 80029E74 C56800E0 */  lwc1       $f8, 0xe0($t3)
/* 2AA78 80029E78 C7B00054 */  lwc1       $f16, 0x54($sp)
/* 2AA7C 80029E7C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 2AA80 80029E80 3C198016 */  lui        $t9, 0x8016
/* 2AA84 80029E84 46104180 */  add.s      $f6, $f8, $f16
/* 2AA88 80029E88 E56600E0 */  swc1       $f6, 0xe0($t3)
/* 2AA8C 80029E8C 8FA90044 */  lw         $t1, 0x44($sp)
/* 2AA90 80029E90 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 2AA94 80029E94 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 2AA98 80029E98 00097080 */  sll        $t6, $t1, 2
/* 2AA9C 80029E9C 01C97023 */  subu       $t6, $t6, $t1
/* 2AAA0 80029EA0 000E7080 */  sll        $t6, $t6, 2
/* 2AAA4 80029EA4 01C97023 */  subu       $t6, $t6, $t1
/* 2AAA8 80029EA8 000E7080 */  sll        $t6, $t6, 2
/* 2AAAC 80029EAC 01C97021 */  addu       $t6, $t6, $t1
/* 2AAB0 80029EB0 000E7080 */  sll        $t6, $t6, 2
/* 2AAB4 80029EB4 01C97023 */  subu       $t6, $t6, $t1
/* 2AAB8 80029EB8 000E7080 */  sll        $t6, $t6, 2
/* 2AABC 80029EBC 018EC021 */  addu       $t8, $t4, $t6
/* 2AAC0 80029EC0 C71200E4 */  lwc1       $f18, 0xe4($t8)
/* 2AAC4 80029EC4 460A9100 */  add.s      $f4, $f18, $f10
/* 2AAC8 80029EC8 E70400E4 */  swc1       $f4, 0xe4($t8)
/* 2AACC 80029ECC 8FA80044 */  lw         $t0, 0x44($sp)
/* 2AAD0 80029ED0 8F39FB9C */  lw         $t9, -0x464($t9)
/* 2AAD4 80029ED4 C7B0005C */  lwc1       $f16, 0x5c($sp)
/* 2AAD8 80029ED8 00085080 */  sll        $t2, $t0, 2
/* 2AADC 80029EDC 01485023 */  subu       $t2, $t2, $t0
/* 2AAE0 80029EE0 000A5080 */  sll        $t2, $t2, 2
/* 2AAE4 80029EE4 01485023 */  subu       $t2, $t2, $t0
/* 2AAE8 80029EE8 000A5080 */  sll        $t2, $t2, 2
/* 2AAEC 80029EEC 01485021 */  addu       $t2, $t2, $t0
/* 2AAF0 80029EF0 000A5080 */  sll        $t2, $t2, 2
/* 2AAF4 80029EF4 01485023 */  subu       $t2, $t2, $t0
/* 2AAF8 80029EF8 000A5080 */  sll        $t2, $t2, 2
/* 2AAFC 80029EFC 032A7821 */  addu       $t7, $t9, $t2
/* 2AB00 80029F00 C5E800E8 */  lwc1       $f8, 0xe8($t7)
/* 2AB04 80029F04 46104180 */  add.s      $f6, $f8, $f16
/* 2AB08 80029F08 100000A4 */  b          .L8002A19C
/* 2AB0C 80029F0C E5E600E8 */   swc1      $f6, 0xe8($t7)
.L80029F10:
/* 2AB10 80029F10 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* 2AB14 80029F14 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 2AB18 80029F18 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 2AB1C 80029F1C 000B4880 */  sll        $t1, $t3, 2
/* 2AB20 80029F20 012B4823 */  subu       $t1, $t1, $t3
/* 2AB24 80029F24 00094880 */  sll        $t1, $t1, 2
/* 2AB28 80029F28 012B4823 */  subu       $t1, $t1, $t3
/* 2AB2C 80029F2C 00094880 */  sll        $t1, $t1, 2
/* 2AB30 80029F30 012B4821 */  addu       $t1, $t1, $t3
/* 2AB34 80029F34 00094880 */  sll        $t1, $t1, 2
/* 2AB38 80029F38 012B4823 */  subu       $t1, $t1, $t3
/* 2AB3C 80029F3C 00094880 */  sll        $t1, $t1, 2
/* 2AB40 80029F40 01A96021 */  addu       $t4, $t5, $t1
/* 2AB44 80029F44 8D8E006C */  lw         $t6, 0x6c($t4)
/* 2AB48 80029F48 24010040 */  addiu      $at, $zero, 0x40
/* 2AB4C 80029F4C 15C1004A */  bne        $t6, $at, .L8002A078
/* 2AB50 80029F50 00000000 */   nop
/* 2AB54 80029F54 2418000A */  addiu      $t8, $zero, 0xa
/* 2AB58 80029F58 AD98007C */  sw         $t8, 0x7c($t4)
/* 2AB5C 80029F5C 8FB900E8 */  lw         $t9, 0xe8($sp)
/* 2AB60 80029F60 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 2AB64 80029F64 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 2AB68 80029F68 00195080 */  sll        $t2, $t9, 2
/* 2AB6C 80029F6C 01595023 */  subu       $t2, $t2, $t9
/* 2AB70 80029F70 000A5080 */  sll        $t2, $t2, 2
/* 2AB74 80029F74 01595023 */  subu       $t2, $t2, $t9
/* 2AB78 80029F78 000A5080 */  sll        $t2, $t2, 2
/* 2AB7C 80029F7C 01595021 */  addu       $t2, $t2, $t9
/* 2AB80 80029F80 000A5080 */  sll        $t2, $t2, 2
/* 2AB84 80029F84 01595023 */  subu       $t2, $t2, $t9
/* 2AB88 80029F88 000A5080 */  sll        $t2, $t2, 2
/* 2AB8C 80029F8C 3C014120 */  lui        $at, 0x4120
/* 2AB90 80029F90 010A7821 */  addu       $t7, $t0, $t2
/* 2AB94 80029F94 C5F200FC */  lwc1       $f18, 0xfc($t7)
/* 2AB98 80029F98 44815000 */  mtc1       $at, $f10
/* 2AB9C 80029F9C C7A60064 */  lwc1       $f6, 0x64($sp)
/* 2ABA0 80029FA0 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 2ABA4 80029FA4 460A9102 */  mul.s      $f4, $f18, $f10
/* 2ABA8 80029FA8 3C014028 */  lui        $at, 0x4028
/* 2ABAC 80029FAC 44815800 */  mtc1       $at, $f11
/* 2ABB0 80029FB0 44805000 */  mtc1       $zero, $f10
/* 2ABB4 80029FB4 460034A1 */  cvt.d.s    $f18, $f6
/* 2ABB8 80029FB8 3C014120 */  lui        $at, 0x4120
/* 2ABBC 80029FBC 240B00FF */  addiu      $t3, $zero, 0xff
/* 2ABC0 80029FC0 46044400 */  add.s      $f16, $f8, $f4
/* 2ABC4 80029FC4 24040004 */  addiu      $a0, $zero, 4
/* 2ABC8 80029FC8 462A9200 */  add.d      $f8, $f18, $f10
/* 2ABCC 80029FCC E7B00060 */  swc1       $f16, 0x60($sp)
/* 2ABD0 80029FD0 44819000 */  mtc1       $at, $f18
/* 2ABD4 80029FD4 3C0141A0 */  lui        $at, 0x41a0
/* 2ABD8 80029FD8 46204120 */  cvt.s.d    $f4, $f8
/* 2ABDC 80029FDC C7A80068 */  lwc1       $f8, 0x68($sp)
/* 2ABE0 80029FE0 E7A40064 */  swc1       $f4, 0x64($sp)
/* 2ABE4 80029FE4 C5E60100 */  lwc1       $f6, 0x100($t7)
/* 2ABE8 80029FE8 44062000 */  mfc1       $a2, $f4
/* 2ABEC 80029FEC 46123282 */  mul.s      $f10, $f6, $f18
/* 2ABF0 80029FF0 460A4180 */  add.s      $f6, $f8, $f10
/* 2ABF4 80029FF4 44814000 */  mtc1       $at, $f8
/* 2ABF8 80029FF8 E7A60068 */  swc1       $f6, 0x68($sp)
/* 2ABFC 80029FFC C5F200FC */  lwc1       $f18, 0xfc($t7)
/* 2AC00 8002A000 46089282 */  mul.s      $f10, $f18, $f8
/* 2AC04 8002A004 C5E80100 */  lwc1       $f8, 0x100($t7)
/* 2AC08 8002A008 AFAB0014 */  sw         $t3, 0x14($sp)
/* 2AC0C 8002A00C 46105480 */  add.s      $f18, $f10, $f16
/* 2AC10 8002A010 44815000 */  mtc1       $at, $f10
/* 2AC14 8002A014 3C013F80 */  lui        $at, 0x3f80
/* 2AC18 8002A018 44812000 */  mtc1       $at, $f4
/* 2AC1C 8002A01C 460A4402 */  mul.s      $f16, $f8, $f10
/* 2AC20 8002A020 44059000 */  mfc1       $a1, $f18
/* 2AC24 8002A024 E7A40010 */  swc1       $f4, 0x10($sp)
/* 2AC28 8002A028 46068480 */  add.s      $f18, $f16, $f6
/* 2AC2C 8002A02C 44079000 */  mfc1       $a3, $f18
/* 2AC30 8002A030 0C02239B */  jal        func_80088E6C
/* 2AC34 8002A034 00000000 */   nop
/* 2AC38 8002A038 27AD0060 */  addiu      $t5, $sp, 0x60
/* 2AC3C 8002A03C 8DAE0000 */  lw         $t6, ($t5)
/* 2AC40 8002A040 2418012C */  addiu      $t8, $zero, 0x12c
/* 2AC44 8002A044 8FA700E8 */  lw         $a3, 0xe8($sp)
/* 2AC48 8002A048 AFAE0000 */  sw         $t6, ($sp)
/* 2AC4C 8002A04C 8DA90004 */  lw         $t1, 4($t5)
/* 2AC50 8002A050 8FA40000 */  lw         $a0, ($sp)
/* 2AC54 8002A054 AFA90004 */  sw         $t1, 4($sp)
/* 2AC58 8002A058 8DAE0008 */  lw         $t6, 8($t5)
/* 2AC5C 8002A05C AFB80010 */  sw         $t8, 0x10($sp)
/* 2AC60 8002A060 8FA50004 */  lw         $a1, 4($sp)
/* 2AC64 8002A064 AFAE0008 */  sw         $t6, 8($sp)
/* 2AC68 8002A068 0C011DD4 */  jal        func_80047750
/* 2AC6C 8002A06C 8FA60008 */   lw        $a2, 8($sp)
/* 2AC70 8002A070 10000048 */  b          .L8002A194
/* 2AC74 8002A074 00000000 */   nop
.L8002A078:
/* 2AC78 8002A078 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 2AC7C 8002A07C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* 2AC80 8002A080 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* 2AC84 8002A084 00085080 */  sll        $t2, $t0, 2
/* 2AC88 8002A088 01485023 */  subu       $t2, $t2, $t0
/* 2AC8C 8002A08C 000A5080 */  sll        $t2, $t2, 2
/* 2AC90 8002A090 01485023 */  subu       $t2, $t2, $t0
/* 2AC94 8002A094 000A5080 */  sll        $t2, $t2, 2
/* 2AC98 8002A098 01485021 */  addu       $t2, $t2, $t0
/* 2AC9C 8002A09C 000A5080 */  sll        $t2, $t2, 2
/* 2ACA0 8002A0A0 01485023 */  subu       $t2, $t2, $t0
/* 2ACA4 8002A0A4 000A5080 */  sll        $t2, $t2, 2
/* 2ACA8 8002A0A8 240C0096 */  addiu      $t4, $zero, 0x96
/* 2ACAC 8002A0AC 032A7821 */  addu       $t7, $t9, $t2
/* 2ACB0 8002A0B0 ADEC007C */  sw         $t4, 0x7c($t7)
/* 2ACB4 8002A0B4 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* 2ACB8 8002A0B8 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 2ACBC 8002A0BC 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 2ACC0 8002A0C0 000D4880 */  sll        $t1, $t5, 2
/* 2ACC4 8002A0C4 012D4823 */  subu       $t1, $t1, $t5
/* 2ACC8 8002A0C8 00094880 */  sll        $t1, $t1, 2
/* 2ACCC 8002A0CC 012D4823 */  subu       $t1, $t1, $t5
/* 2ACD0 8002A0D0 00094880 */  sll        $t1, $t1, 2
/* 2ACD4 8002A0D4 012D4821 */  addu       $t1, $t1, $t5
/* 2ACD8 8002A0D8 00094880 */  sll        $t1, $t1, 2
/* 2ACDC 8002A0DC 012D4823 */  subu       $t1, $t1, $t5
/* 2ACE0 8002A0E0 00094880 */  sll        $t1, $t1, 2
/* 2ACE4 8002A0E4 01697021 */  addu       $t6, $t3, $t1
/* 2ACE8 8002A0E8 C5C800FC */  lwc1       $f8, 0xfc($t6)
/* 2ACEC 8002A0EC 3C014049 */  lui        $at, 0x4049
/* 2ACF0 8002A0F0 44818800 */  mtc1       $at, $f17
/* 2ACF4 8002A0F4 44808000 */  mtc1       $zero, $f16
/* 2ACF8 8002A0F8 460042A1 */  cvt.d.s    $f10, $f8
/* 2ACFC 8002A0FC C7B20060 */  lwc1       $f18, 0x60($sp)
/* 2AD00 8002A100 46305182 */  mul.d      $f6, $f10, $f16
/* 2AD04 8002A104 C7B00064 */  lwc1       $f16, 0x64($sp)
/* 2AD08 8002A108 46009121 */  cvt.d.s    $f4, $f18
/* 2AD0C 8002A10C 3C01800E */  lui        $at, 0x800e
/* 2AD10 8002A110 460084A1 */  cvt.d.s    $f18, $f16
/* 2AD14 8002A114 27B80060 */  addiu      $t8, $sp, 0x60
/* 2AD18 8002A118 240A0136 */  addiu      $t2, $zero, 0x136
/* 2AD1C 8002A11C 01A03825 */  or         $a3, $t5, $zero
/* 2AD20 8002A120 46262200 */  add.d      $f8, $f4, $f6
/* 2AD24 8002A124 D424CAD0 */  ldc1       $f4, -0x3530($at)
/* 2AD28 8002A128 3C014049 */  lui        $at, 0x4049
/* 2AD2C 8002A12C 46249180 */  add.d      $f6, $f18, $f4
/* 2AD30 8002A130 44809000 */  mtc1       $zero, $f18
/* 2AD34 8002A134 44819800 */  mtc1       $at, $f19
/* 2AD38 8002A138 462042A0 */  cvt.s.d    $f10, $f8
/* 2AD3C 8002A13C 46203220 */  cvt.s.d    $f8, $f6
/* 2AD40 8002A140 E7AA0060 */  swc1       $f10, 0x60($sp)
/* 2AD44 8002A144 C7A60068 */  lwc1       $f6, 0x68($sp)
/* 2AD48 8002A148 E7A80064 */  swc1       $f8, 0x64($sp)
/* 2AD4C 8002A14C C5CA0100 */  lwc1       $f10, 0x100($t6)
/* 2AD50 8002A150 46003221 */  cvt.d.s    $f8, $f6
/* 2AD54 8002A154 46005421 */  cvt.d.s    $f16, $f10
/* 2AD58 8002A158 46328102 */  mul.d      $f4, $f16, $f18
/* 2AD5C 8002A15C 46244280 */  add.d      $f10, $f8, $f4
/* 2AD60 8002A160 46205420 */  cvt.s.d    $f16, $f10
/* 2AD64 8002A164 E7B00068 */  swc1       $f16, 0x68($sp)
/* 2AD68 8002A168 8F190000 */  lw         $t9, ($t8)
/* 2AD6C 8002A16C AFB90000 */  sw         $t9, ($sp)
/* 2AD70 8002A170 8F080004 */  lw         $t0, 4($t8)
/* 2AD74 8002A174 8FA40000 */  lw         $a0, ($sp)
/* 2AD78 8002A178 AFA80004 */  sw         $t0, 4($sp)
/* 2AD7C 8002A17C 8F190008 */  lw         $t9, 8($t8)
/* 2AD80 8002A180 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2AD84 8002A184 8FA50004 */  lw         $a1, 4($sp)
/* 2AD88 8002A188 AFB90008 */  sw         $t9, 8($sp)
/* 2AD8C 8002A18C 0C011DD4 */  jal        func_80047750
/* 2AD90 8002A190 8FA60008 */   lw        $a2, 8($sp)
.L8002A194:
/* 2AD94 8002A194 0C00810C */  jal        func_80020430
/* 2AD98 8002A198 8FA400E8 */   lw        $a0, 0xe8($sp)
.L8002A19C:
/* 2AD9C 8002A19C 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 2ADA0 8002A1A0 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 2ADA4 8002A1A4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 2ADA8 8002A1A8 000F5880 */  sll        $t3, $t7, 2
/* 2ADAC 8002A1AC 016F5823 */  subu       $t3, $t3, $t7
/* 2ADB0 8002A1B0 000B5880 */  sll        $t3, $t3, 2
/* 2ADB4 8002A1B4 016F5823 */  subu       $t3, $t3, $t7
/* 2ADB8 8002A1B8 000B5880 */  sll        $t3, $t3, 2
/* 2ADBC 8002A1BC 016F5821 */  addu       $t3, $t3, $t7
/* 2ADC0 8002A1C0 000B5880 */  sll        $t3, $t3, 2
/* 2ADC4 8002A1C4 016F5823 */  subu       $t3, $t3, $t7
/* 2ADC8 8002A1C8 000B5880 */  sll        $t3, $t3, 2
/* 2ADCC 8002A1CC 018B4821 */  addu       $t1, $t4, $t3
/* 2ADD0 8002A1D0 8D2E0270 */  lw         $t6, 0x270($t1)
/* 2ADD4 8002A1D4 24010004 */  addiu      $at, $zero, 4
/* 2ADD8 8002A1D8 15C10004 */  bne        $t6, $at, .L8002A1EC
/* 2ADDC 8002A1DC 00000000 */   nop
/* 2ADE0 8002A1E0 44809000 */  mtc1       $zero, $f18
/* 2ADE4 8002A1E4 10000014 */  b          .L8002A238
/* 2ADE8 8002A1E8 E53200F4 */   swc1      $f18, 0xf4($t1)
.L8002A1EC:
/* 2ADEC 8002A1EC 8FA800E8 */  lw         $t0, 0xe8($sp)
/* 2ADF0 8002A1F0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 2ADF4 8002A1F4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 2ADF8 8002A1F8 0008C880 */  sll        $t9, $t0, 2
/* 2ADFC 8002A1FC 0328C823 */  subu       $t9, $t9, $t0
/* 2AE00 8002A200 0019C880 */  sll        $t9, $t9, 2
/* 2AE04 8002A204 0328C823 */  subu       $t9, $t9, $t0
/* 2AE08 8002A208 0019C880 */  sll        $t9, $t9, 2
/* 2AE0C 8002A20C 0328C821 */  addu       $t9, $t9, $t0
/* 2AE10 8002A210 0019C880 */  sll        $t9, $t9, 2
/* 2AE14 8002A214 0328C823 */  subu       $t9, $t9, $t0
/* 2AE18 8002A218 0019C880 */  sll        $t9, $t9, 2
/* 2AE1C 8002A21C 03196821 */  addu       $t5, $t8, $t9
/* 2AE20 8002A220 8DAA0274 */  lw         $t2, 0x274($t5)
/* 2AE24 8002A224 2401000B */  addiu      $at, $zero, 0xb
/* 2AE28 8002A228 15410003 */  bne        $t2, $at, .L8002A238
/* 2AE2C 8002A22C 00000000 */   nop
/* 2AE30 8002A230 0C055D58 */  jal        func_80157560
/* 2AE34 8002A234 01002025 */   or        $a0, $t0, $zero
.L8002A238:
/* 2AE38 8002A238 8FAC00E8 */  lw         $t4, 0xe8($sp)
/* 2AE3C 8002A23C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* 2AE40 8002A240 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* 2AE44 8002A244 000C5880 */  sll        $t3, $t4, 2
/* 2AE48 8002A248 016C5823 */  subu       $t3, $t3, $t4
/* 2AE4C 8002A24C 000B5880 */  sll        $t3, $t3, 2
/* 2AE50 8002A250 016C5823 */  subu       $t3, $t3, $t4
/* 2AE54 8002A254 000B5880 */  sll        $t3, $t3, 2
/* 2AE58 8002A258 016C5821 */  addu       $t3, $t3, $t4
/* 2AE5C 8002A25C 000B5880 */  sll        $t3, $t3, 2
/* 2AE60 8002A260 016C5823 */  subu       $t3, $t3, $t4
/* 2AE64 8002A264 000B5880 */  sll        $t3, $t3, 2
/* 2AE68 8002A268 01EB7021 */  addu       $t6, $t7, $t3
/* 2AE6C 8002A26C 8DC20288 */  lw         $v0, 0x288($t6)
.L8002A270:
/* 2AE70 8002A270 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2AE74 8002A274 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2AE78 8002A278 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 2AE7C 8002A27C 8FB00030 */  lw         $s0, 0x30($sp)
/* 2AE80 8002A280 03E00008 */  jr         $ra
/* 2AE84 8002A284 27BD00E8 */   addiu     $sp, $sp, 0xe8
/* 2AE88 8002A288 00000000 */  nop
/* 2AE8C 8002A28C 00000000 */  nop
