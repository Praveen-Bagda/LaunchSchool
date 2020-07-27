arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

result = {}

arr.each do |sub_array|
  result[sub_array[0]] = sub_array[1]
end

p result
