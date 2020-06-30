USERNAME = 'admin'
PASSWORD = 'secreT'

loop do
  puts ">> Please enter user name:"
  username_try = gets.chomp.downcase 
  puts "Please enter your password: "
  password_try = gets.chomp

  break if username_try == USERNAME && password_try == PASSWORD
  puts ">> Authorization failed!"
end

puts "Welcome!"

