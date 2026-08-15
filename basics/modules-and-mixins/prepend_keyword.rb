## Ruby prepend Keyword

# prepend is used to insert a module before a class in the method lookup chain.
# When a module is prepended, its methods get higher priority than the class's methods.

module Logging
  def save
    puts "Logging..."
    super
  end
end

class User
  prepend Logging

  def save
    puts "Saving user"
  end
end

User.new.save
# Logging...
# Saving user
