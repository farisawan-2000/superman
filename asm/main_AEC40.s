.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AE040
/* AEC40 800AE040 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* AEC44 800AE044 AFA0004C */  sw         $zero, 0x4c($sp)
.L800AE048:
/* AEC48 800AE048 AFA00048 */  sw         $zero, 0x48($sp)
.L800AE04C:
/* AEC4C 800AE04C 8FAE004C */  lw         $t6, 0x4c($sp)
/* AEC50 800AE050 8FB80048 */  lw         $t8, 0x48($sp)
/* AEC54 800AE054 44802000 */  mtc1       $zero, $f4
/* AEC58 800AE058 000E7900 */  sll        $t7, $t6, 4
/* AEC5C 800AE05C 0018C880 */  sll        $t9, $t8, 2
/* AEC60 800AE060 01F94021 */  addu       $t0, $t7, $t9
/* AEC64 800AE064 03A84821 */  addu       $t1, $sp, $t0
/* AEC68 800AE068 E5240004 */  swc1       $f4, 4($t1)
/* AEC6C 800AE06C AFA00044 */  sw         $zero, 0x44($sp)
.L800AE070:
/* AEC70 800AE070 8FAA004C */  lw         $t2, 0x4c($sp)
/* AEC74 800AE074 8FAD0044 */  lw         $t5, 0x44($sp)
/* AEC78 800AE078 8FA80048 */  lw         $t0, 0x48($sp)
/* AEC7C 800AE07C 000A5900 */  sll        $t3, $t2, 4
/* AEC80 800AE080 000D7900 */  sll        $t7, $t5, 4
/* AEC84 800AE084 00AFC821 */  addu       $t9, $a1, $t7
/* AEC88 800AE088 008B6021 */  addu       $t4, $a0, $t3
/* AEC8C 800AE08C 000D7080 */  sll        $t6, $t5, 2
/* AEC90 800AE090 00084880 */  sll        $t1, $t0, 2
/* AEC94 800AE094 03295021 */  addu       $t2, $t9, $t1
/* AEC98 800AE098 018EC021 */  addu       $t8, $t4, $t6
/* AEC9C 800AE09C C7060000 */  lwc1       $f6, ($t8)
/* AECA0 800AE0A0 C5480000 */  lwc1       $f8, ($t2)
/* AECA4 800AE0A4 27AE0004 */  addiu      $t6, $sp, 4
/* AECA8 800AE0A8 01696021 */  addu       $t4, $t3, $t1
/* AECAC 800AE0AC 46083282 */  mul.s      $f10, $f6, $f8
/* AECB0 800AE0B0 018EC021 */  addu       $t8, $t4, $t6
/* AECB4 800AE0B4 C7100000 */  lwc1       $f16, ($t8)
/* AECB8 800AE0B8 01696821 */  addu       $t5, $t3, $t1
/* AECBC 800AE0BC 01AE7821 */  addu       $t7, $t5, $t6
/* AECC0 800AE0C0 460A8480 */  add.s      $f18, $f16, $f10
/* AECC4 800AE0C4 E5F20000 */  swc1       $f18, ($t7)
/* AECC8 800AE0C8 8FA80044 */  lw         $t0, 0x44($sp)
/* AECCC 800AE0CC 25190001 */  addiu      $t9, $t0, 1
/* AECD0 800AE0D0 2B210004 */  slti       $at, $t9, 4
/* AECD4 800AE0D4 1420FFE6 */  bnez       $at, .L800AE070
/* AECD8 800AE0D8 AFB90044 */   sw        $t9, 0x44($sp)
/* AECDC 800AE0DC 8FAA0048 */  lw         $t2, 0x48($sp)
/* AECE0 800AE0E0 254C0001 */  addiu      $t4, $t2, 1
/* AECE4 800AE0E4 29810004 */  slti       $at, $t4, 4
/* AECE8 800AE0E8 1420FFD8 */  bnez       $at, .L800AE04C
/* AECEC 800AE0EC AFAC0048 */   sw        $t4, 0x48($sp)
/* AECF0 800AE0F0 8FB8004C */  lw         $t8, 0x4c($sp)
/* AECF4 800AE0F4 270B0001 */  addiu      $t3, $t8, 1
/* AECF8 800AE0F8 29610004 */  slti       $at, $t3, 4
/* AECFC 800AE0FC 1420FFD2 */  bnez       $at, .L800AE048
/* AED00 800AE100 AFAB004C */   sw        $t3, 0x4c($sp)
/* AED04 800AE104 AFA0004C */  sw         $zero, 0x4c($sp)
.L800AE108:
/* AED08 800AE108 AFA00048 */  sw         $zero, 0x48($sp)
.L800AE10C:
/* AED0C 800AE10C 8FA9004C */  lw         $t1, 0x4c($sp)
/* AED10 800AE110 8FAE0048 */  lw         $t6, 0x48($sp)
/* AED14 800AE114 00096900 */  sll        $t5, $t1, 4
/* AED18 800AE118 000E7880 */  sll        $t7, $t6, 2
/* AED1C 800AE11C 01AF4021 */  addu       $t0, $t5, $t7
/* AED20 800AE120 03A8C821 */  addu       $t9, $sp, $t0
/* AED24 800AE124 C7240004 */  lwc1       $f4, 4($t9)
/* AED28 800AE128 00CD5021 */  addu       $t2, $a2, $t5
/* AED2C 800AE12C 014F6021 */  addu       $t4, $t2, $t7
/* AED30 800AE130 E5840000 */  swc1       $f4, ($t4)
/* AED34 800AE134 8FB80048 */  lw         $t8, 0x48($sp)
/* AED38 800AE138 270B0001 */  addiu      $t3, $t8, 1
/* AED3C 800AE13C 29610004 */  slti       $at, $t3, 4
/* AED40 800AE140 1420FFF2 */  bnez       $at, .L800AE10C
/* AED44 800AE144 AFAB0048 */   sw        $t3, 0x48($sp)
/* AED48 800AE148 8FA9004C */  lw         $t1, 0x4c($sp)
/* AED4C 800AE14C 252E0001 */  addiu      $t6, $t1, 1
/* AED50 800AE150 29C10004 */  slti       $at, $t6, 4
/* AED54 800AE154 1420FFEC */  bnez       $at, .L800AE108
/* AED58 800AE158 AFAE004C */   sw        $t6, 0x4c($sp)
/* AED5C 800AE15C 10000001 */  b          .L800AE164
/* AED60 800AE160 00000000 */   nop
.L800AE164:
/* AED64 800AE164 03E00008 */  jr         $ra
/* AED68 800AE168 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800AE16C
/* AED6C 800AE16C AFA50004 */  sw         $a1, 4($sp)
/* AED70 800AE170 AFA60008 */  sw         $a2, 8($sp)
/* AED74 800AE174 AFA7000C */  sw         $a3, 0xc($sp)
/* AED78 800AE178 C4840000 */  lwc1       $f4, ($a0)
/* AED7C 800AE17C C7A60004 */  lwc1       $f6, 4($sp)
/* AED80 800AE180 C48A0010 */  lwc1       $f10, 0x10($a0)
/* AED84 800AE184 C7B00008 */  lwc1       $f16, 8($sp)
/* AED88 800AE188 46062202 */  mul.s      $f8, $f4, $f6
/* AED8C 800AE18C C4860020 */  lwc1       $f6, 0x20($a0)
/* AED90 800AE190 8FAE0010 */  lw         $t6, 0x10($sp)
/* AED94 800AE194 46105482 */  mul.s      $f18, $f10, $f16
/* AED98 800AE198 C7AA000C */  lwc1       $f10, 0xc($sp)
/* AED9C 800AE19C 460A3402 */  mul.s      $f16, $f6, $f10
/* AEDA0 800AE1A0 46124100 */  add.s      $f4, $f8, $f18
/* AEDA4 800AE1A4 C4920030 */  lwc1       $f18, 0x30($a0)
/* AEDA8 800AE1A8 46102200 */  add.s      $f8, $f4, $f16
/* AEDAC 800AE1AC 46089180 */  add.s      $f6, $f18, $f8
/* AEDB0 800AE1B0 E5C60000 */  swc1       $f6, ($t6)
/* AEDB4 800AE1B4 C48A0004 */  lwc1       $f10, 4($a0)
/* AEDB8 800AE1B8 C7A40004 */  lwc1       $f4, 4($sp)
/* AEDBC 800AE1BC C4920014 */  lwc1       $f18, 0x14($a0)
/* AEDC0 800AE1C0 C7A80008 */  lwc1       $f8, 8($sp)
/* AEDC4 800AE1C4 46045402 */  mul.s      $f16, $f10, $f4
/* AEDC8 800AE1C8 C4840024 */  lwc1       $f4, 0x24($a0)
/* AEDCC 800AE1CC 8FAF0014 */  lw         $t7, 0x14($sp)
/* AEDD0 800AE1D0 46089182 */  mul.s      $f6, $f18, $f8
/* AEDD4 800AE1D4 C7B2000C */  lwc1       $f18, 0xc($sp)
/* AEDD8 800AE1D8 46122202 */  mul.s      $f8, $f4, $f18
/* AEDDC 800AE1DC 46068280 */  add.s      $f10, $f16, $f6
/* AEDE0 800AE1E0 C4860034 */  lwc1       $f6, 0x34($a0)
/* AEDE4 800AE1E4 46085400 */  add.s      $f16, $f10, $f8
/* AEDE8 800AE1E8 46103100 */  add.s      $f4, $f6, $f16
/* AEDEC 800AE1EC E5E40000 */  swc1       $f4, ($t7)
/* AEDF0 800AE1F0 C4920008 */  lwc1       $f18, 8($a0)
/* AEDF4 800AE1F4 C7AA0004 */  lwc1       $f10, 4($sp)
/* AEDF8 800AE1F8 C4860018 */  lwc1       $f6, 0x18($a0)
/* AEDFC 800AE1FC C7B00008 */  lwc1       $f16, 8($sp)
/* AEE00 800AE200 460A9202 */  mul.s      $f8, $f18, $f10
/* AEE04 800AE204 C48A0028 */  lwc1       $f10, 0x28($a0)
/* AEE08 800AE208 8FB80018 */  lw         $t8, 0x18($sp)
/* AEE0C 800AE20C 46103102 */  mul.s      $f4, $f6, $f16
/* AEE10 800AE210 C7A6000C */  lwc1       $f6, 0xc($sp)
/* AEE14 800AE214 46065402 */  mul.s      $f16, $f10, $f6
/* AEE18 800AE218 46044480 */  add.s      $f18, $f8, $f4
/* AEE1C 800AE21C C4840038 */  lwc1       $f4, 0x38($a0)
/* AEE20 800AE220 46109200 */  add.s      $f8, $f18, $f16
/* AEE24 800AE224 46082280 */  add.s      $f10, $f4, $f8
/* AEE28 800AE228 E70A0000 */  swc1       $f10, ($t8)
/* AEE2C 800AE22C 10000001 */  b          .L800AE234
/* AEE30 800AE230 00000000 */   nop
.L800AE234:
/* AEE34 800AE234 03E00008 */  jr         $ra
/* AEE38 800AE238 00000000 */   nop
/* AEE3C 800AE23C 00000000 */  nop
