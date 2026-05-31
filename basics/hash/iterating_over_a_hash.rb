## Iterating Over a Hash

Iteration is the process of looping over the pieces/ components of an object.

# Methods for Iterating
1. each or each_pair
  Calls a given block with each key-value pair.

  each {|key, value| ... } → self
  each → new_enumerator

  each_pair {|key, value| ... } → self
  each_pair → new_enumerator

  h = {foo: 0, bar: 1, baz: 2}
  h.each {|key, value| puts "#{key}: #{value}"} # => {foo: 0, bar: 1, baz: 2}

  h = {foo: 0, bar: 1, baz: 2}
  h.each_pair {|key, value| puts "#{key}: #{value}"} # => {foo: 0, bar: 1, baz: 2}

  p h.each
  #<Enumerator: {:foo=>0, :bar=>1, :baz=>2}:each>

  p h.each_pair
  #<Enumerator: {:foo=>0, :bar=>1, :baz=>2}:each_pair>

2. each_key
  Calls a given block with each key.

  each_key {|key| ... } → self
  each_key → new_enumerator

  h = {foo: 0, bar: 1, baz: 2}
  h.each_key {|key| puts key }
  # foo
  # bar
  # baz

3. each_value
  Calls a given block with each value.

  each_value {|value| ... } → self
  each_value → new_enumerator

  h = {foo: 0, bar: 1, baz: 2}
  h.each_value {|value| puts value } 
  # 0
  # 1
  # 2

  h.each_value
  #<Enumerator: {:foo=>0, :bar=>1, :baz=>2}:each_value>
