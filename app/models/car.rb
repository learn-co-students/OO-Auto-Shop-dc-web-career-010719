class Car

  attr_reader :make, :model, :classification, :owner
  attr_accessor :mechanic
  @@all = []

  def initialize(make:, model:, classification:, owner:, mechanic:nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map(&:classification).uniq
  end

  def mechanics_with_expertise
    Mechanic.all.select { |m| m.specialty == self.classification }
  end

end
