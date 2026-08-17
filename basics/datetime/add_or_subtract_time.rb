## Add or Subtract Time in Ruby

# Time + number and Time - number treat the number as seconds.

time = Time.new(2026, 8, 17, 10, 30, 0)

# Add 1 hour
puts time + (60 * 60)
# 2026-08-17 11:30:00 +0530

# Add 1 day
puts time + (60 * 60 * 24)
# 2026-08-18 10:30:00 +0530

# Subtract 30 minutes
puts time - (60 * 30)
# 2026-08-17 10:00:00 +0530
