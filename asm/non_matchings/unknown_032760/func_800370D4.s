glabel func_800370D4
/* 037CD4 800370D4 27BDFF90 */  addiu $sp, $sp, -0x70
/* 037CD8 800370D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 037CDC 800370DC AFB10018 */  sw    $s1, 0x18($sp)
/* 037CE0 800370E0 00808825 */  move  $s1, $a0
/* 037CE4 800370E4 AFB00014 */  sw    $s0, 0x14($sp)
/* 037CE8 800370E8 0C019884 */  jal   func_80066210
/* 037CEC 800370EC AFA50074 */   sw    $a1, 0x74($sp)
/* 037CF0 800370F0 18400005 */  blez  $v0, .L80037108
/* 037CF4 800370F4 00000000 */   nop   
/* 037CF8 800370F8 0C003FEE */  jal   gParticlePtrList_addObject
/* 037CFC 800370FC 02202025 */   move  $a0, $s1
/* 037D00 80037100 10000119 */  b     .L80037568
/* 037D04 80037104 8FBF001C */   lw    $ra, 0x1c($sp)
.L80037108:
/* 037D08 80037108 8E300064 */  lw    $s0, 0x64($s1)
/* 037D0C 8003710C C6200010 */  lwc1  $f0, 0x10($s1)
/* 037D10 80037110 920300FD */  lbu   $v1, 0xfd($s0)
/* 037D14 80037114 00000000 */  nop   
/* 037D18 80037118 1060001B */  beqz  $v1, .L80037188
/* 037D1C 8003711C 00601025 */   move  $v0, $v1
/* 037D20 80037120 8FA50074 */  lw    $a1, 0x74($sp)
/* 037D24 80037124 00000000 */  nop   
/* 037D28 80037128 0065082A */  slt   $at, $v1, $a1
/* 037D2C 8003712C 14200009 */  bnez  $at, .L80037154
/* 037D30 80037130 00000000 */   nop   
/* 037D34 80037134 44853000 */  mtc1  $a1, $f6
/* 037D38 80037138 C6240020 */  lwc1  $f4, 0x20($s1)
/* 037D3C 8003713C 46803220 */  cvt.s.w $f8, $f6
/* 037D40 80037140 00457023 */  subu  $t6, $v0, $a1
/* 037D44 80037144 A20E00FD */  sb    $t6, 0xfd($s0)
/* 037D48 80037148 46082282 */  mul.s $f10, $f4, $f8
/* 037D4C 8003714C 1000000C */  b     .L80037180
/* 037D50 80037150 460A0000 */   add.s $f0, $f0, $f10
.L80037154:
/* 037D54 80037154 44832000 */  mtc1  $v1, $f4
/* 037D58 80037158 C6260020 */  lwc1  $f6, 0x20($s1)
/* 037D5C 8003715C 04610005 */  bgez  $v1, .L80037174
/* 037D60 80037160 46802220 */   cvt.s.w $f8, $f4
/* 037D64 80037164 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 037D68 80037168 44815000 */  mtc1  $at, $f10
/* 037D6C 8003716C 00000000 */  nop   
/* 037D70 80037170 460A4200 */  add.s $f8, $f8, $f10
.L80037174:
/* 037D74 80037174 46083102 */  mul.s $f4, $f6, $f8
/* 037D78 80037178 A20000FD */  sb    $zero, 0xfd($s0)
/* 037D7C 8003717C 46040000 */  add.s $f0, $f0, $f4
.L80037180:
/* 037D80 80037180 1000003D */  b     .L80037278
/* 037D84 80037184 E7A00068 */   swc1  $f0, 0x68($sp)
.L80037188:
/* 037D88 80037188 00002025 */  move  $a0, $zero
/* 037D8C 8003718C 24050007 */  li    $a1, 7
/* 037D90 80037190 0C01BE53 */  jal   get_random_number_from_range
/* 037D94 80037194 E7A00068 */   swc1  $f0, 0x68($sp)
/* 037D98 80037198 14400037 */  bnez  $v0, .L80037278
/* 037D9C 8003719C 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 037DA0 800371A0 C60A0118 */  lwc1  $f10, 0x118($s0)
/* 037DA4 800371A4 44813000 */  mtc1  $at, $f6
/* 037DA8 800371A8 240400A0 */  li    $a0, 160
/* 037DAC 800371AC 460A303E */  c.le.s $f6, $f10
/* 037DB0 800371B0 00000000 */  nop   
/* 037DB4 800371B4 45000031 */  bc1f  .L8003727C
/* 037DB8 800371B8 8FA50074 */   lw    $a1, 0x74($sp)
/* 037DBC 800371BC 0C01BE53 */  jal   get_random_number_from_range
/* 037DC0 800371C0 240500FF */   li    $a1, 255
/* 037DC4 800371C4 444FF800 */  cfc1  $t7, $31
/* 037DC8 800371C8 C6080118 */  lwc1  $f8, 0x118($s0)
/* 037DCC 800371CC 35E10003 */  ori   $at, $t7, 3
/* 037DD0 800371D0 38210002 */  xori  $at, $at, 2
/* 037DD4 800371D4 44C1F800 */  ctc1  $at, $31
/* 037DD8 800371D8 A20200FD */  sb    $v0, 0xfd($s0)
/* 037DDC 800371DC 46004124 */  cvt.w.s $f4, $f8
/* 037DE0 800371E0 00002025 */  move  $a0, $zero
/* 037DE4 800371E4 44052000 */  mfc1  $a1, $f4
/* 037DE8 800371E8 44CFF800 */  ctc1  $t7, $31
/* 037DEC 800371EC 0C01BE53 */  jal   get_random_number_from_range
/* 037DF0 800371F0 00000000 */   nop   
/* 037DF4 800371F4 C6200010 */  lwc1  $f0, 0x10($s1)
/* 037DF8 800371F8 C60A010C */  lwc1  $f10, 0x10c($s0)
/* 037DFC 800371FC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 037E00 80037200 46005181 */  sub.s $f6, $f10, $f0
/* 037E04 80037204 E6260020 */  swc1  $f6, 0x20($s1)
/* 037E08 80037208 C608010C */  lwc1  $f8, 0x10c($s0)
/* 037E0C 8003720C 00000000 */  nop   
/* 037E10 80037210 4608003C */  c.lt.s $f0, $f8
/* 037E14 80037214 00000000 */  nop   
/* 037E18 80037218 45000007 */  bc1f  .L80037238
/* 037E1C 8003721C 00000000 */   nop   
/* 037E20 80037220 44825000 */  mtc1  $v0, $f10
/* 037E24 80037224 C6240020 */  lwc1  $f4, 0x20($s1)
/* 037E28 80037228 468051A0 */  cvt.s.w $f6, $f10
/* 037E2C 8003722C 46062200 */  add.s $f8, $f4, $f6
/* 037E30 80037230 10000006 */  b     .L8003724C
/* 037E34 80037234 E6280020 */   swc1  $f8, 0x20($s1)
.L80037238:
/* 037E38 80037238 44822000 */  mtc1  $v0, $f4
/* 037E3C 8003723C C62A0020 */  lwc1  $f10, 0x20($s1)
/* 037E40 80037240 468021A0 */  cvt.s.w $f6, $f4
/* 037E44 80037244 46065201 */  sub.s $f8, $f10, $f6
/* 037E48 80037248 E6280020 */  swc1  $f8, 0x20($s1)
.L8003724C:
/* 037E4C 8003724C 921800FD */  lbu   $t8, 0xfd($s0)
/* 037E50 80037250 C6240020 */  lwc1  $f4, 0x20($s1)
/* 037E54 80037254 44985000 */  mtc1  $t8, $f10
/* 037E58 80037258 07010004 */  bgez  $t8, .L8003726C
/* 037E5C 8003725C 468051A0 */   cvt.s.w $f6, $f10
/* 037E60 80037260 44814000 */  mtc1  $at, $f8
/* 037E64 80037264 00000000 */  nop   
/* 037E68 80037268 46083180 */  add.s $f6, $f6, $f8
.L8003726C:
/* 037E6C 8003726C 00000000 */  nop   
/* 037E70 80037270 46062283 */  div.s $f10, $f4, $f6
/* 037E74 80037274 E62A0020 */  swc1  $f10, 0x20($s1)
.L80037278:
/* 037E78 80037278 8FA50074 */  lw    $a1, 0x74($sp)
.L8003727C:
/* 037E7C 8003727C 86080100 */  lh    $t0, 0x100($s0)
/* 037E80 80037280 861900FE */  lh    $t9, 0xfe($s0)
/* 037E84 80037284 00A80019 */  multu $a1, $t0
/* 037E88 80037288 00004812 */  mflo  $t1
/* 037E8C 8003728C 03295021 */  addu  $t2, $t9, $t1
/* 037E90 80037290 A60A00FE */  sh    $t2, 0xfe($s0)
/* 037E94 80037294 860B00FE */  lh    $t3, 0xfe($s0)
/* 037E98 80037298 00000000 */  nop   
/* 037E9C 8003729C 000B6440 */  sll   $t4, $t3, 0x11
/* 037EA0 800372A0 0C01C1F1 */  jal   func_800707C4
/* 037EA4 800372A4 000C2403 */   sra   $a0, $t4, 0x10
/* 037EA8 800372A8 C6080114 */  lwc1  $f8, 0x114($s0)
/* 037EAC 800372AC 860400FE */  lh    $a0, 0xfe($s0)
/* 037EB0 800372B0 46080302 */  mul.s $f12, $f0, $f8
/* 037EB4 800372B4 0C01C1FE */  jal   func_800707F8
/* 037EB8 800372B8 E7AC006C */   swc1  $f12, 0x6c($sp)
/* 037EBC 800372BC C6040114 */  lwc1  $f4, 0x114($s0)
/* 037EC0 800372C0 86040104 */  lh    $a0, 0x104($s0)
/* 037EC4 800372C4 46040082 */  mul.s $f2, $f0, $f4
/* 037EC8 800372C8 0C01C1F1 */  jal   func_800707C4
/* 037ECC 800372CC E7A20064 */   swc1  $f2, 0x64($sp)
/* 037ED0 800372D0 86040104 */  lh    $a0, 0x104($s0)
/* 037ED4 800372D4 0C01C1FE */  jal   func_800707F8
/* 037ED8 800372D8 E7A0004C */   swc1  $f0, 0x4c($sp)
/* 037EDC 800372DC C7AE006C */  lwc1  $f14, 0x6c($sp)
/* 037EE0 800372E0 C7A20064 */  lwc1  $f2, 0x64($sp)
/* 037EE4 800372E4 46007182 */  mul.s $f6, $f14, $f0
/* 037EE8 800372E8 C7B0004C */  lwc1  $f16, 0x4c($sp)
/* 037EEC 800372EC 44809000 */  mtc1  $zero, $f18
/* 037EF0 800372F0 46101282 */  mul.s $f10, $f2, $f16
/* 037EF4 800372F4 00000000 */  nop   
/* 037EF8 800372F8 46001202 */  mul.s $f8, $f2, $f0
/* 037EFC 800372FC 460A3300 */  add.s $f12, $f6, $f10
/* 037F00 80037300 C6060108 */  lwc1  $f6, 0x108($s0)
/* 037F04 80037304 C60A0110 */  lwc1  $f10, 0x110($s0)
/* 037F08 80037308 46107102 */  mul.s $f4, $f14, $f16
/* 037F0C 8003730C 46066300 */  add.s $f12, $f12, $f6
/* 037F10 80037310 46044081 */  sub.s $f2, $f8, $f4
/* 037F14 80037314 C628000C */  lwc1  $f8, 0xc($s1)
/* 037F18 80037318 460A1080 */  add.s $f2, $f2, $f10
/* 037F1C 8003731C C7AA0068 */  lwc1  $f10, 0x68($sp)
/* 037F20 80037320 460C4101 */  sub.s $f4, $f8, $f12
/* 037F24 80037324 E7A40060 */  swc1  $f4, 0x60($sp)
/* 037F28 80037328 C6260010 */  lwc1  $f6, 0x10($s1)
/* 037F2C 8003732C 00000000 */  nop   
/* 037F30 80037330 460A3201 */  sub.s $f8, $f6, $f10
/* 037F34 80037334 E7A8005C */  swc1  $f8, 0x5c($sp)
/* 037F38 80037338 C6240014 */  lwc1  $f4, 0x14($s1)
/* 037F3C 8003733C 00000000 */  nop   
/* 037F40 80037340 46022181 */  sub.s $f6, $f4, $f2
/* 037F44 80037344 E7A60058 */  swc1  $f6, 0x58($sp)
/* 037F48 80037348 E632000C */  swc1  $f18, 0xc($s1)
/* 037F4C 8003734C E6320010 */  swc1  $f18, 0x10($s1)
/* 037F50 80037350 E6320014 */  swc1  $f18, 0x14($s1)
/* 037F54 80037354 E7AC006C */  swc1  $f12, 0x6c($sp)
/* 037F58 80037358 0C004558 */  jal   func_80011560
/* 037F5C 8003735C E7A20064 */   swc1  $f2, 0x64($sp)
/* 037F60 80037360 C7A20064 */  lwc1  $f2, 0x64($sp)
/* 037F64 80037364 C7AC006C */  lwc1  $f12, 0x6c($sp)
/* 037F68 80037368 8FA60068 */  lw    $a2, 0x68($sp)
/* 037F6C 8003736C 44071000 */  mfc1  $a3, $f2
/* 037F70 80037370 44056000 */  mfc1  $a1, $f12
/* 037F74 80037374 0C00455C */  jal   func_80011570
/* 037F78 80037378 02202025 */   move  $a0, $s1
/* 037F7C 8003737C C7A00060 */  lwc1  $f0, 0x60($sp)
/* 037F80 80037380 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 037F84 80037384 46000282 */  mul.s $f10, $f0, $f0
/* 037F88 80037388 C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 037F8C 8003738C 46108202 */  mul.s $f8, $f16, $f16
/* 037F90 80037390 46085380 */  add.s $f14, $f10, $f8
/* 037F94 80037394 46021102 */  mul.s $f4, $f2, $f2
/* 037F98 80037398 E7AE0020 */  swc1  $f14, 0x20($sp)
/* 037F9C 8003739C 0C0326B4 */  jal   sqrtf
/* 037FA0 800373A0 460E2300 */   add.s $f12, $f4, $f14
/* 037FA4 800373A4 C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 037FA8 800373A8 0C0326B4 */  jal   sqrtf
/* 037FAC 800373AC E7A00050 */   swc1  $f0, 0x50($sp)
/* 037FB0 800373B0 3C0144C0 */  li    $at, 0x44C00000 # 1536.000000
/* 037FB4 800373B4 44815000 */  mtc1  $at, $f10
/* 037FB8 800373B8 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 037FBC 800373BC E7A00054 */  swc1  $f0, 0x54($sp)
/* 037FC0 800373C0 460A3202 */  mul.s $f8, $f6, $f10
/* 037FC4 800373C4 86180106 */  lh    $t8, 0x106($s0)
/* 037FC8 800373C8 444EF800 */  cfc1  $t6, $31
/* 037FCC 800373CC 00000000 */  nop   
/* 037FD0 800373D0 35C10003 */  ori   $at, $t6, 3
/* 037FD4 800373D4 38210002 */  xori  $at, $at, 2
/* 037FD8 800373D8 44C1F800 */  ctc1  $at, $31
/* 037FDC 800373DC 00000000 */  nop   
/* 037FE0 800373E0 46004124 */  cvt.w.s $f4, $f8
/* 037FE4 800373E4 440F2000 */  mfc1  $t7, $f4
/* 037FE8 800373E8 44CEF800 */  ctc1  $t6, $31
/* 037FEC 800373EC 030F4021 */  addu  $t0, $t8, $t7
/* 037FF0 800373F0 A6080106 */  sh    $t0, 0x106($s0)
/* 037FF4 800373F4 C7AE0058 */  lwc1  $f14, 0x58($sp)
/* 037FF8 800373F8 C7AC0060 */  lwc1  $f12, 0x60($sp)
/* 037FFC 800373FC 0C01C1D4 */  jal   func_80070750
/* 038000 80037400 00000000 */   nop   
/* 038004 80037404 A6220000 */  sh    $v0, ($s1)
/* 038008 80037408 C7AC005C */  lwc1  $f12, 0x5c($sp)
/* 03800C 8003740C C7AE0054 */  lwc1  $f14, 0x54($sp)
/* 038010 80037410 0C01C1D4 */  jal   func_80070750
/* 038014 80037414 46006307 */   neg.s $f12, $f12
/* 038018 80037418 86230002 */  lh    $v1, 2($s1)
/* 03801C 8003741C 8FAE0074 */  lw    $t6, 0x74($sp)
/* 038020 80037420 00432023 */  subu  $a0, $v0, $v1
/* 038024 80037424 00622823 */  subu  $a1, $v1, $v0
/* 038028 80037428 3099FFFF */  andi  $t9, $a0, 0xffff
/* 03802C 8003742C 30A9FFFF */  andi  $t1, $a1, 0xffff
/* 038030 80037430 0329082A */  slt   $at, $t9, $t1
/* 038034 80037434 10200009 */  beqz  $at, .L8003745C
/* 038038 80037438 01202825 */   move  $a1, $t1
/* 03803C 8003743C 8FAA0074 */  lw    $t2, 0x74($sp)
/* 038040 80037440 00000000 */  nop   
/* 038044 80037444 032A0019 */  multu $t9, $t2
/* 038048 80037448 00005812 */  mflo  $t3
/* 03804C 8003744C 000B60C3 */  sra   $t4, $t3, 3
/* 038050 80037450 006C6821 */  addu  $t5, $v1, $t4
/* 038054 80037454 10000006 */  b     .L80037470
/* 038058 80037458 A62D0002 */   sh    $t5, 2($s1)
.L8003745C:
/* 03805C 8003745C 00AE0019 */  multu $a1, $t6
/* 038060 80037460 0000C012 */  mflo  $t8
/* 038064 80037464 001878C3 */  sra   $t7, $t8, 3
/* 038068 80037468 006F4023 */  subu  $t0, $v1, $t7
/* 03806C 8003746C A6280002 */  sh    $t0, 2($s1)
.L80037470:
/* 038070 80037470 921900FC */  lbu   $t9, 0xfc($s0)
/* 038074 80037474 24090001 */  li    $t1, 1
/* 038078 80037478 01395023 */  subu  $t2, $t1, $t9
/* 03807C 8003747C 314B00FF */  andi  $t3, $t2, 0xff
/* 038080 80037480 000B6080 */  sll   $t4, $t3, 2
/* 038084 80037484 018B6023 */  subu  $t4, $t4, $t3
/* 038088 80037488 000C6040 */  sll   $t4, $t4, 1
/* 03808C 8003748C 000C6880 */  sll   $t5, $t4, 2
/* 038090 80037490 01AC6821 */  addu  $t5, $t5, $t4
/* 038094 80037494 000D6840 */  sll   $t5, $t5, 1
/* 038098 80037498 020D1821 */  addu  $v1, $s0, $t5
/* 03809C 8003749C A20A00FC */  sb    $t2, 0xfc($s0)
/* 0380A0 800374A0 24630080 */  addiu $v1, $v1, 0x80
/* 0380A4 800374A4 86040106 */  lh    $a0, 0x106($s0)
/* 0380A8 800374A8 0C01C20C */  jal   func_80070830
/* 0380AC 800374AC AFA30028 */   sw    $v1, 0x28($sp)
/* 0380B0 800374B0 000288C3 */  sra   $s1, $v0, 3
/* 0380B4 800374B4 00112400 */  sll   $a0, $s1, 0x10
/* 0380B8 800374B8 00047403 */  sra   $t6, $a0, 0x10
/* 0380BC 800374BC 0C01C1FE */  jal   func_800707F8
/* 0380C0 800374C0 01C02025 */   move  $a0, $t6
/* 0380C4 800374C4 3C014200 */  li    $at, 0x42000000 # 32.000000
/* 0380C8 800374C8 44813000 */  mtc1  $at, $f6
/* 0380CC 800374CC 00112400 */  sll   $a0, $s1, 0x10
/* 0380D0 800374D0 46060282 */  mul.s $f10, $f0, $f6
/* 0380D4 800374D4 00047C03 */  sra   $t7, $a0, 0x10
/* 0380D8 800374D8 01E02025 */  move  $a0, $t7
/* 0380DC 800374DC 4458F800 */  cfc1  $t8, $31
/* 0380E0 800374E0 00000000 */  nop   
/* 0380E4 800374E4 37010003 */  ori   $at, $t8, 3
/* 0380E8 800374E8 38210002 */  xori  $at, $at, 2
/* 0380EC 800374EC 44C1F800 */  ctc1  $at, $31
/* 0380F0 800374F0 00000000 */  nop   
/* 0380F4 800374F4 46005224 */  cvt.w.s $f8, $f10
/* 0380F8 800374F8 44104000 */  mfc1  $s0, $f8
/* 0380FC 800374FC 44D8F800 */  ctc1  $t8, $31
/* 038100 80037500 0C01C1F1 */  jal   func_800707C4
/* 038104 80037504 00000000 */   nop   
/* 038108 80037508 3C014200 */  li    $at, 0x42000000 # 32.000000
/* 03810C 8003750C 44812000 */  mtc1  $at, $f4
/* 038110 80037510 8FA30028 */  lw    $v1, 0x28($sp)
/* 038114 80037514 46040182 */  mul.s $f6, $f0, $f4
/* 038118 80037518 84690014 */  lh    $t1, 0x14($v1)
/* 03811C 8003751C 846A0018 */  lh    $t2, 0x18($v1)
/* 038120 80037520 846C001E */  lh    $t4, 0x1e($v1)
/* 038124 80037524 4448F800 */  cfc1  $t0, $31
/* 038128 80037528 846E0022 */  lh    $t6, 0x22($v1)
/* 03812C 8003752C 35010003 */  ori   $at, $t0, 3
/* 038130 80037530 38210002 */  xori  $at, $at, 2
/* 038134 80037534 44C1F800 */  ctc1  $at, $31
/* 038138 80037538 01505821 */  addu  $t3, $t2, $s0
/* 03813C 8003753C 460032A4 */  cvt.w.s $f10, $f6
/* 038140 80037540 01D0C021 */  addu  $t8, $t6, $s0
/* 038144 80037544 44025000 */  mfc1  $v0, $f10
/* 038148 80037548 44C8F800 */  ctc1  $t0, $31
/* 03814C 8003754C 0122C821 */  addu  $t9, $t1, $v0
/* 038150 80037550 01826821 */  addu  $t5, $t4, $v0
/* 038154 80037554 A4790028 */  sh    $t9, 0x28($v1)
/* 038158 80037558 A46B002C */  sh    $t3, 0x2c($v1)
/* 03815C 8003755C A46D0032 */  sh    $t5, 0x32($v1)
/* 038160 80037560 A4780036 */  sh    $t8, 0x36($v1)
/* 038164 80037564 8FBF001C */  lw    $ra, 0x1c($sp)
.L80037568:
/* 038168 80037568 8FB00014 */  lw    $s0, 0x14($sp)
/* 03816C 8003756C 8FB10018 */  lw    $s1, 0x18($sp)
/* 038170 80037570 03E00008 */  jr    $ra
/* 038174 80037574 27BD0070 */   addiu $sp, $sp, 0x70

