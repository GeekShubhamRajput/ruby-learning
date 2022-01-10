## RubyInjectMethod

=begin
  inject :- Combines all elements of enum by applying a binary operation.
  Combines all elements of enum by applying a binary operation, specified 
  by a block or a symbol that names a method or operator.
  reduce is an alias for inject.
=end

# some useful examples

# Prob:- 1. Get the sum of given array
arr = [1, 5, 58646, 464]
arr.inject(:+) #=> 59116

# Prob:- 2. Combines initial four alphabets
('a'..'d').inject(:+) #=> "abcd"

# Prob:- 3. Convert array to Hash
[['A', 'a'], ['B', 'b'], ['C', 'c']].inject({}){ |hash, sub_array| hash[sub_array.first] = sub_array.last; hash } 