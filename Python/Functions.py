
from os import name

def great():
    print("this is first value")
great()

user = [
    {
        'name' : "Saisidvik",
        'age' : 10,
        'password' : "Sai@2026@!@#"
    },
    {
        'name' : "Anusha",
        'age' : 35,
        'password' : "Anu@2026"
    }
]

def validation(username, password):
    for i in user:
        print(i)
        if i['name'] == username and i['password'] == password:
            print("Login successful")
            return True
    print("Invalid username or password")
    return False
# validation("Saisidvik", "Sai@2026@!@#")
# validation("Anusha", "Anu@2026")

if validation(username= "SaiSidvik", password = "Sai@2026@!@#"):
    print("Welcome to the world of Maruthi")
else:
    print("Please try again")

if validation(username= "Anusha", password = "Anu@2026"):
    print("Welcome to the world of Maruthi")
else:
    print("Please try again")


def multiple(msg, *num):
    
    result = 1
    for n in num:
        result *= n
    #return msg + str(result)
    return(result)
    print(result) 
print(multiple("this is maruthi ", 8,9,6))

print(multiple(8,9,6))
print(multiple())




