## Covert Hash To Array And Vice Versa

# Convert Hash To Array
to_a → new_array

h = {foo: 0, bar: 1, baz: 2}
h.to_a # => [[:foo, 0], [:bar, 1], [:baz, 2]]

# Convert Array To Hash
to_h {|key, value| ... } → new_hash
to_h → self or new_hash

h = {foo: 0, bar: 1, baz: 2}
h.to_h {|key, value| [value, key] }   # => {0 => :foo, 1 => :bar, 2 => :baz}

a = [[:foo, 0], [:bar, 1], [:baz, 2]]
a.to_h  #=> {:foo=>0, :bar=>1, :baz=>2} 
