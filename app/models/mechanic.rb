class Mechanic

  attr_accessor :cars
  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
    @cars = []
  end

  def self.all
    @@all
  end

  def cars_by_mechanic
    Car.all.select{|car| car.mechanic == self}
  end

  def owners_by_mechanics
    self.cars_by_mechanic.map{|car| car.owner}.uniq
  end

  def owner_names_by_mechanic
    self.owners_by_mechanics.map{|owner| owner.name}
  end



end



# Mechanic
#
