def find_dup (input_array)
  # input_array.each do |element|
  #   return element if input_array.count(element) == 2
  # end

  input_array.find do |element|
    input_array.count(element) == 2
  end
end


p find_dup([1, 5, 3, 1]) == 1
p find_dup([18, 9, 36, 96, 31, 19, 54, 73, 49, 73]) == 73