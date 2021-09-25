# p arr = ["b", "a"] # => ["b", "a"]
# p arr = arr.product(Array(1..3)) # => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
# p arr.first.delete(arr.first.last) # => 1

# p arr

# # => 1 [["b], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

p arr = ["b", "a"] # => ["b", "a"]
p arr = arr.product([Array(1..3)]) # => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
p arr.first.delete(arr.first.last) # => [1,2,3]

p arr



