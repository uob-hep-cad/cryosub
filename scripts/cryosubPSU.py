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

        num = str.strip("V")
        
        return float(num)

    
    def setVoltage(self,voltage):
        """Set demand voltage (and wait to settle afterwards)"""
        command = "V%dV %f"%(self.outputChannel,voltage)
        logging.info("setVoltage command = %s"%(command))
        gpib.write(self.con,command)



    def getCurrent(self):
        """Get output current from PSU"""
        command = "I%dO?"%(self.outputChannel)
        gpib.write(self.con,command)

        result=gpib.read(self.con,1000)

        str = result.decode('ascii')

        num = str.strip("A")
        
        return float(num)
    

    def setCurrent(self,current):
        """Set demand current"""
        command = "I%d %f"%(self.outputChannel,current)
        logging.info("setCurrent command = %s"%(command))
        gpib.write(self.con,command)

    
