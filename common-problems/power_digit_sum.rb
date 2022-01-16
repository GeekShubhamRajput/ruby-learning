## PowerDigitSum

Prob. 2**5 = 32 and the sum of its digit is 3 + 2 = 5
  What is the sum of digits of the number 5**5 ?

sol :- 
 result = 5**5  # 3125
 result.to_s.split("").map(&:to_i).sum
 #=>3+1+2+5 = 11
