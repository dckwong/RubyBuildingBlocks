def substrings string, dictionary
	words = string.downcase!.split(" ")
	curr = Time.now
	substrings = Hash.new(0)
	dictionary.each do |word|
		words.each do |a_word|
			if a_word.include? word
				substrings[word] +=1
			end
		end
	end
	p Time.now-curr
	return substrings

end

def diff_substrings string, dictionary
	words = string.downcase!.split(" ")
	substrings = Hash.new(0)
	curr = Time.now
	words.each do |a_word|
		for i in (0..a_word.length-1)
			for j in ((i+1)..a_word.length-1)
				word = a_word[i..j]
				if dictionary.include? word
					substrings[word] +=1
				end
			end
		end
	end			
	p Time.now-curr
	return substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
