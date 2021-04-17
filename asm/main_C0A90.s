.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BFE90
/* C0A90 800BFE90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C0A94 800BFE94 AFBF0014 */  sw         $ra, 0x14($sp)
/* C0A98 800BFE98 AFA40020 */  sw         $a0, 0x20($sp)
/* C0A9C 800BFE9C 0C02FF20 */  jal        func_800BFC80
/* C0AA0 800BFEA0 AFA0001C */   sw        $zero, 0x1c($sp)
/* C0AA4 800BFEA4 3C0E8014 */  lui        $t6, %hi(D_80145420)
/* C0AA8 800BFEA8 91CE5420 */  lbu        $t6, %lo(D_80145420)($t6)
/* C0AAC 800BFEAC 24010001 */  addiu      $at, $zero, 1
/* C0AB0 800BFEB0 11C1000C */  beq        $t6, $at, .L800BFEE4
/* C0AB4 800BFEB4 00000000 */   nop
/* C0AB8 800BFEB8 0C02FFF1 */  jal        func_800BFFC4
/* C0ABC 800BFEBC 00000000 */   nop
/* C0AC0 800BFEC0 3C058014 */  lui        $a1, %hi(D_801453E0)
/* C0AC4 800BFEC4 24A553E0 */  addiu      $a1, $a1, %lo(D_801453E0)
/* C0AC8 800BFEC8 0C030F00 */  jal        func_800C3C00
/* C0ACC 800BFECC 24040001 */   addiu     $a0, $zero, 1
/* C0AD0 800BFED0 AFA2001C */  sw         $v0, 0x1c($sp)
/* C0AD4 800BFED4 8FA40020 */  lw         $a0, 0x20($sp)
/* C0AD8 800BFED8 00002825 */  or         $a1, $zero, $zero
/* C0ADC 800BFEDC 0C02F85C */  jal        func_800BE170
/* C0AE0 800BFEE0 24060001 */   addiu     $a2, $zero, 1
.L800BFEE4:
/* C0AE4 800BFEE4 3C058014 */  lui        $a1, %hi(D_801453E0)
/* C0AE8 800BFEE8 24A553E0 */  addiu      $a1, $a1, %lo(D_801453E0)
/* C0AEC 800BFEEC 0C030F00 */  jal        func_800C3C00
/* C0AF0 800BFEF0 00002025 */   or        $a0, $zero, $zero
/* C0AF4 800BFEF4 240F0001 */  addiu      $t7, $zero, 1
/* C0AF8 800BFEF8 3C018014 */  lui        $at, %hi(D_80145420)
/* C0AFC 800BFEFC AFA2001C */  sw         $v0, 0x1c($sp)
/* C0B00 800BFF00 0C02FF31 */  jal        func_800BFCC4
/* C0B04 800BFF04 A02F5420 */   sb        $t7, %lo(D_80145420)($at)
/* C0B08 800BFF08 8FBF0014 */  lw         $ra, 0x14($sp)
/* C0B0C 800BFF0C 8FA2001C */  lw         $v0, 0x1c($sp)
/* C0B10 800BFF10 27BD0020 */  addiu      $sp, $sp, 0x20
/* C0B14 800BFF14 03E00008 */  jr         $ra
/* C0B18 800BFF18 00000000 */   nop

glabel func_800BFF1C
/* C0B1C 800BFF1C 3C0F8014 */  lui        $t7, %hi(D_80145421)
/* C0B20 800BFF20 91EF5421 */  lbu        $t7, %lo(D_80145421)($t7)
/* C0B24 800BFF24 3C0E8014 */  lui        $t6, %hi(D_801453E0)
/* C0B28 800BFF28 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C0B2C 800BFF2C 25CE53E0 */  addiu      $t6, $t6, %lo(D_801453E0)
/* C0B30 800BFF30 AFAE000C */  sw         $t6, 0xc($sp)
/* C0B34 800BFF34 19E00021 */  blez       $t7, .L800BFFBC
/* C0B38 800BFF38 AFA00000 */   sw        $zero, ($sp)
.L800BFF3C:
/* C0B3C 800BFF3C 8FB9000C */  lw         $t9, 0xc($sp)
/* C0B40 800BFF40 27B80004 */  addiu      $t8, $sp, 4
/* C0B44 800BFF44 8B210000 */  lwl        $at, ($t9)
/* C0B48 800BFF48 9B210003 */  lwr        $at, 3($t9)
/* C0B4C 800BFF4C AF010000 */  sw         $at, ($t8)
/* C0B50 800BFF50 8B290004 */  lwl        $t1, 4($t9)
/* C0B54 800BFF54 9B290007 */  lwr        $t1, 7($t9)
/* C0B58 800BFF58 AF090004 */  sw         $t1, 4($t8)
/* C0B5C 800BFF5C 93AA0006 */  lbu        $t2, 6($sp)
/* C0B60 800BFF60 314B00C0 */  andi       $t3, $t2, 0xc0
/* C0B64 800BFF64 000B6103 */  sra        $t4, $t3, 4
/* C0B68 800BFF68 A08C0004 */  sb         $t4, 4($a0)
/* C0B6C 800BFF6C 908D0004 */  lbu        $t5, 4($a0)
/* C0B70 800BFF70 15A00007 */  bnez       $t5, .L800BFF90
/* C0B74 800BFF74 00000000 */   nop
/* C0B78 800BFF78 97AE0008 */  lhu        $t6, 8($sp)
/* C0B7C 800BFF7C A48E0000 */  sh         $t6, ($a0)
/* C0B80 800BFF80 83AF000A */  lb         $t7, 0xa($sp)
/* C0B84 800BFF84 A08F0002 */  sb         $t7, 2($a0)
/* C0B88 800BFF88 83A8000B */  lb         $t0, 0xb($sp)
/* C0B8C 800BFF8C A0880003 */  sb         $t0, 3($a0)
.L800BFF90:
/* C0B90 800BFF90 8FB80000 */  lw         $t8, ($sp)
/* C0B94 800BFF94 3C0B8014 */  lui        $t3, %hi(D_80145421)
/* C0B98 800BFF98 916B5421 */  lbu        $t3, %lo(D_80145421)($t3)
/* C0B9C 800BFF9C 8FA9000C */  lw         $t1, 0xc($sp)
/* C0BA0 800BFFA0 27190001 */  addiu      $t9, $t8, 1
/* C0BA4 800BFFA4 032B082A */  slt        $at, $t9, $t3
/* C0BA8 800BFFA8 252A0008 */  addiu      $t2, $t1, 8
/* C0BAC 800BFFAC AFAA000C */  sw         $t2, 0xc($sp)
/* C0BB0 800BFFB0 AFB90000 */  sw         $t9, ($sp)
/* C0BB4 800BFFB4 1420FFE1 */  bnez       $at, .L800BFF3C
/* C0BB8 800BFFB8 24840006 */   addiu     $a0, $a0, 6
.L800BFFBC:
/* C0BBC 800BFFBC 03E00008 */  jr         $ra
/* C0BC0 800BFFC0 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800BFFC4
/* C0BC4 800BFFC4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C0BC8 800BFFC8 3C0E8014 */  lui        $t6, %hi(D_801453E0)
/* C0BCC 800BFFCC 25CE53E0 */  addiu      $t6, $t6, %lo(D_801453E0)
/* C0BD0 800BFFD0 AFAE000C */  sw         $t6, 0xc($sp)
/* C0BD4 800BFFD4 AFA00000 */  sw         $zero, ($sp)
.L800BFFD8:
/* C0BD8 800BFFD8 8FAF0000 */  lw         $t7, ($sp)
/* C0BDC 800BFFDC 8FB90000 */  lw         $t9, ($sp)
/* C0BE0 800BFFE0 3C018014 */  lui        $at, %hi(D_801453E0)
/* C0BE4 800BFFE4 000FC080 */  sll        $t8, $t7, 2
/* C0BE8 800BFFE8 00380821 */  addu       $at, $at, $t8
/* C0BEC 800BFFEC AC2053E0 */  sw         $zero, %lo(D_801453E0)($at)
/* C0BF0 800BFFF0 27280001 */  addiu      $t0, $t9, 1
/* C0BF4 800BFFF4 2901000F */  slti       $at, $t0, 0xf
/* C0BF8 800BFFF8 1420FFF7 */  bnez       $at, .L800BFFD8
/* C0BFC 800BFFFC AFA80000 */   sw        $t0, ($sp)
/* C0C00 800C0000 3C198014 */  lui        $t9, %hi(D_80145421)
/* C0C04 800C0004 93395421 */  lbu        $t9, %lo(D_80145421)($t9)
/* C0C08 800C0008 24090001 */  addiu      $t1, $zero, 1
/* C0C0C 800C000C 3C018014 */  lui        $at, 0x8014
/* C0C10 800C0010 240A00FF */  addiu      $t2, $zero, 0xff
/* C0C14 800C0014 240B0001 */  addiu      $t3, $zero, 1
/* C0C18 800C0018 240C0004 */  addiu      $t4, $zero, 4
/* C0C1C 800C001C 240D0001 */  addiu      $t5, $zero, 1
/* C0C20 800C0020 340EFFFF */  ori        $t6, $zero, 0xffff
/* C0C24 800C0024 240FFFFF */  addiu      $t7, $zero, -1
/* C0C28 800C0028 2418FFFF */  addiu      $t8, $zero, -1
/* C0C2C 800C002C AC29541C */  sw         $t1, 0x541c($at)
/* C0C30 800C0030 A3AA0004 */  sb         $t2, 4($sp)
/* C0C34 800C0034 A3AB0005 */  sb         $t3, 5($sp)
/* C0C38 800C0038 A3AC0006 */  sb         $t4, 6($sp)
/* C0C3C 800C003C A3AD0007 */  sb         $t5, 7($sp)
/* C0C40 800C0040 A7AE0008 */  sh         $t6, 8($sp)
/* C0C44 800C0044 A3AF000A */  sb         $t7, 0xa($sp)
/* C0C48 800C0048 A3B8000B */  sb         $t8, 0xb($sp)
/* C0C4C 800C004C 1B200013 */  blez       $t9, .L800C009C
/* C0C50 800C0050 AFA00000 */   sw        $zero, ($sp)
.L800C0054:
/* C0C54 800C0054 27A90004 */  addiu      $t1, $sp, 4
/* C0C58 800C0058 8D210000 */  lw         $at, ($t1)
/* C0C5C 800C005C 8FA8000C */  lw         $t0, 0xc($sp)
/* C0C60 800C0060 3C188014 */  lui        $t8, 0x8014
/* C0C64 800C0064 A9010000 */  swl        $at, ($t0)
/* C0C68 800C0068 B9010003 */  swr        $at, 3($t0)
/* C0C6C 800C006C 8D2B0004 */  lw         $t3, 4($t1)
/* C0C70 800C0070 A90B0004 */  swl        $t3, 4($t0)
/* C0C74 800C0074 B90B0007 */  swr        $t3, 7($t0)
/* C0C78 800C0078 8FAE0000 */  lw         $t6, ($sp)
/* C0C7C 800C007C 93185421 */  lbu        $t8, 0x5421($t8)
/* C0C80 800C0080 8FAC000C */  lw         $t4, 0xc($sp)
/* C0C84 800C0084 25CF0001 */  addiu      $t7, $t6, 1
/* C0C88 800C0088 01F8082A */  slt        $at, $t7, $t8
/* C0C8C 800C008C 258D0008 */  addiu      $t5, $t4, 8
/* C0C90 800C0090 AFAF0000 */  sw         $t7, ($sp)
/* C0C94 800C0094 1420FFEF */  bnez       $at, .L800C0054
/* C0C98 800C0098 AFAD000C */   sw        $t5, 0xc($sp)
.L800C009C:
/* C0C9C 800C009C 8FAA000C */  lw         $t2, 0xc($sp)
/* C0CA0 800C00A0 241900FE */  addiu      $t9, $zero, 0xfe
/* C0CA4 800C00A4 27BD0010 */  addiu      $sp, $sp, 0x10
/* C0CA8 800C00A8 03E00008 */  jr         $ra
/* C0CAC 800C00AC A1590000 */   sb        $t9, ($t2)

glabel func_800C00B0
/* C0CB0 800C00B0 03E00008 */  jr         $ra
/* C0CB4 800C00B4 00000000 */   nop

glabel func_800C00B8
/* C0CB8 800C00B8 03E00008 */  jr         $ra
/* C0CBC 800C00BC 00000000 */   nop

glabel func_800C00C0
/* C0CC0 800C00C0 908E0003 */  lbu        $t6, 3($a0)
/* C0CC4 800C00C4 15C00037 */  bnez       $t6, .L800C01A4
/* C0CC8 800C00C8 00000000 */   nop
/* C0CCC 800C00CC 848F000E */  lh         $t7, 0xe($a0)
/* C0CD0 800C00D0 24090001 */  addiu      $t1, $zero, 1
/* C0CD4 800C00D4 A0890003 */  sb         $t1, 3($a0)
/* C0CD8 800C00D8 19E00032 */  blez       $t7, .L800C01A4
/* C0CDC 800C00DC 00001025 */   or        $v0, $zero, $zero
/* C0CE0 800C00E0 00801825 */  or         $v1, $a0, $zero
/* C0CE4 800C00E4 240A0001 */  addiu      $t2, $zero, 1
/* C0CE8 800C00E8 8C780010 */  lw         $t8, 0x10($v1)
.L800C00EC:
/* C0CEC 800C00EC 0305C821 */  addu       $t9, $t8, $a1
/* C0CF0 800C00F0 AC790010 */  sw         $t9, 0x10($v1)
/* C0CF4 800C00F4 932E000E */  lbu        $t6, 0xe($t9)
/* C0CF8 800C00F8 03203025 */  or         $a2, $t9, $zero
/* C0CFC 800C00FC 55C00024 */  bnezl      $t6, .L800C0190
/* C0D00 800C0100 8498000E */   lh        $t8, 0xe($a0)
/* C0D04 800C0104 8F2F0000 */  lw         $t7, ($t9)
/* C0D08 800C0108 A329000E */  sb         $t1, 0xe($t9)
/* C0D0C 800C010C 01E5C021 */  addu       $t8, $t7, $a1
/* C0D10 800C0110 AF380000 */  sw         $t8, ($t9)
/* C0D14 800C0114 8F390004 */  lw         $t9, 4($t9)
/* C0D18 800C0118 8CCF0008 */  lw         $t7, 8($a2)
/* C0D1C 800C011C 03257021 */  addu       $t6, $t9, $a1
/* C0D20 800C0120 01E5C021 */  addu       $t8, $t7, $a1
/* C0D24 800C0124 ACCE0004 */  sw         $t6, 4($a2)
/* C0D28 800C0128 ACD80008 */  sw         $t8, 8($a2)
/* C0D2C 800C012C 93190009 */  lbu        $t9, 9($t8)
/* C0D30 800C0130 03004025 */  or         $t0, $t8, $zero
/* C0D34 800C0134 57200016 */  bnezl      $t9, .L800C0190
/* C0D38 800C0138 8498000E */   lh        $t8, 0xe($a0)
/* C0D3C 800C013C 8F0E0000 */  lw         $t6, ($t8)
/* C0D40 800C0140 93060008 */  lbu        $a2, 8($t8)
/* C0D44 800C0144 A3090009 */  sb         $t1, 9($t8)
/* C0D48 800C0148 01C77821 */  addu       $t7, $t6, $a3
/* C0D4C 800C014C 14C00009 */  bnez       $a2, .L800C0174
/* C0D50 800C0150 AF0F0000 */   sw        $t7, ($t8)
/* C0D54 800C0154 8F180010 */  lw         $t8, 0x10($t8)
/* C0D58 800C0158 8D06000C */  lw         $a2, 0xc($t0)
/* C0D5C 800C015C 0305C821 */  addu       $t9, $t8, $a1
/* C0D60 800C0160 10C0000A */  beqz       $a2, .L800C018C
/* C0D64 800C0164 AD190010 */   sw        $t9, 0x10($t0)
/* C0D68 800C0168 00C57021 */  addu       $t6, $a2, $a1
/* C0D6C 800C016C 10000007 */  b          .L800C018C
/* C0D70 800C0170 AD0E000C */   sw        $t6, 0xc($t0)
.L800C0174:
/* C0D74 800C0174 55460006 */  bnel       $t2, $a2, .L800C0190
/* C0D78 800C0178 8498000E */   lh        $t8, 0xe($a0)
/* C0D7C 800C017C 8D06000C */  lw         $a2, 0xc($t0)
/* C0D80 800C0180 10C00002 */  beqz       $a2, .L800C018C
/* C0D84 800C0184 00C57821 */   addu      $t7, $a2, $a1
/* C0D88 800C0188 AD0F000C */  sw         $t7, 0xc($t0)
.L800C018C:
/* C0D8C 800C018C 8498000E */  lh         $t8, 0xe($a0)
.L800C0190:
/* C0D90 800C0190 24420001 */  addiu      $v0, $v0, 1
/* C0D94 800C0194 24630004 */  addiu      $v1, $v1, 4
/* C0D98 800C0198 0058082A */  slt        $at, $v0, $t8
/* C0D9C 800C019C 5420FFD3 */  bnezl      $at, .L800C00EC
/* C0DA0 800C01A0 8C780010 */   lw        $t8, 0x10($v1)
.L800C01A4:
/* C0DA4 800C01A4 03E00008 */  jr         $ra
/* C0DA8 800C01A8 00000000 */   nop

glabel func_800C01AC
/* C0DAC 800C01AC 03E00008 */  jr         $ra
/* C0DB0 800C01B0 00000000 */   nop

glabel func_800C01B4
/* C0DB4 800C01B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C0DB8 800C01B8 AFBF002C */  sw         $ra, 0x2c($sp)
/* C0DBC 800C01BC AFB40028 */  sw         $s4, 0x28($sp)
/* C0DC0 800C01C0 AFB30024 */  sw         $s3, 0x24($sp)
/* C0DC4 800C01C4 AFB20020 */  sw         $s2, 0x20($sp)
/* C0DC8 800C01C8 AFB1001C */  sw         $s1, 0x1c($sp)
/* C0DCC 800C01CC AFB00018 */  sw         $s0, 0x18($sp)
/* C0DD0 800C01D0 848E0000 */  lh         $t6, ($a0)
/* C0DD4 800C01D4 24014231 */  addiu      $at, $zero, 0x4231
/* C0DD8 800C01D8 00808025 */  or         $s0, $a0, $zero
/* C0DDC 800C01DC 15C1002E */  bne        $t6, $at, .L800C0298
/* C0DE0 800C01E0 00A08825 */   or        $s1, $a1, $zero
/* C0DE4 800C01E4 848F0002 */  lh         $t7, 2($a0)
/* C0DE8 800C01E8 00009825 */  or         $s3, $zero, $zero
/* C0DEC 800C01EC 00809025 */  or         $s2, $a0, $zero
/* C0DF0 800C01F0 19E00029 */  blez       $t7, .L800C0298
/* C0DF4 800C01F4 24140001 */   addiu     $s4, $zero, 1
/* C0DF8 800C01F8 8E580004 */  lw         $t8, 4($s2)
.L800C01FC:
/* C0DFC 800C01FC 0310C821 */  addu       $t9, $t8, $s0
/* C0E00 800C0200 1320001F */  beqz       $t9, .L800C0280
/* C0E04 800C0204 AE590004 */   sw        $t9, 4($s2)
/* C0E08 800C0208 932E0002 */  lbu        $t6, 2($t9)
/* C0E0C 800C020C 03206825 */  or         $t5, $t9, $zero
/* C0E10 800C0210 55C0001C */  bnezl      $t6, .L800C0284
/* C0E14 800C0214 86180002 */   lh        $t8, 2($s0)
/* C0E18 800C0218 8F220008 */  lw         $v0, 8($t9)
/* C0E1C 800C021C A3340002 */  sb         $s4, 2($t9)
/* C0E20 800C0220 00006025 */  or         $t4, $zero, $zero
/* C0E24 800C0224 10400005 */  beqz       $v0, .L800C023C
/* C0E28 800C0228 00502021 */   addu      $a0, $v0, $s0
/* C0E2C 800C022C AF240008 */  sw         $a0, 8($t9)
/* C0E30 800C0230 02002825 */  or         $a1, $s0, $zero
/* C0E34 800C0234 0C030030 */  jal        func_800C00C0
/* C0E38 800C0238 02203825 */   or        $a3, $s1, $zero
.L800C023C:
/* C0E3C 800C023C 85B80000 */  lh         $t8, ($t5)
/* C0E40 800C0240 01A05825 */  or         $t3, $t5, $zero
/* C0E44 800C0244 5B00000F */  blezl      $t8, .L800C0284
/* C0E48 800C0248 86180002 */   lh        $t8, 2($s0)
/* C0E4C 800C024C 8D79000C */  lw         $t9, 0xc($t3)
.L800C0250:
/* C0E50 800C0250 02002825 */  or         $a1, $s0, $zero
/* C0E54 800C0254 03302021 */  addu       $a0, $t9, $s0
/* C0E58 800C0258 10800003 */  beqz       $a0, .L800C0268
/* C0E5C 800C025C AD64000C */   sw        $a0, 0xc($t3)
/* C0E60 800C0260 0C030030 */  jal        func_800C00C0
/* C0E64 800C0264 02203825 */   or        $a3, $s1, $zero
.L800C0268:
/* C0E68 800C0268 85AF0000 */  lh         $t7, ($t5)
/* C0E6C 800C026C 258C0001 */  addiu      $t4, $t4, 1
/* C0E70 800C0270 256B0004 */  addiu      $t3, $t3, 4
/* C0E74 800C0274 018F082A */  slt        $at, $t4, $t7
/* C0E78 800C0278 5420FFF5 */  bnezl      $at, .L800C0250
/* C0E7C 800C027C 8D79000C */   lw        $t9, 0xc($t3)
.L800C0280:
/* C0E80 800C0280 86180002 */  lh         $t8, 2($s0)
.L800C0284:
/* C0E84 800C0284 26730001 */  addiu      $s3, $s3, 1
/* C0E88 800C0288 26520004 */  addiu      $s2, $s2, 4
/* C0E8C 800C028C 0278082A */  slt        $at, $s3, $t8
/* C0E90 800C0290 5420FFDA */  bnezl      $at, .L800C01FC
/* C0E94 800C0294 8E580004 */   lw        $t8, 4($s2)
.L800C0298:
/* C0E98 800C0298 8FBF002C */  lw         $ra, 0x2c($sp)
/* C0E9C 800C029C 8FB00018 */  lw         $s0, 0x18($sp)
/* C0EA0 800C02A0 8FB1001C */  lw         $s1, 0x1c($sp)
/* C0EA4 800C02A4 8FB20020 */  lw         $s2, 0x20($sp)
/* C0EA8 800C02A8 8FB30024 */  lw         $s3, 0x24($sp)
/* C0EAC 800C02AC 8FB40028 */  lw         $s4, 0x28($sp)
/* C0EB0 800C02B0 03E00008 */  jr         $ra
/* C0EB4 800C02B4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800C02B8
/* C0EB8 800C02B8 848E0002 */  lh         $t6, 2($a0)
/* C0EBC 800C02BC 00001025 */  or         $v0, $zero, $zero
/* C0EC0 800C02C0 00801825 */  or         $v1, $a0, $zero
/* C0EC4 800C02C4 19C0000A */  blez       $t6, .L800C02F0
/* C0EC8 800C02C8 00000000 */   nop
/* C0ECC 800C02CC 8C6F0004 */  lw         $t7, 4($v1)
.L800C02D0:
/* C0ED0 800C02D0 24420001 */  addiu      $v0, $v0, 1
/* C0ED4 800C02D4 24630008 */  addiu      $v1, $v1, 8
/* C0ED8 800C02D8 01E5C021 */  addu       $t8, $t7, $a1
/* C0EDC 800C02DC AC78FFFC */  sw         $t8, -4($v1)
/* C0EE0 800C02E0 84990002 */  lh         $t9, 2($a0)
/* C0EE4 800C02E4 0059082A */  slt        $at, $v0, $t9
/* C0EE8 800C02E8 5420FFF9 */  bnezl      $at, .L800C02D0
/* C0EEC 800C02EC 8C6F0004 */   lw        $t7, 4($v1)
.L800C02F0:
/* C0EF0 800C02F0 03E00008 */  jr         $ra
/* C0EF4 800C02F4 00000000 */   nop
/* C0EF8 800C02F8 00000000 */  nop
/* C0EFC 800C02FC 00000000 */  nop
