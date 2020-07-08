flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flintstones = flintstones.slice("Barney").to_a.flatten

# flintstones.select! do |k,v|
#   k == "Barney"
# end
# flintstones = flintstones.to_a.flatten

# flintstones.delete_if do |k,v|
#   k != "Barney"
# end
# flintstones = flintstones.to_a.flatten

p flintstones.assoc("Barney")


p flintstones