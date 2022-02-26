module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  
  def go_slow
    puts "I am a safe and driving slow."
  end
end

baleno = Car.new
baleno.go_fast

p baleno.class