arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

return_value = 
arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

p return_value
