# def find_fibonacci_index_by_length(number)
#   fibonacci_array = [1, 1]
#   fibonacci_string_array = ['1', '1']

#   loop do
#     break if fibonacci_string_array.last.size == number
#     fibonacci_array << fibonacci_array[-1] + fibonacci_array[-2]
#     fibonacci_string_array << fibonacci_array.last.to_s
#   end

#   fibonacci_string_array.size
# end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end





p find_fibonacci_index_by_length(2) == 7
# p find_fibonacci_index_by_length(3) == 12
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847