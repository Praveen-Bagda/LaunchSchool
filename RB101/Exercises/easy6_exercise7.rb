# def halvsies(input_array)
#   result_array = []
#   break_array1 = []
#   break_array2 = []

#   break_array1_size = input_array.size / 2
#   break_array1_size += 1 if input_array.size.odd?
#   index = 0
#   break_array2_counter = break_array1_size

#   loop do 
#     break if index == break_array1_size
#     break_array1[index] = input_array[index]
#     index += 1
#   end

#   index = 0
#   loop do
#     break if break_array2_counter == input_array.size
#     break_array2[index] = input_array[break_array2_counter]
#     index += 1
#     break_array2_counter += 1
#   end

#   result_array << break_array1
#   result_array << break_array2

#   result_array
# end


def halvsies(input_array)
  middle = (input_array.size / 2.0).ceil
  first_half= input_array.slice(0, middle)
  second_half = input_array.slice(middle, input_array.size - middle)
  [first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]