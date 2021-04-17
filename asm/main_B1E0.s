.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000A5E0
/* B1E0 8000A5E0 3C0E8014 */  lui        $t6, %hi(D_8013B650)
/* B1E4 8000A5E4 8DCEB650 */  lw         $t6, %lo(D_8013B650)($t6)
/* B1E8 8000A5E8 C4840000 */  lwc1       $f4, ($a0)
/* B1EC 8000A5EC 3C198014 */  lui        $t9, 0x8014
/* B1F0 8000A5F0 448E3000 */  mtc1       $t6, $f6
/* B1F4 8000A5F4 00000000 */  nop
/* B1F8 8000A5F8 46803220 */  cvt.s.w    $f8, $f6
/* B1FC 8000A5FC 46082283 */  div.s      $f10, $f4, $f8
/* B200 8000A600 4600540D */  trunc.w.s  $f16, $f10
/* B204 8000A604 44188000 */  mfc1       $t8, $f16
/* B208 8000A608 00000000 */  nop
/* B20C 8000A60C ACB80000 */  sw         $t8, ($a1)
/* B210 8000A610 8F39B650 */  lw         $t9, -0x49b0($t9)
/* B214 8000A614 C4920004 */  lwc1       $f18, 4($a0)
/* B218 8000A618 44993000 */  mtc1       $t9, $f6
/* B21C 8000A61C 00000000 */  nop
/* B220 8000A620 46803120 */  cvt.s.w    $f4, $f6
/* B224 8000A624 46049203 */  div.s      $f8, $f18, $f4
/* B228 8000A628 4600428D */  trunc.w.s  $f10, $f8
/* B22C 8000A62C 44095000 */  mfc1       $t1, $f10
/* B230 8000A630 00000000 */  nop
/* B234 8000A634 ACA90004 */  sw         $t1, 4($a1)
/* B238 8000A638 03E00008 */  jr         $ra
/* B23C 8000A63C 00000000 */   nop

glabel func_8000A640
/* B240 8000A640 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B244 8000A644 3C0E8014 */  lui        $t6, %hi(D_8013B724)
/* B248 8000A648 8DCEB724 */  lw         $t6, %lo(D_8013B724)($t6)
/* B24C 8000A64C 3C198014 */  lui        $t9, %hi(D_8013B720)
/* B250 8000A650 8F39B720 */  lw         $t9, %lo(D_8013B720)($t9)
/* B254 8000A654 00AE7823 */  subu       $t7, $a1, $t6
/* B258 8000A658 25F8000F */  addiu      $t8, $t7, 0xf
/* B25C 8000A65C 00185140 */  sll        $t2, $t8, 5
/* B260 8000A660 00994023 */  subu       $t0, $a0, $t9
/* B264 8000A664 2509000F */  addiu      $t1, $t0, 0xf
/* B268 8000A668 01585023 */  subu       $t2, $t2, $t8
/* B26C 8000A66C 3C0C8014 */  lui        $t4, %hi(D_8013B730)
/* B270 8000A670 258CB730 */  addiu      $t4, $t4, %lo(D_8013B730)
/* B274 8000A674 01495821 */  addu       $t3, $t2, $t1
/* B278 8000A678 AFB80004 */  sw         $t8, 4($sp)
/* B27C 8000A67C AFA90008 */  sw         $t1, 8($sp)
/* B280 8000A680 016C6821 */  addu       $t5, $t3, $t4
/* B284 8000A684 91AE0000 */  lbu        $t6, ($t5)
/* B288 8000A688 0149C821 */  addu       $t9, $t2, $t1
/* B28C 8000A68C 032C4021 */  addu       $t0, $t9, $t4
/* B290 8000A690 35CF0001 */  ori        $t7, $t6, 1
/* B294 8000A694 04800053 */  bltz       $a0, .L8000A7E4
/* B298 8000A698 A10F0000 */   sb        $t7, ($t0)
/* B29C 8000A69C 04A00051 */  bltz       $a1, .L8000A7E4
/* B2A0 8000A6A0 00000000 */   nop
/* B2A4 8000A6A4 3C188014 */  lui        $t8, %hi(D_8013B670)
/* B2A8 8000A6A8 8F18B670 */  lw         $t8, %lo(D_8013B670)($t8)
/* B2AC 8000A6AC 0098082A */  slt        $at, $a0, $t8
/* B2B0 8000A6B0 1020004C */  beqz       $at, .L8000A7E4
/* B2B4 8000A6B4 00000000 */   nop
/* B2B8 8000A6B8 3C0B8014 */  lui        $t3, %hi(D_8013B674)
/* B2BC 8000A6BC 8D6BB674 */  lw         $t3, %lo(D_8013B674)($t3)
/* B2C0 8000A6C0 00AB082A */  slt        $at, $a1, $t3
/* B2C4 8000A6C4 10200047 */  beqz       $at, .L8000A7E4
/* B2C8 8000A6C8 00000000 */   nop
/* B2CC 8000A6CC 00B80019 */  multu      $a1, $t8
/* B2D0 8000A6D0 3C0A8014 */  lui        $t2, %hi(D_8013B678)
/* B2D4 8000A6D4 8D4AB678 */  lw         $t2, %lo(D_8013B678)($t2)
/* B2D8 8000A6D8 3C0C8014 */  lui        $t4, %hi(D_8013B664)
/* B2DC 8000A6DC 8D8CB664 */  lw         $t4, %lo(D_8013B664)($t4)
/* B2E0 8000A6E0 3C188014 */  lui        $t8, %hi(D_8013B668)
/* B2E4 8000A6E4 8F18B668 */  lw         $t8, %lo(D_8013B668)($t8)
/* B2E8 8000A6E8 00006812 */  mflo       $t5
/* B2EC 8000A6EC 01A47021 */  addu       $t6, $t5, $a0
/* B2F0 8000A6F0 01CA4821 */  addu       $t1, $t6, $t2
/* B2F4 8000A6F4 0009C840 */  sll        $t9, $t1, 1
/* B2F8 8000A6F8 01997821 */  addu       $t7, $t4, $t9
/* B2FC 8000A6FC 95E80000 */  lhu        $t0, ($t7)
/* B300 8000A700 000858C0 */  sll        $t3, $t0, 3
/* B304 8000A704 030B6821 */  addu       $t5, $t8, $t3
/* B308 8000A708 AFA8000C */  sw         $t0, 0xc($sp)
/* B30C 8000A70C 81AE0007 */  lb         $t6, 7($t5)
/* B310 8000A710 31CA0004 */  andi       $t2, $t6, 4
/* B314 8000A714 11400006 */  beqz       $t2, .L8000A730
/* B318 8000A718 A3AE0003 */   sb        $t6, 3($sp)
/* B31C 8000A71C 3C09800D */  lui        $t1, %hi(D_800D63DC)
/* B320 8000A720 8D2963DC */  lw         $t1, %lo(D_800D63DC)($t1)
/* B324 8000A724 3C01800D */  lui        $at, %hi(D_800D63DC)
/* B328 8000A728 352C0008 */  ori        $t4, $t1, 8
/* B32C 8000A72C AC2C63DC */  sw         $t4, %lo(D_800D63DC)($at)
.L8000A730:
/* B330 8000A730 83B90003 */  lb         $t9, 3($sp)
/* B334 8000A734 332F0008 */  andi       $t7, $t9, 8
/* B338 8000A738 11E00006 */  beqz       $t7, .L8000A754
/* B33C 8000A73C 00000000 */   nop
/* B340 8000A740 3C08800D */  lui        $t0, %hi(D_800D63DC)
/* B344 8000A744 8D0863DC */  lw         $t0, %lo(D_800D63DC)($t0)
/* B348 8000A748 3C01800D */  lui        $at, %hi(D_800D63DC)
/* B34C 8000A74C 35180010 */  ori        $t8, $t0, 0x10
/* B350 8000A750 AC3863DC */  sw         $t8, %lo(D_800D63DC)($at)
.L8000A754:
/* B354 8000A754 3C0B800D */  lui        $t3, %hi(D_800D63DC)
/* B358 8000A758 8D6B63DC */  lw         $t3, %lo(D_800D63DC)($t3)
/* B35C 8000A75C 316D0008 */  andi       $t5, $t3, 8
/* B360 8000A760 11A0000E */  beqz       $t5, .L8000A79C
/* B364 8000A764 00000000 */   nop
/* B368 8000A768 8FAE0004 */  lw         $t6, 4($sp)
/* B36C 8000A76C 8FA90008 */  lw         $t1, 8($sp)
/* B370 8000A770 3C198014 */  lui        $t9, %hi(D_8013B730)
/* B374 8000A774 000E5140 */  sll        $t2, $t6, 5
/* B378 8000A778 014E5023 */  subu       $t2, $t2, $t6
/* B37C 8000A77C 2739B730 */  addiu      $t9, $t9, %lo(D_8013B730)
/* B380 8000A780 01496021 */  addu       $t4, $t2, $t1
/* B384 8000A784 01997821 */  addu       $t7, $t4, $t9
/* B388 8000A788 91E80000 */  lbu        $t0, ($t7)
/* B38C 8000A78C 01495821 */  addu       $t3, $t2, $t1
/* B390 8000A790 01796821 */  addu       $t5, $t3, $t9
/* B394 8000A794 35180008 */  ori        $t8, $t0, 8
/* B398 8000A798 A1B80000 */  sb         $t8, ($t5)
.L8000A79C:
/* B39C 8000A79C 3C0E800D */  lui        $t6, %hi(D_800D63DC)
/* B3A0 8000A7A0 8DCE63DC */  lw         $t6, %lo(D_800D63DC)($t6)
/* B3A4 8000A7A4 31CC0010 */  andi       $t4, $t6, 0x10
/* B3A8 8000A7A8 1180000E */  beqz       $t4, .L8000A7E4
/* B3AC 8000A7AC 00000000 */   nop
/* B3B0 8000A7B0 8FAF0004 */  lw         $t7, 4($sp)
/* B3B4 8000A7B4 8FAA0008 */  lw         $t2, 8($sp)
/* B3B8 8000A7B8 3C0B8014 */  lui        $t3, %hi(D_8013B730)
/* B3BC 8000A7BC 000F4140 */  sll        $t0, $t7, 5
/* B3C0 8000A7C0 010F4023 */  subu       $t0, $t0, $t7
/* B3C4 8000A7C4 256BB730 */  addiu      $t3, $t3, %lo(D_8013B730)
/* B3C8 8000A7C8 010A4821 */  addu       $t1, $t0, $t2
/* B3CC 8000A7CC 012BC821 */  addu       $t9, $t1, $t3
/* B3D0 8000A7D0 93380000 */  lbu        $t8, ($t9)
/* B3D4 8000A7D4 010A7021 */  addu       $t6, $t0, $t2
/* B3D8 8000A7D8 01CB6021 */  addu       $t4, $t6, $t3
/* B3DC 8000A7DC 370D0010 */  ori        $t5, $t8, 0x10
/* B3E0 8000A7E0 A18D0000 */  sb         $t5, ($t4)
.L8000A7E4:
/* B3E4 8000A7E4 3C0F8014 */  lui        $t7, %hi(D_8013B728)
/* B3E8 8000A7E8 8DEFB728 */  lw         $t7, %lo(D_8013B728)($t7)
/* B3EC 8000A7EC 3C018014 */  lui        $at, %hi(D_8013B728)
/* B3F0 8000A7F0 25E90001 */  addiu      $t1, $t7, 1
/* B3F4 8000A7F4 AC29B728 */  sw         $t1, %lo(D_8013B728)($at)
/* B3F8 8000A7F8 03E00008 */  jr         $ra
/* B3FC 8000A7FC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8000A800
/* B400 8000A800 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B404 8000A804 3C0E8014 */  lui        $t6, %hi(D_8013B724)
/* B408 8000A808 8DCEB724 */  lw         $t6, %lo(D_8013B724)($t6)
/* B40C 8000A80C 3C198014 */  lui        $t9, %hi(D_8013B720)
/* B410 8000A810 8F39B720 */  lw         $t9, %lo(D_8013B720)($t9)
/* B414 8000A814 00AE7823 */  subu       $t7, $a1, $t6
/* B418 8000A818 25F8000F */  addiu      $t8, $t7, 0xf
/* B41C 8000A81C 00185140 */  sll        $t2, $t8, 5
/* B420 8000A820 00994023 */  subu       $t0, $a0, $t9
/* B424 8000A824 2509000F */  addiu      $t1, $t0, 0xf
/* B428 8000A828 01585023 */  subu       $t2, $t2, $t8
/* B42C 8000A82C 3C0C8014 */  lui        $t4, %hi(D_8013B730)
/* B430 8000A830 258CB730 */  addiu      $t4, $t4, %lo(D_8013B730)
/* B434 8000A834 01495821 */  addu       $t3, $t2, $t1
/* B438 8000A838 AFB80004 */  sw         $t8, 4($sp)
/* B43C 8000A83C AFA90008 */  sw         $t1, 8($sp)
/* B440 8000A840 016C6821 */  addu       $t5, $t3, $t4
/* B444 8000A844 91AE0000 */  lbu        $t6, ($t5)
/* B448 8000A848 0149C821 */  addu       $t9, $t2, $t1
/* B44C 8000A84C 032C4021 */  addu       $t0, $t9, $t4
/* B450 8000A850 35CF0002 */  ori        $t7, $t6, 2
/* B454 8000A854 04800053 */  bltz       $a0, .L8000A9A4
/* B458 8000A858 A10F0000 */   sb        $t7, ($t0)
/* B45C 8000A85C 04A00051 */  bltz       $a1, .L8000A9A4
/* B460 8000A860 00000000 */   nop
/* B464 8000A864 3C188014 */  lui        $t8, %hi(D_8013B670)
/* B468 8000A868 8F18B670 */  lw         $t8, %lo(D_8013B670)($t8)
/* B46C 8000A86C 0098082A */  slt        $at, $a0, $t8
/* B470 8000A870 1020004C */  beqz       $at, .L8000A9A4
/* B474 8000A874 00000000 */   nop
/* B478 8000A878 3C0B8014 */  lui        $t3, %hi(D_8013B674)
/* B47C 8000A87C 8D6BB674 */  lw         $t3, %lo(D_8013B674)($t3)
/* B480 8000A880 00AB082A */  slt        $at, $a1, $t3
/* B484 8000A884 10200047 */  beqz       $at, .L8000A9A4
/* B488 8000A888 00000000 */   nop
/* B48C 8000A88C 00B80019 */  multu      $a1, $t8
/* B490 8000A890 3C0A8014 */  lui        $t2, %hi(D_8013B678)
/* B494 8000A894 8D4AB678 */  lw         $t2, %lo(D_8013B678)($t2)
/* B498 8000A898 3C0C8014 */  lui        $t4, %hi(D_8013B664)
/* B49C 8000A89C 8D8CB664 */  lw         $t4, %lo(D_8013B664)($t4)
/* B4A0 8000A8A0 3C188014 */  lui        $t8, %hi(D_8013B668)
/* B4A4 8000A8A4 8F18B668 */  lw         $t8, %lo(D_8013B668)($t8)
/* B4A8 8000A8A8 00006812 */  mflo       $t5
/* B4AC 8000A8AC 01A47021 */  addu       $t6, $t5, $a0
/* B4B0 8000A8B0 01CA4821 */  addu       $t1, $t6, $t2
/* B4B4 8000A8B4 0009C840 */  sll        $t9, $t1, 1
/* B4B8 8000A8B8 01997821 */  addu       $t7, $t4, $t9
/* B4BC 8000A8BC 95E80000 */  lhu        $t0, ($t7)
/* B4C0 8000A8C0 000858C0 */  sll        $t3, $t0, 3
/* B4C4 8000A8C4 030B6821 */  addu       $t5, $t8, $t3
/* B4C8 8000A8C8 AFA8000C */  sw         $t0, 0xc($sp)
/* B4CC 8000A8CC 81AE0007 */  lb         $t6, 7($t5)
/* B4D0 8000A8D0 31CA0004 */  andi       $t2, $t6, 4
/* B4D4 8000A8D4 11400006 */  beqz       $t2, .L8000A8F0
/* B4D8 8000A8D8 A3AE0003 */   sb        $t6, 3($sp)
/* B4DC 8000A8DC 3C09800D */  lui        $t1, %hi(D_800D63DC)
/* B4E0 8000A8E0 8D2963DC */  lw         $t1, %lo(D_800D63DC)($t1)
/* B4E4 8000A8E4 3C01800D */  lui        $at, %hi(D_800D63DC)
/* B4E8 8000A8E8 352C0008 */  ori        $t4, $t1, 8
/* B4EC 8000A8EC AC2C63DC */  sw         $t4, %lo(D_800D63DC)($at)
.L8000A8F0:
/* B4F0 8000A8F0 83B90003 */  lb         $t9, 3($sp)
/* B4F4 8000A8F4 332F0008 */  andi       $t7, $t9, 8
/* B4F8 8000A8F8 11E00006 */  beqz       $t7, .L8000A914
/* B4FC 8000A8FC 00000000 */   nop
/* B500 8000A900 3C08800D */  lui        $t0, %hi(D_800D63DC)
/* B504 8000A904 8D0863DC */  lw         $t0, %lo(D_800D63DC)($t0)
/* B508 8000A908 3C01800D */  lui        $at, %hi(D_800D63DC)
/* B50C 8000A90C 35180010 */  ori        $t8, $t0, 0x10
/* B510 8000A910 AC3863DC */  sw         $t8, %lo(D_800D63DC)($at)
.L8000A914:
/* B514 8000A914 3C0B800D */  lui        $t3, %hi(D_800D63DC)
/* B518 8000A918 8D6B63DC */  lw         $t3, %lo(D_800D63DC)($t3)
/* B51C 8000A91C 316D0008 */  andi       $t5, $t3, 8
/* B520 8000A920 11A0000E */  beqz       $t5, .L8000A95C
/* B524 8000A924 00000000 */   nop
/* B528 8000A928 8FAE0004 */  lw         $t6, 4($sp)
/* B52C 8000A92C 8FA90008 */  lw         $t1, 8($sp)
/* B530 8000A930 3C198014 */  lui        $t9, %hi(D_8013B730)
/* B534 8000A934 000E5140 */  sll        $t2, $t6, 5
/* B538 8000A938 014E5023 */  subu       $t2, $t2, $t6
/* B53C 8000A93C 2739B730 */  addiu      $t9, $t9, %lo(D_8013B730)
/* B540 8000A940 01496021 */  addu       $t4, $t2, $t1
/* B544 8000A944 01997821 */  addu       $t7, $t4, $t9
/* B548 8000A948 91E80000 */  lbu        $t0, ($t7)
/* B54C 8000A94C 01495821 */  addu       $t3, $t2, $t1
/* B550 8000A950 01796821 */  addu       $t5, $t3, $t9
/* B554 8000A954 35180008 */  ori        $t8, $t0, 8
/* B558 8000A958 A1B80000 */  sb         $t8, ($t5)
.L8000A95C:
/* B55C 8000A95C 3C0E800D */  lui        $t6, %hi(D_800D63DC)
/* B560 8000A960 8DCE63DC */  lw         $t6, %lo(D_800D63DC)($t6)
/* B564 8000A964 31CC0010 */  andi       $t4, $t6, 0x10
/* B568 8000A968 1180000E */  beqz       $t4, .L8000A9A4
/* B56C 8000A96C 00000000 */   nop
/* B570 8000A970 8FAF0004 */  lw         $t7, 4($sp)
/* B574 8000A974 8FAA0008 */  lw         $t2, 8($sp)
/* B578 8000A978 3C0B8014 */  lui        $t3, %hi(D_8013B730)
/* B57C 8000A97C 000F4140 */  sll        $t0, $t7, 5
/* B580 8000A980 010F4023 */  subu       $t0, $t0, $t7
/* B584 8000A984 256BB730 */  addiu      $t3, $t3, %lo(D_8013B730)
/* B588 8000A988 010A4821 */  addu       $t1, $t0, $t2
/* B58C 8000A98C 012BC821 */  addu       $t9, $t1, $t3
/* B590 8000A990 93380000 */  lbu        $t8, ($t9)
/* B594 8000A994 010A7021 */  addu       $t6, $t0, $t2
/* B598 8000A998 01CB6021 */  addu       $t4, $t6, $t3
/* B59C 8000A99C 370D0010 */  ori        $t5, $t8, 0x10
/* B5A0 8000A9A0 A18D0000 */  sb         $t5, ($t4)
.L8000A9A4:
/* B5A4 8000A9A4 3C0F8014 */  lui        $t7, %hi(D_8013B728)
/* B5A8 8000A9A8 8DEFB728 */  lw         $t7, %lo(D_8013B728)($t7)
/* B5AC 8000A9AC 3C018014 */  lui        $at, %hi(D_8013B728)
/* B5B0 8000A9B0 25E90001 */  addiu      $t1, $t7, 1
/* B5B4 8000A9B4 AC29B728 */  sw         $t1, %lo(D_8013B728)($at)
/* B5B8 8000A9B8 03E00008 */  jr         $ra
/* B5BC 8000A9BC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8000A9C0
/* B5C0 8000A9C0 3C0E8014 */  lui        $t6, %hi(D_8013B724)
/* B5C4 8000A9C4 8DCEB724 */  lw         $t6, %lo(D_8013B724)($t6)
/* B5C8 8000A9C8 3C198014 */  lui        $t9, %hi(D_8013B720)
/* B5CC 8000A9CC 8F39B720 */  lw         $t9, %lo(D_8013B720)($t9)
/* B5D0 8000A9D0 00AE7823 */  subu       $t7, $a1, $t6
/* B5D4 8000A9D4 000FC140 */  sll        $t8, $t7, 5
/* B5D8 8000A9D8 030FC023 */  subu       $t8, $t8, $t7
/* B5DC 8000A9DC 3C0A8014 */  lui        $t2, %hi(D_8013B730)
/* B5E0 8000A9E0 00994023 */  subu       $t0, $a0, $t9
/* B5E4 8000A9E4 03084821 */  addu       $t1, $t8, $t0
/* B5E8 8000A9E8 254AB730 */  addiu      $t2, $t2, %lo(D_8013B730)
/* B5EC 8000A9EC 012A5821 */  addu       $t3, $t1, $t2
/* B5F0 8000A9F0 916C01E0 */  lbu        $t4, 0x1e0($t3)
/* B5F4 8000A9F4 00AE7823 */  subu       $t7, $a1, $t6
/* B5F8 8000A9F8 000FC140 */  sll        $t8, $t7, 5
/* B5FC 8000A9FC 030FC023 */  subu       $t8, $t8, $t7
/* B600 8000AA00 00994023 */  subu       $t0, $a0, $t9
/* B604 8000AA04 03084821 */  addu       $t1, $t8, $t0
/* B608 8000AA08 358D0004 */  ori        $t5, $t4, 4
/* B60C 8000AA0C 012A5821 */  addu       $t3, $t1, $t2
/* B610 8000AA10 A16D01E0 */  sb         $t5, 0x1e0($t3)
/* B614 8000AA14 3C0C8014 */  lui        $t4, %hi(D_8013B728)
/* B618 8000AA18 8D8CB728 */  lw         $t4, %lo(D_8013B728)($t4)
/* B61C 8000AA1C 3C018014 */  lui        $at, %hi(D_8013B728)
/* B620 8000AA20 258E0001 */  addiu      $t6, $t4, 1
/* B624 8000AA24 AC2EB728 */  sw         $t6, %lo(D_8013B728)($at)
/* B628 8000AA28 03E00008 */  jr         $ra
/* B62C 8000AA2C 00000000 */   nop

glabel func_8000AA30
/* B630 8000AA30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B634 8000AA34 AFBF0014 */  sw         $ra, 0x14($sp)
/* B638 8000AA38 240E000A */  addiu      $t6, $zero, 0xa
/* B63C 8000AA3C AFAE0018 */  sw         $t6, 0x18($sp)
.L8000AA40:
/* B640 8000AA40 240F000A */  addiu      $t7, $zero, 0xa
/* B644 8000AA44 AFAF001C */  sw         $t7, 0x1c($sp)
.L8000AA48:
/* B648 8000AA48 8FB80018 */  lw         $t8, 0x18($sp)
/* B64C 8000AA4C 8FA8001C */  lw         $t0, 0x1c($sp)
/* B650 8000AA50 3C058014 */  lui        $a1, 0x8014
/* B654 8000AA54 0018C940 */  sll        $t9, $t8, 5
/* B658 8000AA58 0338C823 */  subu       $t9, $t9, $t8
/* B65C 8000AA5C 03284821 */  addu       $t1, $t9, $t0
/* B660 8000AA60 00A92821 */  addu       $a1, $a1, $t1
/* B664 8000AA64 3C04800E */  lui        $a0, %hi(D_800DBAA0)
/* B668 8000AA68 2484BAA0 */  addiu      $a0, $a0, %lo(D_800DBAA0)
/* B66C 8000AA6C 0C0334EB */  jal        func_800CD3AC
/* B670 8000AA70 90A5B730 */   lbu       $a1, -0x48d0($a1)
/* B674 8000AA74 8FAA001C */  lw         $t2, 0x1c($sp)
/* B678 8000AA78 254B0001 */  addiu      $t3, $t2, 1
/* B67C 8000AA7C 29610015 */  slti       $at, $t3, 0x15
/* B680 8000AA80 1420FFF1 */  bnez       $at, .L8000AA48
/* B684 8000AA84 AFAB001C */   sw        $t3, 0x1c($sp)
/* B688 8000AA88 3C04800E */  lui        $a0, %hi(D_800DBAA8)
/* B68C 8000AA8C 0C0334EB */  jal        func_800CD3AC
/* B690 8000AA90 2484BAA8 */   addiu     $a0, $a0, %lo(D_800DBAA8)
/* B694 8000AA94 8FAC0018 */  lw         $t4, 0x18($sp)
/* B698 8000AA98 258D0001 */  addiu      $t5, $t4, 1
/* B69C 8000AA9C 29A10015 */  slti       $at, $t5, 0x15
/* B6A0 8000AAA0 1420FFE7 */  bnez       $at, .L8000AA40
/* B6A4 8000AAA4 AFAD0018 */   sw        $t5, 0x18($sp)
/* B6A8 8000AAA8 3C04800E */  lui        $a0, %hi(D_800DBAAC)
/* B6AC 8000AAAC 0C0334EB */  jal        func_800CD3AC
/* B6B0 8000AAB0 2484BAAC */   addiu     $a0, $a0, %lo(D_800DBAAC)
/* B6B4 8000AAB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6B8 8000AAB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6BC 8000AABC 03E00008 */  jr         $ra
/* B6C0 8000AAC0 00000000 */   nop

glabel func_8000AAC4
/* B6C4 8000AAC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6C8 8000AAC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6CC 8000AACC AFA60030 */  sw         $a2, 0x30($sp)
/* B6D0 8000AAD0 E7AC0028 */  swc1       $f12, 0x28($sp)
/* B6D4 8000AAD4 E7AE002C */  swc1       $f14, 0x2c($sp)
/* B6D8 8000AAD8 3C0E8014 */  lui        $t6, %hi(D_8013B654)
/* B6DC 8000AADC 8DCEB654 */  lw         $t6, %lo(D_8013B654)($t6)
/* B6E0 8000AAE0 3C0F8014 */  lui        $t7, %hi(D_8013B650)
/* B6E4 8000AAE4 8DEFB650 */  lw         $t7, %lo(D_8013B650)($t7)
/* B6E8 8000AAE8 448E2000 */  mtc1       $t6, $f4
/* B6EC 8000AAEC C7A80028 */  lwc1       $f8, 0x28($sp)
/* B6F0 8000AAF0 448F8000 */  mtc1       $t7, $f16
/* B6F4 8000AAF4 468021A0 */  cvt.s.w    $f6, $f4
/* B6F8 8000AAF8 8FAC0030 */  lw         $t4, 0x30($sp)
/* B6FC 8000AAFC 24010001 */  addiu      $at, $zero, 1
/* B700 8000AB00 468084A0 */  cvt.s.w    $f18, $f16
/* B704 8000AB04 46083280 */  add.s      $f10, $f6, $f8
/* B708 8000AB08 46125103 */  div.s      $f4, $f10, $f18
/* B70C 8000AB0C 46064281 */  sub.s      $f10, $f8, $f6
/* B710 8000AB10 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* B714 8000AB14 46124183 */  div.s      $f6, $f8, $f18
/* B718 8000AB18 4600240D */  trunc.w.s  $f16, $f4
/* B71C 8000AB1C 44198000 */  mfc1       $t9, $f16
/* B720 8000AB20 00000000 */  nop
/* B724 8000AB24 AFB90024 */  sw         $t9, 0x24($sp)
/* B728 8000AB28 46125103 */  div.s      $f4, $f10, $f18
/* B72C 8000AB2C 4600328D */  trunc.w.s  $f10, $f6
/* B730 8000AB30 440B5000 */  mfc1       $t3, $f10
/* B734 8000AB34 00000000 */  nop
/* B738 8000AB38 AFAB001C */  sw         $t3, 0x1c($sp)
/* B73C 8000AB3C 4600240D */  trunc.w.s  $f16, $f4
/* B740 8000AB40 44098000 */  mfc1       $t1, $f16
/* B744 8000AB44 11810004 */  beq        $t4, $at, .L8000AB58
/* B748 8000AB48 AFA90020 */   sw        $t1, 0x20($sp)
/* B74C 8000AB4C AFA90018 */  sw         $t1, 0x18($sp)
/* B750 8000AB50 AFB90020 */  sw         $t9, 0x20($sp)
/* B754 8000AB54 AFA90024 */  sw         $t1, 0x24($sp)
.L8000AB58:
/* B758 8000AB58 8FA40024 */  lw         $a0, 0x24($sp)
/* B75C 8000AB5C 0C002990 */  jal        func_8000A640
/* B760 8000AB60 8FA5001C */   lw        $a1, 0x1c($sp)
/* B764 8000AB64 8FA40020 */  lw         $a0, 0x20($sp)
/* B768 8000AB68 0C002990 */  jal        func_8000A640
/* B76C 8000AB6C 8FA5001C */   lw        $a1, 0x1c($sp)
/* B770 8000AB70 8FBF0014 */  lw         $ra, 0x14($sp)
/* B774 8000AB74 27BD0028 */  addiu      $sp, $sp, 0x28
/* B778 8000AB78 03E00008 */  jr         $ra
/* B77C 8000AB7C 00000000 */   nop

glabel func_8000AB80
/* B780 8000AB80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B784 8000AB84 AFBF0014 */  sw         $ra, 0x14($sp)
/* B788 8000AB88 AFA60030 */  sw         $a2, 0x30($sp)
/* B78C 8000AB8C E7AC0028 */  swc1       $f12, 0x28($sp)
/* B790 8000AB90 E7AE002C */  swc1       $f14, 0x2c($sp)
/* B794 8000AB94 3C0E8014 */  lui        $t6, %hi(D_8013B654)
/* B798 8000AB98 8DCEB654 */  lw         $t6, %lo(D_8013B654)($t6)
/* B79C 8000AB9C 3C0F8014 */  lui        $t7, %hi(D_8013B650)
/* B7A0 8000ABA0 8DEFB650 */  lw         $t7, %lo(D_8013B650)($t7)
/* B7A4 8000ABA4 448E2000 */  mtc1       $t6, $f4
/* B7A8 8000ABA8 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* B7AC 8000ABAC 448F8000 */  mtc1       $t7, $f16
/* B7B0 8000ABB0 468021A0 */  cvt.s.w    $f6, $f4
/* B7B4 8000ABB4 8FAC0030 */  lw         $t4, 0x30($sp)
/* B7B8 8000ABB8 24010001 */  addiu      $at, $zero, 1
/* B7BC 8000ABBC 468084A0 */  cvt.s.w    $f18, $f16
/* B7C0 8000ABC0 46083280 */  add.s      $f10, $f6, $f8
/* B7C4 8000ABC4 46125103 */  div.s      $f4, $f10, $f18
/* B7C8 8000ABC8 46064281 */  sub.s      $f10, $f8, $f6
/* B7CC 8000ABCC C7A80028 */  lwc1       $f8, 0x28($sp)
/* B7D0 8000ABD0 46124183 */  div.s      $f6, $f8, $f18
/* B7D4 8000ABD4 4600240D */  trunc.w.s  $f16, $f4
/* B7D8 8000ABD8 44198000 */  mfc1       $t9, $f16
/* B7DC 8000ABDC 00000000 */  nop
/* B7E0 8000ABE0 AFB90024 */  sw         $t9, 0x24($sp)
/* B7E4 8000ABE4 46125103 */  div.s      $f4, $f10, $f18
/* B7E8 8000ABE8 4600328D */  trunc.w.s  $f10, $f6
/* B7EC 8000ABEC 440B5000 */  mfc1       $t3, $f10
/* B7F0 8000ABF0 00000000 */  nop
/* B7F4 8000ABF4 AFAB001C */  sw         $t3, 0x1c($sp)
/* B7F8 8000ABF8 4600240D */  trunc.w.s  $f16, $f4
/* B7FC 8000ABFC 44098000 */  mfc1       $t1, $f16
/* B800 8000AC00 11810004 */  beq        $t4, $at, .L8000AC14
/* B804 8000AC04 AFA90020 */   sw        $t1, 0x20($sp)
/* B808 8000AC08 AFA90018 */  sw         $t1, 0x18($sp)
/* B80C 8000AC0C AFB90020 */  sw         $t9, 0x20($sp)
/* B810 8000AC10 AFA90024 */  sw         $t1, 0x24($sp)
.L8000AC14:
/* B814 8000AC14 8FA4001C */  lw         $a0, 0x1c($sp)
/* B818 8000AC18 0C002A00 */  jal        func_8000A800
/* B81C 8000AC1C 8FA50024 */   lw        $a1, 0x24($sp)
/* B820 8000AC20 8FA4001C */  lw         $a0, 0x1c($sp)
/* B824 8000AC24 0C002A00 */  jal        func_8000A800
/* B828 8000AC28 8FA50020 */   lw        $a1, 0x20($sp)
/* B82C 8000AC2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B830 8000AC30 27BD0028 */  addiu      $sp, $sp, 0x28
/* B834 8000AC34 03E00008 */  jr         $ra
/* B838 8000AC38 00000000 */   nop

glabel func_8000AC3C
/* B83C 8000AC3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B840 8000AC40 AFBF0014 */  sw         $ra, 0x14($sp)
/* B844 8000AC44 AFA40020 */  sw         $a0, 0x20($sp)
/* B848 8000AC48 AFA50024 */  sw         $a1, 0x24($sp)
/* B84C 8000AC4C 3C0E8014 */  lui        $t6, %hi(D_8013B708)
/* B850 8000AC50 3C0F8014 */  lui        $t7, %hi(D_8013B700)
/* B854 8000AC54 8DEFB700 */  lw         $t7, %lo(D_8013B700)($t7)
/* B858 8000AC58 8DCEB708 */  lw         $t6, %lo(D_8013B708)($t6)
/* B85C 8000AC5C 3C01800D */  lui        $at, %hi(D_800D63DC)
/* B860 8000AC60 AC2063DC */  sw         $zero, %lo(D_800D63DC)($at)
/* B864 8000AC64 01CFC023 */  subu       $t8, $t6, $t7
/* B868 8000AC68 17000007 */  bnez       $t8, .L8000AC88
/* B86C 8000AC6C AFB8001C */   sw        $t8, 0x1c($sp)
/* B870 8000AC70 3C058014 */  lui        $a1, %hi(D_8013B704)
/* B874 8000AC74 8CA5B704 */  lw         $a1, %lo(D_8013B704)($a1)
/* B878 8000AC78 0C002A70 */  jal        func_8000A9C0
/* B87C 8000AC7C 01E02025 */   or        $a0, $t7, $zero
/* B880 8000AC80 10000059 */  b          .L8000ADE8
/* B884 8000AC84 00000000 */   nop
.L8000AC88:
/* B888 8000AC88 8FB9001C */  lw         $t9, 0x1c($sp)
/* B88C 8000AC8C 1B20002D */  blez       $t9, .L8000AD44
/* B890 8000AC90 00000000 */   nop
/* B894 8000AC94 3C088014 */  lui        $t0, %hi(D_8013B700)
/* B898 8000AC98 3C098014 */  lui        $t1, %hi(D_8013B708)
/* B89C 8000AC9C 8D29B708 */  lw         $t1, %lo(D_8013B708)($t1)
/* B8A0 8000ACA0 8D08B700 */  lw         $t0, %lo(D_8013B700)($t0)
/* B8A4 8000ACA4 0109082A */  slt        $at, $t0, $t1
/* B8A8 8000ACA8 1020004F */  beqz       $at, .L8000ADE8
/* B8AC 8000ACAC AFA80018 */   sw        $t0, 0x18($sp)
.L8000ACB0:
/* B8B0 8000ACB0 8FAA0018 */  lw         $t2, 0x18($sp)
/* B8B4 8000ACB4 3C0C8014 */  lui        $t4, %hi(D_8013B650)
/* B8B8 8000ACB8 8D8CB650 */  lw         $t4, %lo(D_8013B650)($t4)
/* B8BC 8000ACBC 254B0001 */  addiu      $t3, $t2, 1
/* B8C0 8000ACC0 8FAE0020 */  lw         $t6, 0x20($sp)
/* B8C4 8000ACC4 016C0019 */  multu      $t3, $t4
/* B8C8 8000ACC8 3C018014 */  lui        $at, 0x8014
/* B8CC 8000ACCC C5C80000 */  lwc1       $f8, ($t6)
/* B8D0 8000ACD0 00003025 */  or         $a2, $zero, $zero
/* B8D4 8000ACD4 00006812 */  mflo       $t5
/* B8D8 8000ACD8 448D2000 */  mtc1       $t5, $f4
/* B8DC 8000ACDC 00000000 */  nop
/* B8E0 8000ACE0 468021A0 */  cvt.s.w    $f6, $f4
/* B8E4 8000ACE4 46083281 */  sub.s      $f10, $f6, $f8
/* B8E8 8000ACE8 46003306 */  mov.s      $f12, $f6
/* B8EC 8000ACEC E42AB718 */  swc1       $f10, -0x48e8($at)
/* B8F0 8000ACF0 3C018014 */  lui        $at, %hi(D_8013B714)
/* B8F4 8000ACF4 C430B714 */  lwc1       $f16, %lo(D_8013B714)($at)
/* B8F8 8000ACF8 3C018014 */  lui        $at, %hi(D_8013B710)
/* B8FC 8000ACFC C432B710 */  lwc1       $f18, %lo(D_8013B710)($at)
/* B900 8000AD00 3C018014 */  lui        $at, %hi(D_8013B71C)
/* B904 8000AD04 46128103 */  div.s      $f4, $f16, $f18
/* B908 8000AD08 460A2202 */  mul.s      $f8, $f4, $f10
/* B90C 8000AD0C E428B71C */  swc1       $f8, %lo(D_8013B71C)($at)
/* B910 8000AD10 C5D00004 */  lwc1       $f16, 4($t6)
/* B914 8000AD14 0C002AB1 */  jal        func_8000AAC4
/* B918 8000AD18 46088380 */   add.s     $f14, $f16, $f8
/* B91C 8000AD1C 8FB80018 */  lw         $t8, 0x18($sp)
/* B920 8000AD20 3C198014 */  lui        $t9, %hi(D_8013B708)
/* B924 8000AD24 8F39B708 */  lw         $t9, %lo(D_8013B708)($t9)
/* B928 8000AD28 270F0001 */  addiu      $t7, $t8, 1
/* B92C 8000AD2C AFAF0018 */  sw         $t7, 0x18($sp)
/* B930 8000AD30 01F9082A */  slt        $at, $t7, $t9
/* B934 8000AD34 1420FFDE */  bnez       $at, .L8000ACB0
/* B938 8000AD38 00000000 */   nop
/* B93C 8000AD3C 1000002A */  b          .L8000ADE8
/* B940 8000AD40 00000000 */   nop
.L8000AD44:
/* B944 8000AD44 3C088014 */  lui        $t0, %hi(D_8013B700)
/* B948 8000AD48 3C098014 */  lui        $t1, %hi(D_8013B708)
/* B94C 8000AD4C 8D29B708 */  lw         $t1, %lo(D_8013B708)($t1)
/* B950 8000AD50 8D08B700 */  lw         $t0, %lo(D_8013B700)($t0)
/* B954 8000AD54 0128082A */  slt        $at, $t1, $t0
/* B958 8000AD58 10200023 */  beqz       $at, .L8000ADE8
/* B95C 8000AD5C AFA80018 */   sw        $t0, 0x18($sp)
.L8000AD60:
/* B960 8000AD60 3C0B8014 */  lui        $t3, %hi(D_8013B650)
/* B964 8000AD64 8D6BB650 */  lw         $t3, %lo(D_8013B650)($t3)
/* B968 8000AD68 8FAA0018 */  lw         $t2, 0x18($sp)
/* B96C 8000AD6C 8FAD0020 */  lw         $t5, 0x20($sp)
/* B970 8000AD70 3C018014 */  lui        $at, 0x8014
/* B974 8000AD74 014B0019 */  multu      $t2, $t3
/* B978 8000AD78 C5AA0000 */  lwc1       $f10, ($t5)
/* B97C 8000AD7C 24060001 */  addiu      $a2, $zero, 1
/* B980 8000AD80 00006012 */  mflo       $t4
/* B984 8000AD84 448C9000 */  mtc1       $t4, $f18
/* B988 8000AD88 00000000 */  nop
/* B98C 8000AD8C 46809120 */  cvt.s.w    $f4, $f18
/* B990 8000AD90 460A2181 */  sub.s      $f6, $f4, $f10
/* B994 8000AD94 46002306 */  mov.s      $f12, $f4
/* B998 8000AD98 E426B718 */  swc1       $f6, -0x48e8($at)
/* B99C 8000AD9C 3C018014 */  lui        $at, %hi(D_8013B714)
/* B9A0 8000ADA0 C430B714 */  lwc1       $f16, %lo(D_8013B714)($at)
/* B9A4 8000ADA4 3C018014 */  lui        $at, %hi(D_8013B710)
/* B9A8 8000ADA8 C428B710 */  lwc1       $f8, %lo(D_8013B710)($at)
/* B9AC 8000ADAC 3C018014 */  lui        $at, %hi(D_8013B71C)
/* B9B0 8000ADB0 46088483 */  div.s      $f18, $f16, $f8
/* B9B4 8000ADB4 46069282 */  mul.s      $f10, $f18, $f6
/* B9B8 8000ADB8 E42AB71C */  swc1       $f10, %lo(D_8013B71C)($at)
/* B9BC 8000ADBC C5B00004 */  lwc1       $f16, 4($t5)
/* B9C0 8000ADC0 0C002AB1 */  jal        func_8000AAC4
/* B9C4 8000ADC4 460A8380 */   add.s     $f14, $f16, $f10
/* B9C8 8000ADC8 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9CC 8000ADCC 3C0F8014 */  lui        $t7, %hi(D_8013B708)
/* B9D0 8000ADD0 8DEFB708 */  lw         $t7, %lo(D_8013B708)($t7)
/* B9D4 8000ADD4 25D8FFFF */  addiu      $t8, $t6, -1
/* B9D8 8000ADD8 AFB80018 */  sw         $t8, 0x18($sp)
/* B9DC 8000ADDC 01F8082A */  slt        $at, $t7, $t8
/* B9E0 8000ADE0 1420FFDF */  bnez       $at, .L8000AD60
/* B9E4 8000ADE4 00000000 */   nop
.L8000ADE8:
/* B9E8 8000ADE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9EC 8000ADEC 27BD0020 */  addiu      $sp, $sp, 0x20
/* B9F0 8000ADF0 03E00008 */  jr         $ra
/* B9F4 8000ADF4 00000000 */   nop

glabel func_8000ADF8
/* B9F8 8000ADF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B9FC 8000ADFC AFBF0014 */  sw         $ra, 0x14($sp)
/* BA00 8000AE00 AFA40020 */  sw         $a0, 0x20($sp)
/* BA04 8000AE04 AFA50024 */  sw         $a1, 0x24($sp)
/* BA08 8000AE08 3C0E8014 */  lui        $t6, %hi(D_8013B70C)
/* BA0C 8000AE0C 3C0F8014 */  lui        $t7, %hi(D_8013B704)
/* BA10 8000AE10 8DEFB704 */  lw         $t7, %lo(D_8013B704)($t7)
/* BA14 8000AE14 8DCEB70C */  lw         $t6, %lo(D_8013B70C)($t6)
/* BA18 8000AE18 3C01800D */  lui        $at, %hi(D_800D63DC)
/* BA1C 8000AE1C AC2063DC */  sw         $zero, %lo(D_800D63DC)($at)
/* BA20 8000AE20 01CFC023 */  subu       $t8, $t6, $t7
/* BA24 8000AE24 17000007 */  bnez       $t8, .L8000AE44
/* BA28 8000AE28 AFB8001C */   sw        $t8, 0x1c($sp)
/* BA2C 8000AE2C 3C048014 */  lui        $a0, %hi(D_8013B700)
/* BA30 8000AE30 8C84B700 */  lw         $a0, %lo(D_8013B700)($a0)
/* BA34 8000AE34 0C002A70 */  jal        func_8000A9C0
/* BA38 8000AE38 01E02825 */   or        $a1, $t7, $zero
/* BA3C 8000AE3C 10000059 */  b          .L8000AFA4
/* BA40 8000AE40 00000000 */   nop
.L8000AE44:
/* BA44 8000AE44 8FB9001C */  lw         $t9, 0x1c($sp)
/* BA48 8000AE48 1B20002D */  blez       $t9, .L8000AF00
/* BA4C 8000AE4C 00000000 */   nop
/* BA50 8000AE50 3C088014 */  lui        $t0, %hi(D_8013B704)
/* BA54 8000AE54 3C098014 */  lui        $t1, %hi(D_8013B70C)
/* BA58 8000AE58 8D29B70C */  lw         $t1, %lo(D_8013B70C)($t1)
/* BA5C 8000AE5C 8D08B704 */  lw         $t0, %lo(D_8013B704)($t0)
/* BA60 8000AE60 0109082A */  slt        $at, $t0, $t1
/* BA64 8000AE64 1020004F */  beqz       $at, .L8000AFA4
/* BA68 8000AE68 AFA80018 */   sw        $t0, 0x18($sp)
.L8000AE6C:
/* BA6C 8000AE6C 8FAA0018 */  lw         $t2, 0x18($sp)
/* BA70 8000AE70 3C0C8014 */  lui        $t4, %hi(D_8013B650)
/* BA74 8000AE74 8D8CB650 */  lw         $t4, %lo(D_8013B650)($t4)
/* BA78 8000AE78 254B0001 */  addiu      $t3, $t2, 1
/* BA7C 8000AE7C 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA80 8000AE80 016C0019 */  multu      $t3, $t4
/* BA84 8000AE84 3C018014 */  lui        $at, 0x8014
/* BA88 8000AE88 C5C80004 */  lwc1       $f8, 4($t6)
/* BA8C 8000AE8C 00003025 */  or         $a2, $zero, $zero
/* BA90 8000AE90 00006812 */  mflo       $t5
/* BA94 8000AE94 448D2000 */  mtc1       $t5, $f4
/* BA98 8000AE98 00000000 */  nop
/* BA9C 8000AE9C 468021A0 */  cvt.s.w    $f6, $f4
/* BAA0 8000AEA0 46083281 */  sub.s      $f10, $f6, $f8
/* BAA4 8000AEA4 46003386 */  mov.s      $f14, $f6
/* BAA8 8000AEA8 E42AB71C */  swc1       $f10, -0x48e4($at)
/* BAAC 8000AEAC 3C018014 */  lui        $at, %hi(D_8013B710)
/* BAB0 8000AEB0 C430B710 */  lwc1       $f16, %lo(D_8013B710)($at)
/* BAB4 8000AEB4 3C018014 */  lui        $at, %hi(D_8013B714)
/* BAB8 8000AEB8 C432B714 */  lwc1       $f18, %lo(D_8013B714)($at)
/* BABC 8000AEBC 3C018014 */  lui        $at, %hi(D_8013B718)
/* BAC0 8000AEC0 46128103 */  div.s      $f4, $f16, $f18
/* BAC4 8000AEC4 460A2202 */  mul.s      $f8, $f4, $f10
/* BAC8 8000AEC8 E428B718 */  swc1       $f8, %lo(D_8013B718)($at)
/* BACC 8000AECC C5D00000 */  lwc1       $f16, ($t6)
/* BAD0 8000AED0 0C002AE0 */  jal        func_8000AB80
/* BAD4 8000AED4 46088300 */   add.s     $f12, $f16, $f8
/* BAD8 8000AED8 8FB80018 */  lw         $t8, 0x18($sp)
/* BADC 8000AEDC 3C198014 */  lui        $t9, %hi(D_8013B70C)
/* BAE0 8000AEE0 8F39B70C */  lw         $t9, %lo(D_8013B70C)($t9)
/* BAE4 8000AEE4 270F0001 */  addiu      $t7, $t8, 1
/* BAE8 8000AEE8 AFAF0018 */  sw         $t7, 0x18($sp)
/* BAEC 8000AEEC 01F9082A */  slt        $at, $t7, $t9
/* BAF0 8000AEF0 1420FFDE */  bnez       $at, .L8000AE6C
/* BAF4 8000AEF4 00000000 */   nop
/* BAF8 8000AEF8 1000002A */  b          .L8000AFA4
/* BAFC 8000AEFC 00000000 */   nop
.L8000AF00:
/* BB00 8000AF00 3C088014 */  lui        $t0, %hi(D_8013B704)
/* BB04 8000AF04 3C098014 */  lui        $t1, %hi(D_8013B70C)
/* BB08 8000AF08 8D29B70C */  lw         $t1, %lo(D_8013B70C)($t1)
/* BB0C 8000AF0C 8D08B704 */  lw         $t0, %lo(D_8013B704)($t0)
/* BB10 8000AF10 0128082A */  slt        $at, $t1, $t0
/* BB14 8000AF14 10200023 */  beqz       $at, .L8000AFA4
/* BB18 8000AF18 AFA80018 */   sw        $t0, 0x18($sp)
.L8000AF1C:
/* BB1C 8000AF1C 3C0B8014 */  lui        $t3, %hi(D_8013B650)
/* BB20 8000AF20 8D6BB650 */  lw         $t3, %lo(D_8013B650)($t3)
/* BB24 8000AF24 8FAA0018 */  lw         $t2, 0x18($sp)
/* BB28 8000AF28 8FAD0020 */  lw         $t5, 0x20($sp)
/* BB2C 8000AF2C 3C018014 */  lui        $at, 0x8014
/* BB30 8000AF30 014B0019 */  multu      $t2, $t3
/* BB34 8000AF34 C5AA0004 */  lwc1       $f10, 4($t5)
/* BB38 8000AF38 24060001 */  addiu      $a2, $zero, 1
/* BB3C 8000AF3C 00006012 */  mflo       $t4
/* BB40 8000AF40 448C9000 */  mtc1       $t4, $f18
/* BB44 8000AF44 00000000 */  nop
/* BB48 8000AF48 46809120 */  cvt.s.w    $f4, $f18
/* BB4C 8000AF4C 460A2401 */  sub.s      $f16, $f4, $f10
/* BB50 8000AF50 46002386 */  mov.s      $f14, $f4
/* BB54 8000AF54 E430B71C */  swc1       $f16, -0x48e4($at)
/* BB58 8000AF58 3C018014 */  lui        $at, %hi(D_8013B710)
/* BB5C 8000AF5C C428B710 */  lwc1       $f8, %lo(D_8013B710)($at)
/* BB60 8000AF60 3C018014 */  lui        $at, %hi(D_8013B714)
/* BB64 8000AF64 C426B714 */  lwc1       $f6, %lo(D_8013B714)($at)
/* BB68 8000AF68 3C018014 */  lui        $at, %hi(D_8013B718)
/* BB6C 8000AF6C 46064483 */  div.s      $f18, $f8, $f6
/* BB70 8000AF70 46109282 */  mul.s      $f10, $f18, $f16
/* BB74 8000AF74 E42AB718 */  swc1       $f10, %lo(D_8013B718)($at)
/* BB78 8000AF78 C5A80000 */  lwc1       $f8, ($t5)
/* BB7C 8000AF7C 0C002AE0 */  jal        func_8000AB80
/* BB80 8000AF80 460A4300 */   add.s     $f12, $f8, $f10
/* BB84 8000AF84 8FAE0018 */  lw         $t6, 0x18($sp)
/* BB88 8000AF88 3C0F8014 */  lui        $t7, %hi(D_8013B70C)
/* BB8C 8000AF8C 8DEFB70C */  lw         $t7, %lo(D_8013B70C)($t7)
/* BB90 8000AF90 25D8FFFF */  addiu      $t8, $t6, -1
/* BB94 8000AF94 AFB80018 */  sw         $t8, 0x18($sp)
/* BB98 8000AF98 01F8082A */  slt        $at, $t7, $t8
/* BB9C 8000AF9C 1420FFDF */  bnez       $at, .L8000AF1C
/* BBA0 8000AFA0 00000000 */   nop
.L8000AFA4:
/* BBA4 8000AFA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BBA8 8000AFA8 27BD0020 */  addiu      $sp, $sp, 0x20
/* BBAC 8000AFAC 03E00008 */  jr         $ra
/* BBB0 8000AFB0 00000000 */   nop

glabel func_8000AFB4
/* BBB4 8000AFB4 27BDFFF8 */  addiu      $sp, $sp, -8
/* BBB8 8000AFB8 AFA00000 */  sw         $zero, ($sp)
.L8000AFBC:
/* BBBC 8000AFBC AFA00004 */  sw         $zero, 4($sp)
.L8000AFC0:
/* BBC0 8000AFC0 8FAE0000 */  lw         $t6, ($sp)
/* BBC4 8000AFC4 8FB80004 */  lw         $t8, 4($sp)
/* BBC8 8000AFC8 8FA80004 */  lw         $t0, 4($sp)
/* BBCC 8000AFCC 000E7940 */  sll        $t7, $t6, 5
/* BBD0 8000AFD0 01EE7823 */  subu       $t7, $t7, $t6
/* BBD4 8000AFD4 3C018014 */  lui        $at, %hi(D_8013B730)
/* BBD8 8000AFD8 01F8C821 */  addu       $t9, $t7, $t8
/* BBDC 8000AFDC 00390821 */  addu       $at, $at, $t9
/* BBE0 8000AFE0 A020B730 */  sb         $zero, %lo(D_8013B730)($at)
/* BBE4 8000AFE4 25090001 */  addiu      $t1, $t0, 1
/* BBE8 8000AFE8 2921001F */  slti       $at, $t1, 0x1f
/* BBEC 8000AFEC 1420FFF4 */  bnez       $at, .L8000AFC0
/* BBF0 8000AFF0 AFA90004 */   sw        $t1, 4($sp)
/* BBF4 8000AFF4 8FAA0000 */  lw         $t2, ($sp)
/* BBF8 8000AFF8 254B0001 */  addiu      $t3, $t2, 1
/* BBFC 8000AFFC 2961001F */  slti       $at, $t3, 0x1f
/* BC00 8000B000 1420FFEE */  bnez       $at, .L8000AFBC
/* BC04 8000B004 AFAB0000 */   sw        $t3, ($sp)
/* BC08 8000B008 3C018014 */  lui        $at, %hi(D_8013B728)
/* BC0C 8000B00C AC20B728 */  sw         $zero, %lo(D_8013B728)($at)
/* BC10 8000B010 03E00008 */  jr         $ra
/* BC14 8000B014 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8000B018
/* BC18 8000B018 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BC1C 8000B01C AFBF0014 */  sw         $ra, 0x14($sp)
/* BC20 8000B020 AFA40030 */  sw         $a0, 0x30($sp)
/* BC24 8000B024 AFA50034 */  sw         $a1, 0x34($sp)
/* BC28 8000B028 AFA60038 */  sw         $a2, 0x38($sp)
/* BC2C 8000B02C AFA7003C */  sw         $a3, 0x3c($sp)
/* BC30 8000B030 C7A40038 */  lwc1       $f4, 0x38($sp)
/* BC34 8000B034 3C01800E */  lui        $at, %hi(D_800DBC08)
/* BC38 8000B038 D42ABC08 */  ldc1       $f10, %lo(D_800DBC08)($at)
/* BC3C 8000B03C 46002187 */  neg.s      $f6, $f4
/* BC40 8000B040 46003221 */  cvt.d.s    $f8, $f6
/* BC44 8000B044 462A4402 */  mul.d      $f16, $f8, $f10
/* BC48 8000B048 462084A0 */  cvt.s.d    $f18, $f16
/* BC4C 8000B04C E7B2001C */  swc1       $f18, 0x1c($sp)
/* BC50 8000B050 0C033F18 */  jal        func_800CFC60
/* BC54 8000B054 46009306 */   mov.s     $f12, $f18
/* BC58 8000B058 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* BC5C 8000B05C C7AC001C */  lwc1       $f12, 0x1c($sp)
/* BC60 8000B060 46040182 */  mul.s      $f6, $f0, $f4
/* BC64 8000B064 0C02F904 */  jal        func_800BE410
/* BC68 8000B068 E7A60024 */   swc1      $f6, 0x24($sp)
/* BC6C 8000B06C C7A8003C */  lwc1       $f8, 0x3c($sp)
/* BC70 8000B070 8FAE0034 */  lw         $t6, 0x34($sp)
/* BC74 8000B074 C7B20024 */  lwc1       $f18, 0x24($sp)
/* BC78 8000B078 46080282 */  mul.s      $f10, $f0, $f8
/* BC7C 8000B07C 8FAF0030 */  lw         $t7, 0x30($sp)
/* BC80 8000B080 E7AA0020 */  swc1       $f10, 0x20($sp)
/* BC84 8000B084 C5D00000 */  lwc1       $f16, ($t6)
/* BC88 8000B088 46128100 */  add.s      $f4, $f16, $f18
/* BC8C 8000B08C E5E40000 */  swc1       $f4, ($t7)
/* BC90 8000B090 8FB80034 */  lw         $t8, 0x34($sp)
/* BC94 8000B094 C7A80020 */  lwc1       $f8, 0x20($sp)
/* BC98 8000B098 8FB90030 */  lw         $t9, 0x30($sp)
/* BC9C 8000B09C C7060004 */  lwc1       $f6, 4($t8)
/* BCA0 8000B0A0 46083280 */  add.s      $f10, $f6, $f8
/* BCA4 8000B0A4 E72A0004 */  swc1       $f10, 4($t9)
/* BCA8 8000B0A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BCAC 8000B0AC 27BD0030 */  addiu      $sp, $sp, 0x30
/* BCB0 8000B0B0 03E00008 */  jr         $ra
/* BCB4 8000B0B4 00000000 */   nop

glabel func_8000B0B8
/* BCB8 8000B0B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BCBC 8000B0BC AFBF0014 */  sw         $ra, 0x14($sp)
/* BCC0 8000B0C0 AFA40020 */  sw         $a0, 0x20($sp)
/* BCC4 8000B0C4 AFA50024 */  sw         $a1, 0x24($sp)
/* BCC8 8000B0C8 3C058014 */  lui        $a1, %hi(D_8013B700)
/* BCCC 8000B0CC 24A5B700 */  addiu      $a1, $a1, %lo(D_8013B700)
/* BCD0 8000B0D0 0C002978 */  jal        func_8000A5E0
/* BCD4 8000B0D4 8FA40020 */   lw        $a0, 0x20($sp)
/* BCD8 8000B0D8 3C058014 */  lui        $a1, %hi(D_8013B708)
/* BCDC 8000B0DC 24A5B708 */  addiu      $a1, $a1, %lo(D_8013B708)
/* BCE0 8000B0E0 0C002978 */  jal        func_8000A5E0
/* BCE4 8000B0E4 8FA40024 */   lw        $a0, 0x24($sp)
/* BCE8 8000B0E8 3C0E8014 */  lui        $t6, %hi(D_8013B700)
/* BCEC 8000B0EC 8DCEB700 */  lw         $t6, %lo(D_8013B700)($t6)
/* BCF0 8000B0F0 3C0F8014 */  lui        $t7, %hi(D_8013B704)
/* BCF4 8000B0F4 8DEFB704 */  lw         $t7, %lo(D_8013B704)($t7)
/* BCF8 8000B0F8 3C018014 */  lui        $at, %hi(D_8013B720)
/* BCFC 8000B0FC AC2EB720 */  sw         $t6, %lo(D_8013B720)($at)
/* BD00 8000B100 8FB80024 */  lw         $t8, 0x24($sp)
/* BD04 8000B104 8FB90020 */  lw         $t9, 0x20($sp)
/* BD08 8000B108 3C018014 */  lui        $at, %hi(D_8013B724)
/* BD0C 8000B10C AC2FB724 */  sw         $t7, %lo(D_8013B724)($at)
/* BD10 8000B110 C7040000 */  lwc1       $f4, ($t8)
/* BD14 8000B114 C7260000 */  lwc1       $f6, ($t9)
/* BD18 8000B118 3C018014 */  lui        $at, %hi(D_8013B710)
/* BD1C 8000B11C 03002825 */  or         $a1, $t8, $zero
/* BD20 8000B120 46062201 */  sub.s      $f8, $f4, $f6
/* BD24 8000B124 03202025 */  or         $a0, $t9, $zero
/* BD28 8000B128 E428B710 */  swc1       $f8, %lo(D_8013B710)($at)
/* BD2C 8000B12C C70A0004 */  lwc1       $f10, 4($t8)
/* BD30 8000B130 C7300004 */  lwc1       $f16, 4($t9)
/* BD34 8000B134 3C018014 */  lui        $at, %hi(D_8013B714)
/* BD38 8000B138 46105481 */  sub.s      $f18, $f10, $f16
/* BD3C 8000B13C 0C002B0F */  jal        func_8000AC3C
/* BD40 8000B140 E432B714 */   swc1      $f18, %lo(D_8013B714)($at)
/* BD44 8000B144 8FA40020 */  lw         $a0, 0x20($sp)
/* BD48 8000B148 0C002B7E */  jal        func_8000ADF8
/* BD4C 8000B14C 8FA50024 */   lw        $a1, 0x24($sp)
/* BD50 8000B150 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD54 8000B154 27BD0020 */  addiu      $sp, $sp, 0x20
/* BD58 8000B158 03E00008 */  jr         $ra
/* BD5C 8000B15C 00000000 */   nop

glabel func_8000B160
/* BD60 8000B160 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BD64 8000B164 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD68 8000B168 AFA60048 */  sw         $a2, 0x48($sp)
/* BD6C 8000B16C AFA7004C */  sw         $a3, 0x4c($sp)
/* BD70 8000B170 E7AC0040 */  swc1       $f12, 0x40($sp)
/* BD74 8000B174 E7AE0044 */  swc1       $f14, 0x44($sp)
/* BD78 8000B178 0C002BED */  jal        func_8000AFB4
/* BD7C 8000B17C 00000000 */   nop
/* BD80 8000B180 3C018014 */  lui        $at, %hi(D_801409E0)
/* BD84 8000B184 C42409E0 */  lwc1       $f4, %lo(D_801409E0)($at)
/* BD88 8000B188 4600218D */  trunc.w.s  $f6, $f4
/* BD8C 8000B18C 440F3000 */  mfc1       $t7, $f6
/* BD90 8000B190 00000000 */  nop
/* BD94 8000B194 05E10003 */  bgez       $t7, .L8000B1A4
/* BD98 8000B198 AFAF0024 */   sw        $t7, 0x24($sp)
/* BD9C 8000B19C 000FC023 */  negu       $t8, $t7
/* BDA0 8000B1A0 AFB80024 */  sw         $t8, 0x24($sp)
.L8000B1A4:
/* BDA4 8000B1A4 8FB90024 */  lw         $t9, 0x24($sp)
/* BDA8 8000B1A8 2B21003E */  slti       $at, $t9, 0x3e
/* BDAC 8000B1AC 10200003 */  beqz       $at, .L8000B1BC
/* BDB0 8000B1B0 00000000 */   nop
/* BDB4 8000B1B4 2408003E */  addiu      $t0, $zero, 0x3e
/* BDB8 8000B1B8 AFA80024 */  sw         $t0, 0x24($sp)
.L8000B1BC:
/* BDBC 8000B1BC 8FA90024 */  lw         $t1, 0x24($sp)
/* BDC0 8000B1C0 3C014000 */  lui        $at, 0x4000
/* BDC4 8000B1C4 44812000 */  mtc1       $at, $f4
/* BDC8 8000B1C8 44898000 */  mtc1       $t1, $f16
/* BDCC 8000B1CC C7A80040 */  lwc1       $f8, 0x40($sp)
/* BDD0 8000B1D0 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* BDD4 8000B1D4 468084A0 */  cvt.s.w    $f18, $f16
/* BDD8 8000B1D8 3C014170 */  lui        $at, 0x4170
/* BDDC 8000B1DC E7A80038 */  swc1       $f8, 0x38($sp)
/* BDE0 8000B1E0 44814000 */  mtc1       $at, $f8
/* BDE4 8000B1E4 E7AA003C */  swc1       $f10, 0x3c($sp)
/* BDE8 8000B1E8 C7B00048 */  lwc1       $f16, 0x48($sp)
/* BDEC 8000B1EC 46049182 */  mul.s      $f6, $f18, $f4
/* BDF0 8000B1F0 46128101 */  sub.s      $f4, $f16, $f18
/* BDF4 8000B1F4 E7A40018 */  swc1       $f4, 0x18($sp)
/* BDF8 8000B1F8 46083283 */  div.s      $f10, $f6, $f8
/* BDFC 8000B1FC 46109180 */  add.s      $f6, $f18, $f16
/* BE00 8000B200 4606203C */  c.lt.s     $f4, $f6
/* BE04 8000B204 00000000 */  nop
/* BE08 8000B208 4500001A */  bc1f       .L8000B274
/* BE0C 8000B20C E7AA001C */   swc1      $f10, 0x1c($sp)
.L8000B210:
/* BE10 8000B210 8FAA004C */  lw         $t2, 0x4c($sp)
/* BE14 8000B214 27A40028 */  addiu      $a0, $sp, 0x28
/* BE18 8000B218 27A50038 */  addiu      $a1, $sp, 0x38
/* BE1C 8000B21C 448A4000 */  mtc1       $t2, $f8
/* BE20 8000B220 8FA60018 */  lw         $a2, 0x18($sp)
/* BE24 8000B224 46804220 */  cvt.s.w    $f8, $f8
/* BE28 8000B228 44074000 */  mfc1       $a3, $f8
/* BE2C 8000B22C 0C002C06 */  jal        func_8000B018
/* BE30 8000B230 00000000 */   nop
/* BE34 8000B234 27A40038 */  addiu      $a0, $sp, 0x38
/* BE38 8000B238 0C002C2E */  jal        func_8000B0B8
/* BE3C 8000B23C 27A50028 */   addiu     $a1, $sp, 0x28
/* BE40 8000B240 8FAB0024 */  lw         $t3, 0x24($sp)
/* BE44 8000B244 C7AA0018 */  lwc1       $f10, 0x18($sp)
/* BE48 8000B248 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* BE4C 8000B24C 448B2000 */  mtc1       $t3, $f4
/* BE50 8000B250 C7A80048 */  lwc1       $f8, 0x48($sp)
/* BE54 8000B254 46125400 */  add.s      $f16, $f10, $f18
/* BE58 8000B258 468021A0 */  cvt.s.w    $f6, $f4
/* BE5C 8000B25C E7B00018 */  swc1       $f16, 0x18($sp)
/* BE60 8000B260 46083280 */  add.s      $f10, $f6, $f8
/* BE64 8000B264 460A803C */  c.lt.s     $f16, $f10
/* BE68 8000B268 00000000 */  nop
/* BE6C 8000B26C 4501FFE8 */  bc1t       .L8000B210
/* BE70 8000B270 00000000 */   nop
.L8000B274:
/* BE74 8000B274 8FAC004C */  lw         $t4, 0x4c($sp)
/* BE78 8000B278 27A40028 */  addiu      $a0, $sp, 0x28
/* BE7C 8000B27C 27A50038 */  addiu      $a1, $sp, 0x38
/* BE80 8000B280 8FA60048 */  lw         $a2, 0x48($sp)
/* BE84 8000B284 05810003 */  bgez       $t4, .L8000B294
/* BE88 8000B288 000C6883 */   sra       $t5, $t4, 2
/* BE8C 8000B28C 25810003 */  addiu      $at, $t4, 3
/* BE90 8000B290 00016883 */  sra        $t5, $at, 2
.L8000B294:
/* BE94 8000B294 01AC7021 */  addu       $t6, $t5, $t4
/* BE98 8000B298 448E9000 */  mtc1       $t6, $f18
/* BE9C 8000B29C 00000000 */  nop
/* BEA0 8000B2A0 468094A0 */  cvt.s.w    $f18, $f18
/* BEA4 8000B2A4 44079000 */  mfc1       $a3, $f18
/* BEA8 8000B2A8 0C002C06 */  jal        func_8000B018
/* BEAC 8000B2AC 00000000 */   nop
/* BEB0 8000B2B0 27A40038 */  addiu      $a0, $sp, 0x38
/* BEB4 8000B2B4 0C002C2E */  jal        func_8000B0B8
/* BEB8 8000B2B8 27A50028 */   addiu     $a1, $sp, 0x28
/* BEBC 8000B2BC 3C0F8016 */  lui        $t7, %hi(D_8015E858)
/* BEC0 8000B2C0 91EFE858 */  lbu        $t7, %lo(D_8015E858)($t7)
/* BEC4 8000B2C4 11E00003 */  beqz       $t7, .L8000B2D4
/* BEC8 8000B2C8 00000000 */   nop
/* BECC 8000B2CC 0C002A8C */  jal        func_8000AA30
/* BED0 8000B2D0 00000000 */   nop
.L8000B2D4:
/* BED4 8000B2D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BED8 8000B2D8 27BD0040 */  addiu      $sp, $sp, 0x40
/* BEDC 8000B2DC 03E00008 */  jr         $ra
/* BEE0 8000B2E0 00000000 */   nop

glabel func_8000B2E4
/* BEE4 8000B2E4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* BEE8 8000B2E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEEC 8000B2EC AFA40060 */  sw         $a0, 0x60($sp)
/* BEF0 8000B2F0 AFA50064 */  sw         $a1, 0x64($sp)
/* BEF4 8000B2F4 AFA60068 */  sw         $a2, 0x68($sp)
/* BEF8 8000B2F8 AFA7006C */  sw         $a3, 0x6c($sp)
/* BEFC 8000B2FC 3C0E800D */  lui        $t6, %hi(D_800D64F4)
/* BF00 8000B300 8DCE64F4 */  lw         $t6, %lo(D_800D64F4)($t6)
/* BF04 8000B304 29C1012C */  slti       $at, $t6, 0x12c
/* BF08 8000B308 10200150 */  beqz       $at, .L8000B84C
/* BF0C 8000B30C 00000000 */   nop
/* BF10 8000B310 3C198014 */  lui        $t9, %hi(D_8013B650)
/* BF14 8000B314 8FAF0060 */  lw         $t7, 0x60($sp)
/* BF18 8000B318 8F39B650 */  lw         $t9, %lo(D_8013B650)($t9)
/* BF1C 8000B31C 8FB80068 */  lw         $t8, 0x68($sp)
/* BF20 8000B320 448F2000 */  mtc1       $t7, $f4
/* BF24 8000B324 01F9001A */  div        $zero, $t7, $t9
/* BF28 8000B328 00004012 */  mflo       $t0
/* BF2C 8000B32C 44984000 */  mtc1       $t8, $f8
/* BF30 8000B330 468021A0 */  cvt.s.w    $f6, $f4
/* BF34 8000B334 0319001A */  div        $zero, $t8, $t9
/* BF38 8000B338 468042A0 */  cvt.s.w    $f10, $f8
/* BF3C 8000B33C 8FAB006C */  lw         $t3, 0x6c($sp)
/* BF40 8000B340 00004812 */  mflo       $t1
/* BF44 8000B344 3C018014 */  lui        $at, %hi(D_8013D398)
/* BF48 8000B348 A420D398 */  sh         $zero, %lo(D_8013D398)($at)
/* BF4C 8000B34C E7A6004C */  swc1       $f6, 0x4c($sp)
/* BF50 8000B350 E7AA0048 */  swc1       $f10, 0x48($sp)
/* BF54 8000B354 AFA80060 */  sw         $t0, 0x60($sp)
/* BF58 8000B358 AFA90068 */  sw         $t1, 0x68($sp)
/* BF5C 8000B35C 8FAA0064 */  lw         $t2, 0x64($sp)
/* BF60 8000B360 956C0024 */  lhu        $t4, 0x24($t3)
/* BF64 8000B364 3C088014 */  lui        $t0, %hi(D_8013B670)
/* BF68 8000B368 8D08B670 */  lw         $t0, %lo(D_8013B670)($t0)
/* BF6C 8000B36C 014C001A */  div        $zero, $t2, $t4
/* BF70 8000B370 00006812 */  mflo       $t5
/* BF74 8000B374 25AE0001 */  addiu      $t6, $t5, 1
/* BF78 8000B378 17200002 */  bnez       $t9, .L8000B384
/* BF7C 8000B37C 00000000 */   nop
/* BF80 8000B380 0007000D */  break      7
.L8000B384:
/* BF84 8000B384 2401FFFF */   addiu     $at, $zero, -1
/* BF88 8000B388 17210004 */  bne        $t9, $at, .L8000B39C
/* BF8C 8000B38C 3C018000 */   lui       $at, 0x8000
/* BF90 8000B390 15E10002 */  bne        $t7, $at, .L8000B39C
/* BF94 8000B394 00000000 */   nop
/* BF98 8000B398 0006000D */  break      6
.L8000B39C:
/* BF9C 8000B39C 25CFFFFF */   addiu     $t7, $t6, -1
/* BFA0 8000B3A0 01E80019 */  multu      $t7, $t0
/* BFA4 8000B3A4 17200002 */  bnez       $t9, .L8000B3B0
/* BFA8 8000B3A8 00000000 */   nop
/* BFAC 8000B3AC 0007000D */  break      7
.L8000B3B0:
/* BFB0 8000B3B0 2401FFFF */   addiu     $at, $zero, -1
/* BFB4 8000B3B4 17210004 */  bne        $t9, $at, .L8000B3C8
/* BFB8 8000B3B8 3C018000 */   lui       $at, 0x8000
/* BFBC 8000B3BC 17010002 */  bne        $t8, $at, .L8000B3C8
/* BFC0 8000B3C0 00000000 */   nop
/* BFC4 8000B3C4 0006000D */  break      6
.L8000B3C8:
/* BFC8 8000B3C8 3C198014 */   lui       $t9, %hi(D_8013B674)
/* BFCC 8000B3CC 8F39B674 */  lw         $t9, %lo(D_8013B674)($t9)
/* BFD0 8000B3D0 0000C012 */  mflo       $t8
/* BFD4 8000B3D4 15800002 */  bnez       $t4, .L8000B3E0
/* BFD8 8000B3D8 00000000 */   nop
/* BFDC 8000B3DC 0007000D */  break      7
.L8000B3E0:
/* BFE0 8000B3E0 2401FFFF */   addiu     $at, $zero, -1
/* BFE4 8000B3E4 15810004 */  bne        $t4, $at, .L8000B3F8
/* BFE8 8000B3E8 3C018000 */   lui       $at, 0x8000
/* BFEC 8000B3EC 15410002 */  bne        $t2, $at, .L8000B3F8
/* BFF0 8000B3F0 00000000 */   nop
/* BFF4 8000B3F4 0006000D */  break      6
.L8000B3F8:
/* BFF8 8000B3F8 03190019 */   multu     $t8, $t9
/* BFFC 8000B3FC 3C018014 */  lui        $at, %hi(D_8013B66C)
/* C000 8000B400 AC2EB66C */  sw         $t6, %lo(D_8013B66C)($at)
/* C004 8000B404 3C018014 */  lui        $at, %hi(D_8013B678)
/* C008 8000B408 00004812 */  mflo       $t1
/* C00C 8000B40C AC29B678 */  sw         $t1, %lo(D_8013B678)($at)
/* C010 8000B410 956A0024 */  lhu        $t2, 0x24($t3)
/* C014 8000B414 01EA0019 */  multu      $t7, $t2
/* C018 8000B418 00006012 */  mflo       $t4
/* C01C 8000B41C 448C8000 */  mtc1       $t4, $f16
/* C020 8000B420 00000000 */  nop
/* C024 8000B424 468084A0 */  cvt.s.w    $f18, $f16
/* C028 8000B428 19C000FF */  blez       $t6, .L8000B828
/* C02C 8000B42C E7B20044 */   swc1      $f18, 0x44($sp)
/* C030 8000B430 956D0016 */  lhu        $t5, 0x16($t3)
/* C034 8000B434 01AE082A */  slt        $at, $t5, $t6
/* C038 8000B438 142000FB */  bnez       $at, .L8000B828
/* C03C 8000B43C 00000000 */   nop
/* C040 8000B440 AFA00058 */  sw         $zero, 0x58($sp)
/* C044 8000B444 8FA80058 */  lw         $t0, 0x58($sp)
/* C048 8000B448 2901001F */  slti       $at, $t0, 0x1f
/* C04C 8000B44C 102000F6 */  beqz       $at, .L8000B828
/* C050 8000B450 00000000 */   nop
.L8000B454:
/* C054 8000B454 AFA0005C */  sw         $zero, 0x5c($sp)
.L8000B458:
/* C058 8000B458 8FB80060 */  lw         $t8, 0x60($sp)
/* C05C 8000B45C 8FB9005C */  lw         $t9, 0x5c($sp)
/* C060 8000B460 8FAA0068 */  lw         $t2, 0x68($sp)
/* C064 8000B464 8FAC0058 */  lw         $t4, 0x58($sp)
/* C068 8000B468 8FAD0070 */  lw         $t5, 0x70($sp)
/* C06C 8000B46C 03194821 */  addu       $t1, $t8, $t9
/* C070 8000B470 014C5821 */  addu       $t3, $t2, $t4
/* C074 8000B474 252FFFF1 */  addiu      $t7, $t1, -0xf
/* C078 8000B478 256EFFF1 */  addiu      $t6, $t3, -0xf
/* C07C 8000B47C AFAF0040 */  sw         $t7, 0x40($sp)
/* C080 8000B480 AFAE003C */  sw         $t6, 0x3c($sp)
/* C084 8000B484 15A0000C */  bnez       $t5, .L8000B4B8
/* C088 8000B488 AFA00050 */   sw        $zero, 0x50($sp)
/* C08C 8000B48C 000C4140 */  sll        $t0, $t4, 5
/* C090 8000B490 010C4023 */  subu       $t0, $t0, $t4
/* C094 8000B494 0119C021 */  addu       $t8, $t0, $t9
/* C098 8000B498 3C098014 */  lui        $t1, %hi(D_8013B730)
/* C09C 8000B49C 01384821 */  addu       $t1, $t1, $t8
/* C0A0 8000B4A0 9129B730 */  lbu        $t1, %lo(D_8013B730)($t1)
/* C0A4 8000B4A4 11200011 */  beqz       $t1, .L8000B4EC
/* C0A8 8000B4A8 00000000 */   nop
/* C0AC 8000B4AC 240F0001 */  addiu      $t7, $zero, 1
/* C0B0 8000B4B0 1000000E */  b          .L8000B4EC
/* C0B4 8000B4B4 AFAF0050 */   sw        $t7, 0x50($sp)
.L8000B4B8:
/* C0B8 8000B4B8 8FAA0058 */  lw         $t2, 0x58($sp)
/* C0BC 8000B4BC 8FAE005C */  lw         $t6, 0x5c($sp)
/* C0C0 8000B4C0 3C0C8014 */  lui        $t4, %hi(D_8013B730)
/* C0C4 8000B4C4 000A5940 */  sll        $t3, $t2, 5
/* C0C8 8000B4C8 016A5823 */  subu       $t3, $t3, $t2
/* C0CC 8000B4CC 016E6821 */  addu       $t5, $t3, $t6
/* C0D0 8000B4D0 018D6021 */  addu       $t4, $t4, $t5
/* C0D4 8000B4D4 918CB730 */  lbu        $t4, %lo(D_8013B730)($t4)
/* C0D8 8000B4D8 31880018 */  andi       $t0, $t4, 0x18
/* C0DC 8000B4DC 11000003 */  beqz       $t0, .L8000B4EC
/* C0E0 8000B4E0 00000000 */   nop
/* C0E4 8000B4E4 24190001 */  addiu      $t9, $zero, 1
/* C0E8 8000B4E8 AFB90050 */  sw         $t9, 0x50($sp)
.L8000B4EC:
/* C0EC 8000B4EC 8FB80050 */  lw         $t8, 0x50($sp)
/* C0F0 8000B4F0 130000C3 */  beqz       $t8, .L8000B800
/* C0F4 8000B4F4 00000000 */   nop
/* C0F8 8000B4F8 8FA90040 */  lw         $t1, 0x40($sp)
/* C0FC 8000B4FC 052000C0 */  bltz       $t1, .L8000B800
/* C100 8000B500 00000000 */   nop
/* C104 8000B504 8FAF003C */  lw         $t7, 0x3c($sp)
/* C108 8000B508 05E000BD */  bltz       $t7, .L8000B800
/* C10C 8000B50C 00000000 */   nop
/* C110 8000B510 3C0A8014 */  lui        $t2, %hi(D_8013B670)
/* C114 8000B514 8D4AB670 */  lw         $t2, %lo(D_8013B670)($t2)
/* C118 8000B518 012A082A */  slt        $at, $t1, $t2
/* C11C 8000B51C 102000B8 */  beqz       $at, .L8000B800
/* C120 8000B520 00000000 */   nop
/* C124 8000B524 3C0B8014 */  lui        $t3, %hi(D_8013B674)
/* C128 8000B528 8D6BB674 */  lw         $t3, %lo(D_8013B674)($t3)
/* C12C 8000B52C 01EB082A */  slt        $at, $t7, $t3
/* C130 8000B530 102000B3 */  beqz       $at, .L8000B800
/* C134 8000B534 00000000 */   nop
/* C138 8000B538 01EA0019 */  multu      $t7, $t2
/* C13C 8000B53C 3C0C8014 */  lui        $t4, %hi(D_8013B678)
/* C140 8000B540 8D8CB678 */  lw         $t4, %lo(D_8013B678)($t4)
/* C144 8000B544 3C188014 */  lui        $t8, %hi(D_8013B664)
/* C148 8000B548 8F18B664 */  lw         $t8, %lo(D_8013B664)($t8)
/* C14C 8000B54C 00007012 */  mflo       $t6
/* C150 8000B550 01C96821 */  addu       $t5, $t6, $t1
/* C154 8000B554 01AC4021 */  addu       $t0, $t5, $t4
/* C158 8000B558 0008C840 */  sll        $t9, $t0, 1
/* C15C 8000B55C 03195821 */  addu       $t3, $t8, $t9
/* C160 8000B560 956F0000 */  lhu        $t7, ($t3)
/* C164 8000B564 11E0008F */  beqz       $t7, .L8000B7A4
/* C168 8000B568 AFAF0038 */   sw        $t7, 0x38($sp)
/* C16C 8000B56C 3C0E8014 */  lui        $t6, %hi(D_8013B668)
/* C170 8000B570 8DCEB668 */  lw         $t6, %lo(D_8013B668)($t6)
/* C174 8000B574 000F50C0 */  sll        $t2, $t7, 3
/* C178 8000B578 000F60C0 */  sll        $t4, $t7, 3
/* C17C 8000B57C 01CA4821 */  addu       $t1, $t6, $t2
/* C180 8000B580 812D0007 */  lb         $t5, 7($t1)
/* C184 8000B584 01CC4021 */  addu       $t0, $t6, $t4
/* C188 8000B588 AFAD002C */  sw         $t5, 0x2c($sp)
/* C18C 8000B58C 8D180000 */  lw         $t8, ($t0)
/* C190 8000B590 AFB80054 */  sw         $t8, 0x54($sp)
/* C194 8000B594 8FB90054 */  lw         $t9, 0x54($sp)
/* C198 8000B598 13200099 */  beqz       $t9, .L8000B800
/* C19C 8000B59C 00000000 */   nop
/* C1A0 8000B5A0 31AB0040 */  andi       $t3, $t5, 0x40
/* C1A4 8000B5A4 11600005 */  beqz       $t3, .L8000B5BC
/* C1A8 8000B5A8 00000000 */   nop
/* C1AC 8000B5AC 3C0A8014 */  lui        $t2, %hi(D_8013B660)
/* C1B0 8000B5B0 8D4AB660 */  lw         $t2, %lo(D_8013B660)($t2)
/* C1B4 8000B5B4 11400097 */  beqz       $t2, .L8000B814
/* C1B8 8000B5B8 00000000 */   nop
.L8000B5BC:
/* C1BC 8000B5BC 3C088014 */  lui        $t0, %hi(D_8013B650)
/* C1C0 8000B5C0 8D08B650 */  lw         $t0, %lo(D_8013B650)($t0)
/* C1C4 8000B5C4 8FAC0040 */  lw         $t4, 0x40($sp)
/* C1C8 8000B5C8 8FAB003C */  lw         $t3, 0x3c($sp)
/* C1CC 8000B5CC 3C198014 */  lui        $t9, %hi(D_8013B658)
/* C1D0 8000B5D0 01880019 */  multu      $t4, $t0
/* C1D4 8000B5D4 8F39B658 */  lw         $t9, %lo(D_8013B658)($t9)
/* C1D8 8000B5D8 3C0F800D */  lui        $t7, %hi(D_800D64F4)
/* C1DC 8000B5DC 8DEF64F4 */  lw         $t7, %lo(D_800D64F4)($t7)
/* C1E0 8000B5E0 8FA90038 */  lw         $t1, 0x38($sp)
/* C1E4 8000B5E4 3C018014 */  lui        $at, %hi(D_8013BAF8)
/* C1E8 8000B5E8 000F7040 */  sll        $t6, $t7, 1
/* C1EC 8000B5EC 002E0821 */  addu       $at, $at, $t6
/* C1F0 8000B5F0 A429BAF8 */  sh         $t1, %lo(D_8013BAF8)($at)
/* C1F4 8000B5F4 3C018014 */  lui        $at, %hi(D_801409C8)
/* C1F8 8000B5F8 0000C012 */  mflo       $t8
/* C1FC 8000B5FC 03196821 */  addu       $t5, $t8, $t9
/* C200 8000B600 448D2000 */  mtc1       $t5, $f4
/* C204 8000B604 01680019 */  multu      $t3, $t0
/* C208 8000B608 C42809C8 */  lwc1       $f8, %lo(D_801409C8)($at)
/* C20C 8000B60C 468021A0 */  cvt.s.w    $f6, $f4
/* C210 8000B610 8FB80060 */  lw         $t8, 0x60($sp)
/* C214 8000B614 8FAC0040 */  lw         $t4, 0x40($sp)
/* C218 8000B618 3C0B8014 */  lui        $t3, %hi(D_8013B650)
/* C21C 8000B61C 8D6BB650 */  lw         $t3, %lo(D_8013B650)($t3)
/* C220 8000B620 3C018014 */  lui        $at, %hi(D_801409CC)
/* C224 8000B624 46083281 */  sub.s      $f10, $f6, $f8
/* C228 8000B628 C43209CC */  lwc1       $f18, %lo(D_801409CC)($at)
/* C22C 8000B62C 00005012 */  mflo       $t2
/* C230 8000B630 01597821 */  addu       $t7, $t2, $t9
/* C234 8000B634 448F3000 */  mtc1       $t7, $f6
/* C238 8000B638 C7B00044 */  lwc1       $f16, 0x44($sp)
/* C23C 8000B63C 01986823 */  subu       $t5, $t4, $t8
/* C240 8000B640 01AB0019 */  multu      $t5, $t3
/* C244 8000B644 46803220 */  cvt.s.w    $f8, $f6
/* C248 8000B648 3C018014 */  lui        $at, %hi(D_801409D0)
/* C24C 8000B64C 3C0A8014 */  lui        $t2, %hi(D_8013B658)
/* C250 8000B650 460A5182 */  mul.s      $f6, $f10, $f10
/* C254 8000B654 8D4AB658 */  lw         $t2, %lo(D_8013B658)($t2)
/* C258 8000B658 46128101 */  sub.s      $f4, $f16, $f18
/* C25C 8000B65C C43009D0 */  lwc1       $f16, %lo(D_801409D0)($at)
/* C260 8000B660 E7AA0028 */  swc1       $f10, 0x28($sp)
/* C264 8000B664 8FAD0068 */  lw         $t5, 0x68($sp)
/* C268 8000B668 46104481 */  sub.s      $f18, $f8, $f16
/* C26C 8000B66C 00004012 */  mflo       $t0
/* C270 8000B670 46042202 */  mul.s      $f8, $f4, $f4
/* C274 8000B674 010AC821 */  addu       $t9, $t0, $t2
/* C278 8000B678 E7B20020 */  swc1       $f18, 0x20($sp)
/* C27C 8000B67C C7B20020 */  lwc1       $f18, 0x20($sp)
/* C280 8000B680 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* C284 8000B684 8FB8003C */  lw         $t8, 0x3c($sp)
/* C288 8000B688 3C088014 */  lui        $t0, %hi(D_8013B650)
/* C28C 8000B68C 8D08B650 */  lw         $t0, %lo(D_8013B650)($t0)
/* C290 8000B690 E7A40024 */  swc1       $f4, 0x24($sp)
/* C294 8000B694 460A9102 */  mul.s      $f4, $f18, $f10
/* C298 8000B698 030D5823 */  subu       $t3, $t8, $t5
/* C29C 8000B69C 01680019 */  multu      $t3, $t0
/* C2A0 8000B6A0 3C09800D */  lui        $t1, %hi(D_800D64F4)
/* C2A4 8000B6A4 8D2964F4 */  lw         $t1, %lo(D_800D64F4)($t1)
/* C2A8 8000B6A8 46083400 */  add.s      $f16, $f6, $f8
/* C2AC 8000B6AC 3C0F800D */  lui        $t7, %hi(D_800D64F4)
/* C2B0 8000B6B0 8DEF64F4 */  lw         $t7, %lo(D_800D64F4)($t7)
/* C2B4 8000B6B4 44994000 */  mtc1       $t9, $f8
/* C2B8 8000B6B8 46048180 */  add.s      $f6, $f16, $f4
/* C2BC 8000B6BC 00097080 */  sll        $t6, $t1, 2
/* C2C0 8000B6C0 3C018014 */  lui        $at, 0x8014
/* C2C4 8000B6C4 3C198014 */  lui        $t9, %hi(D_8013B658)
/* C2C8 8000B6C8 468044A0 */  cvt.s.w    $f18, $f8
/* C2CC 8000B6CC 8F39B658 */  lw         $t9, %lo(D_8013B658)($t9)
/* C2D0 8000B6D0 002E0821 */  addu       $at, $at, $t6
/* C2D4 8000B6D4 000F4880 */  sll        $t1, $t7, 2
/* C2D8 8000B6D8 3C0E800D */  lui        $t6, %hi(D_800D64F4)
/* C2DC 8000B6DC 012F4823 */  subu       $t1, $t1, $t7
/* C2E0 8000B6E0 8DCE64F4 */  lw         $t6, %lo(D_800D64F4)($t6)
/* C2E4 8000B6E4 E426BD50 */  swc1       $f6, -0x42b0($at)
/* C2E8 8000B6E8 00005012 */  mflo       $t2
/* C2EC 8000B6EC 3C018014 */  lui        $at, 0x8014
/* C2F0 8000B6F0 00094880 */  sll        $t1, $t1, 2
/* C2F4 8000B6F4 01597821 */  addu       $t7, $t2, $t9
/* C2F8 8000B6F8 448F8000 */  mtc1       $t7, $f16
/* C2FC 8000B6FC 00290821 */  addu       $at, $at, $t1
/* C300 8000B700 3C09800D */  lui        $t1, %hi(D_800D64F4)
/* C304 8000B704 000E6080 */  sll        $t4, $t6, 2
/* C308 8000B708 8D2964F4 */  lw         $t1, %lo(D_800D64F4)($t1)
/* C30C 8000B70C E432C200 */  swc1       $f18, -0x3e00($at)
/* C310 8000B710 018E6023 */  subu       $t4, $t4, $t6
/* C314 8000B714 46808120 */  cvt.s.w    $f4, $f16
/* C318 8000B718 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* C31C 8000B71C 000C6080 */  sll        $t4, $t4, 2
/* C320 8000B720 3C018014 */  lui        $at, %hi(D_8013C204)
/* C324 8000B724 002C0821 */  addu       $at, $at, $t4
/* C328 8000B728 00097080 */  sll        $t6, $t1, 2
/* C32C 8000B72C 3C0C800D */  lui        $t4, %hi(D_800D64F4)
/* C330 8000B730 01C97023 */  subu       $t6, $t6, $t1
/* C334 8000B734 E42AC204 */  swc1       $f10, %lo(D_8013C204)($at)
/* C338 8000B738 8D8C64F4 */  lw         $t4, %lo(D_800D64F4)($t4)
/* C33C 8000B73C 3C018014 */  lui        $at, %hi(D_8013C208)
/* C340 8000B740 000E7080 */  sll        $t6, $t6, 2
/* C344 8000B744 002E0821 */  addu       $at, $at, $t6
/* C348 8000B748 E424C208 */  swc1       $f4, %lo(D_8013C208)($at)
/* C34C 8000B74C 3C01800D */  lui        $at, %hi(D_800D64F4)
/* C350 8000B750 25980001 */  addiu      $t8, $t4, 1
/* C354 8000B754 AC3864F4 */  sw         $t8, %lo(D_800D64F4)($at)
/* C358 8000B758 2B01012C */  slti       $at, $t8, 0x12c
/* C35C 8000B75C 1020003B */  beqz       $at, .L8000B84C
/* C360 8000B760 00000000 */   nop
/* C364 8000B764 8FAB0058 */  lw         $t3, 0x58($sp)
/* C368 8000B768 8FAA005C */  lw         $t2, 0x5c($sp)
/* C36C 8000B76C 3C0F8014 */  lui        $t7, %hi(D_8013B730)
/* C370 8000B770 000B4140 */  sll        $t0, $t3, 5
/* C374 8000B774 010B4023 */  subu       $t0, $t0, $t3
/* C378 8000B778 010AC821 */  addu       $t9, $t0, $t2
/* C37C 8000B77C 01F97821 */  addu       $t7, $t7, $t9
/* C380 8000B780 91EFB730 */  lbu        $t7, %lo(D_8013B730)($t7)
/* C384 8000B784 3C0D8014 */  lui        $t5, %hi(D_8013D398)
/* C388 8000B788 95ADD398 */  lhu        $t5, %lo(D_8013D398)($t5)
/* C38C 8000B78C 31E90018 */  andi       $t1, $t7, 0x18
/* C390 8000B790 3C018014 */  lui        $at, %hi(D_8013D398)
/* C394 8000B794 01A97025 */  or         $t6, $t5, $t1
/* C398 8000B798 A42ED398 */  sh         $t6, %lo(D_8013D398)($at)
/* C39C 8000B79C 10000018 */  b          .L8000B800
/* C3A0 8000B7A0 00000000 */   nop
.L8000B7A4:
/* C3A4 8000B7A4 8FB80038 */  lw         $t8, 0x38($sp)
/* C3A8 8000B7A8 3C0C8014 */  lui        $t4, %hi(D_8013B668)
/* C3AC 8000B7AC 8D8CB668 */  lw         $t4, %lo(D_8013B668)($t4)
/* C3B0 8000B7B0 001858C0 */  sll        $t3, $t8, 3
/* C3B4 8000B7B4 018B4021 */  addu       $t0, $t4, $t3
/* C3B8 8000B7B8 810A0007 */  lb         $t2, 7($t0)
/* C3BC 8000B7BC 31590004 */  andi       $t9, $t2, 4
/* C3C0 8000B7C0 13200006 */  beqz       $t9, .L8000B7DC
/* C3C4 8000B7C4 A3AA001F */   sb        $t2, 0x1f($sp)
/* C3C8 8000B7C8 3C0F8014 */  lui        $t7, %hi(D_8013D398)
/* C3CC 8000B7CC 95EFD398 */  lhu        $t7, %lo(D_8013D398)($t7)
/* C3D0 8000B7D0 3C018014 */  lui        $at, %hi(D_8013D398)
/* C3D4 8000B7D4 35ED0008 */  ori        $t5, $t7, 8
/* C3D8 8000B7D8 A42DD398 */  sh         $t5, %lo(D_8013D398)($at)
.L8000B7DC:
/* C3DC 8000B7DC 83A9001F */  lb         $t1, 0x1f($sp)
/* C3E0 8000B7E0 312E0008 */  andi       $t6, $t1, 8
/* C3E4 8000B7E4 11C00006 */  beqz       $t6, .L8000B800
/* C3E8 8000B7E8 00000000 */   nop
/* C3EC 8000B7EC 3C188014 */  lui        $t8, %hi(D_8013D398)
/* C3F0 8000B7F0 9718D398 */  lhu        $t8, %lo(D_8013D398)($t8)
/* C3F4 8000B7F4 3C018014 */  lui        $at, %hi(D_8013D398)
/* C3F8 8000B7F8 370C0010 */  ori        $t4, $t8, 0x10
/* C3FC 8000B7FC A42CD398 */  sh         $t4, %lo(D_8013D398)($at)
.L8000B800:
/* C400 8000B800 8FAB005C */  lw         $t3, 0x5c($sp)
/* C404 8000B804 25680001 */  addiu      $t0, $t3, 1
/* C408 8000B808 2901001F */  slti       $at, $t0, 0x1f
/* C40C 8000B80C 1420FF12 */  bnez       $at, .L8000B458
/* C410 8000B810 AFA8005C */   sw        $t0, 0x5c($sp)
.L8000B814:
/* C414 8000B814 8FAA0058 */  lw         $t2, 0x58($sp)
/* C418 8000B818 25590001 */  addiu      $t9, $t2, 1
/* C41C 8000B81C 2B21001F */  slti       $at, $t9, 0x1f
/* C420 8000B820 1420FF0C */  bnez       $at, .L8000B454
/* C424 8000B824 AFB90058 */   sw        $t9, 0x58($sp)
.L8000B828:
/* C428 8000B828 3C0F8016 */  lui        $t7, %hi(D_8015E858)
/* C42C 8000B82C 91EFE858 */  lbu        $t7, %lo(D_8015E858)($t7)
/* C430 8000B830 11E00006 */  beqz       $t7, .L8000B84C
/* C434 8000B834 00000000 */   nop
/* C438 8000B838 3C04800E */  lui        $a0, %hi(D_800DBAB0)
/* C43C 8000B83C 3C058014 */  lui        $a1, %hi(D_8013D398)
/* C440 8000B840 94A5D398 */  lhu        $a1, %lo(D_8013D398)($a1)
/* C444 8000B844 0C0334EB */  jal        func_800CD3AC
/* C448 8000B848 2484BAB0 */   addiu     $a0, $a0, %lo(D_800DBAB0)
.L8000B84C:
/* C44C 8000B84C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C450 8000B850 27BD0060 */  addiu      $sp, $sp, 0x60
/* C454 8000B854 03E00008 */  jr         $ra
/* C458 8000B858 00000000 */   nop

glabel func_8000B85C
/* C45C 8000B85C 27BDFFF8 */  addiu      $sp, $sp, -8
/* C460 8000B860 3C0F8014 */  lui        $t7, %hi(D_8013BD50)
/* C464 8000B864 25EFBD50 */  addiu      $t7, $t7, %lo(D_8013BD50)
/* C468 8000B868 00047080 */  sll        $t6, $a0, 2
/* C46C 8000B86C 01CFC021 */  addu       $t8, $t6, $t7
/* C470 8000B870 C7040000 */  lwc1       $f4, ($t8)
/* C474 8000B874 0005C880 */  sll        $t9, $a1, 2
/* C478 8000B878 032F4021 */  addu       $t0, $t9, $t7
/* C47C 8000B87C E7A40004 */  swc1       $f4, 4($sp)
/* C480 8000B880 C5060000 */  lwc1       $f6, ($t0)
/* C484 8000B884 00044880 */  sll        $t1, $a0, 2
/* C488 8000B888 012F5021 */  addu       $t2, $t1, $t7
/* C48C 8000B88C E5460000 */  swc1       $f6, ($t2)
/* C490 8000B890 C7A80004 */  lwc1       $f8, 4($sp)
/* C494 8000B894 00055880 */  sll        $t3, $a1, 2
/* C498 8000B898 3C018014 */  lui        $at, 0x8014
/* C49C 8000B89C 3C0D8014 */  lui        $t5, %hi(D_8013D010)
/* C4A0 8000B8A0 002B0821 */  addu       $at, $at, $t3
/* C4A4 8000B8A4 25ADD010 */  addiu      $t5, $t5, %lo(D_8013D010)
/* C4A8 8000B8A8 00046040 */  sll        $t4, $a0, 1
/* C4AC 8000B8AC 018D7021 */  addu       $t6, $t4, $t5
/* C4B0 8000B8B0 E428BD50 */  swc1       $f8, -0x42b0($at)
/* C4B4 8000B8B4 85D80000 */  lh         $t8, ($t6)
/* C4B8 8000B8B8 0005C840 */  sll        $t9, $a1, 1
/* C4BC 8000B8BC 032D4021 */  addu       $t0, $t9, $t5
/* C4C0 8000B8C0 AFB80000 */  sw         $t8, ($sp)
/* C4C4 8000B8C4 85090000 */  lh         $t1, ($t0)
/* C4C8 8000B8C8 00047840 */  sll        $t7, $a0, 1
/* C4CC 8000B8CC 01ED5021 */  addu       $t2, $t7, $t5
/* C4D0 8000B8D0 A5490000 */  sh         $t1, ($t2)
/* C4D4 8000B8D4 8FAB0000 */  lw         $t3, ($sp)
/* C4D8 8000B8D8 3C018014 */  lui        $at, %hi(D_8013D010)
/* C4DC 8000B8DC 00056040 */  sll        $t4, $a1, 1
/* C4E0 8000B8E0 002C0821 */  addu       $at, $at, $t4
/* C4E4 8000B8E4 A42BD010 */  sh         $t3, %lo(D_8013D010)($at)
/* C4E8 8000B8E8 03E00008 */  jr         $ra
/* C4EC 8000B8EC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8000B8F0
/* C4F0 8000B8F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4F4 8000B8F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4F8 8000B8F8 AFA40020 */  sw         $a0, 0x20($sp)
/* C4FC 8000B8FC AFA50024 */  sw         $a1, 0x24($sp)
/* C500 8000B900 AFA60028 */  sw         $a2, 0x28($sp)
/* C504 8000B904 8FAE0024 */  lw         $t6, 0x24($sp)
/* C508 8000B908 8FAF0028 */  lw         $t7, 0x28($sp)
/* C50C 8000B90C 01CF082A */  slt        $at, $t6, $t7
/* C510 8000B910 10200034 */  beqz       $at, .L8000B9E4
/* C514 8000B914 00000000 */   nop
/* C518 8000B918 8FB80024 */  lw         $t8, 0x24($sp)
/* C51C 8000B91C 8FB90028 */  lw         $t9, 0x28($sp)
/* C520 8000B920 03002025 */  or         $a0, $t8, $zero
/* C524 8000B924 03192821 */  addu       $a1, $t8, $t9
/* C528 8000B928 0C002E17 */  jal        func_8000B85C
/* C52C 8000B92C 00052843 */   sra       $a1, $a1, 1
/* C530 8000B930 8FA80024 */  lw         $t0, 0x24($sp)
/* C534 8000B934 8FAA0028 */  lw         $t2, 0x28($sp)
/* C538 8000B938 25090001 */  addiu      $t1, $t0, 1
/* C53C 8000B93C 0149082A */  slt        $at, $t2, $t1
/* C540 8000B940 AFA9001C */  sw         $t1, 0x1c($sp)
/* C544 8000B944 1420001A */  bnez       $at, .L8000B9B0
/* C548 8000B948 AFA80018 */   sw        $t0, 0x18($sp)
.L8000B94C:
/* C54C 8000B94C 8FAB0020 */  lw         $t3, 0x20($sp)
/* C550 8000B950 8FAC001C */  lw         $t4, 0x1c($sp)
/* C554 8000B954 8FAF0024 */  lw         $t7, 0x24($sp)
/* C558 8000B958 000C6880 */  sll        $t5, $t4, 2
/* C55C 8000B95C 000FC080 */  sll        $t8, $t7, 2
/* C560 8000B960 0178C821 */  addu       $t9, $t3, $t8
/* C564 8000B964 016D7021 */  addu       $t6, $t3, $t5
/* C568 8000B968 C5C40000 */  lwc1       $f4, ($t6)
/* C56C 8000B96C C7260000 */  lwc1       $f6, ($t9)
/* C570 8000B970 4604303C */  c.lt.s     $f6, $f4
/* C574 8000B974 00000000 */  nop
/* C578 8000B978 45000007 */  bc1f       .L8000B998
/* C57C 8000B97C 00000000 */   nop
/* C580 8000B980 8FA80018 */  lw         $t0, 0x18($sp)
/* C584 8000B984 01802825 */  or         $a1, $t4, $zero
/* C588 8000B988 25090001 */  addiu      $t1, $t0, 1
/* C58C 8000B98C AFA90018 */  sw         $t1, 0x18($sp)
/* C590 8000B990 0C002E17 */  jal        func_8000B85C
/* C594 8000B994 01202025 */   or        $a0, $t1, $zero
.L8000B998:
/* C598 8000B998 8FAA001C */  lw         $t2, 0x1c($sp)
/* C59C 8000B99C 8FAE0028 */  lw         $t6, 0x28($sp)
/* C5A0 8000B9A0 254D0001 */  addiu      $t5, $t2, 1
/* C5A4 8000B9A4 01CD082A */  slt        $at, $t6, $t5
/* C5A8 8000B9A8 1020FFE8 */  beqz       $at, .L8000B94C
/* C5AC 8000B9AC AFAD001C */   sw        $t5, 0x1c($sp)
.L8000B9B0:
/* C5B0 8000B9B0 8FA40024 */  lw         $a0, 0x24($sp)
/* C5B4 8000B9B4 0C002E17 */  jal        func_8000B85C
/* C5B8 8000B9B8 8FA50018 */   lw        $a1, 0x18($sp)
/* C5BC 8000B9BC 8FA60018 */  lw         $a2, 0x18($sp)
/* C5C0 8000B9C0 8FA40020 */  lw         $a0, 0x20($sp)
/* C5C4 8000B9C4 8FA50024 */  lw         $a1, 0x24($sp)
/* C5C8 8000B9C8 0C002E3C */  jal        func_8000B8F0
/* C5CC 8000B9CC 24C6FFFF */   addiu     $a2, $a2, -1
/* C5D0 8000B9D0 8FA50018 */  lw         $a1, 0x18($sp)
/* C5D4 8000B9D4 8FA40020 */  lw         $a0, 0x20($sp)
/* C5D8 8000B9D8 8FA60028 */  lw         $a2, 0x28($sp)
/* C5DC 8000B9DC 0C002E3C */  jal        func_8000B8F0
/* C5E0 8000B9E0 24A50001 */   addiu     $a1, $a1, 1
.L8000B9E4:
/* C5E4 8000B9E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C5E8 8000B9E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* C5EC 8000B9EC 03E00008 */  jr         $ra
/* C5F0 8000B9F0 00000000 */   nop

glabel func_8000B9F4
/* C5F4 8000B9F4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* C5F8 8000B9F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* C5FC 8000B9FC 3C0E800D */  lui        $t6, %hi(D_800D64F4)
/* C600 8000BA00 8DCE64F4 */  lw         $t6, %lo(D_800D64F4)($t6)
/* C604 8000BA04 AFA00060 */  sw         $zero, 0x60($sp)
/* C608 8000BA08 19C0000D */  blez       $t6, .L8000BA40
/* C60C 8000BA0C 00000000 */   nop
.L8000BA10:
/* C610 8000BA10 8FAF0060 */  lw         $t7, 0x60($sp)
/* C614 8000BA14 8FB90060 */  lw         $t9, 0x60($sp)
/* C618 8000BA18 3C09800D */  lui        $t1, %hi(D_800D64F4)
/* C61C 8000BA1C 8D2964F4 */  lw         $t1, %lo(D_800D64F4)($t1)
/* C620 8000BA20 3C018014 */  lui        $at, %hi(D_8013D010)
/* C624 8000BA24 000FC040 */  sll        $t8, $t7, 1
/* C628 8000BA28 00380821 */  addu       $at, $at, $t8
/* C62C 8000BA2C A42FD010 */  sh         $t7, %lo(D_8013D010)($at)
/* C630 8000BA30 27280001 */  addiu      $t0, $t9, 1
/* C634 8000BA34 0109082A */  slt        $at, $t0, $t1
/* C638 8000BA38 1420FFF5 */  bnez       $at, .L8000BA10
/* C63C 8000BA3C AFA80060 */   sw        $t0, 0x60($sp)
.L8000BA40:
/* C640 8000BA40 AFA00060 */  sw         $zero, 0x60($sp)
.L8000BA44:
/* C644 8000BA44 8FAA0060 */  lw         $t2, 0x60($sp)
/* C648 8000BA48 8FAB0060 */  lw         $t3, 0x60($sp)
/* C64C 8000BA4C 3C018014 */  lui        $at, %hi(D_8013D268)
/* C650 8000BA50 002A0821 */  addu       $at, $at, $t2
/* C654 8000BA54 A020D268 */  sb         $zero, %lo(D_8013D268)($at)
/* C658 8000BA58 256C0001 */  addiu      $t4, $t3, 1
/* C65C 8000BA5C 2981012C */  slti       $at, $t4, 0x12c
/* C660 8000BA60 1420FFF8 */  bnez       $at, .L8000BA44
/* C664 8000BA64 AFAC0060 */   sw        $t4, 0x60($sp)
/* C668 8000BA68 3C06800D */  lui        $a2, %hi(D_800D64F4)
/* C66C 8000BA6C 8CC664F4 */  lw         $a2, %lo(D_800D64F4)($a2)
/* C670 8000BA70 3C048014 */  lui        $a0, %hi(D_8013BD50)
/* C674 8000BA74 2484BD50 */  addiu      $a0, $a0, %lo(D_8013BD50)
/* C678 8000BA78 00002825 */  or         $a1, $zero, $zero
/* C67C 8000BA7C 0C002E3C */  jal        func_8000B8F0
/* C680 8000BA80 24C6FFFF */   addiu     $a2, $a2, -1
/* C684 8000BA84 3C0D8016 */  lui        $t5, %hi(D_8015E84C)
/* C688 8000BA88 81ADE84C */  lb         $t5, %lo(D_8015E84C)($t5)
/* C68C 8000BA8C 3C0E800D */  lui        $t6, %hi(D_800D63D0)
/* C690 8000BA90 24010001 */  addiu      $at, $zero, 1
/* C694 8000BA94 01CD7021 */  addu       $t6, $t6, $t5
/* C698 8000BA98 81CE63D0 */  lb         $t6, %lo(D_800D63D0)($t6)
/* C69C 8000BA9C 15C10004 */  bne        $t6, $at, .L8000BAB0
/* C6A0 8000BAA0 00000000 */   nop
/* C6A4 8000BAA4 240F0001 */  addiu      $t7, $zero, 1
/* C6A8 8000BAA8 10000002 */  b          .L8000BAB4
/* C6AC 8000BAAC AFAF0040 */   sw        $t7, 0x40($sp)
.L8000BAB0:
/* C6B0 8000BAB0 AFA00040 */  sw         $zero, 0x40($sp)
.L8000BAB4:
/* C6B4 8000BAB4 3C18800D */  lui        $t8, %hi(D_800D64F4)
/* C6B8 8000BAB8 8F1864F4 */  lw         $t8, %lo(D_800D64F4)($t8)
/* C6BC 8000BABC AFA00044 */  sw         $zero, 0x44($sp)
/* C6C0 8000BAC0 1B0000ED */  blez       $t8, .L8000BE78
/* C6C4 8000BAC4 00000000 */   nop
.L8000BAC8:
/* C6C8 8000BAC8 8FB90040 */  lw         $t9, 0x40($sp)
/* C6CC 8000BACC 13200004 */  beqz       $t9, .L8000BAE0
/* C6D0 8000BAD0 00000000 */   nop
/* C6D4 8000BAD4 8FA80044 */  lw         $t0, 0x44($sp)
/* C6D8 8000BAD8 10000007 */  b          .L8000BAF8
/* C6DC 8000BADC AFA80060 */   sw        $t0, 0x60($sp)
.L8000BAE0:
/* C6E0 8000BAE0 3C09800D */  lui        $t1, %hi(D_800D64F4)
/* C6E4 8000BAE4 8D2964F4 */  lw         $t1, %lo(D_800D64F4)($t1)
/* C6E8 8000BAE8 8FAA0044 */  lw         $t2, 0x44($sp)
/* C6EC 8000BAEC 012A5823 */  subu       $t3, $t1, $t2
/* C6F0 8000BAF0 256CFFFF */  addiu      $t4, $t3, -1
/* C6F4 8000BAF4 AFAC0060 */  sw         $t4, 0x60($sp)
.L8000BAF8:
/* C6F8 8000BAF8 8FAD0060 */  lw         $t5, 0x60($sp)
/* C6FC 8000BAFC 3C0F8014 */  lui        $t7, %hi(D_8013D010)
/* C700 8000BB00 25EFD010 */  addiu      $t7, $t7, %lo(D_8013D010)
/* C704 8000BB04 000D7040 */  sll        $t6, $t5, 1
/* C708 8000BB08 01CFC021 */  addu       $t8, $t6, $t7
/* C70C 8000BB0C 87190000 */  lh         $t9, ($t8)
/* C710 8000BB10 3C098014 */  lui        $t1, %hi(D_8013BAF8)
/* C714 8000BB14 3C0A8014 */  lui        $t2, %hi(D_8013B668)
/* C718 8000BB18 00194040 */  sll        $t0, $t9, 1
/* C71C 8000BB1C 01284821 */  addu       $t1, $t1, $t0
/* C720 8000BB20 8529BAF8 */  lh         $t1, %lo(D_8013BAF8)($t1)
/* C724 8000BB24 8D4AB668 */  lw         $t2, %lo(D_8013B668)($t2)
/* C728 8000BB28 3C018014 */  lui        $at, 0x8014
/* C72C 8000BB2C 000958C0 */  sll        $t3, $t1, 3
/* C730 8000BB30 AFA9006C */  sw         $t1, 0x6c($sp)
/* C734 8000BB34 014B6021 */  addu       $t4, $t2, $t3
/* C738 8000BB38 818D0006 */  lb         $t5, 6($t4)
/* C73C 8000BB3C AFAD0068 */  sw         $t5, 0x68($sp)
/* C740 8000BB40 818E0005 */  lb         $t6, 5($t4)
/* C744 8000BB44 AFAE0064 */  sw         $t6, 0x64($sp)
/* C748 8000BB48 870F0000 */  lh         $t7, ($t8)
/* C74C 8000BB4C 000FC880 */  sll        $t9, $t7, 2
/* C750 8000BB50 032FC823 */  subu       $t9, $t9, $t7
/* C754 8000BB54 0019C880 */  sll        $t9, $t9, 2
/* C758 8000BB58 00390821 */  addu       $at, $at, $t9
/* C75C 8000BB5C C424C200 */  lwc1       $f4, -0x3e00($at)
/* C760 8000BB60 3C018014 */  lui        $at, 0x8014
/* C764 8000BB64 E7A40054 */  swc1       $f4, 0x54($sp)
/* C768 8000BB68 87080000 */  lh         $t0, ($t8)
/* C76C 8000BB6C 00085080 */  sll        $t2, $t0, 2
/* C770 8000BB70 01485023 */  subu       $t2, $t2, $t0
/* C774 8000BB74 000A5080 */  sll        $t2, $t2, 2
/* C778 8000BB78 002A0821 */  addu       $at, $at, $t2
/* C77C 8000BB7C C426C204 */  lwc1       $f6, -0x3dfc($at)
/* C780 8000BB80 3C018014 */  lui        $at, 0x8014
/* C784 8000BB84 E7A60050 */  swc1       $f6, 0x50($sp)
/* C788 8000BB88 870B0000 */  lh         $t3, ($t8)
/* C78C 8000BB8C 000B6880 */  sll        $t5, $t3, 2
/* C790 8000BB90 01AB6823 */  subu       $t5, $t5, $t3
/* C794 8000BB94 000D6880 */  sll        $t5, $t5, 2
/* C798 8000BB98 002D0821 */  addu       $at, $at, $t5
/* C79C 8000BB9C C428C208 */  lwc1       $f8, -0x3df8($at)
/* C7A0 8000BBA0 112000A6 */  beqz       $t1, .L8000BE3C
/* C7A4 8000BBA4 E7A8004C */   swc1      $f8, 0x4c($sp)
/* C7A8 8000BBA8 8D8E0000 */  lw         $t6, ($t4)
/* C7AC 8000BBAC 11C000A3 */  beqz       $t6, .L8000BE3C
/* C7B0 8000BBB0 AFAE0048 */   sw        $t6, 0x48($sp)
/* C7B4 8000BBB4 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* C7B8 8000BBB8 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* C7BC 8000BBBC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C7C0 8000BBC0 3C08B600 */  lui        $t0, 0xb600
/* C7C4 8000BBC4 AFAF003C */  sw         $t7, 0x3c($sp)
/* C7C8 8000BBC8 8FAA003C */  lw         $t2, 0x3c($sp)
/* C7CC 8000BBCC 25F90008 */  addiu      $t9, $t7, 8
/* C7D0 8000BBD0 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* C7D4 8000BBD4 AD480000 */  sw         $t0, ($t2)
/* C7D8 8000BBD8 8FAB003C */  lw         $t3, 0x3c($sp)
/* C7DC 8000BBDC 24183000 */  addiu      $t8, $zero, 0x3000
/* C7E0 8000BBE0 AD780004 */  sw         $t8, 4($t3)
/* C7E4 8000BBE4 3C01800D */  lui        $at, %hi(D_800D64F0)
/* C7E8 8000BBE8 C43064F0 */  lwc1       $f16, %lo(D_800D64F0)($at)
/* C7EC 8000BBEC C7AA0054 */  lwc1       $f10, 0x54($sp)
/* C7F0 8000BBF0 C7A40050 */  lwc1       $f4, 0x50($sp)
/* C7F4 8000BBF4 C7A8004C */  lwc1       $f8, 0x4c($sp)
/* C7F8 8000BBF8 46105482 */  mul.s      $f18, $f10, $f16
/* C7FC 8000BBFC 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* C800 8000BC00 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* C804 8000BC04 46102182 */  mul.s      $f6, $f4, $f16
/* C808 8000BC08 00000000 */  nop
/* C80C 8000BC0C 46104282 */  mul.s      $f10, $f8, $f16
/* C810 8000BC10 44059000 */  mfc1       $a1, $f18
/* C814 8000BC14 44063000 */  mfc1       $a2, $f6
/* C818 8000BC18 44075000 */  mfc1       $a3, $f10
/* C81C 8000BC1C 0C034602 */  jal        func_800D1808
/* C820 8000BC20 00000000 */   nop
/* C824 8000BC24 8FAD0064 */  lw         $t5, 0x64($sp)
/* C828 8000BC28 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* C82C 8000BC2C 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* C830 8000BC30 44809000 */  mtc1       $zero, $f18
/* C834 8000BC34 3C05800D */  lui        $a1, %hi(D_800D6508)
/* C838 8000BC38 000D4880 */  sll        $t1, $t5, 2
/* C83C 8000BC3C 00A92821 */  addu       $a1, $a1, $t1
/* C840 8000BC40 8CA56508 */  lw         $a1, %lo(D_800D6508)($a1)
/* C844 8000BC44 24060000 */  addiu      $a2, $zero, 0
/* C848 8000BC48 3C073F80 */  lui        $a3, 0x3f80
/* C84C 8000BC4C 24840040 */  addiu      $a0, $a0, 0x40
/* C850 8000BC50 0C033A45 */  jal        func_800CE914
/* C854 8000BC54 E7B20010 */   swc1      $f18, 0x10($sp)
/* C858 8000BC58 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* C85C 8000BC5C 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* C860 8000BC60 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C864 8000BC64 3C0F0102 */  lui        $t7, 0x102
/* C868 8000BC68 AFAC0038 */  sw         $t4, 0x38($sp)
/* C86C 8000BC6C 8FB90038 */  lw         $t9, 0x38($sp)
/* C870 8000BC70 258E0008 */  addiu      $t6, $t4, 8
/* C874 8000BC74 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* C878 8000BC78 35EF0040 */  ori        $t7, $t7, 0x40
/* C87C 8000BC7C AF2F0000 */  sw         $t7, ($t9)
/* C880 8000BC80 3C08800F */  lui        $t0, %hi(D_800F2A68)
/* C884 8000BC84 8D082A68 */  lw         $t0, %lo(D_800F2A68)($t0)
/* C888 8000BC88 8FAA0038 */  lw         $t2, 0x38($sp)
/* C88C 8000BC8C 3C18800F */  lui        $t8, %hi(D_800F2A68)
/* C890 8000BC90 3C01800F */  lui        $at, %hi(D_800F2A68)
/* C894 8000BC94 AD480004 */  sw         $t0, 4($t2)
/* C898 8000BC98 8F182A68 */  lw         $t8, %lo(D_800F2A68)($t8)
/* C89C 8000BC9C 270B0040 */  addiu      $t3, $t8, 0x40
/* C8A0 8000BCA0 AC2B2A68 */  sw         $t3, %lo(D_800F2A68)($at)
/* C8A4 8000BCA4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* C8A8 8000BCA8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* C8AC 8000BCAC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C8B0 8000BCB0 3C0C0100 */  lui        $t4, 0x100
/* C8B4 8000BCB4 AFAD0034 */  sw         $t5, 0x34($sp)
/* C8B8 8000BCB8 8FAE0034 */  lw         $t6, 0x34($sp)
/* C8BC 8000BCBC 25A90008 */  addiu      $t1, $t5, 8
/* C8C0 8000BCC0 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* C8C4 8000BCC4 358C0040 */  ori        $t4, $t4, 0x40
/* C8C8 8000BCC8 ADCC0000 */  sw         $t4, ($t6)
/* C8CC 8000BCCC 8FA80034 */  lw         $t0, 0x34($sp)
/* C8D0 8000BCD0 3C0F8014 */  lui        $t7, %hi(D_8013B6C0)
/* C8D4 8000BCD4 25EFB6C0 */  addiu      $t7, $t7, %lo(D_8013B6C0)
/* C8D8 8000BCD8 3C018000 */  lui        $at, 0x8000
/* C8DC 8000BCDC 01E1C821 */  addu       $t9, $t7, $at
/* C8E0 8000BCE0 AD190004 */  sw         $t9, 4($t0)
/* C8E4 8000BCE4 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* C8E8 8000BCE8 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* C8EC 8000BCEC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C8F0 8000BCF0 3C0B0100 */  lui        $t3, 0x100
/* C8F4 8000BCF4 AFAA0030 */  sw         $t2, 0x30($sp)
/* C8F8 8000BCF8 8FAD0030 */  lw         $t5, 0x30($sp)
/* C8FC 8000BCFC 25580008 */  addiu      $t8, $t2, 8
/* C900 8000BD00 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* C904 8000BD04 356B0040 */  ori        $t3, $t3, 0x40
/* C908 8000BD08 ADAB0000 */  sw         $t3, ($t5)
/* C90C 8000BD0C 3C09800F */  lui        $t1, %hi(D_800F2A68)
/* C910 8000BD10 8D292A68 */  lw         $t1, %lo(D_800F2A68)($t1)
/* C914 8000BD14 8FAC0030 */  lw         $t4, 0x30($sp)
/* C918 8000BD18 3C0E800F */  lui        $t6, %hi(D_800F2A68)
/* C91C 8000BD1C 3C01800F */  lui        $at, %hi(D_800F2A68)
/* C920 8000BD20 AD890004 */  sw         $t1, 4($t4)
/* C924 8000BD24 8DCE2A68 */  lw         $t6, %lo(D_800F2A68)($t6)
/* C928 8000BD28 25CF0040 */  addiu      $t7, $t6, 0x40
/* C92C 8000BD2C AC2F2A68 */  sw         $t7, %lo(D_800F2A68)($at)
/* C930 8000BD30 8FB90068 */  lw         $t9, 0x68($sp)
/* C934 8000BD34 3C0A800D */  lui        $t2, %hi(D_800D64E0)
/* C938 8000BD38 00194080 */  sll        $t0, $t9, 2
/* C93C 8000BD3C 01485021 */  addu       $t2, $t2, $t0
/* C940 8000BD40 8D4A64E0 */  lw         $t2, %lo(D_800D64E0)($t2)
/* C944 8000BD44 11400020 */  beqz       $t2, .L8000BDC8
/* C948 8000BD48 00000000 */   nop
/* C94C 8000BD4C 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* C950 8000BD50 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* C954 8000BD54 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C958 8000BD58 3C0DB700 */  lui        $t5, 0xb700
/* C95C 8000BD5C AFB8002C */  sw         $t8, 0x2c($sp)
/* C960 8000BD60 8FA9002C */  lw         $t1, 0x2c($sp)
/* C964 8000BD64 270B0008 */  addiu      $t3, $t8, 8
/* C968 8000BD68 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* C96C 8000BD6C AD2D0000 */  sw         $t5, ($t1)
/* C970 8000BD70 8FAE002C */  lw         $t6, 0x2c($sp)
/* C974 8000BD74 240C1000 */  addiu      $t4, $zero, 0x1000
/* C978 8000BD78 ADCC0004 */  sw         $t4, 4($t6)
/* C97C 8000BD7C 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* C980 8000BD80 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* C984 8000BD84 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C988 8000BD88 3C080100 */  lui        $t0, 0x100
/* C98C 8000BD8C AFAF0028 */  sw         $t7, 0x28($sp)
/* C990 8000BD90 8FAA0028 */  lw         $t2, 0x28($sp)
/* C994 8000BD94 25F90008 */  addiu      $t9, $t7, 8
/* C998 8000BD98 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* C99C 8000BD9C 35080040 */  ori        $t0, $t0, 0x40
/* C9A0 8000BDA0 AD480000 */  sw         $t0, ($t2)
/* C9A4 8000BDA4 8FB80068 */  lw         $t8, 0x68($sp)
/* C9A8 8000BDA8 3C0D800D */  lui        $t5, %hi(D_800D64E0)
/* C9AC 8000BDAC 8FA90028 */  lw         $t1, 0x28($sp)
/* C9B0 8000BDB0 00185880 */  sll        $t3, $t8, 2
/* C9B4 8000BDB4 01AB6821 */  addu       $t5, $t5, $t3
/* C9B8 8000BDB8 8DAD64E0 */  lw         $t5, %lo(D_800D64E0)($t5)
/* C9BC 8000BDBC AD2D0004 */  sw         $t5, 4($t1)
/* C9C0 8000BDC0 1000000D */  b          .L8000BDF8
/* C9C4 8000BDC4 00000000 */   nop
.L8000BDC8:
/* C9C8 8000BDC8 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* C9CC 8000BDCC 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* C9D0 8000BDD0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* C9D4 8000BDD4 3C0FB700 */  lui        $t7, 0xb700
/* C9D8 8000BDD8 AFAC0024 */  sw         $t4, 0x24($sp)
/* C9DC 8000BDDC 8FB90024 */  lw         $t9, 0x24($sp)
/* C9E0 8000BDE0 258E0008 */  addiu      $t6, $t4, 8
/* C9E4 8000BDE4 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* C9E8 8000BDE8 AF2F0000 */  sw         $t7, ($t9)
/* C9EC 8000BDEC 8FAA0024 */  lw         $t2, 0x24($sp)
/* C9F0 8000BDF0 24082000 */  addiu      $t0, $zero, 0x2000
/* C9F4 8000BDF4 AD480004 */  sw         $t0, 4($t2)
.L8000BDF8:
/* C9F8 8000BDF8 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* C9FC 8000BDFC 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* CA00 8000BE00 3C01800F */  lui        $at, %hi(D_800F2A64)
/* CA04 8000BE04 3C0D0600 */  lui        $t5, 0x600
/* CA08 8000BE08 AFB80020 */  sw         $t8, 0x20($sp)
/* CA0C 8000BE0C 8FA90020 */  lw         $t1, 0x20($sp)
/* CA10 8000BE10 270B0008 */  addiu      $t3, $t8, 8
/* CA14 8000BE14 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* CA18 8000BE18 AD2D0000 */  sw         $t5, ($t1)
/* CA1C 8000BE1C 8FAE0020 */  lw         $t6, 0x20($sp)
/* CA20 8000BE20 8FAC0048 */  lw         $t4, 0x48($sp)
/* CA24 8000BE24 ADCC0004 */  sw         $t4, 4($t6)
/* CA28 8000BE28 3C0F8014 */  lui        $t7, %hi(D_8013D394)
/* CA2C 8000BE2C 8DEFD394 */  lw         $t7, %lo(D_8013D394)($t7)
/* CA30 8000BE30 3C018014 */  lui        $at, %hi(D_8013D394)
/* CA34 8000BE34 25F90001 */  addiu      $t9, $t7, 1
/* CA38 8000BE38 AC39D394 */  sw         $t9, %lo(D_8013D394)($at)
.L8000BE3C:
/* CA3C 8000BE3C 8FA8006C */  lw         $t0, 0x6c($sp)
/* CA40 8000BE40 2901012C */  slti       $at, $t0, 0x12c
/* CA44 8000BE44 10200004 */  beqz       $at, .L8000BE58
/* CA48 8000BE48 3C018014 */   lui       $at, %hi(D_8013D268)
/* CA4C 8000BE4C 00280821 */  addu       $at, $at, $t0
/* CA50 8000BE50 240A0001 */  addiu      $t2, $zero, 1
/* CA54 8000BE54 A02AD268 */  sb         $t2, %lo(D_8013D268)($at)
.L8000BE58:
/* CA58 8000BE58 8FB80044 */  lw         $t8, 0x44($sp)
/* CA5C 8000BE5C 3C0D800D */  lui        $t5, %hi(D_800D64F4)
/* CA60 8000BE60 8DAD64F4 */  lw         $t5, %lo(D_800D64F4)($t5)
/* CA64 8000BE64 270B0001 */  addiu      $t3, $t8, 1
/* CA68 8000BE68 AFAB0044 */  sw         $t3, 0x44($sp)
/* CA6C 8000BE6C 016D082A */  slt        $at, $t3, $t5
/* CA70 8000BE70 1420FF15 */  bnez       $at, .L8000BAC8
/* CA74 8000BE74 00000000 */   nop
.L8000BE78:
/* CA78 8000BE78 8FBF001C */  lw         $ra, 0x1c($sp)
/* CA7C 8000BE7C 27BD0070 */  addiu      $sp, $sp, 0x70
/* CA80 8000BE80 03E00008 */  jr         $ra
/* CA84 8000BE84 00000000 */   nop

glabel func_8000BE88
/* CA88 8000BE88 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* CA8C 8000BE8C AFBF002C */  sw         $ra, 0x2c($sp)
/* CA90 8000BE90 AFA60048 */  sw         $a2, 0x48($sp)
/* CA94 8000BE94 AFA7004C */  sw         $a3, 0x4c($sp)
/* CA98 8000BE98 E7AC0040 */  swc1       $f12, 0x40($sp)
/* CA9C 8000BE9C E7AE0044 */  swc1       $f14, 0x44($sp)
/* CAA0 8000BEA0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* CAA4 8000BEA4 C7A40048 */  lwc1       $f4, 0x48($sp)
/* CAA8 8000BEA8 44803000 */  mtc1       $zero, $f6
/* CAAC 8000BEAC 00000000 */  nop
/* CAB0 8000BEB0 46062032 */  c.eq.s     $f4, $f6
/* CAB4 8000BEB4 00000000 */  nop
/* CAB8 8000BEB8 45000003 */  bc1f       .L8000BEC8
/* CABC 8000BEBC 00000000 */   nop
/* CAC0 8000BEC0 10000026 */  b          .L8000BF5C
/* CAC4 8000BEC4 00001025 */   or        $v0, $zero, $zero
.L8000BEC8:
/* CAC8 8000BEC8 C7A80044 */  lwc1       $f8, 0x44($sp)
/* CACC 8000BECC C7AA0040 */  lwc1       $f10, 0x40($sp)
/* CAD0 8000BED0 C7AC0048 */  lwc1       $f12, 0x48($sp)
/* CAD4 8000BED4 460A4401 */  sub.s      $f16, $f8, $f10
/* CAD8 8000BED8 0C033F18 */  jal        func_800CFC60
/* CADC 8000BEDC E7B00038 */   swc1      $f16, 0x38($sp)
/* CAE0 8000BEE0 46000506 */  mov.s      $f20, $f0
/* CAE4 8000BEE4 0C02F904 */  jal        func_800BE410
/* CAE8 8000BEE8 C7AC0048 */   lwc1      $f12, 0x48($sp)
/* CAEC 8000BEEC C7B20038 */  lwc1       $f18, 0x38($sp)
/* CAF0 8000BEF0 3C0E8016 */  lui        $t6, %hi(D_8015E858)
/* CAF4 8000BEF4 91CEE858 */  lbu        $t6, %lo(D_8015E858)($t6)
/* CAF8 8000BEF8 46009103 */  div.s      $f4, $f18, $f0
/* CAFC 8000BEFC 46142182 */  mul.s      $f6, $f4, $f20
/* CB00 8000BF00 11C0000D */  beqz       $t6, .L8000BF38
/* CB04 8000BF04 E7A6003C */   swc1      $f6, 0x3c($sp)
/* CB08 8000BF08 C7A80040 */  lwc1       $f8, 0x40($sp)
/* CB0C 8000BF0C C7B00044 */  lwc1       $f16, 0x44($sp)
/* CB10 8000BF10 46003121 */  cvt.d.s    $f4, $f6
/* CB14 8000BF14 460042A1 */  cvt.d.s    $f10, $f8
/* CB18 8000BF18 460084A1 */  cvt.d.s    $f18, $f16
/* CB1C 8000BF1C 44075000 */  mfc1       $a3, $f10
/* CB20 8000BF20 44065800 */  mfc1       $a2, $f11
/* CB24 8000BF24 3C04800E */  lui        $a0, %hi(D_800DBAC0)
/* CB28 8000BF28 2484BAC0 */  addiu      $a0, $a0, %lo(D_800DBAC0)
/* CB2C 8000BF2C F7B20010 */  sdc1       $f18, 0x10($sp)
/* CB30 8000BF30 0C0334EB */  jal        func_800CD3AC
/* CB34 8000BF34 F7A40018 */   sdc1      $f4, 0x18($sp)
.L8000BF38:
/* CB38 8000BF38 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* CB3C 8000BF3C C7AA004C */  lwc1       $f10, 0x4c($sp)
/* CB40 8000BF40 4608503C */  c.lt.s     $f10, $f8
/* CB44 8000BF44 00000000 */  nop
/* CB48 8000BF48 45000003 */  bc1f       .L8000BF58
/* CB4C 8000BF4C 00000000 */   nop
/* CB50 8000BF50 10000002 */  b          .L8000BF5C
/* CB54 8000BF54 00001025 */   or        $v0, $zero, $zero
.L8000BF58:
/* CB58 8000BF58 24020001 */  addiu      $v0, $zero, 1
.L8000BF5C:
/* CB5C 8000BF5C 8FBF002C */  lw         $ra, 0x2c($sp)
/* CB60 8000BF60 D7B40020 */  ldc1       $f20, 0x20($sp)
/* CB64 8000BF64 27BD0040 */  addiu      $sp, $sp, 0x40
/* CB68 8000BF68 03E00008 */  jr         $ra
/* CB6C 8000BF6C 00000000 */   nop

glabel func_8000BF70
/* CB70 8000BF70 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* CB74 8000BF74 AFBF0024 */  sw         $ra, 0x24($sp)
/* CB78 8000BF78 AFA40060 */  sw         $a0, 0x60($sp)
/* CB7C 8000BF7C AFA50064 */  sw         $a1, 0x64($sp)
/* CB80 8000BF80 AFA60068 */  sw         $a2, 0x68($sp)
/* CB84 8000BF84 AFA7006C */  sw         $a3, 0x6c($sp)
/* CB88 8000BF88 8FAF0068 */  lw         $t7, 0x68($sp)
/* CB8C 8000BF8C 8FAE0078 */  lw         $t6, 0x78($sp)
/* CB90 8000BF90 19E0006E */  blez       $t7, .L8000C14C
/* CB94 8000BF94 AFAE005C */   sw        $t6, 0x5c($sp)
/* CB98 8000BF98 95D80024 */  lhu        $t8, 0x24($t6)
/* CB9C 8000BF9C 3C0A8014 */  lui        $t2, %hi(D_8013B650)
/* CBA0 8000BFA0 8D4AB650 */  lw         $t2, %lo(D_8013B650)($t2)
/* CBA4 8000BFA4 01F8001A */  div        $zero, $t7, $t8
/* CBA8 8000BFA8 0000C812 */  mflo       $t9
/* CBAC 8000BFAC 8FA90064 */  lw         $t1, 0x64($sp)
/* CBB0 8000BFB0 8FAC006C */  lw         $t4, 0x6c($sp)
/* CBB4 8000BFB4 17000002 */  bnez       $t8, .L8000BFC0
/* CBB8 8000BFB8 00000000 */   nop
/* CBBC 8000BFBC 0007000D */  break      7
.L8000BFC0:
/* CBC0 8000BFC0 2401FFFF */   addiu     $at, $zero, -1
/* CBC4 8000BFC4 17010004 */  bne        $t8, $at, .L8000BFD8
/* CBC8 8000BFC8 3C018000 */   lui       $at, 0x8000
/* CBCC 8000BFCC 15E10002 */  bne        $t7, $at, .L8000BFD8
/* CBD0 8000BFD0 00000000 */   nop
/* CBD4 8000BFD4 0006000D */  break      6
.L8000BFD8:
/* CBD8 8000BFD8 012A001A */   div       $zero, $t1, $t2
/* CBDC 8000BFDC 00005812 */  mflo       $t3
/* CBE0 8000BFE0 27280001 */  addiu      $t0, $t9, 1
/* CBE4 8000BFE4 AFA80044 */  sw         $t0, 0x44($sp)
/* CBE8 8000BFE8 018A001A */  div        $zero, $t4, $t2
/* CBEC 8000BFEC 15400002 */  bnez       $t2, .L8000BFF8
/* CBF0 8000BFF0 00000000 */   nop
/* CBF4 8000BFF4 0007000D */  break      7
.L8000BFF8:
/* CBF8 8000BFF8 2401FFFF */   addiu     $at, $zero, -1
/* CBFC 8000BFFC 15410004 */  bne        $t2, $at, .L8000C010
/* CC00 8000C000 3C018000 */   lui       $at, 0x8000
/* CC04 8000C004 15210002 */  bne        $t1, $at, .L8000C010
/* CC08 8000C008 00000000 */   nop
/* CC0C 8000C00C 0006000D */  break      6
.L8000C010:
/* CC10 8000C010 00006812 */   mflo      $t5
/* CC14 8000C014 AFAB004C */  sw         $t3, 0x4c($sp)
/* CC18 8000C018 AFAD0048 */  sw         $t5, 0x48($sp)
/* CC1C 8000C01C 8DCF0018 */  lw         $t7, 0x18($t6)
/* CC20 8000C020 15400002 */  bnez       $t2, .L8000C02C
/* CC24 8000C024 00000000 */   nop
/* CC28 8000C028 0007000D */  break      7
.L8000C02C:
/* CC2C 8000C02C 2401FFFF */   addiu     $at, $zero, -1
/* CC30 8000C030 15410004 */  bne        $t2, $at, .L8000C044
/* CC34 8000C034 3C018000 */   lui       $at, 0x8000
/* CC38 8000C038 15810002 */  bne        $t4, $at, .L8000C044
/* CC3C 8000C03C 00000000 */   nop
/* CC40 8000C040 0006000D */  break      6
.L8000C044:
/* CC44 8000C044 AFAF0050 */   sw        $t7, 0x50($sp)
/* CC48 8000C048 8DD8001C */  lw         $t8, 0x1c($t6)
/* CC4C 8000C04C 3C018014 */  lui        $at, %hi(D_8013B668)
/* CC50 8000C050 3C04801C */  lui        $a0, 0x801c
/* CC54 8000C054 AC38B668 */  sw         $t8, %lo(D_8013B668)($at)
/* CC58 8000C058 95D90010 */  lhu        $t9, 0x10($t6)
/* CC5C 8000C05C 24010032 */  addiu      $at, $zero, 0x32
/* CC60 8000C060 3C05800E */  lui        $a1, %hi(D_800DBAEC)
/* CC64 8000C064 AFB90040 */  sw         $t9, 0x40($sp)
/* CC68 8000C068 8FB90040 */  lw         $t9, 0x40($sp)
/* CC6C 8000C06C 95D80012 */  lhu        $t8, 0x12($t6)
/* CC70 8000C070 24A5BAEC */  addiu      $a1, $a1, %lo(D_800DBAEC)
/* CC74 8000C074 01B90019 */  multu      $t5, $t9
/* CC78 8000C078 AFB8003C */  sw         $t8, 0x3c($sp)
/* CC7C 8000C07C 2519FFFF */  addiu      $t9, $t0, -1
/* CC80 8000C080 248461C8 */  addiu      $a0, $a0, 0x61c8
/* CC84 8000C084 01003025 */  or         $a2, $t0, $zero
/* CC88 8000C088 00007012 */  mflo       $t6
/* CC8C 8000C08C 01CBC021 */  addu       $t8, $t6, $t3
/* CC90 8000C090 8FAE0040 */  lw         $t6, 0x40($sp)
/* CC94 8000C094 032E0019 */  multu      $t9, $t6
/* CC98 8000C098 8FAE003C */  lw         $t6, 0x3c($sp)
/* CC9C 8000C09C 0000C812 */  mflo       $t9
/* CCA0 8000C0A0 00000000 */  nop
/* CCA4 8000C0A4 00000000 */  nop
/* CCA8 8000C0A8 032E0019 */  multu      $t9, $t6
/* CCAC 8000C0AC 0000C812 */  mflo       $t9
/* CCB0 8000C0B0 03197021 */  addu       $t6, $t8, $t9
/* CCB4 8000C0B4 000EC040 */  sll        $t8, $t6, 1
/* CCB8 8000C0B8 016A0019 */  multu      $t3, $t2
/* CCBC 8000C0BC 01F8C821 */  addu       $t9, $t7, $t8
/* CCC0 8000C0C0 972E0000 */  lhu        $t6, ($t9)
/* CCC4 8000C0C4 3C0F8014 */  lui        $t7, %hi(D_8013B668)
/* CCC8 8000C0C8 8DEFB668 */  lw         $t7, %lo(D_8013B668)($t7)
/* CCCC 8000C0CC AFAE0038 */  sw         $t6, 0x38($sp)
/* CCD0 8000C0D0 8FB80038 */  lw         $t8, 0x38($sp)
/* CCD4 8000C0D4 0018C8C0 */  sll        $t9, $t8, 3
/* CCD8 8000C0D8 01F97021 */  addu       $t6, $t7, $t9
/* CCDC 8000C0DC 00007812 */  mflo       $t7
/* CCE0 8000C0E0 012FC823 */  subu       $t9, $t1, $t7
/* CCE4 8000C0E4 81D80005 */  lb         $t8, 5($t6)
/* CCE8 8000C0E8 0321001A */  div        $zero, $t9, $at
/* CCEC 8000C0EC 00007012 */  mflo       $t6
/* CCF0 8000C0F0 AFB80034 */  sw         $t8, 0x34($sp)
/* CCF4 8000C0F4 8FB90038 */  lw         $t9, 0x38($sp)
/* CCF8 8000C0F8 01AA0019 */  multu      $t5, $t2
/* CCFC 8000C0FC 3C0F8014 */  lui        $t7, %hi(D_8013B668)
/* CD00 8000C100 8DEFB668 */  lw         $t7, %lo(D_8013B668)($t7)
/* CD04 8000C104 001968C0 */  sll        $t5, $t9, 3
/* CD08 8000C108 AFAE004C */  sw         $t6, 0x4c($sp)
/* CD0C 8000C10C 01ED5021 */  addu       $t2, $t7, $t5
/* CD10 8000C110 01C03825 */  or         $a3, $t6, $zero
/* CD14 8000C114 0000C012 */  mflo       $t8
/* CD18 8000C118 01985823 */  subu       $t3, $t4, $t8
/* CD1C 8000C11C 00000000 */  nop
/* CD20 8000C120 0161001A */  div        $zero, $t3, $at
/* CD24 8000C124 00004812 */  mflo       $t1
/* CD28 8000C128 AFA90048 */  sw         $t1, 0x48($sp)
/* CD2C 8000C12C AFA90010 */  sw         $t1, 0x10($sp)
/* CD30 8000C130 914C0004 */  lbu        $t4, 4($t2)
/* CD34 8000C134 3C0B8016 */  lui        $t3, %hi(D_8015E864)
/* CD38 8000C138 8D6BE864 */  lw         $t3, %lo(D_8015E864)($t3)
/* CD3C 8000C13C 25980001 */  addiu      $t8, $t4, 1
/* CD40 8000C140 AFB80014 */  sw         $t8, 0x14($sp)
/* CD44 8000C144 0C03313D */  jal        func_800CC4F4
/* CD48 8000C148 AFAB0018 */   sw        $t3, 0x18($sp)
.L8000C14C:
/* CD4C 8000C14C 8FA8005C */  lw         $t0, 0x5c($sp)
/* CD50 8000C150 3C01800D */  lui        $at, %hi(D_800D64F4)
/* CD54 8000C154 AC2064F4 */  sw         $zero, %lo(D_800D64F4)($at)
/* CD58 8000C158 8D0E0018 */  lw         $t6, 0x18($t0)
/* CD5C 8000C15C 3C018014 */  lui        $at, %hi(D_8013B664)
/* CD60 8000C160 8FAD0068 */  lw         $t5, 0x68($sp)
/* CD64 8000C164 AC2EB664 */  sw         $t6, %lo(D_8013B664)($at)
/* CD68 8000C168 8D09001C */  lw         $t1, 0x1c($t0)
/* CD6C 8000C16C 3C018014 */  lui        $at, %hi(D_8013B668)
/* CD70 8000C170 3C078014 */  lui        $a3, %hi(D_8013B65C)
/* CD74 8000C174 AC29B668 */  sw         $t1, %lo(D_8013B668)($at)
/* CD78 8000C178 95190010 */  lhu        $t9, 0x10($t0)
/* CD7C 8000C17C 3C018014 */  lui        $at, %hi(D_8013B670)
/* CD80 8000C180 8CE7B65C */  lw         $a3, %lo(D_8013B65C)($a3)
/* CD84 8000C184 AC39B670 */  sw         $t9, %lo(D_8013B670)($at)
/* CD88 8000C188 950F0012 */  lhu        $t7, 0x12($t0)
/* CD8C 8000C18C 3C018014 */  lui        $at, %hi(D_8013B674)
/* CD90 8000C190 8FA60074 */  lw         $a2, 0x74($sp)
/* CD94 8000C194 AC2FB674 */  sw         $t7, %lo(D_8013B674)($at)
/* CD98 8000C198 950A0024 */  lhu        $t2, 0x24($t0)
/* CD9C 8000C19C 01AA001A */  div        $zero, $t5, $t2
/* CDA0 8000C1A0 15400002 */  bnez       $t2, .L8000C1AC
/* CDA4 8000C1A4 00000000 */   nop
/* CDA8 8000C1A8 0007000D */  break      7
.L8000C1AC:
/* CDAC 8000C1AC 2401FFFF */   addiu     $at, $zero, -1
/* CDB0 8000C1B0 15410004 */  bne        $t2, $at, .L8000C1C4
/* CDB4 8000C1B4 3C018000 */   lui       $at, 0x8000
/* CDB8 8000C1B8 15A10002 */  bne        $t5, $at, .L8000C1C4
/* CDBC 8000C1BC 00000000 */   nop
/* CDC0 8000C1C0 0006000D */  break      6
.L8000C1C4:
/* CDC4 8000C1C4 00006012 */   mflo      $t4
/* CDC8 8000C1C8 25980001 */  addiu      $t8, $t4, 1
/* CDCC 8000C1CC 3C018014 */  lui        $at, %hi(D_8013B66C)
/* CDD0 8000C1D0 AC38B66C */  sw         $t8, %lo(D_8013B66C)($at)
/* CDD4 8000C1D4 950E0024 */  lhu        $t6, 0x24($t0)
/* CDD8 8000C1D8 270BFFFF */  addiu      $t3, $t8, -1
/* CDDC 8000C1DC 3C018014 */  lui        $at, 0x8014
/* CDE0 8000C1E0 016E0019 */  multu      $t3, $t6
/* CDE4 8000C1E4 8FB80064 */  lw         $t8, 0x64($sp)
/* CDE8 8000C1E8 8FA8006C */  lw         $t0, 0x6c($sp)
/* CDEC 8000C1EC 3C0C8014 */  lui        $t4, 0x8014
/* CDF0 8000C1F0 44982000 */  mtc1       $t8, $f4
/* CDF4 8000C1F4 44883000 */  mtc1       $t0, $f6
/* CDF8 8000C1F8 46802320 */  cvt.s.w    $f12, $f4
/* CDFC 8000C1FC 00004812 */  mflo       $t1
/* CE00 8000C200 AFA90054 */  sw         $t1, 0x54($sp)
/* CE04 8000C204 468033A0 */  cvt.s.w    $f14, $f6
/* CE08 8000C208 01790019 */  multu      $t3, $t9
/* CE0C 8000C20C 00006812 */  mflo       $t5
/* CE10 8000C210 00000000 */  nop
/* CE14 8000C214 00000000 */  nop
/* CE18 8000C218 01AF0019 */  multu      $t5, $t7
/* CE1C 8000C21C 00005012 */  mflo       $t2
/* CE20 8000C220 AC2AB678 */  sw         $t2, -0x4988($at)
/* CE24 8000C224 3C018014 */  lui        $at, %hi(D_8013D398)
/* CE28 8000C228 A420D398 */  sh         $zero, %lo(D_8013D398)($at)
/* CE2C 8000C22C 958CD398 */  lhu        $t4, -0x2c68($t4)
/* CE30 8000C230 3C018014 */  lui        $at, %hi(D_8013D394)
/* CE34 8000C234 0C002C58 */  jal        func_8000B160
/* CE38 8000C238 AC2CD394 */   sw        $t4, %lo(D_8013D394)($at)
/* CE3C 8000C23C 240E0001 */  addiu      $t6, $zero, 1
/* CE40 8000C240 3C018014 */  lui        $at, %hi(D_8013B660)
/* CE44 8000C244 AC2EB660 */  sw         $t6, %lo(D_8013B660)($at)
/* CE48 8000C248 8FA40064 */  lw         $a0, 0x64($sp)
/* CE4C 8000C24C 8FA50068 */  lw         $a1, 0x68($sp)
/* CE50 8000C250 8FA6006C */  lw         $a2, 0x6c($sp)
/* CE54 8000C254 8FA7005C */  lw         $a3, 0x5c($sp)
/* CE58 8000C258 0C002CB9 */  jal        func_8000B2E4
/* CE5C 8000C25C AFA00010 */   sw        $zero, 0x10($sp)
/* CE60 8000C260 3C098014 */  lui        $t1, %hi(D_8013D398)
/* CE64 8000C264 9529D398 */  lhu        $t1, %lo(D_8013D398)($t1)
/* CE68 8000C268 3C018014 */  lui        $at, %hi(D_8013B660)
/* CE6C 8000C26C AC20B660 */  sw         $zero, %lo(D_8013B660)($at)
/* CE70 8000C270 1120025B */  beqz       $t1, .L8000CBE0
/* CE74 8000C274 3C018014 */   lui       $at, %hi(D_8013D39A)
/* CE78 8000C278 8FB9005C */  lw         $t9, 0x5c($sp)
/* CE7C 8000C27C A429D39A */  sh         $t1, %lo(D_8013D39A)($at)
/* CE80 8000C280 3C01802C */  lui        $at, 0x802c
/* CE84 8000C284 240B0001 */  addiu      $t3, $zero, 1
/* CE88 8000C288 342115C0 */  ori        $at, $at, 0x15c0
/* CE8C 8000C28C 17210002 */  bne        $t9, $at, .L8000C298
/* CE90 8000C290 AFAB002C */   sw        $t3, 0x2c($sp)
/* CE94 8000C294 AFA0002C */  sw         $zero, 0x2c($sp)
.L8000C298:
/* CE98 8000C298 3C0D8014 */  lui        $t5, %hi(D_8013D39A)
/* CE9C 8000C29C 95ADD39A */  lhu        $t5, %lo(D_8013D39A)($t5)
/* CEA0 8000C2A0 31AF0010 */  andi       $t7, $t5, 0x10
/* CEA4 8000C2A4 11E0012A */  beqz       $t7, .L8000C750
/* CEA8 8000C2A8 3C01C1F8 */   lui       $at, 0xc1f8
/* CEAC 8000C2AC 44815000 */  mtc1       $at, $f10
/* CEB0 8000C2B0 C7A80070 */  lwc1       $f8, 0x70($sp)
/* CEB4 8000C2B4 4608503E */  c.le.s     $f10, $f8
/* CEB8 8000C2B8 00000000 */  nop
/* CEBC 8000C2BC 45000124 */  bc1f       .L8000C750
/* CEC0 8000C2C0 00000000 */   nop
/* CEC4 8000C2C4 8FAC005C */  lw         $t4, 0x5c($sp)
/* CEC8 8000C2C8 8FAA0068 */  lw         $t2, 0x68($sp)
/* CECC 8000C2CC 3C0141F0 */  lui        $at, 0x41f0
/* CED0 8000C2D0 44812000 */  mtc1       $at, $f4
/* CED4 8000C2D4 8FA80054 */  lw         $t0, 0x54($sp)
/* CED8 8000C2D8 95980024 */  lhu        $t8, 0x24($t4)
/* CEDC 8000C2DC 448A8000 */  mtc1       $t2, $f16
/* CEE0 8000C2E0 46044180 */  add.s      $f6, $f8, $f4
/* CEE4 8000C2E4 03087021 */  addu       $t6, $t8, $t0
/* CEE8 8000C2E8 448E9000 */  mtc1       $t6, $f18
/* CEEC 8000C2EC 3C01800E */  lui        $at, %hi(D_800DBC10)
/* CEF0 8000C2F0 46808320 */  cvt.s.w    $f12, $f16
/* CEF4 8000C2F4 D430BC10 */  ldc1       $f16, %lo(D_800DBC10)($at)
/* CEF8 8000C2F8 3C098014 */  lui        $t1, %hi(D_8013B65C)
/* CEFC 8000C2FC 8D29B65C */  lw         $t1, %lo(D_8013B65C)($t1)
/* CF00 8000C300 460032A1 */  cvt.d.s    $f10, $f6
/* CF04 8000C304 468093A0 */  cvt.s.w    $f14, $f18
/* CF08 8000C308 46305482 */  mul.d      $f18, $f10, $f16
/* CF0C 8000C30C 44892000 */  mtc1       $t1, $f4
/* CF10 8000C310 00000000 */  nop
/* CF14 8000C314 46802120 */  cvt.s.w    $f4, $f4
/* CF18 8000C318 46209220 */  cvt.s.d    $f8, $f18
/* CF1C 8000C31C 44072000 */  mfc1       $a3, $f4
/* CF20 8000C320 44064000 */  mfc1       $a2, $f8
/* CF24 8000C324 0C002FA2 */  jal        func_8000BE88
/* CF28 8000C328 00000000 */   nop
/* CF2C 8000C32C 10400108 */  beqz       $v0, .L8000C750
/* CF30 8000C330 00000000 */   nop
/* CF34 8000C334 3C0B8016 */  lui        $t3, %hi(D_8015E858)
/* CF38 8000C338 916BE858 */  lbu        $t3, %lo(D_8015E858)($t3)
/* CF3C 8000C33C 11600004 */  beqz       $t3, .L8000C350
/* CF40 8000C340 00000000 */   nop
/* CF44 8000C344 3C04800E */  lui        $a0, %hi(D_800DBB10)
/* CF48 8000C348 0C0334EB */  jal        func_800CD3AC
/* CF4C 8000C34C 2484BB10 */   addiu     $a0, $a0, %lo(D_800DBB10)
.L8000C350:
/* CF50 8000C350 8FB9005C */  lw         $t9, 0x5c($sp)
/* CF54 8000C354 8FAF0068 */  lw         $t7, 0x68($sp)
/* CF58 8000C358 8FAA002C */  lw         $t2, 0x2c($sp)
/* CF5C 8000C35C 972D0024 */  lhu        $t5, 0x24($t9)
/* CF60 8000C360 8FA40064 */  lw         $a0, 0x64($sp)
/* CF64 8000C364 8FA6006C */  lw         $a2, 0x6c($sp)
/* CF68 8000C368 03203825 */  or         $a3, $t9, $zero
/* CF6C 8000C36C AFAA0010 */  sw         $t2, 0x10($sp)
/* CF70 8000C370 0C002CB9 */  jal        func_8000B2E4
/* CF74 8000C374 01AF2821 */   addu      $a1, $t5, $t7
/* CF78 8000C378 8FB8005C */  lw         $t8, 0x5c($sp)
/* CF7C 8000C37C 8FAC0068 */  lw         $t4, 0x68($sp)
/* CF80 8000C380 3C0141F0 */  lui        $at, 0x41f0
/* CF84 8000C384 44819000 */  mtc1       $at, $f18
/* CF88 8000C388 C7B00070 */  lwc1       $f16, 0x70($sp)
/* CF8C 8000C38C 97080024 */  lhu        $t0, 0x24($t8)
/* CF90 8000C390 8FA90054 */  lw         $t1, 0x54($sp)
/* CF94 8000C394 448C3000 */  mtc1       $t4, $f6
/* CF98 8000C398 46128200 */  add.s      $f8, $f16, $f18
/* CF9C 8000C39C 00087040 */  sll        $t6, $t0, 1
/* CFA0 8000C3A0 01C95821 */  addu       $t3, $t6, $t1
/* CFA4 8000C3A4 448B5000 */  mtc1       $t3, $f10
/* CFA8 8000C3A8 3C01800E */  lui        $at, %hi(D_800DBC18)
/* CFAC 8000C3AC 46803320 */  cvt.s.w    $f12, $f6
/* CFB0 8000C3B0 D426BC18 */  ldc1       $f6, %lo(D_800DBC18)($at)
/* CFB4 8000C3B4 3C0D8014 */  lui        $t5, %hi(D_8013B65C)
/* CFB8 8000C3B8 8DADB65C */  lw         $t5, %lo(D_8013B65C)($t5)
/* CFBC 8000C3BC 46004121 */  cvt.d.s    $f4, $f8
/* CFC0 8000C3C0 468053A0 */  cvt.s.w    $f14, $f10
/* CFC4 8000C3C4 46262282 */  mul.d      $f10, $f4, $f6
/* CFC8 8000C3C8 448D9000 */  mtc1       $t5, $f18
/* CFCC 8000C3CC 00000000 */  nop
/* CFD0 8000C3D0 468094A0 */  cvt.s.w    $f18, $f18
/* CFD4 8000C3D4 46205420 */  cvt.s.d    $f16, $f10
/* CFD8 8000C3D8 44079000 */  mfc1       $a3, $f18
/* CFDC 8000C3DC 44068000 */  mfc1       $a2, $f16
/* CFE0 8000C3E0 0C002FA2 */  jal        func_8000BE88
/* CFE4 8000C3E4 00000000 */   nop
/* CFE8 8000C3E8 1040000A */  beqz       $v0, .L8000C414
/* CFEC 8000C3EC 00000000 */   nop
/* CFF0 8000C3F0 3C0F8016 */  lui        $t7, %hi(D_8015E858)
/* CFF4 8000C3F4 91EFE858 */  lbu        $t7, %lo(D_8015E858)($t7)
/* CFF8 8000C3F8 11E00006 */  beqz       $t7, .L8000C414
/* CFFC 8000C3FC 00000000 */   nop
/* D000 8000C400 3C04800E */  lui        $a0, %hi(D_800DBB20)
/* D004 8000C404 3C058014 */  lui        $a1, %hi(D_8013D398)
/* D008 8000C408 94A5D398 */  lhu        $a1, %lo(D_8013D398)($a1)
/* D00C 8000C40C 0C0334EB */  jal        func_800CD3AC
/* D010 8000C410 2484BB20 */   addiu     $a0, $a0, %lo(D_800DBB20)
.L8000C414:
/* D014 8000C414 3C198014 */  lui        $t9, %hi(D_8013D398)
/* D018 8000C418 9739D398 */  lhu        $t9, %lo(D_8013D398)($t9)
/* D01C 8000C41C 332A0010 */  andi       $t2, $t9, 0x10
/* D020 8000C420 114000CB */  beqz       $t2, .L8000C750
/* D024 8000C424 00000000 */   nop
/* D028 8000C428 3C0C8016 */  lui        $t4, %hi(D_8015E858)
/* D02C 8000C42C 918CE858 */  lbu        $t4, %lo(D_8015E858)($t4)
/* D030 8000C430 11800004 */  beqz       $t4, .L8000C444
/* D034 8000C434 00000000 */   nop
/* D038 8000C438 3C04800E */  lui        $a0, %hi(D_800DBB30)
/* D03C 8000C43C 0C0334EB */  jal        func_800CD3AC
/* D040 8000C440 2484BB30 */   addiu     $a0, $a0, %lo(D_800DBB30)
.L8000C444:
/* D044 8000C444 8FB8005C */  lw         $t8, 0x5c($sp)
/* D048 8000C448 8FA90068 */  lw         $t1, 0x68($sp)
/* D04C 8000C44C 8FAB002C */  lw         $t3, 0x2c($sp)
/* D050 8000C450 97080024 */  lhu        $t0, 0x24($t8)
/* D054 8000C454 8FA40064 */  lw         $a0, 0x64($sp)
/* D058 8000C458 8FA6006C */  lw         $a2, 0x6c($sp)
/* D05C 8000C45C 00087040 */  sll        $t6, $t0, 1
/* D060 8000C460 03003825 */  or         $a3, $t8, $zero
/* D064 8000C464 01C92821 */  addu       $a1, $t6, $t1
/* D068 8000C468 0C002CB9 */  jal        func_8000B2E4
/* D06C 8000C46C AFAB0010 */   sw        $t3, 0x10($sp)
/* D070 8000C470 8FAF005C */  lw         $t7, 0x5c($sp)
/* D074 8000C474 8FAD0068 */  lw         $t5, 0x68($sp)
/* D078 8000C478 3C0141F0 */  lui        $at, 0x41f0
/* D07C 8000C47C 95F90024 */  lhu        $t9, 0x24($t7)
/* D080 8000C480 44815000 */  mtc1       $at, $f10
/* D084 8000C484 C7A60070 */  lwc1       $f6, 0x70($sp)
/* D088 8000C488 8FAC0054 */  lw         $t4, 0x54($sp)
/* D08C 8000C48C 448D4000 */  mtc1       $t5, $f8
/* D090 8000C490 00195080 */  sll        $t2, $t9, 2
/* D094 8000C494 460A3400 */  add.s      $f16, $f6, $f10
/* D098 8000C498 01595023 */  subu       $t2, $t2, $t9
/* D09C 8000C49C 014C4021 */  addu       $t0, $t2, $t4
/* D0A0 8000C4A0 44882000 */  mtc1       $t0, $f4
/* D0A4 8000C4A4 3C01800E */  lui        $at, %hi(D_800DBC20)
/* D0A8 8000C4A8 46804320 */  cvt.s.w    $f12, $f8
/* D0AC 8000C4AC D428BC20 */  ldc1       $f8, %lo(D_800DBC20)($at)
/* D0B0 8000C4B0 3C0E8014 */  lui        $t6, %hi(D_8013B65C)
/* D0B4 8000C4B4 8DCEB65C */  lw         $t6, %lo(D_8013B65C)($t6)
/* D0B8 8000C4B8 460084A1 */  cvt.d.s    $f18, $f16
/* D0BC 8000C4BC 468023A0 */  cvt.s.w    $f14, $f4
/* D0C0 8000C4C0 46289102 */  mul.d      $f4, $f18, $f8
/* D0C4 8000C4C4 448E5000 */  mtc1       $t6, $f10
/* D0C8 8000C4C8 00000000 */  nop
/* D0CC 8000C4CC 468052A0 */  cvt.s.w    $f10, $f10
/* D0D0 8000C4D0 462021A0 */  cvt.s.d    $f6, $f4
/* D0D4 8000C4D4 44075000 */  mfc1       $a3, $f10
/* D0D8 8000C4D8 44063000 */  mfc1       $a2, $f6
/* D0DC 8000C4DC 0C002FA2 */  jal        func_8000BE88
/* D0E0 8000C4E0 00000000 */   nop
/* D0E4 8000C4E4 1040000A */  beqz       $v0, .L8000C510
/* D0E8 8000C4E8 00000000 */   nop
/* D0EC 8000C4EC 3C098016 */  lui        $t1, %hi(D_8015E858)
/* D0F0 8000C4F0 9129E858 */  lbu        $t1, %lo(D_8015E858)($t1)
/* D0F4 8000C4F4 11200006 */  beqz       $t1, .L8000C510
/* D0F8 8000C4F8 00000000 */   nop
/* D0FC 8000C4FC 3C04800E */  lui        $a0, %hi(D_800DBB40)
/* D100 8000C500 3C058014 */  lui        $a1, %hi(D_8013D398)
/* D104 8000C504 94A5D398 */  lhu        $a1, %lo(D_8013D398)($a1)
/* D108 8000C508 0C0334EB */  jal        func_800CD3AC
/* D10C 8000C50C 2484BB40 */   addiu     $a0, $a0, %lo(D_800DBB40)
.L8000C510:
/* D110 8000C510 3C188014 */  lui        $t8, %hi(D_8013D398)
/* D114 8000C514 9718D398 */  lhu        $t8, %lo(D_8013D398)($t8)
/* D118 8000C518 330B0010 */  andi       $t3, $t8, 0x10
/* D11C 8000C51C 1160008C */  beqz       $t3, .L8000C750
/* D120 8000C520 00000000 */   nop
/* D124 8000C524 3C0D8016 */  lui        $t5, %hi(D_8015E858)
/* D128 8000C528 91ADE858 */  lbu        $t5, %lo(D_8015E858)($t5)
/* D12C 8000C52C 11A00004 */  beqz       $t5, .L8000C540
/* D130 8000C530 00000000 */   nop
/* D134 8000C534 3C04800E */  lui        $a0, %hi(D_800DBB50)
/* D138 8000C538 0C0334EB */  jal        func_800CD3AC
/* D13C 8000C53C 2484BB50 */   addiu     $a0, $a0, %lo(D_800DBB50)
.L8000C540:
/* D140 8000C540 8FAF005C */  lw         $t7, 0x5c($sp)
/* D144 8000C544 8FAC0068 */  lw         $t4, 0x68($sp)
/* D148 8000C548 8FA8002C */  lw         $t0, 0x2c($sp)
/* D14C 8000C54C 95F90024 */  lhu        $t9, 0x24($t7)
/* D150 8000C550 8FA40064 */  lw         $a0, 0x64($sp)
/* D154 8000C554 8FA6006C */  lw         $a2, 0x6c($sp)
/* D158 8000C558 00195080 */  sll        $t2, $t9, 2
/* D15C 8000C55C 01595023 */  subu       $t2, $t2, $t9
/* D160 8000C560 01E03825 */  or         $a3, $t7, $zero
/* D164 8000C564 014C2821 */  addu       $a1, $t2, $t4
/* D168 8000C568 0C002CB9 */  jal        func_8000B2E4
/* D16C 8000C56C AFA80010 */   sw        $t0, 0x10($sp)
/* D170 8000C570 8FA9005C */  lw         $t1, 0x5c($sp)
/* D174 8000C574 8FAE0068 */  lw         $t6, 0x68($sp)
/* D178 8000C578 3C0141F0 */  lui        $at, 0x41f0
/* D17C 8000C57C 44812000 */  mtc1       $at, $f4
/* D180 8000C580 C7A80070 */  lwc1       $f8, 0x70($sp)
/* D184 8000C584 95380024 */  lhu        $t8, 0x24($t1)
/* D188 8000C588 8FAD0054 */  lw         $t5, 0x54($sp)
/* D18C 8000C58C 448E8000 */  mtc1       $t6, $f16
/* D190 8000C590 46044180 */  add.s      $f6, $f8, $f4
/* D194 8000C594 00185880 */  sll        $t3, $t8, 2
/* D198 8000C598 016DC821 */  addu       $t9, $t3, $t5
/* D19C 8000C59C 44999000 */  mtc1       $t9, $f18
/* D1A0 8000C5A0 3C01800E */  lui        $at, %hi(D_800DBC28)
/* D1A4 8000C5A4 46808320 */  cvt.s.w    $f12, $f16
/* D1A8 8000C5A8 D430BC28 */  ldc1       $f16, %lo(D_800DBC28)($at)
/* D1AC 8000C5AC 3C0A8014 */  lui        $t2, %hi(D_8013B65C)
/* D1B0 8000C5B0 8D4AB65C */  lw         $t2, %lo(D_8013B65C)($t2)
/* D1B4 8000C5B4 460032A1 */  cvt.d.s    $f10, $f6
/* D1B8 8000C5B8 468093A0 */  cvt.s.w    $f14, $f18
/* D1BC 8000C5BC 46305482 */  mul.d      $f18, $f10, $f16
/* D1C0 8000C5C0 448A2000 */  mtc1       $t2, $f4
/* D1C4 8000C5C4 00000000 */  nop
/* D1C8 8000C5C8 46802120 */  cvt.s.w    $f4, $f4
/* D1CC 8000C5CC 46209220 */  cvt.s.d    $f8, $f18
/* D1D0 8000C5D0 44072000 */  mfc1       $a3, $f4
/* D1D4 8000C5D4 44064000 */  mfc1       $a2, $f8
/* D1D8 8000C5D8 0C002FA2 */  jal        func_8000BE88
/* D1DC 8000C5DC 00000000 */   nop
/* D1E0 8000C5E0 1040000B */  beqz       $v0, .L8000C610
/* D1E4 8000C5E4 00000000 */   nop
/* D1E8 8000C5E8 3C0C8016 */  lui        $t4, %hi(D_8015E858)
/* D1EC 8000C5EC 918CE858 */  lbu        $t4, %lo(D_8015E858)($t4)
/* D1F0 8000C5F0 11800007 */  beqz       $t4, .L8000C610
/* D1F4 8000C5F4 00000000 */   nop
/* D1F8 8000C5F8 3C04800E */  lui        $a0, %hi(D_800DBB60)
/* D1FC 8000C5FC 3C058014 */  lui        $a1, %hi(D_8013D398)
/* D200 8000C600 94A5D398 */  lhu        $a1, %lo(D_8013D398)($a1)
/* D204 8000C604 2484BB60 */  addiu      $a0, $a0, %lo(D_800DBB60)
/* D208 8000C608 0C0334EB */  jal        func_800CD3AC
/* D20C 8000C60C 24060010 */   addiu     $a2, $zero, 0x10
.L8000C610:
/* D210 8000C610 3C0F8014 */  lui        $t7, %hi(D_8013D398)
/* D214 8000C614 95EFD398 */  lhu        $t7, %lo(D_8013D398)($t7)
/* D218 8000C618 31E80010 */  andi       $t0, $t7, 0x10
/* D21C 8000C61C 1100004C */  beqz       $t0, .L8000C750
/* D220 8000C620 00000000 */   nop
/* D224 8000C624 3C0E8016 */  lui        $t6, %hi(D_8015E858)
/* D228 8000C628 91CEE858 */  lbu        $t6, %lo(D_8015E858)($t6)
/* D22C 8000C62C 11C00004 */  beqz       $t6, .L8000C640
/* D230 8000C630 00000000 */   nop
/* D234 8000C634 3C04800E */  lui        $a0, %hi(D_800DBB78)
/* D238 8000C638 0C0334EB */  jal        func_800CD3AC
/* D23C 8000C63C 2484BB78 */   addiu     $a0, $a0, %lo(D_800DBB78)
.L8000C640:
/* D240 8000C640 8FA9005C */  lw         $t1, 0x5c($sp)
/* D244 8000C644 8FAD0068 */  lw         $t5, 0x68($sp)
/* D248 8000C648 8FB9002C */  lw         $t9, 0x2c($sp)
/* D24C 8000C64C 95380024 */  lhu        $t8, 0x24($t1)
/* D250 8000C650 8FA40064 */  lw         $a0, 0x64($sp)
/* D254 8000C654 8FA6006C */  lw         $a2, 0x6c($sp)
/* D258 8000C658 00185880 */  sll        $t3, $t8, 2
/* D25C 8000C65C 01203825 */  or         $a3, $t1, $zero
/* D260 8000C660 016D2821 */  addu       $a1, $t3, $t5
/* D264 8000C664 0C002CB9 */  jal        func_8000B2E4
/* D268 8000C668 AFB90010 */   sw        $t9, 0x10($sp)
/* D26C 8000C66C 3C0B8014 */  lui        $t3, %hi(D_8013B65C)
/* D270 8000C670 8D6BB65C */  lw         $t3, %lo(D_8013B65C)($t3)
/* D274 8000C674 8FAC005C */  lw         $t4, 0x5c($sp)
/* D278 8000C678 3C0141F0 */  lui        $at, 0x41f0
/* D27C 8000C67C 448B2000 */  mtc1       $t3, $f4
/* D280 8000C680 44819000 */  mtc1       $at, $f18
/* D284 8000C684 C7B00070 */  lwc1       $f16, 0x70($sp)
/* D288 8000C688 958F0024 */  lhu        $t7, 0x24($t4)
/* D28C 8000C68C 46802120 */  cvt.s.w    $f4, $f4
/* D290 8000C690 8FAE0054 */  lw         $t6, 0x54($sp)
/* D294 8000C694 8FAA0068 */  lw         $t2, 0x68($sp)
/* D298 8000C698 000F4080 */  sll        $t0, $t7, 2
/* D29C 8000C69C 010F4021 */  addu       $t0, $t0, $t7
/* D2A0 8000C6A0 46128200 */  add.s      $f8, $f16, $f18
/* D2A4 8000C6A4 010EC021 */  addu       $t8, $t0, $t6
/* D2A8 8000C6A8 44985000 */  mtc1       $t8, $f10
/* D2AC 8000C6AC 448A3000 */  mtc1       $t2, $f6
/* D2B0 8000C6B0 44064000 */  mfc1       $a2, $f8
/* D2B4 8000C6B4 44072000 */  mfc1       $a3, $f4
/* D2B8 8000C6B8 468053A0 */  cvt.s.w    $f14, $f10
/* D2BC 8000C6BC 0C002FA2 */  jal        func_8000BE88
/* D2C0 8000C6C0 46803320 */   cvt.s.w   $f12, $f6
/* D2C4 8000C6C4 1040000A */  beqz       $v0, .L8000C6F0
/* D2C8 8000C6C8 00000000 */   nop
/* D2CC 8000C6CC 3C0D8016 */  lui        $t5, %hi(D_8015E858)
/* D2D0 8000C6D0 91ADE858 */  lbu        $t5, %lo(D_8015E858)($t5)
/* D2D4 8000C6D4 11A00006 */  beqz       $t5, .L8000C6F0
/* D2D8 8000C6D8 00000000 */   nop
/* D2DC 8000C6DC 3C04800E */  lui        $a0, %hi(D_800DBB88)
/* D2E0 8000C6E0 3C058014 */  lui        $a1, %hi(D_8013D398)
/* D2E4 8000C6E4 94A5D398 */  lhu        $a1, %lo(D_8013D398)($a1)
/* D2E8 8000C6E8 0C0334EB */  jal        func_800CD3AC
/* D2EC 8000C6EC 2484BB88 */   addiu     $a0, $a0, %lo(D_800DBB88)
.L8000C6F0:
/* D2F0 8000C6F0 3C098014 */  lui        $t1, %hi(D_8013D398)
/* D2F4 8000C6F4 9529D398 */  lhu        $t1, %lo(D_8013D398)($t1)
/* D2F8 8000C6F8 31390010 */  andi       $t9, $t1, 0x10
/* D2FC 8000C6FC 13200014 */  beqz       $t9, .L8000C750
/* D300 8000C700 00000000 */   nop
/* D304 8000C704 3C0A8016 */  lui        $t2, %hi(D_8015E858)
/* D308 8000C708 914AE858 */  lbu        $t2, %lo(D_8015E858)($t2)
/* D30C 8000C70C 11400004 */  beqz       $t2, .L8000C720
/* D310 8000C710 00000000 */   nop
/* D314 8000C714 3C04800E */  lui        $a0, %hi(D_800DBB98)
/* D318 8000C718 0C0334EB */  jal        func_800CD3AC
/* D31C 8000C71C 2484BB98 */   addiu     $a0, $a0, %lo(D_800DBB98)
.L8000C720:
/* D320 8000C720 8FAC005C */  lw         $t4, 0x5c($sp)
/* D324 8000C724 8FAE0068 */  lw         $t6, 0x68($sp)
/* D328 8000C728 8FB8002C */  lw         $t8, 0x2c($sp)
/* D32C 8000C72C 958F0024 */  lhu        $t7, 0x24($t4)
/* D330 8000C730 8FA40064 */  lw         $a0, 0x64($sp)
/* D334 8000C734 8FA6006C */  lw         $a2, 0x6c($sp)
/* D338 8000C738 000F4080 */  sll        $t0, $t7, 2
/* D33C 8000C73C 010F4021 */  addu       $t0, $t0, $t7
/* D340 8000C740 01803825 */  or         $a3, $t4, $zero
/* D344 8000C744 010E2821 */  addu       $a1, $t0, $t6
/* D348 8000C748 0C002CB9 */  jal        func_8000B2E4
/* D34C 8000C74C AFB80010 */   sw        $t8, 0x10($sp)
.L8000C750:
/* D350 8000C750 3C0B8014 */  lui        $t3, %hi(D_8013D39A)
/* D354 8000C754 956BD39A */  lhu        $t3, %lo(D_8013D39A)($t3)
/* D358 8000C758 316D0008 */  andi       $t5, $t3, 8
/* D35C 8000C75C 11A00120 */  beqz       $t5, .L8000CBE0
/* D360 8000C760 3C0141F8 */   lui       $at, 0x41f8
/* D364 8000C764 44815000 */  mtc1       $at, $f10
/* D368 8000C768 C7A60070 */  lwc1       $f6, 0x70($sp)
/* D36C 8000C76C 460A303E */  c.le.s     $f6, $f10
/* D370 8000C770 00000000 */  nop
/* D374 8000C774 4500011A */  bc1f       .L8000CBE0
/* D378 8000C778 00000000 */   nop
/* D37C 8000C77C 8FA90068 */  lw         $t1, 0x68($sp)
/* D380 8000C780 3C0141F0 */  lui        $at, 0x41f0
/* D384 8000C784 44814000 */  mtc1       $at, $f8
/* D388 8000C788 8FB90054 */  lw         $t9, 0x54($sp)
/* D38C 8000C78C 44898000 */  mtc1       $t1, $f16
/* D390 8000C790 46083101 */  sub.s      $f4, $f6, $f8
/* D394 8000C794 44999000 */  mtc1       $t9, $f18
/* D398 8000C798 3C01800E */  lui        $at, %hi(D_800DBC30)
/* D39C 8000C79C 46808320 */  cvt.s.w    $f12, $f16
/* D3A0 8000C7A0 D430BC30 */  ldc1       $f16, %lo(D_800DBC30)($at)
/* D3A4 8000C7A4 3C0A8014 */  lui        $t2, %hi(D_8013B65C)
/* D3A8 8000C7A8 8D4AB65C */  lw         $t2, %lo(D_8013B65C)($t2)
/* D3AC 8000C7AC 460022A1 */  cvt.d.s    $f10, $f4
/* D3B0 8000C7B0 468093A0 */  cvt.s.w    $f14, $f18
/* D3B4 8000C7B4 46305482 */  mul.d      $f18, $f10, $f16
/* D3B8 8000C7B8 448A4000 */  mtc1       $t2, $f8
/* D3BC 8000C7BC 00000000 */  nop
/* D3C0 8000C7C0 46804220 */  cvt.s.w    $f8, $f8
/* D3C4 8000C7C4 462091A0 */  cvt.s.d    $f6, $f18
/* D3C8 8000C7C8 44074000 */  mfc1       $a3, $f8
/* D3CC 8000C7CC 44063000 */  mfc1       $a2, $f6
/* D3D0 8000C7D0 0C002FA2 */  jal        func_8000BE88
/* D3D4 8000C7D4 00000000 */   nop
/* D3D8 8000C7D8 10400101 */  beqz       $v0, .L8000CBE0
/* D3DC 8000C7DC 00000000 */   nop
/* D3E0 8000C7E0 3C0F8016 */  lui        $t7, %hi(D_8015E858)
/* D3E4 8000C7E4 91EFE858 */  lbu        $t7, %lo(D_8015E858)($t7)
/* D3E8 8000C7E8 11E00004 */  beqz       $t7, .L8000C7FC
/* D3EC 8000C7EC 00000000 */   nop
/* D3F0 8000C7F0 3C04800E */  lui        $a0, %hi(D_800DBBA8)
/* D3F4 8000C7F4 0C0334EB */  jal        func_800CD3AC
/* D3F8 8000C7F8 2484BBA8 */   addiu     $a0, $a0, %lo(D_800DBBA8)
.L8000C7FC:
/* D3FC 8000C7FC 8FAE005C */  lw         $t6, 0x5c($sp)
/* D400 8000C800 8FA80068 */  lw         $t0, 0x68($sp)
/* D404 8000C804 8FB8002C */  lw         $t8, 0x2c($sp)
/* D408 8000C808 95CC0024 */  lhu        $t4, 0x24($t6)
/* D40C 8000C80C 8FA40064 */  lw         $a0, 0x64($sp)
/* D410 8000C810 8FA6006C */  lw         $a2, 0x6c($sp)
/* D414 8000C814 01C03825 */  or         $a3, $t6, $zero
/* D418 8000C818 AFB80010 */  sw         $t8, 0x10($sp)
/* D41C 8000C81C 0C002CB9 */  jal        func_8000B2E4
/* D420 8000C820 010C2823 */   subu      $a1, $t0, $t4
/* D424 8000C824 3C0B8014 */  lui        $t3, %hi(D_8013B66C)
/* D428 8000C828 8D6BB66C */  lw         $t3, %lo(D_8013B66C)($t3)
/* D42C 8000C82C 3C098014 */  lui        $t1, %hi(D_8013B670)
/* D430 8000C830 8D29B670 */  lw         $t1, %lo(D_8013B670)($t1)
/* D434 8000C834 256DFFFE */  addiu      $t5, $t3, -2
/* D438 8000C838 3C0A8014 */  lui        $t2, %hi(D_8013B674)
/* D43C 8000C83C 01A90019 */  multu      $t5, $t1
/* D440 8000C840 8D4AB674 */  lw         $t2, %lo(D_8013B674)($t2)
/* D444 8000C844 8FA80064 */  lw         $t0, 0x64($sp)
/* D448 8000C848 8FAC006C */  lw         $t4, 0x6c($sp)
/* D44C 8000C84C 3C018014 */  lui        $at, 0x8014
/* D450 8000C850 44882000 */  mtc1       $t0, $f4
/* D454 8000C854 448C5000 */  mtc1       $t4, $f10
/* D458 8000C858 3C078014 */  lui        $a3, %hi(D_8013B65C)
/* D45C 8000C85C 8CE7B65C */  lw         $a3, %lo(D_8013B65C)($a3)
/* D460 8000C860 8FA60074 */  lw         $a2, 0x74($sp)
/* D464 8000C864 0000C812 */  mflo       $t9
/* D468 8000C868 46802320 */  cvt.s.w    $f12, $f4
/* D46C 8000C86C 00000000 */  nop
/* D470 8000C870 032A0019 */  multu      $t9, $t2
/* D474 8000C874 468053A0 */  cvt.s.w    $f14, $f10
/* D478 8000C878 00007812 */  mflo       $t7
/* D47C 8000C87C AC2FB678 */  sw         $t7, -0x4988($at)
/* D480 8000C880 0C002C58 */  jal        func_8000B160
/* D484 8000C884 00000000 */   nop
/* D488 8000C888 8FAB005C */  lw         $t3, 0x5c($sp)
/* D48C 8000C88C 8FAE0068 */  lw         $t6, 0x68($sp)
/* D490 8000C890 3C0141F0 */  lui        $at, 0x41f0
/* D494 8000C894 44814000 */  mtc1       $at, $f8
/* D498 8000C898 C7A60070 */  lwc1       $f6, 0x70($sp)
/* D49C 8000C89C 8FB80054 */  lw         $t8, 0x54($sp)
/* D4A0 8000C8A0 956D0024 */  lhu        $t5, 0x24($t3)
/* D4A4 8000C8A4 448E8000 */  mtc1       $t6, $f16
/* D4A8 8000C8A8 46083101 */  sub.s      $f4, $f6, $f8
/* D4AC 8000C8AC 030D4823 */  subu       $t1, $t8, $t5
/* D4B0 8000C8B0 44899000 */  mtc1       $t1, $f18
/* D4B4 8000C8B4 3C01800E */  lui        $at, %hi(D_800DBC38)
/* D4B8 8000C8B8 46808320 */  cvt.s.w    $f12, $f16
/* D4BC 8000C8BC D430BC38 */  ldc1       $f16, %lo(D_800DBC38)($at)
/* D4C0 8000C8C0 3C198014 */  lui        $t9, %hi(D_8013B65C)
/* D4C4 8000C8C4 8F39B65C */  lw         $t9, %lo(D_8013B65C)($t9)
/* D4C8 8000C8C8 460022A1 */  cvt.d.s    $f10, $f4
/* D4CC 8000C8CC 468093A0 */  cvt.s.w    $f14, $f18
/* D4D0 8000C8D0 46305482 */  mul.d      $f18, $f10, $f16
/* D4D4 8000C8D4 44994000 */  mtc1       $t9, $f8
/* D4D8 8000C8D8 00000000 */  nop
/* D4DC 8000C8DC 46804220 */  cvt.s.w    $f8, $f8
/* D4E0 8000C8E0 462091A0 */  cvt.s.d    $f6, $f18
/* D4E4 8000C8E4 44074000 */  mfc1       $a3, $f8
/* D4E8 8000C8E8 44063000 */  mfc1       $a2, $f6
/* D4EC 8000C8EC 0C002FA2 */  jal        func_8000BE88
/* D4F0 8000C8F0 00000000 */   nop
/* D4F4 8000C8F4 104000BA */  beqz       $v0, .L8000CBE0
/* D4F8 8000C8F8 00000000 */   nop
/* D4FC 8000C8FC 3C0A8014 */  lui        $t2, %hi(D_8013D398)
/* D500 8000C900 954AD398 */  lhu        $t2, %lo(D_8013D398)($t2)
/* D504 8000C904 314F0008 */  andi       $t7, $t2, 8
/* D508 8000C908 11E000B5 */  beqz       $t7, .L8000CBE0
/* D50C 8000C90C 00000000 */   nop
/* D510 8000C910 3C088016 */  lui        $t0, %hi(D_8015E858)
/* D514 8000C914 9108E858 */  lbu        $t0, %lo(D_8015E858)($t0)
/* D518 8000C918 11000004 */  beqz       $t0, .L8000C92C
/* D51C 8000C91C 00000000 */   nop
/* D520 8000C920 3C04800E */  lui        $a0, %hi(D_800DBBB8)
/* D524 8000C924 0C0334EB */  jal        func_800CD3AC
/* D528 8000C928 2484BBB8 */   addiu     $a0, $a0, %lo(D_800DBBB8)
.L8000C92C:
/* D52C 8000C92C 8FAE005C */  lw         $t6, 0x5c($sp)
/* D530 8000C930 8FAC0068 */  lw         $t4, 0x68($sp)
/* D534 8000C934 8FAD002C */  lw         $t5, 0x2c($sp)
/* D538 8000C938 95CB0024 */  lhu        $t3, 0x24($t6)
/* D53C 8000C93C 8FA40064 */  lw         $a0, 0x64($sp)
/* D540 8000C940 8FA6006C */  lw         $a2, 0x6c($sp)
/* D544 8000C944 000BC040 */  sll        $t8, $t3, 1
/* D548 8000C948 01C03825 */  or         $a3, $t6, $zero
/* D54C 8000C94C 01982823 */  subu       $a1, $t4, $t8
/* D550 8000C950 0C002CB9 */  jal        func_8000B2E4
/* D554 8000C954 AFAD0010 */   sw        $t5, 0x10($sp)
/* D558 8000C958 8FAA005C */  lw         $t2, 0x5c($sp)
/* D55C 8000C95C 8FA90068 */  lw         $t1, 0x68($sp)
/* D560 8000C960 3C0141F0 */  lui        $at, 0x41f0
/* D564 8000C964 44819000 */  mtc1       $at, $f18
/* D568 8000C968 C7B00070 */  lwc1       $f16, 0x70($sp)
/* D56C 8000C96C 954F0024 */  lhu        $t7, 0x24($t2)
/* D570 8000C970 8FB90054 */  lw         $t9, 0x54($sp)
/* D574 8000C974 44892000 */  mtc1       $t1, $f4
/* D578 8000C978 46128181 */  sub.s      $f6, $f16, $f18
/* D57C 8000C97C 000F4040 */  sll        $t0, $t7, 1
/* D580 8000C980 03285823 */  subu       $t3, $t9, $t0
/* D584 8000C984 448B5000 */  mtc1       $t3, $f10
/* D588 8000C988 3C01800E */  lui        $at, %hi(D_800DBC40)
/* D58C 8000C98C 46802320 */  cvt.s.w    $f12, $f4
/* D590 8000C990 D424BC40 */  ldc1       $f4, %lo(D_800DBC40)($at)
/* D594 8000C994 3C0C8014 */  lui        $t4, %hi(D_8013B65C)
/* D598 8000C998 8D8CB65C */  lw         $t4, %lo(D_8013B65C)($t4)
/* D59C 8000C99C 46003221 */  cvt.d.s    $f8, $f6
/* D5A0 8000C9A0 468053A0 */  cvt.s.w    $f14, $f10
/* D5A4 8000C9A4 46244282 */  mul.d      $f10, $f8, $f4
/* D5A8 8000C9A8 448C9000 */  mtc1       $t4, $f18
/* D5AC 8000C9AC 00000000 */  nop
/* D5B0 8000C9B0 468094A0 */  cvt.s.w    $f18, $f18
/* D5B4 8000C9B4 46205420 */  cvt.s.d    $f16, $f10
/* D5B8 8000C9B8 44079000 */  mfc1       $a3, $f18
/* D5BC 8000C9BC 44068000 */  mfc1       $a2, $f16
/* D5C0 8000C9C0 0C002FA2 */  jal        func_8000BE88
/* D5C4 8000C9C4 00000000 */   nop
/* D5C8 8000C9C8 10400085 */  beqz       $v0, .L8000CBE0
/* D5CC 8000C9CC 00000000 */   nop
/* D5D0 8000C9D0 3C188014 */  lui        $t8, %hi(D_8013D398)
/* D5D4 8000C9D4 9718D398 */  lhu        $t8, %lo(D_8013D398)($t8)
/* D5D8 8000C9D8 330E0008 */  andi       $t6, $t8, 8
/* D5DC 8000C9DC 11C00080 */  beqz       $t6, .L8000CBE0
/* D5E0 8000C9E0 00000000 */   nop
/* D5E4 8000C9E4 3C0D8016 */  lui        $t5, %hi(D_8015E858)
/* D5E8 8000C9E8 91ADE858 */  lbu        $t5, %lo(D_8015E858)($t5)
/* D5EC 8000C9EC 11A00004 */  beqz       $t5, .L8000CA00
/* D5F0 8000C9F0 00000000 */   nop
/* D5F4 8000C9F4 3C04800E */  lui        $a0, %hi(D_800DBBC8)
/* D5F8 8000C9F8 0C0334EB */  jal        func_800CD3AC
/* D5FC 8000C9FC 2484BBC8 */   addiu     $a0, $a0, %lo(D_800DBBC8)
.L8000CA00:
/* D600 8000CA00 8FAA005C */  lw         $t2, 0x5c($sp)
/* D604 8000CA04 8FA90068 */  lw         $t1, 0x68($sp)
/* D608 8000CA08 8FA8002C */  lw         $t0, 0x2c($sp)
/* D60C 8000CA0C 954F0024 */  lhu        $t7, 0x24($t2)
/* D610 8000CA10 8FA40064 */  lw         $a0, 0x64($sp)
/* D614 8000CA14 8FA6006C */  lw         $a2, 0x6c($sp)
/* D618 8000CA18 000FC880 */  sll        $t9, $t7, 2
/* D61C 8000CA1C 032FC823 */  subu       $t9, $t9, $t7
/* D620 8000CA20 01403825 */  or         $a3, $t2, $zero
/* D624 8000CA24 01392823 */  subu       $a1, $t1, $t9
/* D628 8000CA28 0C002CB9 */  jal        func_8000B2E4
/* D62C 8000CA2C AFA80010 */   sw        $t0, 0x10($sp)
/* D630 8000CA30 8FB8005C */  lw         $t8, 0x5c($sp)
/* D634 8000CA34 8FAB0068 */  lw         $t3, 0x68($sp)
/* D638 8000CA38 3C0141F0 */  lui        $at, 0x41f0
/* D63C 8000CA3C 970E0024 */  lhu        $t6, 0x24($t8)
/* D640 8000CA40 44815000 */  mtc1       $at, $f10
/* D644 8000CA44 C7A40070 */  lwc1       $f4, 0x70($sp)
/* D648 8000CA48 8FAC0054 */  lw         $t4, 0x54($sp)
/* D64C 8000CA4C 448B3000 */  mtc1       $t3, $f6
/* D650 8000CA50 000E6880 */  sll        $t5, $t6, 2
/* D654 8000CA54 460A2401 */  sub.s      $f16, $f4, $f10
/* D658 8000CA58 01AE6823 */  subu       $t5, $t5, $t6
/* D65C 8000CA5C 018D7823 */  subu       $t7, $t4, $t5
/* D660 8000CA60 448F4000 */  mtc1       $t7, $f8
/* D664 8000CA64 3C01800E */  lui        $at, %hi(D_800DBC48)
/* D668 8000CA68 46803320 */  cvt.s.w    $f12, $f6
/* D66C 8000CA6C D426BC48 */  ldc1       $f6, %lo(D_800DBC48)($at)
/* D670 8000CA70 3C098014 */  lui        $t1, %hi(D_8013B65C)
/* D674 8000CA74 8D29B65C */  lw         $t1, %lo(D_8013B65C)($t1)
/* D678 8000CA78 460084A1 */  cvt.d.s    $f18, $f16
/* D67C 8000CA7C 468043A0 */  cvt.s.w    $f14, $f8
/* D680 8000CA80 46269202 */  mul.d      $f8, $f18, $f6
/* D684 8000CA84 44895000 */  mtc1       $t1, $f10
/* D688 8000CA88 00000000 */  nop
/* D68C 8000CA8C 468052A0 */  cvt.s.w    $f10, $f10
/* D690 8000CA90 46204120 */  cvt.s.d    $f4, $f8
/* D694 8000CA94 44075000 */  mfc1       $a3, $f10
/* D698 8000CA98 44062000 */  mfc1       $a2, $f4
/* D69C 8000CA9C 0C002FA2 */  jal        func_8000BE88
/* D6A0 8000CAA0 00000000 */   nop
/* D6A4 8000CAA4 1040004E */  beqz       $v0, .L8000CBE0
/* D6A8 8000CAA8 00000000 */   nop
/* D6AC 8000CAAC 3C198014 */  lui        $t9, %hi(D_8013D398)
/* D6B0 8000CAB0 9739D398 */  lhu        $t9, %lo(D_8013D398)($t9)
/* D6B4 8000CAB4 332A0008 */  andi       $t2, $t9, 8
/* D6B8 8000CAB8 11400049 */  beqz       $t2, .L8000CBE0
/* D6BC 8000CABC 00000000 */   nop
/* D6C0 8000CAC0 3C088016 */  lui        $t0, %hi(D_8015E858)
/* D6C4 8000CAC4 9108E858 */  lbu        $t0, %lo(D_8015E858)($t0)
/* D6C8 8000CAC8 11000004 */  beqz       $t0, .L8000CADC
/* D6CC 8000CACC 00000000 */   nop
/* D6D0 8000CAD0 3C04800E */  lui        $a0, %hi(D_800DBBD8)
/* D6D4 8000CAD4 0C0334EB */  jal        func_800CD3AC
/* D6D8 8000CAD8 2484BBD8 */   addiu     $a0, $a0, %lo(D_800DBBD8)
.L8000CADC:
/* D6DC 8000CADC 8FB8005C */  lw         $t8, 0x5c($sp)
/* D6E0 8000CAE0 8FAB0068 */  lw         $t3, 0x68($sp)
/* D6E4 8000CAE4 8FAD002C */  lw         $t5, 0x2c($sp)
/* D6E8 8000CAE8 970E0024 */  lhu        $t6, 0x24($t8)
/* D6EC 8000CAEC 8FA40064 */  lw         $a0, 0x64($sp)
/* D6F0 8000CAF0 8FA6006C */  lw         $a2, 0x6c($sp)
/* D6F4 8000CAF4 000E6080 */  sll        $t4, $t6, 2
/* D6F8 8000CAF8 03003825 */  or         $a3, $t8, $zero
/* D6FC 8000CAFC 016C2823 */  subu       $a1, $t3, $t4
/* D700 8000CB00 0C002CB9 */  jal        func_8000B2E4
/* D704 8000CB04 AFAD0010 */   sw        $t5, 0x10($sp)
/* D708 8000CB08 8FB9005C */  lw         $t9, 0x5c($sp)
/* D70C 8000CB0C 8FAF0068 */  lw         $t7, 0x68($sp)
/* D710 8000CB10 3C0141F0 */  lui        $at, 0x41f0
/* D714 8000CB14 44814000 */  mtc1       $at, $f8
/* D718 8000CB18 C7A60070 */  lwc1       $f6, 0x70($sp)
/* D71C 8000CB1C 972A0024 */  lhu        $t2, 0x24($t9)
/* D720 8000CB20 8FA90054 */  lw         $t1, 0x54($sp)
/* D724 8000CB24 448F8000 */  mtc1       $t7, $f16
/* D728 8000CB28 46083101 */  sub.s      $f4, $f6, $f8
/* D72C 8000CB2C 000A4080 */  sll        $t0, $t2, 2
/* D730 8000CB30 01287023 */  subu       $t6, $t1, $t0
/* D734 8000CB34 448E9000 */  mtc1       $t6, $f18
/* D738 8000CB38 3C01800E */  lui        $at, %hi(D_800DBC50)
/* D73C 8000CB3C 46808320 */  cvt.s.w    $f12, $f16
/* D740 8000CB40 D430BC50 */  ldc1       $f16, %lo(D_800DBC50)($at)
/* D744 8000CB44 3C0B8014 */  lui        $t3, %hi(D_8013B65C)
/* D748 8000CB48 8D6BB65C */  lw         $t3, %lo(D_8013B65C)($t3)
/* D74C 8000CB4C 460022A1 */  cvt.d.s    $f10, $f4
/* D750 8000CB50 468093A0 */  cvt.s.w    $f14, $f18
/* D754 8000CB54 46305482 */  mul.d      $f18, $f10, $f16
/* D758 8000CB58 448B4000 */  mtc1       $t3, $f8
/* D75C 8000CB5C 00000000 */  nop
/* D760 8000CB60 46804220 */  cvt.s.w    $f8, $f8
/* D764 8000CB64 462091A0 */  cvt.s.d    $f6, $f18
/* D768 8000CB68 44074000 */  mfc1       $a3, $f8
/* D76C 8000CB6C 44063000 */  mfc1       $a2, $f6
/* D770 8000CB70 0C002FA2 */  jal        func_8000BE88
/* D774 8000CB74 00000000 */   nop
/* D778 8000CB78 10400019 */  beqz       $v0, .L8000CBE0
/* D77C 8000CB7C 00000000 */   nop
/* D780 8000CB80 3C0C8014 */  lui        $t4, %hi(D_8013D398)
/* D784 8000CB84 958CD398 */  lhu        $t4, %lo(D_8013D398)($t4)
/* D788 8000CB88 31980008 */  andi       $t8, $t4, 8
/* D78C 8000CB8C 13000014 */  beqz       $t8, .L8000CBE0
/* D790 8000CB90 00000000 */   nop
/* D794 8000CB94 3C0D8016 */  lui        $t5, %hi(D_8015E858)
/* D798 8000CB98 91ADE858 */  lbu        $t5, %lo(D_8015E858)($t5)
/* D79C 8000CB9C 11A00004 */  beqz       $t5, .L8000CBB0
/* D7A0 8000CBA0 00000000 */   nop
/* D7A4 8000CBA4 3C04800E */  lui        $a0, %hi(D_800DBBE8)
/* D7A8 8000CBA8 0C0334EB */  jal        func_800CD3AC
/* D7AC 8000CBAC 2484BBE8 */   addiu     $a0, $a0, %lo(D_800DBBE8)
.L8000CBB0:
/* D7B0 8000CBB0 8FB9005C */  lw         $t9, 0x5c($sp)
/* D7B4 8000CBB4 8FAF0068 */  lw         $t7, 0x68($sp)
/* D7B8 8000CBB8 8FA8002C */  lw         $t0, 0x2c($sp)
/* D7BC 8000CBBC 972A0024 */  lhu        $t2, 0x24($t9)
/* D7C0 8000CBC0 8FA40064 */  lw         $a0, 0x64($sp)
/* D7C4 8000CBC4 8FA6006C */  lw         $a2, 0x6c($sp)
/* D7C8 8000CBC8 000A4880 */  sll        $t1, $t2, 2
/* D7CC 8000CBCC 012A4821 */  addu       $t1, $t1, $t2
/* D7D0 8000CBD0 03203825 */  or         $a3, $t9, $zero
/* D7D4 8000CBD4 01E92823 */  subu       $a1, $t7, $t1
/* D7D8 8000CBD8 0C002CB9 */  jal        func_8000B2E4
/* D7DC 8000CBDC AFA80010 */   sw        $t0, 0x10($sp)
.L8000CBE0:
/* D7E0 8000CBE0 3C0E8016 */  lui        $t6, %hi(D_8015E858)
/* D7E4 8000CBE4 91CEE858 */  lbu        $t6, %lo(D_8015E858)($t6)
/* D7E8 8000CBE8 11C00006 */  beqz       $t6, .L8000CC04
/* D7EC 8000CBEC 00000000 */   nop
/* D7F0 8000CBF0 3C04800E */  lui        $a0, %hi(D_800DBBF8)
/* D7F4 8000CBF4 3C05800D */  lui        $a1, %hi(D_800D64F4)
/* D7F8 8000CBF8 8CA564F4 */  lw         $a1, %lo(D_800D64F4)($a1)
/* D7FC 8000CBFC 0C0334EB */  jal        func_800CD3AC
/* D800 8000CC00 2484BBF8 */   addiu     $a0, $a0, %lo(D_800DBBF8)
.L8000CC04:
/* D804 8000CC04 0C002E7D */  jal        func_8000B9F4
/* D808 8000CC08 00000000 */   nop
/* D80C 8000CC0C 3C018016 */  lui        $at, %hi(D_8015E858)
/* D810 8000CC10 A020E858 */  sb         $zero, %lo(D_8015E858)($at)
/* D814 8000CC14 8FBF0024 */  lw         $ra, 0x24($sp)
/* D818 8000CC18 27BD0060 */  addiu      $sp, $sp, 0x60
/* D81C 8000CC1C 03E00008 */  jr         $ra
/* D820 8000CC20 00000000 */   nop
/* D824 8000CC24 00000000 */  nop
/* D828 8000CC28 00000000 */  nop
/* D82C 8000CC2C 00000000 */  nop
