## Polymorphism

# Polymorphism is a method where one is able to execute the same method using different objects. In polymorphism, 
# we can obtain different results using the same function by passing different input objects.


## Super Keyword
#It calls a method on the parent class with the same name as the method that calls super.


class Vehicle

  def accelerate
    puts "I am in Vehicle.."
  end

end


class Car < Vehicle

  def accelerate
    super
    puts "I am in Car.."
  end

end

car = Car.new
car.accelerate
