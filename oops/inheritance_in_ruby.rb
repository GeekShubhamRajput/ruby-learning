## Inheritance in Ruby

# Inheritance is an OOP feature that allows a child class to inherit the properties
# and methods of a parent class. It promotes code reusability and allows the child
# to extend or override the parent's behavior.
# Ruby supports single inheritance and multilevel inheritance (but not multiple inheritance).
# SubClass < SuperClass

class Animal
  def breathe
    "Breathing"
  end
end

class Mammal < Animal
  def walk
    "Walking"
  end
end

class Dog < Mammal
  def bark
    "Barking..."
  end
end

dog = Dog.new
puts dog.breathe   # Breathing
puts dog.walk      # Walking
puts dog.bark      # Barking...
