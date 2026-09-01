## The setup and teardown Methods

# setup -> setup method is called prior to each test case in the class, 
# and is used to perform any setup required for each test.

# teardown -> teardown method is called after each test case to perform any cleanup required. 

require "minitest/autorun"

class Pokemon
  attr_reader :name, :type    

  def initialize(name, type)
    @name = name
    @type = type
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
end

# Running:

# Test is done, Deleting Pokemon from database
# .Test is done, Deleting Pokemon from database
# .

# Finished in 0.001063s, 1882.0146 runs/s, 1882.0146 assertions/s.
# 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
