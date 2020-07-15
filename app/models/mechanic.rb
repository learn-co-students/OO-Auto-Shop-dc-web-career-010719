class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
	@specialty = specialty
	@@all << self
  end

  def cars
	Car.all.select do |car|
	car.mechanic == self
	end
  end

  def car_owners
  	self.cars.collect do |car|
  		car.owner
  	end
  end

  def car_owner_names
  	self.car_owners.collect do |owner|
  		owner.name
  	end
  end

  def self.all
	@@all 
  end

end
