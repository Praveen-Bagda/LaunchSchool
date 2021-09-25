
# loop do
#   puts ">> Do you want me to print somethnig? (y/n)"
#   choice = gets.chomp.downcase
# 
#   if choice == 'y'
#     puts "something"
#     break
#   elsif choice == 'n'
#     break
#   else
#     puts ">> Invalid input! Please enter y or n"
#   end
# end

choice = nil

loop do
  puts "Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase

  break if %w(y n).include?(choice)
  puts ">> Invalid input? Please enter y or n"
end

puts 'something' if choice == 'y'