require 'pry-byebug'

# Given a non-empty string check if it can be constructed by
# taking a substring of it and appending multiple copies of
# the substring together. You may assume the given
# string consists of lowercase English letters only.

# Example 1:
# Input: "abab"
# Output: True
# Exlplanation: It's the substring "ab" twice.

# Examaple 2:
# Input: "aba"
# Output: False

# input: string
# output: boolean
# rules:
#   Explicit:
#     - To return true or false if substring repeats itself 1 or multiple times.
#   Implicit:
#     - To return false if input string is empty

# Set result = false
# Take the first char and compare it other chars, if they all are equal then set result = true
# If not compare first 2 chars with all the next 2 chars. If they are equal then result = true 
# Repeat above step for all the chars by by increasing chars to chars + 1
# Return result

def repeated_substring_pattern(string)
  return true if string == ''

  result = false 
  length = 1

  loop do
    substring = string[0, length]
    comparison = substring 
    start = length  

    loop do
      # binding.pry
      current_substring = string[start, length]
      comparison += current_substring unless current_substring == substring 
      break unless current_substring == substring
      start += length
      break if start >= string.size
    end

    if substring == comparison 
      result = true 
      break
    end

    length += 1
    break if length == string.size
  end

  result
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aaa") == true
p repeated_substring_pattern("aaab") == false 
p repeated_substring_pattern('a') == true
p repeated_substring_pattern('') == true