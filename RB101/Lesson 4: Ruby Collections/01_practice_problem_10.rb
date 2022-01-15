return_value =
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

p return_value

# [1, nil, nil]
# map method performs operation based on the return value
# of the block. For first element, if statement else condition
# evaluates to true so it returns the element itself.
# For other two elements if statetment condition
# (num > 1) evaluates to true so it prints that element
# BUT returns nil. Because put always returns nil.