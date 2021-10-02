# input: array containing integers and multipy_number_creteria
# output: new array
# rules:
#   Exlicit:
#     - multiply_number_criteria is an integer
#     - to return new array
#   Implicit:
#     - To return empty array if input array is empty

# multiply([1, 4, 7], 3) == [3, 12, 21]
# multiply([2, 5], 10) == [20, 50]
# multiply([], 10) == []

# 1.  Set modified array as new empty array.
# 2.  Mutiply first element by multiply_number_criteria.
#     Add this value to the modified array.
# 3.  Repeat step # 2 until all the elements are done.
# 4.  Return modified array.


def multiply(numbers, multiply_number_criteria)
  modified_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    modified_numbers << (current_number * multiply_number_criteria)

    counter += 1
  end

  modified_numbers
end


p multiply([1, 4, 7], 3) == [3, 12, 21]
p multiply([2, 5], 10) == [20, 50]
p multiply([], 10) == []

p multiply([6,7], 6)