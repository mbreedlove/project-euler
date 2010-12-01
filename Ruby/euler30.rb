#!/usr/bin/env ruby

sum = 0

(2..1_000_000).each do |i|
  temp = 0
  i.to_s.split('').map(&:to_i).each { |k|  temp += k ** 5 }
  sum += temp  if temp == i
  
  temp = 0
end

puts sum
