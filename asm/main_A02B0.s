.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F6B0
/* A02B0 8009F6B0 27BDFFF8 */  addiu      $sp, $sp, -8
/* A02B4 8009F6B4 908E0000 */  lbu        $t6, ($a0)
/* A02B8 8009F6B8 31CF00FF */  andi       $t7, $t6, 0xff
/* A02BC 8009F6BC 000FC600 */  sll        $t8, $t7, 0x18
/* A02C0 8009F6C0 AFB80004 */  sw         $t8, 4($sp)
/* A02C4 8009F6C4 90880001 */  lbu        $t0, 1($a0)
/* A02C8 8009F6C8 8FB90004 */  lw         $t9, 4($sp)
/* A02CC 8009F6CC 310900FF */  andi       $t1, $t0, 0xff
/* A02D0 8009F6D0 00095400 */  sll        $t2, $t1, 0x10
/* A02D4 8009F6D4 032A5825 */  or         $t3, $t9, $t2
/* A02D8 8009F6D8 AFAB0004 */  sw         $t3, 4($sp)
/* A02DC 8009F6DC 908D0002 */  lbu        $t5, 2($a0)
/* A02E0 8009F6E0 8FAC0004 */  lw         $t4, 4($sp)
/* A02E4 8009F6E4 31AE00FF */  andi       $t6, $t5, 0xff
/* A02E8 8009F6E8 000E7A00 */  sll        $t7, $t6, 8
/* A02EC 8009F6EC 018FC025 */  or         $t8, $t4, $t7
/* A02F0 8009F6F0 AFB80004 */  sw         $t8, 4($sp)
/* A02F4 8009F6F4 90890003 */  lbu        $t1, 3($a0)
/* A02F8 8009F6F8 8FA80004 */  lw         $t0, 4($sp)
/* A02FC 8009F6FC 313900FF */  andi       $t9, $t1, 0xff
/* A0300 8009F700 01195025 */  or         $t2, $t0, $t9
/* A0304 8009F704 AFAA0004 */  sw         $t2, 4($sp)
/* A0308 8009F708 10000003 */  b          .L8009F718
/* A030C 8009F70C 8FA20004 */   lw        $v0, 4($sp)
/* A0310 8009F710 10000001 */  b          .L8009F718
/* A0314 8009F714 00000000 */   nop
.L8009F718:
/* A0318 8009F718 03E00008 */  jr         $ra
/* A031C 8009F71C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009F720
/* A0320 8009F720 27BDFFF8 */  addiu      $sp, $sp, -8
/* A0324 8009F724 93AE0004 */  lbu        $t6, 4($sp)
/* A0328 8009F728 31CFFF03 */  andi       $t7, $t6, 0xff03
/* A032C 8009F72C 35F80030 */  ori        $t8, $t7, 0x30
/* A0330 8009F730 A3B80004 */  sb         $t8, 4($sp)
/* A0334 8009F734 93A90004 */  lbu        $t1, 4($sp)
/* A0338 8009F738 30B90003 */  andi       $t9, $a1, 3
/* A033C 8009F73C 33280003 */  andi       $t0, $t9, 3
/* A0340 8009F740 312AFFFC */  andi       $t2, $t1, 0xfffc
/* A0344 8009F744 010A5825 */  or         $t3, $t0, $t2
/* A0348 8009F748 A3AB0004 */  sb         $t3, 4($sp)
/* A034C 8009F74C 10A0000B */  beqz       $a1, .L8009F77C
/* A0350 8009F750 AFA00000 */   sw        $zero, ($sp)
.L8009F754:
/* A0354 8009F754 8FAC0000 */  lw         $t4, ($sp)
/* A0358 8009F758 008C6821 */  addu       $t5, $a0, $t4
/* A035C 8009F75C 91AE0000 */  lbu        $t6, ($t5)
/* A0360 8009F760 03AC7821 */  addu       $t7, $sp, $t4
/* A0364 8009F764 A1EE0005 */  sb         $t6, 5($t7)
/* A0368 8009F768 8FB80000 */  lw         $t8, ($sp)
/* A036C 8009F76C 27190001 */  addiu      $t9, $t8, 1
/* A0370 8009F770 0325082B */  sltu       $at, $t9, $a1
/* A0374 8009F774 1420FFF7 */  bnez       $at, .L8009F754
/* A0378 8009F778 AFB90000 */   sw        $t9, ($sp)
.L8009F77C:
/* A037C 8009F77C 27A90004 */  addiu      $t1, $sp, 4
/* A0380 8009F780 8D280000 */  lw         $t0, ($t1)
/* A0384 8009F784 3C0AC000 */  lui        $t2, 0xc000
/* A0388 8009F788 AD480000 */  sw         $t0, ($t2)
/* A038C 8009F78C 10000001 */  b          .L8009F794
/* A0390 8009F790 00000000 */   nop
.L8009F794:
/* A0394 8009F794 03E00008 */  jr         $ra
/* A0398 8009F798 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009F79C
/* A039C 8009F79C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A03A0 8009F7A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A03A4 8009F7A4 0C02DC00 */  jal        func_800B7000
/* A03A8 8009F7A8 00000000 */   nop
/* A03AC 8009F7AC 304E2000 */  andi       $t6, $v0, 0x2000
/* A03B0 8009F7B0 15C00006 */  bnez       $t6, .L8009F7CC
/* A03B4 8009F7B4 00000000 */   nop
.L8009F7B8:
/* A03B8 8009F7B8 0C02DC00 */  jal        func_800B7000
/* A03BC 8009F7BC 00000000 */   nop
/* A03C0 8009F7C0 304F2000 */  andi       $t7, $v0, 0x2000
/* A03C4 8009F7C4 11E0FFFC */  beqz       $t7, .L8009F7B8
/* A03C8 8009F7C8 00000000 */   nop
.L8009F7CC:
/* A03CC 8009F7CC 3C18C000 */  lui        $t8, %hi(D_C000000C)
/* A03D0 8009F7D0 AF00000C */  sw         $zero, %lo(D_C000000C)($t8)
/* A03D4 8009F7D4 0C02DC00 */  jal        func_800B7000
/* A03D8 8009F7D8 00000000 */   nop
/* A03DC 8009F7DC 30592000 */  andi       $t9, $v0, 0x2000
/* A03E0 8009F7E0 13200006 */  beqz       $t9, .L8009F7FC
/* A03E4 8009F7E4 00000000 */   nop
.L8009F7E8:
/* A03E8 8009F7E8 0C02DC00 */  jal        func_800B7000
/* A03EC 8009F7EC 00000000 */   nop
/* A03F0 8009F7F0 30482000 */  andi       $t0, $v0, 0x2000
/* A03F4 8009F7F4 1500FFFC */  bnez       $t0, .L8009F7E8
/* A03F8 8009F7F8 00000000 */   nop
.L8009F7FC:
/* A03FC 8009F7FC 10000001 */  b          .L8009F804
/* A0400 8009F800 00000000 */   nop
.L8009F804:
/* A0404 8009F804 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0408 8009F808 27BD0018 */  addiu      $sp, $sp, 0x18
/* A040C 8009F80C 03E00008 */  jr         $ra
/* A0410 8009F810 00000000 */   nop

glabel func_8009F814
/* A0414 8009F814 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0418 8009F818 AFBF0014 */  sw         $ra, 0x14($sp)
/* A041C 8009F81C AFA40028 */  sw         $a0, 0x28($sp)
/* A0420 8009F820 AFA5002C */  sw         $a1, 0x2c($sp)
/* A0424 8009F824 AFA00020 */  sw         $zero, 0x20($sp)
/* A0428 8009F828 3C0E800D */  lui        $t6, %hi(D_800CD570)
/* A042C 8009F82C 8DCED570 */  lw         $t6, %lo(D_800CD570)($t6)
/* A0430 8009F830 15C00005 */  bnez       $t6, .L8009F848
/* A0434 8009F834 00000000 */   nop
/* A0438 8009F838 0C027DE7 */  jal        func_8009F79C
/* A043C 8009F83C 00000000 */   nop
/* A0440 8009F840 10000003 */  b          .L8009F850
/* A0444 8009F844 AFA0001C */   sw        $zero, 0x1c($sp)
.L8009F848:
/* A0448 8009F848 240F0001 */  addiu      $t7, $zero, 1
/* A044C 8009F84C AFAF001C */  sw         $t7, 0x1c($sp)
.L8009F850:
/* A0450 8009F850 8FB8002C */  lw         $t8, 0x2c($sp)
/* A0454 8009F854 1300001E */  beqz       $t8, .L8009F8D0
/* A0458 8009F858 00000000 */   nop
.L8009F85C:
/* A045C 8009F85C 8FB9002C */  lw         $t9, 0x2c($sp)
/* A0460 8009F860 2F210003 */  sltiu      $at, $t9, 3
/* A0464 8009F864 10200003 */  beqz       $at, .L8009F874
/* A0468 8009F868 00000000 */   nop
/* A046C 8009F86C 10000003 */  b          .L8009F87C
/* A0470 8009F870 AFB90024 */   sw        $t9, 0x24($sp)
.L8009F874:
/* A0474 8009F874 24080003 */  addiu      $t0, $zero, 3
/* A0478 8009F878 AFA80024 */  sw         $t0, 0x24($sp)
.L8009F87C:
/* A047C 8009F87C 8FA90028 */  lw         $t1, 0x28($sp)
/* A0480 8009F880 8FAA0020 */  lw         $t2, 0x20($sp)
/* A0484 8009F884 8FA50024 */  lw         $a1, 0x24($sp)
/* A0488 8009F888 0C027DC8 */  jal        func_8009F720
/* A048C 8009F88C 012A2021 */   addu      $a0, $t1, $t2
/* A0490 8009F890 8FAB002C */  lw         $t3, 0x2c($sp)
/* A0494 8009F894 8FAC0024 */  lw         $t4, 0x24($sp)
/* A0498 8009F898 016C6823 */  subu       $t5, $t3, $t4
/* A049C 8009F89C AFAD002C */  sw         $t5, 0x2c($sp)
/* A04A0 8009F8A0 8FAE0020 */  lw         $t6, 0x20($sp)
/* A04A4 8009F8A4 8FAF0024 */  lw         $t7, 0x24($sp)
/* A04A8 8009F8A8 01CFC021 */  addu       $t8, $t6, $t7
/* A04AC 8009F8AC AFB80020 */  sw         $t8, 0x20($sp)
/* A04B0 8009F8B0 8FB9002C */  lw         $t9, 0x2c($sp)
/* A04B4 8009F8B4 13200003 */  beqz       $t9, .L8009F8C4
/* A04B8 8009F8B8 00000000 */   nop
/* A04BC 8009F8BC 0C027DE7 */  jal        func_8009F79C
/* A04C0 8009F8C0 00000000 */   nop
.L8009F8C4:
/* A04C4 8009F8C4 8FA8002C */  lw         $t0, 0x2c($sp)
/* A04C8 8009F8C8 1500FFE4 */  bnez       $t0, .L8009F85C
/* A04CC 8009F8CC 00000000 */   nop
.L8009F8D0:
/* A04D0 8009F8D0 8FA9001C */  lw         $t1, 0x1c($sp)
/* A04D4 8009F8D4 11200003 */  beqz       $t1, .L8009F8E4
/* A04D8 8009F8D8 00000000 */   nop
/* A04DC 8009F8DC 0C027DE7 */  jal        func_8009F79C
/* A04E0 8009F8E0 00000000 */   nop
.L8009F8E4:
/* A04E4 8009F8E4 10000001 */  b          .L8009F8EC
/* A04E8 8009F8E8 00000000 */   nop
.L8009F8EC:
/* A04EC 8009F8EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A04F0 8009F8F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* A04F4 8009F8F4 03E00008 */  jr         $ra
/* A04F8 8009F8F8 00000000 */   nop

glabel func_8009F8FC
/* A04FC 8009F8FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0500 8009F900 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0504 8009F904 AFA40028 */  sw         $a0, 0x28($sp)
/* A0508 8009F908 AFA00024 */  sw         $zero, 0x24($sp)
.L8009F90C:
/* A050C 8009F90C 8FAE0024 */  lw         $t6, 0x24($sp)
/* A0510 8009F910 3C18800D */  lui        $t8, %hi(D_800CC2B0)
/* A0514 8009F914 8F18C2B0 */  lw         $t8, %lo(D_800CC2B0)($t8)
/* A0518 8009F918 03AE7821 */  addu       $t7, $sp, $t6
/* A051C 8009F91C 91EF0029 */  lbu        $t7, 0x29($t7)
/* A0520 8009F920 3C19800D */  lui        $t9, %hi(D_800CC2B0)
/* A0524 8009F924 8F39C2B0 */  lw         $t9, %lo(D_800CC2B0)($t9)
/* A0528 8009F928 3C01801A */  lui        $at, %hi(D_801A1DA0)
/* A052C 8009F92C 00380821 */  addu       $at, $at, $t8
/* A0530 8009F930 A02F1DA0 */  sb         $t7, %lo(D_801A1DA0)($at)
/* A0534 8009F934 3C01800D */  lui        $at, %hi(D_800CC2B0)
/* A0538 8009F938 27280001 */  addiu      $t0, $t9, 1
/* A053C 8009F93C AC28C2B0 */  sw         $t0, %lo(D_800CC2B0)($at)
/* A0540 8009F940 8FA90024 */  lw         $t1, 0x24($sp)
/* A0544 8009F944 252A0001 */  addiu      $t2, $t1, 1
/* A0548 8009F948 2D410003 */  sltiu      $at, $t2, 3
/* A054C 8009F94C 1420FFEF */  bnez       $at, .L8009F90C
/* A0550 8009F950 AFAA0024 */   sw        $t2, 0x24($sp)
/* A0554 8009F954 3C0B801A */  lui        $t3, %hi(D_801A1DA0)
/* A0558 8009F958 256B1DA0 */  addiu      $t3, $t3, %lo(D_801A1DA0)
/* A055C 8009F95C 916C0000 */  lbu        $t4, ($t3)
/* A0560 8009F960 24010002 */  addiu      $at, $zero, 2
/* A0564 8009F964 15810009 */  bne        $t4, $at, .L8009F98C
/* A0568 8009F968 00000000 */   nop
/* A056C 8009F96C 3C04800D */  lui        $a0, %hi(D_800CC260)
/* A0570 8009F970 8C84C260 */  lw         $a0, %lo(D_800CC260)($a0)
/* A0574 8009F974 24050190 */  addiu      $a1, $zero, 0x190
/* A0578 8009F978 0C027E05 */  jal        func_8009F814
/* A057C 8009F97C 24840020 */   addiu     $a0, $a0, 0x20
/* A0580 8009F980 3C01800D */  lui        $at, %hi(D_800CC2B0)
/* A0584 8009F984 1000001B */  b          .L8009F9F4
/* A0588 8009F988 AC20C2B0 */   sw        $zero, %lo(D_800CC2B0)($at)
.L8009F98C:
/* A058C 8009F98C 3C0D800D */  lui        $t5, %hi(D_800CC2B0)
/* A0590 8009F990 8DADC2B0 */  lw         $t5, %lo(D_800CC2B0)($t5)
/* A0594 8009F994 2DA10009 */  sltiu      $at, $t5, 9
/* A0598 8009F998 14200016 */  bnez       $at, .L8009F9F4
/* A059C 8009F99C 00000000 */   nop
/* A05A0 8009F9A0 3C0E801A */  lui        $t6, %hi(D_801A1DA0)
/* A05A4 8009F9A4 25CE1DA0 */  addiu      $t6, $t6, %lo(D_801A1DA0)
/* A05A8 8009F9A8 91CF0000 */  lbu        $t7, ($t6)
/* A05AC 8009F9AC 24010001 */  addiu      $at, $zero, 1
/* A05B0 8009F9B0 15E10010 */  bne        $t7, $at, .L8009F9F4
/* A05B4 8009F9B4 00000000 */   nop
/* A05B8 8009F9B8 3C04801A */  lui        $a0, %hi(D_801A1DA0)
/* A05BC 8009F9BC 24841DA0 */  addiu      $a0, $a0, %lo(D_801A1DA0)
/* A05C0 8009F9C0 0C027DAC */  jal        func_8009F6B0
/* A05C4 8009F9C4 24840001 */   addiu     $a0, $a0, 1
/* A05C8 8009F9C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* A05CC 8009F9CC 3C04801A */  lui        $a0, %hi(D_801A1DA0)
/* A05D0 8009F9D0 24841DA0 */  addiu      $a0, $a0, %lo(D_801A1DA0)
/* A05D4 8009F9D4 0C027DAC */  jal        func_8009F6B0
/* A05D8 8009F9D8 24840005 */   addiu     $a0, $a0, 5
/* A05DC 8009F9DC AFA20020 */  sw         $v0, 0x20($sp)
/* A05E0 8009F9E0 8FA4001C */  lw         $a0, 0x1c($sp)
/* A05E4 8009F9E4 0C027E05 */  jal        func_8009F814
/* A05E8 8009F9E8 8FA50020 */   lw        $a1, 0x20($sp)
/* A05EC 8009F9EC 3C01800D */  lui        $at, %hi(D_800CC2B0)
/* A05F0 8009F9F0 AC20C2B0 */  sw         $zero, %lo(D_800CC2B0)($at)
.L8009F9F4:
/* A05F4 8009F9F4 10000001 */  b          .L8009F9FC
/* A05F8 8009F9F8 00000000 */   nop
.L8009F9FC:
/* A05FC 8009F9FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0600 8009FA00 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0604 8009FA04 03E00008 */  jr         $ra
/* A0608 8009FA08 00000000 */   nop
/* A060C 8009FA0C 00000000 */  nop
