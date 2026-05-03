## Array insert Method

insert(index, *objects) → self

a = ['a', 'b', 'c']
a.insert(1, :x, :y, :z) # => ["a", :x, :y, :z, "b", "c"]

a.insert(5, :x, :y, :z) # => ["a", "b", "c", nil, nil, :x, :y, :z]

a.insert(-2, :x, :y, :z) # => ["a", "b", :x, :y, :z, "c"]

a.insert(1)         # => ["a", "b", "c"]
