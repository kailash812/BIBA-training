#arbitary keyword argument
def myFun1(*argv):
    for arg in argv:
        print(arg)

myFun1('Hello', 'Welcome', 'to', 'HexaforHexa')

#variable length keyword argument
def myFun(**kwargs):
    for key, value in kwargs.items():
        print("%s == %s" % (key, value))
 

myFun(first='Hexa', mid='for', last='Hexa')