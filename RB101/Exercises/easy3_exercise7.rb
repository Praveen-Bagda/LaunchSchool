# def oddities(input_array)
#   result_array = []
#   input_array.each_with_index do |element, index|
#     result_array << element if index.even?
#   end
#   result_array
# end

def oddities(input_array)
  result_array = []
  counter = 0
  while counter < input_array.size
    result_array << input_array[counter]
    counter += 2
  end
  result_array
end

p oddities([2,3,4,5,6])  == [2,4,6]
p oddities([1,2,3,4,5,6]) == [1,3,5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
