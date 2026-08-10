## Ruby Enumerable Module

# Enumerable is a Ruby module that provides a collection of useful methods for iterating,
# searching, filtering, and transforming collections.
# Classes like Array, Hash, and Range include Enumerable.

class Refrigerator
  include Enumerable

  attr_reader :snacks, :drinks

  def initialize(snacks:, drinks:)
    @snacks = snacks
    @drinks = drinks
  end

  def items
    snacks + drinks
  end

  def each(&block)
    items.each(&block)
  end
end

fridge = Refrigerator.new(
  snacks: ["Chips", "Biscuits"],
  drinks: ["Coke", "Juice"]
)

fridge.each {|item| p "#{item} is delicious"}
fridge.collect {|item| p "#{item} is delicious"}
