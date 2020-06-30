def has_lab?(string)
  if /lab/.match(string)
    puts string
  else
    puts "Not found"
  end
end


has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")