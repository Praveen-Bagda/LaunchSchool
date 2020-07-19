def print_in_box(input_string)
  puts '+' + ('-' * (input_string.size + 2)) + '+'
  puts '|' + (' ' * (input_string.size + 2)) + '|'
  puts '| ' + input_string + ' |'
  puts '|' + (' ' * (input_string.size + 2)) + '|'
  puts '+' + ('-' * (input_string.size + 2)) + '+' 
end

print_in_box('This was great. Right?')