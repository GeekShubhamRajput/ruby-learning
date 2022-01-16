## NumberLetterCount

Prob. if the numbers 1 to 5 are written out in words one, two, three, four and five 
then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

if all the numbers from 1 to 100 were written out in words, how many letters would be used?

sol. we will use `humanize` gem to convert number to letter.

require 'humanize'

no_space_array = []
(1..101).each do |num| 
  no_space_array << num.humanize.delete("-").delete(" ")
end
no_space_array.map(&:length).inject(:+)
=> 880
