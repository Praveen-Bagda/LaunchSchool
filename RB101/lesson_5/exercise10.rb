a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# b =
# a.map do |hash|
#   hash.transform_values { |v| v + 1}
# end

b = 
a.map do |hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p b
p a
