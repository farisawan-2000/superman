.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800998D0
/* 9A4D0 800998D0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 9A4D4 800998D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A4D8 800998D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 9A4DC 800998DC AFA00058 */  sw         $zero, 0x58($sp)
/* 9A4E0 800998E0 0C027C40 */  jal        func_8009F100
/* 9A4E4 800998E4 00000000 */   nop
/* 9A4E8 800998E8 00408025 */  or         $s0, $v0, $zero
/* 9A4EC 800998EC 3C012000 */  lui        $at, 0x2000
/* 9A4F0 800998F0 0C027C3C */  jal        func_8009F0F0
/* 9A4F4 800998F4 02012025 */   or        $a0, $s0, $at
/* 9A4F8 800998F8 3C040100 */  lui        $a0, 0x100
/* 9A4FC 800998FC 0C02D444 */  jal        func_800B5110
/* 9A500 80099900 34840800 */   ori       $a0, $a0, 0x800
/* 9A504 80099904 3C041FC0 */  lui        $a0, 0x1fc0
/* 9A508 80099908 348407FC */  ori        $a0, $a0, 0x7fc
/* 9A50C 8009990C 0C027ED4 */  jal        func_8009FB50
/* 9A510 80099910 27A5005C */   addiu     $a1, $sp, 0x5c
/* 9A514 80099914 10400007 */  beqz       $v0, .L80099934
/* 9A518 80099918 00000000 */   nop
.L8009991C:
/* 9A51C 8009991C 3C041FC0 */  lui        $a0, 0x1fc0
/* 9A520 80099920 348407FC */  ori        $a0, $a0, 0x7fc
/* 9A524 80099924 0C027ED4 */  jal        func_8009FB50
/* 9A528 80099928 27A5005C */   addiu     $a1, $sp, 0x5c
/* 9A52C 8009992C 1440FFFB */  bnez       $v0, .L8009991C
/* 9A530 80099930 00000000 */   nop
.L80099934:
/* 9A534 80099934 8FA5005C */  lw         $a1, 0x5c($sp)
/* 9A538 80099938 3C041FC0 */  lui        $a0, 0x1fc0
/* 9A53C 8009993C 348407FC */  ori        $a0, $a0, 0x7fc
/* 9A540 80099940 34AE0008 */  ori        $t6, $a1, 8
/* 9A544 80099944 0C02E2C4 */  jal        func_800B8B10
/* 9A548 80099948 01C02825 */   or        $a1, $t6, $zero
/* 9A54C 8009994C 10400009 */  beqz       $v0, .L80099974
/* 9A550 80099950 00000000 */   nop
.L80099954:
/* 9A554 80099954 8FA5005C */  lw         $a1, 0x5c($sp)
/* 9A558 80099958 3C041FC0 */  lui        $a0, 0x1fc0
/* 9A55C 8009995C 348407FC */  ori        $a0, $a0, 0x7fc
/* 9A560 80099960 34AF0008 */  ori        $t7, $a1, 8
/* 9A564 80099964 0C02E2C4 */  jal        func_800B8B10
/* 9A568 80099968 01E02825 */   or        $a1, $t7, $zero
/* 9A56C 8009996C 1440FFF9 */  bnez       $v0, .L80099954
/* 9A570 80099970 00000000 */   nop
.L80099974:
/* 9A574 80099974 3C198009 */  lui        $t9, %hi(func_80097AA0)
/* 9A578 80099978 27397AA0 */  addiu      $t9, $t9, %lo(func_80097AA0)
/* 9A57C 8009997C 8F210000 */  lw         $at, ($t9)
/* 9A580 80099980 3C188000 */  lui        $t8, 0x8000
/* 9A584 80099984 AF010000 */  sw         $at, ($t8)
/* 9A588 80099988 8F2A0004 */  lw         $t2, 4($t9)
/* 9A58C 8009998C AF0A0004 */  sw         $t2, 4($t8)
/* 9A590 80099990 8F210008 */  lw         $at, 8($t9)
/* 9A594 80099994 AF010008 */  sw         $at, 8($t8)
/* 9A598 80099998 8F2A000C */  lw         $t2, 0xc($t9)
/* 9A59C 8009999C AF0A000C */  sw         $t2, 0xc($t8)
/* 9A5A0 800999A0 3C0C8009 */  lui        $t4, %hi(func_80097AA0)
/* 9A5A4 800999A4 258C7AA0 */  addiu      $t4, $t4, %lo(func_80097AA0)
/* 9A5A8 800999A8 8D810000 */  lw         $at, ($t4)
/* 9A5AC 800999AC 3C0B8000 */  lui        $t3, 0x8000
/* 9A5B0 800999B0 356B0080 */  ori        $t3, $t3, 0x80
/* 9A5B4 800999B4 AD610000 */  sw         $at, ($t3)
/* 9A5B8 800999B8 8D8F0004 */  lw         $t7, 4($t4)
/* 9A5BC 800999BC AD6F0004 */  sw         $t7, 4($t3)
/* 9A5C0 800999C0 8D810008 */  lw         $at, 8($t4)
/* 9A5C4 800999C4 AD610008 */  sw         $at, 8($t3)
/* 9A5C8 800999C8 8D8F000C */  lw         $t7, 0xc($t4)
/* 9A5CC 800999CC AD6F000C */  sw         $t7, 0xc($t3)
/* 9A5D0 800999D0 3C088009 */  lui        $t0, %hi(func_80097AA0)
/* 9A5D4 800999D4 25087AA0 */  addiu      $t0, $t0, %lo(func_80097AA0)
/* 9A5D8 800999D8 8D010000 */  lw         $at, ($t0)
/* 9A5DC 800999DC 3C098000 */  lui        $t1, 0x8000
/* 9A5E0 800999E0 35290100 */  ori        $t1, $t1, 0x100
/* 9A5E4 800999E4 AD210000 */  sw         $at, ($t1)
/* 9A5E8 800999E8 8D0A0004 */  lw         $t2, 4($t0)
/* 9A5EC 800999EC AD2A0004 */  sw         $t2, 4($t1)
/* 9A5F0 800999F0 8D010008 */  lw         $at, 8($t0)
/* 9A5F4 800999F4 AD210008 */  sw         $at, 8($t1)
/* 9A5F8 800999F8 8D0A000C */  lw         $t2, 0xc($t0)
/* 9A5FC 800999FC AD2A000C */  sw         $t2, 0xc($t1)
/* 9A600 80099A00 3C0D8009 */  lui        $t5, %hi(func_80097AA0)
/* 9A604 80099A04 25AD7AA0 */  addiu      $t5, $t5, %lo(func_80097AA0)
/* 9A608 80099A08 8DA10000 */  lw         $at, ($t5)
/* 9A60C 80099A0C 3C0E8000 */  lui        $t6, 0x8000
/* 9A610 80099A10 35CE0180 */  ori        $t6, $t6, 0x180
/* 9A614 80099A14 ADC10000 */  sw         $at, ($t6)
/* 9A618 80099A18 8DAF0004 */  lw         $t7, 4($t5)
/* 9A61C 80099A1C ADCF0004 */  sw         $t7, 4($t6)
/* 9A620 80099A20 8DA10008 */  lw         $at, 8($t5)
/* 9A624 80099A24 ADC10008 */  sw         $at, 8($t6)
/* 9A628 80099A28 8DAF000C */  lw         $t7, 0xc($t5)
/* 9A62C 80099A2C ADCF000C */  sw         $t7, 0xc($t6)
/* 9A630 80099A30 3C048000 */  lui        $a0, 0x8000
/* 9A634 80099A34 0C027C44 */  jal        func_8009F110
/* 9A638 80099A38 24050190 */   addiu     $a1, $zero, 0x190
/* 9A63C 80099A3C 3C048000 */  lui        $a0, 0x8000
/* 9A640 80099A40 0C02B454 */  jal        func_800AD150
/* 9A644 80099A44 24050190 */   addiu     $a1, $zero, 0x190
/* 9A648 80099A48 0C02D9FC */  jal        func_800B67F0
/* 9A64C 80099A4C 00000000 */   nop
/* 9A650 80099A50 24040004 */  addiu      $a0, $zero, 4
/* 9A654 80099A54 0C026774 */  jal        func_80099DD0
/* 9A658 80099A58 27A50058 */   addiu     $a1, $sp, 0x58
/* 9A65C 80099A5C 8FB90058 */  lw         $t9, 0x58($sp)
/* 9A660 80099A60 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9A664 80099A64 0321C024 */  and        $t8, $t9, $at
/* 9A668 80099A68 AFB80058 */  sw         $t8, 0x58($sp)
/* 9A66C 80099A6C 8FA90058 */  lw         $t1, 0x58($sp)
/* 9A670 80099A70 11200007 */  beqz       $t1, .L80099A90
/* 9A674 80099A74 00000000 */   nop
/* 9A678 80099A78 8FA80058 */  lw         $t0, 0x58($sp)
/* 9A67C 80099A7C 3C01800D */  lui        $at, %hi(D_800CC294)
/* 9A680 80099A80 240A0000 */  addiu      $t2, $zero, 0
/* 9A684 80099A84 01005825 */  or         $t3, $t0, $zero
/* 9A688 80099A88 AC2BC294 */  sw         $t3, %lo(D_800CC294)($at)
/* 9A68C 80099A8C AC2AC290 */  sw         $t2, -0x3d70($at)
.L80099A90:
/* 9A690 80099A90 3C04800D */  lui        $a0, %hi(D_800CC290)
/* 9A694 80099A94 3C05800D */  lui        $a1, %hi(D_800CC294)
/* 9A698 80099A98 8CA5C294 */  lw         $a1, %lo(D_800CC294)($a1)
/* 9A69C 80099A9C 8C84C290 */  lw         $a0, %lo(D_800CC290)($a0)
/* 9A6A0 80099AA0 24060000 */  addiu      $a2, $zero, 0
/* 9A6A4 80099AA4 0C02681E */  jal        func_8009A078
/* 9A6A8 80099AA8 24070003 */   addiu     $a3, $zero, 3
/* 9A6AC 80099AAC AFA20020 */  sw         $v0, 0x20($sp)
/* 9A6B0 80099AB0 AFA30024 */  sw         $v1, 0x24($sp)
/* 9A6B4 80099AB4 8FA50024 */  lw         $a1, 0x24($sp)
/* 9A6B8 80099AB8 8FA40020 */  lw         $a0, 0x20($sp)
/* 9A6BC 80099ABC 24060000 */  addiu      $a2, $zero, 0
/* 9A6C0 80099AC0 0C0267CE */  jal        func_80099F38
/* 9A6C4 80099AC4 24070004 */   addiu     $a3, $zero, 4
/* 9A6C8 80099AC8 3C01800D */  lui        $at, %hi(D_800CC290)
/* 9A6CC 80099ACC AC22C290 */  sw         $v0, %lo(D_800CC290)($at)
/* 9A6D0 80099AD0 AC23C294 */  sw         $v1, -0x3d6c($at)
/* 9A6D4 80099AD4 3C0C8000 */  lui        $t4, %hi(D_8000030C)
/* 9A6D8 80099AD8 8D8C030C */  lw         $t4, %lo(D_8000030C)($t4)
/* 9A6DC 80099ADC 15800005 */  bnez       $t4, .L80099AF4
/* 9A6E0 80099AE0 00000000 */   nop
/* 9A6E4 80099AE4 3C048000 */  lui        $a0, %hi(D_8000031C)
/* 9A6E8 80099AE8 2484031C */  addiu      $a0, $a0, %lo(D_8000031C)
/* 9A6EC 80099AEC 0C026888 */  jal        func_8009A220
/* 9A6F0 80099AF0 24050040 */   addiu     $a1, $zero, 0x40
.L80099AF4:
/* 9A6F4 80099AF4 3C0E8000 */  lui        $t6, %hi(D_80000300)
/* 9A6F8 80099AF8 8DCE0300 */  lw         $t6, %lo(D_80000300)($t6)
/* 9A6FC 80099AFC 15C00006 */  bnez       $t6, .L80099B18
/* 9A700 80099B00 00000000 */   nop
/* 9A704 80099B04 3C0D02F5 */  lui        $t5, 0x2f5
/* 9A708 80099B08 35ADB2D2 */  ori        $t5, $t5, 0xb2d2
/* 9A70C 80099B0C 3C01800D */  lui        $at, %hi(D_800CC298)
/* 9A710 80099B10 1000000F */  b          .L80099B50
/* 9A714 80099B14 AC2DC298 */   sw        $t5, %lo(D_800CC298)($at)
.L80099B18:
/* 9A718 80099B18 3C0F8000 */  lui        $t7, %hi(D_80000300)
/* 9A71C 80099B1C 8DEF0300 */  lw         $t7, %lo(D_80000300)($t7)
/* 9A720 80099B20 24010002 */  addiu      $at, $zero, 2
/* 9A724 80099B24 15E10006 */  bne        $t7, $at, .L80099B40
/* 9A728 80099B28 00000000 */   nop
/* 9A72C 80099B2C 3C1902E6 */  lui        $t9, 0x2e6
/* 9A730 80099B30 3739025C */  ori        $t9, $t9, 0x25c
/* 9A734 80099B34 3C01800D */  lui        $at, %hi(D_800CC298)
/* 9A738 80099B38 10000005 */  b          .L80099B50
/* 9A73C 80099B3C AC39C298 */   sw        $t9, %lo(D_800CC298)($at)
.L80099B40:
/* 9A740 80099B40 3C1802E6 */  lui        $t8, 0x2e6
/* 9A744 80099B44 3718D354 */  ori        $t8, $t8, 0xd354
/* 9A748 80099B48 3C01800D */  lui        $at, %hi(D_800CC298)
/* 9A74C 80099B4C AC38C298 */  sw         $t8, %lo(D_800CC298)($at)
.L80099B50:
/* 9A750 80099B50 3C09801A */  lui        $t1, %hi(D_801A1BC0)
/* 9A754 80099B54 8D291BC0 */  lw         $t1, %lo(D_801A1BC0)($t1)
/* 9A758 80099B58 15200090 */  bnez       $t1, .L80099D9C
/* 9A75C 80099B5C 00000000 */   nop
/* 9A760 80099B60 3C08BFF0 */  lui        $t0, 0xbff0
/* 9A764 80099B64 35088004 */  ori        $t0, $t0, 0x8004
/* 9A768 80099B68 AFA80038 */  sw         $t0, 0x38($sp)
/* 9A76C 80099B6C 3C0ABFF0 */  lui        $t2, 0xbff0
/* 9A770 80099B70 AFAA003C */  sw         $t2, 0x3c($sp)
/* 9A774 80099B74 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9A778 80099B78 3C014B4D */  lui        $at, 0x4b4d
/* 9A77C 80099B7C 34214300 */  ori        $at, $at, 0x4300
/* 9A780 80099B80 8D6C0000 */  lw         $t4, ($t3)
/* 9A784 80099B84 11810003 */  beq        $t4, $at, .L80099B94
/* 9A788 80099B88 00000000 */   nop
/* 9A78C 80099B8C 10000085 */  b          .L80099DA4
/* 9A790 80099B90 00000000 */   nop
.L80099B94:
/* 9A794 80099B94 3C0E8009 */  lui        $t6, %hi(func_80097AB0)
/* 9A798 80099B98 25CE7AB0 */  addiu      $t6, $t6, %lo(func_80097AB0)
/* 9A79C 80099B9C AFAE0048 */  sw         $t6, 0x48($sp)
/* 9A7A0 80099BA0 3C0D8000 */  lui        $t5, 0x8000
/* 9A7A4 80099BA4 35AD0180 */  ori        $t5, $t5, 0x180
/* 9A7A8 80099BA8 AFAD0044 */  sw         $t5, 0x44($sp)
/* 9A7AC 80099BAC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9A7B0 80099BB0 8FB80044 */  lw         $t8, 0x44($sp)
/* 9A7B4 80099BB4 8DF90000 */  lw         $t9, ($t7)
/* 9A7B8 80099BB8 AF190000 */  sw         $t9, ($t8)
/* 9A7BC 80099BBC 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9A7C0 80099BC0 8FA90044 */  lw         $t1, 0x44($sp)
/* 9A7C4 80099BC4 254B0004 */  addiu      $t3, $t2, 4
/* 9A7C8 80099BC8 25280004 */  addiu      $t0, $t1, 4
/* 9A7CC 80099BCC AFA80044 */  sw         $t0, 0x44($sp)
/* 9A7D0 80099BD0 AFAB0048 */  sw         $t3, 0x48($sp)
/* 9A7D4 80099BD4 8FAC0048 */  lw         $t4, 0x48($sp)
/* 9A7D8 80099BD8 8FAD0044 */  lw         $t5, 0x44($sp)
/* 9A7DC 80099BDC 8D8E0000 */  lw         $t6, ($t4)
/* 9A7E0 80099BE0 ADAE0000 */  sw         $t6, ($t5)
/* 9A7E4 80099BE4 8FB80048 */  lw         $t8, 0x48($sp)
/* 9A7E8 80099BE8 8FAF0044 */  lw         $t7, 0x44($sp)
/* 9A7EC 80099BEC 27090004 */  addiu      $t1, $t8, 4
/* 9A7F0 80099BF0 25F90004 */  addiu      $t9, $t7, 4
/* 9A7F4 80099BF4 AFB90044 */  sw         $t9, 0x44($sp)
/* 9A7F8 80099BF8 AFA90048 */  sw         $t1, 0x48($sp)
/* 9A7FC 80099BFC 8FA80048 */  lw         $t0, 0x48($sp)
/* 9A800 80099C00 8FAB0044 */  lw         $t3, 0x44($sp)
/* 9A804 80099C04 8D0A0000 */  lw         $t2, ($t0)
/* 9A808 80099C08 AD6A0000 */  sw         $t2, ($t3)
/* 9A80C 80099C0C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 9A810 80099C10 8FAC0044 */  lw         $t4, 0x44($sp)
/* 9A814 80099C14 25AF0004 */  addiu      $t7, $t5, 4
/* 9A818 80099C18 258E0004 */  addiu      $t6, $t4, 4
/* 9A81C 80099C1C AFAE0044 */  sw         $t6, 0x44($sp)
/* 9A820 80099C20 AFAF0048 */  sw         $t7, 0x48($sp)
/* 9A824 80099C24 8FB90048 */  lw         $t9, 0x48($sp)
/* 9A828 80099C28 27380008 */  addiu      $t8, $t9, 8
/* 9A82C 80099C2C AFB80048 */  sw         $t8, 0x48($sp)
/* 9A830 80099C30 8FA90044 */  lw         $t1, 0x44($sp)
/* 9A834 80099C34 25280008 */  addiu      $t0, $t1, 8
/* 9A838 80099C38 AFA80044 */  sw         $t0, 0x44($sp)
/* 9A83C 80099C3C 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9A840 80099C40 8FAC0044 */  lw         $t4, 0x44($sp)
/* 9A844 80099C44 8D4B0000 */  lw         $t3, ($t2)
/* 9A848 80099C48 AD8B0000 */  sw         $t3, ($t4)
/* 9A84C 80099C4C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9A850 80099C50 8FAE0044 */  lw         $t6, 0x44($sp)
/* 9A854 80099C54 25F90004 */  addiu      $t9, $t7, 4
/* 9A858 80099C58 25CD0004 */  addiu      $t5, $t6, 4
/* 9A85C 80099C5C AFAD0044 */  sw         $t5, 0x44($sp)
/* 9A860 80099C60 AFB90048 */  sw         $t9, 0x48($sp)
/* 9A864 80099C64 8FB80048 */  lw         $t8, 0x48($sp)
/* 9A868 80099C68 8FA80044 */  lw         $t0, 0x44($sp)
/* 9A86C 80099C6C 8F090000 */  lw         $t1, ($t8)
/* 9A870 80099C70 AD090000 */  sw         $t1, ($t0)
/* 9A874 80099C74 8FAC0048 */  lw         $t4, 0x48($sp)
/* 9A878 80099C78 8FAA0044 */  lw         $t2, 0x44($sp)
/* 9A87C 80099C7C 258E0004 */  addiu      $t6, $t4, 4
/* 9A880 80099C80 254B0004 */  addiu      $t3, $t2, 4
/* 9A884 80099C84 AFAB0044 */  sw         $t3, 0x44($sp)
/* 9A888 80099C88 AFAE0048 */  sw         $t6, 0x48($sp)
/* 9A88C 80099C8C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 9A890 80099C90 8FB90044 */  lw         $t9, 0x44($sp)
/* 9A894 80099C94 8DAF0000 */  lw         $t7, ($t5)
/* 9A898 80099C98 AF2F0000 */  sw         $t7, ($t9)
/* 9A89C 80099C9C 8FA80048 */  lw         $t0, 0x48($sp)
/* 9A8A0 80099CA0 8FB80044 */  lw         $t8, 0x44($sp)
/* 9A8A4 80099CA4 250A0004 */  addiu      $t2, $t0, 4
/* 9A8A8 80099CA8 27090004 */  addiu      $t1, $t8, 4
/* 9A8AC 80099CAC AFA90044 */  sw         $t1, 0x44($sp)
/* 9A8B0 80099CB0 AFAA0048 */  sw         $t2, 0x48($sp)
/* 9A8B4 80099CB4 3C048000 */  lui        $a0, 0x8000
/* 9A8B8 80099CB8 34840180 */  ori        $a0, $a0, 0x180
/* 9A8BC 80099CBC 0C027C44 */  jal        func_8009F110
/* 9A8C0 80099CC0 24050024 */   addiu     $a1, $zero, 0x24
/* 9A8C4 80099CC4 3C048000 */  lui        $a0, 0x8000
/* 9A8C8 80099CC8 34840180 */  ori        $a0, $a0, 0x180
/* 9A8CC 80099CCC 0C02B454 */  jal        func_800AD150
/* 9A8D0 80099CD0 24050024 */   addiu     $a1, $zero, 0x24
/* 9A8D4 80099CD4 240B0001 */  addiu      $t3, $zero, 1
/* 9A8D8 80099CD8 3C01801A */  lui        $at, %hi(D_801A1BC0)
/* 9A8DC 80099CDC AC2B1BC0 */  sw         $t3, %lo(D_801A1BC0)($at)
/* 9A8E0 80099CE0 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9A8E4 80099CE4 8D8E0000 */  lw         $t6, ($t4)
/* 9A8E8 80099CE8 31CD0010 */  andi       $t5, $t6, 0x10
/* 9A8EC 80099CEC 15A0002B */  bnez       $t5, .L80099D9C
/* 9A8F0 80099CF0 00000000 */   nop
/* 9A8F4 80099CF4 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9A8F8 80099CF8 8DF90004 */  lw         $t9, 4($t7)
/* 9A8FC 80099CFC AFB90040 */  sw         $t9, 0x40($sp)
/* 9A900 80099D00 8FB80040 */  lw         $t8, 0x40($sp)
/* 9A904 80099D04 3C01BFF0 */  lui        $at, 0xbff0
/* 9A908 80099D08 1301001C */  beq        $t8, $at, .L80099D7C
/* 9A90C 80099D0C 00000000 */   nop
/* 9A910 80099D10 8FA90040 */  lw         $t1, 0x40($sp)
/* 9A914 80099D14 3C012000 */  lui        $at, 0x2000
/* 9A918 80099D18 01214025 */  or         $t0, $t1, $at
/* 9A91C 80099D1C AFA80030 */  sw         $t0, 0x30($sp)
/* 9A920 80099D20 240A0800 */  addiu      $t2, $zero, 0x800
/* 9A924 80099D24 AFAA002C */  sw         $t2, 0x2c($sp)
/* 9A928 80099D28 3C0BBFF0 */  lui        $t3, 0xbff0
/* 9A92C 80099D2C AFAB0034 */  sw         $t3, 0x34($sp)
/* 9A930 80099D30 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9A934 80099D34 11800011 */  beqz       $t4, .L80099D7C
/* 9A938 80099D38 00000000 */   nop
.L80099D3C:
/* 9A93C 80099D3C 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9A940 80099D40 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9A944 80099D44 8DCD0000 */  lw         $t5, ($t6)
/* 9A948 80099D48 ADED0000 */  sw         $t5, ($t7)
/* 9A94C 80099D4C 8FA90034 */  lw         $t1, 0x34($sp)
/* 9A950 80099D50 8FB90030 */  lw         $t9, 0x30($sp)
/* 9A954 80099D54 25280004 */  addiu      $t0, $t1, 4
/* 9A958 80099D58 27380004 */  addiu      $t8, $t9, 4
/* 9A95C 80099D5C AFB80030 */  sw         $t8, 0x30($sp)
/* 9A960 80099D60 AFA80034 */  sw         $t0, 0x34($sp)
/* 9A964 80099D64 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9A968 80099D68 254BFFFF */  addiu      $t3, $t2, -1
/* 9A96C 80099D6C AFAB002C */  sw         $t3, 0x2c($sp)
/* 9A970 80099D70 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9A974 80099D74 1580FFF1 */  bnez       $t4, .L80099D3C
/* 9A978 80099D78 00000000 */   nop
.L80099D7C:
/* 9A97C 80099D7C 8FAE0040 */  lw         $t6, 0x40($sp)
/* 9A980 80099D80 25CD0008 */  addiu      $t5, $t6, 8
/* 9A984 80099D84 AFAD0054 */  sw         $t5, 0x54($sp)
/* 9A988 80099D88 8FB90054 */  lw         $t9, 0x54($sp)
/* 9A98C 80099D8C 3C044B4D */  lui        $a0, 0x4b4d
/* 9A990 80099D90 34844300 */  ori        $a0, $a0, 0x4300
/* 9A994 80099D94 0320F809 */  jalr       $t9
/* 9A998 80099D98 00002825 */   or        $a1, $zero, $zero
.L80099D9C:
/* 9A99C 80099D9C 10000001 */  b          .L80099DA4
/* 9A9A0 80099DA0 00000000 */   nop
.L80099DA4:
/* 9A9A4 80099DA4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A9A8 80099DA8 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A9AC 80099DAC 27BD0060 */  addiu      $sp, $sp, 0x60
/* 9A9B0 80099DB0 03E00008 */  jr         $ra
/* 9A9B4 80099DB4 00000000 */   nop

glabel func_80099DB8
/* 9A9B8 80099DB8 03E00008 */  jr         $ra
/* 9A9BC 80099DBC 00000000 */   nop

glabel func_80099DC0
/* 9A9C0 80099DC0 03E00008 */  jr         $ra
/* 9A9C4 80099DC4 00000000 */   nop
/* 9A9C8 80099DC8 00000000 */  nop
/* 9A9CC 80099DCC 00000000 */  nop
