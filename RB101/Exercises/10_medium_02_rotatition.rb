# input: Integer
# output: Integer
# rules
#   Explicit
#     To rotate digits of a number based on argument.

# Test Cases / Examples
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Data Structure / Algorithm
# Set numbers_strings = number.to_s.chars
# SET right_strings = numbers_strings.last(number_of_digits)
# SET left_strings = numbers_strings.first(numbers_string.size - number of digits)
# rotate right_strings and save return value to rotated_strings
# Join left_strings and rotated_strings and print out the value.

def rotate_rightmost_digits(number, number_of_digits)
  numbers = number.to_s.chars
  right_numbers = numbers.last(number_of_digits)
  left_numbers = numbers.first(numbers.size - number_of_digits)

  rotated_array = rotate_array(right_numbers)
  left_numbers.concat(rotated_array)
  
  left_numbers.join.to_i
end

def rotate_array(array)
  rotated_array = []
  counter = 1
  loop do
    break if counter > (array.size - 1)
    rotated_array << array[counter]
    counter += 1
  end

  rotated_array << array.first if array.size > 0
   
  rotated_array
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917