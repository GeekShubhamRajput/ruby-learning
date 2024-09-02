# Factorial
# Problem: Write a method that calculates the factorial of a number.
# Concepts Tested: Recursion, loops.

def factorial(n)
   return 1 if n == 1 || n == 0
   n * factorial(n - 1)
end
