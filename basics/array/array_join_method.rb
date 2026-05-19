## Array join Method

join(separator = $,) → new_string

a = [:foo, 'bar', 2]
a.join # => "foobar2"

a = [:foo, [:bar, [:baz, :bat]]]
a.join # => "foobarbazbat"

a = ["red", "green", "blue"]
a.join("!")  #=> "red!green!blue"
