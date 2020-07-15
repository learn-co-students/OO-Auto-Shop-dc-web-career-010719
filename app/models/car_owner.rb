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

  def owners_cars
    Car.all.select {|car| car.owner == self}
  end

  def owners_mechanics
    self.owners_cars.collect {|car| car.mechanic}
  end

  def self.avg_amount
    count = 0.0
    self.all.each {|owner| count += owner.owners_cars.length.to_f}
    denominator = self.all.length.to_f
    avg = (count/denominator).round(2)
  end

end
