.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AF630
/* B0230 800AF630 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B0234 800AF634 3084FFFF */  andi       $a0, $a0, 0xffff
/* B0238 800AF638 A3A0000F */  sb         $zero, 0xf($sp)
/* B023C 800AF63C AFA00008 */  sw         $zero, 8($sp)
.L800AF640:
/* B0240 800AF640 93AE000F */  lbu        $t6, 0xf($sp)
/* B0244 800AF644 31CF0010 */  andi       $t7, $t6, 0x10
/* B0248 800AF648 11E00004 */  beqz       $t7, .L800AF65C
/* B024C 800AF64C 00000000 */   nop
/* B0250 800AF650 24180015 */  addiu      $t8, $zero, 0x15
/* B0254 800AF654 10000002 */  b          .L800AF660
/* B0258 800AF658 A3B8000E */   sb        $t8, 0xe($sp)
.L800AF65C:
/* B025C 800AF65C A3A0000E */  sb         $zero, 0xe($sp)
.L800AF660:
/* B0260 800AF660 93B9000F */  lbu        $t9, 0xf($sp)
/* B0264 800AF664 00194040 */  sll        $t0, $t9, 1
/* B0268 800AF668 A3A8000F */  sb         $t0, 0xf($sp)
/* B026C 800AF66C 30890400 */  andi       $t1, $a0, 0x400
/* B0270 800AF670 11200003 */  beqz       $t1, .L800AF680
/* B0274 800AF674 00000000 */   nop
/* B0278 800AF678 10000002 */  b          .L800AF684
/* B027C 800AF67C 24050001 */   addiu     $a1, $zero, 1
.L800AF680:
/* B0280 800AF680 00002825 */  or         $a1, $zero, $zero
.L800AF684:
/* B0284 800AF684 93AA000F */  lbu        $t2, 0xf($sp)
/* B0288 800AF688 30AB00FF */  andi       $t3, $a1, 0xff
/* B028C 800AF68C 014B6025 */  or         $t4, $t2, $t3
/* B0290 800AF690 A3AC000F */  sb         $t4, 0xf($sp)
/* B0294 800AF694 00046840 */  sll        $t5, $a0, 1
/* B0298 800AF698 01A02025 */  or         $a0, $t5, $zero
/* B029C 800AF69C 308EFFFF */  andi       $t6, $a0, 0xffff
/* B02A0 800AF6A0 01C02025 */  or         $a0, $t6, $zero
/* B02A4 800AF6A4 93AF000F */  lbu        $t7, 0xf($sp)
/* B02A8 800AF6A8 93B8000E */  lbu        $t8, 0xe($sp)
/* B02AC 800AF6AC 01F8C826 */  xor        $t9, $t7, $t8
/* B02B0 800AF6B0 A3B9000F */  sb         $t9, 0xf($sp)
/* B02B4 800AF6B4 8FA80008 */  lw         $t0, 8($sp)
/* B02B8 800AF6B8 25090001 */  addiu      $t1, $t0, 1
/* B02BC 800AF6BC 29210010 */  slti       $at, $t1, 0x10
/* B02C0 800AF6C0 1420FFDF */  bnez       $at, .L800AF640
/* B02C4 800AF6C4 AFA90008 */   sw        $t1, 8($sp)
/* B02C8 800AF6C8 93A2000F */  lbu        $v0, 0xf($sp)
/* B02CC 800AF6CC 304A001F */  andi       $t2, $v0, 0x1f
/* B02D0 800AF6D0 01401025 */  or         $v0, $t2, $zero
/* B02D4 800AF6D4 304B00FF */  andi       $t3, $v0, 0xff
/* B02D8 800AF6D8 10000003 */  b          .L800AF6E8
/* B02DC 800AF6DC 01601025 */   or        $v0, $t3, $zero
/* B02E0 800AF6E0 10000001 */  b          .L800AF6E8
/* B02E4 800AF6E4 00000000 */   nop
.L800AF6E8:
/* B02E8 800AF6E8 03E00008 */  jr         $ra
/* B02EC 800AF6EC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800AF6F0
/* B02F0 800AF6F0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B02F4 800AF6F4 A3A0000F */  sb         $zero, 0xf($sp)
/* B02F8 800AF6F8 AFA00008 */  sw         $zero, 8($sp)
.L800AF6FC:
/* B02FC 800AF6FC 240E0007 */  addiu      $t6, $zero, 7
/* B0300 800AF700 AFAE0004 */  sw         $t6, 4($sp)
.L800AF704:
/* B0304 800AF704 93AF000F */  lbu        $t7, 0xf($sp)
/* B0308 800AF708 31F80080 */  andi       $t8, $t7, 0x80
/* B030C 800AF70C 13000004 */  beqz       $t8, .L800AF720
/* B0310 800AF710 00000000 */   nop
/* B0314 800AF714 24190085 */  addiu      $t9, $zero, 0x85
/* B0318 800AF718 10000002 */  b          .L800AF724
/* B031C 800AF71C A3B9000E */   sb        $t9, 0xe($sp)
.L800AF720:
/* B0320 800AF720 A3A0000E */  sb         $zero, 0xe($sp)
.L800AF724:
/* B0324 800AF724 93A8000F */  lbu        $t0, 0xf($sp)
/* B0328 800AF728 00084840 */  sll        $t1, $t0, 1
/* B032C 800AF72C A3A9000F */  sb         $t1, 0xf($sp)
/* B0330 800AF730 8FAA0008 */  lw         $t2, 8($sp)
/* B0334 800AF734 24010020 */  addiu      $at, $zero, 0x20
/* B0338 800AF738 15410004 */  bne        $t2, $at, .L800AF74C
/* B033C 800AF73C 00000000 */   nop
/* B0340 800AF740 93AB000F */  lbu        $t3, 0xf($sp)
/* B0344 800AF744 1000000E */  b          .L800AF780
/* B0348 800AF748 A3AB000F */   sb        $t3, 0xf($sp)
.L800AF74C:
/* B034C 800AF74C 8FAD0004 */  lw         $t5, 4($sp)
/* B0350 800AF750 908C0000 */  lbu        $t4, ($a0)
/* B0354 800AF754 240E0001 */  addiu      $t6, $zero, 1
/* B0358 800AF758 01AE7804 */  sllv       $t7, $t6, $t5
/* B035C 800AF75C 018FC024 */  and        $t8, $t4, $t7
/* B0360 800AF760 13000003 */  beqz       $t8, .L800AF770
/* B0364 800AF764 00000000 */   nop
/* B0368 800AF768 10000002 */  b          .L800AF774
/* B036C 800AF76C 24050001 */   addiu     $a1, $zero, 1
.L800AF770:
/* B0370 800AF770 00002825 */  or         $a1, $zero, $zero
.L800AF774:
/* B0374 800AF774 93B9000F */  lbu        $t9, 0xf($sp)
/* B0378 800AF778 03254025 */  or         $t0, $t9, $a1
/* B037C 800AF77C A3A8000F */  sb         $t0, 0xf($sp)
.L800AF780:
/* B0380 800AF780 93A9000F */  lbu        $t1, 0xf($sp)
/* B0384 800AF784 93AA000E */  lbu        $t2, 0xe($sp)
/* B0388 800AF788 012A5826 */  xor        $t3, $t1, $t2
/* B038C 800AF78C A3AB000F */  sb         $t3, 0xf($sp)
/* B0390 800AF790 8FAE0004 */  lw         $t6, 4($sp)
/* B0394 800AF794 25CDFFFF */  addiu      $t5, $t6, -1
/* B0398 800AF798 05A1FFDA */  bgez       $t5, .L800AF704
/* B039C 800AF79C AFAD0004 */   sw        $t5, 4($sp)
/* B03A0 800AF7A0 24840001 */  addiu      $a0, $a0, 1
/* B03A4 800AF7A4 8FAC0008 */  lw         $t4, 8($sp)
/* B03A8 800AF7A8 258F0001 */  addiu      $t7, $t4, 1
/* B03AC 800AF7AC 29E10021 */  slti       $at, $t7, 0x21
/* B03B0 800AF7B0 1420FFD2 */  bnez       $at, .L800AF6FC
/* B03B4 800AF7B4 AFAF0008 */   sw        $t7, 8($sp)
/* B03B8 800AF7B8 10000003 */  b          .L800AF7C8
/* B03BC 800AF7BC 93A2000F */   lbu       $v0, 0xf($sp)
/* B03C0 800AF7C0 10000001 */  b          .L800AF7C8
/* B03C4 800AF7C4 00000000 */   nop
.L800AF7C8:
/* B03C8 800AF7C8 03E00008 */  jr         $ra
/* B03CC 800AF7CC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800AF7D0
/* B03D0 800AF7D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B03D4 800AF7D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B03D8 800AF7D8 AFA40020 */  sw         $a0, 0x20($sp)
/* B03DC 800AF7DC AFA50024 */  sw         $a1, 0x24($sp)
/* B03E0 800AF7E0 AFA60028 */  sw         $a2, 0x28($sp)
/* B03E4 800AF7E4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B03E8 800AF7E8 8FAF0024 */  lw         $t7, 0x24($sp)
/* B03EC 800AF7EC 8FB80028 */  lw         $t8, 0x28($sp)
/* B03F0 800AF7F0 C5C40000 */  lwc1       $f4, ($t6)
/* B03F4 800AF7F4 C5E80000 */  lwc1       $f8, ($t7)
/* B03F8 800AF7F8 C7120000 */  lwc1       $f18, ($t8)
/* B03FC 800AF7FC 46042182 */  mul.s      $f6, $f4, $f4
/* B0400 800AF800 00000000 */  nop
/* B0404 800AF804 46084282 */  mul.s      $f10, $f8, $f8
/* B0408 800AF808 460A3400 */  add.s      $f16, $f6, $f10
/* B040C 800AF80C 46129102 */  mul.s      $f4, $f18, $f18
/* B0410 800AF810 0C02AD30 */  jal        func_800AB4C0
/* B0414 800AF814 46102300 */   add.s     $f12, $f4, $f16
/* B0418 800AF818 3C013F80 */  lui        $at, 0x3f80
/* B041C 800AF81C 44814000 */  mtc1       $at, $f8
/* B0420 800AF820 00000000 */  nop
/* B0424 800AF824 46004183 */  div.s      $f6, $f8, $f0
/* B0428 800AF828 E7A6001C */  swc1       $f6, 0x1c($sp)
/* B042C 800AF82C 8FB90020 */  lw         $t9, 0x20($sp)
/* B0430 800AF830 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* B0434 800AF834 C72A0000 */  lwc1       $f10, ($t9)
/* B0438 800AF838 46125102 */  mul.s      $f4, $f10, $f18
/* B043C 800AF83C E7240000 */  swc1       $f4, ($t9)
/* B0440 800AF840 8FA80024 */  lw         $t0, 0x24($sp)
/* B0444 800AF844 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* B0448 800AF848 C5100000 */  lwc1       $f16, ($t0)
/* B044C 800AF84C 46088182 */  mul.s      $f6, $f16, $f8
/* B0450 800AF850 E5060000 */  swc1       $f6, ($t0)
/* B0454 800AF854 8FA90028 */  lw         $t1, 0x28($sp)
/* B0458 800AF858 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* B045C 800AF85C C52A0000 */  lwc1       $f10, ($t1)
/* B0460 800AF860 46125102 */  mul.s      $f4, $f10, $f18
/* B0464 800AF864 E5240000 */  swc1       $f4, ($t1)
/* B0468 800AF868 10000001 */  b          .L800AF870
/* B046C 800AF86C 00000000 */   nop
.L800AF870:
/* B0470 800AF870 8FBF0014 */  lw         $ra, 0x14($sp)
/* B0474 800AF874 27BD0020 */  addiu      $sp, $sp, 0x20
/* B0478 800AF878 03E00008 */  jr         $ra
/* B047C 800AF87C 00000000 */   nop

glabel func_800AF880
/* B0480 800AF880 40845800 */  mtc0       $a0, $11
/* B0484 800AF884 03E00008 */  jr         $ra
/* B0488 800AF888 00000000 */   nop
/* B048C 800AF88C 00000000 */  nop
