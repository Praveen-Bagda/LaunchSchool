my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

p my_arr

# => 18
# => 7
# => 12
# => [[18, 7], [3, 12]]

