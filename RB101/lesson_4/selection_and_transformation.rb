# 1. # alphabet = 'abcdefgjijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do
#   current_char = alphabet[counter]

#   selected_chars << current_char if current_char == 'g'
#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars

# input: array
# output: array

# Requirement/Rules:
#     - append 's' to each string.

# Test Cases:
#   ['Hello'] => ['Hellos']
#   ['Hello', 'World'] => ['Hellos', 'Worlds']
#   [] = []

# Data Structure/Algorithm 
#   - set result array as empty
#   - set current word = first word of array 
#   - Append 's' to current word and store in result array (Add to the last)
#   - Repeat above two steps for each word until all the words are done in array. 
#   - Break after you reached the last word.
#   - output result array


# fruits =['apple', 'banana', 'pear']
# transformed_fruits =[]
# counter = 0

# loop do
#   current_word = fruits[counter]
#   transformed_fruits << current_word + 's'
#   counter += 1
#   break if counter == fruits.size
# end

# p transformed_fruits

# input: string
# output: string

# Requirement/Rules:
#   Explicit:
#     - To return all vowels in a string without space. Exact case needs to be returned
#     - They can be duplicate.

# Test Cases/ Examples
#       'Hi' => 'i'
#       'Hello World' => 'eoo'
#       'I was there and' => 'Iaeea'
#       '' => ''

# Data Structure/Algorithm:
#       - set result string as empty
#       - Take first character in string
#       - Check if its vowel
#       - If yes store it in result string
#       - REPEAT ABOVE 3 steps unless last character is evaluated.
#       - print result string

# def vowel?(char)
#   'AEIOUaeiou'.include?(char)
# end

# def select_vowels?(input_string)
#   result_string = ''
#   counter = 0

#   loop do
#     current_char = input_string[counter]
#     result_string << current_char if vowel?(current_char)
#     counter += 1
#     break if counter == input_string.size
#   end

#   result_string
# end

# p select_vowels?("this was best")



# input: hash
# output: hash

# Requirements/Rules
#   Explicit:
#     - To return a key value pair in hash whose value is given to us.

# Test Cases

#   produce = {
#     'apple' => 'Fruit',
#     'carrot' => 'Vegetable',
#     'pear' => 'Fruit',
#     'broccoli' => 'Vegetable'
#   }

#   select_fruit(produce) # > {"apple"=>"Fruit", "pear"=>"Fruit"}

#   data structure & algorithm:
#     1. Set result hash as empty.
#     2. Evaluate each key value pair. Its its 'fruit' add the key-value pair to the result hash.
#       a. Store keys in new array
#       b. If hash[firstkey] value is equal to 'fruit' than
#       c. add hash[firstkey] = 'fruit' to the result hash.
#       d. REPEAT above 2 steps until all the keys are done.
#     3. Return result hash


# def select_fruit(produce)
#   fruit_hash ={}
#   counter = 0
#   keys_array = produce.keys

#   loop do
#     break if counter == keys_array.size
#     if produce[keys_array[counter]] == 'Fruit'
#       fruit_hash[keys_array[counter]] = 'Fruit'
#     end
#     counter += 1
#   end

#   fruit_hash
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce) # > {"apple"=>"Fruit", "pear"=>"Fruit"}


# input: array
# output = array

# Requirements/Rules:
#   Explicit: 
#     - the size of array can be different.
#     - to double the value for each element and return it.
    
#   Implicit  
#     - the elements of input array will be ONLY integers.
#     - to return a new array insteat of modifying it.
#     - empty array will return empty array.

# Test Cases/Examples
#   [1, 2, 3] => [1, 4, 6]
#   [] => []

# Data Structure and Algorithm:
#   - Set result array as empty
#   - Pick each element in array and multiply by 2 and store it in result array
#     a. Pick first element of array.
#     b. Multiply it by 2 and store in new result array.
#     c. REPEAT above 2 steps until all the elements are done.
#   - Return result array

# def double_numbers(input_array)
#   result_array = []
#   counter = 0
  
#   loop do
#     break if counter == input_array.size
#     current_element = input_array[counter]
#     result_array << current_element * 2
#     counter += 1
#   end

#   result_array
#   input_array = result_array
# end

# my_numbers =[1, 4, 8, 6]
# your_numbers = []

# p double_numbers(my_numbers)
# p double_numbers(your_numbers)
# p my_numbers

# input: array
# output = same array

# Requirements/Rules:
#   Explicit: 
#     - the size of array can be different.
#     - to double the value of each element and return it.
#     - have to return the same array with modified values.
    
#   Implicit  
#     - the elements of input array will be ONLY integers.
#     - empty array will return empty array.

# Test Cases/Examples
#   [1, 2, 3] => [1, 4, 6] # but same array
#   [] => [] # but same array

# Data Structure and Algorithm:
#   - Set result array as empty
#   - Pick each element in array and multiply by 2 and store it in result array
#     a. Pick first element of array.
#     b. Multiply it by 2 and store in new result array.
#     c. REPEAT above 2 steps until all the elements are done.
#   - Return result array
#   - Clear input array
#   - Add each element of result array to input array
#     - Pick first element of array and add to the input array.
#     - REPEAT above untill all the elements are done for result array


# def double_numbers!(input_array)
#   result_array = []
#   counter = 0
  
#   loop do
#     break if counter == input_array.size
#     current_element = input_array[counter]
#     result_array << current_element * 2
#     counter += 1
#   end

#   input_array.clear
#   counter1 = 0

#   loop do
#     break if counter1 == result_array.size
#     input_array << result_array[counter1]
#     counter1 += 1
#   end

# input_array
# end

# my_numbers =[1, 4, 8, 6]
# your_numbers = []

# p double_numbers!(my_numbers)
# p double_numbers!(your_numbers)
# p my_numbers
# p your_numbers

# input: array
# output : array

# Requirements and Rules:
#   Explicit:
#     - Input will be array of different size.
#     - To compare the value of each element and if its odd multiply it by 2 and if not return the same value.
#     - To return a new array instead of modifying it.

#   Implicit:
#     - Elments of array will only be integers. (Ignored strings, NIL values)
#     - Empty array will return empty array

# Test Cases/Examples
#   - [1, 2, 3] => [2, 2, 6]
#   - [1] => [2]
#   - [] => []

# Data Structure and Algorithm:
#   - Set odd_double_array is equal to empty.
#   - Evauate each value of array and compare it. If its odd multiply it by 2 else return same value.
#     -Evaluate first element of array
#     - If its odd, multiply it by 2 and add to the odd_double_array
#     - If not, add the first element as it is to the odd_double_array
#     - REPEAT above 2 steps until all the elements of input_array are done.
#   - Return odd_double_array

  # def odd_numbers_double(numbers)
  #   odd_numbers_double = []
  #   counter = 0
    
  #   loop do
  #     break if counter == numbers.size
  #     current_number = numbers[counter]

  #     if current_number.odd?
  #       odd_numbers_double << current_number * 2
  #     else
  #       odd_numbers_double << current_number
  #     end
      
  #     counter += 1
  #   end

  #   odd_numbers_double
  # end
    

  # my_numbers = [1, 2, 3, 4]
  # your_numbers = []

  # p odd_numbers_double(my_numbers)
  # p odd_numbers_double(your_numbers)

  # p my_numbers
  # p your_numbers
  
# input: array
# output : array

# Requirements and Rules:
#   Explicit:
#     - Input will be array of different size.
#     - To compare the index of each element and if its odd multiply it by 2 and if not return the same value.
#     - To return a new array instead of modifying it.

#   Implicit:
#     - Elments of array will only be integers. (Ignored strings, NIL values)
#     - Empty array will return empty array

# Test Cases/Examples
#   - [1, 2, 2, 4, 3] => [1, 4, 2, 8, 3]
#   - [1] => [2]
#   - [] => []

# Data Structure and Algorithm:
#   - Set odd_indexes_double = empty array
#   - Evalate each index. If its odd multiply that index value by 2 and store in result arrary.
#     Else store the same value in result array.
#       - Evaluate first index(i.e counter)
#       - If its odd, multiply index value by 2 and add it in result array.
#       - If not add the same value in result array
#       - REPEAT above 3 steps untill all the indexes are done.
#   - Return odd_indexes_double

# def odd_indexes_double(numbers)
#   odd_indexes_double_array = []
#   index = 0
  
#   loop do
#     break if index == numbers.size
#     if index.odd?
#       odd_indexes_double_array << numbers[index] * 2
#     else
#       odd_indexes_double_array << numbers[index]
#     end  

#     index += 1
#   end

#   odd_indexes_double_array
# end

# my_numbers = [1, 2, 2, 4, 3]
# your_numbers = [2]
# p odd_indexes_double(my_numbers)
# p odd_indexes_double(your_numbers)

# p my_numbers

# input: hash
# output: hash

# Requirements and Rules:
#   Explicit:
#     - To return a new hash based on 2 inputs(Array and value) containing:
#       - Each key value pair whose value is given in input.
#     - To return a empty hash if value not found. 

#   Implicit:
#     - To return a new hash rather than modifying its values.
#     - The input will always be 2. Not more Not less. 

# Test Cases / Examples:
#   produce = {
#     'apple' => 'Fruit',
#     'carrot' => 'Vegetable',
#     'pear' => 'Fruit',
#     'broccoli' => 'Vegetable'
#   }

#   general_select(produce, 'Fruit') => {"apple"=>"Fruit", "pear"=> "Fruit"}
#   general_select(produce, 'Vegetable') => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
#   general_select(produce, 'Meat') => {}

# Data Structure and Algorithm
#   - Set general_hash = {}
#   - Evaluate each value of hash and if it is equal to input_string 
#     then add that key value pair in result hash
#       - Add input_hash keys to keys_array
#       - Pick first element from keys_array and check its value from hash. 
#         Its its equal to input_string then add that key value pair in general hash.
#       -REPEAT above step for all the elements of keys_array and exit
#   - Return general_hash


# def general_select(input_hash, input_value)
#   general_hash = {}
#   keys_array = input_hash.keys
#   counter = 0

#   loop do
#     break if counter == keys_array.size
#     current_key = keys_array[counter]
#     current_value = 

#     if input_hash[keys_array[counter]] == input_value
#       general_hash[keys_array[counter]] = input_value
#     end
#     counter += 1
#   end

#   general_hash
# end

#   produce = {
#     'apple' => 'Fruit',
#     'carrot' => 'Vegetable',
#     'pear' => 'Fruit',
#     'broccoli' => 'Vegetable'
#   }

#   p general_select(produce, 'Fruit') # => {"apple"=>"Fruit", "pear"=> "Fruit"}
#   p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
#   p general_select(produce, 'Meat') # => {}

# input: array
# output: array

# Requirements and Rules
#   Explicit:
#     - To multiply each element of array by multiply_criteria
#     - Size of array can be different.
  
#   Implicit:
#     - To return a new array instead of modifying it.
#     - To return nil array is array is nil.
#     - If any element of array is nil or string or empty string, it will return same element.
#     - Parameters will always be given. There is no default value for parameter.

# Test Cases/ Examples:
# [1,2], 4            => [4, 8]
# [1, 3, 9]           => Error requires parameter
# [1, nil,'', 8], 8   => [8, nil, '', 64]
# [], 9               => []
# ['hello', 1.1], 8   => ['hello', '8.8']

# Data Structure and Algorithm
#   - Set multiply array as empty
#   - If number of elments in array is nil return nil array.
#   - Evaluate first element of array and check if its integer or float
#   - Multipy that element by multipy multiply_criteria and store it in multiply array
#   - Otherwise store same element value in multiply array
#   - REPEAT above 3 steps untill all the elements are done.
#   - Return multiply array


# def integer_or_float?(input)
#   input == input.to_i || input == input.to_f
# end


# def multiply(input_array, multiplication_criteria)
#   multiply_array = []
#   counter = 0
#   return multiply_array if input_array.size == 0

#   loop do
#     if integer_or_float?(input_array[counter])
#       multiply_array << input_array[counter] * multiplication_criteria
#     else
#       multiply_array << input_array[counter]
#     end

#     counter += 1
#     break if counter == input_array.size
#   end

# multiply_array
# end

# # => [4, 8]
# # => Error requires parameter
# # => [8, nil, '', 64]
# # => []
# # => ['hello', '8.8']


# p multiply([1,2], 4)
# # p multiply([1, 3, 9])
# p multiply([1, nil,'', 8], 8)
# p multiply([], 9)
# p multiply(['hello', 1.1], 8)


# input: string
# output: string

# Requirements and Rules
#   - To return a new string containing only that letter which we spicify (output)
#   - The string can be of different size

#   Implicit 
#   - To compare case sensitive and return case sensitive letter (h != H)
#   - Input will only be string. (Not handling any other objects like nil, integer, float etc)
#   - To return a new string instead of modifying it

# Test Cases/Examples
#     'Hello World!', l                               => 'lll'
#     'Hello World!', a                               => ''
#     'Hello World! how are you how its going' , H    => 'H'
#     'Hello World! how are you how its going' , h    => 'hh'
#     '', a                                           => ''



# Data Structure and Algorithm:
#     - Set letter_string as empty
#     - if input_string.size == 0 than return ''
#     - Evaluate each character of string and if its equal to input character
#       push that character in letter_string
#         - Evaluate first char of string.
#         - Compare it with input char, if it is equal to input char push input char into letter_string
#         - Evaluate for second char for the same and REPEAT for all the chars.
#         - Exit after all the chars are done.
#     - Return letter_string

# def select_letter(sentence, input_letter)
#   letter_string = ''
#   # return letter_string if sentence.size == 0
#   counter = 0

#   loop do
#     break if counter == sentence.size
#     letter_string << input_letter if sentence[counter] == input_letter
#     counter += 1
#   end

#   letter_string.size
# end

# p select_letter('Hello World!', 'l')    
# p select_letter('Hello World!', 'a')    
# p select_letter('Hello World! how are you how its going', 'H')    
# p select_letter('Hello World! how are you how its going' , 'h')    
# p select_letter('', 'a')    

alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end