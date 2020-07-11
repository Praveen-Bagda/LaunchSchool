arr = [1, 2, 3, 4, 5]
p arr
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

p counter.class