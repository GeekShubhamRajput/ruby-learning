## Assert Inclusion

# Use assert_includes(collection, object) in Minitest to check that 
# a collection includes a specific item.

require "minitest/autorun"

class Pokemon
  attr_reader :name, :type, :attacks
  
  def initialize(name, type)
    @name = name
    @type = type
    @attacks = []
  end

  def add_attack(attack)
    attacks << attack    
  end
end

class TestPokemon < Minitest::Test

  def setup
    @pokemon = Pokemon.new("Pikachu", :electric)
  end

  def teardown
    # Run this method after each test 
  end
  
  def test_name
    assert_equal("Pikachu", @pokemon.name)
  end

  def test_type
    assert_equal(:electric, @pokemon.type)
  end

  def test_add_attack
    @pokemon.add_attack("Shock Treatment")
    @pokemon.add_attack("Electric Shock")
    @pokemon.add_attack("Lightening Bolt")

    assert_includes(@pokemon.attacks, "Electric Shock")
  end
end

# Running:

# ...

# Finished in 0.001097s, 2734.7062 runs/s, 3646.2749 assertions/s.
# 3 runs, 4 assertions, 0 failures, 0 errors, 0 skips
