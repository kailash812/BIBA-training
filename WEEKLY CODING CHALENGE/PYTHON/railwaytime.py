# creating a module where it converts normal time to railway time

def railtime(a,b,t):
    if(t=='pm'or'PM'):
        a+=12
        if a==24:
            print(f"Railway time is {a-24}:{b}")
        else:
            print(f"Railway time is {a}:{b}")