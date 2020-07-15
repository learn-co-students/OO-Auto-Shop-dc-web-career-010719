class CarOwner

  attr_reader :name, :cars, :mechanics

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @cars = []
    @mechanics = []
  end

  def self.all
    @@all
  end

  def self.average_amount_of_cars
    total_cars = 0
    self.all.each do |owner|
      total_cars += owner.cars.length
    end
    return (total_cars.to_f / self.all.length).round(2)
  end

  def take_a_car_to_a_mechanic(car, mechanic)
    self.cars << car unless self.cars.include?(car)
    self.mechanics << mechanic unless self.mechanics.include?(mechanic)
    Car.all_mechanics << mechanic unless Car.all_mechanics.include?(mechanic)
    mechanic.cars << car unless mechanic.cars.include?(car)
    mechanic.car_owners << self unless mechanic.car_owners.include?(self)
  end

end
