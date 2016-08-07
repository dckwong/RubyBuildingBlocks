def caesar_cipher string, shift
	if shift > 26
		shift%=26
	end

	punctuation = ["!","?","\,"," "]

	string.each_byte.with_index do |char,index|
		if punctuation.include? char.chr
			char.chr
		elsif (char>=97 && char+shift >122) || (char>=65 && char <=90 && char+shift > 90)
			string[index] = (char+shift-25).chr
		else 
			string[index] = (char+shift).chr
		end
	end
	return string
end

puts caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz ,,,,!!? ", 3)