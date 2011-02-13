#!/usr/bin/env ruby

2.upto(1000) do |c|
  2.upto(c) do |b|
    2.upto(b) do |a|
      next unless a**2 + b**2 == c**2 # is pythagorean triplet
      if a + b + c == 1000
        puts a * b * c
        exit(0)
      end
    end
  end
end
