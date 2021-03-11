#!/usr/bin/env python3
"""Main control loop for CryoSub.

Uses schduler to run a function that reads demand values for
heater voltage and records measured current, voltage and temperature
"""

import os
#import signal
import os

import logging

from apscheduler.schedulers.background import BackgroundScheduler

from apscheduler.schedulers.background import BlockingScheduler

import cryosubTemp
import cryosubPSU
import cryosubDB

logFileName = "/home/phdgc/cryosub_logfile.log"

logging.basicConfig(filename=logFileName, level=logging.INFO)

logging.info("""Logile for temp/current/voltage montoring for CryoSub""")

#################################################################
def testAction(db,psu,temp):

    # read the desired voltage and current.
    [id,date,demandCurrent,demandVoltage] = db.readDemandValues()

    measuredTemperature = temp.getTemp()
    logging.info("Temp = %f"%(measuredTemperature));

    # Set the PSU voltage/current
    psu.setCurrent(demandCurrent)    
    psu.setVoltage(demandVoltage)

    measuredVoltage = psu.getVoltage()
    measuredCurrent = psu.getCurrent()

    # write the current state into the database
    writeMeasuredValues(demandCurrent,demandVoltage,measuredCurrent,measuredVoltage,measuredTemperature)
    
    #print("Hello")

#################################################################

psuGpibAddr = 2
psuOutputChan = 0
psu = cryosubPSU.cryosubPSU(psuGpibAddr,psuOutputChan)

tsens = cryosubTemp.cryosubTemp()

db = cryosubDB.cryosubDB()

scheduler = BlockingScheduler()

logging.info("Setting scheduler")
job = scheduler.add_job(testAction(db,psu,tsens), trigger='cron', second='*/5')
scheduler.print_jobs()

logging.info("Pausing main thread by starting blocking scheduler")
scheduler.start()
logging.info("Whoops.... schduler.start didn't block")
