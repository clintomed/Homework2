module FunWithStrings
  def palindrome?
	
	self.downcase!
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
    # your code here
  end

  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
