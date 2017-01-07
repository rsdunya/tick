import mysql.connector
import time

import pymysql as pymysql
from dateutil import parser
from util import MatrixUtil

class DBManager:
    BATCH_SIZE = 10
    current = 0
    def __init__(self):
        ''' Constructor for this class. '''
        self.host = 'localhost'
        self.database = 'tick_data'
        self.user = 'root'
        self.password = 'root'
        self.connection = mysql.connector.connect(user=self.user, password=self.password, host=self.host,
                                                  database=self.database)

    def execute(self, query):
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            self.connection.commit()
            cursor.close()
        except Exception as e:
            print(e)
            self.connection.rollback()

    def insertTick(self, tickData):
        try:
            ts = parser.parse(tickData[3])  # fix this
            ts = ts.strftime('%Y-%m-%d %H:%M:%S.%f')
            q = "INSERT INTO %s VALUES ('%s', %s, %s, '%s')" % (tickData[0], tickData[0], tickData[1], tickData[2], ts)
            cursor = self.connection.cursor()
            cursor.execute(q)

            DBManager.current +=1
            if DBManager.current >= 10:
                self.connection.commit()
                DBManager.current = 0

        except Exception as e:
            print(e)
            self.connection.rollback()

    def getPrices(self, instrument):
        return DBManager.getPricesInterval(self, instrument, None)

    def getPricesInterval(self, instrument, interval):
        try:
            q = """SELECT * FROM %s limit 10""" % (instrument)
            conn = self.connection
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            cursor.execute(q)
            result = cursor.fetchall()
            # print(result)
            cursor.close()
            conn.close
            return result;
        except Exception as e:
            print(e)

    def getNews(self, country):
        return getNewsInterval(self, country, None)

    def getNewsInterval(self, country, interval):
        try:
            q = """SELECT * FROM news WHERE country = %s limit 10""" % (country)
        except Exception as e:
            print(e)

if __name__ == '__main__':
    X = MatrixUtil.MatrixUtil().tickToMatrix(DBManager().getPrices("eur_usd"))

    print(X)
