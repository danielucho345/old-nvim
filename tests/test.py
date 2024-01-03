import datetime

now = datetime.datetime.now()


class Test(object):
    def __init__(self):
        self.name = 'new'
        self.date = datetime.datetime.now()
    pass            


print(
    Test().date
)

import pandas as pd  

df = pd.DataFrame()
