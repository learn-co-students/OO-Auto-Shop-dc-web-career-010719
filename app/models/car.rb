class Car

  attr_accessor :classification
  attr_reader :make, :model, :owner, :mechanic
  @@all = []

  def initialize(make:, model:, classification:, owner:, mechanic:)
    @make = make
    @model = model
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.collect {|car| car.classification}.uniq
  end

  def mech_by_classification
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
