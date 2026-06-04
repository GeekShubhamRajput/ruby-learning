## Hash delete Method

# Hash delete Method
delete(key) → value or nil
delete(key) {|key| ... } → object

h = {foo: 0, bar: 1, baz: 2}
h.delete(:bar) # => 1
h # => {foo: 0, baz: 2}

h = {foo: 0, bar: 1, baz: 2}
h.delete(:baz) { |key| raise 'Will never happen'} # => 2
h # => {foo: 0, bar: 1}

h = {foo: 0, bar: 1, baz: 2}
h.delete(:nosuch) { |key| "Key #{key} not found" } # => "Key nosuch not found"
h # => {foo: 0, bar: 1, baz: 2}

# Hash delete_if Method
delete_if {|key, value| ... } → self
delete_if → new_enumerator

h = {foo: 0, bar: 1, baz: 2}
h.delete_if {|key, value| value > 0 } # => {foo: 0}
