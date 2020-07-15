def add_suffix(number)
  case number
  when 1    then "st"
  when 2    then "th"
  when 3    then "rd"
  when 4..5 then "th"
  end
end

counter = 1
result_array = []

while counter < 6
  puts "==> Enter the #{counter}#{add_suffix(counter)} number:"
  number = gets.chomp.to_i
  result_array << number
  counter += 1
end

puts "==> Enter the last number:"
search_number = gets.to_i

if result_array.include?(search_number)
  puts "The number #{search_number} appears in #{result_array}."
else
  puts "The number #{search_number} does not appear in #{result_array}."
end

