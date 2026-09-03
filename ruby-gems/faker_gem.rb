## Faker Gem

# The Faker gem is used to generate realistic but fake data for development and testing.

require "faker"

puts Faker.class  # Module

puts Faker::Name.name  # Wiley Friesen

puts Faker::Music.instrument  # Ukelele

puts Faker::Sports::Football.player # Andres Iniesta
