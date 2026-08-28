## Tuple is a collection which is ordered and unchangeable. 
# In Python tuples are written with round brackets.

# Tuple methods
# count() - Returns the number of times a specified value occurs in a tuple
# index() - Searches the tuple for a specified value and returns the position of where it was found
#

myTuple = (10, 20, 30, 40, 50)
numList=list(myTuple)

numList[2]="Anusha"
print(numList)

### index() method
print(myTuple.index(30))

indexVar =myTuple.index(40)
print(indexVar)

myTuple.index(30, 3) 

## This will search for the value 30 starting from index 3 
#and will return the index of the first occurrence of 30 after index 3. 
#If 30 is not found after index 3, it will raise a ValueError.

print("After Value 30 at Index:",myTuple.index(30, 1)) 

### count() method
myTuple = (10, 20, 30, 40, 50,10, 20, 30, 40, 50)
print(myTuple.count(20))