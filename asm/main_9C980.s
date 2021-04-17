.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009BD80
/* 9C980 8009BD80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C984 8009BD84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C988 8009BD88 AFA40028 */  sw         $a0, 0x28($sp)
/* 9C98C 8009BD8C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C990 8009BD90 AFA60030 */  sw         $a2, 0x30($sp)
/* 9C994 8009BD94 AFA00024 */  sw         $zero, 0x24($sp)
/* 9C998 8009BD98 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C99C 8009BD9C 8DCF002C */  lw         $t7, 0x2c($t6)
/* 9C9A0 8009BDA0 15E00008 */  bnez       $t7, .L8009BDC4
/* 9C9A4 8009BDA4 00000000 */   nop
/* 9C9A8 8009BDA8 2404006A */  addiu      $a0, $zero, 0x6a
/* 9C9AC 8009BDAC 0C02B5EC */  jal        func_800AD7B0
/* 9C9B0 8009BDB0 00002825 */   or        $a1, $zero, $zero
/* 9C9B4 8009BDB4 1000007A */  b          .L8009BFA0
/* 9C9B8 8009BDB8 00001025 */   or        $v0, $zero, $zero
/* 9C9BC 8009BDBC 1000000B */  b          .L8009BDEC
/* 9C9C0 8009BDC0 00000000 */   nop
.L8009BDC4:
/* 9C9C4 8009BDC4 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C9C8 8009BDC8 8F19002C */  lw         $t9, 0x2c($t8)
/* 9C9CC 8009BDCC 8F280000 */  lw         $t0, ($t9)
/* 9C9D0 8009BDD0 15000006 */  bnez       $t0, .L8009BDEC
/* 9C9D4 8009BDD4 00000000 */   nop
/* 9C9D8 8009BDD8 2404006A */  addiu      $a0, $zero, 0x6a
/* 9C9DC 8009BDDC 0C02B5EC */  jal        func_800AD7B0
/* 9C9E0 8009BDE0 00002825 */   or        $a1, $zero, $zero
/* 9C9E4 8009BDE4 1000006E */  b          .L8009BFA0
/* 9C9E8 8009BDE8 00001025 */   or        $v0, $zero, $zero
.L8009BDEC:
/* 9C9EC 8009BDEC 8FA90030 */  lw         $t1, 0x30($sp)
/* 9C9F0 8009BDF0 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9C9F4 8009BDF4 852A0000 */  lh         $t2, ($t1)
/* 9C9F8 8009BDF8 A56A0016 */  sh         $t2, 0x16($t3)
/* 9C9FC 8009BDFC 8FAC0030 */  lw         $t4, 0x30($sp)
/* 9CA00 8009BE00 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9CA04 8009BE04 918D0004 */  lbu        $t5, 4($t4)
/* 9CA08 8009BE08 A5CD001A */  sh         $t5, 0x1a($t6)
/* 9CA0C 8009BE0C 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9CA10 8009BE10 ADE0000C */  sw         $zero, 0xc($t7)
/* 9CA14 8009BE14 8FB80030 */  lw         $t8, 0x30($sp)
/* 9CA18 8009BE18 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9CA1C 8009BE1C 87190002 */  lh         $t9, 2($t8)
/* 9CA20 8009BE20 A5190018 */  sh         $t9, 0x18($t0)
/* 9CA24 8009BE24 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9CA28 8009BE28 A5200014 */  sh         $zero, 0x14($t1)
/* 9CA2C 8009BE2C 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9CA30 8009BE30 AD400008 */  sw         $zero, 8($t2)
/* 9CA34 8009BE34 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9CA38 8009BE38 8FA40028 */  lw         $a0, 0x28($sp)
/* 9CA3C 8009BE3C 27A50024 */  addiu      $a1, $sp, 0x24
/* 9CA40 8009BE40 0C026FEC */  jal        func_8009BFB0
/* 9CA44 8009BE44 85660000 */   lh        $a2, ($t3)
/* 9CA48 8009BE48 AFA20018 */  sw         $v0, 0x18($sp)
/* 9CA4C 8009BE4C 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9CA50 8009BE50 1180004D */  beqz       $t4, .L8009BF88
/* 9CA54 8009BE54 00000000 */   nop
/* 9CA58 8009BE58 8FAD0024 */  lw         $t5, 0x24($sp)
/* 9CA5C 8009BE5C 8DAE000C */  lw         $t6, 0xc($t5)
/* 9CA60 8009BE60 AFAE0020 */  sw         $t6, 0x20($sp)
/* 9CA64 8009BE64 8FAF0018 */  lw         $t7, 0x18($sp)
/* 9CA68 8009BE68 11E0003F */  beqz       $t7, .L8009BF68
/* 9CA6C 8009BE6C 00000000 */   nop
/* 9CA70 8009BE70 8FB90024 */  lw         $t9, 0x24($sp)
/* 9CA74 8009BE74 24180200 */  addiu      $t8, $zero, 0x200
/* 9CA78 8009BE78 AF3800D8 */  sw         $t8, 0xd8($t9)
/* 9CA7C 8009BE7C 8FA80024 */  lw         $t0, 0x24($sp)
/* 9CA80 8009BE80 8D090008 */  lw         $t1, 8($t0)
/* 9CA84 8009BE84 AD200008 */  sw         $zero, 8($t1)
/* 9CA88 8009BE88 0C029658 */  jal        func_800A5960
/* 9CA8C 8009BE8C 00000000 */   nop
/* 9CA90 8009BE90 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9CA94 8009BE94 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9CA98 8009BE98 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9CA9C 8009BE9C 8D4B001C */  lw         $t3, 0x1c($t2)
/* 9CAA0 8009BEA0 AD8B0004 */  sw         $t3, 4($t4)
/* 9CAA4 8009BEA4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9CAA8 8009BEA8 240D000B */  addiu      $t5, $zero, 0xb
/* 9CAAC 8009BEAC A5CD0008 */  sh         $t5, 8($t6)
/* 9CAB0 8009BEB0 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9CAB4 8009BEB4 ADE0000C */  sw         $zero, 0xc($t7)
/* 9CAB8 8009BEB8 8FB80024 */  lw         $t8, 0x24($sp)
/* 9CABC 8009BEBC 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9CAC0 8009BEC0 8F1900D8 */  lw         $t9, 0xd8($t8)
/* 9CAC4 8009BEC4 2728FFC0 */  addiu      $t0, $t9, -0x40
/* 9CAC8 8009BEC8 AD280010 */  sw         $t0, 0x10($t1)
/* 9CACC 8009BECC 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9CAD0 8009BED0 24050003 */  addiu      $a1, $zero, 3
/* 9CAD4 8009BED4 8FA6001C */  lw         $a2, 0x1c($sp)
/* 9CAD8 8009BED8 8D590008 */  lw         $t9, 8($t2)
/* 9CADC 8009BEDC 01402025 */  or         $a0, $t2, $zero
/* 9CAE0 8009BEE0 0320F809 */  jalr       $t9
/* 9CAE4 8009BEE4 00000000 */   nop
/* 9CAE8 8009BEE8 0C029658 */  jal        func_800A5960
/* 9CAEC 8009BEEC 00000000 */   nop
/* 9CAF0 8009BEF0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9CAF4 8009BEF4 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9CAF8 8009BEF8 11600016 */  beqz       $t3, .L8009BF54
/* 9CAFC 8009BEFC 00000000 */   nop
/* 9CB00 8009BF00 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9CB04 8009BF04 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9CB08 8009BF08 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9CB0C 8009BF0C 8D8D001C */  lw         $t5, 0x1c($t4)
/* 9CB10 8009BF10 8DCF00D8 */  lw         $t7, 0xd8($t6)
/* 9CB14 8009BF14 01AFC021 */  addu       $t8, $t5, $t7
/* 9CB18 8009BF18 AD180004 */  sw         $t8, 4($t0)
/* 9CB1C 8009BF1C 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9CB20 8009BF20 2409000F */  addiu      $t1, $zero, 0xf
/* 9CB24 8009BF24 A5490008 */  sh         $t1, 8($t2)
/* 9CB28 8009BF28 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9CB2C 8009BF2C AF200000 */  sw         $zero, ($t9)
/* 9CB30 8009BF30 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9CB34 8009BF34 24050003 */  addiu      $a1, $zero, 3
/* 9CB38 8009BF38 8FA6001C */  lw         $a2, 0x1c($sp)
/* 9CB3C 8009BF3C 8D790008 */  lw         $t9, 8($t3)
/* 9CB40 8009BF40 01602025 */  or         $a0, $t3, $zero
/* 9CB44 8009BF44 0320F809 */  jalr       $t9
/* 9CB48 8009BF48 00000000 */   nop
/* 9CB4C 8009BF4C 10000004 */  b          .L8009BF60
/* 9CB50 8009BF50 00000000 */   nop
.L8009BF54:
/* 9CB54 8009BF54 2404006A */  addiu      $a0, $zero, 0x6a
/* 9CB58 8009BF58 0C02B5EC */  jal        func_800AD7B0
/* 9CB5C 8009BF5C 00002825 */   or        $a1, $zero, $zero
.L8009BF60:
/* 9CB60 8009BF60 10000003 */  b          .L8009BF70
/* 9CB64 8009BF64 00000000 */   nop
.L8009BF68:
/* 9CB68 8009BF68 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9CB6C 8009BF6C AD8000D8 */  sw         $zero, 0xd8($t4)
.L8009BF70:
/* 9CB70 8009BF70 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9CB74 8009BF74 8FAD0024 */  lw         $t5, 0x24($sp)
/* 9CB78 8009BF78 ADAE0008 */  sw         $t6, 8($t5)
/* 9CB7C 8009BF7C 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9CB80 8009BF80 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9CB84 8009BF84 AF0F0008 */  sw         $t7, 8($t8)
.L8009BF88:
/* 9CB88 8009BF88 8FA20024 */  lw         $v0, 0x24($sp)
/* 9CB8C 8009BF8C 0002402B */  sltu       $t0, $zero, $v0
/* 9CB90 8009BF90 10000003 */  b          .L8009BFA0
/* 9CB94 8009BF94 01001025 */   or        $v0, $t0, $zero
/* 9CB98 8009BF98 10000001 */  b          .L8009BFA0
/* 9CB9C 8009BF9C 00000000 */   nop
.L8009BFA0:
/* 9CBA0 8009BFA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CBA4 8009BFA4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9CBA8 8009BFA8 03E00008 */  jr         $ra
/* 9CBAC 8009BFAC 00000000 */   nop

glabel func_8009BFB0
/* 9CBB0 8009BFB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9CBB4 8009BFB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CBB8 8009BFB8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9CBBC 8009BFBC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9CBC0 8009BFC0 AFA60030 */  sw         $a2, 0x30($sp)
/* 9CBC4 8009BFC4 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9CBC8 8009BFC8 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9CBCC 8009BFCC 8DCF0014 */  lw         $t7, 0x14($t6)
/* 9CBD0 8009BFD0 11E0000C */  beqz       $t7, .L8009C004
/* 9CBD4 8009BFD4 AFAF0024 */   sw        $t7, 0x24($sp)
/* 9CBD8 8009BFD8 8FB80024 */  lw         $t8, 0x24($sp)
/* 9CBDC 8009BFDC 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9CBE0 8009BFE0 AF380000 */  sw         $t8, ($t9)
/* 9CBE4 8009BFE4 0C025DC7 */  jal        func_8009771C
/* 9CBE8 8009BFE8 8FA40024 */   lw        $a0, 0x24($sp)
/* 9CBEC 8009BFEC 8FA50028 */  lw         $a1, 0x28($sp)
/* 9CBF0 8009BFF0 8FA40024 */  lw         $a0, 0x24($sp)
/* 9CBF4 8009BFF4 0C025DBA */  jal        func_800976E8
/* 9CBF8 8009BFF8 24A5000C */   addiu     $a1, $a1, 0xc
/* 9CBFC 8009BFFC 1000002D */  b          .L8009C0B4
/* 9CC00 8009C000 00000000 */   nop
.L8009C004:
/* 9CC04 8009C004 8FA80028 */  lw         $t0, 0x28($sp)
/* 9CC08 8009C008 8D090004 */  lw         $t1, 4($t0)
/* 9CC0C 8009C00C 1120000C */  beqz       $t1, .L8009C040
/* 9CC10 8009C010 AFA90024 */   sw        $t1, 0x24($sp)
/* 9CC14 8009C014 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9CC18 8009C018 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9CC1C 8009C01C AD6A0000 */  sw         $t2, ($t3)
/* 9CC20 8009C020 0C025DC7 */  jal        func_8009771C
/* 9CC24 8009C024 8FA40024 */   lw        $a0, 0x24($sp)
/* 9CC28 8009C028 8FA50028 */  lw         $a1, 0x28($sp)
/* 9CC2C 8009C02C 8FA40024 */  lw         $a0, 0x24($sp)
/* 9CC30 8009C030 0C025DBA */  jal        func_800976E8
/* 9CC34 8009C034 24A5000C */   addiu     $a1, $a1, 0xc
/* 9CC38 8009C038 1000001E */  b          .L8009C0B4
/* 9CC3C 8009C03C 00000000 */   nop
.L8009C040:
/* 9CC40 8009C040 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9CC44 8009C044 8D8D000C */  lw         $t5, 0xc($t4)
/* 9CC48 8009C048 11A0001A */  beqz       $t5, .L8009C0B4
/* 9CC4C 8009C04C AFAD0024 */   sw        $t5, 0x24($sp)
.L8009C050:
/* 9CC50 8009C050 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9CC54 8009C054 AFAE0020 */  sw         $t6, 0x20($sp)
/* 9CC58 8009C058 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9CC5C 8009C05C 87A80032 */  lh         $t0, 0x32($sp)
/* 9CC60 8009C060 8DF80008 */  lw         $t8, 8($t7)
/* 9CC64 8009C064 87190016 */  lh         $t9, 0x16($t8)
/* 9CC68 8009C068 0119082A */  slt        $at, $t0, $t9
/* 9CC6C 8009C06C 1420000D */  bnez       $at, .L8009C0A4
/* 9CC70 8009C070 00000000 */   nop
/* 9CC74 8009C074 8DE900D8 */  lw         $t1, 0xd8($t7)
/* 9CC78 8009C078 1520000A */  bnez       $t1, .L8009C0A4
/* 9CC7C 8009C07C 00000000 */   nop
/* 9CC80 8009C080 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9CC84 8009C084 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9CC88 8009C088 AD6A0000 */  sw         $t2, ($t3)
/* 9CC8C 8009C08C 8FAC0020 */  lw         $t4, 0x20($sp)
/* 9CC90 8009C090 8D8D0008 */  lw         $t5, 8($t4)
/* 9CC94 8009C094 85AE0016 */  lh         $t6, 0x16($t5)
/* 9CC98 8009C098 A7AE0032 */  sh         $t6, 0x32($sp)
/* 9CC9C 8009C09C 24180001 */  addiu      $t8, $zero, 1
/* 9CCA0 8009C0A0 AFB8001C */  sw         $t8, 0x1c($sp)
.L8009C0A4:
/* 9CCA4 8009C0A4 8FB90024 */  lw         $t9, 0x24($sp)
/* 9CCA8 8009C0A8 8F280000 */  lw         $t0, ($t9)
/* 9CCAC 8009C0AC 1500FFE8 */  bnez       $t0, .L8009C050
/* 9CCB0 8009C0B0 AFA80024 */   sw        $t0, 0x24($sp)
.L8009C0B4:
/* 9CCB4 8009C0B4 10000003 */  b          .L8009C0C4
/* 9CCB8 8009C0B8 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9CCBC 8009C0BC 10000001 */  b          .L8009C0C4
/* 9CCC0 8009C0C0 00000000 */   nop
.L8009C0C4:
/* 9CCC4 8009C0C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CCC8 8009C0C8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9CCCC 8009C0CC 03E00008 */  jr         $ra
/* 9CCD0 8009C0D0 00000000 */   nop
/* 9CCD4 8009C0D4 00000000 */  nop
/* 9CCD8 8009C0D8 00000000 */  nop
/* 9CCDC 8009C0DC 00000000 */  nop
