serverList = ["123.33.55.66", "123.33.55.67", True, 555.4, "Anusha", "172.87.98.61", ["Sri","Sai"]]

for i in range(len(serverList)):
    if serverList[i] == "Anusha":
        serverList[i] = "Maruthi"

print(serverList)

### This code will replace the value "Anusha" with "Maruthi" in the list serverList. ##

serverList = ["123.33.55.66", "123.33.55.67", True, 555.4, "Anusha", "172.87.98.61", ["Sri","Sai"]]

serverList = ["Maruthi" if x == "Anusha" else x for x in serverList]

print(serverList) 

###########

listVal = ["Anusha", "test", "Anusha"]

while "Anusha" in listVal:
    listVal[listVal.index("Anusha")] = "Maruthi"

print(listVal)