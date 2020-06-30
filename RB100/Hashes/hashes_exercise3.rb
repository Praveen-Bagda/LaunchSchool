age = {Ram: 40, Praveen: 28, Ashok: 30, Rj: 27}

age.each_key do |k|
  puts k
end

age.each_value do |v|
  puts v
end

age.each do |k, v|
  puts "The age of #{k} is #{v}."
end