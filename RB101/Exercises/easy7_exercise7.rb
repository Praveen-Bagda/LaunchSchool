def show_multiplicative_average(input_array)
  multiply_sum = 1.to_f
  input_array.each { |digit| multiply_sum *= digit}
  result = multiply_sum/input_array.size

  "=> The result is #{format("%.3f", result)}"
end

p show_multiplicative_average([3,5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) 