def reverse(input_array)
  reverse_array = []

  counter1 = 0
  counter2 = -1
  input_array.each do |_|
    reverse_array[counter1] = input_array[counter2]
    counter1 += 1
    counter2 -= 1
  end

  reverse_array
end

p reverse([1, 2, 3 ,4]) == [4, 3, 2, 1]
p reverse(%w(a b e d c)) == %w(c d e b a)
p reverse(['abc']) == ['abc']
p reverse([]) == []

list = [1, 3, 2]
new_list = reverse(list)
p list.object_id != new_list.object_id
p list == [1, 3, 2]
p new_list == [2, 3, 1]