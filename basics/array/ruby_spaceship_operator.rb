## Ruby Spaceship Operator

It is used for comparison and returns:

-1 → left value is smaller than right
0 → both are equal
1 → left value is greater than right

[0, 1, 2] <=> [0, 1]        # => 1
[0, 1, 2] <=> [0, 1, 2]     # => 0
[0, 1, 2] <=> [0, 1, 2, 3]  # => -1
