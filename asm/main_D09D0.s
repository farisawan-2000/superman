.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CFDD0
/* D09D0 800CFDD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D09D4 800CFDD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* D09D8 800CFDD8 AFA40028 */  sw         $a0, 0x28($sp)
/* D09DC 800CFDDC 0C033DD4 */  jal        func_800CF750
/* D09E0 800CFDE0 AFB00018 */   sw        $s0, 0x18($sp)
/* D09E4 800CFDE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* D09E8 800CFDE8 00408025 */  or         $s0, $v0, $zero
/* D09EC 800CFDEC 31CF0001 */  andi       $t7, $t6, 1
/* D09F0 800CFDF0 11E00006 */  beqz       $t7, .L800CFE0C
/* D09F4 800CFDF4 00000000 */   nop
/* D09F8 800CFDF8 3C18800E */  lui        $t8, %hi(D_800DB1F4)
/* D09FC 800CFDFC 8F18B1F4 */  lw         $t8, %lo(D_800DB1F4)($t8)
/* D0A00 800CFE00 8F19000C */  lw         $t9, 0xc($t8)
/* D0A04 800CFE04 37280008 */  ori        $t0, $t9, 8
/* D0A08 800CFE08 AF08000C */  sw         $t0, 0xc($t8)
.L800CFE0C:
/* D0A0C 800CFE0C 8FA90028 */  lw         $t1, 0x28($sp)
/* D0A10 800CFE10 312A0002 */  andi       $t2, $t1, 2
/* D0A14 800CFE14 11400007 */  beqz       $t2, .L800CFE34
/* D0A18 800CFE18 00000000 */   nop
/* D0A1C 800CFE1C 3C0B800E */  lui        $t3, %hi(D_800DB1F4)
/* D0A20 800CFE20 8D6BB1F4 */  lw         $t3, %lo(D_800DB1F4)($t3)
/* D0A24 800CFE24 2401FFF7 */  addiu      $at, $zero, -9
/* D0A28 800CFE28 8D6C000C */  lw         $t4, 0xc($t3)
/* D0A2C 800CFE2C 01816824 */  and        $t5, $t4, $at
/* D0A30 800CFE30 AD6D000C */  sw         $t5, 0xc($t3)
.L800CFE34:
/* D0A34 800CFE34 8FAE0028 */  lw         $t6, 0x28($sp)
/* D0A38 800CFE38 31CF0004 */  andi       $t7, $t6, 4
/* D0A3C 800CFE3C 11E00006 */  beqz       $t7, .L800CFE58
/* D0A40 800CFE40 00000000 */   nop
/* D0A44 800CFE44 3C19800E */  lui        $t9, %hi(D_800DB1F4)
/* D0A48 800CFE48 8F39B1F4 */  lw         $t9, %lo(D_800DB1F4)($t9)
/* D0A4C 800CFE4C 8F28000C */  lw         $t0, 0xc($t9)
/* D0A50 800CFE50 35180004 */  ori        $t8, $t0, 4
/* D0A54 800CFE54 AF38000C */  sw         $t8, 0xc($t9)
.L800CFE58:
/* D0A58 800CFE58 8FA90028 */  lw         $t1, 0x28($sp)
/* D0A5C 800CFE5C 312A0008 */  andi       $t2, $t1, 8
/* D0A60 800CFE60 11400007 */  beqz       $t2, .L800CFE80
/* D0A64 800CFE64 00000000 */   nop
/* D0A68 800CFE68 3C0C800E */  lui        $t4, %hi(D_800DB1F4)
/* D0A6C 800CFE6C 8D8CB1F4 */  lw         $t4, %lo(D_800DB1F4)($t4)
/* D0A70 800CFE70 2401FFFB */  addiu      $at, $zero, -5
/* D0A74 800CFE74 8D8D000C */  lw         $t5, 0xc($t4)
/* D0A78 800CFE78 01A15824 */  and        $t3, $t5, $at
/* D0A7C 800CFE7C AD8B000C */  sw         $t3, 0xc($t4)
.L800CFE80:
/* D0A80 800CFE80 8FAE0028 */  lw         $t6, 0x28($sp)
/* D0A84 800CFE84 31CF0010 */  andi       $t7, $t6, 0x10
/* D0A88 800CFE88 11E00006 */  beqz       $t7, .L800CFEA4
/* D0A8C 800CFE8C 00000000 */   nop
/* D0A90 800CFE90 3C08800E */  lui        $t0, %hi(D_800DB1F4)
/* D0A94 800CFE94 8D08B1F4 */  lw         $t0, %lo(D_800DB1F4)($t0)
/* D0A98 800CFE98 8D18000C */  lw         $t8, 0xc($t0)
/* D0A9C 800CFE9C 37190010 */  ori        $t9, $t8, 0x10
/* D0AA0 800CFEA0 AD19000C */  sw         $t9, 0xc($t0)
.L800CFEA4:
/* D0AA4 800CFEA4 8FA90028 */  lw         $t1, 0x28($sp)
/* D0AA8 800CFEA8 312A0020 */  andi       $t2, $t1, 0x20
/* D0AAC 800CFEAC 11400007 */  beqz       $t2, .L800CFECC
/* D0AB0 800CFEB0 00000000 */   nop
/* D0AB4 800CFEB4 3C0D800E */  lui        $t5, %hi(D_800DB1F4)
/* D0AB8 800CFEB8 8DADB1F4 */  lw         $t5, %lo(D_800DB1F4)($t5)
/* D0ABC 800CFEBC 2401FFEF */  addiu      $at, $zero, -0x11
/* D0AC0 800CFEC0 8DAB000C */  lw         $t3, 0xc($t5)
/* D0AC4 800CFEC4 01616024 */  and        $t4, $t3, $at
/* D0AC8 800CFEC8 ADAC000C */  sw         $t4, 0xc($t5)
.L800CFECC:
/* D0ACC 800CFECC 8FAE0028 */  lw         $t6, 0x28($sp)
/* D0AD0 800CFED0 31CF0040 */  andi       $t7, $t6, 0x40
/* D0AD4 800CFED4 11E0000D */  beqz       $t7, .L800CFF0C
/* D0AD8 800CFED8 00000000 */   nop
/* D0ADC 800CFEDC 3C18800E */  lui        $t8, %hi(D_800DB1F4)
/* D0AE0 800CFEE0 8F18B1F4 */  lw         $t8, %lo(D_800DB1F4)($t8)
/* D0AE4 800CFEE4 3C010001 */  lui        $at, 1
/* D0AE8 800CFEE8 3C09800E */  lui        $t1, %hi(D_800DB1F4)
/* D0AEC 800CFEEC 8F19000C */  lw         $t9, 0xc($t8)
/* D0AF0 800CFEF0 03214025 */  or         $t0, $t9, $at
/* D0AF4 800CFEF4 AF08000C */  sw         $t0, 0xc($t8)
/* D0AF8 800CFEF8 8D29B1F4 */  lw         $t1, %lo(D_800DB1F4)($t1)
/* D0AFC 800CFEFC 2401FCFF */  addiu      $at, $zero, -0x301
/* D0B00 800CFF00 8D2A000C */  lw         $t2, 0xc($t1)
/* D0B04 800CFF04 01415824 */  and        $t3, $t2, $at
/* D0B08 800CFF08 AD2B000C */  sw         $t3, 0xc($t1)
.L800CFF0C:
/* D0B0C 800CFF0C 8FAC0028 */  lw         $t4, 0x28($sp)
/* D0B10 800CFF10 318D0080 */  andi       $t5, $t4, 0x80
/* D0B14 800CFF14 11A00010 */  beqz       $t5, .L800CFF58
/* D0B18 800CFF18 00000000 */   nop
/* D0B1C 800CFF1C 3C0E800E */  lui        $t6, %hi(D_800DB1F4)
/* D0B20 800CFF20 8DCEB1F4 */  lw         $t6, %lo(D_800DB1F4)($t6)
/* D0B24 800CFF24 3C01FFFE */  lui        $at, 0xfffe
/* D0B28 800CFF28 3421FFFF */  ori        $at, $at, 0xffff
/* D0B2C 800CFF2C 8DCF000C */  lw         $t7, 0xc($t6)
/* D0B30 800CFF30 3C08800E */  lui        $t0, %hi(D_800DB1F4)
/* D0B34 800CFF34 01E1C824 */  and        $t9, $t7, $at
/* D0B38 800CFF38 ADD9000C */  sw         $t9, 0xc($t6)
/* D0B3C 800CFF3C 8D08B1F4 */  lw         $t0, %lo(D_800DB1F4)($t0)
/* D0B40 800CFF40 8D0A0008 */  lw         $t2, 8($t0)
/* D0B44 800CFF44 8D18000C */  lw         $t8, 0xc($t0)
/* D0B48 800CFF48 8D4B0004 */  lw         $t3, 4($t2)
/* D0B4C 800CFF4C 31690300 */  andi       $t1, $t3, 0x300
/* D0B50 800CFF50 03096025 */  or         $t4, $t8, $t1
/* D0B54 800CFF54 AD0C000C */  sw         $t4, 0xc($t0)
.L800CFF58:
/* D0B58 800CFF58 3C0D800E */  lui        $t5, %hi(D_800DB1F4)
/* D0B5C 800CFF5C 8DADB1F4 */  lw         $t5, %lo(D_800DB1F4)($t5)
/* D0B60 800CFF60 02002025 */  or         $a0, $s0, $zero
/* D0B64 800CFF64 95AF0000 */  lhu        $t7, ($t5)
/* D0B68 800CFF68 35F90008 */  ori        $t9, $t7, 8
/* D0B6C 800CFF6C 0C033DDC */  jal        func_800CF770
/* D0B70 800CFF70 A5B90000 */   sh        $t9, ($t5)
/* D0B74 800CFF74 8FBF001C */  lw         $ra, 0x1c($sp)
/* D0B78 800CFF78 8FB00018 */  lw         $s0, 0x18($sp)
/* D0B7C 800CFF7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* D0B80 800CFF80 03E00008 */  jr         $ra
/* D0B84 800CFF84 00000000 */   nop
/* D0B88 800CFF88 00000000 */  nop
/* D0B8C 800CFF8C 00000000 */  nop
