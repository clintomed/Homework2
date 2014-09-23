module FunWithStrings
  def palindrome?
	#Downcasing the string
	self.downcase!
	#Getting rid of special characters using regex
	str = self.gsub(/[^0-9A-Za-z]/, "")
	puts "Start Palindrome"
	#Testing for even
	if(str.length % 2 == 0)
		puts "#{str} Is even"
		puts str[0, str.length/2]
		puts str[str.length/2, str.length].reverse
		if(str[0, str.length/2] == str[str.length/2, str.length].reverse)
			return true
		else
			return false
		end
	else
		#Testing for odd
		puts "#{str} Is odd"
		puts str[0, str.length/2]
		puts str[str.length/2 + 1, str.length]
		if(str[0, str.length/2] == str[str.length/2 + 1, str.length].reverse)
			return true
		else
			return false
		end
	end
  end

  def count_words
	self.downcase!
	str = self.gsub(/[^0-9A-Za-z]/, " ")
	words = str.split(" ")
	word_hash = Hash.new(0)
	words.each {|k, v| word_hash[k] += 1}
	puts word_hash.inspect
	return word_hash
	
  end

  def anagram_groups
    return [] if self.empty?
    
    anagrams = self.split(" ")
    anagrams.group_by {|word| word.downcase.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
