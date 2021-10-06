# Ruby each iterator

user_names = ["Shubham", "Ravi", "Kapil"]

user_names.each do |name|
  puts name
end
# OR

user_names.each{|name| puts name}

user_details = [{name: 'Shubham', role: 'Developer'}, {name: "Ravi", role: 'Manager'}]
user_details.each{|ud| puts "Name: #{ud[:name]} and Role: #{ud[:role]}"}
