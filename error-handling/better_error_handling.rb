## Better error handling

# ZeroDivisionError

begin
  1/0
rescue ZeroDivisionError => e 
  puts "Error handled : #{e}"
end

# NilClassError

begin
  nil + 1
rescue NoMethodError => e
  puts "Error handled : #{e}"
end

# StandardError

begin
  nil + 1
rescue StandardError => e
  puts "Error handled : #{e}"
end
