#!/usr/bin/env python3
"""Displays temperature,current,voltage for CryoSub.
"""

import os

import logging

import sys 

import cryosubDB

import time

# set up logging
logFileName = "/home/phdgc/cryosub_logfile.log"
logging.basicConfig(filename=logFileName, level=logging.INFO)
logging.info("""Display for CryoSub""")

# connect to database
db = cryosubDB.cryosubDB()

# main loop
pollingInterval = 5.0

while True:

    measuredValues = db.readCurrentMeasuredData();

    print(measuredValues)
    
    time.sleep(pollingInterval)
