return_value =
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p return_value

# count method performs count based on the truthy 
# return value of the block. If the block returns truthy
# value, it will count that element. Hence in this case it
# will return 2. 