class Animal
  attr_reader :color
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

puts Cat.ancestors

# Cat
# Animal
# Object (Class)
# Kernel (Module)
# BasicObject (Class)