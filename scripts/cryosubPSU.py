import logging
import os, sys

import gpib

class cryosubPSU:
    """Functions for accessing TTi PL330TP PSU"""
    
    def __init__(self,PSUAddress,outputChannel):
        """Set up connection to PSU"""
        self.con=gpib.dev(0,PSUAddress)

        gpib.write(self.con,'*IDN?')

        id = gpib.read(self.con,1000)

        logging.info("PSU ID = %s"%(id.decode('ascii')))

        self.outputChannel = outputChannel
        
        
    def getVoltage(self):
        """Get output voltage from PSU"""
        command = "V%dO?"%(self.outputChannel)

        logging.info("getVoltage command = %s"%(command))
        
        gpib.write(self.con,command)

        result=gpib.read(self.con,1000)

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

    
