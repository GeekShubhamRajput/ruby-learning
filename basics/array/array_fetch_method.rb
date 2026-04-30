## Ruby Fetch Method

fetch(index) → element
index must be an integer.

fruits = ["Apple", "Banana", "Grapes"]
p fruits.fetch(1)
=> Banana

p fruits.fetch(100)
=> IndexError: index 100 outside of array bounds: -3...3

p fruits.fetch(100, "Some fruits")
=> "Some fruits"
