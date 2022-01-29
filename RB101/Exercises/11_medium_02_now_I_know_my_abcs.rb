# input: string
# output: boolean
# rules:
#   Explicit:
#     A collection of spelling blocks should conatin two letters per block.
#     Write a method that returns true if the word passed in as as 
#       argument can be spelled from this set of blocks, false otherwise.
#     A word should not use both letters from any given block.
#     Each block can only be used once.
#   Implicit:
#     Letters in collection are NOT case sensitive.   

# Examples / Test Cases
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# Data Structure / Algorithm:
# Set collection = blocks of 2 letters in a nested array.
# Iterate over collection 
# Set sum = 0  
# Iterate over sub array
# if input word includes letter
#   sum +1
#   return false if sum == 2
# return true in the end.

def block_word?(word)
  
  collection = [
    ['b', 'o'],
    ['g', 't'],
    ['v', 'i'],
    ['x', 'k'],
    ['r', 'e'],
    ['l', 'y'],
    ['d', 'q'],
    ['f', 's'],
    ['z', 'm'],
    ['c', 'p'],
    ['j', 'w'],
    ['n', 'a'],
    ['h', 'u']
  ]
 
  word.downcase!
  collection.each do |sub_array|
    sum = 0
    sub_array.each do |letter|
      if word.include?(letter)
        sum += 1
        return false if sum == 2
      end
    end
  end
  
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true