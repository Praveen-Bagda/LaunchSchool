class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# class Pizza has an instance variable @name. Instance variable starts with @.

hot_pizza = Pizza.new("cheese")
orange = Fruit.new("apple")

p hot_pizza.instance_variables
p orange.instance_variables 