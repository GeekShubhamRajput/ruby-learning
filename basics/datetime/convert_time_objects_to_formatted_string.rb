## Ruby strftime Method

# strftime method used to format Time or Date objects into readable strings.

## References
# %Y → 4-digit year
# %m → Month
# %d → Day
# %A → Full weekday name
# %B → Full month name
# %H → 24-hour format
# %M → Minutes
# %S → Seconds
# %p → AM/PM

time = Time.new(2026, 8, 17, 21, 30, 45)

p time.strftime("%Y-%m-%d")          # 2026-08-17
p time.strftime("%d/%m/%Y")          # 17/08/2026
p time.strftime("%Y-%m-%d %H:%M:%S") # 2026-08-17 21:30:45
p time.strftime("%B %d, %Y")         # August 17, 2026
