class Car

  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_to_owner(owner_object)
    self.owner = owner_object
    owner_object.cars << self
  end

  def assign_to_mechanic(mechanic_object)
    if self.classification == mechanic_object.specialty
      self.mechanic = mechanic_object
      mechanic_object.cars << self
    else
      puts "That mechanic doesn't work on this type of car."
    end
  end

  def self.car_classifications
    self.all.map{|car| car.classification}.uniq
  end

  def viable_mechanics
    Mechanic.all.select{|mech| mech.specialty == self.classification}
  end

end


# Car
