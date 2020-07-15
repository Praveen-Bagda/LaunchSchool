statement = "The Flintstones Rock"

# input: string
# output: hash

# Requirements and Rules
#   Explicit:
#     - String can be of different size with spaces only.
#     - To store each uniq letter in hash as key
#     - Value of each uniq letter should be
#       total number of letter in that string.
#     - Spaces should be ignored.
    
#     Implicit:
#     - letters are case sensitive (c != C)
#     - Not validating input
#       (It will always be string with only spaces)

# Examples/Test Cases:

# 'Hello World hi ' => {'H' => 1, 'e'=> 1, 'l' => 3, 'o' => 2,
#    'W' => 1, 'r' => 1, 'd' => 1, 'h' => 1, 'i' = 1 }

# Data Structure and Algorithm
#   - Set hash as empty hash
#   - Evaluate each letter of string and store uniq letter in hash as key (space should not be included)
# #       -Convert string to each letter array (This will be used for summing)
# #       -REMOVE SPACE and UNIQ from above array. This is ready for iterating  
# #   - Sum total for each letter and set as its value.
# #       - Set first key from UNIQ ARRAR into valule = value will .count[UNIQ array first value]
# #       - Then repeat it for second key and then... until all the uniq keys are done.
# #   - Return the hash. 

# def letter_count(input_string)
#   letter_count_hash = {}
#   with_duplicates = input_string.chars
  
#   uniq_array = with_duplicates.uniq
#   uniq_array.select! do |letter|
#     letter != ' '
#   end
  
#   counter = 0
  
#   loop do
#     break if counter == uniq_array.size
#     letter_count_hash[uniq_array[counter]] = with_duplicates.count(uniq_array[counter])
#     counter += 1
#   end

#   letter_count_hash
# end

# p letter_count('Hello World hi ')

# result = {}
# letter = ('A'..'Z').to_a + ('a'..'z').to_a
# letter.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end

# p result