## Assert Error was Raised

# assert_raises is used to verify that a specific exception is raised. 
# We pass the code that may raise the exception inside a block.

require "minitest/autorun"

class InvalidAttackError < StandardError
end

class Pokemon
  attr_reader :name, :type, :attacks

  def initialize(name, type)
    @name = name
    @type = type
    @attacks = []
  end

  def add_attack(attack)
    raise InvalidAttackError unless attack.is_a?(String)

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
    @pokemon.add_attack("Electric Shock")
    assert_includes(@pokemon.attacks, "Electric Shock")
  end

  def test_invalid_attack
    assert_raises(InvalidAttackError) do
      @pokemon.add_attack(15)
    end
  end
end

# Running:

# ....

# Finished in 0.001170s, 3418.2425 runs/s, 4272.8031 assertions/s.
# 4 runs, 5 assertions, 0 failures, 0 errors, 0 skips
