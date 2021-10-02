arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if  counter == arr.size
end

p arr


loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end