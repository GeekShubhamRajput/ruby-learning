## Array index and find_index Methods

## Array find_index Method

find_index(object) → integer or nil
find_index {|element| ... } → integer or nil
find_index → new_enumerator

a = [:foo, 'bar', 2, 'bar']
a.find_index('bar') # => 1
a.find_index('bart') # => nil

a = [:foo, 'bar', 2, 'bar']
a.find_index {|element| element == 'bar' } # => 1

## Array index Method
Also aliased as: find_index
