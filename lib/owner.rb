class Owner

  attr_accessor :pets, :name

  @@all = []

  def initialize(species)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = species
    @@all << self
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pest[:fishes] << fish
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end
end
