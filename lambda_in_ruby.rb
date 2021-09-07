# Different ways to define and call lambda

full_name = lambda{|first, last| "#{first} #{last}"}
full_name["shubham", 'rajput']
full_name.("shubham", 'rajput')
p full_name.call("shubham", 'rajput')


full_name = -> (first, last){"#{first} #{last}"}
p full_name.call("shubham", 'rajput')
