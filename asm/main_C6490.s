.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C5890
/* C6490 800C5890 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C6494 800C5894 AFBF0014 */  sw         $ra, 0x14($sp)
/* C6498 800C5898 240E0003 */  addiu      $t6, $zero, 3
/* C649C 800C589C AFA40040 */  sw         $a0, 0x40($sp)
/* C64A0 800C58A0 AFA50044 */  sw         $a1, 0x44($sp)
/* C64A4 800C58A4 AFA0003C */  sw         $zero, 0x3c($sp)
/* C64A8 800C58A8 A3A0001F */  sb         $zero, 0x1f($sp)
/* C64AC 800C58AC 0C02FF20 */  jal        func_800BFC80
/* C64B0 800C58B0 AFAE0018 */   sw        $t6, 0x18($sp)
.L800C58B4:
/* C64B4 800C58B4 0C03168C */  jal        func_800C5A30
/* C64B8 800C58B8 00002025 */   or        $a0, $zero, $zero
/* C64BC 800C58BC 3C058014 */  lui        $a1, %hi(D_80145890)
/* C64C0 800C58C0 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* C64C4 800C58C4 0C030F00 */  jal        func_800C3C00
/* C64C8 800C58C8 24040001 */   addiu     $a0, $zero, 1
/* C64CC 800C58CC AFA2003C */  sw         $v0, 0x3c($sp)
/* C64D0 800C58D0 8FA40040 */  lw         $a0, 0x40($sp)
/* C64D4 800C58D4 27A50038 */  addiu      $a1, $sp, 0x38
/* C64D8 800C58D8 0C02F85C */  jal        func_800BE170
/* C64DC 800C58DC 24060001 */   addiu     $a2, $zero, 1
/* C64E0 800C58E0 3C058014 */  lui        $a1, %hi(D_80145890)
/* C64E4 800C58E4 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* C64E8 800C58E8 0C030F00 */  jal        func_800C3C00
/* C64EC 800C58EC 00002025 */   or        $a0, $zero, $zero
/* C64F0 800C58F0 AFA2003C */  sw         $v0, 0x3c($sp)
/* C64F4 800C58F4 8FA40040 */  lw         $a0, 0x40($sp)
/* C64F8 800C58F8 27A50038 */  addiu      $a1, $sp, 0x38
/* C64FC 800C58FC 0C02F85C */  jal        func_800BE170
/* C6500 800C5900 24060001 */   addiu     $a2, $zero, 1
/* C6504 800C5904 27A40037 */  addiu      $a0, $sp, 0x37
/* C6508 800C5908 0C0316C0 */  jal        func_800C5B00
/* C650C 800C590C 27A50024 */   addiu     $a1, $sp, 0x24
/* C6510 800C5910 3C0F8014 */  lui        $t7, %hi(D_80145421)
/* C6514 800C5914 91EF5421 */  lbu        $t7, %lo(D_80145421)($t7)
/* C6518 800C5918 AFA00020 */  sw         $zero, 0x20($sp)
/* C651C 800C591C 19E00014 */  blez       $t7, .L800C5970
/* C6520 800C5920 00000000 */   nop
.L800C5924:
/* C6524 800C5924 8FB80020 */  lw         $t8, 0x20($sp)
/* C6528 800C5928 0018C880 */  sll        $t9, $t8, 2
/* C652C 800C592C 03B94021 */  addu       $t0, $sp, $t9
/* C6530 800C5930 91080026 */  lbu        $t0, 0x26($t0)
/* C6534 800C5934 31090004 */  andi       $t1, $t0, 4
/* C6538 800C5938 15200005 */  bnez       $t1, .L800C5950
/* C653C 800C593C 00000000 */   nop
/* C6540 800C5940 8FAA0018 */  lw         $t2, 0x18($sp)
/* C6544 800C5944 254BFFFF */  addiu      $t3, $t2, -1
/* C6548 800C5948 10000009 */  b          .L800C5970
/* C654C 800C594C AFAB0018 */   sw        $t3, 0x18($sp)
.L800C5950:
/* C6550 800C5950 8FAC0020 */  lw         $t4, 0x20($sp)
/* C6554 800C5954 3C0E8014 */  lui        $t6, %hi(D_80145421)
/* C6558 800C5958 91CE5421 */  lbu        $t6, %lo(D_80145421)($t6)
/* C655C 800C595C 258D0001 */  addiu      $t5, $t4, 1
/* C6560 800C5960 AFAD0020 */  sw         $t5, 0x20($sp)
/* C6564 800C5964 01AE082A */  slt        $at, $t5, $t6
/* C6568 800C5968 1420FFEE */  bnez       $at, .L800C5924
/* C656C 800C596C 00000000 */   nop
.L800C5970:
/* C6570 800C5970 3C0F8014 */  lui        $t7, %hi(D_80145421)
/* C6574 800C5974 91EF5421 */  lbu        $t7, %lo(D_80145421)($t7)
/* C6578 800C5978 8FB80020 */  lw         $t8, 0x20($sp)
/* C657C 800C597C 15F80002 */  bne        $t7, $t8, .L800C5988
/* C6580 800C5980 00000000 */   nop
/* C6584 800C5984 AFA00018 */  sw         $zero, 0x18($sp)
.L800C5988:
/* C6588 800C5988 8FB90018 */  lw         $t9, 0x18($sp)
/* C658C 800C598C 1F20FFC9 */  bgtz       $t9, .L800C58B4
/* C6590 800C5990 00000000 */   nop
/* C6594 800C5994 3C088014 */  lui        $t0, %hi(D_80145421)
/* C6598 800C5998 91085421 */  lbu        $t0, %lo(D_80145421)($t0)
/* C659C 800C599C AFA00020 */  sw         $zero, 0x20($sp)
/* C65A0 800C59A0 19000019 */  blez       $t0, .L800C5A08
/* C65A4 800C59A4 00000000 */   nop
.L800C59A8:
/* C65A8 800C59A8 8FA90020 */  lw         $t1, 0x20($sp)
/* C65AC 800C59AC 27AB0024 */  addiu      $t3, $sp, 0x24
/* C65B0 800C59B0 00095080 */  sll        $t2, $t1, 2
/* C65B4 800C59B4 014B6021 */  addu       $t4, $t2, $t3
/* C65B8 800C59B8 918D0003 */  lbu        $t5, 3($t4)
/* C65BC 800C59BC 15A0000A */  bnez       $t5, .L800C59E8
/* C65C0 800C59C0 00000000 */   nop
/* C65C4 800C59C4 918E0002 */  lbu        $t6, 2($t4)
/* C65C8 800C59C8 31CF0001 */  andi       $t7, $t6, 1
/* C65CC 800C59CC 11E00006 */  beqz       $t7, .L800C59E8
/* C65D0 800C59D0 00000000 */   nop
/* C65D4 800C59D4 93B8001F */  lbu        $t8, 0x1f($sp)
/* C65D8 800C59D8 24190001 */  addiu      $t9, $zero, 1
/* C65DC 800C59DC 01394004 */  sllv       $t0, $t9, $t1
/* C65E0 800C59E0 03085025 */  or         $t2, $t8, $t0
/* C65E4 800C59E4 A3AA001F */  sb         $t2, 0x1f($sp)
.L800C59E8:
/* C65E8 800C59E8 8FAB0020 */  lw         $t3, 0x20($sp)
/* C65EC 800C59EC 3C0C8014 */  lui        $t4, %hi(D_80145421)
/* C65F0 800C59F0 918C5421 */  lbu        $t4, %lo(D_80145421)($t4)
/* C65F4 800C59F4 256D0001 */  addiu      $t5, $t3, 1
/* C65F8 800C59F8 AFAD0020 */  sw         $t5, 0x20($sp)
/* C65FC 800C59FC 01AC082A */  slt        $at, $t5, $t4
/* C6600 800C5A00 1420FFE9 */  bnez       $at, .L800C59A8
/* C6604 800C5A04 00000000 */   nop
.L800C5A08:
/* C6608 800C5A08 0C02FF31 */  jal        func_800BFCC4
/* C660C 800C5A0C 00000000 */   nop
/* C6610 800C5A10 93AE001F */  lbu        $t6, 0x1f($sp)
/* C6614 800C5A14 8FAF0044 */  lw         $t7, 0x44($sp)
/* C6618 800C5A18 A1EE0000 */  sb         $t6, ($t7)
/* C661C 800C5A1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C6620 800C5A20 8FA2003C */  lw         $v0, 0x3c($sp)
/* C6624 800C5A24 27BD0040 */  addiu      $sp, $sp, 0x40
/* C6628 800C5A28 03E00008 */  jr         $ra
/* C662C 800C5A2C 00000000 */   nop

glabel func_800C5A30
/* C6630 800C5A30 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C6634 800C5A34 3C0D8014 */  lui        $t5, %hi(D_80145421)
/* C6638 800C5A38 91AD5421 */  lbu        $t5, %lo(D_80145421)($t5)
/* C663C 800C5A3C 308400FF */  andi       $a0, $a0, 0xff
/* C6640 800C5A40 3C018014 */  lui        $at, %hi(D_80145420)
/* C6644 800C5A44 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* C6648 800C5A48 A0245420 */  sb         $a0, %lo(D_80145420)($at)
/* C664C 800C5A4C 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* C6650 800C5A50 3C018014 */  lui        $at, 0x8014
/* C6654 800C5A54 240F0001 */  addiu      $t7, $zero, 1
/* C6658 800C5A58 241800FF */  addiu      $t8, $zero, 0xff
/* C665C 800C5A5C 24190001 */  addiu      $t9, $zero, 1
/* C6660 800C5A60 24080003 */  addiu      $t0, $zero, 3
/* C6664 800C5A64 240900FF */  addiu      $t1, $zero, 0xff
/* C6668 800C5A68 240A00FF */  addiu      $t2, $zero, 0xff
/* C666C 800C5A6C 240B00FF */  addiu      $t3, $zero, 0xff
/* C6670 800C5A70 240C00FF */  addiu      $t4, $zero, 0xff
/* C6674 800C5A74 AFAE000C */  sw         $t6, 0xc($sp)
/* C6678 800C5A78 AC2F58CC */  sw         $t7, 0x58cc($at)
/* C667C 800C5A7C A3B80004 */  sb         $t8, 4($sp)
/* C6680 800C5A80 A3B90005 */  sb         $t9, 5($sp)
/* C6684 800C5A84 A3A80006 */  sb         $t0, 6($sp)
/* C6688 800C5A88 A3A40007 */  sb         $a0, 7($sp)
/* C668C 800C5A8C A3A90008 */  sb         $t1, 8($sp)
/* C6690 800C5A90 A3AA0009 */  sb         $t2, 9($sp)
/* C6694 800C5A94 A3AB000A */  sb         $t3, 0xa($sp)
/* C6698 800C5A98 A3AC000B */  sb         $t4, 0xb($sp)
/* C669C 800C5A9C 19A00013 */  blez       $t5, .L800C5AEC
/* C66A0 800C5AA0 AFA00000 */   sw        $zero, ($sp)
.L800C5AA4:
/* C66A4 800C5AA4 27AF0004 */  addiu      $t7, $sp, 4
/* C66A8 800C5AA8 8DE10000 */  lw         $at, ($t7)
/* C66AC 800C5AAC 8FAE000C */  lw         $t6, 0xc($sp)
/* C66B0 800C5AB0 3C0C8014 */  lui        $t4, 0x8014
/* C66B4 800C5AB4 A9C10000 */  swl        $at, ($t6)
/* C66B8 800C5AB8 B9C10003 */  swr        $at, 3($t6)
/* C66BC 800C5ABC 8DF90004 */  lw         $t9, 4($t7)
/* C66C0 800C5AC0 A9D90004 */  swl        $t9, 4($t6)
/* C66C4 800C5AC4 B9D90007 */  swr        $t9, 7($t6)
/* C66C8 800C5AC8 8FAA0000 */  lw         $t2, ($sp)
/* C66CC 800C5ACC 918C5421 */  lbu        $t4, 0x5421($t4)
/* C66D0 800C5AD0 8FA8000C */  lw         $t0, 0xc($sp)
/* C66D4 800C5AD4 254B0001 */  addiu      $t3, $t2, 1
/* C66D8 800C5AD8 016C082A */  slt        $at, $t3, $t4
/* C66DC 800C5ADC 25090008 */  addiu      $t1, $t0, 8
/* C66E0 800C5AE0 AFAB0000 */  sw         $t3, ($sp)
/* C66E4 800C5AE4 1420FFEF */  bnez       $at, .L800C5AA4
/* C66E8 800C5AE8 AFA9000C */   sw        $t1, 0xc($sp)
.L800C5AEC:
/* C66EC 800C5AEC 8FB8000C */  lw         $t8, 0xc($sp)
/* C66F0 800C5AF0 240D00FE */  addiu      $t5, $zero, 0xfe
/* C66F4 800C5AF4 27BD0010 */  addiu      $sp, $sp, 0x10
/* C66F8 800C5AF8 03E00008 */  jr         $ra
/* C66FC 800C5AFC A30D0000 */   sb        $t5, ($t8)

glabel func_800C5B00
/* C6700 800C5B00 3C0F8014 */  lui        $t7, %hi(D_80145421)
/* C6704 800C5B04 91EF5421 */  lbu        $t7, %lo(D_80145421)($t7)
/* C6708 800C5B08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C670C 800C5B0C 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* C6710 800C5B10 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* C6714 800C5B14 A3A00007 */  sb         $zero, 7($sp)
/* C6718 800C5B18 AFAE0014 */  sw         $t6, 0x14($sp)
/* C671C 800C5B1C 19E00028 */  blez       $t7, .L800C5BC0
/* C6720 800C5B20 AFA00008 */   sw        $zero, 8($sp)
.L800C5B24:
/* C6724 800C5B24 8FB90014 */  lw         $t9, 0x14($sp)
/* C6728 800C5B28 27B8000C */  addiu      $t8, $sp, 0xc
/* C672C 800C5B2C 8B210000 */  lwl        $at, ($t9)
/* C6730 800C5B30 9B210003 */  lwr        $at, 3($t9)
/* C6734 800C5B34 AF010000 */  sw         $at, ($t8)
/* C6738 800C5B38 8B290004 */  lwl        $t1, 4($t9)
/* C673C 800C5B3C 9B290007 */  lwr        $t1, 7($t9)
/* C6740 800C5B40 AF090004 */  sw         $t1, 4($t8)
/* C6744 800C5B44 93AA000E */  lbu        $t2, 0xe($sp)
/* C6748 800C5B48 314B00C0 */  andi       $t3, $t2, 0xc0
/* C674C 800C5B4C 000B6103 */  sra        $t4, $t3, 4
/* C6750 800C5B50 A0AC0003 */  sb         $t4, 3($a1)
/* C6754 800C5B54 90AD0003 */  lbu        $t5, 3($a1)
/* C6758 800C5B58 15A0000E */  bnez       $t5, .L800C5B94
/* C675C 800C5B5C 00000000 */   nop
/* C6760 800C5B60 93AE0011 */  lbu        $t6, 0x11($sp)
/* C6764 800C5B64 93A80010 */  lbu        $t0, 0x10($sp)
/* C6768 800C5B68 240B0001 */  addiu      $t3, $zero, 1
/* C676C 800C5B6C 000E7A00 */  sll        $t7, $t6, 8
/* C6770 800C5B70 01E8C025 */  or         $t8, $t7, $t0
/* C6774 800C5B74 A4B80000 */  sh         $t8, ($a1)
/* C6778 800C5B78 93B90012 */  lbu        $t9, 0x12($sp)
/* C677C 800C5B7C A0B90002 */  sb         $t9, 2($a1)
/* C6780 800C5B80 8FAA0008 */  lw         $t2, 8($sp)
/* C6784 800C5B84 93A90007 */  lbu        $t1, 7($sp)
/* C6788 800C5B88 014B6004 */  sllv       $t4, $t3, $t2
/* C678C 800C5B8C 012C6825 */  or         $t5, $t1, $t4
/* C6790 800C5B90 A3AD0007 */  sb         $t5, 7($sp)
.L800C5B94:
/* C6794 800C5B94 8FAE0008 */  lw         $t6, 8($sp)
/* C6798 800C5B98 3C198014 */  lui        $t9, %hi(D_80145421)
/* C679C 800C5B9C 93395421 */  lbu        $t9, %lo(D_80145421)($t9)
/* C67A0 800C5BA0 8FA80014 */  lw         $t0, 0x14($sp)
/* C67A4 800C5BA4 25CF0001 */  addiu      $t7, $t6, 1
/* C67A8 800C5BA8 01F9082A */  slt        $at, $t7, $t9
/* C67AC 800C5BAC 25180008 */  addiu      $t8, $t0, 8
/* C67B0 800C5BB0 AFB80014 */  sw         $t8, 0x14($sp)
/* C67B4 800C5BB4 AFAF0008 */  sw         $t7, 8($sp)
/* C67B8 800C5BB8 1420FFDA */  bnez       $at, .L800C5B24
/* C67BC 800C5BBC 24A50004 */   addiu     $a1, $a1, 4
.L800C5BC0:
/* C67C0 800C5BC0 93AB0007 */  lbu        $t3, 7($sp)
/* C67C4 800C5BC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C67C8 800C5BC8 03E00008 */  jr         $ra
/* C67CC 800C5BCC A08B0000 */   sb        $t3, ($a0)

glabel func_800C5BD0
/* C67D0 800C5BD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C67D4 800C5BD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C67D8 800C5BD8 AFA40018 */  sw         $a0, 0x18($sp)
/* C67DC 800C5BDC AFA60020 */  sw         $a2, 0x20($sp)
/* C67E0 800C5BE0 8CAE0008 */  lw         $t6, 8($a1)
/* C67E4 800C5BE4 51C00018 */  beql       $t6, $zero, .L800C5C48
/* C67E8 800C5BE8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C67EC 800C5BEC 0C031FF4 */  jal        func_800C7FD0
/* C67F0 800C5BF0 AFA5001C */   sw        $a1, 0x1c($sp)
/* C67F4 800C5BF4 8FA7001C */  lw         $a3, 0x1c($sp)
/* C67F8 800C5BF8 10400012 */  beqz       $v0, .L800C5C44
/* C67FC 800C5BFC 00403025 */   or        $a2, $v0, $zero
/* C6800 800C5C00 8FAF0018 */  lw         $t7, 0x18($sp)
/* C6804 800C5C04 8CF90008 */  lw         $t9, 8($a3)
/* C6808 800C5C08 240A0007 */  addiu      $t2, $zero, 7
/* C680C 800C5C0C 8DF8001C */  lw         $t8, 0x1c($t7)
/* C6810 800C5C10 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C6814 800C5C14 A44A0008 */  sh         $t2, 8($v0)
/* C6818 800C5C18 24050003 */  addiu      $a1, $zero, 3
/* C681C 800C5C1C 03084821 */  addu       $t1, $t8, $t0
/* C6820 800C5C20 AC490004 */  sw         $t1, 4($v0)
/* C6824 800C5C24 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C6828 800C5C28 AC400000 */  sw         $zero, ($v0)
/* C682C 800C5C2C E444000C */  swc1       $f4, 0xc($v0)
/* C6830 800C5C30 8CEB0008 */  lw         $t3, 8($a3)
/* C6834 800C5C34 8D64000C */  lw         $a0, 0xc($t3)
/* C6838 800C5C38 8C990008 */  lw         $t9, 8($a0)
/* C683C 800C5C3C 0320F809 */  jalr       $t9
/* C6840 800C5C40 00000000 */   nop
.L800C5C44:
/* C6844 800C5C44 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C5C48:
/* C6848 800C5C48 27BD0018 */  addiu      $sp, $sp, 0x18
/* C684C 800C5C4C 03E00008 */  jr         $ra
/* C6850 800C5C50 00000000 */   nop
/* C6854 800C5C54 00000000 */  nop
/* C6858 800C5C58 00000000 */  nop
/* C685C 800C5C5C 00000000 */  nop
