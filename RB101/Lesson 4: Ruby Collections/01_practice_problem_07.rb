return_value =
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# block's return value is true, false, true
# block return value is determined by the return
# value of the last expression within the block.
# return_value = true
# Output = 1

