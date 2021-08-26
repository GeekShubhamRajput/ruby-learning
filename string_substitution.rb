# sub() vs gsub()

str = "The quick brown fox jumped over the quick dog"
p str.sub("quick", "slow")
=> "The slow brown fox jumped over the quick dog"

str = "The quick brown fox jumped over the quick dog"
p str.gsub("quick", "slow")
=> "The slow brown fox jumped over the slow dog"
