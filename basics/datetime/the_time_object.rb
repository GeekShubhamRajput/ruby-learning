## The Time Object

# The Time object holds a date and a time.
# The Time class is available automatically (no require needed).

puts Time.new                       # 2026-08-17 18:13:22 +0530
puts Time.now                       # 2026-08-17 18:13:22 +0530
puts Time.new(2026)                 # 2026-01-01 00:00:00 +0530
puts Time.new(2026, 8)              # 2026-08-01 00:00:00 +0530
puts Time.new(2026, 8, 16)          # 2026-08-16 00:00:00 +0530
puts Time.new(2026, 8, 16, 18)      # 2026-08-16 18:00:00 +0530
puts Time.new(2026, 8, 16, 18, 20)  # 2026-08-16 18:20:00 +0530
puts Time.new(2026, 8, 16, 18, 20, 46)  # 2026-08-16 18:20:46 +0530

some_time = Time.new(2026, 8, 17, 18, 20, 46)
puts some_time.year                       # 2026
puts some_time.month                      # 8
puts some_time.day                        # 17
puts some_time.hour                       # 18        
puts some_time.min                        # 20
puts some_time.sec                        # 46
puts some_time.mday                       # 17
puts some_time.yday                       # 229
puts some_time.wday                       # 1  
puts some_time.monday?                    # true
