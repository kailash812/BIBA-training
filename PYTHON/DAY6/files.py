file = open("hello.txt", "r") 
print (file.read())

with open("hello.txt") as file:  
    data = file.read() 
 
print(data)


file = open('hii.txt','w')
file.write("This is the write command")
file.write("It allows us to write in a particular file")
file.close()