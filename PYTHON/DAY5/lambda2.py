
is_even_list = [lambda arg=x: arg * 10 for x in range(1, 5)]
for item in is_even_list:
    print(item())


Max = lambda a, b : a if(a > b) else b
print(Max(1, 2))


li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
 
final_list = list(filter(lambda x: (x % 2 != 0), li))
print(final_list)

ages = [13, 90, 17, 59, 21, 60, 5]
adults = list(filter(lambda age: age > 18, ages))
 
print(adults)