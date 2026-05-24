# Define a custom_delete method that accepts a text string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in 
# delete method in your solution.

def custom_delete(str, deletion_char)
  new_str = ''
  str.each_char {|char| new_str += char unless deletion_char.include?(char)}
  new_str
end

# Examples:
# The => indicates the expected return value
p custom_delete("cottage cheese", "c")     => "ottage heese"
p custom_delete("cottage cheese", "e")     => "cottag chs"
p custom_delete("cottage cheese", "ce")    => "ottag hs"
p custom_delete("cottage cheese", "ec")    => "ottag hs"
