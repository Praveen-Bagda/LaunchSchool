vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# Find all the uniq values and store in an new array
# Iterate first array and original array to find out number of occurences 
# While iterating print uniq value and number of occurences.

def count_occurrences(array)
  uniq_ary = array.uniq
  uniq_ary.each do |element|
    counter = 0
    array.each do |org_element|
      counter += 1 if element == org_element
    end
      puts "#{element} => #{counter}"
  end
end

# def count_occurrences(array)
#   occurences = {} 
#   array.uniq.each do |element|
#     occurences[element] = array.count(element)
#   end
# 
#   occurences.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end

count_occurrences(vehicles)
