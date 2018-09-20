module FunWithStrings
	def palindrome?
		s = self.gsub(/[^[:alnum:]]+/, '')
		s.downcase == s.downcase.reverse
	end
	def count_words
		words = self.downcase.gsub(/[^[:alnum:]]+/, ' ').split(" ")
		frequencies = Hash.new(0)
		words.each { |word| frequencies[word] += 1 }

		frequencies   
	end
	def anagram_groups
		anagram = self.split(" ")
		anagram.group_by { |element| element.downcase.chars.sort }.values

	end
end

# make all the above functions available as instance methods on Strings:

class String
	include FunWithStrings
end
