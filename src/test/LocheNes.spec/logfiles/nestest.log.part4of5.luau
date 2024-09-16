return [[
E7E4  38        SEC                             A:66 X:EF Y:58 P:65 SP:FB PPU:141, 93 CYC:16058
E7E5  B8        CLV                             A:66 X:EF Y:58 P:65 SP:FB PPU:141, 99 CYC:16060
E7E6  87 56    *SAX $56 = 00                    A:66 X:EF Y:58 P:25 SP:FB PPU:141,105 CYC:16062
E7E8  EA        NOP                             A:66 X:EF Y:58 P:25 SP:FB PPU:141,114 CYC:16065
E7E9  EA        NOP                             A:66 X:EF Y:58 P:25 SP:FB PPU:141,120 CYC:16067
E7EA  EA        NOP                             A:66 X:EF Y:58 P:25 SP:FB PPU:141,126 CYC:16069
E7EB  EA        NOP                             A:66 X:EF Y:58 P:25 SP:FB PPU:141,132 CYC:16071
E7EC  F0 18     BEQ $E806                       A:66 X:EF Y:58 P:25 SP:FB PPU:141,138 CYC:16073
E7EE  90 16     BCC $E806                       A:66 X:EF Y:58 P:25 SP:FB PPU:141,144 CYC:16075
E7F0  70 14     BVS $E806                       A:66 X:EF Y:58 P:25 SP:FB PPU:141,150 CYC:16077
E7F2  30 12     BMI $E806                       A:66 X:EF Y:58 P:25 SP:FB PPU:141,156 CYC:16079
E7F4  C9 66     CMP #$66                        A:66 X:EF Y:58 P:25 SP:FB PPU:141,162 CYC:16081
E7F6  D0 0E     BNE $E806                       A:66 X:EF Y:58 P:27 SP:FB PPU:141,168 CYC:16083
E7F8  C0 58     CPY #$58                        A:66 X:EF Y:58 P:27 SP:FB PPU:141,174 CYC:16085
E7FA  D0 0A     BNE $E806                       A:66 X:EF Y:58 P:27 SP:FB PPU:141,180 CYC:16087
E7FC  E0 EF     CPX #$EF                        A:66 X:EF Y:58 P:27 SP:FB PPU:141,186 CYC:16089
E7FE  D0 06     BNE $E806                       A:66 X:EF Y:58 P:27 SP:FB PPU:141,192 CYC:16091
E800  A5 56     LDA $56 = 66                    A:66 X:EF Y:58 P:27 SP:FB PPU:141,198 CYC:16093
E802  C9 66     CMP #$66                        A:66 X:EF Y:58 P:25 SP:FB PPU:141,207 CYC:16096
E804  F0 04     BEQ $E80A                       A:66 X:EF Y:58 P:27 SP:FB PPU:141,213 CYC:16098
E80A  A9 FF     LDA #$FF                        A:66 X:EF Y:58 P:27 SP:FB PPU:141,222 CYC:16101
E80C  8D 49 05  STA $0549 = 00                  A:FF X:EF Y:58 P:A5 SP:FB PPU:141,228 CYC:16103
E80F  A0 E5     LDY #$E5                        A:FF X:EF Y:58 P:A5 SP:FB PPU:141,240 CYC:16107
E811  A2 AF     LDX #$AF                        A:FF X:EF Y:E5 P:A5 SP:FB PPU:141,246 CYC:16109
E813  A9 F5     LDA #$F5                        A:FF X:AF Y:E5 P:A5 SP:FB PPU:141,252 CYC:16111
E815  24 01     BIT $01 = C0                    A:F5 X:AF Y:E5 P:A5 SP:FB PPU:141,258 CYC:16113
E817  18        CLC                             A:F5 X:AF Y:E5 P:E5 SP:FB PPU:141,267 CYC:16116
E818  8F 49 05 *SAX $0549 = FF                  A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,273 CYC:16118
E81B  EA        NOP                             A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,285 CYC:16122
E81C  EA        NOP                             A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,291 CYC:16124
E81D  EA        NOP                             A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,297 CYC:16126
E81E  EA        NOP                             A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,303 CYC:16128
E81F  F0 19     BEQ $E83A                       A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,309 CYC:16130
E821  B0 17     BCS $E83A                       A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,315 CYC:16132
E823  50 15     BVC $E83A                       A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,321 CYC:16134
E825  10 13     BPL $E83A                       A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,327 CYC:16136
E827  C9 F5     CMP #$F5                        A:F5 X:AF Y:E5 P:E4 SP:FB PPU:141,333 CYC:16138
E829  D0 0F     BNE $E83A                       A:F5 X:AF Y:E5 P:67 SP:FB PPU:141,339 CYC:16140
E82B  C0 E5     CPY #$E5                        A:F5 X:AF Y:E5 P:67 SP:FB PPU:142,  4 CYC:16142
E82D  D0 0B     BNE $E83A                       A:F5 X:AF Y:E5 P:67 SP:FB PPU:142, 10 CYC:16144
E82F  E0 AF     CPX #$AF                        A:F5 X:AF Y:E5 P:67 SP:FB PPU:142, 16 CYC:16146
E831  D0 07     BNE $E83A                       A:F5 X:AF Y:E5 P:67 SP:FB PPU:142, 22 CYC:16148
E833  AD 49 05  LDA $0549 = A5                  A:F5 X:AF Y:E5 P:67 SP:FB PPU:142, 28 CYC:16150
E836  C9 A5     CMP #$A5                        A:A5 X:AF Y:E5 P:E5 SP:FB PPU:142, 40 CYC:16154
E838  F0 04     BEQ $E83E                       A:A5 X:AF Y:E5 P:67 SP:FB PPU:142, 46 CYC:16156
E83E  A9 00     LDA #$00                        A:A5 X:AF Y:E5 P:67 SP:FB PPU:142, 55 CYC:16159
E840  8D 56 05  STA $0556 = 00                  A:00 X:AF Y:E5 P:67 SP:FB PPU:142, 61 CYC:16161
E843  A0 58     LDY #$58                        A:00 X:AF Y:E5 P:67 SP:FB PPU:142, 73 CYC:16165
E845  A2 B3     LDX #$B3                        A:00 X:AF Y:58 P:65 SP:FB PPU:142, 79 CYC:16167
E847  A9 97     LDA #$97                        A:00 X:B3 Y:58 P:E5 SP:FB PPU:142, 85 CYC:16169
E849  38        SEC                             A:97 X:B3 Y:58 P:E5 SP:FB PPU:142, 91 CYC:16171
E84A  B8        CLV                             A:97 X:B3 Y:58 P:E5 SP:FB PPU:142, 97 CYC:16173
E84B  8F 56 05 *SAX $0556 = 00                  A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,103 CYC:16175
E84E  EA        NOP                             A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,115 CYC:16179
E84F  EA        NOP                             A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,121 CYC:16181
E850  EA        NOP                             A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,127 CYC:16183
E851  EA        NOP                             A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,133 CYC:16185
E852  F0 19     BEQ $E86D                       A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,139 CYC:16187
E854  90 17     BCC $E86D                       A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,145 CYC:16189
E856  70 15     BVS $E86D                       A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,151 CYC:16191
E858  10 13     BPL $E86D                       A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,157 CYC:16193
E85A  C9 97     CMP #$97                        A:97 X:B3 Y:58 P:A5 SP:FB PPU:142,163 CYC:16195
E85C  D0 0F     BNE $E86D                       A:97 X:B3 Y:58 P:27 SP:FB PPU:142,169 CYC:16197
E85E  C0 58     CPY #$58                        A:97 X:B3 Y:58 P:27 SP:FB PPU:142,175 CYC:16199
E860  D0 0B     BNE $E86D                       A:97 X:B3 Y:58 P:27 SP:FB PPU:142,181 CYC:16201
E862  E0 B3     CPX #$B3                        A:97 X:B3 Y:58 P:27 SP:FB PPU:142,187 CYC:16203
E864  D0 07     BNE $E86D                       A:97 X:B3 Y:58 P:27 SP:FB PPU:142,193 CYC:16205
E866  AD 56 05  LDA $0556 = 93                  A:97 X:B3 Y:58 P:27 SP:FB PPU:142,199 CYC:16207
E869  C9 93     CMP #$93                        A:93 X:B3 Y:58 P:A5 SP:FB PPU:142,211 CYC:16211
E86B  F0 04     BEQ $E871                       A:93 X:B3 Y:58 P:27 SP:FB PPU:142,217 CYC:16213
E871  A9 FF     LDA #$FF                        A:93 X:B3 Y:58 P:27 SP:FB PPU:142,226 CYC:16216
E873  85 49     STA $49 = 00                    A:FF X:B3 Y:58 P:A5 SP:FB PPU:142,232 CYC:16218
E875  A0 FF     LDY #$FF                        A:FF X:B3 Y:58 P:A5 SP:FB PPU:142,241 CYC:16221
E877  A2 AA     LDX #$AA                        A:FF X:B3 Y:FF P:A5 SP:FB PPU:142,247 CYC:16223
E879  A9 55     LDA #$55                        A:FF X:AA Y:FF P:A5 SP:FB PPU:142,253 CYC:16225
E87B  24 01     BIT $01 = C0                    A:55 X:AA Y:FF P:25 SP:FB PPU:142,259 CYC:16227
E87D  18        CLC                             A:55 X:AA Y:FF P:E5 SP:FB PPU:142,268 CYC:16230
E87E  97 4A    *SAX $4A,Y @ 49 = FF             A:55 X:AA Y:FF P:E4 SP:FB PPU:142,274 CYC:16232
E880  EA        NOP                             A:55 X:AA Y:FF P:E4 SP:FB PPU:142,286 CYC:16236
E881  EA        NOP                             A:55 X:AA Y:FF P:E4 SP:FB PPU:142,292 CYC:16238
E882  EA        NOP                             A:55 X:AA Y:FF P:E4 SP:FB PPU:142,298 CYC:16240
E883  EA        NOP                             A:55 X:AA Y:FF P:E4 SP:FB PPU:142,304 CYC:16242
E884  F0 18     BEQ $E89E                       A:55 X:AA Y:FF P:E4 SP:FB PPU:142,310 CYC:16244
E886  B0 16     BCS $E89E                       A:55 X:AA Y:FF P:E4 SP:FB PPU:142,316 CYC:16246
E888  50 14     BVC $E89E                       A:55 X:AA Y:FF P:E4 SP:FB PPU:142,322 CYC:16248
E88A  10 12     BPL $E89E                       A:55 X:AA Y:FF P:E4 SP:FB PPU:142,328 CYC:16250
E88C  C9 55     CMP #$55                        A:55 X:AA Y:FF P:E4 SP:FB PPU:142,334 CYC:16252
E88E  D0 0E     BNE $E89E                       A:55 X:AA Y:FF P:67 SP:FB PPU:142,340 CYC:16254
E890  C0 FF     CPY #$FF                        A:55 X:AA Y:FF P:67 SP:FB PPU:143,  5 CYC:16256
E892  D0 0A     BNE $E89E                       A:55 X:AA Y:FF P:67 SP:FB PPU:143, 11 CYC:16258
E894  E0 AA     CPX #$AA                        A:55 X:AA Y:FF P:67 SP:FB PPU:143, 17 CYC:16260
E896  D0 06     BNE $E89E                       A:55 X:AA Y:FF P:67 SP:FB PPU:143, 23 CYC:16262
E898  A5 49     LDA $49 = 00                    A:55 X:AA Y:FF P:67 SP:FB PPU:143, 29 CYC:16264
E89A  C9 00     CMP #$00                        A:00 X:AA Y:FF P:67 SP:FB PPU:143, 38 CYC:16267
E89C  F0 04     BEQ $E8A2                       A:00 X:AA Y:FF P:67 SP:FB PPU:143, 44 CYC:16269
E8A2  A9 00     LDA #$00                        A:00 X:AA Y:FF P:67 SP:FB PPU:143, 53 CYC:16272
E8A4  85 56     STA $56 = 66                    A:00 X:AA Y:FF P:67 SP:FB PPU:143, 59 CYC:16274
E8A6  A0 06     LDY #$06                        A:00 X:AA Y:FF P:67 SP:FB PPU:143, 68 CYC:16277
E8A8  A2 EF     LDX #$EF                        A:00 X:AA Y:06 P:65 SP:FB PPU:143, 74 CYC:16279
E8AA  A9 66     LDA #$66                        A:00 X:EF Y:06 P:E5 SP:FB PPU:143, 80 CYC:16281
E8AC  38        SEC                             A:66 X:EF Y:06 P:65 SP:FB PPU:143, 86 CYC:16283
E8AD  B8        CLV                             A:66 X:EF Y:06 P:65 SP:FB PPU:143, 92 CYC:16285
E8AE  97 50    *SAX $50,Y @ 56 = 00             A:66 X:EF Y:06 P:25 SP:FB PPU:143, 98 CYC:16287
E8B0  EA        NOP                             A:66 X:EF Y:06 P:25 SP:FB PPU:143,110 CYC:16291
E8B1  EA        NOP                             A:66 X:EF Y:06 P:25 SP:FB PPU:143,116 CYC:16293
E8B2  EA        NOP                             A:66 X:EF Y:06 P:25 SP:FB PPU:143,122 CYC:16295
E8B3  EA        NOP                             A:66 X:EF Y:06 P:25 SP:FB PPU:143,128 CYC:16297
E8B4  F0 18     BEQ $E8CE                       A:66 X:EF Y:06 P:25 SP:FB PPU:143,134 CYC:16299
E8B6  90 16     BCC $E8CE                       A:66 X:EF Y:06 P:25 SP:FB PPU:143,140 CYC:16301
E8B8  70 14     BVS $E8CE                       A:66 X:EF Y:06 P:25 SP:FB PPU:143,146 CYC:16303
E8BA  30 12     BMI $E8CE                       A:66 X:EF Y:06 P:25 SP:FB PPU:143,152 CYC:16305
E8BC  C9 66     CMP #$66                        A:66 X:EF Y:06 P:25 SP:FB PPU:143,158 CYC:16307
E8BE  D0 0E     BNE $E8CE                       A:66 X:EF Y:06 P:27 SP:FB PPU:143,164 CYC:16309
E8C0  C0 06     CPY #$06                        A:66 X:EF Y:06 P:27 SP:FB PPU:143,170 CYC:16311
E8C2  D0 0A     BNE $E8CE                       A:66 X:EF Y:06 P:27 SP:FB PPU:143,176 CYC:16313
E8C4  E0 EF     CPX #$EF                        A:66 X:EF Y:06 P:27 SP:FB PPU:143,182 CYC:16315
E8C6  D0 06     BNE $E8CE                       A:66 X:EF Y:06 P:27 SP:FB PPU:143,188 CYC:16317
E8C8  A5 56     LDA $56 = 66                    A:66 X:EF Y:06 P:27 SP:FB PPU:143,194 CYC:16319
E8CA  C9 66     CMP #$66                        A:66 X:EF Y:06 P:25 SP:FB PPU:143,203 CYC:16322
E8CC  F0 04     BEQ $E8D2                       A:66 X:EF Y:06 P:27 SP:FB PPU:143,209 CYC:16324
E8D2  60        RTS                             A:66 X:EF Y:06 P:27 SP:FB PPU:143,218 CYC:16327
C638  20 D3 E8  JSR $E8D3                       A:66 X:EF Y:06 P:27 SP:FD PPU:143,236 CYC:16333
E8D3  A0 90     LDY #$90                        A:66 X:EF Y:06 P:27 SP:FB PPU:143,254 CYC:16339
E8D5  20 31 F9  JSR $F931                       A:66 X:EF Y:90 P:A5 SP:FB PPU:143,260 CYC:16341
F931  24 01     BIT $01 = C0                    A:66 X:EF Y:90 P:A5 SP:F9 PPU:143,278 CYC:16347
F933  A9 40     LDA #$40                        A:66 X:EF Y:90 P:E5 SP:F9 PPU:143,287 CYC:16350
F935  38        SEC                             A:40 X:EF Y:90 P:65 SP:F9 PPU:143,293 CYC:16352
F936  60        RTS                             A:40 X:EF Y:90 P:65 SP:F9 PPU:143,299 CYC:16354
E8D8  EB 40    *SBC #$40                        A:40 X:EF Y:90 P:65 SP:FB PPU:143,317 CYC:16360
E8DA  EA        NOP                             A:00 X:EF Y:90 P:27 SP:FB PPU:143,323 CYC:16362
E8DB  EA        NOP                             A:00 X:EF Y:90 P:27 SP:FB PPU:143,329 CYC:16364
E8DC  EA        NOP                             A:00 X:EF Y:90 P:27 SP:FB PPU:143,335 CYC:16366
E8DD  EA        NOP                             A:00 X:EF Y:90 P:27 SP:FB PPU:144,  0 CYC:16368
E8DE  20 37 F9  JSR $F937                       A:00 X:EF Y:90 P:27 SP:FB PPU:144,  6 CYC:16370
F937  30 0B     BMI $F944                       A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 24 CYC:16376
F939  90 09     BCC $F944                       A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 30 CYC:16378
F93B  D0 07     BNE $F944                       A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 36 CYC:16380
F93D  70 05     BVS $F944                       A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 42 CYC:16382
F93F  C9 00     CMP #$00                        A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 48 CYC:16384
F941  D0 01     BNE $F944                       A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 54 CYC:16386
F943  60        RTS                             A:00 X:EF Y:90 P:27 SP:F9 PPU:144, 60 CYC:16388
E8E1  C8        INY                             A:00 X:EF Y:90 P:27 SP:FB PPU:144, 78 CYC:16394
E8E2  20 47 F9  JSR $F947                       A:00 X:EF Y:91 P:A5 SP:FB PPU:144, 84 CYC:16396
F947  B8        CLV                             A:00 X:EF Y:91 P:A5 SP:F9 PPU:144,102 CYC:16402
F948  38        SEC                             A:00 X:EF Y:91 P:A5 SP:F9 PPU:144,108 CYC:16404
F949  A9 40     LDA #$40                        A:00 X:EF Y:91 P:A5 SP:F9 PPU:144,114 CYC:16406
F94B  60        RTS                             A:40 X:EF Y:91 P:25 SP:F9 PPU:144,120 CYC:16408
E8E5  EB 3F    *SBC #$3F                        A:40 X:EF Y:91 P:25 SP:FB PPU:144,138 CYC:16414
E8E7  EA        NOP                             A:01 X:EF Y:91 P:25 SP:FB PPU:144,144 CYC:16416
E8E8  EA        NOP                             A:01 X:EF Y:91 P:25 SP:FB PPU:144,150 CYC:16418
E8E9  EA        NOP                             A:01 X:EF Y:91 P:25 SP:FB PPU:144,156 CYC:16420
E8EA  EA        NOP                             A:01 X:EF Y:91 P:25 SP:FB PPU:144,162 CYC:16422
E8EB  20 4C F9  JSR $F94C                       A:01 X:EF Y:91 P:25 SP:FB PPU:144,168 CYC:16424
F94C  F0 0B     BEQ $F959                       A:01 X:EF Y:91 P:25 SP:F9 PPU:144,186 CYC:16430
F94E  30 09     BMI $F959                       A:01 X:EF Y:91 P:25 SP:F9 PPU:144,192 CYC:16432
F950  90 07     BCC $F959                       A:01 X:EF Y:91 P:25 SP:F9 PPU:144,198 CYC:16434
F952  70 05     BVS $F959                       A:01 X:EF Y:91 P:25 SP:F9 PPU:144,204 CYC:16436
F954  C9 01     CMP #$01                        A:01 X:EF Y:91 P:25 SP:F9 PPU:144,210 CYC:16438
F956  D0 01     BNE $F959                       A:01 X:EF Y:91 P:27 SP:F9 PPU:144,216 CYC:16440
F958  60        RTS                             A:01 X:EF Y:91 P:27 SP:F9 PPU:144,222 CYC:16442
E8EE  C8        INY                             A:01 X:EF Y:91 P:27 SP:FB PPU:144,240 CYC:16448
E8EF  20 5C F9  JSR $F95C                       A:01 X:EF Y:92 P:A5 SP:FB PPU:144,246 CYC:16450
F95C  A9 40     LDA #$40                        A:01 X:EF Y:92 P:A5 SP:F9 PPU:144,264 CYC:16456
F95E  38        SEC                             A:40 X:EF Y:92 P:25 SP:F9 PPU:144,270 CYC:16458
F95F  24 01     BIT $01 = C0                    A:40 X:EF Y:92 P:25 SP:F9 PPU:144,276 CYC:16460
F961  60        RTS                             A:40 X:EF Y:92 P:E5 SP:F9 PPU:144,285 CYC:16463
E8F2  EB 41    *SBC #$41                        A:40 X:EF Y:92 P:E5 SP:FB PPU:144,303 CYC:16469
E8F4  EA        NOP                             A:FF X:EF Y:92 P:A4 SP:FB PPU:144,309 CYC:16471
E8F5  EA        NOP                             A:FF X:EF Y:92 P:A4 SP:FB PPU:144,315 CYC:16473
E8F6  EA        NOP                             A:FF X:EF Y:92 P:A4 SP:FB PPU:144,321 CYC:16475
E8F7  EA        NOP                             A:FF X:EF Y:92 P:A4 SP:FB PPU:144,327 CYC:16477
E8F8  20 62 F9  JSR $F962                       A:FF X:EF Y:92 P:A4 SP:FB PPU:144,333 CYC:16479
F962  B0 0B     BCS $F96F                       A:FF X:EF Y:92 P:A4 SP:F9 PPU:145, 10 CYC:16485
F964  F0 09     BEQ $F96F                       A:FF X:EF Y:92 P:A4 SP:F9 PPU:145, 16 CYC:16487
F966  10 07     BPL $F96F                       A:FF X:EF Y:92 P:A4 SP:F9 PPU:145, 22 CYC:16489
F968  70 05     BVS $F96F                       A:FF X:EF Y:92 P:A4 SP:F9 PPU:145, 28 CYC:16491
F96A  C9 FF     CMP #$FF                        A:FF X:EF Y:92 P:A4 SP:F9 PPU:145, 34 CYC:16493
F96C  D0 01     BNE $F96F                       A:FF X:EF Y:92 P:27 SP:F9 PPU:145, 40 CYC:16495
F96E  60        RTS                             A:FF X:EF Y:92 P:27 SP:F9 PPU:145, 46 CYC:16497
E8FB  C8        INY                             A:FF X:EF Y:92 P:27 SP:FB PPU:145, 64 CYC:16503
E8FC  20 72 F9  JSR $F972                       A:FF X:EF Y:93 P:A5 SP:FB PPU:145, 70 CYC:16505
F972  18        CLC                             A:FF X:EF Y:93 P:A5 SP:F9 PPU:145, 88 CYC:16511
F973  A9 80     LDA #$80                        A:FF X:EF Y:93 P:A4 SP:F9 PPU:145, 94 CYC:16513
F975  60        RTS                             A:80 X:EF Y:93 P:A4 SP:F9 PPU:145,100 CYC:16515
E8FF  EB 00    *SBC #$00                        A:80 X:EF Y:93 P:A4 SP:FB PPU:145,118 CYC:16521
E901  EA        NOP                             A:7F X:EF Y:93 P:65 SP:FB PPU:145,124 CYC:16523
E902  EA        NOP                             A:7F X:EF Y:93 P:65 SP:FB PPU:145,130 CYC:16525
E903  EA        NOP                             A:7F X:EF Y:93 P:65 SP:FB PPU:145,136 CYC:16527
E904  EA        NOP                             A:7F X:EF Y:93 P:65 SP:FB PPU:145,142 CYC:16529
E905  20 76 F9  JSR $F976                       A:7F X:EF Y:93 P:65 SP:FB PPU:145,148 CYC:16531
F976  90 05     BCC $F97D                       A:7F X:EF Y:93 P:65 SP:F9 PPU:145,166 CYC:16537
F978  C9 7F     CMP #$7F                        A:7F X:EF Y:93 P:65 SP:F9 PPU:145,172 CYC:16539
F97A  D0 01     BNE $F97D                       A:7F X:EF Y:93 P:67 SP:F9 PPU:145,178 CYC:16541
F97C  60        RTS                             A:7F X:EF Y:93 P:67 SP:F9 PPU:145,184 CYC:16543
E908  C8        INY                             A:7F X:EF Y:93 P:67 SP:FB PPU:145,202 CYC:16549
E909  20 80 F9  JSR $F980                       A:7F X:EF Y:94 P:E5 SP:FB PPU:145,208 CYC:16551
F980  38        SEC                             A:7F X:EF Y:94 P:E5 SP:F9 PPU:145,226 CYC:16557
F981  A9 81     LDA #$81                        A:7F X:EF Y:94 P:E5 SP:F9 PPU:145,232 CYC:16559
F983  60        RTS                             A:81 X:EF Y:94 P:E5 SP:F9 PPU:145,238 CYC:16561
E90C  EB 7F    *SBC #$7F                        A:81 X:EF Y:94 P:E5 SP:FB PPU:145,256 CYC:16567
E90E  EA        NOP                             A:02 X:EF Y:94 P:65 SP:FB PPU:145,262 CYC:16569
E90F  EA        NOP                             A:02 X:EF Y:94 P:65 SP:FB PPU:145,268 CYC:16571
E910  EA        NOP                             A:02 X:EF Y:94 P:65 SP:FB PPU:145,274 CYC:16573
E911  EA        NOP                             A:02 X:EF Y:94 P:65 SP:FB PPU:145,280 CYC:16575
E912  20 84 F9  JSR $F984                       A:02 X:EF Y:94 P:65 SP:FB PPU:145,286 CYC:16577
F984  50 07     BVC $F98D                       A:02 X:EF Y:94 P:65 SP:F9 PPU:145,304 CYC:16583
F986  90 05     BCC $F98D                       A:02 X:EF Y:94 P:65 SP:F9 PPU:145,310 CYC:16585
F988  C9 02     CMP #$02                        A:02 X:EF Y:94 P:65 SP:F9 PPU:145,316 CYC:16587
F98A  D0 01     BNE $F98D                       A:02 X:EF Y:94 P:67 SP:F9 PPU:145,322 CYC:16589
F98C  60        RTS                             A:02 X:EF Y:94 P:67 SP:F9 PPU:145,328 CYC:16591
E915  60        RTS                             A:02 X:EF Y:94 P:67 SP:FB PPU:146,  5 CYC:16597
C63B  20 16 E9  JSR $E916                       A:02 X:EF Y:94 P:67 SP:FD PPU:146, 23 CYC:16603
E916  A9 FF     LDA #$FF                        A:02 X:EF Y:94 P:67 SP:FB PPU:146, 41 CYC:16609
E918  85 01     STA $01 = C0                    A:FF X:EF Y:94 P:E5 SP:FB PPU:146, 47 CYC:16611
E91A  A0 95     LDY #$95                        A:FF X:EF Y:94 P:E5 SP:FB PPU:146, 56 CYC:16614
E91C  A2 02     LDX #$02                        A:FF X:EF Y:95 P:E5 SP:FB PPU:146, 62 CYC:16616
E91E  A9 47     LDA #$47                        A:FF X:02 Y:95 P:65 SP:FB PPU:146, 68 CYC:16618
E920  85 47     STA $47 = 00                    A:47 X:02 Y:95 P:65 SP:FB PPU:146, 74 CYC:16620
E922  A9 06     LDA #$06                        A:47 X:02 Y:95 P:65 SP:FB PPU:146, 83 CYC:16623
E924  85 48     STA $48 = 00                    A:06 X:02 Y:95 P:65 SP:FB PPU:146, 89 CYC:16625
E926  A9 EB     LDA #$EB                        A:06 X:02 Y:95 P:65 SP:FB PPU:146, 98 CYC:16628
E928  8D 47 06  STA $0647 = 00                  A:EB X:02 Y:95 P:E5 SP:FB PPU:146,104 CYC:16630
E92B  20 31 FA  JSR $FA31                       A:EB X:02 Y:95 P:E5 SP:FB PPU:146,116 CYC:16634
FA31  24 01     BIT $01 = FF                    A:EB X:02 Y:95 P:E5 SP:F9 PPU:146,134 CYC:16640
FA33  18        CLC                             A:EB X:02 Y:95 P:E5 SP:F9 PPU:146,143 CYC:16643
FA34  A9 40     LDA #$40                        A:EB X:02 Y:95 P:E4 SP:F9 PPU:146,149 CYC:16645
FA36  60        RTS                             A:40 X:02 Y:95 P:64 SP:F9 PPU:146,155 CYC:16647
E92E  C3 45    *DCP ($45,X) @ 47 = 0647 = EB    A:40 X:02 Y:95 P:64 SP:FB PPU:146,173 CYC:16653
E930  EA        NOP                             A:40 X:02 Y:95 P:64 SP:FB PPU:146,197 CYC:16661
E931  EA        NOP                             A:40 X:02 Y:95 P:64 SP:FB PPU:146,203 CYC:16663
E932  EA        NOP                             A:40 X:02 Y:95 P:64 SP:FB PPU:146,209 CYC:16665
E933  EA        NOP                             A:40 X:02 Y:95 P:64 SP:FB PPU:146,215 CYC:16667
E934  20 37 FA  JSR $FA37                       A:40 X:02 Y:95 P:64 SP:FB PPU:146,221 CYC:16669
FA37  50 2C     BVC $FA65                       A:40 X:02 Y:95 P:64 SP:F9 PPU:146,239 CYC:16675
FA39  B0 2A     BCS $FA65                       A:40 X:02 Y:95 P:64 SP:F9 PPU:146,245 CYC:16677
FA3B  30 28     BMI $FA65                       A:40 X:02 Y:95 P:64 SP:F9 PPU:146,251 CYC:16679
FA3D  C9 40     CMP #$40                        A:40 X:02 Y:95 P:64 SP:F9 PPU:146,257 CYC:16681
FA3F  D0 24     BNE $FA65                       A:40 X:02 Y:95 P:67 SP:F9 PPU:146,263 CYC:16683
FA41  60        RTS                             A:40 X:02 Y:95 P:67 SP:F9 PPU:146,269 CYC:16685
E937  AD 47 06  LDA $0647 = EA                  A:40 X:02 Y:95 P:67 SP:FB PPU:146,287 CYC:16691
E93A  C9 EA     CMP #$EA                        A:EA X:02 Y:95 P:E5 SP:FB PPU:146,299 CYC:16695
E93C  F0 02     BEQ $E940                       A:EA X:02 Y:95 P:67 SP:FB PPU:146,305 CYC:16697
E940  C8        INY                             A:EA X:02 Y:95 P:67 SP:FB PPU:146,314 CYC:16700
E941  A9 00     LDA #$00                        A:EA X:02 Y:96 P:E5 SP:FB PPU:146,320 CYC:16702
E943  8D 47 06  STA $0647 = EA                  A:00 X:02 Y:96 P:67 SP:FB PPU:146,326 CYC:16704
E946  20 42 FA  JSR $FA42                       A:00 X:02 Y:96 P:67 SP:FB PPU:146,338 CYC:16708
FA42  B8        CLV                             A:00 X:02 Y:96 P:67 SP:F9 PPU:147, 15 CYC:16714
FA43  38        SEC                             A:00 X:02 Y:96 P:27 SP:F9 PPU:147, 21 CYC:16716
FA44  A9 FF     LDA #$FF                        A:00 X:02 Y:96 P:27 SP:F9 PPU:147, 27 CYC:16718
FA46  60        RTS                             A:FF X:02 Y:96 P:A5 SP:F9 PPU:147, 33 CYC:16720
E949  C3 45    *DCP ($45,X) @ 47 = 0647 = 00    A:FF X:02 Y:96 P:A5 SP:FB PPU:147, 51 CYC:16726
E94B  EA        NOP                             A:FF X:02 Y:96 P:27 SP:FB PPU:147, 75 CYC:16734
E94C  EA        NOP                             A:FF X:02 Y:96 P:27 SP:FB PPU:147, 81 CYC:16736
E94D  EA        NOP                             A:FF X:02 Y:96 P:27 SP:FB PPU:147, 87 CYC:16738
E94E  EA        NOP                             A:FF X:02 Y:96 P:27 SP:FB PPU:147, 93 CYC:16740
E94F  20 47 FA  JSR $FA47                       A:FF X:02 Y:96 P:27 SP:FB PPU:147, 99 CYC:16742
FA47  70 1C     BVS $FA65                       A:FF X:02 Y:96 P:27 SP:F9 PPU:147,117 CYC:16748
FA49  D0 1A     BNE $FA65                       A:FF X:02 Y:96 P:27 SP:F9 PPU:147,123 CYC:16750
FA4B  30 18     BMI $FA65                       A:FF X:02 Y:96 P:27 SP:F9 PPU:147,129 CYC:16752
FA4D  90 16     BCC $FA65                       A:FF X:02 Y:96 P:27 SP:F9 PPU:147,135 CYC:16754
FA4F  C9 FF     CMP #$FF                        A:FF X:02 Y:96 P:27 SP:F9 PPU:147,141 CYC:16756
FA51  D0 12     BNE $FA65                       A:FF X:02 Y:96 P:27 SP:F9 PPU:147,147 CYC:16758
FA53  60        RTS                             A:FF X:02 Y:96 P:27 SP:F9 PPU:147,153 CYC:16760
E952  AD 47 06  LDA $0647 = FF                  A:FF X:02 Y:96 P:27 SP:FB PPU:147,171 CYC:16766
E955  C9 FF     CMP #$FF                        A:FF X:02 Y:96 P:A5 SP:FB PPU:147,183 CYC:16770
E957  F0 02     BEQ $E95B                       A:FF X:02 Y:96 P:27 SP:FB PPU:147,189 CYC:16772
E95B  C8        INY                             A:FF X:02 Y:96 P:27 SP:FB PPU:147,198 CYC:16775
E95C  A9 37     LDA #$37                        A:FF X:02 Y:97 P:A5 SP:FB PPU:147,204 CYC:16777
E95E  8D 47 06  STA $0647 = FF                  A:37 X:02 Y:97 P:25 SP:FB PPU:147,210 CYC:16779
E961  20 54 FA  JSR $FA54                       A:37 X:02 Y:97 P:25 SP:FB PPU:147,222 CYC:16783
FA54  24 01     BIT $01 = FF                    A:37 X:02 Y:97 P:25 SP:F9 PPU:147,240 CYC:16789
FA56  A9 F0     LDA #$F0                        A:37 X:02 Y:97 P:E5 SP:F9 PPU:147,249 CYC:16792
FA58  60        RTS                             A:F0 X:02 Y:97 P:E5 SP:F9 PPU:147,255 CYC:16794
E964  C3 45    *DCP ($45,X) @ 47 = 0647 = 37    A:F0 X:02 Y:97 P:E5 SP:FB PPU:147,273 CYC:16800
E966  EA        NOP                             A:F0 X:02 Y:97 P:E5 SP:FB PPU:147,297 CYC:16808
E967  EA        NOP                             A:F0 X:02 Y:97 P:E5 SP:FB PPU:147,303 CYC:16810
E968  EA        NOP                             A:F0 X:02 Y:97 P:E5 SP:FB PPU:147,309 CYC:16812
E969  EA        NOP                             A:F0 X:02 Y:97 P:E5 SP:FB PPU:147,315 CYC:16814
E96A  20 59 FA  JSR $FA59                       A:F0 X:02 Y:97 P:E5 SP:FB PPU:147,321 CYC:16816
FA59  50 0A     BVC $FA65                       A:F0 X:02 Y:97 P:E5 SP:F9 PPU:147,339 CYC:16822
FA5B  F0 08     BEQ $FA65                       A:F0 X:02 Y:97 P:E5 SP:F9 PPU:148,  4 CYC:16824
FA5D  10 06     BPL $FA65                       A:F0 X:02 Y:97 P:E5 SP:F9 PPU:148, 10 CYC:16826
FA5F  90 04     BCC $FA65                       A:F0 X:02 Y:97 P:E5 SP:F9 PPU:148, 16 CYC:16828
FA61  C9 F0     CMP #$F0                        A:F0 X:02 Y:97 P:E5 SP:F9 PPU:148, 22 CYC:16830
FA63  F0 02     BEQ $FA67                       A:F0 X:02 Y:97 P:67 SP:F9 PPU:148, 28 CYC:16832
FA67  60        RTS                             A:F0 X:02 Y:97 P:67 SP:F9 PPU:148, 37 CYC:16835
E96D  AD 47 06  LDA $0647 = 36                  A:F0 X:02 Y:97 P:67 SP:FB PPU:148, 55 CYC:16841
E970  C9 36     CMP #$36                        A:36 X:02 Y:97 P:65 SP:FB PPU:148, 67 CYC:16845
E972  F0 02     BEQ $E976                       A:36 X:02 Y:97 P:67 SP:FB PPU:148, 73 CYC:16847
E976  C8        INY                             A:36 X:02 Y:97 P:67 SP:FB PPU:148, 82 CYC:16850
E977  A9 EB     LDA #$EB                        A:36 X:02 Y:98 P:E5 SP:FB PPU:148, 88 CYC:16852
E979  85 47     STA $47 = 47                    A:EB X:02 Y:98 P:E5 SP:FB PPU:148, 94 CYC:16854
E97B  20 31 FA  JSR $FA31                       A:EB X:02 Y:98 P:E5 SP:FB PPU:148,103 CYC:16857
FA31  24 01     BIT $01 = FF                    A:EB X:02 Y:98 P:E5 SP:F9 PPU:148,121 CYC:16863
FA33  18        CLC                             A:EB X:02 Y:98 P:E5 SP:F9 PPU:148,130 CYC:16866
FA34  A9 40     LDA #$40                        A:EB X:02 Y:98 P:E4 SP:F9 PPU:148,136 CYC:16868
FA36  60        RTS                             A:40 X:02 Y:98 P:64 SP:F9 PPU:148,142 CYC:16870
E97E  C7 47    *DCP $47 = EB                    A:40 X:02 Y:98 P:64 SP:FB PPU:148,160 CYC:16876
E980  EA        NOP                             A:40 X:02 Y:98 P:64 SP:FB PPU:148,175 CYC:16881
E981  EA        NOP                             A:40 X:02 Y:98 P:64 SP:FB PPU:148,181 CYC:16883
E982  EA        NOP                             A:40 X:02 Y:98 P:64 SP:FB PPU:148,187 CYC:16885
E983  EA        NOP                             A:40 X:02 Y:98 P:64 SP:FB PPU:148,193 CYC:16887
E984  20 37 FA  JSR $FA37                       A:40 X:02 Y:98 P:64 SP:FB PPU:148,199 CYC:16889
FA37  50 2C     BVC $FA65                       A:40 X:02 Y:98 P:64 SP:F9 PPU:148,217 CYC:16895
FA39  B0 2A     BCS $FA65                       A:40 X:02 Y:98 P:64 SP:F9 PPU:148,223 CYC:16897
FA3B  30 28     BMI $FA65                       A:40 X:02 Y:98 P:64 SP:F9 PPU:148,229 CYC:16899
FA3D  C9 40     CMP #$40                        A:40 X:02 Y:98 P:64 SP:F9 PPU:148,235 CYC:16901
FA3F  D0 24     BNE $FA65                       A:40 X:02 Y:98 P:67 SP:F9 PPU:148,241 CYC:16903
FA41  60        RTS                             A:40 X:02 Y:98 P:67 SP:F9 PPU:148,247 CYC:16905
E987  A5 47     LDA $47 = EA                    A:40 X:02 Y:98 P:67 SP:FB PPU:148,265 CYC:16911
E989  C9 EA     CMP #$EA                        A:EA X:02 Y:98 P:E5 SP:FB PPU:148,274 CYC:16914
E98B  F0 02     BEQ $E98F                       A:EA X:02 Y:98 P:67 SP:FB PPU:148,280 CYC:16916
E98F  C8        INY                             A:EA X:02 Y:98 P:67 SP:FB PPU:148,289 CYC:16919
E990  A9 00     LDA #$00                        A:EA X:02 Y:99 P:E5 SP:FB PPU:148,295 CYC:16921
E992  85 47     STA $47 = EA                    A:00 X:02 Y:99 P:67 SP:FB PPU:148,301 CYC:16923
E994  20 42 FA  JSR $FA42                       A:00 X:02 Y:99 P:67 SP:FB PPU:148,310 CYC:16926
FA42  B8        CLV                             A:00 X:02 Y:99 P:67 SP:F9 PPU:148,328 CYC:16932
FA43  38        SEC                             A:00 X:02 Y:99 P:27 SP:F9 PPU:148,334 CYC:16934
FA44  A9 FF     LDA #$FF                        A:00 X:02 Y:99 P:27 SP:F9 PPU:148,340 CYC:16936
FA46  60        RTS                             A:FF X:02 Y:99 P:A5 SP:F9 PPU:149,  5 CYC:16938
E997  C7 47    *DCP $47 = 00                    A:FF X:02 Y:99 P:A5 SP:FB PPU:149, 23 CYC:16944
E999  EA        NOP                             A:FF X:02 Y:99 P:27 SP:FB PPU:149, 38 CYC:16949
E99A  EA        NOP                             A:FF X:02 Y:99 P:27 SP:FB PPU:149, 44 CYC:16951
E99B  EA        NOP                             A:FF X:02 Y:99 P:27 SP:FB PPU:149, 50 CYC:16953
E99C  EA        NOP                             A:FF X:02 Y:99 P:27 SP:FB PPU:149, 56 CYC:16955
E99D  20 47 FA  JSR $FA47                       A:FF X:02 Y:99 P:27 SP:FB PPU:149, 62 CYC:16957
FA47  70 1C     BVS $FA65                       A:FF X:02 Y:99 P:27 SP:F9 PPU:149, 80 CYC:16963
FA49  D0 1A     BNE $FA65                       A:FF X:02 Y:99 P:27 SP:F9 PPU:149, 86 CYC:16965
FA4B  30 18     BMI $FA65                       A:FF X:02 Y:99 P:27 SP:F9 PPU:149, 92 CYC:16967
FA4D  90 16     BCC $FA65                       A:FF X:02 Y:99 P:27 SP:F9 PPU:149, 98 CYC:16969
FA4F  C9 FF     CMP #$FF                        A:FF X:02 Y:99 P:27 SP:F9 PPU:149,104 CYC:16971
FA51  D0 12     BNE $FA65                       A:FF X:02 Y:99 P:27 SP:F9 PPU:149,110 CYC:16973
FA53  60        RTS                             A:FF X:02 Y:99 P:27 SP:F9 PPU:149,116 CYC:16975
E9A0  A5 47     LDA $47 = FF                    A:FF X:02 Y:99 P:27 SP:FB PPU:149,134 CYC:16981
E9A2  C9 FF     CMP #$FF                        A:FF X:02 Y:99 P:A5 SP:FB PPU:149,143 CYC:16984
E9A4  F0 02     BEQ $E9A8                       A:FF X:02 Y:99 P:27 SP:FB PPU:149,149 CYC:16986
E9A8  C8        INY                             A:FF X:02 Y:99 P:27 SP:FB PPU:149,158 CYC:16989
E9A9  A9 37     LDA #$37                        A:FF X:02 Y:9A P:A5 SP:FB PPU:149,164 CYC:16991
E9AB  85 47     STA $47 = FF                    A:37 X:02 Y:9A P:25 SP:FB PPU:149,170 CYC:16993
E9AD  20 54 FA  JSR $FA54                       A:37 X:02 Y:9A P:25 SP:FB PPU:149,179 CYC:16996
FA54  24 01     BIT $01 = FF                    A:37 X:02 Y:9A P:25 SP:F9 PPU:149,197 CYC:17002
FA56  A9 F0     LDA #$F0                        A:37 X:02 Y:9A P:E5 SP:F9 PPU:149,206 CYC:17005
FA58  60        RTS                             A:F0 X:02 Y:9A P:E5 SP:F9 PPU:149,212 CYC:17007
E9B0  C7 47    *DCP $47 = 37                    A:F0 X:02 Y:9A P:E5 SP:FB PPU:149,230 CYC:17013
E9B2  EA        NOP                             A:F0 X:02 Y:9A P:E5 SP:FB PPU:149,245 CYC:17018
E9B3  EA        NOP                             A:F0 X:02 Y:9A P:E5 SP:FB PPU:149,251 CYC:17020
E9B4  EA        NOP                             A:F0 X:02 Y:9A P:E5 SP:FB PPU:149,257 CYC:17022
E9B5  EA        NOP                             A:F0 X:02 Y:9A P:E5 SP:FB PPU:149,263 CYC:17024
E9B6  20 59 FA  JSR $FA59                       A:F0 X:02 Y:9A P:E5 SP:FB PPU:149,269 CYC:17026
FA59  50 0A     BVC $FA65                       A:F0 X:02 Y:9A P:E5 SP:F9 PPU:149,287 CYC:17032
FA5B  F0 08     BEQ $FA65                       A:F0 X:02 Y:9A P:E5 SP:F9 PPU:149,293 CYC:17034
FA5D  10 06     BPL $FA65                       A:F0 X:02 Y:9A P:E5 SP:F9 PPU:149,299 CYC:17036
FA5F  90 04     BCC $FA65                       A:F0 X:02 Y:9A P:E5 SP:F9 PPU:149,305 CYC:17038
FA61  C9 F0     CMP #$F0                        A:F0 X:02 Y:9A P:E5 SP:F9 PPU:149,311 CYC:17040
FA63  F0 02     BEQ $FA67                       A:F0 X:02 Y:9A P:67 SP:F9 PPU:149,317 CYC:17042
FA67  60        RTS                             A:F0 X:02 Y:9A P:67 SP:F9 PPU:149,326 CYC:17045
E9B9  A5 47     LDA $47 = 36                    A:F0 X:02 Y:9A P:67 SP:FB PPU:150,  3 CYC:17051
E9BB  C9 36     CMP #$36                        A:36 X:02 Y:9A P:65 SP:FB PPU:150, 12 CYC:17054
E9BD  F0 02     BEQ $E9C1                       A:36 X:02 Y:9A P:67 SP:FB PPU:150, 18 CYC:17056
E9C1  C8        INY                             A:36 X:02 Y:9A P:67 SP:FB PPU:150, 27 CYC:17059
E9C2  A9 EB     LDA #$EB                        A:36 X:02 Y:9B P:E5 SP:FB PPU:150, 33 CYC:17061
E9C4  8D 47 06  STA $0647 = 36                  A:EB X:02 Y:9B P:E5 SP:FB PPU:150, 39 CYC:17063
E9C7  20 31 FA  JSR $FA31                       A:EB X:02 Y:9B P:E5 SP:FB PPU:150, 51 CYC:17067
FA31  24 01     BIT $01 = FF                    A:EB X:02 Y:9B P:E5 SP:F9 PPU:150, 69 CYC:17073
FA33  18        CLC                             A:EB X:02 Y:9B P:E5 SP:F9 PPU:150, 78 CYC:17076
FA34  A9 40     LDA #$40                        A:EB X:02 Y:9B P:E4 SP:F9 PPU:150, 84 CYC:17078
FA36  60        RTS                             A:40 X:02 Y:9B P:64 SP:F9 PPU:150, 90 CYC:17080
E9CA  CF 47 06 *DCP $0647 = EB                  A:40 X:02 Y:9B P:64 SP:FB PPU:150,108 CYC:17086
E9CD  EA        NOP                             A:40 X:02 Y:9B P:64 SP:FB PPU:150,126 CYC:17092
E9CE  EA        NOP                             A:40 X:02 Y:9B P:64 SP:FB PPU:150,132 CYC:17094
E9CF  EA        NOP                             A:40 X:02 Y:9B P:64 SP:FB PPU:150,138 CYC:17096
E9D0  EA        NOP                             A:40 X:02 Y:9B P:64 SP:FB PPU:150,144 CYC:17098
E9D1  20 37 FA  JSR $FA37                       A:40 X:02 Y:9B P:64 SP:FB PPU:150,150 CYC:17100
FA37  50 2C     BVC $FA65                       A:40 X:02 Y:9B P:64 SP:F9 PPU:150,168 CYC:17106
FA39  B0 2A     BCS $FA65                       A:40 X:02 Y:9B P:64 SP:F9 PPU:150,174 CYC:17108
FA3B  30 28     BMI $FA65                       A:40 X:02 Y:9B P:64 SP:F9 PPU:150,180 CYC:17110
FA3D  C9 40     CMP #$40                        A:40 X:02 Y:9B P:64 SP:F9 PPU:150,186 CYC:17112
FA3F  D0 24     BNE $FA65                       A:40 X:02 Y:9B P:67 SP:F9 PPU:150,192 CYC:17114
FA41  60        RTS                             A:40 X:02 Y:9B P:67 SP:F9 PPU:150,198 CYC:17116
E9D4  AD 47 06  LDA $0647 = EA                  A:40 X:02 Y:9B P:67 SP:FB PPU:150,216 CYC:17122
E9D7  C9 EA     CMP #$EA                        A:EA X:02 Y:9B P:E5 SP:FB PPU:150,228 CYC:17126
E9D9  F0 02     BEQ $E9DD                       A:EA X:02 Y:9B P:67 SP:FB PPU:150,234 CYC:17128
E9DD  C8        INY                             A:EA X:02 Y:9B P:67 SP:FB PPU:150,243 CYC:17131
E9DE  A9 00     LDA #$00                        A:EA X:02 Y:9C P:E5 SP:FB PPU:150,249 CYC:17133
E9E0  8D 47 06  STA $0647 = EA                  A:00 X:02 Y:9C P:67 SP:FB PPU:150,255 CYC:17135
E9E3  20 42 FA  JSR $FA42                       A:00 X:02 Y:9C P:67 SP:FB PPU:150,267 CYC:17139
FA42  B8        CLV                             A:00 X:02 Y:9C P:67 SP:F9 PPU:150,285 CYC:17145
FA43  38        SEC                             A:00 X:02 Y:9C P:27 SP:F9 PPU:150,291 CYC:17147
FA44  A9 FF     LDA #$FF                        A:00 X:02 Y:9C P:27 SP:F9 PPU:150,297 CYC:17149
FA46  60        RTS                             A:FF X:02 Y:9C P:A5 SP:F9 PPU:150,303 CYC:17151
E9E6  CF 47 06 *DCP $0647 = 00                  A:FF X:02 Y:9C P:A5 SP:FB PPU:150,321 CYC:17157
E9E9  EA        NOP                             A:FF X:02 Y:9C P:27 SP:FB PPU:150,339 CYC:17163
E9EA  EA        NOP                             A:FF X:02 Y:9C P:27 SP:FB PPU:151,  4 CYC:17165
E9EB  EA        NOP                             A:FF X:02 Y:9C P:27 SP:FB PPU:151, 10 CYC:17167
E9EC  EA        NOP                             A:FF X:02 Y:9C P:27 SP:FB PPU:151, 16 CYC:17169
E9ED  20 47 FA  JSR $FA47                       A:FF X:02 Y:9C P:27 SP:FB PPU:151, 22 CYC:17171
FA47  70 1C     BVS $FA65                       A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 40 CYC:17177
FA49  D0 1A     BNE $FA65                       A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 46 CYC:17179
FA4B  30 18     BMI $FA65                       A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 52 CYC:17181
FA4D  90 16     BCC $FA65                       A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 58 CYC:17183
FA4F  C9 FF     CMP #$FF                        A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 64 CYC:17185
FA51  D0 12     BNE $FA65                       A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 70 CYC:17187
FA53  60        RTS                             A:FF X:02 Y:9C P:27 SP:F9 PPU:151, 76 CYC:17189
E9F0  AD 47 06  LDA $0647 = FF                  A:FF X:02 Y:9C P:27 SP:FB PPU:151, 94 CYC:17195
E9F3  C9 FF     CMP #$FF                        A:FF X:02 Y:9C P:A5 SP:FB PPU:151,106 CYC:17199
E9F5  F0 02     BEQ $E9F9                       A:FF X:02 Y:9C P:27 SP:FB PPU:151,112 CYC:17201
E9F9  C8        INY                             A:FF X:02 Y:9C P:27 SP:FB PPU:151,121 CYC:17204
E9FA  A9 37     LDA #$37                        A:FF X:02 Y:9D P:A5 SP:FB PPU:151,127 CYC:17206
E9FC  8D 47 06  STA $0647 = FF                  A:37 X:02 Y:9D P:25 SP:FB PPU:151,133 CYC:17208
E9FF  20 54 FA  JSR $FA54                       A:37 X:02 Y:9D P:25 SP:FB PPU:151,145 CYC:17212
FA54  24 01     BIT $01 = FF                    A:37 X:02 Y:9D P:25 SP:F9 PPU:151,163 CYC:17218
FA56  A9 F0     LDA #$F0                        A:37 X:02 Y:9D P:E5 SP:F9 PPU:151,172 CYC:17221
FA58  60        RTS                             A:F0 X:02 Y:9D P:E5 SP:F9 PPU:151,178 CYC:17223
EA02  CF 47 06 *DCP $0647 = 37                  A:F0 X:02 Y:9D P:E5 SP:FB PPU:151,196 CYC:17229
EA05  EA        NOP                             A:F0 X:02 Y:9D P:E5 SP:FB PPU:151,214 CYC:17235
EA06  EA        NOP                             A:F0 X:02 Y:9D P:E5 SP:FB PPU:151,220 CYC:17237
EA07  EA        NOP                             A:F0 X:02 Y:9D P:E5 SP:FB PPU:151,226 CYC:17239
EA08  EA        NOP                             A:F0 X:02 Y:9D P:E5 SP:FB PPU:151,232 CYC:17241
EA09  20 59 FA  JSR $FA59                       A:F0 X:02 Y:9D P:E5 SP:FB PPU:151,238 CYC:17243
FA59  50 0A     BVC $FA65                       A:F0 X:02 Y:9D P:E5 SP:F9 PPU:151,256 CYC:17249
FA5B  F0 08     BEQ $FA65                       A:F0 X:02 Y:9D P:E5 SP:F9 PPU:151,262 CYC:17251
FA5D  10 06     BPL $FA65                       A:F0 X:02 Y:9D P:E5 SP:F9 PPU:151,268 CYC:17253
FA5F  90 04     BCC $FA65                       A:F0 X:02 Y:9D P:E5 SP:F9 PPU:151,274 CYC:17255
FA61  C9 F0     CMP #$F0                        A:F0 X:02 Y:9D P:E5 SP:F9 PPU:151,280 CYC:17257
FA63  F0 02     BEQ $FA67                       A:F0 X:02 Y:9D P:67 SP:F9 PPU:151,286 CYC:17259
FA67  60        RTS                             A:F0 X:02 Y:9D P:67 SP:F9 PPU:151,295 CYC:17262
EA0C  AD 47 06  LDA $0647 = 36                  A:F0 X:02 Y:9D P:67 SP:FB PPU:151,313 CYC:17268
EA0F  C9 36     CMP #$36                        A:36 X:02 Y:9D P:65 SP:FB PPU:151,325 CYC:17272
EA11  F0 02     BEQ $EA15                       A:36 X:02 Y:9D P:67 SP:FB PPU:151,331 CYC:17274
EA15  A9 EB     LDA #$EB                        A:36 X:02 Y:9D P:67 SP:FB PPU:151,340 CYC:17277
EA17  8D 47 06  STA $0647 = 36                  A:EB X:02 Y:9D P:E5 SP:FB PPU:152,  5 CYC:17279
EA1A  A9 48     LDA #$48                        A:EB X:02 Y:9D P:E5 SP:FB PPU:152, 17 CYC:17283
EA1C  85 45     STA $45 = 32                    A:48 X:02 Y:9D P:65 SP:FB PPU:152, 23 CYC:17285
EA1E  A9 05     LDA #$05                        A:48 X:02 Y:9D P:65 SP:FB PPU:152, 32 CYC:17288
EA20  85 46     STA $46 = 04                    A:05 X:02 Y:9D P:65 SP:FB PPU:152, 38 CYC:17290
EA22  A0 FF     LDY #$FF                        A:05 X:02 Y:9D P:65 SP:FB PPU:152, 47 CYC:17293
EA24  20 31 FA  JSR $FA31                       A:05 X:02 Y:FF P:E5 SP:FB PPU:152, 53 CYC:17295
FA31  24 01     BIT $01 = FF                    A:05 X:02 Y:FF P:E5 SP:F9 PPU:152, 71 CYC:17301
FA33  18        CLC                             A:05 X:02 Y:FF P:E5 SP:F9 PPU:152, 80 CYC:17304
FA34  A9 40     LDA #$40                        A:05 X:02 Y:FF P:E4 SP:F9 PPU:152, 86 CYC:17306
FA36  60        RTS                             A:40 X:02 Y:FF P:64 SP:F9 PPU:152, 92 CYC:17308
EA27  D3 45    *DCP ($45),Y = 0548 @ 0647 = EB  A:40 X:02 Y:FF P:64 SP:FB PPU:152,110 CYC:17314
EA29  EA        NOP                             A:40 X:02 Y:FF P:64 SP:FB PPU:152,134 CYC:17322
EA2A  EA        NOP                             A:40 X:02 Y:FF P:64 SP:FB PPU:152,140 CYC:17324
EA2B  08        PHP                             A:40 X:02 Y:FF P:64 SP:FB PPU:152,146 CYC:17326
EA2C  48        PHA                             A:40 X:02 Y:FF P:64 SP:FA PPU:152,155 CYC:17329
EA2D  A0 9E     LDY #$9E                        A:40 X:02 Y:FF P:64 SP:F9 PPU:152,164 CYC:17332
EA2F  68        PLA                             A:40 X:02 Y:9E P:E4 SP:F9 PPU:152,170 CYC:17334
EA30  28        PLP                             A:40 X:02 Y:9E P:64 SP:FA PPU:152,182 CYC:17338
EA31  20 37 FA  JSR $FA37                       A:40 X:02 Y:9E P:64 SP:FB PPU:152,194 CYC:17342
FA37  50 2C     BVC $FA65                       A:40 X:02 Y:9E P:64 SP:F9 PPU:152,212 CYC:17348
FA39  B0 2A     BCS $FA65                       A:40 X:02 Y:9E P:64 SP:F9 PPU:152,218 CYC:17350
FA3B  30 28     BMI $FA65                       A:40 X:02 Y:9E P:64 SP:F9 PPU:152,224 CYC:17352
FA3D  C9 40     CMP #$40                        A:40 X:02 Y:9E P:64 SP:F9 PPU:152,230 CYC:17354
FA3F  D0 24     BNE $FA65                       A:40 X:02 Y:9E P:67 SP:F9 PPU:152,236 CYC:17356
FA41  60        RTS                             A:40 X:02 Y:9E P:67 SP:F9 PPU:152,242 CYC:17358
EA34  AD 47 06  LDA $0647 = EA                  A:40 X:02 Y:9E P:67 SP:FB PPU:152,260 CYC:17364
EA37  C9 EA     CMP #$EA                        A:EA X:02 Y:9E P:E5 SP:FB PPU:152,272 CYC:17368
EA39  F0 02     BEQ $EA3D                       A:EA X:02 Y:9E P:67 SP:FB PPU:152,278 CYC:17370
EA3D  A0 FF     LDY #$FF                        A:EA X:02 Y:9E P:67 SP:FB PPU:152,287 CYC:17373
EA3F  A9 00     LDA #$00                        A:EA X:02 Y:FF P:E5 SP:FB PPU:152,293 CYC:17375
EA41  8D 47 06  STA $0647 = EA                  A:00 X:02 Y:FF P:67 SP:FB PPU:152,299 CYC:17377
EA44  20 42 FA  JSR $FA42                       A:00 X:02 Y:FF P:67 SP:FB PPU:152,311 CYC:17381
FA42  B8        CLV                             A:00 X:02 Y:FF P:67 SP:F9 PPU:152,329 CYC:17387
FA43  38        SEC                             A:00 X:02 Y:FF P:27 SP:F9 PPU:152,335 CYC:17389
FA44  A9 FF     LDA #$FF                        A:00 X:02 Y:FF P:27 SP:F9 PPU:153,  0 CYC:17391
FA46  60        RTS                             A:FF X:02 Y:FF P:A5 SP:F9 PPU:153,  6 CYC:17393
EA47  D3 45    *DCP ($45),Y = 0548 @ 0647 = 00  A:FF X:02 Y:FF P:A5 SP:FB PPU:153, 24 CYC:17399
EA49  EA        NOP                             A:FF X:02 Y:FF P:27 SP:FB PPU:153, 48 CYC:17407
EA4A  EA        NOP                             A:FF X:02 Y:FF P:27 SP:FB PPU:153, 54 CYC:17409
EA4B  08        PHP                             A:FF X:02 Y:FF P:27 SP:FB PPU:153, 60 CYC:17411
EA4C  48        PHA                             A:FF X:02 Y:FF P:27 SP:FA PPU:153, 69 CYC:17414
EA4D  A0 9F     LDY #$9F                        A:FF X:02 Y:FF P:27 SP:F9 PPU:153, 78 CYC:17417
EA4F  68        PLA                             A:FF X:02 Y:9F P:A5 SP:F9 PPU:153, 84 CYC:17419
EA50  28        PLP                             A:FF X:02 Y:9F P:A5 SP:FA PPU:153, 96 CYC:17423
EA51  20 47 FA  JSR $FA47                       A:FF X:02 Y:9F P:27 SP:FB PPU:153,108 CYC:17427
FA47  70 1C     BVS $FA65                       A:FF X:02 Y:9F P:27 SP:F9 PPU:153,126 CYC:17433
FA49  D0 1A     BNE $FA65                       A:FF X:02 Y:9F P:27 SP:F9 PPU:153,132 CYC:17435
FA4B  30 18     BMI $FA65                       A:FF X:02 Y:9F P:27 SP:F9 PPU:153,138 CYC:17437
FA4D  90 16     BCC $FA65                       A:FF X:02 Y:9F P:27 SP:F9 PPU:153,144 CYC:17439
FA4F  C9 FF     CMP #$FF                        A:FF X:02 Y:9F P:27 SP:F9 PPU:153,150 CYC:17441
FA51  D0 12     BNE $FA65                       A:FF X:02 Y:9F P:27 SP:F9 PPU:153,156 CYC:17443
FA53  60        RTS                             A:FF X:02 Y:9F P:27 SP:F9 PPU:153,162 CYC:17445
EA54  AD 47 06  LDA $0647 = FF                  A:FF X:02 Y:9F P:27 SP:FB PPU:153,180 CYC:17451
EA57  C9 FF     CMP #$FF                        A:FF X:02 Y:9F P:A5 SP:FB PPU:153,192 CYC:17455
EA59  F0 02     BEQ $EA5D                       A:FF X:02 Y:9F P:27 SP:FB PPU:153,198 CYC:17457
EA5D  A0 FF     LDY #$FF                        A:FF X:02 Y:9F P:27 SP:FB PPU:153,207 CYC:17460
EA5F  A9 37     LDA #$37                        A:FF X:02 Y:FF P:A5 SP:FB PPU:153,213 CYC:17462
EA61  8D 47 06  STA $0647 = FF                  A:37 X:02 Y:FF P:25 SP:FB PPU:153,219 CYC:17464
EA64  20 54 FA  JSR $FA54                       A:37 X:02 Y:FF P:25 SP:FB PPU:153,231 CYC:17468
FA54  24 01     BIT $01 = FF                    A:37 X:02 Y:FF P:25 SP:F9 PPU:153,249 CYC:17474
FA56  A9 F0     LDA #$F0                        A:37 X:02 Y:FF P:E5 SP:F9 PPU:153,258 CYC:17477
FA58  60        RTS                             A:F0 X:02 Y:FF P:E5 SP:F9 PPU:153,264 CYC:17479
EA67  D3 45    *DCP ($45),Y = 0548 @ 0647 = 37  A:F0 X:02 Y:FF P:E5 SP:FB PPU:153,282 CYC:17485
EA69  EA        NOP                             A:F0 X:02 Y:FF P:E5 SP:FB PPU:153,306 CYC:17493
EA6A  EA        NOP                             A:F0 X:02 Y:FF P:E5 SP:FB PPU:153,312 CYC:17495
EA6B  08        PHP                             A:F0 X:02 Y:FF P:E5 SP:FB PPU:153,318 CYC:17497
EA6C  48        PHA                             A:F0 X:02 Y:FF P:E5 SP:FA PPU:153,327 CYC:17500
EA6D  A0 A0     LDY #$A0                        A:F0 X:02 Y:FF P:E5 SP:F9 PPU:153,336 CYC:17503
EA6F  68        PLA                             A:F0 X:02 Y:A0 P:E5 SP:F9 PPU:154,  1 CYC:17505
EA70  28        PLP                             A:F0 X:02 Y:A0 P:E5 SP:FA PPU:154, 13 CYC:17509
EA71  20 59 FA  JSR $FA59                       A:F0 X:02 Y:A0 P:E5 SP:FB PPU:154, 25 CYC:17513
FA59  50 0A     BVC $FA65                       A:F0 X:02 Y:A0 P:E5 SP:F9 PPU:154, 43 CYC:17519
FA5B  F0 08     BEQ $FA65                       A:F0 X:02 Y:A0 P:E5 SP:F9 PPU:154, 49 CYC:17521
FA5D  10 06     BPL $FA65                       A:F0 X:02 Y:A0 P:E5 SP:F9 PPU:154, 55 CYC:17523
FA5F  90 04     BCC $FA65                       A:F0 X:02 Y:A0 P:E5 SP:F9 PPU:154, 61 CYC:17525
FA61  C9 F0     CMP #$F0                        A:F0 X:02 Y:A0 P:E5 SP:F9 PPU:154, 67 CYC:17527
FA63  F0 02     BEQ $FA67                       A:F0 X:02 Y:A0 P:67 SP:F9 PPU:154, 73 CYC:17529
FA67  60        RTS                             A:F0 X:02 Y:A0 P:67 SP:F9 PPU:154, 82 CYC:17532
EA74  AD 47 06  LDA $0647 = 36                  A:F0 X:02 Y:A0 P:67 SP:FB PPU:154,100 CYC:17538
EA77  C9 36     CMP #$36                        A:36 X:02 Y:A0 P:65 SP:FB PPU:154,112 CYC:17542
EA79  F0 02     BEQ $EA7D                       A:36 X:02 Y:A0 P:67 SP:FB PPU:154,118 CYC:17544
EA7D  A0 A1     LDY #$A1                        A:36 X:02 Y:A0 P:67 SP:FB PPU:154,127 CYC:17547
EA7F  A2 FF     LDX #$FF                        A:36 X:02 Y:A1 P:E5 SP:FB PPU:154,133 CYC:17549
EA81  A9 EB     LDA #$EB                        A:36 X:FF Y:A1 P:E5 SP:FB PPU:154,139 CYC:17551
EA83  85 47     STA $47 = 36                    A:EB X:FF Y:A1 P:E5 SP:FB PPU:154,145 CYC:17553
EA85  20 31 FA  JSR $FA31                       A:EB X:FF Y:A1 P:E5 SP:FB PPU:154,154 CYC:17556
FA31  24 01     BIT $01 = FF                    A:EB X:FF Y:A1 P:E5 SP:F9 PPU:154,172 CYC:17562
FA33  18        CLC                             A:EB X:FF Y:A1 P:E5 SP:F9 PPU:154,181 CYC:17565
FA34  A9 40     LDA #$40                        A:EB X:FF Y:A1 P:E4 SP:F9 PPU:154,187 CYC:17567
FA36  60        RTS                             A:40 X:FF Y:A1 P:64 SP:F9 PPU:154,193 CYC:17569
EA88  D7 48    *DCP $48,X @ 47 = EB             A:40 X:FF Y:A1 P:64 SP:FB PPU:154,211 CYC:17575
EA8A  EA        NOP                             A:40 X:FF Y:A1 P:64 SP:FB PPU:154,229 CYC:17581
EA8B  EA        NOP                             A:40 X:FF Y:A1 P:64 SP:FB PPU:154,235 CYC:17583
EA8C  EA        NOP                             A:40 X:FF Y:A1 P:64 SP:FB PPU:154,241 CYC:17585
EA8D  EA        NOP                             A:40 X:FF Y:A1 P:64 SP:FB PPU:154,247 CYC:17587
EA8E  20 37 FA  JSR $FA37                       A:40 X:FF Y:A1 P:64 SP:FB PPU:154,253 CYC:17589
FA37  50 2C     BVC $FA65                       A:40 X:FF Y:A1 P:64 SP:F9 PPU:154,271 CYC:17595
FA39  B0 2A     BCS $FA65                       A:40 X:FF Y:A1 P:64 SP:F9 PPU:154,277 CYC:17597
FA3B  30 28     BMI $FA65                       A:40 X:FF Y:A1 P:64 SP:F9 PPU:154,283 CYC:17599
FA3D  C9 40     CMP #$40                        A:40 X:FF Y:A1 P:64 SP:F9 PPU:154,289 CYC:17601
FA3F  D0 24     BNE $FA65                       A:40 X:FF Y:A1 P:67 SP:F9 PPU:154,295 CYC:17603
FA41  60        RTS                             A:40 X:FF Y:A1 P:67 SP:F9 PPU:154,301 CYC:17605
EA91  A5 47     LDA $47 = EA                    A:40 X:FF Y:A1 P:67 SP:FB PPU:154,319 CYC:17611
EA93  C9 EA     CMP #$EA                        A:EA X:FF Y:A1 P:E5 SP:FB PPU:154,328 CYC:17614
EA95  F0 02     BEQ $EA99                       A:EA X:FF Y:A1 P:67 SP:FB PPU:154,334 CYC:17616
EA99  C8        INY                             A:EA X:FF Y:A1 P:67 SP:FB PPU:155,  2 CYC:17619
EA9A  A9 00     LDA #$00                        A:EA X:FF Y:A2 P:E5 SP:FB PPU:155,  8 CYC:17621
EA9C  85 47     STA $47 = EA                    A:00 X:FF Y:A2 P:67 SP:FB PPU:155, 14 CYC:17623
EA9E  20 42 FA  JSR $FA42                       A:00 X:FF Y:A2 P:67 SP:FB PPU:155, 23 CYC:17626
FA42  B8        CLV                             A:00 X:FF Y:A2 P:67 SP:F9 PPU:155, 41 CYC:17632
FA43  38        SEC                             A:00 X:FF Y:A2 P:27 SP:F9 PPU:155, 47 CYC:17634
FA44  A9 FF     LDA #$FF                        A:00 X:FF Y:A2 P:27 SP:F9 PPU:155, 53 CYC:17636
FA46  60        RTS                             A:FF X:FF Y:A2 P:A5 SP:F9 PPU:155, 59 CYC:17638
EAA1  D7 48    *DCP $48,X @ 47 = 00             A:FF X:FF Y:A2 P:A5 SP:FB PPU:155, 77 CYC:17644
EAA3  EA        NOP                             A:FF X:FF Y:A2 P:27 SP:FB PPU:155, 95 CYC:17650
EAA4  EA        NOP                             A:FF X:FF Y:A2 P:27 SP:FB PPU:155,101 CYC:17652
EAA5  EA        NOP                             A:FF X:FF Y:A2 P:27 SP:FB PPU:155,107 CYC:17654
EAA6  EA        NOP                             A:FF X:FF Y:A2 P:27 SP:FB PPU:155,113 CYC:17656
EAA7  20 47 FA  JSR $FA47                       A:FF X:FF Y:A2 P:27 SP:FB PPU:155,119 CYC:17658
FA47  70 1C     BVS $FA65                       A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,137 CYC:17664
FA49  D0 1A     BNE $FA65                       A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,143 CYC:17666
FA4B  30 18     BMI $FA65                       A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,149 CYC:17668
FA4D  90 16     BCC $FA65                       A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,155 CYC:17670
FA4F  C9 FF     CMP #$FF                        A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,161 CYC:17672
FA51  D0 12     BNE $FA65                       A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,167 CYC:17674
FA53  60        RTS                             A:FF X:FF Y:A2 P:27 SP:F9 PPU:155,173 CYC:17676
EAAA  A5 47     LDA $47 = FF                    A:FF X:FF Y:A2 P:27 SP:FB PPU:155,191 CYC:17682
EAAC  C9 FF     CMP #$FF                        A:FF X:FF Y:A2 P:A5 SP:FB PPU:155,200 CYC:17685
EAAE  F0 02     BEQ $EAB2                       A:FF X:FF Y:A2 P:27 SP:FB PPU:155,206 CYC:17687
EAB2  C8        INY                             A:FF X:FF Y:A2 P:27 SP:FB PPU:155,215 CYC:17690
EAB3  A9 37     LDA #$37                        A:FF X:FF Y:A3 P:A5 SP:FB PPU:155,221 CYC:17692
EAB5  85 47     STA $47 = FF                    A:37 X:FF Y:A3 P:25 SP:FB PPU:155,227 CYC:17694
EAB7  20 54 FA  JSR $FA54                       A:37 X:FF Y:A3 P:25 SP:FB PPU:155,236 CYC:17697
FA54  24 01     BIT $01 = FF                    A:37 X:FF Y:A3 P:25 SP:F9 PPU:155,254 CYC:17703
FA56  A9 F0     LDA #$F0                        A:37 X:FF Y:A3 P:E5 SP:F9 PPU:155,263 CYC:17706
FA58  60        RTS                             A:F0 X:FF Y:A3 P:E5 SP:F9 PPU:155,269 CYC:17708
EABA  D7 48    *DCP $48,X @ 47 = 37             A:F0 X:FF Y:A3 P:E5 SP:FB PPU:155,287 CYC:17714
EABC  EA        NOP                             A:F0 X:FF Y:A3 P:E5 SP:FB PPU:155,305 CYC:17720
EABD  EA        NOP                             A:F0 X:FF Y:A3 P:E5 SP:FB PPU:155,311 CYC:17722
EABE  EA        NOP                             A:F0 X:FF Y:A3 P:E5 SP:FB PPU:155,317 CYC:17724
EABF  EA        NOP                             A:F0 X:FF Y:A3 P:E5 SP:FB PPU:155,323 CYC:17726
EAC0  20 59 FA  JSR $FA59                       A:F0 X:FF Y:A3 P:E5 SP:FB PPU:155,329 CYC:17728
FA59  50 0A     BVC $FA65                       A:F0 X:FF Y:A3 P:E5 SP:F9 PPU:156,  6 CYC:17734
FA5B  F0 08     BEQ $FA65                       A:F0 X:FF Y:A3 P:E5 SP:F9 PPU:156, 12 CYC:17736
FA5D  10 06     BPL $FA65                       A:F0 X:FF Y:A3 P:E5 SP:F9 PPU:156, 18 CYC:17738
FA5F  90 04     BCC $FA65                       A:F0 X:FF Y:A3 P:E5 SP:F9 PPU:156, 24 CYC:17740
FA61  C9 F0     CMP #$F0                        A:F0 X:FF Y:A3 P:E5 SP:F9 PPU:156, 30 CYC:17742
FA63  F0 02     BEQ $FA67                       A:F0 X:FF Y:A3 P:67 SP:F9 PPU:156, 36 CYC:17744
FA67  60        RTS                             A:F0 X:FF Y:A3 P:67 SP:F9 PPU:156, 45 CYC:17747
EAC3  A5 47     LDA $47 = 36                    A:F0 X:FF Y:A3 P:67 SP:FB PPU:156, 63 CYC:17753
EAC5  C9 36     CMP #$36                        A:36 X:FF Y:A3 P:65 SP:FB PPU:156, 72 CYC:17756
EAC7  F0 02     BEQ $EACB                       A:36 X:FF Y:A3 P:67 SP:FB PPU:156, 78 CYC:17758
EACB  A9 EB     LDA #$EB                        A:36 X:FF Y:A3 P:67 SP:FB PPU:156, 87 CYC:17761
EACD  8D 47 06  STA $0647 = 36                  A:EB X:FF Y:A3 P:E5 SP:FB PPU:156, 93 CYC:17763
EAD0  A0 FF     LDY #$FF                        A:EB X:FF Y:A3 P:E5 SP:FB PPU:156,105 CYC:17767
EAD2  20 31 FA  JSR $FA31                       A:EB X:FF Y:FF P:E5 SP:FB PPU:156,111 CYC:17769
FA31  24 01     BIT $01 = FF                    A:EB X:FF Y:FF P:E5 SP:F9 PPU:156,129 CYC:17775
FA33  18        CLC                             A:EB X:FF Y:FF P:E5 SP:F9 PPU:156,138 CYC:17778
FA34  A9 40     LDA #$40                        A:EB X:FF Y:FF P:E4 SP:F9 PPU:156,144 CYC:17780
FA36  60        RTS                             A:40 X:FF Y:FF P:64 SP:F9 PPU:156,150 CYC:17782
EAD5  DB 48 05 *DCP $0548,Y @ 0647 = EB         A:40 X:FF Y:FF P:64 SP:FB PPU:156,168 CYC:17788
EAD8  EA        NOP                             A:40 X:FF Y:FF P:64 SP:FB PPU:156,189 CYC:17795
EAD9  EA        NOP                             A:40 X:FF Y:FF P:64 SP:FB PPU:156,195 CYC:17797
EADA  08        PHP                             A:40 X:FF Y:FF P:64 SP:FB PPU:156,201 CYC:17799
EADB  48        PHA                             A:40 X:FF Y:FF P:64 SP:FA PPU:156,210 CYC:17802
EADC  A0 A4     LDY #$A4                        A:40 X:FF Y:FF P:64 SP:F9 PPU:156,219 CYC:17805
EADE  68        PLA                             A:40 X:FF Y:A4 P:E4 SP:F9 PPU:156,225 CYC:17807
EADF  28        PLP                             A:40 X:FF Y:A4 P:64 SP:FA PPU:156,237 CYC:17811
EAE0  20 37 FA  JSR $FA37                       A:40 X:FF Y:A4 P:64 SP:FB PPU:156,249 CYC:17815
FA37  50 2C     BVC $FA65                       A:40 X:FF Y:A4 P:64 SP:F9 PPU:156,267 CYC:17821
FA39  B0 2A     BCS $FA65                       A:40 X:FF Y:A4 P:64 SP:F9 PPU:156,273 CYC:17823
FA3B  30 28     BMI $FA65                       A:40 X:FF Y:A4 P:64 SP:F9 PPU:156,279 CYC:17825
FA3D  C9 40     CMP #$40                        A:40 X:FF Y:A4 P:64 SP:F9 PPU:156,285 CYC:17827
FA3F  D0 24     BNE $FA65                       A:40 X:FF Y:A4 P:67 SP:F9 PPU:156,291 CYC:17829
FA41  60        RTS                             A:40 X:FF Y:A4 P:67 SP:F9 PPU:156,297 CYC:17831
EAE3  AD 47 06  LDA $0647 = EA                  A:40 X:FF Y:A4 P:67 SP:FB PPU:156,315 CYC:17837
EAE6  C9 EA     CMP #$EA                        A:EA X:FF Y:A4 P:E5 SP:FB PPU:156,327 CYC:17841
EAE8  F0 02     BEQ $EAEC                       A:EA X:FF Y:A4 P:67 SP:FB PPU:156,333 CYC:17843
EAEC  A0 FF     LDY #$FF                        A:EA X:FF Y:A4 P:67 SP:FB PPU:157,  1 CYC:17846
EAEE  A9 00     LDA #$00                        A:EA X:FF Y:FF P:E5 SP:FB PPU:157,  7 CYC:17848
EAF0  8D 47 06  STA $0647 = EA                  A:00 X:FF Y:FF P:67 SP:FB PPU:157, 13 CYC:17850
EAF3  20 42 FA  JSR $FA42                       A:00 X:FF Y:FF P:67 SP:FB PPU:157, 25 CYC:17854
FA42  B8        CLV                             A:00 X:FF Y:FF P:67 SP:F9 PPU:157, 43 CYC:17860
FA43  38        SEC                             A:00 X:FF Y:FF P:27 SP:F9 PPU:157, 49 CYC:17862
FA44  A9 FF     LDA #$FF                        A:00 X:FF Y:FF P:27 SP:F9 PPU:157, 55 CYC:17864
FA46  60        RTS                             A:FF X:FF Y:FF P:A5 SP:F9 PPU:157, 61 CYC:17866
EAF6  DB 48 05 *DCP $0548,Y @ 0647 = 00         A:FF X:FF Y:FF P:A5 SP:FB PPU:157, 79 CYC:17872
EAF9  EA        NOP                             A:FF X:FF Y:FF P:27 SP:FB PPU:157,100 CYC:17879
EAFA  EA        NOP                             A:FF X:FF Y:FF P:27 SP:FB PPU:157,106 CYC:17881
EAFB  08        PHP                             A:FF X:FF Y:FF P:27 SP:FB PPU:157,112 CYC:17883
EAFC  48        PHA                             A:FF X:FF Y:FF P:27 SP:FA PPU:157,121 CYC:17886
EAFD  A0 A5     LDY #$A5                        A:FF X:FF Y:FF P:27 SP:F9 PPU:157,130 CYC:17889
EAFF  68        PLA                             A:FF X:FF Y:A5 P:A5 SP:F9 PPU:157,136 CYC:17891
EB00  28        PLP                             A:FF X:FF Y:A5 P:A5 SP:FA PPU:157,148 CYC:17895
EB01  20 47 FA  JSR $FA47                       A:FF X:FF Y:A5 P:27 SP:FB PPU:157,160 CYC:17899
FA47  70 1C     BVS $FA65                       A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,178 CYC:17905
FA49  D0 1A     BNE $FA65                       A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,184 CYC:17907
FA4B  30 18     BMI $FA65                       A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,190 CYC:17909
FA4D  90 16     BCC $FA65                       A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,196 CYC:17911
FA4F  C9 FF     CMP #$FF                        A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,202 CYC:17913
FA51  D0 12     BNE $FA65                       A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,208 CYC:17915
FA53  60        RTS                             A:FF X:FF Y:A5 P:27 SP:F9 PPU:157,214 CYC:17917
EB04  AD 47 06  LDA $0647 = FF                  A:FF X:FF Y:A5 P:27 SP:FB PPU:157,232 CYC:17923
EB07  C9 FF     CMP #$FF                        A:FF X:FF Y:A5 P:A5 SP:FB PPU:157,244 CYC:17927
EB09  F0 02     BEQ $EB0D                       A:FF X:FF Y:A5 P:27 SP:FB PPU:157,250 CYC:17929
EB0D  A0 FF     LDY #$FF                        A:FF X:FF Y:A5 P:27 SP:FB PPU:157,259 CYC:17932
EB0F  A9 37     LDA #$37                        A:FF X:FF Y:FF P:A5 SP:FB PPU:157,265 CYC:17934
EB11  8D 47 06  STA $0647 = FF                  A:37 X:FF Y:FF P:25 SP:FB PPU:157,271 CYC:17936
EB14  20 54 FA  JSR $FA54                       A:37 X:FF Y:FF P:25 SP:FB PPU:157,283 CYC:17940
FA54  24 01     BIT $01 = FF                    A:37 X:FF Y:FF P:25 SP:F9 PPU:157,301 CYC:17946
FA56  A9 F0     LDA #$F0                        A:37 X:FF Y:FF P:E5 SP:F9 PPU:157,310 CYC:17949
FA58  60        RTS                             A:F0 X:FF Y:FF P:E5 SP:F9 PPU:157,316 CYC:17951
EB17  DB 48 05 *DCP $0548,Y @ 0647 = 37         A:F0 X:FF Y:FF P:E5 SP:FB PPU:157,334 CYC:17957
EB1A  EA        NOP                             A:F0 X:FF Y:FF P:E5 SP:FB PPU:158, 14 CYC:17964
EB1B  EA        NOP                             A:F0 X:FF Y:FF P:E5 SP:FB PPU:158, 20 CYC:17966
EB1C  08        PHP                             A:F0 X:FF Y:FF P:E5 SP:FB PPU:158, 26 CYC:17968
EB1D  48        PHA                             A:F0 X:FF Y:FF P:E5 SP:FA PPU:158, 35 CYC:17971
EB1E  A0 A6     LDY #$A6                        A:F0 X:FF Y:FF P:E5 SP:F9 PPU:158, 44 CYC:17974
EB20  68        PLA                             A:F0 X:FF Y:A6 P:E5 SP:F9 PPU:158, 50 CYC:17976
EB21  28        PLP                             A:F0 X:FF Y:A6 P:E5 SP:FA PPU:158, 62 CYC:17980
EB22  20 59 FA  JSR $FA59                       A:F0 X:FF Y:A6 P:E5 SP:FB PPU:158, 74 CYC:17984
FA59  50 0A     BVC $FA65                       A:F0 X:FF Y:A6 P:E5 SP:F9 PPU:158, 92 CYC:17990
FA5B  F0 08     BEQ $FA65                       A:F0 X:FF Y:A6 P:E5 SP:F9 PPU:158, 98 CYC:17992
FA5D  10 06     BPL $FA65                       A:F0 X:FF Y:A6 P:E5 SP:F9 PPU:158,104 CYC:17994
FA5F  90 04     BCC $FA65                       A:F0 X:FF Y:A6 P:E5 SP:F9 PPU:158,110 CYC:17996
FA61  C9 F0     CMP #$F0                        A:F0 X:FF Y:A6 P:E5 SP:F9 PPU:158,116 CYC:17998
FA63  F0 02     BEQ $FA67                       A:F0 X:FF Y:A6 P:67 SP:F9 PPU:158,122 CYC:18000
FA67  60        RTS                             A:F0 X:FF Y:A6 P:67 SP:F9 PPU:158,131 CYC:18003
EB25  AD 47 06  LDA $0647 = 36                  A:F0 X:FF Y:A6 P:67 SP:FB PPU:158,149 CYC:18009
EB28  C9 36     CMP #$36                        A:36 X:FF Y:A6 P:65 SP:FB PPU:158,161 CYC:18013
EB2A  F0 02     BEQ $EB2E                       A:36 X:FF Y:A6 P:67 SP:FB PPU:158,167 CYC:18015
EB2E  A0 A7     LDY #$A7                        A:36 X:FF Y:A6 P:67 SP:FB PPU:158,176 CYC:18018
EB30  A2 FF     LDX #$FF                        A:36 X:FF Y:A7 P:E5 SP:FB PPU:158,182 CYC:18020
EB32  A9 EB     LDA #$EB                        A:36 X:FF Y:A7 P:E5 SP:FB PPU:158,188 CYC:18022
EB34  8D 47 06  STA $0647 = 36                  A:EB X:FF Y:A7 P:E5 SP:FB PPU:158,194 CYC:18024
EB37  20 31 FA  JSR $FA31                       A:EB X:FF Y:A7 P:E5 SP:FB PPU:158,206 CYC:18028
FA31  24 01     BIT $01 = FF                    A:EB X:FF Y:A7 P:E5 SP:F9 PPU:158,224 CYC:18034
FA33  18        CLC                             A:EB X:FF Y:A7 P:E5 SP:F9 PPU:158,233 CYC:18037
FA34  A9 40     LDA #$40                        A:EB X:FF Y:A7 P:E4 SP:F9 PPU:158,239 CYC:18039
FA36  60        RTS                             A:40 X:FF Y:A7 P:64 SP:F9 PPU:158,245 CYC:18041
EB3A  DF 48 05 *DCP $0548,X @ 0647 = EB         A:40 X:FF Y:A7 P:64 SP:FB PPU:158,263 CYC:18047
EB3D  EA        NOP                             A:40 X:FF Y:A7 P:64 SP:FB PPU:158,284 CYC:18054
EB3E  EA        NOP                             A:40 X:FF Y:A7 P:64 SP:FB PPU:158,290 CYC:18056
EB3F  EA        NOP                             A:40 X:FF Y:A7 P:64 SP:FB PPU:158,296 CYC:18058
EB40  EA        NOP                             A:40 X:FF Y:A7 P:64 SP:FB PPU:158,302 CYC:18060
EB41  20 37 FA  JSR $FA37                       A:40 X:FF Y:A7 P:64 SP:FB PPU:158,308 CYC:18062
FA37  50 2C     BVC $FA65                       A:40 X:FF Y:A7 P:64 SP:F9 PPU:158,326 CYC:18068
FA39  B0 2A     BCS $FA65                       A:40 X:FF Y:A7 P:64 SP:F9 PPU:158,332 CYC:18070
FA3B  30 28     BMI $FA65                       A:40 X:FF Y:A7 P:64 SP:F9 PPU:158,338 CYC:18072
FA3D  C9 40     CMP #$40                        A:40 X:FF Y:A7 P:64 SP:F9 PPU:159,  3 CYC:18074
FA3F  D0 24     BNE $FA65                       A:40 X:FF Y:A7 P:67 SP:F9 PPU:159,  9 CYC:18076
FA41  60        RTS                             A:40 X:FF Y:A7 P:67 SP:F9 PPU:159, 15 CYC:18078
EB44  AD 47 06  LDA $0647 = EA                  A:40 X:FF Y:A7 P:67 SP:FB PPU:159, 33 CYC:18084
EB47  C9 EA     CMP #$EA                        A:EA X:FF Y:A7 P:E5 SP:FB PPU:159, 45 CYC:18088
EB49  F0 02     BEQ $EB4D                       A:EA X:FF Y:A7 P:67 SP:FB PPU:159, 51 CYC:18090
EB4D  C8        INY                             A:EA X:FF Y:A7 P:67 SP:FB PPU:159, 60 CYC:18093
EB4E  A9 00     LDA #$00                        A:EA X:FF Y:A8 P:E5 SP:FB PPU:159, 66 CYC:18095
EB50  8D 47 06  STA $0647 = EA                  A:00 X:FF Y:A8 P:67 SP:FB PPU:159, 72 CYC:18097
EB53  20 42 FA  JSR $FA42                       A:00 X:FF Y:A8 P:67 SP:FB PPU:159, 84 CYC:18101
FA42  B8        CLV                             A:00 X:FF Y:A8 P:67 SP:F9 PPU:159,102 CYC:18107
FA43  38        SEC                             A:00 X:FF Y:A8 P:27 SP:F9 PPU:159,108 CYC:18109
FA44  A9 FF     LDA #$FF                        A:00 X:FF Y:A8 P:27 SP:F9 PPU:159,114 CYC:18111
FA46  60        RTS                             A:FF X:FF Y:A8 P:A5 SP:F9 PPU:159,120 CYC:18113
EB56  DF 48 05 *DCP $0548,X @ 0647 = 00         A:FF X:FF Y:A8 P:A5 SP:FB PPU:159,138 CYC:18119
EB59  EA        NOP                             A:FF X:FF Y:A8 P:27 SP:FB PPU:159,159 CYC:18126
EB5A  EA        NOP                             A:FF X:FF Y:A8 P:27 SP:FB PPU:159,165 CYC:18128
EB5B  EA        NOP                             A:FF X:FF Y:A8 P:27 SP:FB PPU:159,171 CYC:18130
EB5C  EA        NOP                             A:FF X:FF Y:A8 P:27 SP:FB PPU:159,177 CYC:18132
EB5D  20 47 FA  JSR $FA47                       A:FF X:FF Y:A8 P:27 SP:FB PPU:159,183 CYC:18134
FA47  70 1C     BVS $FA65                       A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,201 CYC:18140
FA49  D0 1A     BNE $FA65                       A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,207 CYC:18142
FA4B  30 18     BMI $FA65                       A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,213 CYC:18144
FA4D  90 16     BCC $FA65                       A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,219 CYC:18146
FA4F  C9 FF     CMP #$FF                        A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,225 CYC:18148
FA51  D0 12     BNE $FA65                       A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,231 CYC:18150
FA53  60        RTS                             A:FF X:FF Y:A8 P:27 SP:F9 PPU:159,237 CYC:18152
EB60  AD 47 06  LDA $0647 = FF                  A:FF X:FF Y:A8 P:27 SP:FB PPU:159,255 CYC:18158
EB63  C9 FF     CMP #$FF                        A:FF X:FF Y:A8 P:A5 SP:FB PPU:159,267 CYC:18162
EB65  F0 02     BEQ $EB69                       A:FF X:FF Y:A8 P:27 SP:FB PPU:159,273 CYC:18164
EB69  C8        INY                             A:FF X:FF Y:A8 P:27 SP:FB PPU:159,282 CYC:18167
EB6A  A9 37     LDA #$37                        A:FF X:FF Y:A9 P:A5 SP:FB PPU:159,288 CYC:18169
EB6C  8D 47 06  STA $0647 = FF                  A:37 X:FF Y:A9 P:25 SP:FB PPU:159,294 CYC:18171
EB6F  20 54 FA  JSR $FA54                       A:37 X:FF Y:A9 P:25 SP:FB PPU:159,306 CYC:18175
FA54  24 01     BIT $01 = FF                    A:37 X:FF Y:A9 P:25 SP:F9 PPU:159,324 CYC:18181
FA56  A9 F0     LDA #$F0                        A:37 X:FF Y:A9 P:E5 SP:F9 PPU:159,333 CYC:18184
FA58  60        RTS                             A:F0 X:FF Y:A9 P:E5 SP:F9 PPU:159,339 CYC:18186
EB72  DF 48 05 *DCP $0548,X @ 0647 = 37         A:F0 X:FF Y:A9 P:E5 SP:FB PPU:160, 16 CYC:18192
EB75  EA        NOP                             A:F0 X:FF Y:A9 P:E5 SP:FB PPU:160, 37 CYC:18199
EB76  EA        NOP                             A:F0 X:FF Y:A9 P:E5 SP:FB PPU:160, 43 CYC:18201
EB77  EA        NOP                             A:F0 X:FF Y:A9 P:E5 SP:FB PPU:160, 49 CYC:18203
EB78  EA        NOP                             A:F0 X:FF Y:A9 P:E5 SP:FB PPU:160, 55 CYC:18205
EB79  20 59 FA  JSR $FA59                       A:F0 X:FF Y:A9 P:E5 SP:FB PPU:160, 61 CYC:18207
FA59  50 0A     BVC $FA65                       A:F0 X:FF Y:A9 P:E5 SP:F9 PPU:160, 79 CYC:18213
FA5B  F0 08     BEQ $FA65                       A:F0 X:FF Y:A9 P:E5 SP:F9 PPU:160, 85 CYC:18215
FA5D  10 06     BPL $FA65                       A:F0 X:FF Y:A9 P:E5 SP:F9 PPU:160, 91 CYC:18217
FA5F  90 04     BCC $FA65                       A:F0 X:FF Y:A9 P:E5 SP:F9 PPU:160, 97 CYC:18219
FA61  C9 F0     CMP #$F0                        A:F0 X:FF Y:A9 P:E5 SP:F9 PPU:160,103 CYC:18221
FA63  F0 02     BEQ $FA67                       A:F0 X:FF Y:A9 P:67 SP:F9 PPU:160,109 CYC:18223
FA67  60        RTS                             A:F0 X:FF Y:A9 P:67 SP:F9 PPU:160,118 CYC:18226
EB7C  AD 47 06  LDA $0647 = 36                  A:F0 X:FF Y:A9 P:67 SP:FB PPU:160,136 CYC:18232
EB7F  C9 36     CMP #$36                        A:36 X:FF Y:A9 P:65 SP:FB PPU:160,148 CYC:18236
EB81  F0 02     BEQ $EB85                       A:36 X:FF Y:A9 P:67 SP:FB PPU:160,154 CYC:18238
EB85  60        RTS                             A:36 X:FF Y:A9 P:67 SP:FB PPU:160,163 CYC:18241
C63E  20 86 EB  JSR $EB86                       A:36 X:FF Y:A9 P:67 SP:FD PPU:160,181 CYC:18247
EB86  A9 FF     LDA #$FF                        A:36 X:FF Y:A9 P:67 SP:FB PPU:160,199 CYC:18253
EB88  85 01     STA $01 = FF                    A:FF X:FF Y:A9 P:E5 SP:FB PPU:160,205 CYC:18255
EB8A  A0 AA     LDY #$AA                        A:FF X:FF Y:A9 P:E5 SP:FB PPU:160,214 CYC:18258
EB8C  A2 02     LDX #$02                        A:FF X:FF Y:AA P:E5 SP:FB PPU:160,220 CYC:18260
EB8E  A9 47     LDA #$47                        A:FF X:02 Y:AA P:65 SP:FB PPU:160,226 CYC:18262
EB90  85 47     STA $47 = 36                    A:47 X:02 Y:AA P:65 SP:FB PPU:160,232 CYC:18264
EB92  A9 06     LDA #$06                        A:47 X:02 Y:AA P:65 SP:FB PPU:160,241 CYC:18267
EB94  85 48     STA $48 = 06                    A:06 X:02 Y:AA P:65 SP:FB PPU:160,247 CYC:18269
EB96  A9 EB     LDA #$EB                        A:06 X:02 Y:AA P:65 SP:FB PPU:160,256 CYC:18272
EB98  8D 47 06  STA $0647 = 36                  A:EB X:02 Y:AA P:E5 SP:FB PPU:160,262 CYC:18274
EB9B  20 B1 FA  JSR $FAB1                       A:EB X:02 Y:AA P:E5 SP:FB PPU:160,274 CYC:18278
FAB1  24 01     BIT $01 = FF                    A:EB X:02 Y:AA P:E5 SP:F9 PPU:160,292 CYC:18284
FAB3  18        CLC                             A:EB X:02 Y:AA P:E5 SP:F9 PPU:160,301 CYC:18287
FAB4  A9 40     LDA #$40                        A:EB X:02 Y:AA P:E4 SP:F9 PPU:160,307 CYC:18289
FAB6  60        RTS                             A:40 X:02 Y:AA P:64 SP:F9 PPU:160,313 CYC:18291
EB9E  E3 45    *ISB ($45,X) @ 47 = 0647 = EB    A:40 X:02 Y:AA P:64 SP:FB PPU:160,331 CYC:18297
EBA0  EA        NOP                             A:53 X:02 Y:AA P:24 SP:FB PPU:161, 14 CYC:18305
EBA1  EA        NOP                             A:53 X:02 Y:AA P:24 SP:FB PPU:161, 20 CYC:18307
EBA2  EA        NOP                             A:53 X:02 Y:AA P:24 SP:FB PPU:161, 26 CYC:18309
EBA3  EA        NOP                             A:53 X:02 Y:AA P:24 SP:FB PPU:161, 32 CYC:18311
EBA4  20 B7 FA  JSR $FAB7                       A:53 X:02 Y:AA P:24 SP:FB PPU:161, 38 CYC:18313
FAB7  70 2D     BVS $FAE6                       A:53 X:02 Y:AA P:24 SP:F9 PPU:161, 56 CYC:18319
FAB9  B0 2B     BCS $FAE6                       A:53 X:02 Y:AA P:24 SP:F9 PPU:161, 62 CYC:18321
FABB  30 29     BMI $FAE6                       A:53 X:02 Y:AA P:24 SP:F9 PPU:161, 68 CYC:18323
FABD  C9 53     CMP #$53                        A:53 X:02 Y:AA P:24 SP:F9 PPU:161, 74 CYC:18325
FABF  D0 25     BNE $FAE6                       A:53 X:02 Y:AA P:27 SP:F9 PPU:161, 80 CYC:18327
FAC1  60        RTS                             A:53 X:02 Y:AA P:27 SP:F9 PPU:161, 86 CYC:18329
EBA7  AD 47 06  LDA $0647 = EC                  A:53 X:02 Y:AA P:27 SP:FB PPU:161,104 CYC:18335
EBAA  C9 EC     CMP #$EC                        A:EC X:02 Y:AA P:A5 SP:FB PPU:161,116 CYC:18339
EBAC  F0 02     BEQ $EBB0                       A:EC X:02 Y:AA P:27 SP:FB PPU:161,122 CYC:18341
EBB0  C8        INY                             A:EC X:02 Y:AA P:27 SP:FB PPU:161,131 CYC:18344
EBB1  A9 FF     LDA #$FF                        A:EC X:02 Y:AB P:A5 SP:FB PPU:161,137 CYC:18346
EBB3  8D 47 06  STA $0647 = EC                  A:FF X:02 Y:AB P:A5 SP:FB PPU:161,143 CYC:18348
EBB6  20 C2 FA  JSR $FAC2                       A:FF X:02 Y:AB P:A5 SP:FB PPU:161,155 CYC:18352
FAC2  B8        CLV                             A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,173 CYC:18358
FAC3  38        SEC                             A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,179 CYC:18360
FAC4  A9 FF     LDA #$FF                        A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,185 CYC:18362
FAC6  60        RTS                             A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,191 CYC:18364
EBB9  E3 45    *ISB ($45,X) @ 47 = 0647 = FF    A:FF X:02 Y:AB P:A5 SP:FB PPU:161,209 CYC:18370
EBBB  EA        NOP                             A:FF X:02 Y:AB P:A5 SP:FB PPU:161,233 CYC:18378
EBBC  EA        NOP                             A:FF X:02 Y:AB P:A5 SP:FB PPU:161,239 CYC:18380
EBBD  EA        NOP                             A:FF X:02 Y:AB P:A5 SP:FB PPU:161,245 CYC:18382
EBBE  EA        NOP                             A:FF X:02 Y:AB P:A5 SP:FB PPU:161,251 CYC:18384
EBBF  20 C7 FA  JSR $FAC7                       A:FF X:02 Y:AB P:A5 SP:FB PPU:161,257 CYC:18386
FAC7  70 1D     BVS $FAE6                       A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,275 CYC:18392
FAC9  F0 1B     BEQ $FAE6                       A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,281 CYC:18394
FACB  10 19     BPL $FAE6                       A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,287 CYC:18396
FACD  90 17     BCC $FAE6                       A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,293 CYC:18398
FACF  C9 FF     CMP #$FF                        A:FF X:02 Y:AB P:A5 SP:F9 PPU:161,299 CYC:18400
FAD1  D0 13     BNE $FAE6                       A:FF X:02 Y:AB P:27 SP:F9 PPU:161,305 CYC:18402
FAD3  60        RTS                             A:FF X:02 Y:AB P:27 SP:F9 PPU:161,311 CYC:18404
EBC2  AD 47 06  LDA $0647 = 00                  A:FF X:02 Y:AB P:27 SP:FB PPU:161,329 CYC:18410
EBC5  C9 00     CMP #$00                        A:00 X:02 Y:AB P:27 SP:FB PPU:162,  0 CYC:18414
EBC7  F0 02     BEQ $EBCB                       A:00 X:02 Y:AB P:27 SP:FB PPU:162,  6 CYC:18416
EBCB  C8        INY                             A:00 X:02 Y:AB P:27 SP:FB PPU:162, 15 CYC:18419
EBCC  A9 37     LDA #$37                        A:00 X:02 Y:AC P:A5 SP:FB PPU:162, 21 CYC:18421
EBCE  8D 47 06  STA $0647 = 00                  A:37 X:02 Y:AC P:25 SP:FB PPU:162, 27 CYC:18423
EBD1  20 D4 FA  JSR $FAD4                       A:37 X:02 Y:AC P:25 SP:FB PPU:162, 39 CYC:18427
FAD4  24 01     BIT $01 = FF                    A:37 X:02 Y:AC P:25 SP:F9 PPU:162, 57 CYC:18433
FAD6  38        SEC                             A:37 X:02 Y:AC P:E5 SP:F9 PPU:162, 66 CYC:18436
FAD7  A9 F0     LDA #$F0                        A:37 X:02 Y:AC P:E5 SP:F9 PPU:162, 72 CYC:18438
FAD9  60        RTS                             A:F0 X:02 Y:AC P:E5 SP:F9 PPU:162, 78 CYC:18440
EBD4  E3 45    *ISB ($45,X) @ 47 = 0647 = 37    A:F0 X:02 Y:AC P:E5 SP:FB PPU:162, 96 CYC:18446
EBD6  EA        NOP                             A:B8 X:02 Y:AC P:A5 SP:FB PPU:162,120 CYC:18454
EBD7  EA        NOP                             A:B8 X:02 Y:AC P:A5 SP:FB PPU:162,126 CYC:18456
EBD8  EA        NOP                             A:B8 X:02 Y:AC P:A5 SP:FB PPU:162,132 CYC:18458
EBD9  EA        NOP                             A:B8 X:02 Y:AC P:A5 SP:FB PPU:162,138 CYC:18460
EBDA  20 DA FA  JSR $FADA                       A:B8 X:02 Y:AC P:A5 SP:FB PPU:162,144 CYC:18462
FADA  70 0A     BVS $FAE6                       A:B8 X:02 Y:AC P:A5 SP:F9 PPU:162,162 CYC:18468
FADC  F0 08     BEQ $FAE6                       A:B8 X:02 Y:AC P:A5 SP:F9 PPU:162,168 CYC:18470
FADE  10 06     BPL $FAE6                       A:B8 X:02 Y:AC P:A5 SP:F9 PPU:162,174 CYC:18472
FAE0  90 04     BCC $FAE6                       A:B8 X:02 Y:AC P:A5 SP:F9 PPU:162,180 CYC:18474
FAE2  C9 B8     CMP #$B8                        A:B8 X:02 Y:AC P:A5 SP:F9 PPU:162,186 CYC:18476
FAE4  F0 02     BEQ $FAE8                       A:B8 X:02 Y:AC P:27 SP:F9 PPU:162,192 CYC:18478
FAE8  60        RTS                             A:B8 X:02 Y:AC P:27 SP:F9 PPU:162,201 CYC:18481
EBDD  AD 47 06  LDA $0647 = 38                  A:B8 X:02 Y:AC P:27 SP:FB PPU:162,219 CYC:18487
EBE0  C9 38     CMP #$38                        A:38 X:02 Y:AC P:25 SP:FB PPU:162,231 CYC:18491
EBE2  F0 02     BEQ $EBE6                       A:38 X:02 Y:AC P:27 SP:FB PPU:162,237 CYC:18493
EBE6  C8        INY                             A:38 X:02 Y:AC P:27 SP:FB PPU:162,246 CYC:18496
EBE7  A9 EB     LDA #$EB                        A:38 X:02 Y:AD P:A5 SP:FB PPU:162,252 CYC:18498
EBE9  85 47     STA $47 = 47                    A:EB X:02 Y:AD P:A5 SP:FB PPU:162,258 CYC:18500
EBEB  20 B1 FA  JSR $FAB1                       A:EB X:02 Y:AD P:A5 SP:FB PPU:162,267 CYC:18503
FAB1  24 01     BIT $01 = FF                    A:EB X:02 Y:AD P:A5 SP:F9 PPU:162,285 CYC:18509
FAB3  18        CLC                             A:EB X:02 Y:AD P:E5 SP:F9 PPU:162,294 CYC:18512
FAB4  A9 40     LDA #$40                        A:EB X:02 Y:AD P:E4 SP:F9 PPU:162,300 CYC:18514
FAB6  60        RTS                             A:40 X:02 Y:AD P:64 SP:F9 PPU:162,306 CYC:18516
EBEE  E7 47    *ISB $47 = EB                    A:40 X:02 Y:AD P:64 SP:FB PPU:162,324 CYC:18522
EBF0  EA        NOP                             A:53 X:02 Y:AD P:24 SP:FB PPU:162,339 CYC:18527
EBF1  EA        NOP                             A:53 X:02 Y:AD P:24 SP:FB PPU:163,  4 CYC:18529
EBF2  EA        NOP                             A:53 X:02 Y:AD P:24 SP:FB PPU:163, 10 CYC:18531
EBF3  EA        NOP                             A:53 X:02 Y:AD P:24 SP:FB PPU:163, 16 CYC:18533
EBF4  20 B7 FA  JSR $FAB7                       A:53 X:02 Y:AD P:24 SP:FB PPU:163, 22 CYC:18535
FAB7  70 2D     BVS $FAE6                       A:53 X:02 Y:AD P:24 SP:F9 PPU:163, 40 CYC:18541
FAB9  B0 2B     BCS $FAE6                       A:53 X:02 Y:AD P:24 SP:F9 PPU:163, 46 CYC:18543
FABB  30 29     BMI $FAE6                       A:53 X:02 Y:AD P:24 SP:F9 PPU:163, 52 CYC:18545
FABD  C9 53     CMP #$53                        A:53 X:02 Y:AD P:24 SP:F9 PPU:163, 58 CYC:18547
FABF  D0 25     BNE $FAE6                       A:53 X:02 Y:AD P:27 SP:F9 PPU:163, 64 CYC:18549
FAC1  60        RTS                             A:53 X:02 Y:AD P:27 SP:F9 PPU:163, 70 CYC:18551
EBF7  A5 47     LDA $47 = EC                    A:53 X:02 Y:AD P:27 SP:FB PPU:163, 88 CYC:18557
EBF9  C9 EC     CMP #$EC                        A:EC X:02 Y:AD P:A5 SP:FB PPU:163, 97 CYC:18560
EBFB  F0 02     BEQ $EBFF                       A:EC X:02 Y:AD P:27 SP:FB PPU:163,103 CYC:18562
EBFF  C8        INY                             A:EC X:02 Y:AD P:27 SP:FB PPU:163,112 CYC:18565
EC00  A9 FF     LDA #$FF                        A:EC X:02 Y:AE P:A5 SP:FB PPU:163,118 CYC:18567
EC02  85 47     STA $47 = EC                    A:FF X:02 Y:AE P:A5 SP:FB PPU:163,124 CYC:18569
EC04  20 C2 FA  JSR $FAC2                       A:FF X:02 Y:AE P:A5 SP:FB PPU:163,133 CYC:18572
FAC2  B8        CLV                             A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,151 CYC:18578
FAC3  38        SEC                             A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,157 CYC:18580
FAC4  A9 FF     LDA #$FF                        A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,163 CYC:18582
FAC6  60        RTS                             A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,169 CYC:18584
EC07  E7 47    *ISB $47 = FF                    A:FF X:02 Y:AE P:A5 SP:FB PPU:163,187 CYC:18590
EC09  EA        NOP                             A:FF X:02 Y:AE P:A5 SP:FB PPU:163,202 CYC:18595
EC0A  EA        NOP                             A:FF X:02 Y:AE P:A5 SP:FB PPU:163,208 CYC:18597
EC0B  EA        NOP                             A:FF X:02 Y:AE P:A5 SP:FB PPU:163,214 CYC:18599
EC0C  EA        NOP                             A:FF X:02 Y:AE P:A5 SP:FB PPU:163,220 CYC:18601
EC0D  20 C7 FA  JSR $FAC7                       A:FF X:02 Y:AE P:A5 SP:FB PPU:163,226 CYC:18603
FAC7  70 1D     BVS $FAE6                       A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,244 CYC:18609
FAC9  F0 1B     BEQ $FAE6                       A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,250 CYC:18611
FACB  10 19     BPL $FAE6                       A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,256 CYC:18613
FACD  90 17     BCC $FAE6                       A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,262 CYC:18615
FACF  C9 FF     CMP #$FF                        A:FF X:02 Y:AE P:A5 SP:F9 PPU:163,268 CYC:18617
FAD1  D0 13     BNE $FAE6                       A:FF X:02 Y:AE P:27 SP:F9 PPU:163,274 CYC:18619
FAD3  60        RTS                             A:FF X:02 Y:AE P:27 SP:F9 PPU:163,280 CYC:18621
EC10  A5 47     LDA $47 = 00                    A:FF X:02 Y:AE P:27 SP:FB PPU:163,298 CYC:18627
EC12  C9 00     CMP #$00                        A:00 X:02 Y:AE P:27 SP:FB PPU:163,307 CYC:18630
EC14  F0 02     BEQ $EC18                       A:00 X:02 Y:AE P:27 SP:FB PPU:163,313 CYC:18632
EC18  C8        INY                             A:00 X:02 Y:AE P:27 SP:FB PPU:163,322 CYC:18635
EC19  A9 37     LDA #$37                        A:00 X:02 Y:AF P:A5 SP:FB PPU:163,328 CYC:18637
EC1B  85 47     STA $47 = 00                    A:37 X:02 Y:AF P:25 SP:FB PPU:163,334 CYC:18639
EC1D  20 D4 FA  JSR $FAD4                       A:37 X:02 Y:AF P:25 SP:FB PPU:164,  2 CYC:18642
FAD4  24 01     BIT $01 = FF                    A:37 X:02 Y:AF P:25 SP:F9 PPU:164, 20 CYC:18648
FAD6  38        SEC                             A:37 X:02 Y:AF P:E5 SP:F9 PPU:164, 29 CYC:18651
FAD7  A9 F0     LDA #$F0                        A:37 X:02 Y:AF P:E5 SP:F9 PPU:164, 35 CYC:18653
FAD9  60        RTS                             A:F0 X:02 Y:AF P:E5 SP:F9 PPU:164, 41 CYC:18655
EC20  E7 47    *ISB $47 = 37                    A:F0 X:02 Y:AF P:E5 SP:FB PPU:164, 59 CYC:18661
EC22  EA        NOP                             A:B8 X:02 Y:AF P:A5 SP:FB PPU:164, 74 CYC:18666
EC23  EA        NOP                             A:B8 X:02 Y:AF P:A5 SP:FB PPU:164, 80 CYC:18668
EC24  EA        NOP                             A:B8 X:02 Y:AF P:A5 SP:FB PPU:164, 86 CYC:18670
EC25  EA        NOP                             A:B8 X:02 Y:AF P:A5 SP:FB PPU:164, 92 CYC:18672
EC26  20 DA FA  JSR $FADA                       A:B8 X:02 Y:AF P:A5 SP:FB PPU:164, 98 CYC:18674
FADA  70 0A     BVS $FAE6                       A:B8 X:02 Y:AF P:A5 SP:F9 PPU:164,116 CYC:18680
FADC  F0 08     BEQ $FAE6                       A:B8 X:02 Y:AF P:A5 SP:F9 PPU:164,122 CYC:18682
FADE  10 06     BPL $FAE6                       A:B8 X:02 Y:AF P:A5 SP:F9 PPU:164,128 CYC:18684
FAE0  90 04     BCC $FAE6                       A:B8 X:02 Y:AF P:A5 SP:F9 PPU:164,134 CYC:18686
FAE2  C9 B8     CMP #$B8                        A:B8 X:02 Y:AF P:A5 SP:F9 PPU:164,140 CYC:18688
FAE4  F0 02     BEQ $FAE8                       A:B8 X:02 Y:AF P:27 SP:F9 PPU:164,146 CYC:18690
FAE8  60        RTS                             A:B8 X:02 Y:AF P:27 SP:F9 PPU:164,155 CYC:18693
EC29  A5 47     LDA $47 = 38                    A:B8 X:02 Y:AF P:27 SP:FB PPU:164,173 CYC:18699
EC2B  C9 38     CMP #$38                        A:38 X:02 Y:AF P:25 SP:FB PPU:164,182 CYC:18702
EC2D  F0 02     BEQ $EC31                       A:38 X:02 Y:AF P:27 SP:FB PPU:164,188 CYC:18704
EC31  C8        INY                             A:38 X:02 Y:AF P:27 SP:FB PPU:164,197 CYC:18707
EC32  A9 EB     LDA #$EB                        A:38 X:02 Y:B0 P:A5 SP:FB PPU:164,203 CYC:18709
EC34  8D 47 06  STA $0647 = 38                  A:EB X:02 Y:B0 P:A5 SP:FB PPU:164,209 CYC:18711
EC37  20 B1 FA  JSR $FAB1                       A:EB X:02 Y:B0 P:A5 SP:FB PPU:164,221 CYC:18715
FAB1  24 01     BIT $01 = FF                    A:EB X:02 Y:B0 P:A5 SP:F9 PPU:164,239 CYC:18721
FAB3  18        CLC                             A:EB X:02 Y:B0 P:E5 SP:F9 PPU:164,248 CYC:18724
FAB4  A9 40     LDA #$40                        A:EB X:02 Y:B0 P:E4 SP:F9 PPU:164,254 CYC:18726
FAB6  60        RTS                             A:40 X:02 Y:B0 P:64 SP:F9 PPU:164,260 CYC:18728
EC3A  EF 47 06 *ISB $0647 = EB                  A:40 X:02 Y:B0 P:64 SP:FB PPU:164,278 CYC:18734
EC3D  EA        NOP                             A:53 X:02 Y:B0 P:24 SP:FB PPU:164,296 CYC:18740
EC3E  EA        NOP                             A:53 X:02 Y:B0 P:24 SP:FB PPU:164,302 CYC:18742
EC3F  EA        NOP                             A:53 X:02 Y:B0 P:24 SP:FB PPU:164,308 CYC:18744
EC40  EA        NOP                             A:53 X:02 Y:B0 P:24 SP:FB PPU:164,314 CYC:18746
EC41  20 B7 FA  JSR $FAB7                       A:53 X:02 Y:B0 P:24 SP:FB PPU:164,320 CYC:18748
FAB7  70 2D     BVS $FAE6                       A:53 X:02 Y:B0 P:24 SP:F9 PPU:164,338 CYC:18754
FAB9  B0 2B     BCS $FAE6                       A:53 X:02 Y:B0 P:24 SP:F9 PPU:165,  3 CYC:18756
FABB  30 29     BMI $FAE6                       A:53 X:02 Y:B0 P:24 SP:F9 PPU:165,  9 CYC:18758
FABD  C9 53     CMP #$53                        A:53 X:02 Y:B0 P:24 SP:F9 PPU:165, 15 CYC:18760
FABF  D0 25     BNE $FAE6                       A:53 X:02 Y:B0 P:27 SP:F9 PPU:165, 21 CYC:18762
FAC1  60        RTS                             A:53 X:02 Y:B0 P:27 SP:F9 PPU:165, 27 CYC:18764
EC44  AD 47 06  LDA $0647 = EC                  A:53 X:02 Y:B0 P:27 SP:FB PPU:165, 45 CYC:18770
EC47  C9 EC     CMP #$EC                        A:EC X:02 Y:B0 P:A5 SP:FB PPU:165, 57 CYC:18774
EC49  F0 02     BEQ $EC4D                       A:EC X:02 Y:B0 P:27 SP:FB PPU:165, 63 CYC:18776
EC4D  C8        INY                             A:EC X:02 Y:B0 P:27 SP:FB PPU:165, 72 CYC:18779
EC4E  A9 FF     LDA #$FF                        A:EC X:02 Y:B1 P:A5 SP:FB PPU:165, 78 CYC:18781
EC50  8D 47 06  STA $0647 = EC                  A:FF X:02 Y:B1 P:A5 SP:FB PPU:165, 84 CYC:18783
EC53  20 C2 FA  JSR $FAC2                       A:FF X:02 Y:B1 P:A5 SP:FB PPU:165, 96 CYC:18787
FAC2  B8        CLV                             A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,114 CYC:18793
FAC3  38        SEC                             A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,120 CYC:18795
FAC4  A9 FF     LDA #$FF                        A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,126 CYC:18797
FAC6  60        RTS                             A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,132 CYC:18799
EC56  EF 47 06 *ISB $0647 = FF                  A:FF X:02 Y:B1 P:A5 SP:FB PPU:165,150 CYC:18805
EC59  EA        NOP                             A:FF X:02 Y:B1 P:A5 SP:FB PPU:165,168 CYC:18811
EC5A  EA        NOP                             A:FF X:02 Y:B1 P:A5 SP:FB PPU:165,174 CYC:18813
EC5B  EA        NOP                             A:FF X:02 Y:B1 P:A5 SP:FB PPU:165,180 CYC:18815
EC5C  EA        NOP                             A:FF X:02 Y:B1 P:A5 SP:FB PPU:165,186 CYC:18817
EC5D  20 C7 FA  JSR $FAC7                       A:FF X:02 Y:B1 P:A5 SP:FB PPU:165,192 CYC:18819
FAC7  70 1D     BVS $FAE6                       A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,210 CYC:18825
FAC9  F0 1B     BEQ $FAE6                       A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,216 CYC:18827
FACB  10 19     BPL $FAE6                       A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,222 CYC:18829
FACD  90 17     BCC $FAE6                       A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,228 CYC:18831
FACF  C9 FF     CMP #$FF                        A:FF X:02 Y:B1 P:A5 SP:F9 PPU:165,234 CYC:18833
FAD1  D0 13     BNE $FAE6                       A:FF X:02 Y:B1 P:27 SP:F9 PPU:165,240 CYC:18835
FAD3  60        RTS                             A:FF X:02 Y:B1 P:27 SP:F9 PPU:165,246 CYC:18837
EC60  AD 47 06  LDA $0647 = 00                  A:FF X:02 Y:B1 P:27 SP:FB PPU:165,264 CYC:18843
EC63  C9 00     CMP #$00                        A:00 X:02 Y:B1 P:27 SP:FB PPU:165,276 CYC:18847
EC65  F0 02     BEQ $EC69                       A:00 X:02 Y:B1 P:27 SP:FB PPU:165,282 CYC:18849
EC69  C8        INY                             A:00 X:02 Y:B1 P:27 SP:FB PPU:165,291 CYC:18852
EC6A  A9 37     LDA #$37                        A:00 X:02 Y:B2 P:A5 SP:FB PPU:165,297 CYC:18854
EC6C  8D 47 06  STA $0647 = 00                  A:37 X:02 Y:B2 P:25 SP:FB PPU:165,303 CYC:18856
EC6F  20 D4 FA  JSR $FAD4                       A:37 X:02 Y:B2 P:25 SP:FB PPU:165,315 CYC:18860
FAD4  24 01     BIT $01 = FF                    A:37 X:02 Y:B2 P:25 SP:F9 PPU:165,333 CYC:18866
FAD6  38        SEC                             A:37 X:02 Y:B2 P:E5 SP:F9 PPU:166,  1 CYC:18869
FAD7  A9 F0     LDA #$F0                        A:37 X:02 Y:B2 P:E5 SP:F9 PPU:166,  7 CYC:18871
FAD9  60        RTS                             A:F0 X:02 Y:B2 P:E5 SP:F9 PPU:166, 13 CYC:18873
EC72  EF 47 06 *ISB $0647 = 37                  A:F0 X:02 Y:B2 P:E5 SP:FB PPU:166, 31 CYC:18879
EC75  EA        NOP                             A:B8 X:02 Y:B2 P:A5 SP:FB PPU:166, 49 CYC:18885
EC76  EA        NOP                             A:B8 X:02 Y:B2 P:A5 SP:FB PPU:166, 55 CYC:18887
EC77  EA        NOP                             A:B8 X:02 Y:B2 P:A5 SP:FB PPU:166, 61 CYC:18889
EC78  EA        NOP                             A:B8 X:02 Y:B2 P:A5 SP:FB PPU:166, 67 CYC:18891
EC79  20 DA FA  JSR $FADA                       A:B8 X:02 Y:B2 P:A5 SP:FB PPU:166, 73 CYC:18893
FADA  70 0A     BVS $FAE6                       A:B8 X:02 Y:B2 P:A5 SP:F9 PPU:166, 91 CYC:18899
FADC  F0 08     BEQ $FAE6                       A:B8 X:02 Y:B2 P:A5 SP:F9 PPU:166, 97 CYC:18901
FADE  10 06     BPL $FAE6                       A:B8 X:02 Y:B2 P:A5 SP:F9 PPU:166,103 CYC:18903
FAE0  90 04     BCC $FAE6                       A:B8 X:02 Y:B2 P:A5 SP:F9 PPU:166,109 CYC:18905
FAE2  C9 B8     CMP #$B8                        A:B8 X:02 Y:B2 P:A5 SP:F9 PPU:166,115 CYC:18907
FAE4  F0 02     BEQ $FAE8                       A:B8 X:02 Y:B2 P:27 SP:F9 PPU:166,121 CYC:18909
FAE8  60        RTS                             A:B8 X:02 Y:B2 P:27 SP:F9 PPU:166,130 CYC:18912
EC7C  AD 47 06  LDA $0647 = 38                  A:B8 X:02 Y:B2 P:27 SP:FB PPU:166,148 CYC:18918
EC7F  C9 38     CMP #$38                        A:38 X:02 Y:B2 P:25 SP:FB PPU:166,160 CYC:18922
EC81  F0 02     BEQ $EC85                       A:38 X:02 Y:B2 P:27 SP:FB PPU:166,166 CYC:18924
EC85  A9 EB     LDA #$EB                        A:38 X:02 Y:B2 P:27 SP:FB PPU:166,175 CYC:18927
EC87  8D 47 06  STA $0647 = 38                  A:EB X:02 Y:B2 P:A5 SP:FB PPU:166,181 CYC:18929
EC8A  A9 48     LDA #$48                        A:EB X:02 Y:B2 P:A5 SP:FB PPU:166,193 CYC:18933
EC8C  85 45     STA $45 = 48                    A:48 X:02 Y:B2 P:25 SP:FB PPU:166,199 CYC:18935
EC8E  A9 05     LDA #$05                        A:48 X:02 Y:B2 P:25 SP:FB PPU:166,208 CYC:18938
EC90  85 46     STA $46 = 05                    A:05 X:02 Y:B2 P:25 SP:FB PPU:166,214 CYC:18940
EC92  A0 FF     LDY #$FF                        A:05 X:02 Y:B2 P:25 SP:FB PPU:166,223 CYC:18943
EC94  20 B1 FA  JSR $FAB1                       A:05 X:02 Y:FF P:A5 SP:FB PPU:166,229 CYC:18945
FAB1  24 01     BIT $01 = FF                    A:05 X:02 Y:FF P:A5 SP:F9 PPU:166,247 CYC:18951
FAB3  18        CLC                             A:05 X:02 Y:FF P:E5 SP:F9 PPU:166,256 CYC:18954
FAB4  A9 40     LDA #$40                        A:05 X:02 Y:FF P:E4 SP:F9 PPU:166,262 CYC:18956
FAB6  60        RTS                             A:40 X:02 Y:FF P:64 SP:F9 PPU:166,268 CYC:18958
EC97  F3 45    *ISB ($45),Y = 0548 @ 0647 = EB  A:40 X:02 Y:FF P:64 SP:FB PPU:166,286 CYC:18964
EC99  EA        NOP                             A:53 X:02 Y:FF P:24 SP:FB PPU:166,310 CYC:18972
EC9A  EA        NOP                             A:53 X:02 Y:FF P:24 SP:FB PPU:166,316 CYC:18974
EC9B  08        PHP                             A:53 X:02 Y:FF P:24 SP:FB PPU:166,322 CYC:18976
EC9C  48        PHA                             A:53 X:02 Y:FF P:24 SP:FA PPU:166,331 CYC:18979
EC9D  A0 B3     LDY #$B3                        A:53 X:02 Y:FF P:24 SP:F9 PPU:166,340 CYC:18982
EC9F  68        PLA                             A:53 X:02 Y:B3 P:A4 SP:F9 PPU:167,  5 CYC:18984
ECA0  28        PLP                             A:53 X:02 Y:B3 P:24 SP:FA PPU:167, 17 CYC:18988
ECA1  20 B7 FA  JSR $FAB7                       A:53 X:02 Y:B3 P:24 SP:FB PPU:167, 29 CYC:18992
FAB7  70 2D     BVS $FAE6                       A:53 X:02 Y:B3 P:24 SP:F9 PPU:167, 47 CYC:18998
FAB9  B0 2B     BCS $FAE6                       A:53 X:02 Y:B3 P:24 SP:F9 PPU:167, 53 CYC:19000
FABB  30 29     BMI $FAE6                       A:53 X:02 Y:B3 P:24 SP:F9 PPU:167, 59 CYC:19002
FABD  C9 53     CMP #$53                        A:53 X:02 Y:B3 P:24 SP:F9 PPU:167, 65 CYC:19004
FABF  D0 25     BNE $FAE6                       A:53 X:02 Y:B3 P:27 SP:F9 PPU:167, 71 CYC:19006
FAC1  60        RTS                             A:53 X:02 Y:B3 P:27 SP:F9 PPU:167, 77 CYC:19008
ECA4  AD 47 06  LDA $0647 = EC                  A:53 X:02 Y:B3 P:27 SP:FB PPU:167, 95 CYC:19014
ECA7  C9 EC     CMP #$EC                        A:EC X:02 Y:B3 P:A5 SP:FB PPU:167,107 CYC:19018
ECA9  F0 02     BEQ $ECAD                       A:EC X:02 Y:B3 P:27 SP:FB PPU:167,113 CYC:19020
ECAD  A0 FF     LDY #$FF                        A:EC X:02 Y:B3 P:27 SP:FB PPU:167,122 CYC:19023
ECAF  A9 FF     LDA #$FF                        A:EC X:02 Y:FF P:A5 SP:FB PPU:167,128 CYC:19025
ECB1  8D 47 06  STA $0647 = EC                  A:FF X:02 Y:FF P:A5 SP:FB PPU:167,134 CYC:19027
ECB4  20 C2 FA  JSR $FAC2                       A:FF X:02 Y:FF P:A5 SP:FB PPU:167,146 CYC:19031
FAC2  B8        CLV                             A:FF X:02 Y:FF P:A5 SP:F9 PPU:167,164 CYC:19037
FAC3  38        SEC                             A:FF X:02 Y:FF P:A5 SP:F9 PPU:167,170 CYC:19039
FAC4  A9 FF     LDA #$FF                        A:FF X:02 Y:FF P:A5 SP:F9 PPU:167,176 CYC:19041
FAC6  60        RTS                             A:FF X:02 Y:FF P:A5 SP:F9 PPU:167,182 CYC:19043
ECB7  F3 45    *ISB ($45),Y = 0548 @ 0647 = FF  A:FF X:02 Y:FF P:A5 SP:FB PPU:167,200 CYC:19049
ECB9  EA        NOP                             A:FF X:02 Y:FF P:A5 SP:FB PPU:167,224 CYC:19057
ECBA  EA        NOP                             A:FF X:02 Y:FF P:A5 SP:FB PPU:167,230 CYC:19059
ECBB  08        PHP                             A:FF X:02 Y:FF P:A5 SP:FB PPU:167,236 CYC:19061
ECBC  48        PHA                             A:FF X:02 Y:FF P:A5 SP:FA PPU:167,245 CYC:19064
ECBD  A0 B4     LDY #$B4                        A:FF X:02 Y:FF P:A5 SP:F9 PPU:167,254 CYC:19067
ECBF  68        PLA                             A:FF X:02 Y:B4 P:A5 SP:F9 PPU:167,260 CYC:19069
ECC0  28        PLP                             A:FF X:02 Y:B4 P:A5 SP:FA PPU:167,272 CYC:19073
ECC1  20 C7 FA  JSR $FAC7                       A:FF X:02 Y:B4 P:A5 SP:FB PPU:167,284 CYC:19077
FAC7  70 1D     BVS $FAE6                       A:FF X:02 Y:B4 P:A5 SP:F9 PPU:167,302 CYC:19083
FAC9  F0 1B     BEQ $FAE6                       A:FF X:02 Y:B4 P:A5 SP:F9 PPU:167,308 CYC:19085
FACB  10 19     BPL $FAE6                       A:FF X:02 Y:B4 P:A5 SP:F9 PPU:167,314 CYC:19087
FACD  90 17     BCC $FAE6                       A:FF X:02 Y:B4 P:A5 SP:F9 PPU:167,320 CYC:19089
FACF  C9 FF     CMP #$FF                        A:FF X:02 Y:B4 P:A5 SP:F9 PPU:167,326 CYC:19091
FAD1  D0 13     BNE $FAE6                       A:FF X:02 Y:B4 P:27 SP:F9 PPU:167,332 CYC:19093
FAD3  60        RTS                             A:FF X:02 Y:B4 P:27 SP:F9 PPU:167,338 CYC:19095
ECC4  AD 47 06  LDA $0647 = 00                  A:FF X:02 Y:B4 P:27 SP:FB PPU:168, 15 CYC:19101
ECC7  C9 00     CMP #$00                        A:00 X:02 Y:B4 P:27 SP:FB PPU:168, 27 CYC:19105
ECC9  F0 02     BEQ $ECCD                       A:00 X:02 Y:B4 P:27 SP:FB PPU:168, 33 CYC:19107
ECCD  A0 FF     LDY #$FF                        A:00 X:02 Y:B4 P:27 SP:FB PPU:168, 42 CYC:19110
ECCF  A9 37     LDA #$37                        A:00 X:02 Y:FF P:A5 SP:FB PPU:168, 48 CYC:19112
ECD1  8D 47 06  STA $0647 = 00                  A:37 X:02 Y:FF P:25 SP:FB PPU:168, 54 CYC:19114
ECD4  20 D4 FA  JSR $FAD4                       A:37 X:02 Y:FF P:25 SP:FB PPU:168, 66 CYC:19118
FAD4  24 01     BIT $01 = FF                    A:37 X:02 Y:FF P:25 SP:F9 PPU:168, 84 CYC:19124
FAD6  38        SEC                             A:37 X:02 Y:FF P:E5 SP:F9 PPU:168, 93 CYC:19127
FAD7  A9 F0     LDA #$F0                        A:37 X:02 Y:FF P:E5 SP:F9 PPU:168, 99 CYC:19129
FAD9  60        RTS                             A:F0 X:02 Y:FF P:E5 SP:F9 PPU:168,105 CYC:19131
ECD7  F3 45    *ISB ($45),Y = 0548 @ 0647 = 37  A:F0 X:02 Y:FF P:E5 SP:FB PPU:168,123 CYC:19137
ECD9  EA        NOP                             A:B8 X:02 Y:FF P:A5 SP:FB PPU:168,147 CYC:19145
ECDA  EA        NOP                             A:B8 X:02 Y:FF P:A5 SP:FB PPU:168,153 CYC:19147
ECDB  08        PHP                             A:B8 X:02 Y:FF P:A5 SP:FB PPU:168,159 CYC:19149
ECDC  48        PHA                             A:B8 X:02 Y:FF P:A5 SP:FA PPU:168,168 CYC:19152
ECDD  A0 B5     LDY #$B5                        A:B8 X:02 Y:FF P:A5 SP:F9 PPU:168,177 CYC:19155
ECDF  68        PLA                             A:B8 X:02 Y:B5 P:A5 SP:F9 PPU:168,183 CYC:19157
ECE0  28        PLP                             A:B8 X:02 Y:B5 P:A5 SP:FA PPU:168,195 CYC:19161
ECE1  20 DA FA  JSR $FADA                       A:B8 X:02 Y:B5 P:A5 SP:FB PPU:168,207 CYC:19165
FADA  70 0A     BVS $FAE6                       A:B8 X:02 Y:B5 P:A5 SP:F9 PPU:168,225 CYC:19171
FADC  F0 08     BEQ $FAE6                       A:B8 X:02 Y:B5 P:A5 SP:F9 PPU:168,231 CYC:19173
FADE  10 06     BPL $FAE6                       A:B8 X:02 Y:B5 P:A5 SP:F9 PPU:168,237 CYC:19175
FAE0  90 04     BCC $FAE6                       A:B8 X:02 Y:B5 P:A5 SP:F9 PPU:168,243 CYC:19177
FAE2  C9 B8     CMP #$B8                        A:B8 X:02 Y:B5 P:A5 SP:F9 PPU:168,249 CYC:19179
FAE4  F0 02     BEQ $FAE8                       A:B8 X:02 Y:B5 P:27 SP:F9 PPU:168,255 CYC:19181
FAE8  60        RTS                             A:B8 X:02 Y:B5 P:27 SP:F9 PPU:168,264 CYC:19184
ECE4  AD 47 06  LDA $0647 = 38                  A:B8 X:02 Y:B5 P:27 SP:FB PPU:168,282 CYC:19190
ECE7  C9 38     CMP #$38                        A:38 X:02 Y:B5 P:25 SP:FB PPU:168,294 CYC:19194
ECE9  F0 02     BEQ $ECED                       A:38 X:02 Y:B5 P:27 SP:FB PPU:168,300 CYC:19196
ECED  A0 B6     LDY #$B6                        A:38 X:02 Y:B5 P:27 SP:FB PPU:168,309 CYC:19199
ECEF  A2 FF     LDX #$FF                        A:38 X:02 Y:B6 P:A5 SP:FB PPU:168,315 CYC:19201
ECF1  A9 EB     LDA #$EB                        A:38 X:FF Y:B6 P:A5 SP:FB PPU:168,321 CYC:19203
ECF3  85 47     STA $47 = 38                    A:EB X:FF Y:B6 P:A5 SP:FB PPU:168,327 CYC:19205
ECF5  20 B1 FA  JSR $FAB1                       A:EB X:FF Y:B6 P:A5 SP:FB PPU:168,336 CYC:19208
FAB1  24 01     BIT $01 = FF                    A:EB X:FF Y:B6 P:A5 SP:F9 PPU:169, 13 CYC:19214
FAB3  18        CLC                             A:EB X:FF Y:B6 P:E5 SP:F9 PPU:169, 22 CYC:19217
FAB4  A9 40     LDA #$40                        A:EB X:FF Y:B6 P:E4 SP:F9 PPU:169, 28 CYC:19219
FAB6  60        RTS                             A:40 X:FF Y:B6 P:64 SP:F9 PPU:169, 34 CYC:19221
ECF8  F7 48    *ISB $48,X @ 47 = EB             A:40 X:FF Y:B6 P:64 SP:FB PPU:169, 52 CYC:19227
ECFA  EA        NOP                             A:53 X:FF Y:B6 P:24 SP:FB PPU:169, 70 CYC:19233
ECFB  EA        NOP                             A:53 X:FF Y:B6 P:24 SP:FB PPU:169, 76 CYC:19235
ECFC  EA        NOP                             A:53 X:FF Y:B6 P:24 SP:FB PPU:169, 82 CYC:19237
ECFD  EA        NOP                             A:53 X:FF Y:B6 P:24 SP:FB PPU:169, 88 CYC:19239
ECFE  20 B7 FA  JSR $FAB7                       A:53 X:FF Y:B6 P:24 SP:FB PPU:169, 94 CYC:19241
FAB7  70 2D     BVS $FAE6                       A:53 X:FF Y:B6 P:24 SP:F9 PPU:169,112 CYC:19247
FAB9  B0 2B     BCS $FAE6                       A:53 X:FF Y:B6 P:24 SP:F9 PPU:169,118 CYC:19249
FABB  30 29     BMI $FAE6                       A:53 X:FF Y:B6 P:24 SP:F9 PPU:169,124 CYC:19251
FABD  C9 53     CMP #$53                        A:53 X:FF Y:B6 P:24 SP:F9 PPU:169,130 CYC:19253
FABF  D0 25     BNE $FAE6                       A:53 X:FF Y:B6 P:27 SP:F9 PPU:169,136 CYC:19255
FAC1  60        RTS                             A:53 X:FF Y:B6 P:27 SP:F9 PPU:169,142 CYC:19257
ED01  A5 47     LDA $47 = EC                    A:53 X:FF Y:B6 P:27 SP:FB PPU:169,160 CYC:19263
ED03  C9 EC     CMP #$EC                        A:EC X:FF Y:B6 P:A5 SP:FB PPU:169,169 CYC:19266
ED05  F0 02     BEQ $ED09                       A:EC X:FF Y:B6 P:27 SP:FB PPU:169,175 CYC:19268
ED09  C8        INY                             A:EC X:FF Y:B6 P:27 SP:FB PPU:169,184 CYC:19271
ED0A  A9 FF     LDA #$FF                        A:EC X:FF Y:B7 P:A5 SP:FB PPU:169,190 CYC:19273
ED0C  85 47     STA $47 = EC                    A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,196 CYC:19275
ED0E  20 C2 FA  JSR $FAC2                       A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,205 CYC:19278
FAC2  B8        CLV                             A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,223 CYC:19284
FAC3  38        SEC                             A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,229 CYC:19286
FAC4  A9 FF     LDA #$FF                        A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,235 CYC:19288
FAC6  60        RTS                             A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,241 CYC:19290
ED11  F7 48    *ISB $48,X @ 47 = FF             A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,259 CYC:19296
ED13  EA        NOP                             A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,277 CYC:19302
ED14  EA        NOP                             A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,283 CYC:19304
ED15  EA        NOP                             A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,289 CYC:19306
ED16  EA        NOP                             A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,295 CYC:19308
ED17  20 C7 FA  JSR $FAC7                       A:FF X:FF Y:B7 P:A5 SP:FB PPU:169,301 CYC:19310
FAC7  70 1D     BVS $FAE6                       A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,319 CYC:19316
FAC9  F0 1B     BEQ $FAE6                       A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,325 CYC:19318
FACB  10 19     BPL $FAE6                       A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,331 CYC:19320
FACD  90 17     BCC $FAE6                       A:FF X:FF Y:B7 P:A5 SP:F9 PPU:169,337 CYC:19322
FACF  C9 FF     CMP #$FF                        A:FF X:FF Y:B7 P:A5 SP:F9 PPU:170,  2 CYC:19324
FAD1  D0 13     BNE $FAE6                       A:FF X:FF Y:B7 P:27 SP:F9 PPU:170,  8 CYC:19326
FAD3  60        RTS                             A:FF X:FF Y:B7 P:27 SP:F9 PPU:170, 14 CYC:19328
ED1A  A5 47     LDA $47 = 00                    A:FF X:FF Y:B7 P:27 SP:FB PPU:170, 32 CYC:19334
ED1C  C9 00     CMP #$00                        A:00 X:FF Y:B7 P:27 SP:FB PPU:170, 41 CYC:19337
ED1E  F0 02     BEQ $ED22                       A:00 X:FF Y:B7 P:27 SP:FB PPU:170, 47 CYC:19339
ED22  C8        INY                             A:00 X:FF Y:B7 P:27 SP:FB PPU:170, 56 CYC:19342
ED23  A9 37     LDA #$37                        A:00 X:FF Y:B8 P:A5 SP:FB PPU:170, 62 CYC:19344
ED25  85 47     STA $47 = 00                    A:37 X:FF Y:B8 P:25 SP:FB PPU:170, 68 CYC:19346
ED27  20 D4 FA  JSR $FAD4                       A:37 X:FF Y:B8 P:25 SP:FB PPU:170, 77 CYC:19349
FAD4  24 01     BIT $01 = FF                    A:37 X:FF Y:B8 P:25 SP:F9 PPU:170, 95 CYC:19355
FAD6  38        SEC                             A:37 X:FF Y:B8 P:E5 SP:F9 PPU:170,104 CYC:19358
FAD7  A9 F0     LDA #$F0                        A:37 X:FF Y:B8 P:E5 SP:F9 PPU:170,110 CYC:19360
FAD9  60        RTS                             A:F0 X:FF Y:B8 P:E5 SP:F9 PPU:170,116 CYC:19362
ED2A  F7 48    *ISB $48,X @ 47 = 37             A:F0 X:FF Y:B8 P:E5 SP:FB PPU:170,134 CYC:19368
ED2C  EA        NOP                             A:B8 X:FF Y:B8 P:A5 SP:FB PPU:170,152 CYC:19374
ED2D  EA        NOP                             A:B8 X:FF Y:B8 P:A5 SP:FB PPU:170,158 CYC:19376
ED2E  EA        NOP                             A:B8 X:FF Y:B8 P:A5 SP:FB PPU:170,164 CYC:19378
ED2F  EA        NOP                             A:B8 X:FF Y:B8 P:A5 SP:FB PPU:170,170 CYC:19380
ED30  20 DA FA  JSR $FADA                       A:B8 X:FF Y:B8 P:A5 SP:FB PPU:170,176 CYC:19382
FADA  70 0A     BVS $FAE6                       A:B8 X:FF Y:B8 P:A5 SP:F9 PPU:170,194 CYC:19388
FADC  F0 08     BEQ $FAE6                       A:B8 X:FF Y:B8 P:A5 SP:F9 PPU:170,200 CYC:19390
FADE  10 06     BPL $FAE6                       A:B8 X:FF Y:B8 P:A5 SP:F9 PPU:170,206 CYC:19392
FAE0  90 04     BCC $FAE6                       A:B8 X:FF Y:B8 P:A5 SP:F9 PPU:170,212 CYC:19394
FAE2  C9 B8     CMP #$B8                        A:B8 X:FF Y:B8 P:A5 SP:F9 PPU:170,218 CYC:19396
FAE4  F0 02     BEQ $FAE8                       A:B8 X:FF Y:B8 P:27 SP:F9 PPU:170,224 CYC:19398
FAE8  60        RTS                             A:B8 X:FF Y:B8 P:27 SP:F9 PPU:170,233 CYC:19401
ED33  A5 47     LDA $47 = 38                    A:B8 X:FF Y:B8 P:27 SP:FB PPU:170,251 CYC:19407
ED35  C9 38     CMP #$38                        A:38 X:FF Y:B8 P:25 SP:FB PPU:170,260 CYC:19410
ED37  F0 02     BEQ $ED3B                       A:38 X:FF Y:B8 P:27 SP:FB PPU:170,266 CYC:19412
ED3B  A9 EB     LDA #$EB                        A:38 X:FF Y:B8 P:27 SP:FB PPU:170,275 CYC:19415
ED3D  8D 47 06  STA $0647 = 38                  A:EB X:FF Y:B8 P:A5 SP:FB PPU:170,281 CYC:19417
ED40  A0 FF     LDY #$FF                        A:EB X:FF Y:B8 P:A5 SP:FB PPU:170,293 CYC:19421
ED42  20 B1 FA  JSR $FAB1                       A:EB X:FF Y:FF P:A5 SP:FB PPU:170,299 CYC:19423
FAB1  24 01     BIT $01 = FF                    A:EB X:FF Y:FF P:A5 SP:F9 PPU:170,317 CYC:19429
FAB3  18        CLC                             A:EB X:FF Y:FF P:E5 SP:F9 PPU:170,326 CYC:19432
FAB4  A9 40     LDA #$40                        A:EB X:FF Y:FF P:E4 SP:F9 PPU:170,332 CYC:19434
FAB6  60        RTS                             A:40 X:FF Y:FF P:64 SP:F9 PPU:170,338 CYC:19436
ED45  FB 48 05 *ISB $0548,Y @ 0647 = EB         A:40 X:FF Y:FF P:64 SP:FB PPU:171, 15 CYC:19442
ED48  EA        NOP                             A:53 X:FF Y:FF P:24 SP:FB PPU:171, 36 CYC:19449
ED49  EA        NOP                             A:53 X:FF Y:FF P:24 SP:FB PPU:171, 42 CYC:19451
ED4A  08        PHP                             A:53 X:FF Y:FF P:24 SP:FB PPU:171, 48 CYC:19453
ED4B  48        PHA                             A:53 X:FF Y:FF P:24 SP:FA PPU:171, 57 CYC:19456
ED4C  A0 B9     LDY #$B9                        A:53 X:FF Y:FF P:24 SP:F9 PPU:171, 66 CYC:19459
ED4E  68        PLA                             A:53 X:FF Y:B9 P:A4 SP:F9 PPU:171, 72 CYC:19461
ED4F  28        PLP                             A:53 X:FF Y:B9 P:24 SP:FA PPU:171, 84 CYC:19465
ED50  20 B7 FA  JSR $FAB7                       A:53 X:FF Y:B9 P:24 SP:FB PPU:171, 96 CYC:19469
FAB7  70 2D     BVS $FAE6                       A:53 X:FF Y:B9 P:24 SP:F9 PPU:171,114 CYC:19475
FAB9  B0 2B     BCS $FAE6                       A:53 X:FF Y:B9 P:24 SP:F9 PPU:171,120 CYC:19477
FABB  30 29     BMI $FAE6                       A:53 X:FF Y:B9 P:24 SP:F9 PPU:171,126 CYC:19479
FABD  C9 53     CMP #$53                        A:53 X:FF Y:B9 P:24 SP:F9 PPU:171,132 CYC:19481
FABF  D0 25     BNE $FAE6                       A:53 X:FF Y:B9 P:27 SP:F9 PPU:171,138 CYC:19483
FAC1  60        RTS                             A:53 X:FF Y:B9 P:27 SP:F9 PPU:171,144 CYC:19485
ED53  AD 47 06  LDA $0647 = EC                  A:53 X:FF Y:B9 P:27 SP:FB PPU:171,162 CYC:19491
ED56  C9 EC     CMP #$EC                        A:EC X:FF Y:B9 P:A5 SP:FB PPU:171,174 CYC:19495
ED58  F0 02     BEQ $ED5C                       A:EC X:FF Y:B9 P:27 SP:FB PPU:171,180 CYC:19497
ED5C  A0 FF     LDY #$FF                        A:EC X:FF Y:B9 P:27 SP:FB PPU:171,189 CYC:19500
ED5E  A9 FF     LDA #$FF                        A:EC X:FF Y:FF P:A5 SP:FB PPU:171,195 CYC:19502
ED60  8D 47 06  STA $0647 = EC                  A:FF X:FF Y:FF P:A5 SP:FB PPU:171,201 CYC:19504
ED63  20 C2 FA  JSR $FAC2                       A:FF X:FF Y:FF P:A5 SP:FB PPU:171,213 CYC:19508
FAC2  B8        CLV                             A:FF X:FF Y:FF P:A5 SP:F9 PPU:171,231 CYC:19514
FAC3  38        SEC                             A:FF X:FF Y:FF P:A5 SP:F9 PPU:171,237 CYC:19516
FAC4  A9 FF     LDA #$FF                        A:FF X:FF Y:FF P:A5 SP:F9 PPU:171,243 CYC:19518
FAC6  60        RTS                             A:FF X:FF Y:FF P:A5 SP:F9 PPU:171,249 CYC:19520
ED66  FB 48 05 *ISB $0548,Y @ 0647 = FF         A:FF X:FF Y:FF P:A5 SP:FB PPU:171,267 CYC:19526
ED69  EA        NOP                             A:FF X:FF Y:FF P:A5 SP:FB PPU:171,288 CYC:19533
ED6A  EA        NOP                             A:FF X:FF Y:FF P:A5 SP:FB PPU:171,294 CYC:19535
ED6B  08        PHP                             A:FF X:FF Y:FF P:A5 SP:FB PPU:171,300 CYC:19537
ED6C  48        PHA                             A:FF X:FF Y:FF P:A5 SP:FA PPU:171,309 CYC:19540
ED6D  A0 BA     LDY #$BA                        A:FF X:FF Y:FF P:A5 SP:F9 PPU:171,318 CYC:19543
ED6F  68        PLA                             A:FF X:FF Y:BA P:A5 SP:F9 PPU:171,324 CYC:19545
ED70  28        PLP                             A:FF X:FF Y:BA P:A5 SP:FA PPU:171,336 CYC:19549
ED71  20 C7 FA  JSR $FAC7                       A:FF X:FF Y:BA P:A5 SP:FB PPU:172,  7 CYC:19553
FAC7  70 1D     BVS $FAE6                       A:FF X:FF Y:BA P:A5 SP:F9 PPU:172, 25 CYC:19559
FAC9  F0 1B     BEQ $FAE6                       A:FF X:FF Y:BA P:A5 SP:F9 PPU:172, 31 CYC:19561
FACB  10 19     BPL $FAE6                       A:FF X:FF Y:BA P:A5 SP:F9 PPU:172, 37 CYC:19563
FACD  90 17     BCC $FAE6                       A:FF X:FF Y:BA P:A5 SP:F9 PPU:172, 43 CYC:19565
FACF  C9 FF     CMP #$FF                        A:FF X:FF Y:BA P:A5 SP:F9 PPU:172, 49 CYC:19567
FAD1  D0 13     BNE $FAE6                       A:FF X:FF Y:BA P:27 SP:F9 PPU:172, 55 CYC:19569
FAD3  60        RTS                             A:FF X:FF Y:BA P:27 SP:F9 PPU:172, 61 CYC:19571
ED74  AD 47 06  LDA $0647 = 00                  A:FF X:FF Y:BA P:27 SP:FB PPU:172, 79 CYC:19577
ED77  C9 00     CMP #$00                        A:00 X:FF Y:BA P:27 SP:FB PPU:172, 91 CYC:19581
ED79  F0 02     BEQ $ED7D                       A:00 X:FF Y:BA P:27 SP:FB PPU:172, 97 CYC:19583
ED7D  A0 FF     LDY #$FF                        A:00 X:FF Y:BA P:27 SP:FB PPU:172,106 CYC:19586
ED7F  A9 37     LDA #$37                        A:00 X:FF Y:FF P:A5 SP:FB PPU:172,112 CYC:19588
ED81  8D 47 06  STA $0647 = 00                  A:37 X:FF Y:FF P:25 SP:FB PPU:172,118 CYC:19590
ED84  20 D4 FA  JSR $FAD4                       A:37 X:FF Y:FF P:25 SP:FB PPU:172,130 CYC:19594
FAD4  24 01     BIT $01 = FF                    A:37 X:FF Y:FF P:25 SP:F9 PPU:172,148 CYC:19600
FAD6  38        SEC                             A:37 X:FF Y:FF P:E5 SP:F9 PPU:172,157 CYC:19603
FAD7  A9 F0     LDA #$F0                        A:37 X:FF Y:FF P:E5 SP:F9 PPU:172,163 CYC:19605
FAD9  60        RTS                             A:F0 X:FF Y:FF P:E5 SP:F9 PPU:172,169 CYC:19607
ED87  FB 48 05 *ISB $0548,Y @ 0647 = 37         A:F0 X:FF Y:FF P:E5 SP:FB PPU:172,187 CYC:19613
ED8A  EA        NOP                             A:B8 X:FF Y:FF P:A5 SP:FB PPU:172,208 CYC:19620
ED8B  EA        NOP                             A:B8 X:FF Y:FF P:A5 SP:FB PPU:172,214 CYC:19622
ED8C  08        PHP                             A:B8 X:FF Y:FF P:A5 SP:FB PPU:172,220 CYC:19624
ED8D  48        PHA                             A:B8 X:FF Y:FF P:A5 SP:FA PPU:172,229 CYC:19627
ED8E  A0 BB     LDY #$BB                        A:B8 X:FF Y:FF P:A5 SP:F9 PPU:172,238 CYC:19630
ED90  68        PLA                             A:B8 X:FF Y:BB P:A5 SP:F9 PPU:172,244 CYC:19632
ED91  28        PLP                             A:B8 X:FF Y:BB P:A5 SP:FA PPU:172,256 CYC:19636
ED92  20 DA FA  JSR $FADA                       A:B8 X:FF Y:BB P:A5 SP:FB PPU:172,268 CYC:19640
FADA  70 0A     BVS $FAE6                       A:B8 X:FF Y:BB P:A5 SP:F9 PPU:172,286 CYC:19646
FADC  F0 08     BEQ $FAE6                       A:B8 X:FF Y:BB P:A5 SP:F9 PPU:172,292 CYC:19648
FADE  10 06     BPL $FAE6                       A:B8 X:FF Y:BB P:A5 SP:F9 PPU:172,298 CYC:19650
FAE0  90 04     BCC $FAE6                       A:B8 X:FF Y:BB P:A5 SP:F9 PPU:172,304 CYC:19652
FAE2  C9 B8     CMP #$B8                        A:B8 X:FF Y:BB P:A5 SP:F9 PPU:172,310 CYC:19654
FAE4  F0 02     BEQ $FAE8                       A:B8 X:FF Y:BB P:27 SP:F9 PPU:172,316 CYC:19656
FAE8  60        RTS                             A:B8 X:FF Y:BB P:27 SP:F9 PPU:172,325 CYC:19659
ED95  AD 47 06  LDA $0647 = 38                  A:B8 X:FF Y:BB P:27 SP:FB PPU:173,  2 CYC:19665
ED98  C9 38     CMP #$38                        A:38 X:FF Y:BB P:25 SP:FB PPU:173, 14 CYC:19669
ED9A  F0 02     BEQ $ED9E                       A:38 X:FF Y:BB P:27 SP:FB PPU:173, 20 CYC:19671
ED9E  A0 BC     LDY #$BC                        A:38 X:FF Y:BB P:27 SP:FB PPU:173, 29 CYC:19674
EDA0  A2 FF     LDX #$FF                        A:38 X:FF Y:BC P:A5 SP:FB PPU:173, 35 CYC:19676
EDA2  A9 EB     LDA #$EB                        A:38 X:FF Y:BC P:A5 SP:FB PPU:173, 41 CYC:19678
EDA4  8D 47 06  STA $0647 = 38                  A:EB X:FF Y:BC P:A5 SP:FB PPU:173, 47 CYC:19680
EDA7  20 B1 FA  JSR $FAB1                       A:EB X:FF Y:BC P:A5 SP:FB PPU:173, 59 CYC:19684
FAB1  24 01     BIT $01 = FF                    A:EB X:FF Y:BC P:A5 SP:F9 PPU:173, 77 CYC:19690
FAB3  18        CLC                             A:EB X:FF Y:BC P:E5 SP:F9 PPU:173, 86 CYC:19693
FAB4  A9 40     LDA #$40                        A:EB X:FF Y:BC P:E4 SP:F9 PPU:173, 92 CYC:19695
FAB6  60        RTS                             A:40 X:FF Y:BC P:64 SP:F9 PPU:173, 98 CYC:19697
EDAA  FF 48 05 *ISB $0548,X @ 0647 = EB         A:40 X:FF Y:BC P:64 SP:FB PPU:173,116 CYC:19703
EDAD  EA        NOP                             A:53 X:FF Y:BC P:24 SP:FB PPU:173,137 CYC:19710
EDAE  EA        NOP                             A:53 X:FF Y:BC P:24 SP:FB PPU:173,143 CYC:19712
EDAF  EA        NOP                             A:53 X:FF Y:BC P:24 SP:FB PPU:173,149 CYC:19714
EDB0  EA        NOP                             A:53 X:FF Y:BC P:24 SP:FB PPU:173,155 CYC:19716
EDB1  20 B7 FA  JSR $FAB7                       A:53 X:FF Y:BC P:24 SP:FB PPU:173,161 CYC:19718
FAB7  70 2D     BVS $FAE6                       A:53 X:FF Y:BC P:24 SP:F9 PPU:173,179 CYC:19724
FAB9  B0 2B     BCS $FAE6                       A:53 X:FF Y:BC P:24 SP:F9 PPU:173,185 CYC:19726
FABB  30 29     BMI $FAE6                       A:53 X:FF Y:BC P:24 SP:F9 PPU:173,191 CYC:19728
FABD  C9 53     CMP #$53                        A:53 X:FF Y:BC P:24 SP:F9 PPU:173,197 CYC:19730
FABF  D0 25     BNE $FAE6                       A:53 X:FF Y:BC P:27 SP:F9 PPU:173,203 CYC:19732
FAC1  60        RTS                             A:53 X:FF Y:BC P:27 SP:F9 PPU:173,209 CYC:19734
EDB4  AD 47 06  LDA $0647 = EC                  A:53 X:FF Y:BC P:27 SP:FB PPU:173,227 CYC:19740
EDB7  C9 EC     CMP #$EC                        A:EC X:FF Y:BC P:A5 SP:FB PPU:173,239 CYC:19744
EDB9  F0 02     BEQ $EDBD                       A:EC X:FF Y:BC P:27 SP:FB PPU:173,245 CYC:19746
EDBD  C8        INY                             A:EC X:FF Y:BC P:27 SP:FB PPU:173,254 CYC:19749
EDBE  A9 FF     LDA #$FF                        A:EC X:FF Y:BD P:A5 SP:FB PPU:173,260 CYC:19751
EDC0  8D 47 06  STA $0647 = EC                  A:FF X:FF Y:BD P:A5 SP:FB PPU:173,266 CYC:19753
EDC3  20 C2 FA  JSR $FAC2                       A:FF X:FF Y:BD P:A5 SP:FB PPU:173,278 CYC:19757
FAC2  B8        CLV                             A:FF X:FF Y:BD P:A5 SP:F9 PPU:173,296 CYC:19763
FAC3  38        SEC                             A:FF X:FF Y:BD P:A5 SP:F9 PPU:173,302 CYC:19765
FAC4  A9 FF     LDA #$FF                        A:FF X:FF Y:BD P:A5 SP:F9 PPU:173,308 CYC:19767
FAC6  60        RTS                             A:FF X:FF Y:BD P:A5 SP:F9 PPU:173,314 CYC:19769
EDC6  FF 48 05 *ISB $0548,X @ 0647 = FF         A:FF X:FF Y:BD P:A5 SP:FB PPU:173,332 CYC:19775
EDC9  EA        NOP                             A:FF X:FF Y:BD P:A5 SP:FB PPU:174, 12 CYC:19782
EDCA  EA        NOP                             A:FF X:FF Y:BD P:A5 SP:FB PPU:174, 18 CYC:19784
EDCB  EA        NOP                             A:FF X:FF Y:BD P:A5 SP:FB PPU:174, 24 CYC:19786
EDCC  EA        NOP                             A:FF X:FF Y:BD P:A5 SP:FB PPU:174, 30 CYC:19788
EDCD  20 C7 FA  JSR $FAC7                       A:FF X:FF Y:BD P:A5 SP:FB PPU:174, 36 CYC:19790
FAC7  70 1D     BVS $FAE6                       A:FF X:FF Y:BD P:A5 SP:F9 PPU:174, 54 CYC:19796
FAC9  F0 1B     BEQ $FAE6                       A:FF X:FF Y:BD P:A5 SP:F9 PPU:174, 60 CYC:19798
FACB  10 19     BPL $FAE6                       A:FF X:FF Y:BD P:A5 SP:F9 PPU:174, 66 CYC:19800
FACD  90 17     BCC $FAE6                       A:FF X:FF Y:BD P:A5 SP:F9 PPU:174, 72 CYC:19802
FACF  C9 FF     CMP #$FF                        A:FF X:FF Y:BD P:A5 SP:F9 PPU:174, 78 CYC:19804
FAD1  D0 13     BNE $FAE6                       A:FF X:FF Y:BD P:27 SP:F9 PPU:174, 84 CYC:19806
FAD3  60        RTS                             A:FF X:FF Y:BD P:27 SP:F9 PPU:174, 90 CYC:19808
EDD0  AD 47 06  LDA $0647 = 00                  A:FF X:FF Y:BD P:27 SP:FB PPU:174,108 CYC:19814
EDD3  C9 00     CMP #$00                        A:00 X:FF Y:BD P:27 SP:FB PPU:174,120 CYC:19818
EDD5  F0 02     BEQ $EDD9                       A:00 X:FF Y:BD P:27 SP:FB PPU:174,126 CYC:19820
EDD9  C8        INY                             A:00 X:FF Y:BD P:27 SP:FB PPU:174,135 CYC:19823
EDDA  A9 37     LDA #$37                        A:00 X:FF Y:BE P:A5 SP:FB PPU:174,141 CYC:19825
EDDC  8D 47 06  STA $0647 = 00                  A:37 X:FF Y:BE P:25 SP:FB PPU:174,147 CYC:19827
EDDF  20 D4 FA  JSR $FAD4                       A:37 X:FF Y:BE P:25 SP:FB PPU:174,159 CYC:19831
FAD4  24 01     BIT $01 = FF                    A:37 X:FF Y:BE P:25 SP:F9 PPU:174,177 CYC:19837
FAD6  38        SEC                             A:37 X:FF Y:BE P:E5 SP:F9 PPU:174,186 CYC:19840
FAD7  A9 F0     LDA #$F0                        A:37 X:FF Y:BE P:E5 SP:F9 PPU:174,192 CYC:19842
FAD9  60        RTS                             A:F0 X:FF Y:BE P:E5 SP:F9 PPU:174,198 CYC:19844
EDE2  FF 48 05 *ISB $0548,X @ 0647 = 37         A:F0 X:FF Y:BE P:E5 SP:FB PPU:174,216 CYC:19850
EDE5  EA        NOP                             A:B8 X:FF Y:BE P:A5 SP:FB PPU:174,237 CYC:19857
EDE6  EA        NOP                             A:B8 X:FF Y:BE P:A5 SP:FB PPU:174,243 CYC:19859
EDE7  EA        NOP                             A:B8 X:FF Y:BE P:A5 SP:FB PPU:174,249 CYC:19861
EDE8  EA        NOP                             A:B8 X:FF Y:BE P:A5 SP:FB PPU:174,255 CYC:19863
EDE9  20 DA FA  JSR $FADA                       A:B8 X:FF Y:BE P:A5 SP:FB PPU:174,261 CYC:19865
FADA  70 0A     BVS $FAE6                       A:B8 X:FF Y:BE P:A5 SP:F9 PPU:174,279 CYC:19871
FADC  F0 08     BEQ $FAE6                       A:B8 X:FF Y:BE P:A5 SP:F9 PPU:174,285 CYC:19873
FADE  10 06     BPL $FAE6                       A:B8 X:FF Y:BE P:A5 SP:F9 PPU:174,291 CYC:19875
FAE0  90 04     BCC $FAE6                       A:B8 X:FF Y:BE P:A5 SP:F9 PPU:174,297 CYC:19877
FAE2  C9 B8     CMP #$B8                        A:B8 X:FF Y:BE P:A5 SP:F9 PPU:174,303 CYC:19879
FAE4  F0 02     BEQ $FAE8                       A:B8 X:FF Y:BE P:27 SP:F9 PPU:174,309 CYC:19881
FAE8  60        RTS                             A:B8 X:FF Y:BE P:27 SP:F9 PPU:174,318 CYC:19884
EDEC  AD 47 06  LDA $0647 = 38                  A:B8 X:FF Y:BE P:27 SP:FB PPU:174,336 CYC:19890
EDEF  C9 38     CMP #$38                        A:38 X:FF Y:BE P:25 SP:FB PPU:175,  7 CYC:19894
EDF1  F0 02     BEQ $EDF5                       A:38 X:FF Y:BE P:27 SP:FB PPU:175, 13 CYC:19896
EDF5  60        RTS                             A:38 X:FF Y:BE P:27 SP:FB PPU:175, 22 CYC:19899
C641  20 F6 ED  JSR $EDF6                       A:38 X:FF Y:BE P:27 SP:FD PPU:175, 40 CYC:19905
EDF6  A9 FF     LDA #$FF                        A:38 X:FF Y:BE P:27 SP:FB PPU:175, 58 CYC:19911
EDF8  85 01     STA $01 = FF                    A:FF X:FF Y:BE P:A5 SP:FB PPU:175, 64 CYC:19913
EDFA  A0 BF     LDY #$BF                        A:FF X:FF Y:BE P:A5 SP:FB PPU:175, 73 CYC:19916
EDFC  A2 02     LDX #$02                        A:FF X:FF Y:BF P:A5 SP:FB PPU:175, 79 CYC:19918
EDFE  A9 47     LDA #$47                        A:FF X:02 Y:BF P:25 SP:FB PPU:175, 85 CYC:19920
EE00  85 47     STA $47 = 38                    A:47 X:02 Y:BF P:25 SP:FB PPU:175, 91 CYC:19922
EE02  A9 06     LDA #$06                        A:47 X:02 Y:BF P:25 SP:FB PPU:175,100 CYC:19925
EE04  85 48     STA $48 = 06                    A:06 X:02 Y:BF P:25 SP:FB PPU:175,106 CYC:19927
EE06  A9 A5     LDA #$A5                        A:06 X:02 Y:BF P:25 SP:FB PPU:175,115 CYC:19930
EE08  8D 47 06  STA $0647 = 38                  A:A5 X:02 Y:BF P:A5 SP:FB PPU:175,121 CYC:19932
EE0B  20 7B FA  JSR $FA7B                       A:A5 X:02 Y:BF P:A5 SP:FB PPU:175,133 CYC:19936
FA7B  24 01     BIT $01 = FF                    A:A5 X:02 Y:BF P:A5 SP:F9 PPU:175,151 CYC:19942
FA7D  18        CLC                             A:A5 X:02 Y:BF P:E5 SP:F9 PPU:175,160 CYC:19945
FA7E  A9 B3     LDA #$B3                        A:A5 X:02 Y:BF P:E4 SP:F9 PPU:175,166 CYC:19947
FA80  60        RTS                             A:B3 X:02 Y:BF P:E4 SP:F9 PPU:175,172 CYC:19949
EE0E  03 45    *SLO ($45,X) @ 47 = 0647 = A5    A:B3 X:02 Y:BF P:E4 SP:FB PPU:175,190 CYC:19955
EE10  EA        NOP                             A:FB X:02 Y:BF P:E5 SP:FB PPU:175,214 CYC:19963
EE11  EA        NOP                             A:FB X:02 Y:BF P:E5 SP:FB PPU:175,220 CYC:19965
EE12  EA        NOP                             A:FB X:02 Y:BF P:E5 SP:FB PPU:175,226 CYC:19967
EE13  EA        NOP                             A:FB X:02 Y:BF P:E5 SP:FB PPU:175,232 CYC:19969
EE14  20 81 FA  JSR $FA81                       A:FB X:02 Y:BF P:E5 SP:FB PPU:175,238 CYC:19971
FA81  50 63     BVC $FAE6                       A:FB X:02 Y:BF P:E5 SP:F9 PPU:175,256 CYC:19977
FA83  90 61     BCC $FAE6                       A:FB X:02 Y:BF P:E5 SP:F9 PPU:175,262 CYC:19979
FA85  10 5F     BPL $FAE6                       A:FB X:02 Y:BF P:E5 SP:F9 PPU:175,268 CYC:19981
FA87  C9 FB     CMP #$FB                        A:FB X:02 Y:BF P:E5 SP:F9 PPU:175,274 CYC:19983
FA89  D0 5B     BNE $FAE6                       A:FB X:02 Y:BF P:67 SP:F9 PPU:175,280 CYC:19985
FA8B  60        RTS                             A:FB X:02 Y:BF P:67 SP:F9 PPU:175,286 CYC:19987
EE17  AD 47 06  LDA $0647 = 4A                  A:FB X:02 Y:BF P:67 SP:FB PPU:175,304 CYC:19993
EE1A  C9 4A     CMP #$4A                        A:4A X:02 Y:BF P:65 SP:FB PPU:175,316 CYC:19997
EE1C  F0 02     BEQ $EE20                       A:4A X:02 Y:BF P:67 SP:FB PPU:175,322 CYC:19999
EE20  C8        INY                             A:4A X:02 Y:BF P:67 SP:FB PPU:175,331 CYC:20002
EE21  A9 29     LDA #$29                        A:4A X:02 Y:C0 P:E5 SP:FB PPU:175,337 CYC:20004
EE23  8D 47 06  STA $0647 = 4A                  A:29 X:02 Y:C0 P:65 SP:FB PPU:176,  2 CYC:20006
EE26  20 8C FA  JSR $FA8C                       A:29 X:02 Y:C0 P:65 SP:FB PPU:176, 14 CYC:20010
FA8C  B8        CLV                             A:29 X:02 Y:C0 P:65 SP:F9 PPU:176, 32 CYC:20016
FA8D  18        CLC                             A:29 X:02 Y:C0 P:25 SP:F9 PPU:176, 38 CYC:20018
FA8E  A9 C3     LDA #$C3                        A:29 X:02 Y:C0 P:24 SP:F9 PPU:176, 44 CYC:20020
FA90  60        RTS                             A:C3 X:02 Y:C0 P:A4 SP:F9 PPU:176, 50 CYC:20022
EE29  03 45    *SLO ($45,X) @ 47 = 0647 = 29    A:C3 X:02 Y:C0 P:A4 SP:FB PPU:176, 68 CYC:20028
EE2B  EA        NOP                             A:D3 X:02 Y:C0 P:A4 SP:FB PPU:176, 92 CYC:20036
EE2C  EA        NOP                             A:D3 X:02 Y:C0 P:A4 SP:FB PPU:176, 98 CYC:20038
EE2D  EA        NOP                             A:D3 X:02 Y:C0 P:A4 SP:FB PPU:176,104 CYC:20040
EE2E  EA        NOP                             A:D3 X:02 Y:C0 P:A4 SP:FB PPU:176,110 CYC:20042
EE2F  20 91 FA  JSR $FA91                       A:D3 X:02 Y:C0 P:A4 SP:FB PPU:176,116 CYC:20044
FA91  70 53     BVS $FAE6                       A:D3 X:02 Y:C0 P:A4 SP:F9 PPU:176,134 CYC:20050
FA93  F0 51     BEQ $FAE6                       A:D3 X:02 Y:C0 P:A4 SP:F9 PPU:176,140 CYC:20052
FA95  10 4F     BPL $FAE6                       A:D3 X:02 Y:C0 P:A4 SP:F9 PPU:176,146 CYC:20054
FA97  B0 4D     BCS $FAE6                       A:D3 X:02 Y:C0 P:A4 SP:F9 PPU:176,152 CYC:20056
FA99  C9 D3     CMP #$D3                        A:D3 X:02 Y:C0 P:A4 SP:F9 PPU:176,158 CYC:20058
FA9B  D0 49     BNE $FAE6                       A:D3 X:02 Y:C0 P:27 SP:F9 PPU:176,164 CYC:20060
FA9D  60        RTS                             A:D3 X:02 Y:C0 P:27 SP:F9 PPU:176,170 CYC:20062
EE32  AD 47 06  LDA $0647 = 52                  A:D3 X:02 Y:C0 P:27 SP:FB PPU:176,188 CYC:20068
EE35  C9 52     CMP #$52                        A:52 X:02 Y:C0 P:25 SP:FB PPU:176,200 CYC:20072
EE37  F0 02     BEQ $EE3B                       A:52 X:02 Y:C0 P:27 SP:FB PPU:176,206 CYC:20074
EE3B  C8        INY                             A:52 X:02 Y:C0 P:27 SP:FB PPU:176,215 CYC:20077
EE3C  A9 37     LDA #$37                        A:52 X:02 Y:C1 P:A5 SP:FB PPU:176,221 CYC:20079
EE3E  8D 47 06  STA $0647 = 52                  A:37 X:02 Y:C1 P:25 SP:FB PPU:176,227 CYC:20081
EE41  20 9E FA  JSR $FA9E                       A:37 X:02 Y:C1 P:25 SP:FB PPU:176,239 CYC:20085
FA9E  24 01     BIT $01 = FF                    A:37 X:02 Y:C1 P:25 SP:F9 PPU:176,257 CYC:20091
FAA0  38        SEC                             A:37 X:02 Y:C1 P:E5 SP:F9 PPU:176,266 CYC:20094
FAA1  A9 10     LDA #$10                        A:37 X:02 Y:C1 P:E5 SP:F9 PPU:176,272 CYC:20096
FAA3  60        RTS                             A:10 X:02 Y:C1 P:65 SP:F9 PPU:176,278 CYC:20098
EE44  03 45    *SLO ($45,X) @ 47 = 0647 = 37    A:10 X:02 Y:C1 P:65 SP:FB PPU:176,296 CYC:20104
EE46  EA        NOP                             A:7E X:02 Y:C1 P:64 SP:FB PPU:176,320 CYC:20112
EE47  EA        NOP                             A:7E X:02 Y:C1 P:64 SP:FB PPU:176,326 CYC:20114
EE48  EA        NOP                             A:7E X:02 Y:C1 P:64 SP:FB PPU:176,332 CYC:20116
EE49  EA        NOP                             A:7E X:02 Y:C1 P:64 SP:FB PPU:176,338 CYC:20118
EE4A  20 A4 FA  JSR $FAA4                       A:7E X:02 Y:C1 P:64 SP:FB PPU:177,  3 CYC:20120
FAA4  50 40     BVC $FAE6                       A:7E X:02 Y:C1 P:64 SP:F9 PPU:177, 21 CYC:20126
FAA6  F0 3E     BEQ $FAE6                       A:7E X:02 Y:C1 P:64 SP:F9 PPU:177, 27 CYC:20128
FAA8  30 3C     BMI $FAE6                       A:7E X:02 Y:C1 P:64 SP:F9 PPU:177, 33 CYC:20130
FAAA  B0 3A     BCS $FAE6                       A:7E X:02 Y:C1 P:64 SP:F9 PPU:177, 39 CYC:20132
FAAC  C9 7E     CMP #$7E                        A:7E X:02 Y:C1 P:64 SP:F9 PPU:177, 45 CYC:20134
FAAE  D0 36     BNE $FAE6                       A:7E X:02 Y:C1 P:67 SP:F9 PPU:177, 51 CYC:20136
FAB0  60        RTS                             A:7E X:02 Y:C1 P:67 SP:F9 PPU:177, 57 CYC:20138
EE4D  AD 47 06  LDA $0647 = 6E                  A:7E X:02 Y:C1 P:67 SP:FB PPU:177, 75 CYC:20144
EE50  C9 6E     CMP #$6E                        A:6E X:02 Y:C1 P:65 SP:FB PPU:177, 87 CYC:20148
EE52  F0 02     BEQ $EE56                       A:6E X:02 Y:C1 P:67 SP:FB PPU:177, 93 CYC:20150
EE56  C8        INY                             A:6E X:02 Y:C1 P:67 SP:FB PPU:177,102 CYC:20153
EE57  A9 A5     LDA #$A5                        A:6E X:02 Y:C2 P:E5 SP:FB PPU:177,108 CYC:20155
EE59  85 47     STA $47 = 47                    A:A5 X:02 Y:C2 P:E5 SP:FB PPU:177,114 CYC:20157
EE5B  20 7B FA  JSR $FA7B                       A:A5 X:02 Y:C2 P:E5 SP:FB PPU:177,123 CYC:20160
FA7B  24 01     BIT $01 = FF                    A:A5 X:02 Y:C2 P:E5 SP:F9 PPU:177,141 CYC:20166
FA7D  18        CLC                             A:A5 X:02 Y:C2 P:E5 SP:F9 PPU:177,150 CYC:20169
FA7E  A9 B3     LDA #$B3                        A:A5 X:02 Y:C2 P:E4 SP:F9 PPU:177,156 CYC:20171
FA80  60        RTS                             A:B3 X:02 Y:C2 P:E4 SP:F9 PPU:177,162 CYC:20173
EE5E  07 47    *SLO $47 = A5                    A:B3 X:02 Y:C2 P:E4 SP:FB PPU:177,180 CYC:20179
EE60  EA        NOP                             A:FB X:02 Y:C2 P:E5 SP:FB PPU:177,195 CYC:20184
EE61  EA        NOP                             A:FB X:02 Y:C2 P:E5 SP:FB PPU:177,201 CYC:20186
EE62  EA        NOP                             A:FB X:02 Y:C2 P:E5 SP:FB PPU:177,207 CYC:20188
EE63  EA        NOP                             A:FB X:02 Y:C2 P:E5 SP:FB PPU:177,213 CYC:20190
EE64  20 81 FA  JSR $FA81                       A:FB X:02 Y:C2 P:E5 SP:FB PPU:177,219 CYC:20192
FA81  50 63     BVC $FAE6                       A:FB X:02 Y:C2 P:E5 SP:F9 PPU:177,237 CYC:20198
FA83  90 61     BCC $FAE6                       A:FB X:02 Y:C2 P:E5 SP:F9 PPU:177,243 CYC:20200
FA85  10 5F     BPL $FAE6                       A:FB X:02 Y:C2 P:E5 SP:F9 PPU:177,249 CYC:20202
FA87  C9 FB     CMP #$FB                        A:FB X:02 Y:C2 P:E5 SP:F9 PPU:177,255 CYC:20204
FA89  D0 5B     BNE $FAE6                       A:FB X:02 Y:C2 P:67 SP:F9 PPU:177,261 CYC:20206
FA8B  60        RTS                             A:FB X:02 Y:C2 P:67 SP:F9 PPU:177,267 CYC:20208
EE67  A5 47     LDA $47 = 4A                    A:FB X:02 Y:C2 P:67 SP:FB PPU:177,285 CYC:20214
EE69  C9 4A     CMP #$4A                        A:4A X:02 Y:C2 P:65 SP:FB PPU:177,294 CYC:20217
EE6B  F0 02     BEQ $EE6F                       A:4A X:02 Y:C2 P:67 SP:FB PPU:177,300 CYC:20219
EE6F  C8        INY                             A:4A X:02 Y:C2 P:67 SP:FB PPU:177,309 CYC:20222
EE70  A9 29     LDA #$29                        A:4A X:02 Y:C3 P:E5 SP:FB PPU:177,315 CYC:20224
EE72  85 47     STA $47 = 4A                    A:29 X:02 Y:C3 P:65 SP:FB PPU:177,321 CYC:20226
EE74  20 8C FA  JSR $FA8C                       A:29 X:02 Y:C3 P:65 SP:FB PPU:177,330 CYC:20229
FA8C  B8        CLV                             A:29 X:02 Y:C3 P:65 SP:F9 PPU:178,  7 CYC:20235
FA8D  18        CLC                             A:29 X:02 Y:C3 P:25 SP:F9 PPU:178, 13 CYC:20237
FA8E  A9 C3     LDA #$C3                        A:29 X:02 Y:C3 P:24 SP:F9 PPU:178, 19 CYC:20239
FA90  60        RTS                             A:C3 X:02 Y:C3 P:A4 SP:F9 PPU:178, 25 CYC:20241
EE77  07 47    *SLO $47 = 29                    A:C3 X:02 Y:C3 P:A4 SP:FB PPU:178, 43 CYC:20247
EE79  EA        NOP                             A:D3 X:02 Y:C3 P:A4 SP:FB PPU:178, 58 CYC:20252
EE7A  EA        NOP                             A:D3 X:02 Y:C3 P:A4 SP:FB PPU:178, 64 CYC:20254
EE7B  EA        NOP                             A:D3 X:02 Y:C3 P:A4 SP:FB PPU:178, 70 CYC:20256
EE7C  EA        NOP                             A:D3 X:02 Y:C3 P:A4 SP:FB PPU:178, 76 CYC:20258
EE7D  20 91 FA  JSR $FA91                       A:D3 X:02 Y:C3 P:A4 SP:FB PPU:178, 82 CYC:20260
FA91  70 53     BVS $FAE6                       A:D3 X:02 Y:C3 P:A4 SP:F9 PPU:178,100 CYC:20266
FA93  F0 51     BEQ $FAE6                       A:D3 X:02 Y:C3 P:A4 SP:F9 PPU:178,106 CYC:20268
FA95  10 4F     BPL $FAE6                       A:D3 X:02 Y:C3 P:A4 SP:F9 PPU:178,112 CYC:20270
FA97  B0 4D     BCS $FAE6                       A:D3 X:02 Y:C3 P:A4 SP:F9 PPU:178,118 CYC:20272
FA99  C9 D3     CMP #$D3                        A:D3 X:02 Y:C3 P:A4 SP:F9 PPU:178,124 CYC:20274
FA9B  D0 49     BNE $FAE6                       A:D3 X:02 Y:C3 P:27 SP:F9 PPU:178,130 CYC:20276
FA9D  60        RTS                             A:D3 X:02 Y:C3 P:27 SP:F9 PPU:178,136 CYC:20278
EE80  A5 47     LDA $47 = 52                    A:D3 X:02 Y:C3 P:27 SP:FB PPU:178,154 CYC:20284
EE82  C9 52     CMP #$52                        A:52 X:02 Y:C3 P:25 SP:FB PPU:178,163 CYC:20287
EE84  F0 02     BEQ $EE88                       A:52 X:02 Y:C3 P:27 SP:FB PPU:178,169 CYC:20289
EE88  C8        INY                             A:52 X:02 Y:C3 P:27 SP:FB PPU:178,178 CYC:20292
EE89  A9 37     LDA #$37                        A:52 X:02 Y:C4 P:A5 SP:FB PPU:178,184 CYC:20294
EE8B  85 47     STA $47 = 52                    A:37 X:02 Y:C4 P:25 SP:FB PPU:178,190 CYC:20296
EE8D  20 9E FA  JSR $FA9E                       A:37 X:02 Y:C4 P:25 SP:FB PPU:178,199 CYC:20299
FA9E  24 01     BIT $01 = FF                    A:37 X:02 Y:C4 P:25 SP:F9 PPU:178,217 CYC:20305
FAA0  38        SEC                             A:37 X:02 Y:C4 P:E5 SP:F9 PPU:178,226 CYC:20308
FAA1  A9 10     LDA #$10                        A:37 X:02 Y:C4 P:E5 SP:F9 PPU:178,232 CYC:20310
FAA3  60        RTS                             A:10 X:02 Y:C4 P:65 SP:F9 PPU:178,238 CYC:20312
EE90  07 47    *SLO $47 = 37                    A:10 X:02 Y:C4 P:65 SP:FB PPU:178,256 CYC:20318
EE92  EA        NOP                             A:7E X:02 Y:C4 P:64 SP:FB PPU:178,271 CYC:20323
EE93  EA        NOP                             A:7E X:02 Y:C4 P:64 SP:FB PPU:178,277 CYC:20325
EE94  EA        NOP                             A:7E X:02 Y:C4 P:64 SP:FB PPU:178,283 CYC:20327
EE95  EA        NOP                             A:7E X:02 Y:C4 P:64 SP:FB PPU:178,289 CYC:20329
EE96  20 A4 FA  JSR $FAA4                       A:7E X:02 Y:C4 P:64 SP:FB PPU:178,295 CYC:20331
FAA4  50 40     BVC $FAE6                       A:7E X:02 Y:C4 P:64 SP:F9 PPU:178,313 CYC:20337
FAA6  F0 3E     BEQ $FAE6                       A:7E X:02 Y:C4 P:64 SP:F9 PPU:178,319 CYC:20339
FAA8  30 3C     BMI $FAE6                       A:7E X:02 Y:C4 P:64 SP:F9 PPU:178,325 CYC:20341
FAAA  B0 3A     BCS $FAE6                       A:7E X:02 Y:C4 P:64 SP:F9 PPU:178,331 CYC:20343
FAAC  C9 7E     CMP #$7E                        A:7E X:02 Y:C4 P:64 SP:F9 PPU:178,337 CYC:20345
FAAE  D0 36     BNE $FAE6                       A:7E X:02 Y:C4 P:67 SP:F9 PPU:179,  2 CYC:20347
FAB0  60        RTS                             A:7E X:02 Y:C4 P:67 SP:F9 PPU:179,  8 CYC:20349
EE99  A5 47     LDA $47 = 6E                    A:7E X:02 Y:C4 P:67 SP:FB PPU:179, 26 CYC:20355
EE9B  C9 6E     CMP #$6E                        A:6E X:02 Y:C4 P:65 SP:FB PPU:179, 35 CYC:20358
EE9D  F0 02     BEQ $EEA1                       A:6E X:02 Y:C4 P:67 SP:FB PPU:179, 41 CYC:20360
EEA1  C8        INY                             A:6E X:02 Y:C4 P:67 SP:FB PPU:179, 50 CYC:20363
EEA2  A9 A5     LDA #$A5                        A:6E X:02 Y:C5 P:E5 SP:FB PPU:179, 56 CYC:20365
EEA4  8D 47 06  STA $0647 = 6E                  A:A5 X:02 Y:C5 P:E5 SP:FB PPU:179, 62 CYC:20367
EEA7  20 7B FA  JSR $FA7B                       A:A5 X:02 Y:C5 P:E5 SP:FB PPU:179, 74 CYC:20371
FA7B  24 01     BIT $01 = FF                    A:A5 X:02 Y:C5 P:E5 SP:F9 PPU:179, 92 CYC:20377
FA7D  18        CLC                             A:A5 X:02 Y:C5 P:E5 SP:F9 PPU:179,101 CYC:20380
FA7E  A9 B3     LDA #$B3                        A:A5 X:02 Y:C5 P:E4 SP:F9 PPU:179,107 CYC:20382
FA80  60        RTS                             A:B3 X:02 Y:C5 P:E4 SP:F9 PPU:179,113 CYC:20384
EEAA  0F 47 06 *SLO $0647 = A5                  A:B3 X:02 Y:C5 P:E4 SP:FB PPU:179,131 CYC:20390
EEAD  EA        NOP                             A:FB X:02 Y:C5 P:E5 SP:FB PPU:179,149 CYC:20396
EEAE  EA        NOP                             A:FB X:02 Y:C5 P:E5 SP:FB PPU:179,155 CYC:20398
EEAF  EA        NOP                             A:FB X:02 Y:C5 P:E5 SP:FB PPU:179,161 CYC:20400
EEB0  EA        NOP                             A:FB X:02 Y:C5 P:E5 SP:FB PPU:179,167 CYC:20402
EEB1  20 81 FA  JSR $FA81                       A:FB X:02 Y:C5 P:E5 SP:FB PPU:179,173 CYC:20404
FA81  50 63     BVC $FAE6                       A:FB X:02 Y:C5 P:E5 SP:F9 PPU:179,191 CYC:20410
FA83  90 61     BCC $FAE6                       A:FB X:02 Y:C5 P:E5 SP:F9 PPU:179,197 CYC:20412
FA85  10 5F     BPL $FAE6                       A:FB X:02 Y:C5 P:E5 SP:F9 PPU:179,203 CYC:20414
FA87  C9 FB     CMP #$FB                        A:FB X:02 Y:C5 P:E5 SP:F9 PPU:179,209 CYC:20416
FA89  D0 5B     BNE $FAE6                       A:FB X:02 Y:C5 P:67 SP:F9 PPU:179,215 CYC:20418
FA8B  60        RTS                             A:FB X:02 Y:C5 P:67 SP:F9 PPU:179,221 CYC:20420
EEB4  AD 47 06  LDA $0647 = 4A                  A:FB X:02 Y:C5 P:67 SP:FB PPU:179,239 CYC:20426
EEB7  C9 4A     CMP #$4A                        A:4A X:02 Y:C5 P:65 SP:FB PPU:179,251 CYC:20430
EEB9  F0 02     BEQ $EEBD                       A:4A X:02 Y:C5 P:67 SP:FB PPU:179,257 CYC:20432
EEBD  C8        INY                             A:4A X:02 Y:C5 P:67 SP:FB PPU:179,266 CYC:20435
EEBE  A9 29     LDA #$29                        A:4A X:02 Y:C6 P:E5 SP:FB PPU:179,272 CYC:20437
EEC0  8D 47 06  STA $0647 = 4A                  A:29 X:02 Y:C6 P:65 SP:FB PPU:179,278 CYC:20439
EEC3  20 8C FA  JSR $FA8C                       A:29 X:02 Y:C6 P:65 SP:FB PPU:179,290 CYC:20443
FA8C  B8        CLV                             A:29 X:02 Y:C6 P:65 SP:F9 PPU:179,308 CYC:20449
FA8D  18        CLC                             A:29 X:02 Y:C6 P:25 SP:F9 PPU:179,314 CYC:20451
FA8E  A9 C3     LDA #$C3                        A:29 X:02 Y:C6 P:24 SP:F9 PPU:179,320 CYC:20453
FA90  60        RTS                             A:C3 X:02 Y:C6 P:A4 SP:F9 PPU:179,326 CYC:20455
EEC6  0F 47 06 *SLO $0647 = 29                  A:C3 X:02 Y:C6 P:A4 SP:FB PPU:180,  3 CYC:20461
EEC9  EA        NOP                             A:D3 X:02 Y:C6 P:A4 SP:FB PPU:180, 21 CYC:20467
EECA  EA        NOP                             A:D3 X:02 Y:C6 P:A4 SP:FB PPU:180, 27 CYC:20469
EECB  EA        NOP                             A:D3 X:02 Y:C6 P:A4 SP:FB PPU:180, 33 CYC:20471
EECC  EA        NOP                             A:D3 X:02 Y:C6 P:A4 SP:FB PPU:180, 39 CYC:20473
EECD  20 91 FA  JSR $FA91                       A:D3 X:02 Y:C6 P:A4 SP:FB PPU:180, 45 CYC:20475
FA91  70 53     BVS $FAE6                       A:D3 X:02 Y:C6 P:A4 SP:F9 PPU:180, 63 CYC:20481
FA93  F0 51     BEQ $FAE6                       A:D3 X:02 Y:C6 P:A4 SP:F9 PPU:180, 69 CYC:20483
FA95  10 4F     BPL $FAE6                       A:D3 X:02 Y:C6 P:A4 SP:F9 PPU:180, 75 CYC:20485
FA97  B0 4D     BCS $FAE6                       A:D3 X:02 Y:C6 P:A4 SP:F9 PPU:180, 81 CYC:20487
FA99  C9 D3     CMP #$D3                        A:D3 X:02 Y:C6 P:A4 SP:F9 PPU:180, 87 CYC:20489
FA9B  D0 49     BNE $FAE6                       A:D3 X:02 Y:C6 P:27 SP:F9 PPU:180, 93 CYC:20491
FA9D  60        RTS                             A:D3 X:02 Y:C6 P:27 SP:F9 PPU:180, 99 CYC:20493
EED0  AD 47 06  LDA $0647 = 52                  A:D3 X:02 Y:C6 P:27 SP:FB PPU:180,117 CYC:20499
EED3  C9 52     CMP #$52                        A:52 X:02 Y:C6 P:25 SP:FB PPU:180,129 CYC:20503
EED5  F0 02     BEQ $EED9                       A:52 X:02 Y:C6 P:27 SP:FB PPU:180,135 CYC:20505
EED9  C8        INY                             A:52 X:02 Y:C6 P:27 SP:FB PPU:180,144 CYC:20508
EEDA  A9 37     LDA #$37                        A:52 X:02 Y:C7 P:A5 SP:FB PPU:180,150 CYC:20510
EEDC  8D 47 06  STA $0647 = 52                  A:37 X:02 Y:C7 P:25 SP:FB PPU:180,156 CYC:20512
EEDF  20 9E FA  JSR $FA9E                       A:37 X:02 Y:C7 P:25 SP:FB PPU:180,168 CYC:20516
FA9E  24 01     BIT $01 = FF                    A:37 X:02 Y:C7 P:25 SP:F9 PPU:180,186 CYC:20522
FAA0  38        SEC                             A:37 X:02 Y:C7 P:E5 SP:F9 PPU:180,195 CYC:20525
FAA1  A9 10     LDA #$10                        A:37 X:02 Y:C7 P:E5 SP:F9 PPU:180,201 CYC:20527
FAA3  60        RTS                             A:10 X:02 Y:C7 P:65 SP:F9 PPU:180,207 CYC:20529
EEE2  0F 47 06 *SLO $0647 = 37                  A:10 X:02 Y:C7 P:65 SP:FB PPU:180,225 CYC:20535
EEE5  EA        NOP                             A:7E X:02 Y:C7 P:64 SP:FB PPU:180,243 CYC:20541
EEE6  EA        NOP                             A:7E X:02 Y:C7 P:64 SP:FB PPU:180,249 CYC:20543
EEE7  EA        NOP                             A:7E X:02 Y:C7 P:64 SP:FB PPU:180,255 CYC:20545
EEE8  EA        NOP                             A:7E X:02 Y:C7 P:64 SP:FB PPU:180,261 CYC:20547
EEE9  20 A4 FA  JSR $FAA4                       A:7E X:02 Y:C7 P:64 SP:FB PPU:180,267 CYC:20549
FAA4  50 40     BVC $FAE6                       A:7E X:02 Y:C7 P:64 SP:F9 PPU:180,285 CYC:20555
FAA6  F0 3E     BEQ $FAE6                       A:7E X:02 Y:C7 P:64 SP:F9 PPU:180,291 CYC:20557
FAA8  30 3C     BMI $FAE6                       A:7E X:02 Y:C7 P:64 SP:F9 PPU:180,297 CYC:20559
FAAA  B0 3A     BCS $FAE6                       A:7E X:02 Y:C7 P:64 SP:F9 PPU:180,303 CYC:20561
FAAC  C9 7E     CMP #$7E                        A:7E X:02 Y:C7 P:64 SP:F9 PPU:180,309 CYC:20563
FAAE  D0 36     BNE $FAE6                       A:7E X:02 Y:C7 P:67 SP:F9 PPU:180,315 CYC:20565
FAB0  60        RTS                             A:7E X:02 Y:C7 P:67 SP:F9 PPU:180,321 CYC:20567
EEEC  AD 47 06  LDA $0647 = 6E                  A:7E X:02 Y:C7 P:67 SP:FB PPU:180,339 CYC:20573
EEEF  C9 6E     CMP #$6E                        A:6E X:02 Y:C7 P:65 SP:FB PPU:181, 10 CYC:20577
EEF1  F0 02     BEQ $EEF5                       A:6E X:02 Y:C7 P:67 SP:FB PPU:181, 16 CYC:20579
EEF5  A9 A5     LDA #$A5                        A:6E X:02 Y:C7 P:67 SP:FB PPU:181, 25 CYC:20582
EEF7  8D 47 06  STA $0647 = 6E                  A:A5 X:02 Y:C7 P:E5 SP:FB PPU:181, 31 CYC:20584
EEFA  A9 48     LDA #$48                        A:A5 X:02 Y:C7 P:E5 SP:FB PPU:181, 43 CYC:20588
EEFC  85 45     STA $45 = 48                    A:48 X:02 Y:C7 P:65 SP:FB PPU:181, 49 CYC:20590
EEFE  A9 05     LDA #$05                        A:48 X:02 Y:C7 P:65 SP:FB PPU:181, 58 CYC:20593
EF00  85 46     STA $46 = 05                    A:05 X:02 Y:C7 P:65 SP:FB PPU:181, 64 CYC:20595
EF02  A0 FF     LDY #$FF                        A:05 X:02 Y:C7 P:65 SP:FB PPU:181, 73 CYC:20598
EF04  20 7B FA  JSR $FA7B                       A:05 X:02 Y:FF P:E5 SP:FB PPU:181, 79 CYC:20600
FA7B  24 01     BIT $01 = FF                    A:05 X:02 Y:FF P:E5 SP:F9 PPU:181, 97 CYC:20606
FA7D  18        CLC                             A:05 X:02 Y:FF P:E5 SP:F9 PPU:181,106 CYC:20609
FA7E  A9 B3     LDA #$B3                        A:05 X:02 Y:FF P:E4 SP:F9 PPU:181,112 CYC:20611
FA80  60        RTS                             A:B3 X:02 Y:FF P:E4 SP:F9 PPU:181,118 CYC:20613
EF07  13 45    *SLO ($45),Y = 0548 @ 0647 = A5  A:B3 X:02 Y:FF P:E4 SP:FB PPU:181,136 CYC:20619
EF09  EA        NOP                             A:FB X:02 Y:FF P:E5 SP:FB PPU:181,160 CYC:20627
EF0A  EA        NOP                             A:FB X:02 Y:FF P:E5 SP:FB PPU:181,166 CYC:20629
EF0B  08        PHP                             A:FB X:02 Y:FF P:E5 SP:FB PPU:181,172 CYC:20631
EF0C  48        PHA                             A:FB X:02 Y:FF P:E5 SP:FA PPU:181,181 CYC:20634
EF0D  A0 C8     LDY #$C8                        A:FB X:02 Y:FF P:E5 SP:F9 PPU:181,190 CYC:20637
EF0F  68        PLA                             A:FB X:02 Y:C8 P:E5 SP:F9 PPU:181,196 CYC:20639
EF10  28        PLP                             A:FB X:02 Y:C8 P:E5 SP:FA PPU:181,208 CYC:20643
EF11  20 81 FA  JSR $FA81                       A:FB X:02 Y:C8 P:E5 SP:FB PPU:181,220 CYC:20647
FA81  50 63     BVC $FAE6                       A:FB X:02 Y:C8 P:E5 SP:F9 PPU:181,238 CYC:20653
FA83  90 61     BCC $FAE6                       A:FB X:02 Y:C8 P:E5 SP:F9 PPU:181,244 CYC:20655
FA85  10 5F     BPL $FAE6                       A:FB X:02 Y:C8 P:E5 SP:F9 PPU:181,250 CYC:20657
FA87  C9 FB     CMP #$FB                        A:FB X:02 Y:C8 P:E5 SP:F9 PPU:181,256 CYC:20659
FA89  D0 5B     BNE $FAE6                       A:FB X:02 Y:C8 P:67 SP:F9 PPU:181,262 CYC:20661
FA8B  60        RTS                             A:FB X:02 Y:C8 P:67 SP:F9 PPU:181,268 CYC:20663
EF14  AD 47 06  LDA $0647 = 4A                  A:FB X:02 Y:C8 P:67 SP:FB PPU:181,286 CYC:20669
EF17  C9 4A     CMP #$4A                        A:4A X:02 Y:C8 P:65 SP:FB PPU:181,298 CYC:20673
EF19  F0 02     BEQ $EF1D                       A:4A X:02 Y:C8 P:67 SP:FB PPU:181,304 CYC:20675
EF1D  A0 FF     LDY #$FF                        A:4A X:02 Y:C8 P:67 SP:FB PPU:181,313 CYC:20678
EF1F  A9 29     LDA #$29                        A:4A X:02 Y:FF P:E5 SP:FB PPU:181,319 CYC:20680
EF21  8D 47 06  STA $0647 = 4A                  A:29 X:02 Y:FF P:65 SP:FB PPU:181,325 CYC:20682
EF24  20 8C FA  JSR $FA8C                       A:29 X:02 Y:FF P:65 SP:FB PPU:181,337 CYC:20686
FA8C  B8        CLV                             A:29 X:02 Y:FF P:65 SP:F9 PPU:182, 14 CYC:20692
FA8D  18        CLC                             A:29 X:02 Y:FF P:25 SP:F9 PPU:182, 20 CYC:20694
FA8E  A9 C3     LDA #$C3                        A:29 X:02 Y:FF P:24 SP:F9 PPU:182, 26 CYC:20696
FA90  60        RTS                             A:C3 X:02 Y:FF P:A4 SP:F9 PPU:182, 32 CYC:20698
EF27  13 45    *SLO ($45),Y = 0548 @ 0647 = 29  A:C3 X:02 Y:FF P:A4 SP:FB PPU:182, 50 CYC:20704
EF29  EA        NOP                             A:D3 X:02 Y:FF P:A4 SP:FB PPU:182, 74 CYC:20712
EF2A  EA        NOP                             A:D3 X:02 Y:FF P:A4 SP:FB PPU:182, 80 CYC:20714
EF2B  08        PHP                             A:D3 X:02 Y:FF P:A4 SP:FB PPU:182, 86 CYC:20716
EF2C  48        PHA                             A:D3 X:02 Y:FF P:A4 SP:FA PPU:182, 95 CYC:20719
EF2D  A0 C9     LDY #$C9                        A:D3 X:02 Y:FF P:A4 SP:F9 PPU:182,104 CYC:20722
EF2F  68        PLA                             A:D3 X:02 Y:C9 P:A4 SP:F9 PPU:182,110 CYC:20724
EF30  28        PLP                             A:D3 X:02 Y:C9 P:A4 SP:FA PPU:182,122 CYC:20728
EF31  20 91 FA  JSR $FA91                       A:D3 X:02 Y:C9 P:A4 SP:FB PPU:182,134 CYC:20732
FA91  70 53     BVS $FAE6                       A:D3 X:02 Y:C9 P:A4 SP:F9 PPU:182,152 CYC:20738
FA93  F0 51     BEQ $FAE6                       A:D3 X:02 Y:C9 P:A4 SP:F9 PPU:182,158 CYC:20740
FA95  10 4F     BPL $FAE6                       A:D3 X:02 Y:C9 P:A4 SP:F9 PPU:182,164 CYC:20742
FA97  B0 4D     BCS $FAE6                       A:D3 X:02 Y:C9 P:A4 SP:F9 PPU:182,170 CYC:20744
FA99  C9 D3     CMP #$D3                        A:D3 X:02 Y:C9 P:A4 SP:F9 PPU:182,176 CYC:20746
FA9B  D0 49     BNE $FAE6                       A:D3 X:02 Y:C9 P:27 SP:F9 PPU:182,182 CYC:20748
FA9D  60        RTS                             A:D3 X:02 Y:C9 P:27 SP:F9 PPU:182,188 CYC:20750
EF34  AD 47 06  LDA $0647 = 52                  A:D3 X:02 Y:C9 P:27 SP:FB PPU:182,206 CYC:20756
EF37  C9 52     CMP #$52                        A:52 X:02 Y:C9 P:25 SP:FB PPU:182,218 CYC:20760
EF39  F0 02     BEQ $EF3D                       A:52 X:02 Y:C9 P:27 SP:FB PPU:182,224 CYC:20762
EF3D  A0 FF     LDY #$FF                        A:52 X:02 Y:C9 P:27 SP:FB PPU:182,233 CYC:20765
EF3F  A9 37     LDA #$37                        A:52 X:02 Y:FF P:A5 SP:FB PPU:182,239 CYC:20767
EF41  8D 47 06  STA $0647 = 52                  A:37 X:02 Y:FF P:25 SP:FB PPU:182,245 CYC:20769
EF44  20 9E FA  JSR $FA9E                       A:37 X:02 Y:FF P:25 SP:FB PPU:182,257 CYC:20773
FA9E  24 01     BIT $01 = FF                    A:37 X:02 Y:FF P:25 SP:F9 PPU:182,275 CYC:20779
FAA0  38        SEC                             A:37 X:02 Y:FF P:E5 SP:F9 PPU:182,284 CYC:20782
FAA1  A9 10     LDA #$10                        A:37 X:02 Y:FF P:E5 SP:F9 PPU:182,290 CYC:20784
FAA3  60        RTS                             A:10 X:02 Y:FF P:65 SP:F9 PPU:182,296 CYC:20786
EF47  13 45    *SLO ($45),Y = 0548 @ 0647 = 37  A:10 X:02 Y:FF P:65 SP:FB PPU:182,314 CYC:20792
EF49  EA        NOP                             A:7E X:02 Y:FF P:64 SP:FB PPU:182,338 CYC:20800
EF4A  EA        NOP                             A:7E X:02 Y:FF P:64 SP:FB PPU:183,  3 CYC:20802
EF4B  08        PHP                             A:7E X:02 Y:FF P:64 SP:FB PPU:183,  9 CYC:20804
EF4C  48        PHA                             A:7E X:02 Y:FF P:64 SP:FA PPU:183, 18 CYC:20807
EF4D  A0 CA     LDY #$CA                        A:7E X:02 Y:FF P:64 SP:F9 PPU:183, 27 CYC:20810
EF4F  68        PLA                             A:7E X:02 Y:CA P:E4 SP:F9 PPU:183, 33 CYC:20812
EF50  28        PLP                             A:7E X:02 Y:CA P:64 SP:FA PPU:183, 45 CYC:20816
EF51  20 A4 FA  JSR $FAA4                       A:7E X:02 Y:CA P:64 SP:FB PPU:183, 57 CYC:20820
FAA4  50 40     BVC $FAE6                       A:7E X:02 Y:CA P:64 SP:F9 PPU:183, 75 CYC:20826
FAA6  F0 3E     BEQ $FAE6                       A:7E X:02 Y:CA P:64 SP:F9 PPU:183, 81 CYC:20828
FAA8  30 3C     BMI $FAE6                       A:7E X:02 Y:CA P:64 SP:F9 PPU:183, 87 CYC:20830
FAAA  B0 3A     BCS $FAE6                       A:7E X:02 Y:CA P:64 SP:F9 PPU:183, 93 CYC:20832
FAAC  C9 7E     CMP #$7E                        A:7E X:02 Y:CA P:64 SP:F9 PPU:183, 99 CYC:20834
FAAE  D0 36     BNE $FAE6                       A:7E X:02 Y:CA P:67 SP:F9 PPU:183,105 CYC:20836
FAB0  60        RTS                             A:7E X:02 Y:CA P:67 SP:F9 PPU:183,111 CYC:20838
EF54  AD 47 06  LDA $0647 = 6E                  A:7E X:02 Y:CA P:67 SP:FB PPU:183,129 CYC:20844
EF57  C9 6E     CMP #$6E                        A:6E X:02 Y:CA P:65 SP:FB PPU:183,141 CYC:20848
EF59  F0 02     BEQ $EF5D                       A:6E X:02 Y:CA P:67 SP:FB PPU:183,147 CYC:20850
EF5D  A0 CB     LDY #$CB                        A:6E X:02 Y:CA P:67 SP:FB PPU:183,156 CYC:20853
EF5F  A2 FF     LDX #$FF                        A:6E X:02 Y:CB P:E5 SP:FB PPU:183,162 CYC:20855
EF61  A9 A5     LDA #$A5                        A:6E X:FF Y:CB P:E5 SP:FB PPU:183,168 CYC:20857
EF63  85 47     STA $47 = 6E                    A:A5 X:FF Y:CB P:E5 SP:FB PPU:183,174 CYC:20859
EF65  20 7B FA  JSR $FA7B                       A:A5 X:FF Y:CB P:E5 SP:FB PPU:183,183 CYC:20862
FA7B  24 01     BIT $01 = FF                    A:A5 X:FF Y:CB P:E5 SP:F9 PPU:183,201 CYC:20868
FA7D  18        CLC                             A:A5 X:FF Y:CB P:E5 SP:F9 PPU:183,210 CYC:20871
FA7E  A9 B3     LDA #$B3                        A:A5 X:FF Y:CB P:E4 SP:F9 PPU:183,216 CYC:20873
FA80  60        RTS                             A:B3 X:FF Y:CB P:E4 SP:F9 PPU:183,222 CYC:20875
EF68  17 48    *SLO $48,X @ 47 = A5             A:B3 X:FF Y:CB P:E4 SP:FB PPU:183,240 CYC:20881
EF6A  EA        NOP                             A:FB X:FF Y:CB P:E5 SP:FB PPU:183,258 CYC:20887
EF6B  EA        NOP                             A:FB X:FF Y:CB P:E5 SP:FB PPU:183,264 CYC:20889
EF6C  EA        NOP                             A:FB X:FF Y:CB P:E5 SP:FB PPU:183,270 CYC:20891
EF6D  EA        NOP                             A:FB X:FF Y:CB P:E5 SP:FB PPU:183,276 CYC:20893
EF6E  20 81 FA  JSR $FA81                       A:FB X:FF Y:CB P:E5 SP:FB PPU:183,282 CYC:20895
FA81  50 63     BVC $FAE6                       A:FB X:FF Y:CB P:E5 SP:F9 PPU:183,300 CYC:20901
FA83  90 61     BCC $FAE6                       A:FB X:FF Y:CB P:E5 SP:F9 PPU:183,306 CYC:20903
FA85  10 5F     BPL $FAE6                       A:FB X:FF Y:CB P:E5 SP:F9 PPU:183,312 CYC:20905
FA87  C9 FB     CMP #$FB                        A:FB X:FF Y:CB P:E5 SP:F9 PPU:183,318 CYC:20907
FA89  D0 5B     BNE $FAE6                       A:FB X:FF Y:CB P:67 SP:F9 PPU:183,324 CYC:20909
FA8B  60        RTS                             A:FB X:FF Y:CB P:67 SP:F9 PPU:183,330 CYC:20911
EF71  A5 47     LDA $47 = 4A                    A:FB X:FF Y:CB P:67 SP:FB PPU:184,  7 CYC:20917
EF73  C9 4A     CMP #$4A                        A:4A X:FF Y:CB P:65 SP:FB PPU:184, 16 CYC:20920
EF75  F0 02     BEQ $EF79                       A:4A X:FF Y:CB P:67 SP:FB PPU:184, 22 CYC:20922
EF79  C8        INY                             A:4A X:FF Y:CB P:67 SP:FB PPU:184, 31 CYC:20925
EF7A  A9 29     LDA #$29                        A:4A X:FF Y:CC P:E5 SP:FB PPU:184, 37 CYC:20927
EF7C  85 47     STA $47 = 4A                    A:29 X:FF Y:CC P:65 SP:FB PPU:184, 43 CYC:20929
EF7E  20 8C FA  JSR $FA8C                       A:29 X:FF Y:CC P:65 SP:FB PPU:184, 52 CYC:20932
FA8C  B8        CLV                             A:29 X:FF Y:CC P:65 SP:F9 PPU:184, 70 CYC:20938
FA8D  18        CLC                             A:29 X:FF Y:CC P:25 SP:F9 PPU:184, 76 CYC:20940
FA8E  A9 C3     LDA #$C3                        A:29 X:FF Y:CC P:24 SP:F9 PPU:184, 82 CYC:20942
FA90  60        RTS                             A:C3 X:FF Y:CC P:A4 SP:F9 PPU:184, 88 CYC:20944
EF81  17 48    *SLO $48,X @ 47 = 29             A:C3 X:FF Y:CC P:A4 SP:FB PPU:184,106 CYC:20950
EF83  EA        NOP                             A:D3 X:FF Y:CC P:A4 SP:FB PPU:184,124 CYC:20956
EF84  EA        NOP                             A:D3 X:FF Y:CC P:A4 SP:FB PPU:184,130 CYC:20958
EF85  EA        NOP                             A:D3 X:FF Y:CC P:A4 SP:FB PPU:184,136 CYC:20960
EF86  EA        NOP                             A:D3 X:FF Y:CC P:A4 SP:FB PPU:184,142 CYC:20962
EF87  20 91 FA  JSR $FA91                       A:D3 X:FF Y:CC P:A4 SP:FB PPU:184,148 CYC:20964
FA91  70 53     BVS $FAE6                       A:D3 X:FF Y:CC P:A4 SP:F9 PPU:184,166 CYC:20970
FA93  F0 51     BEQ $FAE6                       A:D3 X:FF Y:CC P:A4 SP:F9 PPU:184,172 CYC:20972
FA95  10 4F     BPL $FAE6                       A:D3 X:FF Y:CC P:A4 SP:F9 PPU:184,178 CYC:20974
FA97  B0 4D     BCS $FAE6                       A:D3 X:FF Y:CC P:A4 SP:F9 PPU:184,184 CYC:20976
FA99  C9 D3     CMP #$D3                        A:D3 X:FF Y:CC P:A4 SP:F9 PPU:184,190 CYC:20978
FA9B  D0 49     BNE $FAE6                       A:D3 X:FF Y:CC P:27 SP:F9 PPU:184,196 CYC:20980
FA9D  60        RTS                             A:D3 X:FF Y:CC P:27 SP:F9 PPU:184,202 CYC:20982
EF8A  A5 47     LDA $47 = 52                    A:D3 X:FF Y:CC P:27 SP:FB PPU:184,220 CYC:20988
EF8C  C9 52     CMP #$52                        A:52 X:FF Y:CC P:25 SP:FB PPU:184,229 CYC:20991
EF8E  F0 02     BEQ $EF92                       A:52 X:FF Y:CC P:27 SP:FB PPU:184,235 CYC:20993
EF92  C8        INY                             A:52 X:FF Y:CC P:27 SP:FB PPU:184,244 CYC:20996
EF93  A9 37     LDA #$37                        A:52 X:FF Y:CD P:A5 SP:FB PPU:184,250 CYC:20998
EF95  85 47     STA $47 = 52                    A:37 X:FF Y:CD P:25 SP:FB PPU:184,256 CYC:21000
EF97  20 9E FA  JSR $FA9E                       A:37 X:FF Y:CD P:25 SP:FB PPU:184,265 CYC:21003
FA9E  24 01     BIT $01 = FF                    A:37 X:FF Y:CD P:25 SP:F9 PPU:184,283 CYC:21009
FAA0  38        SEC                             A:37 X:FF Y:CD P:E5 SP:F9 PPU:184,292 CYC:21012
FAA1  A9 10     LDA #$10                        A:37 X:FF Y:CD P:E5 SP:F9 PPU:184,298 CYC:21014
FAA3  60        RTS                             A:10 X:FF Y:CD P:65 SP:F9 PPU:184,304 CYC:21016
EF9A  17 48    *SLO $48,X @ 47 = 37             A:10 X:FF Y:CD P:65 SP:FB PPU:184,322 CYC:21022
EF9C  EA        NOP                             A:7E X:FF Y:CD P:64 SP:FB PPU:184,340 CYC:21028
EF9D  EA        NOP                             A:7E X:FF Y:CD P:64 SP:FB PPU:185,  5 CYC:21030
EF9E  EA        NOP                             A:7E X:FF Y:CD P:64 SP:FB PPU:185, 11 CYC:21032
EF9F  EA        NOP                             A:7E X:FF Y:CD P:64 SP:FB PPU:185, 17 CYC:21034
EFA0  20 A4 FA  JSR $FAA4                       A:7E X:FF Y:CD P:64 SP:FB PPU:185, 23 CYC:21036
FAA4  50 40     BVC $FAE6                       A:7E X:FF Y:CD P:64 SP:F9 PPU:185, 41 CYC:21042
FAA6  F0 3E     BEQ $FAE6                       A:7E X:FF Y:CD P:64 SP:F9 PPU:185, 47 CYC:21044
FAA8  30 3C     BMI $FAE6                       A:7E X:FF Y:CD P:64 SP:F9 PPU:185, 53 CYC:21046
FAAA  B0 3A     BCS $FAE6                       A:7E X:FF Y:CD P:64 SP:F9 PPU:185, 59 CYC:21048
FAAC  C9 7E     CMP #$7E                        A:7E X:FF Y:CD P:64 SP:F9 PPU:185, 65 CYC:21050
FAAE  D0 36     BNE $FAE6                       A:7E X:FF Y:CD P:67 SP:F9 PPU:185, 71 CYC:21052
FAB0  60        RTS                             A:7E X:FF Y:CD P:67 SP:F9 PPU:185, 77 CYC:21054
EFA3  A5 47     LDA $47 = 6E                    A:7E X:FF Y:CD P:67 SP:FB PPU:185, 95 CYC:21060
EFA5  C9 6E     CMP #$6E                        A:6E X:FF Y:CD P:65 SP:FB PPU:185,104 CYC:21063
EFA7  F0 02     BEQ $EFAB                       A:6E X:FF Y:CD P:67 SP:FB PPU:185,110 CYC:21065
EFAB  A9 A5     LDA #$A5                        A:6E X:FF Y:CD P:67 SP:FB PPU:185,119 CYC:21068
EFAD  8D 47 06  STA $0647 = 6E                  A:A5 X:FF Y:CD P:E5 SP:FB PPU:185,125 CYC:21070
EFB0  A0 FF     LDY #$FF                        A:A5 X:FF Y:CD P:E5 SP:FB PPU:185,137 CYC:21074
EFB2  20 7B FA  JSR $FA7B                       A:A5 X:FF Y:FF P:E5 SP:FB PPU:185,143 CYC:21076
FA7B  24 01     BIT $01 = FF                    A:A5 X:FF Y:FF P:E5 SP:F9 PPU:185,161 CYC:21082
FA7D  18        CLC                             A:A5 X:FF Y:FF P:E5 SP:F9 PPU:185,170 CYC:21085
FA7E  A9 B3     LDA #$B3                        A:A5 X:FF Y:FF P:E4 SP:F9 PPU:185,176 CYC:21087
FA80  60        RTS                             A:B3 X:FF Y:FF P:E4 SP:F9 PPU:185,182 CYC:21089
EFB5  1B 48 05 *SLO $0548,Y @ 0647 = A5         A:B3 X:FF Y:FF P:E4 SP:FB PPU:185,200 CYC:21095
EFB8  EA        NOP                             A:FB X:FF Y:FF P:E5 SP:FB PPU:185,221 CYC:21102
EFB9  EA        NOP                             A:FB X:FF Y:FF P:E5 SP:FB PPU:185,227 CYC:21104
EFBA  08        PHP                             A:FB X:FF Y:FF P:E5 SP:FB PPU:185,233 CYC:21106
EFBB  48        PHA                             A:FB X:FF Y:FF P:E5 SP:FA PPU:185,242 CYC:21109
EFBC  A0 CE     LDY #$CE                        A:FB X:FF Y:FF P:E5 SP:F9 PPU:185,251 CYC:21112
EFBE  68        PLA                             A:FB X:FF Y:CE P:E5 SP:F9 PPU:185,257 CYC:21114
EFBF  28        PLP                             A:FB X:FF Y:CE P:E5 SP:FA PPU:185,269 CYC:21118
EFC0  20 81 FA  JSR $FA81                       A:FB X:FF Y:CE P:E5 SP:FB PPU:185,281 CYC:21122
FA81  50 63     BVC $FAE6                       A:FB X:FF Y:CE P:E5 SP:F9 PPU:185,299 CYC:21128
FA83  90 61     BCC $FAE6                       A:FB X:FF Y:CE P:E5 SP:F9 PPU:185,305 CYC:21130
FA85  10 5F     BPL $FAE6                       A:FB X:FF Y:CE P:E5 SP:F9 PPU:185,311 CYC:21132
FA87  C9 FB     CMP #$FB                        A:FB X:FF Y:CE P:E5 SP:F9 PPU:185,317 CYC:21134
FA89  D0 5B     BNE $FAE6                       A:FB X:FF Y:CE P:67 SP:F9 PPU:185,323 CYC:21136
FA8B  60        RTS                             A:FB X:FF Y:CE P:67 SP:F9 PPU:185,329 CYC:21138
EFC3  AD 47 06  LDA $0647 = 4A                  A:FB X:FF Y:CE P:67 SP:FB PPU:186,  6 CYC:21144
EFC6  C9 4A     CMP #$4A                        A:4A X:FF Y:CE P:65 SP:FB PPU:186, 18 CYC:21148
EFC8  F0 02     BEQ $EFCC                       A:4A X:FF Y:CE P:67 SP:FB PPU:186, 24 CYC:21150
EFCC  A0 FF     LDY #$FF                        A:4A X:FF Y:CE P:67 SP:FB PPU:186, 33 CYC:21153
EFCE  A9 29     LDA #$29                        A:4A X:FF Y:FF P:E5 SP:FB PPU:186, 39 CYC:21155
EFD0  8D 47 06  STA $0647 = 4A                  A:29 X:FF Y:FF P:65 SP:FB PPU:186, 45 CYC:21157
EFD3  20 8C FA  JSR $FA8C                       A:29 X:FF Y:FF P:65 SP:FB PPU:186, 57 CYC:21161
FA8C  B8        CLV                             A:29 X:FF Y:FF P:65 SP:F9 PPU:186, 75 CYC:21167
FA8D  18        CLC                             A:29 X:FF Y:FF P:25 SP:F9 PPU:186, 81 CYC:21169
FA8E  A9 C3     LDA #$C3                        A:29 X:FF Y:FF P:24 SP:F9 PPU:186, 87 CYC:21171
FA90  60        RTS                             A:C3 X:FF Y:FF P:A4 SP:F9 PPU:186, 93 CYC:21173
EFD6  1B 48 05 *SLO $0548,Y @ 0647 = 29         A:C3 X:FF Y:FF P:A4 SP:FB PPU:186,111 CYC:21179
EFD9  EA        NOP                             A:D3 X:FF Y:FF P:A4 SP:FB PPU:186,132 CYC:21186
EFDA  EA        NOP                             A:D3 X:FF Y:FF P:A4 SP:FB PPU:186,138 CYC:21188
EFDB  08        PHP                             A:D3 X:FF Y:FF P:A4 SP:FB PPU:186,144 CYC:21190
EFDC  48        PHA                             A:D3 X:FF Y:FF P:A4 SP:FA PPU:186,153 CYC:21193
EFDD  A0 CF     LDY #$CF                        A:D3 X:FF Y:FF P:A4 SP:F9 PPU:186,162 CYC:21196
EFDF  68        PLA                             A:D3 X:FF Y:CF P:A4 SP:F9 PPU:186,168 CYC:21198
EFE0  28        PLP                             A:D3 X:FF Y:CF P:A4 SP:FA PPU:186,180 CYC:21202
EFE1  20 91 FA  JSR $FA91                       A:D3 X:FF Y:CF P:A4 SP:FB PPU:186,192 CYC:21206
FA91  70 53     BVS $FAE6                       A:D3 X:FF Y:CF P:A4 SP:F9 PPU:186,210 CYC:21212
FA93  F0 51     BEQ $FAE6                       A:D3 X:FF Y:CF P:A4 SP:F9 PPU:186,216 CYC:21214
FA95  10 4F     BPL $FAE6                       A:D3 X:FF Y:CF P:A4 SP:F9 PPU:186,222 CYC:21216
FA97  B0 4D     BCS $FAE6                       A:D3 X:FF Y:CF P:A4 SP:F9 PPU:186,228 CYC:21218
FA99  C9 D3     CMP #$D3                        A:D3 X:FF Y:CF P:A4 SP:F9 PPU:186,234 CYC:21220
FA9B  D0 49     BNE $FAE6                       A:D3 X:FF Y:CF P:27 SP:F9 PPU:186,240 CYC:21222
FA9D  60        RTS                             A:D3 X:FF Y:CF P:27 SP:F9 PPU:186,246 CYC:21224
EFE4  AD 47 06  LDA $0647 = 52                  A:D3 X:FF Y:CF P:27 SP:FB PPU:186,264 CYC:21230
EFE7  C9 52     CMP #$52                        A:52 X:FF Y:CF P:25 SP:FB PPU:186,276 CYC:21234
EFE9  F0 02     BEQ $EFED                       A:52 X:FF Y:CF P:27 SP:FB PPU:186,282 CYC:21236
EFED  A0 FF     LDY #$FF                        A:52 X:FF Y:CF P:27 SP:FB PPU:186,291 CYC:21239
EFEF  A9 37     LDA #$37                        A:52 X:FF Y:FF P:A5 SP:FB PPU:186,297 CYC:21241
EFF1  8D 47 06  STA $0647 = 52                  A:37 X:FF Y:FF P:25 SP:FB PPU:186,303 CYC:21243
EFF4  20 9E FA  JSR $FA9E                       A:37 X:FF Y:FF P:25 SP:FB PPU:186,315 CYC:21247
FA9E  24 01     BIT $01 = FF                    A:37 X:FF Y:FF P:25 SP:F9 PPU:186,333 CYC:21253
FAA0  38        SEC                             A:37 X:FF Y:FF P:E5 SP:F9 PPU:187,  1 CYC:21256
FAA1  A9 10     LDA #$10                        A:37 X:FF Y:FF P:E5 SP:F9 PPU:187,  7 CYC:21258
FAA3  60        RTS                             A:10 X:FF Y:FF P:65 SP:F9 PPU:187, 13 CYC:21260
EFF7  1B 48 05 *SLO $0548,Y @ 0647 = 37         A:10 X:FF Y:FF P:65 SP:FB PPU:187, 31 CYC:21266
EFFA  EA        NOP                             A:7E X:FF Y:FF P:64 SP:FB PPU:187, 52 CYC:21273
EFFB  EA        NOP                             A:7E X:FF Y:FF P:64 SP:FB PPU:187, 58 CYC:21275
EFFC  08        PHP                             A:7E X:FF Y:FF P:64 SP:FB PPU:187, 64 CYC:21277
EFFD  48        PHA                             A:7E X:FF Y:FF P:64 SP:FA PPU:187, 73 CYC:21280
EFFE  A0 D0     LDY #$D0                        A:7E X:FF Y:FF P:64 SP:F9 PPU:187, 82 CYC:21283
F000  68        PLA                             A:7E X:FF Y:D0 P:E4 SP:F9 PPU:187, 88 CYC:21285
F001  28        PLP                             A:7E X:FF Y:D0 P:64 SP:FA PPU:187,100 CYC:21289
F002  20 A4 FA  JSR $FAA4                       A:7E X:FF Y:D0 P:64 SP:FB PPU:187,112 CYC:21293
FAA4  50 40     BVC $FAE6                       A:7E X:FF Y:D0 P:64 SP:F9 PPU:187,130 CYC:21299
FAA6  F0 3E     BEQ $FAE6                       A:7E X:FF Y:D0 P:64 SP:F9 PPU:187,136 CYC:21301
FAA8  30 3C     BMI $FAE6                       A:7E X:FF Y:D0 P:64 SP:F9 PPU:187,142 CYC:21303
FAAA  B0 3A     BCS $FAE6                       A:7E X:FF Y:D0 P:64 SP:F9 PPU:187,148 CYC:21305
FAAC  C9 7E     CMP #$7E                        A:7E X:FF Y:D0 P:64 SP:F9 PPU:187,154 CYC:21307
FAAE  D0 36     BNE $FAE6                       A:7E X:FF Y:D0 P:67 SP:F9 PPU:187,160 CYC:21309
FAB0  60        RTS                             A:7E X:FF Y:D0 P:67 SP:F9 PPU:187,166 CYC:21311
F005  AD 47 06  LDA $0647 = 6E                  A:7E X:FF Y:D0 P:67 SP:FB PPU:187,184 CYC:21317
F008  C9 6E     CMP #$6E                        A:6E X:FF Y:D0 P:65 SP:FB PPU:187,196 CYC:21321
F00A  F0 02     BEQ $F00E                       A:6E X:FF Y:D0 P:67 SP:FB PPU:187,202 CYC:21323
F00E  A0 D1     LDY #$D1                        A:6E X:FF Y:D0 P:67 SP:FB PPU:187,211 CYC:21326
F010  A2 FF     LDX #$FF                        A:6E X:FF Y:D1 P:E5 SP:FB PPU:187,217 CYC:21328
F012  A9 A5     LDA #$A5                        A:6E X:FF Y:D1 P:E5 SP:FB PPU:187,223 CYC:21330
F014  8D 47 06  STA $0647 = 6E                  A:A5 X:FF Y:D1 P:E5 SP:FB PPU:187,229 CYC:21332
F017  20 7B FA  JSR $FA7B                       A:A5 X:FF Y:D1 P:E5 SP:FB PPU:187,241 CYC:21336
FA7B  24 01     BIT $01 = FF                    A:A5 X:FF Y:D1 P:E5 SP:F9 PPU:187,259 CYC:21342
FA7D  18        CLC                             A:A5 X:FF Y:D1 P:E5 SP:F9 PPU:187,268 CYC:21345
FA7E  A9 B3     LDA #$B3                        A:A5 X:FF Y:D1 P:E4 SP:F9 PPU:187,274 CYC:21347
FA80  60        RTS                             A:B3 X:FF Y:D1 P:E4 SP:F9 PPU:187,280 CYC:21349
F01A  1F 48 05 *SLO $0548,X @ 0647 = A5         A:B3 X:FF Y:D1 P:E4 SP:FB PPU:187,298 CYC:21355
F01D  EA        NOP                             A:FB X:FF Y:D1 P:E5 SP:FB PPU:187,319 CYC:21362
F01E  EA        NOP                             A:FB X:FF Y:D1 P:E5 SP:FB PPU:187,325 CYC:21364
F01F  EA        NOP                             A:FB X:FF Y:D1 P:E5 SP:FB PPU:187,331 CYC:21366
F020  EA        NOP                             A:FB X:FF Y:D1 P:E5 SP:FB PPU:187,337 CYC:21368
F021  20 81 FA  JSR $FA81                       A:FB X:FF Y:D1 P:E5 SP:FB PPU:188,  2 CYC:21370
FA81  50 63     BVC $FAE6                       A:FB X:FF Y:D1 P:E5 SP:F9 PPU:188, 20 CYC:21376
FA83  90 61     BCC $FAE6                       A:FB X:FF Y:D1 P:E5 SP:F9 PPU:188, 26 CYC:21378
FA85  10 5F     BPL $FAE6                       A:FB X:FF Y:D1 P:E5 SP:F9 PPU:188, 32 CYC:21380
FA87  C9 FB     CMP #$FB                        A:FB X:FF Y:D1 P:E5 SP:F9 PPU:188, 38 CYC:21382
FA89  D0 5B     BNE $FAE6                       A:FB X:FF Y:D1 P:67 SP:F9 PPU:188, 44 CYC:21384
FA8B  60        RTS                             A:FB X:FF Y:D1 P:67 SP:F9 PPU:188, 50 CYC:21386
F024  AD 47 06  LDA $0647 = 4A                  A:FB X:FF Y:D1 P:67 SP:FB PPU:188, 68 CYC:21392
F027  C9 4A     CMP #$4A                        A:4A X:FF Y:D1 P:65 SP:FB PPU:188, 80 CYC:21396
F029  F0 02     BEQ $F02D                       A:4A X:FF Y:D1 P:67 SP:FB PPU:188, 86 CYC:21398
F02D  C8        INY                             A:4A X:FF Y:D1 P:67 SP:FB PPU:188, 95 CYC:21401
F02E  A9 29     LDA #$29                        A:4A X:FF Y:D2 P:E5 SP:FB PPU:188,101 CYC:21403
F030  8D 47 06  STA $0647 = 4A                  A:29 X:FF Y:D2 P:65 SP:FB PPU:188,107 CYC:21405
F033  20 8C FA  JSR $FA8C                       A:29 X:FF Y:D2 P:65 SP:FB PPU:188,119 CYC:21409
FA8C  B8        CLV                             A:29 X:FF Y:D2 P:65 SP:F9 PPU:188,137 CYC:21415
FA8D  18        CLC                             A:29 X:FF Y:D2 P:25 SP:F9 PPU:188,143 CYC:21417
FA8E  A9 C3     LDA #$C3                        A:29 X:FF Y:D2 P:24 SP:F9 PPU:188,149 CYC:21419
FA90  60        RTS                             A:C3 X:FF Y:D2 P:A4 SP:F9 PPU:188,155 CYC:21421
F036  1F 48 05 *SLO $0548,X @ 0647 = 29         A:C3 X:FF Y:D2 P:A4 SP:FB PPU:188,173 CYC:21427
F039  EA        NOP                             A:D3 X:FF Y:D2 P:A4 SP:FB PPU:188,194 CYC:21434
F03A  EA        NOP                             A:D3 X:FF Y:D2 P:A4 SP:FB PPU:188,200 CYC:21436
F03B  EA        NOP                             A:D3 X:FF Y:D2 P:A4 SP:FB PPU:188,206 CYC:21438
F03C  EA        NOP                             A:D3 X:FF Y:D2 P:A4 SP:FB PPU:188,212 CYC:21440
F03D  20 91 FA  JSR $FA91                       A:D3 X:FF Y:D2 P:A4 SP:FB PPU:188,218 CYC:21442
FA91  70 53     BVS $FAE6                       A:D3 X:FF Y:D2 P:A4 SP:F9 PPU:188,236 CYC:21448
FA93  F0 51     BEQ $FAE6                       A:D3 X:FF Y:D2 P:A4 SP:F9 PPU:188,242 CYC:21450
FA95  10 4F     BPL $FAE6                       A:D3 X:FF Y:D2 P:A4 SP:F9 PPU:188,248 CYC:21452
FA97  B0 4D     BCS $FAE6                       A:D3 X:FF Y:D2 P:A4 SP:F9 PPU:188,254 CYC:21454
FA99  C9 D3     CMP #$D3                        A:D3 X:FF Y:D2 P:A4 SP:F9 PPU:188,260 CYC:21456
FA9B  D0 49     BNE $FAE6                       A:D3 X:FF Y:D2 P:27 SP:F9 PPU:188,266 CYC:21458
FA9D  60        RTS                             A:D3 X:FF Y:D2 P:27 SP:F9 PPU:188,272 CYC:21460
F040  AD 47 06  LDA $0647 = 52                  A:D3 X:FF Y:D2 P:27 SP:FB PPU:188,290 CYC:21466
F043  C9 52     CMP #$52                        A:52 X:FF Y:D2 P:25 SP:FB PPU:188,302 CYC:21470
F045  F0 02     BEQ $F049                       A:52 X:FF Y:D2 P:27 SP:FB PPU:188,308 CYC:21472
F049  C8        INY                             A:52 X:FF Y:D2 P:27 SP:FB PPU:188,317 CYC:21475
F04A  A9 37     LDA #$37                        A:52 X:FF Y:D3 P:A5 SP:FB PPU:188,323 CYC:21477
F04C  8D 47 06  STA $0647 = 52                  A:37 X:FF Y:D3 P:25 SP:FB PPU:188,329 CYC:21479
F04F  20 9E FA  JSR $FA9E                       A:37 X:FF Y:D3 P:25 SP:FB PPU:189,  0 CYC:21483
FA9E  24 01     BIT $01 = FF                    A:37 X:FF Y:D3 P:25 SP:F9 PPU:189, 18 CYC:21489
FAA0  38        SEC                             A:37 X:FF Y:D3 P:E5 SP:F9 PPU:189, 27 CYC:21492
FAA1  A9 10     LDA #$10                        A:37 X:FF Y:D3 P:E5 SP:F9 PPU:189, 33 CYC:21494
FAA3  60        RTS                             A:10 X:FF Y:D3 P:65 SP:F9 PPU:189, 39 CYC:21496
F052  1F 48 05 *SLO $0548,X @ 0647 = 37         A:10 X:FF Y:D3 P:65 SP:FB PPU:189, 57 CYC:21502
F055  EA        NOP                             A:7E X:FF Y:D3 P:64 SP:FB PPU:189, 78 CYC:21509
F056  EA        NOP                             A:7E X:FF Y:D3 P:64 SP:FB PPU:189, 84 CYC:21511
F057  EA        NOP                             A:7E X:FF Y:D3 P:64 SP:FB PPU:189, 90 CYC:21513
F058  EA        NOP                             A:7E X:FF Y:D3 P:64 SP:FB PPU:189, 96 CYC:21515
F059  20 A4 FA  JSR $FAA4                       A:7E X:FF Y:D3 P:64 SP:FB PPU:189,102 CYC:21517
FAA4  50 40     BVC $FAE6                       A:7E X:FF Y:D3 P:64 SP:F9 PPU:189,120 CYC:21523
FAA6  F0 3E     BEQ $FAE6                       A:7E X:FF Y:D3 P:64 SP:F9 PPU:189,126 CYC:21525
FAA8  30 3C     BMI $FAE6                       A:7E X:FF Y:D3 P:64 SP:F9 PPU:189,132 CYC:21527
FAAA  B0 3A     BCS $FAE6                       A:7E X:FF Y:D3 P:64 SP:F9 PPU:189,138 CYC:21529
FAAC  C9 7E     CMP #$7E                        A:7E X:FF Y:D3 P:64 SP:F9 PPU:189,144 CYC:21531
FAAE  D0 36     BNE $FAE6                       A:7E X:FF Y:D3 P:67 SP:F9 PPU:189,150 CYC:21533
FAB0  60        RTS                             A:7E X:FF Y:D3 P:67 SP:F9 PPU:189,156 CYC:21535
F05C  AD 47 06  LDA $0647 = 6E                  A:7E X:FF Y:D3 P:67 SP:FB PPU:189,174 CYC:21541
F05F  C9 6E     CMP #$6E                        A:6E X:FF Y:D3 P:65 SP:FB PPU:189,186 CYC:21545
F061  F0 02     BEQ $F065                       A:6E X:FF Y:D3 P:67 SP:FB PPU:189,192 CYC:21547
F065  60        RTS                             A:6E X:FF Y:D3 P:67 SP:FB PPU:189,201 CYC:21550
C644  20 66 F0  JSR $F066                       A:6E X:FF Y:D3 P:67 SP:FD PPU:189,219 CYC:21556
F066  A9 FF     LDA #$FF                        A:6E X:FF Y:D3 P:67 SP:FB PPU:189,237 CYC:21562
F068  85 01     STA $01 = FF                    A:FF X:FF Y:D3 P:E5 SP:FB PPU:189,243 CYC:21564
F06A  A0 D4     LDY #$D4                        A:FF X:FF Y:D3 P:E5 SP:FB PPU:189,252 CYC:21567
F06C  A2 02     LDX #$02                        A:FF X:FF Y:D4 P:E5 SP:FB PPU:189,258 CYC:21569
F06E  A9 47     LDA #$47                        A:FF X:02 Y:D4 P:65 SP:FB PPU:189,264 CYC:21571
F070  85 47     STA $47 = 6E                    A:47 X:02 Y:D4 P:65 SP:FB PPU:189,270 CYC:21573
F072  A9 06     LDA #$06                        A:47 X:02 Y:D4 P:65 SP:FB PPU:189,279 CYC:21576
F074  85 48     STA $48 = 06                    A:06 X:02 Y:D4 P:65 SP:FB PPU:189,285 CYC:21578
F076  A9 A5     LDA #$A5                        A:06 X:02 Y:D4 P:65 SP:FB PPU:189,294 CYC:21581
F078  8D 47 06  STA $0647 = 6E                  A:A5 X:02 Y:D4 P:E5 SP:FB PPU:189,300 CYC:21583
F07B  20 53 FB  JSR $FB53                       A:A5 X:02 Y:D4 P:E5 SP:FB PPU:189,312 CYC:21587
FB53  24 01     BIT $01 = FF                    A:A5 X:02 Y:D4 P:E5 SP:F9 PPU:189,330 CYC:21593
FB55  18        CLC                             A:A5 X:02 Y:D4 P:E5 SP:F9 PPU:189,339 CYC:21596
FB56  A9 B3     LDA #$B3                        A:A5 X:02 Y:D4 P:E4 SP:F9 PPU:190,  4 CYC:21598
FB58  60        RTS                             A:B3 X:02 Y:D4 P:E4 SP:F9 PPU:190, 10 CYC:21600
F07E  23 45    *RLA ($45,X) @ 47 = 0647 = A5    A:B3 X:02 Y:D4 P:E4 SP:FB PPU:190, 28 CYC:21606
F080  EA        NOP                             A:02 X:02 Y:D4 P:65 SP:FB PPU:190, 52 CYC:21614
F081  EA        NOP                             A:02 X:02 Y:D4 P:65 SP:FB PPU:190, 58 CYC:21616
F082  EA        NOP                             A:02 X:02 Y:D4 P:65 SP:FB PPU:190, 64 CYC:21618
F083  EA        NOP                             A:02 X:02 Y:D4 P:65 SP:FB PPU:190, 70 CYC:21620
F084  20 59 FB  JSR $FB59                       A:02 X:02 Y:D4 P:65 SP:FB PPU:190, 76 CYC:21622
FB59  50 1A     BVC $FB75                       A:02 X:02 Y:D4 P:65 SP:F9 PPU:190, 94 CYC:21628
FB5B  90 18     BCC $FB75                       A:02 X:02 Y:D4 P:65 SP:F9 PPU:190,100 CYC:21630
FB5D  30 16     BMI $FB75                       A:02 X:02 Y:D4 P:65 SP:F9 PPU:190,106 CYC:21632
FB5F  C9 02     CMP #$02                        A:02 X:02 Y:D4 P:65 SP:F9 PPU:190,112 CYC:21634
FB61  D0 12     BNE $FB75                       A:02 X:02 Y:D4 P:67 SP:F9 PPU:190,118 CYC:21636
FB63  60        RTS                             A:02 X:02 Y:D4 P:67 SP:F9 PPU:190,124 CYC:21638
F087  AD 47 06  LDA $0647 = 4A                  A:02 X:02 Y:D4 P:67 SP:FB PPU:190,142 CYC:21644
F08A  C9 4A     CMP #$4A                        A:4A X:02 Y:D4 P:65 SP:FB PPU:190,154 CYC:21648
F08C  F0 02     BEQ $F090                       A:4A X:02 Y:D4 P:67 SP:FB PPU:190,160 CYC:21650
F090  C8        INY                             A:4A X:02 Y:D4 P:67 SP:FB PPU:190,169 CYC:21653
F091  A9 29     LDA #$29                        A:4A X:02 Y:D5 P:E5 SP:FB PPU:190,175 CYC:21655
F093  8D 47 06  STA $0647 = 4A                  A:29 X:02 Y:D5 P:65 SP:FB PPU:190,181 CYC:21657
F096  20 64 FB  JSR $FB64                       A:29 X:02 Y:D5 P:65 SP:FB PPU:190,193 CYC:21661
FB64  B8        CLV                             A:29 X:02 Y:D5 P:65 SP:F9 PPU:190,211 CYC:21667
FB65  18        CLC                             A:29 X:02 Y:D5 P:25 SP:F9 PPU:190,217 CYC:21669
FB66  A9 42     LDA #$42                        A:29 X:02 Y:D5 P:24 SP:F9 PPU:190,223 CYC:21671
FB68  60        RTS                             A:42 X:02 Y:D5 P:24 SP:F9 PPU:190,229 CYC:21673
F099  23 45    *RLA ($45,X) @ 47 = 0647 = 29    A:42 X:02 Y:D5 P:24 SP:FB PPU:190,247 CYC:21679
F09B  EA        NOP                             A:42 X:02 Y:D5 P:24 SP:FB PPU:190,271 CYC:21687
F09C  EA        NOP                             A:42 X:02 Y:D5 P:24 SP:FB PPU:190,277 CYC:21689
F09D  EA        NOP                             A:42 X:02 Y:D5 P:24 SP:FB PPU:190,283 CYC:21691
F09E  EA        NOP                             A:42 X:02 Y:D5 P:24 SP:FB PPU:190,289 CYC:21693
F09F  20 69 FB  JSR $FB69                       A:42 X:02 Y:D5 P:24 SP:FB PPU:190,295 CYC:21695
FB69  70 0A     BVS $FB75                       A:42 X:02 Y:D5 P:24 SP:F9 PPU:190,313 CYC:21701
FB6B  F0 08     BEQ $FB75                       A:42 X:02 Y:D5 P:24 SP:F9 PPU:190,319 CYC:21703
FB6D  30 06     BMI $FB75                       A:42 X:02 Y:D5 P:24 SP:F9 PPU:190,325 CYC:21705
FB6F  B0 04     BCS $FB75                       A:42 X:02 Y:D5 P:24 SP:F9 PPU:190,331 CYC:21707
FB71  C9 42     CMP #$42                        A:42 X:02 Y:D5 P:24 SP:F9 PPU:190,337 CYC:21709
FB73  F0 02     BEQ $FB77                       A:42 X:02 Y:D5 P:27 SP:F9 PPU:191,  2 CYC:21711
FB77  60        RTS                             A:42 X:02 Y:D5 P:27 SP:F9 PPU:191, 11 CYC:21714
F0A2  AD 47 06  LDA $0647 = 52                  A:42 X:02 Y:D5 P:27 SP:FB PPU:191, 29 CYC:21720
F0A5  C9 52     CMP #$52                        A:52 X:02 Y:D5 P:25 SP:FB PPU:191, 41 CYC:21724
F0A7  F0 02     BEQ $F0AB                       A:52 X:02 Y:D5 P:27 SP:FB PPU:191, 47 CYC:21726
F0AB  C8        INY                             A:52 X:02 Y:D5 P:27 SP:FB PPU:191, 56 CYC:21729
F0AC  A9 37     LDA #$37                        A:52 X:02 Y:D6 P:A5 SP:FB PPU:191, 62 CYC:21731
F0AE  8D 47 06  STA $0647 = 52                  A:37 X:02 Y:D6 P:25 SP:FB PPU:191, 68 CYC:21733
F0B1  20 68 FA  JSR $FA68                       A:37 X:02 Y:D6 P:25 SP:FB PPU:191, 80 CYC:21737
FA68  24 01     BIT $01 = FF                    A:37 X:02 Y:D6 P:25 SP:F9 PPU:191, 98 CYC:21743
FA6A  38        SEC                             A:37 X:02 Y:D6 P:E5 SP:F9 PPU:191,107 CYC:21746
FA6B  A9 75     LDA #$75                        A:37 X:02 Y:D6 P:E5 SP:F9 PPU:191,113 CYC:21748
FA6D  60        RTS                             A:75 X:02 Y:D6 P:65 SP:F9 PPU:191,119 CYC:21750
F0B4  23 45    *RLA ($45,X) @ 47 = 0647 = 37    A:75 X:02 Y:D6 P:65 SP:FB PPU:191,137 CYC:21756
F0B6  EA        NOP                             A:65 X:02 Y:D6 P:64 SP:FB PPU:191,161 CYC:21764
F0B7  EA        NOP                             A:65 X:02 Y:D6 P:64 SP:FB PPU:191,167 CYC:21766
F0B8  EA        NOP                             A:65 X:02 Y:D6 P:64 SP:FB PPU:191,173 CYC:21768
F0B9  EA        NOP                             A:65 X:02 Y:D6 P:64 SP:FB PPU:191,179 CYC:21770
F0BA  20 6E FA  JSR $FA6E                       A:65 X:02 Y:D6 P:64 SP:FB PPU:191,185 CYC:21772
FA6E  50 76     BVC $FAE6                       A:65 X:02 Y:D6 P:64 SP:F9 PPU:191,203 CYC:21778
FA70  F0 74     BEQ $FAE6                       A:65 X:02 Y:D6 P:64 SP:F9 PPU:191,209 CYC:21780
FA72  30 72     BMI $FAE6                       A:65 X:02 Y:D6 P:64 SP:F9 PPU:191,215 CYC:21782
FA74  B0 70     BCS $FAE6                       A:65 X:02 Y:D6 P:64 SP:F9 PPU:191,221 CYC:21784
FA76  C9 65     CMP #$65                        A:65 X:02 Y:D6 P:64 SP:F9 PPU:191,227 CYC:21786
FA78  D0 6C     BNE $FAE6                       A:65 X:02 Y:D6 P:67 SP:F9 PPU:191,233 CYC:21788
FA7A  60        RTS                             A:65 X:02 Y:D6 P:67 SP:F9 PPU:191,239 CYC:21790
F0BD  AD 47 06  LDA $0647 = 6F                  A:65 X:02 Y:D6 P:67 SP:FB PPU:191,257 CYC:21796
F0C0  C9 6F     CMP #$6F                        A:6F X:02 Y:D6 P:65 SP:FB PPU:191,269 CYC:21800
F0C2  F0 02     BEQ $F0C6                       A:6F X:02 Y:D6 P:67 SP:FB PPU:191,275 CYC:21802
F0C6  C8        INY                             A:6F X:02 Y:D6 P:67 SP:FB PPU:191,284 CYC:21805
F0C7  A9 A5     LDA #$A5                        A:6F X:02 Y:D7 P:E5 SP:FB PPU:191,290 CYC:21807
F0C9  85 47     STA $47 = 47                    A:A5 X:02 Y:D7 P:E5 SP:FB PPU:191,296 CYC:21809
F0CB  20 53 FB  JSR $FB53                       A:A5 X:02 Y:D7 P:E5 SP:FB PPU:191,305 CYC:21812
FB53  24 01     BIT $01 = FF                    A:A5 X:02 Y:D7 P:E5 SP:F9 PPU:191,323 CYC:21818
FB55  18        CLC                             A:A5 X:02 Y:D7 P:E5 SP:F9 PPU:191,332 CYC:21821
FB56  A9 B3     LDA #$B3                        A:A5 X:02 Y:D7 P:E4 SP:F9 PPU:191,338 CYC:21823
FB58  60        RTS                             A:B3 X:02 Y:D7 P:E4 SP:F9 PPU:192,  3 CYC:21825
F0CE  27 47    *RLA $47 = A5                    A:B3 X:02 Y:D7 P:E4 SP:FB PPU:192, 21 CYC:21831
F0D0  EA        NOP                             A:02 X:02 Y:D7 P:65 SP:FB PPU:192, 36 CYC:21836
F0D1  EA        NOP                             A:02 X:02 Y:D7 P:65 SP:FB PPU:192, 42 CYC:21838
F0D2  EA        NOP                             A:02 X:02 Y:D7 P:65 SP:FB PPU:192, 48 CYC:21840
F0D3  EA        NOP                             A:02 X:02 Y:D7 P:65 SP:FB PPU:192, 54 CYC:21842
F0D4  20 59 FB  JSR $FB59                       A:02 X:02 Y:D7 P:65 SP:FB PPU:192, 60 CYC:21844
FB59  50 1A     BVC $FB75                       A:02 X:02 Y:D7 P:65 SP:F9 PPU:192, 78 CYC:21850
FB5B  90 18     BCC $FB75                       A:02 X:02 Y:D7 P:65 SP:F9 PPU:192, 84 CYC:21852
FB5D  30 16     BMI $FB75                       A:02 X:02 Y:D7 P:65 SP:F9 PPU:192, 90 CYC:21854
FB5F  C9 02     CMP #$02                        A:02 X:02 Y:D7 P:65 SP:F9 PPU:192, 96 CYC:21856
FB61  D0 12     BNE $FB75                       A:02 X:02 Y:D7 P:67 SP:F9 PPU:192,102 CYC:21858
FB63  60        RTS                             A:02 X:02 Y:D7 P:67 SP:F9 PPU:192,108 CYC:21860
F0D7  A5 47     LDA $47 = 4A                    A:02 X:02 Y:D7 P:67 SP:FB PPU:192,126 CYC:21866
F0D9  C9 4A     CMP #$4A                        A:4A X:02 Y:D7 P:65 SP:FB PPU:192,135 CYC:21869
F0DB  F0 02     BEQ $F0DF                       A:4A X:02 Y:D7 P:67 SP:FB PPU:192,141 CYC:21871
F0DF  C8        INY                             A:4A X:02 Y:D7 P:67 SP:FB PPU:192,150 CYC:21874
F0E0  A9 29     LDA #$29                        A:4A X:02 Y:D8 P:E5 SP:FB PPU:192,156 CYC:21876
F0E2  85 47     STA $47 = 4A                    A:29 X:02 Y:D8 P:65 SP:FB PPU:192,162 CYC:21878
F0E4  20 64 FB  JSR $FB64                       A:29 X:02 Y:D8 P:65 SP:FB PPU:192,171 CYC:21881

]]