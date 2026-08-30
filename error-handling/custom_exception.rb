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

    puts "Baked : #{item}"
  end
end

oven = Oven.new

begin 
  oven.baked("Sandwich")
rescue OvenIsOffException => e
  puts e.message
  puts "I will turn the oven on for you and try again!"
  oven.turn_on
  retry
end
