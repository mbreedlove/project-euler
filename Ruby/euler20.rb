#!/usr/bin/env ruby

class Integer
	def factorial
		f = 1
		for i in 1..self
			f *= i
		end
		f 
	end
	
	def sum_digits
		self.to_s.each_char.inject(0) { |s,r| s + r.to_i }
	end
		
end

puts 100.factorial.sum_digits
