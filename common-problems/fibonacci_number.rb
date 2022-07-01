## CountSunday

# Prob. Find index of first term which contains 1000 digit Fibonacci in number.
# sol :- 

def fibonacci_digit_counter
  num1, num2, i = -1, 0, 1

  while i.to_s.length < 2
    num1 += 1
    i, num2 = num2, num2 + i
  end
  num1
end

p fibonacci_digit_counter
# => 4782

#example:- 
# f1 = 1
# f2 = 1
# f3 = 2
# f4 = 3
# f5 = 5
# f6 = 8
# f7 = 13

# and for 2 digit it is 7