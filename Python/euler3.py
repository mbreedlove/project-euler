#!/usr/bin/env python3

from math import sqrt

num = 600851475143
p = 1

for i in range(2, int(sqrt(num))):
    if num % i == 0:
        is_prime = True
        for n in range(2, int(sqrt(i)) + 1):
            if i % n == 0:
                is_prime = False
        if is_prime == True:
            p = i

print(p)
