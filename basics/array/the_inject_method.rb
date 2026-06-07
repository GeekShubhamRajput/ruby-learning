## Array inject Method

inject(symbol) → object
inject(initial_value, symbol) → object
inject {|memo, value| ... } → object
inject(initial_value) {|memo, value| ... } → object

inject is aliased as reduce. 
You use it when you want to reduce a collection to a single value.

enum.inject(initial_value) do |result, next_value|
  # do something with +result+ and +next_value+
  # the value returned by the block becomes the
  # value passed in to the next iteration
  # as +result+
end

product = [ 2, 3, 4 ].inject(1) do |result, next_value|
  result * next_value
end
product #=> 24

product = [ 2, 3, 4 ].inject(:*)
product # => 24

s = [ "cat", " ", "dog" ].inject(:+)
s #=> "cat dog"

nested = {foo: 0, bar: 1}.inject([], :push)
nested # => [[:foo, 0], [:bar, 1]]
