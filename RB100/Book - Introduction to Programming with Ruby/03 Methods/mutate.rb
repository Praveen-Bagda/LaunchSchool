a = [1,2,3]

def mutate(array)
  array.pop
end


p "Beore mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# def no_mutate(array)
#   array.last
# end

# p "Beore mutate method: #{a}"
# no_mutate(a)
# p "After mutate method: #{a}"

