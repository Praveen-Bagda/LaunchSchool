def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end
  
p caps("Hello World")
p caps("Hi there")
