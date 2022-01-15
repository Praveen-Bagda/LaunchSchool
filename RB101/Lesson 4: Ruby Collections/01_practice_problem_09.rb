return_value = 
{ a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

p return_value

# [nil, 'bear']
# Becuase map performs operation based on the return
# value of the block. And since if statement is the last
# expression within the block, the block returns nil & 'bear'.
# if statement returns nil is there is no return value defined
# for that partiular branch.
# When none of the conditions in an if statements evaluates to true,
# the if statement ifself returns nil.
