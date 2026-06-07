## Array sample Method

sample(random: Random) → object
sample(count, random: Random) → new_ary

a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
a.sample # => 3
a.sample # => 8

[].sample # => nil

a.sample(3) # => [8, 9, 2]
a.sample(6) # => [9, 6, 0, 3, 1, 4]

[].sample(4) # => []
