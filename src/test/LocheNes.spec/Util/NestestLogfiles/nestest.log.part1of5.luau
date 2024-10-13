return [[
C000  4C F5 C5  JMP $C5F5                       A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 21 CYC:7
C5F5  A2 00     LDX #$00                        A:00 X:00 Y:00 P:24 SP:FD PPU:  0, 30 CYC:10
C5F7  86 00     STX $00 = 00                    A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 36 CYC:12
C5F9  86 10     STX $10 = 00                    A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 45 CYC:15
C5FB  86 11     STX $11 = 00                    A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 54 CYC:18
C5FD  20 2D C7  JSR $C72D                       A:00 X:00 Y:00 P:26 SP:FD PPU:  0, 63 CYC:21
C72D  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0, 81 CYC:27
C72E  38        SEC                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0, 87 CYC:29
C72F  B0 04     BCS $C735                       A:00 X:00 Y:00 P:27 SP:FB PPU:  0, 93 CYC:31
C735  EA        NOP                             A:00 X:00 Y:00 P:27 SP:FB PPU:  0,102 CYC:34
C736  18        CLC                             A:00 X:00 Y:00 P:27 SP:FB PPU:  0,108 CYC:36
C737  B0 03     BCS $C73C                       A:00 X:00 Y:00 P:26 SP:FB PPU:  0,114 CYC:38
C739  4C 40 C7  JMP $C740                       A:00 X:00 Y:00 P:26 SP:FB PPU:  0,120 CYC:40
C740  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0,129 CYC:43
C741  38        SEC                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0,135 CYC:45
C742  90 03     BCC $C747                       A:00 X:00 Y:00 P:27 SP:FB PPU:  0,141 CYC:47
C744  4C 4B C7  JMP $C74B                       A:00 X:00 Y:00 P:27 SP:FB PPU:  0,147 CYC:49
C74B  EA        NOP                             A:00 X:00 Y:00 P:27 SP:FB PPU:  0,156 CYC:52
C74C  18        CLC                             A:00 X:00 Y:00 P:27 SP:FB PPU:  0,162 CYC:54
C74D  90 04     BCC $C753                       A:00 X:00 Y:00 P:26 SP:FB PPU:  0,168 CYC:56
C753  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0,177 CYC:59
C754  A9 00     LDA #$00                        A:00 X:00 Y:00 P:26 SP:FB PPU:  0,183 CYC:61
C756  F0 04     BEQ $C75C                       A:00 X:00 Y:00 P:26 SP:FB PPU:  0,189 CYC:63
C75C  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0,198 CYC:66
C75D  A9 40     LDA #$40                        A:00 X:00 Y:00 P:26 SP:FB PPU:  0,204 CYC:68
C75F  F0 03     BEQ $C764                       A:40 X:00 Y:00 P:24 SP:FB PPU:  0,210 CYC:70
C761  4C 68 C7  JMP $C768                       A:40 X:00 Y:00 P:24 SP:FB PPU:  0,216 CYC:72
C768  EA        NOP                             A:40 X:00 Y:00 P:24 SP:FB PPU:  0,225 CYC:75
C769  A9 40     LDA #$40                        A:40 X:00 Y:00 P:24 SP:FB PPU:  0,231 CYC:77
C76B  D0 04     BNE $C771                       A:40 X:00 Y:00 P:24 SP:FB PPU:  0,237 CYC:79
C771  EA        NOP                             A:40 X:00 Y:00 P:24 SP:FB PPU:  0,246 CYC:82
C772  A9 00     LDA #$00                        A:40 X:00 Y:00 P:24 SP:FB PPU:  0,252 CYC:84
C774  D0 03     BNE $C779                       A:00 X:00 Y:00 P:26 SP:FB PPU:  0,258 CYC:86
C776  4C 7D C7  JMP $C77D                       A:00 X:00 Y:00 P:26 SP:FB PPU:  0,264 CYC:88
C77D  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  0,273 CYC:91
C77E  A9 FF     LDA #$FF                        A:00 X:00 Y:00 P:26 SP:FB PPU:  0,279 CYC:93
C780  85 01     STA $01 = 00                    A:FF X:00 Y:00 P:A4 SP:FB PPU:  0,285 CYC:95
C782  24 01     BIT $01 = FF                    A:FF X:00 Y:00 P:A4 SP:FB PPU:  0,294 CYC:98
C784  70 04     BVS $C78A                       A:FF X:00 Y:00 P:E4 SP:FB PPU:  0,303 CYC:101
C78A  EA        NOP                             A:FF X:00 Y:00 P:E4 SP:FB PPU:  0,312 CYC:104
C78B  24 01     BIT $01 = FF                    A:FF X:00 Y:00 P:E4 SP:FB PPU:  0,318 CYC:106
C78D  50 03     BVC $C792                       A:FF X:00 Y:00 P:E4 SP:FB PPU:  0,327 CYC:109
C78F  4C 96 C7  JMP $C796                       A:FF X:00 Y:00 P:E4 SP:FB PPU:  0,333 CYC:111
C796  EA        NOP                             A:FF X:00 Y:00 P:E4 SP:FB PPU:  1,  1 CYC:114
C797  A9 00     LDA #$00                        A:FF X:00 Y:00 P:E4 SP:FB PPU:  1,  7 CYC:116
C799  85 01     STA $01 = FF                    A:00 X:00 Y:00 P:66 SP:FB PPU:  1, 13 CYC:118
C79B  24 01     BIT $01 = 00                    A:00 X:00 Y:00 P:66 SP:FB PPU:  1, 22 CYC:121
C79D  50 04     BVC $C7A3                       A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 31 CYC:124
C7A3  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 40 CYC:127
C7A4  24 01     BIT $01 = 00                    A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 46 CYC:129
C7A6  70 03     BVS $C7AB                       A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 55 CYC:132
C7A8  4C AF C7  JMP $C7AF                       A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 61 CYC:134
C7AF  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 70 CYC:137
C7B0  A9 00     LDA #$00                        A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 76 CYC:139
C7B2  10 04     BPL $C7B8                       A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 82 CYC:141
C7B8  EA        NOP                             A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 91 CYC:144
C7B9  A9 80     LDA #$80                        A:00 X:00 Y:00 P:26 SP:FB PPU:  1, 97 CYC:146
C7BB  10 03     BPL $C7C0                       A:80 X:00 Y:00 P:A4 SP:FB PPU:  1,103 CYC:148
C7BD  4C D9 C7  JMP $C7D9                       A:80 X:00 Y:00 P:A4 SP:FB PPU:  1,109 CYC:150
C7D9  EA        NOP                             A:80 X:00 Y:00 P:A4 SP:FB PPU:  1,118 CYC:153
C7DA  60        RTS                             A:80 X:00 Y:00 P:A4 SP:FB PPU:  1,124 CYC:155
C600  20 DB C7  JSR $C7DB                       A:80 X:00 Y:00 P:A4 SP:FD PPU:  1,142 CYC:161
C7DB  EA        NOP                             A:80 X:00 Y:00 P:A4 SP:FB PPU:  1,160 CYC:167
C7DC  A9 FF     LDA #$FF                        A:80 X:00 Y:00 P:A4 SP:FB PPU:  1,166 CYC:169
C7DE  85 01     STA $01 = 00                    A:FF X:00 Y:00 P:A4 SP:FB PPU:  1,172 CYC:171
C7E0  24 01     BIT $01 = FF                    A:FF X:00 Y:00 P:A4 SP:FB PPU:  1,181 CYC:174
C7E2  A9 00     LDA #$00                        A:FF X:00 Y:00 P:E4 SP:FB PPU:  1,190 CYC:177
C7E4  38        SEC                             A:00 X:00 Y:00 P:66 SP:FB PPU:  1,196 CYC:179
C7E5  78        SEI                             A:00 X:00 Y:00 P:67 SP:FB PPU:  1,202 CYC:181
C7E6  F8        SED                             A:00 X:00 Y:00 P:67 SP:FB PPU:  1,208 CYC:183
C7E7  08        PHP                             A:00 X:00 Y:00 P:6F SP:FB PPU:  1,214 CYC:185
C7E8  68        PLA                             A:00 X:00 Y:00 P:6F SP:FA PPU:  1,223 CYC:188
C7E9  29 EF     AND #$EF                        A:7F X:00 Y:00 P:6D SP:FB PPU:  1,235 CYC:192
C7EB  C9 6F     CMP #$6F                        A:6F X:00 Y:00 P:6D SP:FB PPU:  1,241 CYC:194
C7ED  F0 04     BEQ $C7F3                       A:6F X:00 Y:00 P:6F SP:FB PPU:  1,247 CYC:196
C7F3  EA        NOP                             A:6F X:00 Y:00 P:6F SP:FB PPU:  1,256 CYC:199
C7F4  A9 40     LDA #$40                        A:6F X:00 Y:00 P:6F SP:FB PPU:  1,262 CYC:201
C7F6  85 01     STA $01 = FF                    A:40 X:00 Y:00 P:6D SP:FB PPU:  1,268 CYC:203
C7F8  24 01     BIT $01 = 40                    A:40 X:00 Y:00 P:6D SP:FB PPU:  1,277 CYC:206
C7FA  D8        CLD                             A:40 X:00 Y:00 P:6D SP:FB PPU:  1,286 CYC:209
C7FB  A9 10     LDA #$10                        A:40 X:00 Y:00 P:65 SP:FB PPU:  1,292 CYC:211
C7FD  18        CLC                             A:10 X:00 Y:00 P:65 SP:FB PPU:  1,298 CYC:213
C7FE  08        PHP                             A:10 X:00 Y:00 P:64 SP:FB PPU:  1,304 CYC:215
C7FF  68        PLA                             A:10 X:00 Y:00 P:64 SP:FA PPU:  1,313 CYC:218
C800  29 EF     AND #$EF                        A:74 X:00 Y:00 P:64 SP:FB PPU:  1,325 CYC:222
C802  C9 64     CMP #$64                        A:64 X:00 Y:00 P:64 SP:FB PPU:  1,331 CYC:224
C804  F0 04     BEQ $C80A                       A:64 X:00 Y:00 P:67 SP:FB PPU:  1,337 CYC:226
C80A  EA        NOP                             A:64 X:00 Y:00 P:67 SP:FB PPU:  2,  5 CYC:229
C80B  A9 80     LDA #$80                        A:64 X:00 Y:00 P:67 SP:FB PPU:  2, 11 CYC:231
C80D  85 01     STA $01 = 40                    A:80 X:00 Y:00 P:E5 SP:FB PPU:  2, 17 CYC:233
C80F  24 01     BIT $01 = 80                    A:80 X:00 Y:00 P:E5 SP:FB PPU:  2, 26 CYC:236
C811  F8        SED                             A:80 X:00 Y:00 P:A5 SP:FB PPU:  2, 35 CYC:239
C812  A9 00     LDA #$00                        A:80 X:00 Y:00 P:AD SP:FB PPU:  2, 41 CYC:241
C814  38        SEC                             A:00 X:00 Y:00 P:2F SP:FB PPU:  2, 47 CYC:243
C815  08        PHP                             A:00 X:00 Y:00 P:2F SP:FB PPU:  2, 53 CYC:245
C816  68        PLA                             A:00 X:00 Y:00 P:2F SP:FA PPU:  2, 62 CYC:248
C817  29 EF     AND #$EF                        A:3F X:00 Y:00 P:2D SP:FB PPU:  2, 74 CYC:252
C819  C9 2F     CMP #$2F                        A:2F X:00 Y:00 P:2D SP:FB PPU:  2, 80 CYC:254
C81B  F0 04     BEQ $C821                       A:2F X:00 Y:00 P:2F SP:FB PPU:  2, 86 CYC:256
C821  EA        NOP                             A:2F X:00 Y:00 P:2F SP:FB PPU:  2, 95 CYC:259
C822  A9 FF     LDA #$FF                        A:2F X:00 Y:00 P:2F SP:FB PPU:  2,101 CYC:261
C824  48        PHA                             A:FF X:00 Y:00 P:AD SP:FB PPU:  2,107 CYC:263
C825  28        PLP                             A:FF X:00 Y:00 P:AD SP:FA PPU:  2,116 CYC:266
C826  D0 09     BNE $C831                       A:FF X:00 Y:00 P:EF SP:FB PPU:  2,128 CYC:270
C828  10 07     BPL $C831                       A:FF X:00 Y:00 P:EF SP:FB PPU:  2,134 CYC:272
C82A  50 05     BVC $C831                       A:FF X:00 Y:00 P:EF SP:FB PPU:  2,140 CYC:274
C82C  90 03     BCC $C831                       A:FF X:00 Y:00 P:EF SP:FB PPU:  2,146 CYC:276
C82E  4C 35 C8  JMP $C835                       A:FF X:00 Y:00 P:EF SP:FB PPU:  2,152 CYC:278
C835  EA        NOP                             A:FF X:00 Y:00 P:EF SP:FB PPU:  2,161 CYC:281
C836  A9 04     LDA #$04                        A:FF X:00 Y:00 P:EF SP:FB PPU:  2,167 CYC:283
C838  48        PHA                             A:04 X:00 Y:00 P:6D SP:FB PPU:  2,173 CYC:285
C839  28        PLP                             A:04 X:00 Y:00 P:6D SP:FA PPU:  2,182 CYC:288
C83A  F0 09     BEQ $C845                       A:04 X:00 Y:00 P:24 SP:FB PPU:  2,194 CYC:292
C83C  30 07     BMI $C845                       A:04 X:00 Y:00 P:24 SP:FB PPU:  2,200 CYC:294
C83E  70 05     BVS $C845                       A:04 X:00 Y:00 P:24 SP:FB PPU:  2,206 CYC:296
C840  B0 03     BCS $C845                       A:04 X:00 Y:00 P:24 SP:FB PPU:  2,212 CYC:298
C842  4C 49 C8  JMP $C849                       A:04 X:00 Y:00 P:24 SP:FB PPU:  2,218 CYC:300
C849  EA        NOP                             A:04 X:00 Y:00 P:24 SP:FB PPU:  2,227 CYC:303
C84A  F8        SED                             A:04 X:00 Y:00 P:24 SP:FB PPU:  2,233 CYC:305
C84B  A9 FF     LDA #$FF                        A:04 X:00 Y:00 P:2C SP:FB PPU:  2,239 CYC:307
C84D  85 01     STA $01 = 80                    A:FF X:00 Y:00 P:AC SP:FB PPU:  2,245 CYC:309
C84F  24 01     BIT $01 = FF                    A:FF X:00 Y:00 P:AC SP:FB PPU:  2,254 CYC:312
C851  18        CLC                             A:FF X:00 Y:00 P:EC SP:FB PPU:  2,263 CYC:315
C852  A9 00     LDA #$00                        A:FF X:00 Y:00 P:EC SP:FB PPU:  2,269 CYC:317
C854  48        PHA                             A:00 X:00 Y:00 P:6E SP:FB PPU:  2,275 CYC:319
C855  A9 FF     LDA #$FF                        A:00 X:00 Y:00 P:6E SP:FA PPU:  2,284 CYC:322
C857  68        PLA                             A:FF X:00 Y:00 P:EC SP:FA PPU:  2,290 CYC:324
C858  D0 09     BNE $C863                       A:00 X:00 Y:00 P:6E SP:FB PPU:  2,302 CYC:328
C85A  30 07     BMI $C863                       A:00 X:00 Y:00 P:6E SP:FB PPU:  2,308 CYC:330
C85C  50 05     BVC $C863                       A:00 X:00 Y:00 P:6E SP:FB PPU:  2,314 CYC:332
C85E  B0 03     BCS $C863                       A:00 X:00 Y:00 P:6E SP:FB PPU:  2,320 CYC:334
C860  4C 67 C8  JMP $C867                       A:00 X:00 Y:00 P:6E SP:FB PPU:  2,326 CYC:336
C867  EA        NOP                             A:00 X:00 Y:00 P:6E SP:FB PPU:  2,335 CYC:339
C868  A9 00     LDA #$00                        A:00 X:00 Y:00 P:6E SP:FB PPU:  3,  0 CYC:341
C86A  85 01     STA $01 = FF                    A:00 X:00 Y:00 P:6E SP:FB PPU:  3,  6 CYC:343
C86C  24 01     BIT $01 = 00                    A:00 X:00 Y:00 P:6E SP:FB PPU:  3, 15 CYC:346
C86E  38        SEC                             A:00 X:00 Y:00 P:2E SP:FB PPU:  3, 24 CYC:349
C86F  A9 FF     LDA #$FF                        A:00 X:00 Y:00 P:2F SP:FB PPU:  3, 30 CYC:351
C871  48        PHA                             A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 36 CYC:353
C872  A9 00     LDA #$00                        A:FF X:00 Y:00 P:AD SP:FA PPU:  3, 45 CYC:356
C874  68        PLA                             A:00 X:00 Y:00 P:2F SP:FA PPU:  3, 51 CYC:358
C875  F0 09     BEQ $C880                       A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 63 CYC:362
C877  10 07     BPL $C880                       A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 69 CYC:364
C879  70 05     BVS $C880                       A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 75 CYC:366
C87B  90 03     BCC $C880                       A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 81 CYC:368
C87D  4C 84 C8  JMP $C884                       A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 87 CYC:370
C884  60        RTS                             A:FF X:00 Y:00 P:AD SP:FB PPU:  3, 96 CYC:373
C603  20 85 C8  JSR $C885                       A:FF X:00 Y:00 P:AD SP:FD PPU:  3,114 CYC:379
C885  EA        NOP                             A:FF X:00 Y:00 P:AD SP:FB PPU:  3,132 CYC:385
C886  18        CLC                             A:FF X:00 Y:00 P:AD SP:FB PPU:  3,138 CYC:387
C887  A9 FF     LDA #$FF                        A:FF X:00 Y:00 P:AC SP:FB PPU:  3,144 CYC:389
C889  85 01     STA $01 = 00                    A:FF X:00 Y:00 P:AC SP:FB PPU:  3,150 CYC:391
C88B  24 01     BIT $01 = FF                    A:FF X:00 Y:00 P:AC SP:FB PPU:  3,159 CYC:394
C88D  A9 55     LDA #$55                        A:FF X:00 Y:00 P:EC SP:FB PPU:  3,168 CYC:397
C88F  09 AA     ORA #$AA                        A:55 X:00 Y:00 P:6C SP:FB PPU:  3,174 CYC:399
C891  B0 0B     BCS $C89E                       A:FF X:00 Y:00 P:EC SP:FB PPU:  3,180 CYC:401
C893  10 09     BPL $C89E                       A:FF X:00 Y:00 P:EC SP:FB PPU:  3,186 CYC:403
C895  C9 FF     CMP #$FF                        A:FF X:00 Y:00 P:EC SP:FB PPU:  3,192 CYC:405
C897  D0 05     BNE $C89E                       A:FF X:00 Y:00 P:6F SP:FB PPU:  3,198 CYC:407
C899  50 03     BVC $C89E                       A:FF X:00 Y:00 P:6F SP:FB PPU:  3,204 CYC:409
C89B  4C A2 C8  JMP $C8A2                       A:FF X:00 Y:00 P:6F SP:FB PPU:  3,210 CYC:411
C8A2  EA        NOP                             A:FF X:00 Y:00 P:6F SP:FB PPU:  3,219 CYC:414
C8A3  38        SEC                             A:FF X:00 Y:00 P:6F SP:FB PPU:  3,225 CYC:416
C8A4  B8        CLV                             A:FF X:00 Y:00 P:6F SP:FB PPU:  3,231 CYC:418
C8A5  A9 00     LDA #$00                        A:FF X:00 Y:00 P:2F SP:FB PPU:  3,237 CYC:420
C8A7  09 00     ORA #$00                        A:00 X:00 Y:00 P:2F SP:FB PPU:  3,243 CYC:422
C8A9  D0 09     BNE $C8B4                       A:00 X:00 Y:00 P:2F SP:FB PPU:  3,249 CYC:424
C8AB  70 07     BVS $C8B4                       A:00 X:00 Y:00 P:2F SP:FB PPU:  3,255 CYC:426
C8AD  90 05     BCC $C8B4                       A:00 X:00 Y:00 P:2F SP:FB PPU:  3,261 CYC:428
C8AF  30 03     BMI $C8B4                       A:00 X:00 Y:00 P:2F SP:FB PPU:  3,267 CYC:430
C8B1  4C B8 C8  JMP $C8B8                       A:00 X:00 Y:00 P:2F SP:FB PPU:  3,273 CYC:432
C8B8  EA        NOP                             A:00 X:00 Y:00 P:2F SP:FB PPU:  3,282 CYC:435
C8B9  18        CLC                             A:00 X:00 Y:00 P:2F SP:FB PPU:  3,288 CYC:437
C8BA  24 01     BIT $01 = FF                    A:00 X:00 Y:00 P:2E SP:FB PPU:  3,294 CYC:439
C8BC  A9 55     LDA #$55                        A:00 X:00 Y:00 P:EE SP:FB PPU:  3,303 CYC:442
C8BE  29 AA     AND #$AA                        A:55 X:00 Y:00 P:6C SP:FB PPU:  3,309 CYC:444
C8C0  D0 09     BNE $C8CB                       A:00 X:00 Y:00 P:6E SP:FB PPU:  3,315 CYC:446
C8C2  50 07     BVC $C8CB                       A:00 X:00 Y:00 P:6E SP:FB PPU:  3,321 CYC:448
C8C4  B0 05     BCS $C8CB                       A:00 X:00 Y:00 P:6E SP:FB PPU:  3,327 CYC:450
C8C6  30 03     BMI $C8CB                       A:00 X:00 Y:00 P:6E SP:FB PPU:  3,333 CYC:452
C8C8  4C CF C8  JMP $C8CF                       A:00 X:00 Y:00 P:6E SP:FB PPU:  3,339 CYC:454
C8CF  EA        NOP                             A:00 X:00 Y:00 P:6E SP:FB PPU:  4,  7 CYC:457
C8D0  38        SEC                             A:00 X:00 Y:00 P:6E SP:FB PPU:  4, 13 CYC:459
C8D1  B8        CLV                             A:00 X:00 Y:00 P:6F SP:FB PPU:  4, 19 CYC:461
C8D2  A9 F8     LDA #$F8                        A:00 X:00 Y:00 P:2F SP:FB PPU:  4, 25 CYC:463
C8D4  29 EF     AND #$EF                        A:F8 X:00 Y:00 P:AD SP:FB PPU:  4, 31 CYC:465
C8D6  90 0B     BCC $C8E3                       A:E8 X:00 Y:00 P:AD SP:FB PPU:  4, 37 CYC:467
C8D8  10 09     BPL $C8E3                       A:E8 X:00 Y:00 P:AD SP:FB PPU:  4, 43 CYC:469
C8DA  C9 E8     CMP #$E8                        A:E8 X:00 Y:00 P:AD SP:FB PPU:  4, 49 CYC:471
C8DC  D0 05     BNE $C8E3                       A:E8 X:00 Y:00 P:2F SP:FB PPU:  4, 55 CYC:473
C8DE  70 03     BVS $C8E3                       A:E8 X:00 Y:00 P:2F SP:FB PPU:  4, 61 CYC:475
C8E0  4C E7 C8  JMP $C8E7                       A:E8 X:00 Y:00 P:2F SP:FB PPU:  4, 67 CYC:477
C8E7  EA        NOP                             A:E8 X:00 Y:00 P:2F SP:FB PPU:  4, 76 CYC:480
C8E8  18        CLC                             A:E8 X:00 Y:00 P:2F SP:FB PPU:  4, 82 CYC:482
C8E9  24 01     BIT $01 = FF                    A:E8 X:00 Y:00 P:2E SP:FB PPU:  4, 88 CYC:484
C8EB  A9 5F     LDA #$5F                        A:E8 X:00 Y:00 P:EC SP:FB PPU:  4, 97 CYC:487
C8ED  49 AA     EOR #$AA                        A:5F X:00 Y:00 P:6C SP:FB PPU:  4,103 CYC:489
C8EF  B0 0B     BCS $C8FC                       A:F5 X:00 Y:00 P:EC SP:FB PPU:  4,109 CYC:491
C8F1  10 09     BPL $C8FC                       A:F5 X:00 Y:00 P:EC SP:FB PPU:  4,115 CYC:493
C8F3  C9 F5     CMP #$F5                        A:F5 X:00 Y:00 P:EC SP:FB PPU:  4,121 CYC:495
C8F5  D0 05     BNE $C8FC                       A:F5 X:00 Y:00 P:6F SP:FB PPU:  4,127 CYC:497
C8F7  50 03     BVC $C8FC                       A:F5 X:00 Y:00 P:6F SP:FB PPU:  4,133 CYC:499
C8F9  4C 00 C9  JMP $C900                       A:F5 X:00 Y:00 P:6F SP:FB PPU:  4,139 CYC:501
C900  EA        NOP                             A:F5 X:00 Y:00 P:6F SP:FB PPU:  4,148 CYC:504
C901  38        SEC                             A:F5 X:00 Y:00 P:6F SP:FB PPU:  4,154 CYC:506
C902  B8        CLV                             A:F5 X:00 Y:00 P:6F SP:FB PPU:  4,160 CYC:508
C903  A9 70     LDA #$70                        A:F5 X:00 Y:00 P:2F SP:FB PPU:  4,166 CYC:510
C905  49 70     EOR #$70                        A:70 X:00 Y:00 P:2D SP:FB PPU:  4,172 CYC:512
C907  D0 09     BNE $C912                       A:00 X:00 Y:00 P:2F SP:FB PPU:  4,178 CYC:514
C909  70 07     BVS $C912                       A:00 X:00 Y:00 P:2F SP:FB PPU:  4,184 CYC:516
C90B  90 05     BCC $C912                       A:00 X:00 Y:00 P:2F SP:FB PPU:  4,190 CYC:518
C90D  30 03     BMI $C912                       A:00 X:00 Y:00 P:2F SP:FB PPU:  4,196 CYC:520
C90F  4C 16 C9  JMP $C916                       A:00 X:00 Y:00 P:2F SP:FB PPU:  4,202 CYC:522
C916  EA        NOP                             A:00 X:00 Y:00 P:2F SP:FB PPU:  4,211 CYC:525
C917  18        CLC                             A:00 X:00 Y:00 P:2F SP:FB PPU:  4,217 CYC:527
C918  24 01     BIT $01 = FF                    A:00 X:00 Y:00 P:2E SP:FB PPU:  4,223 CYC:529
C91A  A9 00     LDA #$00                        A:00 X:00 Y:00 P:EE SP:FB PPU:  4,232 CYC:532
C91C  69 69     ADC #$69                        A:00 X:00 Y:00 P:6E SP:FB PPU:  4,238 CYC:534
C91E  30 0B     BMI $C92B                       A:69 X:00 Y:00 P:2C SP:FB PPU:  4,244 CYC:536
C920  B0 09     BCS $C92B                       A:69 X:00 Y:00 P:2C SP:FB PPU:  4,250 CYC:538
C922  C9 69     CMP #$69                        A:69 X:00 Y:00 P:2C SP:FB PPU:  4,256 CYC:540
C924  D0 05     BNE $C92B                       A:69 X:00 Y:00 P:2F SP:FB PPU:  4,262 CYC:542
C926  70 03     BVS $C92B                       A:69 X:00 Y:00 P:2F SP:FB PPU:  4,268 CYC:544
C928  4C 2F C9  JMP $C92F                       A:69 X:00 Y:00 P:2F SP:FB PPU:  4,274 CYC:546
C92F  EA        NOP                             A:69 X:00 Y:00 P:2F SP:FB PPU:  4,283 CYC:549
C930  38        SEC                             A:69 X:00 Y:00 P:2F SP:FB PPU:  4,289 CYC:551
C931  F8        SED                             A:69 X:00 Y:00 P:2F SP:FB PPU:  4,295 CYC:553
C932  24 01     BIT $01 = FF                    A:69 X:00 Y:00 P:2F SP:FB PPU:  4,301 CYC:555
C934  A9 01     LDA #$01                        A:69 X:00 Y:00 P:ED SP:FB PPU:  4,310 CYC:558
C936  69 69     ADC #$69                        A:01 X:00 Y:00 P:6D SP:FB PPU:  4,316 CYC:560
C938  30 0B     BMI $C945                       A:6B X:00 Y:00 P:2C SP:FB PPU:  4,322 CYC:562
C93A  B0 09     BCS $C945                       A:6B X:00 Y:00 P:2C SP:FB PPU:  4,328 CYC:564
C93C  C9 6B     CMP #$6B                        A:6B X:00 Y:00 P:2C SP:FB PPU:  4,334 CYC:566
C93E  D0 05     BNE $C945                       A:6B X:00 Y:00 P:2F SP:FB PPU:  4,340 CYC:568
C940  70 03     BVS $C945                       A:6B X:00 Y:00 P:2F SP:FB PPU:  5,  5 CYC:570
C942  4C 49 C9  JMP $C949                       A:6B X:00 Y:00 P:2F SP:FB PPU:  5, 11 CYC:572
C949  EA        NOP                             A:6B X:00 Y:00 P:2F SP:FB PPU:  5, 20 CYC:575
C94A  D8        CLD                             A:6B X:00 Y:00 P:2F SP:FB PPU:  5, 26 CYC:577
C94B  38        SEC                             A:6B X:00 Y:00 P:27 SP:FB PPU:  5, 32 CYC:579
C94C  B8        CLV                             A:6B X:00 Y:00 P:27 SP:FB PPU:  5, 38 CYC:581
C94D  A9 7F     LDA #$7F                        A:6B X:00 Y:00 P:27 SP:FB PPU:  5, 44 CYC:583
C94F  69 7F     ADC #$7F                        A:7F X:00 Y:00 P:25 SP:FB PPU:  5, 50 CYC:585
C951  10 0B     BPL $C95E                       A:FF X:00 Y:00 P:E4 SP:FB PPU:  5, 56 CYC:587
C953  B0 09     BCS $C95E                       A:FF X:00 Y:00 P:E4 SP:FB PPU:  5, 62 CYC:589
C955  C9 FF     CMP #$FF                        A:FF X:00 Y:00 P:E4 SP:FB PPU:  5, 68 CYC:591
C957  D0 05     BNE $C95E                       A:FF X:00 Y:00 P:67 SP:FB PPU:  5, 74 CYC:593
C959  50 03     BVC $C95E                       A:FF X:00 Y:00 P:67 SP:FB PPU:  5, 80 CYC:595
C95B  4C 62 C9  JMP $C962                       A:FF X:00 Y:00 P:67 SP:FB PPU:  5, 86 CYC:597
C962  EA        NOP                             A:FF X:00 Y:00 P:67 SP:FB PPU:  5, 95 CYC:600
C963  18        CLC                             A:FF X:00 Y:00 P:67 SP:FB PPU:  5,101 CYC:602
C964  24 01     BIT $01 = FF                    A:FF X:00 Y:00 P:66 SP:FB PPU:  5,107 CYC:604
C966  A9 7F     LDA #$7F                        A:FF X:00 Y:00 P:E4 SP:FB PPU:  5,116 CYC:607
C968  69 80     ADC #$80                        A:7F X:00 Y:00 P:64 SP:FB PPU:  5,122 CYC:609
C96A  10 0B     BPL $C977                       A:FF X:00 Y:00 P:A4 SP:FB PPU:  5,128 CYC:611
C96C  B0 09     BCS $C977                       A:FF X:00 Y:00 P:A4 SP:FB PPU:  5,134 CYC:613
C96E  C9 FF     CMP #$FF                        A:FF X:00 Y:00 P:A4 SP:FB PPU:  5,140 CYC:615
C970  D0 05     BNE $C977                       A:FF X:00 Y:00 P:27 SP:FB PPU:  5,146 CYC:617
C972  70 03     BVS $C977                       A:FF X:00 Y:00 P:27 SP:FB PPU:  5,152 CYC:619
C974  4C 7B C9  JMP $C97B                       A:FF X:00 Y:00 P:27 SP:FB PPU:  5,158 CYC:621
C97B  EA        NOP                             A:FF X:00 Y:00 P:27 SP:FB PPU:  5,167 CYC:624
C97C  38        SEC                             A:FF X:00 Y:00 P:27 SP:FB PPU:  5,173 CYC:626
C97D  B8        CLV                             A:FF X:00 Y:00 P:27 SP:FB PPU:  5,179 CYC:628
C97E  A9 7F     LDA #$7F                        A:FF X:00 Y:00 P:27 SP:FB PPU:  5,185 CYC:630
C980  69 80     ADC #$80                        A:7F X:00 Y:00 P:25 SP:FB PPU:  5,191 CYC:632
C982  D0 09     BNE $C98D                       A:00 X:00 Y:00 P:27 SP:FB PPU:  5,197 CYC:634
C984  30 07     BMI $C98D                       A:00 X:00 Y:00 P:27 SP:FB PPU:  5,203 CYC:636
C986  70 05     BVS $C98D                       A:00 X:00 Y:00 P:27 SP:FB PPU:  5,209 CYC:638
C988  90 03     BCC $C98D                       A:00 X:00 Y:00 P:27 SP:FB PPU:  5,215 CYC:640
C98A  4C 91 C9  JMP $C991                       A:00 X:00 Y:00 P:27 SP:FB PPU:  5,221 CYC:642
C991  EA        NOP                             A:00 X:00 Y:00 P:27 SP:FB PPU:  5,230 CYC:645
C992  38        SEC                             A:00 X:00 Y:00 P:27 SP:FB PPU:  5,236 CYC:647
C993  B8        CLV                             A:00 X:00 Y:00 P:27 SP:FB PPU:  5,242 CYC:649
C994  A9 9F     LDA #$9F                        A:00 X:00 Y:00 P:27 SP:FB PPU:  5,248 CYC:651
C996  F0 09     BEQ $C9A1                       A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,254 CYC:653
C998  10 07     BPL $C9A1                       A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,260 CYC:655
C99A  70 05     BVS $C9A1                       A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,266 CYC:657
C99C  90 03     BCC $C9A1                       A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,272 CYC:659
C99E  4C A5 C9  JMP $C9A5                       A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,278 CYC:661
C9A5  EA        NOP                             A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,287 CYC:664
C9A6  18        CLC                             A:9F X:00 Y:00 P:A5 SP:FB PPU:  5,293 CYC:666
C9A7  24 01     BIT $01 = FF                    A:9F X:00 Y:00 P:A4 SP:FB PPU:  5,299 CYC:668
C9A9  A9 00     LDA #$00                        A:9F X:00 Y:00 P:E4 SP:FB PPU:  5,308 CYC:671
C9AB  D0 09     BNE $C9B6                       A:00 X:00 Y:00 P:66 SP:FB PPU:  5,314 CYC:673
C9AD  30 07     BMI $C9B6                       A:00 X:00 Y:00 P:66 SP:FB PPU:  5,320 CYC:675
C9AF  50 05     BVC $C9B6                       A:00 X:00 Y:00 P:66 SP:FB PPU:  5,326 CYC:677
C9B1  B0 03     BCS $C9B6                       A:00 X:00 Y:00 P:66 SP:FB PPU:  5,332 CYC:679
C9B3  4C BA C9  JMP $C9BA                       A:00 X:00 Y:00 P:66 SP:FB PPU:  5,338 CYC:681
C9BA  EA        NOP                             A:00 X:00 Y:00 P:66 SP:FB PPU:  6,  6 CYC:684
C9BB  24 01     BIT $01 = FF                    A:00 X:00 Y:00 P:66 SP:FB PPU:  6, 12 CYC:686
C9BD  A9 40     LDA #$40                        A:00 X:00 Y:00 P:E6 SP:FB PPU:  6, 21 CYC:689
C9BF  C9 40     CMP #$40                        A:40 X:00 Y:00 P:64 SP:FB PPU:  6, 27 CYC:691
C9C1  30 09     BMI $C9CC                       A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 33 CYC:693
C9C3  90 07     BCC $C9CC                       A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 39 CYC:695
C9C5  D0 05     BNE $C9CC                       A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 45 CYC:697
C9C7  50 03     BVC $C9CC                       A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 51 CYC:699
C9C9  4C D0 C9  JMP $C9D0                       A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 57 CYC:701
C9D0  EA        NOP                             A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 66 CYC:704
C9D1  B8        CLV                             A:40 X:00 Y:00 P:67 SP:FB PPU:  6, 72 CYC:706
C9D2  C9 3F     CMP #$3F                        A:40 X:00 Y:00 P:27 SP:FB PPU:  6, 78 CYC:708
C9D4  F0 09     BEQ $C9DF                       A:40 X:00 Y:00 P:25 SP:FB PPU:  6, 84 CYC:710
C9D6  30 07     BMI $C9DF                       A:40 X:00 Y:00 P:25 SP:FB PPU:  6, 90 CYC:712
C9D8  90 05     BCC $C9DF                       A:40 X:00 Y:00 P:25 SP:FB PPU:  6, 96 CYC:714
C9DA  70 03     BVS $C9DF                       A:40 X:00 Y:00 P:25 SP:FB PPU:  6,102 CYC:716
C9DC  4C E3 C9  JMP $C9E3                       A:40 X:00 Y:00 P:25 SP:FB PPU:  6,108 CYC:718
C9E3  EA        NOP                             A:40 X:00 Y:00 P:25 SP:FB PPU:  6,117 CYC:721
C9E4  C9 41     CMP #$41                        A:40 X:00 Y:00 P:25 SP:FB PPU:  6,123 CYC:723
C9E6  F0 07     BEQ $C9EF                       A:40 X:00 Y:00 P:A4 SP:FB PPU:  6,129 CYC:725
C9E8  10 05     BPL $C9EF                       A:40 X:00 Y:00 P:A4 SP:FB PPU:  6,135 CYC:727
C9EA  10 03     BPL $C9EF                       A:40 X:00 Y:00 P:A4 SP:FB PPU:  6,141 CYC:729
C9EC  4C F3 C9  JMP $C9F3                       A:40 X:00 Y:00 P:A4 SP:FB PPU:  6,147 CYC:731
C9F3  EA        NOP                             A:40 X:00 Y:00 P:A4 SP:FB PPU:  6,156 CYC:734
C9F4  A9 80     LDA #$80                        A:40 X:00 Y:00 P:A4 SP:FB PPU:  6,162 CYC:736
C9F6  C9 00     CMP #$00                        A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,168 CYC:738
C9F8  F0 07     BEQ $CA01                       A:80 X:00 Y:00 P:A5 SP:FB PPU:  6,174 CYC:740
C9FA  10 05     BPL $CA01                       A:80 X:00 Y:00 P:A5 SP:FB PPU:  6,180 CYC:742
C9FC  90 03     BCC $CA01                       A:80 X:00 Y:00 P:A5 SP:FB PPU:  6,186 CYC:744
C9FE  4C 05 CA  JMP $CA05                       A:80 X:00 Y:00 P:A5 SP:FB PPU:  6,192 CYC:746
CA05  EA        NOP                             A:80 X:00 Y:00 P:A5 SP:FB PPU:  6,201 CYC:749
CA06  C9 80     CMP #$80                        A:80 X:00 Y:00 P:A5 SP:FB PPU:  6,207 CYC:751
CA08  D0 07     BNE $CA11                       A:80 X:00 Y:00 P:27 SP:FB PPU:  6,213 CYC:753
CA0A  30 05     BMI $CA11                       A:80 X:00 Y:00 P:27 SP:FB PPU:  6,219 CYC:755
CA0C  90 03     BCC $CA11                       A:80 X:00 Y:00 P:27 SP:FB PPU:  6,225 CYC:757
CA0E  4C 15 CA  JMP $CA15                       A:80 X:00 Y:00 P:27 SP:FB PPU:  6,231 CYC:759
CA15  EA        NOP                             A:80 X:00 Y:00 P:27 SP:FB PPU:  6,240 CYC:762
CA16  C9 81     CMP #$81                        A:80 X:00 Y:00 P:27 SP:FB PPU:  6,246 CYC:764
CA18  B0 07     BCS $CA21                       A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,252 CYC:766
CA1A  F0 05     BEQ $CA21                       A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,258 CYC:768
CA1C  10 03     BPL $CA21                       A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,264 CYC:770
CA1E  4C 25 CA  JMP $CA25                       A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,270 CYC:772
CA25  EA        NOP                             A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,279 CYC:775
CA26  C9 7F     CMP #$7F                        A:80 X:00 Y:00 P:A4 SP:FB PPU:  6,285 CYC:777
CA28  90 07     BCC $CA31                       A:80 X:00 Y:00 P:25 SP:FB PPU:  6,291 CYC:779
CA2A  F0 05     BEQ $CA31                       A:80 X:00 Y:00 P:25 SP:FB PPU:  6,297 CYC:781
CA2C  30 03     BMI $CA31                       A:80 X:00 Y:00 P:25 SP:FB PPU:  6,303 CYC:783
CA2E  4C 35 CA  JMP $CA35                       A:80 X:00 Y:00 P:25 SP:FB PPU:  6,309 CYC:785
CA35  EA        NOP                             A:80 X:00 Y:00 P:25 SP:FB PPU:  6,318 CYC:788
CA36  24 01     BIT $01 = FF                    A:80 X:00 Y:00 P:25 SP:FB PPU:  6,324 CYC:790
CA38  A0 40     LDY #$40                        A:80 X:00 Y:00 P:E5 SP:FB PPU:  6,333 CYC:793
CA3A  C0 40     CPY #$40                        A:80 X:00 Y:40 P:65 SP:FB PPU:  6,339 CYC:795
CA3C  D0 09     BNE $CA47                       A:80 X:00 Y:40 P:67 SP:FB PPU:  7,  4 CYC:797
CA3E  30 07     BMI $CA47                       A:80 X:00 Y:40 P:67 SP:FB PPU:  7, 10 CYC:799
CA40  90 05     BCC $CA47                       A:80 X:00 Y:40 P:67 SP:FB PPU:  7, 16 CYC:801
CA42  50 03     BVC $CA47                       A:80 X:00 Y:40 P:67 SP:FB PPU:  7, 22 CYC:803
CA44  4C 4B CA  JMP $CA4B                       A:80 X:00 Y:40 P:67 SP:FB PPU:  7, 28 CYC:805
CA4B  EA        NOP                             A:80 X:00 Y:40 P:67 SP:FB PPU:  7, 37 CYC:808
CA4C  B8        CLV                             A:80 X:00 Y:40 P:67 SP:FB PPU:  7, 43 CYC:810
CA4D  C0 3F     CPY #$3F                        A:80 X:00 Y:40 P:27 SP:FB PPU:  7, 49 CYC:812
CA4F  F0 09     BEQ $CA5A                       A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 55 CYC:814
CA51  30 07     BMI $CA5A                       A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 61 CYC:816
CA53  90 05     BCC $CA5A                       A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 67 CYC:818
CA55  70 03     BVS $CA5A                       A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 73 CYC:820
CA57  4C 5E CA  JMP $CA5E                       A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 79 CYC:822
CA5E  EA        NOP                             A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 88 CYC:825
CA5F  C0 41     CPY #$41                        A:80 X:00 Y:40 P:25 SP:FB PPU:  7, 94 CYC:827
CA61  F0 07     BEQ $CA6A                       A:80 X:00 Y:40 P:A4 SP:FB PPU:  7,100 CYC:829
CA63  10 05     BPL $CA6A                       A:80 X:00 Y:40 P:A4 SP:FB PPU:  7,106 CYC:831
CA65  10 03     BPL $CA6A                       A:80 X:00 Y:40 P:A4 SP:FB PPU:  7,112 CYC:833
CA67  4C 6E CA  JMP $CA6E                       A:80 X:00 Y:40 P:A4 SP:FB PPU:  7,118 CYC:835
CA6E  EA        NOP                             A:80 X:00 Y:40 P:A4 SP:FB PPU:  7,127 CYC:838
CA6F  A0 80     LDY #$80                        A:80 X:00 Y:40 P:A4 SP:FB PPU:  7,133 CYC:840
CA71  C0 00     CPY #$00                        A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,139 CYC:842
CA73  F0 07     BEQ $CA7C                       A:80 X:00 Y:80 P:A5 SP:FB PPU:  7,145 CYC:844
CA75  10 05     BPL $CA7C                       A:80 X:00 Y:80 P:A5 SP:FB PPU:  7,151 CYC:846
CA77  90 03     BCC $CA7C                       A:80 X:00 Y:80 P:A5 SP:FB PPU:  7,157 CYC:848
CA79  4C 80 CA  JMP $CA80                       A:80 X:00 Y:80 P:A5 SP:FB PPU:  7,163 CYC:850
CA80  EA        NOP                             A:80 X:00 Y:80 P:A5 SP:FB PPU:  7,172 CYC:853
CA81  C0 80     CPY #$80                        A:80 X:00 Y:80 P:A5 SP:FB PPU:  7,178 CYC:855
CA83  D0 07     BNE $CA8C                       A:80 X:00 Y:80 P:27 SP:FB PPU:  7,184 CYC:857
CA85  30 05     BMI $CA8C                       A:80 X:00 Y:80 P:27 SP:FB PPU:  7,190 CYC:859
CA87  90 03     BCC $CA8C                       A:80 X:00 Y:80 P:27 SP:FB PPU:  7,196 CYC:861
CA89  4C 90 CA  JMP $CA90                       A:80 X:00 Y:80 P:27 SP:FB PPU:  7,202 CYC:863
CA90  EA        NOP                             A:80 X:00 Y:80 P:27 SP:FB PPU:  7,211 CYC:866
CA91  C0 81     CPY #$81                        A:80 X:00 Y:80 P:27 SP:FB PPU:  7,217 CYC:868
CA93  B0 07     BCS $CA9C                       A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,223 CYC:870
CA95  F0 05     BEQ $CA9C                       A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,229 CYC:872
CA97  10 03     BPL $CA9C                       A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,235 CYC:874
CA99  4C A0 CA  JMP $CAA0                       A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,241 CYC:876
CAA0  EA        NOP                             A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,250 CYC:879
CAA1  C0 7F     CPY #$7F                        A:80 X:00 Y:80 P:A4 SP:FB PPU:  7,256 CYC:881
CAA3  90 07     BCC $CAAC                       A:80 X:00 Y:80 P:25 SP:FB PPU:  7,262 CYC:883
CAA5  F0 05     BEQ $CAAC                       A:80 X:00 Y:80 P:25 SP:FB PPU:  7,268 CYC:885
CAA7  30 03     BMI $CAAC                       A:80 X:00 Y:80 P:25 SP:FB PPU:  7,274 CYC:887
CAA9  4C B0 CA  JMP $CAB0                       A:80 X:00 Y:80 P:25 SP:FB PPU:  7,280 CYC:889
CAB0  EA        NOP                             A:80 X:00 Y:80 P:25 SP:FB PPU:  7,289 CYC:892
CAB1  24 01     BIT $01 = FF                    A:80 X:00 Y:80 P:25 SP:FB PPU:  7,295 CYC:894
CAB3  A2 40     LDX #$40                        A:80 X:00 Y:80 P:E5 SP:FB PPU:  7,304 CYC:897
CAB5  E0 40     CPX #$40                        A:80 X:40 Y:80 P:65 SP:FB PPU:  7,310 CYC:899
CAB7  D0 09     BNE $CAC2                       A:80 X:40 Y:80 P:67 SP:FB PPU:  7,316 CYC:901
CAB9  30 07     BMI $CAC2                       A:80 X:40 Y:80 P:67 SP:FB PPU:  7,322 CYC:903
CABB  90 05     BCC $CAC2                       A:80 X:40 Y:80 P:67 SP:FB PPU:  7,328 CYC:905
CABD  50 03     BVC $CAC2                       A:80 X:40 Y:80 P:67 SP:FB PPU:  7,334 CYC:907
CABF  4C C6 CA  JMP $CAC6                       A:80 X:40 Y:80 P:67 SP:FB PPU:  7,340 CYC:909
CAC6  EA        NOP                             A:80 X:40 Y:80 P:67 SP:FB PPU:  8,  8 CYC:912
CAC7  B8        CLV                             A:80 X:40 Y:80 P:67 SP:FB PPU:  8, 14 CYC:914
CAC8  E0 3F     CPX #$3F                        A:80 X:40 Y:80 P:27 SP:FB PPU:  8, 20 CYC:916
CACA  F0 09     BEQ $CAD5                       A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 26 CYC:918
CACC  30 07     BMI $CAD5                       A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 32 CYC:920
CACE  90 05     BCC $CAD5                       A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 38 CYC:922
CAD0  70 03     BVS $CAD5                       A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 44 CYC:924
CAD2  4C D9 CA  JMP $CAD9                       A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 50 CYC:926
CAD9  EA        NOP                             A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 59 CYC:929
CADA  E0 41     CPX #$41                        A:80 X:40 Y:80 P:25 SP:FB PPU:  8, 65 CYC:931
CADC  F0 07     BEQ $CAE5                       A:80 X:40 Y:80 P:A4 SP:FB PPU:  8, 71 CYC:933
CADE  10 05     BPL $CAE5                       A:80 X:40 Y:80 P:A4 SP:FB PPU:  8, 77 CYC:935
CAE0  10 03     BPL $CAE5                       A:80 X:40 Y:80 P:A4 SP:FB PPU:  8, 83 CYC:937
CAE2  4C E9 CA  JMP $CAE9                       A:80 X:40 Y:80 P:A4 SP:FB PPU:  8, 89 CYC:939
CAE9  EA        NOP                             A:80 X:40 Y:80 P:A4 SP:FB PPU:  8, 98 CYC:942
CAEA  A2 80     LDX #$80                        A:80 X:40 Y:80 P:A4 SP:FB PPU:  8,104 CYC:944
CAEC  E0 00     CPX #$00                        A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,110 CYC:946
CAEE  F0 07     BEQ $CAF7                       A:80 X:80 Y:80 P:A5 SP:FB PPU:  8,116 CYC:948
CAF0  10 05     BPL $CAF7                       A:80 X:80 Y:80 P:A5 SP:FB PPU:  8,122 CYC:950
CAF2  90 03     BCC $CAF7                       A:80 X:80 Y:80 P:A5 SP:FB PPU:  8,128 CYC:952
CAF4  4C FB CA  JMP $CAFB                       A:80 X:80 Y:80 P:A5 SP:FB PPU:  8,134 CYC:954
CAFB  EA        NOP                             A:80 X:80 Y:80 P:A5 SP:FB PPU:  8,143 CYC:957
CAFC  E0 80     CPX #$80                        A:80 X:80 Y:80 P:A5 SP:FB PPU:  8,149 CYC:959
CAFE  D0 07     BNE $CB07                       A:80 X:80 Y:80 P:27 SP:FB PPU:  8,155 CYC:961
CB00  30 05     BMI $CB07                       A:80 X:80 Y:80 P:27 SP:FB PPU:  8,161 CYC:963
CB02  90 03     BCC $CB07                       A:80 X:80 Y:80 P:27 SP:FB PPU:  8,167 CYC:965
CB04  4C 0B CB  JMP $CB0B                       A:80 X:80 Y:80 P:27 SP:FB PPU:  8,173 CYC:967
CB0B  EA        NOP                             A:80 X:80 Y:80 P:27 SP:FB PPU:  8,182 CYC:970
CB0C  E0 81     CPX #$81                        A:80 X:80 Y:80 P:27 SP:FB PPU:  8,188 CYC:972
CB0E  B0 07     BCS $CB17                       A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,194 CYC:974
CB10  F0 05     BEQ $CB17                       A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,200 CYC:976
CB12  10 03     BPL $CB17                       A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,206 CYC:978
CB14  4C 1B CB  JMP $CB1B                       A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,212 CYC:980
CB1B  EA        NOP                             A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,221 CYC:983
CB1C  E0 7F     CPX #$7F                        A:80 X:80 Y:80 P:A4 SP:FB PPU:  8,227 CYC:985
CB1E  90 07     BCC $CB27                       A:80 X:80 Y:80 P:25 SP:FB PPU:  8,233 CYC:987
CB20  F0 05     BEQ $CB27                       A:80 X:80 Y:80 P:25 SP:FB PPU:  8,239 CYC:989
CB22  30 03     BMI $CB27                       A:80 X:80 Y:80 P:25 SP:FB PPU:  8,245 CYC:991
CB24  4C 2B CB  JMP $CB2B                       A:80 X:80 Y:80 P:25 SP:FB PPU:  8,251 CYC:993
CB2B  EA        NOP                             A:80 X:80 Y:80 P:25 SP:FB PPU:  8,260 CYC:996
CB2C  38        SEC                             A:80 X:80 Y:80 P:25 SP:FB PPU:  8,266 CYC:998
CB2D  B8        CLV                             A:80 X:80 Y:80 P:25 SP:FB PPU:  8,272 CYC:1000
CB2E  A2 9F     LDX #$9F                        A:80 X:80 Y:80 P:25 SP:FB PPU:  8,278 CYC:1002
CB30  F0 09     BEQ $CB3B                       A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,284 CYC:1004
CB32  10 07     BPL $CB3B                       A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,290 CYC:1006
CB34  70 05     BVS $CB3B                       A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,296 CYC:1008
CB36  90 03     BCC $CB3B                       A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,302 CYC:1010
CB38  4C 3F CB  JMP $CB3F                       A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,308 CYC:1012
CB3F  EA        NOP                             A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,317 CYC:1015
CB40  18        CLC                             A:80 X:9F Y:80 P:A5 SP:FB PPU:  8,323 CYC:1017
CB41  24 01     BIT $01 = FF                    A:80 X:9F Y:80 P:A4 SP:FB PPU:  8,329 CYC:1019
CB43  A2 00     LDX #$00                        A:80 X:9F Y:80 P:E4 SP:FB PPU:  8,338 CYC:1022
CB45  D0 09     BNE $CB50                       A:80 X:00 Y:80 P:66 SP:FB PPU:  9,  3 CYC:1024
CB47  30 07     BMI $CB50                       A:80 X:00 Y:80 P:66 SP:FB PPU:  9,  9 CYC:1026
CB49  50 05     BVC $CB50                       A:80 X:00 Y:80 P:66 SP:FB PPU:  9, 15 CYC:1028
CB4B  B0 03     BCS $CB50                       A:80 X:00 Y:80 P:66 SP:FB PPU:  9, 21 CYC:1030
CB4D  4C 54 CB  JMP $CB54                       A:80 X:00 Y:80 P:66 SP:FB PPU:  9, 27 CYC:1032
CB54  EA        NOP                             A:80 X:00 Y:80 P:66 SP:FB PPU:  9, 36 CYC:1035
CB55  38        SEC                             A:80 X:00 Y:80 P:66 SP:FB PPU:  9, 42 CYC:1037
CB56  B8        CLV                             A:80 X:00 Y:80 P:67 SP:FB PPU:  9, 48 CYC:1039
CB57  A0 9F     LDY #$9F                        A:80 X:00 Y:80 P:27 SP:FB PPU:  9, 54 CYC:1041
CB59  F0 09     BEQ $CB64                       A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 60 CYC:1043
CB5B  10 07     BPL $CB64                       A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 66 CYC:1045
CB5D  70 05     BVS $CB64                       A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 72 CYC:1047
CB5F  90 03     BCC $CB64                       A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 78 CYC:1049
CB61  4C 68 CB  JMP $CB68                       A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 84 CYC:1051
CB68  EA        NOP                             A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 93 CYC:1054
CB69  18        CLC                             A:80 X:00 Y:9F P:A5 SP:FB PPU:  9, 99 CYC:1056
CB6A  24 01     BIT $01 = FF                    A:80 X:00 Y:9F P:A4 SP:FB PPU:  9,105 CYC:1058
CB6C  A0 00     LDY #$00                        A:80 X:00 Y:9F P:E4 SP:FB PPU:  9,114 CYC:1061
CB6E  D0 09     BNE $CB79                       A:80 X:00 Y:00 P:66 SP:FB PPU:  9,120 CYC:1063
CB70  30 07     BMI $CB79                       A:80 X:00 Y:00 P:66 SP:FB PPU:  9,126 CYC:1065
CB72  50 05     BVC $CB79                       A:80 X:00 Y:00 P:66 SP:FB PPU:  9,132 CYC:1067
CB74  B0 03     BCS $CB79                       A:80 X:00 Y:00 P:66 SP:FB PPU:  9,138 CYC:1069
CB76  4C 7D CB  JMP $CB7D                       A:80 X:00 Y:00 P:66 SP:FB PPU:  9,144 CYC:1071
CB7D  EA        NOP                             A:80 X:00 Y:00 P:66 SP:FB PPU:  9,153 CYC:1074
CB7E  A9 55     LDA #$55                        A:80 X:00 Y:00 P:66 SP:FB PPU:  9,159 CYC:1076
CB80  A2 AA     LDX #$AA                        A:55 X:00 Y:00 P:64 SP:FB PPU:  9,165 CYC:1078
CB82  A0 33     LDY #$33                        A:55 X:AA Y:00 P:E4 SP:FB PPU:  9,171 CYC:1080
CB84  C9 55     CMP #$55                        A:55 X:AA Y:33 P:64 SP:FB PPU:  9,177 CYC:1082
CB86  D0 23     BNE $CBAB                       A:55 X:AA Y:33 P:67 SP:FB PPU:  9,183 CYC:1084
CB88  E0 AA     CPX #$AA                        A:55 X:AA Y:33 P:67 SP:FB PPU:  9,189 CYC:1086
CB8A  D0 1F     BNE $CBAB                       A:55 X:AA Y:33 P:67 SP:FB PPU:  9,195 CYC:1088
CB8C  C0 33     CPY #$33                        A:55 X:AA Y:33 P:67 SP:FB PPU:  9,201 CYC:1090
CB8E  D0 1B     BNE $CBAB                       A:55 X:AA Y:33 P:67 SP:FB PPU:  9,207 CYC:1092
CB90  C9 55     CMP #$55                        A:55 X:AA Y:33 P:67 SP:FB PPU:  9,213 CYC:1094
CB92  D0 17     BNE $CBAB                       A:55 X:AA Y:33 P:67 SP:FB PPU:  9,219 CYC:1096
CB94  E0 AA     CPX #$AA                        A:55 X:AA Y:33 P:67 SP:FB PPU:  9,225 CYC:1098
CB96  D0 13     BNE $CBAB                       A:55 X:AA Y:33 P:67 SP:FB PPU:  9,231 CYC:1100
CB98  C0 33     CPY #$33                        A:55 X:AA Y:33 P:67 SP:FB PPU:  9,237 CYC:1102
CB9A  D0 0F     BNE $CBAB                       A:55 X:AA Y:33 P:67 SP:FB PPU:  9,243 CYC:1104
CB9C  C9 56     CMP #$56                        A:55 X:AA Y:33 P:67 SP:FB PPU:  9,249 CYC:1106
CB9E  F0 0B     BEQ $CBAB                       A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,255 CYC:1108
CBA0  E0 AB     CPX #$AB                        A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,261 CYC:1110
CBA2  F0 07     BEQ $CBAB                       A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,267 CYC:1112
CBA4  C0 34     CPY #$34                        A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,273 CYC:1114
CBA6  F0 03     BEQ $CBAB                       A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,279 CYC:1116
CBA8  4C AF CB  JMP $CBAF                       A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,285 CYC:1118
CBAF  A0 71     LDY #$71                        A:55 X:AA Y:33 P:E4 SP:FB PPU:  9,294 CYC:1121
CBB1  20 31 F9  JSR $F931                       A:55 X:AA Y:71 P:64 SP:FB PPU:  9,300 CYC:1123
F931  24 01     BIT $01 = FF                    A:55 X:AA Y:71 P:64 SP:F9 PPU:  9,318 CYC:1129
F933  A9 40     LDA #$40                        A:55 X:AA Y:71 P:E4 SP:F9 PPU:  9,327 CYC:1132
F935  38        SEC                             A:40 X:AA Y:71 P:64 SP:F9 PPU:  9,333 CYC:1134
F936  60        RTS                             A:40 X:AA Y:71 P:65 SP:F9 PPU:  9,339 CYC:1136
CBB4  E9 40     SBC #$40                        A:40 X:AA Y:71 P:65 SP:FB PPU: 10, 16 CYC:1142
CBB6  20 37 F9  JSR $F937                       A:00 X:AA Y:71 P:27 SP:FB PPU: 10, 22 CYC:1144
F937  30 0B     BMI $F944                       A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 40 CYC:1150
F939  90 09     BCC $F944                       A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 46 CYC:1152
F93B  D0 07     BNE $F944                       A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 52 CYC:1154
F93D  70 05     BVS $F944                       A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 58 CYC:1156
F93F  C9 00     CMP #$00                        A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 64 CYC:1158
F941  D0 01     BNE $F944                       A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 70 CYC:1160
F943  60        RTS                             A:00 X:AA Y:71 P:27 SP:F9 PPU: 10, 76 CYC:1162
CBB9  C8        INY                             A:00 X:AA Y:71 P:27 SP:FB PPU: 10, 94 CYC:1168
CBBA  20 47 F9  JSR $F947                       A:00 X:AA Y:72 P:25 SP:FB PPU: 10,100 CYC:1170
F947  B8        CLV                             A:00 X:AA Y:72 P:25 SP:F9 PPU: 10,118 CYC:1176
F948  38        SEC                             A:00 X:AA Y:72 P:25 SP:F9 PPU: 10,124 CYC:1178
F949  A9 40     LDA #$40                        A:00 X:AA Y:72 P:25 SP:F9 PPU: 10,130 CYC:1180
F94B  60        RTS                             A:40 X:AA Y:72 P:25 SP:F9 PPU: 10,136 CYC:1182
CBBD  E9 3F     SBC #$3F                        A:40 X:AA Y:72 P:25 SP:FB PPU: 10,154 CYC:1188
CBBF  20 4C F9  JSR $F94C                       A:01 X:AA Y:72 P:25 SP:FB PPU: 10,160 CYC:1190
F94C  F0 0B     BEQ $F959                       A:01 X:AA Y:72 P:25 SP:F9 PPU: 10,178 CYC:1196
F94E  30 09     BMI $F959                       A:01 X:AA Y:72 P:25 SP:F9 PPU: 10,184 CYC:1198
F950  90 07     BCC $F959                       A:01 X:AA Y:72 P:25 SP:F9 PPU: 10,190 CYC:1200
F952  70 05     BVS $F959                       A:01 X:AA Y:72 P:25 SP:F9 PPU: 10,196 CYC:1202
F954  C9 01     CMP #$01                        A:01 X:AA Y:72 P:25 SP:F9 PPU: 10,202 CYC:1204
F956  D0 01     BNE $F959                       A:01 X:AA Y:72 P:27 SP:F9 PPU: 10,208 CYC:1206
F958  60        RTS                             A:01 X:AA Y:72 P:27 SP:F9 PPU: 10,214 CYC:1208
CBC2  C8        INY                             A:01 X:AA Y:72 P:27 SP:FB PPU: 10,232 CYC:1214
CBC3  20 5C F9  JSR $F95C                       A:01 X:AA Y:73 P:25 SP:FB PPU: 10,238 CYC:1216
F95C  A9 40     LDA #$40                        A:01 X:AA Y:73 P:25 SP:F9 PPU: 10,256 CYC:1222
F95E  38        SEC                             A:40 X:AA Y:73 P:25 SP:F9 PPU: 10,262 CYC:1224
F95F  24 01     BIT $01 = FF                    A:40 X:AA Y:73 P:25 SP:F9 PPU: 10,268 CYC:1226
F961  60        RTS                             A:40 X:AA Y:73 P:E5 SP:F9 PPU: 10,277 CYC:1229
CBC6  E9 41     SBC #$41                        A:40 X:AA Y:73 P:E5 SP:FB PPU: 10,295 CYC:1235
CBC8  20 62 F9  JSR $F962                       A:FF X:AA Y:73 P:A4 SP:FB PPU: 10,301 CYC:1237
F962  B0 0B     BCS $F96F                       A:FF X:AA Y:73 P:A4 SP:F9 PPU: 10,319 CYC:1243
F964  F0 09     BEQ $F96F                       A:FF X:AA Y:73 P:A4 SP:F9 PPU: 10,325 CYC:1245
F966  10 07     BPL $F96F                       A:FF X:AA Y:73 P:A4 SP:F9 PPU: 10,331 CYC:1247
F968  70 05     BVS $F96F                       A:FF X:AA Y:73 P:A4 SP:F9 PPU: 10,337 CYC:1249
F96A  C9 FF     CMP #$FF                        A:FF X:AA Y:73 P:A4 SP:F9 PPU: 11,  2 CYC:1251
F96C  D0 01     BNE $F96F                       A:FF X:AA Y:73 P:27 SP:F9 PPU: 11,  8 CYC:1253
F96E  60        RTS                             A:FF X:AA Y:73 P:27 SP:F9 PPU: 11, 14 CYC:1255
CBCB  C8        INY                             A:FF X:AA Y:73 P:27 SP:FB PPU: 11, 32 CYC:1261
CBCC  20 72 F9  JSR $F972                       A:FF X:AA Y:74 P:25 SP:FB PPU: 11, 38 CYC:1263
F972  18        CLC                             A:FF X:AA Y:74 P:25 SP:F9 PPU: 11, 56 CYC:1269
F973  A9 80     LDA #$80                        A:FF X:AA Y:74 P:24 SP:F9 PPU: 11, 62 CYC:1271
F975  60        RTS                             A:80 X:AA Y:74 P:A4 SP:F9 PPU: 11, 68 CYC:1273
CBCF  E9 00     SBC #$00                        A:80 X:AA Y:74 P:A4 SP:FB PPU: 11, 86 CYC:1279
CBD1  20 76 F9  JSR $F976                       A:7F X:AA Y:74 P:65 SP:FB PPU: 11, 92 CYC:1281
F976  90 05     BCC $F97D                       A:7F X:AA Y:74 P:65 SP:F9 PPU: 11,110 CYC:1287
F978  C9 7F     CMP #$7F                        A:7F X:AA Y:74 P:65 SP:F9 PPU: 11,116 CYC:1289
F97A  D0 01     BNE $F97D                       A:7F X:AA Y:74 P:67 SP:F9 PPU: 11,122 CYC:1291
F97C  60        RTS                             A:7F X:AA Y:74 P:67 SP:F9 PPU: 11,128 CYC:1293
CBD4  C8        INY                             A:7F X:AA Y:74 P:67 SP:FB PPU: 11,146 CYC:1299
CBD5  20 80 F9  JSR $F980                       A:7F X:AA Y:75 P:65 SP:FB PPU: 11,152 CYC:1301
F980  38        SEC                             A:7F X:AA Y:75 P:65 SP:F9 PPU: 11,170 CYC:1307
F981  A9 81     LDA #$81                        A:7F X:AA Y:75 P:65 SP:F9 PPU: 11,176 CYC:1309
F983  60        RTS                             A:81 X:AA Y:75 P:E5 SP:F9 PPU: 11,182 CYC:1311
CBD8  E9 7F     SBC #$7F                        A:81 X:AA Y:75 P:E5 SP:FB PPU: 11,200 CYC:1317
CBDA  20 84 F9  JSR $F984                       A:02 X:AA Y:75 P:65 SP:FB PPU: 11,206 CYC:1319
F984  50 07     BVC $F98D                       A:02 X:AA Y:75 P:65 SP:F9 PPU: 11,224 CYC:1325
F986  90 05     BCC $F98D                       A:02 X:AA Y:75 P:65 SP:F9 PPU: 11,230 CYC:1327
F988  C9 02     CMP #$02                        A:02 X:AA Y:75 P:65 SP:F9 PPU: 11,236 CYC:1329
F98A  D0 01     BNE $F98D                       A:02 X:AA Y:75 P:67 SP:F9 PPU: 11,242 CYC:1331
F98C  60        RTS                             A:02 X:AA Y:75 P:67 SP:F9 PPU: 11,248 CYC:1333
CBDD  60        RTS                             A:02 X:AA Y:75 P:67 SP:FB PPU: 11,266 CYC:1339
C606  20 DE CB  JSR $CBDE                       A:02 X:AA Y:75 P:67 SP:FD PPU: 11,284 CYC:1345
CBDE  EA        NOP                             A:02 X:AA Y:75 P:67 SP:FB PPU: 11,302 CYC:1351
CBDF  A9 FF     LDA #$FF                        A:02 X:AA Y:75 P:67 SP:FB PPU: 11,308 CYC:1353
CBE1  85 01     STA $01 = FF                    A:FF X:AA Y:75 P:E5 SP:FB PPU: 11,314 CYC:1355
CBE3  A9 44     LDA #$44                        A:FF X:AA Y:75 P:E5 SP:FB PPU: 11,323 CYC:1358
CBE5  A2 55     LDX #$55                        A:44 X:AA Y:75 P:65 SP:FB PPU: 11,329 CYC:1360
CBE7  A0 66     LDY #$66                        A:44 X:55 Y:75 P:65 SP:FB PPU: 11,335 CYC:1362
CBE9  E8        INX                             A:44 X:55 Y:66 P:65 SP:FB PPU: 12,  0 CYC:1364
CBEA  88        DEY                             A:44 X:56 Y:66 P:65 SP:FB PPU: 12,  6 CYC:1366
CBEB  E0 56     CPX #$56                        A:44 X:56 Y:65 P:65 SP:FB PPU: 12, 12 CYC:1368
CBED  D0 21     BNE $CC10                       A:44 X:56 Y:65 P:67 SP:FB PPU: 12, 18 CYC:1370
CBEF  C0 65     CPY #$65                        A:44 X:56 Y:65 P:67 SP:FB PPU: 12, 24 CYC:1372
CBF1  D0 1D     BNE $CC10                       A:44 X:56 Y:65 P:67 SP:FB PPU: 12, 30 CYC:1374
CBF3  E8        INX                             A:44 X:56 Y:65 P:67 SP:FB PPU: 12, 36 CYC:1376
CBF4  E8        INX                             A:44 X:57 Y:65 P:65 SP:FB PPU: 12, 42 CYC:1378
CBF5  88        DEY                             A:44 X:58 Y:65 P:65 SP:FB PPU: 12, 48 CYC:1380
CBF6  88        DEY                             A:44 X:58 Y:64 P:65 SP:FB PPU: 12, 54 CYC:1382
CBF7  E0 58     CPX #$58                        A:44 X:58 Y:63 P:65 SP:FB PPU: 12, 60 CYC:1384
CBF9  D0 15     BNE $CC10                       A:44 X:58 Y:63 P:67 SP:FB PPU: 12, 66 CYC:1386
CBFB  C0 63     CPY #$63                        A:44 X:58 Y:63 P:67 SP:FB PPU: 12, 72 CYC:1388
CBFD  D0 11     BNE $CC10                       A:44 X:58 Y:63 P:67 SP:FB PPU: 12, 78 CYC:1390
CBFF  CA        DEX                             A:44 X:58 Y:63 P:67 SP:FB PPU: 12, 84 CYC:1392
CC00  C8        INY                             A:44 X:57 Y:63 P:65 SP:FB PPU: 12, 90 CYC:1394
CC01  E0 57     CPX #$57                        A:44 X:57 Y:64 P:65 SP:FB PPU: 12, 96 CYC:1396
CC03  D0 0B     BNE $CC10                       A:44 X:57 Y:64 P:67 SP:FB PPU: 12,102 CYC:1398
CC05  C0 64     CPY #$64                        A:44 X:57 Y:64 P:67 SP:FB PPU: 12,108 CYC:1400
CC07  D0 07     BNE $CC10                       A:44 X:57 Y:64 P:67 SP:FB PPU: 12,114 CYC:1402
CC09  C9 44     CMP #$44                        A:44 X:57 Y:64 P:67 SP:FB PPU: 12,120 CYC:1404
CC0B  D0 03     BNE $CC10                       A:44 X:57 Y:64 P:67 SP:FB PPU: 12,126 CYC:1406
CC0D  4C 14 CC  JMP $CC14                       A:44 X:57 Y:64 P:67 SP:FB PPU: 12,132 CYC:1408
CC14  EA        NOP                             A:44 X:57 Y:64 P:67 SP:FB PPU: 12,141 CYC:1411
CC15  38        SEC                             A:44 X:57 Y:64 P:67 SP:FB PPU: 12,147 CYC:1413
CC16  A2 69     LDX #$69                        A:44 X:57 Y:64 P:67 SP:FB PPU: 12,153 CYC:1415
CC18  A9 96     LDA #$96                        A:44 X:69 Y:64 P:65 SP:FB PPU: 12,159 CYC:1417
CC1A  24 01     BIT $01 = FF                    A:96 X:69 Y:64 P:E5 SP:FB PPU: 12,165 CYC:1419
CC1C  A0 FF     LDY #$FF                        A:96 X:69 Y:64 P:E5 SP:FB PPU: 12,174 CYC:1422
CC1E  C8        INY                             A:96 X:69 Y:FF P:E5 SP:FB PPU: 12,180 CYC:1424
CC1F  D0 3D     BNE $CC5E                       A:96 X:69 Y:00 P:67 SP:FB PPU: 12,186 CYC:1426
CC21  30 3B     BMI $CC5E                       A:96 X:69 Y:00 P:67 SP:FB PPU: 12,192 CYC:1428
CC23  90 39     BCC $CC5E                       A:96 X:69 Y:00 P:67 SP:FB PPU: 12,198 CYC:1430
CC25  50 37     BVC $CC5E                       A:96 X:69 Y:00 P:67 SP:FB PPU: 12,204 CYC:1432
CC27  C0 00     CPY #$00                        A:96 X:69 Y:00 P:67 SP:FB PPU: 12,210 CYC:1434
CC29  D0 33     BNE $CC5E                       A:96 X:69 Y:00 P:67 SP:FB PPU: 12,216 CYC:1436
CC2B  C8        INY                             A:96 X:69 Y:00 P:67 SP:FB PPU: 12,222 CYC:1438
CC2C  F0 30     BEQ $CC5E                       A:96 X:69 Y:01 P:65 SP:FB PPU: 12,228 CYC:1440
CC2E  30 2E     BMI $CC5E                       A:96 X:69 Y:01 P:65 SP:FB PPU: 12,234 CYC:1442
CC30  90 2C     BCC $CC5E                       A:96 X:69 Y:01 P:65 SP:FB PPU: 12,240 CYC:1444
CC32  50 2A     BVC $CC5E                       A:96 X:69 Y:01 P:65 SP:FB PPU: 12,246 CYC:1446
CC34  18        CLC                             A:96 X:69 Y:01 P:65 SP:FB PPU: 12,252 CYC:1448
CC35  B8        CLV                             A:96 X:69 Y:01 P:64 SP:FB PPU: 12,258 CYC:1450
CC36  A0 00     LDY #$00                        A:96 X:69 Y:01 P:24 SP:FB PPU: 12,264 CYC:1452
CC38  88        DEY                             A:96 X:69 Y:00 P:26 SP:FB PPU: 12,270 CYC:1454
CC39  F0 23     BEQ $CC5E                       A:96 X:69 Y:FF P:A4 SP:FB PPU: 12,276 CYC:1456
CC3B  10 21     BPL $CC5E                       A:96 X:69 Y:FF P:A4 SP:FB PPU: 12,282 CYC:1458
CC3D  B0 1F     BCS $CC5E                       A:96 X:69 Y:FF P:A4 SP:FB PPU: 12,288 CYC:1460
CC3F  70 1D     BVS $CC5E                       A:96 X:69 Y:FF P:A4 SP:FB PPU: 12,294 CYC:1462
CC41  C0 FF     CPY #$FF                        A:96 X:69 Y:FF P:A4 SP:FB PPU: 12,300 CYC:1464
CC43  D0 19     BNE $CC5E                       A:96 X:69 Y:FF P:27 SP:FB PPU: 12,306 CYC:1466
CC45  18        CLC                             A:96 X:69 Y:FF P:27 SP:FB PPU: 12,312 CYC:1468
CC46  88        DEY                             A:96 X:69 Y:FF P:26 SP:FB PPU: 12,318 CYC:1470
CC47  F0 15     BEQ $CC5E                       A:96 X:69 Y:FE P:A4 SP:FB PPU: 12,324 CYC:1472
CC49  10 13     BPL $CC5E                       A:96 X:69 Y:FE P:A4 SP:FB PPU: 12,330 CYC:1474
CC4B  B0 11     BCS $CC5E                       A:96 X:69 Y:FE P:A4 SP:FB PPU: 12,336 CYC:1476
CC4D  70 0F     BVS $CC5E                       A:96 X:69 Y:FE P:A4 SP:FB PPU: 13,  1 CYC:1478
CC4F  C0 FE     CPY #$FE                        A:96 X:69 Y:FE P:A4 SP:FB PPU: 13,  7 CYC:1480
CC51  D0 0B     BNE $CC5E                       A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 13 CYC:1482
CC53  C9 96     CMP #$96                        A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 19 CYC:1484
CC55  D0 07     BNE $CC5E                       A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 25 CYC:1486
CC57  E0 69     CPX #$69                        A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 31 CYC:1488
CC59  D0 03     BNE $CC5E                       A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 37 CYC:1490
CC5B  4C 62 CC  JMP $CC62                       A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 43 CYC:1492
CC62  EA        NOP                             A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 52 CYC:1495
CC63  38        SEC                             A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 58 CYC:1497
CC64  A0 69     LDY #$69                        A:96 X:69 Y:FE P:27 SP:FB PPU: 13, 64 CYC:1499
CC66  A9 96     LDA #$96                        A:96 X:69 Y:69 P:25 SP:FB PPU: 13, 70 CYC:1501
CC68  24 01     BIT $01 = FF                    A:96 X:69 Y:69 P:A5 SP:FB PPU: 13, 76 CYC:1503
CC6A  A2 FF     LDX #$FF                        A:96 X:69 Y:69 P:E5 SP:FB PPU: 13, 85 CYC:1506
CC6C  E8        INX                             A:96 X:FF Y:69 P:E5 SP:FB PPU: 13, 91 CYC:1508
CC6D  D0 3D     BNE $CCAC                       A:96 X:00 Y:69 P:67 SP:FB PPU: 13, 97 CYC:1510
CC6F  30 3B     BMI $CCAC                       A:96 X:00 Y:69 P:67 SP:FB PPU: 13,103 CYC:1512
CC71  90 39     BCC $CCAC                       A:96 X:00 Y:69 P:67 SP:FB PPU: 13,109 CYC:1514
CC73  50 37     BVC $CCAC                       A:96 X:00 Y:69 P:67 SP:FB PPU: 13,115 CYC:1516
CC75  E0 00     CPX #$00                        A:96 X:00 Y:69 P:67 SP:FB PPU: 13,121 CYC:1518
CC77  D0 33     BNE $CCAC                       A:96 X:00 Y:69 P:67 SP:FB PPU: 13,127 CYC:1520
CC79  E8        INX                             A:96 X:00 Y:69 P:67 SP:FB PPU: 13,133 CYC:1522
CC7A  F0 30     BEQ $CCAC                       A:96 X:01 Y:69 P:65 SP:FB PPU: 13,139 CYC:1524
CC7C  30 2E     BMI $CCAC                       A:96 X:01 Y:69 P:65 SP:FB PPU: 13,145 CYC:1526
CC7E  90 2C     BCC $CCAC                       A:96 X:01 Y:69 P:65 SP:FB PPU: 13,151 CYC:1528
CC80  50 2A     BVC $CCAC                       A:96 X:01 Y:69 P:65 SP:FB PPU: 13,157 CYC:1530
CC82  18        CLC                             A:96 X:01 Y:69 P:65 SP:FB PPU: 13,163 CYC:1532
CC83  B8        CLV                             A:96 X:01 Y:69 P:64 SP:FB PPU: 13,169 CYC:1534
CC84  A2 00     LDX #$00                        A:96 X:01 Y:69 P:24 SP:FB PPU: 13,175 CYC:1536
CC86  CA        DEX                             A:96 X:00 Y:69 P:26 SP:FB PPU: 13,181 CYC:1538
CC87  F0 23     BEQ $CCAC                       A:96 X:FF Y:69 P:A4 SP:FB PPU: 13,187 CYC:1540
CC89  10 21     BPL $CCAC                       A:96 X:FF Y:69 P:A4 SP:FB PPU: 13,193 CYC:1542
CC8B  B0 1F     BCS $CCAC                       A:96 X:FF Y:69 P:A4 SP:FB PPU: 13,199 CYC:1544
CC8D  70 1D     BVS $CCAC                       A:96 X:FF Y:69 P:A4 SP:FB PPU: 13,205 CYC:1546
CC8F  E0 FF     CPX #$FF                        A:96 X:FF Y:69 P:A4 SP:FB PPU: 13,211 CYC:1548
CC91  D0 19     BNE $CCAC                       A:96 X:FF Y:69 P:27 SP:FB PPU: 13,217 CYC:1550
CC93  18        CLC                             A:96 X:FF Y:69 P:27 SP:FB PPU: 13,223 CYC:1552
CC94  CA        DEX                             A:96 X:FF Y:69 P:26 SP:FB PPU: 13,229 CYC:1554
CC95  F0 15     BEQ $CCAC                       A:96 X:FE Y:69 P:A4 SP:FB PPU: 13,235 CYC:1556
CC97  10 13     BPL $CCAC                       A:96 X:FE Y:69 P:A4 SP:FB PPU: 13,241 CYC:1558
CC99  B0 11     BCS $CCAC                       A:96 X:FE Y:69 P:A4 SP:FB PPU: 13,247 CYC:1560
CC9B  70 0F     BVS $CCAC                       A:96 X:FE Y:69 P:A4 SP:FB PPU: 13,253 CYC:1562
CC9D  E0 FE     CPX #$FE                        A:96 X:FE Y:69 P:A4 SP:FB PPU: 13,259 CYC:1564
CC9F  D0 0B     BNE $CCAC                       A:96 X:FE Y:69 P:27 SP:FB PPU: 13,265 CYC:1566
CCA1  C9 96     CMP #$96                        A:96 X:FE Y:69 P:27 SP:FB PPU: 13,271 CYC:1568
CCA3  D0 07     BNE $CCAC                       A:96 X:FE Y:69 P:27 SP:FB PPU: 13,277 CYC:1570
CCA5  C0 69     CPY #$69                        A:96 X:FE Y:69 P:27 SP:FB PPU: 13,283 CYC:1572
CCA7  D0 03     BNE $CCAC                       A:96 X:FE Y:69 P:27 SP:FB PPU: 13,289 CYC:1574
CCA9  4C B0 CC  JMP $CCB0                       A:96 X:FE Y:69 P:27 SP:FB PPU: 13,295 CYC:1576
CCB0  EA        NOP                             A:96 X:FE Y:69 P:27 SP:FB PPU: 13,304 CYC:1579
CCB1  A9 85     LDA #$85                        A:96 X:FE Y:69 P:27 SP:FB PPU: 13,310 CYC:1581
CCB3  A2 34     LDX #$34                        A:85 X:FE Y:69 P:A5 SP:FB PPU: 13,316 CYC:1583
CCB5  A0 99     LDY #$99                        A:85 X:34 Y:69 P:25 SP:FB PPU: 13,322 CYC:1585
CCB7  18        CLC                             A:85 X:34 Y:99 P:A5 SP:FB PPU: 13,328 CYC:1587
CCB8  24 01     BIT $01 = FF                    A:85 X:34 Y:99 P:A4 SP:FB PPU: 13,334 CYC:1589
CCBA  A8        TAY                             A:85 X:34 Y:99 P:E4 SP:FB PPU: 14,  2 CYC:1592
CCBB  F0 2E     BEQ $CCEB                       A:85 X:34 Y:85 P:E4 SP:FB PPU: 14,  8 CYC:1594
CCBD  B0 2C     BCS $CCEB                       A:85 X:34 Y:85 P:E4 SP:FB PPU: 14, 14 CYC:1596
CCBF  50 2A     BVC $CCEB                       A:85 X:34 Y:85 P:E4 SP:FB PPU: 14, 20 CYC:1598
CCC1  10 28     BPL $CCEB                       A:85 X:34 Y:85 P:E4 SP:FB PPU: 14, 26 CYC:1600
CCC3  C9 85     CMP #$85                        A:85 X:34 Y:85 P:E4 SP:FB PPU: 14, 32 CYC:1602
CCC5  D0 24     BNE $CCEB                       A:85 X:34 Y:85 P:67 SP:FB PPU: 14, 38 CYC:1604
CCC7  E0 34     CPX #$34                        A:85 X:34 Y:85 P:67 SP:FB PPU: 14, 44 CYC:1606
CCC9  D0 20     BNE $CCEB                       A:85 X:34 Y:85 P:67 SP:FB PPU: 14, 50 CYC:1608
CCCB  C0 85     CPY #$85                        A:85 X:34 Y:85 P:67 SP:FB PPU: 14, 56 CYC:1610
CCCD  D0 1C     BNE $CCEB                       A:85 X:34 Y:85 P:67 SP:FB PPU: 14, 62 CYC:1612
CCCF  A9 00     LDA #$00                        A:85 X:34 Y:85 P:67 SP:FB PPU: 14, 68 CYC:1614
CCD1  38        SEC                             A:00 X:34 Y:85 P:67 SP:FB PPU: 14, 74 CYC:1616
CCD2  B8        CLV                             A:00 X:34 Y:85 P:67 SP:FB PPU: 14, 80 CYC:1618
CCD3  A8        TAY                             A:00 X:34 Y:85 P:27 SP:FB PPU: 14, 86 CYC:1620
CCD4  D0 15     BNE $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14, 92 CYC:1622
CCD6  90 13     BCC $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14, 98 CYC:1624
CCD8  70 11     BVS $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14,104 CYC:1626
CCDA  30 0F     BMI $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14,110 CYC:1628
CCDC  C9 00     CMP #$00                        A:00 X:34 Y:00 P:27 SP:FB PPU: 14,116 CYC:1630
CCDE  D0 0B     BNE $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14,122 CYC:1632
CCE0  E0 34     CPX #$34                        A:00 X:34 Y:00 P:27 SP:FB PPU: 14,128 CYC:1634
CCE2  D0 07     BNE $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14,134 CYC:1636
CCE4  C0 00     CPY #$00                        A:00 X:34 Y:00 P:27 SP:FB PPU: 14,140 CYC:1638
CCE6  D0 03     BNE $CCEB                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14,146 CYC:1640
CCE8  4C EF CC  JMP $CCEF                       A:00 X:34 Y:00 P:27 SP:FB PPU: 14,152 CYC:1642
CCEF  EA        NOP                             A:00 X:34 Y:00 P:27 SP:FB PPU: 14,161 CYC:1645
CCF0  A9 85     LDA #$85                        A:00 X:34 Y:00 P:27 SP:FB PPU: 14,167 CYC:1647
CCF2  A2 34     LDX #$34                        A:85 X:34 Y:00 P:A5 SP:FB PPU: 14,173 CYC:1649
CCF4  A0 99     LDY #$99                        A:85 X:34 Y:00 P:25 SP:FB PPU: 14,179 CYC:1651
CCF6  18        CLC                             A:85 X:34 Y:99 P:A5 SP:FB PPU: 14,185 CYC:1653
CCF7  24 01     BIT $01 = FF                    A:85 X:34 Y:99 P:A4 SP:FB PPU: 14,191 CYC:1655
CCF9  AA        TAX                             A:85 X:34 Y:99 P:E4 SP:FB PPU: 14,200 CYC:1658
CCFA  F0 2E     BEQ $CD2A                       A:85 X:85 Y:99 P:E4 SP:FB PPU: 14,206 CYC:1660
CCFC  B0 2C     BCS $CD2A                       A:85 X:85 Y:99 P:E4 SP:FB PPU: 14,212 CYC:1662
CCFE  50 2A     BVC $CD2A                       A:85 X:85 Y:99 P:E4 SP:FB PPU: 14,218 CYC:1664
CD00  10 28     BPL $CD2A                       A:85 X:85 Y:99 P:E4 SP:FB PPU: 14,224 CYC:1666
CD02  C9 85     CMP #$85                        A:85 X:85 Y:99 P:E4 SP:FB PPU: 14,230 CYC:1668
CD04  D0 24     BNE $CD2A                       A:85 X:85 Y:99 P:67 SP:FB PPU: 14,236 CYC:1670
CD06  E0 85     CPX #$85                        A:85 X:85 Y:99 P:67 SP:FB PPU: 14,242 CYC:1672
CD08  D0 20     BNE $CD2A                       A:85 X:85 Y:99 P:67 SP:FB PPU: 14,248 CYC:1674
CD0A  C0 99     CPY #$99                        A:85 X:85 Y:99 P:67 SP:FB PPU: 14,254 CYC:1676
CD0C  D0 1C     BNE $CD2A                       A:85 X:85 Y:99 P:67 SP:FB PPU: 14,260 CYC:1678
CD0E  A9 00     LDA #$00                        A:85 X:85 Y:99 P:67 SP:FB PPU: 14,266 CYC:1680
CD10  38        SEC                             A:00 X:85 Y:99 P:67 SP:FB PPU: 14,272 CYC:1682
CD11  B8        CLV                             A:00 X:85 Y:99 P:67 SP:FB PPU: 14,278 CYC:1684
CD12  AA        TAX                             A:00 X:85 Y:99 P:27 SP:FB PPU: 14,284 CYC:1686
CD13  D0 15     BNE $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 14,290 CYC:1688
CD15  90 13     BCC $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 14,296 CYC:1690
CD17  70 11     BVS $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 14,302 CYC:1692
CD19  30 0F     BMI $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 14,308 CYC:1694
CD1B  C9 00     CMP #$00                        A:00 X:00 Y:99 P:27 SP:FB PPU: 14,314 CYC:1696
CD1D  D0 0B     BNE $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 14,320 CYC:1698
CD1F  E0 00     CPX #$00                        A:00 X:00 Y:99 P:27 SP:FB PPU: 14,326 CYC:1700
CD21  D0 07     BNE $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 14,332 CYC:1702
CD23  C0 99     CPY #$99                        A:00 X:00 Y:99 P:27 SP:FB PPU: 14,338 CYC:1704
CD25  D0 03     BNE $CD2A                       A:00 X:00 Y:99 P:27 SP:FB PPU: 15,  3 CYC:1706
CD27  4C 2E CD  JMP $CD2E                       A:00 X:00 Y:99 P:27 SP:FB PPU: 15,  9 CYC:1708
CD2E  EA        NOP                             A:00 X:00 Y:99 P:27 SP:FB PPU: 15, 18 CYC:1711
CD2F  A9 85     LDA #$85                        A:00 X:00 Y:99 P:27 SP:FB PPU: 15, 24 CYC:1713
CD31  A2 34     LDX #$34                        A:85 X:00 Y:99 P:A5 SP:FB PPU: 15, 30 CYC:1715
CD33  A0 99     LDY #$99                        A:85 X:34 Y:99 P:25 SP:FB PPU: 15, 36 CYC:1717
CD35  18        CLC                             A:85 X:34 Y:99 P:A5 SP:FB PPU: 15, 42 CYC:1719
CD36  24 01     BIT $01 = FF                    A:85 X:34 Y:99 P:A4 SP:FB PPU: 15, 48 CYC:1721
CD38  98        TYA                             A:85 X:34 Y:99 P:E4 SP:FB PPU: 15, 57 CYC:1724
CD39  F0 2E     BEQ $CD69                       A:99 X:34 Y:99 P:E4 SP:FB PPU: 15, 63 CYC:1726
CD3B  B0 2C     BCS $CD69                       A:99 X:34 Y:99 P:E4 SP:FB PPU: 15, 69 CYC:1728
CD3D  50 2A     BVC $CD69                       A:99 X:34 Y:99 P:E4 SP:FB PPU: 15, 75 CYC:1730
CD3F  10 28     BPL $CD69                       A:99 X:34 Y:99 P:E4 SP:FB PPU: 15, 81 CYC:1732
CD41  C9 99     CMP #$99                        A:99 X:34 Y:99 P:E4 SP:FB PPU: 15, 87 CYC:1734
CD43  D0 24     BNE $CD69                       A:99 X:34 Y:99 P:67 SP:FB PPU: 15, 93 CYC:1736
CD45  E0 34     CPX #$34                        A:99 X:34 Y:99 P:67 SP:FB PPU: 15, 99 CYC:1738
CD47  D0 20     BNE $CD69                       A:99 X:34 Y:99 P:67 SP:FB PPU: 15,105 CYC:1740
CD49  C0 99     CPY #$99                        A:99 X:34 Y:99 P:67 SP:FB PPU: 15,111 CYC:1742
CD4B  D0 1C     BNE $CD69                       A:99 X:34 Y:99 P:67 SP:FB PPU: 15,117 CYC:1744
CD4D  A0 00     LDY #$00                        A:99 X:34 Y:99 P:67 SP:FB PPU: 15,123 CYC:1746
CD4F  38        SEC                             A:99 X:34 Y:00 P:67 SP:FB PPU: 15,129 CYC:1748
CD50  B8        CLV                             A:99 X:34 Y:00 P:67 SP:FB PPU: 15,135 CYC:1750
CD51  98        TYA                             A:99 X:34 Y:00 P:27 SP:FB PPU: 15,141 CYC:1752
CD52  D0 15     BNE $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,147 CYC:1754
CD54  90 13     BCC $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,153 CYC:1756
CD56  70 11     BVS $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,159 CYC:1758
CD58  30 0F     BMI $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,165 CYC:1760
CD5A  C9 00     CMP #$00                        A:00 X:34 Y:00 P:27 SP:FB PPU: 15,171 CYC:1762
CD5C  D0 0B     BNE $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,177 CYC:1764
CD5E  E0 34     CPX #$34                        A:00 X:34 Y:00 P:27 SP:FB PPU: 15,183 CYC:1766
CD60  D0 07     BNE $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,189 CYC:1768
CD62  C0 00     CPY #$00                        A:00 X:34 Y:00 P:27 SP:FB PPU: 15,195 CYC:1770
CD64  D0 03     BNE $CD69                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,201 CYC:1772
CD66  4C 6D CD  JMP $CD6D                       A:00 X:34 Y:00 P:27 SP:FB PPU: 15,207 CYC:1774
CD6D  EA        NOP                             A:00 X:34 Y:00 P:27 SP:FB PPU: 15,216 CYC:1777
CD6E  A9 85     LDA #$85                        A:00 X:34 Y:00 P:27 SP:FB PPU: 15,222 CYC:1779
CD70  A2 34     LDX #$34                        A:85 X:34 Y:00 P:A5 SP:FB PPU: 15,228 CYC:1781
CD72  A0 99     LDY #$99                        A:85 X:34 Y:00 P:25 SP:FB PPU: 15,234 CYC:1783
CD74  18        CLC                             A:85 X:34 Y:99 P:A5 SP:FB PPU: 15,240 CYC:1785
CD75  24 01     BIT $01 = FF                    A:85 X:34 Y:99 P:A4 SP:FB PPU: 15,246 CYC:1787
CD77  8A        TXA                             A:85 X:34 Y:99 P:E4 SP:FB PPU: 15,255 CYC:1790
CD78  F0 2E     BEQ $CDA8                       A:34 X:34 Y:99 P:64 SP:FB PPU: 15,261 CYC:1792
CD7A  B0 2C     BCS $CDA8                       A:34 X:34 Y:99 P:64 SP:FB PPU: 15,267 CYC:1794
CD7C  50 2A     BVC $CDA8                       A:34 X:34 Y:99 P:64 SP:FB PPU: 15,273 CYC:1796
CD7E  30 28     BMI $CDA8                       A:34 X:34 Y:99 P:64 SP:FB PPU: 15,279 CYC:1798
CD80  C9 34     CMP #$34                        A:34 X:34 Y:99 P:64 SP:FB PPU: 15,285 CYC:1800
CD82  D0 24     BNE $CDA8                       A:34 X:34 Y:99 P:67 SP:FB PPU: 15,291 CYC:1802
CD84  E0 34     CPX #$34                        A:34 X:34 Y:99 P:67 SP:FB PPU: 15,297 CYC:1804
CD86  D0 20     BNE $CDA8                       A:34 X:34 Y:99 P:67 SP:FB PPU: 15,303 CYC:1806
CD88  C0 99     CPY #$99                        A:34 X:34 Y:99 P:67 SP:FB PPU: 15,309 CYC:1808
CD8A  D0 1C     BNE $CDA8                       A:34 X:34 Y:99 P:67 SP:FB PPU: 15,315 CYC:1810
CD8C  A2 00     LDX #$00                        A:34 X:34 Y:99 P:67 SP:FB PPU: 15,321 CYC:1812
CD8E  38        SEC                             A:34 X:00 Y:99 P:67 SP:FB PPU: 15,327 CYC:1814
CD8F  B8        CLV                             A:34 X:00 Y:99 P:67 SP:FB PPU: 15,333 CYC:1816
CD90  8A        TXA                             A:34 X:00 Y:99 P:27 SP:FB PPU: 15,339 CYC:1818
CD91  D0 15     BNE $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16,  4 CYC:1820
CD93  90 13     BCC $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 10 CYC:1822
CD95  70 11     BVS $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 16 CYC:1824
CD97  30 0F     BMI $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 22 CYC:1826
CD99  C9 00     CMP #$00                        A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 28 CYC:1828
CD9B  D0 0B     BNE $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 34 CYC:1830
CD9D  E0 00     CPX #$00                        A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 40 CYC:1832
CD9F  D0 07     BNE $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 46 CYC:1834
CDA1  C0 99     CPY #$99                        A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 52 CYC:1836
CDA3  D0 03     BNE $CDA8                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 58 CYC:1838
CDA5  4C AC CD  JMP $CDAC                       A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 64 CYC:1840
CDAC  EA        NOP                             A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 73 CYC:1843
CDAD  BA        TSX                             A:00 X:00 Y:99 P:27 SP:FB PPU: 16, 79 CYC:1845
CDAE  8E FF 07  STX $07FF = 00                  A:00 X:FB Y:99 P:A5 SP:FB PPU: 16, 85 CYC:1847
CDB1  A0 33     LDY #$33                        A:00 X:FB Y:99 P:A5 SP:FB PPU: 16, 97 CYC:1851
CDB3  A2 69     LDX #$69                        A:00 X:FB Y:33 P:25 SP:FB PPU: 16,103 CYC:1853
CDB5  A9 84     LDA #$84                        A:00 X:69 Y:33 P:25 SP:FB PPU: 16,109 CYC:1855
CDB7  18        CLC                             A:84 X:69 Y:33 P:A5 SP:FB PPU: 16,115 CYC:1857
CDB8  24 01     BIT $01 = FF                    A:84 X:69 Y:33 P:A4 SP:FB PPU: 16,121 CYC:1859
CDBA  9A        TXS                             A:84 X:69 Y:33 P:E4 SP:FB PPU: 16,130 CYC:1862
CDBB  F0 32     BEQ $CDEF                       A:84 X:69 Y:33 P:E4 SP:69 PPU: 16,136 CYC:1864
CDBD  10 30     BPL $CDEF                       A:84 X:69 Y:33 P:E4 SP:69 PPU: 16,142 CYC:1866
CDBF  B0 2E     BCS $CDEF                       A:84 X:69 Y:33 P:E4 SP:69 PPU: 16,148 CYC:1868
CDC1  50 2C     BVC $CDEF                       A:84 X:69 Y:33 P:E4 SP:69 PPU: 16,154 CYC:1870
CDC3  C9 84     CMP #$84                        A:84 X:69 Y:33 P:E4 SP:69 PPU: 16,160 CYC:1872
CDC5  D0 28     BNE $CDEF                       A:84 X:69 Y:33 P:67 SP:69 PPU: 16,166 CYC:1874
CDC7  E0 69     CPX #$69                        A:84 X:69 Y:33 P:67 SP:69 PPU: 16,172 CYC:1876
CDC9  D0 24     BNE $CDEF                       A:84 X:69 Y:33 P:67 SP:69 PPU: 16,178 CYC:1878
CDCB  C0 33     CPY #$33                        A:84 X:69 Y:33 P:67 SP:69 PPU: 16,184 CYC:1880
CDCD  D0 20     BNE $CDEF                       A:84 X:69 Y:33 P:67 SP:69 PPU: 16,190 CYC:1882
CDCF  A0 01     LDY #$01                        A:84 X:69 Y:33 P:67 SP:69 PPU: 16,196 CYC:1884
CDD1  A9 04     LDA #$04                        A:84 X:69 Y:01 P:65 SP:69 PPU: 16,202 CYC:1886
CDD3  38        SEC                             A:04 X:69 Y:01 P:65 SP:69 PPU: 16,208 CYC:1888
CDD4  B8        CLV                             A:04 X:69 Y:01 P:65 SP:69 PPU: 16,214 CYC:1890
CDD5  A2 00     LDX #$00                        A:04 X:69 Y:01 P:25 SP:69 PPU: 16,220 CYC:1892
CDD7  BA        TSX                             A:04 X:00 Y:01 P:27 SP:69 PPU: 16,226 CYC:1894
CDD8  F0 15     BEQ $CDEF                       A:04 X:69 Y:01 P:25 SP:69 PPU: 16,232 CYC:1896
CDDA  30 13     BMI $CDEF                       A:04 X:69 Y:01 P:25 SP:69 PPU: 16,238 CYC:1898
CDDC  90 11     BCC $CDEF                       A:04 X:69 Y:01 P:25 SP:69 PPU: 16,244 CYC:1900
CDDE  70 0F     BVS $CDEF                       A:04 X:69 Y:01 P:25 SP:69 PPU: 16,250 CYC:1902
CDE0  E0 69     CPX #$69                        A:04 X:69 Y:01 P:25 SP:69 PPU: 16,256 CYC:1904
CDE2  D0 0B     BNE $CDEF                       A:04 X:69 Y:01 P:27 SP:69 PPU: 16,262 CYC:1906
CDE4  C9 04     CMP #$04                        A:04 X:69 Y:01 P:27 SP:69 PPU: 16,268 CYC:1908
CDE6  D0 07     BNE $CDEF                       A:04 X:69 Y:01 P:27 SP:69 PPU: 16,274 CYC:1910
CDE8  C0 01     CPY #$01                        A:04 X:69 Y:01 P:27 SP:69 PPU: 16,280 CYC:1912
CDEA  D0 03     BNE $CDEF                       A:04 X:69 Y:01 P:27 SP:69 PPU: 16,286 CYC:1914
CDEC  4C F3 CD  JMP $CDF3                       A:04 X:69 Y:01 P:27 SP:69 PPU: 16,292 CYC:1916
CDF3  AE FF 07  LDX $07FF = FB                  A:04 X:69 Y:01 P:27 SP:69 PPU: 16,301 CYC:1919
CDF6  9A        TXS                             A:04 X:FB Y:01 P:A5 SP:69 PPU: 16,313 CYC:1923
CDF7  60        RTS                             A:04 X:FB Y:01 P:A5 SP:FB PPU: 16,319 CYC:1925
C609  20 F8 CD  JSR $CDF8                       A:04 X:FB Y:01 P:A5 SP:FD PPU: 16,337 CYC:1931
CDF8  A9 FF     LDA #$FF                        A:04 X:FB Y:01 P:A5 SP:FB PPU: 17, 14 CYC:1937
CDFA  85 01     STA $01 = FF                    A:FF X:FB Y:01 P:A5 SP:FB PPU: 17, 20 CYC:1939
CDFC  BA        TSX                             A:FF X:FB Y:01 P:A5 SP:FB PPU: 17, 29 CYC:1942
CDFD  8E FF 07  STX $07FF = FB                  A:FF X:FB Y:01 P:A5 SP:FB PPU: 17, 35 CYC:1944
CE00  EA        NOP                             A:FF X:FB Y:01 P:A5 SP:FB PPU: 17, 47 CYC:1948
CE01  A2 80     LDX #$80                        A:FF X:FB Y:01 P:A5 SP:FB PPU: 17, 53 CYC:1950
CE03  9A        TXS                             A:FF X:80 Y:01 P:A5 SP:FB PPU: 17, 59 CYC:1952
CE04  A9 33     LDA #$33                        A:FF X:80 Y:01 P:A5 SP:80 PPU: 17, 65 CYC:1954
CE06  48        PHA                             A:33 X:80 Y:01 P:25 SP:80 PPU: 17, 71 CYC:1956
CE07  A9 69     LDA #$69                        A:33 X:80 Y:01 P:25 SP:7F PPU: 17, 80 CYC:1959
CE09  48        PHA                             A:69 X:80 Y:01 P:25 SP:7F PPU: 17, 86 CYC:1961
CE0A  BA        TSX                             A:69 X:80 Y:01 P:25 SP:7E PPU: 17, 95 CYC:1964
CE0B  E0 7E     CPX #$7E                        A:69 X:7E Y:01 P:25 SP:7E PPU: 17,101 CYC:1966
CE0D  D0 20     BNE $CE2F                       A:69 X:7E Y:01 P:27 SP:7E PPU: 17,107 CYC:1968
CE0F  68        PLA                             A:69 X:7E Y:01 P:27 SP:7E PPU: 17,113 CYC:1970
CE10  C9 69     CMP #$69                        A:69 X:7E Y:01 P:25 SP:7F PPU: 17,125 CYC:1974
CE12  D0 1B     BNE $CE2F                       A:69 X:7E Y:01 P:27 SP:7F PPU: 17,131 CYC:1976
CE14  68        PLA                             A:69 X:7E Y:01 P:27 SP:7F PPU: 17,137 CYC:1978
CE15  C9 33     CMP #$33                        A:33 X:7E Y:01 P:25 SP:80 PPU: 17,149 CYC:1982
CE17  D0 16     BNE $CE2F                       A:33 X:7E Y:01 P:27 SP:80 PPU: 17,155 CYC:1984
CE19  BA        TSX                             A:33 X:7E Y:01 P:27 SP:80 PPU: 17,161 CYC:1986
CE1A  E0 80     CPX #$80                        A:33 X:80 Y:01 P:A5 SP:80 PPU: 17,167 CYC:1988
CE1C  D0 11     BNE $CE2F                       A:33 X:80 Y:01 P:27 SP:80 PPU: 17,173 CYC:1990
CE1E  AD 80 01  LDA $0180 = 33                  A:33 X:80 Y:01 P:27 SP:80 PPU: 17,179 CYC:1992
CE21  C9 33     CMP #$33                        A:33 X:80 Y:01 P:25 SP:80 PPU: 17,191 CYC:1996
CE23  D0 0A     BNE $CE2F                       A:33 X:80 Y:01 P:27 SP:80 PPU: 17,197 CYC:1998
CE25  AD 7F 01  LDA $017F = 69                  A:33 X:80 Y:01 P:27 SP:80 PPU: 17,203 CYC:2000
CE28  C9 69     CMP #$69                        A:69 X:80 Y:01 P:25 SP:80 PPU: 17,215 CYC:2004
CE2A  D0 03     BNE $CE2F                       A:69 X:80 Y:01 P:27 SP:80 PPU: 17,221 CYC:2006
CE2C  4C 33 CE  JMP $CE33                       A:69 X:80 Y:01 P:27 SP:80 PPU: 17,227 CYC:2008
CE33  EA        NOP                             A:69 X:80 Y:01 P:27 SP:80 PPU: 17,236 CYC:2011
CE34  A2 80     LDX #$80                        A:69 X:80 Y:01 P:27 SP:80 PPU: 17,242 CYC:2013
CE36  9A        TXS                             A:69 X:80 Y:01 P:A5 SP:80 PPU: 17,248 CYC:2015
CE37  20 3D CE  JSR $CE3D                       A:69 X:80 Y:01 P:A5 SP:80 PPU: 17,254 CYC:2017
CE3D  BA        TSX                             A:69 X:80 Y:01 P:A5 SP:7E PPU: 17,272 CYC:2023
CE3E  E0 7E     CPX #$7E                        A:69 X:7E Y:01 P:25 SP:7E PPU: 17,278 CYC:2025
CE40  D0 19     BNE $CE5B                       A:69 X:7E Y:01 P:27 SP:7E PPU: 17,284 CYC:2027
CE42  68        PLA                             A:69 X:7E Y:01 P:27 SP:7E PPU: 17,290 CYC:2029
CE43  68        PLA                             A:39 X:7E Y:01 P:25 SP:7F PPU: 17,302 CYC:2033
CE44  BA        TSX                             A:CE X:7E Y:01 P:A5 SP:80 PPU: 17,314 CYC:2037
CE45  E0 80     CPX #$80                        A:CE X:80 Y:01 P:A5 SP:80 PPU: 17,320 CYC:2039
CE47  D0 12     BNE $CE5B                       A:CE X:80 Y:01 P:27 SP:80 PPU: 17,326 CYC:2041
CE49  A9 00     LDA #$00                        A:CE X:80 Y:01 P:27 SP:80 PPU: 17,332 CYC:2043
CE4B  20 4E CE  JSR $CE4E                       A:00 X:80 Y:01 P:27 SP:80 PPU: 17,338 CYC:2045
CE4E  68        PLA                             A:00 X:80 Y:01 P:27 SP:7E PPU: 18, 15 CYC:2051
CE4F  C9 4D     CMP #$4D                        A:4D X:80 Y:01 P:25 SP:7F PPU: 18, 27 CYC:2055
CE51  D0 08     BNE $CE5B                       A:4D X:80 Y:01 P:27 SP:7F PPU: 18, 33 CYC:2057
CE53  68        PLA                             A:4D X:80 Y:01 P:27 SP:7F PPU: 18, 39 CYC:2059
CE54  C9 CE     CMP #$CE                        A:CE X:80 Y:01 P:A5 SP:80 PPU: 18, 51 CYC:2063
CE56  D0 03     BNE $CE5B                       A:CE X:80 Y:01 P:27 SP:80 PPU: 18, 57 CYC:2065
CE58  4C 5F CE  JMP $CE5F                       A:CE X:80 Y:01 P:27 SP:80 PPU: 18, 63 CYC:2067
CE5F  EA        NOP                             A:CE X:80 Y:01 P:27 SP:80 PPU: 18, 72 CYC:2070
CE60  A9 CE     LDA #$CE                        A:CE X:80 Y:01 P:27 SP:80 PPU: 18, 78 CYC:2072
CE62  48        PHA                             A:CE X:80 Y:01 P:A5 SP:80 PPU: 18, 84 CYC:2074
CE63  A9 66     LDA #$66                        A:CE X:80 Y:01 P:A5 SP:7F PPU: 18, 93 CYC:2077
CE65  48        PHA                             A:66 X:80 Y:01 P:25 SP:7F PPU: 18, 99 CYC:2079
CE66  60        RTS                             A:66 X:80 Y:01 P:25 SP:7E PPU: 18,108 CYC:2082
CE67  A2 77     LDX #$77                        A:66 X:80 Y:01 P:25 SP:80 PPU: 18,126 CYC:2088
CE69  A0 69     LDY #$69                        A:66 X:77 Y:01 P:25 SP:80 PPU: 18,132 CYC:2090
CE6B  18        CLC                             A:66 X:77 Y:69 P:25 SP:80 PPU: 18,138 CYC:2092
CE6C  24 01     BIT $01 = FF                    A:66 X:77 Y:69 P:24 SP:80 PPU: 18,144 CYC:2094
CE6E  A9 83     LDA #$83                        A:66 X:77 Y:69 P:E4 SP:80 PPU: 18,153 CYC:2097
CE70  20 66 CE  JSR $CE66                       A:83 X:77 Y:69 P:E4 SP:80 PPU: 18,159 CYC:2099
CE66  60        RTS                             A:83 X:77 Y:69 P:E4 SP:7E PPU: 18,177 CYC:2105
CE73  F0 24     BEQ $CE99                       A:83 X:77 Y:69 P:E4 SP:80 PPU: 18,195 CYC:2111
CE75  10 22     BPL $CE99                       A:83 X:77 Y:69 P:E4 SP:80 PPU: 18,201 CYC:2113
CE77  B0 20     BCS $CE99                       A:83 X:77 Y:69 P:E4 SP:80 PPU: 18,207 CYC:2115
CE79  50 1E     BVC $CE99                       A:83 X:77 Y:69 P:E4 SP:80 PPU: 18,213 CYC:2117
CE7B  C9 83     CMP #$83                        A:83 X:77 Y:69 P:E4 SP:80 PPU: 18,219 CYC:2119
CE7D  D0 1A     BNE $CE99                       A:83 X:77 Y:69 P:67 SP:80 PPU: 18,225 CYC:2121
CE7F  C0 69     CPY #$69                        A:83 X:77 Y:69 P:67 SP:80 PPU: 18,231 CYC:2123
CE81  D0 16     BNE $CE99                       A:83 X:77 Y:69 P:67 SP:80 PPU: 18,237 CYC:2125
CE83  E0 77     CPX #$77                        A:83 X:77 Y:69 P:67 SP:80 PPU: 18,243 CYC:2127
CE85  D0 12     BNE $CE99                       A:83 X:77 Y:69 P:67 SP:80 PPU: 18,249 CYC:2129
CE87  38        SEC                             A:83 X:77 Y:69 P:67 SP:80 PPU: 18,255 CYC:2131
CE88  B8        CLV                             A:83 X:77 Y:69 P:67 SP:80 PPU: 18,261 CYC:2133
CE89  A9 00     LDA #$00                        A:83 X:77 Y:69 P:27 SP:80 PPU: 18,267 CYC:2135
CE8B  20 66 CE  JSR $CE66                       A:00 X:77 Y:69 P:27 SP:80 PPU: 18,273 CYC:2137
CE66  60        RTS                             A:00 X:77 Y:69 P:27 SP:7E PPU: 18,291 CYC:2143
CE8E  D0 09     BNE $CE99                       A:00 X:77 Y:69 P:27 SP:80 PPU: 18,309 CYC:2149
CE90  30 07     BMI $CE99                       A:00 X:77 Y:69 P:27 SP:80 PPU: 18,315 CYC:2151
CE92  90 05     BCC $CE99                       A:00 X:77 Y:69 P:27 SP:80 PPU: 18,321 CYC:2153
CE94  70 03     BVS $CE99                       A:00 X:77 Y:69 P:27 SP:80 PPU: 18,327 CYC:2155
CE96  4C 9D CE  JMP $CE9D                       A:00 X:77 Y:69 P:27 SP:80 PPU: 18,333 CYC:2157
CE9D  EA        NOP                             A:00 X:77 Y:69 P:27 SP:80 PPU: 19,  1 CYC:2160
CE9E  A9 CE     LDA #$CE                        A:00 X:77 Y:69 P:27 SP:80 PPU: 19,  7 CYC:2162
CEA0  48        PHA                             A:CE X:77 Y:69 P:A5 SP:80 PPU: 19, 13 CYC:2164
CEA1  A9 AE     LDA #$AE                        A:CE X:77 Y:69 P:A5 SP:7F PPU: 19, 22 CYC:2167
CEA3  48        PHA                             A:AE X:77 Y:69 P:A5 SP:7F PPU: 19, 28 CYC:2169
CEA4  A9 65     LDA #$65                        A:AE X:77 Y:69 P:A5 SP:7E PPU: 19, 37 CYC:2172
CEA6  48        PHA                             A:65 X:77 Y:69 P:25 SP:7E PPU: 19, 43 CYC:2174
CEA7  A9 55     LDA #$55                        A:65 X:77 Y:69 P:25 SP:7D PPU: 19, 52 CYC:2177
CEA9  A0 88     LDY #$88                        A:55 X:77 Y:69 P:25 SP:7D PPU: 19, 58 CYC:2179
CEAB  A2 99     LDX #$99                        A:55 X:77 Y:88 P:A5 SP:7D PPU: 19, 64 CYC:2181
CEAD  40        RTI                             A:55 X:99 Y:88 P:A5 SP:7D PPU: 19, 70 CYC:2183
CEAE  30 35     BMI $CEE5                       A:55 X:99 Y:88 P:65 SP:80 PPU: 19, 88 CYC:2189
CEB0  50 33     BVC $CEE5                       A:55 X:99 Y:88 P:65 SP:80 PPU: 19, 94 CYC:2191
CEB2  F0 31     BEQ $CEE5                       A:55 X:99 Y:88 P:65 SP:80 PPU: 19,100 CYC:2193
CEB4  90 2F     BCC $CEE5                       A:55 X:99 Y:88 P:65 SP:80 PPU: 19,106 CYC:2195
CEB6  C9 55     CMP #$55                        A:55 X:99 Y:88 P:65 SP:80 PPU: 19,112 CYC:2197
CEB8  D0 2B     BNE $CEE5                       A:55 X:99 Y:88 P:67 SP:80 PPU: 19,118 CYC:2199
CEBA  C0 88     CPY #$88                        A:55 X:99 Y:88 P:67 SP:80 PPU: 19,124 CYC:2201
CEBC  D0 27     BNE $CEE5                       A:55 X:99 Y:88 P:67 SP:80 PPU: 19,130 CYC:2203
CEBE  E0 99     CPX #$99                        A:55 X:99 Y:88 P:67 SP:80 PPU: 19,136 CYC:2205
CEC0  D0 23     BNE $CEE5                       A:55 X:99 Y:88 P:67 SP:80 PPU: 19,142 CYC:2207
CEC2  A9 CE     LDA #$CE                        A:55 X:99 Y:88 P:67 SP:80 PPU: 19,148 CYC:2209
CEC4  48        PHA                             A:CE X:99 Y:88 P:E5 SP:80 PPU: 19,154 CYC:2211
CEC5  A9 CE     LDA #$CE                        A:CE X:99 Y:88 P:E5 SP:7F PPU: 19,163 CYC:2214
CEC7  48        PHA                             A:CE X:99 Y:88 P:E5 SP:7F PPU: 19,169 CYC:2216
CEC8  A9 87     LDA #$87                        A:CE X:99 Y:88 P:E5 SP:7E PPU: 19,178 CYC:2219
CECA  48        PHA                             A:87 X:99 Y:88 P:E5 SP:7E PPU: 19,184 CYC:2221
CECB  A9 55     LDA #$55                        A:87 X:99 Y:88 P:E5 SP:7D PPU: 19,193 CYC:2224
CECD  40        RTI                             A:55 X:99 Y:88 P:65 SP:7D PPU: 19,199 CYC:2226
CECE  10 15     BPL $CEE5                       A:55 X:99 Y:88 P:A7 SP:80 PPU: 19,217 CYC:2232
CED0  70 13     BVS $CEE5                       A:55 X:99 Y:88 P:A7 SP:80 PPU: 19,223 CYC:2234
CED2  D0 11     BNE $CEE5                       A:55 X:99 Y:88 P:A7 SP:80 PPU: 19,229 CYC:2236
CED4  90 0F     BCC $CEE5                       A:55 X:99 Y:88 P:A7 SP:80 PPU: 19,235 CYC:2238
CED6  C9 55     CMP #$55                        A:55 X:99 Y:88 P:A7 SP:80 PPU: 19,241 CYC:2240
CED8  D0 0B     BNE $CEE5                       A:55 X:99 Y:88 P:27 SP:80 PPU: 19,247 CYC:2242
CEDA  C0 88     CPY #$88                        A:55 X:99 Y:88 P:27 SP:80 PPU: 19,253 CYC:2244
CEDC  D0 07     BNE $CEE5                       A:55 X:99 Y:88 P:27 SP:80 PPU: 19,259 CYC:2246
CEDE  E0 99     CPX #$99                        A:55 X:99 Y:88 P:27 SP:80 PPU: 19,265 CYC:2248
CEE0  D0 03     BNE $CEE5                       A:55 X:99 Y:88 P:27 SP:80 PPU: 19,271 CYC:2250
CEE2  4C E9 CE  JMP $CEE9                       A:55 X:99 Y:88 P:27 SP:80 PPU: 19,277 CYC:2252
CEE9  AE FF 07  LDX $07FF = FB                  A:55 X:99 Y:88 P:27 SP:80 PPU: 19,286 CYC:2255
CEEC  9A        TXS                             A:55 X:FB Y:88 P:A5 SP:80 PPU: 19,298 CYC:2259
CEED  60        RTS                             A:55 X:FB Y:88 P:A5 SP:FB PPU: 19,304 CYC:2261
C60C  20 EE CE  JSR $CEEE                       A:55 X:FB Y:88 P:A5 SP:FD PPU: 19,322 CYC:2267
CEEE  A2 55     LDX #$55                        A:55 X:FB Y:88 P:A5 SP:FB PPU: 19,340 CYC:2273
CEF0  A0 69     LDY #$69                        A:55 X:55 Y:88 P:25 SP:FB PPU: 20,  5 CYC:2275
CEF2  A9 FF     LDA #$FF                        A:55 X:55 Y:69 P:25 SP:FB PPU: 20, 11 CYC:2277
CEF4  85 01     STA $01 = FF                    A:FF X:55 Y:69 P:A5 SP:FB PPU: 20, 17 CYC:2279
CEF6  EA        NOP                             A:FF X:55 Y:69 P:A5 SP:FB PPU: 20, 26 CYC:2282
CEF7  24 01     BIT $01 = FF                    A:FF X:55 Y:69 P:A5 SP:FB PPU: 20, 32 CYC:2284
CEF9  38        SEC                             A:FF X:55 Y:69 P:E5 SP:FB PPU: 20, 41 CYC:2287
CEFA  A9 01     LDA #$01                        A:FF X:55 Y:69 P:E5 SP:FB PPU: 20, 47 CYC:2289
CEFC  4A        LSR A                           A:01 X:55 Y:69 P:65 SP:FB PPU: 20, 53 CYC:2291
CEFD  90 1D     BCC $CF1C                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 59 CYC:2293
CEFF  D0 1B     BNE $CF1C                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 65 CYC:2295
CF01  30 19     BMI $CF1C                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 71 CYC:2297
CF03  50 17     BVC $CF1C                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 77 CYC:2299
CF05  C9 00     CMP #$00                        A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 83 CYC:2301
CF07  D0 13     BNE $CF1C                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 89 CYC:2303
CF09  B8        CLV                             A:00 X:55 Y:69 P:67 SP:FB PPU: 20, 95 CYC:2305
CF0A  A9 AA     LDA #$AA                        A:00 X:55 Y:69 P:27 SP:FB PPU: 20,101 CYC:2307
CF0C  4A        LSR A                           A:AA X:55 Y:69 P:A5 SP:FB PPU: 20,107 CYC:2309
CF0D  B0 0D     BCS $CF1C                       A:55 X:55 Y:69 P:24 SP:FB PPU: 20,113 CYC:2311
CF0F  F0 0B     BEQ $CF1C                       A:55 X:55 Y:69 P:24 SP:FB PPU: 20,119 CYC:2313
CF11  30 09     BMI $CF1C                       A:55 X:55 Y:69 P:24 SP:FB PPU: 20,125 CYC:2315
CF13  70 07     BVS $CF1C                       A:55 X:55 Y:69 P:24 SP:FB PPU: 20,131 CYC:2317
CF15  C9 55     CMP #$55                        A:55 X:55 Y:69 P:24 SP:FB PPU: 20,137 CYC:2319
CF17  D0 03     BNE $CF1C                       A:55 X:55 Y:69 P:27 SP:FB PPU: 20,143 CYC:2321
CF19  4C 20 CF  JMP $CF20                       A:55 X:55 Y:69 P:27 SP:FB PPU: 20,149 CYC:2323
CF20  EA        NOP                             A:55 X:55 Y:69 P:27 SP:FB PPU: 20,158 CYC:2326
CF21  24 01     BIT $01 = FF                    A:55 X:55 Y:69 P:27 SP:FB PPU: 20,164 CYC:2328
CF23  38        SEC                             A:55 X:55 Y:69 P:E5 SP:FB PPU: 20,173 CYC:2331
CF24  A9 80     LDA #$80                        A:55 X:55 Y:69 P:E5 SP:FB PPU: 20,179 CYC:2333
CF26  0A        ASL A                           A:80 X:55 Y:69 P:E5 SP:FB PPU: 20,185 CYC:2335
CF27  90 1E     BCC $CF47                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20,191 CYC:2337
CF29  D0 1C     BNE $CF47                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20,197 CYC:2339
CF2B  30 1A     BMI $CF47                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20,203 CYC:2341
CF2D  50 18     BVC $CF47                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20,209 CYC:2343
CF2F  C9 00     CMP #$00                        A:00 X:55 Y:69 P:67 SP:FB PPU: 20,215 CYC:2345
CF31  D0 14     BNE $CF47                       A:00 X:55 Y:69 P:67 SP:FB PPU: 20,221 CYC:2347
CF33  B8        CLV                             A:00 X:55 Y:69 P:67 SP:FB PPU: 20,227 CYC:2349
CF34  38        SEC                             A:00 X:55 Y:69 P:27 SP:FB PPU: 20,233 CYC:2351
CF35  A9 55     LDA #$55                        A:00 X:55 Y:69 P:27 SP:FB PPU: 20,239 CYC:2353
CF37  0A        ASL A                           A:55 X:55 Y:69 P:25 SP:FB PPU: 20,245 CYC:2355
CF38  B0 0D     BCS $CF47                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 20,251 CYC:2357
CF3A  F0 0B     BEQ $CF47                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 20,257 CYC:2359
CF3C  10 09     BPL $CF47                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 20,263 CYC:2361
CF3E  70 07     BVS $CF47                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 20,269 CYC:2363
CF40  C9 AA     CMP #$AA                        A:AA X:55 Y:69 P:A4 SP:FB PPU: 20,275 CYC:2365
CF42  D0 03     BNE $CF47                       A:AA X:55 Y:69 P:27 SP:FB PPU: 20,281 CYC:2367
CF44  4C 4B CF  JMP $CF4B                       A:AA X:55 Y:69 P:27 SP:FB PPU: 20,287 CYC:2369
CF4B  EA        NOP                             A:AA X:55 Y:69 P:27 SP:FB PPU: 20,296 CYC:2372
CF4C  24 01     BIT $01 = FF                    A:AA X:55 Y:69 P:27 SP:FB PPU: 20,302 CYC:2374
CF4E  38        SEC                             A:AA X:55 Y:69 P:E5 SP:FB PPU: 20,311 CYC:2377
CF4F  A9 01     LDA #$01                        A:AA X:55 Y:69 P:E5 SP:FB PPU: 20,317 CYC:2379
CF51  6A        ROR A                           A:01 X:55 Y:69 P:65 SP:FB PPU: 20,323 CYC:2381
CF52  90 1E     BCC $CF72                       A:80 X:55 Y:69 P:E5 SP:FB PPU: 20,329 CYC:2383
CF54  F0 1C     BEQ $CF72                       A:80 X:55 Y:69 P:E5 SP:FB PPU: 20,335 CYC:2385
CF56  10 1A     BPL $CF72                       A:80 X:55 Y:69 P:E5 SP:FB PPU: 21,  0 CYC:2387
CF58  50 18     BVC $CF72                       A:80 X:55 Y:69 P:E5 SP:FB PPU: 21,  6 CYC:2389
CF5A  C9 80     CMP #$80                        A:80 X:55 Y:69 P:E5 SP:FB PPU: 21, 12 CYC:2391
CF5C  D0 14     BNE $CF72                       A:80 X:55 Y:69 P:67 SP:FB PPU: 21, 18 CYC:2393
CF5E  B8        CLV                             A:80 X:55 Y:69 P:67 SP:FB PPU: 21, 24 CYC:2395
CF5F  18        CLC                             A:80 X:55 Y:69 P:27 SP:FB PPU: 21, 30 CYC:2397
CF60  A9 55     LDA #$55                        A:80 X:55 Y:69 P:26 SP:FB PPU: 21, 36 CYC:2399
CF62  6A        ROR A                           A:55 X:55 Y:69 P:24 SP:FB PPU: 21, 42 CYC:2401
CF63  90 0D     BCC $CF72                       A:2A X:55 Y:69 P:25 SP:FB PPU: 21, 48 CYC:2403
CF65  F0 0B     BEQ $CF72                       A:2A X:55 Y:69 P:25 SP:FB PPU: 21, 54 CYC:2405
CF67  30 09     BMI $CF72                       A:2A X:55 Y:69 P:25 SP:FB PPU: 21, 60 CYC:2407
CF69  70 07     BVS $CF72                       A:2A X:55 Y:69 P:25 SP:FB PPU: 21, 66 CYC:2409
CF6B  C9 2A     CMP #$2A                        A:2A X:55 Y:69 P:25 SP:FB PPU: 21, 72 CYC:2411
CF6D  D0 03     BNE $CF72                       A:2A X:55 Y:69 P:27 SP:FB PPU: 21, 78 CYC:2413
CF6F  4C 76 CF  JMP $CF76                       A:2A X:55 Y:69 P:27 SP:FB PPU: 21, 84 CYC:2415
CF76  EA        NOP                             A:2A X:55 Y:69 P:27 SP:FB PPU: 21, 93 CYC:2418
CF77  24 01     BIT $01 = FF                    A:2A X:55 Y:69 P:27 SP:FB PPU: 21, 99 CYC:2420
CF79  38        SEC                             A:2A X:55 Y:69 P:E5 SP:FB PPU: 21,108 CYC:2423
CF7A  A9 80     LDA #$80                        A:2A X:55 Y:69 P:E5 SP:FB PPU: 21,114 CYC:2425
CF7C  2A        ROL A                           A:80 X:55 Y:69 P:E5 SP:FB PPU: 21,120 CYC:2427
CF7D  90 1E     BCC $CF9D                       A:01 X:55 Y:69 P:65 SP:FB PPU: 21,126 CYC:2429
CF7F  F0 1C     BEQ $CF9D                       A:01 X:55 Y:69 P:65 SP:FB PPU: 21,132 CYC:2431
CF81  30 1A     BMI $CF9D                       A:01 X:55 Y:69 P:65 SP:FB PPU: 21,138 CYC:2433
CF83  50 18     BVC $CF9D                       A:01 X:55 Y:69 P:65 SP:FB PPU: 21,144 CYC:2435
CF85  C9 01     CMP #$01                        A:01 X:55 Y:69 P:65 SP:FB PPU: 21,150 CYC:2437
CF87  D0 14     BNE $CF9D                       A:01 X:55 Y:69 P:67 SP:FB PPU: 21,156 CYC:2439
CF89  B8        CLV                             A:01 X:55 Y:69 P:67 SP:FB PPU: 21,162 CYC:2441
CF8A  18        CLC                             A:01 X:55 Y:69 P:27 SP:FB PPU: 21,168 CYC:2443
CF8B  A9 55     LDA #$55                        A:01 X:55 Y:69 P:26 SP:FB PPU: 21,174 CYC:2445
CF8D  2A        ROL A                           A:55 X:55 Y:69 P:24 SP:FB PPU: 21,180 CYC:2447
CF8E  B0 0D     BCS $CF9D                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 21,186 CYC:2449
CF90  F0 0B     BEQ $CF9D                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 21,192 CYC:2451
CF92  10 09     BPL $CF9D                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 21,198 CYC:2453
CF94  70 07     BVS $CF9D                       A:AA X:55 Y:69 P:A4 SP:FB PPU: 21,204 CYC:2455
CF96  C9 AA     CMP #$AA                        A:AA X:55 Y:69 P:A4 SP:FB PPU: 21,210 CYC:2457
CF98  D0 03     BNE $CF9D                       A:AA X:55 Y:69 P:27 SP:FB PPU: 21,216 CYC:2459
CF9A  4C A1 CF  JMP $CFA1                       A:AA X:55 Y:69 P:27 SP:FB PPU: 21,222 CYC:2461
CFA1  60        RTS                             A:AA X:55 Y:69 P:27 SP:FB PPU: 21,231 CYC:2464
C60F  20 A2 CF  JSR $CFA2                       A:AA X:55 Y:69 P:27 SP:FD PPU: 21,249 CYC:2470
CFA2  A5 00     LDA $00 = 00                    A:AA X:55 Y:69 P:27 SP:FB PPU: 21,267 CYC:2476
CFA4  8D FF 07  STA $07FF = FB                  A:00 X:55 Y:69 P:27 SP:FB PPU: 21,276 CYC:2479
CFA7  A9 00     LDA #$00                        A:00 X:55 Y:69 P:27 SP:FB PPU: 21,288 CYC:2483
CFA9  85 80     STA $80 = 00                    A:00 X:55 Y:69 P:27 SP:FB PPU: 21,294 CYC:2485
CFAB  A9 02     LDA #$02                        A:00 X:55 Y:69 P:27 SP:FB PPU: 21,303 CYC:2488
CFAD  85 81     STA $81 = 00                    A:02 X:55 Y:69 P:25 SP:FB PPU: 21,309 CYC:2490
CFAF  A9 FF     LDA #$FF                        A:02 X:55 Y:69 P:25 SP:FB PPU: 21,318 CYC:2493
CFB1  85 01     STA $01 = FF                    A:FF X:55 Y:69 P:A5 SP:FB PPU: 21,324 CYC:2495
CFB3  A9 00     LDA #$00                        A:FF X:55 Y:69 P:A5 SP:FB PPU: 21,333 CYC:2498
CFB5  85 82     STA $82 = 00                    A:00 X:55 Y:69 P:27 SP:FB PPU: 21,339 CYC:2500
CFB7  A9 03     LDA #$03                        A:00 X:55 Y:69 P:27 SP:FB PPU: 22,  7 CYC:2503
CFB9  85 83     STA $83 = 00                    A:03 X:55 Y:69 P:25 SP:FB PPU: 22, 13 CYC:2505
CFBB  85 84     STA $84 = 00                    A:03 X:55 Y:69 P:25 SP:FB PPU: 22, 22 CYC:2508
CFBD  A9 00     LDA #$00                        A:03 X:55 Y:69 P:25 SP:FB PPU: 22, 31 CYC:2511
CFBF  85 FF     STA $FF = 00                    A:00 X:55 Y:69 P:27 SP:FB PPU: 22, 37 CYC:2513
CFC1  A9 04     LDA #$04                        A:00 X:55 Y:69 P:27 SP:FB PPU: 22, 46 CYC:2516
CFC3  85 00     STA $00 = 00                    A:04 X:55 Y:69 P:25 SP:FB PPU: 22, 52 CYC:2518
CFC5  A9 5A     LDA #$5A                        A:04 X:55 Y:69 P:25 SP:FB PPU: 22, 61 CYC:2521
CFC7  8D 00 02  STA $0200 = 00                  A:5A X:55 Y:69 P:25 SP:FB PPU: 22, 67 CYC:2523
CFCA  A9 5B     LDA #$5B                        A:5A X:55 Y:69 P:25 SP:FB PPU: 22, 79 CYC:2527
CFCC  8D 00 03  STA $0300 = 00                  A:5B X:55 Y:69 P:25 SP:FB PPU: 22, 85 CYC:2529
CFCF  A9 5C     LDA #$5C                        A:5B X:55 Y:69 P:25 SP:FB PPU: 22, 97 CYC:2533
CFD1  8D 03 03  STA $0303 = 00                  A:5C X:55 Y:69 P:25 SP:FB PPU: 22,103 CYC:2535
CFD4  A9 5D     LDA #$5D                        A:5C X:55 Y:69 P:25 SP:FB PPU: 22,115 CYC:2539
CFD6  8D 00 04  STA $0400 = 00                  A:5D X:55 Y:69 P:25 SP:FB PPU: 22,121 CYC:2541
CFD9  A2 00     LDX #$00                        A:5D X:55 Y:69 P:25 SP:FB PPU: 22,133 CYC:2545
CFDB  A1 80     LDA ($80,X) @ 80 = 0200 = 5A    A:5D X:00 Y:69 P:27 SP:FB PPU: 22,139 CYC:2547
CFDD  C9 5A     CMP #$5A                        A:5A X:00 Y:69 P:25 SP:FB PPU: 22,157 CYC:2553
CFDF  D0 1F     BNE $D000                       A:5A X:00 Y:69 P:27 SP:FB PPU: 22,163 CYC:2555
CFE1  E8        INX                             A:5A X:00 Y:69 P:27 SP:FB PPU: 22,169 CYC:2557
CFE2  E8        INX                             A:5A X:01 Y:69 P:25 SP:FB PPU: 22,175 CYC:2559
CFE3  A1 80     LDA ($80,X) @ 82 = 0300 = 5B    A:5A X:02 Y:69 P:25 SP:FB PPU: 22,181 CYC:2561
CFE5  C9 5B     CMP #$5B                        A:5B X:02 Y:69 P:25 SP:FB PPU: 22,199 CYC:2567
CFE7  D0 17     BNE $D000                       A:5B X:02 Y:69 P:27 SP:FB PPU: 22,205 CYC:2569
CFE9  E8        INX                             A:5B X:02 Y:69 P:27 SP:FB PPU: 22,211 CYC:2571
CFEA  A1 80     LDA ($80,X) @ 83 = 0303 = 5C    A:5B X:03 Y:69 P:25 SP:FB PPU: 22,217 CYC:2573
CFEC  C9 5C     CMP #$5C                        A:5C X:03 Y:69 P:25 SP:FB PPU: 22,235 CYC:2579
CFEE  D0 10     BNE $D000                       A:5C X:03 Y:69 P:27 SP:FB PPU: 22,241 CYC:2581
CFF0  A2 00     LDX #$00                        A:5C X:03 Y:69 P:27 SP:FB PPU: 22,247 CYC:2583
CFF2  A1 FF     LDA ($FF,X) @ FF = 0400 = 5D    A:5C X:00 Y:69 P:27 SP:FB PPU: 22,253 CYC:2585
CFF4  C9 5D     CMP #$5D                        A:5D X:00 Y:69 P:25 SP:FB PPU: 22,271 CYC:2591
CFF6  D0 08     BNE $D000                       A:5D X:00 Y:69 P:27 SP:FB PPU: 22,277 CYC:2593
CFF8  A2 81     LDX #$81                        A:5D X:00 Y:69 P:27 SP:FB PPU: 22,283 CYC:2595
CFFA  A1 FF     LDA ($FF,X) @ 80 = 0200 = 5A    A:5D X:81 Y:69 P:A5 SP:FB PPU: 22,289 CYC:2597
CFFC  C9 5A     CMP #$5A                        A:5A X:81 Y:69 P:25 SP:FB PPU: 22,307 CYC:2603
CFFE  F0 05     BEQ $D005                       A:5A X:81 Y:69 P:27 SP:FB PPU: 22,313 CYC:2605
D005  A9 AA     LDA #$AA                        A:5A X:81 Y:69 P:27 SP:FB PPU: 22,322 CYC:2608
D007  A2 00     LDX #$00                        A:AA X:81 Y:69 P:A5 SP:FB PPU: 22,328 CYC:2610
D009  81 80     STA ($80,X) @ 80 = 0200 = 5A    A:AA X:00 Y:69 P:27 SP:FB PPU: 22,334 CYC:2612
D00B  E8        INX                             A:AA X:00 Y:69 P:27 SP:FB PPU: 23, 11 CYC:2618
D00C  E8        INX                             A:AA X:01 Y:69 P:25 SP:FB PPU: 23, 17 CYC:2620
D00D  A9 AB     LDA #$AB                        A:AA X:02 Y:69 P:25 SP:FB PPU: 23, 23 CYC:2622
D00F  81 80     STA ($80,X) @ 82 = 0300 = 5B    A:AB X:02 Y:69 P:A5 SP:FB PPU: 23, 29 CYC:2624
D011  E8        INX                             A:AB X:02 Y:69 P:A5 SP:FB PPU: 23, 47 CYC:2630
D012  A9 AC     LDA #$AC                        A:AB X:03 Y:69 P:25 SP:FB PPU: 23, 53 CYC:2632
D014  81 80     STA ($80,X) @ 83 = 0303 = 5C    A:AC X:03 Y:69 P:A5 SP:FB PPU: 23, 59 CYC:2634
D016  A2 00     LDX #$00                        A:AC X:03 Y:69 P:A5 SP:FB PPU: 23, 77 CYC:2640
D018  A9 AD     LDA #$AD                        A:AC X:00 Y:69 P:27 SP:FB PPU: 23, 83 CYC:2642
D01A  81 FF     STA ($FF,X) @ FF = 0400 = 5D    A:AD X:00 Y:69 P:A5 SP:FB PPU: 23, 89 CYC:2644
D01C  AD 00 02  LDA $0200 = AA                  A:AD X:00 Y:69 P:A5 SP:FB PPU: 23,107 CYC:2650
D01F  C9 AA     CMP #$AA                        A:AA X:00 Y:69 P:A5 SP:FB PPU: 23,119 CYC:2654
D021  D0 15     BNE $D038                       A:AA X:00 Y:69 P:27 SP:FB PPU: 23,125 CYC:2656
D023  AD 00 03  LDA $0300 = AB                  A:AA X:00 Y:69 P:27 SP:FB PPU: 23,131 CYC:2658
D026  C9 AB     CMP #$AB                        A:AB X:00 Y:69 P:A5 SP:FB PPU: 23,143 CYC:2662
D028  D0 0E     BNE $D038                       A:AB X:00 Y:69 P:27 SP:FB PPU: 23,149 CYC:2664
D02A  AD 03 03  LDA $0303 = AC                  A:AB X:00 Y:69 P:27 SP:FB PPU: 23,155 CYC:2666
D02D  C9 AC     CMP #$AC                        A:AC X:00 Y:69 P:A5 SP:FB PPU: 23,167 CYC:2670
D02F  D0 07     BNE $D038                       A:AC X:00 Y:69 P:27 SP:FB PPU: 23,173 CYC:2672
D031  AD 00 04  LDA $0400 = AD                  A:AC X:00 Y:69 P:27 SP:FB PPU: 23,179 CYC:2674
D034  C9 AD     CMP #$AD                        A:AD X:00 Y:69 P:A5 SP:FB PPU: 23,191 CYC:2678
D036  F0 05     BEQ $D03D                       A:AD X:00 Y:69 P:27 SP:FB PPU: 23,197 CYC:2680
D03D  AD FF 07  LDA $07FF = 00                  A:AD X:00 Y:69 P:27 SP:FB PPU: 23,206 CYC:2683
D040  85 00     STA $00 = 04                    A:00 X:00 Y:69 P:27 SP:FB PPU: 23,218 CYC:2687
D042  A9 00     LDA #$00                        A:00 X:00 Y:69 P:27 SP:FB PPU: 23,227 CYC:2690
D044  8D 00 03  STA $0300 = AB                  A:00 X:00 Y:69 P:27 SP:FB PPU: 23,233 CYC:2692
D047  A9 AA     LDA #$AA                        A:00 X:00 Y:69 P:27 SP:FB PPU: 23,245 CYC:2696
D049  8D 00 02  STA $0200 = AA                  A:AA X:00 Y:69 P:A5 SP:FB PPU: 23,251 CYC:2698
D04C  A2 00     LDX #$00                        A:AA X:00 Y:69 P:A5 SP:FB PPU: 23,263 CYC:2702
D04E  A0 5A     LDY #$5A                        A:AA X:00 Y:69 P:27 SP:FB PPU: 23,269 CYC:2704
D050  20 B6 F7  JSR $F7B6                       A:AA X:00 Y:5A P:25 SP:FB PPU: 23,275 CYC:2706
F7B6  18        CLC                             A:AA X:00 Y:5A P:25 SP:F9 PPU: 23,293 CYC:2712
F7B7  A9 FF     LDA #$FF                        A:AA X:00 Y:5A P:24 SP:F9 PPU: 23,299 CYC:2714
F7B9  85 01     STA $01 = FF                    A:FF X:00 Y:5A P:A4 SP:F9 PPU: 23,305 CYC:2716
F7BB  24 01     BIT $01 = FF                    A:FF X:00 Y:5A P:A4 SP:F9 PPU: 23,314 CYC:2719
F7BD  A9 55     LDA #$55                        A:FF X:00 Y:5A P:E4 SP:F9 PPU: 23,323 CYC:2722
F7BF  60        RTS                             A:55 X:00 Y:5A P:64 SP:F9 PPU: 23,329 CYC:2724
D053  01 80     ORA ($80,X) @ 80 = 0200 = AA    A:55 X:00 Y:5A P:64 SP:FB PPU: 24,  6 CYC:2730
D055  20 C0 F7  JSR $F7C0                       A:FF X:00 Y:5A P:E4 SP:FB PPU: 24, 24 CYC:2736
F7C0  B0 09     BCS $F7CB                       A:FF X:00 Y:5A P:E4 SP:F9 PPU: 24, 42 CYC:2742
F7C2  10 07     BPL $F7CB                       A:FF X:00 Y:5A P:E4 SP:F9 PPU: 24, 48 CYC:2744
F7C4  C9 FF     CMP #$FF                        A:FF X:00 Y:5A P:E4 SP:F9 PPU: 24, 54 CYC:2746
F7C6  D0 03     BNE $F7CB                       A:FF X:00 Y:5A P:67 SP:F9 PPU: 24, 60 CYC:2748
F7C8  50 01     BVC $F7CB                       A:FF X:00 Y:5A P:67 SP:F9 PPU: 24, 66 CYC:2750
F7CA  60        RTS                             A:FF X:00 Y:5A P:67 SP:F9 PPU: 24, 72 CYC:2752
D058  C8        INY                             A:FF X:00 Y:5A P:67 SP:FB PPU: 24, 90 CYC:2758
D059  20 CE F7  JSR $F7CE                       A:FF X:00 Y:5B P:65 SP:FB PPU: 24, 96 CYC:2760
F7CE  38        SEC                             A:FF X:00 Y:5B P:65 SP:F9 PPU: 24,114 CYC:2766
F7CF  B8        CLV                             A:FF X:00 Y:5B P:65 SP:F9 PPU: 24,120 CYC:2768
F7D0  A9 00     LDA #$00                        A:FF X:00 Y:5B P:25 SP:F9 PPU: 24,126 CYC:2770
F7D2  60        RTS                             A:00 X:00 Y:5B P:27 SP:F9 PPU: 24,132 CYC:2772
D05C  01 82     ORA ($82,X) @ 82 = 0300 = 00    A:00 X:00 Y:5B P:27 SP:FB PPU: 24,150 CYC:2778
D05E  20 D3 F7  JSR $F7D3                       A:00 X:00 Y:5B P:27 SP:FB PPU: 24,168 CYC:2784
F7D3  D0 07     BNE $F7DC                       A:00 X:00 Y:5B P:27 SP:F9 PPU: 24,186 CYC:2790
F7D5  70 05     BVS $F7DC                       A:00 X:00 Y:5B P:27 SP:F9 PPU: 24,192 CYC:2792
F7D7  90 03     BCC $F7DC                       A:00 X:00 Y:5B P:27 SP:F9 PPU: 24,198 CYC:2794
F7D9  30 01     BMI $F7DC                       A:00 X:00 Y:5B P:27 SP:F9 PPU: 24,204 CYC:2796
F7DB  60        RTS                             A:00 X:00 Y:5B P:27 SP:F9 PPU: 24,210 CYC:2798
D061  C8        INY                             A:00 X:00 Y:5B P:27 SP:FB PPU: 24,228 CYC:2804
D062  20 DF F7  JSR $F7DF                       A:00 X:00 Y:5C P:25 SP:FB PPU: 24,234 CYC:2806
F7DF  18        CLC                             A:00 X:00 Y:5C P:25 SP:F9 PPU: 24,252 CYC:2812
F7E0  24 01     BIT $01 = FF                    A:00 X:00 Y:5C P:24 SP:F9 PPU: 24,258 CYC:2814
F7E2  A9 55     LDA #$55                        A:00 X:00 Y:5C P:E6 SP:F9 PPU: 24,267 CYC:2817
F7E4  60        RTS                             A:55 X:00 Y:5C P:64 SP:F9 PPU: 24,273 CYC:2819
D065  21 80     AND ($80,X) @ 80 = 0200 = AA    A:55 X:00 Y:5C P:64 SP:FB PPU: 24,291 CYC:2825
D067  20 E5 F7  JSR $F7E5                       A:00 X:00 Y:5C P:66 SP:FB PPU: 24,309 CYC:2831
F7E5  D0 07     BNE $F7EE                       A:00 X:00 Y:5C P:66 SP:F9 PPU: 24,327 CYC:2837
F7E7  50 05     BVC $F7EE                       A:00 X:00 Y:5C P:66 SP:F9 PPU: 24,333 CYC:2839
F7E9  B0 03     BCS $F7EE                       A:00 X:00 Y:5C P:66 SP:F9 PPU: 24,339 CYC:2841
F7EB  30 01     BMI $F7EE                       A:00 X:00 Y:5C P:66 SP:F9 PPU: 25,  4 CYC:2843
F7ED  60        RTS                             A:00 X:00 Y:5C P:66 SP:F9 PPU: 25, 10 CYC:2845
D06A  C8        INY                             A:00 X:00 Y:5C P:66 SP:FB PPU: 25, 28 CYC:2851
D06B  A9 EF     LDA #$EF                        A:00 X:00 Y:5D P:64 SP:FB PPU: 25, 34 CYC:2853
D06D  8D 00 03  STA $0300 = 00                  A:EF X:00 Y:5D P:E4 SP:FB PPU: 25, 40 CYC:2855
D070  20 F1 F7  JSR $F7F1                       A:EF X:00 Y:5D P:E4 SP:FB PPU: 25, 52 CYC:2859
F7F1  38        SEC                             A:EF X:00 Y:5D P:E4 SP:F9 PPU: 25, 70 CYC:2865
F7F2  B8        CLV                             A:EF X:00 Y:5D P:E5 SP:F9 PPU: 25, 76 CYC:2867
F7F3  A9 F8     LDA #$F8                        A:EF X:00 Y:5D P:A5 SP:F9 PPU: 25, 82 CYC:2869
F7F5  60        RTS                             A:F8 X:00 Y:5D P:A5 SP:F9 PPU: 25, 88 CYC:2871
D073  21 82     AND ($82,X) @ 82 = 0300 = EF    A:F8 X:00 Y:5D P:A5 SP:FB PPU: 25,106 CYC:2877
D075  20 F6 F7  JSR $F7F6                       A:E8 X:00 Y:5D P:A5 SP:FB PPU: 25,124 CYC:2883
F7F6  90 09     BCC $F801                       A:E8 X:00 Y:5D P:A5 SP:F9 PPU: 25,142 CYC:2889
F7F8  10 07     BPL $F801                       A:E8 X:00 Y:5D P:A5 SP:F9 PPU: 25,148 CYC:2891
F7FA  C9 E8     CMP #$E8                        A:E8 X:00 Y:5D P:A5 SP:F9 PPU: 25,154 CYC:2893
F7FC  D0 03     BNE $F801                       A:E8 X:00 Y:5D P:27 SP:F9 PPU: 25,160 CYC:2895
F7FE  70 01     BVS $F801                       A:E8 X:00 Y:5D P:27 SP:F9 PPU: 25,166 CYC:2897
F800  60        RTS                             A:E8 X:00 Y:5D P:27 SP:F9 PPU: 25,172 CYC:2899
D078  C8        INY                             A:E8 X:00 Y:5D P:27 SP:FB PPU: 25,190 CYC:2905
D079  20 04 F8  JSR $F804                       A:E8 X:00 Y:5E P:25 SP:FB PPU: 25,196 CYC:2907
F804  18        CLC                             A:E8 X:00 Y:5E P:25 SP:F9 PPU: 25,214 CYC:2913
F805  24 01     BIT $01 = FF                    A:E8 X:00 Y:5E P:24 SP:F9 PPU: 25,220 CYC:2915
F807  A9 5F     LDA #$5F                        A:E8 X:00 Y:5E P:E4 SP:F9 PPU: 25,229 CYC:2918
F809  60        RTS                             A:5F X:00 Y:5E P:64 SP:F9 PPU: 25,235 CYC:2920
D07C  41 80     EOR ($80,X) @ 80 = 0200 = AA    A:5F X:00 Y:5E P:64 SP:FB PPU: 25,253 CYC:2926
D07E  20 0A F8  JSR $F80A                       A:F5 X:00 Y:5E P:E4 SP:FB PPU: 25,271 CYC:2932
F80A  B0 09     BCS $F815                       A:F5 X:00 Y:5E P:E4 SP:F9 PPU: 25,289 CYC:2938
F80C  10 07     BPL $F815                       A:F5 X:00 Y:5E P:E4 SP:F9 PPU: 25,295 CYC:2940
F80E  C9 F5     CMP #$F5                        A:F5 X:00 Y:5E P:E4 SP:F9 PPU: 25,301 CYC:2942
F810  D0 03     BNE $F815                       A:F5 X:00 Y:5E P:67 SP:F9 PPU: 25,307 CYC:2944
F812  50 01     BVC $F815                       A:F5 X:00 Y:5E P:67 SP:F9 PPU: 25,313 CYC:2946
F814  60        RTS                             A:F5 X:00 Y:5E P:67 SP:F9 PPU: 25,319 CYC:2948
D081  C8        INY                             A:F5 X:00 Y:5E P:67 SP:FB PPU: 25,337 CYC:2954
D082  A9 70     LDA #$70                        A:F5 X:00 Y:5F P:65 SP:FB PPU: 26,  2 CYC:2956
D084  8D 00 03  STA $0300 = EF                  A:70 X:00 Y:5F P:65 SP:FB PPU: 26,  8 CYC:2958
D087  20 18 F8  JSR $F818                       A:70 X:00 Y:5F P:65 SP:FB PPU: 26, 20 CYC:2962
F818  38        SEC                             A:70 X:00 Y:5F P:65 SP:F9 PPU: 26, 38 CYC:2968
F819  B8        CLV                             A:70 X:00 Y:5F P:65 SP:F9 PPU: 26, 44 CYC:2970
F81A  A9 70     LDA #$70                        A:70 X:00 Y:5F P:25 SP:F9 PPU: 26, 50 CYC:2972
F81C  60        RTS                             A:70 X:00 Y:5F P:25 SP:F9 PPU: 26, 56 CYC:2974
D08A  41 82     EOR ($82,X) @ 82 = 0300 = 70    A:70 X:00 Y:5F P:25 SP:FB PPU: 26, 74 CYC:2980
D08C  20 1D F8  JSR $F81D                       A:00 X:00 Y:5F P:27 SP:FB PPU: 26, 92 CYC:2986
F81D  D0 07     BNE $F826                       A:00 X:00 Y:5F P:27 SP:F9 PPU: 26,110 CYC:2992
F81F  70 05     BVS $F826                       A:00 X:00 Y:5F P:27 SP:F9 PPU: 26,116 CYC:2994
F821  90 03     BCC $F826                       A:00 X:00 Y:5F P:27 SP:F9 PPU: 26,122 CYC:2996
F823  30 01     BMI $F826                       A:00 X:00 Y:5F P:27 SP:F9 PPU: 26,128 CYC:2998
F825  60        RTS                             A:00 X:00 Y:5F P:27 SP:F9 PPU: 26,134 CYC:3000
D08F  C8        INY                             A:00 X:00 Y:5F P:27 SP:FB PPU: 26,152 CYC:3006
D090  A9 69     LDA #$69                        A:00 X:00 Y:60 P:25 SP:FB PPU: 26,158 CYC:3008
D092  8D 00 02  STA $0200 = AA                  A:69 X:00 Y:60 P:25 SP:FB PPU: 26,164 CYC:3010
D095  20 29 F8  JSR $F829                       A:69 X:00 Y:60 P:25 SP:FB PPU: 26,176 CYC:3014
F829  18        CLC                             A:69 X:00 Y:60 P:25 SP:F9 PPU: 26,194 CYC:3020
F82A  24 01     BIT $01 = FF                    A:69 X:00 Y:60 P:24 SP:F9 PPU: 26,200 CYC:3022
F82C  A9 00     LDA #$00                        A:69 X:00 Y:60 P:E4 SP:F9 PPU: 26,209 CYC:3025
F82E  60        RTS                             A:00 X:00 Y:60 P:66 SP:F9 PPU: 26,215 CYC:3027
D098  61 80     ADC ($80,X) @ 80 = 0200 = 69    A:00 X:00 Y:60 P:66 SP:FB PPU: 26,233 CYC:3033
D09A  20 2F F8  JSR $F82F                       A:69 X:00 Y:60 P:24 SP:FB PPU: 26,251 CYC:3039
F82F  30 09     BMI $F83A                       A:69 X:00 Y:60 P:24 SP:F9 PPU: 26,269 CYC:3045
F831  B0 07     BCS $F83A                       A:69 X:00 Y:60 P:24 SP:F9 PPU: 26,275 CYC:3047
F833  C9 69     CMP #$69                        A:69 X:00 Y:60 P:24 SP:F9 PPU: 26,281 CYC:3049
F835  D0 03     BNE $F83A                       A:69 X:00 Y:60 P:27 SP:F9 PPU: 26,287 CYC:3051
F837  70 01     BVS $F83A                       A:69 X:00 Y:60 P:27 SP:F9 PPU: 26,293 CYC:3053
F839  60        RTS                             A:69 X:00 Y:60 P:27 SP:F9 PPU: 26,299 CYC:3055
D09D  C8        INY                             A:69 X:00 Y:60 P:27 SP:FB PPU: 26,317 CYC:3061
D09E  20 3D F8  JSR $F83D                       A:69 X:00 Y:61 P:25 SP:FB PPU: 26,323 CYC:3063
F83D  38        SEC                             A:69 X:00 Y:61 P:25 SP:F9 PPU: 27,  0 CYC:3069
F83E  24 01     BIT $01 = FF                    A:69 X:00 Y:61 P:25 SP:F9 PPU: 27,  6 CYC:3071
F840  A9 00     LDA #$00                        A:69 X:00 Y:61 P:E5 SP:F9 PPU: 27, 15 CYC:3074
F842  60        RTS                             A:00 X:00 Y:61 P:67 SP:F9 PPU: 27, 21 CYC:3076
D0A1  61 80     ADC ($80,X) @ 80 = 0200 = 69    A:00 X:00 Y:61 P:67 SP:FB PPU: 27, 39 CYC:3082
D0A3  20 43 F8  JSR $F843                       A:6A X:00 Y:61 P:24 SP:FB PPU: 27, 57 CYC:3088
F843  30 09     BMI $F84E                       A:6A X:00 Y:61 P:24 SP:F9 PPU: 27, 75 CYC:3094
F845  B0 07     BCS $F84E                       A:6A X:00 Y:61 P:24 SP:F9 PPU: 27, 81 CYC:3096
F847  C9 6A     CMP #$6A                        A:6A X:00 Y:61 P:24 SP:F9 PPU: 27, 87 CYC:3098
F849  D0 03     BNE $F84E                       A:6A X:00 Y:61 P:27 SP:F9 PPU: 27, 93 CYC:3100
F84B  70 01     BVS $F84E                       A:6A X:00 Y:61 P:27 SP:F9 PPU: 27, 99 CYC:3102
F84D  60        RTS                             A:6A X:00 Y:61 P:27 SP:F9 PPU: 27,105 CYC:3104
D0A6  C8        INY                             A:6A X:00 Y:61 P:27 SP:FB PPU: 27,123 CYC:3110
D0A7  A9 7F     LDA #$7F                        A:6A X:00 Y:62 P:25 SP:FB PPU: 27,129 CYC:3112
D0A9  8D 00 02  STA $0200 = 69                  A:7F X:00 Y:62 P:25 SP:FB PPU: 27,135 CYC:3114
D0AC  20 51 F8  JSR $F851                       A:7F X:00 Y:62 P:25 SP:FB PPU: 27,147 CYC:3118
F851  38        SEC                             A:7F X:00 Y:62 P:25 SP:F9 PPU: 27,165 CYC:3124
F852  B8        CLV                             A:7F X:00 Y:62 P:25 SP:F9 PPU: 27,171 CYC:3126
F853  A9 7F     LDA #$7F                        A:7F X:00 Y:62 P:25 SP:F9 PPU: 27,177 CYC:3128
F855  60        RTS                             A:7F X:00 Y:62 P:25 SP:F9 PPU: 27,183 CYC:3130
D0AF  61 80     ADC ($80,X) @ 80 = 0200 = 7F    A:7F X:00 Y:62 P:25 SP:FB PPU: 27,201 CYC:3136
D0B1  20 56 F8  JSR $F856                       A:FF X:00 Y:62 P:E4 SP:FB PPU: 27,219 CYC:3142
F856  10 09     BPL $F861                       A:FF X:00 Y:62 P:E4 SP:F9 PPU: 27,237 CYC:3148
F858  B0 07     BCS $F861                       A:FF X:00 Y:62 P:E4 SP:F9 PPU: 27,243 CYC:3150
F85A  C9 FF     CMP #$FF                        A:FF X:00 Y:62 P:E4 SP:F9 PPU: 27,249 CYC:3152
F85C  D0 03     BNE $F861                       A:FF X:00 Y:62 P:67 SP:F9 PPU: 27,255 CYC:3154
F85E  50 01     BVC $F861                       A:FF X:00 Y:62 P:67 SP:F9 PPU: 27,261 CYC:3156
F860  60        RTS                             A:FF X:00 Y:62 P:67 SP:F9 PPU: 27,267 CYC:3158
D0B4  C8        INY                             A:FF X:00 Y:62 P:67 SP:FB PPU: 27,285 CYC:3164
D0B5  A9 80     LDA #$80                        A:FF X:00 Y:63 P:65 SP:FB PPU: 27,291 CYC:3166
D0B7  8D 00 02  STA $0200 = 7F                  A:80 X:00 Y:63 P:E5 SP:FB PPU: 27,297 CYC:3168
D0BA  20 64 F8  JSR $F864                       A:80 X:00 Y:63 P:E5 SP:FB PPU: 27,309 CYC:3172
F864  18        CLC                             A:80 X:00 Y:63 P:E5 SP:F9 PPU: 27,327 CYC:3178
F865  24 01     BIT $01 = FF                    A:80 X:00 Y:63 P:E4 SP:F9 PPU: 27,333 CYC:3180
F867  A9 7F     LDA #$7F                        A:80 X:00 Y:63 P:E4 SP:F9 PPU: 28,  1 CYC:3183
F869  60        RTS                             A:7F X:00 Y:63 P:64 SP:F9 PPU: 28,  7 CYC:3185
D0BD  61 80     ADC ($80,X) @ 80 = 0200 = 80    A:7F X:00 Y:63 P:64 SP:FB PPU: 28, 25 CYC:3191
D0BF  20 6A F8  JSR $F86A                       A:FF X:00 Y:63 P:A4 SP:FB PPU: 28, 43 CYC:3197
F86A  10 09     BPL $F875                       A:FF X:00 Y:63 P:A4 SP:F9 PPU: 28, 61 CYC:3203
F86C  B0 07     BCS $F875                       A:FF X:00 Y:63 P:A4 SP:F9 PPU: 28, 67 CYC:3205
F86E  C9 FF     CMP #$FF                        A:FF X:00 Y:63 P:A4 SP:F9 PPU: 28, 73 CYC:3207
F870  D0 03     BNE $F875                       A:FF X:00 Y:63 P:27 SP:F9 PPU: 28, 79 CYC:3209
F872  70 01     BVS $F875                       A:FF X:00 Y:63 P:27 SP:F9 PPU: 28, 85 CYC:3211
F874  60        RTS                             A:FF X:00 Y:63 P:27 SP:F9 PPU: 28, 91 CYC:3213
D0C2  C8        INY                             A:FF X:00 Y:63 P:27 SP:FB PPU: 28,109 CYC:3219
D0C3  20 78 F8  JSR $F878                       A:FF X:00 Y:64 P:25 SP:FB PPU: 28,115 CYC:3221
F878  38        SEC                             A:FF X:00 Y:64 P:25 SP:F9 PPU: 28,133 CYC:3227
F879  B8        CLV                             A:FF X:00 Y:64 P:25 SP:F9 PPU: 28,139 CYC:3229
F87A  A9 7F     LDA #$7F                        A:FF X:00 Y:64 P:25 SP:F9 PPU: 28,145 CYC:3231
F87C  60        RTS                             A:7F X:00 Y:64 P:25 SP:F9 PPU: 28,151 CYC:3233
D0C6  61 80     ADC ($80,X) @ 80 = 0200 = 80    A:7F X:00 Y:64 P:25 SP:FB PPU: 28,169 CYC:3239
D0C8  20 7D F8  JSR $F87D                       A:00 X:00 Y:64 P:27 SP:FB PPU: 28,187 CYC:3245
F87D  D0 07     BNE $F886                       A:00 X:00 Y:64 P:27 SP:F9 PPU: 28,205 CYC:3251
F87F  30 05     BMI $F886                       A:00 X:00 Y:64 P:27 SP:F9 PPU: 28,211 CYC:3253
F881  70 03     BVS $F886                       A:00 X:00 Y:64 P:27 SP:F9 PPU: 28,217 CYC:3255
F883  90 01     BCC $F886                       A:00 X:00 Y:64 P:27 SP:F9 PPU: 28,223 CYC:3257
F885  60        RTS                             A:00 X:00 Y:64 P:27 SP:F9 PPU: 28,229 CYC:3259
D0CB  C8        INY                             A:00 X:00 Y:64 P:27 SP:FB PPU: 28,247 CYC:3265
D0CC  A9 40     LDA #$40                        A:00 X:00 Y:65 P:25 SP:FB PPU: 28,253 CYC:3267
D0CE  8D 00 02  STA $0200 = 80                  A:40 X:00 Y:65 P:25 SP:FB PPU: 28,259 CYC:3269
D0D1  20 89 F8  JSR $F889                       A:40 X:00 Y:65 P:25 SP:FB PPU: 28,271 CYC:3273
F889  24 01     BIT $01 = FF                    A:40 X:00 Y:65 P:25 SP:F9 PPU: 28,289 CYC:3279
F88B  A9 40     LDA #$40                        A:40 X:00 Y:65 P:E5 SP:F9 PPU: 28,298 CYC:3282
F88D  60        RTS                             A:40 X:00 Y:65 P:65 SP:F9 PPU: 28,304 CYC:3284
D0D4  C1 80     CMP ($80,X) @ 80 = 0200 = 40    A:40 X:00 Y:65 P:65 SP:FB PPU: 28,322 CYC:3290
D0D6  20 8E F8  JSR $F88E                       A:40 X:00 Y:65 P:67 SP:FB PPU: 28,340 CYC:3296
F88E  30 07     BMI $F897                       A:40 X:00 Y:65 P:67 SP:F9 PPU: 29, 17 CYC:3302
F890  90 05     BCC $F897                       A:40 X:00 Y:65 P:67 SP:F9 PPU: 29, 23 CYC:3304
F892  D0 03     BNE $F897                       A:40 X:00 Y:65 P:67 SP:F9 PPU: 29, 29 CYC:3306
F894  50 01     BVC $F897                       A:40 X:00 Y:65 P:67 SP:F9 PPU: 29, 35 CYC:3308
F896  60        RTS                             A:40 X:00 Y:65 P:67 SP:F9 PPU: 29, 41 CYC:3310
D0D9  C8        INY                             A:40 X:00 Y:65 P:67 SP:FB PPU: 29, 59 CYC:3316
D0DA  48        PHA                             A:40 X:00 Y:66 P:65 SP:FB PPU: 29, 65 CYC:3318
D0DB  A9 3F     LDA #$3F                        A:40 X:00 Y:66 P:65 SP:FA PPU: 29, 74 CYC:3321
D0DD  8D 00 02  STA $0200 = 40                  A:3F X:00 Y:66 P:65 SP:FA PPU: 29, 80 CYC:3323
D0E0  68        PLA                             A:3F X:00 Y:66 P:65 SP:FA PPU: 29, 92 CYC:3327
D0E1  20 9A F8  JSR $F89A                       A:40 X:00 Y:66 P:65 SP:FB PPU: 29,104 CYC:3331
F89A  B8        CLV                             A:40 X:00 Y:66 P:65 SP:F9 PPU: 29,122 CYC:3337
F89B  60        RTS                             A:40 X:00 Y:66 P:25 SP:F9 PPU: 29,128 CYC:3339
D0E4  C1 80     CMP ($80,X) @ 80 = 0200 = 3F    A:40 X:00 Y:66 P:25 SP:FB PPU: 29,146 CYC:3345
D0E6  20 9C F8  JSR $F89C                       A:40 X:00 Y:66 P:25 SP:FB PPU: 29,164 CYC:3351
F89C  F0 07     BEQ $F8A5                       A:40 X:00 Y:66 P:25 SP:F9 PPU: 29,182 CYC:3357
F89E  30 05     BMI $F8A5                       A:40 X:00 Y:66 P:25 SP:F9 PPU: 29,188 CYC:3359
F8A0  90 03     BCC $F8A5                       A:40 X:00 Y:66 P:25 SP:F9 PPU: 29,194 CYC:3361
F8A2  70 01     BVS $F8A5                       A:40 X:00 Y:66 P:25 SP:F9 PPU: 29,200 CYC:3363
F8A4  60        RTS                             A:40 X:00 Y:66 P:25 SP:F9 PPU: 29,206 CYC:3365
D0E9  C8        INY                             A:40 X:00 Y:66 P:25 SP:FB PPU: 29,224 CYC:3371
D0EA  48        PHA                             A:40 X:00 Y:67 P:25 SP:FB PPU: 29,230 CYC:3373
D0EB  A9 41     LDA #$41                        A:40 X:00 Y:67 P:25 SP:FA PPU: 29,239 CYC:3376
D0ED  8D 00 02  STA $0200 = 3F                  A:41 X:00 Y:67 P:25 SP:FA PPU: 29,245 CYC:3378
D0F0  68        PLA                             A:41 X:00 Y:67 P:25 SP:FA PPU: 29,257 CYC:3382
D0F1  C1 80     CMP ($80,X) @ 80 = 0200 = 41    A:40 X:00 Y:67 P:25 SP:FB PPU: 29,269 CYC:3386
D0F3  20 A8 F8  JSR $F8A8                       A:40 X:00 Y:67 P:A4 SP:FB PPU: 29,287 CYC:3392
F8A8  F0 05     BEQ $F8AF                       A:40 X:00 Y:67 P:A4 SP:F9 PPU: 29,305 CYC:3398
F8AA  10 03     BPL $F8AF                       A:40 X:00 Y:67 P:A4 SP:F9 PPU: 29,311 CYC:3400
F8AC  10 01     BPL $F8AF                       A:40 X:00 Y:67 P:A4 SP:F9 PPU: 29,317 CYC:3402
F8AE  60        RTS                             A:40 X:00 Y:67 P:A4 SP:F9 PPU: 29,323 CYC:3404
D0F6  C8        INY                             A:40 X:00 Y:67 P:A4 SP:FB PPU: 30,  0 CYC:3410
D0F7  48        PHA                             A:40 X:00 Y:68 P:24 SP:FB PPU: 30,  6 CYC:3412
D0F8  A9 00     LDA #$00                        A:40 X:00 Y:68 P:24 SP:FA PPU: 30, 15 CYC:3415
D0FA  8D 00 02  STA $0200 = 41                  A:00 X:00 Y:68 P:26 SP:FA PPU: 30, 21 CYC:3417
D0FD  68        PLA                             A:00 X:00 Y:68 P:26 SP:FA PPU: 30, 33 CYC:3421
D0FE  20 B2 F8  JSR $F8B2                       A:40 X:00 Y:68 P:24 SP:FB PPU: 30, 45 CYC:3425
F8B2  A9 80     LDA #$80                        A:40 X:00 Y:68 P:24 SP:F9 PPU: 30, 63 CYC:3431
F8B4  60        RTS                             A:80 X:00 Y:68 P:A4 SP:F9 PPU: 30, 69 CYC:3433
D101  C1 80     CMP ($80,X) @ 80 = 0200 = 00    A:80 X:00 Y:68 P:A4 SP:FB PPU: 30, 87 CYC:3439
D103  20 B5 F8  JSR $F8B5                       A:80 X:00 Y:68 P:A5 SP:FB PPU: 30,105 CYC:3445
F8B5  F0 05     BEQ $F8BC                       A:80 X:00 Y:68 P:A5 SP:F9 PPU: 30,123 CYC:3451
F8B7  10 03     BPL $F8BC                       A:80 X:00 Y:68 P:A5 SP:F9 PPU: 30,129 CYC:3453
F8B9  90 01     BCC $F8BC                       A:80 X:00 Y:68 P:A5 SP:F9 PPU: 30,135 CYC:3455
F8BB  60        RTS                             A:80 X:00 Y:68 P:A5 SP:F9 PPU: 30,141 CYC:3457
D106  C8        INY                             A:80 X:00 Y:68 P:A5 SP:FB PPU: 30,159 CYC:3463
D107  48        PHA                             A:80 X:00 Y:69 P:25 SP:FB PPU: 30,165 CYC:3465
D108  A9 80     LDA #$80                        A:80 X:00 Y:69 P:25 SP:FA PPU: 30,174 CYC:3468
D10A  8D 00 02  STA $0200 = 00                  A:80 X:00 Y:69 P:A5 SP:FA PPU: 30,180 CYC:3470
D10D  68        PLA                             A:80 X:00 Y:69 P:A5 SP:FA PPU: 30,192 CYC:3474
D10E  C1 80     CMP ($80,X) @ 80 = 0200 = 80    A:80 X:00 Y:69 P:A5 SP:FB PPU: 30,204 CYC:3478
D110  20 BF F8  JSR $F8BF                       A:80 X:00 Y:69 P:27 SP:FB PPU: 30,222 CYC:3484
F8BF  D0 05     BNE $F8C6                       A:80 X:00 Y:69 P:27 SP:F9 PPU: 30,240 CYC:3490
F8C1  30 03     BMI $F8C6                       A:80 X:00 Y:69 P:27 SP:F9 PPU: 30,246 CYC:3492
F8C3  90 01     BCC $F8C6                       A:80 X:00 Y:69 P:27 SP:F9 PPU: 30,252 CYC:3494
F8C5  60        RTS                             A:80 X:00 Y:69 P:27 SP:F9 PPU: 30,258 CYC:3496
D113  C8        INY                             A:80 X:00 Y:69 P:27 SP:FB PPU: 30,276 CYC:3502
D114  48        PHA                             A:80 X:00 Y:6A P:25 SP:FB PPU: 30,282 CYC:3504
D115  A9 81     LDA #$81                        A:80 X:00 Y:6A P:25 SP:FA PPU: 30,291 CYC:3507
D117  8D 00 02  STA $0200 = 80                  A:81 X:00 Y:6A P:A5 SP:FA PPU: 30,297 CYC:3509
D11A  68        PLA                             A:81 X:00 Y:6A P:A5 SP:FA PPU: 30,309 CYC:3513
D11B  C1 80     CMP ($80,X) @ 80 = 0200 = 81    A:80 X:00 Y:6A P:A5 SP:FB PPU: 30,321 CYC:3517
D11D  20 C9 F8  JSR $F8C9                       A:80 X:00 Y:6A P:A4 SP:FB PPU: 30,339 CYC:3523
F8C9  B0 05     BCS $F8D0                       A:80 X:00 Y:6A P:A4 SP:F9 PPU: 31, 16 CYC:3529
F8CB  F0 03     BEQ $F8D0                       A:80 X:00 Y:6A P:A4 SP:F9 PPU: 31, 22 CYC:3531
F8CD  10 01     BPL $F8D0                       A:80 X:00 Y:6A P:A4 SP:F9 PPU: 31, 28 CYC:3533
F8CF  60        RTS                             A:80 X:00 Y:6A P:A4 SP:F9 PPU: 31, 34 CYC:3535
D120  C8        INY                             A:80 X:00 Y:6A P:A4 SP:FB PPU: 31, 52 CYC:3541
D121  48        PHA                             A:80 X:00 Y:6B P:24 SP:FB PPU: 31, 58 CYC:3543
D122  A9 7F     LDA #$7F                        A:80 X:00 Y:6B P:24 SP:FA PPU: 31, 67 CYC:3546
D124  8D 00 02  STA $0200 = 81                  A:7F X:00 Y:6B P:24 SP:FA PPU: 31, 73 CYC:3548
D127  68        PLA                             A:7F X:00 Y:6B P:24 SP:FA PPU: 31, 85 CYC:3552
D128  C1 80     CMP ($80,X) @ 80 = 0200 = 7F    A:80 X:00 Y:6B P:A4 SP:FB PPU: 31, 97 CYC:3556
D12A  20 D3 F8  JSR $F8D3                       A:80 X:00 Y:6B P:25 SP:FB PPU: 31,115 CYC:3562
F8D3  90 05     BCC $F8DA                       A:80 X:00 Y:6B P:25 SP:F9 PPU: 31,133 CYC:3568
F8D5  F0 03     BEQ $F8DA                       A:80 X:00 Y:6B P:25 SP:F9 PPU: 31,139 CYC:3570
F8D7  30 01     BMI $F8DA                       A:80 X:00 Y:6B P:25 SP:F9 PPU: 31,145 CYC:3572
F8D9  60        RTS                             A:80 X:00 Y:6B P:25 SP:F9 PPU: 31,151 CYC:3574
D12D  C8        INY                             A:80 X:00 Y:6B P:25 SP:FB PPU: 31,169 CYC:3580
D12E  A9 40     LDA #$40                        A:80 X:00 Y:6C P:25 SP:FB PPU: 31,175 CYC:3582
D130  8D 00 02  STA $0200 = 7F                  A:40 X:00 Y:6C P:25 SP:FB PPU: 31,181 CYC:3584
D133  20 31 F9  JSR $F931                       A:40 X:00 Y:6C P:25 SP:FB PPU: 31,193 CYC:3588
F931  24 01     BIT $01 = FF                    A:40 X:00 Y:6C P:25 SP:F9 PPU: 31,211 CYC:3594
F933  A9 40     LDA #$40                        A:40 X:00 Y:6C P:E5 SP:F9 PPU: 31,220 CYC:3597
F935  38        SEC                             A:40 X:00 Y:6C P:65 SP:F9 PPU: 31,226 CYC:3599
F936  60        RTS                             A:40 X:00 Y:6C P:65 SP:F9 PPU: 31,232 CYC:3601
D136  E1 80     SBC ($80,X) @ 80 = 0200 = 40    A:40 X:00 Y:6C P:65 SP:FB PPU: 31,250 CYC:3607
D138  20 37 F9  JSR $F937                       A:00 X:00 Y:6C P:27 SP:FB PPU: 31,268 CYC:3613
F937  30 0B     BMI $F944                       A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,286 CYC:3619
F939  90 09     BCC $F944                       A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,292 CYC:3621
F93B  D0 07     BNE $F944                       A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,298 CYC:3623
F93D  70 05     BVS $F944                       A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,304 CYC:3625
F93F  C9 00     CMP #$00                        A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,310 CYC:3627
F941  D0 01     BNE $F944                       A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,316 CYC:3629
F943  60        RTS                             A:00 X:00 Y:6C P:27 SP:F9 PPU: 31,322 CYC:3631
D13B  C8        INY                             A:00 X:00 Y:6C P:27 SP:FB PPU: 31,340 CYC:3637
D13C  A9 3F     LDA #$3F                        A:00 X:00 Y:6D P:25 SP:FB PPU: 32,  5 CYC:3639
D13E  8D 00 02  STA $0200 = 40                  A:3F X:00 Y:6D P:25 SP:FB PPU: 32, 11 CYC:3641
D141  20 47 F9  JSR $F947                       A:3F X:00 Y:6D P:25 SP:FB PPU: 32, 23 CYC:3645
F947  B8        CLV                             A:3F X:00 Y:6D P:25 SP:F9 PPU: 32, 41 CYC:3651
F948  38        SEC                             A:3F X:00 Y:6D P:25 SP:F9 PPU: 32, 47 CYC:3653
F949  A9 40     LDA #$40                        A:3F X:00 Y:6D P:25 SP:F9 PPU: 32, 53 CYC:3655
F94B  60        RTS                             A:40 X:00 Y:6D P:25 SP:F9 PPU: 32, 59 CYC:3657
D144  E1 80     SBC ($80,X) @ 80 = 0200 = 3F    A:40 X:00 Y:6D P:25 SP:FB PPU: 32, 77 CYC:3663
D146  20 4C F9  JSR $F94C                       A:01 X:00 Y:6D P:25 SP:FB PPU: 32, 95 CYC:3669
F94C  F0 0B     BEQ $F959                       A:01 X:00 Y:6D P:25 SP:F9 PPU: 32,113 CYC:3675
F94E  30 09     BMI $F959                       A:01 X:00 Y:6D P:25 SP:F9 PPU: 32,119 CYC:3677
F950  90 07     BCC $F959                       A:01 X:00 Y:6D P:25 SP:F9 PPU: 32,125 CYC:3679
F952  70 05     BVS $F959                       A:01 X:00 Y:6D P:25 SP:F9 PPU: 32,131 CYC:3681
F954  C9 01     CMP #$01                        A:01 X:00 Y:6D P:25 SP:F9 PPU: 32,137 CYC:3683
F956  D0 01     BNE $F959                       A:01 X:00 Y:6D P:27 SP:F9 PPU: 32,143 CYC:3685
F958  60        RTS                             A:01 X:00 Y:6D P:27 SP:F9 PPU: 32,149 CYC:3687
D149  C8        INY                             A:01 X:00 Y:6D P:27 SP:FB PPU: 32,167 CYC:3693
D14A  A9 41     LDA #$41                        A:01 X:00 Y:6E P:25 SP:FB PPU: 32,173 CYC:3695
D14C  8D 00 02  STA $0200 = 3F                  A:41 X:00 Y:6E P:25 SP:FB PPU: 32,179 CYC:3697
D14F  20 5C F9  JSR $F95C                       A:41 X:00 Y:6E P:25 SP:FB PPU: 32,191 CYC:3701
F95C  A9 40     LDA #$40                        A:41 X:00 Y:6E P:25 SP:F9 PPU: 32,209 CYC:3707
F95E  38        SEC                             A:40 X:00 Y:6E P:25 SP:F9 PPU: 32,215 CYC:3709
F95F  24 01     BIT $01 = FF                    A:40 X:00 Y:6E P:25 SP:F9 PPU: 32,221 CYC:3711
F961  60        RTS                             A:40 X:00 Y:6E P:E5 SP:F9 PPU: 32,230 CYC:3714
D152  E1 80     SBC ($80,X) @ 80 = 0200 = 41    A:40 X:00 Y:6E P:E5 SP:FB PPU: 32,248 CYC:3720
D154  20 62 F9  JSR $F962                       A:FF X:00 Y:6E P:A4 SP:FB PPU: 32,266 CYC:3726
F962  B0 0B     BCS $F96F                       A:FF X:00 Y:6E P:A4 SP:F9 PPU: 32,284 CYC:3732
F964  F0 09     BEQ $F96F                       A:FF X:00 Y:6E P:A4 SP:F9 PPU: 32,290 CYC:3734
F966  10 07     BPL $F96F                       A:FF X:00 Y:6E P:A4 SP:F9 PPU: 32,296 CYC:3736
F968  70 05     BVS $F96F                       A:FF X:00 Y:6E P:A4 SP:F9 PPU: 32,302 CYC:3738
F96A  C9 FF     CMP #$FF                        A:FF X:00 Y:6E P:A4 SP:F9 PPU: 32,308 CYC:3740
F96C  D0 01     BNE $F96F                       A:FF X:00 Y:6E P:27 SP:F9 PPU: 32,314 CYC:3742
F96E  60        RTS                             A:FF X:00 Y:6E P:27 SP:F9 PPU: 32,320 CYC:3744
D157  C8        INY                             A:FF X:00 Y:6E P:27 SP:FB PPU: 32,338 CYC:3750
D158  A9 00     LDA #$00                        A:FF X:00 Y:6F P:25 SP:FB PPU: 33,  3 CYC:3752
D15A  8D 00 02  STA $0200 = 41                  A:00 X:00 Y:6F P:27 SP:FB PPU: 33,  9 CYC:3754
D15D  20 72 F9  JSR $F972                       A:00 X:00 Y:6F P:27 SP:FB PPU: 33, 21 CYC:3758
F972  18        CLC                             A:00 X:00 Y:6F P:27 SP:F9 PPU: 33, 39 CYC:3764
F973  A9 80     LDA #$80                        A:00 X:00 Y:6F P:26 SP:F9 PPU: 33, 45 CYC:3766
F975  60        RTS                             A:80 X:00 Y:6F P:A4 SP:F9 PPU: 33, 51 CYC:3768
D160  E1 80     SBC ($80,X) @ 80 = 0200 = 00    A:80 X:00 Y:6F P:A4 SP:FB PPU: 33, 69 CYC:3774
D162  20 76 F9  JSR $F976                       A:7F X:00 Y:6F P:65 SP:FB PPU: 33, 87 CYC:3780
F976  90 05     BCC $F97D                       A:7F X:00 Y:6F P:65 SP:F9 PPU: 33,105 CYC:3786
F978  C9 7F     CMP #$7F                        A:7F X:00 Y:6F P:65 SP:F9 PPU: 33,111 CYC:3788
F97A  D0 01     BNE $F97D                       A:7F X:00 Y:6F P:67 SP:F9 PPU: 33,117 CYC:3790
F97C  60        RTS                             A:7F X:00 Y:6F P:67 SP:F9 PPU: 33,123 CYC:3792
D165  C8        INY                             A:7F X:00 Y:6F P:67 SP:FB PPU: 33,141 CYC:3798
D166  A9 7F     LDA #$7F                        A:7F X:00 Y:70 P:65 SP:FB PPU: 33,147 CYC:3800
D168  8D 00 02  STA $0200 = 00                  A:7F X:00 Y:70 P:65 SP:FB PPU: 33,153 CYC:3802
D16B  20 80 F9  JSR $F980                       A:7F X:00 Y:70 P:65 SP:FB PPU: 33,165 CYC:3806
F980  38        SEC                             A:7F X:00 Y:70 P:65 SP:F9 PPU: 33,183 CYC:3812
F981  A9 81     LDA #$81                        A:7F X:00 Y:70 P:65 SP:F9 PPU: 33,189 CYC:3814
F983  60        RTS                             A:81 X:00 Y:70 P:E5 SP:F9 PPU: 33,195 CYC:3816
D16E  E1 80     SBC ($80,X) @ 80 = 0200 = 7F    A:81 X:00 Y:70 P:E5 SP:FB PPU: 33,213 CYC:3822
D170  20 84 F9  JSR $F984                       A:02 X:00 Y:70 P:65 SP:FB PPU: 33,231 CYC:3828
F984  50 07     BVC $F98D                       A:02 X:00 Y:70 P:65 SP:F9 PPU: 33,249 CYC:3834
F986  90 05     BCC $F98D                       A:02 X:00 Y:70 P:65 SP:F9 PPU: 33,255 CYC:3836
F988  C9 02     CMP #$02                        A:02 X:00 Y:70 P:65 SP:F9 PPU: 33,261 CYC:3838
F98A  D0 01     BNE $F98D                       A:02 X:00 Y:70 P:67 SP:F9 PPU: 33,267 CYC:3840
F98C  60        RTS                             A:02 X:00 Y:70 P:67 SP:F9 PPU: 33,273 CYC:3842
D173  60        RTS                             A:02 X:00 Y:70 P:67 SP:FB PPU: 33,291 CYC:3848
C612  20 74 D1  JSR $D174                       A:02 X:00 Y:70 P:67 SP:FD PPU: 33,309 CYC:3854
D174  A9 55     LDA #$55                        A:02 X:00 Y:70 P:67 SP:FB PPU: 33,327 CYC:3860
D176  85 78     STA $78 = 00                    A:55 X:00 Y:70 P:65 SP:FB PPU: 33,333 CYC:3862
D178  A9 FF     LDA #$FF                        A:55 X:00 Y:70 P:65 SP:FB PPU: 34,  1 CYC:3865
D17A  85 01     STA $01 = FF                    A:FF X:00 Y:70 P:E5 SP:FB PPU: 34,  7 CYC:3867
D17C  24 01     BIT $01 = FF                    A:FF X:00 Y:70 P:E5 SP:FB PPU: 34, 16 CYC:3870
D17E  A0 11     LDY #$11                        A:FF X:00 Y:70 P:E5 SP:FB PPU: 34, 25 CYC:3873
D180  A2 23     LDX #$23                        A:FF X:00 Y:11 P:65 SP:FB PPU: 34, 31 CYC:3875
D182  A9 00     LDA #$00                        A:FF X:23 Y:11 P:65 SP:FB PPU: 34, 37 CYC:3877
D184  A5 78     LDA $78 = 55                    A:00 X:23 Y:11 P:67 SP:FB PPU: 34, 43 CYC:3879
D186  F0 10     BEQ $D198                       A:55 X:23 Y:11 P:65 SP:FB PPU: 34, 52 CYC:3882
D188  30 0E     BMI $D198                       A:55 X:23 Y:11 P:65 SP:FB PPU: 34, 58 CYC:3884
D18A  C9 55     CMP #$55                        A:55 X:23 Y:11 P:65 SP:FB PPU: 34, 64 CYC:3886
D18C  D0 0A     BNE $D198                       A:55 X:23 Y:11 P:67 SP:FB PPU: 34, 70 CYC:3888
D18E  C0 11     CPY #$11                        A:55 X:23 Y:11 P:67 SP:FB PPU: 34, 76 CYC:3890
D190  D0 06     BNE $D198                       A:55 X:23 Y:11 P:67 SP:FB PPU: 34, 82 CYC:3892
D192  E0 23     CPX #$23                        A:55 X:23 Y:11 P:67 SP:FB PPU: 34, 88 CYC:3894
D194  50 02     BVC $D198                       A:55 X:23 Y:11 P:67 SP:FB PPU: 34, 94 CYC:3896
D196  F0 04     BEQ $D19C                       A:55 X:23 Y:11 P:67 SP:FB PPU: 34,100 CYC:3898
D19C  A9 46     LDA #$46                        A:55 X:23 Y:11 P:67 SP:FB PPU: 34,109 CYC:3901
D19E  24 01     BIT $01 = FF                    A:46 X:23 Y:11 P:65 SP:FB PPU: 34,115 CYC:3903
D1A0  85 78     STA $78 = 55                    A:46 X:23 Y:11 P:E5 SP:FB PPU: 34,124 CYC:3906
D1A2  F0 0A     BEQ $D1AE                       A:46 X:23 Y:11 P:E5 SP:FB PPU: 34,133 CYC:3909
D1A4  10 08     BPL $D1AE                       A:46 X:23 Y:11 P:E5 SP:FB PPU: 34,139 CYC:3911
D1A6  50 06     BVC $D1AE                       A:46 X:23 Y:11 P:E5 SP:FB PPU: 34,145 CYC:3913
D1A8  A5 78     LDA $78 = 46                    A:46 X:23 Y:11 P:E5 SP:FB PPU: 34,151 CYC:3915
D1AA  C9 46     CMP #$46                        A:46 X:23 Y:11 P:65 SP:FB PPU: 34,160 CYC:3918
D1AC  F0 04     BEQ $D1B2                       A:46 X:23 Y:11 P:67 SP:FB PPU: 34,166 CYC:3920
D1B2  A9 55     LDA #$55                        A:46 X:23 Y:11 P:67 SP:FB PPU: 34,175 CYC:3923
D1B4  85 78     STA $78 = 46                    A:55 X:23 Y:11 P:65 SP:FB PPU: 34,181 CYC:3925
D1B6  24 01     BIT $01 = FF                    A:55 X:23 Y:11 P:65 SP:FB PPU: 34,190 CYC:3928
D1B8  A9 11     LDA #$11                        A:55 X:23 Y:11 P:E5 SP:FB PPU: 34,199 CYC:3931
D1BA  A2 23     LDX #$23                        A:11 X:23 Y:11 P:65 SP:FB PPU: 34,205 CYC:3933
D1BC  A0 00     LDY #$00                        A:11 X:23 Y:11 P:65 SP:FB PPU: 34,211 CYC:3935
D1BE  A4 78     LDY $78 = 55                    A:11 X:23 Y:00 P:67 SP:FB PPU: 34,217 CYC:3937
D1C0  F0 10     BEQ $D1D2                       A:11 X:23 Y:55 P:65 SP:FB PPU: 34,226 CYC:3940
D1C2  30 0E     BMI $D1D2                       A:11 X:23 Y:55 P:65 SP:FB PPU: 34,232 CYC:3942
D1C4  C0 55     CPY #$55                        A:11 X:23 Y:55 P:65 SP:FB PPU: 34,238 CYC:3944
D1C6  D0 0A     BNE $D1D2                       A:11 X:23 Y:55 P:67 SP:FB PPU: 34,244 CYC:3946
D1C8  C9 11     CMP #$11                        A:11 X:23 Y:55 P:67 SP:FB PPU: 34,250 CYC:3948
D1CA  D0 06     BNE $D1D2                       A:11 X:23 Y:55 P:67 SP:FB PPU: 34,256 CYC:3950
D1CC  E0 23     CPX #$23                        A:11 X:23 Y:55 P:67 SP:FB PPU: 34,262 CYC:3952
D1CE  50 02     BVC $D1D2                       A:11 X:23 Y:55 P:67 SP:FB PPU: 34,268 CYC:3954
D1D0  F0 04     BEQ $D1D6                       A:11 X:23 Y:55 P:67 SP:FB PPU: 34,274 CYC:3956
D1D6  A0 46     LDY #$46                        A:11 X:23 Y:55 P:67 SP:FB PPU: 34,283 CYC:3959
D1D8  24 01     BIT $01 = FF                    A:11 X:23 Y:46 P:65 SP:FB PPU: 34,289 CYC:3961
D1DA  84 78     STY $78 = 55                    A:11 X:23 Y:46 P:E5 SP:FB PPU: 34,298 CYC:3964
D1DC  F0 0A     BEQ $D1E8                       A:11 X:23 Y:46 P:E5 SP:FB PPU: 34,307 CYC:3967
D1DE  10 08     BPL $D1E8                       A:11 X:23 Y:46 P:E5 SP:FB PPU: 34,313 CYC:3969
D1E0  50 06     BVC $D1E8                       A:11 X:23 Y:46 P:E5 SP:FB PPU: 34,319 CYC:3971
D1E2  A4 78     LDY $78 = 46                    A:11 X:23 Y:46 P:E5 SP:FB PPU: 34,325 CYC:3973
D1E4  C0 46     CPY #$46                        A:11 X:23 Y:46 P:65 SP:FB PPU: 34,334 CYC:3976
D1E6  F0 04     BEQ $D1EC                       A:11 X:23 Y:46 P:67 SP:FB PPU: 34,340 CYC:3978
D1EC  24 01     BIT $01 = FF                    A:11 X:23 Y:46 P:67 SP:FB PPU: 35,  8 CYC:3981
D1EE  A9 55     LDA #$55                        A:11 X:23 Y:46 P:E5 SP:FB PPU: 35, 17 CYC:3984
D1F0  85 78     STA $78 = 46                    A:55 X:23 Y:46 P:65 SP:FB PPU: 35, 23 CYC:3986
D1F2  A0 11     LDY #$11                        A:55 X:23 Y:46 P:65 SP:FB PPU: 35, 32 CYC:3989
D1F4  A9 23     LDA #$23                        A:55 X:23 Y:11 P:65 SP:FB PPU: 35, 38 CYC:3991
D1F6  A2 00     LDX #$00                        A:23 X:23 Y:11 P:65 SP:FB PPU: 35, 44 CYC:3993
D1F8  A6 78     LDX $78 = 55                    A:23 X:00 Y:11 P:67 SP:FB PPU: 35, 50 CYC:3995
D1FA  F0 10     BEQ $D20C                       A:23 X:55 Y:11 P:65 SP:FB PPU: 35, 59 CYC:3998
D1FC  30 0E     BMI $D20C                       A:23 X:55 Y:11 P:65 SP:FB PPU: 35, 65 CYC:4000
D1FE  E0 55     CPX #$55                        A:23 X:55 Y:11 P:65 SP:FB PPU: 35, 71 CYC:4002
D200  D0 0A     BNE $D20C                       A:23 X:55 Y:11 P:67 SP:FB PPU: 35, 77 CYC:4004
D202  C0 11     CPY #$11                        A:23 X:55 Y:11 P:67 SP:FB PPU: 35, 83 CYC:4006
D204  D0 06     BNE $D20C                       A:23 X:55 Y:11 P:67 SP:FB PPU: 35, 89 CYC:4008
D206  C9 23     CMP #$23                        A:23 X:55 Y:11 P:67 SP:FB PPU: 35, 95 CYC:4010
D208  50 02     BVC $D20C                       A:23 X:55 Y:11 P:67 SP:FB PPU: 35,101 CYC:4012
D20A  F0 04     BEQ $D210                       A:23 X:55 Y:11 P:67 SP:FB PPU: 35,107 CYC:4014
D210  A2 46     LDX #$46                        A:23 X:55 Y:11 P:67 SP:FB PPU: 35,116 CYC:4017
D212  24 01     BIT $01 = FF                    A:23 X:46 Y:11 P:65 SP:FB PPU: 35,122 CYC:4019
D214  86 78     STX $78 = 55                    A:23 X:46 Y:11 P:E5 SP:FB PPU: 35,131 CYC:4022
D216  F0 0A     BEQ $D222                       A:23 X:46 Y:11 P:E5 SP:FB PPU: 35,140 CYC:4025
D218  10 08     BPL $D222                       A:23 X:46 Y:11 P:E5 SP:FB PPU: 35,146 CYC:4027
D21A  50 06     BVC $D222                       A:23 X:46 Y:11 P:E5 SP:FB PPU: 35,152 CYC:4029
D21C  A6 78     LDX $78 = 46                    A:23 X:46 Y:11 P:E5 SP:FB PPU: 35,158 CYC:4031
D21E  E0 46     CPX #$46                        A:23 X:46 Y:11 P:65 SP:FB PPU: 35,167 CYC:4034
D220  F0 04     BEQ $D226                       A:23 X:46 Y:11 P:67 SP:FB PPU: 35,173 CYC:4036
D226  A9 C0     LDA #$C0                        A:23 X:46 Y:11 P:67 SP:FB PPU: 35,182 CYC:4039
D228  85 78     STA $78 = 46                    A:C0 X:46 Y:11 P:E5 SP:FB PPU: 35,188 CYC:4041
D22A  A2 33     LDX #$33                        A:C0 X:46 Y:11 P:E5 SP:FB PPU: 35,197 CYC:4044
D22C  A0 88     LDY #$88                        A:C0 X:33 Y:11 P:65 SP:FB PPU: 35,203 CYC:4046
D22E  A9 05     LDA #$05                        A:C0 X:33 Y:88 P:E5 SP:FB PPU: 35,209 CYC:4048
D230  24 78     BIT $78 = C0                    A:05 X:33 Y:88 P:65 SP:FB PPU: 35,215 CYC:4050
D232  10 10     BPL $D244                       A:05 X:33 Y:88 P:E7 SP:FB PPU: 35,224 CYC:4053
D234  50 0E     BVC $D244                       A:05 X:33 Y:88 P:E7 SP:FB PPU: 35,230 CYC:4055
D236  D0 0C     BNE $D244                       A:05 X:33 Y:88 P:E7 SP:FB PPU: 35,236 CYC:4057
D238  C9 05     CMP #$05                        A:05 X:33 Y:88 P:E7 SP:FB PPU: 35,242 CYC:4059
D23A  D0 08     BNE $D244                       A:05 X:33 Y:88 P:67 SP:FB PPU: 35,248 CYC:4061
D23C  E0 33     CPX #$33                        A:05 X:33 Y:88 P:67 SP:FB PPU: 35,254 CYC:4063
D23E  D0 04     BNE $D244                       A:05 X:33 Y:88 P:67 SP:FB PPU: 35,260 CYC:4065
D240  C0 88     CPY #$88                        A:05 X:33 Y:88 P:67 SP:FB PPU: 35,266 CYC:4067
D242  F0 04     BEQ $D248                       A:05 X:33 Y:88 P:67 SP:FB PPU: 35,272 CYC:4069
D248  A9 03     LDA #$03                        A:05 X:33 Y:88 P:67 SP:FB PPU: 35,281 CYC:4072
D24A  85 78     STA $78 = C0                    A:03 X:33 Y:88 P:65 SP:FB PPU: 35,287 CYC:4074
D24C  A9 01     LDA #$01                        A:03 X:33 Y:88 P:65 SP:FB PPU: 35,296 CYC:4077
D24E  24 78     BIT $78 = 03                    A:01 X:33 Y:88 P:65 SP:FB PPU: 35,302 CYC:4079
D250  30 08     BMI $D25A                       A:01 X:33 Y:88 P:25 SP:FB PPU: 35,311 CYC:4082
D252  70 06     BVS $D25A                       A:01 X:33 Y:88 P:25 SP:FB PPU: 35,317 CYC:4084
D254  F0 04     BEQ $D25A                       A:01 X:33 Y:88 P:25 SP:FB PPU: 35,323 CYC:4086
D256  C9 01     CMP #$01                        A:01 X:33 Y:88 P:25 SP:FB PPU: 35,329 CYC:4088
D258  F0 04     BEQ $D25E                       A:01 X:33 Y:88 P:27 SP:FB PPU: 35,335 CYC:4090
D25E  A0 7E     LDY #$7E                        A:01 X:33 Y:88 P:27 SP:FB PPU: 36,  3 CYC:4093
D260  A9 AA     LDA #$AA                        A:01 X:33 Y:7E P:25 SP:FB PPU: 36,  9 CYC:4095
D262  85 78     STA $78 = 03                    A:AA X:33 Y:7E P:A5 SP:FB PPU: 36, 15 CYC:4097
D264  20 B6 F7  JSR $F7B6                       A:AA X:33 Y:7E P:A5 SP:FB PPU: 36, 24 CYC:4100
F7B6  18        CLC                             A:AA X:33 Y:7E P:A5 SP:F9 PPU: 36, 42 CYC:4106
F7B7  A9 FF     LDA #$FF                        A:AA X:33 Y:7E P:A4 SP:F9 PPU: 36, 48 CYC:4108
F7B9  85 01     STA $01 = FF                    A:FF X:33 Y:7E P:A4 SP:F9 PPU: 36, 54 CYC:4110
F7BB  24 01     BIT $01 = FF                    A:FF X:33 Y:7E P:A4 SP:F9 PPU: 36, 63 CYC:4113
F7BD  A9 55     LDA #$55                        A:FF X:33 Y:7E P:E4 SP:F9 PPU: 36, 72 CYC:4116
F7BF  60        RTS                             A:55 X:33 Y:7E P:64 SP:F9 PPU: 36, 78 CYC:4118
D267  05 78     ORA $78 = AA                    A:55 X:33 Y:7E P:64 SP:FB PPU: 36, 96 CYC:4124
D269  20 C0 F7  JSR $F7C0                       A:FF X:33 Y:7E P:E4 SP:FB PPU: 36,105 CYC:4127
F7C0  B0 09     BCS $F7CB                       A:FF X:33 Y:7E P:E4 SP:F9 PPU: 36,123 CYC:4133
F7C2  10 07     BPL $F7CB                       A:FF X:33 Y:7E P:E4 SP:F9 PPU: 36,129 CYC:4135
F7C4  C9 FF     CMP #$FF                        A:FF X:33 Y:7E P:E4 SP:F9 PPU: 36,135 CYC:4137
F7C6  D0 03     BNE $F7CB                       A:FF X:33 Y:7E P:67 SP:F9 PPU: 36,141 CYC:4139
F7C8  50 01     BVC $F7CB                       A:FF X:33 Y:7E P:67 SP:F9 PPU: 36,147 CYC:4141
F7CA  60        RTS                             A:FF X:33 Y:7E P:67 SP:F9 PPU: 36,153 CYC:4143
D26C  C8        INY                             A:FF X:33 Y:7E P:67 SP:FB PPU: 36,171 CYC:4149
D26D  A9 00     LDA #$00                        A:FF X:33 Y:7F P:65 SP:FB PPU: 36,177 CYC:4151
D26F  85 78     STA $78 = AA                    A:00 X:33 Y:7F P:67 SP:FB PPU: 36,183 CYC:4153
D271  20 CE F7  JSR $F7CE                       A:00 X:33 Y:7F P:67 SP:FB PPU: 36,192 CYC:4156
F7CE  38        SEC                             A:00 X:33 Y:7F P:67 SP:F9 PPU: 36,210 CYC:4162
F7CF  B8        CLV                             A:00 X:33 Y:7F P:67 SP:F9 PPU: 36,216 CYC:4164
F7D0  A9 00     LDA #$00                        A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,222 CYC:4166
F7D2  60        RTS                             A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,228 CYC:4168
D274  05 78     ORA $78 = 00                    A:00 X:33 Y:7F P:27 SP:FB PPU: 36,246 CYC:4174
D276  20 D3 F7  JSR $F7D3                       A:00 X:33 Y:7F P:27 SP:FB PPU: 36,255 CYC:4177
F7D3  D0 07     BNE $F7DC                       A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,273 CYC:4183
F7D5  70 05     BVS $F7DC                       A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,279 CYC:4185
F7D7  90 03     BCC $F7DC                       A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,285 CYC:4187
F7D9  30 01     BMI $F7DC                       A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,291 CYC:4189
F7DB  60        RTS                             A:00 X:33 Y:7F P:27 SP:F9 PPU: 36,297 CYC:4191
D279  C8        INY                             A:00 X:33 Y:7F P:27 SP:FB PPU: 36,315 CYC:4197
D27A  A9 AA     LDA #$AA                        A:00 X:33 Y:80 P:A5 SP:FB PPU: 36,321 CYC:4199
D27C  85 78     STA $78 = 00                    A:AA X:33 Y:80 P:A5 SP:FB PPU: 36,327 CYC:4201
D27E  20 DF F7  JSR $F7DF                       A:AA X:33 Y:80 P:A5 SP:FB PPU: 36,336 CYC:4204
F7DF  18        CLC                             A:AA X:33 Y:80 P:A5 SP:F9 PPU: 37, 13 CYC:4210
F7E0  24 01     BIT $01 = FF                    A:AA X:33 Y:80 P:A4 SP:F9 PPU: 37, 19 CYC:4212
F7E2  A9 55     LDA #$55                        A:AA X:33 Y:80 P:E4 SP:F9 PPU: 37, 28 CYC:4215
F7E4  60        RTS                             A:55 X:33 Y:80 P:64 SP:F9 PPU: 37, 34 CYC:4217
D281  25 78     AND $78 = AA                    A:55 X:33 Y:80 P:64 SP:FB PPU: 37, 52 CYC:4223
D283  20 E5 F7  JSR $F7E5                       A:00 X:33 Y:80 P:66 SP:FB PPU: 37, 61 CYC:4226
F7E5  D0 07     BNE $F7EE                       A:00 X:33 Y:80 P:66 SP:F9 PPU: 37, 79 CYC:4232
F7E7  50 05     BVC $F7EE                       A:00 X:33 Y:80 P:66 SP:F9 PPU: 37, 85 CYC:4234
F7E9  B0 03     BCS $F7EE                       A:00 X:33 Y:80 P:66 SP:F9 PPU: 37, 91 CYC:4236
F7EB  30 01     BMI $F7EE                       A:00 X:33 Y:80 P:66 SP:F9 PPU: 37, 97 CYC:4238
F7ED  60        RTS                             A:00 X:33 Y:80 P:66 SP:F9 PPU: 37,103 CYC:4240
D286  C8        INY                             A:00 X:33 Y:80 P:66 SP:FB PPU: 37,121 CYC:4246
D287  A9 EF     LDA #$EF                        A:00 X:33 Y:81 P:E4 SP:FB PPU: 37,127 CYC:4248
D289  85 78     STA $78 = AA                    A:EF X:33 Y:81 P:E4 SP:FB PPU: 37,133 CYC:4250
D28B  20 F1 F7  JSR $F7F1                       A:EF X:33 Y:81 P:E4 SP:FB PPU: 37,142 CYC:4253
F7F1  38        SEC                             A:EF X:33 Y:81 P:E4 SP:F9 PPU: 37,160 CYC:4259
F7F2  B8        CLV                             A:EF X:33 Y:81 P:E5 SP:F9 PPU: 37,166 CYC:4261
F7F3  A9 F8     LDA #$F8                        A:EF X:33 Y:81 P:A5 SP:F9 PPU: 37,172 CYC:4263
F7F5  60        RTS                             A:F8 X:33 Y:81 P:A5 SP:F9 PPU: 37,178 CYC:4265
D28E  25 78     AND $78 = EF                    A:F8 X:33 Y:81 P:A5 SP:FB PPU: 37,196 CYC:4271
D290  20 F6 F7  JSR $F7F6                       A:E8 X:33 Y:81 P:A5 SP:FB PPU: 37,205 CYC:4274
F7F6  90 09     BCC $F801                       A:E8 X:33 Y:81 P:A5 SP:F9 PPU: 37,223 CYC:4280
F7F8  10 07     BPL $F801                       A:E8 X:33 Y:81 P:A5 SP:F9 PPU: 37,229 CYC:4282
F7FA  C9 E8     CMP #$E8                        A:E8 X:33 Y:81 P:A5 SP:F9 PPU: 37,235 CYC:4284
F7FC  D0 03     BNE $F801                       A:E8 X:33 Y:81 P:27 SP:F9 PPU: 37,241 CYC:4286
F7FE  70 01     BVS $F801                       A:E8 X:33 Y:81 P:27 SP:F9 PPU: 37,247 CYC:4288
F800  60        RTS                             A:E8 X:33 Y:81 P:27 SP:F9 PPU: 37,253 CYC:4290
D293  C8        INY                             A:E8 X:33 Y:81 P:27 SP:FB PPU: 37,271 CYC:4296
D294  A9 AA     LDA #$AA                        A:E8 X:33 Y:82 P:A5 SP:FB PPU: 37,277 CYC:4298
D296  85 78     STA $78 = EF                    A:AA X:33 Y:82 P:A5 SP:FB PPU: 37,283 CYC:4300
D298  20 04 F8  JSR $F804                       A:AA X:33 Y:82 P:A5 SP:FB PPU: 37,292 CYC:4303
F804  18        CLC                             A:AA X:33 Y:82 P:A5 SP:F9 PPU: 37,310 CYC:4309
F805  24 01     BIT $01 = FF                    A:AA X:33 Y:82 P:A4 SP:F9 PPU: 37,316 CYC:4311
F807  A9 5F     LDA #$5F                        A:AA X:33 Y:82 P:E4 SP:F9 PPU: 37,325 CYC:4314
F809  60        RTS                             A:5F X:33 Y:82 P:64 SP:F9 PPU: 37,331 CYC:4316
D29B  45 78     EOR $78 = AA                    A:5F X:33 Y:82 P:64 SP:FB PPU: 38,  8 CYC:4322
D29D  20 0A F8  JSR $F80A                       A:F5 X:33 Y:82 P:E4 SP:FB PPU: 38, 17 CYC:4325
F80A  B0 09     BCS $F815                       A:F5 X:33 Y:82 P:E4 SP:F9 PPU: 38, 35 CYC:4331
F80C  10 07     BPL $F815                       A:F5 X:33 Y:82 P:E4 SP:F9 PPU: 38, 41 CYC:4333
F80E  C9 F5     CMP #$F5                        A:F5 X:33 Y:82 P:E4 SP:F9 PPU: 38, 47 CYC:4335
F810  D0 03     BNE $F815                       A:F5 X:33 Y:82 P:67 SP:F9 PPU: 38, 53 CYC:4337
F812  50 01     BVC $F815                       A:F5 X:33 Y:82 P:67 SP:F9 PPU: 38, 59 CYC:4339
F814  60        RTS                             A:F5 X:33 Y:82 P:67 SP:F9 PPU: 38, 65 CYC:4341
D2A0  C8        INY                             A:F5 X:33 Y:82 P:67 SP:FB PPU: 38, 83 CYC:4347
D2A1  A9 70     LDA #$70                        A:F5 X:33 Y:83 P:E5 SP:FB PPU: 38, 89 CYC:4349
D2A3  85 78     STA $78 = AA                    A:70 X:33 Y:83 P:65 SP:FB PPU: 38, 95 CYC:4351
D2A5  20 18 F8  JSR $F818                       A:70 X:33 Y:83 P:65 SP:FB PPU: 38,104 CYC:4354
F818  38        SEC                             A:70 X:33 Y:83 P:65 SP:F9 PPU: 38,122 CYC:4360
F819  B8        CLV                             A:70 X:33 Y:83 P:65 SP:F9 PPU: 38,128 CYC:4362
F81A  A9 70     LDA #$70                        A:70 X:33 Y:83 P:25 SP:F9 PPU: 38,134 CYC:4364
F81C  60        RTS                             A:70 X:33 Y:83 P:25 SP:F9 PPU: 38,140 CYC:4366
D2A8  45 78     EOR $78 = 70                    A:70 X:33 Y:83 P:25 SP:FB PPU: 38,158 CYC:4372
D2AA  20 1D F8  JSR $F81D                       A:00 X:33 Y:83 P:27 SP:FB PPU: 38,167 CYC:4375
F81D  D0 07     BNE $F826                       A:00 X:33 Y:83 P:27 SP:F9 PPU: 38,185 CYC:4381
F81F  70 05     BVS $F826                       A:00 X:33 Y:83 P:27 SP:F9 PPU: 38,191 CYC:4383
F821  90 03     BCC $F826                       A:00 X:33 Y:83 P:27 SP:F9 PPU: 38,197 CYC:4385
F823  30 01     BMI $F826                       A:00 X:33 Y:83 P:27 SP:F9 PPU: 38,203 CYC:4387
F825  60        RTS                             A:00 X:33 Y:83 P:27 SP:F9 PPU: 38,209 CYC:4389
D2AD  C8        INY                             A:00 X:33 Y:83 P:27 SP:FB PPU: 38,227 CYC:4395
D2AE  A9 69     LDA #$69                        A:00 X:33 Y:84 P:A5 SP:FB PPU: 38,233 CYC:4397
D2B0  85 78     STA $78 = 70                    A:69 X:33 Y:84 P:25 SP:FB PPU: 38,239 CYC:4399
D2B2  20 29 F8  JSR $F829                       A:69 X:33 Y:84 P:25 SP:FB PPU: 38,248 CYC:4402
F829  18        CLC                             A:69 X:33 Y:84 P:25 SP:F9 PPU: 38,266 CYC:4408
F82A  24 01     BIT $01 = FF                    A:69 X:33 Y:84 P:24 SP:F9 PPU: 38,272 CYC:4410
F82C  A9 00     LDA #$00                        A:69 X:33 Y:84 P:E4 SP:F9 PPU: 38,281 CYC:4413
F82E  60        RTS                             A:00 X:33 Y:84 P:66 SP:F9 PPU: 38,287 CYC:4415
D2B5  65 78     ADC $78 = 69                    A:00 X:33 Y:84 P:66 SP:FB PPU: 38,305 CYC:4421
D2B7  20 2F F8  JSR $F82F                       A:69 X:33 Y:84 P:24 SP:FB PPU: 38,314 CYC:4424
F82F  30 09     BMI $F83A                       A:69 X:33 Y:84 P:24 SP:F9 PPU: 38,332 CYC:4430
F831  B0 07     BCS $F83A                       A:69 X:33 Y:84 P:24 SP:F9 PPU: 38,338 CYC:4432
F833  C9 69     CMP #$69                        A:69 X:33 Y:84 P:24 SP:F9 PPU: 39,  3 CYC:4434
F835  D0 03     BNE $F83A                       A:69 X:33 Y:84 P:27 SP:F9 PPU: 39,  9 CYC:4436
F837  70 01     BVS $F83A                       A:69 X:33 Y:84 P:27 SP:F9 PPU: 39, 15 CYC:4438
F839  60        RTS                             A:69 X:33 Y:84 P:27 SP:F9 PPU: 39, 21 CYC:4440
D2BA  C8        INY                             A:69 X:33 Y:84 P:27 SP:FB PPU: 39, 39 CYC:4446
D2BB  20 3D F8  JSR $F83D                       A:69 X:33 Y:85 P:A5 SP:FB PPU: 39, 45 CYC:4448
F83D  38        SEC                             A:69 X:33 Y:85 P:A5 SP:F9 PPU: 39, 63 CYC:4454
F83E  24 01     BIT $01 = FF                    A:69 X:33 Y:85 P:A5 SP:F9 PPU: 39, 69 CYC:4456
F840  A9 00     LDA #$00                        A:69 X:33 Y:85 P:E5 SP:F9 PPU: 39, 78 CYC:4459
F842  60        RTS                             A:00 X:33 Y:85 P:67 SP:F9 PPU: 39, 84 CYC:4461
D2BE  65 78     ADC $78 = 69                    A:00 X:33 Y:85 P:67 SP:FB PPU: 39,102 CYC:4467
D2C0  20 43 F8  JSR $F843                       A:6A X:33 Y:85 P:24 SP:FB PPU: 39,111 CYC:4470
F843  30 09     BMI $F84E                       A:6A X:33 Y:85 P:24 SP:F9 PPU: 39,129 CYC:4476
F845  B0 07     BCS $F84E                       A:6A X:33 Y:85 P:24 SP:F9 PPU: 39,135 CYC:4478
F847  C9 6A     CMP #$6A                        A:6A X:33 Y:85 P:24 SP:F9 PPU: 39,141 CYC:4480
F849  D0 03     BNE $F84E                       A:6A X:33 Y:85 P:27 SP:F9 PPU: 39,147 CYC:4482
F84B  70 01     BVS $F84E                       A:6A X:33 Y:85 P:27 SP:F9 PPU: 39,153 CYC:4484
F84D  60        RTS                             A:6A X:33 Y:85 P:27 SP:F9 PPU: 39,159 CYC:4486
D2C3  C8        INY                             A:6A X:33 Y:85 P:27 SP:FB PPU: 39,177 CYC:4492
D2C4  A9 7F     LDA #$7F                        A:6A X:33 Y:86 P:A5 SP:FB PPU: 39,183 CYC:4494
D2C6  85 78     STA $78 = 69                    A:7F X:33 Y:86 P:25 SP:FB PPU: 39,189 CYC:4496
D2C8  20 51 F8  JSR $F851                       A:7F X:33 Y:86 P:25 SP:FB PPU: 39,198 CYC:4499
F851  38        SEC                             A:7F X:33 Y:86 P:25 SP:F9 PPU: 39,216 CYC:4505
F852  B8        CLV                             A:7F X:33 Y:86 P:25 SP:F9 PPU: 39,222 CYC:4507
F853  A9 7F     LDA #$7F                        A:7F X:33 Y:86 P:25 SP:F9 PPU: 39,228 CYC:4509
F855  60        RTS                             A:7F X:33 Y:86 P:25 SP:F9 PPU: 39,234 CYC:4511
D2CB  65 78     ADC $78 = 7F                    A:7F X:33 Y:86 P:25 SP:FB PPU: 39,252 CYC:4517
D2CD  20 56 F8  JSR $F856                       A:FF X:33 Y:86 P:E4 SP:FB PPU: 39,261 CYC:4520
F856  10 09     BPL $F861                       A:FF X:33 Y:86 P:E4 SP:F9 PPU: 39,279 CYC:4526
F858  B0 07     BCS $F861                       A:FF X:33 Y:86 P:E4 SP:F9 PPU: 39,285 CYC:4528
F85A  C9 FF     CMP #$FF                        A:FF X:33 Y:86 P:E4 SP:F9 PPU: 39,291 CYC:4530
F85C  D0 03     BNE $F861                       A:FF X:33 Y:86 P:67 SP:F9 PPU: 39,297 CYC:4532
F85E  50 01     BVC $F861                       A:FF X:33 Y:86 P:67 SP:F9 PPU: 39,303 CYC:4534
F860  60        RTS                             A:FF X:33 Y:86 P:67 SP:F9 PPU: 39,309 CYC:4536
D2D0  C8        INY                             A:FF X:33 Y:86 P:67 SP:FB PPU: 39,327 CYC:4542
D2D1  A9 80     LDA #$80                        A:FF X:33 Y:87 P:E5 SP:FB PPU: 39,333 CYC:4544
D2D3  85 78     STA $78 = 7F                    A:80 X:33 Y:87 P:E5 SP:FB PPU: 39,339 CYC:4546
D2D5  20 64 F8  JSR $F864                       A:80 X:33 Y:87 P:E5 SP:FB PPU: 40,  7 CYC:4549
F864  18        CLC                             A:80 X:33 Y:87 P:E5 SP:F9 PPU: 40, 25 CYC:4555
F865  24 01     BIT $01 = FF                    A:80 X:33 Y:87 P:E4 SP:F9 PPU: 40, 31 CYC:4557
F867  A9 7F     LDA #$7F                        A:80 X:33 Y:87 P:E4 SP:F9 PPU: 40, 40 CYC:4560
F869  60        RTS                             A:7F X:33 Y:87 P:64 SP:F9 PPU: 40, 46 CYC:4562
D2D8  65 78     ADC $78 = 80                    A:7F X:33 Y:87 P:64 SP:FB PPU: 40, 64 CYC:4568
D2DA  20 6A F8  JSR $F86A                       A:FF X:33 Y:87 P:A4 SP:FB PPU: 40, 73 CYC:4571
F86A  10 09     BPL $F875                       A:FF X:33 Y:87 P:A4 SP:F9 PPU: 40, 91 CYC:4577
F86C  B0 07     BCS $F875                       A:FF X:33 Y:87 P:A4 SP:F9 PPU: 40, 97 CYC:4579
F86E  C9 FF     CMP #$FF                        A:FF X:33 Y:87 P:A4 SP:F9 PPU: 40,103 CYC:4581
F870  D0 03     BNE $F875                       A:FF X:33 Y:87 P:27 SP:F9 PPU: 40,109 CYC:4583
F872  70 01     BVS $F875                       A:FF X:33 Y:87 P:27 SP:F9 PPU: 40,115 CYC:4585
F874  60        RTS                             A:FF X:33 Y:87 P:27 SP:F9 PPU: 40,121 CYC:4587
D2DD  C8        INY                             A:FF X:33 Y:87 P:27 SP:FB PPU: 40,139 CYC:4593
D2DE  20 78 F8  JSR $F878                       A:FF X:33 Y:88 P:A5 SP:FB PPU: 40,145 CYC:4595
F878  38        SEC                             A:FF X:33 Y:88 P:A5 SP:F9 PPU: 40,163 CYC:4601
F879  B8        CLV                             A:FF X:33 Y:88 P:A5 SP:F9 PPU: 40,169 CYC:4603
F87A  A9 7F     LDA #$7F                        A:FF X:33 Y:88 P:A5 SP:F9 PPU: 40,175 CYC:4605
F87C  60        RTS                             A:7F X:33 Y:88 P:25 SP:F9 PPU: 40,181 CYC:4607
D2E1  65 78     ADC $78 = 80                    A:7F X:33 Y:88 P:25 SP:FB PPU: 40,199 CYC:4613
D2E3  20 7D F8  JSR $F87D                       A:00 X:33 Y:88 P:27 SP:FB PPU: 40,208 CYC:4616
F87D  D0 07     BNE $F886                       A:00 X:33 Y:88 P:27 SP:F9 PPU: 40,226 CYC:4622
F87F  30 05     BMI $F886                       A:00 X:33 Y:88 P:27 SP:F9 PPU: 40,232 CYC:4624
F881  70 03     BVS $F886                       A:00 X:33 Y:88 P:27 SP:F9 PPU: 40,238 CYC:4626
F883  90 01     BCC $F886                       A:00 X:33 Y:88 P:27 SP:F9 PPU: 40,244 CYC:4628
F885  60        RTS                             A:00 X:33 Y:88 P:27 SP:F9 PPU: 40,250 CYC:4630
D2E6  C8        INY                             A:00 X:33 Y:88 P:27 SP:FB PPU: 40,268 CYC:4636
D2E7  A9 40     LDA #$40                        A:00 X:33 Y:89 P:A5 SP:FB PPU: 40,274 CYC:4638
D2E9  85 78     STA $78 = 80                    A:40 X:33 Y:89 P:25 SP:FB PPU: 40,280 CYC:4640
D2EB  20 89 F8  JSR $F889                       A:40 X:33 Y:89 P:25 SP:FB PPU: 40,289 CYC:4643
F889  24 01     BIT $01 = FF                    A:40 X:33 Y:89 P:25 SP:F9 PPU: 40,307 CYC:4649
F88B  A9 40     LDA #$40                        A:40 X:33 Y:89 P:E5 SP:F9 PPU: 40,316 CYC:4652
F88D  60        RTS                             A:40 X:33 Y:89 P:65 SP:F9 PPU: 40,322 CYC:4654
D2EE  C5 78     CMP $78 = 40                    A:40 X:33 Y:89 P:65 SP:FB PPU: 40,340 CYC:4660
D2F0  20 8E F8  JSR $F88E                       A:40 X:33 Y:89 P:67 SP:FB PPU: 41,  8 CYC:4663
F88E  30 07     BMI $F897                       A:40 X:33 Y:89 P:67 SP:F9 PPU: 41, 26 CYC:4669
F890  90 05     BCC $F897                       A:40 X:33 Y:89 P:67 SP:F9 PPU: 41, 32 CYC:4671
F892  D0 03     BNE $F897                       A:40 X:33 Y:89 P:67 SP:F9 PPU: 41, 38 CYC:4673
F894  50 01     BVC $F897                       A:40 X:33 Y:89 P:67 SP:F9 PPU: 41, 44 CYC:4675
F896  60        RTS                             A:40 X:33 Y:89 P:67 SP:F9 PPU: 41, 50 CYC:4677
D2F3  C8        INY                             A:40 X:33 Y:89 P:67 SP:FB PPU: 41, 68 CYC:4683
D2F4  48        PHA                             A:40 X:33 Y:8A P:E5 SP:FB PPU: 41, 74 CYC:4685
D2F5  A9 3F     LDA #$3F                        A:40 X:33 Y:8A P:E5 SP:FA PPU: 41, 83 CYC:4688
D2F7  85 78     STA $78 = 40                    A:3F X:33 Y:8A P:65 SP:FA PPU: 41, 89 CYC:4690
D2F9  68        PLA                             A:3F X:33 Y:8A P:65 SP:FA PPU: 41, 98 CYC:4693
D2FA  20 9A F8  JSR $F89A                       A:40 X:33 Y:8A P:65 SP:FB PPU: 41,110 CYC:4697
F89A  B8        CLV                             A:40 X:33 Y:8A P:65 SP:F9 PPU: 41,128 CYC:4703
F89B  60        RTS                             A:40 X:33 Y:8A P:25 SP:F9 PPU: 41,134 CYC:4705
D2FD  C5 78     CMP $78 = 3F                    A:40 X:33 Y:8A P:25 SP:FB PPU: 41,152 CYC:4711
D2FF  20 9C F8  JSR $F89C                       A:40 X:33 Y:8A P:25 SP:FB PPU: 41,161 CYC:4714
F89C  F0 07     BEQ $F8A5                       A:40 X:33 Y:8A P:25 SP:F9 PPU: 41,179 CYC:4720
F89E  30 05     BMI $F8A5                       A:40 X:33 Y:8A P:25 SP:F9 PPU: 41,185 CYC:4722
F8A0  90 03     BCC $F8A5                       A:40 X:33 Y:8A P:25 SP:F9 PPU: 41,191 CYC:4724
F8A2  70 01     BVS $F8A5                       A:40 X:33 Y:8A P:25 SP:F9 PPU: 41,197 CYC:4726
F8A4  60        RTS                             A:40 X:33 Y:8A P:25 SP:F9 PPU: 41,203 CYC:4728
D302  C8        INY                             A:40 X:33 Y:8A P:25 SP:FB PPU: 41,221 CYC:4734
D303  48        PHA                             A:40 X:33 Y:8B P:A5 SP:FB PPU: 41,227 CYC:4736
D304  A9 41     LDA #$41                        A:40 X:33 Y:8B P:A5 SP:FA PPU: 41,236 CYC:4739
D306  85 78     STA $78 = 3F                    A:41 X:33 Y:8B P:25 SP:FA PPU: 41,242 CYC:4741
D308  68        PLA                             A:41 X:33 Y:8B P:25 SP:FA PPU: 41,251 CYC:4744
D309  C5 78     CMP $78 = 41                    A:40 X:33 Y:8B P:25 SP:FB PPU: 41,263 CYC:4748
D30B  20 A8 F8  JSR $F8A8                       A:40 X:33 Y:8B P:A4 SP:FB PPU: 41,272 CYC:4751
F8A8  F0 05     BEQ $F8AF                       A:40 X:33 Y:8B P:A4 SP:F9 PPU: 41,290 CYC:4757
F8AA  10 03     BPL $F8AF                       A:40 X:33 Y:8B P:A4 SP:F9 PPU: 41,296 CYC:4759
F8AC  10 01     BPL $F8AF                       A:40 X:33 Y:8B P:A4 SP:F9 PPU: 41,302 CYC:4761
F8AE  60        RTS                             A:40 X:33 Y:8B P:A4 SP:F9 PPU: 41,308 CYC:4763
D30E  C8        INY                             A:40 X:33 Y:8B P:A4 SP:FB PPU: 41,326 CYC:4769
D30F  48        PHA                             A:40 X:33 Y:8C P:A4 SP:FB PPU: 41,332 CYC:4771
D310  A9 00     LDA #$00                        A:40 X:33 Y:8C P:A4 SP:FA PPU: 42,  0 CYC:4774
D312  85 78     STA $78 = 41                    A:00 X:33 Y:8C P:26 SP:FA PPU: 42,  6 CYC:4776
D314  68        PLA                             A:00 X:33 Y:8C P:26 SP:FA PPU: 42, 15 CYC:4779
D315  20 B2 F8  JSR $F8B2                       A:40 X:33 Y:8C P:24 SP:FB PPU: 42, 27 CYC:4783
F8B2  A9 80     LDA #$80                        A:40 X:33 Y:8C P:24 SP:F9 PPU: 42, 45 CYC:4789
F8B4  60        RTS                             A:80 X:33 Y:8C P:A4 SP:F9 PPU: 42, 51 CYC:4791
D318  C5 78     CMP $78 = 00                    A:80 X:33 Y:8C P:A4 SP:FB PPU: 42, 69 CYC:4797
D31A  20 B5 F8  JSR $F8B5                       A:80 X:33 Y:8C P:A5 SP:FB PPU: 42, 78 CYC:4800
F8B5  F0 05     BEQ $F8BC                       A:80 X:33 Y:8C P:A5 SP:F9 PPU: 42, 96 CYC:4806
F8B7  10 03     BPL $F8BC                       A:80 X:33 Y:8C P:A5 SP:F9 PPU: 42,102 CYC:4808
F8B9  90 01     BCC $F8BC                       A:80 X:33 Y:8C P:A5 SP:F9 PPU: 42,108 CYC:4810
F8BB  60        RTS                             A:80 X:33 Y:8C P:A5 SP:F9 PPU: 42,114 CYC:4812
D31D  C8        INY                             A:80 X:33 Y:8C P:A5 SP:FB PPU: 42,132 CYC:4818
D31E  48        PHA                             A:80 X:33 Y:8D P:A5 SP:FB PPU: 42,138 CYC:4820
D31F  A9 80     LDA #$80                        A:80 X:33 Y:8D P:A5 SP:FA PPU: 42,147 CYC:4823
D321  85 78     STA $78 = 00                    A:80 X:33 Y:8D P:A5 SP:FA PPU: 42,153 CYC:4825
D323  68        PLA                             A:80 X:33 Y:8D P:A5 SP:FA PPU: 42,162 CYC:4828
D324  C5 78     CMP $78 = 80                    A:80 X:33 Y:8D P:A5 SP:FB PPU: 42,174 CYC:4832
D326  20 BF F8  JSR $F8BF                       A:80 X:33 Y:8D P:27 SP:FB PPU: 42,183 CYC:4835
F8BF  D0 05     BNE $F8C6                       A:80 X:33 Y:8D P:27 SP:F9 PPU: 42,201 CYC:4841
F8C1  30 03     BMI $F8C6                       A:80 X:33 Y:8D P:27 SP:F9 PPU: 42,207 CYC:4843
F8C3  90 01     BCC $F8C6                       A:80 X:33 Y:8D P:27 SP:F9 PPU: 42,213 CYC:4845
F8C5  60        RTS                             A:80 X:33 Y:8D P:27 SP:F9 PPU: 42,219 CYC:4847
D329  C8        INY                             A:80 X:33 Y:8D P:27 SP:FB PPU: 42,237 CYC:4853
D32A  48        PHA                             A:80 X:33 Y:8E P:A5 SP:FB PPU: 42,243 CYC:4855
D32B  A9 81     LDA #$81                        A:80 X:33 Y:8E P:A5 SP:FA PPU: 42,252 CYC:4858
D32D  85 78     STA $78 = 80                    A:81 X:33 Y:8E P:A5 SP:FA PPU: 42,258 CYC:4860
D32F  68        PLA                             A:81 X:33 Y:8E P:A5 SP:FA PPU: 42,267 CYC:4863
D330  C5 78     CMP $78 = 81                    A:80 X:33 Y:8E P:A5 SP:FB PPU: 42,279 CYC:4867
D332  20 C9 F8  JSR $F8C9                       A:80 X:33 Y:8E P:A4 SP:FB PPU: 42,288 CYC:4870
F8C9  B0 05     BCS $F8D0                       A:80 X:33 Y:8E P:A4 SP:F9 PPU: 42,306 CYC:4876
F8CB  F0 03     BEQ $F8D0                       A:80 X:33 Y:8E P:A4 SP:F9 PPU: 42,312 CYC:4878
F8CD  10 01     BPL $F8D0                       A:80 X:33 Y:8E P:A4 SP:F9 PPU: 42,318 CYC:4880
F8CF  60        RTS                             A:80 X:33 Y:8E P:A4 SP:F9 PPU: 42,324 CYC:4882
D335  C8        INY                             A:80 X:33 Y:8E P:A4 SP:FB PPU: 43,  1 CYC:4888
D336  48        PHA                             A:80 X:33 Y:8F P:A4 SP:FB PPU: 43,  7 CYC:4890
D337  A9 7F     LDA #$7F                        A:80 X:33 Y:8F P:A4 SP:FA PPU: 43, 16 CYC:4893
D339  85 78     STA $78 = 81                    A:7F X:33 Y:8F P:24 SP:FA PPU: 43, 22 CYC:4895
D33B  68        PLA                             A:7F X:33 Y:8F P:24 SP:FA PPU: 43, 31 CYC:4898
D33C  C5 78     CMP $78 = 7F                    A:80 X:33 Y:8F P:A4 SP:FB PPU: 43, 43 CYC:4902
D33E  20 D3 F8  JSR $F8D3                       A:80 X:33 Y:8F P:25 SP:FB PPU: 43, 52 CYC:4905
F8D3  90 05     BCC $F8DA                       A:80 X:33 Y:8F P:25 SP:F9 PPU: 43, 70 CYC:4911
F8D5  F0 03     BEQ $F8DA                       A:80 X:33 Y:8F P:25 SP:F9 PPU: 43, 76 CYC:4913
F8D7  30 01     BMI $F8DA                       A:80 X:33 Y:8F P:25 SP:F9 PPU: 43, 82 CYC:4915
F8D9  60        RTS                             A:80 X:33 Y:8F P:25 SP:F9 PPU: 43, 88 CYC:4917
D341  C8        INY                             A:80 X:33 Y:8F P:25 SP:FB PPU: 43,106 CYC:4923
D342  A9 40     LDA #$40                        A:80 X:33 Y:90 P:A5 SP:FB PPU: 43,112 CYC:4925
D344  85 78     STA $78 = 7F                    A:40 X:33 Y:90 P:25 SP:FB PPU: 43,118 CYC:4927
D346  20 31 F9  JSR $F931                       A:40 X:33 Y:90 P:25 SP:FB PPU: 43,127 CYC:4930
F931  24 01     BIT $01 = FF                    A:40 X:33 Y:90 P:25 SP:F9 PPU: 43,145 CYC:4936
F933  A9 40     LDA #$40                        A:40 X:33 Y:90 P:E5 SP:F9 PPU: 43,154 CYC:4939
F935  38        SEC                             A:40 X:33 Y:90 P:65 SP:F9 PPU: 43,160 CYC:4941
F936  60        RTS                             A:40 X:33 Y:90 P:65 SP:F9 PPU: 43,166 CYC:4943
D349  E5 78     SBC $78 = 40                    A:40 X:33 Y:90 P:65 SP:FB PPU: 43,184 CYC:4949
D34B  20 37 F9  JSR $F937                       A:00 X:33 Y:90 P:27 SP:FB PPU: 43,193 CYC:4952
F937  30 0B     BMI $F944                       A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,211 CYC:4958
F939  90 09     BCC $F944                       A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,217 CYC:4960
F93B  D0 07     BNE $F944                       A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,223 CYC:4962
F93D  70 05     BVS $F944                       A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,229 CYC:4964
F93F  C9 00     CMP #$00                        A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,235 CYC:4966
F941  D0 01     BNE $F944                       A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,241 CYC:4968
F943  60        RTS                             A:00 X:33 Y:90 P:27 SP:F9 PPU: 43,247 CYC:4970
D34E  C8        INY                             A:00 X:33 Y:90 P:27 SP:FB PPU: 43,265 CYC:4976
D34F  A9 3F     LDA #$3F                        A:00 X:33 Y:91 P:A5 SP:FB PPU: 43,271 CYC:4978
D351  85 78     STA $78 = 40                    A:3F X:33 Y:91 P:25 SP:FB PPU: 43,277 CYC:4980
D353  20 47 F9  JSR $F947                       A:3F X:33 Y:91 P:25 SP:FB PPU: 43,286 CYC:4983
F947  B8        CLV                             A:3F X:33 Y:91 P:25 SP:F9 PPU: 43,304 CYC:4989
F948  38        SEC                             A:3F X:33 Y:91 P:25 SP:F9 PPU: 43,310 CYC:4991
F949  A9 40     LDA #$40                        A:3F X:33 Y:91 P:25 SP:F9 PPU: 43,316 CYC:4993
F94B  60        RTS                             A:40 X:33 Y:91 P:25 SP:F9 PPU: 43,322 CYC:4995
D356  E5 78     SBC $78 = 3F                    A:40 X:33 Y:91 P:25 SP:FB PPU: 43,340 CYC:5001
D358  20 4C F9  JSR $F94C                       A:01 X:33 Y:91 P:25 SP:FB PPU: 44,  8 CYC:5004
F94C  F0 0B     BEQ $F959                       A:01 X:33 Y:91 P:25 SP:F9 PPU: 44, 26 CYC:5010
F94E  30 09     BMI $F959                       A:01 X:33 Y:91 P:25 SP:F9 PPU: 44, 32 CYC:5012
F950  90 07     BCC $F959                       A:01 X:33 Y:91 P:25 SP:F9 PPU: 44, 38 CYC:5014
F952  70 05     BVS $F959                       A:01 X:33 Y:91 P:25 SP:F9 PPU: 44, 44 CYC:5016
F954  C9 01     CMP #$01                        A:01 X:33 Y:91 P:25 SP:F9 PPU: 44, 50 CYC:5018
F956  D0 01     BNE $F959                       A:01 X:33 Y:91 P:27 SP:F9 PPU: 44, 56 CYC:5020
F958  60        RTS                             A:01 X:33 Y:91 P:27 SP:F9 PPU: 44, 62 CYC:5022
D35B  C8        INY                             A:01 X:33 Y:91 P:27 SP:FB PPU: 44, 80 CYC:5028
D35C  A9 41     LDA #$41                        A:01 X:33 Y:92 P:A5 SP:FB PPU: 44, 86 CYC:5030
D35E  85 78     STA $78 = 3F                    A:41 X:33 Y:92 P:25 SP:FB PPU: 44, 92 CYC:5032
D360  20 5C F9  JSR $F95C                       A:41 X:33 Y:92 P:25 SP:FB PPU: 44,101 CYC:5035
F95C  A9 40     LDA #$40                        A:41 X:33 Y:92 P:25 SP:F9 PPU: 44,119 CYC:5041
F95E  38        SEC                             A:40 X:33 Y:92 P:25 SP:F9 PPU: 44,125 CYC:5043
F95F  24 01     BIT $01 = FF                    A:40 X:33 Y:92 P:25 SP:F9 PPU: 44,131 CYC:5045
F961  60        RTS                             A:40 X:33 Y:92 P:E5 SP:F9 PPU: 44,140 CYC:5048
D363  E5 78     SBC $78 = 41                    A:40 X:33 Y:92 P:E5 SP:FB PPU: 44,158 CYC:5054
D365  20 62 F9  JSR $F962                       A:FF X:33 Y:92 P:A4 SP:FB PPU: 44,167 CYC:5057
F962  B0 0B     BCS $F96F                       A:FF X:33 Y:92 P:A4 SP:F9 PPU: 44,185 CYC:5063
F964  F0 09     BEQ $F96F                       A:FF X:33 Y:92 P:A4 SP:F9 PPU: 44,191 CYC:5065
F966  10 07     BPL $F96F                       A:FF X:33 Y:92 P:A4 SP:F9 PPU: 44,197 CYC:5067
F968  70 05     BVS $F96F                       A:FF X:33 Y:92 P:A4 SP:F9 PPU: 44,203 CYC:5069
F96A  C9 FF     CMP #$FF                        A:FF X:33 Y:92 P:A4 SP:F9 PPU: 44,209 CYC:5071
F96C  D0 01     BNE $F96F                       A:FF X:33 Y:92 P:27 SP:F9 PPU: 44,215 CYC:5073
F96E  60        RTS                             A:FF X:33 Y:92 P:27 SP:F9 PPU: 44,221 CYC:5075
D368  C8        INY                             A:FF X:33 Y:92 P:27 SP:FB PPU: 44,239 CYC:5081
D369  A9 00     LDA #$00                        A:FF X:33 Y:93 P:A5 SP:FB PPU: 44,245 CYC:5083
D36B  85 78     STA $78 = 41                    A:00 X:33 Y:93 P:27 SP:FB PPU: 44,251 CYC:5085
D36D  20 72 F9  JSR $F972                       A:00 X:33 Y:93 P:27 SP:FB PPU: 44,260 CYC:5088
F972  18        CLC                             A:00 X:33 Y:93 P:27 SP:F9 PPU: 44,278 CYC:5094
F973  A9 80     LDA #$80                        A:00 X:33 Y:93 P:26 SP:F9 PPU: 44,284 CYC:5096
F975  60        RTS                             A:80 X:33 Y:93 P:A4 SP:F9 PPU: 44,290 CYC:5098
D370  E5 78     SBC $78 = 00                    A:80 X:33 Y:93 P:A4 SP:FB PPU: 44,308 CYC:5104
D372  20 76 F9  JSR $F976                       A:7F X:33 Y:93 P:65 SP:FB PPU: 44,317 CYC:5107
F976  90 05     BCC $F97D                       A:7F X:33 Y:93 P:65 SP:F9 PPU: 44,335 CYC:5113
F978  C9 7F     CMP #$7F                        A:7F X:33 Y:93 P:65 SP:F9 PPU: 45,  0 CYC:5115
F97A  D0 01     BNE $F97D                       A:7F X:33 Y:93 P:67 SP:F9 PPU: 45,  6 CYC:5117
F97C  60        RTS                             A:7F X:33 Y:93 P:67 SP:F9 PPU: 45, 12 CYC:5119
D375  C8        INY                             A:7F X:33 Y:93 P:67 SP:FB PPU: 45, 30 CYC:5125
D376  A9 7F     LDA #$7F                        A:7F X:33 Y:94 P:E5 SP:FB PPU: 45, 36 CYC:5127
D378  85 78     STA $78 = 00                    A:7F X:33 Y:94 P:65 SP:FB PPU: 45, 42 CYC:5129
D37A  20 80 F9  JSR $F980                       A:7F X:33 Y:94 P:65 SP:FB PPU: 45, 51 CYC:5132
F980  38        SEC                             A:7F X:33 Y:94 P:65 SP:F9 PPU: 45, 69 CYC:5138
F981  A9 81     LDA #$81                        A:7F X:33 Y:94 P:65 SP:F9 PPU: 45, 75 CYC:5140
F983  60        RTS                             A:81 X:33 Y:94 P:E5 SP:F9 PPU: 45, 81 CYC:5142
D37D  E5 78     SBC $78 = 7F                    A:81 X:33 Y:94 P:E5 SP:FB PPU: 45, 99 CYC:5148
D37F  20 84 F9  JSR $F984                       A:02 X:33 Y:94 P:65 SP:FB PPU: 45,108 CYC:5151
F984  50 07     BVC $F98D                       A:02 X:33 Y:94 P:65 SP:F9 PPU: 45,126 CYC:5157
F986  90 05     BCC $F98D                       A:02 X:33 Y:94 P:65 SP:F9 PPU: 45,132 CYC:5159
]]