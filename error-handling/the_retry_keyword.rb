## The retry Keyword

# The retry keyword is used inside an exception-handling block to run 
# the begin block again when an error occurs. Use retry carefully to avoid an infinite loop.

attempts = 0

begin
  attempts += 1
  puts "Attempt #{attempts}"

  raise "Something went wrong" if attempts < 3

  puts "Success!"
rescue
  retry
end
