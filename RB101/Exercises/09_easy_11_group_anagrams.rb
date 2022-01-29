# input: array
# output: array
#   rules
#     Explicit
#       To write a program that prints out group of words that
#         are anagrams.
#       Anagrams are words that have the same exact letters in them
#         but in a different order.

# Examples / Test Cases:

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# =>  ["demo", "dome", "mode"]
#     ["neon", "none"]

# Data Structure and Algorithm:
# Set anagram_words = []
# Iterate over the input array
#   Sort the word and compare it with other words,
#   if words are equal push them in anagram_words. Words should be uniq
# Output anagram elements.

require 'pry-byebug'

def anagrams(array)
  result = []
 
  current_word = 0
  loop do 
    anagram_words = []
    index = current_word + 1 
    loop do
      # binding.pry
      if array[current_word].chars.sort == array[index].chars.sort
       anagram_words.push(array[current_word], array[index])
      end
      index += 1
      break if index > array.size - 1
    end
 
    if anagram_words.size > 0 && !(result.flatten.include?(anagram_words.first))
      result.push (anagram_words.uniq) 
    end
 
    current_word += 1
    break if current_word > array.size - 2
  end
 
  result.each { |element| p element}
end

# def anagrams(words)
#   result = {}
# 
#   words.each do |word|
#     key = word.split('').sort.join
#     if result.has_key?(key)
#       result[key].push(word)
#     else
#       result[key] = [word]
#     end
#   end
# 
#   # binding.pry
#   result.each_value do |v|
#     puts "------"
#     p v
#   end
# end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'hello']

anagrams(words)

