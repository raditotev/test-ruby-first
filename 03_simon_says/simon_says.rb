def echo(str)
	str
end

def shout(str)
	str.upcase	
end

def repeat(*input)	
	str = input[0]
	input[1] ? repeat = input[1] : repeat = 2
	echo = []
	repeat.times {echo.push(str)}	
	echo.join(' ').to_s
end

def start_of_word(str, pos)
	str[0..pos-1]
end

def first_word(str)
	str.split[0]	
end

def titleize(str)
	# str.capitalize
	# str[0].upcase + str[1..-1]	
	# str.split.each {|word| word.capitalize}.join(' ').to_s
	little_words = ["and", "over", "the"]
	str_arr = str.split
	first_word = str_arr[0].capitalize
	str_arr = str_arr[1..-1]
	output = []
	str_arr.each {|word| little_words.include?(word) ? output << word : output << word.capitalize}
	output.insert(0, first_word)
	output.join(' ').to_s
end