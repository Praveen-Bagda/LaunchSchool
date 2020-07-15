
puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
future_retirement_age = gets.to_i

total_left_years = future_retirement_age - age

current_year = Time.now.year
future_retirement_year = current_year + total_left_years

puts "It's #{current_year}. You will retire in #{future_retirement_year}."
puts "You have only #{total_left_years} years of work to go!"
