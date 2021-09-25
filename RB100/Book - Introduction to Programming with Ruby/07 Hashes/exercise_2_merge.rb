hash1 = {name: "Bob", age: 62, height: "6 ft"}
hash2 = {income: "100 thousand", hair: "brown"}

p hash1.merge(hash2)
p hash1 # => {name: "Bob", age: 62, height: "6 ft"}
p hash2 # => {income: "100 thousand", hair: "brown"}

p hash1.merge!(hash2)
p hash1 # => {name: "Bob", age: 62, height: "6 ft", income: "100 thousand", hair: "brown"}
p hash2 # => {income: "100 thousand", hair: "brown"}

# merge returns a NEW HASH contataing the contents of other_hash and the contents of hash.
# merge! Add the contents of other_hash to the hsh. It returns SAME HASH. It mutates the caller.