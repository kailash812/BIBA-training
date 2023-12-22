import time # This is required to include time module.
ticks = time.time()
print ("Number of ticks since 12:00am, January 1, 1970:", ticks)

#localtime
print (time.localtime())
#formatted time
localtime = time.asctime( time.localtime(time.time()) )
print ("Local current time :", localtime)

#date
from datetime import date


# Getting min date
mindate = date.min
print("Minimum Date:", mindate)


# Getting max date
maxdate = date.max
print("Maximum Date:", maxdate)


Date1 = date(2023, 4, 20)
print("Year:", Date1.year)
print("Month:", Date1.month)
print("Day:", Date1.day)