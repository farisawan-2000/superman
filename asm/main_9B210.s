.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009A610
/* 9B210 8009A610 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B214 8009A614 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B218 8009A618 AFA40020 */  sw         $a0, 0x20($sp)
/* 9B21C 8009A61C AFA0001C */  sw         $zero, 0x1c($sp)
/* 9B220 8009A620 0C026612 */  jal        func_80099848
/* 9B224 8009A624 00000000 */   nop
/* 9B228 8009A628 3C0E801A */  lui        $t6, %hi(D_801A1B50)
/* 9B22C 8009A62C 91CE1B50 */  lbu        $t6, %lo(D_801A1B50)($t6)
/* 9B230 8009A630 24010001 */  addiu      $at, $zero, 1
/* 9B234 8009A634 11C1000C */  beq        $t6, $at, .L8009A668
/* 9B238 8009A638 00000000 */   nop
/* 9B23C 8009A63C 0C0269DB */  jal        func_8009A76C
/* 9B240 8009A640 00000000 */   nop
/* 9B244 8009A644 3C05801A */  lui        $a1, %hi(D_801A1B10)
/* 9B248 8009A648 24A51B10 */  addiu      $a1, $a1, %lo(D_801A1B10)
/* 9B24C 8009A64C 0C027D70 */  jal        func_8009F5C0
/* 9B250 8009A650 24040001 */   addiu     $a0, $zero, 1
/* 9B254 8009A654 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B258 8009A658 8FA40020 */  lw         $a0, 0x20($sp)
/* 9B25C 8009A65C 00002825 */  or         $a1, $zero, $zero
/* 9B260 8009A660 0C025D30 */  jal        func_800974C0
/* 9B264 8009A664 24060001 */   addiu     $a2, $zero, 1
.L8009A668:
/* 9B268 8009A668 3C05801A */  lui        $a1, %hi(D_801A1B10)
/* 9B26C 8009A66C 24A51B10 */  addiu      $a1, $a1, %lo(D_801A1B10)
/* 9B270 8009A670 0C027D70 */  jal        func_8009F5C0
/* 9B274 8009A674 00002025 */   or        $a0, $zero, $zero
/* 9B278 8009A678 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B27C 8009A67C 240F0001 */  addiu      $t7, $zero, 1
/* 9B280 8009A680 3C01801A */  lui        $at, %hi(D_801A1B50)
/* 9B284 8009A684 A02F1B50 */  sb         $t7, %lo(D_801A1B50)($at)
/* 9B288 8009A688 0C026625 */  jal        func_80099894
/* 9B28C 8009A68C 00000000 */   nop
/* 9B290 8009A690 10000003 */  b          .L8009A6A0
/* 9B294 8009A694 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9B298 8009A698 10000001 */  b          .L8009A6A0
/* 9B29C 8009A69C 00000000 */   nop
.L8009A6A0:
/* 9B2A0 8009A6A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B2A4 8009A6A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9B2A8 8009A6A8 03E00008 */  jr         $ra
/* 9B2AC 8009A6AC 00000000 */   nop

glabel func_8009A6B0
/* 9B2B0 8009A6B0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9B2B4 8009A6B4 3C0E801A */  lui        $t6, %hi(D_801A1B10)
/* 9B2B8 8009A6B8 25CE1B10 */  addiu      $t6, $t6, %lo(D_801A1B10)
/* 9B2BC 8009A6BC AFAE000C */  sw         $t6, 0xc($sp)
/* 9B2C0 8009A6C0 3C0F801A */  lui        $t7, %hi(D_801A1B51)
/* 9B2C4 8009A6C4 91EF1B51 */  lbu        $t7, %lo(D_801A1B51)($t7)
/* 9B2C8 8009A6C8 AFA00000 */  sw         $zero, ($sp)
/* 9B2CC 8009A6CC 19E00023 */  blez       $t7, .L8009A75C
/* 9B2D0 8009A6D0 00000000 */   nop
.L8009A6D4:
/* 9B2D4 8009A6D4 8FB9000C */  lw         $t9, 0xc($sp)
/* 9B2D8 8009A6D8 27B80004 */  addiu      $t8, $sp, 4
/* 9B2DC 8009A6DC 8B210000 */  lwl        $at, ($t9)
/* 9B2E0 8009A6E0 9B210003 */  lwr        $at, 3($t9)
/* 9B2E4 8009A6E4 AF010000 */  sw         $at, ($t8)
/* 9B2E8 8009A6E8 8B290004 */  lwl        $t1, 4($t9)
/* 9B2EC 8009A6EC 9B290007 */  lwr        $t1, 7($t9)
/* 9B2F0 8009A6F0 AF090004 */  sw         $t1, 4($t8)
/* 9B2F4 8009A6F4 93AA0006 */  lbu        $t2, 6($sp)
/* 9B2F8 8009A6F8 314B00C0 */  andi       $t3, $t2, 0xc0
/* 9B2FC 8009A6FC 000B6103 */  sra        $t4, $t3, 4
/* 9B300 8009A700 A08C0004 */  sb         $t4, 4($a0)
/* 9B304 8009A704 908D0004 */  lbu        $t5, 4($a0)
/* 9B308 8009A708 11A00003 */  beqz       $t5, .L8009A718
/* 9B30C 8009A70C 00000000 */   nop
/* 9B310 8009A710 10000007 */  b          .L8009A730
/* 9B314 8009A714 00000000 */   nop
.L8009A718:
/* 9B318 8009A718 97AE0008 */  lhu        $t6, 8($sp)
/* 9B31C 8009A71C A48E0000 */  sh         $t6, ($a0)
/* 9B320 8009A720 83AF000A */  lb         $t7, 0xa($sp)
/* 9B324 8009A724 A08F0002 */  sb         $t7, 2($a0)
/* 9B328 8009A728 83A8000B */  lb         $t0, 0xb($sp)
/* 9B32C 8009A72C A0880003 */  sb         $t0, 3($a0)
.L8009A730:
/* 9B330 8009A730 8FB80000 */  lw         $t8, ($sp)
/* 9B334 8009A734 3C0B801A */  lui        $t3, %hi(D_801A1B51)
/* 9B338 8009A738 916B1B51 */  lbu        $t3, %lo(D_801A1B51)($t3)
/* 9B33C 8009A73C 8FA9000C */  lw         $t1, 0xc($sp)
/* 9B340 8009A740 27190001 */  addiu      $t9, $t8, 1
/* 9B344 8009A744 032B082A */  slt        $at, $t9, $t3
/* 9B348 8009A748 252A0008 */  addiu      $t2, $t1, 8
/* 9B34C 8009A74C AFAA000C */  sw         $t2, 0xc($sp)
/* 9B350 8009A750 AFB90000 */  sw         $t9, ($sp)
/* 9B354 8009A754 1420FFDF */  bnez       $at, .L8009A6D4
/* 9B358 8009A758 24840006 */   addiu     $a0, $a0, 6
.L8009A75C:
/* 9B35C 8009A75C 10000001 */  b          .L8009A764
/* 9B360 8009A760 00000000 */   nop
.L8009A764:
/* 9B364 8009A764 03E00008 */  jr         $ra
/* 9B368 8009A768 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8009A76C
/* 9B36C 8009A76C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9B370 8009A770 3C0E801A */  lui        $t6, %hi(D_801A1B10)
/* 9B374 8009A774 25CE1B10 */  addiu      $t6, $t6, %lo(D_801A1B10)
/* 9B378 8009A778 AFAE000C */  sw         $t6, 0xc($sp)
/* 9B37C 8009A77C AFA00000 */  sw         $zero, ($sp)
.L8009A780:
/* 9B380 8009A780 8FAF0000 */  lw         $t7, ($sp)
/* 9B384 8009A784 3C01801A */  lui        $at, %hi(D_801A1B10)
/* 9B388 8009A788 000FC080 */  sll        $t8, $t7, 2
/* 9B38C 8009A78C 00380821 */  addu       $at, $at, $t8
/* 9B390 8009A790 AC201B10 */  sw         $zero, %lo(D_801A1B10)($at)
/* 9B394 8009A794 8FB90000 */  lw         $t9, ($sp)
/* 9B398 8009A798 27280001 */  addiu      $t0, $t9, 1
/* 9B39C 8009A79C 2901000F */  slti       $at, $t0, 0xf
/* 9B3A0 8009A7A0 1420FFF7 */  bnez       $at, .L8009A780
/* 9B3A4 8009A7A4 AFA80000 */   sw        $t0, ($sp)
/* 9B3A8 8009A7A8 24090001 */  addiu      $t1, $zero, 1
/* 9B3AC 8009A7AC 3C01801A */  lui        $at, %hi(D_801A1B4C)
/* 9B3B0 8009A7B0 AC291B4C */  sw         $t1, %lo(D_801A1B4C)($at)
/* 9B3B4 8009A7B4 240A00FF */  addiu      $t2, $zero, 0xff
/* 9B3B8 8009A7B8 A3AA0004 */  sb         $t2, 4($sp)
/* 9B3BC 8009A7BC 240B0001 */  addiu      $t3, $zero, 1
/* 9B3C0 8009A7C0 A3AB0005 */  sb         $t3, 5($sp)
/* 9B3C4 8009A7C4 240C0004 */  addiu      $t4, $zero, 4
/* 9B3C8 8009A7C8 A3AC0006 */  sb         $t4, 6($sp)
/* 9B3CC 8009A7CC 240D0001 */  addiu      $t5, $zero, 1
/* 9B3D0 8009A7D0 A3AD0007 */  sb         $t5, 7($sp)
/* 9B3D4 8009A7D4 340EFFFF */  ori        $t6, $zero, 0xffff
/* 9B3D8 8009A7D8 A7AE0008 */  sh         $t6, 8($sp)
/* 9B3DC 8009A7DC 240FFFFF */  addiu      $t7, $zero, -1
/* 9B3E0 8009A7E0 A3AF000A */  sb         $t7, 0xa($sp)
/* 9B3E4 8009A7E4 2418FFFF */  addiu      $t8, $zero, -1
/* 9B3E8 8009A7E8 A3B8000B */  sb         $t8, 0xb($sp)
/* 9B3EC 8009A7EC 3C19801A */  lui        $t9, %hi(D_801A1B51)
/* 9B3F0 8009A7F0 93391B51 */  lbu        $t9, %lo(D_801A1B51)($t9)
/* 9B3F4 8009A7F4 AFA00000 */  sw         $zero, ($sp)
/* 9B3F8 8009A7F8 1B200014 */  blez       $t9, .L8009A84C
/* 9B3FC 8009A7FC 00000000 */   nop
.L8009A800:
/* 9B400 8009A800 27A90004 */  addiu      $t1, $sp, 4
/* 9B404 8009A804 8D210000 */  lw         $at, ($t1)
/* 9B408 8009A808 8FA8000C */  lw         $t0, 0xc($sp)
/* 9B40C 8009A80C A9010000 */  swl        $at, ($t0)
/* 9B410 8009A810 B9010003 */  swr        $at, 3($t0)
/* 9B414 8009A814 8D2B0004 */  lw         $t3, 4($t1)
/* 9B418 8009A818 A90B0004 */  swl        $t3, 4($t0)
/* 9B41C 8009A81C B90B0007 */  swr        $t3, 7($t0)
/* 9B420 8009A820 8FAC000C */  lw         $t4, 0xc($sp)
/* 9B424 8009A824 258D0008 */  addiu      $t5, $t4, 8
/* 9B428 8009A828 AFAD000C */  sw         $t5, 0xc($sp)
/* 9B42C 8009A82C 8FAE0000 */  lw         $t6, ($sp)
/* 9B430 8009A830 3C18801A */  lui        $t8, %hi(D_801A1B51)
/* 9B434 8009A834 93181B51 */  lbu        $t8, %lo(D_801A1B51)($t8)
/* 9B438 8009A838 25CF0001 */  addiu      $t7, $t6, 1
/* 9B43C 8009A83C AFAF0000 */  sw         $t7, ($sp)
/* 9B440 8009A840 01F8082A */  slt        $at, $t7, $t8
/* 9B444 8009A844 1420FFEE */  bnez       $at, .L8009A800
/* 9B448 8009A848 00000000 */   nop
.L8009A84C:
/* 9B44C 8009A84C 8FAA000C */  lw         $t2, 0xc($sp)
/* 9B450 8009A850 241900FE */  addiu      $t9, $zero, 0xfe
/* 9B454 8009A854 A1590000 */  sb         $t9, ($t2)
/* 9B458 8009A858 10000001 */  b          .L8009A860
/* 9B45C 8009A85C 00000000 */   nop
.L8009A860:
/* 9B460 8009A860 03E00008 */  jr         $ra
/* 9B464 8009A864 27BD0010 */   addiu     $sp, $sp, 0x10
/* 9B468 8009A868 00000000 */  nop
/* 9B46C 8009A86C 00000000 */  nop
