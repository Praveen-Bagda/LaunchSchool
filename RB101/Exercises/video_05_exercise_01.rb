# input: string
# output: integer
# rules
#   Explicit
#     To return longest palindrome substring length.
#       palindrome is word that is same in reverse.
#     If the length of the input string is 0, return value should be 0.

# Test Cases / Examples
# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9

# Examples / Test Cases
# Have all the substrings
# Iterate througs substrings
#   if its a palindrome
#       move it to palindrome array
# Find maximum length of palindrome word from palindrome array and return it.

require 'pry-byebug'

def longest_palindrome(string)
  substrings = all_substrings(string)
  palindromes = []

  substrings.each do |substring_array|
    palindromes << substring_array if palindrome?(substring_array)
  end
  palindromes.max_by { |word| word.length}.length
end

def all_substrings(string)
  result = []
  index = 0
  loop do
    length = index
    loop do
      result << string[index..length]
      counter += 1
      break if length >= string.size
    end
    index += 1
    break if index >= string.size
  end

  result
end

def palindrome?(array)
  index = 0

  loop do
    return false if array[index] != array[-(index+1)]
    index += 1
    break if index >= (array.size / 2)
  end

  true
end


p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9
p longest_palindrome("") == 0

# p all_substrings("").size
# p palindrome?([""])