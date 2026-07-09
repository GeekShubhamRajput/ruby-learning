# private is an access control keyword in Ruby that makes methods accessible 
# only within the same class. Private methods cannot be called directly from 
# outside the object, which helps hide internal logic, protect data, and improve encapsulation.

# In the Person class, generate_aadhar_number is a private method 
# because it is only needed internally by initialize to generate the Aadhaar number. 
# Users can access the generated Aadhaar number through aadhar_number, 
# but they cannot call generate_aadhar_number directly.

class Person
  attr_reader :aadhar_number
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @aadhar_number = generate_aadhar_number
  end

  private

  def generate_aadhar_number
    "#{Time.now.year}-#{rand(1000..9999)}-#{rand(1000..9999)}"  
  end
end

person = Person.new("Boris", 16)
p person.name
p person.age
p person.aadhar_number
