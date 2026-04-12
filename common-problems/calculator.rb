## calculator Program

class Calculator
  attr_reader :a, :b, :operation

  def initialize(a, b, operation)
    @a = a
    @b = b
    @operation = operation  
  end

  def execute
    if operation == "add"
      addition(a, b)
    elsif operation == "subs"
      substract(a, b)
    elsif operation == "mul"
      multiply(a, b)
    elsif operation == "div"
      division(a, b)
    else
      "Invalid Operation"
    end
  end

  private

  def addition(a, b)
    a + b
  end

  def substract(a, b)
    a - b 
  end

  def multiply(a, b)
    a * b
  end

  def division(a, b)
    a / b
  end
end

puts Calculator.new(4, 3, "add").execute
puts Calculator.new(4, 3, "subs").execute
puts Calculator.new(4, 3, "mul").execute
puts Calculator.new(4, 3, "div").execute
puts Calculator.new(4, 3, "sfs").execute
