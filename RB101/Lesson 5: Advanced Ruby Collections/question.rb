arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
incremented_hash = {}

return_value = 
arr.map do |hash|
  hash.each do |k, v|
    incremented_hash[k] = v + 1
  end
  p incremented_hash
  # => {:a=>2}
  # => {:a=>2, :b=>3, :c=>4}
  # => {:a=>2, :b=>3, :c=>4, :d=>5, :e=>6, :f=>7}
end

incremented_hash[:g] = 8

p return_value
# => [{:a=>2, :b=>3, :c=>4, :d=>5, :e=>6, :f=>7, :g=>8},
#     {:a=>2, :b=>3, :c=>4, :d=>5, :e=>6, :f=>7, :g=>8},
#     {:a=>2, :b=>3, :c=>4, :d=>5, :e=>6, :f=>7, :g=>8}]



