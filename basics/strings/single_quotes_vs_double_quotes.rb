## Single Quotes vs Double Quotes

## Escape sequences
puts "Hello \n world"
=begin
  Hello
  world
=end
puts 'Hello \n\n\n world'
#=> Hello \n\n\n world

## String interpolation
name = "Shubham"
puts "My name is #{name}"
# => My name is Shubham
puts 'My name is #{name}'
#=> My name is #{name}
