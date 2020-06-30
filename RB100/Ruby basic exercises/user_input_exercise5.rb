loop do
puts ">> How many output lines do you want? Enter a number >= 3:"
answer = gets
  if answer >= 3
    answer.times do
      puts "Launch School is the best!"  
    end
    break
  end
  puts "That's not enough lines."
end