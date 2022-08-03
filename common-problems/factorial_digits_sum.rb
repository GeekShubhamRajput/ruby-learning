## FactorialValueDigitSum
prob. n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

Sol.
def factorial(num)
  return 1 if num == 0

  (1..num).to_a.reverse.inject(:*)
end

def sum_of_factorial_value_digit(num)
  factorial(num).to_s.split(//).map(&:to_i).sum
end

p sum_of_factorial_value_digit(100)
