.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009A340
/* 9AF40 8009A340 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9AF44 8009A344 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AF48 8009A348 AFA40028 */  sw         $a0, 0x28($sp)
/* 9AF4C 8009A34C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9AF50 8009A350 AFA60030 */  sw         $a2, 0x30($sp)
/* 9AF54 8009A354 AFA70034 */  sw         $a3, 0x34($sp)
/* 9AF58 8009A358 AFB00018 */  sw         $s0, 0x18($sp)
/* 9AF5C 8009A35C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9AF60 8009A360 31CF0007 */  andi       $t7, $t6, 7
/* 9AF64 8009A364 11E00007 */  beqz       $t7, .L8009A384
/* 9AF68 8009A368 00000000 */   nop
/* 9AF6C 8009A36C 24040001 */  addiu      $a0, $zero, 1
/* 9AF70 8009A370 24050001 */  addiu      $a1, $zero, 1
/* 9AF74 8009A374 0C02B5EC */  jal        func_800AD7B0
/* 9AF78 8009A378 8FA60038 */   lw        $a2, 0x38($sp)
/* 9AF7C 8009A37C 10000057 */  b          .L8009A4DC
/* 9AF80 8009A380 00000000 */   nop
.L8009A384:
/* 9AF84 8009A384 8FB8003C */  lw         $t8, 0x3c($sp)
/* 9AF88 8009A388 07000004 */  bltz       $t8, .L8009A39C
/* 9AF8C 8009A38C 00000000 */   nop
/* 9AF90 8009A390 2B010100 */  slti       $at, $t8, 0x100
/* 9AF94 8009A394 14200007 */  bnez       $at, .L8009A3B4
/* 9AF98 8009A398 00000000 */   nop
.L8009A39C:
/* 9AF9C 8009A39C 24040002 */  addiu      $a0, $zero, 2
/* 9AFA0 8009A3A0 24050001 */  addiu      $a1, $zero, 1
/* 9AFA4 8009A3A4 0C02B5EC */  jal        func_800AD7B0
/* 9AFA8 8009A3A8 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9AFAC 8009A3AC 1000004B */  b          .L8009A4DC
/* 9AFB0 8009A3B0 00000000 */   nop
.L8009A3B4:
/* 9AFB4 8009A3B4 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9AFB8 8009A3B8 8FA80028 */  lw         $t0, 0x28($sp)
/* 9AFBC 8009A3BC AD190014 */  sw         $t9, 0x14($t0)
/* 9AFC0 8009A3C0 8FA9003C */  lw         $t1, 0x3c($sp)
/* 9AFC4 8009A3C4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9AFC8 8009A3C8 AD490004 */  sw         $t1, 4($t2)
/* 9AFCC 8009A3CC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9AFD0 8009A3D0 AD600000 */  sw         $zero, ($t3)
/* 9AFD4 8009A3D4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9AFD8 8009A3D8 AD800008 */  sw         $zero, 8($t4)
/* 9AFDC 8009A3DC 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9AFE0 8009A3E0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9AFE4 8009A3E4 ADCD011C */  sw         $t5, 0x11c($t6)
/* 9AFE8 8009A3E8 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9AFEC 8009A3EC 8FA80028 */  lw         $t0, 0x28($sp)
/* 9AFF0 8009A3F0 01E0C825 */  or         $t9, $t7, $zero
/* 9AFF4 8009A3F4 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 9AFF8 8009A3F8 AD180038 */  sw         $t8, 0x38($t0)
/* 9AFFC 8009A3FC AD19003C */  sw         $t9, 0x3c($t0)
/* 9B000 8009A400 8FA90038 */  lw         $t1, 0x38($sp)
/* 9B004 8009A404 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9B008 8009A408 01205825 */  or         $t3, $t1, $zero
/* 9B00C 8009A40C 2D610010 */  sltiu      $at, $t3, 0x10
/* 9B010 8009A410 000957C3 */  sra        $t2, $t1, 0x1f
/* 9B014 8009A414 01416023 */  subu       $t4, $t2, $at
/* 9B018 8009A418 256DFFF0 */  addiu      $t5, $t3, -0x10
/* 9B01C 8009A41C ADCD00F4 */  sw         $t5, 0xf4($t6)
/* 9B020 8009A420 ADCC00F0 */  sw         $t4, 0xf0($t6)
/* 9B024 8009A424 8FA80028 */  lw         $t0, 0x28($sp)
/* 9B028 8009A428 3C0F800A */  lui        $t7, %hi(D_8009892C)
/* 9B02C 8009A42C 25EF892C */  addiu      $t7, $t7, %lo(D_8009892C)
/* 9B030 8009A430 01E0C825 */  or         $t9, $t7, $zero
/* 9B034 8009A434 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 9B038 8009A438 AD180100 */  sw         $t8, 0x100($t0)
/* 9B03C 8009A43C AD190104 */  sw         $t9, 0x104($t0)
/* 9B040 8009A440 3C09003F */  lui        $t1, 0x3f
/* 9B044 8009A444 3529FF01 */  ori        $t1, $t1, 0xff01
/* 9B048 8009A448 AFA90020 */  sw         $t1, 0x20($sp)
/* 9B04C 8009A44C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9B050 8009A450 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9B054 8009A454 314BFF01 */  andi       $t3, $t2, 0xff01
/* 9B058 8009A458 356C0002 */  ori        $t4, $t3, 2
/* 9B05C 8009A45C ADAC0118 */  sw         $t4, 0x118($t5)
/* 9B060 8009A460 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B064 8009A464 8FB90028 */  lw         $t9, 0x28($sp)
/* 9B068 8009A468 3C01003F */  lui        $at, 0x3f
/* 9B06C 8009A46C 01C17824 */  and        $t7, $t6, $at
/* 9B070 8009A470 000FC402 */  srl        $t8, $t7, 0x10
/* 9B074 8009A474 AF380128 */  sw         $t8, 0x128($t9)
/* 9B078 8009A478 8FA90028 */  lw         $t1, 0x28($sp)
/* 9B07C 8009A47C 3C080100 */  lui        $t0, 0x100
/* 9B080 8009A480 35080800 */  ori        $t0, $t0, 0x800
/* 9B084 8009A484 AD28012C */  sw         $t0, 0x12c($t1)
/* 9B088 8009A488 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9B08C 8009A48C AD400018 */  sw         $zero, 0x18($t2)
/* 9B090 8009A490 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9B094 8009A494 240B0001 */  addiu      $t3, $zero, 1
/* 9B098 8009A498 A58B0010 */  sh         $t3, 0x10($t4)
/* 9B09C 8009A49C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9B0A0 8009A4A0 A5A00012 */  sh         $zero, 0x12($t5)
/* 9B0A4 8009A4A4 0C02C0C8 */  jal        func_800B0320
/* 9B0A8 8009A4A8 00000000 */   nop
/* 9B0AC 8009A4AC 00408025 */  or         $s0, $v0, $zero
/* 9B0B0 8009A4B0 3C0E800D */  lui        $t6, %hi(D_800CC25C)
/* 9B0B4 8009A4B4 8DCEC25C */  lw         $t6, %lo(D_800CC25C)($t6)
/* 9B0B8 8009A4B8 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B0BC 8009A4BC ADEE000C */  sw         $t6, 0xc($t7)
/* 9B0C0 8009A4C0 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B0C4 8009A4C4 3C01800D */  lui        $at, %hi(D_800CC25C)
/* 9B0C8 8009A4C8 AC38C25C */  sw         $t8, %lo(D_800CC25C)($at)
/* 9B0CC 8009A4CC 0C02C0D0 */  jal        func_800B0340
/* 9B0D0 8009A4D0 02002025 */   or        $a0, $s0, $zero
/* 9B0D4 8009A4D4 10000001 */  b          .L8009A4DC
/* 9B0D8 8009A4D8 00000000 */   nop
.L8009A4DC:
/* 9B0DC 8009A4DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B0E0 8009A4E0 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B0E4 8009A4E4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B0E8 8009A4E8 03E00008 */  jr         $ra
/* 9B0EC 8009A4EC 00000000 */   nop

glabel func_8009A4F0
/* 9B0F0 8009A4F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B0F4 8009A4F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B0F8 8009A4F8 AFA40020 */  sw         $a0, 0x20($sp)
/* 9B0FC 8009A4FC AFA50024 */  sw         $a1, 0x24($sp)
/* 9B100 8009A500 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9B104 8009A504 000E7882 */  srl        $t7, $t6, 2
/* 9B108 8009A508 AFAF0024 */  sw         $t7, 0x24($sp)
/* 9B10C 8009A50C 8FB80020 */  lw         $t8, 0x20($sp)
/* 9B110 8009A510 33190003 */  andi       $t9, $t8, 3
/* 9B114 8009A514 13200008 */  beqz       $t9, .L8009A538
/* 9B118 8009A518 00000000 */   nop
/* 9B11C 8009A51C 8FA80020 */  lw         $t0, 0x20($sp)
/* 9B120 8009A520 31090003 */  andi       $t1, $t0, 3
/* 9B124 8009A524 252A0004 */  addiu      $t2, $t1, 4
/* 9B128 8009A528 AFAA0020 */  sw         $t2, 0x20($sp)
/* 9B12C 8009A52C 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9B130 8009A530 256CFFFF */  addiu      $t4, $t3, -1
/* 9B134 8009A534 AFAC0024 */  sw         $t4, 0x24($sp)
.L8009A538:
/* 9B138 8009A538 0C02C0C8 */  jal        func_800B0320
/* 9B13C 8009A53C 00000000 */   nop
/* 9B140 8009A540 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B144 8009A544 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9B148 8009A548 3C01801A */  lui        $at, %hi(D_801A1BD0)
/* 9B14C 8009A54C AC2D1BD0 */  sw         $t5, %lo(D_801A1BD0)($at)
/* 9B150 8009A550 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9B154 8009A554 3C01801A */  lui        $at, %hi(D_801A1BD4)
/* 9B158 8009A558 AC2E1BD4 */  sw         $t6, %lo(D_801A1BD4)($at)
/* 9B15C 8009A55C 3C01801A */  lui        $at, %hi(D_801A1BD8)
/* 9B160 8009A560 AC201BD8 */  sw         $zero, %lo(D_801A1BD8)($at)
/* 9B164 8009A564 3C01801A */  lui        $at, %hi(D_801A1BDC)
/* 9B168 8009A568 AC201BDC */  sw         $zero, %lo(D_801A1BDC)($at)
/* 9B16C 8009A56C 3C01801A */  lui        $at, %hi(D_801A1BE0)
/* 9B170 8009A570 AC201BE0 */  sw         $zero, %lo(D_801A1BE0)($at)
/* 9B174 8009A574 0C02C0D0 */  jal        func_800B0340
/* 9B178 8009A578 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9B17C 8009A57C 10000001 */  b          .L8009A584
/* 9B180 8009A580 00000000 */   nop
.L8009A584:
/* 9B184 8009A584 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B188 8009A588 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9B18C 8009A58C 03E00008 */  jr         $ra
/* 9B190 8009A590 00000000 */   nop
/* 9B194 8009A594 00000000 */  nop
/* 9B198 8009A598 00000000 */  nop
/* 9B19C 8009A59C 00000000 */  nop
