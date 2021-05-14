#!/usr/bin/env python3
"""User interface for CryoSub.

Read required voltage from stdin. Write demand voltage to database
"""

import os

import logging

import sys 

import cryosubDB
 
import time

# set up logging
logFileName = os.getenv("HOME") + "/cryosub_logfile.log"
logging.basicConfig(filename=logFileName, level=logging.INFO)
logging.info("""Schedule voltage changes""")

maxCurrent = 0.5

# connect to database
db = cryosubDB.cryosubDB()

# main loop

temps = [1.73205, 2.44949, 3., 3.4641, 3.87298, 4.24264, 4.58258, \
4.89898, 5.19615, 5.47723, 5.74456, 6., 6.245, 6.48074, 6.7082, \
         6.9282, 7.14143, 7.34847, 7.54983, 7.74597, 0.0]

delay = 1800

print("Starting loop")

for temp in temps: 
    demandVoltage = temp
    print(f'Setting demand voltage to: {demandVoltage}')
    db.writeDemandValues(maxCurrent,demandVoltage)
    logging.info(f'Setting demand voltage to: {demandVoltage}')

    time.sleep(delay)

print("Exit") 
logging.info(f'Exiting CryosubSchedule')



