return_value = 
[1, 2, 3].select do |num|
  num > 5
  'hi'
end

p return_value
# [1, 2, 3] because select method performs selection based 
# on the return value of the block. If the return value of
# the block is truthy, it will include that element in
# new collection and return the new collection.
# In this case, it will always return 'hi' which is a 
# truthy value. Therefore select will return a new array
# containing all the elements in the original array.