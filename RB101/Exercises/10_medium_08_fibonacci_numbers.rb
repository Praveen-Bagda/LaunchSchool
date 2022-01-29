# input: number
# output: number
# rules:
#   Explicit:
#     To return a fibonacci series number based on input argument.
#     Fibonacci series is (1, 1, 2, 3, 5....)

# Examples/Test Cases
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# Data Structure and Algorithm:
# To return 1 if input argument is 1 or 2
# If the input argument is more than 2, than is tum of preious 2 numbers.

def fibonacci(number)
  return 1 if (number == 1) || (number == 2)
  if number > 2
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100)