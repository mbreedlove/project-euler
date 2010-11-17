#!/usr/bin/env ruby

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n -1)
  end
end

rows, cols = 20, 20

puts factorial(rows + cols) / (factorial(rows) * factorial(cols))
