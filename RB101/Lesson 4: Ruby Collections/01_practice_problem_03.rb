return_value =
[1, 2, 3].reject do |num|
  puts num
end

p return_value

# [1, 2, 3]. It will return because rejct performs operation
# based on the return value of the block. If the return value is false or nil,
# it will include that element.
