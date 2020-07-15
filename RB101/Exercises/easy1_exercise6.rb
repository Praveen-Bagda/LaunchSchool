# input: string
# output: string

# Requirements and Rules:
#   Explicit:
#     - A string will contain 1 or more word.
#     - To return a string that contain 5 or more words reversed.
#     - Each string will only contain letters and spaces.
#     - Spaces should be included only when more than one word is present.
#   Implicit:
#     - Input validation? No
#     - Empty string will return empty string.

# Examples/ Test Cases:
#   - 'Professional'            => 'lanoisseforP'
#   - 'Walk around the block'   => 'Walk dnuora the kcolb'
#   - 'Launch School'           => 'hcnuaL loohcS'
#   - ''                        => ''
  
#   Data Structure and Algorithm:
#     - Split string into array.
#     - Iterate through array 
#       - if word.size >= 5 word.reverse
#     - Join array with split and return the string

# def reverse_words(input_string)
#   result_array = 
#   input_string.split.map do |word|
#     if word.size >= 5
#       word.reverse 
#     else
#       word
#     end
#   end

#   result_array.join(' ')
# end

def reverse_words(input_string)
  result_array =[]
  input_string.split.each do |word|
    word.reverse! if word.size >= 5
    result_array << word
  end

  result_array.join(' ')
end
  
p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')
p reverse_words('')