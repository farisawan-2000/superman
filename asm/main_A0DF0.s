.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A01F0
/* A0DF0 800A01F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A0DF4 800A01F4 AFA50004 */  sw         $a1, 4($sp)
/* A0DF8 800A01F8 24AE0020 */  addiu      $t6, $a1, 0x20
/* A0DFC 800A01FC AFAE0000 */  sw         $t6, ($sp)
/* A0E00 800A0200 AFA00014 */  sw         $zero, 0x14($sp)
.L800A0204:
/* A0E04 800A0204 AFA00010 */  sw         $zero, 0x10($sp)
.L800A0208:
/* A0E08 800A0208 8FAF0014 */  lw         $t7, 0x14($sp)
/* A0E0C 800A020C 8FA80010 */  lw         $t0, 0x10($sp)
/* A0E10 800A0210 3C014780 */  lui        $at, 0x4780
/* A0E14 800A0214 000FC100 */  sll        $t8, $t7, 4
/* A0E18 800A0218 00084840 */  sll        $t1, $t0, 1
/* A0E1C 800A021C 00095080 */  sll        $t2, $t1, 2
/* A0E20 800A0220 0098C821 */  addu       $t9, $a0, $t8
/* A0E24 800A0224 032A5821 */  addu       $t3, $t9, $t2
/* A0E28 800A0228 C5640000 */  lwc1       $f4, ($t3)
/* A0E2C 800A022C 44813000 */  mtc1       $at, $f6
/* A0E30 800A0230 00000000 */  nop
/* A0E34 800A0234 46062202 */  mul.s      $f8, $f4, $f6
/* A0E38 800A0238 4600428D */  trunc.w.s  $f10, $f8
/* A0E3C 800A023C 440D5000 */  mfc1       $t5, $f10
/* A0E40 800A0240 00000000 */  nop
/* A0E44 800A0244 AFAD000C */  sw         $t5, 0xc($sp)
/* A0E48 800A0248 8FAE0014 */  lw         $t6, 0x14($sp)
/* A0E4C 800A024C 8FA80010 */  lw         $t0, 0x10($sp)
/* A0E50 800A0250 3C014780 */  lui        $at, 0x4780
/* A0E54 800A0254 000E7900 */  sll        $t7, $t6, 4
/* A0E58 800A0258 00084840 */  sll        $t1, $t0, 1
/* A0E5C 800A025C 0009C880 */  sll        $t9, $t1, 2
/* A0E60 800A0260 008FC021 */  addu       $t8, $a0, $t7
/* A0E64 800A0264 03195021 */  addu       $t2, $t8, $t9
/* A0E68 800A0268 C5500004 */  lwc1       $f16, 4($t2)
/* A0E6C 800A026C 44819000 */  mtc1       $at, $f18
/* A0E70 800A0270 00000000 */  nop
/* A0E74 800A0274 46128102 */  mul.s      $f4, $f16, $f18
/* A0E78 800A0278 4600218D */  trunc.w.s  $f6, $f4
/* A0E7C 800A027C 440C3000 */  mfc1       $t4, $f6
/* A0E80 800A0280 00000000 */  nop
/* A0E84 800A0284 AFAC0008 */  sw         $t4, 8($sp)
/* A0E88 800A0288 8FAF0008 */  lw         $t7, 8($sp)
/* A0E8C 800A028C 8FAD000C */  lw         $t5, 0xc($sp)
/* A0E90 800A0290 8FB90004 */  lw         $t9, 4($sp)
/* A0E94 800A0294 3C01FFFF */  lui        $at, 0xffff
/* A0E98 800A0298 000F4403 */  sra        $t0, $t7, 0x10
/* A0E9C 800A029C 3109FFFF */  andi       $t1, $t0, 0xffff
/* A0EA0 800A02A0 01A17024 */  and        $t6, $t5, $at
/* A0EA4 800A02A4 01C9C025 */  or         $t8, $t6, $t1
/* A0EA8 800A02A8 AF380000 */  sw         $t8, ($t9)
/* A0EAC 800A02AC 8FAA0004 */  lw         $t2, 4($sp)
/* A0EB0 800A02B0 254B0004 */  addiu      $t3, $t2, 4
/* A0EB4 800A02B4 AFAB0004 */  sw         $t3, 4($sp)
/* A0EB8 800A02B8 8FAC000C */  lw         $t4, 0xc($sp)
/* A0EBC 800A02BC 8FA80008 */  lw         $t0, 8($sp)
/* A0EC0 800A02C0 8FB80000 */  lw         $t8, ($sp)
/* A0EC4 800A02C4 3C01FFFF */  lui        $at, 0xffff
/* A0EC8 800A02C8 000C6C00 */  sll        $t5, $t4, 0x10
/* A0ECC 800A02CC 01A17824 */  and        $t7, $t5, $at
/* A0ED0 800A02D0 310EFFFF */  andi       $t6, $t0, 0xffff
/* A0ED4 800A02D4 01EE4825 */  or         $t1, $t7, $t6
/* A0ED8 800A02D8 AF090000 */  sw         $t1, ($t8)
/* A0EDC 800A02DC 8FB90000 */  lw         $t9, ($sp)
/* A0EE0 800A02E0 272A0004 */  addiu      $t2, $t9, 4
/* A0EE4 800A02E4 AFAA0000 */  sw         $t2, ($sp)
/* A0EE8 800A02E8 8FAB0010 */  lw         $t3, 0x10($sp)
/* A0EEC 800A02EC 256C0001 */  addiu      $t4, $t3, 1
/* A0EF0 800A02F0 29810002 */  slti       $at, $t4, 2
/* A0EF4 800A02F4 1420FFC4 */  bnez       $at, .L800A0208
/* A0EF8 800A02F8 AFAC0010 */   sw        $t4, 0x10($sp)
/* A0EFC 800A02FC 8FAD0014 */  lw         $t5, 0x14($sp)
/* A0F00 800A0300 25A80001 */  addiu      $t0, $t5, 1
/* A0F04 800A0304 29010004 */  slti       $at, $t0, 4
/* A0F08 800A0308 1420FFBE */  bnez       $at, .L800A0204
/* A0F0C 800A030C AFA80014 */   sw        $t0, 0x14($sp)
/* A0F10 800A0310 10000001 */  b          .L800A0318
/* A0F14 800A0314 00000000 */   nop
.L800A0318:
/* A0F18 800A0318 03E00008 */  jr         $ra
/* A0F1C 800A031C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800A0320
/* A0F20 800A0320 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A0F24 800A0324 AFA5000C */  sw         $a1, 0xc($sp)
/* A0F28 800A0328 24AE0020 */  addiu      $t6, $a1, 0x20
/* A0F2C 800A032C AFAE0008 */  sw         $t6, 8($sp)
/* A0F30 800A0330 AFA0001C */  sw         $zero, 0x1c($sp)
.L800A0334:
/* A0F34 800A0334 AFA00018 */  sw         $zero, 0x18($sp)
.L800A0338:
/* A0F38 800A0338 8FAF0008 */  lw         $t7, 8($sp)
/* A0F3C 800A033C 8FA9000C */  lw         $t1, 0xc($sp)
/* A0F40 800A0340 3C01FFFF */  lui        $at, 0xffff
/* A0F44 800A0344 8DF80000 */  lw         $t8, ($t7)
/* A0F48 800A0348 8D2A0000 */  lw         $t2, ($t1)
/* A0F4C 800A034C 0018CC02 */  srl        $t9, $t8, 0x10
/* A0F50 800A0350 3328FFFF */  andi       $t0, $t9, 0xffff
/* A0F54 800A0354 01415824 */  and        $t3, $t2, $at
/* A0F58 800A0358 010B6025 */  or         $t4, $t0, $t3
/* A0F5C 800A035C AFAC0014 */  sw         $t4, 0x14($sp)
/* A0F60 800A0360 8FB8000C */  lw         $t8, 0xc($sp)
/* A0F64 800A0364 8FAD0008 */  lw         $t5, 8($sp)
/* A0F68 800A0368 3C01FFFF */  lui        $at, 0xffff
/* A0F6C 800A036C 8F190000 */  lw         $t9, ($t8)
/* A0F70 800A0370 8DAE0000 */  lw         $t6, ($t5)
/* A0F74 800A0374 270B0004 */  addiu      $t3, $t8, 4
/* A0F78 800A0378 00194C00 */  sll        $t1, $t9, 0x10
/* A0F7C 800A037C 01215024 */  and        $t2, $t1, $at
/* A0F80 800A0380 31CFFFFF */  andi       $t7, $t6, 0xffff
/* A0F84 800A0384 01EA4025 */  or         $t0, $t7, $t2
/* A0F88 800A0388 25AC0004 */  addiu      $t4, $t5, 4
/* A0F8C 800A038C AFAC0008 */  sw         $t4, 8($sp)
/* A0F90 800A0390 AFA80010 */  sw         $t0, 0x10($sp)
/* A0F94 800A0394 AFAB000C */  sw         $t3, 0xc($sp)
/* A0F98 800A0398 27AE0014 */  addiu      $t6, $sp, 0x14
/* A0F9C 800A039C 8DD90000 */  lw         $t9, ($t6)
/* A0FA0 800A03A0 AFB90004 */  sw         $t9, 4($sp)
/* A0FA4 800A03A4 27A90010 */  addiu      $t1, $sp, 0x10
/* A0FA8 800A03A8 8D2F0000 */  lw         $t7, ($t1)
/* A0FAC 800A03AC AFAF0000 */  sw         $t7, ($sp)
/* A0FB0 800A03B0 8FAA0004 */  lw         $t2, 4($sp)
/* A0FB4 800A03B4 3C013780 */  lui        $at, 0x3780
/* A0FB8 800A03B8 44814000 */  mtc1       $at, $f8
/* A0FBC 800A03BC 448A2000 */  mtc1       $t2, $f4
/* A0FC0 800A03C0 8FA8001C */  lw         $t0, 0x1c($sp)
/* A0FC4 800A03C4 8FAD0018 */  lw         $t5, 0x18($sp)
/* A0FC8 800A03C8 468021A0 */  cvt.s.w    $f6, $f4
/* A0FCC 800A03CC 0008C100 */  sll        $t8, $t0, 4
/* A0FD0 800A03D0 000D6040 */  sll        $t4, $t5, 1
/* A0FD4 800A03D4 000C7080 */  sll        $t6, $t4, 2
/* A0FD8 800A03D8 00985821 */  addu       $t3, $a0, $t8
/* A0FDC 800A03DC 016EC821 */  addu       $t9, $t3, $t6
/* A0FE0 800A03E0 46083282 */  mul.s      $f10, $f6, $f8
/* A0FE4 800A03E4 E72A0000 */  swc1       $f10, ($t9)
/* A0FE8 800A03E8 8FA90000 */  lw         $t1, ($sp)
/* A0FEC 800A03EC 3C013780 */  lui        $at, 0x3780
/* A0FF0 800A03F0 44812000 */  mtc1       $at, $f4
/* A0FF4 800A03F4 44898000 */  mtc1       $t1, $f16
/* A0FF8 800A03F8 8FAF001C */  lw         $t7, 0x1c($sp)
/* A0FFC 800A03FC 8FB80018 */  lw         $t8, 0x18($sp)
/* A1000 800A0400 468084A0 */  cvt.s.w    $f18, $f16
/* A1004 800A0404 000F5100 */  sll        $t2, $t7, 4
/* A1008 800A0408 00186840 */  sll        $t5, $t8, 1
/* A100C 800A040C 000D6080 */  sll        $t4, $t5, 2
/* A1010 800A0410 008A4021 */  addu       $t0, $a0, $t2
/* A1014 800A0414 010C5821 */  addu       $t3, $t0, $t4
/* A1018 800A0418 46049182 */  mul.s      $f6, $f18, $f4
/* A101C 800A041C E5660004 */  swc1       $f6, 4($t3)
/* A1020 800A0420 8FAE0018 */  lw         $t6, 0x18($sp)
/* A1024 800A0424 25D90001 */  addiu      $t9, $t6, 1
/* A1028 800A0428 2B210002 */  slti       $at, $t9, 2
/* A102C 800A042C 1420FFC2 */  bnez       $at, .L800A0338
/* A1030 800A0430 AFB90018 */   sw        $t9, 0x18($sp)
/* A1034 800A0434 8FA9001C */  lw         $t1, 0x1c($sp)
/* A1038 800A0438 252F0001 */  addiu      $t7, $t1, 1
/* A103C 800A043C 29E10004 */  slti       $at, $t7, 4
/* A1040 800A0440 1420FFBC */  bnez       $at, .L800A0334
/* A1044 800A0444 AFAF001C */   sw        $t7, 0x1c($sp)
/* A1048 800A0448 10000001 */  b          .L800A0450
/* A104C 800A044C 00000000 */   nop
.L800A0450:
/* A1050 800A0450 03E00008 */  jr         $ra
/* A1054 800A0454 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800A0458
/* A1058 800A0458 27BDFFF8 */  addiu      $sp, $sp, -8
/* A105C 800A045C AFA00004 */  sw         $zero, 4($sp)
.L800A0460:
/* A1060 800A0460 AFA00000 */  sw         $zero, ($sp)
.L800A0464:
/* A1064 800A0464 8FAE0004 */  lw         $t6, 4($sp)
/* A1068 800A0468 8FAF0000 */  lw         $t7, ($sp)
/* A106C 800A046C 15CF000B */  bne        $t6, $t7, .L800A049C
/* A1070 800A0470 00000000 */   nop
/* A1074 800A0474 8FB80004 */  lw         $t8, 4($sp)
/* A1078 800A0478 8FA90000 */  lw         $t1, ($sp)
/* A107C 800A047C 3C013F80 */  lui        $at, 0x3f80
/* A1080 800A0480 0018C900 */  sll        $t9, $t8, 4
/* A1084 800A0484 44812000 */  mtc1       $at, $f4
/* A1088 800A0488 00994021 */  addu       $t0, $a0, $t9
/* A108C 800A048C 00095080 */  sll        $t2, $t1, 2
/* A1090 800A0490 010A5821 */  addu       $t3, $t0, $t2
/* A1094 800A0494 10000009 */  b          .L800A04BC
/* A1098 800A0498 E5640000 */   swc1      $f4, ($t3)
.L800A049C:
/* A109C 800A049C 8FAC0004 */  lw         $t4, 4($sp)
/* A10A0 800A04A0 8FAF0000 */  lw         $t7, ($sp)
/* A10A4 800A04A4 44803000 */  mtc1       $zero, $f6
/* A10A8 800A04A8 000C6900 */  sll        $t5, $t4, 4
/* A10AC 800A04AC 008D7021 */  addu       $t6, $a0, $t5
/* A10B0 800A04B0 000FC080 */  sll        $t8, $t7, 2
/* A10B4 800A04B4 01D8C821 */  addu       $t9, $t6, $t8
/* A10B8 800A04B8 E7260000 */  swc1       $f6, ($t9)
.L800A04BC:
/* A10BC 800A04BC 8FA90000 */  lw         $t1, ($sp)
/* A10C0 800A04C0 25280001 */  addiu      $t0, $t1, 1
/* A10C4 800A04C4 29010004 */  slti       $at, $t0, 4
/* A10C8 800A04C8 1420FFE6 */  bnez       $at, .L800A0464
/* A10CC 800A04CC AFA80000 */   sw        $t0, ($sp)
/* A10D0 800A04D0 8FAA0004 */  lw         $t2, 4($sp)
/* A10D4 800A04D4 254B0001 */  addiu      $t3, $t2, 1
/* A10D8 800A04D8 29610004 */  slti       $at, $t3, 4
/* A10DC 800A04DC 1420FFE0 */  bnez       $at, .L800A0460
/* A10E0 800A04E0 AFAB0004 */   sw        $t3, 4($sp)
/* A10E4 800A04E4 10000001 */  b          .L800A04EC
/* A10E8 800A04E8 00000000 */   nop
.L800A04EC:
/* A10EC 800A04EC 03E00008 */  jr         $ra
/* A10F0 800A04F0 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A04F4
/* A10F4 800A04F4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A10F8 800A04F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A10FC 800A04FC AFA40058 */  sw         $a0, 0x58($sp)
/* A1100 800A0500 0C028116 */  jal        func_800A0458
/* A1104 800A0504 27A40018 */   addiu     $a0, $sp, 0x18
/* A1108 800A0508 27A40018 */  addiu      $a0, $sp, 0x18
/* A110C 800A050C 0C02807C */  jal        func_800A01F0
/* A1110 800A0510 8FA50058 */   lw        $a1, 0x58($sp)
/* A1114 800A0514 10000001 */  b          .L800A051C
/* A1118 800A0518 00000000 */   nop
.L800A051C:
/* A111C 800A051C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1120 800A0520 27BD0058 */  addiu      $sp, $sp, 0x58
/* A1124 800A0524 03E00008 */  jr         $ra
/* A1128 800A0528 00000000 */   nop
/* A112C 800A052C 00000000 */  nop
