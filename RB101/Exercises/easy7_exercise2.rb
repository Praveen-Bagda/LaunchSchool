# def letter_case_count(input_string)
#   result_hash = {lowercase: 0, uppercase: 0, neither: 0}

#   input_string.chars.each do |char|
#     if ('a'..'z').to_a.include?(char)
#       result_hash[:lowercase] += 1
#     elsif ('A'..'Z').to_a.include?(char)
#       result_hash[:uppercase] += 1
#     else
#       result_hash[:neither] += 1
#     end
#   end

#   result_hash
# end

def letter_case_count(input_string)
  result_hash = {}
  characters = input_string.chars

  result_hash[:lowercase] = characters.count { |char| char =~ /[a-z]/}
  result_hash[:uppercase] = characters.count { |char| char =~ /[A-Z]/}
  result_hash[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/ }

  result_hash
end



p letter_case_count('abCdef 123')  == { lowercase: 5, uppercase: 1, neither: 4}
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3}
p letter_case_count('') == {lowercase: 0, uppercase: 0, neither: 0}