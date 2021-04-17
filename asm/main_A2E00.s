.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A2200
/* A2E00 800A2200 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A2E04 800A2204 AFBF0014 */  sw         $ra, 0x14($sp)
/* A2E08 800A2208 AFA40020 */  sw         $a0, 0x20($sp)
/* A2E0C 800A220C AFA50024 */  sw         $a1, 0x24($sp)
/* A2E10 800A2210 AFA60028 */  sw         $a2, 0x28($sp)
/* A2E14 800A2214 8FAE0024 */  lw         $t6, 0x24($sp)
/* A2E18 800A2218 8DCF0008 */  lw         $t7, 8($t6)
/* A2E1C 800A221C 11E00027 */  beqz       $t7, .L800A22BC
/* A2E20 800A2220 00000000 */   nop
/* A2E24 800A2224 0C029658 */  jal        func_800A5960
/* A2E28 800A2228 00000000 */   nop
/* A2E2C 800A222C AFA2001C */  sw         $v0, 0x1c($sp)
/* A2E30 800A2230 8FB8001C */  lw         $t8, 0x1c($sp)
/* A2E34 800A2234 17000006 */  bnez       $t8, .L800A2250
/* A2E38 800A2238 00000000 */   nop
/* A2E3C 800A223C 2404006A */  addiu      $a0, $zero, 0x6a
/* A2E40 800A2240 0C02B5EC */  jal        func_800AD7B0
/* A2E44 800A2244 00002825 */   or        $a1, $zero, $zero
/* A2E48 800A2248 1000001E */  b          .L800A22C4
/* A2E4C 800A224C 00000000 */   nop
.L800A2250:
/* A2E50 800A2250 8FA90024 */  lw         $t1, 0x24($sp)
/* A2E54 800A2254 8FB90020 */  lw         $t9, 0x20($sp)
/* A2E58 800A2258 8FAD001C */  lw         $t5, 0x1c($sp)
/* A2E5C 800A225C 8D2A0008 */  lw         $t2, 8($t1)
/* A2E60 800A2260 8F28001C */  lw         $t0, 0x1c($t9)
/* A2E64 800A2264 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* A2E68 800A2268 010B6021 */  addu       $t4, $t0, $t3
/* A2E6C 800A226C ADAC0004 */  sw         $t4, 4($t5)
/* A2E70 800A2270 8FAF001C */  lw         $t7, 0x1c($sp)
/* A2E74 800A2274 240E000C */  addiu      $t6, $zero, 0xc
/* A2E78 800A2278 A5EE0008 */  sh         $t6, 8($t7)
/* A2E7C 800A227C 93B8002B */  lbu        $t8, 0x2b($sp)
/* A2E80 800A2280 8FB9001C */  lw         $t9, 0x1c($sp)
/* A2E84 800A2284 AF38000C */  sw         $t8, 0xc($t9)
/* A2E88 800A2288 8FA9001C */  lw         $t1, 0x1c($sp)
/* A2E8C 800A228C AD200000 */  sw         $zero, ($t1)
/* A2E90 800A2290 8FAA0024 */  lw         $t2, 0x24($sp)
/* A2E94 800A2294 8D480008 */  lw         $t0, 8($t2)
/* A2E98 800A2298 8D0B000C */  lw         $t3, 0xc($t0)
/* A2E9C 800A229C AFAB0018 */  sw         $t3, 0x18($sp)
/* A2EA0 800A22A0 8FAC0018 */  lw         $t4, 0x18($sp)
/* A2EA4 800A22A4 24050003 */  addiu      $a1, $zero, 3
/* A2EA8 800A22A8 8FA6001C */  lw         $a2, 0x1c($sp)
/* A2EAC 800A22AC 8D990008 */  lw         $t9, 8($t4)
/* A2EB0 800A22B0 01802025 */  or         $a0, $t4, $zero
/* A2EB4 800A22B4 0320F809 */  jalr       $t9
/* A2EB8 800A22B8 00000000 */   nop
.L800A22BC:
/* A2EBC 800A22BC 10000001 */  b          .L800A22C4
/* A2EC0 800A22C0 00000000 */   nop
.L800A22C4:
/* A2EC4 800A22C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2EC8 800A22C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A2ECC 800A22CC 03E00008 */  jr         $ra
/* A2ED0 800A22D0 00000000 */   nop
/* A2ED4 800A22D4 00000000 */  nop
/* A2ED8 800A22D8 00000000 */  nop
/* A2EDC 800A22DC 00000000 */  nop
