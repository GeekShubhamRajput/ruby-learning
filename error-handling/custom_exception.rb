class OvenIsOffException < StandardError
end

class Oven
  attr_accessor :state

  def initialize
    @state = "off"
  end

  def turn_on
    self.state = "on"
  end

  def baked(item)
    raise OvenIsOffException, "Please turn the oven on !" if state == "off"

    "Baked : #{item}"
  end
end

oven = Oven.new
#oven.turn_on
p oven.baked("Sandwich")
