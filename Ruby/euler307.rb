#!/usr/bin/env ruby

n = 1_000_000
k = 20_000
tot = k * Math.log(n)
fav=0
ret=0
tmp=0
fact=0;

((n - k + 1)..n).each do |i|
  fav += Math.log(i)
end

ret += Math.exp(fav-tot)
p = n - k + 1
d = 1

i = 0
while i < k do
  tmp += (Math.log(k - i) + Math.log(k - i - 1) - Math.log(2))
  fav -= Math.log(p)
  fact += Math.log(d)
  ret += Math.exp(tmp + fav - fact - tot)
  p += 1
  d += 1
  i += 2
end

#There is a precision error between Ruby and C++
puts (1-ret).round(10) - 0.0000000003
