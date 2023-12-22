# 2.Explain Pandas and numpy using Examples in PYTHON

import pandas as pd

# reading a csv file using pandans
data=pd.read_csv("SocialNetworkAds.csv")
print(data)

#creating a dataframe
newdata={'animals':["dog","lion","cheetah","cat"],
         'type':['domestic','wild','wild','domestic']}

animals=pd.DataFrame(newdata)
print(animals)

# writing a csv file using pandas

animals.to_csv("animaldata.csv",index=False)

# viewing columns of a data using pandas
print(data.columns)

# viewing rows of particular column
print(data['Age'])

