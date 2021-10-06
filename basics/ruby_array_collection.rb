## Ruby Array
# An array is a collection of different or similar items, stored at contiguous memory locations.

arr = Array.new

## Insertion in array
arr[1] = 10
p arr
# => [10]
arr[5] = 20
# => [10, nil, nil, nil, nil, 20]

## Deletion in array

# Delete ele
arr = [1, 5, 8, 2, 8]
arr.delete(8) # it returns 8
p arr #=> [1, 5, 2]

# Delete by index
arr = [1, 5, 8, 2, 8]
arr.delete_at(0)
p arr #=> [5, 8, 2, 8]

# Conditional delete
arr = [1, 5, 8, 2, 8]
arr.delete_if {|i| i < 5}
p arr #=> [5, 8, 8]

# Ruby join method in array
cricket_team = ['Virat', 'Rohit', 'Chahal']
cricket_team.join(', ') #=> "Virat, Rohit, Chahal"
