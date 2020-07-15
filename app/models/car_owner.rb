class CarOwner
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_cars_per_owner
    average = Car.all.count.to_f/CarOwner.all.count
    average.round(2)
  end

  def my_cars
    Car.all.select {|car| car.owner == self}
  end

  def my_mechanics #check for uniquenes...
    self.my_cars.map {|car| car.mechanic}
  end
end
