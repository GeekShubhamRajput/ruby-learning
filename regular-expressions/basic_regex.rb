## BasicRegex

# Check any char in a string
my_string = "abcdef"
p my_string =~ /b/ ? "B is present in string" : "Not present"

# To handle insensitive case 
my_string = "aBcdef"
p my_string =~ /b/i ? "B is present in string" : "Not present"

# Get the numbers from a sentence
my_sentence = "I am 5 cows and 2 dogs"
my_sentence.to_enum(:scan, /\d+/).map{Regexp.last_match}
