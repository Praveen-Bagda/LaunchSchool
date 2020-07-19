# def multiply_all_pairs(array1, array2)
#   result_array = []
#   counter1 = 0

#   loop do
#     break if counter1 == array1.size
#     counter2 = 0
#     loop do
#       break if counter2 == array2.size
#       result_array << array1[counter1] * array2[counter2]
#       counter2 += 1
#     end
#     counter1 +=1 
#   end

#   result_array.sort
# end

def multiply_all_pairs(array1, array2)
  result_array = []
  array1.each do |item1|
    array2.each do |item2|
      result_array << item1 * item2
    end
  end

  result_array.sort
end




p multiply_all_pairs([2, 4], [4, 3, 2, 1]) == [2, 4, 4, 6, 8, 8, 12, 16]

