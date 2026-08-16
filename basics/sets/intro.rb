## Ruby Set

# Set is a collection class in Ruby used to store unique objects. 
# It is backed by a Hash, so membership checks are efficient. 
# Set also includes Enumerable, giving it many collection-processing methods.

require "set"

numbers = Set.new([1, 2, 3, 3, 4])

puts numbers # <Set: {1, 2, 3, 4}>

## When to Use Set
# You need unique values
# You frequently check whether an item exists
# You need set operations such as union or intersection
