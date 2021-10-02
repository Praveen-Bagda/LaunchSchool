produce = {
  'apple'   => 'Fruit',
  'carrot'  => 'Vegetable',
  'pear'    => 'Fruit',
  'borccol' => 'Vegetable'
}

# input = hash
# output = new hash
# rules
#     Explicit
#       - New hash should contain only those key-value pairs
#         that has value 'Fruit'

# 1.  Declare new hash as empty hash 
# 2.  Compare key-value pair, 
#     if the value is "Fruit" add that key-value pair to new hash
#       - Extract all keys into a new array.
#       - Compare each key value
#       - If its 'Fruit', add that key-value pair to new hash.  
# 3.  Repeat step 2 until all the key-value pairs are done.
# 4.  Return the new hash


def select_fruit(hash)
  fruit_hash = {}

  names = hash.keys
  counter = 0

  loop do
    break if counter == names.size

    current_name = names[counter]
    current_value = hash[current_name]

    fruit_hash[current_name] = current_value if current_value == 'Fruit'
    counter += 1
  end

  fruit_hash
end

p select_fruit(produce)