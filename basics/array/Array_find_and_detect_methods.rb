## Array find and detect Methods

## Array find Method
find(if_none_proc = nil) {|element| ... } → object or nil
find(if_none_proc = nil) → enumerator

Returns the first element for which the block returns a truthy value.
If no such element is found, calls if_none_proc and returns its return value.

[1, 3, 5].find {|element| element > 2}                # => 3
[1, 3, 5].find(proc {-1}) {|element| element > 12} # => -1

## Array detect Method
Alias for: find
