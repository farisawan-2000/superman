.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C5DC0
/* C69C0 800C5DC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C69C4 800C5DC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C69C8 800C5DC8 1080000C */  beqz       $a0, .L800C5DFC
/* C69CC 800C5DCC AFA40028 */   sw        $a0, 0x28($sp)
/* C69D0 800C5DD0 0C034F4C */  jal        func_800D3D30
/* C69D4 800C5DD4 00000000 */   nop
/* C69D8 800C5DD8 0C031A7C */  jal        func_800C69F0
/* C69DC 800C5DDC AFA20018 */   sw        $v0, 0x18($sp)
/* C69E0 800C5DE0 8FAF0018 */  lw         $t7, 0x18($sp)
/* C69E4 800C5DE4 104F0003 */  beq        $v0, $t7, .L800C5DF4
/* C69E8 800C5DE8 00000000 */   nop
/* C69EC 800C5DEC 10000004 */  b          .L800C5E00
/* C69F0 800C5DF0 00001025 */   or        $v0, $zero, $zero
.L800C5DF4:
/* C69F4 800C5DF4 10000002 */  b          .L800C5E00
/* C69F8 800C5DF8 8FA20028 */   lw        $v0, 0x28($sp)
.L800C5DFC:
/* C69FC 800C5DFC 00001025 */  or         $v0, $zero, $zero
.L800C5E00:
/* C6A00 800C5E00 8FBF0014 */  lw         $ra, 0x14($sp)
/* C6A04 800C5E04 27BD0028 */  addiu      $sp, $sp, 0x28
/* C6A08 800C5E08 03E00008 */  jr         $ra
/* C6A0C 800C5E0C 00000000 */   nop

glabel func_800C5E10
/* C6A10 800C5E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C6A14 800C5E14 12000013 */  beqz       $s0, .L800C5E64
/* C6A18 800C5E18 AFBF0014 */   sw        $ra, 0x14($sp)
/* C6A1C 800C5E1C 8E0E0010 */  lw         $t6, 0x10($s0)
/* C6A20 800C5E20 24010002 */  addiu      $at, $zero, 2
/* C6A24 800C5E24 55C10004 */  bnel       $t6, $at, .L800C5E38
/* C6A28 800C5E28 8E0F0004 */   lw        $t7, 4($s0)
/* C6A2C 800C5E2C 0C034BEC */  jal        func_800D2FB0
/* C6A30 800C5E30 00000000 */   nop
/* C6A34 800C5E34 8E0F0004 */  lw         $t7, 4($s0)
.L800C5E38:
/* C6A38 800C5E38 2401FFCF */  addiu      $at, $zero, -0x31
/* C6A3C 800C5E3C 26120010 */  addiu      $s2, $s0, 0x10
/* C6A40 800C5E40 01E1C024 */  and        $t8, $t7, $at
/* C6A44 800C5E44 AE180004 */  sw         $t8, 4($s0)
/* C6A48 800C5E48 0C031A07 */  jal        func_800C681C
/* C6A4C 800C5E4C 02402025 */   or        $a0, $s2, $zero
/* C6A50 800C5E50 0C031A6B */  jal        func_800C69AC
/* C6A54 800C5E54 02402025 */   or        $a0, $s2, $zero
/* C6A58 800C5E58 16110002 */  bne        $s0, $s1, .L800C5E64
/* C6A5C 800C5E5C AE700274 */   sw        $s0, 0x274($s3)
/* C6A60 800C5E60 AE710278 */  sw         $s1, 0x278($s3)
.L800C5E64:
/* C6A64 800C5E64 5220000F */  beql       $s1, $zero, .L800C5EA4
/* C6A68 800C5E68 8FBF0014 */   lw        $ra, 0x14($sp)
/* C6A6C 800C5E6C 5230000D */  beql       $s1, $s0, .L800C5EA4
/* C6A70 800C5E70 8FBF0014 */   lw        $ra, 0x14($sp)
/* C6A74 800C5E74 8E39003C */  lw         $t9, 0x3c($s1)
/* C6A78 800C5E78 8E240038 */  lw         $a0, 0x38($s1)
/* C6A7C 800C5E7C 8F260000 */  lw         $a2, ($t9)
/* C6A80 800C5E80 0C034BAC */  jal        func_800D2EB0
/* C6A84 800C5E84 8F270004 */   lw        $a3, 4($t9)
/* C6A88 800C5E88 240E0001 */  addiu      $t6, $zero, 1
/* C6A8C 800C5E8C 3C01800E */  lui        $at, %hi(D_800DA0E0)
/* C6A90 800C5E90 AC2EA0E0 */  sw         $t6, %lo(D_800DA0E0)($at)
/* C6A94 800C5E94 3C01800E */  lui        $at, %hi(D_800DA0E4)
/* C6A98 800C5E98 AC20A0E4 */  sw         $zero, %lo(D_800DA0E4)($at)
/* C6A9C 800C5E9C AE710278 */  sw         $s1, 0x278($s3)
/* C6AA0 800C5EA0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C5EA4:
/* C6AA4 800C5EA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C6AA8 800C5EA8 03E00008 */  jr         $ra
/* C6AAC 800C5EAC 00000000 */   nop

glabel func_800C5EB0
/* C6AB0 800C5EB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C6AB4 800C5EB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C6AB8 800C5EB8 AFB00018 */  sw         $s0, 0x18($sp)
/* C6ABC 800C5EBC 00804025 */  or         $t0, $a0, $zero
/* C6AC0 800C5EC0 2409FFFD */  addiu      $t1, $zero, -3
.L800C5EC4:
/* C6AC4 800C5EC4 8D0E0280 */  lw         $t6, 0x280($t0)
/* C6AC8 800C5EC8 00E01825 */  or         $v1, $a3, $zero
/* C6ACC 800C5ECC 8D100268 */  lw         $s0, 0x268($t0)
/* C6AD0 800C5ED0 11C00016 */  beqz       $t6, .L800C5F2C
/* C6AD4 800C5ED4 8D020264 */   lw        $v0, 0x264($t0)
/* C6AD8 800C5ED8 30EF0002 */  andi       $t7, $a3, 2
/* C6ADC 800C5EDC 51E00014 */  beql       $t7, $zero, .L800C5F30
/* C6AE0 800C5EE0 02002025 */   or        $a0, $s0, $zero
/* C6AE4 800C5EE4 52000009 */  beql       $s0, $zero, .L800C5F0C
/* C6AE8 800C5EE8 ACA20000 */   sw        $v0, ($a1)
/* C6AEC 800C5EEC 8E180008 */  lw         $t8, 8($s0)
/* C6AF0 800C5EF0 00E91824 */  and        $v1, $a3, $t1
/* C6AF4 800C5EF4 33190010 */  andi       $t9, $t8, 0x10
/* C6AF8 800C5EF8 53200004 */  beql       $t9, $zero, .L800C5F0C
/* C6AFC 800C5EFC ACA20000 */   sw        $v0, ($a1)
/* C6B00 800C5F00 1000005B */  b          .L800C6070
/* C6B04 800C5F04 ACB00000 */   sw        $s0, ($a1)
/* C6B08 800C5F08 ACA20000 */  sw         $v0, ($a1)
.L800C5F0C:
/* C6B0C 800C5F0C 8D0B0264 */  lw         $t3, 0x264($t0)
/* C6B10 800C5F10 AD000280 */  sw         $zero, 0x280($t0)
/* C6B14 800C5F14 00E91824 */  and        $v1, $a3, $t1
/* C6B18 800C5F18 8D6C0000 */  lw         $t4, ($t3)
/* C6B1C 800C5F1C 15800054 */  bnez       $t4, .L800C6070
/* C6B20 800C5F20 AD0C0264 */   sw        $t4, 0x264($t0)
/* C6B24 800C5F24 10000052 */  b          .L800C6070
/* C6B28 800C5F28 AD00026C */   sw        $zero, 0x26c($t0)
.L800C5F2C:
/* C6B2C 800C5F2C 02002025 */  or         $a0, $s0, $zero
.L800C5F30:
/* C6B30 800C5F30 AFA30024 */  sw         $v1, 0x24($sp)
/* C6B34 800C5F34 AFA5002C */  sw         $a1, 0x2c($sp)
/* C6B38 800C5F38 AFA60030 */  sw         $a2, 0x30($sp)
/* C6B3C 800C5F3C AFA70034 */  sw         $a3, 0x34($sp)
/* C6B40 800C5F40 0C031770 */  jal        func_800C5DC0
/* C6B44 800C5F44 AFA80028 */   sw        $t0, 0x28($sp)
/* C6B48 800C5F48 8FA30024 */  lw         $v1, 0x24($sp)
/* C6B4C 800C5F4C 8FA5002C */  lw         $a1, 0x2c($sp)
/* C6B50 800C5F50 8FA60030 */  lw         $a2, 0x30($sp)
/* C6B54 800C5F54 8FA70034 */  lw         $a3, 0x34($sp)
/* C6B58 800C5F58 8FA80028 */  lw         $t0, 0x28($sp)
/* C6B5C 800C5F5C 2409FFFD */  addiu      $t1, $zero, -3
/* C6B60 800C5F60 10400043 */  beqz       $v0, .L800C6070
/* C6B64 800C5F64 240AFFFE */   addiu     $t2, $zero, -2
/* C6B68 800C5F68 8E0E0008 */  lw         $t6, 8($s0)
/* C6B6C 800C5F6C 31CF0007 */  andi       $t7, $t6, 7
/* C6B70 800C5F70 25F8FFFF */  addiu      $t8, $t7, -1
/* C6B74 800C5F74 2F010007 */  sltiu      $at, $t8, 7
/* C6B78 800C5F78 1020003D */  beqz       $at, .L800C6070
/* C6B7C 800C5F7C 0018C080 */   sll       $t8, $t8, 2
/* C6B80 800C5F80 3C01800E */  lui        $at, %hi(D_800DFBF0)
/* C6B84 800C5F84 00380821 */  addu       $at, $at, $t8
/* C6B88 800C5F88 8C38FBF0 */  lw         $t8, %lo(D_800DFBF0)($at)
/* C6B8C 800C5F8C 03000008 */  jr         $t8
/* C6B90 800C5F90 00000000 */   nop
/* C6B94 800C5F94 8E190004 */  lw         $t9, 4($s0)
/* C6B98 800C5F98 30EC0002 */  andi       $t4, $a3, 2
/* C6B9C 800C5F9C 24010003 */  addiu      $at, $zero, 3
/* C6BA0 800C5FA0 332B0020 */  andi       $t3, $t9, 0x20
/* C6BA4 800C5FA4 11600011 */  beqz       $t3, .L800C5FEC
/* C6BA8 800C5FA8 00000000 */   nop
/* C6BAC 800C5FAC 11800030 */  beqz       $t4, .L800C6070
/* C6BB0 800C5FB0 00000000 */   nop
/* C6BB4 800C5FB4 ACB00000 */  sw         $s0, ($a1)
/* C6BB8 800C5FB8 8E0D0004 */  lw         $t5, 4($s0)
/* C6BBC 800C5FBC 00E91824 */  and        $v1, $a3, $t1
/* C6BC0 800C5FC0 31AE0001 */  andi       $t6, $t5, 1
/* C6BC4 800C5FC4 51C00004 */  beql       $t6, $zero, .L800C5FD8
/* C6BC8 800C5FC8 8D0F0268 */   lw        $t7, 0x268($t0)
/* C6BCC 800C5FCC ACD00000 */  sw         $s0, ($a2)
/* C6BD0 800C5FD0 006A1824 */  and        $v1, $v1, $t2
/* C6BD4 800C5FD4 8D0F0268 */  lw         $t7, 0x268($t0)
.L800C5FD8:
/* C6BD8 800C5FD8 8DF80000 */  lw         $t8, ($t7)
/* C6BDC 800C5FDC 17000024 */  bnez       $t8, .L800C6070
/* C6BE0 800C5FE0 AD180268 */   sw        $t8, 0x268($t0)
/* C6BE4 800C5FE4 10000022 */  b          .L800C6070
/* C6BE8 800C5FE8 AD000270 */   sw        $zero, 0x270($t0)
.L800C5FEC:
/* C6BEC 800C5FEC 14E10020 */  bne        $a3, $at, .L800C6070
/* C6BF0 800C5FF0 00000000 */   nop
/* C6BF4 800C5FF4 ACD00000 */  sw         $s0, ($a2)
/* C6BF8 800C5FF8 ACB00000 */  sw         $s0, ($a1)
/* C6BFC 800C5FFC 8D0B0268 */  lw         $t3, 0x268($t0)
/* C6C00 800C6000 2401FFFC */  addiu      $at, $zero, -4
/* C6C04 800C6004 00E11824 */  and        $v1, $a3, $at
/* C6C08 800C6008 8D6C0000 */  lw         $t4, ($t3)
/* C6C0C 800C600C 15800018 */  bnez       $t4, .L800C6070
/* C6C10 800C6010 AD0C0268 */   sw        $t4, 0x268($t0)
/* C6C14 800C6014 10000016 */  b          .L800C6070
/* C6C18 800C6018 AD000270 */   sw        $zero, 0x270($t0)
/* C6C1C 800C601C 8E020004 */  lw         $v0, 4($s0)
/* C6C20 800C6020 30EF0002 */  andi       $t7, $a3, 2
/* C6C24 800C6024 304E0002 */  andi       $t6, $v0, 2
/* C6C28 800C6028 11C00006 */  beqz       $t6, .L800C6044
/* C6C2C 800C602C 30580001 */   andi      $t8, $v0, 1
/* C6C30 800C6030 11E0000F */  beqz       $t7, .L800C6070
/* C6C34 800C6034 00000000 */   nop
/* C6C38 800C6038 ACB00000 */  sw         $s0, ($a1)
/* C6C3C 800C603C 1000000C */  b          .L800C6070
/* C6C40 800C6040 00E91824 */   and       $v1, $a3, $t1
.L800C6044:
/* C6C44 800C6044 1300000A */  beqz       $t8, .L800C6070
/* C6C48 800C6048 30F90001 */   andi      $t9, $a3, 1
/* C6C4C 800C604C 13200008 */  beqz       $t9, .L800C6070
/* C6C50 800C6050 00000000 */   nop
/* C6C54 800C6054 ACD00000 */  sw         $s0, ($a2)
/* C6C58 800C6058 8D0B0268 */  lw         $t3, 0x268($t0)
/* C6C5C 800C605C 00EA1824 */  and        $v1, $a3, $t2
/* C6C60 800C6060 8D6C0000 */  lw         $t4, ($t3)
/* C6C64 800C6064 15800002 */  bnez       $t4, .L800C6070
/* C6C68 800C6068 AD0C0268 */   sw        $t4, 0x268($t0)
/* C6C6C 800C606C AD000270 */  sw         $zero, 0x270($t0)
.L800C6070:
/* C6C70 800C6070 50670004 */  beql       $v1, $a3, .L800C6084
/* C6C74 800C6074 8FBF001C */   lw        $ra, 0x1c($sp)
/* C6C78 800C6078 1000FF92 */  b          .L800C5EC4
/* C6C7C 800C607C 00603825 */   or        $a3, $v1, $zero
/* C6C80 800C6080 8FBF001C */  lw         $ra, 0x1c($sp)
.L800C6084:
/* C6C84 800C6084 8FB00018 */  lw         $s0, 0x18($sp)
/* C6C88 800C6088 27BD0028 */  addiu      $sp, $sp, 0x28
/* C6C8C 800C608C 03E00008 */  jr         $ra
/* C6C90 800C6090 00601025 */   or        $v0, $v1, $zero

glabel func_800C6094
/* C6C94 800C6094 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C6C98 800C6098 AFBF0014 */  sw         $ra, 0x14($sp)
/* C6C9C 800C609C 8E0E0004 */  lw         $t6, 4($s0)
/* C6CA0 800C60A0 24060001 */  addiu      $a2, $zero, 1
/* C6CA4 800C60A4 00001025 */  or         $v0, $zero, $zero
/* C6CA8 800C60A8 31CF0003 */  andi       $t7, $t6, 3
/* C6CAC 800C60AC 15E00019 */  bnez       $t7, .L800C6114
/* C6CB0 800C60B0 00000000 */   nop
/* C6CB4 800C60B4 8E040050 */  lw         $a0, 0x50($s0)
/* C6CB8 800C60B8 0C02F7A8 */  jal        func_800BDEA0
/* C6CBC 800C60BC 8E050054 */   lw        $a1, 0x54($s0)
/* C6CC0 800C60C0 8E180010 */  lw         $t8, 0x10($s0)
/* C6CC4 800C60C4 24010001 */  addiu      $at, $zero, 1
/* C6CC8 800C60C8 17010010 */  bne        $t8, $at, .L800C610C
/* C6CCC 800C60CC 00000000 */   nop
/* C6CD0 800C60D0 8E020008 */  lw         $v0, 8($s0)
/* C6CD4 800C60D4 30590040 */  andi       $t9, $v0, 0x40
/* C6CD8 800C60D8 1320000C */  beqz       $t9, .L800C610C
/* C6CDC 800C60DC 304E0020 */   andi      $t6, $v0, 0x20
/* C6CE0 800C60E0 11C0000A */  beqz       $t6, .L800C610C
/* C6CE4 800C60E4 3C0F800E */   lui       $t7, %hi(D_800DA0E8)
/* C6CE8 800C60E8 8DEFA0E8 */  lw         $t7, %lo(D_800DA0E8)($t7)
/* C6CEC 800C60EC 11E00005 */  beqz       $t7, .L800C6104
/* C6CF0 800C60F0 00000000 */   nop
/* C6CF4 800C60F4 0C030F44 */  jal        func_800C3D10
/* C6CF8 800C60F8 00002025 */   or        $a0, $zero, $zero
/* C6CFC 800C60FC 3C01800E */  lui        $at, %hi(D_800DA0E8)
/* C6D00 800C6100 AC20A0E8 */  sw         $zero, %lo(D_800DA0E8)($at)
.L800C6104:
/* C6D04 800C6104 0C033760 */  jal        func_800CDD80
/* C6D08 800C6108 8E04000C */   lw        $a0, 0xc($s0)
.L800C610C:
/* C6D0C 800C610C 10000001 */  b          .L800C6114
/* C6D10 800C6110 24020001 */   addiu     $v0, $zero, 1
.L800C6114:
/* C6D14 800C6114 8FBF0014 */  lw         $ra, 0x14($sp)
/* C6D18 800C6118 27BD0018 */  addiu      $sp, $sp, 0x18
/* C6D1C 800C611C 03E00008 */  jr         $ra
/* C6D20 800C6120 00000000 */   nop

glabel func_800C6124
/* C6D24 800C6124 03E00008 */  jr         $ra
/* C6D28 800C6128 00000000 */   nop

glabel func_800C612C
/* C6D2C 800C612C 03E00008 */  jr         $ra
/* C6D30 800C6130 00000000 */   nop

glabel func_800C6134
/* C6D34 800C6134 03E00008 */  jr         $ra
/* C6D38 800C6138 00000000 */   nop

glabel func_800C613C
/* C6D3C 800C613C 03E00008 */  jr         $ra
/* C6D40 800C6140 00000000 */   nop

glabel func_800C6144
/* C6D44 800C6144 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C6D48 800C6148 AFBF0014 */  sw         $ra, 0x14($sp)
/* C6D4C 800C614C AFA00034 */  sw         $zero, 0x34($sp)
/* C6D50 800C6150 AFA00030 */  sw         $zero, 0x30($sp)
/* C6D54 800C6154 8E8E027C */  lw         $t6, 0x27c($s4)
/* C6D58 800C6158 27B50044 */  addiu      $s5, $sp, 0x44
/* C6D5C 800C615C 26930078 */  addiu      $s3, $s4, 0x78
/* C6D60 800C6160 25CF0001 */  addiu      $t7, $t6, 1
/* C6D64 800C6164 AE8F027C */  sw         $t7, 0x27c($s4)
/* C6D68 800C6168 02602025 */  or         $a0, $s3, $zero
/* C6D6C 800C616C 02A02825 */  or         $a1, $s5, $zero
/* C6D70 800C6170 0C02F85C */  jal        func_800BE170
/* C6D74 800C6174 00003025 */   or        $a2, $zero, $zero
/* C6D78 800C6178 2410FFFF */  addiu      $s0, $zero, -1
/* C6D7C 800C617C 50500023 */  beql       $v0, $s0, .L800C620C
/* C6D80 800C6180 8E8F0280 */   lw        $t7, 0x280($s4)
/* C6D84 800C6184 24120001 */  addiu      $s2, $zero, 1
/* C6D88 800C6188 24110002 */  addiu      $s1, $zero, 2
/* C6D8C 800C618C 8FB80044 */  lw         $t8, 0x44($sp)
.L800C6190:
/* C6D90 800C6190 02602025 */  or         $a0, $s3, $zero
/* C6D94 800C6194 02A02825 */  or         $a1, $s5, $zero
/* C6D98 800C6198 8F030010 */  lw         $v1, 0x10($t8)
/* C6D9C 800C619C 03001025 */  or         $v0, $t8, $zero
/* C6DA0 800C61A0 5471000B */  bnel       $v1, $s1, .L800C61D0
/* C6DA4 800C61A4 8E830270 */   lw        $v1, 0x270($s4)
/* C6DA8 800C61A8 8E83026C */  lw         $v1, 0x26c($s4)
/* C6DAC 800C61AC 50600004 */  beql       $v1, $zero, .L800C61C0
/* C6DB0 800C61B0 AE820264 */   sw        $v0, 0x264($s4)
/* C6DB4 800C61B4 10000002 */  b          .L800C61C0
/* C6DB8 800C61B8 AC780000 */   sw        $t8, ($v1)
/* C6DBC 800C61BC AE820264 */  sw         $v0, 0x264($s4)
.L800C61C0:
/* C6DC0 800C61C0 AE82026C */  sw         $v0, 0x26c($s4)
/* C6DC4 800C61C4 10000008 */  b          .L800C61E8
/* C6DC8 800C61C8 AE920280 */   sw        $s2, 0x280($s4)
/* C6DCC 800C61CC 8E830270 */  lw         $v1, 0x270($s4)
.L800C61D0:
/* C6DD0 800C61D0 50600004 */  beql       $v1, $zero, .L800C61E4
/* C6DD4 800C61D4 AE820268 */   sw        $v0, 0x268($s4)
/* C6DD8 800C61D8 10000002 */  b          .L800C61E4
/* C6DDC 800C61DC AC620000 */   sw        $v0, ($v1)
/* C6DE0 800C61E0 AE820268 */  sw         $v0, 0x268($s4)
.L800C61E4:
/* C6DE4 800C61E4 AE820270 */  sw         $v0, 0x270($s4)
.L800C61E8:
/* C6DE8 800C61E8 8C590008 */  lw         $t9, 8($v0)
/* C6DEC 800C61EC AC400000 */  sw         $zero, ($v0)
/* C6DF0 800C61F0 00003025 */  or         $a2, $zero, $zero
/* C6DF4 800C61F4 332E0003 */  andi       $t6, $t9, 3
/* C6DF8 800C61F8 0C02F85C */  jal        func_800BE170
/* C6DFC 800C61FC AC4E0004 */   sw        $t6, 4($v0)
/* C6E00 800C6200 5450FFE3 */  bnel       $v0, $s0, .L800C6190
/* C6E04 800C6204 8FB80044 */   lw        $t8, 0x44($sp)
/* C6E08 800C6208 8E8F0280 */  lw         $t7, 0x280($s4)
.L800C620C:
/* C6E0C 800C620C 02802025 */  or         $a0, $s4, $zero
/* C6E10 800C6210 27A50034 */  addiu      $a1, $sp, 0x34
/* C6E14 800C6214 51E0000F */  beql       $t7, $zero, .L800C6254
/* C6E18 800C6218 8E8F0274 */   lw        $t7, 0x274($s4)
/* C6E1C 800C621C 8E820274 */  lw         $v0, 0x274($s4)
/* C6E20 800C6220 5040000C */  beql       $v0, $zero, .L800C6254
/* C6E24 800C6224 8E8F0274 */   lw        $t7, 0x274($s4)
/* C6E28 800C6228 8C580010 */  lw         $t8, 0x10($v0)
/* C6E2C 800C622C 24010001 */  addiu      $at, $zero, 1
/* C6E30 800C6230 57010017 */  bnel       $t8, $at, .L800C6290
/* C6E34 800C6234 8E900260 */   lw        $s0, 0x260($s4)
/* C6E38 800C6238 8C590004 */  lw         $t9, 4($v0)
/* C6E3C 800C623C 372E0010 */  ori        $t6, $t9, 0x10
/* C6E40 800C6240 0C031AB0 */  jal        func_800C6AC0
/* C6E44 800C6244 AC4E0004 */   sw        $t6, 4($v0)
/* C6E48 800C6248 10000011 */  b          .L800C6290
/* C6E4C 800C624C 8E900260 */   lw        $s0, 0x260($s4)
/* C6E50 800C6250 8E8F0274 */  lw         $t7, 0x274($s4)
.L800C6254:
/* C6E54 800C6254 8E8E0278 */  lw         $t6, 0x278($s4)
/* C6E58 800C6258 27A60030 */  addiu      $a2, $sp, 0x30
/* C6E5C 800C625C 2DF80001 */  sltiu      $t8, $t7, 1
/* C6E60 800C6260 0018C840 */  sll        $t9, $t8, 1
/* C6E64 800C6264 2DCF0001 */  sltiu      $t7, $t6, 1
/* C6E68 800C6268 032F8025 */  or         $s0, $t9, $t7
/* C6E6C 800C626C 0C0317AC */  jal        func_800C5EB0
/* C6E70 800C6270 02003825 */   or        $a3, $s0, $zero
/* C6E74 800C6274 50500006 */  beql       $v0, $s0, .L800C6290
/* C6E78 800C6278 8E900260 */   lw        $s0, 0x260($s4)
/* C6E7C 800C627C 02809825 */  or         $s3, $s4, $zero
/* C6E80 800C6280 8FB00034 */  lw         $s0, 0x34($sp)
/* C6E84 800C6284 0C031784 */  jal        func_800C5E10
/* C6E88 800C6288 8FB10030 */   lw        $s1, 0x30($sp)
/* C6E8C 800C628C 8E900260 */  lw         $s0, 0x260($s4)
.L800C6290:
/* C6E90 800C6290 52000009 */  beql       $s0, $zero, .L800C62B8
/* C6E94 800C6294 8FBF0014 */   lw        $ra, 0x14($sp)
/* C6E98 800C6298 8E040004 */  lw         $a0, 4($s0)
.L800C629C:
/* C6E9C 800C629C 02802825 */  or         $a1, $s4, $zero
/* C6EA0 800C62A0 0C02F7A8 */  jal        func_800BDEA0
/* C6EA4 800C62A4 00003025 */   or        $a2, $zero, $zero
/* C6EA8 800C62A8 8E100000 */  lw         $s0, ($s0)
/* C6EAC 800C62AC 5600FFFB */  bnezl      $s0, .L800C629C
/* C6EB0 800C62B0 8E040004 */   lw        $a0, 4($s0)
/* C6EB4 800C62B4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C62B8:
/* C6EB8 800C62B8 27BD0048 */  addiu      $sp, $sp, 0x48
/* C6EBC 800C62BC 03E00008 */  jr         $ra
/* C6EC0 800C62C0 00000000 */   nop

glabel func_800C62C4
/* C6EC4 800C62C4 27BDFF78 */  addiu      $sp, $sp, -0x88
/* C6EC8 800C62C8 AFBE0038 */  sw         $fp, 0x38($sp)
/* C6ECC 800C62CC AFB70034 */  sw         $s7, 0x34($sp)
/* C6ED0 800C62D0 AFB60030 */  sw         $s6, 0x30($sp)
/* C6ED4 800C62D4 0080B025 */  or         $s6, $a0, $zero
/* C6ED8 800C62D8 AFBF003C */  sw         $ra, 0x3c($sp)
/* C6EDC 800C62DC AFB5002C */  sw         $s5, 0x2c($sp)
/* C6EE0 800C62E0 AFB40028 */  sw         $s4, 0x28($sp)
/* C6EE4 800C62E4 AFB30024 */  sw         $s3, 0x24($sp)
/* C6EE8 800C62E8 AFB20020 */  sw         $s2, 0x20($sp)
/* C6EEC 800C62EC AFB1001C */  sw         $s1, 0x1c($sp)
/* C6EF0 800C62F0 AFB00018 */  sw         $s0, 0x18($sp)
/* C6EF4 800C62F4 24970040 */  addiu      $s7, $a0, 0x40
/* C6EF8 800C62F8 241E029A */  addiu      $fp, $zero, 0x29a
.L800C62FC:
/* C6EFC 800C62FC 02E02025 */  or         $a0, $s7, $zero
.L800C6300:
/* C6F00 800C6300 27A50084 */  addiu      $a1, $sp, 0x84
/* C6F04 800C6304 0C02F85C */  jal        func_800BE170
/* C6F08 800C6308 24060001 */   addiu     $a2, $zero, 1
/* C6F0C 800C630C 8FA30084 */  lw         $v1, 0x84($sp)
/* C6F10 800C6310 2401029B */  addiu      $at, $zero, 0x29b
/* C6F14 800C6314 107E0009 */  beq        $v1, $fp, .L800C633C
/* C6F18 800C6318 00000000 */   nop
/* C6F1C 800C631C 1061000B */  beq        $v1, $at, .L800C634C
/* C6F20 800C6320 2401029C */   addiu     $at, $zero, 0x29c
/* C6F24 800C6324 1061003C */  beq        $v1, $at, .L800C6418
/* C6F28 800C6328 2401029D */   addiu     $at, $zero, 0x29d
/* C6F2C 800C632C 50610057 */  beql       $v1, $at, .L800C648C
/* C6F30 800C6330 8ED00260 */   lw        $s0, 0x260($s6)
/* C6F34 800C6334 1000FFF2 */  b          .L800C6300
/* C6F38 800C6338 02E02025 */   or        $a0, $s7, $zero
.L800C633C:
/* C6F3C 800C633C 0C031851 */  jal        func_800C6144
/* C6F40 800C6340 02C0A025 */   or        $s4, $s6, $zero
/* C6F44 800C6344 1000FFEE */  b          .L800C6300
/* C6F48 800C6348 02E02025 */   or        $a0, $s7, $zero
.L800C634C:
/* C6F4C 800C634C AFA00068 */  sw         $zero, 0x68($sp)
/* C6F50 800C6350 AFA00064 */  sw         $zero, 0x64($sp)
/* C6F54 800C6354 8ED00274 */  lw         $s0, 0x274($s6)
/* C6F58 800C6358 AEC00274 */  sw         $zero, 0x274($s6)
/* C6F5C 800C635C 8E0E0004 */  lw         $t6, 4($s0)
/* C6F60 800C6360 31CF0010 */  andi       $t7, $t6, 0x10
/* C6F64 800C6364 51E00015 */  beql       $t7, $zero, .L800C63BC
/* C6F68 800C6368 8E0E0004 */   lw        $t6, 4($s0)
/* C6F6C 800C636C 0C033888 */  jal        func_800CE220
/* C6F70 800C6370 26040010 */   addiu     $a0, $s0, 0x10
/* C6F74 800C6374 50400011 */  beql       $v0, $zero, .L800C63BC
/* C6F78 800C6378 8E0E0004 */   lw        $t6, 4($s0)
/* C6F7C 800C637C 8E180004 */  lw         $t8, 4($s0)
/* C6F80 800C6380 8E0E0008 */  lw         $t6, 8($s0)
/* C6F84 800C6384 24010003 */  addiu      $at, $zero, 3
/* C6F88 800C6388 37190020 */  ori        $t9, $t8, 0x20
/* C6F8C 800C638C 31CF0007 */  andi       $t7, $t6, 7
/* C6F90 800C6390 15E1000F */  bne        $t7, $at, .L800C63D0
/* C6F94 800C6394 AE190004 */   sw        $t9, 4($s0)
/* C6F98 800C6398 8ED80268 */  lw         $t8, 0x268($s6)
/* C6F9C 800C639C AE180000 */  sw         $t8, ($s0)
/* C6FA0 800C63A0 8ED90270 */  lw         $t9, 0x270($s6)
/* C6FA4 800C63A4 AED00268 */  sw         $s0, 0x268($s6)
/* C6FA8 800C63A8 5720000A */  bnezl      $t9, .L800C63D4
/* C6FAC 800C63AC 8ED80274 */   lw        $t8, 0x274($s6)
/* C6FB0 800C63B0 10000007 */  b          .L800C63D0
/* C6FB4 800C63B4 AED00270 */   sw        $s0, 0x270($s6)
/* C6FB8 800C63B8 8E0E0004 */  lw         $t6, 4($s0)
.L800C63BC:
/* C6FBC 800C63BC 2401FFFD */  addiu      $at, $zero, -3
/* C6FC0 800C63C0 01C17824 */  and        $t7, $t6, $at
/* C6FC4 800C63C4 AE0F0004 */  sw         $t7, 4($s0)
/* C6FC8 800C63C8 0C031825 */  jal        func_800C6094
/* C6FCC 800C63CC AFB60000 */   sw        $s6, ($sp)
.L800C63D0:
/* C6FD0 800C63D0 8ED80274 */  lw         $t8, 0x274($s6)
.L800C63D4:
/* C6FD4 800C63D4 8ECF0278 */  lw         $t7, 0x278($s6)
/* C6FD8 800C63D8 02C02025 */  or         $a0, $s6, $zero
/* C6FDC 800C63DC 2F190001 */  sltiu      $t9, $t8, 1
/* C6FE0 800C63E0 00197040 */  sll        $t6, $t9, 1
/* C6FE4 800C63E4 2DF80001 */  sltiu      $t8, $t7, 1
/* C6FE8 800C63E8 01D88025 */  or         $s0, $t6, $t8
/* C6FEC 800C63EC 02003825 */  or         $a3, $s0, $zero
/* C6FF0 800C63F0 27A50068 */  addiu      $a1, $sp, 0x68
/* C6FF4 800C63F4 0C0317AC */  jal        func_800C5EB0
/* C6FF8 800C63F8 27A60064 */   addiu     $a2, $sp, 0x64
/* C6FFC 800C63FC 1050FFBF */  beq        $v0, $s0, .L800C62FC
/* C7000 800C6400 02C09825 */   or        $s3, $s6, $zero
/* C7004 800C6404 8FB00068 */  lw         $s0, 0x68($sp)
/* C7008 800C6408 0C031784 */  jal        func_800C5E10
/* C700C 800C640C 8FB10064 */   lw        $s1, 0x64($sp)
/* C7010 800C6410 1000FFBB */  b          .L800C6300
/* C7014 800C6414 02E02025 */   or        $a0, $s7, $zero
.L800C6418:
/* C7018 800C6418 AFA00050 */  sw         $zero, 0x50($sp)
/* C701C 800C641C AFA0004C */  sw         $zero, 0x4c($sp)
/* C7020 800C6420 8ED00278 */  lw         $s0, 0x278($s6)
/* C7024 800C6424 AEC00278 */  sw         $zero, 0x278($s6)
/* C7028 800C6428 2401FFFE */  addiu      $at, $zero, -2
/* C702C 800C642C 8E190004 */  lw         $t9, 4($s0)
/* C7030 800C6430 03217824 */  and        $t7, $t9, $at
/* C7034 800C6434 AE0F0004 */  sw         $t7, 4($s0)
/* C7038 800C6438 0C031825 */  jal        func_800C6094
/* C703C 800C643C AFB60000 */   sw        $s6, ($sp)
/* C7040 800C6440 8ECE0274 */  lw         $t6, 0x274($s6)
/* C7044 800C6444 8ECF0278 */  lw         $t7, 0x278($s6)
/* C7048 800C6448 02C02025 */  or         $a0, $s6, $zero
/* C704C 800C644C 2DD80001 */  sltiu      $t8, $t6, 1
/* C7050 800C6450 0018C840 */  sll        $t9, $t8, 1
/* C7054 800C6454 2DEE0001 */  sltiu      $t6, $t7, 1
/* C7058 800C6458 032E8025 */  or         $s0, $t9, $t6
/* C705C 800C645C 02003825 */  or         $a3, $s0, $zero
/* C7060 800C6460 27A50050 */  addiu      $a1, $sp, 0x50
/* C7064 800C6464 0C0317AC */  jal        func_800C5EB0
/* C7068 800C6468 27A6004C */   addiu     $a2, $sp, 0x4c
/* C706C 800C646C 1050FFA3 */  beq        $v0, $s0, .L800C62FC
/* C7070 800C6470 02C09825 */   or        $s3, $s6, $zero
/* C7074 800C6474 8FB00050 */  lw         $s0, 0x50($sp)
/* C7078 800C6478 0C031784 */  jal        func_800C5E10
/* C707C 800C647C 8FB1004C */   lw        $s1, 0x4c($sp)
/* C7080 800C6480 1000FF9F */  b          .L800C6300
/* C7084 800C6484 02E02025 */   or        $a0, $s7, $zero
/* C7088 800C6488 8ED00260 */  lw         $s0, 0x260($s6)
.L800C648C:
/* C708C 800C648C 26D10020 */  addiu      $s1, $s6, 0x20
/* C7090 800C6490 5200FF9B */  beql       $s0, $zero, .L800C6300
/* C7094 800C6494 02E02025 */   or        $a0, $s7, $zero
/* C7098 800C6498 8E040004 */  lw         $a0, 4($s0)
.L800C649C:
/* C709C 800C649C 02202825 */  or         $a1, $s1, $zero
/* C70A0 800C64A0 0C02F7A8 */  jal        func_800BDEA0
/* C70A4 800C64A4 00003025 */   or        $a2, $zero, $zero
/* C70A8 800C64A8 8E100000 */  lw         $s0, ($s0)
/* C70AC 800C64AC 5600FFFB */  bnezl      $s0, .L800C649C
/* C70B0 800C64B0 8E040004 */   lw        $a0, 4($s0)
/* C70B4 800C64B4 1000FF92 */  b          .L800C6300
/* C70B8 800C64B8 02E02025 */   or        $a0, $s7, $zero
/* C70BC 800C64BC 00000000 */  nop
/* C70C0 800C64C0 8FBF003C */  lw         $ra, 0x3c($sp)
/* C70C4 800C64C4 8FB00018 */  lw         $s0, 0x18($sp)
/* C70C8 800C64C8 8FB1001C */  lw         $s1, 0x1c($sp)
/* C70CC 800C64CC 8FB20020 */  lw         $s2, 0x20($sp)
/* C70D0 800C64D0 8FB30024 */  lw         $s3, 0x24($sp)
/* C70D4 800C64D4 8FB40028 */  lw         $s4, 0x28($sp)
/* C70D8 800C64D8 8FB5002C */  lw         $s5, 0x2c($sp)
/* C70DC 800C64DC 8FB60030 */  lw         $s6, 0x30($sp)
/* C70E0 800C64E0 8FB70034 */  lw         $s7, 0x34($sp)
/* C70E4 800C64E4 8FBE0038 */  lw         $fp, 0x38($sp)
/* C70E8 800C64E8 03E00008 */  jr         $ra
/* C70EC 800C64EC 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_800C64F0
/* C70F0 800C64F0 03E00008 */  jr         $ra
/* C70F4 800C64F4 24820078 */   addiu     $v0, $a0, 0x78

glabel func_800C64F8
/* C70F8 800C64F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C70FC 800C64FC AFBF0014 */  sw         $ra, 0x14($sp)
/* C7100 800C6500 AFA40020 */  sw         $a0, 0x20($sp)
/* C7104 800C6504 8C830260 */  lw         $v1, 0x260($a0)
/* C7108 800C6508 AFA00018 */  sw         $zero, 0x18($sp)
/* C710C 800C650C AFA50024 */  sw         $a1, 0x24($sp)
/* C7110 800C6510 24040001 */  addiu      $a0, $zero, 1
/* C7114 800C6514 0C030284 */  jal        func_800C0A10
/* C7118 800C6518 AFA3001C */   sw        $v1, 0x1c($sp)
/* C711C 800C651C 8FA3001C */  lw         $v1, 0x1c($sp)
/* C7120 800C6520 8FA50024 */  lw         $a1, 0x24($sp)
/* C7124 800C6524 8FA60018 */  lw         $a2, 0x18($sp)
/* C7128 800C6528 1060000F */  beqz       $v1, .L800C6568
/* C712C 800C652C 00402025 */   or        $a0, $v0, $zero
.L800C6530:
/* C7130 800C6530 5465000A */  bnel       $v1, $a1, .L800C655C
/* C7134 800C6534 00603025 */   or        $a2, $v1, $zero
/* C7138 800C6538 10C00004 */  beqz       $a2, .L800C654C
/* C713C 800C653C 8FB90020 */   lw        $t9, 0x20($sp)
/* C7140 800C6540 8CAF0000 */  lw         $t7, ($a1)
/* C7144 800C6544 10000008 */  b          .L800C6568
/* C7148 800C6548 ACCF0000 */   sw        $t7, ($a2)
.L800C654C:
/* C714C 800C654C 8CB80000 */  lw         $t8, ($a1)
/* C7150 800C6550 10000005 */  b          .L800C6568
/* C7154 800C6554 AF380260 */   sw        $t8, 0x260($t9)
/* C7158 800C6558 00603025 */  or         $a2, $v1, $zero
.L800C655C:
/* C715C 800C655C 8C630000 */  lw         $v1, ($v1)
/* C7160 800C6560 1460FFF3 */  bnez       $v1, .L800C6530
/* C7164 800C6564 00000000 */   nop
.L800C6568:
/* C7168 800C6568 0C030284 */  jal        func_800C0A10
/* C716C 800C656C 00000000 */   nop
/* C7170 800C6570 8FBF0014 */  lw         $ra, 0x14($sp)
/* C7174 800C6574 27BD0020 */  addiu      $sp, $sp, 0x20
/* C7178 800C6578 03E00008 */  jr         $ra
/* C717C 800C657C 00000000 */   nop

glabel func_800C6580
/* C7180 800C6580 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C7184 800C6584 AFBF0014 */  sw         $ra, 0x14($sp)
/* C7188 800C6588 AFA40018 */  sw         $a0, 0x18($sp)
/* C718C 800C658C AFA60020 */  sw         $a2, 0x20($sp)
/* C7190 800C6590 24040001 */  addiu      $a0, $zero, 1
/* C7194 800C6594 0C030284 */  jal        func_800C0A10
/* C7198 800C6598 AFA5001C */   sw        $a1, 0x1c($sp)
/* C719C 800C659C 8FA5001C */  lw         $a1, 0x1c($sp)
/* C71A0 800C65A0 8FAE0020 */  lw         $t6, 0x20($sp)
/* C71A4 800C65A4 8FA30018 */  lw         $v1, 0x18($sp)
/* C71A8 800C65A8 00402025 */  or         $a0, $v0, $zero
/* C71AC 800C65AC ACAE0004 */  sw         $t6, 4($a1)
/* C71B0 800C65B0 8C6F0260 */  lw         $t7, 0x260($v1)
/* C71B4 800C65B4 ACAF0000 */  sw         $t7, ($a1)
/* C71B8 800C65B8 0C030284 */  jal        func_800C0A10
/* C71BC 800C65BC AC650260 */   sw        $a1, 0x260($v1)
/* C71C0 800C65C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C71C4 800C65C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C71C8 800C65C8 03E00008 */  jr         $ra
/* C71CC 800C65CC 00000000 */   nop

glabel func_800C65D0
/* C71D0 800C65D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C71D4 800C65D4 AFB10020 */  sw         $s1, 0x20($sp)
/* C71D8 800C65D8 AFB0001C */  sw         $s0, 0x1c($sp)
/* C71DC 800C65DC AFBF0024 */  sw         $ra, 0x24($sp)
/* C71E0 800C65E0 AFA5002C */  sw         $a1, 0x2c($sp)
/* C71E4 800C65E4 AFA60030 */  sw         $a2, 0x30($sp)
/* C71E8 800C65E8 AFA70034 */  sw         $a3, 0x34($sp)
/* C71EC 800C65EC 240E0001 */  addiu      $t6, $zero, 1
/* C71F0 800C65F0 240F0004 */  addiu      $t7, $zero, 4
/* C71F4 800C65F4 00808025 */  or         $s0, $a0, $zero
/* C71F8 800C65F8 AC800274 */  sw         $zero, 0x274($a0)
/* C71FC 800C65FC AC800278 */  sw         $zero, 0x278($a0)
/* C7200 800C6600 AC800260 */  sw         $zero, 0x260($a0)
/* C7204 800C6604 AC80027C */  sw         $zero, 0x27c($a0)
/* C7208 800C6608 AC800264 */  sw         $zero, 0x264($a0)
/* C720C 800C660C AC800268 */  sw         $zero, 0x268($a0)
/* C7210 800C6610 AC80026C */  sw         $zero, 0x26c($a0)
/* C7214 800C6614 AC800270 */  sw         $zero, 0x270($a0)
/* C7218 800C6618 A48E0000 */  sh         $t6, ($a0)
/* C721C 800C661C A48F0020 */  sh         $t7, 0x20($a0)
/* C7220 800C6620 24910040 */  addiu      $s1, $a0, 0x40
/* C7224 800C6624 02202025 */  or         $a0, $s1, $zero
/* C7228 800C6628 26050058 */  addiu      $a1, $s0, 0x58
/* C722C 800C662C 0C033544 */  jal        func_800CD510
/* C7230 800C6630 24060008 */   addiu     $a2, $zero, 8
/* C7234 800C6634 26040078 */  addiu      $a0, $s0, 0x78
/* C7238 800C6638 26050090 */  addiu      $a1, $s0, 0x90
/* C723C 800C663C 0C033544 */  jal        func_800CD510
/* C7240 800C6640 24060008 */   addiu     $a2, $zero, 8
/* C7244 800C6644 0C034D68 */  jal        func_800D35A0
/* C7248 800C6648 240400FE */   addiu     $a0, $zero, 0xfe
/* C724C 800C664C 93B80037 */  lbu        $t8, 0x37($sp)
/* C7250 800C6650 3C08800E */  lui        $t0, %hi(D_800DA0F0)
/* C7254 800C6654 2508A0F0 */  addiu      $t0, $t0, %lo(D_800DA0F0)
/* C7258 800C6658 0018C880 */  sll        $t9, $t8, 2
/* C725C 800C665C 0338C821 */  addu       $t9, $t9, $t8
/* C7260 800C6660 0019C900 */  sll        $t9, $t9, 4
/* C7264 800C6664 0C031AB8 */  jal        func_800C6AE0
/* C7268 800C6668 03282021 */   addu      $a0, $t9, $t0
/* C726C 800C666C 0C030F44 */  jal        func_800C3D10
/* C7270 800C6670 24040001 */   addiu     $a0, $zero, 1
/* C7274 800C6674 24040004 */  addiu      $a0, $zero, 4
/* C7278 800C6678 02202825 */  or         $a1, $s1, $zero
/* C727C 800C667C 0C03304C */  jal        func_800CC130
/* C7280 800C6680 2406029B */   addiu     $a2, $zero, 0x29b
/* C7284 800C6684 24040009 */  addiu      $a0, $zero, 9
/* C7288 800C6688 02202825 */  or         $a1, $s1, $zero
/* C728C 800C668C 0C03304C */  jal        func_800CC130
/* C7290 800C6690 2406029C */   addiu     $a2, $zero, 0x29c
/* C7294 800C6694 2404000E */  addiu      $a0, $zero, 0xe
/* C7298 800C6698 02202825 */  or         $a1, $s1, $zero
/* C729C 800C669C 0C03304C */  jal        func_800CC130
/* C72A0 800C66A0 2406029D */   addiu     $a2, $zero, 0x29d
/* C72A4 800C66A4 02202025 */  or         $a0, $s1, $zero
/* C72A8 800C66A8 2405029A */  addiu      $a1, $zero, 0x29a
/* C72AC 800C66AC 0C033FE4 */  jal        func_800CFF90
/* C72B0 800C66B0 93A6003B */   lbu       $a2, 0x3b($sp)
/* C72B4 800C66B4 8FA9002C */  lw         $t1, 0x2c($sp)
/* C72B8 800C66B8 8FAA0030 */  lw         $t2, 0x30($sp)
/* C72BC 800C66BC 261100B0 */  addiu      $s1, $s0, 0xb0
/* C72C0 800C66C0 3C06800C */  lui        $a2, %hi(func_800C62C4)
/* C72C4 800C66C4 24C662C4 */  addiu      $a2, $a2, %lo(func_800C62C4)
/* C72C8 800C66C8 02202025 */  or         $a0, $s1, $zero
/* C72CC 800C66CC 24050004 */  addiu      $a1, $zero, 4
/* C72D0 800C66D0 02003825 */  or         $a3, $s0, $zero
/* C72D4 800C66D4 AFA90010 */  sw         $t1, 0x10($sp)
/* C72D8 800C66D8 0C02FF3C */  jal        func_800BFCF0
/* C72DC 800C66DC AFAA0014 */   sw        $t2, 0x14($sp)
/* C72E0 800C66E0 0C034CE8 */  jal        func_800D33A0
/* C72E4 800C66E4 02202025 */   or        $a0, $s1, $zero
/* C72E8 800C66E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* C72EC 800C66EC 8FB0001C */  lw         $s0, 0x1c($sp)
/* C72F0 800C66F0 8FB10020 */  lw         $s1, 0x20($sp)
/* C72F4 800C66F4 03E00008 */  jr         $ra
/* C72F8 800C66F8 27BD0028 */   addiu     $sp, $sp, 0x28
/* C72FC 800C66FC 00000000 */  nop
