## Ruby Time Comparison

independence_day = Time.new(2026, 8, 15)
birthday         = Time.new(2026, 12, 10)
summer           = Time.new(2026, 6, 21)
winter           = Time.new(2026, 12, 21)

# == Equal
puts independence_day == birthday  # false

# > Greater than
puts winter > summer  # true

# < Less than
puts summer < winter  # true

# between?
puts birthday.between?(summer, winter)  # true
