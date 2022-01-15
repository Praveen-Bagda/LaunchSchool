munsters = {
  "Herman"  =>  {"age" => 32,   "gender" => "male"  },
  "Lily"    =>  {"age" => 30,   "gender" => "female"},
  "Grandpa" =>  {"age" => 402,  "gender" => "male"  },
  "Eddie"   =>  {"age" => 10,   "gender" => "male"  },
  "Marilyn" =>  {"age" => 23,   "gender" => "female"}
}

# input: hash
# output: same hash
# rules:
#   Explicit
#     - Add new key "age_group" based on age criteria
#       0-17 kid, 18-64 adult, 65+ senior


# 1.  Evaluate first person age if it
#       between 0-17 then add "age_group" = 'kid'
#       between 18-64 then add "age_gourp" = "adult"
#       greater than 65 than add "age_group" = "senior"
# 2.  Repeat step 1 until all person's age is evaluated.


munsters.each do |name, details|
  case details["age"]
  when 0..17 
    details["age_group"] = 'kid'
  when 18..64 
    details["age_group"] = 'adult'
  else
    details["age_group"] = 'senior'
  end

end

p munsters
