#!/usr/bin/env ruby
# Euler 27 - 8/15/13

# n^2 + an + b

require 'prime'

longest_chain, top, curr, answer = 0

(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    n = 0
    cur_chain = 0
    begin
      cur = (n ** 2) + (a * n) + b
      prime = Prime.prime? cur
      cur_chain += 1 if prime
      n += 1
    end while prime
    if cur_chain > longest_chain then
      longest_chain = cur_chain
      answer = a * b
      puts "Best Chain: #{a}, #{b}\t (#{longest_chain})"
    end
  end
end

puts answer
