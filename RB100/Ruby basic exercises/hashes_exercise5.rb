number = {
  high: 100,
  medium: 50,
  low: 10
}

number.each do |key, value|
  puts "A #{key} number is #{value}."
end