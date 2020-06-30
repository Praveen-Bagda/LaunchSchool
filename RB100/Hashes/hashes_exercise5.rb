person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "What is the value you want to search?"
value1 = gets.chomp


if person.has_value?(value1)
  puts "The value(#{value1}) found."
else
  puts "The value(#{value1}) did not found."
end