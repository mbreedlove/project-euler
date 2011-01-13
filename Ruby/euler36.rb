#!/usr/bin/env ruby

class Integer
  def to_b
    num = self
    arr = []
    while num >= 1
      arr << num % 2
      num /= 2
    end

    arr.reverse.join(' ')
  end
end

sum = 0
1.upto(1_000_000) do |i|
    sum += i if i.to_s == i.to_s.reverse && i.to_b == i.to_b.reverse
end

puts sum

