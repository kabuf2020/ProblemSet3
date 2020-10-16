#!/usr/bin/env python

##Get file handle
aguaLevel = open("/blue/bsc4452/share/Class_Files/data/CO-OPS__8729108__wl.csv")

##Warning system
#Instantiate loop variables
counter = 0
lastLine = 0

for line in aguaLevel:
    counter = counter + 1
    if counter >= 2:
        if "," in line[17]:
            lastline = 0
            continue
        else:
            if lastLine == 0:
                lastLine = float(line[17:22])
                continue
            elif lastLine > 0:
                if abs(float(line[17:22]) - lastLine) > 0.25:
                    print("Warning! Rise of greater than 0.25.") #print warning if rise greater than 0.25


##Get file handle
aguaLevel = open("/blue/bsc4452/share/Class_Files/data/CO-OPS__8729108__wl.csv")

#Instantiate loop variables
counter = 0

for line in aguaLevel:
    counter = counter + 1
    if counter >= 2:
        if line[17] != ",":
            if float(line[17:22]) > 5.0:
                print("Warning! Water level is above 5.0.") #print warning if water level rises

    if line[17] == ",":
        print("Warning! No reading received.")


