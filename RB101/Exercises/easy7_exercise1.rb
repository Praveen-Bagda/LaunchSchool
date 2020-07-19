def interleave(array1, array2)
  result_array = []
  index = 0
  array2.each do |element|
    result_array << array1[index]
    result_array << element
    index += 1
  end

  result_array
end

p interleave([1, 2, 3], ['a', 'b', 'c'])