s = "how are you?"
l = s.split()
print(l)
L = []
for i in l:
    j = i.capitalize()  ## use of this capitalize() method to capitalize the first letter of each word
    print(j)
    L.append(j)
   # print(L)
S = " ".join(L)

print(S)
