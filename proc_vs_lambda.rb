# Args count

full_name = Proc.new { |first, last| "#{first}  #{last}" }
p full_name.call('shubh')

full_name_lamda = lambda { |first, last| "#{first}  #{last}" }
p full_name_lamda.call('shubh') 
#=> Gives error of wrong num of args


# return behaviour

def method_with_proc
  x = Proc.new{ |x| return x}
  x.call(3)
  2
end

def method_with_lambda
  x = lambda{ |x| return x}
  x.call(3)
  2
end

p method_with_proc #=> return 3
p method_with_lambda #=> return 2
