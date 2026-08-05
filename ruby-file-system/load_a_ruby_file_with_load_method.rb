# Ruby load Method

# The load method in Ruby reads and executes a Ruby file every time it is called.
# It usually requires the .rb extension.

puts "Before load"

load File.join(__dir__, "another_file.rb")

load File.join(__dir__, "another_file.rb")

puts "After load"

# Before load
# Hello! from another file
# Hello! from another file
# After load
