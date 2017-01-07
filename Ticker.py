# Server Connection to MySQL:
# CREATE TABLE eur_usd(instrument VARCHAR(10) NOT NULL, bid NUMERIC(15,10) NOT NULL, ask NUMERIC(15,10) NOT NULL, time DATETIME NOT NULL);
# {"tick":{"instrument":"AUD_CAD","time":"2014-01-30T20:47:08.066398Z","bid":0.98114,"ask":0.98139}}
import mysql.connector

import datetime as dt
import time
from database import DBManager

conn = mysql.connector.connect(user='root', password='',
                               host='127.0.0.1',
                               database='tick_data')

x = conn.cursor()
myList = ["eur_usd", "0.98139", "0.98114", "2014-01-30T20:47:08.066398Z"]

ts = time.strptime(myList[3].replace("Z", ""), '%Y-%m-%dT%H:%M:%S.%f')  # fix this
ts = time.strftime('%Y-%m-%dT%H:%M:%S.%f', ts).replace("T", " ").replace(".f", "")  # fix this
table = myList[0]
query = "INSERT INTO %s VALUES ('%s', %s, %s, '%s')" % (myList[0], myList[0], myList[1], myList[2], ts)
db = DBManager.DBManager()
print (query)
db.execute(query)
