# input: array
# output: array
#   rules
#     Explicit:
#       Compare first 2 elements.
#       If first element is greater than the second, swap their position.
#       Do it for all the elements.
#       Do it until there are no swaps possible.
#       Return the sorted array and mutate the array.
#       We can assume that the array contains atleast 2 elements.

# Examples / Test Cases
# bubble_bubble_sort!([5, 3]) == [3, 5]
# bubble_bubble_sort!([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# bubble_bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Data Structure and Algorithm:
# loop do
# Set exchange = 0
# Iterate over the array
#   if first element > second element
#     exchange += 1
#     swap the elements
# break if exchange == 0 
# return the modified array.

require 'pry-byebug'

def bubble_bubble_sort!(ary)
  loop do
    exchange = 0
    idx = 0
    # binding.pry
    loop do 
      if ary[idx] > ary[idx + 1]
        ary[idx], ary[idx + 1] = ary[idx + 1], ary[idx]
        exchange += 1
      end
      idx += 1
      break if idx > (ary.size - 2)
    end
    break if exchange == 0
  end

  ary
end

p bubble_bubble_sort!([5, 3]) == [3, 5]
p bubble_bubble_sort!([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p bubble_bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

p "****"
array = [6, 2, 7, 1, 4]
p array
bubble_bubble_sort!(array)
p array