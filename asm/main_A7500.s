.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A6900
/* A7500 800A6900 27BDFF88 */  addiu      $sp, $sp, -0x78
/* A7504 800A6904 AFBF001C */  sw         $ra, 0x1c($sp)
/* A7508 800A6908 AFA40078 */  sw         $a0, 0x78($sp)
/* A750C 800A690C AFA5007C */  sw         $a1, 0x7c($sp)
/* A7510 800A6910 AFA60080 */  sw         $a2, 0x80($sp)
/* A7514 800A6914 AFA70084 */  sw         $a3, 0x84($sp)
/* A7518 800A6918 8FAE0088 */  lw         $t6, 0x88($sp)
/* A751C 800A691C AFAE0074 */  sw         $t6, 0x74($sp)
/* A7520 800A6920 8FAF0078 */  lw         $t7, 0x78($sp)
/* A7524 800A6924 AFAF0070 */  sw         $t7, 0x70($sp)
/* A7528 800A6928 8FB80070 */  lw         $t8, 0x70($sp)
/* A752C 800A692C 8F190000 */  lw         $t9, ($t8)
/* A7530 800A6930 AFB9006C */  sw         $t9, 0x6c($sp)
/* A7534 800A6934 AFA00050 */  sw         $zero, 0x50($sp)
/* A7538 800A6938 8FA8006C */  lw         $t0, 0x6c($sp)
/* A753C 800A693C 11000003 */  beqz       $t0, .L800A694C
/* A7540 800A6940 00000000 */   nop
/* A7544 800A6944 10000007 */  b          .L800A6964
/* A7548 800A6948 00000000 */   nop
.L800A694C:
/* A754C 800A694C 3C04800D */  lui        $a0, %hi(D_800D3380)
/* A7550 800A6950 3C05800D */  lui        $a1, %hi(D_800D3388)
/* A7554 800A6954 24A53388 */  addiu      $a1, $a1, %lo(D_800D3388)
/* A7558 800A6958 24843380 */  addiu      $a0, $a0, %lo(D_800D3380)
/* A755C 800A695C 0C02C480 */  jal        func_800B1200
/* A7560 800A6960 2406004B */   addiu     $a2, $zero, 0x4b
.L800A6964:
/* A7564 800A6964 8FAA0088 */  lw         $t2, 0x88($sp)
/* A7568 800A6968 8FA9006C */  lw         $t1, 0x6c($sp)
/* A756C 800A696C 8FA5007C */  lw         $a1, 0x7c($sp)
/* A7570 800A6970 AFAA0010 */  sw         $t2, 0x10($sp)
/* A7574 800A6974 8D390004 */  lw         $t9, 4($t1)
/* A7578 800A6978 8FA60080 */  lw         $a2, 0x80($sp)
/* A757C 800A697C 8FA70084 */  lw         $a3, 0x84($sp)
/* A7580 800A6980 0320F809 */  jalr       $t9
/* A7584 800A6984 01202025 */   or        $a0, $t1, $zero
/* A7588 800A6988 AFA20074 */  sw         $v0, 0x74($sp)
/* A758C 800A698C 240B06C0 */  addiu      $t3, $zero, 0x6c0
/* A7590 800A6990 A7AB0064 */  sh         $t3, 0x64($sp)
/* A7594 800A6994 240C0800 */  addiu      $t4, $zero, 0x800
/* A7598 800A6998 A7AC0062 */  sh         $t4, 0x62($sp)
/* A759C 800A699C A7A00068 */  sh         $zero, 0x68($sp)
/* A75A0 800A69A0 240D0140 */  addiu      $t5, $zero, 0x140
/* A75A4 800A69A4 A7AD0066 */  sh         $t5, 0x66($sp)
/* A75A8 800A69A8 8FAE0074 */  lw         $t6, 0x74($sp)
/* A75AC 800A69AC 25CF0008 */  addiu      $t7, $t6, 8
/* A75B0 800A69B0 AFAF0074 */  sw         $t7, 0x74($sp)
/* A75B4 800A69B4 AFAE0044 */  sw         $t6, 0x44($sp)
/* A75B8 800A69B8 8FA80044 */  lw         $t0, 0x44($sp)
/* A75BC 800A69BC 3C180800 */  lui        $t8, 0x800
/* A75C0 800A69C0 AD180000 */  sw         $t8, ($t0)
/* A75C4 800A69C4 8FAA0080 */  lw         $t2, 0x80($sp)
/* A75C8 800A69C8 8FAB0044 */  lw         $t3, 0x44($sp)
/* A75CC 800A69CC 000A4840 */  sll        $t1, $t2, 1
/* A75D0 800A69D0 3139FFFF */  andi       $t9, $t1, 0xffff
/* A75D4 800A69D4 AD790004 */  sw         $t9, 4($t3)
/* A75D8 800A69D8 8FAC0074 */  lw         $t4, 0x74($sp)
/* A75DC 800A69DC 258D0008 */  addiu      $t5, $t4, 8
/* A75E0 800A69E0 AFAD0074 */  sw         $t5, 0x74($sp)
/* A75E4 800A69E4 AFAC0040 */  sw         $t4, 0x40($sp)
/* A75E8 800A69E8 8FAF0040 */  lw         $t7, 0x40($sp)
/* A75EC 800A69EC 3C0E0C00 */  lui        $t6, 0xc00
/* A75F0 800A69F0 35CEDA83 */  ori        $t6, $t6, 0xda83
/* A75F4 800A69F4 ADEE0000 */  sw         $t6, ($t7)
/* A75F8 800A69F8 87B80064 */  lh         $t8, 0x64($sp)
/* A75FC 800A69FC 8FA90040 */  lw         $t1, 0x40($sp)
/* A7600 800A6A00 3C0106C0 */  lui        $at, 0x6c0
/* A7604 800A6A04 3308FFFF */  andi       $t0, $t8, 0xffff
/* A7608 800A6A08 01015025 */  or         $t2, $t0, $at
/* A760C 800A6A0C AD2A0004 */  sw         $t2, 4($t1)
/* A7610 800A6A10 8FB90074 */  lw         $t9, 0x74($sp)
/* A7614 800A6A14 272B0008 */  addiu      $t3, $t9, 8
/* A7618 800A6A18 AFAB0074 */  sw         $t3, 0x74($sp)
/* A761C 800A6A1C AFB9003C */  sw         $t9, 0x3c($sp)
/* A7620 800A6A20 8FAD003C */  lw         $t5, 0x3c($sp)
/* A7624 800A6A24 3C0C0C00 */  lui        $t4, 0xc00
/* A7628 800A6A28 358C5A82 */  ori        $t4, $t4, 0x5a82
/* A762C 800A6A2C ADAC0000 */  sw         $t4, ($t5)
/* A7630 800A6A30 87AE0064 */  lh         $t6, 0x64($sp)
/* A7634 800A6A34 8FA8003C */  lw         $t0, 0x3c($sp)
/* A7638 800A6A38 3C010800 */  lui        $at, 0x800
/* A763C 800A6A3C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* A7640 800A6A40 01E1C025 */  or         $t8, $t7, $at
/* A7644 800A6A44 AD180004 */  sw         $t8, 4($t0)
/* A7648 800A6A48 8FAA0070 */  lw         $t2, 0x70($sp)
/* A764C 800A6A4C 8FA90074 */  lw         $t1, 0x74($sp)
/* A7650 800A6A50 87A60064 */  lh         $a2, 0x64($sp)
/* A7654 800A6A54 8D450018 */  lw         $a1, 0x18($t2)
/* A7658 800A6A58 8FA70080 */  lw         $a3, 0x80($sp)
/* A765C 800A6A5C 01402025 */  or         $a0, $t2, $zero
/* A7660 800A6A60 0C029DC7 */  jal        func_800A771C
/* A7664 800A6A64 AFA90010 */   sw        $t1, 0x10($sp)
/* A7668 800A6A68 AFA20074 */  sw         $v0, 0x74($sp)
/* A766C 800A6A6C 8FB90074 */  lw         $t9, 0x74($sp)
/* A7670 800A6A70 272B0008 */  addiu      $t3, $t9, 8
/* A7674 800A6A74 AFAB0074 */  sw         $t3, 0x74($sp)
/* A7678 800A6A78 AFB90038 */  sw         $t9, 0x38($sp)
/* A767C 800A6A7C 87AC0062 */  lh         $t4, 0x62($sp)
/* A7680 800A6A80 3C0100FF */  lui        $at, 0xff
/* A7684 800A6A84 3421FFFF */  ori        $at, $at, 0xffff
/* A7688 800A6A88 8FAF0038 */  lw         $t7, 0x38($sp)
/* A768C 800A6A8C 01816824 */  and        $t5, $t4, $at
/* A7690 800A6A90 3C010200 */  lui        $at, 0x200
/* A7694 800A6A94 01A17025 */  or         $t6, $t5, $at
/* A7698 800A6A98 ADEE0000 */  sw         $t6, ($t7)
/* A769C 800A6A9C 8FB80080 */  lw         $t8, 0x80($sp)
/* A76A0 800A6AA0 8FAA0038 */  lw         $t2, 0x38($sp)
/* A76A4 800A6AA4 00184040 */  sll        $t0, $t8, 1
/* A76A8 800A6AA8 AD480004 */  sw         $t0, 4($t2)
/* A76AC 800A6AAC 8FA90070 */  lw         $t1, 0x70($sp)
/* A76B0 800A6AB0 A7A0006A */  sh         $zero, 0x6a($sp)
/* A76B4 800A6AB4 91390024 */  lbu        $t9, 0x24($t1)
/* A76B8 800A6AB8 1B2000B9 */  blez       $t9, .L800A6DA0
/* A76BC 800A6ABC 00000000 */   nop
.L800A6AC0:
/* A76C0 800A6AC0 8FAB0070 */  lw         $t3, 0x70($sp)
/* A76C4 800A6AC4 87AD006A */  lh         $t5, 0x6a($sp)
/* A76C8 800A6AC8 8D6C0020 */  lw         $t4, 0x20($t3)
/* A76CC 800A6ACC 000D7080 */  sll        $t6, $t5, 2
/* A76D0 800A6AD0 01CD7021 */  addu       $t6, $t6, $t5
/* A76D4 800A6AD4 000E70C0 */  sll        $t6, $t6, 3
/* A76D8 800A6AD8 018E7821 */  addu       $t7, $t4, $t6
/* A76DC 800A6ADC AFAF004C */  sw         $t7, 0x4c($sp)
/* A76E0 800A6AE0 8FAA004C */  lw         $t2, 0x4c($sp)
/* A76E4 800A6AE4 8FB80070 */  lw         $t8, 0x70($sp)
/* A76E8 800A6AE8 8D490000 */  lw         $t1, ($t2)
/* A76EC 800A6AEC 8F080018 */  lw         $t0, 0x18($t8)
/* A76F0 800A6AF0 0009C823 */  negu       $t9, $t1
/* A76F4 800A6AF4 00195840 */  sll        $t3, $t9, 1
/* A76F8 800A6AF8 010B6821 */  addu       $t5, $t0, $t3
/* A76FC 800A6AFC AFAD005C */  sw         $t5, 0x5c($sp)
/* A7700 800A6B00 8FAF004C */  lw         $t7, 0x4c($sp)
/* A7704 800A6B04 8FAC0070 */  lw         $t4, 0x70($sp)
/* A7708 800A6B08 8DF80004 */  lw         $t8, 4($t7)
/* A770C 800A6B0C 8D8E0018 */  lw         $t6, 0x18($t4)
/* A7710 800A6B10 00185023 */  negu       $t2, $t8
/* A7714 800A6B14 000A4840 */  sll        $t1, $t2, 1
/* A7718 800A6B18 01C9C821 */  addu       $t9, $t6, $t1
/* A771C 800A6B1C AFB90058 */  sw         $t9, 0x58($sp)
/* A7720 800A6B20 8FA8005C */  lw         $t0, 0x5c($sp)
/* A7724 800A6B24 8FAB0050 */  lw         $t3, 0x50($sp)
/* A7728 800A6B28 150B0009 */  bne        $t0, $t3, .L800A6B50
/* A772C 800A6B2C 00000000 */   nop
/* A7730 800A6B30 87AD0066 */  lh         $t5, 0x66($sp)
/* A7734 800A6B34 A7AD0036 */  sh         $t5, 0x36($sp)
/* A7738 800A6B38 87AC0068 */  lh         $t4, 0x68($sp)
/* A773C 800A6B3C A7AC0066 */  sh         $t4, 0x66($sp)
/* A7740 800A6B40 87AF0036 */  lh         $t7, 0x36($sp)
/* A7744 800A6B44 A7AF0068 */  sh         $t7, 0x68($sp)
/* A7748 800A6B48 10000009 */  b          .L800A6B70
/* A774C 800A6B4C 00000000 */   nop
.L800A6B50:
/* A7750 800A6B50 8FB80074 */  lw         $t8, 0x74($sp)
/* A7754 800A6B54 8FA40070 */  lw         $a0, 0x70($sp)
/* A7758 800A6B58 8FA5005C */  lw         $a1, 0x5c($sp)
/* A775C 800A6B5C 87A60068 */  lh         $a2, 0x68($sp)
/* A7760 800A6B60 8FA70080 */  lw         $a3, 0x80($sp)
/* A7764 800A6B64 0C029D24 */  jal        func_800A7490
/* A7768 800A6B68 AFB80010 */   sw        $t8, 0x10($sp)
/* A776C 800A6B6C AFA20074 */  sw         $v0, 0x74($sp)
.L800A6B70:
/* A7770 800A6B70 8FAA0074 */  lw         $t2, 0x74($sp)
/* A7774 800A6B74 8FA40070 */  lw         $a0, 0x70($sp)
/* A7778 800A6B78 8FA5004C */  lw         $a1, 0x4c($sp)
/* A777C 800A6B7C 87A60066 */  lh         $a2, 0x66($sp)
/* A7780 800A6B80 8FA70080 */  lw         $a3, 0x80($sp)
/* A7784 800A6B84 0C029C65 */  jal        func_800A7194
/* A7788 800A6B88 AFAA0010 */   sw        $t2, 0x10($sp)
/* A778C 800A6B8C AFA20074 */  sw         $v0, 0x74($sp)
/* A7790 800A6B90 8FAE004C */  lw         $t6, 0x4c($sp)
/* A7794 800A6B94 85C90008 */  lh         $t1, 8($t6)
/* A7798 800A6B98 11200023 */  beqz       $t1, .L800A6C28
/* A779C 800A6B9C 00000000 */   nop
/* A77A0 800A6BA0 8FB90074 */  lw         $t9, 0x74($sp)
/* A77A4 800A6BA4 27280008 */  addiu      $t0, $t9, 8
/* A77A8 800A6BA8 AFA80074 */  sw         $t0, 0x74($sp)
/* A77AC 800A6BAC AFB90030 */  sw         $t9, 0x30($sp)
/* A77B0 800A6BB0 8FAB004C */  lw         $t3, 0x4c($sp)
/* A77B4 800A6BB4 8FB80030 */  lw         $t8, 0x30($sp)
/* A77B8 800A6BB8 3C010C00 */  lui        $at, 0xc00
/* A77BC 800A6BBC 956D0008 */  lhu        $t5, 8($t3)
/* A77C0 800A6BC0 31ACFFFF */  andi       $t4, $t5, 0xffff
/* A77C4 800A6BC4 01817825 */  or         $t7, $t4, $at
/* A77C8 800A6BC8 AF0F0000 */  sw         $t7, ($t8)
/* A77CC 800A6BCC 87AA0068 */  lh         $t2, 0x68($sp)
/* A77D0 800A6BD0 87B90066 */  lh         $t9, 0x66($sp)
/* A77D4 800A6BD4 8FAD0030 */  lw         $t5, 0x30($sp)
/* A77D8 800A6BD8 314EFFFF */  andi       $t6, $t2, 0xffff
/* A77DC 800A6BDC 000E4C00 */  sll        $t1, $t6, 0x10
/* A77E0 800A6BE0 3328FFFF */  andi       $t0, $t9, 0xffff
/* A77E4 800A6BE4 01285825 */  or         $t3, $t1, $t0
/* A77E8 800A6BE8 ADAB0004 */  sw         $t3, 4($t5)
/* A77EC 800A6BEC 8FAC004C */  lw         $t4, 0x4c($sp)
/* A77F0 800A6BF0 8D8F0024 */  lw         $t7, 0x24($t4)
/* A77F4 800A6BF4 15E0000C */  bnez       $t7, .L800A6C28
/* A77F8 800A6BF8 00000000 */   nop
/* A77FC 800A6BFC 8D980020 */  lw         $t8, 0x20($t4)
/* A7800 800A6C00 17000009 */  bnez       $t8, .L800A6C28
/* A7804 800A6C04 00000000 */   nop
/* A7808 800A6C08 8FAA0074 */  lw         $t2, 0x74($sp)
/* A780C 800A6C0C 8FA40070 */  lw         $a0, 0x70($sp)
/* A7810 800A6C10 8FA50058 */  lw         $a1, 0x58($sp)
/* A7814 800A6C14 87A60066 */  lh         $a2, 0x66($sp)
/* A7818 800A6C18 8FA70080 */  lw         $a3, 0x80($sp)
/* A781C 800A6C1C 0C029DC7 */  jal        func_800A771C
/* A7820 800A6C20 AFAA0010 */   sw        $t2, 0x10($sp)
/* A7824 800A6C24 AFA20074 */  sw         $v0, 0x74($sp)
.L800A6C28:
/* A7828 800A6C28 8FAE004C */  lw         $t6, 0x4c($sp)
/* A782C 800A6C2C 85D9000A */  lh         $t9, 0xa($t6)
/* A7830 800A6C30 1320001C */  beqz       $t9, .L800A6CA4
/* A7834 800A6C34 00000000 */   nop
/* A7838 800A6C38 8FA90074 */  lw         $t1, 0x74($sp)
/* A783C 800A6C3C 25280008 */  addiu      $t0, $t1, 8
/* A7840 800A6C40 AFA80074 */  sw         $t0, 0x74($sp)
/* A7844 800A6C44 AFA9002C */  sw         $t1, 0x2c($sp)
/* A7848 800A6C48 8FAB004C */  lw         $t3, 0x4c($sp)
/* A784C 800A6C4C 8FB8002C */  lw         $t8, 0x2c($sp)
/* A7850 800A6C50 3C010C00 */  lui        $at, 0xc00
/* A7854 800A6C54 956D000A */  lhu        $t5, 0xa($t3)
/* A7858 800A6C58 31AFFFFF */  andi       $t7, $t5, 0xffff
/* A785C 800A6C5C 01E16025 */  or         $t4, $t7, $at
/* A7860 800A6C60 AF0C0000 */  sw         $t4, ($t8)
/* A7864 800A6C64 87AA0066 */  lh         $t2, 0x66($sp)
/* A7868 800A6C68 87A90068 */  lh         $t1, 0x68($sp)
/* A786C 800A6C6C 8FAD002C */  lw         $t5, 0x2c($sp)
/* A7870 800A6C70 314EFFFF */  andi       $t6, $t2, 0xffff
/* A7874 800A6C74 000ECC00 */  sll        $t9, $t6, 0x10
/* A7878 800A6C78 3128FFFF */  andi       $t0, $t1, 0xffff
/* A787C 800A6C7C 03285825 */  or         $t3, $t9, $t0
/* A7880 800A6C80 ADAB0004 */  sw         $t3, 4($t5)
/* A7884 800A6C84 8FAF0074 */  lw         $t7, 0x74($sp)
/* A7888 800A6C88 8FA40070 */  lw         $a0, 0x70($sp)
/* A788C 800A6C8C 8FA5005C */  lw         $a1, 0x5c($sp)
/* A7890 800A6C90 87A60068 */  lh         $a2, 0x68($sp)
/* A7894 800A6C94 8FA70080 */  lw         $a3, 0x80($sp)
/* A7898 800A6C98 0C029DC7 */  jal        func_800A771C
/* A789C 800A6C9C AFAF0010 */   sw        $t7, 0x10($sp)
/* A78A0 800A6CA0 AFA20074 */  sw         $v0, 0x74($sp)
.L800A6CA4:
/* A78A4 800A6CA4 8FAC004C */  lw         $t4, 0x4c($sp)
/* A78A8 800A6CA8 8D980020 */  lw         $t8, 0x20($t4)
/* A78AC 800A6CAC 13000008 */  beqz       $t8, .L800A6CD0
/* A78B0 800A6CB0 00000000 */   nop
/* A78B4 800A6CB4 8FAA004C */  lw         $t2, 0x4c($sp)
/* A78B8 800A6CB8 87A50066 */  lh         $a1, 0x66($sp)
/* A78BC 800A6CBC 8FA60080 */  lw         $a2, 0x80($sp)
/* A78C0 800A6CC0 8FA70074 */  lw         $a3, 0x74($sp)
/* A78C4 800A6CC4 0C029E60 */  jal        func_800A7980
/* A78C8 800A6CC8 8D440020 */   lw        $a0, 0x20($t2)
/* A78CC 800A6CCC AFA20074 */  sw         $v0, 0x74($sp)
.L800A6CD0:
/* A78D0 800A6CD0 8FAE004C */  lw         $t6, 0x4c($sp)
/* A78D4 800A6CD4 8DC90024 */  lw         $t1, 0x24($t6)
/* A78D8 800A6CD8 15200009 */  bnez       $t1, .L800A6D00
/* A78DC 800A6CDC 00000000 */   nop
/* A78E0 800A6CE0 8FB90074 */  lw         $t9, 0x74($sp)
/* A78E4 800A6CE4 8FA40070 */  lw         $a0, 0x70($sp)
/* A78E8 800A6CE8 8FA50058 */  lw         $a1, 0x58($sp)
/* A78EC 800A6CEC 87A60066 */  lh         $a2, 0x66($sp)
/* A78F0 800A6CF0 8FA70080 */  lw         $a3, 0x80($sp)
/* A78F4 800A6CF4 0C029DC7 */  jal        func_800A771C
/* A78F8 800A6CF8 AFB90010 */   sw        $t9, 0x10($sp)
/* A78FC 800A6CFC AFA20074 */  sw         $v0, 0x74($sp)
.L800A6D00:
/* A7900 800A6D00 8FA8004C */  lw         $t0, 0x4c($sp)
/* A7904 800A6D04 850B000C */  lh         $t3, 0xc($t0)
/* A7908 800A6D08 11600014 */  beqz       $t3, .L800A6D5C
/* A790C 800A6D0C 00000000 */   nop
/* A7910 800A6D10 8FAD0074 */  lw         $t5, 0x74($sp)
/* A7914 800A6D14 25AF0008 */  addiu      $t7, $t5, 8
/* A7918 800A6D18 AFAF0074 */  sw         $t7, 0x74($sp)
/* A791C 800A6D1C AFAD0028 */  sw         $t5, 0x28($sp)
/* A7920 800A6D20 8FAC004C */  lw         $t4, 0x4c($sp)
/* A7924 800A6D24 8FA90028 */  lw         $t1, 0x28($sp)
/* A7928 800A6D28 3C010C00 */  lui        $at, 0xc00
/* A792C 800A6D2C 9598000C */  lhu        $t8, 0xc($t4)
/* A7930 800A6D30 330AFFFF */  andi       $t2, $t8, 0xffff
/* A7934 800A6D34 01417025 */  or         $t6, $t2, $at
/* A7938 800A6D38 AD2E0000 */  sw         $t6, ($t1)
/* A793C 800A6D3C 87B90066 */  lh         $t9, 0x66($sp)
/* A7940 800A6D40 87AD0062 */  lh         $t5, 0x62($sp)
/* A7944 800A6D44 8FB80028 */  lw         $t8, 0x28($sp)
/* A7948 800A6D48 3328FFFF */  andi       $t0, $t9, 0xffff
/* A794C 800A6D4C 00085C00 */  sll        $t3, $t0, 0x10
/* A7950 800A6D50 31AFFFFF */  andi       $t7, $t5, 0xffff
/* A7954 800A6D54 016F6025 */  or         $t4, $t3, $t7
/* A7958 800A6D58 AF0C0004 */  sw         $t4, 4($t8)
.L800A6D5C:
/* A795C 800A6D5C 8FA9004C */  lw         $t1, 0x4c($sp)
/* A7960 800A6D60 8FAA0070 */  lw         $t2, 0x70($sp)
/* A7964 800A6D64 8D390004 */  lw         $t9, 4($t1)
/* A7968 800A6D68 8D4E0018 */  lw         $t6, 0x18($t2)
/* A796C 800A6D6C 00194040 */  sll        $t0, $t9, 1
/* A7970 800A6D70 01C86821 */  addu       $t5, $t6, $t0
/* A7974 800A6D74 AFAD0050 */  sw         $t5, 0x50($sp)
/* A7978 800A6D78 87AB006A */  lh         $t3, 0x6a($sp)
/* A797C 800A6D7C 8FAA0070 */  lw         $t2, 0x70($sp)
/* A7980 800A6D80 256F0001 */  addiu      $t7, $t3, 1
/* A7984 800A6D84 A7AF006A */  sh         $t7, 0x6a($sp)
/* A7988 800A6D88 91490024 */  lbu        $t1, 0x24($t2)
/* A798C 800A6D8C 000F6400 */  sll        $t4, $t7, 0x10
/* A7990 800A6D90 000CC403 */  sra        $t8, $t4, 0x10
/* A7994 800A6D94 0309082A */  slt        $at, $t8, $t1
/* A7998 800A6D98 1420FF49 */  bnez       $at, .L800A6AC0
/* A799C 800A6D9C 00000000 */   nop
.L800A6DA0:
/* A79A0 800A6DA0 8FB90070 */  lw         $t9, 0x70($sp)
/* A79A4 800A6DA4 8FA80080 */  lw         $t0, 0x80($sp)
/* A79A8 800A6DA8 8F2E0018 */  lw         $t6, 0x18($t9)
/* A79AC 800A6DAC 00086840 */  sll        $t5, $t0, 1
/* A79B0 800A6DB0 01CD5821 */  addu       $t3, $t6, $t5
/* A79B4 800A6DB4 AF2B0018 */  sw         $t3, 0x18($t9)
/* A79B8 800A6DB8 8FAF0070 */  lw         $t7, 0x70($sp)
/* A79BC 800A6DBC 8DF8001C */  lw         $t8, 0x1c($t7)
/* A79C0 800A6DC0 8DEA0014 */  lw         $t2, 0x14($t7)
/* A79C4 800A6DC4 8DEC0018 */  lw         $t4, 0x18($t7)
/* A79C8 800A6DC8 00184840 */  sll        $t1, $t8, 1
/* A79CC 800A6DCC 01494021 */  addu       $t0, $t2, $t1
/* A79D0 800A6DD0 010C082B */  sltu       $at, $t0, $t4
/* A79D4 800A6DD4 10200007 */  beqz       $at, .L800A6DF4
/* A79D8 800A6DD8 00000000 */   nop
/* A79DC 800A6DDC 8FAE0070 */  lw         $t6, 0x70($sp)
/* A79E0 800A6DE0 8DCB001C */  lw         $t3, 0x1c($t6)
/* A79E4 800A6DE4 8DCD0018 */  lw         $t5, 0x18($t6)
/* A79E8 800A6DE8 000BC840 */  sll        $t9, $t3, 1
/* A79EC 800A6DEC 01B97823 */  subu       $t7, $t5, $t9
/* A79F0 800A6DF0 ADCF0018 */  sw         $t7, 0x18($t6)
.L800A6DF4:
/* A79F4 800A6DF4 8FB80074 */  lw         $t8, 0x74($sp)
/* A79F8 800A6DF8 270A0008 */  addiu      $t2, $t8, 8
/* A79FC 800A6DFC AFAA0074 */  sw         $t2, 0x74($sp)
/* A7A00 800A6E00 AFB80024 */  sw         $t8, 0x24($sp)
/* A7A04 800A6E04 87A90062 */  lh         $t1, 0x62($sp)
/* A7A08 800A6E08 3C0100FF */  lui        $at, 0xff
/* A7A0C 800A6E0C 3421FFFF */  ori        $at, $at, 0xffff
/* A7A10 800A6E10 8FAB0024 */  lw         $t3, 0x24($sp)
/* A7A14 800A6E14 01216024 */  and        $t4, $t1, $at
/* A7A18 800A6E18 3C010A00 */  lui        $at, 0xa00
/* A7A1C 800A6E1C 01814025 */  or         $t0, $t4, $at
/* A7A20 800A6E20 AD680000 */  sw         $t0, ($t3)
/* A7A24 800A6E24 8FAD0080 */  lw         $t5, 0x80($sp)
/* A7A28 800A6E28 8FB80024 */  lw         $t8, 0x24($sp)
/* A7A2C 800A6E2C 3C0106C0 */  lui        $at, 0x6c0
/* A7A30 800A6E30 000DC840 */  sll        $t9, $t5, 1
/* A7A34 800A6E34 332FFFFF */  andi       $t7, $t9, 0xffff
/* A7A38 800A6E38 01E17025 */  or         $t6, $t7, $at
/* A7A3C 800A6E3C AF0E0004 */  sw         $t6, 4($t8)
/* A7A40 800A6E40 10000003 */  b          .L800A6E50
/* A7A44 800A6E44 8FA20074 */   lw        $v0, 0x74($sp)
/* A7A48 800A6E48 10000001 */  b          .L800A6E50
/* A7A4C 800A6E4C 00000000 */   nop
.L800A6E50:
/* A7A50 800A6E50 8FBF001C */  lw         $ra, 0x1c($sp)
/* A7A54 800A6E54 27BD0078 */  addiu      $sp, $sp, 0x78
/* A7A58 800A6E58 03E00008 */  jr         $ra
/* A7A5C 800A6E5C 00000000 */   nop

glabel func_800A6E60
/* A7A60 800A6E60 27BDFFF8 */  addiu      $sp, $sp, -8
/* A7A64 800A6E64 24010001 */  addiu      $at, $zero, 1
/* A7A68 800A6E68 14A10004 */  bne        $a1, $at, .L800A6E7C
/* A7A6C 800A6E6C 00000000 */   nop
/* A7A70 800A6E70 AFA40004 */  sw         $a0, 4($sp)
/* A7A74 800A6E74 8FAE0004 */  lw         $t6, 4($sp)
/* A7A78 800A6E78 ADC60000 */  sw         $a2, ($t6)
.L800A6E7C:
/* A7A7C 800A6E7C 10000003 */  b          .L800A6E8C
/* A7A80 800A6E80 00001025 */   or        $v0, $zero, $zero
/* A7A84 800A6E84 10000001 */  b          .L800A6E8C
/* A7A88 800A6E88 00000000 */   nop
.L800A6E8C:
/* A7A8C 800A6E8C 03E00008 */  jr         $ra
/* A7A90 800A6E90 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A6E94
/* A7A94 800A6E94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A7A98 800A6E98 AFBF0014 */  sw         $ra, 0x14($sp)
/* A7A9C 800A6E9C AFA40028 */  sw         $a0, 0x28($sp)
/* A7AA0 800A6EA0 AFA5002C */  sw         $a1, 0x2c($sp)
/* A7AA4 800A6EA4 AFA60030 */  sw         $a2, 0x30($sp)
/* A7AA8 800A6EA8 8FAE0028 */  lw         $t6, 0x28($sp)
/* A7AAC 800A6EAC AFAE0024 */  sw         $t6, 0x24($sp)
/* A7AB0 800A6EB0 8FAF002C */  lw         $t7, 0x2c($sp)
/* A7AB4 800A6EB4 25F8FFFE */  addiu      $t8, $t7, -2
/* A7AB8 800A6EB8 07010004 */  bgez       $t8, .L800A6ECC
/* A7ABC 800A6EBC 33190007 */   andi      $t9, $t8, 7
/* A7AC0 800A6EC0 13200002 */  beqz       $t9, .L800A6ECC
/* A7AC4 800A6EC4 00000000 */   nop
/* A7AC8 800A6EC8 2739FFF8 */  addiu      $t9, $t9, -8
.L800A6ECC:
/* A7ACC 800A6ECC AFB90020 */  sw         $t9, 0x20($sp)
/* A7AD0 800A6ED0 8FA8002C */  lw         $t0, 0x2c($sp)
/* A7AD4 800A6ED4 2509FFFE */  addiu      $t1, $t0, -2
/* A7AD8 800A6ED8 05210003 */  bgez       $t1, .L800A6EE8
/* A7ADC 800A6EDC 000950C3 */   sra       $t2, $t1, 3
/* A7AE0 800A6EE0 25210007 */  addiu      $at, $t1, 7
/* A7AE4 800A6EE4 000150C3 */  sra        $t2, $at, 3
.L800A6EE8:
/* A7AE8 800A6EE8 AFAA001C */  sw         $t2, 0x1c($sp)
/* A7AEC 800A6EEC 8FAB0030 */  lw         $t3, 0x30($sp)
/* A7AF0 800A6EF0 8D6C0000 */  lw         $t4, ($t3)
/* A7AF4 800A6EF4 AFAC0018 */  sw         $t4, 0x18($sp)
/* A7AF8 800A6EF8 8FAD0020 */  lw         $t5, 0x20($sp)
/* A7AFC 800A6EFC 2DA10008 */  sltiu      $at, $t5, 8
/* A7B00 800A6F00 1020009C */  beqz       $at, .L800A7174
/* A7B04 800A6F04 00000000 */   nop
/* A7B08 800A6F08 000D6880 */  sll        $t5, $t5, 2
/* A7B0C 800A6F0C 3C01800D */  lui        $at, %hi(D_800D339C)
/* A7B10 800A6F10 002D0821 */  addu       $at, $at, $t5
/* A7B14 800A6F14 8C2D339C */  lw         $t5, %lo(D_800D339C)($at)
/* A7B18 800A6F18 01A00008 */  jr         $t5
/* A7B1C 800A6F1C 00000000 */   nop
/* A7B20 800A6F20 8FB80024 */  lw         $t8, 0x24($sp)
/* A7B24 800A6F24 8FA8001C */  lw         $t0, 0x1c($sp)
/* A7B28 800A6F28 8FAE0018 */  lw         $t6, 0x18($sp)
/* A7B2C 800A6F2C 8F190020 */  lw         $t9, 0x20($t8)
/* A7B30 800A6F30 00084880 */  sll        $t1, $t0, 2
/* A7B34 800A6F34 01284821 */  addu       $t1, $t1, $t0
/* A7B38 800A6F38 000948C0 */  sll        $t1, $t1, 3
/* A7B3C 800A6F3C 2401FFF8 */  addiu      $at, $zero, -8
/* A7B40 800A6F40 01C17824 */  and        $t7, $t6, $at
/* A7B44 800A6F44 03295021 */  addu       $t2, $t9, $t1
/* A7B48 800A6F48 AD4F0000 */  sw         $t7, ($t2)
/* A7B4C 800A6F4C 10000089 */  b          .L800A7174
/* A7B50 800A6F50 00000000 */   nop
/* A7B54 800A6F54 8FAD0024 */  lw         $t5, 0x24($sp)
/* A7B58 800A6F58 8FB8001C */  lw         $t8, 0x1c($sp)
/* A7B5C 800A6F5C 8FAB0018 */  lw         $t3, 0x18($sp)
/* A7B60 800A6F60 8DAE0020 */  lw         $t6, 0x20($t5)
/* A7B64 800A6F64 00184080 */  sll        $t0, $t8, 2
/* A7B68 800A6F68 01184021 */  addu       $t0, $t0, $t8
/* A7B6C 800A6F6C 000840C0 */  sll        $t0, $t0, 3
/* A7B70 800A6F70 2401FFF8 */  addiu      $at, $zero, -8
/* A7B74 800A6F74 01616024 */  and        $t4, $t3, $at
/* A7B78 800A6F78 01C8C821 */  addu       $t9, $t6, $t0
/* A7B7C 800A6F7C AF2C0004 */  sw         $t4, 4($t9)
/* A7B80 800A6F80 1000007C */  b          .L800A7174
/* A7B84 800A6F84 00000000 */   nop
/* A7B88 800A6F88 8FAF0024 */  lw         $t7, 0x24($sp)
/* A7B8C 800A6F8C 8FAB001C */  lw         $t3, 0x1c($sp)
/* A7B90 800A6F90 8FA90018 */  lw         $t1, 0x18($sp)
/* A7B94 800A6F94 8DEA0020 */  lw         $t2, 0x20($t7)
/* A7B98 800A6F98 000B6880 */  sll        $t5, $t3, 2
/* A7B9C 800A6F9C 01AB6821 */  addu       $t5, $t5, $t3
/* A7BA0 800A6FA0 000D68C0 */  sll        $t5, $t5, 3
/* A7BA4 800A6FA4 014DC021 */  addu       $t8, $t2, $t5
/* A7BA8 800A6FA8 A7090008 */  sh         $t1, 8($t8)
/* A7BAC 800A6FAC 10000071 */  b          .L800A7174
/* A7BB0 800A6FB0 00000000 */   nop
/* A7BB4 800A6FB4 8FA80024 */  lw         $t0, 0x24($sp)
/* A7BB8 800A6FB8 8FB9001C */  lw         $t9, 0x1c($sp)
/* A7BBC 800A6FBC 8FAE0018 */  lw         $t6, 0x18($sp)
/* A7BC0 800A6FC0 8D0C0020 */  lw         $t4, 0x20($t0)
/* A7BC4 800A6FC4 00197880 */  sll        $t7, $t9, 2
/* A7BC8 800A6FC8 01F97821 */  addu       $t7, $t7, $t9
/* A7BCC 800A6FCC 000F78C0 */  sll        $t7, $t7, 3
/* A7BD0 800A6FD0 018F5821 */  addu       $t3, $t4, $t7
/* A7BD4 800A6FD4 A56E000A */  sh         $t6, 0xa($t3)
/* A7BD8 800A6FD8 10000066 */  b          .L800A7174
/* A7BDC 800A6FDC 00000000 */   nop
/* A7BE0 800A6FE0 8FAD0024 */  lw         $t5, 0x24($sp)
/* A7BE4 800A6FE4 8FB8001C */  lw         $t8, 0x1c($sp)
/* A7BE8 800A6FE8 8FAA0018 */  lw         $t2, 0x18($sp)
/* A7BEC 800A6FEC 8DA90020 */  lw         $t1, 0x20($t5)
/* A7BF0 800A6FF0 00184080 */  sll        $t0, $t8, 2
/* A7BF4 800A6FF4 01184021 */  addu       $t0, $t0, $t8
/* A7BF8 800A6FF8 000840C0 */  sll        $t0, $t0, 3
/* A7BFC 800A6FFC 0128C821 */  addu       $t9, $t1, $t0
/* A7C00 800A7000 A72A000C */  sh         $t2, 0xc($t9)
/* A7C04 800A7004 1000005B */  b          .L800A7174
/* A7C08 800A7008 00000000 */   nop
/* A7C0C 800A700C 8FAC0018 */  lw         $t4, 0x18($sp)
/* A7C10 800A7010 3C01447A */  lui        $at, 0x447a
/* A7C14 800A7014 44814000 */  mtc1       $at, $f8
/* A7C18 800A7018 448C2000 */  mtc1       $t4, $f4
/* A7C1C 800A701C 3C0F800D */  lui        $t7, %hi(D_800CC220)
/* A7C20 800A7020 8DEFC220 */  lw         $t7, %lo(D_800CC220)($t7)
/* A7C24 800A7024 468021A0 */  cvt.s.w    $f6, $f4
/* A7C28 800A7028 3C014000 */  lui        $at, 0x4000
/* A7C2C 800A702C 44819800 */  mtc1       $at, $f19
/* A7C30 800A7030 44809000 */  mtc1       $zero, $f18
/* A7C34 800A7034 8DEE0044 */  lw         $t6, 0x44($t7)
/* A7C38 800A7038 8FAB0024 */  lw         $t3, 0x24($sp)
/* A7C3C 800A703C 46083283 */  div.s      $f10, $f6, $f8
/* A7C40 800A7040 448E3000 */  mtc1       $t6, $f6
/* A7C44 800A7044 8FB8001C */  lw         $t8, 0x1c($sp)
/* A7C48 800A7048 8D6D0020 */  lw         $t5, 0x20($t3)
/* A7C4C 800A704C 46803221 */  cvt.d.w    $f8, $f6
/* A7C50 800A7050 00184880 */  sll        $t1, $t8, 2
/* A7C54 800A7054 01384821 */  addu       $t1, $t1, $t8
/* A7C58 800A7058 000948C0 */  sll        $t1, $t1, 3
/* A7C5C 800A705C 01A94021 */  addu       $t0, $t5, $t1
/* A7C60 800A7060 46005421 */  cvt.d.s    $f16, $f10
/* A7C64 800A7064 46328102 */  mul.d      $f4, $f16, $f18
/* A7C68 800A7068 46282283 */  div.d      $f10, $f4, $f8
/* A7C6C 800A706C 46205420 */  cvt.s.d    $f16, $f10
/* A7C70 800A7070 E5100010 */  swc1       $f16, 0x10($t0)
/* A7C74 800A7074 1000003F */  b          .L800A7174
/* A7C78 800A7078 00000000 */   nop
/* A7C7C 800A707C 8FAA0024 */  lw         $t2, 0x24($sp)
/* A7C80 800A7080 8FAC001C */  lw         $t4, 0x1c($sp)
/* A7C84 800A7084 8D590020 */  lw         $t9, 0x20($t2)
/* A7C88 800A7088 000C7880 */  sll        $t7, $t4, 2
/* A7C8C 800A708C 01EC7821 */  addu       $t7, $t7, $t4
/* A7C90 800A7090 000F78C0 */  sll        $t7, $t7, 3
/* A7C94 800A7094 032F7021 */  addu       $t6, $t9, $t7
/* A7C98 800A7098 8DCB0004 */  lw         $t3, 4($t6)
/* A7C9C 800A709C 8DD80000 */  lw         $t8, ($t6)
/* A7CA0 800A70A0 01786823 */  subu       $t5, $t3, $t8
/* A7CA4 800A70A4 448D9000 */  mtc1       $t5, $f18
/* A7CA8 800A70A8 05A10006 */  bgez       $t5, .L800A70C4
/* A7CAC 800A70AC 468091A1 */   cvt.d.w   $f6, $f18
/* A7CB0 800A70B0 3C0141F0 */  lui        $at, 0x41f0
/* A7CB4 800A70B4 44812800 */  mtc1       $at, $f5
/* A7CB8 800A70B8 44802000 */  mtc1       $zero, $f4
/* A7CBC 800A70BC 00000000 */  nop
/* A7CC0 800A70C0 46243180 */  add.d      $f6, $f6, $f4
.L800A70C4:
/* A7CC4 800A70C4 8FA90018 */  lw         $t1, 0x18($sp)
/* A7CC8 800A70C8 3C01800D */  lui        $at, %hi(D_800D33C0)
/* A7CCC 800A70CC D43233C0 */  ldc1       $f18, %lo(D_800D33C0)($at)
/* A7CD0 800A70D0 44894000 */  mtc1       $t1, $f8
/* A7CD4 800A70D4 00000000 */  nop
/* A7CD8 800A70D8 468042A0 */  cvt.s.w    $f10, $f8
/* A7CDC 800A70DC 46005421 */  cvt.d.s    $f16, $f10
/* A7CE0 800A70E0 46328103 */  div.d      $f4, $f16, $f18
/* A7CE4 800A70E4 46243202 */  mul.d      $f8, $f6, $f4
/* A7CE8 800A70E8 462042A0 */  cvt.s.d    $f10, $f8
/* A7CEC 800A70EC E5CA001C */  swc1       $f10, 0x1c($t6)
/* A7CF0 800A70F0 10000020 */  b          .L800A7174
/* A7CF4 800A70F4 00000000 */   nop
/* A7CF8 800A70F8 8FA80024 */  lw         $t0, 0x24($sp)
/* A7CFC 800A70FC 8FAC001C */  lw         $t4, 0x1c($sp)
/* A7D00 800A7100 8D0A0020 */  lw         $t2, 0x20($t0)
/* A7D04 800A7104 000CC880 */  sll        $t9, $t4, 2
/* A7D08 800A7108 032CC821 */  addu       $t9, $t9, $t4
/* A7D0C 800A710C 0019C8C0 */  sll        $t9, $t9, 3
/* A7D10 800A7110 01597821 */  addu       $t7, $t2, $t9
/* A7D14 800A7114 8DEB0020 */  lw         $t3, 0x20($t7)
/* A7D18 800A7118 11600014 */  beqz       $t3, .L800A716C
/* A7D1C 800A711C 00000000 */   nop
/* A7D20 800A7120 8FAD0024 */  lw         $t5, 0x24($sp)
/* A7D24 800A7124 8FAE001C */  lw         $t6, 0x1c($sp)
/* A7D28 800A7128 8FB80018 */  lw         $t8, 0x18($sp)
/* A7D2C 800A712C 8DA90020 */  lw         $t1, 0x20($t5)
/* A7D30 800A7130 000E4080 */  sll        $t0, $t6, 2
/* A7D34 800A7134 010E4021 */  addu       $t0, $t0, $t6
/* A7D38 800A7138 000840C0 */  sll        $t0, $t0, 3
/* A7D3C 800A713C 01286021 */  addu       $t4, $t1, $t0
/* A7D40 800A7140 8D8A0020 */  lw         $t2, 0x20($t4)
/* A7D44 800A7144 A5580000 */  sh         $t8, ($t2)
/* A7D48 800A7148 8FB90024 */  lw         $t9, 0x24($sp)
/* A7D4C 800A714C 8FAB001C */  lw         $t3, 0x1c($sp)
/* A7D50 800A7150 8F2F0020 */  lw         $t7, 0x20($t9)
/* A7D54 800A7154 000B6880 */  sll        $t5, $t3, 2
/* A7D58 800A7158 01AB6821 */  addu       $t5, $t5, $t3
/* A7D5C 800A715C 000D68C0 */  sll        $t5, $t5, 3
/* A7D60 800A7160 01ED7021 */  addu       $t6, $t7, $t5
/* A7D64 800A7164 0C02970C */  jal        func_800A5C30
/* A7D68 800A7168 8DC40020 */   lw        $a0, 0x20($t6)
.L800A716C:
/* A7D6C 800A716C 10000001 */  b          .L800A7174
/* A7D70 800A7170 00000000 */   nop
.L800A7174:
/* A7D74 800A7174 10000003 */  b          .L800A7184
/* A7D78 800A7178 00001025 */   or        $v0, $zero, $zero
/* A7D7C 800A717C 10000001 */  b          .L800A7184
/* A7D80 800A7180 00000000 */   nop
.L800A7184:
/* A7D84 800A7184 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7D88 800A7188 27BD0028 */  addiu      $sp, $sp, 0x28
/* A7D8C 800A718C 03E00008 */  jr         $ra
/* A7D90 800A7190 00000000 */   nop

glabel func_800A7194
/* A7D94 800A7194 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A7D98 800A7198 AFBF001C */  sw         $ra, 0x1c($sp)
/* A7D9C 800A719C AFA40050 */  sw         $a0, 0x50($sp)
/* A7DA0 800A71A0 AFA50054 */  sw         $a1, 0x54($sp)
/* A7DA4 800A71A4 AFA60058 */  sw         $a2, 0x58($sp)
/* A7DA8 800A71A8 AFA7005C */  sw         $a3, 0x5c($sp)
/* A7DAC 800A71AC 8FAE0060 */  lw         $t6, 0x60($sp)
/* A7DB0 800A71B0 AFAE004C */  sw         $t6, 0x4c($sp)
/* A7DB4 800A71B4 240F0280 */  addiu      $t7, $zero, 0x280
/* A7DB8 800A71B8 AFAF0040 */  sw         $t7, 0x40($sp)
/* A7DBC 800A71BC AFA0002C */  sw         $zero, 0x2c($sp)
/* A7DC0 800A71C0 8FB80054 */  lw         $t8, 0x54($sp)
/* A7DC4 800A71C4 8F190024 */  lw         $t9, 0x24($t8)
/* A7DC8 800A71C8 13200099 */  beqz       $t9, .L800A7430
/* A7DCC 800A71CC 00000000 */   nop
/* A7DD0 800A71D0 8FA80054 */  lw         $t0, 0x54($sp)
/* A7DD4 800A71D4 8D090004 */  lw         $t1, 4($t0)
/* A7DD8 800A71D8 8D0A0000 */  lw         $t2, ($t0)
/* A7DDC 800A71DC 012A5823 */  subu       $t3, $t1, $t2
/* A7DE0 800A71E0 AFAB0028 */  sw         $t3, 0x28($sp)
/* A7DE4 800A71E4 8FA40054 */  lw         $a0, 0x54($sp)
/* A7DE8 800A71E8 0C029EA6 */  jal        func_800A7A98
/* A7DEC 800A71EC 8FA5005C */   lw        $a1, 0x5c($sp)
/* A7DF0 800A71F0 E7A00030 */  swc1       $f0, 0x30($sp)
/* A7DF4 800A71F4 8FAC0028 */  lw         $t4, 0x28($sp)
/* A7DF8 800A71F8 C7A40030 */  lwc1       $f4, 0x30($sp)
/* A7DFC 800A71FC 448C3000 */  mtc1       $t4, $f6
/* A7E00 800A7200 00000000 */  nop
/* A7E04 800A7204 46803220 */  cvt.s.w    $f8, $f6
/* A7E08 800A7208 46082283 */  div.s      $f10, $f4, $f8
/* A7E0C 800A720C E7AA0030 */  swc1       $f10, 0x30($sp)
/* A7E10 800A7210 3C014700 */  lui        $at, 0x4700
/* A7E14 800A7214 44819000 */  mtc1       $at, $f18
/* A7E18 800A7218 C7B00030 */  lwc1       $f16, 0x30($sp)
/* A7E1C 800A721C 46128182 */  mul.s      $f6, $f16, $f18
/* A7E20 800A7220 4600310D */  trunc.w.s  $f4, $f6
/* A7E24 800A7224 440E2000 */  mfc1       $t6, $f4
/* A7E28 800A7228 00000000 */  nop
/* A7E2C 800A722C 448E4000 */  mtc1       $t6, $f8
/* A7E30 800A7230 00000000 */  nop
/* A7E34 800A7234 468042A0 */  cvt.s.w    $f10, $f8
/* A7E38 800A7238 E7AA0030 */  swc1       $f10, 0x30($sp)
/* A7E3C 800A723C 3C014700 */  lui        $at, 0x4700
/* A7E40 800A7240 44819000 */  mtc1       $at, $f18
/* A7E44 800A7244 C7B00030 */  lwc1       $f16, 0x30($sp)
/* A7E48 800A7248 46128183 */  div.s      $f6, $f16, $f18
/* A7E4C 800A724C E7A60030 */  swc1       $f6, 0x30($sp)
/* A7E50 800A7250 C7A80030 */  lwc1       $f8, 0x30($sp)
/* A7E54 800A7254 3C013FF0 */  lui        $at, 0x3ff0
/* A7E58 800A7258 44812800 */  mtc1       $at, $f5
/* A7E5C 800A725C 44802000 */  mtc1       $zero, $f4
/* A7E60 800A7260 460042A1 */  cvt.d.s    $f10, $f8
/* A7E64 800A7264 462A2401 */  sub.d      $f16, $f4, $f10
/* A7E68 800A7268 462084A0 */  cvt.s.d    $f18, $f16
/* A7E6C 800A726C E7B20034 */  swc1       $f18, 0x34($sp)
/* A7E70 800A7270 8FAF005C */  lw         $t7, 0x5c($sp)
/* A7E74 800A7274 C7A60034 */  lwc1       $f6, 0x34($sp)
/* A7E78 800A7278 8FB80054 */  lw         $t8, 0x54($sp)
/* A7E7C 800A727C 448F4000 */  mtc1       $t7, $f8
/* A7E80 800A7280 8F190024 */  lw         $t9, 0x24($t8)
/* A7E84 800A7284 46804120 */  cvt.s.w    $f4, $f8
/* A7E88 800A7288 C7300020 */  lwc1       $f16, 0x20($t9)
/* A7E8C 800A728C 46043282 */  mul.s      $f10, $f6, $f4
/* A7E90 800A7290 460A8480 */  add.s      $f18, $f16, $f10
/* A7E94 800A7294 E7B20038 */  swc1       $f18, 0x38($sp)
/* A7E98 800A7298 C7A80038 */  lwc1       $f8, 0x38($sp)
/* A7E9C 800A729C 4600418D */  trunc.w.s  $f6, $f8
/* A7EA0 800A72A0 44093000 */  mfc1       $t1, $f6
/* A7EA4 800A72A4 00000000 */  nop
/* A7EA8 800A72A8 AFA90044 */  sw         $t1, 0x44($sp)
/* A7EAC 800A72AC 8FAA0044 */  lw         $t2, 0x44($sp)
/* A7EB0 800A72B0 C7A40038 */  lwc1       $f4, 0x38($sp)
/* A7EB4 800A72B4 8FAB0054 */  lw         $t3, 0x54($sp)
/* A7EB8 800A72B8 448A8000 */  mtc1       $t2, $f16
/* A7EBC 800A72BC 8D6C0024 */  lw         $t4, 0x24($t3)
/* A7EC0 800A72C0 468082A0 */  cvt.s.w    $f10, $f16
/* A7EC4 800A72C4 460A2481 */  sub.s      $f18, $f4, $f10
/* A7EC8 800A72C8 E5920020 */  swc1       $f18, 0x20($t4)
/* A7ECC 800A72CC 8FAD0054 */  lw         $t5, 0x54($sp)
/* A7ED0 800A72D0 8FA90050 */  lw         $t1, 0x50($sp)
/* A7ED4 800A72D4 8DAE0004 */  lw         $t6, 4($t5)
/* A7ED8 800A72D8 8DAF0018 */  lw         $t7, 0x18($t5)
/* A7EDC 800A72DC 8D2A0018 */  lw         $t2, 0x18($t1)
/* A7EE0 800A72E0 01CFC023 */  subu       $t8, $t6, $t7
/* A7EE4 800A72E4 0018C823 */  negu       $t9, $t8
/* A7EE8 800A72E8 00194040 */  sll        $t0, $t9, 1
/* A7EEC 800A72EC 01485821 */  addu       $t3, $t2, $t0
/* A7EF0 800A72F0 AFAB003C */  sw         $t3, 0x3c($sp)
/* A7EF4 800A72F4 8FAC003C */  lw         $t4, 0x3c($sp)
/* A7EF8 800A72F8 318D0007 */  andi       $t5, $t4, 7
/* A7EFC 800A72FC 000D7043 */  sra        $t6, $t5, 1
/* A7F00 800A7300 AFAE002C */  sw         $t6, 0x2c($sp)
/* A7F04 800A7304 8FB8002C */  lw         $t8, 0x2c($sp)
/* A7F08 800A7308 8FAF003C */  lw         $t7, 0x3c($sp)
/* A7F0C 800A730C 8FA90044 */  lw         $t1, 0x44($sp)
/* A7F10 800A7310 8FAA004C */  lw         $t2, 0x4c($sp)
/* A7F14 800A7314 0018C840 */  sll        $t9, $t8, 1
/* A7F18 800A7318 8FA40050 */  lw         $a0, 0x50($sp)
/* A7F1C 800A731C 8FA60040 */  lw         $a2, 0x40($sp)
/* A7F20 800A7320 01F92823 */  subu       $a1, $t7, $t9
/* A7F24 800A7324 01383821 */  addu       $a3, $t1, $t8
/* A7F28 800A7328 0C029D24 */  jal        func_800A7490
/* A7F2C 800A732C AFAA0010 */   sw        $t2, 0x10($sp)
/* A7F30 800A7330 AFA2004C */  sw         $v0, 0x4c($sp)
/* A7F34 800A7334 3C014700 */  lui        $at, 0x4700
/* A7F38 800A7338 44813000 */  mtc1       $at, $f6
/* A7F3C 800A733C C7A80034 */  lwc1       $f8, 0x34($sp)
/* A7F40 800A7340 46064402 */  mul.s      $f16, $f8, $f6
/* A7F44 800A7344 4600810D */  trunc.w.s  $f4, $f16
/* A7F48 800A7348 440B2000 */  mfc1       $t3, $f4
/* A7F4C 800A734C 00000000 */  nop
/* A7F50 800A7350 AFAB0048 */  sw         $t3, 0x48($sp)
/* A7F54 800A7354 8FAC004C */  lw         $t4, 0x4c($sp)
/* A7F58 800A7358 258D0008 */  addiu      $t5, $t4, 8
/* A7F5C 800A735C AFAD004C */  sw         $t5, 0x4c($sp)
/* A7F60 800A7360 AFAC0024 */  sw         $t4, 0x24($sp)
/* A7F64 800A7364 8FAE002C */  lw         $t6, 0x2c($sp)
/* A7F68 800A7368 8FB90040 */  lw         $t9, 0x40($sp)
/* A7F6C 800A736C 8FA80024 */  lw         $t0, 0x24($sp)
/* A7F70 800A7370 000E7840 */  sll        $t7, $t6, 1
/* A7F74 800A7374 01F94821 */  addu       $t1, $t7, $t9
/* A7F78 800A7378 3138FFFF */  andi       $t8, $t1, 0xffff
/* A7F7C 800A737C 3C010800 */  lui        $at, 0x800
/* A7F80 800A7380 03015025 */  or         $t2, $t8, $at
/* A7F84 800A7384 AD0A0000 */  sw         $t2, ($t0)
/* A7F88 800A7388 8FAB0058 */  lw         $t3, 0x58($sp)
/* A7F8C 800A738C 8FAE005C */  lw         $t6, 0x5c($sp)
/* A7F90 800A7390 8FB80024 */  lw         $t8, 0x24($sp)
/* A7F94 800A7394 316CFFFF */  andi       $t4, $t3, 0xffff
/* A7F98 800A7398 000E7840 */  sll        $t7, $t6, 1
/* A7F9C 800A739C 31F9FFFF */  andi       $t9, $t7, 0xffff
/* A7FA0 800A73A0 000C6C00 */  sll        $t5, $t4, 0x10
/* A7FA4 800A73A4 01B94825 */  or         $t1, $t5, $t9
/* A7FA8 800A73A8 AF090004 */  sw         $t1, 4($t8)
/* A7FAC 800A73AC 8FAA004C */  lw         $t2, 0x4c($sp)
/* A7FB0 800A73B0 25480008 */  addiu      $t0, $t2, 8
/* A7FB4 800A73B4 AFA8004C */  sw         $t0, 0x4c($sp)
/* A7FB8 800A73B8 AFAA0020 */  sw         $t2, 0x20($sp)
/* A7FBC 800A73BC 8FAB0054 */  lw         $t3, 0x54($sp)
/* A7FC0 800A73C0 8FA90048 */  lw         $t1, 0x48($sp)
/* A7FC4 800A73C4 8FA80020 */  lw         $t0, 0x20($sp)
/* A7FC8 800A73C8 8D6C0024 */  lw         $t4, 0x24($t3)
/* A7FCC 800A73CC 3C010500 */  lui        $at, 0x500
/* A7FD0 800A73D0 3138FFFF */  andi       $t8, $t1, 0xffff
/* A7FD4 800A73D4 8D8E0024 */  lw         $t6, 0x24($t4)
/* A7FD8 800A73D8 31CF00FF */  andi       $t7, $t6, 0xff
/* A7FDC 800A73DC 000F6C00 */  sll        $t5, $t7, 0x10
/* A7FE0 800A73E0 01A1C825 */  or         $t9, $t5, $at
/* A7FE4 800A73E4 03385025 */  or         $t2, $t9, $t8
/* A7FE8 800A73E8 AD0A0000 */  sw         $t2, ($t0)
/* A7FEC 800A73EC 8FAB0054 */  lw         $t3, 0x54($sp)
/* A7FF0 800A73F0 8D6C0024 */  lw         $t4, 0x24($t3)
/* A7FF4 800A73F4 0C027C0C */  jal        func_8009F030
/* A7FF8 800A73F8 8D840014 */   lw        $a0, 0x14($t4)
/* A7FFC 800A73FC 8FAE0020 */  lw         $t6, 0x20($sp)
/* A8000 800A7400 ADC20004 */  sw         $v0, 4($t6)
/* A8004 800A7404 8FAF0054 */  lw         $t7, 0x54($sp)
/* A8008 800A7408 8DED0024 */  lw         $t5, 0x24($t7)
/* A800C 800A740C ADA00024 */  sw         $zero, 0x24($t5)
/* A8010 800A7410 8FAA0054 */  lw         $t2, 0x54($sp)
/* A8014 800A7414 8FA90044 */  lw         $t1, 0x44($sp)
/* A8018 800A7418 8FB9005C */  lw         $t9, 0x5c($sp)
/* A801C 800A741C 8D480018 */  lw         $t0, 0x18($t2)
/* A8020 800A7420 0139C023 */  subu       $t8, $t1, $t9
/* A8024 800A7424 01185821 */  addu       $t3, $t0, $t8
/* A8028 800A7428 10000011 */  b          .L800A7470
/* A802C 800A742C AD4B0018 */   sw        $t3, 0x18($t2)
.L800A7430:
/* A8030 800A7430 8FAF0054 */  lw         $t7, 0x54($sp)
/* A8034 800A7434 8FAC0050 */  lw         $t4, 0x50($sp)
/* A8038 800A7438 8DED0004 */  lw         $t5, 4($t7)
/* A803C 800A743C 8D8E0018 */  lw         $t6, 0x18($t4)
/* A8040 800A7440 000D4823 */  negu       $t1, $t5
/* A8044 800A7444 0009C840 */  sll        $t9, $t1, 1
/* A8048 800A7448 01D94021 */  addu       $t0, $t6, $t9
/* A804C 800A744C AFA8003C */  sw         $t0, 0x3c($sp)
/* A8050 800A7450 8FB8004C */  lw         $t8, 0x4c($sp)
/* A8054 800A7454 8FA40050 */  lw         $a0, 0x50($sp)
/* A8058 800A7458 8FA5003C */  lw         $a1, 0x3c($sp)
/* A805C 800A745C 8FA60058 */  lw         $a2, 0x58($sp)
/* A8060 800A7460 8FA7005C */  lw         $a3, 0x5c($sp)
/* A8064 800A7464 0C029D24 */  jal        func_800A7490
/* A8068 800A7468 AFB80010 */   sw        $t8, 0x10($sp)
/* A806C 800A746C AFA2004C */  sw         $v0, 0x4c($sp)
.L800A7470:
/* A8070 800A7470 10000003 */  b          .L800A7480
/* A8074 800A7474 8FA2004C */   lw        $v0, 0x4c($sp)
/* A8078 800A7478 10000001 */  b          .L800A7480
/* A807C 800A747C 00000000 */   nop
.L800A7480:
/* A8080 800A7480 8FBF001C */  lw         $ra, 0x1c($sp)
/* A8084 800A7484 27BD0050 */  addiu      $sp, $sp, 0x50
/* A8088 800A7488 03E00008 */  jr         $ra
/* A808C 800A748C 00000000 */   nop

glabel func_800A7490
/* A8090 800A7490 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A8094 800A7494 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8098 800A7498 AFA40048 */  sw         $a0, 0x48($sp)
/* A809C 800A749C AFA5004C */  sw         $a1, 0x4c($sp)
/* A80A0 800A74A0 AFA60050 */  sw         $a2, 0x50($sp)
/* A80A4 800A74A4 AFA70054 */  sw         $a3, 0x54($sp)
/* A80A8 800A74A8 8FAE0058 */  lw         $t6, 0x58($sp)
/* A80AC 800A74AC AFAE0044 */  sw         $t6, 0x44($sp)
/* A80B0 800A74B0 8FAF0048 */  lw         $t7, 0x48($sp)
/* A80B4 800A74B4 8DF9001C */  lw         $t9, 0x1c($t7)
/* A80B8 800A74B8 8DF80014 */  lw         $t8, 0x14($t7)
/* A80BC 800A74BC 00194040 */  sll        $t0, $t9, 1
/* A80C0 800A74C0 03084821 */  addu       $t1, $t8, $t0
/* A80C4 800A74C4 AFA90034 */  sw         $t1, 0x34($sp)
/* A80C8 800A74C8 8FAA004C */  lw         $t2, 0x4c($sp)
/* A80CC 800A74CC 8FAB0034 */  lw         $t3, 0x34($sp)
/* A80D0 800A74D0 016A082B */  sltu       $at, $t3, $t2
/* A80D4 800A74D4 10200009 */  beqz       $at, .L800A74FC
/* A80D8 800A74D8 00000000 */   nop
/* A80DC 800A74DC 8FAC0034 */  lw         $t4, 0x34($sp)
/* A80E0 800A74E0 8FAD004C */  lw         $t5, 0x4c($sp)
/* A80E4 800A74E4 24040085 */  addiu      $a0, $zero, 0x85
/* A80E8 800A74E8 24050001 */  addiu      $a1, $zero, 1
/* A80EC 800A74EC 018D3023 */  subu       $a2, $t4, $t5
/* A80F0 800A74F0 00067043 */  sra        $t6, $a2, 1
/* A80F4 800A74F4 0C02B5EC */  jal        func_800AD7B0
/* A80F8 800A74F8 01C03025 */   or        $a2, $t6, $zero
.L800A74FC:
/* A80FC 800A74FC 8FB90048 */  lw         $t9, 0x48($sp)
/* A8100 800A7500 8FAF004C */  lw         $t7, 0x4c($sp)
/* A8104 800A7504 8F380014 */  lw         $t8, 0x14($t9)
/* A8108 800A7508 01F8082B */  sltu       $at, $t7, $t8
/* A810C 800A750C 10200007 */  beqz       $at, .L800A752C
/* A8110 800A7510 00000000 */   nop
/* A8114 800A7514 8FA90048 */  lw         $t1, 0x48($sp)
/* A8118 800A7518 8FA8004C */  lw         $t0, 0x4c($sp)
/* A811C 800A751C 8D2A001C */  lw         $t2, 0x1c($t1)
/* A8120 800A7520 000A5840 */  sll        $t3, $t2, 1
/* A8124 800A7524 010B6021 */  addu       $t4, $t0, $t3
/* A8128 800A7528 AFAC004C */  sw         $t4, 0x4c($sp)
.L800A752C:
/* A812C 800A752C 8FAD0054 */  lw         $t5, 0x54($sp)
/* A8130 800A7530 8FB9004C */  lw         $t9, 0x4c($sp)
/* A8134 800A7534 000D7040 */  sll        $t6, $t5, 1
/* A8138 800A7538 01D97821 */  addu       $t7, $t6, $t9
/* A813C 800A753C AFAF0038 */  sw         $t7, 0x38($sp)
/* A8140 800A7540 8FB80038 */  lw         $t8, 0x38($sp)
/* A8144 800A7544 8FA90034 */  lw         $t1, 0x34($sp)
/* A8148 800A7548 0138082B */  sltu       $at, $t1, $t8
/* A814C 800A754C 10200045 */  beqz       $at, .L800A7664
/* A8150 800A7550 00000000 */   nop
/* A8154 800A7554 8FAA0038 */  lw         $t2, 0x38($sp)
/* A8158 800A7558 8FA80034 */  lw         $t0, 0x34($sp)
/* A815C 800A755C 01485823 */  subu       $t3, $t2, $t0
/* A8160 800A7560 000B6043 */  sra        $t4, $t3, 1
/* A8164 800A7564 AFAC0040 */  sw         $t4, 0x40($sp)
/* A8168 800A7568 8FAD0034 */  lw         $t5, 0x34($sp)
/* A816C 800A756C 8FAE004C */  lw         $t6, 0x4c($sp)
/* A8170 800A7570 01AEC823 */  subu       $t9, $t5, $t6
/* A8174 800A7574 00197843 */  sra        $t7, $t9, 1
/* A8178 800A7578 AFAF003C */  sw         $t7, 0x3c($sp)
/* A817C 800A757C 8FB80044 */  lw         $t8, 0x44($sp)
/* A8180 800A7580 27090008 */  addiu      $t1, $t8, 8
/* A8184 800A7584 AFA90044 */  sw         $t1, 0x44($sp)
/* A8188 800A7588 AFB80030 */  sw         $t8, 0x30($sp)
/* A818C 800A758C 8FAA0050 */  lw         $t2, 0x50($sp)
/* A8190 800A7590 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8194 800A7594 3C010800 */  lui        $at, 0x800
/* A8198 800A7598 3148FFFF */  andi       $t0, $t2, 0xffff
/* A819C 800A759C 01015825 */  or         $t3, $t0, $at
/* A81A0 800A75A0 AD8B0000 */  sw         $t3, ($t4)
/* A81A4 800A75A4 8FAD003C */  lw         $t5, 0x3c($sp)
/* A81A8 800A75A8 8FAF0030 */  lw         $t7, 0x30($sp)
/* A81AC 800A75AC 000D7040 */  sll        $t6, $t5, 1
/* A81B0 800A75B0 31D9FFFF */  andi       $t9, $t6, 0xffff
/* A81B4 800A75B4 ADF90004 */  sw         $t9, 4($t7)
/* A81B8 800A75B8 8FB80044 */  lw         $t8, 0x44($sp)
/* A81BC 800A75BC 27090008 */  addiu      $t1, $t8, 8
/* A81C0 800A75C0 AFA90044 */  sw         $t1, 0x44($sp)
/* A81C4 800A75C4 AFB8002C */  sw         $t8, 0x2c($sp)
/* A81C8 800A75C8 8FA8002C */  lw         $t0, 0x2c($sp)
/* A81CC 800A75CC 3C0A0400 */  lui        $t2, 0x400
/* A81D0 800A75D0 AD0A0000 */  sw         $t2, ($t0)
/* A81D4 800A75D4 0C027C0C */  jal        func_8009F030
/* A81D8 800A75D8 8FA4004C */   lw        $a0, 0x4c($sp)
/* A81DC 800A75DC 8FAB002C */  lw         $t3, 0x2c($sp)
/* A81E0 800A75E0 AD620004 */  sw         $v0, 4($t3)
/* A81E4 800A75E4 8FAC0044 */  lw         $t4, 0x44($sp)
/* A81E8 800A75E8 258D0008 */  addiu      $t5, $t4, 8
/* A81EC 800A75EC AFAD0044 */  sw         $t5, 0x44($sp)
/* A81F0 800A75F0 AFAC0028 */  sw         $t4, 0x28($sp)
/* A81F4 800A75F4 8FAE003C */  lw         $t6, 0x3c($sp)
/* A81F8 800A75F8 8FAF0050 */  lw         $t7, 0x50($sp)
/* A81FC 800A75FC 8FA80028 */  lw         $t0, 0x28($sp)
/* A8200 800A7600 000EC840 */  sll        $t9, $t6, 1
/* A8204 800A7604 032FC021 */  addu       $t8, $t9, $t7
/* A8208 800A7608 3309FFFF */  andi       $t1, $t8, 0xffff
/* A820C 800A760C 3C010800 */  lui        $at, 0x800
/* A8210 800A7610 01215025 */  or         $t2, $t1, $at
/* A8214 800A7614 AD0A0000 */  sw         $t2, ($t0)
/* A8218 800A7618 8FAB0040 */  lw         $t3, 0x40($sp)
/* A821C 800A761C 8FAE0028 */  lw         $t6, 0x28($sp)
/* A8220 800A7620 000B6040 */  sll        $t4, $t3, 1
/* A8224 800A7624 318DFFFF */  andi       $t5, $t4, 0xffff
/* A8228 800A7628 ADCD0004 */  sw         $t5, 4($t6)
/* A822C 800A762C 8FB90044 */  lw         $t9, 0x44($sp)
/* A8230 800A7630 272F0008 */  addiu      $t7, $t9, 8
/* A8234 800A7634 AFAF0044 */  sw         $t7, 0x44($sp)
/* A8238 800A7638 AFB90024 */  sw         $t9, 0x24($sp)
/* A823C 800A763C 8FA90024 */  lw         $t1, 0x24($sp)
/* A8240 800A7640 3C180400 */  lui        $t8, 0x400
/* A8244 800A7644 AD380000 */  sw         $t8, ($t1)
/* A8248 800A7648 8FAA0048 */  lw         $t2, 0x48($sp)
/* A824C 800A764C 0C027C0C */  jal        func_8009F030
/* A8250 800A7650 8D440014 */   lw        $a0, 0x14($t2)
/* A8254 800A7654 8FA80024 */  lw         $t0, 0x24($sp)
/* A8258 800A7658 AD020004 */  sw         $v0, 4($t0)
/* A825C 800A765C 1000001B */  b          .L800A76CC
/* A8260 800A7660 00000000 */   nop
.L800A7664:
/* A8264 800A7664 8FAB0044 */  lw         $t3, 0x44($sp)
/* A8268 800A7668 256C0008 */  addiu      $t4, $t3, 8
/* A826C 800A766C AFAC0044 */  sw         $t4, 0x44($sp)
/* A8270 800A7670 AFAB0020 */  sw         $t3, 0x20($sp)
/* A8274 800A7674 8FAD0050 */  lw         $t5, 0x50($sp)
/* A8278 800A7678 8FAF0020 */  lw         $t7, 0x20($sp)
/* A827C 800A767C 3C010800 */  lui        $at, 0x800
/* A8280 800A7680 31AEFFFF */  andi       $t6, $t5, 0xffff
/* A8284 800A7684 01C1C825 */  or         $t9, $t6, $at
/* A8288 800A7688 ADF90000 */  sw         $t9, ($t7)
/* A828C 800A768C 8FB80054 */  lw         $t8, 0x54($sp)
/* A8290 800A7690 8FA80020 */  lw         $t0, 0x20($sp)
/* A8294 800A7694 00184840 */  sll        $t1, $t8, 1
/* A8298 800A7698 312AFFFF */  andi       $t2, $t1, 0xffff
/* A829C 800A769C AD0A0004 */  sw         $t2, 4($t0)
/* A82A0 800A76A0 8FAB0044 */  lw         $t3, 0x44($sp)
/* A82A4 800A76A4 256C0008 */  addiu      $t4, $t3, 8
/* A82A8 800A76A8 AFAC0044 */  sw         $t4, 0x44($sp)
/* A82AC 800A76AC AFAB001C */  sw         $t3, 0x1c($sp)
/* A82B0 800A76B0 8FAE001C */  lw         $t6, 0x1c($sp)
/* A82B4 800A76B4 3C0D0400 */  lui        $t5, 0x400
/* A82B8 800A76B8 ADCD0000 */  sw         $t5, ($t6)
/* A82BC 800A76BC 0C027C0C */  jal        func_8009F030
/* A82C0 800A76C0 8FA4004C */   lw        $a0, 0x4c($sp)
/* A82C4 800A76C4 8FB9001C */  lw         $t9, 0x1c($sp)
/* A82C8 800A76C8 AF220004 */  sw         $v0, 4($t9)
.L800A76CC:
/* A82CC 800A76CC 8FAF0044 */  lw         $t7, 0x44($sp)
/* A82D0 800A76D0 25F80008 */  addiu      $t8, $t7, 8
/* A82D4 800A76D4 AFB80044 */  sw         $t8, 0x44($sp)
/* A82D8 800A76D8 AFAF0018 */  sw         $t7, 0x18($sp)
/* A82DC 800A76DC 8FAA0018 */  lw         $t2, 0x18($sp)
/* A82E0 800A76E0 3C090800 */  lui        $t1, 0x800
/* A82E4 800A76E4 AD490000 */  sw         $t1, ($t2)
/* A82E8 800A76E8 8FA80054 */  lw         $t0, 0x54($sp)
/* A82EC 800A76EC 8FAD0018 */  lw         $t5, 0x18($sp)
/* A82F0 800A76F0 00085840 */  sll        $t3, $t0, 1
/* A82F4 800A76F4 316CFFFF */  andi       $t4, $t3, 0xffff
/* A82F8 800A76F8 ADAC0004 */  sw         $t4, 4($t5)
/* A82FC 800A76FC 10000003 */  b          .L800A770C
/* A8300 800A7700 8FA20044 */   lw        $v0, 0x44($sp)
/* A8304 800A7704 10000001 */  b          .L800A770C
/* A8308 800A7708 00000000 */   nop
.L800A770C:
/* A830C 800A770C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8310 800A7710 27BD0048 */  addiu      $sp, $sp, 0x48
/* A8314 800A7714 03E00008 */  jr         $ra
/* A8318 800A7718 00000000 */   nop

glabel func_800A771C
/* A831C 800A771C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A8320 800A7720 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8324 800A7724 AFA40048 */  sw         $a0, 0x48($sp)
/* A8328 800A7728 AFA5004C */  sw         $a1, 0x4c($sp)
/* A832C 800A772C AFA60050 */  sw         $a2, 0x50($sp)
/* A8330 800A7730 AFA70054 */  sw         $a3, 0x54($sp)
/* A8334 800A7734 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8338 800A7738 AFAE0044 */  sw         $t6, 0x44($sp)
/* A833C 800A773C 8FAF0048 */  lw         $t7, 0x48($sp)
/* A8340 800A7740 8DF9001C */  lw         $t9, 0x1c($t7)
/* A8344 800A7744 8DF80014 */  lw         $t8, 0x14($t7)
/* A8348 800A7748 00194040 */  sll        $t0, $t9, 1
/* A834C 800A774C 03084821 */  addu       $t1, $t8, $t0
/* A8350 800A7750 AFA90034 */  sw         $t1, 0x34($sp)
/* A8354 800A7754 8FAB0048 */  lw         $t3, 0x48($sp)
/* A8358 800A7758 8FAA004C */  lw         $t2, 0x4c($sp)
/* A835C 800A775C 8D6C0014 */  lw         $t4, 0x14($t3)
/* A8360 800A7760 014C082B */  sltu       $at, $t2, $t4
/* A8364 800A7764 10200007 */  beqz       $at, .L800A7784
/* A8368 800A7768 00000000 */   nop
/* A836C 800A776C 8FAE0048 */  lw         $t6, 0x48($sp)
/* A8370 800A7770 8FAD004C */  lw         $t5, 0x4c($sp)
/* A8374 800A7774 8DCF001C */  lw         $t7, 0x1c($t6)
/* A8378 800A7778 000FC840 */  sll        $t9, $t7, 1
/* A837C 800A777C 01B9C021 */  addu       $t8, $t5, $t9
/* A8380 800A7780 AFB8004C */  sw         $t8, 0x4c($sp)
.L800A7784:
/* A8384 800A7784 8FA80054 */  lw         $t0, 0x54($sp)
/* A8388 800A7788 8FAB004C */  lw         $t3, 0x4c($sp)
/* A838C 800A778C 00084840 */  sll        $t1, $t0, 1
/* A8390 800A7790 012B5021 */  addu       $t2, $t1, $t3
/* A8394 800A7794 AFAA0038 */  sw         $t2, 0x38($sp)
/* A8398 800A7798 8FAC0038 */  lw         $t4, 0x38($sp)
/* A839C 800A779C 8FAE0034 */  lw         $t6, 0x34($sp)
/* A83A0 800A77A0 01CC082B */  sltu       $at, $t6, $t4
/* A83A4 800A77A4 10200053 */  beqz       $at, .L800A78F4
/* A83A8 800A77A8 00000000 */   nop
/* A83AC 800A77AC 8FAF0038 */  lw         $t7, 0x38($sp)
/* A83B0 800A77B0 8FAD0034 */  lw         $t5, 0x34($sp)
/* A83B4 800A77B4 01EDC823 */  subu       $t9, $t7, $t5
/* A83B8 800A77B8 0019C043 */  sra        $t8, $t9, 1
/* A83BC 800A77BC AFB80040 */  sw         $t8, 0x40($sp)
/* A83C0 800A77C0 8FA80034 */  lw         $t0, 0x34($sp)
/* A83C4 800A77C4 8FA9004C */  lw         $t1, 0x4c($sp)
/* A83C8 800A77C8 01095823 */  subu       $t3, $t0, $t1
/* A83CC 800A77CC 000B5043 */  sra        $t2, $t3, 1
/* A83D0 800A77D0 AFAA003C */  sw         $t2, 0x3c($sp)
/* A83D4 800A77D4 8FAC0044 */  lw         $t4, 0x44($sp)
/* A83D8 800A77D8 258E0008 */  addiu      $t6, $t4, 8
/* A83DC 800A77DC AFAE0044 */  sw         $t6, 0x44($sp)
/* A83E0 800A77E0 AFAC0030 */  sw         $t4, 0x30($sp)
/* A83E4 800A77E4 8FAD0030 */  lw         $t5, 0x30($sp)
/* A83E8 800A77E8 3C0F0800 */  lui        $t7, 0x800
/* A83EC 800A77EC ADAF0000 */  sw         $t7, ($t5)
/* A83F0 800A77F0 8FB90050 */  lw         $t9, 0x50($sp)
/* A83F4 800A77F4 8FA9003C */  lw         $t1, 0x3c($sp)
/* A83F8 800A77F8 8FAE0030 */  lw         $t6, 0x30($sp)
/* A83FC 800A77FC 3338FFFF */  andi       $t8, $t9, 0xffff
/* A8400 800A7800 00095840 */  sll        $t3, $t1, 1
/* A8404 800A7804 316AFFFF */  andi       $t2, $t3, 0xffff
/* A8408 800A7808 00184400 */  sll        $t0, $t8, 0x10
/* A840C 800A780C 010A6025 */  or         $t4, $t0, $t2
/* A8410 800A7810 ADCC0004 */  sw         $t4, 4($t6)
/* A8414 800A7814 8FAF0044 */  lw         $t7, 0x44($sp)
/* A8418 800A7818 25ED0008 */  addiu      $t5, $t7, 8
/* A841C 800A781C AFAD0044 */  sw         $t5, 0x44($sp)
/* A8420 800A7820 AFAF002C */  sw         $t7, 0x2c($sp)
/* A8424 800A7824 8FB8002C */  lw         $t8, 0x2c($sp)
/* A8428 800A7828 3C190600 */  lui        $t9, 0x600
/* A842C 800A782C AF190000 */  sw         $t9, ($t8)
/* A8430 800A7830 0C027C0C */  jal        func_8009F030
/* A8434 800A7834 8FA4004C */   lw        $a0, 0x4c($sp)
/* A8438 800A7838 8FA9002C */  lw         $t1, 0x2c($sp)
/* A843C 800A783C AD220004 */  sw         $v0, 4($t1)
/* A8440 800A7840 8FAB0044 */  lw         $t3, 0x44($sp)
/* A8444 800A7844 25680008 */  addiu      $t0, $t3, 8
/* A8448 800A7848 AFA80044 */  sw         $t0, 0x44($sp)
/* A844C 800A784C AFAB0028 */  sw         $t3, 0x28($sp)
/* A8450 800A7850 8FAC0028 */  lw         $t4, 0x28($sp)
/* A8454 800A7854 3C0A0800 */  lui        $t2, 0x800
/* A8458 800A7858 AD8A0000 */  sw         $t2, ($t4)
/* A845C 800A785C 8FAE003C */  lw         $t6, 0x3c($sp)
/* A8460 800A7860 8FAD0050 */  lw         $t5, 0x50($sp)
/* A8464 800A7864 8FAB0040 */  lw         $t3, 0x40($sp)
/* A8468 800A7868 000E7840 */  sll        $t7, $t6, 1
/* A846C 800A786C 01EDC821 */  addu       $t9, $t7, $t5
/* A8470 800A7870 8FAE0028 */  lw         $t6, 0x28($sp)
/* A8474 800A7874 3338FFFF */  andi       $t8, $t9, 0xffff
/* A8478 800A7878 000B4040 */  sll        $t0, $t3, 1
/* A847C 800A787C 310AFFFF */  andi       $t2, $t0, 0xffff
/* A8480 800A7880 00184C00 */  sll        $t1, $t8, 0x10
/* A8484 800A7884 012A6025 */  or         $t4, $t1, $t2
/* A8488 800A7888 ADCC0004 */  sw         $t4, 4($t6)
/* A848C 800A788C 8FAF0044 */  lw         $t7, 0x44($sp)
/* A8490 800A7890 25ED0008 */  addiu      $t5, $t7, 8
/* A8494 800A7894 AFAD0044 */  sw         $t5, 0x44($sp)
/* A8498 800A7898 AFAF0024 */  sw         $t7, 0x24($sp)
/* A849C 800A789C 8FB80024 */  lw         $t8, 0x24($sp)
/* A84A0 800A78A0 3C190600 */  lui        $t9, 0x600
/* A84A4 800A78A4 AF190000 */  sw         $t9, ($t8)
/* A84A8 800A78A8 8FAB0048 */  lw         $t3, 0x48($sp)
/* A84AC 800A78AC 0C027C0C */  jal        func_8009F030
/* A84B0 800A78B0 8D640014 */   lw        $a0, 0x14($t3)
/* A84B4 800A78B4 8FA80024 */  lw         $t0, 0x24($sp)
/* A84B8 800A78B8 AD020004 */  sw         $v0, 4($t0)
/* A84BC 800A78BC 8FA90044 */  lw         $t1, 0x44($sp)
/* A84C0 800A78C0 252A0008 */  addiu      $t2, $t1, 8
/* A84C4 800A78C4 AFAA0044 */  sw         $t2, 0x44($sp)
/* A84C8 800A78C8 AFA90020 */  sw         $t1, 0x20($sp)
/* A84CC 800A78CC 8FAE0020 */  lw         $t6, 0x20($sp)
/* A84D0 800A78D0 3C0C0800 */  lui        $t4, 0x800
/* A84D4 800A78D4 ADCC0000 */  sw         $t4, ($t6)
/* A84D8 800A78D8 8FAF0054 */  lw         $t7, 0x54($sp)
/* A84DC 800A78DC 8FB80020 */  lw         $t8, 0x20($sp)
/* A84E0 800A78E0 000F6840 */  sll        $t5, $t7, 1
/* A84E4 800A78E4 31B9FFFF */  andi       $t9, $t5, 0xffff
/* A84E8 800A78E8 AF190004 */  sw         $t9, 4($t8)
/* A84EC 800A78EC 1000001C */  b          .L800A7960
/* A84F0 800A78F0 00000000 */   nop
.L800A78F4:
/* A84F4 800A78F4 8FAB0044 */  lw         $t3, 0x44($sp)
/* A84F8 800A78F8 25680008 */  addiu      $t0, $t3, 8
/* A84FC 800A78FC AFA80044 */  sw         $t0, 0x44($sp)
/* A8500 800A7900 AFAB001C */  sw         $t3, 0x1c($sp)
/* A8504 800A7904 8FAA001C */  lw         $t2, 0x1c($sp)
/* A8508 800A7908 3C090800 */  lui        $t1, 0x800
/* A850C 800A790C AD490000 */  sw         $t1, ($t2)
/* A8510 800A7910 8FAC0050 */  lw         $t4, 0x50($sp)
/* A8514 800A7914 8FAD0054 */  lw         $t5, 0x54($sp)
/* A8518 800A7918 8FA8001C */  lw         $t0, 0x1c($sp)
/* A851C 800A791C 318EFFFF */  andi       $t6, $t4, 0xffff
/* A8520 800A7920 000DC840 */  sll        $t9, $t5, 1
/* A8524 800A7924 3338FFFF */  andi       $t8, $t9, 0xffff
/* A8528 800A7928 000E7C00 */  sll        $t7, $t6, 0x10
/* A852C 800A792C 01F85825 */  or         $t3, $t7, $t8
/* A8530 800A7930 AD0B0004 */  sw         $t3, 4($t0)
/* A8534 800A7934 8FA90044 */  lw         $t1, 0x44($sp)
/* A8538 800A7938 252A0008 */  addiu      $t2, $t1, 8
/* A853C 800A793C AFAA0044 */  sw         $t2, 0x44($sp)
/* A8540 800A7940 AFA90018 */  sw         $t1, 0x18($sp)
/* A8544 800A7944 8FAE0018 */  lw         $t6, 0x18($sp)
/* A8548 800A7948 3C0C0600 */  lui        $t4, 0x600
/* A854C 800A794C ADCC0000 */  sw         $t4, ($t6)
/* A8550 800A7950 0C027C0C */  jal        func_8009F030
/* A8554 800A7954 8FA4004C */   lw        $a0, 0x4c($sp)
/* A8558 800A7958 8FAD0018 */  lw         $t5, 0x18($sp)
/* A855C 800A795C ADA20004 */  sw         $v0, 4($t5)
.L800A7960:
/* A8560 800A7960 10000003 */  b          .L800A7970
/* A8564 800A7964 8FA20044 */   lw        $v0, 0x44($sp)
/* A8568 800A7968 10000001 */  b          .L800A7970
/* A856C 800A796C 00000000 */   nop
.L800A7970:
/* A8570 800A7970 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8574 800A7974 27BD0048 */  addiu      $sp, $sp, 0x48
/* A8578 800A7978 03E00008 */  jr         $ra
/* A857C 800A797C 00000000 */   nop

glabel func_800A7980
/* A8580 800A7980 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A8584 800A7984 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8588 800A7988 AFA40028 */  sw         $a0, 0x28($sp)
/* A858C 800A798C AFA5002C */  sw         $a1, 0x2c($sp)
/* A8590 800A7990 AFA60030 */  sw         $a2, 0x30($sp)
/* A8594 800A7994 AFA70034 */  sw         $a3, 0x34($sp)
/* A8598 800A7998 8FAE0034 */  lw         $t6, 0x34($sp)
/* A859C 800A799C AFAE0024 */  sw         $t6, 0x24($sp)
/* A85A0 800A79A0 8FAF0024 */  lw         $t7, 0x24($sp)
/* A85A4 800A79A4 25F80008 */  addiu      $t8, $t7, 8
/* A85A8 800A79A8 AFB80024 */  sw         $t8, 0x24($sp)
/* A85AC 800A79AC AFAF0020 */  sw         $t7, 0x20($sp)
/* A85B0 800A79B0 8FB9002C */  lw         $t9, 0x2c($sp)
/* A85B4 800A79B4 8FAA0020 */  lw         $t2, 0x20($sp)
/* A85B8 800A79B8 3C010800 */  lui        $at, 0x800
/* A85BC 800A79BC 3328FFFF */  andi       $t0, $t9, 0xffff
/* A85C0 800A79C0 01014825 */  or         $t1, $t0, $at
/* A85C4 800A79C4 AD490000 */  sw         $t1, ($t2)
/* A85C8 800A79C8 8FAB002C */  lw         $t3, 0x2c($sp)
/* A85CC 800A79CC 8FAE0030 */  lw         $t6, 0x30($sp)
/* A85D0 800A79D0 8FA80020 */  lw         $t0, 0x20($sp)
/* A85D4 800A79D4 316CFFFF */  andi       $t4, $t3, 0xffff
/* A85D8 800A79D8 000E7840 */  sll        $t7, $t6, 1
/* A85DC 800A79DC 31F8FFFF */  andi       $t8, $t7, 0xffff
/* A85E0 800A79E0 000C6C00 */  sll        $t5, $t4, 0x10
/* A85E4 800A79E4 01B8C825 */  or         $t9, $t5, $t8
/* A85E8 800A79E8 AD190004 */  sw         $t9, 4($t0)
/* A85EC 800A79EC 8FA90024 */  lw         $t1, 0x24($sp)
/* A85F0 800A79F0 252A0008 */  addiu      $t2, $t1, 8
/* A85F4 800A79F4 AFAA0024 */  sw         $t2, 0x24($sp)
/* A85F8 800A79F8 AFA9001C */  sw         $t1, 0x1c($sp)
/* A85FC 800A79FC 8FAC001C */  lw         $t4, 0x1c($sp)
/* A8600 800A7A00 3C0B0B00 */  lui        $t3, 0xb00
/* A8604 800A7A04 356B0020 */  ori        $t3, $t3, 0x20
/* A8608 800A7A08 AD8B0000 */  sw         $t3, ($t4)
/* A860C 800A7A0C 8FA40028 */  lw         $a0, 0x28($sp)
/* A8610 800A7A10 0C027C0C */  jal        func_8009F030
/* A8614 800A7A14 24840008 */   addiu     $a0, $a0, 8
/* A8618 800A7A18 8FAE001C */  lw         $t6, 0x1c($sp)
/* A861C 800A7A1C ADC20004 */  sw         $v0, 4($t6)
/* A8620 800A7A20 8FAF0024 */  lw         $t7, 0x24($sp)
/* A8624 800A7A24 25ED0008 */  addiu      $t5, $t7, 8
/* A8628 800A7A28 AFAD0024 */  sw         $t5, 0x24($sp)
/* A862C 800A7A2C AFAF0018 */  sw         $t7, 0x18($sp)
/* A8630 800A7A30 8FB80028 */  lw         $t8, 0x28($sp)
/* A8634 800A7A34 8FAF0018 */  lw         $t7, 0x18($sp)
/* A8638 800A7A38 3C010E00 */  lui        $at, 0xe00
/* A863C 800A7A3C 8F19002C */  lw         $t9, 0x2c($t8)
/* A8640 800A7A40 870B0002 */  lh         $t3, 2($t8)
/* A8644 800A7A44 332800FF */  andi       $t0, $t9, 0xff
/* A8648 800A7A48 00084C00 */  sll        $t1, $t0, 0x10
/* A864C 800A7A4C 01215025 */  or         $t2, $t1, $at
/* A8650 800A7A50 316CFFFF */  andi       $t4, $t3, 0xffff
/* A8654 800A7A54 014C7025 */  or         $t6, $t2, $t4
/* A8658 800A7A58 ADEE0000 */  sw         $t6, ($t7)
/* A865C 800A7A5C 8FAD0028 */  lw         $t5, 0x28($sp)
/* A8660 800A7A60 0C027C0C */  jal        func_8009F030
/* A8664 800A7A64 8DA40028 */   lw        $a0, 0x28($t5)
/* A8668 800A7A68 8FB90018 */  lw         $t9, 0x18($sp)
/* A866C 800A7A6C AF220004 */  sw         $v0, 4($t9)
/* A8670 800A7A70 8FA80028 */  lw         $t0, 0x28($sp)
/* A8674 800A7A74 AD00002C */  sw         $zero, 0x2c($t0)
/* A8678 800A7A78 10000003 */  b          .L800A7A88
/* A867C 800A7A7C 8FA20024 */   lw        $v0, 0x24($sp)
/* A8680 800A7A80 10000001 */  b          .L800A7A88
/* A8684 800A7A84 00000000 */   nop
.L800A7A88:
/* A8688 800A7A88 8FBF0014 */  lw         $ra, 0x14($sp)
/* A868C 800A7A8C 27BD0028 */  addiu      $sp, $sp, 0x28
/* A8690 800A7A90 03E00008 */  jr         $ra
/* A8694 800A7A94 00000000 */   nop

glabel func_800A7A98
/* A8698 800A7A98 27BDFFF8 */  addiu      $sp, $sp, -8
/* A869C 800A7A9C 44853000 */  mtc1       $a1, $f6
/* A86A0 800A7AA0 C4840010 */  lwc1       $f4, 0x10($a0)
/* A86A4 800A7AA4 C4900014 */  lwc1       $f16, 0x14($a0)
/* A86A8 800A7AA8 46803220 */  cvt.s.w    $f8, $f6
/* A86AC 800A7AAC 46082282 */  mul.s      $f10, $f4, $f8
/* A86B0 800A7AB0 460A8480 */  add.s      $f18, $f16, $f10
/* A86B4 800A7AB4 E4920014 */  swc1       $f18, 0x14($a0)
/* A86B8 800A7AB8 C4860014 */  lwc1       $f6, 0x14($a0)
/* A86BC 800A7ABC 3C014000 */  lui        $at, 0x4000
/* A86C0 800A7AC0 44814800 */  mtc1       $at, $f9
/* A86C4 800A7AC4 44804000 */  mtc1       $zero, $f8
/* A86C8 800A7AC8 46003121 */  cvt.d.s    $f4, $f6
/* A86CC 800A7ACC 4624403C */  c.lt.d     $f8, $f4
/* A86D0 800A7AD0 00000000 */  nop
/* A86D4 800A7AD4 4500000A */  bc1f       .L800A7B00
/* A86D8 800A7AD8 00000000 */   nop
/* A86DC 800A7ADC C4900014 */  lwc1       $f16, 0x14($a0)
/* A86E0 800A7AE0 3C014010 */  lui        $at, 0x4010
/* A86E4 800A7AE4 44819800 */  mtc1       $at, $f19
/* A86E8 800A7AE8 44809000 */  mtc1       $zero, $f18
/* A86EC 800A7AEC 460082A1 */  cvt.d.s    $f10, $f16
/* A86F0 800A7AF0 46325181 */  sub.d      $f6, $f10, $f18
/* A86F4 800A7AF4 46203120 */  cvt.s.d    $f4, $f6
/* A86F8 800A7AF8 10000005 */  b          .L800A7B10
/* A86FC 800A7AFC E4840014 */   swc1      $f4, 0x14($a0)
.L800A7B00:
/* A8700 800A7B00 C4880014 */  lwc1       $f8, 0x14($a0)
/* A8704 800A7B04 46004421 */  cvt.d.s    $f16, $f8
/* A8708 800A7B08 462082A0 */  cvt.s.d    $f10, $f16
/* A870C 800A7B0C E48A0014 */  swc1       $f10, 0x14($a0)
.L800A7B10:
/* A8710 800A7B10 C4920014 */  lwc1       $f18, 0x14($a0)
/* A8714 800A7B14 E7B20004 */  swc1       $f18, 4($sp)
/* A8718 800A7B18 C7A60004 */  lwc1       $f6, 4($sp)
/* A871C 800A7B1C 44802000 */  mtc1       $zero, $f4
/* A8720 800A7B20 00000000 */  nop
/* A8724 800A7B24 4604303C */  c.lt.s     $f6, $f4
/* A8728 800A7B28 00000000 */  nop
/* A872C 800A7B2C 45000004 */  bc1f       .L800A7B40
/* A8730 800A7B30 00000000 */   nop
/* A8734 800A7B34 46003207 */  neg.s      $f8, $f6
/* A8738 800A7B38 10000001 */  b          .L800A7B40
/* A873C 800A7B3C E7A80004 */   swc1      $f8, 4($sp)
.L800A7B40:
/* A8740 800A7B40 C7B00004 */  lwc1       $f16, 4($sp)
/* A8744 800A7B44 3C013FF0 */  lui        $at, 0x3ff0
/* A8748 800A7B48 44819800 */  mtc1       $at, $f19
/* A874C 800A7B4C 44809000 */  mtc1       $zero, $f18
/* A8750 800A7B50 460082A1 */  cvt.d.s    $f10, $f16
/* A8754 800A7B54 46325101 */  sub.d      $f4, $f10, $f18
/* A8758 800A7B58 462021A0 */  cvt.s.d    $f6, $f4
/* A875C 800A7B5C E7A60004 */  swc1       $f6, 4($sp)
/* A8760 800A7B60 C488001C */  lwc1       $f8, 0x1c($a0)
/* A8764 800A7B64 C7B00004 */  lwc1       $f16, 4($sp)
/* A8768 800A7B68 46104002 */  mul.s      $f0, $f8, $f16
/* A876C 800A7B6C 10000003 */  b          .L800A7B7C
/* A8770 800A7B70 00000000 */   nop
/* A8774 800A7B74 10000001 */  b          .L800A7B7C
/* A8778 800A7B78 00000000 */   nop
.L800A7B7C:
/* A877C 800A7B7C 03E00008 */  jr         $ra
/* A8780 800A7B80 27BD0008 */   addiu     $sp, $sp, 8
/* A8784 800A7B84 00000000 */  nop
/* A8788 800A7B88 00000000 */  nop
/* A878C 800A7B8C 00000000 */  nop
