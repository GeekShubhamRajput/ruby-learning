## Ruby Comparable Module

# The Comparable module provides comparison methods such as <, <=, ==, >=, and > to a class.
# To use it, include Comparable and define the <=> (spaceship) operator.

class OlympicMedal
  include Comparable
  
  attr_reader :type

  MEDAL_VALUES = { gold: 3, silver: 2, bronze: 1 }


  def initialize(type:)
    @type = type
  end

  def <=>(other)
    current_medal_value = MEDAL_VALUES[type]
    other_medal_value = MEDAL_VALUES[other.type]

    if current_medal_value < other_medal_value
      -1
    elsif current_medal_value == other_medal_value
      0
    else
      1
    end
  end
end

gold = OlympicMedal.new(type: :gold)
silver = OlympicMedal.new(type: :silver)
bronze = OlympicMedal.new(type: :bronze)

puts gold < silver  # false
puts gold > silver  # true
puts gold == silver # false
puts bronze != silver # true
puts silver.between?(bronze, gold) # true
