.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CAB50
/* CB750 800CAB50 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CB754 800CAB54 AFBF0014 */  sw         $ra, 0x14($sp)
/* CB758 800CAB58 AFA40048 */  sw         $a0, 0x48($sp)
/* CB75C 800CAB5C AFA5004C */  sw         $a1, 0x4c($sp)
/* CB760 800CAB60 AFA60050 */  sw         $a2, 0x50($sp)
/* CB764 800CAB64 AFA70054 */  sw         $a3, 0x54($sp)
/* CB768 800CAB68 AFA0001C */  sw         $zero, 0x1c($sp)
/* CB76C 800CAB6C 0C031D08 */  jal        func_800C7420
/* CB770 800CAB70 8FA40048 */   lw        $a0, 0x48($sp)
/* CB774 800CAB74 24010002 */  addiu      $at, $zero, 2
/* CB778 800CAB78 14410003 */  bne        $v0, $at, .L800CAB88
/* CB77C 800CAB7C 00000000 */   nop
/* CB780 800CAB80 1000005C */  b          .L800CACF4
/* CB784 800CAB84 24020002 */   addiu     $v0, $zero, 2
.L800CAB88:
/* CB788 800CAB88 8FAE0048 */  lw         $t6, 0x48($sp)
/* CB78C 800CAB8C AFA00044 */  sw         $zero, 0x44($sp)
/* CB790 800CAB90 8DCF0050 */  lw         $t7, 0x50($t6)
/* CB794 800CAB94 19E00053 */  blez       $t7, .L800CACE4
/* CB798 800CAB98 00000000 */   nop
.L800CAB9C:
/* CB79C 800CAB9C 8FB80048 */  lw         $t8, 0x48($sp)
/* CB7A0 800CABA0 8FA80044 */  lw         $t0, 0x44($sp)
/* CB7A4 800CABA4 27A70020 */  addiu      $a3, $sp, 0x20
/* CB7A8 800CABA8 8F19005C */  lw         $t9, 0x5c($t8)
/* CB7AC 800CABAC 8F040004 */  lw         $a0, 4($t8)
/* CB7B0 800CABB0 8F050008 */  lw         $a1, 8($t8)
/* CB7B4 800CABB4 0C034C10 */  jal        func_800D3040
/* CB7B8 800CABB8 03283021 */   addu      $a2, $t9, $t0
/* CB7BC 800CABBC AFA2001C */  sw         $v0, 0x1c($sp)
/* CB7C0 800CABC0 8FA9001C */  lw         $t1, 0x1c($sp)
/* CB7C4 800CABC4 11200003 */  beqz       $t1, .L800CABD4
/* CB7C8 800CABC8 00000000 */   nop
/* CB7CC 800CABCC 10000049 */  b          .L800CACF4
/* CB7D0 800CABD0 01201025 */   or        $v0, $t1, $zero
.L800CABD4:
/* CB7D4 800CABD4 97AA0024 */  lhu        $t2, 0x24($sp)
/* CB7D8 800CABD8 97AB004E */  lhu        $t3, 0x4e($sp)
/* CB7DC 800CABDC 154B0039 */  bne        $t2, $t3, .L800CACC4
/* CB7E0 800CABE0 00000000 */   nop
/* CB7E4 800CABE4 8FAC0020 */  lw         $t4, 0x20($sp)
/* CB7E8 800CABE8 8FAD0050 */  lw         $t5, 0x50($sp)
/* CB7EC 800CABEC 158D0035 */  bne        $t4, $t5, .L800CACC4
/* CB7F0 800CABF0 00000000 */   nop
/* CB7F4 800CABF4 8FAE0054 */  lw         $t6, 0x54($sp)
/* CB7F8 800CABF8 AFA00018 */  sw         $zero, 0x18($sp)
/* CB7FC 800CABFC 11C00012 */  beqz       $t6, .L800CAC48
/* CB800 800CAC00 00000000 */   nop
/* CB804 800CAC04 AFA00040 */  sw         $zero, 0x40($sp)
.L800CAC08:
/* CB808 800CAC08 8FB80040 */  lw         $t8, 0x40($sp)
/* CB80C 800CAC0C 8FAF0054 */  lw         $t7, 0x54($sp)
/* CB810 800CAC10 03B84821 */  addu       $t1, $sp, $t8
/* CB814 800CAC14 01F8C821 */  addu       $t9, $t7, $t8
/* CB818 800CAC18 93280000 */  lbu        $t0, ($t9)
/* CB81C 800CAC1C 91290030 */  lbu        $t1, 0x30($t1)
/* CB820 800CAC20 11090004 */  beq        $t0, $t1, .L800CAC34
/* CB824 800CAC24 00000000 */   nop
/* CB828 800CAC28 240A0001 */  addiu      $t2, $zero, 1
/* CB82C 800CAC2C 10000006 */  b          .L800CAC48
/* CB830 800CAC30 AFAA0018 */   sw        $t2, 0x18($sp)
.L800CAC34:
/* CB834 800CAC34 8FAB0040 */  lw         $t3, 0x40($sp)
/* CB838 800CAC38 256C0001 */  addiu      $t4, $t3, 1
/* CB83C 800CAC3C 29810010 */  slti       $at, $t4, 0x10
/* CB840 800CAC40 1420FFF1 */  bnez       $at, .L800CAC08
/* CB844 800CAC44 AFAC0040 */   sw        $t4, 0x40($sp)
.L800CAC48:
/* CB848 800CAC48 8FAD0058 */  lw         $t5, 0x58($sp)
/* CB84C 800CAC4C 11A00015 */  beqz       $t5, .L800CACA4
/* CB850 800CAC50 00000000 */   nop
/* CB854 800CAC54 8FAE0018 */  lw         $t6, 0x18($sp)
/* CB858 800CAC58 15C00012 */  bnez       $t6, .L800CACA4
/* CB85C 800CAC5C 00000000 */   nop
/* CB860 800CAC60 AFA00040 */  sw         $zero, 0x40($sp)
.L800CAC64:
/* CB864 800CAC64 8FB90040 */  lw         $t9, 0x40($sp)
/* CB868 800CAC68 8FAF0058 */  lw         $t7, 0x58($sp)
/* CB86C 800CAC6C 03B94821 */  addu       $t1, $sp, $t9
/* CB870 800CAC70 01F9C021 */  addu       $t8, $t7, $t9
/* CB874 800CAC74 93080000 */  lbu        $t0, ($t8)
/* CB878 800CAC78 9129002C */  lbu        $t1, 0x2c($t1)
/* CB87C 800CAC7C 11090004 */  beq        $t0, $t1, .L800CAC90
/* CB880 800CAC80 00000000 */   nop
/* CB884 800CAC84 240A0001 */  addiu      $t2, $zero, 1
/* CB888 800CAC88 10000006 */  b          .L800CACA4
/* CB88C 800CAC8C AFAA0018 */   sw        $t2, 0x18($sp)
.L800CAC90:
/* CB890 800CAC90 8FAB0040 */  lw         $t3, 0x40($sp)
/* CB894 800CAC94 256C0001 */  addiu      $t4, $t3, 1
/* CB898 800CAC98 29810004 */  slti       $at, $t4, 4
/* CB89C 800CAC9C 1420FFF1 */  bnez       $at, .L800CAC64
/* CB8A0 800CACA0 AFAC0040 */   sw        $t4, 0x40($sp)
.L800CACA4:
/* CB8A4 800CACA4 8FAD0018 */  lw         $t5, 0x18($sp)
/* CB8A8 800CACA8 15A00006 */  bnez       $t5, .L800CACC4
/* CB8AC 800CACAC 00000000 */   nop
/* CB8B0 800CACB0 8FAE0044 */  lw         $t6, 0x44($sp)
/* CB8B4 800CACB4 8FAF005C */  lw         $t7, 0x5c($sp)
/* CB8B8 800CACB8 ADEE0000 */  sw         $t6, ($t7)
/* CB8BC 800CACBC 1000000D */  b          .L800CACF4
/* CB8C0 800CACC0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800CACC4:
/* CB8C4 800CACC4 8FB80044 */  lw         $t8, 0x44($sp)
/* CB8C8 800CACC8 8FA80048 */  lw         $t0, 0x48($sp)
/* CB8CC 800CACCC 27190001 */  addiu      $t9, $t8, 1
/* CB8D0 800CACD0 AFB90044 */  sw         $t9, 0x44($sp)
/* CB8D4 800CACD4 8D090050 */  lw         $t1, 0x50($t0)
/* CB8D8 800CACD8 0329082A */  slt        $at, $t9, $t1
/* CB8DC 800CACDC 1420FFAF */  bnez       $at, .L800CAB9C
/* CB8E0 800CACE0 00000000 */   nop
.L800CACE4:
/* CB8E4 800CACE4 8FAB005C */  lw         $t3, 0x5c($sp)
/* CB8E8 800CACE8 240AFFFF */  addiu      $t2, $zero, -1
/* CB8EC 800CACEC 24020005 */  addiu      $v0, $zero, 5
/* CB8F0 800CACF0 AD6A0000 */  sw         $t2, ($t3)
.L800CACF4:
/* CB8F4 800CACF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CB8F8 800CACF8 27BD0048 */  addiu      $sp, $sp, 0x48
/* CB8FC 800CACFC 03E00008 */  jr         $ra
/* CB900 800CAD00 00000000 */   nop
/* CB904 800CAD04 00000000 */  nop
/* CB908 800CAD08 00000000 */  nop
/* CB90C 800CAD0C 00000000 */  nop
