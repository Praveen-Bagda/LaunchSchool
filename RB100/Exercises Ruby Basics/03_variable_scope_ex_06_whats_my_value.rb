a = 7

def my_value(b)
  b = a + a
end

my_value(a)

puts a # => Will raise an exception 'a' is not defined.