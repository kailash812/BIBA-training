# importing the created module into this file and 
# renaming the file
import calc as c
a=10
b=2

# adding two variable
print(c.add(a,b))

# subtracting two varibles
print(c.subtract(a,b))

# multiplying two variables
print(c.multiply(a,b))

#diving two variables
print(c.division(a,b))

#modulus of two variables
print(c.mod(a,b))

import railwaytime as rt
#importing user created railwaytime module
#getting inputs from the user
a=int(input("enter the hours :"))
b=int(input("enter the minutes : "))
t=input("enter AM or PM : ")

#using the renamed name as module name
rt.railtime(a,b,t)

# using predefined modules in python
import math as m

print(m.factorial(8))
print(m.sin(45))