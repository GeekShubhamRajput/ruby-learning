# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.

def custom_join(arr, delimiter=nil)
  return "" if arr.empty?
  
  result = ""
  flatten_array = arr.flatten
  last_element = flatten_array.last

  flatten_array.each do |element|
    result << element.to_s
    result << delimiter if delimiter && element != last_element
  end
  result
end

# Examples:
# The => indicates the expected return value
p custom_join(["red", "green", "blue"], "!") #=> "red!green!blue"
p custom_join(["Big", "Mac"], "$$")          #=> "Big$$Mac"
p custom_join([], "$$$")                     #=> ""
p custom_join([:foo, 'bar', 2])              #=> "foobar2"
p custom_join([:foo, [:bar, [:baz, :bat]]])  #=> "foobarbazbat"
