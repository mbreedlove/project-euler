#!/usr/bin/env ruby
require 'rational'

puts (1..20).inject(1) { |result, n| result.lcm n }
