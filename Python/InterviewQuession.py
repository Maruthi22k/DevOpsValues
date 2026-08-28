
## What is the difference between / and // in Python?
## The / operator performs floating-point division, which means it will return a float result even if both operands are integers. For example, 5 / 2 will return 2.5.
## The // operator performs floor division, which means it will return the largest integer less than or equal to the result of the division. For example, 5 // 2 will return 2.
from datetime import date


print(5 / 2) # Output: 2.5
print(5 // 2) # Output: 2

#Can we Pass a function as an argument in Python?
## Yes, in Python, functions are first-class objects, which means they can be passed as arguments to other functions, returned from functions, and assigned to variables. This allows for a high degree of flexibility in programming. For example:


serverList = ["123.33.55.66", "123.33.55.67", True, 555.4, "Anusha", "172.87.98.61", ["Sri","Sai"]]

for i, val in enumerate(serverList):
    if val == "Anusha":
        serverList[i] = "Maruthi"

print(serverList)

ListData = ["123.33.55.66", "123.33.55.67", True, 555.4, "Anusha", "172.87.98.61", ["Sri","Sai"]]

if "Anusha" in ListData:
    ListData[ListData.index("Anusha")] = "Anusha is a developer"

print(ListData)

str = "Explan"
value = ""
for ch in str:
    print(ch)
    value = ch + value

print(value)

s = "madam"
print(s == s[::-1])

#####################
listValue = ["30", "20", "10", "40", "50"]

min_value = listValue[0]
for val in listValue:
    if val > min_value:
        min_value = val
print(min_value)

##### Remove duplicates from list
lst = [1, 2, 2, 3, 4, 4]
result = list(set(lst))
print("Remove duplicates : ", result)

### secound highest number in list
numbers = [10, 20, 30, 40, 50]
numbers.sort()
print("Sorted numbers : ", numbers)
print("Second highest : ", numbers[-2])
#num = numbers[-2]
#print(num)

## Or ** Using set to remove duplicates and then sorting the list to find the second highest number
numbers = [10, 20, 30,30, 40, 50]
numb = []
numbers = reversed(sorted(set(numbers)))

numb= list(numbers)[1]
print("Second highest : ", numb)


## Remove duplicates from list
listVa = [1, 2, 2, 3, 4, 4]
result = list(set(listVa))
print("Remove duplicates : ", result)


##########
for i in range(1,6):
    print(i**2)
else:
    print("The for loop ended!")