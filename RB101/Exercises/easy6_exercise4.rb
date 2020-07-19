# def reverse!(input_array)
#   copy = Array.new(input_array)

#   counter1 = 0
#   counter2 = -1

#   input_array.each do |_|
#     input_array[counter1] = copy[counter2]
#     counter1 += 1
#     counter2 -= 1
#   end

#   input_array
# end

def reverse!(input_array)
  left_index = 0
  right_index = -1

  while left_index < (input_array.size / 2)
    input_array[left_index], input_array[right_index] = input_array[right_index], input_array[left_index]
    left_index += 1
    right_index -= 1
  end

  input_array
end


list = [1, 2, 3, 4]
result = reverse!(list)
p result
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list1 = %w(a b e d c)
p reverse!(list1) == ["c", "d", "e", "b", "a"]
p list1 == ["c", "d", "e", "b", "a"]

list2 = ['abc']
p reverse!(list2) == ["abc"]
p list2 == ["abc"]

list3 = []
p reverse!(list3) == []
p list3 == []