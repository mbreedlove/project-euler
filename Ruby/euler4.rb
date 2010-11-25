#!/usr/bin/env ruby

max = 0
(100..999).each do |i|
  (100..999).each do |n|
    num = i * n
    if num.to_s != num.to_s.reverse
      next
    end
    max = num if num > max
  end
end

puts max

