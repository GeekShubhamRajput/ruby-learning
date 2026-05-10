## Ruby Array min and max Methods

## Ruby min Method
min → element
min(count) → new_array
min {|a, b| ... } → element
min(count) {|a, b| ... } → new_array

[1, 0, 3, 2].min # => 0

[1, 0, 3, 2].min(3)   # => [0, 1, 2]
[1, 0, 3, 2].min(9)   # => [0, 1, 2, 3]
[1, 0, 3, 2].min(0)   # => []

['0', '', '000', '00'].min {|a, b| a.size <=> b.size } # => ""
['0', '', '000', '00'].min(2) {|a, b| a.size <=> b.size } # => ["", "0"]

## Ruby max Method
max → element
max(count) → new_array
max {|a, b| ... } → element
max(count) {|a, b| ... } → new_array

[1, 0, 3, 2].max # => 3

[1, 0, 3, 2].max(3)   # => [3, 2, 1]
[1, 0, 3, 2].max(9)   # => [3, 2, 1, 0]
[1, 0, 3, 2].max(0)   # => []

['0', '', '000', '00'].max {|a, b| a.size <=> b.size } # => "000"
['0', '', '000', '00'].max(2) {|a, b| a.size <=> b.size } # => ["000", "00"]
