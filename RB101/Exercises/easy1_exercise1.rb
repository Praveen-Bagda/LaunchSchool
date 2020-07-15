# def repeat(input_string, number)
#   counter = 0
#   while counter < number
#     puts input_string
#     counter += 1
#   end
# end

def repeat(input_string, number)
  number.times do
    puts input_string
  end
end

repeat('How are you', 10)