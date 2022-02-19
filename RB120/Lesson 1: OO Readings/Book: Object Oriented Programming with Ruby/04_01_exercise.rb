class Vehicle
  def runs_on_road
    "It runs on road"
  end

  def self.mileage(litres, km)
    puts "#{km/litres.to_f} kms per litre of petrol."
  end
end

class MyCar < Vehicle
  NUMBER_OF_TYRE = 4
  WEIGHT = "1302 kg"

  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def info 
    "#{self.name} has #{NUMBER_OF_TYRE} tyres"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_TYRE = 6
  WEIGHT = "14969 kg"
  
  attr_accessor :name
  
  def initialize(n)
    self.name = n
  end

  def info
    "#{self.name} has #{NUMBER_OF_TYRE} tyres"
  end
end


baleno = MyCar.new("Baleno")
p baleno.runs_on_road
p baleno.info
MyCar.mileage(10,95)

fido = MyTruck.new("Fido")
p fido.runs_on_road
p fido.info
MyTruck.mileage(50, 125)
