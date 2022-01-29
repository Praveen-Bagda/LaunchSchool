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

# Data Structure / Algorithm
# Prepare a fibonnaci series upto n(argument) number in an array
#   First two elements of that array will be 1.
#   Third element will be array (3-1) + array (3 - 2),
#   Fourth element will be array (4-1) + array (4 - 2) and so on...
#   Do it until array contains n(argument) elements.
# Return the last number of that series 

def fibonacci(number)
  return 1 if number <= 2

  fibonacci_series = []
  fibonacci_series.push(1,1)
  index = 2
  loop do
    fibonacci_series[index] = fibonacci_series[index - 1] + fibonacci_series[index - 2] 
    index += 1
    break if index >= number
  end

  fibonacci_series.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501