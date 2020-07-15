# def reverse_sentence(input_string)
#   result_array = []
#   array = input_string.split
#   counter = array.size - 1 

#   loop do
#     break if counter < 0
#     result_array << array[counter]
#     counter -= 1
#   end

#   result_string = result_array.join(' ')
#   result_string
# end

def reverse_sentence(input_string)
  input_string.split.reverse.join(' ')
end

p reverse_sentence('') == ''
p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'