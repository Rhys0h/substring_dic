dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
	h = Hash.new(0)

	array.each do |word|
		h[word] = string.downcase.scan(word).count
	end

	h.each {|key, value| if value > 0
		puts "#{key.capitalize}: #{value}" end
	}
end

substrings("Howdy partner, sit down! How's it going?", dictionary)