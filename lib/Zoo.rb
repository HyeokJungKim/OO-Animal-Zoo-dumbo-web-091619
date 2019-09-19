class Zoo

  attr_reader :location, :name
  @@all = []

  def initialize(location, name)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    # self is the instance
    # when I create an animal, I passed the instance in
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    names = self.animals.map do |animal|
      animal.species
    end
    # self.animals_chicken.map(&:species)
    names.uniq
  end

  def find_by_species(species_argument)
    self.animals.select do |animal|
      animal.species == species_argument
    end
  end

  def animal_nicknames
    self.animals.map do |animal|
      animal.nickname
    end
  end

  def self.find_by_location(location)
    Zoo.all.select do |zoo|
      zoo.location == location
    end
  end

end
