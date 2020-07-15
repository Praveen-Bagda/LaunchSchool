a = 
{'abc': 'ant', 'abcd': 'bear'}.map do |key, value|
  if key.size > 3
    key
  end
end

p a # => 