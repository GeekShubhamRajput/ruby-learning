## String Custom Split Method

# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.

def custom_split(text, delimiter=" ")
  return [] if text.empty? 
  
  splitted = []
  word = ""

  text.each_char do |char|
    if char == delimiter
      splitted << word if !word.empty?
      word = ""
    else 
      word << char
    end
  end
  splitted << word
end

# Examples:
# The => indicates the expected return value
p custom_split("Hi, my name is Boris", " ")  #=> ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i")  #=>  ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j")                 #=> ["Zebra"]
p custom_split(" hello", " ")                #=> ["hello"]
p custom_split("abc dc edrt")
