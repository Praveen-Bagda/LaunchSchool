arr1 = [11, 12, 13]
hash1 = {a: 1}

return_value1 =
arr1.map do |n|
    hash1[:a] = n
end

p return_value1
# => [{:a=>13}, {:a=>13}, {:a=>13}]

p hash1
# => {:a=>13}
