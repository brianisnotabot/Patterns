;Square 2 by Paul Batchelor
;A little bit more squar-y than the first one
a1 vco2 AMPVAR, CPSVAR, 2, 0.5
a1 = moogvcf(a1, 3000, 0.1) * linsegr(0.001, 0.01, 1, 0.2, 0, 0.2, 0)
aL = a1
aR = a1
