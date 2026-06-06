## Array sort Method

# sort Method
sort → new_array
sort {|a, b| ... } → new_array

[0, 2, 3, 1].sort # => [0, 1, 2, 3] 

a = [3, 2, 0, 1]
a.sort {|a, b| a <=> b } # => [0, 1, 2, 3]
a.sort {|a, b| b <=> a } # => [3, 2, 1, 0]

# sort! Method
sort! → self
sort! {|a, b| ... } → self

a = [0, 2, 3, 1]
a.sort! # => [0, 1, 2, 3] 
a # => [0, 1, 2, 3]
