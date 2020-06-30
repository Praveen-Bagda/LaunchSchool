def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

number1 = nil
number2 = nil

loop do 
  loop do
    puts ">> Please enter first positive or negative number"
    number1 = gets.chomp
    if valid_number?(number1) == true
      number1 = number1.to_i
      break
    else
      puts "Invalid input. Only non-zero integers are allowed."
    end
  end

  loop do
    puts ">> Please enter second positive or negative number"
    number2 = gets.chomp
    if valid_number?(number2) == true
      number2 = number2.to_i
      break
    else
      puts "Invalid input. Only non-zero integers are allowed."
    end
  end
  if ((number1 > 0) && (number2 < 0)) || ((number1 < 0) && (number2 > 0))
    break
  else
    puts ">> Sorry. One integer must be positive, one must be negative."
    puts ">> Please start over."
  end
end


puts "#{number1} + #{number2} = #{number1 + number2}"