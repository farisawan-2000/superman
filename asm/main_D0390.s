.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CF790
/* D0390 800CF790 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0394 800CF794 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0398 800CF798 3C04800E */  lui        $a0, %hi(D_800DB190)
/* D039C 800CF79C 2484B190 */  addiu      $a0, $a0, %lo(D_800DB190)
/* D03A0 800CF7A0 0C030DE4 */  jal        func_800C3790
/* D03A4 800CF7A4 24050060 */   addiu     $a1, $zero, 0x60
/* D03A8 800CF7A8 3C0E800E */  lui        $t6, %hi(D_800DB190)
/* D03AC 800CF7AC 25CEB190 */  addiu      $t6, $t6, %lo(D_800DB190)
/* D03B0 800CF7B0 3C01800E */  lui        $at, %hi(D_800DB1F0)
/* D03B4 800CF7B4 AC2EB1F0 */  sw         $t6, %lo(D_800DB1F0)($at)
/* D03B8 800CF7B8 3C01800E */  lui        $at, %hi(D_800DB1F4)
/* D03BC 800CF7BC 25CF0030 */  addiu      $t7, $t6, 0x30
/* D03C0 800CF7C0 AC2FB1F4 */  sw         $t7, %lo(D_800DB1F4)($at)
/* D03C4 800CF7C4 24180001 */  addiu      $t8, $zero, 1
/* D03C8 800CF7C8 A5D80032 */  sh         $t8, 0x32($t6)
/* D03CC 800CF7CC 3C08800E */  lui        $t0, %hi(D_800DB1F0)
/* D03D0 800CF7D0 8D08B1F0 */  lw         $t0, %lo(D_800DB1F0)($t0)
/* D03D4 800CF7D4 24190001 */  addiu      $t9, $zero, 1
/* D03D8 800CF7D8 3C0A800E */  lui        $t2, %hi(D_800DB1F4)
/* D03DC 800CF7DC A5190002 */  sh         $t9, 2($t0)
/* D03E0 800CF7E0 8D4AB1F4 */  lw         $t2, %lo(D_800DB1F4)($t2)
/* D03E4 800CF7E4 3C098000 */  lui        $t1, 0x8000
/* D03E8 800CF7E8 3C0C800E */  lui        $t4, %hi(D_800DB1F0)
/* D03EC 800CF7EC AD490004 */  sw         $t1, 4($t2)
/* D03F0 800CF7F0 8D8CB1F0 */  lw         $t4, %lo(D_800DB1F0)($t4)
/* D03F4 800CF7F4 3C0B8000 */  lui        $t3, 0x8000
/* D03F8 800CF7F8 3C0D8000 */  lui        $t5, %hi(D_80000300)
/* D03FC 800CF7FC AD8B0004 */  sw         $t3, 4($t4)
/* D0400 800CF800 8DAD0300 */  lw         $t5, %lo(D_80000300)($t5)
/* D0404 800CF804 15A00007 */  bnez       $t5, .L800CF824
/* D0408 800CF808 00000000 */   nop
/* D040C 800CF80C 3C18800E */  lui        $t8, %hi(D_800DB1F4)
/* D0410 800CF810 8F18B1F4 */  lw         $t8, %lo(D_800DB1F4)($t8)
/* D0414 800CF814 3C0F800E */  lui        $t7, %hi(D_800DB200)
/* D0418 800CF818 25EFB200 */  addiu      $t7, $t7, %lo(D_800DB200)
/* D041C 800CF81C 10000011 */  b          .L800CF864
/* D0420 800CF820 AF0F0008 */   sw        $t7, 8($t8)
.L800CF824:
/* D0424 800CF824 3C0E8000 */  lui        $t6, %hi(D_80000300)
/* D0428 800CF828 8DCE0300 */  lw         $t6, %lo(D_80000300)($t6)
/* D042C 800CF82C 24010002 */  addiu      $at, $zero, 2
/* D0430 800CF830 15C10007 */  bne        $t6, $at, .L800CF850
/* D0434 800CF834 00000000 */   nop
/* D0438 800CF838 3C08800E */  lui        $t0, %hi(D_800DB1F4)
/* D043C 800CF83C 8D08B1F4 */  lw         $t0, %lo(D_800DB1F4)($t0)
/* D0440 800CF840 3C19800E */  lui        $t9, %hi(D_800DB2A0)
/* D0444 800CF844 2739B2A0 */  addiu      $t9, $t9, %lo(D_800DB2A0)
/* D0448 800CF848 10000006 */  b          .L800CF864
/* D044C 800CF84C AD190008 */   sw        $t9, 8($t0)
.L800CF850:
/* D0450 800CF850 3C0A800E */  lui        $t2, %hi(D_800DB1F4)
/* D0454 800CF854 8D4AB1F4 */  lw         $t2, %lo(D_800DB1F4)($t2)
/* D0458 800CF858 3C09800E */  lui        $t1, %hi(D_800DB250)
/* D045C 800CF85C 2529B250 */  addiu      $t1, $t1, %lo(D_800DB250)
/* D0460 800CF860 AD490008 */  sw         $t1, 8($t2)
.L800CF864:
/* D0464 800CF864 3C0C800E */  lui        $t4, %hi(D_800DB1F4)
/* D0468 800CF868 8D8CB1F4 */  lw         $t4, %lo(D_800DB1F4)($t4)
/* D046C 800CF86C 240B0020 */  addiu      $t3, $zero, 0x20
/* D0470 800CF870 3C0D800E */  lui        $t5, %hi(D_800DB1F4)
/* D0474 800CF874 A58B0000 */  sh         $t3, ($t4)
/* D0478 800CF878 8DADB1F4 */  lw         $t5, %lo(D_800DB1F4)($t5)
/* D047C 800CF87C 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* D0480 800CF880 8DAF0008 */  lw         $t7, 8($t5)
/* D0484 800CF884 8DF80004 */  lw         $t8, 4($t7)
/* D0488 800CF888 ADB8000C */  sw         $t8, 0xc($t5)
/* D048C 800CF88C 8DD90010 */  lw         $t9, %lo(D_A4400010)($t6)
/* D0490 800CF890 2F21000B */  sltiu      $at, $t9, 0xb
/* D0494 800CF894 14200006 */  bnez       $at, .L800CF8B0
/* D0498 800CF898 00000000 */   nop
.L800CF89C:
/* D049C 800CF89C 3C08A440 */  lui        $t0, %hi(D_A4400010)
/* D04A0 800CF8A0 8D090010 */  lw         $t1, %lo(D_A4400010)($t0)
/* D04A4 800CF8A4 2D21000B */  sltiu      $at, $t1, 0xb
/* D04A8 800CF8A8 1020FFFC */  beqz       $at, .L800CF89C
/* D04AC 800CF8AC 00000000 */   nop
.L800CF8B0:
/* D04B0 800CF8B0 3C0AA440 */  lui        $t2, 0xa440
/* D04B4 800CF8B4 0C033E34 */  jal        func_800CF8D0
/* D04B8 800CF8B8 AD400000 */   sw        $zero, ($t2)
/* D04BC 800CF8BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D04C0 800CF8C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* D04C4 800CF8C4 03E00008 */  jr         $ra
/* D04C8 800CF8C8 00000000 */   nop
/* D04CC 800CF8CC 00000000 */  nop
