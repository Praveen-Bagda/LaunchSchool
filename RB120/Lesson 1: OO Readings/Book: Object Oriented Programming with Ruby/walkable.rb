module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

# p "---Animal method lookup---"
# p Animal.ancestors
# 
# fido = Animal.new
# p fido.speak
# p fido.walk
# p fido.swim

puts "---GoodDog method lookup---"
puts GoodDog.ancestors