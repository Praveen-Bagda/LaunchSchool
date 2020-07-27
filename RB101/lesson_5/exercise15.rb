arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


# even_integers_hashes = []


# arr.each do |hsh|
#   result_hsh = {}
#   hsh.each do |k, v|
#     result = 
#     v.all? do |num|
#       num.even?
#     end
#     result_hsh[k] = v if result 
#   end
#   even_integers_hashes << result_hsh unless result_hsh.empty?
# end      

even_integers_hashes = 
arr.select do |hsh|
  # hsh.values.flatten.all? { |num| num.even?}
  hsh.all? do |k, v|
    v.all? do |num|
      num.even?
    end
  end
end



p even_integers_hashes
