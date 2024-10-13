return [[
F988  C9 02     CMP #$02                        A:02 X:33 Y:94 P:65 SP:F9 PPU: 45,138 CYC:5161
F98A  D0 01     BNE $F98D                       A:02 X:33 Y:94 P:67 SP:F9 PPU: 45,144 CYC:5163
F98C  60        RTS                             A:02 X:33 Y:94 P:67 SP:F9 PPU: 45,150 CYC:5165
D382  C8        INY                             A:02 X:33 Y:94 P:67 SP:FB PPU: 45,168 CYC:5171
D383  A9 40     LDA #$40                        A:02 X:33 Y:95 P:E5 SP:FB PPU: 45,174 CYC:5173
D385  85 78     STA $78 = 7F                    A:40 X:33 Y:95 P:65 SP:FB PPU: 45,180 CYC:5175
D387  20 89 F8  JSR $F889                       A:40 X:33 Y:95 P:65 SP:FB PPU: 45,189 CYC:5178
F889  24 01     BIT $01 = FF                    A:40 X:33 Y:95 P:65 SP:F9 PPU: 45,207 CYC:5184
F88B  A9 40     LDA #$40                        A:40 X:33 Y:95 P:E5 SP:F9 PPU: 45,216 CYC:5187
F88D  60        RTS                             A:40 X:33 Y:95 P:65 SP:F9 PPU: 45,222 CYC:5189
D38A  AA        TAX                             A:40 X:33 Y:95 P:65 SP:FB PPU: 45,240 CYC:5195
D38B  E4 78     CPX $78 = 40                    A:40 X:40 Y:95 P:65 SP:FB PPU: 45,246 CYC:5197
D38D  20 8E F8  JSR $F88E                       A:40 X:40 Y:95 P:67 SP:FB PPU: 45,255 CYC:5200
F88E  30 07     BMI $F897                       A:40 X:40 Y:95 P:67 SP:F9 PPU: 45,273 CYC:5206
F890  90 05     BCC $F897                       A:40 X:40 Y:95 P:67 SP:F9 PPU: 45,279 CYC:5208
F892  D0 03     BNE $F897                       A:40 X:40 Y:95 P:67 SP:F9 PPU: 45,285 CYC:5210
F894  50 01     BVC $F897                       A:40 X:40 Y:95 P:67 SP:F9 PPU: 45,291 CYC:5212
F896  60        RTS                             A:40 X:40 Y:95 P:67 SP:F9 PPU: 45,297 CYC:5214
D390  C8        INY                             A:40 X:40 Y:95 P:67 SP:FB PPU: 45,315 CYC:5220
D391  A9 3F     LDA #$3F                        A:40 X:40 Y:96 P:E5 SP:FB PPU: 45,321 CYC:5222
D393  85 78     STA $78 = 40                    A:3F X:40 Y:96 P:65 SP:FB PPU: 45,327 CYC:5224
D395  20 9A F8  JSR $F89A                       A:3F X:40 Y:96 P:65 SP:FB PPU: 45,336 CYC:5227
F89A  B8        CLV                             A:3F X:40 Y:96 P:65 SP:F9 PPU: 46, 13 CYC:5233
F89B  60        RTS                             A:3F X:40 Y:96 P:25 SP:F9 PPU: 46, 19 CYC:5235
D398  E4 78     CPX $78 = 3F                    A:3F X:40 Y:96 P:25 SP:FB PPU: 46, 37 CYC:5241
D39A  20 9C F8  JSR $F89C                       A:3F X:40 Y:96 P:25 SP:FB PPU: 46, 46 CYC:5244
F89C  F0 07     BEQ $F8A5                       A:3F X:40 Y:96 P:25 SP:F9 PPU: 46, 64 CYC:5250
F89E  30 05     BMI $F8A5                       A:3F X:40 Y:96 P:25 SP:F9 PPU: 46, 70 CYC:5252
F8A0  90 03     BCC $F8A5                       A:3F X:40 Y:96 P:25 SP:F9 PPU: 46, 76 CYC:5254
F8A2  70 01     BVS $F8A5                       A:3F X:40 Y:96 P:25 SP:F9 PPU: 46, 82 CYC:5256
F8A4  60        RTS                             A:3F X:40 Y:96 P:25 SP:F9 PPU: 46, 88 CYC:5258
D39D  C8        INY                             A:3F X:40 Y:96 P:25 SP:FB PPU: 46,106 CYC:5264
D39E  A9 41     LDA #$41                        A:3F X:40 Y:97 P:A5 SP:FB PPU: 46,112 CYC:5266
D3A0  85 78     STA $78 = 3F                    A:41 X:40 Y:97 P:25 SP:FB PPU: 46,118 CYC:5268
D3A2  E4 78     CPX $78 = 41                    A:41 X:40 Y:97 P:25 SP:FB PPU: 46,127 CYC:5271
D3A4  20 A8 F8  JSR $F8A8                       A:41 X:40 Y:97 P:A4 SP:FB PPU: 46,136 CYC:5274
F8A8  F0 05     BEQ $F8AF                       A:41 X:40 Y:97 P:A4 SP:F9 PPU: 46,154 CYC:5280
F8AA  10 03     BPL $F8AF                       A:41 X:40 Y:97 P:A4 SP:F9 PPU: 46,160 CYC:5282
F8AC  10 01     BPL $F8AF                       A:41 X:40 Y:97 P:A4 SP:F9 PPU: 46,166 CYC:5284
F8AE  60        RTS                             A:41 X:40 Y:97 P:A4 SP:F9 PPU: 46,172 CYC:5286
D3A7  C8        INY                             A:41 X:40 Y:97 P:A4 SP:FB PPU: 46,190 CYC:5292
D3A8  A9 00     LDA #$00                        A:41 X:40 Y:98 P:A4 SP:FB PPU: 46,196 CYC:5294
D3AA  85 78     STA $78 = 41                    A:00 X:40 Y:98 P:26 SP:FB PPU: 46,202 CYC:5296
D3AC  20 B2 F8  JSR $F8B2                       A:00 X:40 Y:98 P:26 SP:FB PPU: 46,211 CYC:5299
F8B2  A9 80     LDA #$80                        A:00 X:40 Y:98 P:26 SP:F9 PPU: 46,229 CYC:5305
F8B4  60        RTS                             A:80 X:40 Y:98 P:A4 SP:F9 PPU: 46,235 CYC:5307
D3AF  AA        TAX                             A:80 X:40 Y:98 P:A4 SP:FB PPU: 46,253 CYC:5313
D3B0  E4 78     CPX $78 = 00                    A:80 X:80 Y:98 P:A4 SP:FB PPU: 46,259 CYC:5315
D3B2  20 B5 F8  JSR $F8B5                       A:80 X:80 Y:98 P:A5 SP:FB PPU: 46,268 CYC:5318
F8B5  F0 05     BEQ $F8BC                       A:80 X:80 Y:98 P:A5 SP:F9 PPU: 46,286 CYC:5324
F8B7  10 03     BPL $F8BC                       A:80 X:80 Y:98 P:A5 SP:F9 PPU: 46,292 CYC:5326
F8B9  90 01     BCC $F8BC                       A:80 X:80 Y:98 P:A5 SP:F9 PPU: 46,298 CYC:5328
F8BB  60        RTS                             A:80 X:80 Y:98 P:A5 SP:F9 PPU: 46,304 CYC:5330
D3B5  C8        INY                             A:80 X:80 Y:98 P:A5 SP:FB PPU: 46,322 CYC:5336
D3B6  A9 80     LDA #$80                        A:80 X:80 Y:99 P:A5 SP:FB PPU: 46,328 CYC:5338
D3B8  85 78     STA $78 = 00                    A:80 X:80 Y:99 P:A5 SP:FB PPU: 46,334 CYC:5340
D3BA  E4 78     CPX $78 = 80                    A:80 X:80 Y:99 P:A5 SP:FB PPU: 47,  2 CYC:5343
D3BC  20 BF F8  JSR $F8BF                       A:80 X:80 Y:99 P:27 SP:FB PPU: 47, 11 CYC:5346
F8BF  D0 05     BNE $F8C6                       A:80 X:80 Y:99 P:27 SP:F9 PPU: 47, 29 CYC:5352
F8C1  30 03     BMI $F8C6                       A:80 X:80 Y:99 P:27 SP:F9 PPU: 47, 35 CYC:5354
F8C3  90 01     BCC $F8C6                       A:80 X:80 Y:99 P:27 SP:F9 PPU: 47, 41 CYC:5356
F8C5  60        RTS                             A:80 X:80 Y:99 P:27 SP:F9 PPU: 47, 47 CYC:5358
D3BF  C8        INY                             A:80 X:80 Y:99 P:27 SP:FB PPU: 47, 65 CYC:5364
D3C0  A9 81     LDA #$81                        A:80 X:80 Y:9A P:A5 SP:FB PPU: 47, 71 CYC:5366
D3C2  85 78     STA $78 = 80                    A:81 X:80 Y:9A P:A5 SP:FB PPU: 47, 77 CYC:5368
D3C4  E4 78     CPX $78 = 81                    A:81 X:80 Y:9A P:A5 SP:FB PPU: 47, 86 CYC:5371
D3C6  20 C9 F8  JSR $F8C9                       A:81 X:80 Y:9A P:A4 SP:FB PPU: 47, 95 CYC:5374
F8C9  B0 05     BCS $F8D0                       A:81 X:80 Y:9A P:A4 SP:F9 PPU: 47,113 CYC:5380
F8CB  F0 03     BEQ $F8D0                       A:81 X:80 Y:9A P:A4 SP:F9 PPU: 47,119 CYC:5382
F8CD  10 01     BPL $F8D0                       A:81 X:80 Y:9A P:A4 SP:F9 PPU: 47,125 CYC:5384
F8CF  60        RTS                             A:81 X:80 Y:9A P:A4 SP:F9 PPU: 47,131 CYC:5386
D3C9  C8        INY                             A:81 X:80 Y:9A P:A4 SP:FB PPU: 47,149 CYC:5392
D3CA  A9 7F     LDA #$7F                        A:81 X:80 Y:9B P:A4 SP:FB PPU: 47,155 CYC:5394
D3CC  85 78     STA $78 = 81                    A:7F X:80 Y:9B P:24 SP:FB PPU: 47,161 CYC:5396
D3CE  E4 78     CPX $78 = 7F                    A:7F X:80 Y:9B P:24 SP:FB PPU: 47,170 CYC:5399
D3D0  20 D3 F8  JSR $F8D3                       A:7F X:80 Y:9B P:25 SP:FB PPU: 47,179 CYC:5402
F8D3  90 05     BCC $F8DA                       A:7F X:80 Y:9B P:25 SP:F9 PPU: 47,197 CYC:5408
F8D5  F0 03     BEQ $F8DA                       A:7F X:80 Y:9B P:25 SP:F9 PPU: 47,203 CYC:5410
F8D7  30 01     BMI $F8DA                       A:7F X:80 Y:9B P:25 SP:F9 PPU: 47,209 CYC:5412
F8D9  60        RTS                             A:7F X:80 Y:9B P:25 SP:F9 PPU: 47,215 CYC:5414
D3D3  C8        INY                             A:7F X:80 Y:9B P:25 SP:FB PPU: 47,233 CYC:5420
D3D4  98        TYA                             A:7F X:80 Y:9C P:A5 SP:FB PPU: 47,239 CYC:5422
D3D5  AA        TAX                             A:9C X:80 Y:9C P:A5 SP:FB PPU: 47,245 CYC:5424
D3D6  A9 40     LDA #$40                        A:9C X:9C Y:9C P:A5 SP:FB PPU: 47,251 CYC:5426
D3D8  85 78     STA $78 = 7F                    A:40 X:9C Y:9C P:25 SP:FB PPU: 47,257 CYC:5428
D3DA  20 DD F8  JSR $F8DD                       A:40 X:9C Y:9C P:25 SP:FB PPU: 47,266 CYC:5431
F8DD  24 01     BIT $01 = FF                    A:40 X:9C Y:9C P:25 SP:F9 PPU: 47,284 CYC:5437
F8DF  A0 40     LDY #$40                        A:40 X:9C Y:9C P:E5 SP:F9 PPU: 47,293 CYC:5440
F8E1  60        RTS                             A:40 X:9C Y:40 P:65 SP:F9 PPU: 47,299 CYC:5442
D3DD  C4 78     CPY $78 = 40                    A:40 X:9C Y:40 P:65 SP:FB PPU: 47,317 CYC:5448
D3DF  20 E2 F8  JSR $F8E2                       A:40 X:9C Y:40 P:67 SP:FB PPU: 47,326 CYC:5451
F8E2  30 07     BMI $F8EB                       A:40 X:9C Y:40 P:67 SP:F9 PPU: 48,  3 CYC:5457
F8E4  90 05     BCC $F8EB                       A:40 X:9C Y:40 P:67 SP:F9 PPU: 48,  9 CYC:5459
F8E6  D0 03     BNE $F8EB                       A:40 X:9C Y:40 P:67 SP:F9 PPU: 48, 15 CYC:5461
F8E8  50 01     BVC $F8EB                       A:40 X:9C Y:40 P:67 SP:F9 PPU: 48, 21 CYC:5463
F8EA  60        RTS                             A:40 X:9C Y:40 P:67 SP:F9 PPU: 48, 27 CYC:5465
D3E2  E8        INX                             A:40 X:9C Y:40 P:67 SP:FB PPU: 48, 45 CYC:5471
D3E3  A9 3F     LDA #$3F                        A:40 X:9D Y:40 P:E5 SP:FB PPU: 48, 51 CYC:5473
D3E5  85 78     STA $78 = 40                    A:3F X:9D Y:40 P:65 SP:FB PPU: 48, 57 CYC:5475
D3E7  20 EE F8  JSR $F8EE                       A:3F X:9D Y:40 P:65 SP:FB PPU: 48, 66 CYC:5478
F8EE  B8        CLV                             A:3F X:9D Y:40 P:65 SP:F9 PPU: 48, 84 CYC:5484
F8EF  60        RTS                             A:3F X:9D Y:40 P:25 SP:F9 PPU: 48, 90 CYC:5486
D3EA  C4 78     CPY $78 = 3F                    A:3F X:9D Y:40 P:25 SP:FB PPU: 48,108 CYC:5492
D3EC  20 F0 F8  JSR $F8F0                       A:3F X:9D Y:40 P:25 SP:FB PPU: 48,117 CYC:5495
F8F0  F0 07     BEQ $F8F9                       A:3F X:9D Y:40 P:25 SP:F9 PPU: 48,135 CYC:5501
F8F2  30 05     BMI $F8F9                       A:3F X:9D Y:40 P:25 SP:F9 PPU: 48,141 CYC:5503
F8F4  90 03     BCC $F8F9                       A:3F X:9D Y:40 P:25 SP:F9 PPU: 48,147 CYC:5505
F8F6  70 01     BVS $F8F9                       A:3F X:9D Y:40 P:25 SP:F9 PPU: 48,153 CYC:5507
F8F8  60        RTS                             A:3F X:9D Y:40 P:25 SP:F9 PPU: 48,159 CYC:5509
D3EF  E8        INX                             A:3F X:9D Y:40 P:25 SP:FB PPU: 48,177 CYC:5515
D3F0  A9 41     LDA #$41                        A:3F X:9E Y:40 P:A5 SP:FB PPU: 48,183 CYC:5517
D3F2  85 78     STA $78 = 3F                    A:41 X:9E Y:40 P:25 SP:FB PPU: 48,189 CYC:5519
D3F4  C4 78     CPY $78 = 41                    A:41 X:9E Y:40 P:25 SP:FB PPU: 48,198 CYC:5522
D3F6  20 FC F8  JSR $F8FC                       A:41 X:9E Y:40 P:A4 SP:FB PPU: 48,207 CYC:5525
F8FC  F0 05     BEQ $F903                       A:41 X:9E Y:40 P:A4 SP:F9 PPU: 48,225 CYC:5531
F8FE  10 03     BPL $F903                       A:41 X:9E Y:40 P:A4 SP:F9 PPU: 48,231 CYC:5533
F900  10 01     BPL $F903                       A:41 X:9E Y:40 P:A4 SP:F9 PPU: 48,237 CYC:5535
F902  60        RTS                             A:41 X:9E Y:40 P:A4 SP:F9 PPU: 48,243 CYC:5537
D3F9  E8        INX                             A:41 X:9E Y:40 P:A4 SP:FB PPU: 48,261 CYC:5543
D3FA  A9 00     LDA #$00                        A:41 X:9F Y:40 P:A4 SP:FB PPU: 48,267 CYC:5545
D3FC  85 78     STA $78 = 41                    A:00 X:9F Y:40 P:26 SP:FB PPU: 48,273 CYC:5547
D3FE  20 06 F9  JSR $F906                       A:00 X:9F Y:40 P:26 SP:FB PPU: 48,282 CYC:5550
F906  A0 80     LDY #$80                        A:00 X:9F Y:40 P:26 SP:F9 PPU: 48,300 CYC:5556
F908  60        RTS                             A:00 X:9F Y:80 P:A4 SP:F9 PPU: 48,306 CYC:5558
D401  C4 78     CPY $78 = 00                    A:00 X:9F Y:80 P:A4 SP:FB PPU: 48,324 CYC:5564
D403  20 09 F9  JSR $F909                       A:00 X:9F Y:80 P:A5 SP:FB PPU: 48,333 CYC:5567
F909  F0 05     BEQ $F910                       A:00 X:9F Y:80 P:A5 SP:F9 PPU: 49, 10 CYC:5573
F90B  10 03     BPL $F910                       A:00 X:9F Y:80 P:A5 SP:F9 PPU: 49, 16 CYC:5575
F90D  90 01     BCC $F910                       A:00 X:9F Y:80 P:A5 SP:F9 PPU: 49, 22 CYC:5577
F90F  60        RTS                             A:00 X:9F Y:80 P:A5 SP:F9 PPU: 49, 28 CYC:5579
D406  E8        INX                             A:00 X:9F Y:80 P:A5 SP:FB PPU: 49, 46 CYC:5585
D407  A9 80     LDA #$80                        A:00 X:A0 Y:80 P:A5 SP:FB PPU: 49, 52 CYC:5587
D409  85 78     STA $78 = 00                    A:80 X:A0 Y:80 P:A5 SP:FB PPU: 49, 58 CYC:5589
D40B  C4 78     CPY $78 = 80                    A:80 X:A0 Y:80 P:A5 SP:FB PPU: 49, 67 CYC:5592
D40D  20 13 F9  JSR $F913                       A:80 X:A0 Y:80 P:27 SP:FB PPU: 49, 76 CYC:5595
F913  D0 05     BNE $F91A                       A:80 X:A0 Y:80 P:27 SP:F9 PPU: 49, 94 CYC:5601
F915  30 03     BMI $F91A                       A:80 X:A0 Y:80 P:27 SP:F9 PPU: 49,100 CYC:5603
F917  90 01     BCC $F91A                       A:80 X:A0 Y:80 P:27 SP:F9 PPU: 49,106 CYC:5605
F919  60        RTS                             A:80 X:A0 Y:80 P:27 SP:F9 PPU: 49,112 CYC:5607
D410  E8        INX                             A:80 X:A0 Y:80 P:27 SP:FB PPU: 49,130 CYC:5613
D411  A9 81     LDA #$81                        A:80 X:A1 Y:80 P:A5 SP:FB PPU: 49,136 CYC:5615
D413  85 78     STA $78 = 80                    A:81 X:A1 Y:80 P:A5 SP:FB PPU: 49,142 CYC:5617
D415  C4 78     CPY $78 = 81                    A:81 X:A1 Y:80 P:A5 SP:FB PPU: 49,151 CYC:5620
D417  20 1D F9  JSR $F91D                       A:81 X:A1 Y:80 P:A4 SP:FB PPU: 49,160 CYC:5623
F91D  B0 05     BCS $F924                       A:81 X:A1 Y:80 P:A4 SP:F9 PPU: 49,178 CYC:5629
F91F  F0 03     BEQ $F924                       A:81 X:A1 Y:80 P:A4 SP:F9 PPU: 49,184 CYC:5631
F921  10 01     BPL $F924                       A:81 X:A1 Y:80 P:A4 SP:F9 PPU: 49,190 CYC:5633
F923  60        RTS                             A:81 X:A1 Y:80 P:A4 SP:F9 PPU: 49,196 CYC:5635
D41A  E8        INX                             A:81 X:A1 Y:80 P:A4 SP:FB PPU: 49,214 CYC:5641
D41B  A9 7F     LDA #$7F                        A:81 X:A2 Y:80 P:A4 SP:FB PPU: 49,220 CYC:5643
D41D  85 78     STA $78 = 81                    A:7F X:A2 Y:80 P:24 SP:FB PPU: 49,226 CYC:5645
D41F  C4 78     CPY $78 = 7F                    A:7F X:A2 Y:80 P:24 SP:FB PPU: 49,235 CYC:5648
D421  20 27 F9  JSR $F927                       A:7F X:A2 Y:80 P:25 SP:FB PPU: 49,244 CYC:5651
F927  90 05     BCC $F92E                       A:7F X:A2 Y:80 P:25 SP:F9 PPU: 49,262 CYC:5657
F929  F0 03     BEQ $F92E                       A:7F X:A2 Y:80 P:25 SP:F9 PPU: 49,268 CYC:5659
F92B  30 01     BMI $F92E                       A:7F X:A2 Y:80 P:25 SP:F9 PPU: 49,274 CYC:5661
F92D  60        RTS                             A:7F X:A2 Y:80 P:25 SP:F9 PPU: 49,280 CYC:5663
D424  E8        INX                             A:7F X:A2 Y:80 P:25 SP:FB PPU: 49,298 CYC:5669
D425  8A        TXA                             A:7F X:A3 Y:80 P:A5 SP:FB PPU: 49,304 CYC:5671
D426  A8        TAY                             A:A3 X:A3 Y:80 P:A5 SP:FB PPU: 49,310 CYC:5673
D427  20 90 F9  JSR $F990                       A:A3 X:A3 Y:A3 P:A5 SP:FB PPU: 49,316 CYC:5675
F990  A2 55     LDX #$55                        A:A3 X:A3 Y:A3 P:A5 SP:F9 PPU: 49,334 CYC:5681
F992  A9 FF     LDA #$FF                        A:A3 X:55 Y:A3 P:25 SP:F9 PPU: 49,340 CYC:5683
F994  85 01     STA $01 = FF                    A:FF X:55 Y:A3 P:A5 SP:F9 PPU: 50,  5 CYC:5685
F996  EA        NOP                             A:FF X:55 Y:A3 P:A5 SP:F9 PPU: 50, 14 CYC:5688
F997  24 01     BIT $01 = FF                    A:FF X:55 Y:A3 P:A5 SP:F9 PPU: 50, 20 CYC:5690
F999  38        SEC                             A:FF X:55 Y:A3 P:E5 SP:F9 PPU: 50, 29 CYC:5693
F99A  A9 01     LDA #$01                        A:FF X:55 Y:A3 P:E5 SP:F9 PPU: 50, 35 CYC:5695
F99C  60        RTS                             A:01 X:55 Y:A3 P:65 SP:F9 PPU: 50, 41 CYC:5697
D42A  85 78     STA $78 = 7F                    A:01 X:55 Y:A3 P:65 SP:FB PPU: 50, 59 CYC:5703
D42C  46 78     LSR $78 = 01                    A:01 X:55 Y:A3 P:65 SP:FB PPU: 50, 68 CYC:5706
D42E  A5 78     LDA $78 = 00                    A:01 X:55 Y:A3 P:67 SP:FB PPU: 50, 83 CYC:5711
D430  20 9D F9  JSR $F99D                       A:00 X:55 Y:A3 P:67 SP:FB PPU: 50, 92 CYC:5714
F99D  90 1B     BCC $F9BA                       A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,110 CYC:5720
F99F  D0 19     BNE $F9BA                       A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,116 CYC:5722
F9A1  30 17     BMI $F9BA                       A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,122 CYC:5724
F9A3  50 15     BVC $F9BA                       A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,128 CYC:5726
F9A5  C9 00     CMP #$00                        A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,134 CYC:5728
F9A7  D0 11     BNE $F9BA                       A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,140 CYC:5730
F9A9  B8        CLV                             A:00 X:55 Y:A3 P:67 SP:F9 PPU: 50,146 CYC:5732
F9AA  A9 AA     LDA #$AA                        A:00 X:55 Y:A3 P:27 SP:F9 PPU: 50,152 CYC:5734
F9AC  60        RTS                             A:AA X:55 Y:A3 P:A5 SP:F9 PPU: 50,158 CYC:5736
D433  C8        INY                             A:AA X:55 Y:A3 P:A5 SP:FB PPU: 50,176 CYC:5742
D434  85 78     STA $78 = 00                    A:AA X:55 Y:A4 P:A5 SP:FB PPU: 50,182 CYC:5744
D436  46 78     LSR $78 = AA                    A:AA X:55 Y:A4 P:A5 SP:FB PPU: 50,191 CYC:5747
D438  A5 78     LDA $78 = 55                    A:AA X:55 Y:A4 P:24 SP:FB PPU: 50,206 CYC:5752
D43A  20 AD F9  JSR $F9AD                       A:55 X:55 Y:A4 P:24 SP:FB PPU: 50,215 CYC:5755
F9AD  B0 0B     BCS $F9BA                       A:55 X:55 Y:A4 P:24 SP:F9 PPU: 50,233 CYC:5761
F9AF  F0 09     BEQ $F9BA                       A:55 X:55 Y:A4 P:24 SP:F9 PPU: 50,239 CYC:5763
F9B1  30 07     BMI $F9BA                       A:55 X:55 Y:A4 P:24 SP:F9 PPU: 50,245 CYC:5765
F9B3  70 05     BVS $F9BA                       A:55 X:55 Y:A4 P:24 SP:F9 PPU: 50,251 CYC:5767
F9B5  C9 55     CMP #$55                        A:55 X:55 Y:A4 P:24 SP:F9 PPU: 50,257 CYC:5769
F9B7  D0 01     BNE $F9BA                       A:55 X:55 Y:A4 P:27 SP:F9 PPU: 50,263 CYC:5771
F9B9  60        RTS                             A:55 X:55 Y:A4 P:27 SP:F9 PPU: 50,269 CYC:5773
D43D  C8        INY                             A:55 X:55 Y:A4 P:27 SP:FB PPU: 50,287 CYC:5779
D43E  20 BD F9  JSR $F9BD                       A:55 X:55 Y:A5 P:A5 SP:FB PPU: 50,293 CYC:5781
F9BD  24 01     BIT $01 = FF                    A:55 X:55 Y:A5 P:A5 SP:F9 PPU: 50,311 CYC:5787
F9BF  38        SEC                             A:55 X:55 Y:A5 P:E5 SP:F9 PPU: 50,320 CYC:5790
F9C0  A9 80     LDA #$80                        A:55 X:55 Y:A5 P:E5 SP:F9 PPU: 50,326 CYC:5792
F9C2  60        RTS                             A:80 X:55 Y:A5 P:E5 SP:F9 PPU: 50,332 CYC:5794
D441  85 78     STA $78 = 55                    A:80 X:55 Y:A5 P:E5 SP:FB PPU: 51,  9 CYC:5800
D443  06 78     ASL $78 = 80                    A:80 X:55 Y:A5 P:E5 SP:FB PPU: 51, 18 CYC:5803
D445  A5 78     LDA $78 = 00                    A:80 X:55 Y:A5 P:67 SP:FB PPU: 51, 33 CYC:5808
D447  20 C3 F9  JSR $F9C3                       A:00 X:55 Y:A5 P:67 SP:FB PPU: 51, 42 CYC:5811
F9C3  90 1C     BCC $F9E1                       A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 60 CYC:5817
F9C5  D0 1A     BNE $F9E1                       A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 66 CYC:5819
F9C7  30 18     BMI $F9E1                       A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 72 CYC:5821
F9C9  50 16     BVC $F9E1                       A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 78 CYC:5823
F9CB  C9 00     CMP #$00                        A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 84 CYC:5825
F9CD  D0 12     BNE $F9E1                       A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 90 CYC:5827
F9CF  B8        CLV                             A:00 X:55 Y:A5 P:67 SP:F9 PPU: 51, 96 CYC:5829
F9D0  A9 55     LDA #$55                        A:00 X:55 Y:A5 P:27 SP:F9 PPU: 51,102 CYC:5831
F9D2  38        SEC                             A:55 X:55 Y:A5 P:25 SP:F9 PPU: 51,108 CYC:5833
F9D3  60        RTS                             A:55 X:55 Y:A5 P:25 SP:F9 PPU: 51,114 CYC:5835
D44A  C8        INY                             A:55 X:55 Y:A5 P:25 SP:FB PPU: 51,132 CYC:5841
D44B  85 78     STA $78 = 00                    A:55 X:55 Y:A6 P:A5 SP:FB PPU: 51,138 CYC:5843
D44D  06 78     ASL $78 = 55                    A:55 X:55 Y:A6 P:A5 SP:FB PPU: 51,147 CYC:5846
D44F  A5 78     LDA $78 = AA                    A:55 X:55 Y:A6 P:A4 SP:FB PPU: 51,162 CYC:5851
D451  20 D4 F9  JSR $F9D4                       A:AA X:55 Y:A6 P:A4 SP:FB PPU: 51,171 CYC:5854
F9D4  B0 0B     BCS $F9E1                       A:AA X:55 Y:A6 P:A4 SP:F9 PPU: 51,189 CYC:5860
F9D6  F0 09     BEQ $F9E1                       A:AA X:55 Y:A6 P:A4 SP:F9 PPU: 51,195 CYC:5862
F9D8  10 07     BPL $F9E1                       A:AA X:55 Y:A6 P:A4 SP:F9 PPU: 51,201 CYC:5864
F9DA  70 05     BVS $F9E1                       A:AA X:55 Y:A6 P:A4 SP:F9 PPU: 51,207 CYC:5866
F9DC  C9 AA     CMP #$AA                        A:AA X:55 Y:A6 P:A4 SP:F9 PPU: 51,213 CYC:5868
F9DE  D0 01     BNE $F9E1                       A:AA X:55 Y:A6 P:27 SP:F9 PPU: 51,219 CYC:5870
F9E0  60        RTS                             A:AA X:55 Y:A6 P:27 SP:F9 PPU: 51,225 CYC:5872
D454  C8        INY                             A:AA X:55 Y:A6 P:27 SP:FB PPU: 51,243 CYC:5878
D455  20 E4 F9  JSR $F9E4                       A:AA X:55 Y:A7 P:A5 SP:FB PPU: 51,249 CYC:5880
F9E4  24 01     BIT $01 = FF                    A:AA X:55 Y:A7 P:A5 SP:F9 PPU: 51,267 CYC:5886
F9E6  38        SEC                             A:AA X:55 Y:A7 P:E5 SP:F9 PPU: 51,276 CYC:5889
F9E7  A9 01     LDA #$01                        A:AA X:55 Y:A7 P:E5 SP:F9 PPU: 51,282 CYC:5891
F9E9  60        RTS                             A:01 X:55 Y:A7 P:65 SP:F9 PPU: 51,288 CYC:5893
D458  85 78     STA $78 = AA                    A:01 X:55 Y:A7 P:65 SP:FB PPU: 51,306 CYC:5899
D45A  66 78     ROR $78 = 01                    A:01 X:55 Y:A7 P:65 SP:FB PPU: 51,315 CYC:5902
D45C  A5 78     LDA $78 = 80                    A:01 X:55 Y:A7 P:E5 SP:FB PPU: 51,330 CYC:5907
D45E  20 EA F9  JSR $F9EA                       A:80 X:55 Y:A7 P:E5 SP:FB PPU: 51,339 CYC:5910
F9EA  90 1C     BCC $FA08                       A:80 X:55 Y:A7 P:E5 SP:F9 PPU: 52, 16 CYC:5916
F9EC  F0 1A     BEQ $FA08                       A:80 X:55 Y:A7 P:E5 SP:F9 PPU: 52, 22 CYC:5918
F9EE  10 18     BPL $FA08                       A:80 X:55 Y:A7 P:E5 SP:F9 PPU: 52, 28 CYC:5920
F9F0  50 16     BVC $FA08                       A:80 X:55 Y:A7 P:E5 SP:F9 PPU: 52, 34 CYC:5922
F9F2  C9 80     CMP #$80                        A:80 X:55 Y:A7 P:E5 SP:F9 PPU: 52, 40 CYC:5924
F9F4  D0 12     BNE $FA08                       A:80 X:55 Y:A7 P:67 SP:F9 PPU: 52, 46 CYC:5926
F9F6  B8        CLV                             A:80 X:55 Y:A7 P:67 SP:F9 PPU: 52, 52 CYC:5928
F9F7  18        CLC                             A:80 X:55 Y:A7 P:27 SP:F9 PPU: 52, 58 CYC:5930
F9F8  A9 55     LDA #$55                        A:80 X:55 Y:A7 P:26 SP:F9 PPU: 52, 64 CYC:5932
F9FA  60        RTS                             A:55 X:55 Y:A7 P:24 SP:F9 PPU: 52, 70 CYC:5934
D461  C8        INY                             A:55 X:55 Y:A7 P:24 SP:FB PPU: 52, 88 CYC:5940
D462  85 78     STA $78 = 80                    A:55 X:55 Y:A8 P:A4 SP:FB PPU: 52, 94 CYC:5942
D464  66 78     ROR $78 = 55                    A:55 X:55 Y:A8 P:A4 SP:FB PPU: 52,103 CYC:5945
D466  A5 78     LDA $78 = 2A                    A:55 X:55 Y:A8 P:25 SP:FB PPU: 52,118 CYC:5950
D468  20 FB F9  JSR $F9FB                       A:2A X:55 Y:A8 P:25 SP:FB PPU: 52,127 CYC:5953
F9FB  90 0B     BCC $FA08                       A:2A X:55 Y:A8 P:25 SP:F9 PPU: 52,145 CYC:5959
F9FD  F0 09     BEQ $FA08                       A:2A X:55 Y:A8 P:25 SP:F9 PPU: 52,151 CYC:5961
F9FF  30 07     BMI $FA08                       A:2A X:55 Y:A8 P:25 SP:F9 PPU: 52,157 CYC:5963
FA01  70 05     BVS $FA08                       A:2A X:55 Y:A8 P:25 SP:F9 PPU: 52,163 CYC:5965
FA03  C9 2A     CMP #$2A                        A:2A X:55 Y:A8 P:25 SP:F9 PPU: 52,169 CYC:5967
FA05  D0 01     BNE $FA08                       A:2A X:55 Y:A8 P:27 SP:F9 PPU: 52,175 CYC:5969
FA07  60        RTS                             A:2A X:55 Y:A8 P:27 SP:F9 PPU: 52,181 CYC:5971
D46B  C8        INY                             A:2A X:55 Y:A8 P:27 SP:FB PPU: 52,199 CYC:5977
D46C  20 0A FA  JSR $FA0A                       A:2A X:55 Y:A9 P:A5 SP:FB PPU: 52,205 CYC:5979
FA0A  24 01     BIT $01 = FF                    A:2A X:55 Y:A9 P:A5 SP:F9 PPU: 52,223 CYC:5985
FA0C  38        SEC                             A:2A X:55 Y:A9 P:E5 SP:F9 PPU: 52,232 CYC:5988
FA0D  A9 80     LDA #$80                        A:2A X:55 Y:A9 P:E5 SP:F9 PPU: 52,238 CYC:5990
FA0F  60        RTS                             A:80 X:55 Y:A9 P:E5 SP:F9 PPU: 52,244 CYC:5992
D46F  85 78     STA $78 = 2A                    A:80 X:55 Y:A9 P:E5 SP:FB PPU: 52,262 CYC:5998
D471  26 78     ROL $78 = 80                    A:80 X:55 Y:A9 P:E5 SP:FB PPU: 52,271 CYC:6001
D473  A5 78     LDA $78 = 01                    A:80 X:55 Y:A9 P:65 SP:FB PPU: 52,286 CYC:6006
D475  20 10 FA  JSR $FA10                       A:01 X:55 Y:A9 P:65 SP:FB PPU: 52,295 CYC:6009
FA10  90 1C     BCC $FA2E                       A:01 X:55 Y:A9 P:65 SP:F9 PPU: 52,313 CYC:6015
FA12  F0 1A     BEQ $FA2E                       A:01 X:55 Y:A9 P:65 SP:F9 PPU: 52,319 CYC:6017
FA14  30 18     BMI $FA2E                       A:01 X:55 Y:A9 P:65 SP:F9 PPU: 52,325 CYC:6019
FA16  50 16     BVC $FA2E                       A:01 X:55 Y:A9 P:65 SP:F9 PPU: 52,331 CYC:6021
FA18  C9 01     CMP #$01                        A:01 X:55 Y:A9 P:65 SP:F9 PPU: 52,337 CYC:6023
FA1A  D0 12     BNE $FA2E                       A:01 X:55 Y:A9 P:67 SP:F9 PPU: 53,  2 CYC:6025
FA1C  B8        CLV                             A:01 X:55 Y:A9 P:67 SP:F9 PPU: 53,  8 CYC:6027
FA1D  18        CLC                             A:01 X:55 Y:A9 P:27 SP:F9 PPU: 53, 14 CYC:6029
FA1E  A9 55     LDA #$55                        A:01 X:55 Y:A9 P:26 SP:F9 PPU: 53, 20 CYC:6031
FA20  60        RTS                             A:55 X:55 Y:A9 P:24 SP:F9 PPU: 53, 26 CYC:6033
D478  C8        INY                             A:55 X:55 Y:A9 P:24 SP:FB PPU: 53, 44 CYC:6039
D479  85 78     STA $78 = 01                    A:55 X:55 Y:AA P:A4 SP:FB PPU: 53, 50 CYC:6041
D47B  26 78     ROL $78 = 55                    A:55 X:55 Y:AA P:A4 SP:FB PPU: 53, 59 CYC:6044
D47D  A5 78     LDA $78 = AA                    A:55 X:55 Y:AA P:A4 SP:FB PPU: 53, 74 CYC:6049
D47F  20 21 FA  JSR $FA21                       A:AA X:55 Y:AA P:A4 SP:FB PPU: 53, 83 CYC:6052
FA21  B0 0B     BCS $FA2E                       A:AA X:55 Y:AA P:A4 SP:F9 PPU: 53,101 CYC:6058
FA23  F0 09     BEQ $FA2E                       A:AA X:55 Y:AA P:A4 SP:F9 PPU: 53,107 CYC:6060
FA25  10 07     BPL $FA2E                       A:AA X:55 Y:AA P:A4 SP:F9 PPU: 53,113 CYC:6062
FA27  70 05     BVS $FA2E                       A:AA X:55 Y:AA P:A4 SP:F9 PPU: 53,119 CYC:6064
FA29  C9 AA     CMP #$AA                        A:AA X:55 Y:AA P:A4 SP:F9 PPU: 53,125 CYC:6066
FA2B  D0 01     BNE $FA2E                       A:AA X:55 Y:AA P:27 SP:F9 PPU: 53,131 CYC:6068
FA2D  60        RTS                             A:AA X:55 Y:AA P:27 SP:F9 PPU: 53,137 CYC:6070
D482  A9 FF     LDA #$FF                        A:AA X:55 Y:AA P:27 SP:FB PPU: 53,155 CYC:6076
D484  85 78     STA $78 = AA                    A:FF X:55 Y:AA P:A5 SP:FB PPU: 53,161 CYC:6078
D486  85 01     STA $01 = FF                    A:FF X:55 Y:AA P:A5 SP:FB PPU: 53,170 CYC:6081
D488  24 01     BIT $01 = FF                    A:FF X:55 Y:AA P:A5 SP:FB PPU: 53,179 CYC:6084
D48A  38        SEC                             A:FF X:55 Y:AA P:E5 SP:FB PPU: 53,188 CYC:6087
D48B  E6 78     INC $78 = FF                    A:FF X:55 Y:AA P:E5 SP:FB PPU: 53,194 CYC:6089
D48D  D0 0C     BNE $D49B                       A:FF X:55 Y:AA P:67 SP:FB PPU: 53,209 CYC:6094
D48F  30 0A     BMI $D49B                       A:FF X:55 Y:AA P:67 SP:FB PPU: 53,215 CYC:6096
D491  50 08     BVC $D49B                       A:FF X:55 Y:AA P:67 SP:FB PPU: 53,221 CYC:6098
D493  90 06     BCC $D49B                       A:FF X:55 Y:AA P:67 SP:FB PPU: 53,227 CYC:6100
D495  A5 78     LDA $78 = 00                    A:FF X:55 Y:AA P:67 SP:FB PPU: 53,233 CYC:6102
D497  C9 00     CMP #$00                        A:00 X:55 Y:AA P:67 SP:FB PPU: 53,242 CYC:6105
D499  F0 04     BEQ $D49F                       A:00 X:55 Y:AA P:67 SP:FB PPU: 53,248 CYC:6107
D49F  A9 7F     LDA #$7F                        A:00 X:55 Y:AA P:67 SP:FB PPU: 53,257 CYC:6110
D4A1  85 78     STA $78 = 00                    A:7F X:55 Y:AA P:65 SP:FB PPU: 53,263 CYC:6112
D4A3  B8        CLV                             A:7F X:55 Y:AA P:65 SP:FB PPU: 53,272 CYC:6115
D4A4  18        CLC                             A:7F X:55 Y:AA P:25 SP:FB PPU: 53,278 CYC:6117
D4A5  E6 78     INC $78 = 7F                    A:7F X:55 Y:AA P:24 SP:FB PPU: 53,284 CYC:6119
D4A7  F0 0C     BEQ $D4B5                       A:7F X:55 Y:AA P:A4 SP:FB PPU: 53,299 CYC:6124
D4A9  10 0A     BPL $D4B5                       A:7F X:55 Y:AA P:A4 SP:FB PPU: 53,305 CYC:6126
D4AB  70 08     BVS $D4B5                       A:7F X:55 Y:AA P:A4 SP:FB PPU: 53,311 CYC:6128
D4AD  B0 06     BCS $D4B5                       A:7F X:55 Y:AA P:A4 SP:FB PPU: 53,317 CYC:6130
D4AF  A5 78     LDA $78 = 80                    A:7F X:55 Y:AA P:A4 SP:FB PPU: 53,323 CYC:6132
D4B1  C9 80     CMP #$80                        A:80 X:55 Y:AA P:A4 SP:FB PPU: 53,332 CYC:6135
D4B3  F0 04     BEQ $D4B9                       A:80 X:55 Y:AA P:27 SP:FB PPU: 53,338 CYC:6137
D4B9  A9 00     LDA #$00                        A:80 X:55 Y:AA P:27 SP:FB PPU: 54,  6 CYC:6140
D4BB  85 78     STA $78 = 80                    A:00 X:55 Y:AA P:27 SP:FB PPU: 54, 12 CYC:6142
D4BD  24 01     BIT $01 = FF                    A:00 X:55 Y:AA P:27 SP:FB PPU: 54, 21 CYC:6145
D4BF  38        SEC                             A:00 X:55 Y:AA P:E7 SP:FB PPU: 54, 30 CYC:6148
D4C0  C6 78     DEC $78 = 00                    A:00 X:55 Y:AA P:E7 SP:FB PPU: 54, 36 CYC:6150
D4C2  F0 0C     BEQ $D4D0                       A:00 X:55 Y:AA P:E5 SP:FB PPU: 54, 51 CYC:6155
D4C4  10 0A     BPL $D4D0                       A:00 X:55 Y:AA P:E5 SP:FB PPU: 54, 57 CYC:6157
D4C6  50 08     BVC $D4D0                       A:00 X:55 Y:AA P:E5 SP:FB PPU: 54, 63 CYC:6159
D4C8  90 06     BCC $D4D0                       A:00 X:55 Y:AA P:E5 SP:FB PPU: 54, 69 CYC:6161
D4CA  A5 78     LDA $78 = FF                    A:00 X:55 Y:AA P:E5 SP:FB PPU: 54, 75 CYC:6163
D4CC  C9 FF     CMP #$FF                        A:FF X:55 Y:AA P:E5 SP:FB PPU: 54, 84 CYC:6166
D4CE  F0 04     BEQ $D4D4                       A:FF X:55 Y:AA P:67 SP:FB PPU: 54, 90 CYC:6168
D4D4  A9 80     LDA #$80                        A:FF X:55 Y:AA P:67 SP:FB PPU: 54, 99 CYC:6171
D4D6  85 78     STA $78 = FF                    A:80 X:55 Y:AA P:E5 SP:FB PPU: 54,105 CYC:6173
D4D8  B8        CLV                             A:80 X:55 Y:AA P:E5 SP:FB PPU: 54,114 CYC:6176
D4D9  18        CLC                             A:80 X:55 Y:AA P:A5 SP:FB PPU: 54,120 CYC:6178
D4DA  C6 78     DEC $78 = 80                    A:80 X:55 Y:AA P:A4 SP:FB PPU: 54,126 CYC:6180
D4DC  F0 0C     BEQ $D4EA                       A:80 X:55 Y:AA P:24 SP:FB PPU: 54,141 CYC:6185
D4DE  30 0A     BMI $D4EA                       A:80 X:55 Y:AA P:24 SP:FB PPU: 54,147 CYC:6187
D4E0  70 08     BVS $D4EA                       A:80 X:55 Y:AA P:24 SP:FB PPU: 54,153 CYC:6189
D4E2  B0 06     BCS $D4EA                       A:80 X:55 Y:AA P:24 SP:FB PPU: 54,159 CYC:6191
D4E4  A5 78     LDA $78 = 7F                    A:80 X:55 Y:AA P:24 SP:FB PPU: 54,165 CYC:6193
D4E6  C9 7F     CMP #$7F                        A:7F X:55 Y:AA P:24 SP:FB PPU: 54,174 CYC:6196
D4E8  F0 04     BEQ $D4EE                       A:7F X:55 Y:AA P:27 SP:FB PPU: 54,180 CYC:6198
D4EE  A9 01     LDA #$01                        A:7F X:55 Y:AA P:27 SP:FB PPU: 54,189 CYC:6201
D4F0  85 78     STA $78 = 7F                    A:01 X:55 Y:AA P:25 SP:FB PPU: 54,195 CYC:6203
D4F2  C6 78     DEC $78 = 01                    A:01 X:55 Y:AA P:25 SP:FB PPU: 54,204 CYC:6206
D4F4  F0 04     BEQ $D4FA                       A:01 X:55 Y:AA P:27 SP:FB PPU: 54,219 CYC:6211
D4FA  60        RTS                             A:01 X:55 Y:AA P:27 SP:FB PPU: 54,228 CYC:6214
C615  20 FB D4  JSR $D4FB                       A:01 X:55 Y:AA P:27 SP:FD PPU: 54,246 CYC:6220
D4FB  A9 55     LDA #$55                        A:01 X:55 Y:AA P:27 SP:FB PPU: 54,264 CYC:6226
D4FD  8D 78 06  STA $0678 = 00                  A:55 X:55 Y:AA P:25 SP:FB PPU: 54,270 CYC:6228
D500  A9 FF     LDA #$FF                        A:55 X:55 Y:AA P:25 SP:FB PPU: 54,282 CYC:6232
D502  85 01     STA $01 = FF                    A:FF X:55 Y:AA P:A5 SP:FB PPU: 54,288 CYC:6234
D504  24 01     BIT $01 = FF                    A:FF X:55 Y:AA P:A5 SP:FB PPU: 54,297 CYC:6237
D506  A0 11     LDY #$11                        A:FF X:55 Y:AA P:E5 SP:FB PPU: 54,306 CYC:6240
D508  A2 23     LDX #$23                        A:FF X:55 Y:11 P:65 SP:FB PPU: 54,312 CYC:6242
D50A  A9 00     LDA #$00                        A:FF X:23 Y:11 P:65 SP:FB PPU: 54,318 CYC:6244
D50C  AD 78 06  LDA $0678 = 55                  A:00 X:23 Y:11 P:67 SP:FB PPU: 54,324 CYC:6246
D50F  F0 10     BEQ $D521                       A:55 X:23 Y:11 P:65 SP:FB PPU: 54,336 CYC:6250
D511  30 0E     BMI $D521                       A:55 X:23 Y:11 P:65 SP:FB PPU: 55,  1 CYC:6252
D513  C9 55     CMP #$55                        A:55 X:23 Y:11 P:65 SP:FB PPU: 55,  7 CYC:6254
D515  D0 0A     BNE $D521                       A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 13 CYC:6256
D517  C0 11     CPY #$11                        A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 19 CYC:6258
D519  D0 06     BNE $D521                       A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 25 CYC:6260
D51B  E0 23     CPX #$23                        A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 31 CYC:6262
D51D  50 02     BVC $D521                       A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 37 CYC:6264
D51F  F0 04     BEQ $D525                       A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 43 CYC:6266
D525  A9 46     LDA #$46                        A:55 X:23 Y:11 P:67 SP:FB PPU: 55, 52 CYC:6269
D527  24 01     BIT $01 = FF                    A:46 X:23 Y:11 P:65 SP:FB PPU: 55, 58 CYC:6271
D529  8D 78 06  STA $0678 = 55                  A:46 X:23 Y:11 P:E5 SP:FB PPU: 55, 67 CYC:6274
D52C  F0 0B     BEQ $D539                       A:46 X:23 Y:11 P:E5 SP:FB PPU: 55, 79 CYC:6278
D52E  10 09     BPL $D539                       A:46 X:23 Y:11 P:E5 SP:FB PPU: 55, 85 CYC:6280
D530  50 07     BVC $D539                       A:46 X:23 Y:11 P:E5 SP:FB PPU: 55, 91 CYC:6282
D532  AD 78 06  LDA $0678 = 46                  A:46 X:23 Y:11 P:E5 SP:FB PPU: 55, 97 CYC:6284
D535  C9 46     CMP #$46                        A:46 X:23 Y:11 P:65 SP:FB PPU: 55,109 CYC:6288
D537  F0 04     BEQ $D53D                       A:46 X:23 Y:11 P:67 SP:FB PPU: 55,115 CYC:6290
D53D  A9 55     LDA #$55                        A:46 X:23 Y:11 P:67 SP:FB PPU: 55,124 CYC:6293
D53F  8D 78 06  STA $0678 = 46                  A:55 X:23 Y:11 P:65 SP:FB PPU: 55,130 CYC:6295
D542  24 01     BIT $01 = FF                    A:55 X:23 Y:11 P:65 SP:FB PPU: 55,142 CYC:6299
D544  A9 11     LDA #$11                        A:55 X:23 Y:11 P:E5 SP:FB PPU: 55,151 CYC:6302
D546  A2 23     LDX #$23                        A:11 X:23 Y:11 P:65 SP:FB PPU: 55,157 CYC:6304
D548  A0 00     LDY #$00                        A:11 X:23 Y:11 P:65 SP:FB PPU: 55,163 CYC:6306
D54A  AC 78 06  LDY $0678 = 55                  A:11 X:23 Y:00 P:67 SP:FB PPU: 55,169 CYC:6308
D54D  F0 10     BEQ $D55F                       A:11 X:23 Y:55 P:65 SP:FB PPU: 55,181 CYC:6312
D54F  30 0E     BMI $D55F                       A:11 X:23 Y:55 P:65 SP:FB PPU: 55,187 CYC:6314
D551  C0 55     CPY #$55                        A:11 X:23 Y:55 P:65 SP:FB PPU: 55,193 CYC:6316
D553  D0 0A     BNE $D55F                       A:11 X:23 Y:55 P:67 SP:FB PPU: 55,199 CYC:6318
D555  C9 11     CMP #$11                        A:11 X:23 Y:55 P:67 SP:FB PPU: 55,205 CYC:6320
D557  D0 06     BNE $D55F                       A:11 X:23 Y:55 P:67 SP:FB PPU: 55,211 CYC:6322
D559  E0 23     CPX #$23                        A:11 X:23 Y:55 P:67 SP:FB PPU: 55,217 CYC:6324
D55B  50 02     BVC $D55F                       A:11 X:23 Y:55 P:67 SP:FB PPU: 55,223 CYC:6326
D55D  F0 04     BEQ $D563                       A:11 X:23 Y:55 P:67 SP:FB PPU: 55,229 CYC:6328
D563  A0 46     LDY #$46                        A:11 X:23 Y:55 P:67 SP:FB PPU: 55,238 CYC:6331
D565  24 01     BIT $01 = FF                    A:11 X:23 Y:46 P:65 SP:FB PPU: 55,244 CYC:6333
D567  8C 78 06  STY $0678 = 55                  A:11 X:23 Y:46 P:E5 SP:FB PPU: 55,253 CYC:6336
D56A  F0 0B     BEQ $D577                       A:11 X:23 Y:46 P:E5 SP:FB PPU: 55,265 CYC:6340
D56C  10 09     BPL $D577                       A:11 X:23 Y:46 P:E5 SP:FB PPU: 55,271 CYC:6342
D56E  50 07     BVC $D577                       A:11 X:23 Y:46 P:E5 SP:FB PPU: 55,277 CYC:6344
D570  AC 78 06  LDY $0678 = 46                  A:11 X:23 Y:46 P:E5 SP:FB PPU: 55,283 CYC:6346
D573  C0 46     CPY #$46                        A:11 X:23 Y:46 P:65 SP:FB PPU: 55,295 CYC:6350
D575  F0 04     BEQ $D57B                       A:11 X:23 Y:46 P:67 SP:FB PPU: 55,301 CYC:6352
D57B  24 01     BIT $01 = FF                    A:11 X:23 Y:46 P:67 SP:FB PPU: 55,310 CYC:6355
D57D  A9 55     LDA #$55                        A:11 X:23 Y:46 P:E5 SP:FB PPU: 55,319 CYC:6358
D57F  8D 78 06  STA $0678 = 46                  A:55 X:23 Y:46 P:65 SP:FB PPU: 55,325 CYC:6360
D582  A0 11     LDY #$11                        A:55 X:23 Y:46 P:65 SP:FB PPU: 55,337 CYC:6364
D584  A9 23     LDA #$23                        A:55 X:23 Y:11 P:65 SP:FB PPU: 56,  2 CYC:6366
D586  A2 00     LDX #$00                        A:23 X:23 Y:11 P:65 SP:FB PPU: 56,  8 CYC:6368
D588  AE 78 06  LDX $0678 = 55                  A:23 X:00 Y:11 P:67 SP:FB PPU: 56, 14 CYC:6370
D58B  F0 10     BEQ $D59D                       A:23 X:55 Y:11 P:65 SP:FB PPU: 56, 26 CYC:6374
D58D  30 0E     BMI $D59D                       A:23 X:55 Y:11 P:65 SP:FB PPU: 56, 32 CYC:6376
D58F  E0 55     CPX #$55                        A:23 X:55 Y:11 P:65 SP:FB PPU: 56, 38 CYC:6378
D591  D0 0A     BNE $D59D                       A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 44 CYC:6380
D593  C0 11     CPY #$11                        A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 50 CYC:6382
D595  D0 06     BNE $D59D                       A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 56 CYC:6384
D597  C9 23     CMP #$23                        A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 62 CYC:6386
D599  50 02     BVC $D59D                       A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 68 CYC:6388
D59B  F0 04     BEQ $D5A1                       A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 74 CYC:6390
D5A1  A2 46     LDX #$46                        A:23 X:55 Y:11 P:67 SP:FB PPU: 56, 83 CYC:6393
D5A3  24 01     BIT $01 = FF                    A:23 X:46 Y:11 P:65 SP:FB PPU: 56, 89 CYC:6395
D5A5  8E 78 06  STX $0678 = 55                  A:23 X:46 Y:11 P:E5 SP:FB PPU: 56, 98 CYC:6398
D5A8  F0 0B     BEQ $D5B5                       A:23 X:46 Y:11 P:E5 SP:FB PPU: 56,110 CYC:6402
D5AA  10 09     BPL $D5B5                       A:23 X:46 Y:11 P:E5 SP:FB PPU: 56,116 CYC:6404
D5AC  50 07     BVC $D5B5                       A:23 X:46 Y:11 P:E5 SP:FB PPU: 56,122 CYC:6406
D5AE  AE 78 06  LDX $0678 = 46                  A:23 X:46 Y:11 P:E5 SP:FB PPU: 56,128 CYC:6408
D5B1  E0 46     CPX #$46                        A:23 X:46 Y:11 P:65 SP:FB PPU: 56,140 CYC:6412
D5B3  F0 04     BEQ $D5B9                       A:23 X:46 Y:11 P:67 SP:FB PPU: 56,146 CYC:6414
D5B9  A9 C0     LDA #$C0                        A:23 X:46 Y:11 P:67 SP:FB PPU: 56,155 CYC:6417
D5BB  8D 78 06  STA $0678 = 46                  A:C0 X:46 Y:11 P:E5 SP:FB PPU: 56,161 CYC:6419
D5BE  A2 33     LDX #$33                        A:C0 X:46 Y:11 P:E5 SP:FB PPU: 56,173 CYC:6423
D5C0  A0 88     LDY #$88                        A:C0 X:33 Y:11 P:65 SP:FB PPU: 56,179 CYC:6425
D5C2  A9 05     LDA #$05                        A:C0 X:33 Y:88 P:E5 SP:FB PPU: 56,185 CYC:6427
D5C4  2C 78 06  BIT $0678 = C0                  A:05 X:33 Y:88 P:65 SP:FB PPU: 56,191 CYC:6429
D5C7  10 10     BPL $D5D9                       A:05 X:33 Y:88 P:E7 SP:FB PPU: 56,203 CYC:6433
D5C9  50 0E     BVC $D5D9                       A:05 X:33 Y:88 P:E7 SP:FB PPU: 56,209 CYC:6435
D5CB  D0 0C     BNE $D5D9                       A:05 X:33 Y:88 P:E7 SP:FB PPU: 56,215 CYC:6437
D5CD  C9 05     CMP #$05                        A:05 X:33 Y:88 P:E7 SP:FB PPU: 56,221 CYC:6439
D5CF  D0 08     BNE $D5D9                       A:05 X:33 Y:88 P:67 SP:FB PPU: 56,227 CYC:6441
D5D1  E0 33     CPX #$33                        A:05 X:33 Y:88 P:67 SP:FB PPU: 56,233 CYC:6443
D5D3  D0 04     BNE $D5D9                       A:05 X:33 Y:88 P:67 SP:FB PPU: 56,239 CYC:6445
D5D5  C0 88     CPY #$88                        A:05 X:33 Y:88 P:67 SP:FB PPU: 56,245 CYC:6447
D5D7  F0 04     BEQ $D5DD                       A:05 X:33 Y:88 P:67 SP:FB PPU: 56,251 CYC:6449
D5DD  A9 03     LDA #$03                        A:05 X:33 Y:88 P:67 SP:FB PPU: 56,260 CYC:6452
D5DF  8D 78 06  STA $0678 = C0                  A:03 X:33 Y:88 P:65 SP:FB PPU: 56,266 CYC:6454
D5E2  A9 01     LDA #$01                        A:03 X:33 Y:88 P:65 SP:FB PPU: 56,278 CYC:6458
D5E4  2C 78 06  BIT $0678 = 03                  A:01 X:33 Y:88 P:65 SP:FB PPU: 56,284 CYC:6460
D5E7  30 08     BMI $D5F1                       A:01 X:33 Y:88 P:25 SP:FB PPU: 56,296 CYC:6464
D5E9  70 06     BVS $D5F1                       A:01 X:33 Y:88 P:25 SP:FB PPU: 56,302 CYC:6466
D5EB  F0 04     BEQ $D5F1                       A:01 X:33 Y:88 P:25 SP:FB PPU: 56,308 CYC:6468
D5ED  C9 01     CMP #$01                        A:01 X:33 Y:88 P:25 SP:FB PPU: 56,314 CYC:6470
D5EF  F0 04     BEQ $D5F5                       A:01 X:33 Y:88 P:27 SP:FB PPU: 56,320 CYC:6472
D5F5  A0 B8     LDY #$B8                        A:01 X:33 Y:88 P:27 SP:FB PPU: 56,329 CYC:6475
D5F7  A9 AA     LDA #$AA                        A:01 X:33 Y:B8 P:A5 SP:FB PPU: 56,335 CYC:6477
D5F9  8D 78 06  STA $0678 = 03                  A:AA X:33 Y:B8 P:A5 SP:FB PPU: 57,  0 CYC:6479
D5FC  20 B6 F7  JSR $F7B6                       A:AA X:33 Y:B8 P:A5 SP:FB PPU: 57, 12 CYC:6483
F7B6  18        CLC                             A:AA X:33 Y:B8 P:A5 SP:F9 PPU: 57, 30 CYC:6489
F7B7  A9 FF     LDA #$FF                        A:AA X:33 Y:B8 P:A4 SP:F9 PPU: 57, 36 CYC:6491
F7B9  85 01     STA $01 = FF                    A:FF X:33 Y:B8 P:A4 SP:F9 PPU: 57, 42 CYC:6493
F7BB  24 01     BIT $01 = FF                    A:FF X:33 Y:B8 P:A4 SP:F9 PPU: 57, 51 CYC:6496
F7BD  A9 55     LDA #$55                        A:FF X:33 Y:B8 P:E4 SP:F9 PPU: 57, 60 CYC:6499
F7BF  60        RTS                             A:55 X:33 Y:B8 P:64 SP:F9 PPU: 57, 66 CYC:6501
D5FF  0D 78 06  ORA $0678 = AA                  A:55 X:33 Y:B8 P:64 SP:FB PPU: 57, 84 CYC:6507
D602  20 C0 F7  JSR $F7C0                       A:FF X:33 Y:B8 P:E4 SP:FB PPU: 57, 96 CYC:6511
F7C0  B0 09     BCS $F7CB                       A:FF X:33 Y:B8 P:E4 SP:F9 PPU: 57,114 CYC:6517
F7C2  10 07     BPL $F7CB                       A:FF X:33 Y:B8 P:E4 SP:F9 PPU: 57,120 CYC:6519
F7C4  C9 FF     CMP #$FF                        A:FF X:33 Y:B8 P:E4 SP:F9 PPU: 57,126 CYC:6521
F7C6  D0 03     BNE $F7CB                       A:FF X:33 Y:B8 P:67 SP:F9 PPU: 57,132 CYC:6523
F7C8  50 01     BVC $F7CB                       A:FF X:33 Y:B8 P:67 SP:F9 PPU: 57,138 CYC:6525
F7CA  60        RTS                             A:FF X:33 Y:B8 P:67 SP:F9 PPU: 57,144 CYC:6527
D605  C8        INY                             A:FF X:33 Y:B8 P:67 SP:FB PPU: 57,162 CYC:6533
D606  A9 00     LDA #$00                        A:FF X:33 Y:B9 P:E5 SP:FB PPU: 57,168 CYC:6535
D608  8D 78 06  STA $0678 = AA                  A:00 X:33 Y:B9 P:67 SP:FB PPU: 57,174 CYC:6537
D60B  20 CE F7  JSR $F7CE                       A:00 X:33 Y:B9 P:67 SP:FB PPU: 57,186 CYC:6541
F7CE  38        SEC                             A:00 X:33 Y:B9 P:67 SP:F9 PPU: 57,204 CYC:6547
F7CF  B8        CLV                             A:00 X:33 Y:B9 P:67 SP:F9 PPU: 57,210 CYC:6549
F7D0  A9 00     LDA #$00                        A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,216 CYC:6551
F7D2  60        RTS                             A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,222 CYC:6553
D60E  0D 78 06  ORA $0678 = 00                  A:00 X:33 Y:B9 P:27 SP:FB PPU: 57,240 CYC:6559
D611  20 D3 F7  JSR $F7D3                       A:00 X:33 Y:B9 P:27 SP:FB PPU: 57,252 CYC:6563
F7D3  D0 07     BNE $F7DC                       A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,270 CYC:6569
F7D5  70 05     BVS $F7DC                       A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,276 CYC:6571
F7D7  90 03     BCC $F7DC                       A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,282 CYC:6573
F7D9  30 01     BMI $F7DC                       A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,288 CYC:6575
F7DB  60        RTS                             A:00 X:33 Y:B9 P:27 SP:F9 PPU: 57,294 CYC:6577
D614  C8        INY                             A:00 X:33 Y:B9 P:27 SP:FB PPU: 57,312 CYC:6583
D615  A9 AA     LDA #$AA                        A:00 X:33 Y:BA P:A5 SP:FB PPU: 57,318 CYC:6585
D617  8D 78 06  STA $0678 = 00                  A:AA X:33 Y:BA P:A5 SP:FB PPU: 57,324 CYC:6587
D61A  20 DF F7  JSR $F7DF                       A:AA X:33 Y:BA P:A5 SP:FB PPU: 57,336 CYC:6591
F7DF  18        CLC                             A:AA X:33 Y:BA P:A5 SP:F9 PPU: 58, 13 CYC:6597
F7E0  24 01     BIT $01 = FF                    A:AA X:33 Y:BA P:A4 SP:F9 PPU: 58, 19 CYC:6599
F7E2  A9 55     LDA #$55                        A:AA X:33 Y:BA P:E4 SP:F9 PPU: 58, 28 CYC:6602
F7E4  60        RTS                             A:55 X:33 Y:BA P:64 SP:F9 PPU: 58, 34 CYC:6604
D61D  2D 78 06  AND $0678 = AA                  A:55 X:33 Y:BA P:64 SP:FB PPU: 58, 52 CYC:6610
D620  20 E5 F7  JSR $F7E5                       A:00 X:33 Y:BA P:66 SP:FB PPU: 58, 64 CYC:6614
F7E5  D0 07     BNE $F7EE                       A:00 X:33 Y:BA P:66 SP:F9 PPU: 58, 82 CYC:6620
F7E7  50 05     BVC $F7EE                       A:00 X:33 Y:BA P:66 SP:F9 PPU: 58, 88 CYC:6622
F7E9  B0 03     BCS $F7EE                       A:00 X:33 Y:BA P:66 SP:F9 PPU: 58, 94 CYC:6624
F7EB  30 01     BMI $F7EE                       A:00 X:33 Y:BA P:66 SP:F9 PPU: 58,100 CYC:6626
F7ED  60        RTS                             A:00 X:33 Y:BA P:66 SP:F9 PPU: 58,106 CYC:6628
D623  C8        INY                             A:00 X:33 Y:BA P:66 SP:FB PPU: 58,124 CYC:6634
D624  A9 EF     LDA #$EF                        A:00 X:33 Y:BB P:E4 SP:FB PPU: 58,130 CYC:6636
D626  8D 78 06  STA $0678 = AA                  A:EF X:33 Y:BB P:E4 SP:FB PPU: 58,136 CYC:6638
D629  20 F1 F7  JSR $F7F1                       A:EF X:33 Y:BB P:E4 SP:FB PPU: 58,148 CYC:6642
F7F1  38        SEC                             A:EF X:33 Y:BB P:E4 SP:F9 PPU: 58,166 CYC:6648
F7F2  B8        CLV                             A:EF X:33 Y:BB P:E5 SP:F9 PPU: 58,172 CYC:6650
F7F3  A9 F8     LDA #$F8                        A:EF X:33 Y:BB P:A5 SP:F9 PPU: 58,178 CYC:6652
F7F5  60        RTS                             A:F8 X:33 Y:BB P:A5 SP:F9 PPU: 58,184 CYC:6654
D62C  2D 78 06  AND $0678 = EF                  A:F8 X:33 Y:BB P:A5 SP:FB PPU: 58,202 CYC:6660
D62F  20 F6 F7  JSR $F7F6                       A:E8 X:33 Y:BB P:A5 SP:FB PPU: 58,214 CYC:6664
F7F6  90 09     BCC $F801                       A:E8 X:33 Y:BB P:A5 SP:F9 PPU: 58,232 CYC:6670
F7F8  10 07     BPL $F801                       A:E8 X:33 Y:BB P:A5 SP:F9 PPU: 58,238 CYC:6672
F7FA  C9 E8     CMP #$E8                        A:E8 X:33 Y:BB P:A5 SP:F9 PPU: 58,244 CYC:6674
F7FC  D0 03     BNE $F801                       A:E8 X:33 Y:BB P:27 SP:F9 PPU: 58,250 CYC:6676
F7FE  70 01     BVS $F801                       A:E8 X:33 Y:BB P:27 SP:F9 PPU: 58,256 CYC:6678
F800  60        RTS                             A:E8 X:33 Y:BB P:27 SP:F9 PPU: 58,262 CYC:6680
D632  C8        INY                             A:E8 X:33 Y:BB P:27 SP:FB PPU: 58,280 CYC:6686
D633  A9 AA     LDA #$AA                        A:E8 X:33 Y:BC P:A5 SP:FB PPU: 58,286 CYC:6688
D635  8D 78 06  STA $0678 = EF                  A:AA X:33 Y:BC P:A5 SP:FB PPU: 58,292 CYC:6690
D638  20 04 F8  JSR $F804                       A:AA X:33 Y:BC P:A5 SP:FB PPU: 58,304 CYC:6694
F804  18        CLC                             A:AA X:33 Y:BC P:A5 SP:F9 PPU: 58,322 CYC:6700
F805  24 01     BIT $01 = FF                    A:AA X:33 Y:BC P:A4 SP:F9 PPU: 58,328 CYC:6702
F807  A9 5F     LDA #$5F                        A:AA X:33 Y:BC P:E4 SP:F9 PPU: 58,337 CYC:6705
F809  60        RTS                             A:5F X:33 Y:BC P:64 SP:F9 PPU: 59,  2 CYC:6707
D63B  4D 78 06  EOR $0678 = AA                  A:5F X:33 Y:BC P:64 SP:FB PPU: 59, 20 CYC:6713
D63E  20 0A F8  JSR $F80A                       A:F5 X:33 Y:BC P:E4 SP:FB PPU: 59, 32 CYC:6717
F80A  B0 09     BCS $F815                       A:F5 X:33 Y:BC P:E4 SP:F9 PPU: 59, 50 CYC:6723
F80C  10 07     BPL $F815                       A:F5 X:33 Y:BC P:E4 SP:F9 PPU: 59, 56 CYC:6725
F80E  C9 F5     CMP #$F5                        A:F5 X:33 Y:BC P:E4 SP:F9 PPU: 59, 62 CYC:6727
F810  D0 03     BNE $F815                       A:F5 X:33 Y:BC P:67 SP:F9 PPU: 59, 68 CYC:6729
F812  50 01     BVC $F815                       A:F5 X:33 Y:BC P:67 SP:F9 PPU: 59, 74 CYC:6731
F814  60        RTS                             A:F5 X:33 Y:BC P:67 SP:F9 PPU: 59, 80 CYC:6733
D641  C8        INY                             A:F5 X:33 Y:BC P:67 SP:FB PPU: 59, 98 CYC:6739
D642  A9 70     LDA #$70                        A:F5 X:33 Y:BD P:E5 SP:FB PPU: 59,104 CYC:6741
D644  8D 78 06  STA $0678 = AA                  A:70 X:33 Y:BD P:65 SP:FB PPU: 59,110 CYC:6743
D647  20 18 F8  JSR $F818                       A:70 X:33 Y:BD P:65 SP:FB PPU: 59,122 CYC:6747
F818  38        SEC                             A:70 X:33 Y:BD P:65 SP:F9 PPU: 59,140 CYC:6753
F819  B8        CLV                             A:70 X:33 Y:BD P:65 SP:F9 PPU: 59,146 CYC:6755
F81A  A9 70     LDA #$70                        A:70 X:33 Y:BD P:25 SP:F9 PPU: 59,152 CYC:6757
F81C  60        RTS                             A:70 X:33 Y:BD P:25 SP:F9 PPU: 59,158 CYC:6759
D64A  4D 78 06  EOR $0678 = 70                  A:70 X:33 Y:BD P:25 SP:FB PPU: 59,176 CYC:6765
D64D  20 1D F8  JSR $F81D                       A:00 X:33 Y:BD P:27 SP:FB PPU: 59,188 CYC:6769
F81D  D0 07     BNE $F826                       A:00 X:33 Y:BD P:27 SP:F9 PPU: 59,206 CYC:6775
F81F  70 05     BVS $F826                       A:00 X:33 Y:BD P:27 SP:F9 PPU: 59,212 CYC:6777
F821  90 03     BCC $F826                       A:00 X:33 Y:BD P:27 SP:F9 PPU: 59,218 CYC:6779
F823  30 01     BMI $F826                       A:00 X:33 Y:BD P:27 SP:F9 PPU: 59,224 CYC:6781
F825  60        RTS                             A:00 X:33 Y:BD P:27 SP:F9 PPU: 59,230 CYC:6783
D650  C8        INY                             A:00 X:33 Y:BD P:27 SP:FB PPU: 59,248 CYC:6789
D651  A9 69     LDA #$69                        A:00 X:33 Y:BE P:A5 SP:FB PPU: 59,254 CYC:6791
D653  8D 78 06  STA $0678 = 70                  A:69 X:33 Y:BE P:25 SP:FB PPU: 59,260 CYC:6793
D656  20 29 F8  JSR $F829                       A:69 X:33 Y:BE P:25 SP:FB PPU: 59,272 CYC:6797
F829  18        CLC                             A:69 X:33 Y:BE P:25 SP:F9 PPU: 59,290 CYC:6803
F82A  24 01     BIT $01 = FF                    A:69 X:33 Y:BE P:24 SP:F9 PPU: 59,296 CYC:6805
F82C  A9 00     LDA #$00                        A:69 X:33 Y:BE P:E4 SP:F9 PPU: 59,305 CYC:6808
F82E  60        RTS                             A:00 X:33 Y:BE P:66 SP:F9 PPU: 59,311 CYC:6810
D659  6D 78 06  ADC $0678 = 69                  A:00 X:33 Y:BE P:66 SP:FB PPU: 59,329 CYC:6816
D65C  20 2F F8  JSR $F82F                       A:69 X:33 Y:BE P:24 SP:FB PPU: 60,  0 CYC:6820
F82F  30 09     BMI $F83A                       A:69 X:33 Y:BE P:24 SP:F9 PPU: 60, 18 CYC:6826
F831  B0 07     BCS $F83A                       A:69 X:33 Y:BE P:24 SP:F9 PPU: 60, 24 CYC:6828
F833  C9 69     CMP #$69                        A:69 X:33 Y:BE P:24 SP:F9 PPU: 60, 30 CYC:6830
F835  D0 03     BNE $F83A                       A:69 X:33 Y:BE P:27 SP:F9 PPU: 60, 36 CYC:6832
F837  70 01     BVS $F83A                       A:69 X:33 Y:BE P:27 SP:F9 PPU: 60, 42 CYC:6834
F839  60        RTS                             A:69 X:33 Y:BE P:27 SP:F9 PPU: 60, 48 CYC:6836
D65F  C8        INY                             A:69 X:33 Y:BE P:27 SP:FB PPU: 60, 66 CYC:6842
D660  20 3D F8  JSR $F83D                       A:69 X:33 Y:BF P:A5 SP:FB PPU: 60, 72 CYC:6844
F83D  38        SEC                             A:69 X:33 Y:BF P:A5 SP:F9 PPU: 60, 90 CYC:6850
F83E  24 01     BIT $01 = FF                    A:69 X:33 Y:BF P:A5 SP:F9 PPU: 60, 96 CYC:6852
F840  A9 00     LDA #$00                        A:69 X:33 Y:BF P:E5 SP:F9 PPU: 60,105 CYC:6855
F842  60        RTS                             A:00 X:33 Y:BF P:67 SP:F9 PPU: 60,111 CYC:6857
D663  6D 78 06  ADC $0678 = 69                  A:00 X:33 Y:BF P:67 SP:FB PPU: 60,129 CYC:6863
D666  20 43 F8  JSR $F843                       A:6A X:33 Y:BF P:24 SP:FB PPU: 60,141 CYC:6867
F843  30 09     BMI $F84E                       A:6A X:33 Y:BF P:24 SP:F9 PPU: 60,159 CYC:6873
F845  B0 07     BCS $F84E                       A:6A X:33 Y:BF P:24 SP:F9 PPU: 60,165 CYC:6875
F847  C9 6A     CMP #$6A                        A:6A X:33 Y:BF P:24 SP:F9 PPU: 60,171 CYC:6877
F849  D0 03     BNE $F84E                       A:6A X:33 Y:BF P:27 SP:F9 PPU: 60,177 CYC:6879
F84B  70 01     BVS $F84E                       A:6A X:33 Y:BF P:27 SP:F9 PPU: 60,183 CYC:6881
F84D  60        RTS                             A:6A X:33 Y:BF P:27 SP:F9 PPU: 60,189 CYC:6883
D669  C8        INY                             A:6A X:33 Y:BF P:27 SP:FB PPU: 60,207 CYC:6889
D66A  A9 7F     LDA #$7F                        A:6A X:33 Y:C0 P:A5 SP:FB PPU: 60,213 CYC:6891
D66C  8D 78 06  STA $0678 = 69                  A:7F X:33 Y:C0 P:25 SP:FB PPU: 60,219 CYC:6893
D66F  20 51 F8  JSR $F851                       A:7F X:33 Y:C0 P:25 SP:FB PPU: 60,231 CYC:6897
F851  38        SEC                             A:7F X:33 Y:C0 P:25 SP:F9 PPU: 60,249 CYC:6903
F852  B8        CLV                             A:7F X:33 Y:C0 P:25 SP:F9 PPU: 60,255 CYC:6905
F853  A9 7F     LDA #$7F                        A:7F X:33 Y:C0 P:25 SP:F9 PPU: 60,261 CYC:6907
F855  60        RTS                             A:7F X:33 Y:C0 P:25 SP:F9 PPU: 60,267 CYC:6909
D672  6D 78 06  ADC $0678 = 7F                  A:7F X:33 Y:C0 P:25 SP:FB PPU: 60,285 CYC:6915
D675  20 56 F8  JSR $F856                       A:FF X:33 Y:C0 P:E4 SP:FB PPU: 60,297 CYC:6919
F856  10 09     BPL $F861                       A:FF X:33 Y:C0 P:E4 SP:F9 PPU: 60,315 CYC:6925
F858  B0 07     BCS $F861                       A:FF X:33 Y:C0 P:E4 SP:F9 PPU: 60,321 CYC:6927
F85A  C9 FF     CMP #$FF                        A:FF X:33 Y:C0 P:E4 SP:F9 PPU: 60,327 CYC:6929
F85C  D0 03     BNE $F861                       A:FF X:33 Y:C0 P:67 SP:F9 PPU: 60,333 CYC:6931
F85E  50 01     BVC $F861                       A:FF X:33 Y:C0 P:67 SP:F9 PPU: 60,339 CYC:6933
F860  60        RTS                             A:FF X:33 Y:C0 P:67 SP:F9 PPU: 61,  4 CYC:6935
D678  C8        INY                             A:FF X:33 Y:C0 P:67 SP:FB PPU: 61, 22 CYC:6941
D679  A9 80     LDA #$80                        A:FF X:33 Y:C1 P:E5 SP:FB PPU: 61, 28 CYC:6943
D67B  8D 78 06  STA $0678 = 7F                  A:80 X:33 Y:C1 P:E5 SP:FB PPU: 61, 34 CYC:6945
D67E  20 64 F8  JSR $F864                       A:80 X:33 Y:C1 P:E5 SP:FB PPU: 61, 46 CYC:6949
F864  18        CLC                             A:80 X:33 Y:C1 P:E5 SP:F9 PPU: 61, 64 CYC:6955
F865  24 01     BIT $01 = FF                    A:80 X:33 Y:C1 P:E4 SP:F9 PPU: 61, 70 CYC:6957
F867  A9 7F     LDA #$7F                        A:80 X:33 Y:C1 P:E4 SP:F9 PPU: 61, 79 CYC:6960
F869  60        RTS                             A:7F X:33 Y:C1 P:64 SP:F9 PPU: 61, 85 CYC:6962
D681  6D 78 06  ADC $0678 = 80                  A:7F X:33 Y:C1 P:64 SP:FB PPU: 61,103 CYC:6968
D684  20 6A F8  JSR $F86A                       A:FF X:33 Y:C1 P:A4 SP:FB PPU: 61,115 CYC:6972
F86A  10 09     BPL $F875                       A:FF X:33 Y:C1 P:A4 SP:F9 PPU: 61,133 CYC:6978
F86C  B0 07     BCS $F875                       A:FF X:33 Y:C1 P:A4 SP:F9 PPU: 61,139 CYC:6980
F86E  C9 FF     CMP #$FF                        A:FF X:33 Y:C1 P:A4 SP:F9 PPU: 61,145 CYC:6982
F870  D0 03     BNE $F875                       A:FF X:33 Y:C1 P:27 SP:F9 PPU: 61,151 CYC:6984
F872  70 01     BVS $F875                       A:FF X:33 Y:C1 P:27 SP:F9 PPU: 61,157 CYC:6986
F874  60        RTS                             A:FF X:33 Y:C1 P:27 SP:F9 PPU: 61,163 CYC:6988
D687  C8        INY                             A:FF X:33 Y:C1 P:27 SP:FB PPU: 61,181 CYC:6994
D688  20 78 F8  JSR $F878                       A:FF X:33 Y:C2 P:A5 SP:FB PPU: 61,187 CYC:6996
F878  38        SEC                             A:FF X:33 Y:C2 P:A5 SP:F9 PPU: 61,205 CYC:7002
F879  B8        CLV                             A:FF X:33 Y:C2 P:A5 SP:F9 PPU: 61,211 CYC:7004
F87A  A9 7F     LDA #$7F                        A:FF X:33 Y:C2 P:A5 SP:F9 PPU: 61,217 CYC:7006
F87C  60        RTS                             A:7F X:33 Y:C2 P:25 SP:F9 PPU: 61,223 CYC:7008
D68B  6D 78 06  ADC $0678 = 80                  A:7F X:33 Y:C2 P:25 SP:FB PPU: 61,241 CYC:7014
D68E  20 7D F8  JSR $F87D                       A:00 X:33 Y:C2 P:27 SP:FB PPU: 61,253 CYC:7018
F87D  D0 07     BNE $F886                       A:00 X:33 Y:C2 P:27 SP:F9 PPU: 61,271 CYC:7024
F87F  30 05     BMI $F886                       A:00 X:33 Y:C2 P:27 SP:F9 PPU: 61,277 CYC:7026
F881  70 03     BVS $F886                       A:00 X:33 Y:C2 P:27 SP:F9 PPU: 61,283 CYC:7028
F883  90 01     BCC $F886                       A:00 X:33 Y:C2 P:27 SP:F9 PPU: 61,289 CYC:7030
F885  60        RTS                             A:00 X:33 Y:C2 P:27 SP:F9 PPU: 61,295 CYC:7032
D691  C8        INY                             A:00 X:33 Y:C2 P:27 SP:FB PPU: 61,313 CYC:7038
D692  A9 40     LDA #$40                        A:00 X:33 Y:C3 P:A5 SP:FB PPU: 61,319 CYC:7040
D694  8D 78 06  STA $0678 = 80                  A:40 X:33 Y:C3 P:25 SP:FB PPU: 61,325 CYC:7042
D697  20 89 F8  JSR $F889                       A:40 X:33 Y:C3 P:25 SP:FB PPU: 61,337 CYC:7046
F889  24 01     BIT $01 = FF                    A:40 X:33 Y:C3 P:25 SP:F9 PPU: 62, 14 CYC:7052
F88B  A9 40     LDA #$40                        A:40 X:33 Y:C3 P:E5 SP:F9 PPU: 62, 23 CYC:7055
F88D  60        RTS                             A:40 X:33 Y:C3 P:65 SP:F9 PPU: 62, 29 CYC:7057
D69A  CD 78 06  CMP $0678 = 40                  A:40 X:33 Y:C3 P:65 SP:FB PPU: 62, 47 CYC:7063
D69D  20 8E F8  JSR $F88E                       A:40 X:33 Y:C3 P:67 SP:FB PPU: 62, 59 CYC:7067
F88E  30 07     BMI $F897                       A:40 X:33 Y:C3 P:67 SP:F9 PPU: 62, 77 CYC:7073
F890  90 05     BCC $F897                       A:40 X:33 Y:C3 P:67 SP:F9 PPU: 62, 83 CYC:7075
F892  D0 03     BNE $F897                       A:40 X:33 Y:C3 P:67 SP:F9 PPU: 62, 89 CYC:7077
F894  50 01     BVC $F897                       A:40 X:33 Y:C3 P:67 SP:F9 PPU: 62, 95 CYC:7079
F896  60        RTS                             A:40 X:33 Y:C3 P:67 SP:F9 PPU: 62,101 CYC:7081
D6A0  C8        INY                             A:40 X:33 Y:C3 P:67 SP:FB PPU: 62,119 CYC:7087
D6A1  48        PHA                             A:40 X:33 Y:C4 P:E5 SP:FB PPU: 62,125 CYC:7089
D6A2  A9 3F     LDA #$3F                        A:40 X:33 Y:C4 P:E5 SP:FA PPU: 62,134 CYC:7092
D6A4  8D 78 06  STA $0678 = 40                  A:3F X:33 Y:C4 P:65 SP:FA PPU: 62,140 CYC:7094
D6A7  68        PLA                             A:3F X:33 Y:C4 P:65 SP:FA PPU: 62,152 CYC:7098
D6A8  20 9A F8  JSR $F89A                       A:40 X:33 Y:C4 P:65 SP:FB PPU: 62,164 CYC:7102
F89A  B8        CLV                             A:40 X:33 Y:C4 P:65 SP:F9 PPU: 62,182 CYC:7108
F89B  60        RTS                             A:40 X:33 Y:C4 P:25 SP:F9 PPU: 62,188 CYC:7110
D6AB  CD 78 06  CMP $0678 = 3F                  A:40 X:33 Y:C4 P:25 SP:FB PPU: 62,206 CYC:7116
D6AE  20 9C F8  JSR $F89C                       A:40 X:33 Y:C4 P:25 SP:FB PPU: 62,218 CYC:7120
F89C  F0 07     BEQ $F8A5                       A:40 X:33 Y:C4 P:25 SP:F9 PPU: 62,236 CYC:7126
F89E  30 05     BMI $F8A5                       A:40 X:33 Y:C4 P:25 SP:F9 PPU: 62,242 CYC:7128
F8A0  90 03     BCC $F8A5                       A:40 X:33 Y:C4 P:25 SP:F9 PPU: 62,248 CYC:7130
F8A2  70 01     BVS $F8A5                       A:40 X:33 Y:C4 P:25 SP:F9 PPU: 62,254 CYC:7132
F8A4  60        RTS                             A:40 X:33 Y:C4 P:25 SP:F9 PPU: 62,260 CYC:7134
D6B1  C8        INY                             A:40 X:33 Y:C4 P:25 SP:FB PPU: 62,278 CYC:7140
D6B2  48        PHA                             A:40 X:33 Y:C5 P:A5 SP:FB PPU: 62,284 CYC:7142
D6B3  A9 41     LDA #$41                        A:40 X:33 Y:C5 P:A5 SP:FA PPU: 62,293 CYC:7145
D6B5  8D 78 06  STA $0678 = 3F                  A:41 X:33 Y:C5 P:25 SP:FA PPU: 62,299 CYC:7147
D6B8  68        PLA                             A:41 X:33 Y:C5 P:25 SP:FA PPU: 62,311 CYC:7151
D6B9  CD 78 06  CMP $0678 = 41                  A:40 X:33 Y:C5 P:25 SP:FB PPU: 62,323 CYC:7155
D6BC  20 A8 F8  JSR $F8A8                       A:40 X:33 Y:C5 P:A4 SP:FB PPU: 62,335 CYC:7159
F8A8  F0 05     BEQ $F8AF                       A:40 X:33 Y:C5 P:A4 SP:F9 PPU: 63, 12 CYC:7165
F8AA  10 03     BPL $F8AF                       A:40 X:33 Y:C5 P:A4 SP:F9 PPU: 63, 18 CYC:7167
F8AC  10 01     BPL $F8AF                       A:40 X:33 Y:C5 P:A4 SP:F9 PPU: 63, 24 CYC:7169
F8AE  60        RTS                             A:40 X:33 Y:C5 P:A4 SP:F9 PPU: 63, 30 CYC:7171
D6BF  C8        INY                             A:40 X:33 Y:C5 P:A4 SP:FB PPU: 63, 48 CYC:7177
D6C0  48        PHA                             A:40 X:33 Y:C6 P:A4 SP:FB PPU: 63, 54 CYC:7179
D6C1  A9 00     LDA #$00                        A:40 X:33 Y:C6 P:A4 SP:FA PPU: 63, 63 CYC:7182
D6C3  8D 78 06  STA $0678 = 41                  A:00 X:33 Y:C6 P:26 SP:FA PPU: 63, 69 CYC:7184
D6C6  68        PLA                             A:00 X:33 Y:C6 P:26 SP:FA PPU: 63, 81 CYC:7188
D6C7  20 B2 F8  JSR $F8B2                       A:40 X:33 Y:C6 P:24 SP:FB PPU: 63, 93 CYC:7192
F8B2  A9 80     LDA #$80                        A:40 X:33 Y:C6 P:24 SP:F9 PPU: 63,111 CYC:7198
F8B4  60        RTS                             A:80 X:33 Y:C6 P:A4 SP:F9 PPU: 63,117 CYC:7200
D6CA  CD 78 06  CMP $0678 = 00                  A:80 X:33 Y:C6 P:A4 SP:FB PPU: 63,135 CYC:7206
D6CD  20 B5 F8  JSR $F8B5                       A:80 X:33 Y:C6 P:A5 SP:FB PPU: 63,147 CYC:7210
F8B5  F0 05     BEQ $F8BC                       A:80 X:33 Y:C6 P:A5 SP:F9 PPU: 63,165 CYC:7216
F8B7  10 03     BPL $F8BC                       A:80 X:33 Y:C6 P:A5 SP:F9 PPU: 63,171 CYC:7218
F8B9  90 01     BCC $F8BC                       A:80 X:33 Y:C6 P:A5 SP:F9 PPU: 63,177 CYC:7220
F8BB  60        RTS                             A:80 X:33 Y:C6 P:A5 SP:F9 PPU: 63,183 CYC:7222
D6D0  C8        INY                             A:80 X:33 Y:C6 P:A5 SP:FB PPU: 63,201 CYC:7228
D6D1  48        PHA                             A:80 X:33 Y:C7 P:A5 SP:FB PPU: 63,207 CYC:7230
D6D2  A9 80     LDA #$80                        A:80 X:33 Y:C7 P:A5 SP:FA PPU: 63,216 CYC:7233
D6D4  8D 78 06  STA $0678 = 00                  A:80 X:33 Y:C7 P:A5 SP:FA PPU: 63,222 CYC:7235
D6D7  68        PLA                             A:80 X:33 Y:C7 P:A5 SP:FA PPU: 63,234 CYC:7239
D6D8  CD 78 06  CMP $0678 = 80                  A:80 X:33 Y:C7 P:A5 SP:FB PPU: 63,246 CYC:7243
D6DB  20 BF F8  JSR $F8BF                       A:80 X:33 Y:C7 P:27 SP:FB PPU: 63,258 CYC:7247
F8BF  D0 05     BNE $F8C6                       A:80 X:33 Y:C7 P:27 SP:F9 PPU: 63,276 CYC:7253
F8C1  30 03     BMI $F8C6                       A:80 X:33 Y:C7 P:27 SP:F9 PPU: 63,282 CYC:7255
F8C3  90 01     BCC $F8C6                       A:80 X:33 Y:C7 P:27 SP:F9 PPU: 63,288 CYC:7257
F8C5  60        RTS                             A:80 X:33 Y:C7 P:27 SP:F9 PPU: 63,294 CYC:7259
D6DE  C8        INY                             A:80 X:33 Y:C7 P:27 SP:FB PPU: 63,312 CYC:7265
D6DF  48        PHA                             A:80 X:33 Y:C8 P:A5 SP:FB PPU: 63,318 CYC:7267
D6E0  A9 81     LDA #$81                        A:80 X:33 Y:C8 P:A5 SP:FA PPU: 63,327 CYC:7270
D6E2  8D 78 06  STA $0678 = 80                  A:81 X:33 Y:C8 P:A5 SP:FA PPU: 63,333 CYC:7272
D6E5  68        PLA                             A:81 X:33 Y:C8 P:A5 SP:FA PPU: 64,  4 CYC:7276
D6E6  CD 78 06  CMP $0678 = 81                  A:80 X:33 Y:C8 P:A5 SP:FB PPU: 64, 16 CYC:7280
D6E9  20 C9 F8  JSR $F8C9                       A:80 X:33 Y:C8 P:A4 SP:FB PPU: 64, 28 CYC:7284
F8C9  B0 05     BCS $F8D0                       A:80 X:33 Y:C8 P:A4 SP:F9 PPU: 64, 46 CYC:7290
F8CB  F0 03     BEQ $F8D0                       A:80 X:33 Y:C8 P:A4 SP:F9 PPU: 64, 52 CYC:7292
F8CD  10 01     BPL $F8D0                       A:80 X:33 Y:C8 P:A4 SP:F9 PPU: 64, 58 CYC:7294
F8CF  60        RTS                             A:80 X:33 Y:C8 P:A4 SP:F9 PPU: 64, 64 CYC:7296
D6EC  C8        INY                             A:80 X:33 Y:C8 P:A4 SP:FB PPU: 64, 82 CYC:7302
D6ED  48        PHA                             A:80 X:33 Y:C9 P:A4 SP:FB PPU: 64, 88 CYC:7304
D6EE  A9 7F     LDA #$7F                        A:80 X:33 Y:C9 P:A4 SP:FA PPU: 64, 97 CYC:7307
D6F0  8D 78 06  STA $0678 = 81                  A:7F X:33 Y:C9 P:24 SP:FA PPU: 64,103 CYC:7309
D6F3  68        PLA                             A:7F X:33 Y:C9 P:24 SP:FA PPU: 64,115 CYC:7313
D6F4  CD 78 06  CMP $0678 = 7F                  A:80 X:33 Y:C9 P:A4 SP:FB PPU: 64,127 CYC:7317
D6F7  20 D3 F8  JSR $F8D3                       A:80 X:33 Y:C9 P:25 SP:FB PPU: 64,139 CYC:7321
F8D3  90 05     BCC $F8DA                       A:80 X:33 Y:C9 P:25 SP:F9 PPU: 64,157 CYC:7327
F8D5  F0 03     BEQ $F8DA                       A:80 X:33 Y:C9 P:25 SP:F9 PPU: 64,163 CYC:7329
F8D7  30 01     BMI $F8DA                       A:80 X:33 Y:C9 P:25 SP:F9 PPU: 64,169 CYC:7331
F8D9  60        RTS                             A:80 X:33 Y:C9 P:25 SP:F9 PPU: 64,175 CYC:7333
D6FA  C8        INY                             A:80 X:33 Y:C9 P:25 SP:FB PPU: 64,193 CYC:7339
D6FB  A9 40     LDA #$40                        A:80 X:33 Y:CA P:A5 SP:FB PPU: 64,199 CYC:7341
D6FD  8D 78 06  STA $0678 = 7F                  A:40 X:33 Y:CA P:25 SP:FB PPU: 64,205 CYC:7343
D700  20 31 F9  JSR $F931                       A:40 X:33 Y:CA P:25 SP:FB PPU: 64,217 CYC:7347
F931  24 01     BIT $01 = FF                    A:40 X:33 Y:CA P:25 SP:F9 PPU: 64,235 CYC:7353
F933  A9 40     LDA #$40                        A:40 X:33 Y:CA P:E5 SP:F9 PPU: 64,244 CYC:7356
F935  38        SEC                             A:40 X:33 Y:CA P:65 SP:F9 PPU: 64,250 CYC:7358
F936  60        RTS                             A:40 X:33 Y:CA P:65 SP:F9 PPU: 64,256 CYC:7360
D703  ED 78 06  SBC $0678 = 40                  A:40 X:33 Y:CA P:65 SP:FB PPU: 64,274 CYC:7366
D706  20 37 F9  JSR $F937                       A:00 X:33 Y:CA P:27 SP:FB PPU: 64,286 CYC:7370
F937  30 0B     BMI $F944                       A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,304 CYC:7376
F939  90 09     BCC $F944                       A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,310 CYC:7378
F93B  D0 07     BNE $F944                       A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,316 CYC:7380
F93D  70 05     BVS $F944                       A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,322 CYC:7382
F93F  C9 00     CMP #$00                        A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,328 CYC:7384
F941  D0 01     BNE $F944                       A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,334 CYC:7386
F943  60        RTS                             A:00 X:33 Y:CA P:27 SP:F9 PPU: 64,340 CYC:7388
D709  C8        INY                             A:00 X:33 Y:CA P:27 SP:FB PPU: 65, 17 CYC:7394
D70A  A9 3F     LDA #$3F                        A:00 X:33 Y:CB P:A5 SP:FB PPU: 65, 23 CYC:7396
D70C  8D 78 06  STA $0678 = 40                  A:3F X:33 Y:CB P:25 SP:FB PPU: 65, 29 CYC:7398
D70F  20 47 F9  JSR $F947                       A:3F X:33 Y:CB P:25 SP:FB PPU: 65, 41 CYC:7402
F947  B8        CLV                             A:3F X:33 Y:CB P:25 SP:F9 PPU: 65, 59 CYC:7408
F948  38        SEC                             A:3F X:33 Y:CB P:25 SP:F9 PPU: 65, 65 CYC:7410
F949  A9 40     LDA #$40                        A:3F X:33 Y:CB P:25 SP:F9 PPU: 65, 71 CYC:7412
F94B  60        RTS                             A:40 X:33 Y:CB P:25 SP:F9 PPU: 65, 77 CYC:7414
D712  ED 78 06  SBC $0678 = 3F                  A:40 X:33 Y:CB P:25 SP:FB PPU: 65, 95 CYC:7420
D715  20 4C F9  JSR $F94C                       A:01 X:33 Y:CB P:25 SP:FB PPU: 65,107 CYC:7424
F94C  F0 0B     BEQ $F959                       A:01 X:33 Y:CB P:25 SP:F9 PPU: 65,125 CYC:7430
F94E  30 09     BMI $F959                       A:01 X:33 Y:CB P:25 SP:F9 PPU: 65,131 CYC:7432
F950  90 07     BCC $F959                       A:01 X:33 Y:CB P:25 SP:F9 PPU: 65,137 CYC:7434
F952  70 05     BVS $F959                       A:01 X:33 Y:CB P:25 SP:F9 PPU: 65,143 CYC:7436
F954  C9 01     CMP #$01                        A:01 X:33 Y:CB P:25 SP:F9 PPU: 65,149 CYC:7438
F956  D0 01     BNE $F959                       A:01 X:33 Y:CB P:27 SP:F9 PPU: 65,155 CYC:7440
F958  60        RTS                             A:01 X:33 Y:CB P:27 SP:F9 PPU: 65,161 CYC:7442
D718  C8        INY                             A:01 X:33 Y:CB P:27 SP:FB PPU: 65,179 CYC:7448
D719  A9 41     LDA #$41                        A:01 X:33 Y:CC P:A5 SP:FB PPU: 65,185 CYC:7450
D71B  8D 78 06  STA $0678 = 3F                  A:41 X:33 Y:CC P:25 SP:FB PPU: 65,191 CYC:7452
D71E  20 5C F9  JSR $F95C                       A:41 X:33 Y:CC P:25 SP:FB PPU: 65,203 CYC:7456
F95C  A9 40     LDA #$40                        A:41 X:33 Y:CC P:25 SP:F9 PPU: 65,221 CYC:7462
F95E  38        SEC                             A:40 X:33 Y:CC P:25 SP:F9 PPU: 65,227 CYC:7464
F95F  24 01     BIT $01 = FF                    A:40 X:33 Y:CC P:25 SP:F9 PPU: 65,233 CYC:7466
F961  60        RTS                             A:40 X:33 Y:CC P:E5 SP:F9 PPU: 65,242 CYC:7469
D721  ED 78 06  SBC $0678 = 41                  A:40 X:33 Y:CC P:E5 SP:FB PPU: 65,260 CYC:7475
D724  20 62 F9  JSR $F962                       A:FF X:33 Y:CC P:A4 SP:FB PPU: 65,272 CYC:7479
F962  B0 0B     BCS $F96F                       A:FF X:33 Y:CC P:A4 SP:F9 PPU: 65,290 CYC:7485
F964  F0 09     BEQ $F96F                       A:FF X:33 Y:CC P:A4 SP:F9 PPU: 65,296 CYC:7487
F966  10 07     BPL $F96F                       A:FF X:33 Y:CC P:A4 SP:F9 PPU: 65,302 CYC:7489
F968  70 05     BVS $F96F                       A:FF X:33 Y:CC P:A4 SP:F9 PPU: 65,308 CYC:7491
F96A  C9 FF     CMP #$FF                        A:FF X:33 Y:CC P:A4 SP:F9 PPU: 65,314 CYC:7493
F96C  D0 01     BNE $F96F                       A:FF X:33 Y:CC P:27 SP:F9 PPU: 65,320 CYC:7495
F96E  60        RTS                             A:FF X:33 Y:CC P:27 SP:F9 PPU: 65,326 CYC:7497
D727  C8        INY                             A:FF X:33 Y:CC P:27 SP:FB PPU: 66,  3 CYC:7503
D728  A9 00     LDA #$00                        A:FF X:33 Y:CD P:A5 SP:FB PPU: 66,  9 CYC:7505
D72A  8D 78 06  STA $0678 = 41                  A:00 X:33 Y:CD P:27 SP:FB PPU: 66, 15 CYC:7507
D72D  20 72 F9  JSR $F972                       A:00 X:33 Y:CD P:27 SP:FB PPU: 66, 27 CYC:7511
F972  18        CLC                             A:00 X:33 Y:CD P:27 SP:F9 PPU: 66, 45 CYC:7517
F973  A9 80     LDA #$80                        A:00 X:33 Y:CD P:26 SP:F9 PPU: 66, 51 CYC:7519
F975  60        RTS                             A:80 X:33 Y:CD P:A4 SP:F9 PPU: 66, 57 CYC:7521
D730  ED 78 06  SBC $0678 = 00                  A:80 X:33 Y:CD P:A4 SP:FB PPU: 66, 75 CYC:7527
D733  20 76 F9  JSR $F976                       A:7F X:33 Y:CD P:65 SP:FB PPU: 66, 87 CYC:7531
F976  90 05     BCC $F97D                       A:7F X:33 Y:CD P:65 SP:F9 PPU: 66,105 CYC:7537
F978  C9 7F     CMP #$7F                        A:7F X:33 Y:CD P:65 SP:F9 PPU: 66,111 CYC:7539
F97A  D0 01     BNE $F97D                       A:7F X:33 Y:CD P:67 SP:F9 PPU: 66,117 CYC:7541
F97C  60        RTS                             A:7F X:33 Y:CD P:67 SP:F9 PPU: 66,123 CYC:7543
D736  C8        INY                             A:7F X:33 Y:CD P:67 SP:FB PPU: 66,141 CYC:7549
D737  A9 7F     LDA #$7F                        A:7F X:33 Y:CE P:E5 SP:FB PPU: 66,147 CYC:7551
D739  8D 78 06  STA $0678 = 00                  A:7F X:33 Y:CE P:65 SP:FB PPU: 66,153 CYC:7553
D73C  20 80 F9  JSR $F980                       A:7F X:33 Y:CE P:65 SP:FB PPU: 66,165 CYC:7557
F980  38        SEC                             A:7F X:33 Y:CE P:65 SP:F9 PPU: 66,183 CYC:7563
F981  A9 81     LDA #$81                        A:7F X:33 Y:CE P:65 SP:F9 PPU: 66,189 CYC:7565
F983  60        RTS                             A:81 X:33 Y:CE P:E5 SP:F9 PPU: 66,195 CYC:7567
D73F  ED 78 06  SBC $0678 = 7F                  A:81 X:33 Y:CE P:E5 SP:FB PPU: 66,213 CYC:7573
D742  20 84 F9  JSR $F984                       A:02 X:33 Y:CE P:65 SP:FB PPU: 66,225 CYC:7577
F984  50 07     BVC $F98D                       A:02 X:33 Y:CE P:65 SP:F9 PPU: 66,243 CYC:7583
F986  90 05     BCC $F98D                       A:02 X:33 Y:CE P:65 SP:F9 PPU: 66,249 CYC:7585
F988  C9 02     CMP #$02                        A:02 X:33 Y:CE P:65 SP:F9 PPU: 66,255 CYC:7587
F98A  D0 01     BNE $F98D                       A:02 X:33 Y:CE P:67 SP:F9 PPU: 66,261 CYC:7589
F98C  60        RTS                             A:02 X:33 Y:CE P:67 SP:F9 PPU: 66,267 CYC:7591
D745  C8        INY                             A:02 X:33 Y:CE P:67 SP:FB PPU: 66,285 CYC:7597
D746  A9 40     LDA #$40                        A:02 X:33 Y:CF P:E5 SP:FB PPU: 66,291 CYC:7599
D748  8D 78 06  STA $0678 = 7F                  A:40 X:33 Y:CF P:65 SP:FB PPU: 66,297 CYC:7601
D74B  20 89 F8  JSR $F889                       A:40 X:33 Y:CF P:65 SP:FB PPU: 66,309 CYC:7605
F889  24 01     BIT $01 = FF                    A:40 X:33 Y:CF P:65 SP:F9 PPU: 66,327 CYC:7611
F88B  A9 40     LDA #$40                        A:40 X:33 Y:CF P:E5 SP:F9 PPU: 66,336 CYC:7614
F88D  60        RTS                             A:40 X:33 Y:CF P:65 SP:F9 PPU: 67,  1 CYC:7616
D74E  AA        TAX                             A:40 X:33 Y:CF P:65 SP:FB PPU: 67, 19 CYC:7622
D74F  EC 78 06  CPX $0678 = 40                  A:40 X:40 Y:CF P:65 SP:FB PPU: 67, 25 CYC:7624
D752  20 8E F8  JSR $F88E                       A:40 X:40 Y:CF P:67 SP:FB PPU: 67, 37 CYC:7628
F88E  30 07     BMI $F897                       A:40 X:40 Y:CF P:67 SP:F9 PPU: 67, 55 CYC:7634
F890  90 05     BCC $F897                       A:40 X:40 Y:CF P:67 SP:F9 PPU: 67, 61 CYC:7636
F892  D0 03     BNE $F897                       A:40 X:40 Y:CF P:67 SP:F9 PPU: 67, 67 CYC:7638
F894  50 01     BVC $F897                       A:40 X:40 Y:CF P:67 SP:F9 PPU: 67, 73 CYC:7640
F896  60        RTS                             A:40 X:40 Y:CF P:67 SP:F9 PPU: 67, 79 CYC:7642
D755  C8        INY                             A:40 X:40 Y:CF P:67 SP:FB PPU: 67, 97 CYC:7648
D756  A9 3F     LDA #$3F                        A:40 X:40 Y:D0 P:E5 SP:FB PPU: 67,103 CYC:7650
D758  8D 78 06  STA $0678 = 40                  A:3F X:40 Y:D0 P:65 SP:FB PPU: 67,109 CYC:7652
D75B  20 9A F8  JSR $F89A                       A:3F X:40 Y:D0 P:65 SP:FB PPU: 67,121 CYC:7656
F89A  B8        CLV                             A:3F X:40 Y:D0 P:65 SP:F9 PPU: 67,139 CYC:7662
F89B  60        RTS                             A:3F X:40 Y:D0 P:25 SP:F9 PPU: 67,145 CYC:7664
D75E  EC 78 06  CPX $0678 = 3F                  A:3F X:40 Y:D0 P:25 SP:FB PPU: 67,163 CYC:7670
D761  20 9C F8  JSR $F89C                       A:3F X:40 Y:D0 P:25 SP:FB PPU: 67,175 CYC:7674
F89C  F0 07     BEQ $F8A5                       A:3F X:40 Y:D0 P:25 SP:F9 PPU: 67,193 CYC:7680
F89E  30 05     BMI $F8A5                       A:3F X:40 Y:D0 P:25 SP:F9 PPU: 67,199 CYC:7682
F8A0  90 03     BCC $F8A5                       A:3F X:40 Y:D0 P:25 SP:F9 PPU: 67,205 CYC:7684
F8A2  70 01     BVS $F8A5                       A:3F X:40 Y:D0 P:25 SP:F9 PPU: 67,211 CYC:7686
F8A4  60        RTS                             A:3F X:40 Y:D0 P:25 SP:F9 PPU: 67,217 CYC:7688
D764  C8        INY                             A:3F X:40 Y:D0 P:25 SP:FB PPU: 67,235 CYC:7694
D765  A9 41     LDA #$41                        A:3F X:40 Y:D1 P:A5 SP:FB PPU: 67,241 CYC:7696
D767  8D 78 06  STA $0678 = 3F                  A:41 X:40 Y:D1 P:25 SP:FB PPU: 67,247 CYC:7698
D76A  EC 78 06  CPX $0678 = 41                  A:41 X:40 Y:D1 P:25 SP:FB PPU: 67,259 CYC:7702
D76D  20 A8 F8  JSR $F8A8                       A:41 X:40 Y:D1 P:A4 SP:FB PPU: 67,271 CYC:7706
F8A8  F0 05     BEQ $F8AF                       A:41 X:40 Y:D1 P:A4 SP:F9 PPU: 67,289 CYC:7712
F8AA  10 03     BPL $F8AF                       A:41 X:40 Y:D1 P:A4 SP:F9 PPU: 67,295 CYC:7714
F8AC  10 01     BPL $F8AF                       A:41 X:40 Y:D1 P:A4 SP:F9 PPU: 67,301 CYC:7716
F8AE  60        RTS                             A:41 X:40 Y:D1 P:A4 SP:F9 PPU: 67,307 CYC:7718
D770  C8        INY                             A:41 X:40 Y:D1 P:A4 SP:FB PPU: 67,325 CYC:7724
D771  A9 00     LDA #$00                        A:41 X:40 Y:D2 P:A4 SP:FB PPU: 67,331 CYC:7726
D773  8D 78 06  STA $0678 = 41                  A:00 X:40 Y:D2 P:26 SP:FB PPU: 67,337 CYC:7728
D776  20 B2 F8  JSR $F8B2                       A:00 X:40 Y:D2 P:26 SP:FB PPU: 68,  8 CYC:7732
F8B2  A9 80     LDA #$80                        A:00 X:40 Y:D2 P:26 SP:F9 PPU: 68, 26 CYC:7738
F8B4  60        RTS                             A:80 X:40 Y:D2 P:A4 SP:F9 PPU: 68, 32 CYC:7740
D779  AA        TAX                             A:80 X:40 Y:D2 P:A4 SP:FB PPU: 68, 50 CYC:7746
D77A  EC 78 06  CPX $0678 = 00                  A:80 X:80 Y:D2 P:A4 SP:FB PPU: 68, 56 CYC:7748
D77D  20 B5 F8  JSR $F8B5                       A:80 X:80 Y:D2 P:A5 SP:FB PPU: 68, 68 CYC:7752
F8B5  F0 05     BEQ $F8BC                       A:80 X:80 Y:D2 P:A5 SP:F9 PPU: 68, 86 CYC:7758
F8B7  10 03     BPL $F8BC                       A:80 X:80 Y:D2 P:A5 SP:F9 PPU: 68, 92 CYC:7760
F8B9  90 01     BCC $F8BC                       A:80 X:80 Y:D2 P:A5 SP:F9 PPU: 68, 98 CYC:7762
F8BB  60        RTS                             A:80 X:80 Y:D2 P:A5 SP:F9 PPU: 68,104 CYC:7764
D780  C8        INY                             A:80 X:80 Y:D2 P:A5 SP:FB PPU: 68,122 CYC:7770
D781  A9 80     LDA #$80                        A:80 X:80 Y:D3 P:A5 SP:FB PPU: 68,128 CYC:7772
D783  8D 78 06  STA $0678 = 00                  A:80 X:80 Y:D3 P:A5 SP:FB PPU: 68,134 CYC:7774
D786  EC 78 06  CPX $0678 = 80                  A:80 X:80 Y:D3 P:A5 SP:FB PPU: 68,146 CYC:7778
D789  20 BF F8  JSR $F8BF                       A:80 X:80 Y:D3 P:27 SP:FB PPU: 68,158 CYC:7782
F8BF  D0 05     BNE $F8C6                       A:80 X:80 Y:D3 P:27 SP:F9 PPU: 68,176 CYC:7788
F8C1  30 03     BMI $F8C6                       A:80 X:80 Y:D3 P:27 SP:F9 PPU: 68,182 CYC:7790
F8C3  90 01     BCC $F8C6                       A:80 X:80 Y:D3 P:27 SP:F9 PPU: 68,188 CYC:7792
F8C5  60        RTS                             A:80 X:80 Y:D3 P:27 SP:F9 PPU: 68,194 CYC:7794
D78C  C8        INY                             A:80 X:80 Y:D3 P:27 SP:FB PPU: 68,212 CYC:7800
D78D  A9 81     LDA #$81                        A:80 X:80 Y:D4 P:A5 SP:FB PPU: 68,218 CYC:7802
D78F  8D 78 06  STA $0678 = 80                  A:81 X:80 Y:D4 P:A5 SP:FB PPU: 68,224 CYC:7804
D792  EC 78 06  CPX $0678 = 81                  A:81 X:80 Y:D4 P:A5 SP:FB PPU: 68,236 CYC:7808
D795  20 C9 F8  JSR $F8C9                       A:81 X:80 Y:D4 P:A4 SP:FB PPU: 68,248 CYC:7812
F8C9  B0 05     BCS $F8D0                       A:81 X:80 Y:D4 P:A4 SP:F9 PPU: 68,266 CYC:7818
F8CB  F0 03     BEQ $F8D0                       A:81 X:80 Y:D4 P:A4 SP:F9 PPU: 68,272 CYC:7820
F8CD  10 01     BPL $F8D0                       A:81 X:80 Y:D4 P:A4 SP:F9 PPU: 68,278 CYC:7822
F8CF  60        RTS                             A:81 X:80 Y:D4 P:A4 SP:F9 PPU: 68,284 CYC:7824
D798  C8        INY                             A:81 X:80 Y:D4 P:A4 SP:FB PPU: 68,302 CYC:7830
D799  A9 7F     LDA #$7F                        A:81 X:80 Y:D5 P:A4 SP:FB PPU: 68,308 CYC:7832
D79B  8D 78 06  STA $0678 = 81                  A:7F X:80 Y:D5 P:24 SP:FB PPU: 68,314 CYC:7834
D79E  EC 78 06  CPX $0678 = 7F                  A:7F X:80 Y:D5 P:24 SP:FB PPU: 68,326 CYC:7838
D7A1  20 D3 F8  JSR $F8D3                       A:7F X:80 Y:D5 P:25 SP:FB PPU: 68,338 CYC:7842
F8D3  90 05     BCC $F8DA                       A:7F X:80 Y:D5 P:25 SP:F9 PPU: 69, 15 CYC:7848
F8D5  F0 03     BEQ $F8DA                       A:7F X:80 Y:D5 P:25 SP:F9 PPU: 69, 21 CYC:7850
F8D7  30 01     BMI $F8DA                       A:7F X:80 Y:D5 P:25 SP:F9 PPU: 69, 27 CYC:7852
F8D9  60        RTS                             A:7F X:80 Y:D5 P:25 SP:F9 PPU: 69, 33 CYC:7854
D7A4  C8        INY                             A:7F X:80 Y:D5 P:25 SP:FB PPU: 69, 51 CYC:7860
D7A5  98        TYA                             A:7F X:80 Y:D6 P:A5 SP:FB PPU: 69, 57 CYC:7862
D7A6  AA        TAX                             A:D6 X:80 Y:D6 P:A5 SP:FB PPU: 69, 63 CYC:7864
D7A7  A9 40     LDA #$40                        A:D6 X:D6 Y:D6 P:A5 SP:FB PPU: 69, 69 CYC:7866
D7A9  8D 78 06  STA $0678 = 7F                  A:40 X:D6 Y:D6 P:25 SP:FB PPU: 69, 75 CYC:7868
D7AC  20 DD F8  JSR $F8DD                       A:40 X:D6 Y:D6 P:25 SP:FB PPU: 69, 87 CYC:7872
F8DD  24 01     BIT $01 = FF                    A:40 X:D6 Y:D6 P:25 SP:F9 PPU: 69,105 CYC:7878
F8DF  A0 40     LDY #$40                        A:40 X:D6 Y:D6 P:E5 SP:F9 PPU: 69,114 CYC:7881
F8E1  60        RTS                             A:40 X:D6 Y:40 P:65 SP:F9 PPU: 69,120 CYC:7883
D7AF  CC 78 06  CPY $0678 = 40                  A:40 X:D6 Y:40 P:65 SP:FB PPU: 69,138 CYC:7889
D7B2  20 E2 F8  JSR $F8E2                       A:40 X:D6 Y:40 P:67 SP:FB PPU: 69,150 CYC:7893
F8E2  30 07     BMI $F8EB                       A:40 X:D6 Y:40 P:67 SP:F9 PPU: 69,168 CYC:7899
F8E4  90 05     BCC $F8EB                       A:40 X:D6 Y:40 P:67 SP:F9 PPU: 69,174 CYC:7901
F8E6  D0 03     BNE $F8EB                       A:40 X:D6 Y:40 P:67 SP:F9 PPU: 69,180 CYC:7903
F8E8  50 01     BVC $F8EB                       A:40 X:D6 Y:40 P:67 SP:F9 PPU: 69,186 CYC:7905
F8EA  60        RTS                             A:40 X:D6 Y:40 P:67 SP:F9 PPU: 69,192 CYC:7907
D7B5  E8        INX                             A:40 X:D6 Y:40 P:67 SP:FB PPU: 69,210 CYC:7913
D7B6  A9 3F     LDA #$3F                        A:40 X:D7 Y:40 P:E5 SP:FB PPU: 69,216 CYC:7915
D7B8  8D 78 06  STA $0678 = 40                  A:3F X:D7 Y:40 P:65 SP:FB PPU: 69,222 CYC:7917
D7BB  20 EE F8  JSR $F8EE                       A:3F X:D7 Y:40 P:65 SP:FB PPU: 69,234 CYC:7921
F8EE  B8        CLV                             A:3F X:D7 Y:40 P:65 SP:F9 PPU: 69,252 CYC:7927
F8EF  60        RTS                             A:3F X:D7 Y:40 P:25 SP:F9 PPU: 69,258 CYC:7929
D7BE  CC 78 06  CPY $0678 = 3F                  A:3F X:D7 Y:40 P:25 SP:FB PPU: 69,276 CYC:7935
D7C1  20 F0 F8  JSR $F8F0                       A:3F X:D7 Y:40 P:25 SP:FB PPU: 69,288 CYC:7939
F8F0  F0 07     BEQ $F8F9                       A:3F X:D7 Y:40 P:25 SP:F9 PPU: 69,306 CYC:7945
F8F2  30 05     BMI $F8F9                       A:3F X:D7 Y:40 P:25 SP:F9 PPU: 69,312 CYC:7947
F8F4  90 03     BCC $F8F9                       A:3F X:D7 Y:40 P:25 SP:F9 PPU: 69,318 CYC:7949
F8F6  70 01     BVS $F8F9                       A:3F X:D7 Y:40 P:25 SP:F9 PPU: 69,324 CYC:7951
F8F8  60        RTS                             A:3F X:D7 Y:40 P:25 SP:F9 PPU: 69,330 CYC:7953
D7C4  E8        INX                             A:3F X:D7 Y:40 P:25 SP:FB PPU: 70,  7 CYC:7959
D7C5  A9 41     LDA #$41                        A:3F X:D8 Y:40 P:A5 SP:FB PPU: 70, 13 CYC:7961
D7C7  8D 78 06  STA $0678 = 3F                  A:41 X:D8 Y:40 P:25 SP:FB PPU: 70, 19 CYC:7963
D7CA  CC 78 06  CPY $0678 = 41                  A:41 X:D8 Y:40 P:25 SP:FB PPU: 70, 31 CYC:7967
D7CD  20 FC F8  JSR $F8FC                       A:41 X:D8 Y:40 P:A4 SP:FB PPU: 70, 43 CYC:7971
F8FC  F0 05     BEQ $F903                       A:41 X:D8 Y:40 P:A4 SP:F9 PPU: 70, 61 CYC:7977
F8FE  10 03     BPL $F903                       A:41 X:D8 Y:40 P:A4 SP:F9 PPU: 70, 67 CYC:7979
F900  10 01     BPL $F903                       A:41 X:D8 Y:40 P:A4 SP:F9 PPU: 70, 73 CYC:7981
F902  60        RTS                             A:41 X:D8 Y:40 P:A4 SP:F9 PPU: 70, 79 CYC:7983
D7D0  E8        INX                             A:41 X:D8 Y:40 P:A4 SP:FB PPU: 70, 97 CYC:7989
D7D1  A9 00     LDA #$00                        A:41 X:D9 Y:40 P:A4 SP:FB PPU: 70,103 CYC:7991
D7D3  8D 78 06  STA $0678 = 41                  A:00 X:D9 Y:40 P:26 SP:FB PPU: 70,109 CYC:7993
D7D6  20 06 F9  JSR $F906                       A:00 X:D9 Y:40 P:26 SP:FB PPU: 70,121 CYC:7997
F906  A0 80     LDY #$80                        A:00 X:D9 Y:40 P:26 SP:F9 PPU: 70,139 CYC:8003
F908  60        RTS                             A:00 X:D9 Y:80 P:A4 SP:F9 PPU: 70,145 CYC:8005
D7D9  CC 78 06  CPY $0678 = 00                  A:00 X:D9 Y:80 P:A4 SP:FB PPU: 70,163 CYC:8011
D7DC  20 09 F9  JSR $F909                       A:00 X:D9 Y:80 P:A5 SP:FB PPU: 70,175 CYC:8015
F909  F0 05     BEQ $F910                       A:00 X:D9 Y:80 P:A5 SP:F9 PPU: 70,193 CYC:8021
F90B  10 03     BPL $F910                       A:00 X:D9 Y:80 P:A5 SP:F9 PPU: 70,199 CYC:8023
F90D  90 01     BCC $F910                       A:00 X:D9 Y:80 P:A5 SP:F9 PPU: 70,205 CYC:8025
F90F  60        RTS                             A:00 X:D9 Y:80 P:A5 SP:F9 PPU: 70,211 CYC:8027
D7DF  E8        INX                             A:00 X:D9 Y:80 P:A5 SP:FB PPU: 70,229 CYC:8033
D7E0  A9 80     LDA #$80                        A:00 X:DA Y:80 P:A5 SP:FB PPU: 70,235 CYC:8035
D7E2  8D 78 06  STA $0678 = 00                  A:80 X:DA Y:80 P:A5 SP:FB PPU: 70,241 CYC:8037
D7E5  CC 78 06  CPY $0678 = 80                  A:80 X:DA Y:80 P:A5 SP:FB PPU: 70,253 CYC:8041
D7E8  20 13 F9  JSR $F913                       A:80 X:DA Y:80 P:27 SP:FB PPU: 70,265 CYC:8045
F913  D0 05     BNE $F91A                       A:80 X:DA Y:80 P:27 SP:F9 PPU: 70,283 CYC:8051
F915  30 03     BMI $F91A                       A:80 X:DA Y:80 P:27 SP:F9 PPU: 70,289 CYC:8053
F917  90 01     BCC $F91A                       A:80 X:DA Y:80 P:27 SP:F9 PPU: 70,295 CYC:8055
F919  60        RTS                             A:80 X:DA Y:80 P:27 SP:F9 PPU: 70,301 CYC:8057
D7EB  E8        INX                             A:80 X:DA Y:80 P:27 SP:FB PPU: 70,319 CYC:8063
D7EC  A9 81     LDA #$81                        A:80 X:DB Y:80 P:A5 SP:FB PPU: 70,325 CYC:8065
D7EE  8D 78 06  STA $0678 = 80                  A:81 X:DB Y:80 P:A5 SP:FB PPU: 70,331 CYC:8067
D7F1  CC 78 06  CPY $0678 = 81                  A:81 X:DB Y:80 P:A5 SP:FB PPU: 71,  2 CYC:8071
D7F4  20 1D F9  JSR $F91D                       A:81 X:DB Y:80 P:A4 SP:FB PPU: 71, 14 CYC:8075
F91D  B0 05     BCS $F924                       A:81 X:DB Y:80 P:A4 SP:F9 PPU: 71, 32 CYC:8081
F91F  F0 03     BEQ $F924                       A:81 X:DB Y:80 P:A4 SP:F9 PPU: 71, 38 CYC:8083
F921  10 01     BPL $F924                       A:81 X:DB Y:80 P:A4 SP:F9 PPU: 71, 44 CYC:8085
F923  60        RTS                             A:81 X:DB Y:80 P:A4 SP:F9 PPU: 71, 50 CYC:8087
D7F7  E8        INX                             A:81 X:DB Y:80 P:A4 SP:FB PPU: 71, 68 CYC:8093
D7F8  A9 7F     LDA #$7F                        A:81 X:DC Y:80 P:A4 SP:FB PPU: 71, 74 CYC:8095
D7FA  8D 78 06  STA $0678 = 81                  A:7F X:DC Y:80 P:24 SP:FB PPU: 71, 80 CYC:8097
D7FD  CC 78 06  CPY $0678 = 7F                  A:7F X:DC Y:80 P:24 SP:FB PPU: 71, 92 CYC:8101
D800  20 27 F9  JSR $F927                       A:7F X:DC Y:80 P:25 SP:FB PPU: 71,104 CYC:8105
F927  90 05     BCC $F92E                       A:7F X:DC Y:80 P:25 SP:F9 PPU: 71,122 CYC:8111
F929  F0 03     BEQ $F92E                       A:7F X:DC Y:80 P:25 SP:F9 PPU: 71,128 CYC:8113
F92B  30 01     BMI $F92E                       A:7F X:DC Y:80 P:25 SP:F9 PPU: 71,134 CYC:8115
F92D  60        RTS                             A:7F X:DC Y:80 P:25 SP:F9 PPU: 71,140 CYC:8117
D803  E8        INX                             A:7F X:DC Y:80 P:25 SP:FB PPU: 71,158 CYC:8123
D804  8A        TXA                             A:7F X:DD Y:80 P:A5 SP:FB PPU: 71,164 CYC:8125
D805  A8        TAY                             A:DD X:DD Y:80 P:A5 SP:FB PPU: 71,170 CYC:8127
D806  20 90 F9  JSR $F990                       A:DD X:DD Y:DD P:A5 SP:FB PPU: 71,176 CYC:8129
F990  A2 55     LDX #$55                        A:DD X:DD Y:DD P:A5 SP:F9 PPU: 71,194 CYC:8135
F992  A9 FF     LDA #$FF                        A:DD X:55 Y:DD P:25 SP:F9 PPU: 71,200 CYC:8137
F994  85 01     STA $01 = FF                    A:FF X:55 Y:DD P:A5 SP:F9 PPU: 71,206 CYC:8139
F996  EA        NOP                             A:FF X:55 Y:DD P:A5 SP:F9 PPU: 71,215 CYC:8142
F997  24 01     BIT $01 = FF                    A:FF X:55 Y:DD P:A5 SP:F9 PPU: 71,221 CYC:8144
F999  38        SEC                             A:FF X:55 Y:DD P:E5 SP:F9 PPU: 71,230 CYC:8147
F99A  A9 01     LDA #$01                        A:FF X:55 Y:DD P:E5 SP:F9 PPU: 71,236 CYC:8149
F99C  60        RTS                             A:01 X:55 Y:DD P:65 SP:F9 PPU: 71,242 CYC:8151
D809  8D 78 06  STA $0678 = 7F                  A:01 X:55 Y:DD P:65 SP:FB PPU: 71,260 CYC:8157
D80C  4E 78 06  LSR $0678 = 01                  A:01 X:55 Y:DD P:65 SP:FB PPU: 71,272 CYC:8161
D80F  AD 78 06  LDA $0678 = 00                  A:01 X:55 Y:DD P:67 SP:FB PPU: 71,290 CYC:8167
D812  20 9D F9  JSR $F99D                       A:00 X:55 Y:DD P:67 SP:FB PPU: 71,302 CYC:8171
F99D  90 1B     BCC $F9BA                       A:00 X:55 Y:DD P:67 SP:F9 PPU: 71,320 CYC:8177
F99F  D0 19     BNE $F9BA                       A:00 X:55 Y:DD P:67 SP:F9 PPU: 71,326 CYC:8179
F9A1  30 17     BMI $F9BA                       A:00 X:55 Y:DD P:67 SP:F9 PPU: 71,332 CYC:8181
F9A3  50 15     BVC $F9BA                       A:00 X:55 Y:DD P:67 SP:F9 PPU: 71,338 CYC:8183
F9A5  C9 00     CMP #$00                        A:00 X:55 Y:DD P:67 SP:F9 PPU: 72,  3 CYC:8185
F9A7  D0 11     BNE $F9BA                       A:00 X:55 Y:DD P:67 SP:F9 PPU: 72,  9 CYC:8187
F9A9  B8        CLV                             A:00 X:55 Y:DD P:67 SP:F9 PPU: 72, 15 CYC:8189
F9AA  A9 AA     LDA #$AA                        A:00 X:55 Y:DD P:27 SP:F9 PPU: 72, 21 CYC:8191
F9AC  60        RTS                             A:AA X:55 Y:DD P:A5 SP:F9 PPU: 72, 27 CYC:8193
D815  C8        INY                             A:AA X:55 Y:DD P:A5 SP:FB PPU: 72, 45 CYC:8199
D816  8D 78 06  STA $0678 = 00                  A:AA X:55 Y:DE P:A5 SP:FB PPU: 72, 51 CYC:8201
D819  4E 78 06  LSR $0678 = AA                  A:AA X:55 Y:DE P:A5 SP:FB PPU: 72, 63 CYC:8205
D81C  AD 78 06  LDA $0678 = 55                  A:AA X:55 Y:DE P:24 SP:FB PPU: 72, 81 CYC:8211
D81F  20 AD F9  JSR $F9AD                       A:55 X:55 Y:DE P:24 SP:FB PPU: 72, 93 CYC:8215
F9AD  B0 0B     BCS $F9BA                       A:55 X:55 Y:DE P:24 SP:F9 PPU: 72,111 CYC:8221
F9AF  F0 09     BEQ $F9BA                       A:55 X:55 Y:DE P:24 SP:F9 PPU: 72,117 CYC:8223
F9B1  30 07     BMI $F9BA                       A:55 X:55 Y:DE P:24 SP:F9 PPU: 72,123 CYC:8225
F9B3  70 05     BVS $F9BA                       A:55 X:55 Y:DE P:24 SP:F9 PPU: 72,129 CYC:8227
F9B5  C9 55     CMP #$55                        A:55 X:55 Y:DE P:24 SP:F9 PPU: 72,135 CYC:8229
F9B7  D0 01     BNE $F9BA                       A:55 X:55 Y:DE P:27 SP:F9 PPU: 72,141 CYC:8231
F9B9  60        RTS                             A:55 X:55 Y:DE P:27 SP:F9 PPU: 72,147 CYC:8233
D822  C8        INY                             A:55 X:55 Y:DE P:27 SP:FB PPU: 72,165 CYC:8239
D823  20 BD F9  JSR $F9BD                       A:55 X:55 Y:DF P:A5 SP:FB PPU: 72,171 CYC:8241
F9BD  24 01     BIT $01 = FF                    A:55 X:55 Y:DF P:A5 SP:F9 PPU: 72,189 CYC:8247
F9BF  38        SEC                             A:55 X:55 Y:DF P:E5 SP:F9 PPU: 72,198 CYC:8250
F9C0  A9 80     LDA #$80                        A:55 X:55 Y:DF P:E5 SP:F9 PPU: 72,204 CYC:8252
F9C2  60        RTS                             A:80 X:55 Y:DF P:E5 SP:F9 PPU: 72,210 CYC:8254
D826  8D 78 06  STA $0678 = 55                  A:80 X:55 Y:DF P:E5 SP:FB PPU: 72,228 CYC:8260
D829  0E 78 06  ASL $0678 = 80                  A:80 X:55 Y:DF P:E5 SP:FB PPU: 72,240 CYC:8264
D82C  AD 78 06  LDA $0678 = 00                  A:80 X:55 Y:DF P:67 SP:FB PPU: 72,258 CYC:8270
D82F  20 C3 F9  JSR $F9C3                       A:00 X:55 Y:DF P:67 SP:FB PPU: 72,270 CYC:8274
F9C3  90 1C     BCC $F9E1                       A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,288 CYC:8280
F9C5  D0 1A     BNE $F9E1                       A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,294 CYC:8282
F9C7  30 18     BMI $F9E1                       A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,300 CYC:8284
F9C9  50 16     BVC $F9E1                       A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,306 CYC:8286
F9CB  C9 00     CMP #$00                        A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,312 CYC:8288
F9CD  D0 12     BNE $F9E1                       A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,318 CYC:8290
F9CF  B8        CLV                             A:00 X:55 Y:DF P:67 SP:F9 PPU: 72,324 CYC:8292
F9D0  A9 55     LDA #$55                        A:00 X:55 Y:DF P:27 SP:F9 PPU: 72,330 CYC:8294
F9D2  38        SEC                             A:55 X:55 Y:DF P:25 SP:F9 PPU: 72,336 CYC:8296
F9D3  60        RTS                             A:55 X:55 Y:DF P:25 SP:F9 PPU: 73,  1 CYC:8298
D832  C8        INY                             A:55 X:55 Y:DF P:25 SP:FB PPU: 73, 19 CYC:8304
D833  8D 78 06  STA $0678 = 00                  A:55 X:55 Y:E0 P:A5 SP:FB PPU: 73, 25 CYC:8306
D836  0E 78 06  ASL $0678 = 55                  A:55 X:55 Y:E0 P:A5 SP:FB PPU: 73, 37 CYC:8310
D839  AD 78 06  LDA $0678 = AA                  A:55 X:55 Y:E0 P:A4 SP:FB PPU: 73, 55 CYC:8316
D83C  20 D4 F9  JSR $F9D4                       A:AA X:55 Y:E0 P:A4 SP:FB PPU: 73, 67 CYC:8320
F9D4  B0 0B     BCS $F9E1                       A:AA X:55 Y:E0 P:A4 SP:F9 PPU: 73, 85 CYC:8326
F9D6  F0 09     BEQ $F9E1                       A:AA X:55 Y:E0 P:A4 SP:F9 PPU: 73, 91 CYC:8328
F9D8  10 07     BPL $F9E1                       A:AA X:55 Y:E0 P:A4 SP:F9 PPU: 73, 97 CYC:8330
F9DA  70 05     BVS $F9E1                       A:AA X:55 Y:E0 P:A4 SP:F9 PPU: 73,103 CYC:8332
F9DC  C9 AA     CMP #$AA                        A:AA X:55 Y:E0 P:A4 SP:F9 PPU: 73,109 CYC:8334
F9DE  D0 01     BNE $F9E1                       A:AA X:55 Y:E0 P:27 SP:F9 PPU: 73,115 CYC:8336
F9E0  60        RTS                             A:AA X:55 Y:E0 P:27 SP:F9 PPU: 73,121 CYC:8338
D83F  C8        INY                             A:AA X:55 Y:E0 P:27 SP:FB PPU: 73,139 CYC:8344
D840  20 E4 F9  JSR $F9E4                       A:AA X:55 Y:E1 P:A5 SP:FB PPU: 73,145 CYC:8346
F9E4  24 01     BIT $01 = FF                    A:AA X:55 Y:E1 P:A5 SP:F9 PPU: 73,163 CYC:8352
F9E6  38        SEC                             A:AA X:55 Y:E1 P:E5 SP:F9 PPU: 73,172 CYC:8355
F9E7  A9 01     LDA #$01                        A:AA X:55 Y:E1 P:E5 SP:F9 PPU: 73,178 CYC:8357
F9E9  60        RTS                             A:01 X:55 Y:E1 P:65 SP:F9 PPU: 73,184 CYC:8359
D843  8D 78 06  STA $0678 = AA                  A:01 X:55 Y:E1 P:65 SP:FB PPU: 73,202 CYC:8365
D846  6E 78 06  ROR $0678 = 01                  A:01 X:55 Y:E1 P:65 SP:FB PPU: 73,214 CYC:8369
D849  AD 78 06  LDA $0678 = 80                  A:01 X:55 Y:E1 P:E5 SP:FB PPU: 73,232 CYC:8375
D84C  20 EA F9  JSR $F9EA                       A:80 X:55 Y:E1 P:E5 SP:FB PPU: 73,244 CYC:8379
F9EA  90 1C     BCC $FA08                       A:80 X:55 Y:E1 P:E5 SP:F9 PPU: 73,262 CYC:8385
F9EC  F0 1A     BEQ $FA08                       A:80 X:55 Y:E1 P:E5 SP:F9 PPU: 73,268 CYC:8387
F9EE  10 18     BPL $FA08                       A:80 X:55 Y:E1 P:E5 SP:F9 PPU: 73,274 CYC:8389
F9F0  50 16     BVC $FA08                       A:80 X:55 Y:E1 P:E5 SP:F9 PPU: 73,280 CYC:8391
F9F2  C9 80     CMP #$80                        A:80 X:55 Y:E1 P:E5 SP:F9 PPU: 73,286 CYC:8393
F9F4  D0 12     BNE $FA08                       A:80 X:55 Y:E1 P:67 SP:F9 PPU: 73,292 CYC:8395
F9F6  B8        CLV                             A:80 X:55 Y:E1 P:67 SP:F9 PPU: 73,298 CYC:8397
F9F7  18        CLC                             A:80 X:55 Y:E1 P:27 SP:F9 PPU: 73,304 CYC:8399
F9F8  A9 55     LDA #$55                        A:80 X:55 Y:E1 P:26 SP:F9 PPU: 73,310 CYC:8401
F9FA  60        RTS                             A:55 X:55 Y:E1 P:24 SP:F9 PPU: 73,316 CYC:8403
D84F  C8        INY                             A:55 X:55 Y:E1 P:24 SP:FB PPU: 73,334 CYC:8409
D850  8D 78 06  STA $0678 = 80                  A:55 X:55 Y:E2 P:A4 SP:FB PPU: 73,340 CYC:8411
D853  6E 78 06  ROR $0678 = 55                  A:55 X:55 Y:E2 P:A4 SP:FB PPU: 74, 11 CYC:8415
D856  AD 78 06  LDA $0678 = 2A                  A:55 X:55 Y:E2 P:25 SP:FB PPU: 74, 29 CYC:8421
D859  20 FB F9  JSR $F9FB                       A:2A X:55 Y:E2 P:25 SP:FB PPU: 74, 41 CYC:8425
F9FB  90 0B     BCC $FA08                       A:2A X:55 Y:E2 P:25 SP:F9 PPU: 74, 59 CYC:8431
F9FD  F0 09     BEQ $FA08                       A:2A X:55 Y:E2 P:25 SP:F9 PPU: 74, 65 CYC:8433
F9FF  30 07     BMI $FA08                       A:2A X:55 Y:E2 P:25 SP:F9 PPU: 74, 71 CYC:8435
FA01  70 05     BVS $FA08                       A:2A X:55 Y:E2 P:25 SP:F9 PPU: 74, 77 CYC:8437
FA03  C9 2A     CMP #$2A                        A:2A X:55 Y:E2 P:25 SP:F9 PPU: 74, 83 CYC:8439
FA05  D0 01     BNE $FA08                       A:2A X:55 Y:E2 P:27 SP:F9 PPU: 74, 89 CYC:8441
FA07  60        RTS                             A:2A X:55 Y:E2 P:27 SP:F9 PPU: 74, 95 CYC:8443
D85C  C8        INY                             A:2A X:55 Y:E2 P:27 SP:FB PPU: 74,113 CYC:8449
D85D  20 0A FA  JSR $FA0A                       A:2A X:55 Y:E3 P:A5 SP:FB PPU: 74,119 CYC:8451
FA0A  24 01     BIT $01 = FF                    A:2A X:55 Y:E3 P:A5 SP:F9 PPU: 74,137 CYC:8457
FA0C  38        SEC                             A:2A X:55 Y:E3 P:E5 SP:F9 PPU: 74,146 CYC:8460
FA0D  A9 80     LDA #$80                        A:2A X:55 Y:E3 P:E5 SP:F9 PPU: 74,152 CYC:8462
FA0F  60        RTS                             A:80 X:55 Y:E3 P:E5 SP:F9 PPU: 74,158 CYC:8464
D860  8D 78 06  STA $0678 = 2A                  A:80 X:55 Y:E3 P:E5 SP:FB PPU: 74,176 CYC:8470
D863  2E 78 06  ROL $0678 = 80                  A:80 X:55 Y:E3 P:E5 SP:FB PPU: 74,188 CYC:8474
D866  AD 78 06  LDA $0678 = 01                  A:80 X:55 Y:E3 P:65 SP:FB PPU: 74,206 CYC:8480
D869  20 10 FA  JSR $FA10                       A:01 X:55 Y:E3 P:65 SP:FB PPU: 74,218 CYC:8484
FA10  90 1C     BCC $FA2E                       A:01 X:55 Y:E3 P:65 SP:F9 PPU: 74,236 CYC:8490
FA12  F0 1A     BEQ $FA2E                       A:01 X:55 Y:E3 P:65 SP:F9 PPU: 74,242 CYC:8492
FA14  30 18     BMI $FA2E                       A:01 X:55 Y:E3 P:65 SP:F9 PPU: 74,248 CYC:8494
FA16  50 16     BVC $FA2E                       A:01 X:55 Y:E3 P:65 SP:F9 PPU: 74,254 CYC:8496
FA18  C9 01     CMP #$01                        A:01 X:55 Y:E3 P:65 SP:F9 PPU: 74,260 CYC:8498
FA1A  D0 12     BNE $FA2E                       A:01 X:55 Y:E3 P:67 SP:F9 PPU: 74,266 CYC:8500
FA1C  B8        CLV                             A:01 X:55 Y:E3 P:67 SP:F9 PPU: 74,272 CYC:8502
FA1D  18        CLC                             A:01 X:55 Y:E3 P:27 SP:F9 PPU: 74,278 CYC:8504
FA1E  A9 55     LDA #$55                        A:01 X:55 Y:E3 P:26 SP:F9 PPU: 74,284 CYC:8506
FA20  60        RTS                             A:55 X:55 Y:E3 P:24 SP:F9 PPU: 74,290 CYC:8508
D86C  C8        INY                             A:55 X:55 Y:E3 P:24 SP:FB PPU: 74,308 CYC:8514
D86D  8D 78 06  STA $0678 = 01                  A:55 X:55 Y:E4 P:A4 SP:FB PPU: 74,314 CYC:8516
D870  2E 78 06  ROL $0678 = 55                  A:55 X:55 Y:E4 P:A4 SP:FB PPU: 74,326 CYC:8520
D873  AD 78 06  LDA $0678 = AA                  A:55 X:55 Y:E4 P:A4 SP:FB PPU: 75,  3 CYC:8526
D876  20 21 FA  JSR $FA21                       A:AA X:55 Y:E4 P:A4 SP:FB PPU: 75, 15 CYC:8530
FA21  B0 0B     BCS $FA2E                       A:AA X:55 Y:E4 P:A4 SP:F9 PPU: 75, 33 CYC:8536
FA23  F0 09     BEQ $FA2E                       A:AA X:55 Y:E4 P:A4 SP:F9 PPU: 75, 39 CYC:8538
FA25  10 07     BPL $FA2E                       A:AA X:55 Y:E4 P:A4 SP:F9 PPU: 75, 45 CYC:8540
FA27  70 05     BVS $FA2E                       A:AA X:55 Y:E4 P:A4 SP:F9 PPU: 75, 51 CYC:8542
FA29  C9 AA     CMP #$AA                        A:AA X:55 Y:E4 P:A4 SP:F9 PPU: 75, 57 CYC:8544
FA2B  D0 01     BNE $FA2E                       A:AA X:55 Y:E4 P:27 SP:F9 PPU: 75, 63 CYC:8546
FA2D  60        RTS                             A:AA X:55 Y:E4 P:27 SP:F9 PPU: 75, 69 CYC:8548
D879  A9 FF     LDA #$FF                        A:AA X:55 Y:E4 P:27 SP:FB PPU: 75, 87 CYC:8554
D87B  8D 78 06  STA $0678 = AA                  A:FF X:55 Y:E4 P:A5 SP:FB PPU: 75, 93 CYC:8556
D87E  85 01     STA $01 = FF                    A:FF X:55 Y:E4 P:A5 SP:FB PPU: 75,105 CYC:8560
D880  24 01     BIT $01 = FF                    A:FF X:55 Y:E4 P:A5 SP:FB PPU: 75,114 CYC:8563
D882  38        SEC                             A:FF X:55 Y:E4 P:E5 SP:FB PPU: 75,123 CYC:8566
D883  EE 78 06  INC $0678 = FF                  A:FF X:55 Y:E4 P:E5 SP:FB PPU: 75,129 CYC:8568
D886  D0 0D     BNE $D895                       A:FF X:55 Y:E4 P:67 SP:FB PPU: 75,147 CYC:8574
D888  30 0B     BMI $D895                       A:FF X:55 Y:E4 P:67 SP:FB PPU: 75,153 CYC:8576
D88A  50 09     BVC $D895                       A:FF X:55 Y:E4 P:67 SP:FB PPU: 75,159 CYC:8578
D88C  90 07     BCC $D895                       A:FF X:55 Y:E4 P:67 SP:FB PPU: 75,165 CYC:8580
D88E  AD 78 06  LDA $0678 = 00                  A:FF X:55 Y:E4 P:67 SP:FB PPU: 75,171 CYC:8582
D891  C9 00     CMP #$00                        A:00 X:55 Y:E4 P:67 SP:FB PPU: 75,183 CYC:8586
D893  F0 04     BEQ $D899                       A:00 X:55 Y:E4 P:67 SP:FB PPU: 75,189 CYC:8588
D899  A9 7F     LDA #$7F                        A:00 X:55 Y:E4 P:67 SP:FB PPU: 75,198 CYC:8591
D89B  8D 78 06  STA $0678 = 00                  A:7F X:55 Y:E4 P:65 SP:FB PPU: 75,204 CYC:8593
D89E  B8        CLV                             A:7F X:55 Y:E4 P:65 SP:FB PPU: 75,216 CYC:8597
D89F  18        CLC                             A:7F X:55 Y:E4 P:25 SP:FB PPU: 75,222 CYC:8599
D8A0  EE 78 06  INC $0678 = 7F                  A:7F X:55 Y:E4 P:24 SP:FB PPU: 75,228 CYC:8601
D8A3  F0 0D     BEQ $D8B2                       A:7F X:55 Y:E4 P:A4 SP:FB PPU: 75,246 CYC:8607
D8A5  10 0B     BPL $D8B2                       A:7F X:55 Y:E4 P:A4 SP:FB PPU: 75,252 CYC:8609
D8A7  70 09     BVS $D8B2                       A:7F X:55 Y:E4 P:A4 SP:FB PPU: 75,258 CYC:8611
D8A9  B0 07     BCS $D8B2                       A:7F X:55 Y:E4 P:A4 SP:FB PPU: 75,264 CYC:8613
D8AB  AD 78 06  LDA $0678 = 80                  A:7F X:55 Y:E4 P:A4 SP:FB PPU: 75,270 CYC:8615
D8AE  C9 80     CMP #$80                        A:80 X:55 Y:E4 P:A4 SP:FB PPU: 75,282 CYC:8619
D8B0  F0 04     BEQ $D8B6                       A:80 X:55 Y:E4 P:27 SP:FB PPU: 75,288 CYC:8621
D8B6  A9 00     LDA #$00                        A:80 X:55 Y:E4 P:27 SP:FB PPU: 75,297 CYC:8624
D8B8  8D 78 06  STA $0678 = 80                  A:00 X:55 Y:E4 P:27 SP:FB PPU: 75,303 CYC:8626
D8BB  24 01     BIT $01 = FF                    A:00 X:55 Y:E4 P:27 SP:FB PPU: 75,315 CYC:8630
D8BD  38        SEC                             A:00 X:55 Y:E4 P:E7 SP:FB PPU: 75,324 CYC:8633
D8BE  CE 78 06  DEC $0678 = 00                  A:00 X:55 Y:E4 P:E7 SP:FB PPU: 75,330 CYC:8635
D8C1  F0 0D     BEQ $D8D0                       A:00 X:55 Y:E4 P:E5 SP:FB PPU: 76,  7 CYC:8641
D8C3  10 0B     BPL $D8D0                       A:00 X:55 Y:E4 P:E5 SP:FB PPU: 76, 13 CYC:8643
D8C5  50 09     BVC $D8D0                       A:00 X:55 Y:E4 P:E5 SP:FB PPU: 76, 19 CYC:8645
D8C7  90 07     BCC $D8D0                       A:00 X:55 Y:E4 P:E5 SP:FB PPU: 76, 25 CYC:8647
D8C9  AD 78 06  LDA $0678 = FF                  A:00 X:55 Y:E4 P:E5 SP:FB PPU: 76, 31 CYC:8649
D8CC  C9 FF     CMP #$FF                        A:FF X:55 Y:E4 P:E5 SP:FB PPU: 76, 43 CYC:8653
D8CE  F0 04     BEQ $D8D4                       A:FF X:55 Y:E4 P:67 SP:FB PPU: 76, 49 CYC:8655
D8D4  A9 80     LDA #$80                        A:FF X:55 Y:E4 P:67 SP:FB PPU: 76, 58 CYC:8658
D8D6  8D 78 06  STA $0678 = FF                  A:80 X:55 Y:E4 P:E5 SP:FB PPU: 76, 64 CYC:8660
D8D9  B8        CLV                             A:80 X:55 Y:E4 P:E5 SP:FB PPU: 76, 76 CYC:8664
D8DA  18        CLC                             A:80 X:55 Y:E4 P:A5 SP:FB PPU: 76, 82 CYC:8666
D8DB  CE 78 06  DEC $0678 = 80                  A:80 X:55 Y:E4 P:A4 SP:FB PPU: 76, 88 CYC:8668
D8DE  F0 0D     BEQ $D8ED                       A:80 X:55 Y:E4 P:24 SP:FB PPU: 76,106 CYC:8674
D8E0  30 0B     BMI $D8ED                       A:80 X:55 Y:E4 P:24 SP:FB PPU: 76,112 CYC:8676
D8E2  70 09     BVS $D8ED                       A:80 X:55 Y:E4 P:24 SP:FB PPU: 76,118 CYC:8678
D8E4  B0 07     BCS $D8ED                       A:80 X:55 Y:E4 P:24 SP:FB PPU: 76,124 CYC:8680
D8E6  AD 78 06  LDA $0678 = 7F                  A:80 X:55 Y:E4 P:24 SP:FB PPU: 76,130 CYC:8682
D8E9  C9 7F     CMP #$7F                        A:7F X:55 Y:E4 P:24 SP:FB PPU: 76,142 CYC:8686
D8EB  F0 04     BEQ $D8F1                       A:7F X:55 Y:E4 P:27 SP:FB PPU: 76,148 CYC:8688
D8F1  A9 01     LDA #$01                        A:7F X:55 Y:E4 P:27 SP:FB PPU: 76,157 CYC:8691
D8F3  8D 78 06  STA $0678 = 7F                  A:01 X:55 Y:E4 P:25 SP:FB PPU: 76,163 CYC:8693
D8F6  CE 78 06  DEC $0678 = 01                  A:01 X:55 Y:E4 P:25 SP:FB PPU: 76,175 CYC:8697
D8F9  F0 04     BEQ $D8FF                       A:01 X:55 Y:E4 P:27 SP:FB PPU: 76,193 CYC:8703
D8FF  60        RTS                             A:01 X:55 Y:E4 P:27 SP:FB PPU: 76,202 CYC:8706
C618  20 00 D9  JSR $D900                       A:01 X:55 Y:E4 P:27 SP:FD PPU: 76,220 CYC:8712
D900  A9 A3     LDA #$A3                        A:01 X:55 Y:E4 P:27 SP:FB PPU: 76,238 CYC:8718
D902  85 33     STA $33 = 00                    A:A3 X:55 Y:E4 P:A5 SP:FB PPU: 76,244 CYC:8720
D904  A9 89     LDA #$89                        A:A3 X:55 Y:E4 P:A5 SP:FB PPU: 76,253 CYC:8723
D906  8D 00 03  STA $0300 = 70                  A:89 X:55 Y:E4 P:A5 SP:FB PPU: 76,259 CYC:8725
D909  A9 12     LDA #$12                        A:89 X:55 Y:E4 P:A5 SP:FB PPU: 76,271 CYC:8729
D90B  8D 45 02  STA $0245 = 00                  A:12 X:55 Y:E4 P:25 SP:FB PPU: 76,277 CYC:8731
D90E  A9 FF     LDA #$FF                        A:12 X:55 Y:E4 P:25 SP:FB PPU: 76,289 CYC:8735
D910  85 01     STA $01 = FF                    A:FF X:55 Y:E4 P:A5 SP:FB PPU: 76,295 CYC:8737
D912  A2 65     LDX #$65                        A:FF X:55 Y:E4 P:A5 SP:FB PPU: 76,304 CYC:8740
D914  A9 00     LDA #$00                        A:FF X:65 Y:E4 P:25 SP:FB PPU: 76,310 CYC:8742
D916  85 89     STA $89 = 00                    A:00 X:65 Y:E4 P:27 SP:FB PPU: 76,316 CYC:8744
D918  A9 03     LDA #$03                        A:00 X:65 Y:E4 P:27 SP:FB PPU: 76,325 CYC:8747
D91A  85 8A     STA $8A = 00                    A:03 X:65 Y:E4 P:25 SP:FB PPU: 76,331 CYC:8749
D91C  A0 00     LDY #$00                        A:03 X:65 Y:E4 P:25 SP:FB PPU: 76,340 CYC:8752
D91E  38        SEC                             A:03 X:65 Y:00 P:27 SP:FB PPU: 77,  5 CYC:8754
D91F  A9 00     LDA #$00                        A:03 X:65 Y:00 P:27 SP:FB PPU: 77, 11 CYC:8756
D921  B8        CLV                             A:00 X:65 Y:00 P:27 SP:FB PPU: 77, 17 CYC:8758
D922  B1 89     LDA ($89),Y = 0300 @ 0300 = 89  A:00 X:65 Y:00 P:27 SP:FB PPU: 77, 23 CYC:8760
D924  F0 0C     BEQ $D932                       A:89 X:65 Y:00 P:A5 SP:FB PPU: 77, 38 CYC:8765
D926  90 0A     BCC $D932                       A:89 X:65 Y:00 P:A5 SP:FB PPU: 77, 44 CYC:8767
D928  70 08     BVS $D932                       A:89 X:65 Y:00 P:A5 SP:FB PPU: 77, 50 CYC:8769
D92A  C9 89     CMP #$89                        A:89 X:65 Y:00 P:A5 SP:FB PPU: 77, 56 CYC:8771
D92C  D0 04     BNE $D932                       A:89 X:65 Y:00 P:27 SP:FB PPU: 77, 62 CYC:8773
D92E  E0 65     CPX #$65                        A:89 X:65 Y:00 P:27 SP:FB PPU: 77, 68 CYC:8775
D930  F0 04     BEQ $D936                       A:89 X:65 Y:00 P:27 SP:FB PPU: 77, 74 CYC:8777
D936  A9 FF     LDA #$FF                        A:89 X:65 Y:00 P:27 SP:FB PPU: 77, 83 CYC:8780
D938  85 97     STA $97 = 00                    A:FF X:65 Y:00 P:A5 SP:FB PPU: 77, 89 CYC:8782
D93A  85 98     STA $98 = 00                    A:FF X:65 Y:00 P:A5 SP:FB PPU: 77, 98 CYC:8785
D93C  24 98     BIT $98 = FF                    A:FF X:65 Y:00 P:A5 SP:FB PPU: 77,107 CYC:8788
D93E  A0 34     LDY #$34                        A:FF X:65 Y:00 P:E5 SP:FB PPU: 77,116 CYC:8791
D940  B1 97     LDA ($97),Y = FFFF @ 0033 = A3  A:FF X:65 Y:34 P:65 SP:FB PPU: 77,122 CYC:8793
D942  C9 A3     CMP #$A3                        A:A3 X:65 Y:34 P:E5 SP:FB PPU: 77,140 CYC:8799
D944  D0 02     BNE $D948                       A:A3 X:65 Y:34 P:67 SP:FB PPU: 77,146 CYC:8801
D946  B0 04     BCS $D94C                       A:A3 X:65 Y:34 P:67 SP:FB PPU: 77,152 CYC:8803
D94C  A5 00     LDA $00 = 00                    A:A3 X:65 Y:34 P:67 SP:FB PPU: 77,161 CYC:8806
D94E  48        PHA                             A:00 X:65 Y:34 P:67 SP:FB PPU: 77,170 CYC:8809
D94F  A9 46     LDA #$46                        A:00 X:65 Y:34 P:67 SP:FA PPU: 77,179 CYC:8812
D951  85 FF     STA $FF = 00                    A:46 X:65 Y:34 P:65 SP:FA PPU: 77,185 CYC:8814
D953  A9 01     LDA #$01                        A:46 X:65 Y:34 P:65 SP:FA PPU: 77,194 CYC:8817
D955  85 00     STA $00 = 00                    A:01 X:65 Y:34 P:65 SP:FA PPU: 77,200 CYC:8819
D957  A0 FF     LDY #$FF                        A:01 X:65 Y:34 P:65 SP:FA PPU: 77,209 CYC:8822
D959  B1 FF     LDA ($FF),Y = 0146 @ 0245 = 12  A:01 X:65 Y:FF P:E5 SP:FA PPU: 77,215 CYC:8824
D95B  C9 12     CMP #$12                        A:12 X:65 Y:FF P:65 SP:FA PPU: 77,233 CYC:8830
D95D  F0 04     BEQ $D963                       A:12 X:65 Y:FF P:67 SP:FA PPU: 77,239 CYC:8832
D963  68        PLA                             A:12 X:65 Y:FF P:67 SP:FA PPU: 77,248 CYC:8835
D964  85 00     STA $00 = 01                    A:00 X:65 Y:FF P:67 SP:FB PPU: 77,260 CYC:8839
D966  A2 ED     LDX #$ED                        A:00 X:65 Y:FF P:67 SP:FB PPU: 77,269 CYC:8842
D968  A9 00     LDA #$00                        A:00 X:ED Y:FF P:E5 SP:FB PPU: 77,275 CYC:8844
D96A  85 33     STA $33 = A3                    A:00 X:ED Y:FF P:67 SP:FB PPU: 77,281 CYC:8846
D96C  A9 04     LDA #$04                        A:00 X:ED Y:FF P:67 SP:FB PPU: 77,290 CYC:8849
D96E  85 34     STA $34 = 00                    A:04 X:ED Y:FF P:65 SP:FB PPU: 77,296 CYC:8851
D970  A0 00     LDY #$00                        A:04 X:ED Y:FF P:65 SP:FB PPU: 77,305 CYC:8854
D972  18        CLC                             A:04 X:ED Y:00 P:67 SP:FB PPU: 77,311 CYC:8856
D973  A9 FF     LDA #$FF                        A:04 X:ED Y:00 P:66 SP:FB PPU: 77,317 CYC:8858
D975  85 01     STA $01 = FF                    A:FF X:ED Y:00 P:E4 SP:FB PPU: 77,323 CYC:8860
D977  24 01     BIT $01 = FF                    A:FF X:ED Y:00 P:E4 SP:FB PPU: 77,332 CYC:8863
D979  A9 AA     LDA #$AA                        A:FF X:ED Y:00 P:E4 SP:FB PPU: 78,  0 CYC:8866
D97B  8D 00 04  STA $0400 = AD                  A:AA X:ED Y:00 P:E4 SP:FB PPU: 78,  6 CYC:8868
D97E  A9 55     LDA #$55                        A:AA X:ED Y:00 P:E4 SP:FB PPU: 78, 18 CYC:8872
D980  11 33     ORA ($33),Y = 0400 @ 0400 = AA  A:55 X:ED Y:00 P:64 SP:FB PPU: 78, 24 CYC:8874
D982  B0 08     BCS $D98C                       A:FF X:ED Y:00 P:E4 SP:FB PPU: 78, 39 CYC:8879
D984  10 06     BPL $D98C                       A:FF X:ED Y:00 P:E4 SP:FB PPU: 78, 45 CYC:8881
D986  C9 FF     CMP #$FF                        A:FF X:ED Y:00 P:E4 SP:FB PPU: 78, 51 CYC:8883
D988  D0 02     BNE $D98C                       A:FF X:ED Y:00 P:67 SP:FB PPU: 78, 57 CYC:8885
D98A  70 02     BVS $D98E                       A:FF X:ED Y:00 P:67 SP:FB PPU: 78, 63 CYC:8887
D98E  E8        INX                             A:FF X:ED Y:00 P:67 SP:FB PPU: 78, 72 CYC:8890
D98F  38        SEC                             A:FF X:EE Y:00 P:E5 SP:FB PPU: 78, 78 CYC:8892
D990  B8        CLV                             A:FF X:EE Y:00 P:E5 SP:FB PPU: 78, 84 CYC:8894
D991  A9 00     LDA #$00                        A:FF X:EE Y:00 P:A5 SP:FB PPU: 78, 90 CYC:8896
D993  11 33     ORA ($33),Y = 0400 @ 0400 = AA  A:00 X:EE Y:00 P:27 SP:FB PPU: 78, 96 CYC:8898
D995  F0 06     BEQ $D99D                       A:AA X:EE Y:00 P:A5 SP:FB PPU: 78,111 CYC:8903
D997  70 04     BVS $D99D                       A:AA X:EE Y:00 P:A5 SP:FB PPU: 78,117 CYC:8905
D999  90 02     BCC $D99D                       A:AA X:EE Y:00 P:A5 SP:FB PPU: 78,123 CYC:8907
D99B  30 02     BMI $D99F                       A:AA X:EE Y:00 P:A5 SP:FB PPU: 78,129 CYC:8909
D99F  E8        INX                             A:AA X:EE Y:00 P:A5 SP:FB PPU: 78,138 CYC:8912
D9A0  18        CLC                             A:AA X:EF Y:00 P:A5 SP:FB PPU: 78,144 CYC:8914
D9A1  24 01     BIT $01 = FF                    A:AA X:EF Y:00 P:A4 SP:FB PPU: 78,150 CYC:8916
D9A3  A9 55     LDA #$55                        A:AA X:EF Y:00 P:E4 SP:FB PPU: 78,159 CYC:8919
D9A5  31 33     AND ($33),Y = 0400 @ 0400 = AA  A:55 X:EF Y:00 P:64 SP:FB PPU: 78,165 CYC:8921
D9A7  D0 06     BNE $D9AF                       A:00 X:EF Y:00 P:66 SP:FB PPU: 78,180 CYC:8926
D9A9  50 04     BVC $D9AF                       A:00 X:EF Y:00 P:66 SP:FB PPU: 78,186 CYC:8928
D9AB  B0 02     BCS $D9AF                       A:00 X:EF Y:00 P:66 SP:FB PPU: 78,192 CYC:8930
D9AD  10 02     BPL $D9B1                       A:00 X:EF Y:00 P:66 SP:FB PPU: 78,198 CYC:8932
D9B1  E8        INX                             A:00 X:EF Y:00 P:66 SP:FB PPU: 78,207 CYC:8935
D9B2  38        SEC                             A:00 X:F0 Y:00 P:E4 SP:FB PPU: 78,213 CYC:8937
D9B3  B8        CLV                             A:00 X:F0 Y:00 P:E5 SP:FB PPU: 78,219 CYC:8939
D9B4  A9 EF     LDA #$EF                        A:00 X:F0 Y:00 P:A5 SP:FB PPU: 78,225 CYC:8941
D9B6  8D 00 04  STA $0400 = AA                  A:EF X:F0 Y:00 P:A5 SP:FB PPU: 78,231 CYC:8943
D9B9  A9 F8     LDA #$F8                        A:EF X:F0 Y:00 P:A5 SP:FB PPU: 78,243 CYC:8947
D9BB  31 33     AND ($33),Y = 0400 @ 0400 = EF  A:F8 X:F0 Y:00 P:A5 SP:FB PPU: 78,249 CYC:8949
D9BD  90 08     BCC $D9C7                       A:E8 X:F0 Y:00 P:A5 SP:FB PPU: 78,264 CYC:8954
D9BF  10 06     BPL $D9C7                       A:E8 X:F0 Y:00 P:A5 SP:FB PPU: 78,270 CYC:8956
D9C1  C9 E8     CMP #$E8                        A:E8 X:F0 Y:00 P:A5 SP:FB PPU: 78,276 CYC:8958
D9C3  D0 02     BNE $D9C7                       A:E8 X:F0 Y:00 P:27 SP:FB PPU: 78,282 CYC:8960
D9C5  50 02     BVC $D9C9                       A:E8 X:F0 Y:00 P:27 SP:FB PPU: 78,288 CYC:8962
D9C9  E8        INX                             A:E8 X:F0 Y:00 P:27 SP:FB PPU: 78,297 CYC:8965
D9CA  18        CLC                             A:E8 X:F1 Y:00 P:A5 SP:FB PPU: 78,303 CYC:8967
D9CB  24 01     BIT $01 = FF                    A:E8 X:F1 Y:00 P:A4 SP:FB PPU: 78,309 CYC:8969
D9CD  A9 AA     LDA #$AA                        A:E8 X:F1 Y:00 P:E4 SP:FB PPU: 78,318 CYC:8972
D9CF  8D 00 04  STA $0400 = EF                  A:AA X:F1 Y:00 P:E4 SP:FB PPU: 78,324 CYC:8974
D9D2  A9 5F     LDA #$5F                        A:AA X:F1 Y:00 P:E4 SP:FB PPU: 78,336 CYC:8978
D9D4  51 33     EOR ($33),Y = 0400 @ 0400 = AA  A:5F X:F1 Y:00 P:64 SP:FB PPU: 79,  1 CYC:8980
D9D6  B0 08     BCS $D9E0                       A:F5 X:F1 Y:00 P:E4 SP:FB PPU: 79, 16 CYC:8985
D9D8  10 06     BPL $D9E0                       A:F5 X:F1 Y:00 P:E4 SP:FB PPU: 79, 22 CYC:8987
D9DA  C9 F5     CMP #$F5                        A:F5 X:F1 Y:00 P:E4 SP:FB PPU: 79, 28 CYC:8989
D9DC  D0 02     BNE $D9E0                       A:F5 X:F1 Y:00 P:67 SP:FB PPU: 79, 34 CYC:8991
D9DE  70 02     BVS $D9E2                       A:F5 X:F1 Y:00 P:67 SP:FB PPU: 79, 40 CYC:8993
D9E2  E8        INX                             A:F5 X:F1 Y:00 P:67 SP:FB PPU: 79, 49 CYC:8996
D9E3  38        SEC                             A:F5 X:F2 Y:00 P:E5 SP:FB PPU: 79, 55 CYC:8998
D9E4  B8        CLV                             A:F5 X:F2 Y:00 P:E5 SP:FB PPU: 79, 61 CYC:9000
D9E5  A9 70     LDA #$70                        A:F5 X:F2 Y:00 P:A5 SP:FB PPU: 79, 67 CYC:9002
D9E7  8D 00 04  STA $0400 = AA                  A:70 X:F2 Y:00 P:25 SP:FB PPU: 79, 73 CYC:9004
D9EA  51 33     EOR ($33),Y = 0400 @ 0400 = 70  A:70 X:F2 Y:00 P:25 SP:FB PPU: 79, 85 CYC:9008
D9EC  D0 06     BNE $D9F4                       A:00 X:F2 Y:00 P:27 SP:FB PPU: 79,100 CYC:9013
D9EE  70 04     BVS $D9F4                       A:00 X:F2 Y:00 P:27 SP:FB PPU: 79,106 CYC:9015
D9F0  90 02     BCC $D9F4                       A:00 X:F2 Y:00 P:27 SP:FB PPU: 79,112 CYC:9017
D9F2  10 02     BPL $D9F6                       A:00 X:F2 Y:00 P:27 SP:FB PPU: 79,118 CYC:9019
D9F6  E8        INX                             A:00 X:F2 Y:00 P:27 SP:FB PPU: 79,127 CYC:9022
D9F7  18        CLC                             A:00 X:F3 Y:00 P:A5 SP:FB PPU: 79,133 CYC:9024
D9F8  24 01     BIT $01 = FF                    A:00 X:F3 Y:00 P:A4 SP:FB PPU: 79,139 CYC:9026
D9FA  A9 69     LDA #$69                        A:00 X:F3 Y:00 P:E6 SP:FB PPU: 79,148 CYC:9029
D9FC  8D 00 04  STA $0400 = 70                  A:69 X:F3 Y:00 P:64 SP:FB PPU: 79,154 CYC:9031
D9FF  A9 00     LDA #$00                        A:69 X:F3 Y:00 P:64 SP:FB PPU: 79,166 CYC:9035
DA01  71 33     ADC ($33),Y = 0400 @ 0400 = 69  A:00 X:F3 Y:00 P:66 SP:FB PPU: 79,172 CYC:9037
DA03  30 08     BMI $DA0D                       A:69 X:F3 Y:00 P:24 SP:FB PPU: 79,187 CYC:9042
DA05  B0 06     BCS $DA0D                       A:69 X:F3 Y:00 P:24 SP:FB PPU: 79,193 CYC:9044
DA07  C9 69     CMP #$69                        A:69 X:F3 Y:00 P:24 SP:FB PPU: 79,199 CYC:9046
DA09  D0 02     BNE $DA0D                       A:69 X:F3 Y:00 P:27 SP:FB PPU: 79,205 CYC:9048
DA0B  50 02     BVC $DA0F                       A:69 X:F3 Y:00 P:27 SP:FB PPU: 79,211 CYC:9050
DA0F  E8        INX                             A:69 X:F3 Y:00 P:27 SP:FB PPU: 79,220 CYC:9053
DA10  38        SEC                             A:69 X:F4 Y:00 P:A5 SP:FB PPU: 79,226 CYC:9055
DA11  24 01     BIT $01 = FF                    A:69 X:F4 Y:00 P:A5 SP:FB PPU: 79,232 CYC:9057
DA13  A9 00     LDA #$00                        A:69 X:F4 Y:00 P:E5 SP:FB PPU: 79,241 CYC:9060
DA15  71 33     ADC ($33),Y = 0400 @ 0400 = 69  A:00 X:F4 Y:00 P:67 SP:FB PPU: 79,247 CYC:9062
DA17  30 08     BMI $DA21                       A:6A X:F4 Y:00 P:24 SP:FB PPU: 79,262 CYC:9067
DA19  B0 06     BCS $DA21                       A:6A X:F4 Y:00 P:24 SP:FB PPU: 79,268 CYC:9069
DA1B  C9 6A     CMP #$6A                        A:6A X:F4 Y:00 P:24 SP:FB PPU: 79,274 CYC:9071
DA1D  D0 02     BNE $DA21                       A:6A X:F4 Y:00 P:27 SP:FB PPU: 79,280 CYC:9073
DA1F  50 02     BVC $DA23                       A:6A X:F4 Y:00 P:27 SP:FB PPU: 79,286 CYC:9075
DA23  E8        INX                             A:6A X:F4 Y:00 P:27 SP:FB PPU: 79,295 CYC:9078
DA24  38        SEC                             A:6A X:F5 Y:00 P:A5 SP:FB PPU: 79,301 CYC:9080
DA25  B8        CLV                             A:6A X:F5 Y:00 P:A5 SP:FB PPU: 79,307 CYC:9082
DA26  A9 7F     LDA #$7F                        A:6A X:F5 Y:00 P:A5 SP:FB PPU: 79,313 CYC:9084
DA28  8D 00 04  STA $0400 = 69                  A:7F X:F5 Y:00 P:25 SP:FB PPU: 79,319 CYC:9086
DA2B  71 33     ADC ($33),Y = 0400 @ 0400 = 7F  A:7F X:F5 Y:00 P:25 SP:FB PPU: 79,331 CYC:9090
DA2D  10 08     BPL $DA37                       A:FF X:F5 Y:00 P:E4 SP:FB PPU: 80,  5 CYC:9095
DA2F  B0 06     BCS $DA37                       A:FF X:F5 Y:00 P:E4 SP:FB PPU: 80, 11 CYC:9097
DA31  C9 FF     CMP #$FF                        A:FF X:F5 Y:00 P:E4 SP:FB PPU: 80, 17 CYC:9099
DA33  D0 02     BNE $DA37                       A:FF X:F5 Y:00 P:67 SP:FB PPU: 80, 23 CYC:9101
DA35  70 02     BVS $DA39                       A:FF X:F5 Y:00 P:67 SP:FB PPU: 80, 29 CYC:9103
DA39  E8        INX                             A:FF X:F5 Y:00 P:67 SP:FB PPU: 80, 38 CYC:9106
DA3A  18        CLC                             A:FF X:F6 Y:00 P:E5 SP:FB PPU: 80, 44 CYC:9108
DA3B  24 01     BIT $01 = FF                    A:FF X:F6 Y:00 P:E4 SP:FB PPU: 80, 50 CYC:9110
DA3D  A9 80     LDA #$80                        A:FF X:F6 Y:00 P:E4 SP:FB PPU: 80, 59 CYC:9113
DA3F  8D 00 04  STA $0400 = 7F                  A:80 X:F6 Y:00 P:E4 SP:FB PPU: 80, 65 CYC:9115
DA42  A9 7F     LDA #$7F                        A:80 X:F6 Y:00 P:E4 SP:FB PPU: 80, 77 CYC:9119
DA44  71 33     ADC ($33),Y = 0400 @ 0400 = 80  A:7F X:F6 Y:00 P:64 SP:FB PPU: 80, 83 CYC:9121
DA46  10 08     BPL $DA50                       A:FF X:F6 Y:00 P:A4 SP:FB PPU: 80, 98 CYC:9126
DA48  B0 06     BCS $DA50                       A:FF X:F6 Y:00 P:A4 SP:FB PPU: 80,104 CYC:9128
DA4A  C9 FF     CMP #$FF                        A:FF X:F6 Y:00 P:A4 SP:FB PPU: 80,110 CYC:9130
DA4C  D0 02     BNE $DA50                       A:FF X:F6 Y:00 P:27 SP:FB PPU: 80,116 CYC:9132
DA4E  50 02     BVC $DA52                       A:FF X:F6 Y:00 P:27 SP:FB PPU: 80,122 CYC:9134
DA52  E8        INX                             A:FF X:F6 Y:00 P:27 SP:FB PPU: 80,131 CYC:9137
DA53  38        SEC                             A:FF X:F7 Y:00 P:A5 SP:FB PPU: 80,137 CYC:9139
DA54  B8        CLV                             A:FF X:F7 Y:00 P:A5 SP:FB PPU: 80,143 CYC:9141
DA55  A9 80     LDA #$80                        A:FF X:F7 Y:00 P:A5 SP:FB PPU: 80,149 CYC:9143
DA57  8D 00 04  STA $0400 = 80                  A:80 X:F7 Y:00 P:A5 SP:FB PPU: 80,155 CYC:9145
DA5A  A9 7F     LDA #$7F                        A:80 X:F7 Y:00 P:A5 SP:FB PPU: 80,167 CYC:9149
DA5C  71 33     ADC ($33),Y = 0400 @ 0400 = 80  A:7F X:F7 Y:00 P:25 SP:FB PPU: 80,173 CYC:9151
DA5E  D0 06     BNE $DA66                       A:00 X:F7 Y:00 P:27 SP:FB PPU: 80,188 CYC:9156
DA60  30 04     BMI $DA66                       A:00 X:F7 Y:00 P:27 SP:FB PPU: 80,194 CYC:9158
DA62  70 02     BVS $DA66                       A:00 X:F7 Y:00 P:27 SP:FB PPU: 80,200 CYC:9160
DA64  B0 02     BCS $DA68                       A:00 X:F7 Y:00 P:27 SP:FB PPU: 80,206 CYC:9162
DA68  E8        INX                             A:00 X:F7 Y:00 P:27 SP:FB PPU: 80,215 CYC:9165
DA69  24 01     BIT $01 = FF                    A:00 X:F8 Y:00 P:A5 SP:FB PPU: 80,221 CYC:9167
DA6B  A9 40     LDA #$40                        A:00 X:F8 Y:00 P:E7 SP:FB PPU: 80,230 CYC:9170
DA6D  8D 00 04  STA $0400 = 80                  A:40 X:F8 Y:00 P:65 SP:FB PPU: 80,236 CYC:9172
DA70  D1 33     CMP ($33),Y = 0400 @ 0400 = 40  A:40 X:F8 Y:00 P:65 SP:FB PPU: 80,248 CYC:9176
DA72  30 06     BMI $DA7A                       A:40 X:F8 Y:00 P:67 SP:FB PPU: 80,263 CYC:9181
DA74  90 04     BCC $DA7A                       A:40 X:F8 Y:00 P:67 SP:FB PPU: 80,269 CYC:9183
DA76  D0 02     BNE $DA7A                       A:40 X:F8 Y:00 P:67 SP:FB PPU: 80,275 CYC:9185
DA78  70 02     BVS $DA7C                       A:40 X:F8 Y:00 P:67 SP:FB PPU: 80,281 CYC:9187
DA7C  E8        INX                             A:40 X:F8 Y:00 P:67 SP:FB PPU: 80,290 CYC:9190
DA7D  B8        CLV                             A:40 X:F9 Y:00 P:E5 SP:FB PPU: 80,296 CYC:9192
DA7E  CE 00 04  DEC $0400 = 40                  A:40 X:F9 Y:00 P:A5 SP:FB PPU: 80,302 CYC:9194
DA81  D1 33     CMP ($33),Y = 0400 @ 0400 = 3F  A:40 X:F9 Y:00 P:25 SP:FB PPU: 80,320 CYC:9200
DA83  F0 06     BEQ $DA8B                       A:40 X:F9 Y:00 P:25 SP:FB PPU: 80,335 CYC:9205
DA85  30 04     BMI $DA8B                       A:40 X:F9 Y:00 P:25 SP:FB PPU: 81,  0 CYC:9207
DA87  90 02     BCC $DA8B                       A:40 X:F9 Y:00 P:25 SP:FB PPU: 81,  6 CYC:9209
DA89  50 02     BVC $DA8D                       A:40 X:F9 Y:00 P:25 SP:FB PPU: 81, 12 CYC:9211
DA8D  E8        INX                             A:40 X:F9 Y:00 P:25 SP:FB PPU: 81, 21 CYC:9214
DA8E  EE 00 04  INC $0400 = 3F                  A:40 X:FA Y:00 P:A5 SP:FB PPU: 81, 27 CYC:9216
DA91  EE 00 04  INC $0400 = 40                  A:40 X:FA Y:00 P:25 SP:FB PPU: 81, 45 CYC:9222
DA94  D1 33     CMP ($33),Y = 0400 @ 0400 = 41  A:40 X:FA Y:00 P:25 SP:FB PPU: 81, 63 CYC:9228
DA96  F0 02     BEQ $DA9A                       A:40 X:FA Y:00 P:A4 SP:FB PPU: 81, 78 CYC:9233
DA98  30 02     BMI $DA9C                       A:40 X:FA Y:00 P:A4 SP:FB PPU: 81, 84 CYC:9235
DA9C  E8        INX                             A:40 X:FA Y:00 P:A4 SP:FB PPU: 81, 93 CYC:9238
DA9D  A9 00     LDA #$00                        A:40 X:FB Y:00 P:A4 SP:FB PPU: 81, 99 CYC:9240
DA9F  8D 00 04  STA $0400 = 41                  A:00 X:FB Y:00 P:26 SP:FB PPU: 81,105 CYC:9242
DAA2  A9 80     LDA #$80                        A:00 X:FB Y:00 P:26 SP:FB PPU: 81,117 CYC:9246
DAA4  D1 33     CMP ($33),Y = 0400 @ 0400 = 00  A:80 X:FB Y:00 P:A4 SP:FB PPU: 81,123 CYC:9248
DAA6  F0 04     BEQ $DAAC                       A:80 X:FB Y:00 P:A5 SP:FB PPU: 81,138 CYC:9253
DAA8  10 02     BPL $DAAC                       A:80 X:FB Y:00 P:A5 SP:FB PPU: 81,144 CYC:9255
DAAA  B0 02     BCS $DAAE                       A:80 X:FB Y:00 P:A5 SP:FB PPU: 81,150 CYC:9257
DAAE  E8        INX                             A:80 X:FB Y:00 P:A5 SP:FB PPU: 81,159 CYC:9260
DAAF  A0 80     LDY #$80                        A:80 X:FC Y:00 P:A5 SP:FB PPU: 81,165 CYC:9262
DAB1  8C 00 04  STY $0400 = 00                  A:80 X:FC Y:80 P:A5 SP:FB PPU: 81,171 CYC:9264
DAB4  A0 00     LDY #$00                        A:80 X:FC Y:80 P:A5 SP:FB PPU: 81,183 CYC:9268
DAB6  D1 33     CMP ($33),Y = 0400 @ 0400 = 80  A:80 X:FC Y:00 P:27 SP:FB PPU: 81,189 CYC:9270
DAB8  D0 04     BNE $DABE                       A:80 X:FC Y:00 P:27 SP:FB PPU: 81,204 CYC:9275
DABA  30 02     BMI $DABE                       A:80 X:FC Y:00 P:27 SP:FB PPU: 81,210 CYC:9277
DABC  B0 02     BCS $DAC0                       A:80 X:FC Y:00 P:27 SP:FB PPU: 81,216 CYC:9279
DAC0  E8        INX                             A:80 X:FC Y:00 P:27 SP:FB PPU: 81,225 CYC:9282
DAC1  EE 00 04  INC $0400 = 80                  A:80 X:FD Y:00 P:A5 SP:FB PPU: 81,231 CYC:9284
DAC4  D1 33     CMP ($33),Y = 0400 @ 0400 = 81  A:80 X:FD Y:00 P:A5 SP:FB PPU: 81,249 CYC:9290
DAC6  B0 04     BCS $DACC                       A:80 X:FD Y:00 P:A4 SP:FB PPU: 81,264 CYC:9295
DAC8  F0 02     BEQ $DACC                       A:80 X:FD Y:00 P:A4 SP:FB PPU: 81,270 CYC:9297
DACA  30 02     BMI $DACE                       A:80 X:FD Y:00 P:A4 SP:FB PPU: 81,276 CYC:9299
DACE  E8        INX                             A:80 X:FD Y:00 P:A4 SP:FB PPU: 81,285 CYC:9302
DACF  CE 00 04  DEC $0400 = 81                  A:80 X:FE Y:00 P:A4 SP:FB PPU: 81,291 CYC:9304
DAD2  CE 00 04  DEC $0400 = 80                  A:80 X:FE Y:00 P:A4 SP:FB PPU: 81,309 CYC:9310
DAD5  D1 33     CMP ($33),Y = 0400 @ 0400 = 7F  A:80 X:FE Y:00 P:24 SP:FB PPU: 81,327 CYC:9316
DAD7  90 04     BCC $DADD                       A:80 X:FE Y:00 P:25 SP:FB PPU: 82,  1 CYC:9321
DAD9  F0 02     BEQ $DADD                       A:80 X:FE Y:00 P:25 SP:FB PPU: 82,  7 CYC:9323
DADB  10 02     BPL $DADF                       A:80 X:FE Y:00 P:25 SP:FB PPU: 82, 13 CYC:9325
DADF  60        RTS                             A:80 X:FE Y:00 P:25 SP:FB PPU: 82, 22 CYC:9328
C61B  A5 00     LDA $00 = 00                    A:80 X:FE Y:00 P:25 SP:FD PPU: 82, 40 CYC:9334
C61D  85 10     STA $10 = 00                    A:00 X:FE Y:00 P:27 SP:FD PPU: 82, 49 CYC:9337
C61F  A9 00     LDA #$00                        A:00 X:FE Y:00 P:27 SP:FD PPU: 82, 58 CYC:9340
C621  85 00     STA $00 = 00                    A:00 X:FE Y:00 P:27 SP:FD PPU: 82, 64 CYC:9342
C623  20 E0 DA  JSR $DAE0                       A:00 X:FE Y:00 P:27 SP:FD PPU: 82, 73 CYC:9345
DAE0  A9 00     LDA #$00                        A:00 X:FE Y:00 P:27 SP:FB PPU: 82, 91 CYC:9351
DAE2  85 33     STA $33 = 00                    A:00 X:FE Y:00 P:27 SP:FB PPU: 82, 97 CYC:9353
DAE4  A9 04     LDA #$04                        A:00 X:FE Y:00 P:27 SP:FB PPU: 82,106 CYC:9356
DAE6  85 34     STA $34 = 04                    A:04 X:FE Y:00 P:25 SP:FB PPU: 82,112 CYC:9358
DAE8  A0 00     LDY #$00                        A:04 X:FE Y:00 P:25 SP:FB PPU: 82,121 CYC:9361
DAEA  A2 01     LDX #$01                        A:04 X:FE Y:00 P:27 SP:FB PPU: 82,127 CYC:9363
DAEC  24 01     BIT $01 = FF                    A:04 X:01 Y:00 P:25 SP:FB PPU: 82,133 CYC:9365
DAEE  A9 40     LDA #$40                        A:04 X:01 Y:00 P:E5 SP:FB PPU: 82,142 CYC:9368
DAF0  8D 00 04  STA $0400 = 7F                  A:40 X:01 Y:00 P:65 SP:FB PPU: 82,148 CYC:9370
DAF3  38        SEC                             A:40 X:01 Y:00 P:65 SP:FB PPU: 82,160 CYC:9374
DAF4  F1 33     SBC ($33),Y = 0400 @ 0400 = 40  A:40 X:01 Y:00 P:65 SP:FB PPU: 82,166 CYC:9376
DAF6  30 0A     BMI $DB02                       A:00 X:01 Y:00 P:27 SP:FB PPU: 82,181 CYC:9381
DAF8  90 08     BCC $DB02                       A:00 X:01 Y:00 P:27 SP:FB PPU: 82,187 CYC:9383
DAFA  D0 06     BNE $DB02                       A:00 X:01 Y:00 P:27 SP:FB PPU: 82,193 CYC:9385
DAFC  70 04     BVS $DB02                       A:00 X:01 Y:00 P:27 SP:FB PPU: 82,199 CYC:9387
DAFE  C9 00     CMP #$00                        A:00 X:01 Y:00 P:27 SP:FB PPU: 82,205 CYC:9389
DB00  F0 02     BEQ $DB04                       A:00 X:01 Y:00 P:27 SP:FB PPU: 82,211 CYC:9391
DB04  E8        INX                             A:00 X:01 Y:00 P:27 SP:FB PPU: 82,220 CYC:9394
DB05  B8        CLV                             A:00 X:02 Y:00 P:25 SP:FB PPU: 82,226 CYC:9396
DB06  38        SEC                             A:00 X:02 Y:00 P:25 SP:FB PPU: 82,232 CYC:9398
DB07  A9 40     LDA #$40                        A:00 X:02 Y:00 P:25 SP:FB PPU: 82,238 CYC:9400
DB09  CE 00 04  DEC $0400 = 40                  A:40 X:02 Y:00 P:25 SP:FB PPU: 82,244 CYC:9402
DB0C  F1 33     SBC ($33),Y = 0400 @ 0400 = 3F  A:40 X:02 Y:00 P:25 SP:FB PPU: 82,262 CYC:9408
DB0E  F0 0A     BEQ $DB1A                       A:01 X:02 Y:00 P:25 SP:FB PPU: 82,277 CYC:9413
DB10  30 08     BMI $DB1A                       A:01 X:02 Y:00 P:25 SP:FB PPU: 82,283 CYC:9415
DB12  90 06     BCC $DB1A                       A:01 X:02 Y:00 P:25 SP:FB PPU: 82,289 CYC:9417
DB14  70 04     BVS $DB1A                       A:01 X:02 Y:00 P:25 SP:FB PPU: 82,295 CYC:9419
DB16  C9 01     CMP #$01                        A:01 X:02 Y:00 P:25 SP:FB PPU: 82,301 CYC:9421
DB18  F0 02     BEQ $DB1C                       A:01 X:02 Y:00 P:27 SP:FB PPU: 82,307 CYC:9423
DB1C  E8        INX                             A:01 X:02 Y:00 P:27 SP:FB PPU: 82,316 CYC:9426
DB1D  A9 40     LDA #$40                        A:01 X:03 Y:00 P:25 SP:FB PPU: 82,322 CYC:9428
DB1F  38        SEC                             A:40 X:03 Y:00 P:25 SP:FB PPU: 82,328 CYC:9430
DB20  24 01     BIT $01 = FF                    A:40 X:03 Y:00 P:25 SP:FB PPU: 82,334 CYC:9432
DB22  EE 00 04  INC $0400 = 3F                  A:40 X:03 Y:00 P:E5 SP:FB PPU: 83,  2 CYC:9435
DB25  EE 00 04  INC $0400 = 40                  A:40 X:03 Y:00 P:65 SP:FB PPU: 83, 20 CYC:9441
DB28  F1 33     SBC ($33),Y = 0400 @ 0400 = 41  A:40 X:03 Y:00 P:65 SP:FB PPU: 83, 38 CYC:9447
DB2A  B0 0A     BCS $DB36                       A:FF X:03 Y:00 P:A4 SP:FB PPU: 83, 53 CYC:9452
DB2C  F0 08     BEQ $DB36                       A:FF X:03 Y:00 P:A4 SP:FB PPU: 83, 59 CYC:9454
DB2E  10 06     BPL $DB36                       A:FF X:03 Y:00 P:A4 SP:FB PPU: 83, 65 CYC:9456
DB30  70 04     BVS $DB36                       A:FF X:03 Y:00 P:A4 SP:FB PPU: 83, 71 CYC:9458
DB32  C9 FF     CMP #$FF                        A:FF X:03 Y:00 P:A4 SP:FB PPU: 83, 77 CYC:9460
DB34  F0 02     BEQ $DB38                       A:FF X:03 Y:00 P:27 SP:FB PPU: 83, 83 CYC:9462
DB38  E8        INX                             A:FF X:03 Y:00 P:27 SP:FB PPU: 83, 92 CYC:9465
DB39  18        CLC                             A:FF X:04 Y:00 P:25 SP:FB PPU: 83, 98 CYC:9467
DB3A  A9 00     LDA #$00                        A:FF X:04 Y:00 P:24 SP:FB PPU: 83,104 CYC:9469
DB3C  8D 00 04  STA $0400 = 41                  A:00 X:04 Y:00 P:26 SP:FB PPU: 83,110 CYC:9471
DB3F  A9 80     LDA #$80                        A:00 X:04 Y:00 P:26 SP:FB PPU: 83,122 CYC:9475
DB41  F1 33     SBC ($33),Y = 0400 @ 0400 = 00  A:80 X:04 Y:00 P:A4 SP:FB PPU: 83,128 CYC:9477
DB43  90 04     BCC $DB49                       A:7F X:04 Y:00 P:65 SP:FB PPU: 83,143 CYC:9482
DB45  C9 7F     CMP #$7F                        A:7F X:04 Y:00 P:65 SP:FB PPU: 83,149 CYC:9484
DB47  F0 02     BEQ $DB4B                       A:7F X:04 Y:00 P:67 SP:FB PPU: 83,155 CYC:9486
DB4B  E8        INX                             A:7F X:04 Y:00 P:67 SP:FB PPU: 83,164 CYC:9489
DB4C  38        SEC                             A:7F X:05 Y:00 P:65 SP:FB PPU: 83,170 CYC:9491
DB4D  A9 7F     LDA #$7F                        A:7F X:05 Y:00 P:65 SP:FB PPU: 83,176 CYC:9493
DB4F  8D 00 04  STA $0400 = 00                  A:7F X:05 Y:00 P:65 SP:FB PPU: 83,182 CYC:9495
DB52  A9 81     LDA #$81                        A:7F X:05 Y:00 P:65 SP:FB PPU: 83,194 CYC:9499
DB54  F1 33     SBC ($33),Y = 0400 @ 0400 = 7F  A:81 X:05 Y:00 P:E5 SP:FB PPU: 83,200 CYC:9501
DB56  50 06     BVC $DB5E                       A:02 X:05 Y:00 P:65 SP:FB PPU: 83,215 CYC:9506
DB58  90 04     BCC $DB5E                       A:02 X:05 Y:00 P:65 SP:FB PPU: 83,221 CYC:9508
DB5A  C9 02     CMP #$02                        A:02 X:05 Y:00 P:65 SP:FB PPU: 83,227 CYC:9510
DB5C  F0 02     BEQ $DB60                       A:02 X:05 Y:00 P:67 SP:FB PPU: 83,233 CYC:9512
DB60  E8        INX                             A:02 X:05 Y:00 P:67 SP:FB PPU: 83,242 CYC:9515
DB61  A9 00     LDA #$00                        A:02 X:06 Y:00 P:65 SP:FB PPU: 83,248 CYC:9517
DB63  A9 87     LDA #$87                        A:00 X:06 Y:00 P:67 SP:FB PPU: 83,254 CYC:9519
DB65  91 33     STA ($33),Y = 0400 @ 0400 = 7F  A:87 X:06 Y:00 P:E5 SP:FB PPU: 83,260 CYC:9521
DB67  AD 00 04  LDA $0400 = 87                  A:87 X:06 Y:00 P:E5 SP:FB PPU: 83,278 CYC:9527
DB6A  C9 87     CMP #$87                        A:87 X:06 Y:00 P:E5 SP:FB PPU: 83,290 CYC:9531
DB6C  F0 02     BEQ $DB70                       A:87 X:06 Y:00 P:67 SP:FB PPU: 83,296 CYC:9533
DB70  E8        INX                             A:87 X:06 Y:00 P:67 SP:FB PPU: 83,305 CYC:9536
DB71  A9 7E     LDA #$7E                        A:87 X:07 Y:00 P:65 SP:FB PPU: 83,311 CYC:9538
DB73  8D 00 02  STA $0200 = 7F                  A:7E X:07 Y:00 P:65 SP:FB PPU: 83,317 CYC:9540
DB76  A9 DB     LDA #$DB                        A:7E X:07 Y:00 P:65 SP:FB PPU: 83,329 CYC:9544
DB78  8D 01 02  STA $0201 = 00                  A:DB X:07 Y:00 P:E5 SP:FB PPU: 83,335 CYC:9546
DB7B  6C 00 02  JMP ($0200) = DB7E              A:DB X:07 Y:00 P:E5 SP:FB PPU: 84,  6 CYC:9550
DB7E  A9 00     LDA #$00                        A:DB X:07 Y:00 P:E5 SP:FB PPU: 84, 21 CYC:9555
DB80  8D FF 02  STA $02FF = 00                  A:00 X:07 Y:00 P:67 SP:FB PPU: 84, 27 CYC:9557
DB83  A9 01     LDA #$01                        A:00 X:07 Y:00 P:67 SP:FB PPU: 84, 39 CYC:9561
DB85  8D 00 03  STA $0300 = 89                  A:01 X:07 Y:00 P:65 SP:FB PPU: 84, 45 CYC:9563
DB88  A9 03     LDA #$03                        A:01 X:07 Y:00 P:65 SP:FB PPU: 84, 57 CYC:9567
DB8A  8D 00 02  STA $0200 = 7E                  A:03 X:07 Y:00 P:65 SP:FB PPU: 84, 63 CYC:9569
DB8D  A9 A9     LDA #$A9                        A:03 X:07 Y:00 P:65 SP:FB PPU: 84, 75 CYC:9573
DB8F  8D 00 01  STA $0100 = 00                  A:A9 X:07 Y:00 P:E5 SP:FB PPU: 84, 81 CYC:9575
DB92  A9 55     LDA #$55                        A:A9 X:07 Y:00 P:E5 SP:FB PPU: 84, 93 CYC:9579
DB94  8D 01 01  STA $0101 = 00                  A:55 X:07 Y:00 P:65 SP:FB PPU: 84, 99 CYC:9581
DB97  A9 60     LDA #$60                        A:55 X:07 Y:00 P:65 SP:FB PPU: 84,111 CYC:9585
DB99  8D 02 01  STA $0102 = 00                  A:60 X:07 Y:00 P:65 SP:FB PPU: 84,117 CYC:9587
DB9C  A9 A9     LDA #$A9                        A:60 X:07 Y:00 P:65 SP:FB PPU: 84,129 CYC:9591
DB9E  8D 00 03  STA $0300 = 01                  A:A9 X:07 Y:00 P:E5 SP:FB PPU: 84,135 CYC:9593
DBA1  A9 AA     LDA #$AA                        A:A9 X:07 Y:00 P:E5 SP:FB PPU: 84,147 CYC:9597
DBA3  8D 01 03  STA $0301 = 00                  A:AA X:07 Y:00 P:E5 SP:FB PPU: 84,153 CYC:9599
DBA6  A9 60     LDA #$60                        A:AA X:07 Y:00 P:E5 SP:FB PPU: 84,165 CYC:9603
DBA8  8D 02 03  STA $0302 = 00                  A:60 X:07 Y:00 P:65 SP:FB PPU: 84,171 CYC:9605
DBAB  20 B5 DB  JSR $DBB5                       A:60 X:07 Y:00 P:65 SP:FB PPU: 84,183 CYC:9609
DBB5  6C FF 02  JMP ($02FF) = 0300              A:60 X:07 Y:00 P:65 SP:F9 PPU: 84,201 CYC:9615
0300  A9 AA     LDA #$AA                        A:60 X:07 Y:00 P:65 SP:F9 PPU: 84,216 CYC:9620
0302  60        RTS                             A:AA X:07 Y:00 P:E5 SP:F9 PPU: 84,222 CYC:9622
DBAE  C9 AA     CMP #$AA                        A:AA X:07 Y:00 P:E5 SP:FB PPU: 84,240 CYC:9628
DBB0  F0 02     BEQ $DBB4                       A:AA X:07 Y:00 P:67 SP:FB PPU: 84,246 CYC:9630
DBB4  60        RTS                             A:AA X:07 Y:00 P:67 SP:FB PPU: 84,255 CYC:9633
C626  20 4A DF  JSR $DF4A                       A:AA X:07 Y:00 P:67 SP:FD PPU: 84,273 CYC:9639
DF4A  A9 89     LDA #$89                        A:AA X:07 Y:00 P:67 SP:FB PPU: 84,291 CYC:9645
DF4C  8D 00 03  STA $0300 = A9                  A:89 X:07 Y:00 P:E5 SP:FB PPU: 84,297 CYC:9647
DF4F  A9 A3     LDA #$A3                        A:89 X:07 Y:00 P:E5 SP:FB PPU: 84,309 CYC:9651
DF51  85 33     STA $33 = 00                    A:A3 X:07 Y:00 P:E5 SP:FB PPU: 84,315 CYC:9653
DF53  A9 12     LDA #$12                        A:A3 X:07 Y:00 P:E5 SP:FB PPU: 84,324 CYC:9656
DF55  8D 45 02  STA $0245 = 12                  A:12 X:07 Y:00 P:65 SP:FB PPU: 84,330 CYC:9658
DF58  A2 65     LDX #$65                        A:12 X:07 Y:00 P:65 SP:FB PPU: 85,  1 CYC:9662
DF5A  A0 00     LDY #$00                        A:12 X:65 Y:00 P:65 SP:FB PPU: 85,  7 CYC:9664
DF5C  38        SEC                             A:12 X:65 Y:00 P:67 SP:FB PPU: 85, 13 CYC:9666
DF5D  A9 00     LDA #$00                        A:12 X:65 Y:00 P:67 SP:FB PPU: 85, 19 CYC:9668
DF5F  B8        CLV                             A:00 X:65 Y:00 P:67 SP:FB PPU: 85, 25 CYC:9670
DF60  B9 00 03  LDA $0300,Y @ 0300 = 89         A:00 X:65 Y:00 P:27 SP:FB PPU: 85, 31 CYC:9672
DF63  F0 0C     BEQ $DF71                       A:89 X:65 Y:00 P:A5 SP:FB PPU: 85, 43 CYC:9676
DF65  90 0A     BCC $DF71                       A:89 X:65 Y:00 P:A5 SP:FB PPU: 85, 49 CYC:9678
DF67  70 08     BVS $DF71                       A:89 X:65 Y:00 P:A5 SP:FB PPU: 85, 55 CYC:9680
DF69  C9 89     CMP #$89                        A:89 X:65 Y:00 P:A5 SP:FB PPU: 85, 61 CYC:9682
DF6B  D0 04     BNE $DF71                       A:89 X:65 Y:00 P:27 SP:FB PPU: 85, 67 CYC:9684
DF6D  E0 65     CPX #$65                        A:89 X:65 Y:00 P:27 SP:FB PPU: 85, 73 CYC:9686
DF6F  F0 04     BEQ $DF75                       A:89 X:65 Y:00 P:27 SP:FB PPU: 85, 79 CYC:9688
DF75  A9 FF     LDA #$FF                        A:89 X:65 Y:00 P:27 SP:FB PPU: 85, 88 CYC:9691
DF77  85 01     STA $01 = FF                    A:FF X:65 Y:00 P:A5 SP:FB PPU: 85, 94 CYC:9693
DF79  24 01     BIT $01 = FF                    A:FF X:65 Y:00 P:A5 SP:FB PPU: 85,103 CYC:9696
DF7B  A0 34     LDY #$34                        A:FF X:65 Y:00 P:E5 SP:FB PPU: 85,112 CYC:9699
DF7D  B9 FF FF  LDA $FFFF,Y @ 0033 = A3         A:FF X:65 Y:34 P:65 SP:FB PPU: 85,118 CYC:9701
DF80  C9 A3     CMP #$A3                        A:A3 X:65 Y:34 P:E5 SP:FB PPU: 85,133 CYC:9706
DF82  D0 02     BNE $DF86                       A:A3 X:65 Y:34 P:67 SP:FB PPU: 85,139 CYC:9708
DF84  B0 04     BCS $DF8A                       A:A3 X:65 Y:34 P:67 SP:FB PPU: 85,145 CYC:9710
DF8A  A9 46     LDA #$46                        A:A3 X:65 Y:34 P:67 SP:FB PPU: 85,154 CYC:9713
DF8C  85 FF     STA $FF = 46                    A:46 X:65 Y:34 P:65 SP:FB PPU: 85,160 CYC:9715
DF8E  A0 FF     LDY #$FF                        A:46 X:65 Y:34 P:65 SP:FB PPU: 85,169 CYC:9718
DF90  B9 46 01  LDA $0146,Y @ 0245 = 12         A:46 X:65 Y:FF P:E5 SP:FB PPU: 85,175 CYC:9720
DF93  C9 12     CMP #$12                        A:12 X:65 Y:FF P:65 SP:FB PPU: 85,190 CYC:9725
DF95  F0 04     BEQ $DF9B                       A:12 X:65 Y:FF P:67 SP:FB PPU: 85,196 CYC:9727
DF9B  A2 39     LDX #$39                        A:12 X:65 Y:FF P:67 SP:FB PPU: 85,205 CYC:9730
DF9D  18        CLC                             A:12 X:39 Y:FF P:65 SP:FB PPU: 85,211 CYC:9732
DF9E  A9 FF     LDA #$FF                        A:12 X:39 Y:FF P:64 SP:FB PPU: 85,217 CYC:9734
DFA0  85 01     STA $01 = FF                    A:FF X:39 Y:FF P:E4 SP:FB PPU: 85,223 CYC:9736
DFA2  24 01     BIT $01 = FF                    A:FF X:39 Y:FF P:E4 SP:FB PPU: 85,232 CYC:9739
DFA4  A9 AA     LDA #$AA                        A:FF X:39 Y:FF P:E4 SP:FB PPU: 85,241 CYC:9742
DFA6  8D 00 04  STA $0400 = 87                  A:AA X:39 Y:FF P:E4 SP:FB PPU: 85,247 CYC:9744
DFA9  A9 55     LDA #$55                        A:AA X:39 Y:FF P:E4 SP:FB PPU: 85,259 CYC:9748
DFAB  A0 00     LDY #$00                        A:55 X:39 Y:FF P:64 SP:FB PPU: 85,265 CYC:9750
DFAD  19 00 04  ORA $0400,Y @ 0400 = AA         A:55 X:39 Y:00 P:66 SP:FB PPU: 85,271 CYC:9752
DFB0  B0 08     BCS $DFBA                       A:FF X:39 Y:00 P:E4 SP:FB PPU: 85,283 CYC:9756
DFB2  10 06     BPL $DFBA                       A:FF X:39 Y:00 P:E4 SP:FB PPU: 85,289 CYC:9758
DFB4  C9 FF     CMP #$FF                        A:FF X:39 Y:00 P:E4 SP:FB PPU: 85,295 CYC:9760
DFB6  D0 02     BNE $DFBA                       A:FF X:39 Y:00 P:67 SP:FB PPU: 85,301 CYC:9762
DFB8  70 02     BVS $DFBC                       A:FF X:39 Y:00 P:67 SP:FB PPU: 85,307 CYC:9764
DFBC  E8        INX                             A:FF X:39 Y:00 P:67 SP:FB PPU: 85,316 CYC:9767
DFBD  38        SEC                             A:FF X:3A Y:00 P:65 SP:FB PPU: 85,322 CYC:9769
DFBE  B8        CLV                             A:FF X:3A Y:00 P:65 SP:FB PPU: 85,328 CYC:9771
DFBF  A9 00     LDA #$00                        A:FF X:3A Y:00 P:25 SP:FB PPU: 85,334 CYC:9773
DFC1  19 00 04  ORA $0400,Y @ 0400 = AA         A:00 X:3A Y:00 P:27 SP:FB PPU: 85,340 CYC:9775
DFC4  F0 06     BEQ $DFCC                       A:AA X:3A Y:00 P:A5 SP:FB PPU: 86, 11 CYC:9779
DFC6  70 04     BVS $DFCC                       A:AA X:3A Y:00 P:A5 SP:FB PPU: 86, 17 CYC:9781
DFC8  90 02     BCC $DFCC                       A:AA X:3A Y:00 P:A5 SP:FB PPU: 86, 23 CYC:9783
DFCA  30 02     BMI $DFCE                       A:AA X:3A Y:00 P:A5 SP:FB PPU: 86, 29 CYC:9785
DFCE  E8        INX                             A:AA X:3A Y:00 P:A5 SP:FB PPU: 86, 38 CYC:9788
DFCF  18        CLC                             A:AA X:3B Y:00 P:25 SP:FB PPU: 86, 44 CYC:9790
DFD0  24 01     BIT $01 = FF                    A:AA X:3B Y:00 P:24 SP:FB PPU: 86, 50 CYC:9792
DFD2  A9 55     LDA #$55                        A:AA X:3B Y:00 P:E4 SP:FB PPU: 86, 59 CYC:9795
DFD4  39 00 04  AND $0400,Y @ 0400 = AA         A:55 X:3B Y:00 P:64 SP:FB PPU: 86, 65 CYC:9797
DFD7  D0 06     BNE $DFDF                       A:00 X:3B Y:00 P:66 SP:FB PPU: 86, 77 CYC:9801
DFD9  50 04     BVC $DFDF                       A:00 X:3B Y:00 P:66 SP:FB PPU: 86, 83 CYC:9803
DFDB  B0 02     BCS $DFDF                       A:00 X:3B Y:00 P:66 SP:FB PPU: 86, 89 CYC:9805
DFDD  10 02     BPL $DFE1                       A:00 X:3B Y:00 P:66 SP:FB PPU: 86, 95 CYC:9807
DFE1  E8        INX                             A:00 X:3B Y:00 P:66 SP:FB PPU: 86,104 CYC:9810
DFE2  38        SEC                             A:00 X:3C Y:00 P:64 SP:FB PPU: 86,110 CYC:9812
DFE3  B8        CLV                             A:00 X:3C Y:00 P:65 SP:FB PPU: 86,116 CYC:9814
DFE4  A9 EF     LDA #$EF                        A:00 X:3C Y:00 P:25 SP:FB PPU: 86,122 CYC:9816
DFE6  8D 00 04  STA $0400 = AA                  A:EF X:3C Y:00 P:A5 SP:FB PPU: 86,128 CYC:9818
DFE9  A9 F8     LDA #$F8                        A:EF X:3C Y:00 P:A5 SP:FB PPU: 86,140 CYC:9822
DFEB  39 00 04  AND $0400,Y @ 0400 = EF         A:F8 X:3C Y:00 P:A5 SP:FB PPU: 86,146 CYC:9824
DFEE  90 08     BCC $DFF8                       A:E8 X:3C Y:00 P:A5 SP:FB PPU: 86,158 CYC:9828
DFF0  10 06     BPL $DFF8                       A:E8 X:3C Y:00 P:A5 SP:FB PPU: 86,164 CYC:9830
DFF2  C9 E8     CMP #$E8                        A:E8 X:3C Y:00 P:A5 SP:FB PPU: 86,170 CYC:9832
DFF4  D0 02     BNE $DFF8                       A:E8 X:3C Y:00 P:27 SP:FB PPU: 86,176 CYC:9834
DFF6  50 02     BVC $DFFA                       A:E8 X:3C Y:00 P:27 SP:FB PPU: 86,182 CYC:9836
DFFA  E8        INX                             A:E8 X:3C Y:00 P:27 SP:FB PPU: 86,191 CYC:9839
DFFB  18        CLC                             A:E8 X:3D Y:00 P:25 SP:FB PPU: 86,197 CYC:9841
DFFC  24 01     BIT $01 = FF                    A:E8 X:3D Y:00 P:24 SP:FB PPU: 86,203 CYC:9843
DFFE  A9 AA     LDA #$AA                        A:E8 X:3D Y:00 P:E4 SP:FB PPU: 86,212 CYC:9846
E000  8D 00 04  STA $0400 = EF                  A:AA X:3D Y:00 P:E4 SP:FB PPU: 86,218 CYC:9848
E003  A9 5F     LDA #$5F                        A:AA X:3D Y:00 P:E4 SP:FB PPU: 86,230 CYC:9852
E005  59 00 04  EOR $0400,Y @ 0400 = AA         A:5F X:3D Y:00 P:64 SP:FB PPU: 86,236 CYC:9854
E008  B0 08     BCS $E012                       A:F5 X:3D Y:00 P:E4 SP:FB PPU: 86,248 CYC:9858
E00A  10 06     BPL $E012                       A:F5 X:3D Y:00 P:E4 SP:FB PPU: 86,254 CYC:9860
E00C  C9 F5     CMP #$F5                        A:F5 X:3D Y:00 P:E4 SP:FB PPU: 86,260 CYC:9862
E00E  D0 02     BNE $E012                       A:F5 X:3D Y:00 P:67 SP:FB PPU: 86,266 CYC:9864
E010  70 02     BVS $E014                       A:F5 X:3D Y:00 P:67 SP:FB PPU: 86,272 CYC:9866
E014  E8        INX                             A:F5 X:3D Y:00 P:67 SP:FB PPU: 86,281 CYC:9869
E015  38        SEC                             A:F5 X:3E Y:00 P:65 SP:FB PPU: 86,287 CYC:9871
E016  B8        CLV                             A:F5 X:3E Y:00 P:65 SP:FB PPU: 86,293 CYC:9873
E017  A9 70     LDA #$70                        A:F5 X:3E Y:00 P:25 SP:FB PPU: 86,299 CYC:9875
E019  8D 00 04  STA $0400 = AA                  A:70 X:3E Y:00 P:25 SP:FB PPU: 86,305 CYC:9877
E01C  59 00 04  EOR $0400,Y @ 0400 = 70         A:70 X:3E Y:00 P:25 SP:FB PPU: 86,317 CYC:9881
E01F  D0 06     BNE $E027                       A:00 X:3E Y:00 P:27 SP:FB PPU: 86,329 CYC:9885
E021  70 04     BVS $E027                       A:00 X:3E Y:00 P:27 SP:FB PPU: 86,335 CYC:9887
E023  90 02     BCC $E027                       A:00 X:3E Y:00 P:27 SP:FB PPU: 87,  0 CYC:9889
E025  10 02     BPL $E029                       A:00 X:3E Y:00 P:27 SP:FB PPU: 87,  6 CYC:9891
E029  E8        INX                             A:00 X:3E Y:00 P:27 SP:FB PPU: 87, 15 CYC:9894
E02A  18        CLC                             A:00 X:3F Y:00 P:25 SP:FB PPU: 87, 21 CYC:9896
E02B  24 01     BIT $01 = FF                    A:00 X:3F Y:00 P:24 SP:FB PPU: 87, 27 CYC:9898
E02D  A9 69     LDA #$69                        A:00 X:3F Y:00 P:E6 SP:FB PPU: 87, 36 CYC:9901
E02F  8D 00 04  STA $0400 = 70                  A:69 X:3F Y:00 P:64 SP:FB PPU: 87, 42 CYC:9903
E032  A9 00     LDA #$00                        A:69 X:3F Y:00 P:64 SP:FB PPU: 87, 54 CYC:9907
E034  79 00 04  ADC $0400,Y @ 0400 = 69         A:00 X:3F Y:00 P:66 SP:FB PPU: 87, 60 CYC:9909
E037  30 08     BMI $E041                       A:69 X:3F Y:00 P:24 SP:FB PPU: 87, 72 CYC:9913
E039  B0 06     BCS $E041                       A:69 X:3F Y:00 P:24 SP:FB PPU: 87, 78 CYC:9915
E03B  C9 69     CMP #$69                        A:69 X:3F Y:00 P:24 SP:FB PPU: 87, 84 CYC:9917
E03D  D0 02     BNE $E041                       A:69 X:3F Y:00 P:27 SP:FB PPU: 87, 90 CYC:9919
E03F  50 02     BVC $E043                       A:69 X:3F Y:00 P:27 SP:FB PPU: 87, 96 CYC:9921
E043  E8        INX                             A:69 X:3F Y:00 P:27 SP:FB PPU: 87,105 CYC:9924
E044  38        SEC                             A:69 X:40 Y:00 P:25 SP:FB PPU: 87,111 CYC:9926
E045  24 01     BIT $01 = FF                    A:69 X:40 Y:00 P:25 SP:FB PPU: 87,117 CYC:9928
E047  A9 00     LDA #$00                        A:69 X:40 Y:00 P:E5 SP:FB PPU: 87,126 CYC:9931
E049  79 00 04  ADC $0400,Y @ 0400 = 69         A:00 X:40 Y:00 P:67 SP:FB PPU: 87,132 CYC:9933
E04C  30 08     BMI $E056                       A:6A X:40 Y:00 P:24 SP:FB PPU: 87,144 CYC:9937
E04E  B0 06     BCS $E056                       A:6A X:40 Y:00 P:24 SP:FB PPU: 87,150 CYC:9939
E050  C9 6A     CMP #$6A                        A:6A X:40 Y:00 P:24 SP:FB PPU: 87,156 CYC:9941
E052  D0 02     BNE $E056                       A:6A X:40 Y:00 P:27 SP:FB PPU: 87,162 CYC:9943
E054  50 02     BVC $E058                       A:6A X:40 Y:00 P:27 SP:FB PPU: 87,168 CYC:9945
E058  E8        INX                             A:6A X:40 Y:00 P:27 SP:FB PPU: 87,177 CYC:9948
E059  38        SEC                             A:6A X:41 Y:00 P:25 SP:FB PPU: 87,183 CYC:9950
E05A  B8        CLV                             A:6A X:41 Y:00 P:25 SP:FB PPU: 87,189 CYC:9952
E05B  A9 7F     LDA #$7F                        A:6A X:41 Y:00 P:25 SP:FB PPU: 87,195 CYC:9954
E05D  8D 00 04  STA $0400 = 69                  A:7F X:41 Y:00 P:25 SP:FB PPU: 87,201 CYC:9956
E060  79 00 04  ADC $0400,Y @ 0400 = 7F         A:7F X:41 Y:00 P:25 SP:FB PPU: 87,213 CYC:9960
E063  10 08     BPL $E06D                       A:FF X:41 Y:00 P:E4 SP:FB PPU: 87,225 CYC:9964
E065  B0 06     BCS $E06D                       A:FF X:41 Y:00 P:E4 SP:FB PPU: 87,231 CYC:9966
E067  C9 FF     CMP #$FF                        A:FF X:41 Y:00 P:E4 SP:FB PPU: 87,237 CYC:9968
E069  D0 02     BNE $E06D                       A:FF X:41 Y:00 P:67 SP:FB PPU: 87,243 CYC:9970
E06B  70 02     BVS $E06F                       A:FF X:41 Y:00 P:67 SP:FB PPU: 87,249 CYC:9972
E06F  E8        INX                             A:FF X:41 Y:00 P:67 SP:FB PPU: 87,258 CYC:9975
E070  18        CLC                             A:FF X:42 Y:00 P:65 SP:FB PPU: 87,264 CYC:9977
E071  24 01     BIT $01 = FF                    A:FF X:42 Y:00 P:64 SP:FB PPU: 87,270 CYC:9979
E073  A9 80     LDA #$80                        A:FF X:42 Y:00 P:E4 SP:FB PPU: 87,279 CYC:9982
E075  8D 00 04  STA $0400 = 7F                  A:80 X:42 Y:00 P:E4 SP:FB PPU: 87,285 CYC:9984
E078  A9 7F     LDA #$7F                        A:80 X:42 Y:00 P:E4 SP:FB PPU: 87,297 CYC:9988
E07A  79 00 04  ADC $0400,Y @ 0400 = 80         A:7F X:42 Y:00 P:64 SP:FB PPU: 87,303 CYC:9990
E07D  10 08     BPL $E087                       A:FF X:42 Y:00 P:A4 SP:FB PPU: 87,315 CYC:9994
E07F  B0 06     BCS $E087                       A:FF X:42 Y:00 P:A4 SP:FB PPU: 87,321 CYC:9996
E081  C9 FF     CMP #$FF                        A:FF X:42 Y:00 P:A4 SP:FB PPU: 87,327 CYC:9998
E083  D0 02     BNE $E087                       A:FF X:42 Y:00 P:27 SP:FB PPU: 87,333 CYC:10000
E085  50 02     BVC $E089                       A:FF X:42 Y:00 P:27 SP:FB PPU: 87,339 CYC:10002
E089  E8        INX                             A:FF X:42 Y:00 P:27 SP:FB PPU: 88,  7 CYC:10005
E08A  38        SEC                             A:FF X:43 Y:00 P:25 SP:FB PPU: 88, 13 CYC:10007
E08B  B8        CLV                             A:FF X:43 Y:00 P:25 SP:FB PPU: 88, 19 CYC:10009
E08C  A9 80     LDA #$80                        A:FF X:43 Y:00 P:25 SP:FB PPU: 88, 25 CYC:10011
E08E  8D 00 04  STA $0400 = 80                  A:80 X:43 Y:00 P:A5 SP:FB PPU: 88, 31 CYC:10013
E091  A9 7F     LDA #$7F                        A:80 X:43 Y:00 P:A5 SP:FB PPU: 88, 43 CYC:10017
E093  79 00 04  ADC $0400,Y @ 0400 = 80         A:7F X:43 Y:00 P:25 SP:FB PPU: 88, 49 CYC:10019
E096  D0 06     BNE $E09E                       A:00 X:43 Y:00 P:27 SP:FB PPU: 88, 61 CYC:10023
E098  30 04     BMI $E09E                       A:00 X:43 Y:00 P:27 SP:FB PPU: 88, 67 CYC:10025
E09A  70 02     BVS $E09E                       A:00 X:43 Y:00 P:27 SP:FB PPU: 88, 73 CYC:10027
E09C  B0 02     BCS $E0A0                       A:00 X:43 Y:00 P:27 SP:FB PPU: 88, 79 CYC:10029
E0A0  E8        INX                             A:00 X:43 Y:00 P:27 SP:FB PPU: 88, 88 CYC:10032
E0A1  24 01     BIT $01 = FF                    A:00 X:44 Y:00 P:25 SP:FB PPU: 88, 94 CYC:10034
E0A3  A9 40     LDA #$40                        A:00 X:44 Y:00 P:E7 SP:FB PPU: 88,103 CYC:10037
E0A5  8D 00 04  STA $0400 = 80                  A:40 X:44 Y:00 P:65 SP:FB PPU: 88,109 CYC:10039
E0A8  D9 00 04  CMP $0400,Y @ 0400 = 40         A:40 X:44 Y:00 P:65 SP:FB PPU: 88,121 CYC:10043
E0AB  30 06     BMI $E0B3                       A:40 X:44 Y:00 P:67 SP:FB PPU: 88,133 CYC:10047
E0AD  90 04     BCC $E0B3                       A:40 X:44 Y:00 P:67 SP:FB PPU: 88,139 CYC:10049
E0AF  D0 02     BNE $E0B3                       A:40 X:44 Y:00 P:67 SP:FB PPU: 88,145 CYC:10051
E0B1  70 02     BVS $E0B5                       A:40 X:44 Y:00 P:67 SP:FB PPU: 88,151 CYC:10053
E0B5  E8        INX                             A:40 X:44 Y:00 P:67 SP:FB PPU: 88,160 CYC:10056
E0B6  B8        CLV                             A:40 X:45 Y:00 P:65 SP:FB PPU: 88,166 CYC:10058
E0B7  CE 00 04  DEC $0400 = 40                  A:40 X:45 Y:00 P:25 SP:FB PPU: 88,172 CYC:10060
E0BA  D9 00 04  CMP $0400,Y @ 0400 = 3F         A:40 X:45 Y:00 P:25 SP:FB PPU: 88,190 CYC:10066
E0BD  F0 06     BEQ $E0C5                       A:40 X:45 Y:00 P:25 SP:FB PPU: 88,202 CYC:10070
E0BF  30 04     BMI $E0C5                       A:40 X:45 Y:00 P:25 SP:FB PPU: 88,208 CYC:10072
E0C1  90 02     BCC $E0C5                       A:40 X:45 Y:00 P:25 SP:FB PPU: 88,214 CYC:10074
E0C3  50 02     BVC $E0C7                       A:40 X:45 Y:00 P:25 SP:FB PPU: 88,220 CYC:10076
E0C7  E8        INX                             A:40 X:45 Y:00 P:25 SP:FB PPU: 88,229 CYC:10079
E0C8  EE 00 04  INC $0400 = 3F                  A:40 X:46 Y:00 P:25 SP:FB PPU: 88,235 CYC:10081
E0CB  EE 00 04  INC $0400 = 40                  A:40 X:46 Y:00 P:25 SP:FB PPU: 88,253 CYC:10087
E0CE  D9 00 04  CMP $0400,Y @ 0400 = 41         A:40 X:46 Y:00 P:25 SP:FB PPU: 88,271 CYC:10093
E0D1  F0 02     BEQ $E0D5                       A:40 X:46 Y:00 P:A4 SP:FB PPU: 88,283 CYC:10097
E0D3  30 02     BMI $E0D7                       A:40 X:46 Y:00 P:A4 SP:FB PPU: 88,289 CYC:10099
E0D7  E8        INX                             A:40 X:46 Y:00 P:A4 SP:FB PPU: 88,298 CYC:10102
E0D8  A9 00     LDA #$00                        A:40 X:47 Y:00 P:24 SP:FB PPU: 88,304 CYC:10104
E0DA  8D 00 04  STA $0400 = 41                  A:00 X:47 Y:00 P:26 SP:FB PPU: 88,310 CYC:10106
E0DD  A9 80     LDA #$80                        A:00 X:47 Y:00 P:26 SP:FB PPU: 88,322 CYC:10110
E0DF  D9 00 04  CMP $0400,Y @ 0400 = 00         A:80 X:47 Y:00 P:A4 SP:FB PPU: 88,328 CYC:10112
E0E2  F0 04     BEQ $E0E8                       A:80 X:47 Y:00 P:A5 SP:FB PPU: 88,340 CYC:10116
E0E4  10 02     BPL $E0E8                       A:80 X:47 Y:00 P:A5 SP:FB PPU: 89,  5 CYC:10118
E0E6  B0 02     BCS $E0EA                       A:80 X:47 Y:00 P:A5 SP:FB PPU: 89, 11 CYC:10120
E0EA  E8        INX                             A:80 X:47 Y:00 P:A5 SP:FB PPU: 89, 20 CYC:10123
E0EB  A0 80     LDY #$80                        A:80 X:48 Y:00 P:25 SP:FB PPU: 89, 26 CYC:10125
E0ED  8C 00 04  STY $0400 = 00                  A:80 X:48 Y:80 P:A5 SP:FB PPU: 89, 32 CYC:10127
E0F0  A0 00     LDY #$00                        A:80 X:48 Y:80 P:A5 SP:FB PPU: 89, 44 CYC:10131
E0F2  D9 00 04  CMP $0400,Y @ 0400 = 80         A:80 X:48 Y:00 P:27 SP:FB PPU: 89, 50 CYC:10133
E0F5  D0 04     BNE $E0FB                       A:80 X:48 Y:00 P:27 SP:FB PPU: 89, 62 CYC:10137
E0F7  30 02     BMI $E0FB                       A:80 X:48 Y:00 P:27 SP:FB PPU: 89, 68 CYC:10139
E0F9  B0 02     BCS $E0FD                       A:80 X:48 Y:00 P:27 SP:FB PPU: 89, 74 CYC:10141
E0FD  E8        INX                             A:80 X:48 Y:00 P:27 SP:FB PPU: 89, 83 CYC:10144
E0FE  EE 00 04  INC $0400 = 80                  A:80 X:49 Y:00 P:25 SP:FB PPU: 89, 89 CYC:10146
E101  D9 00 04  CMP $0400,Y @ 0400 = 81         A:80 X:49 Y:00 P:A5 SP:FB PPU: 89,107 CYC:10152
E104  B0 04     BCS $E10A                       A:80 X:49 Y:00 P:A4 SP:FB PPU: 89,119 CYC:10156
E106  F0 02     BEQ $E10A                       A:80 X:49 Y:00 P:A4 SP:FB PPU: 89,125 CYC:10158
E108  30 02     BMI $E10C                       A:80 X:49 Y:00 P:A4 SP:FB PPU: 89,131 CYC:10160
E10C  E8        INX                             A:80 X:49 Y:00 P:A4 SP:FB PPU: 89,140 CYC:10163
E10D  CE 00 04  DEC $0400 = 81                  A:80 X:4A Y:00 P:24 SP:FB PPU: 89,146 CYC:10165
E110  CE 00 04  DEC $0400 = 80                  A:80 X:4A Y:00 P:A4 SP:FB PPU: 89,164 CYC:10171
E113  D9 00 04  CMP $0400,Y @ 0400 = 7F         A:80 X:4A Y:00 P:24 SP:FB PPU: 89,182 CYC:10177
E116  90 04     BCC $E11C                       A:80 X:4A Y:00 P:25 SP:FB PPU: 89,194 CYC:10181
E118  F0 02     BEQ $E11C                       A:80 X:4A Y:00 P:25 SP:FB PPU: 89,200 CYC:10183
E11A  10 02     BPL $E11E                       A:80 X:4A Y:00 P:25 SP:FB PPU: 89,206 CYC:10185
E11E  E8        INX                             A:80 X:4A Y:00 P:25 SP:FB PPU: 89,215 CYC:10188
E11F  24 01     BIT $01 = FF                    A:80 X:4B Y:00 P:25 SP:FB PPU: 89,221 CYC:10190
E121  A9 40     LDA #$40                        A:80 X:4B Y:00 P:E5 SP:FB PPU: 89,230 CYC:10193
E123  8D 00 04  STA $0400 = 7F                  A:40 X:4B Y:00 P:65 SP:FB PPU: 89,236 CYC:10195
E126  38        SEC                             A:40 X:4B Y:00 P:65 SP:FB PPU: 89,248 CYC:10199
E127  F9 00 04  SBC $0400,Y @ 0400 = 40         A:40 X:4B Y:00 P:65 SP:FB PPU: 89,254 CYC:10201
E12A  30 0A     BMI $E136                       A:00 X:4B Y:00 P:27 SP:FB PPU: 89,266 CYC:10205
E12C  90 08     BCC $E136                       A:00 X:4B Y:00 P:27 SP:FB PPU: 89,272 CYC:10207
E12E  D0 06     BNE $E136                       A:00 X:4B Y:00 P:27 SP:FB PPU: 89,278 CYC:10209
E130  70 04     BVS $E136                       A:00 X:4B Y:00 P:27 SP:FB PPU: 89,284 CYC:10211
E132  C9 00     CMP #$00                        A:00 X:4B Y:00 P:27 SP:FB PPU: 89,290 CYC:10213
E134  F0 02     BEQ $E138                       A:00 X:4B Y:00 P:27 SP:FB PPU: 89,296 CYC:10215
E138  E8        INX                             A:00 X:4B Y:00 P:27 SP:FB PPU: 89,305 CYC:10218
E139  B8        CLV                             A:00 X:4C Y:00 P:25 SP:FB PPU: 89,311 CYC:10220
E13A  38        SEC                             A:00 X:4C Y:00 P:25 SP:FB PPU: 89,317 CYC:10222
E13B  A9 40     LDA #$40                        A:00 X:4C Y:00 P:25 SP:FB PPU: 89,323 CYC:10224
E13D  CE 00 04  DEC $0400 = 40                  A:40 X:4C Y:00 P:25 SP:FB PPU: 89,329 CYC:10226
E140  F9 00 04  SBC $0400,Y @ 0400 = 3F         A:40 X:4C Y:00 P:25 SP:FB PPU: 90,  6 CYC:10232
E143  F0 0A     BEQ $E14F                       A:01 X:4C Y:00 P:25 SP:FB PPU: 90, 18 CYC:10236
E145  30 08     BMI $E14F                       A:01 X:4C Y:00 P:25 SP:FB PPU: 90, 24 CYC:10238
E147  90 06     BCC $E14F                       A:01 X:4C Y:00 P:25 SP:FB PPU: 90, 30 CYC:10240
E149  70 04     BVS $E14F                       A:01 X:4C Y:00 P:25 SP:FB PPU: 90, 36 CYC:10242
E14B  C9 01     CMP #$01                        A:01 X:4C Y:00 P:25 SP:FB PPU: 90, 42 CYC:10244
E14D  F0 02     BEQ $E151                       A:01 X:4C Y:00 P:27 SP:FB PPU: 90, 48 CYC:10246
E151  E8        INX                             A:01 X:4C Y:00 P:27 SP:FB PPU: 90, 57 CYC:10249
E152  A9 40     LDA #$40                        A:01 X:4D Y:00 P:25 SP:FB PPU: 90, 63 CYC:10251
E154  38        SEC                             A:40 X:4D Y:00 P:25 SP:FB PPU: 90, 69 CYC:10253
E155  24 01     BIT $01 = FF                    A:40 X:4D Y:00 P:25 SP:FB PPU: 90, 75 CYC:10255
E157  EE 00 04  INC $0400 = 3F                  A:40 X:4D Y:00 P:E5 SP:FB PPU: 90, 84 CYC:10258
E15A  EE 00 04  INC $0400 = 40                  A:40 X:4D Y:00 P:65 SP:FB PPU: 90,102 CYC:10264
E15D  F9 00 04  SBC $0400,Y @ 0400 = 41         A:40 X:4D Y:00 P:65 SP:FB PPU: 90,120 CYC:10270
E160  B0 0A     BCS $E16C                       A:FF X:4D Y:00 P:A4 SP:FB PPU: 90,132 CYC:10274
E162  F0 08     BEQ $E16C                       A:FF X:4D Y:00 P:A4 SP:FB PPU: 90,138 CYC:10276
E164  10 06     BPL $E16C                       A:FF X:4D Y:00 P:A4 SP:FB PPU: 90,144 CYC:10278
E166  70 04     BVS $E16C                       A:FF X:4D Y:00 P:A4 SP:FB PPU: 90,150 CYC:10280
E168  C9 FF     CMP #$FF                        A:FF X:4D Y:00 P:A4 SP:FB PPU: 90,156 CYC:10282
E16A  F0 02     BEQ $E16E                       A:FF X:4D Y:00 P:27 SP:FB PPU: 90,162 CYC:10284
E16E  E8        INX                             A:FF X:4D Y:00 P:27 SP:FB PPU: 90,171 CYC:10287
E16F  18        CLC                             A:FF X:4E Y:00 P:25 SP:FB PPU: 90,177 CYC:10289
E170  A9 00     LDA #$00                        A:FF X:4E Y:00 P:24 SP:FB PPU: 90,183 CYC:10291
E172  8D 00 04  STA $0400 = 41                  A:00 X:4E Y:00 P:26 SP:FB PPU: 90,189 CYC:10293
E175  A9 80     LDA #$80                        A:00 X:4E Y:00 P:26 SP:FB PPU: 90,201 CYC:10297
E177  F9 00 04  SBC $0400,Y @ 0400 = 00         A:80 X:4E Y:00 P:A4 SP:FB PPU: 90,207 CYC:10299
E17A  90 04     BCC $E180                       A:7F X:4E Y:00 P:65 SP:FB PPU: 90,219 CYC:10303
E17C  C9 7F     CMP #$7F                        A:7F X:4E Y:00 P:65 SP:FB PPU: 90,225 CYC:10305
E17E  F0 02     BEQ $E182                       A:7F X:4E Y:00 P:67 SP:FB PPU: 90,231 CYC:10307
E182  E8        INX                             A:7F X:4E Y:00 P:67 SP:FB PPU: 90,240 CYC:10310
E183  38        SEC                             A:7F X:4F Y:00 P:65 SP:FB PPU: 90,246 CYC:10312
E184  A9 7F     LDA #$7F                        A:7F X:4F Y:00 P:65 SP:FB PPU: 90,252 CYC:10314
E186  8D 00 04  STA $0400 = 00                  A:7F X:4F Y:00 P:65 SP:FB PPU: 90,258 CYC:10316
E189  A9 81     LDA #$81                        A:7F X:4F Y:00 P:65 SP:FB PPU: 90,270 CYC:10320
E18B  F9 00 04  SBC $0400,Y @ 0400 = 7F         A:81 X:4F Y:00 P:E5 SP:FB PPU: 90,276 CYC:10322
E18E  50 06     BVC $E196                       A:02 X:4F Y:00 P:65 SP:FB PPU: 90,288 CYC:10326
E190  90 04     BCC $E196                       A:02 X:4F Y:00 P:65 SP:FB PPU: 90,294 CYC:10328
E192  C9 02     CMP #$02                        A:02 X:4F Y:00 P:65 SP:FB PPU: 90,300 CYC:10330
E194  F0 02     BEQ $E198                       A:02 X:4F Y:00 P:67 SP:FB PPU: 90,306 CYC:10332
E198  E8        INX                             A:02 X:4F Y:00 P:67 SP:FB PPU: 90,315 CYC:10335
E199  A9 00     LDA #$00                        A:02 X:50 Y:00 P:65 SP:FB PPU: 90,321 CYC:10337
E19B  A9 87     LDA #$87                        A:00 X:50 Y:00 P:67 SP:FB PPU: 90,327 CYC:10339
E19D  99 00 04  STA $0400,Y @ 0400 = 7F         A:87 X:50 Y:00 P:E5 SP:FB PPU: 90,333 CYC:10341
E1A0  AD 00 04  LDA $0400 = 87                  A:87 X:50 Y:00 P:E5 SP:FB PPU: 91,  7 CYC:10346
E1A3  C9 87     CMP #$87                        A:87 X:50 Y:00 P:E5 SP:FB PPU: 91, 19 CYC:10350
E1A5  F0 02     BEQ $E1A9                       A:87 X:50 Y:00 P:67 SP:FB PPU: 91, 25 CYC:10352
E1A9  60        RTS                             A:87 X:50 Y:00 P:67 SP:FB PPU: 91, 34 CYC:10355
C629  20 B8 DB  JSR $DBB8                       A:87 X:50 Y:00 P:67 SP:FD PPU: 91, 52 CYC:10361
DBB8  A9 FF     LDA #$FF                        A:87 X:50 Y:00 P:67 SP:FB PPU: 91, 70 CYC:10367
DBBA  85 01     STA $01 = FF                    A:FF X:50 Y:00 P:E5 SP:FB PPU: 91, 76 CYC:10369
DBBC  A9 AA     LDA #$AA                        A:FF X:50 Y:00 P:E5 SP:FB PPU: 91, 85 CYC:10372
DBBE  85 33     STA $33 = A3                    A:AA X:50 Y:00 P:E5 SP:FB PPU: 91, 91 CYC:10374
DBC0  A9 BB     LDA #$BB                        A:AA X:50 Y:00 P:E5 SP:FB PPU: 91,100 CYC:10377
DBC2  85 89     STA $89 = 00                    A:BB X:50 Y:00 P:E5 SP:FB PPU: 91,106 CYC:10379
DBC4  A2 00     LDX #$00                        A:BB X:50 Y:00 P:E5 SP:FB PPU: 91,115 CYC:10382
DBC6  A9 66     LDA #$66                        A:BB X:00 Y:00 P:67 SP:FB PPU: 91,121 CYC:10384
DBC8  24 01     BIT $01 = FF                    A:66 X:00 Y:00 P:65 SP:FB PPU: 91,127 CYC:10386
DBCA  38        SEC                             A:66 X:00 Y:00 P:E5 SP:FB PPU: 91,136 CYC:10389
DBCB  A0 00     LDY #$00                        A:66 X:00 Y:00 P:E5 SP:FB PPU: 91,142 CYC:10391
DBCD  B4 33     LDY $33,X @ 33 = AA             A:66 X:00 Y:00 P:67 SP:FB PPU: 91,148 CYC:10393
DBCF  10 12     BPL $DBE3                       A:66 X:00 Y:AA P:E5 SP:FB PPU: 91,160 CYC:10397
DBD1  F0 10     BEQ $DBE3                       A:66 X:00 Y:AA P:E5 SP:FB PPU: 91,166 CYC:10399
DBD3  50 0E     BVC $DBE3                       A:66 X:00 Y:AA P:E5 SP:FB PPU: 91,172 CYC:10401
DBD5  90 0C     BCC $DBE3                       A:66 X:00 Y:AA P:E5 SP:FB PPU: 91,178 CYC:10403
DBD7  C9 66     CMP #$66                        A:66 X:00 Y:AA P:E5 SP:FB PPU: 91,184 CYC:10405
DBD9  D0 08     BNE $DBE3                       A:66 X:00 Y:AA P:67 SP:FB PPU: 91,190 CYC:10407
DBDB  E0 00     CPX #$00                        A:66 X:00 Y:AA P:67 SP:FB PPU: 91,196 CYC:10409
DBDD  D0 04     BNE $DBE3                       A:66 X:00 Y:AA P:67 SP:FB PPU: 91,202 CYC:10411
DBDF  C0 AA     CPY #$AA                        A:66 X:00 Y:AA P:67 SP:FB PPU: 91,208 CYC:10413
DBE1  F0 04     BEQ $DBE7                       A:66 X:00 Y:AA P:67 SP:FB PPU: 91,214 CYC:10415
DBE7  A2 8A     LDX #$8A                        A:66 X:00 Y:AA P:67 SP:FB PPU: 91,223 CYC:10418
DBE9  A9 66     LDA #$66                        A:66 X:8A Y:AA P:E5 SP:FB PPU: 91,229 CYC:10420
DBEB  B8        CLV                             A:66 X:8A Y:AA P:65 SP:FB PPU: 91,235 CYC:10422
DBEC  18        CLC                             A:66 X:8A Y:AA P:25 SP:FB PPU: 91,241 CYC:10424
DBED  A0 00     LDY #$00                        A:66 X:8A Y:AA P:24 SP:FB PPU: 91,247 CYC:10426
DBEF  B4 FF     LDY $FF,X @ 89 = BB             A:66 X:8A Y:00 P:26 SP:FB PPU: 91,253 CYC:10428
DBF1  10 12     BPL $DC05                       A:66 X:8A Y:BB P:A4 SP:FB PPU: 91,265 CYC:10432
DBF3  F0 10     BEQ $DC05                       A:66 X:8A Y:BB P:A4 SP:FB PPU: 91,271 CYC:10434
DBF5  70 0E     BVS $DC05                       A:66 X:8A Y:BB P:A4 SP:FB PPU: 91,277 CYC:10436
DBF7  B0 0C     BCS $DC05                       A:66 X:8A Y:BB P:A4 SP:FB PPU: 91,283 CYC:10438
DBF9  C0 BB     CPY #$BB                        A:66 X:8A Y:BB P:A4 SP:FB PPU: 91,289 CYC:10440
DBFB  D0 08     BNE $DC05                       A:66 X:8A Y:BB P:27 SP:FB PPU: 91,295 CYC:10442
DBFD  C9 66     CMP #$66                        A:66 X:8A Y:BB P:27 SP:FB PPU: 91,301 CYC:10444
DBFF  D0 04     BNE $DC05                       A:66 X:8A Y:BB P:27 SP:FB PPU: 91,307 CYC:10446
DC01  E0 8A     CPX #$8A                        A:66 X:8A Y:BB P:27 SP:FB PPU: 91,313 CYC:10448
DC03  F0 04     BEQ $DC09                       A:66 X:8A Y:BB P:27 SP:FB PPU: 91,319 CYC:10450
DC09  24 01     BIT $01 = FF                    A:66 X:8A Y:BB P:27 SP:FB PPU: 91,328 CYC:10453
DC0B  38        SEC                             A:66 X:8A Y:BB P:E5 SP:FB PPU: 91,337 CYC:10456
DC0C  A0 44     LDY #$44                        A:66 X:8A Y:BB P:E5 SP:FB PPU: 92,  2 CYC:10458
DC0E  A2 00     LDX #$00                        A:66 X:8A Y:44 P:65 SP:FB PPU: 92,  8 CYC:10460
DC10  94 33     STY $33,X @ 33 = AA             A:66 X:00 Y:44 P:67 SP:FB PPU: 92, 14 CYC:10462
DC12  A5 33     LDA $33 = 44                    A:66 X:00 Y:44 P:67 SP:FB PPU: 92, 26 CYC:10466
DC14  90 18     BCC $DC2E                       A:44 X:00 Y:44 P:65 SP:FB PPU: 92, 35 CYC:10469
DC16  C9 44     CMP #$44                        A:44 X:00 Y:44 P:65 SP:FB PPU: 92, 41 CYC:10471
DC18  D0 14     BNE $DC2E                       A:44 X:00 Y:44 P:67 SP:FB PPU: 92, 47 CYC:10473
DC1A  50 12     BVC $DC2E                       A:44 X:00 Y:44 P:67 SP:FB PPU: 92, 53 CYC:10475
DC1C  18        CLC                             A:44 X:00 Y:44 P:67 SP:FB PPU: 92, 59 CYC:10477
DC1D  B8        CLV                             A:44 X:00 Y:44 P:66 SP:FB PPU: 92, 65 CYC:10479
DC1E  A0 99     LDY #$99                        A:44 X:00 Y:44 P:26 SP:FB PPU: 92, 71 CYC:10481
DC20  A2 80     LDX #$80                        A:44 X:00 Y:99 P:A4 SP:FB PPU: 92, 77 CYC:10483
DC22  94 85     STY $85,X @ 05 = 00             A:44 X:80 Y:99 P:A4 SP:FB PPU: 92, 83 CYC:10485
DC24  A5 05     LDA $05 = 99                    A:44 X:80 Y:99 P:A4 SP:FB PPU: 92, 95 CYC:10489
DC26  B0 06     BCS $DC2E                       A:99 X:80 Y:99 P:A4 SP:FB PPU: 92,104 CYC:10492
DC28  C9 99     CMP #$99                        A:99 X:80 Y:99 P:A4 SP:FB PPU: 92,110 CYC:10494
DC2A  D0 02     BNE $DC2E                       A:99 X:80 Y:99 P:27 SP:FB PPU: 92,116 CYC:10496
DC2C  50 04     BVC $DC32                       A:99 X:80 Y:99 P:27 SP:FB PPU: 92,122 CYC:10498
DC32  A0 0B     LDY #$0B                        A:99 X:80 Y:99 P:27 SP:FB PPU: 92,131 CYC:10501
DC34  A9 AA     LDA #$AA                        A:99 X:80 Y:0B P:25 SP:FB PPU: 92,137 CYC:10503
DC36  A2 78     LDX #$78                        A:AA X:80 Y:0B P:A5 SP:FB PPU: 92,143 CYC:10505
DC38  85 78     STA $78 = 00                    A:AA X:78 Y:0B P:25 SP:FB PPU: 92,149 CYC:10507
DC3A  20 B6 F7  JSR $F7B6                       A:AA X:78 Y:0B P:25 SP:FB PPU: 92,158 CYC:10510
F7B6  18        CLC                             A:AA X:78 Y:0B P:25 SP:F9 PPU: 92,176 CYC:10516
F7B7  A9 FF     LDA #$FF                        A:AA X:78 Y:0B P:24 SP:F9 PPU: 92,182 CYC:10518
F7B9  85 01     STA $01 = FF                    A:FF X:78 Y:0B P:A4 SP:F9 PPU: 92,188 CYC:10520
F7BB  24 01     BIT $01 = FF                    A:FF X:78 Y:0B P:A4 SP:F9 PPU: 92,197 CYC:10523
F7BD  A9 55     LDA #$55                        A:FF X:78 Y:0B P:E4 SP:F9 PPU: 92,206 CYC:10526
F7BF  60        RTS                             A:55 X:78 Y:0B P:64 SP:F9 PPU: 92,212 CYC:10528
DC3D  15 00     ORA $00,X @ 78 = AA             A:55 X:78 Y:0B P:64 SP:FB PPU: 92,230 CYC:10534
DC3F  20 C0 F7  JSR $F7C0                       A:FF X:78 Y:0B P:E4 SP:FB PPU: 92,242 CYC:10538
F7C0  B0 09     BCS $F7CB                       A:FF X:78 Y:0B P:E4 SP:F9 PPU: 92,260 CYC:10544
F7C2  10 07     BPL $F7CB                       A:FF X:78 Y:0B P:E4 SP:F9 PPU: 92,266 CYC:10546
F7C4  C9 FF     CMP #$FF                        A:FF X:78 Y:0B P:E4 SP:F9 PPU: 92,272 CYC:10548
F7C6  D0 03     BNE $F7CB                       A:FF X:78 Y:0B P:67 SP:F9 PPU: 92,278 CYC:10550
F7C8  50 01     BVC $F7CB                       A:FF X:78 Y:0B P:67 SP:F9 PPU: 92,284 CYC:10552
F7CA  60        RTS                             A:FF X:78 Y:0B P:67 SP:F9 PPU: 92,290 CYC:10554
DC42  C8        INY                             A:FF X:78 Y:0B P:67 SP:FB PPU: 92,308 CYC:10560
DC43  A9 00     LDA #$00                        A:FF X:78 Y:0C P:65 SP:FB PPU: 92,314 CYC:10562
DC45  85 78     STA $78 = AA                    A:00 X:78 Y:0C P:67 SP:FB PPU: 92,320 CYC:10564
DC47  20 CE F7  JSR $F7CE                       A:00 X:78 Y:0C P:67 SP:FB PPU: 92,329 CYC:10567
F7CE  38        SEC                             A:00 X:78 Y:0C P:67 SP:F9 PPU: 93,  6 CYC:10573
F7CF  B8        CLV                             A:00 X:78 Y:0C P:67 SP:F9 PPU: 93, 12 CYC:10575
F7D0  A9 00     LDA #$00                        A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 18 CYC:10577
F7D2  60        RTS                             A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 24 CYC:10579
DC4A  15 00     ORA $00,X @ 78 = 00             A:00 X:78 Y:0C P:27 SP:FB PPU: 93, 42 CYC:10585
DC4C  20 D3 F7  JSR $F7D3                       A:00 X:78 Y:0C P:27 SP:FB PPU: 93, 54 CYC:10589
F7D3  D0 07     BNE $F7DC                       A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 72 CYC:10595
F7D5  70 05     BVS $F7DC                       A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 78 CYC:10597
F7D7  90 03     BCC $F7DC                       A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 84 CYC:10599
F7D9  30 01     BMI $F7DC                       A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 90 CYC:10601
F7DB  60        RTS                             A:00 X:78 Y:0C P:27 SP:F9 PPU: 93, 96 CYC:10603
DC4F  C8        INY                             A:00 X:78 Y:0C P:27 SP:FB PPU: 93,114 CYC:10609
DC50  A9 AA     LDA #$AA                        A:00 X:78 Y:0D P:25 SP:FB PPU: 93,120 CYC:10611
DC52  85 78     STA $78 = 00                    A:AA X:78 Y:0D P:A5 SP:FB PPU: 93,126 CYC:10613
DC54  20 DF F7  JSR $F7DF                       A:AA X:78 Y:0D P:A5 SP:FB PPU: 93,135 CYC:10616
F7DF  18        CLC                             A:AA X:78 Y:0D P:A5 SP:F9 PPU: 93,153 CYC:10622
F7E0  24 01     BIT $01 = FF                    A:AA X:78 Y:0D P:A4 SP:F9 PPU: 93,159 CYC:10624
F7E2  A9 55     LDA #$55                        A:AA X:78 Y:0D P:E4 SP:F9 PPU: 93,168 CYC:10627
F7E4  60        RTS                             A:55 X:78 Y:0D P:64 SP:F9 PPU: 93,174 CYC:10629
DC57  35 00     AND $00,X @ 78 = AA             A:55 X:78 Y:0D P:64 SP:FB PPU: 93,192 CYC:10635
DC59  20 E5 F7  JSR $F7E5                       A:00 X:78 Y:0D P:66 SP:FB PPU: 93,204 CYC:10639
F7E5  D0 07     BNE $F7EE                       A:00 X:78 Y:0D P:66 SP:F9 PPU: 93,222 CYC:10645
F7E7  50 05     BVC $F7EE                       A:00 X:78 Y:0D P:66 SP:F9 PPU: 93,228 CYC:10647
F7E9  B0 03     BCS $F7EE                       A:00 X:78 Y:0D P:66 SP:F9 PPU: 93,234 CYC:10649
F7EB  30 01     BMI $F7EE                       A:00 X:78 Y:0D P:66 SP:F9 PPU: 93,240 CYC:10651
F7ED  60        RTS                             A:00 X:78 Y:0D P:66 SP:F9 PPU: 93,246 CYC:10653
DC5C  C8        INY                             A:00 X:78 Y:0D P:66 SP:FB PPU: 93,264 CYC:10659
DC5D  A9 EF     LDA #$EF                        A:00 X:78 Y:0E P:64 SP:FB PPU: 93,270 CYC:10661
DC5F  85 78     STA $78 = AA                    A:EF X:78 Y:0E P:E4 SP:FB PPU: 93,276 CYC:10663
DC61  20 F1 F7  JSR $F7F1                       A:EF X:78 Y:0E P:E4 SP:FB PPU: 93,285 CYC:10666
F7F1  38        SEC                             A:EF X:78 Y:0E P:E4 SP:F9 PPU: 93,303 CYC:10672
F7F2  B8        CLV                             A:EF X:78 Y:0E P:E5 SP:F9 PPU: 93,309 CYC:10674
F7F3  A9 F8     LDA #$F8                        A:EF X:78 Y:0E P:A5 SP:F9 PPU: 93,315 CYC:10676
F7F5  60        RTS                             A:F8 X:78 Y:0E P:A5 SP:F9 PPU: 93,321 CYC:10678
DC64  35 00     AND $00,X @ 78 = EF             A:F8 X:78 Y:0E P:A5 SP:FB PPU: 93,339 CYC:10684
DC66  20 F6 F7  JSR $F7F6                       A:E8 X:78 Y:0E P:A5 SP:FB PPU: 94, 10 CYC:10688
F7F6  90 09     BCC $F801                       A:E8 X:78 Y:0E P:A5 SP:F9 PPU: 94, 28 CYC:10694
F7F8  10 07     BPL $F801                       A:E8 X:78 Y:0E P:A5 SP:F9 PPU: 94, 34 CYC:10696
F7FA  C9 E8     CMP #$E8                        A:E8 X:78 Y:0E P:A5 SP:F9 PPU: 94, 40 CYC:10698
F7FC  D0 03     BNE $F801                       A:E8 X:78 Y:0E P:27 SP:F9 PPU: 94, 46 CYC:10700
F7FE  70 01     BVS $F801                       A:E8 X:78 Y:0E P:27 SP:F9 PPU: 94, 52 CYC:10702
F800  60        RTS                             A:E8 X:78 Y:0E P:27 SP:F9 PPU: 94, 58 CYC:10704
DC69  C8        INY                             A:E8 X:78 Y:0E P:27 SP:FB PPU: 94, 76 CYC:10710
DC6A  A9 AA     LDA #$AA                        A:E8 X:78 Y:0F P:25 SP:FB PPU: 94, 82 CYC:10712
DC6C  85 78     STA $78 = EF                    A:AA X:78 Y:0F P:A5 SP:FB PPU: 94, 88 CYC:10714
DC6E  20 04 F8  JSR $F804                       A:AA X:78 Y:0F P:A5 SP:FB PPU: 94, 97 CYC:10717
F804  18        CLC                             A:AA X:78 Y:0F P:A5 SP:F9 PPU: 94,115 CYC:10723
F805  24 01     BIT $01 = FF                    A:AA X:78 Y:0F P:A4 SP:F9 PPU: 94,121 CYC:10725
F807  A9 5F     LDA #$5F                        A:AA X:78 Y:0F P:E4 SP:F9 PPU: 94,130 CYC:10728
F809  60        RTS                             A:5F X:78 Y:0F P:64 SP:F9 PPU: 94,136 CYC:10730
DC71  55 00     EOR $00,X @ 78 = AA             A:5F X:78 Y:0F P:64 SP:FB PPU: 94,154 CYC:10736
DC73  20 0A F8  JSR $F80A                       A:F5 X:78 Y:0F P:E4 SP:FB PPU: 94,166 CYC:10740
F80A  B0 09     BCS $F815                       A:F5 X:78 Y:0F P:E4 SP:F9 PPU: 94,184 CYC:10746
F80C  10 07     BPL $F815                       A:F5 X:78 Y:0F P:E4 SP:F9 PPU: 94,190 CYC:10748
F80E  C9 F5     CMP #$F5                        A:F5 X:78 Y:0F P:E4 SP:F9 PPU: 94,196 CYC:10750
F810  D0 03     BNE $F815                       A:F5 X:78 Y:0F P:67 SP:F9 PPU: 94,202 CYC:10752
F812  50 01     BVC $F815                       A:F5 X:78 Y:0F P:67 SP:F9 PPU: 94,208 CYC:10754
F814  60        RTS                             A:F5 X:78 Y:0F P:67 SP:F9 PPU: 94,214 CYC:10756
DC76  C8        INY                             A:F5 X:78 Y:0F P:67 SP:FB PPU: 94,232 CYC:10762
DC77  A9 70     LDA #$70                        A:F5 X:78 Y:10 P:65 SP:FB PPU: 94,238 CYC:10764
DC79  85 78     STA $78 = AA                    A:70 X:78 Y:10 P:65 SP:FB PPU: 94,244 CYC:10766
DC7B  20 18 F8  JSR $F818                       A:70 X:78 Y:10 P:65 SP:FB PPU: 94,253 CYC:10769
F818  38        SEC                             A:70 X:78 Y:10 P:65 SP:F9 PPU: 94,271 CYC:10775
F819  B8        CLV                             A:70 X:78 Y:10 P:65 SP:F9 PPU: 94,277 CYC:10777
F81A  A9 70     LDA #$70                        A:70 X:78 Y:10 P:25 SP:F9 PPU: 94,283 CYC:10779
F81C  60        RTS                             A:70 X:78 Y:10 P:25 SP:F9 PPU: 94,289 CYC:10781
DC7E  55 00     EOR $00,X @ 78 = 70             A:70 X:78 Y:10 P:25 SP:FB PPU: 94,307 CYC:10787
DC80  20 1D F8  JSR $F81D                       A:00 X:78 Y:10 P:27 SP:FB PPU: 94,319 CYC:10791
F81D  D0 07     BNE $F826                       A:00 X:78 Y:10 P:27 SP:F9 PPU: 94,337 CYC:10797
F81F  70 05     BVS $F826                       A:00 X:78 Y:10 P:27 SP:F9 PPU: 95,  2 CYC:10799
F821  90 03     BCC $F826                       A:00 X:78 Y:10 P:27 SP:F9 PPU: 95,  8 CYC:10801
F823  30 01     BMI $F826                       A:00 X:78 Y:10 P:27 SP:F9 PPU: 95, 14 CYC:10803
F825  60        RTS                             A:00 X:78 Y:10 P:27 SP:F9 PPU: 95, 20 CYC:10805
DC83  C8        INY                             A:00 X:78 Y:10 P:27 SP:FB PPU: 95, 38 CYC:10811
DC84  A9 69     LDA #$69                        A:00 X:78 Y:11 P:25 SP:FB PPU: 95, 44 CYC:10813
DC86  85 78     STA $78 = 70                    A:69 X:78 Y:11 P:25 SP:FB PPU: 95, 50 CYC:10815
DC88  20 29 F8  JSR $F829                       A:69 X:78 Y:11 P:25 SP:FB PPU: 95, 59 CYC:10818
F829  18        CLC                             A:69 X:78 Y:11 P:25 SP:F9 PPU: 95, 77 CYC:10824
F82A  24 01     BIT $01 = FF                    A:69 X:78 Y:11 P:24 SP:F9 PPU: 95, 83 CYC:10826
F82C  A9 00     LDA #$00                        A:69 X:78 Y:11 P:E4 SP:F9 PPU: 95, 92 CYC:10829
F82E  60        RTS                             A:00 X:78 Y:11 P:66 SP:F9 PPU: 95, 98 CYC:10831
DC8B  75 00     ADC $00,X @ 78 = 69             A:00 X:78 Y:11 P:66 SP:FB PPU: 95,116 CYC:10837
DC8D  20 2F F8  JSR $F82F                       A:69 X:78 Y:11 P:24 SP:FB PPU: 95,128 CYC:10841
F82F  30 09     BMI $F83A                       A:69 X:78 Y:11 P:24 SP:F9 PPU: 95,146 CYC:10847
F831  B0 07     BCS $F83A                       A:69 X:78 Y:11 P:24 SP:F9 PPU: 95,152 CYC:10849
F833  C9 69     CMP #$69                        A:69 X:78 Y:11 P:24 SP:F9 PPU: 95,158 CYC:10851
F835  D0 03     BNE $F83A                       A:69 X:78 Y:11 P:27 SP:F9 PPU: 95,164 CYC:10853
F837  70 01     BVS $F83A                       A:69 X:78 Y:11 P:27 SP:F9 PPU: 95,170 CYC:10855
F839  60        RTS                             A:69 X:78 Y:11 P:27 SP:F9 PPU: 95,176 CYC:10857
DC90  C8        INY                             A:69 X:78 Y:11 P:27 SP:FB PPU: 95,194 CYC:10863
DC91  20 3D F8  JSR $F83D                       A:69 X:78 Y:12 P:25 SP:FB PPU: 95,200 CYC:10865
F83D  38        SEC                             A:69 X:78 Y:12 P:25 SP:F9 PPU: 95,218 CYC:10871

]]