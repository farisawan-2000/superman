.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CE9C0
/* CF5C0 800CE9C0 3C0E800E */  lui        $t6, %hi(D_800DA0B8)
/* CF5C4 800CE9C4 8DCEA0B8 */  lw         $t6, %lo(D_800DA0B8)($t6)
/* CF5C8 800CE9C8 44844000 */  mtc1       $a0, $f8
/* CF5CC 800CE9CC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* CF5D0 800CE9D0 448E2000 */  mtc1       $t6, $f4
/* CF5D4 800CE9D4 468042A0 */  cvt.s.w    $f10, $f8
/* CF5D8 800CE9D8 04810005 */  bgez       $a0, .L800CE9F0
/* CF5DC 800CE9DC 468021A0 */   cvt.s.w   $f6, $f4
/* CF5E0 800CE9E0 3C014F80 */  lui        $at, 0x4f80
/* CF5E4 800CE9E4 44818000 */  mtc1       $at, $f16
/* CF5E8 800CE9E8 00000000 */  nop
/* CF5EC 800CE9EC 46105280 */  add.s      $f10, $f10, $f16
.L800CE9F0:
/* CF5F0 800CE9F0 460A3483 */  div.s      $f18, $f6, $f10
/* CF5F4 800CE9F4 3C013F00 */  lui        $at, 0x3f00
/* CF5F8 800CE9F8 44812000 */  mtc1       $at, $f4
/* CF5FC 800CE9FC 24050001 */  addiu      $a1, $zero, 1
/* CF600 800CEA00 46049300 */  add.s      $f12, $f18, $f4
/* CF604 800CEA04 444FF800 */  cfc1       $t7, $31
/* CF608 800CEA08 44C5F800 */  ctc1       $a1, $31
/* CF60C 800CEA0C 00000000 */  nop
/* CF610 800CEA10 46006224 */  cvt.w.s    $f8, $f12
/* CF614 800CEA14 4445F800 */  cfc1       $a1, $31
/* CF618 800CEA18 00000000 */  nop
/* CF61C 800CEA1C 30A10004 */  andi       $at, $a1, 4
/* CF620 800CEA20 30A50078 */  andi       $a1, $a1, 0x78
/* CF624 800CEA24 10A00013 */  beqz       $a1, .L800CEA74
/* CF628 800CEA28 3C014F00 */   lui       $at, 0x4f00
/* CF62C 800CEA2C 44814000 */  mtc1       $at, $f8
/* CF630 800CEA30 24050001 */  addiu      $a1, $zero, 1
/* CF634 800CEA34 46086201 */  sub.s      $f8, $f12, $f8
/* CF638 800CEA38 44C5F800 */  ctc1       $a1, $31
/* CF63C 800CEA3C 00000000 */  nop
/* CF640 800CEA40 46004224 */  cvt.w.s    $f8, $f8
/* CF644 800CEA44 4445F800 */  cfc1       $a1, $31
/* CF648 800CEA48 00000000 */  nop
/* CF64C 800CEA4C 30A10004 */  andi       $at, $a1, 4
/* CF650 800CEA50 30A50078 */  andi       $a1, $a1, 0x78
/* CF654 800CEA54 14A00005 */  bnez       $a1, .L800CEA6C
/* CF658 800CEA58 00000000 */   nop
/* CF65C 800CEA5C 44054000 */  mfc1       $a1, $f8
/* CF660 800CEA60 3C018000 */  lui        $at, 0x8000
/* CF664 800CEA64 10000007 */  b          .L800CEA84
/* CF668 800CEA68 00A12825 */   or        $a1, $a1, $at
.L800CEA6C:
/* CF66C 800CEA6C 10000005 */  b          .L800CEA84
/* CF670 800CEA70 2405FFFF */   addiu     $a1, $zero, -1
.L800CEA74:
/* CF674 800CEA74 44054000 */  mfc1       $a1, $f8
/* CF678 800CEA78 00000000 */  nop
/* CF67C 800CEA7C 04A0FFFB */  bltz       $a1, .L800CEA6C
/* CF680 800CEA80 00000000 */   nop
.L800CEA84:
/* CF684 800CEA84 44CFF800 */  ctc1       $t7, $31
/* CF688 800CEA88 2CA10084 */  sltiu      $at, $a1, 0x84
/* CF68C 800CEA8C 10200003 */  beqz       $at, .L800CEA9C
/* CF690 800CEA90 00000000 */   nop
/* CF694 800CEA94 10000020 */  b          .L800CEB18
/* CF698 800CEA98 2402FFFF */   addiu     $v0, $zero, -1
.L800CEA9C:
/* CF69C 800CEA9C 24010042 */  addiu      $at, $zero, 0x42
/* CF6A0 800CEAA0 00A1001B */  divu       $zero, $a1, $at
/* CF6A4 800CEAA4 00003012 */  mflo       $a2
/* CF6A8 800CEAA8 30D800FF */  andi       $t8, $a2, 0xff
/* CF6AC 800CEAAC 03003025 */  or         $a2, $t8, $zero
/* CF6B0 800CEAB0 28C10011 */  slti       $at, $a2, 0x11
/* CF6B4 800CEAB4 14200002 */  bnez       $at, .L800CEAC0
/* CF6B8 800CEAB8 00000000 */   nop
/* CF6BC 800CEABC 24060010 */  addiu      $a2, $zero, 0x10
.L800CEAC0:
/* CF6C0 800CEAC0 24B9FFFF */  addiu      $t9, $a1, -1
/* CF6C4 800CEAC4 3C08A450 */  lui        $t0, %hi(D_A4500010)
/* CF6C8 800CEAC8 AD190010 */  sw         $t9, %lo(D_A4500010)($t0)
/* CF6CC 800CEACC 24C9FFFF */  addiu      $t1, $a2, -1
/* CF6D0 800CEAD0 3C0AA450 */  lui        $t2, %hi(D_A4500014)
/* CF6D4 800CEAD4 AD490014 */  sw         $t1, %lo(D_A4500014)($t2)
/* CF6D8 800CEAD8 240B0001 */  addiu      $t3, $zero, 1
/* CF6DC 800CEADC 3C0CA450 */  lui        $t4, %hi(D_A4500008)
/* CF6E0 800CEAE0 AD8B0008 */  sw         $t3, %lo(D_A4500008)($t4)
/* CF6E4 800CEAE4 3C0D800E */  lui        $t5, %hi(D_800DA0B8)
/* CF6E8 800CEAE8 8DADA0B8 */  lw         $t5, %lo(D_800DA0B8)($t5)
/* CF6EC 800CEAEC 01A5001A */  div        $zero, $t5, $a1
/* CF6F0 800CEAF0 00001012 */  mflo       $v0
/* CF6F4 800CEAF4 14A00002 */  bnez       $a1, .L800CEB00
/* CF6F8 800CEAF8 00000000 */   nop
/* CF6FC 800CEAFC 0007000D */  break      7
.L800CEB00:
/* CF700 800CEB00 2401FFFF */   addiu     $at, $zero, -1
/* CF704 800CEB04 14A10004 */  bne        $a1, $at, .L800CEB18
/* CF708 800CEB08 3C018000 */   lui       $at, 0x8000
/* CF70C 800CEB0C 15A10002 */  bne        $t5, $at, .L800CEB18
/* CF710 800CEB10 00000000 */   nop
/* CF714 800CEB14 0006000D */  break      6
.L800CEB18:
/* CF718 800CEB18 03E00008 */   jr        $ra
/* CF71C 800CEB1C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800CEB20
/* CF720 800CEB20 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* CF724 800CEB24 3084FFFF */  andi       $a0, $a0, 0xffff
/* CF728 800CEB28 A3A0000F */  sb         $zero, 0xf($sp)
/* CF72C 800CEB2C AFA00008 */  sw         $zero, 8($sp)
.L800CEB30:
/* CF730 800CEB30 93AE000F */  lbu        $t6, 0xf($sp)
/* CF734 800CEB34 31CF0010 */  andi       $t7, $t6, 0x10
/* CF738 800CEB38 11E00004 */  beqz       $t7, .L800CEB4C
/* CF73C 800CEB3C 00000000 */   nop
/* CF740 800CEB40 24180015 */  addiu      $t8, $zero, 0x15
/* CF744 800CEB44 10000002 */  b          .L800CEB50
/* CF748 800CEB48 A3B8000E */   sb        $t8, 0xe($sp)
.L800CEB4C:
/* CF74C 800CEB4C A3A0000E */  sb         $zero, 0xe($sp)
.L800CEB50:
/* CF750 800CEB50 93B9000F */  lbu        $t9, 0xf($sp)
/* CF754 800CEB54 30890400 */  andi       $t1, $a0, 0x400
/* CF758 800CEB58 00194040 */  sll        $t0, $t9, 1
/* CF75C 800CEB5C 11200003 */  beqz       $t1, .L800CEB6C
/* CF760 800CEB60 A3A8000F */   sb        $t0, 0xf($sp)
/* CF764 800CEB64 10000002 */  b          .L800CEB70
/* CF768 800CEB68 24050001 */   addiu     $a1, $zero, 1
.L800CEB6C:
/* CF76C 800CEB6C 00002825 */  or         $a1, $zero, $zero
.L800CEB70:
/* CF770 800CEB70 93AA000F */  lbu        $t2, 0xf($sp)
/* CF774 800CEB74 8FA80008 */  lw         $t0, 8($sp)
/* CF778 800CEB78 93AF000E */  lbu        $t7, 0xe($sp)
/* CF77C 800CEB7C 30AB00FF */  andi       $t3, $a1, 0xff
/* CF780 800CEB80 00046840 */  sll        $t5, $a0, 1
/* CF784 800CEB84 014B6025 */  or         $t4, $t2, $t3
/* CF788 800CEB88 01A02025 */  or         $a0, $t5, $zero
/* CF78C 800CEB8C 319800FF */  andi       $t8, $t4, 0xff
/* CF790 800CEB90 25090001 */  addiu      $t1, $t0, 1
/* CF794 800CEB94 29210010 */  slti       $at, $t1, 0x10
/* CF798 800CEB98 A3AC000F */  sb         $t4, 0xf($sp)
/* CF79C 800CEB9C 308EFFFF */  andi       $t6, $a0, 0xffff
/* CF7A0 800CEBA0 030FC826 */  xor        $t9, $t8, $t7
/* CF7A4 800CEBA4 AFA90008 */  sw         $t1, 8($sp)
/* CF7A8 800CEBA8 01C02025 */  or         $a0, $t6, $zero
/* CF7AC 800CEBAC 1420FFE0 */  bnez       $at, .L800CEB30
/* CF7B0 800CEBB0 A3B9000F */   sb        $t9, 0xf($sp)
/* CF7B4 800CEBB4 93A2000F */  lbu        $v0, 0xf($sp)
/* CF7B8 800CEBB8 27BD0010 */  addiu      $sp, $sp, 0x10
/* CF7BC 800CEBBC 304A001F */  andi       $t2, $v0, 0x1f
/* CF7C0 800CEBC0 01401025 */  or         $v0, $t2, $zero
/* CF7C4 800CEBC4 304B00FF */  andi       $t3, $v0, 0xff
/* CF7C8 800CEBC8 03E00008 */  jr         $ra
/* CF7CC 800CEBCC 01601025 */   or        $v0, $t3, $zero

glabel func_800CEBD0
/* CF7D0 800CEBD0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* CF7D4 800CEBD4 A3A0000F */  sb         $zero, 0xf($sp)
/* CF7D8 800CEBD8 AFA00008 */  sw         $zero, 8($sp)
.L800CEBDC:
/* CF7DC 800CEBDC 240E0007 */  addiu      $t6, $zero, 7
/* CF7E0 800CEBE0 AFAE0004 */  sw         $t6, 4($sp)
.L800CEBE4:
/* CF7E4 800CEBE4 93AF000F */  lbu        $t7, 0xf($sp)
/* CF7E8 800CEBE8 31F80080 */  andi       $t8, $t7, 0x80
/* CF7EC 800CEBEC 13000004 */  beqz       $t8, .L800CEC00
/* CF7F0 800CEBF0 00000000 */   nop
/* CF7F4 800CEBF4 24190085 */  addiu      $t9, $zero, 0x85
/* CF7F8 800CEBF8 10000002 */  b          .L800CEC04
/* CF7FC 800CEBFC A3B9000E */   sb        $t9, 0xe($sp)
.L800CEC00:
/* CF800 800CEC00 A3A0000E */  sb         $zero, 0xe($sp)
.L800CEC04:
/* CF804 800CEC04 93A8000F */  lbu        $t0, 0xf($sp)
/* CF808 800CEC08 8FAA0008 */  lw         $t2, 8($sp)
/* CF80C 800CEC0C 24010020 */  addiu      $at, $zero, 0x20
/* CF810 800CEC10 00084840 */  sll        $t1, $t0, 1
/* CF814 800CEC14 15410004 */  bne        $t2, $at, .L800CEC28
/* CF818 800CEC18 A3A9000F */   sb        $t1, 0xf($sp)
/* CF81C 800CEC1C 312B00FF */  andi       $t3, $t1, 0xff
/* CF820 800CEC20 1000000E */  b          .L800CEC5C
/* CF824 800CEC24 A3AB000F */   sb        $t3, 0xf($sp)
.L800CEC28:
/* CF828 800CEC28 8FAD0004 */  lw         $t5, 4($sp)
/* CF82C 800CEC2C 908C0000 */  lbu        $t4, ($a0)
/* CF830 800CEC30 240E0001 */  addiu      $t6, $zero, 1
/* CF834 800CEC34 01AE7804 */  sllv       $t7, $t6, $t5
/* CF838 800CEC38 018FC024 */  and        $t8, $t4, $t7
/* CF83C 800CEC3C 13000003 */  beqz       $t8, .L800CEC4C
/* CF840 800CEC40 00000000 */   nop
/* CF844 800CEC44 10000002 */  b          .L800CEC50
/* CF848 800CEC48 24050001 */   addiu     $a1, $zero, 1
.L800CEC4C:
/* CF84C 800CEC4C 00002825 */  or         $a1, $zero, $zero
.L800CEC50:
/* CF850 800CEC50 93B9000F */  lbu        $t9, 0xf($sp)
/* CF854 800CEC54 03254025 */  or         $t0, $t9, $a1
/* CF858 800CEC58 A3A8000F */  sb         $t0, 0xf($sp)
.L800CEC5C:
/* CF85C 800CEC5C 8FAE0004 */  lw         $t6, 4($sp)
/* CF860 800CEC60 93AA000F */  lbu        $t2, 0xf($sp)
/* CF864 800CEC64 93A9000E */  lbu        $t1, 0xe($sp)
/* CF868 800CEC68 25CDFFFF */  addiu      $t5, $t6, -1
/* CF86C 800CEC6C AFAD0004 */  sw         $t5, 4($sp)
/* CF870 800CEC70 01495826 */  xor        $t3, $t2, $t1
/* CF874 800CEC74 05A1FFDB */  bgez       $t5, .L800CEBE4
/* CF878 800CEC78 A3AB000F */   sb        $t3, 0xf($sp)
/* CF87C 800CEC7C 8FAC0008 */  lw         $t4, 8($sp)
/* CF880 800CEC80 24840001 */  addiu      $a0, $a0, 1
/* CF884 800CEC84 258F0001 */  addiu      $t7, $t4, 1
/* CF888 800CEC88 29E10021 */  slti       $at, $t7, 0x21
/* CF88C 800CEC8C 1420FFD3 */  bnez       $at, .L800CEBDC
/* CF890 800CEC90 AFAF0008 */   sw        $t7, 8($sp)
/* CF894 800CEC94 93A2000F */  lbu        $v0, 0xf($sp)
/* CF898 800CEC98 03E00008 */  jr         $ra
/* CF89C 800CEC9C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800CECA0
/* CF8A0 800CECA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF8A4 800CECA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CF8A8 800CECA8 C4820000 */  lwc1       $f2, ($a0)
/* CF8AC 800CECAC C4AE0000 */  lwc1       $f14, ($a1)
/* CF8B0 800CECB0 C4C00000 */  lwc1       $f0, ($a2)
/* CF8B4 800CECB4 46021102 */  mul.s      $f4, $f2, $f2
/* CF8B8 800CECB8 AFA60020 */  sw         $a2, 0x20($sp)
/* CF8BC 800CECBC AFA5001C */  sw         $a1, 0x1c($sp)
/* CF8C0 800CECC0 460E7182 */  mul.s      $f6, $f14, $f14
/* CF8C4 800CECC4 AFA40018 */  sw         $a0, 0x18($sp)
/* CF8C8 800CECC8 46000282 */  mul.s      $f10, $f0, $f0
/* CF8CC 800CECCC 46062200 */  add.s      $f8, $f4, $f6
/* CF8D0 800CECD0 0C033068 */  jal        func_800CC1A0
/* CF8D4 800CECD4 46085300 */   add.s     $f12, $f10, $f8
/* CF8D8 800CECD8 3C013F80 */  lui        $at, 0x3f80
/* CF8DC 800CECDC 44818000 */  mtc1       $at, $f16
/* CF8E0 800CECE0 8FA40018 */  lw         $a0, 0x18($sp)
/* CF8E4 800CECE4 8FA5001C */  lw         $a1, 0x1c($sp)
/* CF8E8 800CECE8 46008083 */  div.s      $f2, $f16, $f0
/* CF8EC 800CECEC C4920000 */  lwc1       $f18, ($a0)
/* CF8F0 800CECF0 8FA60020 */  lw         $a2, 0x20($sp)
/* CF8F4 800CECF4 46029102 */  mul.s      $f4, $f18, $f2
/* CF8F8 800CECF8 E4840000 */  swc1       $f4, ($a0)
/* CF8FC 800CECFC C4A60000 */  lwc1       $f6, ($a1)
/* CF900 800CED00 46023282 */  mul.s      $f10, $f6, $f2
/* CF904 800CED04 E4AA0000 */  swc1       $f10, ($a1)
/* CF908 800CED08 C4C80000 */  lwc1       $f8, ($a2)
/* CF90C 800CED0C 46024402 */  mul.s      $f16, $f8, $f2
/* CF910 800CED10 E4D00000 */  swc1       $f16, ($a2)
/* CF914 800CED14 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF918 800CED18 27BD0018 */  addiu      $sp, $sp, 0x18
/* CF91C 800CED1C 03E00008 */  jr         $ra
/* CF920 800CED20 00000000 */   nop
/* CF924 800CED24 00000000 */  nop
/* CF928 800CED28 00000000 */  nop
/* CF92C 800CED2C 00000000 */  nop
