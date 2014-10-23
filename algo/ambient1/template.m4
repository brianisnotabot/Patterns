define(SR,96000)dnl
define(KSMPS,1)dnl
define(CHANNUM, 2)dnl
define(CSOUNDOUT,outs aL`,' aR)dnl
define(OUTFILE,`test.wav')dnl
define(BUFFER_SIZE,4096)dnl
define(KEYS,1)dnl
define(`MAKESINE')dnl
<CsoundSynthesizer>
<CsOptions>
-o OUTFILE -d
-B BUFFER_SIZE
-b BUFFER_SIZE
-3
</CsOptions>
<CsInstruments>
sr = SR
ksmps = KSMPS
nchnls = CHANNUM
0dbfs = 1

ifdef(`MAKESINE',`gisine ftgen 0, 0, 4096, 10, 1')

instr KEYS
include(ORC_KEYS)dnl
endin
</CsInstruments>
<CsScore>
include(SCO)dnl
</CsScore>
</CsoundSynthesizer>
