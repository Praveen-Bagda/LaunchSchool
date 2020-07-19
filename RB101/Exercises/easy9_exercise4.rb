def sequence(number)
  # counter = 1
  # result_array = []
  # loop do
  #   break if counter > number
  #   result_array << counter
  #   counter += 1 
  # end

  # result_array

  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]