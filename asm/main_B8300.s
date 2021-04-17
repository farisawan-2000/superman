.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B7700
/* B8300 800B7700 27BDFF68 */  addiu      $sp, $sp, -0x98
/* B8304 800B7704 AFBF0024 */  sw         $ra, 0x24($sp)
/* B8308 800B7708 AFA40098 */  sw         $a0, 0x98($sp)
/* B830C 800B770C AFA5009C */  sw         $a1, 0x9c($sp)
/* B8310 800B7710 AFB10020 */  sw         $s1, 0x20($sp)
/* B8314 800B7714 AFB0001C */  sw         $s0, 0x1c($sp)
/* B8318 800B7718 27AE0078 */  addiu      $t6, $sp, 0x78
/* B831C 800B771C AFAE0074 */  sw         $t6, 0x74($sp)
/* B8320 800B7720 8FAF0098 */  lw         $t7, 0x98($sp)
/* B8324 800B7724 D5E40000 */  ldc1       $f4, ($t7)
/* B8328 800B7728 F7A40068 */  sdc1       $f4, 0x68($sp)
/* B832C 800B772C 8FB80098 */  lw         $t8, 0x98($sp)
/* B8330 800B7730 8F190024 */  lw         $t9, 0x24($t8)
/* B8334 800B7734 07210005 */  bgez       $t9, .L800B774C
/* B8338 800B7738 00000000 */   nop
/* B833C 800B773C 8FA90098 */  lw         $t1, 0x98($sp)
/* B8340 800B7740 24080006 */  addiu      $t0, $zero, 6
/* B8344 800B7744 1000000F */  b          .L800B7784
/* B8348 800B7748 AD280024 */   sw        $t0, 0x24($t1)
.L800B774C:
/* B834C 800B774C 8FAA0098 */  lw         $t2, 0x98($sp)
/* B8350 800B7750 8D4B0024 */  lw         $t3, 0x24($t2)
/* B8354 800B7754 1560000B */  bnez       $t3, .L800B7784
/* B8358 800B7758 00000000 */   nop
/* B835C 800B775C 93AC009F */  lbu        $t4, 0x9f($sp)
/* B8360 800B7760 24010067 */  addiu      $at, $zero, 0x67
/* B8364 800B7764 11810004 */  beq        $t4, $at, .L800B7778
/* B8368 800B7768 00000000 */   nop
/* B836C 800B776C 24010047 */  addiu      $at, $zero, 0x47
/* B8370 800B7770 15810004 */  bne        $t4, $at, .L800B7784
/* B8374 800B7774 00000000 */   nop
.L800B7778:
/* B8378 800B7778 8FAE0098 */  lw         $t6, 0x98($sp)
/* B837C 800B777C 240D0001 */  addiu      $t5, $zero, 1
/* B8380 800B7780 ADCD0024 */  sw         $t5, 0x24($t6)
.L800B7784:
/* B8384 800B7784 27A40062 */  addiu      $a0, $sp, 0x62
/* B8388 800B7788 0C02DF51 */  jal        func_800B7D44
/* B838C 800B778C 8FA50098 */   lw        $a1, 0x98($sp)
/* B8390 800B7790 A7A20066 */  sh         $v0, 0x66($sp)
/* B8394 800B7794 87AF0066 */  lh         $t7, 0x66($sp)
/* B8398 800B7798 19E00016 */  blez       $t7, .L800B77F4
/* B839C 800B779C 00000000 */   nop
/* B83A0 800B77A0 87B80066 */  lh         $t8, 0x66($sp)
/* B83A4 800B77A4 24010002 */  addiu      $at, $zero, 2
/* B83A8 800B77A8 17010004 */  bne        $t8, $at, .L800B77BC
/* B83AC 800B77AC 00000000 */   nop
/* B83B0 800B77B0 3C10800D */  lui        $s0, %hi(D_800D3BE8)
/* B83B4 800B77B4 10000003 */  b          .L800B77C4
/* B83B8 800B77B8 26103BE8 */   addiu     $s0, $s0, %lo(D_800D3BE8)
.L800B77BC:
/* B83BC 800B77BC 3C10800D */  lui        $s0, %hi(D_800D3BEC)
/* B83C0 800B77C0 26103BEC */  addiu      $s0, $s0, %lo(D_800D3BEC)
.L800B77C4:
/* B83C4 800B77C4 8FB90098 */  lw         $t9, 0x98($sp)
/* B83C8 800B77C8 24080003 */  addiu      $t0, $zero, 3
/* B83CC 800B77CC 02002825 */  or         $a1, $s0, $zero
/* B83D0 800B77D0 AF280014 */  sw         $t0, 0x14($t9)
/* B83D4 800B77D4 8FA90098 */  lw         $t1, 0x98($sp)
/* B83D8 800B77D8 8F240008 */  lw         $a0, 8($t9)
/* B83DC 800B77DC 0C02B415 */  jal        func_800AD054
/* B83E0 800B77E0 8D260014 */   lw        $a2, 0x14($t1)
/* B83E4 800B77E4 10000152 */  b          .L800B7D30
/* B83E8 800B77E8 00000000 */   nop
/* B83EC 800B77EC 10000147 */  b          .L800B7D0C
/* B83F0 800B77F0 00000000 */   nop
.L800B77F4:
/* B83F4 800B77F4 87AA0066 */  lh         $t2, 0x66($sp)
/* B83F8 800B77F8 15400004 */  bnez       $t2, .L800B780C
/* B83FC 800B77FC 00000000 */   nop
/* B8400 800B7800 A7A00064 */  sh         $zero, 0x64($sp)
/* B8404 800B7804 10000141 */  b          .L800B7D0C
/* B8408 800B7808 A7A00062 */   sh        $zero, 0x62($sp)
.L800B780C:
/* B840C 800B780C D7A60068 */  ldc1       $f6, 0x68($sp)
/* B8410 800B7810 44804800 */  mtc1       $zero, $f9
/* B8414 800B7814 44804000 */  mtc1       $zero, $f8
/* B8418 800B7818 00000000 */  nop
/* B841C 800B781C 4628303C */  c.lt.d     $f6, $f8
/* B8420 800B7820 00000000 */  nop
/* B8424 800B7824 45000004 */  bc1f       .L800B7838
/* B8428 800B7828 00000000 */   nop
/* B842C 800B782C D7AA0068 */  ldc1       $f10, 0x68($sp)
/* B8430 800B7830 46205407 */  neg.d      $f16, $f10
/* B8434 800B7834 F7B00068 */  sdc1       $f16, 0x68($sp)
.L800B7838:
/* B8438 800B7838 87AB0062 */  lh         $t3, 0x62($sp)
/* B843C 800B783C 24017597 */  addiu      $at, $zero, 0x7597
/* B8440 800B7840 01610019 */  multu      $t3, $at
/* B8444 800B7844 3C010001 */  lui        $at, 1
/* B8448 800B7848 342186A0 */  ori        $at, $at, 0x86a0
/* B844C 800B784C 00006012 */  mflo       $t4
/* B8450 800B7850 00000000 */  nop
/* B8454 800B7854 00000000 */  nop
/* B8458 800B7858 0181001A */  div        $zero, $t4, $at
/* B845C 800B785C 00006812 */  mflo       $t5
/* B8460 800B7860 25AEFFFC */  addiu      $t6, $t5, -4
/* B8464 800B7864 000E7C00 */  sll        $t7, $t6, 0x10
/* B8468 800B7868 000FC403 */  sra        $t8, $t7, 0x10
/* B846C 800B786C 07010022 */  bgez       $t8, .L800B78F8
/* B8470 800B7870 A7AE0062 */   sh        $t6, 0x62($sp)
/* B8474 800B7874 87A80062 */  lh         $t0, 0x62($sp)
/* B8478 800B7878 24190003 */  addiu      $t9, $zero, 3
/* B847C 800B787C 2401FFFC */  addiu      $at, $zero, -4
/* B8480 800B7880 03284823 */  subu       $t1, $t9, $t0
/* B8484 800B7884 01215024 */  and        $t2, $t1, $at
/* B8488 800B7888 000A5823 */  negu       $t3, $t2
/* B848C 800B788C A7AB0062 */  sh         $t3, 0x62($sp)
/* B8490 800B7890 AFAA0058 */  sw         $t2, 0x58($sp)
/* B8494 800B7894 8FAC0058 */  lw         $t4, 0x58($sp)
/* B8498 800B7898 AFA0005C */  sw         $zero, 0x5c($sp)
/* B849C 800B789C 19800014 */  blez       $t4, .L800B78F0
/* B84A0 800B78A0 00000000 */   nop
.L800B78A4:
/* B84A4 800B78A4 8FAD0058 */  lw         $t5, 0x58($sp)
/* B84A8 800B78A8 31AE0001 */  andi       $t6, $t5, 1
/* B84AC 800B78AC 11C00009 */  beqz       $t6, .L800B78D4
/* B84B0 800B78B0 00000000 */   nop
/* B84B4 800B78B4 8FAF005C */  lw         $t7, 0x5c($sp)
/* B84B8 800B78B8 3C01800D */  lui        $at, %hi(D_800D3BA0)
/* B84BC 800B78BC D7B20068 */  ldc1       $f18, 0x68($sp)
/* B84C0 800B78C0 000FC0C0 */  sll        $t8, $t7, 3
/* B84C4 800B78C4 00380821 */  addu       $at, $at, $t8
/* B84C8 800B78C8 D4243BA0 */  ldc1       $f4, %lo(D_800D3BA0)($at)
/* B84CC 800B78CC 46249182 */  mul.d      $f6, $f18, $f4
/* B84D0 800B78D0 F7A60068 */  sdc1       $f6, 0x68($sp)
.L800B78D4:
/* B84D4 800B78D4 8FB90058 */  lw         $t9, 0x58($sp)
/* B84D8 800B78D8 8FA9005C */  lw         $t1, 0x5c($sp)
/* B84DC 800B78DC 00194043 */  sra        $t0, $t9, 1
/* B84E0 800B78E0 252A0001 */  addiu      $t2, $t1, 1
/* B84E4 800B78E4 AFAA005C */  sw         $t2, 0x5c($sp)
/* B84E8 800B78E8 1D00FFEE */  bgtz       $t0, .L800B78A4
/* B84EC 800B78EC AFA80058 */   sw        $t0, 0x58($sp)
.L800B78F0:
/* B84F0 800B78F0 10000028 */  b          .L800B7994
/* B84F4 800B78F4 00000000 */   nop
.L800B78F8:
/* B84F8 800B78F8 87AB0062 */  lh         $t3, 0x62($sp)
/* B84FC 800B78FC 19600025 */  blez       $t3, .L800B7994
/* B8500 800B7900 00000000 */   nop
/* B8504 800B7904 3C013FF0 */  lui        $at, 0x3ff0
/* B8508 800B7908 44814800 */  mtc1       $at, $f9
/* B850C 800B790C 44804000 */  mtc1       $zero, $f8
/* B8510 800B7910 00000000 */  nop
/* B8514 800B7914 F7A80050 */  sdc1       $f8, 0x50($sp)
/* B8518 800B7918 87AC0062 */  lh         $t4, 0x62($sp)
/* B851C 800B791C 2401FFFC */  addiu      $at, $zero, -4
/* B8520 800B7920 01816824 */  and        $t5, $t4, $at
/* B8524 800B7924 A7AD0062 */  sh         $t5, 0x62($sp)
/* B8528 800B7928 87AE0062 */  lh         $t6, 0x62($sp)
/* B852C 800B792C AFA0005C */  sw         $zero, 0x5c($sp)
/* B8530 800B7930 19C00014 */  blez       $t6, .L800B7984
/* B8534 800B7934 AFAE0058 */   sw        $t6, 0x58($sp)
.L800B7938:
/* B8538 800B7938 8FAF0058 */  lw         $t7, 0x58($sp)
/* B853C 800B793C 31F80001 */  andi       $t8, $t7, 1
/* B8540 800B7940 13000009 */  beqz       $t8, .L800B7968
/* B8544 800B7944 00000000 */   nop
/* B8548 800B7948 8FB9005C */  lw         $t9, 0x5c($sp)
/* B854C 800B794C 3C01800D */  lui        $at, %hi(D_800D3BA0)
/* B8550 800B7950 D7AA0050 */  ldc1       $f10, 0x50($sp)
/* B8554 800B7954 001948C0 */  sll        $t1, $t9, 3
/* B8558 800B7958 00290821 */  addu       $at, $at, $t1
/* B855C 800B795C D4303BA0 */  ldc1       $f16, %lo(D_800D3BA0)($at)
/* B8560 800B7960 46305482 */  mul.d      $f18, $f10, $f16
/* B8564 800B7964 F7B20050 */  sdc1       $f18, 0x50($sp)
.L800B7968:
/* B8568 800B7968 8FAA0058 */  lw         $t2, 0x58($sp)
/* B856C 800B796C 8FAB005C */  lw         $t3, 0x5c($sp)
/* B8570 800B7970 000A4043 */  sra        $t0, $t2, 1
/* B8574 800B7974 256C0001 */  addiu      $t4, $t3, 1
/* B8578 800B7978 AFAC005C */  sw         $t4, 0x5c($sp)
/* B857C 800B797C 1D00FFEE */  bgtz       $t0, .L800B7938
/* B8580 800B7980 AFA80058 */   sw        $t0, 0x58($sp)
.L800B7984:
/* B8584 800B7984 D7A40068 */  ldc1       $f4, 0x68($sp)
/* B8588 800B7988 D7A60050 */  ldc1       $f6, 0x50($sp)
/* B858C 800B798C 46262203 */  div.d      $f8, $f4, $f6
/* B8590 800B7990 F7A80068 */  sdc1       $f8, 0x68($sp)
.L800B7994:
/* B8594 800B7994 93AD009F */  lbu        $t5, 0x9f($sp)
/* B8598 800B7998 24010066 */  addiu      $at, $zero, 0x66
/* B859C 800B799C 15A10004 */  bne        $t5, $at, .L800B79B0
/* B85A0 800B79A0 00000000 */   nop
/* B85A4 800B79A4 87B00062 */  lh         $s0, 0x62($sp)
/* B85A8 800B79A8 10000002 */  b          .L800B79B4
/* B85AC 800B79AC 2610000A */   addiu     $s0, $s0, 0xa
.L800B79B0:
/* B85B0 800B79B0 24100006 */  addiu      $s0, $zero, 6
.L800B79B4:
/* B85B4 800B79B4 8FAE0098 */  lw         $t6, 0x98($sp)
/* B85B8 800B79B8 8DCF0024 */  lw         $t7, 0x24($t6)
/* B85BC 800B79BC 020FC021 */  addu       $t8, $s0, $t7
/* B85C0 800B79C0 AFB8004C */  sw         $t8, 0x4c($sp)
/* B85C4 800B79C4 8FB9004C */  lw         $t9, 0x4c($sp)
/* B85C8 800B79C8 2B210014 */  slti       $at, $t9, 0x14
/* B85CC 800B79CC 14200003 */  bnez       $at, .L800B79DC
/* B85D0 800B79D0 00000000 */   nop
/* B85D4 800B79D4 24090013 */  addiu      $t1, $zero, 0x13
/* B85D8 800B79D8 AFA9004C */  sw         $t1, 0x4c($sp)
.L800B79DC:
/* B85DC 800B79DC 8FAB0074 */  lw         $t3, 0x74($sp)
/* B85E0 800B79E0 240A0030 */  addiu      $t2, $zero, 0x30
/* B85E4 800B79E4 A16A0000 */  sb         $t2, ($t3)
/* B85E8 800B79E8 8FAC0074 */  lw         $t4, 0x74($sp)
/* B85EC 800B79EC 8FAD004C */  lw         $t5, 0x4c($sp)
/* B85F0 800B79F0 25880001 */  addiu      $t0, $t4, 1
/* B85F4 800B79F4 19A0004D */  blez       $t5, .L800B7B2C
/* B85F8 800B79F8 AFA80074 */   sw        $t0, 0x74($sp)
/* B85FC 800B79FC 44805800 */  mtc1       $zero, $f11
/* B8600 800B7A00 44805000 */  mtc1       $zero, $f10
/* B8604 800B7A04 D7B00068 */  ldc1       $f16, 0x68($sp)
/* B8608 800B7A08 4630503C */  c.lt.d     $f10, $f16
/* B860C 800B7A0C 00000000 */  nop
/* B8610 800B7A10 45000046 */  bc1f       .L800B7B2C
/* B8614 800B7A14 00000000 */   nop
.L800B7A18:
/* B8618 800B7A18 D7B20068 */  ldc1       $f18, 0x68($sp)
/* B861C 800B7A1C 4620910D */  trunc.w.d  $f4, $f18
/* B8620 800B7A20 E7A40044 */  swc1       $f4, 0x44($sp)
/* B8624 800B7A24 8FAF004C */  lw         $t7, 0x4c($sp)
/* B8628 800B7A28 25F8FFF8 */  addiu      $t8, $t7, -8
/* B862C 800B7A2C 1B00000A */  blez       $t8, .L800B7A58
/* B8630 800B7A30 AFB8004C */   sw        $t8, 0x4c($sp)
/* B8634 800B7A34 8FB90044 */  lw         $t9, 0x44($sp)
/* B8638 800B7A38 D7A60068 */  ldc1       $f6, 0x68($sp)
/* B863C 800B7A3C 3C01800D */  lui        $at, %hi(D_800D3BF8)
/* B8640 800B7A40 44994000 */  mtc1       $t9, $f8
/* B8644 800B7A44 D4323BF8 */  ldc1       $f18, %lo(D_800D3BF8)($at)
/* B8648 800B7A48 468042A1 */  cvt.d.w    $f10, $f8
/* B864C 800B7A4C 462A3401 */  sub.d      $f16, $f6, $f10
/* B8650 800B7A50 46328102 */  mul.d      $f4, $f16, $f18
/* B8654 800B7A54 F7A40068 */  sdc1       $f4, 0x68($sp)
.L800B7A58:
/* B8658 800B7A58 8FA90074 */  lw         $t1, 0x74($sp)
/* B865C 800B7A5C 8FAC0044 */  lw         $t4, 0x44($sp)
/* B8660 800B7A60 240B0008 */  addiu      $t3, $zero, 8
/* B8664 800B7A64 252A0008 */  addiu      $t2, $t1, 8
/* B8668 800B7A68 AFAA0074 */  sw         $t2, 0x74($sp)
/* B866C 800B7A6C 19800016 */  blez       $t4, .L800B7AC8
/* B8670 800B7A70 AFAB0048 */   sw        $t3, 0x48($sp)
/* B8674 800B7A74 24080007 */  addiu      $t0, $zero, 7
/* B8678 800B7A78 AFA80048 */  sw         $t0, 0x48($sp)
.L800B7A7C:
/* B867C 800B7A7C 27A4003C */  addiu      $a0, $sp, 0x3c
/* B8680 800B7A80 8FA50044 */  lw         $a1, 0x44($sp)
/* B8684 800B7A84 0C02E174 */  jal        func_800B85D0
/* B8688 800B7A88 2406000A */   addiu     $a2, $zero, 0xa
/* B868C 800B7A8C 8FAD0074 */  lw         $t5, 0x74($sp)
/* B8690 800B7A90 8FAF0040 */  lw         $t7, 0x40($sp)
/* B8694 800B7A94 25AEFFFF */  addiu      $t6, $t5, -1
/* B8698 800B7A98 AFAE0074 */  sw         $t6, 0x74($sp)
/* B869C 800B7A9C 25F80030 */  addiu      $t8, $t7, 0x30
/* B86A0 800B7AA0 A1D80000 */  sb         $t8, ($t6)
/* B86A4 800B7AA4 8FB9003C */  lw         $t9, 0x3c($sp)
/* B86A8 800B7AA8 AFB90044 */  sw         $t9, 0x44($sp)
/* B86AC 800B7AAC 8FA90044 */  lw         $t1, 0x44($sp)
/* B86B0 800B7AB0 19200005 */  blez       $t1, .L800B7AC8
/* B86B4 800B7AB4 00000000 */   nop
/* B86B8 800B7AB8 8FAA0048 */  lw         $t2, 0x48($sp)
/* B86BC 800B7ABC 254BFFFF */  addiu      $t3, $t2, -1
/* B86C0 800B7AC0 0561FFEE */  bgez       $t3, .L800B7A7C
/* B86C4 800B7AC4 AFAB0048 */   sw        $t3, 0x48($sp)
.L800B7AC8:
/* B86C8 800B7AC8 8FAC0048 */  lw         $t4, 0x48($sp)
/* B86CC 800B7ACC 2588FFFF */  addiu      $t0, $t4, -1
/* B86D0 800B7AD0 0500000A */  bltz       $t0, .L800B7AFC
/* B86D4 800B7AD4 AFA80048 */   sw        $t0, 0x48($sp)
.L800B7AD8:
/* B86D8 800B7AD8 8FAD0074 */  lw         $t5, 0x74($sp)
/* B86DC 800B7ADC 24180030 */  addiu      $t8, $zero, 0x30
/* B86E0 800B7AE0 25AFFFFF */  addiu      $t7, $t5, -1
/* B86E4 800B7AE4 AFAF0074 */  sw         $t7, 0x74($sp)
/* B86E8 800B7AE8 A1F80000 */  sb         $t8, ($t7)
/* B86EC 800B7AEC 8FAE0048 */  lw         $t6, 0x48($sp)
/* B86F0 800B7AF0 25D9FFFF */  addiu      $t9, $t6, -1
/* B86F4 800B7AF4 0721FFF8 */  bgez       $t9, .L800B7AD8
/* B86F8 800B7AF8 AFB90048 */   sw        $t9, 0x48($sp)
.L800B7AFC:
/* B86FC 800B7AFC 8FA90074 */  lw         $t1, 0x74($sp)
/* B8700 800B7B00 8FAB004C */  lw         $t3, 0x4c($sp)
/* B8704 800B7B04 252A0008 */  addiu      $t2, $t1, 8
/* B8708 800B7B08 19600008 */  blez       $t3, .L800B7B2C
/* B870C 800B7B0C AFAA0074 */   sw        $t2, 0x74($sp)
/* B8710 800B7B10 44804800 */  mtc1       $zero, $f9
/* B8714 800B7B14 44804000 */  mtc1       $zero, $f8
/* B8718 800B7B18 D7A60068 */  ldc1       $f6, 0x68($sp)
/* B871C 800B7B1C 4626403C */  c.lt.d     $f8, $f6
/* B8720 800B7B20 00000000 */  nop
/* B8724 800B7B24 4501FFBC */  bc1t       .L800B7A18
/* B8728 800B7B28 00000000 */   nop
.L800B7B2C:
/* B872C 800B7B2C 8FAC0074 */  lw         $t4, 0x74($sp)
/* B8730 800B7B30 27A80078 */  addiu      $t0, $sp, 0x78
/* B8734 800B7B34 01886823 */  subu       $t5, $t4, $t0
/* B8738 800B7B38 25B8FFFF */  addiu      $t8, $t5, -1
/* B873C 800B7B3C AFB8004C */  sw         $t8, 0x4c($sp)
/* B8740 800B7B40 87B90062 */  lh         $t9, 0x62($sp)
/* B8744 800B7B44 27AF0078 */  addiu      $t7, $sp, 0x78
/* B8748 800B7B48 25EE0001 */  addiu      $t6, $t7, 1
/* B874C 800B7B4C 27290007 */  addiu      $t1, $t9, 7
/* B8750 800B7B50 A7A90062 */  sh         $t1, 0x62($sp)
/* B8754 800B7B54 AFAE0074 */  sw         $t6, 0x74($sp)
/* B8758 800B7B58 91EA0001 */  lbu        $t2, 1($t7)
/* B875C 800B7B5C 24010030 */  addiu      $at, $zero, 0x30
/* B8760 800B7B60 1541000E */  bne        $t2, $at, .L800B7B9C
/* B8764 800B7B64 00000000 */   nop
.L800B7B68:
/* B8768 800B7B68 8FAB004C */  lw         $t3, 0x4c($sp)
/* B876C 800B7B6C 87A80062 */  lh         $t0, 0x62($sp)
/* B8770 800B7B70 256CFFFF */  addiu      $t4, $t3, -1
/* B8774 800B7B74 250DFFFF */  addiu      $t5, $t0, -1
/* B8778 800B7B78 A7AD0062 */  sh         $t5, 0x62($sp)
/* B877C 800B7B7C AFAC004C */  sw         $t4, 0x4c($sp)
/* B8780 800B7B80 8FB80074 */  lw         $t8, 0x74($sp)
/* B8784 800B7B84 24010030 */  addiu      $at, $zero, 0x30
/* B8788 800B7B88 270E0001 */  addiu      $t6, $t8, 1
/* B878C 800B7B8C AFAE0074 */  sw         $t6, 0x74($sp)
/* B8790 800B7B90 91D90000 */  lbu        $t9, ($t6)
/* B8794 800B7B94 1321FFF4 */  beq        $t9, $at, .L800B7B68
/* B8798 800B7B98 00000000 */   nop
.L800B7B9C:
/* B879C 800B7B9C 93A9009F */  lbu        $t1, 0x9f($sp)
/* B87A0 800B7BA0 24010066 */  addiu      $at, $zero, 0x66
/* B87A4 800B7BA4 15210004 */  bne        $t1, $at, .L800B7BB8
/* B87A8 800B7BA8 00000000 */   nop
/* B87AC 800B7BAC 87B00062 */  lh         $s0, 0x62($sp)
/* B87B0 800B7BB0 1000000C */  b          .L800B7BE4
/* B87B4 800B7BB4 26100001 */   addiu     $s0, $s0, 1
.L800B7BB8:
/* B87B8 800B7BB8 93AF009F */  lbu        $t7, 0x9f($sp)
/* B87BC 800B7BBC 24010065 */  addiu      $at, $zero, 0x65
/* B87C0 800B7BC0 11E10004 */  beq        $t7, $at, .L800B7BD4
/* B87C4 800B7BC4 00000000 */   nop
/* B87C8 800B7BC8 24010045 */  addiu      $at, $zero, 0x45
/* B87CC 800B7BCC 15E10003 */  bne        $t7, $at, .L800B7BDC
/* B87D0 800B7BD0 00000000 */   nop
.L800B7BD4:
/* B87D4 800B7BD4 10000002 */  b          .L800B7BE0
/* B87D8 800B7BD8 24110001 */   addiu     $s1, $zero, 1
.L800B7BDC:
/* B87DC 800B7BDC 00008825 */  or         $s1, $zero, $zero
.L800B7BE0:
/* B87E0 800B7BE0 02208025 */  or         $s0, $s1, $zero
.L800B7BE4:
/* B87E4 800B7BE4 8FAA0098 */  lw         $t2, 0x98($sp)
/* B87E8 800B7BE8 8D4B0024 */  lw         $t3, 0x24($t2)
/* B87EC 800B7BEC 020B6021 */  addu       $t4, $s0, $t3
/* B87F0 800B7BF0 A7AC0064 */  sh         $t4, 0x64($sp)
/* B87F4 800B7BF4 8FA8004C */  lw         $t0, 0x4c($sp)
/* B87F8 800B7BF8 87AD0064 */  lh         $t5, 0x64($sp)
/* B87FC 800B7BFC 010D082A */  slt        $at, $t0, $t5
/* B8800 800B7C00 10200003 */  beqz       $at, .L800B7C10
/* B8804 800B7C04 00000000 */   nop
/* B8808 800B7C08 8FB8004C */  lw         $t8, 0x4c($sp)
/* B880C 800B7C0C A7B80064 */  sh         $t8, 0x64($sp)
.L800B7C10:
/* B8810 800B7C10 87AE0064 */  lh         $t6, 0x64($sp)
/* B8814 800B7C14 19C0003D */  blez       $t6, .L800B7D0C
/* B8818 800B7C18 00000000 */   nop
/* B881C 800B7C1C 87B90064 */  lh         $t9, 0x64($sp)
/* B8820 800B7C20 8FA9004C */  lw         $t1, 0x4c($sp)
/* B8824 800B7C24 0329082A */  slt        $at, $t9, $t1
/* B8828 800B7C28 1020000A */  beqz       $at, .L800B7C54
/* B882C 800B7C2C 00000000 */   nop
/* B8830 800B7C30 8FAF0074 */  lw         $t7, 0x74($sp)
/* B8834 800B7C34 032F5021 */  addu       $t2, $t9, $t7
/* B8838 800B7C38 914B0000 */  lbu        $t3, ($t2)
/* B883C 800B7C3C 29610035 */  slti       $at, $t3, 0x35
/* B8840 800B7C40 14200004 */  bnez       $at, .L800B7C54
/* B8844 800B7C44 00000000 */   nop
/* B8848 800B7C48 240C0039 */  addiu      $t4, $zero, 0x39
/* B884C 800B7C4C 10000003 */  b          .L800B7C5C
/* B8850 800B7C50 A3AC003B */   sb        $t4, 0x3b($sp)
.L800B7C54:
/* B8854 800B7C54 24080030 */  addiu      $t0, $zero, 0x30
/* B8858 800B7C58 A3A8003B */  sb         $t0, 0x3b($sp)
.L800B7C5C:
/* B885C 800B7C5C 87AD0064 */  lh         $t5, 0x64($sp)
/* B8860 800B7C60 8FAE0074 */  lw         $t6, 0x74($sp)
/* B8864 800B7C64 93AF003B */  lbu        $t7, 0x3b($sp)
/* B8868 800B7C68 25B8FFFF */  addiu      $t8, $t5, -1
/* B886C 800B7C6C AFAD0034 */  sw         $t5, 0x34($sp)
/* B8870 800B7C70 AFB80034 */  sw         $t8, 0x34($sp)
/* B8874 800B7C74 030E4821 */  addu       $t1, $t8, $t6
/* B8878 800B7C78 91390000 */  lbu        $t9, ($t1)
/* B887C 800B7C7C 172F000D */  bne        $t9, $t7, .L800B7CB4
/* B8880 800B7C80 00000000 */   nop
.L800B7C84:
/* B8884 800B7C84 87AA0064 */  lh         $t2, 0x64($sp)
/* B8888 800B7C88 254BFFFF */  addiu      $t3, $t2, -1
/* B888C 800B7C8C A7AB0064 */  sh         $t3, 0x64($sp)
/* B8890 800B7C90 8FAC0034 */  lw         $t4, 0x34($sp)
/* B8894 800B7C94 8FAD0074 */  lw         $t5, 0x74($sp)
/* B8898 800B7C98 93A9003B */  lbu        $t1, 0x3b($sp)
/* B889C 800B7C9C 2588FFFF */  addiu      $t0, $t4, -1
/* B88A0 800B7CA0 AFA80034 */  sw         $t0, 0x34($sp)
/* B88A4 800B7CA4 010DC021 */  addu       $t8, $t0, $t5
/* B88A8 800B7CA8 930E0000 */  lbu        $t6, ($t8)
/* B88AC 800B7CAC 11C9FFF5 */  beq        $t6, $t1, .L800B7C84
/* B88B0 800B7CB0 00000000 */   nop
.L800B7CB4:
/* B88B4 800B7CB4 93B9003B */  lbu        $t9, 0x3b($sp)
/* B88B8 800B7CB8 24010039 */  addiu      $at, $zero, 0x39
/* B88BC 800B7CBC 17210007 */  bne        $t9, $at, .L800B7CDC
/* B88C0 800B7CC0 00000000 */   nop
/* B88C4 800B7CC4 8FAF0074 */  lw         $t7, 0x74($sp)
/* B88C8 800B7CC8 8FAA0034 */  lw         $t2, 0x34($sp)
/* B88CC 800B7CCC 01EA5821 */  addu       $t3, $t7, $t2
/* B88D0 800B7CD0 916C0000 */  lbu        $t4, ($t3)
/* B88D4 800B7CD4 25880001 */  addiu      $t0, $t4, 1
/* B88D8 800B7CD8 A1680000 */  sb         $t0, ($t3)
.L800B7CDC:
/* B88DC 800B7CDC 8FAD0034 */  lw         $t5, 0x34($sp)
/* B88E0 800B7CE0 05A1000A */  bgez       $t5, .L800B7D0C
/* B88E4 800B7CE4 00000000 */   nop
/* B88E8 800B7CE8 8FB80074 */  lw         $t8, 0x74($sp)
/* B88EC 800B7CEC 87A90064 */  lh         $t1, 0x64($sp)
/* B88F0 800B7CF0 87AF0062 */  lh         $t7, 0x62($sp)
/* B88F4 800B7CF4 270EFFFF */  addiu      $t6, $t8, -1
/* B88F8 800B7CF8 25390001 */  addiu      $t9, $t1, 1
/* B88FC 800B7CFC 25EA0001 */  addiu      $t2, $t7, 1
/* B8900 800B7D00 A7AA0062 */  sh         $t2, 0x62($sp)
/* B8904 800B7D04 A7B90064 */  sh         $t9, 0x64($sp)
/* B8908 800B7D08 AFAE0074 */  sw         $t6, 0x74($sp)
.L800B7D0C:
/* B890C 800B7D0C 87AC0062 */  lh         $t4, 0x62($sp)
/* B8910 800B7D10 8FA40098 */  lw         $a0, 0x98($sp)
/* B8914 800B7D14 93A5009F */  lbu        $a1, 0x9f($sp)
/* B8918 800B7D18 8FA60074 */  lw         $a2, 0x74($sp)
/* B891C 800B7D1C 87A70064 */  lh         $a3, 0x64($sp)
/* B8920 800B7D20 0C02DF92 */  jal        func_800B7E48
/* B8924 800B7D24 AFAC0010 */   sw        $t4, 0x10($sp)
/* B8928 800B7D28 10000001 */  b          .L800B7D30
/* B892C 800B7D2C 00000000 */   nop
.L800B7D30:
/* B8930 800B7D30 8FBF0024 */  lw         $ra, 0x24($sp)
/* B8934 800B7D34 8FB0001C */  lw         $s0, 0x1c($sp)
/* B8938 800B7D38 8FB10020 */  lw         $s1, 0x20($sp)
/* B893C 800B7D3C 03E00008 */  jr         $ra
/* B8940 800B7D40 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_800B7D44
/* B8944 800B7D44 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B8948 800B7D48 AFA5000C */  sw         $a1, 0xc($sp)
/* B894C 800B7D4C 8FAE000C */  lw         $t6, 0xc($sp)
/* B8950 800B7D50 95CF0000 */  lhu        $t7, ($t6)
/* B8954 800B7D54 31F87FF0 */  andi       $t8, $t7, 0x7ff0
/* B8958 800B7D58 0018C903 */  sra        $t9, $t8, 4
/* B895C 800B7D5C A7B9000A */  sh         $t9, 0xa($sp)
/* B8960 800B7D60 87A8000A */  lh         $t0, 0xa($sp)
/* B8964 800B7D64 240107FF */  addiu      $at, $zero, 0x7ff
/* B8968 800B7D68 15010019 */  bne        $t0, $at, .L800B7DD0
/* B896C 800B7D6C 00000000 */   nop
/* B8970 800B7D70 A4800000 */  sh         $zero, ($a0)
/* B8974 800B7D74 8FA9000C */  lw         $t1, 0xc($sp)
/* B8978 800B7D78 952A0000 */  lhu        $t2, ($t1)
/* B897C 800B7D7C 314B000F */  andi       $t3, $t2, 0xf
/* B8980 800B7D80 1560000A */  bnez       $t3, .L800B7DAC
/* B8984 800B7D84 00000000 */   nop
/* B8988 800B7D88 952C0002 */  lhu        $t4, 2($t1)
/* B898C 800B7D8C 15800007 */  bnez       $t4, .L800B7DAC
/* B8990 800B7D90 00000000 */   nop
/* B8994 800B7D94 952D0004 */  lhu        $t5, 4($t1)
/* B8998 800B7D98 15A00004 */  bnez       $t5, .L800B7DAC
/* B899C 800B7D9C 00000000 */   nop
/* B89A0 800B7DA0 952E0006 */  lhu        $t6, 6($t1)
/* B89A4 800B7DA4 11C00003 */  beqz       $t6, .L800B7DB4
/* B89A8 800B7DA8 00000000 */   nop
.L800B7DAC:
/* B89AC 800B7DAC 10000002 */  b          .L800B7DB8
/* B89B0 800B7DB0 24060002 */   addiu     $a2, $zero, 2
.L800B7DB4:
/* B89B4 800B7DB4 24060001 */  addiu      $a2, $zero, 1
.L800B7DB8:
/* B89B8 800B7DB8 00061400 */  sll        $v0, $a2, 0x10
/* B89BC 800B7DBC 00027C03 */  sra        $t7, $v0, 0x10
/* B89C0 800B7DC0 1000001F */  b          .L800B7E40
/* B89C4 800B7DC4 01E01025 */   or        $v0, $t7, $zero
/* B89C8 800B7DC8 1000001B */  b          .L800B7E38
/* B89CC 800B7DCC 00000000 */   nop
.L800B7DD0:
/* B89D0 800B7DD0 87B8000A */  lh         $t8, 0xa($sp)
/* B89D4 800B7DD4 1B00000E */  blez       $t8, .L800B7E10
/* B89D8 800B7DD8 00000000 */   nop
/* B89DC 800B7DDC 8FB9000C */  lw         $t9, 0xc($sp)
/* B89E0 800B7DE0 2401800F */  addiu      $at, $zero, -0x7ff1
/* B89E4 800B7DE4 97280000 */  lhu        $t0, ($t9)
/* B89E8 800B7DE8 01015024 */  and        $t2, $t0, $at
/* B89EC 800B7DEC 354B3FF0 */  ori        $t3, $t2, 0x3ff0
/* B89F0 800B7DF0 A72B0000 */  sh         $t3, ($t9)
/* B89F4 800B7DF4 87AC000A */  lh         $t4, 0xa($sp)
/* B89F8 800B7DF8 258DFC02 */  addiu      $t5, $t4, -0x3fe
/* B89FC 800B7DFC A48D0000 */  sh         $t5, ($a0)
/* B8A00 800B7E00 1000000F */  b          .L800B7E40
/* B8A04 800B7E04 2402FFFF */   addiu     $v0, $zero, -1
/* B8A08 800B7E08 1000000B */  b          .L800B7E38
/* B8A0C 800B7E0C 00000000 */   nop
.L800B7E10:
/* B8A10 800B7E10 87A9000A */  lh         $t1, 0xa($sp)
/* B8A14 800B7E14 05210005 */  bgez       $t1, .L800B7E2C
/* B8A18 800B7E18 00000000 */   nop
/* B8A1C 800B7E1C 10000008 */  b          .L800B7E40
/* B8A20 800B7E20 24020002 */   addiu     $v0, $zero, 2
/* B8A24 800B7E24 10000004 */  b          .L800B7E38
/* B8A28 800B7E28 00000000 */   nop
.L800B7E2C:
/* B8A2C 800B7E2C A4800000 */  sh         $zero, ($a0)
/* B8A30 800B7E30 10000003 */  b          .L800B7E40
/* B8A34 800B7E34 00001025 */   or        $v0, $zero, $zero
.L800B7E38:
/* B8A38 800B7E38 10000001 */  b          .L800B7E40
/* B8A3C 800B7E3C 00000000 */   nop
.L800B7E40:
/* B8A40 800B7E40 03E00008 */  jr         $ra
/* B8A44 800B7E44 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800B7E48
/* B8A48 800B7E48 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B8A4C 800B7E4C AFBF001C */  sw         $ra, 0x1c($sp)
/* B8A50 800B7E50 AFA40030 */  sw         $a0, 0x30($sp)
/* B8A54 800B7E54 AFA50034 */  sw         $a1, 0x34($sp)
/* B8A58 800B7E58 AFA60038 */  sw         $a2, 0x38($sp)
/* B8A5C 800B7E5C AFA7003C */  sw         $a3, 0x3c($sp)
/* B8A60 800B7E60 AFB00018 */  sw         $s0, 0x18($sp)
/* B8A64 800B7E64 240E002E */  addiu      $t6, $zero, 0x2e
/* B8A68 800B7E68 A3AE002F */  sb         $t6, 0x2f($sp)
/* B8A6C 800B7E6C 87AF003E */  lh         $t7, 0x3e($sp)
/* B8A70 800B7E70 1DE00006 */  bgtz       $t7, .L800B7E8C
/* B8A74 800B7E74 00000000 */   nop
/* B8A78 800B7E78 3C19800D */  lui        $t9, %hi(D_800D3BF0)
/* B8A7C 800B7E7C 27393BF0 */  addiu      $t9, $t9, %lo(D_800D3BF0)
/* B8A80 800B7E80 24180001 */  addiu      $t8, $zero, 1
/* B8A84 800B7E84 A7B8003E */  sh         $t8, 0x3e($sp)
/* B8A88 800B7E88 AFB90038 */  sw         $t9, 0x38($sp)
.L800B7E8C:
/* B8A8C 800B7E8C 93A80037 */  lbu        $t0, 0x37($sp)
/* B8A90 800B7E90 24010066 */  addiu      $at, $zero, 0x66
/* B8A94 800B7E94 11010010 */  beq        $t0, $at, .L800B7ED8
/* B8A98 800B7E98 00000000 */   nop
/* B8A9C 800B7E9C 24010067 */  addiu      $at, $zero, 0x67
/* B8AA0 800B7EA0 11010004 */  beq        $t0, $at, .L800B7EB4
/* B8AA4 800B7EA4 00000000 */   nop
/* B8AA8 800B7EA8 24010047 */  addiu      $at, $zero, 0x47
/* B8AAC 800B7EAC 150100E0 */  bne        $t0, $at, .L800B8230
/* B8AB0 800B7EB0 00000000 */   nop
.L800B7EB4:
/* B8AB4 800B7EB4 87A90042 */  lh         $t1, 0x42($sp)
/* B8AB8 800B7EB8 2921FFFC */  slti       $at, $t1, -4
/* B8ABC 800B7EBC 142000DC */  bnez       $at, .L800B8230
/* B8AC0 800B7EC0 00000000 */   nop
/* B8AC4 800B7EC4 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8AC8 800B7EC8 8D4B0024 */  lw         $t3, 0x24($t2)
/* B8ACC 800B7ECC 012B082A */  slt        $at, $t1, $t3
/* B8AD0 800B7ED0 102000D7 */  beqz       $at, .L800B8230
/* B8AD4 800B7ED4 00000000 */   nop
.L800B7ED8:
/* B8AD8 800B7ED8 87AC0042 */  lh         $t4, 0x42($sp)
/* B8ADC 800B7EDC 258D0001 */  addiu      $t5, $t4, 1
/* B8AE0 800B7EE0 A7AD0042 */  sh         $t5, 0x42($sp)
/* B8AE4 800B7EE4 93AE0037 */  lbu        $t6, 0x37($sp)
/* B8AE8 800B7EE8 24010066 */  addiu      $at, $zero, 0x66
/* B8AEC 800B7EEC 11C10019 */  beq        $t6, $at, .L800B7F54
/* B8AF0 800B7EF0 00000000 */   nop
/* B8AF4 800B7EF4 8FAF0030 */  lw         $t7, 0x30($sp)
/* B8AF8 800B7EF8 8DF80030 */  lw         $t8, 0x30($t7)
/* B8AFC 800B7EFC 33190008 */  andi       $t9, $t8, 8
/* B8B00 800B7F00 17200009 */  bnez       $t9, .L800B7F28
/* B8B04 800B7F04 00000000 */   nop
/* B8B08 800B7F08 87A8003E */  lh         $t0, 0x3e($sp)
/* B8B0C 800B7F0C 8DEA0024 */  lw         $t2, 0x24($t7)
/* B8B10 800B7F10 010A082A */  slt        $at, $t0, $t2
/* B8B14 800B7F14 10200004 */  beqz       $at, .L800B7F28
/* B8B18 800B7F18 00000000 */   nop
/* B8B1C 800B7F1C 87A9003E */  lh         $t1, 0x3e($sp)
/* B8B20 800B7F20 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8B24 800B7F24 AD690024 */  sw         $t1, 0x24($t3)
.L800B7F28:
/* B8B28 800B7F28 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8B2C 800B7F2C 87AE0042 */  lh         $t6, 0x42($sp)
/* B8B30 800B7F30 8D8D0024 */  lw         $t5, 0x24($t4)
/* B8B34 800B7F34 01AEC023 */  subu       $t8, $t5, $t6
/* B8B38 800B7F38 AD980024 */  sw         $t8, 0x24($t4)
/* B8B3C 800B7F3C 8FB90030 */  lw         $t9, 0x30($sp)
/* B8B40 800B7F40 8F2F0024 */  lw         $t7, 0x24($t9)
/* B8B44 800B7F44 05E10003 */  bgez       $t7, .L800B7F54
/* B8B48 800B7F48 00000000 */   nop
/* B8B4C 800B7F4C 8FA80030 */  lw         $t0, 0x30($sp)
/* B8B50 800B7F50 AD000024 */  sw         $zero, 0x24($t0)
.L800B7F54:
/* B8B54 800B7F54 87AA0042 */  lh         $t2, 0x42($sp)
/* B8B58 800B7F58 1D400049 */  bgtz       $t2, .L800B8080
/* B8B5C 800B7F5C 00000000 */   nop
/* B8B60 800B7F60 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8B64 800B7F64 24090030 */  addiu      $t1, $zero, 0x30
/* B8B68 800B7F68 8D6D0008 */  lw         $t5, 8($t3)
/* B8B6C 800B7F6C 8D6E0014 */  lw         $t6, 0x14($t3)
/* B8B70 800B7F70 01AEC021 */  addu       $t8, $t5, $t6
/* B8B74 800B7F74 A3090000 */  sb         $t1, ($t8)
/* B8B78 800B7F78 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8B7C 800B7F7C 8D990014 */  lw         $t9, 0x14($t4)
/* B8B80 800B7F80 272F0001 */  addiu      $t7, $t9, 1
/* B8B84 800B7F84 AD8F0014 */  sw         $t7, 0x14($t4)
/* B8B88 800B7F88 8FA80030 */  lw         $t0, 0x30($sp)
/* B8B8C 800B7F8C 8D0A0024 */  lw         $t2, 0x24($t0)
/* B8B90 800B7F90 1D400005 */  bgtz       $t2, .L800B7FA8
/* B8B94 800B7F94 00000000 */   nop
/* B8B98 800B7F98 8D0B0030 */  lw         $t3, 0x30($t0)
/* B8B9C 800B7F9C 316D0008 */  andi       $t5, $t3, 8
/* B8BA0 800B7FA0 11A0000B */  beqz       $t5, .L800B7FD0
/* B8BA4 800B7FA4 00000000 */   nop
.L800B7FA8:
/* B8BA8 800B7FA8 8FA90030 */  lw         $t1, 0x30($sp)
/* B8BAC 800B7FAC 93AE002F */  lbu        $t6, 0x2f($sp)
/* B8BB0 800B7FB0 8D380008 */  lw         $t8, 8($t1)
/* B8BB4 800B7FB4 8D390014 */  lw         $t9, 0x14($t1)
/* B8BB8 800B7FB8 03197821 */  addu       $t7, $t8, $t9
/* B8BBC 800B7FBC A1EE0000 */  sb         $t6, ($t7)
/* B8BC0 800B7FC0 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8BC4 800B7FC4 8D8A0014 */  lw         $t2, 0x14($t4)
/* B8BC8 800B7FC8 25480001 */  addiu      $t0, $t2, 1
/* B8BCC 800B7FCC AD880014 */  sw         $t0, 0x14($t4)
.L800B7FD0:
/* B8BD0 800B7FD0 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8BD4 800B7FD4 87A90042 */  lh         $t1, 0x42($sp)
/* B8BD8 800B7FD8 8D6D0024 */  lw         $t5, 0x24($t3)
/* B8BDC 800B7FDC 0009C023 */  negu       $t8, $t1
/* B8BE0 800B7FE0 01B8082A */  slt        $at, $t5, $t8
/* B8BE4 800B7FE4 10200005 */  beqz       $at, .L800B7FFC
/* B8BE8 800B7FE8 00000000 */   nop
/* B8BEC 800B7FEC 8FB90030 */  lw         $t9, 0x30($sp)
/* B8BF0 800B7FF0 8F2E0024 */  lw         $t6, 0x24($t9)
/* B8BF4 800B7FF4 000E7823 */  negu       $t7, $t6
/* B8BF8 800B7FF8 A7AF0042 */  sh         $t7, 0x42($sp)
.L800B7FFC:
/* B8BFC 800B7FFC 87AA0042 */  lh         $t2, 0x42($sp)
/* B8C00 800B8000 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8C04 800B8004 000A4023 */  negu       $t0, $t2
/* B8C08 800B8008 AD880018 */  sw         $t0, 0x18($t4)
/* B8C0C 800B800C 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8C10 800B8010 87AD0042 */  lh         $t5, 0x42($sp)
/* B8C14 800B8014 8D690024 */  lw         $t1, 0x24($t3)
/* B8C18 800B8018 012DC021 */  addu       $t8, $t1, $t5
/* B8C1C 800B801C AD780024 */  sw         $t8, 0x24($t3)
/* B8C20 800B8020 8FB90030 */  lw         $t9, 0x30($sp)
/* B8C24 800B8024 87AF003E */  lh         $t7, 0x3e($sp)
/* B8C28 800B8028 8F2E0024 */  lw         $t6, 0x24($t9)
/* B8C2C 800B802C 01CF082A */  slt        $at, $t6, $t7
/* B8C30 800B8030 10200004 */  beqz       $at, .L800B8044
/* B8C34 800B8034 00000000 */   nop
/* B8C38 800B8038 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8C3C 800B803C 8D480024 */  lw         $t0, 0x24($t2)
/* B8C40 800B8040 A7A8003E */  sh         $t0, 0x3e($sp)
.L800B8044:
/* B8C44 800B8044 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8C48 800B8048 87B0003E */  lh         $s0, 0x3e($sp)
/* B8C4C 800B804C 8FA50038 */  lw         $a1, 0x38($sp)
/* B8C50 800B8050 8D890008 */  lw         $t1, 8($t4)
/* B8C54 800B8054 8D8D0014 */  lw         $t5, 0x14($t4)
/* B8C58 800B8058 AD90001C */  sw         $s0, 0x1c($t4)
/* B8C5C 800B805C 02003025 */  or         $a2, $s0, $zero
/* B8C60 800B8060 0C02B415 */  jal        func_800AD054
/* B8C64 800B8064 012D2021 */   addu      $a0, $t1, $t5
/* B8C68 800B8068 8FB80030 */  lw         $t8, 0x30($sp)
/* B8C6C 800B806C 87B9003E */  lh         $t9, 0x3e($sp)
/* B8C70 800B8070 8F0B0024 */  lw         $t3, 0x24($t8)
/* B8C74 800B8074 01797023 */  subu       $t6, $t3, $t9
/* B8C78 800B8078 1000006B */  b          .L800B8228
/* B8C7C 800B807C AF0E0020 */   sw        $t6, 0x20($t8)
.L800B8080:
/* B8C80 800B8080 87AF003E */  lh         $t7, 0x3e($sp)
/* B8C84 800B8084 87AA0042 */  lh         $t2, 0x42($sp)
/* B8C88 800B8088 01EA082A */  slt        $at, $t7, $t2
/* B8C8C 800B808C 10200028 */  beqz       $at, .L800B8130
/* B8C90 800B8090 00000000 */   nop
/* B8C94 800B8094 8FA80030 */  lw         $t0, 0x30($sp)
/* B8C98 800B8098 8FA50038 */  lw         $a1, 0x38($sp)
/* B8C9C 800B809C 87A6003E */  lh         $a2, 0x3e($sp)
/* B8CA0 800B80A0 8D090008 */  lw         $t1, 8($t0)
/* B8CA4 800B80A4 8D0D0014 */  lw         $t5, 0x14($t0)
/* B8CA8 800B80A8 0C02B415 */  jal        func_800AD054
/* B8CAC 800B80AC 012D2021 */   addu      $a0, $t1, $t5
/* B8CB0 800B80B0 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8CB4 800B80B4 87B9003E */  lh         $t9, 0x3e($sp)
/* B8CB8 800B80B8 8D8B0014 */  lw         $t3, 0x14($t4)
/* B8CBC 800B80BC 01797021 */  addu       $t6, $t3, $t9
/* B8CC0 800B80C0 AD8E0014 */  sw         $t6, 0x14($t4)
/* B8CC4 800B80C4 87B80042 */  lh         $t8, 0x42($sp)
/* B8CC8 800B80C8 87AF003E */  lh         $t7, 0x3e($sp)
/* B8CCC 800B80CC 8FA80030 */  lw         $t0, 0x30($sp)
/* B8CD0 800B80D0 030F5023 */  subu       $t2, $t8, $t7
/* B8CD4 800B80D4 AD0A0018 */  sw         $t2, 0x18($t0)
/* B8CD8 800B80D8 8FA90030 */  lw         $t1, 0x30($sp)
/* B8CDC 800B80DC 8D2D0024 */  lw         $t5, 0x24($t1)
/* B8CE0 800B80E0 1DA00005 */  bgtz       $t5, .L800B80F8
/* B8CE4 800B80E4 00000000 */   nop
/* B8CE8 800B80E8 8D2B0030 */  lw         $t3, 0x30($t1)
/* B8CEC 800B80EC 31790008 */  andi       $t9, $t3, 8
/* B8CF0 800B80F0 1320000B */  beqz       $t9, .L800B8120
/* B8CF4 800B80F4 00000000 */   nop
.L800B80F8:
/* B8CF8 800B80F8 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8CFC 800B80FC 93AE002F */  lbu        $t6, 0x2f($sp)
/* B8D00 800B8100 8D980008 */  lw         $t8, 8($t4)
/* B8D04 800B8104 8D8F0014 */  lw         $t7, 0x14($t4)
/* B8D08 800B8108 030F5021 */  addu       $t2, $t8, $t7
/* B8D0C 800B810C A14E0000 */  sb         $t6, ($t2)
/* B8D10 800B8110 8FA80030 */  lw         $t0, 0x30($sp)
/* B8D14 800B8114 8D0D001C */  lw         $t5, 0x1c($t0)
/* B8D18 800B8118 25A90001 */  addiu      $t1, $t5, 1
/* B8D1C 800B811C AD09001C */  sw         $t1, 0x1c($t0)
.L800B8120:
/* B8D20 800B8120 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8D24 800B8124 8D790024 */  lw         $t9, 0x24($t3)
/* B8D28 800B8128 1000003F */  b          .L800B8228
/* B8D2C 800B812C AD790020 */   sw        $t9, 0x20($t3)
.L800B8130:
/* B8D30 800B8130 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8D34 800B8134 8FA50038 */  lw         $a1, 0x38($sp)
/* B8D38 800B8138 87A60042 */  lh         $a2, 0x42($sp)
/* B8D3C 800B813C 8D980008 */  lw         $t8, 8($t4)
/* B8D40 800B8140 8D8F0014 */  lw         $t7, 0x14($t4)
/* B8D44 800B8144 0C02B415 */  jal        func_800AD054
/* B8D48 800B8148 030F2021 */   addu      $a0, $t8, $t7
/* B8D4C 800B814C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B8D50 800B8150 87AD0042 */  lh         $t5, 0x42($sp)
/* B8D54 800B8154 8DCA0014 */  lw         $t2, 0x14($t6)
/* B8D58 800B8158 014D4821 */  addu       $t1, $t2, $t5
/* B8D5C 800B815C ADC90014 */  sw         $t1, 0x14($t6)
/* B8D60 800B8160 87A8003E */  lh         $t0, 0x3e($sp)
/* B8D64 800B8164 87B90042 */  lh         $t9, 0x42($sp)
/* B8D68 800B8168 01195823 */  subu       $t3, $t0, $t9
/* B8D6C 800B816C A7AB003E */  sh         $t3, 0x3e($sp)
/* B8D70 800B8170 8FAC0030 */  lw         $t4, 0x30($sp)
/* B8D74 800B8174 8D980024 */  lw         $t8, 0x24($t4)
/* B8D78 800B8178 1F000005 */  bgtz       $t8, .L800B8190
/* B8D7C 800B817C 00000000 */   nop
/* B8D80 800B8180 8D8F0030 */  lw         $t7, 0x30($t4)
/* B8D84 800B8184 31EA0008 */  andi       $t2, $t7, 8
/* B8D88 800B8188 1140000B */  beqz       $t2, .L800B81B8
/* B8D8C 800B818C 00000000 */   nop
.L800B8190:
/* B8D90 800B8190 8FA90030 */  lw         $t1, 0x30($sp)
/* B8D94 800B8194 93AD002F */  lbu        $t5, 0x2f($sp)
/* B8D98 800B8198 8D2E0008 */  lw         $t6, 8($t1)
/* B8D9C 800B819C 8D280014 */  lw         $t0, 0x14($t1)
/* B8DA0 800B81A0 01C8C821 */  addu       $t9, $t6, $t0
/* B8DA4 800B81A4 A32D0000 */  sb         $t5, ($t9)
/* B8DA8 800B81A8 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8DAC 800B81AC 8D780014 */  lw         $t8, 0x14($t3)
/* B8DB0 800B81B0 270C0001 */  addiu      $t4, $t8, 1
/* B8DB4 800B81B4 AD6C0014 */  sw         $t4, 0x14($t3)
.L800B81B8:
/* B8DB8 800B81B8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B8DBC 800B81BC 87A9003E */  lh         $t1, 0x3e($sp)
/* B8DC0 800B81C0 8DEA0024 */  lw         $t2, 0x24($t7)
/* B8DC4 800B81C4 0149082A */  slt        $at, $t2, $t1
/* B8DC8 800B81C8 10200004 */  beqz       $at, .L800B81DC
/* B8DCC 800B81CC 00000000 */   nop
/* B8DD0 800B81D0 8FAE0030 */  lw         $t6, 0x30($sp)
/* B8DD4 800B81D4 8DC80024 */  lw         $t0, 0x24($t6)
/* B8DD8 800B81D8 A7A8003E */  sh         $t0, 0x3e($sp)
.L800B81DC:
/* B8DDC 800B81DC 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8DE0 800B81E0 87AC0042 */  lh         $t4, 0x42($sp)
/* B8DE4 800B81E4 8FAB0038 */  lw         $t3, 0x38($sp)
/* B8DE8 800B81E8 8DB90008 */  lw         $t9, 8($t5)
/* B8DEC 800B81EC 8DB80014 */  lw         $t8, 0x14($t5)
/* B8DF0 800B81F0 87A6003E */  lh         $a2, 0x3e($sp)
/* B8DF4 800B81F4 018B2821 */  addu       $a1, $t4, $t3
/* B8DF8 800B81F8 0C02B415 */  jal        func_800AD054
/* B8DFC 800B81FC 03382021 */   addu      $a0, $t9, $t8
/* B8E00 800B8200 8FAF0030 */  lw         $t7, 0x30($sp)
/* B8E04 800B8204 87A9003E */  lh         $t1, 0x3e($sp)
/* B8E08 800B8208 8DEA0014 */  lw         $t2, 0x14($t7)
/* B8E0C 800B820C 01497021 */  addu       $t6, $t2, $t1
/* B8E10 800B8210 ADEE0014 */  sw         $t6, 0x14($t7)
/* B8E14 800B8214 8FA80030 */  lw         $t0, 0x30($sp)
/* B8E18 800B8218 87B9003E */  lh         $t9, 0x3e($sp)
/* B8E1C 800B821C 8D0D0024 */  lw         $t5, 0x24($t0)
/* B8E20 800B8220 01B9C023 */  subu       $t8, $t5, $t9
/* B8E24 800B8224 AD180018 */  sw         $t8, 0x18($t0)
.L800B8228:
/* B8E28 800B8228 100000C4 */  b          .L800B853C
/* B8E2C 800B822C 00000000 */   nop
.L800B8230:
/* B8E30 800B8230 93AC0037 */  lbu        $t4, 0x37($sp)
/* B8E34 800B8234 24010067 */  addiu      $at, $zero, 0x67
/* B8E38 800B8238 11810004 */  beq        $t4, $at, .L800B824C
/* B8E3C 800B823C 00000000 */   nop
/* B8E40 800B8240 24010047 */  addiu      $at, $zero, 0x47
/* B8E44 800B8244 1581001D */  bne        $t4, $at, .L800B82BC
/* B8E48 800B8248 00000000 */   nop
.L800B824C:
/* B8E4C 800B824C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8E50 800B8250 87AB003E */  lh         $t3, 0x3e($sp)
/* B8E54 800B8254 8D490024 */  lw         $t1, 0x24($t2)
/* B8E58 800B8258 0169082A */  slt        $at, $t3, $t1
/* B8E5C 800B825C 10200004 */  beqz       $at, .L800B8270
/* B8E60 800B8260 00000000 */   nop
/* B8E64 800B8264 87AE003E */  lh         $t6, 0x3e($sp)
/* B8E68 800B8268 8FAF0030 */  lw         $t7, 0x30($sp)
/* B8E6C 800B826C ADEE0024 */  sw         $t6, 0x24($t7)
.L800B8270:
/* B8E70 800B8270 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8E74 800B8274 8DB90024 */  lw         $t9, 0x24($t5)
/* B8E78 800B8278 2738FFFF */  addiu      $t8, $t9, -1
/* B8E7C 800B827C ADB80024 */  sw         $t8, 0x24($t5)
/* B8E80 800B8280 8FA80030 */  lw         $t0, 0x30($sp)
/* B8E84 800B8284 8D0C0024 */  lw         $t4, 0x24($t0)
/* B8E88 800B8288 05810003 */  bgez       $t4, .L800B8298
/* B8E8C 800B828C 00000000 */   nop
/* B8E90 800B8290 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8E94 800B8294 AD400024 */  sw         $zero, 0x24($t2)
.L800B8298:
/* B8E98 800B8298 93AB0037 */  lbu        $t3, 0x37($sp)
/* B8E9C 800B829C 24010067 */  addiu      $at, $zero, 0x67
/* B8EA0 800B82A0 15610004 */  bne        $t3, $at, .L800B82B4
/* B8EA4 800B82A4 00000000 */   nop
/* B8EA8 800B82A8 24090065 */  addiu      $t1, $zero, 0x65
/* B8EAC 800B82AC 10000003 */  b          .L800B82BC
/* B8EB0 800B82B0 A3A90037 */   sb        $t1, 0x37($sp)
.L800B82B4:
/* B8EB4 800B82B4 240E0045 */  addiu      $t6, $zero, 0x45
/* B8EB8 800B82B8 A3AE0037 */  sb         $t6, 0x37($sp)
.L800B82BC:
/* B8EBC 800B82BC 8FB80030 */  lw         $t8, 0x30($sp)
/* B8EC0 800B82C0 8FAF0038 */  lw         $t7, 0x38($sp)
/* B8EC4 800B82C4 8F0D0008 */  lw         $t5, 8($t8)
/* B8EC8 800B82C8 8F080014 */  lw         $t0, 0x14($t8)
/* B8ECC 800B82CC 91F90000 */  lbu        $t9, ($t7)
/* B8ED0 800B82D0 01A86021 */  addu       $t4, $t5, $t0
/* B8ED4 800B82D4 A1990000 */  sb         $t9, ($t4)
/* B8ED8 800B82D8 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8EDC 800B82DC 8D4B0014 */  lw         $t3, 0x14($t2)
/* B8EE0 800B82E0 25690001 */  addiu      $t1, $t3, 1
/* B8EE4 800B82E4 AD490014 */  sw         $t1, 0x14($t2)
/* B8EE8 800B82E8 8FAE0038 */  lw         $t6, 0x38($sp)
/* B8EEC 800B82EC 25CF0001 */  addiu      $t7, $t6, 1
/* B8EF0 800B82F0 AFAF0038 */  sw         $t7, 0x38($sp)
/* B8EF4 800B82F4 8FB80030 */  lw         $t8, 0x30($sp)
/* B8EF8 800B82F8 8F0D0024 */  lw         $t5, 0x24($t8)
/* B8EFC 800B82FC 1DA00005 */  bgtz       $t5, .L800B8314
/* B8F00 800B8300 00000000 */   nop
/* B8F04 800B8304 8F080030 */  lw         $t0, 0x30($t8)
/* B8F08 800B8308 31190008 */  andi       $t9, $t0, 8
/* B8F0C 800B830C 1320000B */  beqz       $t9, .L800B833C
/* B8F10 800B8310 00000000 */   nop
.L800B8314:
/* B8F14 800B8314 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8F18 800B8318 93AC002F */  lbu        $t4, 0x2f($sp)
/* B8F1C 800B831C 8D690008 */  lw         $t1, 8($t3)
/* B8F20 800B8320 8D6A0014 */  lw         $t2, 0x14($t3)
/* B8F24 800B8324 012A7021 */  addu       $t6, $t1, $t2
/* B8F28 800B8328 A1CC0000 */  sb         $t4, ($t6)
/* B8F2C 800B832C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B8F30 800B8330 8DED0014 */  lw         $t5, 0x14($t7)
/* B8F34 800B8334 25B80001 */  addiu      $t8, $t5, 1
/* B8F38 800B8338 ADF80014 */  sw         $t8, 0x14($t7)
.L800B833C:
/* B8F3C 800B833C 8FA80030 */  lw         $t0, 0x30($sp)
/* B8F40 800B8340 8D190024 */  lw         $t9, 0x24($t0)
/* B8F44 800B8344 1B20001F */  blez       $t9, .L800B83C4
/* B8F48 800B8348 00000000 */   nop
/* B8F4C 800B834C 87AB003E */  lh         $t3, 0x3e($sp)
/* B8F50 800B8350 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8F54 800B8354 2569FFFF */  addiu      $t1, $t3, -1
/* B8F58 800B8358 A7A9003E */  sh         $t1, 0x3e($sp)
/* B8F5C 800B835C 8D4C0024 */  lw         $t4, 0x24($t2)
/* B8F60 800B8360 00097400 */  sll        $t6, $t1, 0x10
/* B8F64 800B8364 000E6C03 */  sra        $t5, $t6, 0x10
/* B8F68 800B8368 018D082A */  slt        $at, $t4, $t5
/* B8F6C 800B836C 10200004 */  beqz       $at, .L800B8380
/* B8F70 800B8370 00000000 */   nop
/* B8F74 800B8374 8FB80030 */  lw         $t8, 0x30($sp)
/* B8F78 800B8378 8F0F0024 */  lw         $t7, 0x24($t8)
/* B8F7C 800B837C A7AF003E */  sh         $t7, 0x3e($sp)
.L800B8380:
/* B8F80 800B8380 8FA80030 */  lw         $t0, 0x30($sp)
/* B8F84 800B8384 8FA50038 */  lw         $a1, 0x38($sp)
/* B8F88 800B8388 87A6003E */  lh         $a2, 0x3e($sp)
/* B8F8C 800B838C 8D190008 */  lw         $t9, 8($t0)
/* B8F90 800B8390 8D0B0014 */  lw         $t3, 0x14($t0)
/* B8F94 800B8394 0C02B415 */  jal        func_800AD054
/* B8F98 800B8398 032B2021 */   addu      $a0, $t9, $t3
/* B8F9C 800B839C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8FA0 800B83A0 87AE003E */  lh         $t6, 0x3e($sp)
/* B8FA4 800B83A4 8D490014 */  lw         $t1, 0x14($t2)
/* B8FA8 800B83A8 012E6021 */  addu       $t4, $t1, $t6
/* B8FAC 800B83AC AD4C0014 */  sw         $t4, 0x14($t2)
/* B8FB0 800B83B0 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8FB4 800B83B4 87AF003E */  lh         $t7, 0x3e($sp)
/* B8FB8 800B83B8 8DB80024 */  lw         $t8, 0x24($t5)
/* B8FBC 800B83BC 030F4023 */  subu       $t0, $t8, $t7
/* B8FC0 800B83C0 ADA80018 */  sw         $t0, 0x18($t5)
.L800B83C4:
/* B8FC4 800B83C4 8FB90030 */  lw         $t9, 0x30($sp)
/* B8FC8 800B83C8 8F2B0008 */  lw         $t3, 8($t9)
/* B8FCC 800B83CC 8F290014 */  lw         $t1, 0x14($t9)
/* B8FD0 800B83D0 01697021 */  addu       $t6, $t3, $t1
/* B8FD4 800B83D4 AFAE0038 */  sw         $t6, 0x38($sp)
/* B8FD8 800B83D8 93AC0037 */  lbu        $t4, 0x37($sp)
/* B8FDC 800B83DC 8FAA0038 */  lw         $t2, 0x38($sp)
/* B8FE0 800B83E0 A14C0000 */  sb         $t4, ($t2)
/* B8FE4 800B83E4 8FB80038 */  lw         $t8, 0x38($sp)
/* B8FE8 800B83E8 270F0001 */  addiu      $t7, $t8, 1
/* B8FEC 800B83EC AFAF0038 */  sw         $t7, 0x38($sp)
/* B8FF0 800B83F0 87A80042 */  lh         $t0, 0x42($sp)
/* B8FF4 800B83F4 05000008 */  bltz       $t0, .L800B8418
/* B8FF8 800B83F8 00000000 */   nop
/* B8FFC 800B83FC 8FB90038 */  lw         $t9, 0x38($sp)
/* B9000 800B8400 240D002B */  addiu      $t5, $zero, 0x2b
/* B9004 800B8404 A32D0000 */  sb         $t5, ($t9)
/* B9008 800B8408 8FAB0038 */  lw         $t3, 0x38($sp)
/* B900C 800B840C 25690001 */  addiu      $t1, $t3, 1
/* B9010 800B8410 1000000A */  b          .L800B843C
/* B9014 800B8414 AFA90038 */   sw        $t1, 0x38($sp)
.L800B8418:
/* B9018 800B8418 8FAC0038 */  lw         $t4, 0x38($sp)
/* B901C 800B841C 240E002D */  addiu      $t6, $zero, 0x2d
/* B9020 800B8420 A18E0000 */  sb         $t6, ($t4)
/* B9024 800B8424 8FAA0038 */  lw         $t2, 0x38($sp)
/* B9028 800B8428 25580001 */  addiu      $t8, $t2, 1
/* B902C 800B842C AFB80038 */  sw         $t8, 0x38($sp)
/* B9030 800B8430 87AF0042 */  lh         $t7, 0x42($sp)
/* B9034 800B8434 000F4023 */  negu       $t0, $t7
/* B9038 800B8438 A7A80042 */  sh         $t0, 0x42($sp)
.L800B843C:
/* B903C 800B843C 87AD0042 */  lh         $t5, 0x42($sp)
/* B9040 800B8440 29A10064 */  slti       $at, $t5, 0x64
/* B9044 800B8444 14200021 */  bnez       $at, .L800B84CC
/* B9048 800B8448 00000000 */   nop
/* B904C 800B844C 87B90042 */  lh         $t9, 0x42($sp)
/* B9050 800B8450 2B2103E8 */  slti       $at, $t9, 0x3e8
/* B9054 800B8454 1420000F */  bnez       $at, .L800B8494
/* B9058 800B8458 00000000 */   nop
/* B905C 800B845C 87AB0042 */  lh         $t3, 0x42($sp)
/* B9060 800B8460 240103E8 */  addiu      $at, $zero, 0x3e8
/* B9064 800B8464 8FAC0038 */  lw         $t4, 0x38($sp)
/* B9068 800B8468 0161001A */  div        $zero, $t3, $at
/* B906C 800B846C 00004812 */  mflo       $t1
/* B9070 800B8470 252E0030 */  addiu      $t6, $t1, 0x30
/* B9074 800B8474 A18E0000 */  sb         $t6, ($t4)
/* B9078 800B8478 87AF0042 */  lh         $t7, 0x42($sp)
/* B907C 800B847C 8FAA0038 */  lw         $t2, 0x38($sp)
/* B9080 800B8480 01E1001A */  div        $zero, $t7, $at
/* B9084 800B8484 00004010 */  mfhi       $t0
/* B9088 800B8488 25580001 */  addiu      $t8, $t2, 1
/* B908C 800B848C AFB80038 */  sw         $t8, 0x38($sp)
/* B9090 800B8490 A7A80042 */  sh         $t0, 0x42($sp)
.L800B8494:
/* B9094 800B8494 87AD0042 */  lh         $t5, 0x42($sp)
/* B9098 800B8498 24010064 */  addiu      $at, $zero, 0x64
/* B909C 800B849C 8FA90038 */  lw         $t1, 0x38($sp)
/* B90A0 800B84A0 01A1001A */  div        $zero, $t5, $at
/* B90A4 800B84A4 0000C812 */  mflo       $t9
/* B90A8 800B84A8 272B0030 */  addiu      $t3, $t9, 0x30
/* B90AC 800B84AC A12B0000 */  sb         $t3, ($t1)
/* B90B0 800B84B0 87AA0042 */  lh         $t2, 0x42($sp)
/* B90B4 800B84B4 8FAE0038 */  lw         $t6, 0x38($sp)
/* B90B8 800B84B8 0141001A */  div        $zero, $t2, $at
/* B90BC 800B84BC 0000C010 */  mfhi       $t8
/* B90C0 800B84C0 25CC0001 */  addiu      $t4, $t6, 1
/* B90C4 800B84C4 AFAC0038 */  sw         $t4, 0x38($sp)
/* B90C8 800B84C8 A7B80042 */  sh         $t8, 0x42($sp)
.L800B84CC:
/* B90CC 800B84CC 87AF0042 */  lh         $t7, 0x42($sp)
/* B90D0 800B84D0 2401000A */  addiu      $at, $zero, 0xa
/* B90D4 800B84D4 8FB90038 */  lw         $t9, 0x38($sp)
/* B90D8 800B84D8 01E1001A */  div        $zero, $t7, $at
/* B90DC 800B84DC 00004012 */  mflo       $t0
/* B90E0 800B84E0 250D0030 */  addiu      $t5, $t0, 0x30
/* B90E4 800B84E4 A32D0000 */  sb         $t5, ($t9)
/* B90E8 800B84E8 87AE0042 */  lh         $t6, 0x42($sp)
/* B90EC 800B84EC 8FAB0038 */  lw         $t3, 0x38($sp)
/* B90F0 800B84F0 01C1001A */  div        $zero, $t6, $at
/* B90F4 800B84F4 00006010 */  mfhi       $t4
/* B90F8 800B84F8 25690001 */  addiu      $t1, $t3, 1
/* B90FC 800B84FC AFA90038 */  sw         $t1, 0x38($sp)
/* B9100 800B8500 A7AC0042 */  sh         $t4, 0x42($sp)
/* B9104 800B8504 87AA0042 */  lh         $t2, 0x42($sp)
/* B9108 800B8508 8FAF0038 */  lw         $t7, 0x38($sp)
/* B910C 800B850C 25580030 */  addiu      $t8, $t2, 0x30
/* B9110 800B8510 A1F80000 */  sb         $t8, ($t7)
/* B9114 800B8514 8FA80038 */  lw         $t0, 0x38($sp)
/* B9118 800B8518 250D0001 */  addiu      $t5, $t0, 1
/* B911C 800B851C AFAD0038 */  sw         $t5, 0x38($sp)
/* B9120 800B8520 8FB90030 */  lw         $t9, 0x30($sp)
/* B9124 800B8524 8FAC0038 */  lw         $t4, 0x38($sp)
/* B9128 800B8528 8F2B0008 */  lw         $t3, 8($t9)
/* B912C 800B852C 8F290014 */  lw         $t1, 0x14($t9)
/* B9130 800B8530 01697021 */  addu       $t6, $t3, $t1
/* B9134 800B8534 018E5023 */  subu       $t2, $t4, $t6
/* B9138 800B8538 AF2A001C */  sw         $t2, 0x1c($t9)
.L800B853C:
/* B913C 800B853C 8FB80030 */  lw         $t8, 0x30($sp)
/* B9140 800B8540 24010010 */  addiu      $at, $zero, 0x10
/* B9144 800B8544 8F0F0030 */  lw         $t7, 0x30($t8)
/* B9148 800B8548 31E80014 */  andi       $t0, $t7, 0x14
/* B914C 800B854C 15010017 */  bne        $t0, $at, .L800B85AC
/* B9150 800B8550 00000000 */   nop
/* B9154 800B8554 8FAD0030 */  lw         $t5, 0x30($sp)
/* B9158 800B8558 8DAB000C */  lw         $t3, 0xc($t5)
/* B915C 800B855C 8DA90014 */  lw         $t1, 0x14($t5)
/* B9160 800B8560 8DAE0018 */  lw         $t6, 0x18($t5)
/* B9164 800B8564 8DB9001C */  lw         $t9, 0x1c($t5)
/* B9168 800B8568 8DAF0020 */  lw         $t7, 0x20($t5)
/* B916C 800B856C 01696021 */  addu       $t4, $t3, $t1
/* B9170 800B8570 018E5021 */  addu       $t2, $t4, $t6
/* B9174 800B8574 0159C021 */  addu       $t8, $t2, $t9
/* B9178 800B8578 030F4021 */  addu       $t0, $t8, $t7
/* B917C 800B857C AFA80028 */  sw         $t0, 0x28($sp)
/* B9180 800B8580 8FA90030 */  lw         $t1, 0x30($sp)
/* B9184 800B8584 8FAB0028 */  lw         $t3, 0x28($sp)
/* B9188 800B8588 8D2C0028 */  lw         $t4, 0x28($t1)
/* B918C 800B858C 016C082A */  slt        $at, $t3, $t4
/* B9190 800B8590 10200006 */  beqz       $at, .L800B85AC
/* B9194 800B8594 00000000 */   nop
/* B9198 800B8598 8FAE0030 */  lw         $t6, 0x30($sp)
/* B919C 800B859C 8FB90028 */  lw         $t9, 0x28($sp)
/* B91A0 800B85A0 8DCA0028 */  lw         $t2, 0x28($t6)
/* B91A4 800B85A4 01596823 */  subu       $t5, $t2, $t9
/* B91A8 800B85A8 ADCD0010 */  sw         $t5, 0x10($t6)
.L800B85AC:
/* B91AC 800B85AC 10000001 */  b          .L800B85B4
/* B91B0 800B85B0 00000000 */   nop
.L800B85B4:
/* B91B4 800B85B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B91B8 800B85B8 8FB00018 */  lw         $s0, 0x18($sp)
/* B91BC 800B85BC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B91C0 800B85C0 03E00008 */  jr         $ra
/* B91C4 800B85C4 00000000 */   nop
/* B91C8 800B85C8 00000000 */  nop
/* B91CC 800B85CC 00000000 */  nop
