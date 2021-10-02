# input: array containing integers
# output: array containg integers
# rules
#   Explicit
#     - Mutiply the element by 2 if the index is odd.
#     - Return a new array.
#   Implicit
#     - Return empty array if input array is empty.

# p double_odd_numbers_by_index([1, 3, 5, 2, 8, 3]) == [1, 6, 5, 4, 8, 6]
# p double_odd_numbers_by_index([]) == []

# 1.  Set a new array as empty array
# 2.  Evaluate the index, if the index is odd multiply the  
#     the element at that index by 2 and add this new element to new array set in step 1.
# 3.  Otherwise, add the element as it is to the new array.
# 4.  Repeat step 2 & 3 until all the elements are done.
# 5.  Return the new array.

def double_odd_numbers_by_index(numbers)
  double_odd_indexes = []
  index = 0

  loop do
    break if index == numbers.size
    
    current_number = numbers[index] 
    if index.odd?
      current_number *= 2
      double_odd_indexes << current_number
    else
      double_odd_indexes << current_number
    end

    index += 1
  end

    double_odd_indexes
  end

p double_odd_numbers_by_index([1, 3, 5, 2, 8, 3]) == [1, 6, 5, 4, 8, 6]
p double_odd_numbers_by_index([]) == []

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers_by_index(my_numbers) == [1, 8, 3, 14, 2, 12]