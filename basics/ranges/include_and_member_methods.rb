## The include? and member? Methods

## include? Method
include?(object) → true or false

('a'..'d').include?('d')  # => true
('a'...'d').include?('d') # => false
(1..4).include?(5) # => false

## member? Method
member?(object) → true or false

('a'..'d').member?('d')  # => true
('a'...'d').member?('d') # => false
(1..4).member?(5) # => false
