arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

sorted_arr =
arr.sort_by do |sub_arrary|
  sub_arrary[2]
end

sorted_arr =
arr.sort_by do |sub_arrary|
  sub_arrary.select do |num|
    num.odd?
  end
end

p sorted_arr