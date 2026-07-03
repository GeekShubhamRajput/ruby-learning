# Instance variables are variables that belong to an object.
# They are "data" that belongs to the object.
# They hold information on the object's current state.

# Instance variables begin with an @ symbol. Without the
# symbol, Ruby interprets a variable as a local variable.

# Ruby calls a special, private "initialize" method when an object is
# instantiated from a class. The initialize method offers a
# perfect place to create instance variables and assign them
# starting values.

# If we do not define an "initialize method", the object is
# initialized without state.

# The instance variable values do not have to stay constant.

class Student
  def initialize(name, age)
    @name = name
    @age = age
  end
end

student1 = Student.new("Shubham", 30)
student2 = Student.new("Rahul", 25)

p student1
p student2
