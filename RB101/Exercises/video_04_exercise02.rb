# input: strings
# output: boolean
# rules
#   Explicit
#     Write a method that returns true if all characters of string1 are
#       included in string1
#     string contains only lower case letters. It will not contain any digits or
#       punctuations.
#   Implicit
#     If there are duplicate chars in string2, string1 should contain those chars
#       in duplicate to return true, otherwise false.

# Test Cases / Examples
# p scramble('javass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('kataas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true

# Data Structure and Algorithm
# Split str2 into chars
# Iterate through the string2_chars
#   if element found in string1
#     remove that element from string1  
#   otherwise
#     return false
# return true in the end

require 'pry-byebug'

def scramble(str1, str2)
  str2_chars = str2.chars
  str1 = str1.dup
  
  str2_chars.each do |char|
    # binding.pry
    if str1.include?(char)
      str1.sub!(char, "")
    else
      return false
    end
  end

  true
end

p scramble('javass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('kataas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

string1 = "Hello"
string2 = "Hell"

p scramble(string1, string2)
p string1




