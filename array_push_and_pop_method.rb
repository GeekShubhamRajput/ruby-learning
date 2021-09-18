## Ruby array's push() and pop() method

=begin
Array#push() :- The push() method in Ruby is used to push the given element at the end of the given array 
  and returns the array itself with the pushed elements.
=end

cricket_team = ["Sachin", 'Sehwag', 'Kohli']
cricket_team.push('Dhoni')
# => ["Sachin", "Sehwag", "Kohli", "Dhoni"]

cricket_team.push('Kuldeep', "Chahal")
# => ["Sachin", "Sehwag", "Kohli", "Dhoni", "Chahal", "Kuldeep", "Chahal"]

=begin
Array#pop() :- The pop() method in Ruby is used to pop or remove the last element of the given array 
and returns the removed elements.
=end
cricket_team = ["Sachin", 'Sehwag', 'Kohli']
cricket_team.pop # => 'Kohli'
p cricket_team # => => ["Sachin", "Sehwag"]


cricket_team = ["Sachin", 'Sehwag', 'Kohli']
cricket_team.pop(2) # => ["Sehwag", "Kohli"]
p cricket_team # => ["Sachin"]
