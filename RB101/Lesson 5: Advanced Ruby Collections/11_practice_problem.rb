arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

return_value = 
arr.map do |sub_arrary|
  sub_arrary.select do |num|
    num % 3 == 0
  end
end

p return_value