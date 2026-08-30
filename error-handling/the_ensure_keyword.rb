## The ensure Keyword

# The ensure keyword is used to run code whether an exception occurs or not.

begin
  puts "Processing..."
  raise "Error!"
rescue
  puts "Error handled"
ensure
  puts "Cleanup completed"
end
