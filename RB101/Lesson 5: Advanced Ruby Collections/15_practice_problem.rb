arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_array =
arr.select do |hash|
  even = true 
  hash.values.each do |sub_array|
    sub_array.each do |num|
      even = false if num.odd?
    end
  end
  even
end


p even_array