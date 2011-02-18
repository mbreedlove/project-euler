#!/usr/bin/env python3

result = 0
for i in range(1,1000):
    if i % 3 == 0 or 1 % 5 == 0:
        result = result + i
print(result)
