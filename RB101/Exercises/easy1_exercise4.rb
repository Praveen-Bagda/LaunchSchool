vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
]


# def count_occurences(input_array)
#   result_hash = {}
#   uniq_input_array = input_array.uniq
#   counter = 0

#   loop do
#     break if counter == uniq_input_array.size
#     result_hash[uniq_input_array[counter]] = input_array.count(uniq_input_array[counter])
#     counter += 1
#   end

# result_hash.each do |k, v|
#   puts "#{k} => #{v}"
# end

# end

vehicles1 = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'SUV', 'suv', 'suv'
]

def count_occurences(input_array)
  input_array.map! { |element| element.downcase}

  result_hash ={}
  input_array.uniq.each do |element|
    result_hash[element] = input_array.count(element)
  end

  result_hash.each do |element, count|
    puts "#{element} => #{count}"
  end

end

count_occurences(vehicles1)