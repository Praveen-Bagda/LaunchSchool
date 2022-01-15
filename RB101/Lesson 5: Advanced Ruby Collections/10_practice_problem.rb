arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

return_value =
arr.map do |hash|
  hash.transform_values { |value| value += 1}
end



return_value = 
arr.map do |hash|
  incremented_hash = {}
  hash.each do |k, v|
    incremented_hash[k] = v + 1
  end
  p incremented_hash
end


p return_value