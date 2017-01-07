import json
import requests
import logging

from database import DBManager

class StreamManager:
    def __init__(self):
        self.instrument = ''
        self.bid = ''
        self.ask = '' #	https://api-fxpractice.oanda.com #stream-fxpractice.oanda.com
        self.instruments = ["EUR_USD", "AUD_CAD", "USD_TRY", "EUR_TRY", "USD_JPY", "USD_CHF", "GBP_USD","NZD_USD", "EUR_AUD","EUR_CAD", "USD_CAD", "AUD_USD", "EUR_JPY", "EUR_GBP","GBP_CHF","CHF_JPY","AUD_JPY","AUD_NZD"]
        self.url='https://stream-fxtrade.oanda.com/v1/prices?accountId=[id]&instruments=' + ",".join(self.instruments)
        self.dbManager = DBManager.DBManager()
	logging.basicConfig(filename='dbManager.log',level=logging.DEBUG)
	logging.warning('Stream Manager Initialized!')

    def stream(self):
	logging.warn("Beginnin Stream...")
        headers = {'Authorization': 'Bearer x-y'}
        response = requests.get(self.url, stream=True,headers=headers)
        for line in response.iter_lines():
	    try:
                if line:
                    data = json.loads(line)
                    if "tick" in data: # filter out keep-alive new lines
                        params = [data["tick"]["instrument"],data["tick"]["bid"],data["tick"]["ask"],data["tick"]["time"]]
                        self.dbManager.insertTick(params)
            except ValueError:
	        print 'Usually this is when the program needs to restart...'
	    print(response)

if __name__ == '__main__':
    StreamManager().stream()
