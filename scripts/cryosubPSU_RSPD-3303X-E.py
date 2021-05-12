import logging
import os, sys

import usbtmc
import time

class cryosubPSU:
    """Functions for accessing RS-Pro D-3303X-E  PSU over USB"""
    
    def w_psu(self, instr, str):
        instr.write_raw(str.encode('utf-8'))
        time.sleep(0.1)

    def wr_psu(self, instr, str):
        self.w_psu(instr, str)
        return instr.read_raw().decode('utf-8')

    def __init__(self,outputChannel,realPSU):
        """Set up connection to PSU"""

        setChannelCommand = "INST CH%d"%(outputChannel)
        logging.info("set channel command = %s"%(setChannelCommand))

        # realPSU = True
        if realPSU:
            self.con = usbtmc.Instrument(0x0483, 0x7540)

            id = self.wr_psu(self.con, "*IDN?")
            self.w_psu(self.con,setChannelCommand)

        else:
            id = "Dummy"

        logging.info("PSU ID = %s"%(id))

        self.outputChannel = outputChannel

        turnOnPSU = True
        if turnOnPSU:
            turnOnCommand = "OUTP CH%d,ON"%(outputChannel)
            logging.info("Turn on command = %s"%(turnOnCommand))
            self.w_psu(self.con, turnOnCommand)
        else:
            logging.info("turnOnPSU set false. NOT turning on PSU")


    def getVoltage(self):
        """Get output voltage from PSU"""

        command = "MEAS:VOLT?"

        logging.info("getVoltage command = %s"%(command))
        
        result = self.wr_psu(self.con, command ).strip()

        num = float(result.strip("\n").strip("V"))

        logging.info("getVoltage result = %f"%(num))
        return num

    
    def setVoltage(self,voltage):
        """Set demand voltage (and wait to settle afterwards)"""
        command = "VOLT %f"%(voltage)
        logging.info("setVoltage command = %s"%(command))
        self.w_psu(self.con , command )


    def getCurrent(self):
        """Get output current from PSU"""

        command = "MEAS:CURR?"

        logging.info("getCurrent command = %s"%(command))

        result = self.wr_psu(self.con, command ).strip()

        num = float(result.strip("\n").strip("A"))

        logging.info("getCurrent result = %f"%(num))
                
        return num
    

    def setCurrent(self,current):
        """Set demand current"""
        command = "CURR %f"%(current)
        logging.info("setCurrent command = %s"%(command))
        self.w_psu(self.con , command )

    def closePSU(self):
        """Disconnect from PSU"""
        logging.info("closing USB connection to PSU")
        self.con.close()

