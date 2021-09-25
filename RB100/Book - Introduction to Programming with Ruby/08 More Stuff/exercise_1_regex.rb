def has_lab?(string)
  if string.match(/lab/)
    puts string
  else
    puts "lab doesn't exist in this string"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")