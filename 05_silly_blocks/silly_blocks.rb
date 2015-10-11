def reverser	
	reverse = yield.split
	output = []
	reverse.each {|s| output << s.reverse!}
	output.join(' ').to_s
end

def adder(n = 1)
	yield + n
end

def repeater(n = 1, &block)
	n.times {block.call}
end