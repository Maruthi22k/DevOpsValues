# # server_1 = "172.43.56.132"
# # server_2 = "172.43.56.134"

# # servers = [server_1, server_2]
# # print(servers)

# # serverslist = ["172.43.56.132", "172.43.56.134", "172.43.56.135", 55.7, True]

# # print(serverslist)
# # print(type(serverslist))

# # charList = list("Anusha")  ## Converts the string into a list of characters
# # print(charList)

# # listChar = list("Anusha is a developer") 
# # print(listChar)

# # listChar = ["Anusha", "is", "a", "developer"]  ## This will create a list of the given strings as elements
# # print(listChar)


# # serverList = ["123.33.55.66", "123.33.55.67", True, 555.4, "Anusha","172.87.98.61", ["Sri","Sai"]]
# # print(serverList)

# # #serverList.append(False)

# # print("After: ", serverList)
# # print("After: " + str(serverList))

# # print(serverList[-1])

# # # multi list fist value access
# # print(serverList[-1])  ##  ["Sri","Sai"] means the last element of the list 
# # print(serverList[-1][0])  ## Sri means the first element of the last element of the list

# # print(serverList[-1][1])  ## Sai means the second element of the last element of the list


# ###### Append, Insert, Remove, Pop, Sort, extend ############



# server = ["SaiSidvik","Anusha", "Maruthi","teacher","Sri"]

# server.insert(1, "Anusha is a developer")
# print("After insert:", server)

# ## append() and extend() are two list methods used to add elements to a list, but they behave differently.

# ## append() method adds a single item (of any type) to the end of a list.
# ## extend() method adds all elements from an iterable (like a list, tuple, or set) to the end of the current list.

# server.append("All are DevOps Engineers") 
# print("After append:", server)

# ## This will add the elements of the given list to the end of the list
# server.extend(["Love You", "SaiSidvik_6th"])  
# print("After extend:", server)

# ## This will remove the last element of the list
# server.pop( )
# print("After pop:", server)

# server.remove("teacher") 
# print("After remove:", server)

# ####### slice ########
 
# serverlist = ["SaiSidvik","Anusha", "Maruthi","teacher","Sri"]

# sliceing = serverlist[1:4] ## This will create a new list with the elements from index 1 to index 3 (4 is exclusive)
# sliceing1 = serverlist[1: ] ## This will create a new list with the elements from index 1 to the end of the list
# sliceing2 = serverlist[1: -1] 
# sliceing4 = serverlist[-3: -1] 
# print("After slicing:", sliceing, sliceing1, sliceing2, sliceing4)

#######
#inputData = [(1,2), (3,4), (5,6)]
  # out put should be [1, 2, 3, 4, 5, 6]

inputData = [(1,2), (3,4), (5,6)]
output = []

for num in inputData:
    output.extend(num)
print(output)





