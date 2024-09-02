## Anagram Checker
# Problem: Write a method to check if two strings are anagrams of each other.

def anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

anagram?('abc', 'bca')
