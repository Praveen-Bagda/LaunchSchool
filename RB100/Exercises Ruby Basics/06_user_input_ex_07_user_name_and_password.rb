USER = 'admin'
PASSWORD = 'secreT'

loop do
  puts ">> Please enter user name:"
  try_user = gets.chomp
  puts ">> Please enter your password:"
  try_password = gets.chomp
  
  break if try_user == USER && try_password == PASSWORD
  puts ">> Authorization failed!"
end

puts 'Welcome!'