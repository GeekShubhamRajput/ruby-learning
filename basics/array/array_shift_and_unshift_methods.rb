## Array shift and unshift Methods

## shift Method
shift → object or nil
shift(count) → new_array or nil

a = [0, 1, 2, 3]
a.shift  # => 0
a        # => [1, 2, 3]
[].shift # => nil

a = [0, 1, 2, 3]
a.shift(2)   # => [0, 1]
a            # => [2, 3]


## unshift Method
unshift(*objects) → self

a = [:foo, 'bar', 2]
a.unshift(:bam, :bat) # => [:bam, :bat, :foo, "bar", 2]
