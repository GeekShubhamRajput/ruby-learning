## Ruby hash iteration 

people_with_age = {:shubham => 25, :ravi => 27, :vijay => 30}

# when need keys
people_with_age.each_key do |key|
  puts key
end

# when need values
people_with_age.each_value do |val|
  puts val
end

# when need keys and values both
people_with_age.each do |key, val|
  puts "#{key} : #{val}"
end
