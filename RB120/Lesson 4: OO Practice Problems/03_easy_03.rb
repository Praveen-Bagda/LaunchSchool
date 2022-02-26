class AngryCat
  def initialize(age, name)
    @age = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

kitty = AngryCat.new(2, "Kitty")
pamela = AngryCat.new(3, "Pamela")

kitty.age
kitty.name
pamela.age
pamela.name