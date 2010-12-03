#!/usr/bin/env ruby
require 'mathn'

sum = 0
Prime.each do |i|
  break if i >= 2_000_000
  sum += i
end

puts sum
