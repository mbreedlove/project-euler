#!/usr/bin/env ruby
require 'date'

start = Date.new(1901, 1, 1)
endd = Date.new(2000,12,31)
count = 0

while start < endd do
    count += 1 if start.sunday?
  start = start >> 1
end

puts count
