# The Airplane class initializes object attributes (@maker, @model, and @seats) 
# `maker=` is a setter method that updates the `@maker` instance variable.

class Airplane

  def initialize
    @maker = "Boeing"
    @model = 757
    @seats = 60
  end

  def maker=(new_maker)
    @maker = new_maker
  end

  def maker
    @maker
  end

  def seats
    @seats
  end

  def model
    @model
  end

end

airplane = Airplane.new
p airplane.maker  #"Boeing"

airplane.maker = "Airbus"
p airplane.maker #"Airbus"
