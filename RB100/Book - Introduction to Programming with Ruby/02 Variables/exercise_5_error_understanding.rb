# x = 0
# 3.times do
#   x += 1
# end
# puts x # Will print 3

y = 0
3.times do
  y += 1
  x = y
end
puts x # can't access variable x or undefined locat varialbe or method x