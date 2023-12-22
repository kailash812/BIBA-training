a = [1, 2, 3]
try: 
    print ("Second element = %d" %(a[1]))
 
    print ("Fourth element = %d" %(a[3]))
 
except:
    print ("An error occurred")
    
try:
    k = 5//0
    print(k)
 
except ZeroDivisionError:
    print("Can't divide by zero")
 
finally:
    print('This is always executed')