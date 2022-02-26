class Person
  def initialize(first_name, last_name)
    @first_name = capitalize_name(first_name)
    @last_name = capitalize_name(last_name)
  end

  def first_name=(name)
    @first_name = capitalize_name(name)
  end

  def last_name=(name)
    @last_name = capitalize_name(name)
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end

  private

  def capitalize_name(name)
    name.capitalize
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person