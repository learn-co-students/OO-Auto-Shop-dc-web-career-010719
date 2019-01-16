class Mechanic

  attr_reader :name, :specialty
  @@all = []
  def initialize(name:, specialty:)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def mechanics_cars
    Car.all.select {|car| car.mechanic == self}
  end

  def mechanics_owners
    self.mechanics_cars.collect {|car| car.owner}
  end

  def mechanics_ownernames
    self.mechanics_cars.collect {|car| car.owner.name}
  end
end
