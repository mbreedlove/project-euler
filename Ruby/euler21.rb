#!/usr/bin/env ruby

class Integer
  def sum_divisors
    sum = 0
    (1..(self / 2)).each do |i|
      sum += i if self % i == 0
    end
    sum
  end
end


sum = 0
(1..10_000).each do |i|
  sumd = i.sum_divisors
  sum += i if sumd.sum_divisors == i && sumd != i
end

puts sum
