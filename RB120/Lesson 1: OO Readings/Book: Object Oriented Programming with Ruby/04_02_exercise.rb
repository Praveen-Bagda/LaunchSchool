class Vehicle
  @@number_of_vehicles = 0

  def initialize
    @@number_of_vehicles += 1
  end

  def runs_on_road
    "It runs on road"
  end

  def self.mileage(litres, km)
    puts "#{km/litres.to_f} kms per litre of petrol."
  end

  def info
    "Total Vehicles: #{@@number_of_vehicles}"
  end

  def self.number_of_vehicles
    "Total Vehicles: #{@@number_of_vehicles}"
  end 
end

class MyCar < Vehicle
  NUMBER_OF_TYRE = 4
  WEIGHT = "1302 kg"

  attr_accessor :name

  def initialize(n)
    super()
    self.name = n
  end

  def info 
    super + ". #{self.name} has #{NUMBER_OF_TYRE} tyres."
  end
end

class MyTruck < Vehicle
  NUMBER_OF_TYRE = 6
  WEIGHT = "14969 kg"
  
  attr_accessor :name
  
  def initialize(n)
    super()
    self.name = n
  end

  def info
    super + ". #{self.name} has #{NUMBER_OF_TYRE} tyres"
  end
end


baleno = MyCar.new("Baleno")
p baleno.info

fido = MyTruck.new("Fido")
p fido.info

p Vehicle.number_of_vehicles