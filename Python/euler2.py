#!/usr/bin/env python3

a = 1
b = 2
total = 1

while b < 4000000:
    if b % 2 == 0:
        total = total + b
    a, b = b, a+b

print(total)
