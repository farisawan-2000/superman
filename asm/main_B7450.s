.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6850
/* B7450 800B6850 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7454 800B6854 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7458 800B6858 AFA40030 */  sw         $a0, 0x30($sp)
/* B745C 800B685C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B7460 800B6860 05C00004 */  bltz       $t6, .L800B6874
/* B7464 800B6864 00000000 */   nop
/* B7468 800B6868 29C10100 */  slti       $at, $t6, 0x100
/* B746C 800B686C 14200007 */  bnez       $at, .L800B688C
/* B7470 800B6870 00000000 */   nop
.L800B6874:
/* B7474 800B6874 24040031 */  addiu      $a0, $zero, 0x31
/* B7478 800B6878 24050001 */  addiu      $a1, $zero, 1
/* B747C 800B687C 0C02B5EC */  jal        func_800AD7B0
/* B7480 800B6880 8FA60030 */   lw        $a2, 0x30($sp)
/* B7484 800B6884 1000006E */  b          .L800B6A40
/* B7488 800B6888 00000000 */   nop
.L800B688C:
/* B748C 800B688C 3C0F800D */  lui        $t7, %hi(D_800CD670)
/* B7490 800B6890 8DEFD670 */  lw         $t7, %lo(D_800CD670)($t7)
/* B7494 800B6894 11E00003 */  beqz       $t7, .L800B68A4
/* B7498 800B6898 00000000 */   nop
/* B749C 800B689C 10000068 */  b          .L800B6A40
/* B74A0 800B68A0 00000000 */   nop
.L800B68A4:
/* B74A4 800B68A4 0C02BAB8 */  jal        func_800AEAE0
/* B74A8 800B68A8 00000000 */   nop
/* B74AC 800B68AC 3C04801B */  lui        $a0, %hi(D_801A9DB0)
/* B74B0 800B68B0 3C05801B */  lui        $a1, %hi(D_801A9DC8)
/* B74B4 800B68B4 24A59DC8 */  addiu      $a1, $a1, %lo(D_801A9DC8)
/* B74B8 800B68B8 24849DB0 */  addiu      $a0, $a0, %lo(D_801A9DB0)
/* B74BC 800B68BC 0C02B42C */  jal        func_800AD0B0
/* B74C0 800B68C0 24060005 */   addiu     $a2, $zero, 5
/* B74C4 800B68C4 2418000D */  addiu      $t8, $zero, 0xd
/* B74C8 800B68C8 3C01801B */  lui        $at, %hi(D_801A9DE0)
/* B74CC 800B68CC A4389DE0 */  sh         $t8, %lo(D_801A9DE0)($at)
/* B74D0 800B68D0 3C01801B */  lui        $at, %hi(D_801A9DE2)
/* B74D4 800B68D4 A0209DE2 */  sb         $zero, %lo(D_801A9DE2)($at)
/* B74D8 800B68D8 3C01801B */  lui        $at, %hi(D_801A9DE4)
/* B74DC 800B68DC AC209DE4 */  sw         $zero, %lo(D_801A9DE4)($at)
/* B74E0 800B68E0 2419000E */  addiu      $t9, $zero, 0xe
/* B74E4 800B68E4 3C01801B */  lui        $at, %hi(D_801A9DF8)
/* B74E8 800B68E8 A4399DF8 */  sh         $t9, %lo(D_801A9DF8)($at)
/* B74EC 800B68EC 3C01801B */  lui        $at, %hi(D_801A9DFA)
/* B74F0 800B68F0 A0209DFA */  sb         $zero, %lo(D_801A9DFA)($at)
/* B74F4 800B68F4 3C01801B */  lui        $at, %hi(D_801A9DFC)
/* B74F8 800B68F8 AC209DFC */  sw         $zero, %lo(D_801A9DFC)($at)
/* B74FC 800B68FC 3C05801B */  lui        $a1, %hi(D_801A9DB0)
/* B7500 800B6900 3C06801B */  lui        $a2, %hi(D_801A9DE0)
/* B7504 800B6904 24C69DE0 */  addiu      $a2, $a2, %lo(D_801A9DE0)
/* B7508 800B6908 24A59DB0 */  addiu      $a1, $a1, %lo(D_801A9DB0)
/* B750C 800B690C 0C02AD08 */  jal        func_800AB420
/* B7510 800B6910 24040007 */   addiu     $a0, $zero, 7
/* B7514 800B6914 3C05801B */  lui        $a1, %hi(D_801A9DB0)
/* B7518 800B6918 3C06801B */  lui        $a2, %hi(D_801A9DF8)
/* B751C 800B691C 24C69DF8 */  addiu      $a2, $a2, %lo(D_801A9DF8)
/* B7520 800B6920 24A59DB0 */  addiu      $a1, $a1, %lo(D_801A9DB0)
/* B7524 800B6924 0C02AD08 */  jal        func_800AB420
/* B7528 800B6928 24040003 */   addiu     $a0, $zero, 3
/* B752C 800B692C 2408FFFF */  addiu      $t0, $zero, -1
/* B7530 800B6930 AFA80028 */  sw         $t0, 0x28($sp)
/* B7534 800B6934 0C02B798 */  jal        func_800ADE60
/* B7538 800B6938 00002025 */   or        $a0, $zero, $zero
/* B753C 800B693C AFA20024 */  sw         $v0, 0x24($sp)
/* B7540 800B6940 8FA90024 */  lw         $t1, 0x24($sp)
/* B7544 800B6944 8FAA0030 */  lw         $t2, 0x30($sp)
/* B7548 800B6948 012A082A */  slt        $at, $t1, $t2
/* B754C 800B694C 10200006 */  beqz       $at, .L800B6968
/* B7550 800B6950 00000000 */   nop
/* B7554 800B6954 8FAB0024 */  lw         $t3, 0x24($sp)
/* B7558 800B6958 AFAB0028 */  sw         $t3, 0x28($sp)
/* B755C 800B695C 00002025 */  or         $a0, $zero, $zero
/* B7560 800B6960 0C02B74C */  jal        func_800ADD30
/* B7564 800B6964 8FA50030 */   lw        $a1, 0x30($sp)
.L800B6968:
/* B7568 800B6968 0C02C0C8 */  jal        func_800B0320
/* B756C 800B696C 00000000 */   nop
/* B7570 800B6970 AFA2002C */  sw         $v0, 0x2c($sp)
/* B7574 800B6974 240C0001 */  addiu      $t4, $zero, 1
/* B7578 800B6978 3C01800D */  lui        $at, %hi(D_800CD670)
/* B757C 800B697C AC2CD670 */  sw         $t4, %lo(D_800CD670)($at)
/* B7580 800B6980 3C0D801B */  lui        $t5, %hi(D_801A8C00)
/* B7584 800B6984 25AD8C00 */  addiu      $t5, $t5, %lo(D_801A8C00)
/* B7588 800B6988 3C01800D */  lui        $at, %hi(D_800CD674)
/* B758C 800B698C AC2DD674 */  sw         $t5, %lo(D_800CD674)($at)
/* B7590 800B6990 3C0E801B */  lui        $t6, %hi(D_801A9DB0)
/* B7594 800B6994 25CE9DB0 */  addiu      $t6, $t6, %lo(D_801A9DB0)
/* B7598 800B6998 3C01800D */  lui        $at, %hi(D_800CD678)
/* B759C 800B699C AC2ED678 */  sw         $t6, %lo(D_800CD678)($at)
/* B75A0 800B69A0 3C0F801B */  lui        $t7, %hi(D_801A9DB0)
/* B75A4 800B69A4 25EF9DB0 */  addiu      $t7, $t7, %lo(D_801A9DB0)
/* B75A8 800B69A8 3C01800D */  lui        $at, %hi(D_800CD67C)
/* B75AC 800B69AC AC2FD67C */  sw         $t7, %lo(D_800CD67C)($at)
/* B75B0 800B69B0 3C01800D */  lui        $at, %hi(D_800CD680)
/* B75B4 800B69B4 AC20D680 */  sw         $zero, %lo(D_800CD680)($at)
/* B75B8 800B69B8 3C01800D */  lui        $at, %hi(D_800CD684)
/* B75BC 800B69BC AC20D684 */  sw         $zero, %lo(D_800CD684)($at)
/* B75C0 800B69C0 3C01800D */  lui        $at, %hi(D_800CD688)
/* B75C4 800B69C4 AC20D688 */  sw         $zero, %lo(D_800CD688)($at)
/* B75C8 800B69C8 3C18801B */  lui        $t8, %hi(D_801A8DB0)
/* B75CC 800B69CC 8FA80030 */  lw         $t0, 0x30($sp)
/* B75D0 800B69D0 27188DB0 */  addiu      $t8, $t8, %lo(D_801A8DB0)
/* B75D4 800B69D4 27191000 */  addiu      $t9, $t8, 0x1000
/* B75D8 800B69D8 3C04801B */  lui        $a0, %hi(D_801A8C00)
/* B75DC 800B69DC 3C06800B */  lui        $a2, %hi(func_800B6A50)
/* B75E0 800B69E0 3C07800D */  lui        $a3, %hi(D_800CD670)
/* B75E4 800B69E4 24E7D670 */  addiu      $a3, $a3, %lo(D_800CD670)
/* B75E8 800B69E8 24C66A50 */  addiu      $a2, $a2, %lo(func_800B6A50)
/* B75EC 800B69EC 24848C00 */  addiu      $a0, $a0, %lo(D_801A8C00)
/* B75F0 800B69F0 AFB90010 */  sw         $t9, 0x10($sp)
/* B75F4 800B69F4 00002825 */  or         $a1, $zero, $zero
/* B75F8 800B69F8 0C0268D0 */  jal        func_8009A340
/* B75FC 800B69FC AFA80014 */   sw        $t0, 0x14($sp)
/* B7600 800B6A00 0C02C0D8 */  jal        func_800B0360
/* B7604 800B6A04 00000000 */   nop
/* B7608 800B6A08 3C04801B */  lui        $a0, %hi(D_801A8C00)
/* B760C 800B6A0C 0C02E4BC */  jal        func_800B92F0
/* B7610 800B6A10 24848C00 */   addiu     $a0, $a0, %lo(D_801A8C00)
/* B7614 800B6A14 0C02C0D0 */  jal        func_800B0340
/* B7618 800B6A18 8FA4002C */   lw        $a0, 0x2c($sp)
/* B761C 800B6A1C 8FA90028 */  lw         $t1, 0x28($sp)
/* B7620 800B6A20 2401FFFF */  addiu      $at, $zero, -1
/* B7624 800B6A24 11210004 */  beq        $t1, $at, .L800B6A38
/* B7628 800B6A28 00000000 */   nop
/* B762C 800B6A2C 00002025 */  or         $a0, $zero, $zero
/* B7630 800B6A30 0C02B74C */  jal        func_800ADD30
/* B7634 800B6A34 8FA50028 */   lw        $a1, 0x28($sp)
.L800B6A38:
/* B7638 800B6A38 10000001 */  b          .L800B6A40
/* B763C 800B6A3C 00000000 */   nop
.L800B6A40:
/* B7640 800B6A40 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7644 800B6A44 27BD0030 */  addiu      $sp, $sp, 0x30
/* B7648 800B6A48 03E00008 */  jr         $ra
/* B764C 800B6A4C 00000000 */   nop

glabel func_800B6A50
/* B7650 800B6A50 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B7654 800B6A54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7658 800B6A58 AFA40038 */  sw         $a0, 0x38($sp)
/* B765C 800B6A5C AFB00018 */  sw         $s0, 0x18($sp)
/* B7660 800B6A60 AFA0002C */  sw         $zero, 0x2c($sp)
/* B7664 800B6A64 AFA00028 */  sw         $zero, 0x28($sp)
/* B7668 800B6A68 0C02E2BC */  jal        func_800B8AF0
/* B766C 800B6A6C 00000000 */   nop
/* B7670 800B6A70 AFA20034 */  sw         $v0, 0x34($sp)
/* B7674 800B6A74 8FAE0034 */  lw         $t6, 0x34($sp)
/* B7678 800B6A78 3C01801B */  lui        $at, %hi(D_801A9E10)
/* B767C 800B6A7C 95CF0002 */  lhu        $t7, 2($t6)
/* B7680 800B6A80 A42F9E10 */  sh         $t7, %lo(D_801A9E10)($at)
/* B7684 800B6A84 3C18801B */  lui        $t8, %hi(D_801A9E10)
/* B7688 800B6A88 97189E10 */  lhu        $t8, %lo(D_801A9E10)($t8)
/* B768C 800B6A8C 17000004 */  bnez       $t8, .L800B6AA0
/* B7690 800B6A90 00000000 */   nop
/* B7694 800B6A94 24190001 */  addiu      $t9, $zero, 1
/* B7698 800B6A98 3C01801B */  lui        $at, %hi(D_801A9E10)
/* B769C 800B6A9C A4399E10 */  sh         $t9, %lo(D_801A9E10)($at)
.L800B6AA0:
/* B76A0 800B6AA0 8FA80038 */  lw         $t0, 0x38($sp)
/* B76A4 800B6AA4 AFA80030 */  sw         $t0, 0x30($sp)
.L800B6AA8:
/* B76A8 800B6AA8 8FA90030 */  lw         $t1, 0x30($sp)
/* B76AC 800B6AAC 27A5002C */  addiu      $a1, $sp, 0x2c
/* B76B0 800B6AB0 24060001 */  addiu      $a2, $zero, 1
/* B76B4 800B6AB4 0C025D30 */  jal        func_800974C0
/* B76B8 800B6AB8 8D24000C */   lw        $a0, 0xc($t1)
/* B76BC 800B6ABC 8FAA002C */  lw         $t2, 0x2c($sp)
/* B76C0 800B6AC0 2401000D */  addiu      $at, $zero, 0xd
/* B76C4 800B6AC4 95500000 */  lhu        $s0, ($t2)
/* B76C8 800B6AC8 12010006 */  beq        $s0, $at, .L800B6AE4
/* B76CC 800B6ACC 00000000 */   nop
/* B76D0 800B6AD0 2401000E */  addiu      $at, $zero, 0xe
/* B76D4 800B6AD4 1201004E */  beq        $s0, $at, .L800B6C10
/* B76D8 800B6AD8 00000000 */   nop
/* B76DC 800B6ADC 10000050 */  b          .L800B6C20
/* B76E0 800B6AE0 00000000 */   nop
.L800B6AE4:
/* B76E4 800B6AE4 0C02C130 */  jal        func_800B04C0
/* B76E8 800B6AE8 00000000 */   nop
/* B76EC 800B6AEC 3C0B801B */  lui        $t3, %hi(D_801A9E10)
/* B76F0 800B6AF0 956B9E10 */  lhu        $t3, %lo(D_801A9E10)($t3)
/* B76F4 800B6AF4 3C01801B */  lui        $at, %hi(D_801A9E10)
/* B76F8 800B6AF8 256CFFFF */  addiu      $t4, $t3, -1
/* B76FC 800B6AFC A42C9E10 */  sh         $t4, %lo(D_801A9E10)($at)
/* B7700 800B6B00 3C0D801B */  lui        $t5, %hi(D_801A9E10)
/* B7704 800B6B04 95AD9E10 */  lhu        $t5, %lo(D_801A9E10)($t5)
/* B7708 800B6B08 15A00011 */  bnez       $t5, .L800B6B50
/* B770C 800B6B0C 00000000 */   nop
/* B7710 800B6B10 0C02E2BC */  jal        func_800B8AF0
/* B7714 800B6B14 00000000 */   nop
/* B7718 800B6B18 AFA20034 */  sw         $v0, 0x34($sp)
/* B771C 800B6B1C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B7720 800B6B20 8DCF0010 */  lw         $t7, 0x10($t6)
/* B7724 800B6B24 11E00006 */  beqz       $t7, .L800B6B40
/* B7728 800B6B28 00000000 */   nop
/* B772C 800B6B2C 8FB80034 */  lw         $t8, 0x34($sp)
/* B7730 800B6B30 00003025 */  or         $a2, $zero, $zero
/* B7734 800B6B34 8F040010 */  lw         $a0, 0x10($t8)
/* B7738 800B6B38 0C025C40 */  jal        func_80097100
/* B773C 800B6B3C 8F050014 */   lw        $a1, 0x14($t8)
.L800B6B40:
/* B7740 800B6B40 8FB90034 */  lw         $t9, 0x34($sp)
/* B7744 800B6B44 3C01801B */  lui        $at, %hi(D_801A9E10)
/* B7748 800B6B48 97280002 */  lhu        $t0, 2($t9)
/* B774C 800B6B4C A4289E10 */  sh         $t0, %lo(D_801A9E10)($at)
.L800B6B50:
/* B7750 800B6B50 3C09801A */  lui        $t1, %hi(D_801A428C)
/* B7754 800B6B54 8D29428C */  lw         $t1, %lo(D_801A428C)($t1)
/* B7758 800B6B58 3C01801A */  lui        $at, %hi(D_801A428C)
/* B775C 800B6B5C 252A0001 */  addiu      $t2, $t1, 1
/* B7760 800B6B60 AC2A428C */  sw         $t2, %lo(D_801A428C)($at)
/* B7764 800B6B64 8FAB0028 */  lw         $t3, 0x28($sp)
/* B7768 800B6B68 1160000C */  beqz       $t3, .L800B6B9C
/* B776C 800B6B6C 00000000 */   nop
/* B7770 800B6B70 0C02923C */  jal        func_800A48F0
/* B7774 800B6B74 00000000 */   nop
/* B7778 800B6B78 AFA20024 */  sw         $v0, 0x24($sp)
/* B777C 800B6B7C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B7780 800B6B80 240E0000 */  addiu      $t6, $zero, 0
/* B7784 800B6B84 3C01801A */  lui        $at, %hi(D_801A4280)
/* B7788 800B6B88 AC2E4280 */  sw         $t6, %lo(D_801A4280)($at)
/* B778C 800B6B8C 3C01801A */  lui        $at, %hi(D_801A4284)
/* B7790 800B6B90 01807825 */  or         $t7, $t4, $zero
/* B7794 800B6B94 AC2F4284 */  sw         $t7, %lo(D_801A4284)($at)
/* B7798 800B6B98 AFA00028 */  sw         $zero, 0x28($sp)
.L800B6B9C:
/* B779C 800B6B9C 3C0D801A */  lui        $t5, %hi(D_801A4288)
/* B77A0 800B6BA0 8DAD4288 */  lw         $t5, %lo(D_801A4288)($t5)
/* B77A4 800B6BA4 AFAD0024 */  sw         $t5, 0x24($sp)
/* B77A8 800B6BA8 0C02923C */  jal        func_800A48F0
/* B77AC 800B6BAC 00000000 */   nop
/* B77B0 800B6BB0 3C01801A */  lui        $at, %hi(D_801A4288)
/* B77B4 800B6BB4 AC224288 */  sw         $v0, %lo(D_801A4288)($at)
/* B77B8 800B6BB8 3C18801A */  lui        $t8, %hi(D_801A4288)
/* B77BC 800B6BBC 8F184288 */  lw         $t8, %lo(D_801A4288)($t8)
/* B77C0 800B6BC0 8FB90024 */  lw         $t9, 0x24($sp)
/* B77C4 800B6BC4 03194023 */  subu       $t0, $t8, $t9
/* B77C8 800B6BC8 AFA80024 */  sw         $t0, 0x24($sp)
/* B77CC 800B6BCC 8FA90024 */  lw         $t1, 0x24($sp)
/* B77D0 800B6BD0 3C0D801A */  lui        $t5, %hi(D_801A4284)
/* B77D4 800B6BD4 8DAD4284 */  lw         $t5, %lo(D_801A4284)($t5)
/* B77D8 800B6BD8 01205825 */  or         $t3, $t1, $zero
/* B77DC 800B6BDC 3C0C801A */  lui        $t4, %hi(D_801A4280)
/* B77E0 800B6BE0 016D7821 */  addu       $t7, $t3, $t5
/* B77E4 800B6BE4 8D8C4280 */  lw         $t4, %lo(D_801A4280)($t4)
/* B77E8 800B6BE8 240A0000 */  addiu      $t2, $zero, 0
/* B77EC 800B6BEC 01ED082B */  sltu       $at, $t7, $t5
/* B77F0 800B6BF0 002A7021 */  addu       $t6, $at, $t2
/* B77F4 800B6BF4 3C01801A */  lui        $at, %hi(D_801A4280)
/* B77F8 800B6BF8 01CC7021 */  addu       $t6, $t6, $t4
/* B77FC 800B6BFC AC2E4280 */  sw         $t6, %lo(D_801A4280)($at)
/* B7800 800B6C00 3C01801A */  lui        $at, %hi(D_801A4284)
/* B7804 800B6C04 AC2F4284 */  sw         $t7, %lo(D_801A4284)($at)
/* B7808 800B6C08 10000007 */  b          .L800B6C28
/* B780C 800B6C0C 00000000 */   nop
.L800B6C10:
/* B7810 800B6C10 0C02BADE */  jal        func_800AEB78
/* B7814 800B6C14 00000000 */   nop
/* B7818 800B6C18 10000003 */  b          .L800B6C28
/* B781C 800B6C1C 00000000 */   nop
.L800B6C20:
/* B7820 800B6C20 10000001 */  b          .L800B6C28
/* B7824 800B6C24 00000000 */   nop
.L800B6C28:
/* B7828 800B6C28 1000FF9F */  b          .L800B6AA8
/* B782C 800B6C2C 00000000 */   nop
/* B7830 800B6C30 10000001 */  b          .L800B6C38
/* B7834 800B6C34 00000000 */   nop
.L800B6C38:
/* B7838 800B6C38 8FBF001C */  lw         $ra, 0x1c($sp)
/* B783C 800B6C3C 8FB00018 */  lw         $s0, 0x18($sp)
/* B7840 800B6C40 27BD0038 */  addiu      $sp, $sp, 0x38
/* B7844 800B6C44 03E00008 */  jr         $ra
/* B7848 800B6C48 00000000 */   nop
/* B784C 800B6C4C 00000000 */  nop
