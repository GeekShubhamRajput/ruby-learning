## The digit Symbol

voicemail = "I can be reached at 555-123-4567 or regexmail.com"

# Any digit (0-9)
p voicemail.scan(/\d/)  # ["5", "5", "5", "1", "2", "3", "4", "5", "6", "7"]

# Plus sing 1 -> 1 or more digit in a row
p voicemail.scan(/\d+/)  # ["555", "123", "4567"]

# {} - An exact number of digit
p voicemail.scan(/\d{3}/)  # ["555", "123", "456"]
p voicemail.scan(/\d{4}/)  #  ["4567"]

# 3 or more consecutive digit in a row
p voicemail.scan(/\d{3,}/) # ["555", "123", "4567"]

# Between 2 and 3 consecutive digit in a row
p voicemail.scan(/\d{2,3}/)  # ["555", "123", "456"]
