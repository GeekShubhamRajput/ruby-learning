require "minitest/autorun"

class Pokemon
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end

class TestPokemon < Minitest::Test

  def test_name
    pokemon = Pokemon.new("Pikachu", :electric)
    
    assert_equal("Pikachu", pokemon.name)
  end

  def test_type
    pokemon = Pokemon.new("Pikachu", :electric)
    
    assert_equal(:electric, pokemon.type)
  end    
end

# Running:

# ..

# Finished in 0.001265s, 1580.7815 runs/s, 1580.7815 assertions/s.
# 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
