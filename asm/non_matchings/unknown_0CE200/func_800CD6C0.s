glabel func_800CD6C0
/* 0CE2C0 800CD6C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CE2C4 800CD6C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CE2C8 800CD6C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CE2CC 800CD6CC 0C0354B0 */  jal   func_800D52C0
/* 0CE2D0 800CD6D0 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0CE2D4 800CD6D4 10400003 */  beqz  $v0, .L800CD6E4
/* 0CE2D8 800CD6D8 00000000 */   nop   
/* 0CE2DC 800CD6DC 1000001F */  b     .L800CD75C
/* 0CE2E0 800CD6E0 2402FFFF */   li    $v0, -1
.L800CD6E4:
/* 0CE2E4 800CD6E4 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0CE2E8 800CD6E8 24010001 */  li    $at, 1
/* 0CE2EC 800CD6EC 15C10004 */  bne   $t6, $at, .L800CD700
/* 0CE2F0 800CD6F0 00000000 */   nop   
/* 0CE2F4 800CD6F4 8FA4001C */  lw    $a0, 0x1c($sp)
/* 0CE2F8 800CD6F8 0C03518C */  jal   func_800D4630
/* 0CE2FC 800CD6FC 24050040 */   li    $a1, 64
.L800CD700:
/* 0CE300 800CD700 0C03233C */  jal   func_800C8CF0
/* 0CE304 800CD704 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0CE308 800CD708 3C0FA480 */  lui   $t7, 0xa480
/* 0CE30C 800CD70C ADE20000 */  sw    $v0, ($t7)
/* 0CE310 800CD710 8FB80018 */  lw    $t8, 0x18($sp)
/* 0CE314 800CD714 17000006 */  bnez  $t8, .L800CD730
/* 0CE318 800CD718 00000000 */   nop   
/* 0CE31C 800CD71C 3C191FC0 */  lui   $t9, (0x1FC007C0 >> 16) # lui $t9, 0x1fc0
/* 0CE320 800CD720 373907C0 */  ori   $t9, (0x1FC007C0 & 0xFFFF) # ori $t9, $t9, 0x7c0
/* 0CE324 800CD724 3C08A480 */  lui   $t0, %hi(D_A4800004) # $t0, 0xa480
/* 0CE328 800CD728 10000005 */  b     .L800CD740
/* 0CE32C 800CD72C AD190004 */   sw    $t9, %lo(D_A4800004)($t0)
.L800CD730:
/* 0CE330 800CD730 3C091FC0 */  lui   $t1, (0x1FC007C0 >> 16) # lui $t1, 0x1fc0
/* 0CE334 800CD734 352907C0 */  ori   $t1, (0x1FC007C0 & 0xFFFF) # ori $t1, $t1, 0x7c0
/* 0CE338 800CD738 3C0AA480 */  lui   $t2, %hi(D_A4800010) # $t2, 0xa480
/* 0CE33C 800CD73C AD490010 */  sw    $t1, %lo(D_A4800010)($t2)
.L800CD740:
/* 0CE340 800CD740 8FAB0018 */  lw    $t3, 0x18($sp)
/* 0CE344 800CD744 15600004 */  bnez  $t3, .L800CD758
/* 0CE348 800CD748 00000000 */   nop   
/* 0CE34C 800CD74C 8FA4001C */  lw    $a0, 0x1c($sp)
/* 0CE350 800CD750 0C0345FC */  jal   func_800D17F0
/* 0CE354 800CD754 24050040 */   li    $a1, 64
.L800CD758:
/* 0CE358 800CD758 00001025 */  move  $v0, $zero
.L800CD75C:
/* 0CE35C 800CD75C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CE360 800CD760 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CE364 800CD764 03E00008 */  jr    $ra
/* 0CE368 800CD768 00000000 */   nop   

/* 0CE36C 800CD76C 00000000 */  nop   
