import logging
import os, sys

from yoctopuce.yocto_api import *
from yoctopuce.yocto_temperature import *

def die(msg):
    sys.exit(msg + ' (check USB cable)')
    
class cryosubTemp:

    def __init__(self):

        self.errmsg = YRefParam()

        if YAPI.RegisterHub("usb", self.errmsg) != YAPI.SUCCESS:
            sys.exit("init error" + self.errmsg.value)

        self.sensor = YTemperature.FirstTemperature()
        if self.sensor is None:
            die('No module connected')

        if not (self.sensor.isOnline()):
            die('device not connected')


    def getTemp(self):

        temp = self.sensor.get_currentValue()

        return temp
    
    
