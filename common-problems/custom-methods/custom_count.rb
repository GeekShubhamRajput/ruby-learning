# Define a custom_count method that accepts a string and a string
# of search characters. The method should count how many times the
# search characters appear in the original string. Do not use the
# built-in count method in your solution.

def custom_count(str, char)
  count = 0
  str.each_char{ |ch| count += 1 if char.include?(ch) }
  count
end

# Examples:
# The => indicates the expected return value
p custom_count("Hello World", "l")
p custom_count("Hello World", "O")
p custom_count("Hello World", "z")
p custom_count("Hello World", "lo")
p custom_count("Hello World", "ol")
