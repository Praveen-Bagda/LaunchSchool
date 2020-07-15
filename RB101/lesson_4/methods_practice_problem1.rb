
a = 
[1, 2, 3].select do |num|
  num > 5
  'hi'
end

p a #=> [1, 2, 3]