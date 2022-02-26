class Person
  def initialize(name)
    @name = name
  end
end

bob = Person.new('bob')
puts bob
p bob

p Person.ancestors # [Person, Object, Kernal, BasicObject]

#['to_s' method is defined in class Object]