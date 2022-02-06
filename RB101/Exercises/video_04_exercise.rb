# input: strings
# output : boolean
# rules
#   Explcit:
#     To write a method that takes 2 strings and return true or false
#     depending on the substring available.
#     substring is longer than 1 word.
#   Implicit:
#     substrings are not case sensitive means 'a' is equal to 'A'

# Examples / Test Cases
# p substring_test("Something", "Fun") == false
# p substring_test("Something", "Home") == true
# p substring_test("Something", "Fun") == false
# p substring_test("Something", "") == false
# p substring_test("", "Something") == false
# p substring_test("BANANA", "banana") == true
# p substring_test("test", "lllt") == false
# p substring_test("", "") == false
# p substring_test("1234567", "541265") == true
# p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true

# Data Structure and Algorithm
# Have all the substrings of both the words in an array.
# Iterate over the substrings of the smallest array and
#   check if other substring array has that element
#   return true if other substring array has that element.
# return false at the end.

def substring_test(str1, str2)
  return false if (str1.size < 2 && str2.size < 2)
# 
  smallest_array = []
  longest_array = []
# 
  if str1.size > str2.size
    smallest_array = substrings(str2)
    longest_array = substrings(str1)
  else
    smallest_array = substrings(str1)
    longest_array = substrings(str2)
  end
# 
  smallest_array.each do |sub_string1|
    return true if longest_array.any? { |sub_string2| sub_string2 == sub_string1}  
  end
# 
  false
end
# 
def substrings(str)
  result = []
  characters = str.downcase.chars
# 
  index = 0
  loop do
    counter = index + 1
    loop do  
      result << characters[index..counter]
      counter += 1
      break if counter >= characters.length 
    end
    index += 1
    break if index >= characters.length - 1
  end
# 
  result
end

require 'pry-byebug'

# def substring_test(str1, str2)
#   str1_chars = str1.downcase.chars
#   str2_chars = str2.downcase.chars
#   str1_chars.each_with_index do |char1, idx1|
#     str2_chars.each_with_index do |char2, idx2|
#       binding.pry
#       return true if char1 == char2 && str1_chars[idx1 + 1] == str2_chars[idx2 + 1] && idx1 != (str1.chars.size - 1)
#     end
#   end
#   false
# end

p substring_test("Something", "Home") == true
p substring_test("Something", "Fun") == false
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("", "") == false
p substring_test("1234567", "541265") == true
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true    
p substring_test("a", "a") == false