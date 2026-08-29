## Exclude Characters

# The [^...] pattern is used to exclude specific characters from a match.

sales = "I bought 9 apples, 23 bananas, and 4 oranges at the store."

p sales.scan(/[^aeiouAEIOU,.\s\d]/)

# ["b", "g", "h", "t", "p", "p", "l", "s", "b", "n", "n", "s", "n", "d", "r", "n", 
# "g", "s", "t", "t", "h", "s", "t", "r"]
