## Ruby parse and strptime Methods

# Both parse and strptime are used to convert a string into a date/time object.

## parse Method
# parse automatically detects the date format from the string.
# It is useful when the input format is already recognizable.

require "date"

date = Date.parse("2026-08-17")

puts date  # 2026-08-17

Date.parse("08-17-2026") # `parse': invalid date (Date::Error)

## strptime Method
# strptime lets you specify the exact format of the input string.

date = Date.strptime("17-08-2026", "%d-%m-%Y")

puts date  # 2026-08-17
