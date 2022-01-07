## PrimeClassInRuby

require 'prime'

# Some use cases
#prob 1. Print prime numbers upto 100
puts "Print prime numbers upto 100 are :-"
Prime.each(100){|prime_number| p prime_number}


# prob 2. Print first 5 prime numbers
Prime.first 5 #[2, 3, 5, 7, 11]

# Sum of first 5 numbers
(Prime.first 5).sum # => 28


# prob 3. Check number is prime number or not
Prime.prime?(10) # false
Prime.prime?(2)  # true
