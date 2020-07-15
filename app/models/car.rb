class Car

  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification, owner=nil, mechanic=nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.for_owner(owner)
    Car.all.select { |car| car.owner == owner }
  end

  def self.for_mechanic(mechanic)
    Car.all.select { |car| car.mechanic == mechanic }
  end

  def self.with_classification(classification)
    Car.all.select { |car| car.classification == classification }
  end

  def self.classifications
    Car.all.map do |car|
      car.classification
    end.uniq.compact
  end

  def supported_mechanics
    Mechanic.with_specialty(self.classification)
  end
end
