def multiply_by_five(n)
  n * 5
end

puts "Hello Which number would you like to multiply by 5?"
number = gets.to_i

puts "The resule is #{multiply_by_five(number)}!"