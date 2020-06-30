family = {  "Uncles" => ["bob", "joe", "steve"],
            "sisters" => ["jane", "jill", "beth"],
            "brothers" => ["frank", "rob", "david"],
            "aunts" => ["mary", "sally", "susan"]
          }

immmediate_family_members = []

immmediate_family_members = family.select do |k, v|
                              (k == "sisters") || (k == "brothers")
                            end

p immmediate_family_members.values.to_a.flatten

arr = immmediate_family_members.flatten

p arr
p immmediate_family_members
  