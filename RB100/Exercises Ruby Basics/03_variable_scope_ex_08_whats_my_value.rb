array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a # => Will raise exception undefined local variable or method 'a'