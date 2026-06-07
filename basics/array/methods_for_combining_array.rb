## Methods For Combining Array 

# & Method
self & other_array → new_array

Returns a new array that is, containing those elements found in both self and other_array.

[0, 1, 2, 3] & [1, 2] # => [1, 2]
[0, 1, 1, 0] & [0, 1, 1] # => [0, 1]
[0, 1, 2] & [3] # => []

# + Method 
self + other_array → new_array

a = [0, 1] + [2, 3]
a # => [0, 1, 2, 3]

a = [0, 1] + [0, 1, 2, 3]
a # => [0, 1, 0, 1, 2, 3]

# - Method
self - other_array → new_array

[0, 1, 1, 2, 1, 1, 3, 1, 1] - [1]             # => [0, 2, 3]
[0, 1, 1, 2, 1, 1, 3, 1, 1] - [3, 2, 0, :foo] # => [1, 1, 1, 1, 1, 1]
[0, 1, 2] - [:foo]                            # => [0, 1, 2]

# | Method
self | other_array → new_array

[0, 1] | [2, 3] # => [0, 1, 2, 3]
[0, 1, 1] | [2, 2, 3] # => [0, 1, 2, 3]
[0, 1, 2] | [3, 2, 1, 0] # => [0, 1, 2, 3]

# * Method
self * n → new_array
self * string_separator → new_string

a = ['x', 'y']
a * 3 # => ["x", "y", "x", "y", "x", "y"]

self.join(", ")
[0, [0, 1], {foo: 0}] * ', ' # => "0, 0, 1, {foo: 0}"
