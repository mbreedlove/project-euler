#!/usr/bin/env ruby

class Integer
  def sum_divisors
    # Guard against 1
    return 0 if self == 1

    sum = 1
    sqrt = Math.sqrt(self)

    # Self is not a factor, only consider sqrt factor once
    (2..sqrt).each do |i|
      if self % i == 0
        sum += self / i if i != sqrt
        sum += i
      end
    end

    sum
  end

  def abundant?
    self < sum_divisors
  end
end

derp = (1..28123).select { |n|  n.abundant? }

ans = []
derp.each do |i|
  derp.each do |j|
    s = i + j
    break if s > 28123
    ans << s
  end
end

herp = (1..28123).to_a - ans
puts herp.inject(0) { |a, b|  a + b }
