#!/usr/bin/env ruby

sum = 0

(3...17).each do |i|
  sum += 15 * 16**(i - 1) + 41 * 14**(i - 1) - (43 * 15**(i - 1) + 13**i)
end

puts sum.to_s(16).upcase
