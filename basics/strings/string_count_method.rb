## String count Method

count(*selectors) → integer

s = 'abracadabra'
s.count('a') # => 5
s.count('b') # => 2
s.count('x') # => 0
s.count('')  # => 0

s = 'тест'
s.count('т')  # => 2

s = 'よろしくお願いします'
s.count('よ')  # => 1
s.count('し')  # => 2

s = 'abracadabra'
s.count('ab')     # => 7
s.count('abc')    # => 8

s.count('ba')   == s.count('ab') # => true
s.count('baab') == s.count('ab') # => true

In a character selector, three characters get special treatment:
1. A caret ('^') functions as a negation operator for the immediately following characters:
s = 'abracadabra'
s.count('^bc') # => 8  # Count of all except 'b' and 'c'.

2. A hyphen ('-') between two other characters defines a range of characters:
s = 'abracadabra'
s.count('a-c') # => 8  # Count of all 'a', 'b', and 'c'.

3. A backslash ('\') acts as an escape for a caret, a hyphen, or another backslash:
s = 'abracadabra'
s.count('\^bc')           # => 3  # Count of '^', 'b', and 'c'.
s.count('a\-c')           # => 6  # Count of 'a', '-', and 'c'.
'foo\bar\baz'.count('\\') # => 2  # Count of '\'.
