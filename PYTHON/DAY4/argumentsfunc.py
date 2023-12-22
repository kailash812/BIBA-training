#default argument
def myFun(x, y=50):
    print("x: ", x)
    print("y: ", y)
myFun(10)

#keyword argument
def student(firstname, lastname):
    print(firstname, lastname)

student(firstname='Hexa', lastname='Practice')
student(lastname='Practice', firstname='Hexa')

#positional argument
def nameAge(name, age):
    print("Hi, I am", name)
    print("My age is ", age)
 
print("Case-1:")
nameAge("Suraj", 27)

print("\nCase-2:")
nameAge(27, "Suraj")

