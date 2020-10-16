#!/usr/bin/env python

##Get file handle
aguaLevel = open("/blue/bsc4452/share/Class_Files/data/CO-OPS__8729108__wl.csv")

##Looking for fastest rise in water level
#Instantiate loop variables
rise = 0
risedt = 0
counter = 0
lastLine = 0

for line in aguaLevel: #loop through stopping at the second to last line
    counter = counter + 1
    if counter == 2:
        #rise = (float(line[17:22]+1)) - float(line[17:22])
        #risedt = line[0:16] + 1
        lastLine = float(line[17:22])
    elif counter > 2:
        if "," in line[17]:
            lastline = 0 
            continue
        else:
            if lastLine == 0:
                lastLine = float(line[17:22])
                continue
            elif lastLine > 0:
                if abs(float(line[17:22]) - lastLine) > rise:
                    rise = abs(float(line[17:22]) - lastLine)
                    risedt = line[0:16]
                    lastLine = float(line[17:22])
                else:
                    lastLine = float(line[17:22])

rise = round(rise, 3)
print(f"The largest rise in water level was: {rise} at {risedt}")

