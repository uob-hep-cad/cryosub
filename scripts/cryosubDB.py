import mysql.connector
import logging
import datetime
import time

class cryosubDB:
    """Functions for accessing MySQL database storing Cryosub info"""

    def __init__(self):
        self.db = mysql.connector.connect(
            host="localhost",
            user="phdgc",
            password="cryosub1",
            db="cryosub"
        )

        self.dbCursor = self.db.cursor()

        logging.info("""Connected to DB""")

    #########################################################################
    def writeMeasuredValues(self,demandCurrent,demandVoltage,measuredCurrent,measuredVoltage,measuredTemperature):
        ts = time.time()
        timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        self.dbCursor.execute("""INSERT into measuredData (time,demandCurrent,demandVoltage,measuredCurrent,measuredVoltage,measuredTemperature) values(%s,%s,%s,%s,%s,%s)""",(timestamp,demandCurrent,demandVoltage,measuredCurrent,measuredVoltage,measuredTemperature))

        self.db.commit()

    #########################################################################
    def writeDemandValues(self,demandCurrent,demandVoltage):

        ts = time.time()
        timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        self.dbCursor.execute("""INSERT into demandValues (time,demandCurrent,demandVoltage) values(%s,%s,%s)""",(timestamp,demandCurrent,demandVoltage))
        
        self.db.commit()


        
    #########################################################################
    def readDemandValues(self):

        self.dbCursor.execute("""select * from demandValues where id=(select max(id) from demandValues);""");
        row = self.dbCursor.fetchone()

        return row


    #########################################################################
    def readMeasuredData(self):

        self.dbCursor.execute("""select * from measuredData;""");
        record = self.dbCursor.fetchall()

        return record
    
   #########################################################################
    def readCurrentMeasuredData(self):

        self.dbCursor.execute("""select * from measuredData where id=(select max(id) from measuredData);""");
        row = self.dbCursor.fetchone()

        return row
