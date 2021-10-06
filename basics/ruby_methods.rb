=begin
# ruby_method :- Method is a collection of statements that perform some specific task and return the result.
 Defining & Calling the method: In Ruby, the method defines with the help of def keyword followed by method_name and end with end keyword. A method must be defined before calling and the name of the method should be in lowercase. Methods are simply called by its name. You can simply write the name of method whenever you call a method.

# Syntax:
  def method_name
    Statement 1
    Statement 2
  end
=end

def addition(a, b)
  a + b
end

def multiplication(*a)
  a.inject(:*)
end

p addition(2, 5)
p multiplication(2, 5, 7, 10, 5)
