favourite_food = "Dosa"
begin
  puts favouritefood 
rescue NameError => e
  puts "Incorrect name"
end
