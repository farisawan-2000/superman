.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AEAE0
/* AF6E0 800AEAE0 3C01801A */  lui        $at, %hi(D_801A4284)
/* AF6E4 800AEAE4 240E0000 */  addiu      $t6, $zero, 0
/* AF6E8 800AEAE8 240F0000 */  addiu      $t7, $zero, 0
/* AF6EC 800AEAEC AC2F4284 */  sw         $t7, %lo(D_801A4284)($at)
/* AF6F0 800AEAF0 AC2E4280 */  sw         $t6, 0x4280($at)
/* AF6F4 800AEAF4 3C01801A */  lui        $at, %hi(D_801A4288)
/* AF6F8 800AEAF8 AC204288 */  sw         $zero, %lo(D_801A4288)($at)
/* AF6FC 800AEAFC 3C01801A */  lui        $at, %hi(D_801A428C)
/* AF700 800AEB00 AC20428C */  sw         $zero, %lo(D_801A428C)($at)
/* AF704 800AEB04 3C18800D */  lui        $t8, %hi(D_800CD3C0)
/* AF708 800AEB08 8F18D3C0 */  lw         $t8, %lo(D_800CD3C0)($t8)
/* AF70C 800AEB0C 3C19800D */  lui        $t9, %hi(D_800CD3C0)
/* AF710 800AEB10 AF180004 */  sw         $t8, 4($t8)
/* AF714 800AEB14 8F39D3C0 */  lw         $t9, %lo(D_800CD3C0)($t9)
/* AF718 800AEB18 8F280004 */  lw         $t0, 4($t9)
/* AF71C 800AEB1C AF280000 */  sw         $t0, ($t9)
/* AF720 800AEB20 3C09800D */  lui        $t1, %hi(D_800CD3C0)
/* AF724 800AEB24 8D29D3C0 */  lw         $t1, %lo(D_800CD3C0)($t1)
/* AF728 800AEB28 240A0000 */  addiu      $t2, $zero, 0
/* AF72C 800AEB2C 240B0000 */  addiu      $t3, $zero, 0
/* AF730 800AEB30 3C0C800D */  lui        $t4, %hi(D_800CD3C0)
/* AF734 800AEB34 AD2B0014 */  sw         $t3, 0x14($t1)
/* AF738 800AEB38 AD2A0010 */  sw         $t2, 0x10($t1)
/* AF73C 800AEB3C 8D8CD3C0 */  lw         $t4, %lo(D_800CD3C0)($t4)
/* AF740 800AEB40 8D8E0010 */  lw         $t6, 0x10($t4)
/* AF744 800AEB44 8D8F0014 */  lw         $t7, 0x14($t4)
/* AF748 800AEB48 AD8E0008 */  sw         $t6, 8($t4)
/* AF74C 800AEB4C AD8F000C */  sw         $t7, 0xc($t4)
/* AF750 800AEB50 3C0D800D */  lui        $t5, %hi(D_800CD3C0)
/* AF754 800AEB54 8DADD3C0 */  lw         $t5, %lo(D_800CD3C0)($t5)
/* AF758 800AEB58 ADA00018 */  sw         $zero, 0x18($t5)
/* AF75C 800AEB5C 3C18800D */  lui        $t8, %hi(D_800CD3C0)
/* AF760 800AEB60 8F18D3C0 */  lw         $t8, %lo(D_800CD3C0)($t8)
/* AF764 800AEB64 AF00001C */  sw         $zero, 0x1c($t8)
/* AF768 800AEB68 03E00008 */  jr         $ra
/* AF76C 800AEB6C 00000000 */   nop

glabel func_800AEB70
/* AF770 800AEB70 03E00008 */  jr         $ra
/* AF774 800AEB74 00000000 */   nop

glabel func_800AEB78
/* AF778 800AEB78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AF77C 800AEB7C AFBF0014 */  sw         $ra, 0x14($sp)
/* AF780 800AEB80 3C0E801A */  lui        $t6, %hi(D_801A4294)
/* AF784 800AEB84 8DCE4294 */  lw         $t6, %lo(D_801A4294)($t6)
/* AF788 800AEB88 AFAE0020 */  sw         $t6, 0x20($sp)
/* AF78C 800AEB8C 3C0F800D */  lui        $t7, %hi(D_800CD3C0)
/* AF790 800AEB90 8DEFD3C0 */  lw         $t7, %lo(D_800CD3C0)($t7)
/* AF794 800AEB94 8DF80000 */  lw         $t8, ($t7)
/* AF798 800AEB98 170F0003 */  bne        $t8, $t7, .L800AEBA8
/* AF79C 800AEB9C 00000000 */   nop
/* AF7A0 800AEBA0 1000009F */  b          .L800AEE20
/* AF7A4 800AEBA4 00000000 */   nop
.L800AEBA8:
/* AF7A8 800AEBA8 3C19800D */  lui        $t9, %hi(D_800CD3C0)
/* AF7AC 800AEBAC 8F39D3C0 */  lw         $t9, %lo(D_800CD3C0)($t9)
/* AF7B0 800AEBB0 8F280000 */  lw         $t0, ($t9)
/* AF7B4 800AEBB4 AFA80034 */  sw         $t0, 0x34($sp)
/* AF7B8 800AEBB8 3C0A800D */  lui        $t2, %hi(D_800CD3C0)
/* AF7BC 800AEBBC 8D4AD3C0 */  lw         $t2, %lo(D_800CD3C0)($t2)
/* AF7C0 800AEBC0 8FA90034 */  lw         $t1, 0x34($sp)
/* AF7C4 800AEBC4 152A0007 */  bne        $t1, $t2, .L800AEBE4
/* AF7C8 800AEBC8 00000000 */   nop
/* AF7CC 800AEBCC 0C02BE20 */  jal        func_800AF880
/* AF7D0 800AEBD0 00002025 */   or        $a0, $zero, $zero
/* AF7D4 800AEBD4 3C01801A */  lui        $at, %hi(D_801A4290)
/* AF7D8 800AEBD8 AC204290 */  sw         $zero, %lo(D_801A4290)($at)
/* AF7DC 800AEBDC 1000008E */  b          .L800AEE18
/* AF7E0 800AEBE0 00000000 */   nop
.L800AEBE4:
/* AF7E4 800AEBE4 0C02923C */  jal        func_800A48F0
/* AF7E8 800AEBE8 00000000 */   nop
/* AF7EC 800AEBEC AFA20030 */  sw         $v0, 0x30($sp)
/* AF7F0 800AEBF0 3C0C801A */  lui        $t4, %hi(D_801A4290)
/* AF7F4 800AEBF4 8D8C4290 */  lw         $t4, %lo(D_801A4290)($t4)
/* AF7F8 800AEBF8 8FAB0030 */  lw         $t3, 0x30($sp)
/* AF7FC 800AEBFC 016C6823 */  subu       $t5, $t3, $t4
/* AF800 800AEC00 AFAD002C */  sw         $t5, 0x2c($sp)
/* AF804 800AEC04 8FAE0030 */  lw         $t6, 0x30($sp)
/* AF808 800AEC08 3C01801A */  lui        $at, %hi(D_801A4290)
/* AF80C 800AEC0C AC2E4290 */  sw         $t6, %lo(D_801A4290)($at)
/* AF810 800AEC10 8FAF0034 */  lw         $t7, 0x34($sp)
/* AF814 800AEC14 8FB8002C */  lw         $t8, 0x2c($sp)
/* AF818 800AEC18 24080000 */  addiu      $t0, $zero, 0
/* AF81C 800AEC1C 8DEA0010 */  lw         $t2, 0x10($t7)
/* AF820 800AEC20 8DEB0014 */  lw         $t3, 0x14($t7)
/* AF824 800AEC24 03004825 */  or         $t1, $t8, $zero
/* AF828 800AEC28 0148082B */  sltu       $at, $t2, $t0
/* AF82C 800AEC2C 1420001C */  bnez       $at, .L800AECA0
/* AF830 800AEC30 00000000 */   nop
/* AF834 800AEC34 010A082B */  sltu       $at, $t0, $t2
/* AF838 800AEC38 14200004 */  bnez       $at, .L800AEC4C
/* AF83C 800AEC3C 00000000 */   nop
/* AF840 800AEC40 012B082B */  sltu       $at, $t1, $t3
/* AF844 800AEC44 10200016 */  beqz       $at, .L800AECA0
/* AF848 800AEC48 00000000 */   nop
.L800AEC4C:
/* AF84C 800AEC4C 8FB90034 */  lw         $t9, 0x34($sp)
/* AF850 800AEC50 8FAD002C */  lw         $t5, 0x2c($sp)
/* AF854 800AEC54 24180000 */  addiu      $t8, $zero, 0
/* AF858 800AEC58 272C0010 */  addiu      $t4, $t9, 0x10
/* AF85C 800AEC5C AFAC001C */  sw         $t4, 0x1c($sp)
/* AF860 800AEC60 8F2F0014 */  lw         $t7, 0x14($t9)
/* AF864 800AEC64 8F2E0010 */  lw         $t6, 0x10($t9)
/* AF868 800AEC68 03204025 */  or         $t0, $t9, $zero
/* AF86C 800AEC6C 01A0C825 */  or         $t9, $t5, $zero
/* AF870 800AEC70 01F9082B */  sltu       $at, $t7, $t9
/* AF874 800AEC74 01D85023 */  subu       $t2, $t6, $t8
/* AF878 800AEC78 01415023 */  subu       $t2, $t2, $at
/* AF87C 800AEC7C 01F95823 */  subu       $t3, $t7, $t9
/* AF880 800AEC80 AD0B0014 */  sw         $t3, 0x14($t0)
/* AF884 800AEC84 AD0A0010 */  sw         $t2, 0x10($t0)
/* AF888 800AEC88 8FA90034 */  lw         $t1, 0x34($sp)
/* AF88C 800AEC8C 8D240010 */  lw         $a0, 0x10($t1)
/* AF890 800AEC90 0C02BB8C */  jal        func_800AEE30
/* AF894 800AEC94 8D250014 */   lw        $a1, 0x14($t1)
/* AF898 800AEC98 1000005F */  b          .L800AEE18
/* AF89C 800AEC9C 00000000 */   nop
.L800AECA0:
/* AF8A0 800AECA0 8FAC0034 */  lw         $t4, 0x34($sp)
/* AF8A4 800AECA4 8D8D0000 */  lw         $t5, ($t4)
/* AF8A8 800AECA8 8D8E0004 */  lw         $t6, 4($t4)
/* AF8AC 800AECAC ADCD0000 */  sw         $t5, ($t6)
/* AF8B0 800AECB0 8FAF0034 */  lw         $t7, 0x34($sp)
/* AF8B4 800AECB4 8DF80004 */  lw         $t8, 4($t7)
/* AF8B8 800AECB8 8DF90000 */  lw         $t9, ($t7)
/* AF8BC 800AECBC AF380004 */  sw         $t8, 4($t9)
/* AF8C0 800AECC0 8FAA0034 */  lw         $t2, 0x34($sp)
/* AF8C4 800AECC4 AD400000 */  sw         $zero, ($t2)
/* AF8C8 800AECC8 8FAB0034 */  lw         $t3, 0x34($sp)
/* AF8CC 800AECCC AD600004 */  sw         $zero, 4($t3)
/* AF8D0 800AECD0 8FA80034 */  lw         $t0, 0x34($sp)
/* AF8D4 800AECD4 8D090018 */  lw         $t1, 0x18($t0)
/* AF8D8 800AECD8 1120003F */  beqz       $t1, .L800AEDD8
/* AF8DC 800AECDC 00000000 */   nop
/* AF8E0 800AECE0 8FAC0034 */  lw         $t4, 0x34($sp)
/* AF8E4 800AECE4 3C0E801A */  lui        $t6, %hi(D_801A42A0)
/* AF8E8 800AECE8 25CE42A0 */  addiu      $t6, $t6, %lo(D_801A42A0)
/* AF8EC 800AECEC 8D8D0018 */  lw         $t5, 0x18($t4)
/* AF8F0 800AECF0 11AE0008 */  beq        $t5, $t6, .L800AED14
/* AF8F4 800AECF4 00000000 */   nop
/* AF8F8 800AECF8 8FAF0034 */  lw         $t7, 0x34($sp)
/* AF8FC 800AECFC 00003025 */  or         $a2, $zero, $zero
/* AF900 800AED00 8DE40018 */  lw         $a0, 0x18($t7)
/* AF904 800AED04 0C025C40 */  jal        func_80097100
/* AF908 800AED08 8DE5001C */   lw        $a1, 0x1c($t7)
/* AF90C 800AED0C 10000032 */  b          .L800AEDD8
/* AF910 800AED10 00000000 */   nop
.L800AED14:
/* AF914 800AED14 3C18800D */  lui        $t8, %hi(D_800CC258)
/* AF918 800AED18 8F18C258 */  lw         $t8, %lo(D_800CC258)($t8)
/* AF91C 800AED1C 8F19011C */  lw         $t9, 0x11c($t8)
/* AF920 800AED20 AFB90028 */  sw         $t9, 0x28($sp)
/* AF924 800AED24 3C0A801A */  lui        $t2, %hi(D_801A4294)
/* AF928 800AED28 3C0B801A */  lui        $t3, %hi(D_801A4298)
/* AF92C 800AED2C 8D6B4298 */  lw         $t3, %lo(D_801A4298)($t3)
/* AF930 800AED30 8D4A4294 */  lw         $t2, %lo(D_801A4294)($t2)
/* AF934 800AED34 014B082B */  sltu       $at, $t2, $t3
/* AF938 800AED38 10200022 */  beqz       $at, .L800AEDC4
/* AF93C 800AED3C AFAA0020 */   sw        $t2, 0x20($sp)
.L800AED40:
/* AF940 800AED40 8FA90020 */  lw         $t1, 0x20($sp)
/* AF944 800AED44 8FA80028 */  lw         $t0, 0x28($sp)
/* AF948 800AED48 8D2C0008 */  lw         $t4, 8($t1)
/* AF94C 800AED4C 010C6823 */  subu       $t5, $t0, $t4
/* AF950 800AED50 AFAD0024 */  sw         $t5, 0x24($sp)
/* AF954 800AED54 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF958 800AED58 05C00012 */  bltz       $t6, .L800AEDA4
/* AF95C 800AED5C 00000000 */   nop
/* AF960 800AED60 8FAF0020 */  lw         $t7, 0x20($sp)
/* AF964 800AED64 8FB90028 */  lw         $t9, 0x28($sp)
/* AF968 800AED68 8DF8000C */  lw         $t8, 0xc($t7)
/* AF96C 800AED6C 03195023 */  subu       $t2, $t8, $t9
/* AF970 800AED70 1940000C */  blez       $t2, .L800AEDA4
/* AF974 800AED74 00000000 */   nop
/* AF978 800AED78 8FAC0020 */  lw         $t4, 0x20($sp)
/* AF97C 800AED7C 8FAB0024 */  lw         $t3, 0x24($sp)
/* AF980 800AED80 8D8D0000 */  lw         $t5, ($t4)
/* AF984 800AED84 000B4883 */  sra        $t1, $t3, 2
/* AF988 800AED88 00094040 */  sll        $t0, $t1, 1
/* AF98C 800AED8C 010D7021 */  addu       $t6, $t0, $t5
/* AF990 800AED90 95CF0000 */  lhu        $t7, ($t6)
/* AF994 800AED94 25F80001 */  addiu      $t8, $t7, 1
/* AF998 800AED98 A5D80000 */  sh         $t8, ($t6)
/* AF99C 800AED9C 1000000E */  b          .L800AEDD8
/* AF9A0 800AEDA0 00000000 */   nop
.L800AEDA4:
/* AF9A4 800AEDA4 8FB90020 */  lw         $t9, 0x20($sp)
/* AF9A8 800AEDA8 3C0B801A */  lui        $t3, %hi(D_801A4298)
/* AF9AC 800AEDAC 8D6B4298 */  lw         $t3, %lo(D_801A4298)($t3)
/* AF9B0 800AEDB0 272A0010 */  addiu      $t2, $t9, 0x10
/* AF9B4 800AEDB4 AFAA0020 */  sw         $t2, 0x20($sp)
/* AF9B8 800AEDB8 014B082B */  sltu       $at, $t2, $t3
/* AF9BC 800AEDBC 1420FFE0 */  bnez       $at, .L800AED40
/* AF9C0 800AEDC0 00000000 */   nop
.L800AEDC4:
/* AF9C4 800AEDC4 3C09801A */  lui        $t1, %hi(D_801A429C)
/* AF9C8 800AEDC8 8D29429C */  lw         $t1, %lo(D_801A429C)($t1)
/* AF9CC 800AEDCC 3C01801A */  lui        $at, %hi(D_801A429C)
/* AF9D0 800AEDD0 252C0001 */  addiu      $t4, $t1, 1
/* AF9D4 800AEDD4 AC2C429C */  sw         $t4, %lo(D_801A429C)($at)
.L800AEDD8:
/* AF9D8 800AEDD8 8FA80034 */  lw         $t0, 0x34($sp)
/* AF9DC 800AEDDC 8D180008 */  lw         $t8, 8($t0)
/* AF9E0 800AEDE0 8D19000C */  lw         $t9, 0xc($t0)
/* AF9E4 800AEDE4 17000003 */  bnez       $t8, .L800AEDF4
/* AF9E8 800AEDE8 00000000 */   nop
/* AF9EC 800AEDEC 13200008 */  beqz       $t9, .L800AEE10
/* AF9F0 800AEDF0 00000000 */   nop
.L800AEDF4:
/* AF9F4 800AEDF4 8FAD0034 */  lw         $t5, 0x34($sp)
/* AF9F8 800AEDF8 8DAE0008 */  lw         $t6, 8($t5)
/* AF9FC 800AEDFC 8DAF000C */  lw         $t7, 0xc($t5)
/* AFA00 800AEE00 ADAE0010 */  sw         $t6, 0x10($t5)
/* AFA04 800AEE04 ADAF0014 */  sw         $t7, 0x14($t5)
/* AFA08 800AEE08 0C02BBAF */  jal        func_800AEEBC
/* AFA0C 800AEE0C 8FA40034 */   lw        $a0, 0x34($sp)
.L800AEE10:
/* AFA10 800AEE10 1000FF65 */  b          .L800AEBA8
/* AFA14 800AEE14 00000000 */   nop
.L800AEE18:
/* AFA18 800AEE18 10000001 */  b          .L800AEE20
/* AFA1C 800AEE1C 00000000 */   nop
.L800AEE20:
/* AFA20 800AEE20 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFA24 800AEE24 27BD0038 */  addiu      $sp, $sp, 0x38
/* AFA28 800AEE28 03E00008 */  jr         $ra
/* AFA2C 800AEE2C 00000000 */   nop

glabel func_800AEE30
/* AFA30 800AEE30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AFA34 800AEE34 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFA38 800AEE38 AFA40028 */  sw         $a0, 0x28($sp)
/* AFA3C 800AEE3C AFA5002C */  sw         $a1, 0x2c($sp)
/* AFA40 800AEE40 0C02C0C8 */  jal        func_800B0320
/* AFA44 800AEE44 00000000 */   nop
/* AFA48 800AEE48 AFA2001C */  sw         $v0, 0x1c($sp)
/* AFA4C 800AEE4C 0C02923C */  jal        func_800A48F0
/* AFA50 800AEE50 00000000 */   nop
/* AFA54 800AEE54 3C01801A */  lui        $at, %hi(D_801A4290)
/* AFA58 800AEE58 AC224290 */  sw         $v0, %lo(D_801A4290)($at)
/* AFA5C 800AEE5C 3C0E801A */  lui        $t6, %hi(D_801A4290)
/* AFA60 800AEE60 8DCE4290 */  lw         $t6, %lo(D_801A4290)($t6)
/* AFA64 800AEE64 8FA9002C */  lw         $t1, 0x2c($sp)
/* AFA68 800AEE68 8FA80028 */  lw         $t0, 0x28($sp)
/* AFA6C 800AEE6C 01C0C825 */  or         $t9, $t6, $zero
/* AFA70 800AEE70 03295821 */  addu       $t3, $t9, $t1
/* AFA74 800AEE74 24180000 */  addiu      $t8, $zero, 0
/* AFA78 800AEE78 0169082B */  sltu       $at, $t3, $t1
/* AFA7C 800AEE7C 00385021 */  addu       $t2, $at, $t8
/* AFA80 800AEE80 01485021 */  addu       $t2, $t2, $t0
/* AFA84 800AEE84 AFAA0020 */  sw         $t2, 0x20($sp)
/* AFA88 800AEE88 AFAB0024 */  sw         $t3, 0x24($sp)
/* AFA8C 800AEE8C 8FAD0024 */  lw         $t5, 0x24($sp)
/* AFA90 800AEE90 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFA94 800AEE94 0C02BE20 */  jal        func_800AF880
/* AFA98 800AEE98 01A02025 */   or        $a0, $t5, $zero
/* AFA9C 800AEE9C 0C02C0D0 */  jal        func_800B0340
/* AFAA0 800AEEA0 8FA4001C */   lw        $a0, 0x1c($sp)
/* AFAA4 800AEEA4 10000001 */  b          .L800AEEAC
/* AFAA8 800AEEA8 00000000 */   nop
.L800AEEAC:
/* AFAAC 800AEEAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFAB0 800AEEB0 27BD0028 */  addiu      $sp, $sp, 0x28
/* AFAB4 800AEEB4 03E00008 */  jr         $ra
/* AFAB8 800AEEB8 00000000 */   nop

glabel func_800AEEBC
/* AFABC 800AEEBC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AFAC0 800AEEC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFAC4 800AEEC4 AFA40038 */  sw         $a0, 0x38($sp)
/* AFAC8 800AEEC8 0C02C0C8 */  jal        func_800B0320
/* AFACC 800AEECC 00000000 */   nop
/* AFAD0 800AEED0 AFA20024 */  sw         $v0, 0x24($sp)
/* AFAD4 800AEED4 3C0E800D */  lui        $t6, %hi(D_800CD3C0)
/* AFAD8 800AEED8 8DCED3C0 */  lw         $t6, %lo(D_800CD3C0)($t6)
/* AFADC 800AEEDC 8DCF0000 */  lw         $t7, ($t6)
/* AFAE0 800AEEE0 AFAF0034 */  sw         $t7, 0x34($sp)
/* AFAE4 800AEEE4 8FB80038 */  lw         $t8, 0x38($sp)
/* AFAE8 800AEEE8 8F080010 */  lw         $t0, 0x10($t8)
/* AFAEC 800AEEEC 8F090014 */  lw         $t1, 0x14($t8)
/* AFAF0 800AEEF0 AFA80028 */  sw         $t0, 0x28($sp)
/* AFAF4 800AEEF4 AFA9002C */  sw         $t1, 0x2c($sp)
/* AFAF8 800AEEF8 3C0A800D */  lui        $t2, %hi(D_800CD3C0)
/* AFAFC 800AEEFC 8D4AD3C0 */  lw         $t2, %lo(D_800CD3C0)($t2)
/* AFB00 800AEF00 8FB90034 */  lw         $t9, 0x34($sp)
/* AFB04 800AEF04 132A002F */  beq        $t9, $t2, .L800AEFC4
/* AFB08 800AEF08 00000000 */   nop
/* AFB0C 800AEF0C 8FAC0028 */  lw         $t4, 0x28($sp)
/* AFB10 800AEF10 8F2E0010 */  lw         $t6, 0x10($t9)
/* AFB14 800AEF14 8FAD002C */  lw         $t5, 0x2c($sp)
/* AFB18 800AEF18 8F2F0014 */  lw         $t7, 0x14($t9)
/* AFB1C 800AEF1C 018E082B */  sltu       $at, $t4, $t6
/* AFB20 800AEF20 14200028 */  bnez       $at, .L800AEFC4
/* AFB24 800AEF24 00000000 */   nop
/* AFB28 800AEF28 01CC082B */  sltu       $at, $t6, $t4
/* AFB2C 800AEF2C 14200004 */  bnez       $at, .L800AEF40
/* AFB30 800AEF30 00000000 */   nop
/* AFB34 800AEF34 01ED082B */  sltu       $at, $t7, $t5
/* AFB38 800AEF38 10200022 */  beqz       $at, .L800AEFC4
/* AFB3C 800AEF3C 00000000 */   nop
.L800AEF40:
/* AFB40 800AEF40 27AB0028 */  addiu      $t3, $sp, 0x28
/* AFB44 800AEF44 8FA80034 */  lw         $t0, 0x34($sp)
/* AFB48 800AEF48 AFAB0020 */  sw         $t3, 0x20($sp)
/* AFB4C 800AEF4C 8D790004 */  lw         $t9, 4($t3)
/* AFB50 800AEF50 8D780000 */  lw         $t8, ($t3)
/* AFB54 800AEF54 01604825 */  or         $t1, $t3, $zero
/* AFB58 800AEF58 8D0B0014 */  lw         $t3, 0x14($t0)
/* AFB5C 800AEF5C 8D0A0010 */  lw         $t2, 0x10($t0)
/* AFB60 800AEF60 032B082B */  sltu       $at, $t9, $t3
/* AFB64 800AEF64 030A6023 */  subu       $t4, $t8, $t2
/* AFB68 800AEF68 01816023 */  subu       $t4, $t4, $at
/* AFB6C 800AEF6C 032B6823 */  subu       $t5, $t9, $t3
/* AFB70 800AEF70 AD2D0004 */  sw         $t5, 4($t1)
/* AFB74 800AEF74 AD2C0000 */  sw         $t4, ($t1)
/* AFB78 800AEF78 8FAE0034 */  lw         $t6, 0x34($sp)
/* AFB7C 800AEF7C 3C08800D */  lui        $t0, %hi(D_800CD3C0)
/* AFB80 800AEF80 8D08D3C0 */  lw         $t0, %lo(D_800CD3C0)($t0)
/* AFB84 800AEF84 8DCF0000 */  lw         $t7, ($t6)
/* AFB88 800AEF88 11E8000E */  beq        $t7, $t0, .L800AEFC4
/* AFB8C 800AEF8C AFAF0034 */   sw        $t7, 0x34($sp)
/* AFB90 800AEF90 8FB80028 */  lw         $t8, 0x28($sp)
/* AFB94 800AEF94 8DEA0010 */  lw         $t2, 0x10($t7)
/* AFB98 800AEF98 8FB9002C */  lw         $t9, 0x2c($sp)
/* AFB9C 800AEF9C 8DEB0014 */  lw         $t3, 0x14($t7)
/* AFBA0 800AEFA0 0158082B */  sltu       $at, $t2, $t8
/* AFBA4 800AEFA4 1420FFE6 */  bnez       $at, .L800AEF40
/* AFBA8 800AEFA8 00000000 */   nop
/* AFBAC 800AEFAC 030A082B */  sltu       $at, $t8, $t2
/* AFBB0 800AEFB0 14200004 */  bnez       $at, .L800AEFC4
/* AFBB4 800AEFB4 00000000 */   nop
/* AFBB8 800AEFB8 0179082B */  sltu       $at, $t3, $t9
/* AFBBC 800AEFBC 1420FFE0 */  bnez       $at, .L800AEF40
/* AFBC0 800AEFC0 00000000 */   nop
.L800AEFC4:
/* AFBC4 800AEFC4 8FA90038 */  lw         $t1, 0x38($sp)
/* AFBC8 800AEFC8 8FAC0028 */  lw         $t4, 0x28($sp)
/* AFBCC 800AEFCC 8FAD002C */  lw         $t5, 0x2c($sp)
/* AFBD0 800AEFD0 AD2C0010 */  sw         $t4, 0x10($t1)
/* AFBD4 800AEFD4 AD2D0014 */  sw         $t5, 0x14($t1)
/* AFBD8 800AEFD8 3C08800D */  lui        $t0, %hi(D_800CD3C0)
/* AFBDC 800AEFDC 8D08D3C0 */  lw         $t0, %lo(D_800CD3C0)($t0)
/* AFBE0 800AEFE0 8FAE0034 */  lw         $t6, 0x34($sp)
/* AFBE4 800AEFE4 11C8000F */  beq        $t6, $t0, .L800AF024
/* AFBE8 800AEFE8 00000000 */   nop
/* AFBEC 800AEFEC 8FAF0034 */  lw         $t7, 0x34($sp)
/* AFBF0 800AEFF0 8FAC0028 */  lw         $t4, 0x28($sp)
/* AFBF4 800AEFF4 8FAD002C */  lw         $t5, 0x2c($sp)
/* AFBF8 800AEFF8 25F80010 */  addiu      $t8, $t7, 0x10
/* AFBFC 800AEFFC AFB8001C */  sw         $t8, 0x1c($sp)
/* AFC00 800AF000 8DEB0014 */  lw         $t3, 0x14($t7)
/* AFC04 800AF004 8DEA0010 */  lw         $t2, 0x10($t7)
/* AFC08 800AF008 01E0C825 */  or         $t9, $t7, $zero
/* AFC0C 800AF00C 016D082B */  sltu       $at, $t3, $t5
/* AFC10 800AF010 014C7023 */  subu       $t6, $t2, $t4
/* AFC14 800AF014 01C17023 */  subu       $t6, $t6, $at
/* AFC18 800AF018 016D7823 */  subu       $t7, $t3, $t5
/* AFC1C 800AF01C AF2F0014 */  sw         $t7, 0x14($t9)
/* AFC20 800AF020 AF2E0010 */  sw         $t6, 0x10($t9)
.L800AF024:
/* AFC24 800AF024 8FA90034 */  lw         $t1, 0x34($sp)
/* AFC28 800AF028 8FA80038 */  lw         $t0, 0x38($sp)
/* AFC2C 800AF02C AD090000 */  sw         $t1, ($t0)
/* AFC30 800AF030 8FB80034 */  lw         $t8, 0x34($sp)
/* AFC34 800AF034 8FAB0038 */  lw         $t3, 0x38($sp)
/* AFC38 800AF038 8F0A0004 */  lw         $t2, 4($t8)
/* AFC3C 800AF03C AD6A0004 */  sw         $t2, 4($t3)
/* AFC40 800AF040 8FAD0034 */  lw         $t5, 0x34($sp)
/* AFC44 800AF044 8FAC0038 */  lw         $t4, 0x38($sp)
/* AFC48 800AF048 8DAE0004 */  lw         $t6, 4($t5)
/* AFC4C 800AF04C ADCC0000 */  sw         $t4, ($t6)
/* AFC50 800AF050 8FAF0038 */  lw         $t7, 0x38($sp)
/* AFC54 800AF054 8FB90034 */  lw         $t9, 0x34($sp)
/* AFC58 800AF058 AF2F0004 */  sw         $t7, 4($t9)
/* AFC5C 800AF05C 0C02C0D0 */  jal        func_800B0340
/* AFC60 800AF060 8FA40024 */   lw        $a0, 0x24($sp)
/* AFC64 800AF064 8FA20028 */  lw         $v0, 0x28($sp)
/* AFC68 800AF068 10000003 */  b          .L800AF078
/* AFC6C 800AF06C 8FA3002C */   lw        $v1, 0x2c($sp)
/* AFC70 800AF070 10000001 */  b          .L800AF078
/* AFC74 800AF074 00000000 */   nop
.L800AF078:
/* AFC78 800AF078 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFC7C 800AF07C 27BD0038 */  addiu      $sp, $sp, 0x38
/* AFC80 800AF080 03E00008 */  jr         $ra
/* AFC84 800AF084 00000000 */   nop
/* AFC88 800AF088 00000000 */  nop
/* AFC8C 800AF08C 00000000 */  nop
