#!/usr/bin/env python3
"""User interface for CryoSub.

Read required voltage from stdin. Write demand voltage to database
"""

import os

import logging

import sys 

import cryosubDB

# set up logging
logFileName = os.getenv("HOME") + "/cryosub_logfile.log"
logging.basicConfig(filename=logFileName, level=logging.INFO)
logging.info("""UI for CryoSub""")

maxCurrent = 2.0

# connect to database
db = cryosubDB.cryosubDB()

# main loop

print("Enter desired voltage (q to exit , s to start a run, t to terminate a run)")

for line in sys.stdin: 
    if 'q' == line.rstrip(): 
        break
    elif line == 's':
        print ("Got start run command. Doing nothing")
    elif line == 't':
        print ("Got terminate run command. Doing nothing")

    try:
        demandVoltage = float(line)
        print(f'Setting demand voltage to: {demandVoltage}') 
        db.writeDemandValues(maxCurrent,demandVoltage)
    except:
        print(f'Invalid input: {line}')
        
print("Exit") 


