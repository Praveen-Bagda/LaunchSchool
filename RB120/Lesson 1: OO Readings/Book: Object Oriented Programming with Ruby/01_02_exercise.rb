# A module is a collection of behaviours that is usable in other classes via mixins.
# A module is "mixed in" to a class using the include method invocation.
# A module is created to achieve polymorphism.
# Polymorphism is the ability for diffent types of data to respond to a common
#   interface.

module Age 
  def age(age)
    puts "#{age} years old!!"
  end
end

class HumanBeing
  include Age 
end

bob = HumanBeing.new
bob.age(29)
