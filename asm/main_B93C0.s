.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B87C0
/* B93C0 800B87C0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B93C4 800B87C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* B93C8 800B87C8 AFA40070 */  sw         $a0, 0x70($sp)
/* B93CC 800B87CC AFA50074 */  sw         $a1, 0x74($sp)
/* B93D0 800B87D0 AFB00020 */  sw         $s0, 0x20($sp)
/* B93D4 800B87D4 93AE0077 */  lbu        $t6, 0x77($sp)
/* B93D8 800B87D8 24010058 */  addiu      $at, $zero, 0x58
/* B93DC 800B87DC 15C10005 */  bne        $t6, $at, .L800B87F4
/* B93E0 800B87E0 00000000 */   nop
/* B93E4 800B87E4 3C0F800D */  lui        $t7, %hi(D_800CD6A4)
/* B93E8 800B87E8 25EFD6A4 */  addiu      $t7, $t7, %lo(D_800CD6A4)
/* B93EC 800B87EC 10000004 */  b          .L800B8800
/* B93F0 800B87F0 AFAF0054 */   sw        $t7, 0x54($sp)
.L800B87F4:
/* B93F4 800B87F4 3C18800D */  lui        $t8, %hi(D_800CD690)
/* B93F8 800B87F8 2718D690 */  addiu      $t8, $t8, %lo(D_800CD690)
/* B93FC 800B87FC AFB80054 */  sw         $t8, 0x54($sp)
.L800B8800:
/* B9400 800B8800 93B90077 */  lbu        $t9, 0x77($sp)
/* B9404 800B8804 2401006F */  addiu      $at, $zero, 0x6f
/* B9408 800B8808 17210004 */  bne        $t9, $at, .L800B881C
/* B940C 800B880C 00000000 */   nop
/* B9410 800B8810 24080008 */  addiu      $t0, $zero, 8
/* B9414 800B8814 1000000C */  b          .L800B8848
/* B9418 800B8818 AFA80050 */   sw        $t0, 0x50($sp)
.L800B881C:
/* B941C 800B881C 93A90077 */  lbu        $t1, 0x77($sp)
/* B9420 800B8820 24010078 */  addiu      $at, $zero, 0x78
/* B9424 800B8824 11210006 */  beq        $t1, $at, .L800B8840
/* B9428 800B8828 00000000 */   nop
/* B942C 800B882C 24010058 */  addiu      $at, $zero, 0x58
/* B9430 800B8830 11210003 */  beq        $t1, $at, .L800B8840
/* B9434 800B8834 00000000 */   nop
/* B9438 800B8838 10000002 */  b          .L800B8844
/* B943C 800B883C 2410000A */   addiu     $s0, $zero, 0xa
.L800B8840:
/* B9440 800B8840 24100010 */  addiu      $s0, $zero, 0x10
.L800B8844:
/* B9444 800B8844 AFB00050 */  sw         $s0, 0x50($sp)
.L800B8848:
/* B9448 800B8848 240A0018 */  addiu      $t2, $zero, 0x18
/* B944C 800B884C AFAA004C */  sw         $t2, 0x4c($sp)
/* B9450 800B8850 8FAB0070 */  lw         $t3, 0x70($sp)
/* B9454 800B8854 8D6C0000 */  lw         $t4, ($t3)
/* B9458 800B8858 8D6D0004 */  lw         $t5, 4($t3)
/* B945C 800B885C AFAC0040 */  sw         $t4, 0x40($sp)
/* B9460 800B8860 AFAD0044 */  sw         $t5, 0x44($sp)
/* B9464 800B8864 93AE0077 */  lbu        $t6, 0x77($sp)
/* B9468 800B8868 24010064 */  addiu      $at, $zero, 0x64
/* B946C 800B886C 11C10004 */  beq        $t6, $at, .L800B8880
/* B9470 800B8870 00000000 */   nop
/* B9474 800B8874 24010069 */  addiu      $at, $zero, 0x69
/* B9478 800B8878 15C10012 */  bne        $t6, $at, .L800B88C4
/* B947C 800B887C 00000000 */   nop
.L800B8880:
/* B9480 800B8880 8FAF0070 */  lw         $t7, 0x70($sp)
/* B9484 800B8884 8DF80000 */  lw         $t8, ($t7)
/* B9488 800B8888 8DF90004 */  lw         $t9, 4($t7)
/* B948C 800B888C 1F00000D */  bgtz       $t8, .L800B88C4
/* B9490 800B8890 00000000 */   nop
/* B9494 800B8894 07000003 */  bltz       $t8, .L800B88A4
/* B9498 800B8898 00000000 */   nop
/* B949C 800B889C 10000009 */  b          .L800B88C4
/* B94A0 800B88A0 00000000 */   nop
.L800B88A4:
/* B94A4 800B88A4 8FA80040 */  lw         $t0, 0x40($sp)
/* B94A8 800B88A8 8FA90044 */  lw         $t1, 0x44($sp)
/* B94AC 800B88AC 01005027 */  not        $t2, $t0
/* B94B0 800B88B0 2D210001 */  sltiu      $at, $t1, 1
/* B94B4 800B88B4 01415021 */  addu       $t2, $t2, $at
/* B94B8 800B88B8 00095823 */  negu       $t3, $t1
/* B94BC 800B88BC AFAB0044 */  sw         $t3, 0x44($sp)
/* B94C0 800B88C0 AFAA0040 */  sw         $t2, 0x40($sp)
.L800B88C4:
/* B94C4 800B88C4 8FAC0040 */  lw         $t4, 0x40($sp)
/* B94C8 800B88C8 8FAD0044 */  lw         $t5, 0x44($sp)
/* B94CC 800B88CC 15800007 */  bnez       $t4, .L800B88EC
/* B94D0 800B88D0 00000000 */   nop
/* B94D4 800B88D4 15A00005 */  bnez       $t5, .L800B88EC
/* B94D8 800B88D8 00000000 */   nop
/* B94DC 800B88DC 8FAE0070 */  lw         $t6, 0x70($sp)
/* B94E0 800B88E0 8DCF0024 */  lw         $t7, 0x24($t6)
/* B94E4 800B88E4 11E00010 */  beqz       $t7, .L800B8928
/* B94E8 800B88E8 00000000 */   nop
.L800B88EC:
/* B94EC 800B88EC 8FB0004C */  lw         $s0, 0x4c($sp)
/* B94F0 800B88F0 8FB80050 */  lw         $t8, 0x50($sp)
/* B94F4 800B88F4 8FA40040 */  lw         $a0, 0x40($sp)
/* B94F8 800B88F8 2610FFFF */  addiu      $s0, $s0, -1
/* B94FC 800B88FC AFB0004C */  sw         $s0, 0x4c($sp)
/* B9500 800B8900 8FA50044 */  lw         $a1, 0x44($sp)
/* B9504 800B8904 03003825 */  or         $a3, $t8, $zero
/* B9508 800B8908 0C0267BB */  jal        func_80099EEC
/* B950C 800B890C 001837C3 */   sra       $a2, $t8, 0x1f
/* B9510 800B8910 8FA80054 */  lw         $t0, 0x54($sp)
/* B9514 800B8914 0060C825 */  or         $t9, $v1, $zero
/* B9518 800B8918 03B05821 */  addu       $t3, $sp, $s0
/* B951C 800B891C 03284821 */  addu       $t1, $t9, $t0
/* B9520 800B8920 912A0000 */  lbu        $t2, ($t1)
/* B9524 800B8924 A16A0058 */  sb         $t2, 0x58($t3)
.L800B8928:
/* B9528 800B8928 8FAC0050 */  lw         $t4, 0x50($sp)
/* B952C 800B892C 8FA40040 */  lw         $a0, 0x40($sp)
/* B9530 800B8930 8FA50044 */  lw         $a1, 0x44($sp)
/* B9534 800B8934 01803825 */  or         $a3, $t4, $zero
/* B9538 800B8938 0C0267CE */  jal        func_80099F38
/* B953C 800B893C 000C37C3 */   sra       $a2, $t4, 0x1f
/* B9540 800B8940 8FAD0070 */  lw         $t5, 0x70($sp)
/* B9544 800B8944 ADA20000 */  sw         $v0, ($t5)
/* B9548 800B8948 ADA30004 */  sw         $v1, 4($t5)
/* B954C 800B894C 8FAE0070 */  lw         $t6, 0x70($sp)
/* B9550 800B8950 8DD80000 */  lw         $t8, ($t6)
/* B9554 800B8954 8DD90004 */  lw         $t9, 4($t6)
/* B9558 800B8958 0700002E */  bltz       $t8, .L800B8A14
/* B955C 800B895C 00000000 */   nop
/* B9560 800B8960 1F000003 */  bgtz       $t8, .L800B8970
/* B9564 800B8964 00000000 */   nop
/* B9568 800B8968 1320002A */  beqz       $t9, .L800B8A14
/* B956C 800B896C 00000000 */   nop
.L800B8970:
/* B9570 800B8970 8FAF004C */  lw         $t7, 0x4c($sp)
/* B9574 800B8974 19E00027 */  blez       $t7, .L800B8A14
/* B9578 800B8978 00000000 */   nop
.L800B897C:
/* B957C 800B897C 8FA80070 */  lw         $t0, 0x70($sp)
/* B9580 800B8980 8FA90050 */  lw         $t1, 0x50($sp)
/* B9584 800B8984 27A40030 */  addiu      $a0, $sp, 0x30
/* B9588 800B8988 8D060000 */  lw         $a2, ($t0)
/* B958C 800B898C 8D070004 */  lw         $a3, 4($t0)
/* B9590 800B8990 01205825 */  or         $t3, $t1, $zero
/* B9594 800B8994 000957C3 */  sra        $t2, $t1, 0x1f
/* B9598 800B8998 AFAA0010 */  sw         $t2, 0x10($sp)
/* B959C 800B899C 0C02E19D */  jal        func_800B8674
/* B95A0 800B89A0 AFAB0014 */   sw        $t3, 0x14($sp)
/* B95A4 800B89A4 8FAE0070 */  lw         $t6, 0x70($sp)
/* B95A8 800B89A8 8FAC0030 */  lw         $t4, 0x30($sp)
/* B95AC 800B89AC 8FAD0034 */  lw         $t5, 0x34($sp)
/* B95B0 800B89B0 ADCC0000 */  sw         $t4, ($t6)
/* B95B4 800B89B4 ADCD0004 */  sw         $t5, 4($t6)
/* B95B8 800B89B8 8FB0004C */  lw         $s0, 0x4c($sp)
/* B95BC 800B89BC 8FB9003C */  lw         $t9, 0x3c($sp)
/* B95C0 800B89C0 8FA80054 */  lw         $t0, 0x54($sp)
/* B95C4 800B89C4 2610FFFF */  addiu      $s0, $s0, -1
/* B95C8 800B89C8 03207825 */  or         $t7, $t9, $zero
/* B95CC 800B89CC AFB0004C */  sw         $s0, 0x4c($sp)
/* B95D0 800B89D0 01E84821 */  addu       $t1, $t7, $t0
/* B95D4 800B89D4 912A0000 */  lbu        $t2, ($t1)
/* B95D8 800B89D8 03B05821 */  addu       $t3, $sp, $s0
/* B95DC 800B89DC 8FB80038 */  lw         $t8, 0x38($sp)
/* B95E0 800B89E0 A16A0058 */  sb         $t2, 0x58($t3)
/* B95E4 800B89E4 8FAC0070 */  lw         $t4, 0x70($sp)
/* B95E8 800B89E8 8D8E0000 */  lw         $t6, ($t4)
/* B95EC 800B89EC 8D8F0004 */  lw         $t7, 4($t4)
/* B95F0 800B89F0 05C00008 */  bltz       $t6, .L800B8A14
/* B95F4 800B89F4 00000000 */   nop
/* B95F8 800B89F8 1DC00003 */  bgtz       $t6, .L800B8A08
/* B95FC 800B89FC 00000000 */   nop
/* B9600 800B8A00 11E00004 */  beqz       $t7, .L800B8A14
/* B9604 800B8A04 00000000 */   nop
.L800B8A08:
/* B9608 800B8A08 8FAD004C */  lw         $t5, 0x4c($sp)
/* B960C 800B8A0C 1DA0FFDB */  bgtz       $t5, .L800B897C
/* B9610 800B8A10 00000000 */   nop
.L800B8A14:
/* B9614 800B8A14 8FB8004C */  lw         $t8, 0x4c($sp)
/* B9618 800B8A18 8FA90070 */  lw         $t1, 0x70($sp)
/* B961C 800B8A1C 24190018 */  addiu      $t9, $zero, 0x18
/* B9620 800B8A20 03384023 */  subu       $t0, $t9, $t8
/* B9624 800B8A24 AD280014 */  sw         $t0, 0x14($t1)
/* B9628 800B8A28 8FAA0070 */  lw         $t2, 0x70($sp)
/* B962C 800B8A2C 8FAB004C */  lw         $t3, 0x4c($sp)
/* B9630 800B8A30 27AC0058 */  addiu      $t4, $sp, 0x58
/* B9634 800B8A34 8D440008 */  lw         $a0, 8($t2)
/* B9638 800B8A38 8D460014 */  lw         $a2, 0x14($t2)
/* B963C 800B8A3C 0C02B415 */  jal        func_800AD054
/* B9640 800B8A40 016C2821 */   addu      $a1, $t3, $t4
/* B9644 800B8A44 8FAE0070 */  lw         $t6, 0x70($sp)
/* B9648 800B8A48 8DCF0014 */  lw         $t7, 0x14($t6)
/* B964C 800B8A4C 8DCD0024 */  lw         $t5, 0x24($t6)
/* B9650 800B8A50 01ED082A */  slt        $at, $t7, $t5
/* B9654 800B8A54 10200006 */  beqz       $at, .L800B8A70
/* B9658 800B8A58 00000000 */   nop
/* B965C 800B8A5C 8FB90070 */  lw         $t9, 0x70($sp)
/* B9660 800B8A60 8F380024 */  lw         $t8, 0x24($t9)
/* B9664 800B8A64 8F280014 */  lw         $t0, 0x14($t9)
/* B9668 800B8A68 03084823 */  subu       $t1, $t8, $t0
/* B966C 800B8A6C AF290010 */  sw         $t1, 0x10($t9)
.L800B8A70:
/* B9670 800B8A70 8FAB0070 */  lw         $t3, 0x70($sp)
/* B9674 800B8A74 8D6C0024 */  lw         $t4, 0x24($t3)
/* B9678 800B8A78 05810014 */  bgez       $t4, .L800B8ACC
/* B967C 800B8A7C 00000000 */   nop
/* B9680 800B8A80 8D6A0030 */  lw         $t2, 0x30($t3)
/* B9684 800B8A84 24010010 */  addiu      $at, $zero, 0x10
/* B9688 800B8A88 314E0014 */  andi       $t6, $t2, 0x14
/* B968C 800B8A8C 15C1000F */  bne        $t6, $at, .L800B8ACC
/* B9690 800B8A90 00000000 */   nop
/* B9694 800B8A94 8D6F0028 */  lw         $t7, 0x28($t3)
/* B9698 800B8A98 8D6D000C */  lw         $t5, 0xc($t3)
/* B969C 800B8A9C 8D680010 */  lw         $t0, 0x10($t3)
/* B96A0 800B8AA0 8D790014 */  lw         $t9, 0x14($t3)
/* B96A4 800B8AA4 01EDC023 */  subu       $t8, $t7, $t5
/* B96A8 800B8AA8 03084823 */  subu       $t1, $t8, $t0
/* B96AC 800B8AAC 01396023 */  subu       $t4, $t1, $t9
/* B96B0 800B8AB0 19800006 */  blez       $t4, .L800B8ACC
/* B96B4 800B8AB4 AFAC004C */   sw        $t4, 0x4c($sp)
/* B96B8 800B8AB8 8FAA0070 */  lw         $t2, 0x70($sp)
/* B96BC 800B8ABC 8FAF004C */  lw         $t7, 0x4c($sp)
/* B96C0 800B8AC0 8D4E0010 */  lw         $t6, 0x10($t2)
/* B96C4 800B8AC4 01CF6821 */  addu       $t5, $t6, $t7
/* B96C8 800B8AC8 AD4D0010 */  sw         $t5, 0x10($t2)
.L800B8ACC:
/* B96CC 800B8ACC 10000001 */  b          .L800B8AD4
/* B96D0 800B8AD0 00000000 */   nop
.L800B8AD4:
/* B96D4 800B8AD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B96D8 800B8AD8 8FB00020 */  lw         $s0, 0x20($sp)
/* B96DC 800B8ADC 27BD0070 */  addiu      $sp, $sp, 0x70
/* B96E0 800B8AE0 03E00008 */  jr         $ra
/* B96E4 800B8AE4 00000000 */   nop
/* B96E8 800B8AE8 00000000 */  nop
/* B96EC 800B8AEC 00000000 */  nop
