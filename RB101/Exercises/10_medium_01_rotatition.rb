# input: array
# output: new array
# rules
#   Explicit:
#     To return a new array in which the first element of the array should
#       be the last.
#     Original array should not be modified.

# Examples / Test Cases
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# Data Structure / Algorithm
# SET rotated_array = []
# SET counter = 1
# Iterate over the origianal array.
#   Push element in rotated array at orignal array (counter) 
# Push array first element if array size is greater than 0

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

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']
puts rotate_array([]) == []
puts rotate_array(['hi', 'bye']) == ['bye', 'hi']