# nested iterators

teams = {'India' => {'batting'=>'Rohit, Virat, Rahul', 'bowling'=> 'Shami, Bumrah'},
        'Eng' => {'batting'=>'Root, Burns', 'bowling'=> 'Ali, Brod'}
        }

puts teams


teams.each do |team, departs|
  puts team
  departs.each do |depart, players|
    puts "Department: #{depart}, players: #{players}" 
  end
end
