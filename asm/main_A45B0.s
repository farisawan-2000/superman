.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A39B0
/* A45B0 800A39B0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A45B4 800A39B4 AFA00008 */  sw         $zero, 8($sp)
/* A45B8 800A39B8 AFA40004 */  sw         $a0, 4($sp)
/* A45BC 800A39BC 18A00010 */  blez       $a1, .L800A3A00
/* A45C0 800A39C0 AFA0000C */   sw        $zero, 0xc($sp)
.L800A39C4:
/* A45C4 800A39C4 8FAF0004 */  lw         $t7, 4($sp)
/* A45C8 800A39C8 8FAE0008 */  lw         $t6, 8($sp)
/* A45CC 800A39CC 91F80000 */  lbu        $t8, ($t7)
/* A45D0 800A39D0 25E80001 */  addiu      $t0, $t7, 1
/* A45D4 800A39D4 AFA80004 */  sw         $t0, 4($sp)
/* A45D8 800A39D8 01D8C821 */  addu       $t9, $t6, $t8
/* A45DC 800A39DC AFB90008 */  sw         $t9, 8($sp)
/* A45E0 800A39E0 8FA90008 */  lw         $t1, 8($sp)
/* A45E4 800A39E4 312AFFFF */  andi       $t2, $t1, 0xffff
/* A45E8 800A39E8 AFAA0008 */  sw         $t2, 8($sp)
/* A45EC 800A39EC 8FAB000C */  lw         $t3, 0xc($sp)
/* A45F0 800A39F0 256C0001 */  addiu      $t4, $t3, 1
/* A45F4 800A39F4 0185082A */  slt        $at, $t4, $a1
/* A45F8 800A39F8 1420FFF2 */  bnez       $at, .L800A39C4
/* A45FC 800A39FC AFAC000C */   sw        $t4, 0xc($sp)
.L800A3A00:
/* A4600 800A3A00 10000003 */  b          .L800A3A10
/* A4604 800A3A04 97A2000A */   lhu       $v0, 0xa($sp)
/* A4608 800A3A08 10000001 */  b          .L800A3A10
/* A460C 800A3A0C 00000000 */   nop
.L800A3A10:
/* A4610 800A3A10 03E00008 */  jr         $ra
/* A4614 800A3A14 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800A3A18
/* A4618 800A3A18 27BDFFF8 */  addiu      $sp, $sp, -8
/* A461C 800A3A1C A7A00006 */  sh         $zero, 6($sp)
/* A4620 800A3A20 A4C00000 */  sh         $zero, ($a2)
/* A4624 800A3A24 94CE0000 */  lhu        $t6, ($a2)
/* A4628 800A3A28 A4AE0000 */  sh         $t6, ($a1)
/* A462C 800A3A2C AFA00000 */  sw         $zero, ($sp)
.L800A3A30:
/* A4630 800A3A30 8FAF0000 */  lw         $t7, ($sp)
/* A4634 800A3A34 008FC021 */  addu       $t8, $a0, $t7
/* A4638 800A3A38 97190000 */  lhu        $t9, ($t8)
/* A463C 800A3A3C A7B90006 */  sh         $t9, 6($sp)
/* A4640 800A3A40 94A80000 */  lhu        $t0, ($a1)
/* A4644 800A3A44 97A90006 */  lhu        $t1, 6($sp)
/* A4648 800A3A48 01095021 */  addu       $t2, $t0, $t1
/* A464C 800A3A4C A4AA0000 */  sh         $t2, ($a1)
/* A4650 800A3A50 97AC0006 */  lhu        $t4, 6($sp)
/* A4654 800A3A54 94CB0000 */  lhu        $t3, ($a2)
/* A4658 800A3A58 01806827 */  not        $t5, $t4
/* A465C 800A3A5C 016D7021 */  addu       $t6, $t3, $t5
/* A4660 800A3A60 A4CE0000 */  sh         $t6, ($a2)
/* A4664 800A3A64 8FAF0000 */  lw         $t7, ($sp)
/* A4668 800A3A68 25F80002 */  addiu      $t8, $t7, 2
/* A466C 800A3A6C 2F01001C */  sltiu      $at, $t8, 0x1c
/* A4670 800A3A70 1420FFEF */  bnez       $at, .L800A3A30
/* A4674 800A3A74 AFB80000 */   sw        $t8, ($sp)
/* A4678 800A3A78 10000003 */  b          .L800A3A88
/* A467C 800A3A7C 00001025 */   or        $v0, $zero, $zero
/* A4680 800A3A80 10000001 */  b          .L800A3A88
/* A4684 800A3A84 00000000 */   nop
.L800A3A88:
/* A4688 800A3A88 03E00008 */  jr         $ra
/* A468C 800A3A8C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A3A90
/* A4690 800A3A90 27BDFF88 */  addiu      $sp, $sp, -0x78
/* A4694 800A3A94 AFBF001C */  sw         $ra, 0x1c($sp)
/* A4698 800A3A98 AFA40078 */  sw         $a0, 0x78($sp)
/* A469C 800A3A9C AFA5007C */  sw         $a1, 0x7c($sp)
/* A46A0 800A3AA0 AFA60080 */  sw         $a2, 0x80($sp)
/* A46A4 800A3AA4 AFA00074 */  sw         $zero, 0x74($sp)
/* A46A8 800A3AA8 A3A00033 */  sb         $zero, 0x33($sp)
/* A46AC 800A3AAC 8FAE0078 */  lw         $t6, 0x78($sp)
/* A46B0 800A3AB0 91CF0065 */  lbu        $t7, 0x65($t6)
/* A46B4 800A3AB4 11E0000B */  beqz       $t7, .L800A3AE4
/* A46B8 800A3AB8 00000000 */   nop
/* A46BC 800A3ABC 8FB80078 */  lw         $t8, 0x78($sp)
/* A46C0 800A3AC0 A3000065 */  sb         $zero, 0x65($t8)
/* A46C4 800A3AC4 0C0291D5 */  jal        func_800A4754
/* A46C8 800A3AC8 8FA40078 */   lw        $a0, 0x78($sp)
/* A46CC 800A3ACC AFA20074 */  sw         $v0, 0x74($sp)
/* A46D0 800A3AD0 8FB90074 */  lw         $t9, 0x74($sp)
/* A46D4 800A3AD4 13200003 */  beqz       $t9, .L800A3AE4
/* A46D8 800A3AD8 00000000 */   nop
/* A46DC 800A3ADC 100000F9 */  b          .L800A3EC4
/* A46E0 800A3AE0 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3AE4:
/* A46E4 800A3AE4 8FA90080 */  lw         $t1, 0x80($sp)
/* A46E8 800A3AE8 2408FFFF */  addiu      $t0, $zero, -1
/* A46EC 800A3AEC AD280000 */  sw         $t0, ($t1)
/* A46F0 800A3AF0 0C02923C */  jal        func_800A48F0
/* A46F4 800A3AF4 00000000 */   nop
/* A46F8 800A3AF8 8FAA0080 */  lw         $t2, 0x80($sp)
/* A46FC 800A3AFC AD420004 */  sw         $v0, 4($t2)
/* A4700 800A3B00 8FAB007C */  lw         $t3, 0x7c($sp)
/* A4704 800A3B04 8FAE0080 */  lw         $t6, 0x80($sp)
/* A4708 800A3B08 8D6C0008 */  lw         $t4, 8($t3)
/* A470C 800A3B0C 8D6D000C */  lw         $t5, 0xc($t3)
/* A4710 800A3B10 ADCC0008 */  sw         $t4, 8($t6)
/* A4714 800A3B14 ADCD000C */  sw         $t5, 0xc($t6)
/* A4718 800A3B18 8FAF007C */  lw         $t7, 0x7c($sp)
/* A471C 800A3B1C 8FA80080 */  lw         $t0, 0x80($sp)
/* A4720 800A3B20 8DF80010 */  lw         $t8, 0x10($t7)
/* A4724 800A3B24 8DF90014 */  lw         $t9, 0x14($t7)
/* A4728 800A3B28 AD180010 */  sw         $t8, 0x10($t0)
/* A472C 800A3B2C AD190014 */  sw         $t9, 0x14($t0)
/* A4730 800A3B30 AFA00028 */  sw         $zero, 0x28($sp)
.L800A3B34:
/* A4734 800A3B34 8FA90028 */  lw         $t1, 0x28($sp)
/* A4738 800A3B38 8FAA0078 */  lw         $t2, 0x78($sp)
/* A473C 800A3B3C A1490065 */  sb         $t1, 0x65($t2)
/* A4740 800A3B40 0C0291D5 */  jal        func_800A4754
/* A4744 800A3B44 8FA40078 */   lw        $a0, 0x78($sp)
/* A4748 800A3B48 AFA20074 */  sw         $v0, 0x74($sp)
/* A474C 800A3B4C 8FAB0074 */  lw         $t3, 0x74($sp)
/* A4750 800A3B50 11600003 */  beqz       $t3, .L800A3B60
/* A4754 800A3B54 00000000 */   nop
/* A4758 800A3B58 100000DA */  b          .L800A3EC4
/* A475C 800A3B5C 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3B60:
/* A4760 800A3B60 8FAC0078 */  lw         $t4, 0x78($sp)
/* A4764 800A3B64 00003025 */  or         $a2, $zero, $zero
/* A4768 800A3B68 27A70054 */  addiu      $a3, $sp, 0x54
/* A476C 800A3B6C 8D840004 */  lw         $a0, 4($t4)
/* A4770 800A3B70 0C02E3D8 */  jal        func_800B8F60
/* A4774 800A3B74 8D850008 */   lw        $a1, 8($t4)
/* A4778 800A3B78 AFA20074 */  sw         $v0, 0x74($sp)
/* A477C 800A3B7C 8FAD0074 */  lw         $t5, 0x74($sp)
/* A4780 800A3B80 11A00003 */  beqz       $t5, .L800A3B90
/* A4784 800A3B84 00000000 */   nop
/* A4788 800A3B88 100000CE */  b          .L800A3EC4
/* A478C 800A3B8C 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3B90:
/* A4790 800A3B90 8FAE0028 */  lw         $t6, 0x28($sp)
/* A4794 800A3B94 27B80054 */  addiu      $t8, $sp, 0x54
/* A4798 800A3B98 35CF0080 */  ori        $t7, $t6, 0x80
/* A479C 800A3B9C A30F0000 */  sb         $t7, ($t8)
/* A47A0 800A3BA0 24190001 */  addiu      $t9, $zero, 1
/* A47A4 800A3BA4 AFB9002C */  sw         $t9, 0x2c($sp)
.L800A3BA8:
/* A47A8 800A3BA8 8FA8002C */  lw         $t0, 0x2c($sp)
/* A47AC 800A3BAC 27A90054 */  addiu      $t1, $sp, 0x54
/* A47B0 800A3BB0 01095021 */  addu       $t2, $t0, $t1
/* A47B4 800A3BB4 914B0000 */  lbu        $t3, ($t2)
/* A47B8 800A3BB8 01606027 */  not        $t4, $t3
/* A47BC 800A3BBC A14C0000 */  sb         $t4, ($t2)
/* A47C0 800A3BC0 8FAD002C */  lw         $t5, 0x2c($sp)
/* A47C4 800A3BC4 25AE0001 */  addiu      $t6, $t5, 1
/* A47C8 800A3BC8 29C10020 */  slti       $at, $t6, 0x20
/* A47CC 800A3BCC 1420FFF6 */  bnez       $at, .L800A3BA8
/* A47D0 800A3BD0 AFAE002C */   sw        $t6, 0x2c($sp)
/* A47D4 800A3BD4 8FAF0078 */  lw         $t7, 0x78($sp)
/* A47D8 800A3BD8 00003025 */  or         $a2, $zero, $zero
/* A47DC 800A3BDC 27A70054 */  addiu      $a3, $sp, 0x54
/* A47E0 800A3BE0 8DE40004 */  lw         $a0, 4($t7)
/* A47E4 800A3BE4 8DE50008 */  lw         $a1, 8($t7)
/* A47E8 800A3BE8 0C02DC04 */  jal        func_800B7010
/* A47EC 800A3BEC AFA00010 */   sw        $zero, 0x10($sp)
/* A47F0 800A3BF0 AFA20074 */  sw         $v0, 0x74($sp)
/* A47F4 800A3BF4 8FB80074 */  lw         $t8, 0x74($sp)
/* A47F8 800A3BF8 13000003 */  beqz       $t8, .L800A3C08
/* A47FC 800A3BFC 00000000 */   nop
/* A4800 800A3C00 100000B0 */  b          .L800A3EC4
/* A4804 800A3C04 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3C08:
/* A4808 800A3C08 8FB90078 */  lw         $t9, 0x78($sp)
/* A480C 800A3C0C 00003025 */  or         $a2, $zero, $zero
/* A4810 800A3C10 27A70034 */  addiu      $a3, $sp, 0x34
/* A4814 800A3C14 8F240004 */  lw         $a0, 4($t9)
/* A4818 800A3C18 0C02E3D8 */  jal        func_800B8F60
/* A481C 800A3C1C 8F250008 */   lw        $a1, 8($t9)
/* A4820 800A3C20 AFA20074 */  sw         $v0, 0x74($sp)
/* A4824 800A3C24 8FA80074 */  lw         $t0, 0x74($sp)
/* A4828 800A3C28 11000003 */  beqz       $t0, .L800A3C38
/* A482C 800A3C2C 00000000 */   nop
/* A4830 800A3C30 100000A4 */  b          .L800A3EC4
/* A4834 800A3C34 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3C38:
/* A4838 800A3C38 AFA0002C */  sw         $zero, 0x2c($sp)
.L800A3C3C:
/* A483C 800A3C3C 8FA9002C */  lw         $t1, 0x2c($sp)
/* A4840 800A3C40 03A95821 */  addu       $t3, $sp, $t1
/* A4844 800A3C44 03A96021 */  addu       $t4, $sp, $t1
/* A4848 800A3C48 918C0034 */  lbu        $t4, 0x34($t4)
/* A484C 800A3C4C 916B0054 */  lbu        $t3, 0x54($t3)
/* A4850 800A3C50 116C0003 */  beq        $t3, $t4, .L800A3C60
/* A4854 800A3C54 00000000 */   nop
/* A4858 800A3C58 10000006 */  b          .L800A3C74
/* A485C 800A3C5C 00000000 */   nop
.L800A3C60:
/* A4860 800A3C60 8FAA002C */  lw         $t2, 0x2c($sp)
/* A4864 800A3C64 254D0001 */  addiu      $t5, $t2, 1
/* A4868 800A3C68 29A10020 */  slti       $at, $t5, 0x20
/* A486C 800A3C6C 1420FFF3 */  bnez       $at, .L800A3C3C
/* A4870 800A3C70 AFAD002C */   sw        $t5, 0x2c($sp)
.L800A3C74:
/* A4874 800A3C74 8FAE002C */  lw         $t6, 0x2c($sp)
/* A4878 800A3C78 24010020 */  addiu      $at, $zero, 0x20
/* A487C 800A3C7C 11C10003 */  beq        $t6, $at, .L800A3C8C
/* A4880 800A3C80 00000000 */   nop
/* A4884 800A3C84 10000028 */  b          .L800A3D28
/* A4888 800A3C88 00000000 */   nop
.L800A3C8C:
/* A488C 800A3C8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* A4890 800A3C90 19E0001E */  blez       $t7, .L800A3D0C
/* A4894 800A3C94 00000000 */   nop
/* A4898 800A3C98 8FB80078 */  lw         $t8, 0x78($sp)
/* A489C 800A3C9C A3000065 */  sb         $zero, 0x65($t8)
/* A48A0 800A3CA0 0C0291D5 */  jal        func_800A4754
/* A48A4 800A3CA4 8FA40078 */   lw        $a0, 0x78($sp)
/* A48A8 800A3CA8 AFA20074 */  sw         $v0, 0x74($sp)
/* A48AC 800A3CAC 8FB90074 */  lw         $t9, 0x74($sp)
/* A48B0 800A3CB0 13200003 */  beqz       $t9, .L800A3CC0
/* A48B4 800A3CB4 00000000 */   nop
/* A48B8 800A3CB8 10000082 */  b          .L800A3EC4
/* A48BC 800A3CBC 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3CC0:
/* A48C0 800A3CC0 8FA80078 */  lw         $t0, 0x78($sp)
/* A48C4 800A3CC4 00003025 */  or         $a2, $zero, $zero
/* A48C8 800A3CC8 27A70054 */  addiu      $a3, $sp, 0x54
/* A48CC 800A3CCC 8D040004 */  lw         $a0, 4($t0)
/* A48D0 800A3CD0 0C02E3D8 */  jal        func_800B8F60
/* A48D4 800A3CD4 8D050008 */   lw        $a1, 8($t0)
/* A48D8 800A3CD8 AFA20074 */  sw         $v0, 0x74($sp)
/* A48DC 800A3CDC 8FA90074 */  lw         $t1, 0x74($sp)
/* A48E0 800A3CE0 11200003 */  beqz       $t1, .L800A3CF0
/* A48E4 800A3CE4 00000000 */   nop
/* A48E8 800A3CE8 10000076 */  b          .L800A3EC4
/* A48EC 800A3CEC 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3CF0:
/* A48F0 800A3CF0 27AB0054 */  addiu      $t3, $sp, 0x54
/* A48F4 800A3CF4 916C0000 */  lbu        $t4, ($t3)
/* A48F8 800A3CF8 24010080 */  addiu      $at, $zero, 0x80
/* A48FC 800A3CFC 11810003 */  beq        $t4, $at, .L800A3D0C
/* A4900 800A3D00 00000000 */   nop
/* A4904 800A3D04 10000008 */  b          .L800A3D28
/* A4908 800A3D08 00000000 */   nop
.L800A3D0C:
/* A490C 800A3D0C 8FAA0028 */  lw         $t2, 0x28($sp)
/* A4910 800A3D10 254D0001 */  addiu      $t5, $t2, 1
/* A4914 800A3D14 AFAD0028 */  sw         $t5, 0x28($sp)
/* A4918 800A3D18 8FAE0028 */  lw         $t6, 0x28($sp)
/* A491C 800A3D1C 29C1003E */  slti       $at, $t6, 0x3e
/* A4920 800A3D20 1420FF84 */  bnez       $at, .L800A3B34
/* A4924 800A3D24 00000000 */   nop
.L800A3D28:
/* A4928 800A3D28 8FAF0078 */  lw         $t7, 0x78($sp)
/* A492C 800A3D2C A1E00065 */  sb         $zero, 0x65($t7)
/* A4930 800A3D30 0C0291D5 */  jal        func_800A4754
/* A4934 800A3D34 8FA40078 */   lw        $a0, 0x78($sp)
/* A4938 800A3D38 AFA20074 */  sw         $v0, 0x74($sp)
/* A493C 800A3D3C 8FB80074 */  lw         $t8, 0x74($sp)
/* A4940 800A3D40 13000003 */  beqz       $t8, .L800A3D50
/* A4944 800A3D44 00000000 */   nop
/* A4948 800A3D48 1000005E */  b          .L800A3EC4
/* A494C 800A3D4C 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3D50:
/* A4950 800A3D50 8FB90028 */  lw         $t9, 0x28($sp)
/* A4954 800A3D54 1B200004 */  blez       $t9, .L800A3D68
/* A4958 800A3D58 00000000 */   nop
/* A495C 800A3D5C 24080001 */  addiu      $t0, $zero, 1
/* A4960 800A3D60 10000002 */  b          .L800A3D6C
/* A4964 800A3D64 A3A80033 */   sb        $t0, 0x33($sp)
.L800A3D68:
/* A4968 800A3D68 A3A00033 */  sb         $zero, 0x33($sp)
.L800A3D6C:
/* A496C 800A3D6C 8FA9007C */  lw         $t1, 0x7c($sp)
/* A4970 800A3D70 93AA0033 */  lbu        $t2, 0x33($sp)
/* A4974 800A3D74 8FAE0080 */  lw         $t6, 0x80($sp)
/* A4978 800A3D78 952B0018 */  lhu        $t3, 0x18($t1)
/* A497C 800A3D7C 316CFFFE */  andi       $t4, $t3, 0xfffe
/* A4980 800A3D80 018A6825 */  or         $t5, $t4, $t2
/* A4984 800A3D84 A5CD0018 */  sh         $t5, 0x18($t6)
/* A4988 800A3D88 8FAF0028 */  lw         $t7, 0x28($sp)
/* A498C 800A3D8C 8FB80080 */  lw         $t8, 0x80($sp)
/* A4990 800A3D90 A30F001A */  sb         $t7, 0x1a($t8)
/* A4994 800A3D94 8FB9007C */  lw         $t9, 0x7c($sp)
/* A4998 800A3D98 8FA90080 */  lw         $t1, 0x80($sp)
/* A499C 800A3D9C 9328001B */  lbu        $t0, 0x1b($t9)
/* A49A0 800A3DA0 A128001B */  sb         $t0, 0x1b($t1)
/* A49A4 800A3DA4 8FAB0080 */  lw         $t3, 0x80($sp)
/* A49A8 800A3DA8 01602025 */  or         $a0, $t3, $zero
/* A49AC 800A3DAC 2565001C */  addiu      $a1, $t3, 0x1c
/* A49B0 800A3DB0 0C028E86 */  jal        func_800A3A18
/* A49B4 800A3DB4 2566001E */   addiu     $a2, $t3, 0x1e
/* A49B8 800A3DB8 240C0001 */  addiu      $t4, $zero, 1
/* A49BC 800A3DBC 27AA0020 */  addiu      $t2, $sp, 0x20
/* A49C0 800A3DC0 A54C0000 */  sh         $t4, ($t2)
/* A49C4 800A3DC4 240D0003 */  addiu      $t5, $zero, 3
/* A49C8 800A3DC8 27AE0020 */  addiu      $t6, $sp, 0x20
/* A49CC 800A3DCC A5CD0002 */  sh         $t5, 2($t6)
/* A49D0 800A3DD0 240F0004 */  addiu      $t7, $zero, 4
/* A49D4 800A3DD4 27B80020 */  addiu      $t8, $sp, 0x20
/* A49D8 800A3DD8 A70F0004 */  sh         $t7, 4($t8)
/* A49DC 800A3DDC 24190006 */  addiu      $t9, $zero, 6
/* A49E0 800A3DE0 27A80020 */  addiu      $t0, $sp, 0x20
/* A49E4 800A3DE4 A5190006 */  sh         $t9, 6($t0)
/* A49E8 800A3DE8 AFA0002C */  sw         $zero, 0x2c($sp)
.L800A3DEC:
/* A49EC 800A3DEC 8FAB002C */  lw         $t3, 0x2c($sp)
/* A49F0 800A3DF0 8FA90078 */  lw         $t1, 0x78($sp)
/* A49F4 800A3DF4 240A0001 */  addiu      $t2, $zero, 1
/* A49F8 800A3DF8 000B6040 */  sll        $t4, $t3, 1
/* A49FC 800A3DFC 03AC3021 */  addu       $a2, $sp, $t4
/* A4A00 800A3E00 94C60020 */  lhu        $a2, 0x20($a2)
/* A4A04 800A3E04 8D240004 */  lw         $a0, 4($t1)
/* A4A08 800A3E08 8D250008 */  lw         $a1, 8($t1)
/* A4A0C 800A3E0C AFAA0010 */  sw         $t2, 0x10($sp)
/* A4A10 800A3E10 0C02DC04 */  jal        func_800B7010
/* A4A14 800A3E14 8FA70080 */   lw        $a3, 0x80($sp)
/* A4A18 800A3E18 AFA20074 */  sw         $v0, 0x74($sp)
/* A4A1C 800A3E1C 8FAD0074 */  lw         $t5, 0x74($sp)
/* A4A20 800A3E20 11A00003 */  beqz       $t5, .L800A3E30
/* A4A24 800A3E24 00000000 */   nop
/* A4A28 800A3E28 10000026 */  b          .L800A3EC4
/* A4A2C 800A3E2C 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3E30:
/* A4A30 800A3E30 8FAE002C */  lw         $t6, 0x2c($sp)
/* A4A34 800A3E34 25CF0001 */  addiu      $t7, $t6, 1
/* A4A38 800A3E38 29E10004 */  slti       $at, $t7, 4
/* A4A3C 800A3E3C 1420FFEB */  bnez       $at, .L800A3DEC
/* A4A40 800A3E40 AFAF002C */   sw        $t7, 0x2c($sp)
/* A4A44 800A3E44 8FB80078 */  lw         $t8, 0x78($sp)
/* A4A48 800A3E48 24060001 */  addiu      $a2, $zero, 1
/* A4A4C 800A3E4C 27A70054 */  addiu      $a3, $sp, 0x54
/* A4A50 800A3E50 8F040004 */  lw         $a0, 4($t8)
/* A4A54 800A3E54 0C02E3D8 */  jal        func_800B8F60
/* A4A58 800A3E58 8F050008 */   lw        $a1, 8($t8)
/* A4A5C 800A3E5C AFA20074 */  sw         $v0, 0x74($sp)
/* A4A60 800A3E60 8FB90074 */  lw         $t9, 0x74($sp)
/* A4A64 800A3E64 13200003 */  beqz       $t9, .L800A3E74
/* A4A68 800A3E68 00000000 */   nop
/* A4A6C 800A3E6C 10000015 */  b          .L800A3EC4
/* A4A70 800A3E70 8FA20074 */   lw        $v0, 0x74($sp)
.L800A3E74:
/* A4A74 800A3E74 AFA0002C */  sw         $zero, 0x2c($sp)
.L800A3E78:
/* A4A78 800A3E78 8FA9002C */  lw         $t1, 0x2c($sp)
/* A4A7C 800A3E7C 8FA80080 */  lw         $t0, 0x80($sp)
/* A4A80 800A3E80 03A95021 */  addu       $t2, $sp, $t1
/* A4A84 800A3E84 01095821 */  addu       $t3, $t0, $t1
/* A4A88 800A3E88 916C0000 */  lbu        $t4, ($t3)
/* A4A8C 800A3E8C 914A0054 */  lbu        $t2, 0x54($t2)
/* A4A90 800A3E90 118A0003 */  beq        $t4, $t2, .L800A3EA0
/* A4A94 800A3E94 00000000 */   nop
/* A4A98 800A3E98 1000000A */  b          .L800A3EC4
/* A4A9C 800A3E9C 2402000A */   addiu     $v0, $zero, 0xa
.L800A3EA0:
/* A4AA0 800A3EA0 8FAD002C */  lw         $t5, 0x2c($sp)
/* A4AA4 800A3EA4 25AE0001 */  addiu      $t6, $t5, 1
/* A4AA8 800A3EA8 29C10020 */  slti       $at, $t6, 0x20
/* A4AAC 800A3EAC 1420FFF2 */  bnez       $at, .L800A3E78
/* A4AB0 800A3EB0 AFAE002C */   sw        $t6, 0x2c($sp)
/* A4AB4 800A3EB4 10000003 */  b          .L800A3EC4
/* A4AB8 800A3EB8 00001025 */   or        $v0, $zero, $zero
/* A4ABC 800A3EBC 10000001 */  b          .L800A3EC4
/* A4AC0 800A3EC0 00000000 */   nop
.L800A3EC4:
/* A4AC4 800A3EC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* A4AC8 800A3EC8 27BD0078 */  addiu      $sp, $sp, 0x78
/* A4ACC 800A3ECC 03E00008 */  jr         $ra
/* A4AD0 800A3ED0 00000000 */   nop

glabel func_800A3ED4
/* A4AD4 800A3ED4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A4AD8 800A3ED8 AFBF001C */  sw         $ra, 0x1c($sp)
/* A4ADC 800A3EDC AFA40038 */  sw         $a0, 0x38($sp)
/* A4AE0 800A3EE0 AFA5003C */  sw         $a1, 0x3c($sp)
/* A4AE4 800A3EE4 AFA0002C */  sw         $zero, 0x2c($sp)
/* A4AE8 800A3EE8 8FAE0038 */  lw         $t6, 0x38($sp)
/* A4AEC 800A3EEC 91CF0065 */  lbu        $t7, 0x65($t6)
/* A4AF0 800A3EF0 11E0000B */  beqz       $t7, .L800A3F20
/* A4AF4 800A3EF4 00000000 */   nop
/* A4AF8 800A3EF8 8FB80038 */  lw         $t8, 0x38($sp)
/* A4AFC 800A3EFC A3000065 */  sb         $zero, 0x65($t8)
/* A4B00 800A3F00 0C0291D5 */  jal        func_800A4754
/* A4B04 800A3F04 8FA40038 */   lw        $a0, 0x38($sp)
/* A4B08 800A3F08 AFA2002C */  sw         $v0, 0x2c($sp)
/* A4B0C 800A3F0C 8FB9002C */  lw         $t9, 0x2c($sp)
/* A4B10 800A3F10 13200003 */  beqz       $t9, .L800A3F20
/* A4B14 800A3F14 00000000 */   nop
/* A4B18 800A3F18 10000057 */  b          .L800A4078
/* A4B1C 800A3F1C 8FA2002C */   lw        $v0, 0x2c($sp)
.L800A3F20:
/* A4B20 800A3F20 24080001 */  addiu      $t0, $zero, 1
/* A4B24 800A3F24 27A90030 */  addiu      $t1, $sp, 0x30
/* A4B28 800A3F28 A5280000 */  sh         $t0, ($t1)
/* A4B2C 800A3F2C 240A0003 */  addiu      $t2, $zero, 3
/* A4B30 800A3F30 27AB0030 */  addiu      $t3, $sp, 0x30
/* A4B34 800A3F34 A56A0002 */  sh         $t2, 2($t3)
/* A4B38 800A3F38 240C0004 */  addiu      $t4, $zero, 4
/* A4B3C 800A3F3C 27AD0030 */  addiu      $t5, $sp, 0x30
/* A4B40 800A3F40 A5AC0004 */  sh         $t4, 4($t5)
/* A4B44 800A3F44 240E0006 */  addiu      $t6, $zero, 6
/* A4B48 800A3F48 27AF0030 */  addiu      $t7, $sp, 0x30
/* A4B4C 800A3F4C A5EE0006 */  sh         $t6, 6($t7)
/* A4B50 800A3F50 24180001 */  addiu      $t8, $zero, 1
/* A4B54 800A3F54 AFB80024 */  sw         $t8, 0x24($sp)
.L800A3F58:
/* A4B58 800A3F58 8FA80024 */  lw         $t0, 0x24($sp)
/* A4B5C 800A3F5C 8FB90038 */  lw         $t9, 0x38($sp)
/* A4B60 800A3F60 8FA7003C */  lw         $a3, 0x3c($sp)
/* A4B64 800A3F64 00084840 */  sll        $t1, $t0, 1
/* A4B68 800A3F68 03A93021 */  addu       $a2, $sp, $t1
/* A4B6C 800A3F6C 94C60030 */  lhu        $a2, 0x30($a2)
/* A4B70 800A3F70 8F240004 */  lw         $a0, 4($t9)
/* A4B74 800A3F74 0C02E3D8 */  jal        func_800B8F60
/* A4B78 800A3F78 8F250008 */   lw        $a1, 8($t9)
/* A4B7C 800A3F7C AFA2002C */  sw         $v0, 0x2c($sp)
/* A4B80 800A3F80 8FAA002C */  lw         $t2, 0x2c($sp)
/* A4B84 800A3F84 11400003 */  beqz       $t2, .L800A3F94
/* A4B88 800A3F88 00000000 */   nop
/* A4B8C 800A3F8C 1000003A */  b          .L800A4078
/* A4B90 800A3F90 8FA2002C */   lw        $v0, 0x2c($sp)
.L800A3F94:
/* A4B94 800A3F94 8FA4003C */  lw         $a0, 0x3c($sp)
/* A4B98 800A3F98 27A5002A */  addiu      $a1, $sp, 0x2a
/* A4B9C 800A3F9C 0C028E86 */  jal        func_800A3A18
/* A4BA0 800A3FA0 27A60028 */   addiu     $a2, $sp, 0x28
/* A4BA4 800A3FA4 8FAB003C */  lw         $t3, 0x3c($sp)
/* A4BA8 800A3FA8 97AD002A */  lhu        $t5, 0x2a($sp)
/* A4BAC 800A3FAC 956C001C */  lhu        $t4, 0x1c($t3)
/* A4BB0 800A3FB0 158D0007 */  bne        $t4, $t5, .L800A3FD0
/* A4BB4 800A3FB4 00000000 */   nop
/* A4BB8 800A3FB8 956E001E */  lhu        $t6, 0x1e($t3)
/* A4BBC 800A3FBC 97AF0028 */  lhu        $t7, 0x28($sp)
/* A4BC0 800A3FC0 15CF0003 */  bne        $t6, $t7, .L800A3FD0
/* A4BC4 800A3FC4 00000000 */   nop
/* A4BC8 800A3FC8 10000006 */  b          .L800A3FE4
/* A4BCC 800A3FCC 00000000 */   nop
.L800A3FD0:
/* A4BD0 800A3FD0 8FB80024 */  lw         $t8, 0x24($sp)
/* A4BD4 800A3FD4 27190001 */  addiu      $t9, $t8, 1
/* A4BD8 800A3FD8 2B210004 */  slti       $at, $t9, 4
/* A4BDC 800A3FDC 1420FFDE */  bnez       $at, .L800A3F58
/* A4BE0 800A3FE0 AFB90024 */   sw        $t9, 0x24($sp)
.L800A3FE4:
/* A4BE4 800A3FE4 8FA80024 */  lw         $t0, 0x24($sp)
/* A4BE8 800A3FE8 24010004 */  addiu      $at, $zero, 4
/* A4BEC 800A3FEC 15010003 */  bne        $t0, $at, .L800A3FFC
/* A4BF0 800A3FF0 00000000 */   nop
/* A4BF4 800A3FF4 10000020 */  b          .L800A4078
/* A4BF8 800A3FF8 2402000A */   addiu     $v0, $zero, 0xa
.L800A3FFC:
/* A4BFC 800A3FFC AFA00020 */  sw         $zero, 0x20($sp)
.L800A4000:
/* A4C00 800A4000 8FA90020 */  lw         $t1, 0x20($sp)
/* A4C04 800A4004 8FAA0024 */  lw         $t2, 0x24($sp)
/* A4C08 800A4008 112A0012 */  beq        $t1, $t2, .L800A4054
/* A4C0C 800A400C 00000000 */   nop
/* A4C10 800A4010 8FAD0020 */  lw         $t5, 0x20($sp)
/* A4C14 800A4014 8FAC0038 */  lw         $t4, 0x38($sp)
/* A4C18 800A4018 240E0001 */  addiu      $t6, $zero, 1
/* A4C1C 800A401C 000D5840 */  sll        $t3, $t5, 1
/* A4C20 800A4020 03AB3021 */  addu       $a2, $sp, $t3
/* A4C24 800A4024 94C60030 */  lhu        $a2, 0x30($a2)
/* A4C28 800A4028 8D840004 */  lw         $a0, 4($t4)
/* A4C2C 800A402C 8D850008 */  lw         $a1, 8($t4)
/* A4C30 800A4030 AFAE0010 */  sw         $t6, 0x10($sp)
/* A4C34 800A4034 0C02DC04 */  jal        func_800B7010
/* A4C38 800A4038 8FA7003C */   lw        $a3, 0x3c($sp)
/* A4C3C 800A403C AFA2002C */  sw         $v0, 0x2c($sp)
/* A4C40 800A4040 8FAF002C */  lw         $t7, 0x2c($sp)
/* A4C44 800A4044 11E00003 */  beqz       $t7, .L800A4054
/* A4C48 800A4048 00000000 */   nop
/* A4C4C 800A404C 1000000A */  b          .L800A4078
/* A4C50 800A4050 8FA2002C */   lw        $v0, 0x2c($sp)
.L800A4054:
/* A4C54 800A4054 8FB80020 */  lw         $t8, 0x20($sp)
/* A4C58 800A4058 27190001 */  addiu      $t9, $t8, 1
/* A4C5C 800A405C 2B210004 */  slti       $at, $t9, 4
/* A4C60 800A4060 1420FFE7 */  bnez       $at, .L800A4000
/* A4C64 800A4064 AFB90020 */   sw        $t9, 0x20($sp)
/* A4C68 800A4068 10000003 */  b          .L800A4078
/* A4C6C 800A406C 00001025 */   or        $v0, $zero, $zero
/* A4C70 800A4070 10000001 */  b          .L800A4078
/* A4C74 800A4074 00000000 */   nop
.L800A4078:
/* A4C78 800A4078 8FBF001C */  lw         $ra, 0x1c($sp)
/* A4C7C 800A407C 27BD0038 */  addiu      $sp, $sp, 0x38
/* A4C80 800A4080 03E00008 */  jr         $ra
/* A4C84 800A4084 00000000 */   nop

glabel func_800A4088
/* A4C88 800A4088 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A4C8C 800A408C AFBF0014 */  sw         $ra, 0x14($sp)
/* A4C90 800A4090 AFA40068 */  sw         $a0, 0x68($sp)
/* A4C94 800A4094 8FAE0068 */  lw         $t6, 0x68($sp)
/* A4C98 800A4098 91CF0065 */  lbu        $t7, 0x65($t6)
/* A4C9C 800A409C 11E0000B */  beqz       $t7, .L800A40CC
/* A4CA0 800A40A0 00000000 */   nop
/* A4CA4 800A40A4 8FB80068 */  lw         $t8, 0x68($sp)
/* A4CA8 800A40A8 A3000065 */  sb         $zero, 0x65($t8)
/* A4CAC 800A40AC 0C0291D5 */  jal        func_800A4754
/* A4CB0 800A40B0 8FA40068 */   lw        $a0, 0x68($sp)
/* A4CB4 800A40B4 AFA2001C */  sw         $v0, 0x1c($sp)
/* A4CB8 800A40B8 8FB9001C */  lw         $t9, 0x1c($sp)
/* A4CBC 800A40BC 13200003 */  beqz       $t9, .L800A40CC
/* A4CC0 800A40C0 00000000 */   nop
/* A4CC4 800A40C4 10000089 */  b          .L800A42EC
/* A4CC8 800A40C8 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A40CC:
/* A4CCC 800A40CC 8FA80068 */  lw         $t0, 0x68($sp)
/* A4CD0 800A40D0 24060001 */  addiu      $a2, $zero, 1
/* A4CD4 800A40D4 27A70040 */  addiu      $a3, $sp, 0x40
/* A4CD8 800A40D8 8D040004 */  lw         $a0, 4($t0)
/* A4CDC 800A40DC 0C02E3D8 */  jal        func_800B8F60
/* A4CE0 800A40E0 8D050008 */   lw        $a1, 8($t0)
/* A4CE4 800A40E4 AFA2001C */  sw         $v0, 0x1c($sp)
/* A4CE8 800A40E8 8FA9001C */  lw         $t1, 0x1c($sp)
/* A4CEC 800A40EC 11200003 */  beqz       $t1, .L800A40FC
/* A4CF0 800A40F0 00000000 */   nop
/* A4CF4 800A40F4 1000007D */  b          .L800A42EC
/* A4CF8 800A40F8 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A40FC:
/* A4CFC 800A40FC 27A40040 */  addiu      $a0, $sp, 0x40
/* A4D00 800A4100 27A50062 */  addiu      $a1, $sp, 0x62
/* A4D04 800A4104 0C028E86 */  jal        func_800A3A18
/* A4D08 800A4108 27A60060 */   addiu     $a2, $sp, 0x60
/* A4D0C 800A410C 27AA0040 */  addiu      $t2, $sp, 0x40
/* A4D10 800A4110 AFAA0018 */  sw         $t2, 0x18($sp)
/* A4D14 800A4114 8FAB0018 */  lw         $t3, 0x18($sp)
/* A4D18 800A4118 97AD0062 */  lhu        $t5, 0x62($sp)
/* A4D1C 800A411C 956C001C */  lhu        $t4, 0x1c($t3)
/* A4D20 800A4120 158D0005 */  bne        $t4, $t5, .L800A4138
/* A4D24 800A4124 00000000 */   nop
/* A4D28 800A4128 956E001E */  lhu        $t6, 0x1e($t3)
/* A4D2C 800A412C 97AF0060 */  lhu        $t7, 0x60($sp)
/* A4D30 800A4130 11CF001B */  beq        $t6, $t7, .L800A41A0
/* A4D34 800A4134 00000000 */   nop
.L800A4138:
/* A4D38 800A4138 8FA40068 */  lw         $a0, 0x68($sp)
/* A4D3C 800A413C 0C028FB5 */  jal        func_800A3ED4
/* A4D40 800A4140 8FA50018 */   lw        $a1, 0x18($sp)
/* A4D44 800A4144 AFA2001C */  sw         $v0, 0x1c($sp)
/* A4D48 800A4148 8FB8001C */  lw         $t8, 0x1c($sp)
/* A4D4C 800A414C 2401000A */  addiu      $at, $zero, 0xa
/* A4D50 800A4150 1701000E */  bne        $t8, $at, .L800A418C
/* A4D54 800A4154 00000000 */   nop
/* A4D58 800A4158 8FA40068 */  lw         $a0, 0x68($sp)
/* A4D5C 800A415C 8FA50018 */  lw         $a1, 0x18($sp)
/* A4D60 800A4160 0C028EA4 */  jal        func_800A3A90
/* A4D64 800A4164 27A60020 */   addiu     $a2, $sp, 0x20
/* A4D68 800A4168 AFA2001C */  sw         $v0, 0x1c($sp)
/* A4D6C 800A416C 8FB9001C */  lw         $t9, 0x1c($sp)
/* A4D70 800A4170 13200003 */  beqz       $t9, .L800A4180
/* A4D74 800A4174 00000000 */   nop
/* A4D78 800A4178 1000005C */  b          .L800A42EC
/* A4D7C 800A417C 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A4180:
/* A4D80 800A4180 27A80020 */  addiu      $t0, $sp, 0x20
/* A4D84 800A4184 10000006 */  b          .L800A41A0
/* A4D88 800A4188 AFA80018 */   sw        $t0, 0x18($sp)
.L800A418C:
/* A4D8C 800A418C 8FA9001C */  lw         $t1, 0x1c($sp)
/* A4D90 800A4190 11200003 */  beqz       $t1, .L800A41A0
/* A4D94 800A4194 00000000 */   nop
/* A4D98 800A4198 10000054 */  b          .L800A42EC
/* A4D9C 800A419C 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A41A0:
/* A4DA0 800A41A0 8FAA0018 */  lw         $t2, 0x18($sp)
/* A4DA4 800A41A4 954C0018 */  lhu        $t4, 0x18($t2)
/* A4DA8 800A41A8 318D0001 */  andi       $t5, $t4, 1
/* A4DAC 800A41AC 15A00014 */  bnez       $t5, .L800A4200
/* A4DB0 800A41B0 00000000 */   nop
/* A4DB4 800A41B4 8FA40068 */  lw         $a0, 0x68($sp)
/* A4DB8 800A41B8 8FA50018 */  lw         $a1, 0x18($sp)
/* A4DBC 800A41BC 0C028EA4 */  jal        func_800A3A90
/* A4DC0 800A41C0 27A60020 */   addiu     $a2, $sp, 0x20
/* A4DC4 800A41C4 AFA2001C */  sw         $v0, 0x1c($sp)
/* A4DC8 800A41C8 8FAB001C */  lw         $t3, 0x1c($sp)
/* A4DCC 800A41CC 11600003 */  beqz       $t3, .L800A41DC
/* A4DD0 800A41D0 00000000 */   nop
/* A4DD4 800A41D4 10000045 */  b          .L800A42EC
/* A4DD8 800A41D8 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A41DC:
/* A4DDC 800A41DC 27AE0020 */  addiu      $t6, $sp, 0x20
/* A4DE0 800A41E0 AFAE0018 */  sw         $t6, 0x18($sp)
/* A4DE4 800A41E4 8FAF0018 */  lw         $t7, 0x18($sp)
/* A4DE8 800A41E8 95F80018 */  lhu        $t8, 0x18($t7)
/* A4DEC 800A41EC 33190001 */  andi       $t9, $t8, 1
/* A4DF0 800A41F0 17200003 */  bnez       $t9, .L800A4200
/* A4DF4 800A41F4 00000000 */   nop
/* A4DF8 800A41F8 1000003C */  b          .L800A42EC
/* A4DFC 800A41FC 2402000B */   addiu     $v0, $zero, 0xb
.L800A4200:
/* A4E00 800A4200 AFA00064 */  sw         $zero, 0x64($sp)
.L800A4204:
/* A4E04 800A4204 8FA80018 */  lw         $t0, 0x18($sp)
/* A4E08 800A4208 8FA90064 */  lw         $t1, 0x64($sp)
/* A4E0C 800A420C 8FAD0068 */  lw         $t5, 0x68($sp)
/* A4E10 800A4210 01095021 */  addu       $t2, $t0, $t1
/* A4E14 800A4214 914C0000 */  lbu        $t4, ($t2)
/* A4E18 800A4218 01A95821 */  addu       $t3, $t5, $t1
/* A4E1C 800A421C A16C000C */  sb         $t4, 0xc($t3)
/* A4E20 800A4220 8FAE0064 */  lw         $t6, 0x64($sp)
/* A4E24 800A4224 25CF0001 */  addiu      $t7, $t6, 1
/* A4E28 800A4228 29E10020 */  slti       $at, $t7, 0x20
/* A4E2C 800A422C 1420FFF5 */  bnez       $at, .L800A4204
/* A4E30 800A4230 AFAF0064 */   sw        $t7, 0x64($sp)
/* A4E34 800A4234 8FB80018 */  lw         $t8, 0x18($sp)
/* A4E38 800A4238 8FA80068 */  lw         $t0, 0x68($sp)
/* A4E3C 800A423C 9319001B */  lbu        $t9, 0x1b($t8)
/* A4E40 800A4240 AD19004C */  sw         $t9, 0x4c($t0)
/* A4E44 800A4244 8FAA0018 */  lw         $t2, 0x18($sp)
/* A4E48 800A4248 8FA90068 */  lw         $t1, 0x68($sp)
/* A4E4C 800A424C 914D001A */  lbu        $t5, 0x1a($t2)
/* A4E50 800A4250 A12D0064 */  sb         $t5, 0x64($t1)
/* A4E54 800A4254 8FAC0068 */  lw         $t4, 0x68($sp)
/* A4E58 800A4258 918B0064 */  lbu        $t3, 0x64($t4)
/* A4E5C 800A425C 000B7040 */  sll        $t6, $t3, 1
/* A4E60 800A4260 25CF0003 */  addiu      $t7, $t6, 3
/* A4E64 800A4264 AD8F0060 */  sw         $t7, 0x60($t4)
/* A4E68 800A4268 8FB90068 */  lw         $t9, 0x68($sp)
/* A4E6C 800A426C 24180010 */  addiu      $t8, $zero, 0x10
/* A4E70 800A4270 AF380050 */  sw         $t8, 0x50($t9)
/* A4E74 800A4274 8FAA0068 */  lw         $t2, 0x68($sp)
/* A4E78 800A4278 24080008 */  addiu      $t0, $zero, 8
/* A4E7C 800A427C AD480054 */  sw         $t0, 0x54($t2)
/* A4E80 800A4280 8FAD0068 */  lw         $t5, 0x68($sp)
/* A4E84 800A4284 91A90064 */  lbu        $t1, 0x64($t5)
/* A4E88 800A4288 000958C0 */  sll        $t3, $t1, 3
/* A4E8C 800A428C 256E0008 */  addiu      $t6, $t3, 8
/* A4E90 800A4290 ADAE0058 */  sw         $t6, 0x58($t5)
/* A4E94 800A4294 8FAF0068 */  lw         $t7, 0x68($sp)
/* A4E98 800A4298 91F80064 */  lbu        $t8, 0x64($t7)
/* A4E9C 800A429C 8DEC0058 */  lw         $t4, 0x58($t7)
/* A4EA0 800A42A0 0018C8C0 */  sll        $t9, $t8, 3
/* A4EA4 800A42A4 01994021 */  addu       $t0, $t4, $t9
/* A4EA8 800A42A8 ADE8005C */  sw         $t0, 0x5c($t7)
/* A4EAC 800A42AC 8FAA0068 */  lw         $t2, 0x68($sp)
/* A4EB0 800A42B0 24060007 */  addiu      $a2, $zero, 7
/* A4EB4 800A42B4 8D440004 */  lw         $a0, 4($t2)
/* A4EB8 800A42B8 8D450008 */  lw         $a1, 8($t2)
/* A4EBC 800A42BC 0C02E3D8 */  jal        func_800B8F60
/* A4EC0 800A42C0 2547002C */   addiu     $a3, $t2, 0x2c
/* A4EC4 800A42C4 AFA2001C */  sw         $v0, 0x1c($sp)
/* A4EC8 800A42C8 8FA9001C */  lw         $t1, 0x1c($sp)
/* A4ECC 800A42CC 11200003 */  beqz       $t1, .L800A42DC
/* A4ED0 800A42D0 00000000 */   nop
/* A4ED4 800A42D4 10000005 */  b          .L800A42EC
/* A4ED8 800A42D8 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A42DC:
/* A4EDC 800A42DC 10000003 */  b          .L800A42EC
/* A4EE0 800A42E0 00001025 */   or        $v0, $zero, $zero
/* A4EE4 800A42E4 10000001 */  b          .L800A42EC
/* A4EE8 800A42E8 00000000 */   nop
.L800A42EC:
/* A4EEC 800A42EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4EF0 800A42F0 27BD0068 */  addiu      $sp, $sp, 0x68
/* A4EF4 800A42F4 03E00008 */  jr         $ra
/* A4EF8 800A42F8 00000000 */   nop

glabel func_800A42FC
/* A4EFC 800A42FC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A4F00 800A4300 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4F04 800A4304 AFA40040 */  sw         $a0, 0x40($sp)
/* A4F08 800A4308 8FAE0040 */  lw         $t6, 0x40($sp)
/* A4F0C 800A430C 91CF0065 */  lbu        $t7, 0x65($t6)
/* A4F10 800A4310 11E0000B */  beqz       $t7, .L800A4340
/* A4F14 800A4314 00000000 */   nop
/* A4F18 800A4318 8FB80040 */  lw         $t8, 0x40($sp)
/* A4F1C 800A431C A3000065 */  sb         $zero, 0x65($t8)
/* A4F20 800A4320 0C0291D5 */  jal        func_800A4754
/* A4F24 800A4324 8FA40040 */   lw        $a0, 0x40($sp)
/* A4F28 800A4328 AFA20018 */  sw         $v0, 0x18($sp)
/* A4F2C 800A432C 8FB90018 */  lw         $t9, 0x18($sp)
/* A4F30 800A4330 13200003 */  beqz       $t9, .L800A4340
/* A4F34 800A4334 00000000 */   nop
/* A4F38 800A4338 10000031 */  b          .L800A4400
/* A4F3C 800A433C 8FA20018 */   lw        $v0, 0x18($sp)
.L800A4340:
/* A4F40 800A4340 8FA80040 */  lw         $t0, 0x40($sp)
/* A4F44 800A4344 24060001 */  addiu      $a2, $zero, 1
/* A4F48 800A4348 27A7001C */  addiu      $a3, $sp, 0x1c
/* A4F4C 800A434C 8D040004 */  lw         $a0, 4($t0)
/* A4F50 800A4350 0C02E3D8 */  jal        func_800B8F60
/* A4F54 800A4354 8D050008 */   lw        $a1, 8($t0)
/* A4F58 800A4358 AFA20018 */  sw         $v0, 0x18($sp)
/* A4F5C 800A435C 8FA90018 */  lw         $t1, 0x18($sp)
/* A4F60 800A4360 11200013 */  beqz       $t1, .L800A43B0
/* A4F64 800A4364 00000000 */   nop
/* A4F68 800A4368 8FAA0018 */  lw         $t2, 0x18($sp)
/* A4F6C 800A436C 24010002 */  addiu      $at, $zero, 2
/* A4F70 800A4370 11410003 */  beq        $t2, $at, .L800A4380
/* A4F74 800A4374 00000000 */   nop
/* A4F78 800A4378 10000021 */  b          .L800A4400
/* A4F7C 800A437C 8FA20018 */   lw        $v0, 0x18($sp)
.L800A4380:
/* A4F80 800A4380 8FAB0040 */  lw         $t3, 0x40($sp)
/* A4F84 800A4384 24060001 */  addiu      $a2, $zero, 1
/* A4F88 800A4388 27A7001C */  addiu      $a3, $sp, 0x1c
/* A4F8C 800A438C 8D640004 */  lw         $a0, 4($t3)
/* A4F90 800A4390 0C02E3D8 */  jal        func_800B8F60
/* A4F94 800A4394 8D650008 */   lw        $a1, 8($t3)
/* A4F98 800A4398 AFA20018 */  sw         $v0, 0x18($sp)
/* A4F9C 800A439C 8FAC0018 */  lw         $t4, 0x18($sp)
/* A4FA0 800A43A0 11800003 */  beqz       $t4, .L800A43B0
/* A4FA4 800A43A4 00000000 */   nop
/* A4FA8 800A43A8 10000015 */  b          .L800A4400
/* A4FAC 800A43AC 8FA20018 */   lw        $v0, 0x18($sp)
.L800A43B0:
/* A4FB0 800A43B0 AFA0003C */  sw         $zero, 0x3c($sp)
.L800A43B4:
/* A4FB4 800A43B4 8FAD003C */  lw         $t5, 0x3c($sp)
/* A4FB8 800A43B8 8FAF0040 */  lw         $t7, 0x40($sp)
/* A4FBC 800A43BC 03AD7021 */  addu       $t6, $sp, $t5
/* A4FC0 800A43C0 01EDC021 */  addu       $t8, $t7, $t5
/* A4FC4 800A43C4 9319000C */  lbu        $t9, 0xc($t8)
/* A4FC8 800A43C8 91CE001C */  lbu        $t6, 0x1c($t6)
/* A4FCC 800A43CC 11D90003 */  beq        $t6, $t9, .L800A43DC
/* A4FD0 800A43D0 00000000 */   nop
/* A4FD4 800A43D4 1000000A */  b          .L800A4400
/* A4FD8 800A43D8 24020002 */   addiu     $v0, $zero, 2
.L800A43DC:
/* A4FDC 800A43DC 8FA8003C */  lw         $t0, 0x3c($sp)
/* A4FE0 800A43E0 25090001 */  addiu      $t1, $t0, 1
/* A4FE4 800A43E4 29210020 */  slti       $at, $t1, 0x20
/* A4FE8 800A43E8 1420FFF2 */  bnez       $at, .L800A43B4
/* A4FEC 800A43EC AFA9003C */   sw        $t1, 0x3c($sp)
/* A4FF0 800A43F0 10000003 */  b          .L800A4400
/* A4FF4 800A43F4 00001025 */   or        $v0, $zero, $zero
/* A4FF8 800A43F8 10000001 */  b          .L800A4400
/* A4FFC 800A43FC 00000000 */   nop
.L800A4400:
/* A5000 800A4400 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5004 800A4404 27BD0040 */  addiu      $sp, $sp, 0x40
/* A5008 800A4408 03E00008 */  jr         $ra
/* A500C 800A440C 00000000 */   nop

glabel func_800A4410
/* A5010 800A4410 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A5014 800A4414 AFBF001C */  sw         $ra, 0x1c($sp)
/* A5018 800A4418 AFA40038 */  sw         $a0, 0x38($sp)
/* A501C 800A441C AFA5003C */  sw         $a1, 0x3c($sp)
/* A5020 800A4420 AFA60040 */  sw         $a2, 0x40($sp)
/* A5024 800A4424 AFA70044 */  sw         $a3, 0x44($sp)
/* A5028 800A4428 8FAE0038 */  lw         $t6, 0x38($sp)
/* A502C 800A442C 91CF0065 */  lbu        $t7, 0x65($t6)
/* A5030 800A4430 11E0000B */  beqz       $t7, .L800A4460
/* A5034 800A4434 00000000 */   nop
/* A5038 800A4438 8FB80038 */  lw         $t8, 0x38($sp)
/* A503C 800A443C A3000065 */  sb         $zero, 0x65($t8)
/* A5040 800A4440 0C0291D5 */  jal        func_800A4754
/* A5044 800A4444 8FA40038 */   lw        $a0, 0x38($sp)
/* A5048 800A4448 AFA2002C */  sw         $v0, 0x2c($sp)
/* A504C 800A444C 8FB9002C */  lw         $t9, 0x2c($sp)
/* A5050 800A4450 13200003 */  beqz       $t9, .L800A4460
/* A5054 800A4454 00000000 */   nop
/* A5058 800A4458 100000BA */  b          .L800A4744
/* A505C 800A445C 8FA2002C */   lw        $v0, 0x2c($sp)
.L800A4460:
/* A5060 800A4460 93A80047 */  lbu        $t0, 0x47($sp)
/* A5064 800A4464 19000004 */  blez       $t0, .L800A4478
/* A5068 800A4468 00000000 */   nop
/* A506C 800A446C 24090001 */  addiu      $t1, $zero, 1
/* A5070 800A4470 10000004 */  b          .L800A4484
/* A5074 800A4474 AFA90028 */   sw        $t1, 0x28($sp)
.L800A4478:
/* A5078 800A4478 8FAA0038 */  lw         $t2, 0x38($sp)
/* A507C 800A447C 8D4B0060 */  lw         $t3, 0x60($t2)
/* A5080 800A4480 AFAB0028 */  sw         $t3, 0x28($sp)
.L800A4484:
/* A5084 800A4484 93AC0043 */  lbu        $t4, 0x43($sp)
/* A5088 800A4488 24010001 */  addiu      $at, $zero, 1
/* A508C 800A448C 1581000C */  bne        $t4, $at, .L800A44C0
/* A5090 800A4490 00000000 */   nop
/* A5094 800A4494 8FAE0028 */  lw         $t6, 0x28($sp)
/* A5098 800A4498 8FAD003C */  lw         $t5, 0x3c($sp)
/* A509C 800A449C 000E2823 */  negu       $a1, $t6
/* A50A0 800A44A0 0005C040 */  sll        $t8, $a1, 1
/* A50A4 800A44A4 03002825 */  or         $a1, $t8, $zero
/* A50A8 800A44A8 000E7840 */  sll        $t7, $t6, 1
/* A50AC 800A44AC 24A50100 */  addiu      $a1, $a1, 0x100
/* A50B0 800A44B0 0C028E6C */  jal        func_800A39B0
/* A50B4 800A44B4 01AF2021 */   addu      $a0, $t5, $t7
/* A50B8 800A44B8 8FB9003C */  lw         $t9, 0x3c($sp)
/* A50BC 800A44BC A3220001 */  sb         $v0, 1($t9)
.L800A44C0:
/* A50C0 800A44C0 AFA00030 */  sw         $zero, 0x30($sp)
.L800A44C4:
/* A50C4 800A44C4 8FA90030 */  lw         $t1, 0x30($sp)
/* A50C8 800A44C8 8FA8003C */  lw         $t0, 0x3c($sp)
/* A50CC 800A44CC 00095140 */  sll        $t2, $t1, 5
/* A50D0 800A44D0 010A5821 */  addu       $t3, $t0, $t2
/* A50D4 800A44D4 AFAB0024 */  sw         $t3, 0x24($sp)
/* A50D8 800A44D8 93AC0043 */  lbu        $t4, 0x43($sp)
/* A50DC 800A44DC 24010001 */  addiu      $at, $zero, 1
/* A50E0 800A44E0 1581001C */  bne        $t4, $at, .L800A4554
/* A50E4 800A44E4 00000000 */   nop
/* A50E8 800A44E8 8FAD0038 */  lw         $t5, 0x38($sp)
/* A50EC 800A44EC 93AE0047 */  lbu        $t6, 0x47($sp)
/* A50F0 800A44F0 8FA90030 */  lw         $t1, 0x30($sp)
/* A50F4 800A44F4 8DAF0054 */  lw         $t7, 0x54($t5)
/* A50F8 800A44F8 000EC0C0 */  sll        $t8, $t6, 3
/* A50FC 800A44FC 8DA40004 */  lw         $a0, 4($t5)
/* A5100 800A4500 8DA50008 */  lw         $a1, 8($t5)
/* A5104 800A4504 01F8C821 */  addu       $t9, $t7, $t8
/* A5108 800A4508 AFA00010 */  sw         $zero, 0x10($sp)
/* A510C 800A450C 8FA70024 */  lw         $a3, 0x24($sp)
/* A5110 800A4510 0C02DC04 */  jal        func_800B7010
/* A5114 800A4514 03293021 */   addu      $a2, $t9, $t1
/* A5118 800A4518 AFA2002C */  sw         $v0, 0x2c($sp)
/* A511C 800A451C 8FA80038 */  lw         $t0, 0x38($sp)
/* A5120 800A4520 93AB0047 */  lbu        $t3, 0x47($sp)
/* A5124 800A4524 8FAE0030 */  lw         $t6, 0x30($sp)
/* A5128 800A4528 8D0A0058 */  lw         $t2, 0x58($t0)
/* A512C 800A452C 000B60C0 */  sll        $t4, $t3, 3
/* A5130 800A4530 8D040004 */  lw         $a0, 4($t0)
/* A5134 800A4534 8D050008 */  lw         $a1, 8($t0)
/* A5138 800A4538 014C6821 */  addu       $t5, $t2, $t4
/* A513C 800A453C AFA00010 */  sw         $zero, 0x10($sp)
/* A5140 800A4540 8FA70024 */  lw         $a3, 0x24($sp)
/* A5144 800A4544 0C02DC04 */  jal        func_800B7010
/* A5148 800A4548 01AE3021 */   addu      $a2, $t5, $t6
/* A514C 800A454C 1000000D */  b          .L800A4584
/* A5150 800A4550 AFA2002C */   sw        $v0, 0x2c($sp)
.L800A4554:
/* A5154 800A4554 8FAF0038 */  lw         $t7, 0x38($sp)
/* A5158 800A4558 93B90047 */  lbu        $t9, 0x47($sp)
/* A515C 800A455C 8FAB0030 */  lw         $t3, 0x30($sp)
/* A5160 800A4560 8DF80054 */  lw         $t8, 0x54($t7)
/* A5164 800A4564 001948C0 */  sll        $t1, $t9, 3
/* A5168 800A4568 8FA70024 */  lw         $a3, 0x24($sp)
/* A516C 800A456C 03094021 */  addu       $t0, $t8, $t1
/* A5170 800A4570 8DE40004 */  lw         $a0, 4($t7)
/* A5174 800A4574 8DE50008 */  lw         $a1, 8($t7)
/* A5178 800A4578 0C02E3D8 */  jal        func_800B8F60
/* A517C 800A457C 010B3021 */   addu      $a2, $t0, $t3
/* A5180 800A4580 AFA2002C */  sw         $v0, 0x2c($sp)
.L800A4584:
/* A5184 800A4584 8FAA002C */  lw         $t2, 0x2c($sp)
/* A5188 800A4588 11400003 */  beqz       $t2, .L800A4598
/* A518C 800A458C 00000000 */   nop
/* A5190 800A4590 1000006C */  b          .L800A4744
/* A5194 800A4594 8FA2002C */   lw        $v0, 0x2c($sp)
.L800A4598:
/* A5198 800A4598 8FAC0030 */  lw         $t4, 0x30($sp)
/* A519C 800A459C 258D0001 */  addiu      $t5, $t4, 1
/* A51A0 800A45A0 29A10008 */  slti       $at, $t5, 8
/* A51A4 800A45A4 1420FFC7 */  bnez       $at, .L800A44C4
/* A51A8 800A45A8 AFAD0030 */   sw        $t5, 0x30($sp)
/* A51AC 800A45AC 93AE0043 */  lbu        $t6, 0x43($sp)
/* A51B0 800A45B0 15C00060 */  bnez       $t6, .L800A4734
/* A51B4 800A45B4 00000000 */   nop
/* A51B8 800A45B8 8FB90028 */  lw         $t9, 0x28($sp)
/* A51BC 800A45BC 8FAF003C */  lw         $t7, 0x3c($sp)
/* A51C0 800A45C0 00192823 */  negu       $a1, $t9
/* A51C4 800A45C4 00054840 */  sll        $t1, $a1, 1
/* A51C8 800A45C8 01202825 */  or         $a1, $t1, $zero
/* A51CC 800A45CC 0019C040 */  sll        $t8, $t9, 1
/* A51D0 800A45D0 24A50100 */  addiu      $a1, $a1, 0x100
/* A51D4 800A45D4 0C028E6C */  jal        func_800A39B0
/* A51D8 800A45D8 01F82021 */   addu      $a0, $t7, $t8
/* A51DC 800A45DC A3A20037 */  sb         $v0, 0x37($sp)
/* A51E0 800A45E0 8FA8003C */  lw         $t0, 0x3c($sp)
/* A51E4 800A45E4 93AA0037 */  lbu        $t2, 0x37($sp)
/* A51E8 800A45E8 910B0001 */  lbu        $t3, 1($t0)
/* A51EC 800A45EC 116A0039 */  beq        $t3, $t2, .L800A46D4
/* A51F0 800A45F0 00000000 */   nop
/* A51F4 800A45F4 AFA00030 */  sw         $zero, 0x30($sp)
.L800A45F8:
/* A51F8 800A45F8 8FAD0030 */  lw         $t5, 0x30($sp)
/* A51FC 800A45FC 8FAC003C */  lw         $t4, 0x3c($sp)
/* A5200 800A4600 000D7140 */  sll        $t6, $t5, 5
/* A5204 800A4604 018E7821 */  addu       $t7, $t4, $t6
/* A5208 800A4608 AFAF0024 */  sw         $t7, 0x24($sp)
/* A520C 800A460C 8FB80038 */  lw         $t8, 0x38($sp)
/* A5210 800A4610 93A90047 */  lbu        $t1, 0x47($sp)
/* A5214 800A4614 8FAA0030 */  lw         $t2, 0x30($sp)
/* A5218 800A4618 8F190058 */  lw         $t9, 0x58($t8)
/* A521C 800A461C 000940C0 */  sll        $t0, $t1, 3
/* A5220 800A4620 8FA70024 */  lw         $a3, 0x24($sp)
/* A5224 800A4624 03285821 */  addu       $t3, $t9, $t0
/* A5228 800A4628 8F040004 */  lw         $a0, 4($t8)
/* A522C 800A462C 8F050008 */  lw         $a1, 8($t8)
/* A5230 800A4630 0C02E3D8 */  jal        func_800B8F60
/* A5234 800A4634 016A3021 */   addu      $a2, $t3, $t2
/* A5238 800A4638 AFA2002C */  sw         $v0, 0x2c($sp)
/* A523C 800A463C 8FAD0030 */  lw         $t5, 0x30($sp)
/* A5240 800A4640 25AC0001 */  addiu      $t4, $t5, 1
/* A5244 800A4644 29810008 */  slti       $at, $t4, 8
/* A5248 800A4648 1420FFEB */  bnez       $at, .L800A45F8
/* A524C 800A464C AFAC0030 */   sw        $t4, 0x30($sp)
/* A5250 800A4650 8FAE003C */  lw         $t6, 0x3c($sp)
/* A5254 800A4654 93B80037 */  lbu        $t8, 0x37($sp)
/* A5258 800A4658 91CF0001 */  lbu        $t7, 1($t6)
/* A525C 800A465C 11F80003 */  beq        $t7, $t8, .L800A466C
/* A5260 800A4660 00000000 */   nop
/* A5264 800A4664 10000037 */  b          .L800A4744
/* A5268 800A4668 24020003 */   addiu     $v0, $zero, 3
.L800A466C:
/* A526C 800A466C AFA00030 */  sw         $zero, 0x30($sp)
.L800A4670:
/* A5270 800A4670 8FB90030 */  lw         $t9, 0x30($sp)
/* A5274 800A4674 8FA9003C */  lw         $t1, 0x3c($sp)
/* A5278 800A4678 00194140 */  sll        $t0, $t9, 5
/* A527C 800A467C 01285821 */  addu       $t3, $t1, $t0
/* A5280 800A4680 AFAB0024 */  sw         $t3, 0x24($sp)
/* A5284 800A4684 8FAA0038 */  lw         $t2, 0x38($sp)
/* A5288 800A4688 93AC0047 */  lbu        $t4, 0x47($sp)
/* A528C 800A468C 8FB80030 */  lw         $t8, 0x30($sp)
/* A5290 800A4690 8D4D0054 */  lw         $t5, 0x54($t2)
/* A5294 800A4694 000C70C0 */  sll        $t6, $t4, 3
/* A5298 800A4698 8D440004 */  lw         $a0, 4($t2)
/* A529C 800A469C 8D450008 */  lw         $a1, 8($t2)
/* A52A0 800A46A0 01AE7821 */  addu       $t7, $t5, $t6
/* A52A4 800A46A4 AFA00010 */  sw         $zero, 0x10($sp)
/* A52A8 800A46A8 8FA70024 */  lw         $a3, 0x24($sp)
/* A52AC 800A46AC 0C02DC04 */  jal        func_800B7010
/* A52B0 800A46B0 01F83021 */   addu      $a2, $t7, $t8
/* A52B4 800A46B4 AFA2002C */  sw         $v0, 0x2c($sp)
/* A52B8 800A46B8 8FB90030 */  lw         $t9, 0x30($sp)
/* A52BC 800A46BC 27290001 */  addiu      $t1, $t9, 1
/* A52C0 800A46C0 29210008 */  slti       $at, $t1, 8
/* A52C4 800A46C4 1420FFEA */  bnez       $at, .L800A4670
/* A52C8 800A46C8 AFA90030 */   sw        $t1, 0x30($sp)
/* A52CC 800A46CC 10000019 */  b          .L800A4734
/* A52D0 800A46D0 00000000 */   nop
.L800A46D4:
/* A52D4 800A46D4 AFA00030 */  sw         $zero, 0x30($sp)
.L800A46D8:
/* A52D8 800A46D8 8FAB0030 */  lw         $t3, 0x30($sp)
/* A52DC 800A46DC 8FA8003C */  lw         $t0, 0x3c($sp)
/* A52E0 800A46E0 000B5140 */  sll        $t2, $t3, 5
/* A52E4 800A46E4 010A6021 */  addu       $t4, $t0, $t2
/* A52E8 800A46E8 AFAC0024 */  sw         $t4, 0x24($sp)
/* A52EC 800A46EC 8FAD0038 */  lw         $t5, 0x38($sp)
/* A52F0 800A46F0 93AF0047 */  lbu        $t7, 0x47($sp)
/* A52F4 800A46F4 8FA90030 */  lw         $t1, 0x30($sp)
/* A52F8 800A46F8 8DAE0058 */  lw         $t6, 0x58($t5)
/* A52FC 800A46FC 000FC0C0 */  sll        $t8, $t7, 3
/* A5300 800A4700 8DA40004 */  lw         $a0, 4($t5)
/* A5304 800A4704 8DA50008 */  lw         $a1, 8($t5)
/* A5308 800A4708 01D8C821 */  addu       $t9, $t6, $t8
/* A530C 800A470C AFA00010 */  sw         $zero, 0x10($sp)
/* A5310 800A4710 8FA70024 */  lw         $a3, 0x24($sp)
/* A5314 800A4714 0C02DC04 */  jal        func_800B7010
/* A5318 800A4718 03293021 */   addu      $a2, $t9, $t1
/* A531C 800A471C AFA2002C */  sw         $v0, 0x2c($sp)
/* A5320 800A4720 8FAB0030 */  lw         $t3, 0x30($sp)
/* A5324 800A4724 25680001 */  addiu      $t0, $t3, 1
/* A5328 800A4728 29010008 */  slti       $at, $t0, 8
/* A532C 800A472C 1420FFEA */  bnez       $at, .L800A46D8
/* A5330 800A4730 AFA80030 */   sw        $t0, 0x30($sp)
.L800A4734:
/* A5334 800A4734 10000003 */  b          .L800A4744
/* A5338 800A4738 00001025 */   or        $v0, $zero, $zero
/* A533C 800A473C 10000001 */  b          .L800A4744
/* A5340 800A4740 00000000 */   nop
.L800A4744:
/* A5344 800A4744 8FBF001C */  lw         $ra, 0x1c($sp)
/* A5348 800A4748 27BD0038 */  addiu      $sp, $sp, 0x38
/* A534C 800A474C 03E00008 */  jr         $ra
/* A5350 800A4750 00000000 */   nop

glabel func_800A4754
/* A5354 800A4754 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A5358 800A4758 AFBF001C */  sw         $ra, 0x1c($sp)
/* A535C 800A475C AFA40048 */  sw         $a0, 0x48($sp)
/* A5360 800A4760 AFA00020 */  sw         $zero, 0x20($sp)
/* A5364 800A4764 AFA00024 */  sw         $zero, 0x24($sp)
.L800A4768:
/* A5368 800A4768 8FAE0048 */  lw         $t6, 0x48($sp)
/* A536C 800A476C 8FB80024 */  lw         $t8, 0x24($sp)
/* A5370 800A4770 91CF0065 */  lbu        $t7, 0x65($t6)
/* A5374 800A4774 03B8C821 */  addu       $t9, $sp, $t8
/* A5378 800A4778 A32F0028 */  sb         $t7, 0x28($t9)
/* A537C 800A477C 8FA80024 */  lw         $t0, 0x24($sp)
/* A5380 800A4780 25090001 */  addiu      $t1, $t0, 1
/* A5384 800A4784 29210020 */  slti       $at, $t1, 0x20
/* A5388 800A4788 1420FFF7 */  bnez       $at, .L800A4768
/* A538C 800A478C AFA90024 */   sw        $t1, 0x24($sp)
/* A5390 800A4790 8FAA0048 */  lw         $t2, 0x48($sp)
/* A5394 800A4794 24060400 */  addiu      $a2, $zero, 0x400
/* A5398 800A4798 27A70028 */  addiu      $a3, $sp, 0x28
/* A539C 800A479C 8D440004 */  lw         $a0, 4($t2)
/* A53A0 800A47A0 8D450008 */  lw         $a1, 8($t2)
/* A53A4 800A47A4 0C02DC04 */  jal        func_800B7010
/* A53A8 800A47A8 AFA00010 */   sw        $zero, 0x10($sp)
/* A53AC 800A47AC AFA20020 */  sw         $v0, 0x20($sp)
/* A53B0 800A47B0 10000003 */  b          .L800A47C0
/* A53B4 800A47B4 8FA20020 */   lw        $v0, 0x20($sp)
/* A53B8 800A47B8 10000001 */  b          .L800A47C0
/* A53BC 800A47BC 00000000 */   nop
.L800A47C0:
/* A53C0 800A47C0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A53C4 800A47C4 27BD0048 */  addiu      $sp, $sp, 0x48
/* A53C8 800A47C8 03E00008 */  jr         $ra
/* A53CC 800A47CC 00000000 */   nop

glabel func_800A47D0
/* A53D0 800A47D0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A53D4 800A47D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A53D8 800A47D8 AFA40040 */  sw         $a0, 0x40($sp)
/* A53DC 800A47DC 8FAE0040 */  lw         $t6, 0x40($sp)
/* A53E0 800A47E0 24060001 */  addiu      $a2, $zero, 1
/* A53E4 800A47E4 27A70020 */  addiu      $a3, $sp, 0x20
/* A53E8 800A47E8 8DC40004 */  lw         $a0, 4($t6)
/* A53EC 800A47EC 0C02E3D8 */  jal        func_800B8F60
/* A53F0 800A47F0 8DC50008 */   lw        $a1, 8($t6)
/* A53F4 800A47F4 AFA20018 */  sw         $v0, 0x18($sp)
/* A53F8 800A47F8 8FAF0018 */  lw         $t7, 0x18($sp)
/* A53FC 800A47FC 11E00003 */  beqz       $t7, .L800A480C
/* A5400 800A4800 00000000 */   nop
/* A5404 800A4804 10000036 */  b          .L800A48E0
/* A5408 800A4808 8FA20018 */   lw        $v0, 0x18($sp)
.L800A480C:
/* A540C 800A480C 27B80020 */  addiu      $t8, $sp, 0x20
/* A5410 800A4810 AFB8001C */  sw         $t8, 0x1c($sp)
/* A5414 800A4814 8FB9001C */  lw         $t9, 0x1c($sp)
/* A5418 800A4818 3C04800D */  lui        $a0, %hi(D_800D3110)
/* A541C 800A481C 24843110 */  addiu      $a0, $a0, %lo(D_800D3110)
/* A5420 800A4820 0C02AE3F */  jal        func_800AB8FC
/* A5424 800A4824 8F250000 */   lw        $a1, ($t9)
/* A5428 800A4828 8FA8001C */  lw         $t0, 0x1c($sp)
/* A542C 800A482C 3C04800D */  lui        $a0, %hi(D_800D3120)
/* A5430 800A4830 24843120 */  addiu      $a0, $a0, %lo(D_800D3120)
/* A5434 800A4834 0C02AE3F */  jal        func_800AB8FC
/* A5438 800A4838 8D050004 */   lw        $a1, 4($t0)
/* A543C 800A483C 8FA9001C */  lw         $t1, 0x1c($sp)
/* A5440 800A4840 3C04800D */  lui        $a0, %hi(D_800D312C)
/* A5444 800A4844 2484312C */  addiu      $a0, $a0, %lo(D_800D312C)
/* A5448 800A4848 8D260008 */  lw         $a2, 8($t1)
/* A544C 800A484C 0C02AE3F */  jal        func_800AB8FC
/* A5450 800A4850 8D27000C */   lw        $a3, 0xc($t1)
/* A5454 800A4854 8FAA001C */  lw         $t2, 0x1c($sp)
/* A5458 800A4858 3C04800D */  lui        $a0, %hi(D_800D3140)
/* A545C 800A485C 24843140 */  addiu      $a0, $a0, %lo(D_800D3140)
/* A5460 800A4860 8D460010 */  lw         $a2, 0x10($t2)
/* A5464 800A4864 0C02AE3F */  jal        func_800AB8FC
/* A5468 800A4868 8D470014 */   lw        $a3, 0x14($t2)
/* A546C 800A486C 8FAB001C */  lw         $t3, 0x1c($sp)
/* A5470 800A4870 3C04800D */  lui        $a0, %hi(D_800D3154)
/* A5474 800A4874 24843154 */  addiu      $a0, $a0, %lo(D_800D3154)
/* A5478 800A4878 0C02AE3F */  jal        func_800AB8FC
/* A547C 800A487C 95650018 */   lhu       $a1, 0x18($t3)
/* A5480 800A4880 8FAC001C */  lw         $t4, 0x1c($sp)
/* A5484 800A4884 3C04800D */  lui        $a0, %hi(D_800D3164)
/* A5488 800A4888 24843164 */  addiu      $a0, $a0, %lo(D_800D3164)
/* A548C 800A488C 0C02AE3F */  jal        func_800AB8FC
/* A5490 800A4890 9185001A */   lbu       $a1, 0x1a($t4)
/* A5494 800A4894 8FAD001C */  lw         $t5, 0x1c($sp)
/* A5498 800A4898 3C04800D */  lui        $a0, %hi(D_800D3170)
/* A549C 800A489C 24843170 */  addiu      $a0, $a0, %lo(D_800D3170)
/* A54A0 800A48A0 0C02AE3F */  jal        func_800AB8FC
/* A54A4 800A48A4 91A5001B */   lbu       $a1, 0x1b($t5)
/* A54A8 800A48A8 8FAE001C */  lw         $t6, 0x1c($sp)
/* A54AC 800A48AC 3C04800D */  lui        $a0, %hi(D_800D317C)
/* A54B0 800A48B0 2484317C */  addiu      $a0, $a0, %lo(D_800D317C)
/* A54B4 800A48B4 0C02AE3F */  jal        func_800AB8FC
/* A54B8 800A48B8 95C5001C */   lhu       $a1, 0x1c($t6)
/* A54BC 800A48BC 8FAF001C */  lw         $t7, 0x1c($sp)
/* A54C0 800A48C0 3C04800D */  lui        $a0, %hi(D_800D318C)
/* A54C4 800A48C4 2484318C */  addiu      $a0, $a0, %lo(D_800D318C)
/* A54C8 800A48C8 0C02AE3F */  jal        func_800AB8FC
/* A54CC 800A48CC 95E5001E */   lhu       $a1, 0x1e($t7)
/* A54D0 800A48D0 10000003 */  b          .L800A48E0
/* A54D4 800A48D4 00001025 */   or        $v0, $zero, $zero
/* A54D8 800A48D8 10000001 */  b          .L800A48E0
/* A54DC 800A48DC 00000000 */   nop
.L800A48E0:
/* A54E0 800A48E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A54E4 800A48E4 27BD0040 */  addiu      $sp, $sp, 0x40
/* A54E8 800A48E8 03E00008 */  jr         $ra
/* A54EC 800A48EC 00000000 */   nop

glabel func_800A48F0
/* A54F0 800A48F0 40024800 */  mfc0       $v0, $9
/* A54F4 800A48F4 03E00008 */  jr         $ra
/* A54F8 800A48F8 00000000 */   nop
/* A54FC 800A48FC 00000000 */  nop
