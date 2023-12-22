def add(n):
    return n+n
n=(1,2,3,4)
r=map(add,n)
print(list(r))

numbers = (1, 2, 3, 4)
result = map(lambda x: x + x, numbers)
print(list(result))

# Add two lists using map and lambda
 
numbers1 = [1, 2, 3]
numbers2 = [4, 5, 6]
 
result = map(lambda x, y: x + y, numbers1, numbers2)
print(list(result))

def double_even(num):
    if num % 2 == 0:
        return num * 2
    else:
        return num
 
# Create a list of numbers to apply the function to
numbers = [1, 2, 3, 4, 5]
 
# Use map to apply the function to each element in the list
result = list(map(double_even, numbers))
 
# Print the result
print(result)  # [1, 4, 3, 8, 5]