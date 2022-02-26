class Television
  def self.manufacturer
    # method logic
    puts "Class Method"
  end

  def model
    # method logic
    puts "Instance Method"
  end
end

tv = Television.new
# tv.manufacturer # Will raise an error. Undefined method for TV object.
# tv.model # Will execute Television#model instance method.

# Television.manufacturer # Will execute Television::manufacturer class method. 
# Television.model # Will raise an error. Undefined method for TV class.