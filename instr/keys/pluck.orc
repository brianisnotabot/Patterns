icps_1 = cpsmidinn(NNVAR) * 0.5
a1 pluck AMPVAR, icps_1, icps_1, 0, 6
a1 = butlp(a1, 2000)

icps_2 = cpsmidinn(NNVAR + 0.01) * 0.5
a2 pluck AMPVAR, icps_2, icps_2, 0, 6
a2 = butlp(a2, 3000)

icps_3 = cpsmidinn(NNVAR - 0.01) * 0.5
a3 pluck AMPVAR, icps_3, icps_3, 0, 6
a3 = butlp(a3, 4000)

aout sum a1, a2, a3
aL = aout * linsegr(0.8, 1, 0) * linseg(0, 0.015, 1)
aR = aL
