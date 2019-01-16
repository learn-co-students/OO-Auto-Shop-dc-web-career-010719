class Car

  attr_reader :make, :model, :classification

  @@all = []
  @@all_classifications = []
  @@all_mechanics = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
    @@all_classifications << classification unless @@all_classifications.include?(classification)
  end

  def self.all
    @@all
  end

  def self.all_classifications
    @@all_classifications
  end

  def self.all_mechanics
    @@all_mechanics
  end

  def mechanics_match_classification
    Car.all_mechanics.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
