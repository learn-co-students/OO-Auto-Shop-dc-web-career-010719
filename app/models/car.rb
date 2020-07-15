class Car
  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
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

  def self.car_types #test map v. select
    types = self.all.map {|car| car.classification}
    types.uniq
  end

  def mechanic_specialty
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end
end
