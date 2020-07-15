# input: array
# output: integer

def average(input_array)
  input_array.sum.to_f / input_array.size.to_f
end


puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

p average([1, 6])
p average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

