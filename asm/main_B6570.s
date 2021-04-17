.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B5970
/* B6570 800B5970 27BDFB78 */  addiu      $sp, $sp, -0x488
/* B6574 800B5974 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6578 800B5978 AFA40488 */  sw         $a0, 0x488($sp)
/* B657C 800B597C AFA00034 */  sw         $zero, 0x34($sp)
/* B6580 800B5980 0C0290BF */  jal        func_800A42FC
/* B6584 800B5984 8FA40488 */   lw        $a0, 0x488($sp)
/* B6588 800B5988 AFA20480 */  sw         $v0, 0x480($sp)
/* B658C 800B598C 8FAE0480 */  lw         $t6, 0x480($sp)
/* B6590 800B5990 24010002 */  addiu      $at, $zero, 2
/* B6594 800B5994 15C10004 */  bne        $t6, $at, .L800B59A8
/* B6598 800B5998 00000000 */   nop
/* B659C 800B599C 0C029022 */  jal        func_800A4088
/* B65A0 800B59A0 8FA40488 */   lw        $a0, 0x488($sp)
/* B65A4 800B59A4 AFA20480 */  sw         $v0, 0x480($sp)
.L800B59A8:
/* B65A8 800B59A8 8FAF0480 */  lw         $t7, 0x480($sp)
/* B65AC 800B59AC 11E00003 */  beqz       $t7, .L800B59BC
/* B65B0 800B59B0 00000000 */   nop
/* B65B4 800B59B4 100001AA */  b          .L800B6060
/* B65B8 800B59B8 8FA20480 */   lw        $v0, 0x480($sp)
.L800B59BC:
/* B65BC 800B59BC 8FA40488 */  lw         $a0, 0x488($sp)
/* B65C0 800B59C0 0C02D81C */  jal        func_800B6070
/* B65C4 800B59C4 27A50038 */   addiu     $a1, $sp, 0x38
/* B65C8 800B59C8 AFA20480 */  sw         $v0, 0x480($sp)
/* B65CC 800B59CC 8FB80480 */  lw         $t8, 0x480($sp)
/* B65D0 800B59D0 13000003 */  beqz       $t8, .L800B59E0
/* B65D4 800B59D4 00000000 */   nop
/* B65D8 800B59D8 100001A1 */  b          .L800B6060
/* B65DC 800B59DC 8FA20480 */   lw        $v0, 0x480($sp)
.L800B59E0:
/* B65E0 800B59E0 8FB90488 */  lw         $t9, 0x488($sp)
/* B65E4 800B59E4 AFA00484 */  sw         $zero, 0x484($sp)
/* B65E8 800B59E8 8F280050 */  lw         $t0, 0x50($t9)
/* B65EC 800B59EC 190000C9 */  blez       $t0, .L800B5D14
/* B65F0 800B59F0 00000000 */   nop
.L800B59F4:
/* B65F4 800B59F4 8FA90488 */  lw         $t1, 0x488($sp)
/* B65F8 800B59F8 8FAB0484 */  lw         $t3, 0x484($sp)
/* B65FC 800B59FC 27A7025C */  addiu      $a3, $sp, 0x25c
/* B6600 800B5A00 8D2A005C */  lw         $t2, 0x5c($t1)
/* B6604 800B5A04 8D240004 */  lw         $a0, 4($t1)
/* B6608 800B5A08 8D250008 */  lw         $a1, 8($t1)
/* B660C 800B5A0C 0C02E3D8 */  jal        func_800B8F60
/* B6610 800B5A10 014B3021 */   addu      $a2, $t2, $t3
/* B6614 800B5A14 AFA20480 */  sw         $v0, 0x480($sp)
/* B6618 800B5A18 8FAC0480 */  lw         $t4, 0x480($sp)
/* B661C 800B5A1C 11800003 */  beqz       $t4, .L800B5A2C
/* B6620 800B5A20 00000000 */   nop
/* B6624 800B5A24 1000018E */  b          .L800B6060
/* B6628 800B5A28 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5A2C:
/* B662C 800B5A2C 97AD0260 */  lhu        $t5, 0x260($sp)
/* B6630 800B5A30 11A00085 */  beqz       $t5, .L800B5C48
/* B6634 800B5A34 00000000 */   nop
/* B6638 800B5A38 8FAE025C */  lw         $t6, 0x25c($sp)
/* B663C 800B5A3C 11C00082 */  beqz       $t6, .L800B5C48
/* B6640 800B5A40 00000000 */   nop
/* B6644 800B5A44 97AF0262 */  lhu        $t7, 0x262($sp)
/* B6648 800B5A48 A7AF047C */  sh         $t7, 0x47c($sp)
/* B664C 800B5A4C AFA0002C */  sw         $zero, 0x2c($sp)
/* B6650 800B5A50 AFA00028 */  sw         $zero, 0x28($sp)
/* B6654 800B5A54 241800FF */  addiu      $t8, $zero, 0xff
/* B6658 800B5A58 A3B80033 */  sb         $t8, 0x33($sp)
/* B665C 800B5A5C 8FA80488 */  lw         $t0, 0x488($sp)
/* B6660 800B5A60 97B9047C */  lhu        $t9, 0x47c($sp)
/* B6664 800B5A64 8D090060 */  lw         $t1, 0x60($t0)
/* B6668 800B5A68 0329082A */  slt        $at, $t9, $t1
/* B666C 800B5A6C 14200048 */  bnez       $at, .L800B5B90
/* B6670 800B5A70 00000000 */   nop
/* B6674 800B5A74 93AA047C */  lbu        $t2, 0x47c($sp)
/* B6678 800B5A78 910B0064 */  lbu        $t3, 0x64($t0)
/* B667C 800B5A7C 014B082A */  slt        $at, $t2, $t3
/* B6680 800B5A80 10200043 */  beqz       $at, .L800B5B90
/* B6684 800B5A84 00000000 */   nop
/* B6688 800B5A88 93AC047D */  lbu        $t4, 0x47d($sp)
/* B668C 800B5A8C 19800040 */  blez       $t4, .L800B5B90
/* B6690 800B5A90 00000000 */   nop
/* B6694 800B5A94 29810080 */  slti       $at, $t4, 0x80
/* B6698 800B5A98 1020003D */  beqz       $at, .L800B5B90
/* B669C 800B5A9C 00000000 */   nop
.L800B5AA0:
/* B66A0 800B5AA0 93AD0033 */  lbu        $t5, 0x33($sp)
/* B66A4 800B5AA4 93AE047C */  lbu        $t6, 0x47c($sp)
/* B66A8 800B5AA8 11AE0011 */  beq        $t5, $t6, .L800B5AF0
/* B66AC 800B5AAC 00000000 */   nop
/* B66B0 800B5AB0 93AF047C */  lbu        $t7, 0x47c($sp)
/* B66B4 800B5AB4 A3AF0033 */  sb         $t7, 0x33($sp)
/* B66B8 800B5AB8 8FA40488 */  lw         $a0, 0x488($sp)
/* B66BC 800B5ABC 27A5027C */  addiu      $a1, $sp, 0x27c
/* B66C0 800B5AC0 00003025 */  or         $a2, $zero, $zero
/* B66C4 800B5AC4 0C029104 */  jal        func_800A4410
/* B66C8 800B5AC8 93A70033 */   lbu       $a3, 0x33($sp)
/* B66CC 800B5ACC AFA20480 */  sw         $v0, 0x480($sp)
/* B66D0 800B5AD0 8FB80480 */  lw         $t8, 0x480($sp)
/* B66D4 800B5AD4 13000006 */  beqz       $t8, .L800B5AF0
/* B66D8 800B5AD8 00000000 */   nop
/* B66DC 800B5ADC 24010003 */  addiu      $at, $zero, 3
/* B66E0 800B5AE0 13010003 */  beq        $t8, $at, .L800B5AF0
/* B66E4 800B5AE4 00000000 */   nop
/* B66E8 800B5AE8 1000015D */  b          .L800B6060
/* B66EC 800B5AEC 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5AF0:
/* B66F0 800B5AF0 97B9047C */  lhu        $t9, 0x47c($sp)
/* B66F4 800B5AF4 8FA40488 */  lw         $a0, 0x488($sp)
/* B66F8 800B5AF8 27A60038 */  addiu      $a2, $sp, 0x38
/* B66FC 800B5AFC A7B90004 */  sh         $t9, 4($sp)
/* B6700 800B5B00 0C02D890 */  jal        func_800B6240
/* B6704 800B5B04 8FA50004 */   lw        $a1, 4($sp)
/* B6708 800B5B08 8FA90028 */  lw         $t1, 0x28($sp)
/* B670C 800B5B0C 00494023 */  subu       $t0, $v0, $t1
/* B6710 800B5B10 AFA8002C */  sw         $t0, 0x2c($sp)
/* B6714 800B5B14 8FAA002C */  lw         $t2, 0x2c($sp)
/* B6718 800B5B18 11400003 */  beqz       $t2, .L800B5B28
/* B671C 800B5B1C 00000000 */   nop
/* B6720 800B5B20 1000001B */  b          .L800B5B90
/* B6724 800B5B24 00000000 */   nop
.L800B5B28:
/* B6728 800B5B28 240B0001 */  addiu      $t3, $zero, 1
/* B672C 800B5B2C AFAB0028 */  sw         $t3, 0x28($sp)
/* B6730 800B5B30 93AD047D */  lbu        $t5, 0x47d($sp)
/* B6734 800B5B34 27AF027C */  addiu      $t7, $sp, 0x27c
/* B6738 800B5B38 27AC047C */  addiu      $t4, $sp, 0x47c
/* B673C 800B5B3C 000D7040 */  sll        $t6, $t5, 1
/* B6740 800B5B40 01CFC021 */  addu       $t8, $t6, $t7
/* B6744 800B5B44 97010000 */  lhu        $at, ($t8)
/* B6748 800B5B48 A5810000 */  sh         $at, ($t4)
/* B674C 800B5B4C 8FAB0488 */  lw         $t3, 0x488($sp)
/* B6750 800B5B50 97AA047C */  lhu        $t2, 0x47c($sp)
/* B6754 800B5B54 8D6D0060 */  lw         $t5, 0x60($t3)
/* B6758 800B5B58 014D082A */  slt        $at, $t2, $t5
/* B675C 800B5B5C 1420000C */  bnez       $at, .L800B5B90
/* B6760 800B5B60 00000000 */   nop
/* B6764 800B5B64 93AE047C */  lbu        $t6, 0x47c($sp)
/* B6768 800B5B68 916F0064 */  lbu        $t7, 0x64($t3)
/* B676C 800B5B6C 01CF082A */  slt        $at, $t6, $t7
/* B6770 800B5B70 10200007 */  beqz       $at, .L800B5B90
/* B6774 800B5B74 00000000 */   nop
/* B6778 800B5B78 93A9047D */  lbu        $t1, 0x47d($sp)
/* B677C 800B5B7C 19200004 */  blez       $t1, .L800B5B90
/* B6780 800B5B80 00000000 */   nop
/* B6784 800B5B84 29210080 */  slti       $at, $t1, 0x80
/* B6788 800B5B88 1420FFC5 */  bnez       $at, .L800B5AA0
/* B678C 800B5B8C 00000000 */   nop
.L800B5B90:
/* B6790 800B5B90 8FB9002C */  lw         $t9, 0x2c($sp)
/* B6794 800B5B94 17200005 */  bnez       $t9, .L800B5BAC
/* B6798 800B5B98 00000000 */   nop
/* B679C 800B5B9C 97AC047C */  lhu        $t4, 0x47c($sp)
/* B67A0 800B5BA0 24010001 */  addiu      $at, $zero, 1
/* B67A4 800B5BA4 11810026 */  beq        $t4, $at, .L800B5C40
/* B67A8 800B5BA8 00000000 */   nop
.L800B5BAC:
/* B67AC 800B5BAC A7A00260 */  sh         $zero, 0x260($sp)
/* B67B0 800B5BB0 AFA0025C */  sw         $zero, 0x25c($sp)
/* B67B4 800B5BB4 A7A00262 */  sh         $zero, 0x262($sp)
/* B67B8 800B5BB8 A3A00264 */  sb         $zero, 0x264($sp)
/* B67BC 800B5BBC A7A00266 */  sh         $zero, 0x266($sp)
/* B67C0 800B5BC0 8FB80488 */  lw         $t8, 0x488($sp)
/* B67C4 800B5BC4 93080065 */  lbu        $t0, 0x65($t8)
/* B67C8 800B5BC8 1100000B */  beqz       $t0, .L800B5BF8
/* B67CC 800B5BCC 00000000 */   nop
/* B67D0 800B5BD0 8FAA0488 */  lw         $t2, 0x488($sp)
/* B67D4 800B5BD4 A1400065 */  sb         $zero, 0x65($t2)
/* B67D8 800B5BD8 0C0291D5 */  jal        func_800A4754
/* B67DC 800B5BDC 8FA40488 */   lw        $a0, 0x488($sp)
/* B67E0 800B5BE0 AFA20480 */  sw         $v0, 0x480($sp)
/* B67E4 800B5BE4 8FAD0480 */  lw         $t5, 0x480($sp)
/* B67E8 800B5BE8 11A00003 */  beqz       $t5, .L800B5BF8
/* B67EC 800B5BEC 00000000 */   nop
/* B67F0 800B5BF0 1000011B */  b          .L800B6060
/* B67F4 800B5BF4 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5BF8:
/* B67F8 800B5BF8 8FAB0488 */  lw         $t3, 0x488($sp)
/* B67FC 800B5BFC 8FAF0484 */  lw         $t7, 0x484($sp)
/* B6800 800B5C00 27A7025C */  addiu      $a3, $sp, 0x25c
/* B6804 800B5C04 8D6E005C */  lw         $t6, 0x5c($t3)
/* B6808 800B5C08 8D640004 */  lw         $a0, 4($t3)
/* B680C 800B5C0C 8D650008 */  lw         $a1, 8($t3)
/* B6810 800B5C10 AFA00010 */  sw         $zero, 0x10($sp)
/* B6814 800B5C14 0C02DC04 */  jal        func_800B7010
/* B6818 800B5C18 01CF3021 */   addu      $a2, $t6, $t7
/* B681C 800B5C1C AFA20480 */  sw         $v0, 0x480($sp)
/* B6820 800B5C20 8FA90480 */  lw         $t1, 0x480($sp)
/* B6824 800B5C24 11200003 */  beqz       $t1, .L800B5C34
/* B6828 800B5C28 00000000 */   nop
/* B682C 800B5C2C 1000010C */  b          .L800B6060
/* B6830 800B5C30 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5C34:
/* B6834 800B5C34 8FB90034 */  lw         $t9, 0x34($sp)
/* B6838 800B5C38 272C0001 */  addiu      $t4, $t9, 1
/* B683C 800B5C3C AFAC0034 */  sw         $t4, 0x34($sp)
.L800B5C40:
/* B6840 800B5C40 1000002C */  b          .L800B5CF4
/* B6844 800B5C44 00000000 */   nop
.L800B5C48:
/* B6848 800B5C48 97B80260 */  lhu        $t8, 0x260($sp)
/* B684C 800B5C4C 17000004 */  bnez       $t8, .L800B5C60
/* B6850 800B5C50 00000000 */   nop
/* B6854 800B5C54 8FA8025C */  lw         $t0, 0x25c($sp)
/* B6858 800B5C58 11000026 */  beqz       $t0, .L800B5CF4
/* B685C 800B5C5C 00000000 */   nop
.L800B5C60:
/* B6860 800B5C60 A7A00260 */  sh         $zero, 0x260($sp)
/* B6864 800B5C64 AFA0025C */  sw         $zero, 0x25c($sp)
/* B6868 800B5C68 A7A00262 */  sh         $zero, 0x262($sp)
/* B686C 800B5C6C A3A00264 */  sb         $zero, 0x264($sp)
/* B6870 800B5C70 A7A00266 */  sh         $zero, 0x266($sp)
/* B6874 800B5C74 8FAA0488 */  lw         $t2, 0x488($sp)
/* B6878 800B5C78 914D0065 */  lbu        $t5, 0x65($t2)
/* B687C 800B5C7C 11A0000B */  beqz       $t5, .L800B5CAC
/* B6880 800B5C80 00000000 */   nop
/* B6884 800B5C84 8FAB0488 */  lw         $t3, 0x488($sp)
/* B6888 800B5C88 A1600065 */  sb         $zero, 0x65($t3)
/* B688C 800B5C8C 0C0291D5 */  jal        func_800A4754
/* B6890 800B5C90 8FA40488 */   lw        $a0, 0x488($sp)
/* B6894 800B5C94 AFA20480 */  sw         $v0, 0x480($sp)
/* B6898 800B5C98 8FAE0480 */  lw         $t6, 0x480($sp)
/* B689C 800B5C9C 11C00003 */  beqz       $t6, .L800B5CAC
/* B68A0 800B5CA0 00000000 */   nop
/* B68A4 800B5CA4 100000EE */  b          .L800B6060
/* B68A8 800B5CA8 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5CAC:
/* B68AC 800B5CAC 8FAF0488 */  lw         $t7, 0x488($sp)
/* B68B0 800B5CB0 8FB90484 */  lw         $t9, 0x484($sp)
/* B68B4 800B5CB4 27A7025C */  addiu      $a3, $sp, 0x25c
/* B68B8 800B5CB8 8DE9005C */  lw         $t1, 0x5c($t7)
/* B68BC 800B5CBC 8DE40004 */  lw         $a0, 4($t7)
/* B68C0 800B5CC0 8DE50008 */  lw         $a1, 8($t7)
/* B68C4 800B5CC4 AFA00010 */  sw         $zero, 0x10($sp)
/* B68C8 800B5CC8 0C02DC04 */  jal        func_800B7010
/* B68CC 800B5CCC 01393021 */   addu      $a2, $t1, $t9
/* B68D0 800B5CD0 AFA20480 */  sw         $v0, 0x480($sp)
/* B68D4 800B5CD4 8FAC0480 */  lw         $t4, 0x480($sp)
/* B68D8 800B5CD8 11800003 */  beqz       $t4, .L800B5CE8
/* B68DC 800B5CDC 00000000 */   nop
/* B68E0 800B5CE0 100000DF */  b          .L800B6060
/* B68E4 800B5CE4 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5CE8:
/* B68E8 800B5CE8 8FB80034 */  lw         $t8, 0x34($sp)
/* B68EC 800B5CEC 27080001 */  addiu      $t0, $t8, 1
/* B68F0 800B5CF0 AFA80034 */  sw         $t0, 0x34($sp)
.L800B5CF4:
/* B68F4 800B5CF4 8FAA0484 */  lw         $t2, 0x484($sp)
/* B68F8 800B5CF8 8FAB0488 */  lw         $t3, 0x488($sp)
/* B68FC 800B5CFC 254D0001 */  addiu      $t5, $t2, 1
/* B6900 800B5D00 AFAD0484 */  sw         $t5, 0x484($sp)
/* B6904 800B5D04 8D6E0050 */  lw         $t6, 0x50($t3)
/* B6908 800B5D08 01AE082A */  slt        $at, $t5, $t6
/* B690C 800B5D0C 1420FF39 */  bnez       $at, .L800B59F4
/* B6910 800B5D10 00000000 */   nop
.L800B5D14:
/* B6914 800B5D14 8FAF0488 */  lw         $t7, 0x488($sp)
/* B6918 800B5D18 AFA00484 */  sw         $zero, 0x484($sp)
/* B691C 800B5D1C 8DE90050 */  lw         $t1, 0x50($t7)
/* B6920 800B5D20 1920002D */  blez       $t1, .L800B5DD8
/* B6924 800B5D24 00000000 */   nop
.L800B5D28:
/* B6928 800B5D28 8FB90488 */  lw         $t9, 0x488($sp)
/* B692C 800B5D2C 8FB80484 */  lw         $t8, 0x484($sp)
/* B6930 800B5D30 27A7025C */  addiu      $a3, $sp, 0x25c
/* B6934 800B5D34 8F2C005C */  lw         $t4, 0x5c($t9)
/* B6938 800B5D38 8F240004 */  lw         $a0, 4($t9)
/* B693C 800B5D3C 8F250008 */  lw         $a1, 8($t9)
/* B6940 800B5D40 0C02E3D8 */  jal        func_800B8F60
/* B6944 800B5D44 01983021 */   addu      $a2, $t4, $t8
/* B6948 800B5D48 AFA20480 */  sw         $v0, 0x480($sp)
/* B694C 800B5D4C 8FA80480 */  lw         $t0, 0x480($sp)
/* B6950 800B5D50 11000003 */  beqz       $t0, .L800B5D60
/* B6954 800B5D54 00000000 */   nop
/* B6958 800B5D58 100000C1 */  b          .L800B6060
/* B695C 800B5D5C 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5D60:
/* B6960 800B5D60 97AA0260 */  lhu        $t2, 0x260($sp)
/* B6964 800B5D64 11400010 */  beqz       $t2, .L800B5DA8
/* B6968 800B5D68 00000000 */   nop
/* B696C 800B5D6C 8FAB025C */  lw         $t3, 0x25c($sp)
/* B6970 800B5D70 1160000D */  beqz       $t3, .L800B5DA8
/* B6974 800B5D74 00000000 */   nop
/* B6978 800B5D78 8FAE0488 */  lw         $t6, 0x488($sp)
/* B697C 800B5D7C 97AD0262 */  lhu        $t5, 0x262($sp)
/* B6980 800B5D80 95CF0062 */  lhu        $t7, 0x62($t6)
/* B6984 800B5D84 01AF082A */  slt        $at, $t5, $t7
/* B6988 800B5D88 14200007 */  bnez       $at, .L800B5DA8
/* B698C 800B5D8C 00000000 */   nop
/* B6990 800B5D90 8FB90484 */  lw         $t9, 0x484($sp)
/* B6994 800B5D94 97A90262 */  lhu        $t1, 0x262($sp)
/* B6998 800B5D98 00196040 */  sll        $t4, $t9, 1
/* B699C 800B5D9C 03ACC021 */  addu       $t8, $sp, $t4
/* B69A0 800B5DA0 10000005 */  b          .L800B5DB8
/* B69A4 800B5DA4 A709023C */   sh        $t1, 0x23c($t8)
.L800B5DA8:
/* B69A8 800B5DA8 8FA80484 */  lw         $t0, 0x484($sp)
/* B69AC 800B5DAC 00085040 */  sll        $t2, $t0, 1
/* B69B0 800B5DB0 03AA5821 */  addu       $t3, $sp, $t2
/* B69B4 800B5DB4 A560023C */  sh         $zero, 0x23c($t3)
.L800B5DB8:
/* B69B8 800B5DB8 8FAE0484 */  lw         $t6, 0x484($sp)
/* B69BC 800B5DBC 8FAF0488 */  lw         $t7, 0x488($sp)
/* B69C0 800B5DC0 25CD0001 */  addiu      $t5, $t6, 1
/* B69C4 800B5DC4 AFAD0484 */  sw         $t5, 0x484($sp)
/* B69C8 800B5DC8 8DF90050 */  lw         $t9, 0x50($t7)
/* B69CC 800B5DCC 01B9082A */  slt        $at, $t5, $t9
/* B69D0 800B5DD0 1420FFD5 */  bnez       $at, .L800B5D28
/* B69D4 800B5DD4 00000000 */   nop
.L800B5DD8:
/* B69D8 800B5DD8 8FA90488 */  lw         $t1, 0x488($sp)
/* B69DC 800B5DDC A3A00033 */  sb         $zero, 0x33($sp)
/* B69E0 800B5DE0 912C0064 */  lbu        $t4, 0x64($t1)
/* B69E4 800B5DE4 1980008D */  blez       $t4, .L800B601C
/* B69E8 800B5DE8 00000000 */   nop
.L800B5DEC:
/* B69EC 800B5DEC 8FA40488 */  lw         $a0, 0x488($sp)
/* B69F0 800B5DF0 27A5027C */  addiu      $a1, $sp, 0x27c
/* B69F4 800B5DF4 00003025 */  or         $a2, $zero, $zero
/* B69F8 800B5DF8 0C029104 */  jal        func_800A4410
/* B69FC 800B5DFC 93A70033 */   lbu       $a3, 0x33($sp)
/* B6A00 800B5E00 AFA20480 */  sw         $v0, 0x480($sp)
/* B6A04 800B5E04 8FB80480 */  lw         $t8, 0x480($sp)
/* B6A08 800B5E08 13000006 */  beqz       $t8, .L800B5E24
/* B6A0C 800B5E0C 00000000 */   nop
/* B6A10 800B5E10 24010003 */  addiu      $at, $zero, 3
/* B6A14 800B5E14 13010003 */  beq        $t8, $at, .L800B5E24
/* B6A18 800B5E18 00000000 */   nop
/* B6A1C 800B5E1C 10000090 */  b          .L800B6060
/* B6A20 800B5E20 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5E24:
/* B6A24 800B5E24 93A80033 */  lbu        $t0, 0x33($sp)
/* B6A28 800B5E28 19000004 */  blez       $t0, .L800B5E3C
/* B6A2C 800B5E2C 00000000 */   nop
/* B6A30 800B5E30 240A0001 */  addiu      $t2, $zero, 1
/* B6A34 800B5E34 10000004 */  b          .L800B5E48
/* B6A38 800B5E38 AFAA0024 */   sw        $t2, 0x24($sp)
.L800B5E3C:
/* B6A3C 800B5E3C 8FAB0488 */  lw         $t3, 0x488($sp)
/* B6A40 800B5E40 8D6E0060 */  lw         $t6, 0x60($t3)
/* B6A44 800B5E44 AFAE0024 */  sw         $t6, 0x24($sp)
.L800B5E48:
/* B6A48 800B5E48 8FAF0024 */  lw         $t7, 0x24($sp)
/* B6A4C 800B5E4C AFA00484 */  sw         $zero, 0x484($sp)
/* B6A50 800B5E50 19E0000D */  blez       $t7, .L800B5E88
/* B6A54 800B5E54 00000000 */   nop
.L800B5E58:
/* B6A58 800B5E58 8FAD0484 */  lw         $t5, 0x484($sp)
/* B6A5C 800B5E5C 000DC840 */  sll        $t9, $t5, 1
/* B6A60 800B5E60 03B94821 */  addu       $t1, $sp, $t9
/* B6A64 800B5E64 9529027C */  lhu        $t1, 0x27c($t1)
/* B6A68 800B5E68 03B96021 */  addu       $t4, $sp, $t9
/* B6A6C 800B5E6C A589037C */  sh         $t1, 0x37c($t4)
/* B6A70 800B5E70 8FB80484 */  lw         $t8, 0x484($sp)
/* B6A74 800B5E74 8FAA0024 */  lw         $t2, 0x24($sp)
/* B6A78 800B5E78 27080001 */  addiu      $t0, $t8, 1
/* B6A7C 800B5E7C 010A082A */  slt        $at, $t0, $t2
/* B6A80 800B5E80 1420FFF5 */  bnez       $at, .L800B5E58
/* B6A84 800B5E84 AFA80484 */   sw        $t0, 0x484($sp)
.L800B5E88:
/* B6A88 800B5E88 8FAB0484 */  lw         $t3, 0x484($sp)
/* B6A8C 800B5E8C 29610080 */  slti       $at, $t3, 0x80
/* B6A90 800B5E90 1020000B */  beqz       $at, .L800B5EC0
/* B6A94 800B5E94 00000000 */   nop
.L800B5E98:
/* B6A98 800B5E98 8FAF0484 */  lw         $t7, 0x484($sp)
/* B6A9C 800B5E9C 240E0003 */  addiu      $t6, $zero, 3
/* B6AA0 800B5EA0 000F6840 */  sll        $t5, $t7, 1
/* B6AA4 800B5EA4 03AD4821 */  addu       $t1, $sp, $t5
/* B6AA8 800B5EA8 A52E037C */  sh         $t6, 0x37c($t1)
/* B6AAC 800B5EAC 8FB90484 */  lw         $t9, 0x484($sp)
/* B6AB0 800B5EB0 272C0001 */  addiu      $t4, $t9, 1
/* B6AB4 800B5EB4 29810080 */  slti       $at, $t4, 0x80
/* B6AB8 800B5EB8 1420FFF7 */  bnez       $at, .L800B5E98
/* B6ABC 800B5EBC AFAC0484 */   sw        $t4, 0x484($sp)
.L800B5EC0:
/* B6AC0 800B5EC0 8FB80488 */  lw         $t8, 0x488($sp)
/* B6AC4 800B5EC4 AFA00484 */  sw         $zero, 0x484($sp)
/* B6AC8 800B5EC8 8F080050 */  lw         $t0, 0x50($t8)
/* B6ACC 800B5ECC 1900003F */  blez       $t0, .L800B5FCC
/* B6AD0 800B5ED0 00000000 */   nop
.L800B5ED4:
/* B6AD4 800B5ED4 8FAA0484 */  lw         $t2, 0x484($sp)
/* B6AD8 800B5ED8 27AF023C */  addiu      $t7, $sp, 0x23c
/* B6ADC 800B5EDC 93A90033 */  lbu        $t1, 0x33($sp)
/* B6AE0 800B5EE0 000A5840 */  sll        $t3, $t2, 1
/* B6AE4 800B5EE4 016F7021 */  addu       $t6, $t3, $t7
/* B6AE8 800B5EE8 91CD0000 */  lbu        $t5, ($t6)
/* B6AEC 800B5EEC 15A9002F */  bne        $t5, $t1, .L800B5FAC
/* B6AF0 800B5EF0 00000000 */   nop
/* B6AF4 800B5EF4 8FAC0488 */  lw         $t4, 0x488($sp)
/* B6AF8 800B5EF8 95D90000 */  lhu        $t9, ($t6)
/* B6AFC 800B5EFC 95980062 */  lhu        $t8, 0x62($t4)
/* B6B00 800B5F00 0338082A */  slt        $at, $t9, $t8
/* B6B04 800B5F04 14200029 */  bnez       $at, .L800B5FAC
/* B6B08 800B5F08 00000000 */   nop
.L800B5F0C:
/* B6B0C 800B5F0C 8FA80484 */  lw         $t0, 0x484($sp)
/* B6B10 800B5F10 00085040 */  sll        $t2, $t0, 1
/* B6B14 800B5F14 03AA5821 */  addu       $t3, $sp, $t2
/* B6B18 800B5F18 916B023D */  lbu        $t3, 0x23d($t3)
/* B6B1C 800B5F1C A3AB0023 */  sb         $t3, 0x23($sp)
/* B6B20 800B5F20 93AD0023 */  lbu        $t5, 0x23($sp)
/* B6B24 800B5F24 27AE027C */  addiu      $t6, $sp, 0x27c
/* B6B28 800B5F28 27AF0020 */  addiu      $t7, $sp, 0x20
/* B6B2C 800B5F2C 000D4840 */  sll        $t1, $t5, 1
/* B6B30 800B5F30 012E6021 */  addu       $t4, $t1, $t6
/* B6B34 800B5F34 95810000 */  lhu        $at, ($t4)
/* B6B38 800B5F38 27AE0020 */  addiu      $t6, $sp, 0x20
/* B6B3C 800B5F3C 27AD037C */  addiu      $t5, $sp, 0x37c
/* B6B40 800B5F40 A5E10000 */  sh         $at, ($t7)
/* B6B44 800B5F44 93AA0023 */  lbu        $t2, 0x23($sp)
/* B6B48 800B5F48 95C10000 */  lhu        $at, ($t6)
/* B6B4C 800B5F4C 000A5840 */  sll        $t3, $t2, 1
/* B6B50 800B5F50 016D4821 */  addu       $t1, $t3, $t5
/* B6B54 800B5F54 A5210000 */  sh         $at, ($t1)
/* B6B58 800B5F58 8FAC0484 */  lw         $t4, 0x484($sp)
/* B6B5C 800B5F5C 27AD0020 */  addiu      $t5, $sp, 0x20
/* B6B60 800B5F60 95A10000 */  lhu        $at, ($t5)
/* B6B64 800B5F64 27AA023C */  addiu      $t2, $sp, 0x23c
/* B6B68 800B5F68 000C4040 */  sll        $t0, $t4, 1
/* B6B6C 800B5F6C 010A5821 */  addu       $t3, $t0, $t2
/* B6B70 800B5F70 A5610000 */  sh         $at, ($t3)
/* B6B74 800B5F74 8FAE0484 */  lw         $t6, 0x484($sp)
/* B6B78 800B5F78 27AC023C */  addiu      $t4, $sp, 0x23c
/* B6B7C 800B5F7C 93B80033 */  lbu        $t8, 0x33($sp)
/* B6B80 800B5F80 000E7840 */  sll        $t7, $t6, 1
/* B6B84 800B5F84 01EC4021 */  addu       $t0, $t7, $t4
/* B6B88 800B5F88 910A0000 */  lbu        $t2, ($t0)
/* B6B8C 800B5F8C 15580007 */  bne        $t2, $t8, .L800B5FAC
/* B6B90 800B5F90 00000000 */   nop
/* B6B94 800B5F94 8FAB0488 */  lw         $t3, 0x488($sp)
/* B6B98 800B5F98 95190000 */  lhu        $t9, ($t0)
/* B6B9C 800B5F9C 956D0062 */  lhu        $t5, 0x62($t3)
/* B6BA0 800B5FA0 032D082A */  slt        $at, $t9, $t5
/* B6BA4 800B5FA4 1020FFD9 */  beqz       $at, .L800B5F0C
/* B6BA8 800B5FA8 00000000 */   nop
.L800B5FAC:
/* B6BAC 800B5FAC 8FA90484 */  lw         $t1, 0x484($sp)
/* B6BB0 800B5FB0 8FAF0488 */  lw         $t7, 0x488($sp)
/* B6BB4 800B5FB4 252E0001 */  addiu      $t6, $t1, 1
/* B6BB8 800B5FB8 AFAE0484 */  sw         $t6, 0x484($sp)
/* B6BBC 800B5FBC 8DEC0050 */  lw         $t4, 0x50($t7)
/* B6BC0 800B5FC0 01CC082A */  slt        $at, $t6, $t4
/* B6BC4 800B5FC4 1420FFC3 */  bnez       $at, .L800B5ED4
/* B6BC8 800B5FC8 00000000 */   nop
.L800B5FCC:
/* B6BCC 800B5FCC 8FA40488 */  lw         $a0, 0x488($sp)
/* B6BD0 800B5FD0 27A5037C */  addiu      $a1, $sp, 0x37c
/* B6BD4 800B5FD4 24060001 */  addiu      $a2, $zero, 1
/* B6BD8 800B5FD8 0C029104 */  jal        func_800A4410
/* B6BDC 800B5FDC 93A70033 */   lbu       $a3, 0x33($sp)
/* B6BE0 800B5FE0 AFA20480 */  sw         $v0, 0x480($sp)
/* B6BE4 800B5FE4 8FAA0480 */  lw         $t2, 0x480($sp)
/* B6BE8 800B5FE8 11400003 */  beqz       $t2, .L800B5FF8
/* B6BEC 800B5FEC 00000000 */   nop
/* B6BF0 800B5FF0 1000001B */  b          .L800B6060
/* B6BF4 800B5FF4 8FA20480 */   lw        $v0, 0x480($sp)
.L800B5FF8:
/* B6BF8 800B5FF8 93B80033 */  lbu        $t8, 0x33($sp)
/* B6BFC 800B5FFC 8FB90488 */  lw         $t9, 0x488($sp)
/* B6C00 800B6000 27080001 */  addiu      $t0, $t8, 1
/* B6C04 800B6004 A3A80033 */  sb         $t0, 0x33($sp)
/* B6C08 800B6008 932D0064 */  lbu        $t5, 0x64($t9)
/* B6C0C 800B600C 310B00FF */  andi       $t3, $t0, 0xff
/* B6C10 800B6010 016D082A */  slt        $at, $t3, $t5
/* B6C14 800B6014 1420FF75 */  bnez       $at, .L800B5DEC
/* B6C18 800B6018 00000000 */   nop
.L800B601C:
/* B6C1C 800B601C 8FA90034 */  lw         $t1, 0x34($sp)
/* B6C20 800B6020 11200006 */  beqz       $t1, .L800B603C
/* B6C24 800B6024 00000000 */   nop
/* B6C28 800B6028 8FAF0488 */  lw         $t7, 0x488($sp)
/* B6C2C 800B602C 8DEE0000 */  lw         $t6, ($t7)
/* B6C30 800B6030 35CC0002 */  ori        $t4, $t6, 2
/* B6C34 800B6034 10000006 */  b          .L800B6050
/* B6C38 800B6038 ADEC0000 */   sw        $t4, ($t7)
.L800B603C:
/* B6C3C 800B603C 8FAA0488 */  lw         $t2, 0x488($sp)
/* B6C40 800B6040 2401FFFD */  addiu      $at, $zero, -3
/* B6C44 800B6044 8D580000 */  lw         $t8, ($t2)
/* B6C48 800B6048 03014024 */  and        $t0, $t8, $at
/* B6C4C 800B604C AD480000 */  sw         $t0, ($t2)
.L800B6050:
/* B6C50 800B6050 10000003 */  b          .L800B6060
/* B6C54 800B6054 00001025 */   or        $v0, $zero, $zero
/* B6C58 800B6058 10000001 */  b          .L800B6060
/* B6C5C 800B605C 00000000 */   nop
.L800B6060:
/* B6C60 800B6060 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6C64 800B6064 27BD0488 */  addiu      $sp, $sp, 0x488
/* B6C68 800B6068 03E00008 */  jr         $ra
/* B6C6C 800B606C 00000000 */   nop

glabel func_800B6070
/* B6C70 800B6070 27BDFED0 */  addiu      $sp, $sp, -0x130
/* B6C74 800B6074 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6C78 800B6078 AFA40130 */  sw         $a0, 0x130($sp)
/* B6C7C 800B607C AFA50134 */  sw         $a1, 0x134($sp)
/* B6C80 800B6080 AFA0012C */  sw         $zero, 0x12c($sp)
.L800B6084:
/* B6C84 800B6084 8FAE0134 */  lw         $t6, 0x134($sp)
/* B6C88 800B6088 8FAF012C */  lw         $t7, 0x12c($sp)
/* B6C8C 800B608C 01CFC021 */  addu       $t8, $t6, $t7
/* B6C90 800B6090 A3000101 */  sb         $zero, 0x101($t8)
/* B6C94 800B6094 8FB9012C */  lw         $t9, 0x12c($sp)
/* B6C98 800B6098 27280001 */  addiu      $t0, $t9, 1
/* B6C9C 800B609C 29010100 */  slti       $at, $t0, 0x100
/* B6CA0 800B60A0 1420FFF8 */  bnez       $at, .L800B6084
/* B6CA4 800B60A4 AFA8012C */   sw        $t0, 0x12c($sp)
/* B6CA8 800B60A8 8FAA0134 */  lw         $t2, 0x134($sp)
/* B6CAC 800B60AC 240900FF */  addiu      $t1, $zero, 0xff
/* B6CB0 800B60B0 A1490100 */  sb         $t1, 0x100($t2)
/* B6CB4 800B60B4 8FAB0130 */  lw         $t3, 0x130($sp)
/* B6CB8 800B60B8 A3A00123 */  sb         $zero, 0x123($sp)
/* B6CBC 800B60BC 916C0064 */  lbu        $t4, 0x64($t3)
/* B6CC0 800B60C0 19800057 */  blez       $t4, .L800B6220
/* B6CC4 800B60C4 00000000 */   nop
.L800B60C8:
/* B6CC8 800B60C8 93AD0123 */  lbu        $t5, 0x123($sp)
/* B6CCC 800B60CC 19A00004 */  blez       $t5, .L800B60E0
/* B6CD0 800B60D0 00000000 */   nop
/* B6CD4 800B60D4 240E0001 */  addiu      $t6, $zero, 1
/* B6CD8 800B60D8 10000004 */  b          .L800B60EC
/* B6CDC 800B60DC AFAE0124 */   sw        $t6, 0x124($sp)
.L800B60E0:
/* B6CE0 800B60E0 8FAF0130 */  lw         $t7, 0x130($sp)
/* B6CE4 800B60E4 8DF80060 */  lw         $t8, 0x60($t7)
/* B6CE8 800B60E8 AFB80124 */  sw         $t8, 0x124($sp)
.L800B60EC:
/* B6CEC 800B60EC 8FA40130 */  lw         $a0, 0x130($sp)
/* B6CF0 800B60F0 27A50020 */  addiu      $a1, $sp, 0x20
/* B6CF4 800B60F4 00003025 */  or         $a2, $zero, $zero
/* B6CF8 800B60F8 0C029104 */  jal        func_800A4410
/* B6CFC 800B60FC 93A70123 */   lbu       $a3, 0x123($sp)
/* B6D00 800B6100 AFA2001C */  sw         $v0, 0x1c($sp)
/* B6D04 800B6104 8FB9001C */  lw         $t9, 0x1c($sp)
/* B6D08 800B6108 13200006 */  beqz       $t9, .L800B6124
/* B6D0C 800B610C 00000000 */   nop
/* B6D10 800B6110 24010003 */  addiu      $at, $zero, 3
/* B6D14 800B6114 13210003 */  beq        $t9, $at, .L800B6124
/* B6D18 800B6118 00000000 */   nop
/* B6D1C 800B611C 10000044 */  b          .L800B6230
/* B6D20 800B6120 8FA2001C */   lw        $v0, 0x1c($sp)
.L800B6124:
/* B6D24 800B6124 8FA80124 */  lw         $t0, 0x124($sp)
/* B6D28 800B6128 29010080 */  slti       $at, $t0, 0x80
/* B6D2C 800B612C 10200033 */  beqz       $at, .L800B61FC
/* B6D30 800B6130 AFA8012C */   sw        $t0, 0x12c($sp)
.L800B6134:
/* B6D34 800B6134 8FAA012C */  lw         $t2, 0x12c($sp)
/* B6D38 800B6138 27AC0020 */  addiu      $t4, $sp, 0x20
/* B6D3C 800B613C 27A90120 */  addiu      $t1, $sp, 0x120
/* B6D40 800B6140 000A5840 */  sll        $t3, $t2, 1
/* B6D44 800B6144 016C6821 */  addu       $t5, $t3, $t4
/* B6D48 800B6148 95A10000 */  lhu        $at, ($t5)
/* B6D4C 800B614C A5210000 */  sh         $at, ($t1)
/* B6D50 800B6150 8FB90130 */  lw         $t9, 0x130($sp)
/* B6D54 800B6154 97B80120 */  lhu        $t8, 0x120($sp)
/* B6D58 800B6158 8F280060 */  lw         $t0, 0x60($t9)
/* B6D5C 800B615C 0308082A */  slt        $at, $t8, $t0
/* B6D60 800B6160 14200021 */  bnez       $at, .L800B61E8
/* B6D64 800B6164 00000000 */   nop
/* B6D68 800B6168 93AA0120 */  lbu        $t2, 0x120($sp)
/* B6D6C 800B616C 93AB0123 */  lbu        $t3, 0x123($sp)
/* B6D70 800B6170 114B001D */  beq        $t2, $t3, .L800B61E8
/* B6D74 800B6174 00000000 */   nop
/* B6D78 800B6178 93A90120 */  lbu        $t1, 0x120($sp)
/* B6D7C 800B617C 93AC0121 */  lbu        $t4, 0x121($sp)
/* B6D80 800B6180 05810003 */  bgez       $t4, .L800B6190
/* B6D84 800B6184 000C7083 */   sra       $t6, $t4, 2
/* B6D88 800B6188 25810003 */  addiu      $at, $t4, 3
/* B6D8C 800B618C 00017083 */  sra        $t6, $at, 2
.L800B6190:
/* B6D90 800B6190 05210004 */  bgez       $t1, .L800B61A4
/* B6D94 800B6194 312D0007 */   andi      $t5, $t1, 7
/* B6D98 800B6198 11A00002 */  beqz       $t5, .L800B61A4
/* B6D9C 800B619C 00000000 */   nop
/* B6DA0 800B61A0 25ADFFF8 */  addiu      $t5, $t5, -8
.L800B61A4:
/* B6DA4 800B61A4 000D7940 */  sll        $t7, $t5, 5
/* B6DA8 800B61A8 01CFC821 */  addu       $t9, $t6, $t7
/* B6DAC 800B61AC AFB90128 */  sw         $t9, 0x128($sp)
/* B6DB0 800B61B0 8FB80134 */  lw         $t8, 0x134($sp)
/* B6DB4 800B61B4 8FA80128 */  lw         $t0, 0x128($sp)
/* B6DB8 800B61B8 93AC0123 */  lbu        $t4, 0x123($sp)
/* B6DBC 800B61BC 240D0001 */  addiu      $t5, $zero, 1
/* B6DC0 800B61C0 03085021 */  addu       $t2, $t8, $t0
/* B6DC4 800B61C4 914B0101 */  lbu        $t3, 0x101($t2)
/* B6DC8 800B61C8 05810004 */  bgez       $t4, .L800B61DC
/* B6DCC 800B61CC 31890007 */   andi      $t1, $t4, 7
/* B6DD0 800B61D0 11200002 */  beqz       $t1, .L800B61DC
/* B6DD4 800B61D4 00000000 */   nop
/* B6DD8 800B61D8 2529FFF8 */  addiu      $t1, $t1, -8
.L800B61DC:
/* B6DDC 800B61DC 012D7004 */  sllv       $t6, $t5, $t1
/* B6DE0 800B61E0 016E7825 */  or         $t7, $t3, $t6
/* B6DE4 800B61E4 A14F0101 */  sb         $t7, 0x101($t2)
.L800B61E8:
/* B6DE8 800B61E8 8FB9012C */  lw         $t9, 0x12c($sp)
/* B6DEC 800B61EC 27380001 */  addiu      $t8, $t9, 1
/* B6DF0 800B61F0 2B010080 */  slti       $at, $t8, 0x80
/* B6DF4 800B61F4 1420FFCF */  bnez       $at, .L800B6134
/* B6DF8 800B61F8 AFB8012C */   sw        $t8, 0x12c($sp)
.L800B61FC:
/* B6DFC 800B61FC 93A80123 */  lbu        $t0, 0x123($sp)
/* B6E00 800B6200 8FA90130 */  lw         $t1, 0x130($sp)
/* B6E04 800B6204 250C0001 */  addiu      $t4, $t0, 1
/* B6E08 800B6208 A3AC0123 */  sb         $t4, 0x123($sp)
/* B6E0C 800B620C 912B0064 */  lbu        $t3, 0x64($t1)
/* B6E10 800B6210 318D00FF */  andi       $t5, $t4, 0xff
/* B6E14 800B6214 01AB082A */  slt        $at, $t5, $t3
/* B6E18 800B6218 1420FFAB */  bnez       $at, .L800B60C8
/* B6E1C 800B621C 00000000 */   nop
.L800B6220:
/* B6E20 800B6220 10000003 */  b          .L800B6230
/* B6E24 800B6224 00001025 */   or        $v0, $zero, $zero
/* B6E28 800B6228 10000001 */  b          .L800B6230
/* B6E2C 800B622C 00000000 */   nop
.L800B6230:
/* B6E30 800B6230 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6E34 800B6234 27BD0130 */  addiu      $sp, $sp, 0x130
/* B6E38 800B6238 03E00008 */  jr         $ra
/* B6E3C 800B623C 00000000 */   nop

glabel func_800B6240
/* B6E40 800B6240 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B6E44 800B6244 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6E48 800B6248 AFA40030 */  sw         $a0, 0x30($sp)
/* B6E4C 800B624C AFA50034 */  sw         $a1, 0x34($sp)
/* B6E50 800B6250 AFA60038 */  sw         $a2, 0x38($sp)
/* B6E54 800B6254 AFA00024 */  sw         $zero, 0x24($sp)
/* B6E58 800B6258 AFA00018 */  sw         $zero, 0x18($sp)
/* B6E5C 800B625C 93B80034 */  lbu        $t8, 0x34($sp)
/* B6E60 800B6260 93AE0035 */  lbu        $t6, 0x35($sp)
/* B6E64 800B6264 05C10003 */  bgez       $t6, .L800B6274
/* B6E68 800B6268 000E7883 */   sra       $t7, $t6, 2
/* B6E6C 800B626C 25C10003 */  addiu      $at, $t6, 3
/* B6E70 800B6270 00017883 */  sra        $t7, $at, 2
.L800B6274:
/* B6E74 800B6274 07010004 */  bgez       $t8, .L800B6288
/* B6E78 800B6278 33190007 */   andi      $t9, $t8, 7
/* B6E7C 800B627C 13200002 */  beqz       $t9, .L800B6288
/* B6E80 800B6280 00000000 */   nop
/* B6E84 800B6284 2739FFF8 */  addiu      $t9, $t9, -8
.L800B6288:
/* B6E88 800B6288 00194140 */  sll        $t0, $t9, 5
/* B6E8C 800B628C 01E84821 */  addu       $t1, $t7, $t0
/* B6E90 800B6290 AFA90028 */  sw         $t1, 0x28($sp)
/* B6E94 800B6294 8FAA0030 */  lw         $t2, 0x30($sp)
/* B6E98 800B6298 A3A00023 */  sb         $zero, 0x23($sp)
/* B6E9C 800B629C 914B0064 */  lbu        $t3, 0x64($t2)
/* B6EA0 800B62A0 1960005D */  blez       $t3, .L800B6418
/* B6EA4 800B62A4 00000000 */   nop
.L800B62A8:
/* B6EA8 800B62A8 93AC0023 */  lbu        $t4, 0x23($sp)
/* B6EAC 800B62AC 19800004 */  blez       $t4, .L800B62C0
/* B6EB0 800B62B0 00000000 */   nop
/* B6EB4 800B62B4 240D0001 */  addiu      $t5, $zero, 1
/* B6EB8 800B62B8 10000004 */  b          .L800B62CC
/* B6EBC 800B62BC AFAD001C */   sw        $t5, 0x1c($sp)
.L800B62C0:
/* B6EC0 800B62C0 8FAE0030 */  lw         $t6, 0x30($sp)
/* B6EC4 800B62C4 8DD80060 */  lw         $t8, 0x60($t6)
/* B6EC8 800B62C8 AFB8001C */  sw         $t8, 0x1c($sp)
.L800B62CC:
/* B6ECC 800B62CC 93B90023 */  lbu        $t9, 0x23($sp)
/* B6ED0 800B62D0 93AF0034 */  lbu        $t7, 0x34($sp)
/* B6ED4 800B62D4 132F000F */  beq        $t9, $t7, .L800B6314
/* B6ED8 800B62D8 00000000 */   nop
/* B6EDC 800B62DC 8FA80038 */  lw         $t0, 0x38($sp)
/* B6EE0 800B62E0 8FA90028 */  lw         $t1, 0x28($sp)
/* B6EE4 800B62E4 240D0001 */  addiu      $t5, $zero, 1
/* B6EE8 800B62E8 01095021 */  addu       $t2, $t0, $t1
/* B6EEC 800B62EC 914B0101 */  lbu        $t3, 0x101($t2)
/* B6EF0 800B62F0 07210004 */  bgez       $t9, .L800B6304
/* B6EF4 800B62F4 332C0007 */   andi      $t4, $t9, 7
/* B6EF8 800B62F8 11800002 */  beqz       $t4, .L800B6304
/* B6EFC 800B62FC 00000000 */   nop
/* B6F00 800B6300 258CFFF8 */  addiu      $t4, $t4, -8
.L800B6304:
/* B6F04 800B6304 018D7004 */  sllv       $t6, $t5, $t4
/* B6F08 800B6308 016EC024 */  and        $t8, $t3, $t6
/* B6F0C 800B630C 13000039 */  beqz       $t8, .L800B63F4
/* B6F10 800B6310 00000000 */   nop
.L800B6314:
/* B6F14 800B6314 8FA80038 */  lw         $t0, 0x38($sp)
/* B6F18 800B6318 93AF0023 */  lbu        $t7, 0x23($sp)
/* B6F1C 800B631C 91090100 */  lbu        $t1, 0x100($t0)
/* B6F20 800B6320 11E90012 */  beq        $t7, $t1, .L800B636C
/* B6F24 800B6324 00000000 */   nop
/* B6F28 800B6328 8FA40030 */  lw         $a0, 0x30($sp)
/* B6F2C 800B632C 8FA50038 */  lw         $a1, 0x38($sp)
/* B6F30 800B6330 00003025 */  or         $a2, $zero, $zero
/* B6F34 800B6334 0C029104 */  jal        func_800A4410
/* B6F38 800B6338 93A70023 */   lbu       $a3, 0x23($sp)
/* B6F3C 800B633C AFA20018 */  sw         $v0, 0x18($sp)
/* B6F40 800B6340 8FAA0018 */  lw         $t2, 0x18($sp)
/* B6F44 800B6344 11400006 */  beqz       $t2, .L800B6360
/* B6F48 800B6348 00000000 */   nop
/* B6F4C 800B634C 24010003 */  addiu      $at, $zero, 3
/* B6F50 800B6350 11410003 */  beq        $t2, $at, .L800B6360
/* B6F54 800B6354 00000000 */   nop
/* B6F58 800B6358 10000033 */  b          .L800B6428
/* B6F5C 800B635C 8FA20018 */   lw        $v0, 0x18($sp)
.L800B6360:
/* B6F60 800B6360 93B90023 */  lbu        $t9, 0x23($sp)
/* B6F64 800B6364 8FAD0038 */  lw         $t5, 0x38($sp)
/* B6F68 800B6368 A1B90100 */  sb         $t9, 0x100($t5)
.L800B636C:
/* B6F6C 800B636C 8FAB0024 */  lw         $t3, 0x24($sp)
/* B6F70 800B6370 8FAC001C */  lw         $t4, 0x1c($sp)
/* B6F74 800B6374 29610002 */  slti       $at, $t3, 2
/* B6F78 800B6378 10200018 */  beqz       $at, .L800B63DC
/* B6F7C 800B637C AFAC002C */   sw        $t4, 0x2c($sp)
/* B6F80 800B6380 29810080 */  slti       $at, $t4, 0x80
/* B6F84 800B6384 10200015 */  beqz       $at, .L800B63DC
/* B6F88 800B6388 00000000 */   nop
.L800B638C:
/* B6F8C 800B638C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B6F90 800B6390 8FAE0038 */  lw         $t6, 0x38($sp)
/* B6F94 800B6394 97AA0034 */  lhu        $t2, 0x34($sp)
/* B6F98 800B6398 00184040 */  sll        $t0, $t8, 1
/* B6F9C 800B639C 01C87821 */  addu       $t7, $t6, $t0
/* B6FA0 800B63A0 95E90000 */  lhu        $t1, ($t7)
/* B6FA4 800B63A4 152A0004 */  bne        $t1, $t2, .L800B63B8
/* B6FA8 800B63A8 00000000 */   nop
/* B6FAC 800B63AC 8FB90024 */  lw         $t9, 0x24($sp)
/* B6FB0 800B63B0 272D0001 */  addiu      $t5, $t9, 1
/* B6FB4 800B63B4 AFAD0024 */  sw         $t5, 0x24($sp)
.L800B63B8:
/* B6FB8 800B63B8 8FAB002C */  lw         $t3, 0x2c($sp)
/* B6FBC 800B63BC 8FB80024 */  lw         $t8, 0x24($sp)
/* B6FC0 800B63C0 256C0001 */  addiu      $t4, $t3, 1
/* B6FC4 800B63C4 2B010002 */  slti       $at, $t8, 2
/* B6FC8 800B63C8 10200004 */  beqz       $at, .L800B63DC
/* B6FCC 800B63CC AFAC002C */   sw        $t4, 0x2c($sp)
/* B6FD0 800B63D0 29810080 */  slti       $at, $t4, 0x80
/* B6FD4 800B63D4 1420FFED */  bnez       $at, .L800B638C
/* B6FD8 800B63D8 00000000 */   nop
.L800B63DC:
/* B6FDC 800B63DC 8FAE0024 */  lw         $t6, 0x24($sp)
/* B6FE0 800B63E0 29C10002 */  slti       $at, $t6, 2
/* B6FE4 800B63E4 14200003 */  bnez       $at, .L800B63F4
/* B6FE8 800B63E8 00000000 */   nop
/* B6FEC 800B63EC 1000000E */  b          .L800B6428
/* B6FF0 800B63F0 24020002 */   addiu     $v0, $zero, 2
.L800B63F4:
/* B6FF4 800B63F4 93A80023 */  lbu        $t0, 0x23($sp)
/* B6FF8 800B63F8 8FAA0030 */  lw         $t2, 0x30($sp)
/* B6FFC 800B63FC 250F0001 */  addiu      $t7, $t0, 1
/* B7000 800B6400 A3AF0023 */  sb         $t7, 0x23($sp)
/* B7004 800B6404 91590064 */  lbu        $t9, 0x64($t2)
/* B7008 800B6408 31E900FF */  andi       $t1, $t7, 0xff
/* B700C 800B640C 0139082A */  slt        $at, $t1, $t9
/* B7010 800B6410 1420FFA5 */  bnez       $at, .L800B62A8
/* B7014 800B6414 00000000 */   nop
.L800B6418:
/* B7018 800B6418 10000003 */  b          .L800B6428
/* B701C 800B641C 8FA20024 */   lw        $v0, 0x24($sp)
/* B7020 800B6420 10000001 */  b          .L800B6428
/* B7024 800B6424 00000000 */   nop
.L800B6428:
/* B7028 800B6428 8FBF0014 */  lw         $ra, 0x14($sp)
/* B702C 800B642C 27BD0030 */  addiu      $sp, $sp, 0x30
/* B7030 800B6430 03E00008 */  jr         $ra
/* B7034 800B6434 00000000 */   nop
/* B7038 800B6438 00000000 */  nop
/* B703C 800B643C 00000000 */  nop
