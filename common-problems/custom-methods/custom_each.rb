## Custom each

def custom_each(elements)
  i = 0
  while i < elements.length
    yield elements[i]
    i += 1
  end
end

custom_each([10, 20, 30]) { |num| puts "Square of #{num}: #{num * num}" }

# Square of 10: 100
# Square of 20: 400
# Square of 30: 900

custom_each(["Shubham", "Boris", "Roman"]) do |name|
  puts "#{name} - Length: #{name.length}"
end

# Shubham - Length: 7
# Boris - Length: 5
# Roman - Length: 5
