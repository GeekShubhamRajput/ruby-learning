## Next and Break Keywords

# next Keyword
- move automatically to the next iteration of loop
i = 0
while(i < 21)
  i += 1
  next if i % 4 == 0
  puts i
end

# break keyword
- terminates the loop completely
i = 1
while(i < 10)
  break if i % 7 == 0
  puts i
  i += 1
end
