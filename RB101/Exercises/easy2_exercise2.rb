SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length_in_mts = gets.to_f
puts "Enter the width of the room in meters:"
width_in_mts = gets.to_f

area_in_sq_mts = (length_in_mts * width_in_mts).round(2)
area_in_sq_ft = (area_in_sq_mts * SQMETERS_TO_SQFEET).round(2)

puts  "The area of the room is #{area_in_sq_mts} " + \
      "square meters (#{area_in_sq_ft} square feet)."