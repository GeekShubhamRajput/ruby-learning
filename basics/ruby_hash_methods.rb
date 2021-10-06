## Ruby Hash Methods

emp = {:Joe => "Javascript", :shubham => "RubyOnRails"}

# Add another key_val pair
emp[:ravi] = "VueJs"
# => {:Joe=>"Javascript", :shubham=>"RubyOnRails", :ravi=>"VueJs"}

# Change keys to values and values to keys
emp.invert
# => {"Javascript"=>:Joe, "RubyOnRails"=>:shubham, "VueJs"=>:ravi}

# Merge another hash
emp.merge({:dom => "Angular"})
# => {:Joe=>"Javascript", :shubham=>"RubyOnRails", :ravi=>"VueJs", :dom=>"Angular"} 

# Get the array of keys
emp.keys
# => [:Joe, :shubham, :ravi]

# Get the array of values
emp.values
# => ["Javascript", "RubyOnRails", "VueJs"]
