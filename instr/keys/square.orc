;Square by Paul Batchelor
a1 vco2 AMPVAR, CPSVAR, 2, 0.1
a1 = moogvcf(a1, 1500, 0.7) * mxadsr(0.01, 0.1, 0.05, 2)
aL = a1
aR = a1
