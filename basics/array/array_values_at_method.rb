## Ruby values_at Method

values_at(*specifiers) → new_array

a = ['a', 'b', 'c', 'd']
a.values_at(2)
=> ["c"]

a.values_at(2, 0, 2, 0)
=> ["c", "a", "c", "a"]

a.values_at(2, 0, 2, 100)
=> ["c", "a", "c", nil]

a.values_at(1..3)
=> ["b", "c", "d"]

a.values_at(3..1)       
=> []

a.values_at(-50..3)
=> Raises RangeError.
