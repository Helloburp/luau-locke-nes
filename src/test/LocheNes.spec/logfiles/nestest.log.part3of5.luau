return [[
F83E  24 01     BIT $01 = FF                    A:69 X:78 Y:12 P:25 SP:F9 PPU: 95,224 CYC:10873
F840  A9 00     LDA #$00                        A:69 X:78 Y:12 P:E5 SP:F9 PPU: 95,233 CYC:10876
F842  60        RTS                             A:00 X:78 Y:12 P:67 SP:F9 PPU: 95,239 CYC:10878
DC94  75 00     ADC $00,X @ 78 = 69             A:00 X:78 Y:12 P:67 SP:FB PPU: 95,257 CYC:10884
DC96  20 43 F8  JSR $F843                       A:6A X:78 Y:12 P:24 SP:FB PPU: 95,269 CYC:10888
F843  30 09     BMI $F84E                       A:6A X:78 Y:12 P:24 SP:F9 PPU: 95,287 CYC:10894
F845  B0 07     BCS $F84E                       A:6A X:78 Y:12 P:24 SP:F9 PPU: 95,293 CYC:10896
F847  C9 6A     CMP #$6A                        A:6A X:78 Y:12 P:24 SP:F9 PPU: 95,299 CYC:10898
F849  D0 03     BNE $F84E                       A:6A X:78 Y:12 P:27 SP:F9 PPU: 95,305 CYC:10900
F84B  70 01     BVS $F84E                       A:6A X:78 Y:12 P:27 SP:F9 PPU: 95,311 CYC:10902
F84D  60        RTS                             A:6A X:78 Y:12 P:27 SP:F9 PPU: 95,317 CYC:10904
DC99  C8        INY                             A:6A X:78 Y:12 P:27 SP:FB PPU: 95,335 CYC:10910
DC9A  A9 7F     LDA #$7F                        A:6A X:78 Y:13 P:25 SP:FB PPU: 96,  0 CYC:10912
DC9C  85 78     STA $78 = 69                    A:7F X:78 Y:13 P:25 SP:FB PPU: 96,  6 CYC:10914
DC9E  20 51 F8  JSR $F851                       A:7F X:78 Y:13 P:25 SP:FB PPU: 96, 15 CYC:10917
F851  38        SEC                             A:7F X:78 Y:13 P:25 SP:F9 PPU: 96, 33 CYC:10923
F852  B8        CLV                             A:7F X:78 Y:13 P:25 SP:F9 PPU: 96, 39 CYC:10925
F853  A9 7F     LDA #$7F                        A:7F X:78 Y:13 P:25 SP:F9 PPU: 96, 45 CYC:10927
F855  60        RTS                             A:7F X:78 Y:13 P:25 SP:F9 PPU: 96, 51 CYC:10929
DCA1  75 00     ADC $00,X @ 78 = 7F             A:7F X:78 Y:13 P:25 SP:FB PPU: 96, 69 CYC:10935
DCA3  20 56 F8  JSR $F856                       A:FF X:78 Y:13 P:E4 SP:FB PPU: 96, 81 CYC:10939
F856  10 09     BPL $F861                       A:FF X:78 Y:13 P:E4 SP:F9 PPU: 96, 99 CYC:10945
F858  B0 07     BCS $F861                       A:FF X:78 Y:13 P:E4 SP:F9 PPU: 96,105 CYC:10947
F85A  C9 FF     CMP #$FF                        A:FF X:78 Y:13 P:E4 SP:F9 PPU: 96,111 CYC:10949
F85C  D0 03     BNE $F861                       A:FF X:78 Y:13 P:67 SP:F9 PPU: 96,117 CYC:10951
F85E  50 01     BVC $F861                       A:FF X:78 Y:13 P:67 SP:F9 PPU: 96,123 CYC:10953
F860  60        RTS                             A:FF X:78 Y:13 P:67 SP:F9 PPU: 96,129 CYC:10955
DCA6  C8        INY                             A:FF X:78 Y:13 P:67 SP:FB PPU: 96,147 CYC:10961
DCA7  A9 80     LDA #$80                        A:FF X:78 Y:14 P:65 SP:FB PPU: 96,153 CYC:10963
DCA9  85 78     STA $78 = 7F                    A:80 X:78 Y:14 P:E5 SP:FB PPU: 96,159 CYC:10965
DCAB  20 64 F8  JSR $F864                       A:80 X:78 Y:14 P:E5 SP:FB PPU: 96,168 CYC:10968
F864  18        CLC                             A:80 X:78 Y:14 P:E5 SP:F9 PPU: 96,186 CYC:10974
F865  24 01     BIT $01 = FF                    A:80 X:78 Y:14 P:E4 SP:F9 PPU: 96,192 CYC:10976
F867  A9 7F     LDA #$7F                        A:80 X:78 Y:14 P:E4 SP:F9 PPU: 96,201 CYC:10979
F869  60        RTS                             A:7F X:78 Y:14 P:64 SP:F9 PPU: 96,207 CYC:10981
DCAE  75 00     ADC $00,X @ 78 = 80             A:7F X:78 Y:14 P:64 SP:FB PPU: 96,225 CYC:10987
DCB0  20 6A F8  JSR $F86A                       A:FF X:78 Y:14 P:A4 SP:FB PPU: 96,237 CYC:10991
F86A  10 09     BPL $F875                       A:FF X:78 Y:14 P:A4 SP:F9 PPU: 96,255 CYC:10997
F86C  B0 07     BCS $F875                       A:FF X:78 Y:14 P:A4 SP:F9 PPU: 96,261 CYC:10999
F86E  C9 FF     CMP #$FF                        A:FF X:78 Y:14 P:A4 SP:F9 PPU: 96,267 CYC:11001
F870  D0 03     BNE $F875                       A:FF X:78 Y:14 P:27 SP:F9 PPU: 96,273 CYC:11003
F872  70 01     BVS $F875                       A:FF X:78 Y:14 P:27 SP:F9 PPU: 96,279 CYC:11005
F874  60        RTS                             A:FF X:78 Y:14 P:27 SP:F9 PPU: 96,285 CYC:11007
DCB3  C8        INY                             A:FF X:78 Y:14 P:27 SP:FB PPU: 96,303 CYC:11013
DCB4  20 78 F8  JSR $F878                       A:FF X:78 Y:15 P:25 SP:FB PPU: 96,309 CYC:11015
F878  38        SEC                             A:FF X:78 Y:15 P:25 SP:F9 PPU: 96,327 CYC:11021
F879  B8        CLV                             A:FF X:78 Y:15 P:25 SP:F9 PPU: 96,333 CYC:11023
F87A  A9 7F     LDA #$7F                        A:FF X:78 Y:15 P:25 SP:F9 PPU: 96,339 CYC:11025
F87C  60        RTS                             A:7F X:78 Y:15 P:25 SP:F9 PPU: 97,  4 CYC:11027
DCB7  75 00     ADC $00,X @ 78 = 80             A:7F X:78 Y:15 P:25 SP:FB PPU: 97, 22 CYC:11033
DCB9  20 7D F8  JSR $F87D                       A:00 X:78 Y:15 P:27 SP:FB PPU: 97, 34 CYC:11037
F87D  D0 07     BNE $F886                       A:00 X:78 Y:15 P:27 SP:F9 PPU: 97, 52 CYC:11043
F87F  30 05     BMI $F886                       A:00 X:78 Y:15 P:27 SP:F9 PPU: 97, 58 CYC:11045
F881  70 03     BVS $F886                       A:00 X:78 Y:15 P:27 SP:F9 PPU: 97, 64 CYC:11047
F883  90 01     BCC $F886                       A:00 X:78 Y:15 P:27 SP:F9 PPU: 97, 70 CYC:11049
F885  60        RTS                             A:00 X:78 Y:15 P:27 SP:F9 PPU: 97, 76 CYC:11051
DCBC  C8        INY                             A:00 X:78 Y:15 P:27 SP:FB PPU: 97, 94 CYC:11057
DCBD  A9 40     LDA #$40                        A:00 X:78 Y:16 P:25 SP:FB PPU: 97,100 CYC:11059
DCBF  85 78     STA $78 = 80                    A:40 X:78 Y:16 P:25 SP:FB PPU: 97,106 CYC:11061
DCC1  20 89 F8  JSR $F889                       A:40 X:78 Y:16 P:25 SP:FB PPU: 97,115 CYC:11064
F889  24 01     BIT $01 = FF                    A:40 X:78 Y:16 P:25 SP:F9 PPU: 97,133 CYC:11070
F88B  A9 40     LDA #$40                        A:40 X:78 Y:16 P:E5 SP:F9 PPU: 97,142 CYC:11073
F88D  60        RTS                             A:40 X:78 Y:16 P:65 SP:F9 PPU: 97,148 CYC:11075
DCC4  D5 00     CMP $00,X @ 78 = 40             A:40 X:78 Y:16 P:65 SP:FB PPU: 97,166 CYC:11081
DCC6  20 8E F8  JSR $F88E                       A:40 X:78 Y:16 P:67 SP:FB PPU: 97,178 CYC:11085
F88E  30 07     BMI $F897                       A:40 X:78 Y:16 P:67 SP:F9 PPU: 97,196 CYC:11091
F890  90 05     BCC $F897                       A:40 X:78 Y:16 P:67 SP:F9 PPU: 97,202 CYC:11093
F892  D0 03     BNE $F897                       A:40 X:78 Y:16 P:67 SP:F9 PPU: 97,208 CYC:11095
F894  50 01     BVC $F897                       A:40 X:78 Y:16 P:67 SP:F9 PPU: 97,214 CYC:11097
F896  60        RTS                             A:40 X:78 Y:16 P:67 SP:F9 PPU: 97,220 CYC:11099
DCC9  C8        INY                             A:40 X:78 Y:16 P:67 SP:FB PPU: 97,238 CYC:11105
DCCA  48        PHA                             A:40 X:78 Y:17 P:65 SP:FB PPU: 97,244 CYC:11107
DCCB  A9 3F     LDA #$3F                        A:40 X:78 Y:17 P:65 SP:FA PPU: 97,253 CYC:11110
DCCD  85 78     STA $78 = 40                    A:3F X:78 Y:17 P:65 SP:FA PPU: 97,259 CYC:11112
DCCF  68        PLA                             A:3F X:78 Y:17 P:65 SP:FA PPU: 97,268 CYC:11115
DCD0  20 9A F8  JSR $F89A                       A:40 X:78 Y:17 P:65 SP:FB PPU: 97,280 CYC:11119
F89A  B8        CLV                             A:40 X:78 Y:17 P:65 SP:F9 PPU: 97,298 CYC:11125
F89B  60        RTS                             A:40 X:78 Y:17 P:25 SP:F9 PPU: 97,304 CYC:11127
DCD3  D5 00     CMP $00,X @ 78 = 3F             A:40 X:78 Y:17 P:25 SP:FB PPU: 97,322 CYC:11133
DCD5  20 9C F8  JSR $F89C                       A:40 X:78 Y:17 P:25 SP:FB PPU: 97,334 CYC:11137
F89C  F0 07     BEQ $F8A5                       A:40 X:78 Y:17 P:25 SP:F9 PPU: 98, 11 CYC:11143
F89E  30 05     BMI $F8A5                       A:40 X:78 Y:17 P:25 SP:F9 PPU: 98, 17 CYC:11145
F8A0  90 03     BCC $F8A5                       A:40 X:78 Y:17 P:25 SP:F9 PPU: 98, 23 CYC:11147
F8A2  70 01     BVS $F8A5                       A:40 X:78 Y:17 P:25 SP:F9 PPU: 98, 29 CYC:11149
F8A4  60        RTS                             A:40 X:78 Y:17 P:25 SP:F9 PPU: 98, 35 CYC:11151
DCD8  C8        INY                             A:40 X:78 Y:17 P:25 SP:FB PPU: 98, 53 CYC:11157
DCD9  48        PHA                             A:40 X:78 Y:18 P:25 SP:FB PPU: 98, 59 CYC:11159
DCDA  A9 41     LDA #$41                        A:40 X:78 Y:18 P:25 SP:FA PPU: 98, 68 CYC:11162
DCDC  85 78     STA $78 = 3F                    A:41 X:78 Y:18 P:25 SP:FA PPU: 98, 74 CYC:11164
DCDE  68        PLA                             A:41 X:78 Y:18 P:25 SP:FA PPU: 98, 83 CYC:11167
DCDF  D5 00     CMP $00,X @ 78 = 41             A:40 X:78 Y:18 P:25 SP:FB PPU: 98, 95 CYC:11171
DCE1  20 A8 F8  JSR $F8A8                       A:40 X:78 Y:18 P:A4 SP:FB PPU: 98,107 CYC:11175
F8A8  F0 05     BEQ $F8AF                       A:40 X:78 Y:18 P:A4 SP:F9 PPU: 98,125 CYC:11181
F8AA  10 03     BPL $F8AF                       A:40 X:78 Y:18 P:A4 SP:F9 PPU: 98,131 CYC:11183
F8AC  10 01     BPL $F8AF                       A:40 X:78 Y:18 P:A4 SP:F9 PPU: 98,137 CYC:11185
F8AE  60        RTS                             A:40 X:78 Y:18 P:A4 SP:F9 PPU: 98,143 CYC:11187
DCE4  C8        INY                             A:40 X:78 Y:18 P:A4 SP:FB PPU: 98,161 CYC:11193
DCE5  48        PHA                             A:40 X:78 Y:19 P:24 SP:FB PPU: 98,167 CYC:11195
DCE6  A9 00     LDA #$00                        A:40 X:78 Y:19 P:24 SP:FA PPU: 98,176 CYC:11198
DCE8  85 78     STA $78 = 41                    A:00 X:78 Y:19 P:26 SP:FA PPU: 98,182 CYC:11200
DCEA  68        PLA                             A:00 X:78 Y:19 P:26 SP:FA PPU: 98,191 CYC:11203
DCEB  20 B2 F8  JSR $F8B2                       A:40 X:78 Y:19 P:24 SP:FB PPU: 98,203 CYC:11207
F8B2  A9 80     LDA #$80                        A:40 X:78 Y:19 P:24 SP:F9 PPU: 98,221 CYC:11213
F8B4  60        RTS                             A:80 X:78 Y:19 P:A4 SP:F9 PPU: 98,227 CYC:11215
DCEE  D5 00     CMP $00,X @ 78 = 00             A:80 X:78 Y:19 P:A4 SP:FB PPU: 98,245 CYC:11221
DCF0  20 B5 F8  JSR $F8B5                       A:80 X:78 Y:19 P:A5 SP:FB PPU: 98,257 CYC:11225
F8B5  F0 05     BEQ $F8BC                       A:80 X:78 Y:19 P:A5 SP:F9 PPU: 98,275 CYC:11231
F8B7  10 03     BPL $F8BC                       A:80 X:78 Y:19 P:A5 SP:F9 PPU: 98,281 CYC:11233
F8B9  90 01     BCC $F8BC                       A:80 X:78 Y:19 P:A5 SP:F9 PPU: 98,287 CYC:11235
F8BB  60        RTS                             A:80 X:78 Y:19 P:A5 SP:F9 PPU: 98,293 CYC:11237
DCF3  C8        INY                             A:80 X:78 Y:19 P:A5 SP:FB PPU: 98,311 CYC:11243
DCF4  48        PHA                             A:80 X:78 Y:1A P:25 SP:FB PPU: 98,317 CYC:11245
DCF5  A9 80     LDA #$80                        A:80 X:78 Y:1A P:25 SP:FA PPU: 98,326 CYC:11248
DCF7  85 78     STA $78 = 00                    A:80 X:78 Y:1A P:A5 SP:FA PPU: 98,332 CYC:11250
DCF9  68        PLA                             A:80 X:78 Y:1A P:A5 SP:FA PPU: 99,  0 CYC:11253
DCFA  D5 00     CMP $00,X @ 78 = 80             A:80 X:78 Y:1A P:A5 SP:FB PPU: 99, 12 CYC:11257
DCFC  20 BF F8  JSR $F8BF                       A:80 X:78 Y:1A P:27 SP:FB PPU: 99, 24 CYC:11261
F8BF  D0 05     BNE $F8C6                       A:80 X:78 Y:1A P:27 SP:F9 PPU: 99, 42 CYC:11267
F8C1  30 03     BMI $F8C6                       A:80 X:78 Y:1A P:27 SP:F9 PPU: 99, 48 CYC:11269
F8C3  90 01     BCC $F8C6                       A:80 X:78 Y:1A P:27 SP:F9 PPU: 99, 54 CYC:11271
F8C5  60        RTS                             A:80 X:78 Y:1A P:27 SP:F9 PPU: 99, 60 CYC:11273
DCFF  C8        INY                             A:80 X:78 Y:1A P:27 SP:FB PPU: 99, 78 CYC:11279
DD00  48        PHA                             A:80 X:78 Y:1B P:25 SP:FB PPU: 99, 84 CYC:11281
DD01  A9 81     LDA #$81                        A:80 X:78 Y:1B P:25 SP:FA PPU: 99, 93 CYC:11284
DD03  85 78     STA $78 = 80                    A:81 X:78 Y:1B P:A5 SP:FA PPU: 99, 99 CYC:11286
DD05  68        PLA                             A:81 X:78 Y:1B P:A5 SP:FA PPU: 99,108 CYC:11289
DD06  D5 00     CMP $00,X @ 78 = 81             A:80 X:78 Y:1B P:A5 SP:FB PPU: 99,120 CYC:11293
DD08  20 C9 F8  JSR $F8C9                       A:80 X:78 Y:1B P:A4 SP:FB PPU: 99,132 CYC:11297
F8C9  B0 05     BCS $F8D0                       A:80 X:78 Y:1B P:A4 SP:F9 PPU: 99,150 CYC:11303
F8CB  F0 03     BEQ $F8D0                       A:80 X:78 Y:1B P:A4 SP:F9 PPU: 99,156 CYC:11305
F8CD  10 01     BPL $F8D0                       A:80 X:78 Y:1B P:A4 SP:F9 PPU: 99,162 CYC:11307
F8CF  60        RTS                             A:80 X:78 Y:1B P:A4 SP:F9 PPU: 99,168 CYC:11309
DD0B  C8        INY                             A:80 X:78 Y:1B P:A4 SP:FB PPU: 99,186 CYC:11315
DD0C  48        PHA                             A:80 X:78 Y:1C P:24 SP:FB PPU: 99,192 CYC:11317
DD0D  A9 7F     LDA #$7F                        A:80 X:78 Y:1C P:24 SP:FA PPU: 99,201 CYC:11320
DD0F  85 78     STA $78 = 81                    A:7F X:78 Y:1C P:24 SP:FA PPU: 99,207 CYC:11322
DD11  68        PLA                             A:7F X:78 Y:1C P:24 SP:FA PPU: 99,216 CYC:11325
DD12  D5 00     CMP $00,X @ 78 = 7F             A:80 X:78 Y:1C P:A4 SP:FB PPU: 99,228 CYC:11329
DD14  20 D3 F8  JSR $F8D3                       A:80 X:78 Y:1C P:25 SP:FB PPU: 99,240 CYC:11333
F8D3  90 05     BCC $F8DA                       A:80 X:78 Y:1C P:25 SP:F9 PPU: 99,258 CYC:11339
F8D5  F0 03     BEQ $F8DA                       A:80 X:78 Y:1C P:25 SP:F9 PPU: 99,264 CYC:11341
F8D7  30 01     BMI $F8DA                       A:80 X:78 Y:1C P:25 SP:F9 PPU: 99,270 CYC:11343
F8D9  60        RTS                             A:80 X:78 Y:1C P:25 SP:F9 PPU: 99,276 CYC:11345
DD17  C8        INY                             A:80 X:78 Y:1C P:25 SP:FB PPU: 99,294 CYC:11351
DD18  A9 40     LDA #$40                        A:80 X:78 Y:1D P:25 SP:FB PPU: 99,300 CYC:11353
DD1A  85 78     STA $78 = 7F                    A:40 X:78 Y:1D P:25 SP:FB PPU: 99,306 CYC:11355
DD1C  20 31 F9  JSR $F931                       A:40 X:78 Y:1D P:25 SP:FB PPU: 99,315 CYC:11358
F931  24 01     BIT $01 = FF                    A:40 X:78 Y:1D P:25 SP:F9 PPU: 99,333 CYC:11364
F933  A9 40     LDA #$40                        A:40 X:78 Y:1D P:E5 SP:F9 PPU:100,  1 CYC:11367
F935  38        SEC                             A:40 X:78 Y:1D P:65 SP:F9 PPU:100,  7 CYC:11369
F936  60        RTS                             A:40 X:78 Y:1D P:65 SP:F9 PPU:100, 13 CYC:11371
DD1F  F5 00     SBC $00,X @ 78 = 40             A:40 X:78 Y:1D P:65 SP:FB PPU:100, 31 CYC:11377
DD21  20 37 F9  JSR $F937                       A:00 X:78 Y:1D P:27 SP:FB PPU:100, 43 CYC:11381
F937  30 0B     BMI $F944                       A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 61 CYC:11387
F939  90 09     BCC $F944                       A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 67 CYC:11389
F93B  D0 07     BNE $F944                       A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 73 CYC:11391
F93D  70 05     BVS $F944                       A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 79 CYC:11393
F93F  C9 00     CMP #$00                        A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 85 CYC:11395
F941  D0 01     BNE $F944                       A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 91 CYC:11397
F943  60        RTS                             A:00 X:78 Y:1D P:27 SP:F9 PPU:100, 97 CYC:11399
DD24  C8        INY                             A:00 X:78 Y:1D P:27 SP:FB PPU:100,115 CYC:11405
DD25  A9 3F     LDA #$3F                        A:00 X:78 Y:1E P:25 SP:FB PPU:100,121 CYC:11407
DD27  85 78     STA $78 = 40                    A:3F X:78 Y:1E P:25 SP:FB PPU:100,127 CYC:11409
DD29  20 47 F9  JSR $F947                       A:3F X:78 Y:1E P:25 SP:FB PPU:100,136 CYC:11412
F947  B8        CLV                             A:3F X:78 Y:1E P:25 SP:F9 PPU:100,154 CYC:11418
F948  38        SEC                             A:3F X:78 Y:1E P:25 SP:F9 PPU:100,160 CYC:11420
F949  A9 40     LDA #$40                        A:3F X:78 Y:1E P:25 SP:F9 PPU:100,166 CYC:11422
F94B  60        RTS                             A:40 X:78 Y:1E P:25 SP:F9 PPU:100,172 CYC:11424
DD2C  F5 00     SBC $00,X @ 78 = 3F             A:40 X:78 Y:1E P:25 SP:FB PPU:100,190 CYC:11430
DD2E  20 4C F9  JSR $F94C                       A:01 X:78 Y:1E P:25 SP:FB PPU:100,202 CYC:11434
F94C  F0 0B     BEQ $F959                       A:01 X:78 Y:1E P:25 SP:F9 PPU:100,220 CYC:11440
F94E  30 09     BMI $F959                       A:01 X:78 Y:1E P:25 SP:F9 PPU:100,226 CYC:11442
F950  90 07     BCC $F959                       A:01 X:78 Y:1E P:25 SP:F9 PPU:100,232 CYC:11444
F952  70 05     BVS $F959                       A:01 X:78 Y:1E P:25 SP:F9 PPU:100,238 CYC:11446
F954  C9 01     CMP #$01                        A:01 X:78 Y:1E P:25 SP:F9 PPU:100,244 CYC:11448
F956  D0 01     BNE $F959                       A:01 X:78 Y:1E P:27 SP:F9 PPU:100,250 CYC:11450
F958  60        RTS                             A:01 X:78 Y:1E P:27 SP:F9 PPU:100,256 CYC:11452
DD31  C8        INY                             A:01 X:78 Y:1E P:27 SP:FB PPU:100,274 CYC:11458
DD32  A9 41     LDA #$41                        A:01 X:78 Y:1F P:25 SP:FB PPU:100,280 CYC:11460
DD34  85 78     STA $78 = 3F                    A:41 X:78 Y:1F P:25 SP:FB PPU:100,286 CYC:11462
DD36  20 5C F9  JSR $F95C                       A:41 X:78 Y:1F P:25 SP:FB PPU:100,295 CYC:11465
F95C  A9 40     LDA #$40                        A:41 X:78 Y:1F P:25 SP:F9 PPU:100,313 CYC:11471
F95E  38        SEC                             A:40 X:78 Y:1F P:25 SP:F9 PPU:100,319 CYC:11473
F95F  24 01     BIT $01 = FF                    A:40 X:78 Y:1F P:25 SP:F9 PPU:100,325 CYC:11475
F961  60        RTS                             A:40 X:78 Y:1F P:E5 SP:F9 PPU:100,334 CYC:11478
DD39  F5 00     SBC $00,X @ 78 = 41             A:40 X:78 Y:1F P:E5 SP:FB PPU:101, 11 CYC:11484
DD3B  20 62 F9  JSR $F962                       A:FF X:78 Y:1F P:A4 SP:FB PPU:101, 23 CYC:11488
F962  B0 0B     BCS $F96F                       A:FF X:78 Y:1F P:A4 SP:F9 PPU:101, 41 CYC:11494
F964  F0 09     BEQ $F96F                       A:FF X:78 Y:1F P:A4 SP:F9 PPU:101, 47 CYC:11496
F966  10 07     BPL $F96F                       A:FF X:78 Y:1F P:A4 SP:F9 PPU:101, 53 CYC:11498
F968  70 05     BVS $F96F                       A:FF X:78 Y:1F P:A4 SP:F9 PPU:101, 59 CYC:11500
F96A  C9 FF     CMP #$FF                        A:FF X:78 Y:1F P:A4 SP:F9 PPU:101, 65 CYC:11502
F96C  D0 01     BNE $F96F                       A:FF X:78 Y:1F P:27 SP:F9 PPU:101, 71 CYC:11504
F96E  60        RTS                             A:FF X:78 Y:1F P:27 SP:F9 PPU:101, 77 CYC:11506
DD3E  C8        INY                             A:FF X:78 Y:1F P:27 SP:FB PPU:101, 95 CYC:11512
DD3F  A9 00     LDA #$00                        A:FF X:78 Y:20 P:25 SP:FB PPU:101,101 CYC:11514
DD41  85 78     STA $78 = 41                    A:00 X:78 Y:20 P:27 SP:FB PPU:101,107 CYC:11516
DD43  20 72 F9  JSR $F972                       A:00 X:78 Y:20 P:27 SP:FB PPU:101,116 CYC:11519
F972  18        CLC                             A:00 X:78 Y:20 P:27 SP:F9 PPU:101,134 CYC:11525
F973  A9 80     LDA #$80                        A:00 X:78 Y:20 P:26 SP:F9 PPU:101,140 CYC:11527
F975  60        RTS                             A:80 X:78 Y:20 P:A4 SP:F9 PPU:101,146 CYC:11529
DD46  F5 00     SBC $00,X @ 78 = 00             A:80 X:78 Y:20 P:A4 SP:FB PPU:101,164 CYC:11535
DD48  20 76 F9  JSR $F976                       A:7F X:78 Y:20 P:65 SP:FB PPU:101,176 CYC:11539
F976  90 05     BCC $F97D                       A:7F X:78 Y:20 P:65 SP:F9 PPU:101,194 CYC:11545
F978  C9 7F     CMP #$7F                        A:7F X:78 Y:20 P:65 SP:F9 PPU:101,200 CYC:11547
F97A  D0 01     BNE $F97D                       A:7F X:78 Y:20 P:67 SP:F9 PPU:101,206 CYC:11549
F97C  60        RTS                             A:7F X:78 Y:20 P:67 SP:F9 PPU:101,212 CYC:11551
DD4B  C8        INY                             A:7F X:78 Y:20 P:67 SP:FB PPU:101,230 CYC:11557
DD4C  A9 7F     LDA #$7F                        A:7F X:78 Y:21 P:65 SP:FB PPU:101,236 CYC:11559
DD4E  85 78     STA $78 = 00                    A:7F X:78 Y:21 P:65 SP:FB PPU:101,242 CYC:11561
DD50  20 80 F9  JSR $F980                       A:7F X:78 Y:21 P:65 SP:FB PPU:101,251 CYC:11564
F980  38        SEC                             A:7F X:78 Y:21 P:65 SP:F9 PPU:101,269 CYC:11570
F981  A9 81     LDA #$81                        A:7F X:78 Y:21 P:65 SP:F9 PPU:101,275 CYC:11572
F983  60        RTS                             A:81 X:78 Y:21 P:E5 SP:F9 PPU:101,281 CYC:11574
DD53  F5 00     SBC $00,X @ 78 = 7F             A:81 X:78 Y:21 P:E5 SP:FB PPU:101,299 CYC:11580
DD55  20 84 F9  JSR $F984                       A:02 X:78 Y:21 P:65 SP:FB PPU:101,311 CYC:11584
F984  50 07     BVC $F98D                       A:02 X:78 Y:21 P:65 SP:F9 PPU:101,329 CYC:11590
F986  90 05     BCC $F98D                       A:02 X:78 Y:21 P:65 SP:F9 PPU:101,335 CYC:11592
F988  C9 02     CMP #$02                        A:02 X:78 Y:21 P:65 SP:F9 PPU:102,  0 CYC:11594
F98A  D0 01     BNE $F98D                       A:02 X:78 Y:21 P:67 SP:F9 PPU:102,  6 CYC:11596
F98C  60        RTS                             A:02 X:78 Y:21 P:67 SP:F9 PPU:102, 12 CYC:11598
DD58  A9 AA     LDA #$AA                        A:02 X:78 Y:21 P:67 SP:FB PPU:102, 30 CYC:11604
DD5A  85 33     STA $33 = 44                    A:AA X:78 Y:21 P:E5 SP:FB PPU:102, 36 CYC:11606
DD5C  A9 BB     LDA #$BB                        A:AA X:78 Y:21 P:E5 SP:FB PPU:102, 45 CYC:11609
DD5E  85 89     STA $89 = BB                    A:BB X:78 Y:21 P:E5 SP:FB PPU:102, 51 CYC:11611
DD60  A2 00     LDX #$00                        A:BB X:78 Y:21 P:E5 SP:FB PPU:102, 60 CYC:11614
DD62  A0 66     LDY #$66                        A:BB X:00 Y:21 P:67 SP:FB PPU:102, 66 CYC:11616
DD64  24 01     BIT $01 = FF                    A:BB X:00 Y:66 P:65 SP:FB PPU:102, 72 CYC:11618
DD66  38        SEC                             A:BB X:00 Y:66 P:E5 SP:FB PPU:102, 81 CYC:11621
DD67  A9 00     LDA #$00                        A:BB X:00 Y:66 P:E5 SP:FB PPU:102, 87 CYC:11623
DD69  B5 33     LDA $33,X @ 33 = AA             A:00 X:00 Y:66 P:67 SP:FB PPU:102, 93 CYC:11625
DD6B  10 12     BPL $DD7F                       A:AA X:00 Y:66 P:E5 SP:FB PPU:102,105 CYC:11629
DD6D  F0 10     BEQ $DD7F                       A:AA X:00 Y:66 P:E5 SP:FB PPU:102,111 CYC:11631
DD6F  50 0E     BVC $DD7F                       A:AA X:00 Y:66 P:E5 SP:FB PPU:102,117 CYC:11633
DD71  90 0C     BCC $DD7F                       A:AA X:00 Y:66 P:E5 SP:FB PPU:102,123 CYC:11635
DD73  C0 66     CPY #$66                        A:AA X:00 Y:66 P:E5 SP:FB PPU:102,129 CYC:11637
DD75  D0 08     BNE $DD7F                       A:AA X:00 Y:66 P:67 SP:FB PPU:102,135 CYC:11639
DD77  E0 00     CPX #$00                        A:AA X:00 Y:66 P:67 SP:FB PPU:102,141 CYC:11641
DD79  D0 04     BNE $DD7F                       A:AA X:00 Y:66 P:67 SP:FB PPU:102,147 CYC:11643
DD7B  C9 AA     CMP #$AA                        A:AA X:00 Y:66 P:67 SP:FB PPU:102,153 CYC:11645
DD7D  F0 04     BEQ $DD83                       A:AA X:00 Y:66 P:67 SP:FB PPU:102,159 CYC:11647
DD83  A2 8A     LDX #$8A                        A:AA X:00 Y:66 P:67 SP:FB PPU:102,168 CYC:11650
DD85  A0 66     LDY #$66                        A:AA X:8A Y:66 P:E5 SP:FB PPU:102,174 CYC:11652
DD87  B8        CLV                             A:AA X:8A Y:66 P:65 SP:FB PPU:102,180 CYC:11654
DD88  18        CLC                             A:AA X:8A Y:66 P:25 SP:FB PPU:102,186 CYC:11656
DD89  A9 00     LDA #$00                        A:AA X:8A Y:66 P:24 SP:FB PPU:102,192 CYC:11658
DD8B  B5 FF     LDA $FF,X @ 89 = BB             A:00 X:8A Y:66 P:26 SP:FB PPU:102,198 CYC:11660
DD8D  10 12     BPL $DDA1                       A:BB X:8A Y:66 P:A4 SP:FB PPU:102,210 CYC:11664
DD8F  F0 10     BEQ $DDA1                       A:BB X:8A Y:66 P:A4 SP:FB PPU:102,216 CYC:11666
DD91  70 0E     BVS $DDA1                       A:BB X:8A Y:66 P:A4 SP:FB PPU:102,222 CYC:11668
DD93  B0 0C     BCS $DDA1                       A:BB X:8A Y:66 P:A4 SP:FB PPU:102,228 CYC:11670
DD95  C9 BB     CMP #$BB                        A:BB X:8A Y:66 P:A4 SP:FB PPU:102,234 CYC:11672
DD97  D0 08     BNE $DDA1                       A:BB X:8A Y:66 P:27 SP:FB PPU:102,240 CYC:11674
DD99  C0 66     CPY #$66                        A:BB X:8A Y:66 P:27 SP:FB PPU:102,246 CYC:11676
DD9B  D0 04     BNE $DDA1                       A:BB X:8A Y:66 P:27 SP:FB PPU:102,252 CYC:11678
DD9D  E0 8A     CPX #$8A                        A:BB X:8A Y:66 P:27 SP:FB PPU:102,258 CYC:11680
DD9F  F0 04     BEQ $DDA5                       A:BB X:8A Y:66 P:27 SP:FB PPU:102,264 CYC:11682
DDA5  24 01     BIT $01 = FF                    A:BB X:8A Y:66 P:27 SP:FB PPU:102,273 CYC:11685
DDA7  38        SEC                             A:BB X:8A Y:66 P:E5 SP:FB PPU:102,282 CYC:11688
DDA8  A9 44     LDA #$44                        A:BB X:8A Y:66 P:E5 SP:FB PPU:102,288 CYC:11690
DDAA  A2 00     LDX #$00                        A:44 X:8A Y:66 P:65 SP:FB PPU:102,294 CYC:11692
DDAC  95 33     STA $33,X @ 33 = AA             A:44 X:00 Y:66 P:67 SP:FB PPU:102,300 CYC:11694
DDAE  A5 33     LDA $33 = 44                    A:44 X:00 Y:66 P:67 SP:FB PPU:102,312 CYC:11698
DDB0  90 18     BCC $DDCA                       A:44 X:00 Y:66 P:65 SP:FB PPU:102,321 CYC:11701
DDB2  C9 44     CMP #$44                        A:44 X:00 Y:66 P:65 SP:FB PPU:102,327 CYC:11703
DDB4  D0 14     BNE $DDCA                       A:44 X:00 Y:66 P:67 SP:FB PPU:102,333 CYC:11705
DDB6  50 12     BVC $DDCA                       A:44 X:00 Y:66 P:67 SP:FB PPU:102,339 CYC:11707
DDB8  18        CLC                             A:44 X:00 Y:66 P:67 SP:FB PPU:103,  4 CYC:11709
DDB9  B8        CLV                             A:44 X:00 Y:66 P:66 SP:FB PPU:103, 10 CYC:11711
DDBA  A9 99     LDA #$99                        A:44 X:00 Y:66 P:26 SP:FB PPU:103, 16 CYC:11713
DDBC  A2 80     LDX #$80                        A:99 X:00 Y:66 P:A4 SP:FB PPU:103, 22 CYC:11715
DDBE  95 85     STA $85,X @ 05 = 99             A:99 X:80 Y:66 P:A4 SP:FB PPU:103, 28 CYC:11717
DDC0  A5 05     LDA $05 = 99                    A:99 X:80 Y:66 P:A4 SP:FB PPU:103, 40 CYC:11721
DDC2  B0 06     BCS $DDCA                       A:99 X:80 Y:66 P:A4 SP:FB PPU:103, 49 CYC:11724
DDC4  C9 99     CMP #$99                        A:99 X:80 Y:66 P:A4 SP:FB PPU:103, 55 CYC:11726
DDC6  D0 02     BNE $DDCA                       A:99 X:80 Y:66 P:27 SP:FB PPU:103, 61 CYC:11728
DDC8  50 04     BVC $DDCE                       A:99 X:80 Y:66 P:27 SP:FB PPU:103, 67 CYC:11730
DDCE  A0 25     LDY #$25                        A:99 X:80 Y:66 P:27 SP:FB PPU:103, 76 CYC:11733
DDD0  A2 78     LDX #$78                        A:99 X:80 Y:25 P:25 SP:FB PPU:103, 82 CYC:11735
DDD2  20 90 F9  JSR $F990                       A:99 X:78 Y:25 P:25 SP:FB PPU:103, 88 CYC:11737
F990  A2 55     LDX #$55                        A:99 X:78 Y:25 P:25 SP:F9 PPU:103,106 CYC:11743
F992  A9 FF     LDA #$FF                        A:99 X:55 Y:25 P:25 SP:F9 PPU:103,112 CYC:11745
F994  85 01     STA $01 = FF                    A:FF X:55 Y:25 P:A5 SP:F9 PPU:103,118 CYC:11747
F996  EA        NOP                             A:FF X:55 Y:25 P:A5 SP:F9 PPU:103,127 CYC:11750
F997  24 01     BIT $01 = FF                    A:FF X:55 Y:25 P:A5 SP:F9 PPU:103,133 CYC:11752
F999  38        SEC                             A:FF X:55 Y:25 P:E5 SP:F9 PPU:103,142 CYC:11755
F99A  A9 01     LDA #$01                        A:FF X:55 Y:25 P:E5 SP:F9 PPU:103,148 CYC:11757
F99C  60        RTS                             A:01 X:55 Y:25 P:65 SP:F9 PPU:103,154 CYC:11759
DDD5  95 00     STA $00,X @ 55 = 00             A:01 X:55 Y:25 P:65 SP:FB PPU:103,172 CYC:11765
DDD7  56 00     LSR $00,X @ 55 = 01             A:01 X:55 Y:25 P:65 SP:FB PPU:103,184 CYC:11769
DDD9  B5 00     LDA $00,X @ 55 = 00             A:01 X:55 Y:25 P:67 SP:FB PPU:103,202 CYC:11775
DDDB  20 9D F9  JSR $F99D                       A:00 X:55 Y:25 P:67 SP:FB PPU:103,214 CYC:11779
F99D  90 1B     BCC $F9BA                       A:00 X:55 Y:25 P:67 SP:F9 PPU:103,232 CYC:11785
F99F  D0 19     BNE $F9BA                       A:00 X:55 Y:25 P:67 SP:F9 PPU:103,238 CYC:11787
F9A1  30 17     BMI $F9BA                       A:00 X:55 Y:25 P:67 SP:F9 PPU:103,244 CYC:11789
F9A3  50 15     BVC $F9BA                       A:00 X:55 Y:25 P:67 SP:F9 PPU:103,250 CYC:11791
F9A5  C9 00     CMP #$00                        A:00 X:55 Y:25 P:67 SP:F9 PPU:103,256 CYC:11793
F9A7  D0 11     BNE $F9BA                       A:00 X:55 Y:25 P:67 SP:F9 PPU:103,262 CYC:11795
F9A9  B8        CLV                             A:00 X:55 Y:25 P:67 SP:F9 PPU:103,268 CYC:11797
F9AA  A9 AA     LDA #$AA                        A:00 X:55 Y:25 P:27 SP:F9 PPU:103,274 CYC:11799
F9AC  60        RTS                             A:AA X:55 Y:25 P:A5 SP:F9 PPU:103,280 CYC:11801
DDDE  C8        INY                             A:AA X:55 Y:25 P:A5 SP:FB PPU:103,298 CYC:11807
DDDF  95 00     STA $00,X @ 55 = 00             A:AA X:55 Y:26 P:25 SP:FB PPU:103,304 CYC:11809
DDE1  56 00     LSR $00,X @ 55 = AA             A:AA X:55 Y:26 P:25 SP:FB PPU:103,316 CYC:11813
DDE3  B5 00     LDA $00,X @ 55 = 55             A:AA X:55 Y:26 P:24 SP:FB PPU:103,334 CYC:11819
DDE5  20 AD F9  JSR $F9AD                       A:55 X:55 Y:26 P:24 SP:FB PPU:104,  5 CYC:11823
F9AD  B0 0B     BCS $F9BA                       A:55 X:55 Y:26 P:24 SP:F9 PPU:104, 23 CYC:11829
F9AF  F0 09     BEQ $F9BA                       A:55 X:55 Y:26 P:24 SP:F9 PPU:104, 29 CYC:11831
F9B1  30 07     BMI $F9BA                       A:55 X:55 Y:26 P:24 SP:F9 PPU:104, 35 CYC:11833
F9B3  70 05     BVS $F9BA                       A:55 X:55 Y:26 P:24 SP:F9 PPU:104, 41 CYC:11835
F9B5  C9 55     CMP #$55                        A:55 X:55 Y:26 P:24 SP:F9 PPU:104, 47 CYC:11837
F9B7  D0 01     BNE $F9BA                       A:55 X:55 Y:26 P:27 SP:F9 PPU:104, 53 CYC:11839
F9B9  60        RTS                             A:55 X:55 Y:26 P:27 SP:F9 PPU:104, 59 CYC:11841
DDE8  C8        INY                             A:55 X:55 Y:26 P:27 SP:FB PPU:104, 77 CYC:11847
DDE9  20 BD F9  JSR $F9BD                       A:55 X:55 Y:27 P:25 SP:FB PPU:104, 83 CYC:11849
F9BD  24 01     BIT $01 = FF                    A:55 X:55 Y:27 P:25 SP:F9 PPU:104,101 CYC:11855
F9BF  38        SEC                             A:55 X:55 Y:27 P:E5 SP:F9 PPU:104,110 CYC:11858
F9C0  A9 80     LDA #$80                        A:55 X:55 Y:27 P:E5 SP:F9 PPU:104,116 CYC:11860
F9C2  60        RTS                             A:80 X:55 Y:27 P:E5 SP:F9 PPU:104,122 CYC:11862
DDEC  95 00     STA $00,X @ 55 = 55             A:80 X:55 Y:27 P:E5 SP:FB PPU:104,140 CYC:11868
DDEE  16 00     ASL $00,X @ 55 = 80             A:80 X:55 Y:27 P:E5 SP:FB PPU:104,152 CYC:11872
DDF0  B5 00     LDA $00,X @ 55 = 00             A:80 X:55 Y:27 P:67 SP:FB PPU:104,170 CYC:11878
DDF2  20 C3 F9  JSR $F9C3                       A:00 X:55 Y:27 P:67 SP:FB PPU:104,182 CYC:11882
F9C3  90 1C     BCC $F9E1                       A:00 X:55 Y:27 P:67 SP:F9 PPU:104,200 CYC:11888
F9C5  D0 1A     BNE $F9E1                       A:00 X:55 Y:27 P:67 SP:F9 PPU:104,206 CYC:11890
F9C7  30 18     BMI $F9E1                       A:00 X:55 Y:27 P:67 SP:F9 PPU:104,212 CYC:11892
F9C9  50 16     BVC $F9E1                       A:00 X:55 Y:27 P:67 SP:F9 PPU:104,218 CYC:11894
F9CB  C9 00     CMP #$00                        A:00 X:55 Y:27 P:67 SP:F9 PPU:104,224 CYC:11896
F9CD  D0 12     BNE $F9E1                       A:00 X:55 Y:27 P:67 SP:F9 PPU:104,230 CYC:11898
F9CF  B8        CLV                             A:00 X:55 Y:27 P:67 SP:F9 PPU:104,236 CYC:11900
F9D0  A9 55     LDA #$55                        A:00 X:55 Y:27 P:27 SP:F9 PPU:104,242 CYC:11902
F9D2  38        SEC                             A:55 X:55 Y:27 P:25 SP:F9 PPU:104,248 CYC:11904
F9D3  60        RTS                             A:55 X:55 Y:27 P:25 SP:F9 PPU:104,254 CYC:11906
DDF5  C8        INY                             A:55 X:55 Y:27 P:25 SP:FB PPU:104,272 CYC:11912
DDF6  95 00     STA $00,X @ 55 = 00             A:55 X:55 Y:28 P:25 SP:FB PPU:104,278 CYC:11914
DDF8  16 00     ASL $00,X @ 55 = 55             A:55 X:55 Y:28 P:25 SP:FB PPU:104,290 CYC:11918
DDFA  B5 00     LDA $00,X @ 55 = AA             A:55 X:55 Y:28 P:A4 SP:FB PPU:104,308 CYC:11924
DDFC  20 D4 F9  JSR $F9D4                       A:AA X:55 Y:28 P:A4 SP:FB PPU:104,320 CYC:11928
F9D4  B0 0B     BCS $F9E1                       A:AA X:55 Y:28 P:A4 SP:F9 PPU:104,338 CYC:11934
F9D6  F0 09     BEQ $F9E1                       A:AA X:55 Y:28 P:A4 SP:F9 PPU:105,  3 CYC:11936
F9D8  10 07     BPL $F9E1                       A:AA X:55 Y:28 P:A4 SP:F9 PPU:105,  9 CYC:11938
F9DA  70 05     BVS $F9E1                       A:AA X:55 Y:28 P:A4 SP:F9 PPU:105, 15 CYC:11940
F9DC  C9 AA     CMP #$AA                        A:AA X:55 Y:28 P:A4 SP:F9 PPU:105, 21 CYC:11942
F9DE  D0 01     BNE $F9E1                       A:AA X:55 Y:28 P:27 SP:F9 PPU:105, 27 CYC:11944
F9E0  60        RTS                             A:AA X:55 Y:28 P:27 SP:F9 PPU:105, 33 CYC:11946
DDFF  C8        INY                             A:AA X:55 Y:28 P:27 SP:FB PPU:105, 51 CYC:11952
DE00  20 E4 F9  JSR $F9E4                       A:AA X:55 Y:29 P:25 SP:FB PPU:105, 57 CYC:11954
F9E4  24 01     BIT $01 = FF                    A:AA X:55 Y:29 P:25 SP:F9 PPU:105, 75 CYC:11960
F9E6  38        SEC                             A:AA X:55 Y:29 P:E5 SP:F9 PPU:105, 84 CYC:11963
F9E7  A9 01     LDA #$01                        A:AA X:55 Y:29 P:E5 SP:F9 PPU:105, 90 CYC:11965
F9E9  60        RTS                             A:01 X:55 Y:29 P:65 SP:F9 PPU:105, 96 CYC:11967
DE03  95 00     STA $00,X @ 55 = AA             A:01 X:55 Y:29 P:65 SP:FB PPU:105,114 CYC:11973
DE05  76 00     ROR $00,X @ 55 = 01             A:01 X:55 Y:29 P:65 SP:FB PPU:105,126 CYC:11977
DE07  B5 00     LDA $00,X @ 55 = 80             A:01 X:55 Y:29 P:E5 SP:FB PPU:105,144 CYC:11983
DE09  20 EA F9  JSR $F9EA                       A:80 X:55 Y:29 P:E5 SP:FB PPU:105,156 CYC:11987
F9EA  90 1C     BCC $FA08                       A:80 X:55 Y:29 P:E5 SP:F9 PPU:105,174 CYC:11993
F9EC  F0 1A     BEQ $FA08                       A:80 X:55 Y:29 P:E5 SP:F9 PPU:105,180 CYC:11995
F9EE  10 18     BPL $FA08                       A:80 X:55 Y:29 P:E5 SP:F9 PPU:105,186 CYC:11997
F9F0  50 16     BVC $FA08                       A:80 X:55 Y:29 P:E5 SP:F9 PPU:105,192 CYC:11999
F9F2  C9 80     CMP #$80                        A:80 X:55 Y:29 P:E5 SP:F9 PPU:105,198 CYC:12001
F9F4  D0 12     BNE $FA08                       A:80 X:55 Y:29 P:67 SP:F9 PPU:105,204 CYC:12003
F9F6  B8        CLV                             A:80 X:55 Y:29 P:67 SP:F9 PPU:105,210 CYC:12005
F9F7  18        CLC                             A:80 X:55 Y:29 P:27 SP:F9 PPU:105,216 CYC:12007
F9F8  A9 55     LDA #$55                        A:80 X:55 Y:29 P:26 SP:F9 PPU:105,222 CYC:12009
F9FA  60        RTS                             A:55 X:55 Y:29 P:24 SP:F9 PPU:105,228 CYC:12011
DE0C  C8        INY                             A:55 X:55 Y:29 P:24 SP:FB PPU:105,246 CYC:12017
DE0D  95 00     STA $00,X @ 55 = 80             A:55 X:55 Y:2A P:24 SP:FB PPU:105,252 CYC:12019
DE0F  76 00     ROR $00,X @ 55 = 55             A:55 X:55 Y:2A P:24 SP:FB PPU:105,264 CYC:12023
DE11  B5 00     LDA $00,X @ 55 = 2A             A:55 X:55 Y:2A P:25 SP:FB PPU:105,282 CYC:12029
DE13  20 FB F9  JSR $F9FB                       A:2A X:55 Y:2A P:25 SP:FB PPU:105,294 CYC:12033
F9FB  90 0B     BCC $FA08                       A:2A X:55 Y:2A P:25 SP:F9 PPU:105,312 CYC:12039
F9FD  F0 09     BEQ $FA08                       A:2A X:55 Y:2A P:25 SP:F9 PPU:105,318 CYC:12041
F9FF  30 07     BMI $FA08                       A:2A X:55 Y:2A P:25 SP:F9 PPU:105,324 CYC:12043
FA01  70 05     BVS $FA08                       A:2A X:55 Y:2A P:25 SP:F9 PPU:105,330 CYC:12045
FA03  C9 2A     CMP #$2A                        A:2A X:55 Y:2A P:25 SP:F9 PPU:105,336 CYC:12047
FA05  D0 01     BNE $FA08                       A:2A X:55 Y:2A P:27 SP:F9 PPU:106,  1 CYC:12049
FA07  60        RTS                             A:2A X:55 Y:2A P:27 SP:F9 PPU:106,  7 CYC:12051
DE16  C8        INY                             A:2A X:55 Y:2A P:27 SP:FB PPU:106, 25 CYC:12057
DE17  20 0A FA  JSR $FA0A                       A:2A X:55 Y:2B P:25 SP:FB PPU:106, 31 CYC:12059
FA0A  24 01     BIT $01 = FF                    A:2A X:55 Y:2B P:25 SP:F9 PPU:106, 49 CYC:12065
FA0C  38        SEC                             A:2A X:55 Y:2B P:E5 SP:F9 PPU:106, 58 CYC:12068
FA0D  A9 80     LDA #$80                        A:2A X:55 Y:2B P:E5 SP:F9 PPU:106, 64 CYC:12070
FA0F  60        RTS                             A:80 X:55 Y:2B P:E5 SP:F9 PPU:106, 70 CYC:12072
DE1A  95 00     STA $00,X @ 55 = 2A             A:80 X:55 Y:2B P:E5 SP:FB PPU:106, 88 CYC:12078
DE1C  36 00     ROL $00,X @ 55 = 80             A:80 X:55 Y:2B P:E5 SP:FB PPU:106,100 CYC:12082
DE1E  B5 00     LDA $00,X @ 55 = 01             A:80 X:55 Y:2B P:65 SP:FB PPU:106,118 CYC:12088
DE20  20 10 FA  JSR $FA10                       A:01 X:55 Y:2B P:65 SP:FB PPU:106,130 CYC:12092
FA10  90 1C     BCC $FA2E                       A:01 X:55 Y:2B P:65 SP:F9 PPU:106,148 CYC:12098
FA12  F0 1A     BEQ $FA2E                       A:01 X:55 Y:2B P:65 SP:F9 PPU:106,154 CYC:12100
FA14  30 18     BMI $FA2E                       A:01 X:55 Y:2B P:65 SP:F9 PPU:106,160 CYC:12102
FA16  50 16     BVC $FA2E                       A:01 X:55 Y:2B P:65 SP:F9 PPU:106,166 CYC:12104
FA18  C9 01     CMP #$01                        A:01 X:55 Y:2B P:65 SP:F9 PPU:106,172 CYC:12106
FA1A  D0 12     BNE $FA2E                       A:01 X:55 Y:2B P:67 SP:F9 PPU:106,178 CYC:12108
FA1C  B8        CLV                             A:01 X:55 Y:2B P:67 SP:F9 PPU:106,184 CYC:12110
FA1D  18        CLC                             A:01 X:55 Y:2B P:27 SP:F9 PPU:106,190 CYC:12112
FA1E  A9 55     LDA #$55                        A:01 X:55 Y:2B P:26 SP:F9 PPU:106,196 CYC:12114
FA20  60        RTS                             A:55 X:55 Y:2B P:24 SP:F9 PPU:106,202 CYC:12116
DE23  C8        INY                             A:55 X:55 Y:2B P:24 SP:FB PPU:106,220 CYC:12122
DE24  95 00     STA $00,X @ 55 = 01             A:55 X:55 Y:2C P:24 SP:FB PPU:106,226 CYC:12124
DE26  36 00     ROL $00,X @ 55 = 55             A:55 X:55 Y:2C P:24 SP:FB PPU:106,238 CYC:12128
DE28  B5 00     LDA $00,X @ 55 = AA             A:55 X:55 Y:2C P:A4 SP:FB PPU:106,256 CYC:12134
DE2A  20 21 FA  JSR $FA21                       A:AA X:55 Y:2C P:A4 SP:FB PPU:106,268 CYC:12138
FA21  B0 0B     BCS $FA2E                       A:AA X:55 Y:2C P:A4 SP:F9 PPU:106,286 CYC:12144
FA23  F0 09     BEQ $FA2E                       A:AA X:55 Y:2C P:A4 SP:F9 PPU:106,292 CYC:12146
FA25  10 07     BPL $FA2E                       A:AA X:55 Y:2C P:A4 SP:F9 PPU:106,298 CYC:12148
FA27  70 05     BVS $FA2E                       A:AA X:55 Y:2C P:A4 SP:F9 PPU:106,304 CYC:12150
FA29  C9 AA     CMP #$AA                        A:AA X:55 Y:2C P:A4 SP:F9 PPU:106,310 CYC:12152
FA2B  D0 01     BNE $FA2E                       A:AA X:55 Y:2C P:27 SP:F9 PPU:106,316 CYC:12154
FA2D  60        RTS                             A:AA X:55 Y:2C P:27 SP:F9 PPU:106,322 CYC:12156
DE2D  A9 FF     LDA #$FF                        A:AA X:55 Y:2C P:27 SP:FB PPU:106,340 CYC:12162
DE2F  95 00     STA $00,X @ 55 = AA             A:FF X:55 Y:2C P:A5 SP:FB PPU:107,  5 CYC:12164
DE31  85 01     STA $01 = FF                    A:FF X:55 Y:2C P:A5 SP:FB PPU:107, 17 CYC:12168
DE33  24 01     BIT $01 = FF                    A:FF X:55 Y:2C P:A5 SP:FB PPU:107, 26 CYC:12171
DE35  38        SEC                             A:FF X:55 Y:2C P:E5 SP:FB PPU:107, 35 CYC:12174
DE36  F6 00     INC $00,X @ 55 = FF             A:FF X:55 Y:2C P:E5 SP:FB PPU:107, 41 CYC:12176
DE38  D0 0C     BNE $DE46                       A:FF X:55 Y:2C P:67 SP:FB PPU:107, 59 CYC:12182
DE3A  30 0A     BMI $DE46                       A:FF X:55 Y:2C P:67 SP:FB PPU:107, 65 CYC:12184
DE3C  50 08     BVC $DE46                       A:FF X:55 Y:2C P:67 SP:FB PPU:107, 71 CYC:12186
DE3E  90 06     BCC $DE46                       A:FF X:55 Y:2C P:67 SP:FB PPU:107, 77 CYC:12188
DE40  B5 00     LDA $00,X @ 55 = 00             A:FF X:55 Y:2C P:67 SP:FB PPU:107, 83 CYC:12190
DE42  C9 00     CMP #$00                        A:00 X:55 Y:2C P:67 SP:FB PPU:107, 95 CYC:12194
DE44  F0 04     BEQ $DE4A                       A:00 X:55 Y:2C P:67 SP:FB PPU:107,101 CYC:12196
DE4A  A9 7F     LDA #$7F                        A:00 X:55 Y:2C P:67 SP:FB PPU:107,110 CYC:12199
DE4C  95 00     STA $00,X @ 55 = 00             A:7F X:55 Y:2C P:65 SP:FB PPU:107,116 CYC:12201
DE4E  B8        CLV                             A:7F X:55 Y:2C P:65 SP:FB PPU:107,128 CYC:12205
DE4F  18        CLC                             A:7F X:55 Y:2C P:25 SP:FB PPU:107,134 CYC:12207
DE50  F6 00     INC $00,X @ 55 = 7F             A:7F X:55 Y:2C P:24 SP:FB PPU:107,140 CYC:12209
DE52  F0 0C     BEQ $DE60                       A:7F X:55 Y:2C P:A4 SP:FB PPU:107,158 CYC:12215
DE54  10 0A     BPL $DE60                       A:7F X:55 Y:2C P:A4 SP:FB PPU:107,164 CYC:12217
DE56  70 08     BVS $DE60                       A:7F X:55 Y:2C P:A4 SP:FB PPU:107,170 CYC:12219
DE58  B0 06     BCS $DE60                       A:7F X:55 Y:2C P:A4 SP:FB PPU:107,176 CYC:12221
DE5A  B5 00     LDA $00,X @ 55 = 80             A:7F X:55 Y:2C P:A4 SP:FB PPU:107,182 CYC:12223
DE5C  C9 80     CMP #$80                        A:80 X:55 Y:2C P:A4 SP:FB PPU:107,194 CYC:12227
DE5E  F0 04     BEQ $DE64                       A:80 X:55 Y:2C P:27 SP:FB PPU:107,200 CYC:12229
DE64  A9 00     LDA #$00                        A:80 X:55 Y:2C P:27 SP:FB PPU:107,209 CYC:12232
DE66  95 00     STA $00,X @ 55 = 80             A:00 X:55 Y:2C P:27 SP:FB PPU:107,215 CYC:12234
DE68  24 01     BIT $01 = FF                    A:00 X:55 Y:2C P:27 SP:FB PPU:107,227 CYC:12238
DE6A  38        SEC                             A:00 X:55 Y:2C P:E7 SP:FB PPU:107,236 CYC:12241
DE6B  D6 00     DEC $00,X @ 55 = 00             A:00 X:55 Y:2C P:E7 SP:FB PPU:107,242 CYC:12243
DE6D  F0 0C     BEQ $DE7B                       A:00 X:55 Y:2C P:E5 SP:FB PPU:107,260 CYC:12249
DE6F  10 0A     BPL $DE7B                       A:00 X:55 Y:2C P:E5 SP:FB PPU:107,266 CYC:12251
DE71  50 08     BVC $DE7B                       A:00 X:55 Y:2C P:E5 SP:FB PPU:107,272 CYC:12253
DE73  90 06     BCC $DE7B                       A:00 X:55 Y:2C P:E5 SP:FB PPU:107,278 CYC:12255
DE75  B5 00     LDA $00,X @ 55 = FF             A:00 X:55 Y:2C P:E5 SP:FB PPU:107,284 CYC:12257
DE77  C9 FF     CMP #$FF                        A:FF X:55 Y:2C P:E5 SP:FB PPU:107,296 CYC:12261
DE79  F0 04     BEQ $DE7F                       A:FF X:55 Y:2C P:67 SP:FB PPU:107,302 CYC:12263
DE7F  A9 80     LDA #$80                        A:FF X:55 Y:2C P:67 SP:FB PPU:107,311 CYC:12266
DE81  95 00     STA $00,X @ 55 = FF             A:80 X:55 Y:2C P:E5 SP:FB PPU:107,317 CYC:12268
DE83  B8        CLV                             A:80 X:55 Y:2C P:E5 SP:FB PPU:107,329 CYC:12272
DE84  18        CLC                             A:80 X:55 Y:2C P:A5 SP:FB PPU:107,335 CYC:12274
DE85  D6 00     DEC $00,X @ 55 = 80             A:80 X:55 Y:2C P:A4 SP:FB PPU:108,  0 CYC:12276
DE87  F0 0C     BEQ $DE95                       A:80 X:55 Y:2C P:24 SP:FB PPU:108, 18 CYC:12282
DE89  30 0A     BMI $DE95                       A:80 X:55 Y:2C P:24 SP:FB PPU:108, 24 CYC:12284
DE8B  70 08     BVS $DE95                       A:80 X:55 Y:2C P:24 SP:FB PPU:108, 30 CYC:12286
DE8D  B0 06     BCS $DE95                       A:80 X:55 Y:2C P:24 SP:FB PPU:108, 36 CYC:12288
DE8F  B5 00     LDA $00,X @ 55 = 7F             A:80 X:55 Y:2C P:24 SP:FB PPU:108, 42 CYC:12290
DE91  C9 7F     CMP #$7F                        A:7F X:55 Y:2C P:24 SP:FB PPU:108, 54 CYC:12294
DE93  F0 04     BEQ $DE99                       A:7F X:55 Y:2C P:27 SP:FB PPU:108, 60 CYC:12296
DE99  A9 01     LDA #$01                        A:7F X:55 Y:2C P:27 SP:FB PPU:108, 69 CYC:12299
DE9B  95 00     STA $00,X @ 55 = 7F             A:01 X:55 Y:2C P:25 SP:FB PPU:108, 75 CYC:12301
DE9D  D6 00     DEC $00,X @ 55 = 01             A:01 X:55 Y:2C P:25 SP:FB PPU:108, 87 CYC:12305
DE9F  F0 04     BEQ $DEA5                       A:01 X:55 Y:2C P:27 SP:FB PPU:108,105 CYC:12311
DEA5  A9 33     LDA #$33                        A:01 X:55 Y:2C P:27 SP:FB PPU:108,114 CYC:12314
DEA7  85 78     STA $78 = 7F                    A:33 X:55 Y:2C P:25 SP:FB PPU:108,120 CYC:12316
DEA9  A9 44     LDA #$44                        A:33 X:55 Y:2C P:25 SP:FB PPU:108,129 CYC:12319
DEAB  A0 78     LDY #$78                        A:44 X:55 Y:2C P:25 SP:FB PPU:108,135 CYC:12321
DEAD  A2 00     LDX #$00                        A:44 X:55 Y:78 P:25 SP:FB PPU:108,141 CYC:12323
DEAF  38        SEC                             A:44 X:00 Y:78 P:27 SP:FB PPU:108,147 CYC:12325
DEB0  24 01     BIT $01 = FF                    A:44 X:00 Y:78 P:27 SP:FB PPU:108,153 CYC:12327
DEB2  B6 00     LDX $00,Y @ 78 = 33             A:44 X:00 Y:78 P:E5 SP:FB PPU:108,162 CYC:12330
DEB4  90 12     BCC $DEC8                       A:44 X:33 Y:78 P:65 SP:FB PPU:108,174 CYC:12334
DEB6  50 10     BVC $DEC8                       A:44 X:33 Y:78 P:65 SP:FB PPU:108,180 CYC:12336
DEB8  30 0E     BMI $DEC8                       A:44 X:33 Y:78 P:65 SP:FB PPU:108,186 CYC:12338
DEBA  F0 0C     BEQ $DEC8                       A:44 X:33 Y:78 P:65 SP:FB PPU:108,192 CYC:12340
DEBC  E0 33     CPX #$33                        A:44 X:33 Y:78 P:65 SP:FB PPU:108,198 CYC:12342
DEBE  D0 08     BNE $DEC8                       A:44 X:33 Y:78 P:67 SP:FB PPU:108,204 CYC:12344
DEC0  C0 78     CPY #$78                        A:44 X:33 Y:78 P:67 SP:FB PPU:108,210 CYC:12346
DEC2  D0 04     BNE $DEC8                       A:44 X:33 Y:78 P:67 SP:FB PPU:108,216 CYC:12348
DEC4  C9 44     CMP #$44                        A:44 X:33 Y:78 P:67 SP:FB PPU:108,222 CYC:12350
DEC6  F0 04     BEQ $DECC                       A:44 X:33 Y:78 P:67 SP:FB PPU:108,228 CYC:12352
DECC  A9 97     LDA #$97                        A:44 X:33 Y:78 P:67 SP:FB PPU:108,237 CYC:12355
DECE  85 7F     STA $7F = 00                    A:97 X:33 Y:78 P:E5 SP:FB PPU:108,243 CYC:12357
DED0  A9 47     LDA #$47                        A:97 X:33 Y:78 P:E5 SP:FB PPU:108,252 CYC:12360
DED2  A0 FF     LDY #$FF                        A:47 X:33 Y:78 P:65 SP:FB PPU:108,258 CYC:12362
DED4  A2 00     LDX #$00                        A:47 X:33 Y:FF P:E5 SP:FB PPU:108,264 CYC:12364
DED6  18        CLC                             A:47 X:00 Y:FF P:67 SP:FB PPU:108,270 CYC:12366
DED7  B8        CLV                             A:47 X:00 Y:FF P:66 SP:FB PPU:108,276 CYC:12368
DED8  B6 80     LDX $80,Y @ 7F = 97             A:47 X:00 Y:FF P:26 SP:FB PPU:108,282 CYC:12370
DEDA  B0 12     BCS $DEEE                       A:47 X:97 Y:FF P:A4 SP:FB PPU:108,294 CYC:12374
DEDC  70 10     BVS $DEEE                       A:47 X:97 Y:FF P:A4 SP:FB PPU:108,300 CYC:12376
DEDE  10 0E     BPL $DEEE                       A:47 X:97 Y:FF P:A4 SP:FB PPU:108,306 CYC:12378
DEE0  F0 0C     BEQ $DEEE                       A:47 X:97 Y:FF P:A4 SP:FB PPU:108,312 CYC:12380
DEE2  E0 97     CPX #$97                        A:47 X:97 Y:FF P:A4 SP:FB PPU:108,318 CYC:12382
DEE4  D0 08     BNE $DEEE                       A:47 X:97 Y:FF P:27 SP:FB PPU:108,324 CYC:12384
DEE6  C0 FF     CPY #$FF                        A:47 X:97 Y:FF P:27 SP:FB PPU:108,330 CYC:12386
DEE8  D0 04     BNE $DEEE                       A:47 X:97 Y:FF P:27 SP:FB PPU:108,336 CYC:12388
DEEA  C9 47     CMP #$47                        A:47 X:97 Y:FF P:27 SP:FB PPU:109,  1 CYC:12390
DEEC  F0 04     BEQ $DEF2                       A:47 X:97 Y:FF P:27 SP:FB PPU:109,  7 CYC:12392
DEF2  A9 00     LDA #$00                        A:47 X:97 Y:FF P:27 SP:FB PPU:109, 16 CYC:12395
DEF4  85 7F     STA $7F = 97                    A:00 X:97 Y:FF P:27 SP:FB PPU:109, 22 CYC:12397
DEF6  A9 47     LDA #$47                        A:00 X:97 Y:FF P:27 SP:FB PPU:109, 31 CYC:12400
DEF8  A0 FF     LDY #$FF                        A:47 X:97 Y:FF P:25 SP:FB PPU:109, 37 CYC:12402
DEFA  A2 69     LDX #$69                        A:47 X:97 Y:FF P:A5 SP:FB PPU:109, 43 CYC:12404
DEFC  18        CLC                             A:47 X:69 Y:FF P:25 SP:FB PPU:109, 49 CYC:12406
DEFD  B8        CLV                             A:47 X:69 Y:FF P:24 SP:FB PPU:109, 55 CYC:12408
DEFE  96 80     STX $80,Y @ 7F = 00             A:47 X:69 Y:FF P:24 SP:FB PPU:109, 61 CYC:12410
DF00  B0 18     BCS $DF1A                       A:47 X:69 Y:FF P:24 SP:FB PPU:109, 73 CYC:12414
DF02  70 16     BVS $DF1A                       A:47 X:69 Y:FF P:24 SP:FB PPU:109, 79 CYC:12416
DF04  30 14     BMI $DF1A                       A:47 X:69 Y:FF P:24 SP:FB PPU:109, 85 CYC:12418
DF06  F0 12     BEQ $DF1A                       A:47 X:69 Y:FF P:24 SP:FB PPU:109, 91 CYC:12420
DF08  E0 69     CPX #$69                        A:47 X:69 Y:FF P:24 SP:FB PPU:109, 97 CYC:12422
DF0A  D0 0E     BNE $DF1A                       A:47 X:69 Y:FF P:27 SP:FB PPU:109,103 CYC:12424
DF0C  C0 FF     CPY #$FF                        A:47 X:69 Y:FF P:27 SP:FB PPU:109,109 CYC:12426
DF0E  D0 0A     BNE $DF1A                       A:47 X:69 Y:FF P:27 SP:FB PPU:109,115 CYC:12428
DF10  C9 47     CMP #$47                        A:47 X:69 Y:FF P:27 SP:FB PPU:109,121 CYC:12430
DF12  D0 06     BNE $DF1A                       A:47 X:69 Y:FF P:27 SP:FB PPU:109,127 CYC:12432
DF14  A5 7F     LDA $7F = 69                    A:47 X:69 Y:FF P:27 SP:FB PPU:109,133 CYC:12434
DF16  C9 69     CMP #$69                        A:69 X:69 Y:FF P:25 SP:FB PPU:109,142 CYC:12437
DF18  F0 04     BEQ $DF1E                       A:69 X:69 Y:FF P:27 SP:FB PPU:109,148 CYC:12439
DF1E  A9 F5     LDA #$F5                        A:69 X:69 Y:FF P:27 SP:FB PPU:109,157 CYC:12442
DF20  85 4F     STA $4F = 00                    A:F5 X:69 Y:FF P:A5 SP:FB PPU:109,163 CYC:12444
DF22  A9 47     LDA #$47                        A:F5 X:69 Y:FF P:A5 SP:FB PPU:109,172 CYC:12447
DF24  A0 4F     LDY #$4F                        A:47 X:69 Y:FF P:25 SP:FB PPU:109,178 CYC:12449
DF26  24 01     BIT $01 = FF                    A:47 X:69 Y:4F P:25 SP:FB PPU:109,184 CYC:12451
DF28  A2 00     LDX #$00                        A:47 X:69 Y:4F P:E5 SP:FB PPU:109,193 CYC:12454
DF2A  38        SEC                             A:47 X:00 Y:4F P:67 SP:FB PPU:109,199 CYC:12456
DF2B  96 00     STX $00,Y @ 4F = F5             A:47 X:00 Y:4F P:67 SP:FB PPU:109,205 CYC:12458
DF2D  90 16     BCC $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,217 CYC:12462
DF2F  50 14     BVC $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,223 CYC:12464
DF31  30 12     BMI $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,229 CYC:12466
DF33  D0 10     BNE $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,235 CYC:12468
DF35  E0 00     CPX #$00                        A:47 X:00 Y:4F P:67 SP:FB PPU:109,241 CYC:12470
DF37  D0 0C     BNE $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,247 CYC:12472
DF39  C0 4F     CPY #$4F                        A:47 X:00 Y:4F P:67 SP:FB PPU:109,253 CYC:12474
DF3B  D0 08     BNE $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,259 CYC:12476
DF3D  C9 47     CMP #$47                        A:47 X:00 Y:4F P:67 SP:FB PPU:109,265 CYC:12478
DF3F  D0 04     BNE $DF45                       A:47 X:00 Y:4F P:67 SP:FB PPU:109,271 CYC:12480
DF41  A5 4F     LDA $4F = 00                    A:47 X:00 Y:4F P:67 SP:FB PPU:109,277 CYC:12482
DF43  F0 04     BEQ $DF49                       A:00 X:00 Y:4F P:67 SP:FB PPU:109,286 CYC:12485
DF49  60        RTS                             A:00 X:00 Y:4F P:67 SP:FB PPU:109,295 CYC:12488
C62C  20 AA E1  JSR $E1AA                       A:00 X:00 Y:4F P:67 SP:FD PPU:109,313 CYC:12494
E1AA  A9 FF     LDA #$FF                        A:00 X:00 Y:4F P:67 SP:FB PPU:109,331 CYC:12500
E1AC  85 01     STA $01 = FF                    A:FF X:00 Y:4F P:E5 SP:FB PPU:109,337 CYC:12502
E1AE  A9 AA     LDA #$AA                        A:FF X:00 Y:4F P:E5 SP:FB PPU:110,  5 CYC:12505
E1B0  8D 33 06  STA $0633 = 00                  A:AA X:00 Y:4F P:E5 SP:FB PPU:110, 11 CYC:12507
E1B3  A9 BB     LDA #$BB                        A:AA X:00 Y:4F P:E5 SP:FB PPU:110, 23 CYC:12511
E1B5  8D 89 06  STA $0689 = 00                  A:BB X:00 Y:4F P:E5 SP:FB PPU:110, 29 CYC:12513
E1B8  A2 00     LDX #$00                        A:BB X:00 Y:4F P:E5 SP:FB PPU:110, 41 CYC:12517
E1BA  A9 66     LDA #$66                        A:BB X:00 Y:4F P:67 SP:FB PPU:110, 47 CYC:12519
E1BC  24 01     BIT $01 = FF                    A:66 X:00 Y:4F P:65 SP:FB PPU:110, 53 CYC:12521
E1BE  38        SEC                             A:66 X:00 Y:4F P:E5 SP:FB PPU:110, 62 CYC:12524
E1BF  A0 00     LDY #$00                        A:66 X:00 Y:4F P:E5 SP:FB PPU:110, 68 CYC:12526
E1C1  BC 33 06  LDY $0633,X @ 0633 = AA         A:66 X:00 Y:00 P:67 SP:FB PPU:110, 74 CYC:12528
E1C4  10 12     BPL $E1D8                       A:66 X:00 Y:AA P:E5 SP:FB PPU:110, 86 CYC:12532
E1C6  F0 10     BEQ $E1D8                       A:66 X:00 Y:AA P:E5 SP:FB PPU:110, 92 CYC:12534
E1C8  50 0E     BVC $E1D8                       A:66 X:00 Y:AA P:E5 SP:FB PPU:110, 98 CYC:12536
E1CA  90 0C     BCC $E1D8                       A:66 X:00 Y:AA P:E5 SP:FB PPU:110,104 CYC:12538
E1CC  C9 66     CMP #$66                        A:66 X:00 Y:AA P:E5 SP:FB PPU:110,110 CYC:12540
E1CE  D0 08     BNE $E1D8                       A:66 X:00 Y:AA P:67 SP:FB PPU:110,116 CYC:12542
E1D0  E0 00     CPX #$00                        A:66 X:00 Y:AA P:67 SP:FB PPU:110,122 CYC:12544
E1D2  D0 04     BNE $E1D8                       A:66 X:00 Y:AA P:67 SP:FB PPU:110,128 CYC:12546
E1D4  C0 AA     CPY #$AA                        A:66 X:00 Y:AA P:67 SP:FB PPU:110,134 CYC:12548
E1D6  F0 04     BEQ $E1DC                       A:66 X:00 Y:AA P:67 SP:FB PPU:110,140 CYC:12550
E1DC  A2 8A     LDX #$8A                        A:66 X:00 Y:AA P:67 SP:FB PPU:110,149 CYC:12553
E1DE  A9 66     LDA #$66                        A:66 X:8A Y:AA P:E5 SP:FB PPU:110,155 CYC:12555
E1E0  B8        CLV                             A:66 X:8A Y:AA P:65 SP:FB PPU:110,161 CYC:12557
E1E1  18        CLC                             A:66 X:8A Y:AA P:25 SP:FB PPU:110,167 CYC:12559
E1E2  A0 00     LDY #$00                        A:66 X:8A Y:AA P:24 SP:FB PPU:110,173 CYC:12561
E1E4  BC FF 05  LDY $05FF,X @ 0689 = BB         A:66 X:8A Y:00 P:26 SP:FB PPU:110,179 CYC:12563
E1E7  10 12     BPL $E1FB                       A:66 X:8A Y:BB P:A4 SP:FB PPU:110,194 CYC:12568
E1E9  F0 10     BEQ $E1FB                       A:66 X:8A Y:BB P:A4 SP:FB PPU:110,200 CYC:12570
E1EB  70 0E     BVS $E1FB                       A:66 X:8A Y:BB P:A4 SP:FB PPU:110,206 CYC:12572
E1ED  B0 0C     BCS $E1FB                       A:66 X:8A Y:BB P:A4 SP:FB PPU:110,212 CYC:12574
E1EF  C0 BB     CPY #$BB                        A:66 X:8A Y:BB P:A4 SP:FB PPU:110,218 CYC:12576
E1F1  D0 08     BNE $E1FB                       A:66 X:8A Y:BB P:27 SP:FB PPU:110,224 CYC:12578
E1F3  C9 66     CMP #$66                        A:66 X:8A Y:BB P:27 SP:FB PPU:110,230 CYC:12580
E1F5  D0 04     BNE $E1FB                       A:66 X:8A Y:BB P:27 SP:FB PPU:110,236 CYC:12582
E1F7  E0 8A     CPX #$8A                        A:66 X:8A Y:BB P:27 SP:FB PPU:110,242 CYC:12584
E1F9  F0 04     BEQ $E1FF                       A:66 X:8A Y:BB P:27 SP:FB PPU:110,248 CYC:12586
E1FF  A0 53     LDY #$53                        A:66 X:8A Y:BB P:27 SP:FB PPU:110,257 CYC:12589
E201  A9 AA     LDA #$AA                        A:66 X:8A Y:53 P:25 SP:FB PPU:110,263 CYC:12591
E203  A2 78     LDX #$78                        A:AA X:8A Y:53 P:A5 SP:FB PPU:110,269 CYC:12593
E205  8D 78 06  STA $0678 = 00                  A:AA X:78 Y:53 P:25 SP:FB PPU:110,275 CYC:12595
E208  20 B6 F7  JSR $F7B6                       A:AA X:78 Y:53 P:25 SP:FB PPU:110,287 CYC:12599
F7B6  18        CLC                             A:AA X:78 Y:53 P:25 SP:F9 PPU:110,305 CYC:12605
F7B7  A9 FF     LDA #$FF                        A:AA X:78 Y:53 P:24 SP:F9 PPU:110,311 CYC:12607
F7B9  85 01     STA $01 = FF                    A:FF X:78 Y:53 P:A4 SP:F9 PPU:110,317 CYC:12609
F7BB  24 01     BIT $01 = FF                    A:FF X:78 Y:53 P:A4 SP:F9 PPU:110,326 CYC:12612
F7BD  A9 55     LDA #$55                        A:FF X:78 Y:53 P:E4 SP:F9 PPU:110,335 CYC:12615
F7BF  60        RTS                             A:55 X:78 Y:53 P:64 SP:F9 PPU:111,  0 CYC:12617
E20B  1D 00 06  ORA $0600,X @ 0678 = AA         A:55 X:78 Y:53 P:64 SP:FB PPU:111, 18 CYC:12623
E20E  20 C0 F7  JSR $F7C0                       A:FF X:78 Y:53 P:E4 SP:FB PPU:111, 30 CYC:12627
F7C0  B0 09     BCS $F7CB                       A:FF X:78 Y:53 P:E4 SP:F9 PPU:111, 48 CYC:12633
F7C2  10 07     BPL $F7CB                       A:FF X:78 Y:53 P:E4 SP:F9 PPU:111, 54 CYC:12635
F7C4  C9 FF     CMP #$FF                        A:FF X:78 Y:53 P:E4 SP:F9 PPU:111, 60 CYC:12637
F7C6  D0 03     BNE $F7CB                       A:FF X:78 Y:53 P:67 SP:F9 PPU:111, 66 CYC:12639
F7C8  50 01     BVC $F7CB                       A:FF X:78 Y:53 P:67 SP:F9 PPU:111, 72 CYC:12641
F7CA  60        RTS                             A:FF X:78 Y:53 P:67 SP:F9 PPU:111, 78 CYC:12643
E211  C8        INY                             A:FF X:78 Y:53 P:67 SP:FB PPU:111, 96 CYC:12649
E212  A9 00     LDA #$00                        A:FF X:78 Y:54 P:65 SP:FB PPU:111,102 CYC:12651
E214  8D 78 06  STA $0678 = AA                  A:00 X:78 Y:54 P:67 SP:FB PPU:111,108 CYC:12653
E217  20 CE F7  JSR $F7CE                       A:00 X:78 Y:54 P:67 SP:FB PPU:111,120 CYC:12657
F7CE  38        SEC                             A:00 X:78 Y:54 P:67 SP:F9 PPU:111,138 CYC:12663
F7CF  B8        CLV                             A:00 X:78 Y:54 P:67 SP:F9 PPU:111,144 CYC:12665
F7D0  A9 00     LDA #$00                        A:00 X:78 Y:54 P:27 SP:F9 PPU:111,150 CYC:12667
F7D2  60        RTS                             A:00 X:78 Y:54 P:27 SP:F9 PPU:111,156 CYC:12669
E21A  1D 00 06  ORA $0600,X @ 0678 = 00         A:00 X:78 Y:54 P:27 SP:FB PPU:111,174 CYC:12675
E21D  20 D3 F7  JSR $F7D3                       A:00 X:78 Y:54 P:27 SP:FB PPU:111,186 CYC:12679
F7D3  D0 07     BNE $F7DC                       A:00 X:78 Y:54 P:27 SP:F9 PPU:111,204 CYC:12685
F7D5  70 05     BVS $F7DC                       A:00 X:78 Y:54 P:27 SP:F9 PPU:111,210 CYC:12687
F7D7  90 03     BCC $F7DC                       A:00 X:78 Y:54 P:27 SP:F9 PPU:111,216 CYC:12689
F7D9  30 01     BMI $F7DC                       A:00 X:78 Y:54 P:27 SP:F9 PPU:111,222 CYC:12691
F7DB  60        RTS                             A:00 X:78 Y:54 P:27 SP:F9 PPU:111,228 CYC:12693
E220  C8        INY                             A:00 X:78 Y:54 P:27 SP:FB PPU:111,246 CYC:12699
E221  A9 AA     LDA #$AA                        A:00 X:78 Y:55 P:25 SP:FB PPU:111,252 CYC:12701
E223  8D 78 06  STA $0678 = 00                  A:AA X:78 Y:55 P:A5 SP:FB PPU:111,258 CYC:12703
E226  20 DF F7  JSR $F7DF                       A:AA X:78 Y:55 P:A5 SP:FB PPU:111,270 CYC:12707
F7DF  18        CLC                             A:AA X:78 Y:55 P:A5 SP:F9 PPU:111,288 CYC:12713
F7E0  24 01     BIT $01 = FF                    A:AA X:78 Y:55 P:A4 SP:F9 PPU:111,294 CYC:12715
F7E2  A9 55     LDA #$55                        A:AA X:78 Y:55 P:E4 SP:F9 PPU:111,303 CYC:12718
F7E4  60        RTS                             A:55 X:78 Y:55 P:64 SP:F9 PPU:111,309 CYC:12720
E229  3D 00 06  AND $0600,X @ 0678 = AA         A:55 X:78 Y:55 P:64 SP:FB PPU:111,327 CYC:12726
E22C  20 E5 F7  JSR $F7E5                       A:00 X:78 Y:55 P:66 SP:FB PPU:111,339 CYC:12730
F7E5  D0 07     BNE $F7EE                       A:00 X:78 Y:55 P:66 SP:F9 PPU:112, 16 CYC:12736
F7E7  50 05     BVC $F7EE                       A:00 X:78 Y:55 P:66 SP:F9 PPU:112, 22 CYC:12738
F7E9  B0 03     BCS $F7EE                       A:00 X:78 Y:55 P:66 SP:F9 PPU:112, 28 CYC:12740
F7EB  30 01     BMI $F7EE                       A:00 X:78 Y:55 P:66 SP:F9 PPU:112, 34 CYC:12742
F7ED  60        RTS                             A:00 X:78 Y:55 P:66 SP:F9 PPU:112, 40 CYC:12744
E22F  C8        INY                             A:00 X:78 Y:55 P:66 SP:FB PPU:112, 58 CYC:12750
E230  A9 EF     LDA #$EF                        A:00 X:78 Y:56 P:64 SP:FB PPU:112, 64 CYC:12752
E232  8D 78 06  STA $0678 = AA                  A:EF X:78 Y:56 P:E4 SP:FB PPU:112, 70 CYC:12754
E235  20 F1 F7  JSR $F7F1                       A:EF X:78 Y:56 P:E4 SP:FB PPU:112, 82 CYC:12758
F7F1  38        SEC                             A:EF X:78 Y:56 P:E4 SP:F9 PPU:112,100 CYC:12764
F7F2  B8        CLV                             A:EF X:78 Y:56 P:E5 SP:F9 PPU:112,106 CYC:12766
F7F3  A9 F8     LDA #$F8                        A:EF X:78 Y:56 P:A5 SP:F9 PPU:112,112 CYC:12768
F7F5  60        RTS                             A:F8 X:78 Y:56 P:A5 SP:F9 PPU:112,118 CYC:12770
E238  3D 00 06  AND $0600,X @ 0678 = EF         A:F8 X:78 Y:56 P:A5 SP:FB PPU:112,136 CYC:12776
E23B  20 F6 F7  JSR $F7F6                       A:E8 X:78 Y:56 P:A5 SP:FB PPU:112,148 CYC:12780
F7F6  90 09     BCC $F801                       A:E8 X:78 Y:56 P:A5 SP:F9 PPU:112,166 CYC:12786
F7F8  10 07     BPL $F801                       A:E8 X:78 Y:56 P:A5 SP:F9 PPU:112,172 CYC:12788
F7FA  C9 E8     CMP #$E8                        A:E8 X:78 Y:56 P:A5 SP:F9 PPU:112,178 CYC:12790
F7FC  D0 03     BNE $F801                       A:E8 X:78 Y:56 P:27 SP:F9 PPU:112,184 CYC:12792
F7FE  70 01     BVS $F801                       A:E8 X:78 Y:56 P:27 SP:F9 PPU:112,190 CYC:12794
F800  60        RTS                             A:E8 X:78 Y:56 P:27 SP:F9 PPU:112,196 CYC:12796
E23E  C8        INY                             A:E8 X:78 Y:56 P:27 SP:FB PPU:112,214 CYC:12802
E23F  A9 AA     LDA #$AA                        A:E8 X:78 Y:57 P:25 SP:FB PPU:112,220 CYC:12804
E241  8D 78 06  STA $0678 = EF                  A:AA X:78 Y:57 P:A5 SP:FB PPU:112,226 CYC:12806
E244  20 04 F8  JSR $F804                       A:AA X:78 Y:57 P:A5 SP:FB PPU:112,238 CYC:12810
F804  18        CLC                             A:AA X:78 Y:57 P:A5 SP:F9 PPU:112,256 CYC:12816
F805  24 01     BIT $01 = FF                    A:AA X:78 Y:57 P:A4 SP:F9 PPU:112,262 CYC:12818
F807  A9 5F     LDA #$5F                        A:AA X:78 Y:57 P:E4 SP:F9 PPU:112,271 CYC:12821
F809  60        RTS                             A:5F X:78 Y:57 P:64 SP:F9 PPU:112,277 CYC:12823
E247  5D 00 06  EOR $0600,X @ 0678 = AA         A:5F X:78 Y:57 P:64 SP:FB PPU:112,295 CYC:12829
E24A  20 0A F8  JSR $F80A                       A:F5 X:78 Y:57 P:E4 SP:FB PPU:112,307 CYC:12833
F80A  B0 09     BCS $F815                       A:F5 X:78 Y:57 P:E4 SP:F9 PPU:112,325 CYC:12839
F80C  10 07     BPL $F815                       A:F5 X:78 Y:57 P:E4 SP:F9 PPU:112,331 CYC:12841
F80E  C9 F5     CMP #$F5                        A:F5 X:78 Y:57 P:E4 SP:F9 PPU:112,337 CYC:12843
F810  D0 03     BNE $F815                       A:F5 X:78 Y:57 P:67 SP:F9 PPU:113,  2 CYC:12845
F812  50 01     BVC $F815                       A:F5 X:78 Y:57 P:67 SP:F9 PPU:113,  8 CYC:12847
F814  60        RTS                             A:F5 X:78 Y:57 P:67 SP:F9 PPU:113, 14 CYC:12849
E24D  C8        INY                             A:F5 X:78 Y:57 P:67 SP:FB PPU:113, 32 CYC:12855
E24E  A9 70     LDA #$70                        A:F5 X:78 Y:58 P:65 SP:FB PPU:113, 38 CYC:12857
E250  8D 78 06  STA $0678 = AA                  A:70 X:78 Y:58 P:65 SP:FB PPU:113, 44 CYC:12859
E253  20 18 F8  JSR $F818                       A:70 X:78 Y:58 P:65 SP:FB PPU:113, 56 CYC:12863
F818  38        SEC                             A:70 X:78 Y:58 P:65 SP:F9 PPU:113, 74 CYC:12869
F819  B8        CLV                             A:70 X:78 Y:58 P:65 SP:F9 PPU:113, 80 CYC:12871
F81A  A9 70     LDA #$70                        A:70 X:78 Y:58 P:25 SP:F9 PPU:113, 86 CYC:12873
F81C  60        RTS                             A:70 X:78 Y:58 P:25 SP:F9 PPU:113, 92 CYC:12875
E256  5D 00 06  EOR $0600,X @ 0678 = 70         A:70 X:78 Y:58 P:25 SP:FB PPU:113,110 CYC:12881
E259  20 1D F8  JSR $F81D                       A:00 X:78 Y:58 P:27 SP:FB PPU:113,122 CYC:12885
F81D  D0 07     BNE $F826                       A:00 X:78 Y:58 P:27 SP:F9 PPU:113,140 CYC:12891
F81F  70 05     BVS $F826                       A:00 X:78 Y:58 P:27 SP:F9 PPU:113,146 CYC:12893
F821  90 03     BCC $F826                       A:00 X:78 Y:58 P:27 SP:F9 PPU:113,152 CYC:12895
F823  30 01     BMI $F826                       A:00 X:78 Y:58 P:27 SP:F9 PPU:113,158 CYC:12897
F825  60        RTS                             A:00 X:78 Y:58 P:27 SP:F9 PPU:113,164 CYC:12899
E25C  C8        INY                             A:00 X:78 Y:58 P:27 SP:FB PPU:113,182 CYC:12905
E25D  A9 69     LDA #$69                        A:00 X:78 Y:59 P:25 SP:FB PPU:113,188 CYC:12907
E25F  8D 78 06  STA $0678 = 70                  A:69 X:78 Y:59 P:25 SP:FB PPU:113,194 CYC:12909
E262  20 29 F8  JSR $F829                       A:69 X:78 Y:59 P:25 SP:FB PPU:113,206 CYC:12913
F829  18        CLC                             A:69 X:78 Y:59 P:25 SP:F9 PPU:113,224 CYC:12919
F82A  24 01     BIT $01 = FF                    A:69 X:78 Y:59 P:24 SP:F9 PPU:113,230 CYC:12921
F82C  A9 00     LDA #$00                        A:69 X:78 Y:59 P:E4 SP:F9 PPU:113,239 CYC:12924
F82E  60        RTS                             A:00 X:78 Y:59 P:66 SP:F9 PPU:113,245 CYC:12926
E265  7D 00 06  ADC $0600,X @ 0678 = 69         A:00 X:78 Y:59 P:66 SP:FB PPU:113,263 CYC:12932
E268  20 2F F8  JSR $F82F                       A:69 X:78 Y:59 P:24 SP:FB PPU:113,275 CYC:12936
F82F  30 09     BMI $F83A                       A:69 X:78 Y:59 P:24 SP:F9 PPU:113,293 CYC:12942
F831  B0 07     BCS $F83A                       A:69 X:78 Y:59 P:24 SP:F9 PPU:113,299 CYC:12944
F833  C9 69     CMP #$69                        A:69 X:78 Y:59 P:24 SP:F9 PPU:113,305 CYC:12946
F835  D0 03     BNE $F83A                       A:69 X:78 Y:59 P:27 SP:F9 PPU:113,311 CYC:12948
F837  70 01     BVS $F83A                       A:69 X:78 Y:59 P:27 SP:F9 PPU:113,317 CYC:12950
F839  60        RTS                             A:69 X:78 Y:59 P:27 SP:F9 PPU:113,323 CYC:12952
E26B  C8        INY                             A:69 X:78 Y:59 P:27 SP:FB PPU:114,  0 CYC:12958
E26C  20 3D F8  JSR $F83D                       A:69 X:78 Y:5A P:25 SP:FB PPU:114,  6 CYC:12960
F83D  38        SEC                             A:69 X:78 Y:5A P:25 SP:F9 PPU:114, 24 CYC:12966
F83E  24 01     BIT $01 = FF                    A:69 X:78 Y:5A P:25 SP:F9 PPU:114, 30 CYC:12968
F840  A9 00     LDA #$00                        A:69 X:78 Y:5A P:E5 SP:F9 PPU:114, 39 CYC:12971
F842  60        RTS                             A:00 X:78 Y:5A P:67 SP:F9 PPU:114, 45 CYC:12973
E26F  7D 00 06  ADC $0600,X @ 0678 = 69         A:00 X:78 Y:5A P:67 SP:FB PPU:114, 63 CYC:12979
E272  20 43 F8  JSR $F843                       A:6A X:78 Y:5A P:24 SP:FB PPU:114, 75 CYC:12983
F843  30 09     BMI $F84E                       A:6A X:78 Y:5A P:24 SP:F9 PPU:114, 93 CYC:12989
F845  B0 07     BCS $F84E                       A:6A X:78 Y:5A P:24 SP:F9 PPU:114, 99 CYC:12991
F847  C9 6A     CMP #$6A                        A:6A X:78 Y:5A P:24 SP:F9 PPU:114,105 CYC:12993
F849  D0 03     BNE $F84E                       A:6A X:78 Y:5A P:27 SP:F9 PPU:114,111 CYC:12995
F84B  70 01     BVS $F84E                       A:6A X:78 Y:5A P:27 SP:F9 PPU:114,117 CYC:12997
F84D  60        RTS                             A:6A X:78 Y:5A P:27 SP:F9 PPU:114,123 CYC:12999
E275  C8        INY                             A:6A X:78 Y:5A P:27 SP:FB PPU:114,141 CYC:13005
E276  A9 7F     LDA #$7F                        A:6A X:78 Y:5B P:25 SP:FB PPU:114,147 CYC:13007
E278  8D 78 06  STA $0678 = 69                  A:7F X:78 Y:5B P:25 SP:FB PPU:114,153 CYC:13009
E27B  20 51 F8  JSR $F851                       A:7F X:78 Y:5B P:25 SP:FB PPU:114,165 CYC:13013
F851  38        SEC                             A:7F X:78 Y:5B P:25 SP:F9 PPU:114,183 CYC:13019
F852  B8        CLV                             A:7F X:78 Y:5B P:25 SP:F9 PPU:114,189 CYC:13021
F853  A9 7F     LDA #$7F                        A:7F X:78 Y:5B P:25 SP:F9 PPU:114,195 CYC:13023
F855  60        RTS                             A:7F X:78 Y:5B P:25 SP:F9 PPU:114,201 CYC:13025
E27E  7D 00 06  ADC $0600,X @ 0678 = 7F         A:7F X:78 Y:5B P:25 SP:FB PPU:114,219 CYC:13031
E281  20 56 F8  JSR $F856                       A:FF X:78 Y:5B P:E4 SP:FB PPU:114,231 CYC:13035
F856  10 09     BPL $F861                       A:FF X:78 Y:5B P:E4 SP:F9 PPU:114,249 CYC:13041
F858  B0 07     BCS $F861                       A:FF X:78 Y:5B P:E4 SP:F9 PPU:114,255 CYC:13043
F85A  C9 FF     CMP #$FF                        A:FF X:78 Y:5B P:E4 SP:F9 PPU:114,261 CYC:13045
F85C  D0 03     BNE $F861                       A:FF X:78 Y:5B P:67 SP:F9 PPU:114,267 CYC:13047
F85E  50 01     BVC $F861                       A:FF X:78 Y:5B P:67 SP:F9 PPU:114,273 CYC:13049
F860  60        RTS                             A:FF X:78 Y:5B P:67 SP:F9 PPU:114,279 CYC:13051
E284  C8        INY                             A:FF X:78 Y:5B P:67 SP:FB PPU:114,297 CYC:13057
E285  A9 80     LDA #$80                        A:FF X:78 Y:5C P:65 SP:FB PPU:114,303 CYC:13059
E287  8D 78 06  STA $0678 = 7F                  A:80 X:78 Y:5C P:E5 SP:FB PPU:114,309 CYC:13061
E28A  20 64 F8  JSR $F864                       A:80 X:78 Y:5C P:E5 SP:FB PPU:114,321 CYC:13065
F864  18        CLC                             A:80 X:78 Y:5C P:E5 SP:F9 PPU:114,339 CYC:13071
F865  24 01     BIT $01 = FF                    A:80 X:78 Y:5C P:E4 SP:F9 PPU:115,  4 CYC:13073
F867  A9 7F     LDA #$7F                        A:80 X:78 Y:5C P:E4 SP:F9 PPU:115, 13 CYC:13076
F869  60        RTS                             A:7F X:78 Y:5C P:64 SP:F9 PPU:115, 19 CYC:13078
E28D  7D 00 06  ADC $0600,X @ 0678 = 80         A:7F X:78 Y:5C P:64 SP:FB PPU:115, 37 CYC:13084
E290  20 6A F8  JSR $F86A                       A:FF X:78 Y:5C P:A4 SP:FB PPU:115, 49 CYC:13088
F86A  10 09     BPL $F875                       A:FF X:78 Y:5C P:A4 SP:F9 PPU:115, 67 CYC:13094
F86C  B0 07     BCS $F875                       A:FF X:78 Y:5C P:A4 SP:F9 PPU:115, 73 CYC:13096
F86E  C9 FF     CMP #$FF                        A:FF X:78 Y:5C P:A4 SP:F9 PPU:115, 79 CYC:13098
F870  D0 03     BNE $F875                       A:FF X:78 Y:5C P:27 SP:F9 PPU:115, 85 CYC:13100
F872  70 01     BVS $F875                       A:FF X:78 Y:5C P:27 SP:F9 PPU:115, 91 CYC:13102
F874  60        RTS                             A:FF X:78 Y:5C P:27 SP:F9 PPU:115, 97 CYC:13104
E293  C8        INY                             A:FF X:78 Y:5C P:27 SP:FB PPU:115,115 CYC:13110
E294  20 78 F8  JSR $F878                       A:FF X:78 Y:5D P:25 SP:FB PPU:115,121 CYC:13112
F878  38        SEC                             A:FF X:78 Y:5D P:25 SP:F9 PPU:115,139 CYC:13118
F879  B8        CLV                             A:FF X:78 Y:5D P:25 SP:F9 PPU:115,145 CYC:13120
F87A  A9 7F     LDA #$7F                        A:FF X:78 Y:5D P:25 SP:F9 PPU:115,151 CYC:13122
F87C  60        RTS                             A:7F X:78 Y:5D P:25 SP:F9 PPU:115,157 CYC:13124
E297  7D 00 06  ADC $0600,X @ 0678 = 80         A:7F X:78 Y:5D P:25 SP:FB PPU:115,175 CYC:13130
E29A  20 7D F8  JSR $F87D                       A:00 X:78 Y:5D P:27 SP:FB PPU:115,187 CYC:13134
F87D  D0 07     BNE $F886                       A:00 X:78 Y:5D P:27 SP:F9 PPU:115,205 CYC:13140
F87F  30 05     BMI $F886                       A:00 X:78 Y:5D P:27 SP:F9 PPU:115,211 CYC:13142
F881  70 03     BVS $F886                       A:00 X:78 Y:5D P:27 SP:F9 PPU:115,217 CYC:13144
F883  90 01     BCC $F886                       A:00 X:78 Y:5D P:27 SP:F9 PPU:115,223 CYC:13146
F885  60        RTS                             A:00 X:78 Y:5D P:27 SP:F9 PPU:115,229 CYC:13148
E29D  C8        INY                             A:00 X:78 Y:5D P:27 SP:FB PPU:115,247 CYC:13154
E29E  A9 40     LDA #$40                        A:00 X:78 Y:5E P:25 SP:FB PPU:115,253 CYC:13156
E2A0  8D 78 06  STA $0678 = 80                  A:40 X:78 Y:5E P:25 SP:FB PPU:115,259 CYC:13158
E2A3  20 89 F8  JSR $F889                       A:40 X:78 Y:5E P:25 SP:FB PPU:115,271 CYC:13162
F889  24 01     BIT $01 = FF                    A:40 X:78 Y:5E P:25 SP:F9 PPU:115,289 CYC:13168
F88B  A9 40     LDA #$40                        A:40 X:78 Y:5E P:E5 SP:F9 PPU:115,298 CYC:13171
F88D  60        RTS                             A:40 X:78 Y:5E P:65 SP:F9 PPU:115,304 CYC:13173
E2A6  DD 00 06  CMP $0600,X @ 0678 = 40         A:40 X:78 Y:5E P:65 SP:FB PPU:115,322 CYC:13179
E2A9  20 8E F8  JSR $F88E                       A:40 X:78 Y:5E P:67 SP:FB PPU:115,334 CYC:13183
F88E  30 07     BMI $F897                       A:40 X:78 Y:5E P:67 SP:F9 PPU:116, 11 CYC:13189
F890  90 05     BCC $F897                       A:40 X:78 Y:5E P:67 SP:F9 PPU:116, 17 CYC:13191
F892  D0 03     BNE $F897                       A:40 X:78 Y:5E P:67 SP:F9 PPU:116, 23 CYC:13193
F894  50 01     BVC $F897                       A:40 X:78 Y:5E P:67 SP:F9 PPU:116, 29 CYC:13195
F896  60        RTS                             A:40 X:78 Y:5E P:67 SP:F9 PPU:116, 35 CYC:13197
E2AC  C8        INY                             A:40 X:78 Y:5E P:67 SP:FB PPU:116, 53 CYC:13203
E2AD  48        PHA                             A:40 X:78 Y:5F P:65 SP:FB PPU:116, 59 CYC:13205
E2AE  A9 3F     LDA #$3F                        A:40 X:78 Y:5F P:65 SP:FA PPU:116, 68 CYC:13208
E2B0  8D 78 06  STA $0678 = 40                  A:3F X:78 Y:5F P:65 SP:FA PPU:116, 74 CYC:13210
E2B3  68        PLA                             A:3F X:78 Y:5F P:65 SP:FA PPU:116, 86 CYC:13214
E2B4  20 9A F8  JSR $F89A                       A:40 X:78 Y:5F P:65 SP:FB PPU:116, 98 CYC:13218
F89A  B8        CLV                             A:40 X:78 Y:5F P:65 SP:F9 PPU:116,116 CYC:13224
F89B  60        RTS                             A:40 X:78 Y:5F P:25 SP:F9 PPU:116,122 CYC:13226
E2B7  DD 00 06  CMP $0600,X @ 0678 = 3F         A:40 X:78 Y:5F P:25 SP:FB PPU:116,140 CYC:13232
E2BA  20 9C F8  JSR $F89C                       A:40 X:78 Y:5F P:25 SP:FB PPU:116,152 CYC:13236
F89C  F0 07     BEQ $F8A5                       A:40 X:78 Y:5F P:25 SP:F9 PPU:116,170 CYC:13242
F89E  30 05     BMI $F8A5                       A:40 X:78 Y:5F P:25 SP:F9 PPU:116,176 CYC:13244
F8A0  90 03     BCC $F8A5                       A:40 X:78 Y:5F P:25 SP:F9 PPU:116,182 CYC:13246
F8A2  70 01     BVS $F8A5                       A:40 X:78 Y:5F P:25 SP:F9 PPU:116,188 CYC:13248
F8A4  60        RTS                             A:40 X:78 Y:5F P:25 SP:F9 PPU:116,194 CYC:13250
E2BD  C8        INY                             A:40 X:78 Y:5F P:25 SP:FB PPU:116,212 CYC:13256
E2BE  48        PHA                             A:40 X:78 Y:60 P:25 SP:FB PPU:116,218 CYC:13258
E2BF  A9 41     LDA #$41                        A:40 X:78 Y:60 P:25 SP:FA PPU:116,227 CYC:13261
E2C1  8D 78 06  STA $0678 = 3F                  A:41 X:78 Y:60 P:25 SP:FA PPU:116,233 CYC:13263
E2C4  68        PLA                             A:41 X:78 Y:60 P:25 SP:FA PPU:116,245 CYC:13267
E2C5  DD 00 06  CMP $0600,X @ 0678 = 41         A:40 X:78 Y:60 P:25 SP:FB PPU:116,257 CYC:13271
E2C8  20 A8 F8  JSR $F8A8                       A:40 X:78 Y:60 P:A4 SP:FB PPU:116,269 CYC:13275
F8A8  F0 05     BEQ $F8AF                       A:40 X:78 Y:60 P:A4 SP:F9 PPU:116,287 CYC:13281
F8AA  10 03     BPL $F8AF                       A:40 X:78 Y:60 P:A4 SP:F9 PPU:116,293 CYC:13283
F8AC  10 01     BPL $F8AF                       A:40 X:78 Y:60 P:A4 SP:F9 PPU:116,299 CYC:13285
F8AE  60        RTS                             A:40 X:78 Y:60 P:A4 SP:F9 PPU:116,305 CYC:13287
E2CB  C8        INY                             A:40 X:78 Y:60 P:A4 SP:FB PPU:116,323 CYC:13293
E2CC  48        PHA                             A:40 X:78 Y:61 P:24 SP:FB PPU:116,329 CYC:13295
E2CD  A9 00     LDA #$00                        A:40 X:78 Y:61 P:24 SP:FA PPU:116,338 CYC:13298
E2CF  8D 78 06  STA $0678 = 41                  A:00 X:78 Y:61 P:26 SP:FA PPU:117,  3 CYC:13300
E2D2  68        PLA                             A:00 X:78 Y:61 P:26 SP:FA PPU:117, 15 CYC:13304
E2D3  20 B2 F8  JSR $F8B2                       A:40 X:78 Y:61 P:24 SP:FB PPU:117, 27 CYC:13308
F8B2  A9 80     LDA #$80                        A:40 X:78 Y:61 P:24 SP:F9 PPU:117, 45 CYC:13314
F8B4  60        RTS                             A:80 X:78 Y:61 P:A4 SP:F9 PPU:117, 51 CYC:13316
E2D6  DD 00 06  CMP $0600,X @ 0678 = 00         A:80 X:78 Y:61 P:A4 SP:FB PPU:117, 69 CYC:13322
E2D9  20 B5 F8  JSR $F8B5                       A:80 X:78 Y:61 P:A5 SP:FB PPU:117, 81 CYC:13326
F8B5  F0 05     BEQ $F8BC                       A:80 X:78 Y:61 P:A5 SP:F9 PPU:117, 99 CYC:13332
F8B7  10 03     BPL $F8BC                       A:80 X:78 Y:61 P:A5 SP:F9 PPU:117,105 CYC:13334
F8B9  90 01     BCC $F8BC                       A:80 X:78 Y:61 P:A5 SP:F9 PPU:117,111 CYC:13336
F8BB  60        RTS                             A:80 X:78 Y:61 P:A5 SP:F9 PPU:117,117 CYC:13338
E2DC  C8        INY                             A:80 X:78 Y:61 P:A5 SP:FB PPU:117,135 CYC:13344
E2DD  48        PHA                             A:80 X:78 Y:62 P:25 SP:FB PPU:117,141 CYC:13346
E2DE  A9 80     LDA #$80                        A:80 X:78 Y:62 P:25 SP:FA PPU:117,150 CYC:13349
E2E0  8D 78 06  STA $0678 = 00                  A:80 X:78 Y:62 P:A5 SP:FA PPU:117,156 CYC:13351
E2E3  68        PLA                             A:80 X:78 Y:62 P:A5 SP:FA PPU:117,168 CYC:13355
E2E4  DD 00 06  CMP $0600,X @ 0678 = 80         A:80 X:78 Y:62 P:A5 SP:FB PPU:117,180 CYC:13359
E2E7  20 BF F8  JSR $F8BF                       A:80 X:78 Y:62 P:27 SP:FB PPU:117,192 CYC:13363
F8BF  D0 05     BNE $F8C6                       A:80 X:78 Y:62 P:27 SP:F9 PPU:117,210 CYC:13369
F8C1  30 03     BMI $F8C6                       A:80 X:78 Y:62 P:27 SP:F9 PPU:117,216 CYC:13371
F8C3  90 01     BCC $F8C6                       A:80 X:78 Y:62 P:27 SP:F9 PPU:117,222 CYC:13373
F8C5  60        RTS                             A:80 X:78 Y:62 P:27 SP:F9 PPU:117,228 CYC:13375
E2EA  C8        INY                             A:80 X:78 Y:62 P:27 SP:FB PPU:117,246 CYC:13381
E2EB  48        PHA                             A:80 X:78 Y:63 P:25 SP:FB PPU:117,252 CYC:13383
E2EC  A9 81     LDA #$81                        A:80 X:78 Y:63 P:25 SP:FA PPU:117,261 CYC:13386
E2EE  8D 78 06  STA $0678 = 80                  A:81 X:78 Y:63 P:A5 SP:FA PPU:117,267 CYC:13388
E2F1  68        PLA                             A:81 X:78 Y:63 P:A5 SP:FA PPU:117,279 CYC:13392
E2F2  DD 00 06  CMP $0600,X @ 0678 = 81         A:80 X:78 Y:63 P:A5 SP:FB PPU:117,291 CYC:13396
E2F5  20 C9 F8  JSR $F8C9                       A:80 X:78 Y:63 P:A4 SP:FB PPU:117,303 CYC:13400
F8C9  B0 05     BCS $F8D0                       A:80 X:78 Y:63 P:A4 SP:F9 PPU:117,321 CYC:13406
F8CB  F0 03     BEQ $F8D0                       A:80 X:78 Y:63 P:A4 SP:F9 PPU:117,327 CYC:13408
F8CD  10 01     BPL $F8D0                       A:80 X:78 Y:63 P:A4 SP:F9 PPU:117,333 CYC:13410
F8CF  60        RTS                             A:80 X:78 Y:63 P:A4 SP:F9 PPU:117,339 CYC:13412
E2F8  C8        INY                             A:80 X:78 Y:63 P:A4 SP:FB PPU:118, 16 CYC:13418
E2F9  48        PHA                             A:80 X:78 Y:64 P:24 SP:FB PPU:118, 22 CYC:13420
E2FA  A9 7F     LDA #$7F                        A:80 X:78 Y:64 P:24 SP:FA PPU:118, 31 CYC:13423
E2FC  8D 78 06  STA $0678 = 81                  A:7F X:78 Y:64 P:24 SP:FA PPU:118, 37 CYC:13425
E2FF  68        PLA                             A:7F X:78 Y:64 P:24 SP:FA PPU:118, 49 CYC:13429
E300  DD 00 06  CMP $0600,X @ 0678 = 7F         A:80 X:78 Y:64 P:A4 SP:FB PPU:118, 61 CYC:13433
E303  20 D3 F8  JSR $F8D3                       A:80 X:78 Y:64 P:25 SP:FB PPU:118, 73 CYC:13437
F8D3  90 05     BCC $F8DA                       A:80 X:78 Y:64 P:25 SP:F9 PPU:118, 91 CYC:13443
F8D5  F0 03     BEQ $F8DA                       A:80 X:78 Y:64 P:25 SP:F9 PPU:118, 97 CYC:13445
F8D7  30 01     BMI $F8DA                       A:80 X:78 Y:64 P:25 SP:F9 PPU:118,103 CYC:13447
F8D9  60        RTS                             A:80 X:78 Y:64 P:25 SP:F9 PPU:118,109 CYC:13449
E306  C8        INY                             A:80 X:78 Y:64 P:25 SP:FB PPU:118,127 CYC:13455
E307  A9 40     LDA #$40                        A:80 X:78 Y:65 P:25 SP:FB PPU:118,133 CYC:13457
E309  8D 78 06  STA $0678 = 7F                  A:40 X:78 Y:65 P:25 SP:FB PPU:118,139 CYC:13459
E30C  20 31 F9  JSR $F931                       A:40 X:78 Y:65 P:25 SP:FB PPU:118,151 CYC:13463
F931  24 01     BIT $01 = FF                    A:40 X:78 Y:65 P:25 SP:F9 PPU:118,169 CYC:13469
F933  A9 40     LDA #$40                        A:40 X:78 Y:65 P:E5 SP:F9 PPU:118,178 CYC:13472
F935  38        SEC                             A:40 X:78 Y:65 P:65 SP:F9 PPU:118,184 CYC:13474
F936  60        RTS                             A:40 X:78 Y:65 P:65 SP:F9 PPU:118,190 CYC:13476
E30F  FD 00 06  SBC $0600,X @ 0678 = 40         A:40 X:78 Y:65 P:65 SP:FB PPU:118,208 CYC:13482
E312  20 37 F9  JSR $F937                       A:00 X:78 Y:65 P:27 SP:FB PPU:118,220 CYC:13486
F937  30 0B     BMI $F944                       A:00 X:78 Y:65 P:27 SP:F9 PPU:118,238 CYC:13492
F939  90 09     BCC $F944                       A:00 X:78 Y:65 P:27 SP:F9 PPU:118,244 CYC:13494
F93B  D0 07     BNE $F944                       A:00 X:78 Y:65 P:27 SP:F9 PPU:118,250 CYC:13496
F93D  70 05     BVS $F944                       A:00 X:78 Y:65 P:27 SP:F9 PPU:118,256 CYC:13498
F93F  C9 00     CMP #$00                        A:00 X:78 Y:65 P:27 SP:F9 PPU:118,262 CYC:13500
F941  D0 01     BNE $F944                       A:00 X:78 Y:65 P:27 SP:F9 PPU:118,268 CYC:13502
F943  60        RTS                             A:00 X:78 Y:65 P:27 SP:F9 PPU:118,274 CYC:13504
E315  C8        INY                             A:00 X:78 Y:65 P:27 SP:FB PPU:118,292 CYC:13510
E316  A9 3F     LDA #$3F                        A:00 X:78 Y:66 P:25 SP:FB PPU:118,298 CYC:13512
E318  8D 78 06  STA $0678 = 40                  A:3F X:78 Y:66 P:25 SP:FB PPU:118,304 CYC:13514
E31B  20 47 F9  JSR $F947                       A:3F X:78 Y:66 P:25 SP:FB PPU:118,316 CYC:13518
F947  B8        CLV                             A:3F X:78 Y:66 P:25 SP:F9 PPU:118,334 CYC:13524
F948  38        SEC                             A:3F X:78 Y:66 P:25 SP:F9 PPU:118,340 CYC:13526
F949  A9 40     LDA #$40                        A:3F X:78 Y:66 P:25 SP:F9 PPU:119,  5 CYC:13528
F94B  60        RTS                             A:40 X:78 Y:66 P:25 SP:F9 PPU:119, 11 CYC:13530
E31E  FD 00 06  SBC $0600,X @ 0678 = 3F         A:40 X:78 Y:66 P:25 SP:FB PPU:119, 29 CYC:13536
E321  20 4C F9  JSR $F94C                       A:01 X:78 Y:66 P:25 SP:FB PPU:119, 41 CYC:13540
F94C  F0 0B     BEQ $F959                       A:01 X:78 Y:66 P:25 SP:F9 PPU:119, 59 CYC:13546
F94E  30 09     BMI $F959                       A:01 X:78 Y:66 P:25 SP:F9 PPU:119, 65 CYC:13548
F950  90 07     BCC $F959                       A:01 X:78 Y:66 P:25 SP:F9 PPU:119, 71 CYC:13550
F952  70 05     BVS $F959                       A:01 X:78 Y:66 P:25 SP:F9 PPU:119, 77 CYC:13552
F954  C9 01     CMP #$01                        A:01 X:78 Y:66 P:25 SP:F9 PPU:119, 83 CYC:13554
F956  D0 01     BNE $F959                       A:01 X:78 Y:66 P:27 SP:F9 PPU:119, 89 CYC:13556
F958  60        RTS                             A:01 X:78 Y:66 P:27 SP:F9 PPU:119, 95 CYC:13558
E324  C8        INY                             A:01 X:78 Y:66 P:27 SP:FB PPU:119,113 CYC:13564
E325  A9 41     LDA #$41                        A:01 X:78 Y:67 P:25 SP:FB PPU:119,119 CYC:13566
E327  8D 78 06  STA $0678 = 3F                  A:41 X:78 Y:67 P:25 SP:FB PPU:119,125 CYC:13568
E32A  20 5C F9  JSR $F95C                       A:41 X:78 Y:67 P:25 SP:FB PPU:119,137 CYC:13572
F95C  A9 40     LDA #$40                        A:41 X:78 Y:67 P:25 SP:F9 PPU:119,155 CYC:13578
F95E  38        SEC                             A:40 X:78 Y:67 P:25 SP:F9 PPU:119,161 CYC:13580
F95F  24 01     BIT $01 = FF                    A:40 X:78 Y:67 P:25 SP:F9 PPU:119,167 CYC:13582
F961  60        RTS                             A:40 X:78 Y:67 P:E5 SP:F9 PPU:119,176 CYC:13585
E32D  FD 00 06  SBC $0600,X @ 0678 = 41         A:40 X:78 Y:67 P:E5 SP:FB PPU:119,194 CYC:13591
E330  20 62 F9  JSR $F962                       A:FF X:78 Y:67 P:A4 SP:FB PPU:119,206 CYC:13595
F962  B0 0B     BCS $F96F                       A:FF X:78 Y:67 P:A4 SP:F9 PPU:119,224 CYC:13601
F964  F0 09     BEQ $F96F                       A:FF X:78 Y:67 P:A4 SP:F9 PPU:119,230 CYC:13603
F966  10 07     BPL $F96F                       A:FF X:78 Y:67 P:A4 SP:F9 PPU:119,236 CYC:13605
F968  70 05     BVS $F96F                       A:FF X:78 Y:67 P:A4 SP:F9 PPU:119,242 CYC:13607
F96A  C9 FF     CMP #$FF                        A:FF X:78 Y:67 P:A4 SP:F9 PPU:119,248 CYC:13609
F96C  D0 01     BNE $F96F                       A:FF X:78 Y:67 P:27 SP:F9 PPU:119,254 CYC:13611
F96E  60        RTS                             A:FF X:78 Y:67 P:27 SP:F9 PPU:119,260 CYC:13613
E333  C8        INY                             A:FF X:78 Y:67 P:27 SP:FB PPU:119,278 CYC:13619
E334  A9 00     LDA #$00                        A:FF X:78 Y:68 P:25 SP:FB PPU:119,284 CYC:13621
E336  8D 78 06  STA $0678 = 41                  A:00 X:78 Y:68 P:27 SP:FB PPU:119,290 CYC:13623
E339  20 72 F9  JSR $F972                       A:00 X:78 Y:68 P:27 SP:FB PPU:119,302 CYC:13627
F972  18        CLC                             A:00 X:78 Y:68 P:27 SP:F9 PPU:119,320 CYC:13633
F973  A9 80     LDA #$80                        A:00 X:78 Y:68 P:26 SP:F9 PPU:119,326 CYC:13635
F975  60        RTS                             A:80 X:78 Y:68 P:A4 SP:F9 PPU:119,332 CYC:13637
E33C  FD 00 06  SBC $0600,X @ 0678 = 00         A:80 X:78 Y:68 P:A4 SP:FB PPU:120,  9 CYC:13643
E33F  20 76 F9  JSR $F976                       A:7F X:78 Y:68 P:65 SP:FB PPU:120, 21 CYC:13647
F976  90 05     BCC $F97D                       A:7F X:78 Y:68 P:65 SP:F9 PPU:120, 39 CYC:13653
F978  C9 7F     CMP #$7F                        A:7F X:78 Y:68 P:65 SP:F9 PPU:120, 45 CYC:13655
F97A  D0 01     BNE $F97D                       A:7F X:78 Y:68 P:67 SP:F9 PPU:120, 51 CYC:13657
F97C  60        RTS                             A:7F X:78 Y:68 P:67 SP:F9 PPU:120, 57 CYC:13659
E342  C8        INY                             A:7F X:78 Y:68 P:67 SP:FB PPU:120, 75 CYC:13665
E343  A9 7F     LDA #$7F                        A:7F X:78 Y:69 P:65 SP:FB PPU:120, 81 CYC:13667
E345  8D 78 06  STA $0678 = 00                  A:7F X:78 Y:69 P:65 SP:FB PPU:120, 87 CYC:13669
E348  20 80 F9  JSR $F980                       A:7F X:78 Y:69 P:65 SP:FB PPU:120, 99 CYC:13673
F980  38        SEC                             A:7F X:78 Y:69 P:65 SP:F9 PPU:120,117 CYC:13679
F981  A9 81     LDA #$81                        A:7F X:78 Y:69 P:65 SP:F9 PPU:120,123 CYC:13681
F983  60        RTS                             A:81 X:78 Y:69 P:E5 SP:F9 PPU:120,129 CYC:13683
E34B  FD 00 06  SBC $0600,X @ 0678 = 7F         A:81 X:78 Y:69 P:E5 SP:FB PPU:120,147 CYC:13689
E34E  20 84 F9  JSR $F984                       A:02 X:78 Y:69 P:65 SP:FB PPU:120,159 CYC:13693
F984  50 07     BVC $F98D                       A:02 X:78 Y:69 P:65 SP:F9 PPU:120,177 CYC:13699
F986  90 05     BCC $F98D                       A:02 X:78 Y:69 P:65 SP:F9 PPU:120,183 CYC:13701
F988  C9 02     CMP #$02                        A:02 X:78 Y:69 P:65 SP:F9 PPU:120,189 CYC:13703
F98A  D0 01     BNE $F98D                       A:02 X:78 Y:69 P:67 SP:F9 PPU:120,195 CYC:13705
F98C  60        RTS                             A:02 X:78 Y:69 P:67 SP:F9 PPU:120,201 CYC:13707
E351  A9 AA     LDA #$AA                        A:02 X:78 Y:69 P:67 SP:FB PPU:120,219 CYC:13713
E353  8D 33 06  STA $0633 = AA                  A:AA X:78 Y:69 P:E5 SP:FB PPU:120,225 CYC:13715
E356  A9 BB     LDA #$BB                        A:AA X:78 Y:69 P:E5 SP:FB PPU:120,237 CYC:13719
E358  8D 89 06  STA $0689 = BB                  A:BB X:78 Y:69 P:E5 SP:FB PPU:120,243 CYC:13721
E35B  A2 00     LDX #$00                        A:BB X:78 Y:69 P:E5 SP:FB PPU:120,255 CYC:13725
E35D  A0 66     LDY #$66                        A:BB X:00 Y:69 P:67 SP:FB PPU:120,261 CYC:13727
E35F  24 01     BIT $01 = FF                    A:BB X:00 Y:66 P:65 SP:FB PPU:120,267 CYC:13729
E361  38        SEC                             A:BB X:00 Y:66 P:E5 SP:FB PPU:120,276 CYC:13732
E362  A9 00     LDA #$00                        A:BB X:00 Y:66 P:E5 SP:FB PPU:120,282 CYC:13734
E364  BD 33 06  LDA $0633,X @ 0633 = AA         A:00 X:00 Y:66 P:67 SP:FB PPU:120,288 CYC:13736
E367  10 12     BPL $E37B                       A:AA X:00 Y:66 P:E5 SP:FB PPU:120,300 CYC:13740
E369  F0 10     BEQ $E37B                       A:AA X:00 Y:66 P:E5 SP:FB PPU:120,306 CYC:13742
E36B  50 0E     BVC $E37B                       A:AA X:00 Y:66 P:E5 SP:FB PPU:120,312 CYC:13744
E36D  90 0C     BCC $E37B                       A:AA X:00 Y:66 P:E5 SP:FB PPU:120,318 CYC:13746
E36F  C0 66     CPY #$66                        A:AA X:00 Y:66 P:E5 SP:FB PPU:120,324 CYC:13748
E371  D0 08     BNE $E37B                       A:AA X:00 Y:66 P:67 SP:FB PPU:120,330 CYC:13750
E373  E0 00     CPX #$00                        A:AA X:00 Y:66 P:67 SP:FB PPU:120,336 CYC:13752
E375  D0 04     BNE $E37B                       A:AA X:00 Y:66 P:67 SP:FB PPU:121,  1 CYC:13754
E377  C9 AA     CMP #$AA                        A:AA X:00 Y:66 P:67 SP:FB PPU:121,  7 CYC:13756
E379  F0 04     BEQ $E37F                       A:AA X:00 Y:66 P:67 SP:FB PPU:121, 13 CYC:13758
E37F  A2 8A     LDX #$8A                        A:AA X:00 Y:66 P:67 SP:FB PPU:121, 22 CYC:13761
E381  A0 66     LDY #$66                        A:AA X:8A Y:66 P:E5 SP:FB PPU:121, 28 CYC:13763
E383  B8        CLV                             A:AA X:8A Y:66 P:65 SP:FB PPU:121, 34 CYC:13765
E384  18        CLC                             A:AA X:8A Y:66 P:25 SP:FB PPU:121, 40 CYC:13767
E385  A9 00     LDA #$00                        A:AA X:8A Y:66 P:24 SP:FB PPU:121, 46 CYC:13769
E387  BD FF 05  LDA $05FF,X @ 0689 = BB         A:00 X:8A Y:66 P:26 SP:FB PPU:121, 52 CYC:13771
E38A  10 12     BPL $E39E                       A:BB X:8A Y:66 P:A4 SP:FB PPU:121, 67 CYC:13776
E38C  F0 10     BEQ $E39E                       A:BB X:8A Y:66 P:A4 SP:FB PPU:121, 73 CYC:13778
E38E  70 0E     BVS $E39E                       A:BB X:8A Y:66 P:A4 SP:FB PPU:121, 79 CYC:13780
E390  B0 0C     BCS $E39E                       A:BB X:8A Y:66 P:A4 SP:FB PPU:121, 85 CYC:13782
E392  C9 BB     CMP #$BB                        A:BB X:8A Y:66 P:A4 SP:FB PPU:121, 91 CYC:13784
E394  D0 08     BNE $E39E                       A:BB X:8A Y:66 P:27 SP:FB PPU:121, 97 CYC:13786
E396  C0 66     CPY #$66                        A:BB X:8A Y:66 P:27 SP:FB PPU:121,103 CYC:13788
E398  D0 04     BNE $E39E                       A:BB X:8A Y:66 P:27 SP:FB PPU:121,109 CYC:13790
E39A  E0 8A     CPX #$8A                        A:BB X:8A Y:66 P:27 SP:FB PPU:121,115 CYC:13792
E39C  F0 04     BEQ $E3A2                       A:BB X:8A Y:66 P:27 SP:FB PPU:121,121 CYC:13794
E3A2  24 01     BIT $01 = FF                    A:BB X:8A Y:66 P:27 SP:FB PPU:121,130 CYC:13797
E3A4  38        SEC                             A:BB X:8A Y:66 P:E5 SP:FB PPU:121,139 CYC:13800
E3A5  A9 44     LDA #$44                        A:BB X:8A Y:66 P:E5 SP:FB PPU:121,145 CYC:13802
E3A7  A2 00     LDX #$00                        A:44 X:8A Y:66 P:65 SP:FB PPU:121,151 CYC:13804
E3A9  9D 33 06  STA $0633,X @ 0633 = AA         A:44 X:00 Y:66 P:67 SP:FB PPU:121,157 CYC:13806
E3AC  AD 33 06  LDA $0633 = 44                  A:44 X:00 Y:66 P:67 SP:FB PPU:121,172 CYC:13811
E3AF  90 1A     BCC $E3CB                       A:44 X:00 Y:66 P:65 SP:FB PPU:121,184 CYC:13815
E3B1  C9 44     CMP #$44                        A:44 X:00 Y:66 P:65 SP:FB PPU:121,190 CYC:13817
E3B3  D0 16     BNE $E3CB                       A:44 X:00 Y:66 P:67 SP:FB PPU:121,196 CYC:13819
E3B5  50 14     BVC $E3CB                       A:44 X:00 Y:66 P:67 SP:FB PPU:121,202 CYC:13821
E3B7  18        CLC                             A:44 X:00 Y:66 P:67 SP:FB PPU:121,208 CYC:13823
E3B8  B8        CLV                             A:44 X:00 Y:66 P:66 SP:FB PPU:121,214 CYC:13825
E3B9  A9 99     LDA #$99                        A:44 X:00 Y:66 P:26 SP:FB PPU:121,220 CYC:13827
E3BB  A2 80     LDX #$80                        A:99 X:00 Y:66 P:A4 SP:FB PPU:121,226 CYC:13829
E3BD  9D 85 05  STA $0585,X @ 0605 = 00         A:99 X:80 Y:66 P:A4 SP:FB PPU:121,232 CYC:13831
E3C0  AD 05 06  LDA $0605 = 99                  A:99 X:80 Y:66 P:A4 SP:FB PPU:121,247 CYC:13836
E3C3  B0 06     BCS $E3CB                       A:99 X:80 Y:66 P:A4 SP:FB PPU:121,259 CYC:13840
E3C5  C9 99     CMP #$99                        A:99 X:80 Y:66 P:A4 SP:FB PPU:121,265 CYC:13842
E3C7  D0 02     BNE $E3CB                       A:99 X:80 Y:66 P:27 SP:FB PPU:121,271 CYC:13844
E3C9  50 04     BVC $E3CF                       A:99 X:80 Y:66 P:27 SP:FB PPU:121,277 CYC:13846
E3CF  A0 6D     LDY #$6D                        A:99 X:80 Y:66 P:27 SP:FB PPU:121,286 CYC:13849
E3D1  A2 6D     LDX #$6D                        A:99 X:80 Y:6D P:25 SP:FB PPU:121,292 CYC:13851
E3D3  20 90 F9  JSR $F990                       A:99 X:6D Y:6D P:25 SP:FB PPU:121,298 CYC:13853
F990  A2 55     LDX #$55                        A:99 X:6D Y:6D P:25 SP:F9 PPU:121,316 CYC:13859
F992  A9 FF     LDA #$FF                        A:99 X:55 Y:6D P:25 SP:F9 PPU:121,322 CYC:13861
F994  85 01     STA $01 = FF                    A:FF X:55 Y:6D P:A5 SP:F9 PPU:121,328 CYC:13863
F996  EA        NOP                             A:FF X:55 Y:6D P:A5 SP:F9 PPU:121,337 CYC:13866
F997  24 01     BIT $01 = FF                    A:FF X:55 Y:6D P:A5 SP:F9 PPU:122,  2 CYC:13868
F999  38        SEC                             A:FF X:55 Y:6D P:E5 SP:F9 PPU:122, 11 CYC:13871
F99A  A9 01     LDA #$01                        A:FF X:55 Y:6D P:E5 SP:F9 PPU:122, 17 CYC:13873
F99C  60        RTS                             A:01 X:55 Y:6D P:65 SP:F9 PPU:122, 23 CYC:13875
E3D6  9D 00 06  STA $0600,X @ 0655 = 00         A:01 X:55 Y:6D P:65 SP:FB PPU:122, 41 CYC:13881
E3D9  5E 00 06  LSR $0600,X @ 0655 = 01         A:01 X:55 Y:6D P:65 SP:FB PPU:122, 56 CYC:13886
E3DC  BD 00 06  LDA $0600,X @ 0655 = 00         A:01 X:55 Y:6D P:67 SP:FB PPU:122, 77 CYC:13893
E3DF  20 9D F9  JSR $F99D                       A:00 X:55 Y:6D P:67 SP:FB PPU:122, 89 CYC:13897
F99D  90 1B     BCC $F9BA                       A:00 X:55 Y:6D P:67 SP:F9 PPU:122,107 CYC:13903
F99F  D0 19     BNE $F9BA                       A:00 X:55 Y:6D P:67 SP:F9 PPU:122,113 CYC:13905
F9A1  30 17     BMI $F9BA                       A:00 X:55 Y:6D P:67 SP:F9 PPU:122,119 CYC:13907
F9A3  50 15     BVC $F9BA                       A:00 X:55 Y:6D P:67 SP:F9 PPU:122,125 CYC:13909
F9A5  C9 00     CMP #$00                        A:00 X:55 Y:6D P:67 SP:F9 PPU:122,131 CYC:13911
F9A7  D0 11     BNE $F9BA                       A:00 X:55 Y:6D P:67 SP:F9 PPU:122,137 CYC:13913
F9A9  B8        CLV                             A:00 X:55 Y:6D P:67 SP:F9 PPU:122,143 CYC:13915
F9AA  A9 AA     LDA #$AA                        A:00 X:55 Y:6D P:27 SP:F9 PPU:122,149 CYC:13917
F9AC  60        RTS                             A:AA X:55 Y:6D P:A5 SP:F9 PPU:122,155 CYC:13919
E3E2  C8        INY                             A:AA X:55 Y:6D P:A5 SP:FB PPU:122,173 CYC:13925
E3E3  9D 00 06  STA $0600,X @ 0655 = 00         A:AA X:55 Y:6E P:25 SP:FB PPU:122,179 CYC:13927
E3E6  5E 00 06  LSR $0600,X @ 0655 = AA         A:AA X:55 Y:6E P:25 SP:FB PPU:122,194 CYC:13932
E3E9  BD 00 06  LDA $0600,X @ 0655 = 55         A:AA X:55 Y:6E P:24 SP:FB PPU:122,215 CYC:13939
E3EC  20 AD F9  JSR $F9AD                       A:55 X:55 Y:6E P:24 SP:FB PPU:122,227 CYC:13943
F9AD  B0 0B     BCS $F9BA                       A:55 X:55 Y:6E P:24 SP:F9 PPU:122,245 CYC:13949
F9AF  F0 09     BEQ $F9BA                       A:55 X:55 Y:6E P:24 SP:F9 PPU:122,251 CYC:13951
F9B1  30 07     BMI $F9BA                       A:55 X:55 Y:6E P:24 SP:F9 PPU:122,257 CYC:13953
F9B3  70 05     BVS $F9BA                       A:55 X:55 Y:6E P:24 SP:F9 PPU:122,263 CYC:13955
F9B5  C9 55     CMP #$55                        A:55 X:55 Y:6E P:24 SP:F9 PPU:122,269 CYC:13957
F9B7  D0 01     BNE $F9BA                       A:55 X:55 Y:6E P:27 SP:F9 PPU:122,275 CYC:13959
F9B9  60        RTS                             A:55 X:55 Y:6E P:27 SP:F9 PPU:122,281 CYC:13961
E3EF  C8        INY                             A:55 X:55 Y:6E P:27 SP:FB PPU:122,299 CYC:13967
E3F0  20 BD F9  JSR $F9BD                       A:55 X:55 Y:6F P:25 SP:FB PPU:122,305 CYC:13969
F9BD  24 01     BIT $01 = FF                    A:55 X:55 Y:6F P:25 SP:F9 PPU:122,323 CYC:13975
F9BF  38        SEC                             A:55 X:55 Y:6F P:E5 SP:F9 PPU:122,332 CYC:13978
F9C0  A9 80     LDA #$80                        A:55 X:55 Y:6F P:E5 SP:F9 PPU:122,338 CYC:13980
F9C2  60        RTS                             A:80 X:55 Y:6F P:E5 SP:F9 PPU:123,  3 CYC:13982
E3F3  9D 00 06  STA $0600,X @ 0655 = 55         A:80 X:55 Y:6F P:E5 SP:FB PPU:123, 21 CYC:13988
E3F6  1E 00 06  ASL $0600,X @ 0655 = 80         A:80 X:55 Y:6F P:E5 SP:FB PPU:123, 36 CYC:13993
E3F9  BD 00 06  LDA $0600,X @ 0655 = 00         A:80 X:55 Y:6F P:67 SP:FB PPU:123, 57 CYC:14000
E3FC  20 C3 F9  JSR $F9C3                       A:00 X:55 Y:6F P:67 SP:FB PPU:123, 69 CYC:14004
F9C3  90 1C     BCC $F9E1                       A:00 X:55 Y:6F P:67 SP:F9 PPU:123, 87 CYC:14010
F9C5  D0 1A     BNE $F9E1                       A:00 X:55 Y:6F P:67 SP:F9 PPU:123, 93 CYC:14012
F9C7  30 18     BMI $F9E1                       A:00 X:55 Y:6F P:67 SP:F9 PPU:123, 99 CYC:14014
F9C9  50 16     BVC $F9E1                       A:00 X:55 Y:6F P:67 SP:F9 PPU:123,105 CYC:14016
F9CB  C9 00     CMP #$00                        A:00 X:55 Y:6F P:67 SP:F9 PPU:123,111 CYC:14018
F9CD  D0 12     BNE $F9E1                       A:00 X:55 Y:6F P:67 SP:F9 PPU:123,117 CYC:14020
F9CF  B8        CLV                             A:00 X:55 Y:6F P:67 SP:F9 PPU:123,123 CYC:14022
F9D0  A9 55     LDA #$55                        A:00 X:55 Y:6F P:27 SP:F9 PPU:123,129 CYC:14024
F9D2  38        SEC                             A:55 X:55 Y:6F P:25 SP:F9 PPU:123,135 CYC:14026
F9D3  60        RTS                             A:55 X:55 Y:6F P:25 SP:F9 PPU:123,141 CYC:14028
E3FF  C8        INY                             A:55 X:55 Y:6F P:25 SP:FB PPU:123,159 CYC:14034
E400  9D 00 06  STA $0600,X @ 0655 = 00         A:55 X:55 Y:70 P:25 SP:FB PPU:123,165 CYC:14036
E403  1E 00 06  ASL $0600,X @ 0655 = 55         A:55 X:55 Y:70 P:25 SP:FB PPU:123,180 CYC:14041
E406  BD 00 06  LDA $0600,X @ 0655 = AA         A:55 X:55 Y:70 P:A4 SP:FB PPU:123,201 CYC:14048
E409  20 D4 F9  JSR $F9D4                       A:AA X:55 Y:70 P:A4 SP:FB PPU:123,213 CYC:14052
F9D4  B0 0B     BCS $F9E1                       A:AA X:55 Y:70 P:A4 SP:F9 PPU:123,231 CYC:14058
F9D6  F0 09     BEQ $F9E1                       A:AA X:55 Y:70 P:A4 SP:F9 PPU:123,237 CYC:14060
F9D8  10 07     BPL $F9E1                       A:AA X:55 Y:70 P:A4 SP:F9 PPU:123,243 CYC:14062
F9DA  70 05     BVS $F9E1                       A:AA X:55 Y:70 P:A4 SP:F9 PPU:123,249 CYC:14064
F9DC  C9 AA     CMP #$AA                        A:AA X:55 Y:70 P:A4 SP:F9 PPU:123,255 CYC:14066
F9DE  D0 01     BNE $F9E1                       A:AA X:55 Y:70 P:27 SP:F9 PPU:123,261 CYC:14068
F9E0  60        RTS                             A:AA X:55 Y:70 P:27 SP:F9 PPU:123,267 CYC:14070
E40C  C8        INY                             A:AA X:55 Y:70 P:27 SP:FB PPU:123,285 CYC:14076
E40D  20 E4 F9  JSR $F9E4                       A:AA X:55 Y:71 P:25 SP:FB PPU:123,291 CYC:14078
F9E4  24 01     BIT $01 = FF                    A:AA X:55 Y:71 P:25 SP:F9 PPU:123,309 CYC:14084
F9E6  38        SEC                             A:AA X:55 Y:71 P:E5 SP:F9 PPU:123,318 CYC:14087
F9E7  A9 01     LDA #$01                        A:AA X:55 Y:71 P:E5 SP:F9 PPU:123,324 CYC:14089
F9E9  60        RTS                             A:01 X:55 Y:71 P:65 SP:F9 PPU:123,330 CYC:14091
E410  9D 00 06  STA $0600,X @ 0655 = AA         A:01 X:55 Y:71 P:65 SP:FB PPU:124,  7 CYC:14097
E413  7E 00 06  ROR $0600,X @ 0655 = 01         A:01 X:55 Y:71 P:65 SP:FB PPU:124, 22 CYC:14102
E416  BD 00 06  LDA $0600,X @ 0655 = 80         A:01 X:55 Y:71 P:E5 SP:FB PPU:124, 43 CYC:14109
E419  20 EA F9  JSR $F9EA                       A:80 X:55 Y:71 P:E5 SP:FB PPU:124, 55 CYC:14113
F9EA  90 1C     BCC $FA08                       A:80 X:55 Y:71 P:E5 SP:F9 PPU:124, 73 CYC:14119
F9EC  F0 1A     BEQ $FA08                       A:80 X:55 Y:71 P:E5 SP:F9 PPU:124, 79 CYC:14121
F9EE  10 18     BPL $FA08                       A:80 X:55 Y:71 P:E5 SP:F9 PPU:124, 85 CYC:14123
F9F0  50 16     BVC $FA08                       A:80 X:55 Y:71 P:E5 SP:F9 PPU:124, 91 CYC:14125
F9F2  C9 80     CMP #$80                        A:80 X:55 Y:71 P:E5 SP:F9 PPU:124, 97 CYC:14127
F9F4  D0 12     BNE $FA08                       A:80 X:55 Y:71 P:67 SP:F9 PPU:124,103 CYC:14129
F9F6  B8        CLV                             A:80 X:55 Y:71 P:67 SP:F9 PPU:124,109 CYC:14131
F9F7  18        CLC                             A:80 X:55 Y:71 P:27 SP:F9 PPU:124,115 CYC:14133
F9F8  A9 55     LDA #$55                        A:80 X:55 Y:71 P:26 SP:F9 PPU:124,121 CYC:14135
F9FA  60        RTS                             A:55 X:55 Y:71 P:24 SP:F9 PPU:124,127 CYC:14137
E41C  C8        INY                             A:55 X:55 Y:71 P:24 SP:FB PPU:124,145 CYC:14143
E41D  9D 00 06  STA $0600,X @ 0655 = 80         A:55 X:55 Y:72 P:24 SP:FB PPU:124,151 CYC:14145
E420  7E 00 06  ROR $0600,X @ 0655 = 55         A:55 X:55 Y:72 P:24 SP:FB PPU:124,166 CYC:14150
E423  BD 00 06  LDA $0600,X @ 0655 = 2A         A:55 X:55 Y:72 P:25 SP:FB PPU:124,187 CYC:14157
E426  20 FB F9  JSR $F9FB                       A:2A X:55 Y:72 P:25 SP:FB PPU:124,199 CYC:14161
F9FB  90 0B     BCC $FA08                       A:2A X:55 Y:72 P:25 SP:F9 PPU:124,217 CYC:14167
F9FD  F0 09     BEQ $FA08                       A:2A X:55 Y:72 P:25 SP:F9 PPU:124,223 CYC:14169
F9FF  30 07     BMI $FA08                       A:2A X:55 Y:72 P:25 SP:F9 PPU:124,229 CYC:14171
FA01  70 05     BVS $FA08                       A:2A X:55 Y:72 P:25 SP:F9 PPU:124,235 CYC:14173
FA03  C9 2A     CMP #$2A                        A:2A X:55 Y:72 P:25 SP:F9 PPU:124,241 CYC:14175
FA05  D0 01     BNE $FA08                       A:2A X:55 Y:72 P:27 SP:F9 PPU:124,247 CYC:14177
FA07  60        RTS                             A:2A X:55 Y:72 P:27 SP:F9 PPU:124,253 CYC:14179
E429  C8        INY                             A:2A X:55 Y:72 P:27 SP:FB PPU:124,271 CYC:14185
E42A  20 0A FA  JSR $FA0A                       A:2A X:55 Y:73 P:25 SP:FB PPU:124,277 CYC:14187
FA0A  24 01     BIT $01 = FF                    A:2A X:55 Y:73 P:25 SP:F9 PPU:124,295 CYC:14193
FA0C  38        SEC                             A:2A X:55 Y:73 P:E5 SP:F9 PPU:124,304 CYC:14196
FA0D  A9 80     LDA #$80                        A:2A X:55 Y:73 P:E5 SP:F9 PPU:124,310 CYC:14198
FA0F  60        RTS                             A:80 X:55 Y:73 P:E5 SP:F9 PPU:124,316 CYC:14200
E42D  9D 00 06  STA $0600,X @ 0655 = 2A         A:80 X:55 Y:73 P:E5 SP:FB PPU:124,334 CYC:14206
E430  3E 00 06  ROL $0600,X @ 0655 = 80         A:80 X:55 Y:73 P:E5 SP:FB PPU:125,  8 CYC:14211
E433  BD 00 06  LDA $0600,X @ 0655 = 01         A:80 X:55 Y:73 P:65 SP:FB PPU:125, 29 CYC:14218
E436  20 10 FA  JSR $FA10                       A:01 X:55 Y:73 P:65 SP:FB PPU:125, 41 CYC:14222
FA10  90 1C     BCC $FA2E                       A:01 X:55 Y:73 P:65 SP:F9 PPU:125, 59 CYC:14228
FA12  F0 1A     BEQ $FA2E                       A:01 X:55 Y:73 P:65 SP:F9 PPU:125, 65 CYC:14230
FA14  30 18     BMI $FA2E                       A:01 X:55 Y:73 P:65 SP:F9 PPU:125, 71 CYC:14232
FA16  50 16     BVC $FA2E                       A:01 X:55 Y:73 P:65 SP:F9 PPU:125, 77 CYC:14234
FA18  C9 01     CMP #$01                        A:01 X:55 Y:73 P:65 SP:F9 PPU:125, 83 CYC:14236
FA1A  D0 12     BNE $FA2E                       A:01 X:55 Y:73 P:67 SP:F9 PPU:125, 89 CYC:14238
FA1C  B8        CLV                             A:01 X:55 Y:73 P:67 SP:F9 PPU:125, 95 CYC:14240
FA1D  18        CLC                             A:01 X:55 Y:73 P:27 SP:F9 PPU:125,101 CYC:14242
FA1E  A9 55     LDA #$55                        A:01 X:55 Y:73 P:26 SP:F9 PPU:125,107 CYC:14244
FA20  60        RTS                             A:55 X:55 Y:73 P:24 SP:F9 PPU:125,113 CYC:14246
E439  C8        INY                             A:55 X:55 Y:73 P:24 SP:FB PPU:125,131 CYC:14252
E43A  9D 00 06  STA $0600,X @ 0655 = 01         A:55 X:55 Y:74 P:24 SP:FB PPU:125,137 CYC:14254
E43D  3E 00 06  ROL $0600,X @ 0655 = 55         A:55 X:55 Y:74 P:24 SP:FB PPU:125,152 CYC:14259
E440  BD 00 06  LDA $0600,X @ 0655 = AA         A:55 X:55 Y:74 P:A4 SP:FB PPU:125,173 CYC:14266
E443  20 21 FA  JSR $FA21                       A:AA X:55 Y:74 P:A4 SP:FB PPU:125,185 CYC:14270
FA21  B0 0B     BCS $FA2E                       A:AA X:55 Y:74 P:A4 SP:F9 PPU:125,203 CYC:14276
FA23  F0 09     BEQ $FA2E                       A:AA X:55 Y:74 P:A4 SP:F9 PPU:125,209 CYC:14278
FA25  10 07     BPL $FA2E                       A:AA X:55 Y:74 P:A4 SP:F9 PPU:125,215 CYC:14280
FA27  70 05     BVS $FA2E                       A:AA X:55 Y:74 P:A4 SP:F9 PPU:125,221 CYC:14282
FA29  C9 AA     CMP #$AA                        A:AA X:55 Y:74 P:A4 SP:F9 PPU:125,227 CYC:14284
FA2B  D0 01     BNE $FA2E                       A:AA X:55 Y:74 P:27 SP:F9 PPU:125,233 CYC:14286
FA2D  60        RTS                             A:AA X:55 Y:74 P:27 SP:F9 PPU:125,239 CYC:14288
E446  A9 FF     LDA #$FF                        A:AA X:55 Y:74 P:27 SP:FB PPU:125,257 CYC:14294
E448  9D 00 06  STA $0600,X @ 0655 = AA         A:FF X:55 Y:74 P:A5 SP:FB PPU:125,263 CYC:14296
E44B  85 01     STA $01 = FF                    A:FF X:55 Y:74 P:A5 SP:FB PPU:125,278 CYC:14301
E44D  24 01     BIT $01 = FF                    A:FF X:55 Y:74 P:A5 SP:FB PPU:125,287 CYC:14304
E44F  38        SEC                             A:FF X:55 Y:74 P:E5 SP:FB PPU:125,296 CYC:14307
E450  FE 00 06  INC $0600,X @ 0655 = FF         A:FF X:55 Y:74 P:E5 SP:FB PPU:125,302 CYC:14309
E453  D0 0D     BNE $E462                       A:FF X:55 Y:74 P:67 SP:FB PPU:125,323 CYC:14316
E455  30 0B     BMI $E462                       A:FF X:55 Y:74 P:67 SP:FB PPU:125,329 CYC:14318
E457  50 09     BVC $E462                       A:FF X:55 Y:74 P:67 SP:FB PPU:125,335 CYC:14320
E459  90 07     BCC $E462                       A:FF X:55 Y:74 P:67 SP:FB PPU:126,  0 CYC:14322
E45B  BD 00 06  LDA $0600,X @ 0655 = 00         A:FF X:55 Y:74 P:67 SP:FB PPU:126,  6 CYC:14324
E45E  C9 00     CMP #$00                        A:00 X:55 Y:74 P:67 SP:FB PPU:126, 18 CYC:14328
E460  F0 04     BEQ $E466                       A:00 X:55 Y:74 P:67 SP:FB PPU:126, 24 CYC:14330
E466  A9 7F     LDA #$7F                        A:00 X:55 Y:74 P:67 SP:FB PPU:126, 33 CYC:14333
E468  9D 00 06  STA $0600,X @ 0655 = 00         A:7F X:55 Y:74 P:65 SP:FB PPU:126, 39 CYC:14335
E46B  B8        CLV                             A:7F X:55 Y:74 P:65 SP:FB PPU:126, 54 CYC:14340
E46C  18        CLC                             A:7F X:55 Y:74 P:25 SP:FB PPU:126, 60 CYC:14342
E46D  FE 00 06  INC $0600,X @ 0655 = 7F         A:7F X:55 Y:74 P:24 SP:FB PPU:126, 66 CYC:14344
E470  F0 0D     BEQ $E47F                       A:7F X:55 Y:74 P:A4 SP:FB PPU:126, 87 CYC:14351
E472  10 0B     BPL $E47F                       A:7F X:55 Y:74 P:A4 SP:FB PPU:126, 93 CYC:14353
E474  70 09     BVS $E47F                       A:7F X:55 Y:74 P:A4 SP:FB PPU:126, 99 CYC:14355
E476  B0 07     BCS $E47F                       A:7F X:55 Y:74 P:A4 SP:FB PPU:126,105 CYC:14357
E478  BD 00 06  LDA $0600,X @ 0655 = 80         A:7F X:55 Y:74 P:A4 SP:FB PPU:126,111 CYC:14359
E47B  C9 80     CMP #$80                        A:80 X:55 Y:74 P:A4 SP:FB PPU:126,123 CYC:14363
E47D  F0 04     BEQ $E483                       A:80 X:55 Y:74 P:27 SP:FB PPU:126,129 CYC:14365
E483  A9 00     LDA #$00                        A:80 X:55 Y:74 P:27 SP:FB PPU:126,138 CYC:14368
E485  9D 00 06  STA $0600,X @ 0655 = 80         A:00 X:55 Y:74 P:27 SP:FB PPU:126,144 CYC:14370
E488  24 01     BIT $01 = FF                    A:00 X:55 Y:74 P:27 SP:FB PPU:126,159 CYC:14375
E48A  38        SEC                             A:00 X:55 Y:74 P:E7 SP:FB PPU:126,168 CYC:14378
E48B  DE 00 06  DEC $0600,X @ 0655 = 00         A:00 X:55 Y:74 P:E7 SP:FB PPU:126,174 CYC:14380
E48E  F0 0D     BEQ $E49D                       A:00 X:55 Y:74 P:E5 SP:FB PPU:126,195 CYC:14387
E490  10 0B     BPL $E49D                       A:00 X:55 Y:74 P:E5 SP:FB PPU:126,201 CYC:14389
E492  50 09     BVC $E49D                       A:00 X:55 Y:74 P:E5 SP:FB PPU:126,207 CYC:14391
E494  90 07     BCC $E49D                       A:00 X:55 Y:74 P:E5 SP:FB PPU:126,213 CYC:14393
E496  BD 00 06  LDA $0600,X @ 0655 = FF         A:00 X:55 Y:74 P:E5 SP:FB PPU:126,219 CYC:14395
E499  C9 FF     CMP #$FF                        A:FF X:55 Y:74 P:E5 SP:FB PPU:126,231 CYC:14399
E49B  F0 04     BEQ $E4A1                       A:FF X:55 Y:74 P:67 SP:FB PPU:126,237 CYC:14401
E4A1  A9 80     LDA #$80                        A:FF X:55 Y:74 P:67 SP:FB PPU:126,246 CYC:14404
E4A3  9D 00 06  STA $0600,X @ 0655 = FF         A:80 X:55 Y:74 P:E5 SP:FB PPU:126,252 CYC:14406
E4A6  B8        CLV                             A:80 X:55 Y:74 P:E5 SP:FB PPU:126,267 CYC:14411
E4A7  18        CLC                             A:80 X:55 Y:74 P:A5 SP:FB PPU:126,273 CYC:14413
E4A8  DE 00 06  DEC $0600,X @ 0655 = 80         A:80 X:55 Y:74 P:A4 SP:FB PPU:126,279 CYC:14415
E4AB  F0 0D     BEQ $E4BA                       A:80 X:55 Y:74 P:24 SP:FB PPU:126,300 CYC:14422
E4AD  30 0B     BMI $E4BA                       A:80 X:55 Y:74 P:24 SP:FB PPU:126,306 CYC:14424
E4AF  70 09     BVS $E4BA                       A:80 X:55 Y:74 P:24 SP:FB PPU:126,312 CYC:14426
E4B1  B0 07     BCS $E4BA                       A:80 X:55 Y:74 P:24 SP:FB PPU:126,318 CYC:14428
E4B3  BD 00 06  LDA $0600,X @ 0655 = 7F         A:80 X:55 Y:74 P:24 SP:FB PPU:126,324 CYC:14430
E4B6  C9 7F     CMP #$7F                        A:7F X:55 Y:74 P:24 SP:FB PPU:126,336 CYC:14434
E4B8  F0 04     BEQ $E4BE                       A:7F X:55 Y:74 P:27 SP:FB PPU:127,  1 CYC:14436
E4BE  A9 01     LDA #$01                        A:7F X:55 Y:74 P:27 SP:FB PPU:127, 10 CYC:14439
E4C0  9D 00 06  STA $0600,X @ 0655 = 7F         A:01 X:55 Y:74 P:25 SP:FB PPU:127, 16 CYC:14441
E4C3  DE 00 06  DEC $0600,X @ 0655 = 01         A:01 X:55 Y:74 P:25 SP:FB PPU:127, 31 CYC:14446
E4C6  F0 04     BEQ $E4CC                       A:01 X:55 Y:74 P:27 SP:FB PPU:127, 52 CYC:14453
E4CC  A9 33     LDA #$33                        A:01 X:55 Y:74 P:27 SP:FB PPU:127, 61 CYC:14456
E4CE  8D 78 06  STA $0678 = 7F                  A:33 X:55 Y:74 P:25 SP:FB PPU:127, 67 CYC:14458
E4D1  A9 44     LDA #$44                        A:33 X:55 Y:74 P:25 SP:FB PPU:127, 79 CYC:14462
E4D3  A0 78     LDY #$78                        A:44 X:55 Y:74 P:25 SP:FB PPU:127, 85 CYC:14464
E4D5  A2 00     LDX #$00                        A:44 X:55 Y:78 P:25 SP:FB PPU:127, 91 CYC:14466
E4D7  38        SEC                             A:44 X:00 Y:78 P:27 SP:FB PPU:127, 97 CYC:14468
E4D8  24 01     BIT $01 = FF                    A:44 X:00 Y:78 P:27 SP:FB PPU:127,103 CYC:14470
E4DA  BE 00 06  LDX $0600,Y @ 0678 = 33         A:44 X:00 Y:78 P:E5 SP:FB PPU:127,112 CYC:14473
E4DD  90 12     BCC $E4F1                       A:44 X:33 Y:78 P:65 SP:FB PPU:127,124 CYC:14477
E4DF  50 10     BVC $E4F1                       A:44 X:33 Y:78 P:65 SP:FB PPU:127,130 CYC:14479
E4E1  30 0E     BMI $E4F1                       A:44 X:33 Y:78 P:65 SP:FB PPU:127,136 CYC:14481
E4E3  F0 0C     BEQ $E4F1                       A:44 X:33 Y:78 P:65 SP:FB PPU:127,142 CYC:14483
E4E5  E0 33     CPX #$33                        A:44 X:33 Y:78 P:65 SP:FB PPU:127,148 CYC:14485
E4E7  D0 08     BNE $E4F1                       A:44 X:33 Y:78 P:67 SP:FB PPU:127,154 CYC:14487
E4E9  C0 78     CPY #$78                        A:44 X:33 Y:78 P:67 SP:FB PPU:127,160 CYC:14489
E4EB  D0 04     BNE $E4F1                       A:44 X:33 Y:78 P:67 SP:FB PPU:127,166 CYC:14491
E4ED  C9 44     CMP #$44                        A:44 X:33 Y:78 P:67 SP:FB PPU:127,172 CYC:14493
E4EF  F0 04     BEQ $E4F5                       A:44 X:33 Y:78 P:67 SP:FB PPU:127,178 CYC:14495
E4F5  A9 97     LDA #$97                        A:44 X:33 Y:78 P:67 SP:FB PPU:127,187 CYC:14498
E4F7  8D 7F 06  STA $067F = 00                  A:97 X:33 Y:78 P:E5 SP:FB PPU:127,193 CYC:14500
E4FA  A9 47     LDA #$47                        A:97 X:33 Y:78 P:E5 SP:FB PPU:127,205 CYC:14504
E4FC  A0 FF     LDY #$FF                        A:47 X:33 Y:78 P:65 SP:FB PPU:127,211 CYC:14506
E4FE  A2 00     LDX #$00                        A:47 X:33 Y:FF P:E5 SP:FB PPU:127,217 CYC:14508
E500  18        CLC                             A:47 X:00 Y:FF P:67 SP:FB PPU:127,223 CYC:14510
E501  B8        CLV                             A:47 X:00 Y:FF P:66 SP:FB PPU:127,229 CYC:14512
E502  BE 80 05  LDX $0580,Y @ 067F = 97         A:47 X:00 Y:FF P:26 SP:FB PPU:127,235 CYC:14514
E505  B0 12     BCS $E519                       A:47 X:97 Y:FF P:A4 SP:FB PPU:127,250 CYC:14519
E507  70 10     BVS $E519                       A:47 X:97 Y:FF P:A4 SP:FB PPU:127,256 CYC:14521
E509  10 0E     BPL $E519                       A:47 X:97 Y:FF P:A4 SP:FB PPU:127,262 CYC:14523
E50B  F0 0C     BEQ $E519                       A:47 X:97 Y:FF P:A4 SP:FB PPU:127,268 CYC:14525
E50D  E0 97     CPX #$97                        A:47 X:97 Y:FF P:A4 SP:FB PPU:127,274 CYC:14527
E50F  D0 08     BNE $E519                       A:47 X:97 Y:FF P:27 SP:FB PPU:127,280 CYC:14529
E511  C0 FF     CPY #$FF                        A:47 X:97 Y:FF P:27 SP:FB PPU:127,286 CYC:14531
E513  D0 04     BNE $E519                       A:47 X:97 Y:FF P:27 SP:FB PPU:127,292 CYC:14533
E515  C9 47     CMP #$47                        A:47 X:97 Y:FF P:27 SP:FB PPU:127,298 CYC:14535
E517  F0 04     BEQ $E51D                       A:47 X:97 Y:FF P:27 SP:FB PPU:127,304 CYC:14537
E51D  60        RTS                             A:47 X:97 Y:FF P:27 SP:FB PPU:127,313 CYC:14540
C62F  20 A3 C6  JSR $C6A3                       A:47 X:97 Y:FF P:27 SP:FD PPU:127,331 CYC:14546
C6A3  A0 4E     LDY #$4E                        A:47 X:97 Y:FF P:27 SP:FB PPU:128,  8 CYC:14552
C6A5  A9 FF     LDA #$FF                        A:47 X:97 Y:4E P:25 SP:FB PPU:128, 14 CYC:14554
C6A7  85 01     STA $01 = FF                    A:FF X:97 Y:4E P:A5 SP:FB PPU:128, 20 CYC:14556
C6A9  20 B0 C6  JSR $C6B0                       A:FF X:97 Y:4E P:A5 SP:FB PPU:128, 29 CYC:14559
C6B0  A9 FF     LDA #$FF                        A:FF X:97 Y:4E P:A5 SP:F9 PPU:128, 47 CYC:14565
C6B2  48        PHA                             A:FF X:97 Y:4E P:A5 SP:F9 PPU:128, 53 CYC:14567
C6B3  A9 AA     LDA #$AA                        A:FF X:97 Y:4E P:A5 SP:F8 PPU:128, 62 CYC:14570
C6B5  D0 05     BNE $C6BC                       A:AA X:97 Y:4E P:A5 SP:F8 PPU:128, 68 CYC:14572
C6BC  28        PLP                             A:AA X:97 Y:4E P:A5 SP:F8 PPU:128, 77 CYC:14575
C6BD  04 A9    *NOP $A9 = 00                    A:AA X:97 Y:4E P:EF SP:F9 PPU:128, 89 CYC:14579
C6BF  44 A9    *NOP $A9 = 00                    A:AA X:97 Y:4E P:EF SP:F9 PPU:128, 98 CYC:14582
C6C1  64 A9    *NOP $A9 = 00                    A:AA X:97 Y:4E P:EF SP:F9 PPU:128,107 CYC:14585
C6C3  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F9 PPU:128,116 CYC:14588
C6C4  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F9 PPU:128,122 CYC:14590
C6C5  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F9 PPU:128,128 CYC:14592
C6C6  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F9 PPU:128,134 CYC:14594
C6C7  08        PHP                             A:AA X:97 Y:4E P:EF SP:F9 PPU:128,140 CYC:14596
C6C8  48        PHA                             A:AA X:97 Y:4E P:EF SP:F8 PPU:128,149 CYC:14599
C6C9  0C A9 A9 *NOP $A9A9 = A9                  A:AA X:97 Y:4E P:EF SP:F7 PPU:128,158 CYC:14602
C6CC  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F7 PPU:128,170 CYC:14606
C6CD  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F7 PPU:128,176 CYC:14608
C6CE  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F7 PPU:128,182 CYC:14610
C6CF  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F7 PPU:128,188 CYC:14612
C6D0  08        PHP                             A:AA X:97 Y:4E P:EF SP:F7 PPU:128,194 CYC:14614
C6D1  48        PHA                             A:AA X:97 Y:4E P:EF SP:F6 PPU:128,203 CYC:14617
C6D2  14 A9    *NOP $A9,X @ 40 = 00             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,212 CYC:14620
C6D4  34 A9    *NOP $A9,X @ 40 = 00             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,224 CYC:14624
C6D6  54 A9    *NOP $A9,X @ 40 = 00             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,236 CYC:14628
C6D8  74 A9    *NOP $A9,X @ 40 = 00             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,248 CYC:14632
C6DA  D4 A9    *NOP $A9,X @ 40 = 00             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,260 CYC:14636
C6DC  F4 A9    *NOP $A9,X @ 40 = 00             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,272 CYC:14640
C6DE  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,284 CYC:14644
C6DF  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,290 CYC:14646
C6E0  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,296 CYC:14648
C6E1  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,302 CYC:14650
C6E2  08        PHP                             A:AA X:97 Y:4E P:EF SP:F5 PPU:128,308 CYC:14652
C6E3  48        PHA                             A:AA X:97 Y:4E P:EF SP:F4 PPU:128,317 CYC:14655
C6E4  1A       *NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:128,326 CYC:14658
C6E5  3A       *NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:128,332 CYC:14660
C6E6  5A       *NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:128,338 CYC:14662
C6E7  7A       *NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129,  3 CYC:14664
C6E8  DA       *NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129,  9 CYC:14666
C6E9  FA       *NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 15 CYC:14668
C6EA  80 89    *NOP #$89                        A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 21 CYC:14670
C6EC  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 27 CYC:14672
C6ED  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 33 CYC:14674
C6EE  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 39 CYC:14676
C6EF  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 45 CYC:14678
C6F0  08        PHP                             A:AA X:97 Y:4E P:EF SP:F3 PPU:129, 51 CYC:14680
C6F1  48        PHA                             A:AA X:97 Y:4E P:EF SP:F2 PPU:129, 60 CYC:14683
C6F2  1C A9 A9 *NOP $A9A9,X @ AA40 = 00         A:AA X:97 Y:4E P:EF SP:F1 PPU:129, 69 CYC:14686
C6F5  3C A9 A9 *NOP $A9A9,X @ AA40 = 00         A:AA X:97 Y:4E P:EF SP:F1 PPU:129, 84 CYC:14691
C6F8  5C A9 A9 *NOP $A9A9,X @ AA40 = 00         A:AA X:97 Y:4E P:EF SP:F1 PPU:129, 99 CYC:14696
C6FB  7C A9 A9 *NOP $A9A9,X @ AA40 = 00         A:AA X:97 Y:4E P:EF SP:F1 PPU:129,114 CYC:14701
C6FE  DC A9 A9 *NOP $A9A9,X @ AA40 = 00         A:AA X:97 Y:4E P:EF SP:F1 PPU:129,129 CYC:14706
C701  FC A9 A9 *NOP $A9A9,X @ AA40 = 00         A:AA X:97 Y:4E P:EF SP:F1 PPU:129,144 CYC:14711
C704  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F1 PPU:129,159 CYC:14716
C705  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F1 PPU:129,165 CYC:14718
C706  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F1 PPU:129,171 CYC:14720
C707  EA        NOP                             A:AA X:97 Y:4E P:EF SP:F1 PPU:129,177 CYC:14722
C708  08        PHP                             A:AA X:97 Y:4E P:EF SP:F1 PPU:129,183 CYC:14724
C709  48        PHA                             A:AA X:97 Y:4E P:EF SP:F0 PPU:129,192 CYC:14727
C70A  A2 05     LDX #$05                        A:AA X:97 Y:4E P:EF SP:EF PPU:129,201 CYC:14730
C70C  68        PLA                             A:AA X:05 Y:4E P:6D SP:EF PPU:129,207 CYC:14732
C70D  C9 55     CMP #$55                        A:AA X:05 Y:4E P:ED SP:F0 PPU:129,219 CYC:14736
C70F  F0 0A     BEQ $C71B                       A:AA X:05 Y:4E P:6D SP:F0 PPU:129,225 CYC:14738
C711  C9 AA     CMP #$AA                        A:AA X:05 Y:4E P:6D SP:F0 PPU:129,231 CYC:14740
C713  F0 06     BEQ $C71B                       A:AA X:05 Y:4E P:6F SP:F0 PPU:129,237 CYC:14742
C71B  68        PLA                             A:AA X:05 Y:4E P:6F SP:F0 PPU:129,246 CYC:14745
C71C  29 CB     AND #$CB                        A:FF X:05 Y:4E P:ED SP:F1 PPU:129,258 CYC:14749
C71E  C9 00     CMP #$00                        A:CB X:05 Y:4E P:ED SP:F1 PPU:129,264 CYC:14751
C720  F0 06     BEQ $C728                       A:CB X:05 Y:4E P:ED SP:F1 PPU:129,270 CYC:14753
C722  C9 CB     CMP #$CB                        A:CB X:05 Y:4E P:ED SP:F1 PPU:129,276 CYC:14755
C724  F0 02     BEQ $C728                       A:CB X:05 Y:4E P:6F SP:F1 PPU:129,282 CYC:14757
C728  C8        INY                             A:CB X:05 Y:4E P:6F SP:F1 PPU:129,291 CYC:14760
C729  CA        DEX                             A:CB X:05 Y:4F P:6D SP:F1 PPU:129,297 CYC:14762
C72A  D0 E0     BNE $C70C                       A:CB X:04 Y:4F P:6D SP:F1 PPU:129,303 CYC:14764
C70C  68        PLA                             A:CB X:04 Y:4F P:6D SP:F1 PPU:129,312 CYC:14767
C70D  C9 55     CMP #$55                        A:AA X:04 Y:4F P:ED SP:F2 PPU:129,324 CYC:14771
C70F  F0 0A     BEQ $C71B                       A:AA X:04 Y:4F P:6D SP:F2 PPU:129,330 CYC:14773
C711  C9 AA     CMP #$AA                        A:AA X:04 Y:4F P:6D SP:F2 PPU:129,336 CYC:14775
C713  F0 06     BEQ $C71B                       A:AA X:04 Y:4F P:6F SP:F2 PPU:130,  1 CYC:14777
C71B  68        PLA                             A:AA X:04 Y:4F P:6F SP:F2 PPU:130, 10 CYC:14780
C71C  29 CB     AND #$CB                        A:FF X:04 Y:4F P:ED SP:F3 PPU:130, 22 CYC:14784
C71E  C9 00     CMP #$00                        A:CB X:04 Y:4F P:ED SP:F3 PPU:130, 28 CYC:14786
C720  F0 06     BEQ $C728                       A:CB X:04 Y:4F P:ED SP:F3 PPU:130, 34 CYC:14788
C722  C9 CB     CMP #$CB                        A:CB X:04 Y:4F P:ED SP:F3 PPU:130, 40 CYC:14790
C724  F0 02     BEQ $C728                       A:CB X:04 Y:4F P:6F SP:F3 PPU:130, 46 CYC:14792
C728  C8        INY                             A:CB X:04 Y:4F P:6F SP:F3 PPU:130, 55 CYC:14795
C729  CA        DEX                             A:CB X:04 Y:50 P:6D SP:F3 PPU:130, 61 CYC:14797
C72A  D0 E0     BNE $C70C                       A:CB X:03 Y:50 P:6D SP:F3 PPU:130, 67 CYC:14799
C70C  68        PLA                             A:CB X:03 Y:50 P:6D SP:F3 PPU:130, 76 CYC:14802
C70D  C9 55     CMP #$55                        A:AA X:03 Y:50 P:ED SP:F4 PPU:130, 88 CYC:14806
C70F  F0 0A     BEQ $C71B                       A:AA X:03 Y:50 P:6D SP:F4 PPU:130, 94 CYC:14808
C711  C9 AA     CMP #$AA                        A:AA X:03 Y:50 P:6D SP:F4 PPU:130,100 CYC:14810
C713  F0 06     BEQ $C71B                       A:AA X:03 Y:50 P:6F SP:F4 PPU:130,106 CYC:14812
C71B  68        PLA                             A:AA X:03 Y:50 P:6F SP:F4 PPU:130,115 CYC:14815
C71C  29 CB     AND #$CB                        A:FF X:03 Y:50 P:ED SP:F5 PPU:130,127 CYC:14819
C71E  C9 00     CMP #$00                        A:CB X:03 Y:50 P:ED SP:F5 PPU:130,133 CYC:14821
C720  F0 06     BEQ $C728                       A:CB X:03 Y:50 P:ED SP:F5 PPU:130,139 CYC:14823
C722  C9 CB     CMP #$CB                        A:CB X:03 Y:50 P:ED SP:F5 PPU:130,145 CYC:14825
C724  F0 02     BEQ $C728                       A:CB X:03 Y:50 P:6F SP:F5 PPU:130,151 CYC:14827
C728  C8        INY                             A:CB X:03 Y:50 P:6F SP:F5 PPU:130,160 CYC:14830
C729  CA        DEX                             A:CB X:03 Y:51 P:6D SP:F5 PPU:130,166 CYC:14832
C72A  D0 E0     BNE $C70C                       A:CB X:02 Y:51 P:6D SP:F5 PPU:130,172 CYC:14834
C70C  68        PLA                             A:CB X:02 Y:51 P:6D SP:F5 PPU:130,181 CYC:14837
C70D  C9 55     CMP #$55                        A:AA X:02 Y:51 P:ED SP:F6 PPU:130,193 CYC:14841
C70F  F0 0A     BEQ $C71B                       A:AA X:02 Y:51 P:6D SP:F6 PPU:130,199 CYC:14843
C711  C9 AA     CMP #$AA                        A:AA X:02 Y:51 P:6D SP:F6 PPU:130,205 CYC:14845
C713  F0 06     BEQ $C71B                       A:AA X:02 Y:51 P:6F SP:F6 PPU:130,211 CYC:14847
C71B  68        PLA                             A:AA X:02 Y:51 P:6F SP:F6 PPU:130,220 CYC:14850
C71C  29 CB     AND #$CB                        A:FF X:02 Y:51 P:ED SP:F7 PPU:130,232 CYC:14854
C71E  C9 00     CMP #$00                        A:CB X:02 Y:51 P:ED SP:F7 PPU:130,238 CYC:14856
C720  F0 06     BEQ $C728                       A:CB X:02 Y:51 P:ED SP:F7 PPU:130,244 CYC:14858
C722  C9 CB     CMP #$CB                        A:CB X:02 Y:51 P:ED SP:F7 PPU:130,250 CYC:14860
C724  F0 02     BEQ $C728                       A:CB X:02 Y:51 P:6F SP:F7 PPU:130,256 CYC:14862
C728  C8        INY                             A:CB X:02 Y:51 P:6F SP:F7 PPU:130,265 CYC:14865
C729  CA        DEX                             A:CB X:02 Y:52 P:6D SP:F7 PPU:130,271 CYC:14867
C72A  D0 E0     BNE $C70C                       A:CB X:01 Y:52 P:6D SP:F7 PPU:130,277 CYC:14869
C70C  68        PLA                             A:CB X:01 Y:52 P:6D SP:F7 PPU:130,286 CYC:14872
C70D  C9 55     CMP #$55                        A:AA X:01 Y:52 P:ED SP:F8 PPU:130,298 CYC:14876
C70F  F0 0A     BEQ $C71B                       A:AA X:01 Y:52 P:6D SP:F8 PPU:130,304 CYC:14878
C711  C9 AA     CMP #$AA                        A:AA X:01 Y:52 P:6D SP:F8 PPU:130,310 CYC:14880
C713  F0 06     BEQ $C71B                       A:AA X:01 Y:52 P:6F SP:F8 PPU:130,316 CYC:14882
C71B  68        PLA                             A:AA X:01 Y:52 P:6F SP:F8 PPU:130,325 CYC:14885
C71C  29 CB     AND #$CB                        A:FF X:01 Y:52 P:ED SP:F9 PPU:130,337 CYC:14889
C71E  C9 00     CMP #$00                        A:CB X:01 Y:52 P:ED SP:F9 PPU:131,  2 CYC:14891
C720  F0 06     BEQ $C728                       A:CB X:01 Y:52 P:ED SP:F9 PPU:131,  8 CYC:14893
C722  C9 CB     CMP #$CB                        A:CB X:01 Y:52 P:ED SP:F9 PPU:131, 14 CYC:14895
C724  F0 02     BEQ $C728                       A:CB X:01 Y:52 P:6F SP:F9 PPU:131, 20 CYC:14897
C728  C8        INY                             A:CB X:01 Y:52 P:6F SP:F9 PPU:131, 29 CYC:14900
C729  CA        DEX                             A:CB X:01 Y:53 P:6D SP:F9 PPU:131, 35 CYC:14902
C72A  D0 E0     BNE $C70C                       A:CB X:00 Y:53 P:6F SP:F9 PPU:131, 41 CYC:14904
C72C  60        RTS                             A:CB X:00 Y:53 P:6F SP:F9 PPU:131, 47 CYC:14906
C6AC  20 B7 C6  JSR $C6B7                       A:CB X:00 Y:53 P:6F SP:FB PPU:131, 65 CYC:14912
C6B7  A9 34     LDA #$34                        A:CB X:00 Y:53 P:6F SP:F9 PPU:131, 83 CYC:14918
C6B9  48        PHA                             A:34 X:00 Y:53 P:6D SP:F9 PPU:131, 89 CYC:14920
C6BA  A9 55     LDA #$55                        A:34 X:00 Y:53 P:6D SP:F8 PPU:131, 98 CYC:14923
C6BC  28        PLP                             A:55 X:00 Y:53 P:6D SP:F8 PPU:131,104 CYC:14925
C6BD  04 A9    *NOP $A9 = 00                    A:55 X:00 Y:53 P:24 SP:F9 PPU:131,116 CYC:14929
C6BF  44 A9    *NOP $A9 = 00                    A:55 X:00 Y:53 P:24 SP:F9 PPU:131,125 CYC:14932
C6C1  64 A9    *NOP $A9 = 00                    A:55 X:00 Y:53 P:24 SP:F9 PPU:131,134 CYC:14935
C6C3  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F9 PPU:131,143 CYC:14938
C6C4  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F9 PPU:131,149 CYC:14940
C6C5  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F9 PPU:131,155 CYC:14942
C6C6  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F9 PPU:131,161 CYC:14944
C6C7  08        PHP                             A:55 X:00 Y:53 P:24 SP:F9 PPU:131,167 CYC:14946
C6C8  48        PHA                             A:55 X:00 Y:53 P:24 SP:F8 PPU:131,176 CYC:14949
C6C9  0C A9 A9 *NOP $A9A9 = A9                  A:55 X:00 Y:53 P:24 SP:F7 PPU:131,185 CYC:14952
C6CC  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F7 PPU:131,197 CYC:14956
C6CD  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F7 PPU:131,203 CYC:14958
C6CE  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F7 PPU:131,209 CYC:14960
C6CF  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F7 PPU:131,215 CYC:14962
C6D0  08        PHP                             A:55 X:00 Y:53 P:24 SP:F7 PPU:131,221 CYC:14964
C6D1  48        PHA                             A:55 X:00 Y:53 P:24 SP:F6 PPU:131,230 CYC:14967
C6D2  14 A9    *NOP $A9,X @ A9 = 00             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,239 CYC:14970
C6D4  34 A9    *NOP $A9,X @ A9 = 00             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,251 CYC:14974
C6D6  54 A9    *NOP $A9,X @ A9 = 00             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,263 CYC:14978
C6D8  74 A9    *NOP $A9,X @ A9 = 00             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,275 CYC:14982
C6DA  D4 A9    *NOP $A9,X @ A9 = 00             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,287 CYC:14986
C6DC  F4 A9    *NOP $A9,X @ A9 = 00             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,299 CYC:14990
C6DE  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,311 CYC:14994
C6DF  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,317 CYC:14996
C6E0  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,323 CYC:14998
C6E1  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,329 CYC:15000
C6E2  08        PHP                             A:55 X:00 Y:53 P:24 SP:F5 PPU:131,335 CYC:15002
C6E3  48        PHA                             A:55 X:00 Y:53 P:24 SP:F4 PPU:132,  3 CYC:15005
C6E4  1A       *NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 12 CYC:15008
C6E5  3A       *NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 18 CYC:15010
C6E6  5A       *NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 24 CYC:15012
C6E7  7A       *NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 30 CYC:15014
C6E8  DA       *NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 36 CYC:15016
C6E9  FA       *NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 42 CYC:15018
C6EA  80 89    *NOP #$89                        A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 48 CYC:15020
C6EC  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 54 CYC:15022
C6ED  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 60 CYC:15024
C6EE  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 66 CYC:15026
C6EF  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 72 CYC:15028
C6F0  08        PHP                             A:55 X:00 Y:53 P:24 SP:F3 PPU:132, 78 CYC:15030
C6F1  48        PHA                             A:55 X:00 Y:53 P:24 SP:F2 PPU:132, 87 CYC:15033
C6F2  1C A9 A9 *NOP $A9A9,X @ A9A9 = A9         A:55 X:00 Y:53 P:24 SP:F1 PPU:132, 96 CYC:15036
C6F5  3C A9 A9 *NOP $A9A9,X @ A9A9 = A9         A:55 X:00 Y:53 P:24 SP:F1 PPU:132,108 CYC:15040
C6F8  5C A9 A9 *NOP $A9A9,X @ A9A9 = A9         A:55 X:00 Y:53 P:24 SP:F1 PPU:132,120 CYC:15044
C6FB  7C A9 A9 *NOP $A9A9,X @ A9A9 = A9         A:55 X:00 Y:53 P:24 SP:F1 PPU:132,132 CYC:15048
C6FE  DC A9 A9 *NOP $A9A9,X @ A9A9 = A9         A:55 X:00 Y:53 P:24 SP:F1 PPU:132,144 CYC:15052
C701  FC A9 A9 *NOP $A9A9,X @ A9A9 = A9         A:55 X:00 Y:53 P:24 SP:F1 PPU:132,156 CYC:15056
C704  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F1 PPU:132,168 CYC:15060
C705  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F1 PPU:132,174 CYC:15062
C706  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F1 PPU:132,180 CYC:15064
C707  EA        NOP                             A:55 X:00 Y:53 P:24 SP:F1 PPU:132,186 CYC:15066
C708  08        PHP                             A:55 X:00 Y:53 P:24 SP:F1 PPU:132,192 CYC:15068
C709  48        PHA                             A:55 X:00 Y:53 P:24 SP:F0 PPU:132,201 CYC:15071
C70A  A2 05     LDX #$05                        A:55 X:00 Y:53 P:24 SP:EF PPU:132,210 CYC:15074
C70C  68        PLA                             A:55 X:05 Y:53 P:24 SP:EF PPU:132,216 CYC:15076
C70D  C9 55     CMP #$55                        A:55 X:05 Y:53 P:24 SP:F0 PPU:132,228 CYC:15080
C70F  F0 0A     BEQ $C71B                       A:55 X:05 Y:53 P:27 SP:F0 PPU:132,234 CYC:15082
C71B  68        PLA                             A:55 X:05 Y:53 P:27 SP:F0 PPU:132,243 CYC:15085
C71C  29 CB     AND #$CB                        A:34 X:05 Y:53 P:25 SP:F1 PPU:132,255 CYC:15089
C71E  C9 00     CMP #$00                        A:00 X:05 Y:53 P:27 SP:F1 PPU:132,261 CYC:15091
C720  F0 06     BEQ $C728                       A:00 X:05 Y:53 P:27 SP:F1 PPU:132,267 CYC:15093
C728  C8        INY                             A:00 X:05 Y:53 P:27 SP:F1 PPU:132,276 CYC:15096
C729  CA        DEX                             A:00 X:05 Y:54 P:25 SP:F1 PPU:132,282 CYC:15098
C72A  D0 E0     BNE $C70C                       A:00 X:04 Y:54 P:25 SP:F1 PPU:132,288 CYC:15100
C70C  68        PLA                             A:00 X:04 Y:54 P:25 SP:F1 PPU:132,297 CYC:15103
C70D  C9 55     CMP #$55                        A:55 X:04 Y:54 P:25 SP:F2 PPU:132,309 CYC:15107
C70F  F0 0A     BEQ $C71B                       A:55 X:04 Y:54 P:27 SP:F2 PPU:132,315 CYC:15109
C71B  68        PLA                             A:55 X:04 Y:54 P:27 SP:F2 PPU:132,324 CYC:15112
C71C  29 CB     AND #$CB                        A:34 X:04 Y:54 P:25 SP:F3 PPU:132,336 CYC:15116
C71E  C9 00     CMP #$00                        A:00 X:04 Y:54 P:27 SP:F3 PPU:133,  1 CYC:15118
C720  F0 06     BEQ $C728                       A:00 X:04 Y:54 P:27 SP:F3 PPU:133,  7 CYC:15120
C728  C8        INY                             A:00 X:04 Y:54 P:27 SP:F3 PPU:133, 16 CYC:15123
C729  CA        DEX                             A:00 X:04 Y:55 P:25 SP:F3 PPU:133, 22 CYC:15125
C72A  D0 E0     BNE $C70C                       A:00 X:03 Y:55 P:25 SP:F3 PPU:133, 28 CYC:15127
C70C  68        PLA                             A:00 X:03 Y:55 P:25 SP:F3 PPU:133, 37 CYC:15130
C70D  C9 55     CMP #$55                        A:55 X:03 Y:55 P:25 SP:F4 PPU:133, 49 CYC:15134
C70F  F0 0A     BEQ $C71B                       A:55 X:03 Y:55 P:27 SP:F4 PPU:133, 55 CYC:15136
C71B  68        PLA                             A:55 X:03 Y:55 P:27 SP:F4 PPU:133, 64 CYC:15139
C71C  29 CB     AND #$CB                        A:34 X:03 Y:55 P:25 SP:F5 PPU:133, 76 CYC:15143
C71E  C9 00     CMP #$00                        A:00 X:03 Y:55 P:27 SP:F5 PPU:133, 82 CYC:15145
C720  F0 06     BEQ $C728                       A:00 X:03 Y:55 P:27 SP:F5 PPU:133, 88 CYC:15147
C728  C8        INY                             A:00 X:03 Y:55 P:27 SP:F5 PPU:133, 97 CYC:15150
C729  CA        DEX                             A:00 X:03 Y:56 P:25 SP:F5 PPU:133,103 CYC:15152
C72A  D0 E0     BNE $C70C                       A:00 X:02 Y:56 P:25 SP:F5 PPU:133,109 CYC:15154
C70C  68        PLA                             A:00 X:02 Y:56 P:25 SP:F5 PPU:133,118 CYC:15157
C70D  C9 55     CMP #$55                        A:55 X:02 Y:56 P:25 SP:F6 PPU:133,130 CYC:15161
C70F  F0 0A     BEQ $C71B                       A:55 X:02 Y:56 P:27 SP:F6 PPU:133,136 CYC:15163
C71B  68        PLA                             A:55 X:02 Y:56 P:27 SP:F6 PPU:133,145 CYC:15166
C71C  29 CB     AND #$CB                        A:34 X:02 Y:56 P:25 SP:F7 PPU:133,157 CYC:15170
C71E  C9 00     CMP #$00                        A:00 X:02 Y:56 P:27 SP:F7 PPU:133,163 CYC:15172
C720  F0 06     BEQ $C728                       A:00 X:02 Y:56 P:27 SP:F7 PPU:133,169 CYC:15174
C728  C8        INY                             A:00 X:02 Y:56 P:27 SP:F7 PPU:133,178 CYC:15177
C729  CA        DEX                             A:00 X:02 Y:57 P:25 SP:F7 PPU:133,184 CYC:15179
C72A  D0 E0     BNE $C70C                       A:00 X:01 Y:57 P:25 SP:F7 PPU:133,190 CYC:15181
C70C  68        PLA                             A:00 X:01 Y:57 P:25 SP:F7 PPU:133,199 CYC:15184
C70D  C9 55     CMP #$55                        A:55 X:01 Y:57 P:25 SP:F8 PPU:133,211 CYC:15188
C70F  F0 0A     BEQ $C71B                       A:55 X:01 Y:57 P:27 SP:F8 PPU:133,217 CYC:15190
C71B  68        PLA                             A:55 X:01 Y:57 P:27 SP:F8 PPU:133,226 CYC:15193
C71C  29 CB     AND #$CB                        A:34 X:01 Y:57 P:25 SP:F9 PPU:133,238 CYC:15197
C71E  C9 00     CMP #$00                        A:00 X:01 Y:57 P:27 SP:F9 PPU:133,244 CYC:15199
C720  F0 06     BEQ $C728                       A:00 X:01 Y:57 P:27 SP:F9 PPU:133,250 CYC:15201
C728  C8        INY                             A:00 X:01 Y:57 P:27 SP:F9 PPU:133,259 CYC:15204
C729  CA        DEX                             A:00 X:01 Y:58 P:25 SP:F9 PPU:133,265 CYC:15206
C72A  D0 E0     BNE $C70C                       A:00 X:00 Y:58 P:27 SP:F9 PPU:133,271 CYC:15208
C72C  60        RTS                             A:00 X:00 Y:58 P:27 SP:F9 PPU:133,277 CYC:15210
C6AF  60        RTS                             A:00 X:00 Y:58 P:27 SP:FB PPU:133,295 CYC:15216
C632  20 1E E5  JSR $E51E                       A:00 X:00 Y:58 P:27 SP:FD PPU:133,313 CYC:15222
E51E  A9 55     LDA #$55                        A:00 X:00 Y:58 P:27 SP:FB PPU:133,331 CYC:15228
E520  8D 80 05  STA $0580 = 00                  A:55 X:00 Y:58 P:25 SP:FB PPU:133,337 CYC:15230
E523  A9 AA     LDA #$AA                        A:55 X:00 Y:58 P:25 SP:FB PPU:134,  8 CYC:15234
E525  8D 32 04  STA $0432 = 00                  A:AA X:00 Y:58 P:A5 SP:FB PPU:134, 14 CYC:15236
E528  A9 80     LDA #$80                        A:AA X:00 Y:58 P:A5 SP:FB PPU:134, 26 CYC:15240
E52A  85 43     STA $43 = 00                    A:80 X:00 Y:58 P:A5 SP:FB PPU:134, 32 CYC:15242
E52C  A9 05     LDA #$05                        A:80 X:00 Y:58 P:A5 SP:FB PPU:134, 41 CYC:15245
E52E  85 44     STA $44 = 00                    A:05 X:00 Y:58 P:25 SP:FB PPU:134, 47 CYC:15247
E530  A9 32     LDA #$32                        A:05 X:00 Y:58 P:25 SP:FB PPU:134, 56 CYC:15250
E532  85 45     STA $45 = 00                    A:32 X:00 Y:58 P:25 SP:FB PPU:134, 62 CYC:15252
E534  A9 04     LDA #$04                        A:32 X:00 Y:58 P:25 SP:FB PPU:134, 71 CYC:15255
E536  85 46     STA $46 = 00                    A:04 X:00 Y:58 P:25 SP:FB PPU:134, 77 CYC:15257
E538  A2 03     LDX #$03                        A:04 X:00 Y:58 P:25 SP:FB PPU:134, 86 CYC:15260
E53A  A0 77     LDY #$77                        A:04 X:03 Y:58 P:25 SP:FB PPU:134, 92 CYC:15262
E53C  A9 FF     LDA #$FF                        A:04 X:03 Y:77 P:25 SP:FB PPU:134, 98 CYC:15264
E53E  85 01     STA $01 = FF                    A:FF X:03 Y:77 P:A5 SP:FB PPU:134,104 CYC:15266
E540  24 01     BIT $01 = FF                    A:FF X:03 Y:77 P:A5 SP:FB PPU:134,113 CYC:15269
E542  38        SEC                             A:FF X:03 Y:77 P:E5 SP:FB PPU:134,122 CYC:15272
E543  A9 00     LDA #$00                        A:FF X:03 Y:77 P:E5 SP:FB PPU:134,128 CYC:15274
E545  A3 40    *LAX ($40,X) @ 43 = 0580 = 55    A:00 X:03 Y:77 P:67 SP:FB PPU:134,134 CYC:15276
E547  EA        NOP                             A:55 X:55 Y:77 P:65 SP:FB PPU:134,152 CYC:15282
E548  EA        NOP                             A:55 X:55 Y:77 P:65 SP:FB PPU:134,158 CYC:15284
E549  EA        NOP                             A:55 X:55 Y:77 P:65 SP:FB PPU:134,164 CYC:15286
E54A  EA        NOP                             A:55 X:55 Y:77 P:65 SP:FB PPU:134,170 CYC:15288
E54B  F0 12     BEQ $E55F                       A:55 X:55 Y:77 P:65 SP:FB PPU:134,176 CYC:15290
E54D  30 10     BMI $E55F                       A:55 X:55 Y:77 P:65 SP:FB PPU:134,182 CYC:15292
E54F  50 0E     BVC $E55F                       A:55 X:55 Y:77 P:65 SP:FB PPU:134,188 CYC:15294
E551  90 0C     BCC $E55F                       A:55 X:55 Y:77 P:65 SP:FB PPU:134,194 CYC:15296
E553  C9 55     CMP #$55                        A:55 X:55 Y:77 P:65 SP:FB PPU:134,200 CYC:15298
E555  D0 08     BNE $E55F                       A:55 X:55 Y:77 P:67 SP:FB PPU:134,206 CYC:15300
E557  E0 55     CPX #$55                        A:55 X:55 Y:77 P:67 SP:FB PPU:134,212 CYC:15302
E559  D0 04     BNE $E55F                       A:55 X:55 Y:77 P:67 SP:FB PPU:134,218 CYC:15304
E55B  C0 77     CPY #$77                        A:55 X:55 Y:77 P:67 SP:FB PPU:134,224 CYC:15306
E55D  F0 04     BEQ $E563                       A:55 X:55 Y:77 P:67 SP:FB PPU:134,230 CYC:15308
E563  A2 05     LDX #$05                        A:55 X:55 Y:77 P:67 SP:FB PPU:134,239 CYC:15311
E565  A0 33     LDY #$33                        A:55 X:05 Y:77 P:65 SP:FB PPU:134,245 CYC:15313
E567  B8        CLV                             A:55 X:05 Y:33 P:65 SP:FB PPU:134,251 CYC:15315
E568  18        CLC                             A:55 X:05 Y:33 P:25 SP:FB PPU:134,257 CYC:15317
E569  A9 00     LDA #$00                        A:55 X:05 Y:33 P:24 SP:FB PPU:134,263 CYC:15319
E56B  A3 40    *LAX ($40,X) @ 45 = 0432 = AA    A:00 X:05 Y:33 P:26 SP:FB PPU:134,269 CYC:15321
E56D  EA        NOP                             A:AA X:AA Y:33 P:A4 SP:FB PPU:134,287 CYC:15327
E56E  EA        NOP                             A:AA X:AA Y:33 P:A4 SP:FB PPU:134,293 CYC:15329
E56F  EA        NOP                             A:AA X:AA Y:33 P:A4 SP:FB PPU:134,299 CYC:15331
E570  EA        NOP                             A:AA X:AA Y:33 P:A4 SP:FB PPU:134,305 CYC:15333
E571  F0 12     BEQ $E585                       A:AA X:AA Y:33 P:A4 SP:FB PPU:134,311 CYC:15335
E573  10 10     BPL $E585                       A:AA X:AA Y:33 P:A4 SP:FB PPU:134,317 CYC:15337
E575  70 0E     BVS $E585                       A:AA X:AA Y:33 P:A4 SP:FB PPU:134,323 CYC:15339
E577  B0 0C     BCS $E585                       A:AA X:AA Y:33 P:A4 SP:FB PPU:134,329 CYC:15341
E579  C9 AA     CMP #$AA                        A:AA X:AA Y:33 P:A4 SP:FB PPU:134,335 CYC:15343
E57B  D0 08     BNE $E585                       A:AA X:AA Y:33 P:27 SP:FB PPU:135,  0 CYC:15345
E57D  E0 AA     CPX #$AA                        A:AA X:AA Y:33 P:27 SP:FB PPU:135,  6 CYC:15347
E57F  D0 04     BNE $E585                       A:AA X:AA Y:33 P:27 SP:FB PPU:135, 12 CYC:15349
E581  C0 33     CPY #$33                        A:AA X:AA Y:33 P:27 SP:FB PPU:135, 18 CYC:15351
E583  F0 04     BEQ $E589                       A:AA X:AA Y:33 P:27 SP:FB PPU:135, 24 CYC:15353
E589  A9 87     LDA #$87                        A:AA X:AA Y:33 P:27 SP:FB PPU:135, 33 CYC:15356
E58B  85 67     STA $67 = 00                    A:87 X:AA Y:33 P:A5 SP:FB PPU:135, 39 CYC:15358
E58D  A9 32     LDA #$32                        A:87 X:AA Y:33 P:A5 SP:FB PPU:135, 48 CYC:15361
E58F  85 68     STA $68 = 00                    A:32 X:AA Y:33 P:25 SP:FB PPU:135, 54 CYC:15363
E591  A0 57     LDY #$57                        A:32 X:AA Y:33 P:25 SP:FB PPU:135, 63 CYC:15366
E593  24 01     BIT $01 = FF                    A:32 X:AA Y:57 P:25 SP:FB PPU:135, 69 CYC:15368
E595  38        SEC                             A:32 X:AA Y:57 P:E5 SP:FB PPU:135, 78 CYC:15371
E596  A9 00     LDA #$00                        A:32 X:AA Y:57 P:E5 SP:FB PPU:135, 84 CYC:15373
E598  A7 67    *LAX $67 = 87                    A:00 X:AA Y:57 P:67 SP:FB PPU:135, 90 CYC:15375
E59A  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:135, 99 CYC:15378
E59B  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:135,105 CYC:15380
E59C  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:135,111 CYC:15382
E59D  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:135,117 CYC:15384
E59E  F0 12     BEQ $E5B2                       A:87 X:87 Y:57 P:E5 SP:FB PPU:135,123 CYC:15386
E5A0  10 10     BPL $E5B2                       A:87 X:87 Y:57 P:E5 SP:FB PPU:135,129 CYC:15388
E5A2  50 0E     BVC $E5B2                       A:87 X:87 Y:57 P:E5 SP:FB PPU:135,135 CYC:15390
E5A4  90 0C     BCC $E5B2                       A:87 X:87 Y:57 P:E5 SP:FB PPU:135,141 CYC:15392
E5A6  C9 87     CMP #$87                        A:87 X:87 Y:57 P:E5 SP:FB PPU:135,147 CYC:15394
E5A8  D0 08     BNE $E5B2                       A:87 X:87 Y:57 P:67 SP:FB PPU:135,153 CYC:15396
E5AA  E0 87     CPX #$87                        A:87 X:87 Y:57 P:67 SP:FB PPU:135,159 CYC:15398
E5AC  D0 04     BNE $E5B2                       A:87 X:87 Y:57 P:67 SP:FB PPU:135,165 CYC:15400
E5AE  C0 57     CPY #$57                        A:87 X:87 Y:57 P:67 SP:FB PPU:135,171 CYC:15402
E5B0  F0 04     BEQ $E5B6                       A:87 X:87 Y:57 P:67 SP:FB PPU:135,177 CYC:15404
E5B6  A0 53     LDY #$53                        A:87 X:87 Y:57 P:67 SP:FB PPU:135,186 CYC:15407
E5B8  B8        CLV                             A:87 X:87 Y:53 P:65 SP:FB PPU:135,192 CYC:15409
E5B9  18        CLC                             A:87 X:87 Y:53 P:25 SP:FB PPU:135,198 CYC:15411
E5BA  A9 00     LDA #$00                        A:87 X:87 Y:53 P:24 SP:FB PPU:135,204 CYC:15413
E5BC  A7 68    *LAX $68 = 32                    A:00 X:87 Y:53 P:26 SP:FB PPU:135,210 CYC:15415
E5BE  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:135,219 CYC:15418
E5BF  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:135,225 CYC:15420
E5C0  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:135,231 CYC:15422
E5C1  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:135,237 CYC:15424
E5C2  F0 12     BEQ $E5D6                       A:32 X:32 Y:53 P:24 SP:FB PPU:135,243 CYC:15426
E5C4  30 10     BMI $E5D6                       A:32 X:32 Y:53 P:24 SP:FB PPU:135,249 CYC:15428
E5C6  70 0E     BVS $E5D6                       A:32 X:32 Y:53 P:24 SP:FB PPU:135,255 CYC:15430
E5C8  B0 0C     BCS $E5D6                       A:32 X:32 Y:53 P:24 SP:FB PPU:135,261 CYC:15432
E5CA  C9 32     CMP #$32                        A:32 X:32 Y:53 P:24 SP:FB PPU:135,267 CYC:15434
E5CC  D0 08     BNE $E5D6                       A:32 X:32 Y:53 P:27 SP:FB PPU:135,273 CYC:15436
E5CE  E0 32     CPX #$32                        A:32 X:32 Y:53 P:27 SP:FB PPU:135,279 CYC:15438
E5D0  D0 04     BNE $E5D6                       A:32 X:32 Y:53 P:27 SP:FB PPU:135,285 CYC:15440
E5D2  C0 53     CPY #$53                        A:32 X:32 Y:53 P:27 SP:FB PPU:135,291 CYC:15442
E5D4  F0 04     BEQ $E5DA                       A:32 X:32 Y:53 P:27 SP:FB PPU:135,297 CYC:15444
E5DA  A9 87     LDA #$87                        A:32 X:32 Y:53 P:27 SP:FB PPU:135,306 CYC:15447
E5DC  8D 77 05  STA $0577 = 00                  A:87 X:32 Y:53 P:A5 SP:FB PPU:135,312 CYC:15449
E5DF  A9 32     LDA #$32                        A:87 X:32 Y:53 P:A5 SP:FB PPU:135,324 CYC:15453
E5E1  8D 78 05  STA $0578 = 00                  A:32 X:32 Y:53 P:25 SP:FB PPU:135,330 CYC:15455
E5E4  A0 57     LDY #$57                        A:32 X:32 Y:53 P:25 SP:FB PPU:136,  1 CYC:15459
E5E6  24 01     BIT $01 = FF                    A:32 X:32 Y:57 P:25 SP:FB PPU:136,  7 CYC:15461
E5E8  38        SEC                             A:32 X:32 Y:57 P:E5 SP:FB PPU:136, 16 CYC:15464
E5E9  A9 00     LDA #$00                        A:32 X:32 Y:57 P:E5 SP:FB PPU:136, 22 CYC:15466
E5EB  AF 77 05 *LAX $0577 = 87                  A:00 X:32 Y:57 P:67 SP:FB PPU:136, 28 CYC:15468
E5EE  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 40 CYC:15472
E5EF  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 46 CYC:15474
E5F0  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 52 CYC:15476
E5F1  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 58 CYC:15478
E5F2  F0 12     BEQ $E606                       A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 64 CYC:15480
E5F4  10 10     BPL $E606                       A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 70 CYC:15482
E5F6  50 0E     BVC $E606                       A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 76 CYC:15484
E5F8  90 0C     BCC $E606                       A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 82 CYC:15486
E5FA  C9 87     CMP #$87                        A:87 X:87 Y:57 P:E5 SP:FB PPU:136, 88 CYC:15488
E5FC  D0 08     BNE $E606                       A:87 X:87 Y:57 P:67 SP:FB PPU:136, 94 CYC:15490
E5FE  E0 87     CPX #$87                        A:87 X:87 Y:57 P:67 SP:FB PPU:136,100 CYC:15492
E600  D0 04     BNE $E606                       A:87 X:87 Y:57 P:67 SP:FB PPU:136,106 CYC:15494
E602  C0 57     CPY #$57                        A:87 X:87 Y:57 P:67 SP:FB PPU:136,112 CYC:15496
E604  F0 04     BEQ $E60A                       A:87 X:87 Y:57 P:67 SP:FB PPU:136,118 CYC:15498
E60A  A0 53     LDY #$53                        A:87 X:87 Y:57 P:67 SP:FB PPU:136,127 CYC:15501
E60C  B8        CLV                             A:87 X:87 Y:53 P:65 SP:FB PPU:136,133 CYC:15503
E60D  18        CLC                             A:87 X:87 Y:53 P:25 SP:FB PPU:136,139 CYC:15505
E60E  A9 00     LDA #$00                        A:87 X:87 Y:53 P:24 SP:FB PPU:136,145 CYC:15507
E610  AF 78 05 *LAX $0578 = 32                  A:00 X:87 Y:53 P:26 SP:FB PPU:136,151 CYC:15509
E613  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:136,163 CYC:15513
E614  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:136,169 CYC:15515
E615  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:136,175 CYC:15517
E616  EA        NOP                             A:32 X:32 Y:53 P:24 SP:FB PPU:136,181 CYC:15519
E617  F0 12     BEQ $E62B                       A:32 X:32 Y:53 P:24 SP:FB PPU:136,187 CYC:15521
E619  30 10     BMI $E62B                       A:32 X:32 Y:53 P:24 SP:FB PPU:136,193 CYC:15523
E61B  70 0E     BVS $E62B                       A:32 X:32 Y:53 P:24 SP:FB PPU:136,199 CYC:15525
E61D  B0 0C     BCS $E62B                       A:32 X:32 Y:53 P:24 SP:FB PPU:136,205 CYC:15527
E61F  C9 32     CMP #$32                        A:32 X:32 Y:53 P:24 SP:FB PPU:136,211 CYC:15529
E621  D0 08     BNE $E62B                       A:32 X:32 Y:53 P:27 SP:FB PPU:136,217 CYC:15531
E623  E0 32     CPX #$32                        A:32 X:32 Y:53 P:27 SP:FB PPU:136,223 CYC:15533
E625  D0 04     BNE $E62B                       A:32 X:32 Y:53 P:27 SP:FB PPU:136,229 CYC:15535
E627  C0 53     CPY #$53                        A:32 X:32 Y:53 P:27 SP:FB PPU:136,235 CYC:15537
E629  F0 04     BEQ $E62F                       A:32 X:32 Y:53 P:27 SP:FB PPU:136,241 CYC:15539
E62F  A9 FF     LDA #$FF                        A:32 X:32 Y:53 P:27 SP:FB PPU:136,250 CYC:15542
E631  85 43     STA $43 = 80                    A:FF X:32 Y:53 P:A5 SP:FB PPU:136,256 CYC:15544
E633  A9 04     LDA #$04                        A:FF X:32 Y:53 P:A5 SP:FB PPU:136,265 CYC:15547
E635  85 44     STA $44 = 05                    A:04 X:32 Y:53 P:25 SP:FB PPU:136,271 CYC:15549
E637  A9 32     LDA #$32                        A:04 X:32 Y:53 P:25 SP:FB PPU:136,280 CYC:15552
E639  85 45     STA $45 = 32                    A:32 X:32 Y:53 P:25 SP:FB PPU:136,286 CYC:15554
E63B  A9 04     LDA #$04                        A:32 X:32 Y:53 P:25 SP:FB PPU:136,295 CYC:15557
E63D  85 46     STA $46 = 04                    A:04 X:32 Y:53 P:25 SP:FB PPU:136,301 CYC:15559
E63F  A9 55     LDA #$55                        A:04 X:32 Y:53 P:25 SP:FB PPU:136,310 CYC:15562
E641  8D 80 05  STA $0580 = 55                  A:55 X:32 Y:53 P:25 SP:FB PPU:136,316 CYC:15564
E644  A9 AA     LDA #$AA                        A:55 X:32 Y:53 P:25 SP:FB PPU:136,328 CYC:15568
E646  8D 32 04  STA $0432 = AA                  A:AA X:32 Y:53 P:A5 SP:FB PPU:136,334 CYC:15570
E649  A2 03     LDX #$03                        A:AA X:32 Y:53 P:A5 SP:FB PPU:137,  5 CYC:15574
E64B  A0 81     LDY #$81                        A:AA X:03 Y:53 P:25 SP:FB PPU:137, 11 CYC:15576
E64D  24 01     BIT $01 = FF                    A:AA X:03 Y:81 P:A5 SP:FB PPU:137, 17 CYC:15578
E64F  38        SEC                             A:AA X:03 Y:81 P:E5 SP:FB PPU:137, 26 CYC:15581
E650  A9 00     LDA #$00                        A:AA X:03 Y:81 P:E5 SP:FB PPU:137, 32 CYC:15583
E652  B3 43    *LAX ($43),Y = 04FF @ 0580 = 55  A:00 X:03 Y:81 P:67 SP:FB PPU:137, 38 CYC:15585
E654  EA        NOP                             A:55 X:55 Y:81 P:65 SP:FB PPU:137, 56 CYC:15591
E655  EA        NOP                             A:55 X:55 Y:81 P:65 SP:FB PPU:137, 62 CYC:15593
E656  EA        NOP                             A:55 X:55 Y:81 P:65 SP:FB PPU:137, 68 CYC:15595
E657  EA        NOP                             A:55 X:55 Y:81 P:65 SP:FB PPU:137, 74 CYC:15597
E658  F0 12     BEQ $E66C                       A:55 X:55 Y:81 P:65 SP:FB PPU:137, 80 CYC:15599
E65A  30 10     BMI $E66C                       A:55 X:55 Y:81 P:65 SP:FB PPU:137, 86 CYC:15601
E65C  50 0E     BVC $E66C                       A:55 X:55 Y:81 P:65 SP:FB PPU:137, 92 CYC:15603
E65E  90 0C     BCC $E66C                       A:55 X:55 Y:81 P:65 SP:FB PPU:137, 98 CYC:15605
E660  C9 55     CMP #$55                        A:55 X:55 Y:81 P:65 SP:FB PPU:137,104 CYC:15607
E662  D0 08     BNE $E66C                       A:55 X:55 Y:81 P:67 SP:FB PPU:137,110 CYC:15609
E664  E0 55     CPX #$55                        A:55 X:55 Y:81 P:67 SP:FB PPU:137,116 CYC:15611
E666  D0 04     BNE $E66C                       A:55 X:55 Y:81 P:67 SP:FB PPU:137,122 CYC:15613
E668  C0 81     CPY #$81                        A:55 X:55 Y:81 P:67 SP:FB PPU:137,128 CYC:15615
E66A  F0 04     BEQ $E670                       A:55 X:55 Y:81 P:67 SP:FB PPU:137,134 CYC:15617
E670  A2 05     LDX #$05                        A:55 X:55 Y:81 P:67 SP:FB PPU:137,143 CYC:15620
E672  A0 00     LDY #$00                        A:55 X:05 Y:81 P:65 SP:FB PPU:137,149 CYC:15622
E674  B8        CLV                             A:55 X:05 Y:00 P:67 SP:FB PPU:137,155 CYC:15624
E675  18        CLC                             A:55 X:05 Y:00 P:27 SP:FB PPU:137,161 CYC:15626
E676  A9 00     LDA #$00                        A:55 X:05 Y:00 P:26 SP:FB PPU:137,167 CYC:15628
E678  B3 45    *LAX ($45),Y = 0432 @ 0432 = AA  A:00 X:05 Y:00 P:26 SP:FB PPU:137,173 CYC:15630
E67A  EA        NOP                             A:AA X:AA Y:00 P:A4 SP:FB PPU:137,188 CYC:15635
E67B  EA        NOP                             A:AA X:AA Y:00 P:A4 SP:FB PPU:137,194 CYC:15637
E67C  EA        NOP                             A:AA X:AA Y:00 P:A4 SP:FB PPU:137,200 CYC:15639
E67D  EA        NOP                             A:AA X:AA Y:00 P:A4 SP:FB PPU:137,206 CYC:15641
E67E  F0 12     BEQ $E692                       A:AA X:AA Y:00 P:A4 SP:FB PPU:137,212 CYC:15643
E680  10 10     BPL $E692                       A:AA X:AA Y:00 P:A4 SP:FB PPU:137,218 CYC:15645
E682  70 0E     BVS $E692                       A:AA X:AA Y:00 P:A4 SP:FB PPU:137,224 CYC:15647
E684  B0 0C     BCS $E692                       A:AA X:AA Y:00 P:A4 SP:FB PPU:137,230 CYC:15649
E686  C9 AA     CMP #$AA                        A:AA X:AA Y:00 P:A4 SP:FB PPU:137,236 CYC:15651
E688  D0 08     BNE $E692                       A:AA X:AA Y:00 P:27 SP:FB PPU:137,242 CYC:15653
E68A  E0 AA     CPX #$AA                        A:AA X:AA Y:00 P:27 SP:FB PPU:137,248 CYC:15655
E68C  D0 04     BNE $E692                       A:AA X:AA Y:00 P:27 SP:FB PPU:137,254 CYC:15657
E68E  C0 00     CPY #$00                        A:AA X:AA Y:00 P:27 SP:FB PPU:137,260 CYC:15659
E690  F0 04     BEQ $E696                       A:AA X:AA Y:00 P:27 SP:FB PPU:137,266 CYC:15661
E696  A9 87     LDA #$87                        A:AA X:AA Y:00 P:27 SP:FB PPU:137,275 CYC:15664
E698  85 67     STA $67 = 87                    A:87 X:AA Y:00 P:A5 SP:FB PPU:137,281 CYC:15666
E69A  A9 32     LDA #$32                        A:87 X:AA Y:00 P:A5 SP:FB PPU:137,290 CYC:15669
E69C  85 68     STA $68 = 32                    A:32 X:AA Y:00 P:25 SP:FB PPU:137,296 CYC:15671
E69E  A0 57     LDY #$57                        A:32 X:AA Y:00 P:25 SP:FB PPU:137,305 CYC:15674
E6A0  24 01     BIT $01 = FF                    A:32 X:AA Y:57 P:25 SP:FB PPU:137,311 CYC:15676
E6A2  38        SEC                             A:32 X:AA Y:57 P:E5 SP:FB PPU:137,320 CYC:15679
E6A3  A9 00     LDA #$00                        A:32 X:AA Y:57 P:E5 SP:FB PPU:137,326 CYC:15681
E6A5  B7 10    *LAX $10,Y @ 67 = 87             A:00 X:AA Y:57 P:67 SP:FB PPU:137,332 CYC:15683
E6A7  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:138,  3 CYC:15687
E6A8  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:138,  9 CYC:15689
E6A9  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 15 CYC:15691
E6AA  EA        NOP                             A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 21 CYC:15693
E6AB  F0 12     BEQ $E6BF                       A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 27 CYC:15695
E6AD  10 10     BPL $E6BF                       A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 33 CYC:15697
E6AF  50 0E     BVC $E6BF                       A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 39 CYC:15699
E6B1  90 0C     BCC $E6BF                       A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 45 CYC:15701
E6B3  C9 87     CMP #$87                        A:87 X:87 Y:57 P:E5 SP:FB PPU:138, 51 CYC:15703
E6B5  D0 08     BNE $E6BF                       A:87 X:87 Y:57 P:67 SP:FB PPU:138, 57 CYC:15705
E6B7  E0 87     CPX #$87                        A:87 X:87 Y:57 P:67 SP:FB PPU:138, 63 CYC:15707
E6B9  D0 04     BNE $E6BF                       A:87 X:87 Y:57 P:67 SP:FB PPU:138, 69 CYC:15709
E6BB  C0 57     CPY #$57                        A:87 X:87 Y:57 P:67 SP:FB PPU:138, 75 CYC:15711
E6BD  F0 04     BEQ $E6C3                       A:87 X:87 Y:57 P:67 SP:FB PPU:138, 81 CYC:15713
E6C3  A0 FF     LDY #$FF                        A:87 X:87 Y:57 P:67 SP:FB PPU:138, 90 CYC:15716
E6C5  B8        CLV                             A:87 X:87 Y:FF P:E5 SP:FB PPU:138, 96 CYC:15718
E6C6  18        CLC                             A:87 X:87 Y:FF P:A5 SP:FB PPU:138,102 CYC:15720
E6C7  A9 00     LDA #$00                        A:87 X:87 Y:FF P:A4 SP:FB PPU:138,108 CYC:15722
E6C9  B7 69    *LAX $69,Y @ 68 = 32             A:00 X:87 Y:FF P:26 SP:FB PPU:138,114 CYC:15724
E6CB  EA        NOP                             A:32 X:32 Y:FF P:24 SP:FB PPU:138,126 CYC:15728
E6CC  EA        NOP                             A:32 X:32 Y:FF P:24 SP:FB PPU:138,132 CYC:15730
E6CD  EA        NOP                             A:32 X:32 Y:FF P:24 SP:FB PPU:138,138 CYC:15732
E6CE  EA        NOP                             A:32 X:32 Y:FF P:24 SP:FB PPU:138,144 CYC:15734
E6CF  F0 12     BEQ $E6E3                       A:32 X:32 Y:FF P:24 SP:FB PPU:138,150 CYC:15736
E6D1  30 10     BMI $E6E3                       A:32 X:32 Y:FF P:24 SP:FB PPU:138,156 CYC:15738
E6D3  70 0E     BVS $E6E3                       A:32 X:32 Y:FF P:24 SP:FB PPU:138,162 CYC:15740
E6D5  B0 0C     BCS $E6E3                       A:32 X:32 Y:FF P:24 SP:FB PPU:138,168 CYC:15742
E6D7  C9 32     CMP #$32                        A:32 X:32 Y:FF P:24 SP:FB PPU:138,174 CYC:15744
E6D9  D0 08     BNE $E6E3                       A:32 X:32 Y:FF P:27 SP:FB PPU:138,180 CYC:15746
E6DB  E0 32     CPX #$32                        A:32 X:32 Y:FF P:27 SP:FB PPU:138,186 CYC:15748
E6DD  D0 04     BNE $E6E3                       A:32 X:32 Y:FF P:27 SP:FB PPU:138,192 CYC:15750
E6DF  C0 FF     CPY #$FF                        A:32 X:32 Y:FF P:27 SP:FB PPU:138,198 CYC:15752
E6E1  F0 04     BEQ $E6E7                       A:32 X:32 Y:FF P:27 SP:FB PPU:138,204 CYC:15754
E6E7  A9 87     LDA #$87                        A:32 X:32 Y:FF P:27 SP:FB PPU:138,213 CYC:15757
E6E9  8D 87 05  STA $0587 = 00                  A:87 X:32 Y:FF P:A5 SP:FB PPU:138,219 CYC:15759
E6EC  A9 32     LDA #$32                        A:87 X:32 Y:FF P:A5 SP:FB PPU:138,231 CYC:15763
E6EE  8D 88 05  STA $0588 = 00                  A:32 X:32 Y:FF P:25 SP:FB PPU:138,237 CYC:15765
E6F1  A0 30     LDY #$30                        A:32 X:32 Y:FF P:25 SP:FB PPU:138,249 CYC:15769
E6F3  24 01     BIT $01 = FF                    A:32 X:32 Y:30 P:25 SP:FB PPU:138,255 CYC:15771
E6F5  38        SEC                             A:32 X:32 Y:30 P:E5 SP:FB PPU:138,264 CYC:15774
E6F6  A9 00     LDA #$00                        A:32 X:32 Y:30 P:E5 SP:FB PPU:138,270 CYC:15776
E6F8  BF 57 05 *LAX $0557,Y @ 0587 = 87         A:00 X:32 Y:30 P:67 SP:FB PPU:138,276 CYC:15778
E6FB  EA        NOP                             A:87 X:87 Y:30 P:E5 SP:FB PPU:138,288 CYC:15782
E6FC  EA        NOP                             A:87 X:87 Y:30 P:E5 SP:FB PPU:138,294 CYC:15784
E6FD  EA        NOP                             A:87 X:87 Y:30 P:E5 SP:FB PPU:138,300 CYC:15786
E6FE  EA        NOP                             A:87 X:87 Y:30 P:E5 SP:FB PPU:138,306 CYC:15788
E6FF  F0 12     BEQ $E713                       A:87 X:87 Y:30 P:E5 SP:FB PPU:138,312 CYC:15790
E701  10 10     BPL $E713                       A:87 X:87 Y:30 P:E5 SP:FB PPU:138,318 CYC:15792
E703  50 0E     BVC $E713                       A:87 X:87 Y:30 P:E5 SP:FB PPU:138,324 CYC:15794
E705  90 0C     BCC $E713                       A:87 X:87 Y:30 P:E5 SP:FB PPU:138,330 CYC:15796
E707  C9 87     CMP #$87                        A:87 X:87 Y:30 P:E5 SP:FB PPU:138,336 CYC:15798
E709  D0 08     BNE $E713                       A:87 X:87 Y:30 P:67 SP:FB PPU:139,  1 CYC:15800
E70B  E0 87     CPX #$87                        A:87 X:87 Y:30 P:67 SP:FB PPU:139,  7 CYC:15802
E70D  D0 04     BNE $E713                       A:87 X:87 Y:30 P:67 SP:FB PPU:139, 13 CYC:15804
E70F  C0 30     CPY #$30                        A:87 X:87 Y:30 P:67 SP:FB PPU:139, 19 CYC:15806
E711  F0 04     BEQ $E717                       A:87 X:87 Y:30 P:67 SP:FB PPU:139, 25 CYC:15808
E717  A0 40     LDY #$40                        A:87 X:87 Y:30 P:67 SP:FB PPU:139, 34 CYC:15811
E719  B8        CLV                             A:87 X:87 Y:40 P:65 SP:FB PPU:139, 40 CYC:15813
E71A  18        CLC                             A:87 X:87 Y:40 P:25 SP:FB PPU:139, 46 CYC:15815
E71B  A9 00     LDA #$00                        A:87 X:87 Y:40 P:24 SP:FB PPU:139, 52 CYC:15817
E71D  BF 48 05 *LAX $0548,Y @ 0588 = 32         A:00 X:87 Y:40 P:26 SP:FB PPU:139, 58 CYC:15819
E720  EA        NOP                             A:32 X:32 Y:40 P:24 SP:FB PPU:139, 70 CYC:15823
E721  EA        NOP                             A:32 X:32 Y:40 P:24 SP:FB PPU:139, 76 CYC:15825
E722  EA        NOP                             A:32 X:32 Y:40 P:24 SP:FB PPU:139, 82 CYC:15827
E723  EA        NOP                             A:32 X:32 Y:40 P:24 SP:FB PPU:139, 88 CYC:15829
E724  F0 12     BEQ $E738                       A:32 X:32 Y:40 P:24 SP:FB PPU:139, 94 CYC:15831
E726  30 10     BMI $E738                       A:32 X:32 Y:40 P:24 SP:FB PPU:139,100 CYC:15833
E728  70 0E     BVS $E738                       A:32 X:32 Y:40 P:24 SP:FB PPU:139,106 CYC:15835
E72A  B0 0C     BCS $E738                       A:32 X:32 Y:40 P:24 SP:FB PPU:139,112 CYC:15837
E72C  C9 32     CMP #$32                        A:32 X:32 Y:40 P:24 SP:FB PPU:139,118 CYC:15839
E72E  D0 08     BNE $E738                       A:32 X:32 Y:40 P:27 SP:FB PPU:139,124 CYC:15841
E730  E0 32     CPX #$32                        A:32 X:32 Y:40 P:27 SP:FB PPU:139,130 CYC:15843
E732  D0 04     BNE $E738                       A:32 X:32 Y:40 P:27 SP:FB PPU:139,136 CYC:15845
E734  C0 40     CPY #$40                        A:32 X:32 Y:40 P:27 SP:FB PPU:139,142 CYC:15847
E736  F0 04     BEQ $E73C                       A:32 X:32 Y:40 P:27 SP:FB PPU:139,148 CYC:15849
E73C  60        RTS                             A:32 X:32 Y:40 P:27 SP:FB PPU:139,157 CYC:15852
C635  20 3D E7  JSR $E73D                       A:32 X:32 Y:40 P:27 SP:FD PPU:139,175 CYC:15858
E73D  A9 C0     LDA #$C0                        A:32 X:32 Y:40 P:27 SP:FB PPU:139,193 CYC:15864
E73F  85 01     STA $01 = FF                    A:C0 X:32 Y:40 P:A5 SP:FB PPU:139,199 CYC:15866
E741  A9 00     LDA #$00                        A:C0 X:32 Y:40 P:A5 SP:FB PPU:139,208 CYC:15869
E743  8D 89 04  STA $0489 = 00                  A:00 X:32 Y:40 P:27 SP:FB PPU:139,214 CYC:15871
E746  A9 89     LDA #$89                        A:00 X:32 Y:40 P:27 SP:FB PPU:139,226 CYC:15875
E748  85 60     STA $60 = 00                    A:89 X:32 Y:40 P:A5 SP:FB PPU:139,232 CYC:15877
E74A  A9 04     LDA #$04                        A:89 X:32 Y:40 P:A5 SP:FB PPU:139,241 CYC:15880
E74C  85 61     STA $61 = 00                    A:04 X:32 Y:40 P:25 SP:FB PPU:139,247 CYC:15882
E74E  A0 44     LDY #$44                        A:04 X:32 Y:40 P:25 SP:FB PPU:139,256 CYC:15885
E750  A2 17     LDX #$17                        A:04 X:32 Y:44 P:25 SP:FB PPU:139,262 CYC:15887
E752  A9 3E     LDA #$3E                        A:04 X:17 Y:44 P:25 SP:FB PPU:139,268 CYC:15889
E754  24 01     BIT $01 = C0                    A:3E X:17 Y:44 P:25 SP:FB PPU:139,274 CYC:15891
E756  18        CLC                             A:3E X:17 Y:44 P:E7 SP:FB PPU:139,283 CYC:15894
E757  83 49    *SAX ($49,X) @ 60 = 0489 = 00    A:3E X:17 Y:44 P:E6 SP:FB PPU:139,289 CYC:15896
E759  EA        NOP                             A:3E X:17 Y:44 P:E6 SP:FB PPU:139,307 CYC:15902
E75A  EA        NOP                             A:3E X:17 Y:44 P:E6 SP:FB PPU:139,313 CYC:15904
E75B  EA        NOP                             A:3E X:17 Y:44 P:E6 SP:FB PPU:139,319 CYC:15906
E75C  EA        NOP                             A:3E X:17 Y:44 P:E6 SP:FB PPU:139,325 CYC:15908
E75D  D0 19     BNE $E778                       A:3E X:17 Y:44 P:E6 SP:FB PPU:139,331 CYC:15910
E75F  B0 17     BCS $E778                       A:3E X:17 Y:44 P:E6 SP:FB PPU:139,337 CYC:15912
E761  50 15     BVC $E778                       A:3E X:17 Y:44 P:E6 SP:FB PPU:140,  2 CYC:15914
E763  10 13     BPL $E778                       A:3E X:17 Y:44 P:E6 SP:FB PPU:140,  8 CYC:15916
E765  C9 3E     CMP #$3E                        A:3E X:17 Y:44 P:E6 SP:FB PPU:140, 14 CYC:15918
E767  D0 0F     BNE $E778                       A:3E X:17 Y:44 P:67 SP:FB PPU:140, 20 CYC:15920
E769  C0 44     CPY #$44                        A:3E X:17 Y:44 P:67 SP:FB PPU:140, 26 CYC:15922
E76B  D0 0B     BNE $E778                       A:3E X:17 Y:44 P:67 SP:FB PPU:140, 32 CYC:15924
E76D  E0 17     CPX #$17                        A:3E X:17 Y:44 P:67 SP:FB PPU:140, 38 CYC:15926
E76F  D0 07     BNE $E778                       A:3E X:17 Y:44 P:67 SP:FB PPU:140, 44 CYC:15928
E771  AD 89 04  LDA $0489 = 16                  A:3E X:17 Y:44 P:67 SP:FB PPU:140, 50 CYC:15930
E774  C9 16     CMP #$16                        A:16 X:17 Y:44 P:65 SP:FB PPU:140, 62 CYC:15934
E776  F0 04     BEQ $E77C                       A:16 X:17 Y:44 P:67 SP:FB PPU:140, 68 CYC:15936
E77C  A0 44     LDY #$44                        A:16 X:17 Y:44 P:67 SP:FB PPU:140, 77 CYC:15939
E77E  A2 7A     LDX #$7A                        A:16 X:17 Y:44 P:65 SP:FB PPU:140, 83 CYC:15941
E780  A9 66     LDA #$66                        A:16 X:7A Y:44 P:65 SP:FB PPU:140, 89 CYC:15943
E782  38        SEC                             A:66 X:7A Y:44 P:65 SP:FB PPU:140, 95 CYC:15945
E783  B8        CLV                             A:66 X:7A Y:44 P:65 SP:FB PPU:140,101 CYC:15947
E784  83 E6    *SAX ($E6,X) @ 60 = 0489 = 16    A:66 X:7A Y:44 P:25 SP:FB PPU:140,107 CYC:15949
E786  EA        NOP                             A:66 X:7A Y:44 P:25 SP:FB PPU:140,125 CYC:15955
E787  EA        NOP                             A:66 X:7A Y:44 P:25 SP:FB PPU:140,131 CYC:15957
E788  EA        NOP                             A:66 X:7A Y:44 P:25 SP:FB PPU:140,137 CYC:15959
E789  EA        NOP                             A:66 X:7A Y:44 P:25 SP:FB PPU:140,143 CYC:15961
E78A  F0 19     BEQ $E7A5                       A:66 X:7A Y:44 P:25 SP:FB PPU:140,149 CYC:15963
E78C  90 17     BCC $E7A5                       A:66 X:7A Y:44 P:25 SP:FB PPU:140,155 CYC:15965
E78E  70 15     BVS $E7A5                       A:66 X:7A Y:44 P:25 SP:FB PPU:140,161 CYC:15967
E790  30 13     BMI $E7A5                       A:66 X:7A Y:44 P:25 SP:FB PPU:140,167 CYC:15969
E792  C9 66     CMP #$66                        A:66 X:7A Y:44 P:25 SP:FB PPU:140,173 CYC:15971
E794  D0 0F     BNE $E7A5                       A:66 X:7A Y:44 P:27 SP:FB PPU:140,179 CYC:15973
E796  C0 44     CPY #$44                        A:66 X:7A Y:44 P:27 SP:FB PPU:140,185 CYC:15975
E798  D0 0B     BNE $E7A5                       A:66 X:7A Y:44 P:27 SP:FB PPU:140,191 CYC:15977
E79A  E0 7A     CPX #$7A                        A:66 X:7A Y:44 P:27 SP:FB PPU:140,197 CYC:15979
E79C  D0 07     BNE $E7A5                       A:66 X:7A Y:44 P:27 SP:FB PPU:140,203 CYC:15981
E79E  AD 89 04  LDA $0489 = 62                  A:66 X:7A Y:44 P:27 SP:FB PPU:140,209 CYC:15983
E7A1  C9 62     CMP #$62                        A:62 X:7A Y:44 P:25 SP:FB PPU:140,221 CYC:15987
E7A3  F0 04     BEQ $E7A9                       A:62 X:7A Y:44 P:27 SP:FB PPU:140,227 CYC:15989
E7A9  A9 FF     LDA #$FF                        A:62 X:7A Y:44 P:27 SP:FB PPU:140,236 CYC:15992
E7AB  85 49     STA $49 = 00                    A:FF X:7A Y:44 P:A5 SP:FB PPU:140,242 CYC:15994
E7AD  A0 44     LDY #$44                        A:FF X:7A Y:44 P:A5 SP:FB PPU:140,251 CYC:15997
E7AF  A2 AA     LDX #$AA                        A:FF X:7A Y:44 P:25 SP:FB PPU:140,257 CYC:15999
E7B1  A9 55     LDA #$55                        A:FF X:AA Y:44 P:A5 SP:FB PPU:140,263 CYC:16001
E7B3  24 01     BIT $01 = C0                    A:55 X:AA Y:44 P:25 SP:FB PPU:140,269 CYC:16003
E7B5  18        CLC                             A:55 X:AA Y:44 P:E5 SP:FB PPU:140,278 CYC:16006
E7B6  87 49    *SAX $49 = FF                    A:55 X:AA Y:44 P:E4 SP:FB PPU:140,284 CYC:16008
E7B8  EA        NOP                             A:55 X:AA Y:44 P:E4 SP:FB PPU:140,293 CYC:16011
E7B9  EA        NOP                             A:55 X:AA Y:44 P:E4 SP:FB PPU:140,299 CYC:16013
E7BA  EA        NOP                             A:55 X:AA Y:44 P:E4 SP:FB PPU:140,305 CYC:16015
E7BB  EA        NOP                             A:55 X:AA Y:44 P:E4 SP:FB PPU:140,311 CYC:16017
E7BC  F0 18     BEQ $E7D6                       A:55 X:AA Y:44 P:E4 SP:FB PPU:140,317 CYC:16019
E7BE  B0 16     BCS $E7D6                       A:55 X:AA Y:44 P:E4 SP:FB PPU:140,323 CYC:16021
E7C0  50 14     BVC $E7D6                       A:55 X:AA Y:44 P:E4 SP:FB PPU:140,329 CYC:16023
E7C2  10 12     BPL $E7D6                       A:55 X:AA Y:44 P:E4 SP:FB PPU:140,335 CYC:16025
E7C4  C9 55     CMP #$55                        A:55 X:AA Y:44 P:E4 SP:FB PPU:141,  0 CYC:16027
E7C6  D0 0E     BNE $E7D6                       A:55 X:AA Y:44 P:67 SP:FB PPU:141,  6 CYC:16029
E7C8  C0 44     CPY #$44                        A:55 X:AA Y:44 P:67 SP:FB PPU:141, 12 CYC:16031
E7CA  D0 0A     BNE $E7D6                       A:55 X:AA Y:44 P:67 SP:FB PPU:141, 18 CYC:16033
E7CC  E0 AA     CPX #$AA                        A:55 X:AA Y:44 P:67 SP:FB PPU:141, 24 CYC:16035
E7CE  D0 06     BNE $E7D6                       A:55 X:AA Y:44 P:67 SP:FB PPU:141, 30 CYC:16037
E7D0  A5 49     LDA $49 = 00                    A:55 X:AA Y:44 P:67 SP:FB PPU:141, 36 CYC:16039
E7D2  C9 00     CMP #$00                        A:00 X:AA Y:44 P:67 SP:FB PPU:141, 45 CYC:16042
E7D4  F0 04     BEQ $E7DA                       A:00 X:AA Y:44 P:67 SP:FB PPU:141, 51 CYC:16044
E7DA  A9 00     LDA #$00                        A:00 X:AA Y:44 P:67 SP:FB PPU:141, 60 CYC:16047
E7DC  85 56     STA $56 = 00                    A:00 X:AA Y:44 P:67 SP:FB PPU:141, 66 CYC:16049
E7DE  A0 58     LDY #$58                        A:00 X:AA Y:44 P:67 SP:FB PPU:141, 75 CYC:16052
E7E0  A2 EF     LDX #$EF                        A:00 X:AA Y:58 P:65 SP:FB PPU:141, 81 CYC:16054
E7E2  A9 66     LDA #$66                        A:00 X:EF Y:58 P:E5 SP:FB PPU:141, 87 CYC:16056
]]