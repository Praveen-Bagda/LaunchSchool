ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

# ages.reject! do |key, value|
#   value >= 100
# end

# ages.select! do |key, value|
#   value < 100
# end

ages.keep_if do |k, v|
  v < 100
end

p ages