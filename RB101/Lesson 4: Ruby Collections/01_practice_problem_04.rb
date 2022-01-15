return_value =
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p return_value

# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}