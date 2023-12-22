import numpy as np
#creating a numpy array
a=np.array([[4,5,6],[1,2,3],[7,8,9]])

print(type(a))

# viewing shape,size,datatype and dimensions of array
print(a.shape)
print(a.size)
print(a.dtype)
print(a.ndim)

#creting array with zeroes
b=np.zeros((3,3))
print("array with zeros",b)

#reshaping the array 3x3 to 9x1
print("created array",a)
c=a.reshape(9,1)
print("reshaped array",c)

#flattening the array
d=a.flatten()
print("flattened array",d)

# squarring each element in an array
print("squared array",a**2)

#maximum value row wise
print("row wise max values",a.max(axis=1))

#max value in an array
print(a.max())

#sorting in array
print("sorted array",np.sort(d))