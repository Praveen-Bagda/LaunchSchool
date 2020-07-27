# require 'pry'
# require 'pry-byebug'


def rotate_array(ary)
  # result = []
  # counter = 1
  # loop do
  #   break if counter >= ary.size
  #   # binding.pry
  #   result << ary[counter]
  #   counter += 1
  # end

  # result.push(ary[0]) if ary.size >= 1
  # result

  # ary.each_with_index do |obj, i|
  #   result << obj if i >= 1
  # end

  # result.push(ary[0]) if ary.size >= 1
  # result

  ary[1..-1] + [ary[0]]
end

x = [1, 2, 3, 4]
p rotate_array(x)
p x

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
# p rotate_array([]) == []