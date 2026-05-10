## Array any? and all? Methods

## Array any? Method
any? → true or false
any?(object) → true or false
any? {|element| ... } → true or false

[nil, false, []].any? # => true  # Array object is truthy.
[nil, false].any?     # => false # Nil and false are not truthy.

[nil, false, 0].any?(0)          # => true
[nil, false, 1].any?(0)          # => false

[0, 1, 2].any? {|ele| ele < 1 } # => true
[0, 1, 2].any? {|ele| ele < 0 } # => false

## Array all? Method
all? → true or false
all?(object) → true or false
all? {|element| ... } → true or false

[[], {}, '', 0, 0.0, Object.new].all? # => true  # All truthy objects.
[[], {}, '', 0, 0.0, nil].all?        # => false # nil is not truthy.
[[], {}, '', 0, 0.0, false].all?      # => false # false is not truthy.

[0, 0, 0].all?(0)                    # => true
[0, 1, 2].all?(1)                    # => false

[0, 1, 2].all? { |ele| ele < 3 } # => true
[0, 1, 2].all? { |ele| ele < 2 } # => false
