## sub and gsub() Method

## sub Method
sub(pattern, replacement) → new_string
sub(pattern) {|match| ... } → new_string

# One substitution (or none); returns a new string.

str = "The quick brown fox jumped over the quick dog"
p str.sub("quick", "slow")
# "The slow brown fox jumped over the quick dog"

## gsub Method
gsub(pattern, replacement) → new_string
gsub(pattern) {|match| ... } → new_string
gsub(pattern) → enumerator

# Zero or more substitutions; returns a new string.

str = "The quick brown fox jumped over the quick dog"
p str.gsub("quick", "slow")
# "The slow brown fox jumped over the slow dog"

s = 'abracadabra'
s.gsub(/[a-c]/, 'X')  # "XXrXXXdXXrX"
