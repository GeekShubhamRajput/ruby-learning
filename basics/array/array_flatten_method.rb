## Array flatten Method

flatten(depth = nil) → new_array

a = [ 0, [ 1, [2, 3], 4 ], 5, {foo: 0}, Set.new([6, 7]) ]
a              # => [0, [1, [2, 3], 4], 5, {:foo=>0}, #<Set: {6, 7}>]
a.flatten(1)   # => [0, 1, [2, 3], 4, 5, {:foo=>0}, #<Set: {6, 7}>]
a.flatten(2)   # => [0, 1, 2, 3, 4, 5, {:foo=>0}, #<Set: {6, 7}>]

a.flatten      # => [0, 1, 2, 3, 4, 5, {:foo=>0}, #<Set: {6, 7}>] 
