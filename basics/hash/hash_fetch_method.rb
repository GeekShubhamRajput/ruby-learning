## Hash fetch Method

fetch(key) → object
fetch(key, default_value) → object
fetch(key) {|key| ... } → object

h = {foo: 0, bar: 1, baz: 2}
h.fetch(:bar)  # => 1

If the key is not found, returns default_value, if given, or raises KeyError otherwise:
h.fetch(:nosuch, :default) # => :default
h.fetch(:nosuch)           # Raises KeyError.

With a block given, calls the block with key and returns the block’s return value:
{}.fetch(:nosuch) {|key| "No key #{key}"} # => "No key nosuch"

