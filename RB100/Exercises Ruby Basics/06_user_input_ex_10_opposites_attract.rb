def valid_integer?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def validate_number
  loop do
    puts "Please enter a positive or negative integer:"
    number = gets.chomp

    return number.to_i if valid_integer?(number)
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

first_number = nil
second_number = nil

loop do
  first_number = validate_number
  second_number = validate_number 

  break if (first_number < 0 && second_number > 0) || (second_number < 0 && first_number > 0) 
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

result = first_number + second_number
puts "#{first_number} + #{second_number} = #{result}"
