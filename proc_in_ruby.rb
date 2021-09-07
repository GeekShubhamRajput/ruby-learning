=begin
  Proc object is an encapsulation of a block of code, which can be stored in a 
  local variable, passed to a method or another Proc, and can be called.
=end

# Different ways to define and call

square = Proc.new {|x| x**2 }
p square.call(5)
p square.(9)
p square[8]

full_name = proc{|first, last| first + " " + last}
p full_name.call('shubham', 'rajput')
p full_name.call('shubham', 'singh', 'rajput') #=> 'shubham singh'
 
addition = Proc.new do |a, b|
            a + b
          end
p addition.call(4,5)
