# p 1 <=> 2
# p 2 <=> 1
# p 2 <=> 2
# p 'a' <=> 'b'
# p 'c' <=> 'b'
# p 'd' <=> 'd'
# p 1 <=> 'c'

# p [1, 'c'].sort

# p 'a' <=> 'A'
# p 'A' <=> 'a'

# p 'a'.ord
# p 'A'.ord
# p '!'.ord
# p '}'.ord

# p '!' <=> '}'

# a = 
# [2, 5, 3, 4, 1].sort do |a, b|
#   b <=> a
# end

# p a

# b = ['arc', 'bat', 'cape', 'ants', 'cap']

# p b.sort
# # ['ants', 'arc', 'bat', 'cap', 'cape']

# p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

# a = 
# ['cot', 'bed', 'mat'].sort_by do |word|
#   word[1]
# end 

# p a

# people = {Kate: 27, john: 25, Mike: 18}

# a = 
# people.sort_by do |name, age|
#   name.capitalize
# end

# p a.to_h

# arr = [[1, 3], [2]]
# arr[1] = 'hi there'
# arr[0][1] = 5

# arr = [[1], [2]]

# arr[0] << [3]
# p arr

# a = [{a: 'ant'}, {b: 'bear'}]
# a[0][:c] = 'cat'
# p a

# arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']
# p arr[0]
# p arr[0][1][0]
# p arr[1]
# p arr[1][:b]
# p arr[1][:b][0]
# p arr[2][2]

# a = [1, 3]
# b = [2]
# arr = [a, b]
# arr [0][1] = 8
# p a

# arr1 = ["a", "b", "c"]
# arr2  = arr1.dup
# arr1[1].upcase!
# p arr1

# arr1 =  ["abc", "def"]
# arr2 = arr1.clone
# arr2[0].reverse!

# p arr1
# p arr2

# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup
# arr2.map! do |char|
#   char.upcase
# end

# p arr1
# p arr2

# arr1 = ['a', 'b', 'c']
# arr2 = arr1.dup
# arr2.each do |char|
#   char.upcase!
# end

# p arr1
# p arr2

# arr1 = ["a", "b", "c"].freeze
# arr2 = arr1
# arr2 << "d"
# p arr1
# p arr2

# str ="abc".freeze
# str << 'd'

# p 5.frozen?

# arr = [[1], [2], [3]].freeze
# arr[2] << 4
# p arr

# a = ["a", "b", "c"].freeze
# a[0] << 'b'
# p a

# a = [[1, 2], [3, 4]]
# a.map! do |arr|
#   arr << 6
# end

# p a

# a = 
# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
#   arr.first
# end

# p a

# my_arr = [[18, 7], [3, 12]].each do |arr|
#   arr.each do |num|
#     if num > 5
#       puts num
#     end
#   end
# end

# p my_arr

# a = 
# [[1,2], [3,4]].map do |arr|
#   arr.map do |num|
#     num * 2
#   end
# end

# p a

#[[2, 4], [6, 8]]
# a = 
# [{a: 'ant', b: 'elephant'} , { c: 'cat'}].select do |hash|
#   hash.any? do |key, value|
#     value [0] == key.to_s
#   end
# end

# p a


# arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

# b = 
# arr.sort_by do |sub_arr|
#   sub_arr.map do |num|
#     num.to_i
#   end
# end

# p b

# a = 
# [[8, 13, 27], ['apple', 'banana', 'contaloupe']].map do |arr|
#   arr.select do |item|
#     if item.to_s.to_i == item
#       item > 13
#     else
#       item.size < 6
#     end
#   end
# end

# p a

# [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
#   element1.each do |element do |element2|
#     element2.partition do |element3|
#       element3.size > 0
#     end
#   end
# # end

# p 100.size
# p "Hello".size

# [[[1, 2], [3, 4]], [5, 6]].map do |arr|
#   arr.map do |el|
#     if el.to_s.size == 1
#       el + 1
#     else
#       el.map do |n|
#         n + 1
#       end
#     end
#   end
# end


# def remove_evens!(arr)
#   cloned_arr = arr.dup
#   cloned_arr.map do |string|
#     # if num % 2 == 0
#     #   arr.delete(num)
#     # end
#   end
#   p arr
#   p cloned_arr
# end


# a = ['ab', 'abc', 'abcd', 'abcde']
# remove_evens!(a)

# arr1 = ['a', 'b', 'c']
# arr2 = arr1.dup

# a = {a: 1, b: 2}

# b =
# a.each_value do 
  
# a = {a: [1, 2, 3], b: [2, 4, 6]}

# p a.values

# arr = ['340', '15', '1', '3400', '141']

# p arr.sort

# p 4 <=> 5

# arr = [
#   {one: '1', two: 2},
#   [{four: 5, three: 6}, :three],
#   :three,
#   {2=> :two, 3=>:three}
# ]

# p arr[1][0][:three]
# p arr[1][1]
# p arr[2]
# p arr[3][3]

p 'a'.upcase
