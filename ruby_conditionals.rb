## Ruby Conditionals

## Basic if else conditional

x = 5; y = 10

if x == y
  p "X and Y both are equal"
else
  p "X and Y are not equal"
end 

## Multiple if-else 

x = 5; y = 10; z = 15
 
if x > y
  p "X is greater than Y"
elsif y > z
  p "Y is greater than Z"
else
  p "Something else"
end 

## Compound conditionals

x = 5; y = 10

if x == 5 && x > y
  p "X is 5 and greater than Y"
elsif x == 5 && x < y
  p "X is 5 and less than Y"
end

## unless conditional

users = ['shubham', 'abhishek', 'vijay']

unless users.empty?
  users.each { |user| puts user}
end
  # OR
users.each { |user| puts user} unless users.empty?
