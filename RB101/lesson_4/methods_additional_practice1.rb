flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "Bambam"]

# input: array
# output: hash

# Requirements and Rules:
#   Explici:
#     - To convert this array into hash:
#       - thier names as keys
#       - their position as values 

# Test cases
# ["Fred"]            => {'Fred' => 0}
# ["Fred", "Hello"]   => {'Fred' => 0, 'Hello' => 1}

# Data Structure and Algorithm:
#   - SET hash as empty
#   - SET counter = 0
#   - Pick first element of array as key and value should be counter
#   - Then do for second element and repeat untill all the elements of array are done. 
#   - RETURN hash


# def hash_with_index(array)
#   index_hash = {}
#   counter = 0
#   loop do
#     break if counter == array.size
#     index_hash[array[counter]] = counter
#     counter += 1
#   end

#   index_hash
# end

# p hash_with_index(flintstones)

# counter = 0
# a= 
# flintstones.each_with_object({}) do |element, hash|
#   hash[element] = counter
#   counter += 1
# end

# p a

index_hash = {}
flintstones.each_with_index do |object, index|
  index_hash[object] = index
end

p index_hash