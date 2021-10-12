## Abstraction in Ruby

=begin
Abstraction is the concept of object-oriented programming that shows only essential attributes 
and hides unnecessary information.


# Data Abstraction using Access Control/Access Modifiers/Access Specifiers

1. Public
2. Protected
3. Private

=end

class User

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name_with_age
    puts "Name:#{@name} and Age:#{@age}"
    puts user_name
    puts user_age
  end

  protected

    def user_name
      @name
    end

  private

    def user_age
      @age
    end 
end


user = User.new("Abhishek", 26)
user.name_with_age
