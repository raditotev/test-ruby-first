def measure(count = 1)
	start = Time.now
	count.times { yield }	
	stop = Time.now
	interval = (start - stop).abs.to_f / count
end