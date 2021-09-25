greeting = 'Hello!'

# greeting.gsub!('Hello!', 'Goodbye!')

greeting.delete!('Hello!')
greeting << 'Goodbye!'

puts greeting