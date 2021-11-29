## check_number is prime number

def is_prime_number(n)
  return false if [0,1].include?(n)
  flag = true
  (2..(n-1)).each do |i|
    if n % i == 0
      flag = false
      break
    end
  end
  flag
end
p is_prime_number(5)


## print below pattern
=begin
  55555
  4444
  333
  22
  1
=end

def pattern(n)
  while(n > 0)
    n.times{ print n }
    puts 
    n -= 1
  end
end

pattern(5)

## palindrom number

def reverse_number(n)
  rev_number = 0
  while(n != 0)
    remainder = n % 10
    rev_number = remainder + rev_number * 10
    n /= 10
  end
  rev_number
end

def is_palindrom_number(n)
  p "Is palindrom" if n < 10
  p reverse_number(n)
  p (n == reverse_number(n) ? "Is palindrom" : "Not palindrom")
end


is_palindrom_number(123)
is_palindrom_number(353)
is_palindrom_number(3)

## reverse string

p str = "shubham"
half_length = str.length/2
half_length.times{ |i| str[-i-1], str[i] = str[i], str[-i-1] }
puts str


## swap without third var
p x = 1
p y = 2

x = x + y
y = x - y
x = x - y
puts x
puts y


## Occurences of String
p string_arr = %w{a d d g a f g h a d f g g r y}
final_hash = Hash.new
string_arr.each do |ele|
  if final_hash.has_key?(ele)   
    final_hash[ele].push(ele)
  else
    final_hash[ele] = [ele]
  end
end
expected_array = Hash.new
final_hash.each{|k, v| expected_array[k] = v.length}
p expected_array
p sorted_by_value = expected_array.sort_by{ |k, v| v }.to_h
