numbers = {
  high: 100,
  medium: 50,
  low: 10
}

half_numbers =  numbers.values.map do |num|
                  num / 2
                end

p half_numbers

half_numbers1 = numbers.map do |key, value|
                  value / 2
                end
            
p half_numbers1

