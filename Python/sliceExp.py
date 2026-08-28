
## slice means (start:stop:step) starting index : end Index

value = [1,2,3,4,5,6,7,8]
#print(value[1:6])
#print(value[1:6:2])  ## This will print the elements from index 1 to 5 with a step of 2
#print(value[1:])  ## This will print the elements from index 1 to the end of the list
print(value[-4:-1])  ## This will print the elements from index -4 to -2 (last 3 elements)
print(value[-1:]) ## This will print the last element of the list


## Tuple slicing ###
valueTuple = (1,2,3,4,5,6,7,8)

print(valueTuple[1:6])
print(valueTuple[1:6:2]) ## This will print the elements from index 1 to 5 with a step of 2, (step 2 means it will print every second element)
print(valueTuple[1:]) ## This will print the elements from index 1 to the end of the tuple
print(valueTuple[-4:-1]) ## This will print the elements from index -4 to
print(valueTuple[1:])
print(valueTuple[-4:-1])
print(valueTuple[-1:])