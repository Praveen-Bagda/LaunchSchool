# def cleanup(input_string)
#   input_string = input_string.gsub(/[^a-z]/," ")
#   loop do
#     break if input_string.include?("  ") == false
#     input_string.gsub!("  ", " ")
#   end
#   input_string
# end

def cleanup(input_string)
  array = ('a'..'z').to_a
  result = []

  input_string.chars.map do |char|
    if array.include?(char)
      result << char
    else
      result << " " if result.last != " "
    end
  end

  result.join
end

p cleanup("---what's my +*^ line?") == ' what s my line '
