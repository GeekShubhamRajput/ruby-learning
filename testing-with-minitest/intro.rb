require "minitest/autorun"

def sum(a, b)
  a + b
end

class TestMathematics < Minitest::Test

  def test_sum_method
    assert_equal(5, sum(2, 3))
  end

  def test_sum_method_again
    assert_equal(7, sum(3, 4))
  end
end

# ..

# Finished in 0.001021s, 1958.4668 runs/s, 1958.4668 assertions/s.
# 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
