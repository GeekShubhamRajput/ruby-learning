## RubyGrepMethod

# It is similar to select method but it compares two things using ===.

# some important use cases

# check specific routes
 rails routes | grep users

# Get only string or integer elements from an array
arr = ["a", "b", "c", 1, 2, 3, nil]
arr.grep(String) # => ["a", "b", "c"]

arr.grep(Integer) # => [1, 2, 3]

arr.grep(NilClass) # => [nil]

arr.grep_v(NilClass) # => ["a", "b", "c", 1, 2, 3]

arr.grep(Float) # => []

# Get the elements start with any characters
fruits = ["apple", "banana", "apricot", "orange"]
fruits.grep(/^a/) # => ["apple", "apricot"]

# Get all elements within the range
numbers = [9, 10, 11, 20]
numbers.grep(5..10) # => [9, 10]
