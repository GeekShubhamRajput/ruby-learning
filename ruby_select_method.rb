## Ruby select method
=begin

Array#select() : select() is a Array class method which  returns a new array containing all elements 
of array for which the given block returns a true value.

=end

# Different syntax

#Prob 1. Write a pgm that returns even numbers from given array.

arr = [1, 2, 3, 4, 565, 15, 12]

b = arr.select do |i|
  i if i % 2 == 0
end
p b
  #OR
p arr.select {|i| i.even?}
# OR
p arr.select(&:even?)
# => [2, 4, 12]

# Prob 2. Write a pgm that returns vowels from your name.
"Shubham".chars.select{|i| i =~ /[aeiou]/ }
# =>["u", "a"]

# Prob 3. Write a pgm that returns string with more than 3 chars from given array.
my_arr = %w(My name is Shubham Rajput)
my_arr.select{|str| str.length > 3}
# => ["name", "Shubham", "Rajput"]
