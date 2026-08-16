## Add and delete from set

fruits = Set.new(["Apple", "Banana", "Apple", "Mango"])

p fruits  # <Set: {"Apple", "Banana", "Mango"}>

p fruits.add("Pomegranate") # <Set: {"Apple", "Banana", "Mango", "Pomegranate"}>

p fruits.add("Pomegranate") # <Set: {"Apple", "Banana", "Mango", "Pomegranate"}>

p fruits.delete("Apple")  # <Set: {"Banana", "Mango", "Pomegranate"}>

p fruits.delete("Apple")  # <Set: {"Banana", "Mango", "Pomegranate"}>
