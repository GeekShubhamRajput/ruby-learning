## String split Method

split(field_sep = $;, limit = 0) → array_of_substrings
split(field_sep = $;, limit = 0) {|substring| ... } → self

'abracadabra'.split('a') # => ["", "br", "c", "d", "br"]

'foo bar baz'.split(nil)          # => ["foo", "bar", "baz"]
'foo bar baz'.split(' ')          # => ["foo", "bar", "baz"]
"foo \n\tbar\t\n  baz".split(' ') # => ["foo", "bar", "baz"]
'foo  bar   baz'.split(' ')       # => ["foo", "bar", "baz"]
''.split(' ')                     # => []

'abracadabra'.split('', 3)   # => ["a", "b", "racadabra"]
