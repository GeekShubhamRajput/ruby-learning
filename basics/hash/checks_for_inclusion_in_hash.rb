## Checks For Inclusion In Hash

# include Method
  Also aliased as: member?, key?, has_key?

  include?(key) → true or false
  member?(key) → true or false
  key?(key) → true or false
  has_key?(key) → true or false

  h = {foo: 0, bar: 1, baz: 2}
  h.include?(:bar) # => true
  h.include?(:BAR) # => false
  h.include?('bar') # => false

  h.member?(:bar) # => true
  h.member?(:BAR) # => false
  h.member?('bar') # => false

  h.key?(:bar) # => true 
  h.key?(:BAR) # => false 
  h.key?('bar') # => false

  h.has_key?(:bar) # => true
  h.has_key?(:BAR) # => false
  h.has_key?('bar') # = false

# has_value? Method 
  aliased as value?

  has_value?(value) → true or false
  value?(value) → true or false

  h = {foo: 0, bar: 1, baz: 2}
  h.has_value?(1) # => true
  h.has_value?(5) # => false

  h.value?(1) # => true
  h.value?(5) # => false

