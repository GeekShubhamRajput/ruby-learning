## Array uniq Method

# The uniq method
Returns a new array containing those elements from self that are not duplicates, 
the first occurrence always being retained.

uniq → new_array
uniq {|element| ... } → new_array

a = [0, 0, 1, 1, 2, 2]
a.uniq # => [0, 1, 2]

a = ['a', 'aa', 'aaa', 'b', 'bb', 'bbb', 'bbbb']
a.uniq {|element| element.size } # => ["a", "aa", "aaa", "bbbb"]

# The uniq! Method
uniq! → self or nil
uniq! {|element| ... } → self or nil

a = [0, 0, 1, 1, 2, 2]
a.uniq! # => [0, 1, 2]
a # => [0, 1, 2]

a = ['a', 'aa', 'aaa', 'b', 'bb', 'bbb']
a.uniq! {|element| element.size } # => ["a", "aa", "aaa"]
a.uniq! {|element| element.size } # => nil
