#!/usr/bin/env python

##Get file handle
aguaLevel = open("/blue/bsc4452/share/Class_Files/data/CO-OPS__8729108__wl.csv")

##Read through file for highest value
bigboi = 0
bigboidt = 0
counter = 0

for line in aguaLevel:
    counter = counter + 1
    if counter == 2:
        bigboi = float(line[17:22]) #set water level column value to variable bigboi
        bigboidt = line[0:15] #store date and time value of bigboi
    elif counter > 2:
        if line[17] != ",":
            if float(line[17:22]) > bigboi:
                bigboi = float(line[17:22]) #change bigboi to water level column value of current line if larger th$
                bigboidt = line[0:16] #store date and time value of current bigboi value

print(f'The highest water level was: {bigboi} at {bigboidt}')
