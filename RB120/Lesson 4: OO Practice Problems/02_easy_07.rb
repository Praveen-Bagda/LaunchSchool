class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end



# @@cats_count variable is a class variable and is scoped at class level. It is intialized when
#   the class is defined. We can access class variable in class methods and instance methods.
#   It has only 1 copy.

# Code to test the theory

cat = Cat.new('red') # If the Class variable is initialized at class level and if accessible here:
                     #  It will increase its value by 1.
                     #  And will not raise the erro 'uninitialized class variable'
                     

p Cat.cats_count # If the Class variable is accessible here, it will return 1.

# The @@cats_count variable is here to keep track of how many cat instances have been created. 
#   We can know this because of where in the code the number incremented.
