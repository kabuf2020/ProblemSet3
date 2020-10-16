#!/usr/bin/env python

##Get file handle
aguaLevel = open("/blue/bsc4452/share/Class_Files/data/CO-OPS__8729108__wl.csv")

##Look for highest, lowest and average water level
#Instantiate loop variables
bigboi = 0
bigboidt = 0
smolone = 0
smolonedt = 0
total = 0
denom = 1
avg = 0
counter = 0

for line in aguaLevel:
    counter = counter + 1 #Keep track of line number
    if counter == 2: #Skip first line b/c header
        bigboi = float(line[17:22])
        bigboidt = line[0:16]
        smolone = float(line[17:22])
        smolonedt = line[0:16]
    
    elif counter > 2: #start comparing first water level value with all following values
        if line[17] != ",":
            if float(line[17:22]) > bigboi:
                bigboi = float(line[17:22])
                dtbigboi = line[0:16]

            if float(line[17:22]) < smolone:
                smolone = float(line[17:22])
                smolonedt = line[0:16]


            total = total + float(line[17:22]) #sum up water levels in file
            denom = denom + 1 #counter number of lines with water level values

    #if line == len(aguaLevel): #once loop reaches end of file, calculate average
        #avg = total/denom

avg = total/denom

print(f"The highest water level was: {bigboi} at {bigboidt}")
print(f"The lowest water level was: {smolone} at {smolonedt}")
print(f"The average water level was: {avg}")

