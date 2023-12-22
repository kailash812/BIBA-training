class Students:
   def __init__(self, name, rank, points):
      self.name = name
      self.rank = rank
      self.points = points

   
   def demofunc(self):
      print("I am "+self.name)
      print("I got Rank ",+self.rank)

st1 = Students("Steve", 1, 100)
st2 = Students("Chris", 2, 90)



st1.demofunc()
st2.demofunc()
