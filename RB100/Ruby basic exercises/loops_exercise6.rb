numbers = []

while numbers.size < 5 
  numbers.push rand(100)
end

puts numbers
puts numbers.size