loop do
  puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
  number_of_lines = gets.chomp.downcase
  break if number_of_lines == 'q'
  number_of_lines = number_of_lines.to_i
  if number_of_lines == "Q"
    break
  end

  if number_of_lines < 3
    puts "That's not enough lines."
  else
    number_of_lines.times do
      puts "Launch School is the best!"
    end
  end
end
