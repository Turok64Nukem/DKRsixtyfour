glabel func_800575EC
/* 0581EC 800575EC 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0581F0 800575F0 AFB00030 */  sw    $s0, 0x30($sp)
/* 0581F4 800575F4 00A08025 */  move  $s0, $a1
/* 0581F8 800575F8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0581FC 800575FC E7B50028 */  swc1  $f21, 0x28($sp)
/* 058200 80057600 E7B4002C */  swc1  $f20, 0x2c($sp)
/* 058204 80057604 848E0000 */  lh    $t6, ($a0)
/* 058208 80057608 3C058012 */  lui   $a1, %hi(D_8011D510) # $a1, 0x8012
/* 05820C 8005760C 24A5D510 */  addiu $a1, %lo(D_8011D510) # addiu $a1, $a1, -0x2af0
/* 058210 80057610 A4AE0000 */  sh    $t6, ($a1)
/* 058214 80057614 848F0002 */  lh    $t7, 2($a0)
/* 058218 80057618 4480A000 */  mtc1  $zero, $f20
/* 05821C 8005761C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 058220 80057620 44812000 */  mtc1  $at, $f4
/* 058224 80057624 A4A00004 */  sh    $zero, 4($a1)
/* 058228 80057628 27A40038 */  addiu $a0, $sp, 0x38
/* 05822C 8005762C A4AF0002 */  sh    $t7, 2($a1)
/* 058230 80057630 E4B4000C */  swc1  $f20, 0xc($a1)
/* 058234 80057634 E4B40010 */  swc1  $f20, 0x10($a1)
/* 058238 80057638 E4B40014 */  swc1  $f20, 0x14($a1)
/* 05823C 8005763C 0C01BF0C */  jal   func_8006FC30
/* 058240 80057640 E4A40008 */   swc1  $f4, 8($a1)
/* 058244 80057644 4405A000 */  mfc1  $a1, $f20
/* 058248 80057648 4406A000 */  mfc1  $a2, $f20
/* 05824C 8005764C 26180038 */  addiu $t8, $s0, 0x38
/* 058250 80057650 2619003C */  addiu $t9, $s0, 0x3c
/* 058254 80057654 26080040 */  addiu $t0, $s0, 0x40
/* 058258 80057658 AFA80018 */  sw    $t0, 0x18($sp)
/* 05825C 8005765C AFB90014 */  sw    $t9, 0x14($sp)
/* 058260 80057660 AFB80010 */  sw    $t8, 0x10($sp)
/* 058264 80057664 27A40038 */  addiu $a0, $sp, 0x38
/* 058268 80057668 0C01BD93 */  jal   guMtxXFMF
/* 05826C 8005766C 3C073F80 */   lui   $a3, 0x3f80
/* 058270 80057670 4405A000 */  mfc1  $a1, $f20
/* 058274 80057674 4407A000 */  mfc1  $a3, $f20
/* 058278 80057678 26090044 */  addiu $t1, $s0, 0x44
/* 05827C 8005767C 260A0048 */  addiu $t2, $s0, 0x48
/* 058280 80057680 260B004C */  addiu $t3, $s0, 0x4c
/* 058284 80057684 AFAB0018 */  sw    $t3, 0x18($sp)
/* 058288 80057688 AFAA0014 */  sw    $t2, 0x14($sp)
/* 05828C 8005768C AFA90010 */  sw    $t1, 0x10($sp)
/* 058290 80057690 27A40038 */  addiu $a0, $sp, 0x38
/* 058294 80057694 0C01BD93 */  jal   guMtxXFMF
/* 058298 80057698 3C063F80 */   lui   $a2, 0x3f80
/* 05829C 8005769C 4406A000 */  mfc1  $a2, $f20
/* 0582A0 800576A0 4407A000 */  mfc1  $a3, $f20
/* 0582A4 800576A4 260C0050 */  addiu $t4, $s0, 0x50
/* 0582A8 800576A8 260D0054 */  addiu $t5, $s0, 0x54
/* 0582AC 800576AC 260E0058 */  addiu $t6, $s0, 0x58
/* 0582B0 800576B0 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0582B4 800576B4 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0582B8 800576B8 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0582BC 800576BC 27A40038 */  addiu $a0, $sp, 0x38
/* 0582C0 800576C0 0C01BD93 */  jal   guMtxXFMF
/* 0582C4 800576C4 3C053F80 */   lui   $a1, 0x3f80
/* 0582C8 800576C8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0582CC 800576CC C7B50028 */  lwc1  $f21, 0x28($sp)
/* 0582D0 800576D0 C7B4002C */  lwc1  $f20, 0x2c($sp)
/* 0582D4 800576D4 8FB00030 */  lw    $s0, 0x30($sp)
/* 0582D8 800576D8 03E00008 */  jr    $ra
/* 0582DC 800576DC 27BD0078 */   addiu $sp, $sp, 0x78

