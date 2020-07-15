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

  def cars
  	Car.all.select do |car|
  		car.owner == self
  	end
  end

  def mechanics
  	self.cars.collect do |car|
  		car.mechanic
  	end
  end

  def self.car_avg
    Car.all.count.to_f / @@all.count
  end

end
