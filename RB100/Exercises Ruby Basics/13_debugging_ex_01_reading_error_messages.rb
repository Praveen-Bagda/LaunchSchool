def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

p find_first_nonzero_among([0,0,3,0,2,0])
p find_first_nonzero_among([1])

# => Wrong number of arguments.
# => undefined method 'each' for 1:Integer