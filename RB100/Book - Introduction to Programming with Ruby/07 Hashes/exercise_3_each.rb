hash = {one: 1, two: 2, three: 3, four: 4}

hash.each_key {|k| puts k}
hash.each { |k,v| puts k}

hash.each_value {|v| puts v}

hash.keys
hash.each { |k,v| puts "the key is #{k} and the value is #{v}"}