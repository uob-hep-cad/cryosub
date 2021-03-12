#!/usr/bin/env python3
"""User interface for CryoSub.

Read required voltage from stdin. Write demand voltage to database
"""

import os

import logging

import sys 

import cryosubDB

# set up logging
logFileName = "/home/phdgc/cryosub_logfile.log"
logging.basicConfig(filename=logFileName, level=logging.INFO)
logging.info("""UI for CryoSub""")

maxCurrent = 0.5

# connect to database
db = cryosubDB.cryosubDB()

# main loop

print("Enter desired voltage (q to exit)")

for line in sys.stdin: 
    if 'q' == line.rstrip(): 
        break

    try:
        demandVoltage = float(line)
        print(f'Setting demand voltage to: {demandVoltage}') 
        db.writeDemandValues(maxCurrent,demandVoltage)
    except:
        print(f'Invalid input: {line}')
        
print("Exit") 


