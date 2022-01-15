arr = ['10', '11', '9', '7', '8']

return_value =
arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p return_value