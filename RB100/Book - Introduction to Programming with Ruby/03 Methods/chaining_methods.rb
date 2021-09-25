def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end

p add_three(5)

p add_three(5).times {puts "this should print 8 times"}

# p "hi_there".length.to_s