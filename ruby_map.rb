## Ruby map method

=begin

Array#map() : map() is a Array class method which returns a new array containing the values 
  returned by the block.
  The main use for map is to TRANSFORM data.
=end

# Prob.1. Multiply each element of an array
arr = [18, 22, 3, 3, 50, 6]
arr.map{|num| num* 2}
# => [36, 44, 6, 6, 100, 12] 

# Prob.2. Convert array of strings to hash as key should be ele and value id ele length 
arr = %w(My name is Shubham)
Hash[arr.map{|ele| [ele, ele.length]}]
# => {"My"=>2, "name"=>4, "is"=>2, "Shubham"=>7}

# Prob.3. Convert Hash to query string params(parameters of url) 
params_hash = {'name'=>'Shubham', 'age'=>20, 'lat'=>20.1, 'long'=>21.0}
params_hash.map{|key, val| "#{key}=#{val}"}.join('&')
# => "name=Shubham&age=20&lat=20.1&long=21.0"