import json
import sys
data = json.load(open(sys.argv[1]))
notes = data["notes"]

instr = "KEYS"
time = 0
dur = 10
offset = 60
for n in notes: 
    print("i %s %g %g %g %g" % (instr, time, dur, n + offset, 0.1))
    time += 0.1
