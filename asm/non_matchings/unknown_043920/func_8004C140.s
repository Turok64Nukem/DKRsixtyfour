glabel func_8004C140
/* 04CD40 8004C140 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04CD44 8004C144 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04CD48 8004C148 AFB00018 */  sw    $s0, 0x18($sp)
/* 04CD4C 8004C14C 84AE0000 */  lh    $t6, ($a1)
/* 04CD50 8004C150 2401FFFF */  li    $at, -1
/* 04CD54 8004C154 15C10003 */  bne   $t6, $at, .L8004C164
/* 04CD58 8004C158 00A08025 */   move  $s0, $a1
/* 04CD5C 8004C15C 10000003 */  b     .L8004C16C
/* 04CD60 8004C160 00001825 */   move  $v1, $zero
.L8004C164:
/* 04CD64 8004C164 82030185 */  lb    $v1, 0x185($s0)
/* 04CD68 8004C168 00000000 */  nop   
.L8004C16C:
/* 04CD6C 8004C16C 82020187 */  lb    $v0, 0x187($s0)
/* 04CD70 8004C170 00000000 */  nop   
/* 04CD74 8004C174 10400005 */  beqz  $v0, .L8004C18C
/* 04CD78 8004C178 00000000 */   nop   
/* 04CD7C 8004C17C 860F018E */  lh    $t7, 0x18e($s0)
/* 04CD80 8004C180 24010004 */  li    $at, 4
/* 04CD84 8004C184 19E00003 */  blez  $t7, .L8004C194
/* 04CD88 8004C188 00000000 */   nop   
.L8004C18C:
/* 04CD8C 8004C18C 10000044 */  b     .L8004C2A0
/* 04CD90 8004C190 A2000187 */   sb    $zero, 0x187($s0)
.L8004C194:
/* 04CD94 8004C194 10410008 */  beq   $v0, $at, .L8004C1B8
/* 04CD98 8004C198 02002825 */   move  $a1, $s0
/* 04CD9C 8004C19C 24060002 */  li    $a2, 2
/* 04CDA0 8004C1A0 A3A30027 */  sb    $v1, 0x27($sp)
/* 04CDA4 8004C1A4 0C015DB8 */  jal   func_800576E0
/* 04CDA8 8004C1A8 AFA40028 */   sw    $a0, 0x28($sp)
/* 04CDAC 8004C1AC 83A30027 */  lb    $v1, 0x27($sp)
/* 04CDB0 8004C1B0 8FA40028 */  lw    $a0, 0x28($sp)
/* 04CDB4 8004C1B4 00000000 */  nop   
.L8004C1B8:
/* 04CDB8 8004C1B8 921901C9 */  lbu   $t9, 0x1c9($s0)
/* 04CDBC 8004C1BC 24180168 */  li    $t8, 360
/* 04CDC0 8004C1C0 24010008 */  li    $at, 8
/* 04CDC4 8004C1C4 17210002 */  bne   $t9, $at, .L8004C1D0
/* 04CDC8 8004C1C8 A618018C */   sh    $t8, 0x18c($s0)
/* 04CDCC 8004C1CC A20001C9 */  sb    $zero, 0x1c9($s0)
.L8004C1D0:
/* 04CDD0 8004C1D0 820801D6 */  lb    $t0, 0x1d6($s0)
/* 04CDD4 8004C1D4 240501C2 */  li    $a1, 450
/* 04CDD8 8004C1D8 29010005 */  slti  $at, $t0, 5
/* 04CDDC 8004C1DC 10200030 */  beqz  $at, .L8004C2A0
/* 04CDE0 8004C1E0 24060008 */   li    $a2, 8
/* 04CDE4 8004C1E4 24070081 */  li    $a3, 129
/* 04CDE8 8004C1E8 A3A30027 */  sb    $v1, 0x27($sp)
/* 04CDEC 8004C1EC 0C015C2E */  jal   func_800570B8
/* 04CDF0 8004C1F0 AFA40028 */   sw    $a0, 0x28($sp)
/* 04CDF4 8004C1F4 82020187 */  lb    $v0, 0x187($s0)
/* 04CDF8 8004C1F8 83A30027 */  lb    $v1, 0x27($sp)
/* 04CDFC 8004C1FC 8FA40028 */  lw    $a0, 0x28($sp)
/* 04CE00 8004C200 24010001 */  li    $at, 1
/* 04CE04 8004C204 10410009 */  beq   $v0, $at, .L8004C22C
/* 04CE08 8004C208 24010002 */   li    $at, 2
/* 04CE0C 8004C20C 10410007 */  beq   $v0, $at, .L8004C22C
/* 04CE10 8004C210 24010003 */   li    $at, 3
/* 04CE14 8004C214 1041000C */  beq   $v0, $at, .L8004C248
/* 04CE18 8004C218 24010006 */   li    $at, 6
/* 04CE1C 8004C21C 10410011 */  beq   $v0, $at, .L8004C264
/* 04CE20 8004C220 240D0078 */   li    $t5, 120
/* 04CE24 8004C224 1000001E */  b     .L8004C2A0
/* 04CE28 8004C228 A2000187 */   sb    $zero, 0x187($s0)
.L8004C22C:
/* 04CE2C 8004C22C 10600004 */  beqz  $v1, .L8004C240
/* 04CE30 8004C230 240A003C */   li    $t2, 60
/* 04CE34 8004C234 24090028 */  li    $t1, 40
/* 04CE38 8004C238 10000018 */  b     .L8004C29C
/* 04CE3C 8004C23C A20901DB */   sb    $t1, 0x1db($s0)
.L8004C240:
/* 04CE40 8004C240 10000016 */  b     .L8004C29C
/* 04CE44 8004C244 A20A01DB */   sb    $t2, 0x1db($s0)
.L8004C248:
/* 04CE48 8004C248 10600004 */  beqz  $v1, .L8004C25C
/* 04CE4C 8004C24C 240C003C */   li    $t4, 60
/* 04CE50 8004C250 240B0028 */  li    $t3, 40
/* 04CE54 8004C254 10000011 */  b     .L8004C29C
/* 04CE58 8004C258 A20B01DB */   sb    $t3, 0x1db($s0)
.L8004C25C:
/* 04CE5C 8004C25C 1000000F */  b     .L8004C29C
/* 04CE60 8004C260 A20C01DB */   sb    $t4, 0x1db($s0)
.L8004C264:
/* 04CE64 8004C264 3C01800E */  lui   $at, %hi(D_800E6554) # $at, 0x800e
/* 04CE68 8004C268 C4216550 */  lwc1  $f1, %lo(D_800E6550)($at)
/* 04CE6C 8004C26C C4206554 */  lwc1  $f0, %lo(D_800E6554)($at)
/* 04CE70 8004C270 A60D0204 */  sh    $t5, 0x204($s0)
/* 04CE74 8004C274 C484001C */  lwc1  $f4, 0x1c($a0)
/* 04CE78 8004C278 C4900024 */  lwc1  $f16, 0x24($a0)
/* 04CE7C 8004C27C 460021A1 */  cvt.d.s $f6, $f4
/* 04CE80 8004C280 46203202 */  mul.d $f8, $f6, $f0
/* 04CE84 8004C284 460084A1 */  cvt.d.s $f18, $f16
/* 04CE88 8004C288 46209102 */  mul.d $f4, $f18, $f0
/* 04CE8C 8004C28C 462042A0 */  cvt.s.d $f10, $f8
/* 04CE90 8004C290 E48A001C */  swc1  $f10, 0x1c($a0)
/* 04CE94 8004C294 462021A0 */  cvt.s.d $f6, $f4
/* 04CE98 8004C298 E4860024 */  swc1  $f6, 0x24($a0)
.L8004C29C:
/* 04CE9C 8004C29C A2000187 */  sb    $zero, 0x187($s0)
.L8004C2A0:
/* 04CEA0 8004C2A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04CEA4 8004C2A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 04CEA8 8004C2A8 03E00008 */  jr    $ra
/* 04CEAC 8004C2AC 27BD0028 */   addiu $sp, $sp, 0x28
