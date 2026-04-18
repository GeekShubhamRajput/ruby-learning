# String Concatenation Options

## + Operator
first_name = "Gold"
last_name = "Star"
puts first_name + last_name

## Shovel Operator(<<)
puts first_name << last_name
# => GoldStar
puts first_name
# => GoldStar

## concat method
first_name = "Big"
puts first_name.concat(last_name)
# => BigStar
puts first_name
# => BigStar

## prepend method
first_name = "Big"
puts first_name.prepend(last_name)
# => StarBig
puts first_name
# => StarBig
