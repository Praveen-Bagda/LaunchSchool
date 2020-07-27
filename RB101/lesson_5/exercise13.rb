arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

b = 
arr.sort_by do |sub_arr|
 sub_arr.map do |num|
    if num.odd?
      num
    else 
      0
    end
  end
end

p b

# a =  [[1, 3, 2, 7, 5], [1, 3, 0, 3, 7], [1, 3, 8, 1, 9]]

# b = 
# a.sort_by do |subarray|
#   subarray.map do |element|
#     if element.odd?
#       element
#     else
#       0
#     end
#   end
# end

# p b
