## Array partition Method
partition → enumerator

With a block given, returns an array of two arrays:
 -> The first having those elements for which the block returns a truthy value.
 -> The other having all other elements.

p = (1..4).partition {|i| i.even? }
p # => [[2, 4], [1, 3]]
