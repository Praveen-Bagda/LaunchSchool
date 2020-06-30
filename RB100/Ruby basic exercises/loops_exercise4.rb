loop do
  puts 'Should I stop looping'
  answer = gets.chomp
  if answer == "Yes"
    break
  else
    puts "Incorrect answer. Please answer 'Yes'."
  end
end