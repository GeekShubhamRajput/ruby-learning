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
    puts "Test is done, Deleting Pokemon from database" 
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

# Test is done, Deleting Pokemon from database
# .Test is done, Deleting Pokemon from database
# .Test is done, Deleting Pokemon from database
# .

# Finished in 0.001099s, 2729.4364 runs/s, 3639.2486 assertions/s.
# 3 runs, 4 assertions, 0 failures, 0 errors, 0 skips
