class Pet
  attr_reader :type, :name  

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Owner
  attr_reader :name
  attr_accessor :number_of_pets

  def initialize(name)
    @name = name
    @number_of_pets = 0
  end

end

class Shelter
  attr_reader :owner_name, :pet_type, :pet_name
  @@owners = {}

  def adopt(owner, pet)
    if @@owners.key?(owner.name)
      @@owners[owner.name] << [pet.type, pet.name]
    else
      @@owners[owner.name] = [[pet.type, pet.name]]
    end

    owner.number_of_pets += 1
  end

  def print_adoptions
    @@owners.each do |owner_name, pets_info|
      puts "#{owner_name} has adopted the following pets:"
      pets_info.each do |pet_info|
        puts "a #{pet_info[0]} named #{pet_info[1]}"
      end
      puts ""
    end
  end
end

butterscotch  = Pet.new('cat', 'Butterscotch')
pudding       = Pet.new('cat', 'Pudding')
darwin        = Pet.new('bearded dragon', 'Darwin')
kennedy       = Pet.new('dog', 'Kennedy')
sweetie       = Pet.new('parakeet', "Sweetie Pie")
molly         = Pet.new('dog', 'Molly')
chester       = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."