## Array compact Method

# The compact method
Returns a new array containing only the non-nil elements from self; 
element order is preserved

compact → new_array

a = [nil, 0, nil, false, nil, '', nil, [], nil, {}]
a.compact # => [0, false, "", [], {}]

# The compact! Method
compact! → self or nil

a = [nil, 0, nil, false, nil, '', nil, [], nil, {}]
a.compact! # => [0, false, "", [], {}]
a          # => [0, false, "", [], {}]
a.compact! # => nil
a          # => [0, false, "", [], {}]
