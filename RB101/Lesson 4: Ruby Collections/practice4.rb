# input: array containing integers
# output: same array
# rules:
#   Explicit:
#     - Mutiply each element by 2.
#     - Should return the same array. Mutate the array.
#   Implicit:
#     -Should return empty array for empty array input.

# [1 ,2 ,5, 10] => [2, 4, 10, 20] 
# [] => []

# 1.  Use the first element of input array and multipy by 2.
# 2.  Repeat step # 1 for all the elements.
# 3.  Return the input array.  

def double_numbers!(array)

  counter = 0

  loop do
    break if counter == array.size
    array[counter] *= 2
    counter += 1
  end

  array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers

double_numbers!(my_numbers)
p my_numbers
