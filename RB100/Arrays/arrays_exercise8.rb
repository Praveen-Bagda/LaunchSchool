array = [1, 2, 3, 4]
new_array1 = []

array.map do |n|
  new_array1.push(n+2)
end

p array
p new_array1