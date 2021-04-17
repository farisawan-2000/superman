.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CDB30
/* CE730 800CDB30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CE734 800CDB34 AFBF001C */  sw         $ra, 0x1c($sp)
/* CE738 800CDB38 AFA40028 */  sw         $a0, 0x28($sp)
/* CE73C 800CDB3C AFA5002C */  sw         $a1, 0x2c($sp)
/* CE740 800CDB40 AFA60030 */  sw         $a2, 0x30($sp)
/* CE744 800CDB44 AFB10018 */  sw         $s1, 0x18($sp)
/* CE748 800CDB48 0C033DD4 */  jal        func_800CF750
/* CE74C 800CDB4C AFB00014 */   sw        $s0, 0x14($sp)
/* CE750 800CDB50 8FAE0028 */  lw         $t6, 0x28($sp)
/* CE754 800CDB54 00408025 */  or         $s0, $v0, $zero
/* CE758 800CDB58 8DCF0008 */  lw         $t7, 8($t6)
/* CE75C 800CDB5C 8DD80010 */  lw         $t8, 0x10($t6)
/* CE760 800CDB60 01F8082A */  slt        $at, $t7, $t8
/* CE764 800CDB64 14200018 */  bnez       $at, .L800CDBC8
/* CE768 800CDB68 00000000 */   nop
.L800CDB6C:
/* CE76C 800CDB6C 8FB90030 */  lw         $t9, 0x30($sp)
/* CE770 800CDB70 24010001 */  addiu      $at, $zero, 1
/* CE774 800CDB74 1721000A */  bne        $t9, $at, .L800CDBA0
/* CE778 800CDB78 00000000 */   nop
/* CE77C 800CDB7C 3C09800E */  lui        $t1, %hi(D_800DA080)
/* CE780 800CDB80 8D29A080 */  lw         $t1, %lo(D_800DA080)($t1)
/* CE784 800CDB84 24080008 */  addiu      $t0, $zero, 8
/* CE788 800CDB88 A5280010 */  sh         $t0, 0x10($t1)
/* CE78C 800CDB8C 8FA40028 */  lw         $a0, 0x28($sp)
/* CE790 800CDB90 0C02FAFF */  jal        func_800BEBFC
/* CE794 800CDB94 24840004 */   addiu     $a0, $a0, 4
/* CE798 800CDB98 10000005 */  b          .L800CDBB0
/* CE79C 800CDB9C 00000000 */   nop
.L800CDBA0:
/* CE7A0 800CDBA0 0C033DDC */  jal        func_800CF770
/* CE7A4 800CDBA4 02002025 */   or        $a0, $s0, $zero
/* CE7A8 800CDBA8 10000030 */  b          .L800CDC6C
/* CE7AC 800CDBAC 2402FFFF */   addiu     $v0, $zero, -1
.L800CDBB0:
/* CE7B0 800CDBB0 8FAA0028 */  lw         $t2, 0x28($sp)
/* CE7B4 800CDBB4 8D4B0008 */  lw         $t3, 8($t2)
/* CE7B8 800CDBB8 8D4C0010 */  lw         $t4, 0x10($t2)
/* CE7BC 800CDBBC 016C082A */  slt        $at, $t3, $t4
/* CE7C0 800CDBC0 1020FFEA */  beqz       $at, .L800CDB6C
/* CE7C4 800CDBC4 00000000 */   nop
.L800CDBC8:
/* CE7C8 800CDBC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* CE7CC 800CDBCC 8DAE000C */  lw         $t6, 0xc($t5)
/* CE7D0 800CDBD0 8DAF0010 */  lw         $t7, 0x10($t5)
/* CE7D4 800CDBD4 01CFC021 */  addu       $t8, $t6, $t7
/* CE7D8 800CDBD8 2719FFFF */  addiu      $t9, $t8, -1
/* CE7DC 800CDBDC 032F001A */  div        $zero, $t9, $t7
/* CE7E0 800CDBE0 00004010 */  mfhi       $t0
/* CE7E4 800CDBE4 ADA8000C */  sw         $t0, 0xc($t5)
/* CE7E8 800CDBE8 8FAA0028 */  lw         $t2, 0x28($sp)
/* CE7EC 800CDBEC 8FA9002C */  lw         $t1, 0x2c($sp)
/* CE7F0 800CDBF0 15E00002 */  bnez       $t7, .L800CDBFC
/* CE7F4 800CDBF4 00000000 */   nop
/* CE7F8 800CDBF8 0007000D */  break      7
.L800CDBFC:
/* CE7FC 800CDBFC 2401FFFF */   addiu     $at, $zero, -1
/* CE800 800CDC00 15E10004 */  bne        $t7, $at, .L800CDC14
/* CE804 800CDC04 3C018000 */   lui       $at, 0x8000
/* CE808 800CDC08 17210002 */  bne        $t9, $at, .L800CDC14
/* CE80C 800CDC0C 00000000 */   nop
/* CE810 800CDC10 0006000D */  break      6
.L800CDC14:
/* CE814 800CDC14 8D4C000C */   lw        $t4, 0xc($t2)
/* CE818 800CDC18 8D4B0014 */  lw         $t3, 0x14($t2)
/* CE81C 800CDC1C 000C7080 */  sll        $t6, $t4, 2
/* CE820 800CDC20 016EC021 */  addu       $t8, $t3, $t6
/* CE824 800CDC24 AF090000 */  sw         $t1, ($t8)
/* CE828 800CDC28 8FB90028 */  lw         $t9, 0x28($sp)
/* CE82C 800CDC2C 8F2F0008 */  lw         $t7, 8($t9)
/* CE830 800CDC30 25E80001 */  addiu      $t0, $t7, 1
/* CE834 800CDC34 AF280008 */  sw         $t0, 8($t9)
/* CE838 800CDC38 8FAD0028 */  lw         $t5, 0x28($sp)
/* CE83C 800CDC3C 8DAA0000 */  lw         $t2, ($t5)
/* CE840 800CDC40 8D4C0000 */  lw         $t4, ($t2)
/* CE844 800CDC44 11800006 */  beqz       $t4, .L800CDC60
/* CE848 800CDC48 00000000 */   nop
/* CE84C 800CDC4C 0C02FB51 */  jal        func_800BED44
/* CE850 800CDC50 01A02025 */   or        $a0, $t5, $zero
/* CE854 800CDC54 00408825 */  or         $s1, $v0, $zero
/* CE858 800CDC58 0C034CE8 */  jal        func_800D33A0
/* CE85C 800CDC5C 02202025 */   or        $a0, $s1, $zero
.L800CDC60:
/* CE860 800CDC60 0C033DDC */  jal        func_800CF770
/* CE864 800CDC64 02002025 */   or        $a0, $s0, $zero
/* CE868 800CDC68 00001025 */  or         $v0, $zero, $zero
.L800CDC6C:
/* CE86C 800CDC6C 8FBF001C */  lw         $ra, 0x1c($sp)
/* CE870 800CDC70 8FB00014 */  lw         $s0, 0x14($sp)
/* CE874 800CDC74 8FB10018 */  lw         $s1, 0x18($sp)
/* CE878 800CDC78 03E00008 */  jr         $ra
/* CE87C 800CDC7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800CDC80
/* CE880 800CDC80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CE884 800CDC84 AFBF001C */  sw         $ra, 0x1c($sp)
/* CE888 800CDC88 AFA40028 */  sw         $a0, 0x28($sp)
/* CE88C 800CDC8C AFA5002C */  sw         $a1, 0x2c($sp)
/* CE890 800CDC90 0C033DD4 */  jal        func_800CF750
/* CE894 800CDC94 AFB00018 */   sw        $s0, 0x18($sp)
/* CE898 800CDC98 8FAE0028 */  lw         $t6, 0x28($sp)
/* CE89C 800CDC9C 00408025 */  or         $s0, $v0, $zero
/* CE8A0 800CDCA0 15C00004 */  bnez       $t6, .L800CDCB4
/* CE8A4 800CDCA4 00000000 */   nop
/* CE8A8 800CDCA8 3C0F800E */  lui        $t7, %hi(D_800DA080)
/* CE8AC 800CDCAC 8DEFA080 */  lw         $t7, %lo(D_800DA080)($t7)
/* CE8B0 800CDCB0 AFAF0028 */  sw         $t7, 0x28($sp)
.L800CDCB4:
/* CE8B4 800CDCB4 8FB80028 */  lw         $t8, 0x28($sp)
/* CE8B8 800CDCB8 8FA8002C */  lw         $t0, 0x2c($sp)
/* CE8BC 800CDCBC 8F190004 */  lw         $t9, 4($t8)
/* CE8C0 800CDCC0 13280020 */  beq        $t9, $t0, .L800CDD44
/* CE8C4 800CDCC4 00000000 */   nop
/* CE8C8 800CDCC8 AF080004 */  sw         $t0, 4($t8)
/* CE8CC 800CDCCC 3C0A800E */  lui        $t2, %hi(D_800DA080)
/* CE8D0 800CDCD0 8D4AA080 */  lw         $t2, %lo(D_800DA080)($t2)
/* CE8D4 800CDCD4 8FA90028 */  lw         $t1, 0x28($sp)
/* CE8D8 800CDCD8 112A000C */  beq        $t1, $t2, .L800CDD0C
/* CE8DC 800CDCDC 00000000 */   nop
/* CE8E0 800CDCE0 952B0010 */  lhu        $t3, 0x10($t1)
/* CE8E4 800CDCE4 24010001 */  addiu      $at, $zero, 1
/* CE8E8 800CDCE8 11610008 */  beq        $t3, $at, .L800CDD0C
/* CE8EC 800CDCEC 00000000 */   nop
/* CE8F0 800CDCF0 8D240008 */  lw         $a0, 8($t1)
/* CE8F4 800CDCF4 0C02FBB8 */  jal        func_800BEEE0
/* CE8F8 800CDCF8 01202825 */   or        $a1, $t1, $zero
/* CE8FC 800CDCFC 8FAC0028 */  lw         $t4, 0x28($sp)
/* CE900 800CDD00 8D840008 */  lw         $a0, 8($t4)
/* CE904 800CDD04 0C02FB3F */  jal        func_800BECFC
/* CE908 800CDD08 01802825 */   or        $a1, $t4, $zero
.L800CDD0C:
/* CE90C 800CDD0C 3C0D800E */  lui        $t5, %hi(D_800DA080)
/* CE910 800CDD10 3C0F800E */  lui        $t7, %hi(D_800DA078)
/* CE914 800CDD14 8DEFA078 */  lw         $t7, %lo(D_800DA078)($t7)
/* CE918 800CDD18 8DADA080 */  lw         $t5, %lo(D_800DA080)($t5)
/* CE91C 800CDD1C 8DF90004 */  lw         $t9, 4($t7)
/* CE920 800CDD20 8DAE0004 */  lw         $t6, 4($t5)
/* CE924 800CDD24 01D9082A */  slt        $at, $t6, $t9
/* CE928 800CDD28 10200006 */  beqz       $at, .L800CDD44
/* CE92C 800CDD2C 00000000 */   nop
/* CE930 800CDD30 24080002 */  addiu      $t0, $zero, 2
/* CE934 800CDD34 3C04800E */  lui        $a0, %hi(D_800DA078)
/* CE938 800CDD38 A5A80010 */  sh         $t0, 0x10($t5)
/* CE93C 800CDD3C 0C02FAFF */  jal        func_800BEBFC
/* CE940 800CDD40 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
.L800CDD44:
/* CE944 800CDD44 0C033DDC */  jal        func_800CF770
/* CE948 800CDD48 02002025 */   or        $a0, $s0, $zero
/* CE94C 800CDD4C 8FBF001C */  lw         $ra, 0x1c($sp)
/* CE950 800CDD50 8FB00018 */  lw         $s0, 0x18($sp)
/* CE954 800CDD54 27BD0028 */  addiu      $sp, $sp, 0x28
/* CE958 800CDD58 03E00008 */  jr         $ra
/* CE95C 800CDD5C 00000000 */   nop

glabel func_800CDD60
/* CE960 800CDD60 14800003 */  bnez       $a0, .L800CDD70
/* CE964 800CDD64 00000000 */   nop
/* CE968 800CDD68 3C04800E */  lui        $a0, %hi(D_800DA080)
/* CE96C 800CDD6C 8C84A080 */  lw         $a0, %lo(D_800DA080)($a0)
.L800CDD70:
/* CE970 800CDD70 03E00008 */  jr         $ra
/* CE974 800CDD74 8C820004 */   lw        $v0, 4($a0)
/* CE978 800CDD78 00000000 */  nop
/* CE97C 800CDD7C 00000000 */  nop
