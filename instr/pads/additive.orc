;Additive patch by Paul Batchelor
iwav ftgenonce 0, 0, 8192, 9, 
1, 1, 0,
2, 1, 0.3,
3, 0.5, -1,
5, 0.5, 0.8,
7, 0.3, 0.8

a1 poscil3 AMPVAR, CPSVAR, iwav
a2 poscil3 AMPVAR, CPSVAR + 2, iwav
a3 poscil3 AMPVAR, CPSVAR + 5, iwav
a1L, a1R pan2 a1, 0.5 + lfo(0.3, 0.2)
a2L, a2R pan2 a2, 0.5 - lfo(0.3, 0.2)
a3 = a3 * (0.5 + lfo(0.5, 0.1)) 
aenv transegr 0, 3, 3, 1, 1, 0, 0


aoutL = sum(\
a1L, a2L, \
a3 ) * aenv * 0.25

aoutR = sum(\
a1R, a2R, \
a3 ) * aenv * 0.25
aL = aoutL
aR = aoutR
