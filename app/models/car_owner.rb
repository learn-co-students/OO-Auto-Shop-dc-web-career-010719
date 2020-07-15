class CarOwner

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    Car.all.map do |car|
      car.owner
    end.uniq.compact
  end

  def self.average_cars_owned
     totals = self.all.map { |owner| owner.cars.length }
     totals.reduce(:+) / totals.length
  end

  def cars
    Car.for_owner(self)
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end.uniq.compact
  end
end
