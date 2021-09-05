=begin
  Ruby methods ALWAYS return the evaluated result of the last line of the expression 
  unless an explicit return comes before it.
=end

def my_friend_list
  ['Deepak', 'Ketan', 'Anil'] 
end

def my_second_friend_list
  x = 10
  return ['Deepak', 'Ketan', 'Anil'] if x == 10
  ['Deepak', 'Ketan'] 
end

p my_friend_list
p my_second_friend_list

