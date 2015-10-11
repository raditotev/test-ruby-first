def translate(str)
	vowels = "A, E, I, O, U, Y, a, e, i, o, u, y"	
	words = str.split
	output = []

	words.each do |word|		
		if vowels.include?(word[0])
			output << word + "ay"
		elsif word.include?("squ") or word.include?("Squ")
			output << word[3.. -1] + word[0..2] + "ay"
		elsif word.include?("qu") or word.include?("Qu")
			output << word[2.. -1] + word[0..1] + "ay"
		else
			count = 0
			while !vowels.include?(word[count])
				count += 1
			end
			output << word[count..-1] + word[0..count-1] + "ay"
		end
	end

	output.join(' ').to_s	
end