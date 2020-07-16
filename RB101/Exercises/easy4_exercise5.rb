def multisum(number)
  array = []
  counter = 1
  sum = 0
  loop do
    break if counter > number
    sum += counter if (counter % 3 == 0) || (counter % 5 == 0)
    counter += 1
  end

  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum(0) == 0

p [].reduce(0, :+)