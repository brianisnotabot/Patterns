isine ftgenonce 0, 0, 4096, 10, 1
iamp = p5
kcps_1 = cpsmidinn(p4 + jitter(0.1, 0.1, 5)) 
kcps_2 = cpsmidinn(p4 + 0.01 + jitter(0.1, 0.1, 5))
kcps_3 = cpsmidinn(p4 - 0.2 + jitter(0.1, 0.1, 5))
asub oscili iamp * linseg(0, 8, 0.3), cpsmidinn(p4) * 3, isine
a1 gbuzz iamp, kcps_1, 20, 1, linseg(0, 3, 0.4), isine
a2 gbuzz iamp, kcps_2, 20, 1, linseg(0, 3, 0.4), isine
a3 gbuzz iamp, kcps_3, 20, 1, linseg(0, 3, 0.4), isine
a2L, a2R pan2 a2, 0.5 + lfo(0.3, 0.1)
a3L, a3R pan2 a3, 0.2 - lfo(0.3, 0.09)
aL = sum(a1, a2L, a3L, asub) * 0.3 * linsegr(0, 1, 1, 3, 0)
aR = sum(a1, a2R, a3R, asub) * 0.3 * linsegr(0, 1, 1, 3, 0)
CSOUNDOUT
