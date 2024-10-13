return [[
FB64  B8        CLV                             A:29 X:02 Y:D8 P:65 SP:F9 PPU:192,189 CYC:21887
FB65  18        CLC                             A:29 X:02 Y:D8 P:25 SP:F9 PPU:192,195 CYC:21889
FB66  A9 42     LDA #$42                        A:29 X:02 Y:D8 P:24 SP:F9 PPU:192,201 CYC:21891
FB68  60        RTS                             A:42 X:02 Y:D8 P:24 SP:F9 PPU:192,207 CYC:21893
F0E7  27 47    *RLA $47 = 29                    A:42 X:02 Y:D8 P:24 SP:FB PPU:192,225 CYC:21899
F0E9  EA        NOP                             A:42 X:02 Y:D8 P:24 SP:FB PPU:192,240 CYC:21904
F0EA  EA        NOP                             A:42 X:02 Y:D8 P:24 SP:FB PPU:192,246 CYC:21906
F0EB  EA        NOP                             A:42 X:02 Y:D8 P:24 SP:FB PPU:192,252 CYC:21908
F0EC  EA        NOP                             A:42 X:02 Y:D8 P:24 SP:FB PPU:192,258 CYC:21910
F0ED  20 69 FB  JSR $FB69                       A:42 X:02 Y:D8 P:24 SP:FB PPU:192,264 CYC:21912
FB69  70 0A     BVS $FB75                       A:42 X:02 Y:D8 P:24 SP:F9 PPU:192,282 CYC:21918
FB6B  F0 08     BEQ $FB75                       A:42 X:02 Y:D8 P:24 SP:F9 PPU:192,288 CYC:21920
FB6D  30 06     BMI $FB75                       A:42 X:02 Y:D8 P:24 SP:F9 PPU:192,294 CYC:21922
FB6F  B0 04     BCS $FB75                       A:42 X:02 Y:D8 P:24 SP:F9 PPU:192,300 CYC:21924
FB71  C9 42     CMP #$42                        A:42 X:02 Y:D8 P:24 SP:F9 PPU:192,306 CYC:21926
FB73  F0 02     BEQ $FB77                       A:42 X:02 Y:D8 P:27 SP:F9 PPU:192,312 CYC:21928
FB77  60        RTS                             A:42 X:02 Y:D8 P:27 SP:F9 PPU:192,321 CYC:21931
F0F0  A5 47     LDA $47 = 52                    A:42 X:02 Y:D8 P:27 SP:FB PPU:192,339 CYC:21937
F0F2  C9 52     CMP #$52                        A:52 X:02 Y:D8 P:25 SP:FB PPU:193,  7 CYC:21940
F0F4  F0 02     BEQ $F0F8                       A:52 X:02 Y:D8 P:27 SP:FB PPU:193, 13 CYC:21942
F0F8  C8        INY                             A:52 X:02 Y:D8 P:27 SP:FB PPU:193, 22 CYC:21945
F0F9  A9 37     LDA #$37                        A:52 X:02 Y:D9 P:A5 SP:FB PPU:193, 28 CYC:21947
F0FB  85 47     STA $47 = 52                    A:37 X:02 Y:D9 P:25 SP:FB PPU:193, 34 CYC:21949
F0FD  20 68 FA  JSR $FA68                       A:37 X:02 Y:D9 P:25 SP:FB PPU:193, 43 CYC:21952
FA68  24 01     BIT $01 = FF                    A:37 X:02 Y:D9 P:25 SP:F9 PPU:193, 61 CYC:21958
FA6A  38        SEC                             A:37 X:02 Y:D9 P:E5 SP:F9 PPU:193, 70 CYC:21961
FA6B  A9 75     LDA #$75                        A:37 X:02 Y:D9 P:E5 SP:F9 PPU:193, 76 CYC:21963
FA6D  60        RTS                             A:75 X:02 Y:D9 P:65 SP:F9 PPU:193, 82 CYC:21965
F100  27 47    *RLA $47 = 37                    A:75 X:02 Y:D9 P:65 SP:FB PPU:193,100 CYC:21971
F102  EA        NOP                             A:65 X:02 Y:D9 P:64 SP:FB PPU:193,115 CYC:21976
F103  EA        NOP                             A:65 X:02 Y:D9 P:64 SP:FB PPU:193,121 CYC:21978
F104  EA        NOP                             A:65 X:02 Y:D9 P:64 SP:FB PPU:193,127 CYC:21980
F105  EA        NOP                             A:65 X:02 Y:D9 P:64 SP:FB PPU:193,133 CYC:21982
F106  20 6E FA  JSR $FA6E                       A:65 X:02 Y:D9 P:64 SP:FB PPU:193,139 CYC:21984
FA6E  50 76     BVC $FAE6                       A:65 X:02 Y:D9 P:64 SP:F9 PPU:193,157 CYC:21990
FA70  F0 74     BEQ $FAE6                       A:65 X:02 Y:D9 P:64 SP:F9 PPU:193,163 CYC:21992
FA72  30 72     BMI $FAE6                       A:65 X:02 Y:D9 P:64 SP:F9 PPU:193,169 CYC:21994
FA74  B0 70     BCS $FAE6                       A:65 X:02 Y:D9 P:64 SP:F9 PPU:193,175 CYC:21996
FA76  C9 65     CMP #$65                        A:65 X:02 Y:D9 P:64 SP:F9 PPU:193,181 CYC:21998
FA78  D0 6C     BNE $FAE6                       A:65 X:02 Y:D9 P:67 SP:F9 PPU:193,187 CYC:22000
FA7A  60        RTS                             A:65 X:02 Y:D9 P:67 SP:F9 PPU:193,193 CYC:22002
F109  A5 47     LDA $47 = 6F                    A:65 X:02 Y:D9 P:67 SP:FB PPU:193,211 CYC:22008
F10B  C9 6F     CMP #$6F                        A:6F X:02 Y:D9 P:65 SP:FB PPU:193,220 CYC:22011
F10D  F0 02     BEQ $F111                       A:6F X:02 Y:D9 P:67 SP:FB PPU:193,226 CYC:22013
F111  C8        INY                             A:6F X:02 Y:D9 P:67 SP:FB PPU:193,235 CYC:22016
F112  A9 A5     LDA #$A5                        A:6F X:02 Y:DA P:E5 SP:FB PPU:193,241 CYC:22018
F114  8D 47 06  STA $0647 = 6F                  A:A5 X:02 Y:DA P:E5 SP:FB PPU:193,247 CYC:22020
F117  20 53 FB  JSR $FB53                       A:A5 X:02 Y:DA P:E5 SP:FB PPU:193,259 CYC:22024
FB53  24 01     BIT $01 = FF                    A:A5 X:02 Y:DA P:E5 SP:F9 PPU:193,277 CYC:22030
FB55  18        CLC                             A:A5 X:02 Y:DA P:E5 SP:F9 PPU:193,286 CYC:22033
FB56  A9 B3     LDA #$B3                        A:A5 X:02 Y:DA P:E4 SP:F9 PPU:193,292 CYC:22035
FB58  60        RTS                             A:B3 X:02 Y:DA P:E4 SP:F9 PPU:193,298 CYC:22037
F11A  2F 47 06 *RLA $0647 = A5                  A:B3 X:02 Y:DA P:E4 SP:FB PPU:193,316 CYC:22043
F11D  EA        NOP                             A:02 X:02 Y:DA P:65 SP:FB PPU:193,334 CYC:22049
F11E  EA        NOP                             A:02 X:02 Y:DA P:65 SP:FB PPU:193,340 CYC:22051
F11F  EA        NOP                             A:02 X:02 Y:DA P:65 SP:FB PPU:194,  5 CYC:22053
F120  EA        NOP                             A:02 X:02 Y:DA P:65 SP:FB PPU:194, 11 CYC:22055
F121  20 59 FB  JSR $FB59                       A:02 X:02 Y:DA P:65 SP:FB PPU:194, 17 CYC:22057
FB59  50 1A     BVC $FB75                       A:02 X:02 Y:DA P:65 SP:F9 PPU:194, 35 CYC:22063
FB5B  90 18     BCC $FB75                       A:02 X:02 Y:DA P:65 SP:F9 PPU:194, 41 CYC:22065
FB5D  30 16     BMI $FB75                       A:02 X:02 Y:DA P:65 SP:F9 PPU:194, 47 CYC:22067
FB5F  C9 02     CMP #$02                        A:02 X:02 Y:DA P:65 SP:F9 PPU:194, 53 CYC:22069
FB61  D0 12     BNE $FB75                       A:02 X:02 Y:DA P:67 SP:F9 PPU:194, 59 CYC:22071
FB63  60        RTS                             A:02 X:02 Y:DA P:67 SP:F9 PPU:194, 65 CYC:22073
F124  AD 47 06  LDA $0647 = 4A                  A:02 X:02 Y:DA P:67 SP:FB PPU:194, 83 CYC:22079
F127  C9 4A     CMP #$4A                        A:4A X:02 Y:DA P:65 SP:FB PPU:194, 95 CYC:22083
F129  F0 02     BEQ $F12D                       A:4A X:02 Y:DA P:67 SP:FB PPU:194,101 CYC:22085
F12D  C8        INY                             A:4A X:02 Y:DA P:67 SP:FB PPU:194,110 CYC:22088
F12E  A9 29     LDA #$29                        A:4A X:02 Y:DB P:E5 SP:FB PPU:194,116 CYC:22090
F130  8D 47 06  STA $0647 = 4A                  A:29 X:02 Y:DB P:65 SP:FB PPU:194,122 CYC:22092
F133  20 64 FB  JSR $FB64                       A:29 X:02 Y:DB P:65 SP:FB PPU:194,134 CYC:22096
FB64  B8        CLV                             A:29 X:02 Y:DB P:65 SP:F9 PPU:194,152 CYC:22102
FB65  18        CLC                             A:29 X:02 Y:DB P:25 SP:F9 PPU:194,158 CYC:22104
FB66  A9 42     LDA #$42                        A:29 X:02 Y:DB P:24 SP:F9 PPU:194,164 CYC:22106
FB68  60        RTS                             A:42 X:02 Y:DB P:24 SP:F9 PPU:194,170 CYC:22108
F136  2F 47 06 *RLA $0647 = 29                  A:42 X:02 Y:DB P:24 SP:FB PPU:194,188 CYC:22114
F139  EA        NOP                             A:42 X:02 Y:DB P:24 SP:FB PPU:194,206 CYC:22120
F13A  EA        NOP                             A:42 X:02 Y:DB P:24 SP:FB PPU:194,212 CYC:22122
F13B  EA        NOP                             A:42 X:02 Y:DB P:24 SP:FB PPU:194,218 CYC:22124
F13C  EA        NOP                             A:42 X:02 Y:DB P:24 SP:FB PPU:194,224 CYC:22126
F13D  20 69 FB  JSR $FB69                       A:42 X:02 Y:DB P:24 SP:FB PPU:194,230 CYC:22128
FB69  70 0A     BVS $FB75                       A:42 X:02 Y:DB P:24 SP:F9 PPU:194,248 CYC:22134
FB6B  F0 08     BEQ $FB75                       A:42 X:02 Y:DB P:24 SP:F9 PPU:194,254 CYC:22136
FB6D  30 06     BMI $FB75                       A:42 X:02 Y:DB P:24 SP:F9 PPU:194,260 CYC:22138
FB6F  B0 04     BCS $FB75                       A:42 X:02 Y:DB P:24 SP:F9 PPU:194,266 CYC:22140
FB71  C9 42     CMP #$42                        A:42 X:02 Y:DB P:24 SP:F9 PPU:194,272 CYC:22142
FB73  F0 02     BEQ $FB77                       A:42 X:02 Y:DB P:27 SP:F9 PPU:194,278 CYC:22144
FB77  60        RTS                             A:42 X:02 Y:DB P:27 SP:F9 PPU:194,287 CYC:22147
F140  AD 47 06  LDA $0647 = 52                  A:42 X:02 Y:DB P:27 SP:FB PPU:194,305 CYC:22153
F143  C9 52     CMP #$52                        A:52 X:02 Y:DB P:25 SP:FB PPU:194,317 CYC:22157
F145  F0 02     BEQ $F149                       A:52 X:02 Y:DB P:27 SP:FB PPU:194,323 CYC:22159
F149  C8        INY                             A:52 X:02 Y:DB P:27 SP:FB PPU:194,332 CYC:22162
F14A  A9 37     LDA #$37                        A:52 X:02 Y:DC P:A5 SP:FB PPU:194,338 CYC:22164
F14C  8D 47 06  STA $0647 = 52                  A:37 X:02 Y:DC P:25 SP:FB PPU:195,  3 CYC:22166
F14F  20 68 FA  JSR $FA68                       A:37 X:02 Y:DC P:25 SP:FB PPU:195, 15 CYC:22170
FA68  24 01     BIT $01 = FF                    A:37 X:02 Y:DC P:25 SP:F9 PPU:195, 33 CYC:22176
FA6A  38        SEC                             A:37 X:02 Y:DC P:E5 SP:F9 PPU:195, 42 CYC:22179
FA6B  A9 75     LDA #$75                        A:37 X:02 Y:DC P:E5 SP:F9 PPU:195, 48 CYC:22181
FA6D  60        RTS                             A:75 X:02 Y:DC P:65 SP:F9 PPU:195, 54 CYC:22183
F152  2F 47 06 *RLA $0647 = 37                  A:75 X:02 Y:DC P:65 SP:FB PPU:195, 72 CYC:22189
F155  EA        NOP                             A:65 X:02 Y:DC P:64 SP:FB PPU:195, 90 CYC:22195
F156  EA        NOP                             A:65 X:02 Y:DC P:64 SP:FB PPU:195, 96 CYC:22197
F157  EA        NOP                             A:65 X:02 Y:DC P:64 SP:FB PPU:195,102 CYC:22199
F158  EA        NOP                             A:65 X:02 Y:DC P:64 SP:FB PPU:195,108 CYC:22201
F159  20 6E FA  JSR $FA6E                       A:65 X:02 Y:DC P:64 SP:FB PPU:195,114 CYC:22203
FA6E  50 76     BVC $FAE6                       A:65 X:02 Y:DC P:64 SP:F9 PPU:195,132 CYC:22209
FA70  F0 74     BEQ $FAE6                       A:65 X:02 Y:DC P:64 SP:F9 PPU:195,138 CYC:22211
FA72  30 72     BMI $FAE6                       A:65 X:02 Y:DC P:64 SP:F9 PPU:195,144 CYC:22213
FA74  B0 70     BCS $FAE6                       A:65 X:02 Y:DC P:64 SP:F9 PPU:195,150 CYC:22215
FA76  C9 65     CMP #$65                        A:65 X:02 Y:DC P:64 SP:F9 PPU:195,156 CYC:22217
FA78  D0 6C     BNE $FAE6                       A:65 X:02 Y:DC P:67 SP:F9 PPU:195,162 CYC:22219
FA7A  60        RTS                             A:65 X:02 Y:DC P:67 SP:F9 PPU:195,168 CYC:22221
F15C  AD 47 06  LDA $0647 = 6F                  A:65 X:02 Y:DC P:67 SP:FB PPU:195,186 CYC:22227
F15F  C9 6F     CMP #$6F                        A:6F X:02 Y:DC P:65 SP:FB PPU:195,198 CYC:22231
F161  F0 02     BEQ $F165                       A:6F X:02 Y:DC P:67 SP:FB PPU:195,204 CYC:22233
F165  A9 A5     LDA #$A5                        A:6F X:02 Y:DC P:67 SP:FB PPU:195,213 CYC:22236
F167  8D 47 06  STA $0647 = 6F                  A:A5 X:02 Y:DC P:E5 SP:FB PPU:195,219 CYC:22238
F16A  A9 48     LDA #$48                        A:A5 X:02 Y:DC P:E5 SP:FB PPU:195,231 CYC:22242
F16C  85 45     STA $45 = 48                    A:48 X:02 Y:DC P:65 SP:FB PPU:195,237 CYC:22244
F16E  A9 05     LDA #$05                        A:48 X:02 Y:DC P:65 SP:FB PPU:195,246 CYC:22247
F170  85 46     STA $46 = 05                    A:05 X:02 Y:DC P:65 SP:FB PPU:195,252 CYC:22249
F172  A0 FF     LDY #$FF                        A:05 X:02 Y:DC P:65 SP:FB PPU:195,261 CYC:22252
F174  20 53 FB  JSR $FB53                       A:05 X:02 Y:FF P:E5 SP:FB PPU:195,267 CYC:22254
FB53  24 01     BIT $01 = FF                    A:05 X:02 Y:FF P:E5 SP:F9 PPU:195,285 CYC:22260
FB55  18        CLC                             A:05 X:02 Y:FF P:E5 SP:F9 PPU:195,294 CYC:22263
FB56  A9 B3     LDA #$B3                        A:05 X:02 Y:FF P:E4 SP:F9 PPU:195,300 CYC:22265
FB58  60        RTS                             A:B3 X:02 Y:FF P:E4 SP:F9 PPU:195,306 CYC:22267
F177  33 45    *RLA ($45),Y = 0548 @ 0647 = A5  A:B3 X:02 Y:FF P:E4 SP:FB PPU:195,324 CYC:22273
F179  EA        NOP                             A:02 X:02 Y:FF P:65 SP:FB PPU:196,  7 CYC:22281
F17A  EA        NOP                             A:02 X:02 Y:FF P:65 SP:FB PPU:196, 13 CYC:22283
F17B  08        PHP                             A:02 X:02 Y:FF P:65 SP:FB PPU:196, 19 CYC:22285
F17C  48        PHA                             A:02 X:02 Y:FF P:65 SP:FA PPU:196, 28 CYC:22288
F17D  A0 DD     LDY #$DD                        A:02 X:02 Y:FF P:65 SP:F9 PPU:196, 37 CYC:22291
F17F  68        PLA                             A:02 X:02 Y:DD P:E5 SP:F9 PPU:196, 43 CYC:22293
F180  28        PLP                             A:02 X:02 Y:DD P:65 SP:FA PPU:196, 55 CYC:22297
F181  20 59 FB  JSR $FB59                       A:02 X:02 Y:DD P:65 SP:FB PPU:196, 67 CYC:22301
FB59  50 1A     BVC $FB75                       A:02 X:02 Y:DD P:65 SP:F9 PPU:196, 85 CYC:22307
FB5B  90 18     BCC $FB75                       A:02 X:02 Y:DD P:65 SP:F9 PPU:196, 91 CYC:22309
FB5D  30 16     BMI $FB75                       A:02 X:02 Y:DD P:65 SP:F9 PPU:196, 97 CYC:22311
FB5F  C9 02     CMP #$02                        A:02 X:02 Y:DD P:65 SP:F9 PPU:196,103 CYC:22313
FB61  D0 12     BNE $FB75                       A:02 X:02 Y:DD P:67 SP:F9 PPU:196,109 CYC:22315
FB63  60        RTS                             A:02 X:02 Y:DD P:67 SP:F9 PPU:196,115 CYC:22317
F184  AD 47 06  LDA $0647 = 4A                  A:02 X:02 Y:DD P:67 SP:FB PPU:196,133 CYC:22323
F187  C9 4A     CMP #$4A                        A:4A X:02 Y:DD P:65 SP:FB PPU:196,145 CYC:22327
F189  F0 02     BEQ $F18D                       A:4A X:02 Y:DD P:67 SP:FB PPU:196,151 CYC:22329
F18D  A0 FF     LDY #$FF                        A:4A X:02 Y:DD P:67 SP:FB PPU:196,160 CYC:22332
F18F  A9 29     LDA #$29                        A:4A X:02 Y:FF P:E5 SP:FB PPU:196,166 CYC:22334
F191  8D 47 06  STA $0647 = 4A                  A:29 X:02 Y:FF P:65 SP:FB PPU:196,172 CYC:22336
F194  20 64 FB  JSR $FB64                       A:29 X:02 Y:FF P:65 SP:FB PPU:196,184 CYC:22340
FB64  B8        CLV                             A:29 X:02 Y:FF P:65 SP:F9 PPU:196,202 CYC:22346
FB65  18        CLC                             A:29 X:02 Y:FF P:25 SP:F9 PPU:196,208 CYC:22348
FB66  A9 42     LDA #$42                        A:29 X:02 Y:FF P:24 SP:F9 PPU:196,214 CYC:22350
FB68  60        RTS                             A:42 X:02 Y:FF P:24 SP:F9 PPU:196,220 CYC:22352
F197  33 45    *RLA ($45),Y = 0548 @ 0647 = 29  A:42 X:02 Y:FF P:24 SP:FB PPU:196,238 CYC:22358
F199  EA        NOP                             A:42 X:02 Y:FF P:24 SP:FB PPU:196,262 CYC:22366
F19A  EA        NOP                             A:42 X:02 Y:FF P:24 SP:FB PPU:196,268 CYC:22368
F19B  08        PHP                             A:42 X:02 Y:FF P:24 SP:FB PPU:196,274 CYC:22370
F19C  48        PHA                             A:42 X:02 Y:FF P:24 SP:FA PPU:196,283 CYC:22373
F19D  A0 DE     LDY #$DE                        A:42 X:02 Y:FF P:24 SP:F9 PPU:196,292 CYC:22376
F19F  68        PLA                             A:42 X:02 Y:DE P:A4 SP:F9 PPU:196,298 CYC:22378
F1A0  28        PLP                             A:42 X:02 Y:DE P:24 SP:FA PPU:196,310 CYC:22382
F1A1  20 69 FB  JSR $FB69                       A:42 X:02 Y:DE P:24 SP:FB PPU:196,322 CYC:22386
FB69  70 0A     BVS $FB75                       A:42 X:02 Y:DE P:24 SP:F9 PPU:196,340 CYC:22392
FB6B  F0 08     BEQ $FB75                       A:42 X:02 Y:DE P:24 SP:F9 PPU:197,  5 CYC:22394
FB6D  30 06     BMI $FB75                       A:42 X:02 Y:DE P:24 SP:F9 PPU:197, 11 CYC:22396
FB6F  B0 04     BCS $FB75                       A:42 X:02 Y:DE P:24 SP:F9 PPU:197, 17 CYC:22398
FB71  C9 42     CMP #$42                        A:42 X:02 Y:DE P:24 SP:F9 PPU:197, 23 CYC:22400
FB73  F0 02     BEQ $FB77                       A:42 X:02 Y:DE P:27 SP:F9 PPU:197, 29 CYC:22402
FB77  60        RTS                             A:42 X:02 Y:DE P:27 SP:F9 PPU:197, 38 CYC:22405
F1A4  AD 47 06  LDA $0647 = 52                  A:42 X:02 Y:DE P:27 SP:FB PPU:197, 56 CYC:22411
F1A7  C9 52     CMP #$52                        A:52 X:02 Y:DE P:25 SP:FB PPU:197, 68 CYC:22415
F1A9  F0 02     BEQ $F1AD                       A:52 X:02 Y:DE P:27 SP:FB PPU:197, 74 CYC:22417
F1AD  A0 FF     LDY #$FF                        A:52 X:02 Y:DE P:27 SP:FB PPU:197, 83 CYC:22420
F1AF  A9 37     LDA #$37                        A:52 X:02 Y:FF P:A5 SP:FB PPU:197, 89 CYC:22422
F1B1  8D 47 06  STA $0647 = 52                  A:37 X:02 Y:FF P:25 SP:FB PPU:197, 95 CYC:22424
F1B4  20 68 FA  JSR $FA68                       A:37 X:02 Y:FF P:25 SP:FB PPU:197,107 CYC:22428
FA68  24 01     BIT $01 = FF                    A:37 X:02 Y:FF P:25 SP:F9 PPU:197,125 CYC:22434
FA6A  38        SEC                             A:37 X:02 Y:FF P:E5 SP:F9 PPU:197,134 CYC:22437
FA6B  A9 75     LDA #$75                        A:37 X:02 Y:FF P:E5 SP:F9 PPU:197,140 CYC:22439
FA6D  60        RTS                             A:75 X:02 Y:FF P:65 SP:F9 PPU:197,146 CYC:22441
F1B7  33 45    *RLA ($45),Y = 0548 @ 0647 = 37  A:75 X:02 Y:FF P:65 SP:FB PPU:197,164 CYC:22447
F1B9  EA        NOP                             A:65 X:02 Y:FF P:64 SP:FB PPU:197,188 CYC:22455
F1BA  EA        NOP                             A:65 X:02 Y:FF P:64 SP:FB PPU:197,194 CYC:22457
F1BB  08        PHP                             A:65 X:02 Y:FF P:64 SP:FB PPU:197,200 CYC:22459
F1BC  48        PHA                             A:65 X:02 Y:FF P:64 SP:FA PPU:197,209 CYC:22462
F1BD  A0 DF     LDY #$DF                        A:65 X:02 Y:FF P:64 SP:F9 PPU:197,218 CYC:22465
F1BF  68        PLA                             A:65 X:02 Y:DF P:E4 SP:F9 PPU:197,224 CYC:22467
F1C0  28        PLP                             A:65 X:02 Y:DF P:64 SP:FA PPU:197,236 CYC:22471
F1C1  20 6E FA  JSR $FA6E                       A:65 X:02 Y:DF P:64 SP:FB PPU:197,248 CYC:22475
FA6E  50 76     BVC $FAE6                       A:65 X:02 Y:DF P:64 SP:F9 PPU:197,266 CYC:22481
FA70  F0 74     BEQ $FAE6                       A:65 X:02 Y:DF P:64 SP:F9 PPU:197,272 CYC:22483
FA72  30 72     BMI $FAE6                       A:65 X:02 Y:DF P:64 SP:F9 PPU:197,278 CYC:22485
FA74  B0 70     BCS $FAE6                       A:65 X:02 Y:DF P:64 SP:F9 PPU:197,284 CYC:22487
FA76  C9 65     CMP #$65                        A:65 X:02 Y:DF P:64 SP:F9 PPU:197,290 CYC:22489
FA78  D0 6C     BNE $FAE6                       A:65 X:02 Y:DF P:67 SP:F9 PPU:197,296 CYC:22491
FA7A  60        RTS                             A:65 X:02 Y:DF P:67 SP:F9 PPU:197,302 CYC:22493
F1C4  AD 47 06  LDA $0647 = 6F                  A:65 X:02 Y:DF P:67 SP:FB PPU:197,320 CYC:22499
F1C7  C9 6F     CMP #$6F                        A:6F X:02 Y:DF P:65 SP:FB PPU:197,332 CYC:22503
F1C9  F0 02     BEQ $F1CD                       A:6F X:02 Y:DF P:67 SP:FB PPU:197,338 CYC:22505
F1CD  A0 E0     LDY #$E0                        A:6F X:02 Y:DF P:67 SP:FB PPU:198,  6 CYC:22508
F1CF  A2 FF     LDX #$FF                        A:6F X:02 Y:E0 P:E5 SP:FB PPU:198, 12 CYC:22510
F1D1  A9 A5     LDA #$A5                        A:6F X:FF Y:E0 P:E5 SP:FB PPU:198, 18 CYC:22512
F1D3  85 47     STA $47 = 6F                    A:A5 X:FF Y:E0 P:E5 SP:FB PPU:198, 24 CYC:22514
F1D5  20 53 FB  JSR $FB53                       A:A5 X:FF Y:E0 P:E5 SP:FB PPU:198, 33 CYC:22517
FB53  24 01     BIT $01 = FF                    A:A5 X:FF Y:E0 P:E5 SP:F9 PPU:198, 51 CYC:22523
FB55  18        CLC                             A:A5 X:FF Y:E0 P:E5 SP:F9 PPU:198, 60 CYC:22526
FB56  A9 B3     LDA #$B3                        A:A5 X:FF Y:E0 P:E4 SP:F9 PPU:198, 66 CYC:22528
FB58  60        RTS                             A:B3 X:FF Y:E0 P:E4 SP:F9 PPU:198, 72 CYC:22530
F1D8  37 48    *RLA $48,X @ 47 = A5             A:B3 X:FF Y:E0 P:E4 SP:FB PPU:198, 90 CYC:22536
F1DA  EA        NOP                             A:02 X:FF Y:E0 P:65 SP:FB PPU:198,108 CYC:22542
F1DB  EA        NOP                             A:02 X:FF Y:E0 P:65 SP:FB PPU:198,114 CYC:22544
F1DC  EA        NOP                             A:02 X:FF Y:E0 P:65 SP:FB PPU:198,120 CYC:22546
F1DD  EA        NOP                             A:02 X:FF Y:E0 P:65 SP:FB PPU:198,126 CYC:22548
F1DE  20 59 FB  JSR $FB59                       A:02 X:FF Y:E0 P:65 SP:FB PPU:198,132 CYC:22550
FB59  50 1A     BVC $FB75                       A:02 X:FF Y:E0 P:65 SP:F9 PPU:198,150 CYC:22556
FB5B  90 18     BCC $FB75                       A:02 X:FF Y:E0 P:65 SP:F9 PPU:198,156 CYC:22558
FB5D  30 16     BMI $FB75                       A:02 X:FF Y:E0 P:65 SP:F9 PPU:198,162 CYC:22560
FB5F  C9 02     CMP #$02                        A:02 X:FF Y:E0 P:65 SP:F9 PPU:198,168 CYC:22562
FB61  D0 12     BNE $FB75                       A:02 X:FF Y:E0 P:67 SP:F9 PPU:198,174 CYC:22564
FB63  60        RTS                             A:02 X:FF Y:E0 P:67 SP:F9 PPU:198,180 CYC:22566
F1E1  A5 47     LDA $47 = 4A                    A:02 X:FF Y:E0 P:67 SP:FB PPU:198,198 CYC:22572
F1E3  C9 4A     CMP #$4A                        A:4A X:FF Y:E0 P:65 SP:FB PPU:198,207 CYC:22575
F1E5  F0 02     BEQ $F1E9                       A:4A X:FF Y:E0 P:67 SP:FB PPU:198,213 CYC:22577
F1E9  C8        INY                             A:4A X:FF Y:E0 P:67 SP:FB PPU:198,222 CYC:22580
F1EA  A9 29     LDA #$29                        A:4A X:FF Y:E1 P:E5 SP:FB PPU:198,228 CYC:22582
F1EC  85 47     STA $47 = 4A                    A:29 X:FF Y:E1 P:65 SP:FB PPU:198,234 CYC:22584
F1EE  20 64 FB  JSR $FB64                       A:29 X:FF Y:E1 P:65 SP:FB PPU:198,243 CYC:22587
FB64  B8        CLV                             A:29 X:FF Y:E1 P:65 SP:F9 PPU:198,261 CYC:22593
FB65  18        CLC                             A:29 X:FF Y:E1 P:25 SP:F9 PPU:198,267 CYC:22595
FB66  A9 42     LDA #$42                        A:29 X:FF Y:E1 P:24 SP:F9 PPU:198,273 CYC:22597
FB68  60        RTS                             A:42 X:FF Y:E1 P:24 SP:F9 PPU:198,279 CYC:22599
F1F1  37 48    *RLA $48,X @ 47 = 29             A:42 X:FF Y:E1 P:24 SP:FB PPU:198,297 CYC:22605
F1F3  EA        NOP                             A:42 X:FF Y:E1 P:24 SP:FB PPU:198,315 CYC:22611
F1F4  EA        NOP                             A:42 X:FF Y:E1 P:24 SP:FB PPU:198,321 CYC:22613
F1F5  EA        NOP                             A:42 X:FF Y:E1 P:24 SP:FB PPU:198,327 CYC:22615
F1F6  EA        NOP                             A:42 X:FF Y:E1 P:24 SP:FB PPU:198,333 CYC:22617
F1F7  20 69 FB  JSR $FB69                       A:42 X:FF Y:E1 P:24 SP:FB PPU:198,339 CYC:22619
FB69  70 0A     BVS $FB75                       A:42 X:FF Y:E1 P:24 SP:F9 PPU:199, 16 CYC:22625
FB6B  F0 08     BEQ $FB75                       A:42 X:FF Y:E1 P:24 SP:F9 PPU:199, 22 CYC:22627
FB6D  30 06     BMI $FB75                       A:42 X:FF Y:E1 P:24 SP:F9 PPU:199, 28 CYC:22629
FB6F  B0 04     BCS $FB75                       A:42 X:FF Y:E1 P:24 SP:F9 PPU:199, 34 CYC:22631
FB71  C9 42     CMP #$42                        A:42 X:FF Y:E1 P:24 SP:F9 PPU:199, 40 CYC:22633
FB73  F0 02     BEQ $FB77                       A:42 X:FF Y:E1 P:27 SP:F9 PPU:199, 46 CYC:22635
FB77  60        RTS                             A:42 X:FF Y:E1 P:27 SP:F9 PPU:199, 55 CYC:22638
F1FA  A5 47     LDA $47 = 52                    A:42 X:FF Y:E1 P:27 SP:FB PPU:199, 73 CYC:22644
F1FC  C9 52     CMP #$52                        A:52 X:FF Y:E1 P:25 SP:FB PPU:199, 82 CYC:22647
F1FE  F0 02     BEQ $F202                       A:52 X:FF Y:E1 P:27 SP:FB PPU:199, 88 CYC:22649
F202  C8        INY                             A:52 X:FF Y:E1 P:27 SP:FB PPU:199, 97 CYC:22652
F203  A9 37     LDA #$37                        A:52 X:FF Y:E2 P:A5 SP:FB PPU:199,103 CYC:22654
F205  85 47     STA $47 = 52                    A:37 X:FF Y:E2 P:25 SP:FB PPU:199,109 CYC:22656
F207  20 68 FA  JSR $FA68                       A:37 X:FF Y:E2 P:25 SP:FB PPU:199,118 CYC:22659
FA68  24 01     BIT $01 = FF                    A:37 X:FF Y:E2 P:25 SP:F9 PPU:199,136 CYC:22665
FA6A  38        SEC                             A:37 X:FF Y:E2 P:E5 SP:F9 PPU:199,145 CYC:22668
FA6B  A9 75     LDA #$75                        A:37 X:FF Y:E2 P:E5 SP:F9 PPU:199,151 CYC:22670
FA6D  60        RTS                             A:75 X:FF Y:E2 P:65 SP:F9 PPU:199,157 CYC:22672
F20A  37 48    *RLA $48,X @ 47 = 37             A:75 X:FF Y:E2 P:65 SP:FB PPU:199,175 CYC:22678
F20C  EA        NOP                             A:65 X:FF Y:E2 P:64 SP:FB PPU:199,193 CYC:22684
F20D  EA        NOP                             A:65 X:FF Y:E2 P:64 SP:FB PPU:199,199 CYC:22686
F20E  EA        NOP                             A:65 X:FF Y:E2 P:64 SP:FB PPU:199,205 CYC:22688
F20F  EA        NOP                             A:65 X:FF Y:E2 P:64 SP:FB PPU:199,211 CYC:22690
F210  20 6E FA  JSR $FA6E                       A:65 X:FF Y:E2 P:64 SP:FB PPU:199,217 CYC:22692
FA6E  50 76     BVC $FAE6                       A:65 X:FF Y:E2 P:64 SP:F9 PPU:199,235 CYC:22698
FA70  F0 74     BEQ $FAE6                       A:65 X:FF Y:E2 P:64 SP:F9 PPU:199,241 CYC:22700
FA72  30 72     BMI $FAE6                       A:65 X:FF Y:E2 P:64 SP:F9 PPU:199,247 CYC:22702
FA74  B0 70     BCS $FAE6                       A:65 X:FF Y:E2 P:64 SP:F9 PPU:199,253 CYC:22704
FA76  C9 65     CMP #$65                        A:65 X:FF Y:E2 P:64 SP:F9 PPU:199,259 CYC:22706
FA78  D0 6C     BNE $FAE6                       A:65 X:FF Y:E2 P:67 SP:F9 PPU:199,265 CYC:22708
FA7A  60        RTS                             A:65 X:FF Y:E2 P:67 SP:F9 PPU:199,271 CYC:22710
F213  A5 47     LDA $47 = 6F                    A:65 X:FF Y:E2 P:67 SP:FB PPU:199,289 CYC:22716
F215  C9 6F     CMP #$6F                        A:6F X:FF Y:E2 P:65 SP:FB PPU:199,298 CYC:22719
F217  F0 02     BEQ $F21B                       A:6F X:FF Y:E2 P:67 SP:FB PPU:199,304 CYC:22721
F21B  A9 A5     LDA #$A5                        A:6F X:FF Y:E2 P:67 SP:FB PPU:199,313 CYC:22724
F21D  8D 47 06  STA $0647 = 6F                  A:A5 X:FF Y:E2 P:E5 SP:FB PPU:199,319 CYC:22726
F220  A0 FF     LDY #$FF                        A:A5 X:FF Y:E2 P:E5 SP:FB PPU:199,331 CYC:22730
F222  20 53 FB  JSR $FB53                       A:A5 X:FF Y:FF P:E5 SP:FB PPU:199,337 CYC:22732
FB53  24 01     BIT $01 = FF                    A:A5 X:FF Y:FF P:E5 SP:F9 PPU:200, 14 CYC:22738
FB55  18        CLC                             A:A5 X:FF Y:FF P:E5 SP:F9 PPU:200, 23 CYC:22741
FB56  A9 B3     LDA #$B3                        A:A5 X:FF Y:FF P:E4 SP:F9 PPU:200, 29 CYC:22743
FB58  60        RTS                             A:B3 X:FF Y:FF P:E4 SP:F9 PPU:200, 35 CYC:22745
F225  3B 48 05 *RLA $0548,Y @ 0647 = A5         A:B3 X:FF Y:FF P:E4 SP:FB PPU:200, 53 CYC:22751
F228  EA        NOP                             A:02 X:FF Y:FF P:65 SP:FB PPU:200, 74 CYC:22758
F229  EA        NOP                             A:02 X:FF Y:FF P:65 SP:FB PPU:200, 80 CYC:22760
F22A  08        PHP                             A:02 X:FF Y:FF P:65 SP:FB PPU:200, 86 CYC:22762
F22B  48        PHA                             A:02 X:FF Y:FF P:65 SP:FA PPU:200, 95 CYC:22765
F22C  A0 E3     LDY #$E3                        A:02 X:FF Y:FF P:65 SP:F9 PPU:200,104 CYC:22768
F22E  68        PLA                             A:02 X:FF Y:E3 P:E5 SP:F9 PPU:200,110 CYC:22770
F22F  28        PLP                             A:02 X:FF Y:E3 P:65 SP:FA PPU:200,122 CYC:22774
F230  20 59 FB  JSR $FB59                       A:02 X:FF Y:E3 P:65 SP:FB PPU:200,134 CYC:22778
FB59  50 1A     BVC $FB75                       A:02 X:FF Y:E3 P:65 SP:F9 PPU:200,152 CYC:22784
FB5B  90 18     BCC $FB75                       A:02 X:FF Y:E3 P:65 SP:F9 PPU:200,158 CYC:22786
FB5D  30 16     BMI $FB75                       A:02 X:FF Y:E3 P:65 SP:F9 PPU:200,164 CYC:22788
FB5F  C9 02     CMP #$02                        A:02 X:FF Y:E3 P:65 SP:F9 PPU:200,170 CYC:22790
FB61  D0 12     BNE $FB75                       A:02 X:FF Y:E3 P:67 SP:F9 PPU:200,176 CYC:22792
FB63  60        RTS                             A:02 X:FF Y:E3 P:67 SP:F9 PPU:200,182 CYC:22794
F233  AD 47 06  LDA $0647 = 4A                  A:02 X:FF Y:E3 P:67 SP:FB PPU:200,200 CYC:22800
F236  C9 4A     CMP #$4A                        A:4A X:FF Y:E3 P:65 SP:FB PPU:200,212 CYC:22804
F238  F0 02     BEQ $F23C                       A:4A X:FF Y:E3 P:67 SP:FB PPU:200,218 CYC:22806
F23C  A0 FF     LDY #$FF                        A:4A X:FF Y:E3 P:67 SP:FB PPU:200,227 CYC:22809
F23E  A9 29     LDA #$29                        A:4A X:FF Y:FF P:E5 SP:FB PPU:200,233 CYC:22811
F240  8D 47 06  STA $0647 = 4A                  A:29 X:FF Y:FF P:65 SP:FB PPU:200,239 CYC:22813
F243  20 64 FB  JSR $FB64                       A:29 X:FF Y:FF P:65 SP:FB PPU:200,251 CYC:22817
FB64  B8        CLV                             A:29 X:FF Y:FF P:65 SP:F9 PPU:200,269 CYC:22823
FB65  18        CLC                             A:29 X:FF Y:FF P:25 SP:F9 PPU:200,275 CYC:22825
FB66  A9 42     LDA #$42                        A:29 X:FF Y:FF P:24 SP:F9 PPU:200,281 CYC:22827
FB68  60        RTS                             A:42 X:FF Y:FF P:24 SP:F9 PPU:200,287 CYC:22829
F246  3B 48 05 *RLA $0548,Y @ 0647 = 29         A:42 X:FF Y:FF P:24 SP:FB PPU:200,305 CYC:22835
F249  EA        NOP                             A:42 X:FF Y:FF P:24 SP:FB PPU:200,326 CYC:22842
F24A  EA        NOP                             A:42 X:FF Y:FF P:24 SP:FB PPU:200,332 CYC:22844
F24B  08        PHP                             A:42 X:FF Y:FF P:24 SP:FB PPU:200,338 CYC:22846
F24C  48        PHA                             A:42 X:FF Y:FF P:24 SP:FA PPU:201,  6 CYC:22849
F24D  A0 E4     LDY #$E4                        A:42 X:FF Y:FF P:24 SP:F9 PPU:201, 15 CYC:22852
F24F  68        PLA                             A:42 X:FF Y:E4 P:A4 SP:F9 PPU:201, 21 CYC:22854
F250  28        PLP                             A:42 X:FF Y:E4 P:24 SP:FA PPU:201, 33 CYC:22858
F251  20 69 FB  JSR $FB69                       A:42 X:FF Y:E4 P:24 SP:FB PPU:201, 45 CYC:22862
FB69  70 0A     BVS $FB75                       A:42 X:FF Y:E4 P:24 SP:F9 PPU:201, 63 CYC:22868
FB6B  F0 08     BEQ $FB75                       A:42 X:FF Y:E4 P:24 SP:F9 PPU:201, 69 CYC:22870
FB6D  30 06     BMI $FB75                       A:42 X:FF Y:E4 P:24 SP:F9 PPU:201, 75 CYC:22872
FB6F  B0 04     BCS $FB75                       A:42 X:FF Y:E4 P:24 SP:F9 PPU:201, 81 CYC:22874
FB71  C9 42     CMP #$42                        A:42 X:FF Y:E4 P:24 SP:F9 PPU:201, 87 CYC:22876
FB73  F0 02     BEQ $FB77                       A:42 X:FF Y:E4 P:27 SP:F9 PPU:201, 93 CYC:22878
FB77  60        RTS                             A:42 X:FF Y:E4 P:27 SP:F9 PPU:201,102 CYC:22881
F254  AD 47 06  LDA $0647 = 52                  A:42 X:FF Y:E4 P:27 SP:FB PPU:201,120 CYC:22887
F257  C9 52     CMP #$52                        A:52 X:FF Y:E4 P:25 SP:FB PPU:201,132 CYC:22891
F259  F0 02     BEQ $F25D                       A:52 X:FF Y:E4 P:27 SP:FB PPU:201,138 CYC:22893
F25D  A0 FF     LDY #$FF                        A:52 X:FF Y:E4 P:27 SP:FB PPU:201,147 CYC:22896
F25F  A9 37     LDA #$37                        A:52 X:FF Y:FF P:A5 SP:FB PPU:201,153 CYC:22898
F261  8D 47 06  STA $0647 = 52                  A:37 X:FF Y:FF P:25 SP:FB PPU:201,159 CYC:22900
F264  20 68 FA  JSR $FA68                       A:37 X:FF Y:FF P:25 SP:FB PPU:201,171 CYC:22904
FA68  24 01     BIT $01 = FF                    A:37 X:FF Y:FF P:25 SP:F9 PPU:201,189 CYC:22910
FA6A  38        SEC                             A:37 X:FF Y:FF P:E5 SP:F9 PPU:201,198 CYC:22913
FA6B  A9 75     LDA #$75                        A:37 X:FF Y:FF P:E5 SP:F9 PPU:201,204 CYC:22915
FA6D  60        RTS                             A:75 X:FF Y:FF P:65 SP:F9 PPU:201,210 CYC:22917
F267  3B 48 05 *RLA $0548,Y @ 0647 = 37         A:75 X:FF Y:FF P:65 SP:FB PPU:201,228 CYC:22923
F26A  EA        NOP                             A:65 X:FF Y:FF P:64 SP:FB PPU:201,249 CYC:22930
F26B  EA        NOP                             A:65 X:FF Y:FF P:64 SP:FB PPU:201,255 CYC:22932
F26C  08        PHP                             A:65 X:FF Y:FF P:64 SP:FB PPU:201,261 CYC:22934
F26D  48        PHA                             A:65 X:FF Y:FF P:64 SP:FA PPU:201,270 CYC:22937
F26E  A0 E5     LDY #$E5                        A:65 X:FF Y:FF P:64 SP:F9 PPU:201,279 CYC:22940
F270  68        PLA                             A:65 X:FF Y:E5 P:E4 SP:F9 PPU:201,285 CYC:22942
F271  28        PLP                             A:65 X:FF Y:E5 P:64 SP:FA PPU:201,297 CYC:22946
F272  20 6E FA  JSR $FA6E                       A:65 X:FF Y:E5 P:64 SP:FB PPU:201,309 CYC:22950
FA6E  50 76     BVC $FAE6                       A:65 X:FF Y:E5 P:64 SP:F9 PPU:201,327 CYC:22956
FA70  F0 74     BEQ $FAE6                       A:65 X:FF Y:E5 P:64 SP:F9 PPU:201,333 CYC:22958
FA72  30 72     BMI $FAE6                       A:65 X:FF Y:E5 P:64 SP:F9 PPU:201,339 CYC:22960
FA74  B0 70     BCS $FAE6                       A:65 X:FF Y:E5 P:64 SP:F9 PPU:202,  4 CYC:22962
FA76  C9 65     CMP #$65                        A:65 X:FF Y:E5 P:64 SP:F9 PPU:202, 10 CYC:22964
FA78  D0 6C     BNE $FAE6                       A:65 X:FF Y:E5 P:67 SP:F9 PPU:202, 16 CYC:22966
FA7A  60        RTS                             A:65 X:FF Y:E5 P:67 SP:F9 PPU:202, 22 CYC:22968
F275  AD 47 06  LDA $0647 = 6F                  A:65 X:FF Y:E5 P:67 SP:FB PPU:202, 40 CYC:22974
F278  C9 6F     CMP #$6F                        A:6F X:FF Y:E5 P:65 SP:FB PPU:202, 52 CYC:22978
F27A  F0 02     BEQ $F27E                       A:6F X:FF Y:E5 P:67 SP:FB PPU:202, 58 CYC:22980
F27E  A0 E6     LDY #$E6                        A:6F X:FF Y:E5 P:67 SP:FB PPU:202, 67 CYC:22983
F280  A2 FF     LDX #$FF                        A:6F X:FF Y:E6 P:E5 SP:FB PPU:202, 73 CYC:22985
F282  A9 A5     LDA #$A5                        A:6F X:FF Y:E6 P:E5 SP:FB PPU:202, 79 CYC:22987
F284  8D 47 06  STA $0647 = 6F                  A:A5 X:FF Y:E6 P:E5 SP:FB PPU:202, 85 CYC:22989
F287  20 53 FB  JSR $FB53                       A:A5 X:FF Y:E6 P:E5 SP:FB PPU:202, 97 CYC:22993
FB53  24 01     BIT $01 = FF                    A:A5 X:FF Y:E6 P:E5 SP:F9 PPU:202,115 CYC:22999
FB55  18        CLC                             A:A5 X:FF Y:E6 P:E5 SP:F9 PPU:202,124 CYC:23002
FB56  A9 B3     LDA #$B3                        A:A5 X:FF Y:E6 P:E4 SP:F9 PPU:202,130 CYC:23004
FB58  60        RTS                             A:B3 X:FF Y:E6 P:E4 SP:F9 PPU:202,136 CYC:23006
F28A  3F 48 05 *RLA $0548,X @ 0647 = A5         A:B3 X:FF Y:E6 P:E4 SP:FB PPU:202,154 CYC:23012
F28D  EA        NOP                             A:02 X:FF Y:E6 P:65 SP:FB PPU:202,175 CYC:23019
F28E  EA        NOP                             A:02 X:FF Y:E6 P:65 SP:FB PPU:202,181 CYC:23021
F28F  EA        NOP                             A:02 X:FF Y:E6 P:65 SP:FB PPU:202,187 CYC:23023
F290  EA        NOP                             A:02 X:FF Y:E6 P:65 SP:FB PPU:202,193 CYC:23025
F291  20 59 FB  JSR $FB59                       A:02 X:FF Y:E6 P:65 SP:FB PPU:202,199 CYC:23027
FB59  50 1A     BVC $FB75                       A:02 X:FF Y:E6 P:65 SP:F9 PPU:202,217 CYC:23033
FB5B  90 18     BCC $FB75                       A:02 X:FF Y:E6 P:65 SP:F9 PPU:202,223 CYC:23035
FB5D  30 16     BMI $FB75                       A:02 X:FF Y:E6 P:65 SP:F9 PPU:202,229 CYC:23037
FB5F  C9 02     CMP #$02                        A:02 X:FF Y:E6 P:65 SP:F9 PPU:202,235 CYC:23039
FB61  D0 12     BNE $FB75                       A:02 X:FF Y:E6 P:67 SP:F9 PPU:202,241 CYC:23041
FB63  60        RTS                             A:02 X:FF Y:E6 P:67 SP:F9 PPU:202,247 CYC:23043
F294  AD 47 06  LDA $0647 = 4A                  A:02 X:FF Y:E6 P:67 SP:FB PPU:202,265 CYC:23049
F297  C9 4A     CMP #$4A                        A:4A X:FF Y:E6 P:65 SP:FB PPU:202,277 CYC:23053
F299  F0 02     BEQ $F29D                       A:4A X:FF Y:E6 P:67 SP:FB PPU:202,283 CYC:23055
F29D  C8        INY                             A:4A X:FF Y:E6 P:67 SP:FB PPU:202,292 CYC:23058
F29E  A9 29     LDA #$29                        A:4A X:FF Y:E7 P:E5 SP:FB PPU:202,298 CYC:23060
F2A0  8D 47 06  STA $0647 = 4A                  A:29 X:FF Y:E7 P:65 SP:FB PPU:202,304 CYC:23062
F2A3  20 64 FB  JSR $FB64                       A:29 X:FF Y:E7 P:65 SP:FB PPU:202,316 CYC:23066
FB64  B8        CLV                             A:29 X:FF Y:E7 P:65 SP:F9 PPU:202,334 CYC:23072
FB65  18        CLC                             A:29 X:FF Y:E7 P:25 SP:F9 PPU:202,340 CYC:23074
FB66  A9 42     LDA #$42                        A:29 X:FF Y:E7 P:24 SP:F9 PPU:203,  5 CYC:23076
FB68  60        RTS                             A:42 X:FF Y:E7 P:24 SP:F9 PPU:203, 11 CYC:23078
F2A6  3F 48 05 *RLA $0548,X @ 0647 = 29         A:42 X:FF Y:E7 P:24 SP:FB PPU:203, 29 CYC:23084
F2A9  EA        NOP                             A:42 X:FF Y:E7 P:24 SP:FB PPU:203, 50 CYC:23091
F2AA  EA        NOP                             A:42 X:FF Y:E7 P:24 SP:FB PPU:203, 56 CYC:23093
F2AB  EA        NOP                             A:42 X:FF Y:E7 P:24 SP:FB PPU:203, 62 CYC:23095
F2AC  EA        NOP                             A:42 X:FF Y:E7 P:24 SP:FB PPU:203, 68 CYC:23097
F2AD  20 69 FB  JSR $FB69                       A:42 X:FF Y:E7 P:24 SP:FB PPU:203, 74 CYC:23099
FB69  70 0A     BVS $FB75                       A:42 X:FF Y:E7 P:24 SP:F9 PPU:203, 92 CYC:23105
FB6B  F0 08     BEQ $FB75                       A:42 X:FF Y:E7 P:24 SP:F9 PPU:203, 98 CYC:23107
FB6D  30 06     BMI $FB75                       A:42 X:FF Y:E7 P:24 SP:F9 PPU:203,104 CYC:23109
FB6F  B0 04     BCS $FB75                       A:42 X:FF Y:E7 P:24 SP:F9 PPU:203,110 CYC:23111
FB71  C9 42     CMP #$42                        A:42 X:FF Y:E7 P:24 SP:F9 PPU:203,116 CYC:23113
FB73  F0 02     BEQ $FB77                       A:42 X:FF Y:E7 P:27 SP:F9 PPU:203,122 CYC:23115
FB77  60        RTS                             A:42 X:FF Y:E7 P:27 SP:F9 PPU:203,131 CYC:23118
F2B0  AD 47 06  LDA $0647 = 52                  A:42 X:FF Y:E7 P:27 SP:FB PPU:203,149 CYC:23124
F2B3  C9 52     CMP #$52                        A:52 X:FF Y:E7 P:25 SP:FB PPU:203,161 CYC:23128
F2B5  F0 02     BEQ $F2B9                       A:52 X:FF Y:E7 P:27 SP:FB PPU:203,167 CYC:23130
F2B9  C8        INY                             A:52 X:FF Y:E7 P:27 SP:FB PPU:203,176 CYC:23133
F2BA  A9 37     LDA #$37                        A:52 X:FF Y:E8 P:A5 SP:FB PPU:203,182 CYC:23135
F2BC  8D 47 06  STA $0647 = 52                  A:37 X:FF Y:E8 P:25 SP:FB PPU:203,188 CYC:23137
F2BF  20 68 FA  JSR $FA68                       A:37 X:FF Y:E8 P:25 SP:FB PPU:203,200 CYC:23141
FA68  24 01     BIT $01 = FF                    A:37 X:FF Y:E8 P:25 SP:F9 PPU:203,218 CYC:23147
FA6A  38        SEC                             A:37 X:FF Y:E8 P:E5 SP:F9 PPU:203,227 CYC:23150
FA6B  A9 75     LDA #$75                        A:37 X:FF Y:E8 P:E5 SP:F9 PPU:203,233 CYC:23152
FA6D  60        RTS                             A:75 X:FF Y:E8 P:65 SP:F9 PPU:203,239 CYC:23154
F2C2  3F 48 05 *RLA $0548,X @ 0647 = 37         A:75 X:FF Y:E8 P:65 SP:FB PPU:203,257 CYC:23160
F2C5  EA        NOP                             A:65 X:FF Y:E8 P:64 SP:FB PPU:203,278 CYC:23167
F2C6  EA        NOP                             A:65 X:FF Y:E8 P:64 SP:FB PPU:203,284 CYC:23169
F2C7  EA        NOP                             A:65 X:FF Y:E8 P:64 SP:FB PPU:203,290 CYC:23171
F2C8  EA        NOP                             A:65 X:FF Y:E8 P:64 SP:FB PPU:203,296 CYC:23173
F2C9  20 6E FA  JSR $FA6E                       A:65 X:FF Y:E8 P:64 SP:FB PPU:203,302 CYC:23175
FA6E  50 76     BVC $FAE6                       A:65 X:FF Y:E8 P:64 SP:F9 PPU:203,320 CYC:23181
FA70  F0 74     BEQ $FAE6                       A:65 X:FF Y:E8 P:64 SP:F9 PPU:203,326 CYC:23183
FA72  30 72     BMI $FAE6                       A:65 X:FF Y:E8 P:64 SP:F9 PPU:203,332 CYC:23185
FA74  B0 70     BCS $FAE6                       A:65 X:FF Y:E8 P:64 SP:F9 PPU:203,338 CYC:23187
FA76  C9 65     CMP #$65                        A:65 X:FF Y:E8 P:64 SP:F9 PPU:204,  3 CYC:23189
FA78  D0 6C     BNE $FAE6                       A:65 X:FF Y:E8 P:67 SP:F9 PPU:204,  9 CYC:23191
FA7A  60        RTS                             A:65 X:FF Y:E8 P:67 SP:F9 PPU:204, 15 CYC:23193
F2CC  AD 47 06  LDA $0647 = 6F                  A:65 X:FF Y:E8 P:67 SP:FB PPU:204, 33 CYC:23199
F2CF  C9 6F     CMP #$6F                        A:6F X:FF Y:E8 P:65 SP:FB PPU:204, 45 CYC:23203
F2D1  F0 02     BEQ $F2D5                       A:6F X:FF Y:E8 P:67 SP:FB PPU:204, 51 CYC:23205
F2D5  60        RTS                             A:6F X:FF Y:E8 P:67 SP:FB PPU:204, 60 CYC:23208
C647  20 D6 F2  JSR $F2D6                       A:6F X:FF Y:E8 P:67 SP:FD PPU:204, 78 CYC:23214
F2D6  A9 FF     LDA #$FF                        A:6F X:FF Y:E8 P:67 SP:FB PPU:204, 96 CYC:23220
F2D8  85 01     STA $01 = FF                    A:FF X:FF Y:E8 P:E5 SP:FB PPU:204,102 CYC:23222
F2DA  A0 E9     LDY #$E9                        A:FF X:FF Y:E8 P:E5 SP:FB PPU:204,111 CYC:23225
F2DC  A2 02     LDX #$02                        A:FF X:FF Y:E9 P:E5 SP:FB PPU:204,117 CYC:23227
F2DE  A9 47     LDA #$47                        A:FF X:02 Y:E9 P:65 SP:FB PPU:204,123 CYC:23229
F2E0  85 47     STA $47 = 6F                    A:47 X:02 Y:E9 P:65 SP:FB PPU:204,129 CYC:23231
F2E2  A9 06     LDA #$06                        A:47 X:02 Y:E9 P:65 SP:FB PPU:204,138 CYC:23234
F2E4  85 48     STA $48 = 06                    A:06 X:02 Y:E9 P:65 SP:FB PPU:204,144 CYC:23236
F2E6  A9 A5     LDA #$A5                        A:06 X:02 Y:E9 P:65 SP:FB PPU:204,153 CYC:23239
F2E8  8D 47 06  STA $0647 = 6F                  A:A5 X:02 Y:E9 P:E5 SP:FB PPU:204,159 CYC:23241
F2EB  20 1D FB  JSR $FB1D                       A:A5 X:02 Y:E9 P:E5 SP:FB PPU:204,171 CYC:23245
FB1D  24 01     BIT $01 = FF                    A:A5 X:02 Y:E9 P:E5 SP:F9 PPU:204,189 CYC:23251
FB1F  18        CLC                             A:A5 X:02 Y:E9 P:E5 SP:F9 PPU:204,198 CYC:23254
FB20  A9 B3     LDA #$B3                        A:A5 X:02 Y:E9 P:E4 SP:F9 PPU:204,204 CYC:23256
FB22  60        RTS                             A:B3 X:02 Y:E9 P:E4 SP:F9 PPU:204,210 CYC:23258
F2EE  43 45    *SRE ($45,X) @ 47 = 0647 = A5    A:B3 X:02 Y:E9 P:E4 SP:FB PPU:204,228 CYC:23264
F2F0  EA        NOP                             A:E1 X:02 Y:E9 P:E5 SP:FB PPU:204,252 CYC:23272
F2F1  EA        NOP                             A:E1 X:02 Y:E9 P:E5 SP:FB PPU:204,258 CYC:23274
F2F2  EA        NOP                             A:E1 X:02 Y:E9 P:E5 SP:FB PPU:204,264 CYC:23276
F2F3  EA        NOP                             A:E1 X:02 Y:E9 P:E5 SP:FB PPU:204,270 CYC:23278
F2F4  20 23 FB  JSR $FB23                       A:E1 X:02 Y:E9 P:E5 SP:FB PPU:204,276 CYC:23280
FB23  50 50     BVC $FB75                       A:E1 X:02 Y:E9 P:E5 SP:F9 PPU:204,294 CYC:23286
FB25  90 4E     BCC $FB75                       A:E1 X:02 Y:E9 P:E5 SP:F9 PPU:204,300 CYC:23288
FB27  10 4C     BPL $FB75                       A:E1 X:02 Y:E9 P:E5 SP:F9 PPU:204,306 CYC:23290
FB29  C9 E1     CMP #$E1                        A:E1 X:02 Y:E9 P:E5 SP:F9 PPU:204,312 CYC:23292
FB2B  D0 48     BNE $FB75                       A:E1 X:02 Y:E9 P:67 SP:F9 PPU:204,318 CYC:23294
FB2D  60        RTS                             A:E1 X:02 Y:E9 P:67 SP:F9 PPU:204,324 CYC:23296
F2F7  AD 47 06  LDA $0647 = 52                  A:E1 X:02 Y:E9 P:67 SP:FB PPU:205,  1 CYC:23302
F2FA  C9 52     CMP #$52                        A:52 X:02 Y:E9 P:65 SP:FB PPU:205, 13 CYC:23306
F2FC  F0 02     BEQ $F300                       A:52 X:02 Y:E9 P:67 SP:FB PPU:205, 19 CYC:23308
F300  C8        INY                             A:52 X:02 Y:E9 P:67 SP:FB PPU:205, 31 CYC:23312
F301  A9 29     LDA #$29                        A:52 X:02 Y:EA P:E5 SP:FB PPU:205, 37 CYC:23314
F303  8D 47 06  STA $0647 = 52                  A:29 X:02 Y:EA P:65 SP:FB PPU:205, 43 CYC:23316
F306  20 2E FB  JSR $FB2E                       A:29 X:02 Y:EA P:65 SP:FB PPU:205, 55 CYC:23320
FB2E  B8        CLV                             A:29 X:02 Y:EA P:65 SP:F9 PPU:205, 73 CYC:23326
FB2F  18        CLC                             A:29 X:02 Y:EA P:25 SP:F9 PPU:205, 79 CYC:23328
FB30  A9 42     LDA #$42                        A:29 X:02 Y:EA P:24 SP:F9 PPU:205, 85 CYC:23330
FB32  60        RTS                             A:42 X:02 Y:EA P:24 SP:F9 PPU:205, 91 CYC:23332
F309  43 45    *SRE ($45,X) @ 47 = 0647 = 29    A:42 X:02 Y:EA P:24 SP:FB PPU:205,109 CYC:23338
F30B  EA        NOP                             A:56 X:02 Y:EA P:25 SP:FB PPU:205,133 CYC:23346
F30C  EA        NOP                             A:56 X:02 Y:EA P:25 SP:FB PPU:205,139 CYC:23348
F30D  EA        NOP                             A:56 X:02 Y:EA P:25 SP:FB PPU:205,145 CYC:23350
F30E  EA        NOP                             A:56 X:02 Y:EA P:25 SP:FB PPU:205,151 CYC:23352
F30F  20 33 FB  JSR $FB33                       A:56 X:02 Y:EA P:25 SP:FB PPU:205,157 CYC:23354
FB33  70 40     BVS $FB75                       A:56 X:02 Y:EA P:25 SP:F9 PPU:205,175 CYC:23360
FB35  F0 3E     BEQ $FB75                       A:56 X:02 Y:EA P:25 SP:F9 PPU:205,181 CYC:23362
FB37  30 3C     BMI $FB75                       A:56 X:02 Y:EA P:25 SP:F9 PPU:205,187 CYC:23364
FB39  90 3A     BCC $FB75                       A:56 X:02 Y:EA P:25 SP:F9 PPU:205,193 CYC:23366
FB3B  C9 56     CMP #$56                        A:56 X:02 Y:EA P:25 SP:F9 PPU:205,199 CYC:23368
FB3D  D0 36     BNE $FB75                       A:56 X:02 Y:EA P:27 SP:F9 PPU:205,205 CYC:23370
FB3F  60        RTS                             A:56 X:02 Y:EA P:27 SP:F9 PPU:205,211 CYC:23372
F312  AD 47 06  LDA $0647 = 14                  A:56 X:02 Y:EA P:27 SP:FB PPU:205,229 CYC:23378
F315  C9 14     CMP #$14                        A:14 X:02 Y:EA P:25 SP:FB PPU:205,241 CYC:23382
F317  F0 02     BEQ $F31B                       A:14 X:02 Y:EA P:27 SP:FB PPU:205,247 CYC:23384
F31B  C8        INY                             A:14 X:02 Y:EA P:27 SP:FB PPU:205,256 CYC:23387
F31C  A9 37     LDA #$37                        A:14 X:02 Y:EB P:A5 SP:FB PPU:205,262 CYC:23389
F31E  8D 47 06  STA $0647 = 14                  A:37 X:02 Y:EB P:25 SP:FB PPU:205,268 CYC:23391
F321  20 40 FB  JSR $FB40                       A:37 X:02 Y:EB P:25 SP:FB PPU:205,280 CYC:23395
FB40  24 01     BIT $01 = FF                    A:37 X:02 Y:EB P:25 SP:F9 PPU:205,298 CYC:23401
FB42  38        SEC                             A:37 X:02 Y:EB P:E5 SP:F9 PPU:205,307 CYC:23404
FB43  A9 75     LDA #$75                        A:37 X:02 Y:EB P:E5 SP:F9 PPU:205,313 CYC:23406
FB45  60        RTS                             A:75 X:02 Y:EB P:65 SP:F9 PPU:205,319 CYC:23408
F324  43 45    *SRE ($45,X) @ 47 = 0647 = 37    A:75 X:02 Y:EB P:65 SP:FB PPU:205,337 CYC:23414
F326  EA        NOP                             A:6E X:02 Y:EB P:65 SP:FB PPU:206, 20 CYC:23422
F327  EA        NOP                             A:6E X:02 Y:EB P:65 SP:FB PPU:206, 26 CYC:23424
F328  EA        NOP                             A:6E X:02 Y:EB P:65 SP:FB PPU:206, 32 CYC:23426
F329  EA        NOP                             A:6E X:02 Y:EB P:65 SP:FB PPU:206, 38 CYC:23428
F32A  20 46 FB  JSR $FB46                       A:6E X:02 Y:EB P:65 SP:FB PPU:206, 44 CYC:23430
FB46  50 2D     BVC $FB75                       A:6E X:02 Y:EB P:65 SP:F9 PPU:206, 62 CYC:23436
FB48  F0 2B     BEQ $FB75                       A:6E X:02 Y:EB P:65 SP:F9 PPU:206, 68 CYC:23438
FB4A  30 29     BMI $FB75                       A:6E X:02 Y:EB P:65 SP:F9 PPU:206, 74 CYC:23440
FB4C  90 27     BCC $FB75                       A:6E X:02 Y:EB P:65 SP:F9 PPU:206, 80 CYC:23442
FB4E  C9 6E     CMP #$6E                        A:6E X:02 Y:EB P:65 SP:F9 PPU:206, 86 CYC:23444
FB50  D0 23     BNE $FB75                       A:6E X:02 Y:EB P:67 SP:F9 PPU:206, 92 CYC:23446
FB52  60        RTS                             A:6E X:02 Y:EB P:67 SP:F9 PPU:206, 98 CYC:23448
F32D  AD 47 06  LDA $0647 = 1B                  A:6E X:02 Y:EB P:67 SP:FB PPU:206,116 CYC:23454
F330  C9 1B     CMP #$1B                        A:1B X:02 Y:EB P:65 SP:FB PPU:206,128 CYC:23458
F332  F0 02     BEQ $F336                       A:1B X:02 Y:EB P:67 SP:FB PPU:206,134 CYC:23460
F336  C8        INY                             A:1B X:02 Y:EB P:67 SP:FB PPU:206,143 CYC:23463
F337  A9 A5     LDA #$A5                        A:1B X:02 Y:EC P:E5 SP:FB PPU:206,149 CYC:23465
F339  85 47     STA $47 = 47                    A:A5 X:02 Y:EC P:E5 SP:FB PPU:206,155 CYC:23467
F33B  20 1D FB  JSR $FB1D                       A:A5 X:02 Y:EC P:E5 SP:FB PPU:206,164 CYC:23470
FB1D  24 01     BIT $01 = FF                    A:A5 X:02 Y:EC P:E5 SP:F9 PPU:206,182 CYC:23476
FB1F  18        CLC                             A:A5 X:02 Y:EC P:E5 SP:F9 PPU:206,191 CYC:23479
FB20  A9 B3     LDA #$B3                        A:A5 X:02 Y:EC P:E4 SP:F9 PPU:206,197 CYC:23481
FB22  60        RTS                             A:B3 X:02 Y:EC P:E4 SP:F9 PPU:206,203 CYC:23483
F33E  47 47    *SRE $47 = A5                    A:B3 X:02 Y:EC P:E4 SP:FB PPU:206,221 CYC:23489
F340  EA        NOP                             A:E1 X:02 Y:EC P:E5 SP:FB PPU:206,236 CYC:23494
F341  EA        NOP                             A:E1 X:02 Y:EC P:E5 SP:FB PPU:206,242 CYC:23496
F342  EA        NOP                             A:E1 X:02 Y:EC P:E5 SP:FB PPU:206,248 CYC:23498
F343  EA        NOP                             A:E1 X:02 Y:EC P:E5 SP:FB PPU:206,254 CYC:23500
F344  20 23 FB  JSR $FB23                       A:E1 X:02 Y:EC P:E5 SP:FB PPU:206,260 CYC:23502
FB23  50 50     BVC $FB75                       A:E1 X:02 Y:EC P:E5 SP:F9 PPU:206,278 CYC:23508
FB25  90 4E     BCC $FB75                       A:E1 X:02 Y:EC P:E5 SP:F9 PPU:206,284 CYC:23510
FB27  10 4C     BPL $FB75                       A:E1 X:02 Y:EC P:E5 SP:F9 PPU:206,290 CYC:23512
FB29  C9 E1     CMP #$E1                        A:E1 X:02 Y:EC P:E5 SP:F9 PPU:206,296 CYC:23514
FB2B  D0 48     BNE $FB75                       A:E1 X:02 Y:EC P:67 SP:F9 PPU:206,302 CYC:23516
FB2D  60        RTS                             A:E1 X:02 Y:EC P:67 SP:F9 PPU:206,308 CYC:23518
F347  A5 47     LDA $47 = 52                    A:E1 X:02 Y:EC P:67 SP:FB PPU:206,326 CYC:23524
F349  C9 52     CMP #$52                        A:52 X:02 Y:EC P:65 SP:FB PPU:206,335 CYC:23527
F34B  F0 02     BEQ $F34F                       A:52 X:02 Y:EC P:67 SP:FB PPU:207,  0 CYC:23529
F34F  C8        INY                             A:52 X:02 Y:EC P:67 SP:FB PPU:207,  9 CYC:23532
F350  A9 29     LDA #$29                        A:52 X:02 Y:ED P:E5 SP:FB PPU:207, 15 CYC:23534
F352  85 47     STA $47 = 52                    A:29 X:02 Y:ED P:65 SP:FB PPU:207, 21 CYC:23536
F354  20 2E FB  JSR $FB2E                       A:29 X:02 Y:ED P:65 SP:FB PPU:207, 30 CYC:23539
FB2E  B8        CLV                             A:29 X:02 Y:ED P:65 SP:F9 PPU:207, 48 CYC:23545
FB2F  18        CLC                             A:29 X:02 Y:ED P:25 SP:F9 PPU:207, 54 CYC:23547
FB30  A9 42     LDA #$42                        A:29 X:02 Y:ED P:24 SP:F9 PPU:207, 60 CYC:23549
FB32  60        RTS                             A:42 X:02 Y:ED P:24 SP:F9 PPU:207, 66 CYC:23551
F357  47 47    *SRE $47 = 29                    A:42 X:02 Y:ED P:24 SP:FB PPU:207, 84 CYC:23557
F359  EA        NOP                             A:56 X:02 Y:ED P:25 SP:FB PPU:207, 99 CYC:23562
F35A  EA        NOP                             A:56 X:02 Y:ED P:25 SP:FB PPU:207,105 CYC:23564
F35B  EA        NOP                             A:56 X:02 Y:ED P:25 SP:FB PPU:207,111 CYC:23566
F35C  EA        NOP                             A:56 X:02 Y:ED P:25 SP:FB PPU:207,117 CYC:23568
F35D  20 33 FB  JSR $FB33                       A:56 X:02 Y:ED P:25 SP:FB PPU:207,123 CYC:23570
FB33  70 40     BVS $FB75                       A:56 X:02 Y:ED P:25 SP:F9 PPU:207,141 CYC:23576
FB35  F0 3E     BEQ $FB75                       A:56 X:02 Y:ED P:25 SP:F9 PPU:207,147 CYC:23578
FB37  30 3C     BMI $FB75                       A:56 X:02 Y:ED P:25 SP:F9 PPU:207,153 CYC:23580
FB39  90 3A     BCC $FB75                       A:56 X:02 Y:ED P:25 SP:F9 PPU:207,159 CYC:23582
FB3B  C9 56     CMP #$56                        A:56 X:02 Y:ED P:25 SP:F9 PPU:207,165 CYC:23584
FB3D  D0 36     BNE $FB75                       A:56 X:02 Y:ED P:27 SP:F9 PPU:207,171 CYC:23586
FB3F  60        RTS                             A:56 X:02 Y:ED P:27 SP:F9 PPU:207,177 CYC:23588
F360  A5 47     LDA $47 = 14                    A:56 X:02 Y:ED P:27 SP:FB PPU:207,195 CYC:23594
F362  C9 14     CMP #$14                        A:14 X:02 Y:ED P:25 SP:FB PPU:207,204 CYC:23597
F364  F0 02     BEQ $F368                       A:14 X:02 Y:ED P:27 SP:FB PPU:207,210 CYC:23599
F368  C8        INY                             A:14 X:02 Y:ED P:27 SP:FB PPU:207,219 CYC:23602
F369  A9 37     LDA #$37                        A:14 X:02 Y:EE P:A5 SP:FB PPU:207,225 CYC:23604
F36B  85 47     STA $47 = 14                    A:37 X:02 Y:EE P:25 SP:FB PPU:207,231 CYC:23606
F36D  20 40 FB  JSR $FB40                       A:37 X:02 Y:EE P:25 SP:FB PPU:207,240 CYC:23609
FB40  24 01     BIT $01 = FF                    A:37 X:02 Y:EE P:25 SP:F9 PPU:207,258 CYC:23615
FB42  38        SEC                             A:37 X:02 Y:EE P:E5 SP:F9 PPU:207,267 CYC:23618
FB43  A9 75     LDA #$75                        A:37 X:02 Y:EE P:E5 SP:F9 PPU:207,273 CYC:23620
FB45  60        RTS                             A:75 X:02 Y:EE P:65 SP:F9 PPU:207,279 CYC:23622
F370  47 47    *SRE $47 = 37                    A:75 X:02 Y:EE P:65 SP:FB PPU:207,297 CYC:23628
F372  EA        NOP                             A:6E X:02 Y:EE P:65 SP:FB PPU:207,312 CYC:23633
F373  EA        NOP                             A:6E X:02 Y:EE P:65 SP:FB PPU:207,318 CYC:23635
F374  EA        NOP                             A:6E X:02 Y:EE P:65 SP:FB PPU:207,324 CYC:23637
F375  EA        NOP                             A:6E X:02 Y:EE P:65 SP:FB PPU:207,330 CYC:23639
F376  20 46 FB  JSR $FB46                       A:6E X:02 Y:EE P:65 SP:FB PPU:207,336 CYC:23641
FB46  50 2D     BVC $FB75                       A:6E X:02 Y:EE P:65 SP:F9 PPU:208, 13 CYC:23647
FB48  F0 2B     BEQ $FB75                       A:6E X:02 Y:EE P:65 SP:F9 PPU:208, 19 CYC:23649
FB4A  30 29     BMI $FB75                       A:6E X:02 Y:EE P:65 SP:F9 PPU:208, 25 CYC:23651
FB4C  90 27     BCC $FB75                       A:6E X:02 Y:EE P:65 SP:F9 PPU:208, 31 CYC:23653
FB4E  C9 6E     CMP #$6E                        A:6E X:02 Y:EE P:65 SP:F9 PPU:208, 37 CYC:23655
FB50  D0 23     BNE $FB75                       A:6E X:02 Y:EE P:67 SP:F9 PPU:208, 43 CYC:23657
FB52  60        RTS                             A:6E X:02 Y:EE P:67 SP:F9 PPU:208, 49 CYC:23659
F379  A5 47     LDA $47 = 1B                    A:6E X:02 Y:EE P:67 SP:FB PPU:208, 67 CYC:23665
F37B  C9 1B     CMP #$1B                        A:1B X:02 Y:EE P:65 SP:FB PPU:208, 76 CYC:23668
F37D  F0 02     BEQ $F381                       A:1B X:02 Y:EE P:67 SP:FB PPU:208, 82 CYC:23670
F381  C8        INY                             A:1B X:02 Y:EE P:67 SP:FB PPU:208, 91 CYC:23673
F382  A9 A5     LDA #$A5                        A:1B X:02 Y:EF P:E5 SP:FB PPU:208, 97 CYC:23675
F384  8D 47 06  STA $0647 = 1B                  A:A5 X:02 Y:EF P:E5 SP:FB PPU:208,103 CYC:23677
F387  20 1D FB  JSR $FB1D                       A:A5 X:02 Y:EF P:E5 SP:FB PPU:208,115 CYC:23681
FB1D  24 01     BIT $01 = FF                    A:A5 X:02 Y:EF P:E5 SP:F9 PPU:208,133 CYC:23687
FB1F  18        CLC                             A:A5 X:02 Y:EF P:E5 SP:F9 PPU:208,142 CYC:23690
FB20  A9 B3     LDA #$B3                        A:A5 X:02 Y:EF P:E4 SP:F9 PPU:208,148 CYC:23692
FB22  60        RTS                             A:B3 X:02 Y:EF P:E4 SP:F9 PPU:208,154 CYC:23694
F38A  4F 47 06 *SRE $0647 = A5                  A:B3 X:02 Y:EF P:E4 SP:FB PPU:208,172 CYC:23700
F38D  EA        NOP                             A:E1 X:02 Y:EF P:E5 SP:FB PPU:208,190 CYC:23706
F38E  EA        NOP                             A:E1 X:02 Y:EF P:E5 SP:FB PPU:208,196 CYC:23708
F38F  EA        NOP                             A:E1 X:02 Y:EF P:E5 SP:FB PPU:208,202 CYC:23710
F390  EA        NOP                             A:E1 X:02 Y:EF P:E5 SP:FB PPU:208,208 CYC:23712
F391  20 23 FB  JSR $FB23                       A:E1 X:02 Y:EF P:E5 SP:FB PPU:208,214 CYC:23714
FB23  50 50     BVC $FB75                       A:E1 X:02 Y:EF P:E5 SP:F9 PPU:208,232 CYC:23720
FB25  90 4E     BCC $FB75                       A:E1 X:02 Y:EF P:E5 SP:F9 PPU:208,238 CYC:23722
FB27  10 4C     BPL $FB75                       A:E1 X:02 Y:EF P:E5 SP:F9 PPU:208,244 CYC:23724
FB29  C9 E1     CMP #$E1                        A:E1 X:02 Y:EF P:E5 SP:F9 PPU:208,250 CYC:23726
FB2B  D0 48     BNE $FB75                       A:E1 X:02 Y:EF P:67 SP:F9 PPU:208,256 CYC:23728
FB2D  60        RTS                             A:E1 X:02 Y:EF P:67 SP:F9 PPU:208,262 CYC:23730
F394  AD 47 06  LDA $0647 = 52                  A:E1 X:02 Y:EF P:67 SP:FB PPU:208,280 CYC:23736
F397  C9 52     CMP #$52                        A:52 X:02 Y:EF P:65 SP:FB PPU:208,292 CYC:23740
F399  F0 02     BEQ $F39D                       A:52 X:02 Y:EF P:67 SP:FB PPU:208,298 CYC:23742
F39D  C8        INY                             A:52 X:02 Y:EF P:67 SP:FB PPU:208,307 CYC:23745
F39E  A9 29     LDA #$29                        A:52 X:02 Y:F0 P:E5 SP:FB PPU:208,313 CYC:23747
F3A0  8D 47 06  STA $0647 = 52                  A:29 X:02 Y:F0 P:65 SP:FB PPU:208,319 CYC:23749
F3A3  20 2E FB  JSR $FB2E                       A:29 X:02 Y:F0 P:65 SP:FB PPU:208,331 CYC:23753
FB2E  B8        CLV                             A:29 X:02 Y:F0 P:65 SP:F9 PPU:209,  8 CYC:23759
FB2F  18        CLC                             A:29 X:02 Y:F0 P:25 SP:F9 PPU:209, 14 CYC:23761
FB30  A9 42     LDA #$42                        A:29 X:02 Y:F0 P:24 SP:F9 PPU:209, 20 CYC:23763
FB32  60        RTS                             A:42 X:02 Y:F0 P:24 SP:F9 PPU:209, 26 CYC:23765
F3A6  4F 47 06 *SRE $0647 = 29                  A:42 X:02 Y:F0 P:24 SP:FB PPU:209, 44 CYC:23771
F3A9  EA        NOP                             A:56 X:02 Y:F0 P:25 SP:FB PPU:209, 62 CYC:23777
F3AA  EA        NOP                             A:56 X:02 Y:F0 P:25 SP:FB PPU:209, 68 CYC:23779
F3AB  EA        NOP                             A:56 X:02 Y:F0 P:25 SP:FB PPU:209, 74 CYC:23781
F3AC  EA        NOP                             A:56 X:02 Y:F0 P:25 SP:FB PPU:209, 80 CYC:23783
F3AD  20 33 FB  JSR $FB33                       A:56 X:02 Y:F0 P:25 SP:FB PPU:209, 86 CYC:23785
FB33  70 40     BVS $FB75                       A:56 X:02 Y:F0 P:25 SP:F9 PPU:209,104 CYC:23791
FB35  F0 3E     BEQ $FB75                       A:56 X:02 Y:F0 P:25 SP:F9 PPU:209,110 CYC:23793
FB37  30 3C     BMI $FB75                       A:56 X:02 Y:F0 P:25 SP:F9 PPU:209,116 CYC:23795
FB39  90 3A     BCC $FB75                       A:56 X:02 Y:F0 P:25 SP:F9 PPU:209,122 CYC:23797
FB3B  C9 56     CMP #$56                        A:56 X:02 Y:F0 P:25 SP:F9 PPU:209,128 CYC:23799
FB3D  D0 36     BNE $FB75                       A:56 X:02 Y:F0 P:27 SP:F9 PPU:209,134 CYC:23801
FB3F  60        RTS                             A:56 X:02 Y:F0 P:27 SP:F9 PPU:209,140 CYC:23803
F3B0  AD 47 06  LDA $0647 = 14                  A:56 X:02 Y:F0 P:27 SP:FB PPU:209,158 CYC:23809
F3B3  C9 14     CMP #$14                        A:14 X:02 Y:F0 P:25 SP:FB PPU:209,170 CYC:23813
F3B5  F0 02     BEQ $F3B9                       A:14 X:02 Y:F0 P:27 SP:FB PPU:209,176 CYC:23815
F3B9  C8        INY                             A:14 X:02 Y:F0 P:27 SP:FB PPU:209,185 CYC:23818
F3BA  A9 37     LDA #$37                        A:14 X:02 Y:F1 P:A5 SP:FB PPU:209,191 CYC:23820
F3BC  8D 47 06  STA $0647 = 14                  A:37 X:02 Y:F1 P:25 SP:FB PPU:209,197 CYC:23822
F3BF  20 40 FB  JSR $FB40                       A:37 X:02 Y:F1 P:25 SP:FB PPU:209,209 CYC:23826
FB40  24 01     BIT $01 = FF                    A:37 X:02 Y:F1 P:25 SP:F9 PPU:209,227 CYC:23832
FB42  38        SEC                             A:37 X:02 Y:F1 P:E5 SP:F9 PPU:209,236 CYC:23835
FB43  A9 75     LDA #$75                        A:37 X:02 Y:F1 P:E5 SP:F9 PPU:209,242 CYC:23837
FB45  60        RTS                             A:75 X:02 Y:F1 P:65 SP:F9 PPU:209,248 CYC:23839
F3C2  4F 47 06 *SRE $0647 = 37                  A:75 X:02 Y:F1 P:65 SP:FB PPU:209,266 CYC:23845
F3C5  EA        NOP                             A:6E X:02 Y:F1 P:65 SP:FB PPU:209,284 CYC:23851
F3C6  EA        NOP                             A:6E X:02 Y:F1 P:65 SP:FB PPU:209,290 CYC:23853
F3C7  EA        NOP                             A:6E X:02 Y:F1 P:65 SP:FB PPU:209,296 CYC:23855
F3C8  EA        NOP                             A:6E X:02 Y:F1 P:65 SP:FB PPU:209,302 CYC:23857
F3C9  20 46 FB  JSR $FB46                       A:6E X:02 Y:F1 P:65 SP:FB PPU:209,308 CYC:23859
FB46  50 2D     BVC $FB75                       A:6E X:02 Y:F1 P:65 SP:F9 PPU:209,326 CYC:23865
FB48  F0 2B     BEQ $FB75                       A:6E X:02 Y:F1 P:65 SP:F9 PPU:209,332 CYC:23867
FB4A  30 29     BMI $FB75                       A:6E X:02 Y:F1 P:65 SP:F9 PPU:209,338 CYC:23869
FB4C  90 27     BCC $FB75                       A:6E X:02 Y:F1 P:65 SP:F9 PPU:210,  3 CYC:23871
FB4E  C9 6E     CMP #$6E                        A:6E X:02 Y:F1 P:65 SP:F9 PPU:210,  9 CYC:23873
FB50  D0 23     BNE $FB75                       A:6E X:02 Y:F1 P:67 SP:F9 PPU:210, 15 CYC:23875
FB52  60        RTS                             A:6E X:02 Y:F1 P:67 SP:F9 PPU:210, 21 CYC:23877
F3CC  AD 47 06  LDA $0647 = 1B                  A:6E X:02 Y:F1 P:67 SP:FB PPU:210, 39 CYC:23883
F3CF  C9 1B     CMP #$1B                        A:1B X:02 Y:F1 P:65 SP:FB PPU:210, 51 CYC:23887
F3D1  F0 02     BEQ $F3D5                       A:1B X:02 Y:F1 P:67 SP:FB PPU:210, 57 CYC:23889
F3D5  A9 A5     LDA #$A5                        A:1B X:02 Y:F1 P:67 SP:FB PPU:210, 66 CYC:23892
F3D7  8D 47 06  STA $0647 = 1B                  A:A5 X:02 Y:F1 P:E5 SP:FB PPU:210, 72 CYC:23894
F3DA  A9 48     LDA #$48                        A:A5 X:02 Y:F1 P:E5 SP:FB PPU:210, 84 CYC:23898
F3DC  85 45     STA $45 = 48                    A:48 X:02 Y:F1 P:65 SP:FB PPU:210, 90 CYC:23900
F3DE  A9 05     LDA #$05                        A:48 X:02 Y:F1 P:65 SP:FB PPU:210, 99 CYC:23903
F3E0  85 46     STA $46 = 05                    A:05 X:02 Y:F1 P:65 SP:FB PPU:210,105 CYC:23905
F3E2  A0 FF     LDY #$FF                        A:05 X:02 Y:F1 P:65 SP:FB PPU:210,114 CYC:23908
F3E4  20 1D FB  JSR $FB1D                       A:05 X:02 Y:FF P:E5 SP:FB PPU:210,120 CYC:23910
FB1D  24 01     BIT $01 = FF                    A:05 X:02 Y:FF P:E5 SP:F9 PPU:210,138 CYC:23916
FB1F  18        CLC                             A:05 X:02 Y:FF P:E5 SP:F9 PPU:210,147 CYC:23919
FB20  A9 B3     LDA #$B3                        A:05 X:02 Y:FF P:E4 SP:F9 PPU:210,153 CYC:23921
FB22  60        RTS                             A:B3 X:02 Y:FF P:E4 SP:F9 PPU:210,159 CYC:23923
F3E7  53 45    *SRE ($45),Y = 0548 @ 0647 = A5  A:B3 X:02 Y:FF P:E4 SP:FB PPU:210,177 CYC:23929
F3E9  EA        NOP                             A:E1 X:02 Y:FF P:E5 SP:FB PPU:210,201 CYC:23937
F3EA  EA        NOP                             A:E1 X:02 Y:FF P:E5 SP:FB PPU:210,207 CYC:23939
F3EB  08        PHP                             A:E1 X:02 Y:FF P:E5 SP:FB PPU:210,213 CYC:23941
F3EC  48        PHA                             A:E1 X:02 Y:FF P:E5 SP:FA PPU:210,222 CYC:23944
F3ED  A0 F2     LDY #$F2                        A:E1 X:02 Y:FF P:E5 SP:F9 PPU:210,231 CYC:23947
F3EF  68        PLA                             A:E1 X:02 Y:F2 P:E5 SP:F9 PPU:210,237 CYC:23949
F3F0  28        PLP                             A:E1 X:02 Y:F2 P:E5 SP:FA PPU:210,249 CYC:23953
F3F1  20 23 FB  JSR $FB23                       A:E1 X:02 Y:F2 P:E5 SP:FB PPU:210,261 CYC:23957
FB23  50 50     BVC $FB75                       A:E1 X:02 Y:F2 P:E5 SP:F9 PPU:210,279 CYC:23963
FB25  90 4E     BCC $FB75                       A:E1 X:02 Y:F2 P:E5 SP:F9 PPU:210,285 CYC:23965
FB27  10 4C     BPL $FB75                       A:E1 X:02 Y:F2 P:E5 SP:F9 PPU:210,291 CYC:23967
FB29  C9 E1     CMP #$E1                        A:E1 X:02 Y:F2 P:E5 SP:F9 PPU:210,297 CYC:23969
FB2B  D0 48     BNE $FB75                       A:E1 X:02 Y:F2 P:67 SP:F9 PPU:210,303 CYC:23971
FB2D  60        RTS                             A:E1 X:02 Y:F2 P:67 SP:F9 PPU:210,309 CYC:23973
F3F4  AD 47 06  LDA $0647 = 52                  A:E1 X:02 Y:F2 P:67 SP:FB PPU:210,327 CYC:23979
F3F7  C9 52     CMP #$52                        A:52 X:02 Y:F2 P:65 SP:FB PPU:210,339 CYC:23983
F3F9  F0 02     BEQ $F3FD                       A:52 X:02 Y:F2 P:67 SP:FB PPU:211,  4 CYC:23985
F3FD  A0 FF     LDY #$FF                        A:52 X:02 Y:F2 P:67 SP:FB PPU:211, 13 CYC:23988
F3FF  A9 29     LDA #$29                        A:52 X:02 Y:FF P:E5 SP:FB PPU:211, 19 CYC:23990
F401  8D 47 06  STA $0647 = 52                  A:29 X:02 Y:FF P:65 SP:FB PPU:211, 25 CYC:23992
F404  20 2E FB  JSR $FB2E                       A:29 X:02 Y:FF P:65 SP:FB PPU:211, 37 CYC:23996
FB2E  B8        CLV                             A:29 X:02 Y:FF P:65 SP:F9 PPU:211, 55 CYC:24002
FB2F  18        CLC                             A:29 X:02 Y:FF P:25 SP:F9 PPU:211, 61 CYC:24004
FB30  A9 42     LDA #$42                        A:29 X:02 Y:FF P:24 SP:F9 PPU:211, 67 CYC:24006
FB32  60        RTS                             A:42 X:02 Y:FF P:24 SP:F9 PPU:211, 73 CYC:24008
F407  53 45    *SRE ($45),Y = 0548 @ 0647 = 29  A:42 X:02 Y:FF P:24 SP:FB PPU:211, 91 CYC:24014
F409  EA        NOP                             A:56 X:02 Y:FF P:25 SP:FB PPU:211,115 CYC:24022
F40A  EA        NOP                             A:56 X:02 Y:FF P:25 SP:FB PPU:211,121 CYC:24024
F40B  08        PHP                             A:56 X:02 Y:FF P:25 SP:FB PPU:211,127 CYC:24026
F40C  48        PHA                             A:56 X:02 Y:FF P:25 SP:FA PPU:211,136 CYC:24029
F40D  A0 F3     LDY #$F3                        A:56 X:02 Y:FF P:25 SP:F9 PPU:211,145 CYC:24032
F40F  68        PLA                             A:56 X:02 Y:F3 P:A5 SP:F9 PPU:211,151 CYC:24034
F410  28        PLP                             A:56 X:02 Y:F3 P:25 SP:FA PPU:211,163 CYC:24038
F411  20 33 FB  JSR $FB33                       A:56 X:02 Y:F3 P:25 SP:FB PPU:211,175 CYC:24042
FB33  70 40     BVS $FB75                       A:56 X:02 Y:F3 P:25 SP:F9 PPU:211,193 CYC:24048
FB35  F0 3E     BEQ $FB75                       A:56 X:02 Y:F3 P:25 SP:F9 PPU:211,199 CYC:24050
FB37  30 3C     BMI $FB75                       A:56 X:02 Y:F3 P:25 SP:F9 PPU:211,205 CYC:24052
FB39  90 3A     BCC $FB75                       A:56 X:02 Y:F3 P:25 SP:F9 PPU:211,211 CYC:24054
FB3B  C9 56     CMP #$56                        A:56 X:02 Y:F3 P:25 SP:F9 PPU:211,217 CYC:24056
FB3D  D0 36     BNE $FB75                       A:56 X:02 Y:F3 P:27 SP:F9 PPU:211,223 CYC:24058
FB3F  60        RTS                             A:56 X:02 Y:F3 P:27 SP:F9 PPU:211,229 CYC:24060
F414  AD 47 06  LDA $0647 = 14                  A:56 X:02 Y:F3 P:27 SP:FB PPU:211,247 CYC:24066
F417  C9 14     CMP #$14                        A:14 X:02 Y:F3 P:25 SP:FB PPU:211,259 CYC:24070
F419  F0 02     BEQ $F41D                       A:14 X:02 Y:F3 P:27 SP:FB PPU:211,265 CYC:24072
F41D  A0 FF     LDY #$FF                        A:14 X:02 Y:F3 P:27 SP:FB PPU:211,274 CYC:24075
F41F  A9 37     LDA #$37                        A:14 X:02 Y:FF P:A5 SP:FB PPU:211,280 CYC:24077
F421  8D 47 06  STA $0647 = 14                  A:37 X:02 Y:FF P:25 SP:FB PPU:211,286 CYC:24079
F424  20 40 FB  JSR $FB40                       A:37 X:02 Y:FF P:25 SP:FB PPU:211,298 CYC:24083
FB40  24 01     BIT $01 = FF                    A:37 X:02 Y:FF P:25 SP:F9 PPU:211,316 CYC:24089
FB42  38        SEC                             A:37 X:02 Y:FF P:E5 SP:F9 PPU:211,325 CYC:24092
FB43  A9 75     LDA #$75                        A:37 X:02 Y:FF P:E5 SP:F9 PPU:211,331 CYC:24094
FB45  60        RTS                             A:75 X:02 Y:FF P:65 SP:F9 PPU:211,337 CYC:24096
F427  53 45    *SRE ($45),Y = 0548 @ 0647 = 37  A:75 X:02 Y:FF P:65 SP:FB PPU:212, 14 CYC:24102
F429  EA        NOP                             A:6E X:02 Y:FF P:65 SP:FB PPU:212, 38 CYC:24110
F42A  EA        NOP                             A:6E X:02 Y:FF P:65 SP:FB PPU:212, 44 CYC:24112
F42B  08        PHP                             A:6E X:02 Y:FF P:65 SP:FB PPU:212, 50 CYC:24114
F42C  48        PHA                             A:6E X:02 Y:FF P:65 SP:FA PPU:212, 59 CYC:24117
F42D  A0 F4     LDY #$F4                        A:6E X:02 Y:FF P:65 SP:F9 PPU:212, 68 CYC:24120
F42F  68        PLA                             A:6E X:02 Y:F4 P:E5 SP:F9 PPU:212, 74 CYC:24122
F430  28        PLP                             A:6E X:02 Y:F4 P:65 SP:FA PPU:212, 86 CYC:24126
F431  20 46 FB  JSR $FB46                       A:6E X:02 Y:F4 P:65 SP:FB PPU:212, 98 CYC:24130
FB46  50 2D     BVC $FB75                       A:6E X:02 Y:F4 P:65 SP:F9 PPU:212,116 CYC:24136
FB48  F0 2B     BEQ $FB75                       A:6E X:02 Y:F4 P:65 SP:F9 PPU:212,122 CYC:24138
FB4A  30 29     BMI $FB75                       A:6E X:02 Y:F4 P:65 SP:F9 PPU:212,128 CYC:24140
FB4C  90 27     BCC $FB75                       A:6E X:02 Y:F4 P:65 SP:F9 PPU:212,134 CYC:24142
FB4E  C9 6E     CMP #$6E                        A:6E X:02 Y:F4 P:65 SP:F9 PPU:212,140 CYC:24144
FB50  D0 23     BNE $FB75                       A:6E X:02 Y:F4 P:67 SP:F9 PPU:212,146 CYC:24146
FB52  60        RTS                             A:6E X:02 Y:F4 P:67 SP:F9 PPU:212,152 CYC:24148
F434  AD 47 06  LDA $0647 = 1B                  A:6E X:02 Y:F4 P:67 SP:FB PPU:212,170 CYC:24154
F437  C9 1B     CMP #$1B                        A:1B X:02 Y:F4 P:65 SP:FB PPU:212,182 CYC:24158
F439  F0 02     BEQ $F43D                       A:1B X:02 Y:F4 P:67 SP:FB PPU:212,188 CYC:24160
F43D  A0 F5     LDY #$F5                        A:1B X:02 Y:F4 P:67 SP:FB PPU:212,197 CYC:24163
F43F  A2 FF     LDX #$FF                        A:1B X:02 Y:F5 P:E5 SP:FB PPU:212,203 CYC:24165
F441  A9 A5     LDA #$A5                        A:1B X:FF Y:F5 P:E5 SP:FB PPU:212,209 CYC:24167
F443  85 47     STA $47 = 1B                    A:A5 X:FF Y:F5 P:E5 SP:FB PPU:212,215 CYC:24169
F445  20 1D FB  JSR $FB1D                       A:A5 X:FF Y:F5 P:E5 SP:FB PPU:212,224 CYC:24172
FB1D  24 01     BIT $01 = FF                    A:A5 X:FF Y:F5 P:E5 SP:F9 PPU:212,242 CYC:24178
FB1F  18        CLC                             A:A5 X:FF Y:F5 P:E5 SP:F9 PPU:212,251 CYC:24181
FB20  A9 B3     LDA #$B3                        A:A5 X:FF Y:F5 P:E4 SP:F9 PPU:212,257 CYC:24183
FB22  60        RTS                             A:B3 X:FF Y:F5 P:E4 SP:F9 PPU:212,263 CYC:24185
F448  57 48    *SRE $48,X @ 47 = A5             A:B3 X:FF Y:F5 P:E4 SP:FB PPU:212,281 CYC:24191
F44A  EA        NOP                             A:E1 X:FF Y:F5 P:E5 SP:FB PPU:212,299 CYC:24197
F44B  EA        NOP                             A:E1 X:FF Y:F5 P:E5 SP:FB PPU:212,305 CYC:24199
F44C  EA        NOP                             A:E1 X:FF Y:F5 P:E5 SP:FB PPU:212,311 CYC:24201
F44D  EA        NOP                             A:E1 X:FF Y:F5 P:E5 SP:FB PPU:212,317 CYC:24203
F44E  20 23 FB  JSR $FB23                       A:E1 X:FF Y:F5 P:E5 SP:FB PPU:212,323 CYC:24205
FB23  50 50     BVC $FB75                       A:E1 X:FF Y:F5 P:E5 SP:F9 PPU:213,  0 CYC:24211
FB25  90 4E     BCC $FB75                       A:E1 X:FF Y:F5 P:E5 SP:F9 PPU:213,  6 CYC:24213
FB27  10 4C     BPL $FB75                       A:E1 X:FF Y:F5 P:E5 SP:F9 PPU:213, 12 CYC:24215
FB29  C9 E1     CMP #$E1                        A:E1 X:FF Y:F5 P:E5 SP:F9 PPU:213, 18 CYC:24217
FB2B  D0 48     BNE $FB75                       A:E1 X:FF Y:F5 P:67 SP:F9 PPU:213, 24 CYC:24219
FB2D  60        RTS                             A:E1 X:FF Y:F5 P:67 SP:F9 PPU:213, 30 CYC:24221
F451  A5 47     LDA $47 = 52                    A:E1 X:FF Y:F5 P:67 SP:FB PPU:213, 48 CYC:24227
F453  C9 52     CMP #$52                        A:52 X:FF Y:F5 P:65 SP:FB PPU:213, 57 CYC:24230
F455  F0 02     BEQ $F459                       A:52 X:FF Y:F5 P:67 SP:FB PPU:213, 63 CYC:24232
F459  C8        INY                             A:52 X:FF Y:F5 P:67 SP:FB PPU:213, 72 CYC:24235
F45A  A9 29     LDA #$29                        A:52 X:FF Y:F6 P:E5 SP:FB PPU:213, 78 CYC:24237
F45C  85 47     STA $47 = 52                    A:29 X:FF Y:F6 P:65 SP:FB PPU:213, 84 CYC:24239
F45E  20 2E FB  JSR $FB2E                       A:29 X:FF Y:F6 P:65 SP:FB PPU:213, 93 CYC:24242
FB2E  B8        CLV                             A:29 X:FF Y:F6 P:65 SP:F9 PPU:213,111 CYC:24248
FB2F  18        CLC                             A:29 X:FF Y:F6 P:25 SP:F9 PPU:213,117 CYC:24250
FB30  A9 42     LDA #$42                        A:29 X:FF Y:F6 P:24 SP:F9 PPU:213,123 CYC:24252
FB32  60        RTS                             A:42 X:FF Y:F6 P:24 SP:F9 PPU:213,129 CYC:24254
F461  57 48    *SRE $48,X @ 47 = 29             A:42 X:FF Y:F6 P:24 SP:FB PPU:213,147 CYC:24260
F463  EA        NOP                             A:56 X:FF Y:F6 P:25 SP:FB PPU:213,165 CYC:24266
F464  EA        NOP                             A:56 X:FF Y:F6 P:25 SP:FB PPU:213,171 CYC:24268
F465  EA        NOP                             A:56 X:FF Y:F6 P:25 SP:FB PPU:213,177 CYC:24270
F466  EA        NOP                             A:56 X:FF Y:F6 P:25 SP:FB PPU:213,183 CYC:24272
F467  20 33 FB  JSR $FB33                       A:56 X:FF Y:F6 P:25 SP:FB PPU:213,189 CYC:24274
FB33  70 40     BVS $FB75                       A:56 X:FF Y:F6 P:25 SP:F9 PPU:213,207 CYC:24280
FB35  F0 3E     BEQ $FB75                       A:56 X:FF Y:F6 P:25 SP:F9 PPU:213,213 CYC:24282
FB37  30 3C     BMI $FB75                       A:56 X:FF Y:F6 P:25 SP:F9 PPU:213,219 CYC:24284
FB39  90 3A     BCC $FB75                       A:56 X:FF Y:F6 P:25 SP:F9 PPU:213,225 CYC:24286
FB3B  C9 56     CMP #$56                        A:56 X:FF Y:F6 P:25 SP:F9 PPU:213,231 CYC:24288
FB3D  D0 36     BNE $FB75                       A:56 X:FF Y:F6 P:27 SP:F9 PPU:213,237 CYC:24290
FB3F  60        RTS                             A:56 X:FF Y:F6 P:27 SP:F9 PPU:213,243 CYC:24292
F46A  A5 47     LDA $47 = 14                    A:56 X:FF Y:F6 P:27 SP:FB PPU:213,261 CYC:24298
F46C  C9 14     CMP #$14                        A:14 X:FF Y:F6 P:25 SP:FB PPU:213,270 CYC:24301
F46E  F0 02     BEQ $F472                       A:14 X:FF Y:F6 P:27 SP:FB PPU:213,276 CYC:24303
F472  C8        INY                             A:14 X:FF Y:F6 P:27 SP:FB PPU:213,285 CYC:24306
F473  A9 37     LDA #$37                        A:14 X:FF Y:F7 P:A5 SP:FB PPU:213,291 CYC:24308
F475  85 47     STA $47 = 14                    A:37 X:FF Y:F7 P:25 SP:FB PPU:213,297 CYC:24310
F477  20 40 FB  JSR $FB40                       A:37 X:FF Y:F7 P:25 SP:FB PPU:213,306 CYC:24313
FB40  24 01     BIT $01 = FF                    A:37 X:FF Y:F7 P:25 SP:F9 PPU:213,324 CYC:24319
FB42  38        SEC                             A:37 X:FF Y:F7 P:E5 SP:F9 PPU:213,333 CYC:24322
FB43  A9 75     LDA #$75                        A:37 X:FF Y:F7 P:E5 SP:F9 PPU:213,339 CYC:24324
FB45  60        RTS                             A:75 X:FF Y:F7 P:65 SP:F9 PPU:214,  4 CYC:24326
F47A  57 48    *SRE $48,X @ 47 = 37             A:75 X:FF Y:F7 P:65 SP:FB PPU:214, 22 CYC:24332
F47C  EA        NOP                             A:6E X:FF Y:F7 P:65 SP:FB PPU:214, 40 CYC:24338
F47D  EA        NOP                             A:6E X:FF Y:F7 P:65 SP:FB PPU:214, 46 CYC:24340
F47E  EA        NOP                             A:6E X:FF Y:F7 P:65 SP:FB PPU:214, 52 CYC:24342
F47F  EA        NOP                             A:6E X:FF Y:F7 P:65 SP:FB PPU:214, 58 CYC:24344
F480  20 46 FB  JSR $FB46                       A:6E X:FF Y:F7 P:65 SP:FB PPU:214, 64 CYC:24346
FB46  50 2D     BVC $FB75                       A:6E X:FF Y:F7 P:65 SP:F9 PPU:214, 82 CYC:24352
FB48  F0 2B     BEQ $FB75                       A:6E X:FF Y:F7 P:65 SP:F9 PPU:214, 88 CYC:24354
FB4A  30 29     BMI $FB75                       A:6E X:FF Y:F7 P:65 SP:F9 PPU:214, 94 CYC:24356
FB4C  90 27     BCC $FB75                       A:6E X:FF Y:F7 P:65 SP:F9 PPU:214,100 CYC:24358
FB4E  C9 6E     CMP #$6E                        A:6E X:FF Y:F7 P:65 SP:F9 PPU:214,106 CYC:24360
FB50  D0 23     BNE $FB75                       A:6E X:FF Y:F7 P:67 SP:F9 PPU:214,112 CYC:24362
FB52  60        RTS                             A:6E X:FF Y:F7 P:67 SP:F9 PPU:214,118 CYC:24364
F483  A5 47     LDA $47 = 1B                    A:6E X:FF Y:F7 P:67 SP:FB PPU:214,136 CYC:24370
F485  C9 1B     CMP #$1B                        A:1B X:FF Y:F7 P:65 SP:FB PPU:214,145 CYC:24373
F487  F0 02     BEQ $F48B                       A:1B X:FF Y:F7 P:67 SP:FB PPU:214,151 CYC:24375
F48B  A9 A5     LDA #$A5                        A:1B X:FF Y:F7 P:67 SP:FB PPU:214,160 CYC:24378
F48D  8D 47 06  STA $0647 = 1B                  A:A5 X:FF Y:F7 P:E5 SP:FB PPU:214,166 CYC:24380
F490  A0 FF     LDY #$FF                        A:A5 X:FF Y:F7 P:E5 SP:FB PPU:214,178 CYC:24384
F492  20 1D FB  JSR $FB1D                       A:A5 X:FF Y:FF P:E5 SP:FB PPU:214,184 CYC:24386
FB1D  24 01     BIT $01 = FF                    A:A5 X:FF Y:FF P:E5 SP:F9 PPU:214,202 CYC:24392
FB1F  18        CLC                             A:A5 X:FF Y:FF P:E5 SP:F9 PPU:214,211 CYC:24395
FB20  A9 B3     LDA #$B3                        A:A5 X:FF Y:FF P:E4 SP:F9 PPU:214,217 CYC:24397
FB22  60        RTS                             A:B3 X:FF Y:FF P:E4 SP:F9 PPU:214,223 CYC:24399
F495  5B 48 05 *SRE $0548,Y @ 0647 = A5         A:B3 X:FF Y:FF P:E4 SP:FB PPU:214,241 CYC:24405
F498  EA        NOP                             A:E1 X:FF Y:FF P:E5 SP:FB PPU:214,262 CYC:24412
F499  EA        NOP                             A:E1 X:FF Y:FF P:E5 SP:FB PPU:214,268 CYC:24414
F49A  08        PHP                             A:E1 X:FF Y:FF P:E5 SP:FB PPU:214,274 CYC:24416
F49B  48        PHA                             A:E1 X:FF Y:FF P:E5 SP:FA PPU:214,283 CYC:24419
F49C  A0 F8     LDY #$F8                        A:E1 X:FF Y:FF P:E5 SP:F9 PPU:214,292 CYC:24422
F49E  68        PLA                             A:E1 X:FF Y:F8 P:E5 SP:F9 PPU:214,298 CYC:24424
F49F  28        PLP                             A:E1 X:FF Y:F8 P:E5 SP:FA PPU:214,310 CYC:24428
F4A0  20 23 FB  JSR $FB23                       A:E1 X:FF Y:F8 P:E5 SP:FB PPU:214,322 CYC:24432
FB23  50 50     BVC $FB75                       A:E1 X:FF Y:F8 P:E5 SP:F9 PPU:214,340 CYC:24438
FB25  90 4E     BCC $FB75                       A:E1 X:FF Y:F8 P:E5 SP:F9 PPU:215,  5 CYC:24440
FB27  10 4C     BPL $FB75                       A:E1 X:FF Y:F8 P:E5 SP:F9 PPU:215, 11 CYC:24442
FB29  C9 E1     CMP #$E1                        A:E1 X:FF Y:F8 P:E5 SP:F9 PPU:215, 17 CYC:24444
FB2B  D0 48     BNE $FB75                       A:E1 X:FF Y:F8 P:67 SP:F9 PPU:215, 23 CYC:24446
FB2D  60        RTS                             A:E1 X:FF Y:F8 P:67 SP:F9 PPU:215, 29 CYC:24448
F4A3  AD 47 06  LDA $0647 = 52                  A:E1 X:FF Y:F8 P:67 SP:FB PPU:215, 47 CYC:24454
F4A6  C9 52     CMP #$52                        A:52 X:FF Y:F8 P:65 SP:FB PPU:215, 59 CYC:24458
F4A8  F0 02     BEQ $F4AC                       A:52 X:FF Y:F8 P:67 SP:FB PPU:215, 65 CYC:24460
F4AC  A0 FF     LDY #$FF                        A:52 X:FF Y:F8 P:67 SP:FB PPU:215, 74 CYC:24463
F4AE  A9 29     LDA #$29                        A:52 X:FF Y:FF P:E5 SP:FB PPU:215, 80 CYC:24465
F4B0  8D 47 06  STA $0647 = 52                  A:29 X:FF Y:FF P:65 SP:FB PPU:215, 86 CYC:24467
F4B3  20 2E FB  JSR $FB2E                       A:29 X:FF Y:FF P:65 SP:FB PPU:215, 98 CYC:24471
FB2E  B8        CLV                             A:29 X:FF Y:FF P:65 SP:F9 PPU:215,116 CYC:24477
FB2F  18        CLC                             A:29 X:FF Y:FF P:25 SP:F9 PPU:215,122 CYC:24479
FB30  A9 42     LDA #$42                        A:29 X:FF Y:FF P:24 SP:F9 PPU:215,128 CYC:24481
FB32  60        RTS                             A:42 X:FF Y:FF P:24 SP:F9 PPU:215,134 CYC:24483
F4B6  5B 48 05 *SRE $0548,Y @ 0647 = 29         A:42 X:FF Y:FF P:24 SP:FB PPU:215,152 CYC:24489
F4B9  EA        NOP                             A:56 X:FF Y:FF P:25 SP:FB PPU:215,173 CYC:24496
F4BA  EA        NOP                             A:56 X:FF Y:FF P:25 SP:FB PPU:215,179 CYC:24498
F4BB  08        PHP                             A:56 X:FF Y:FF P:25 SP:FB PPU:215,185 CYC:24500
F4BC  48        PHA                             A:56 X:FF Y:FF P:25 SP:FA PPU:215,194 CYC:24503
F4BD  A0 F9     LDY #$F9                        A:56 X:FF Y:FF P:25 SP:F9 PPU:215,203 CYC:24506
F4BF  68        PLA                             A:56 X:FF Y:F9 P:A5 SP:F9 PPU:215,209 CYC:24508
F4C0  28        PLP                             A:56 X:FF Y:F9 P:25 SP:FA PPU:215,221 CYC:24512
F4C1  20 33 FB  JSR $FB33                       A:56 X:FF Y:F9 P:25 SP:FB PPU:215,233 CYC:24516
FB33  70 40     BVS $FB75                       A:56 X:FF Y:F9 P:25 SP:F9 PPU:215,251 CYC:24522
FB35  F0 3E     BEQ $FB75                       A:56 X:FF Y:F9 P:25 SP:F9 PPU:215,257 CYC:24524
FB37  30 3C     BMI $FB75                       A:56 X:FF Y:F9 P:25 SP:F9 PPU:215,263 CYC:24526
FB39  90 3A     BCC $FB75                       A:56 X:FF Y:F9 P:25 SP:F9 PPU:215,269 CYC:24528
FB3B  C9 56     CMP #$56                        A:56 X:FF Y:F9 P:25 SP:F9 PPU:215,275 CYC:24530
FB3D  D0 36     BNE $FB75                       A:56 X:FF Y:F9 P:27 SP:F9 PPU:215,281 CYC:24532
FB3F  60        RTS                             A:56 X:FF Y:F9 P:27 SP:F9 PPU:215,287 CYC:24534
F4C4  AD 47 06  LDA $0647 = 14                  A:56 X:FF Y:F9 P:27 SP:FB PPU:215,305 CYC:24540
F4C7  C9 14     CMP #$14                        A:14 X:FF Y:F9 P:25 SP:FB PPU:215,317 CYC:24544
F4C9  F0 02     BEQ $F4CD                       A:14 X:FF Y:F9 P:27 SP:FB PPU:215,323 CYC:24546
F4CD  A0 FF     LDY #$FF                        A:14 X:FF Y:F9 P:27 SP:FB PPU:215,332 CYC:24549
F4CF  A9 37     LDA #$37                        A:14 X:FF Y:FF P:A5 SP:FB PPU:215,338 CYC:24551
F4D1  8D 47 06  STA $0647 = 14                  A:37 X:FF Y:FF P:25 SP:FB PPU:216,  3 CYC:24553
F4D4  20 40 FB  JSR $FB40                       A:37 X:FF Y:FF P:25 SP:FB PPU:216, 15 CYC:24557
FB40  24 01     BIT $01 = FF                    A:37 X:FF Y:FF P:25 SP:F9 PPU:216, 33 CYC:24563
FB42  38        SEC                             A:37 X:FF Y:FF P:E5 SP:F9 PPU:216, 42 CYC:24566
FB43  A9 75     LDA #$75                        A:37 X:FF Y:FF P:E5 SP:F9 PPU:216, 48 CYC:24568
FB45  60        RTS                             A:75 X:FF Y:FF P:65 SP:F9 PPU:216, 54 CYC:24570
F4D7  5B 48 05 *SRE $0548,Y @ 0647 = 37         A:75 X:FF Y:FF P:65 SP:FB PPU:216, 72 CYC:24576
F4DA  EA        NOP                             A:6E X:FF Y:FF P:65 SP:FB PPU:216, 93 CYC:24583
F4DB  EA        NOP                             A:6E X:FF Y:FF P:65 SP:FB PPU:216, 99 CYC:24585
F4DC  08        PHP                             A:6E X:FF Y:FF P:65 SP:FB PPU:216,105 CYC:24587
F4DD  48        PHA                             A:6E X:FF Y:FF P:65 SP:FA PPU:216,114 CYC:24590
F4DE  A0 FA     LDY #$FA                        A:6E X:FF Y:FF P:65 SP:F9 PPU:216,123 CYC:24593
F4E0  68        PLA                             A:6E X:FF Y:FA P:E5 SP:F9 PPU:216,129 CYC:24595
F4E1  28        PLP                             A:6E X:FF Y:FA P:65 SP:FA PPU:216,141 CYC:24599
F4E2  20 46 FB  JSR $FB46                       A:6E X:FF Y:FA P:65 SP:FB PPU:216,153 CYC:24603
FB46  50 2D     BVC $FB75                       A:6E X:FF Y:FA P:65 SP:F9 PPU:216,171 CYC:24609
FB48  F0 2B     BEQ $FB75                       A:6E X:FF Y:FA P:65 SP:F9 PPU:216,177 CYC:24611
FB4A  30 29     BMI $FB75                       A:6E X:FF Y:FA P:65 SP:F9 PPU:216,183 CYC:24613
FB4C  90 27     BCC $FB75                       A:6E X:FF Y:FA P:65 SP:F9 PPU:216,189 CYC:24615
FB4E  C9 6E     CMP #$6E                        A:6E X:FF Y:FA P:65 SP:F9 PPU:216,195 CYC:24617
FB50  D0 23     BNE $FB75                       A:6E X:FF Y:FA P:67 SP:F9 PPU:216,201 CYC:24619
FB52  60        RTS                             A:6E X:FF Y:FA P:67 SP:F9 PPU:216,207 CYC:24621
F4E5  AD 47 06  LDA $0647 = 1B                  A:6E X:FF Y:FA P:67 SP:FB PPU:216,225 CYC:24627
F4E8  C9 1B     CMP #$1B                        A:1B X:FF Y:FA P:65 SP:FB PPU:216,237 CYC:24631
F4EA  F0 02     BEQ $F4EE                       A:1B X:FF Y:FA P:67 SP:FB PPU:216,243 CYC:24633
F4EE  A0 FB     LDY #$FB                        A:1B X:FF Y:FA P:67 SP:FB PPU:216,252 CYC:24636
F4F0  A2 FF     LDX #$FF                        A:1B X:FF Y:FB P:E5 SP:FB PPU:216,258 CYC:24638
F4F2  A9 A5     LDA #$A5                        A:1B X:FF Y:FB P:E5 SP:FB PPU:216,264 CYC:24640
F4F4  8D 47 06  STA $0647 = 1B                  A:A5 X:FF Y:FB P:E5 SP:FB PPU:216,270 CYC:24642
F4F7  20 1D FB  JSR $FB1D                       A:A5 X:FF Y:FB P:E5 SP:FB PPU:216,282 CYC:24646
FB1D  24 01     BIT $01 = FF                    A:A5 X:FF Y:FB P:E5 SP:F9 PPU:216,300 CYC:24652
FB1F  18        CLC                             A:A5 X:FF Y:FB P:E5 SP:F9 PPU:216,309 CYC:24655
FB20  A9 B3     LDA #$B3                        A:A5 X:FF Y:FB P:E4 SP:F9 PPU:216,315 CYC:24657
FB22  60        RTS                             A:B3 X:FF Y:FB P:E4 SP:F9 PPU:216,321 CYC:24659
F4FA  5F 48 05 *SRE $0548,X @ 0647 = A5         A:B3 X:FF Y:FB P:E4 SP:FB PPU:216,339 CYC:24665
F4FD  EA        NOP                             A:E1 X:FF Y:FB P:E5 SP:FB PPU:217, 19 CYC:24672
F4FE  EA        NOP                             A:E1 X:FF Y:FB P:E5 SP:FB PPU:217, 25 CYC:24674
F4FF  EA        NOP                             A:E1 X:FF Y:FB P:E5 SP:FB PPU:217, 31 CYC:24676
F500  EA        NOP                             A:E1 X:FF Y:FB P:E5 SP:FB PPU:217, 37 CYC:24678
F501  20 23 FB  JSR $FB23                       A:E1 X:FF Y:FB P:E5 SP:FB PPU:217, 43 CYC:24680
FB23  50 50     BVC $FB75                       A:E1 X:FF Y:FB P:E5 SP:F9 PPU:217, 61 CYC:24686
FB25  90 4E     BCC $FB75                       A:E1 X:FF Y:FB P:E5 SP:F9 PPU:217, 67 CYC:24688
FB27  10 4C     BPL $FB75                       A:E1 X:FF Y:FB P:E5 SP:F9 PPU:217, 73 CYC:24690
FB29  C9 E1     CMP #$E1                        A:E1 X:FF Y:FB P:E5 SP:F9 PPU:217, 79 CYC:24692
FB2B  D0 48     BNE $FB75                       A:E1 X:FF Y:FB P:67 SP:F9 PPU:217, 85 CYC:24694
FB2D  60        RTS                             A:E1 X:FF Y:FB P:67 SP:F9 PPU:217, 91 CYC:24696
F504  AD 47 06  LDA $0647 = 52                  A:E1 X:FF Y:FB P:67 SP:FB PPU:217,109 CYC:24702
F507  C9 52     CMP #$52                        A:52 X:FF Y:FB P:65 SP:FB PPU:217,121 CYC:24706
F509  F0 02     BEQ $F50D                       A:52 X:FF Y:FB P:67 SP:FB PPU:217,127 CYC:24708
F50D  C8        INY                             A:52 X:FF Y:FB P:67 SP:FB PPU:217,136 CYC:24711
F50E  A9 29     LDA #$29                        A:52 X:FF Y:FC P:E5 SP:FB PPU:217,142 CYC:24713
F510  8D 47 06  STA $0647 = 52                  A:29 X:FF Y:FC P:65 SP:FB PPU:217,148 CYC:24715
F513  20 2E FB  JSR $FB2E                       A:29 X:FF Y:FC P:65 SP:FB PPU:217,160 CYC:24719
FB2E  B8        CLV                             A:29 X:FF Y:FC P:65 SP:F9 PPU:217,178 CYC:24725
FB2F  18        CLC                             A:29 X:FF Y:FC P:25 SP:F9 PPU:217,184 CYC:24727
FB30  A9 42     LDA #$42                        A:29 X:FF Y:FC P:24 SP:F9 PPU:217,190 CYC:24729
FB32  60        RTS                             A:42 X:FF Y:FC P:24 SP:F9 PPU:217,196 CYC:24731
F516  5F 48 05 *SRE $0548,X @ 0647 = 29         A:42 X:FF Y:FC P:24 SP:FB PPU:217,214 CYC:24737
F519  EA        NOP                             A:56 X:FF Y:FC P:25 SP:FB PPU:217,235 CYC:24744
F51A  EA        NOP                             A:56 X:FF Y:FC P:25 SP:FB PPU:217,241 CYC:24746
F51B  EA        NOP                             A:56 X:FF Y:FC P:25 SP:FB PPU:217,247 CYC:24748
F51C  EA        NOP                             A:56 X:FF Y:FC P:25 SP:FB PPU:217,253 CYC:24750
F51D  20 33 FB  JSR $FB33                       A:56 X:FF Y:FC P:25 SP:FB PPU:217,259 CYC:24752
FB33  70 40     BVS $FB75                       A:56 X:FF Y:FC P:25 SP:F9 PPU:217,277 CYC:24758
FB35  F0 3E     BEQ $FB75                       A:56 X:FF Y:FC P:25 SP:F9 PPU:217,283 CYC:24760
FB37  30 3C     BMI $FB75                       A:56 X:FF Y:FC P:25 SP:F9 PPU:217,289 CYC:24762
FB39  90 3A     BCC $FB75                       A:56 X:FF Y:FC P:25 SP:F9 PPU:217,295 CYC:24764
FB3B  C9 56     CMP #$56                        A:56 X:FF Y:FC P:25 SP:F9 PPU:217,301 CYC:24766
FB3D  D0 36     BNE $FB75                       A:56 X:FF Y:FC P:27 SP:F9 PPU:217,307 CYC:24768
FB3F  60        RTS                             A:56 X:FF Y:FC P:27 SP:F9 PPU:217,313 CYC:24770
F520  AD 47 06  LDA $0647 = 14                  A:56 X:FF Y:FC P:27 SP:FB PPU:217,331 CYC:24776
F523  C9 14     CMP #$14                        A:14 X:FF Y:FC P:25 SP:FB PPU:218,  2 CYC:24780
F525  F0 02     BEQ $F529                       A:14 X:FF Y:FC P:27 SP:FB PPU:218,  8 CYC:24782
F529  C8        INY                             A:14 X:FF Y:FC P:27 SP:FB PPU:218, 17 CYC:24785
F52A  A9 37     LDA #$37                        A:14 X:FF Y:FD P:A5 SP:FB PPU:218, 23 CYC:24787
F52C  8D 47 06  STA $0647 = 14                  A:37 X:FF Y:FD P:25 SP:FB PPU:218, 29 CYC:24789
F52F  20 40 FB  JSR $FB40                       A:37 X:FF Y:FD P:25 SP:FB PPU:218, 41 CYC:24793
FB40  24 01     BIT $01 = FF                    A:37 X:FF Y:FD P:25 SP:F9 PPU:218, 59 CYC:24799
FB42  38        SEC                             A:37 X:FF Y:FD P:E5 SP:F9 PPU:218, 68 CYC:24802
FB43  A9 75     LDA #$75                        A:37 X:FF Y:FD P:E5 SP:F9 PPU:218, 74 CYC:24804
FB45  60        RTS                             A:75 X:FF Y:FD P:65 SP:F9 PPU:218, 80 CYC:24806
F532  5F 48 05 *SRE $0548,X @ 0647 = 37         A:75 X:FF Y:FD P:65 SP:FB PPU:218, 98 CYC:24812
F535  EA        NOP                             A:6E X:FF Y:FD P:65 SP:FB PPU:218,119 CYC:24819
F536  EA        NOP                             A:6E X:FF Y:FD P:65 SP:FB PPU:218,125 CYC:24821
F537  EA        NOP                             A:6E X:FF Y:FD P:65 SP:FB PPU:218,131 CYC:24823
F538  EA        NOP                             A:6E X:FF Y:FD P:65 SP:FB PPU:218,137 CYC:24825
F539  20 46 FB  JSR $FB46                       A:6E X:FF Y:FD P:65 SP:FB PPU:218,143 CYC:24827
FB46  50 2D     BVC $FB75                       A:6E X:FF Y:FD P:65 SP:F9 PPU:218,161 CYC:24833
FB48  F0 2B     BEQ $FB75                       A:6E X:FF Y:FD P:65 SP:F9 PPU:218,167 CYC:24835
FB4A  30 29     BMI $FB75                       A:6E X:FF Y:FD P:65 SP:F9 PPU:218,173 CYC:24837
FB4C  90 27     BCC $FB75                       A:6E X:FF Y:FD P:65 SP:F9 PPU:218,179 CYC:24839
FB4E  C9 6E     CMP #$6E                        A:6E X:FF Y:FD P:65 SP:F9 PPU:218,185 CYC:24841
FB50  D0 23     BNE $FB75                       A:6E X:FF Y:FD P:67 SP:F9 PPU:218,191 CYC:24843
FB52  60        RTS                             A:6E X:FF Y:FD P:67 SP:F9 PPU:218,197 CYC:24845
F53C  AD 47 06  LDA $0647 = 1B                  A:6E X:FF Y:FD P:67 SP:FB PPU:218,215 CYC:24851
F53F  C9 1B     CMP #$1B                        A:1B X:FF Y:FD P:65 SP:FB PPU:218,227 CYC:24855
F541  F0 02     BEQ $F545                       A:1B X:FF Y:FD P:67 SP:FB PPU:218,233 CYC:24857
F545  60        RTS                             A:1B X:FF Y:FD P:67 SP:FB PPU:218,242 CYC:24860
C64A  A5 00     LDA $00 = 00                    A:1B X:FF Y:FD P:67 SP:FD PPU:218,260 CYC:24866
C64C  85 11     STA $11 = 00                    A:00 X:FF Y:FD P:67 SP:FD PPU:218,269 CYC:24869
C64E  A9 00     LDA #$00                        A:00 X:FF Y:FD P:67 SP:FD PPU:218,278 CYC:24872
C650  85 00     STA $00 = 00                    A:00 X:FF Y:FD P:67 SP:FD PPU:218,284 CYC:24874
C652  20 46 F5  JSR $F546                       A:00 X:FF Y:FD P:67 SP:FD PPU:218,293 CYC:24877
F546  A9 FF     LDA #$FF                        A:00 X:FF Y:FD P:67 SP:FB PPU:218,311 CYC:24883
F548  85 01     STA $01 = FF                    A:FF X:FF Y:FD P:E5 SP:FB PPU:218,317 CYC:24885
F54A  A0 01     LDY #$01                        A:FF X:FF Y:FD P:E5 SP:FB PPU:218,326 CYC:24888
F54C  A2 02     LDX #$02                        A:FF X:FF Y:01 P:65 SP:FB PPU:218,332 CYC:24890
F54E  A9 47     LDA #$47                        A:FF X:02 Y:01 P:65 SP:FB PPU:218,338 CYC:24892
F550  85 47     STA $47 = 1B                    A:47 X:02 Y:01 P:65 SP:FB PPU:219,  3 CYC:24894
F552  A9 06     LDA #$06                        A:47 X:02 Y:01 P:65 SP:FB PPU:219, 12 CYC:24897
F554  85 48     STA $48 = 06                    A:06 X:02 Y:01 P:65 SP:FB PPU:219, 18 CYC:24899
F556  A9 A5     LDA #$A5                        A:06 X:02 Y:01 P:65 SP:FB PPU:219, 27 CYC:24902
F558  8D 47 06  STA $0647 = 1B                  A:A5 X:02 Y:01 P:E5 SP:FB PPU:219, 33 CYC:24904
F55B  20 E9 FA  JSR $FAE9                       A:A5 X:02 Y:01 P:E5 SP:FB PPU:219, 45 CYC:24908
FAE9  24 01     BIT $01 = FF                    A:A5 X:02 Y:01 P:E5 SP:F9 PPU:219, 63 CYC:24914
FAEB  18        CLC                             A:A5 X:02 Y:01 P:E5 SP:F9 PPU:219, 72 CYC:24917
FAEC  A9 B2     LDA #$B2                        A:A5 X:02 Y:01 P:E4 SP:F9 PPU:219, 78 CYC:24919
FAEE  60        RTS                             A:B2 X:02 Y:01 P:E4 SP:F9 PPU:219, 84 CYC:24921
F55E  63 45    *RRA ($45,X) @ 47 = 0647 = A5    A:B2 X:02 Y:01 P:E4 SP:FB PPU:219,102 CYC:24927
F560  EA        NOP                             A:05 X:02 Y:01 P:25 SP:FB PPU:219,126 CYC:24935
F561  EA        NOP                             A:05 X:02 Y:01 P:25 SP:FB PPU:219,132 CYC:24937
F562  EA        NOP                             A:05 X:02 Y:01 P:25 SP:FB PPU:219,138 CYC:24939
F563  EA        NOP                             A:05 X:02 Y:01 P:25 SP:FB PPU:219,144 CYC:24941
F564  20 EF FA  JSR $FAEF                       A:05 X:02 Y:01 P:25 SP:FB PPU:219,150 CYC:24943
FAEF  70 2A     BVS $FB1B                       A:05 X:02 Y:01 P:25 SP:F9 PPU:219,168 CYC:24949
FAF1  90 28     BCC $FB1B                       A:05 X:02 Y:01 P:25 SP:F9 PPU:219,174 CYC:24951
FAF3  30 26     BMI $FB1B                       A:05 X:02 Y:01 P:25 SP:F9 PPU:219,180 CYC:24953
FAF5  C9 05     CMP #$05                        A:05 X:02 Y:01 P:25 SP:F9 PPU:219,186 CYC:24955
FAF7  D0 22     BNE $FB1B                       A:05 X:02 Y:01 P:27 SP:F9 PPU:219,192 CYC:24957
FAF9  60        RTS                             A:05 X:02 Y:01 P:27 SP:F9 PPU:219,198 CYC:24959
F567  AD 47 06  LDA $0647 = 52                  A:05 X:02 Y:01 P:27 SP:FB PPU:219,216 CYC:24965
F56A  C9 52     CMP #$52                        A:52 X:02 Y:01 P:25 SP:FB PPU:219,228 CYC:24969
F56C  F0 02     BEQ $F570                       A:52 X:02 Y:01 P:27 SP:FB PPU:219,234 CYC:24971
F570  C8        INY                             A:52 X:02 Y:01 P:27 SP:FB PPU:219,243 CYC:24974
F571  A9 29     LDA #$29                        A:52 X:02 Y:02 P:25 SP:FB PPU:219,249 CYC:24976
F573  8D 47 06  STA $0647 = 52                  A:29 X:02 Y:02 P:25 SP:FB PPU:219,255 CYC:24978
F576  20 FA FA  JSR $FAFA                       A:29 X:02 Y:02 P:25 SP:FB PPU:219,267 CYC:24982
FAFA  B8        CLV                             A:29 X:02 Y:02 P:25 SP:F9 PPU:219,285 CYC:24988
FAFB  18        CLC                             A:29 X:02 Y:02 P:25 SP:F9 PPU:219,291 CYC:24990
FAFC  A9 42     LDA #$42                        A:29 X:02 Y:02 P:24 SP:F9 PPU:219,297 CYC:24992
FAFE  60        RTS                             A:42 X:02 Y:02 P:24 SP:F9 PPU:219,303 CYC:24994
F579  63 45    *RRA ($45,X) @ 47 = 0647 = 29    A:42 X:02 Y:02 P:24 SP:FB PPU:219,321 CYC:25000
F57B  EA        NOP                             A:57 X:02 Y:02 P:24 SP:FB PPU:220,  4 CYC:25008
F57C  EA        NOP                             A:57 X:02 Y:02 P:24 SP:FB PPU:220, 10 CYC:25010
F57D  EA        NOP                             A:57 X:02 Y:02 P:24 SP:FB PPU:220, 16 CYC:25012
F57E  EA        NOP                             A:57 X:02 Y:02 P:24 SP:FB PPU:220, 22 CYC:25014
F57F  20 FF FA  JSR $FAFF                       A:57 X:02 Y:02 P:24 SP:FB PPU:220, 28 CYC:25016
FAFF  70 1A     BVS $FB1B                       A:57 X:02 Y:02 P:24 SP:F9 PPU:220, 46 CYC:25022
FB01  30 18     BMI $FB1B                       A:57 X:02 Y:02 P:24 SP:F9 PPU:220, 52 CYC:25024
FB03  B0 16     BCS $FB1B                       A:57 X:02 Y:02 P:24 SP:F9 PPU:220, 58 CYC:25026
FB05  C9 57     CMP #$57                        A:57 X:02 Y:02 P:24 SP:F9 PPU:220, 64 CYC:25028
FB07  D0 12     BNE $FB1B                       A:57 X:02 Y:02 P:27 SP:F9 PPU:220, 70 CYC:25030
FB09  60        RTS                             A:57 X:02 Y:02 P:27 SP:F9 PPU:220, 76 CYC:25032
F582  AD 47 06  LDA $0647 = 14                  A:57 X:02 Y:02 P:27 SP:FB PPU:220, 94 CYC:25038
F585  C9 14     CMP #$14                        A:14 X:02 Y:02 P:25 SP:FB PPU:220,106 CYC:25042
F587  F0 02     BEQ $F58B                       A:14 X:02 Y:02 P:27 SP:FB PPU:220,112 CYC:25044
F58B  C8        INY                             A:14 X:02 Y:02 P:27 SP:FB PPU:220,121 CYC:25047
F58C  A9 37     LDA #$37                        A:14 X:02 Y:03 P:25 SP:FB PPU:220,127 CYC:25049
F58E  8D 47 06  STA $0647 = 14                  A:37 X:02 Y:03 P:25 SP:FB PPU:220,133 CYC:25051
F591  20 0A FB  JSR $FB0A                       A:37 X:02 Y:03 P:25 SP:FB PPU:220,145 CYC:25055
FB0A  24 01     BIT $01 = FF                    A:37 X:02 Y:03 P:25 SP:F9 PPU:220,163 CYC:25061
FB0C  38        SEC                             A:37 X:02 Y:03 P:E5 SP:F9 PPU:220,172 CYC:25064
FB0D  A9 75     LDA #$75                        A:37 X:02 Y:03 P:E5 SP:F9 PPU:220,178 CYC:25066
FB0F  60        RTS                             A:75 X:02 Y:03 P:65 SP:F9 PPU:220,184 CYC:25068
F594  63 45    *RRA ($45,X) @ 47 = 0647 = 37    A:75 X:02 Y:03 P:65 SP:FB PPU:220,202 CYC:25074
F596  EA        NOP                             A:11 X:02 Y:03 P:25 SP:FB PPU:220,226 CYC:25082
F597  EA        NOP                             A:11 X:02 Y:03 P:25 SP:FB PPU:220,232 CYC:25084
F598  EA        NOP                             A:11 X:02 Y:03 P:25 SP:FB PPU:220,238 CYC:25086
F599  EA        NOP                             A:11 X:02 Y:03 P:25 SP:FB PPU:220,244 CYC:25088
F59A  20 10 FB  JSR $FB10                       A:11 X:02 Y:03 P:25 SP:FB PPU:220,250 CYC:25090
FB10  70 09     BVS $FB1B                       A:11 X:02 Y:03 P:25 SP:F9 PPU:220,268 CYC:25096
FB12  30 07     BMI $FB1B                       A:11 X:02 Y:03 P:25 SP:F9 PPU:220,274 CYC:25098
FB14  90 05     BCC $FB1B                       A:11 X:02 Y:03 P:25 SP:F9 PPU:220,280 CYC:25100
FB16  C9 11     CMP #$11                        A:11 X:02 Y:03 P:25 SP:F9 PPU:220,286 CYC:25102
FB18  D0 01     BNE $FB1B                       A:11 X:02 Y:03 P:27 SP:F9 PPU:220,292 CYC:25104
FB1A  60        RTS                             A:11 X:02 Y:03 P:27 SP:F9 PPU:220,298 CYC:25106
F59D  AD 47 06  LDA $0647 = 9B                  A:11 X:02 Y:03 P:27 SP:FB PPU:220,316 CYC:25112
F5A0  C9 9B     CMP #$9B                        A:9B X:02 Y:03 P:A5 SP:FB PPU:220,328 CYC:25116
F5A2  F0 02     BEQ $F5A6                       A:9B X:02 Y:03 P:27 SP:FB PPU:220,334 CYC:25118
F5A6  C8        INY                             A:9B X:02 Y:03 P:27 SP:FB PPU:221,  2 CYC:25121
F5A7  A9 A5     LDA #$A5                        A:9B X:02 Y:04 P:25 SP:FB PPU:221,  8 CYC:25123
F5A9  85 47     STA $47 = 47                    A:A5 X:02 Y:04 P:A5 SP:FB PPU:221, 14 CYC:25125
F5AB  20 E9 FA  JSR $FAE9                       A:A5 X:02 Y:04 P:A5 SP:FB PPU:221, 23 CYC:25128
FAE9  24 01     BIT $01 = FF                    A:A5 X:02 Y:04 P:A5 SP:F9 PPU:221, 41 CYC:25134
FAEB  18        CLC                             A:A5 X:02 Y:04 P:E5 SP:F9 PPU:221, 50 CYC:25137
FAEC  A9 B2     LDA #$B2                        A:A5 X:02 Y:04 P:E4 SP:F9 PPU:221, 56 CYC:25139
FAEE  60        RTS                             A:B2 X:02 Y:04 P:E4 SP:F9 PPU:221, 62 CYC:25141
F5AE  67 47    *RRA $47 = A5                    A:B2 X:02 Y:04 P:E4 SP:FB PPU:221, 80 CYC:25147
F5B0  EA        NOP                             A:05 X:02 Y:04 P:25 SP:FB PPU:221, 95 CYC:25152
F5B1  EA        NOP                             A:05 X:02 Y:04 P:25 SP:FB PPU:221,101 CYC:25154
F5B2  EA        NOP                             A:05 X:02 Y:04 P:25 SP:FB PPU:221,107 CYC:25156
F5B3  EA        NOP                             A:05 X:02 Y:04 P:25 SP:FB PPU:221,113 CYC:25158
F5B4  20 EF FA  JSR $FAEF                       A:05 X:02 Y:04 P:25 SP:FB PPU:221,119 CYC:25160
FAEF  70 2A     BVS $FB1B                       A:05 X:02 Y:04 P:25 SP:F9 PPU:221,137 CYC:25166
FAF1  90 28     BCC $FB1B                       A:05 X:02 Y:04 P:25 SP:F9 PPU:221,143 CYC:25168
FAF3  30 26     BMI $FB1B                       A:05 X:02 Y:04 P:25 SP:F9 PPU:221,149 CYC:25170
FAF5  C9 05     CMP #$05                        A:05 X:02 Y:04 P:25 SP:F9 PPU:221,155 CYC:25172
FAF7  D0 22     BNE $FB1B                       A:05 X:02 Y:04 P:27 SP:F9 PPU:221,161 CYC:25174
FAF9  60        RTS                             A:05 X:02 Y:04 P:27 SP:F9 PPU:221,167 CYC:25176
F5B7  A5 47     LDA $47 = 52                    A:05 X:02 Y:04 P:27 SP:FB PPU:221,185 CYC:25182
F5B9  C9 52     CMP #$52                        A:52 X:02 Y:04 P:25 SP:FB PPU:221,194 CYC:25185
F5BB  F0 02     BEQ $F5BF                       A:52 X:02 Y:04 P:27 SP:FB PPU:221,200 CYC:25187
F5BF  C8        INY                             A:52 X:02 Y:04 P:27 SP:FB PPU:221,209 CYC:25190
F5C0  A9 29     LDA #$29                        A:52 X:02 Y:05 P:25 SP:FB PPU:221,215 CYC:25192
F5C2  85 47     STA $47 = 52                    A:29 X:02 Y:05 P:25 SP:FB PPU:221,221 CYC:25194
F5C4  20 FA FA  JSR $FAFA                       A:29 X:02 Y:05 P:25 SP:FB PPU:221,230 CYC:25197
FAFA  B8        CLV                             A:29 X:02 Y:05 P:25 SP:F9 PPU:221,248 CYC:25203
FAFB  18        CLC                             A:29 X:02 Y:05 P:25 SP:F9 PPU:221,254 CYC:25205
FAFC  A9 42     LDA #$42                        A:29 X:02 Y:05 P:24 SP:F9 PPU:221,260 CYC:25207
FAFE  60        RTS                             A:42 X:02 Y:05 P:24 SP:F9 PPU:221,266 CYC:25209
F5C7  67 47    *RRA $47 = 29                    A:42 X:02 Y:05 P:24 SP:FB PPU:221,284 CYC:25215
F5C9  EA        NOP                             A:57 X:02 Y:05 P:24 SP:FB PPU:221,299 CYC:25220
F5CA  EA        NOP                             A:57 X:02 Y:05 P:24 SP:FB PPU:221,305 CYC:25222
F5CB  EA        NOP                             A:57 X:02 Y:05 P:24 SP:FB PPU:221,311 CYC:25224
F5CC  EA        NOP                             A:57 X:02 Y:05 P:24 SP:FB PPU:221,317 CYC:25226
F5CD  20 FF FA  JSR $FAFF                       A:57 X:02 Y:05 P:24 SP:FB PPU:221,323 CYC:25228
FAFF  70 1A     BVS $FB1B                       A:57 X:02 Y:05 P:24 SP:F9 PPU:222,  0 CYC:25234
FB01  30 18     BMI $FB1B                       A:57 X:02 Y:05 P:24 SP:F9 PPU:222,  6 CYC:25236
FB03  B0 16     BCS $FB1B                       A:57 X:02 Y:05 P:24 SP:F9 PPU:222, 12 CYC:25238
FB05  C9 57     CMP #$57                        A:57 X:02 Y:05 P:24 SP:F9 PPU:222, 18 CYC:25240
FB07  D0 12     BNE $FB1B                       A:57 X:02 Y:05 P:27 SP:F9 PPU:222, 24 CYC:25242
FB09  60        RTS                             A:57 X:02 Y:05 P:27 SP:F9 PPU:222, 30 CYC:25244
F5D0  A5 47     LDA $47 = 14                    A:57 X:02 Y:05 P:27 SP:FB PPU:222, 48 CYC:25250
F5D2  C9 14     CMP #$14                        A:14 X:02 Y:05 P:25 SP:FB PPU:222, 57 CYC:25253
F5D4  F0 02     BEQ $F5D8                       A:14 X:02 Y:05 P:27 SP:FB PPU:222, 63 CYC:25255
F5D8  C8        INY                             A:14 X:02 Y:05 P:27 SP:FB PPU:222, 72 CYC:25258
F5D9  A9 37     LDA #$37                        A:14 X:02 Y:06 P:25 SP:FB PPU:222, 78 CYC:25260
F5DB  85 47     STA $47 = 14                    A:37 X:02 Y:06 P:25 SP:FB PPU:222, 84 CYC:25262
F5DD  20 0A FB  JSR $FB0A                       A:37 X:02 Y:06 P:25 SP:FB PPU:222, 93 CYC:25265
FB0A  24 01     BIT $01 = FF                    A:37 X:02 Y:06 P:25 SP:F9 PPU:222,111 CYC:25271
FB0C  38        SEC                             A:37 X:02 Y:06 P:E5 SP:F9 PPU:222,120 CYC:25274
FB0D  A9 75     LDA #$75                        A:37 X:02 Y:06 P:E5 SP:F9 PPU:222,126 CYC:25276
FB0F  60        RTS                             A:75 X:02 Y:06 P:65 SP:F9 PPU:222,132 CYC:25278
F5E0  67 47    *RRA $47 = 37                    A:75 X:02 Y:06 P:65 SP:FB PPU:222,150 CYC:25284
F5E2  EA        NOP                             A:11 X:02 Y:06 P:25 SP:FB PPU:222,165 CYC:25289
F5E3  EA        NOP                             A:11 X:02 Y:06 P:25 SP:FB PPU:222,171 CYC:25291
F5E4  EA        NOP                             A:11 X:02 Y:06 P:25 SP:FB PPU:222,177 CYC:25293
F5E5  EA        NOP                             A:11 X:02 Y:06 P:25 SP:FB PPU:222,183 CYC:25295
F5E6  20 10 FB  JSR $FB10                       A:11 X:02 Y:06 P:25 SP:FB PPU:222,189 CYC:25297
FB10  70 09     BVS $FB1B                       A:11 X:02 Y:06 P:25 SP:F9 PPU:222,207 CYC:25303
FB12  30 07     BMI $FB1B                       A:11 X:02 Y:06 P:25 SP:F9 PPU:222,213 CYC:25305
FB14  90 05     BCC $FB1B                       A:11 X:02 Y:06 P:25 SP:F9 PPU:222,219 CYC:25307
FB16  C9 11     CMP #$11                        A:11 X:02 Y:06 P:25 SP:F9 PPU:222,225 CYC:25309
FB18  D0 01     BNE $FB1B                       A:11 X:02 Y:06 P:27 SP:F9 PPU:222,231 CYC:25311
FB1A  60        RTS                             A:11 X:02 Y:06 P:27 SP:F9 PPU:222,237 CYC:25313
F5E9  A5 47     LDA $47 = 9B                    A:11 X:02 Y:06 P:27 SP:FB PPU:222,255 CYC:25319
F5EB  C9 9B     CMP #$9B                        A:9B X:02 Y:06 P:A5 SP:FB PPU:222,264 CYC:25322
F5ED  F0 02     BEQ $F5F1                       A:9B X:02 Y:06 P:27 SP:FB PPU:222,270 CYC:25324
F5F1  C8        INY                             A:9B X:02 Y:06 P:27 SP:FB PPU:222,279 CYC:25327
F5F2  A9 A5     LDA #$A5                        A:9B X:02 Y:07 P:25 SP:FB PPU:222,285 CYC:25329
F5F4  8D 47 06  STA $0647 = 9B                  A:A5 X:02 Y:07 P:A5 SP:FB PPU:222,291 CYC:25331
F5F7  20 E9 FA  JSR $FAE9                       A:A5 X:02 Y:07 P:A5 SP:FB PPU:222,303 CYC:25335
FAE9  24 01     BIT $01 = FF                    A:A5 X:02 Y:07 P:A5 SP:F9 PPU:222,321 CYC:25341
FAEB  18        CLC                             A:A5 X:02 Y:07 P:E5 SP:F9 PPU:222,330 CYC:25344
FAEC  A9 B2     LDA #$B2                        A:A5 X:02 Y:07 P:E4 SP:F9 PPU:222,336 CYC:25346
FAEE  60        RTS                             A:B2 X:02 Y:07 P:E4 SP:F9 PPU:223,  1 CYC:25348
F5FA  6F 47 06 *RRA $0647 = A5                  A:B2 X:02 Y:07 P:E4 SP:FB PPU:223, 19 CYC:25354
F5FD  EA        NOP                             A:05 X:02 Y:07 P:25 SP:FB PPU:223, 37 CYC:25360
F5FE  EA        NOP                             A:05 X:02 Y:07 P:25 SP:FB PPU:223, 43 CYC:25362
F5FF  EA        NOP                             A:05 X:02 Y:07 P:25 SP:FB PPU:223, 49 CYC:25364
F600  EA        NOP                             A:05 X:02 Y:07 P:25 SP:FB PPU:223, 55 CYC:25366
F601  20 EF FA  JSR $FAEF                       A:05 X:02 Y:07 P:25 SP:FB PPU:223, 61 CYC:25368
FAEF  70 2A     BVS $FB1B                       A:05 X:02 Y:07 P:25 SP:F9 PPU:223, 79 CYC:25374
FAF1  90 28     BCC $FB1B                       A:05 X:02 Y:07 P:25 SP:F9 PPU:223, 85 CYC:25376
FAF3  30 26     BMI $FB1B                       A:05 X:02 Y:07 P:25 SP:F9 PPU:223, 91 CYC:25378
FAF5  C9 05     CMP #$05                        A:05 X:02 Y:07 P:25 SP:F9 PPU:223, 97 CYC:25380
FAF7  D0 22     BNE $FB1B                       A:05 X:02 Y:07 P:27 SP:F9 PPU:223,103 CYC:25382
FAF9  60        RTS                             A:05 X:02 Y:07 P:27 SP:F9 PPU:223,109 CYC:25384
F604  AD 47 06  LDA $0647 = 52                  A:05 X:02 Y:07 P:27 SP:FB PPU:223,127 CYC:25390
F607  C9 52     CMP #$52                        A:52 X:02 Y:07 P:25 SP:FB PPU:223,139 CYC:25394
F609  F0 02     BEQ $F60D                       A:52 X:02 Y:07 P:27 SP:FB PPU:223,145 CYC:25396
F60D  C8        INY                             A:52 X:02 Y:07 P:27 SP:FB PPU:223,154 CYC:25399
F60E  A9 29     LDA #$29                        A:52 X:02 Y:08 P:25 SP:FB PPU:223,160 CYC:25401
F610  8D 47 06  STA $0647 = 52                  A:29 X:02 Y:08 P:25 SP:FB PPU:223,166 CYC:25403
F613  20 FA FA  JSR $FAFA                       A:29 X:02 Y:08 P:25 SP:FB PPU:223,178 CYC:25407
FAFA  B8        CLV                             A:29 X:02 Y:08 P:25 SP:F9 PPU:223,196 CYC:25413
FAFB  18        CLC                             A:29 X:02 Y:08 P:25 SP:F9 PPU:223,202 CYC:25415
FAFC  A9 42     LDA #$42                        A:29 X:02 Y:08 P:24 SP:F9 PPU:223,208 CYC:25417
FAFE  60        RTS                             A:42 X:02 Y:08 P:24 SP:F9 PPU:223,214 CYC:25419
F616  6F 47 06 *RRA $0647 = 29                  A:42 X:02 Y:08 P:24 SP:FB PPU:223,232 CYC:25425
F619  EA        NOP                             A:57 X:02 Y:08 P:24 SP:FB PPU:223,250 CYC:25431
F61A  EA        NOP                             A:57 X:02 Y:08 P:24 SP:FB PPU:223,256 CYC:25433
F61B  EA        NOP                             A:57 X:02 Y:08 P:24 SP:FB PPU:223,262 CYC:25435
F61C  EA        NOP                             A:57 X:02 Y:08 P:24 SP:FB PPU:223,268 CYC:25437
F61D  20 FF FA  JSR $FAFF                       A:57 X:02 Y:08 P:24 SP:FB PPU:223,274 CYC:25439
FAFF  70 1A     BVS $FB1B                       A:57 X:02 Y:08 P:24 SP:F9 PPU:223,292 CYC:25445
FB01  30 18     BMI $FB1B                       A:57 X:02 Y:08 P:24 SP:F9 PPU:223,298 CYC:25447
FB03  B0 16     BCS $FB1B                       A:57 X:02 Y:08 P:24 SP:F9 PPU:223,304 CYC:25449
FB05  C9 57     CMP #$57                        A:57 X:02 Y:08 P:24 SP:F9 PPU:223,310 CYC:25451
FB07  D0 12     BNE $FB1B                       A:57 X:02 Y:08 P:27 SP:F9 PPU:223,316 CYC:25453
FB09  60        RTS                             A:57 X:02 Y:08 P:27 SP:F9 PPU:223,322 CYC:25455
F620  AD 47 06  LDA $0647 = 14                  A:57 X:02 Y:08 P:27 SP:FB PPU:223,340 CYC:25461
F623  C9 14     CMP #$14                        A:14 X:02 Y:08 P:25 SP:FB PPU:224, 11 CYC:25465
F625  F0 02     BEQ $F629                       A:14 X:02 Y:08 P:27 SP:FB PPU:224, 17 CYC:25467
F629  C8        INY                             A:14 X:02 Y:08 P:27 SP:FB PPU:224, 26 CYC:25470
F62A  A9 37     LDA #$37                        A:14 X:02 Y:09 P:25 SP:FB PPU:224, 32 CYC:25472
F62C  8D 47 06  STA $0647 = 14                  A:37 X:02 Y:09 P:25 SP:FB PPU:224, 38 CYC:25474
F62F  20 0A FB  JSR $FB0A                       A:37 X:02 Y:09 P:25 SP:FB PPU:224, 50 CYC:25478
FB0A  24 01     BIT $01 = FF                    A:37 X:02 Y:09 P:25 SP:F9 PPU:224, 68 CYC:25484
FB0C  38        SEC                             A:37 X:02 Y:09 P:E5 SP:F9 PPU:224, 77 CYC:25487
FB0D  A9 75     LDA #$75                        A:37 X:02 Y:09 P:E5 SP:F9 PPU:224, 83 CYC:25489
FB0F  60        RTS                             A:75 X:02 Y:09 P:65 SP:F9 PPU:224, 89 CYC:25491
F632  6F 47 06 *RRA $0647 = 37                  A:75 X:02 Y:09 P:65 SP:FB PPU:224,107 CYC:25497
F635  EA        NOP                             A:11 X:02 Y:09 P:25 SP:FB PPU:224,125 CYC:25503
F636  EA        NOP                             A:11 X:02 Y:09 P:25 SP:FB PPU:224,131 CYC:25505
F637  EA        NOP                             A:11 X:02 Y:09 P:25 SP:FB PPU:224,137 CYC:25507
F638  EA        NOP                             A:11 X:02 Y:09 P:25 SP:FB PPU:224,143 CYC:25509
F639  20 10 FB  JSR $FB10                       A:11 X:02 Y:09 P:25 SP:FB PPU:224,149 CYC:25511
FB10  70 09     BVS $FB1B                       A:11 X:02 Y:09 P:25 SP:F9 PPU:224,167 CYC:25517
FB12  30 07     BMI $FB1B                       A:11 X:02 Y:09 P:25 SP:F9 PPU:224,173 CYC:25519
FB14  90 05     BCC $FB1B                       A:11 X:02 Y:09 P:25 SP:F9 PPU:224,179 CYC:25521
FB16  C9 11     CMP #$11                        A:11 X:02 Y:09 P:25 SP:F9 PPU:224,185 CYC:25523
FB18  D0 01     BNE $FB1B                       A:11 X:02 Y:09 P:27 SP:F9 PPU:224,191 CYC:25525
FB1A  60        RTS                             A:11 X:02 Y:09 P:27 SP:F9 PPU:224,197 CYC:25527
F63C  AD 47 06  LDA $0647 = 9B                  A:11 X:02 Y:09 P:27 SP:FB PPU:224,215 CYC:25533
F63F  C9 9B     CMP #$9B                        A:9B X:02 Y:09 P:A5 SP:FB PPU:224,227 CYC:25537
F641  F0 02     BEQ $F645                       A:9B X:02 Y:09 P:27 SP:FB PPU:224,233 CYC:25539
F645  A9 A5     LDA #$A5                        A:9B X:02 Y:09 P:27 SP:FB PPU:224,242 CYC:25542
F647  8D 47 06  STA $0647 = 9B                  A:A5 X:02 Y:09 P:A5 SP:FB PPU:224,248 CYC:25544
F64A  A9 48     LDA #$48                        A:A5 X:02 Y:09 P:A5 SP:FB PPU:224,260 CYC:25548
F64C  85 45     STA $45 = 48                    A:48 X:02 Y:09 P:25 SP:FB PPU:224,266 CYC:25550
F64E  A9 05     LDA #$05                        A:48 X:02 Y:09 P:25 SP:FB PPU:224,275 CYC:25553
F650  85 46     STA $46 = 05                    A:05 X:02 Y:09 P:25 SP:FB PPU:224,281 CYC:25555
F652  A0 FF     LDY #$FF                        A:05 X:02 Y:09 P:25 SP:FB PPU:224,290 CYC:25558
F654  20 E9 FA  JSR $FAE9                       A:05 X:02 Y:FF P:A5 SP:FB PPU:224,296 CYC:25560
FAE9  24 01     BIT $01 = FF                    A:05 X:02 Y:FF P:A5 SP:F9 PPU:224,314 CYC:25566
FAEB  18        CLC                             A:05 X:02 Y:FF P:E5 SP:F9 PPU:224,323 CYC:25569
FAEC  A9 B2     LDA #$B2                        A:05 X:02 Y:FF P:E4 SP:F9 PPU:224,329 CYC:25571
FAEE  60        RTS                             A:B2 X:02 Y:FF P:E4 SP:F9 PPU:224,335 CYC:25573
F657  73 45    *RRA ($45),Y = 0548 @ 0647 = A5  A:B2 X:02 Y:FF P:E4 SP:FB PPU:225, 12 CYC:25579
F659  EA        NOP                             A:05 X:02 Y:FF P:25 SP:FB PPU:225, 36 CYC:25587
F65A  EA        NOP                             A:05 X:02 Y:FF P:25 SP:FB PPU:225, 42 CYC:25589
F65B  08        PHP                             A:05 X:02 Y:FF P:25 SP:FB PPU:225, 48 CYC:25591
F65C  48        PHA                             A:05 X:02 Y:FF P:25 SP:FA PPU:225, 57 CYC:25594
F65D  A0 0A     LDY #$0A                        A:05 X:02 Y:FF P:25 SP:F9 PPU:225, 66 CYC:25597
F65F  68        PLA                             A:05 X:02 Y:0A P:25 SP:F9 PPU:225, 72 CYC:25599
F660  28        PLP                             A:05 X:02 Y:0A P:25 SP:FA PPU:225, 84 CYC:25603
F661  20 EF FA  JSR $FAEF                       A:05 X:02 Y:0A P:25 SP:FB PPU:225, 96 CYC:25607
FAEF  70 2A     BVS $FB1B                       A:05 X:02 Y:0A P:25 SP:F9 PPU:225,114 CYC:25613
FAF1  90 28     BCC $FB1B                       A:05 X:02 Y:0A P:25 SP:F9 PPU:225,120 CYC:25615
FAF3  30 26     BMI $FB1B                       A:05 X:02 Y:0A P:25 SP:F9 PPU:225,126 CYC:25617
FAF5  C9 05     CMP #$05                        A:05 X:02 Y:0A P:25 SP:F9 PPU:225,132 CYC:25619
FAF7  D0 22     BNE $FB1B                       A:05 X:02 Y:0A P:27 SP:F9 PPU:225,138 CYC:25621
FAF9  60        RTS                             A:05 X:02 Y:0A P:27 SP:F9 PPU:225,144 CYC:25623
F664  AD 47 06  LDA $0647 = 52                  A:05 X:02 Y:0A P:27 SP:FB PPU:225,162 CYC:25629
F667  C9 52     CMP #$52                        A:52 X:02 Y:0A P:25 SP:FB PPU:225,174 CYC:25633
F669  F0 02     BEQ $F66D                       A:52 X:02 Y:0A P:27 SP:FB PPU:225,180 CYC:25635
F66D  A0 FF     LDY #$FF                        A:52 X:02 Y:0A P:27 SP:FB PPU:225,189 CYC:25638
F66F  A9 29     LDA #$29                        A:52 X:02 Y:FF P:A5 SP:FB PPU:225,195 CYC:25640
F671  8D 47 06  STA $0647 = 52                  A:29 X:02 Y:FF P:25 SP:FB PPU:225,201 CYC:25642
F674  20 FA FA  JSR $FAFA                       A:29 X:02 Y:FF P:25 SP:FB PPU:225,213 CYC:25646
FAFA  B8        CLV                             A:29 X:02 Y:FF P:25 SP:F9 PPU:225,231 CYC:25652
FAFB  18        CLC                             A:29 X:02 Y:FF P:25 SP:F9 PPU:225,237 CYC:25654
FAFC  A9 42     LDA #$42                        A:29 X:02 Y:FF P:24 SP:F9 PPU:225,243 CYC:25656
FAFE  60        RTS                             A:42 X:02 Y:FF P:24 SP:F9 PPU:225,249 CYC:25658
F677  73 45    *RRA ($45),Y = 0548 @ 0647 = 29  A:42 X:02 Y:FF P:24 SP:FB PPU:225,267 CYC:25664
F679  EA        NOP                             A:57 X:02 Y:FF P:24 SP:FB PPU:225,291 CYC:25672
F67A  EA        NOP                             A:57 X:02 Y:FF P:24 SP:FB PPU:225,297 CYC:25674
F67B  08        PHP                             A:57 X:02 Y:FF P:24 SP:FB PPU:225,303 CYC:25676
F67C  48        PHA                             A:57 X:02 Y:FF P:24 SP:FA PPU:225,312 CYC:25679
F67D  A0 0B     LDY #$0B                        A:57 X:02 Y:FF P:24 SP:F9 PPU:225,321 CYC:25682
F67F  68        PLA                             A:57 X:02 Y:0B P:24 SP:F9 PPU:225,327 CYC:25684
F680  28        PLP                             A:57 X:02 Y:0B P:24 SP:FA PPU:225,339 CYC:25688
F681  20 FF FA  JSR $FAFF                       A:57 X:02 Y:0B P:24 SP:FB PPU:226, 10 CYC:25692
FAFF  70 1A     BVS $FB1B                       A:57 X:02 Y:0B P:24 SP:F9 PPU:226, 28 CYC:25698
FB01  30 18     BMI $FB1B                       A:57 X:02 Y:0B P:24 SP:F9 PPU:226, 34 CYC:25700
FB03  B0 16     BCS $FB1B                       A:57 X:02 Y:0B P:24 SP:F9 PPU:226, 40 CYC:25702
FB05  C9 57     CMP #$57                        A:57 X:02 Y:0B P:24 SP:F9 PPU:226, 46 CYC:25704
FB07  D0 12     BNE $FB1B                       A:57 X:02 Y:0B P:27 SP:F9 PPU:226, 52 CYC:25706
FB09  60        RTS                             A:57 X:02 Y:0B P:27 SP:F9 PPU:226, 58 CYC:25708
F684  AD 47 06  LDA $0647 = 14                  A:57 X:02 Y:0B P:27 SP:FB PPU:226, 76 CYC:25714
F687  C9 14     CMP #$14                        A:14 X:02 Y:0B P:25 SP:FB PPU:226, 88 CYC:25718
F689  F0 02     BEQ $F68D                       A:14 X:02 Y:0B P:27 SP:FB PPU:226, 94 CYC:25720
F68D  A0 FF     LDY #$FF                        A:14 X:02 Y:0B P:27 SP:FB PPU:226,103 CYC:25723
F68F  A9 37     LDA #$37                        A:14 X:02 Y:FF P:A5 SP:FB PPU:226,109 CYC:25725
F691  8D 47 06  STA $0647 = 14                  A:37 X:02 Y:FF P:25 SP:FB PPU:226,115 CYC:25727
F694  20 0A FB  JSR $FB0A                       A:37 X:02 Y:FF P:25 SP:FB PPU:226,127 CYC:25731
FB0A  24 01     BIT $01 = FF                    A:37 X:02 Y:FF P:25 SP:F9 PPU:226,145 CYC:25737
FB0C  38        SEC                             A:37 X:02 Y:FF P:E5 SP:F9 PPU:226,154 CYC:25740
FB0D  A9 75     LDA #$75                        A:37 X:02 Y:FF P:E5 SP:F9 PPU:226,160 CYC:25742
FB0F  60        RTS                             A:75 X:02 Y:FF P:65 SP:F9 PPU:226,166 CYC:25744
F697  73 45    *RRA ($45),Y = 0548 @ 0647 = 37  A:75 X:02 Y:FF P:65 SP:FB PPU:226,184 CYC:25750
F699  EA        NOP                             A:11 X:02 Y:FF P:25 SP:FB PPU:226,208 CYC:25758
F69A  EA        NOP                             A:11 X:02 Y:FF P:25 SP:FB PPU:226,214 CYC:25760
F69B  08        PHP                             A:11 X:02 Y:FF P:25 SP:FB PPU:226,220 CYC:25762
F69C  48        PHA                             A:11 X:02 Y:FF P:25 SP:FA PPU:226,229 CYC:25765
F69D  A0 0C     LDY #$0C                        A:11 X:02 Y:FF P:25 SP:F9 PPU:226,238 CYC:25768
F69F  68        PLA                             A:11 X:02 Y:0C P:25 SP:F9 PPU:226,244 CYC:25770
F6A0  28        PLP                             A:11 X:02 Y:0C P:25 SP:FA PPU:226,256 CYC:25774
F6A1  20 10 FB  JSR $FB10                       A:11 X:02 Y:0C P:25 SP:FB PPU:226,268 CYC:25778
FB10  70 09     BVS $FB1B                       A:11 X:02 Y:0C P:25 SP:F9 PPU:226,286 CYC:25784
FB12  30 07     BMI $FB1B                       A:11 X:02 Y:0C P:25 SP:F9 PPU:226,292 CYC:25786
FB14  90 05     BCC $FB1B                       A:11 X:02 Y:0C P:25 SP:F9 PPU:226,298 CYC:25788
FB16  C9 11     CMP #$11                        A:11 X:02 Y:0C P:25 SP:F9 PPU:226,304 CYC:25790
FB18  D0 01     BNE $FB1B                       A:11 X:02 Y:0C P:27 SP:F9 PPU:226,310 CYC:25792
FB1A  60        RTS                             A:11 X:02 Y:0C P:27 SP:F9 PPU:226,316 CYC:25794
F6A4  AD 47 06  LDA $0647 = 9B                  A:11 X:02 Y:0C P:27 SP:FB PPU:226,334 CYC:25800
F6A7  C9 9B     CMP #$9B                        A:9B X:02 Y:0C P:A5 SP:FB PPU:227,  5 CYC:25804
F6A9  F0 02     BEQ $F6AD                       A:9B X:02 Y:0C P:27 SP:FB PPU:227, 11 CYC:25806
F6AD  A0 0D     LDY #$0D                        A:9B X:02 Y:0C P:27 SP:FB PPU:227, 20 CYC:25809
F6AF  A2 FF     LDX #$FF                        A:9B X:02 Y:0D P:25 SP:FB PPU:227, 26 CYC:25811
F6B1  A9 A5     LDA #$A5                        A:9B X:FF Y:0D P:A5 SP:FB PPU:227, 32 CYC:25813
F6B3  85 47     STA $47 = 9B                    A:A5 X:FF Y:0D P:A5 SP:FB PPU:227, 38 CYC:25815
F6B5  20 E9 FA  JSR $FAE9                       A:A5 X:FF Y:0D P:A5 SP:FB PPU:227, 47 CYC:25818
FAE9  24 01     BIT $01 = FF                    A:A5 X:FF Y:0D P:A5 SP:F9 PPU:227, 65 CYC:25824
FAEB  18        CLC                             A:A5 X:FF Y:0D P:E5 SP:F9 PPU:227, 74 CYC:25827
FAEC  A9 B2     LDA #$B2                        A:A5 X:FF Y:0D P:E4 SP:F9 PPU:227, 80 CYC:25829
FAEE  60        RTS                             A:B2 X:FF Y:0D P:E4 SP:F9 PPU:227, 86 CYC:25831
F6B8  77 48    *RRA $48,X @ 47 = A5             A:B2 X:FF Y:0D P:E4 SP:FB PPU:227,104 CYC:25837
F6BA  EA        NOP                             A:05 X:FF Y:0D P:25 SP:FB PPU:227,122 CYC:25843
F6BB  EA        NOP                             A:05 X:FF Y:0D P:25 SP:FB PPU:227,128 CYC:25845
F6BC  EA        NOP                             A:05 X:FF Y:0D P:25 SP:FB PPU:227,134 CYC:25847
F6BD  EA        NOP                             A:05 X:FF Y:0D P:25 SP:FB PPU:227,140 CYC:25849
F6BE  20 EF FA  JSR $FAEF                       A:05 X:FF Y:0D P:25 SP:FB PPU:227,146 CYC:25851
FAEF  70 2A     BVS $FB1B                       A:05 X:FF Y:0D P:25 SP:F9 PPU:227,164 CYC:25857
FAF1  90 28     BCC $FB1B                       A:05 X:FF Y:0D P:25 SP:F9 PPU:227,170 CYC:25859
FAF3  30 26     BMI $FB1B                       A:05 X:FF Y:0D P:25 SP:F9 PPU:227,176 CYC:25861
FAF5  C9 05     CMP #$05                        A:05 X:FF Y:0D P:25 SP:F9 PPU:227,182 CYC:25863
FAF7  D0 22     BNE $FB1B                       A:05 X:FF Y:0D P:27 SP:F9 PPU:227,188 CYC:25865
FAF9  60        RTS                             A:05 X:FF Y:0D P:27 SP:F9 PPU:227,194 CYC:25867
F6C1  A5 47     LDA $47 = 52                    A:05 X:FF Y:0D P:27 SP:FB PPU:227,212 CYC:25873
F6C3  C9 52     CMP #$52                        A:52 X:FF Y:0D P:25 SP:FB PPU:227,221 CYC:25876
F6C5  F0 02     BEQ $F6C9                       A:52 X:FF Y:0D P:27 SP:FB PPU:227,227 CYC:25878
F6C9  C8        INY                             A:52 X:FF Y:0D P:27 SP:FB PPU:227,236 CYC:25881
F6CA  A9 29     LDA #$29                        A:52 X:FF Y:0E P:25 SP:FB PPU:227,242 CYC:25883
F6CC  85 47     STA $47 = 52                    A:29 X:FF Y:0E P:25 SP:FB PPU:227,248 CYC:25885
F6CE  20 FA FA  JSR $FAFA                       A:29 X:FF Y:0E P:25 SP:FB PPU:227,257 CYC:25888
FAFA  B8        CLV                             A:29 X:FF Y:0E P:25 SP:F9 PPU:227,275 CYC:25894
FAFB  18        CLC                             A:29 X:FF Y:0E P:25 SP:F9 PPU:227,281 CYC:25896
FAFC  A9 42     LDA #$42                        A:29 X:FF Y:0E P:24 SP:F9 PPU:227,287 CYC:25898
FAFE  60        RTS                             A:42 X:FF Y:0E P:24 SP:F9 PPU:227,293 CYC:25900
F6D1  77 48    *RRA $48,X @ 47 = 29             A:42 X:FF Y:0E P:24 SP:FB PPU:227,311 CYC:25906
F6D3  EA        NOP                             A:57 X:FF Y:0E P:24 SP:FB PPU:227,329 CYC:25912
F6D4  EA        NOP                             A:57 X:FF Y:0E P:24 SP:FB PPU:227,335 CYC:25914
F6D5  EA        NOP                             A:57 X:FF Y:0E P:24 SP:FB PPU:228,  0 CYC:25916
F6D6  EA        NOP                             A:57 X:FF Y:0E P:24 SP:FB PPU:228,  6 CYC:25918
F6D7  20 FF FA  JSR $FAFF                       A:57 X:FF Y:0E P:24 SP:FB PPU:228, 12 CYC:25920
FAFF  70 1A     BVS $FB1B                       A:57 X:FF Y:0E P:24 SP:F9 PPU:228, 30 CYC:25926
FB01  30 18     BMI $FB1B                       A:57 X:FF Y:0E P:24 SP:F9 PPU:228, 36 CYC:25928
FB03  B0 16     BCS $FB1B                       A:57 X:FF Y:0E P:24 SP:F9 PPU:228, 42 CYC:25930
FB05  C9 57     CMP #$57                        A:57 X:FF Y:0E P:24 SP:F9 PPU:228, 48 CYC:25932
FB07  D0 12     BNE $FB1B                       A:57 X:FF Y:0E P:27 SP:F9 PPU:228, 54 CYC:25934
FB09  60        RTS                             A:57 X:FF Y:0E P:27 SP:F9 PPU:228, 60 CYC:25936
F6DA  A5 47     LDA $47 = 14                    A:57 X:FF Y:0E P:27 SP:FB PPU:228, 78 CYC:25942
F6DC  C9 14     CMP #$14                        A:14 X:FF Y:0E P:25 SP:FB PPU:228, 87 CYC:25945
F6DE  F0 02     BEQ $F6E2                       A:14 X:FF Y:0E P:27 SP:FB PPU:228, 93 CYC:25947
F6E2  C8        INY                             A:14 X:FF Y:0E P:27 SP:FB PPU:228,102 CYC:25950
F6E3  A9 37     LDA #$37                        A:14 X:FF Y:0F P:25 SP:FB PPU:228,108 CYC:25952
F6E5  85 47     STA $47 = 14                    A:37 X:FF Y:0F P:25 SP:FB PPU:228,114 CYC:25954
F6E7  20 0A FB  JSR $FB0A                       A:37 X:FF Y:0F P:25 SP:FB PPU:228,123 CYC:25957
FB0A  24 01     BIT $01 = FF                    A:37 X:FF Y:0F P:25 SP:F9 PPU:228,141 CYC:25963
FB0C  38        SEC                             A:37 X:FF Y:0F P:E5 SP:F9 PPU:228,150 CYC:25966
FB0D  A9 75     LDA #$75                        A:37 X:FF Y:0F P:E5 SP:F9 PPU:228,156 CYC:25968
FB0F  60        RTS                             A:75 X:FF Y:0F P:65 SP:F9 PPU:228,162 CYC:25970
F6EA  77 48    *RRA $48,X @ 47 = 37             A:75 X:FF Y:0F P:65 SP:FB PPU:228,180 CYC:25976
F6EC  EA        NOP                             A:11 X:FF Y:0F P:25 SP:FB PPU:228,198 CYC:25982
F6ED  EA        NOP                             A:11 X:FF Y:0F P:25 SP:FB PPU:228,204 CYC:25984
F6EE  EA        NOP                             A:11 X:FF Y:0F P:25 SP:FB PPU:228,210 CYC:25986
F6EF  EA        NOP                             A:11 X:FF Y:0F P:25 SP:FB PPU:228,216 CYC:25988
F6F0  20 10 FB  JSR $FB10                       A:11 X:FF Y:0F P:25 SP:FB PPU:228,222 CYC:25990
FB10  70 09     BVS $FB1B                       A:11 X:FF Y:0F P:25 SP:F9 PPU:228,240 CYC:25996
FB12  30 07     BMI $FB1B                       A:11 X:FF Y:0F P:25 SP:F9 PPU:228,246 CYC:25998
FB14  90 05     BCC $FB1B                       A:11 X:FF Y:0F P:25 SP:F9 PPU:228,252 CYC:26000
FB16  C9 11     CMP #$11                        A:11 X:FF Y:0F P:25 SP:F9 PPU:228,258 CYC:26002
FB18  D0 01     BNE $FB1B                       A:11 X:FF Y:0F P:27 SP:F9 PPU:228,264 CYC:26004
FB1A  60        RTS                             A:11 X:FF Y:0F P:27 SP:F9 PPU:228,270 CYC:26006
F6F3  A5 47     LDA $47 = 9B                    A:11 X:FF Y:0F P:27 SP:FB PPU:228,288 CYC:26012
F6F5  C9 9B     CMP #$9B                        A:9B X:FF Y:0F P:A5 SP:FB PPU:228,297 CYC:26015
F6F7  F0 02     BEQ $F6FB                       A:9B X:FF Y:0F P:27 SP:FB PPU:228,303 CYC:26017
F6FB  A9 A5     LDA #$A5                        A:9B X:FF Y:0F P:27 SP:FB PPU:228,312 CYC:26020
F6FD  8D 47 06  STA $0647 = 9B                  A:A5 X:FF Y:0F P:A5 SP:FB PPU:228,318 CYC:26022
F700  A0 FF     LDY #$FF                        A:A5 X:FF Y:0F P:A5 SP:FB PPU:228,330 CYC:26026
F702  20 E9 FA  JSR $FAE9                       A:A5 X:FF Y:FF P:A5 SP:FB PPU:228,336 CYC:26028
FAE9  24 01     BIT $01 = FF                    A:A5 X:FF Y:FF P:A5 SP:F9 PPU:229, 13 CYC:26034
FAEB  18        CLC                             A:A5 X:FF Y:FF P:E5 SP:F9 PPU:229, 22 CYC:26037
FAEC  A9 B2     LDA #$B2                        A:A5 X:FF Y:FF P:E4 SP:F9 PPU:229, 28 CYC:26039
FAEE  60        RTS                             A:B2 X:FF Y:FF P:E4 SP:F9 PPU:229, 34 CYC:26041
F705  7B 48 05 *RRA $0548,Y @ 0647 = A5         A:B2 X:FF Y:FF P:E4 SP:FB PPU:229, 52 CYC:26047
F708  EA        NOP                             A:05 X:FF Y:FF P:25 SP:FB PPU:229, 73 CYC:26054
F709  EA        NOP                             A:05 X:FF Y:FF P:25 SP:FB PPU:229, 79 CYC:26056
F70A  08        PHP                             A:05 X:FF Y:FF P:25 SP:FB PPU:229, 85 CYC:26058
F70B  48        PHA                             A:05 X:FF Y:FF P:25 SP:FA PPU:229, 94 CYC:26061
F70C  A0 10     LDY #$10                        A:05 X:FF Y:FF P:25 SP:F9 PPU:229,103 CYC:26064
F70E  68        PLA                             A:05 X:FF Y:10 P:25 SP:F9 PPU:229,109 CYC:26066
F70F  28        PLP                             A:05 X:FF Y:10 P:25 SP:FA PPU:229,121 CYC:26070
F710  20 EF FA  JSR $FAEF                       A:05 X:FF Y:10 P:25 SP:FB PPU:229,133 CYC:26074
FAEF  70 2A     BVS $FB1B                       A:05 X:FF Y:10 P:25 SP:F9 PPU:229,151 CYC:26080
FAF1  90 28     BCC $FB1B                       A:05 X:FF Y:10 P:25 SP:F9 PPU:229,157 CYC:26082
FAF3  30 26     BMI $FB1B                       A:05 X:FF Y:10 P:25 SP:F9 PPU:229,163 CYC:26084
FAF5  C9 05     CMP #$05                        A:05 X:FF Y:10 P:25 SP:F9 PPU:229,169 CYC:26086
FAF7  D0 22     BNE $FB1B                       A:05 X:FF Y:10 P:27 SP:F9 PPU:229,175 CYC:26088
FAF9  60        RTS                             A:05 X:FF Y:10 P:27 SP:F9 PPU:229,181 CYC:26090
F713  AD 47 06  LDA $0647 = 52                  A:05 X:FF Y:10 P:27 SP:FB PPU:229,199 CYC:26096
F716  C9 52     CMP #$52                        A:52 X:FF Y:10 P:25 SP:FB PPU:229,211 CYC:26100
F718  F0 02     BEQ $F71C                       A:52 X:FF Y:10 P:27 SP:FB PPU:229,217 CYC:26102
F71C  A0 FF     LDY #$FF                        A:52 X:FF Y:10 P:27 SP:FB PPU:229,226 CYC:26105
F71E  A9 29     LDA #$29                        A:52 X:FF Y:FF P:A5 SP:FB PPU:229,232 CYC:26107
F720  8D 47 06  STA $0647 = 52                  A:29 X:FF Y:FF P:25 SP:FB PPU:229,238 CYC:26109
F723  20 FA FA  JSR $FAFA                       A:29 X:FF Y:FF P:25 SP:FB PPU:229,250 CYC:26113
FAFA  B8        CLV                             A:29 X:FF Y:FF P:25 SP:F9 PPU:229,268 CYC:26119
FAFB  18        CLC                             A:29 X:FF Y:FF P:25 SP:F9 PPU:229,274 CYC:26121
FAFC  A9 42     LDA #$42                        A:29 X:FF Y:FF P:24 SP:F9 PPU:229,280 CYC:26123
FAFE  60        RTS                             A:42 X:FF Y:FF P:24 SP:F9 PPU:229,286 CYC:26125
F726  7B 48 05 *RRA $0548,Y @ 0647 = 29         A:42 X:FF Y:FF P:24 SP:FB PPU:229,304 CYC:26131
F729  EA        NOP                             A:57 X:FF Y:FF P:24 SP:FB PPU:229,325 CYC:26138
F72A  EA        NOP                             A:57 X:FF Y:FF P:24 SP:FB PPU:229,331 CYC:26140
F72B  08        PHP                             A:57 X:FF Y:FF P:24 SP:FB PPU:229,337 CYC:26142
F72C  48        PHA                             A:57 X:FF Y:FF P:24 SP:FA PPU:230,  5 CYC:26145
F72D  A0 11     LDY #$11                        A:57 X:FF Y:FF P:24 SP:F9 PPU:230, 14 CYC:26148
F72F  68        PLA                             A:57 X:FF Y:11 P:24 SP:F9 PPU:230, 20 CYC:26150
F730  28        PLP                             A:57 X:FF Y:11 P:24 SP:FA PPU:230, 32 CYC:26154
F731  20 FF FA  JSR $FAFF                       A:57 X:FF Y:11 P:24 SP:FB PPU:230, 44 CYC:26158
FAFF  70 1A     BVS $FB1B                       A:57 X:FF Y:11 P:24 SP:F9 PPU:230, 62 CYC:26164
FB01  30 18     BMI $FB1B                       A:57 X:FF Y:11 P:24 SP:F9 PPU:230, 68 CYC:26166
FB03  B0 16     BCS $FB1B                       A:57 X:FF Y:11 P:24 SP:F9 PPU:230, 74 CYC:26168
FB05  C9 57     CMP #$57                        A:57 X:FF Y:11 P:24 SP:F9 PPU:230, 80 CYC:26170
FB07  D0 12     BNE $FB1B                       A:57 X:FF Y:11 P:27 SP:F9 PPU:230, 86 CYC:26172
FB09  60        RTS                             A:57 X:FF Y:11 P:27 SP:F9 PPU:230, 92 CYC:26174
F734  AD 47 06  LDA $0647 = 14                  A:57 X:FF Y:11 P:27 SP:FB PPU:230,110 CYC:26180
F737  C9 14     CMP #$14                        A:14 X:FF Y:11 P:25 SP:FB PPU:230,122 CYC:26184
F739  F0 02     BEQ $F73D                       A:14 X:FF Y:11 P:27 SP:FB PPU:230,128 CYC:26186
F73D  A0 FF     LDY #$FF                        A:14 X:FF Y:11 P:27 SP:FB PPU:230,137 CYC:26189
F73F  A9 37     LDA #$37                        A:14 X:FF Y:FF P:A5 SP:FB PPU:230,143 CYC:26191
F741  8D 47 06  STA $0647 = 14                  A:37 X:FF Y:FF P:25 SP:FB PPU:230,149 CYC:26193
F744  20 0A FB  JSR $FB0A                       A:37 X:FF Y:FF P:25 SP:FB PPU:230,161 CYC:26197
FB0A  24 01     BIT $01 = FF                    A:37 X:FF Y:FF P:25 SP:F9 PPU:230,179 CYC:26203
FB0C  38        SEC                             A:37 X:FF Y:FF P:E5 SP:F9 PPU:230,188 CYC:26206
FB0D  A9 75     LDA #$75                        A:37 X:FF Y:FF P:E5 SP:F9 PPU:230,194 CYC:26208
FB0F  60        RTS                             A:75 X:FF Y:FF P:65 SP:F9 PPU:230,200 CYC:26210
F747  7B 48 05 *RRA $0548,Y @ 0647 = 37         A:75 X:FF Y:FF P:65 SP:FB PPU:230,218 CYC:26216
F74A  EA        NOP                             A:11 X:FF Y:FF P:25 SP:FB PPU:230,239 CYC:26223
F74B  EA        NOP                             A:11 X:FF Y:FF P:25 SP:FB PPU:230,245 CYC:26225
F74C  08        PHP                             A:11 X:FF Y:FF P:25 SP:FB PPU:230,251 CYC:26227
F74D  48        PHA                             A:11 X:FF Y:FF P:25 SP:FA PPU:230,260 CYC:26230
F74E  A0 12     LDY #$12                        A:11 X:FF Y:FF P:25 SP:F9 PPU:230,269 CYC:26233
F750  68        PLA                             A:11 X:FF Y:12 P:25 SP:F9 PPU:230,275 CYC:26235
F751  28        PLP                             A:11 X:FF Y:12 P:25 SP:FA PPU:230,287 CYC:26239
F752  20 10 FB  JSR $FB10                       A:11 X:FF Y:12 P:25 SP:FB PPU:230,299 CYC:26243
FB10  70 09     BVS $FB1B                       A:11 X:FF Y:12 P:25 SP:F9 PPU:230,317 CYC:26249
FB12  30 07     BMI $FB1B                       A:11 X:FF Y:12 P:25 SP:F9 PPU:230,323 CYC:26251
FB14  90 05     BCC $FB1B                       A:11 X:FF Y:12 P:25 SP:F9 PPU:230,329 CYC:26253
FB16  C9 11     CMP #$11                        A:11 X:FF Y:12 P:25 SP:F9 PPU:230,335 CYC:26255
FB18  D0 01     BNE $FB1B                       A:11 X:FF Y:12 P:27 SP:F9 PPU:231,  0 CYC:26257
FB1A  60        RTS                             A:11 X:FF Y:12 P:27 SP:F9 PPU:231,  6 CYC:26259
F755  AD 47 06  LDA $0647 = 9B                  A:11 X:FF Y:12 P:27 SP:FB PPU:231, 24 CYC:26265
F758  C9 9B     CMP #$9B                        A:9B X:FF Y:12 P:A5 SP:FB PPU:231, 36 CYC:26269
F75A  F0 02     BEQ $F75E                       A:9B X:FF Y:12 P:27 SP:FB PPU:231, 42 CYC:26271
F75E  A0 13     LDY #$13                        A:9B X:FF Y:12 P:27 SP:FB PPU:231, 51 CYC:26274
F760  A2 FF     LDX #$FF                        A:9B X:FF Y:13 P:25 SP:FB PPU:231, 57 CYC:26276
F762  A9 A5     LDA #$A5                        A:9B X:FF Y:13 P:A5 SP:FB PPU:231, 63 CYC:26278
F764  8D 47 06  STA $0647 = 9B                  A:A5 X:FF Y:13 P:A5 SP:FB PPU:231, 69 CYC:26280
F767  20 E9 FA  JSR $FAE9                       A:A5 X:FF Y:13 P:A5 SP:FB PPU:231, 81 CYC:26284
FAE9  24 01     BIT $01 = FF                    A:A5 X:FF Y:13 P:A5 SP:F9 PPU:231, 99 CYC:26290
FAEB  18        CLC                             A:A5 X:FF Y:13 P:E5 SP:F9 PPU:231,108 CYC:26293
FAEC  A9 B2     LDA #$B2                        A:A5 X:FF Y:13 P:E4 SP:F9 PPU:231,114 CYC:26295
FAEE  60        RTS                             A:B2 X:FF Y:13 P:E4 SP:F9 PPU:231,120 CYC:26297
F76A  7F 48 05 *RRA $0548,X @ 0647 = A5         A:B2 X:FF Y:13 P:E4 SP:FB PPU:231,138 CYC:26303
F76D  EA        NOP                             A:05 X:FF Y:13 P:25 SP:FB PPU:231,159 CYC:26310
F76E  EA        NOP                             A:05 X:FF Y:13 P:25 SP:FB PPU:231,165 CYC:26312
F76F  EA        NOP                             A:05 X:FF Y:13 P:25 SP:FB PPU:231,171 CYC:26314
F770  EA        NOP                             A:05 X:FF Y:13 P:25 SP:FB PPU:231,177 CYC:26316
F771  20 EF FA  JSR $FAEF                       A:05 X:FF Y:13 P:25 SP:FB PPU:231,183 CYC:26318
FAEF  70 2A     BVS $FB1B                       A:05 X:FF Y:13 P:25 SP:F9 PPU:231,201 CYC:26324
FAF1  90 28     BCC $FB1B                       A:05 X:FF Y:13 P:25 SP:F9 PPU:231,207 CYC:26326
FAF3  30 26     BMI $FB1B                       A:05 X:FF Y:13 P:25 SP:F9 PPU:231,213 CYC:26328
FAF5  C9 05     CMP #$05                        A:05 X:FF Y:13 P:25 SP:F9 PPU:231,219 CYC:26330
FAF7  D0 22     BNE $FB1B                       A:05 X:FF Y:13 P:27 SP:F9 PPU:231,225 CYC:26332
FAF9  60        RTS                             A:05 X:FF Y:13 P:27 SP:F9 PPU:231,231 CYC:26334
F774  AD 47 06  LDA $0647 = 52                  A:05 X:FF Y:13 P:27 SP:FB PPU:231,249 CYC:26340
F777  C9 52     CMP #$52                        A:52 X:FF Y:13 P:25 SP:FB PPU:231,261 CYC:26344
F779  F0 02     BEQ $F77D                       A:52 X:FF Y:13 P:27 SP:FB PPU:231,267 CYC:26346
F77D  C8        INY                             A:52 X:FF Y:13 P:27 SP:FB PPU:231,276 CYC:26349
F77E  A9 29     LDA #$29                        A:52 X:FF Y:14 P:25 SP:FB PPU:231,282 CYC:26351
F780  8D 47 06  STA $0647 = 52                  A:29 X:FF Y:14 P:25 SP:FB PPU:231,288 CYC:26353
F783  20 FA FA  JSR $FAFA                       A:29 X:FF Y:14 P:25 SP:FB PPU:231,300 CYC:26357
FAFA  B8        CLV                             A:29 X:FF Y:14 P:25 SP:F9 PPU:231,318 CYC:26363
FAFB  18        CLC                             A:29 X:FF Y:14 P:25 SP:F9 PPU:231,324 CYC:26365
FAFC  A9 42     LDA #$42                        A:29 X:FF Y:14 P:24 SP:F9 PPU:231,330 CYC:26367
FAFE  60        RTS                             A:42 X:FF Y:14 P:24 SP:F9 PPU:231,336 CYC:26369
F786  7F 48 05 *RRA $0548,X @ 0647 = 29         A:42 X:FF Y:14 P:24 SP:FB PPU:232, 13 CYC:26375
F789  EA        NOP                             A:57 X:FF Y:14 P:24 SP:FB PPU:232, 34 CYC:26382
F78A  EA        NOP                             A:57 X:FF Y:14 P:24 SP:FB PPU:232, 40 CYC:26384
F78B  EA        NOP                             A:57 X:FF Y:14 P:24 SP:FB PPU:232, 46 CYC:26386
F78C  EA        NOP                             A:57 X:FF Y:14 P:24 SP:FB PPU:232, 52 CYC:26388
F78D  20 FF FA  JSR $FAFF                       A:57 X:FF Y:14 P:24 SP:FB PPU:232, 58 CYC:26390
FAFF  70 1A     BVS $FB1B                       A:57 X:FF Y:14 P:24 SP:F9 PPU:232, 76 CYC:26396
FB01  30 18     BMI $FB1B                       A:57 X:FF Y:14 P:24 SP:F9 PPU:232, 82 CYC:26398
FB03  B0 16     BCS $FB1B                       A:57 X:FF Y:14 P:24 SP:F9 PPU:232, 88 CYC:26400
FB05  C9 57     CMP #$57                        A:57 X:FF Y:14 P:24 SP:F9 PPU:232, 94 CYC:26402
FB07  D0 12     BNE $FB1B                       A:57 X:FF Y:14 P:27 SP:F9 PPU:232,100 CYC:26404
FB09  60        RTS                             A:57 X:FF Y:14 P:27 SP:F9 PPU:232,106 CYC:26406
F790  AD 47 06  LDA $0647 = 14                  A:57 X:FF Y:14 P:27 SP:FB PPU:232,124 CYC:26412
F793  C9 14     CMP #$14                        A:14 X:FF Y:14 P:25 SP:FB PPU:232,136 CYC:26416
F795  F0 02     BEQ $F799                       A:14 X:FF Y:14 P:27 SP:FB PPU:232,142 CYC:26418
F799  C8        INY                             A:14 X:FF Y:14 P:27 SP:FB PPU:232,151 CYC:26421
F79A  A9 37     LDA #$37                        A:14 X:FF Y:15 P:25 SP:FB PPU:232,157 CYC:26423
F79C  8D 47 06  STA $0647 = 14                  A:37 X:FF Y:15 P:25 SP:FB PPU:232,163 CYC:26425
F79F  20 0A FB  JSR $FB0A                       A:37 X:FF Y:15 P:25 SP:FB PPU:232,175 CYC:26429
FB0A  24 01     BIT $01 = FF                    A:37 X:FF Y:15 P:25 SP:F9 PPU:232,193 CYC:26435
FB0C  38        SEC                             A:37 X:FF Y:15 P:E5 SP:F9 PPU:232,202 CYC:26438
FB0D  A9 75     LDA #$75                        A:37 X:FF Y:15 P:E5 SP:F9 PPU:232,208 CYC:26440
FB0F  60        RTS                             A:75 X:FF Y:15 P:65 SP:F9 PPU:232,214 CYC:26442
F7A2  7F 48 05 *RRA $0548,X @ 0647 = 37         A:75 X:FF Y:15 P:65 SP:FB PPU:232,232 CYC:26448
F7A5  EA        NOP                             A:11 X:FF Y:15 P:25 SP:FB PPU:232,253 CYC:26455
F7A6  EA        NOP                             A:11 X:FF Y:15 P:25 SP:FB PPU:232,259 CYC:26457
F7A7  EA        NOP                             A:11 X:FF Y:15 P:25 SP:FB PPU:232,265 CYC:26459
F7A8  EA        NOP                             A:11 X:FF Y:15 P:25 SP:FB PPU:232,271 CYC:26461
F7A9  20 10 FB  JSR $FB10                       A:11 X:FF Y:15 P:25 SP:FB PPU:232,277 CYC:26463
FB10  70 09     BVS $FB1B                       A:11 X:FF Y:15 P:25 SP:F9 PPU:232,295 CYC:26469
FB12  30 07     BMI $FB1B                       A:11 X:FF Y:15 P:25 SP:F9 PPU:232,301 CYC:26471
FB14  90 05     BCC $FB1B                       A:11 X:FF Y:15 P:25 SP:F9 PPU:232,307 CYC:26473
FB16  C9 11     CMP #$11                        A:11 X:FF Y:15 P:25 SP:F9 PPU:232,313 CYC:26475
FB18  D0 01     BNE $FB1B                       A:11 X:FF Y:15 P:27 SP:F9 PPU:232,319 CYC:26477
FB1A  60        RTS                             A:11 X:FF Y:15 P:27 SP:F9 PPU:232,325 CYC:26479
F7AC  AD 47 06  LDA $0647 = 9B                  A:11 X:FF Y:15 P:27 SP:FB PPU:233,  2 CYC:26485
F7AF  C9 9B     CMP #$9B                        A:9B X:FF Y:15 P:A5 SP:FB PPU:233, 14 CYC:26489
F7B1  F0 02     BEQ $F7B5                       A:9B X:FF Y:15 P:27 SP:FB PPU:233, 20 CYC:26491
F7B5  60        RTS                             A:9B X:FF Y:15 P:27 SP:FB PPU:233, 29 CYC:26494
C655  A5 00     LDA $00 = 00                    A:9B X:FF Y:15 P:27 SP:FD PPU:233, 47 CYC:26500
C657  05 10     ORA $10 = 00                    A:00 X:FF Y:15 P:27 SP:FD PPU:233, 56 CYC:26503
C659  05 11     ORA $11 = 00                    A:00 X:FF Y:15 P:27 SP:FD PPU:233, 65 CYC:26506
C65B  F0 0E     BEQ $C66B                       A:00 X:FF Y:15 P:27 SP:FD PPU:233, 74 CYC:26509
C66B  20 89 C6  JSR $C689                       A:00 X:FF Y:15 P:27 SP:FD PPU:233, 83 CYC:26512
C689  A9 02     LDA #$02                        A:00 X:FF Y:15 P:27 SP:FB PPU:233,101 CYC:26518
C68B  8D 15 40  STA $4015 = FF                  A:02 X:FF Y:15 P:25 SP:FB PPU:233,107 CYC:26520
C68E  A9 3F     LDA #$3F                        A:02 X:FF Y:15 P:25 SP:FB PPU:233,119 CYC:26524
C690  8D 04 40  STA $4004 = FF                  A:3F X:FF Y:15 P:25 SP:FB PPU:233,125 CYC:26526
C693  A9 9A     LDA #$9A                        A:3F X:FF Y:15 P:25 SP:FB PPU:233,137 CYC:26530
C695  8D 05 40  STA $4005 = FF                  A:9A X:FF Y:15 P:A5 SP:FB PPU:233,143 CYC:26532
C698  A9 FF     LDA #$FF                        A:9A X:FF Y:15 P:A5 SP:FB PPU:233,155 CYC:26536
C69A  8D 06 40  STA $4006 = FF                  A:FF X:FF Y:15 P:A5 SP:FB PPU:233,161 CYC:26538
C69D  A9 00     LDA #$00                        A:FF X:FF Y:15 P:A5 SP:FB PPU:233,173 CYC:26542
C69F  8D 07 40  STA $4007 = FF                  A:00 X:FF Y:15 P:27 SP:FB PPU:233,179 CYC:26544
C6A2  60        RTS                             A:00 X:FF Y:15 P:27 SP:FB PPU:233,191 CYC:26548
C66E  60        RTS                             A:00 X:FF Y:15 P:27 SP:FD PPU:233,209 CYC:26554
]]