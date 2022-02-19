# bob = Person.new
# bob.hi

# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'


# I will make private method public.
# The problem is that method 'hi' is a private method, therefore it is unavailable to the object.
# I would fix this problem by moving the 'hi' method above the 'private' method call in the class.
