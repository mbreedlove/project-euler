#!/usr/bin/env ruby

# hardcore cheating :P
puts [0,1,2,3,4,5,6,7,8,9].permutation(10).to_a[1_000_000 -1].join
