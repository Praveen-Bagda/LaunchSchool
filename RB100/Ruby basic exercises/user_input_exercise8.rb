def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  numerator_try = nil
  loop do
    puts ">> Please enter the numerator: "
    numerator_try = gets.chomp
    break if valid_number?(numerator_try)
    puts ">> Invalid input. Only integers are allowed."
  end

  denominator_try = nil
  loop do
    puts ">> Please enter the denominator: "
    denominator_try = gets.chomp
    if denominator_try == '0'
      puts ">> Invalid input. Denominator of 0 is not allowed."
    elsif valid_number?(denominator_try) == false
      puts ">> Invalid input. Only integers are allowed."
    else break
    end
  end

  answer = numerator_try.to_i / denominator_try.to_i
  puts ">> #{numerator_try} / #{denominator_try} is #{answer}"
  break
end