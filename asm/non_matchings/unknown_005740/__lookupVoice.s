glabel __lookupVoice
/* 00B44C 8000A84C AFA50004 */  sw    $a1, 4($sp)
/* 00B450 8000A850 AFA60008 */  sw    $a2, 8($sp)
/* 00B454 8000A854 8C830064 */  lw    $v1, 0x64($a0)
/* 00B458 8000A858 30CF00FF */  andi  $t7, $a2, 0xff
/* 00B45C 8000A85C 01E03025 */  move  $a2, $t7
/* 00B460 8000A860 10600018 */  beqz  $v1, .L8000A8C4
/* 00B464 8000A864 30AE00FF */   andi  $t6, $a1, 0xff
/* 00B468 8000A868 01C01025 */  move  $v0, $t6
/* 00B46C 8000A86C 24070004 */  li    $a3, 4
/* 00B470 8000A870 24050003 */  li    $a1, 3
.L8000A874:
/* 00B474 8000A874 90780032 */  lbu   $t8, 0x32($v1)
/* 00B478 8000A878 00000000 */  nop   
/* 00B47C 8000A87C 1458000D */  bne   $v0, $t8, .L8000A8B4
/* 00B480 8000A880 00000000 */   nop   
/* 00B484 8000A884 90790031 */  lbu   $t9, 0x31($v1)
/* 00B488 8000A888 00000000 */  nop   
/* 00B48C 8000A88C 14D90009 */  bne   $a2, $t9, .L8000A8B4
/* 00B490 8000A890 00000000 */   nop   
/* 00B494 8000A894 90640035 */  lbu   $a0, 0x35($v1)
/* 00B498 8000A898 00000000 */  nop   
/* 00B49C 8000A89C 10A40005 */  beq   $a1, $a0, .L8000A8B4
/* 00B4A0 8000A8A0 00000000 */   nop   
/* 00B4A4 8000A8A4 10E40003 */  beq   $a3, $a0, .L8000A8B4
/* 00B4A8 8000A8A8 00000000 */   nop   
/* 00B4AC 8000A8AC 03E00008 */  jr    $ra
/* 00B4B0 8000A8B0 00601025 */   move  $v0, $v1

.L8000A8B4:
/* 00B4B4 8000A8B4 8C630000 */  lw    $v1, ($v1)
/* 00B4B8 8000A8B8 00000000 */  nop   
/* 00B4BC 8000A8BC 1460FFED */  bnez  $v1, .L8000A874
/* 00B4C0 8000A8C0 00000000 */   nop   
.L8000A8C4:
/* 00B4C4 8000A8C4 00001025 */  move  $v0, $zero
/* 00B4C8 8000A8C8 03E00008 */  jr    $ra
/* 00B4CC 8000A8CC 00000000 */   nop   
