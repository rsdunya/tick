import numpy as np
import datetime
import time
class MatrixUtil:

    def tickToMatrix(self, results):
        num_rows = int(results.__len__())
        # We have to first retrieve bid/ask from our list and add it to matrix.
        X = np.ndarray(shape=(results.__len__(), 3), dtype=float, order='F')
        for i in range(len(results)):
            X[i][0] = results[0][1]
            X[i][1] = results[0][2]
            X[i][2] = results[0][3].strftime("%s") # Storing time as unix timestamp
        return X

