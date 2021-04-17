.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C6700
/* C7300 800C6700 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C7304 800C6704 3C0E8014 */  lui        $t6, %hi(D_801458D0)
/* C7308 800C6708 AFBF0014 */  sw         $ra, 0x14($sp)
/* C730C 800C670C AFA40020 */  sw         $a0, 0x20($sp)
/* C7310 800C6710 25CE58D0 */  addiu      $t6, $t6, %lo(D_801458D0)
/* C7314 800C6714 AFAE001C */  sw         $t6, 0x1c($sp)
/* C7318 800C6718 01C02825 */  or         $a1, $t6, $zero
/* C731C 800C671C 8FA40020 */  lw         $a0, 0x20($sp)
/* C7320 800C6720 0C033B70 */  jal        func_800CEDC0
/* C7324 800C6724 24060040 */   addiu     $a2, $zero, 0x40
/* C7328 800C6728 8FAF001C */  lw         $t7, 0x1c($sp)
/* C732C 800C672C 8DF80010 */  lw         $t8, 0x10($t7)
/* C7330 800C6730 13000005 */  beqz       $t8, .L800C6748
/* C7334 800C6734 00000000 */   nop
/* C7338 800C6738 0C030C38 */  jal        func_800C30E0
/* C733C 800C673C 03002025 */   or        $a0, $t8, $zero
/* C7340 800C6740 8FB9001C */  lw         $t9, 0x1c($sp)
/* C7344 800C6744 AF220010 */  sw         $v0, 0x10($t9)
.L800C6748:
/* C7348 800C6748 8FA8001C */  lw         $t0, 0x1c($sp)
/* C734C 800C674C 8D090018 */  lw         $t1, 0x18($t0)
/* C7350 800C6750 11200005 */  beqz       $t1, .L800C6768
/* C7354 800C6754 00000000 */   nop
/* C7358 800C6758 0C030C38 */  jal        func_800C30E0
/* C735C 800C675C 01202025 */   or        $a0, $t1, $zero
/* C7360 800C6760 8FAA001C */  lw         $t2, 0x1c($sp)
/* C7364 800C6764 AD420018 */  sw         $v0, 0x18($t2)
.L800C6768:
/* C7368 800C6768 8FAB001C */  lw         $t3, 0x1c($sp)
/* C736C 800C676C 8D6C0020 */  lw         $t4, 0x20($t3)
/* C7370 800C6770 11800005 */  beqz       $t4, .L800C6788
/* C7374 800C6774 00000000 */   nop
/* C7378 800C6778 0C030C38 */  jal        func_800C30E0
/* C737C 800C677C 01802025 */   or        $a0, $t4, $zero
/* C7380 800C6780 8FAD001C */  lw         $t5, 0x1c($sp)
/* C7384 800C6784 ADA20020 */  sw         $v0, 0x20($t5)
.L800C6788:
/* C7388 800C6788 8FAE001C */  lw         $t6, 0x1c($sp)
/* C738C 800C678C 8DCF0028 */  lw         $t7, 0x28($t6)
/* C7390 800C6790 11E00005 */  beqz       $t7, .L800C67A8
/* C7394 800C6794 00000000 */   nop
/* C7398 800C6798 0C030C38 */  jal        func_800C30E0
/* C739C 800C679C 01E02025 */   or        $a0, $t7, $zero
/* C73A0 800C67A0 8FB8001C */  lw         $t8, 0x1c($sp)
/* C73A4 800C67A4 AF020028 */  sw         $v0, 0x28($t8)
.L800C67A8:
/* C73A8 800C67A8 8FB9001C */  lw         $t9, 0x1c($sp)
/* C73AC 800C67AC 8F28002C */  lw         $t0, 0x2c($t9)
/* C73B0 800C67B0 11000005 */  beqz       $t0, .L800C67C8
/* C73B4 800C67B4 00000000 */   nop
/* C73B8 800C67B8 0C030C38 */  jal        func_800C30E0
/* C73BC 800C67BC 01002025 */   or        $a0, $t0, $zero
/* C73C0 800C67C0 8FA9001C */  lw         $t1, 0x1c($sp)
/* C73C4 800C67C4 AD22002C */  sw         $v0, 0x2c($t1)
.L800C67C8:
/* C73C8 800C67C8 8FAA001C */  lw         $t2, 0x1c($sp)
/* C73CC 800C67CC 8D4B0030 */  lw         $t3, 0x30($t2)
/* C73D0 800C67D0 11600005 */  beqz       $t3, .L800C67E8
/* C73D4 800C67D4 00000000 */   nop
/* C73D8 800C67D8 0C030C38 */  jal        func_800C30E0
/* C73DC 800C67DC 01602025 */   or        $a0, $t3, $zero
/* C73E0 800C67E0 8FAC001C */  lw         $t4, 0x1c($sp)
/* C73E4 800C67E4 AD820030 */  sw         $v0, 0x30($t4)
.L800C67E8:
/* C73E8 800C67E8 8FAD001C */  lw         $t5, 0x1c($sp)
/* C73EC 800C67EC 8DAE0038 */  lw         $t6, 0x38($t5)
/* C73F0 800C67F0 11C00005 */  beqz       $t6, .L800C6808
/* C73F4 800C67F4 00000000 */   nop
/* C73F8 800C67F8 0C030C38 */  jal        func_800C30E0
/* C73FC 800C67FC 01C02025 */   or        $a0, $t6, $zero
/* C7400 800C6800 8FAF001C */  lw         $t7, 0x1c($sp)
/* C7404 800C6804 ADE20038 */  sw         $v0, 0x38($t7)
.L800C6808:
/* C7408 800C6808 8FBF0014 */  lw         $ra, 0x14($sp)
/* C740C 800C680C 8FA2001C */  lw         $v0, 0x1c($sp)
/* C7410 800C6810 27BD0020 */  addiu      $sp, $sp, 0x20
/* C7414 800C6814 03E00008 */  jr         $ra
/* C7418 800C6818 00000000 */   nop

glabel func_800C681C
/* C741C 800C681C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C7420 800C6820 AFBF0014 */  sw         $ra, 0x14($sp)
/* C7424 800C6824 AFA40020 */  sw         $a0, 0x20($sp)
/* C7428 800C6828 0C0319C0 */  jal        func_800C6700
/* C742C 800C682C 8FA40020 */   lw        $a0, 0x20($sp)
/* C7430 800C6830 AFA2001C */  sw         $v0, 0x1c($sp)
/* C7434 800C6834 8FAE001C */  lw         $t6, 0x1c($sp)
/* C7438 800C6838 8DCF0004 */  lw         $t7, 4($t6)
/* C743C 800C683C 31F80001 */  andi       $t8, $t7, 1
/* C7440 800C6840 13000017 */  beqz       $t8, .L800C68A0
/* C7444 800C6844 00000000 */   nop
/* C7448 800C6848 8DD90038 */  lw         $t9, 0x38($t6)
/* C744C 800C684C 2401FFFE */  addiu      $at, $zero, -2
/* C7450 800C6850 ADD90018 */  sw         $t9, 0x18($t6)
/* C7454 800C6854 8FA8001C */  lw         $t0, 0x1c($sp)
/* C7458 800C6858 8D09003C */  lw         $t1, 0x3c($t0)
/* C745C 800C685C AD09001C */  sw         $t1, 0x1c($t0)
/* C7460 800C6860 8FAA0020 */  lw         $t2, 0x20($sp)
/* C7464 800C6864 8D4B0004 */  lw         $t3, 4($t2)
/* C7468 800C6868 01616024 */  and        $t4, $t3, $at
/* C746C 800C686C AD4C0004 */  sw         $t4, 4($t2)
/* C7470 800C6870 8FAD001C */  lw         $t5, 0x1c($sp)
/* C7474 800C6874 8DAF0004 */  lw         $t7, 4($t5)
/* C7478 800C6878 31F80004 */  andi       $t8, $t7, 4
/* C747C 800C687C 13000008 */  beqz       $t8, .L800C68A0
/* C7480 800C6880 00000000 */   nop
/* C7484 800C6884 8FB90020 */  lw         $t9, 0x20($sp)
/* C7488 800C6888 3C01A000 */  lui        $at, 0xa000
/* C748C 800C688C 8F2E0038 */  lw         $t6, 0x38($t9)
/* C7490 800C6890 25C90BFC */  addiu      $t1, $t6, 0xbfc
/* C7494 800C6894 01214025 */  or         $t0, $t1, $at
/* C7498 800C6898 8D0B0000 */  lw         $t3, ($t0)
/* C749C 800C689C ADAB0010 */  sw         $t3, 0x10($t5)
.L800C68A0:
/* C74A0 800C68A0 8FA4001C */  lw         $a0, 0x1c($sp)
/* C74A4 800C68A4 0C030C58 */  jal        func_800C3160
/* C74A8 800C68A8 24050040 */   addiu     $a1, $zero, 0x40
/* C74AC 800C68AC 0C034BE4 */  jal        func_800D2F90
/* C74B0 800C68B0 24042B00 */   addiu     $a0, $zero, 0x2b00
/* C74B4 800C68B4 3C040400 */  lui        $a0, 0x400
/* C74B8 800C68B8 0C034F5C */  jal        func_800D3D70
/* C74BC 800C68BC 34841000 */   ori       $a0, $a0, 0x1000
/* C74C0 800C68C0 2401FFFF */  addiu      $at, $zero, -1
/* C74C4 800C68C4 14410007 */  bne        $v0, $at, .L800C68E4
/* C74C8 800C68C8 00000000 */   nop
.L800C68CC:
/* C74CC 800C68CC 3C040400 */  lui        $a0, 0x400
/* C74D0 800C68D0 0C034F5C */  jal        func_800D3D70
/* C74D4 800C68D4 34841000 */   ori       $a0, $a0, 0x1000
/* C74D8 800C68D8 2401FFFF */  addiu      $at, $zero, -1
/* C74DC 800C68DC 1041FFFB */  beq        $v0, $at, .L800C68CC
/* C74E0 800C68E0 00000000 */   nop
.L800C68E4:
/* C74E4 800C68E4 3C050400 */  lui        $a1, 0x400
/* C74E8 800C68E8 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* C74EC 800C68EC 24040001 */  addiu      $a0, $zero, 1
/* C74F0 800C68F0 8FA6001C */  lw         $a2, 0x1c($sp)
/* C74F4 800C68F4 0C031A8C */  jal        func_800C6A30
/* C74F8 800C68F8 24070040 */   addiu     $a3, $zero, 0x40
/* C74FC 800C68FC 2401FFFF */  addiu      $at, $zero, -1
/* C7500 800C6900 1441000A */  bne        $v0, $at, .L800C692C
/* C7504 800C6904 00000000 */   nop
.L800C6908:
/* C7508 800C6908 3C050400 */  lui        $a1, 0x400
/* C750C 800C690C 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* C7510 800C6910 24040001 */  addiu      $a0, $zero, 1
/* C7514 800C6914 8FA6001C */  lw         $a2, 0x1c($sp)
/* C7518 800C6918 0C031A8C */  jal        func_800C6A30
/* C751C 800C691C 24070040 */   addiu     $a3, $zero, 0x40
/* C7520 800C6920 2401FFFF */  addiu      $at, $zero, -1
/* C7524 800C6924 1041FFF8 */  beq        $v0, $at, .L800C6908
/* C7528 800C6928 00000000 */   nop
.L800C692C:
/* C752C 800C692C 0C0336C0 */  jal        func_800CDB00
/* C7530 800C6930 00000000 */   nop
/* C7534 800C6934 10400005 */  beqz       $v0, .L800C694C
/* C7538 800C6938 00000000 */   nop
.L800C693C:
/* C753C 800C693C 0C0336C0 */  jal        func_800CDB00
/* C7540 800C6940 00000000 */   nop
/* C7544 800C6944 1440FFFD */  bnez       $v0, .L800C693C
/* C7548 800C6948 00000000 */   nop
.L800C694C:
/* C754C 800C694C 8FAC001C */  lw         $t4, 0x1c($sp)
/* C7550 800C6950 3C050400 */  lui        $a1, 0x400
/* C7554 800C6954 34A51000 */  ori        $a1, $a1, 0x1000
/* C7558 800C6958 24040001 */  addiu      $a0, $zero, 1
/* C755C 800C695C 8D860008 */  lw         $a2, 8($t4)
/* C7560 800C6960 0C031A8C */  jal        func_800C6A30
/* C7564 800C6964 8D87000C */   lw        $a3, 0xc($t4)
/* C7568 800C6968 2401FFFF */  addiu      $at, $zero, -1
/* C756C 800C696C 1441000B */  bne        $v0, $at, .L800C699C
/* C7570 800C6970 00000000 */   nop
.L800C6974:
/* C7574 800C6974 8FAA001C */  lw         $t2, 0x1c($sp)
/* C7578 800C6978 3C050400 */  lui        $a1, 0x400
/* C757C 800C697C 34A51000 */  ori        $a1, $a1, 0x1000
/* C7580 800C6980 24040001 */  addiu      $a0, $zero, 1
/* C7584 800C6984 8D460008 */  lw         $a2, 8($t2)
/* C7588 800C6988 0C031A8C */  jal        func_800C6A30
/* C758C 800C698C 8D47000C */   lw        $a3, 0xc($t2)
/* C7590 800C6990 2401FFFF */  addiu      $at, $zero, -1
/* C7594 800C6994 1041FFF7 */  beq        $v0, $at, .L800C6974
/* C7598 800C6998 00000000 */   nop
.L800C699C:
/* C759C 800C699C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C75A0 800C69A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* C75A4 800C69A4 03E00008 */  jr         $ra
/* C75A8 800C69A8 00000000 */   nop

glabel func_800C69AC
/* C75AC 800C69AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C75B0 800C69B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* C75B4 800C69B4 0C0336C0 */  jal        func_800CDB00
/* C75B8 800C69B8 AFA40018 */   sw        $a0, 0x18($sp)
/* C75BC 800C69BC 10400005 */  beqz       $v0, .L800C69D4
/* C75C0 800C69C0 00000000 */   nop
.L800C69C4:
/* C75C4 800C69C4 0C0336C0 */  jal        func_800CDB00
/* C75C8 800C69C8 00000000 */   nop
/* C75CC 800C69CC 1440FFFD */  bnez       $v0, .L800C69C4
/* C75D0 800C69D0 00000000 */   nop
.L800C69D4:
/* C75D4 800C69D4 0C034BE4 */  jal        func_800D2F90
/* C75D8 800C69D8 24040125 */   addiu     $a0, $zero, 0x125
/* C75DC 800C69DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C75E0 800C69E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* C75E4 800C69E4 03E00008 */  jr         $ra
/* C75E8 800C69E8 00000000 */   nop
/* C75EC 800C69EC 00000000 */  nop
