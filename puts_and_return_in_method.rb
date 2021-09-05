=begin
  puts returns nil
=end

def greet
  puts "Good Morning"
end

def greetings
  "Good Morning"
end

greet #=> print 'Good Morning' but return nil
greetings #=> It will retrun 'Good Morning'


x = greet
x.upcase #=> nil:NilClass error

y = greetings
y.upcase #=>  return "GOOD MORNING"
