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

  def self.average_cars
    total_cars = Car.all
    total_owners = self.all
    average_cars = total_cars.size.to_f/total_owners.size.to_f
  end

def cars
Car.all.select{|car| car.owner == self}
end

def mechanics
  self.cars.collect{|car| car.mechanic }
end

end
