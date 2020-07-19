# def multiply_list(array1, array2)
#   counter = 0
#   result_array = []
#   loop do
#     break if counter == array1.size
#     result_array << array1[counter] * array2[counter]
#     counter += 1
#   end
# result_array
# end

def multiply_list(array1, array2)
  result_array = []
  array1.each_with_index do |item, index|
    result_array << item * array2[index]
  end

  result_array
end


p multiply_list([3, 5, 7], [9, 10, 11])
