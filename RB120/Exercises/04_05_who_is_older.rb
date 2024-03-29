class Person
  attr_writer :age

  def older_than?(other)
    self.age > other.age
  end

  protected

  attr_reader :age

end

person1 = Person.new
person1.age = 17

person2 = Person.new
person2.age = 26

puts person1.older_than?(person2)
p person1.age
p person2.age