## Array first and last Methods

## Array first method
first → object or nil
first(count) → new_array

a = [:foo, 'bar', 2]
a.first # => :foo
[].first # => nil
a.first(0)  # => []
a.first(2)  # => [:foo, "bar"]

## Array last method
last → last_object or nil
last(count) → new_array

a = [:foo, 'bar', 2]
a.last # => 2
[].last # => nil
a.last(2)  # => ["bar", 2]
