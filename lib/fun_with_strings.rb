module FunWithStrings
  def palindrome?
	
	self.downcase!
	self.gsub(/[!@$%,;:]/, "")
	puts "Start Palindrome"
	#Testing for even
	if(self.length % 2 == 0)
		puts "#{self} Is even"
		puts self[0, self.length/2]
		puts self[self.length/2, self.length].reverse
		if(self[0, self.length/2] == self[self.length/2, self.length].reverse)
			return true
		else
			return false
		end
	else
		puts "#{self} Is odd"
		puts self[0, self.length/2]
		puts self[self.length/2 + 1, self.length]
		if(self[0, self.length/2] == self[self.length/2 + 1, self.length].reverse)
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
