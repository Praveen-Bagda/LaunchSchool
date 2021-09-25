arr = [1,3,5,11,9,11]

number = 13

p arr.include?(number)

index = 0

loop do
  if index >= arr.size
    p false
    break
  end

  if arr[index] == number
    p true
    break
  end
  index += 1
end

counter = 0

arr.each do |num|

  if num == number 
    p true
    break
  end

  if counter == arr.size - 1
    p false
    break
  end

  counter += 1
end