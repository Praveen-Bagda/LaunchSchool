class Student
 def initialize(name, grade) 
  @name = name
  @grade = grade
 end

 def better_grade_than?(other_student)
  grade > other_student.grade
 end

 protected

 def grade
  @grade
 end
end

joe = Student.new("Joe", 8)
bob = Student.new("Bob", 10)

if joe.better_grade_than?(bob)
  puts "Well done!" 
else
  puts "It's working!"
end

p joe.grade