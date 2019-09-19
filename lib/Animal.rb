class Animal

  attr_reader :species, :nickname
  attr_accessor :weight, :zoo
  @@all = []

  def initialize(zoo, species, weight, nickname)
    @zoo = zoo
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species_argument)
    Animal.all.select do |animal|
      animal.species == species_argument
    end
  end

end
