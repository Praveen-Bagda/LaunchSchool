require 'pry-byebug'

# Given an array of strings made only from lowercase letters,
# return an array of all characters that show up in all strings
# within the given array (including duplicates).
# For example, if a character occurs 3 times in all
# strings but not 4 times, you need to include that
# character three times in the final answer.
 
# input: array of strings 
# output: array
# rules:
#   Explicit:
#     - To return a new array containing chars that are in all the strings.
#     - chars includes duplicates

# Set common_chars_ary = []
# Take the first string.
# Take first char of string. if that char is there in all strings:
#   - insert that char in common_chars
#   - remove that char from all strings.
# Repeat above 2 steps for all the chars of first string.
# Return common_chars_ary


def common_chars(ary)
  modified_array = ary.map {|o| o}
  chars = modified_array[0].chars
  common_chars_ary = []

  chars.each do |c|
    if modified_array.all? { |word| word.include?(c)}
        common_chars_ary << c
        modified_array.each { |word| word.sub!(c, '')}
    end
  end

  common_chars_ary
end

arr = ["bella", "label", "roller"]
p common_chars(arr) == ["e", "l", "l"]
p arr
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []