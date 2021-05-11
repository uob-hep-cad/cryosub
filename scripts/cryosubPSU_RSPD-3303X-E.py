import logging
import os, sys

import usbtmc
import time

class cryosubPSU:
    """Functions for accessing TTi PL330TP PSU"""
    
    def __init__(self,PSUAddress,outputChannel):
        """Set up connection to PSU"""

        self.con = usbtmc.Instrument(0x0483, 0x7540)

        self.con.write_raw(b"*IDN?")
        time.sleep(0.1) # Muhahahaha
        id = self.con.read_raw()

        logging.info("PSU ID = %s"%(id.decode('utf-8')))

        self.outputChannel = outputChannel
        
        
    def getVoltage(self):
        """Get output voltage from PSU"""
        command = b"VOLT? CH%d"%(self.outputChannel)

        logging.info("getVoltage command = %s"%(command).decode("utf-8"))
        
        self.con.write_raw(command)

        time.sleep(0.1) # Muhahahaha

        result = self.con.read_raw().decode("utf-8").strip()

        str = result.decode('ascii')

        num = float(str.strip("\n").strip("V"))

        logging.info("getVoltage result = %f"%(num))
        return num

    
    def setVoltage(self,voltage):
        """Set demand voltage (and wait to settle afterwards)"""
        command = "V%dV %f"%(self.outputChannel,voltage)
        logging.info("setVoltage command = %s"%(command))
        gpib.write(self.con,command)
        command = "OP%d 1.0"%(self.outputChannel)
        gpib.write(self.con, command)
        logging.info("turning on PSU with command = %s"%(command))

    def getCurrent(self):
        """Get output current from PSU"""
        command = "I%dO?"%(self.outputChannel)
        gpib.write(self.con,command)

        result=gpib.read(self.con,1000)

        str = result.decode('ascii')

        num = float(str.strip("\n").strip("A"))
        logging.info("getCurrent result = %f"%(num))
                
        return num
    

    def setCurrent(self,current):
        """Set demand current"""
        command = "I%d %f"%(self.outputChannel,current)
        logging.info("setCurrent command = %s"%(command))
        gpib.write(self.con,command)

    
