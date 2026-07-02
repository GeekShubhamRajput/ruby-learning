# Different ways to define and call lambda

full_name = lambda{|first, last| "#{first} #{last}"}
full_name["shubham", 'rajput']
full_name.("shubham", 'rajput')
p full_name.call("shubham", 'rajput')

full_name = -> (first, last){"#{first} #{last}"}
p full_name.call("shubham", 'rajput')

square_number = lambda { |number| number ** 2 }
p [1, 3, 5].map(&square_number)
