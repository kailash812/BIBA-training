#add()
a={1,2,3,4,5,6}
a.add(7)
print(a)

# set can have any type of data types
b={True,'a',"str",1,2.3}
print(b)

#adding tuble to set
t=(1,2)
a.add(t) # type: ignore
print(a)

#clear() method
b.clear()
print(b)

#copy() method
b=a.copy()
print(b)

#setdiscard()
a.discard(5)
print(a)