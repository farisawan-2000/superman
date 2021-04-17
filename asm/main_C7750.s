.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C6B50
/* C7750 800C6B50 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C7754 800C6B54 AFA00008 */  sw         $zero, 8($sp)
/* C7758 800C6B58 AFA40004 */  sw         $a0, 4($sp)
/* C775C 800C6B5C 18A00010 */  blez       $a1, .L800C6BA0
/* C7760 800C6B60 AFA0000C */   sw        $zero, 0xc($sp)
.L800C6B64:
/* C7764 800C6B64 8FAF0004 */  lw         $t7, 4($sp)
/* C7768 800C6B68 8FAE0008 */  lw         $t6, 8($sp)
/* C776C 800C6B6C 8FAB000C */  lw         $t3, 0xc($sp)
/* C7770 800C6B70 91F80000 */  lbu        $t8, ($t7)
/* C7774 800C6B74 25E80001 */  addiu      $t0, $t7, 1
/* C7778 800C6B78 256C0001 */  addiu      $t4, $t3, 1
/* C777C 800C6B7C 01D8C821 */  addu       $t9, $t6, $t8
/* C7780 800C6B80 AFB90008 */  sw         $t9, 8($sp)
/* C7784 800C6B84 8FA90008 */  lw         $t1, 8($sp)
/* C7788 800C6B88 0185082A */  slt        $at, $t4, $a1
/* C778C 800C6B8C AFAC000C */  sw         $t4, 0xc($sp)
/* C7790 800C6B90 312AFFFF */  andi       $t2, $t1, 0xffff
/* C7794 800C6B94 AFA80004 */  sw         $t0, 4($sp)
/* C7798 800C6B98 1420FFF2 */  bnez       $at, .L800C6B64
/* C779C 800C6B9C AFAA0008 */   sw        $t2, 8($sp)
.L800C6BA0:
/* C77A0 800C6BA0 97A2000A */  lhu        $v0, 0xa($sp)
/* C77A4 800C6BA4 03E00008 */  jr         $ra
/* C77A8 800C6BA8 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800C6BAC
/* C77AC 800C6BAC 27BDFFF8 */  addiu      $sp, $sp, -8
/* C77B0 800C6BB0 A7A00006 */  sh         $zero, 6($sp)
/* C77B4 800C6BB4 A4C00000 */  sh         $zero, ($a2)
/* C77B8 800C6BB8 94CE0000 */  lhu        $t6, ($a2)
/* C77BC 800C6BBC A4AE0000 */  sh         $t6, ($a1)
/* C77C0 800C6BC0 AFA00000 */  sw         $zero, ($sp)
.L800C6BC4:
/* C77C4 800C6BC4 8FAF0000 */  lw         $t7, ($sp)
/* C77C8 800C6BC8 008FC021 */  addu       $t8, $a0, $t7
/* C77CC 800C6BCC 97190000 */  lhu        $t9, ($t8)
/* C77D0 800C6BD0 A7B90006 */  sh         $t9, 6($sp)
/* C77D4 800C6BD4 94A80000 */  lhu        $t0, ($a1)
/* C77D8 800C6BD8 01194821 */  addu       $t1, $t0, $t9
/* C77DC 800C6BDC A4A90000 */  sh         $t1, ($a1)
/* C77E0 800C6BE0 97AB0006 */  lhu        $t3, 6($sp)
/* C77E4 800C6BE4 94CA0000 */  lhu        $t2, ($a2)
/* C77E8 800C6BE8 01606027 */  not        $t4, $t3
/* C77EC 800C6BEC 014C6821 */  addu       $t5, $t2, $t4
/* C77F0 800C6BF0 A4CD0000 */  sh         $t5, ($a2)
/* C77F4 800C6BF4 8FAE0000 */  lw         $t6, ($sp)
/* C77F8 800C6BF8 25CF0002 */  addiu      $t7, $t6, 2
/* C77FC 800C6BFC 2DE1001C */  sltiu      $at, $t7, 0x1c
/* C7800 800C6C00 1420FFF0 */  bnez       $at, .L800C6BC4
/* C7804 800C6C04 AFAF0000 */   sw        $t7, ($sp)
/* C7808 800C6C08 00001025 */  or         $v0, $zero, $zero
/* C780C 800C6C0C 03E00008 */  jr         $ra
/* C7810 800C6C10 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800C6C14
/* C7814 800C6C14 27BDFF88 */  addiu      $sp, $sp, -0x78
/* C7818 800C6C18 AFA40078 */  sw         $a0, 0x78($sp)
/* C781C 800C6C1C 8FAE0078 */  lw         $t6, 0x78($sp)
/* C7820 800C6C20 AFBF001C */  sw         $ra, 0x1c($sp)
/* C7824 800C6C24 AFA5007C */  sw         $a1, 0x7c($sp)
/* C7828 800C6C28 AFA60080 */  sw         $a2, 0x80($sp)
/* C782C 800C6C2C AFA00074 */  sw         $zero, 0x74($sp)
/* C7830 800C6C30 A3A00033 */  sb         $zero, 0x33($sp)
/* C7834 800C6C34 91CF0065 */  lbu        $t7, 0x65($t6)
/* C7838 800C6C38 11E0000A */  beqz       $t7, .L800C6C64
/* C783C 800C6C3C 00000000 */   nop
/* C7840 800C6C40 A1C00065 */  sb         $zero, 0x65($t6)
/* C7844 800C6C44 0C031E0F */  jal        func_800C783C
/* C7848 800C6C48 8FA40078 */   lw        $a0, 0x78($sp)
/* C784C 800C6C4C AFA20074 */  sw         $v0, 0x74($sp)
/* C7850 800C6C50 8FB80074 */  lw         $t8, 0x74($sp)
/* C7854 800C6C54 13000003 */  beqz       $t8, .L800C6C64
/* C7858 800C6C58 00000000 */   nop
/* C785C 800C6C5C 100000EF */  b          .L800C701C
/* C7860 800C6C60 03001025 */   or        $v0, $t8, $zero
.L800C6C64:
/* C7864 800C6C64 8FA80080 */  lw         $t0, 0x80($sp)
/* C7868 800C6C68 2419FFFF */  addiu      $t9, $zero, -1
/* C786C 800C6C6C 0C031E2C */  jal        func_800C78B0
/* C7870 800C6C70 AD190000 */   sw        $t9, ($t0)
/* C7874 800C6C74 8FA90080 */  lw         $t1, 0x80($sp)
/* C7878 800C6C78 AD220004 */  sw         $v0, 4($t1)
/* C787C 800C6C7C 8FAA007C */  lw         $t2, 0x7c($sp)
/* C7880 800C6C80 8FAB0080 */  lw         $t3, 0x80($sp)
/* C7884 800C6C84 8D4C0008 */  lw         $t4, 8($t2)
/* C7888 800C6C88 8D4D000C */  lw         $t5, 0xc($t2)
/* C788C 800C6C8C AD6C0008 */  sw         $t4, 8($t3)
/* C7890 800C6C90 AD6D000C */  sw         $t5, 0xc($t3)
/* C7894 800C6C94 8FAF007C */  lw         $t7, 0x7c($sp)
/* C7898 800C6C98 8FB80080 */  lw         $t8, 0x80($sp)
/* C789C 800C6C9C 8DEE0010 */  lw         $t6, 0x10($t7)
/* C78A0 800C6CA0 8DEF0014 */  lw         $t7, 0x14($t7)
/* C78A4 800C6CA4 AF0E0010 */  sw         $t6, 0x10($t8)
/* C78A8 800C6CA8 AF0F0014 */  sw         $t7, 0x14($t8)
/* C78AC 800C6CAC AFA00028 */  sw         $zero, 0x28($sp)
.L800C6CB0:
/* C78B0 800C6CB0 8FB90028 */  lw         $t9, 0x28($sp)
/* C78B4 800C6CB4 8FA80078 */  lw         $t0, 0x78($sp)
/* C78B8 800C6CB8 A1190065 */  sb         $t9, 0x65($t0)
/* C78BC 800C6CBC 0C031E0F */  jal        func_800C783C
/* C78C0 800C6CC0 8FA40078 */   lw        $a0, 0x78($sp)
/* C78C4 800C6CC4 AFA20074 */  sw         $v0, 0x74($sp)
/* C78C8 800C6CC8 8FA90074 */  lw         $t1, 0x74($sp)
/* C78CC 800C6CCC 11200003 */  beqz       $t1, .L800C6CDC
/* C78D0 800C6CD0 00000000 */   nop
/* C78D4 800C6CD4 100000D1 */  b          .L800C701C
/* C78D8 800C6CD8 01201025 */   or        $v0, $t1, $zero
.L800C6CDC:
/* C78DC 800C6CDC 8FAA0078 */  lw         $t2, 0x78($sp)
/* C78E0 800C6CE0 00003025 */  or         $a2, $zero, $zero
/* C78E4 800C6CE4 27A70054 */  addiu      $a3, $sp, 0x54
/* C78E8 800C6CE8 8D440004 */  lw         $a0, 4($t2)
/* C78EC 800C6CEC 0C034C10 */  jal        func_800D3040
/* C78F0 800C6CF0 8D450008 */   lw        $a1, 8($t2)
/* C78F4 800C6CF4 AFA20074 */  sw         $v0, 0x74($sp)
/* C78F8 800C6CF8 8FAC0074 */  lw         $t4, 0x74($sp)
/* C78FC 800C6CFC 11800003 */  beqz       $t4, .L800C6D0C
/* C7900 800C6D00 00000000 */   nop
/* C7904 800C6D04 100000C5 */  b          .L800C701C
/* C7908 800C6D08 01801025 */   or        $v0, $t4, $zero
.L800C6D0C:
/* C790C 800C6D0C 8FAD0028 */  lw         $t5, 0x28($sp)
/* C7910 800C6D10 27AE0054 */  addiu      $t6, $sp, 0x54
/* C7914 800C6D14 240F0001 */  addiu      $t7, $zero, 1
/* C7918 800C6D18 35AB0080 */  ori        $t3, $t5, 0x80
/* C791C 800C6D1C A1CB0000 */  sb         $t3, ($t6)
/* C7920 800C6D20 AFAF002C */  sw         $t7, 0x2c($sp)
.L800C6D24:
/* C7924 800C6D24 8FB8002C */  lw         $t8, 0x2c($sp)
/* C7928 800C6D28 27B90054 */  addiu      $t9, $sp, 0x54
/* C792C 800C6D2C 03194021 */  addu       $t0, $t8, $t9
/* C7930 800C6D30 91090000 */  lbu        $t1, ($t0)
/* C7934 800C6D34 01205027 */  not        $t2, $t1
/* C7938 800C6D38 A10A0000 */  sb         $t2, ($t0)
/* C793C 800C6D3C 8FAC002C */  lw         $t4, 0x2c($sp)
/* C7940 800C6D40 258D0001 */  addiu      $t5, $t4, 1
/* C7944 800C6D44 29A10020 */  slti       $at, $t5, 0x20
/* C7948 800C6D48 1420FFF6 */  bnez       $at, .L800C6D24
/* C794C 800C6D4C AFAD002C */   sw        $t5, 0x2c($sp)
/* C7950 800C6D50 8FAB0078 */  lw         $t3, 0x78($sp)
/* C7954 800C6D54 00003025 */  or         $a2, $zero, $zero
/* C7958 800C6D58 27A70054 */  addiu      $a3, $sp, 0x54
/* C795C 800C6D5C 8D640004 */  lw         $a0, 4($t3)
/* C7960 800C6D60 8D650008 */  lw         $a1, 8($t3)
/* C7964 800C6D64 0C034668 */  jal        func_800D19A0
/* C7968 800C6D68 AFA00010 */   sw        $zero, 0x10($sp)
/* C796C 800C6D6C AFA20074 */  sw         $v0, 0x74($sp)
/* C7970 800C6D70 8FAE0074 */  lw         $t6, 0x74($sp)
/* C7974 800C6D74 11C00003 */  beqz       $t6, .L800C6D84
/* C7978 800C6D78 00000000 */   nop
/* C797C 800C6D7C 100000A7 */  b          .L800C701C
/* C7980 800C6D80 01C01025 */   or        $v0, $t6, $zero
.L800C6D84:
/* C7984 800C6D84 8FAF0078 */  lw         $t7, 0x78($sp)
/* C7988 800C6D88 00003025 */  or         $a2, $zero, $zero
/* C798C 800C6D8C 27A70034 */  addiu      $a3, $sp, 0x34
/* C7990 800C6D90 8DE40004 */  lw         $a0, 4($t7)
/* C7994 800C6D94 0C034C10 */  jal        func_800D3040
/* C7998 800C6D98 8DE50008 */   lw        $a1, 8($t7)
/* C799C 800C6D9C AFA20074 */  sw         $v0, 0x74($sp)
/* C79A0 800C6DA0 8FB80074 */  lw         $t8, 0x74($sp)
/* C79A4 800C6DA4 13000003 */  beqz       $t8, .L800C6DB4
/* C79A8 800C6DA8 00000000 */   nop
/* C79AC 800C6DAC 1000009B */  b          .L800C701C
/* C79B0 800C6DB0 03001025 */   or        $v0, $t8, $zero
.L800C6DB4:
/* C79B4 800C6DB4 AFA0002C */  sw         $zero, 0x2c($sp)
.L800C6DB8:
/* C79B8 800C6DB8 8FB9002C */  lw         $t9, 0x2c($sp)
/* C79BC 800C6DBC 03B94821 */  addu       $t1, $sp, $t9
/* C79C0 800C6DC0 03B95021 */  addu       $t2, $sp, $t9
/* C79C4 800C6DC4 914A0034 */  lbu        $t2, 0x34($t2)
/* C79C8 800C6DC8 91290054 */  lbu        $t1, 0x54($t1)
/* C79CC 800C6DCC 152A0006 */  bne        $t1, $t2, .L800C6DE8
/* C79D0 800C6DD0 00000000 */   nop
/* C79D4 800C6DD4 8FA8002C */  lw         $t0, 0x2c($sp)
/* C79D8 800C6DD8 250C0001 */  addiu      $t4, $t0, 1
/* C79DC 800C6DDC 29810020 */  slti       $at, $t4, 0x20
/* C79E0 800C6DE0 1420FFF5 */  bnez       $at, .L800C6DB8
/* C79E4 800C6DE4 AFAC002C */   sw        $t4, 0x2c($sp)
.L800C6DE8:
/* C79E8 800C6DE8 8FAD002C */  lw         $t5, 0x2c($sp)
/* C79EC 800C6DEC 24010020 */  addiu      $at, $zero, 0x20
/* C79F0 800C6DF0 15A10026 */  bne        $t5, $at, .L800C6E8C
/* C79F4 800C6DF4 00000000 */   nop
/* C79F8 800C6DF8 8FAB0028 */  lw         $t3, 0x28($sp)
/* C79FC 800C6DFC 1960001C */  blez       $t3, .L800C6E70
/* C7A00 800C6E00 00000000 */   nop
/* C7A04 800C6E04 8FAE0078 */  lw         $t6, 0x78($sp)
/* C7A08 800C6E08 A1C00065 */  sb         $zero, 0x65($t6)
/* C7A0C 800C6E0C 0C031E0F */  jal        func_800C783C
/* C7A10 800C6E10 8FA40078 */   lw        $a0, 0x78($sp)
/* C7A14 800C6E14 AFA20074 */  sw         $v0, 0x74($sp)
/* C7A18 800C6E18 8FAF0074 */  lw         $t7, 0x74($sp)
/* C7A1C 800C6E1C 11E00003 */  beqz       $t7, .L800C6E2C
/* C7A20 800C6E20 00000000 */   nop
/* C7A24 800C6E24 1000007D */  b          .L800C701C
/* C7A28 800C6E28 01E01025 */   or        $v0, $t7, $zero
.L800C6E2C:
/* C7A2C 800C6E2C 8FB80078 */  lw         $t8, 0x78($sp)
/* C7A30 800C6E30 00003025 */  or         $a2, $zero, $zero
/* C7A34 800C6E34 27A70054 */  addiu      $a3, $sp, 0x54
/* C7A38 800C6E38 8F040004 */  lw         $a0, 4($t8)
/* C7A3C 800C6E3C 0C034C10 */  jal        func_800D3040
/* C7A40 800C6E40 8F050008 */   lw        $a1, 8($t8)
/* C7A44 800C6E44 AFA20074 */  sw         $v0, 0x74($sp)
/* C7A48 800C6E48 8FB90074 */  lw         $t9, 0x74($sp)
/* C7A4C 800C6E4C 13200003 */  beqz       $t9, .L800C6E5C
/* C7A50 800C6E50 00000000 */   nop
/* C7A54 800C6E54 10000071 */  b          .L800C701C
/* C7A58 800C6E58 03201025 */   or        $v0, $t9, $zero
.L800C6E5C:
/* C7A5C 800C6E5C 27A90054 */  addiu      $t1, $sp, 0x54
/* C7A60 800C6E60 912A0000 */  lbu        $t2, ($t1)
/* C7A64 800C6E64 24010080 */  addiu      $at, $zero, 0x80
/* C7A68 800C6E68 15410008 */  bne        $t2, $at, .L800C6E8C
/* C7A6C 800C6E6C 00000000 */   nop
.L800C6E70:
/* C7A70 800C6E70 8FA80028 */  lw         $t0, 0x28($sp)
/* C7A74 800C6E74 250C0001 */  addiu      $t4, $t0, 1
/* C7A78 800C6E78 AFAC0028 */  sw         $t4, 0x28($sp)
/* C7A7C 800C6E7C 8FAD0028 */  lw         $t5, 0x28($sp)
/* C7A80 800C6E80 29A1003E */  slti       $at, $t5, 0x3e
/* C7A84 800C6E84 1420FF8A */  bnez       $at, .L800C6CB0
/* C7A88 800C6E88 00000000 */   nop
.L800C6E8C:
/* C7A8C 800C6E8C 8FAB0078 */  lw         $t3, 0x78($sp)
/* C7A90 800C6E90 A1600065 */  sb         $zero, 0x65($t3)
/* C7A94 800C6E94 0C031E0F */  jal        func_800C783C
/* C7A98 800C6E98 8FA40078 */   lw        $a0, 0x78($sp)
/* C7A9C 800C6E9C AFA20074 */  sw         $v0, 0x74($sp)
/* C7AA0 800C6EA0 8FAE0074 */  lw         $t6, 0x74($sp)
/* C7AA4 800C6EA4 11C00003 */  beqz       $t6, .L800C6EB4
/* C7AA8 800C6EA8 00000000 */   nop
/* C7AAC 800C6EAC 1000005B */  b          .L800C701C
/* C7AB0 800C6EB0 01C01025 */   or        $v0, $t6, $zero
.L800C6EB4:
/* C7AB4 800C6EB4 8FAF0028 */  lw         $t7, 0x28($sp)
/* C7AB8 800C6EB8 19E00004 */  blez       $t7, .L800C6ECC
/* C7ABC 800C6EBC 00000000 */   nop
/* C7AC0 800C6EC0 24180001 */  addiu      $t8, $zero, 1
/* C7AC4 800C6EC4 10000002 */  b          .L800C6ED0
/* C7AC8 800C6EC8 A3B80033 */   sb        $t8, 0x33($sp)
.L800C6ECC:
/* C7ACC 800C6ECC A3A00033 */  sb         $zero, 0x33($sp)
.L800C6ED0:
/* C7AD0 800C6ED0 8FB9007C */  lw         $t9, 0x7c($sp)
/* C7AD4 800C6ED4 93A80033 */  lbu        $t0, 0x33($sp)
/* C7AD8 800C6ED8 8FAD0080 */  lw         $t5, 0x80($sp)
/* C7ADC 800C6EDC 97290018 */  lhu        $t1, 0x18($t9)
/* C7AE0 800C6EE0 312AFFFE */  andi       $t2, $t1, 0xfffe
/* C7AE4 800C6EE4 01486025 */  or         $t4, $t2, $t0
/* C7AE8 800C6EE8 A5AC0018 */  sh         $t4, 0x18($t5)
/* C7AEC 800C6EEC 8FAE0080 */  lw         $t6, 0x80($sp)
/* C7AF0 800C6EF0 8FAB0028 */  lw         $t3, 0x28($sp)
/* C7AF4 800C6EF4 A1CB001A */  sb         $t3, 0x1a($t6)
/* C7AF8 800C6EF8 8FAF007C */  lw         $t7, 0x7c($sp)
/* C7AFC 800C6EFC 8FB90080 */  lw         $t9, 0x80($sp)
/* C7B00 800C6F00 91F8001B */  lbu        $t8, 0x1b($t7)
/* C7B04 800C6F04 A338001B */  sb         $t8, 0x1b($t9)
/* C7B08 800C6F08 8FA90080 */  lw         $t1, 0x80($sp)
/* C7B0C 800C6F0C 01202025 */  or         $a0, $t1, $zero
/* C7B10 800C6F10 2525001C */  addiu      $a1, $t1, 0x1c
/* C7B14 800C6F14 0C031AEB */  jal        func_800C6BAC
/* C7B18 800C6F18 2526001E */   addiu     $a2, $t1, 0x1e
/* C7B1C 800C6F1C 240A0001 */  addiu      $t2, $zero, 1
/* C7B20 800C6F20 27A80020 */  addiu      $t0, $sp, 0x20
/* C7B24 800C6F24 A50A0000 */  sh         $t2, ($t0)
/* C7B28 800C6F28 240C0003 */  addiu      $t4, $zero, 3
/* C7B2C 800C6F2C 27AD0020 */  addiu      $t5, $sp, 0x20
/* C7B30 800C6F30 A5AC0002 */  sh         $t4, 2($t5)
/* C7B34 800C6F34 240B0004 */  addiu      $t3, $zero, 4
/* C7B38 800C6F38 27AE0020 */  addiu      $t6, $sp, 0x20
/* C7B3C 800C6F3C A5CB0004 */  sh         $t3, 4($t6)
/* C7B40 800C6F40 240F0006 */  addiu      $t7, $zero, 6
/* C7B44 800C6F44 27B80020 */  addiu      $t8, $sp, 0x20
/* C7B48 800C6F48 A70F0006 */  sh         $t7, 6($t8)
/* C7B4C 800C6F4C AFA0002C */  sw         $zero, 0x2c($sp)
.L800C6F50:
/* C7B50 800C6F50 8FA9002C */  lw         $t1, 0x2c($sp)
/* C7B54 800C6F54 8FB90078 */  lw         $t9, 0x78($sp)
/* C7B58 800C6F58 24080001 */  addiu      $t0, $zero, 1
/* C7B5C 800C6F5C 00095040 */  sll        $t2, $t1, 1
/* C7B60 800C6F60 03AA3021 */  addu       $a2, $sp, $t2
/* C7B64 800C6F64 94C60020 */  lhu        $a2, 0x20($a2)
/* C7B68 800C6F68 8F240004 */  lw         $a0, 4($t9)
/* C7B6C 800C6F6C 8F250008 */  lw         $a1, 8($t9)
/* C7B70 800C6F70 AFA80010 */  sw         $t0, 0x10($sp)
/* C7B74 800C6F74 0C034668 */  jal        func_800D19A0
/* C7B78 800C6F78 8FA70080 */   lw        $a3, 0x80($sp)
/* C7B7C 800C6F7C AFA20074 */  sw         $v0, 0x74($sp)
/* C7B80 800C6F80 8FAC0074 */  lw         $t4, 0x74($sp)
/* C7B84 800C6F84 11800003 */  beqz       $t4, .L800C6F94
/* C7B88 800C6F88 00000000 */   nop
/* C7B8C 800C6F8C 10000023 */  b          .L800C701C
/* C7B90 800C6F90 01801025 */   or        $v0, $t4, $zero
.L800C6F94:
/* C7B94 800C6F94 8FAD002C */  lw         $t5, 0x2c($sp)
/* C7B98 800C6F98 25AB0001 */  addiu      $t3, $t5, 1
/* C7B9C 800C6F9C 29610004 */  slti       $at, $t3, 4
/* C7BA0 800C6FA0 1420FFEB */  bnez       $at, .L800C6F50
/* C7BA4 800C6FA4 AFAB002C */   sw        $t3, 0x2c($sp)
/* C7BA8 800C6FA8 8FAE0078 */  lw         $t6, 0x78($sp)
/* C7BAC 800C6FAC 24060001 */  addiu      $a2, $zero, 1
/* C7BB0 800C6FB0 27A70054 */  addiu      $a3, $sp, 0x54
/* C7BB4 800C6FB4 8DC40004 */  lw         $a0, 4($t6)
/* C7BB8 800C6FB8 0C034C10 */  jal        func_800D3040
/* C7BBC 800C6FBC 8DC50008 */   lw        $a1, 8($t6)
/* C7BC0 800C6FC0 AFA20074 */  sw         $v0, 0x74($sp)
/* C7BC4 800C6FC4 8FAF0074 */  lw         $t7, 0x74($sp)
/* C7BC8 800C6FC8 11E00003 */  beqz       $t7, .L800C6FD8
/* C7BCC 800C6FCC 00000000 */   nop
/* C7BD0 800C6FD0 10000012 */  b          .L800C701C
/* C7BD4 800C6FD4 01E01025 */   or        $v0, $t7, $zero
.L800C6FD8:
/* C7BD8 800C6FD8 AFA0002C */  sw         $zero, 0x2c($sp)
.L800C6FDC:
/* C7BDC 800C6FDC 8FB9002C */  lw         $t9, 0x2c($sp)
/* C7BE0 800C6FE0 8FB80080 */  lw         $t8, 0x80($sp)
/* C7BE4 800C6FE4 03B94021 */  addu       $t0, $sp, $t9
/* C7BE8 800C6FE8 03194821 */  addu       $t1, $t8, $t9
/* C7BEC 800C6FEC 912A0000 */  lbu        $t2, ($t1)
/* C7BF0 800C6FF0 91080054 */  lbu        $t0, 0x54($t0)
/* C7BF4 800C6FF4 11480003 */  beq        $t2, $t0, .L800C7004
/* C7BF8 800C6FF8 00000000 */   nop
/* C7BFC 800C6FFC 10000007 */  b          .L800C701C
/* C7C00 800C7000 2402000A */   addiu     $v0, $zero, 0xa
.L800C7004:
/* C7C04 800C7004 8FAC002C */  lw         $t4, 0x2c($sp)
/* C7C08 800C7008 258D0001 */  addiu      $t5, $t4, 1
/* C7C0C 800C700C 29A10020 */  slti       $at, $t5, 0x20
/* C7C10 800C7010 1420FFF2 */  bnez       $at, .L800C6FDC
/* C7C14 800C7014 AFAD002C */   sw        $t5, 0x2c($sp)
/* C7C18 800C7018 00001025 */  or         $v0, $zero, $zero
.L800C701C:
/* C7C1C 800C701C 8FBF001C */  lw         $ra, 0x1c($sp)
/* C7C20 800C7020 27BD0078 */  addiu      $sp, $sp, 0x78
/* C7C24 800C7024 03E00008 */  jr         $ra
/* C7C28 800C7028 00000000 */   nop

glabel func_800C702C
/* C7C2C 800C702C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C7C30 800C7030 AFA40038 */  sw         $a0, 0x38($sp)
/* C7C34 800C7034 8FAE0038 */  lw         $t6, 0x38($sp)
/* C7C38 800C7038 AFBF001C */  sw         $ra, 0x1c($sp)
/* C7C3C 800C703C AFA5003C */  sw         $a1, 0x3c($sp)
/* C7C40 800C7040 AFA0002C */  sw         $zero, 0x2c($sp)
/* C7C44 800C7044 91CF0065 */  lbu        $t7, 0x65($t6)
/* C7C48 800C7048 11E0000A */  beqz       $t7, .L800C7074
/* C7C4C 800C704C 00000000 */   nop
/* C7C50 800C7050 A1C00065 */  sb         $zero, 0x65($t6)
/* C7C54 800C7054 0C031E0F */  jal        func_800C783C
/* C7C58 800C7058 8FA40038 */   lw        $a0, 0x38($sp)
/* C7C5C 800C705C AFA2002C */  sw         $v0, 0x2c($sp)
/* C7C60 800C7060 8FB8002C */  lw         $t8, 0x2c($sp)
/* C7C64 800C7064 13000003 */  beqz       $t8, .L800C7074
/* C7C68 800C7068 00000000 */   nop
/* C7C6C 800C706C 10000051 */  b          .L800C71B4
/* C7C70 800C7070 03001025 */   or        $v0, $t8, $zero
.L800C7074:
/* C7C74 800C7074 24190001 */  addiu      $t9, $zero, 1
/* C7C78 800C7078 27A80030 */  addiu      $t0, $sp, 0x30
/* C7C7C 800C707C A5190000 */  sh         $t9, ($t0)
/* C7C80 800C7080 24090003 */  addiu      $t1, $zero, 3
/* C7C84 800C7084 27AA0030 */  addiu      $t2, $sp, 0x30
/* C7C88 800C7088 A5490002 */  sh         $t1, 2($t2)
/* C7C8C 800C708C 240B0004 */  addiu      $t3, $zero, 4
/* C7C90 800C7090 27AC0030 */  addiu      $t4, $sp, 0x30
/* C7C94 800C7094 A58B0004 */  sh         $t3, 4($t4)
/* C7C98 800C7098 240D0006 */  addiu      $t5, $zero, 6
/* C7C9C 800C709C 27AF0030 */  addiu      $t7, $sp, 0x30
/* C7CA0 800C70A0 A5ED0006 */  sh         $t5, 6($t7)
/* C7CA4 800C70A4 240E0001 */  addiu      $t6, $zero, 1
/* C7CA8 800C70A8 AFAE0024 */  sw         $t6, 0x24($sp)
.L800C70AC:
/* C7CAC 800C70AC 8FB90024 */  lw         $t9, 0x24($sp)
/* C7CB0 800C70B0 8FB80038 */  lw         $t8, 0x38($sp)
/* C7CB4 800C70B4 8FA7003C */  lw         $a3, 0x3c($sp)
/* C7CB8 800C70B8 00194040 */  sll        $t0, $t9, 1
/* C7CBC 800C70BC 03A83021 */  addu       $a2, $sp, $t0
/* C7CC0 800C70C0 94C60030 */  lhu        $a2, 0x30($a2)
/* C7CC4 800C70C4 8F040004 */  lw         $a0, 4($t8)
/* C7CC8 800C70C8 0C034C10 */  jal        func_800D3040
/* C7CCC 800C70CC 8F050008 */   lw        $a1, 8($t8)
/* C7CD0 800C70D0 AFA2002C */  sw         $v0, 0x2c($sp)
/* C7CD4 800C70D4 8FA9002C */  lw         $t1, 0x2c($sp)
/* C7CD8 800C70D8 11200003 */  beqz       $t1, .L800C70E8
/* C7CDC 800C70DC 00000000 */   nop
/* C7CE0 800C70E0 10000034 */  b          .L800C71B4
/* C7CE4 800C70E4 01201025 */   or        $v0, $t1, $zero
.L800C70E8:
/* C7CE8 800C70E8 8FA4003C */  lw         $a0, 0x3c($sp)
/* C7CEC 800C70EC 27A5002A */  addiu      $a1, $sp, 0x2a
/* C7CF0 800C70F0 0C031AEB */  jal        func_800C6BAC
/* C7CF4 800C70F4 27A60028 */   addiu     $a2, $sp, 0x28
/* C7CF8 800C70F8 8FAA003C */  lw         $t2, 0x3c($sp)
/* C7CFC 800C70FC 97AC002A */  lhu        $t4, 0x2a($sp)
/* C7D00 800C7100 954B001C */  lhu        $t3, 0x1c($t2)
/* C7D04 800C7104 156C0005 */  bne        $t3, $t4, .L800C711C
/* C7D08 800C7108 00000000 */   nop
/* C7D0C 800C710C 954D001E */  lhu        $t5, 0x1e($t2)
/* C7D10 800C7110 97AF0028 */  lhu        $t7, 0x28($sp)
/* C7D14 800C7114 11AF0006 */  beq        $t5, $t7, .L800C7130
/* C7D18 800C7118 00000000 */   nop
.L800C711C:
/* C7D1C 800C711C 8FAE0024 */  lw         $t6, 0x24($sp)
/* C7D20 800C7120 25D80001 */  addiu      $t8, $t6, 1
/* C7D24 800C7124 2B010004 */  slti       $at, $t8, 4
/* C7D28 800C7128 1420FFE0 */  bnez       $at, .L800C70AC
/* C7D2C 800C712C AFB80024 */   sw        $t8, 0x24($sp)
.L800C7130:
/* C7D30 800C7130 8FB90024 */  lw         $t9, 0x24($sp)
/* C7D34 800C7134 24010004 */  addiu      $at, $zero, 4
/* C7D38 800C7138 17210003 */  bne        $t9, $at, .L800C7148
/* C7D3C 800C713C 00000000 */   nop
/* C7D40 800C7140 1000001C */  b          .L800C71B4
/* C7D44 800C7144 2402000A */   addiu     $v0, $zero, 0xa
.L800C7148:
/* C7D48 800C7148 AFA00020 */  sw         $zero, 0x20($sp)
.L800C714C:
/* C7D4C 800C714C 8FA80020 */  lw         $t0, 0x20($sp)
/* C7D50 800C7150 8FA90024 */  lw         $t1, 0x24($sp)
/* C7D54 800C7154 11090011 */  beq        $t0, $t1, .L800C719C
/* C7D58 800C7158 00000000 */   nop
/* C7D5C 800C715C 8FAB0038 */  lw         $t3, 0x38($sp)
/* C7D60 800C7160 00086040 */  sll        $t4, $t0, 1
/* C7D64 800C7164 03AC3021 */  addu       $a2, $sp, $t4
/* C7D68 800C7168 94C60030 */  lhu        $a2, 0x30($a2)
/* C7D6C 800C716C 240A0001 */  addiu      $t2, $zero, 1
/* C7D70 800C7170 8D640004 */  lw         $a0, 4($t3)
/* C7D74 800C7174 8D650008 */  lw         $a1, 8($t3)
/* C7D78 800C7178 AFAA0010 */  sw         $t2, 0x10($sp)
/* C7D7C 800C717C 0C034668 */  jal        func_800D19A0
/* C7D80 800C7180 8FA7003C */   lw        $a3, 0x3c($sp)
/* C7D84 800C7184 AFA2002C */  sw         $v0, 0x2c($sp)
/* C7D88 800C7188 8FAD002C */  lw         $t5, 0x2c($sp)
/* C7D8C 800C718C 11A00003 */  beqz       $t5, .L800C719C
/* C7D90 800C7190 00000000 */   nop
/* C7D94 800C7194 10000007 */  b          .L800C71B4
/* C7D98 800C7198 01A01025 */   or        $v0, $t5, $zero
.L800C719C:
/* C7D9C 800C719C 8FAF0020 */  lw         $t7, 0x20($sp)
/* C7DA0 800C71A0 25EE0001 */  addiu      $t6, $t7, 1
/* C7DA4 800C71A4 29C10004 */  slti       $at, $t6, 4
/* C7DA8 800C71A8 1420FFE8 */  bnez       $at, .L800C714C
/* C7DAC 800C71AC AFAE0020 */   sw        $t6, 0x20($sp)
/* C7DB0 800C71B0 00001025 */  or         $v0, $zero, $zero
.L800C71B4:
/* C7DB4 800C71B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* C7DB8 800C71B8 27BD0038 */  addiu      $sp, $sp, 0x38
/* C7DBC 800C71BC 03E00008 */  jr         $ra
/* C7DC0 800C71C0 00000000 */   nop

glabel func_800C71C4
/* C7DC4 800C71C4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C7DC8 800C71C8 AFA40068 */  sw         $a0, 0x68($sp)
/* C7DCC 800C71CC 8FAE0068 */  lw         $t6, 0x68($sp)
/* C7DD0 800C71D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* C7DD4 800C71D4 91CF0065 */  lbu        $t7, 0x65($t6)
/* C7DD8 800C71D8 11E0000A */  beqz       $t7, .L800C7204
/* C7DDC 800C71DC 00000000 */   nop
/* C7DE0 800C71E0 A1C00065 */  sb         $zero, 0x65($t6)
/* C7DE4 800C71E4 0C031E0F */  jal        func_800C783C
/* C7DE8 800C71E8 8FA40068 */   lw        $a0, 0x68($sp)
/* C7DEC 800C71EC AFA2001C */  sw         $v0, 0x1c($sp)
/* C7DF0 800C71F0 8FB8001C */  lw         $t8, 0x1c($sp)
/* C7DF4 800C71F4 13000003 */  beqz       $t8, .L800C7204
/* C7DF8 800C71F8 00000000 */   nop
/* C7DFC 800C71FC 10000084 */  b          .L800C7410
/* C7E00 800C7200 03001025 */   or        $v0, $t8, $zero
.L800C7204:
/* C7E04 800C7204 8FB90068 */  lw         $t9, 0x68($sp)
/* C7E08 800C7208 24060001 */  addiu      $a2, $zero, 1
/* C7E0C 800C720C 27A70040 */  addiu      $a3, $sp, 0x40
/* C7E10 800C7210 8F240004 */  lw         $a0, 4($t9)
/* C7E14 800C7214 0C034C10 */  jal        func_800D3040
/* C7E18 800C7218 8F250008 */   lw        $a1, 8($t9)
/* C7E1C 800C721C AFA2001C */  sw         $v0, 0x1c($sp)
/* C7E20 800C7220 8FA8001C */  lw         $t0, 0x1c($sp)
/* C7E24 800C7224 11000003 */  beqz       $t0, .L800C7234
/* C7E28 800C7228 00000000 */   nop
/* C7E2C 800C722C 10000078 */  b          .L800C7410
/* C7E30 800C7230 01001025 */   or        $v0, $t0, $zero
.L800C7234:
/* C7E34 800C7234 27A40040 */  addiu      $a0, $sp, 0x40
/* C7E38 800C7238 27A50062 */  addiu      $a1, $sp, 0x62
/* C7E3C 800C723C 0C031AEB */  jal        func_800C6BAC
/* C7E40 800C7240 27A60060 */   addiu     $a2, $sp, 0x60
/* C7E44 800C7244 27A90040 */  addiu      $t1, $sp, 0x40
/* C7E48 800C7248 AFA90018 */  sw         $t1, 0x18($sp)
/* C7E4C 800C724C 952A001C */  lhu        $t2, 0x1c($t1)
/* C7E50 800C7250 97AB0062 */  lhu        $t3, 0x62($sp)
/* C7E54 800C7254 154B0005 */  bne        $t2, $t3, .L800C726C
/* C7E58 800C7258 00000000 */   nop
/* C7E5C 800C725C 952C001E */  lhu        $t4, 0x1e($t1)
/* C7E60 800C7260 97AD0060 */  lhu        $t5, 0x60($sp)
/* C7E64 800C7264 118D001B */  beq        $t4, $t5, .L800C72D4
/* C7E68 800C7268 00000000 */   nop
.L800C726C:
/* C7E6C 800C726C 8FA40068 */  lw         $a0, 0x68($sp)
/* C7E70 800C7270 0C031C0B */  jal        func_800C702C
/* C7E74 800C7274 8FA50018 */   lw        $a1, 0x18($sp)
/* C7E78 800C7278 AFA2001C */  sw         $v0, 0x1c($sp)
/* C7E7C 800C727C 8FAF001C */  lw         $t7, 0x1c($sp)
/* C7E80 800C7280 2401000A */  addiu      $at, $zero, 0xa
/* C7E84 800C7284 15E1000E */  bne        $t7, $at, .L800C72C0
/* C7E88 800C7288 00000000 */   nop
/* C7E8C 800C728C 8FA40068 */  lw         $a0, 0x68($sp)
/* C7E90 800C7290 8FA50018 */  lw         $a1, 0x18($sp)
/* C7E94 800C7294 0C031B05 */  jal        func_800C6C14
/* C7E98 800C7298 27A60020 */   addiu     $a2, $sp, 0x20
/* C7E9C 800C729C AFA2001C */  sw         $v0, 0x1c($sp)
/* C7EA0 800C72A0 8FAE001C */  lw         $t6, 0x1c($sp)
/* C7EA4 800C72A4 11C00003 */  beqz       $t6, .L800C72B4
/* C7EA8 800C72A8 00000000 */   nop
/* C7EAC 800C72AC 10000058 */  b          .L800C7410
/* C7EB0 800C72B0 01C01025 */   or        $v0, $t6, $zero
.L800C72B4:
/* C7EB4 800C72B4 27B80020 */  addiu      $t8, $sp, 0x20
/* C7EB8 800C72B8 10000006 */  b          .L800C72D4
/* C7EBC 800C72BC AFB80018 */   sw        $t8, 0x18($sp)
.L800C72C0:
/* C7EC0 800C72C0 8FB9001C */  lw         $t9, 0x1c($sp)
/* C7EC4 800C72C4 13200003 */  beqz       $t9, .L800C72D4
/* C7EC8 800C72C8 00000000 */   nop
/* C7ECC 800C72CC 10000050 */  b          .L800C7410
/* C7ED0 800C72D0 03201025 */   or        $v0, $t9, $zero
.L800C72D4:
/* C7ED4 800C72D4 8FA80018 */  lw         $t0, 0x18($sp)
/* C7ED8 800C72D8 950A0018 */  lhu        $t2, 0x18($t0)
/* C7EDC 800C72DC 314B0001 */  andi       $t3, $t2, 1
/* C7EE0 800C72E0 15600013 */  bnez       $t3, .L800C7330
/* C7EE4 800C72E4 00000000 */   nop
/* C7EE8 800C72E8 8FA40068 */  lw         $a0, 0x68($sp)
/* C7EEC 800C72EC 01002825 */  or         $a1, $t0, $zero
/* C7EF0 800C72F0 0C031B05 */  jal        func_800C6C14
/* C7EF4 800C72F4 27A60020 */   addiu     $a2, $sp, 0x20
/* C7EF8 800C72F8 AFA2001C */  sw         $v0, 0x1c($sp)
/* C7EFC 800C72FC 8FA9001C */  lw         $t1, 0x1c($sp)
/* C7F00 800C7300 11200003 */  beqz       $t1, .L800C7310
/* C7F04 800C7304 00000000 */   nop
/* C7F08 800C7308 10000041 */  b          .L800C7410
/* C7F0C 800C730C 01201025 */   or        $v0, $t1, $zero
.L800C7310:
/* C7F10 800C7310 27AC0020 */  addiu      $t4, $sp, 0x20
/* C7F14 800C7314 AFAC0018 */  sw         $t4, 0x18($sp)
/* C7F18 800C7318 958D0018 */  lhu        $t5, 0x18($t4)
/* C7F1C 800C731C 31AF0001 */  andi       $t7, $t5, 1
/* C7F20 800C7320 15E00003 */  bnez       $t7, .L800C7330
/* C7F24 800C7324 00000000 */   nop
/* C7F28 800C7328 10000039 */  b          .L800C7410
/* C7F2C 800C732C 2402000B */   addiu     $v0, $zero, 0xb
.L800C7330:
/* C7F30 800C7330 AFA00064 */  sw         $zero, 0x64($sp)
.L800C7334:
/* C7F34 800C7334 8FAE0018 */  lw         $t6, 0x18($sp)
/* C7F38 800C7338 8FB80064 */  lw         $t8, 0x64($sp)
/* C7F3C 800C733C 8FAB0068 */  lw         $t3, 0x68($sp)
/* C7F40 800C7340 01D8C821 */  addu       $t9, $t6, $t8
/* C7F44 800C7344 932A0000 */  lbu        $t2, ($t9)
/* C7F48 800C7348 01784021 */  addu       $t0, $t3, $t8
/* C7F4C 800C734C A10A000C */  sb         $t2, 0xc($t0)
/* C7F50 800C7350 8FA90064 */  lw         $t1, 0x64($sp)
/* C7F54 800C7354 252C0001 */  addiu      $t4, $t1, 1
/* C7F58 800C7358 29810020 */  slti       $at, $t4, 0x20
/* C7F5C 800C735C 1420FFF5 */  bnez       $at, .L800C7334
/* C7F60 800C7360 AFAC0064 */   sw        $t4, 0x64($sp)
/* C7F64 800C7364 8FAD0018 */  lw         $t5, 0x18($sp)
/* C7F68 800C7368 8FAE0068 */  lw         $t6, 0x68($sp)
/* C7F6C 800C736C 24060007 */  addiu      $a2, $zero, 7
/* C7F70 800C7370 91AF001B */  lbu        $t7, 0x1b($t5)
/* C7F74 800C7374 240D0010 */  addiu      $t5, $zero, 0x10
/* C7F78 800C7378 ADCF004C */  sw         $t7, 0x4c($t6)
/* C7F7C 800C737C 8FB90018 */  lw         $t9, 0x18($sp)
/* C7F80 800C7380 8FB80068 */  lw         $t8, 0x68($sp)
/* C7F84 800C7384 240E0008 */  addiu      $t6, $zero, 8
/* C7F88 800C7388 932B001A */  lbu        $t3, 0x1a($t9)
/* C7F8C 800C738C A30B0064 */  sb         $t3, 0x64($t8)
/* C7F90 800C7390 8FAA0068 */  lw         $t2, 0x68($sp)
/* C7F94 800C7394 91480064 */  lbu        $t0, 0x64($t2)
/* C7F98 800C7398 00084840 */  sll        $t1, $t0, 1
/* C7F9C 800C739C 252C0003 */  addiu      $t4, $t1, 3
/* C7FA0 800C73A0 AD4C0060 */  sw         $t4, 0x60($t2)
/* C7FA4 800C73A4 8FAF0068 */  lw         $t7, 0x68($sp)
/* C7FA8 800C73A8 ADED0050 */  sw         $t5, 0x50($t7)
/* C7FAC 800C73AC 8FB90068 */  lw         $t9, 0x68($sp)
/* C7FB0 800C73B0 AF2E0054 */  sw         $t6, 0x54($t9)
/* C7FB4 800C73B4 8FAB0068 */  lw         $t3, 0x68($sp)
/* C7FB8 800C73B8 91780064 */  lbu        $t8, 0x64($t3)
/* C7FBC 800C73BC 001840C0 */  sll        $t0, $t8, 3
/* C7FC0 800C73C0 25090008 */  addiu      $t1, $t0, 8
/* C7FC4 800C73C4 AD690058 */  sw         $t1, 0x58($t3)
/* C7FC8 800C73C8 8FAC0068 */  lw         $t4, 0x68($sp)
/* C7FCC 800C73CC 918D0064 */  lbu        $t5, 0x64($t4)
/* C7FD0 800C73D0 8D8A0058 */  lw         $t2, 0x58($t4)
/* C7FD4 800C73D4 000D78C0 */  sll        $t7, $t5, 3
/* C7FD8 800C73D8 014F7021 */  addu       $t6, $t2, $t7
/* C7FDC 800C73DC AD8E005C */  sw         $t6, 0x5c($t4)
/* C7FE0 800C73E0 8FB90068 */  lw         $t9, 0x68($sp)
/* C7FE4 800C73E4 8F240004 */  lw         $a0, 4($t9)
/* C7FE8 800C73E8 8F250008 */  lw         $a1, 8($t9)
/* C7FEC 800C73EC 0C034C10 */  jal        func_800D3040
/* C7FF0 800C73F0 2727002C */   addiu     $a3, $t9, 0x2c
/* C7FF4 800C73F4 AFA2001C */  sw         $v0, 0x1c($sp)
/* C7FF8 800C73F8 8FB8001C */  lw         $t8, 0x1c($sp)
/* C7FFC 800C73FC 13000003 */  beqz       $t8, .L800C740C
/* C8000 800C7400 00000000 */   nop
/* C8004 800C7404 10000002 */  b          .L800C7410
/* C8008 800C7408 03001025 */   or        $v0, $t8, $zero
.L800C740C:
/* C800C 800C740C 00001025 */  or         $v0, $zero, $zero
.L800C7410:
/* C8010 800C7410 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8014 800C7414 27BD0068 */  addiu      $sp, $sp, 0x68
/* C8018 800C7418 03E00008 */  jr         $ra
/* C801C 800C741C 00000000 */   nop

glabel func_800C7420
/* C8020 800C7420 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C8024 800C7424 AFA40040 */  sw         $a0, 0x40($sp)
/* C8028 800C7428 8FAE0040 */  lw         $t6, 0x40($sp)
/* C802C 800C742C AFBF0014 */  sw         $ra, 0x14($sp)
/* C8030 800C7430 91CF0065 */  lbu        $t7, 0x65($t6)
/* C8034 800C7434 11E0000A */  beqz       $t7, .L800C7460
/* C8038 800C7438 00000000 */   nop
/* C803C 800C743C A1C00065 */  sb         $zero, 0x65($t6)
/* C8040 800C7440 0C031E0F */  jal        func_800C783C
/* C8044 800C7444 8FA40040 */   lw        $a0, 0x40($sp)
/* C8048 800C7448 AFA20018 */  sw         $v0, 0x18($sp)
/* C804C 800C744C 8FB80018 */  lw         $t8, 0x18($sp)
/* C8050 800C7450 13000003 */  beqz       $t8, .L800C7460
/* C8054 800C7454 00000000 */   nop
/* C8058 800C7458 1000002C */  b          .L800C750C
/* C805C 800C745C 03001025 */   or        $v0, $t8, $zero
.L800C7460:
/* C8060 800C7460 8FB90040 */  lw         $t9, 0x40($sp)
/* C8064 800C7464 24060001 */  addiu      $a2, $zero, 1
/* C8068 800C7468 27A7001C */  addiu      $a3, $sp, 0x1c
/* C806C 800C746C 8F240004 */  lw         $a0, 4($t9)
/* C8070 800C7470 0C034C10 */  jal        func_800D3040
/* C8074 800C7474 8F250008 */   lw        $a1, 8($t9)
/* C8078 800C7478 AFA20018 */  sw         $v0, 0x18($sp)
/* C807C 800C747C 8FA80018 */  lw         $t0, 0x18($sp)
/* C8080 800C7480 11000011 */  beqz       $t0, .L800C74C8
/* C8084 800C7484 24010002 */   addiu     $at, $zero, 2
/* C8088 800C7488 11010003 */  beq        $t0, $at, .L800C7498
/* C808C 800C748C 00000000 */   nop
/* C8090 800C7490 1000001E */  b          .L800C750C
/* C8094 800C7494 01001025 */   or        $v0, $t0, $zero
.L800C7498:
/* C8098 800C7498 8FA90040 */  lw         $t1, 0x40($sp)
/* C809C 800C749C 24060001 */  addiu      $a2, $zero, 1
/* C80A0 800C74A0 27A7001C */  addiu      $a3, $sp, 0x1c
/* C80A4 800C74A4 8D240004 */  lw         $a0, 4($t1)
/* C80A8 800C74A8 0C034C10 */  jal        func_800D3040
/* C80AC 800C74AC 8D250008 */   lw        $a1, 8($t1)
/* C80B0 800C74B0 AFA20018 */  sw         $v0, 0x18($sp)
/* C80B4 800C74B4 8FAA0018 */  lw         $t2, 0x18($sp)
/* C80B8 800C74B8 11400003 */  beqz       $t2, .L800C74C8
/* C80BC 800C74BC 00000000 */   nop
/* C80C0 800C74C0 10000012 */  b          .L800C750C
/* C80C4 800C74C4 01401025 */   or        $v0, $t2, $zero
.L800C74C8:
/* C80C8 800C74C8 AFA0003C */  sw         $zero, 0x3c($sp)
.L800C74CC:
/* C80CC 800C74CC 8FAB003C */  lw         $t3, 0x3c($sp)
/* C80D0 800C74D0 8FAD0040 */  lw         $t5, 0x40($sp)
/* C80D4 800C74D4 03AB6021 */  addu       $t4, $sp, $t3
/* C80D8 800C74D8 01AB7821 */  addu       $t7, $t5, $t3
/* C80DC 800C74DC 91EE000C */  lbu        $t6, 0xc($t7)
/* C80E0 800C74E0 918C001C */  lbu        $t4, 0x1c($t4)
/* C80E4 800C74E4 118E0003 */  beq        $t4, $t6, .L800C74F4
/* C80E8 800C74E8 00000000 */   nop
/* C80EC 800C74EC 10000007 */  b          .L800C750C
/* C80F0 800C74F0 24020002 */   addiu     $v0, $zero, 2
.L800C74F4:
/* C80F4 800C74F4 8FB8003C */  lw         $t8, 0x3c($sp)
/* C80F8 800C74F8 27190001 */  addiu      $t9, $t8, 1
/* C80FC 800C74FC 2B210020 */  slti       $at, $t9, 0x20
/* C8100 800C7500 1420FFF2 */  bnez       $at, .L800C74CC
/* C8104 800C7504 AFB9003C */   sw        $t9, 0x3c($sp)
/* C8108 800C7508 00001025 */  or         $v0, $zero, $zero
.L800C750C:
/* C810C 800C750C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8110 800C7510 27BD0040 */  addiu      $sp, $sp, 0x40
/* C8114 800C7514 03E00008 */  jr         $ra
/* C8118 800C7518 00000000 */   nop

glabel func_800C751C
/* C811C 800C751C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C8120 800C7520 AFA40038 */  sw         $a0, 0x38($sp)
/* C8124 800C7524 8FAE0038 */  lw         $t6, 0x38($sp)
/* C8128 800C7528 AFBF001C */  sw         $ra, 0x1c($sp)
/* C812C 800C752C AFA5003C */  sw         $a1, 0x3c($sp)
/* C8130 800C7530 AFA60040 */  sw         $a2, 0x40($sp)
/* C8134 800C7534 AFA70044 */  sw         $a3, 0x44($sp)
/* C8138 800C7538 91CF0065 */  lbu        $t7, 0x65($t6)
/* C813C 800C753C 11E0000A */  beqz       $t7, .L800C7568
/* C8140 800C7540 00000000 */   nop
/* C8144 800C7544 A1C00065 */  sb         $zero, 0x65($t6)
/* C8148 800C7548 0C031E0F */  jal        func_800C783C
/* C814C 800C754C 8FA40038 */   lw        $a0, 0x38($sp)
/* C8150 800C7550 AFA2002C */  sw         $v0, 0x2c($sp)
/* C8154 800C7554 8FB8002C */  lw         $t8, 0x2c($sp)
/* C8158 800C7558 13000003 */  beqz       $t8, .L800C7568
/* C815C 800C755C 00000000 */   nop
/* C8160 800C7560 100000B2 */  b          .L800C782C
/* C8164 800C7564 03001025 */   or        $v0, $t8, $zero
.L800C7568:
/* C8168 800C7568 93B90047 */  lbu        $t9, 0x47($sp)
/* C816C 800C756C 1B200004 */  blez       $t9, .L800C7580
/* C8170 800C7570 00000000 */   nop
/* C8174 800C7574 24080001 */  addiu      $t0, $zero, 1
/* C8178 800C7578 10000004 */  b          .L800C758C
/* C817C 800C757C AFA80028 */   sw        $t0, 0x28($sp)
.L800C7580:
/* C8180 800C7580 8FA90038 */  lw         $t1, 0x38($sp)
/* C8184 800C7584 8D2A0060 */  lw         $t2, 0x60($t1)
/* C8188 800C7588 AFAA0028 */  sw         $t2, 0x28($sp)
.L800C758C:
/* C818C 800C758C 93AB0043 */  lbu        $t3, 0x43($sp)
/* C8190 800C7590 24010001 */  addiu      $at, $zero, 1
/* C8194 800C7594 1561000C */  bne        $t3, $at, .L800C75C8
/* C8198 800C7598 00000000 */   nop
/* C819C 800C759C 8FAD0028 */  lw         $t5, 0x28($sp)
/* C81A0 800C75A0 8FAC003C */  lw         $t4, 0x3c($sp)
/* C81A4 800C75A4 000D2823 */  negu       $a1, $t5
/* C81A8 800C75A8 00057040 */  sll        $t6, $a1, 1
/* C81AC 800C75AC 01C02825 */  or         $a1, $t6, $zero
/* C81B0 800C75B0 000D7840 */  sll        $t7, $t5, 1
/* C81B4 800C75B4 24A50100 */  addiu      $a1, $a1, 0x100
/* C81B8 800C75B8 0C031AD4 */  jal        func_800C6B50
/* C81BC 800C75BC 018F2021 */   addu      $a0, $t4, $t7
/* C81C0 800C75C0 8FB8003C */  lw         $t8, 0x3c($sp)
/* C81C4 800C75C4 A3020001 */  sb         $v0, 1($t8)
.L800C75C8:
/* C81C8 800C75C8 AFA00030 */  sw         $zero, 0x30($sp)
.L800C75CC:
/* C81CC 800C75CC 8FA80030 */  lw         $t0, 0x30($sp)
/* C81D0 800C75D0 8FB9003C */  lw         $t9, 0x3c($sp)
/* C81D4 800C75D4 93AB0043 */  lbu        $t3, 0x43($sp)
/* C81D8 800C75D8 00084940 */  sll        $t1, $t0, 5
/* C81DC 800C75DC 24010001 */  addiu      $at, $zero, 1
/* C81E0 800C75E0 03295021 */  addu       $t2, $t9, $t1
/* C81E4 800C75E4 1561001B */  bne        $t3, $at, .L800C7654
/* C81E8 800C75E8 AFAA0024 */   sw        $t2, 0x24($sp)
/* C81EC 800C75EC 8FAC0038 */  lw         $t4, 0x38($sp)
/* C81F0 800C75F0 93AD0047 */  lbu        $t5, 0x47($sp)
/* C81F4 800C75F4 01403825 */  or         $a3, $t2, $zero
/* C81F8 800C75F8 8D8F0054 */  lw         $t7, 0x54($t4)
/* C81FC 800C75FC 000D70C0 */  sll        $t6, $t5, 3
/* C8200 800C7600 8D840004 */  lw         $a0, 4($t4)
/* C8204 800C7604 8D850008 */  lw         $a1, 8($t4)
/* C8208 800C7608 01EEC021 */  addu       $t8, $t7, $t6
/* C820C 800C760C 03083021 */  addu       $a2, $t8, $t0
/* C8210 800C7610 0C034668 */  jal        func_800D19A0
/* C8214 800C7614 AFA00010 */   sw        $zero, 0x10($sp)
/* C8218 800C7618 8FB90038 */  lw         $t9, 0x38($sp)
/* C821C 800C761C 93AB0047 */  lbu        $t3, 0x47($sp)
/* C8220 800C7620 AFA2002C */  sw         $v0, 0x2c($sp)
/* C8224 800C7624 8F290058 */  lw         $t1, 0x58($t9)
/* C8228 800C7628 8FAF0030 */  lw         $t7, 0x30($sp)
/* C822C 800C762C 000B60C0 */  sll        $t4, $t3, 3
/* C8230 800C7630 8F250008 */  lw         $a1, 8($t9)
/* C8234 800C7634 8F240004 */  lw         $a0, 4($t9)
/* C8238 800C7638 012C6821 */  addu       $t5, $t1, $t4
/* C823C 800C763C AFA00010 */  sw         $zero, 0x10($sp)
/* C8240 800C7640 8FA70024 */  lw         $a3, 0x24($sp)
/* C8244 800C7644 0C034668 */  jal        func_800D19A0
/* C8248 800C7648 01AF3021 */   addu      $a2, $t5, $t7
/* C824C 800C764C 1000000D */  b          .L800C7684
/* C8250 800C7650 AFA2002C */   sw        $v0, 0x2c($sp)
.L800C7654:
/* C8254 800C7654 8FAE0038 */  lw         $t6, 0x38($sp)
/* C8258 800C7658 93A80047 */  lbu        $t0, 0x47($sp)
/* C825C 800C765C 8FAB0030 */  lw         $t3, 0x30($sp)
/* C8260 800C7660 8DD80054 */  lw         $t8, 0x54($t6)
/* C8264 800C7664 000850C0 */  sll        $t2, $t0, 3
/* C8268 800C7668 8FA70024 */  lw         $a3, 0x24($sp)
/* C826C 800C766C 030AC821 */  addu       $t9, $t8, $t2
/* C8270 800C7670 8DC40004 */  lw         $a0, 4($t6)
/* C8274 800C7674 8DC50008 */  lw         $a1, 8($t6)
/* C8278 800C7678 0C034C10 */  jal        func_800D3040
/* C827C 800C767C 032B3021 */   addu      $a2, $t9, $t3
/* C8280 800C7680 AFA2002C */  sw         $v0, 0x2c($sp)
.L800C7684:
/* C8284 800C7684 8FA9002C */  lw         $t1, 0x2c($sp)
/* C8288 800C7688 11200003 */  beqz       $t1, .L800C7698
/* C828C 800C768C 00000000 */   nop
/* C8290 800C7690 10000066 */  b          .L800C782C
/* C8294 800C7694 01201025 */   or        $v0, $t1, $zero
.L800C7698:
/* C8298 800C7698 8FAC0030 */  lw         $t4, 0x30($sp)
/* C829C 800C769C 258D0001 */  addiu      $t5, $t4, 1
/* C82A0 800C76A0 29A10008 */  slti       $at, $t5, 8
/* C82A4 800C76A4 1420FFC9 */  bnez       $at, .L800C75CC
/* C82A8 800C76A8 AFAD0030 */   sw        $t5, 0x30($sp)
/* C82AC 800C76AC 93AF0043 */  lbu        $t7, 0x43($sp)
/* C82B0 800C76B0 15E0005D */  bnez       $t7, .L800C7828
/* C82B4 800C76B4 00000000 */   nop
/* C82B8 800C76B8 8FA80028 */  lw         $t0, 0x28($sp)
/* C82BC 800C76BC 8FAE003C */  lw         $t6, 0x3c($sp)
/* C82C0 800C76C0 00082823 */  negu       $a1, $t0
/* C82C4 800C76C4 00055040 */  sll        $t2, $a1, 1
/* C82C8 800C76C8 01402825 */  or         $a1, $t2, $zero
/* C82CC 800C76CC 0008C040 */  sll        $t8, $t0, 1
/* C82D0 800C76D0 24A50100 */  addiu      $a1, $a1, 0x100
/* C82D4 800C76D4 0C031AD4 */  jal        func_800C6B50
/* C82D8 800C76D8 01D82021 */   addu      $a0, $t6, $t8
/* C82DC 800C76DC 8FB9003C */  lw         $t9, 0x3c($sp)
/* C82E0 800C76E0 A3A20037 */  sb         $v0, 0x37($sp)
/* C82E4 800C76E4 93A90037 */  lbu        $t1, 0x37($sp)
/* C82E8 800C76E8 932B0001 */  lbu        $t3, 1($t9)
/* C82EC 800C76EC 11690037 */  beq        $t3, $t1, .L800C77CC
/* C82F0 800C76F0 00000000 */   nop
/* C82F4 800C76F4 AFA00030 */  sw         $zero, 0x30($sp)
.L800C76F8:
/* C82F8 800C76F8 8FAD0030 */  lw         $t5, 0x30($sp)
/* C82FC 800C76FC 8FAC003C */  lw         $t4, 0x3c($sp)
/* C8300 800C7700 8FB80038 */  lw         $t8, 0x38($sp)
/* C8304 800C7704 000D7940 */  sll        $t7, $t5, 5
/* C8308 800C7708 018F7021 */  addu       $t6, $t4, $t7
/* C830C 800C770C 93AA0047 */  lbu        $t2, 0x47($sp)
/* C8310 800C7710 AFAE0024 */  sw         $t6, 0x24($sp)
/* C8314 800C7714 8F080058 */  lw         $t0, 0x58($t8)
/* C8318 800C7718 000AC8C0 */  sll        $t9, $t2, 3
/* C831C 800C771C 01C03825 */  or         $a3, $t6, $zero
/* C8320 800C7720 01195821 */  addu       $t3, $t0, $t9
/* C8324 800C7724 016D3021 */  addu       $a2, $t3, $t5
/* C8328 800C7728 8F050008 */  lw         $a1, 8($t8)
/* C832C 800C772C 0C034C10 */  jal        func_800D3040
/* C8330 800C7730 8F040004 */   lw        $a0, 4($t8)
/* C8334 800C7734 8FA90030 */  lw         $t1, 0x30($sp)
/* C8338 800C7738 AFA2002C */  sw         $v0, 0x2c($sp)
/* C833C 800C773C 252C0001 */  addiu      $t4, $t1, 1
/* C8340 800C7740 29810008 */  slti       $at, $t4, 8
/* C8344 800C7744 1420FFEC */  bnez       $at, .L800C76F8
/* C8348 800C7748 AFAC0030 */   sw        $t4, 0x30($sp)
/* C834C 800C774C 8FAF003C */  lw         $t7, 0x3c($sp)
/* C8350 800C7750 93AA0037 */  lbu        $t2, 0x37($sp)
/* C8354 800C7754 91F80001 */  lbu        $t8, 1($t7)
/* C8358 800C7758 130A0003 */  beq        $t8, $t2, .L800C7768
/* C835C 800C775C 00000000 */   nop
/* C8360 800C7760 10000032 */  b          .L800C782C
/* C8364 800C7764 24020003 */   addiu     $v0, $zero, 3
.L800C7768:
/* C8368 800C7768 AFA00030 */  sw         $zero, 0x30($sp)
.L800C776C:
/* C836C 800C776C 8FB90030 */  lw         $t9, 0x30($sp)
/* C8370 800C7770 8FA8003C */  lw         $t0, 0x3c($sp)
/* C8374 800C7774 8FAE0038 */  lw         $t6, 0x38($sp)
/* C8378 800C7778 00195940 */  sll        $t3, $t9, 5
/* C837C 800C777C 010B6821 */  addu       $t5, $t0, $t3
/* C8380 800C7780 93AC0047 */  lbu        $t4, 0x47($sp)
/* C8384 800C7784 AFAD0024 */  sw         $t5, 0x24($sp)
/* C8388 800C7788 8DC90054 */  lw         $t1, 0x54($t6)
/* C838C 800C778C 000C78C0 */  sll        $t7, $t4, 3
/* C8390 800C7790 8DC50008 */  lw         $a1, 8($t6)
/* C8394 800C7794 8DC40004 */  lw         $a0, 4($t6)
/* C8398 800C7798 012FC021 */  addu       $t8, $t1, $t7
/* C839C 800C779C AFA00010 */  sw         $zero, 0x10($sp)
/* C83A0 800C77A0 01A03825 */  or         $a3, $t5, $zero
/* C83A4 800C77A4 0C034668 */  jal        func_800D19A0
/* C83A8 800C77A8 03193021 */   addu      $a2, $t8, $t9
/* C83AC 800C77AC 8FAA0030 */  lw         $t2, 0x30($sp)
/* C83B0 800C77B0 AFA2002C */  sw         $v0, 0x2c($sp)
/* C83B4 800C77B4 25480001 */  addiu      $t0, $t2, 1
/* C83B8 800C77B8 29010008 */  slti       $at, $t0, 8
/* C83BC 800C77BC 1420FFEB */  bnez       $at, .L800C776C
/* C83C0 800C77C0 AFA80030 */   sw        $t0, 0x30($sp)
/* C83C4 800C77C4 10000018 */  b          .L800C7828
/* C83C8 800C77C8 00000000 */   nop
.L800C77CC:
/* C83CC 800C77CC AFA00030 */  sw         $zero, 0x30($sp)
.L800C77D0:
/* C83D0 800C77D0 8FAE0030 */  lw         $t6, 0x30($sp)
/* C83D4 800C77D4 8FAB003C */  lw         $t3, 0x3c($sp)
/* C83D8 800C77D8 8FAF0038 */  lw         $t7, 0x38($sp)
/* C83DC 800C77DC 000E6140 */  sll        $t4, $t6, 5
/* C83E0 800C77E0 016C4821 */  addu       $t1, $t3, $t4
/* C83E4 800C77E4 93B90047 */  lbu        $t9, 0x47($sp)
/* C83E8 800C77E8 AFA90024 */  sw         $t1, 0x24($sp)
/* C83EC 800C77EC 8DF80058 */  lw         $t8, 0x58($t7)
/* C83F0 800C77F0 001968C0 */  sll        $t5, $t9, 3
/* C83F4 800C77F4 8DE50008 */  lw         $a1, 8($t7)
/* C83F8 800C77F8 8DE40004 */  lw         $a0, 4($t7)
/* C83FC 800C77FC 030D5021 */  addu       $t2, $t8, $t5
/* C8400 800C7800 AFA00010 */  sw         $zero, 0x10($sp)
/* C8404 800C7804 01203825 */  or         $a3, $t1, $zero
/* C8408 800C7808 0C034668 */  jal        func_800D19A0
/* C840C 800C780C 014E3021 */   addu      $a2, $t2, $t6
/* C8410 800C7810 8FA80030 */  lw         $t0, 0x30($sp)
/* C8414 800C7814 AFA2002C */  sw         $v0, 0x2c($sp)
/* C8418 800C7818 250B0001 */  addiu      $t3, $t0, 1
/* C841C 800C781C 29610008 */  slti       $at, $t3, 8
/* C8420 800C7820 1420FFEB */  bnez       $at, .L800C77D0
/* C8424 800C7824 AFAB0030 */   sw        $t3, 0x30($sp)
.L800C7828:
/* C8428 800C7828 00001025 */  or         $v0, $zero, $zero
.L800C782C:
/* C842C 800C782C 8FBF001C */  lw         $ra, 0x1c($sp)
/* C8430 800C7830 27BD0038 */  addiu      $sp, $sp, 0x38
/* C8434 800C7834 03E00008 */  jr         $ra
/* C8438 800C7838 00000000 */   nop

glabel func_800C783C
/* C843C 800C783C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C8440 800C7840 AFBF001C */  sw         $ra, 0x1c($sp)
/* C8444 800C7844 AFA40048 */  sw         $a0, 0x48($sp)
/* C8448 800C7848 AFA00020 */  sw         $zero, 0x20($sp)
/* C844C 800C784C AFA00024 */  sw         $zero, 0x24($sp)
.L800C7850:
/* C8450 800C7850 8FAE0048 */  lw         $t6, 0x48($sp)
/* C8454 800C7854 8FB80024 */  lw         $t8, 0x24($sp)
/* C8458 800C7858 91CF0065 */  lbu        $t7, 0x65($t6)
/* C845C 800C785C 03B8C821 */  addu       $t9, $sp, $t8
/* C8460 800C7860 A32F0028 */  sb         $t7, 0x28($t9)
/* C8464 800C7864 8FA80024 */  lw         $t0, 0x24($sp)
/* C8468 800C7868 25090001 */  addiu      $t1, $t0, 1
/* C846C 800C786C 29210020 */  slti       $at, $t1, 0x20
/* C8470 800C7870 1420FFF7 */  bnez       $at, .L800C7850
/* C8474 800C7874 AFA90024 */   sw        $t1, 0x24($sp)
/* C8478 800C7878 8FAA0048 */  lw         $t2, 0x48($sp)
/* C847C 800C787C 24060400 */  addiu      $a2, $zero, 0x400
/* C8480 800C7880 27A70028 */  addiu      $a3, $sp, 0x28
/* C8484 800C7884 8D440004 */  lw         $a0, 4($t2)
/* C8488 800C7888 8D450008 */  lw         $a1, 8($t2)
/* C848C 800C788C 0C034668 */  jal        func_800D19A0
/* C8490 800C7890 AFA00010 */   sw        $zero, 0x10($sp)
/* C8494 800C7894 8FBF001C */  lw         $ra, 0x1c($sp)
/* C8498 800C7898 AFA20020 */  sw         $v0, 0x20($sp)
/* C849C 800C789C 8FA20020 */  lw         $v0, 0x20($sp)
/* C84A0 800C78A0 03E00008 */  jr         $ra
/* C84A4 800C78A4 27BD0048 */   addiu     $sp, $sp, 0x48
/* C84A8 800C78A8 00000000 */  nop
/* C84AC 800C78AC 00000000 */  nop
