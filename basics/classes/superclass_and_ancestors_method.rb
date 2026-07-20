## Ruby superclass and  Method

## Ruby superclass method
The superclass method returns the parent class of a class. It shows from which 
class the current class inherits.

superclass → a_super_class or nil

class Animal; end
class Dog < Animal; end

p Dog.superclass                                    # Animal
p Dog.superclass.superclass                         # Object
p Dog.superclass.superclass.superclass              # BasicObject   
p Dog.superclass.superclass.superclass.superclass   # nil

BasicObject.superclass   #=> nil

## Ruby ancestors Method
The ancestors method returns the inheritance chain of a class, including 
any modules mixed in with include.

ancestors → array

module Walkable; end
class Animal; end
class Dog < Animal
  include Walkable
end

p Dog.ancestors # [Dog, Walkable, Animal, Object, Kernel, BasicObject]
