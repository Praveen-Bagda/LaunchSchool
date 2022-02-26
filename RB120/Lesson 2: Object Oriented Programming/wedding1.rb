class Wedding
  attr_accessor :guests, :flowers, :songs

  def initialize(guests, flowers, songs)
    self.guests = guests
    self.flowers = flowers
    self.songs = songs
  end

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_wedding#(self)
    end
  end
end

class Chef
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def prepare_wedding#(wedding)
    prepare_food#(wedding.guests)
  end

  def prepare_food#(guests)
    puts "#{self.name} prepared the food for" #{guests}!!"
  end
end

class Decorator
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def prepare_wedding#(wedding)
    decorate_place#(wedding.flowers)
  end

  def decorate_place#(flowers)
    puts "#{self.name} decorated place with" #{flowers}"
  end
end

class Musician
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def prepare_wedding#(wedding)
    prepare_performance#(wedding.songs)
  end

  def prepare_performance#(songs)
    puts "#{self.name} made the fantastic songs" #{songs}"
  end
end

guests = ['Ashok', 'Praveen', 'Poonam']
flowers = ['Rose', 'Lily']
songs = ['Tu cheez badi hai mast mast', 'Hello Hello tu floor pai jab hain aayi']
nandu_halwai = Chef.new("Nandu Halwai")
murtaza_lightwala = Decorator.new("Murtaza Lightwala")
ar_rahman = Musician.new("AR Rahman")
manish_wedding = Wedding.new(guests, flowers, songs)
wedding_preparers = [nandu_halwai, murtaza_lightwala, ar_rahman]
manish_wedding.prepare(wedding_preparers)





  
    