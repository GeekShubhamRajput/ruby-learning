=begin 
  Define a calculate_meal_cost method that accepts a numeric 
  # amount and a tip percentage (as a floating point value). 
  # The method should return the total cost of the meal including the tip. 
  # If the tip percentage is not provided, it should default to 20%.
=end

def calculate_meal_cost(amount, percentage=0.20)
  total_amount = amount + ( amount * percentage )
  total_amount
end

puts calculate_meal_cost(20, 0.05)
puts calculate_meal_cost(20)
puts calculate_meal_cost(100, 0.12)
puts calculate_meal_cost(100)
