## Array length, size and count methods

## Array length method
lentgh -> integer

[0, 1, 2].length # => 3
[].length        # => 0

## Array size method
size -> integer

[0, 1, 2].size # => 3
[].size        # => 0

## Array count method
Returns a count of specified elements.
With no argument and no block, returns the count of all elements.

[0, :one, 'two', 3, 3.0].count # => 5
[0, :one, 'two', 3, 3.0].count(3) # => 2
[0, 1, 2, 3].count {|element| element > 1 } # => 2
