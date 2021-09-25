def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator_string = nil
denominator_string = nil

loop do
  puts ">> Please enter the numerator:"
  numerator_string = gets.chomp

  break if valid_number?(numerator_string)
  puts ">> Invalid input. Only integers are allowed."
end

loop do
  puts ">> Please enter the denominator:"
  denominator_string = gets.chomp

  if denominator_string.to_i == 0
    puts ">> 0 is not allowed. Please enter valid integer."
    next
  end

  break if valid_number?(denominator_string)
  puts ">> Invalid input. Only integers are allowed."
end


puts "#{numerator_string.to_i} / #{denominator_string.to_i} is #{numerator_string.to_i/denominator_string.to_i}"