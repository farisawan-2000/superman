.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005DF00
/* 5EB00 8005DF00 14A00034 */  bnez       $a1, .L8005DFD4
/* 5EB04 8005DF04 00000000 */   nop
/* 5EB08 8005DF08 8C8E0000 */  lw         $t6, ($a0)
/* 5EB0C 8005DF0C 31CF8000 */  andi       $t7, $t6, 0x8000
/* 5EB10 8005DF10 11E0000E */  beqz       $t7, .L8005DF4C
/* 5EB14 8005DF14 00000000 */   nop
/* 5EB18 8005DF18 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 5EB1C 8005DF1C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 5EB20 8005DF20 44804800 */  mtc1       $zero, $f9
/* 5EB24 8005DF24 44804000 */  mtc1       $zero, $f8
/* 5EB28 8005DF28 C7040030 */  lwc1       $f4, 0x30($t8)
/* 5EB2C 8005DF2C 460021A1 */  cvt.d.s    $f6, $f4
/* 5EB30 8005DF30 46283032 */  c.eq.d     $f6, $f8
/* 5EB34 8005DF34 00000000 */  nop
/* 5EB38 8005DF38 45000004 */  bc1f       .L8005DF4C
/* 5EB3C 8005DF3C 3C01BF80 */   lui       $at, 0xbf80
/* 5EB40 8005DF40 44815000 */  mtc1       $at, $f10
/* 5EB44 8005DF44 00000000 */  nop
/* 5EB48 8005DF48 E70A0030 */  swc1       $f10, 0x30($t8)
.L8005DF4C:
/* 5EB4C 8005DF4C 8C990000 */  lw         $t9, ($a0)
/* 5EB50 8005DF50 33281000 */  andi       $t0, $t9, 0x1000
/* 5EB54 8005DF54 1100000E */  beqz       $t0, .L8005DF90
/* 5EB58 8005DF58 00000000 */   nop
/* 5EB5C 8005DF5C 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* 5EB60 8005DF60 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* 5EB64 8005DF64 44802800 */  mtc1       $zero, $f5
/* 5EB68 8005DF68 44802000 */  mtc1       $zero, $f4
/* 5EB6C 8005DF6C C5300034 */  lwc1       $f16, 0x34($t1)
/* 5EB70 8005DF70 460084A1 */  cvt.d.s    $f18, $f16
/* 5EB74 8005DF74 46249032 */  c.eq.d     $f18, $f4
/* 5EB78 8005DF78 00000000 */  nop
/* 5EB7C 8005DF7C 45000004 */  bc1f       .L8005DF90
/* 5EB80 8005DF80 3C01BF80 */   lui       $at, 0xbf80
/* 5EB84 8005DF84 44813000 */  mtc1       $at, $f6
/* 5EB88 8005DF88 00000000 */  nop
/* 5EB8C 8005DF8C E5260034 */  swc1       $f6, 0x34($t1)
.L8005DF90:
/* 5EB90 8005DF90 8C8A0000 */  lw         $t2, ($a0)
/* 5EB94 8005DF94 314B2000 */  andi       $t3, $t2, 0x2000
/* 5EB98 8005DF98 1160000E */  beqz       $t3, .L8005DFD4
/* 5EB9C 8005DF9C 00000000 */   nop
/* 5EBA0 8005DFA0 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 5EBA4 8005DFA4 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 5EBA8 8005DFA8 44808800 */  mtc1       $zero, $f17
/* 5EBAC 8005DFAC 44808000 */  mtc1       $zero, $f16
/* 5EBB0 8005DFB0 C5880038 */  lwc1       $f8, 0x38($t4)
/* 5EBB4 8005DFB4 460042A1 */  cvt.d.s    $f10, $f8
/* 5EBB8 8005DFB8 46305032 */  c.eq.d     $f10, $f16
/* 5EBBC 8005DFBC 00000000 */  nop
/* 5EBC0 8005DFC0 45000004 */  bc1f       .L8005DFD4
/* 5EBC4 8005DFC4 3C01BF80 */   lui       $at, 0xbf80
/* 5EBC8 8005DFC8 44819000 */  mtc1       $at, $f18
/* 5EBCC 8005DFCC 00000000 */  nop
/* 5EBD0 8005DFD0 E5920038 */  swc1       $f18, 0x38($t4)
.L8005DFD4:
/* 5EBD4 8005DFD4 03E00008 */  jr         $ra
/* 5EBD8 8005DFD8 00000000 */   nop

glabel func_8005DFDC
/* 5EBDC 8005DFDC 27BDFFF8 */  addiu      $sp, $sp, -8
/* 5EBE0 8005DFE0 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* 5EBE4 8005DFE4 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* 5EBE8 8005DFE8 148E0046 */  bne        $a0, $t6, .L8005E104
/* 5EBEC 8005DFEC 00000000 */   nop
/* 5EBF0 8005DFF0 3C0F8016 */  lui        $t7, %hi(D_8015ED18)
/* 5EBF4 8005DFF4 8DEFED18 */  lw         $t7, %lo(D_8015ED18)($t7)
/* 5EBF8 8005DFF8 3C018016 */  lui        $at, %hi(D_8015ED24)
/* 5EBFC 8005DFFC 0004C880 */  sll        $t9, $a0, 2
/* 5EC00 8005E000 AC2FED24 */  sw         $t7, %lo(D_8015ED24)($at)
/* 5EC04 8005E004 3C018016 */  lui        $at, %hi(D_8015ED18)
/* 5EC08 8005E008 AC20ED18 */  sw         $zero, %lo(D_8015ED18)($at)
/* 5EC0C 8005E00C 0324C823 */  subu       $t9, $t9, $a0
/* 5EC10 8005E010 3C018014 */  lui        $at, %hi(D_8013F620)
/* 5EC14 8005E014 C424F620 */  lwc1       $f4, %lo(D_8013F620)($at)
/* 5EC18 8005E018 0019C880 */  sll        $t9, $t9, 2
/* 5EC1C 8005E01C 0324C823 */  subu       $t9, $t9, $a0
/* 5EC20 8005E020 0019C880 */  sll        $t9, $t9, 2
/* 5EC24 8005E024 3C014030 */  lui        $at, 0x4030
/* 5EC28 8005E028 44814800 */  mtc1       $at, $f9
/* 5EC2C 8005E02C 44804000 */  mtc1       $zero, $f8
/* 5EC30 8005E030 0324C821 */  addu       $t9, $t9, $a0
/* 5EC34 8005E034 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 5EC38 8005E038 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 5EC3C 8005E03C 460021A1 */  cvt.d.s    $f6, $f4
/* 5EC40 8005E040 0019C880 */  sll        $t9, $t9, 2
/* 5EC44 8005E044 0324C823 */  subu       $t9, $t9, $a0
/* 5EC48 8005E048 4626403E */  c.le.d     $f8, $f6
/* 5EC4C 8005E04C 0019C880 */  sll        $t9, $t9, 2
/* 5EC50 8005E050 03194021 */  addu       $t0, $t8, $t9
/* 5EC54 8005E054 8D090278 */  lw         $t1, 0x278($t0)
/* 5EC58 8005E058 4500002A */  bc1f       .L8005E104
/* 5EC5C 8005E05C AFA90004 */   sw        $t1, 4($sp)
/* 5EC60 8005E060 00045080 */  sll        $t2, $a0, 2
/* 5EC64 8005E064 01445023 */  subu       $t2, $t2, $a0
/* 5EC68 8005E068 000A5080 */  sll        $t2, $t2, 2
/* 5EC6C 8005E06C 01445023 */  subu       $t2, $t2, $a0
/* 5EC70 8005E070 000A5080 */  sll        $t2, $t2, 2
/* 5EC74 8005E074 01445021 */  addu       $t2, $t2, $a0
/* 5EC78 8005E078 000A5080 */  sll        $t2, $t2, 2
/* 5EC7C 8005E07C 01445023 */  subu       $t2, $t2, $a0
/* 5EC80 8005E080 000A5080 */  sll        $t2, $t2, 2
/* 5EC84 8005E084 030A5821 */  addu       $t3, $t8, $t2
/* 5EC88 8005E088 C56A002C */  lwc1       $f10, 0x2c($t3)
/* 5EC8C 8005E08C 44808000 */  mtc1       $zero, $f16
/* 5EC90 8005E090 00000000 */  nop
/* 5EC94 8005E094 460A803C */  c.lt.s     $f16, $f10
/* 5EC98 8005E098 00000000 */  nop
/* 5EC9C 8005E09C 45000019 */  bc1f       .L8005E104
/* 5ECA0 8005E0A0 24010006 */   addiu     $at, $zero, 6
/* 5ECA4 8005E0A4 11210014 */  beq        $t1, $at, .L8005E0F8
/* 5ECA8 8005E0A8 24010005 */   addiu     $at, $zero, 5
/* 5ECAC 8005E0AC 11210012 */  beq        $t1, $at, .L8005E0F8
/* 5ECB0 8005E0B0 2401006A */   addiu     $at, $zero, 0x6a
/* 5ECB4 8005E0B4 11210010 */  beq        $t1, $at, .L8005E0F8
/* 5ECB8 8005E0B8 240100AE */   addiu     $at, $zero, 0xae
/* 5ECBC 8005E0BC 1121000E */  beq        $t1, $at, .L8005E0F8
/* 5ECC0 8005E0C0 24010004 */   addiu     $at, $zero, 4
/* 5ECC4 8005E0C4 1121000C */  beq        $t1, $at, .L8005E0F8
/* 5ECC8 8005E0C8 240100AC */   addiu     $at, $zero, 0xac
/* 5ECCC 8005E0CC 1521000D */  bne        $t1, $at, .L8005E104
/* 5ECD0 8005E0D0 3C018014 */   lui       $at, %hi(D_8013F624)
/* 5ECD4 8005E0D4 C432F624 */  lwc1       $f18, %lo(D_8013F624)($at)
/* 5ECD8 8005E0D8 3C01403E */  lui        $at, 0x403e
/* 5ECDC 8005E0DC 44813800 */  mtc1       $at, $f7
/* 5ECE0 8005E0E0 44803000 */  mtc1       $zero, $f6
/* 5ECE4 8005E0E4 46009121 */  cvt.d.s    $f4, $f18
/* 5ECE8 8005E0E8 4624303C */  c.lt.d     $f6, $f4
/* 5ECEC 8005E0EC 00000000 */  nop
/* 5ECF0 8005E0F0 45000004 */  bc1f       .L8005E104
/* 5ECF4 8005E0F4 00000000 */   nop
.L8005E0F8:
/* 5ECF8 8005E0F8 240C0001 */  addiu      $t4, $zero, 1
/* 5ECFC 8005E0FC 3C018016 */  lui        $at, %hi(D_8015ED18)
/* 5ED00 8005E100 AC2CED18 */  sw         $t4, %lo(D_8015ED18)($at)
.L8005E104:
/* 5ED04 8005E104 03E00008 */  jr         $ra
/* 5ED08 8005E108 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8005E10C
/* 5ED0C 8005E10C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5ED10 8005E110 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5ED14 8005E114 AFA40030 */  sw         $a0, 0x30($sp)
/* 5ED18 8005E118 8FAF0030 */  lw         $t7, 0x30($sp)
/* 5ED1C 8005E11C 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5ED20 8005E120 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5ED24 8005E124 000FC080 */  sll        $t8, $t7, 2
/* 5ED28 8005E128 030FC023 */  subu       $t8, $t8, $t7
/* 5ED2C 8005E12C 0018C080 */  sll        $t8, $t8, 2
/* 5ED30 8005E130 030FC023 */  subu       $t8, $t8, $t7
/* 5ED34 8005E134 0018C080 */  sll        $t8, $t8, 2
/* 5ED38 8005E138 030FC021 */  addu       $t8, $t8, $t7
/* 5ED3C 8005E13C 0018C080 */  sll        $t8, $t8, 2
/* 5ED40 8005E140 030FC023 */  subu       $t8, $t8, $t7
/* 5ED44 8005E144 0018C080 */  sll        $t8, $t8, 2
/* 5ED48 8005E148 AFA0002C */  sw         $zero, 0x2c($sp)
/* 5ED4C 8005E14C 01D8C821 */  addu       $t9, $t6, $t8
/* 5ED50 8005E150 8F280060 */  lw         $t0, 0x60($t9)
/* 5ED54 8005E154 AFA80024 */  sw         $t0, 0x24($sp)
/* 5ED58 8005E158 8F290278 */  lw         $t1, 0x278($t9)
/* 5ED5C 8005E15C 310B0800 */  andi       $t3, $t0, 0x800
/* 5ED60 8005E160 AFA90020 */  sw         $t1, 0x20($sp)
/* 5ED64 8005E164 8F2A0274 */  lw         $t2, 0x274($t9)
/* 5ED68 8005E168 15600004 */  bnez       $t3, .L8005E17C
/* 5ED6C 8005E16C AFAA001C */   sw        $t2, 0x1c($sp)
/* 5ED70 8005E170 310C0100 */  andi       $t4, $t0, 0x100
/* 5ED74 8005E174 1180000B */  beqz       $t4, .L8005E1A4
/* 5ED78 8005E178 00000000 */   nop
.L8005E17C:
/* 5ED7C 8005E17C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 5ED80 8005E180 31AF0100 */  andi       $t7, $t5, 0x100
/* 5ED84 8005E184 11E00004 */  beqz       $t7, .L8005E198
/* 5ED88 8005E188 00000000 */   nop
/* 5ED8C 8005E18C 240E0108 */  addiu      $t6, $zero, 0x108
/* 5ED90 8005E190 10000041 */  b          .L8005E298
/* 5ED94 8005E194 AFAE0024 */   sw        $t6, 0x24($sp)
.L8005E198:
/* 5ED98 8005E198 24180808 */  addiu      $t8, $zero, 0x808
/* 5ED9C 8005E19C 1000003E */  b          .L8005E298
/* 5EDA0 8005E1A0 AFB80024 */   sw        $t8, 0x24($sp)
.L8005E1A4:
/* 5EDA4 8005E1A4 8FA90024 */  lw         $t1, 0x24($sp)
/* 5EDA8 8005E1A8 31390008 */  andi       $t9, $t1, 8
/* 5EDAC 8005E1AC 1320003A */  beqz       $t9, .L8005E298
/* 5EDB0 8005E1B0 00000000 */   nop
/* 5EDB4 8005E1B4 8FAA0020 */  lw         $t2, 0x20($sp)
/* 5EDB8 8005E1B8 24010066 */  addiu      $at, $zero, 0x66
/* 5EDBC 8005E1BC 1141000B */  beq        $t2, $at, .L8005E1EC
/* 5EDC0 8005E1C0 24010065 */   addiu     $at, $zero, 0x65
/* 5EDC4 8005E1C4 11410009 */  beq        $t2, $at, .L8005E1EC
/* 5EDC8 8005E1C8 24010067 */   addiu     $at, $zero, 0x67
/* 5EDCC 8005E1CC 11410007 */  beq        $t2, $at, .L8005E1EC
/* 5EDD0 8005E1D0 24010023 */   addiu     $at, $zero, 0x23
/* 5EDD4 8005E1D4 11410005 */  beq        $t2, $at, .L8005E1EC
/* 5EDD8 8005E1D8 240100D0 */   addiu     $at, $zero, 0xd0
/* 5EDDC 8005E1DC 11410003 */  beq        $t2, $at, .L8005E1EC
/* 5EDE0 8005E1E0 240100CE */   addiu     $at, $zero, 0xce
/* 5EDE4 8005E1E4 1541002C */  bne        $t2, $at, .L8005E298
/* 5EDE8 8005E1E8 00000000 */   nop
.L8005E1EC:
/* 5EDEC 8005E1EC 8FAB0024 */  lw         $t3, 0x24($sp)
/* 5EDF0 8005E1F0 31680200 */  andi       $t0, $t3, 0x200
/* 5EDF4 8005E1F4 11000005 */  beqz       $t0, .L8005E20C
/* 5EDF8 8005E1F8 00000000 */   nop
/* 5EDFC 8005E1FC 240C0001 */  addiu      $t4, $zero, 1
/* 5EE00 8005E200 AFAC002C */  sw         $t4, 0x2c($sp)
/* 5EE04 8005E204 10000024 */  b          .L8005E298
/* 5EE08 8005E208 AFA00024 */   sw        $zero, 0x24($sp)
.L8005E20C:
/* 5EE0C 8005E20C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 5EE10 8005E210 31AF0010 */  andi       $t7, $t5, 0x10
/* 5EE14 8005E214 11E00020 */  beqz       $t7, .L8005E298
/* 5EE18 8005E218 00000000 */   nop
/* 5EE1C 8005E21C 8FB80030 */  lw         $t8, 0x30($sp)
/* 5EE20 8005E220 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5EE24 8005E224 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5EE28 8005E228 00184880 */  sll        $t1, $t8, 2
/* 5EE2C 8005E22C 01384823 */  subu       $t1, $t1, $t8
/* 5EE30 8005E230 00094880 */  sll        $t1, $t1, 2
/* 5EE34 8005E234 01384823 */  subu       $t1, $t1, $t8
/* 5EE38 8005E238 00094880 */  sll        $t1, $t1, 2
/* 5EE3C 8005E23C 01384821 */  addu       $t1, $t1, $t8
/* 5EE40 8005E240 00094880 */  sll        $t1, $t1, 2
/* 5EE44 8005E244 01384823 */  subu       $t1, $t1, $t8
/* 5EE48 8005E248 00094880 */  sll        $t1, $t1, 2
/* 5EE4C 8005E24C 01C9C821 */  addu       $t9, $t6, $t1
/* 5EE50 8005E250 8F2A00A4 */  lw         $t2, 0xa4($t9)
/* 5EE54 8005E254 05400010 */  bltz       $t2, .L8005E298
/* 5EE58 8005E258 00000000 */   nop
/* 5EE5C 8005E25C 03002025 */  or         $a0, $t8, $zero
/* 5EE60 8005E260 0C0045C0 */  jal        func_80011700
/* 5EE64 8005E264 01402825 */   or        $a1, $t2, $zero
/* 5EE68 8005E268 E7A00028 */  swc1       $f0, 0x28($sp)
/* 5EE6C 8005E26C C7A40028 */  lwc1       $f4, 0x28($sp)
/* 5EE70 8005E270 44804800 */  mtc1       $zero, $f9
/* 5EE74 8005E274 44804000 */  mtc1       $zero, $f8
/* 5EE78 8005E278 460021A1 */  cvt.d.s    $f6, $f4
/* 5EE7C 8005E27C 4626403C */  c.lt.d     $f8, $f6
/* 5EE80 8005E280 00000000 */  nop
/* 5EE84 8005E284 45000004 */  bc1f       .L8005E298
/* 5EE88 8005E288 00000000 */   nop
/* 5EE8C 8005E28C 240B0001 */  addiu      $t3, $zero, 1
/* 5EE90 8005E290 AFA00024 */  sw         $zero, 0x24($sp)
/* 5EE94 8005E294 AFAB002C */  sw         $t3, 0x2c($sp)
.L8005E298:
/* 5EE98 8005E298 8FAD0030 */  lw         $t5, 0x30($sp)
/* 5EE9C 8005E29C 3C0C8016 */  lui        $t4, %hi(D_8015FB9C)
/* 5EEA0 8005E2A0 8D8CFB9C */  lw         $t4, %lo(D_8015FB9C)($t4)
/* 5EEA4 8005E2A4 000D7880 */  sll        $t7, $t5, 2
/* 5EEA8 8005E2A8 01ED7823 */  subu       $t7, $t7, $t5
/* 5EEAC 8005E2AC 000F7880 */  sll        $t7, $t7, 2
/* 5EEB0 8005E2B0 01ED7823 */  subu       $t7, $t7, $t5
/* 5EEB4 8005E2B4 000F7880 */  sll        $t7, $t7, 2
/* 5EEB8 8005E2B8 01ED7821 */  addu       $t7, $t7, $t5
/* 5EEBC 8005E2BC 000F7880 */  sll        $t7, $t7, 2
/* 5EEC0 8005E2C0 8FA80024 */  lw         $t0, 0x24($sp)
/* 5EEC4 8005E2C4 01ED7823 */  subu       $t7, $t7, $t5
/* 5EEC8 8005E2C8 000F7880 */  sll        $t7, $t7, 2
/* 5EECC 8005E2CC 018F7021 */  addu       $t6, $t4, $t7
/* 5EED0 8005E2D0 ADC80060 */  sw         $t0, 0x60($t6)
/* 5EED4 8005E2D4 8FA2002C */  lw         $v0, 0x2c($sp)
/* 5EED8 8005E2D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5EEDC 8005E2DC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5EEE0 8005E2E0 03E00008 */  jr         $ra
/* 5EEE4 8005E2E4 00000000 */   nop

glabel func_8005E2E8
/* 5EEE8 8005E2E8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 5EEEC 8005E2EC 3C013F80 */  lui        $at, 0x3f80
/* 5EEF0 8005E2F0 3C0E8016 */  lui        $t6, %hi(D_8015E864)
/* 5EEF4 8005E2F4 44812000 */  mtc1       $at, $f4
/* 5EEF8 8005E2F8 8DCEE864 */  lw         $t6, %lo(D_8015E864)($t6)
/* 5EEFC 8005E2FC 3C0F8016 */  lui        $t7, %hi(D_8015ED10)
/* 5EF00 8005E300 8DEFED10 */  lw         $t7, %lo(D_8015ED10)($t7)
/* 5EF04 8005E304 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5EF08 8005E308 E424ED0C */  swc1       $f4, %lo(D_8015ED0C)($at)
/* 5EF0C 8005E30C 24010001 */  addiu      $at, $zero, 1
/* 5EF10 8005E310 01C02025 */  or         $a0, $t6, $zero
/* 5EF14 8005E314 01CFC023 */  subu       $t8, $t6, $t7
/* 5EF18 8005E318 10810008 */  beq        $a0, $at, .L8005E33C
/* 5EF1C 8005E31C AFB80008 */   sw        $t8, 8($sp)
/* 5EF20 8005E320 24010002 */  addiu      $at, $zero, 2
/* 5EF24 8005E324 10810021 */  beq        $a0, $at, .L8005E3AC
/* 5EF28 8005E328 24010003 */   addiu     $at, $zero, 3
/* 5EF2C 8005E32C 1081003B */  beq        $a0, $at, .L8005E41C
/* 5EF30 8005E330 00000000 */   nop
/* 5EF34 8005E334 10000055 */  b          .L8005E48C
/* 5EF38 8005E338 00000000 */   nop
.L8005E33C:
/* 5EF3C 8005E33C 3C014000 */  lui        $at, 0x4000
/* 5EF40 8005E340 44813000 */  mtc1       $at, $f6
/* 5EF44 8005E344 8FB90008 */  lw         $t9, 8($sp)
/* 5EF48 8005E348 3C018016 */  lui        $at, %hi(D_8015ED08)
/* 5EF4C 8005E34C E426ED08 */  swc1       $f6, %lo(D_8015ED08)($at)
/* 5EF50 8005E350 2401FFFF */  addiu      $at, $zero, -1
/* 5EF54 8005E354 17210005 */  bne        $t9, $at, .L8005E36C
/* 5EF58 8005E358 3C01800E */   lui       $at, %hi(D_800DDD50)
/* 5EF5C 8005E35C C428DD50 */  lwc1       $f8, %lo(D_800DDD50)($at)
/* 5EF60 8005E360 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5EF64 8005E364 10000064 */  b          .L8005E4F8
/* 5EF68 8005E368 E428ED0C */   swc1      $f8, %lo(D_8015ED0C)($at)
.L8005E36C:
/* 5EF6C 8005E36C 8FA80008 */  lw         $t0, 8($sp)
/* 5EF70 8005E370 2401FFFE */  addiu      $at, $zero, -2
/* 5EF74 8005E374 15010005 */  bne        $t0, $at, .L8005E38C
/* 5EF78 8005E378 3C01800E */   lui       $at, %hi(D_800DDD54)
/* 5EF7C 8005E37C C42ADD54 */  lwc1       $f10, %lo(D_800DDD54)($at)
/* 5EF80 8005E380 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5EF84 8005E384 1000005C */  b          .L8005E4F8
/* 5EF88 8005E388 E42AED0C */   swc1      $f10, %lo(D_8015ED0C)($at)
.L8005E38C:
/* 5EF8C 8005E38C 8FA90008 */  lw         $t1, 8($sp)
/* 5EF90 8005E390 2401FFFD */  addiu      $at, $zero, -3
/* 5EF94 8005E394 15210058 */  bne        $t1, $at, .L8005E4F8
/* 5EF98 8005E398 3C01800E */   lui       $at, %hi(D_800DDD58)
/* 5EF9C 8005E39C C430DD58 */  lwc1       $f16, %lo(D_800DDD58)($at)
/* 5EFA0 8005E3A0 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5EFA4 8005E3A4 10000054 */  b          .L8005E4F8
/* 5EFA8 8005E3A8 E430ED0C */   swc1      $f16, %lo(D_8015ED0C)($at)
.L8005E3AC:
/* 5EFAC 8005E3AC 3C013F80 */  lui        $at, 0x3f80
/* 5EFB0 8005E3B0 44819000 */  mtc1       $at, $f18
/* 5EFB4 8005E3B4 8FAA0008 */  lw         $t2, 8($sp)
/* 5EFB8 8005E3B8 3C018016 */  lui        $at, %hi(D_8015ED08)
/* 5EFBC 8005E3BC E432ED08 */  swc1       $f18, %lo(D_8015ED08)($at)
/* 5EFC0 8005E3C0 24010001 */  addiu      $at, $zero, 1
/* 5EFC4 8005E3C4 15410005 */  bne        $t2, $at, .L8005E3DC
/* 5EFC8 8005E3C8 3C014000 */   lui       $at, 0x4000
/* 5EFCC 8005E3CC 44812000 */  mtc1       $at, $f4
/* 5EFD0 8005E3D0 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5EFD4 8005E3D4 10000048 */  b          .L8005E4F8
/* 5EFD8 8005E3D8 E424ED0C */   swc1      $f4, %lo(D_8015ED0C)($at)
.L8005E3DC:
/* 5EFDC 8005E3DC 8FAB0008 */  lw         $t3, 8($sp)
/* 5EFE0 8005E3E0 2401FFFF */  addiu      $at, $zero, -1
/* 5EFE4 8005E3E4 15610005 */  bne        $t3, $at, .L8005E3FC
/* 5EFE8 8005E3E8 3C01800E */   lui       $at, %hi(D_800DDD5C)
/* 5EFEC 8005E3EC C426DD5C */  lwc1       $f6, %lo(D_800DDD5C)($at)
/* 5EFF0 8005E3F0 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5EFF4 8005E3F4 10000040 */  b          .L8005E4F8
/* 5EFF8 8005E3F8 E426ED0C */   swc1      $f6, %lo(D_8015ED0C)($at)
.L8005E3FC:
/* 5EFFC 8005E3FC 8FAC0008 */  lw         $t4, 8($sp)
/* 5F000 8005E400 2401FFFE */  addiu      $at, $zero, -2
/* 5F004 8005E404 1581003C */  bne        $t4, $at, .L8005E4F8
/* 5F008 8005E408 3C01800E */   lui       $at, %hi(D_800DDD60)
/* 5F00C 8005E40C C428DD60 */  lwc1       $f8, %lo(D_800DDD60)($at)
/* 5F010 8005E410 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F014 8005E414 10000038 */  b          .L8005E4F8
/* 5F018 8005E418 E428ED0C */   swc1      $f8, %lo(D_8015ED0C)($at)
.L8005E41C:
/* 5F01C 8005E41C 3C01800E */  lui        $at, %hi(D_800DDD64)
/* 5F020 8005E420 C42ADD64 */  lwc1       $f10, %lo(D_800DDD64)($at)
/* 5F024 8005E424 8FAD0008 */  lw         $t5, 8($sp)
/* 5F028 8005E428 3C018016 */  lui        $at, %hi(D_8015ED08)
/* 5F02C 8005E42C E42AED08 */  swc1       $f10, %lo(D_8015ED08)($at)
/* 5F030 8005E430 24010002 */  addiu      $at, $zero, 2
/* 5F034 8005E434 15A10005 */  bne        $t5, $at, .L8005E44C
/* 5F038 8005E438 3C014040 */   lui       $at, 0x4040
/* 5F03C 8005E43C 44818000 */  mtc1       $at, $f16
/* 5F040 8005E440 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F044 8005E444 1000002C */  b          .L8005E4F8
/* 5F048 8005E448 E430ED0C */   swc1      $f16, %lo(D_8015ED0C)($at)
.L8005E44C:
/* 5F04C 8005E44C 8FAF0008 */  lw         $t7, 8($sp)
/* 5F050 8005E450 24010001 */  addiu      $at, $zero, 1
/* 5F054 8005E454 15E10005 */  bne        $t7, $at, .L8005E46C
/* 5F058 8005E458 3C013FC0 */   lui       $at, 0x3fc0
/* 5F05C 8005E45C 44819000 */  mtc1       $at, $f18
/* 5F060 8005E460 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F064 8005E464 10000024 */  b          .L8005E4F8
/* 5F068 8005E468 E432ED0C */   swc1      $f18, %lo(D_8015ED0C)($at)
.L8005E46C:
/* 5F06C 8005E46C 8FB80008 */  lw         $t8, 8($sp)
/* 5F070 8005E470 2401FFFF */  addiu      $at, $zero, -1
/* 5F074 8005E474 17010020 */  bne        $t8, $at, .L8005E4F8
/* 5F078 8005E478 3C013F40 */   lui       $at, 0x3f40
/* 5F07C 8005E47C 44812000 */  mtc1       $at, $f4
/* 5F080 8005E480 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F084 8005E484 1000001C */  b          .L8005E4F8
/* 5F088 8005E488 E424ED0C */   swc1      $f4, %lo(D_8015ED0C)($at)
.L8005E48C:
/* 5F08C 8005E48C 3C01800E */  lui        $at, %hi(D_800DDD68)
/* 5F090 8005E490 C426DD68 */  lwc1       $f6, %lo(D_800DDD68)($at)
/* 5F094 8005E494 8FAE0008 */  lw         $t6, 8($sp)
/* 5F098 8005E498 3C018016 */  lui        $at, %hi(D_8015ED08)
/* 5F09C 8005E49C E426ED08 */  swc1       $f6, %lo(D_8015ED08)($at)
/* 5F0A0 8005E4A0 24010003 */  addiu      $at, $zero, 3
/* 5F0A4 8005E4A4 15C10005 */  bne        $t6, $at, .L8005E4BC
/* 5F0A8 8005E4A8 3C014080 */   lui       $at, 0x4080
/* 5F0AC 8005E4AC 44814000 */  mtc1       $at, $f8
/* 5F0B0 8005E4B0 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F0B4 8005E4B4 10000010 */  b          .L8005E4F8
/* 5F0B8 8005E4B8 E428ED0C */   swc1      $f8, %lo(D_8015ED0C)($at)
.L8005E4BC:
/* 5F0BC 8005E4BC 8FB90008 */  lw         $t9, 8($sp)
/* 5F0C0 8005E4C0 24010002 */  addiu      $at, $zero, 2
/* 5F0C4 8005E4C4 17210005 */  bne        $t9, $at, .L8005E4DC
/* 5F0C8 8005E4C8 3C014000 */   lui       $at, 0x4000
/* 5F0CC 8005E4CC 44815000 */  mtc1       $at, $f10
/* 5F0D0 8005E4D0 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F0D4 8005E4D4 10000008 */  b          .L8005E4F8
/* 5F0D8 8005E4D8 E42AED0C */   swc1      $f10, %lo(D_8015ED0C)($at)
.L8005E4DC:
/* 5F0DC 8005E4DC 8FA80008 */  lw         $t0, 8($sp)
/* 5F0E0 8005E4E0 24010001 */  addiu      $at, $zero, 1
/* 5F0E4 8005E4E4 15010004 */  bne        $t0, $at, .L8005E4F8
/* 5F0E8 8005E4E8 3C01800E */   lui       $at, %hi(D_800DDD6C)
/* 5F0EC 8005E4EC C430DD6C */  lwc1       $f16, %lo(D_800DDD6C)($at)
/* 5F0F0 8005E4F0 3C018016 */  lui        $at, %hi(D_8015ED0C)
/* 5F0F4 8005E4F4 E430ED0C */  swc1       $f16, %lo(D_8015ED0C)($at)
.L8005E4F8:
/* 5F0F8 8005E4F8 3C098016 */  lui        $t1, %hi(D_8015E864)
/* 5F0FC 8005E4FC 8D29E864 */  lw         $t1, %lo(D_8015E864)($t1)
/* 5F100 8005E500 3C018016 */  lui        $at, %hi(D_8015ED10)
/* 5F104 8005E504 AC29ED10 */  sw         $t1, %lo(D_8015ED10)($at)
/* 5F108 8005E508 03E00008 */  jr         $ra
/* 5F10C 8005E50C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8005E510
/* 5F110 8005E510 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F114 8005E514 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F118 8005E518 AFA40030 */  sw         $a0, 0x30($sp)
/* 5F11C 8005E51C AFA50034 */  sw         $a1, 0x34($sp)
/* 5F120 8005E520 8FAF0030 */  lw         $t7, 0x30($sp)
/* 5F124 8005E524 3C0A8016 */  lui        $t2, %hi(D_8015FB88)
/* 5F128 8005E528 8D4AFB88 */  lw         $t2, %lo(D_8015FB88)($t2)
/* 5F12C 8005E52C 000FC080 */  sll        $t8, $t7, 2
/* 5F130 8005E530 030FC023 */  subu       $t8, $t8, $t7
/* 5F134 8005E534 0018C080 */  sll        $t8, $t8, 2
/* 5F138 8005E538 030FC023 */  subu       $t8, $t8, $t7
/* 5F13C 8005E53C 0018C080 */  sll        $t8, $t8, 2
/* 5F140 8005E540 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5F144 8005E544 030FC021 */  addu       $t8, $t8, $t7
/* 5F148 8005E548 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5F14C 8005E54C 0018C080 */  sll        $t8, $t8, 2
/* 5F150 8005E550 030FC023 */  subu       $t8, $t8, $t7
/* 5F154 8005E554 0018C080 */  sll        $t8, $t8, 2
/* 5F158 8005E558 000A5880 */  sll        $t3, $t2, 2
/* 5F15C 8005E55C 016A5823 */  subu       $t3, $t3, $t2
/* 5F160 8005E560 01D8C821 */  addu       $t9, $t6, $t8
/* 5F164 8005E564 8F280288 */  lw         $t0, 0x288($t9)
/* 5F168 8005E568 000B5880 */  sll        $t3, $t3, 2
/* 5F16C 8005E56C 016A5823 */  subu       $t3, $t3, $t2
/* 5F170 8005E570 000B5880 */  sll        $t3, $t3, 2
/* 5F174 8005E574 016A5821 */  addu       $t3, $t3, $t2
/* 5F178 8005E578 AFA8002C */  sw         $t0, 0x2c($sp)
/* 5F17C 8005E57C 8F29028C */  lw         $t1, 0x28c($t9)
/* 5F180 8005E580 000B5880 */  sll        $t3, $t3, 2
/* 5F184 8005E584 016A5823 */  subu       $t3, $t3, $t2
/* 5F188 8005E588 000B5880 */  sll        $t3, $t3, 2
/* 5F18C 8005E58C AFA00024 */  sw         $zero, 0x24($sp)
/* 5F190 8005E590 01CB6021 */  addu       $t4, $t6, $t3
/* 5F194 8005E594 AFA90028 */  sw         $t1, 0x28($sp)
/* 5F198 8005E598 818F0054 */  lb         $t7, 0x54($t4)
/* 5F19C 8005E59C 818D0055 */  lb         $t5, 0x55($t4)
/* 5F1A0 8005E5A0 0C004753 */  jal        func_80011D4C
/* 5F1A4 8005E5A4 01AF2021 */   addu      $a0, $t5, $t7
/* 5F1A8 8005E5A8 28410005 */  slti       $at, $v0, 5
/* 5F1AC 8005E5AC 14200004 */  bnez       $at, .L8005E5C0
/* 5F1B0 8005E5B0 00000000 */   nop
/* 5F1B4 8005E5B4 8FB8002C */  lw         $t8, 0x2c($sp)
/* 5F1B8 8005E5B8 13000008 */  beqz       $t8, .L8005E5DC
/* 5F1BC 8005E5BC 00000000 */   nop
.L8005E5C0:
/* 5F1C0 8005E5C0 8FA8002C */  lw         $t0, 0x2c($sp)
/* 5F1C4 8005E5C4 31194000 */  andi       $t9, $t0, 0x4000
/* 5F1C8 8005E5C8 17200004 */  bnez       $t9, .L8005E5DC
/* 5F1CC 8005E5CC 00000000 */   nop
/* 5F1D0 8005E5D0 31090010 */  andi       $t1, $t0, 0x10
/* 5F1D4 8005E5D4 11200002 */  beqz       $t1, .L8005E5E0
/* 5F1D8 8005E5D8 00000000 */   nop
.L8005E5DC:
/* 5F1DC 8005E5DC AFA00028 */  sw         $zero, 0x28($sp)
.L8005E5E0:
/* 5F1E0 8005E5E0 8FAE0030 */  lw         $t6, 0x30($sp)
/* 5F1E4 8005E5E4 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* 5F1E8 8005E5E8 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* 5F1EC 8005E5EC 000E5880 */  sll        $t3, $t6, 2
/* 5F1F0 8005E5F0 016E5823 */  subu       $t3, $t3, $t6
/* 5F1F4 8005E5F4 000B5880 */  sll        $t3, $t3, 2
/* 5F1F8 8005E5F8 016E5823 */  subu       $t3, $t3, $t6
/* 5F1FC 8005E5FC 000B5880 */  sll        $t3, $t3, 2
/* 5F200 8005E600 016E5821 */  addu       $t3, $t3, $t6
/* 5F204 8005E604 000B5880 */  sll        $t3, $t3, 2
/* 5F208 8005E608 016E5823 */  subu       $t3, $t3, $t6
/* 5F20C 8005E60C 000B5880 */  sll        $t3, $t3, 2
/* 5F210 8005E610 014B6021 */  addu       $t4, $t2, $t3
/* 5F214 8005E614 8D8D0278 */  lw         $t5, 0x278($t4)
/* 5F218 8005E618 2401002A */  addiu      $at, $zero, 0x2a
/* 5F21C 8005E61C 11A10007 */  beq        $t5, $at, .L8005E63C
/* 5F220 8005E620 2401002B */   addiu     $at, $zero, 0x2b
/* 5F224 8005E624 11A10005 */  beq        $t5, $at, .L8005E63C
/* 5F228 8005E628 24010022 */   addiu     $at, $zero, 0x22
/* 5F22C 8005E62C 11A10003 */  beq        $t5, $at, .L8005E63C
/* 5F230 8005E630 24010098 */   addiu     $at, $zero, 0x98
/* 5F234 8005E634 15A1000D */  bne        $t5, $at, .L8005E66C
/* 5F238 8005E638 00000000 */   nop
.L8005E63C:
/* 5F23C 8005E63C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 5F240 8005E640 2401FFFE */  addiu      $at, $zero, -2
/* 5F244 8005E644 01E1C024 */  and        $t8, $t7, $at
/* 5F248 8005E648 2F010002 */  sltiu      $at, $t8, 2
/* 5F24C 8005E64C 14200007 */  bnez       $at, .L8005E66C
/* 5F250 8005E650 AFB8001C */   sw        $t8, 0x1c($sp)
/* 5F254 8005E654 2F010101 */  sltiu      $at, $t8, 0x101
/* 5F258 8005E658 10200004 */  beqz       $at, .L8005E66C
/* 5F25C 8005E65C 00000000 */   nop
/* 5F260 8005E660 8FB9002C */  lw         $t9, 0x2c($sp)
/* 5F264 8005E664 37288000 */  ori        $t0, $t9, 0x8000
/* 5F268 8005E668 AFA8002C */  sw         $t0, 0x2c($sp)
.L8005E66C:
/* 5F26C 8005E66C 8FA90034 */  lw         $t1, 0x34($sp)
/* 5F270 8005E670 3C0A800D */  lui        $t2, 0x800d
/* 5F274 8005E674 8FAB002C */  lw         $t3, 0x2c($sp)
/* 5F278 8005E678 00097080 */  sll        $t6, $t1, 2
/* 5F27C 8005E67C 01C97023 */  subu       $t6, $t6, $t1
/* 5F280 8005E680 000E70C0 */  sll        $t6, $t6, 3
/* 5F284 8005E684 01C97021 */  addu       $t6, $t6, $t1
/* 5F288 8005E688 000E7080 */  sll        $t6, $t6, 2
/* 5F28C 8005E68C 014E5021 */  addu       $t2, $t2, $t6
/* 5F290 8005E690 8D4A7DD0 */  lw         $t2, 0x7dd0($t2)
/* 5F294 8005E694 014B6024 */  and        $t4, $t2, $t3
/* 5F298 8005E698 15800008 */  bnez       $t4, .L8005E6BC
/* 5F29C 8005E69C 00000000 */   nop
/* 5F2A0 8005E6A0 3C0D800D */  lui        $t5, %hi(D_800D7EFC)
/* 5F2A4 8005E6A4 25AD7EFC */  addiu      $t5, $t5, %lo(D_800D7EFC)
/* 5F2A8 8005E6A8 8DAF0000 */  lw         $t7, ($t5)
/* 5F2AC 8005E6AC 8FB80028 */  lw         $t8, 0x28($sp)
/* 5F2B0 8005E6B0 01F8C824 */  and        $t9, $t7, $t8
/* 5F2B4 8005E6B4 1320005C */  beqz       $t9, .L8005E828
/* 5F2B8 8005E6B8 00000000 */   nop
.L8005E6BC:
/* 5F2BC 8005E6BC 8FA90030 */  lw         $t1, 0x30($sp)
/* 5F2C0 8005E6C0 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 5F2C4 8005E6C4 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 5F2C8 8005E6C8 00097080 */  sll        $t6, $t1, 2
/* 5F2CC 8005E6CC 01C97023 */  subu       $t6, $t6, $t1
/* 5F2D0 8005E6D0 000E7080 */  sll        $t6, $t6, 2
/* 5F2D4 8005E6D4 01C97023 */  subu       $t6, $t6, $t1
/* 5F2D8 8005E6D8 000E7080 */  sll        $t6, $t6, 2
/* 5F2DC 8005E6DC 01C97021 */  addu       $t6, $t6, $t1
/* 5F2E0 8005E6E0 000E7080 */  sll        $t6, $t6, 2
/* 5F2E4 8005E6E4 01C97023 */  subu       $t6, $t6, $t1
/* 5F2E8 8005E6E8 000E7080 */  sll        $t6, $t6, 2
/* 5F2EC 8005E6EC 010E5021 */  addu       $t2, $t0, $t6
/* 5F2F0 8005E6F0 8D4B0014 */  lw         $t3, 0x14($t2)
/* 5F2F4 8005E6F4 2401FFFF */  addiu      $at, $zero, -1
/* 5F2F8 8005E6F8 1561004B */  bne        $t3, $at, .L8005E828
/* 5F2FC 8005E6FC 00000000 */   nop
/* 5F300 8005E700 3C0C800D */  lui        $t4, %hi(D_800D7EFC)
/* 5F304 8005E704 258C7EFC */  addiu      $t4, $t4, %lo(D_800D7EFC)
/* 5F308 8005E708 8D8D0000 */  lw         $t5, ($t4)
/* 5F30C 8005E70C 240F0001 */  addiu      $t7, $zero, 1
/* 5F310 8005E710 AFAF0020 */  sw         $t7, 0x20($sp)
/* 5F314 8005E714 AFAD0024 */  sw         $t5, 0x24($sp)
.L8005E718:
/* 5F318 8005E718 8FB80034 */  lw         $t8, 0x34($sp)
/* 5F31C 8005E71C 8FA90020 */  lw         $t1, 0x20($sp)
/* 5F320 8005E720 3C0A800D */  lui        $t2, 0x800d
/* 5F324 8005E724 0018C880 */  sll        $t9, $t8, 2
/* 5F328 8005E728 0338C823 */  subu       $t9, $t9, $t8
/* 5F32C 8005E72C 0019C8C0 */  sll        $t9, $t9, 3
/* 5F330 8005E730 0338C821 */  addu       $t9, $t9, $t8
/* 5F334 8005E734 0019C880 */  sll        $t9, $t9, 2
/* 5F338 8005E738 00094080 */  sll        $t0, $t1, 2
/* 5F33C 8005E73C 03287021 */  addu       $t6, $t9, $t0
/* 5F340 8005E740 014E5021 */  addu       $t2, $t2, $t6
/* 5F344 8005E744 8D4A7DD0 */  lw         $t2, 0x7dd0($t2)
/* 5F348 8005E748 8FAB002C */  lw         $t3, 0x2c($sp)
/* 5F34C 8005E74C 114B0007 */  beq        $t2, $t3, .L8005E76C
/* 5F350 8005E750 00000000 */   nop
/* 5F354 8005E754 3C0C800D */  lui        $t4, %hi(D_800D7EFC)
/* 5F358 8005E758 01886021 */  addu       $t4, $t4, $t0
/* 5F35C 8005E75C 8D8C7EFC */  lw         $t4, %lo(D_800D7EFC)($t4)
/* 5F360 8005E760 8FAD0028 */  lw         $t5, 0x28($sp)
/* 5F364 8005E764 158D0029 */  bne        $t4, $t5, .L8005E80C
/* 5F368 8005E768 00000000 */   nop
.L8005E76C:
/* 5F36C 8005E76C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 5F370 8005E770 24010001 */  addiu      $at, $zero, 1
/* 5F374 8005E774 15E1001D */  bne        $t7, $at, .L8005E7EC
/* 5F378 8005E778 00000000 */   nop
/* 5F37C 8005E77C 3C18800D */  lui        $t8, %hi(D_800D7D60)
/* 5F380 8005E780 8F187D60 */  lw         $t8, %lo(D_800D7D60)($t8)
/* 5F384 8005E784 3C0E800D */  lui        $t6, %hi(D_800D7EFC)
/* 5F388 8005E788 8FAA0024 */  lw         $t2, 0x24($sp)
/* 5F38C 8005E78C 01F84821 */  addu       $t1, $t7, $t8
/* 5F390 8005E790 0009C880 */  sll        $t9, $t1, 2
/* 5F394 8005E794 01D97021 */  addu       $t6, $t6, $t9
/* 5F398 8005E798 8DCE7EFC */  lw         $t6, %lo(D_800D7EFC)($t6)
/* 5F39C 8005E79C 3C08800D */  lui        $t0, %hi(D_800D7D64)
/* 5F3A0 8005E7A0 8D087D64 */  lw         $t0, %lo(D_800D7D64)($t0)
/* 5F3A4 8005E7A4 014E5825 */  or         $t3, $t2, $t6
/* 5F3A8 8005E7A8 AFAB0024 */  sw         $t3, 0x24($sp)
/* 5F3AC 8005E7AC 11000017 */  beqz       $t0, .L8005E80C
/* 5F3B0 8005E7B0 00000000 */   nop
/* 5F3B4 8005E7B4 3C0D8016 */  lui        $t5, %hi(D_8015FB88)
/* 5F3B8 8005E7B8 8DADFB88 */  lw         $t5, %lo(D_8015FB88)($t5)
/* 5F3BC 8005E7BC 8FAC0030 */  lw         $t4, 0x30($sp)
/* 5F3C0 8005E7C0 158D0012 */  bne        $t4, $t5, .L8005E80C
/* 5F3C4 8005E7C4 3C01800D */   lui       $at, %hi(D_800D7D64)
/* 5F3C8 8005E7C8 AC207D64 */  sw         $zero, %lo(D_800D7D64)($at)
/* 5F3CC 8005E7CC 3C01800D */  lui        $at, %hi(D_800D7D60)
/* 5F3D0 8005E7D0 270F0001 */  addiu      $t7, $t8, 1
/* 5F3D4 8005E7D4 AC2F7D60 */  sw         $t7, %lo(D_800D7D60)($at)
/* 5F3D8 8005E7D8 29E10004 */  slti       $at, $t7, 4
/* 5F3DC 8005E7DC 1420000B */  bnez       $at, .L8005E80C
/* 5F3E0 8005E7E0 3C01800D */   lui       $at, %hi(D_800D7D60)
/* 5F3E4 8005E7E4 10000009 */  b          .L8005E80C
/* 5F3E8 8005E7E8 AC207D60 */   sw        $zero, %lo(D_800D7D60)($at)
.L8005E7EC:
/* 5F3EC 8005E7EC 8FB90020 */  lw         $t9, 0x20($sp)
/* 5F3F0 8005E7F0 3C0E800D */  lui        $t6, %hi(D_800D7EFC)
/* 5F3F4 8005E7F4 8FA90024 */  lw         $t1, 0x24($sp)
/* 5F3F8 8005E7F8 00195080 */  sll        $t2, $t9, 2
/* 5F3FC 8005E7FC 01CA7021 */  addu       $t6, $t6, $t2
/* 5F400 8005E800 8DCE7EFC */  lw         $t6, %lo(D_800D7EFC)($t6)
/* 5F404 8005E804 012E5825 */  or         $t3, $t1, $t6
/* 5F408 8005E808 AFAB0024 */  sw         $t3, 0x24($sp)
.L8005E80C:
/* 5F40C 8005E80C 8FA80020 */  lw         $t0, 0x20($sp)
/* 5F410 8005E810 250C0001 */  addiu      $t4, $t0, 1
/* 5F414 8005E814 29810011 */  slti       $at, $t4, 0x11
/* 5F418 8005E818 1420FFBF */  bnez       $at, .L8005E718
/* 5F41C 8005E81C AFAC0020 */   sw        $t4, 0x20($sp)
/* 5F420 8005E820 1000001E */  b          .L8005E89C
/* 5F424 8005E824 00000000 */   nop
.L8005E828:
/* 5F428 8005E828 240D000F */  addiu      $t5, $zero, 0xf
/* 5F42C 8005E82C AFAD0020 */  sw         $t5, 0x20($sp)
.L8005E830:
/* 5F430 8005E830 8FB80034 */  lw         $t8, 0x34($sp)
/* 5F434 8005E834 8FB90020 */  lw         $t9, 0x20($sp)
/* 5F438 8005E838 3C0E800D */  lui        $t6, 0x800d
/* 5F43C 8005E83C 00187880 */  sll        $t7, $t8, 2
/* 5F440 8005E840 01F87823 */  subu       $t7, $t7, $t8
/* 5F444 8005E844 000F78C0 */  sll        $t7, $t7, 3
/* 5F448 8005E848 01F87821 */  addu       $t7, $t7, $t8
/* 5F44C 8005E84C 000F7880 */  sll        $t7, $t7, 2
/* 5F450 8005E850 00195080 */  sll        $t2, $t9, 2
/* 5F454 8005E854 01EA4821 */  addu       $t1, $t7, $t2
/* 5F458 8005E858 01C97021 */  addu       $t6, $t6, $t1
/* 5F45C 8005E85C 8DCE7DD0 */  lw         $t6, 0x7dd0($t6)
/* 5F460 8005E860 8FAB002C */  lw         $t3, 0x2c($sp)
/* 5F464 8005E864 01CB4024 */  and        $t0, $t6, $t3
/* 5F468 8005E868 11000007 */  beqz       $t0, .L8005E888
/* 5F46C 8005E86C 00000000 */   nop
/* 5F470 8005E870 3C0D800D */  lui        $t5, %hi(D_800D7EFC)
/* 5F474 8005E874 01AA6821 */  addu       $t5, $t5, $t2
/* 5F478 8005E878 8DAD7EFC */  lw         $t5, %lo(D_800D7EFC)($t5)
/* 5F47C 8005E87C 8FAC0024 */  lw         $t4, 0x24($sp)
/* 5F480 8005E880 018DC025 */  or         $t8, $t4, $t5
/* 5F484 8005E884 AFB80024 */  sw         $t8, 0x24($sp)
.L8005E888:
/* 5F488 8005E888 8FB90020 */  lw         $t9, 0x20($sp)
/* 5F48C 8005E88C 272F0001 */  addiu      $t7, $t9, 1
/* 5F490 8005E890 29E10019 */  slti       $at, $t7, 0x19
/* 5F494 8005E894 1420FFE6 */  bnez       $at, .L8005E830
/* 5F498 8005E898 AFAF0020 */   sw        $t7, 0x20($sp)
.L8005E89C:
/* 5F49C 8005E89C 8FA90024 */  lw         $t1, 0x24($sp)
/* 5F4A0 8005E8A0 312E8000 */  andi       $t6, $t1, 0x8000
/* 5F4A4 8005E8A4 11C00038 */  beqz       $t6, .L8005E988
/* 5F4A8 8005E8A8 00000000 */   nop
/* 5F4AC 8005E8AC 8FA80030 */  lw         $t0, 0x30($sp)
/* 5F4B0 8005E8B0 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 5F4B4 8005E8B4 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 5F4B8 8005E8B8 00085080 */  sll        $t2, $t0, 2
/* 5F4BC 8005E8BC 01485023 */  subu       $t2, $t2, $t0
/* 5F4C0 8005E8C0 000A5080 */  sll        $t2, $t2, 2
/* 5F4C4 8005E8C4 01485023 */  subu       $t2, $t2, $t0
/* 5F4C8 8005E8C8 000A5080 */  sll        $t2, $t2, 2
/* 5F4CC 8005E8CC 01485021 */  addu       $t2, $t2, $t0
/* 5F4D0 8005E8D0 000A5080 */  sll        $t2, $t2, 2
/* 5F4D4 8005E8D4 01485023 */  subu       $t2, $t2, $t0
/* 5F4D8 8005E8D8 000A5080 */  sll        $t2, $t2, 2
/* 5F4DC 8005E8DC 016A6021 */  addu       $t4, $t3, $t2
/* 5F4E0 8005E8E0 C5840030 */  lwc1       $f4, 0x30($t4)
/* 5F4E4 8005E8E4 44804800 */  mtc1       $zero, $f9
/* 5F4E8 8005E8E8 44804000 */  mtc1       $zero, $f8
/* 5F4EC 8005E8EC 460021A1 */  cvt.d.s    $f6, $f4
/* 5F4F0 8005E8F0 4628303E */  c.le.d     $f6, $f8
/* 5F4F4 8005E8F4 00000000 */  nop
/* 5F4F8 8005E8F8 45000006 */  bc1f       .L8005E914
/* 5F4FC 8005E8FC 00000000 */   nop
/* 5F500 8005E900 44805000 */  mtc1       $zero, $f10
/* 5F504 8005E904 3C01800E */  lui        $at, %hi(D_800D8808)
/* 5F508 8005E908 E58A0030 */  swc1       $f10, 0x30($t4)
/* 5F50C 8005E90C 10000018 */  b          .L8005E970
/* 5F510 8005E910 AC208808 */   sw        $zero, %lo(D_800D8808)($at)
.L8005E914:
/* 5F514 8005E914 8FB80030 */  lw         $t8, 0x30($sp)
/* 5F518 8005E918 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 5F51C 8005E91C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 5F520 8005E920 0018C880 */  sll        $t9, $t8, 2
/* 5F524 8005E924 0338C823 */  subu       $t9, $t9, $t8
/* 5F528 8005E928 0019C880 */  sll        $t9, $t9, 2
/* 5F52C 8005E92C 0338C823 */  subu       $t9, $t9, $t8
/* 5F530 8005E930 0019C880 */  sll        $t9, $t9, 2
/* 5F534 8005E934 0338C821 */  addu       $t9, $t9, $t8
/* 5F538 8005E938 0019C880 */  sll        $t9, $t9, 2
/* 5F53C 8005E93C 0338C823 */  subu       $t9, $t9, $t8
/* 5F540 8005E940 0019C880 */  sll        $t9, $t9, 2
/* 5F544 8005E944 01B97821 */  addu       $t7, $t5, $t9
/* 5F548 8005E948 C5F00030 */  lwc1       $f16, 0x30($t7)
/* 5F54C 8005E94C 3C01800E */  lui        $at, %hi(D_800DDD70)
/* 5F550 8005E950 D424DD70 */  ldc1       $f4, %lo(D_800DDD70)($at)
/* 5F554 8005E954 460084A1 */  cvt.d.s    $f18, $f16
/* 5F558 8005E958 3C01800E */  lui        $at, %hi(D_800D8808)
/* 5F55C 8005E95C 46249181 */  sub.d      $f6, $f18, $f4
/* 5F560 8005E960 24090001 */  addiu      $t1, $zero, 1
/* 5F564 8005E964 46203220 */  cvt.s.d    $f8, $f6
/* 5F568 8005E968 E5E80030 */  swc1       $f8, 0x30($t7)
/* 5F56C 8005E96C AC298808 */  sw         $t1, %lo(D_800D8808)($at)
.L8005E970:
/* 5F570 8005E970 3C058016 */  lui        $a1, %hi(D_8015FB88)
/* 5F574 8005E974 8CA5FB88 */  lw         $a1, %lo(D_8015FB88)($a1)
/* 5F578 8005E978 0C0177C0 */  jal        func_8005DF00
/* 5F57C 8005E97C 27A40024 */   addiu     $a0, $sp, 0x24
/* 5F580 8005E980 10000003 */  b          .L8005E990
/* 5F584 8005E984 00000000 */   nop
.L8005E988:
/* 5F588 8005E988 3C01800E */  lui        $at, %hi(D_800D8808)
/* 5F58C 8005E98C AC208808 */  sw         $zero, %lo(D_800D8808)($at)
.L8005E990:
/* 5F590 8005E990 8FAB0030 */  lw         $t3, 0x30($sp)
/* 5F594 8005E994 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* 5F598 8005E998 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* 5F59C 8005E99C 000B5080 */  sll        $t2, $t3, 2
/* 5F5A0 8005E9A0 014B5023 */  subu       $t2, $t2, $t3
/* 5F5A4 8005E9A4 000A5080 */  sll        $t2, $t2, 2
/* 5F5A8 8005E9A8 014B5023 */  subu       $t2, $t2, $t3
/* 5F5AC 8005E9AC 000A5080 */  sll        $t2, $t2, 2
/* 5F5B0 8005E9B0 014B5021 */  addu       $t2, $t2, $t3
/* 5F5B4 8005E9B4 000A5080 */  sll        $t2, $t2, 2
/* 5F5B8 8005E9B8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 5F5BC 8005E9BC 014B5023 */  subu       $t2, $t2, $t3
/* 5F5C0 8005E9C0 000A5080 */  sll        $t2, $t2, 2
/* 5F5C4 8005E9C4 010A6021 */  addu       $t4, $t0, $t2
/* 5F5C8 8005E9C8 AD8E0288 */  sw         $t6, 0x288($t4)
/* 5F5CC 8005E9CC 8FAD0030 */  lw         $t5, 0x30($sp)
/* 5F5D0 8005E9D0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* 5F5D4 8005E9D4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* 5F5D8 8005E9D8 000DC880 */  sll        $t9, $t5, 2
/* 5F5DC 8005E9DC 032DC823 */  subu       $t9, $t9, $t5
/* 5F5E0 8005E9E0 0019C880 */  sll        $t9, $t9, 2
/* 5F5E4 8005E9E4 032DC823 */  subu       $t9, $t9, $t5
/* 5F5E8 8005E9E8 0019C880 */  sll        $t9, $t9, 2
/* 5F5EC 8005E9EC 032DC821 */  addu       $t9, $t9, $t5
/* 5F5F0 8005E9F0 0019C880 */  sll        $t9, $t9, 2
/* 5F5F4 8005E9F4 032DC823 */  subu       $t9, $t9, $t5
/* 5F5F8 8005E9F8 0019C880 */  sll        $t9, $t9, 2
/* 5F5FC 8005E9FC 03197821 */  addu       $t7, $t8, $t9
/* 5F600 8005EA00 8DE90014 */  lw         $t1, 0x14($t7)
/* 5F604 8005EA04 0520003B */  bltz       $t1, .L8005EAF4
/* 5F608 8005EA08 00000000 */   nop
/* 5F60C 8005EA0C 8FAB002C */  lw         $t3, 0x2c($sp)
/* 5F610 8005EA10 31688000 */  andi       $t0, $t3, 0x8000
/* 5F614 8005EA14 11000011 */  beqz       $t0, .L8005EA5C
/* 5F618 8005EA18 00000000 */   nop
/* 5F61C 8005EA1C 3C0A0400 */  lui        $t2, 0x400
/* 5F620 8005EA20 ADEA028C */  sw         $t2, 0x28c($t7)
/* 5F624 8005EA24 8FAC0030 */  lw         $t4, 0x30($sp)
/* 5F628 8005EA28 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5F62C 8005EA2C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5F630 8005EA30 000C6880 */  sll        $t5, $t4, 2
/* 5F634 8005EA34 01AC6823 */  subu       $t5, $t5, $t4
/* 5F638 8005EA38 000D6880 */  sll        $t5, $t5, 2
/* 5F63C 8005EA3C 01AC6823 */  subu       $t5, $t5, $t4
/* 5F640 8005EA40 000D6880 */  sll        $t5, $t5, 2
/* 5F644 8005EA44 01AC6821 */  addu       $t5, $t5, $t4
/* 5F648 8005EA48 000D6880 */  sll        $t5, $t5, 2
/* 5F64C 8005EA4C 01AC6823 */  subu       $t5, $t5, $t4
/* 5F650 8005EA50 000D6880 */  sll        $t5, $t5, 2
/* 5F654 8005EA54 01CDC021 */  addu       $t8, $t6, $t5
/* 5F658 8005EA58 AF000288 */  sw         $zero, 0x288($t8)
.L8005EA5C:
/* 5F65C 8005EA5C 8FB9002C */  lw         $t9, 0x2c($sp)
/* 5F660 8005EA60 33294000 */  andi       $t1, $t9, 0x4000
/* 5F664 8005EA64 11200023 */  beqz       $t1, .L8005EAF4
/* 5F668 8005EA68 00000000 */   nop
/* 5F66C 8005EA6C 8FA80030 */  lw         $t0, 0x30($sp)
/* 5F670 8005EA70 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* 5F674 8005EA74 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* 5F678 8005EA78 00085080 */  sll        $t2, $t0, 2
/* 5F67C 8005EA7C 01485023 */  subu       $t2, $t2, $t0
/* 5F680 8005EA80 000A5080 */  sll        $t2, $t2, 2
/* 5F684 8005EA84 01485023 */  subu       $t2, $t2, $t0
/* 5F688 8005EA88 000A5080 */  sll        $t2, $t2, 2
/* 5F68C 8005EA8C 01485021 */  addu       $t2, $t2, $t0
/* 5F690 8005EA90 000A5080 */  sll        $t2, $t2, 2
/* 5F694 8005EA94 01485023 */  subu       $t2, $t2, $t0
/* 5F698 8005EA98 000A5080 */  sll        $t2, $t2, 2
/* 5F69C 8005EA9C 016A7821 */  addu       $t7, $t3, $t2
/* 5F6A0 8005EAA0 8DEC028C */  lw         $t4, 0x28c($t7)
/* 5F6A4 8005EAA4 3C01FBFF */  lui        $at, 0xfbff
/* 5F6A8 8005EAA8 3421FFFF */  ori        $at, $at, 0xffff
/* 5F6AC 8005EAAC 01817024 */  and        $t6, $t4, $at
/* 5F6B0 8005EAB0 ADEE028C */  sw         $t6, 0x28c($t7)
/* 5F6B4 8005EAB4 8FB80030 */  lw         $t8, 0x30($sp)
/* 5F6B8 8005EAB8 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* 5F6BC 8005EABC 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* 5F6C0 8005EAC0 0018C880 */  sll        $t9, $t8, 2
/* 5F6C4 8005EAC4 0338C823 */  subu       $t9, $t9, $t8
/* 5F6C8 8005EAC8 0019C880 */  sll        $t9, $t9, 2
/* 5F6CC 8005EACC 0338C823 */  subu       $t9, $t9, $t8
/* 5F6D0 8005EAD0 0019C880 */  sll        $t9, $t9, 2
/* 5F6D4 8005EAD4 0338C821 */  addu       $t9, $t9, $t8
/* 5F6D8 8005EAD8 0019C880 */  sll        $t9, $t9, 2
/* 5F6DC 8005EADC 0338C823 */  subu       $t9, $t9, $t8
/* 5F6E0 8005EAE0 0019C880 */  sll        $t9, $t9, 2
/* 5F6E4 8005EAE4 01B94821 */  addu       $t1, $t5, $t9
/* 5F6E8 8005EAE8 8D280288 */  lw         $t0, 0x288($t1)
/* 5F6EC 8005EAEC 01015824 */  and        $t3, $t0, $at
/* 5F6F0 8005EAF0 AD2B0288 */  sw         $t3, 0x288($t1)
.L8005EAF4:
/* 5F6F4 8005EAF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F6F8 8005EAF8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5F6FC 8005EAFC 03E00008 */  jr         $ra
/* 5F700 8005EB00 00000000 */   nop

glabel func_8005EB04
/* 5F704 8005EB04 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 5F708 8005EB08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F70C 8005EB0C AFA40058 */  sw         $a0, 0x58($sp)
/* 5F710 8005EB10 27A40018 */  addiu      $a0, $sp, 0x18
/* 5F714 8005EB14 0C004122 */  jal        func_80010488
/* 5F718 8005EB18 8FA50058 */   lw        $a1, 0x58($sp)
/* 5F71C 8005EB1C 3C058016 */  lui        $a1, %hi(D_8015F9EC)
/* 5F720 8005EB20 24A5F9EC */  addiu      $a1, $a1, %lo(D_8015F9EC)
/* 5F724 8005EB24 0C0047BF */  jal        func_80011EFC
/* 5F728 8005EB28 27A40018 */   addiu     $a0, $sp, 0x18
/* 5F72C 8005EB2C 8FAF0058 */  lw         $t7, 0x58($sp)
/* 5F730 8005EB30 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5F734 8005EB34 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5F738 8005EB38 000FC080 */  sll        $t8, $t7, 2
/* 5F73C 8005EB3C 030FC023 */  subu       $t8, $t8, $t7
/* 5F740 8005EB40 0018C080 */  sll        $t8, $t8, 2
/* 5F744 8005EB44 030FC023 */  subu       $t8, $t8, $t7
/* 5F748 8005EB48 0018C080 */  sll        $t8, $t8, 2
/* 5F74C 8005EB4C 030FC021 */  addu       $t8, $t8, $t7
/* 5F750 8005EB50 0018C080 */  sll        $t8, $t8, 2
/* 5F754 8005EB54 030FC023 */  subu       $t8, $t8, $t7
/* 5F758 8005EB58 0018C080 */  sll        $t8, $t8, 2
/* 5F75C 8005EB5C 3C018016 */  lui        $at, %hi(D_8015F9EC)
/* 5F760 8005EB60 01D8C821 */  addu       $t9, $t6, $t8
/* 5F764 8005EB64 C72400E0 */  lwc1       $f4, 0xe0($t9)
/* 5F768 8005EB68 C426F9EC */  lwc1       $f6, %lo(D_8015F9EC)($at)
/* 5F76C 8005EB6C 3C018014 */  lui        $at, %hi(D_8013F634)
/* 5F770 8005EB70 46062200 */  add.s      $f8, $f4, $f6
/* 5F774 8005EB74 E428F634 */  swc1       $f8, %lo(D_8013F634)($at)
/* 5F778 8005EB78 3C018016 */  lui        $at, %hi(D_8015F9F0)
/* 5F77C 8005EB7C C430F9F0 */  lwc1       $f16, %lo(D_8015F9F0)($at)
/* 5F780 8005EB80 C72A00E4 */  lwc1       $f10, 0xe4($t9)
/* 5F784 8005EB84 3C018014 */  lui        $at, %hi(D_8013F638)
/* 5F788 8005EB88 46105480 */  add.s      $f18, $f10, $f16
/* 5F78C 8005EB8C E432F638 */  swc1       $f18, %lo(D_8013F638)($at)
/* 5F790 8005EB90 3C018016 */  lui        $at, %hi(D_8015F9F4)
/* 5F794 8005EB94 C426F9F4 */  lwc1       $f6, %lo(D_8015F9F4)($at)
/* 5F798 8005EB98 C72400E8 */  lwc1       $f4, 0xe8($t9)
/* 5F79C 8005EB9C 3C018014 */  lui        $at, %hi(D_8013F63C)
/* 5F7A0 8005EBA0 46062200 */  add.s      $f8, $f4, $f6
/* 5F7A4 8005EBA4 E428F63C */  swc1       $f8, %lo(D_8013F63C)($at)
/* 5F7A8 8005EBA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F7AC 8005EBAC 27BD0058 */  addiu      $sp, $sp, 0x58
/* 5F7B0 8005EBB0 03E00008 */  jr         $ra
/* 5F7B4 8005EBB4 00000000 */   nop

glabel func_8005EBB8
/* 5F7B8 8005EBB8 00047880 */  sll        $t7, $a0, 2
/* 5F7BC 8005EBBC 01E47823 */  subu       $t7, $t7, $a0
/* 5F7C0 8005EBC0 000F7880 */  sll        $t7, $t7, 2
/* 5F7C4 8005EBC4 01E47823 */  subu       $t7, $t7, $a0
/* 5F7C8 8005EBC8 000F7880 */  sll        $t7, $t7, 2
/* 5F7CC 8005EBCC 01E47821 */  addu       $t7, $t7, $a0
/* 5F7D0 8005EBD0 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* 5F7D4 8005EBD4 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* 5F7D8 8005EBD8 000F7880 */  sll        $t7, $t7, 2
/* 5F7DC 8005EBDC 01E47823 */  subu       $t7, $t7, $a0
/* 5F7E0 8005EBE0 000F7880 */  sll        $t7, $t7, 2
/* 5F7E4 8005EBE4 0004C880 */  sll        $t9, $a0, 2
/* 5F7E8 8005EBE8 0324C823 */  subu       $t9, $t9, $a0
/* 5F7EC 8005EBEC 01CFC021 */  addu       $t8, $t6, $t7
/* 5F7F0 8005EBF0 C70400FC */  lwc1       $f4, 0xfc($t8)
/* 5F7F4 8005EBF4 0019C880 */  sll        $t9, $t9, 2
/* 5F7F8 8005EBF8 0324C823 */  subu       $t9, $t9, $a0
/* 5F7FC 8005EBFC 3C014024 */  lui        $at, 0x4024
/* 5F800 8005EC00 44814800 */  mtc1       $at, $f9
/* 5F804 8005EC04 44804000 */  mtc1       $zero, $f8
/* 5F808 8005EC08 0019C880 */  sll        $t9, $t9, 2
/* 5F80C 8005EC0C 460021A1 */  cvt.d.s    $f6, $f4
/* 5F810 8005EC10 0324C821 */  addu       $t9, $t9, $a0
/* 5F814 8005EC14 0019C880 */  sll        $t9, $t9, 2
/* 5F818 8005EC18 46283282 */  mul.d      $f10, $f6, $f8
/* 5F81C 8005EC1C 0324C823 */  subu       $t9, $t9, $a0
/* 5F820 8005EC20 0019C880 */  sll        $t9, $t9, 2
/* 5F824 8005EC24 01D94021 */  addu       $t0, $t6, $t9
/* 5F828 8005EC28 C51000D4 */  lwc1       $f16, 0xd4($t0)
/* 5F82C 8005EC2C 00044880 */  sll        $t1, $a0, 2
/* 5F830 8005EC30 01244823 */  subu       $t1, $t1, $a0
/* 5F834 8005EC34 460084A1 */  cvt.d.s    $f18, $f16
/* 5F838 8005EC38 00094880 */  sll        $t1, $t1, 2
/* 5F83C 8005EC3C 46325100 */  add.d      $f4, $f10, $f18
/* 5F840 8005EC40 01244823 */  subu       $t1, $t1, $a0
/* 5F844 8005EC44 00094880 */  sll        $t1, $t1, 2
/* 5F848 8005EC48 01244821 */  addu       $t1, $t1, $a0
/* 5F84C 8005EC4C 462021A0 */  cvt.s.d    $f6, $f4
/* 5F850 8005EC50 00094880 */  sll        $t1, $t1, 2
/* 5F854 8005EC54 01244823 */  subu       $t1, $t1, $a0
/* 5F858 8005EC58 3C018014 */  lui        $at, %hi(D_8013F640)
/* 5F85C 8005EC5C 00094880 */  sll        $t1, $t1, 2
/* 5F860 8005EC60 00045880 */  sll        $t3, $a0, 2
/* 5F864 8005EC64 E426F640 */  swc1       $f6, %lo(D_8013F640)($at)
/* 5F868 8005EC68 01645823 */  subu       $t3, $t3, $a0
/* 5F86C 8005EC6C 01C95021 */  addu       $t2, $t6, $t1
/* 5F870 8005EC70 C5480100 */  lwc1       $f8, 0x100($t2)
/* 5F874 8005EC74 000B5880 */  sll        $t3, $t3, 2
/* 5F878 8005EC78 01645823 */  subu       $t3, $t3, $a0
/* 5F87C 8005EC7C 3C014024 */  lui        $at, 0x4024
/* 5F880 8005EC80 44815800 */  mtc1       $at, $f11
/* 5F884 8005EC84 44805000 */  mtc1       $zero, $f10
/* 5F888 8005EC88 000B5880 */  sll        $t3, $t3, 2
/* 5F88C 8005EC8C 46004421 */  cvt.d.s    $f16, $f8
/* 5F890 8005EC90 01645821 */  addu       $t3, $t3, $a0
/* 5F894 8005EC94 000B5880 */  sll        $t3, $t3, 2
/* 5F898 8005EC98 462A8482 */  mul.d      $f18, $f16, $f10
/* 5F89C 8005EC9C 01645823 */  subu       $t3, $t3, $a0
/* 5F8A0 8005ECA0 000B5880 */  sll        $t3, $t3, 2
/* 5F8A4 8005ECA4 01CB6021 */  addu       $t4, $t6, $t3
/* 5F8A8 8005ECA8 C58400DC */  lwc1       $f4, 0xdc($t4)
/* 5F8AC 8005ECAC 3C018014 */  lui        $at, %hi(D_8013F648)
/* 5F8B0 8005ECB0 460021A1 */  cvt.d.s    $f6, $f4
/* 5F8B4 8005ECB4 46269200 */  add.d      $f8, $f18, $f6
/* 5F8B8 8005ECB8 46204420 */  cvt.s.d    $f16, $f8
/* 5F8BC 8005ECBC E430F648 */  swc1       $f16, %lo(D_8013F648)($at)
/* 5F8C0 8005ECC0 03E00008 */  jr         $ra
/* 5F8C4 8005ECC4 00000000 */   nop
/* 5F8C8 8005ECC8 00000000 */  nop
/* 5F8CC 8005ECCC 00000000 */  nop
