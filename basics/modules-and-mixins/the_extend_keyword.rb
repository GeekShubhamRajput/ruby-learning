## Ruby extend Keyword

# extend is used to add a module's methods as class methods to a specific object.

module Greetings
  def hello
    puts "Hello! from Greetings"
  end
end

class User
  extend Greetings
end

User.hello
# Hello! from Greetings
