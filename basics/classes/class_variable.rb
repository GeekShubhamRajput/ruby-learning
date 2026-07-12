# A class variable (@@) holds a single value that is accessible and shared 
# across the entire class and all objects created from it.

class Vehicle
  @@vehicle_count = 0

  def initialize(wheels, passenger)
    @wheels = wheels
    @passenger = passenger
    @@vehicle_count += 1
  end

  def self.vehicle_count
    @@vehicle_count
  end
end

puts Vehicle.vehicle_count

Vehicle.new(4, 6)
puts Vehicle.vehicle_count

Vehicle.new(6, 6)
puts Vehicle.vehicle_count
