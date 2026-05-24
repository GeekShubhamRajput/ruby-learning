# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the 
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.

def custom_index(str, sub_str)
  str.chars.each_with_index do |char, index|
    return index if sub_str == str[index, sub_str.length]
  end
  nil
end

# Examples:
# The => indicates the expected return value
p custom_index("I am very handsome", "I")     #=> 0
p custom_index("I am very handsome", "e")     #=> 6
p custom_index("I am very handsome", "Z")     #=> nil
p custom_index("I am very handsome", "am")    #=> 2
p custom_index("I am very handsome", "ma")    #=> nil
