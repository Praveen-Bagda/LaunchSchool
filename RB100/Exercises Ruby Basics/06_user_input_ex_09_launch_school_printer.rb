number_of_lines = 0

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  answer = gets.chomp

  break if answer.downcase == 'q'

  number_of_lines = answer.to_i
  if number_of_lines >= 3
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  elsif number_of_lines < 3
    puts ">> That's not enough lines."
  end

end