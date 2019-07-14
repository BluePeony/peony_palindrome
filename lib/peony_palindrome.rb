require "peony_palindrome/version"

#module PeonyPalindrome
  #class Error < StandardError; end
  # Your code goes here...
#end

module PeonyPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      if self.is_a? String
       	self.scan(/[a-z]/i).join.downcase
      elsif self.is_a? Integer
    	self.to_s
      end
    end
end

class String
	include PeonyPalindrome
end

class Integer
	include PeonyPalindrome
end