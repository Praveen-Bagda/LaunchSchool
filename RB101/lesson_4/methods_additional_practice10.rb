munsters = {
  "Herman" => { "age" => 32, "gender" => "male"},
  "Lily" => {"age" => 30, "gender" => "female"},
  "Grandpa" => { "age" => 402, "gender" => "male"},
  "Edie" => { "age" => 10, "gender" => "male"},
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


# Input: hash
# Output: Modified hash (Same hash)

# Requirements and Rules:
#   Explicit:
#     - Input hash will be nested hash.
#     - Input hash can be of different size.
#     - To insert age_group for each person
#     - age_group value should be as per below rule:
#       0-17 => "kid"
#       18-64 => "adult"
#       65+ => "senior"
#     - To return modified hash.
#   Implicit:
#     - Input validation? No
#     - It will be nested hash only with more than
#       person to ...
#     - age will always be given for each person in nested hash.

# Examples/Test Cases
#   - {"Cameron" => {"age" => 32, "gender" => "male"}} 
#       => {"Cameron" => {"age" => 32, "gender" => "male", "age_group" => "adult"}}
#   - {
#     "Cameron" => {"age" => 0, "gender" => "male"},
#     "Jessica" => {"age" => 1, "gender" => "female"},
#     "Mariya" => {"age" => 17, "gender" => "female"},
#     "Kati" => {"age" => 18, "gender" => "female"},
#     "Kelsey" => {"age" => 32, "gender" => "female"},
#     "Michael" => {"age" => 64, "gender" => "male"},
#     "Ross" => {"age" => 65, "gender" => "male"},
#     "Grandpa" => {"age" => 101, "gender" => "male"}
#   }
#     => {
#       "Cameron" => {"age" => 0, "gender" => "male", "age_group" => "kid"},
#       "Jessica" => {"age" => 1, "gender" => "female", "age_group" => "kid"},
#       "Mariya" => {"age" => 17, "gender" => "female", "age_group" => "kid"},
#       "Kati" => {"age" => 18, "gender" => "female", "age_group" => "adult"},
#       "Kelsey" => {"age" => 32, "gender" => "female", "age_group" => "adult"},
#       "Michael" => {"age" => 64, "gender" => "male", "age_group" => "adult"},
#       "Ross" => {"age" => 65, "gender" => "male", "age_group" => "senior"},
#       "Grandpa" => {"age" => 101, "gender" => "male", "age_group" => "senior"}
#     }

# Data Structure and Algorithm:
#     - Iterate through the hash and insert age_group for each key. 
#       Its value should be as per rules.
#         . Apply each to iterate through the hash
#         . For each key insert age_group and value should be based on if condition. 
            # (by comparing value for age key)
#     - Return the modified hash.

a = {
  "Cameron" => {"age" => 0, "gender" => "male"},
  "Jessica" => {"age" => 1, "gender" => "female"},
  "Mariya" => {"age" => 17, "gender" => "female"},
  "Kati" => {"age" => 18, "gender" => "female"},
  "Kelsey" => {"age" => 32, "gender" => "female"},
  "Michael" => {"age" => 64, "gender" => "male"},
  "Ross" => {"age" => 65, "gender" => "male"},
  "Grandpa" => {"age" => 101, "gender" => "male"}
}

# a.each do |k, v|
#   a[k]["age_group"] =
#   if      a[k]["age"].between?(0,17)  then "kid"
#   elsif   a[k]["age"].between?(18,64) then "adult"
#   else                                     "senior"
#   end
# end

# p a

# a.each do |k, v|
#   a[k]["age_group"]=
#   case
#   when (0..17).include?(a[k]["age"]) then "kid"
#   when (18..64).include?(a[k]["age"]) then "adult"
#   else "senior"
#   end
# end

a.each do |name, details|
  case details["age"]
  when 0..17
    details["age_group"] = "kid"
  when 18..64
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p a
