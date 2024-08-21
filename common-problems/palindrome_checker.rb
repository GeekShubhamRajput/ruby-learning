# Palindrome Checker
# Problem: Write a method that checks if a given string is a palindrome.

def palindrome?(str)
  str == str.reverse
end

puts palindrome? "ROR"
puts palindrome? "Ruby"
