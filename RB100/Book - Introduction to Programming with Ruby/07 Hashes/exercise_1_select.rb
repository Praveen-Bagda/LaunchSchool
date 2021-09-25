family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }

immediate_family_hash = 
family.select { |key, val| (key == :sisters) || (key == :brothers) }

immediate_family_array =
immediate_family_hash.values.flatten

p immediate_family_array