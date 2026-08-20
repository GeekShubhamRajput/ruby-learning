## Regular Expression
# Regex (Regular Expression) is a pattern used to search, match, validate, or replace text.

# Check any char in a string
my_string = "abcdef"
p my_string =~ /b/ ? "B is present in string" : "Not present"  # B is present in string

# To handle insensitive case 
my_string = "aBcdef"
p my_string =~ /b/i ? "B is present in string" : "Not present"  # B is present in string
