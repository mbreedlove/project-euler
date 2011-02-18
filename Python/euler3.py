#!/usr/bin/env python3

number = 0 
found = False
while not found:
    print(number)
    for i in range(1, 20):
        #print("\t" + str(i))
        if number % i != 0:
            break
        if i == 20:
            found = True
    number = number + 20
    
print(number)
