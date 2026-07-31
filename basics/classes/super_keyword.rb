## The super Keyword

# What is super?
# The super keyword calls the same method from the parent (superclass). 
# It allows a child class to reuse or extend the parent's behavior instead of 
# replacing it completely.

# Use Cases
# 1. super
# Passes all current method arguments automatically to the parent method.

class Employee
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Manager < Employee
  def initialize(name, age)
    super
    puts "Manager #{@name} created"
  end
end

Manager.new("John", 35) # Manager John created

# 2. super()
# Calls the parent method without passing any arguments.

class Animal
  def speak
    puts "Animal makes a sound"
  end
end

class Dog < Animal
  def speak(sound)
    super()
    puts sound
  end
end

Dog.new.speak("Woof!")
# Animal makes a sound
# Woof!

# 3. super(arguments)
# Passes only the specified arguments to the parent method.

class Person
  def initialize(name)
    @name = name
    puts "Name: #{@name}"
  end
end

class Employee < Person
  def initialize(first_name, last_name)
    full_name = "#{first_name} #{last_name}"
    super(full_name)
  end
end

Employee.new("John", "Doe") # Name: John Doe
