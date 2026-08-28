## The Wildcard Symbol

voicemail = "I can be reached at 555-456-4567 or regex@gmail.com"

p voicemail.scan(/./)
# ["I", " ", "c", "a", "n", " ", "b", "e", " ", "r", "e", "a", "c", "h", "e", 
# "d", " ", "a", "t", " ", "5", "5", "5", "-", "4", "5", "6", "-", "4", "5", "6", "7", " ", 
# "o", "r", " ", "r", "e", "g", "e", "x", "@", "g", "m", "a", "i", "l", ".", "c", "o", "m"]

p voicemail.scan(/.e/)
# ["be", "re", "he", "re", "ge"]

p voicemail.scan(/.\d{3}.+\d{3}.+\d{4}/)
# [" 555-456-4567"]

p voicemail.scan(/\w+@gmail/)
# ["regex@gmail"]
