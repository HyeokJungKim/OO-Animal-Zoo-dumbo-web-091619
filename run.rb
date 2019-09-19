require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

bronx_zoo = Zoo.new("Bronx", "Bronx Zoo")
queens_zoo = Zoo.new("Queens", "Queens Zoo")
flat_zoo = Zoo.new("Flatiron", "Flatiron Zoo")

rat = Animal.new(bronx_zoo, "Rat", 100, "Ratty")
ratburn = Animal.new(bronx_zoo, "Rat", 75, "Ratburn")

cat = Animal.new(queens_zoo, "Cat", 50, "Catty")

fat = Animal.new(flat_zoo, "Fat", 150, "Fatty")


#Test your code here


binding.pry
puts "done"
