glabel func_80054FD0
/* 055BD0 80054FD0 27BDFE60 */  addiu $sp, $sp, -0x1a0
/* 055BD4 80054FD4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 055BD8 80054FD8 AFB10028 */  sw    $s1, 0x28($sp)
/* 055BDC 80054FDC AFB00024 */  sw    $s0, 0x24($sp)
/* 055BE0 80054FE0 AFA601A8 */  sw    $a2, 0x1a8($sp)
/* 055BE4 80054FE4 3C018012 */  lui   $at, %hi(D_8011D4F0) # $at, 0x8012
/* 055BE8 80054FE8 C420D4F0 */  lwc1  $f0, %lo(D_8011D4F0)($at)
/* 055BEC 80054FEC C4840010 */  lwc1  $f4, 0x10($a0)
/* 055BF0 80054FF0 00A08025 */  move  $s0, $a1
/* 055BF4 80054FF4 4604003C */  c.lt.s $f0, $f4
/* 055BF8 80054FF8 00808825 */  move  $s1, $a0
/* 055BFC 80054FFC 45000004 */  bc1f  .L80055010
/* 055C00 80055000 00000000 */   nop   
/* 055C04 80055004 E4800010 */  swc1  $f0, 0x10($a0)
/* 055C08 80055008 0C00AB32 */  jal   func_8002ACC8
/* 055C0C 8005500C 24040001 */   li    $a0, 1
.L80055010:
/* 055C10 80055010 A7A00130 */  sh    $zero, 0x130($sp)
/* 055C14 80055014 862E0000 */  lh    $t6, ($s1)
/* 055C18 80055018 3C058012 */  lui   $a1, %hi(D_8011D510) # $a1, 0x8012
/* 055C1C 8005501C 24A5D510 */  addiu $a1, %lo(D_8011D510) # addiu $a1, $a1, -0x2af0
/* 055C20 80055020 A4AE0000 */  sh    $t6, ($a1)
/* 055C24 80055024 862F0002 */  lh    $t7, 2($s1)
/* 055C28 80055028 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 055C2C 8005502C A4AF0002 */  sh    $t7, 2($a1)
/* 055C30 80055030 86380004 */  lh    $t8, 4($s1)
/* 055C34 80055034 44813000 */  mtc1  $at, $f6
/* 055C38 80055038 A4B80004 */  sh    $t8, 4($a1)
/* 055C3C 8005503C E4A60008 */  swc1  $f6, 8($a1)
/* 055C40 80055040 C628000C */  lwc1  $f8, 0xc($s1)
/* 055C44 80055044 27A400A0 */  addiu $a0, $sp, 0xa0
/* 055C48 80055048 E4A8000C */  swc1  $f8, 0xc($a1)
/* 055C4C 8005504C C62A0010 */  lwc1  $f10, 0x10($s1)
/* 055C50 80055050 00000000 */  nop   
/* 055C54 80055054 E4AA0010 */  swc1  $f10, 0x10($a1)
/* 055C58 80055058 C6240014 */  lwc1  $f4, 0x14($s1)
/* 055C5C 8005505C 0C01BF0C */  jal   func_8006FC30
/* 055C60 80055060 E4A40014 */   swc1  $f4, 0x14($a1)
/* 055C64 80055064 3C038012 */  lui   $v1, %hi(D_8011D568) # $v1, 0x8012
/* 055C68 80055068 8C63D568 */  lw    $v1, %lo(D_8011D568)($v1)
/* 055C6C 8005506C 00004025 */  move  $t0, $zero
/* 055C70 80055070 27A90134 */  addiu $t1, $sp, 0x134
/* 055C74 80055074 27AA0138 */  addiu $t2, $sp, 0x138
/* 055C78 80055078 27AB013C */  addiu $t3, $sp, 0x13c
/* 055C7C 8005507C 27AC00E0 */  addiu $t4, $sp, 0xe0
/* 055C80 80055080 27A20058 */  addiu $v0, $sp, 0x58
.L80055084:
/* 055C84 80055084 8C650000 */  lw    $a1, ($v1)
/* 055C88 80055088 8C660004 */  lw    $a2, 4($v1)
/* 055C8C 8005508C 8C670008 */  lw    $a3, 8($v1)
/* 055C90 80055090 AFAC0040 */  sw    $t4, 0x40($sp)
/* 055C94 80055094 AFAB0044 */  sw    $t3, 0x44($sp)
/* 055C98 80055098 AFAA0048 */  sw    $t2, 0x48($sp)
/* 055C9C 8005509C AFA9004C */  sw    $t1, 0x4c($sp)
/* 055CA0 800550A0 AFA80054 */  sw    $t0, 0x54($sp)
/* 055CA4 800550A4 AFA2003C */  sw    $v0, 0x3c($sp)
/* 055CA8 800550A8 AFAB0018 */  sw    $t3, 0x18($sp)
/* 055CAC 800550AC AFAA0014 */  sw    $t2, 0x14($sp)
/* 055CB0 800550B0 AFA90010 */  sw    $t1, 0x10($sp)
/* 055CB4 800550B4 0C01BD93 */  jal   func_8006F64C
/* 055CB8 800550B8 27A400A0 */   addiu $a0, $sp, 0xa0
/* 055CBC 800550BC 3C198012 */  lui   $t9, %hi(D_8011D568) # $t9, 0x8012
/* 055CC0 800550C0 8FA80054 */  lw    $t0, 0x54($sp)
/* 055CC4 800550C4 8F39D568 */  lw    $t9, %lo(D_8011D568)($t9)
/* 055CC8 800550C8 8FA2003C */  lw    $v0, 0x3c($sp)
/* 055CCC 800550CC 8FA9004C */  lw    $t1, 0x4c($sp)
/* 055CD0 800550D0 8FAA0048 */  lw    $t2, 0x48($sp)
/* 055CD4 800550D4 8FAB0044 */  lw    $t3, 0x44($sp)
/* 055CD8 800550D8 8FAC0040 */  lw    $t4, 0x40($sp)
/* 055CDC 800550DC 03281821 */  addu  $v1, $t9, $t0
/* 055CE0 800550E0 C466000C */  lwc1  $f6, 0xc($v1)
/* 055CE4 800550E4 27AE005C */  addiu $t6, $sp, 0x5c
/* 055CE8 800550E8 24420001 */  addiu $v0, $v0, 1
/* 055CEC 800550EC 004E082B */  sltu  $at, $v0, $t6
/* 055CF0 800550F0 240DFFFF */  li    $t5, -1
/* 055CF4 800550F4 24630010 */  addiu $v1, $v1, 0x10
/* 055CF8 800550F8 25080010 */  addiu $t0, $t0, 0x10
/* 055CFC 800550FC A04DFFFF */  sb    $t5, -1($v0)
/* 055D00 80055100 2529000C */  addiu $t1, $t1, 0xc
/* 055D04 80055104 254A000C */  addiu $t2, $t2, 0xc
/* 055D08 80055108 256B000C */  addiu $t3, $t3, 0xc
/* 055D0C 8005510C 258C0004 */  addiu $t4, $t4, 4
/* 055D10 80055110 1420FFDC */  bnez  $at, .L80055084
/* 055D14 80055114 E586FFFC */   swc1  $f6, -4($t4)
/* 055D18 80055118 44808000 */  mtc1  $zero, $f16
/* 055D1C 8005511C 3C038012 */  lui   $v1, %hi(D_8011D548) # $v1, 0x8012
/* 055D20 80055120 3C088012 */  lui   $t0, %hi(D_8011D54C) # $t0, 0x8012
/* 055D24 80055124 2508D54C */  addiu $t0, %lo(D_8011D54C) # addiu $t0, $t0, -0x2ab4
/* 055D28 80055128 2463D548 */  addiu $v1, %lo(D_8011D548) # addiu $v1, $v1, -0x2ab8
/* 055D2C 8005512C AFA00190 */  sw    $zero, 0x190($sp)
/* 055D30 80055130 E4700000 */  swc1  $f16, ($v1)
/* 055D34 80055134 E5100000 */  swc1  $f16, ($t0)
/* 055D38 80055138 860F0000 */  lh    $t7, ($s0)
/* 055D3C 8005513C 2401FFFF */  li    $at, -1
/* 055D40 80055140 15E10005 */  bne   $t7, $at, .L80055158
/* 055D44 80055144 00004825 */   move  $t1, $zero
/* 055D48 80055148 821801D7 */  lb    $t8, 0x1d7($s0)
/* 055D4C 8005514C 00000000 */  nop   
/* 055D50 80055150 2B010005 */  slti  $at, $t8, 5
/* 055D54 80055154 10200011 */  beqz  $at, .L8005519C
.L80055158:
/* 055D58 80055158 27B90134 */   addiu $t9, $sp, 0x134
/* 055D5C 8005515C 27AD00E0 */  addiu $t5, $sp, 0xe0
/* 055D60 80055160 27AE0058 */  addiu $t6, $sp, 0x58
/* 055D64 80055164 AFAE0018 */  sw    $t6, 0x18($sp)
/* 055D68 80055168 AFAD0014 */  sw    $t5, 0x14($sp)
/* 055D6C 8005516C AFB90010 */  sw    $t9, 0x10($sp)
/* 055D70 80055170 02202025 */  move  $a0, $s1
/* 055D74 80055174 24050004 */  li    $a1, 4
/* 055D78 80055178 27A60190 */  addiu $a2, $sp, 0x190
/* 055D7C 8005517C 0C005C92 */  jal   func_80017248
/* 055D80 80055180 260700D8 */   addiu $a3, $s0, 0xd8
/* 055D84 80055184 3C038012 */  lui   $v1, %hi(D_8011D548) # $v1, 0x8012
/* 055D88 80055188 3C088012 */  lui   $t0, %hi(D_8011D54C) # $t0, 0x8012
/* 055D8C 8005518C 44808000 */  mtc1  $zero, $f16
/* 055D90 80055190 2508D54C */  addiu $t0, %lo(D_8011D54C) # addiu $t0, $t0, -0x2ab4
/* 055D94 80055194 2463D548 */  addiu $v1, %lo(D_8011D548) # addiu $v1, $v1, -0x2ab8
/* 055D98 80055198 00404825 */  move  $t1, $v0
.L8005519C:
/* 055D9C 8005519C 312F0080 */  andi  $t7, $t1, 0x80
/* 055DA0 800551A0 11E0003F */  beqz  $t7, .L800552A0
/* 055DA4 800551A4 260500D8 */   addiu $a1, $s0, 0xd8
/* 055DA8 800551A8 C7A80134 */  lwc1  $f8, 0x134($sp)
/* 055DAC 800551AC C46A0000 */  lwc1  $f10, ($v1)
/* 055DB0 800551B0 3C018012 */  lui   $at, %hi(D_8011D548) # $at, 0x8012
/* 055DB4 800551B4 460A4100 */  add.s $f4, $f8, $f10
/* 055DB8 800551B8 C7A6013C */  lwc1  $f6, 0x13c($sp)
/* 055DBC 800551BC E424D548 */  swc1  $f4, %lo(D_8011D548)($at)
/* 055DC0 800551C0 C5080000 */  lwc1  $f8, ($t0)
/* 055DC4 800551C4 3C018012 */  lui   $at, %hi(D_8011D54C) # $at, 0x8012
/* 055DC8 800551C8 46083280 */  add.s $f10, $f6, $f8
/* 055DCC 800551CC C7A40140 */  lwc1  $f4, 0x140($sp)
/* 055DD0 800551D0 E42AD54C */  swc1  $f10, %lo(D_8011D54C)($at)
/* 055DD4 800551D4 C4660000 */  lwc1  $f6, ($v1)
/* 055DD8 800551D8 3C018012 */  lui   $at, %hi(D_8011D548) # $at, 0x8012
/* 055DDC 800551DC 46062200 */  add.s $f8, $f4, $f6
/* 055DE0 800551E0 C7AA0148 */  lwc1  $f10, 0x148($sp)
/* 055DE4 800551E4 E428D548 */  swc1  $f8, %lo(D_8011D548)($at)
/* 055DE8 800551E8 C5040000 */  lwc1  $f4, ($t0)
/* 055DEC 800551EC 3C018012 */  lui   $at, %hi(D_8011D54C) # $at, 0x8012
/* 055DF0 800551F0 46045180 */  add.s $f6, $f10, $f4
/* 055DF4 800551F4 C7A8014C */  lwc1  $f8, 0x14c($sp)
/* 055DF8 800551F8 E426D54C */  swc1  $f6, %lo(D_8011D54C)($at)
/* 055DFC 800551FC C46A0000 */  lwc1  $f10, ($v1)
/* 055E00 80055200 3C018012 */  lui   $at, %hi(D_8011D548) # $at, 0x8012
/* 055E04 80055204 460A4100 */  add.s $f4, $f8, $f10
/* 055E08 80055208 C7A60154 */  lwc1  $f6, 0x154($sp)
/* 055E0C 8005520C E424D548 */  swc1  $f4, %lo(D_8011D548)($at)
/* 055E10 80055210 C5080000 */  lwc1  $f8, ($t0)
/* 055E14 80055214 3C018012 */  lui   $at, %hi(D_8011D54C) # $at, 0x8012
/* 055E18 80055218 46083280 */  add.s $f10, $f6, $f8
/* 055E1C 8005521C C7A40158 */  lwc1  $f4, 0x158($sp)
/* 055E20 80055220 E42AD54C */  swc1  $f10, %lo(D_8011D54C)($at)
/* 055E24 80055224 C4660000 */  lwc1  $f6, ($v1)
/* 055E28 80055228 3C018012 */  lui   $at, %hi(D_8011D548) # $at, 0x8012
/* 055E2C 8005522C 46062200 */  add.s $f8, $f4, $f6
/* 055E30 80055230 C7AA0160 */  lwc1  $f10, 0x160($sp)
/* 055E34 80055234 E428D548 */  swc1  $f8, %lo(D_8011D548)($at)
/* 055E38 80055238 C5040000 */  lwc1  $f4, ($t0)
/* 055E3C 8005523C 3C018012 */  li    $at, 0x80120000 # -0.000000
/* 055E40 80055240 46045180 */  add.s $f6, $f10, $f4
/* 055E44 80055244 24180001 */  li    $t8, 1
/* 055E48 80055248 E426D54C */  swc1  $f6, %lo(D_8011D54C)($at)
/* 055E4C 8005524C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 055E50 80055250 44815000 */  mtc1  $at, $f10
/* 055E54 80055254 C4680000 */  lwc1  $f8, ($v1)
/* 055E58 80055258 C5060000 */  lwc1  $f6, ($t0)
/* 055E5C 8005525C 460A4103 */  div.s $f4, $f8, $f10
/* 055E60 80055260 44814000 */  mtc1  $at, $f8
/* 055E64 80055264 2401FF7F */  li    $at, -129
/* 055E68 80055268 0121C824 */  and   $t9, $t1, $at
/* 055E6C 8005526C 03204825 */  move  $t1, $t9
/* 055E70 80055270 46083283 */  div.s $f10, $f6, $f8
/* 055E74 80055274 E4640000 */  swc1  $f4, ($v1)
/* 055E78 80055278 C4640000 */  lwc1  $f4, ($v1)
/* 055E7C 8005527C E50A0000 */  swc1  $f10, ($t0)
/* 055E80 80055280 C626000C */  lwc1  $f6, 0xc($s1)
/* 055E84 80055284 C50A0000 */  lwc1  $f10, ($t0)
/* 055E88 80055288 46062201 */  sub.s $f8, $f4, $f6
/* 055E8C 8005528C E4680000 */  swc1  $f8, ($v1)
/* 055E90 80055290 C6240014 */  lwc1  $f4, 0x14($s1)
/* 055E94 80055294 A7B80130 */  sh    $t8, 0x130($sp)
/* 055E98 80055298 46045181 */  sub.s $f6, $f10, $f4
/* 055E9C 8005529C E5060000 */  swc1  $f6, ($t0)
.L800552A0:
/* 055EA0 800552A0 1120001E */  beqz  $t1, .L8005531C
/* 055EA4 800552A4 00001025 */   move  $v0, $zero
/* 055EA8 800552A8 C7A80138 */  lwc1  $f8, 0x138($sp)
/* 055EAC 800552AC C7AA0144 */  lwc1  $f10, 0x144($sp)
/* 055EB0 800552B0 46088000 */  add.s $f0, $f16, $f8
/* 055EB4 800552B4 C7A40150 */  lwc1  $f4, 0x150($sp)
/* 055EB8 800552B8 460A0000 */  add.s $f0, $f0, $f10
/* 055EBC 800552BC C7A6015C */  lwc1  $f6, 0x15c($sp)
/* 055EC0 800552C0 46040000 */  add.s $f0, $f0, $f4
/* 055EC4 800552C4 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 055EC8 800552C8 46060000 */  add.s $f0, $f0, $f6
/* 055ECC 800552CC 44812800 */  mtc1  $at, $f5
/* 055ED0 800552D0 E7A00178 */  swc1  $f0, 0x178($sp)
/* 055ED4 800552D4 C7A80178 */  lwc1  $f8, 0x178($sp)
/* 055ED8 800552D8 44802000 */  mtc1  $zero, $f4
/* 055EDC 800552DC 460042A1 */  cvt.d.s $f10, $f8
/* 055EE0 800552E0 46245182 */  mul.d $f6, $f10, $f4
/* 055EE4 800552E4 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 055EE8 800552E8 46203220 */  cvt.s.d $f8, $f6
/* 055EEC 800552EC 44814800 */  mtc1  $at, $f9
/* 055EF0 800552F0 E7A80178 */  swc1  $f8, 0x178($sp)
/* 055EF4 800552F4 C6240010 */  lwc1  $f4, 0x10($s1)
/* 055EF8 800552F8 460042A1 */  cvt.d.s $f10, $f8
/* 055EFC 800552FC 44804000 */  mtc1  $zero, $f8
/* 055F00 80055300 460021A1 */  cvt.d.s $f6, $f4
/* 055F04 80055304 46283101 */  sub.d $f4, $f6, $f8
/* 055F08 80055308 4624503C */  c.lt.d $f10, $f4
/* 055F0C 8005530C 00000000 */  nop   
/* 055F10 80055310 45000002 */  bc1f  .L8005531C
/* 055F14 80055314 00000000 */   nop   
/* 055F18 80055318 24020001 */  li    $v0, 1
.L8005531C:
/* 055F1C 8005531C 820701D6 */  lb    $a3, 0x1d6($s0)
/* 055F20 80055320 AFA9018C */  sw    $t1, 0x18c($sp)
/* 055F24 80055324 AFA50054 */  sw    $a1, 0x54($sp)
/* 055F28 80055328 A3A2005F */  sb    $v0, 0x5f($sp)
/* 055F2C 8005532C 24040004 */  li    $a0, 4
/* 055F30 80055330 0C00C44C */  jal   func_80031130
/* 055F34 80055334 27A60134 */   addiu $a2, $sp, 0x134
/* 055F38 80055338 8FA40054 */  lw    $a0, 0x54($sp)
/* 055F3C 8005533C 240D0004 */  li    $t5, 4
/* 055F40 80055340 27AE0190 */  addiu $t6, $sp, 0x190
/* 055F44 80055344 AFA00190 */  sw    $zero, 0x190($sp)
/* 055F48 80055348 AFAE0014 */  sw    $t6, 0x14($sp)
/* 055F4C 8005534C AFAD0010 */  sw    $t5, 0x10($sp)
/* 055F50 80055350 27A50134 */  addiu $a1, $sp, 0x134
/* 055F54 80055354 27A600E0 */  addiu $a2, $sp, 0xe0
/* 055F58 80055358 0C00C580 */  jal   func_80031600
/* 055F5C 8005535C 27A70058 */   addiu $a3, $sp, 0x58
/* 055F60 80055360 A20201E3 */  sb    $v0, 0x1e3($s0)
/* 055F64 80055364 27A40180 */  addiu $a0, $sp, 0x180
/* 055F68 80055368 27A50178 */  addiu $a1, $sp, 0x178
/* 055F6C 8005536C 0C00AB35 */  jal   func_8002ACD4
/* 055F70 80055370 27A6017C */   addiu $a2, $sp, 0x17c
/* 055F74 80055374 8FA9018C */  lw    $t1, 0x18c($sp)
/* 055F78 80055378 44808000 */  mtc1  $zero, $f16
/* 055F7C 8005537C 10400081 */  beqz  $v0, .L80055584
/* 055F80 80055380 AFA20184 */   sw    $v0, 0x184($sp)
/* 055F84 80055384 3C01437F */  li    $at, 0x437F0000 # 255.000000
/* 055F88 80055388 44810000 */  mtc1  $at, $f0
/* 055F8C 8005538C C7A60180 */  lwc1  $f6, 0x180($sp)
/* 055F90 80055390 C7A8017C */  lwc1  $f8, 0x17c($sp)
/* 055F94 80055394 46003302 */  mul.s $f12, $f6, $f0
/* 055F98 80055398 AFA9018C */  sw    $t1, 0x18c($sp)
/* 055F9C 8005539C 46004382 */  mul.s $f14, $f8, $f0
/* 055FA0 800553A0 0C01C1D4 */  jal   func_80070750
/* 055FA4 800553A4 00000000 */   nop   
/* 055FA8 800553A8 86390000 */  lh    $t9, ($s1)
/* 055FAC 800553AC 8FA9018C */  lw    $t1, 0x18c($sp)
/* 055FB0 800553B0 00591823 */  subu  $v1, $v0, $t9
/* 055FB4 800553B4 00036C00 */  sll   $t5, $v1, 0x10
/* 055FB8 800553B8 000D7403 */  sra   $t6, $t5, 0x10
/* 055FBC 800553BC 44808000 */  mtc1  $zero, $f16
/* 055FC0 800553C0 29C12000 */  slti  $at, $t6, 0x2000
/* 055FC4 800553C4 10200003 */  beqz  $at, .L800553D4
/* 055FC8 800553C8 29C1E001 */   slti  $at, $t6, -0x1fff
/* 055FCC 800553CC 10200004 */  beqz  $at, .L800553E0
/* 055FD0 800553D0 00000000 */   nop   
.L800553D4:
/* 055FD4 800553D4 820F01D6 */  lb    $t7, 0x1d6($s0)
/* 055FD8 800553D8 24010001 */  li    $at, 1
/* 055FDC 800553DC 15E10069 */  bne   $t7, $at, .L80055584
.L800553E0:
/* 055FE0 800553E0 3C01800E */   lui   $at, %hi(D_800E683C) # $at, 0x800e
/* 055FE4 800553E4 C60A002C */  lwc1  $f10, 0x2c($s0)
/* 055FE8 800553E8 C4276838 */  lwc1  $f7, %lo(D_800E6838)($at)
/* 055FEC 800553EC C426683C */  lwc1  $f6, %lo(D_800E683C)($at)
/* 055FF0 800553F0 46005121 */  cvt.d.s $f4, $f10
/* 055FF4 800553F4 46262202 */  mul.d $f8, $f4, $f6
/* 055FF8 800553F8 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 055FFC 800553FC 44812800 */  mtc1  $at, $f5
/* 056000 80055400 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 056004 80055404 462042A0 */  cvt.s.d $f10, $f8
/* 056008 80055408 4610503C */  c.lt.s $f10, $f16
/* 05600C 8005540C E7AA0178 */  swc1  $f10, 0x178($sp)
/* 056010 80055410 45000003 */  bc1f  .L80055420
/* 056014 80055414 00000000 */   nop   
/* 056018 80055418 46005007 */  neg.s $f0, $f10
/* 05601C 8005541C E7A00178 */  swc1  $f0, 0x178($sp)
.L80055420:
/* 056020 80055420 C7A00178 */  lwc1  $f0, 0x178($sp)
/* 056024 80055424 44802000 */  mtc1  $zero, $f4
/* 056028 80055428 460000A1 */  cvt.d.s $f2, $f0
/* 05602C 8005542C 4622203C */  c.lt.d $f4, $f2
/* 056030 80055430 00000000 */  nop   
/* 056034 80055434 4500000F */  bc1f  .L80055474
/* 056038 80055438 00000000 */   nop   
/* 05603C 8005543C 44813800 */  mtc1  $at, $f7
/* 056040 80055440 44803000 */  mtc1  $zero, $f6
/* 056044 80055444 86040000 */  lh    $a0, ($s0)
/* 056048 80055448 46261202 */  mul.d $f8, $f2, $f6
/* 05604C 8005544C AFA9018C */  sw    $t1, 0x18c($sp)
/* 056050 80055450 24050012 */  li    $a1, 18
/* 056054 80055454 462042A0 */  cvt.s.d $f10, $f8
/* 056058 80055458 44065000 */  mfc1  $a2, $f10
/* 05605C 8005545C 0C01C909 */  jal   func_80072424
/* 056060 80055460 00000000 */   nop   
/* 056064 80055464 C7A00178 */  lwc1  $f0, 0x178($sp)
/* 056068 80055468 8FA9018C */  lw    $t1, 0x18c($sp)
/* 05606C 8005546C 44808000 */  mtc1  $zero, $f16
/* 056070 80055470 460000A1 */  cvt.d.s $f2, $f0
.L80055474:
/* 056074 80055474 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 056078 80055478 44812800 */  mtc1  $at, $f5
/* 05607C 8005547C 44802000 */  mtc1  $zero, $f4
/* 056080 80055480 E7A00178 */  swc1  $f0, 0x178($sp)
/* 056084 80055484 4622203C */  c.lt.d $f4, $f2
/* 056088 80055488 240F0007 */  li    $t7, 7
/* 05608C 8005548C 4500003D */  bc1f  .L80055584
/* 056090 80055490 00000000 */   nop   
/* 056094 80055494 921801F3 */  lbu   $t8, 0x1f3($s0)
/* 056098 80055498 3C0D8012 */  lui   $t5, %hi(D_8011D55C) # $t5, 0x8012
/* 05609C 8005549C 37190008 */  ori   $t9, $t8, 8
/* 0560A0 800554A0 A21901F3 */  sb    $t9, 0x1f3($s0)
/* 0560A4 800554A4 8DADD55C */  lw    $t5, %lo(D_8011D55C)($t5)
/* 0560A8 800554A8 2401FFFF */  li    $at, -1
/* 0560AC 800554AC 11A10006 */  beq   $t5, $at, .L800554C8
/* 0560B0 800554B0 3C0E8012 */   lui   $t6, %hi(D_8011D508) # $t6, 0x8012
/* 0560B4 800554B4 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0560B8 800554B8 44813000 */  mtc1  $at, $f6
/* 0560BC 800554BC 8DCED508 */  lw    $t6, %lo(D_8011D508)($t6)
/* 0560C0 800554C0 00000000 */  nop   
/* 0560C4 800554C4 E5C60030 */  swc1  $f6, 0x30($t6)
.L800554C8:
/* 0560C8 800554C8 86180000 */  lh    $t8, ($s0)
/* 0560CC 800554CC 2401FFFF */  li    $at, -1
/* 0560D0 800554D0 1301000D */  beq   $t8, $at, .L80055508
/* 0560D4 800554D4 A20F01D2 */   sb    $t7, 0x1d2($s0)
/* 0560D8 800554D8 02202025 */  move  $a0, $s1
/* 0560DC 800554DC 240501C2 */  li    $a1, 450
/* 0560E0 800554E0 24060008 */  li    $a2, 8
/* 0560E4 800554E4 24070082 */  li    $a3, 130
/* 0560E8 800554E8 0C015C2E */  jal   func_800570B8
/* 0560EC 800554EC AFA9018C */   sw    $t1, 0x18c($sp)
/* 0560F0 800554F0 02202025 */  move  $a0, $s1
/* 0560F4 800554F4 0C015C12 */  jal   func_80057048
/* 0560F8 800554F8 2405000C */   li    $a1, 12
/* 0560FC 800554FC 8FA9018C */  lw    $t1, 0x18c($sp)
/* 056100 80055500 44808000 */  mtc1  $zero, $f16
/* 056104 80055504 00000000 */  nop   
.L80055508:
/* 056108 80055508 921901EF */  lbu   $t9, 0x1ef($s0)
/* 05610C 8005550C 820E01D6 */  lb    $t6, 0x1d6($s0)
/* 056110 80055510 24010001 */  li    $at, 1
/* 056114 80055514 372D0004 */  ori   $t5, $t9, 4
/* 056118 80055518 15C10009 */  bne   $t6, $at, .L80055540
/* 05611C 8005551C A20D01EF */   sb    $t5, 0x1ef($s0)
/* 056120 80055520 C7A00178 */  lwc1  $f0, 0x178($sp)
/* 056124 80055524 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 056128 80055528 44815800 */  mtc1  $at, $f11
/* 05612C 8005552C 44805000 */  mtc1  $zero, $f10
/* 056130 80055530 46000221 */  cvt.d.s $f8, $f0
/* 056134 80055534 462A4102 */  mul.d $f4, $f8, $f10
/* 056138 80055538 46202020 */  cvt.s.d $f0, $f4
/* 05613C 8005553C E7A00178 */  swc1  $f0, 0x178($sp)
.L80055540:
/* 056140 80055540 C7A60180 */  lwc1  $f6, 0x180($sp)
/* 056144 80055544 C7A80178 */  lwc1  $f8, 0x178($sp)
/* 056148 80055548 3C01800E */  lui   $at, %hi(D_800E6840) # $at, 0x800e
/* 05614C 8005554C 46083282 */  mul.s $f10, $f6, $f8
/* 056150 80055550 E60A011C */  swc1  $f10, 0x11c($s0)
/* 056154 80055554 C7A60178 */  lwc1  $f6, 0x178($sp)
/* 056158 80055558 C7A4017C */  lwc1  $f4, 0x17c($sp)
/* 05615C 8005555C C60A002C */  lwc1  $f10, 0x2c($s0)
/* 056160 80055560 46062202 */  mul.s $f8, $f4, $f6
/* 056164 80055564 46005121 */  cvt.d.s $f4, $f10
/* 056168 80055568 E6080120 */  swc1  $f8, 0x120($s0)
/* 05616C 8005556C C4266844 */  lwc1  $f6, %lo(D_800E6844)($at)
/* 056170 80055570 C4276840 */  lwc1  $f7, %lo(D_800E6840)($at)
/* 056174 80055574 E6100030 */  swc1  $f16, 0x30($s0)
/* 056178 80055578 46262202 */  mul.d $f8, $f4, $f6
/* 05617C 8005557C 462042A0 */  cvt.s.d $f10, $f8
/* 056180 80055580 E60A002C */  swc1  $f10, 0x2c($s0)
.L80055584:
/* 056184 80055584 83AF005F */  lb    $t7, 0x5f($sp)
/* 056188 80055588 00000000 */  nop   
/* 05618C 8005558C 11E0001E */  beqz  $t7, .L80055608
/* 056190 80055590 00000000 */   nop   
/* 056194 80055594 8FB80190 */  lw    $t8, 0x190($sp)
/* 056198 80055598 00000000 */  nop   
/* 05619C 8005559C 2B010003 */  slti  $at, $t8, 3
/* 0561A0 800555A0 14200019 */  bnez  $at, .L80055608
/* 0561A4 800555A4 00000000 */   nop   
/* 0561A8 800555A8 86190000 */  lh    $t9, ($s0)
/* 0561AC 800555AC 2401FFFF */  li    $at, -1
/* 0561B0 800555B0 1321000E */  beq   $t9, $at, .L800555EC
/* 0561B4 800555B4 00000000 */   nop   
/* 0561B8 800555B8 8E0D0020 */  lw    $t5, 0x20($s0)
/* 0561BC 800555BC 00000000 */  nop   
/* 0561C0 800555C0 15A0000A */  bnez  $t5, .L800555EC
/* 0561C4 800555C4 00000000 */   nop   
/* 0561C8 800555C8 860E018E */  lh    $t6, 0x18e($s0)
/* 0561CC 800555CC 2404013F */  li    $a0, 319
/* 0561D0 800555D0 1DC00006 */  bgtz  $t6, .L800555EC
/* 0561D4 800555D4 26050020 */   addiu $a1, $s0, 0x20
/* 0561D8 800555D8 0C000741 */  jal   func_80001D04
/* 0561DC 800555DC AFA9018C */   sw    $t1, 0x18c($sp)
/* 0561E0 800555E0 8FA9018C */  lw    $t1, 0x18c($sp)
/* 0561E4 800555E4 44808000 */  mtc1  $zero, $f16
/* 0561E8 800555E8 00000000 */  nop   
.L800555EC:
/* 0561EC 800555EC 820F01ED */  lb    $t7, 0x1ed($s0)
/* 0561F0 800555F0 24180004 */  li    $t8, 4
/* 0561F4 800555F4 15E00003 */  bnez  $t7, .L80055604
/* 0561F8 800555F8 2419003C */   li    $t9, 60
/* 0561FC 800555FC 10000002 */  b     .L80055608
/* 056200 80055600 A2180187 */   sb    $t8, 0x187($s0)
.L80055604:
/* 056204 80055604 A21901ED */  sb    $t9, 0x1ed($s0)
.L80055608:
/* 056208 80055608 820D01E3 */  lb    $t5, 0x1e3($s0)
/* 05620C 8005560C A20901E4 */  sb    $t1, 0x1e4($s0)
/* 056210 80055610 01A97025 */  or    $t6, $t5, $t1
/* 056214 80055614 A20E01E3 */  sb    $t6, 0x1e3($s0)
/* 056218 80055618 820201E3 */  lb    $v0, 0x1e3($s0)
/* 05621C 8005561C A20001E2 */  sb    $zero, 0x1e2($s0)
/* 056220 80055620 304F0001 */  andi  $t7, $v0, 1
/* 056224 80055624 11E00005 */  beqz  $t7, .L8005563C
/* 056228 80055628 27A30134 */   addiu $v1, $sp, 0x134
/* 05622C 8005562C 821801E2 */  lb    $t8, 0x1e2($s0)
/* 056230 80055630 820201E3 */  lb    $v0, 0x1e3($s0)
/* 056234 80055634 27190001 */  addiu $t9, $t8, 1
/* 056238 80055638 A21901E2 */  sb    $t9, 0x1e2($s0)
.L8005563C:
/* 05623C 8005563C 00026F80 */  sll   $t5, $v0, 0x1e
/* 056240 80055640 05A10005 */  bgez  $t5, .L80055658
/* 056244 80055644 24090002 */   li    $t1, 2
/* 056248 80055648 820E01E2 */  lb    $t6, 0x1e2($s0)
/* 05624C 8005564C 820201E3 */  lb    $v0, 0x1e3($s0)
/* 056250 80055650 25CF0001 */  addiu $t7, $t6, 1
/* 056254 80055654 A20F01E2 */  sb    $t7, 0x1e2($s0)
.L80055658:
/* 056258 80055658 0009C040 */  sll   $t8, $t1, 1
/* 05625C 8005565C 0058C824 */  and   $t9, $v0, $t8
/* 056260 80055660 13200005 */  beqz  $t9, .L80055678
/* 056264 80055664 03004825 */   move  $t1, $t8
/* 056268 80055668 820D01E2 */  lb    $t5, 0x1e2($s0)
/* 05626C 8005566C 820201E3 */  lb    $v0, 0x1e3($s0)
/* 056270 80055670 25AE0001 */  addiu $t6, $t5, 1
/* 056274 80055674 A20E01E2 */  sb    $t6, 0x1e2($s0)
.L80055678:
/* 056278 80055678 00097840 */  sll   $t7, $t1, 1
/* 05627C 8005567C 004FC024 */  and   $t8, $v0, $t7
/* 056280 80055680 13000005 */  beqz  $t8, .L80055698
/* 056284 80055684 02001025 */   move  $v0, $s0
/* 056288 80055688 821901E2 */  lb    $t9, 0x1e2($s0)
/* 05628C 8005568C 00000000 */  nop   
/* 056290 80055690 272D0001 */  addiu $t5, $t9, 1
/* 056294 80055694 A20D01E2 */  sb    $t5, 0x1e2($s0)
.L80055698:
/* 056298 80055698 27A40164 */  addiu $a0, $sp, 0x164
.L8005569C:
/* 05629C 8005569C C4640000 */  lwc1  $f4, ($v1)
/* 0562A0 800556A0 24630004 */  addiu $v1, $v1, 4
/* 0562A4 800556A4 0064082B */  sltu  $at, $v1, $a0
/* 0562A8 800556A8 24420004 */  addiu $v0, $v0, 4
/* 0562AC 800556AC 1420FFFB */  bnez  $at, .L8005569C
/* 0562B0 800556B0 E44400D4 */   swc1  $f4, 0xd4($v0)
/* 0562B4 800556B4 27A20058 */  addiu $v0, $sp, 0x58
/* 0562B8 800556B8 02001825 */  move  $v1, $s0
/* 0562BC 800556BC 27A4005C */  addiu $a0, $sp, 0x5c
.L800556C0:
/* 0562C0 800556C0 804E0000 */  lb    $t6, ($v0)
/* 0562C4 800556C4 24420001 */  addiu $v0, $v0, 1
/* 0562C8 800556C8 0044082B */  sltu  $at, $v0, $a0
/* 0562CC 800556CC 24630001 */  addiu $v1, $v1, 1
/* 0562D0 800556D0 1420FFFB */  bnez  $at, .L800556C0
/* 0562D4 800556D4 A06E01DB */   sb    $t6, 0x1db($v1)
/* 0562D8 800556D8 E630000C */  swc1  $f16, 0xc($s1)
/* 0562DC 800556DC E6300010 */  swc1  $f16, 0x10($s1)
/* 0562E0 800556E0 E6300014 */  swc1  $f16, 0x14($s1)
/* 0562E4 800556E4 00002025 */  move  $a0, $zero
/* 0562E8 800556E8 02001025 */  move  $v0, $s0
.L800556EC:
/* 0562EC 800556EC C44600D8 */  lwc1  $f6, 0xd8($v0)
/* 0562F0 800556F0 C628000C */  lwc1  $f8, 0xc($s1)
/* 0562F4 800556F4 24840003 */  addiu $a0, $a0, 3
/* 0562F8 800556F8 46083280 */  add.s $f10, $f6, $f8
/* 0562FC 800556FC C6260010 */  lwc1  $f6, 0x10($s1)
/* 056300 80055700 E62A000C */  swc1  $f10, 0xc($s1)
/* 056304 80055704 C44400DC */  lwc1  $f4, 0xdc($v0)
/* 056308 80055708 2881000C */  slti  $at, $a0, 0xc
/* 05630C 8005570C 46062200 */  add.s $f8, $f4, $f6
/* 056310 80055710 C6240014 */  lwc1  $f4, 0x14($s1)
/* 056314 80055714 E6280010 */  swc1  $f8, 0x10($s1)
/* 056318 80055718 C44A00E0 */  lwc1  $f10, 0xe0($v0)
/* 05631C 8005571C 2442000C */  addiu $v0, $v0, 0xc
/* 056320 80055720 46045180 */  add.s $f6, $f10, $f4
/* 056324 80055724 1420FFF1 */  bnez  $at, .L800556EC
/* 056328 80055728 E6260014 */   swc1  $f6, 0x14($s1)
/* 05632C 8005572C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 056330 80055730 44810000 */  mtc1  $at, $f0
/* 056334 80055734 C628000C */  lwc1  $f8, 0xc($s1)
/* 056338 80055738 C6240010 */  lwc1  $f4, 0x10($s1)
/* 05633C 8005573C 46004283 */  div.s $f10, $f8, $f0
/* 056340 80055740 C6280014 */  lwc1  $f8, 0x14($s1)
/* 056344 80055744 862F0000 */  lh    $t7, ($s1)
/* 056348 80055748 3C058012 */  lui   $a1, %hi(D_8011D510) # $a1, 0x8012
/* 05634C 8005574C 24A5D510 */  addiu $a1, %lo(D_8011D510) # addiu $a1, $a1, -0x2af0
/* 056350 80055750 000FC023 */  negu  $t8, $t7
/* 056354 80055754 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 056358 80055758 27A40060 */  addiu $a0, $sp, 0x60
/* 05635C 8005575C E62A000C */  swc1  $f10, 0xc($s1)
/* 056360 80055760 46002183 */  div.s $f6, $f4, $f0
/* 056364 80055764 44812000 */  mtc1  $at, $f4
/* 056368 80055768 46004283 */  div.s $f10, $f8, $f0
/* 05636C 8005576C E6260010 */  swc1  $f6, 0x10($s1)
/* 056370 80055770 E62A0014 */  swc1  $f10, 0x14($s1)
/* 056374 80055774 A4B80000 */  sh    $t8, ($a1)
/* 056378 80055778 86390002 */  lh    $t9, 2($s1)
/* 05637C 8005577C 00000000 */  nop   
/* 056380 80055780 00196823 */  negu  $t5, $t9
/* 056384 80055784 A4AD0002 */  sh    $t5, 2($a1)
/* 056388 80055788 862E0004 */  lh    $t6, 4($s1)
/* 05638C 8005578C E4A40008 */  swc1  $f4, 8($a1)
/* 056390 80055790 000E7823 */  negu  $t7, $t6
/* 056394 80055794 A4AF0004 */  sh    $t7, 4($a1)
/* 056398 80055798 C626000C */  lwc1  $f6, 0xc($s1)
/* 05639C 8005579C 00000000 */  nop   
/* 0563A0 800557A0 46003207 */  neg.s $f8, $f6
/* 0563A4 800557A4 E4A8000C */  swc1  $f8, 0xc($a1)
/* 0563A8 800557A8 C62A0010 */  lwc1  $f10, 0x10($s1)
/* 0563AC 800557AC 00000000 */  nop   
/* 0563B0 800557B0 46005107 */  neg.s $f4, $f10
/* 0563B4 800557B4 E4A40010 */  swc1  $f4, 0x10($a1)
/* 0563B8 800557B8 C6260014 */  lwc1  $f6, 0x14($s1)
/* 0563BC 800557BC 00000000 */  nop   
/* 0563C0 800557C0 46003207 */  neg.s $f8, $f6
/* 0563C4 800557C4 0C01BF9D */  jal   func_8006FE74
/* 0563C8 800557C8 E4A80014 */   swc1  $f8, 0x14($a1)
/* 0563CC 800557CC 02001025 */  move  $v0, $s0
/* 0563D0 800557D0 27A8011C */  addiu $t0, $sp, 0x11c
/* 0563D4 800557D4 27A90108 */  addiu $t1, $sp, 0x108
/* 0563D8 800557D8 27A300F4 */  addiu $v1, $sp, 0xf4
.L800557DC:
/* 0563DC 800557DC 8C4500D8 */  lw    $a1, 0xd8($v0)
/* 0563E0 800557E0 8C4600DC */  lw    $a2, 0xdc($v0)
/* 0563E4 800557E4 8C4700E0 */  lw    $a3, 0xe0($v0)
/* 0563E8 800557E8 AFA9004C */  sw    $t1, 0x4c($sp)
/* 0563EC 800557EC AFA80050 */  sw    $t0, 0x50($sp)
/* 0563F0 800557F0 AFA30048 */  sw    $v1, 0x48($sp)
/* 0563F4 800557F4 AFA20054 */  sw    $v0, 0x54($sp)
/* 0563F8 800557F8 AFA30018 */  sw    $v1, 0x18($sp)
/* 0563FC 800557FC AFA90014 */  sw    $t1, 0x14($sp)
/* 056400 80055800 AFA80010 */  sw    $t0, 0x10($sp)
/* 056404 80055804 0C01BD93 */  jal   func_8006F64C
/* 056408 80055808 27A40060 */   addiu $a0, $sp, 0x60
/* 05640C 8005580C 8FA30048 */  lw    $v1, 0x48($sp)
/* 056410 80055810 8FA20054 */  lw    $v0, 0x54($sp)
/* 056414 80055814 8FA80050 */  lw    $t0, 0x50($sp)
/* 056418 80055818 8FA9004C */  lw    $t1, 0x4c($sp)
/* 05641C 8005581C 27B80104 */  addiu $t8, $sp, 0x104
/* 056420 80055820 24630004 */  addiu $v1, $v1, 4
/* 056424 80055824 2442000C */  addiu $v0, $v0, 0xc
/* 056428 80055828 25080004 */  addiu $t0, $t0, 4
/* 05642C 8005582C 1478FFEB */  bne   $v1, $t8, .L800557DC
/* 056430 80055830 25290004 */   addiu $t1, $t1, 4
/* 056434 80055834 821901D6 */  lb    $t9, 0x1d6($s0)
/* 056438 80055838 24010004 */  li    $at, 4
/* 05643C 8005583C 13210048 */  beq   $t9, $at, .L80055960
/* 056440 80055840 00000000 */   nop   
/* 056444 80055844 C7AA0120 */  lwc1  $f10, 0x120($sp)
/* 056448 80055848 C7A4011C */  lwc1  $f4, 0x11c($sp)
/* 05644C 8005584C C7A600F8 */  lwc1  $f6, 0xf8($sp)
/* 056450 80055850 C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 056454 80055854 46045400 */  add.s $f16, $f10, $f4
/* 056458 80055858 C7A40124 */  lwc1  $f4, 0x124($sp)
/* 05645C 8005585C 46083480 */  add.s $f18, $f6, $f8
/* 056460 80055860 C7AA0128 */  lwc1  $f10, 0x128($sp)
/* 056464 80055864 C7A800FC */  lwc1  $f8, 0xfc($sp)
/* 056468 80055868 C7A60100 */  lwc1  $f6, 0x100($sp)
/* 05646C 8005586C 46045000 */  add.s $f0, $f10, $f4
/* 056470 80055870 E7B2017C */  swc1  $f18, 0x17c($sp)
/* 056474 80055874 46083080 */  add.s $f2, $f6, $f8
/* 056478 80055878 E7B00180 */  swc1  $f16, 0x180($sp)
/* 05647C 8005587C 46029381 */  sub.s $f14, $f18, $f2
/* 056480 80055880 0C01C1D4 */  jal   func_80070750
/* 056484 80055884 46008301 */   sub.s $f12, $f16, $f0
/* 056488 80055888 34018000 */  li    $at, 32768
/* 05648C 8005588C 00412021 */  addu  $a0, $v0, $at
/* 056490 80055890 308DFFFF */  andi  $t5, $a0, 0xffff
/* 056494 80055894 820F01D2 */  lb    $t7, 0x1d2($s0)
/* 056498 80055898 000D1C00 */  sll   $v1, $t5, 0x10
/* 05649C 8005589C 24050007 */  li    $a1, 7
/* 0564A0 800558A0 00037403 */  sra   $t6, $v1, 0x10
/* 0564A4 800558A4 14AF000A */  bne   $a1, $t7, .L800558D0
/* 0564A8 800558A8 01C01825 */   move  $v1, $t6
/* 0564AC 800558AC 000D1400 */  sll   $v0, $t5, 0x10
/* 0564B0 800558B0 0002C403 */  sra   $t8, $v0, 0x10
/* 0564B4 800558B4 1B000003 */  blez  $t8, .L800558C4
/* 0564B8 800558B8 03001025 */   move  $v0, $t8
/* 0564BC 800558BC 24190800 */  li    $t9, 2048
/* 0564C0 800558C0 A619019C */  sh    $t9, 0x19c($s0)
.L800558C4:
/* 0564C4 800558C4 04410002 */  bgez  $v0, .L800558D0
/* 0564C8 800558C8 240DF800 */   li    $t5, -2048
/* 0564CC 800558CC A60D019C */  sh    $t5, 0x19c($s0)
.L800558D0:
/* 0564D0 800558D0 820E01D2 */  lb    $t6, 0x1d2($s0)
/* 0564D4 800558D4 00000000 */  nop   
/* 0564D8 800558D8 11C00004 */  beqz  $t6, .L800558EC
/* 0564DC 800558DC 286101F5 */   slti  $at, $v1, 0x1f5
/* 0564E0 800558E0 8603019C */  lh    $v1, 0x19c($s0)
/* 0564E4 800558E4 00000000 */  nop   
/* 0564E8 800558E8 286101F5 */  slti  $at, $v1, 0x1f5
.L800558EC:
/* 0564EC 800558EC 10200003 */  beqz  $at, .L800558FC
/* 0564F0 800558F0 2861FE0C */   slti  $at, $v1, -0x1f4
/* 0564F4 800558F4 1020000D */  beqz  $at, .L8005592C
/* 0564F8 800558F8 87B80130 */   lh    $t8, 0x130($sp)
.L800558FC:
/* 0564FC 800558FC 8E0F010C */  lw    $t7, 0x10c($s0)
/* 056500 80055900 860D01A2 */  lh    $t5, 0x1a2($s0)
/* 056504 80055904 01E50019 */  multu $t7, $a1
/* 056508 80055908 A20001E6 */  sb    $zero, 0x1e6($s0)
/* 05650C 8005590C 0000C012 */  mflo  $t8
/* 056510 80055910 0018C8C3 */  sra   $t9, $t8, 3
/* 056514 80055914 AE19010C */  sw    $t9, 0x10c($s0)
/* 056518 80055918 01A50019 */  multu $t5, $a1
/* 05651C 8005591C 00007012 */  mflo  $t6
/* 056520 80055920 000E78C3 */  sra   $t7, $t6, 3
/* 056524 80055924 A60F01A2 */  sh    $t7, 0x1a2($s0)
/* 056528 80055928 87B80130 */  lh    $t8, 0x130($sp)
.L8005592C:
/* 05652C 8005592C 0060C825 */  move  $t9, $v1
/* 056530 80055930 13000002 */  beqz  $t8, .L8005593C
/* 056534 80055934 00196C80 */   sll   $t5, $t9, 0x12
/* 056538 80055938 000D1C03 */  sra   $v1, $t5, 0x10
.L8005593C:
/* 05653C 8005593C 862F0000 */  lh    $t7, ($s1)
/* 056540 80055940 0003C083 */  sra   $t8, $v1, 2
/* 056544 80055944 01F8C821 */  addu  $t9, $t7, $t8
/* 056548 80055948 A6390000 */  sh    $t9, ($s1)
/* 05654C 8005594C 860E01A2 */  lh    $t6, 0x1a2($s0)
/* 056550 80055950 862D0000 */  lh    $t5, ($s1)
/* 056554 80055954 00000000 */  nop   
/* 056558 80055958 01AE7823 */  subu  $t7, $t5, $t6
/* 05655C 8005595C A60F01A0 */  sh    $t7, 0x1a0($s0)
.L80055960:
/* 056560 80055960 C7AA00FC */  lwc1  $f10, 0xfc($sp)
/* 056564 80055964 C7A400F4 */  lwc1  $f4, 0xf4($sp)
/* 056568 80055968 C7A60110 */  lwc1  $f6, 0x110($sp)
/* 05656C 8005596C C7A80108 */  lwc1  $f8, 0x108($sp)
/* 056570 80055970 46045301 */  sub.s $f12, $f10, $f4
/* 056574 80055974 46083381 */  sub.s $f14, $f6, $f8
/* 056578 80055978 E7AC0180 */  swc1  $f12, 0x180($sp)
/* 05657C 8005597C 0C01C1D4 */  jal   func_80070750
/* 056580 80055980 E7AE017C */   swc1  $f14, 0x17c($sp)
/* 056584 80055984 8FB80184 */  lw    $t8, 0x184($sp)
/* 056588 80055988 00000000 */  nop   
/* 05658C 8005598C 17000005 */  bnez  $t8, .L800559A4
/* 056590 80055990 00000000 */   nop   
/* 056594 80055994 86390002 */  lh    $t9, 2($s1)
/* 056598 80055998 244EC000 */  addiu $t6, $v0, -0x4000
/* 05659C 8005599C 032E7821 */  addu  $t7, $t9, $t6
/* 0565A0 800559A0 A62F0002 */  sh    $t7, 2($s1)
.L800559A4:
/* 0565A4 800559A4 C7AA0120 */  lwc1  $f10, 0x120($sp)
/* 0565A8 800559A8 C7A4011C */  lwc1  $f4, 0x11c($sp)
/* 0565AC 800559AC C7A6010C */  lwc1  $f6, 0x10c($sp)
/* 0565B0 800559B0 C7A80108 */  lwc1  $f8, 0x108($sp)
/* 0565B4 800559B4 46045301 */  sub.s $f12, $f10, $f4
/* 0565B8 800559B8 46083381 */  sub.s $f14, $f6, $f8
/* 0565BC 800559BC E7AC0180 */  swc1  $f12, 0x180($sp)
/* 0565C0 800559C0 0C01C1D4 */  jal   func_80070750
/* 0565C4 800559C4 E7AE017C */   swc1  $f14, 0x17c($sp)
/* 0565C8 800559C8 8FB80184 */  lw    $t8, 0x184($sp)
/* 0565CC 800559CC 24194000 */  li    $t9, 16384
/* 0565D0 800559D0 17000005 */  bnez  $t8, .L800559E8
/* 0565D4 800559D4 00000000 */   nop   
/* 0565D8 800559D8 860D01A4 */  lh    $t5, 0x1a4($s0)
/* 0565DC 800559DC 03227823 */  subu  $t7, $t9, $v0
/* 0565E0 800559E0 01AFC021 */  addu  $t8, $t5, $t7
/* 0565E4 800559E4 A61801A4 */  sh    $t8, 0x1a4($s0)
.L800559E8:
/* 0565E8 800559E8 820201D6 */  lb    $v0, 0x1d6($s0)
/* 0565EC 800559EC 24010004 */  li    $at, 4
/* 0565F0 800559F0 1041001F */  beq   $v0, $at, .L80055A70
/* 0565F4 800559F4 24010002 */   li    $at, 2
/* 0565F8 800559F8 1041001D */  beq   $v0, $at, .L80055A70
/* 0565FC 800559FC 2401000A */   li    $at, 10
/* 056600 80055A00 1041001B */  beq   $v0, $at, .L80055A70
/* 056604 80055A04 24010007 */   li    $at, 7
/* 056608 80055A08 1041001A */  beq   $v0, $at, .L80055A74
/* 05660C 80055A0C 8FBF002C */   lw    $ra, 0x2c($sp)
/* 056610 80055A10 860201A4 */  lh    $v0, 0x1a4($s0)
/* 056614 80055A14 24193400 */  li    $t9, 13312
/* 056618 80055A18 28413401 */  slti  $at, $v0, 0x3401
/* 05661C 80055A1C 14200004 */  bnez  $at, .L80055A30
/* 056620 80055A20 240ECC00 */   li    $t6, -13312
/* 056624 80055A24 A61901A4 */  sh    $t9, 0x1a4($s0)
/* 056628 80055A28 860201A4 */  lh    $v0, 0x1a4($s0)
/* 05662C 80055A2C 00000000 */  nop   
.L80055A30:
/* 056630 80055A30 2841CC00 */  slti  $at, $v0, -0x3400
/* 056634 80055A34 10200002 */  beqz  $at, .L80055A40
/* 056638 80055A38 240D3400 */   li    $t5, 13312
/* 05663C 80055A3C A60E01A4 */  sh    $t6, 0x1a4($s0)
.L80055A40:
/* 056640 80055A40 86220002 */  lh    $v0, 2($s1)
/* 056644 80055A44 240FCC00 */  li    $t7, -13312
/* 056648 80055A48 28413401 */  slti  $at, $v0, 0x3401
/* 05664C 80055A4C 14200005 */  bnez  $at, .L80055A64
/* 056650 80055A50 2841CC00 */   slti  $at, $v0, -0x3400
/* 056654 80055A54 A62D0002 */  sh    $t5, 2($s1)
/* 056658 80055A58 86220002 */  lh    $v0, 2($s1)
/* 05665C 80055A5C 00000000 */  nop   
/* 056660 80055A60 2841CC00 */  slti  $at, $v0, -0x3400
.L80055A64:
/* 056664 80055A64 10200003 */  beqz  $at, .L80055A74
/* 056668 80055A68 8FBF002C */   lw    $ra, 0x2c($sp)
/* 05666C 80055A6C A62F0002 */  sh    $t7, 2($s1)
.L80055A70:
/* 056670 80055A70 8FBF002C */  lw    $ra, 0x2c($sp)
.L80055A74:
/* 056674 80055A74 8FB00024 */  lw    $s0, 0x24($sp)
/* 056678 80055A78 8FB10028 */  lw    $s1, 0x28($sp)
/* 05667C 80055A7C 03E00008 */  jr    $ra
/* 056680 80055A80 27BD01A0 */   addiu $sp, $sp, 0x1a0
