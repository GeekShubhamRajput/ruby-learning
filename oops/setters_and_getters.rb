## AttributeAccessor

# attr_accessor :- attr_accessor generates the automatic Getter & Setter method for the given item.

class User
  attr_accessor :first_name, :last_name, :age
end

user = User.new
user.first_name = "Shubham"
user.last_name = "Rajput"
user.age = 25

p "My name is #{user.first_name} #{user.last_name}, and I am #{user.age} years old."
