puts "Please write string"
a = gets.chomp.to_s
def uppercasestring(a)
  if a.lenght >= 10
    puts a.upcase
  else
    puts "The string is less than 10 letters!"
  end
end