
str = " Hello Interview  "

name = "maruthi"
print("Maruthi loves Anusha {}".format(name))
print(f"Maruthi loves Anusha {name}")

#### reverse a string
str = "Hello Interview"
str1 = str[::-1]
print(str1)

## or #####

str ="I am maruthi"
result =""
for val in str:
    result = val + result
print(result)


########## vowel count in a String###

str = "new developer"

count = 0
for ch in str:
    if ch in "aeiou":
        count = count+1
print(count)

########################

str = "new developer"
freq = {}
for ch in str:
        freq[ch] = freq.get(ch, 0) + 1
print(freq)

######### Find Duplicate Characters ####

text = "programming"

duplicates = set()

for ch in text:
    if text.count(ch) > 1:
        duplicates.add(ch)

print(duplicates)


##############Count Words in String

text = "Python is easy to learn"

words = text.split()
print(words)
print(len(words))

#########

text = "Python is easy"

words = text.split()

result = []

for word in words:
    result.append(word[::-1])

print(" ".join(result))

##### Count Special Characters
test = "Hello@!@#No$$%%"
count = 0
for ch in test:
     if not ch.isalnum():
         count = count + 1
print(count)


#####
# 16. Validate Password

# Conditions:

# Minimum 8 chars
# One uppercase
# One lowercase
# One digit
#####
password = "Python123"

if (len(password) >= 8 and
    any(ch.isupper() for ch in password) and
    any(ch.islower() for ch in password) and
    any(ch.isdigit() for ch in password)):
    
    print("Valid Password")
else:
    print("Invalid Password")