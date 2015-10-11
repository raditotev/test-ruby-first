def add(a, b)
	a + b
end

def subtract(a, b)
	a - b	
end

def sum(array)
	array.inject(0) {|sum, x| sum + x}
end

def multiplies(*numbers)
	numbers.inject {|sum, x| sum * x}
end

def pow(number, power)
	sum = 1
	if power == 1
		number
	elsif power > 1
		power.times {sum *= number}
	end
	sum			
end

def factorial(i)	
	# if i < 2
	# 	1
	# else
	# 	count = i
	# 	sum = i
	# 	while count > 1
	# 		sum *= count -1
	# 		count -= 1
	# 	end
	# 	return sum		
	# end

	def find_factorial(i)
		count = i
		sum = i
		while count > 1
			sum *= count -1
			count -= 1
		end
		return sum	
	end
	
	i < 2 ?  1 : find_factorial(i)

end
