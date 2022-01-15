ages = {
  "Herman"  =>  32,
  "Lily"    =>  30,
  "Granpa"  =>  5843,
  "Eddie"   =>  10,
  "Marilyn" =>  22,
  "Spot"    =>  237
}

# ages_sum = ages.values.sum

# ages_sum = 0
# ages.each { |_, age | ages_sum += age}

ages_sum = ages.values.inject(:+)
 
p ages_sum