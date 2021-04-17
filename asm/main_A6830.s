.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A5C30
/* A6830 800A5C30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6834 800A5C34 848E0000 */  lh         $t6, ($a0)
/* A6838 800A5C38 000E7B80 */  sll        $t7, $t6, 0xe
/* A683C 800A5C3C AFAF0018 */  sw         $t7, 0x18($sp)
/* A6840 800A5C40 8FB80018 */  lw         $t8, 0x18($sp)
/* A6844 800A5C44 0018CBC3 */  sra        $t9, $t8, 0xf
/* A6848 800A5C48 A7B90016 */  sh         $t9, 0x16($sp)
/* A684C 800A5C4C 87A80016 */  lh         $t0, 0x16($sp)
/* A6850 800A5C50 24094000 */  addiu      $t1, $zero, 0x4000
/* A6854 800A5C54 01285023 */  subu       $t2, $t1, $t0
/* A6858 800A5C58 A48A0002 */  sh         $t2, 2($a0)
/* A685C 800A5C5C 240B0001 */  addiu      $t3, $zero, 1
/* A6860 800A5C60 AC8B002C */  sw         $t3, 0x2c($a0)
/* A6864 800A5C64 AFA0001C */  sw         $zero, 0x1c($sp)
.L800A5C68:
/* A6868 800A5C68 8FAC001C */  lw         $t4, 0x1c($sp)
/* A686C 800A5C6C 000C6840 */  sll        $t5, $t4, 1
/* A6870 800A5C70 008D7021 */  addu       $t6, $a0, $t5
/* A6874 800A5C74 A5C00008 */  sh         $zero, 8($t6)
/* A6878 800A5C78 8FAF001C */  lw         $t7, 0x1c($sp)
/* A687C 800A5C7C 25F80001 */  addiu      $t8, $t7, 1
/* A6880 800A5C80 2B010008 */  slti       $at, $t8, 8
/* A6884 800A5C84 1420FFF8 */  bnez       $at, .L800A5C68
/* A6888 800A5C88 AFB8001C */   sw        $t8, 0x1c($sp)
/* A688C 800A5C8C 8FA9001C */  lw         $t1, 0x1c($sp)
/* A6890 800A5C90 87B90016 */  lh         $t9, 0x16($sp)
/* A6894 800A5C94 00094040 */  sll        $t0, $t1, 1
/* A6898 800A5C98 00885021 */  addu       $t2, $a0, $t0
/* A689C 800A5C9C A5590008 */  sh         $t9, 8($t2)
/* A68A0 800A5CA0 8FAB001C */  lw         $t3, 0x1c($sp)
/* A68A4 800A5CA4 256C0001 */  addiu      $t4, $t3, 1
/* A68A8 800A5CA8 AFAC001C */  sw         $t4, 0x1c($sp)
/* A68AC 800A5CAC 87AD0016 */  lh         $t5, 0x16($sp)
/* A68B0 800A5CB0 3C0140D0 */  lui        $at, 0x40d0
/* A68B4 800A5CB4 44814800 */  mtc1       $at, $f9
/* A68B8 800A5CB8 448D2000 */  mtc1       $t5, $f4
/* A68BC 800A5CBC 44804000 */  mtc1       $zero, $f8
/* A68C0 800A5CC0 468021A1 */  cvt.d.w    $f6, $f4
/* A68C4 800A5CC4 46283283 */  div.d      $f10, $f6, $f8
/* A68C8 800A5CC8 F7AA0008 */  sdc1       $f10, 8($sp)
/* A68CC 800A5CCC F7AA0000 */  sdc1       $f10, ($sp)
/* A68D0 800A5CD0 8FAE001C */  lw         $t6, 0x1c($sp)
/* A68D4 800A5CD4 29C10010 */  slti       $at, $t6, 0x10
/* A68D8 800A5CD8 10200016 */  beqz       $at, .L800A5D34
/* A68DC 800A5CDC 00000000 */   nop
.L800A5CE0:
/* A68E0 800A5CE0 D7B00000 */  ldc1       $f16, ($sp)
/* A68E4 800A5CE4 D7B20008 */  ldc1       $f18, 8($sp)
/* A68E8 800A5CE8 46328102 */  mul.d      $f4, $f16, $f18
/* A68EC 800A5CEC F7A40000 */  sdc1       $f4, ($sp)
/* A68F0 800A5CF0 3C0140D0 */  lui        $at, 0x40d0
/* A68F4 800A5CF4 44814800 */  mtc1       $at, $f9
/* A68F8 800A5CF8 D7A60000 */  ldc1       $f6, ($sp)
/* A68FC 800A5CFC 44804000 */  mtc1       $zero, $f8
/* A6900 800A5D00 8FA9001C */  lw         $t1, 0x1c($sp)
/* A6904 800A5D04 46283282 */  mul.d      $f10, $f6, $f8
/* A6908 800A5D08 00094040 */  sll        $t0, $t1, 1
/* A690C 800A5D0C 0088C821 */  addu       $t9, $a0, $t0
/* A6910 800A5D10 4620540D */  trunc.w.d  $f16, $f10
/* A6914 800A5D14 44188000 */  mfc1       $t8, $f16
/* A6918 800A5D18 00000000 */  nop
/* A691C 800A5D1C A7380008 */  sh         $t8, 8($t9)
/* A6920 800A5D20 8FAA001C */  lw         $t2, 0x1c($sp)
/* A6924 800A5D24 254B0001 */  addiu      $t3, $t2, 1
/* A6928 800A5D28 29610010 */  slti       $at, $t3, 0x10
/* A692C 800A5D2C 1420FFEC */  bnez       $at, .L800A5CE0
/* A6930 800A5D30 AFAB001C */   sw        $t3, 0x1c($sp)
.L800A5D34:
/* A6934 800A5D34 10000001 */  b          .L800A5D3C
/* A6938 800A5D38 00000000 */   nop
.L800A5D3C:
/* A693C 800A5D3C 03E00008 */  jr         $ra
/* A6940 800A5D40 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800A5D44
/* A6944 800A5D44 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A6948 800A5D48 AFBF001C */  sw         $ra, 0x1c($sp)
/* A694C 800A5D4C AFA40038 */  sw         $a0, 0x38($sp)
/* A6950 800A5D50 AFA5003C */  sw         $a1, 0x3c($sp)
/* A6954 800A5D54 AFA60040 */  sw         $a2, 0x40($sp)
/* A6958 800A5D58 AFA0002C */  sw         $zero, 0x2c($sp)
/* A695C 800A5D5C 8FAE0038 */  lw         $t6, 0x38($sp)
/* A6960 800A5D60 AFAE0028 */  sw         $t6, 0x28($sp)
/* A6964 800A5D64 3C06800A */  lui        $a2, %hi(D_800A6E60)
/* A6968 800A5D68 24C66E60 */  addiu      $a2, $a2, %lo(D_800A6E60)
/* A696C 800A5D6C 8FA40028 */  lw         $a0, 0x28($sp)
/* A6970 800A5D70 00002825 */  or         $a1, $zero, $zero
/* A6974 800A5D74 0C02B2EC */  jal        func_800ACBB0
/* A6978 800A5D78 24070005 */   addiu     $a3, $zero, 5
/* A697C 800A5D7C 8FB80028 */  lw         $t8, 0x28($sp)
/* A6980 800A5D80 3C0F800A */  lui        $t7, %hi(D_800A6900)
/* A6984 800A5D84 25EF6900 */  addiu      $t7, $t7, %lo(D_800A6900)
/* A6988 800A5D88 AF0F0004 */  sw         $t7, 4($t8)
/* A698C 800A5D8C 8FA80038 */  lw         $t0, 0x38($sp)
/* A6990 800A5D90 3C19800A */  lui        $t9, %hi(D_800A6E94)
/* A6994 800A5D94 27396E94 */  addiu      $t9, $t9, %lo(D_800A6E94)
/* A6998 800A5D98 AD190028 */  sw         $t9, 0x28($t0)
/* A699C 800A5D9C 8FA9003C */  lw         $t1, 0x3c($sp)
/* A69A0 800A5DA0 912A001C */  lbu        $t2, 0x1c($t1)
/* A69A4 800A5DA4 254BFFFF */  addiu      $t3, $t2, -1
/* A69A8 800A5DA8 2D610006 */  sltiu      $at, $t3, 6
/* A69AC 800A5DAC 10200025 */  beqz       $at, .L800A5E44
/* A69B0 800A5DB0 00000000 */   nop
/* A69B4 800A5DB4 000B5880 */  sll        $t3, $t3, 2
/* A69B8 800A5DB8 3C01800D */  lui        $at, %hi(D_800D3358)
/* A69BC 800A5DBC 002B0821 */  addu       $at, $at, $t3
/* A69C0 800A5DC0 8C2B3358 */  lw         $t3, %lo(D_800D3358)($at)
/* A69C4 800A5DC4 01600008 */  jr         $t3
/* A69C8 800A5DC8 00000000 */   nop
/* A69CC 800A5DCC 3C0C800D */  lui        $t4, %hi(D_800CD010)
/* A69D0 800A5DD0 258CD010 */  addiu      $t4, $t4, %lo(D_800CD010)
/* A69D4 800A5DD4 AFAC002C */  sw         $t4, 0x2c($sp)
/* A69D8 800A5DD8 1000001F */  b          .L800A5E58
/* A69DC 800A5DDC 00000000 */   nop
/* A69E0 800A5DE0 3C0D800D */  lui        $t5, %hi(D_800CD078)
/* A69E4 800A5DE4 25ADD078 */  addiu      $t5, $t5, %lo(D_800CD078)
/* A69E8 800A5DE8 AFAD002C */  sw         $t5, 0x2c($sp)
/* A69EC 800A5DEC 1000001A */  b          .L800A5E58
/* A69F0 800A5DF0 00000000 */   nop
/* A69F4 800A5DF4 3C0E800D */  lui        $t6, %hi(D_800CD100)
/* A69F8 800A5DF8 25CED100 */  addiu      $t6, $t6, %lo(D_800CD100)
/* A69FC 800A5DFC AFAE002C */  sw         $t6, 0x2c($sp)
/* A6A00 800A5E00 10000015 */  b          .L800A5E58
/* A6A04 800A5E04 00000000 */   nop
/* A6A08 800A5E08 3C0F800D */  lui        $t7, %hi(D_800CD128)
/* A6A0C 800A5E0C 25EFD128 */  addiu      $t7, $t7, %lo(D_800CD128)
/* A6A10 800A5E10 AFAF002C */  sw         $t7, 0x2c($sp)
/* A6A14 800A5E14 10000010 */  b          .L800A5E58
/* A6A18 800A5E18 00000000 */   nop
/* A6A1C 800A5E1C 3C18800D */  lui        $t8, %hi(D_800CD150)
/* A6A20 800A5E20 2718D150 */  addiu      $t8, $t8, %lo(D_800CD150)
/* A6A24 800A5E24 AFB8002C */  sw         $t8, 0x2c($sp)
/* A6A28 800A5E28 1000000B */  b          .L800A5E58
/* A6A2C 800A5E2C 00000000 */   nop
/* A6A30 800A5E30 8FB9003C */  lw         $t9, 0x3c($sp)
/* A6A34 800A5E34 8F280020 */  lw         $t0, 0x20($t9)
/* A6A38 800A5E38 AFA8002C */  sw         $t0, 0x2c($sp)
/* A6A3C 800A5E3C 10000006 */  b          .L800A5E58
/* A6A40 800A5E40 00000000 */   nop
.L800A5E44:
/* A6A44 800A5E44 3C09800D */  lui        $t1, %hi(D_800CD178)
/* A6A48 800A5E48 2529D178 */  addiu      $t1, $t1, %lo(D_800CD178)
/* A6A4C 800A5E4C AFA9002C */  sw         $t1, 0x2c($sp)
/* A6A50 800A5E50 10000001 */  b          .L800A5E58
/* A6A54 800A5E54 00000000 */   nop
.L800A5E58:
/* A6A58 800A5E58 A7A00034 */  sh         $zero, 0x34($sp)
/* A6A5C 800A5E5C 97AB0034 */  lhu        $t3, 0x34($sp)
/* A6A60 800A5E60 8FAA002C */  lw         $t2, 0x2c($sp)
/* A6A64 800A5E64 8FAF0038 */  lw         $t7, 0x38($sp)
/* A6A68 800A5E68 000B6080 */  sll        $t4, $t3, 2
/* A6A6C 800A5E6C 014C6821 */  addu       $t5, $t2, $t4
/* A6A70 800A5E70 8DAE0000 */  lw         $t6, ($t5)
/* A6A74 800A5E74 A1EE0024 */  sb         $t6, 0x24($t7)
/* A6A78 800A5E78 97B80034 */  lhu        $t8, 0x34($sp)
/* A6A7C 800A5E7C 27190001 */  addiu      $t9, $t8, 1
/* A6A80 800A5E80 A7B90034 */  sh         $t9, 0x34($sp)
/* A6A84 800A5E84 97A90034 */  lhu        $t1, 0x34($sp)
/* A6A88 800A5E88 8FA8002C */  lw         $t0, 0x2c($sp)
/* A6A8C 800A5E8C 8FAD0038 */  lw         $t5, 0x38($sp)
/* A6A90 800A5E90 00095880 */  sll        $t3, $t1, 2
/* A6A94 800A5E94 010B5021 */  addu       $t2, $t0, $t3
/* A6A98 800A5E98 8D4C0000 */  lw         $t4, ($t2)
/* A6A9C 800A5E9C ADAC001C */  sw         $t4, 0x1c($t5)
/* A6AA0 800A5EA0 97AE0034 */  lhu        $t6, 0x34($sp)
/* A6AA4 800A5EA4 25CF0001 */  addiu      $t7, $t6, 1
/* A6AA8 800A5EA8 A7AF0034 */  sh         $t7, 0x34($sp)
/* A6AAC 800A5EAC 8FB80038 */  lw         $t8, 0x38($sp)
/* A6AB0 800A5EB0 3C04800D */  lui        $a0, %hi(D_800D3290)
/* A6AB4 800A5EB4 24190028 */  addiu      $t9, $zero, 0x28
/* A6AB8 800A5EB8 93070024 */  lbu        $a3, 0x24($t8)
/* A6ABC 800A5EBC AFB90010 */  sw         $t9, 0x10($sp)
/* A6AC0 800A5EC0 24843290 */  addiu      $a0, $a0, %lo(D_800D3290)
/* A6AC4 800A5EC4 2405008E */  addiu      $a1, $zero, 0x8e
/* A6AC8 800A5EC8 0C02E384 */  jal        func_800B8E10
/* A6ACC 800A5ECC 8FA60040 */   lw        $a2, 0x40($sp)
/* A6AD0 800A5ED0 8FA90038 */  lw         $t1, 0x38($sp)
/* A6AD4 800A5ED4 AD220020 */  sw         $v0, 0x20($t1)
/* A6AD8 800A5ED8 8FA80038 */  lw         $t0, 0x38($sp)
/* A6ADC 800A5EDC 3C04800D */  lui        $a0, %hi(D_800D32A4)
/* A6AE0 800A5EE0 240B0002 */  addiu      $t3, $zero, 2
/* A6AE4 800A5EE4 8D07001C */  lw         $a3, 0x1c($t0)
/* A6AE8 800A5EE8 AFAB0010 */  sw         $t3, 0x10($sp)
/* A6AEC 800A5EEC 248432A4 */  addiu      $a0, $a0, %lo(D_800D32A4)
/* A6AF0 800A5EF0 2405008F */  addiu      $a1, $zero, 0x8f
/* A6AF4 800A5EF4 0C02E384 */  jal        func_800B8E10
/* A6AF8 800A5EF8 8FA60040 */   lw        $a2, 0x40($sp)
/* A6AFC 800A5EFC 8FAA0038 */  lw         $t2, 0x38($sp)
/* A6B00 800A5F00 AD420014 */  sw         $v0, 0x14($t2)
/* A6B04 800A5F04 8FAC0038 */  lw         $t4, 0x38($sp)
/* A6B08 800A5F08 8D8D0014 */  lw         $t5, 0x14($t4)
/* A6B0C 800A5F0C AD8D0018 */  sw         $t5, 0x18($t4)
/* A6B10 800A5F10 8FAE0038 */  lw         $t6, 0x38($sp)
/* A6B14 800A5F14 A7A00032 */  sh         $zero, 0x32($sp)
/* A6B18 800A5F18 8DCF001C */  lw         $t7, 0x1c($t6)
/* A6B1C 800A5F1C 11E00010 */  beqz       $t7, .L800A5F60
/* A6B20 800A5F20 00000000 */   nop
.L800A5F24:
/* A6B24 800A5F24 8FB80038 */  lw         $t8, 0x38($sp)
/* A6B28 800A5F28 97A90032 */  lhu        $t1, 0x32($sp)
/* A6B2C 800A5F2C 8F190014 */  lw         $t9, 0x14($t8)
/* A6B30 800A5F30 00094040 */  sll        $t0, $t1, 1
/* A6B34 800A5F34 03285821 */  addu       $t3, $t9, $t0
/* A6B38 800A5F38 A5600000 */  sh         $zero, ($t3)
/* A6B3C 800A5F3C 97AA0032 */  lhu        $t2, 0x32($sp)
/* A6B40 800A5F40 8FAE0038 */  lw         $t6, 0x38($sp)
/* A6B44 800A5F44 254D0001 */  addiu      $t5, $t2, 1
/* A6B48 800A5F48 A7AD0032 */  sh         $t5, 0x32($sp)
/* A6B4C 800A5F4C 8DCF001C */  lw         $t7, 0x1c($t6)
/* A6B50 800A5F50 31ACFFFF */  andi       $t4, $t5, 0xffff
/* A6B54 800A5F54 018F082B */  sltu       $at, $t4, $t7
/* A6B58 800A5F58 1420FFF2 */  bnez       $at, .L800A5F24
/* A6B5C 800A5F5C 00000000 */   nop
.L800A5F60:
/* A6B60 800A5F60 8FB80038 */  lw         $t8, 0x38($sp)
/* A6B64 800A5F64 A7A00036 */  sh         $zero, 0x36($sp)
/* A6B68 800A5F68 93090024 */  lbu        $t1, 0x24($t8)
/* A6B6C 800A5F6C 192000E0 */  blez       $t1, .L800A62F0
/* A6B70 800A5F70 00000000 */   nop
.L800A5F74:
/* A6B74 800A5F74 8FB90038 */  lw         $t9, 0x38($sp)
/* A6B78 800A5F78 97AB0036 */  lhu        $t3, 0x36($sp)
/* A6B7C 800A5F7C 8F280020 */  lw         $t0, 0x20($t9)
/* A6B80 800A5F80 000B5080 */  sll        $t2, $t3, 2
/* A6B84 800A5F84 014B5021 */  addu       $t2, $t2, $t3
/* A6B88 800A5F88 000A50C0 */  sll        $t2, $t2, 3
/* A6B8C 800A5F8C 010A6821 */  addu       $t5, $t0, $t2
/* A6B90 800A5F90 AFAD0024 */  sw         $t5, 0x24($sp)
/* A6B94 800A5F94 97AC0034 */  lhu        $t4, 0x34($sp)
/* A6B98 800A5F98 8FAE002C */  lw         $t6, 0x2c($sp)
/* A6B9C 800A5F9C 8FB90024 */  lw         $t9, 0x24($sp)
/* A6BA0 800A5FA0 000C7880 */  sll        $t7, $t4, 2
/* A6BA4 800A5FA4 01CFC021 */  addu       $t8, $t6, $t7
/* A6BA8 800A5FA8 8F090000 */  lw         $t1, ($t8)
/* A6BAC 800A5FAC AF290000 */  sw         $t1, ($t9)
/* A6BB0 800A5FB0 97AB0034 */  lhu        $t3, 0x34($sp)
/* A6BB4 800A5FB4 25680001 */  addiu      $t0, $t3, 1
/* A6BB8 800A5FB8 A7A80034 */  sh         $t0, 0x34($sp)
/* A6BBC 800A5FBC 97AD0034 */  lhu        $t5, 0x34($sp)
/* A6BC0 800A5FC0 8FAA002C */  lw         $t2, 0x2c($sp)
/* A6BC4 800A5FC4 8FB80024 */  lw         $t8, 0x24($sp)
/* A6BC8 800A5FC8 000D6080 */  sll        $t4, $t5, 2
/* A6BCC 800A5FCC 014C7021 */  addu       $t6, $t2, $t4
/* A6BD0 800A5FD0 8DCF0000 */  lw         $t7, ($t6)
/* A6BD4 800A5FD4 AF0F0004 */  sw         $t7, 4($t8)
/* A6BD8 800A5FD8 97A90034 */  lhu        $t1, 0x34($sp)
/* A6BDC 800A5FDC 25390001 */  addiu      $t9, $t1, 1
/* A6BE0 800A5FE0 A7B90034 */  sh         $t9, 0x34($sp)
/* A6BE4 800A5FE4 97A80034 */  lhu        $t0, 0x34($sp)
/* A6BE8 800A5FE8 8FAB002C */  lw         $t3, 0x2c($sp)
/* A6BEC 800A5FEC 8FAE0024 */  lw         $t6, 0x24($sp)
/* A6BF0 800A5FF0 00086880 */  sll        $t5, $t0, 2
/* A6BF4 800A5FF4 016D5021 */  addu       $t2, $t3, $t5
/* A6BF8 800A5FF8 8D4C0000 */  lw         $t4, ($t2)
/* A6BFC 800A5FFC A5CC000A */  sh         $t4, 0xa($t6)
/* A6C00 800A6000 97AF0034 */  lhu        $t7, 0x34($sp)
/* A6C04 800A6004 25F80001 */  addiu      $t8, $t7, 1
/* A6C08 800A6008 A7B80034 */  sh         $t8, 0x34($sp)
/* A6C0C 800A600C 97B90034 */  lhu        $t9, 0x34($sp)
/* A6C10 800A6010 8FA9002C */  lw         $t1, 0x2c($sp)
/* A6C14 800A6014 8FAA0024 */  lw         $t2, 0x24($sp)
/* A6C18 800A6018 00194080 */  sll        $t0, $t9, 2
/* A6C1C 800A601C 01285821 */  addu       $t3, $t1, $t0
/* A6C20 800A6020 8D6D0000 */  lw         $t5, ($t3)
/* A6C24 800A6024 A54D0008 */  sh         $t5, 8($t2)
/* A6C28 800A6028 97AC0034 */  lhu        $t4, 0x34($sp)
/* A6C2C 800A602C 258E0001 */  addiu      $t6, $t4, 1
/* A6C30 800A6030 A7AE0034 */  sh         $t6, 0x34($sp)
/* A6C34 800A6034 97B80034 */  lhu        $t8, 0x34($sp)
/* A6C38 800A6038 8FAF002C */  lw         $t7, 0x2c($sp)
/* A6C3C 800A603C 8FAB0024 */  lw         $t3, 0x24($sp)
/* A6C40 800A6040 0018C880 */  sll        $t9, $t8, 2
/* A6C44 800A6044 01F94821 */  addu       $t1, $t7, $t9
/* A6C48 800A6048 8D280000 */  lw         $t0, ($t1)
/* A6C4C 800A604C A568000C */  sh         $t0, 0xc($t3)
/* A6C50 800A6050 97AD0034 */  lhu        $t5, 0x34($sp)
/* A6C54 800A6054 25AA0001 */  addiu      $t2, $t5, 1
/* A6C58 800A6058 A7AA0034 */  sh         $t2, 0x34($sp)
/* A6C5C 800A605C 97AE0034 */  lhu        $t6, 0x34($sp)
/* A6C60 800A6060 8FAC002C */  lw         $t4, 0x2c($sp)
/* A6C64 800A6064 000EC080 */  sll        $t8, $t6, 2
/* A6C68 800A6068 01987821 */  addu       $t7, $t4, $t8
/* A6C6C 800A606C 8DF90000 */  lw         $t9, ($t7)
/* A6C70 800A6070 1320005D */  beqz       $t9, .L800A61E8
/* A6C74 800A6074 00000000 */   nop
/* A6C78 800A6078 97A80034 */  lhu        $t0, 0x34($sp)
/* A6C7C 800A607C 8FA9002C */  lw         $t1, 0x2c($sp)
/* A6C80 800A6080 3C01447A */  lui        $at, 0x447a
/* A6C84 800A6084 00085880 */  sll        $t3, $t0, 2
/* A6C88 800A6088 012B6821 */  addu       $t5, $t1, $t3
/* A6C8C 800A608C 8DAA0000 */  lw         $t2, ($t5)
/* A6C90 800A6090 44814000 */  mtc1       $at, $f8
/* A6C94 800A6094 8FAE003C */  lw         $t6, 0x3c($sp)
/* A6C98 800A6098 448A2000 */  mtc1       $t2, $f4
/* A6C9C 800A609C 3C014000 */  lui        $at, 0x4000
/* A6CA0 800A60A0 44819800 */  mtc1       $at, $f19
/* A6CA4 800A60A4 468021A0 */  cvt.s.w    $f6, $f4
/* A6CA8 800A60A8 44809000 */  mtc1       $zero, $f18
/* A6CAC 800A60AC 8DCC0018 */  lw         $t4, 0x18($t6)
/* A6CB0 800A60B0 8FB80024 */  lw         $t8, 0x24($sp)
/* A6CB4 800A60B4 46083283 */  div.s      $f10, $f6, $f8
/* A6CB8 800A60B8 448C3000 */  mtc1       $t4, $f6
/* A6CBC 800A60BC 00000000 */  nop
/* A6CC0 800A60C0 46803221 */  cvt.d.w    $f8, $f6
/* A6CC4 800A60C4 46005421 */  cvt.d.s    $f16, $f10
/* A6CC8 800A60C8 46328102 */  mul.d      $f4, $f16, $f18
/* A6CCC 800A60CC 46282283 */  div.d      $f10, $f4, $f8
/* A6CD0 800A60D0 46205420 */  cvt.s.d    $f16, $f10
/* A6CD4 800A60D4 E7100010 */  swc1       $f16, 0x10($t8)
/* A6CD8 800A60D8 97AF0034 */  lhu        $t7, 0x34($sp)
/* A6CDC 800A60DC 25F90001 */  addiu      $t9, $t7, 1
/* A6CE0 800A60E0 A7B90034 */  sh         $t9, 0x34($sp)
/* A6CE4 800A60E4 97A90034 */  lhu        $t1, 0x34($sp)
/* A6CE8 800A60E8 8FA8002C */  lw         $t0, 0x2c($sp)
/* A6CEC 800A60EC 8FAE0024 */  lw         $t6, 0x24($sp)
/* A6CF0 800A60F0 00095880 */  sll        $t3, $t1, 2
/* A6CF4 800A60F4 010B6821 */  addu       $t5, $t0, $t3
/* A6CF8 800A60F8 8DAA0000 */  lw         $t2, ($t5)
/* A6CFC 800A60FC 8DCC0004 */  lw         $t4, 4($t6)
/* A6D00 800A6100 8DD80000 */  lw         $t8, ($t6)
/* A6D04 800A6104 448A9000 */  mtc1       $t2, $f18
/* A6D08 800A6108 3C01800D */  lui        $at, %hi(D_800D3370)
/* A6D0C 800A610C 01987823 */  subu       $t7, $t4, $t8
/* A6D10 800A6110 468091A0 */  cvt.s.w    $f6, $f18
/* A6D14 800A6114 448F8000 */  mtc1       $t7, $f16
/* A6D18 800A6118 D4283370 */  ldc1       $f8, %lo(D_800D3370)($at)
/* A6D1C 800A611C 468084A1 */  cvt.d.w    $f18, $f16
/* A6D20 800A6120 46003121 */  cvt.d.s    $f4, $f6
/* A6D24 800A6124 05E10006 */  bgez       $t7, .L800A6140
/* A6D28 800A6128 46282283 */   div.d     $f10, $f4, $f8
/* A6D2C 800A612C 3C0141F0 */  lui        $at, 0x41f0
/* A6D30 800A6130 44813800 */  mtc1       $at, $f7
/* A6D34 800A6134 44803000 */  mtc1       $zero, $f6
/* A6D38 800A6138 00000000 */  nop
/* A6D3C 800A613C 46269480 */  add.d      $f18, $f18, $f6
.L800A6140:
/* A6D40 800A6140 46325102 */  mul.d      $f4, $f10, $f18
/* A6D44 800A6144 46202220 */  cvt.s.d    $f8, $f4
/* A6D48 800A6148 E5C8001C */  swc1       $f8, 0x1c($t6)
/* A6D4C 800A614C 97B90034 */  lhu        $t9, 0x34($sp)
/* A6D50 800A6150 27290001 */  addiu      $t1, $t9, 1
/* A6D54 800A6154 A7A90034 */  sh         $t1, 0x34($sp)
/* A6D58 800A6158 3C013F80 */  lui        $at, 0x3f80
/* A6D5C 800A615C 44818000 */  mtc1       $at, $f16
/* A6D60 800A6160 8FA80024 */  lw         $t0, 0x24($sp)
/* A6D64 800A6164 E5100014 */  swc1       $f16, 0x14($t0)
/* A6D68 800A6168 8FAB0024 */  lw         $t3, 0x24($sp)
/* A6D6C 800A616C AD600018 */  sw         $zero, 0x18($t3)
/* A6D70 800A6170 3C04800D */  lui        $a0, %hi(D_800D32B8)
/* A6D74 800A6174 240D0034 */  addiu      $t5, $zero, 0x34
/* A6D78 800A6178 AFAD0010 */  sw         $t5, 0x10($sp)
/* A6D7C 800A617C 248432B8 */  addiu      $a0, $a0, %lo(D_800D32B8)
/* A6D80 800A6180 240500B3 */  addiu      $a1, $zero, 0xb3
/* A6D84 800A6184 8FA60040 */  lw         $a2, 0x40($sp)
/* A6D88 800A6188 0C02E384 */  jal        func_800B8E10
/* A6D8C 800A618C 24070001 */   addiu     $a3, $zero, 1
/* A6D90 800A6190 8FAA0024 */  lw         $t2, 0x24($sp)
/* A6D94 800A6194 AD420024 */  sw         $v0, 0x24($t2)
/* A6D98 800A6198 3C04800D */  lui        $a0, %hi(D_800D32CC)
/* A6D9C 800A619C 240C0020 */  addiu      $t4, $zero, 0x20
/* A6DA0 800A61A0 AFAC0010 */  sw         $t4, 0x10($sp)
/* A6DA4 800A61A4 248432CC */  addiu      $a0, $a0, %lo(D_800D32CC)
/* A6DA8 800A61A8 240500B4 */  addiu      $a1, $zero, 0xb4
/* A6DAC 800A61AC 8FA60040 */  lw         $a2, 0x40($sp)
/* A6DB0 800A61B0 0C02E384 */  jal        func_800B8E10
/* A6DB4 800A61B4 24070001 */   addiu     $a3, $zero, 1
/* A6DB8 800A61B8 8FB80024 */  lw         $t8, 0x24($sp)
/* A6DBC 800A61BC 8F0F0024 */  lw         $t7, 0x24($t8)
/* A6DC0 800A61C0 ADE20014 */  sw         $v0, 0x14($t7)
/* A6DC4 800A61C4 8FAE0024 */  lw         $t6, 0x24($sp)
/* A6DC8 800A61C8 44803000 */  mtc1       $zero, $f6
/* A6DCC 800A61CC 8DD90024 */  lw         $t9, 0x24($t6)
/* A6DD0 800A61D0 E7260020 */  swc1       $f6, 0x20($t9)
/* A6DD4 800A61D4 8FA80024 */  lw         $t0, 0x24($sp)
/* A6DD8 800A61D8 24090001 */  addiu      $t1, $zero, 1
/* A6DDC 800A61DC 8D0B0024 */  lw         $t3, 0x24($t0)
/* A6DE0 800A61E0 10000009 */  b          .L800A6208
/* A6DE4 800A61E4 AD690024 */   sw        $t1, 0x24($t3)
.L800A61E8:
/* A6DE8 800A61E8 8FAD0024 */  lw         $t5, 0x24($sp)
/* A6DEC 800A61EC ADA00024 */  sw         $zero, 0x24($t5)
/* A6DF0 800A61F0 97AA0034 */  lhu        $t2, 0x34($sp)
/* A6DF4 800A61F4 254C0001 */  addiu      $t4, $t2, 1
/* A6DF8 800A61F8 A7AC0034 */  sh         $t4, 0x34($sp)
/* A6DFC 800A61FC 97B80034 */  lhu        $t8, 0x34($sp)
/* A6E00 800A6200 270F0001 */  addiu      $t7, $t8, 1
/* A6E04 800A6204 A7AF0034 */  sh         $t7, 0x34($sp)
.L800A6208:
/* A6E08 800A6208 97B90034 */  lhu        $t9, 0x34($sp)
/* A6E0C 800A620C 8FAE002C */  lw         $t6, 0x2c($sp)
/* A6E10 800A6210 00194080 */  sll        $t0, $t9, 2
/* A6E14 800A6214 01C84821 */  addu       $t1, $t6, $t0
/* A6E18 800A6218 8D2B0000 */  lw         $t3, ($t1)
/* A6E1C 800A621C 11600026 */  beqz       $t3, .L800A62B8
/* A6E20 800A6220 00000000 */   nop
/* A6E24 800A6224 3C04800D */  lui        $a0, %hi(D_800D32E0)
/* A6E28 800A6228 240D0030 */  addiu      $t5, $zero, 0x30
/* A6E2C 800A622C AFAD0010 */  sw         $t5, 0x10($sp)
/* A6E30 800A6230 248432E0 */  addiu      $a0, $a0, %lo(D_800D32E0)
/* A6E34 800A6234 240500BE */  addiu      $a1, $zero, 0xbe
/* A6E38 800A6238 8FA60040 */  lw         $a2, 0x40($sp)
/* A6E3C 800A623C 0C02E384 */  jal        func_800B8E10
/* A6E40 800A6240 24070001 */   addiu     $a3, $zero, 1
/* A6E44 800A6244 8FAA0024 */  lw         $t2, 0x24($sp)
/* A6E48 800A6248 AD420020 */  sw         $v0, 0x20($t2)
/* A6E4C 800A624C 3C04800D */  lui        $a0, %hi(D_800D32F4)
/* A6E50 800A6250 240C0008 */  addiu      $t4, $zero, 8
/* A6E54 800A6254 AFAC0010 */  sw         $t4, 0x10($sp)
/* A6E58 800A6258 248432F4 */  addiu      $a0, $a0, %lo(D_800D32F4)
/* A6E5C 800A625C 240500BF */  addiu      $a1, $zero, 0xbf
/* A6E60 800A6260 8FA60040 */  lw         $a2, 0x40($sp)
/* A6E64 800A6264 0C02E384 */  jal        func_800B8E10
/* A6E68 800A6268 24070001 */   addiu     $a3, $zero, 1
/* A6E6C 800A626C 8FB80024 */  lw         $t8, 0x24($sp)
/* A6E70 800A6270 8F0F0020 */  lw         $t7, 0x20($t8)
/* A6E74 800A6274 ADE20028 */  sw         $v0, 0x28($t7)
/* A6E78 800A6278 97AE0034 */  lhu        $t6, 0x34($sp)
/* A6E7C 800A627C 8FB9002C */  lw         $t9, 0x2c($sp)
/* A6E80 800A6280 8FAD0024 */  lw         $t5, 0x24($sp)
/* A6E84 800A6284 000E4080 */  sll        $t0, $t6, 2
/* A6E88 800A6288 03284821 */  addu       $t1, $t9, $t0
/* A6E8C 800A628C 8D2B0000 */  lw         $t3, ($t1)
/* A6E90 800A6290 8DAA0020 */  lw         $t2, 0x20($t5)
/* A6E94 800A6294 A54B0000 */  sh         $t3, ($t2)
/* A6E98 800A6298 97AC0034 */  lhu        $t4, 0x34($sp)
/* A6E9C 800A629C 25980001 */  addiu      $t8, $t4, 1
/* A6EA0 800A62A0 A7B80034 */  sh         $t8, 0x34($sp)
/* A6EA4 800A62A4 8FAF0024 */  lw         $t7, 0x24($sp)
/* A6EA8 800A62A8 0C02970C */  jal        func_800A5C30
/* A6EAC 800A62AC 8DE40020 */   lw        $a0, 0x20($t7)
/* A6EB0 800A62B0 10000006 */  b          .L800A62CC
/* A6EB4 800A62B4 00000000 */   nop
.L800A62B8:
/* A6EB8 800A62B8 8FAE0024 */  lw         $t6, 0x24($sp)
/* A6EBC 800A62BC ADC00020 */  sw         $zero, 0x20($t6)
/* A6EC0 800A62C0 97B90034 */  lhu        $t9, 0x34($sp)
/* A6EC4 800A62C4 27280001 */  addiu      $t0, $t9, 1
/* A6EC8 800A62C8 A7A80034 */  sh         $t0, 0x34($sp)
.L800A62CC:
/* A6ECC 800A62CC 97A90036 */  lhu        $t1, 0x36($sp)
/* A6ED0 800A62D0 8FAA0038 */  lw         $t2, 0x38($sp)
/* A6ED4 800A62D4 252D0001 */  addiu      $t5, $t1, 1
/* A6ED8 800A62D8 A7AD0036 */  sh         $t5, 0x36($sp)
/* A6EDC 800A62DC 914C0024 */  lbu        $t4, 0x24($t2)
/* A6EE0 800A62E0 31ABFFFF */  andi       $t3, $t5, 0xffff
/* A6EE4 800A62E4 016C082A */  slt        $at, $t3, $t4
/* A6EE8 800A62E8 1420FF22 */  bnez       $at, .L800A5F74
/* A6EEC 800A62EC 00000000 */   nop
.L800A62F0:
/* A6EF0 800A62F0 10000001 */  b          .L800A62F8
/* A6EF4 800A62F4 00000000 */   nop
.L800A62F8:
/* A6EF8 800A62F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A6EFC 800A62FC 27BD0038 */  addiu      $sp, $sp, 0x38
/* A6F00 800A6300 03E00008 */  jr         $ra
/* A6F04 800A6304 00000000 */   nop

glabel func_800A6308
/* A6F08 800A6308 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6F0C 800A630C AFBF001C */  sw         $ra, 0x1c($sp)
/* A6F10 800A6310 AFA40020 */  sw         $a0, 0x20($sp)
/* A6F14 800A6314 AFA50024 */  sw         $a1, 0x24($sp)
/* A6F18 800A6318 3C05800A */  lui        $a1, %hi(D_800A7D30)
/* A6F1C 800A631C 3C06800B */  lui        $a2, %hi(func_800A84B8)
/* A6F20 800A6320 24C684B8 */  addiu      $a2, $a2, %lo(func_800A84B8)
/* A6F24 800A6324 24A57D30 */  addiu      $a1, $a1, %lo(D_800A7D30)
/* A6F28 800A6328 8FA40020 */  lw         $a0, 0x20($sp)
/* A6F2C 800A632C 0C02B2EC */  jal        func_800ACBB0
/* A6F30 800A6330 24070004 */   addiu     $a3, $zero, 4
/* A6F34 800A6334 3C04800D */  lui        $a0, %hi(D_800D3308)
/* A6F38 800A6338 240E0050 */  addiu      $t6, $zero, 0x50
/* A6F3C 800A633C AFAE0010 */  sw         $t6, 0x10($sp)
/* A6F40 800A6340 24843308 */  addiu      $a0, $a0, %lo(D_800D3308)
/* A6F44 800A6344 240500CD */  addiu      $a1, $zero, 0xcd
/* A6F48 800A6348 8FA60024 */  lw         $a2, 0x24($sp)
/* A6F4C 800A634C 0C02E384 */  jal        func_800B8E10
/* A6F50 800A6350 24070001 */   addiu     $a3, $zero, 1
/* A6F54 800A6354 8FAF0020 */  lw         $t7, 0x20($sp)
/* A6F58 800A6358 ADE20014 */  sw         $v0, 0x14($t7)
/* A6F5C 800A635C 8FB90020 */  lw         $t9, 0x20($sp)
/* A6F60 800A6360 24180001 */  addiu      $t8, $zero, 1
/* A6F64 800A6364 AF380038 */  sw         $t8, 0x38($t9)
/* A6F68 800A6368 8FA80020 */  lw         $t0, 0x20($sp)
/* A6F6C 800A636C AD000048 */  sw         $zero, 0x48($t0)
/* A6F70 800A6370 8FAA0020 */  lw         $t2, 0x20($sp)
/* A6F74 800A6374 24090001 */  addiu      $t1, $zero, 1
/* A6F78 800A6378 A549001A */  sh         $t1, 0x1a($t2)
/* A6F7C 800A637C 8FAC0020 */  lw         $t4, 0x20($sp)
/* A6F80 800A6380 240B0001 */  addiu      $t3, $zero, 1
/* A6F84 800A6384 A58B0028 */  sh         $t3, 0x28($t4)
/* A6F88 800A6388 8FAE0020 */  lw         $t6, 0x20($sp)
/* A6F8C 800A638C 240D0001 */  addiu      $t5, $zero, 1
/* A6F90 800A6390 A5CD002E */  sh         $t5, 0x2e($t6)
/* A6F94 800A6394 8FB80020 */  lw         $t8, 0x20($sp)
/* A6F98 800A6398 240F0001 */  addiu      $t7, $zero, 1
/* A6F9C 800A639C A70F001C */  sh         $t7, 0x1c($t8)
/* A6FA0 800A63A0 8FA80020 */  lw         $t0, 0x20($sp)
/* A6FA4 800A63A4 24190001 */  addiu      $t9, $zero, 1
/* A6FA8 800A63A8 A519001E */  sh         $t9, 0x1e($t0)
/* A6FAC 800A63AC 8FA90020 */  lw         $t1, 0x20($sp)
/* A6FB0 800A63B0 A5200020 */  sh         $zero, 0x20($t1)
/* A6FB4 800A63B4 8FAA0020 */  lw         $t2, 0x20($sp)
/* A6FB8 800A63B8 A5400022 */  sh         $zero, 0x22($t2)
/* A6FBC 800A63BC 8FAC0020 */  lw         $t4, 0x20($sp)
/* A6FC0 800A63C0 240B0001 */  addiu      $t3, $zero, 1
/* A6FC4 800A63C4 A58B0026 */  sh         $t3, 0x26($t4)
/* A6FC8 800A63C8 8FAD0020 */  lw         $t5, 0x20($sp)
/* A6FCC 800A63CC A5A00024 */  sh         $zero, 0x24($t5)
/* A6FD0 800A63D0 8FAF0020 */  lw         $t7, 0x20($sp)
/* A6FD4 800A63D4 240E0001 */  addiu      $t6, $zero, 1
/* A6FD8 800A63D8 A5EE0026 */  sh         $t6, 0x26($t7)
/* A6FDC 800A63DC 8FB80020 */  lw         $t8, 0x20($sp)
/* A6FE0 800A63E0 A7000024 */  sh         $zero, 0x24($t8)
/* A6FE4 800A63E4 8FB90020 */  lw         $t9, 0x20($sp)
/* A6FE8 800A63E8 AF200030 */  sw         $zero, 0x30($t9)
/* A6FEC 800A63EC 8FA80020 */  lw         $t0, 0x20($sp)
/* A6FF0 800A63F0 AD000034 */  sw         $zero, 0x34($t0)
/* A6FF4 800A63F4 8FA90020 */  lw         $t1, 0x20($sp)
/* A6FF8 800A63F8 A5200018 */  sh         $zero, 0x18($t1)
/* A6FFC 800A63FC 8FAA0020 */  lw         $t2, 0x20($sp)
/* A7000 800A6400 AD40003C */  sw         $zero, 0x3c($t2)
/* A7004 800A6404 8FAB0020 */  lw         $t3, 0x20($sp)
/* A7008 800A6408 AD600040 */  sw         $zero, 0x40($t3)
/* A700C 800A640C 8FAC0020 */  lw         $t4, 0x20($sp)
/* A7010 800A6410 AD800044 */  sw         $zero, 0x44($t4)
/* A7014 800A6414 10000001 */  b          .L800A641C
/* A7018 800A6418 00000000 */   nop
.L800A641C:
/* A701C 800A641C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A7020 800A6420 27BD0020 */  addiu      $sp, $sp, 0x20
/* A7024 800A6424 03E00008 */  jr         $ra
/* A7028 800A6428 00000000 */   nop

glabel func_800A642C
/* A702C 800A642C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A7030 800A6430 AFBF001C */  sw         $ra, 0x1c($sp)
/* A7034 800A6434 AFA40028 */  sw         $a0, 0x28($sp)
/* A7038 800A6438 AFA5002C */  sw         $a1, 0x2c($sp)
/* A703C 800A643C AFA60030 */  sw         $a2, 0x30($sp)
/* A7040 800A6440 3C05800B */  lui        $a1, %hi(D_800A9660)
/* A7044 800A6444 3C06800B */  lui        $a2, %hi(func_800AA344)
/* A7048 800A6448 24C6A344 */  addiu      $a2, $a2, %lo(func_800AA344)
/* A704C 800A644C 24A59660 */  addiu      $a1, $a1, %lo(D_800A9660)
/* A7050 800A6450 8FA40028 */  lw         $a0, 0x28($sp)
/* A7054 800A6454 0C02B2EC */  jal        func_800ACBB0
/* A7058 800A6458 00003825 */   or        $a3, $zero, $zero
/* A705C 800A645C 3C04800D */  lui        $a0, %hi(D_800D331C)
/* A7060 800A6460 240E0020 */  addiu      $t6, $zero, 0x20
/* A7064 800A6464 AFAE0010 */  sw         $t6, 0x10($sp)
/* A7068 800A6468 2484331C */  addiu      $a0, $a0, %lo(D_800D331C)
/* A706C 800A646C 240500EF */  addiu      $a1, $zero, 0xef
/* A7070 800A6470 8FA60030 */  lw         $a2, 0x30($sp)
/* A7074 800A6474 0C02E384 */  jal        func_800B8E10
/* A7078 800A6478 24070001 */   addiu     $a3, $zero, 1
/* A707C 800A647C 8FAF0028 */  lw         $t7, 0x28($sp)
/* A7080 800A6480 ADE20014 */  sw         $v0, 0x14($t7)
/* A7084 800A6484 3C04800D */  lui        $a0, %hi(D_800D3330)
/* A7088 800A6488 24180020 */  addiu      $t8, $zero, 0x20
/* A708C 800A648C AFB80010 */  sw         $t8, 0x10($sp)
/* A7090 800A6490 24843330 */  addiu      $a0, $a0, %lo(D_800D3330)
/* A7094 800A6494 240500F0 */  addiu      $a1, $zero, 0xf0
/* A7098 800A6498 8FA60030 */  lw         $a2, 0x30($sp)
/* A709C 800A649C 0C02E384 */  jal        func_800B8E10
/* A70A0 800A64A0 24070001 */   addiu     $a3, $zero, 1
/* A70A4 800A64A4 8FB90028 */  lw         $t9, 0x28($sp)
/* A70A8 800A64A8 AF220018 */  sw         $v0, 0x18($t9)
/* A70AC 800A64AC 8FB9002C */  lw         $t9, 0x2c($sp)
/* A70B0 800A64B0 8FA40028 */  lw         $a0, 0x28($sp)
/* A70B4 800A64B4 0320F809 */  jalr       $t9
/* A70B8 800A64B8 24840034 */   addiu     $a0, $a0, 0x34
/* A70BC 800A64BC 8FA80028 */  lw         $t0, 0x28($sp)
/* A70C0 800A64C0 AD020030 */  sw         $v0, 0x30($t0)
/* A70C4 800A64C4 8FA90028 */  lw         $t1, 0x28($sp)
/* A70C8 800A64C8 AD20003C */  sw         $zero, 0x3c($t1)
/* A70CC 800A64CC 8FAB0028 */  lw         $t3, 0x28($sp)
/* A70D0 800A64D0 240A0001 */  addiu      $t2, $zero, 1
/* A70D4 800A64D4 AD6A0040 */  sw         $t2, 0x40($t3)
/* A70D8 800A64D8 8FAC0028 */  lw         $t4, 0x28($sp)
/* A70DC 800A64DC AD800044 */  sw         $zero, 0x44($t4)
/* A70E0 800A64E0 10000001 */  b          .L800A64E8
/* A70E4 800A64E4 00000000 */   nop
.L800A64E8:
/* A70E8 800A64E8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A70EC 800A64EC 27BD0028 */  addiu      $sp, $sp, 0x28
/* A70F0 800A64F0 03E00008 */  jr         $ra
/* A70F4 800A64F4 00000000 */   nop

glabel func_800A64F8
/* A70F8 800A64F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A70FC 800A64FC AFBF001C */  sw         $ra, 0x1c($sp)
/* A7100 800A6500 AFA40020 */  sw         $a0, 0x20($sp)
/* A7104 800A6504 AFA50024 */  sw         $a1, 0x24($sp)
/* A7108 800A6508 3C05800B */  lui        $a1, %hi(D_800A9030)
/* A710C 800A650C 3C06800B */  lui        $a2, %hi(func_800A9300)
/* A7110 800A6510 24C69300 */  addiu      $a2, $a2, %lo(func_800A9300)
/* A7114 800A6514 24A59030 */  addiu      $a1, $a1, %lo(D_800A9030)
/* A7118 800A6518 8FA40020 */  lw         $a0, 0x20($sp)
/* A711C 800A651C 0C02B2EC */  jal        func_800ACBB0
/* A7120 800A6520 24070001 */   addiu     $a3, $zero, 1
/* A7124 800A6524 3C04800D */  lui        $a0, %hi(D_800D3344)
/* A7128 800A6528 240E0020 */  addiu      $t6, $zero, 0x20
/* A712C 800A652C AFAE0010 */  sw         $t6, 0x10($sp)
/* A7130 800A6530 24843344 */  addiu      $a0, $a0, %lo(D_800D3344)
/* A7134 800A6534 24050103 */  addiu      $a1, $zero, 0x103
/* A7138 800A6538 8FA60024 */  lw         $a2, 0x24($sp)
/* A713C 800A653C 0C02E384 */  jal        func_800B8E10
/* A7140 800A6540 24070001 */   addiu     $a3, $zero, 1
/* A7144 800A6544 8FAF0020 */  lw         $t7, 0x20($sp)
/* A7148 800A6548 ADE20014 */  sw         $v0, 0x14($t7)
/* A714C 800A654C 44802000 */  mtc1       $zero, $f4
/* A7150 800A6550 8FB80020 */  lw         $t8, 0x20($sp)
/* A7154 800A6554 E7040020 */  swc1       $f4, 0x20($t8)
/* A7158 800A6558 8FA80020 */  lw         $t0, 0x20($sp)
/* A715C 800A655C 24190001 */  addiu      $t9, $zero, 1
/* A7160 800A6560 AD190024 */  sw         $t9, 0x24($t0)
/* A7164 800A6564 8FA90020 */  lw         $t1, 0x20($sp)
/* A7168 800A6568 AD200030 */  sw         $zero, 0x30($t1)
/* A716C 800A656C 3C013F80 */  lui        $at, 0x3f80
/* A7170 800A6570 44813000 */  mtc1       $at, $f6
/* A7174 800A6574 8FAA0020 */  lw         $t2, 0x20($sp)
/* A7178 800A6578 E5460018 */  swc1       $f6, 0x18($t2)
/* A717C 800A657C 8FAB0020 */  lw         $t3, 0x20($sp)
/* A7180 800A6580 AD60001C */  sw         $zero, 0x1c($t3)
/* A7184 800A6584 8FAC0020 */  lw         $t4, 0x20($sp)
/* A7188 800A6588 AD800028 */  sw         $zero, 0x28($t4)
/* A718C 800A658C 8FAD0020 */  lw         $t5, 0x20($sp)
/* A7190 800A6590 ADA0002C */  sw         $zero, 0x2c($t5)
/* A7194 800A6594 10000001 */  b          .L800A659C
/* A7198 800A6598 00000000 */   nop
.L800A659C:
/* A719C 800A659C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A71A0 800A65A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* A71A4 800A65A4 03E00008 */  jr         $ra
/* A71A8 800A65A8 00000000 */   nop

glabel func_800A65AC
/* A71AC 800A65AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A71B0 800A65B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A71B4 800A65B4 AFA40018 */  sw         $a0, 0x18($sp)
/* A71B8 800A65B8 AFA5001C */  sw         $a1, 0x1c($sp)
/* A71BC 800A65BC AFA60020 */  sw         $a2, 0x20($sp)
/* A71C0 800A65C0 3C05800A */  lui        $a1, %hi(D_800A7B90)
/* A71C4 800A65C4 3C06800A */  lui        $a2, %hi(func_800A7CB0)
/* A71C8 800A65C8 24C67CB0 */  addiu      $a2, $a2, %lo(func_800A7CB0)
/* A71CC 800A65CC 24A57B90 */  addiu      $a1, $a1, %lo(D_800A7B90)
/* A71D0 800A65D0 8FA40018 */  lw         $a0, 0x18($sp)
/* A71D4 800A65D4 0C02B2EC */  jal        func_800ACBB0
/* A71D8 800A65D8 24070006 */   addiu     $a3, $zero, 6
/* A71DC 800A65DC 8FAE0018 */  lw         $t6, 0x18($sp)
/* A71E0 800A65E0 ADC00014 */  sw         $zero, 0x14($t6)
/* A71E4 800A65E4 8FAF0020 */  lw         $t7, 0x20($sp)
/* A71E8 800A65E8 8FB80018 */  lw         $t8, 0x18($sp)
/* A71EC 800A65EC AF0F0018 */  sw         $t7, 0x18($t8)
/* A71F0 800A65F0 8FB9001C */  lw         $t9, 0x1c($sp)
/* A71F4 800A65F4 8FA80018 */  lw         $t0, 0x18($sp)
/* A71F8 800A65F8 AD19001C */  sw         $t9, 0x1c($t0)
/* A71FC 800A65FC 10000001 */  b          .L800A6604
/* A7200 800A6600 00000000 */   nop
.L800A6604:
/* A7204 800A6604 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7208 800A6608 27BD0018 */  addiu      $sp, $sp, 0x18
/* A720C 800A660C 03E00008 */  jr         $ra
/* A7210 800A6610 00000000 */   nop

glabel func_800A6614
/* A7214 800A6614 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7218 800A6618 AFBF0014 */  sw         $ra, 0x14($sp)
/* A721C 800A661C AFA40018 */  sw         $a0, 0x18($sp)
/* A7220 800A6620 AFA5001C */  sw         $a1, 0x1c($sp)
/* A7224 800A6624 AFA60020 */  sw         $a2, 0x20($sp)
/* A7228 800A6628 3C05800A */  lui        $a1, %hi(func_800A66D0)
/* A722C 800A662C 3C06800A */  lui        $a2, %hi(func_800A6880)
/* A7230 800A6630 24C66880 */  addiu      $a2, $a2, %lo(func_800A6880)
/* A7234 800A6634 24A566D0 */  addiu      $a1, $a1, %lo(func_800A66D0)
/* A7238 800A6638 8FA40018 */  lw         $a0, 0x18($sp)
/* A723C 800A663C 0C02B2EC */  jal        func_800ACBB0
/* A7240 800A6640 24070007 */   addiu     $a3, $zero, 7
/* A7244 800A6644 8FAE0018 */  lw         $t6, 0x18($sp)
/* A7248 800A6648 ADC00014 */  sw         $zero, 0x14($t6)
/* A724C 800A664C 8FAF0020 */  lw         $t7, 0x20($sp)
/* A7250 800A6650 8FB80018 */  lw         $t8, 0x18($sp)
/* A7254 800A6654 AF0F0018 */  sw         $t7, 0x18($t8)
/* A7258 800A6658 8FB9001C */  lw         $t9, 0x1c($sp)
/* A725C 800A665C 8FA80018 */  lw         $t0, 0x18($sp)
/* A7260 800A6660 AD19001C */  sw         $t9, 0x1c($t0)
/* A7264 800A6664 10000001 */  b          .L800A666C
/* A7268 800A6668 00000000 */   nop
.L800A666C:
/* A726C 800A666C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7270 800A6670 27BD0018 */  addiu      $sp, $sp, 0x18
/* A7274 800A6674 03E00008 */  jr         $ra
/* A7278 800A6678 00000000 */   nop

glabel func_800A667C
/* A727C 800A667C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7280 800A6680 AFBF0014 */  sw         $ra, 0x14($sp)
/* A7284 800A6684 AFA40018 */  sw         $a0, 0x18($sp)
/* A7288 800A6688 3C05800B */  lui        $a1, %hi(D_800AD5D0)
/* A728C 800A668C 3C06800B */  lui        $a2, %hi(func_800AD734)
/* A7290 800A6690 24C6D734 */  addiu      $a2, $a2, %lo(func_800AD734)
/* A7294 800A6694 24A5D5D0 */  addiu      $a1, $a1, %lo(D_800AD5D0)
/* A7298 800A6698 8FA40018 */  lw         $a0, 0x18($sp)
/* A729C 800A669C 0C02B2EC */  jal        func_800ACBB0
/* A72A0 800A66A0 24070003 */   addiu     $a3, $zero, 3
/* A72A4 800A66A4 8FAE0018 */  lw         $t6, 0x18($sp)
/* A72A8 800A66A8 ADC00014 */  sw         $zero, 0x14($t6)
/* A72AC 800A66AC 8FB80018 */  lw         $t8, 0x18($sp)
/* A72B0 800A66B0 240F0001 */  addiu      $t7, $zero, 1
/* A72B4 800A66B4 AF0F0018 */  sw         $t7, 0x18($t8)
/* A72B8 800A66B8 10000001 */  b          .L800A66C0
/* A72BC 800A66BC 00000000 */   nop
.L800A66C0:
/* A72C0 800A66C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A72C4 800A66C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* A72C8 800A66C8 03E00008 */  jr         $ra
/* A72CC 800A66CC 00000000 */   nop

glabel func_800A66D0
/* A72D0 800A66D0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A72D4 800A66D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A72D8 800A66D8 AFA40048 */  sw         $a0, 0x48($sp)
/* A72DC 800A66DC AFA5004C */  sw         $a1, 0x4c($sp)
/* A72E0 800A66E0 AFA60050 */  sw         $a2, 0x50($sp)
/* A72E4 800A66E4 AFA70054 */  sw         $a3, 0x54($sp)
/* A72E8 800A66E8 8FAE0058 */  lw         $t6, 0x58($sp)
/* A72EC 800A66EC AFAE0044 */  sw         $t6, 0x44($sp)
/* A72F0 800A66F0 8FAF0048 */  lw         $t7, 0x48($sp)
/* A72F4 800A66F4 AFAF0040 */  sw         $t7, 0x40($sp)
/* A72F8 800A66F8 8FB80040 */  lw         $t8, 0x40($sp)
/* A72FC 800A66FC 8F19001C */  lw         $t9, 0x1c($t8)
/* A7300 800A6700 AFB9003C */  sw         $t9, 0x3c($sp)
/* A7304 800A6704 8FA80044 */  lw         $t0, 0x44($sp)
/* A7308 800A6708 25090008 */  addiu      $t1, $t0, 8
/* A730C 800A670C AFA90044 */  sw         $t1, 0x44($sp)
/* A7310 800A6710 AFA80034 */  sw         $t0, 0x34($sp)
/* A7314 800A6714 8FAB0034 */  lw         $t3, 0x34($sp)
/* A7318 800A6718 3C0A0200 */  lui        $t2, 0x200
/* A731C 800A671C 354A0440 */  ori        $t2, $t2, 0x440
/* A7320 800A6720 AD6A0000 */  sw         $t2, ($t3)
/* A7324 800A6724 8FAC0050 */  lw         $t4, 0x50($sp)
/* A7328 800A6728 8FAE0034 */  lw         $t6, 0x34($sp)
/* A732C 800A672C 000C6840 */  sll        $t5, $t4, 1
/* A7330 800A6730 ADCD0004 */  sw         $t5, 4($t6)
/* A7334 800A6734 8FAF0044 */  lw         $t7, 0x44($sp)
/* A7338 800A6738 25F80008 */  addiu      $t8, $t7, 8
/* A733C 800A673C AFB80044 */  sw         $t8, 0x44($sp)
/* A7340 800A6740 AFAF0030 */  sw         $t7, 0x30($sp)
/* A7344 800A6744 8FA80030 */  lw         $t0, 0x30($sp)
/* A7348 800A6748 3C190200 */  lui        $t9, 0x200
/* A734C 800A674C 37390580 */  ori        $t9, $t9, 0x580
/* A7350 800A6750 AD190000 */  sw         $t9, ($t0)
/* A7354 800A6754 8FA90050 */  lw         $t1, 0x50($sp)
/* A7358 800A6758 8FAB0030 */  lw         $t3, 0x30($sp)
/* A735C 800A675C 00095040 */  sll        $t2, $t1, 1
/* A7360 800A6760 AD6A0004 */  sw         $t2, 4($t3)
/* A7364 800A6764 8FAC0040 */  lw         $t4, 0x40($sp)
/* A7368 800A6768 AFA00038 */  sw         $zero, 0x38($sp)
/* A736C 800A676C 8D8D0014 */  lw         $t5, 0x14($t4)
/* A7370 800A6770 19A0003B */  blez       $t5, .L800A6860
/* A7374 800A6774 00000000 */   nop
.L800A6778:
/* A7378 800A6778 8FAF0038 */  lw         $t7, 0x38($sp)
/* A737C 800A677C 8FAE003C */  lw         $t6, 0x3c($sp)
/* A7380 800A6780 8FA90044 */  lw         $t1, 0x44($sp)
/* A7384 800A6784 000FC080 */  sll        $t8, $t7, 2
/* A7388 800A6788 01D8C821 */  addu       $t9, $t6, $t8
/* A738C 800A678C 8F280000 */  lw         $t0, ($t9)
/* A7390 800A6790 AFA90010 */  sw         $t1, 0x10($sp)
/* A7394 800A6794 8FA5004C */  lw         $a1, 0x4c($sp)
/* A7398 800A6798 8D190004 */  lw         $t9, 4($t0)
/* A739C 800A679C 8FA60050 */  lw         $a2, 0x50($sp)
/* A73A0 800A67A0 8FA70054 */  lw         $a3, 0x54($sp)
/* A73A4 800A67A4 0320F809 */  jalr       $t9
/* A73A8 800A67A8 01002025 */   or        $a0, $t0, $zero
/* A73AC 800A67AC AFA20044 */  sw         $v0, 0x44($sp)
/* A73B0 800A67B0 8FAA0044 */  lw         $t2, 0x44($sp)
/* A73B4 800A67B4 254B0008 */  addiu      $t3, $t2, 8
/* A73B8 800A67B8 AFAB0044 */  sw         $t3, 0x44($sp)
/* A73BC 800A67BC AFAA002C */  sw         $t2, 0x2c($sp)
/* A73C0 800A67C0 8FAD002C */  lw         $t5, 0x2c($sp)
/* A73C4 800A67C4 3C0C0800 */  lui        $t4, 0x800
/* A73C8 800A67C8 ADAC0000 */  sw         $t4, ($t5)
/* A73CC 800A67CC 8FAF0050 */  lw         $t7, 0x50($sp)
/* A73D0 800A67D0 8FA9002C */  lw         $t1, 0x2c($sp)
/* A73D4 800A67D4 000F7040 */  sll        $t6, $t7, 1
/* A73D8 800A67D8 31D8FFFF */  andi       $t8, $t6, 0xffff
/* A73DC 800A67DC AD380004 */  sw         $t8, 4($t1)
/* A73E0 800A67E0 8FA80044 */  lw         $t0, 0x44($sp)
/* A73E4 800A67E4 25190008 */  addiu      $t9, $t0, 8
/* A73E8 800A67E8 AFB90044 */  sw         $t9, 0x44($sp)
/* A73EC 800A67EC AFA80028 */  sw         $t0, 0x28($sp)
/* A73F0 800A67F0 8FAB0028 */  lw         $t3, 0x28($sp)
/* A73F4 800A67F4 3C0A0C00 */  lui        $t2, 0xc00
/* A73F8 800A67F8 354A7FFF */  ori        $t2, $t2, 0x7fff
/* A73FC 800A67FC AD6A0000 */  sw         $t2, ($t3)
/* A7400 800A6800 8FAD0028 */  lw         $t5, 0x28($sp)
/* A7404 800A6804 3C0C06C0 */  lui        $t4, 0x6c0
/* A7408 800A6808 358C0440 */  ori        $t4, $t4, 0x440
/* A740C 800A680C ADAC0004 */  sw         $t4, 4($t5)
/* A7410 800A6810 8FAF0044 */  lw         $t7, 0x44($sp)
/* A7414 800A6814 25EE0008 */  addiu      $t6, $t7, 8
/* A7418 800A6818 AFAE0044 */  sw         $t6, 0x44($sp)
/* A741C 800A681C AFAF0024 */  sw         $t7, 0x24($sp)
/* A7420 800A6820 8FA90024 */  lw         $t1, 0x24($sp)
/* A7424 800A6824 3C180C00 */  lui        $t8, 0xc00
/* A7428 800A6828 37187FFF */  ori        $t8, $t8, 0x7fff
/* A742C 800A682C AD380000 */  sw         $t8, ($t1)
/* A7430 800A6830 8FB90024 */  lw         $t9, 0x24($sp)
/* A7434 800A6834 3C080800 */  lui        $t0, 0x800
/* A7438 800A6838 35080580 */  ori        $t0, $t0, 0x580
/* A743C 800A683C AF280004 */  sw         $t0, 4($t9)
/* A7440 800A6840 8FAA0038 */  lw         $t2, 0x38($sp)
/* A7444 800A6844 8FAC0040 */  lw         $t4, 0x40($sp)
/* A7448 800A6848 254B0001 */  addiu      $t3, $t2, 1
/* A744C 800A684C AFAB0038 */  sw         $t3, 0x38($sp)
/* A7450 800A6850 8D8D0014 */  lw         $t5, 0x14($t4)
/* A7454 800A6854 016D082A */  slt        $at, $t3, $t5
/* A7458 800A6858 1420FFC7 */  bnez       $at, .L800A6778
/* A745C 800A685C 00000000 */   nop
.L800A6860:
/* A7460 800A6860 10000003 */  b          .L800A6870
/* A7464 800A6864 8FA20044 */   lw        $v0, 0x44($sp)
/* A7468 800A6868 10000001 */  b          .L800A6870
/* A746C 800A686C 00000000 */   nop
.L800A6870:
/* A7470 800A6870 8FBF001C */  lw         $ra, 0x1c($sp)
/* A7474 800A6874 27BD0048 */  addiu      $sp, $sp, 0x48
/* A7478 800A6878 03E00008 */  jr         $ra
/* A747C 800A687C 00000000 */   nop

glabel func_800A6880
/* A7480 800A6880 27BDFFF8 */  addiu      $sp, $sp, -8
/* A7484 800A6884 AFA40004 */  sw         $a0, 4($sp)
/* A7488 800A6888 8FAE0004 */  lw         $t6, 4($sp)
/* A748C 800A688C 8DCF001C */  lw         $t7, 0x1c($t6)
/* A7490 800A6890 AFAF0000 */  sw         $t7, ($sp)
/* A7494 800A6894 24010002 */  addiu      $at, $zero, 2
/* A7498 800A6898 14A1000F */  bne        $a1, $at, .L800A68D8
/* A749C 800A689C 00000000 */   nop
/* A74A0 800A68A0 10000001 */  b          .L800A68A8
/* A74A4 800A68A4 00000000 */   nop
.L800A68A8:
/* A74A8 800A68A8 8FB90004 */  lw         $t9, 4($sp)
/* A74AC 800A68AC 8FB80000 */  lw         $t8, ($sp)
/* A74B0 800A68B0 8F280014 */  lw         $t0, 0x14($t9)
/* A74B4 800A68B4 00084880 */  sll        $t1, $t0, 2
/* A74B8 800A68B8 03095021 */  addu       $t2, $t8, $t1
/* A74BC 800A68BC AD460000 */  sw         $a2, ($t2)
/* A74C0 800A68C0 8FAB0004 */  lw         $t3, 4($sp)
/* A74C4 800A68C4 8D6C0014 */  lw         $t4, 0x14($t3)
/* A74C8 800A68C8 258D0001 */  addiu      $t5, $t4, 1
/* A74CC 800A68CC AD6D0014 */  sw         $t5, 0x14($t3)
/* A74D0 800A68D0 10000003 */  b          .L800A68E0
/* A74D4 800A68D4 00000000 */   nop
.L800A68D8:
/* A74D8 800A68D8 10000001 */  b          .L800A68E0
/* A74DC 800A68DC 00000000 */   nop
.L800A68E0:
/* A74E0 800A68E0 10000003 */  b          .L800A68F0
/* A74E4 800A68E4 00001025 */   or        $v0, $zero, $zero
/* A74E8 800A68E8 10000001 */  b          .L800A68F0
/* A74EC 800A68EC 00000000 */   nop
.L800A68F0:
/* A74F0 800A68F0 03E00008 */  jr         $ra
/* A74F4 800A68F4 27BD0008 */   addiu     $sp, $sp, 8
/* A74F8 800A68F8 00000000 */  nop
/* A74FC 800A68FC 00000000 */  nop
