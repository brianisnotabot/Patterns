;straight-ahead FM patch... Paul's fave ;)
a1 foscili AMPVAR, CPSVAR, 1, 1, 1, ftgenonce(0, 0, 4096, 10, 1)
aL = a1 * linsegr(0,0.001, 1, 2, 0, 0.05, 0) * 0.7
aR = aL
