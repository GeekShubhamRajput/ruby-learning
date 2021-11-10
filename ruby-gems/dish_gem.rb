## RubyDishGem

# We can use it for converting hashes to plain Ruby objects.

require 'dish'

hash = {
  name: "War",
  actors: [
    { id: 1, name: "Mike Anderson" },
    { id: 2, name: "Well D." }
  ],
  released: false
}

movie = Dish(hash)
puts movie.name
puts movie.released?
puts movie.actors.first.name
