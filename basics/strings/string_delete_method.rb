## String delete Method

delete(*selectors) → new_string

s = 'abracadabra'
s.delete('a') # => "brcdbr"
s.delete('b') # => "aracadara"
s.delete('x') # => "abracadabra"
s.delete('')  # => "abracadabra"

s = 'тест'
s.delete('т') # => "ес"
s.delete('е') # => "тст"

s = 'よろしくお願いします'
s.delete('よ') # => "ろしくお願いします"
s.delete('し') # => "よろくお願います"

s = 'abracadabra'
s.delete('ab')     # => "rcdr"
s.delete('abc')    # => "rdr"
s.delete('abcd')   # => "rr"
s.delete('abcdr')  # => ""
s.delete('abcdrx') # => ""

s.delete('ba')   == s.delete('ab') # => true
s.delete('baab') == s.delete('ab') # => true

s = 'abcdefg'
s.delete('abcde', 'dcbfg') == s.delete('bcd') # => true
s.delete('abc', 'def')     == s.delete('')    # => true

In a character selector, three characters get special treatment:
1. A caret ('^') functions as a negation operator for the immediately following characters:
s = 'abracadabra'
s.delete('^bc') # => "bcb"  # Deletes all except 'b' and 'c'.

2. A hyphen ('-') between two other characters defines a range of characters:
s = 'abracadabra'
s.delete('a-c') # => "rdr"  # Deletes all 'a', 'b', and 'c'.

3. A backslash ('\') acts as an escape for a caret, a hyphen, or another backslash:
s = 'abracadabra'
s.delete('\^bc')           # => "araadara"   # Deletes all '^', 'b', and 'c'.
s.delete('a\-c')           # => "brdbr"      # Deletes all 'a', '-', and 'c'.
'foo\bar\baz'.delete('\\') # => "foobarbaz"  # Deletes all '\'.
