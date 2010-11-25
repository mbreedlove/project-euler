#!/usr/bin/env ruby

class Integer
  def sum_of_squares()
    sum = 0
    1.upto(self) do |i|
      sum += (i ** 2)
    end
    sum
  end

  def square_of_sum()
    sum = 0
    1.upto(self) do |i|
      sum += i
    end
    sum ** 2
  end
end

puts (100.square_of_sum - 100.sum_of_squares)
