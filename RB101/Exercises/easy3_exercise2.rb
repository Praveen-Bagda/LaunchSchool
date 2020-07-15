puts "==> Enter the first number:"
first_number = gets.to_i
puts "==> Enter the second number:"
second_number = gets.to_i

sum_result        = first_number +  second_number
minus_result      = first_number -  second_number
multiply_result   = first_number *  second_number
divide_result     = first_number /  second_number
modulo_result     = first_number %  second_number
power_result      = first_number ** second_number


puts "==> #{first_number} + #{second_number} = #{sum_result}"
puts "==> #{first_number} - #{second_number} = #{minus_result}"
puts "==> #{first_number} * #{second_number} = #{multiply_result}"
puts "==> #{first_number} / #{second_number} = #{divide_result}"
puts "==> #{first_number} % #{second_number} = #{modulo_result}"
puts "==> #{first_number} ** #{second_number} = #{power_result}"