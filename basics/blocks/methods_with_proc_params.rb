def talk_about(name, &my_proc)
  puts "Let me tell about #{name}"
  my_proc.call(name)
end

good_thing = Proc.new {|name| puts "#{name} is a good jolly fellow"}
bad_thing = Proc.new {|name| puts "#{name} is a dolt!"}

talk_about("Shubham", &good_thing)
# Let me tell about Shubham
# Shubham is a good jolly fellow

talk_about("Shubham", &bad_thing)
# Let me tell about Shubham
# Shubham is a dolt!

talk_about("Shubham") {|name| puts "#{name} is a good jolly fellow"}
# Let me tell about Shubham
# Shubham is a good jolly fellow
