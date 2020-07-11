# def a_method
#  a = 0 
#   while a < 5
#     '5'
#     a += 1
#     break '2' if a == 4
#   end
# end

# p :my_symbol

# s = '  abc def  ghi, jkl mno pqr, stu vwx yz  '
# puts s.split(' ').inspect
# puts s.split(',').inspect
# puts s.split('c', 2).inspect

# a = 
# [1, 2, 3].any? do |num|
#       num > 2
#     end

# p a

# b =
# { a: "ant", b: "bear", c: "cat"}.any? do |key, value|
#   value.size > 4
# end

# p b

# a =
# [1, 2, 3].all? do |num|
#   num > 2
# end

# p a

# b =
# { a: "ant", b: "bear", c: "cat"}.all? do |key, value|
#   value.size >= 4
# end

# p b

# a =
# [1, 2, 3].each_with_index do |num, index|
#   puts "The index of #{num} is #{index}."
# end

# p a

# b =
# { a: "ant", b: "bear", c: "cat"}.each_with_index do |pair, index|
#   puts "The index of #{pair} is #{index}"
# end

# p b

# a =
# [1, 2, 3].each_with_object([]) do |num, array|
#   array << num if num.odd?
# end

# p a

# b =
# { a: "ant", b: "bear", c: "cat"}.each_with_object([]) do |pair, array|
#   array << pair.last
# end

# p b

# b =
# {a: "ant", b: "bear", c: "cat"}.each_with_object({}) do |(key, value), hash|
#   hash[value] = key
# end

# p [1, 2, 3].first

# b = { a: "ant", b: "bear", c: "cat"}
# p b.first(2).to_h

# a = [1, 2, 3].include?(1)

# p a

# a = { a: "ant", b: "bear", c: "cat" }.include?(:a)

# p a

a = 
{ a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end

p a[0].to_h