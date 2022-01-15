def joinor(array, delimiter = ', ', last_joining_word = 'or')
  string = ''
  counter = 0

  string = "#{array[0]}" if array.size == 1
  string = "#{array[0]} #{last_joining_word} #{array[1]}" if array.size == 2 

  if array.size >= 3
    loop do
      break if counter == array.size
      string += "#{array[counter]}#{delimiter}" unless counter >= array.size - 1
      string += "#{last_joining_word} #{array[counter]}" if counter == array.size - 1
      counter += 1
    end
  end

  string
end

def joinor1(array, delimiter = ', ', last_joining_word = 'or')
  case array.size
  when 0 then ''
  when 1 then array.first.to_s 
  when 2 then array.join(" #{last_joining_word} ")
  else
    array[-1] = "#{last_joining_word} #{array.last}"
    array.join(delimiter)
  end
end


# p joinor([1, 2])                   == "1 or 2"
# p joinor([1, 2, 3])                == "1, 2, or 3"
# p joinor([1, 2, 3], '; ')          == "1; 2; or 3"
# p joinor([1, 2, 3], ', ', 'and')   == "1, 2, and 3"
# p joinor([1]) == '1'
# p joinor([]) == ''
# 
p joinor1([1, 2])                   == "1 or 2"
p joinor1([1, 2, 3])                == "1, 2, or 3"
p joinor1([1, 2, 3], '; ')          == "1; 2; or 3"
p joinor1([1, 2, 3], ', ', 'and')   == "1, 2, and 3"
p joinor1([1]) == '1'
p joinor1([]) == ''