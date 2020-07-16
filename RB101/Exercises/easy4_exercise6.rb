# - To push first element in result array as is it
#   if array.size if more than 0.
# - Put second element but its value should be second + first.
# - Put third element but its value should third + second + first.
# - Repeat untill all the elements of input array are done.
# - Output result array.


def running_total(input_array)
  result_array = []
  counter = 0
  sum = 0

  loop do
    break if counter == input_array.size
    sum += input_array[counter]
    result_array << sum
    counter += 1
  end

  result_array
end

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value}
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

