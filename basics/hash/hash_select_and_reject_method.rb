## Hash select And reject Method

# Hash select Method
Aliased as filter

select {|key, value| ... } → new_hash
select → new_enumerator

filter {|key, value| ... } → new_hash
filter → new_enumerator

h = {foo: 0, bar: 1, baz: 2}
h.select {|key, value| value < 2 } # => {foo: 0, bar: 1}

h = {foo: 0, bar: 1, baz: 2}
h.filter {|key, value| value < 2 } # => {foo: 0, bar: 1}

# Hash reject Method
reject {|key, value| ... } → new_hash
reject → new_enumerator

h = {foo: 0, bar: 1, baz: 2}
h.reject {|key, value| key.to_s.start_with?('b') } # => {foo: 0}
