str1 = "Hello World"

print(str1[0:11])
print(str1[2:7])             #------> 2ND TO 6TH INDEXED CHARACTERS:         `llo W`
print(str1[3:])              #------> 3RD INDEXED ONWARDS CHARACTERS:        `lo World`
print(str1[:8])              #------> UPTO 8TH INDEXED CHARACTERS:           `Hello Wo`
print(str1[:])               #------> ALL CHARACTERS:                        `Hello World`
print("")
print(str1[-5:-2])          #------> 5TH LAST TO 3RD LAST CHARACTERS:        `Wor`
print(str1[-3:])            #------> 3RD LAST ONWARDS CHARACTERS:            `rld`
print(str1[:-5])            #------> UPTO 6TH LAST CHARACTERS:               `Hello `
print("")
print(str1[2:9:3])          #------> 2ND TO 8TH INDEXED CHARACTERS with step=3:            `l r`
print(str1[-2:-9:-1])       #------> 2ND LAST TO 8TH LAST INDEXED CHARACTERS IN REVERSE:    lroW ol`


## what is use of slice in python?
# Explain:- slicing in Python is a technique used to extract a portion of a sequence, such as a string, list, or tuple. 
#            It allows you to specify a range of indices to retrieve specific elements from the sequence. 
#            The syntax for slicing is `sequence[start:stop:step]`, where: