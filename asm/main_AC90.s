.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000A090
/* AC90 8000A090 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* AC94 8000A094 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC98 8000A098 3C0E0010 */  lui        $t6, 0x10
/* AC9C 8000A09C 3C0F0012 */  lui        $t7, 0x12
/* ACA0 8000A0A0 25EF3CD0 */  addiu      $t7, $t7, 0x3cd0
/* ACA4 8000A0A4 25CE3430 */  addiu      $t6, $t6, 0x3430
/* ACA8 8000A0A8 3C058016 */  lui        $a1, %hi(D_8015E840)
/* ACAC 8000A0AC 24A5E840 */  addiu      $a1, $a1, %lo(D_8015E840)
/* ACB0 8000A0B0 01C02025 */  or         $a0, $t6, $zero
/* ACB4 8000A0B4 0C0003F0 */  jal        func_80000FC0
/* ACB8 8000A0B8 01EE3023 */   subu      $a2, $t7, $t6
/* ACBC 8000A0BC 0C00330C */  jal        func_8000CC30
/* ACC0 8000A0C0 00000000 */   nop
/* ACC4 8000A0C4 0C001146 */  jal        func_80004518
/* ACC8 8000A0C8 00000000 */   nop
/* ACCC 8000A0CC 3C18800F */  lui        $t8, %hi(D_800EA0D8)
/* ACD0 8000A0D0 2718A0D8 */  addiu      $t8, $t8, %lo(D_800EA0D8)
/* ACD4 8000A0D4 97190000 */  lhu        $t9, ($t8)
/* ACD8 8000A0D8 33281000 */  andi       $t0, $t9, 0x1000
/* ACDC 8000A0DC 11000004 */  beqz       $t0, .L8000A0F0
/* ACE0 8000A0E0 00000000 */   nop
/* ACE4 8000A0E4 24090017 */  addiu      $t1, $zero, 0x17
/* ACE8 8000A0E8 3C01800D */  lui        $at, %hi(D_800D6300)
/* ACEC 8000A0EC AC296300 */  sw         $t1, %lo(D_800D6300)($at)
.L8000A0F0:
/* ACF0 8000A0F0 3C0B800E */  lui        $t3, %hi(D_800DB510)
/* ACF4 8000A0F4 256BB510 */  addiu      $t3, $t3, %lo(D_800DB510)
/* ACF8 8000A0F8 256F0024 */  addiu      $t7, $t3, 0x24
/* ACFC 8000A0FC 27AA001C */  addiu      $t2, $sp, 0x1c
.L8000A100:
/* AD00 8000A100 8D6D0000 */  lw         $t5, ($t3)
/* AD04 8000A104 256B000C */  addiu      $t3, $t3, 0xc
/* AD08 8000A108 254A000C */  addiu      $t2, $t2, 0xc
/* AD0C 8000A10C AD4DFFF4 */  sw         $t5, -0xc($t2)
/* AD10 8000A110 8D6CFFF8 */  lw         $t4, -8($t3)
/* AD14 8000A114 AD4CFFF8 */  sw         $t4, -8($t2)
/* AD18 8000A118 8D6DFFFC */  lw         $t5, -4($t3)
/* AD1C 8000A11C 156FFFF8 */  bne        $t3, $t7, .L8000A100
/* AD20 8000A120 AD4DFFFC */   sw        $t5, -4($t2)
/* AD24 8000A124 8D6D0000 */  lw         $t5, ($t3)
/* AD28 8000A128 8D6C0004 */  lw         $t4, 4($t3)
/* AD2C 8000A12C AD4D0000 */  sw         $t5, ($t2)
/* AD30 8000A130 996D000A */  lwr        $t5, 0xa($t3)
/* AD34 8000A134 AD4C0004 */  sw         $t4, 4($t2)
/* AD38 8000A138 B94D000A */  swr        $t5, 0xa($t2)
/* AD3C 8000A13C A7A0004E */  sh         $zero, 0x4e($sp)
.L8000A140:
/* AD40 8000A140 87B8004E */  lh         $t8, 0x4e($sp)
/* AD44 8000A144 87AF004E */  lh         $t7, 0x4e($sp)
/* AD48 8000A148 87A8004E */  lh         $t0, 0x4e($sp)
/* AD4C 8000A14C 3C01801C */  lui        $at, %hi(D_801C5FC8)
/* AD50 8000A150 0018C840 */  sll        $t9, $t8, 1
/* AD54 8000A154 00390821 */  addu       $at, $at, $t9
/* AD58 8000A158 240E0020 */  addiu      $t6, $zero, 0x20
/* AD5C 8000A15C A02E5FC8 */  sb         $t6, %lo(D_801C5FC8)($at)
/* AD60 8000A160 3C01801C */  lui        $at, 0x801c
/* AD64 8000A164 25EB0001 */  addiu      $t3, $t7, 1
/* AD68 8000A168 00084840 */  sll        $t1, $t0, 1
/* AD6C 8000A16C 000B5400 */  sll        $t2, $t3, 0x10
/* AD70 8000A170 00290821 */  addu       $at, $at, $t1
/* AD74 8000A174 000A6403 */  sra        $t4, $t2, 0x10
/* AD78 8000A178 A0205FC9 */  sb         $zero, 0x5fc9($at)
/* AD7C 8000A17C 29810080 */  slti       $at, $t4, 0x80
/* AD80 8000A180 1420FFEF */  bnez       $at, .L8000A140
/* AD84 8000A184 A7AB004E */   sh        $t3, 0x4e($sp)
/* AD88 8000A188 A7A0004E */  sh         $zero, 0x4e($sp)
/* AD8C 8000A18C 27AD001C */  addiu      $t5, $sp, 0x1c
/* AD90 8000A190 91B80000 */  lbu        $t8, ($t5)
/* AD94 8000A194 13000107 */  beqz       $t8, .L8000A5B4
/* AD98 8000A198 00000000 */   nop
.L8000A19C:
/* AD9C 8000A19C 87AE004E */  lh         $t6, 0x4e($sp)
/* ADA0 8000A1A0 03AEC821 */  addu       $t9, $sp, $t6
/* ADA4 8000A1A4 9339001C */  lbu        $t9, 0x1c($t9)
/* ADA8 8000A1A8 2728FF40 */  addiu      $t0, $t9, -0xc0
/* ADAC 8000A1AC 2D01003D */  sltiu      $at, $t0, 0x3d
/* ADB0 8000A1B0 102000EF */  beqz       $at, .L8000A570
/* ADB4 8000A1B4 A3B9001B */   sb        $t9, 0x1b($sp)
/* ADB8 8000A1B8 00084080 */  sll        $t0, $t0, 2
/* ADBC 8000A1BC 3C01800E */  lui        $at, %hi(D_800DB540)
/* ADC0 8000A1C0 00280821 */  addu       $at, $at, $t0
/* ADC4 8000A1C4 8C28B540 */  lw         $t0, %lo(D_800DB540)($at)
/* ADC8 8000A1C8 01000008 */  jr         $t0
/* ADCC 8000A1CC 00000000 */   nop
/* ADD0 8000A1D0 87AF004E */  lh         $t7, 0x4e($sp)
/* ADD4 8000A1D4 93AC001B */  lbu        $t4, 0x1b($sp)
/* ADD8 8000A1D8 3C01801C */  lui        $at, 0x801c
/* ADDC 8000A1DC 03AF5821 */  addu       $t3, $sp, $t7
/* ADE0 8000A1E0 916B001C */  lbu        $t3, 0x1c($t3)
/* ADE4 8000A1E4 24090001 */  addiu      $t1, $zero, 1
/* ADE8 8000A1E8 258DFF3F */  addiu      $t5, $t4, -0xc1
/* ADEC 8000A1EC 000B5040 */  sll        $t2, $t3, 1
/* ADF0 8000A1F0 002A0821 */  addu       $at, $at, $t2
/* ADF4 8000A1F4 A0295EC9 */  sb         $t1, 0x5ec9($at)
/* ADF8 8000A1F8 2DA1003A */  sltiu      $at, $t5, 0x3a
/* ADFC 8000A1FC 102000DC */  beqz       $at, .L8000A570
/* AE00 8000A200 00000000 */   nop
/* AE04 8000A204 000D6880 */  sll        $t5, $t5, 2
/* AE08 8000A208 3C01800E */  lui        $at, %hi(D_800DB634)
/* AE0C 8000A20C 002D0821 */  addu       $at, $at, $t5
/* AE10 8000A210 8C2DB634 */  lw         $t5, %lo(D_800DB634)($at)
/* AE14 8000A214 01A00008 */  jr         $t5
/* AE18 8000A218 00000000 */   nop
/* AE1C 8000A21C 24180065 */  addiu      $t8, $zero, 0x65
/* AE20 8000A220 100000D3 */  b          .L8000A570
/* AE24 8000A224 A3B8001B */   sb        $t8, 0x1b($sp)
/* AE28 8000A228 240E0045 */  addiu      $t6, $zero, 0x45
/* AE2C 8000A22C 100000D0 */  b          .L8000A570
/* AE30 8000A230 A3AE001B */   sb        $t6, 0x1b($sp)
/* AE34 8000A234 24190061 */  addiu      $t9, $zero, 0x61
/* AE38 8000A238 100000CD */  b          .L8000A570
/* AE3C 8000A23C A3B9001B */   sb        $t9, 0x1b($sp)
/* AE40 8000A240 24080041 */  addiu      $t0, $zero, 0x41
/* AE44 8000A244 100000CA */  b          .L8000A570
/* AE48 8000A248 A3A8001B */   sb        $t0, 0x1b($sp)
/* AE4C 8000A24C 240F0069 */  addiu      $t7, $zero, 0x69
/* AE50 8000A250 100000C7 */  b          .L8000A570
/* AE54 8000A254 A3AF001B */   sb        $t7, 0x1b($sp)
/* AE58 8000A258 240B0049 */  addiu      $t3, $zero, 0x49
/* AE5C 8000A25C 100000C4 */  b          .L8000A570
/* AE60 8000A260 A3AB001B */   sb        $t3, 0x1b($sp)
/* AE64 8000A264 24090075 */  addiu      $t1, $zero, 0x75
/* AE68 8000A268 100000C1 */  b          .L8000A570
/* AE6C 8000A26C A3A9001B */   sb        $t1, 0x1b($sp)
/* AE70 8000A270 240A0055 */  addiu      $t2, $zero, 0x55
/* AE74 8000A274 100000BE */  b          .L8000A570
/* AE78 8000A278 A3AA001B */   sb        $t2, 0x1b($sp)
/* AE7C 8000A27C 240C006F */  addiu      $t4, $zero, 0x6f
/* AE80 8000A280 100000BB */  b          .L8000A570
/* AE84 8000A284 A3AC001B */   sb        $t4, 0x1b($sp)
/* AE88 8000A288 240D004F */  addiu      $t5, $zero, 0x4f
/* AE8C 8000A28C 100000B8 */  b          .L8000A570
/* AE90 8000A290 A3AD001B */   sb        $t5, 0x1b($sp)
/* AE94 8000A294 87AE004E */  lh         $t6, 0x4e($sp)
/* AE98 8000A298 93AF001B */  lbu        $t7, 0x1b($sp)
/* AE9C 8000A29C 3C01801C */  lui        $at, 0x801c
/* AEA0 8000A2A0 03AEC821 */  addu       $t9, $sp, $t6
/* AEA4 8000A2A4 9339001C */  lbu        $t9, 0x1c($t9)
/* AEA8 8000A2A8 24180002 */  addiu      $t8, $zero, 2
/* AEAC 8000A2AC 25EBFF40 */  addiu      $t3, $t7, -0xc0
/* AEB0 8000A2B0 00194040 */  sll        $t0, $t9, 1
/* AEB4 8000A2B4 00280821 */  addu       $at, $at, $t0
/* AEB8 8000A2B8 A0385EC9 */  sb         $t8, 0x5ec9($at)
/* AEBC 8000A2BC 2D61003A */  sltiu      $at, $t3, 0x3a
/* AEC0 8000A2C0 102000AB */  beqz       $at, .L8000A570
/* AEC4 8000A2C4 00000000 */   nop
/* AEC8 8000A2C8 000B5880 */  sll        $t3, $t3, 2
/* AECC 8000A2CC 3C01800E */  lui        $at, %hi(D_800DB71C)
/* AED0 8000A2D0 002B0821 */  addu       $at, $at, $t3
/* AED4 8000A2D4 8C2BB71C */  lw         $t3, %lo(D_800DB71C)($at)
/* AED8 8000A2D8 01600008 */  jr         $t3
/* AEDC 8000A2DC 00000000 */   nop
/* AEE0 8000A2E0 24090065 */  addiu      $t1, $zero, 0x65
/* AEE4 8000A2E4 100000A2 */  b          .L8000A570
/* AEE8 8000A2E8 A3A9001B */   sb        $t1, 0x1b($sp)
/* AEEC 8000A2EC 240A0045 */  addiu      $t2, $zero, 0x45
/* AEF0 8000A2F0 1000009F */  b          .L8000A570
/* AEF4 8000A2F4 A3AA001B */   sb        $t2, 0x1b($sp)
/* AEF8 8000A2F8 240C0061 */  addiu      $t4, $zero, 0x61
/* AEFC 8000A2FC 1000009C */  b          .L8000A570
/* AF00 8000A300 A3AC001B */   sb        $t4, 0x1b($sp)
/* AF04 8000A304 240D0041 */  addiu      $t5, $zero, 0x41
/* AF08 8000A308 10000099 */  b          .L8000A570
/* AF0C 8000A30C A3AD001B */   sb        $t5, 0x1b($sp)
/* AF10 8000A310 240E0069 */  addiu      $t6, $zero, 0x69
/* AF14 8000A314 10000096 */  b          .L8000A570
/* AF18 8000A318 A3AE001B */   sb        $t6, 0x1b($sp)
/* AF1C 8000A31C 24190049 */  addiu      $t9, $zero, 0x49
/* AF20 8000A320 10000093 */  b          .L8000A570
/* AF24 8000A324 A3B9001B */   sb        $t9, 0x1b($sp)
/* AF28 8000A328 24180075 */  addiu      $t8, $zero, 0x75
/* AF2C 8000A32C 10000090 */  b          .L8000A570
/* AF30 8000A330 A3B8001B */   sb        $t8, 0x1b($sp)
/* AF34 8000A334 24080055 */  addiu      $t0, $zero, 0x55
/* AF38 8000A338 1000008D */  b          .L8000A570
/* AF3C 8000A33C A3A8001B */   sb        $t0, 0x1b($sp)
/* AF40 8000A340 240F006F */  addiu      $t7, $zero, 0x6f
/* AF44 8000A344 1000008A */  b          .L8000A570
/* AF48 8000A348 A3AF001B */   sb        $t7, 0x1b($sp)
/* AF4C 8000A34C 240B004F */  addiu      $t3, $zero, 0x4f
/* AF50 8000A350 10000087 */  b          .L8000A570
/* AF54 8000A354 A3AB001B */   sb        $t3, 0x1b($sp)
/* AF58 8000A358 87AA004E */  lh         $t2, 0x4e($sp)
/* AF5C 8000A35C 93AE001B */  lbu        $t6, 0x1b($sp)
/* AF60 8000A360 3C01801C */  lui        $at, 0x801c
/* AF64 8000A364 03AA6021 */  addu       $t4, $sp, $t2
/* AF68 8000A368 918C001C */  lbu        $t4, 0x1c($t4)
/* AF6C 8000A36C 24090003 */  addiu      $t1, $zero, 3
/* AF70 8000A370 25D9FF3E */  addiu      $t9, $t6, -0xc2
/* AF74 8000A374 000C6840 */  sll        $t5, $t4, 1
/* AF78 8000A378 002D0821 */  addu       $at, $at, $t5
/* AF7C 8000A37C A0295EC9 */  sb         $t1, 0x5ec9($at)
/* AF80 8000A380 2F21003A */  sltiu      $at, $t9, 0x3a
/* AF84 8000A384 1020007A */  beqz       $at, .L8000A570
/* AF88 8000A388 00000000 */   nop
/* AF8C 8000A38C 0019C880 */  sll        $t9, $t9, 2
/* AF90 8000A390 3C01800E */  lui        $at, %hi(D_800DB804)
/* AF94 8000A394 00390821 */  addu       $at, $at, $t9
/* AF98 8000A398 8C39B804 */  lw         $t9, %lo(D_800DB804)($at)
/* AF9C 8000A39C 03200008 */  jr         $t9
/* AFA0 8000A3A0 00000000 */   nop
/* AFA4 8000A3A4 24180065 */  addiu      $t8, $zero, 0x65
/* AFA8 8000A3A8 10000071 */  b          .L8000A570
/* AFAC 8000A3AC A3B8001B */   sb        $t8, 0x1b($sp)
/* AFB0 8000A3B0 24080045 */  addiu      $t0, $zero, 0x45
/* AFB4 8000A3B4 1000006E */  b          .L8000A570
/* AFB8 8000A3B8 A3A8001B */   sb        $t0, 0x1b($sp)
/* AFBC 8000A3BC 240F0061 */  addiu      $t7, $zero, 0x61
/* AFC0 8000A3C0 1000006B */  b          .L8000A570
/* AFC4 8000A3C4 A3AF001B */   sb        $t7, 0x1b($sp)
/* AFC8 8000A3C8 240B0041 */  addiu      $t3, $zero, 0x41
/* AFCC 8000A3CC 10000068 */  b          .L8000A570
/* AFD0 8000A3D0 A3AB001B */   sb        $t3, 0x1b($sp)
/* AFD4 8000A3D4 240A0069 */  addiu      $t2, $zero, 0x69
/* AFD8 8000A3D8 10000065 */  b          .L8000A570
/* AFDC 8000A3DC A3AA001B */   sb        $t2, 0x1b($sp)
/* AFE0 8000A3E0 240C0049 */  addiu      $t4, $zero, 0x49
/* AFE4 8000A3E4 10000062 */  b          .L8000A570
/* AFE8 8000A3E8 A3AC001B */   sb        $t4, 0x1b($sp)
/* AFEC 8000A3EC 24090075 */  addiu      $t1, $zero, 0x75
/* AFF0 8000A3F0 1000005F */  b          .L8000A570
/* AFF4 8000A3F4 A3A9001B */   sb        $t1, 0x1b($sp)
/* AFF8 8000A3F8 240D0055 */  addiu      $t5, $zero, 0x55
/* AFFC 8000A3FC 1000005C */  b          .L8000A570
/* B000 8000A400 A3AD001B */   sb        $t5, 0x1b($sp)
/* B004 8000A404 240E006F */  addiu      $t6, $zero, 0x6f
/* B008 8000A408 10000059 */  b          .L8000A570
/* B00C 8000A40C A3AE001B */   sb        $t6, 0x1b($sp)
/* B010 8000A410 2419004F */  addiu      $t9, $zero, 0x4f
/* B014 8000A414 10000056 */  b          .L8000A570
/* B018 8000A418 A3B9001B */   sb        $t9, 0x1b($sp)
/* B01C 8000A41C 87A8004E */  lh         $t0, 0x4e($sp)
/* B020 8000A420 93AA001B */  lbu        $t2, 0x1b($sp)
/* B024 8000A424 3C01801C */  lui        $at, 0x801c
/* B028 8000A428 03A87821 */  addu       $t7, $sp, $t0
/* B02C 8000A42C 91EF001C */  lbu        $t7, 0x1c($t7)
/* B030 8000A430 24180004 */  addiu      $t8, $zero, 4
/* B034 8000A434 254CFF3C */  addiu      $t4, $t2, -0xc4
/* B038 8000A438 000F5840 */  sll        $t3, $t7, 1
/* B03C 8000A43C 002B0821 */  addu       $at, $at, $t3
/* B040 8000A440 A0385EC9 */  sb         $t8, 0x5ec9($at)
/* B044 8000A444 2D810039 */  sltiu      $at, $t4, 0x39
/* B048 8000A448 10200049 */  beqz       $at, .L8000A570
/* B04C 8000A44C 00000000 */   nop
/* B050 8000A450 000C6080 */  sll        $t4, $t4, 2
/* B054 8000A454 3C01800E */  lui        $at, %hi(D_800DB8EC)
/* B058 8000A458 002C0821 */  addu       $at, $at, $t4
/* B05C 8000A45C 8C2CB8EC */  lw         $t4, %lo(D_800DB8EC)($at)
/* B060 8000A460 01800008 */  jr         $t4
/* B064 8000A464 00000000 */   nop
/* B068 8000A468 24090065 */  addiu      $t1, $zero, 0x65
/* B06C 8000A46C 10000040 */  b          .L8000A570
/* B070 8000A470 A3A9001B */   sb        $t1, 0x1b($sp)
/* B074 8000A474 240D0045 */  addiu      $t5, $zero, 0x45
/* B078 8000A478 1000003D */  b          .L8000A570
/* B07C 8000A47C A3AD001B */   sb        $t5, 0x1b($sp)
/* B080 8000A480 240E0061 */  addiu      $t6, $zero, 0x61
/* B084 8000A484 1000003A */  b          .L8000A570
/* B088 8000A488 A3AE001B */   sb        $t6, 0x1b($sp)
/* B08C 8000A48C 24190041 */  addiu      $t9, $zero, 0x41
/* B090 8000A490 10000037 */  b          .L8000A570
/* B094 8000A494 A3B9001B */   sb        $t9, 0x1b($sp)
/* B098 8000A498 24080069 */  addiu      $t0, $zero, 0x69
/* B09C 8000A49C 10000034 */  b          .L8000A570
/* B0A0 8000A4A0 A3A8001B */   sb        $t0, 0x1b($sp)
/* B0A4 8000A4A4 240F0049 */  addiu      $t7, $zero, 0x49
/* B0A8 8000A4A8 10000031 */  b          .L8000A570
/* B0AC 8000A4AC A3AF001B */   sb        $t7, 0x1b($sp)
/* B0B0 8000A4B0 24180075 */  addiu      $t8, $zero, 0x75
/* B0B4 8000A4B4 1000002E */  b          .L8000A570
/* B0B8 8000A4B8 A3B8001B */   sb        $t8, 0x1b($sp)
/* B0BC 8000A4BC 240B0055 */  addiu      $t3, $zero, 0x55
/* B0C0 8000A4C0 1000002B */  b          .L8000A570
/* B0C4 8000A4C4 A3AB001B */   sb        $t3, 0x1b($sp)
/* B0C8 8000A4C8 240A006F */  addiu      $t2, $zero, 0x6f
/* B0CC 8000A4CC 10000028 */  b          .L8000A570
/* B0D0 8000A4D0 A3AA001B */   sb        $t2, 0x1b($sp)
/* B0D4 8000A4D4 240C004F */  addiu      $t4, $zero, 0x4f
/* B0D8 8000A4D8 10000025 */  b          .L8000A570
/* B0DC 8000A4DC A3AC001B */   sb        $t4, 0x1b($sp)
/* B0E0 8000A4E0 87AD004E */  lh         $t5, 0x4e($sp)
/* B0E4 8000A4E4 93A8001B */  lbu        $t0, 0x1b($sp)
/* B0E8 8000A4E8 3C01801C */  lui        $at, 0x801c
/* B0EC 8000A4EC 03AD7021 */  addu       $t6, $sp, $t5
/* B0F0 8000A4F0 91CE001C */  lbu        $t6, 0x1c($t6)
/* B0F4 8000A4F4 24090005 */  addiu      $t1, $zero, 5
/* B0F8 8000A4F8 250FFF3D */  addiu      $t7, $t0, -0xc3
/* B0FC 8000A4FC 000EC840 */  sll        $t9, $t6, 1
/* B100 8000A500 00390821 */  addu       $at, $at, $t9
/* B104 8000A504 A0295EC9 */  sb         $t1, 0x5ec9($at)
/* B108 8000A508 2DE10033 */  sltiu      $at, $t7, 0x33
/* B10C 8000A50C 10200018 */  beqz       $at, .L8000A570
/* B110 8000A510 00000000 */   nop
/* B114 8000A514 000F7880 */  sll        $t7, $t7, 2
/* B118 8000A518 3C01800E */  lui        $at, %hi(D_800DB9D0)
/* B11C 8000A51C 002F0821 */  addu       $at, $at, $t7
/* B120 8000A520 8C2FB9D0 */  lw         $t7, %lo(D_800DB9D0)($at)
/* B124 8000A524 01E00008 */  jr         $t7
/* B128 8000A528 00000000 */   nop
/* B12C 8000A52C 24180061 */  addiu      $t8, $zero, 0x61
/* B130 8000A530 1000000F */  b          .L8000A570
/* B134 8000A534 A3B8001B */   sb        $t8, 0x1b($sp)
/* B138 8000A538 240B0041 */  addiu      $t3, $zero, 0x41
/* B13C 8000A53C 1000000C */  b          .L8000A570
/* B140 8000A540 A3AB001B */   sb        $t3, 0x1b($sp)
/* B144 8000A544 240A006F */  addiu      $t2, $zero, 0x6f
/* B148 8000A548 10000009 */  b          .L8000A570
/* B14C 8000A54C A3AA001B */   sb        $t2, 0x1b($sp)
/* B150 8000A550 240C004F */  addiu      $t4, $zero, 0x4f
/* B154 8000A554 10000006 */  b          .L8000A570
/* B158 8000A558 A3AC001B */   sb        $t4, 0x1b($sp)
/* B15C 8000A55C 240D006E */  addiu      $t5, $zero, 0x6e
/* B160 8000A560 10000003 */  b          .L8000A570
/* B164 8000A564 A3AD001B */   sb        $t5, 0x1b($sp)
/* B168 8000A568 240E004E */  addiu      $t6, $zero, 0x4e
/* B16C 8000A56C A3AE001B */  sb         $t6, 0x1b($sp)
.L8000A570:
/* B170 8000A570 87B9004E */  lh         $t9, 0x4e($sp)
/* B174 8000A574 87B8004E */  lh         $t8, 0x4e($sp)
/* B178 8000A578 93A9001B */  lbu        $t1, 0x1b($sp)
/* B17C 8000A57C 03B94021 */  addu       $t0, $sp, $t9
/* B180 8000A580 9108001C */  lbu        $t0, 0x1c($t0)
/* B184 8000A584 270B0001 */  addiu      $t3, $t8, 1
/* B188 8000A588 000B5400 */  sll        $t2, $t3, 0x10
/* B18C 8000A58C 3C01801C */  lui        $at, 0x801c
/* B190 8000A590 00087840 */  sll        $t7, $t0, 1
/* B194 8000A594 000A6403 */  sra        $t4, $t2, 0x10
/* B198 8000A598 002F0821 */  addu       $at, $at, $t7
/* B19C 8000A59C 03AC6821 */  addu       $t5, $sp, $t4
/* B1A0 8000A5A0 A7AB004E */  sh         $t3, 0x4e($sp)
/* B1A4 8000A5A4 A0295EC8 */  sb         $t1, 0x5ec8($at)
/* B1A8 8000A5A8 91AD001C */  lbu        $t5, 0x1c($t5)
/* B1AC 8000A5AC 15A0FEFB */  bnez       $t5, .L8000A19C
/* B1B0 8000A5B0 00000000 */   nop
.L8000A5B4:
/* B1B4 8000A5B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1B8 8000A5B8 27BD0050 */  addiu      $sp, $sp, 0x50
/* B1BC 8000A5BC 03E00008 */  jr         $ra
/* B1C0 8000A5C0 00000000 */   nop
/* B1C4 8000A5C4 00000000 */  nop
/* B1C8 8000A5C8 00000000 */  nop
/* B1CC 8000A5CC 00000000 */  nop
/* B1D0 8000A5D0 00000000 */  nop
/* B1D4 8000A5D4 00000000 */  nop
/* B1D8 8000A5D8 00000000 */  nop
/* B1DC 8000A5DC 00000000 */  nop
