glabel func_80042210
/* 042E10 80042210 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 042E14 80042214 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042E18 80042218 8C820064 */  lw    $v0, 0x64($a0)
/* 042E1C 8004221C 90AE000A */  lbu   $t6, 0xa($a1)
/* 042E20 80042220 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 042E24 80042224 A04E0015 */  sb    $t6, 0x15($v0)
/* 042E28 80042228 C484000C */  lwc1  $f4, 0xc($a0)
/* 042E2C 8004222C 31D800FF */  andi  $t8, $t6, 0xff
/* 042E30 80042230 E4440000 */  swc1  $f4, ($v0)
/* 042E34 80042234 C4860010 */  lwc1  $f6, 0x10($a0)
/* 042E38 80042238 24190001 */  li    $t9, 1
/* 042E3C 8004223C E4460004 */  swc1  $f6, 4($v0)
/* 042E40 80042240 C4880014 */  lwc1  $f8, 0x14($a0)
/* 042E44 80042244 00000000 */  nop   
/* 042E48 80042248 E4480008 */  swc1  $f8, 8($v0)
/* 042E4C 8004224C 84AF0008 */  lh    $t7, 8($a1)
/* 042E50 80042250 A0400014 */  sb    $zero, 0x14($v0)
/* 042E54 80042254 448F5000 */  mtc1  $t7, $f10
/* 042E58 80042258 44814000 */  mtc1  $at, $f8
/* 042E5C 8004225C 46805420 */  cvt.s.w $f16, $f10
/* 042E60 80042260 E450000C */  swc1  $f16, 0xc($v0)
/* 042E64 80042264 C440000C */  lwc1  $f0, 0xc($v0)
/* 042E68 80042268 00000000 */  nop   
/* 042E6C 8004226C 46000482 */  mul.s $f18, $f0, $f0
/* 042E70 80042270 E4520010 */  swc1  $f18, 0x10($v0)
/* 042E74 80042274 C484000C */  lwc1  $f4, 0xc($a0)
/* 042E78 80042278 00000000 */  nop   
/* 042E7C 8004227C E4440020 */  swc1  $f4, 0x20($v0)
/* 042E80 80042280 C4860014 */  lwc1  $f6, 0x14($a0)
/* 042E84 80042284 A0400019 */  sb    $zero, 0x19($v0)
/* 042E88 80042288 E4480030 */  swc1  $f8, 0x30($v0)
/* 042E8C 8004228C 13000013 */  beqz  $t8, .L800422DC
/* 042E90 80042290 E4460024 */   swc1  $f6, 0x24($v0)
/* 042E94 80042294 A099003A */  sb    $t9, 0x3a($a0)
/* 042E98 80042298 0C027B34 */  jal   is_drumstick_unlocked
/* 042E9C 8004229C AFA40018 */   sw    $a0, 0x18($sp)
/* 042EA0 800422A0 8FA40018 */  lw    $a0, 0x18($sp)
/* 042EA4 800422A4 14400009 */  bnez  $v0, .L800422CC
/* 042EA8 800422A8 00000000 */   nop   
/* 042EAC 800422AC 0C01BAA4 */  jal   get_settings
/* 042EB0 800422B0 AFA40018 */   sw    $a0, 0x18($sp)
/* 042EB4 800422B4 9448000E */  lhu   $t0, 0xe($v0)
/* 042EB8 800422B8 8FA40018 */  lw    $a0, 0x18($sp)
/* 042EBC 800422BC 240100FF */  li    $at, 255
/* 042EC0 800422C0 310900FF */  andi  $t1, $t0, 0xff
/* 042EC4 800422C4 11210007 */  beq   $t1, $at, .L800422E4
/* 042EC8 800422C8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800422CC:
/* 042ECC 800422CC 0C003FEE */  jal   gParticlePtrList_addObject
/* 042ED0 800422D0 00000000 */   nop   
/* 042ED4 800422D4 10000003 */  b     .L800422E4
/* 042ED8 800422D8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800422DC:
/* 042EDC 800422DC A080003A */  sb    $zero, 0x3a($a0)
/* 042EE0 800422E0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800422E4:
/* 042EE4 800422E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 042EE8 800422E8 03E00008 */  jr    $ra
/* 042EEC 800422EC 00000000 */   nop   

