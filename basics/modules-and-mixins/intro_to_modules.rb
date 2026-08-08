## Ruby Modules

# A module is a collection of methods, constants, and classes that can be 
# reused across different classes.

# Common Uses
# Share behavior between multiple classes
# Avoid duplicate code
# Create namespaces to organize constants/classes
# Ruby uses modules heavily for mixins

module LengthConversions

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet(10)         # 52800
puts LengthConversions.miles_to_inches(10)       # 633600
puts LengthConversions.miles_to_centimeters(10)  # 1609344.0
