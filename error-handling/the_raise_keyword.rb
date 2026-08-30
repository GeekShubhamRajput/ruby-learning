## The raise Keyword

# The raise keyword is used to manually trigger an exception when an 
# error or unexpected condition occurs.

class Oven
  attr_accessor :state

  def initialize
    @state = "off"
  end

  def turn_on
    self.state = "on"
  end

  def baked(item)
    raise "Please first turn the oven on!!" if state == "off"
    "Baked : #{item}"
  end
end

oven = Oven.new
oven.turn_on
p oven.baked("Pizza")
