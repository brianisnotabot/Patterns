;a1 foscili iamp, icps, 2, 3, 1, gisine
a1 = moogvcf(vco2(AMPVAR, CPSVAR, 2, 0.5 + lfo(0.2, 0.1)), linseg(300, 4, 1000), 0.1)
aL = a1 * linsegr(0, 0.5, 1, 3, 0)
aR = aL
