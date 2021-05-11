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
#def testAction(db,psu,temp):
def testAction():

    # read the desired voltage and current.
    [id,date,demandCurrent,demandVoltage] = db.readDemandValues()

    measuredTemperature = tsens.getTemp()
    logging.info("Temp = %f"%(measuredTemperature));

    psuControl = False
    # Set the PSU voltage/current
    if psuControl:
        psu.setCurrent(demandCurrent)    
        psu.setVoltage(demandVoltage)

        measuredVoltage = psu.getVoltage()
        measuredCurrent = psu.getCurrent()
    else:
        measuredVoltage = 0.0
        measuredCurrent = 0.0

    # write the current state into the database
    db.writeMeasuredValues(demandCurrent,demandVoltage,measuredCurrent,measuredVoltage,measuredTemperature)
    
    #print("Hello")

#################################################################

psuGpibAddr = 1
psuOutputChan = 2
psu = cryosubPSU.cryosubPSU(psuGpibAddr,psuOutputChan)

tsens = cryosubTemp.cryosubTemp()

db = cryosubDB.cryosubDB()

scheduler = BlockingScheduler()

logging.info("Setting scheduler")
#job = scheduler.add_job(testAction(db,psu,tsens), trigger='cron', second='*/5')
job = scheduler.add_job(testAction, trigger='cron', second='*/5')
scheduler.print_jobs()

logging.info("Pausing main thread by starting blocking scheduler")
scheduler.start()
logging.info("Whoops.... schduler.start didn't block")
