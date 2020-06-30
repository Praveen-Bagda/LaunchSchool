name_and_height = {name: "Praveen", height: "5 ft 10 inches"}
other_details = {weight: "70 Kgs", haircolor: "Black" }

p name_and_height.merge(other_details)
p name_and_height

puts "Ater merging"

p name_and_height.merge!(other_details)
p name_and_height