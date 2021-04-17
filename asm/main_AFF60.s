.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AF360
/* AFF60 800AF360 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* AFF64 800AF364 AFBF002C */  sw         $ra, 0x2c($sp)
/* AFF68 800AF368 AFA40040 */  sw         $a0, 0x40($sp)
/* AFF6C 800AF36C AFB10028 */  sw         $s1, 0x28($sp)
/* AFF70 800AF370 AFB00024 */  sw         $s0, 0x24($sp)
/* AFF74 800AF374 F7B40018 */  sdc1       $f20, 0x18($sp)
/* AFF78 800AF378 3C0E800D */  lui        $t6, %hi(D_800CC298)
/* AFF7C 800AF37C 8DCEC298 */  lw         $t6, %lo(D_800CC298)($t6)
/* AFF80 800AF380 3C0102F5 */  lui        $at, 0x2f5
/* AFF84 800AF384 3421B2D2 */  ori        $at, $at, 0xb2d2
/* AFF88 800AF388 15C10016 */  bne        $t6, $at, .L800AF3E4
/* AFF8C 800AF38C 00000000 */   nop
/* AFF90 800AF390 8FAF0040 */  lw         $t7, 0x40($sp)
/* AFF94 800AF394 2DE10BEA */  sltiu      $at, $t7, 0xbea
/* AFF98 800AF398 14200006 */  bnez       $at, .L800AF3B4
/* AFF9C 800AF39C 00000000 */   nop
/* AFFA0 800AF3A0 3C010005 */  lui        $at, 5
/* AFFA4 800AF3A4 3421BCC1 */  ori        $at, $at, 0xbcc1
/* AFFA8 800AF3A8 01E1082B */  sltu       $at, $t7, $at
/* AFFAC 800AF3AC 1420000B */  bnez       $at, .L800AF3DC
/* AFFB0 800AF3B0 00000000 */   nop
.L800AF3B4:
/* AFFB4 800AF3B4 8FB80040 */  lw         $t8, 0x40($sp)
/* AFFB8 800AF3B8 3C070005 */  lui        $a3, 5
/* AFFBC 800AF3BC 34E7BCC0 */  ori        $a3, $a3, 0xbcc0
/* AFFC0 800AF3C0 2404000E */  addiu      $a0, $zero, 0xe
/* AFFC4 800AF3C4 24050003 */  addiu      $a1, $zero, 3
/* AFFC8 800AF3C8 24060BEA */  addiu      $a2, $zero, 0xbea
/* AFFCC 800AF3CC 0C02B5EC */  jal        func_800AD7B0
/* AFFD0 800AF3D0 AFB80010 */   sw        $t8, 0x10($sp)
/* AFFD4 800AF3D4 1000008F */  b          .L800AF614
/* AFFD8 800AF3D8 2402FFFF */   addiu     $v0, $zero, -1
.L800AF3DC:
/* AFFDC 800AF3DC 1000002F */  b          .L800AF49C
/* AFFE0 800AF3E0 00000000 */   nop
.L800AF3E4:
/* AFFE4 800AF3E4 3C19800D */  lui        $t9, %hi(D_800CC298)
/* AFFE8 800AF3E8 8F39C298 */  lw         $t9, %lo(D_800CC298)($t9)
/* AFFEC 800AF3EC 3C0102E6 */  lui        $at, 0x2e6
/* AFFF0 800AF3F0 3421025C */  ori        $at, $at, 0x25c
/* AFFF4 800AF3F4 17210016 */  bne        $t9, $at, .L800AF450
/* AFFF8 800AF3F8 00000000 */   nop
/* AFFFC 800AF3FC 8FA80040 */  lw         $t0, 0x40($sp)
/* B0000 800AF400 2D010BB8 */  sltiu      $at, $t0, 0xbb8
/* B0004 800AF404 14200006 */  bnez       $at, .L800AF420
/* B0008 800AF408 00000000 */   nop
/* B000C 800AF40C 3C010005 */  lui        $at, 5
/* B0010 800AF410 34219D81 */  ori        $at, $at, 0x9d81
/* B0014 800AF414 0101082B */  sltu       $at, $t0, $at
/* B0018 800AF418 1420000B */  bnez       $at, .L800AF448
/* B001C 800AF41C 00000000 */   nop
.L800AF420:
/* B0020 800AF420 8FA90040 */  lw         $t1, 0x40($sp)
/* B0024 800AF424 3C070005 */  lui        $a3, 5
/* B0028 800AF428 34E79D80 */  ori        $a3, $a3, 0x9d80
/* B002C 800AF42C 2404000E */  addiu      $a0, $zero, 0xe
/* B0030 800AF430 24050003 */  addiu      $a1, $zero, 3
/* B0034 800AF434 24060BB8 */  addiu      $a2, $zero, 0xbb8
/* B0038 800AF438 0C02B5EC */  jal        func_800AD7B0
/* B003C 800AF43C AFA90010 */   sw        $t1, 0x10($sp)
/* B0040 800AF440 10000074 */  b          .L800AF614
/* B0044 800AF444 2402FFFF */   addiu     $v0, $zero, -1
.L800AF448:
/* B0048 800AF448 10000014 */  b          .L800AF49C
/* B004C 800AF44C 00000000 */   nop
.L800AF450:
/* B0050 800AF450 8FAA0040 */  lw         $t2, 0x40($sp)
/* B0054 800AF454 2D410BB8 */  sltiu      $at, $t2, 0xbb8
/* B0058 800AF458 14200006 */  bnez       $at, .L800AF474
/* B005C 800AF45C 00000000 */   nop
/* B0060 800AF460 3C010005 */  lui        $at, 5
/* B0064 800AF464 34219D81 */  ori        $at, $at, 0x9d81
/* B0068 800AF468 0141082B */  sltu       $at, $t2, $at
/* B006C 800AF46C 1420000B */  bnez       $at, .L800AF49C
/* B0070 800AF470 00000000 */   nop
.L800AF474:
/* B0074 800AF474 8FAB0040 */  lw         $t3, 0x40($sp)
/* B0078 800AF478 3C070005 */  lui        $a3, 5
/* B007C 800AF47C 34E79D80 */  ori        $a3, $a3, 0x9d80
/* B0080 800AF480 2404000E */  addiu      $a0, $zero, 0xe
/* B0084 800AF484 24050003 */  addiu      $a1, $zero, 3
/* B0088 800AF488 24060BB8 */  addiu      $a2, $zero, 0xbb8
/* B008C 800AF48C 0C02B5EC */  jal        func_800AD7B0
/* B0090 800AF490 AFAB0010 */   sw        $t3, 0x10($sp)
/* B0094 800AF494 1000005F */  b          .L800AF614
/* B0098 800AF498 2402FFFF */   addiu     $v0, $zero, -1
.L800AF49C:
/* B009C 800AF49C 3C0C800D */  lui        $t4, %hi(D_800CC298)
/* B00A0 800AF4A0 8D8CC298 */  lw         $t4, %lo(D_800CC298)($t4)
/* B00A4 800AF4A4 8FAD0040 */  lw         $t5, 0x40($sp)
/* B00A8 800AF4A8 448C2000 */  mtc1       $t4, $f4
/* B00AC 800AF4AC 448D4000 */  mtc1       $t5, $f8
/* B00B0 800AF4B0 468021A0 */  cvt.s.w    $f6, $f4
/* B00B4 800AF4B4 05A10005 */  bgez       $t5, .L800AF4CC
/* B00B8 800AF4B8 468042A0 */   cvt.s.w   $f10, $f8
/* B00BC 800AF4BC 3C014F80 */  lui        $at, 0x4f80
/* B00C0 800AF4C0 44818000 */  mtc1       $at, $f16
/* B00C4 800AF4C4 00000000 */  nop
/* B00C8 800AF4C8 46105280 */  add.s      $f10, $f10, $f16
.L800AF4CC:
/* B00CC 800AF4CC 460A3483 */  div.s      $f18, $f6, $f10
/* B00D0 800AF4D0 3C013F00 */  lui        $at, 0x3f00
/* B00D4 800AF4D4 44812000 */  mtc1       $at, $f4
/* B00D8 800AF4D8 00000000 */  nop
/* B00DC 800AF4DC 46049500 */  add.s      $f20, $f18, $f4
/* B00E0 800AF4E0 444EF800 */  cfc1       $t6, $31
/* B00E4 800AF4E4 24100001 */  addiu      $s0, $zero, 1
/* B00E8 800AF4E8 44D0F800 */  ctc1       $s0, $31
/* B00EC 800AF4EC 00000000 */  nop
/* B00F0 800AF4F0 4600A224 */  cvt.w.s    $f8, $f20
/* B00F4 800AF4F4 4450F800 */  cfc1       $s0, $31
/* B00F8 800AF4F8 00000000 */  nop
/* B00FC 800AF4FC 32010004 */  andi       $at, $s0, 4
/* B0100 800AF500 32100078 */  andi       $s0, $s0, 0x78
/* B0104 800AF504 12000014 */  beqz       $s0, .L800AF558
/* B0108 800AF508 00000000 */   nop
/* B010C 800AF50C 3C014F00 */  lui        $at, 0x4f00
/* B0110 800AF510 44814000 */  mtc1       $at, $f8
/* B0114 800AF514 24100001 */  addiu      $s0, $zero, 1
/* B0118 800AF518 4608A201 */  sub.s      $f8, $f20, $f8
/* B011C 800AF51C 44D0F800 */  ctc1       $s0, $31
/* B0120 800AF520 00000000 */  nop
/* B0124 800AF524 46004224 */  cvt.w.s    $f8, $f8
/* B0128 800AF528 4450F800 */  cfc1       $s0, $31
/* B012C 800AF52C 00000000 */  nop
/* B0130 800AF530 32010004 */  andi       $at, $s0, 4
/* B0134 800AF534 32100078 */  andi       $s0, $s0, 0x78
/* B0138 800AF538 16000005 */  bnez       $s0, .L800AF550
/* B013C 800AF53C 00000000 */   nop
/* B0140 800AF540 44104000 */  mfc1       $s0, $f8
/* B0144 800AF544 3C018000 */  lui        $at, 0x8000
/* B0148 800AF548 10000007 */  b          .L800AF568
/* B014C 800AF54C 02018025 */   or        $s0, $s0, $at
.L800AF550:
/* B0150 800AF550 10000005 */  b          .L800AF568
/* B0154 800AF554 2410FFFF */   addiu     $s0, $zero, -1
.L800AF558:
/* B0158 800AF558 44104000 */  mfc1       $s0, $f8
/* B015C 800AF55C 00000000 */  nop
/* B0160 800AF560 0600FFFB */  bltz       $s0, .L800AF550
/* B0164 800AF564 00000000 */   nop
.L800AF568:
/* B0168 800AF568 44CEF800 */  ctc1       $t6, $31
/* B016C 800AF56C 00000000 */  nop
/* B0170 800AF570 00000000 */  nop
/* B0174 800AF574 2E010084 */  sltiu      $at, $s0, 0x84
/* B0178 800AF578 10200003 */  beqz       $at, .L800AF588
/* B017C 800AF57C 00000000 */   nop
/* B0180 800AF580 10000024 */  b          .L800AF614
/* B0184 800AF584 2402FFFF */   addiu     $v0, $zero, -1
.L800AF588:
/* B0188 800AF588 24010042 */  addiu      $at, $zero, 0x42
/* B018C 800AF58C 0201001B */  divu       $zero, $s0, $at
/* B0190 800AF590 00008812 */  mflo       $s1
/* B0194 800AF594 322F00FF */  andi       $t7, $s1, 0xff
/* B0198 800AF598 01E08825 */  or         $s1, $t7, $zero
/* B019C 800AF59C 2A210011 */  slti       $at, $s1, 0x11
/* B01A0 800AF5A0 14200002 */  bnez       $at, .L800AF5AC
/* B01A4 800AF5A4 00000000 */   nop
/* B01A8 800AF5A8 24110010 */  addiu      $s1, $zero, 0x10
.L800AF5AC:
/* B01AC 800AF5AC 2618FFFF */  addiu      $t8, $s0, -1
/* B01B0 800AF5B0 3C19A450 */  lui        $t9, %hi(D_A4500010)
/* B01B4 800AF5B4 AF380010 */  sw         $t8, %lo(D_A4500010)($t9)
/* B01B8 800AF5B8 2628FFFF */  addiu      $t0, $s1, -1
/* B01BC 800AF5BC 3C09A450 */  lui        $t1, %hi(D_A4500014)
/* B01C0 800AF5C0 AD280014 */  sw         $t0, %lo(D_A4500014)($t1)
/* B01C4 800AF5C4 240A0001 */  addiu      $t2, $zero, 1
/* B01C8 800AF5C8 3C0BA450 */  lui        $t3, %hi(D_A4500008)
/* B01CC 800AF5CC AD6A0008 */  sw         $t2, %lo(D_A4500008)($t3)
/* B01D0 800AF5D0 3C0C800D */  lui        $t4, %hi(D_800CC298)
/* B01D4 800AF5D4 8D8CC298 */  lw         $t4, %lo(D_800CC298)($t4)
/* B01D8 800AF5D8 0190001A */  div        $zero, $t4, $s0
/* B01DC 800AF5DC 00001012 */  mflo       $v0
/* B01E0 800AF5E0 16000002 */  bnez       $s0, .L800AF5EC
/* B01E4 800AF5E4 00000000 */   nop
/* B01E8 800AF5E8 0007000D */  break      7
.L800AF5EC:
/* B01EC 800AF5EC 2401FFFF */   addiu     $at, $zero, -1
/* B01F0 800AF5F0 16010004 */  bne        $s0, $at, .L800AF604
/* B01F4 800AF5F4 3C018000 */   lui       $at, 0x8000
/* B01F8 800AF5F8 15810002 */  bne        $t4, $at, .L800AF604
/* B01FC 800AF5FC 00000000 */   nop
/* B0200 800AF600 0006000D */  break      6
.L800AF604:
/* B0204 800AF604 10000003 */   b         .L800AF614
/* B0208 800AF608 00000000 */   nop
/* B020C 800AF60C 10000001 */  b          .L800AF614
/* B0210 800AF610 00000000 */   nop
.L800AF614:
/* B0214 800AF614 8FBF002C */  lw         $ra, 0x2c($sp)
/* B0218 800AF618 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B021C 800AF61C 8FB00024 */  lw         $s0, 0x24($sp)
/* B0220 800AF620 8FB10028 */  lw         $s1, 0x28($sp)
/* B0224 800AF624 03E00008 */  jr         $ra
/* B0228 800AF628 27BD0040 */   addiu     $sp, $sp, 0x40
/* B022C 800AF62C 00000000 */  nop
