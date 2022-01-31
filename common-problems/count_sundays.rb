## CountSunday

Prob. Count Sundays between two dates.
require 'date'
sol :- 

start_date = Time.local(2019, 1, 1)
end_date = Time.local(2022, 1, 31)

sunday_counter = 0
while(start_date != end_date)
  sunday_counter += 1 if start_date.strftime('%A') == 'Sunday'
  start_date += 86400 # time add time in seconds (24*60*60)
end
puts "No. of Sundays are : #{sunday_counter}"
