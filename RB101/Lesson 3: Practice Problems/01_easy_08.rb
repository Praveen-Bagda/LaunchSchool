flintstones = {
  "fred"    => 0,
  "Wilma"   => 1,
  "Barney"  => 2,
  "Betty"   => 3,
  "BamBam"  => 4,
  "Pebbles" => 5      
}

flintstones.select! { |k, v| k == "Barney"}
flintstones = flintstones.flatten
p flintstones

flintstones = {
  "fred"    => 0,
  "Wilma"   => 1,
  "Barney"  => 2,
  "Betty"   => 3,
  "BamBam"  => 4,
  "Pebbles" => 5      
}

p flintstones.assoc("Barney")
p flintstones
