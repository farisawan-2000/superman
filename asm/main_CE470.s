.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD870
/* CE470 800CD870 27BDFF98 */  addiu      $sp, $sp, -0x68
/* CE474 800CD874 AFA40068 */  sw         $a0, 0x68($sp)
/* CE478 800CD878 8FAE0068 */  lw         $t6, 0x68($sp)
/* CE47C 800CD87C AFBF0014 */  sw         $ra, 0x14($sp)
/* CE480 800CD880 91CF0065 */  lbu        $t7, 0x65($t6)
/* CE484 800CD884 11E0000A */  beqz       $t7, .L800CD8B0
/* CE488 800CD888 00000000 */   nop
/* CE48C 800CD88C A1C00065 */  sb         $zero, 0x65($t6)
/* CE490 800CD890 0C031E0F */  jal        func_800C783C
/* CE494 800CD894 8FA40068 */   lw        $a0, 0x68($sp)
/* CE498 800CD898 AFA2001C */  sw         $v0, 0x1c($sp)
/* CE49C 800CD89C 8FB8001C */  lw         $t8, 0x1c($sp)
/* CE4A0 800CD8A0 13000003 */  beqz       $t8, .L800CD8B0
/* CE4A4 800CD8A4 00000000 */   nop
/* CE4A8 800CD8A8 10000084 */  b          .L800CDABC
/* CE4AC 800CD8AC 03001025 */   or        $v0, $t8, $zero
.L800CD8B0:
/* CE4B0 800CD8B0 8FB90068 */  lw         $t9, 0x68($sp)
/* CE4B4 800CD8B4 24060001 */  addiu      $a2, $zero, 1
/* CE4B8 800CD8B8 27A70040 */  addiu      $a3, $sp, 0x40
/* CE4BC 800CD8BC 8F240004 */  lw         $a0, 4($t9)
/* CE4C0 800CD8C0 0C034C10 */  jal        func_800D3040
/* CE4C4 800CD8C4 8F250008 */   lw        $a1, 8($t9)
/* CE4C8 800CD8C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* CE4CC 800CD8CC 8FA8001C */  lw         $t0, 0x1c($sp)
/* CE4D0 800CD8D0 11000003 */  beqz       $t0, .L800CD8E0
/* CE4D4 800CD8D4 00000000 */   nop
/* CE4D8 800CD8D8 10000078 */  b          .L800CDABC
/* CE4DC 800CD8DC 01001025 */   or        $v0, $t0, $zero
.L800CD8E0:
/* CE4E0 800CD8E0 27A40040 */  addiu      $a0, $sp, 0x40
/* CE4E4 800CD8E4 27A50062 */  addiu      $a1, $sp, 0x62
/* CE4E8 800CD8E8 0C031AEB */  jal        func_800C6BAC
/* CE4EC 800CD8EC 27A60060 */   addiu     $a2, $sp, 0x60
/* CE4F0 800CD8F0 27A90040 */  addiu      $t1, $sp, 0x40
/* CE4F4 800CD8F4 AFA90018 */  sw         $t1, 0x18($sp)
/* CE4F8 800CD8F8 952A001C */  lhu        $t2, 0x1c($t1)
/* CE4FC 800CD8FC 97AB0062 */  lhu        $t3, 0x62($sp)
/* CE500 800CD900 154B0005 */  bne        $t2, $t3, .L800CD918
/* CE504 800CD904 00000000 */   nop
/* CE508 800CD908 952C001E */  lhu        $t4, 0x1e($t1)
/* CE50C 800CD90C 97AD0060 */  lhu        $t5, 0x60($sp)
/* CE510 800CD910 118D001B */  beq        $t4, $t5, .L800CD980
/* CE514 800CD914 00000000 */   nop
.L800CD918:
/* CE518 800CD918 8FA40068 */  lw         $a0, 0x68($sp)
/* CE51C 800CD91C 0C031C0B */  jal        func_800C702C
/* CE520 800CD920 8FA50018 */   lw        $a1, 0x18($sp)
/* CE524 800CD924 AFA2001C */  sw         $v0, 0x1c($sp)
/* CE528 800CD928 8FAF001C */  lw         $t7, 0x1c($sp)
/* CE52C 800CD92C 2401000A */  addiu      $at, $zero, 0xa
/* CE530 800CD930 15E1000E */  bne        $t7, $at, .L800CD96C
/* CE534 800CD934 00000000 */   nop
/* CE538 800CD938 8FA40068 */  lw         $a0, 0x68($sp)
/* CE53C 800CD93C 8FA50018 */  lw         $a1, 0x18($sp)
/* CE540 800CD940 0C031B05 */  jal        func_800C6C14
/* CE544 800CD944 27A60020 */   addiu     $a2, $sp, 0x20
/* CE548 800CD948 AFA2001C */  sw         $v0, 0x1c($sp)
/* CE54C 800CD94C 8FAE001C */  lw         $t6, 0x1c($sp)
/* CE550 800CD950 11C00003 */  beqz       $t6, .L800CD960
/* CE554 800CD954 00000000 */   nop
/* CE558 800CD958 10000058 */  b          .L800CDABC
/* CE55C 800CD95C 01C01025 */   or        $v0, $t6, $zero
.L800CD960:
/* CE560 800CD960 27B80020 */  addiu      $t8, $sp, 0x20
/* CE564 800CD964 10000006 */  b          .L800CD980
/* CE568 800CD968 AFB80018 */   sw        $t8, 0x18($sp)
.L800CD96C:
/* CE56C 800CD96C 8FB9001C */  lw         $t9, 0x1c($sp)
/* CE570 800CD970 13200003 */  beqz       $t9, .L800CD980
/* CE574 800CD974 00000000 */   nop
/* CE578 800CD978 10000050 */  b          .L800CDABC
/* CE57C 800CD97C 03201025 */   or        $v0, $t9, $zero
.L800CD980:
/* CE580 800CD980 8FA80018 */  lw         $t0, 0x18($sp)
/* CE584 800CD984 950A0018 */  lhu        $t2, 0x18($t0)
/* CE588 800CD988 314B0001 */  andi       $t3, $t2, 1
/* CE58C 800CD98C 15600013 */  bnez       $t3, .L800CD9DC
/* CE590 800CD990 00000000 */   nop
/* CE594 800CD994 8FA40068 */  lw         $a0, 0x68($sp)
/* CE598 800CD998 01002825 */  or         $a1, $t0, $zero
/* CE59C 800CD99C 0C031B05 */  jal        func_800C6C14
/* CE5A0 800CD9A0 27A60020 */   addiu     $a2, $sp, 0x20
/* CE5A4 800CD9A4 AFA2001C */  sw         $v0, 0x1c($sp)
/* CE5A8 800CD9A8 8FA9001C */  lw         $t1, 0x1c($sp)
/* CE5AC 800CD9AC 11200003 */  beqz       $t1, .L800CD9BC
/* CE5B0 800CD9B0 00000000 */   nop
/* CE5B4 800CD9B4 10000041 */  b          .L800CDABC
/* CE5B8 800CD9B8 01201025 */   or        $v0, $t1, $zero
.L800CD9BC:
/* CE5BC 800CD9BC 27AC0020 */  addiu      $t4, $sp, 0x20
/* CE5C0 800CD9C0 AFAC0018 */  sw         $t4, 0x18($sp)
/* CE5C4 800CD9C4 958D0018 */  lhu        $t5, 0x18($t4)
/* CE5C8 800CD9C8 31AF0001 */  andi       $t7, $t5, 1
/* CE5CC 800CD9CC 15E00003 */  bnez       $t7, .L800CD9DC
/* CE5D0 800CD9D0 00000000 */   nop
/* CE5D4 800CD9D4 10000039 */  b          .L800CDABC
/* CE5D8 800CD9D8 2402000B */   addiu     $v0, $zero, 0xb
.L800CD9DC:
/* CE5DC 800CD9DC AFA00064 */  sw         $zero, 0x64($sp)
.L800CD9E0:
/* CE5E0 800CD9E0 8FAE0018 */  lw         $t6, 0x18($sp)
/* CE5E4 800CD9E4 8FB80064 */  lw         $t8, 0x64($sp)
/* CE5E8 800CD9E8 8FAB0068 */  lw         $t3, 0x68($sp)
/* CE5EC 800CD9EC 01D8C821 */  addu       $t9, $t6, $t8
/* CE5F0 800CD9F0 932A0000 */  lbu        $t2, ($t9)
/* CE5F4 800CD9F4 01784021 */  addu       $t0, $t3, $t8
/* CE5F8 800CD9F8 A10A000C */  sb         $t2, 0xc($t0)
/* CE5FC 800CD9FC 8FA90064 */  lw         $t1, 0x64($sp)
/* CE600 800CDA00 252C0001 */  addiu      $t4, $t1, 1
/* CE604 800CDA04 29810020 */  slti       $at, $t4, 0x20
/* CE608 800CDA08 1420FFF5 */  bnez       $at, .L800CD9E0
/* CE60C 800CDA0C AFAC0064 */   sw        $t4, 0x64($sp)
/* CE610 800CDA10 8FAD0018 */  lw         $t5, 0x18($sp)
/* CE614 800CDA14 8FAE0068 */  lw         $t6, 0x68($sp)
/* CE618 800CDA18 24060007 */  addiu      $a2, $zero, 7
/* CE61C 800CDA1C 91AF001B */  lbu        $t7, 0x1b($t5)
/* CE620 800CDA20 240D0010 */  addiu      $t5, $zero, 0x10
/* CE624 800CDA24 ADCF004C */  sw         $t7, 0x4c($t6)
/* CE628 800CDA28 8FB90018 */  lw         $t9, 0x18($sp)
/* CE62C 800CDA2C 8FB80068 */  lw         $t8, 0x68($sp)
/* CE630 800CDA30 240E0008 */  addiu      $t6, $zero, 8
/* CE634 800CDA34 932B001A */  lbu        $t3, 0x1a($t9)
/* CE638 800CDA38 A30B0064 */  sb         $t3, 0x64($t8)
/* CE63C 800CDA3C 8FAA0068 */  lw         $t2, 0x68($sp)
/* CE640 800CDA40 91480064 */  lbu        $t0, 0x64($t2)
/* CE644 800CDA44 00084840 */  sll        $t1, $t0, 1
/* CE648 800CDA48 252C0003 */  addiu      $t4, $t1, 3
/* CE64C 800CDA4C AD4C0060 */  sw         $t4, 0x60($t2)
/* CE650 800CDA50 8FAF0068 */  lw         $t7, 0x68($sp)
/* CE654 800CDA54 ADED0050 */  sw         $t5, 0x50($t7)
/* CE658 800CDA58 8FB90068 */  lw         $t9, 0x68($sp)
/* CE65C 800CDA5C AF2E0054 */  sw         $t6, 0x54($t9)
/* CE660 800CDA60 8FAB0068 */  lw         $t3, 0x68($sp)
/* CE664 800CDA64 91780064 */  lbu        $t8, 0x64($t3)
/* CE668 800CDA68 001840C0 */  sll        $t0, $t8, 3
/* CE66C 800CDA6C 25090008 */  addiu      $t1, $t0, 8
/* CE670 800CDA70 AD690058 */  sw         $t1, 0x58($t3)
/* CE674 800CDA74 8FAC0068 */  lw         $t4, 0x68($sp)
/* CE678 800CDA78 918D0064 */  lbu        $t5, 0x64($t4)
/* CE67C 800CDA7C 8D8A0058 */  lw         $t2, 0x58($t4)
/* CE680 800CDA80 000D78C0 */  sll        $t7, $t5, 3
/* CE684 800CDA84 014F7021 */  addu       $t6, $t2, $t7
/* CE688 800CDA88 AD8E005C */  sw         $t6, 0x5c($t4)
/* CE68C 800CDA8C 8FB90068 */  lw         $t9, 0x68($sp)
/* CE690 800CDA90 8F240004 */  lw         $a0, 4($t9)
/* CE694 800CDA94 8F250008 */  lw         $a1, 8($t9)
/* CE698 800CDA98 0C034C10 */  jal        func_800D3040
/* CE69C 800CDA9C 2727002C */   addiu     $a3, $t9, 0x2c
/* CE6A0 800CDAA0 AFA2001C */  sw         $v0, 0x1c($sp)
/* CE6A4 800CDAA4 8FB8001C */  lw         $t8, 0x1c($sp)
/* CE6A8 800CDAA8 13000003 */  beqz       $t8, .L800CDAB8
/* CE6AC 800CDAAC 00000000 */   nop
/* CE6B0 800CDAB0 10000002 */  b          .L800CDABC
/* CE6B4 800CDAB4 03001025 */   or        $v0, $t8, $zero
.L800CDAB8:
/* CE6B8 800CDAB8 00001025 */  or         $v0, $zero, $zero
.L800CDABC:
/* CE6BC 800CDABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE6C0 800CDAC0 27BD0068 */  addiu      $sp, $sp, 0x68
/* CE6C4 800CDAC4 03E00008 */  jr         $ra
/* CE6C8 800CDAC8 00000000 */   nop
/* CE6CC 800CDACC 00000000 */  nop
