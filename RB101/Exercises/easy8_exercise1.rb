def sum_of_sums(input_array)
  sum = 0
  counter = 1
  loop do
    break if counter > input_array.size
    sum += input_array[0, counter].sum
    counter += 1
  end

  sum
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35